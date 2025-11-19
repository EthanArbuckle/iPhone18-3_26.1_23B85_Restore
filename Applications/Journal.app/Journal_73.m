void sub_1007E4024()
{
  sub_1007E442C();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1007E4490();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1007E40C4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 105;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))(&a1[v6 + 17] & ~v6);
    }

    v17 = *(a1 + 1);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1007E4224(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 17) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 105;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if ((v7 & 0x80000000) != 0)
      {
        v17 = *(v6 + 56);
        v18 = &a1[v9 + 17] & ~v9;

        v17(v18);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        a1[16] = 0;
        *a1 = a2 & 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *(a1 + 1) = a2 - 1;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1007E442C()
{
  if (!qword_100AF2B48)
  {
    sub_1000F2A18(&qword_100AD8D88);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF2B48);
    }
  }
}

void sub_1007E4490()
{
  if (!qword_100AE6910)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE6910);
    }
  }
}

uint64_t sub_1007E4524()
{
  sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_1007E457C()
{
  sub_1000F24EC(&qword_100ADB018);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_1007E45D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = *(v7 + 16);
  v9 = __chkstk_darwin(v7);
  (*(v12 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + *(v11 + 36), v8, v9);
  (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = *(a1 + 24);
  *(v14 + 16) = v8;
  *(v14 + 24) = v15;
  (*(v5 + 32))(v14 + v13, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1000F24EC(&qword_100AF2B50);
  sub_10000B58C(&qword_100AF2B58, &qword_100AF2B50);
  ForEach.init<A>(sections:content:)();
  KeyPath = swift_getKeyPath();
  v17 = sub_1007E457C();
  v19 = v18;
  v21 = v20;
  result = sub_1000F24EC(&qword_100AF2B60);
  v23 = a2 + *(result + 36);
  *v23 = KeyPath;
  *(v23 + 8) = v17;
  *(v23 + 16) = v19;
  *(v23 + 24) = v21;
  return result;
}

uint64_t sub_1007E4848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static HorizontalAlignment.leading.getter();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v10 = sub_1000F24EC(&qword_100AF2B68);
  return sub_1007E48C4(a1, a2, a3, a4, a5 + *(v10 + 44));
}

uint64_t sub_1007E48C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v155 = a3;
  *&v156 = a4;
  v154 = a2;
  v152 = a5;
  v140 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v140);
  v139 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v138 = &v118 - v8;
  v131 = sub_1000F24EC(&qword_100AF2B70);
  __chkstk_darwin(v131);
  v133 = &v118 - v9;
  v132 = sub_1000F24EC(&qword_100AF2B78);
  __chkstk_darwin(v132);
  v135 = &v118 - v10;
  v134 = sub_1000F24EC(&qword_100AF2B80);
  __chkstk_darwin(v134);
  v137 = &v118 - v11;
  v12 = sub_1000F24EC(&qword_100AF2B88);
  v150 = *(v12 - 8);
  v151 = v12;
  __chkstk_darwin(v12);
  v136 = &v118 - v13;
  v14 = type metadata accessor for ContainerValues();
  v129 = *(v14 - 8);
  v130 = v14;
  __chkstk_darwin(v14);
  v128 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F24EC(&qword_100AF2B90);
  __chkstk_darwin(v16 - 8);
  v149 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v148 = &v118 - v19;
  v20 = type metadata accessor for AccessibilityTraits();
  v126 = *(v20 - 8);
  v127 = v20;
  __chkstk_darwin(v20);
  v125 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for EnvironmentValues();
  v142 = *(v22 - 8);
  v143 = v22;
  __chkstk_darwin(v22);
  v141 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000F24EC(&qword_100AF2B98);
  __chkstk_darwin(v24);
  v26 = &v118 - v25;
  v122 = sub_1000F24EC(&qword_100AF2BA0);
  __chkstk_darwin(v122);
  v120 = &v118 - v27;
  v28 = sub_1000F24EC(&qword_100AF2BA8);
  v123 = *(v28 - 8);
  v124 = v28;
  __chkstk_darwin(v28);
  v121 = &v118 - v29;
  v30 = type metadata accessor for SubviewsCollection();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000F24EC(&qword_100AF2BB0);
  __chkstk_darwin(v34 - 8);
  v147 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v118 - v37;
  SectionConfiguration.header.getter();
  sub_1007EC56C(&qword_100AD27E0, &type metadata accessor for SubviewsCollection);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v144 = *(v31 + 8);
  v145 = v31 + 8;
  v144(v33, v30);
  v153 = a1;
  v146 = v38;
  if (v183 == v164)
  {
    v39 = sub_1000F24EC(&qword_100AF2BF0);
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  }

  else
  {
    *v26 = static VerticalAlignment.firstTextBaseline.getter();
    *(v26 + 1) = 0;
    v26[16] = 1;
    sub_1000F24EC(&qword_100AF2BB8);
    SectionConfiguration.header.getter();
    static Font.subheadline.getter();
    v40 = Font.bold()();

    KeyPath = swift_getKeyPath();
    v42 = &v26[*(sub_1000F24EC(&qword_100AF2BC0) + 36)];
    *v42 = KeyPath;
    v42[1] = v40;
    *&v26[*(v24 + 36)] = static HierarchicalShapeStyle.secondary.getter();
    v43 = (v154 + *(type metadata accessor for InsightsBentoLayout() + 40));
    v44 = v43[5];
    v187 = v43[4];
    *v188 = v44;
    *&v188[9] = *(v43 + 89);
    v45 = v43[3];
    v185 = v43[2];
    v186 = v45;
    v46 = v43[1];
    v183 = *v43;
    v184 = v46;
    if (v188[24])
    {
      v47 = v43[5];
      v168[0] = v43[4];
      v168[1] = v47;
      *&v168[2] = *(v43 + 12);
      v48 = v43[1];
      v164 = *v43;
      v165 = v48;
      v49 = v43[3];
      v166 = v43[2];
      v167 = v49;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v50 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v51 = v141;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v183, &qword_100AE69F0);
      (*(v142 + 8))(v51, v143);
    }

    v118 = *(&v168[1] + 8);
    v119 = *(v168 + 8);
    v52 = static Edge.Set.all.getter();
    v53 = v26;
    v54 = v120;
    sub_100021CEC(v53, v120, &qword_100AF2B98);
    v55 = v122;
    v56 = v54 + *(v122 + 36);
    *v56 = v52;
    v57 = v119;
    *(v56 + 24) = v118;
    *(v56 + 8) = v57;
    *(v56 + 40) = 0;
    v58 = sub_1007EAC88();
    v59 = v121;
    View.unredacted()();
    sub_100004F84(v54, &qword_100AF2BA0);
    v60 = v125;
    static AccessibilityTraits.isHeader.getter();
    *&v164 = v55;
    *(&v164 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    v38 = v146;
    v61 = v124;
    View.accessibilityAddTraits(_:)();
    (*(v126 + 8))(v60, v127);
    (*(v123 + 8))(v59, v61);
    v62 = sub_1000F24EC(&qword_100AF2BF0);
    (*(*(v62 - 8) + 56))(v38, 0, 1, v62);
  }

  SectionConfiguration.content.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v144(v33, v30);
  if (v183 == v164)
  {
    v63 = v148;
    (*(v150 + 56))(v148, 1, 1, v151);
  }

  else
  {
    v64 = v128;
    SectionConfiguration.containerValues.getter();
    sub_100504804();
    ContainerValues.subscript.getter();
    (*(v129 + 8))(v64, v130);
    v65 = v183;
    if (v183)
    {
    }

    v66 = (v154 + *(type metadata accessor for InsightsBentoLayout() + 40));
    v67 = v66[5];
    v187 = v66[4];
    *v188 = v67;
    *&v188[9] = *(v66 + 89);
    v68 = v66[3];
    v185 = v66[2];
    v186 = v68;
    v69 = v66[1];
    v183 = *v66;
    v184 = v69;
    if (v188[24])
    {
      v70 = v66[5];
      v180 = v66[4];
      v181 = v70;
      v182 = *(v66 + 12);
      v71 = v66[1];
      v176 = *v66;
      v177 = v71;
      v72 = v66[3];
      v178 = v66[2];
      v179 = v72;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v73 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v74 = v141;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v183, &qword_100AE69F0);
      (*(v142 + 8))(v74, v143);
    }

    v173 = v180;
    v174 = v181;
    v175 = v182;
    v169 = v176;
    v170 = v177;
    v171 = v178;
    v172 = v179;
    v75 = sub_1007E4524();
    v76 = v174;
    v77 = v133;
    *(v133 + 4) = v173;
    *(v77 + 80) = v76;
    *(v77 + 96) = v175;
    v78 = v172;
    *(v77 + 32) = v171;
    *(v77 + 48) = v78;
    v79 = v170;
    *v77 = v169;
    *(v77 + 16) = v79;
    *(v77 + 104) = v75;
    v145 = *(v131 + 44);
    SectionConfiguration.content.getter();
    *(swift_allocObject() + 16) = v65 != 0;
    type metadata accessor for Subview.ID();
    type metadata accessor for InsightsButton();
    sub_1007EC56C(&qword_100AF2BF8, &type metadata accessor for SubviewsCollection);
    sub_1007EC56C(&qword_100AF2C00, type metadata accessor for InsightsButton);
    sub_1007EC56C(&qword_100AD2768, &type metadata accessor for Subview);
    ForEach<>.init(_:content:)();
    v80 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v89 = v135;
    sub_100021CEC(v77, v135, &qword_100AF2B70);
    v90 = v89 + *(v132 + 36);
    *v90 = v80;
    *(v90 + 8) = v82;
    *(v90 + 16) = v84;
    *(v90 + 24) = v86;
    *(v90 + 32) = v88;
    *(v90 + 40) = 0;
    v91 = static Alignment.center.getter();
    v93 = v92;
    sub_1007E5B50(v154, &v164);
    v94 = v164;
    v156 = v165;
    v95 = v166;
    v96 = v137;
    sub_100021CEC(v89, v137, &qword_100AF2B78);
    v97 = v96 + *(v134 + 36);
    *v97 = v94;
    *(v97 + 16) = v156;
    *(v97 + 32) = v95;
    *(v97 + 40) = v91;
    *(v97 + 48) = v93;
    v98 = v66[5];
    v168[0] = v66[4];
    v168[1] = v98;
    *(&v168[1] + 9) = *(v66 + 89);
    v99 = v66[3];
    v166 = v66[2];
    v167 = v99;
    v100 = v66[1];
    v164 = *v66;
    v165 = v100;
    if (BYTE8(v168[2]))
    {
      v101 = v66[5];
      v161 = v66[4];
      v162 = v101;
      v163 = *(v66 + 12);
      v102 = v66[1];
      v157 = *v66;
      v158 = v102;
      v103 = v66[3];
      v159 = v66[2];
      v160 = v103;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v104 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v105 = v141;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v164, &qword_100AE69F0);
      (*(v142 + 8))(v105, v143);
    }

    v38 = v146;
    v106 = v161;
    v107 = *(v140 + 20);
    v108 = enum case for RoundedCornerStyle.continuous(_:);
    v109 = type metadata accessor for RoundedCornerStyle();
    v110 = v138;
    (*(*(v109 - 8) + 104))(&v138[v107], v108, v109);
    *v110 = v106;
    v110[1] = v106;
    sub_1007EB1A4(v110, v139, &type metadata accessor for RoundedRectangle);
    v111 = v151;
    sub_1007EC56C(&qword_100AD2658, &type metadata accessor for RoundedRectangle);
    v112 = v136;
    _ContainerRoundedRectangularShapeModifier.init(shape:)();
    sub_1007EB20C(v110, &type metadata accessor for RoundedRectangle);
    sub_100021CEC(v96, v112, &qword_100AF2B80);
    v63 = v148;
    sub_100021CEC(v112, v148, &qword_100AF2B88);
    (*(v150 + 56))(v63, 0, 1, v111);
  }

  v113 = v147;
  sub_1000DFC8C(v38, v147);
  v114 = v149;
  sub_1000082B4(v63, v149, &qword_100AF2B90);
  v115 = v152;
  sub_1000DFC8C(v113, v152);
  v116 = sub_1000F24EC(&qword_100AF2C08);
  sub_1000082B4(v114, v115 + *(v116 + 48), &qword_100AF2B90);
  sub_100004F84(v63, &qword_100AF2B90);
  sub_1000DFCFC(v38);
  sub_100004F84(v114, &qword_100AF2B90);
  return sub_1000DFCFC(v113);
}

uint64_t sub_1007E5A00@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Subview();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for InsightsButton();
  *(a3 + v7[5]) = a2;
  v8 = a3 + v7[6];
  State.init(wrappedValue:)();
  *v8 = v15;
  *(v8 + 8) = v16;
  v9 = a3 + v7[7];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  v10 = a3 + v7[8];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a3 + v7[9];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a3 + v7[10];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a3 + v7[11];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  return AccessibilityFocusState.init<>()();
}

double sub_1007E5B50@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = type metadata accessor for ColorResource();
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for EnvironmentValues();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContainerValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  SectionConfiguration.containerValues.getter();
  sub_100504804();
  ContainerValues.subscript.getter();
  (*(v9 + 8))(v11, v8);
  v12 = *&v37[0];
  v13 = (v28 + *(type metadata accessor for InsightsBentoLayout() + 40));
  v14 = v13[5];
  v37[4] = v13[4];
  *v38 = v14;
  *&v38[9] = *(v13 + 89);
  v15 = v13[3];
  v37[2] = v13[2];
  v37[3] = v15;
  v16 = v13[1];
  v37[0] = *v13;
  v37[1] = v16;
  if (v38[24])
  {
    v17 = v13[5];
    v34 = v13[4];
    v35 = v17;
    v36 = *(v13 + 12);
    v18 = v13[1];
    v30 = *v13;
    v31 = v18;
    v19 = v13[2];
    v33 = v13[3];
    v32 = v19;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(v37, &qword_100AE69F0);
    (*(v26 + 8))(v7, v27);
  }

  v21 = *(&v33 + 1);
  if (qword_100AD0CC8 != -1)
  {
    swift_once();
  }

  v22 = v29;
  v23 = sub_10000617C(v29, qword_100B31568);
  (*(v3 + 16))(v5, v23, v22);
  v24 = Color.init(_:)();
  *a2 = v12;
  *(a2 + 8) = v24;
  *(a2 + 16) = v21;
  result = 0.0;
  *(a2 + 24) = xmmword_100959CE0;
  return result;
}

uint64_t sub_1007E5F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for InsightsBentoLayout() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1007E4848(a1, v8, v5, v6, a2);
}

