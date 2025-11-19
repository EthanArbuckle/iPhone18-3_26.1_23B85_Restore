uint64_t sub_100041720@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009CEC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double sub_10004178C()
{
  v1 = sub_10009DC44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    result = *(v0 + 16);
    v11 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);
  }

  else
  {
    v14 = *(v0 + 16);

    sub_10009E834();
    v15 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D76C(v7, v6, v9, v8, 0);
    (*(v2 + 8))(v5, v1);
    return v16;
  }

  return result;
}

uint64_t sub_100041908@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009DC44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for HomeInteractiveWidgetsEntryView(0);
  sub_10001E0A8(v1 + *(v12 + 24), v11, &qword_1000C15F8, &qword_1000A2510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10009E3D4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10009E834();
    v16 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100041B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a1;
  v117 = a3;
  v104 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  v4 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v6 = (&v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100003714(&qword_1000C1600, &qword_1000A1490);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v103 = (&v101 - v9);
  v111 = sub_100003714(&qword_1000C1608, &qword_1000A1498);
  v10 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v105 = &v101 - v11;
  v107 = sub_100003714(&qword_1000C1610, &qword_1000A14A0);
  v12 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v109 = &v101 - v13;
  v108 = type metadata accessor for WidgetViewForLargeSquareTiles(0);
  v14 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10009E3D4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v101 - v23;
  v114 = sub_100003714(&qword_1000C1618, &qword_1000A14A8);
  v25 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v110 = &v101 - v26;
  v112 = sub_100003714(&qword_1000C1620, &qword_1000A14B0);
  v27 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v113 = (&v101 - v28);
  v119 = sub_100003714(&qword_1000C1628, &qword_1000A14B8);
  v29 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v115 = &v101 - v30;
  v116 = sub_100003714(&qword_1000C1630, &qword_1000A14C0);
  v31 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v118 = (&v101 - v32);
  v33 = sub_10009CF54();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v35 = sub_10009E5A4();
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v37 = type metadata accessor for HomeInteractiveWidgetsEntryView(0);
  v38 = *(a2 + v37[9]);
  if (v38 > 4)
  {
    if (*(a2 + v37[9]) <= 6u)
    {
      if (v38 == 5)
      {
        sub_10009E554();
        sub_10009CF44();
        *&v120 = sub_10009E5E4();
        *(&v120 + 1) = v50;
        v121 = xmmword_1000A1300;
        v122 = xmmword_1000A1310;
        LOBYTE(v123) = 0;
        sub_10004D838();
        sub_10009DD94();
        v126 = v134[16];
        v125 = 1;
        v134[17] = 1;
        goto LABEL_23;
      }

      sub_10009E554();
      sub_10009CF44();
      *&v120 = sub_10009E5E4();
      *(&v120 + 1) = v65;
      v121 = xmmword_1000A1300;
      v122 = xmmword_1000A1310;
      LOBYTE(v123) = 1;
      sub_10004D838();
      sub_10009DD94();
      v126 = v134[16];
      v125 = 0;
      *&v134[16] = v134[16];
    }

    else
    {
      if (v38 == 7)
      {
        sub_10009E554();
        sub_10009CF44();
        v55 = sub_10009E5E4();
        v57 = v56;
        sub_10009E554();
        sub_10009CF44();
        v58 = sub_10009E5E4();
        *&v120 = v55;
        *(&v120 + 1) = v57;
        *&v121 = v58;
        *(&v121 + 1) = v59;
        v122 = xmmword_1000A1320;
        LOBYTE(v123) = 0;
        sub_10004D838();
        sub_10009DD94();
        v45 = v134[16];
        v46 = v132;
        v47 = v133;
        v48 = *v134;
        v126 = v134[16];
      }

      else
      {
        if (v38 != 8)
        {
          sub_10009E554();
          sub_10009CF44();
          *&v120 = sub_10009E5E4();
          *(&v120 + 1) = v60;
          v121 = xmmword_1000A1300;
          v122 = xmmword_1000A1310;
          LOBYTE(v123) = 1;
          goto LABEL_22;
        }

        sub_10009E554();
        sub_10009CF44();
        v40 = sub_10009E5E4();
        v42 = v41;
        sub_10009E554();
        sub_10009CF44();
        v43 = sub_10009E5E4();
        *&v120 = v40;
        *(&v120 + 1) = v42;
        *&v121 = v43;
        *(&v121 + 1) = v44;
        *&v122 = 0xD000000000000012;
        *(&v122 + 1) = 0x80000001000A4900;
        LOBYTE(v123) = 1;
        sub_10004D838();
        sub_10009DD94();
        v45 = v134[16];
        v46 = v132;
        v47 = v133;
        v48 = *v134;
        v126 = v134[16];
      }

      v125 = 1;
      v132 = v46;
      v133 = v47;
      *v134 = v48;
      v134[16] = v45;
      v134[17] = 1;
    }

    sub_100003714(&qword_1000C1640, &qword_1000A14C8);
    sub_10004D88C();
    sub_10009DD94();
    v120 = v127;
    v121 = v128;
    v122 = v129;
    v123 = v130;
    v131 = 1;
    v124 = 1;
    sub_100003714(&qword_1000C16A8, &qword_1000A14E8);
    sub_10004DB4C();
    sub_10009DD94();
    v66 = v133;
    v62 = v118;
    *v118 = v132;
    v62[1] = v66;
    v62[2] = *v134;
    v63 = *&v134[15];
    goto LABEL_28;
  }

  if (*(a2 + v37[9]) > 2u)
  {
    if (v38 != 3)
    {
      sub_10009E554();
      sub_10009CF44();
      *&v120 = sub_10009E5E4();
      *(&v120 + 1) = v64;
      v121 = xmmword_1000A1300;
      v122 = xmmword_1000A1310;
      LOBYTE(v123) = 0;
      sub_10004D838();
      sub_10009DD94();
      v126 = v134[16];
      v125 = 0;
      *&v134[16] = v134[16];
      sub_100003714(&qword_1000C1640, &qword_1000A14C8);
      sub_10004D88C();
      sub_10009DD94();
      v120 = v127;
      v121 = v128;
      v122 = v129;
      v123 = v130;
      v131 = 1;
      v124 = 1;
      goto LABEL_24;
    }

    sub_10009E554();
    sub_10009CF44();
    *&v120 = sub_10009E5E4();
    *(&v120 + 1) = v49;
    v121 = xmmword_1000A1300;
    v122 = xmmword_1000A1310;
    LOBYTE(v123) = 1;
    sub_10004D838();
    sub_10009DD94();
    v126 = v134[16];
    v125 = 1;
    v134[17] = 1;
LABEL_23:
    sub_100003714(&qword_1000C1640, &qword_1000A14C8);
    sub_10004D88C();
    sub_10009DD94();
    v120 = v127;
    v121 = v128;
    v122 = v129;
    v123 = v130;
    v131 = 0;
    v124 = 0;
LABEL_24:
    sub_100003714(&qword_1000C16A8, &qword_1000A14E8);
    sub_10004DB4C();
    sub_10009DD94();
    v61 = v133;
    v62 = v118;
    *v118 = v132;
    v62[1] = v61;
    v62[2] = *v134;
    v63 = *&v134[15];
LABEL_28:
    *(v62 + 47) = v63;
    swift_storeEnumTagMultiPayload();
    sub_100003714(&qword_1000C1690, &qword_1000A14E0);
    sub_10004DAD0(&qword_1000C1698, &qword_1000C1690, &qword_1000A14E0, sub_10004DB4C);
    sub_100059AD4(&qword_1000C16B0, &qword_1000C1628, &qword_1000A14B8, sub_10004DB7C);
    return sub_10009DD94();
  }

  if (v38 - 1 < 2)
  {
    sub_10009E554();
    sub_10009CF44();
    *&v120 = sub_10009E5E4();
    *(&v120 + 1) = v39;
    v121 = xmmword_1000A1300;
    v122 = xmmword_1000A1310;
    LOBYTE(v123) = 0;
LABEL_22:
    sub_10004D838();
    sub_10009DD94();
    v126 = v134[16];
    v125 = 0;
    *&v134[16] = v134[16];
    goto LABEL_23;
  }

  v51 = *(a2 + v37[7]);
  if (!v51)
  {
    goto LABEL_17;
  }

  v52 = *(v51 + 16);
  switch(v52)
  {
    case 2:
      v101 = 2;
      v102 = v51;

      sub_100041908(v24);
      (*(v18 + 104))(v22, enum case for WidgetFamily.systemMedium(_:), v17);
      sub_10004DA88(&qword_1000C16C0, &type metadata accessor for WidgetFamily);
      sub_10009E654();
      sub_10009E654();
      v75 = *(v18 + 8);
      v75(v22, v17);
      v75(v24, v17);
      v74 = v102;
      if (v132 != v120)
      {
LABEL_35:
        v102 = v74;
        sub_100041908(v24);
        (*(v18 + 104))(v22, enum case for WidgetFamily.systemSmall(_:), v17);
        sub_10004DA88(&qword_1000C16C0, &type metadata accessor for WidgetFamily);
        sub_10009E654();
        sub_10009E654();
        v86 = *(v18 + 8);
        v86(v22, v17);
        v86(v24, v17);
        v87 = v132;
        v88 = v120;
        sub_10009DA94();
        if (v87 == v88)
        {
          v91 = v89;
          v92 = v90;
          KeyPath = swift_getKeyPath();
          v94 = v101 > 2;
          v95 = v105;
          if (v101 >= 3)
          {

            v96 = 2;
          }

          else
          {
            v97 = sub_10009ED34();

            v96 = 1;
            if (v97)
            {
              v96 = 2;
            }
          }

          v85 = v113;
          v84 = v110;
          v98 = v103;
          *v103 = KeyPath;
          *(v98 + 8) = 0;
          v98[2] = v102;
          v98[3] = v96;
          *(v98 + 32) = v94;
          *(v98 + 5) = v91;
          *(v98 + 6) = v92;
          swift_storeEnumTagMultiPayload();
          sub_10004DA34();
          sub_10004DA88(&qword_1000C1680, type metadata accessor for WidgetViewsForMediumSystemFamily);
          sub_10009DD94();
        }

        else
        {
          sub_1000435C0(v102, v6, v89, v90);
          sub_10004DC34(v6, v103, type metadata accessor for WidgetViewsForMediumSystemFamily);
          swift_storeEnumTagMultiPayload();
          sub_10004DA34();
          sub_10004DA88(&qword_1000C1680, type metadata accessor for WidgetViewsForMediumSystemFamily);
          v95 = v105;
          sub_10009DD94();
          sub_10004DD8C(v6, type metadata accessor for WidgetViewsForMediumSystemFamily);
          v85 = v113;
          v84 = v110;
        }

        sub_10001E0A8(v95, v109, &qword_1000C1608, &qword_1000A1498);
        swift_storeEnumTagMultiPayload();
        sub_10004DA88(&qword_1000C1668, type metadata accessor for WidgetViewForLargeSquareTiles);
        sub_10004D978();
        sub_10009DD94();
        sub_1000160CC(v95, &qword_1000C1608, &qword_1000A1498);
        v53 = v115;
        goto LABEL_44;
      }

      break;
    case 1:
      v73 = *(a2 + v37[7]);
      v74 = v51;

      break;
    case 0:
LABEL_17:
      v53 = v115;
      if (*(a2 + v37[8]))
      {
        sub_10009E554();
        sub_10009CF44();
        *&v120 = sub_10009E5E4();
        *(&v120 + 1) = v54;
        v121 = xmmword_1000A1300;
        v122 = xmmword_1000A1310;
        LOBYTE(v123) = 1;
      }

      else
      {
        sub_10009E554();
        sub_10009CF44();
        *&v120 = sub_10009E5E4();
        *(&v120 + 1) = v68;
        v121 = xmmword_1000A1300;
        v122 = xmmword_1000A1310;
        LOBYTE(v123) = 0;
      }

      sub_10004D838();
      sub_10009DD94();
      v69 = v133;
      v70 = *v134;
      v71 = v134[16];
      v72 = v113;
      *v113 = v132;
      v72[1] = v69;
      v72[2] = v70;
      *(v72 + 48) = v71;
      swift_storeEnumTagMultiPayload();
      sub_100003714(&qword_1000C1640, &qword_1000A14C8);
      sub_10004D88C();
      sub_100059AD4(&qword_1000C1650, &qword_1000C1618, &qword_1000A14A8, sub_10004D8BC);
      sub_10009DD94();
      goto LABEL_45;
    default:
      v101 = *(v51 + 16);
      v74 = v51;

      goto LABEL_35;
  }

  sub_10009DA94();
  v77 = v76;
  v79 = v78;
  v80 = swift_getKeyPath();
  v81 = swift_getKeyPath();
  v82 = v108;
  *&v16[*(v108 + 20)] = v81;
  sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  swift_storeEnumTagMultiPayload();
  *&v16[v82[6]] = swift_getKeyPath();
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  swift_storeEnumTagMultiPayload();
  *&v16[v82[7]] = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  *v16 = v80;
  v16[8] = 0;
  v83 = &v16[v82[8]];
  *v83 = v77;
  *(v83 + 1) = v79;
  *&v16[v82[9]] = v74;
  sub_10004DC34(v16, v109, type metadata accessor for WidgetViewForLargeSquareTiles);
  swift_storeEnumTagMultiPayload();
  sub_10004DA88(&qword_1000C1668, type metadata accessor for WidgetViewForLargeSquareTiles);
  sub_10004D978();
  v84 = v110;
  sub_10009DD94();
  sub_10004DD8C(v16, type metadata accessor for WidgetViewForLargeSquareTiles);
  v53 = v115;
  v85 = v113;
LABEL_44:
  v99 = sub_100003714(&qword_1000C1660, &qword_1000A14D0);
  (*(*(v99 - 8) + 56))(v84, 0, 1, v99);
  sub_10001E0A8(v84, v85, &qword_1000C1618, &qword_1000A14A8);
  swift_storeEnumTagMultiPayload();
  sub_100003714(&qword_1000C1640, &qword_1000A14C8);
  sub_10004D88C();
  sub_100059AD4(&qword_1000C1650, &qword_1000C1618, &qword_1000A14A8, sub_10004D8BC);
  sub_10009DD94();
  sub_1000160CC(v84, &qword_1000C1618, &qword_1000A14A8);
LABEL_45:
  v100 = sub_100003714(&qword_1000C1688, &qword_1000A14D8);
  (*(*(v100 - 8) + 56))(v53, 0, 1, v100);
  sub_10001E0A8(v53, v118, &qword_1000C1628, &qword_1000A14B8);
  swift_storeEnumTagMultiPayload();
  sub_100003714(&qword_1000C1690, &qword_1000A14E0);
  sub_10004DAD0(&qword_1000C1698, &qword_1000C1690, &qword_1000A14E0, sub_10004DB4C);
  sub_100059AD4(&qword_1000C16B0, &qword_1000C1628, &qword_1000A14B8, sub_10004DB7C);
  sub_10009DD94();
  return sub_1000160CC(v53, &qword_1000C1628, &qword_1000A14B8);
}

double sub_1000435C0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = swift_getKeyPath();
  sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  v9 = a2 + v8[5];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v8[8];
  *(a2 + v8[6]) = a1;
  v11 = *(a1 + 16);
  *(a2 + v10) = v11 > 4;
  if (v11 < 5)
  {
    v13 = sub_10009ED34();

    v12 = 2;
    if (v13)
    {
      v12 = 4;
    }
  }

  else
  {

    v12 = 4;
  }

  *(a2 + v8[7]) = v12;
  v14 = (a2 + v8[9]);
  *v14 = a3;
  v14[1] = a4;
  *(a2 + v8[10]) = (a3 + -40.0) * 0.25;
  result = (a4 + -24.0) * 0.5;
  *(a2 + v8[11]) = result;
  *(a2 + v8[12]) = 0x4020000000000000;
  return result;
}

