uint64_t sub_1B9A8()
{
  swift_weakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1B9DC()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1BA48()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1BAC4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 80.0;
  if (v1 == &dword_0 + 1)
  {
    v2 = 90.0;
  }

  *&xmmword_19AF28 = v2;
  *(&xmmword_19AF28 + 1) = v2;
}

uint64_t sub_1BB3C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 6.0, (v5 & 1) == 0))
  {
    v6 = 2.0;
  }

  qword_19AF38 = *&v6;
  return result;
}

uint64_t sub_1BC40()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 16.0, (v5 & 1) == 0))
  {
    v6 = 12.0;
  }

  qword_19AF40 = *&v6;
  return result;
}

uint64_t sub_1BD5C(uint64_t a1, double *a2)
{
  v3 = sub_139A34();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  result = _UISolariumEnabled();
  if (!result || ((*(v5 + 104))(v9, enum case for FlagKeys.Solarium(_:), v3), v11 = sub_139A24(), result = (*(v5 + 8))(v9, v3), v12 = 16.0, (v11 & 1) == 0))
  {
    v12 = 24.0;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_1BE54()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 10.0, (v5 & 1) == 0))
  {
    v6 = 8.0;
  }

  qword_19AF58 = *&v6;
  return result;
}

double sub_1C010(void *a1, void *a2, double a3)
{
  v145 = sub_13A4C4();
  v148 = *(v145 - 8);
  __chkstk_darwin(v145);
  v140 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_13A4B4();
  v147 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_13A454();
  v146 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_13C114();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_13A514();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v138 = v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v112 - v17;
  v19 = [a1 traitCollection];
  v20 = sub_13BDE4();

  if (v20)
  {
    sub_1F144(v18);
    sub_13A464();
    a3 = v21;
    (*(v14 + 8))(v18, v13);
  }

  else
  {
    v117 = v14;
    v22 = a2[52];
    v23 = a2[53];
    sub_162F0(a2 + 49, v22);
    sub_20038(v22, v23);
    sub_13A404();
    v112[3] = v24;
    v25 = *(v10 + 8);
    v25(v12, v9);
    v26 = a2[57];
    v27 = a2[58];
    sub_162F0(a2 + 54, v26);
    sub_20038(v26, v27);
    sub_13A404();
    v112[0] = v28;
    v25(v12, v9);
    v29 = a2[62];
    v30 = a2[63];
    sub_162F0(a2 + 59, v29);
    sub_20038(v29, v30);
    sub_13A404();
    v112[2] = v31;
    v25(v12, v9);
    v32 = a2[67];
    v33 = a2[68];
    sub_162F0(a2 + 64, v32);
    sub_20038(v32, v33);
    sub_13A404();
    v115 = v34;
    v25(v12, v9);
    v35 = a2[72];
    v36 = a2[73];
    sub_162F0(a2 + 69, v35);
    sub_20038(v35, v36);
    sub_13A404();
    v25(v12, v9);
    v37 = a2[77];
    v38 = a2[78];
    sub_162F0(a2 + 74, v37);
    sub_20038(v37, v38);
    sub_13A404();
    v112[1] = v39;
    v25(v12, v9);
    v40 = a2[82];
    v41 = a2[83];
    sub_162F0(a2 + 79, v40);
    sub_20038(v40, v41);
    sub_13A404();
    v43 = v42;
    v25(v12, v9);
    v44 = a2[87];
    v45 = a2[88];
    sub_162F0(a2 + 84, v44);
    sub_20038(v44, v45);
    sub_13A404();
    v47 = v46;
    v25(v12, v9);
    v48 = a2[97];
    v49 = a2[98];
    sub_162F0(a2 + 94, v48);
    sub_20038(v48, v49);
    sub_13A404();
    v51 = v50;
    v25(v12, v9);
    v52 = a2[92];
    v53 = a2[93];
    sub_162F0(a2 + 89, v52);
    sub_20038(v52, v53);
    sub_13A404();
    v25(v12, v9);
    sub_4948(&qword_19AFE0);
    v54 = *(sub_13A4F4() - 8);
    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v113 = *(v54 + 72);
    v56 = swift_allocObject();
    v139 = xmmword_13E660;
    *(v56 + 16) = xmmword_13E660;
    v114 = v56;
    v137 = v56 + v55;
    v57 = a2[28];
    v58 = a2[29];
    v59 = sub_162F0(a2 + 25, v57);
    v157 = v57;
    v158 = *(v58 + 8);
    v60 = sub_CC08(&v156);
    (*(*(v57 - 8) + 16))(v60, v59, v57);
    v154 = &type metadata for CGFloat;
    v155 = &protocol witness table for CGFloat;
    v153 = v51;
    sub_162F0(a2 + 20, a2[23]);
    v61 = sub_13A364();
    v118 = v13;
    v116 = a1;
    if ((v61 & 1) != 0 || (sub_162F0(a2 + 20, a2[23]), (sub_13A324() & 1) == 0))
    {
      v63 = &protocol witness table for CGFloat;
      v64 = &type metadata for CGFloat;
      v62 = v47;
    }

    else
    {
      v62 = 0;
      v63 = &protocol witness table for Double;
      v64 = &type metadata for Double;
    }

    v151 = v64;
    v152 = v63;
    v150 = v62;
    v65 = v146;
    v66 = *(v146 + 104);
    v67 = v141;
    v136 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v68 = v142;
    v135 = v146 + 104;
    v134 = v66;
    v66(v141);
    v69 = sub_4948(&qword_19AFE8);
    v70 = v147;
    v71 = *(v147 + 72);
    v72 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v130 = *(v147 + 80);
    v132 = v69;
    v129 = v72 + 3 * v71;
    v73 = swift_allocObject();
    *(v73 + 16) = v139;
    v131 = v72;
    sub_13A484();
    sub_13A494();
    v128 = 2 * v71;
    v133 = v71;
    sub_13A4A4();
    v149 = v73;
    v74 = sub_9A68(&qword_1A0740, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v75 = sub_4948(&qword_19AFF0);
    v76 = sub_1D268();
    v77 = v143;
    v126 = v75;
    v125 = v76;
    v78 = v144;
    v127 = v74;
    sub_13BF64();
    v79 = v148;
    v80 = *(v148 + 104);
    v81 = v140;
    v124 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v82 = v145;
    v123 = v148 + 104;
    v122 = v80;
    v80(v140);
    sub_13A4E4();
    v83 = *(v79 + 8);
    v148 = v79 + 8;
    v121 = v83;
    v83(v81, v82);
    v84 = *(v70 + 8);
    v147 = v70 + 8;
    v120 = v84;
    v84(v77, v78);
    v85 = *(v65 + 8);
    v146 = v65 + 8;
    v119 = v85;
    v85(v67, v68);
    sub_1D2CC(&v150);
    sub_3C04(&v153);
    sub_3C04(&v156);
    v86 = a2[23];
    v87 = a2[24];
    v88 = sub_162F0(a2 + 20, v86);
    v157 = v86;
    v158 = *(v87 + 8);
    v89 = sub_CC08(&v156);
    (*(*(v86 - 8) + 16))(v89, v88, v86);
    v154 = &type metadata for CGFloat;
    v155 = &protocol witness table for CGFloat;
    v153 = v43;
    sub_162F0(a2 + 15, a2[18]);
    if ((sub_13A364() & 1) != 0 || (sub_162F0(a2 + 15, a2[18]), (sub_13A324() & 1) == 0))
    {
      v91 = &protocol witness table for CGFloat;
      v92 = &type metadata for CGFloat;
      v90 = v47;
    }

    else
    {
      v90 = 0;
      v91 = &protocol witness table for Double;
      v92 = &type metadata for Double;
    }

    v151 = v92;
    v152 = v91;
    v150 = v90;
    v93 = v141;
    v94 = v142;
    v134(v141, v136, v142);
    v95 = swift_allocObject();
    *(v95 + 16) = v139;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v149 = v95;
    v96 = v143;
    v97 = v144;
    sub_13BF64();
    v98 = v140;
    v99 = v145;
    v122(v140, v124, v145);
    v100 = v113;
    v101 = v137;
    sub_13A4E4();
    v121(v98, v99);
    v120(v96, v97);
    v119(v93, v94);
    sub_1D2CC(&v150);
    sub_3C04(&v153);
    sub_3C04(&v156);
    v137 = v101 + 2 * v100;
    v102 = a2[18];
    v103 = a2[19];
    v104 = sub_162F0(a2 + 15, v102);
    v157 = v102;
    v158 = *(v103 + 8);
    v105 = sub_CC08(&v156);
    (*(*(v102 - 8) + 16))(v105, v104, v102);
    v154 = &type metadata for CGFloat;
    v155 = &protocol witness table for CGFloat;
    v153 = v115;
    v151 = &type metadata for CGFloat;
    v152 = &protocol witness table for CGFloat;
    v150 = v47;
    v134(v93, v136, v94);
    v106 = swift_allocObject();
    *(v106 + 16) = v139;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v149 = v106;
    sub_13BF64();
    v122(v98, v124, v99);
    sub_13A4E4();
    v121(v98, v99);
    v120(v96, v97);
    v119(v93, v94);
    sub_1D2CC(&v150);
    sub_3C04(&v153);
    sub_3C04(&v156);
    v107 = v138;
    sub_13A4D4();
    sub_13A464();
    v109 = v108;
    sub_162F0(a2 + 10, a2[13]);
    if (sub_13A324())
    {
      sub_162F0(a2 + 5, a2[8]);
      sub_13A324();
      v110 = v117;
      sub_162F0(a2 + 10, a2[13]);
      sub_13A384();
      (*(v110 + 8))(v107, v118);
    }

    else
    {
      (*(v117 + 8))(v107, v118);
      return v109;
    }
  }

  return a3;
}

unint64_t sub_1D268()
{
  result = qword_1A0750;
  if (!qword_1A0750)
  {
    sub_558C(&qword_19AFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0750);
  }

  return result;
}

uint64_t sub_1D2CC(uint64_t a1)
{
  v2 = sub_4948(&qword_19AFF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3E4()
{

  return swift_once();
}

uint64_t sub_1D430()
{

  return sub_139BA4();
}

id sub_1D45C()
{
  v3 = *(v1 + 3456);

  return [v0 v3];
}

id sub_1D474@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + a2);
  v6 = *(v3 + 3576);

  return [a1 v6];
}

uint64_t sub_1D4AC()
{

  return sub_13BE34();
}

id sub_1D4CC()
{
  v3 = *(v1 + 3472);

  return [v0 v3];
}

uint64_t AppLockupComponentLayout.Metrics.init(artworkBottom:artworkSize:artworkTop:footerArtworkSize:footerBottom:footerLeading:footerTop:infoTop:minimumComponentHeight:minimumFooterHeight:subtitleTop:textBottom:textTop:textLeading:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17)
{
  sub_9414(a1, a9);
  a9[5] = a10;
  a9[6] = a11;
  sub_9414(a2, (a9 + 7));
  a9[12] = a12;
  a9[13] = a13;
  sub_9414(a3, (a9 + 14));
  sub_9414(a4, (a9 + 19));
  sub_9414(a5, (a9 + 24));
  sub_9414(a6, (a9 + 29));
  sub_9414(a7, (a9 + 34));
  sub_9414(a8, (a9 + 39));
  sub_9414(a14, (a9 + 44));
  sub_9414(a15, (a9 + 49));
  sub_9414(a16, (a9 + 59));

  return sub_9414(a17, (a9 + 54));
}

uint64_t AppLockupComponentLayout.init(metrics:artworkImageView:infoLabel:footerLabel:footerImageView:subtitleLabel:titleLabel:separatorView:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  memcpy((a9 + 280), __src, 0x200uLL);
  sub_9414(a2, a9);
  sub_9414(a3, a9 + 120);
  sub_9414(a4, a9 + 80);
  sub_9414(a5, a9 + 40);
  sub_9414(a8, a9 + 240);
  sub_9414(a6, a9 + 160);

  return sub_9414(a7, a9 + 200);
}

uint64_t AppLockupComponentLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v8 = v6;
  v195 = a6;
  v14 = sub_13A314();
  sub_9E94();
  v185 = v15;
  __chkstk_darwin(v16);
  sub_21548();
  sub_2159C(v17);
  MinX = COERCE_DOUBLE(sub_13A4C4());
  sub_9E94();
  v198 = v18;
  __chkstk_darwin(v19);
  sub_21548();
  sub_2159C(v20);
  v190 = COERCE_DOUBLE(sub_13A4B4());
  sub_9E94();
  v197 = v21;
  __chkstk_darwin(v22);
  sub_21548();
  sub_2159C(v23);
  v188 = COERCE_DOUBLE(sub_13A454());
  sub_9E94();
  v196 = v24;
  __chkstk_darwin(v25);
  sub_21548();
  sub_2159C(v26);
  sub_13C114();
  sub_9E94();
  v28 = v27;
  __chkstk_darwin(v29);
  v193 = sub_13A514();
  sub_9E94();
  v192 = v30;
  __chkstk_darwin(v31);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v32);
  v34 = v154 - v33;
  v35 = [a1 traitCollection];
  v36 = sub_13BDE4();

  if (v36)
  {
    sub_1F144(v34);
    sub_13A474();
    return (*(v192 + 8))(v34, v193);
  }

  v164 = a2;
  v165 = v14;
  sub_2156C((v8 + 336));
  sub_21524();
  v38 = v37;
  v39 = *(v28 + 8);
  v40 = sub_215EC();
  v39(v40);
  sub_2156C((v8 + 392));
  sub_21524();
  v42 = sub_2155C(&v192, v41);
  v39(v42);
  sub_2156C((v8 + 432));
  sub_21524();
  v44 = sub_2155C(&v183, v43);
  v39(v44);
  sub_2156C((v8 + 472));
  sub_21524();
  v46 = sub_2155C(&v191, v45);
  v39(v46);
  sub_2156C((v8 + 512));
  sub_21524();
  v48 = sub_2155C(&v188, v47);
  v39(v48);
  sub_2156C((v8 + 552));
  sub_21524();
  v50 = sub_2155C(&v189, v49);
  v39(v50);
  sub_2156C((v8 + 592));
  sub_21524();
  v52 = sub_2155C(&v184, v51);
  v39(v52);
  sub_2156C((v8 + 632));
  sub_21524();
  v54 = sub_2155C(&v186 + 8, v53);
  v39(v54);
  sub_2156C((v8 + 672));
  sub_21524();
  v56 = v55;
  v57 = sub_215EC();
  v39(v57);
  sub_2156C((v8 + 752));
  sub_21524();
  v59 = sub_2155C(v207, v58);
  v39(v59);
  sub_2156C((v8 + 712));
  sub_21524();
  v60 = sub_215EC();
  v39(v60);
  sub_162F0(v8, *(v8 + 24));
  sub_21770(a3, a4, a5);
  v210.origin.x = sub_217D4();
  CGRectGetMinY(v210);
  v154[0] = v38;
  sub_217D4();
  sub_13BE44();
  sub_215EC();
  sub_13A354();
  sub_162F0(v8, *(v8 + 24));
  sub_215EC();
  sub_13A344();
  CGRectGetWidth(v211);
  v162 = a1;
  v61 = [a1 traitCollection];
  [v61 layoutDirection];

  sub_13BE34();
  v159 = v62;
  sub_4948(&qword_19AFE0);
  v63 = *(sub_13A4F4() - 8);
  v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v156 = *(v63 + 72);
  v65 = swift_allocObject();
  v186 = xmmword_13E660;
  *(v65 + 16) = xmmword_13E660;
  v158 = v65;
  *&v182 = v65 + v64;
  v66 = *(v8 + 224);
  sub_162F0((v8 + 200), v66);
  sub_21844();
  sub_9EF8();
  (*(v67 + 16))();
  v204 = &type metadata for CGFloat;
  v205 = &protocol witness table for CGFloat;
  v203[0] = v181;
  sub_21884();
  if (sub_13A364())
  {
    v68 = &type metadata for CGFloat;
    v69 = &protocol witness table for CGFloat;
  }

  else
  {
    sub_21884();
    if (sub_13A324())
    {
      v70 = 0;
      v69 = &protocol witness table for Double;
      v68 = &type metadata for Double;
      goto LABEL_9;
    }

    v69 = &protocol witness table for CGFloat;
    v68 = &type metadata for CGFloat;
  }

  v70 = v56;
LABEL_9:
  v201 = v68;
  v202 = v69;
  v200 = v70;
  v71 = v196;
  v72 = *(*&v196 + 104);
  v73 = v187;
  LODWORD(v181) = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v74 = v188;
  v180 = *&v196 + 104;
  v179 = v72;
  v72(*&v187);
  v75 = sub_4948(&qword_19AFE8);
  v76 = v197;
  v77 = *(*&v197 + 72);
  v78 = (*(*&v197 + 80) + 32) & ~*(*&v197 + 80);
  v176 = *(*&v197 + 80);
  v177 = v75;
  v175 = v78 + 3 * v77;
  v79 = swift_allocObject();
  sub_215BC(v79);
  *(v80 - 256) = v78;
  sub_13A484();
  sub_13A494();
  v173 = 2 * v77;
  v178 = v77;
  sub_13A4A4();
  v199 = v66;
  v81 = sub_20068();
  v82 = sub_4948(&qword_19AFF0);
  v83 = sub_1D268();
  v84 = v189;
  v172 = v82;
  v171 = v83;
  v85 = v190;
  v174 = v81;
  sub_13BF64();
  v86 = v198;
  v87 = *(*&v198 + 104);
  v88 = v191;
  v170 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v89 = MinX;
  v169 = *&v198 + 104;
  v168 = v87;
  v87(*&v191);
  sub_216F4();
  sub_13A4E4();
  v90 = *(*&v86 + 8);
  *&v198 = *&v86 + 8;
  v167 = v90;
  v90(*&v88, *&v89);
  v91 = *(*&v76 + 8);
  *&v197 = *&v76 + 8;
  v166 = v91;
  v91(*&v84, *&v85);
  v92 = *(*&v71 + 8);
  *&v196 = *&v71 + 8;
  v155 = v92;
  v92(*&v73, *&v74);
  sub_1D2CC(&v200);
  sub_3C04(v203);
  sub_3C04(&v206);
  v93 = *(v8 + 184);
  v94 = *(v8 + 192);
  sub_162F0((v8 + 160), v93);
  v208 = v93;
  v209 = *(v94 + 8);
  sub_CC08(&v206);
  sub_9EF8();
  (*(v95 + 16))();
  v204 = &type metadata for CGFloat;
  v205 = &protocol witness table for CGFloat;
  v203[0] = v157;
  v96 = *(v8 + 152);
  sub_21680((v8 + 120), *(v8 + 144));
  if (sub_13A364())
  {
    v97 = &type metadata for CGFloat;
    v98 = &protocol witness table for CGFloat;
  }

  else
  {
    v96 = *(v8 + 152);
    sub_21680((v8 + 120), *(v8 + 144));
    if (sub_13A324())
    {
      v99 = 0;
      v98 = &protocol witness table for Double;
      v97 = &type metadata for Double;
      goto LABEL_15;
    }

    v98 = &protocol witness table for CGFloat;
    v97 = &type metadata for CGFloat;
  }

  v99 = v56;