uint64_t sub_1007E5FC0()
{
  v380 = type metadata accessor for ContainerValues();
  v0 = *(v380 - 8);
  __chkstk_darwin(v380);
  v379 = v340 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000F24EC(&qword_100ADB5E0);
  __chkstk_darwin(v2 - 8);
  v342 = v340 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v346 = v340 - v5;
  __chkstk_darwin(v6);
  v345 = v340 - v7;
  __chkstk_darwin(v8);
  v350 = v340 - v9;
  __chkstk_darwin(v10);
  v357 = v340 - v11;
  __chkstk_darwin(v12);
  v349 = v340 - v13;
  __chkstk_darwin(v14);
  v356 = v340 - v15;
  __chkstk_darwin(v16);
  v344 = v340 - v17;
  __chkstk_darwin(v18);
  v348 = v340 - v19;
  __chkstk_darwin(v20);
  v355 = v340 - v21;
  __chkstk_darwin(v22);
  v354 = v340 - v23;
  __chkstk_darwin(v24);
  v341 = v340 - v25;
  __chkstk_darwin(v26);
  v343 = v340 - v27;
  __chkstk_darwin(v28);
  v347 = v340 - v29;
  __chkstk_darwin(v30);
  v353 = v340 - v31;
  __chkstk_darwin(v32);
  v377 = v340 - v33;
  __chkstk_darwin(v34);
  v376 = v340 - v35;
  __chkstk_darwin(v36);
  v369 = v340 - v37;
  __chkstk_darwin(v38);
  v40 = v340 - v39;
  v368 = type metadata accessor for SectionLayout.Cell();
  v367 = *(v368 - 8);
  __chkstk_darwin(v368);
  v42 = v340 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = v340 - v44;
  __chkstk_darwin(v46);
  v48 = v340 - v47;
  __chkstk_darwin(v49);
  v384 = v340 - v50;
  v51 = type metadata accessor for LayoutSubviews();
  v358 = *(v51 - 8);
  __chkstk_darwin(v51);
  v352 = v340 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v351 = v340 - v54;
  __chkstk_darwin(v55);
  v375 = v340 - v56;
  __chkstk_darwin(v57);
  v374 = v340 - v58;
  __chkstk_darwin(v59);
  v61 = v340 - v60;
  v391 = _swiftEmptyArrayStorage;
  v62 = sub_1007EC56C(&qword_100AEB870, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  v63 = v390;
  result = dispatch thunk of Collection.endIndex.getter();
  if (v387 < v63)
  {
    __break(1u);
  }

  else
  {
    v388 = v63;
    v389 = v387;
    dispatch thunk of Collection.subscript.getter();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v65 = v51;
    v385 = v45;
    if (v388 != v390)
    {
      v66 = v384;
      v382 = (v358 + 16);
      v67 = (v358 + 8);
      v362 = (v0 + 8);
      v361 = (v358 + 32);
      v378 = xmmword_100940080;
      v360 = xmmword_100940050;
      v359 = xmmword_100942000;
      v366 = v40;
      v383 = v42;
      v381 = v48;
      v365 = v65;
      v373 = v61;
      v364 = v62;
      v363 = (v358 + 8);
      do
      {
        sub_100603D0C(v66);
        v72 = static ProposedViewSize.unspecified.getter();
        v73 = v66;
        v74 = v65;
        v75 = v368;
        v76 = v73 + *(v368 + 20);
        *v76 = v72;
        *(v76 + 8) = v77 & 1;
        *(v76 + 16) = v78;
        *(v76 + 24) = v79 & 1;
        v80 = (v73 + *(v75 + 24));
        *v80 = 0;
        v80[1] = 0;
        v81 = *v382;
        v82 = v375;
        (*v382)(v375, v61, v74);
        v83 = v61;
        v84 = v374;
        sub_1007A7250(1);
        sub_100603D0C(v48);
        v85 = *v67;
        v85(v84, v74);
        v86 = static ProposedViewSize.unspecified.getter();
        v87 = &v48[*(v75 + 20)];
        *v87 = v86;
        v87[8] = v88 & 1;
        *(v87 + 2) = v89;
        v87[24] = v90 & 1;
        v91 = &v48[*(v75 + 24)];
        *v91 = 0;
        *(v91 + 1) = 0;
        v81(v82, v83, v74);
        sub_1007A7250(2);
        v92 = v385;
        sub_100603D0C(v385);
        v85(v84, v74);
        v93 = static ProposedViewSize.unspecified.getter();
        v94 = v92 + *(v75 + 20);
        *v94 = v93;
        *(v94 + 8) = v95 & 1;
        *(v94 + 16) = v96;
        *(v94 + 24) = v97 & 1;
        v98 = (v92 + *(v75 + 24));
        *v98 = 0;
        v98[1] = 0;
        v372 = v81;
        v81(v82, v373, v74);
        v99 = v366;
        sub_1007A7250(3);
        v100 = v383;
        sub_100603D0C(v383);
        v371 = v85;
        v85(v84, v74);
        v101 = static ProposedViewSize.unspecified.getter();
        v102 = v100 + *(v75 + 20);
        *v102 = v101;
        *(v102 + 8) = v103 & 1;
        *(v102 + 16) = v104;
        *(v102 + 24) = v105 & 1;
        v106 = (v100 + *(v75 + 24));
        *v106 = 0;
        v106[1] = 0;
        sub_1000082B4(v384, v99, &qword_100ADB5E0);
        v107 = type metadata accessor for LayoutSubview();
        v108 = *(v107 - 8);
        v386 = *(v108 + 48);
        if (v386(v99, 1, v107) == 1)
        {
          sub_100004F84(v99, &qword_100ADB5E0);
          v109 = 4;
          v110 = v362;
        }

        else
        {
          v111 = v379;
          LayoutSubview.containerValues.getter();
          (*(v108 + 8))(v99, v107);
          sub_100504E54();
          ContainerValues.subscript.getter();
          v110 = v362;
          (*v362)(v111, v380);
          v109 = v388;
        }

        v112 = v369;
        sub_1000082B4(v381, v369, &qword_100ADB5E0);
        if (v386(v112, 1, v107) == 1)
        {
          sub_100004F84(v112, &qword_100ADB5E0);
          v113 = 4;
        }

        else
        {
          v114 = v379;
          LayoutSubview.containerValues.getter();
          (*(v108 + 8))(v112, v107);
          sub_100504E54();
          ContainerValues.subscript.getter();
          (*v110)(v114, v380);
          v113 = v388;
        }

        v115 = v376;
        sub_1000082B4(v385, v376, &qword_100ADB5E0);
        if (v386(v115, 1, v107) == 1)
        {
          sub_100004F84(v376, &qword_100ADB5E0);
          v116 = 4;
        }

        else
        {
          v117 = v379;
          v118 = v376;
          LayoutSubview.containerValues.getter();
          (*(v108 + 8))(v118, v107);
          sub_100504E54();
          ContainerValues.subscript.getter();
          (*v110)(v117, v380);
          v116 = v388;
        }

        v119 = v377;
        sub_1000082B4(v383, v377, &qword_100ADB5E0);
        if (v386(v119, 1, v107) == 1)
        {
          sub_100004F84(v377, &qword_100ADB5E0);
          v120 = 1;
        }

        else
        {
          v121 = v377;
          v122 = v379;
          LayoutSubview.containerValues.getter();
          (*(v108 + 8))(v121, v107);
          sub_100504E54();
          ContainerValues.subscript.getter();
          (*v110)(v122, v380);
          v120 = v388 != 0;
        }

        if (*v370 <= 1u)
        {
          if (*v370)
          {
            if (v109 == 2)
            {
              if (v113 == 1 && v116 == 1)
              {
                v162 = v384;
                v163 = v355;
                sub_1000082B4(v384, v355, &qword_100ADB5E0);
                if (v386(v163, 1, v107) == 1)
                {
                  sub_100004F84(v163, &qword_100ADB5E0);
                  v61 = v373;
                  goto LABEL_91;
                }

                v207 = v163;
                v208 = v379;
                LayoutSubview.containerValues.getter();
                (*(v108 + 8))(v207, v107);
                sub_100520804();
                ContainerValues.subscript.getter();
                (*v110)(v208, v380);
                v61 = v373;
                if (v388)
                {
                  sub_1000F24EC(&qword_100AE2CE8);
                  inited = swift_initStackObject();
                  *(inited + 16) = v360;
                  v386 = sub_1000F24EC(&qword_100AE2CF8);
                  v210 = v162;
                  v211 = swift_allocObject();
                  *(v211 + 16) = v378;
                  sub_1000F24EC(&qword_100AE2CF0);
                  v212 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                  v213 = swift_allocObject();
                  *(v213 + 16) = v378;
                  sub_1007EB1A4(v210, v213 + v212, type metadata accessor for SectionLayout.Cell);
                  *(v211 + 32) = v213;
                  *(v211 + 40) = 1;
                  *(v211 + 48) = 0;
                  *(v211 + 56) = 0;
                  *(v211 + 64) = 0;
                  *(inited + 32) = 1;
                  *(inited + 40) = v211;
                  *(inited + 48) = 0;
                  v214 = swift_allocObject();
                  *(v214 + 16) = v360;
                  v215 = swift_allocObject();
                  *(v215 + 16) = v378;
                  sub_1007EB1A4(v381, v215 + v212, type metadata accessor for SectionLayout.Cell);
                  *(v214 + 32) = v215;
                  *(v214 + 40) = 1;
                  *(v214 + 48) = 0;
                  *(v214 + 56) = 0;
                  *(v214 + 64) = 0;
                  v216 = swift_allocObject();
                  *(v216 + 16) = v378;
                  sub_1007EB1A4(v385, v216 + v212, type metadata accessor for SectionLayout.Cell);
                  *(v214 + 72) = v216;
                  *(v214 + 80) = 1;
                  *(v214 + 88) = 0;
                  *(v214 + 96) = 0;
                  *(v214 + 104) = 0;
                  *(inited + 56) = 2;
                  *(inited + 64) = v214;
                  *(inited + 72) = 0;
                  sub_1006AE1F4(inited);
                  v133 = v383;
                  v135 = v371;
                  v217 = v372;
LABEL_159:
                  v65 = v365;
                  v217(v375, v61, v365);
                  v310 = v374;
                  v311 = 3;
                  goto LABEL_170;
                }

LABEL_91:
                v218 = v348;
                sub_1000082B4(v381, v348, &qword_100ADB5E0);
                if (v386(v218, 1, v107) == 1)
                {
                  sub_100004F84(v218, &qword_100ADB5E0);
                  v219 = v385;
                  goto LABEL_120;
                }

                v250 = v379;
                LayoutSubview.containerValues.getter();
                (*(v108 + 8))(v218, v107);
                sub_100520804();
                ContainerValues.subscript.getter();
                (*v110)(v250, v380);
                v219 = v385;
                if (v388)
                {
                  v251 = v385;
                  sub_1000F24EC(&qword_100AE2CF8);
                  v252 = swift_allocObject();
                  *(v252 + 16) = v360;
                  sub_1000F24EC(&qword_100AE2CF0);
                  v253 = *(v367 + 72);
                  v254 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                  v255 = swift_allocObject();
                  *(v255 + 16) = v360;
                  sub_1007EB1A4(v162, v255 + v254, type metadata accessor for SectionLayout.Cell);
                  sub_1007EB1A4(v251, v255 + v254 + v253, type metadata accessor for SectionLayout.Cell);
                  *(v252 + 32) = v255;
                  *(v252 + 40) = 1;
                  *(v252 + 48) = 0;
                  *(v252 + 56) = 0;
                  *(v252 + 64) = 0;
                  v256 = swift_allocObject();
                  *(v256 + 16) = v378;
                  sub_1007EB1A4(v381, v256 + v254, type metadata accessor for SectionLayout.Cell);
                  *(v252 + 72) = v256;
                  *(v252 + 80) = 1;
                  *(v252 + 88) = 0;
                  *(v252 + 96) = 0;
                  *(v252 + 104) = 0;
                  v257 = v391;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v257 = sub_1003E7094(0, *(v257 + 2) + 1, 1, v257);
                  }

                  v133 = v383;
LABEL_157:
                  v135 = v371;
                  v217 = v372;
                  v303 = *(v257 + 2);
                  v302 = *(v257 + 3);
                  v304 = v303 + 1;
                  if (v303 < v302 >> 1)
                  {
LABEL_158:
                    *(v257 + 2) = v304;
                    v309 = &v257[3 * v303];
                    *(v309 + 4) = 2;
                    *(v309 + 5) = v252;
                    v309[6] = 0.0;
                    v391 = v257;
                    goto LABEL_159;
                  }

LABEL_154:
                  v257 = sub_1003E7094((v302 > 1), v304, 1, v257);
                  goto LABEL_158;
                }

LABEL_120:
                v258 = v344;
                sub_1000082B4(v219, v344, &qword_100ADB5E0);
                if (v386(v258, 1, v107) == 1)
                {
                  sub_100004F84(v258, &qword_100ADB5E0);
                  v133 = v383;
                }

                else
                {
                  v297 = v379;
                  LayoutSubview.containerValues.getter();
                  (*(v108 + 8))(v258, v107);
                  sub_100520804();
                  ContainerValues.subscript.getter();
                  (*v110)(v297, v380);
                  v133 = v383;
                  if (v388)
                  {
                    sub_1000F24EC(&qword_100AE2CF8);
                    v252 = swift_allocObject();
                    *(v252 + 16) = v360;
                    sub_1000F24EC(&qword_100AE2CF0);
                    v298 = *(v367 + 72);
                    v299 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                    v300 = swift_allocObject();
                    *(v300 + 16) = v360;
                    sub_1007EB1A4(v381, v300 + v299, type metadata accessor for SectionLayout.Cell);
                    sub_1007EB1A4(v384, v300 + v299 + v298, type metadata accessor for SectionLayout.Cell);
                    *(v252 + 32) = v300;
                    *(v252 + 40) = 1;
                    *(v252 + 48) = 0;
                    *(v252 + 56) = 0;
                    *(v252 + 64) = 0;
                    v301 = swift_allocObject();
                    *(v301 + 16) = v378;
                    sub_1007EB1A4(v385, v301 + v299, type metadata accessor for SectionLayout.Cell);
                    *(v252 + 72) = v301;
                    *(v252 + 80) = 1;
                    *(v252 + 88) = 0;
                    *(v252 + 96) = 0;
                    *(v252 + 104) = 0;
                    v257 = v391;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v257 = sub_1003E7094(0, *(v257 + 2) + 1, 1, v257);
                    }

                    v135 = v371;
                    v217 = v372;
                    v303 = *(v257 + 2);
                    v302 = *(v257 + 3);
                    v304 = v303 + 1;
                    v133 = v383;
                    if (v303 < v302 >> 1)
                    {
                      goto LABEL_158;
                    }

                    goto LABEL_154;
                  }
                }

                sub_1000F24EC(&qword_100AE2CF8);
                v252 = swift_allocObject();
                *(v252 + 16) = v360;
                sub_1000F24EC(&qword_100AE2CF0);
                v305 = *(v367 + 72);
                v306 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                v307 = swift_allocObject();
                *(v307 + 16) = v378;
                sub_1007EB1A4(v384, v307 + v306, type metadata accessor for SectionLayout.Cell);
                *(v252 + 32) = v307;
                *(v252 + 40) = 1;
                *(v252 + 48) = 0;
                *(v252 + 56) = 0;
                *(v252 + 64) = 0;
                v308 = swift_allocObject();
                *(v308 + 16) = v360;
                sub_1007EB1A4(v381, v308 + v306, type metadata accessor for SectionLayout.Cell);
                sub_1007EB1A4(v385, v308 + v306 + v305, type metadata accessor for SectionLayout.Cell);
                *(v252 + 72) = v308;
                *(v252 + 80) = 1;
                *(v252 + 88) = 1;
                *(v252 + 96) = 0;
                *(v252 + 104) = 0;
                v257 = v391;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v257 = sub_1003E7094(0, *(v257 + 2) + 1, 1, v257);
                }

                goto LABEL_157;
              }
            }

            else if (!v109 && !v113 && (v116 | 4) == 4)
            {
              v123 = v384;
              v124 = v353;
              sub_1000082B4(v384, v353, &qword_100ADB5E0);
              if (v386(v124, 1, v107) == 1)
              {
                sub_100004F84(v124, &qword_100ADB5E0);
                goto LABEL_74;
              }

              v166 = v124;
              v167 = v379;
              LayoutSubview.containerValues.getter();
              (*(v108 + 8))(v166, v107);
              sub_100520804();
              ContainerValues.subscript.getter();
              (*v110)(v167, v380);
              if (v388)
              {
                sub_1000F24EC(&qword_100AE2CF8);
                v168 = swift_allocObject();
                *(v168 + 16) = v360;
                sub_1000F24EC(&qword_100AE2CF0);
                v169 = *(v367 + 72);
                v170 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                v171 = swift_allocObject();
                *(v171 + 16) = v378;
                sub_1007EB1A4(v123, v171 + v170, type metadata accessor for SectionLayout.Cell);
                *(v168 + 32) = v171;
                *(v168 + 40) = 2;
                *(v168 + 48) = 0;
                *(v168 + 56) = 0;
                *(v168 + 64) = 0;
                v172 = swift_allocObject();
                *(v172 + 16) = v360;
                sub_1007EB1A4(v381, v172 + v170, type metadata accessor for SectionLayout.Cell);
                v173 = v385;
                sub_1007EB1A4(v385, v172 + v170 + v169, type metadata accessor for SectionLayout.Cell);
                *(v168 + 72) = v172;
                *(v168 + 80) = 1;
                *(v168 + 88) = 1;
                *(v168 + 96) = 0;
                *(v168 + 104) = 0;
                v174 = v391;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v174 = sub_1003E7094(0, *(v174 + 2) + 1, 1, v174);
                }

                v61 = v373;
                v176 = *(v174 + 2);
                v175 = *(v174 + 3);
                v177 = v176 + 1;
                if (v176 < v175 >> 1)
                {
LABEL_73:
                  *(v174 + 2) = v177;
                  v178 = &v174[3 * v176];
                  v179 = 3;
                  goto LABEL_140;
                }

LABEL_97:
                v174 = sub_1003E7094((v175 > 1), v177, 1, v174);
                goto LABEL_73;
              }

LABEL_74:
              v180 = v347;
              sub_1000082B4(v381, v347, &qword_100ADB5E0);
              if (v386(v180, 1, v107) == 1)
              {
                sub_100004F84(v180, &qword_100ADB5E0);
                v181 = v385;
              }

              else
              {
                v220 = v379;
                LayoutSubview.containerValues.getter();
                (*(v108 + 8))(v180, v107);
                sub_100520804();
                ContainerValues.subscript.getter();
                (*v110)(v220, v380);
                v181 = v385;
                if (v388)
                {
                  sub_1000F24EC(&qword_100AE2CF8);
                  v168 = swift_allocObject();
                  *(v168 + 16) = v360;
                  sub_1000F24EC(&qword_100AE2CF0);
                  v221 = *(v367 + 72);
                  v222 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                  v223 = swift_allocObject();
                  *(v223 + 16) = v360;
                  sub_1007EB1A4(v384, v223 + v222, type metadata accessor for SectionLayout.Cell);
                  sub_1007EB1A4(v385, v223 + v222 + v221, type metadata accessor for SectionLayout.Cell);
                  *(v168 + 32) = v223;
                  *(v168 + 40) = 1;
                  *(v168 + 48) = 1;
                  *(v168 + 56) = 0;
                  *(v168 + 64) = 0;
                  v224 = swift_allocObject();
                  *(v224 + 16) = v378;
                  sub_1007EB1A4(v381, v224 + v222, type metadata accessor for SectionLayout.Cell);
                  *(v168 + 72) = v224;
                  *(v168 + 80) = 2;
                  *(v168 + 88) = 0;
                  *(v168 + 96) = 0;
                  *(v168 + 104) = 0;
                  v174 = v391;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v174 = sub_1003E7094(0, *(v174 + 2) + 1, 1, v174);
                  }

                  v61 = v373;
                  v176 = *(v174 + 2);
                  v175 = *(v174 + 3);
                  v177 = v176 + 1;
                  v173 = v385;
                  if (v176 < v175 >> 1)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_97;
                }
              }

              v225 = v343;
              sub_1000082B4(v181, v343, &qword_100ADB5E0);
              if (v386(v225, 1, v107) == 1)
              {
                sub_100004F84(v225, &qword_100ADB5E0);
LABEL_134:
                v278 = v341;
                sub_1000082B4(v181, v341, &qword_100ADB5E0);
                v279 = v386(v278, 1, v107);
                sub_100004F84(v278, &qword_100ADB5E0);
                sub_1000F24EC(&qword_100AE2CF8);
                if (v279 == 1)
                {
                  v168 = swift_allocObject();
                  *(v168 + 16) = v360;
                  sub_1000F24EC(&qword_100AE2CF0);
                  v280 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                  v281 = swift_allocObject();
                  *(v281 + 16) = v378;
                  sub_1007EB1A4(v384, v281 + v280, type metadata accessor for SectionLayout.Cell);
                  *(v168 + 32) = v281;
                  *(v168 + 40) = 1;
                  *(v168 + 48) = 0;
                  *(v168 + 56) = 0;
                  *(v168 + 64) = 0;
                  v282 = swift_allocObject();
                  *(v282 + 16) = v378;
                  sub_1007EB1A4(v381, v282 + v280, type metadata accessor for SectionLayout.Cell);
                  *(v168 + 72) = v282;
                  *(v168 + 80) = 1;
                  *(v168 + 88) = 0;
                  *(v168 + 96) = 0;
                  *(v168 + 104) = 0;
                  v174 = v391;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v174 = sub_1003E7094(0, *(v174 + 2) + 1, 1, v174);
                  }

                  v61 = v373;
                  v284 = *(v174 + 2);
                  v283 = *(v174 + 3);
                  v173 = v385;
                  if (v284 >= v283 >> 1)
                  {
                    v174 = sub_1003E7094((v283 > 1), v284 + 1, 1, v174);
                  }

                  *(v174 + 2) = v284 + 1;
                  v178 = &v174[3 * v284];
                  v179 = 2;
LABEL_140:
                  *(v178 + 4) = v179;
                  *(v178 + 5) = v168;
                }

                else
                {
                  v328 = swift_allocObject();
                  *(v328 + 16) = v359;
                  sub_1000F24EC(&qword_100AE2CF0);
                  v329 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                  v330 = swift_allocObject();
                  *(v330 + 16) = v378;
                  sub_1007EB1A4(v384, v330 + v329, type metadata accessor for SectionLayout.Cell);
                  *(v328 + 32) = v330;
                  *(v328 + 40) = 1;
                  *(v328 + 48) = 0;
                  *(v328 + 56) = 0;
                  *(v328 + 64) = 0;
                  v331 = swift_allocObject();
                  *(v331 + 16) = v378;
                  sub_1007EB1A4(v381, v331 + v329, type metadata accessor for SectionLayout.Cell);
                  *(v328 + 72) = v331;
                  *(v328 + 80) = 1;
                  *(v328 + 88) = 0;
                  *(v328 + 96) = 0;
                  *(v328 + 104) = 0;
                  v332 = swift_allocObject();
                  *(v332 + 16) = v378;
                  v173 = v385;
                  sub_1007EB1A4(v385, v332 + v329, type metadata accessor for SectionLayout.Cell);
                  *(v328 + 112) = v332;
                  *(v328 + 120) = 1;
                  *(v328 + 128) = 0;
                  *(v328 + 136) = 0;
                  *(v328 + 144) = 0;
                  v174 = v391;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v174 = sub_1003E7094(0, *(v174 + 2) + 1, 1, v174);
                  }

                  v61 = v373;
                  v334 = *(v174 + 2);
                  v333 = *(v174 + 3);
                  if (v334 >= v333 >> 1)
                  {
                    v174 = sub_1003E7094((v333 > 1), v334 + 1, 1, v174);
                  }

                  *(v174 + 2) = v334 + 1;
                  v178 = &v174[3 * v334];
                  *(v178 + 4) = 3;
                  *(v178 + 5) = v328;
                }
              }

              else
              {
                v270 = v379;
                LayoutSubview.containerValues.getter();
                (*(v108 + 8))(v225, v107);
                sub_100520804();
                ContainerValues.subscript.getter();
                (*v110)(v270, v380);
                if ((v388 & 1) == 0)
                {
                  goto LABEL_134;
                }

                sub_1000F24EC(&qword_100AE2CF8);
                v271 = swift_allocObject();
                *(v271 + 16) = v360;
                v340[1] = sub_1000F24EC(&qword_100AE2CF0);
                v272 = *(v367 + 72);
                v273 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                v274 = swift_allocObject();
                *(v274 + 16) = v360;
                sub_1007EB1A4(v384, v274 + v273, type metadata accessor for SectionLayout.Cell);
                sub_1007EB1A4(v381, v274 + v273 + v272, type metadata accessor for SectionLayout.Cell);
                *(v271 + 32) = v274;
                *(v271 + 40) = 1;
                *(v271 + 48) = 1;
                *(v271 + 56) = 0;
                *(v271 + 64) = 0;
                v173 = v385;
                v275 = swift_allocObject();
                *(v275 + 16) = v378;
                sub_1007EB1A4(v173, v275 + v273, type metadata accessor for SectionLayout.Cell);
                *(v271 + 72) = v275;
                *(v271 + 80) = 2;
                *(v271 + 88) = 0;
                *(v271 + 96) = 0;
                *(v271 + 104) = 0;
                v174 = v391;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v174 = sub_1003E7094(0, *(v174 + 2) + 1, 1, v174);
                }

                v61 = v373;
                v277 = *(v174 + 2);
                v276 = *(v174 + 3);
                if (v277 >= v276 >> 1)
                {
                  v174 = sub_1003E7094((v276 > 1), v277 + 1, 1, v174);
                }

                *(v174 + 2) = v277 + 1;
                v178 = &v174[3 * v277];
                *(v178 + 4) = 3;
                *(v178 + 5) = v271;
              }

              v178[6] = 0.0;
              v391 = v174;
              v335 = v365;
              v372(v352, v61, v365);
              v336 = v354;
              sub_1000082B4(v173, v354, &qword_100ADB5E0);
              if (v386(v336, 1, v107) == 1)
              {
                v337 = 2;
              }

              else
              {
                v337 = 3;
              }

              v338 = v336;
              v65 = v335;
              sub_100004F84(v338, &qword_100ADB5E0);
              v339 = v351;
              sub_1007A7250(v337);
              v71 = v339;
              v48 = v381;
              v135 = v371;
              v133 = v383;
              goto LABEL_7;
            }
          }

          sub_1000F24EC(&qword_100AE2CF8);
          v129 = swift_allocObject();
          *(v129 + 16) = v378;
          sub_1000F24EC(&qword_100AE2CF0);
          v130 = (*(v367 + 80) + 32) & ~*(v367 + 80);
          v131 = swift_allocObject();
          *(v131 + 16) = v378;
          sub_1007EB1A4(v384, v131 + v130, type metadata accessor for SectionLayout.Cell);
          *(v129 + 32) = v131;
          *(v129 + 40) = 1;
          *(v129 + 48) = 0;
          *(v129 + 56) = 0;
          *(v129 + 64) = 0;
          v132 = v391;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v132 = sub_1003E7094(0, *(v132 + 2) + 1, 1, v132);
          }

          v133 = v383;
          v134 = v381;
          v61 = v373;
          v135 = v371;
          v136 = v372;
          v138 = *(v132 + 2);
          v137 = *(v132 + 3);
          if (v138 >= v137 >> 1)
          {
            v132 = sub_1003E7094((v137 > 1), v138 + 1, 1, v132);
          }

          *(v132 + 2) = v138 + 1;
          v68 = &v132[3 * v138];
          *(v68 + 4) = 1;
          *(v68 + 5) = v129;
          v68[6] = 0.0;
          v391 = v132;
          v65 = v365;
          v136(v375, v61, v365);
          v69 = v374;
          v70 = 1;
          goto LABEL_6;
        }

        if (*v370 == 2)
        {
          if (v109 == 3)
          {
            if (v113 != 4 && (v113 | v116) == 0 && !v120)
            {
              v164 = v357;
              sub_1000082B4(v381, v357, &qword_100ADB5E0);
              if (v386(v164, 1, v107) == 1)
              {
                sub_100004F84(v164, &qword_100ADB5E0);
                v165 = v385;
                goto LABEL_87;
              }

              v196 = v164;
              v197 = v379;
              LayoutSubview.containerValues.getter();
              (*(v108 + 8))(v196, v107);
              sub_100520804();
              ContainerValues.subscript.getter();
              (*v110)(v197, v380);
              v165 = v385;
              if (v388)
              {
                v198 = v385;
                sub_1000F24EC(&qword_100AE2CF8);
                v199 = swift_allocObject();
                *(v199 + 16) = v359;
                sub_1000F24EC(&qword_100AE2CF0);
                v200 = *(v367 + 72);
                v201 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                v202 = swift_allocObject();
                *(v202 + 16) = v378;
                sub_1007EB1A4(v384, v202 + v201, type metadata accessor for SectionLayout.Cell);
                *(v199 + 32) = v202;
                *(v199 + 40) = 2;
                *(v199 + 48) = 0;
                *(v199 + 56) = 0;
                *(v199 + 64) = 0;
                v203 = swift_allocObject();
                *(v203 + 16) = v360;
                sub_1007EB1A4(v383, v203 + v201, type metadata accessor for SectionLayout.Cell);
                sub_1007EB1A4(v198, v203 + v201 + v200, type metadata accessor for SectionLayout.Cell);
                *(v199 + 72) = v203;
                *(v199 + 80) = 1;
                *(v199 + 88) = 1;
                *(v199 + 96) = 0;
                *(v199 + 104) = 0;
                v204 = swift_allocObject();
                *(v204 + 16) = v378;
                sub_1007EB1A4(v381, v204 + v201, type metadata accessor for SectionLayout.Cell);
                *(v199 + 112) = v204;
                *(v199 + 120) = 2;
                *(v199 + 128) = 0;
                *(v199 + 136) = 0;
                *(v199 + 144) = 0;
                v205 = v391;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v205 = sub_1003E7094(0, *(v205 + 2) + 1, 1, v205);
                }

                v61 = v373;
LABEL_112:
                v135 = v371;
                v244 = v372;
                v246 = *(v205 + 2);
                v245 = *(v205 + 3);
                v247 = v246 + 1;
                v133 = v383;
                if (v246 < v245 >> 1)
                {
LABEL_113:
                  *(v205 + 2) = v247;
                  v248 = &v205[3 * v246];
                  *(v248 + 4) = 5;
                  *(v248 + 5) = v199;
                  v248[6] = 0.0;
                  v391 = v205;
                  v65 = v365;
                  v244(v375, v61, v365);
                  goto LABEL_169;
                }

LABEL_149:
                v205 = sub_1003E7094((v245 > 1), v247, 1, v205);
                goto LABEL_113;
              }

LABEL_87:
              v206 = v350;
              sub_1000082B4(v165, v350, &qword_100ADB5E0);
              if (v386(v206, 1, v107) == 1)
              {
                sub_100004F84(v206, &qword_100ADB5E0);
                v61 = v373;
              }

              else
              {
                v237 = v379;
                LayoutSubview.containerValues.getter();
                (*(v108 + 8))(v206, v107);
                sub_100520804();
                ContainerValues.subscript.getter();
                (*v110)(v237, v380);
                v61 = v373;
                if (v388)
                {
                  sub_1000F24EC(&qword_100AE2CF8);
                  v199 = swift_allocObject();
                  *(v199 + 16) = v359;
                  sub_1000F24EC(&qword_100AE2CF0);
                  v238 = *(v367 + 72);
                  v239 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                  v240 = swift_allocObject();
                  *(v240 + 16) = v378;
                  sub_1007EB1A4(v384, v240 + v239, type metadata accessor for SectionLayout.Cell);
                  *(v199 + 32) = v240;
                  *(v199 + 40) = 2;
                  *(v199 + 48) = 0;
                  *(v199 + 56) = 0;
                  *(v199 + 64) = 0;
                  v241 = swift_allocObject();
                  *(v241 + 16) = v360;
                  sub_1007EB1A4(v383, v241 + v239, type metadata accessor for SectionLayout.Cell);
                  sub_1007EB1A4(v381, v241 + v239 + v238, type metadata accessor for SectionLayout.Cell);
                  *(v199 + 72) = v241;
                  *(v199 + 80) = 1;
                  *(v199 + 88) = 1;
                  *(v199 + 96) = 0;
                  *(v199 + 104) = 0;
                  v242 = v385;
                  v243 = swift_allocObject();
                  *(v243 + 16) = v378;
                  sub_1007EB1A4(v242, v243 + v239, type metadata accessor for SectionLayout.Cell);
                  *(v199 + 112) = v243;
                  *(v199 + 120) = 2;
                  *(v199 + 128) = 0;
                  *(v199 + 136) = 0;
                  *(v199 + 144) = 0;
                  v205 = v391;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v205 = sub_1003E7094(0, *(v205 + 2) + 1, 1, v205);
                  }

                  goto LABEL_112;
                }
              }

              v249 = v345;
              sub_1000082B4(v383, v345, &qword_100ADB5E0);
              if (v386(v249, 1, v107) == 1)
              {
                sub_100004F84(v249, &qword_100ADB5E0);
              }

              else
              {
                v285 = v379;
                LayoutSubview.containerValues.getter();
                (*(v108 + 8))(v249, v107);
                sub_100520804();
                ContainerValues.subscript.getter();
                (*v110)(v285, v380);
                if (v388)
                {
                  sub_1000F24EC(&qword_100AE2CF8);
                  v199 = swift_allocObject();
                  *(v199 + 16) = v359;
                  sub_1000F24EC(&qword_100AE2CF0);
                  v286 = *(v367 + 72);
                  v287 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                  v288 = swift_allocObject();
                  *(v288 + 16) = v378;
                  sub_1007EB1A4(v384, v288 + v287, type metadata accessor for SectionLayout.Cell);
                  *(v199 + 32) = v288;
                  *(v199 + 40) = 2;
                  *(v199 + 48) = 0;
                  *(v199 + 56) = 0;
                  *(v199 + 64) = 0;
                  v289 = swift_allocObject();
                  *(v289 + 16) = v360;
                  sub_1007EB1A4(v381, v289 + v287, type metadata accessor for SectionLayout.Cell);
                  sub_1007EB1A4(v385, v289 + v287 + v286, type metadata accessor for SectionLayout.Cell);
                  *(v199 + 72) = v289;
                  *(v199 + 80) = 1;
                  *(v199 + 88) = 1;
                  *(v199 + 96) = 0;
                  *(v199 + 104) = 0;
                  v290 = swift_allocObject();
                  *(v290 + 16) = v378;
                  v133 = v383;
                  sub_1007EB1A4(v383, v290 + v287, type metadata accessor for SectionLayout.Cell);
                  *(v199 + 112) = v290;
                  *(v199 + 120) = 2;
                  *(v199 + 128) = 0;
                  *(v199 + 136) = 0;
                  *(v199 + 144) = 0;
                  v205 = v391;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v205 = sub_1003E7094(0, *(v205 + 2) + 1, 1, v205);
                  }

                  v135 = v371;
                  v244 = v372;
                  v246 = *(v205 + 2);
                  v245 = *(v205 + 3);
                  v247 = v246 + 1;
                  if (v246 < v245 >> 1)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_149;
                }
              }

              sub_1000F24EC(&qword_100AE2CF8);
              v199 = swift_allocObject();
              *(v199 + 16) = v360;
              sub_1000F24EC(&qword_100AE2CF0);
              v291 = *(v367 + 72);
              v292 = (*(v367 + 80) + 32) & ~*(v367 + 80);
              v293 = swift_allocObject();
              *(v293 + 16) = v378;
              sub_1007EB1A4(v384, v293 + v292, type metadata accessor for SectionLayout.Cell);
              *(v199 + 32) = v293;
              *(v199 + 40) = 3;
              *(v199 + 48) = 0;
              *(v199 + 56) = 0;
              *(v199 + 64) = 0;
              v294 = swift_allocObject();
              *(v294 + 16) = v359;
              v295 = v383;
              sub_1007EB1A4(v383, v294 + v292, type metadata accessor for SectionLayout.Cell);
              sub_1007EB1A4(v381, v294 + v292 + v291, type metadata accessor for SectionLayout.Cell);
              sub_1007EB1A4(v385, v294 + v292 + 2 * v291, type metadata accessor for SectionLayout.Cell);
              *(v199 + 72) = v294;
              *(v199 + 80) = 2;
              *(v199 + 88) = 0;
              *(v199 + 96) = 0;
              *(v199 + 104) = 0;
              v205 = v391;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v244 = v372;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v205 = sub_1003E7094(0, *(v205 + 2) + 1, 1, v205);
              }

              v135 = v371;
              v246 = *(v205 + 2);
              v245 = *(v205 + 3);
              v247 = v246 + 1;
              v133 = v295;
              if (v246 < v245 >> 1)
              {
                goto LABEL_113;
              }

              goto LABEL_149;
            }
          }

          else if (v109 == 2 && v113 == 1 && v116 == 1)
          {
            v125 = v356;
            sub_1000082B4(v381, v356, &qword_100ADB5E0);
            if (v386(v125, 1, v107) == 1)
            {
              sub_100004F84(v125, &qword_100ADB5E0);
              v126 = v385;
              goto LABEL_81;
            }

            v182 = v125;
            v183 = v379;
            LayoutSubview.containerValues.getter();
            (*(v108 + 8))(v182, v107);
            sub_100520804();
            ContainerValues.subscript.getter();
            (*v110)(v183, v380);
            v126 = v385;
            if (v388)
            {
              sub_1000F24EC(&qword_100AE2CF8);
              v184 = swift_allocObject();
              *(v184 + 16) = v360;
              sub_1000F24EC(&qword_100AE2CF0);
              v185 = *(v367 + 72);
              v186 = (*(v367 + 80) + 32) & ~*(v367 + 80);
              v187 = swift_allocObject();
              *(v187 + 16) = v360;
              sub_1007EB1A4(v384, v187 + v186, type metadata accessor for SectionLayout.Cell);
              sub_1007EB1A4(v126, v187 + v186 + v185, type metadata accessor for SectionLayout.Cell);
              *(v184 + 32) = v187;
              *(v184 + 40) = 3;
              *(v184 + 48) = 0;
              *(v184 + 56) = 0;
              *(v184 + 64) = 0;
              v188 = swift_allocObject();
              *(v188 + 16) = v378;
              v189 = v381;
              sub_1007EB1A4(v381, v188 + v186, type metadata accessor for SectionLayout.Cell);
              *(v184 + 72) = v188;
              *(v184 + 80) = 2;
              *(v184 + 88) = 0;
              *(v184 + 96) = 0;
              *(v184 + 104) = 0;
              v190 = v391;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v190 = sub_1003E7094(0, *(v190 + 2) + 1, 1, v190);
              }

              v133 = v383;
              v61 = v373;
              v135 = v371;
              v191 = v372;
              v193 = *(v190 + 2);
              v192 = *(v190 + 3);
              v194 = v193 + 1;
              if (v193 >= v192 >> 1)
              {
LABEL_80:
                v190 = sub_1003E7094((v192 > 1), v194, 1, v190);
              }

LABEL_108:
              *(v190 + 2) = v194;
              v235 = &v190[3 * v193];
              *(v235 + 4) = 5;
              *(v235 + 5) = v184;
              v235[6] = 0.0;
              v391 = v190;
              v65 = v365;
              v191(v375, v61, v365);
              v236 = v374;
              sub_1007A7250(3);
              v71 = v236;
              v48 = v189;
              goto LABEL_7;
            }