__n128 sub_10004376C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10004DC34(v2, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HomeInteractiveWidgetsEntryView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_10004EF84(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for HomeInteractiveWidgetsEntryView);
  v8 = sub_1000448A4();
  v9 = 0uLL;
  v10 = 0uLL;
  if ((v8 & 1) == 0)
  {
    v9.n128_f64[0] = sub_10004178C();
    *(&v10 + 1) = v11;
    v9.n128_u64[1] = v12;
  }

  v15 = v10;
  v16 = v9;
  v13 = sub_10009DEB4();
  *a2 = sub_10004D778;
  *(a2 + 8) = v7;
  *(a2 + 16) = v13;
  result = v16;
  *(a2 + 40) = v15;
  *(a2 + 24) = result;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_1000438C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003714(&qword_1000C1880, &qword_1000A18C8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  *v10 = sub_10009DCF4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_100003714(&qword_1000C1888, &qword_1000A18D0);
  sub_100043A28(a1, &v10[*(v11 + 44)]);
  sub_10001E0A8(v10, v8, &qword_1000C1880, &qword_1000A18C8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v12 = sub_100003714(&qword_1000C1890, &qword_1000A18D8);
  sub_10001E0A8(v8, a2 + *(v12 + 48), &qword_1000C1880, &qword_1000A18C8);
  v13 = a2 + *(v12 + 64);
  *v13 = 0;
  *(v13 + 8) = 1;
  sub_1000160CC(v10, &qword_1000C1880, &qword_1000A18C8);
  return sub_1000160CC(v8, &qword_1000C1880, &qword_1000A18C8);
}

uint64_t sub_100043A28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v142 = a2;
  v3 = sub_100003714(&qword_1000C1898, &qword_1000A18E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v141 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v153 = &v120 - v7;
  v150 = sub_100003714(&qword_1000C18A0, &qword_1000A18E8);
  v8 = *(*(v150 - 8) + 64);
  v9 = __chkstk_darwin(v150);
  v149 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v147 = &v120 - v11;
  v158 = sub_10009DAA4();
  v156 = *(v158 - 8);
  v12 = *(v156 + 64);
  v13 = __chkstk_darwin(v158);
  v157 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v151 = &v120 - v15;
  v145 = sub_100003714(&qword_1000C18A8, &qword_1000A18F0);
  v16 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v144 = &v120 - v17;
  v148 = sub_100003714(&qword_1000C18B0, &qword_1000A18F8);
  v154 = *(v148 - 8);
  v18 = *(v154 + 64);
  __chkstk_darwin(v148);
  v146 = &v120 - v19;
  v20 = sub_100003714(&qword_1000C18B8, &qword_1000A1900);
  v137 = *(v20 - 8);
  v138 = v20;
  v21 = *(v137 + 64);
  v22 = __chkstk_darwin(v20);
  v140 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v155 = &v120 - v24;
  v25 = sub_100003714(&qword_1000C18C0, &qword_1000A1908);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v120 - v27;
  v29 = sub_100003714(&qword_1000C18C8, &qword_1000A1910);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v139 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v120 - v33;
  v35 = a1[4];
  v36 = a1[5];

  v37 = sub_10009E224();
  LODWORD(v36) = sub_10009DDC4();
  sub_10009DF54();
  v38 = sub_10009DF24();
  (*(*(v38 - 8) + 56))(v28, 1, 1, v38);
  v39 = sub_10009DF64();
  sub_1000160CC(v28, &qword_1000C18C0, &qword_1000A1908);
  KeyPath = swift_getKeyPath();
  *&v179 = v37;
  DWORD2(v179) = v36;
  *&v180 = KeyPath;
  *(&v180 + 1) = v39;
  sub_100003714(&qword_1000C18D0, &qword_1000A1948);
  sub_10004E9C8();
  v152 = v34;
  sub_10009E0E4();

  sub_10009E2F4();
  sub_10009DA74();
  v135 = v170;
  v136 = v168;
  v133 = v173;
  v134 = v172;
  v176 = 1;
  v175 = v169;
  v174 = v171;
  v41 = *a1;
  v42 = a1[1];
  v143 = a1;

  LODWORD(v179) = sub_10009DDC4();
  v43 = sub_10009DFC4();
  v45 = v44;
  LOBYTE(v28) = v46;
  v48 = v47;

  v49 = swift_getKeyPath();
  sub_10009DF94();
  sub_10009DF54();
  v50 = sub_10009DF74();
  v51 = v157;

  v52 = swift_getKeyPath();
  LOBYTE(v159) = v28 & 1;
  *&v164 = v43;
  *(&v164 + 1) = v45;
  LOBYTE(v165) = v28 & 1;
  *(&v165 + 1) = *v178;
  DWORD1(v165) = *&v178[3];
  *(&v165 + 1) = v48;
  *&v166 = v49;
  v53 = v151;
  BYTE8(v166) = 1;
  *(&v166 + 9) = *v177;
  HIDWORD(v166) = *&v177[3];
  *&v167 = v52;
  *(&v167 + 1) = v50;
  v54 = enum case for DynamicTypeSize.xSmall(_:);
  v55 = v156;
  v56 = *(v156 + 104);
  v57 = v158;
  v56(v151, enum case for DynamicTypeSize.xSmall(_:), v158);
  v58 = enum case for DynamicTypeSize.accessibility1(_:);
  v56(v51, enum case for DynamicTypeSize.accessibility1(_:), v57);
  v59 = sub_10004DA88(&qword_1000C1910, &type metadata accessor for DynamicTypeSize);
  result = sub_10009E524();
  if (result)
  {
    v127 = v59;
    v128 = v58;
    v129 = v54;
    v130 = v56;
    v131 = v55 + 104;
    v61 = *(v55 + 32);
    v62 = v147;
    v63 = v158;
    v61(v147, v53, v158);
    v64 = v150;
    v61((v62 + *(v150 + 48)), v157, v63);
    v65 = v149;
    sub_10001E0A8(v62, v149, &qword_1000C18A0, &qword_1000A18E8);
    v132 = *(v64 + 48);
    v66 = v144;
    v61(v144, v65, v63);
    v67 = *(v55 + 8);
    v67(v132 + v65, v63);
    sub_10005B0FC(v62, v65, &qword_1000C18A0, &qword_1000A18E8);
    v68 = v145;
    v69 = v66 + *(v145 + 36);
    v70 = v65 + *(v64 + 48);
    v132 = v61;
    v126 = v55 + 32;
    v61(v69, v70, v63);
    v156 = v55 + 8;
    v125 = v67;
    v67(v65, v63);
    v71 = sub_100003714(&qword_1000C1918, &qword_1000A1998);
    v72 = sub_10004EB8C();
    v73 = sub_10001CDC8(&qword_1000C1948, &qword_1000C18A8, &qword_1000A18F0);
    v74 = v146;
    sub_10009E0A4();
    sub_1000160CC(v66, &qword_1000C18A8, &qword_1000A18F0);
    v179 = v164;
    v180 = v165;
    v181 = v166;
    v182 = v167;
    sub_1000160CC(&v179, &qword_1000C1918, &qword_1000A1998);
    v75 = v71;
    *&v164 = v71;
    *(&v164 + 1) = v68;
    v123 = v73;
    v124 = v72;
    *&v165 = v72;
    *(&v165 + 1) = v73;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v77 = v155;
    v78 = v148;
    v122 = OpaqueTypeConformance2;
    sub_10009E0E4();
    v79 = v154 + 8;
    v80 = *(v154 + 8);
    v80(v74, v78);
    v81 = v143[3];
    v82 = HIBYTE(v81) & 0xF;
    if ((v81 & 0x2000000000000000) == 0)
    {
      v82 = v143[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v82)
    {
      v108 = v153;
      (*(v137 + 56))(v153, 1, 1, v138);
      v106 = v140;
      goto LABEL_8;
    }

    v121 = v80;
    v143 = v75;
    v154 = v79;

    LODWORD(v164) = sub_10009DDC4();
    v83 = sub_10009DFC4();
    v85 = v84;
    v87 = v86;
    v89 = v88;

    v90 = swift_getKeyPath();
    sub_10009DF94();
    sub_10009DF44();
    v91 = sub_10009DF74();

    v92 = swift_getKeyPath();
    v163 = v87 & 1;
    *&v159 = v83;
    *(&v159 + 1) = v85;
    LOBYTE(v160) = v87 & 1;
    *(&v160 + 1) = v89;
    *&v161 = v90;
    BYTE8(v161) = 1;
    *&v162 = v92;
    *(&v162 + 1) = v91;
    v93 = v151;
    v94 = v158;
    v95 = v130;
    v130(v151, v129, v158);
    v96 = v157;
    v95(v157, v128, v94);
    result = sub_10009E524();
    if (result)
    {
      v97 = v147;
      v98 = v158;
      v99 = v132;
      v132(v147, v93, v158);
      v100 = v150;
      v99(v97 + *(v150 + 48), v96, v98);
      v101 = v149;
      sub_10001E0A8(v97, v149, &qword_1000C18A0, &qword_1000A18E8);
      v102 = *(v100 + 48);
      v103 = v144;
      v99(v144, v101, v98);
      v104 = v125;
      v125(v101 + v102, v98);
      sub_10005B0FC(v97, v101, &qword_1000C18A0, &qword_1000A18E8);
      v99(v103 + *(v145 + 36), (v101 + *(v100 + 48)), v98);
      v104(v101, v98);
      v105 = v146;
      sub_10009E0A4();
      sub_1000160CC(v103, &qword_1000C18A8, &qword_1000A18F0);
      v164 = v159;
      v165 = v160;
      v166 = v161;
      v167 = v162;
      sub_1000160CC(&v164, &qword_1000C1918, &qword_1000A1998);
      v106 = v140;
      v107 = v148;
      sub_10009E0E4();
      v121(v105, v107);
      v108 = v153;
      sub_10004ECFC(v106, v153);
      (*(v137 + 56))(v108, 0, 1, v138);
      v77 = v155;
LABEL_8:
      v109 = v139;
      sub_10001E0A8(v152, v139, &qword_1000C18C8, &qword_1000A1910);
      v110 = v176;
      v111 = v175;
      v112 = v174;
      sub_10001E0A8(v77, v106, &qword_1000C18B8, &qword_1000A1900);
      v113 = v141;
      sub_10001E0A8(v108, v141, &qword_1000C1898, &qword_1000A18E0);
      v114 = v142;
      *v142 = 0;
      *(v114 + 8) = 1;
      v115 = sub_100003714(&qword_1000C1950, &qword_1000A19B0);
      sub_10001E0A8(v109, v114 + v115[12], &qword_1000C18C8, &qword_1000A1910);
      v116 = v114 + v115[16];
      *v116 = 0;
      v116[8] = v110;
      v117 = v135;
      *(v116 + 2) = v136;
      v116[24] = v111;
      *(v116 + 4) = v117;
      v116[40] = v112;
      v118 = v133;
      *(v116 + 6) = v134;
      *(v116 + 7) = v118;
      sub_10001E0A8(v106, v114 + v115[20], &qword_1000C18B8, &qword_1000A1900);
      sub_10001E0A8(v113, v114 + v115[24], &qword_1000C1898, &qword_1000A18E0);
      v119 = v114 + v115[28];
      *v119 = 0;
      v119[8] = 1;
      sub_1000160CC(v153, &qword_1000C1898, &qword_1000A18E0);
      sub_1000160CC(v155, &qword_1000C18B8, &qword_1000A1900);
      sub_1000160CC(v152, &qword_1000C18C8, &qword_1000A1910);
      sub_1000160CC(v113, &qword_1000C1898, &qword_1000A18E0);
      sub_1000160CC(v106, &qword_1000C18B8, &qword_1000A1900);
      return sub_1000160CC(v109, &qword_1000C18C8, &qword_1000A1910);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000448A4()
{
  v1 = sub_10009DC44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_10009E834();
    v8 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1000449EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009DC44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WidgetViewForLargeSquareTiles(0);
  sub_10001E0A8(v1 + *(v12 + 20), v11, &qword_1000C15F8, &qword_1000A2510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10009E3D4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10009E834();
    v16 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100044BF4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = v1[2];
  *a1 = sub_10009DC74();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_100003714(&qword_1000C1878, &qword_1000A18C0);
  return sub_1000438C0(v6, a1 + *(v4 + 44));
}

uint64_t sub_100044C60@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v49 = type metadata accessor for WidgetViewForLargeSquareTiles(0);
  v50 = *(v49 - 8);
  v2 = *(v50 + 64);
  __chkstk_darwin(v49);
  v51 = v3;
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100003714(&qword_1000C1958, &qword_1000A19B8);
  v4 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v54 = (&v44 - v5);
  v6 = sub_10009E3D4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v47 = sub_1000448A4();
  sub_1000449EC(v13);
  v14 = enum case for WidgetFamily.systemSmall(_:);
  v48 = v7[13];
  v48(v11, enum case for WidgetFamily.systemSmall(_:), v6);
  sub_10004DA88(&qword_1000C16C0, &type metadata accessor for WidgetFamily);
  sub_10009E654();
  sub_10009E654();
  v15 = v7[1];
  v15(v11, v6);
  v15(v13, v6);
  v46 = v58;
  v45 = *&v56[0];
  sub_1000449EC(v13);
  v48(v11, v14, v6);
  sub_10009E654();
  sub_10009E654();
  v15(v11, v6);
  v15(v13, v6);
  v16 = v58;
  v17 = *&v56[0];
  if (sub_1000448A4())
  {
    v18 = 1;
    if (v16 != v17)
    {
      v18 = 2;
    }

    v19 = 0.0;
    if (v47)
    {
      v19 = 16.0;
    }

    if (v46 != v45)
    {
      v19 = 24.0;
    }

    v20 = v49;
    v21 = (*(v1 + *(v49 + 32)) - v19) / v18;
  }

  else
  {
    v20 = v49;
    v21 = *(v1 + *(v49 + 32));
  }

  v22 = sub_1000448A4();
  v23 = v1 + *(v20 + 32);
  if (v22)
  {
    v24 = *(v23 + 8) + -16.0;
  }

  else
  {
    v24 = *(v23 + 8);
  }

  v25 = sub_10009DC74();
  v26 = v54;
  *v54 = v25;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  v48 = *(sub_100003714(&qword_1000C1960, &qword_1000A19C0) + 44);
  v49 = *(v1 + *(v20 + 36));
  *&v58 = sub_10004C814(v49);
  swift_getKeyPath();
  v27 = v52;
  sub_10004DC34(v1, v52, type metadata accessor for WidgetViewForLargeSquareTiles);
  v28 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v21;
  *(v29 + 24) = v24;
  sub_10004EF84(v27, v29 + v28, type metadata accessor for WidgetViewForLargeSquareTiles);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10004EFEC;
  *(v30 + 24) = v29;
  sub_100003714(&qword_1000C1968, &qword_1000A19E8);
  sub_100003714(&qword_1000C1970, &qword_1000A19F0);
  sub_10001CDC8(&qword_1000C1978, &qword_1000C1968, &qword_1000A19E8);
  sub_10001CDC8(&qword_1000C1980, &qword_1000C1970, &qword_1000A19F0);
  sub_10009E294();
  sub_10006FB28(v56);
  v31 = v57;
  v32 = v26 + *(sub_100003714(&qword_1000C1988, &qword_1000A19F8) + 36);
  v33 = v56[1];
  *v32 = v56[0];
  *(v32 + 16) = v33;
  *(v32 + 32) = v31;
  sub_10009E2F4();
  sub_10009DA74();
  v34 = (v26 + *(sub_100003714(&qword_1000C1990, &qword_1000A1A00) + 36));
  v35 = v59;
  *v34 = v58;
  v34[1] = v35;
  v34[2] = v60;
  v36 = v26 + *(v53 + 36);
  sub_10009DAF4();
  v37 = sub_10009E314();
  v38 = sub_10009DE74();
  *(v36 + *(v38 + 20)) = v37;
  *(v36 + *(v38 + 24)) = 0;
  v39 = sub_10009E314();
  v40 = v55;
  sub_10001E0A8(v26, v55, &qword_1000C1958, &qword_1000A19B8);
  v41 = (v40 + *(sub_100003714(&qword_1000C1998, &qword_1000A1A08) + 36));
  v42 = v49;
  *v41 = v39;
  v41[1] = v42;

  return sub_1000160CC(v26, &qword_1000C1958, &qword_1000A19B8);
}

uint64_t sub_100045360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *&v59 = a3;
  v54 = a1;
  v62 = a4;
  v9 = sub_10009E3D4();
  *&v58 = *(v9 - 8);
  v10 = *(v58 + 64);
  v11 = __chkstk_darwin(v9);
  *&v57 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  *&v56 = &v54 - v13;
  v14 = sub_100003714(&qword_1000C19A8, &qword_1000A1A18);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v54 - v16);
  v55 = sub_100003714(&qword_1000C19B0, &qword_1000A1A20);
  v18 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v20 = &v54 - v19;
  v21 = sub_100003714(&qword_1000C19B8, &qword_1000A1A28);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v61 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v54 - v25;
  v27 = a2 + *(type metadata accessor for AccessoryAndSceneEntity() + 24);
  v28 = sub_100017C60();
  v60 = v26;
  if (v28)
  {
    v29 = *(v27 + *(type metadata accessor for WidgetTileInfo() + 52));
  }

  else
  {
    v29 = 0;
  }

  v30 = 0xD000000000000011;
  *v17 = sub_10009E2F4();
  v17[1] = v31;
  v32 = sub_100003714(&qword_1000C19C0, &qword_1000A1A30);
  sub_100045BD0(a2, v29, v17 + *(v32 + 44), a5, a6);
  sub_10001CDC8(&qword_1000C19C8, &qword_1000C19A8, &qword_1000A1A18);
  sub_10009E004();
  sub_1000160CC(v17, &qword_1000C19A8, &qword_1000A1A18);
  v33 = *(v55 + 52);
  v34 = sub_10009CF14();
  (*(*(v34 - 8) + 16))(&v20[v33], a2, v34);
  *&v71 = 0;
  *(&v71 + 1) = 0xE000000000000000;
  sub_10009EAC4(52);
  v80 = v71;
  v86._countAndFlagsBits = 0xD000000000000032;
  v86._object = 0x80000001000A4A00;
  sub_10009E634(v86);
  v35 = (v27 + *(type metadata accessor for WidgetTileInfo() + 28));
  if (v35[1])
  {
    v30 = *v35;
    v36 = v35[1];
  }

  else
  {
    v36 = 0x80000001000A4A40;
  }

  v87._countAndFlagsBits = v30;
  v87._object = v36;
  sub_10009E634(v87);

  v71 = v80;
  v63 = 32;
  v64 = 0xE100000000000000;
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_1000037A4();
  sub_10009E954();

  sub_10001CDC8(&qword_1000C19D0, &qword_1000C19B0, &qword_1000A1A20);
  v37 = v60;
  sub_10009E0E4();

  sub_1000160CC(v20, &qword_1000C19B0, &qword_1000A1A20);
  v38 = v56;
  v39 = v59;
  sub_1000449EC(v56);
  v40 = v58;
  v41 = v57;
  (*(v58 + 104))(v57, enum case for WidgetFamily.systemMedium(_:), v9);
  sub_10004DA88(&qword_1000C16C0, &type metadata accessor for WidgetFamily);
  sub_10009E654();
  sub_10009E654();
  v42 = *(v40 + 8);
  v42(v41, v9);
  v42(v38, v9);
  v43 = 0uLL;
  v44 = -1;
  v45 = 0uLL;
  v46 = 0uLL;
  v47 = 0uLL;
  if (v71 == v63 && !v54)
  {
    if (*(*(v39 + *(type metadata accessor for WidgetViewForLargeSquareTiles(0) + 36)) + 16) == 1)
    {
      sub_10009E2F4();
      sub_10009DA74();
      v78 = 1;
      v77 = v82;
      v76 = v84;
      v79 = 0;
      v63 = 0;
      LOBYTE(v64) = 1;
      v65 = v81;
      v66 = v82;
      v67 = v83;
      v68 = v84;
      v69 = v85;
      v70 = 0;
    }

    else
    {
      sub_10009E2F4();
      sub_10009DA74();
      v78 = 1;
      v77 = v82;
      v76 = v84;
      v79 = 1;
      v63 = 0;
      LOBYTE(v64) = 1;
      v65 = v81;
      v66 = v82;
      v67 = v83;
      v68 = v84;
      v69 = v85;
      v70 = 1;
    }

    sub_100003714(&qword_1000C19E0, &unk_1000A1A40);
    sub_10004F0B0();
    sub_10009DD94();
    v45 = v72;
    v46 = v73;
    v43 = v71;
    v47 = v74;
    v44 = v75;
  }

  v56 = v45;
  v57 = v47;
  v58 = v43;
  v59 = v46;
  v48 = v61;
  sub_10001E0A8(v37, v61, &qword_1000C19B8, &qword_1000A1A28);
  v49 = v62;
  sub_10001E0A8(v48, v62, &qword_1000C19B8, &qword_1000A1A28);
  v50 = v49 + *(sub_100003714(&qword_1000C19D8, &qword_1000A1A38) + 48);
  v51 = v56;
  *v50 = v58;
  *(v50 + 16) = v51;
  v52 = v57;
  *(v50 + 32) = v59;
  *(v50 + 48) = v52;
  *(v50 + 64) = v44;
  sub_1000160CC(v37, &qword_1000C19B8, &qword_1000A1A28);
  return sub_1000160CC(v48, &qword_1000C19B8, &qword_1000A1A28);
}

uint64_t sub_100045BD0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  LODWORD(v111) = a2;
  v121 = a3;
  v8 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v100 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v100 - v12;
  v105 = sub_10009CE24();
  v114 = *(v105 - 8);
  v14 = *(v114 + 64);
  __chkstk_darwin(v105);
  v113 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100003714(&qword_1000C19F0, &qword_1000A1A50);
  v16 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v112 = (&v100 - v17);
  v120 = sub_100003714(&qword_1000C19F8, &qword_1000A1A58);
  v18 = *(*(v120 - 8) + 64);
  v19 = __chkstk_darwin(v120);
  v102 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v103 = &v100 - v21;
  v117 = sub_100003714(&qword_1000C1A00, &unk_1000A1A60);
  v22 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v119 = &v100 - v23;
  v118 = type metadata accessor for WidgetTileViewToggleStyle(0);
  v24 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v110 = (&v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v100 - v28;
  v30 = type metadata accessor for WidgetPredictionAnalyticsInfo();
  v104 = *(v30 - 8);
  v31 = *(v104 + 64);
  __chkstk_darwin(v30);
  v33 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for AccessoryAndSceneEntity();
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34);
  v38 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v100 - v39;
  v115 = sub_100003714(&qword_1000C1A08, &qword_1000A1A70);
  v107 = *(v115 - 8);
  v41 = *(v107 + 64);
  __chkstk_darwin(v115);
  v106 = &v100 - v42;
  v116 = sub_100003714(&qword_1000C1A10, &qword_1000A1A78);
  v109 = *(v116 - 8);
  v43 = *(v109 + 64);
  __chkstk_darwin(v116);
  v108 = &v100 - v44;
  v45 = a1 + *(v34 + 24);
  v46 = type metadata accessor for WidgetTileInfo();
  if (*(v45 + v46[14]) == 1)
  {
    sub_10004DC34(a1, v40, type metadata accessor for AccessoryAndSceneEntity);
    sub_10001E0A8(v45 + v46[19], v29, &qword_1000C0C28, &qword_1000A3620);
    v47 = v104;
    if ((*(v104 + 48))(v29, 1, v30) == 1)
    {
      sub_1000160CC(v29, &qword_1000C0C28, &qword_1000A3620);
      v57 = 0;
      v58 = 0;
    }

    else
    {
      (*(v47 + 32))(v33, v29, v30);
      v54 = sub_10009CCB4();
      v55 = *(v54 + 48);
      v56 = *(v54 + 52);
      swift_allocObject();
      sub_10009CCA4();
      sub_10004DA88(&qword_1000C1A48, type metadata accessor for WidgetPredictionAnalyticsInfo);
      v94 = sub_10009CC94();
      v96 = v95;

      v97 = sub_10009CE64(0);
      v99 = v98;
      sub_100033B34(v94, v96);
      (*(v47 + 8))(v33, v30);
      v58 = v99;
      v57 = v97;
    }

    *&v126 = sub_100078634(v40, v57, v58);
    *(&v126 + 1) = v59;
    __chkstk_darwin(v126);
    *(&v100 - 2) = a1;
    type metadata accessor for LargeSquareTileView();
    sub_10004DA88(&qword_1000C1A38, type metadata accessor for LargeSquareTileView);
    sub_1000598E8();
    v60 = v106;
    v61 = sub_10009E264();
    v62 = nullsub_1(v61, a4, a5);
    v64 = v63;
    v65 = v118;
    v66 = v110;
    sub_10004DC34(a1, v110 + *(v118 + 20), type metadata accessor for AccessoryAndSceneEntity);
    *v66 = swift_getKeyPath();
    sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
    swift_storeEnumTagMultiPayload();
    v67 = (v66 + *(v65 + 24));
    *v67 = v62;
    *(v67 + 1) = v64;
    v68 = sub_10001CDC8(&qword_1000C1A18, &qword_1000C1A08, &qword_1000A1A70);
    v69 = sub_10004DA88(&qword_1000C1A20, type metadata accessor for WidgetTileViewToggleStyle);
    v70 = v108;
    v71 = v115;
    sub_10009E084();
    sub_10004DD8C(v66, type metadata accessor for WidgetTileViewToggleStyle);
    (*(v107 + 8))(v60, v71);
    v72 = v109;
    v73 = v116;
    (*(v109 + 16))(v119, v70, v116);
    swift_storeEnumTagMultiPayload();
    *&v126 = v71;
    *(&v126 + 1) = v65;
    *&v127 = v68;
    *(&v127 + 1) = v69;
    swift_getOpaqueTypeConformance2();
    sub_10004F18C();
    sub_10009DD94();
    return (*(v72 + 8))(v70, v73);
  }

  else
  {
    v111 = a1;
    sub_1000259B8();
    v48 = v114;
    v49 = *(v114 + 48);
    v50 = v105;
    if (v49(v13, 1, v105) == 1)
    {
      v51 = v100;
      sub_10009CE14();
      result = v49(v51, 1, v50);
      v53 = v113;
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      (*(v48 + 32))(v113, v51, v50);
      if (v49(v13, 1, v50) != 1)
      {
        sub_1000160CC(v13, &qword_1000C0FE0, &qword_1000A11A0);
      }
    }

    else
    {
      v53 = v113;
      (*(v48 + 32))(v113, v13, v50);
    }

    KeyPath = swift_getKeyPath();
    v75 = v112;
    *v112 = KeyPath;
    sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
    swift_storeEnumTagMultiPayload();
    v76 = v101;
    v77 = &v75[*(v101 + 36)];
    *v77 = swift_getKeyPath();
    v77[8] = 0;
    (*(v48 + 16))(&v75[*(v76 + 40)], v53, v50);
    v78 = &v75[*(v76 + 44)];
    sub_10004DC34(v111, v38, type metadata accessor for AccessoryAndSceneEntity);
    *v78 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v79 = type metadata accessor for LargeSquareTileView();
    v80 = v78 + v79[5];
    *v80 = swift_getKeyPath();
    v80[8] = 0;
    v81 = v78 + v79[6];
    *v81 = swift_getKeyPath();
    v81[8] = 0;
    sub_10004DC34(v38, v78 + v79[7], type metadata accessor for AccessoryAndSceneEntity);
    v82 = v78 + v79[8];
    sub_10004DC34(&v38[*(v34 + 24)], v82, type metadata accessor for WidgetTileInfo);
    *(v78 + v79[9]) = *(v82 + v46[14]);
    v83 = (v82 + v46[8]);
    v85 = *v83;
    v84 = v83[1];
    v86 = (v78 + v79[10]);
    *v86 = v85;
    v86[1] = v84;
    LODWORD(v81) = *(v82 + v46[13]);

    if (v81 == 1)
    {
      sub_10004DD8C(v38, type metadata accessor for AccessoryAndSceneEntity);
      v87 = *(v82 + v46[12]);
    }

    else
    {
      v87 = sub_10009E174();
      sub_10004DD8C(v38, type metadata accessor for AccessoryAndSceneEntity);
    }

    *(v78 + v79[11]) = v87;
    (*(v114 + 8))(v113, v50);
    sub_10009E2F4();
    sub_10009DA74();
    v88 = v102;
    sub_10005B0FC(v112, v102, &qword_1000C19F0, &qword_1000A1A50);
    v89 = (v88 + *(v120 + 36));
    v90 = v127;
    *v89 = v126;
    v89[1] = v90;
    v89[2] = v128;
    v91 = v103;
    sub_10005B0FC(v88, v103, &qword_1000C19F8, &qword_1000A1A58);
    sub_10001E0A8(v91, v119, &qword_1000C19F8, &qword_1000A1A58);
    swift_storeEnumTagMultiPayload();
    v92 = sub_10001CDC8(&qword_1000C1A18, &qword_1000C1A08, &qword_1000A1A70);
    v93 = sub_10004DA88(&qword_1000C1A20, type metadata accessor for WidgetTileViewToggleStyle);
    v122 = v115;
    v123 = v118;
    v124 = v92;
    v125 = v93;
    swift_getOpaqueTypeConformance2();
    sub_10004F18C();
    sub_10009DD94();
    return sub_1000160CC(v91, &qword_1000C19F8, &qword_1000A1A58);
  }
}

uint64_t sub_100046A68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AccessoryAndSceneEntity();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004DC34(a1, v7, type metadata accessor for AccessoryAndSceneEntity);
  return sub_100071F2C(v7, a2);
}

uint64_t sub_100046B0C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_100003714(&qword_1000C1A58, &qword_1000A1AB8);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - v5;
  *v6 = sub_10009DCF4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v27 = *(sub_100003714(&qword_1000C1A60, &qword_1000A1AC0) + 44);
  v7 = v1[2];
  v8 = sub_10003B4F0(v1[3], v7);
  v9 = sub_10004CB70(v8);

  *&v30[0] = v9;
  swift_getKeyPath();
  v32 = *v1;
  v33 = *(v1 + 8);
  v10 = swift_allocObject();
  v11 = *(v1 + 1);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v1 + 2);
  *(v10 + 64) = v1[6];
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100059980;
  *(v12 + 24) = v10;
  sub_10001E0A8(&v32, v29, &qword_1000C1A68, &qword_1000A1AE8);

  sub_100003714(&qword_1000C1A70, &qword_1000A1AF0);
  sub_100003714(&qword_1000C1A78, &qword_1000A1AF8);
  sub_10001CDC8(&qword_1000C1A80, &qword_1000C1A70, &qword_1000A1AF0);
  sub_1000599B8();
  sub_10009E294();
  v13 = v1[5];
  v14 = v1[6];
  sub_10009E2F4();
  sub_10009DA74();
  v15 = &v6[*(sub_100003714(&qword_1000C1AA0, &qword_1000A1B08) + 36)];
  v16 = v29[1];
  *v15 = v29[0];
  *(v15 + 1) = v16;
  *(v15 + 2) = v29[2];
  sub_10006FB28(v30);
  v17 = v31;
  v18 = &v6[*(sub_100003714(&qword_1000C1AA8, &qword_1000A1B10) + 36)];
  v19 = v30[1];
  *v18 = v30[0];
  *(v18 + 1) = v19;
  *(v18 + 4) = v17;
  v20 = &v6[*(v3 + 44)];
  sub_10009DAF4();
  v21 = sub_10009E314();
  v22 = sub_10009DE74();
  *&v20[*(v22 + 20)] = v21;
  *&v20[*(v22 + 24)] = 0;
  v23 = sub_10009E314();
  v24 = v28;
  sub_10001E0A8(v6, v28, &qword_1000C1A58, &qword_1000A1AB8);
  v25 = (v24 + *(sub_100003714(&qword_1000C1AB0, &qword_1000A1B18) + 36));
  *v25 = v23;
  v25[1] = v7;

  return sub_1000160CC(v6, &qword_1000C1A58, &qword_1000A1AB8);
}