LABEL_15:
  v201 = v97;
  v202 = v98;
  v200 = v99;
  v100 = v187;
  v101 = v188;
  sub_21704();
  v102();
  v103 = sub_216C8();
  sub_215BC(v103);
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v199 = v96;
  sub_2174C();
  sub_21864();
  sub_21830();
  sub_21808();
  v104();
  v105 = v156;
  v106 = v182;
  sub_216F4();
  sub_13A4E4();
  sub_215AC();
  v107();
  sub_21640();
  v108();
  v109 = v155;
  v155(*&v100, *&v101);
  sub_1D2CC(&v200);
  sub_3C04(v203);
  sub_3C04(&v206);
  *&v182 = *&v106 + 2 * v105;
  v110 = *(v8 + 144);
  sub_162F0((v8 + 120), v110);
  sub_21844();
  sub_9EF8();
  (*(v111 + 16))();
  v204 = &type metadata for CGFloat;
  v205 = &protocol witness table for CGFloat;
  v203[0] = v160;
  v201 = &type metadata for CGFloat;
  v202 = &protocol witness table for CGFloat;
  v200 = v56;
  sub_21704();
  v112();
  v113 = sub_216C8();
  sub_215BC(v113);
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v199 = v110;
  sub_2174C();
  sub_21864();
  sub_21830();
  sub_21808();
  v114();
  sub_216F4();
  sub_13A4E4();
  sub_215AC();
  v115();
  sub_21640();
  v116();
  v109(*&v100, *&v101);
  sub_1D2CC(&v200);
  sub_3C04(v203);
  sub_3C04(&v206);
  v34 = v183;
  sub_13A4D4();
  v117 = v184;
  sub_13A474();
  sub_13A2D4();
  if (v118 > v161)
  {
    v119 = v118;
  }

  else
  {
    v119 = v161;
  }

  sub_21680((v8 + 80), *(v8 + 104));
  if (sub_13A324())
  {
    v198 = 0.0;
    v189 = v119;
    v120 = a3;
    v121 = v195;
    sub_13BE34();
    sub_13BE44();
    v122 = a4;
    v124 = v123;
    v196 = v123;
    v126 = v125;
    v128 = v127;
    v130 = v129;
    sub_21664((v8 + 240));
    v212.origin.x = v120;
    v212.origin.y = v122;
    v212.size.width = a5;
    v212.size.height = v121;
    MinX = CGRectGetMinX(v212);
    v213.origin.x = v124;
    v213.origin.y = v126;
    v213.size.width = v128;
    v213.size.height = v130;
    CGRectGetMinY(v213);
    v214.origin.x = v120;
    v197 = v122;
    v214.origin.y = v122;
    v190 = a5;
    v214.size.width = a5;
    v214.size.height = v121;
    v131 = v120;
    CGRectGetWidth(v214);
    sub_217B4();
    sub_13A354();
    sub_13BE34();
    v133 = v132;
    v135 = v134;
    MinX = v136;
    v191 = v137;
    sub_21664((v8 + 40));
    sub_217B4();
    v138 = sub_13A324();
    v139 = v185;
    v196 = v131;
    if (v138)
    {
      v215.origin.x = sub_21764();
      v140 = MinX;
      v215.size.width = MinX;
      v141 = v191;
      v215.size.height = v191;
      Height = CGRectGetHeight(v215);
      v188 = *(v8 + 384);
      v143 = (Height - v188) * 0.5;
      v144 = v195;
      if (v143 <= v154[0])
      {
        v143 = v154[0];
      }

      v187 = v143;
      sub_21664((v8 + 40));
      v216.origin.x = v131;
      v216.origin.y = v197;
      v216.size.width = v190;
      v216.size.height = v144;
      CGRectGetMinX(v216);
      v217.origin.x = sub_21764();
      v217.size.width = v140;
      v217.size.height = v141;
      CGRectGetMinY(v217);
      sub_13BE44();
      sub_217B4();
      sub_13A354();
    }

    v145 = v190;
    sub_21664((v8 + 40));
    sub_217B4();
    if (sub_13A324())
    {
      v198 = v154[1] + *(v8 + 376);
    }

    v218.origin.x = sub_21764();
    v146 = MinX;
    v218.size.width = MinX;
    v147 = v191;
    v218.size.height = v191;
    CGRectGetWidth(v218);
    v219.origin.x = sub_21764();
    v219.size.width = v146;
    v219.size.height = v147;
    CGRectGetHeight(v219);
    *&v186 = v135;
    v148 = v163;
    sub_21664((v8 + 80));
    sub_13A384();
    v188 = v149;
    v151 = v150;
    v187 = v150;
    v220.origin.x = sub_21764();
    v220.size.width = v146;
    v220.size.height = v147;
    v152 = (CGRectGetHeight(v220) - v151) * 0.5;
    if (v152 <= v148)
    {
      v152 = v148;
    }

    v182 = v152;
    sub_21664((v8 + 80));
    sub_21770(v196, v197, v145);
    v221.origin.x = v133;
    *&v221.origin.y = v186;
    v221.size.width = v146;
    v221.size.height = v147;
    CGRectGetMinY(v221);
    sub_21650();
    sub_13BE44();
    sub_13A354();
    v222.origin.x = sub_21650();
    CGRectGetMinX(v222);
    v223.origin.x = sub_21650();
    CGRectGetMinY(v223);
    sub_13A2C4();
    (*(v139 + 8))(v117, v165);
  }

  else
  {
    sub_21770(a3, a4, a5);
    v224.origin.x = a3;
    v224.origin.y = a4;
    v224.size.width = a5;
    v224.size.height = v7;
    CGRectGetMinY(v224);
    sub_13A2C4();
    (*(v185 + 8))(v117, v165);
  }

  return (*(v192 + 8))(v34, v193);
}

uint64_t ServiceProductBadgedPageLayout.Metrics.contentTopSpace.setter(__int128 *a1)
{
  sub_3C04(v1);

  return sub_9414(a1, v1);
}

uint64_t AppRatingLockupComponentLayout.Metrics.footnoteSeparatorBottom.setter(__int128 *a1)
{
  sub_3C04(v1 + 56);

  return sub_9414(a1, v1 + 56);
}

uint64_t ServiceProductBadgedPageLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  sub_3C04(v1 + 112);

  return sub_9414(a1, v1 + 112);
}

uint64_t ServiceProductBadgedPageLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  sub_3C04(v1 + 152);

  return sub_9414(a1, v1 + 152);
}

uint64_t OfferPlatterComponentLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  sub_3C04(v1 + 192);

  return sub_9414(a1, v1 + 192);
}

uint64_t OfferPlatterComponentLayout.Metrics.infoTopSpace.setter(__int128 *a1)
{
  sub_3C04(v1 + 232);

  return sub_9414(a1, v1 + 232);
}

uint64_t AppLockupComponentLayout.Metrics.minimumComponentHeight.setter(__int128 *a1)
{
  sub_3C04(v1 + 272);

  return sub_9414(a1, v1 + 272);
}

uint64_t AppLockupComponentLayout.Metrics.minimumFooterHeight.setter(__int128 *a1)
{
  sub_3C04(v1 + 312);

  return sub_9414(a1, v1 + 312);
}

uint64_t AppLockupComponentLayout.Metrics.subtitleTop.setter(__int128 *a1)
{
  sub_3C04(v1 + 352);

  return sub_9414(a1, v1 + 352);
}

uint64_t AppLockupComponentLayout.Metrics.textBottom.setter(__int128 *a1)
{
  sub_3C04(v1 + 392);

  return sub_9414(a1, v1 + 392);
}

uint64_t AppLockupComponentLayout.Metrics.textLeading.setter(__int128 *a1)
{
  sub_3C04(v1 + 432);

  return sub_9414(a1, v1 + 432);
}

uint64_t AppLockupComponentLayout.Metrics.textTop.setter(__int128 *a1)
{
  sub_3C04(v1 + 472);

  return sub_9414(a1, v1 + 472);
}

uint64_t sub_1F144@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v93 = sub_13A4F4();
  v113 = *(v93 - 8);
  v95 = v113;
  __chkstk_darwin(v93);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v3);
  sub_18B60();
  __chkstk_darwin(v4);
  sub_2159C(v89 - v5);
  v117 = sub_13A4C4();
  sub_9E94();
  v115 = v6;
  __chkstk_darwin(v7);
  sub_21548();
  v114 = v8;
  v104 = sub_13A454();
  v116 = *(v104 - 8);
  __chkstk_darwin(v104);
  sub_21548();
  sub_2159C(v9);
  v10 = sub_13A4B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v12);
  v14 = v89 - v13;
  sub_4948(&qword_19AFE8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_140280;
  sub_13A494();
  v124 = v15;
  v107 = sub_20068();
  v106 = sub_4948(&qword_19AFF0);
  v16 = sub_1D268();
  v94 = v14;
  v17 = v114;
  sub_13BF64();
  sub_4948(&qword_19AFE0);
  sub_217E8();
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v100 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_140290;
  v92 = v19;
  v90 = v21;
  v105 = v21 + v19;
  sub_162F0(v2, v2[3]);
  sub_13A374();
  sub_4B14((v2 + 35), v122);
  v22 = *(v116 + 104);
  v23 = v102;
  LODWORD(v113) = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v101 = v116 + 104;
  v99 = v22;
  (v22)(v102);
  v24 = v115;
  v25 = *(v115 + 104);
  v112 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v111 = v115 + 104;
  v110 = v25;
  v25(v17);
  v119 = &_swiftEmptyArrayStorage;
  v26 = v96;
  sub_215F8();
  *(v27 - 256) = v16;
  sub_2169C();
  sub_13A4E4();
  v28 = *(v11 + 8);
  v97 = v10;
  v29 = v116;
  v109 = v11 + 8;
  v108 = v28;
  v28(v26, v10);
  v103 = *(v24 + 8);
  v115 = v24 + 8;
  v103(v17, v117);
  v32 = *(v29 + 8);
  v30 = v29 + 8;
  v31 = v32;
  v32(v23, v104);
  sub_1D2CC(v122);
  sub_3C04(&v124);
  sub_162F0(v2 + 25, v2[28]);
  sub_21608();
  sub_9EF8();
  (*(v33 + 16))();
  sub_4B14((v2 + 94), v122);
  sub_21680(v2 + 20, v2[23]);
  if (sub_13A324())
  {
    v120 = &type metadata for Double;
    v121 = &protocol witness table for Double;
    v119 = 0;
  }

  else
  {
    sub_4B14((v2 + 84), &v119);
  }

  v34 = v102;
  sub_215D4();
  v35 = v99;
  v99();
  v118 = &_swiftEmptyArrayStorage;
  sub_215F8();
  sub_13BF64();
  v36 = v114;
  sub_216BC();
  v37 = v117;
  sub_215AC();
  v38();
  sub_13A4E4();
  v103(v36, v37);
  sub_2181C();
  v39();
  v31(v34, v10);
  sub_3C04(v122);
  sub_1D2CC(&v119);
  sub_3C04(&v124);
  sub_162F0(v2 + 20, v2[23]);
  sub_21608();
  sub_9EF8();
  (*(v40 + 16))();
  sub_4B14((v2 + 79), v122);
  sub_21680(v2 + 15, v2[18]);
  v41 = sub_13A324();
  v98 = v31;
  v116 = v30;
  if (v41)
  {
    v121 = &protocol witness table for Double;
    v120 = &type metadata for Double;
    v119 = 0;
  }

  else
  {
    sub_4B14((v2 + 84), &v119);
  }

  v42 = v100;
  v43 = v102;
  v44 = v104;
  (v35)(v102, v113, v104);
  v118 = &_swiftEmptyArrayStorage;
  sub_215F8();
  sub_2169C();
  v45 = v114;
  sub_216BC();
  v46 = v117;
  sub_2178C();
  v47();
  sub_13A4E4();
  v103(v45, v46);
  sub_21640();
  v48();
  v98(v43, v44);
  sub_3C04(v122);
  sub_1D2CC(&v119);
  sub_3C04(&v124);
  v89[3] = 3 * v42;
  sub_162F0(v2 + 15, v2[18]);
  sub_21608();
  sub_9EF8();
  (*(v49 + 16))();
  sub_4B14((v2 + 84), v122);
  sub_217F4();
  v99();
  v119 = &_swiftEmptyArrayStorage;
  sub_215F8();
  sub_2169C();
  sub_216BC();
  sub_2178C();
  v50();
  v51 = v103;
  v52 = v117;
  sub_13A4E4();
  v51(v45, v52);
  sub_21640();
  v53();
  v98(v43, v44);
  sub_1D2CC(v122);
  sub_3C04(&v124);
  sub_21680(v2 + 10, v2[13]);
  if (sub_13A324())
  {
    v126 = &protocol witness table for Double;
    v125 = &type metadata for Double;
    v124 = 0;
    v123 = 0;
    memset(v122, 0, sizeof(v122));
    sub_217F4();
    v99();
    v54 = v114;
    sub_216BC();
    sub_215AC();
    v55();
    sub_13A4E4();
    v51(v54, v52);
    v98(v43, v44);
    sub_1D2CC(v122);
    sub_3C04(&v124);
    v56 = v90;
    v58 = *(v90 + 16);
    v57 = *(v90 + 24);
    if (v58 >= v57 >> 1)
    {
      v79 = sub_217A0(v57);
      sub_58ABC(v79, v80, v81, v56);
      v56 = v82;
    }

    *(v56 + 16) = v58 + 1;
    sub_21734();
    sub_217E8();
    v60 = *(v59 + 32);
    v95 = v59 + 32;
    v60();
    sub_162F0(v2 + 5, v2[8]);
    if (sub_13A324())
    {
      sub_162F0(v2 + 5, v2[8]);
      sub_13A374();
      sub_4B14((v2 + 35), v122);
      sub_215D4();
      v99();
      v61 = v114;
      sub_216BC();
      v62 = v117;
      sub_215AC();
      v63();
      sub_13A4E4();
      v103(v61, v62);
      sub_217C0();
      v64();
      sub_1D2CC(v122);
      sub_3C04(&v124);
      v66 = *(v56 + 16);
      v65 = *(v56 + 24);
      v67 = v56;
      if (v66 >= v65 >> 1)
      {
        v84 = sub_217A0(v65);
        sub_58ABC(v84, v85, v86, v87);
        v67 = v88;
      }

      v56 = v67;
      *(v67 + 16) = v66 + 1;
      sub_217E8();
      v60();
    }

    v68 = v2[13];
    v69 = v2[14];
    sub_162F0(v2 + 10, v68);
    v125 = v68;
    v126 = *(v69 + 8);
    sub_CC08(&v124);
    sub_9EF8();
    (*(v70 + 16))();
    sub_4B14((v2 + 84), v122);
    sub_215D4();
    v99();
    v71 = v114;
    sub_216BC();
    v72 = v117;
    sub_215AC();
    v73();
    sub_13A4E4();
    v103(v71, v72);
    sub_217C0();
    v74();
    sub_1D2CC(v122);
    sub_3C04(&v124);
    v76 = *(v56 + 16);
    v75 = *(v56 + 24);
    if (v76 >= v75 >> 1)
    {
      sub_58ABC(v75 > 1, v76 + 1, 1, v56);
      v56 = v83;
    }

    *(v56 + 16) = v76 + 1;
    sub_21734();
    sub_217E8();
    v60();
  }

  sub_13A4D4();
  sub_2181C();
  return v77();
}

double AppLockupComponentLayout.measurements(fitting:in:)()
{
  swift_getObjectType();
  v0 = sub_2171C();

  return sub_200C0(v0, v1, v2);
}

unint64_t sub_20068()
{
  result = qword_1A0740;
  if (!qword_1A0740)
  {
    sub_13A4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0740);
  }

  return result;
}

double sub_200C0(void *a1, void *a2, double a3)
{
  v126 = sub_13A4C4();
  v130 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_13A4B4();
  v129 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_13A454();
  v128 = *(v127 - 8);
  __chkstk_darwin(v127);
  v122 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_13C114();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_13A514();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v120 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v94 - v17;
  v19 = [a1 traitCollection];
  v20 = sub_13BDE4();

  if (v20)
  {
    sub_1F144(v18);
    sub_13A464();
    a3 = v21;
    (*(v14 + 8))(v18, v13);
  }

  else
  {
    v101 = v13;
    v100 = v14;
    sub_162F0(a2 + 49, a2[52]);
    sub_13A284();
    sub_13A404();
    v94[3] = v22;
    v23 = *(v10 + 8);
    v23(v12, v9);
    sub_162F0(a2 + 54, a2[57]);
    sub_13A284();
    sub_13A404();
    v94[0] = v24;
    v23(v12, v9);
    sub_162F0(a2 + 59, a2[62]);
    sub_13A284();
    sub_13A404();
    v94[2] = v25;
    v23(v12, v9);
    sub_162F0(a2 + 64, a2[67]);
    sub_13A284();
    sub_13A404();
    v98 = v26;
    v23(v12, v9);
    sub_162F0(a2 + 69, a2[72]);
    sub_13A284();
    sub_13A404();
    v23(v12, v9);
    sub_162F0(a2 + 74, a2[77]);
    sub_13A284();
    sub_13A404();
    v94[1] = v27;
    v23(v12, v9);
    sub_162F0(a2 + 79, a2[82]);
    sub_13A284();
    sub_13A404();
    v29 = v28;
    v23(v12, v9);
    sub_162F0(a2 + 84, a2[87]);
    sub_13A284();
    sub_13A404();
    v31 = v30;
    v23(v12, v9);
    sub_162F0(a2 + 94, a2[97]);
    sub_13A284();
    sub_13A404();
    v33 = v32;
    v23(v12, v9);
    sub_162F0(a2 + 89, a2[92]);
    sub_13A284();
    sub_13A404();
    v23(v12, v9);
    sub_4948(&qword_19AFE0);
    v34 = *(sub_13A4F4() - 8);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v96 = *(v34 + 72);
    v36 = swift_allocObject();
    v121 = xmmword_13E660;
    *(v36 + 16) = xmmword_13E660;
    v97 = v36;
    v119 = v36 + v35;
    v37 = a2[28];
    v38 = a2[29];
    v39 = sub_162F0(a2 + 25, v37);
    v139 = v37;
    v140 = *(v38 + 8);
    v40 = sub_CC08(&v138);
    (*(*(v37 - 8) + 16))(v40, v39, v37);
    v136 = &type metadata for CGFloat;
    v137 = &protocol witness table for CGFloat;
    v135 = v33;
    sub_162F0(a2 + 20, a2[23]);
    v41 = sub_13A364();
    v99 = a1;
    if ((v41 & 1) != 0 || (sub_162F0(a2 + 20, a2[23]), (sub_13A324() & 1) == 0))
    {
      v43 = &protocol witness table for CGFloat;
      v44 = &type metadata for CGFloat;
      v42 = v31;
    }

    else
    {
      v42 = 0;
      v43 = &protocol witness table for Double;
      v44 = &type metadata for Double;
    }

    v133 = v44;
    v134 = v43;
    v132 = v42;
    v45 = v128;
    v46 = *(v128 + 104);
    v47 = v122;
    v118 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v48 = v127;
    v117 = v128 + 104;
    v116 = v46;
    v46(v122);
    v49 = sub_4948(&qword_19AFE8);
    v50 = v129;
    v51 = *(v129 + 72);
    v52 = (*(v129 + 80) + 32) & ~*(v129 + 80);
    v112 = *(v129 + 80);
    v114 = v49;
    v111 = v52 + 3 * v51;
    v53 = swift_allocObject();
    *(v53 + 16) = v121;
    v113 = v52;
    sub_13A484();
    sub_13A494();
    v109 = 2 * v51;
    v115 = v51;
    sub_13A4A4();
    v131 = v53;
    v54 = sub_20068();
    v55 = sub_4948(&qword_19AFF0);
    v56 = sub_1D268();
    v57 = v124;
    v108 = v55;
    v107 = v56;
    v58 = v125;
    v110 = v54;
    sub_13BF64();
    v59 = v130;
    v60 = *(v130 + 104);
    v61 = v123;
    v106 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v62 = v126;
    v105 = v130 + 104;
    v104 = v60;
    v60(v123);
    sub_13A4E4();
    v63 = *(v59 + 8);
    v130 = v59 + 8;
    v103 = v63;
    v63(v61, v62);
    v64 = *(v50 + 8);
    v129 = v50 + 8;
    v102 = v64;
    v64(v57, v58);
    v65 = *(v45 + 8);
    v128 = v45 + 8;
    v95 = v65;
    v65(v47, v48);
    sub_1D2CC(&v132);
    sub_3C04(&v135);
    sub_3C04(&v138);
    v66 = a2[23];
    v67 = a2[24];
    v68 = sub_162F0(a2 + 20, v66);
    v139 = v66;
    v140 = *(v67 + 8);
    v69 = sub_CC08(&v138);
    (*(*(v66 - 8) + 16))(v69, v68, v66);
    v136 = &type metadata for CGFloat;
    v137 = &protocol witness table for CGFloat;
    v135 = v29;
    sub_162F0(a2 + 15, a2[18]);
    if ((sub_13A364() & 1) != 0 || (sub_162F0(a2 + 15, a2[18]), (sub_13A324() & 1) == 0))
    {
      v71 = &protocol witness table for CGFloat;
      v72 = &type metadata for CGFloat;
      v70 = v31;
    }

    else
    {
      v70 = 0;
      v71 = &protocol witness table for Double;
      v72 = &type metadata for Double;
    }

    v133 = v72;
    v134 = v71;
    v132 = v70;
    v73 = v122;
    v74 = v127;
    v116(v122, v118, v127);
    v75 = swift_allocObject();
    *(v75 + 16) = v121;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v131 = v75;
    v76 = v124;
    v77 = v125;
    sub_13BF64();
    v78 = v123;
    v79 = v126;
    v104(v123, v106, v126);
    v80 = v96;
    v81 = v119;
    sub_13A4E4();
    v103(v78, v79);
    v102(v76, v77);
    v82 = v95;
    v95(v73, v74);
    sub_1D2CC(&v132);
    sub_3C04(&v135);
    sub_3C04(&v138);
    v119 = v81 + 2 * v80;
    v83 = a2[18];
    v84 = a2[19];
    v85 = sub_162F0(a2 + 15, v83);
    v139 = v83;
    v140 = *(v84 + 8);
    v86 = sub_CC08(&v138);
    (*(*(v83 - 8) + 16))(v86, v85, v83);
    v136 = &type metadata for CGFloat;
    v137 = &protocol witness table for CGFloat;
    v135 = v98;
    v133 = &type metadata for CGFloat;
    v134 = &protocol witness table for CGFloat;
    v132 = v31;
    v87 = v127;
    v116(v73, v118, v127);
    v88 = swift_allocObject();
    *(v88 + 16) = v121;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v131 = v88;
    sub_13BF64();
    v104(v78, v106, v79);
    sub_13A4E4();
    v103(v78, v79);
    v102(v76, v77);
    v82(v73, v87);
    sub_1D2CC(&v132);
    sub_3C04(&v135);
    sub_3C04(&v138);
    v89 = v120;
    sub_13A4D4();
    sub_13A464();
    v91 = v90;
    sub_162F0(a2 + 10, a2[13]);
    if (sub_13A324())
    {
      sub_162F0(a2 + 5, a2[8]);
      sub_13A324();
      v92 = v100;
      sub_162F0(a2 + 10, a2[13]);
      sub_13A384();
      (*(v92 + 8))(v89, v101);
    }

    else
    {
      (*(v100 + 8))(v89, v101);
      return v91;
    }
  }

  return a3;
}

unint64_t sub_21248()
{
  result = qword_19B000;
  if (!qword_19B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B000);
  }

  return result;
}