LABEL_81:
            v195 = v349;
            sub_1000082B4(v126, v349, &qword_100ADB5E0);
            if (v386(v195, 1, v107) == 1)
            {
              sub_100004F84(v195, &qword_100ADB5E0);
              v133 = v383;
              v61 = v373;
            }

            else
            {
              v226 = v379;
              LayoutSubview.containerValues.getter();
              (*(v108 + 8))(v195, v107);
              sub_100520804();
              ContainerValues.subscript.getter();
              (*v110)(v226, v380);
              v133 = v383;
              v61 = v373;
              v191 = v372;
              if (v388)
              {
                sub_1000F24EC(&qword_100AE2CF8);
                v184 = swift_allocObject();
                *(v184 + 16) = v360;
                v386 = sub_1000F24EC(&qword_100AE2CF0);
                v227 = *(v367 + 72);
                v228 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                v229 = swift_allocObject();
                *(v229 + 16) = v360;
                sub_1007EB1A4(v381, v229 + v228, type metadata accessor for SectionLayout.Cell);
                sub_1007EB1A4(v384, v229 + v228 + v227, type metadata accessor for SectionLayout.Cell);
                *(v184 + 32) = v229;
                *(v184 + 40) = 3;
                *(v184 + 48) = 0;
                *(v184 + 56) = 0;
                *(v184 + 64) = 0;
                v230 = swift_allocObject();
                *(v230 + 16) = v378;
                sub_1007EB1A4(v385, v230 + v228, type metadata accessor for SectionLayout.Cell);
                *(v184 + 72) = v230;
                *(v184 + 80) = 2;
                *(v184 + 88) = 0;
                *(v184 + 96) = 0;
                *(v184 + 104) = 0;
                v190 = v391;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v190 = sub_1003E7094(0, *(v190 + 2) + 1, 1, v190);
                }

                v135 = v371;
                v193 = *(v190 + 2);
                v192 = *(v190 + 3);
                v194 = v193 + 1;
                v189 = v381;
                v133 = v383;
                if (v193 >= v192 >> 1)
                {
                  goto LABEL_80;
                }

                goto LABEL_108;
              }
            }

            sub_1000F24EC(&qword_100AE2CF8);
            v184 = swift_allocObject();
            *(v184 + 16) = v360;
            sub_1000F24EC(&qword_100AE2CF0);
            v231 = *(v367 + 72);
            v232 = (*(v367 + 80) + 32) & ~*(v367 + 80);
            v233 = swift_allocObject();
            *(v233 + 16) = v378;
            sub_1007EB1A4(v384, v233 + v232, type metadata accessor for SectionLayout.Cell);
            *(v184 + 32) = v233;
            *(v184 + 40) = 3;
            *(v184 + 48) = 0;
            *(v184 + 56) = 0;
            *(v184 + 64) = 0;
            v234 = swift_allocObject();
            *(v234 + 16) = v360;
            v189 = v381;
            sub_1007EB1A4(v381, v234 + v232, type metadata accessor for SectionLayout.Cell);
            sub_1007EB1A4(v385, v234 + v232 + v231, type metadata accessor for SectionLayout.Cell);
            *(v184 + 72) = v234;
            *(v184 + 80) = 2;
            *(v184 + 88) = 1;
            *(v184 + 96) = 0;
            *(v184 + 104) = 0;
            v190 = v391;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v190 = sub_1003E7094(0, *(v190 + 2) + 1, 1, v190);
            }

            v135 = v371;
            v193 = *(v190 + 2);
            v192 = *(v190 + 3);
            v194 = v193 + 1;
            v191 = v372;
            if (v193 >= v192 >> 1)
            {
              goto LABEL_80;
            }

            goto LABEL_108;
          }

          sub_1000F24EC(&qword_100AE2CF8);
          v139 = swift_allocObject();
          *(v139 + 16) = v360;
          sub_1000F24EC(&qword_100AE2CF0);
          v140 = (*(v367 + 80) + 32) & ~*(v367 + 80);
          v141 = swift_allocObject();
          *(v141 + 16) = v378;
          sub_1007EB1A4(v384, v141 + v140, type metadata accessor for SectionLayout.Cell);
          *(v139 + 32) = v141;
          *(v139 + 40) = 3;
          *(v139 + 48) = 0;
          *(v139 + 56) = 0;
          *(v139 + 64) = 0;
          v142 = swift_allocObject();
          *(v142 + 16) = v378;
          v134 = v381;
          sub_1007EB1A4(v381, v142 + v140, type metadata accessor for SectionLayout.Cell);
          *(v139 + 72) = v142;
          *(v139 + 80) = 2;
          *(v139 + 88) = 0;
          *(v139 + 96) = 0;
          *(v139 + 104) = 0;
          v143 = v391;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v143 = sub_1003E7094(0, *(v143 + 2) + 1, 1, v143);
          }

          v133 = v383;
          v61 = v373;
          v135 = v371;
          v144 = v372;
        }

        else
        {
          if (v109 == 2)
          {
            if (v113 != 3)
            {
              goto LABEL_59;
            }
          }

          else
          {
            if (v109 != 3)
            {
              goto LABEL_59;
            }

            if (v113 != 3)
            {
              if (!v113 && v116 == 0 && !v120)
              {
                v127 = v346;
                sub_1000082B4(v381, v346, &qword_100ADB5E0);
                if (v386(v127, 1, v107) == 1)
                {
                  sub_100004F84(v127, &qword_100ADB5E0);
                  v128 = v385;
                  goto LABEL_126;
                }

                v259 = v127;
                v260 = v379;
                LayoutSubview.containerValues.getter();
                (*(v108 + 8))(v259, v107);
                sub_100520804();
                ContainerValues.subscript.getter();
                (*v110)(v260, v380);
                v128 = v385;
                if (v388)
                {
                  v261 = v385;
                  sub_1000F24EC(&qword_100AE2CF8);
                  v262 = swift_allocObject();
                  *(v262 + 16) = v359;
                  sub_1000F24EC(&qword_100AE2CF0);
                  v263 = *(v367 + 72);
                  v264 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                  v265 = swift_allocObject();
                  *(v265 + 16) = v378;
                  sub_1007EB1A4(v384, v265 + v264, type metadata accessor for SectionLayout.Cell);
                  *(v262 + 32) = v265;
                  *(v262 + 40) = 4;
                  *(v262 + 48) = 0;
                  *(v262 + 56) = 0;
                  *(v262 + 64) = 0;
                  v266 = swift_allocObject();
                  *(v266 + 16) = v360;
                  sub_1007EB1A4(v261, v266 + v264, type metadata accessor for SectionLayout.Cell);
                  sub_1007EB1A4(v383, v266 + v264 + v263, type metadata accessor for SectionLayout.Cell);
                  *(v262 + 72) = v266;
                  *(v262 + 80) = 3;
                  *(v262 + 88) = 1;
                  *(v262 + 96) = 0;
                  *(v262 + 104) = 0;
                  v267 = swift_allocObject();
                  *(v267 + 16) = v378;
                  sub_1007EB1A4(v381, v267 + v264, type metadata accessor for SectionLayout.Cell);
                  *(v262 + 112) = v267;
                  *(v262 + 120) = 3;
                  *(v262 + 128) = 0;
                  *(v262 + 136) = 0;
                  *(v262 + 144) = 0;
                  v268 = v391;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v268 = sub_1003E7094(0, *(v268 + 2) + 1, 1, v268);
                  }

                  v61 = v373;
LABEL_163:
                  v135 = v371;
                  v318 = v372;
                  v320 = *(v268 + 2);
                  v319 = *(v268 + 3);
                  v321 = v320 + 1;
                  v133 = v383;
                  if (v320 >= v319 >> 1)
                  {
                    goto LABEL_164;
                  }
                }

                else
                {
LABEL_126:
                  v269 = v342;
                  sub_1000082B4(v128, v342, &qword_100ADB5E0);
                  if (v386(v269, 1, v107) == 1)
                  {
                    sub_100004F84(v269, &qword_100ADB5E0);
                    v61 = v373;
                  }

                  else
                  {
                    v312 = v379;
                    LayoutSubview.containerValues.getter();
                    (*(v108 + 8))(v269, v107);
                    sub_100520804();
                    ContainerValues.subscript.getter();
                    (*v110)(v312, v380);
                    v61 = v373;
                    if (v388)
                    {
                      sub_1000F24EC(&qword_100AE2CF8);
                      v262 = swift_allocObject();
                      *(v262 + 16) = v359;
                      sub_1000F24EC(&qword_100AE2CF0);
                      v313 = *(v367 + 72);
                      v314 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                      v315 = swift_allocObject();
                      *(v315 + 16) = v378;
                      sub_1007EB1A4(v384, v315 + v314, type metadata accessor for SectionLayout.Cell);
                      *(v262 + 32) = v315;
                      *(v262 + 40) = 4;
                      *(v262 + 48) = 0;
                      *(v262 + 56) = 0;
                      *(v262 + 64) = 0;
                      v316 = swift_allocObject();
                      *(v316 + 16) = v360;
                      sub_1007EB1A4(v381, v316 + v314, type metadata accessor for SectionLayout.Cell);
                      sub_1007EB1A4(v383, v316 + v314 + v313, type metadata accessor for SectionLayout.Cell);
                      *(v262 + 72) = v316;
                      *(v262 + 80) = 3;
                      *(v262 + 88) = 1;
                      *(v262 + 96) = 0;
                      *(v262 + 104) = 0;
                      v317 = swift_allocObject();
                      *(v317 + 16) = v378;
                      sub_1007EB1A4(v385, v317 + v314, type metadata accessor for SectionLayout.Cell);
                      *(v262 + 112) = v317;
                      *(v262 + 120) = 3;
                      *(v262 + 128) = 0;
                      *(v262 + 136) = 0;
                      *(v262 + 144) = 0;
                      v268 = v391;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v268 = sub_1003E7094(0, *(v268 + 2) + 1, 1, v268);
                      }

                      goto LABEL_163;
                    }
                  }

                  sub_1000F24EC(&qword_100AE2CF8);
                  v262 = swift_allocObject();
                  *(v262 + 16) = v359;
                  sub_1000F24EC(&qword_100AE2CF0);
                  v322 = *(v367 + 72);
                  v323 = (*(v367 + 80) + 32) & ~*(v367 + 80);
                  v324 = swift_allocObject();
                  *(v324 + 16) = v378;
                  sub_1007EB1A4(v384, v324 + v323, type metadata accessor for SectionLayout.Cell);
                  *(v262 + 32) = v324;
                  *(v262 + 40) = 4;
                  *(v262 + 48) = 0;
                  *(v262 + 56) = 0;
                  *(v262 + 64) = 0;
                  v325 = swift_allocObject();
                  *(v325 + 16) = v360;
                  sub_1007EB1A4(v381, v325 + v323, type metadata accessor for SectionLayout.Cell);
                  sub_1007EB1A4(v385, v325 + v323 + v322, type metadata accessor for SectionLayout.Cell);
                  *(v262 + 72) = v325;
                  *(v262 + 80) = 3;
                  *(v262 + 88) = 1;
                  *(v262 + 96) = 0;
                  *(v262 + 104) = 0;
                  v326 = swift_allocObject();
                  *(v326 + 16) = v378;
                  v133 = v383;
                  sub_1007EB1A4(v383, v326 + v323, type metadata accessor for SectionLayout.Cell);
                  *(v262 + 112) = v326;
                  *(v262 + 120) = 3;
                  *(v262 + 128) = 0;
                  *(v262 + 136) = 0;
                  *(v262 + 144) = 0;
                  v268 = v391;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v268 = sub_1003E7094(0, *(v268 + 2) + 1, 1, v268);
                  }

                  v135 = v371;
                  v318 = v372;
                  v320 = *(v268 + 2);
                  v319 = *(v268 + 3);
                  v321 = v320 + 1;
                  if (v320 >= v319 >> 1)
                  {
LABEL_164:
                    v268 = sub_1003E7094((v319 > 1), v321, 1, v268);
                  }
                }

                *(v268 + 2) = v321;
                v327 = &v268[3 * v320];
                *(v327 + 4) = 10;
                *(v327 + 5) = v262;
                v327[6] = 0.0;
                v391 = v268;
                v65 = v365;
                v318(v375, v61, v365);
LABEL_169:
                v310 = v374;
                v311 = 4;
LABEL_170:
                sub_1007A7250(v311);
                v71 = v310;
                v48 = v381;
                goto LABEL_7;
              }