uint64_t sub_100046E7C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10009DC44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v13 = *(a1 + 16);
  v14 = __OFSUB__(v12, v13);
  v15 = v12 - v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

  v56 = v15;
  v57 = a3;
  v62 = *(a2 + 8);
  v16 = *a2;
  v61 = *a2;
  v54[0] = v62;
  v53 = a1;
  v52 = v6;
  v51 = v7;
  if (v62 == 1)
  {
    v19 = *(a2 + 5);
    v20 = *(a2 + 6);
    v22 = v16;
    v55 = v16;
  }

  else
  {

    sub_10009E834();
    v17 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_1000160CC(&v61, &qword_1000C1A68, &qword_1000A1AE8);
    v18 = *(v7 + 8);
    v18(v11, v6);
    v55 = LOBYTE(v59[0]);
    v19 = *(a2 + 5);
    v20 = *(a2 + 6);

    sub_10009E834();
    v21 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_1000160CC(&v61, &qword_1000C1A68, &qword_1000A1AE8);
    v18(v11, v6);
    v22 = v59[0];
  }

  if (v22)
  {
    v23 = 16.0;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = *(a2 + 32);
  v25 = v54[0];
  if (*(a2 + 32))
  {
    v26 = sub_10009ED34();

    if (v26)
    {
      v27 = v19 - v23;
      if (!v24)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v25)
      {
        v34 = v16;
      }

      else
      {

        sub_10009E834();
        v39 = sub_10009DEA4();
        sub_10009D8C4();

        sub_10009DC34();
        swift_getAtKeyPath();
        sub_1000160CC(&v61, &qword_1000C1A68, &qword_1000A1AE8);
        (*(v51 + 8))(v11, v52);
        v34 = v59[0];
      }

      v40 = 8.0;
      if (v34)
      {
        v40 = 24.0;
      }

      v27 = (v19 - v40) * 0.5;
      if (!v24)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {

    v27 = v19 - v23;
    if (!v24)
    {
LABEL_27:

      v29 = v57;
      goto LABEL_28;
    }
  }

  v28 = sub_10009ED34();

  v29 = v57;
  if (v28)
  {
LABEL_28:
    v30 = v53;
    if (!v25)
    {

      sub_10009E834();
      v41 = sub_10009DEA4();
      sub_10009D8C4();

      sub_10009DC34();
      swift_getAtKeyPath();
      sub_1000160CC(&v61, &qword_1000C1A68, &qword_1000A1AE8);
      (*(v51 + 8))(v11, v52);
      LOBYTE(v16) = v59[0];
    }

    v42 = 8.0;
    if (v16)
    {
      v42 = 24.0;
    }

    v31 = (v20 - v42) * 0.5;
    v32 = v56;
    goto LABEL_33;
  }

  v30 = v53;
  if (v25)
  {
    v31 = v27;
    v32 = v56;
    if (v16)
    {
      v33 = 24.0;
LABEL_22:
      v31 = (v19 - v33) * 0.5;
    }
  }

  else
  {

    sub_10009E834();
    v35 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_1000160CC(&v61, &qword_1000C1A68, &qword_1000A1AE8);
    v36 = *(v51 + 8);
    v37 = v52;
    v36(v11, v52);
    v31 = v27;
    v32 = v56;
    if (v59[0])
    {

      sub_10009E834();
      *v54 = v36;
      v38 = sub_10009DEA4();
      sub_10009D8C4();

      sub_10009DC34();
      swift_getAtKeyPath();
      sub_1000160CC(&v61, &qword_1000C1A68, &qword_1000A1AE8);
      (*v54)(v11, v37);
      v33 = 8.0;
      if (LOBYTE(v59[0]))
      {
        v33 = 24.0;
      }

      goto LABEL_22;
    }
  }

LABEL_33:
  v43 = 8.0;
  if (v55)
  {
    v43 = 24.0;
  }

  v44 = (v19 - v43) * 0.5 * v32;
  *v29 = sub_10009DC74();
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v45 = *(sub_100003714(&qword_1000C1AB8, &qword_1000A1B20) + 44);
  v58 = sub_10004C814(v30);
  swift_getKeyPath();
  v60 = a2[2];
  v46 = swift_allocObject();
  *(v46 + 16) = v27;
  *(v46 + 24) = v31;
  v47 = *(a2 + 1);
  *(v46 + 32) = *a2;
  *(v46 + 48) = v47;
  *(v46 + 64) = *(a2 + 2);
  *(v46 + 80) = a2[6];
  *(v46 + 88) = v30;
  *(v46 + 96) = v32 * 8.0;
  *(v46 + 104) = v44;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_100059ABC;
  *(v48 + 24) = v46;
  sub_10001E0A8(&v61, v59, &qword_1000C1A68, &qword_1000A1AE8);
  sub_10001E0A8(&v60, v59, &unk_1000C15B0, &unk_1000A1360);

  sub_100003714(&qword_1000C1968, &qword_1000A19E8);
  sub_100003714(&qword_1000C1AC0, &qword_1000A1B28);
  sub_10001CDC8(&qword_1000C1978, &qword_1000C1968, &qword_1000A19E8);
  sub_10001CDC8(&qword_1000C1AC8, &qword_1000C1AC0, &qword_1000A1B28);
  sub_10009E294();
  sub_10009E2F4();
  sub_10009DA74();
  result = sub_100003714(&qword_1000C1A78, &qword_1000A1AF8);
  v49 = (v29 + *(result + 36));
  v50 = v59[1];
  *v49 = v59[0];
  v49[1] = v50;
  v49[2] = v59[2];
  return result;
}

uint64_t sub_100047744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v70 = a4;
  v71 = a1;
  v74 = a5;
  v75 = a3;
  v10 = type metadata accessor for AccessoryAndSceneEntity();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003714(&qword_1000C1AD0, &qword_1000A1B30);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v64 - v16;
  v18 = sub_100003714(&qword_1000C1AD8, &qword_1000A1B38);
  v68 = *(v18 - 8);
  v69 = v18;
  v19 = *(v68 + 64);
  __chkstk_darwin(v18);
  v67 = &v64 - v20;
  v21 = sub_100003714(&qword_1000C1AE0, &qword_1000A1B40);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v73 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v64 - v25;
  v27 = a2 + *(v10 + 24);
  v28 = sub_100017C60();
  v72 = v26;
  if (v28)
  {
    v66 = *(v27 + *(type metadata accessor for WidgetTileInfo() + 52));
  }

  else
  {
    v66 = 0;
  }

  v29 = 0xD000000000000011;
  v30 = sub_10004DC34(a2, v13, type metadata accessor for AccessoryAndSceneEntity);
  v31 = nullsub_1(v30, a6, a7);
  v33 = v32;
  v34 = *(v75 + 32);
  sub_10004DC34(v13, v17, type metadata accessor for AccessoryAndSceneEntity);
  v35 = type metadata accessor for TileView(0);
  v36 = &v17[v35[7]];
  *v36 = v31;
  *(v36 + 1) = v33;
  sub_10004DC34(&v13[*(v10 + 24)], &v17[v35[5]], type metadata accessor for WidgetTileInfo);
  sub_10004DD8C(v13, type metadata accessor for AccessoryAndSceneEntity);
  v37 = v35[6];
  v65 = v34;
  v17[v37] = v34;
  sub_10009E2F4();
  sub_10009DA74();
  v38 = &v17[*(sub_100003714(&qword_1000C1AE8, &qword_1000A1B48) + 36)];
  v39 = v92;
  *v38 = v91;
  *(v38 + 1) = v39;
  *(v38 + 2) = v93;
  v40 = v14;
  v41 = *(v14 + 52);
  v42 = sub_10009CF14();
  (*(*(v42 - 8) + 16))(&v17[v41], a2, v42);
  v43 = sub_10001CDC8(&qword_1000C1AF0, &qword_1000C1AD0, &qword_1000A1B30);
  v44 = v67;
  sub_10009E004();
  sub_1000160CC(v17, &qword_1000C1AD0, &qword_1000A1B30);
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  sub_10009EAC4(37);

  *&v90 = 0xD000000000000023;
  *(&v90 + 1) = 0x80000001000A4A80;
  v45 = (v27 + *(type metadata accessor for WidgetTileInfo() + 28));
  if (v45[1])
  {
    v29 = *v45;
    v46 = v45[1];
  }

  else
  {
    v46 = 0x80000001000A4A40;
  }

  v99._countAndFlagsBits = v29;
  v99._object = v46;
  sub_10009E634(v99);

  v85 = v90;
  *&v79 = 32;
  *(&v79 + 1) = 0xE100000000000000;
  v94 = 0;
  v95 = 0xE000000000000000;
  sub_1000037A4();
  sub_10009E954();

  *&v85 = v40;
  *(&v85 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  v47 = v72;
  v48 = v69;
  sub_10009E0E4();

  (*(v68 + 8))(v44, v48);
  v49 = *(v70 + 16);
  if (v49 >= *(v75 + 24) || v49 - 1 != v71)
  {
    if (v71)
    {
LABEL_11:
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0uLL;
      v56 = 1;
LABEL_16:
      v84 = 1;
      *&v79 = 0;
      *(&v79 + 1) = v54;
      *&v80 = v50;
      *(&v80 + 1) = v53;
      *&v81 = v51;
      *(&v81 + 1) = v52;
      v82 = v55;
      LOBYTE(v83) = v56;
      HIBYTE(v83) = 1;
      goto LABEL_17;
    }

    if (v65 == 1)
    {
    }

    else
    {
      v57 = sub_10009ED34();

      if ((v57 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_10009E2F4();
    sub_10009DA74();
    v56 = 0;
    v50 = v94;
    v51 = v96;
    v55 = v98;
    LOBYTE(v79) = 1;
    v84 = v95;
    v78 = v97;
    v54 = 1;
    v53 = v95;
    v52 = v97;
    LOBYTE(v85) = 0;
    goto LABEL_16;
  }

  sub_10009E2F4();
  sub_10009DA74();
  v78 = 1;
  v77 = v95;
  v76 = v97;
  v84 = 0;
  *&v79 = 0;
  BYTE8(v79) = 1;
  *&v80 = v94;
  BYTE8(v80) = v95;
  *&v81 = v96;
  BYTE8(v81) = v97;
  v82 = v98;
  HIBYTE(v83) = 0;
LABEL_17:
  sub_100003714(&qword_1000C19E0, &unk_1000A1A40);
  sub_100003714(&qword_1000C1AF8, &qword_1000A1B50);
  sub_10004F0B0();
  sub_100059AD4(&qword_1000C1B00, &qword_1000C1AF8, &qword_1000A1B50, sub_10004F0B0);
  sub_10009DD94();
  v58 = v73;
  sub_10001E0A8(v47, v73, &qword_1000C1AE0, &qword_1000A1B40);
  v81 = v87;
  v82 = v88;
  v83 = v89;
  v79 = v85;
  v80 = v86;
  v59 = v74;
  sub_10001E0A8(v58, v74, &qword_1000C1AE0, &qword_1000A1B40);
  v60 = v59 + *(sub_100003714(&qword_1000C1B08, &qword_1000A1B58) + 48);
  v61 = v82;
  *(v60 + 32) = v81;
  *(v60 + 48) = v61;
  *(v60 + 64) = v83;
  v62 = v80;
  *v60 = v79;
  *(v60 + 16) = v62;
  sub_1000160CC(v47, &qword_1000C1AE0, &qword_1000A1B40);
  return sub_1000160CC(v58, &qword_1000C1AE0, &qword_1000A1B40);
}

uint64_t sub_100047FB0()
{
  v1 = sub_10009DC44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for WidgetViewsForMediumSystemFamily(0) + 20);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_10009E834();
    v8 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_10004810C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  v4 = (v3 - 8);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_100003714(&qword_1000C1B18, &qword_1000A1B70);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = v36 - v10;
  *v11 = sub_10009DCF4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = sub_100003714(&qword_1000C1B20, &qword_1000A1B78);
  v13 = v4[9];
  v14 = *(v2 + v4[8]);
  v36[1] = *(v12 + 44);
  v37 = v14;
  v15 = sub_10003B4F0(*(v2 + v13), v14);
  v16 = sub_10004CB70(v15);

  *&v39 = v16;
  swift_getKeyPath();
  sub_10004DC34(v2, v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WidgetViewsForMediumSystemFamily);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_10004EF84(v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for WidgetViewsForMediumSystemFamily);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100059C84;
  *(v19 + 24) = v18;
  sub_100003714(&qword_1000C1A70, &qword_1000A1AF0);
  sub_100003714(&qword_1000C1B28, &qword_1000A1B80);
  sub_10001CDC8(&qword_1000C1A80, &qword_1000C1A70, &qword_1000A1AF0);
  sub_100059D0C();
  sub_10009E294();
  v20 = (v2 + v4[11]);
  v21 = *v20;
  v22 = v20[1];
  sub_10009E2F4();
  sub_10009DA74();
  v23 = &v11[*(sub_100003714(&qword_1000C1B48, &qword_1000A1B90) + 36)];
  v24 = v40;
  *v23 = v39;
  *(v23 + 1) = v24;
  *(v23 + 2) = v41;
  sub_10006FB28(v42);
  v25 = v43;
  v26 = &v11[*(sub_100003714(&qword_1000C1B50, &qword_1000A1B98) + 36)];
  v27 = v42[1];
  *v26 = v42[0];
  *(v26 + 1) = v27;
  *(v26 + 4) = v25;
  v28 = &v11[*(v8 + 44)];
  sub_10009DAF4();
  v29 = sub_10009E314();
  v30 = sub_10009DE74();
  *&v28[*(v30 + 20)] = v29;
  *&v28[*(v30 + 24)] = 0;
  v31 = sub_10009E314();
  v32 = v38;
  sub_10001E0A8(v11, v38, &qword_1000C1B18, &qword_1000A1B70);
  v33 = (v32 + *(sub_100003714(&qword_1000C1B58, &qword_1000A1BA0) + 36));
  v34 = v37;
  *v33 = v31;
  v33[1] = v34;

  return sub_1000160CC(v11, &qword_1000C1B18, &qword_1000A1B70);
}

uint64_t sub_100048500@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100047FB0())
  {
    if (!*(a2 + v6[8]))
    {

      goto LABEL_6;
    }

    v10 = sub_10009ED34();

    if (v10)
    {
LABEL_6:
      v11 = (*(a2 + v6[9]) + -24.0) * 0.5;
      if ((sub_100047FB0() & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_9:
      if (*(a2 + v6[8]))
      {
        v12 = sub_10009ED34();

        if ((v12 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      v13 = (*(a2 + v6[9] + 8) + -24.0) * 0.5;
      goto LABEL_15;
    }
  }

  v11 = *(a2 + v6[10]);
  if (sub_100047FB0())
  {
    goto LABEL_9;
  }

LABEL_14:
  v13 = *(a2 + v6[11]);
LABEL_15:
  result = sub_10009DC74();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v15 = *(a2 + v6[7]);
  v16 = *(a1 + 16);
  v17 = v15 - v16;
  if (__OFSUB__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v28[1] = *(sub_100003714(&qword_1000C1B60, &qword_1000A1BA8) + 44);
    v18 = v11 * v17;
    v19 = *(a2 + v6[12]) * v17;
    *&v29 = sub_10004C814(a1);
    v28[0] = swift_getKeyPath();
    sub_10004DC34(a2, v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WidgetViewsForMediumSystemFamily);
    v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v11;
    *(v23 + 24) = v13;
    sub_10004EF84(v9, v23 + v20, type metadata accessor for WidgetViewsForMediumSystemFamily);
    *(v23 + v21) = a1;
    *(v23 + v22) = v19;
    *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_100059F1C;
    *(v24 + 24) = v23;

    sub_100003714(&qword_1000C1968, &qword_1000A19E8);
    sub_100003714(&qword_1000C1B68, &qword_1000A1BB0);
    sub_10001CDC8(&qword_1000C1978, &qword_1000C1968, &qword_1000A19E8);
    sub_10001CDC8(&qword_1000C1B70, &qword_1000C1B68, &qword_1000A1BB0);
    sub_10009E294();
    v25 = *(a2 + v6[9]);
    sub_10009E2F4();
    sub_10009DA74();
    result = sub_100003714(&qword_1000C1B28, &qword_1000A1B80);
    v26 = (a3 + *(result + 36));
    v27 = v30;
    *v26 = v29;
    v26[1] = v27;
    v26[2] = v31;
  }

  return result;
}

uint64_t sub_1000489B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v72 = a4;
  v76 = a3;
  v73 = a1;
  v75 = a5;
  v10 = type metadata accessor for AccessoryAndSceneEntity();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003714(&qword_1000C1AD0, &qword_1000A1B30);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v64 - v16;
  v71 = sub_100003714(&qword_1000C1AD8, &qword_1000A1B38);
  v70 = *(v71 - 8);
  v18 = *(v70 + 64);
  __chkstk_darwin(v71);
  v20 = &v64 - v19;
  v21 = sub_100003714(&qword_1000C1AE0, &qword_1000A1B40);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v74 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v77 = &v64 - v25;
  v26 = a2 + *(v10 + 24);
  if (sub_100017C60())
  {
    LODWORD(v68) = *(v26 + *(type metadata accessor for WidgetTileInfo() + 52));
  }

  else
  {
    LODWORD(v68) = 0;
  }

  v27 = 0xD000000000000011;
  v28 = sub_10004DC34(a2, v13, type metadata accessor for AccessoryAndSceneEntity);
  v29 = nullsub_1(v28, a6, a7);
  v31 = v30;
  v69 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  v32 = *(v76 + *(v69 + 32));
  sub_10004DC34(v13, v17, type metadata accessor for AccessoryAndSceneEntity);
  v33 = type metadata accessor for TileView(0);
  v34 = &v17[v33[7]];
  *v34 = v29;
  *(v34 + 1) = v31;
  sub_10004DC34(&v13[*(v10 + 24)], &v17[v33[5]], type metadata accessor for WidgetTileInfo);
  sub_10004DD8C(v13, type metadata accessor for AccessoryAndSceneEntity);
  v17[v33[6]] = v32;
  sub_10009E2F4();
  sub_10009DA74();
  v35 = &v17[*(sub_100003714(&qword_1000C1AE8, &qword_1000A1B48) + 36)];
  v36 = v86;
  *v35 = v85;
  *(v35 + 1) = v36;
  *(v35 + 2) = v87;
  v37 = *(v14 + 52);
  v38 = sub_10009CF14();
  (*(*(v38 - 8) + 16))(&v17[v37], a2, v38);
  v39 = sub_10001CDC8(&qword_1000C1AF0, &qword_1000C1AD0, &qword_1000A1B30);
  sub_10009E004();
  sub_1000160CC(v17, &qword_1000C1AD0, &qword_1000A1B30);
  v94 = 0;
  v95 = 0xE000000000000000;
  sub_10009EAC4(44);

  v83 = 0xD00000000000002ALL;
  v84 = 0x80000001000A4AB0;
  v40 = (v26 + *(type metadata accessor for WidgetTileInfo() + 28));
  if (v40[1])
  {
    v27 = *v40;
    v41 = v40[1];
  }

  else
  {
    v41 = 0x80000001000A4A40;
  }

  v100._countAndFlagsBits = v27;
  v100._object = v41;
  sub_10009E634(v100);

  v94 = v83;
  v95 = v84;
  v88 = 32;
  v89 = 0xE100000000000000;
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_1000037A4();
  sub_10009E954();

  v94 = v14;
  v95 = v39;
  swift_getOpaqueTypeConformance2();
  v42 = v71;
  sub_10009E0E4();

  (*(v70 + 8))(v20, v42);
  v43 = *(v72 + 16);
  v44 = v73;
  v45 = v69;
  if (v43 - 2 >= v73)
  {
    v46 = v76;
    v47 = *(v76 + *(v69 + 48));
    sub_10009E2F4();
    sub_10009DA74();
    LODWORD(v71) = 0;
    v72 = v88;
    v70 = v90;
    v68 = v92;
    v67 = v93;
    LOBYTE(v81) = 1;
    v80 = v89;
    v79 = v91;
    v64 = 1;
    v65 = v89;
    v66 = v91;
    LOBYTE(v94) = 0;
  }

  else
  {
    v72 = 0;
    v70 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v65 = 0;
    v64 = 0;
    LODWORD(v71) = 1;
    v46 = v76;
  }

  if (v43 < *(v46 + *(v45 + 28)) && v43 - 1 == v44)
  {
    sub_10009E2F4();
    sub_10009DA74();
    LODWORD(v73) = 0;
    v76 = v94;
    v69 = v96;
    v48 = v98;
    v49 = v99;
    v80 = 1;
    v79 = v95;
    v78 = v97;
    v50 = 1;
    v51 = v95;
    v52 = v97;
    LOBYTE(v81) = 0;
  }

  else
  {
    v76 = 0;
    v69 = 0;
    v48 = 0;
    v49 = 0;
    v52 = 0;
    v51 = 0;
    v50 = 0;
    LODWORD(v73) = 1;
  }

  v53 = v77;
  v54 = v74;
  sub_10001E0A8(v77, v74, &qword_1000C1AE0, &qword_1000A1B40);
  v55 = v75;
  sub_10001E0A8(v54, v75, &qword_1000C1AE0, &qword_1000A1B40);
  v56 = sub_100003714(&qword_1000C1B78, &qword_1000A1BB8);
  v57 = v55 + *(v56 + 48);
  v58 = v64;
  *v57 = 0;
  *(v57 + 8) = v58;
  v59 = v65;
  *(v57 + 16) = v72;
  *(v57 + 24) = v59;
  v60 = v66;
  *(v57 + 32) = v70;
  *(v57 + 40) = v60;
  v61 = v67;
  *(v57 + 48) = v68;
  *(v57 + 56) = v61;
  *(v57 + 64) = v71;
  v62 = v55 + *(v56 + 64);
  *v62 = 0;
  *(v62 + 8) = v50;
  *(v62 + 16) = v76;
  *(v62 + 24) = v51;
  *(v62 + 32) = v69;
  *(v62 + 40) = v52;
  *(v62 + 48) = v48;
  *(v62 + 56) = v49;
  *(v62 + 64) = v73;
  sub_1000160CC(v53, &qword_1000C1AE0, &qword_1000A1B40);
  return sub_1000160CC(v54, &qword_1000C1AE0, &qword_1000A1B40);
}

uint64_t sub_1000492C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v99 = a4;
  v7 = sub_10009E3B4();
  v97 = *(v7 - 8);
  v98 = v7;
  v8 = *(v97 + 64);
  __chkstk_darwin(v7);
  v96 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009CF54();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10009E5A4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100003714(&qword_1000C0B10, &unk_1000A1BC0);
  v79 = *(v14 - 8);
  v15 = *(v79 + 64);
  __chkstk_darwin(v14);
  v17 = &v76 - v16;
  v80 = sub_100003714(&qword_1000C0B08, &qword_10009F930);
  v81 = *(v80 - 8);
  v18 = *(v81 + 64);
  __chkstk_darwin(v80);
  v77 = &v76 - v19;
  v20 = sub_100003714(&qword_1000C0B00, &unk_1000A1BD0);
  v21 = *(v20 - 8);
  v86 = v20;
  v87 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v78 = &v76 - v23;
  v24 = sub_100003714(&qword_1000C0AF8, &qword_10009F928);
  v25 = *(v24 - 8);
  v88 = v24;
  v89 = v25;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v82 = &v76 - v27;
  v28 = sub_100003714(&qword_1000C0AF0, &unk_1000A1BE0);
  v29 = *(v28 - 8);
  v90 = v28;
  v91 = v29;
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v83 = &v76 - v31;
  v32 = sub_100003714(&qword_1000C0AE8, "\\x");
  v33 = *(v32 - 8);
  v92 = v32;
  v93 = v33;
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v84 = &v76 - v35;
  v36 = sub_100003714(&qword_1000C0B28, &qword_1000A1BF0);
  v37 = *(v36 - 8);
  v94 = v36;
  v95 = v37;
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v85 = &v76 - v39;
  v40 = swift_allocObject();
  *(v40 + 16) = a1;
  *(v40 + 24) = a2;
  *(v40 + 32) = a3;
  swift_bridgeObjectRetain_n();
  sub_100003714(&qword_1000C1B80, &qword_1000A1BF8);
  sub_10005A098();
  sub_10005A224();
  sub_10009E414();
  sub_10009E554();
  sub_10009CF44();
  v100 = sub_10009E5E4();
  v101 = v41;
  v42 = sub_10001CDC8(&qword_1000C0B18, &qword_1000C0B10, &unk_1000A1BC0);
  v43 = sub_1000037A4();
  v44 = v77;
  sub_10009DD64();

  (*(v79 + 8))(v17, v14);
  sub_10009E554();
  sub_10009CF44();
  v104 = sub_10009E5E4();
  v105 = v45;
  v100 = v14;
  v101 = &type metadata for String;
  v102 = v42;
  v103 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v78;
  v48 = v80;
  sub_10009DD24();

  v49 = v44;
  v50 = v48;
  (*(v81 + 8))(v49, v48);
  sub_100003714(&qword_1000C1BB0, &qword_1000A1C08);
  v51 = sub_10009E3D4();
  v52 = *(v51 - 8);
  v53 = *(v52 + 72);
  v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_10009F8F0;
  v56 = v55 + v54;
  v57 = *(v52 + 104);
  v57(v56, enum case for WidgetFamily.systemSmall(_:), v51);
  v57(v56 + v53, enum case for WidgetFamily.systemMedium(_:), v51);
  v100 = v50;
  v101 = &type metadata for String;
  v102 = OpaqueTypeConformance2;
  v103 = v43;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v82;
  v60 = v86;
  sub_10009DD34();

  v61 = v60;
  (*(v87 + 8))(v47, v60);
  v62 = v96;
  v63 = v97;
  v64 = v98;
  (*(v97 + 104))(v96, enum case for WidgetBackgroundStyle.blur(_:), v98);
  v100 = v61;
  v101 = v58;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v83;
  v67 = v88;
  sub_10009DD74();
  (*(v63 + 8))(v62, v64);
  (*(v89 + 8))(v59, v67);
  v100 = v67;
  v101 = v65;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v84;
  v70 = v90;
  sub_10009DD44();
  (*(v91 + 8))(v66, v70);
  v100 = v70;
  v101 = v68;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v85;
  v73 = v92;
  sub_10009DD84();
  (*(v93 + 8))(v69, v73);
  v100 = v73;
  v101 = v71;
  swift_getOpaqueTypeConformance2();
  v74 = v94;
  sub_10009DD54();
  return (*(v95 + 8))(v72, v74);
}

uint64_t sub_100049D78@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X8>)
{
  v51 = a3;
  v48 = sub_100003714(&qword_1000C1BB8, &qword_1000A1C10);
  v5 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v50 = &v44 - v6;
  v7 = sub_10009DE94();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HomeInteractiveWidgetsEntryView(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100003714(&qword_1000C1BC0, &qword_1000A1C18);
  v15 = *(v49 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v49);
  v18 = &v44 - v17;
  v19 = type metadata accessor for AccessoriesAndScenesEntry(0);
  v20 = (a1 + *(v19 + 20));
  v21 = v20[2];
  sub_10009C954();
  if (a2)
  {
    v44 = v52;
    v22 = *v20;
    sub_10009C954();
    v23 = v52;
    v24 = *(a1 + *(v19 + 24));
    KeyPath = swift_getKeyPath();
    v26 = swift_getKeyPath();
    v27 = swift_getKeyPath();
    v45 = v15;
    *&v14[v11[6]] = v27;
    sub_100003714(&qword_1000C15F8, &qword_1000A2510);
    swift_storeEnumTagMultiPayload();
    *v14 = KeyPath;
    v14[8] = 0;
    *(v14 + 2) = v26;
    *(v14 + 3) = 0;
    *(v14 + 4) = 0;
    *(v14 + 5) = 0;
    v14[48] = 0;
    *&v14[v11[7]] = v44;
    v14[v11[8]] = v23;
    v14[v11[9]] = v24;
    v28 = sub_10009DE84();
    v44 = &v44;
    __chkstk_darwin(v28);
    sub_10009E2F4();
    v29 = sub_100003714(&qword_1000C1B90, &qword_1000A1C00);
    v30 = sub_10004DA88(&qword_1000C1B98, type metadata accessor for HomeInteractiveWidgetsEntryView);
    v43 = sub_10005A1A8();
    sub_10009E0D4();
    (*(v46 + 8))(v10, v47);
    sub_10004DD8C(v14, type metadata accessor for HomeInteractiveWidgetsEntryView);
    v31 = v45;
    v32 = v49;
    (*(v45 + 16))(v50, v18, v49);
    swift_storeEnumTagMultiPayload();
    v52 = v11;
    v53 = v29;
    v54 = v30;
    v55 = v43;
    swift_getOpaqueTypeConformance2();
    sub_10009DD94();
    return (*(v31 + 8))(v18, v32);
  }

  else
  {
    v34 = v52;
    v35 = *v20;
    sub_10009C954();
    v36 = v52;
    v37 = *(a1 + *(v19 + 24));
    v38 = swift_getKeyPath();
    v39 = swift_getKeyPath();
    *&v14[v11[6]] = swift_getKeyPath();
    sub_100003714(&qword_1000C15F8, &qword_1000A2510);
    swift_storeEnumTagMultiPayload();
    *v14 = v38;
    v14[8] = 0;
    *(v14 + 2) = v39;
    *(v14 + 3) = 0;
    *(v14 + 4) = 0;
    *(v14 + 5) = 0;
    v14[48] = 0;
    *&v14[v11[7]] = v34;
    v14[v11[8]] = v36;
    v14[v11[9]] = v37;
    sub_10004DC34(v14, v50, type metadata accessor for HomeInteractiveWidgetsEntryView);
    swift_storeEnumTagMultiPayload();
    v40 = sub_10000375C(&qword_1000C1B90, &qword_1000A1C00);
    v41 = sub_10004DA88(&qword_1000C1B98, type metadata accessor for HomeInteractiveWidgetsEntryView);
    v42 = sub_10005A1A8();
    v52 = v11;
    v53 = v40;
    v54 = v41;
    v55 = v42;
    swift_getOpaqueTypeConformance2();
    sub_10009DD94();
    return sub_10004DD8C(v14, type metadata accessor for HomeInteractiveWidgetsEntryView);
  }
}

uint64_t sub_10004A370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = type metadata accessor for AccessoriesAndScenesEntry(0);
  v5 = 0;
  if (!*(a1 + *(result + 24)))
  {
    sub_10009E1C4();
    v5 = sub_10009E1A4();
  }

  *a2 = v5;
  return result;
}

unint64_t sub_10004A3D4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10004D284();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_10004A464@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009DBB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004A4BC()
{
  sub_10009DBD4();
  sub_10004DA88(&qword_1000C16D8, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_10009DC54();
  return v1;
}

uint64_t sub_10004A538@<X0>(_BYTE *a1@<X8>)
{
  sub_10009DBD4();
  sub_10004DA88(&qword_1000C16D8, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_10009DC54();
  *a1 = v3;
  return result;
}

uint64_t sub_10004A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_10004A70C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100003714(&qword_1000C0EC0, &qword_10009FCE8);
      v7 = *(type metadata accessor for AccessoryAndSceneEntity() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for AccessoryAndSceneEntity() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

Swift::Int sub_10004A8AC(void **a1)
{
  v2 = *(type metadata accessor for AccessoryAndSceneEntity() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10002C438(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10004A954(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10004A954(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10009ECF4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for AccessoryAndSceneEntity();
        v6 = sub_10009E6D4();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for AccessoryAndSceneEntity() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10004AF94(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10004AA80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10004AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v79 = sub_10009D494();
  v8 = *(v79 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v79);
  v78 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for AccessoryAndSceneEntity();
  v11 = *(*(v81 - 8) + 64);
  v12 = __chkstk_darwin(v81);
  v74 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v65 - v15;
  result = __chkstk_darwin(v14);
  v20 = &v65 - v19;
  v67 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v75 = (v8 + 8);
    v23 = v21 + v22 * (a3 - 1);
    v72 = -v22;
    v73 = v21;
    v24 = a1 - a3;
    v66 = v22;
    v25 = v21 + v22 * a3;
    v76 = &v65 - v19;
    v77 = v16;
LABEL_6:
    v70 = v23;
    v71 = a3;
    v68 = v25;
    v69 = v24;
    v26 = v24;
    while (1)
    {
      v83 = v26;
      v84 = v25;
      sub_10004DC34(v25, v20, type metadata accessor for AccessoryAndSceneEntity);
      v82 = v23;
      sub_10004DC34(v23, v16, type metadata accessor for AccessoryAndSceneEntity);
      v27 = v81;
      v28 = &v20[*(v81 + 24)];
      v29 = type metadata accessor for WidgetTileInfo();
      v30 = *(v29 + 24);
      v31 = &v28[*(v29 + 28)];
      v32 = *v31;
      v33 = *(v31 + 1);
      if (v33)
      {
        v34 = *v31;
      }

      else
      {
        v34 = 0;
      }

      v35 = 0xE000000000000000;
      if (v33)
      {
        v35 = v33;
      }

      v86 = v34;
      v87 = v35;
      v36 = *&v28[v30];
      v37 = *&v28[v30 + 8];
      swift_bridgeObjectRetain_n();

      v38 = v78;
      sub_10009D484();
      v80 = sub_10009D474();
      v88 = v39;
      v85 = *v75;
      v40 = v79;
      v85(v38, v79);
      v41 = &v16[*(v27 + 24)];
      v42 = *(v29 + 24);
      v43 = &v41[*(v29 + 28)];
      v44 = *v43;
      v45 = *(v43 + 1);
      v46 = v45 ? *v43 : 0;
      v47 = v45 ? *(v43 + 1) : 0xE000000000000000;
      v48 = &v41[v42];
      v50 = *v48;
      v49 = *(v48 + 1);
      swift_bridgeObjectRetain_n();

      sub_10009D484();
      v51 = sub_10009D474();
      v53 = v52;
      v54 = v38;
      v55 = v40;
      v57 = v86;
      v56 = v87;
      v85(v54, v55);
      v58 = v57 == v46 && v56 == v47;
      if (v58 || (sub_10009ED34() & 1) != 0)
      {

        if (v80 == v51 && v88 == v53)
        {

          v16 = v77;
          sub_10004DD8C(v77, type metadata accessor for AccessoryAndSceneEntity);
          v20 = v76;
          result = sub_10004DD8C(v76, type metadata accessor for AccessoryAndSceneEntity);
LABEL_5:
          a3 = v71 + 1;
          v23 = v70 + v66;
          v24 = v69 - 1;
          v25 = v68 + v66;
          if (v71 + 1 == v67)
          {
            return result;
          }

          goto LABEL_6;
        }

        v59 = sub_10009ED34();
      }

      else
      {

        v59 = sub_10009ED34();
      }

      v20 = v76;

      v16 = v77;
      sub_10004DD8C(v77, type metadata accessor for AccessoryAndSceneEntity);
      result = sub_10004DD8C(v20, type metadata accessor for AccessoryAndSceneEntity);
      v61 = v83;
      v60 = v84;
      v62 = v82;
      if ((v59 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v73)
      {
        break;
      }

      v63 = v74;
      sub_10004EF84(v84, v74, type metadata accessor for AccessoryAndSceneEntity);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10004EF84(v63, v62, type metadata accessor for AccessoryAndSceneEntity);
      v23 = v62 + v72;
      v25 = v60 + v72;
      v64 = __CFADD__(v61, 1);
      v26 = v61 + 1;
      if (v64)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004AF94(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v184 = a4;
  v185 = a1;
  v204 = sub_10009D494();
  v7 = *(v204 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v204);
  v203 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for AccessoryAndSceneEntity();
  v194 = *(v205 - 8);
  v10 = *(v194 + 64);
  v11 = __chkstk_darwin(v205);
  v189 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v201 = &v181 - v14;
  v15 = __chkstk_darwin(v13);
  v215 = &v181 - v16;
  v17 = __chkstk_darwin(v15);
  v214 = &v181 - v18;
  v19 = __chkstk_darwin(v17);
  v197 = &v181 - v20;
  v21 = __chkstk_darwin(v19);
  v196 = &v181 - v22;
  v23 = __chkstk_darwin(v21);
  result = __chkstk_darwin(v23);
  v195 = a3;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_139:
    v7 = *v185;
    if (!*v185)
    {
      goto LABEL_181;
    }

    a3 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_175:
      result = sub_10002BF3C(a3);
    }

    v216 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v195)
      {
        v177 = *(result + 16 * a3);
        v178 = result;
        v179 = *(result + 16 * (a3 - 1) + 40);
        sub_10004BEF8(*v195 + *(v194 + 72) * v177, *v195 + *(v194 + 72) * *(result + 16 * (a3 - 1) + 32), *v195 + *(v194 + 72) * v179, v7);
        if (v5)
        {
        }

        if (v179 < v177)
        {
          goto LABEL_168;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v178 = sub_10002BF3C(v178);
        }

        if (a3 - 2 >= *(v178 + 2))
        {
          goto LABEL_169;
        }

        v180 = &v178[16 * a3];
        *v180 = v177;
        *(v180 + 1) = v179;
        v216 = v178;
        sub_10002BEB0(a3 - 1);
        result = v216;
        a3 = *(v216 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_179;
    }
  }

  v181 = &v181 - v25;
  v182 = v26;
  v28 = 0;
  v202 = (v7 + 8);
  v29 = _swiftEmptyArrayStorage;
  while (1)
  {
    v30 = v28;
    v190 = v29;
    v186 = v28;
    if (v28 + 1 < v27)
    {
      v198 = v27;
      v31 = *v195;
      v32 = *(v194 + 72);
      v33 = *v195 + v32 * (v28 + 1);
      v34 = v181;
      sub_10004DC34(v33, v181, type metadata accessor for AccessoryAndSceneEntity);
      v35 = v182;
      sub_10004DC34(v31 + v32 * v28, v182, type metadata accessor for AccessoryAndSceneEntity);
      LODWORD(v200) = sub_10003D2E0(v34, v35);
      if (!v5)
      {
        v183 = 0;
        a3 = type metadata accessor for AccessoryAndSceneEntity;
        sub_10004DD8C(v35, type metadata accessor for AccessoryAndSceneEntity);
        result = sub_10004DD8C(v34, type metadata accessor for AccessoryAndSceneEntity);
        v7 = v28 + 2;
        v36 = v31 + v32 * (v28 + 2);
        v37 = v205;
        v199 = v32;
        while (1)
        {
          v42 = v198;
          if (v198 == v7)
          {
            break;
          }

          v211 = v36;
          v212 = v7;
          v43 = v196;
          sub_10004DC34(v36, v196, type metadata accessor for AccessoryAndSceneEntity);
          v213 = v33;
          v44 = v197;
          sub_10004DC34(v33, v197, type metadata accessor for AccessoryAndSceneEntity);
          v45 = v43 + *(v37 + 24);
          v46 = type metadata accessor for WidgetTileInfo();
          v47 = *(v46 + 24);
          v48 = (v45 + *(v46 + 28));
          v49 = *v48;
          v50 = v48[1];
          if (v50)
          {
            v51 = *v48;
          }

          else
          {
            v51 = 0;
          }

          v52 = 0xE000000000000000;
          if (v50)
          {
            v52 = v50;
          }

          v208 = v52;
          v209 = v51;
          v53 = *(v45 + v47);
          v54 = *(v45 + v47 + 8);
          swift_bridgeObjectRetain_n();

          v55 = v203;
          sub_10009D484();
          v56 = sub_10009D474();
          v210 = v57;
          v58 = *v202;
          v206 = v56;
          v207 = v58;
          v59 = v204;
          v58(v55, v204);
          v60 = v44 + *(v37 + 24);
          v61 = *(v46 + 24);
          v62 = (v60 + *(v46 + 28));
          v63 = *v62;
          v64 = v62[1];
          if (v64)
          {
            v65 = *v62;
          }

          else
          {
            v65 = 0;
          }

          if (v64)
          {
            v66 = v62[1];
          }

          else
          {
            v66 = 0xE000000000000000;
          }

          v67 = (v60 + v61);
          v68 = *v67;
          v69 = v67[1];
          swift_bridgeObjectRetain_n();

          sub_10009D484();
          v70 = sub_10009D474();
          v72 = v71;
          v73 = v55;
          v74 = v59;
          v76 = v208;
          v75 = v209;
          v207(v73, v74);
          v77 = v75 == v65 && v76 == v66;
          if (v77 || (sub_10009ED34() & 1) != 0)
          {

            if (v206 == v70 && v210 == v72)
            {
              v38 = 0;
            }

            else
            {
              v38 = sub_10009ED34();
            }
          }

          else
          {

            v38 = sub_10009ED34();
          }

          v37 = v205;
          v39 = v212;
          v40 = v213;
          v41 = v211;

          a3 = type metadata accessor for AccessoryAndSceneEntity;
          sub_10004DD8C(v197, type metadata accessor for AccessoryAndSceneEntity);
          result = sub_10004DD8C(v196, type metadata accessor for AccessoryAndSceneEntity);
          v7 = v39 + 1;
          v32 = v199;
          v36 = v41 + v199;
          v33 = v40 + v199;
          if ((v200 ^ v38))
          {
            v42 = v7 - 1;
            break;
          }
        }

        v5 = v183;
        v78 = v184;
        v30 = v186;
        if (v200)
        {
          if (v42 < v186)
          {
            goto LABEL_174;
          }

          if (v186 < v42)
          {
            a3 = v32 * (v42 - 1);
            v79 = v42 * v32;
            v80 = v42;
            v81 = v186;
            v82 = v186 * v32;
            do
            {
              if (v81 != --v42)
              {
                v83 = *v195;
                if (!*v195)
                {
                  goto LABEL_178;
                }

                v7 = v83 + v82;
                sub_10004EF84(v83 + v82, v189, type metadata accessor for AccessoryAndSceneEntity);
                if (v82 < a3 || v7 >= v83 + v79)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v82 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_10004EF84(v189, v83 + a3, type metadata accessor for AccessoryAndSceneEntity);
              }

              ++v81;
              a3 -= v32;
              v79 -= v32;
              v82 += v32;
            }

            while (v81 < v42);
            v5 = v183;
            v78 = v184;
            v30 = v186;
            v42 = v80;
          }
        }

        goto LABEL_46;
      }

      sub_10004DD8C(v35, type metadata accessor for AccessoryAndSceneEntity);
      sub_10004DD8C(v34, type metadata accessor for AccessoryAndSceneEntity);
    }

    v42 = v28 + 1;
    v78 = v184;
LABEL_46:
    v84 = v195[1];
    if (v42 >= v84)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v42, v30))
    {
      goto LABEL_171;
    }

    if (v42 - v30 >= v78)
    {
LABEL_55:
      v7 = v42;
      if (v42 < v30)
      {
        goto LABEL_170;
      }

      goto LABEL_56;
    }

    if (__OFADD__(v30, v78))
    {
      goto LABEL_172;
    }

    if (v30 + v78 >= v84)
    {
      v7 = v195[1];
    }

    else
    {
      v7 = v30 + v78;
    }

    if (v7 < v30)
    {
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    if (v42 == v7)
    {
      goto LABEL_55;
    }

    v183 = v5;
    v130 = *v195;
    v131 = *(v194 + 72);
    v132 = *v195 + v131 * (v42 - 1);
    v199 = -v131;
    v200 = v130;
    v133 = v30 - v42;
    v187 = v131;
    v134 = v130 + v42 * v131;
    v135 = v205;
    v188 = v7;
LABEL_108:
    v198 = v42;
    v191 = v134;
    v192 = v133;
    v136 = v133;
    v193 = v132;
LABEL_109:
    v208 = v134;
    v209 = v136;
    v137 = v214;
    sub_10004DC34(v134, v214, type metadata accessor for AccessoryAndSceneEntity);
    v207 = v132;
    v138 = v215;
    sub_10004DC34(v132, v215, type metadata accessor for AccessoryAndSceneEntity);
    v139 = v137 + *(v135 + 24);
    v140 = v135;
    v141 = type metadata accessor for WidgetTileInfo();
    v142 = *(v141 + 24);
    v143 = (v139 + *(v141 + 28));
    v144 = *v143;
    v145 = v143[1];
    if (v145)
    {
      v146 = *v143;
    }

    else
    {
      v146 = 0;
    }

    v147 = 0xE000000000000000;
    if (v145)
    {
      v147 = v145;
    }

    v211 = v146;
    v212 = v147;
    v148 = v139 + v142;
    v149 = *(v139 + v142);
    v150 = *(v148 + 8);
    swift_bridgeObjectRetain_n();

    v151 = v203;
    sub_10009D484();
    v206 = sub_10009D474();
    v213 = v152;
    v210 = *v202;
    v153 = v204;
    v210(v151, v204);
    v154 = v138 + *(v140 + 24);
    v155 = *(v141 + 24);
    v156 = (v154 + *(v141 + 28));
    v158 = *v156;
    v157 = v156[1];
    v159 = v157 ? *v156 : 0;
    v160 = v157 ? v156[1] : 0xE000000000000000;
    v161 = (v154 + v155);
    v162 = *v161;
    v163 = v161[1];
    swift_bridgeObjectRetain_n();

    sub_10009D484();
    v164 = sub_10009D474();
    v166 = v165;
    v167 = v151;
    v168 = v153;
    a3 = v211;
    v169 = v212;
    v210(v167, v168);
    v170 = a3 == v159 && v169 == v160;
    if (!v170 && (sub_10009ED34() & 1) == 0)
    {
      break;
    }

    if (v206 != v164 || v213 != v166)
    {
      v171 = sub_10009ED34();
      goto LABEL_129;
    }

    sub_10004DD8C(v215, type metadata accessor for AccessoryAndSceneEntity);
    sub_10004DD8C(v214, type metadata accessor for AccessoryAndSceneEntity);
    v135 = v205;
LABEL_107:
    v42 = v198 + 1;
    v132 = v193 + v187;
    v133 = v192 - 1;
    v134 = v191 + v187;
    v7 = v188;
    if (v198 + 1 != v188)
    {
      goto LABEL_108;
    }

    v5 = v183;
    if (v188 < v186)
    {
      goto LABEL_170;
    }

LABEL_56:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v29 = v190;
    }

    else
    {
      result = sub_10002BF50(0, *(v190 + 2) + 1, 1, v190);
      v29 = result;
    }

    v86 = *(v29 + 2);
    v85 = *(v29 + 3);
    a3 = v86 + 1;
    if (v86 >= v85 >> 1)
    {
      result = sub_10002BF50((v85 > 1), v86 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 2) = a3;
    v87 = &v29[16 * v86];
    *(v87 + 4) = v186;
    *(v87 + 5) = v7;
    v28 = v7;
    v7 = *v185;
    if (!*v185)
    {
      goto LABEL_180;
    }

    v88 = v5;
    if (v86)
    {
      while (2)
      {
        v5 = a3 - 1;
        if (a3 >= 4)
        {
          v93 = &v29[16 * a3 + 32];
          v94 = *(v93 - 64);
          v95 = *(v93 - 56);
          v99 = __OFSUB__(v95, v94);
          v96 = v95 - v94;
          if (v99)
          {
            goto LABEL_157;
          }

          v98 = *(v93 - 48);
          v97 = *(v93 - 40);
          v99 = __OFSUB__(v97, v98);
          v91 = v97 - v98;
          v92 = v99;
          if (v99)
          {
            goto LABEL_158;
          }

          v100 = &v29[16 * a3];
          v102 = *v100;
          v101 = *(v100 + 1);
          v99 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v99)
          {
            goto LABEL_160;
          }

          v99 = __OFADD__(v91, v103);
          v104 = v91 + v103;
          if (v99)
          {
            goto LABEL_163;
          }

          if (v104 >= v96)
          {
            v122 = &v29[16 * v5 + 32];
            v124 = *v122;
            v123 = *(v122 + 1);
            v99 = __OFSUB__(v123, v124);
            v125 = v123 - v124;
            if (v99)
            {
              goto LABEL_167;
            }

            if (v91 < v125)
            {
              v5 = a3 - 2;
            }
          }

          else
          {
LABEL_75:
            if (v92)
            {
              goto LABEL_159;
            }

            v105 = &v29[16 * a3];
            v107 = *v105;
            v106 = *(v105 + 1);
            v108 = __OFSUB__(v106, v107);
            v109 = v106 - v107;
            v110 = v108;
            if (v108)
            {
              goto LABEL_162;
            }

            v111 = &v29[16 * v5 + 32];
            v113 = *v111;
            v112 = *(v111 + 1);
            v99 = __OFSUB__(v112, v113);
            v114 = v112 - v113;
            if (v99)
            {
              goto LABEL_165;
            }

            if (__OFADD__(v109, v114))
            {
              goto LABEL_166;
            }

            if (v109 + v114 < v91)
            {
              goto LABEL_89;
            }

            if (v91 < v114)
            {
              v5 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v89 = *(v29 + 4);
            v90 = *(v29 + 5);
            v99 = __OFSUB__(v90, v89);
            v91 = v90 - v89;
            v92 = v99;
            goto LABEL_75;
          }

          v115 = &v29[16 * a3];
          v117 = *v115;
          v116 = *(v115 + 1);
          v99 = __OFSUB__(v116, v117);
          v109 = v116 - v117;
          v110 = v99;
LABEL_89:
          if (v110)
          {
            goto LABEL_161;
          }

          v118 = &v29[16 * v5];
          v120 = *(v118 + 4);
          v119 = *(v118 + 5);
          v99 = __OFSUB__(v119, v120);
          v121 = v119 - v120;
          if (v99)
          {
            goto LABEL_164;
          }

          if (v121 < v109)
          {
            break;
          }
        }

        v126 = v5 - 1;
        if (v5 - 1 >= a3)
        {
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        if (!*v195)
        {
          goto LABEL_177;
        }

        v127 = v29;
        a3 = *&v29[16 * v126 + 32];
        v128 = *&v29[16 * v5 + 40];
        sub_10004BEF8(*v195 + *(v194 + 72) * a3, *v195 + *(v194 + 72) * *&v29[16 * v5 + 32], *v195 + *(v194 + 72) * v128, v7);
        if (v88)
        {
        }

        if (v128 < a3)
        {
          goto LABEL_155;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_10002BF3C(v127);
        }

        if (v126 >= *(v127 + 2))
        {
          goto LABEL_156;
        }

        v129 = &v127[16 * v126];
        *(v129 + 4) = a3;
        *(v129 + 5) = v128;
        v216 = v127;
        result = sub_10002BEB0(v5);
        v29 = v216;
        a3 = *(v216 + 16);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v27 = v195[1];
    v5 = v88;
    if (v28 >= v27)
    {
      goto LABEL_139;
    }
  }

  v171 = sub_10009ED34();
LABEL_129:
  v135 = v205;

  a3 = type metadata accessor for AccessoryAndSceneEntity;
  sub_10004DD8C(v215, type metadata accessor for AccessoryAndSceneEntity);
  result = sub_10004DD8C(v214, type metadata accessor for AccessoryAndSceneEntity);
  if ((v171 & 1) == 0)
  {
    goto LABEL_107;
  }

  v172 = v209;
  if (v200)
  {
    a3 = type metadata accessor for AccessoryAndSceneEntity;
    v173 = v208;
    v174 = v201;
    sub_10004EF84(v208, v201, type metadata accessor for AccessoryAndSceneEntity);
    v175 = v207;
    swift_arrayInitWithTakeFrontToBack();
    sub_10004EF84(v174, v175, type metadata accessor for AccessoryAndSceneEntity);
    v132 = v175 + v199;
    v134 = v173 + v199;
    v176 = __CFADD__(v172, 1);
    v136 = v172 + 1;
    if (v176)
    {
      goto LABEL_107;
    }

    goto LABEL_109;
  }

  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
  return result;
}

uint64_t sub_10004BEF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = type metadata accessor for AccessoryAndSceneEntity();
  v9 = *(*(v65 - 8) + 64);
  v10 = __chkstk_darwin(v65);
  v11 = __chkstk_darwin(v10);
  v13 = &v54 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v54 - v15;
  result = __chkstk_darwin(v14);
  v20 = &v54 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_64;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_65;
  }

  v24 = (a2 - a1) / v22;
  v68 = a1;
  v67 = a4;
  v64 = v22;
  if (v24 >= v23 / v22)
  {
    v27 = v23 / v22 * v22;
    v60 = v18;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v28 = v13;
    }

    else
    {
      v28 = v13;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v37 = a4 + v27;
    v38 = v4;
    if (v27 >= 1)
    {
      v39 = -v64;
      v40 = a4 + v27;
      v57 = a4;
      v58 = a1;
      v56 = -v64;
      do
      {
        v54 = v37;
        v41 = a2 + v39;
        v59 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v68 = a2;
            v66 = v54;
            goto LABEL_62;
          }

          v63 = a3;
          v64 = v40;
          v55 = v37;
          v62 = (v40 + v39);
          sub_10004DC34(v40 + v39, v28, type metadata accessor for AccessoryAndSceneEntity);
          v44 = v28;
          v45 = v60;
          sub_10004DC34(v41, v60, type metadata accessor for AccessoryAndSceneEntity);
          v46 = sub_10003D2E0(v44, v45);
          if (v38)
          {
            sub_10004DD8C(v45, type metadata accessor for AccessoryAndSceneEntity);
            sub_10004DD8C(v44, type metadata accessor for AccessoryAndSceneEntity);
            v68 = v59;
            v66 = v55;
            goto LABEL_62;
          }

          v47 = v46;
          v61 = 0;
          v48 = v41;
          v49 = v63;
          v50 = v63 + v39;
          sub_10004DD8C(v45, type metadata accessor for AccessoryAndSceneEntity);
          sub_10004DD8C(v44, type metadata accessor for AccessoryAndSceneEntity);
          v28 = v44;
          if (v47)
          {
            break;
          }

          v51 = v62;
          v37 = v62;
          a3 = v49 + v39;
          if (v49 < v64 || v50 >= v64)
          {
            v42 = v62;
            swift_arrayInitWithTakeFrontToBack();
            v37 = v42;
            v41 = v48;
            v38 = v61;
          }

          else
          {
            v52 = v49 == v64;
            v41 = v48;
            v38 = v61;
            if (!v52)
            {
              v53 = v62;
              swift_arrayInitWithTakeBackToFront();
              v37 = v53;
            }
          }

          v40 = v37;
          a1 = v58;
          v43 = v51 > v57;
          v39 = v56;
          a2 = v59;
          if (!v43)
          {
            goto LABEL_58;
          }
        }

        a3 = v49 + v39;
        if (v49 < v59 || v50 >= v59)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v38 = v61;
          v39 = v56;
        }

        else
        {
          a2 = v48;
          v38 = v61;
          v39 = v56;
          if (v49 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v58;
        v40 = v64;
        v37 = v55;
      }

      while (v64 > v57);
    }

LABEL_58:
    v68 = a2;
    v66 = v37;
  }

  else
  {
    v25 = v24 * v22;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v26 = v4;
    }

    else
    {
      v26 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v63 = a4 + v25;
    v66 = a4 + v25;
    if (v25 >= 1 && a2 < a3)
    {
      v30 = v64;
      v61 = v20;
      v62 = v16;
      while (1)
      {
        v31 = a3;
        sub_10004DC34(a2, v20, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DC34(a4, v16, type metadata accessor for AccessoryAndSceneEntity);
        v32 = sub_10003D2E0(v20, v16);
        if (v26)
        {
          break;
        }

        v33 = v32;
        v34 = v16;
        v35 = a4;
        sub_10004DD8C(v34, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v20, type metadata accessor for AccessoryAndSceneEntity);
        if (v33)
        {
          v36 = a2 + v30;
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v36;
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v36;
          }
        }

        else
        {
          a4 += v30;
          if (a1 < v35 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = v35 + v30;
        }

        v16 = v62;
        v30 = v64;
        a1 += v64;
        v68 = a1;
        v20 = v61;
        if (a4 >= v63 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_10004DD8C(v16, type metadata accessor for AccessoryAndSceneEntity);
      sub_10004DD8C(v20, type metadata accessor for AccessoryAndSceneEntity);
    }
  }

LABEL_62:
  sub_10004C528(&v68, &v67, &v66);
  return 1;
}

uint64_t sub_10004C528(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AccessoryAndSceneEntity();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10004C60C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10009E9A4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10009EDD4();

      sub_10009E624();
      v13 = sub_10009EE04();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10004C7BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009DB94();
  *a1 = result;
  return result;
}

uint64_t sub_10004C7E8(uint64_t *a1)
{
  v1 = *a1;

  return sub_10009DBA4();
}

uint64_t sub_10004C814(uint64_t a1)
{
  v43 = sub_100003714(&qword_1000C19A0, &qword_1000A1A10);
  v2 = *(*(v43 - 8) + 64);
  v3 = __chkstk_darwin(v43);
  v42 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v3);
  v8 = &v38 - v7;
  v9 = _swiftEmptyArrayStorage;
  v41 = *(a1 + 16);
  if (v41)
  {
    v44 = v6;
    v10 = *(v6 + 80);
    v38 = v10;
    v39 = (v10 + 32) & ~v10;
    v11 = _swiftEmptyArrayStorage + v39;
    v12 = 0;
    v13 = 0;
    v14 = *(type metadata accessor for AccessoryAndSceneEntity() - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v40 = *(v14 + 72);
    v16 = _swiftEmptyArrayStorage;
    while (1)
    {
      v17 = v42;
      v18 = *(v43 + 48);
      *v42 = v12;
      sub_10004DC34(v15, v17 + v18, type metadata accessor for AccessoryAndSceneEntity);
      v19 = v8;
      result = sub_10005B0FC(v17, v8, &qword_1000C19A0, &qword_1000A1A10);
      if (v13)
      {
        v45 = v16;
      }

      else
      {
        v20 = v16[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        sub_100003714(&qword_1000C1A50, &qword_1000A1AB0);
        v23 = *(v44 + 72);
        v24 = v39;
        v45 = swift_allocObject();
        result = j__malloc_size(v45);
        if (!v23)
        {
          goto LABEL_35;
        }

        v25 = result - v24;
        if (result - v24 == 0x8000000000000000 && v23 == -1)
        {
          goto LABEL_36;
        }

        v27 = v25 / v23;
        v28 = v45;
        *(v45 + 2) = v22;
        v28[3] = 2 * (v25 / v23);
        v29 = v28 + v24;
        v30 = v16[3] >> 1;
        v31 = v30 * v23;
        if (v16[2])
        {
          if (v28 < v16 || v29 >= v16 + v39 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v28 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v11 = &v29[v31];
        v13 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v30;
      }

      v33 = v44;
      v8 = v19;
      v34 = __OFSUB__(v13--, 1);
      if (v34)
      {
        break;
      }

      ++v12;
      result = sub_10005B0FC(v19, v11, &qword_1000C19A0, &qword_1000A1A10);
      v11 += *(v33 + 72);
      v15 += v40;
      v9 = v45;
      v16 = v45;
      if (v41 == v12)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = 0;
LABEL_29:
  v35 = v9[3];
  if (v35 < 2)
  {
    return v9;
  }

  v36 = v35 >> 1;
  v34 = __OFSUB__(v36, v13);
  v37 = v36 - v13;
  if (!v34)
  {
    v9[2] = v37;
    return v9;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_10004CB70(uint64_t result)
{
  v1 = *(result + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v3);
      if (v4)
      {
        v8 = *(v6 + 8 * v3);

        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v10 = *(v2 + 3);
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        sub_100003714(&qword_1000C1B10, &unk_1000A1B60);
        v13 = swift_allocObject();
        v14 = j__malloc_size(v13);
        v15 = v14 - 32;
        if (v14 < 32)
        {
          v15 = v14 - 17;
        }

        v16 = v15 >> 4;
        *(v13 + 2) = v12;
        *(v13 + 3) = 2 * (v15 >> 4);
        v17 = v13 + 32;
        v18 = *(v2 + 3) >> 1;
        v5 = &v13[16 * v18 + 32];
        v19 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        if (*(v2 + 2))
        {
          v20 = v2 + 32;
          if (v13 != v2 || v17 >= &v20[16 * v18])
          {
            memmove(v17, v20, 16 * v18);
          }

          *(v2 + 2) = 0;
        }

        else
        {
        }

        v2 = v13;
        v9 = __OFSUB__(v19, 1);
        v4 = v19 - 1;
        if (v9)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v21 = *(v2 + 3);
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v9 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v9)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v23;
  }

  return v2;
}

void sub_10004CD00(uint64_t a1, void *a2)
{
  v32 = a2;
  v33 = sub_10009CF14();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v33);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = _swiftEmptyArrayStorage;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10009E9D4();
    sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
    sub_100034CC0();
    sub_10009E794();
    a1 = v36;
    v6 = v37;
    v7 = v38;
    v8 = v39;
    v9 = v40;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v28 = v7;
  v30 = (v3 + 8);
  v13 = _swiftEmptyArrayStorage;
LABEL_8:
  v29 = v13;
  while (a1 < 0)
  {
    v17 = sub_10009EA44();
    if (!v17 || (v34 = v17, sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr), swift_dynamicCast(), (v16 = v35) == 0))
    {
LABEL_24:
      sub_100015F9C();
      return;
    }

LABEL_19:
    v18 = [v32 reachabilityByAccessoryUniqueIdentifier];
    sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
    sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID);
    v19 = sub_10009E4C4();

    v20 = [v16 uniqueIdentifier];
    v21 = v31;
    sub_10009CF04();

    if (*(v19 + 16))
    {
      v22 = sub_10001B5D0(v21);
      if (v23)
      {
        v24 = *(*(v19 + 56) + 8 * v22);
        v27 = *v30;
        v29 = v24;
        v27(v21, v33);

        sub_10009E684();
        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10009E6C4();
        }

        sub_10009E6E4();
        v13 = v41;
        goto LABEL_8;
      }
    }

    (*v30)(v21, v33);
  }

  v14 = v8;
  v15 = v9;
  if (v9)
  {
LABEL_15:
    v9 = (v15 - 1) & v15;
    v16 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= ((v7 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v15 = *(v6 + 8 * v8);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_10004D0FC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v20 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_16:
    v4 = sub_10009EBA4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v6)
        {
          v8 = sub_10009EAE4();
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
            return v20;
          }
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(v3 + 8 * v5 + 32);
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        v10 = v8;
        v11 = sub_100004014(&v19, v10);

        if (v11)
        {
          sub_10009EB34();
          v12 = v6;
          v13 = v4;
          v14 = v3;
          v15 = a2;
          v16 = v20[2];
          sub_10009EB64();
          a2 = v15;
          v3 = v14;
          v4 = v13;
          v6 = v12;
          v7 = v18;
          sub_10009EB74();
          sub_10009EB44();
        }

        else
        {
        }

        ++v5;
        if (v9 == v4)
        {
          return v20;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10004D284()
{
  v0 = sub_10009CE24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v23[-v7];
  __chkstk_darwin(v6);
  v10 = &v23[-v9];
  if (qword_1000C0A48 != -1)
  {
    swift_once();
  }

  sub_10009D9D4();

  if (v23[15] == 1)
  {
    sub_1000249E0(v10);
    v11 = [objc_opt_self() defaultManager];
    sub_10009CDF4(1);
    v12 = sub_10009E5B4();

    v13 = [v11 fileExistsAtPath:v12];

    if ((v13 & 1) != 0 || (v14 = [objc_opt_self() mainBundle], v15 = sub_10009E5B4(), v16 = sub_10009E5B4(), v17 = objc_msgSend(v14, "URLForResource:withExtension:", v15, v16), v14, v15, v16, !v17))
    {
      (*(v1 + 8))(v10, v0);
    }

    else
    {
      sub_10009CDE4();

      (*(v1 + 32))(v8, v5, v0);
      v18 = sub_10009CE34();
      v20 = v19;
      sub_10009CE84();
      sub_100033B34(v18, v20);
      v21 = *(v1 + 8);
      v21(v8, v0);
      v21(v10, v0);
    }
  }

  return 0xD000000000000021;
}

uint64_t sub_10004D618()
{
  v1 = type metadata accessor for HomeInteractiveWidgetsEntryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_10004D760(*(v0 + v4), *(v0 + v4 + 8));
  sub_10004D76C(*(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48));
  v6 = *(v1 + 24);
  sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10009E3D4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = *(v5 + *(v1 + 28));

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_10004D760(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10004D76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10004D778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HomeInteractiveWidgetsEntryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100041B10(a1, v6, a2);
}

unint64_t sub_10004D838()
{
  result = qword_1000C1638;
  if (!qword_1000C1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1638);
  }

  return result;
}

unint64_t sub_10004D8BC()
{
  result = qword_1000C1658;
  if (!qword_1000C1658)
  {
    sub_10000375C(&qword_1000C1660, &qword_1000A14D0);
    sub_10004DA88(&qword_1000C1668, type metadata accessor for WidgetViewForLargeSquareTiles);
    sub_10004D978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1658);
  }

  return result;
}

unint64_t sub_10004D978()
{
  result = qword_1000C1670;
  if (!qword_1000C1670)
  {
    sub_10000375C(&qword_1000C1608, &qword_1000A1498);
    sub_10004DA34();
    sub_10004DA88(&qword_1000C1680, type metadata accessor for WidgetViewsForMediumSystemFamily);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1670);
  }

  return result;
}

unint64_t sub_10004DA34()
{
  result = qword_1000C1678;
  if (!qword_1000C1678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1678);
  }

  return result;
}

uint64_t sub_10004DA88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004DAD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004DB7C()
{
  result = qword_1000C16B8;
  if (!qword_1000C16B8)
  {
    sub_10000375C(&qword_1000C1688, &qword_1000A14D8);
    sub_10004D88C();
    sub_100059AD4(&qword_1000C1650, &qword_1000C1618, &qword_1000A14A8, sub_10004D8BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C16B8);
  }

  return result;
}

uint64_t sub_10004DC34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004DD8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_10004DDEC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004DE00(uint64_t a1, int a2)
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

uint64_t sub_10004DE48(uint64_t result, int a2, int a3)
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

uint64_t sub_10004DEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004DF88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10004E04C()
{
  sub_10004E720(319, &qword_1000C15A0, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10003AF84(319, &qword_1000C1590);
    if (v1 <= 0x3F)
    {
      sub_10004E720(319, &unk_1000C1748, type metadata accessor for AccessoryAndSceneEntity, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_10004E1A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10004E1BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004E204(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10004E274(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[9]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10004E3FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_10004E56C()
{
  sub_10003AF84(319, &qword_1000C1590);
  if (v0 <= 0x3F)
  {
    sub_10004E720(319, &qword_1000C15A0, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10004E720(319, &qword_1000C1810, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10004E720(319, &qword_1000C1818, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CGSize();
          if (v4 <= 0x3F)
          {
            sub_10004E720(319, &unk_1000C1748, type metadata accessor for AccessoryAndSceneEntity, &type metadata accessor for Array);
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

void sub_10004E720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10004E784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10004E7CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10004E82C()
{
  result = qword_1000C1858;
  if (!qword_1000C1858)
  {
    sub_10000375C(&qword_1000C1860, "Di");
    sub_10001CDC8(&qword_1000C1868, &qword_1000C1870, qword_1000A1738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1858);
  }

  return result;
}

uint64_t sub_10004E970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009DB94();
  *a1 = result;
  return result;
}

uint64_t sub_10004E99C(uint64_t *a1)
{
  v1 = *a1;

  return sub_10009DBA4();
}

unint64_t sub_10004E9C8()
{
  result = qword_1000C18D8;
  if (!qword_1000C18D8)
  {
    sub_10000375C(&qword_1000C18D0, &qword_1000A1948);
    sub_10004EA80();
    sub_10001CDC8(&qword_1000C1900, &qword_1000C1908, &qword_1000A1960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C18D8);
  }

  return result;
}

unint64_t sub_10004EA80()
{
  result = qword_1000C18E0;
  if (!qword_1000C18E0)
  {
    sub_10000375C(&qword_1000C18E8, &qword_1000A1950);
    sub_10001CDC8(&qword_1000C18F0, &qword_1000C18F8, &qword_1000A1958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C18E0);
  }

  return result;
}

uint64_t sub_10004EB38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009DB74();
  *a1 = result;
  return result;
}

unint64_t sub_10004EB8C()
{
  result = qword_1000C1920;
  if (!qword_1000C1920)
  {
    sub_10000375C(&qword_1000C1918, &qword_1000A1998);
    sub_10004EC44();
    sub_10001CDC8(&qword_1000C1900, &qword_1000C1908, &qword_1000A1960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1920);
  }

  return result;
}

unint64_t sub_10004EC44()
{
  result = qword_1000C1928;
  if (!qword_1000C1928)
  {
    sub_10000375C(&qword_1000C1930, &qword_1000A19A0);
    sub_10001CDC8(&qword_1000C1938, &qword_1000C1940, &qword_1000A19A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1928);
  }

  return result;
}

uint64_t sub_10004ECFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C18B8, &qword_1000A1900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004ED6C()
{
  v1 = type metadata accessor for WidgetViewForLargeSquareTiles(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 32) & ~v2;
  v5 = v0 + v4;
  sub_10004D760(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10009E3D4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v1[6];
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10009DA04();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = v1[7];
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10009E3A4();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  v15 = *(v5 + v1[9]);

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_10004EF84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004EFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for WidgetViewForLargeSquareTiles(0) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100045360(a1, a2, v10, a3, v8, v9);
}

uint64_t sub_10004F078()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10004F0B0()
{
  result = qword_1000C19E8;
  if (!qword_1000C19E8)
  {
    sub_10000375C(&qword_1000C19E0, &unk_1000A1A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C19E8);
  }

  return result;
}

uint64_t sub_10004F134@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009DBB4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10004F18C()
{
  result = qword_1000C1A28;
  if (!qword_1000C1A28)
  {
    sub_10000375C(&qword_1000C19F8, &qword_1000A1A58);
    sub_10001CDC8(&qword_1000C1A30, &qword_1000C19F0, &qword_1000A1A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1A28);
  }

  return result;
}

uint64_t sub_10004F244(id *a1)
{
  v2 = sub_10009CF14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100003714(&qword_1000C0C70, &qword_10009FA00);
  v6 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v8 = &v36 - v7;
  v9 = sub_100003714(&qword_1000C1228, &unk_1000A0880);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - v11;
  v13 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v37 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v36 - v18;
  __chkstk_darwin(v17);
  v21 = &v36 - v20;
  v22 = [*a1 uniqueIdentifier];
  sub_10009CF04();

  v39 = v3;
  v23 = *(v3 + 56);
  v24 = 1;
  v23(v21, 0, 1, v2);
  sub_10009C954();
  v25 = type metadata accessor for HomeEntity();
  if (!(*(*(v25 - 8) + 48))(v12, 1, v25))
  {
    (*(v39 + 16))(v19, v12, v2);
    v24 = 0;
  }

  sub_1000160CC(v12, &qword_1000C1228, &unk_1000A0880);
  v23(v19, v24, 1, v2);
  v26 = *(v38 + 48);
  sub_10001E0A8(v21, v8, &qword_1000C0C78, &qword_1000A0390);
  sub_10001E0A8(v19, &v8[v26], &qword_1000C0C78, &qword_1000A0390);
  v27 = v39;
  v28 = *(v39 + 48);
  if (v28(v8, 1, v2) != 1)
  {
    v30 = v37;
    sub_10001E0A8(v8, v37, &qword_1000C0C78, &qword_1000A0390);
    if (v28(&v8[v26], 1, v2) != 1)
    {
      v31 = &v8[v26];
      v32 = v36;
      (*(v27 + 32))(v36, v31, v2);
      sub_10004DA88(&qword_1000C0BE8, &type metadata accessor for UUID);
      v33 = v27;
      v29 = sub_10009E534();
      v34 = *(v33 + 8);
      v34(v32, v2);
      sub_1000160CC(v19, &qword_1000C0C78, &qword_1000A0390);
      sub_1000160CC(v21, &qword_1000C0C78, &qword_1000A0390);
      v34(v37, v2);
      sub_1000160CC(v8, &qword_1000C0C78, &qword_1000A0390);
      return v29 & 1;
    }

    sub_1000160CC(v19, &qword_1000C0C78, &qword_1000A0390);
    sub_1000160CC(v21, &qword_1000C0C78, &qword_1000A0390);
    (*(v27 + 8))(v30, v2);
    goto LABEL_8;
  }

  sub_1000160CC(v19, &qword_1000C0C78, &qword_1000A0390);
  sub_1000160CC(v21, &qword_1000C0C78, &qword_1000A0390);
  if (v28(&v8[v26], 1, v2) != 1)
  {
LABEL_8:
    sub_1000160CC(v8, &qword_1000C0C70, &qword_10009FA00);
    v29 = 0;
    return v29 & 1;
  }

  sub_1000160CC(v8, &qword_1000C0C78, &qword_1000A0390);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_10004F7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = type metadata accessor for AccessoryAndSceneEntity();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = *(*(sub_100003714(&qword_1000C1228, &unk_1000A0880) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = *(*(sub_100003714(&qword_1000C0C78, &qword_1000A0390) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v9 = sub_10009CF14();
  v3[17] = v9;
  v10 = *(v9 - 8);
  v3[18] = v10;
  v11 = *(v10 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_10004F970, 0, 0);
}

uint64_t sub_10004F970()
{
  v93 = v0;
  v1 = *(v0 + 64);
  sub_10009C954();
  v2 = *(v0 + 72);
  if (*(v0 + 240) == 1)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    type metadata accessor for HomeWidget();
    v5 = static HomeWidget.shared.getter();
    *(v0 + 16) = v4;
    *(v0 + 192) = v5;
    *(v0 + 24) = v2;
    *(v0 + 32) = v3;
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    v7 = sub_10005B038();
    *v6 = v0;
    v6[1] = sub_10005029C;

    return HomeWidget.recommendedHome<A>(configuration:)(v0 + 16, &type metadata for RecommendedItemIntent, v7);
  }

  v9 = *(v0 + 112);
  v10 = *(v0 + 72);
  sub_10009C954();
  v11 = type metadata accessor for HomeEntity();
  v12 = 1;
  if (!(*(*(v11 - 8) + 48))(v9, 1, v11))
  {
    (*(*(v0 + 144) + 16))(*(v0 + 128), *(v0 + 112), *(v0 + 136));
    v12 = 0;
  }

  v13 = *(v0 + 136);
  v14 = *(v0 + 144);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v17 = *(v0 + 80);
  sub_1000160CC(*(v0 + 112), &qword_1000C1228, &unk_1000A0880);
  (*(v14 + 56))(v15, v12, 1, v13);
  sub_10009C954();
  v18 = *(v0 + 40);
  sub_10001E0A8(v15, v16, &qword_1000C0C78, &qword_1000A0390);
  if ((*(v14 + 48))(v16, 1, v13) == 1)
  {
    sub_1000160CC(*(v0 + 120), &qword_1000C0C78, &qword_1000A0390);
  }

  else
  {
    (*(*(v0 + 144) + 32))(*(v0 + 176), *(v0 + 120), *(v0 + 136));
    if (v18)
    {
      v19 = v18;
      v20 = *(v0 + 176);
      v21 = swift_task_alloc();
      *(v21 + 16) = v20;

      v18 = sub_100024524(sub_10005B0AC, v21, v19);
    }

    (*(*(v0 + 144) + 8))(*(v0 + 176), *(v0 + 136));
  }

  if (qword_1000C0A90 != -1)
  {
LABEL_50:
    swift_once();
  }

  v22 = sub_10009D924();
  sub_100015B68(v22, qword_1000C8278);
  v23 = sub_10009D904();
  v24 = sub_10009E844();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v92[0] = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_10002AD68(0xD00000000000001CLL, 0x80000001000A4C60, v92);
    *(v25 + 12) = 2080;
    *(v0 + 56) = v18;

    sub_100003714(&qword_1000C1D68, &qword_1000A1DF8);
    v26 = sub_10009E5F4();
    v28 = sub_10002AD68(v26, v27, v92);

    *(v25 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s Looking for configuration accessories %s", v25, 0x16u);
    swift_arrayDestroy();
  }

  v29 = *(v0 + 80);
  sub_10009C954();
  v30 = *(v0 + 48);
  if (v30)
  {
    v88 = *(v30 + 16);
    if (v88)
    {
      v18 = 0;
      v31 = *(v0 + 144);
      v85 = *(v0 + 96);
      v86 = *(v0 + 104);
      v83 = v30 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v84 = *(*(v0 + 88) + 20);
      v90 = (v31 + 16);
      v87 = v31;
      v82 = (v31 + 8);
      v32 = &_swiftEmptyDictionarySingleton;
      v81 = *(v0 + 48);
      while (1)
      {
        if (v18 >= *(v30 + 16))
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v36 = *(v0 + 168);
        v37 = *(v0 + 136);
        sub_10004DC34(v83 + *(v85 + 72) * v18, *(v0 + 104), type metadata accessor for AccessoryAndSceneEntity);
        v38 = *v90;
        (*v90)(v36, v86 + v84, v37);
        if (v32[2] && (v39 = sub_10001B5D0(*(v0 + 168)), (v40 & 1) != 0))
        {
          v41 = *(v32[7] + 8 * v39);
        }

        else
        {
          v41 = _swiftEmptyArrayStorage;
        }

        v38(*(v0 + 160), *(v0 + 104), *(v0 + 136));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_100064F74(0, v41[2] + 1, 1, v41);
        }

        v43 = v41[2];
        v42 = v41[3];
        v89 = v38;
        if (v43 >= v42 >> 1)
        {
          v41 = sub_100064F74(v42 > 1, v43 + 1, 1, v41);
        }

        v44 = *(v0 + 160);
        v45 = *(v0 + 168);
        v46 = *(v0 + 152);
        v47 = *(v0 + 136);
        v41[2] = v43 + 1;
        v48 = *(v87 + 72);
        (*(v87 + 32))(v41 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + v48 * v43, v44, v47);
        v89(v46, v45, v47);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92[0] = v32;
        v50 = sub_10001B5D0(v46);
        v52 = v32[2];
        v53 = (v51 & 1) == 0;
        v54 = __OFADD__(v52, v53);
        v55 = v52 + v53;
        if (v54)
        {
          goto LABEL_48;
        }

        v56 = v51;
        if (v32[3] >= v55)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v68 = v50;
            sub_10008C3F4();
            v50 = v68;
            v32 = v92[0];
          }
        }

        else
        {
          v57 = *(v0 + 152);
          sub_10008B6A0(v55, isUniquelyReferenced_nonNull_native);
          v32 = v92[0];
          v50 = sub_10001B5D0(v57);
          if ((v56 & 1) != (v58 & 1))
          {
            v80 = *(v0 + 136);

            return sub_10009ED74();
          }
        }

        v59 = *(v0 + 168);
        v60 = *(v0 + 152);
        v61 = *(v0 + 136);
        v62 = *(v0 + 104);
        if (v56)
        {
          v33 = v32[7];
          v34 = *(v33 + 8 * v50);
          *(v33 + 8 * v50) = v41;

          v35 = *v82;
          (*v82)(v60, v61);
          v35(v59, v61);
          sub_10004DD8C(v62, type metadata accessor for AccessoryAndSceneEntity);
        }

        else
        {
          v32[(v50 >> 6) + 8] |= 1 << v50;
          v63 = v32[6] + v50 * v48;
          v64 = v50;
          v89(v63, v60, v61);
          *(v32[7] + 8 * v64) = v41;
          v65 = *v82;
          (*v82)(v60, v61);
          v65(v59, v61);
          sub_10004DD8C(v62, type metadata accessor for AccessoryAndSceneEntity);
          v66 = v32[2];
          v54 = __OFADD__(v66, 1);
          v67 = v66 + 1;
          if (v54)
          {
            goto LABEL_49;
          }

          v32[2] = v67;
        }

        ++v18;

        v30 = v81;
        if (v88 == v18)
        {
          goto LABEL_40;
        }
      }
    }

    v32 = &_swiftEmptyDictionarySingleton;
LABEL_40:
  }

  else
  {
    v32 = &_swiftEmptyDictionarySingleton;
  }

  v69 = *(v0 + 128);

  v91 = sub_10001D01C(_swiftEmptyArrayStorage);
  sub_1000160CC(v69, &qword_1000C0C78, &qword_1000A0390);

  v71 = *(v0 + 176);
  v70 = *(v0 + 184);
  v73 = *(v0 + 160);
  v72 = *(v0 + 168);
  v74 = *(v0 + 152);
  v76 = *(v0 + 120);
  v75 = *(v0 + 128);
  v77 = *(v0 + 104);
  v78 = *(v0 + 112);

  v79 = *(v0 + 8);

  return v79(v32, v91);
}

uint64_t sub_10005029C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[24];

    return _swift_task_switch(sub_100050764, 0, 0);
  }

  else
  {
    v8 = v4[24];

    v4[26] = a1;
    v9 = swift_task_alloc();
    v4[27] = v9;
    *v9 = v6;
    v9[1] = sub_10005043C;

    return HMHome.fetchPredictions()();
  }
}

uint64_t sub_10005043C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v6 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  return _swift_task_switch(sub_10005053C, 0, 0);
}

uint64_t sub_10005053C()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[23];
  v5 = v0[17];
  v4 = v0[18];
  sub_100003714(&qword_1000C1D70, &unk_1000A1E00);
  v6 = (sub_100003714(&qword_1000C0EE8, &qword_10009FD10) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10009F8D0;
  v10 = v9 + v8;
  v11 = v6[14];
  v12 = [v2 uniqueIdentifier];
  sub_10009CF04();

  (*(v4 + 32))(v10, v3, v5);
  v13 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = v1;
  }

  *(v10 + v11) = v13;
  v26 = sub_10001CFF8(v9);
  swift_setDeallocating();
  sub_1000160CC(v10, &qword_1000C0EE8, &qword_10009FD10);
  swift_deallocClassInstance();

  v14 = v0[29];
  v16 = v0[22];
  v15 = v0[23];
  v18 = v0[20];
  v17 = v0[21];
  v19 = v0[19];
  v21 = v0[15];
  v20 = v0[16];
  v22 = v0[13];
  v23 = v0[14];

  v24 = v0[1];

  return v24(v26, v14);
}

uint64_t sub_100050764()
{
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = sub_10009D924();
  sub_100015B68(v1, qword_1000C8278);
  v2 = sub_10009D904();
  v3 = sub_10009E824();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AccessoriesAndScenesTimelineProvider.sceneAndAccessoryUUIDs(for:) WidgetDataModel.home returned 0 homes", v4, 2u);
  }

  v5 = sub_10001D01C(_swiftEmptyArrayStorage);
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  v12 = v0[15];
  v11 = v0[16];
  v14 = v0[13];
  v13 = v0[14];

  v15 = v0[1];

  return v15(0, v5);
}

void *sub_100050900(uint64_t a1, void *a2, uint64_t a3)
{
  v62 = a3;
  v5 = sub_10009CF14();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100003714(&qword_1000C1D58, &qword_1000A1DE8);
  v10 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v70 = &v52 - v11;
  v61 = a2;
  v12 = [a2 homes];
  sub_100007330(0, &qword_1000C1260, HMHome_ptr);
  v13 = sub_10009E6A4();

  v72 = _swiftEmptyArrayStorage;
  v73 = _swiftEmptyArrayStorage;
  if (a1)
  {
    v67 = v13;
    v14 = a1 + 64;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 64);
    v18 = (v15 + 63) >> 6;
    v68 = v6 + 2;
    v56 = v9;
    v57 = (v6 + 1);
    v55 = "ily:recommendationsEnabled:)";

    v20 = 0;
    v69 = 0;
    v58 = _swiftEmptyArrayStorage;
    *&v21 = 136315394;
    v54 = v21;
    v59 = xmmword_10009F8D0;
    v63 = v18;
    v64 = v6;
    v65 = a1;
    v60 = v5;
    while (v17)
    {
LABEL_13:
      v23 = __clz(__rbit64(v17)) | (v20 << 6);
      v24 = v6[2];
      v25 = v70;
      v26 = v24(v70, *(a1 + 48) + v6[9] * v23, v5);
      v27 = *(*(a1 + 56) + 8 * v23);
      *(v25 + *(v66 + 48)) = v27;
      __chkstk_darwin(v26);
      *(&v52 - 2) = v25;

      v28 = v69;
      v29 = sub_10000DAC8(sub_10005B08C, (&v52 - 4), v67);
      v69 = v28;
      if (v29)
      {
        v30 = v29;
        sub_100003714(&qword_1000C1D60, &qword_1000A1DF0);
        v31 = (sub_100003714(&qword_1000C0ED8, &qword_10009FD00) - 8);
        v32 = *(*v31 + 72);
        v33 = (*(*v31 + 80) + 32) & ~*(*v31 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = v59;
        v35 = v34 + v33;
        v36 = v31[14];
        v37 = [v30 uniqueIdentifier];
        sub_10009CF04();

        *(v35 + v36) = v62;

        v38 = sub_10001D338(v34);
        swift_setDeallocating();
        sub_1000160CC(v35, &qword_1000C0ED8, &qword_10009FD00);
        swift_deallocClassInstance();
        v39 = v30;
        v40 = sub_10002C44C(v27, v61, v30, v38);

        if (*(v40 + 2))
        {
          sub_1000615E8(v40);
          v41 = v39;
          sub_10009E684();
          if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v51 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_10009E6C4();
          }

          sub_10009E6E4();

          v58 = v72;
        }

        else
        {
        }

        v5 = v60;
      }

      else
      {
        if (qword_1000C0A90 != -1)
        {
          swift_once();
        }

        v42 = sub_10009D924();
        sub_100015B68(v42, qword_1000C8278);
        v43 = v56;
        v24(v56, v70, v5);
        v44 = sub_10009D904();
        v45 = sub_10009E824();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v71[0] = v53;
          *v46 = v54;
          *(v46 + 4) = sub_10002AD68(0xD00000000000003FLL, v55 | 0x8000000000000000, v71);
          *(v46 + 12) = 2080;
          sub_10004DA88(&qword_1000C0C90, &type metadata accessor for UUID);
          v47 = sub_10009ED04();
          v49 = v48;
          (*v57)(v43, v5);
          v50 = sub_10002AD68(v47, v49, v71);

          *(v46 + 14) = v50;
          _os_log_impl(&_mh_execute_header, v44, v45, "%s Could not find home with UUID %s", v46, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*v57)(v43, v5);
        }
      }

      v18 = v63;
      v17 &= v17 - 1;
      result = sub_1000160CC(v70, &qword_1000C1D58, &qword_1000A1DE8);
      v6 = v64;
      a1 = v65;
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {

        return v73;
      }

      v17 = *(v14 + 8 * v22);
      ++v20;
      if (v17)
      {
        v20 = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100050FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100051020, 0, 0);
}

uint64_t sub_100051020()
{
  v13 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = sub_10003B18C(v3);
  v12 = &_swiftEmptySetSingleton;
  v6 = sub_10004D0FC(v5, &v12);
  v0[7] = v6;

  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v1;
  v7[3] = v6;
  v7[4] = v4;
  v7[5] = v2;
  v7[6] = v3;
  v8 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = sub_100003714(&unk_1000C15B0, &unk_1000A1360);
  *v9 = v0;
  v9[1] = sub_100051180;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000052, 0x80000001000A4DA0, sub_10005B29C, v7, v10);
}

uint64_t sub_100051180()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_1000512B4, 0, 0);
}

uint64_t sub_1000512CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for AccessoryAndSceneEntity();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100051390, 0, 0);
}

uint64_t sub_100051390()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = *(v0[7] + 24);
    v6 = v3 + *(type metadata accessor for WidgetTileInfo() + 60) + v5;
    v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v8 = *(v4 + 72);
    while (1)
    {
      v9 = v0[9];
      sub_10004DC34(v7, v9, type metadata accessor for AccessoryAndSceneEntity);
      v10 = *(v6 + 8);
      v11 = *v6;
      sub_10004DD8C(v9, type metadata accessor for AccessoryAndSceneEntity);
      if (v10 <= 1)
      {
        goto LABEL_3;
      }

      if (v10 == 2)
      {
        sub_10009E684();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10009E6C4();
        }

        sub_10009E6E4();
        goto LABEL_4;
      }

      if (v10 == 3)
      {
LABEL_3:
      }

LABEL_4:
      v7 += v8;
      if (!--v2)
      {
        v1 = v0[3];
        break;
      }
    }
  }

  v0[10] = _swiftEmptyArrayStorage;
  v14 = v0[5];
  v13 = v0[6];
  v15 = v0[4];
  v16 = swift_task_alloc();
  v0[11] = v16;
  v16[2] = v13;
  v16[3] = _swiftEmptyArrayStorage;
  v16[4] = v15;
  v16[5] = v14;
  v16[6] = v1;
  v17 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v18 = swift_task_alloc();
  v0[12] = v18;
  v19 = sub_100003714(&unk_1000C15B0, &unk_1000A1360);
  *v18 = v0;
  v18[1] = sub_1000515E8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000004DLL, 0x80000001000A4D10, sub_10005B250, v16, v19);
}

uint64_t sub_1000515E8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return _swift_task_switch(sub_10005171C, 0, 0);
}

uint64_t sub_10005171C()
{
  v1 = v0[9];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100051784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_10009D4F4();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = *(*(sub_100003714(&qword_1000C0C80, &qword_1000A1E10) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v9 = type metadata accessor for WidgetTileInfo();
  v4[16] = v9;
  v10 = *(v9 - 8);
  v4[17] = v10;
  v11 = *(v10 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v12 = sub_10009D584();
  v4[22] = v12;
  v13 = *(v12 - 8);
  v4[23] = v13;
  v14 = *(v13 + 64) + 15;
  v4[24] = swift_task_alloc();
  v15 = type metadata accessor for AccessoryAndSceneEntity();
  v4[25] = v15;
  v16 = *(v15 - 8);
  v4[26] = v16;
  v17 = *(v16 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v18 = sub_10009CF14();
  v4[29] = v18;
  v19 = *(v18 - 8);
  v4[30] = v19;
  v20 = *(v19 + 64) + 15;
  v4[31] = swift_task_alloc();

  return _swift_task_switch(sub_100051A38, 0, 0);
}

uint64_t sub_100051A38()
{
  v58 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 240);
    v4 = *(v0 + 248);
    v5 = *(v0 + 232);
    v6 = *(v0 + 200);
    v7 = *(v0 + 72);
    v8 = *(*(v0 + 208) + 80);
    *(v0 + 368) = v8;
    v9 = v1 + ((v8 + 32) & ~v8);
    (*(v3 + 16))(v4, v9 + *(v6 + 20), v5);
    v10 = [v7 homes];
    sub_100007330(0, &qword_1000C1260, HMHome_ptr);
    v11 = sub_10009E6A4();

    v12 = swift_task_alloc();
    *(v12 + 16) = v4;
    v13 = sub_10000DAC8(sub_10005B490, v12, v11);
    *(v0 + 256) = v13;

    if (v13)
    {
      v14 = *(v0 + 224);
      v16 = *(v0 + 200);
      v15 = *(v0 + 208);
      v17 = *(v0 + 128);
      v19 = *(v0 + 56);
      v18 = *(v0 + 64);

      v20 = sub_10009D214();
      v55 = v21;
      v23 = v22;
      *(v0 + 264) = v20;
      *(v0 + 272) = v24;
      v25 = (v14 + *(v16 + 24) + *(v17 + 60));
      v26 = *(v15 + 72);
      *(v0 + 280) = v26;
      v27 = _swiftEmptyArrayStorage;
      do
      {
        sub_10004DC34(v9, *(v0 + 224), type metadata accessor for AccessoryAndSceneEntity);
        v28 = *(v0 + 224);
        if (*(v25 + 8) == 3)
        {
          v29 = *v25;
          v30 = sub_10009E7F4();
          v32 = v31;
          sub_10004DD8C(v28, type metadata accessor for AccessoryAndSceneEntity);
          if ((v32 & 1) == 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_10006549C(0, *(v27 + 2) + 1, 1, v27);
            }

            v34 = *(v27 + 2);
            v33 = *(v27 + 3);
            if (v34 >= v33 >> 1)
            {
              v27 = sub_10006549C((v33 > 1), v34 + 1, 1, v27);
            }

            *(v27 + 2) = v34 + 1;
            *&v27[8 * v34 + 32] = v30;
          }
        }

        else
        {
          sub_10004DD8C(*(v0 + 224), type metadata accessor for AccessoryAndSceneEntity);
        }

        *(v0 + 360) = v27;
        v9 += v26;
        --v2;
      }

      while (v2);
      *(v0 + 288) = v55;
      *(v0 + 296) = v23;
      *(v0 + 304) = sub_10009D024();
      sub_10009D1E4();
      *(v0 + 312) = sub_10009D1D4();
      sub_10004DA88(&qword_1000C10D0, &type metadata accessor for WidgetActor);
      v36 = sub_10009E714();

      return _swift_task_switch(sub_100051F68, v36, v35);
    }

    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v37 = sub_10009D924();
  sub_100015B68(v37, qword_1000C8278);
  v38 = sub_10009D904();
  v39 = sub_10009E824();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v57 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_10002AD68(0xD00000000000003DLL, 0x80000001000A4CD0, &v57);
    _os_log_impl(&_mh_execute_header, v38, v39, "%s No matching HMHome found in entities", v40, 0xCu);
    sub_100015F44(v41);
  }

  v42 = *(v0 + 248);
  v43 = *(v0 + 216);
  v44 = *(v0 + 224);
  v45 = *(v0 + 192);
  v47 = *(v0 + 160);
  v46 = *(v0 + 168);
  v49 = *(v0 + 144);
  v48 = *(v0 + 152);
  v51 = *(v0 + 112);
  v50 = *(v0 + 120);
  v54 = *(v0 + 104);
  v56 = *(v0 + 96);

  v52 = *(v0 + 8);

  return v52(_swiftEmptyArrayStorage);
}

uint64_t sub_100051F68()
{
  v2 = v0[38];
  v1 = v0[39];

  v0[40] = sub_10009D004();
  v3 = async function pointer to WidgetDataModel.snapshotModerator.getter[1];
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_10005200C;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_10005200C(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_10005212C, 0, 0);
}

uint64_t sub_10005212C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[32];
  v0[2] = v0[33];
  v0[3] = v2;
  v0[4] = v3;
  v0[5] = v1;
  v5 = sub_10009D764();
  v6 = async function pointer to WidgetSnapshotModerator.fetchMatterDevices<A>(home:configuration:isMonitoring:_:)[1];
  v7 = swift_task_alloc();
  v0[43] = v7;
  *v7 = v0;
  v7[1] = sub_10005222C;
  v8 = v0[45];
  v9 = v0[42];
  v10 = v0[24];

  return WidgetSnapshotModerator.fetchMatterDevices<A>(home:configuration:isMonitoring:_:)(v10, v4, v0 + 2, v5 & 1, v8, &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_10005222C()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v13 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = v2[45];
    v5 = v2[42];

    v6 = sub_100052B0C;
  }

  else
  {
    v7 = v2[45];
    v8 = v2[42];
    v11 = v2 + 36;
    v9 = v2[36];
    v10 = v11[1];

    v6 = sub_100052384;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100052384()
{
  v90 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 192);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_10006079C(sub_10005B164, v4, v3);

  v6 = v5[2];
  v7 = _swiftEmptyArrayStorage;
  v78 = v5;
  if (v6)
  {
    v8 = *(v0 + 136);
    v9 = (*(v0 + 368) + 32) & ~*(v0 + 368);
    v89[0] = _swiftEmptyArrayStorage;
    sub_10001BBBC(0, v6, 0);
    v10 = 0;
    v7 = _swiftEmptyArrayStorage;
    v11 = v5 + v9;
    do
    {
      v12 = *(v0 + 216);
      v13 = *(v0 + 200);
      v14 = *(v0 + 168);
      sub_10004DC34(&v11[*(v0 + 280) * v10], v12, type metadata accessor for AccessoryAndSceneEntity);
      sub_10004DC34(v12 + *(v13 + 24), v14, type metadata accessor for WidgetTileInfo);
      sub_10004DD8C(v12, type metadata accessor for AccessoryAndSceneEntity);
      v89[0] = v7;
      v16 = v7[2];
      v15 = v7[3];
      if (v16 >= v15 >> 1)
      {
        sub_10001BBBC(v15 > 1, v16 + 1, 1);
        v7 = v89[0];
      }

      v17 = *(v0 + 168);
      ++v10;
      v7[2] = v16 + 1;
      sub_10004EF84(v17, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, type metadata accessor for WidgetTileInfo);
    }

    while (v6 != v10);
  }

  v18 = v7[2];
  if (v18)
  {
    v19 = *(v0 + 136);
    v20 = v7 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v21 = *(v0 + 88);
    v81 = (v21 + 56);
    v84 = *(v19 + 72);
    v85 = (v21 + 48);
    v79 = (v21 + 8);
    v80 = (v21 + 32);
    do
    {
      v87 = v18;
      v37 = *(v0 + 160);
      v38 = *(v0 + 128);
      sub_10004DC34(v20, v37, type metadata accessor for WidgetTileInfo);
      v39 = v37 + *(v38 + 60);
      if (*(v39 + 8) == 3)
      {
        v40 = *v39;
        v41 = *(v0 + 112);
        sub_10009E7D4();
      }

      else
      {
        (*v81)(*(v0 + 112), 1, 1, *(v0 + 80));
      }

      v42 = *(v0 + 120);
      v43 = *(v0 + 104);
      v44 = *(v0 + 80);
      sub_10005B0FC(*(v0 + 112), v42, &qword_1000C0C80, &qword_1000A1E10);
      sub_10001E0A8(v42, v43, &qword_1000C0C80, &qword_1000A1E10);
      if ((*v85)(v43, 1, v44) == 1)
      {
        sub_1000160CC(*(v0 + 120), &qword_1000C0C80, &qword_1000A1E10);
      }

      else
      {
        v45 = *(v0 + 256);
        v83 = *(v0 + 120);
        v46 = *(v0 + 96);
        v47 = *(v0 + 80);
        (*v80)(v46, *(v0 + 104), v47);
        v48 = sub_10009D4E4();
        v49 = swift_task_alloc();
        *(v49 + 16) = v45;
        *(v49 + 24) = v46;
        sub_100060C24(sub_10005B180, v49, v48);

        sub_1000160CC(v83, &qword_1000C0C80, &qword_1000A1E10);
        (*v79)(v46, v47);
      }

      if (qword_1000C0A90 != -1)
      {
        swift_once();
      }

      v50 = *(v0 + 152);
      v51 = *(v0 + 160);
      v52 = *(v0 + 144);
      v53 = sub_10009D924();
      sub_100015B68(v53, qword_1000C8278);
      sub_10004DC34(v51, v50, type metadata accessor for WidgetTileInfo);
      sub_10004DC34(v51, v52, type metadata accessor for WidgetTileInfo);

      v54 = sub_10009D904();
      v55 = sub_10009E844();

      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 152);
      v58 = *(v0 + 160);
      v59 = *(v0 + 144);
      if (v56)
      {
        v22 = swift_slowAlloc();
        v89[0] = swift_slowAlloc();
        *v22 = 136315650;
        v82 = v58;
        v23 = sub_10001B128();
        v25 = v24;
        sub_10004DD8C(v57, type metadata accessor for WidgetTileInfo);
        v26 = sub_10002AD68(v23, v25, v89);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        sub_10009D204();
        v27 = sub_10009E6B4();
        v29 = v28;

        v30 = sub_10002AD68(v27, v29, v89);

        *(v22 + 14) = v30;
        *(v22 + 22) = 2080;
        v31 = sub_10008CA68();
        if (v32)
        {
          v33 = v31;
        }

        else
        {
          v33 = 7104878;
        }

        if (v32)
        {
          v34 = v32;
        }

        else
        {
          v34 = 0xE300000000000000;
        }

        sub_10004DD8C(v59, type metadata accessor for WidgetTileInfo);
        v35 = sub_10002AD68(v33, v34, v89);

        *(v22 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v54, v55, "Created entity with widgetInfo: %s - endpoints: %s statusString: %s", v22, 0x20u);
        swift_arrayDestroy();

        v36 = v82;
      }

      else
      {

        sub_10004DD8C(v59, type metadata accessor for WidgetTileInfo);
        sub_10004DD8C(v57, type metadata accessor for WidgetTileInfo);
        v36 = v58;
      }

      sub_10004DD8C(v36, type metadata accessor for WidgetTileInfo);
      v20 += v84;
      v18 = v87 - 1;
    }

    while (v87 != 1);
  }

  v60 = *(v0 + 248);
  v61 = *(v0 + 232);
  v62 = *(v0 + 240);
  v64 = *(v0 + 184);
  v63 = *(v0 + 192);
  v65 = *(v0 + 176);

  (*(v64 + 8))(v63, v65);
  (*(v62 + 8))(v60, v61);
  v66 = *(v0 + 248);
  v67 = *(v0 + 216);
  v68 = *(v0 + 224);
  v69 = *(v0 + 192);
  v71 = *(v0 + 160);
  v70 = *(v0 + 168);
  v73 = *(v0 + 144);
  v72 = *(v0 + 152);
  v75 = *(v0 + 112);
  v74 = *(v0 + 120);
  v86 = *(v0 + 104);
  v88 = *(v0 + 96);

  v76 = *(v0 + 8);

  return v76(v78);
}

uint64_t sub_100052B0C()
{
  v29 = v0;
  v1 = v0[36];
  v2 = v0[37];

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v3 = v0[44];
  v4 = sub_10009D924();
  sub_100015B68(v4, qword_1000C8278);
  swift_errorRetain();
  v5 = sub_10009D904();
  v6 = sub_10009E824();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[44];
  v9 = v0[32];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_10002AD68(0xD00000000000003DLL, 0x80000001000A4CD0, &v28);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Error subscribing to Matter monitor: %@", v10, 0x16u);
    sub_1000160CC(v11, &qword_1000C0E28, &qword_1000A1DC0);

    sub_100015F44(v12);
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
  v14 = v0[31];
  v15 = v0[27];
  v16 = v0[28];
  v17 = v0[24];
  v19 = v0[20];
  v18 = v0[21];
  v21 = v0[18];
  v20 = v0[19];
  v23 = v0[14];
  v22 = v0[15];
  v26 = v0[13];
  v27 = v0[12];

  v24 = v0[1];

  return v24(_swiftEmptyArrayStorage);
}

uint64_t sub_100052DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = *(*(sub_100003714(&qword_1000C0C80, &qword_1000A1E10) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for AccessoryAndSceneEntity();
  v5[15] = v7;
  v8 = *(v7 - 8);
  v5[16] = v8;
  v9 = *(v8 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_100052F28, 0, 0);
}

uint64_t sub_100052F28()
{
  v82 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_10009D924();
  sub_100015B68(v2, qword_1000C8278);

  v3 = sub_10009D904();
  v4 = sub_10009E844();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10002AD68(0xD000000000000041, 0x80000001000A4C80, &v78);
    *(v6 + 12) = 2080;
    v7 = *(v5 + 16);
    if (v7)
    {
      v69 = v4;
      v70 = v6;
      v72 = v3;
      v8 = v0[16];
      v75 = v0[15];
      v9 = v0[6];
      v79 = _swiftEmptyArrayStorage;
      sub_10001BC44(0, v7, 0);
      v10 = v79;
      v11 = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v12 = *(v8 + 72);
      do
      {
        v13 = v0[23];
        sub_10004DC34(v11, v13, type metadata accessor for AccessoryAndSceneEntity);
        sub_10009CF14();
        sub_10004DA88(&qword_1000C0C90, &type metadata accessor for UUID);
        v80 = sub_10009ED04();
        v81 = v14;
        v84._countAndFlagsBits = 58;
        v84._object = 0xE100000000000000;
        sub_10009E634(v84);
        v15 = v13 + *(v75 + 24);
        v85 = *(v15 + *(type metadata accessor for WidgetTileInfo() + 24));
        sub_10009E634(v85);
        v16 = v80;
        v17 = v81;
        sub_10004DD8C(v13, type metadata accessor for AccessoryAndSceneEntity);
        v79 = v10;
        v19 = v10[2];
        v18 = v10[3];
        if (v19 >= v18 >> 1)
        {
          sub_10001BC44((v18 > 1), v19 + 1, 1);
          v10 = v79;
        }

        v10[2] = v19 + 1;
        v20 = &v10[2 * v19];
        v20[4] = v16;
        v20[5] = v17;
        v11 += v12;
        --v7;
      }

      while (v7);
      v6 = v70;
      v3 = v72;
      v4 = v69;
    }

    v21 = sub_10009E6B4();
    v23 = v22;

    v24 = sub_10002AD68(v21, v23, &v78);

    *(v6 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Monitoring characteristics for entities: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v25 = v0[6];
  v26 = *(v25 + 16);
  v0[24] = v26;
  if (v26)
  {
    v28 = v0[15];
    v27 = v0[16];
    v29 = *(v27 + 72);
    v73 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = v25 + v73;
    v31 = _swiftEmptyArrayStorage;
    v32 = v26;
    v76 = v28;
    do
    {
      v33 = v0[22];
      sub_10004DC34(v30, v33, type metadata accessor for AccessoryAndSceneEntity);
      v34 = v33 + *(v28 + 24);
      v35 = type metadata accessor for WidgetTileInfo();
      v36 = v0[22];
      if (*(v34 + *(v35 + 60) + 8) == 2)
      {
        sub_10004EF84(v36, v0[21], type metadata accessor for AccessoryAndSceneEntity);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10001BC84(0, v31[2] + 1, 1);
          v31 = v80;
        }

        v39 = v31[2];
        v38 = v31[3];
        if (v39 >= v38 >> 1)
        {
          sub_10001BC84(v38 > 1, v39 + 1, 1);
          v31 = v80;
        }

        v40 = v0[21];
        v31[2] = v39 + 1;
        sub_10004EF84(v40, v31 + v73 + v39 * v29, type metadata accessor for AccessoryAndSceneEntity);
        v28 = v76;
      }

      else
      {
        sub_10004DD8C(v36, type metadata accessor for AccessoryAndSceneEntity);
      }

      v30 += v29;
      --v32;
    }

    while (v32);
    v41 = v0[16];
    v77 = v0[15];
    v42 = *(v41 + 72);
    v71 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = v0[6] + v71;
    v44 = _swiftEmptyArrayStorage;
    v74 = v42;
    while (1)
    {
      v45 = v0[20];
      sub_10004DC34(v43, v45, type metadata accessor for AccessoryAndSceneEntity);
      v46 = v45 + *(v77 + 24) + *(v35 + 60);
      v47 = *(v46 + 8);
      if (v47 > 2)
      {
        if (v47 == 3)
        {
          v48 = v35;
          v49 = v0[13];
          v50 = *v46;
          sub_10009E7D4();
          goto LABEL_30;
        }
      }

      else if (v47 >= 2)
      {
        goto LABEL_22;
      }

      v48 = v35;
      v51 = v0[13];
      v52 = sub_10009D4F4();
      (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
LABEL_30:
      v53 = v0[14];
      sub_10005B0FC(v0[13], v53, &qword_1000C0C80, &qword_1000A1E10);
      v54 = sub_10009D4F4();
      v55 = (*(*(v54 - 8) + 48))(v53, 1, v54);
      sub_1000160CC(v53, &qword_1000C0C80, &qword_1000A1E10);
      v42 = v74;
      v35 = v48;
      if (v55 == 1)
      {
        sub_10004EF84(v0[20], v0[19], type metadata accessor for AccessoryAndSceneEntity);
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v80 = v44;
        if ((v56 & 1) == 0)
        {
          sub_10001BC84(0, v44[2] + 1, 1);
          v44 = v80;
        }

        v58 = v44[2];
        v57 = v44[3];
        if (v58 >= v57 >> 1)
        {
          sub_10001BC84(v57 > 1, v58 + 1, 1);
          v44 = v80;
        }

        v59 = v0[19];
        v44[2] = v58 + 1;
        sub_10004EF84(v59, v44 + v71 + v58 * v74, type metadata accessor for AccessoryAndSceneEntity);
        goto LABEL_23;
      }

LABEL_22:
      sub_10004DD8C(v0[20], type metadata accessor for AccessoryAndSceneEntity);
LABEL_23:
      v43 += v42;
      if (!--v26)
      {
        goto LABEL_37;
      }
    }
  }

  v31 = _swiftEmptyArrayStorage;
  v44 = _swiftEmptyArrayStorage;
LABEL_37:
  v0[25] = v31;
  v0[26] = v44;
  v60 = v0[8];
  v61 = v0[9];
  v62 = v0[7];
  v63 = sub_10003196C();
  v65 = v64;
  v0[27] = v64;
  v66 = swift_task_alloc();
  v0[28] = v66;
  *v66 = v0;
  v66[1] = sub_1000536B8;
  v67 = v0[10];

  return sub_100050FFC(v44, v63, v65, v67);
}

uint64_t sub_1000536B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[2] = v1;
  v3[3] = a1;
  v4 = v2[28];
  v5 = v2[27];
  v6 = v2[26];
  v8 = *v1;

  return _swift_task_switch(sub_1000537F0, 0, 0);
}

uint64_t sub_1000537F0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = sub_10003196C();
  v6 = v5;
  v0[29] = v5;
  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_1000538C0;
  v8 = v0[25];
  v9 = v0[10];

  return sub_1000512CC(v8, v4, v6, v9);
}

uint64_t sub_1000538C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[4] = v1;
  v3[5] = a1;
  v4 = v2[30];
  v5 = v2[29];
  v6 = v2[25];
  v8 = *v1;

  return _swift_task_switch(sub_1000539F8, 0, 0);
}

uint64_t sub_1000539F8()
{
  if (v0[24])
  {
    v1 = 0;
    v3 = v0[15];
    v2 = v0[16];
    v4 = *(v2 + 72);
    v31 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v5 = v0[6] + v31;
    v32 = v3;
    do
    {
      v6 = v0[18];
      sub_10004DC34(v5, v6, type metadata accessor for AccessoryAndSceneEntity);
      v7 = v6 + *(v3 + 24);
      v8 = v7 + *(type metadata accessor for WidgetTileInfo() + 60);
      v9 = v0[11];
      if (*(v8 + 8) == 3)
      {
        v10 = *v8;
        v11 = v0[11];
        sub_10009E7D4();
      }

      else
      {
        v12 = sub_10009D4F4();
        (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      }

      v13 = v0[12];
      sub_10005B0FC(v0[11], v13, &qword_1000C0C80, &qword_1000A1E10);
      v14 = sub_10009D4F4();
      v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
      sub_1000160CC(v13, &qword_1000C0C80, &qword_1000A1E10);
      v16 = v0[18];
      if (v15 == 1)
      {
        sub_10004DD8C(v16, type metadata accessor for AccessoryAndSceneEntity);
      }

      else
      {
        sub_10004EF84(v16, v0[17], type metadata accessor for AccessoryAndSceneEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001BC84(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_10001BC84(v17 > 1, v18 + 1, 1);
        }

        v19 = v0[17];
        _swiftEmptyArrayStorage[2] = v18 + 1;
        sub_10004EF84(v19, _swiftEmptyArrayStorage + v31 + v18 * v4, type metadata accessor for AccessoryAndSceneEntity);
        v3 = v32;
      }

      ++v1;
      v5 += v4;
    }

    while (v1 != v0[24]);
  }

  v20 = v0[5];
  v21 = v0[3];
  v22 = v0[8];
  v23 = v0[9];
  v24 = v0[7];
  v0[31] = _swiftEmptyArrayStorage;
  v0[32] = v20;
  v0[33] = v21;
  v25 = sub_10003196C();
  v27 = v26;
  v0[34] = v26;
  v28 = swift_task_alloc();
  v0[35] = v28;
  *v28 = v0;
  v28[1] = sub_100053D28;
  v29 = v0[10];

  return sub_100051784(_swiftEmptyArrayStorage, v25, v27, v29);
}

uint64_t sub_100053D28(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 248);
  v6 = *v1;
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_100053E64, 0, 0);
}

uint64_t sub_100053E64()
{
  v1 = v0[36];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  v11 = v0[14];
  v12 = v0[13];
  v13 = v0[12];
  v14 = v0[11];
  v15 = v0[33];
  sub_1000615E8(v0[32]);
  sub_1000615E8(v1);

  v9 = v0[1];

  return v9(v15);
}

void *sub_100053F80(void *a1, uint64_t a2, int a3)
{
  LODWORD(v55) = a3;
  v56 = a1;
  v3 = type metadata accessor for AccessoryAndSceneEntity();
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  __chkstk_darwin(v3 - 8);
  v57 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10009CF14();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v6);
  v53 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10009E3D4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v10[13];
  v14(v13, enum case for WidgetFamily.systemSmall(_:), v9);
  sub_10004DA88(&qword_1000C16C0, &type metadata accessor for WidgetFamily);
  sub_10009E654();
  sub_10009E654();
  v15 = v10[1];
  v15(v13, v9);
  if (v60 == v59)
  {
    v16 = v56;
    if (v55)
    {
      v17 = 4;
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v14(v13, enum case for WidgetFamily.systemMedium(_:), v9);
  sub_10009E654();
  sub_10009E654();
  v15(v13, v9);
  if (v60 != v59)
  {
    v16 = v56;
    goto LABEL_11;
  }

  v16 = v56;
  if ((v55 & 1) == 0)
  {
LABEL_11:

    goto LABEL_20;
  }

  v17 = 8;
LABEL_7:
  v18 = sub_10003D24C(v17, v16);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if ((v23 & 1) == 0)
  {

LABEL_9:
    sub_10004A70C(v18, v20, v22, v24);
    v26 = v25;
LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  sub_10009ED54();
  swift_unknownObjectRetain_n();

  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = _swiftEmptyArrayStorage;
  }

  v28 = v27[2];

  if (__OFSUB__(v24 >> 1, v22))
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v28 != (v24 >> 1) - v22)
  {
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v26 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v26)
  {
    v26 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

LABEL_19:
  v60 = v26;

  sub_10004A8AC(&v60);

  v16 = v60;
LABEL_20:
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v29 = sub_10009D924();
  sub_100015B68(v29, qword_1000C8278);

  v30 = sub_10009D904();
  v31 = sub_10009E844();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v60 = v55;
    *v32 = 136315394;
    *(v32 + 4) = sub_10002AD68(0xD00000000000003CLL, 0x80000001000A4BE0, &v60);
    *(v32 + 12) = 2080;
    v33 = v16[2];
    if (v33)
    {
      v50 = v31;
      v51 = v32;
      v52 = v30;
      v59 = _swiftEmptyArrayStorage;
      sub_10001BC00(0, v33, 0);
      v34 = v59;
      v35 = v53;
      v36 = *(v54 + 80);
      v56 = v16;
      v37 = v16 + ((v36 + 32) & ~v36);
      v38 = *(v54 + 72);
      v39 = (v58 + 16);
      do
      {
        v40 = v57;
        sub_10004DC34(v37, v57, type metadata accessor for AccessoryAndSceneEntity);
        (*v39)(v35, v40, v6);
        sub_10004DD8C(v40, type metadata accessor for AccessoryAndSceneEntity);
        v59 = v34;
        v41 = v6;
        v43 = v34[2];
        v42 = v34[3];
        if (v43 >= v42 >> 1)
        {
          sub_10001BC00(v42 > 1, v43 + 1, 1);
          v34 = v59;
        }

        v34[2] = v43 + 1;
        (*(v58 + 32))(v34 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v43, v35, v41);
        v37 += v38;
        --v33;
        v6 = v41;
      }

      while (v33);
      v16 = v56;
      v32 = v51;
      v30 = v52;
      LOBYTE(v31) = v50;
    }

    v44 = sub_10009E6B4();
    v46 = v45;

    v47 = sub_10002AD68(v44, v46, &v60);

    *(v32 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s Sorted entities to %s", v32, 0x16u);
    swift_arrayDestroy();
  }

  return v16;
}

uint64_t sub_100054658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *(*(sub_100003714(&qword_1000C1258, &unk_1000A08D0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v6 = *(*(sub_100003714(&qword_1000C1228, &unk_1000A0880) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v7 = sub_10009E3D4();
  v4[17] = v7;
  v8 = *(v7 - 8);
  v4[18] = v8;
  v9 = *(v8 + 64) + 15;
  v4[19] = swift_task_alloc();
  v10 = sub_10009CF14();
  v4[20] = v10;
  v11 = *(v10 - 8);
  v4[21] = v11;
  v12 = *(v11 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v13 = type metadata accessor for AccessoryAndSceneEntity();
  v4[25] = v13;
  v14 = *(v13 - 8);
  v4[26] = v14;
  v15 = *(v14 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100054880, 0, 0);
}

uint64_t sub_100054880()
{
  v1 = *(v0 + 104);
  *(v0 + 248) = type metadata accessor for HomeWidget();
  v5 = *(v0 + 88);
  *(v0 + 256) = static HomeWidget.shared.getter();
  *(v0 + 16) = v5;
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10005B038();
  *(v0 + 272) = v3;
  *v2 = v0;
  v2[1] = sub_10005496C;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)(v0 + 16, &type metadata for RecommendedItemIntent, v3);
}

uint64_t sub_10005496C(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_100054A8C, 0, 0);
}

uint64_t sub_100054A8C()
{
  v84 = v0;
  v1 = *(v0 + 280);
  if (!v1)
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v16 = sub_10009D924();
    sub_100015B68(v16, qword_1000C8278);
    v17 = sub_10009D904();
    v18 = sub_10009E824();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v83[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, v83);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s unable to get shared HMHomeManager instance", v19, 0xCu);
      sub_100015F44(v20);
    }

    v22 = *(v0 + 232);
    v21 = *(v0 + 240);
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v26 = *(v0 + 184);
    v25 = *(v0 + 192);
    v27 = *(v0 + 176);
    v28 = *(v0 + 152);
    v30 = *(v0 + 120);
    v29 = *(v0 + 128);

    v31 = *(v0 + 8);

    return v31(_swiftEmptyArrayStorage);
  }

  v2 = *(v0 + 104);
  sub_10009C954();
  v3 = *(v0 + 80);
  if (v3)
  {
    v79 = *(v0 + 80);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = *(v0 + 208);
      v6 = *(v0 + 168);
      v7 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v81 = *(v5 + 72);
      v8 = _swiftEmptyArrayStorage;
      do
      {
        v9 = *(v0 + 240);
        v10 = *(v0 + 192);
        v11 = *(v0 + 160);
        sub_10004DC34(v7, v9, type metadata accessor for AccessoryAndSceneEntity);
        (*(v6 + 16))(v10, v9, v11);
        sub_10004DD8C(v9, type metadata accessor for AccessoryAndSceneEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100064F74(0, v8[2] + 1, 1, v8);
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          v8 = sub_100064F74(v12 > 1, v13 + 1, 1, v8);
        }

        v14 = *(v0 + 192);
        v15 = *(v0 + 160);
        v8[2] = v13 + 1;
        (*(v6 + 32))(v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v14, v15);
        v7 += v81;
        --v4;
      }

      while (v4);
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 288) = v8;
  v33 = *(v0 + 152);
  v34 = *(v0 + 112);
  sub_10009E424();
  v35 = [v1 homes];
  *(v0 + 296) = sub_100007330(0, &qword_1000C1260, HMHome_ptr);
  v36 = sub_10009E6A4();

  if (!(v36 >> 62))
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_23;
    }

LABEL_46:

    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v66 = sub_10009D924();
    sub_100015B68(v66, qword_1000C8278);
    v67 = v1;
    v68 = sub_10009D904();
    v69 = sub_10009E824();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = *(v0 + 280);
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v83[0] = v73;
      *v71 = 136315394;
      *(v71 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, v83);
      *(v71 + 12) = 2112;
      *(v71 + 14) = v67;
      *v72 = v70;
      v74 = v67;
      _os_log_impl(&_mh_execute_header, v68, v69, "%s (%@) does not have any homes", v71, 0x16u);
      sub_1000160CC(v72, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v73);
    }

    v75 = swift_task_alloc();
    *(v0 + 560) = v75;
    *v75 = v0;
    v75[1] = sub_10005956C;
    v76 = *(v0 + 96);
    v77 = *(v0 + 104);
    v78 = *(v0 + 88);

    return sub_100052DBC(_swiftEmptyArrayStorage, v78, v76, v77, v67);
  }

LABEL_45:
  v37 = sub_10009EBA4();
  if (!v37)
  {
    goto LABEL_46;
  }

LABEL_23:
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 96);
  v38 = *(v0 + 104);
  v40 = *(v0 + 88);
  v41 = sub_10009D924();
  *(v0 + 304) = sub_100015B68(v41, qword_1000C8278);

  v42 = sub_10009D904();
  v43 = sub_10009E844();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = *(v0 + 128);
    v45 = *(v0 + 96);
    v46 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v46 = 136315394;
    *(v46 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, v83);
    *(v46 + 12) = 2080;
    sub_10009C954();
    v47 = type metadata accessor for HomeEntity();
    if ((*(*(v47 - 8) + 48))(v44, 1, v47))
    {
      sub_1000160CC(*(v0 + 128), &qword_1000C1228, &unk_1000A0880);
      v48 = 0;
      v49 = 0;
    }

    else
    {
      v50 = *(v0 + 184);
      v51 = *(v0 + 168);
      v80 = *(v0 + 160);
      v52 = *(v0 + 128);
      (*(v51 + 16))(v50, v52);
      sub_1000160CC(v52, &qword_1000C1228, &unk_1000A0880);
      v48 = sub_10009CEE4();
      v49 = v53;
      (*(v51 + 8))(v50, v80);
    }

    *(v0 + 64) = v48;
    *(v0 + 72) = v49;
    sub_100003714(&qword_1000C0DF0, &qword_1000A1DE0);
    v54 = sub_10009E5F4();
    v56 = sub_10002AD68(v54, v55, v83);

    *(v46 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v42, v43, "%s widget configuration has home %s", v46, 0x16u);
    swift_arrayDestroy();
  }

  v57 = 0;
  v1 = 0;
  while (1)
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      v58 = sub_10009EAE4();
    }

    else
    {
      if (v57 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v58 = *(v36 + 8 * v57 + 32);
    }

    v59 = v58;
    v60 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v61 = *(v0 + 96);
    v83[0] = v58;
    if (sub_10004F244(v83))
    {
      break;
    }

    ++v57;
    if (v60 == v37)
    {

      v59 = 0;
      goto LABEL_40;
    }
  }

LABEL_40:
  *(v0 + 312) = v59;
  v62 = *(v0 + 248);
  v63 = *(v0 + 104);
  v82 = *(v0 + 88);
  *(v0 + 320) = static HomeWidget.shared.getter();
  *(v0 + 40) = v82;
  *(v0 + 56) = v63;
  v64 = swift_task_alloc();
  *(v0 + 328) = v64;
  *v64 = v0;
  v64[1] = sub_10005546C;
  v65 = *(v0 + 272);

  return HomeWidget.recommendedHome<A>(configuration:)(v0 + 40, &type metadata for RecommendedItemIntent, v65);
}

uint64_t sub_10005546C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 320);

    v8 = sub_100055900;
  }

  else
  {
    v9 = *(v4 + 320);

    *(v4 + 336) = a1;
    v8 = sub_1000555AC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000555AC()
{
  v31 = v0;
  v1 = v0[39];
  v2 = v0[42];
  if (v1)
  {
    v3 = v0[39];
LABEL_5:
    v0[44] = v2;
    v0[45] = v3;
    v0[43] = v1;
    v4 = v1;
    v5 = swift_task_alloc();
    v0[46] = v5;
    *v5 = v0;
    v5[1] = sub_100055C38;
    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[11];

    return sub_10004F7A4(v8, v6, v7);
  }

  if (v2)
  {
    v3 = v2;
    v1 = 0;
    goto LABEL_5;
  }

  v10 = v0[38];
  v12 = v0[35];
  v11 = v0[36];

  v13 = v12;
  v14 = sub_10009D904();
  v15 = sub_10009E824();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[37];
    v17 = v0[35];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v30);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v17;
    *v19 = v17;
    *(v18 + 22) = 2080;
    v20 = [v17 homes];
    sub_10009E6A4();

    v21 = sub_10009E6B4();
    v23 = v22;

    v24 = sub_10002AD68(v21, v23, &v30);

    *(v18 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s (%@) does not have either a specified home or current among (%s", v18, 0x20u);
    sub_1000160CC(v19, &qword_1000C0E28, &qword_1000A1DC0);

    swift_arrayDestroy();
  }

  v25 = v0[35];
  v26 = swift_task_alloc();
  v0[68] = v26;
  *v26 = v0;
  v26[1] = sub_1000591F8;
  v27 = v0[12];
  v28 = v0[13];
  v29 = v0[11];

  return sub_100052DBC(_swiftEmptyArrayStorage, v29, v27, v28, v25);
}

uint64_t sub_100055900()
{
  v29 = v0;
  v1 = v0[39];
  if (v1)
  {
    v0[44] = 0;
    v0[45] = v1;
    v0[43] = v1;
    v2 = v1;
    v3 = swift_task_alloc();
    v0[46] = v3;
    *v3 = v0;
    v3[1] = sub_100055C38;
    v4 = v0[12];
    v5 = v0[13];
    v6 = v0[11];

    return sub_10004F7A4(v6, v4, v5);
  }

  else
  {
    v8 = v0[38];
    v10 = v0[35];
    v9 = v0[36];

    v11 = v10;
    v12 = sub_10009D904();
    v13 = sub_10009E824();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[37];
      v15 = v0[35];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v16 = 136315650;
      *(v16 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v28);
      *(v16 + 12) = 2112;
      *(v16 + 14) = v15;
      *v17 = v15;
      *(v16 + 22) = 2080;
      v18 = [v15 homes];
      sub_10009E6A4();

      v19 = sub_10009E6B4();
      v21 = v20;

      v22 = sub_10002AD68(v19, v21, &v28);

      *(v16 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s (%@) does not have either a specified home or current among (%s", v16, 0x20u);
      sub_1000160CC(v17, &qword_1000C0E28, &qword_1000A1DC0);

      swift_arrayDestroy();
    }

    v23 = v0[35];
    v24 = swift_task_alloc();
    v0[68] = v24;
    *v24 = v0;
    v24[1] = sub_1000591F8;
    v25 = v0[12];
    v26 = v0[13];
    v27 = v0[11];

    return sub_100052DBC(_swiftEmptyArrayStorage, v27, v25, v26, v23);
  }
}

uint64_t sub_100055C38(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v6 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = a2;

  return _swift_task_switch(sub_100055D38, 0, 0);
}

uint64_t sub_100055D38()
{
  v126 = v0;
  v1 = v0;
  v2 = sub_100050900(v0[47], v0[35], v0[48]);
  v4 = v3;

  v123 = v2[2];
  v124 = v2;
  if (!v123)
  {
    v5 = v1[45];

    sub_100003714(&qword_1000C0E20, &unk_1000A0940);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10009FA10;
    *(v4 + 32) = v5;
    v6 = v5;
  }

  if (v4 >> 62)
  {
LABEL_37:
    v7 = sub_10009EBA4();
    if (v7)
    {
LABEL_5:
      v8 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = sub_10009EAE4();
        }

        else
        {
          if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v9 = *(v4 + 8 * v8 + 32);
        }

        v10 = v9;
        v1[49] = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if ([v9 hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion])
        {
          break;
        }

        v12 = v1;
        v13.super.isa = [v10 currentUser];
        isa = v13.super.isa;
        v15 = sub_10009E8A4(v13);

        if (v15)
        {
          v32 = v12[38];
          v33 = v12[36];

          v34 = v10;
          v35 = sub_10009D904();
          v36 = sub_10009E824();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            *v37 = 136315650;
            *(v37 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v125);
            *(v37 + 12) = 2112;
            *(v37 + 14) = v34;
            *v38 = v34;
            *(v37 + 22) = 2080;
            v39 = [v34 currentUser];
            v40 = [v39 hf_prettyDescription];

            v41 = sub_10009E5C4();
            v43 = v42;

            v44 = sub_10002AD68(v41, v43, &v125);

            *(v37 + 24) = v44;
            _os_log_impl(&_mh_execute_header, v35, v36, "%s Current time is outside of the allowed time frame to access home %@. currentUser = %s", v37, 0x20u);
            sub_1000160CC(v38, &qword_1000C0E28, &qword_1000A1DC0);

            swift_arrayDestroy();
          }

          v29 = v12[35];
          v45 = swift_task_alloc();
          v12[52] = v45;
          *v45 = v12;
          v45[1] = sub_100057224;
          v46 = v12[12];
          v47 = v12[13];
          v48 = v12[11];
          goto LABEL_51;
        }

        v1 = v12;
        if ([v10 hf_isCurrentRestrictedGuestAwayFromHome])
        {
          v49 = v12[38];
          v50 = v12[36];

          v51 = v10;
          v52 = sub_10009D904();
          v53 = sub_10009E824();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            *v54 = 136315906;
            *(v54 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v125);
            *(v54 + 12) = 2112;
            *(v54 + 14) = v51;
            *v55 = v51;
            *(v54 + 22) = 2080;
            v56 = v51;
            v57 = [v56 currentUser];
            v58 = [v57 hf_prettyDescription];

            v59 = sub_10009E5C4();
            v61 = v60;

            v62 = sub_10002AD68(v59, v61, &v125);
            v1 = v12;

            *(v54 + 24) = v62;
            *(v54 + 32) = 2080;
            [v56 homeLocationStatus];
            v63 = HMStringFromHomeLocation();
            v64 = sub_10009E5C4();
            v66 = v65;

            v67 = sub_10002AD68(v64, v66, &v125);

            *(v54 + 34) = v67;
            _os_log_impl(&_mh_execute_header, v52, v53, "%s Displaying No Access because current user is an RG and away from home %@. currentUser = %s. device location status %s", v54, 0x2Au);
            sub_1000160CC(v55, &qword_1000C0E28, &qword_1000A1DC0);

            swift_arrayDestroy();
          }

          v29 = v1[35];
          v30 = swift_task_alloc();
          v1[54] = v30;
          *v30 = v1;
          v31 = sub_1000575E4;
          goto LABEL_50;
        }

        if (([v10 hf_hasEnabledResident] & 1) == 0)
        {
          sub_100007330(0, &qword_1000C1D48, NSUserDefaults_ptr);
          if ((sub_10009E854() & 1) == 0)
          {
            v68 = v12[38];
            v69 = v12[36];

            v70 = v10;
            v71 = sub_10009D904();
            v72 = sub_10009E824();

            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v125 = swift_slowAlloc();
              *v73 = 136315650;
              *(v73 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v125);
              *(v73 + 12) = 2112;
              *(v73 + 14) = v70;
              *v74 = v70;
              *(v73 + 22) = 2080;
              v75 = [v70 residentDevices];
              sub_100007330(0, &qword_1000C1D50, HMResidentDevice_ptr);
              sub_10009E6A4();

              v76 = sub_10009E6B4();
              v78 = v77;

              v79 = sub_10002AD68(v76, v78, &v125);

              *(v73 + 24) = v79;
              _os_log_impl(&_mh_execute_header, v71, v72, "%s No enabled resident in %@: %s", v73, 0x20u);
              sub_1000160CC(v74, &qword_1000C0E28, &qword_1000A1DC0);

              swift_arrayDestroy();
            }

            v29 = v12[35];
            v30 = swift_task_alloc();
            v12[56] = v30;
            *v30 = v12;
            v31 = sub_1000579A4;
            goto LABEL_50;
          }
        }

        if (([v12[35] hf_canAccessHomeRemotely:{v10, v123}] & 1) == 0)
        {
          sub_100007330(0, &qword_1000C1D48, NSUserDefaults_ptr);
          if ((sub_10009E854() & 1) == 0)
          {
            v80 = v12[38];
            v81 = v12[36];

            v82 = v10;
            v83 = sub_10009D904();
            v84 = sub_10009E824();

            if (os_log_type_enabled(v83, v84))
            {
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              v125 = v88;
              *v86 = 136315394;
              *(v86 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v125);
              *(v86 + 12) = 2112;
              *(v86 + 14) = v82;
              *v87 = v82;
              v89 = v82;
              _os_log_impl(&_mh_execute_header, v83, v84, "%s No remote access to (%@)", v86, 0x16u);
              sub_1000160CC(v87, &qword_1000C0E28, &qword_1000A1DC0);

              sub_100015F44(v88);
            }

            v29 = v12[35];
            v30 = swift_task_alloc();
            v12[58] = v30;
            *v30 = v12;
            v31 = sub_100057D64;
            goto LABEL_50;
          }
        }

        ++v8;
        if (v11 == v7)
        {
          goto LABEL_38;
        }
      }

      v16 = v1[38];
      v17 = v1[36];

      v18 = v10;
      v19 = sub_10009D904();
      v20 = sub_10009E824();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *v21 = 136315650;
        *(v21 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v125);
        *(v21 + 12) = 2112;
        *(v21 + 14) = v18;
        *v22 = v18;
        *(v21 + 22) = 2080;
        v23 = [v18 currentUser];
        v24 = [v23 hf_prettyDescription];

        v25 = sub_10009E5C4();
        v27 = v26;

        v28 = sub_10002AD68(v25, v27, &v125);

        *(v21 + 24) = v28;
        _os_log_impl(&_mh_execute_header, v19, v20, "%s Upgrade to HH2 is required for %@. currentUser = %s", v21, 0x20u);
        sub_1000160CC(v22, &qword_1000C0E28, &qword_1000A1DC0);

        swift_arrayDestroy();
      }

      v29 = v1[35];
      v30 = swift_task_alloc();
      v1[50] = v30;
      *v30 = v1;
      v31 = sub_100056E64;
      goto LABEL_50;
    }
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }
  }

LABEL_38:

  if (v123)
  {
LABEL_39:
    v90 = v1[35];
    v91 = v1[19];
    v92 = v1[11];
    sub_10009C954();
    v93 = sub_100053F80(v124, v91, *(v1 + 576));
    v1[64] = v93;

    v94 = swift_task_alloc();
    v1[65] = v94;
    *v94 = v1;
    v94[1] = sub_100058884;
    v46 = v1[12];
    v47 = v1[13];
    v48 = v1[11];
    v95 = v93;
    v96 = v90;
    goto LABEL_52;
  }

  v97 = [v1[45] accessories];
  sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
  v98 = sub_10009E6A4();

  if (v98 >> 62)
  {
    v99 = sub_10009EBA4();
  }

  else
  {
    v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v100 = v1[45];
  if (v99)
  {
    if (sub_10000DE40(v1[45]))
    {
      goto LABEL_39;
    }

    v101 = v1[45];
    v102 = v1[38];
    v103 = v1[36];

    v104 = v101;
    v105 = sub_10009D904();
    v106 = sub_10009E824();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = v1[45];
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v125 = v110;
      *v108 = 136315394;
      *(v108 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v125);
      *(v108 + 12) = 2112;
      *(v108 + 14) = v107;
      *v109 = v107;
      v111 = v107;
      _os_log_impl(&_mh_execute_header, v105, v106, "%s No supported accessories in %@", v108, 0x16u);
      sub_1000160CC(v109, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v110);
    }

    v29 = v1[35];
    v30 = swift_task_alloc();
    v1[62] = v30;
    *v30 = v1;
    v31 = sub_1000584D4;
  }

  else
  {
    v112 = v1[38];
    v113 = v1[36];

    v114 = v100;
    v115 = sub_10009D904();
    v116 = sub_10009E824();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = v1[45];
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v125 = v120;
      *v118 = 136315394;
      *(v118 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v125);
      *(v118 + 12) = 2112;
      *(v118 + 14) = v117;
      *v119 = v117;
      v121 = v117;
      _os_log_impl(&_mh_execute_header, v115, v116, "%s No accessories in (%@)", v118, 0x16u);
      sub_1000160CC(v119, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v120);
    }

    v29 = v1[35];
    v30 = swift_task_alloc();
    v1[60] = v30;
    *v30 = v1;
    v31 = sub_100058124;
  }

LABEL_50:
  v30[1] = v31;
  v46 = v1[12];
  v47 = v1[13];
  v48 = v1[11];
LABEL_51:
  v95 = _swiftEmptyArrayStorage;
  v96 = v29;
LABEL_52:

  return sub_100052DBC(v95, v48, v46, v47, v96);
}