uint64_t sub_212A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 792))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_212E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 792) = 1;
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

    *(result + 792) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2140C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 512))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2144C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 512) = 1;
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

    *(result + 512) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21524()
{

  return sub_13A404();
}

uint64_t sub_2156C(void *a1)
{
  sub_162F0(a1, v1);

  return sub_13A284();
}

__n128 sub_215BC(__n128 *a1)
{
  result = *(v1 - 400);
  a1[1] = result;
  return result;
}

uint64_t *sub_21608()
{
  *(v2 - 104) = v0;
  *(v2 - 96) = *(v1 + 8);

  return sub_CC08((v2 - 128));
}

uint64_t sub_2169C()
{

  return sub_13BF64();
}

uint64_t sub_216C8()
{

  return swift_allocObject();
}

double sub_21770(double a1, double a2, double a3)
{
  v5 = *(v3 - 312);

  return CGRectGetMinX(*&a1);
}

uint64_t *sub_21844()
{
  *(v2 - 168) = v1;
  *(v2 - 160) = *(v0 + 8);

  return sub_CC08((v2 - 192));
}

uint64_t sub_21864()
{

  return sub_13BF64();
}

uint64_t sub_21884()
{
  v1 = *(v0 + 184);
  sub_162F0((v0 + 160), v1);
  return v1;
}

uint64_t sub_218B0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_183EF0;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_218FC(char a1)
{
  if (!a1)
  {
    return 0x6853726564616568;
  }

  if (a1 == 1)
  {
    return 0x6C65685379646F62;
  }

  return 0x68537265746F6F66;
}

uint64_t sub_21980@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218B0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_219B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_218FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_219DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_218B0(a1, a2);
  if (v7 == 3)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v19 = &type metadata for AppLockupInstallSheetLayout.BodySpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_22F30(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    sub_13BBC4(v21);
    v22._object = 0x800000000014E6F0;
    v22._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v22);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for AppLockupInstallSheetLayout.BodySpacing;
    a3[4] = &off_186380;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0x108uLL);
    return sub_22F30(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v19 = &type metadata for AppLockupInstallSheetLayout.BodySpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_22F30(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for AppLockupInstallSheetLayout.BodySpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      if (v11 == 1)
      {
        memcpy(__dst, (v3 + 88), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v13 = swift_allocObject();
        *a3 = v13;
        v14 = (v13 + 16);
        v15 = (v3 + 88);
      }

      else
      {
        memcpy(__dst, (v3 + 176), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v17 = swift_allocObject();
        *a3 = v17;
        v14 = (v17 + 16);
        v15 = (v3 + 176);
      }
    }

    else
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v16 = swift_allocObject();
      *a3 = v16;
      v14 = (v16 + 16);
      v15 = v3;
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v18);
  }
}

void *sub_21F00@<X0>(void *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  return memcpy(a1, v10, 0x108uLL);
}

uint64_t sub_221B8(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_183F58;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2220C(char a1)
{
  if (a1)
  {
    return 0x68537265746F6F66;
  }

  else
  {
    return 0x6C65685374786574;
  }
}

uint64_t sub_222D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_221B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_22308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2220C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22334@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_221B8(a1, a2);
  if (v7 == 2)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v18 = &type metadata for AppLockupInstallSheetLayout.FooterSpacing;
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v3, 0xB0uLL);
    sub_22FB8(v3, __dst);
    sub_139984();
    sub_49C8(v17);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    sub_13BBC4(v20);
    v21._object = 0x800000000014E6F0;
    v21._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v21);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for AppLockupInstallSheetLayout.FooterSpacing;
    a3[4] = &off_186330;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0xB0uLL);
    return sub_22FB8(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v18 = &type metadata for AppLockupInstallSheetLayout.FooterSpacing;
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v3, 0xB0uLL);
    sub_22FB8(v3, __dst);
    sub_139984();
    sub_49C8(v17);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for AppLockupInstallSheetLayout.FooterSpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11 & 1;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v13 = swift_allocObject();
      *a3 = v13;
      v14 = (v13 + 16);
      v15 = v3;
    }

    else
    {
      memcpy(__dst, (v3 + 88), 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v16 = swift_allocObject();
      *a3 = v16;
      v14 = (v16 + 16);
      v15 = (v3 + 88);
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v17);
  }
}

void *sub_22814@<X0>(void *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  return memcpy(a1, __src, 0xB0uLL);
}

uint64_t sub_22BFC@<X0>(uint64_t *a1@<X8>)
{
  sub_21F00(__src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x108uLL);
  sub_22814(v6);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v6, 0xB0uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_22D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22BFC(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_22DB8()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  if (v0[31])
  {
  }

  if (v0[33])
  {
  }

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_22E48()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_22EB8()
{
  sub_3C04(v0 + 16);
  sub_3C04(v0 + 56);
  sub_3C04(v0 + 96);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_22F68()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

_BYTE *storeEnumTagSinglePayload for AppLockupInstallSheetLayout.FooterSpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x230BCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppLockupInstallSheetLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x231C0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231FC()
{
  result = qword_19B008;
  if (!qword_19B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B008);
  }

  return result;
}

unint64_t sub_23254()
{
  result = qword_19B010;
  if (!qword_19B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B010);
  }

  return result;
}

uint64_t type metadata accessor for AppRatingLockup()
{
  result = qword_19B078;
  if (!qword_19B078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v135 = a2;
  v120 = a3;
  v6 = sub_4948(&qword_19A420);
  __chkstk_darwin(v6 - 8);
  v123 = &v117 - v7;
  v122 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v8);
  v125 = &v117 - v9;
  v10 = sub_13B584();
  v142 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_18B60();
  v12 = __chkstk_darwin(v11);
  v14 = &v117 - v13;
  __chkstk_darwin(v12);
  sub_18C34();
  sub_18B60();
  v16 = __chkstk_darwin(v15);
  v18 = &v117 - v17;
  __chkstk_darwin(v16);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v19);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v20);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v21);
  v22 = type metadata accessor for AppRatingLockup();
  sub_9F94();
  __chkstk_darwin(v23);
  v25 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v134 = swift_initStackObject();
  v137 = a2;
  sub_9DD0(0x6B726F77747261, 0xE700000000000000, v22, sub_24498, v136, v26, v27, v28);
  v127 = v14;
  v126 = v18;
  if (v3)
  {

    v29 = 0;
  }

  v130 = v29;
  *(v25 + 2) = v29;
  v30 = sub_BB310();
  v133 = v10;
  v31 = v22;
  *v25 = v30;
  *(v25 + 1) = v32;
  v129 = v32;
  sub_13B594();
  v33 = &enum case for JSONError.missingProperty(_:);
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_24948();
    sub_244A0(v34, v35);
    sub_9F18();
    *v36 = 0x65746F6E746F6F66;
    v36[1] = 0xE800000000000000;
    v36[2] = v22;
    sub_9EF8();
    (*(v37 + 104))();
    swift_willThrow();
    v38 = sub_24994();
    v39(v38);

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    v53 = sub_24994();
    v54(v53);
    sub_249B4();
  }

  v40 = v140;
  *(v25 + 4) = v139;
  *(v25 + 5) = v40;
  *(v25 + 12) = v141;
  v41 = sub_BB310();
  v119 = 0;
  *&v139 = v41;
  *(&v139 + 1) = v42;
  sub_13BFB4();
  v43 = v124;
  v121 = a1;
  sub_13B594();
  v44 = sub_13B564();
  v132 = &enum case for JSONError.missingProperty(_:);
  if (v44)
  {
    goto LABEL_9;
  }

  v45 = v123;
  sub_7738();
  if (sub_52E0(v45, 1, v122) == 1)
  {
    sub_928C(v45, &qword_19A420);
    v33 = v132;
LABEL_9:
    sub_13BAB4();
    sub_24948();
    sub_244A0(v46, v47);
    sub_9F18();
    *v48 = 0xD000000000000011;
    v48[1] = 0x800000000014E730;
    v48[2] = v22;
    sub_9EF8();
    (*(v49 + 104))();
    swift_willThrow();
    sub_24988();
    v33(v43, 0xE800000000000000);

    v50 = sub_13B7A4();
    v51 = v125;
    sub_53A8(v125, 1, 1, v50);
    v52 = 0;
    goto LABEL_11;
  }

  sub_24988();
  sub_24978();
  v55();
  v56 = v45;
  v51 = v125;
  sub_92E4(v56, v125);
  v52 = v119;
LABEL_11:
  sub_92E4(v51, &v25[*(v22 + 52)]);
  sub_13B594();
  if (sub_13B564())
  {
LABEL_14:
    v57 = sub_13BAB4();
    sub_24948();
    sub_244A0(v58, v59);
    swift_allocError();
    *v60 = 1868983913;
    v60[1] = 0xE400000000000000;
    v60[2] = v22;
    (*(*(v57 - 8) + 104))(v60, enum case for JSONError.missingProperty(_:), v57);
    swift_willThrow();
    sub_24988();
    sub_24960();
    v61();

    sub_18B90();
    goto LABEL_15;
  }

  sub_139DB4();
  if (v52)
  {

    sub_18BAC();
    sub_928C(v138, &qword_19E960);
    goto LABEL_14;
  }

  sub_24988();
  sub_24960();
  v106();
  sub_249B4();
LABEL_15:
  v62 = v140;
  *(v25 + 104) = v139;
  *(v25 + 120) = v62;
  *(v25 + 17) = v141;
  v63 = v121;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_24948();
    sub_244A0(v64, v65);
    sub_9F18();
    *v66 = 0x7469736F706F7270;
    v66[1] = 0xEB000000006E6F69;
    v66[2] = v31;
    sub_9EF8();
    (*(v67 + 104))();
    swift_willThrow();
    sub_24988();
    sub_24978();
    v68();

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    sub_24988();
    sub_24978();
    v107();
    sub_249B4();
  }

  v69 = v140;
  *(v25 + 24) = v139;
  *(v25 + 40) = v69;
  *(v25 + 7) = v141;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_24948();
    sub_244A0(v70, v71);
    v72 = sub_9F18();
    sub_249E4(v72, v73);
    sub_9EF8();
    (*(v74 + 104))();
    swift_willThrow();
    sub_24988();
    sub_24960();
    v75();

    sub_18B90();
  }

  else
  {
    sub_139BC4();
    sub_24988();
    sub_24960();
    v108();
    sub_249B4();
  }

  v76 = &v25[*(v31 + 56)];
  v77 = v140;
  *v76 = v139;
  *(v76 + 1) = v77;
  *(v76 + 4) = v141;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_24948();
    sub_244A0(v78, v79);
    sub_9F18();
    *v80 = 0x676E69746172;
    v80[1] = 0xE600000000000000;
    v80[2] = v31;
    sub_9EF8();
    (*(v81 + 104))();
    swift_willThrow();
    sub_24988();
    sub_24978();
    v82();

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    sub_24988();
    sub_24978();
    v109();
    sub_249B4();
  }

  v83 = v140;
  *(v25 + 9) = v139;
  *(v25 + 10) = v83;
  *(v25 + 22) = v141;
  sub_13B594();
  v84 = sub_13B564();
  v118 = v31;
  if (v84)
  {
    v110 = v63;
    sub_13BAB4();
    sub_24948();
    sub_244A0(v85, v86);
    v87 = sub_9F18();
    sub_249E4(v87, v88);
    sub_9EF8();
    (*(v89 + 104))();
    swift_willThrow();
    sub_24988();
    sub_24960();
    v90();

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    v110 = v63;
    sub_24988();
    sub_24960();
    v111();
    sub_249B4();
  }

  v91 = v140;
  *(v25 + 184) = v139;
  *(v25 + 200) = v91;
  *(v25 + 27) = v141;
  v92 = v128;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_24948();
    sub_244A0(v94, v95);
    sub_9F18();
    *v96 = 0x656C746974;
    v96[1] = 0xE500000000000000;
    v97 = v118;
    v96[2] = v118;
    sub_9EF8();
    (*(v98 + 104))();
    swift_willThrow();

    v99 = v110;
    v100 = v132;
    v132(v99, 0xE800000000000000);
    v100(v92, 0xE800000000000000);
    v101 = v135;
    v102 = v119;
    sub_13B5A4();
    sub_9F94();
    (*(v103 + 8))(v101);

    if (v102)
    {
      v104 = &qword_19E960;
      v105 = (v25 + 64);
    }

    else
    {
      sub_249CC((v25 + 24));
      sub_249CC((v25 + 64));
      sub_249CC((v25 + 104));
      sub_249CC((v25 + 144));
      sub_249CC((v25 + 184));
      sub_9238((v25 + 264));
      sub_928C(&v25[*(v97 + 52)], &qword_19A350);
      v104 = &unk_19E320;
      v105 = &v25[*(v97 + 56)];
    }

    return sub_928C(v105, v104);
  }

  else
  {
    v93 = v135;
    sub_139DB4();
    v112 = v110;
    v113 = v132;
    v114 = v133;
    v132(v112, v133);
    v113(v92, v114);
    sub_249B4();
    sub_9414(&v139, (v25 + 224));
    sub_244E8(v25, v120);
    sub_13B5A4();
    sub_9F94();
    (*(v115 + 8))(v93);
    return sub_2454C(v25);
  }
}

uint64_t sub_244A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_244E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRatingLockup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2454C(uint64_t a1)
{
  v2 = type metadata accessor for AppRatingLockup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 248);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 52);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_24664(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 248) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 52);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_246F0()
{
  sub_24850();
  if (v0 <= 0x3F)
  {
    sub_248A0(319, &qword_19AE30, &type metadata accessor for Artwork);
    if (v1 <= 0x3F)
    {
      sub_248F4(319, &qword_19AE40, &qword_19AE48);
      if (v2 <= 0x3F)
      {
        sub_18A28();
        if (v3 <= 0x3F)
        {
          sub_248A0(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
          if (v4 <= 0x3F)
          {
            sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24850()
{
  if (!qword_19AE28)
  {
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19AE28);
    }
  }
}

void sub_248A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_13BF44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_248F4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_558C(a3);
    v4 = sub_13BF44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_249B4()
{

  return sub_9414((v0 - 208), v0 - 160);
}

uint64_t sub_249CC(uint64_t a1)
{

  return sub_928C(a1, v1);
}

void *sub_249E4(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v2;
  a2[1] = v4;
  a2[2] = v3;
  return result;
}

void sub_249F8()
{
  swift_getKeyPath();
  sub_4948(&qword_19B128);
  sub_13B5E4();

  if (v107[0])
  {
    sub_26154(v107[0]);
  }

  swift_getKeyPath();
  sub_13B5E4();

  v9 = sub_2523C(v1, v2, v3, v4, v5, v6, v7, v8, v103, *(&v103 + 1), v104, v105, v106, v107[0]);
  v10(v9);
  sub_3C04(v107);
  swift_getKeyPath();
  sub_2521C();

  if (v105)
  {
    sub_25248(v11, v12, v13, v14, v15, v16, v17, v18, v103, v104, v105, v106, v107[0]);
    sub_25204();
    v27 = sub_2523C(v19, v20, v21, v22, v23, v24, v25, v26, v103, *(&v103 + 1), v104, v105, v106, v107[0]);
    v28(v27);
    sub_3C04(v107);
  }

  else
  {
    sub_2519C(&v103);
  }

  swift_getKeyPath();
  sub_2521C();

  if (v105)
  {
    sub_25248(v29, v30, v31, v32, v33, v34, v35, v36, v103, v104, v105, v106, v107[0]);
    sub_25204();
    v45 = sub_2523C(v37, v38, v39, v40, v41, v42, v43, v44, v103, *(&v103 + 1), v104, v105, v106, v107[0]);
    v46(v45);
    sub_3C04(v107);
  }

  else
  {
    sub_2519C(&v103);
  }

  swift_getKeyPath();
  sub_2521C();

  if (v105)
  {
    sub_25248(v47, v48, v49, v50, v51, v52, v53, v54, v103, v104, v105, v106, v107[0]);
    sub_25204();
    v63 = sub_2523C(v55, v56, v57, v58, v59, v60, v61, v62, v103, *(&v103 + 1), v104, v105, v106, v107[0]);
    v64(v63);
    sub_3C04(v107);
  }

  else
  {
    sub_2519C(&v103);
  }

  swift_getKeyPath();
  sub_2521C();

  if (v105)
  {
    sub_25248(v65, v66, v67, v68, v69, v70, v71, v72, v103, v104, v105, v106, v107[0]);
    sub_25204();
    v81 = sub_2523C(v73, v74, v75, v76, v77, v78, v79, v80, v103, *(&v103 + 1), v104, v105, v106, v107[0]);
    v82(v81);
    sub_3C04(v107);
  }

  else
  {
    sub_2519C(&v103);
  }

  swift_getKeyPath();
  sub_2521C();

  if (v105)
  {
    sub_25248(v83, v84, v85, v86, v87, v88, v89, v90, v103, v104, v105, v106, v107[0]);
    sub_25204();
    v99 = sub_2523C(v91, v92, v93, v94, v95, v96, v97, v98, v103, *(&v103 + 1), v104, v105, v106, v107[0]);
    v100(v99);
    sub_3C04(v107);
  }

  else
  {
    sub_2519C(&v103);
  }

  v101 = [v0 contentView];
  swift_getKeyPath();
  sub_13B5E4();

  if (v107[1])
  {
    v102 = sub_13BB54();
  }

  else
  {
    v102 = 0;
  }

  [v101 setAccessibilityLabel:v102];
}

uint64_t sub_24E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AppRatingLockupComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_24E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AppRatingLockupComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_24EFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_24F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_24FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_25048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_25154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2519C(uint64_t a1)
{
  v2 = sub_4948(&qword_19E960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2521C()
{

  return sub_13B5E4();
}

uint64_t sub_25248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return sub_9414(&a9, &a13);
}

id sub_25260()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent____lazy_storage___artworkImageView;
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent____lazy_storage___artworkImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent____lazy_storage___artworkImageView);
  }

  else
  {
    v4 = v0;
    if (qword_199E70 != -1)
    {
      swift_once();
    }

    v5 = objc_allocWithZone(sub_139CF4());
    v6 = sub_139CE4();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_25330(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteLabel;
  sub_139BB4();
  v11 = objc_opt_self();
  v12 = [v11 ams_secondaryText];
  v13 = sub_13A2A4();
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleFootnote;
  v14 = *(*(v13 - 8) + 104);
  sub_27C88();
  v14();
  v33 = UIFontTextStyleFootnote;
  *&v4[v10] = sub_27C94();
  v15 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_infoLabel;
  v16 = [v11 ams_secondaryText];
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleCaption2;
  sub_27C88();
  v14();
  v32 = UIFontTextStyleCaption2;
  *&v4[v15] = sub_27C68();
  v31 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_propositionLabel;
  v17 = [v11 ams_primaryText];
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleSubheadline;
  sub_27C88();
  v14();
  v18 = UIFontTextStyleSubheadline;
  *&v4[v31] = sub_27C68();
  v19 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_ratingLabel;
  v20 = [v11 ams_secondaryText];
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = v32;
  sub_27C88();
  v14();
  *&v4[v19] = sub_27C68();
  v21 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_subtitleLabel;
  v22 = [v11 ams_secondaryText];
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = v33;
  sub_27C88();
  v14();
  *&v4[v21] = sub_27C94();
  v23 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_titleLabel;
  v24 = [v11 ams_primaryText];
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleHeadline;
  sub_27C88();
  v14();
  v25 = UIFontTextStyleHeadline;
  *&v4[v23] = sub_139BA4();
  v26 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_artworkFetcher];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent____lazy_storage___artworkImageView] = 0;
  v27 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteSeparator;
  *&v5[v27] = [objc_allocWithZone(AMSUICommonView) init];
  v28 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_separator;
  *&v5[v28] = [objc_allocWithZone(AMSUICommonView) init];
  sub_25724(__src);
  memcpy(&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_metrics], __src, 0x150uLL);
  v34.receiver = v5;
  v34.super_class = type metadata accessor for AppRatingLockupComponent();
  v29 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  sub_264B0();

  return v29;
}

double sub_25724@<D0>(uint64_t a1@<X8>)
{
  if (qword_199E70 != -1)
  {
    swift_once();
  }

  *(a1 + 40) = &type metadata for CGFloat;
  *(a1 + 48) = &protocol witness table for CGFloat;
  *(a1 + 16) = 0x4030000000000000;
  *(a1 + 80) = &type metadata for CGFloat;
  *(a1 + 88) = &protocol witness table for CGFloat;
  *(a1 + 56) = 0x4030000000000000;
  *(a1 + 120) = &type metadata for CGFloat;
  *(a1 + 128) = &protocol witness table for CGFloat;
  *(a1 + 96) = 0x4030000000000000;
  *(a1 + 160) = &type metadata for CGFloat;
  *(a1 + 168) = &protocol witness table for CGFloat;
  *(a1 + 136) = 0x4030000000000000;
  *(a1 + 200) = &type metadata for CGFloat;
  *(a1 + 208) = &protocol witness table for CGFloat;
  *(a1 + 176) = 0x4030000000000000;
  *(a1 + 240) = &type metadata for CGFloat;
  *(a1 + 248) = &protocol witness table for CGFloat;
  *(a1 + 216) = 0x4030000000000000;
  *(a1 + 280) = &type metadata for CGFloat;
  *(a1 + 288) = &protocol witness table for CGFloat;
  *(a1 + 256) = 0x3FE0000000000000;
  *(a1 + 320) = &type metadata for CGFloat;
  *(a1 + 328) = &protocol witness table for CGFloat;
  *(a1 + 296) = 0x4028000000000000;
  result = *&xmmword_19B150;
  *a1 = xmmword_19B150;
  return result;
}

uint64_t sub_25804()
{
  v5 = v0;
  swift_getObjectType();
  v6 = sub_13A314();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppRatingLockupComponent();
  v33.receiver = v0;
  v33.super_class = v10;
  objc_msgSendSuper2(&v33, "layoutSubviews");
  sub_25724(v31);
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_metrics;
  swift_beginAccess();
  sub_27BA4(v31, &v0[v11]);
  swift_endAccess();
  sub_2600C();
  sub_2707C(&v0[v11], &v32);
  v12 = sub_25260();
  v31[3] = sub_139CF4();
  v31[4] = &protocol witness table for UIView;
  v31[0] = v12;
  v13 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteLabel];
  v14 = sub_139BB4();
  v31[8] = v14;
  v15 = sub_270D8();
  v31[9] = v15;
  v31[5] = v13;
  v16 = v13;
  sub_26344();
  v17 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_infoLabel];
  v18 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_propositionLabel];
  v31[18] = v14;
  v31[19] = v15;
  v31[15] = v17;
  v31[23] = v14;
  v31[24] = v15;
  v31[20] = v18;
  v19 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_ratingLabel];
  v31[28] = v14;
  v31[29] = v15;
  v31[25] = v19;
  v20 = v17;
  v21 = v18;
  v22 = v19;
  sub_26350();
  v23 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_subtitleLabel];
  v31[38] = v14;
  v31[39] = v15;
  v31[35] = v23;
  v24 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_titleLabel];
  v31[43] = v14;
  v31[44] = v15;
  v31[40] = v24;
  v25 = v23;
  v26 = v24;
  v27 = [v5 contentView];
  [v27 bounds];
  sub_1D3D0();

  sub_27C54();
  sub_1D4AC();
  sub_1D3D0();
  v28 = [v5 contentView];
  sub_27130(1, v28, v31, v1, v2, v3, v4);
  sub_13A2E4();

  (*(v7 + 8))(v9, v6);
  return sub_27B50(v31);
}