LABEL_59:
              sub_1000F24EC(&qword_100AE2CF8);
              v152 = swift_allocObject();
              *(v152 + 16) = v359;
              sub_1000F24EC(&qword_100AE2CF0);
              v153 = (*(v367 + 80) + 32) & ~*(v367 + 80);
              v154 = swift_allocObject();
              *(v154 + 16) = v378;
              sub_1007EB1A4(v384, v154 + v153, type metadata accessor for SectionLayout.Cell);
              *(v152 + 32) = v154;
              *(v152 + 40) = 4;
              *(v152 + 48) = 0;
              *(v152 + 56) = 0;
              *(v152 + 64) = 0;
              v155 = swift_allocObject();
              *(v155 + 16) = v378;
              sub_1007EB1A4(v381, v155 + v153, type metadata accessor for SectionLayout.Cell);
              *(v152 + 72) = v155;
              *(v152 + 80) = 3;
              *(v152 + 88) = 0;
              *(v152 + 96) = 0;
              *(v152 + 104) = 0;
              v156 = swift_allocObject();
              *(v156 + 16) = v378;
              sub_1007EB1A4(v385, v156 + v153, type metadata accessor for SectionLayout.Cell);
              *(v152 + 112) = v156;
              *(v152 + 120) = 3;
              *(v152 + 128) = 0;
              *(v152 + 136) = 0;
              *(v152 + 144) = 0;
              v157 = v391;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v157 = sub_1003E7094(0, *(v157 + 2) + 1, 1, v157);
              }

              v133 = v383;
              v61 = v373;
              v135 = v371;
              v158 = v372;
              v160 = *(v157 + 2);
              v159 = *(v157 + 3);
              v134 = v381;
              if (v160 >= v159 >> 1)
              {
                v157 = sub_1003E7094((v159 > 1), v160 + 1, 1, v157);
              }

              *(v157 + 2) = v160 + 1;
              v161 = &v157[3 * v160];
              *(v161 + 4) = 10;
              *(v161 + 5) = v152;
              v161[6] = 0.0;
              v391 = v157;
              v65 = v365;
              v158(v375, v61, v365);
              v69 = v374;
              v70 = 3;
              goto LABEL_6;
            }
          }

          sub_1000F24EC(&qword_100AE2CF8);
          v139 = swift_allocObject();
          *(v139 + 16) = v360;
          sub_1000F24EC(&qword_100AE2CF0);
          v145 = (*(v367 + 80) + 32) & ~*(v367 + 80);
          v146 = swift_allocObject();
          *(v146 + 16) = v378;
          sub_1007EB1A4(v384, v146 + v145, type metadata accessor for SectionLayout.Cell);
          *(v139 + 32) = v146;
          *(v139 + 40) = 2;
          *(v139 + 48) = 0;
          *(v139 + 56) = 0;
          *(v139 + 64) = 0;
          v147 = swift_allocObject();
          *(v147 + 16) = v378;
          v134 = v381;
          sub_1007EB1A4(v381, v147 + v145, type metadata accessor for SectionLayout.Cell);
          *(v139 + 72) = v147;
          *(v139 + 80) = 3;
          *(v139 + 88) = 0;
          *(v139 + 96) = 0;
          *(v139 + 104) = 0;
          v143 = v391;
          v148 = swift_isUniquelyReferenced_nonNull_native();
          v144 = v372;
          if ((v148 & 1) == 0)
          {
            v143 = sub_1003E7094(0, *(v143 + 2) + 1, 1, v143);
          }

          v133 = v383;
          v61 = v373;
          v135 = v371;
        }

        v150 = *(v143 + 2);
        v149 = *(v143 + 3);
        if (v150 >= v149 >> 1)
        {
          v143 = sub_1003E7094((v149 > 1), v150 + 1, 1, v143);
        }

        *(v143 + 2) = v150 + 1;
        v151 = &v143[3 * v150];
        *(v151 + 4) = 5;
        *(v151 + 5) = v139;
        v151[6] = 0.0;
        v391 = v143;
        v65 = v365;
        v144(v375, v61, v365);
        v69 = v374;
        v70 = 2;
LABEL_6:
        sub_1007A7250(v70);
        v71 = v69;
        v48 = v134;
LABEL_7:
        sub_1007EB20C(v133, type metadata accessor for SectionLayout.Cell);
        sub_1007EB20C(v385, type metadata accessor for SectionLayout.Cell);
        sub_1007EB20C(v48, type metadata accessor for SectionLayout.Cell);
        v66 = v384;
        sub_1007EB20C(v384, type metadata accessor for SectionLayout.Cell);
        v67 = v363;
        v135(v61, v65);
        (*v361)(v61, v71, v65);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
      }

      while (v388 != v390);
    }

    (*(v358 + 8))(v61, v65);
    return v391;
  }

  return result;
}

uint64_t sub_1007E9F6C(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 10.0;
  }

  else
  {
    v6 = *&result;
  }

  if (v6 != *(a5 + 8))
  {
    *(a5 + 8) = v6;
    *(a5 + 16) = 0;
    v7 = *(v5 + 56);
    *(a5 + 24) = v7;
    v8 = *a5;
    v9 = *(*a5 + 16);
    if (v9)
    {
      v11 = 0;
      v12 = 0.0;
      v13 = 48;
      v14 = *a5;
      while (1)
      {

        *&result = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
        if ((result & 1) == 0)
        {
          *&result = COERCE_DOUBLE(sub_100692AFC(v8));
          v14 = result;
        }

        if (v11 >= *(v14 + 16))
        {
          break;
        }

        sub_1007EC3AC(v6, v7);
        *&result = COERCE_DOUBLE();
        v15 = *(v14 + 16);
        if (v11 >= v15)
        {
          goto LABEL_18;
        }

        v16 = v11 == v15 - 1;
        v17 = v11 + 1;
        if (v16)
        {
          v12 = v12 + *(v14 + v13);
        }

        else
        {
          v12 = v7 + v12 + *(v14 + v13);
        }

        v13 += 24;
        ++v11;
        v8 = v14;
        if (v9 == v17)
        {
          *a5 = v14;
          *(a5 + 16) = v12;
          return result;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1007EA094(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6, uint64_t a7, double *a8)
{
  v86 = a5;
  v15 = sub_1000F24EC(&qword_100ADB5E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v94 = &v84 - v19;
  __chkstk_darwin(v20);
  v99 = &v84 - v21;
  __chkstk_darwin(v22);
  v93 = &v84 - v23;
  v24 = type metadata accessor for SectionLayout.Cell();
  v101 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v92 = &v84 - v28;
  __chkstk_darwin(v29);
  v96 = &v84 - v30;
  __chkstk_darwin(v31);
  v95 = &v84 - v32;
  v118 = a2 & 1;
  v117 = a4 & 1;
  sub_1007E9F6C(a1, a2 & 1, a3, a4 & 1, a8);
  result = *a8;
  v88 = *(*a8 + 16);
  if (v88)
  {
    v34 = *(v8 + 56);
    v35 = a8[3];
    v87 = result + 32;
    v108 = v26 + 8;

    v36 = 0;
    v37 = &unk_10094B3A8;
    v107 = v26;
    v85 = result;
    while (v36 < *(result + 16))
    {
      v38 = v87 + 24 * v36;
      v39 = *(v38 + 8);
      v40 = *(v38 + 16);
      v103 = *(v39 + 16);
      if (v103)
      {
        v90 = v36;
        v102 = v39 + 32;
        v89 = v39;

        v41 = 0;
        v42 = v86;
        do
        {
          v43 = (v102 + 40 * v41);
          v44 = *v43;
          v45 = v43[3];
          v46 = *(*v43 + 16);
          if (v46)
          {
            v105 = v41;
            v104 = v44;
            if (v46 == 3)
            {
              v97 = v44 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
              v47 = v95;
              sub_1007EB1A4(v97, v95, type metadata accessor for SectionLayout.Cell);
              v48 = v93;
              sub_1000082B4(v47, v93, &qword_100ADB5E0);
              v49 = type metadata accessor for LayoutSubview();
              v50 = *(v49 - 8);
              v51 = *(v50 + 48);
              v106 = v50 + 48;
              v100 = v51;
              v52 = v51(v48, 1, v49);
              v98 = v50;
              if (v52 == 1)
              {

                sub_1007EB20C(v47, type metadata accessor for SectionLayout.Cell);
                sub_100004F84(v48, &qword_100ADB5E0);
                v53 = v96;
                v54 = v37;
              }

              else
              {
                v67 = v47 + *(v24 + 20);
                v68 = *(v67 + 8);
                v54 = v37;
                v69 = *(v67 + 24);

                static UnitPoint.topLeading.getter();
                v110 = v68;
                v109 = v69;
                LayoutSubview.place(at:anchor:proposal:)();
                sub_1007EB20C(v95, type metadata accessor for SectionLayout.Cell);
                (*(v50 + 8))(v48, v49);
                v53 = v96;
              }

              v70 = v49;
              v71 = *(v101 + 72);
              v72 = v97;
              sub_1007EB1A4(v97 + v71, v53, type metadata accessor for SectionLayout.Cell);
              v73 = v99;
              sub_1000082B4(v53, v99, &qword_100ADB5E0);
              if (v100(v73, 1, v70) == 1)
              {
                sub_1007EB20C(v53, type metadata accessor for SectionLayout.Cell);
                sub_100004F84(v99, &qword_100ADB5E0);
              }

              else
              {
                v74 = v53 + *(v24 + 20);
                v91 = v70;
                v75 = *(v74 + 8);
                v76 = *(v74 + 24);
                static UnitPoint.topLeading.getter();
                v112 = v75;
                v111 = v76;
                v77 = v99;
                v70 = v91;
                LayoutSubview.place(at:anchor:proposal:)();
                sub_1007EB20C(v96, type metadata accessor for SectionLayout.Cell);
                (*(v98 + 8))(v77, v70);
              }

              v78 = v92;
              sub_1007EB1A4(v72 + 2 * v71, v92, type metadata accessor for SectionLayout.Cell);
              v79 = v94;
              sub_1000082B4(v78, v94, &qword_100ADB5E0);
              if (v100(v79, 1, v70) == 1)
              {
                v37 = v54;
                sub_1007EB20C(v78, type metadata accessor for SectionLayout.Cell);
                sub_100004F84(v79, &qword_100ADB5E0);
              }

              else
              {
                v80 = v78 + *(v24 + 20);
                v81 = v70;
                v82 = *(v80 + 8);
                v83 = *(v80 + 24);
                static UnitPoint.topLeading.getter();
                v114 = v82;
                v113 = v83;
                v37 = &unk_10094B3A8;
                LayoutSubview.place(at:anchor:proposal:)();
                sub_1007EB20C(v78, type metadata accessor for SectionLayout.Cell);
                (*(v98 + 8))(v79, v81);
              }

              v26 = v107;
            }

            else
            {
              v55 = v101;
              v56 = v44 + ((*(v55 + 80) + 32) & ~*(v55 + 80));

              v57 = *(v55 + 72);
              v58 = a6;
              v106 = v57;
              do
              {
                sub_1007EB1A4(v56, v26, type metadata accessor for SectionLayout.Cell);
                sub_1000082B4(v26, v17, &qword_100ADB5E0);
                v60 = type metadata accessor for LayoutSubview();
                v61 = *(v60 - 8);
                if ((*(v61 + 48))(v17, 1, v60) == 1)
                {
                  sub_100004F84(v17, &qword_100ADB5E0);
                }

                else
                {
                  v62 = &v26[*(v24 + 20)];
                  v63 = v62[8];
                  v64 = v24;
                  v65 = v17;
                  v66 = v62[24];
                  static UnitPoint.topLeading.getter();
                  v116 = v63;
                  v115 = v66;
                  v17 = v65;
                  v24 = v64;
                  v37 = &unk_10094B3A8;
                  v57 = v106;
                  v26 = v107;
                  LayoutSubview.place(at:anchor:proposal:)();
                  (*(v61 + 8))(v17, v60);
                }

                v59 = *&v108[*(v24 + 24)];
                sub_1007EB20C(v26, type metadata accessor for SectionLayout.Cell);
                v58 = v35 + v58 + v59;
                v56 += v57;
                --v46;
              }

              while (v46);
            }

            v41 = v105;
          }

          ++v41;
          v42 = v35 + v42 + v45;
        }

        while (v41 != v103);

        result = v85;
        v36 = v90;
      }

      ++v36;
      a6 = v34 + a6 + v40;
      if (v36 == v88)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1007EAA8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007E5FC0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

void (*sub_1007EABFC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100113D90;
}

unint64_t sub_1007EAC88()
{
  result = qword_100AF2BC8;
  if (!qword_100AF2BC8)
  {
    sub_1000F2A18(&qword_100AF2BA0);
    sub_1007EAD14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2BC8);
  }

  return result;
}

unint64_t sub_1007EAD14()
{
  result = qword_100AF2BD0;
  if (!qword_100AF2BD0)
  {
    sub_1000F2A18(&qword_100AF2B98);
    sub_1007EADCC();
    sub_10000B58C(&qword_100AD21E0, &qword_100AD21E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2BD0);
  }

  return result;
}

unint64_t sub_1007EADCC()
{
  result = qword_100AF2BD8;
  if (!qword_100AF2BD8)
  {
    sub_1000F2A18(&qword_100AF2BC0);
    sub_10000B58C(&qword_100AF2BE0, &qword_100AF2BE8);
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2BD8);
  }

  return result;
}

__n128 sub_1007EAEB8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1007EAEE4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[105])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1007EAF28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1007EAF98()
{
  result = qword_100AF2C10;
  if (!qword_100AF2C10)
  {
    sub_1000F2A18(&qword_100AF2B60);
    sub_1007EB050();
    sub_10000B58C(&qword_100AF2C28, &qword_100AF2C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C10);
  }

  return result;
}

unint64_t sub_1007EB050()
{
  result = qword_100AF2C18;
  if (!qword_100AF2C18)
  {
    sub_1000F2A18(&qword_100AF2C20);
    sub_10000B58C(&qword_100AF2B58, &qword_100AF2B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C18);
  }

  return result;
}

unint64_t sub_1007EB104()
{
  result = qword_100AF2C38;
  if (!qword_100AF2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C38);
  }

  return result;
}

uint64_t type metadata accessor for SectionLayout.Cell()
{
  result = qword_100AF2CA0;
  if (!qword_100AF2CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007EB1A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007EB20C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007EB26C(double a1, double a2)
{
  v7 = type metadata accessor for SectionLayout.Cell();
  v110 = *(v7 - 8);
  __chkstk_darwin(v7);
  *&v109 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100AF2C40);
  __chkstk_darwin(v9 - 8);
  *&v106 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v100 - v12);
  __chkstk_darwin(v14);
  v16 = &v100 - v15;
  __chkstk_darwin(v17);
  v101 = &v100 - v18;
  __chkstk_darwin(v19);
  v21 = &v100 - v20;
  __chkstk_darwin(v22);
  v24 = &v100 - v23;
  v25 = type metadata accessor for LayoutSubview();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v107 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v2 + 8);
  if (__OFSUB__(v28, 1))
  {
    goto LABEL_72;
  }

  v29 = v28 * a1;
  v30 = (v28 - 1) * a2;
  v4 = v29 + v30;
  *(v2 + 24) = v29 + v30;
  v3 = *v2;
  v31 = *(*v2 + 16);
  v108 = v2;
  if (v31 != 3)
  {
    if (*(v2 + 16))
    {
      v100 = v16;
      v105 = v13;
      v64 = 1;
      if (v31)
      {
        v65 = 0;
        v104 = v29 + v30;
        v66 = (v26 + 6);
        v103 = v26 + 2;
        v102 = (v26 + 1);
        do
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_100692AD4(v3);
          }

          if (v65 >= v3[2])
          {
            __break(1u);
            goto LABEL_67;
          }

          v68 = v3 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
          v26 = (v68 + *(v110 + 9) * v65);
          v69 = v26 + *(v7 + 20);
          *v69 = v4;
          v69[8] = 0;
          *(v69 + 2) = 0;
          v69[24] = 1;
          v70 = 0;
          if (!(*v66)(v26, 1, v25))
          {
            v71 = v107;
            (*v103)(v107, v26, v25);
            v120 = 0;
            v119 = 1;
            LayoutSubview.sizeThatFits(_:)();
            v70 = v72;
            (*v102)(v71, v25);
          }

          ++v65;
          v67 = v26 + *(v7 + 24);
          *v67 = v4;
          *(v67 + 1) = v70;
          *v108 = v3;
        }

        while (v31 != v65);
        if (v3[2])
        {
          v80 = v101;
          sub_1007EB1A4(v68, v101, type metadata accessor for SectionLayout.Cell);
          v64 = 0;
          v81 = 1;
          goto LABEL_52;
        }

        v81 = 0;
        v64 = 1;
      }

      else
      {
        v81 = 0;
      }

      v80 = v101;
LABEL_52:
      v89 = v110;
      v107 = *(v110 + 7);
      (v107)(v80, v64, 1, v7);
      v90 = v80;
      v91 = v100;
      sub_100021CEC(v90, v100, &qword_100AF2C40);
      v92 = *(v89 + 6);
      result = v92(v91, 1, v7);
      v93 = 0.0;
      if (result != 1)
      {
        v94 = v91;
        v95 = *&v109;
        sub_1007EC508(v94, *&v109);
        v93 = *(v95 + *(v7 + 24) + 8);
        swift_bridgeObjectRetain_n();
        sub_1007EB20C(v95, type metadata accessor for SectionLayout.Cell);
        v96 = v3[2];
        v97 = v95 + 8;
        if (v81 != v96)
        {
          goto LABEL_55;
        }

LABEL_54:
        v98 = 1;
        v81 = v96;
        v26 = v105;
        v25 = *&v106;
        while (1)
        {
          (v107)(v26, v98, 1, v7);
          sub_100021CEC(v26, v25, &qword_100AF2C40);
          if (v92(v25, 1, v7) == 1)
          {
            break;
          }

          v99 = v25;
          v25 = *&v109;
          sub_1007EC508(v99, *&v109);
          v4 = *(v97 + *(v7 + 24));
          sub_1007EB20C(v25, type metadata accessor for SectionLayout.Cell);
          if (v93 < v4)
          {
            v93 = v4;
          }

          if (v81 == v96)
          {
            goto LABEL_54;
          }

LABEL_55:
          if ((v81 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          v25 = *&v106;
          if (v81 >= v3[2])
          {
            goto LABEL_71;
          }

          v26 = v105;
          sub_1007EB1A4(v3 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 9) * v81, v105, type metadata accessor for SectionLayout.Cell);
          v98 = 0;
          ++v81;
        }

        result = swift_bridgeObjectRelease_n();
      }

      v88 = v93 * v3[2] + (v3[2] - 1) * a2;
LABEL_65:
      *(v108 + 32) = v88;
      return result;
    }

    if (!v31)
    {
      v82 = 0;
LABEL_41:
      v83 = *&v109 + 8;
      v26 = (v110 + 56);
      v84 = (v110 + 48);

      i = 0;
      v86 = 0.0;
      if (v82)
      {
        goto LABEL_43;
      }

LABEL_42:
      v87 = 1;
      for (i = v82; ; ++i)
      {
        (*v26)(v24, v87, 1, v7);
        sub_100021CEC(v24, v21, &qword_100AF2C40);
        if ((*v84)(v21, 1, v7) == 1)
        {
          break;
        }

        v25 = *&v109;
        sub_1007EC508(v21, *&v109);
        v4 = *(v83 + *(v7 + 24));
        sub_1007EB20C(v25, type metadata accessor for SectionLayout.Cell);
        v86 = v86 + v4;
        if (i == v82)
        {
          goto LABEL_42;
        }

LABEL_43:
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        if (i >= v3[2])
        {
          goto LABEL_69;
        }

        sub_1007EB1A4(v3 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 9) * i, v24, type metadata accessor for SectionLayout.Cell);
        v87 = 0;
      }

      v88 = v86 + (v3[2] - 1) * a2;
      goto LABEL_65;
    }

    v73 = 0;
    v106 = v29 + v30;
    v74 = (v26 + 6);
    *&v104 = v26 + 1;
    v105 = v26 + 2;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100692AD4(v3);
      }

      if (v73 >= v3[2])
      {
        break;
      }

      v26 = (v3 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 9) * v73);
      v76 = v26 + *(v7 + 20);
      *v76 = v4;
      v76[8] = 0;
      *(v76 + 2) = 0;
      v76[24] = 1;
      v77 = 0;
      if (!(*v74)(v26, 1, v25))
      {
        v78 = v107;
        (*v105)(v107, v26, v25);
        v118 = 0;
        v117 = 1;
        LayoutSubview.sizeThatFits(_:)();
        v77 = v79;
        (**&v104)(v78, v25);
      }

      ++v73;
      v75 = v26 + *(v7 + 24);
      *v75 = v4;
      *(v75 + 1) = v77;
      *v108 = v3;
      if (v31 == v73)
      {
        v82 = v3[2];
        goto LABEL_41;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
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

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (v3[2])
    {
      goto LABEL_5;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_73:
  result = sub_100692AD4(v3);
  v3 = result;
  if (!*(result + 16))
  {
    goto LABEL_74;
  }

LABEL_5:
  v33 = (v4 - a2) * 0.5;
  v34 = v3 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
  v35 = &v34[*(v7 + 20)];
  *v35 = v33;
  v35[8] = 0;
  *(v35 + 2) = 0;
  v35[24] = 1;
  v36 = v26[6];
  result = (v36)(v34, 1, v25);
  v37 = 0;
  if (!result)
  {
    v38 = v107;
    v26[2](v107, v34, v25);
    v112 = 0;
    v111 = 1;
    LayoutSubview.sizeThatFits(_:)();
    v37 = v39;
    result = (v26[1])(v38, v25);
  }

  v40 = &v34[*(v7 + 24)];
  *v40 = v33;
  *(v40 + 1) = v37;
  if (v3[2] < 2uLL)
  {
    goto LABEL_75;
  }

  v109 = (v4 - a2) * 0.5;
  v41 = *(v110 + 9);
  v42 = v25;
  v43 = &v34[v41];
  v44 = &v34[v41 + *(v7 + 20)];
  *v44 = v33;
  v44[8] = 0;
  *(v44 + 2) = 0;
  v44[24] = 1;
  v45 = v42;
  result = (v36)(&v34[v41], 1);
  v46 = 0;
  if (!result)
  {
    v47 = v26[2];
    v48 = v107;
    v110 = v36;
    v47(v107, &v34[v41], v45);
    v114 = 0;
    v113 = 1;
    LayoutSubview.sizeThatFits(_:)();
    v46 = v49;
    v36 = v110;
    result = (v26[1])(v48, v45);
  }

  v50 = &v43[*(v7 + 24)];
  *v50 = v33;
  *(v50 + 1) = v46;
  if (v3[2] < 3uLL)
  {
    goto LABEL_76;
  }

  v51 = v36;
  v52 = &v34[2 * v41];
  v53 = &v52[*(v7 + 20)];
  *v53 = v4;
  v53[8] = 0;
  *(v53 + 2) = 0;
  v53[24] = 1;
  v54 = v45;
  result = (v51)(v52, 1, v45);
  v55 = 0.0;
  if (!result)
  {
    v56 = v107;
    v26[2](v107, v52, v54);
    v116 = 0;
    v115 = 1;
    LayoutSubview.sizeThatFits(_:)();
    v55 = v57;
    result = (v26[1])(v56, v54);
  }

  v58 = &v52[*(v7 + 24)];
  *v58 = v4;
  v58[1] = v55;
  v59 = v108;
  *v108 = v3;
  v60 = v3[2];
  if (!v60)
  {
    goto LABEL_77;
  }

  if (v60 == 1)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v60 < 3)
  {
LABEL_79:
    __break(1u);
    return result;
  }

  v61 = *(v7 + 24);
  v62 = *&v34[v61 + 8];
  v63 = &v43[v61];
  if (v62 <= *(v63 + 1))
  {
    v62 = *(v63 + 1);
  }

  *(v59 + 32) = v55 + v62 + a2;
  return result;
}

void sub_1007EBE2C(double a1, double a2)
{
  v6 = v3;
  v9 = type metadata accessor for LayoutSubview();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v42 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v3;
  v13 = *(*v3 + 16);
  if (v13 == 3)
  {
    v2 = v3;
    if (a1 - v3[4] > 0.0)
    {
      v14 = a1 - v3[4];
    }

    else
    {
      v14 = 0.0;
    }

    v15 = type metadata accessor for SectionLayout.Cell();
    v6 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
    v3 = (v15 + 24);
    v16 = (v12 + *(v15 + 24) + v6);
    v4 = *(*(v15 - 8) + 72);
    if (v16[1] > *(v16 + v4 + 8))
    {
      v5 = v16[1];
    }

    else
    {
      v5 = *(v16 + v4 + 8);
    }

    v10 = 2 * v4;
    v17 = *(v16 + 2 * v4 + 8);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v12[2];
      if (v18)
      {
        goto LABEL_10;
      }
    }

    else
    {
LABEL_41:
      v12 = sub_100692AD4(v12);
      v18 = v12[2];
      if (v18)
      {
LABEL_10:
        v19 = v14 * 0.5 + v5;
        v20 = v12 + v6;
        v22 = *(v15 + 20);
        v21 = (v15 + 20);
        v23 = (v12 + v6 + v22);
        v23[2] = v19;
        *(v23 + 24) = 0;
        *(v12 + v6 + v21[1] + 8) = v19;
        if (v18 != 1)
        {
          v24 = &v20[v4 + *v21];
          *(v24 + 16) = v19;
          *(v24 + 24) = 0;
          *&v20[v4 + 8 + *v3] = v19;
          if (v18 >= 3)
          {
            v25 = v14 * 0.5 + v17;
            v26 = &v20[v10];
            v6 = v2;
LABEL_13:
            v27 = v26 + *v21;
            *(v27 + 16) = v25;
            *(v27 + 24) = 0;
            *(v26 + *v3 + 8) = v25;
LABEL_21:
            *v6 = v12;
            goto LABEL_22;
          }

          goto LABEL_44;
        }

LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  if ((v3[2] & 1) == 0)
  {
    v14 = a1 - v3[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v14 > 0.0)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0.0;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      *v3 = v12;
      if (!v13)
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }

LABEL_45:
    v12 = sub_100692AD4(v12);
    *v6 = v12;
    if (!v13)
    {
LABEL_36:
      if (v17 <= 0.0)
      {
        goto LABEL_22;
      }

      v36 = v12[2];
      if (!v36)
      {
        goto LABEL_22;
      }

      v37 = v36 - 1;
      v38 = type metadata accessor for SectionLayout.Cell();
      v3 = (v38 + 24);
      v26 = v12 + ((*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80)) + *(*(v38 - 8) + 72) * v37;
      v25 = v17 + *(v26 + *(v38 + 24) + 8);
      v21 = (v38 + 20);
      goto LABEL_13;
    }

LABEL_28:
    v34 = 0;
    v15 = v10 + 48;
    v39 = (v10 + 8);
    v40 = (v10 + 16);
    v41 = v12;
    while (v17 > 0.0)
    {
      if (v34 >= v12[2])
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v10 = type metadata accessor for SectionLayout.Cell();
      v4 = v12 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v34;
      v5 = *(v4 + *(v10 + 24) + 8);
      v2 = (v4 + *(v10 + 20));
      v2[2] = v17 + v5;
      *(v2 + 24) = 0;
      if (!(*v15)(v4, 1, v9))
      {
        v3 = v42;
        (*v40)(v42, v4, v9);
        v44 = *(v2 + 8);
        v43 = 0;
        v12 = v41;
        LayoutSubview.sizeThatFits(_:)();
        v14 = v35;
        (*v39)(v3, v9);
        if (v14 < v17 + v5)
        {
          *(v4 + *(v10 + 24) + 8) = v14;
        }
      }

      *v6 = v12;
      if (v34 >= v12[2])
      {
        goto LABEL_40;
      }

      ++v34;
      v17 = v17 + v5 - *(v4 + *(v10 + 24) + 8);
      if (v13 == v34)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_36;
  }

  if (!v13)
  {
LABEL_22:
    *(v6 + 32) = a1;
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_100692AD4(v12);
  }

  if (v13 <= v12[2])
  {
    v28 = (a1 - a2) / v13;
    v29 = type metadata accessor for SectionLayout.Cell();
    v30 = v12 + ((*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80));
    v31 = *(*(v29 - 8) + 72);
    do
    {
      v32 = &v30[*(v29 + 20)];
      *(v32 + 2) = v28;
      v32[24] = 0;
      *&v30[*(v29 + 24) + 8] = v28;
      v30 += v31;
      --v13;
    }

    while (v13);
    goto LABEL_21;
  }

  __break(1u);
}

void sub_1007EC3AC(double a1, double a2)
{
  if (!__OFSUB__(*v2, 1))
  {
    v3 = *(v2 + 1);
    v4 = *(v3 + 2);
    if (!v4)
    {
LABEL_20:
      v2[2] = 0.0;
      return;
    }

    v6 = 0;
    v7 = (a1 - (*v2 - 1) * a2) / *v2;
    v8 = 32;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100692AE8(v3);
      }

      if (v6 >= *(v3 + 2))
      {
        __break(1u);
        goto LABEL_22;
      }

      ++v6;
      sub_1007EB26C(v7, a2);
      v8 += 40;
    }

    while (v4 != v6);
    *(v2 + 1) = v3;
    v9 = *(v3 + 2);
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = v3[8];
    v11 = v9 - 1;
    if (v9 != 1)
    {
      v12 = v3 + 13;
      do
      {
        v13 = *v12;
        v12 += 5;
        v14 = v13;
        if (v10 < v13)
        {
          v10 = v14;
        }

        --v11;
      }

      while (v11);
    }

    v15 = 0;
    v2[2] = v10;
    for (i = 32; ; i += 40)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100692AE8(v3);
      }

      if (v15 >= *(v3 + 2))
      {
        break;
      }

      ++v15;
      sub_1007EBE2C(v10, a2);
      if (v9 == v15)
      {
        *(v2 + 1) = v3;
        return;
      }
    }

LABEL_22:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1007EC508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionLayout.Cell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007EC56C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007EC5B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1007EC5FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1007EC68C()
{
  sub_1007EC718();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1007EC718()
{
  if (!qword_100AF2CB0)
  {
    type metadata accessor for LayoutSubview();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF2CB0);
    }
  }
}