uint64_t sub_100056E64()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_1000570E8;
  }

  else
  {

    v3 = sub_100056F84;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100056F84()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 9;
  swift_willThrow();
  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  v5 = *(v0 + 280);

  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 136);
  v17 = *(v0 + 176);
  v18 = *(v0 + 128);
  v19 = *(v0 + 120);

  (*(v12 + 8))(v13, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000570E8()
{
  v19 = *(v0 + 408);
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);
  v16 = *(v0 + 176);
  v17 = *(v0 + 128);
  v18 = *(v0 + 120);

  (*(v11 + 8))(v12, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100057224()
{
  v2 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_1000574A8;
  }

  else
  {

    v3 = sub_100057344;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100057344()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 7;
  swift_willThrow();
  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  v5 = *(v0 + 280);

  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 136);
  v17 = *(v0 + 176);
  v18 = *(v0 + 128);
  v19 = *(v0 + 120);

  (*(v12 + 8))(v13, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000574A8()
{
  v19 = *(v0 + 424);
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);
  v16 = *(v0 + 176);
  v17 = *(v0 + 128);
  v18 = *(v0 + 120);

  (*(v11 + 8))(v12, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000575E4()
{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_100057868;
  }

  else
  {

    v3 = sub_100057704;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100057704()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 8;
  swift_willThrow();
  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  v5 = *(v0 + 280);

  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 136);
  v17 = *(v0 + 176);
  v18 = *(v0 + 128);
  v19 = *(v0 + 120);

  (*(v12 + 8))(v13, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100057868()
{
  v19 = *(v0 + 440);
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);
  v16 = *(v0 + 176);
  v17 = *(v0 + 128);
  v18 = *(v0 + 120);

  (*(v11 + 8))(v12, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000579A4()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_100057C28;
  }

  else
  {

    v3 = sub_100057AC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100057AC4()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 3;
  swift_willThrow();
  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  v5 = *(v0 + 280);

  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 136);
  v17 = *(v0 + 176);
  v18 = *(v0 + 128);
  v19 = *(v0 + 120);

  (*(v12 + 8))(v13, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100057C28()
{
  v19 = *(v0 + 456);
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);
  v16 = *(v0 + 176);
  v17 = *(v0 + 128);
  v18 = *(v0 + 120);

  (*(v11 + 8))(v12, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100057D64()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_100057FE8;
  }

  else
  {

    v3 = sub_100057E84;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100057E84()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 4;
  swift_willThrow();
  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  v5 = *(v0 + 280);

  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 136);
  v17 = *(v0 + 176);
  v18 = *(v0 + 128);
  v19 = *(v0 + 120);

  (*(v12 + 8))(v13, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100057FE8()
{
  v19 = *(v0 + 472);
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);
  v16 = *(v0 + 176);
  v17 = *(v0 + 128);
  v18 = *(v0 + 120);

  (*(v11 + 8))(v12, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100058124()
{
  v2 = *(*v1 + 480);
  v5 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_1000583A0;
  }

  else
  {

    v3 = sub_100058244;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100058244()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 5;
  swift_willThrow();
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);
  v16 = *(v0 + 176);
  v17 = *(v0 + 128);
  v18 = *(v0 + 120);

  (*(v11 + 8))(v12, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000583A0()
{
  v18 = *(v0 + 488);
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v3 = *(v0 + 280);

  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v12 = *(v0 + 136);
  v15 = *(v0 + 176);
  v16 = *(v0 + 128);
  v17 = *(v0 + 120);

  (*(v10 + 8))(v11, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000584D4()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_100058750;
  }

  else
  {

    v3 = sub_1000585F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000585F4()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 6;
  swift_willThrow();
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);
  v16 = *(v0 + 176);
  v17 = *(v0 + 128);
  v18 = *(v0 + 120);

  (*(v11 + 8))(v12, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100058750()
{
  v18 = *(v0 + 504);
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v3 = *(v0 + 280);

  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v12 = *(v0 + 136);
  v15 = *(v0 + 176);
  v16 = *(v0 + 128);
  v17 = *(v0 + 120);

  (*(v10 + 8))(v11, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100058884(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 520);
  v6 = *v2;
  v4[66] = a1;
  v4[67] = v1;

  v7 = v3[64];
  if (v1)
  {
    v8 = v4[36];

    v9 = sub_1000590C8;
  }

  else
  {

    v9 = sub_1000589D4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000589D4()
{
  v87 = v0;
  v1 = *(v0 + 88);
  sub_10009C954();
  v2 = *(v0 + 288);
  if (*(v0 + 577))
  {
    v3 = *(v0 + 528);
    goto LABEL_23;
  }

  if (!v2)
  {
    goto LABEL_22;
  }

  v80 = *(v2 + 16);
  if (!v80)
  {

LABEL_22:
    v24 = *(v0 + 528);
    v3 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

  v4 = 0;
  v5 = *(v0 + 208);
  v6 = *(v0 + 168);
  v7 = *(v6 + 16);
  v6 += 16;
  buf = v7;
  v73 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v72 = *(v6 + 56);
  v78 = *(v0 + 528);
  v71 = (v6 - 8);
  v3 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v3;
    (buf)(*(v0 + 176), v73 + v4 * v72, *(v0 + 160));
    v9 = *(v78 + 16);
    if (v9)
    {
      v10 = *(v0 + 528) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v11 = *(v5 + 72);
      while (1)
      {
        v12 = *(v0 + 176);
        sub_10004DC34(v10, *(v0 + 224), type metadata accessor for AccessoryAndSceneEntity);
        v13 = sub_10009CEF4();
        v14 = *(v0 + 224);
        if (v13)
        {
          break;
        }

        sub_10004DD8C(v14, type metadata accessor for AccessoryAndSceneEntity);
        v10 += v11;
        if (!--v9)
        {
          goto LABEL_12;
        }
      }

      sub_10004EF84(v14, *(v0 + 120), type metadata accessor for AccessoryAndSceneEntity);
      v15 = 0;
    }

    else
    {
LABEL_12:
      v15 = 1;
    }

    v16 = *(v0 + 200);
    v17 = *(v0 + 176);
    v18 = *(v0 + 160);
    v19 = *(v0 + 120);
    (*(v5 + 56))(v19, v15, 1, v16);
    (*v71)(v17, v18);
    if ((*(v5 + 48))(v19, 1, v16) == 1)
    {
      sub_1000160CC(*(v0 + 120), &qword_1000C1258, &unk_1000A08D0);
      v3 = v8;
    }

    else
    {
      sub_10004EF84(*(v0 + 120), *(v0 + 232), type metadata accessor for AccessoryAndSceneEntity);
      v3 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100064F9C(0, v8[2] + 1, 1, v8);
      }

      v21 = v3[2];
      v20 = v3[3];
      if (v21 >= v20 >> 1)
      {
        v3 = sub_100064F9C(v20 > 1, v21 + 1, 1, v3);
      }

      v22 = *(v0 + 232);
      v3[2] = v21 + 1;
      sub_10004EF84(v22, v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, type metadata accessor for AccessoryAndSceneEntity);
    }

    ++v4;
  }

  while (v4 != v80);

  v23 = *(v0 + 528);
LABEL_23:
  v25 = *(v0 + 304);

  v26 = sub_10009D904();
  v27 = sub_10009E844();

  v79 = v3;
  if (os_log_type_enabled(v26, v27))
  {
    v74 = v27;
    log = v26;
    v28 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v83);
    bufa = v28;
    *(v28 + 12) = 2080;
    v29 = v3[2];
    if (v29)
    {
      v30 = *(v0 + 208);
      v81 = *(v0 + 200);
      v84 = _swiftEmptyArrayStorage;
      sub_10001BC44(0, v29, 0);
      v31 = v84;
      v32 = v3 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v33 = *(v30 + 72);
      do
      {
        v34 = *(v0 + 216);
        v35 = *(v0 + 160);
        sub_10004DC34(v32, v34, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DA88(&qword_1000C0C90, &type metadata accessor for UUID);
        v85 = sub_10009ED04();
        v86 = v36;
        v89._countAndFlagsBits = 58;
        v89._object = 0xE100000000000000;
        sub_10009E634(v89);
        v37 = v34 + *(v81 + 24);
        v90 = *(v37 + *(type metadata accessor for WidgetTileInfo() + 24));
        sub_10009E634(v90);
        v38 = v85;
        v39 = v86;
        sub_10004DD8C(v34, type metadata accessor for AccessoryAndSceneEntity);
        v84 = v31;
        v41 = v31[2];
        v40 = v31[3];
        if (v41 >= v40 >> 1)
        {
          sub_10001BC44((v40 > 1), v41 + 1, 1);
          v31 = v84;
        }

        v31[2] = v41 + 1;
        v42 = &v31[2 * v41];
        v42[4] = v38;
        v42[5] = v39;
        v32 += v33;
        --v29;
      }

      while (v29);
    }

    v50 = *(v0 + 352);
    v49 = *(v0 + 360);
    v51 = *(v0 + 344);
    v52 = *(v0 + 280);
    v53 = *(v0 + 144);
    v82 = *(v0 + 152);
    v54 = *(v0 + 136);
    v55 = sub_10009E6B4();
    v57 = v56;

    v58 = sub_10002AD68(v55, v57, &v83);

    *(bufa + 14) = v58;
    _os_log_impl(&_mh_execute_header, log, v74, "%s Finalized entities: %s", bufa, 0x16u);
    swift_arrayDestroy();

    (*(v53 + 8))(v82, v54);
  }

  else
  {
    v44 = *(v0 + 352);
    v43 = *(v0 + 360);
    v45 = *(v0 + 280);
    v47 = *(v0 + 144);
    v46 = *(v0 + 152);
    v48 = *(v0 + 136);

    (*(v47 + 8))(v46, v48);
  }

  v60 = *(v0 + 232);
  v59 = *(v0 + 240);
  v62 = *(v0 + 216);
  v61 = *(v0 + 224);
  v64 = *(v0 + 184);
  v63 = *(v0 + 192);
  v65 = *(v0 + 176);
  v66 = *(v0 + 152);
  v67 = *(v0 + 120);
  v68 = *(v0 + 128);

  v69 = *(v0 + 8);

  return v69(v79);
}

uint64_t sub_1000590C8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v3 = *(v0 + 280);

  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v12 = *(v0 + 136);
  v15 = *(v0 + 176);
  v16 = *(v0 + 128);
  v17 = *(v0 + 120);
  v18 = *(v0 + 536);

  (*(v10 + 8))(v11, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000591F8()
{
  v2 = *(*v1 + 544);
  v5 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_100059458;
  }

  else
  {

    v3 = sub_100059318;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100059318()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 2;
  swift_willThrow();
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v10 = *(v0 + 136);
  v13 = *(v0 + 176);
  v14 = *(v0 + 128);
  v15 = *(v0 + 120);

  (*(v8 + 8))(v9, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100059458()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  v12 = *(v0 + 176);
  v13 = *(v0 + 128);
  v14 = *(v0 + 120);
  v15 = *(v0 + 552);

  (*(v7 + 8))(v8, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10005956C()
{
  v2 = *(*v1 + 560);
  v5 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = sub_1000597CC;
  }

  else
  {

    v3 = sub_10005968C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005968C()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v10 = *(v0 + 136);
  v13 = *(v0 + 176);
  v14 = *(v0 + 128);
  v15 = *(v0 + 120);

  (*(v8 + 8))(v9, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000597CC()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  v12 = *(v0 + 176);
  v13 = *(v0 + 128);
  v14 = *(v0 + 120);
  v15 = *(v0 + 568);

  (*(v7 + 8))(v8, v9);

  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_1000598E8()
{
  result = qword_1000C1A40;
  if (!qword_1000C1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1A40);
  }

  return result;
}

uint64_t sub_10005993C()
{
  sub_10004D760(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100059988(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_1000599B8()
{
  result = qword_1000C1A88;
  if (!qword_1000C1A88)
  {
    sub_10000375C(&qword_1000C1A78, &qword_1000A1AF8);
    sub_10001CDC8(&qword_1000C1A90, &qword_1000C1A98, &qword_1000A1B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1A88);
  }

  return result;
}

uint64_t sub_100059A70()
{
  sub_10004D760(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  v2 = *(v0 + 88);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100059ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  return sub_100047744(a1, a2, v3 + 32, *(v3 + 88), a3, *(v3 + 16), *(v3 + 24));
}

uint64_t sub_100059AD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100059B50()
{
  v1 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10009E3D4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_10004D760(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));
  v8 = *(v5 + *(v1 + 24));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100059C84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WidgetViewsForMediumSystemFamily(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100048500(a1, v6, a2);
}

unint64_t sub_100059D0C()
{
  result = qword_1000C1B30;
  if (!qword_1000C1B30)
  {
    sub_10000375C(&qword_1000C1B28, &qword_1000A1B80);
    sub_10001CDC8(&qword_1000C1B38, &qword_1000C1B40, &qword_1000A1B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1B30);
  }

  return result;
}

uint64_t sub_100059DC4()
{
  v1 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10009E3D4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10004D760(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));
  v9 = *(v5 + *(v1 + 24));

  v10 = *(v0 + v8);

  return _swift_deallocObject(v0, ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100059F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for WidgetViewsForMediumSystemFamily(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + v9);
  v12 = *(v3 + v10);
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v15 = *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000489B0(a1, a2, v3 + v8, v11, a3, v13, v14);
}

uint64_t sub_100059FEC(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = sub_100003714(&qword_1000C19A0, &qword_1000A1A10);
  return v4(v5, &a1[*(v6 + 48)]);
}

uint64_t sub_10005A054()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10005A08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_100049D78(a1, *(v2 + 32), a2);
}

unint64_t sub_10005A098()
{
  result = qword_1000C1B88;
  if (!qword_1000C1B88)
  {
    sub_10000375C(&qword_1000C1B80, &qword_1000A1BF8);
    type metadata accessor for HomeInteractiveWidgetsEntryView(255);
    sub_10000375C(&qword_1000C1B90, &qword_1000A1C00);
    sub_10004DA88(&qword_1000C1B98, type metadata accessor for HomeInteractiveWidgetsEntryView);
    sub_10005A1A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1B88);
  }

  return result;
}

unint64_t sub_10005A1A8()
{
  result = qword_1000C1BA0;
  if (!qword_1000C1BA0)
  {
    sub_10000375C(&qword_1000C1B90, &qword_1000A1C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1BA0);
  }

  return result;
}

unint64_t sub_10005A224()
{
  result = qword_1000C1BA8;
  if (!qword_1000C1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1BA8);
  }

  return result;
}