double sub_25B3C(double a1, double a2, float a3)
{
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_metrics;
  swift_beginAccess();
  sub_2707C(&v3[v6], &v46);
  v7 = sub_25260();
  v28[3] = sub_139CF4();
  v28[4] = &protocol witness table for UIView;
  v28[0] = v7;
  v8 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteLabel];
  v29 = sub_139BB4();
  v30 = sub_270D8();
  v28[5] = v8;
  v9 = v8;
  sub_26344();
  v10 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_infoLabel];
  v11 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_propositionLabel];
  v32 = v29;
  v33 = v30;
  v31 = v10;
  v35 = v29;
  v36 = v30;
  v34 = v11;
  v12 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_ratingLabel];
  v38 = v29;
  v39 = v30;
  v37 = v12;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  sub_26350();
  v16 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_subtitleLabel];
  v41 = v29;
  v42 = v30;
  v40 = v16;
  v17 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_titleLabel];
  v44 = v29;
  v45 = v30;
  v43 = v17;
  v18 = v16;
  v19 = v17;
  sub_27C54();
  sub_13BE64();
  v21 = v20;
  v23 = v22;
  v24 = [v3 contentView];
  sub_27130(0, v24, v28, 0.0, 0.0, v21, v23);

  sub_27C54();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v26 = a1;
  }

  else
  {
    v26 = v25;
  }

  sub_27B50(v28);
  return v26;
}

uint64_t sub_25DC0()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AppRatingLockupComponent();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v1 = sub_25260();
  (*(&stru_108.reloff + (swift_isaMask & *v1)))();

  sub_1D38C();
  (*(v2 + 392))();
  sub_1D38C();
  (*(v3 + 392))();
  sub_1D38C();
  (*(v4 + 392))();
  sub_1D38C();
  (*(v5 + 392))();
  sub_1D38C();
  (*(v6 + 392))();
  sub_1D38C();
  return (*(v7 + 392))();
}

void sub_2600C()
{
  v1 = v0;
  v2 = sub_25260();
  v3 = (*(&stru_68.reserved2 + (swift_isaMask & *v2)))();

  if ((v3 & 1) == 0 || ((v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent____lazy_storage___artworkImageView, [*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent____lazy_storage___artworkImageView) frame], v6 = v5, v8 = v7, v9 = *(v1 + v4), v10 = *(&stru_68.offset + (swift_isaMask & *v9)), v11 = v9, v12 = v10(), v14 = v13, v11, v6 == v12) ? (v15 = v8 == v14) : (v15 = 0), !v15))
  {
    v16 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_artworkFetcher);
    if (v16)
    {

      v16(v17);

      sub_C9FC(v16);
    }
  }
}

uint64_t sub_26154(uint64_t a1)
{
  v2 = v1;
  sub_1D450();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_1D450();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 2) = v4;
  *(v6 + 3) = v5;
  *(v6 + 4) = a1;
  v7 = (v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_artworkFetcher);
  v8 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_artworkFetcher);
  *v7 = sub_26FF8;
  v7[1] = v6;

  sub_C9FC(v8);
}

void sub_2624C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = sub_25260();

      (*&stru_108.segname[(swift_isaMask & *v8) + 16])(a3, v5);
    }

    else
    {
    }
  }
}

uint64_t sub_2635C()
{
  v1 = [v0 contentView];
  [v1 bounds];
  sub_1D3D0();

  sub_27C54();
  sub_1D4AC();
  CGRectGetWidth(v3);
  sub_1B964();
  return sub_13A374();
}

id sub_26410()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_separator);
  if (qword_199E68 != -1)
  {
    swift_once();
  }

  v2 = qword_19B148;
  [v1 setBackgroundColor:qword_19B148];
  v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteSeparator);

  return [v3 setBackgroundColor:v2];
}

void sub_264B0()
{
  v1 = [v0 contentView];
  if (qword_199E58 != -1)
  {
    swift_once();
  }

  [v1 setBackgroundColor:qword_19B138];

  v2 = sub_1D45C();
  if (qword_199E60 != -1)
  {
    swift_once();
  }

  sub_127EDC(*&qword_19B140);

  v3 = sub_1D45C();
  v4 = [v3 layer];

  if (qword_199E50 != -1)
  {
    swift_once();
  }

  [v4 setBorderColor:qword_19B130];

  v5 = sub_1D45C();
  v6 = [v5 layer];

  [v6 setBorderWidth:1.0];
  v7 = sub_1D45C();
  v8 = sub_25260();
  [v7 addSubview:v8];

  v9 = sub_1D45C();
  sub_1D474(v9, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_titleLabel);

  v10 = sub_1D45C();
  sub_1D474(v10, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_subtitleLabel);

  v11 = sub_1D45C();
  sub_1D474(v11, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_ratingLabel);

  v12 = sub_1D45C();
  sub_1D474(v12, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_infoLabel);

  v13 = sub_1D45C();
  sub_1D474(v13, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_separator);

  v14 = sub_1D45C();
  sub_1D474(v14, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_propositionLabel);

  v15 = sub_1D45C();
  sub_1D474(v15, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteSeparator);

  v16 = sub_1D45C();
  sub_1D474(v16, OBJC_IVAR____TtC20StoreDynamicUIPlugin24AppRatingLockupComponent_footnoteLabel);

  sub_26410();
  v17 = sub_1D45C();
  [v17 setIsAccessibilityElement:1];

  v18 = sub_1D45C();
  [v18 setAccessibilityTraits:UIAccessibilityTraitStaticText];
}

id sub_26838()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppRatingLockupComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_26970(void *a1)
{
  v2 = [a1 container];
  swift_getObjectType();
  sub_BBC90();
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = v4 + v4;
  [objc_msgSend(a1 "container")];
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = objc_opt_self();
  v9 = [v8 absoluteDimension:{fmin(v7 - v5, 360.0)}];
  v10 = [v8 estimatedDimension:500.0];
  v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

  return v11;
}

void sub_26AB0()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = [objc_opt_self() systemGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.25];
  }

  else
  {
    v6 = [objc_opt_self() ams_tertiaryText];
  }

  v7 = [v6 CGColor];

  qword_19B130 = v7;
}

void sub_26C38()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = [objc_opt_self() ams_quaternarySystemFillColor];
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [v6 secondarySystemBackgroundColor];
    v8 = [v7 colorWithAlphaComponent:0.5];

    v9 = [v6 tertiarySystemBackgroundColor];
    v10 = [v9 colorWithAlphaComponent:0.5];

    v5 = [v6 ams_dynamicColorWithLightColor:v8 darkColor:v10];
  }

  qword_19B138 = v5;
}

uint64_t sub_26E08()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 12.0;
  }

  qword_19B140 = *&v6;
  return result;
}

id sub_26F0C()
{
  result = [objc_opt_self() separatorColor];
  qword_19B148 = result;
  return result;
}

uint64_t sub_26F48()
{
  swift_weakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_26F7C()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_26FB0()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_27004()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 80.0;
  if (v1 == &dword_0 + 1)
  {
    v2 = 90.0;
  }

  *&xmmword_19B150 = v2;
  *(&xmmword_19B150 + 1) = v2;
}

unint64_t sub_270D8()
{
  result = qword_1A0720;
  if (!qword_1A0720)
  {
    sub_139BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0720);
  }

  return result;
}

CGFloat sub_27130(int a1, void *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v67 = a1;
  v13 = sub_13A314();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v65 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = COERCE_DOUBLE(sub_13C114());
  v66 = *(*&v64 - 8);
  __chkstk_darwin(*&v64);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_13A514();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a2 traitCollection];
  LOBYTE(a2) = sub_13BDE4();

  if (a2)
  {
    sub_28C0C();
    sub_13A464();
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v21, v18);
    if (v67)
    {
      sub_28C0C();
      v26 = v65;
      sub_13A474();
      v25(v21, v18);
      (*(v14 + 8))(v26, v13);
    }

    return v24;
  }

  else
  {
    v59 = v21;
    v60 = v19;
    v63 = v18;
    v58[0] = v14;
    v61 = v13;
    v27 = *(a3 + 400);
    v28 = *(a3 + 408);
    sub_162F0((a3 + 376), v27);
    sub_20038(v27, v28);
    sub_13A404();
    v30 = v29;
    v31 = *(v66 + 8);
    v32 = v64;
    v31(v17, *&v64);
    v33 = *(a3 + 680);
    v34 = *(a3 + 688);
    sub_162F0((a3 + 656), v33);
    sub_20038(v33, v34);
    sub_13A404();
    v66 = v35;
    v31(v17, *&v32);
    v36 = *(a3 + 520);
    v37 = *(a3 + 528);
    sub_162F0((a3 + 496), v36);
    sub_20038(v36, v37);
    sub_13A404();
    v62 = v38;
    v31(v17, *&v32);
    v39 = v67;
    if (v67)
    {
      sub_162F0(a3, *(a3 + 24));
      v68.origin.x = a4;
      v68.origin.y = a5;
      v68.size.width = a6;
      v68.size.height = a7;
      CGRectGetMinX(v68);
      v69.origin.x = a4;
      v69.origin.y = a5;
      v69.size.width = a6;
      v69.size.height = a7;
      CGRectGetMinY(v69);
      sub_13BE44();
      sub_13A354();
    }

    v40 = v63;
    v70.origin.x = a4;
    v70.origin.y = a5;
    v70.size.width = a6;
    v70.size.height = a7;
    v41 = CGRectGetWidth(v70) - *(a3 + 360) - v30;
    v71.origin.x = a4;
    v71.origin.y = a5;
    v71.size.width = a6;
    v71.size.height = a7;
    CGRectGetHeight(v71);
    v72.origin.x = a4;
    v72.origin.y = a5;
    v72.size.width = a6;
    v72.size.height = a7;
    MinX = CGRectGetMinX(v72);
    sub_162F0(a3, *(a3 + 24));
    sub_13A344();
    v64 = v30 + MinX + CGRectGetWidth(v73);
    sub_162F0((a3 + 320), *(a3 + 344));
    sub_13A384();
    v44 = v43;
    if (v39)
    {
      sub_162F0((a3 + 320), *(a3 + 344));
      v74.origin.x = a4;
      v74.origin.y = a5;
      v74.size.width = a6;
      v74.size.height = a7;
      CGRectGetMinY(v74);
      sub_13BE44();
      sub_13A354();
    }

    v75.origin.x = a4;
    v75.origin.y = a5;
    v75.size.width = a6;
    v75.size.height = a7;
    CGRectGetHeight(v75);
    v58[3] = v44;
    sub_162F0((a3 + 280), *(a3 + 304));
    sub_13A384();
    v46 = v45;
    if (v39)
    {
      sub_162F0((a3 + 280), *(a3 + 304));
      sub_162F0((a3 + 320), *(a3 + 344));
      sub_13A344();
      CGRectGetMaxY(v76);
      sub_13BE44();
      sub_13A354();
    }

    v58[2] = v46;
    sub_162F0((a3 + 200), *(a3 + 224));
    sub_13A384();
    v48 = v47;
    if (v39)
    {
      sub_162F0((a3 + 200), *(a3 + 224));
      sub_162F0((a3 + 280), *(a3 + 304));
      sub_13A344();
      CGRectGetMaxY(v77);
      sub_13BE44();
      sub_13A354();
    }

    sub_162F0((a3 + 200), *(a3 + 224));
    sub_13A344();
    Width = CGRectGetWidth(v78);
    v50 = v48;
    v51 = v41 - Width - v62;
    v58[1] = v50;
    sub_162F0((a3 + 120), *(a3 + 144));
    sub_13A384();
    if (v52 >= v51)
    {
      if (v39)
      {
        sub_162F0((a3 + 120), *(a3 + 144));
        sub_162F0((a3 + 200), *(a3 + 224));
        sub_13A344();
        CGRectGetMaxY(v81);
        sub_13BE44();
        sub_13A354();
      }

      v53 = v61;
    }

    else
    {
      if (v39)
      {
        sub_162F0((a3 + 120), *(a3 + 144));
        sub_162F0((a3 + 200), *(a3 + 224));
        sub_13A344();
        CGRectGetWidth(v79);
        sub_162F0((a3 + 200), *(a3 + 224));
        sub_13A344();
        CGRectGetMinY(v80);
        sub_13BE44();
        v40 = v63;
        sub_13A354();
      }

      v53 = v61;
    }

    v82.origin.x = a4;
    v82.origin.y = a5;
    v82.size.width = a6;
    v82.size.height = a7;
    CGRectGetMinX(v82);
    sub_162F0((a3 + 120), *(a3 + 144));
    sub_13A344();
    CGRectGetMaxY(v83);
    v84.origin.x = a4;
    v84.origin.y = a5;
    v84.size.width = a6;
    v84.size.height = a7;
    CGRectGetWidth(v84);
    sub_282BC();
    v54 = v59;
    sub_13A4D4();
    sub_13A464();
    v55 = *(v60 + 8);
    v55(v54, v40);
    if (v39)
    {
      sub_282BC();
      sub_13A4D4();
      v56 = v65;
      sub_13A474();
      v55(v54, v40);
      (*(v58[0] + 8))(v56, v53);
    }
  }

  return a6;
}

uint64_t sub_27C68()
{

  return sub_139BA4();
}

uint64_t sub_27C94()
{

  return sub_139BA4();
}

uint64_t AppRatingLockupComponentLayout.Metrics.init(artworkSize:artworkTrailing:footnoteSeparatorBottom:footnoteSeparatorTop:infoLeading:separatorBottom:separatorTop:separatorHeight:subtitleBottom:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  *a9 = a10;
  a9[1] = a11;
  sub_9414(a1, (a9 + 2));
  sub_9414(a2, (a9 + 7));
  sub_9414(a3, (a9 + 12));
  sub_9414(a4, (a9 + 17));
  sub_9414(a5, (a9 + 22));
  sub_9414(a6, (a9 + 27));
  sub_9414(a7, (a9 + 32));

  return sub_9414(a8, (a9 + 37));
}

uint64_t AppRatingLockupComponentLayout.init(metrics:artworkImageView:footnoteLabel:footnoteSeparatorView:infoLabel:propositionLabel:ratingLabel:separatorView:subtitleLabel:titleLabel:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, __int128 *a11)
{
  memcpy((a9 + 360), __src, 0x150uLL);
  sub_9414(a2, a9);
  sub_9414(a3, a9 + 40);
  sub_9414(a4, a9 + 80);
  sub_9414(a5, a9 + 120);
  sub_9414(a6, a9 + 160);
  sub_9414(a7, a9 + 200);
  sub_9414(a8, a9 + 240);
  sub_9414(a10, a9 + 280);

  return sub_9414(a11, a9 + 320);
}

uint64_t AppRatingLockupComponentLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getObjectType();
  sub_29580(1, a1, v5, a2, a3, a4, a5);

  return sub_13A2E4();
}

uint64_t AppRatingLockupComponentLayout.Metrics.artworkTrailing.setter(__int128 *a1)
{
  sub_3C04(v1 + 16);

  return sub_9414(a1, v1 + 16);
}

uint64_t AppRatingLockupComponentLayout.Metrics.footnoteSeparatorTop.setter(__int128 *a1)
{
  sub_3C04(v1 + 96);

  return sub_9414(a1, v1 + 96);
}

uint64_t AppRatingLockupComponentLayout.Metrics.infoLeading.setter(__int128 *a1)
{
  sub_3C04(v1 + 136);

  return sub_9414(a1, v1 + 136);
}

uint64_t AppRatingLockupComponentLayout.Metrics.separatorBottom.setter(__int128 *a1)
{
  sub_3C04(v1 + 176);

  return sub_9414(a1, v1 + 176);
}

uint64_t AppRatingLockupComponentLayout.Metrics.separatorTop.setter(__int128 *a1)
{
  sub_3C04(v1 + 216);

  return sub_9414(a1, v1 + 216);
}

uint64_t AppRatingLockupComponentLayout.Metrics.separatorHeight.setter(__int128 *a1)
{
  sub_3C04(v1 + 256);

  return sub_9414(a1, v1 + 256);
}

uint64_t AppRatingLockupComponentLayout.Metrics.subtitleBottom.setter(__int128 *a1)
{
  sub_3C04(v1 + 296);

  return sub_9414(a1, v1 + 296);
}

void *sub_282BC()
{
  v40 = sub_13A4C4();
  sub_9E94();
  v42 = v1;
  __chkstk_darwin(v2);
  sub_9EC0();
  v39 = v4 - v3;
  v5 = sub_13A4B4();
  sub_9E94();
  v44 = v6;
  __chkstk_darwin(v7);
  sub_9EC0();
  v41 = v9 - v8;
  v10 = sub_13A454();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_9EC0();
  v16 = v15 - v14;
  v50 = &_swiftEmptyArrayStorage;
  v45 = v15 - v14;
  if (sub_2A2A0(v0 + 20))
  {
    sub_4948(&qword_19AFE0);
    v17 = sub_13A4F4();
    sub_CCF4(v17);
    sub_2A278(&v51);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_13E650;
    sub_4B14((v0 + 67), v49);
    v34 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v36 = *(v12 + 104);
    v36(v16);
    v47 = &_swiftEmptyArrayStorage;
    sub_20068();
    sub_4948(&qword_19AFF0);
    sub_1D268();
    sub_2A340();
    v31 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v30 = *(v42 + 104);
    v30(v39);
    sub_13A4E4();
    v27 = *(v42 + 8);
    v27(v39, v40);
    v26 = *(v44 + 8);
    v26(v41, v5);
    v25 = *(v12 + 8);
    v25(v45, v10);
    sub_1D2CC(v49);
    sub_162F0(v0 + 20, v0[23]);
    sub_2A304();
    sub_9EF8();
    (*(v18 + 16))();
    v48 = &protocol witness table for Double;
    v19 = sub_2A2EC(&type metadata for Double);
    (v36)(v45, v34, v10, v19);
    sub_13BF64();
    (v30)(v39, v31, v40);
    sub_2A2D4();
    sub_13A4E4();
    v27(v39, v40);
    v16 = v45;
    v26(v41, v5);
    v25(v45, v10);
    sub_1D2CC(v46);
    sub_3C04(&v47);
    sub_3C04(v49);
    sub_BCBA0(v38);
  }

  if (sub_2A2A0(v0 + 5))
  {
    sub_4948(&qword_19AFE0);
    v20 = sub_13A4F4();
    sub_CCF4(v20);
    sub_2A278(&v52);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_13E650;
    sub_4B14((v0 + 52), v49);
    v35 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v37 = *(v12 + 104);
    v37(v16);
    v47 = &_swiftEmptyArrayStorage;
    sub_20068();
    sub_4948(&qword_19AFF0);
    sub_1D268();
    sub_2A340();
    v33 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v32 = *(v42 + 104);
    v32(v39);
    sub_13A4E4();
    (*(v42 + 8))(v39, v40);
    v29 = *(v44 + 8);
    v29(v41, v5);
    v28 = *(v12 + 8);
    v28(v16, v10);
    sub_1D2CC(v49);
    sub_162F0(v0 + 5, v0[8]);
    sub_2A304();
    sub_9EF8();
    (*(v21 + 16))();
    v48 = &protocol witness table for Double;
    v22 = sub_2A2EC(&type metadata for Double);
    (v37)(v45, v35, v10, v22);
    sub_13BF64();
    (v32)(v39, v33, v40);
    sub_2A328();
    sub_2A2D4();
    sub_13A4E4();
    sub_2A334();
    v23();
    v29(v41, v5);
    v28(v45, v10);
    sub_1D2CC(v46);
    sub_3C04(&v47);
    sub_3C04(v49);
    sub_BCBA0(v43);
  }

  return v50;
}