unint64_t sub_1007EC794()
{
  result = qword_100AF2CE8;
  if (!qword_100AF2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2CE8);
  }

  return result;
}

uint64_t sub_1007EC7E8(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  v20 = a2 + 32;
  v21 = result + 32;
  while (v3 != v2)
  {
    v6 = (v4 + 24 * v3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = (v5 + 24 * v3);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    if (v7)
    {
      if (!v11)
      {
        return 0;
      }

      v14 = *(v7 + 16);
      if (v14 != *(v11 + 16))
      {
        return 0;
      }

      if (v14)
      {
        v15 = v7 == v11;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v17 = (v7 + 40);
        v18 = (v11 + 40);
        while (v14)
        {
          result = *(v17 - 1);
          if (result != *(v18 - 1) || *v17 != *v18)
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v17 += 11;
          v18 += 11;
          if (!--v14)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }

LABEL_16:

      v5 = v20;
      v4 = v21;
    }

    else if (v11)
    {
      return 0;
    }

    if (v9)
    {
      if (!v13)
      {

        return 0;
      }

      if (v8 == v12 && v9 == v13)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {

      if (v13)
      {
        return 0;
      }
    }

    if (++v3 == v2)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1007EC988(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 11)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 11;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1007ECA60(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for JournalMO();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_1007ECCA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6)
      {
        if (!v7)
        {
          return;
        }

        type metadata accessor for JournalMO();
        v8 = v5;
        v9 = v7;
        v10 = static NSObject.== infix(_:_:)();

        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      else if (v7)
      {
        return;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1007ECD60(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1007ECDD0(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_1000065A8(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1007ED0DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_100034328(v31, v32);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007ED2D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1007ED364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v5 = __chkstk_darwin(v4);
  v6 = __chkstk_darwin(v5);
  v7 = __chkstk_darwin(v6);
  v56 = &v48 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = __chkstk_darwin(v9);
  v59 = &v48 - v13;
  __chkstk_darwin(v12);
  v18 = &v48 - v15;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    return 0;
  }

  if (!v19 || a1 == a2)
  {
    return 1;
  }

  v50 = v17;
  v51 = v16;
  v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v52 = *(v14 + 72);
  v53 = v11;
  v54 = &v48 - v15;
  while (1)
  {
    result = sub_1007FB99C(v21, v18, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    if (!v19)
    {
      break;
    }

    v58 = v19;
    sub_1007FB99C(v22, v59, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    sub_1007FB99C(v18, v11, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v26 = v11;
    if (EnumCaseMultiPayload == 1 || (v27 = *(v11 + 1), v49 = *v11, v57 = v27, LODWORD(v55) = v11[16], v28 = sub_1000F24EC(&qword_100AE4CB0), v29 = *(v28 + 48), v30 = type metadata accessor for UUID(), v31 = *(*(v30 - 8) + 8), v31(&v11[v29], v30), v32 = v56, sub_1007FB99C(v59, v56, type metadata accessor for SidebarInsightsBrickViewModel.MetricType), v33 = swift_getEnumCaseMultiPayload(), v26 = v32, v33 == 1))
    {
      sub_1007FBA04(v26, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      v34 = v51;
      sub_1007FBA64(v18, v51, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1007FBA04(v59, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
LABEL_31:
        sub_1007FBA04(v34, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
        return 0;
      }

      v35 = v4;
      v57 = *v34;
      v36 = *(v34 + 8);
      v37 = sub_1000F24EC(&qword_100AE4CA8);
      v38 = *(v37 + 48);
      v39 = type metadata accessor for UUID();
      v40 = *(*(v39 - 8) + 8);
      v40(v34 + v38, v39);
      v34 = v50;
      sub_1007FBA64(v59, v50, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      v41 = v35;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_31;
      }

      v55 = *v34;
      v42 = *(v34 + 8);
      v40(v34 + *(v37 + 48), v39);
      v43 = v36 >> 6;
      if (v36 >> 6 > 1)
      {
        if (v43 == 2)
        {
          if ((v42 & 0xC0) != 0x80)
          {
            return 0;
          }
        }

        else if (v42 <= 0xBF)
        {
          return 0;
        }
      }

      else if (v43)
      {
        if ((v42 & 0xC0) != 0x40)
        {
          return 0;
        }
      }

      else if (v42 >= 0x40)
      {
        return 0;
      }

      result = 0;
      if (v57 != v55)
      {
        return result;
      }

      v47 = v42 ^ v36;
      v4 = v41;
      v18 = v54;
      if (v47)
      {
        return result;
      }
    }

    else
    {
      v45 = *v56;
      v44 = *(v56 + 8);
      v46 = *(v56 + 16);
      v31(v56 + *(v28 + 48), v30);
      if ((v55 & 0xE0) == 0x20 && (v46 & 0xE0) == 0x20)
      {
        sub_1007FBA04(v59, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
        v18 = v54;
        sub_1007FBA04(v54, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
        if (v57 != v44)
        {
          return 0;
        }
      }

      else
      {
        v23 = sub_1007F83F8(v49, v57, v55, v45, v44, v46);
        sub_1007FBA04(v59, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
        v18 = v54;
        sub_1007FBA04(v54, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
        if (!v23)
        {
          return 0;
        }
      }
    }

    v11 = v53;
    v22 += v52;
    v21 += v52;
    v19 = v58 - 1;
    if (v58 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1007ED908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v3 += 8;
        v4 += 8;

        v5 = static Color.== infix(_:_:)();

        if ((v5 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1007ED9C0()
{
  v1 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007FB99C(v0, v3, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v6 = v3[16] >> 5;
    if (v6 <= 1)
    {
      if (v6)
      {
        v5 = 0x7261646E656C6163;
        goto LABEL_15;
      }
    }

    else
    {
      if (v6 == 2)
      {
        v5 = 0x706F2E65746F7571;
        goto LABEL_15;
      }

      if (v6 == 3)
      {
        v7 = *v3;
        if (v7 <= 4)
        {
          if (*v3 <= 1u)
          {
            if (*v3)
            {
              v5 = 0x69662E6F65646976;
            }

            else
            {
              v5 = 0xD000000000000012;
            }
          }

          else if (v7 == 2)
          {
            v5 = 0x6D726F6665766177;
          }

          else if (v7 == 3)
          {
            v5 = 0xD000000000000012;
          }

          else
          {
            v5 = 0x6E6F697461636F6CLL;
          }
        }

        else if (*v3 > 7u)
        {
          if (v7 == 9)
          {
            v5 = 0xD000000000000012;
          }

          else
          {
            v5 = 0xD000000000000011;
          }
        }

        else if (v7 == 5)
        {
          v5 = 0x662E656C62627562;
        }

        else if (v7 == 6)
        {
          v5 = 0x722E657275676966;
        }

        else
        {
          v5 = 0x6F75712E74786574;
        }

        goto LABEL_15;
      }
    }

    v5 = 0xD000000000000014;
LABEL_15:
    v4 = sub_1000F24EC(&qword_100AE4CB0);
    goto LABEL_16;
  }

  v4 = sub_1000F24EC(&qword_100AE4CA8);
  v5 = 0x69662E656D616C66;
LABEL_16:
  v8 = *(v4 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(&v3[v8], v9);
  return v5;
}

uint64_t sub_1007EDCD4()
{
  v1 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007FB99C(v0, v3, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1000F24EC(&qword_100AE4CA8);
    v5 = v3;
  }

  else
  {
    v6 = v3[16];
    v4 = sub_1000F24EC(&qword_100AE4CB0);
    v5 = &v3[8 * ((v6 >> 7) ^ 1)];
  }

  v7 = *(v4 + 48);
  v8 = *v5;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(&v3[v7], v9);
  return v8;
}

uint64_t sub_1007EDE00()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF2CF0);
  sub_10000617C(v0, qword_100AF2CF0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007EDE80@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100034328(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__topMetric;
  swift_beginAccess();
  return sub_1000082B4(v5 + v3, a1, &qword_100AF3278);
}

uint64_t sub_1007EDF58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100034328(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__topMetric;
  swift_beginAccess();
  return sub_1000082B4(v3 + v4, a2, &qword_100AF3278);
}

uint64_t sub_1007EE030(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AF3278);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000082B4(a1, &v6 - v3, &qword_100AF3278);
  return sub_1007EE0DC(v4);
}

uint64_t sub_1007EE0DC(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AF3278);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__topMetric;
  swift_beginAccess();
  sub_1000082B4(v1 + v6, v5, &qword_100AF3278);
  v7 = sub_1007F92FC(v5, a1);
  sub_100004F84(v5, &qword_100AF3278);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_100034328(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000082B4(a1, v5, &qword_100AF3278);
    swift_beginAccess();
    sub_1007FC21C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_100004F84(a1, &qword_100AF3278);
}

uint64_t sub_1007EE2E4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__topMetric;
  swift_beginAccess();
  sub_1007FC2A8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1007EE3F4()
{
  swift_getKeyPath();
  sub_100034328(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1007EE4AC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100034328(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1007EE5CC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;

  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100034328(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1007EE72C(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AF3118);
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v4 = &v34 - v3;
  v5 = sub_1000F24EC(&qword_100AF3120);
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v41 = type metadata accessor for UUID();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v34 - v10;
  v11 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100AF3128);
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  sub_10000CA14(a1, a1[3]);
  sub_1007F774C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1007FB99C(v38, v13, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *v13;
  if (EnumCaseMultiPayload == 1)
  {
    v19 = v13[8];
    v20 = sub_1000F24EC(&qword_100AE4CA8);
    v21 = v41;
    (*(v44 + 32))(v43, &v13[*(v20 + 48)], v41);
    LOBYTE(v45) = 1;
    sub_1007F7808();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v45 = v18;
    LOBYTE(v46) = v19;
    v48 = 0;
    sub_1007F7958();
    v22 = v37;
    v23 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v23)
    {
      (*(v36 + 8))(v4, v22);
      (*(v44 + 8))(v43, v21);
    }

    else
    {
      v32 = v44;
      LOBYTE(v45) = 1;
      sub_100034328(&qword_100AD8280, &type metadata accessor for UUID);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v36 + 8))(v4, v22);
      (*(v32 + 8))(v43, v21);
    }
  }

  else
  {
    v24 = *(v13 + 1);
    v25 = v13[16];
    v26 = sub_1000F24EC(&qword_100AE4CB0);
    v27 = v44;
    v28 = &v13[*(v26 + 48)];
    v29 = v41;
    (*(v44 + 32))(v42, v28, v41);
    LOBYTE(v45) = 0;
    sub_1007F78B0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v45 = v18;
    v46 = v24;
    v47 = v25;
    v48 = 0;
    sub_1007F79AC();
    v30 = v35;
    v31 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v31)
    {
      LOBYTE(v45) = 1;
      sub_100034328(&qword_100AD8280, &type metadata accessor for UUID);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v34 + 8))(v7, v30);
    (*(v27 + 8))(v42, v29);
  }

  return (*(v40 + 8))(v16, v14);
}

uint64_t sub_1007EED30(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007FB99C(v2, v10, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v10;
  if (EnumCaseMultiPayload == 1)
  {
    v13 = v10[8];
    v14 = sub_1000F24EC(&qword_100AE4CA8);
    (*(v5 + 32))(v7, &v10[*(v14 + 48)], v4);
    Hasher._combine(_:)(1uLL);
    sub_1007F07D0(a1, v12, v13);
  }

  else
  {
    v15 = *(v10 + 1);
    v16 = v10[16];
    v17 = sub_1000F24EC(&qword_100AE4CB0);
    (*(v5 + 32))(v7, &v10[*(v17 + 48)], v4);
    Hasher._combine(_:)(0);
    sub_1007F1ACC(a1, v12, v15, v16);
  }

  sub_100034328(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1007EEF80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v39 = sub_1000F24EC(&qword_100AF30D8);
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v43 = v34 - v3;
  v40 = sub_1000F24EC(&qword_100AF30E0);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v42 = v34 - v4;
  v5 = sub_1000F24EC(&qword_100AF30E8);
  v44 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v34 - v6;
  v8 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v34 - v12;
  __chkstk_darwin(v14);
  v16 = v34 - v15;
  v17 = a1[3];
  v46 = a1;
  sub_10000CA14(a1, v17);
  sub_1007F774C();
  v18 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v35 = v16;
    v36 = v10;
    v45 = v13;
    v20 = v42;
    v19 = v43;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = v5;
    v23 = v7;
    if (*(v21 + 16) == 1)
    {
      v34[1] = v21;
      if (*(v21 + 32))
      {
        v52 = 1;
        sub_1007F7808();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v51 = 0;
        sub_1007F785C();
        v27 = v36;
        v28 = v39;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        sub_1000F24EC(&qword_100AE4CA8);
        type metadata accessor for UUID();
        v50 = 1;
        sub_100034328(&qword_100AD81F0, &type metadata accessor for UUID);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v41 + 8))(v19, v28);
        (*(v44 + 8))(v7, v22);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v32 = v27;
      }

      else
      {
        v49 = 0;
        sub_1007F78B0();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v43 = v22;
        v48 = 0;
        sub_1007F7904();
        v32 = v45;
        v30 = v40;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v31 = v44;
        sub_1000F24EC(&qword_100AE4CB0);
        type metadata accessor for UUID();
        v47 = 1;
        sub_100034328(&qword_100AD81F0, &type metadata accessor for UUID);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v38 + 8))(v20, v30);
        (*(v31 + 8))(v23, v43);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
      }

      v33 = v35;
      sub_1007FBA64(v32, v35, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      sub_1007FBA64(v33, v37, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    }

    else
    {
      v24 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      sub_1000F24EC(&qword_100AD8100);
      *v26 = v8;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
      swift_willThrow();
      (*(v44 + 8))(v23, v22);
      swift_unknownObjectRelease();
    }
  }

  return sub_10000BA7C(v46);
}

uint64_t sub_1007EF714(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1000F24EC(&qword_100AF3430);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1000F24EC(&qword_100AF3438);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1000F24EC(&qword_100AF3440);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_10000CA14(a1, a1[3]);
  sub_1007FD43C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1007FD490();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1007FD4E4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1007EF9D0()
{
  if (*v0)
  {
    return 0x6B6165727473;
  }

  else
  {
    return 0x6E6F7473656C696DLL;
  }
}

uint64_t sub_1007EFA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F7473656C696DLL && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6165727473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1007EFAEC(uint64_t a1)
{
  v2 = sub_1007F774C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007EFB28(uint64_t a1)
{
  v2 = sub_1007F774C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007EFB64(uint64_t a1)
{
  v2 = sub_1007F78B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007EFBA0(uint64_t a1)
{
  v2 = sub_1007F78B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007EFBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1007EFCB0(uint64_t a1)
{
  v2 = sub_1007F7808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007EFCEC(uint64_t a1)
{
  v2 = sub_1007F7808();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1007EFD28()
{
  Hasher.init(_seed:)();
  sub_1007EED30(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1007EFD6C()
{
  Hasher.init(_seed:)();
  sub_1007EED30(v1);
  return Hasher._finalize()();
}

uint64_t sub_1007EFDA8@<X0>(uint64_t a1@<X8>)
{
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007FB99C(v5, v4, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v9 = &qword_100AE4CA8;
  }

  else
  {
    v9 = &qword_100AE4CB0;
  }

  v10 = sub_1000F24EC(v9);
  return v8(a1, &v4[*(v10 + 48)], v7);
}

uint64_t sub_1007EFEF8()
{
  if (*v0)
  {
    return 1801807223;
  }

  else
  {
    return 7954788;
  }
}

uint64_t sub_1007EFF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7954788 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1801807223 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1007F0000(uint64_t a1)
{
  v2 = sub_1007FD43C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F003C(uint64_t a1)
{
  v2 = sub_1007FD43C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F0078(uint64_t a1)
{
  v2 = sub_1007FD4E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F00B4(uint64_t a1)
{
  v2 = sub_1007FD4E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F00F0(uint64_t a1)
{
  v2 = sub_1007FD490();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F012C(uint64_t a1)
{
  v2 = sub_1007FD490();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F0168@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007F95E0(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1007F01B4(void *a1, uint64_t a2, int a3)
{
  v35 = a2;
  v40 = a3;
  v4 = sub_1000F24EC(&qword_100AF3198);
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v31 = &v28 - v5;
  v32 = sub_1000F24EC(&qword_100AF31A0);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = &v28 - v6;
  v8 = sub_1000F24EC(&qword_100AF31A8);
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = sub_1000F24EC(&qword_100AF31B0);
  v28 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v39 = sub_1000F24EC(&qword_100AF31B8);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v15 = &v28 - v14;
  sub_10000CA14(a1, a1[3]);
  sub_1007FA51C();
  v38 = v15;
  v16 = v40;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v16 >> 6) > 1u)
  {
    if (v16 >> 6 == 2)
    {
      v42 = 2;
      sub_1007FA618();
      v18 = v38;
      v17 = v39;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = 0;
      v20 = v36;
      v21 = v32;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v20)
      {
        v42 = v16 & 1;
        v41 = 1;
        sub_1007FA714();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v22 = v30;
    }

    else
    {
      v42 = 3;
      sub_1007FA570();
      v7 = v31;
      v18 = v38;
      v17 = v39;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = 0;
      v21 = v34;
      v27 = v36;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v27)
      {
        v42 = v16 & 1;
        v41 = 1;
        sub_1007FA714();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v22 = v33;
    }

    (*(v22 + 8))(v7, v21);
    return (*(v37 + 8))(v18, v17);
  }

  if (!(v16 >> 6))
  {
    v42 = 0;
    sub_1007FA6C0();
    v18 = v38;
    v17 = v39;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v42 = 0;
    v19 = v36;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v19)
    {
      v42 = v16 & 1;
      v41 = 1;
      sub_1007FA714();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v28 + 8))(v13, v11);
    return (*(v37 + 8))(v18, v17);
  }

  v42 = 1;
  sub_1007FA66C();
  v24 = v38;
  v23 = v39;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v42 = 0;
  v25 = v36;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v25)
  {
    (*(v29 + 8))(v10, v8);
    return (*(v37 + 8))(v24, v23);
  }

  else
  {
    v42 = v16 & 1;
    v41 = 1;
    sub_1007FA714();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v29 + 8))(v10, v8);
    return (*(v37 + 8))(v38, v39);
  }
}

void sub_1007F07D0(uint64_t a1, Swift::UInt a2, unsigned __int8 a3)
{
  Hasher._combine(_:)(a3 >> 6);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3 & 1);
}

uint64_t sub_1007F0818(uint64_t a1)
{
  v2 = sub_1007FA570();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F0854(uint64_t a1)
{
  v2 = sub_1007FA570();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F0890()
{
  v1 = 7824750;
  v2 = 0x6465646E65747865;
  if (*v0 != 2)
  {
    v2 = 0x657669746361;
  }

  if (*v0)
  {
    v1 = 0x64726F636572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1007F08F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F9A1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F0920(uint64_t a1)
{
  v2 = sub_1007FA51C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F095C(uint64_t a1)
{
  v2 = sub_1007FA51C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F0998(uint64_t a1)
{
  v2 = sub_1007FA618();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F09D4(uint64_t a1)
{
  v2 = sub_1007FA618();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F0A10(uint64_t a1)
{
  v2 = sub_1007FA6C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F0A4C(uint64_t a1)
{
  v2 = sub_1007FA6C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F0A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E617073656D6974 && a2 == 0xEC00000074696E55)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1007F0B68(uint64_t a1)
{
  v2 = sub_1007FA66C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F0BA4(uint64_t a1)
{
  v2 = sub_1007FA66C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1007F0BE0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_1007F07D0(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1007F0C3C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_1007F07D0(v4, v1, v2);
  return Hasher._finalize()();
}

void *sub_1007F0C88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1007F9B78(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1007F0CF0()
{
  v1 = 12639;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_1007F0D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007FA768(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F0D64(uint64_t a1)
{
  v2 = sub_1007FB7A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F0DA0(uint64_t a1)
{
  v2 = sub_1007FB7A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F0DDC()
{
  v1 = *v0;
  v2 = 0x4564657461657263;
  v3 = 0x576E657474697277;
  v4 = 0x656D686361747461;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C616E72756F6ALL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1007F0EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007FA874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F0ED0(uint64_t a1)
{
  v2 = sub_1007FB6FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F0F0C(uint64_t a1)
{
  v2 = sub_1007FB6FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F0F48(uint64_t a1)
{
  v2 = sub_1007FB8F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F0F84(uint64_t a1)
{
  v2 = sub_1007FB8F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F0FC0()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x74654D706F547369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1007F1014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007FAA48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F103C(uint64_t a1)
{
  v2 = sub_1007FB8A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1078(uint64_t a1)
{
  v2 = sub_1007FB8A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F10B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1007F1184(uint64_t a1)
{
  v2 = sub_1007FB84C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F11C0(uint64_t a1)
{
  v2 = sub_1007FB84C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1007F1294(uint64_t a1)
{
  v2 = sub_1007FB750();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F12D0(uint64_t a1)
{
  v2 = sub_1007FB750();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F130C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v56 = a2;
  v60 = a4;
  v53 = a3;
  v5 = sub_1000F24EC(&qword_100AF3230);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v46 = &v44 - v6;
  v7 = sub_1000F24EC(&qword_100AF3238);
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v50 = &v44 - v8;
  v47 = sub_1000F24EC(&qword_100AF3240);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v44 - v9;
  v10 = sub_1000F24EC(&qword_100AF3248);
  v54 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = sub_1000F24EC(&qword_100AF3250);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - v15;
  v55 = sub_1000F24EC(&qword_100AF3258);
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v18 = &v44 - v17;
  sub_10000CA14(a1, a1[3]);
  sub_1007FB6FC();
  v59 = v18;
  v19 = v60;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = v19 >> 5;
  if (v20 <= 1)
  {
    v52 = v14;
    v27 = v54;
    if (v19 >> 5)
    {
      v62 = 1;
      sub_1007FB8A0();
      v38 = v12;
      v39 = v55;
      v40 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v56;
      v61 = 0;
      sub_1007FB948();
      v41 = v57;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v41)
      {
        (*(v27 + 8))(v38, v10);
        v42 = *(v58 + 8);
        v43 = v40;
      }

      else
      {
        v62 = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
        v62 = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
        (*(v27 + 8))(v38, v10);
        v43 = v59;
        v42 = *(v58 + 8);
      }

      return v42(v43, v39);
    }

    v28 = v13;
    v62 = 0;
    sub_1007FB8F4();
    v29 = v55;
    v30 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v62 = v56;
    v61 = 0;
    sub_1007FB948();
    v31 = v57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v31)
    {
      v62 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v52 + 8))(v16, v28);
    return (*(v58 + 8))(v30, v29);
  }

  if (v20 == 2)
  {
    v62 = 2;
    sub_1007FB84C();
    v32 = v44;
    v29 = v55;
    v30 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v62 = v56;
    v61 = 0;
    sub_1007FB948();
    v33 = v47;
    v34 = v57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v34)
    {
      v62 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v45 + 8))(v32, v33);
    return (*(v58 + 8))(v30, v29);
  }

  v21 = v55;
  v22 = v59;
  if (v20 == 3)
  {
    v62 = 3;
    sub_1007FB7A4();
    v23 = v50;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = BYTE1(v56);
    v62 = v56;
    v61 = 0;
    sub_100695BEC();
    v25 = v52;
    v26 = v57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v26)
    {
      v62 = v24;
      v61 = 1;
      sub_1007FB948();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v62 = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v51 + 8))(v23, v25);
  }

  else
  {
    v62 = 4;
    sub_1007FB750();
    v36 = v46;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v37 = v49;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v48 + 8))(v36, v37);
  }

  return (*(v58 + 8))(v22, v21);
}

void sub_1007F1ACC(uint64_t a1, Swift::UInt a2, Swift::UInt a3, unsigned __int8 a4)
{
  v6 = a4 >> 5;
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 != 3)
      {
        Hasher._combine(_:)(4uLL);
        v9 = a2;
        goto LABEL_13;
      }

      Hasher._combine(_:)(3uLL);
      sub_1000AC110(a2);
      String.hash(into:)();

      if ((a2 & 0xFF00) == 0x300)
      {
        Hasher._combine(_:)(0);
LABEL_11:
        v9 = a3;
LABEL_13:
        Hasher._combine(_:)(v9);
        return;
      }

      Hasher._combine(_:)(1u);
      v8 = BYTE1(a2);
LABEL_10:
      Hasher._combine(_:)(v8);
      goto LABEL_11;
    }

    v7 = 2;
LABEL_9:
    Hasher._combine(_:)(v7);
    v8 = a2;
    goto LABEL_10;
  }

  if (!(a4 >> 5))
  {
    v7 = 0;
    goto LABEL_9;
  }

  Hasher._combine(_:)(1uLL);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4 & 1);
}

Swift::Int sub_1007F1BCC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_1007F1ACC(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_1007F1C34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_1007F1ACC(v5, v1, v2, v3);
  return Hasher._finalize()();
}

char *sub_1007F1C8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1007FAB58(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1007F1CF8(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1000F24EC(&qword_100AF3488);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1000F24EC(&qword_100AF3490);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1000F24EC(&qword_100AF3498);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1000F24EC(&qword_100AF34A0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_10000CA14(a1, a1[3]);
  sub_1007FD538();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1007FD5E0();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1007FD58C();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1007FD634();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_1007F2078(uint64_t a1)
{
  v2 = sub_1007FD634();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F20B4(uint64_t a1)
{
  v2 = sub_1007FD634();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F20F0()
{
  v1 = 1918985593;
  if (*v0 != 1)
  {
    v1 = 0x68746E6F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D69546C6C61;
  }
}

uint64_t sub_1007F2140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007FBAE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F2168(uint64_t a1)
{
  v2 = sub_1007FD538();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F21A4(uint64_t a1)
{
  v2 = sub_1007FD538();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F21E0(uint64_t a1)
{
  v2 = sub_1007FD58C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F221C(uint64_t a1)
{
  v2 = sub_1007FD58C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F2258(uint64_t a1)
{
  v2 = sub_1007FD5E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F2294(uint64_t a1)
{
  v2 = sub_1007FD5E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F22D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007FBBFC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1007F2318()
{
  v1 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(v0 + 80);
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      sub_1007FB99C(v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v4, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v9 = *(sub_1000F24EC(&qword_100AE4CA8) + 48);
        v10 = type metadata accessor for UUID();
        (*(*(v10 - 8) + 8))(&v4[v9], v10);
        return 1;
      }

      ++v8;
      result = sub_1007FBA04(v4, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      if (v6 == v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t sub_1007F24FC()
{
  v1 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(v0 + 80);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + 72);
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = v7;

    v10 = 0;
    while (v10 < *(v5 + 16))
    {
      sub_1007FB99C(v8 + *(v2 + 72) * v10, v4, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        result = sub_1007FBA04(v4, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      }

      else
      {
        v11 = v4[16];
        v12 = *(sub_1000F24EC(&qword_100AE4CB0) + 48);
        v13 = type metadata accessor for UUID();
        result = (*(*(v13 - 8) + 8))(&v4[v12], v13);
        if (v11 < 0x20)
        {
          v14 = 1;
LABEL_10:

          return v14;
        }
      }

      if (v6 == ++v10)
      {
        v14 = 0;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1007F26FC()
{
  swift_getKeyPath();
  sub_100034328(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1007F2798()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_1003E9628(0, 0, v2, &unk_10096AC70, v6);
}

uint64_t sub_1007F28EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  type metadata accessor for MainActor();
  *(v4 + 72) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007F2984, v6, v5);
}

uint64_t sub_1007F2984()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1007F2D58();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    withObservationTracking<A>(_:onChange:)();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1007F2A84()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AF3278);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_getKeyPath();
  v12 = v0;
  sub_100034328(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__topMetric;
  swift_beginAccess();
  sub_1000082B4(v1 + v5, v4, &qword_100AF3278);
  v6 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_100004F84(v4, &qword_100AF3278);
  if (v5 == 1 && (swift_getKeyPath(), v11 = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , !*(*(v1 + OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__secondaryMetrics) + 16)))
  {
    swift_beginAccess();
    *(v1 + 72) = 0;
    *(v1 + 80) = _swiftEmptyArrayStorage;

    sub_1007F3F18();
    sub_1007F40DC();
    sub_1007F44D8();
    sub_1007F2FAC();
  }

  else
  {
    if (qword_100AD0B40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000617C(v7, qword_100AF2CF0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
    }

    sub_1007F2D58();
  }
}

void sub_1007F2D58()
{
  v1 = v0;
  if (qword_100AD0B40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AF2CF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating metrics...", v5, 2u);
  }

  swift_beginAccess();
  v1[9] = 0;
  v1[10] = _swiftEmptyArrayStorage;

  sub_1007F3F18();
  sub_1007F40DC();
  sub_1007F44D8();
  v6 = v1[12];

  sub_10046C3D0(v7, v6);
  v9 = v8;

  if (v9)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Ignoring duplicate update to Sidebar Insights";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);
    }
  }

  else
  {
    sub_1007F2FAC();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Metrics updated";
      goto LABEL_10;
    }
  }
}

uint64_t sub_1007F2FAC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AF3278);
  __chkstk_darwin(v2 - 8);
  v4 = &v28[-1] - v3;
  if (qword_100AD0B40 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000617C(v5, qword_100AF2CF0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Finalizing metrics to display in sidebar brick...", v8, 2u);
  }

  swift_beginAccess();
  v9 = v1[10];
  v1[11] = v1[9];
  v1[12] = v9;

  v11 = v1[12];
  v12 = v11[2];
  if (v12)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v11;
    if (!isUniquelyReferenced_nonNull_native || (v12 - 1) > v11[3] >> 1)
    {
      v11 = sub_1003E72C4(isUniquelyReferenced_nonNull_native, v12, 1, v11);
      v29 = v11;
    }

    sub_10019DC78(0, 1, 0);
    v29 = v11;
    v14 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v14);
    *(&v27 - 2) = v1;
    *(&v27 - 1) = &v29;
    withAnimation<A>(_:_:)();

    swift_getKeyPath();
    v28[1] = v1;
    sub_100034328(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__topMetric;
    swift_beginAccess();
    sub_1000082B4(v1 + v15, v4, &qword_100AF3278);
    sub_1007F3594(v4);
    sub_100004F84(v4, &qword_100AF3278);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Updated metrics to display in sidebar brick:", v18, 2u);
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v21 = 136315138;
      type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);

      v23 = Array.description.getter();
      v25 = v24;

      v26 = sub_100008458(v23, v25, v28);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s", v21, 0xCu);
      sub_10000BA7C(v22);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1007F3450(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AF3278);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(a1 + 96);
  v6 = *(v5 + 16);
  v7 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v8 = *(v7 - 8);
  v9 = v8;
  if (v6)
  {
    sub_1007FB99C(v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v4, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    (*(v9 + 56))(v4, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v4, 1, 1, v7);
  }

  sub_1007EE0DC(v4);

  return sub_1007EE3A4(v10);
}

uint64_t sub_1007F3594(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AF3278);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-v4];
  v6 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000082B4(a1, v5, &qword_100AF3278);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100004F84(v5, &qword_100AF3278);
  }

  sub_1007FBA64(v5, v9, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
  v11 = static Animation.easeInOut.getter();
  __chkstk_darwin(v11);
  *&v12[-16] = v1;
  *&v12[-8] = v9;
  withAnimation<A>(_:_:)();

  return sub_1007FBA04(v9, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
}

uint64_t sub_1007F3794(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  sub_1007FB99C(a2, &v23 - v11, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1007FB99C(v12, v6, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    v13 = *(sub_1000F24EC(&qword_100AE4CA8) + 48);
    v14 = a1[4];
    v15 = type metadata accessor for UUID();
    v16 = *(*(v15 - 8) + 8);

    v16(&v6[v13], v15);
  }

  else
  {
    sub_1007FB99C(v12, v9, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    v17 = v9[16];
    v18 = *(sub_1000F24EC(&qword_100AE4CB0) + 48);
    if (v17 >> 5 == 2)
    {
      v14 = a1[6];
    }

    else
    {
      if (v17 >> 5 != 1)
      {
        v22 = type metadata accessor for UUID();
        (*(*(v22 - 8) + 8))(&v9[v18], v22);
        v14 = a1[7];

        goto LABEL_9;
      }

      v14 = a1[5];
    }

    v19 = type metadata accessor for UUID();
    v20 = *(*(v19 - 8) + 8);

    v20(&v9[v18], v19);
  }

LABEL_9:
  sub_1007FBA04(v12, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
  return sub_1007EE590(v14);
}

uint64_t sub_1007F3A1C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v5);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1007F2318();
  if ((result & 1) == 0)
  {
    result = swift_beginAccess();
    if (*(*(v2 + 80) + 16) <= 2uLL)
    {
      if (qword_100AD0B40 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000617C(v9, qword_100AF2CF0);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18[0] = v17;
        *v12 = 136315138;
        v18[1] = a1;
        v19 = a2;
        v13 = String.init<A>(describing:)();
        v15 = a2;
        v16 = sub_100008458(v13, v14, v18);

        *(v12 + 4) = v16;
        a2 = v15;
        _os_log_impl(&_mh_execute_header, v10, v11, "Adding streak metric: %s", v12, 0xCu);
        sub_10000BA7C(v17);
      }

      sub_1000F24EC(&qword_100AE4CA8);
      *v7 = a1;
      v7[8] = a2;
      UUID.init()();
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_1007F7A34(v7);
      sub_1007FBA04(v7, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1007F3C84(uint64_t a1, uint64_t a2, int a3)
{
  v7 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v11 = *(*(v3 + 80) + 16);
  if (v11 <= 2)
  {
    v12 = v11 == 0;
    v13 = (a3 & 0xE0) == 32;
    if (v12 && v13)
    {
      v14 = a1;
    }

    else
    {
      v14 = a1;
    }

    if (v12 && v13)
    {
      LODWORD(v15) = 33;
    }

    else
    {
      LODWORD(v15) = a3;
    }

    if (qword_100AD0B40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000617C(v16, qword_100AF2CF0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = v14;
      v20 = v19;
      v21 = swift_slowAlloc();
      v26 = v15;
      v15 = v21;
      v28[0] = v21;
      v28[1] = a1;
      *v20 = 136315138;
      v28[2] = a2;
      v29 = a3;
      v22 = String.init<A>(describing:)();
      v24 = sub_100008458(v22, v23, v28);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Adding milestone metric: %s", v20, 0xCu);
      sub_10000BA7C(v15);
      LOBYTE(v15) = v26;

      v14 = v27;
    }

    sub_1000F24EC(&qword_100AE4CB0);
    *v9 = v14;
    *(v9 + 1) = a2;
    v9[16] = v15;
    UUID.init()();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1007F7A34(v9);
    sub_1007FBA04(v9, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1007F3F18()
{
  v0 = sub_1000F24EC(&qword_100AF3270);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for StreakSummary();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007F5E38(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_100004F84(v2, &qword_100AF3270);
  }

  sub_1007FBA64(v2, v6, type metadata accessor for StreakSummary);
  if (*&v6[*(v3 + 28)] == 2)
  {
    v8 = sub_1007F6E00();
    v9 = 2;
  }

  else
  {
    v9 = sub_1007F62F0(v6);
    if (v8 > 0xFDu)
    {
      v9 = sub_1007F6610(v6);
      if (v8 > 0xFDu)
      {
        return sub_1007FBA04(v6, type metadata accessor for StreakSummary);
      }
    }
  }

  sub_1007F3A1C(v9, v8);
  return sub_1007FBA04(v6, type metadata accessor for StreakSummary);
}

uint64_t sub_1007F40DC()
{
  v1 = v0;
  v2 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007F4F08();
  if (v7 <= 0xFDu)
  {
    sub_1007F3C84(v5, v6, v7);
  }

  v8 = sub_1007F5278();
  if (v10 <= 0xFDu)
  {
    sub_1007F3C84(v8, v9, v10);
  }

  v11 = sub_1007F55F4();
  if (v13 <= 0xFDu)
  {
    sub_1007F3C84(v11, v12, v13);
  }

  result = sub_1007F57D8();
  if (result)
  {
    v15 = *(result + 16);
    if (v15)
    {
      v16 = result;
      swift_beginAccess();
      v44 = v16;
      v17 = (v16 + 48);
      *&v18 = 136315138;
      v46 = v18;
      v45 = v1;
      while (1)
      {
        v19 = *(*(v1 + 80) + 16);
        if (v19 > 2)
        {
          goto LABEL_12;
        }

        v21 = *(v17 - 2);
        v20 = *(v17 - 1);
        v22 = *v17;
        v23 = v19 == 0;
        v24 = (v22 & 0xE0) == 32;
        v25 = !v23 || !v24;
        if (v23 && v24)
        {
          v26 = *(v17 - 2);
        }

        else
        {
          v26 = *(v17 - 2);
        }

        v50 = v26;
        if (v25)
        {
          LODWORD(v27) = v22;
        }

        else
        {
          LODWORD(v27) = 33;
        }

        if (qword_100AD0B40 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_10000617C(v28, qword_100AF2CF0);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = v20;
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v47 = v27;
          v27 = v33;
          v51[0] = v33;
          v51[1] = v21;
          *v32 = v46;
          v51[2] = v31;
          v52 = v22;
          v34 = String.init<A>(describing:)();
          v36 = sub_100008458(v34, v35, v51);

          *(v32 + 4) = v36;
          _os_log_impl(&_mh_execute_header, v29, v30, "Adding milestone metric: %s", v32, 0xCu);
          sub_10000BA7C(v27);
          LOBYTE(v27) = v47;

          v20 = v31;
          v1 = v45;
        }

        sub_1000F24EC(&qword_100AE4CB0);
        *v4 = v50;
        *(v4 + 1) = v20;
        v4[16] = v27;
        UUID.init()();
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        v37 = *(v1 + 72);
        v38 = *(v1 + 80);
        v39 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v40 = *(v38 + 16);
        if (v37)
        {

          sub_10046F874(v4, v38 + v39, v40, (v37 + 16), v37 + 32);
          v42 = v41;

          if ((v42 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_1007F7B28(v4, v38 + v39, *(v38 + 16));
          if ((v43 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_10046E9B0(v4);
LABEL_11:
        sub_1007FBA04(v4, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
        swift_endAccess();
LABEL_12:
        v17 += 24;
        if (!--v15)
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_1007F44D8()
{
  v1 = v0;
  v63 = sub_1000F24EC(&qword_100AD6FB8);
  __chkstk_darwin(v63);
  v64 = &v62 - v2;
  v3 = type metadata accessor for Date();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v62 - v6;
  v65 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v65);
  v66 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v62 - v10;
  v12 = type metadata accessor for InsightsDataManager.Streaks(0);
  __chkstk_darwin(v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AF3270);
  __chkstk_darwin(v15 - 8);
  v17 = &v62 - v16;
  v18 = type metadata accessor for StreakSummary();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(*(v0 + 80) + 16) <= 2uLL)
  {
    sub_1007F5E38(v17);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      result = sub_100004F84(v17, &qword_100AF3270);
      goto LABEL_15;
    }

    sub_1007FBA64(v17, v21, type metadata accessor for StreakSummary);
    v23 = *&v21[*(v18 + 28)];
    if (v23 < 1 || (sub_1007F6E00(), (sub_1007F2318() & 1) != 0))
    {
LABEL_14:
      result = sub_1007FBA04(v21, type metadata accessor for StreakSummary);
LABEL_15:
      if (*(*(v1 + 80) + 16) > 2uLL)
      {
        return result;
      }

      if (sub_1007F24FC())
      {
        v32 = v65;
        if (qword_100AD0B40 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_10000617C(v33, qword_100AF2CF0);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        v36 = os_log_type_enabled(v34, v35);
        v37 = v66;
        if (v36)
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "Metrics contains yearly milestone for created entries, did not insert yearly fallback!", v38, 2u);
        }
      }

      else
      {
        v39 = *(v1 + 16);
        swift_getKeyPath();
        v72 = v39;
        sub_100034328(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v40 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
        swift_beginAccess();
        sub_1007FB99C(v39 + v40, v11, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
        v32 = v65;
        static Date.now.getter();
        sub_1000B8860(v7);
        v42 = v41;
        v44 = v43;
        (*(v68 + 8))(v7, v69);
        if (v44)
        {
          sub_1007FBA04(v11, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
        }

        else
        {
          v45 = &v11[*(v32 + 32)];
          v42 = *v45;
          v46 = v45[8];
          sub_1007FBA04(v11, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
          if (v46)
          {
            v42 = 0;
          }
        }

        sub_1007F3C84(v42, 0, 128);
        v37 = v66;
      }

      v47 = *(v1 + 16);
      swift_getKeyPath();
      v48 = OBJC_IVAR____TtC7Journal19InsightsDataManager___observationRegistrar;
      v71 = v47;
      sub_100034328(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
      v66 = v48;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v49 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
      swift_beginAccess();
      sub_1007FB99C(v47 + v49, v37, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
      v50 = v37;
      v51 = v67;
      static Date.now.getter();
      sub_1000B8860(v51);
      v53 = v52;
      v55 = v54;
      (*(v68 + 8))(v51, v69);
      if (v55)
      {
        sub_1007FBA04(v50, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
      }

      else
      {
        v56 = v50 + *(v32 + 32);
        v53 = *v56;
        v57 = *(v56 + 8);
        result = sub_1007FBA04(v50, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
        if (v57)
        {
          goto LABEL_31;
        }
      }

      if (v53 > 0)
      {
LABEL_32:
        swift_getKeyPath();
        v70 = v47;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v58 = v64;
        sub_1000082B4(v47 + v49, v64, &qword_100AD6FB8);
        v59 = *(v58 + *(v63 + 32));
        v60 = _HashTable.startBucket.getter();
        v61 = sub_1000AEB10(v60, *(v59 + 36), 0, 1 << *(v59 + 32), *(v59 + 36), 0);
        sub_100004F84(v58, &qword_100AD6FB8);
        sub_1007F3C84(1, v61, 32);
        swift_getKeyPath();
        v70 = v47;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        return sub_1007F3C84(0, *(v47 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount), 64);
      }

LABEL_31:
      if (*(*(v1 + 80) + 16) < 2uLL)
      {
        return result;
      }

      goto LABEL_32;
    }

    v62 = v23;
    v24 = *(v0 + 16);
    swift_getKeyPath();
    v72 = v24;
    sub_100034328(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
    swift_beginAccess();
    sub_1007FB99C(v24 + v25, v14, type metadata accessor for InsightsDataManager.Streaks);

    sub_1000F24EC(&qword_100AF3268);
    AppStorage.wrappedValue.getter();

    v26 = v72;
    if (v72 == 2)
    {
      v27 = *(v18 + 28);
      if (*&v14[*(v12 + 20) + v27] < 2)
      {
        sub_1007FBA04(v14, type metadata accessor for InsightsDataManager.Streaks);
        v28 = v62;
LABEL_12:

        v30 = 0;
        goto LABEL_13;
      }

      v31 = *&v14[v27];
      sub_1007FBA04(v14, type metadata accessor for InsightsDataManager.Streaks);
      v28 = v62;
      if (v31 >= 3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1007FBA04(v14, type metadata accessor for InsightsDataManager.Streaks);
      v28 = v62;
      if ((v26 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v30 = v29 ^ 1;
LABEL_13:
    sub_1007F3A1C(v28, v30 & 1 | 0xC0);
    goto LABEL_14;
  }

  return result;
}

BOOL sub_1007F4F08()
{
  v17 = type metadata accessor for Date();
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  swift_getKeyPath();
  v18 = v7;
  sub_100034328(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v7 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime + 16);
  swift_getKeyPath();
  v18 = v7;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
  swift_beginAccess();
  sub_1007FB99C(v7 + v9, v6, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  static Date.now.getter();
  sub_1000B8860(v3);
  v11 = v10;
  v13 = v12;
  (*(v1 + 8))(v3, v17);
  if (v13)
  {
    sub_1007FBA04(v6, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

    if (v8 < 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = &v6[*(v4 + 32)];
    v11 = *v14;
    v15 = v14[8];
    sub_1007FBA04(v6, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
    if (v15)
    {
      v11 = 0;
    }

    if (v8 < 1)
    {
      goto LABEL_10;
    }
  }

  result = 0;
  if (v8 == 10 || v8 == 50)
  {
    return result;
  }

  if (__ROR8__(0x8F5C28F5C28F5C29 * v8, 2) < 0x28F5C28F5C28F5DuLL)
  {
    return 0;
  }

LABEL_10:
  if (v11 < 1)
  {
    return 0;
  }

  result = 1;
  if (v11 != 10 && v11 != 50)
  {
    return __ROR8__(0x8F5C28F5C28F5C29 * v11, 2) < 0x28F5C28F5C28F5DuLL;
  }

  return result;
}

BOOL sub_1007F5278()
{
  v1 = type metadata accessor for Date();
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD6FB8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v21 - v9;
  v11 = *(v0 + 16);
  swift_getKeyPath();
  v21[1] = OBJC_IVAR____TtC7Journal19InsightsDataManager___observationRegistrar;
  v25 = v11;
  sub_100034328(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = v11 + OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
  swift_beginAccess();
  sub_1000082B4(v12, v10, &qword_100AD6FB8);
  v13 = *&v10[*(v5 + 40)];
  v14 = _HashTable.startBucket.getter();
  v15 = sub_1000AEB10(v14, *(v13 + 36), 0, 1 << *(v13 + 32), *(v13 + 36), 0);
  sub_100004F84(v10, &qword_100AD6FB8);
  swift_getKeyPath();
  v24 = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  sub_1000082B4(v12 + *(v16 + 28), v7, &qword_100AD6FB8);
  static Date.now.getter();
  v17 = sub_1000B8860(v3);
  v19 = v18;
  (*(v22 + 8))(v3, v23);
  sub_100004F84(v7, &qword_100AD6FB8);
  if (v19)
  {
  }

  else
  {
    v17 = 0;
  }

  if (v15 >= 1 && !(v15 % 100))
  {
    return 0;
  }

  return v17 >= 1 && !(v17 % 100);
}

uint64_t sub_1007F55F4()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_100034328(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v1 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + 16);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v2 + 8);
  if (v3 >= 1 && !(v3 % 1000))
  {
    return 0;
  }

  if (v4 >= 1 && !(v4 % 1000))
  {
    return 1;
  }

  if (v5 < 1 || v5 % 100)
  {
    return 0;
  }

  return 2;
}

uint64_t sub_1007F57D8()
{
  v1 = type metadata accessor for Date();
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v45 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD6FB8);
  __chkstk_darwin(v3 - 8);
  v44 = v42 - v4;
  v5 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v42 - v10;
  v12 = *(v0 + 16);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC7Journal19InsightsDataManager___observationRegistrar;
  v50 = v12;
  v42[0] = sub_100034328(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  v42[1] = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = v12;
  v14 = *(v12 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime);
  v15 = *(v14 + 16);

  v49 = v5;
  if (v15)
  {
    v17 = 0;
    v18 = _swiftEmptyArrayStorage;
    v48 = v15;
    while (v17 < *(v14 + 16))
    {
      sub_1007FB99C(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v11, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v19 = *(v18 + 2);
      if (v19 > 2)
      {
        sub_1007FBA04(v11, type metadata accessor for InsightsDataManager.TopAssetCategory);
        goto LABEL_16;
      }

      v20 = *&v11[*(v5 + 24)];
      if (v20 < 1 || v20 % 100)
      {
        result = sub_1007FBA04(v11, type metadata accessor for InsightsDataManager.TopAssetCategory);
      }

      else
      {
        v21 = v11[*(v5 + 20)];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1003E71B4(0, v19 + 1, 1, v18);
        }

        v23 = *(v18 + 2);
        v22 = *(v18 + 3);
        if (v23 >= v22 >> 1)
        {
          v18 = sub_1003E71B4((v22 > 1), v23 + 1, 1, v18);
        }

        result = sub_1007FBA04(v11, type metadata accessor for InsightsDataManager.TopAssetCategory);
        *(v18 + 2) = v23 + 1;
        v24 = &v18[3 * v23];
        *(v24 + 4) = v21;
        *(v24 + 5) = v20;
        *(v24 + 48) = 96;
        v15 = v48;
        v5 = v49;
      }

      if (v15 == ++v17)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_16:

  swift_getKeyPath();
  v25 = v43;
  v50 = v43;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = v25 + OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
  swift_beginAccess();
  v27 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v28 = v44;
  sub_1000082B4(v26 + *(v27 + 28), v44, &qword_100AD6FB8);
  v29 = v45;
  Date.init()();
  sub_1000B8860(v29);
  v31 = v30;
  v33 = v32;
  (*(v46 + 8))(v29, v47);
  result = sub_100004F84(v28, &qword_100AD6FB8);
  if (v31)
  {

    v34 = v33[2];
    if (v34 == 0.0)
    {
      goto LABEL_33;
    }

LABEL_20:
    v35 = 0;
    while (v35 < *(v33 + 2))
    {
      sub_1007FB99C(v33 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v35, v8, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v36 = *(v18 + 2);
      if (v36 > 2)
      {
        sub_1007FBA04(v8, type metadata accessor for InsightsDataManager.TopAssetCategory);
        goto LABEL_33;
      }

      v37 = *&v8[*(v5 + 24)];
      if (v37 < 1 || v37 % 100)
      {
        result = sub_1007FBA04(v8, type metadata accessor for InsightsDataManager.TopAssetCategory);
      }

      else
      {
        v38 = v8[*(v5 + 20)];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1003E71B4(0, v36 + 1, 1, v18);
        }

        v40 = *(v18 + 2);
        v39 = *(v18 + 3);
        if (v40 >= v39 >> 1)
        {
          v18 = sub_1003E71B4((v39 > 1), v40 + 1, 1, v18);
        }

        result = sub_1007FBA04(v8, type metadata accessor for InsightsDataManager.TopAssetCategory);
        *(v18 + 2) = v40 + 1;
        v41 = &v18[3 * v40];
        *(v41 + 4) = v38 | 0x100;
        *(v41 + 5) = v37;
        *(v41 + 48) = 96;
        v5 = v49;
      }

      if (*&v34 == ++v35)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    __break(1u);
    return result;
  }

  v33 = _swiftEmptyArrayStorage;
  v34 = _swiftEmptyArrayStorage[2];
  if (v34 != 0.0)
  {
    goto LABEL_20;
  }

LABEL_33:

  if (!*(v18 + 2))
  {

    return 0;
  }

  return v18;
}

uint64_t sub_1007F5E38@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v25 = type metadata accessor for StreakSummary();
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v26 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = &v24 - v4;
  v5 = type metadata accessor for InsightsDataManager.Streaks(0);
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = *(v1 + 16);
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC7Journal19InsightsDataManager___observationRegistrar;
  v31 = v11;
  sub_100034328(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  v24 = v12;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
  swift_beginAccess();
  sub_1007FB99C(v11 + v13, v10, type metadata accessor for InsightsDataManager.Streaks);

  sub_1000F24EC(&qword_100AF3268);
  AppStorage.wrappedValue.getter();

  v14 = v30;
  if (v30 == 2)
  {
    v15 = v25;
    v16 = *(v25 + 28);
    if (*&v10[*(v5 + 20) + v16] < 2)
    {
      sub_1007FBA04(v10, type metadata accessor for InsightsDataManager.Streaks);
LABEL_9:
      swift_getKeyPath();
      v30 = v11;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_1007FB99C(v11 + v13, v7, type metadata accessor for InsightsDataManager.Streaks);
      v17 = v7;
      goto LABEL_10;
    }

    v18 = *&v10[v16];
    sub_1007FBA04(v10, type metadata accessor for InsightsDataManager.Streaks);
    if (v18 > 2)
    {
      goto LABEL_9;
    }

    swift_getKeyPath();
    v30 = v11;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1007FB99C(v11 + v13, v7, type metadata accessor for InsightsDataManager.Streaks);
LABEL_8:
    v17 = &v7[*(v5 + 20)];
    goto LABEL_10;
  }

  sub_1007FBA04(v10, type metadata accessor for InsightsDataManager.Streaks);
  swift_getKeyPath();
  v30 = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1007FB99C(v11 + v13, v7, type metadata accessor for InsightsDataManager.Streaks);
  v17 = v7;
  v15 = v25;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_10:
  v19 = v26;
  sub_1007FB99C(v17, v26, type metadata accessor for StreakSummary);
  sub_1007FBA04(v7, type metadata accessor for InsightsDataManager.Streaks);
  v20 = v27;
  sub_1007FBA64(v19, v27, type metadata accessor for StreakSummary);
  v21 = v29;
  if (*(v20 + *(v15 + 28)) <= 0)
  {
    sub_1007FBA04(v20, type metadata accessor for StreakSummary);
    v22 = 1;
  }

  else
  {
    sub_1007FBA64(v20, v29, type metadata accessor for StreakSummary);
    v22 = 0;
  }

  return (*(v28 + 56))(v21, v22, 1, v15);
}

uint64_t sub_1007F62F0(uint64_t a1)
{
  v3 = type metadata accessor for InsightsDataManager.Streaks(0);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  swift_getKeyPath();
  v17[1] = v6;
  sub_100034328(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = v6 + OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
  swift_beginAccess();
  sub_1007FB99C(v7, v5, type metadata accessor for InsightsDataManager.Streaks);

  sub_1000F24EC(&qword_100AF3268);
  AppStorage.wrappedValue.getter();

  v8 = v17[0];
  if (LOBYTE(v17[0]) != 2)
  {
    sub_1007FBA04(v5, type metadata accessor for InsightsDataManager.Streaks);
    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_5:

LABEL_8:
    v13 = (type metadata accessor for StreakSummary() + 28);
    v14 = *(a1 + *v13);
    swift_getKeyPath();
    v17[0] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = 36;
    goto LABEL_10;
  }

  v9 = &v5[*(v3 + 20)];
  v10 = *(type metadata accessor for StreakSummary() + 28);
  if (*&v9[v10] < 2)
  {
    sub_1007FBA04(v5, type metadata accessor for InsightsDataManager.Streaks);
    goto LABEL_7;
  }

  v11 = *&v5[v10];
  sub_1007FBA04(v5, type metadata accessor for InsightsDataManager.Streaks);
  if (v11 <= 2)
  {
    goto LABEL_5;
  }

LABEL_7:
  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_8;
  }

  v13 = (type metadata accessor for StreakSummary() + 28);
  v14 = *(a1 + *v13);
  swift_getKeyPath();
  v17[0] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = 32;
LABEL_10:
  if (v14 >= *(v7 + *(v3 + v15) + *v13))
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F6610(uint64_t a1)
{
  v60 = a1;
  v2 = type metadata accessor for Calendar.Component();
  v54 = *(v2 - 8);
  v55 = v2;
  __chkstk_darwin(v2);
  v53 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v59 = type metadata accessor for Date();
  v12 = *(v59 - 8);
  __chkstk_darwin(v59);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  __chkstk_darwin(v17);
  v52 = &v47 - v18;
  v19 = type metadata accessor for InsightsDataManager.Streaks(0);
  __chkstk_darwin(v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v1 + 16);
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC7Journal19InsightsDataManager___observationRegistrar;
  v62 = v22;
  v50 = sub_100034328(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  v51 = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = &v22[OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks];
  swift_beginAccess();
  sub_1007FB99C(v24, v21, type metadata accessor for InsightsDataManager.Streaks);

  sub_1000F24EC(&qword_100AF3268);
  AppStorage.wrappedValue.getter();

  v25 = v61;
  if (v61 != 2)
  {
    sub_1007FBA04(v21, type metadata accessor for InsightsDataManager.Streaks);
    if ((v25 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_5:

    v28 = 1;
    goto LABEL_8;
  }

  v26 = &v21[*(v19 + 20)];
  v27 = *(type metadata accessor for StreakSummary() + 28);
  if (*&v26[v27] < 2)
  {
    sub_1007FBA04(v21, type metadata accessor for InsightsDataManager.Streaks);
    goto LABEL_7;
  }

  v29 = *&v21[v27];
  sub_1007FBA04(v21, type metadata accessor for InsightsDataManager.Streaks);
  if (v29 <= 2)
  {
    goto LABEL_5;
  }

LABEL_7:
  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v28 = 0;
  if ((v30 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_8:
  v48 = v19;
  v31 = type metadata accessor for StreakSummary();
  sub_1000082B4(v60 + *(v31 + 20), v11, &unk_100AD4790);
  v32 = v59;
  if ((*(v12 + 48))(v11, 1, v59) != 1)
  {
    v49 = v22;
    v60 = v24;
    v35 = v52;
    (*(v12 + 32))(v52, v11, v32);
    v36 = v56;
    static Calendar.autoupdatingCurrent.getter();
    static Date.now.getter();
    v37 = v53;
    v38 = v54;
    v39 = v55;
    (*(v54 + 104))(v53, enum case for Calendar.Component.weekOfYear(_:), v55);
    v40 = Calendar.isDate(_:equalTo:toGranularity:)();
    (*(v38 + 8))(v37, v39);
    v41 = *(v12 + 8);
    v41(v16, v32);
    (*(v57 + 8))(v36, v58);
    if (v40)
    {
      swift_getKeyPath();
      v61 = v49;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41(v35, v32);
      return *(v60 + *(v48 + 20) + *(v31 + 28));
    }

    v46 = v35;
LABEL_21:
    v41(v46, v32);
    return 0;
  }

  sub_100004F84(v11, &unk_100AD4790);
  if ((v28 & 1) == 0)
  {
    goto LABEL_12;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v34 = type metadata accessor for StreakSummary();
  sub_1000082B4(v60 + *(v34 + 20), v8, &unk_100AD4790);
  v32 = v59;
  if ((*(v12 + 48))(v8, 1, v59) != 1)
  {
    v43 = v49;
    (*(v12 + 32))(v49, v8, v32);
    v44 = v56;
    static Calendar.autoupdatingCurrent.getter();
    static Date.now.getter();
    v45 = Calendar.isDate(_:inSameDayAs:)();
    v41 = *(v12 + 8);
    v41(v16, v32);
    (*(v57 + 8))(v44, v58);
    if (v45)
    {
      swift_getKeyPath();
      v61 = v22;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41(v43, v32);
      return *(v24 + *(v34 + 28));
    }

    v46 = v43;
    goto LABEL_21;
  }

  sub_100004F84(v8, &unk_100AD4790);
  return 0;
}

uint64_t sub_1007F6E00()
{
  v1 = type metadata accessor for InsightsDataManager.Streaks(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 16);
  swift_getKeyPath();
  v14 = v4;
  sub_100034328(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
  swift_beginAccess();
  sub_1007FB99C(v4 + v5, v3, type metadata accessor for InsightsDataManager.Streaks);

  sub_1000F24EC(&qword_100AF3268);
  AppStorage.wrappedValue.getter();

  v6 = HIBYTE(v13);
  if (HIBYTE(v13) == 2)
  {
    v7 = &v3[*(v1 + 20)];
    v8 = *(type metadata accessor for StreakSummary() + 28);
    if (*&v7[v8] < 2)
    {
      sub_1007FBA04(v3, type metadata accessor for InsightsDataManager.Streaks);
LABEL_7:

      v10 = 0;
      return v10 & 1;
    }

    v11 = *&v3[v8];
    sub_1007FBA04(v3, type metadata accessor for InsightsDataManager.Streaks);
    if (v11 >= 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1007FBA04(v3, type metadata accessor for InsightsDataManager.Streaks);
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v10 = v9 ^ 1;
  return v10 & 1;
}

uint64_t sub_1007F7048()
{

  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__topMetric, &qword_100AF3278);

  v1 = OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1007F7138()
{
  sub_1007F7048();

  return swift_deallocClassInstance();
}

void sub_1007F71B8()
{
  sub_1007F72C4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1007F72C4()
{
  if (!qword_100AF2D60)
  {
    type metadata accessor for SidebarInsightsBrickViewModel.MetricType(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF2D60);
    }
  }
}

void sub_1007F733C()
{
  sub_1007F73D0(319, &qword_100AF3088);
  if (v0 <= 0x3F)
  {
    sub_1007F73D0(319, &unk_100AF3090);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1007F73D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SidebarInsightsBrickViewModel.StreakType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 9))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SidebarInsightsBrickViewModel.StreakType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SidebarInsightsBrickViewModel.MilestoneType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 17))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SidebarInsightsBrickViewModel.MilestoneType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 16) = 0;
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

unint64_t sub_1007F7610()
{
  result = qword_100AF30C0;
  if (!qword_100AF30C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF30C0);
  }

  return result;
}

unint64_t sub_1007F7668()
{
  result = qword_100AF30C8;
  if (!qword_100AF30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF30C8);
  }

  return result;
}

unint64_t sub_1007F774C()
{
  result = qword_100AF30F0;
  if (!qword_100AF30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF30F0);
  }

  return result;
}

uint64_t sub_1007F77A0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t sub_1007F77D4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
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

unint64_t sub_1007F7808()
{
  result = qword_100AF30F8;
  if (!qword_100AF30F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF30F8);
  }

  return result;
}

unint64_t sub_1007F785C()
{
  result = qword_100AF3100;
  if (!qword_100AF3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3100);
  }

  return result;
}

unint64_t sub_1007F78B0()
{
  result = qword_100AF3108;
  if (!qword_100AF3108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3108);
  }

  return result;
}

unint64_t sub_1007F7904()
{
  result = qword_100AF3110;
  if (!qword_100AF3110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3110);
  }

  return result;
}

unint64_t sub_1007F7958()
{
  result = qword_100AF3130;
  if (!qword_100AF3130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3130);
  }

  return result;
}

unint64_t sub_1007F79AC()
{
  result = qword_100AF3138;
  if (!qword_100AF3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3138);
  }

  return result;
}

uint64_t sub_1007F7A00()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
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

uint64_t sub_1007F7A34(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v4 + 16);
  if (v3)
  {

    sub_10046F874(a1, v4 + v6, v7, (v3 + 16), v3 + 32);
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    sub_10046E9B0(a1);
    return 1;
  }

  sub_1007F7B28(a1, v4 + v6, *(v4 + 16));
  if (v10)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_1007F7B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  v5 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v5);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  __chkstk_darwin(v10);
  v58 = (&v52 - v11);
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  __chkstk_darwin(v15);
  v63 = &v52 - v17;
  v61 = a3;
  if (a3)
  {
    a3 = 0;
    v60 = *(v16 + 72);
    v62 = v5;
    while (1)
    {
      v18 = v63;
      sub_1007FB99C(a2, v63, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      sub_1007FB99C(v18, v14, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v20 = v14;
      if (EnumCaseMultiPayload == 1 || (v21 = *(v14 + 1), v56 = *v14, v54 = v21, LODWORD(v57) = v14[16], v22 = sub_1000F24EC(&qword_100AE4CB0), v23 = *(v22 + 48), v24 = type metadata accessor for UUID(), v25 = *(*(v24 - 8) + 8), v25(&v14[v23], v24), v26 = v14, v27 = v9, v28 = v58, sub_1007FB99C(v59, v58, type metadata accessor for SidebarInsightsBrickViewModel.MetricType), v29 = swift_getEnumCaseMultiPayload(), v20 = v28, v9 = v27, v14 = v26, v29 == 1))
      {
        sub_1007FBA04(v20, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
        sub_1007FBA64(v63, v9, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
        v30 = swift_getEnumCaseMultiPayload();
        v31 = v9;
        if (v30 != 1)
        {
          goto LABEL_3;
        }

        v57 = *v9;
        v32 = v9[8];
        v33 = sub_1000F24EC(&qword_100AE4CA8);
        v34 = *(v33 + 48);
        v35 = type metadata accessor for UUID();
        v36 = *(*(v35 - 8) + 8);
        v36(&v9[v34], v35);
        v37 = v55;
        sub_1007FB99C(v59, v55, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
        v38 = swift_getEnumCaseMultiPayload();
        v31 = v37;
        if (v38 != 1)
        {
          goto LABEL_3;
        }

        v56 = *v55;
        v39 = v55[8];
        v36(&v55[*(v33 + 48)], v35);
        v40 = v32 >> 6;
        if (v32 >> 6 > 1)
        {
          if (v40 == 2)
          {
            if ((v39 & 0xC0) == 0x80)
            {
              goto LABEL_40;
            }
          }

          else if (v39 > 0xBF)
          {
LABEL_40:
            if (v57 == v56 && ((v39 ^ v32) & 1) == 0)
            {
              return a3;
            }
          }
        }

        else if (v40)
        {
          if ((v39 & 0xC0) == 0x40)
          {
            goto LABEL_40;
          }
        }

        else if (v39 < 0x40)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v41 = v58[1];
        v53 = *v58;
        v42 = *(v58 + 16);
        v25(v58 + *(v22 + 48), v24);
        v43 = v57 >> 5;
        if (v57 >> 5 > 1)
        {
          if (v43 == 2)
          {
            sub_1007FBA04(v63, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
            if ((v42 & 0xE0) != 0x40)
            {
              goto LABEL_4;
            }

            goto LABEL_29;
          }

          if (v43 != 3)
          {
            sub_1007FBA04(v63, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
            if ((v42 & 0xE0) == 0x80 && v56 == v53)
            {
              return a3;
            }

            goto LABEL_4;
          }

          v31 = v63;
          if ((v42 & 0xE0) != 0x60)
          {
LABEL_3:
            sub_1007FBA04(v31, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
            goto LABEL_4;
          }

          if (v56 <= 4u)
          {
            v44 = 0xE500000000000000;
            if (v56 <= 1u)
            {
              if (v56)
              {
                v45 = 0x6F65646976;
              }

              else
              {
                v45 = 0x6F746F6870;
              }
            }

            else if (v56 == 2)
            {
              v45 = 0x6F69647561;
            }

            else if (v56 == 3)
            {
              v45 = 0x616964656DLL;
            }

            else
            {
              v45 = 0x6563616C70;
            }
          }

          else if (v56 > 7u)
          {
            if (v56 == 8)
            {
              v45 = 0x4D664F6574617473;
              v44 = 0xEB00000000646E69;
            }

            else
            {
              if (v56 != 9)
              {
                v44 = 0xE800000000000000;
                v46 = 0x7465666E6F63;
                goto LABEL_59;
              }

              v44 = 0xE700000000000000;
              v45 = 0x676E6977617264;
            }
          }

          else if (v56 == 5)
          {
            v45 = 0x61737265766E6F63;
            v44 = 0xEC0000006E6F6974;
          }

          else
          {
            if (v56 == 6)
            {
              v44 = 0xE800000000000000;
              v45 = 0x7974697669746361;
              goto LABEL_60;
            }

            v44 = 0xEA00000000006E6FLL;
            v46 = 0x63656C666572;
LABEL_59:
            v45 = v46 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
          }

LABEL_60:
          if (v53 <= 4u)
          {
            v47 = 0xE500000000000000;
            if (v53 <= 1u)
            {
              if (v53)
              {
                v48 = 0x6F65646976;
              }

              else
              {
                v48 = 0x6F746F6870;
              }
            }

            else if (v53 == 2)
            {
              v48 = 0x6F69647561;
            }

            else if (v53 == 3)
            {
              v48 = 0x616964656DLL;
            }

            else
            {
              v48 = 0x6563616C70;
            }

            goto LABEL_82;
          }

          if (v53 > 7u)
          {
            if (v53 == 8)
            {
              v48 = 0x4D664F6574617473;
              v47 = 0xEB00000000646E69;
            }

            else
            {
              if (v53 != 9)
              {
                v47 = 0xE800000000000000;
                v49 = 0x7465666E6F63;
                goto LABEL_81;
              }

              v47 = 0xE700000000000000;
              v48 = 0x676E6977617264;
            }
          }

          else if (v53 == 5)
          {
            v48 = 0x61737265766E6F63;
            v47 = 0xEC0000006E6F6974;
          }

          else
          {
            if (v53 == 6)
            {
              v47 = 0xE800000000000000;
              v48 = 0x7974697669746361;
              goto LABEL_82;
            }

            v47 = 0xEA00000000006E6FLL;
            v49 = 0x63656C666572;
LABEL_81:
            v48 = v49 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
          }

LABEL_82:
          if (v45 == v48 && v44 == v47)
          {

            sub_1007FBA04(v63, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
          }

          else
          {
            v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_1007FBA04(v63, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
            if ((v50 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if ((v56 & 0xFF00) == 0x300)
          {
            if (BYTE1(v53) == 3)
            {
              goto LABEL_35;
            }
          }

          else if (BYTE1(v53) != 3 && ((v53 ^ v56) & 0xFF00) == 0)
          {
LABEL_35:
            if (v54 == v41)
            {
              return a3;
            }

            goto LABEL_4;
          }

          goto LABEL_4;
        }

        if (!v43)
        {
          sub_1007FBA04(v63, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
          if (v42 > 0x1F)
          {
            goto LABEL_4;
          }

LABEL_29:
          if (v53 == v56)
          {
            goto LABEL_35;
          }

          goto LABEL_4;
        }

        sub_1007FBA04(v63, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
        if ((v42 & 0xE0) == 0x20)
        {
          goto LABEL_35;
        }
      }

LABEL_4:
      ++a3;
      a2 += v60;
      if (v61 == a3)
      {
        return 0;
      }
    }
  }

  return a3;
}

BOOL sub_1007F83F8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v6 = a3 >> 5;
  if (v6 <= 1)
  {
    if (a3 >> 5)
    {
      if ((a6 & 0xE0) != 0x20 || a4 != a1)
      {
        return 0;
      }

      v25 = a6 ^ a3 ^ 1;
      if (a2 != a5)
      {
        v25 = 0;
      }

      return v25 & 1;
    }

    else if (a4 != a1 || a2 != a5 || a6 >= 0x20u)
    {
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (v6 == 2)
    {
      v23 = a4 == a1 && (a6 & 0xE0) == 64 && a2 == a5;
    }

    else
    {
      if (v6 == 3)
      {
        if ((a6 & 0xE0) == 0x60)
        {
          v7 = 0x6F746F6870;
          if (a1 <= 4u)
          {
            v26 = 0x6F69647561;
            v27 = 0x616964656DLL;
            if (a1 != 3)
            {
              v27 = 0x6563616C70;
            }

            if (a1 != 2)
            {
              v26 = v27;
            }

            v28 = 0x6F65646976;
            if (!a1)
            {
              v28 = 0x6F746F6870;
            }

            if (a1 <= 1u)
            {
              v16 = v28;
            }

            else
            {
              v16 = v26;
            }

            v17 = 0xE500000000000000;
          }

          else
          {
            v8 = 0x4D664F6574617473;
            v9 = 0xEB00000000646E69;
            v10 = 0xE700000000000000;
            v11 = 0x676E6977617264;
            v12 = 0xE800000000000000;
            if (a1 != 9)
            {
              v11 = 0x69747465666E6F63;
              v10 = 0xE800000000000000;
            }

            if (a1 != 8)
            {
              v8 = v11;
              v9 = v10;
            }

            v13 = 0x61737265766E6F63;
            v14 = 0xEC0000006E6F6974;
            v15 = 0x7974697669746361;
            if (a1 != 6)
            {
              v15 = 0x697463656C666572;
              v12 = 0xEA00000000006E6FLL;
            }

            if (a1 != 5)
            {
              v13 = v15;
              v14 = v12;
            }

            if (a1 <= 7u)
            {
              v16 = v13;
            }

            else
            {
              v16 = v8;
            }

            if (a1 <= 7u)
            {
              v17 = v14;
            }

            else
            {
              v17 = v9;
            }
          }

          if (a4 <= 4u)
          {
            v29 = 0xE500000000000000;
            if (a4 <= 1u)
            {
              if (a4)
              {
                v7 = 0x6F65646976;
              }
            }

            else if (a4 == 2)
            {
              v7 = 0x6F69647561;
            }

            else if (a4 == 3)
            {
              v7 = 0x616964656DLL;
            }

            else
            {
              v7 = 0x6563616C70;
            }
          }

          else if (a4 > 7u)
          {
            if (a4 == 8)
            {
              v7 = 0x4D664F6574617473;
              v29 = 0xEB00000000646E69;
            }

            else if (a4 == 9)
            {
              v29 = 0xE700000000000000;
              v7 = 0x676E6977617264;
            }

            else
            {
              v29 = 0xE800000000000000;
              v7 = 0x69747465666E6F63;
            }
          }

          else if (a4 == 5)
          {
            v7 = 0x61737265766E6F63;
            v29 = 0xEC0000006E6F6974;
          }

          else if (a4 == 6)
          {
            v29 = 0xE800000000000000;
            v7 = 0x7974697669746361;
          }

          else
          {
            v7 = 0x697463656C666572;
            v29 = 0xEA00000000006E6FLL;
          }

          v30 = a1;
          v31 = a4;
          if (v16 == v7 && v17 == v29)
          {
          }

          else
          {
            v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v34 & 1) == 0)
            {
              return 0;
            }
          }

          if ((v30 & 0xFF00) == 0x300)
          {
            if (HIBYTE(v31) != 3)
            {
              return 0;
            }
          }

          else
          {
            v35 = 0;
            if (HIBYTE(v31) == 3 || ((v31 ^ v30) & 0xFF00) != 0)
            {
              return v35;
            }
          }

          return a2 == a5;
        }

        return 0;
      }

      v23 = (a6 & 0xE0) == 0x80 && a1 == a4;
    }

    v24 = v23;
    return v24 & 1;
  }
}

BOOL sub_1007F8818(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 & 0xC0;
  v5 = a4 ^ a2;
  v6 = ((a4 ^ a2) & 1) == 0;
  if (a1 != a3)
  {
    v6 = 0;
  }

  if (v4 != 128)
  {
    v6 = 0;
  }

  v7 = (v5 & 1) == 0;
  if (a1 != a3)
  {
    v7 = 0;
  }

  if (a4 < 0xC0u)
  {
    v7 = 0;
  }

  if (a2 >> 6 != 2)
  {
    v6 = v7;
  }

  v8 = (v5 & 1) == 0;
  if (a1 != a3)
  {
    v8 = 0;
  }

  v9 = a4 <= 0x3Fu && v8;
  v10 = (v5 & 1) == 0;
  if (a1 != a3)
  {
    v10 = 0;
  }

  if (v4 != 64)
  {
    v10 = 0;
  }

  if (!(a2 >> 6))
  {
    v10 = v9;
  }

  if ((a2 >> 6) <= 1u)
  {
    return v10;
  }

  else
  {
    return v6;
  }
}

BOOL sub_1007F88A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  sub_1007FB99C(a1, &v35 - v14, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_4:
    sub_1007FBA04(v15, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    sub_1007FB99C(a1, v9, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = *v9;
      v20 = v9[8];
      v21 = sub_1000F24EC(&qword_100AE4CA8);
      v22 = a2;
      v23 = *(v21 + 48);
      v24 = type metadata accessor for UUID();
      v25 = *(*(v24 - 8) + 8);
      v25(&v9[v23], v24);
      sub_1007FB99C(v22, v6, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = *v6;
        v27 = v6;
        v28 = v6[8];
        v25(&v27[*(v21 + 48)], v24);
        return sub_1007F8818(v40, v20, v26, v28);
      }

      v30 = v6;
    }

    else
    {
      v30 = v9;
    }

    sub_1007FBA04(v30, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    return 0;
  }

  v16 = *(v15 + 1);
  v36 = *v15;
  v39 = v16;
  v40 = v6;
  v38 = v15[16];
  v37 = sub_1000F24EC(&qword_100AE4CB0);
  v17 = *(v37 + 48);
  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 8);
  v19(&v15[v17], v18);
  sub_1007FB99C(a2, v12, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v12;
    v6 = v40;
    goto LABEL_4;
  }

  v32 = *v12;
  v31 = *(v12 + 1);
  v33 = v12[16];
  v19(&v12[*(v37 + 48)], v18);
  if ((v38 & 0xE0) == 0x20 && (v33 & 0xE0) == 0x20)
  {
    return v39 == v31;
  }

  else
  {
    return sub_1007F83F8(v36, v39, v38, v32, v31, v33);
  }
}

char *sub_1007F8C44(uint64_t a1)
{
  v3 = type metadata accessor for ColorResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 3) = 3;
  sub_1000F24EC(&qword_100AD3CA8);
  v7 = swift_allocObject();
  v27 = xmmword_100940050;
  *(v7 + 16) = xmmword_100940050;
  if (qword_100AD0C58 != -1)
  {
    swift_once();
  }

  v8 = sub_10000617C(v3, qword_100B31418);
  v9 = *(v4 + 16);
  v9(v6, v8, v3);
  *(v7 + 32) = Color.init(_:)();
  if (qword_100AD0C50 != -1)
  {
    swift_once();
  }

  v10 = sub_10000617C(v3, qword_100B31400);
  v9(v6, v10, v3);
  *(v7 + 40) = Color.init(_:)();
  *(v1 + 4) = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = v27;
  if (qword_100AD0C18 != -1)
  {
    swift_once();
  }

  v12 = sub_10000617C(v3, qword_100B31358);
  v9(v6, v12, v3);
  *(v11 + 32) = Color.init(_:)();
  if (qword_100AD0C10 != -1)
  {
    swift_once();
  }

  v13 = sub_10000617C(v3, qword_100B31340);
  v9(v6, v13, v3);
  *(v11 + 40) = Color.init(_:)();
  *(v1 + 5) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = v27;
  if (qword_100AD0C68 != -1)
  {
    swift_once();
  }

  v15 = sub_10000617C(v3, qword_100B31448);
  v9(v6, v15, v3);
  *(v14 + 32) = Color.init(_:)();
  if (qword_100AD0C60 != -1)
  {
    swift_once();
  }

  v16 = sub_10000617C(v3, qword_100B31430);
  v9(v6, v16, v3);
  *(v14 + 40) = Color.init(_:)();
  *(v1 + 6) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v27;
  if (qword_100AD0C28 != -1)
  {
    swift_once();
  }

  v18 = sub_10000617C(v3, qword_100B31388);
  v9(v6, v18, v3);
  *(v17 + 32) = Color.init(_:)();
  if (qword_100AD0C20 != -1)
  {
    swift_once();
  }

  v19 = sub_10000617C(v3, qword_100B31370);
  v9(v6, v19, v3);
  *(v17 + 40) = Color.init(_:)();
  *(v1 + 7) = v17;
  sub_10015DDCC();
  *(v1 + 8) = AppStorage.init<A>(_:store:)();
  *(v1 + 9) = 0;
  *(v1 + 10) = _swiftEmptyArrayStorage;
  *(v1 + 11) = 0;
  *(v1 + 12) = _swiftEmptyArrayStorage;
  v20 = OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__topMetric;
  v21 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  (*(*(v21 - 8) + 56))(&v1[v20], 1, 1, v21);
  *&v1[OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__secondaryMetrics] = _swiftEmptyArrayStorage;
  v22 = swift_allocObject();
  *(v22 + 16) = v27;
  if (qword_100AD0C38 != -1)
  {
    swift_once();
  }

  v23 = sub_10000617C(v3, qword_100B313B8);
  v9(v6, v23, v3);
  *(v22 + 32) = Color.init(_:)();
  if (qword_100AD0C30 != -1)
  {
    swift_once();
  }

  v24 = sub_10000617C(v3, qword_100B313A0);
  v9(v6, v24, v3);
  *(v22 + 40) = Color.init(_:)();
  *&v1[OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__gradientColors] = v22;
  ObservationRegistrar.init()();
  if (a1)
  {
    v25 = a1;
  }

  else
  {
    if (qword_100AD00D8 != -1)
    {
      swift_once();
    }
  }

  *(v1 + 2) = v25;

  withObservationTracking<A>(_:onChange:)();
  return v1;
}

uint64_t sub_1007F92FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AF3278);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_1000F24EC(&qword_100AF3288);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1000082B4(a1, &v20 - v12, &qword_100AF3278);
  sub_1000082B4(a2, &v13[v15], &qword_100AF3278);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000082B4(v13, v10, &qword_100AF3278);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1007FBA64(&v13[v15], v7, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      v18 = sub_1007F88A8(v10, v7);
      sub_1007FBA04(v7, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      sub_1007FBA04(v10, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      sub_100004F84(v13, &qword_100AF3278);
      v17 = !v18;
      return v17 & 1;
    }

    sub_1007FBA04(v10, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100004F84(v13, &qword_100AF3288);
    v17 = 1;
    return v17 & 1;
  }

  sub_100004F84(v13, &qword_100AF3278);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1007F95E0(void *a1)
{
  v24 = sub_1000F24EC(&qword_100AF3400);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_1000F24EC(&qword_100AF3408);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_1000F24EC(&qword_100AF3410);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_10000CA14(a1, a1[3]);
  sub_1007FD43C();
  v10 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    return sub_10000BA7C(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = KeyedDecodingContainer.allKeys.getter();
  if (*(v14 + 16) != 1)
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    sub_1000F24EC(&qword_100AD8100);
    *v18 = &type metadata for SidebarInsightsBrickViewModel.StreakTimespanUnit;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_10000BA7C(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_1007FD490();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_1007FD4E4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_10000BA7C(v26);
  return v27;
}