uint64_t sub_28C0C()
{
  v1 = v0;
  v64 = sub_13A4C4();
  sub_9E94();
  v69 = v2;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  v7 = sub_13A454();
  sub_9E94();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_9EC0();
  v13 = v12 - v11;
  v14 = sub_13A4B4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_9EC0();
  v68 = v17 - v16;
  sub_4948(&qword_19AFE8);
  v61 = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_140280;
  sub_13A494();
  v76[0] = v18;
  sub_20068();
  sub_4948(&qword_19AFF0);
  sub_1D268();
  v62 = v14;
  sub_13BF64();
  sub_4948(&qword_19AFE0);
  v19 = sub_13A4F4();
  sub_CCF4(v19);
  sub_2A278(&v78);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_13F4C0;
  v60 = v20;
  sub_162F0(v1, v1[3]);
  sub_13A374();
  v74 = &type metadata for Double;
  v75 = &protocol witness table for Double;
  v73[0] = 0;
  sub_4B14((v0 + 47), v70);
  v67 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v66 = *(v9 + 104);
  v21 = v13;
  v66(v13);
  v63 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v65 = *(v69 + 104);
  v22 = v6;
  v65(v6);
  sub_2A268();
  sub_13A4E4();
  v23 = *(v69 + 8);
  v23(v6, v64);
  v24 = *(v9 + 8);
  v25 = v21;
  v24(v21, v7);
  sub_1D2CC(v70);
  sub_3C04(v76);
  sub_3C04(v73);
  v26 = v0[43];
  v27 = v1[44];
  sub_162F0(v1 + 40, v1[43]);
  v77 = v26;
  sub_2A360(*(v27 + 8));
  sub_9EF8();
  (*(v28 + 16))();
  v75 = &protocol witness table for Double;
  v74 = &type metadata for Double;
  v72 = &protocol witness table for Double;
  v73[0] = 0;
  v71 = &type metadata for Double;
  v70[0] = 0;
  (v66)(v25, v67, v7);
  (v65)(v22, v63, v64);
  sub_2A334();
  sub_2A268();
  sub_13A4E4();
  v23(v22, v64);
  v24(v25, v7);
  sub_1D2CC(v70);
  sub_3C04(v73);
  sub_3C04(v76);
  v29 = v1[38];
  v30 = v1[39];
  v31 = sub_162F0(v1 + 35, v29);
  v77 = v29;
  v32 = sub_2A360(*(v30 + 8));
  (*(*(v29 - 8) + 16))(v32, v31, v29);
  v74 = &type metadata for Double;
  v75 = &protocol witness table for Double;
  v73[0] = 0;
  if (sub_2A2A0(v1 + 25))
  {
    sub_4B14((v1 + 82), v70);
  }

  else
  {
    v71 = &type metadata for Double;
    v72 = &protocol witness table for Double;
    v70[0] = 0;
  }

  sub_2A334();
  v33 = sub_2A234();
  v34(v33);
  sub_2A28C();
  v35();
  sub_2A268();
  sub_13A4E4();
  sub_2A328();
  v36();
  v37 = sub_2A250();
  v38(v37);
  sub_1D2CC(v70);
  sub_3C04(v73);
  sub_3C04(v76);
  v39 = v1[28];
  v40 = v1[29];
  v41 = sub_162F0(v1 + 25, v39);
  v77 = v39;
  v42 = sub_2A360(*(v40 + 8));
  (*(*(v39 - 8) + 16))(v42, v41, v39);
  v75 = &protocol witness table for Double;
  v74 = &type metadata for Double;
  v72 = &protocol witness table for Double;
  v73[0] = 0;
  v71 = &type metadata for Double;
  v70[0] = 0;
  v43 = sub_2A234();
  v44(v43);
  sub_2A28C();
  v45();
  sub_2A268();
  sub_13A4E4();
  sub_2A328();
  v46();
  v47 = sub_2A250();
  v48(v47);
  sub_1D2CC(v70);
  sub_3C04(v73);
  sub_3C04(v76);
  sub_2A334();
  v49 = v1[18];
  v50 = v1[19];
  sub_162F0(v1 + 15, v49);
  v77 = v49;
  sub_2A360(*(v50 + 8));
  sub_9EF8();
  (*(v51 + 16))();
  v74 = &type metadata for Double;
  v75 = &protocol witness table for Double;
  v73[0] = 0;
  v52 = sub_2A234();
  v53(v52);
  sub_2A28C();
  v54();
  sub_13A4E4();
  sub_2A328();
  v55();
  v56 = sub_2A250();
  v57(v56);
  sub_1D2CC(v73);
  sub_3C04(v76);
  v76[0] = v60;
  v58 = sub_282BC();
  sub_BCBA0(v58);
  sub_13A4D4();
  return (*(v61 + 8))(v68, v62);
}

CGFloat AppRatingLockupComponentLayout.measurements(fitting:in:)(void *a1, CGFloat a2, CGFloat a3)
{
  swift_getObjectType();

  return sub_29580(0, a1, v3, 0.0, 0.0, a2, a3);
}

CGFloat sub_29580(int a1, void *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v67 = a1;
  v13 = sub_13A314();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v65 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = COERCE_DOUBLE(sub_13C114());
  v66 = *(*&v64 - 8);
  __chkstk_darwin(*&v64);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_13A514();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a2 traitCollection];
  LOBYTE(a2) = sub_13BDE4();

  if (a2)
  {
    sub_28C0C();
    sub_13A464();
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v21, v18);
    if (v67)
    {
      sub_28C0C();
      v26 = v65;
      sub_13A474();
      v25(v21, v18);
      (*(v14 + 8))(v26, v13);
    }

    return v24;
  }

  else
  {
    v59 = v21;
    v60 = v19;
    v63 = v18;
    v58[0] = v14;
    v61 = v13;
    v27 = *(a3 + 400);
    v28 = *(a3 + 408);
    sub_162F0((a3 + 376), v27);
    sub_20038(v27, v28);
    sub_13A404();
    v30 = v29;
    v31 = *(v66 + 8);
    v32 = v64;
    v31(v17, *&v64);
    v33 = *(a3 + 680);
    v34 = *(a3 + 688);
    sub_162F0((a3 + 656), v33);
    sub_20038(v33, v34);
    sub_13A404();
    v66 = v35;
    v31(v17, *&v32);
    v36 = *(a3 + 520);
    v37 = *(a3 + 528);
    sub_162F0((a3 + 496), v36);
    sub_20038(v36, v37);
    sub_13A404();
    v62 = v38;
    v31(v17, *&v32);
    v39 = v67;
    if (v67)
    {
      sub_162F0(a3, *(a3 + 24));
      v68.origin.x = a4;
      v68.origin.y = a5;
      v68.size.width = a6;
      v68.size.height = a7;
      CGRectGetMinX(v68);
      v69.origin.x = a4;
      v69.origin.y = a5;
      v69.size.width = a6;
      v69.size.height = a7;
      CGRectGetMinY(v69);
      sub_13BE44();
      sub_13A354();
    }

    v40 = v63;
    v70.origin.x = a4;
    v70.origin.y = a5;
    v70.size.width = a6;
    v70.size.height = a7;
    v41 = CGRectGetWidth(v70) - *(a3 + 360) - v30;
    v71.origin.x = a4;
    v71.origin.y = a5;
    v71.size.width = a6;
    v71.size.height = a7;
    CGRectGetHeight(v71);
    v72.origin.x = a4;
    v72.origin.y = a5;
    v72.size.width = a6;
    v72.size.height = a7;
    MinX = CGRectGetMinX(v72);
    sub_162F0(a3, *(a3 + 24));
    sub_13A344();
    v64 = v30 + MinX + CGRectGetWidth(v73);
    sub_162F0((a3 + 320), *(a3 + 344));
    sub_13A384();
    v44 = v43;
    if (v39)
    {
      sub_162F0((a3 + 320), *(a3 + 344));
      v74.origin.x = a4;
      v74.origin.y = a5;
      v74.size.width = a6;
      v74.size.height = a7;
      CGRectGetMinY(v74);
      sub_13BE44();
      sub_13A354();
    }

    v75.origin.x = a4;
    v75.origin.y = a5;
    v75.size.width = a6;
    v75.size.height = a7;
    CGRectGetHeight(v75);
    v58[3] = v44;
    sub_162F0((a3 + 280), *(a3 + 304));
    sub_13A384();
    v46 = v45;
    if (v39)
    {
      sub_162F0((a3 + 280), *(a3 + 304));
      sub_162F0((a3 + 320), *(a3 + 344));
      sub_13A344();
      CGRectGetMaxY(v76);
      sub_13BE44();
      sub_13A354();
    }

    v58[2] = v46;
    sub_162F0((a3 + 200), *(a3 + 224));
    sub_13A384();
    v48 = v47;
    if (v39)
    {
      sub_162F0((a3 + 200), *(a3 + 224));
      sub_162F0((a3 + 280), *(a3 + 304));
      sub_13A344();
      CGRectGetMaxY(v77);
      sub_13BE44();
      sub_13A354();
    }

    sub_162F0((a3 + 200), *(a3 + 224));
    sub_13A344();
    Width = CGRectGetWidth(v78);
    v50 = v48;
    v51 = v41 - Width - v62;
    v58[1] = v50;
    sub_162F0((a3 + 120), *(a3 + 144));
    sub_13A384();
    if (v52 >= v51)
    {
      if (v39)
      {
        sub_162F0((a3 + 120), *(a3 + 144));
        sub_162F0((a3 + 200), *(a3 + 224));
        sub_13A344();
        CGRectGetMaxY(v81);
        sub_13BE44();
        sub_13A354();
      }

      v53 = v61;
    }

    else
    {
      if (v39)
      {
        sub_162F0((a3 + 120), *(a3 + 144));
        sub_162F0((a3 + 200), *(a3 + 224));
        sub_13A344();
        CGRectGetWidth(v79);
        sub_162F0((a3 + 200), *(a3 + 224));
        sub_13A344();
        CGRectGetMinY(v80);
        sub_13BE44();
        v40 = v63;
        sub_13A354();
      }

      v53 = v61;
    }

    v82.origin.x = a4;
    v82.origin.y = a5;
    v82.size.width = a6;
    v82.size.height = a7;
    CGRectGetMinX(v82);
    sub_162F0((a3 + 120), *(a3 + 144));
    sub_13A344();
    CGRectGetMaxY(v83);
    v84.origin.x = a4;
    v84.origin.y = a5;
    v84.size.width = a6;
    v84.size.height = a7;
    CGRectGetWidth(v84);
    sub_282BC();
    v54 = v59;
    sub_13A4D4();
    sub_13A464();
    v55 = *(v60 + 8);
    v55(v54, v40);
    if (v39)
    {
      sub_282BC();
      sub_13A4D4();
      v56 = v65;
      sub_13A474();
      v55(v54, v40);
      (*(v58[0] + 8))(v56, v53);
    }
  }

  return a6;
}

unint64_t sub_29FA4()
{
  result = qword_19B1E0;
  if (!qword_19B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B1E0);
  }

  return result;
}

uint64_t sub_2A000(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 696))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2A040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 696) = 1;
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

    *(result + 696) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2A14C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 336))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2A18C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2A2A0(void *a1)
{
  sub_162F0(a1, v1);

  return sub_13A324();
}

double sub_2A2EC@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 152) = a1;
  *(v1 - 176) = 0;
  *(v1 - 192) = 0;
  result = 0.0;
  *(v1 - 224) = 0u;
  *(v1 - 208) = 0u;
  return result;
}

uint64_t *sub_2A304()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = *(v1 + 8);

  return sub_CC08((v2 - 136));
}

uint64_t sub_2A340()
{

  return sub_13BF64();
}

uint64_t *sub_2A360@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  return sub_CC08((v1 - 128));
}

uint64_t sub_2A38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 36);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_2A434(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 36);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ArtworkHeader()
{
  result = qword_19B240;
  if (!qword_19B240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2A50C()
{
  sub_248A0(319, &qword_19AE30, &type metadata accessor for Artwork);
  if (v0 <= 0x3F)
  {
    sub_248F4(319, &qword_19B250, &unk_19B258);
    if (v1 <= 0x3F)
    {
      sub_248A0(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
      if (v2 <= 0x3F)
      {
        sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ArtworkHeader.Style(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2A6DCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_2A714(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_183FA8;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  return v4 != 0;
}

BOOL sub_2A75C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2A714(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_2A794()
{
  result = qword_19B2A0;
  if (!qword_19B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B2A0);
  }

  return result;
}

uint64_t sub_2A8A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v79 = a2;
  v4 = sub_4948(&qword_19A420);
  __chkstk_darwin(v4 - 8);
  v80 = v78 - v5;
  v93 = sub_13B584();
  sub_9E94();
  v87 = v6;
  v8 = __chkstk_darwin(v7);
  v10 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v12);
  v81 = v78 - v13;
  v14 = type metadata accessor for ArtworkHeader();
  sub_9F94();
  __chkstk_darwin(v15);
  v17 = (v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_139BD4();
  inited = swift_initStackObject();
  v88 = a1;
  sub_2B570();
  sub_9DD0(v18, v19, v20, v21, v22, v23, v24, v25);
  if (v2)
  {

    v26 = 0;
  }

  v84 = v26;
  *v17 = v26;
  sub_2B570();
  v33 = sub_2B110(v27, v28, v29, v30, v31, v32);
  v82 = v10;
  v83 = v33;
  v17[2] = v33;
  __chkstk_darwin(v33);
  v78[-2] = a1;
  sub_2B570();
  sub_9DD0(v34, v35, v36, v37, v38, v39, v40, v41);
  v86 = a1;
  v43 = v42;
  v17[1] = v42;
  sub_2B570();
  v44 = sub_BB310();
  v78[1] = v43;
  *&v90 = v44;
  *(&v90 + 1) = v45;
  sub_13BFB4();
  sub_13B594();
  v46 = sub_13B564();
  v78[0] = 0;
  if (v46)
  {
    goto LABEL_6;
  }

  v47 = v80;
  sub_7738();
  if (sub_52E0(v47, 1, v11) == 1)
  {
    sub_928C(v47, &qword_19A420);
LABEL_6:
    sub_13BAB4();
    sub_2B520();
    sub_2B414(v48, v49);
    sub_9F18();
    *v50 = 0xD000000000000011;
    v50[1] = 0x800000000014E730;
    v50[2] = v14;
    sub_2B538();
    (*(v51 + 104))();
    swift_willThrow();
    v52 = sub_2B554();
    v53(v52);

    v54 = sub_13B7A4();
    v55 = v81;
    sub_53A8(v81, 1, 1, v54);
    goto LABEL_8;
  }

  v56 = sub_2B554();
  v57(v56);
  v58 = v47;
  v55 = v81;
  sub_92E4(v58, v81);
LABEL_8:
  sub_92E4(v55, v17 + *(v14 + 36));
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_2B520();
    sub_2B414(v59, v60);
    sub_9F18();
    *v61 = 0x6575676573;
    v61[1] = 0xE500000000000000;
    v61[2] = v14;
    sub_2B538();
    (*(v62 + 104))();
    swift_willThrow();
    sub_2B57C();
    sub_2B544();
    v63();

    v92 = 0;
    v90 = 0u;
    v91 = 0u;
  }

  else
  {
    sub_139BC4();
    sub_2B57C();
    sub_2B544();
    v77();
    sub_9414(&v89, &v90);
  }

  v64 = v17 + *(v14 + 40);
  v65 = v91;
  *v64 = v90;
  *(v64 + 1) = v65;
  *(v64 + 4) = v92;
  sub_2B570();
  sub_6B10(v66, v67, v68, v69, v70, v71, v72, v73);
  sub_2B57C();
  sub_2B544();
  v74();
  sub_2B45C(v17, v79);
  sub_13B5A4();
  sub_9F94();
  (*(v75 + 8))(v86);
  return sub_2B4C0(v17);
}

uint64_t sub_2B110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[1] = a6;
  v23 = a3;
  v8 = sub_13B584();
  sub_9E94();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13B594();
  if ((sub_13B564() & 1) != 0 || (v14 = sub_2B2F4()) == 0)
  {
    v15 = sub_13BAB4();
    sub_2B520();
    sub_2B414(v16, v17);
    sub_9F18();
    *v18 = a1;
    v18[1] = a2;
    v18[2] = v23;
    sub_2B538();
    (*(v19 + 104))();
    swift_willThrow();
    v20 = *(v10 + 8);

    v20(v13, v8);
  }

  else
  {
    v15 = v14;
    (*(v10 + 8))(v13, v8);
  }

  return v15;
}

uint64_t sub_2B2F4()
{
  v0 = sub_4948(&qword_19B2B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_13B514();
  v3 = sub_13B694();
  if (sub_52E0(v2, 1, v3) == 1)
  {
    sub_928C(v2, &qword_19B2B0);
    return 0;
  }

  else
  {
    v4 = sub_13B684();
    sub_2B538();
    (*(v5 + 8))(v2, v3);
  }

  return v4;
}

uint64_t sub_2B414(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2B45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B4C0(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkHeader();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2B554()
{
  result = v0;
  *(v1 - 304) = *(*(v1 - 232) + 8);
  return result;
}

void sub_2B588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_4948(&qword_19B308);
  sub_13B5E4();

  swift_getKeyPath();
  sub_13B5E4();

  swift_getKeyPath();
  sub_13B5E4();

  sub_2C0F4(v8, v7, a3, v6);

  v5 = [v3 contentView];
  [v5 setNeedsLayout];
}

uint64_t sub_2B6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ArtworkHeaderComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_2B72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ArtworkHeaderComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_2B794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_2B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_2B864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_2B8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_2B9EC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2BA34(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkFetcher];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_objectGraph] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for ArtworkHeaderComponent();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

void sub_2BAE4()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView];
  if (v1)
  {
    v2 = v1;
    [v2 setAccessibilityElementsHidden:1];
    v3 = [v0 contentView];
    [v3 addSubview:v2];
  }

  v4 = [v0 contentView];
  [v4 setNeedsLayout];
}

void sub_2BBA4(void *a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView;
  v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView;
    v5 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_2BAE4();
}

void sub_2BC28()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ArtworkHeaderComponent();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView];
  if (v1)
  {
    v2 = *(&stru_108.reloff + (swift_isaMask & *v1));
    v3 = v1;
    v2();
  }
}

void sub_2BD0C()
{
  v3 = v0;
  swift_getObjectType();
  v4 = type metadata accessor for ArtworkHeaderComponent();
  v39.receiver = v0;
  v39.super_class = v4;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v5 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView];
  if (v5 && *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_objectGraph])
  {
    sub_139E64();
    sub_13B6B4();

    v6 = v5;
    v7 = sub_13B9A4();
    v8 = (*(*v38[0] + 88))(v7);
    if (v8 && (v9 = v8, v10 = [v8 topViewController], v9, v10))
    {
      sub_B140(v10);
      sub_2D744();
      v11 = [v3 contentView];
      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v40.origin.x = v13;
      v40.origin.y = v15;
      v40.size.width = v17;
      v40.size.height = v19;
      MinX = CGRectGetMinX(v40);
      v21 = [v3 contentView];
      [v21 frame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v41.origin.x = v23;
      v41.origin.y = v25;
      v41.size.width = v27;
      v41.size.height = v29;
      [v6 setFrame:{MinX, CGRectGetMinY(v41), v1, v2}];
      v30 = sub_2D724();
      sub_2CD94(v31, v30, v32);
    }

    else
    {
      if (qword_19A018 != -1)
      {
        sub_CCD4();
      }

      v33 = sub_139A14();
      sub_4910(v33, qword_1B2B00);
      sub_4948(&unk_19E010);
      v34 = sub_1399C4();
      sub_CCF4(v34);
      *(swift_allocObject() + 16) = xmmword_13E650;
      v38[3] = v4;
      v38[0] = v3;
      v35 = v3;
      v36 = AMSLogKey();
      if (v36)
      {
        v37 = v36;
        sub_13BB84();
      }

      sub_139994();

      sub_3C04(v38);
      sub_139974();
      sub_1399F4();
    }
  }
}

uint64_t sub_2C0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_objectGraph] = a3;

  sub_139E64();
  sub_13B6B4();
  v10 = sub_13B9A4();
  v11 = (*(*v35[0] + 88))(v10);
  if (v11 && (v12 = v11, v13 = [v11 topViewController], v12, v13))
  {
    v34 = a2;
    sub_B140(v13);
    sub_2D744();
    v14 = objc_allocWithZone(sub_139CF4());
    sub_2D724();
    v15 = sub_139CE4();
    sub_4948(&unk_1A16C0);
    sub_13B9A4();
    sub_13BA84();
    swift_unknownObjectRetain();
    sub_13BA64();
    v16 = v15;
    sub_2BBA4(v15);
    if (a1 && v34)
    {
      v33 = a4;
      sub_1D450();
      v17 = swift_allocObject();
      swift_weakInit();
      sub_1D450();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      *(v19 + 2) = v17;
      *(v19 + 3) = v18;
      *(v19 + 4) = a1;
      *(v19 + 5) = v34;
      v20 = &v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkFetcher];
      v32 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkFetcher];
      *v20 = sub_2D710;
      v20[1] = v19;
      swift_retain_n();
      swift_retain_n();

      sub_C9FC(v32);

      v21 = *v20;
      if (*v20)
      {

        (v21)(v22);

        sub_C9FC(v21);
      }

      else
      {
      }

      a4 = v33;
    }

    if (a4)
    {
      v29 = sub_2D724();
      sub_2CA18(v30, v29, v31);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_19A018 != -1)
    {
      sub_CCD4();
    }

    v23 = sub_139A14();
    sub_4910(v23, qword_1B2B00);
    sub_4948(&unk_19E010);
    v24 = sub_1399C4();
    sub_CCF4(v24);
    *(swift_allocObject() + 16) = xmmword_13E650;
    v35[3] = type metadata accessor for ArtworkHeaderComponent();
    v35[0] = v5;
    v25 = v5;
    v26 = AMSLogKey();
    if (v26)
    {
      v27 = v26;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v35);
    sub_139974();
    sub_1399F4();
  }
}

void sub_2C57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = *(v8 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView);
      v11 = v10;

      if (v10)
      {
        if (qword_19A018 != -1)
        {
          swift_once();
        }

        v12 = sub_139A14();
        sub_4910(v12, qword_1B2B00);
        sub_4948(&unk_19E010);
        sub_1399C4();
        *(swift_allocObject() + 16) = xmmword_13E660;
        swift_beginAccess();
        v13 = swift_unknownObjectWeakLoadStrong();
        v21 = sub_4948(&qword_19B358);
        v20[0] = v13;
        v14 = AMSLogKey();
        if (v14)
        {
          v15 = v14;
          sub_13BB84();
        }

        sub_139994();

        sub_3C04(v20);
        sub_139974();
        v21 = sub_139F94();
        v20[0] = a3;

        sub_139984();
        sub_49C8(v20);
        sub_1399F4();

        (*(&stru_108.size + (swift_isaMask & *v11)))(a3, a4, v7);

        return;
      }
    }
  }

  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v16 = sub_139A14();
  sub_4910(v16, qword_1B2B00);
  sub_4948(&unk_19E010);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  v21 = sub_4948(&qword_19B358);
  v20[0] = v17;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v20);
  sub_139974();
  sub_1399E4();
}

uint64_t sub_2CA18(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_4948(&unk_19E970);
  sub_9E94();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v26[-1] - v12;
  sub_139DA4();
  sub_13B6B4();
  sub_13B9A4();
  v14 = v26[0];
  v15 = (*(*v26[0] + 248))(a1, 0.0, 0.0, a2, a3);
  if (v15)
  {
    v16 = v15;
    sub_2CEAC(v15);
    v25 = *(v14 + 16);
    sub_1D450();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D450();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D450();
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v19;
    v20[4] = v17;
    sub_4948(&qword_19B350);
    sub_2D65C();
    sub_13B614();
    sub_13B624();

    sub_3C04(v26);
    (*(v10 + 8))(v13, v8);
    v21 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkImageView);
    if (v21)
    {
      v22 = v21;
      v23 = v16;
      [v22 addSubview:v23];
    }
  }
}

void sub_2CCCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v3 = v2;
        sub_2CEAC(v1);
      }
    }

    else
    {
    }
  }
}

void sub_2CD94(void *a1, double a2, double a3)
{
  if (((*(&stru_68.reserved2 + (swift_isaMask & *a1)))() & 1) == 0 || (sub_2D730(), (*(v6 + 152))() != a2))
  {
    sub_2D730();
    (*(v7 + 160))(a2, a3);
    v8 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_artworkFetcher);
    if (v8)
    {

      v8(v9);

      sub_C9FC(v8);
    }
  }
}

uint64_t sub_2CEAC(void *a1)
{
  v24 = sub_13B7A4();
  sub_9E94();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 respondsToSelector:"impressionItems"];
  if (result)
  {
    v8 = [a1 impressionItems];
    sub_139E24();
    v9 = sub_13BC24();

    sub_13BA54();
    v10 = v9;
    result = sub_127E54(v9);
    if (result)
    {
      v11 = result;
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v23[1] = a1;
        v12 = 0;
        v13 = v9 & 0xC000000000000001;
        v14 = (v3 + 8);
        v15 = v10;
        do
        {
          if (v13)
          {
            v16 = sub_13C004();
          }

          else
          {
            v16 = *(v10 + 8 * v12 + 32);
          }

          v17 = v16;
          ++v12;
          v18 = (*&stru_68.segname[(swift_isaMask & *v16) + 8])();
          sub_92E64();

          (*&stru_68.sectname[swift_isaMask & *v17])();
          sub_2D744();
          v19 = [v25 contentView];
          v20 = sub_2D724();
          [v21 v22];
          sub_2D744();

          sub_2D724();
          sub_13BA34();

          (*v14)(v6, v24);
          v10 = v15;
        }

        while (v11 != v12);
      }
    }

    else
    {
    }
  }

  return result;
}

double sub_2D180(double a1, double a2, float a3)
{
  v4 = v3;
  swift_getObjectType();
  if (*&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ArtworkHeaderComponent_objectGraph])
  {
    sub_139E64();
    sub_13B6B4();

    v7 = sub_13B9A4();
    v8 = (*(*v18[0] + 88))(v7);

    if (v8)
    {
      v9 = [v8 topViewController];

      if (v9)
      {
        sub_B140(v9);
        v11 = v10;

        if (a3 != 1000.0)
        {
          return v11;
        }

        return a1;
      }
    }
  }

  if (qword_19A018 != -1)
  {
    sub_CCD4();
  }

  v12 = sub_139A14();
  sub_4910(v12, qword_1B2B00);
  sub_4948(&unk_19E010);
  v13 = sub_1399C4();
  sub_CCF4(v13);
  *(swift_allocObject() + 16) = xmmword_13E650;
  v18[3] = type metadata accessor for ArtworkHeaderComponent();
  v18[0] = v4;
  v14 = v4;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v18);
  sub_139974();
  sub_1399E4();

  return a1;
}

id sub_2D4E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkHeaderComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2D5A0()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_2D5D4()
{
  swift_weakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_2D608()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_2D65C()
{
  result = qword_19E980;
  if (!qword_19E980)
  {
    sub_558C(&qword_19B350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E980);
  }

  return result;
}

uint64_t sub_2D6C0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t AXServiceSubscribePageLayout.init(metrics:contentView:detailsView:primaryButton:secondaryButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  memcpy(a6, __src, 0x168uLL);
  v11 = *(a2 + 16);
  *(a6 + 360) = *a2;
  *(a6 + 376) = v11;
  *(a6 + 392) = *(a2 + 32);
  sub_9414(a3, a6 + 400);
  sub_9414(a4, a6 + 440);

  return sub_9414(a5, a6 + 480);
}

uint64_t ServiceProductBadgedPageLayout.Metrics.contentHeight.setter(__int128 *a1)
{
  sub_3C04(v1 + 40);

  return sub_9414(a1, v1 + 40);
}

uint64_t ServiceOptionComponentLayout.Metrics.selectionStatusDimension.setter(__int128 *a1)
{
  sub_3C04(v1 + 80);

  return sub_9414(a1, v1 + 80);
}

uint64_t ServiceOptionComponentLayout.Metrics.selectionStatusTopSpace.setter(__int128 *a1)
{
  sub_3C04(v1 + 120);

  return sub_9414(a1, v1 + 120);
}

uint64_t ServiceOptionComponentLayout.Metrics.disclaimerTopSpace.setter(__int128 *a1)
{
  sub_3C04(v1 + 160);

  return sub_9414(a1, v1 + 160);
}

uint64_t ServiceOptionComponentLayout.Metrics.detailTopSpace.setter(__int128 *a1)
{
  sub_3C04(v1 + 200);

  return sub_9414(a1, v1 + 200);
}

void AXServiceSubscribePageLayout.Metrics.primaryButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = a3;
  v4[33] = a4;
}

uint64_t ServiceOptionComponentLayout.Metrics.gridTopSpace.setter(__int128 *a1)
{
  sub_3C04(v1 + 280);

  return sub_9414(a1, v1 + 280);
}

uint64_t AXServiceSubscribePageLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  sub_3C04(v1 + 320);

  return sub_9414(a1, v1 + 320);
}

uint64_t sub_2DAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&unk_1A0730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double AXServiceSubscribePageLayout.contentViewSize(fitting:in:)()
{
  swift_getObjectType();
  v0 = sub_2171C();

  return sub_2F34C(v0, v1, v2, v3);
}

uint64_t AXServiceSubscribePageLayout.placeChildren(relativeTo:in:)(uint64_t a1)
{
  v6 = v1;
  sub_3007C();
  v77 = v8;
  v78 = sub_13A314();
  sub_9E94();
  v76 = v9;
  __chkstk_darwin(v10);
  v75 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_13C114();
  sub_9E94();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 104);
  v19 = *(v6 + 112);
  sub_162F0((v6 + 80), v18);
  sub_20038(v18, v19);
  sub_3006C();
  sub_13A404();
  v21 = v20;
  v22 = *(v14 + 8);
  v22(v17, v12);
  sub_162F0(v6, *(v6 + 24));
  sub_30090();
  sub_3006C();
  sub_13A404();
  v24 = v23;
  v22(v17, v12);
  sub_162F0((v6 + 40), *(v6 + 64));
  sub_30090();
  sub_3006C();
  sub_13A404();
  v26 = v25;
  v22(v17, v12);
  swift_getObjectType();
  v27 = sub_2F500(a1, v6, v3, v2);
  sub_2DAFC(v6 + 360, &v84);
  v79 = v4;
  v72 = v2;
  if (v86)
  {
    if (v24 > v27)
    {
      v28 = v24;
    }

    else
    {
      v28 = v27;
    }

    if (v28 >= v26)
    {
      v29 = v26;
    }

    else
    {
      v29 = v28;
    }

    sub_9414(&v84, v80);
    v92.origin.x = sub_3001C();
    v30 = v21 + CGRectGetMinY(v92);
    v93.origin.x = sub_3001C();
    MinX = CGRectGetMinX(v93);
    v94.origin.x = sub_3001C();
    Width = CGRectGetWidth(v94);
    sub_162F0(v80, v80[3]);
    sub_3001C();
    v70 = Width;
    v71 = MinX;
    v33 = v5;
    v34 = v30;
    v35 = v29;
    sub_13BE44();
    sub_13A354();
    sub_3C04(v80);
  }

  else
  {
    sub_CC68(&v84, &unk_1A0730);
    v70 = 0.0;
    v71 = v5;
    v33 = v5;
    v34 = v4;
    v35 = 0.0;
  }

  v36 = sub_2F710(a1, v6);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = *(v6 + 272);
  v44 = *(v6 + 240);
  v73 = *(v6 + 256);
  *v74 = v44;
  sub_4B14(v6 + 280, &v90);
  sub_4B14(v6 + 320, &v91);
  *&v84 = v36;
  *(&v84 + 1) = v38;
  v85 = v40;
  v86 = v42;
  v87 = *v74;
  v88 = v73;
  v89 = v43;
  sub_2F8F0(&v84, v80);
  sub_4B14(v6 + 400, &v81);
  sub_4B14(v6 + 440, &v82);
  sub_4B14(v6 + 480, &v83);
  v95.origin.x = v33;
  v45 = v79;
  v95.origin.y = v79;
  v95.size.width = v3;
  v46 = v72;
  v95.size.height = v72;
  v69 = CGRectGetMinX(v95);
  v48 = v70;
  v47 = v71;
  v96.origin.x = v71;
  v96.origin.y = v34;
  v96.size.width = v70;
  v96.size.height = v35;
  MaxY = CGRectGetMaxY(v96);
  v97.origin.x = v33;
  v97.origin.y = v45;
  v97.size.width = v3;
  v97.size.height = v46;
  v67 = CGRectGetWidth(v97);
  v74[0] = v33;
  v98.origin.x = v33;
  v49 = v69;
  v98.origin.y = v45;
  *&v73 = v3;
  v98.size.width = v3;
  v98.size.height = v46;
  v50 = CGRectGetMaxY(v98);
  v99.origin.x = v47;
  v99.origin.y = v34;
  v52 = v67;
  v51 = MaxY;
  v99.size.width = v48;
  v99.size.height = v35;
  v53 = v50 - CGRectGetMaxY(v99);
  sub_2F928(v52, a1, v80);
  v55 = v54;
  v100.origin.x = v49;
  v100.origin.y = v51;
  v100.size.width = v52;
  v100.size.height = v53;
  if (v55 <= CGRectGetHeight(v100))
  {
    sub_30044();
    sub_2E218(v62, v63, v64, v65);
  }

  else
  {
    v56 = sub_30044();
    sub_2E704(v56, v57, v58, v59, v60, v61);
  }

  sub_13A304();
  sub_13A2D4();
  v101.origin.x = v74[0];
  v101.origin.y = v79;
  *&v101.size.width = v73;
  v101.size.height = v46;
  CGRectGetHeight(v101);
  v102.origin.x = sub_30030();
  CGRectGetMinX(v102);
  v103.origin.x = sub_30030();
  CGRectGetMinY(v103);
  v104.origin.x = sub_30030();
  CGRectGetWidth(v104);
  sub_13A2B4();
  (*(v76 + 8))(&v84, v78);
  sub_2FC0C(v80);
  return sub_2FC3C(&v84);
}

uint64_t sub_2E160(uint64_t a1)
{
  sub_3007C();
  swift_getObjectType();
  v2 = sub_2171C();
  sub_2F928(v4, v2, v3);
  v6 = v5;
  v18.origin.x = sub_3001C();
  if (v6 <= CGRectGetHeight(v18))
  {
    v13 = sub_3001C();

    return sub_2E218(v13, v14, v15, v16);
  }

  else
  {
    v8 = sub_3001C();

    return sub_2E704(a1, v7, v8, v9, v10, v11);
  }
}

uint64_t sub_2E218(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_13C114();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 8);
  v15 = *(v4 + 24);
  v16 = *(v4 + 96);
  v17 = v5[13];
  sub_162F0(v5 + 9, v16);
  sub_20038(v16, v17);
  sub_13A404();
  v24[0] = v18;
  v19 = *(v11 + 8);
  v19(v13, v10);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  v20 = CGRectGetWidth(v25) - v14 - v15;
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetHeight(v26);
  sub_162F0(v5 + 19, v5[22]);
  *&v24[1] = v20;
  sub_13A394();
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  CGRectGetMidX(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  CGRectGetMinY(v28);
  sub_162F0(v5 + 19, v5[22]);
  sub_13BE44();
  sub_13A354();
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  CGRectGetMaxY(v29);
  v21 = v5[17];
  v22 = v5[18];
  sub_162F0(v5 + 14, v21);
  sub_20038(v21, v22);
  sub_13A404();
  v19(v13, v10);
  sub_162F0(v5 + 29, v5[32]);
  LOBYTE(v22) = sub_13A364();
  sub_162F0(v5 + 29, v5[32]);
  if ((v22 & 1) == 0)
  {
    sub_13A394();
    v30.origin.x = a1;
    v30.origin.y = a2;
    v30.size.width = a3;
    v30.size.height = a4;
    CGRectGetMidX(v30);
    sub_162F0(v5 + 29, v5[32]);
    sub_13BE44();
  }

  sub_13A354();
  sub_162F0(v5 + 24, v5[27]);
  if (sub_13A364())
  {
    sub_162F0(v5 + 24, v5[27]);
  }

  else
  {
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    CGRectGetWidth(v31);
    sub_162F0(v5 + 24, v5[27]);
    sub_13A394();
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    CGRectGetMidX(v32);
    sub_162F0(v5 + 24, v5[27]);
    sub_13BE44();
  }

  sub_13A354();
  return sub_13A2B4();
}

uint64_t sub_2E704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v90 = a1;
  v73 = a2;
  v93 = sub_13A4B4();
  v97 = *(v93 - 8);
  v12 = v97;
  __chkstk_darwin(v93);
  v75 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_13A4C4();
  v98 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_13A454();
  v96 = *(v91 - 8);
  v15 = v96;
  __chkstk_darwin(v91);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_13A4F4();
  v95 = *(v92 - 8);
  __chkstk_darwin(v92);
  v66 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_13A514();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v94 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v6;
  v69 = *(v6 + 8);
  v21 = v69;
  v23 = *(v6 + 16);
  v22 = *(v6 + 24);
  v107.origin.x = a3;
  v107.origin.y = a4;
  v107.size.width = a5;
  v107.size.height = a6;
  v70 = CGRectGetWidth(v107) - v21 - v22;
  v108.origin.x = a3;
  v108.origin.y = a4;
  v108.size.width = a5;
  v108.size.height = a6;
  CGRectGetWidth(v108);
  sub_162F0((v6 + 192), *(v6 + 216));
  sub_13A394();
  sub_13A4D4();
  v105 = &type metadata for CGFloat;
  v106 = &protocol witness table for CGFloat;
  v104 = v20;
  v102 = &type metadata for CGFloat;
  v103 = &protocol witness table for CGFloat;
  v101 = v23;
  v87 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v24 = *(v15 + 104);
  v88 = v15 + 104;
  v89 = v24;
  v25 = v17;
  v24(v17);
  v84 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v26 = *(v98 + 104);
  v85 = v98 + 104;
  v86 = v26;
  v27 = v67;
  v28 = v68;
  v26(v67);
  v83 = sub_4948(&qword_19AFE8);
  v74 = *(v12 + 72);
  v29 = v97;
  v82 = *(v97 + 80);
  v30 = (v82 + 32) & ~v82;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_140280;
  sub_13A484();
  v100 = v31;
  v80 = sub_20068();
  v79 = sub_4948(&qword_19AFF0);
  v81 = sub_1D268();
  v32 = v75;
  v33 = v93;
  sub_13BF64();
  v34 = v66;
  v35 = v25;
  sub_13A4E4();
  v36 = *(v29 + 8);
  v97 = v29 + 8;
  v78 = v36;
  v36(v32, v33);
  v37 = *(v98 + 8);
  v98 += 8;
  v77 = v37;
  v38 = v27;
  v39 = v27;
  v40 = v28;
  v37(v38, v28);
  v41 = *(v96 + 8);
  v96 += 8;
  v76 = v41;
  v42 = v91;
  v41(v25, v91);
  sub_CC68(&v101, &qword_19AFF8);
  sub_3C04(&v104);
  v43 = v34;
  sub_13A504();
  v65 = *(v95 + 8);
  v95 += 8;
  v65(v34, v92);
  sub_162F0((v7 + 192), *(v7 + 216));
  sub_13A374();
  v64 = sub_13A424();
  v102 = v64;
  v103 = &protocol witness table for ZeroDimension;
  sub_CC08(&v101);
  sub_13A414();
  sub_4B14(v7 + 72, &v100);
  v89(v25, v87, v42);
  v44 = v39;
  v45 = v40;
  v86(v39, v84, v40);
  v63 = 3 * v74;
  v61[1] = v30;
  v46 = swift_allocObject();
  v62 = xmmword_13E660;
  *(v46 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A484();
  sub_13A494();
  v99 = v46;
  v47 = v75;
  v48 = v93;
  sub_13BF64();
  v49 = v43;
  sub_13A4E4();
  v78(v47, v48);
  v50 = v44;
  v51 = v45;
  v77(v44, v45);
  v52 = v35;
  v53 = v91;
  v76(v35, v91);
  sub_CC68(&v100, &qword_19AFF8);
  sub_3C04(&v104);
  sub_3C04(&v101);
  v54 = v49;
  sub_13A504();
  v55 = v65;
  v65(v49, v92);
  v105 = v64;
  v106 = &protocol witness table for ZeroDimension;
  sub_CC08(&v104);
  sub_13A414();
  sub_4B14(v7 + 112, &v101);
  v89(v52, v87, v53);
  v56 = v51;
  v86(v50, v84, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = v62;
  sub_13A4A4();
  sub_13A484();
  sub_13A494();
  v100 = v57;
  v58 = v93;
  sub_13BF64();
  sub_13A4E4();
  v78(v47, v58);
  v77(v50, v56);
  v76(v52, v91);
  sub_CC68(&v101, &qword_19AFF8);
  sub_3C04(&v104);
  v59 = v94;
  sub_13A504();
  v55(v54, v92);
  v109.origin.x = a3;
  v109.origin.y = a4;
  v109.size.width = a5;
  v109.size.height = a6;
  CGRectGetMinX(v109);
  v110.origin.x = a3;
  v110.origin.y = a4;
  v110.size.width = a5;
  v110.size.height = a6;
  CGRectGetMinY(v110);
  v111.origin.x = a3;
  v111.origin.y = a4;
  v111.size.width = a5;
  v111.size.height = a6;
  CGRectGetHeight(v111);
  sub_13A474();
  return (*(v71 + 8))(v59, v72);
}

double sub_2F2E4()
{
  swift_getObjectType();
  v0 = sub_2171C();

  return sub_2F928(v2, v0, v1);
}

double sub_2F34C(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = sub_13C114();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v13 = a2[4];
  sub_162F0(a2, v12);
  sub_20038(v12, v13);
  sub_13A404();
  v14 = *(v9 + 8);
  v14(v11, v8);
  sub_2F500(a1, a2, a3, a4);
  v15 = a2[8];
  v16 = a2[9];
  sub_162F0(a2 + 5, v15);
  sub_20038(v15, v16);
  sub_13A404();
  v14(v11, v8);
  return a3;
}

double sub_2F500(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_13C114();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2F710(a1, a2);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(a2 + 272);
  v20 = *(a2 + 240);
  v29 = *(a2 + 256);
  v30 = v20;
  sub_4B14(a2 + 280, &v39);
  sub_4B14(a2 + 320, &v40);
  *v35 = v12;
  v35[1] = v14;
  v35[2] = v16;
  v35[3] = v18;
  v37 = v29;
  v36 = v30;
  v38 = v19;
  sub_2F8F0(v35, v31);
  sub_4B14(a2 + 400, &v32);
  sub_4B14(a2 + 440, &v33);
  sub_4B14(a2 + 480, &v34);
  v21 = *(a2 + 104);
  v22 = *(a2 + 112);
  sub_162F0((a2 + 80), v21);
  sub_20038(v21, v22);
  sub_13A404();
  v24 = v23;
  (*(v9 + 8))(v11, v8);
  v25 = a4 - v24;
  sub_2F928(a3, a1, v31);
  v27 = v26;
  sub_2FC0C(v31);
  sub_2FC3C(v35);
  return v25 - v27;
}

double sub_2F710(uint64_t a1, void *a2)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[23];
  v8 = a2[24];
  sub_162F0(a2 + 20, v7);
  sub_20038(v7, v8);
  sub_13A404();
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = a2[18];
  v11 = a2[19];
  sub_162F0(a2 + 15, v10);
  sub_20038(v10, v11);
  sub_13A404();
  v13 = v12;
  v9(v6, v3);
  v14 = a2[28];
  v15 = a2[29];
  sub_162F0(a2 + 25, v14);
  sub_20038(v14, v15);
  sub_13A404();
  v9(v6, v3);
  return v13;
}

double sub_2F928(double a1, uint64_t a2, void *a3)
{
  v5 = sub_13C114();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(a3 + 19, a3[22]);
  sub_13A394();
  v9 = a3[17];
  v10 = a3[18];
  sub_162F0(a3 + 14, v9);
  sub_20038(v9, v10);
  sub_13A404();
  v11 = *(v6 + 8);
  v11(v8, v5);
  sub_162F0(a3 + 24, a3[27]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a3 + 24, a3[27]);
    sub_13A394();
  }

  sub_162F0(a3 + 29, a3[32]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a3 + 29, a3[32]);
    sub_13A394();
  }

  sub_162F0(a3 + 24, a3[27]);
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(a3 + 29, a3[32]);
    if ((sub_13A364() & 1) == 0)
    {
      v12 = a3[12];
      v13 = a3[13];
      sub_162F0(a3 + 9, v12);
      sub_20038(v12, v13);
      sub_13A404();
      v11(v8, v5);
    }
  }

  return a1;
}

uint64_t sub_2FC6C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2FC8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 520))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2FCCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2FDA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 360))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2FDE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2FE94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 272))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2FED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 272) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2FF6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2FFAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_30090()
{

  return sub_20038(v0, v1);
}

uint64_t type metadata accessor for Badge()
{
  result = qword_19B3C0;
  if (!qword_19B3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_30150(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v6 = sub_4948(&qword_19A420);
  __chkstk_darwin(v6 - 8);
  v8 = &v58 - v7;
  v75 = sub_13B584();
  v67 = *(v75 - 8);
  __chkstk_darwin(v75);
  v65 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v58 - v11;
  __chkstk_darwin(v12);
  v13 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for Badge();
  sub_9F94();
  __chkstk_darwin(v18);
  v20 = (&v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = a2;
  v69 = a2;
  sub_9DB8(0x756F72676B636162, 0xEF726F6C6F43646ELL, v17, sub_30AC0, v68, v21, v22, v23);
  if (v3)
  {

    v25 = [objc_opt_self() ams_clear];
  }

  else
  {
    v25 = v24;
  }

  *v20 = v25;
  v26 = sub_BB310();
  v60 = 0;
  v59 = v25;
  *&v72 = v26;
  *(&v72 + 1) = v27;
  sub_13BFB4();
  v61 = a1;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_7;
  }

  sub_7738();
  if (sub_52E0(v8, 1, v13) == 1)
  {
    sub_928C(v8, &qword_19A420);
LABEL_7:
    v28 = sub_13BAB4();
    sub_30E18();
    sub_30AC8(v29, v30);
    sub_9F18();
    *v31 = 0xD000000000000011;
    v31[1] = 0x800000000014E730;
    v31[2] = v17;
    (*(*(v28 - 8) + 104))(v31, enum case for JSONError.missingProperty(_:), v28);
    swift_willThrow();
    v32 = sub_30E4C();
    v33(v32);

    v34 = sub_13B7A4();
    sub_53A8(v16, 1, 1, v34);
    goto LABEL_9;
  }

  v35 = sub_30E4C();
  v36(v35);
  sub_92E4(v8, v16);
LABEL_9:
  sub_92E4(v16, v20 + *(v17 + 28));
  v37 = v64;
  v38 = v61;
  sub_13B594();
  v39 = sub_13B564();
  v40 = v66;
  if ((v39 & 1) == 0)
  {
    sub_30A20(v37, v66, &type metadata accessor for ActionFactory, &ActionFactory.action(deserializing:using:));
    if (v71)
    {
      v63(v37, v75);
      sub_9414(&v70, &v72);
      goto LABEL_14;
    }

    sub_928C(&v70, &unk_19E320);
  }

  v41 = sub_13BAB4();
  sub_30E18();
  sub_30AC8(v42, v43);
  sub_9F18();
  *v44 = 0x6575676573;
  v44[1] = 0xE500000000000000;
  v44[2] = v17;
  (*(*(v41 - 8) + 104))(v44, enum case for JSONError.missingProperty(_:), v41);
  swift_willThrow();
  v63(v37, v75);

  v74 = 0;
  v72 = 0u;
  v73 = 0u;
LABEL_14:
  v45 = v20 + *(v17 + 32);
  v46 = v73;
  *v45 = v72;
  *(v45 + 1) = v46;
  *(v45 + 4) = v74;
  v47 = v65;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    sub_30A20(v47, v40, &type metadata accessor for DynamicTextFactory, &DynamicTextFactory.dynamicText(deserializing:using:));
    if (v71)
    {
      v48 = sub_30E30();
      v38(v48);
      (v38)(v47, &enum case for JSONError.missingProperty(_:));
      sub_9414(&v70, &v72);
      sub_9414(&v72, (v20 + 1));
      sub_30B10(v20, v62);
      sub_13B5A4();
      sub_9F94();
      (*(v49 + 8))(v40);
      sub_30B74(v20);
      return;
    }

    sub_928C(&v70, &qword_19E960);
  }

  v50 = sub_13BAB4();
  sub_30E18();
  sub_30AC8(v51, v52);
  swift_allocError();
  *v53 = 1954047348;
  v53[1] = 0xE400000000000000;
  v53[2] = v17;
  (*(*(v50 - 8) + 104))(v53, enum case for JSONError.missingProperty(_:), v50);
  swift_willThrow();
  v54 = sub_30E30();
  v38(v54);
  (v38)(v47, &enum case for JSONError.missingProperty(_:));
  v55 = v59;
  v56 = v60;
  sub_13B5A4();
  sub_9F94();
  (*(v57 + 8))(v40);

  if (!v56)
  {
    sub_9238((v20 + 6));
    sub_928C(v20 + *(v17 + 28), &qword_19A350);
    sub_928C(v20 + *(v17 + 32), &unk_19E320);
  }
}

uint64_t sub_30994@<X0>(uint64_t *a1@<X8>)
{
  sub_139B64();
  swift_allocObject();
  v2 = sub_139B54();

  *a1 = v2;
  return result;
}

uint64_t sub_30A20(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  a3(0);
  swift_initStackObject();
  return a4(a1, a2);
}

uint64_t sub_30AC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_30B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Badge();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_30B74(uint64_t a1)
{
  v2 = type metadata accessor for Badge();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_30BE4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 28);

    return sub_52E0(v9, a2, v8);
  }
}

void *sub_30C8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 28);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_30D18()
{
  sub_30DD4();
  if (v0 <= 0x3F)
  {
    sub_18A28();
    if (v1 <= 0x3F)
    {
      sub_54D0();
      if (v2 <= 0x3F)
      {
        sub_5528();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_30DD4()
{
  result = qword_19B3D0;
  if (!qword_19B3D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19B3D0);
  }

  return result;
}

uint64_t sub_30E4C()
{
  result = v0;
  *(v1 - 232) = *(*(v1 - 200) + 8);
  return result;
}

id sub_30E64(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin14BadgeComponent_badgeView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for BadgeView()) init];
  v12.receiver = v4;
  v12.super_class = type metadata accessor for BadgeComponent();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  sub_30F30();

  return v10;
}

void sub_30F30()
{
  v1 = [v0 contentView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin14BadgeComponent_badgeView]];
}

id sub_310B8(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BadgeComponent();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_3112C()
{
  v0 = type metadata accessor for Badge();
  __chkstk_darwin(v0 - 8);
  v2 = (&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4948(&qword_19B498);
  sub_13B5F4();
  sub_31DEC(v2);
  return sub_30B74(v2);
}

uint64_t sub_311F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BadgeComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_31254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BadgeComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_312B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_3130C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_31388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_31404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

unint64_t sub_31484()
{
  result = qword_19B440;
  if (!qword_19B440)
  {
    type metadata accessor for Badge();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B440);
  }

  return result;
}

unint64_t sub_314E0()
{
  result = qword_19B448;
  if (!qword_19B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B448);
  }

  return result;
}

id sub_31534()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin9BadgeView_textLabel;
  sub_139BB4();
  v2 = [objc_opt_self() ams_primaryText];
  v3 = sub_13A2A4();
  v8[3] = v3;
  v8[4] = &protocol witness table for FontSource;
  *sub_CC08(v8) = UIFontTextStyleCaption2;
  (*(*(v3 - 8) + 104))();
  v4 = UIFontTextStyleCaption2;
  *&v0[v1] = sub_31FE8();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BadgeView();
  v5 = objc_msgSendSuper2(&v7, "init");
  sub_31938();

  return v5;
}

id sub_3166C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin9BadgeView_textLabel;
  sub_139BB4();
  v10 = [objc_opt_self() ams_primaryText];
  v11 = sub_13A2A4();
  v16[3] = v11;
  v16[4] = &protocol witness table for FontSource;
  *sub_CC08(v16) = UIFontTextStyleCaption2;
  (*(*(v11 - 8) + 104))();
  v12 = UIFontTextStyleCaption2;
  *&v4[v9] = sub_31FE8();
  v15.receiver = v4;
  v15.super_class = type metadata accessor for BadgeView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_31938();

  return v13;
}

id sub_317D4(void *a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin9BadgeView_textLabel;
  sub_139BB4();
  v4 = [objc_opt_self() ams_primaryText];
  v5 = sub_13A2A4();
  v12[3] = v5;
  v12[4] = &protocol witness table for FontSource;
  *sub_CC08(v12) = UIFontTextStyleCaption2;
  (*(*(v5 - 8) + 104))();
  v6 = UIFontTextStyleCaption2;
  *&v1[v3] = sub_139BA4();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for BadgeView();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_31938();
  }

  return v8;
}

id sub_31938()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin9BadgeView_textLabel];
  [v1 setClipsToBounds:1];

  return [v0 addSubview:v1];
}

void sub_31B1C()
{
  v1 = sub_139A34();
  sub_9E94();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10190();
  v17.receiver = v0;
  v17.super_class = type metadata accessor for BadgeView();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v5 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin9BadgeView_textLabel];
  [v0 bounds];
  [v5 measurementsWithFitting:v0 in:{v6, v7}];
  [v0 bounds];
  [v5 setFrame:?];
  v8 = qword_199E78;
  v9 = *&v5[direct field offset for DynamicLabel.label];
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = *&qword_1B2950;
  if (qword_199E80 != -1)
  {
    swift_once();
  }

  v11 = 4.0;
  [v9 setTextContainerInset:{4.0, v10, 4.0, *&qword_1B2958}];

  v12 = [v5 layer];
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v0, enum case for FlagKeys.Solarium(_:), v1);
    v13 = sub_139A24();
    (*(v3 + 8))(v0, v1);
    if (v13)
    {
      v14 = [v5 layer];
      [v14 frame];
      v16 = v15;

      v11 = v16 * 0.5;
    }
  }

  [v12 setCornerRadius:v11];
}

id sub_31DEC(uint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin9BadgeView_textLabel);
  (*(&stru_158.size + (swift_isaMask & *v3)))(a1 + 1);
  v4 = *a1;

  return [v3 setBackgroundColor:v4];
}

id sub_31E78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_31EF8(uint64_t a1, double *a2)
{
  v4 = sub_139A34();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10190();
  result = _UISolariumEnabled();
  if (!result || ((*(v6 + 104))(v2, enum case for FlagKeys.Solarium(_:), v4), v9 = sub_139A24(), result = (*(v6 + 8))(v2, v4), v10 = 8.0, (v9 & 1) == 0))
  {
    v10 = 5.0;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_31FE8()
{

  return sub_139BA4();
}

uint64_t sub_32034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 36);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_320DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 36);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for BannerHeader()
{
  result = qword_19B528;
  if (!qword_19B528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_321B4()
{
  sub_18A84(319, &qword_19AE30, &type metadata accessor for Artwork);
  if (v0 <= 0x3F)
  {
    sub_18AD4(319, &qword_19AE40, &qword_19AE48);
    if (v1 <= 0x3F)
    {
      sub_322F8();
      if (v2 <= 0x3F)
      {
        sub_18A84(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
        if (v3 <= 0x3F)
        {
          sub_18AD4(319, &qword_19A3C8, &unk_19A3D0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_322F8()
{
  if (!qword_19B538)
  {
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19B538);
    }
  }
}

_BYTE *sub_32348(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x32414);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_3244C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_183FE0;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_32498(char a1)
{
  result = 0x647261646E617473;
  switch(a1)
  {
    case 1:
      result = 1819042164;
      break;
    case 2:
      result = 0x4165636976726573;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_32530(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184060;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_3257C(char a1)
{
  result = 7368564;
  switch(a1)
  {
    case 1:
      result = 0x7265746E6563;
      break;
    case 2:
      result = 0x6D6F74746F62;
      break;
    case 3:
      result = 0x6C61727574616ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_32624@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_3244C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_32654@<X0>(unint64_t *a1@<X8>)
{
  result = sub_32498(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_32684()
{
  result = qword_19B580;
  if (!qword_19B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B580);
  }

  return result;
}

uint64_t sub_326FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_32530(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_3272C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3257C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_327B0()
{
  result = qword_19B590;
  if (!qword_19B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B590);
  }

  return result;
}

uint64_t sub_32804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v6 = sub_4948(&qword_19A420);
  __chkstk_darwin(v6 - 8);
  v8 = &v79 - v7;
  v95 = sub_13B584();
  v88 = *(v95 - 8);
  __chkstk_darwin(v95);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v79 - v11;
  __chkstk_darwin(v12);
  v13 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v14);
  v16 = &v79 - v15;
  v17 = type metadata accessor for BannerHeader();
  sub_9F94();
  __chkstk_darwin(v18);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v86 = swift_initStackObject();
  v87 = a2;
  v89 = a2;
  sub_33270();
  sub_9DD0(v21, v22, v23, v24, v25, v26, v27, v28);
  if (v3)
  {

    v29 = 0;
  }

  v85 = v29;
  *v20 = v29;
  sub_33270();
  v30 = sub_BB310();
  v79 = 0;
  *&v92 = v30;
  *(&v92 + 1) = v31;
  sub_13BFB4();
  v80 = a1;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_7738();
  if (sub_52E0(v8, 1, v13) == 1)
  {
    sub_928C(v8, &qword_19A420);
LABEL_6:
    v32 = sub_13BAB4();
    sub_33238();
    sub_3312C(v33, v34);
    sub_18B70();
    *v35 = 0xD000000000000011;
    v35[1] = 0x800000000014E730;
    v35[2] = v17;
    (*(*(v32 - 8) + 104))(v35, enum case for JSONError.missingProperty(_:), v32);
    swift_willThrow();
    v36 = *(v88 + 8);
    v37 = sub_33264();
    v36(v37);

    v38 = sub_13B7A4();
    sub_53A8(v16, 1, 1, v38);
    v39 = 0;
    goto LABEL_8;
  }

  v36 = *(v88 + 8);
  v40 = sub_33264();
  v36(v40);
  sub_92E4(v8, v16);
  v39 = v79;
LABEL_8:
  sub_92E4(v16, &v20[*(v17 + 36)]);
  v41 = v80;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_11:
    v42 = sub_13BAB4();
    sub_33238();
    sub_3312C(v43, v44);
    sub_18B70();
    *v45 = 1954047348;
    v45[1] = 0xE400000000000000;
    v45[2] = v17;
    (*(*(v42 - 8) + 104))(v45, enum case for JSONError.missingProperty(_:), v42);
    swift_willThrow();
    v46 = sub_33264();
    v36(v46);

    v94 = 0;
    v92 = 0u;
    v93 = 0u;
    goto LABEL_12;
  }

  sub_139DB4();
  if (v39)
  {

    v91 = 0;
    memset(v90, 0, sizeof(v90));
    sub_928C(v90, &qword_19E960);
    goto LABEL_11;
  }

  v77 = sub_33264();
  v36(v77);
  sub_9414(v90, &v92);
LABEL_12:
  v47 = v93;
  *(v20 + 1) = v92;
  *(v20 + 2) = v47;
  *(v20 + 6) = v94;
  sub_33270();
  sub_6CC4(v48, v49, v50, v51, v52, v53, v54, v55);
  v20[56] = v56;
  sub_13B594();
  if (sub_13B564())
  {
    v57 = sub_13BAB4();
    sub_33238();
    sub_3312C(v58, v59);
    sub_18BF0();
    swift_allocError();
    *v60 = 0x6575676573;
    v60[1] = 0xE500000000000000;
    v60[2] = v17;
    (*(*(v57 - 8) + 104))(v60, enum case for JSONError.missingProperty(_:), v57);
    swift_willThrow();
    v61 = sub_33250();
    v36(v61);

    v94 = 0;
    v92 = 0u;
    v93 = 0u;
  }

  else
  {
    sub_139BC4();
    v78 = sub_33250();
    v36(v78);
    sub_9414(v90, &v92);
  }

  v62 = &v20[*(v17 + 40)];
  v63 = v93;
  *v62 = v92;
  *(v62 + 1) = v63;
  *(v62 + 4) = v94;
  sub_33270();
  sub_6CF8(v64, v65, v66, v67, v68, v69, v70, v71);
  v72 = v87;
  v74 = v73;
  (v36)(v41, v95);
  v20[8] = v74;
  sub_33170(v20, v81);
  sub_13B5A4();
  sub_9F94();
  (*(v75 + 8))(v72);
  return sub_331D4(v20);
}

uint64_t sub_3312C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_18BF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_33170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BannerHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_331D4(uint64_t a1)
{
  v2 = type metadata accessor for BannerHeader();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_3327C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getKeyPath();
  sub_4948(&qword_19B5E8);
  sub_13B5E4();

  v6 = v15;
  if (!v15)
  {
    sub_2519C(v14);
    goto LABEL_5;
  }

  v7 = v16;
  sub_162F0(v14, v15);
  v8 = (*(v7 + 24))(v6, v7);
  sub_3C04(v14);
  if (v8 == 5)
  {
LABEL_5:
    v8 = 4;
  }

  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_textAlignment] = v8;
  sub_33F58();
  swift_getKeyPath();
  sub_33888();
  sub_13B5E4();

  v9 = v14[0];
  if (LOBYTE(v14[0]) == 4)
  {
    v9 = 3;
  }

  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_textPosition] = v9;
  swift_getKeyPath();
  sub_33888();
  sub_13B5E4();

  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_bannerStyle] = v14[0];
  sub_34A68();
  swift_getKeyPath();
  sub_33888();
  sub_13B5E4();

  if (v14[0])
  {
    sub_34B48(v14[0]);
  }

  swift_getKeyPath();
  sub_13B5E4();

  if (v13)
  {
    sub_9414(&v12, v14);
    v10 = sub_33D14();
    (*(&stru_158.size + (swift_isaMask & *v10)))(v14, a3);

    sub_3C04(v14);
  }

  else
  {
    sub_2519C(&v12);
  }

  v11 = [v4 contentView];
  [v11 setNeedsLayout];
}

uint64_t sub_33518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BannerHeaderComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_33580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BannerHeaderComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_335E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_3363C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_336B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_33734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_33840(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_33898()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_bannerStyle) = 0;
  bzero((v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___metrics), 0xB0uLL);
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___overlayLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_textAlignment) = 4;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_textPosition) = 3;
  v1 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_artworkFetcher);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView) = 0;
  v10 = type metadata accessor for BannerHeaderComponent();
  v2 = sub_3001C();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v10);
  v11.origin.x = sub_3001C();
  CGRectGetWidth(v11);
  v6 = objc_allocWithZone(sub_139CF4());
  v7 = sub_35C38();
  v8 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView];
  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView] = v7;

  sub_34D38();
  return v5;
}

double sub_339B0(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Width = CGRectGetWidth(*&a2);
  switch(a1)
  {
    case 4:
      v12.origin.x = a2;
      v12.origin.y = a3;
      v12.size.width = a4;
      v12.size.height = a5;
      CGRectGetWidth(v12);
      break;
    default:
      return Width;
  }

  return Width;
}

void *sub_33AB0@<X0>(void *a1@<X8>)
{
  swift_getObjectType();
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___metrics;
  swift_beginAccess();
  sub_35AC8(v1 + v3, __src);
  if (__src[15])
  {
    return memcpy(a1, __src, 0xB0uLL);
  }

  sub_CC68(__src, &qword_19B650);
  sub_33BA4(v1, a1);
  sub_35B38(a1, __src);
  swift_beginAccess();
  sub_35A60(__src, v1 + v3, &qword_19B650);
  return swift_endAccess();
}

uint64_t sub_33BA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  Width = CGRectGetWidth(v16);
  *(a2 + 40) = &type metadata for Double;
  *(a2 + 48) = &protocol witness table for Double;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 120) = &type metadata for Double;
  *(a2 + 128) = &protocol witness table for Double;
  *(a2 + 96) = 0;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0;
  *(a2 + 136) = 0u;
  *a2 = Width;
  *(a2 + 8) = xmmword_141560;
  return sub_35A60(v14, a2 + 136, &qword_19AFF8);
}

uint64_t sub_33CA0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___metrics;
  swift_beginAccess();
  sub_35A60(__dst, v1 + v2, &qword_19B650);
  return swift_endAccess();
}

void *sub_33D14()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___overlayLabel;
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___overlayLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___overlayLabel);
  }

  else
  {
    v4 = sub_33D78();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_33D78()
{
  sub_139BB4();
  v0 = [objc_opt_self() ams_primaryText];
  v1 = sub_13A2A4();
  v6[3] = v1;
  v6[4] = &protocol witness table for FontSource;
  v2 = sub_CC08(v6);
  v3 = sub_340A0();
  sub_33EB8(v3, v2);
  (*(*(v1 - 8) + 104))(v2, enum case for FontSource.useCase(_:), v1);
  v4 = sub_139BA4();
  (*&stru_108.segname[(swift_isaMask & *v4) + 8])(1);
  return v4;
}

uint64_t sub_33EB8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = **(&off_186D30 + a1);
  *a2 = v3;
  *(a2 + 8) = UIFontWeightSemibold;
  v4 = v3;
  v5 = enum case for FontUseCase.preferredFontDerivative(_:);
  v6 = sub_13A3E4();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

void sub_33F58()
{
  v1 = sub_33D14();
  v0 = sub_139E14();
  (*&stru_B8.sectname[swift_isaMask & *v1])(v0);
}

id sub_33FE4()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView;
  v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView];
  }

  else
  {
    v4 = v0;
    v5 = [v0 contentView];
    [v5 bounds];
    sub_1D3D0();

    v11.origin.x = sub_35BE8();
    CGRectGetWidth(v11);
    v6 = objc_allocWithZone(sub_139CF4());
    v7 = sub_35C38();
    v8 = *&v4[v1];
    *&v4[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_340A0()
{
  result = 2;
  switch(*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_bannerStyle))
  {
    case 1:
      return result;
    case 2:
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    default:
      v2 = [v0 contentView];
      v3 = sub_BBCC4();

      result = v3;
      break;
  }

  return result;
}

void sub_34138()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BannerHeaderComponent();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = sub_33FE4();
  (*(&stru_108.reloff + (swift_isaMask & *v1)))();

  v2 = sub_33D14();
  (*(&stru_158.offset + (swift_isaMask & *v2)))();
}

uint64_t sub_3426C()
{
  v5 = sub_13A314();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BannerHeaderComponent();
  v74.receiver = v0;
  v74.super_class = v7;
  objc_msgSendSuper2(&v74, "layoutSubviews");
  sub_34DF4();
  v8 = sub_33D14();
  [v8 setNeedsLayout];

  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v9 = sub_139A14();
  v65 = sub_4910(v9, qword_1B2B00);
  v10 = sub_4948(&unk_19E010);
  v11 = *(*(sub_1399C4() - 8) + 72);
  v60[2] = v10;
  *(swift_allocObject() + 16) = xmmword_13E650;
  v61 = v7;
  v67 = v7;
  v66[0] = v0;
  v12 = v0;
  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v66);
  v66[0] = 0;
  v66[1] = 0xE000000000000000;
  sub_13BFE4(16);
  v72 = v66[0];
  v73 = v66[1];
  v75._countAndFlagsBits = 0x20746E65746E6F43;
  v75._object = 0xEE00203A77656956;
  sub_13BBC4(v75);
  v15 = [v12 contentView];
  [v15 bounds];
  sub_1D3D0();

  v66[0] = v1;
  v66[1] = v2;
  v66[2] = v3;
  v67 = v4;
  type metadata accessor for CGRect(0);
  sub_13C074();
  v67 = &type metadata for String;
  v66[0] = v72;
  v66[1] = v73;
  sub_139984();
  sub_CC68(v66, &unk_1A06F0);
  sub_1399D4();

  v16 = &qword_19B000;
  if (sub_35578())
  {
    v60[1] = 2 * v11;
    v17 = sub_33FE4();
    v18 = [v12 contentView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;

    (*(&stru_68.reloff + (swift_isaMask & *v17)))(v20, v22);
    *(swift_allocObject() + 16) = xmmword_13E660;
    v67 = v61;
    v66[0] = v12;
    v23 = v12;
    v24 = AMSLogKey();
    if (v24)
    {
      v25 = v24;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v66);
    v67 = &type metadata for String;
    strcpy(v66, "Apply artwork");
    HIWORD(v66[1]) = -4864;
    sub_139984();
    sub_CC68(v66, &unk_1A06F0);
    v16 = &qword_19B000;
    sub_35C68();
    v27 = *(v26 + 152);
    v29 = v28;
    v30 = v27();
    v32 = v31;

    type metadata accessor for CGSize(0);
    v67 = v33;
    v66[0] = *&v30;
    v66[1] = v32;
    sub_139984();
    sub_CC68(v66, &unk_1A06F0);
    sub_1399D4();

    v34 = *&v23[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_artworkFetcher];
    if (v34)
    {

      v34(v35);
      sub_C9FC(v34);
    }
  }

  sub_33FE4();
  sub_1D48C();
  sub_35C7C();
  (*(v36 + 152))();

  v37 = v16[196];
  sub_35C68();
  v39 = *(v38 + 184);
  v41 = v40;
  v42 = v39();

  if (v42)
  {
    [v42 size];

    v43 = [v12 contentView];
    [v43 bounds];
    sub_1D3D0();

    v76.origin.x = sub_35BE8();
    CGRectGetWidth(v76);
  }

  v66[0] = *&v12[v37];
  v44 = v66[0];
  v45 = [v12 contentView];
  [v45 bounds];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;

  v77.origin.x = v47;
  v77.origin.y = v49;
  v77.size.width = v51;
  v77.size.height = v53;
  CGRectGetWidth(v77);
  sub_139CF4();
  sub_13A374();

  sub_33AB0(&v71);
  sub_4B14(&v72, v66);
  v54 = *&v12[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___overlayLabel];
  v69 = sub_139BB4();
  v70 = sub_270D8();
  v68 = v54;
  v55 = v54;
  v56 = [v12 contentView];
  [v56 bounds];
  sub_1D3D0();

  v57 = [v12 contentView];
  v58 = v62;
  sub_35BE8();
  BannerHeaderComponentLayout.placeChildren(relativeTo:in:)();

  sub_35B94(v66);
  (*(v63 + 8))(v58, v64);
  return sub_3C04(&v72);
}

void sub_34A68()
{
  v0 = sub_33D14();
  v1 = sub_13A2A4();
  v4[3] = v1;
  v4[4] = &protocol witness table for FontSource;
  v2 = sub_CC08(v4);
  v3 = sub_340A0();
  sub_33EB8(v3, v2);
  (*(*(v1 - 8) + 104))(v2, enum case for FontSource.useCase(_:), v1);
  (*(&stru_B8.reloff + (swift_isaMask & *v0)))(v4);
}

uint64_t sub_34B48(uint64_t a1)
{
  v2 = v1;
  sub_1D450();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_1D450();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 2) = v4;
  *(v6 + 3) = v5;
  *(v6 + 4) = a1;
  v7 = (v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_artworkFetcher);
  v8 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_artworkFetcher);
  *v7 = sub_35A54;
  v7[1] = v6;

  sub_C9FC(v8);
}

void sub_34C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = sub_33FE4();

      (*&stru_108.segname[(swift_isaMask & *v8) + 16])(a3, v5);
    }

    else
    {
    }
  }
}

void sub_34D38()
{
  v1 = [v0 contentView];
  v2 = sub_33FE4();
  [v1 addSubview:v2];

  v3 = [v0 contentView];
  v4 = sub_33D14();
  [v3 addSubview:v4];
}

uint64_t sub_34DF4()
{
  switch(sub_340A0())
  {
    case 1u:
      sub_350B8(v1);
      break;
    case 2u:
      sub_34E8C(v1);
      break;
    case 3u:
      sub_35204(v1);
      break;
    case 4u:
      sub_352D0(v1);
      break;
    default:
      sub_34F7C(v1);
      break;
  }

  return sub_33CA0(v1);
}

uint64_t sub_34E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 contentView];
  [v3 bounds];
  sub_1D3D0();

  v7.origin.x = sub_35BE8();
  CGRectGetWidth(v7);
  sub_35688(a1 + 16);
  *(a1 + 64) = 0x4057400000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 120) = &type metadata for CGFloat;
  *(a1 + 128) = &protocol witness table for CGFloat;
  *(a1 + 96) = 0x404C000000000000;
  v6[3] = &type metadata for CGFloat;
  v6[4] = &protocol witness table for CGFloat;
  v6[0] = 0x404C000000000000;
  sub_35BFC(0);
  *(a1 + 8) = 0x4072200000000000;
  return sub_35A60(v6, v4, &qword_19AFF8);
}

uint64_t sub_34F7C@<X0>(uint64_t a1@<X8>)
{
  sub_33D14();
  sub_1D48C();
  sub_35C7C();
  v4 = (*(v3 + 176))();

  if (v4 == 1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 24.0;
  }

  v6 = [v1 contentView];
  [v6 bounds];
  sub_1D3D0();

  v12.origin.x = sub_35BE8();
  CGRectGetWidth(v12);
  sub_35688(a1 + 16);
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0x4069000000000000;
  *(a1 + 88) = 0;
  *(a1 + 120) = &type metadata for CGFloat;
  *(a1 + 128) = &protocol witness table for CGFloat;
  *(a1 + 96) = v5;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_35BFC(0);
  *(a1 + 8) = v7;
  return sub_35A60(v10, v8, &qword_19AFF8);
}

uint64_t sub_350B8@<X0>(uint64_t a1@<X8>)
{
  sub_33D14();
  sub_1D48C();
  sub_35C7C();
  v4 = (*(v3 + 176))();

  if (v4 == 1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 100.0;
  }

  v6 = [v1 contentView];
  [v6 bounds];
  sub_1D3D0();

  v11.origin.x = sub_35BE8();
  CGRectGetWidth(v11);
  sub_35688(a1 + 16);
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0x4070E00000000000;
  *(a1 + 88) = 0;
  *(a1 + 120) = &type metadata for CGFloat;
  *(a1 + 128) = &protocol witness table for CGFloat;
  *(a1 + 96) = v5;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_35BFC(0);
  *(a1 + 8) = 0x406F400000000000;
  return sub_35A60(v9, v7, &qword_19AFF8);
}

uint64_t sub_35204@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 contentView];
  [v3 bounds];
  sub_1D3D0();

  v9.origin.x = sub_35BE8();
  CGRectGetWidth(v9);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  *(a1 + 40) = &type metadata for Double;
  *(a1 + 48) = &protocol witness table for Double;
  sub_35C14(&type metadata for Double);
  *(a1 + 152) = v4;
  *(a1 + 168) = 0;
  *(a1 + 136) = v4;
  *a1 = v5;
  *(a1 + 8) = xmmword_141570;
  return sub_35A60(v7, a1 + 136, &qword_19AFF8);
}

uint64_t sub_352D0@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v7 = [v1 contentView];
  [v7 bounds];
  sub_1D3D0();

  sub_339B0(4, v2, v3, v4, v5);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  *(a1 + 40) = &type metadata for Double;
  *(a1 + 48) = &protocol witness table for Double;
  *(a1 + 16) = 0;
  sub_35C14(&type metadata for Double);
  *(a1 + 152) = v8;
  *(a1 + 168) = 0;
  *(a1 + 136) = v8;
  *a1 = v9;
  *(a1 + 8) = v10;
  return sub_35A60(v12, a1 + 136, &qword_19AFF8);
}

void sub_353BC(double a1, double a2, float a3, float a4)
{
  swift_getObjectType();
  if (a3 == 1000.0)
  {
    v8 = a1;
  }

  else
  {
    v8 = 1.79769313e308;
  }

  if (a4 == 1000.0)
  {
    v9 = a2;
  }

  else
  {
    v9 = 1.79769313e308;
  }

  v10 = sub_340A0();
  sub_339B0(v10, 0.0, 0.0, v8, v9);
}

id sub_354CC()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension:1.0];
  v2 = [v0 estimatedDimension:200.0];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  return v3;
}

BOOL sub_35578()
{
  v1 = v0;
  sub_33FE4();
  sub_1D48C();
  sub_35C7C();
  v3 = (*(v2 + 176))();

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v4 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent____lazy_storage___artworkImageView];
  v5 = *(&stru_68.offset + (swift_isaMask & *v4));
  v6 = v4;
  v7 = v5();
  v9 = v8;

  v10 = [v1 contentView];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  return v9 != v14 || v7 != v12;
}

double sub_35688@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_textAlignment);
  if (v3 >= 3)
  {
    LOBYTE(v3) = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_bannerStyle) - 1 < 3;
  }

  sub_357D0(&v12);
  v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_textPosition);
  switch(v4)
  {
    case 1:
      sub_35950(&v12);
      *&v12 = 0;
      v7 = &protocol witness table for Double;
      v8 = &type metadata for Double;
      goto LABEL_8;
    case 2:
      v5 = sub_340A0();
      v6 = &unk_1415E8;
      goto LABEL_7;
    case 3:
      goto LABEL_9;
    default:
      v5 = sub_340A0();
      v6 = &unk_1415C0;
LABEL_7:
      v9 = v6[v5];
      sub_35950(&v12);
      *&v12 = v9;
      v7 = &protocol witness table for CGFloat;
      v8 = &type metadata for CGFloat;
LABEL_8:
      *&v13[8] = v8;
      *&v13[16] = v7;
      v13[24] = v4;
LABEL_9:
      v10 = *v13;
      *a1 = v12;
      *(a1 + 16) = v10;
      result = *&v13[9];
      *(a1 + 25) = *&v13[9];
      *(a1 + 41) = v3;
      return result;
  }
}

double sub_357D0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BannerHeaderComponent_bannerStyle);
  v3 = *(&off_186D78 + v2);
  result = dbl_141610[v2];
  *(a1 + 24) = *(&off_186D58 + v2);
  *(a1 + 32) = v3;
  *a1 = result;
  *(a1 + 40) = 1u >> (8 * v2);
  return result;
}

id sub_35860()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerHeaderComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_359A4()
{
  swift_weakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_359D8()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_35A0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_35A60(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_4948(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_35AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19B650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_35BFC(__n128 a1)
{
  *(v1 + 152) = a1;
  *(v1 + 168) = 0;
  *(v1 + 136) = a1;
  *v1 = v2;
}

void sub_35C14(uint64_t a1@<X8>)
{
  *(v2 + 56) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 1;
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  *(v2 + 96) = 0;
}

uint64_t sub_35C38()
{

  return sub_139CE4();
}

__n128 BannerHeaderComponentLayout.Metrics.TextSafeArea.init(relativePosition:maxHeight:maxWidth:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v6;
  result = *(a1 + 26);
  *(a6 + 26) = result;
  *(a6 + 48) = a2;
  *(a6 + 56) = a3 & 1;
  *(a6 + 64) = a4;
  *(a6 + 72) = a5 & 1;
  return result;
}

uint64_t BannerHeaderComponentLayout.Metrics.init(artworkSize:textSafeArea:textLeading:textTrailing:)()
{
  sub_36E34();
  *(v3 + 168) = 0;
  *(v3 + 152) = 0u;
  *(v3 + 136) = 0u;
  v4 = v3 + 136;
  *v3 = v5;
  *(v3 + 8) = v6;
  memcpy((v3 + 16), v7, 0x49uLL);
  sub_9414(v1, v2 + 96);

  return sub_35D24(v0, v4);
}

uint64_t sub_35D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19AFF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BannerHeaderComponentLayout.init(metrics:artworkView:messageView:)()
{
  sub_36E34();
  memcpy((v3 + 80), v4, 0xB0uLL);
  sub_9414(v1, v2);

  return sub_9414(v0, v2 + 40);
}

uint64_t BannerHeaderComponentLayout.placeChildren(relativeTo:in:)()
{
  v1 = v0;
  sub_162F0(v0 + 5, v0[8]);
  v2 = sub_3001C();
  sub_3601C(v2, v3, v4, v5);
  sub_13A354();
  sub_162F0(v1, v1[3]);
  sub_13A384();
  v8.origin.x = sub_3001C();
  CGRectGetMaxY(v8);
  sub_162F0(v1, v1[3]);
  v9.origin.x = sub_3001C();
  CGRectGetMinX(v9);
  v10.origin.x = sub_3001C();
  CGRectGetHeight(v10);
  sub_13A354();
  sub_3001C();

  return sub_13A2E4();
}

__n128 BannerHeaderComponentLayout.Metrics.RelativeTextPosition.init(vertical:horizontal:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 25);
  *(a3 + 25) = result;
  *(a3 + 41) = a2;
  return result;
}

Swift::Int sub_35F58()
{
  v1 = *v0;
  sub_13C214();
  BannerHeaderComponentLayout.Metrics.Layout.Horizontal.hash(into:)(v3, v1);
  return sub_13C234();
}

void sub_3601C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_13C114();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 200);
  v15 = *(v5 + 208);
  sub_162F0((v5 + 176), v14);
  sub_20038(v14, v15);
  sub_13A404();
  v16 = *(v11 + 8);
  v16(v13, v10);
  if (*(v5 + 168))
  {
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    CGRectGetWidth(v41);
    sub_36630(v5 + 216, &v38);
    v17 = *&v39[8];
    if (*&v39[8])
    {
      v18 = *&v39[16];
      sub_162F0(&v38, *&v39[8]);
      sub_20038(v17, v18);
      sub_13A404();
      v16(v13, v10);
      sub_3C04(&v38);
    }

    else
    {
      sub_1D2CC(&v38);
    }
  }

  sub_36750(a1, a2, a3, a4);
  sub_162F0((v5 + 40), *(v5 + 64));
  sub_13A384();
  sub_365C0(v5 + 96, &v38);
  *&v37[9] = *&v39[9];
  v36 = v38;
  *v37 = *v39;
  if (v39[24])
  {
    if (v39[24] == 1)
    {
      sub_9414(&v36, v33);
      v19 = v34;
      v20 = v35;
      sub_162F0(v33, v34);
      sub_20038(v19, v20);
      sub_13A404();
      v16(v13, v10);
      v42.origin.x = a1;
      v42.origin.y = a2;
      v42.size.width = a3;
      v42.size.height = a4;
      CGRectGetMinY(v42);
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      CGRectGetHeight(v43);
    }

    else
    {
      sub_9414(&v36, v33);
      v23 = v34;
      v24 = v35;
      sub_162F0(v33, v34);
      sub_20038(v23, v24);
      sub_13A404();
      v16(v13, v10);
      v45.origin.x = a1;
      v45.origin.y = a2;
      v45.size.width = a3;
      v45.size.height = a4;
      CGRectGetMaxY(v45);
    }
  }

  else
  {
    sub_9414(&v36, v33);
    v21 = v34;
    v22 = v35;
    sub_162F0(v33, v34);
    sub_20038(v21, v22);
    sub_13A404();
    v16(v13, v10);
    v44.origin.x = a1;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    CGRectGetMinY(v44);
  }

  sub_3C04(v33);
  sub_365C0(v5 + 96, &v38);
  v25 = v40;
  sub_36E04(&v38);
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  if (v25)
  {
    if (v25 == 1)
    {
      CGRectGetMidX(*&v26);
    }

    else
    {
      CGRectGetMaxX(*&v26);
      sub_36630(v5 + 216, &v36);
      v30 = *&v37[8];
      if (*&v37[8])
      {
        v31 = *&v37[16];
        sub_162F0(&v36, *&v37[8]);
        sub_20038(v30, v31);
        sub_13A404();
        v16(v13, v10);
        sub_3C04(&v36);
      }

      else
      {
        sub_1D2CC(&v36);
      }
    }
  }

  else
  {
    CGRectGetMinX(*&v26);
  }
}

uint64_t sub_36630(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19AFF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_366A4()
{
  result = qword_19B658;
  if (!qword_19B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B658);
  }

  return result;
}

unint64_t sub_366FC()
{
  result = qword_19B660;
  if (!qword_19B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B660);
  }

  return result;
}

void sub_36750(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_13C114();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 152))
  {
    sub_365C0(v4 + 96, &v22);
    *&v21[9] = *&v23[9];
    v20 = v22;
    *v21 = *v23;
    v13 = (v10 + 8);
    sub_9414(&v20, v17);
    v14 = v18;
    v15 = v19;
    sub_162F0(v17, v18);
    sub_20038(v14, v15);
    sub_13A404();
    (*v13)(v12, v9);
    sub_3C04(v17);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetHeight(v24);
  }
}

uint64_t sub_36928(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_36948(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 256))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_36988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_36A14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_36A54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 176) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_36AD8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_36AEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}