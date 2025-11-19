uint64_t sub_100362C64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100362CC8(uint64_t a1)
{
  *(a1 + 8) = sub_100362D30(&qword_100952270);
  result = sub_100362D30(&qword_100953D88);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100362D30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProductLockupInlineUberLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100362D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100362E5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

void sub_100362F18()
{
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_1001A3380(319, &qword_100950F80, &qword_10094CF50);
    if (v1 <= 0x3F)
    {
      sub_100102F90(319, &unk_100950F60);
      if (v2 <= 0x3F)
      {
        sub_100102F90(319, &qword_100953E00);
        if (v3 <= 0x3F)
        {
          sub_1001A3380(319, &unk_100950F70, &unk_100953E10);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100363078(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000A5D4(&unk_100945BD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10000A5D4(&unk_100952280);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1003631D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000A5D4(&unk_100945BD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 24) = (a2 - 1);
  }

  else
  {
    v13 = sub_10000A5D4(&unk_100952280);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_100363314()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_100363428();
      if (v2 <= 0x3F)
      {
        sub_100102F90(319, &qword_10094BAA0);
        if (v3 <= 0x3F)
        {
          sub_100363494();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100363428()
{
  if (!qword_100953EE0)
  {
    sub_10000CE78(&unk_100943120);
    v0 = sub_10075FEBC();
    if (!v1)
    {
      atomic_store(v0, &qword_100953EE0);
    }
  }
}

void sub_100363494()
{
  if (!qword_100953EE8)
  {
    sub_10000CE78(&unk_100945BD0);
    v0 = sub_10075FEBC();
    if (!v1)
    {
      atomic_store(v0, &qword_100953EE8);
    }
  }
}

unint64_t sub_100363508()
{
  result = qword_1009509F8;
  if (!qword_1009509F8)
  {
    type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009509F8);
  }

  return result;
}

double sub_100363560()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  v4 = sub_10076461C();
  sub_1005CC3A0(v3, v4);
  v6 = v5;

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_10036364C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a1;
  v104 = a2;
  v100 = sub_10076443C();
  v102 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v101 = &v98 - v4;
  v103 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  __chkstk_darwin(v103);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_10094C370);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v98 - v12;
  __chkstk_darwin(v13);
  v119 = &v98 - v14;
  v15 = sub_10000A5D4(&unk_100950EE0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v120 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v98 - v19;
  __chkstk_darwin(v20);
  v116 = &v98 - v21;
  v22 = sub_10000A5D4(&unk_100945BD0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v117 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v115 = &v98 - v26;
  __chkstk_darwin(v27);
  v114 = &v98 - v28;
  __chkstk_darwin(v29);
  v31 = &v98 - v30;
  v131 = &type metadata for Double;
  v132 = &protocol witness table for Double;
  v129 = &protocol witness table for Double;
  *&v130 = 0;
  v128 = &type metadata for Double;
  *&v127 = 0;
  if (qword_100940118 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A61C(v22, qword_10099EEC0);
  v33 = *(v23 + 16);
  v105 = v31;
  v33(v31, v32, v22);
  if (qword_1009400B8 != -1)
  {
    swift_once();
  }

  v34 = sub_10000A61C(v22, qword_10099EDA0);
  *&v123 = v23 + 16;
  *&v122 = v33;
  v33(v114, v34, v22);
  if (qword_10093FFE8 != -1)
  {
    swift_once();
  }

  v106 = v23;
  v35 = sub_10000A61C(v15, qword_10099EB10);
  v107 = v16;
  v36 = *(v16 + 16);
  v36(v116, v35, v15);
  if (qword_100940160 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A61C(v7, qword_10099EF98);
  v109 = v8;
  v38 = *(v8 + 16);
  v38(v119, v37, v7);
  if (qword_1009400E8 != -1)
  {
    swift_once();
  }

  v39 = sub_10000A61C(v22, qword_10099EE30);
  (v122)(v115, v39, v22);
  if (qword_100940000 != -1)
  {
    swift_once();
  }

  v40 = sub_10000A61C(v15, qword_10099EB58);
  v36(v118, v40, v15);
  if (qword_100940170 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A61C(v7, qword_10099EFC8);
  v38(v121, v41, v7);
  if (qword_100940100 != -1)
  {
    swift_once();
  }

  v42 = sub_10000A61C(v22, qword_10099EE78);
  (v122)(v117, v42, v22);
  if (qword_100940010 != -1)
  {
    swift_once();
  }

  v43 = sub_10000A61C(v15, qword_10099EB88);
  v36(v120, v43, v15);
  if (qword_100940178 != -1)
  {
    swift_once();
  }

  v44 = sub_10000A61C(v7, qword_10099EFE0);
  v108 = v10;
  v110 = v7;
  v38(v10, v44, v7);
  if (qword_100940088 != -1)
  {
    swift_once();
  }

  v45 = sub_10076D9AC();
  v46 = sub_10000A61C(v45, qword_10099ED10);
  v125 = v45;
  v126 = &protocol witness table for StaticDimension;
  v47 = sub_10000DB7C(&v124);
  v48 = (*(v45 - 8) + 16);
  v49 = *v48;
  (*v48)(v47, v46, v45);
  v50 = sub_10077071C();
  v112 = v15;
  v111 = v48;
  if (v50)
  {
    v51 = v6;
    v52 = v36;
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v53 = qword_100944C88;
  }

  else
  {
    v51 = v6;
    v52 = v36;
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v53 = qword_100944CA0;
  }

  v54 = v100;
  v55 = sub_10000A61C(v100, v53);
  v56 = v102;
  v57 = v99;
  (*(v102 + 16))(v99, v55, v54);
  v58 = v101;
  (*(v56 + 32))(v101, v57, v54);
  sub_1007643BC();
  (*(v56 + 8))(v58, v54);
  if (qword_100940018 != -1)
  {
    swift_once();
  }

  v59 = v112;
  v60 = sub_10000A61C(v112, qword_10099EBA0);
  v61 = v103;
  v52(v51 + *(v103 + 20), v60, v59);
  sub_100763B0C();
  v62 = (v51 + *(v61 + 24));
  v62[3] = &type metadata for CGFloat;
  v62[4] = &protocol witness table for CGFloat;
  *v62 = v63;
  sub_100763B1C();
  v64 = *(v61 + 28);
  v113 = v51;
  v65 = (v51 + v64);
  v65[3] = &type metadata for CGFloat;
  v65[4] = &protocol witness table for CGFloat;
  *v65 = v66;
  v67 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v68 = v104;
  v69 = (v104 + v67[20]);
  v69[3] = &type metadata for CGFloat;
  v69[4] = &protocol witness table for CGFloat;
  *v69 = 0x4030000000000000;
  v70 = v122;
  if (qword_100940130 != -1)
  {
    swift_once();
  }

  v71 = sub_10000A61C(v45, qword_10099EF08);
  v72 = (v68 + v67[21]);
  v72[3] = v45;
  v72[4] = &protocol witness table for StaticDimension;
  v73 = sub_10000DB7C(v72);
  v74 = v49;
  v49(v73, v71, v45);
  if (qword_100940148 != -1)
  {
    swift_once();
  }

  v75 = sub_10000A61C(v22, qword_10099EF50);
  v76 = v68;
  v77 = v22;
  v70(v68 + v67[22], v75, v22);
  v78 = v112;
  if (qword_100940150 != -1)
  {
    swift_once();
  }

  v79 = *&UIEdgeInsetsZero.top;
  v122 = *&UIEdgeInsetsZero.bottom;
  v123 = v79;
  v80 = sub_10000A61C(v45, qword_10099EF68);
  v81 = (v68 + v67[23]);
  v81[3] = v45;
  v81[4] = &protocol witness table for StaticDimension;
  v82 = sub_10000DB7C(v81);
  v74(v82, v80, v45);
  v83 = v105;
  if (qword_100940110 != -1)
  {
    swift_once();
  }

  v84 = sub_10000A61C(v45, qword_10099EEA8);
  v85 = (v76 + v67[24]);
  v85[3] = v45;
  v85[4] = &protocol witness table for StaticDimension;
  v86 = sub_10000DB7C(v85);
  v74(v86, v84, v45);
  v87 = v122;
  *v76 = v123;
  *(v76 + 16) = v87;
  sub_10003F19C(&v130, v76 + 32);
  sub_10003F19C(&v127, v76 + 72);
  *(v76 + 112) = 0;
  *(v76 + 120) = 0;
  v88 = v67[8];
  v89 = *(v106 + 32);
  *&v123 = v89;
  v89(v76 + v88, v83, v77);
  v90 = v76 + v67[9];
  v98 = v77;
  v89(v90, v114, v77);
  v91 = *(v107 + 32);
  v92 = v78;
  v91(v76 + v67[10], v116, v78);
  v93 = *(v109 + 32);
  v94 = v110;
  v93(v76 + v67[11], v119, v110);
  v95 = v77;
  v96 = v123;
  (v123)(v76 + v67[12], v115, v95);
  v91(v76 + v67[13], v118, v92);
  v93(v76 + v67[14], v121, v94);
  v96(v76 + v67[15], v117, v98);
  v91(v76 + v67[16], v120, v92);
  v93(v76 + v67[17], v108, v94);
  sub_10003F19C(&v124, v76 + v67[18]);
  return sub_10036869C(v113, v76 + v67[19]);
}

__n128 sub_10036448C()
{
  v0 = sub_10000A5D4(&unk_100952280);
  v44 = *(v0 - 8);
  v45 = v0;
  __chkstk_darwin(v0);
  v43 = &v40 - v1;
  v2 = sub_10000A5D4(&unk_100945BD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v40 - v7;
  __chkstk_darwin(v8);
  v47 = &v40 - v9;
  __chkstk_darwin(v10);
  v46 = &v40 - v11;
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10000DB18(v15, qword_10099EAC8);
  v16 = sub_10000A61C(v15, qword_10099EAC8);
  if (qword_1009400D8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v2, qword_10099EE00);
  v42 = v3;
  v18 = *(v3 + 16);
  v18(v14, v17, v2);
  if (qword_1009400C8 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v2, qword_10099EDD0);
  v18(v46, v19, v2);
  if (qword_1009400F0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v2, qword_10099EE48);
  v18(v47, v20, v2);
  v69 = &type metadata for CGFloat;
  v70 = &protocol witness table for CGFloat;
  *&v68 = 0x4031000000000000;
  if (qword_100940090 != -1)
  {
    swift_once();
  }

  v41 = v14;
  v49 = v5;
  v21 = sub_10000A61C(v2, qword_10099ED28);
  v18(v48, v21, v2);
  v67 = &protocol witness table for CGFloat;
  v66 = &type metadata for CGFloat;
  *&v65 = 0x4034000000000000;
  v63 = &type metadata for Double;
  v64 = &protocol witness table for Double;
  *&v62 = 0;
  v60 = &type metadata for Double;
  v61 = &protocol witness table for Double;
  *&v59 = 0;
  if (qword_100940138 != -1)
  {
    swift_once();
  }

  v22 = sub_10076D9AC();
  v23 = sub_10000A61C(v22, qword_10099EF20);
  v57 = v22;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_10000DB7C(&v56);
  v25 = *(*(v22 - 8) + 16);
  v25(v24, v23, v22);
  if (qword_100940140 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v22, qword_10099EF38);
  v54 = v22;
  v55 = &protocol witness table for StaticDimension;
  v27 = sub_10000DB7C(&v53);
  v25(v27, v26, v22);
  if (qword_100940098 != -1)
  {
    swift_once();
  }

  v28 = v45;
  v29 = sub_10000A61C(v45, qword_10099ED40);
  v31 = v43;
  v30 = v44;
  (*(v44 + 16))(v43, v29, v28);
  v52 = &protocol witness table for CGFloat;
  v51 = &type metadata for CGFloat;
  *&v50 = 0x4080E00000000000;
  v32 = v49;
  if (qword_1009400A8 != -1)
  {
    swift_once();
  }

  v33 = sub_10000A61C(v2, qword_10099ED70);
  v18(v32, v33, v2);
  if (qword_1009400B0 != -1)
  {
    swift_once();
  }

  v34 = sub_10000A61C(v2, qword_10099ED88);
  v18((v16 + v15[19]), v34, v2);
  v35 = (v16 + v15[20]);
  v35[3] = &type metadata for CGFloat;
  v35[4] = &protocol witness table for CGFloat;
  *v35 = 0x4080580000000000;
  v36 = (v16 + v15[21]);
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  *v36 = 0x4077000000000000;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  v37 = *(v42 + 32);
  v37(v16 + v15[7], v41, v2);
  v37(v16 + v15[6], v46, v2);
  v37(v16 + v15[8], v47, v2);
  sub_10003F19C(&v68, v16 + v15[9]);
  v37(v16 + v15[10], v48, v2);
  sub_10003F19C(&v65, v16 + v15[14]);
  sub_10003F19C(&v62, v16 + v15[15]);
  sub_10003F19C(&v59, v16 + v15[16]);
  sub_10003F19C(&v56, v16 + v15[11]);
  sub_10003F19C(&v53, v16 + v15[12]);
  (*(v30 + 32))(v16 + v15[13], v31, v28);
  sub_10003F19C(&v50, v16 + v15[17]);
  v37(v16 + v15[18], v49, v2);
  result = *&UIEdgeInsetsZero.top;
  v39 = *&UIEdgeInsetsZero.bottom;
  *v16 = *&UIEdgeInsetsZero.top;
  *(v16 + 16) = v39;
  return result;
}

uint64_t sub_100364C04()
{
  v0 = sub_10000A5D4(&unk_100945BD0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v42 = &v36 - v11;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_10000DB18(v15, qword_10099EAE0);
  v16 = sub_10000A61C(v15, qword_10099EAE0);
  v57 = &type metadata for Double;
  v58 = &protocol witness table for Double;
  v55 = &protocol witness table for Double;
  *&v56 = 0;
  v54 = &type metadata for Double;
  *&v53 = 0;
  if (qword_1009400C0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v0, qword_10099EDB8);
  v18 = *(v1 + 16);
  v38 = v14;
  v18(v14, v17, v0);
  if (qword_1009400E8 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v0, qword_10099EE30);
  v18(v42, v19, v0);
  v18(v9, v19, v0);
  if (qword_100940100 != -1)
  {
    swift_once();
  }

  v39 = v9;
  v43 = v3;
  v20 = sub_10000A61C(v0, qword_10099EE78);
  v40 = v6;
  v18(v6, v20, v0);
  v51 = &type metadata for CGFloat;
  v52 = &protocol witness table for CGFloat;
  *&v50 = 0x4030000000000000;
  if (qword_100940088 != -1)
  {
    swift_once();
  }

  v41 = v1;
  v21 = sub_10076D9AC();
  v22 = sub_10000A61C(v21, qword_10099ED10);
  v48 = v21;
  v49 = &protocol witness table for StaticDimension;
  v23 = sub_10000DB7C(&v47);
  v24 = *(*(v21 - 8) + 16);
  v24(v23, v22, v21);
  if (qword_100940108 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v21, qword_10099EE90);
  v45 = v21;
  v46 = &protocol witness table for StaticDimension;
  v26 = sub_10000DB7C(&v44);
  v24(v26, v25, v21);
  if (qword_100940128 != -1)
  {
    swift_once();
  }

  v27 = *&UIEdgeInsetsZero.top;
  v36 = *&UIEdgeInsetsZero.bottom;
  v37 = v27;
  v28 = sub_10000A61C(v0, qword_10099EEF0);
  v18(v43, v28, v0);
  if (qword_100940130 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v21, qword_10099EF08);
  v30 = (v16 + v15[16]);
  v30[3] = v21;
  v30[4] = &protocol witness table for StaticDimension;
  v31 = sub_10000DB7C(v30);
  v24(v31, v29, v21);
  v32 = (v16 + v15[17]);
  v32[3] = &type metadata for CGFloat;
  v32[4] = &protocol witness table for CGFloat;
  *v32 = 0x4044000000000000;
  v33 = v36;
  *v16 = v37;
  *(v16 + 16) = v33;
  sub_10003F19C(&v56, v16 + 32);
  sub_10003F19C(&v53, v16 + 72);
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  v34 = *(v41 + 32);
  v34(v16 + v15[8], v38, v0);
  v34(v16 + v15[9], v42, v0);
  v34(v16 + v15[10], v39, v0);
  v34(v16 + v15[11], v40, v0);
  sub_10003F19C(&v50, v16 + v15[12]);
  sub_10003F19C(&v47, v16 + v15[13]);
  sub_10003F19C(&v44, v16 + v15[14]);
  return (v34)(v16 + v15[15], v43, v0);
}

id sub_100365230()
{
  result = [objc_opt_self() systemBlueColor];
  qword_10099EAF8 = result;
  return result;
}

UIColor sub_10036526C()
{
  sub_100016F40(0, &qword_100942F10);
  result.super.isa = sub_100770E4C(1.0, 0.58431, 0.0, 1.0).super.isa;
  qword_10099EB00 = result.super.isa;
  return result;
}

UIColor sub_1003652C8()
{
  sub_100016F40(0, &qword_100942F10);
  v0 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.8];
  v1 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.8];
  v2 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.8];
  v3.super.isa = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.8];
  v4.super.isa = v0;
  v5.super.isa = v1;
  v6.super.isa = v2;
  result.super.isa = sub_100770E3C(v4, v5, v6, v3).super.isa;
  qword_10099EB08 = result.super.isa;
  return result;
}

uint64_t sub_100365414(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000A5D4(&unk_100950EE0);
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  sub_10000A5D4(&unk_100943120);
  sub_100016F40(0, &qword_100942F00);
  return sub_10075FECC();
}

void sub_100365520(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  sub_100016F40(0, &qword_100942F00);
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  sub_10000A61C(v8, a3);
  v9 = [v7 traitCollection];
  v10 = sub_100770B3C();

  *a4 = v10;
}

uint64_t sub_100365624@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_100016F40(0, &qword_100942F00);
  if (*a2 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A5D4(&qword_10094C390);
  sub_10000A61C(v13, a3);
  v17[1] = v12;
  sub_10075FDCC();
  v14 = [v12 traitCollection];
  v15 = sub_100770B3C();

  result = (*(v9 + 8))(v11, v8);
  *a4 = v15;
  return result;
}

void sub_100365884()
{
  v0 = objc_opt_self();
  v1 = [v0 _preferredFontForTextStyle:UIFontTextStyleCaption1 addingSymbolicTraits:0x8000 weight:UIFontWeightMedium];
  if (!v1)
  {
    v1 = [v0 preferredFontForTextStyle:UIFontTextStyleCaption1];
  }

  v2 = v1;
  v3 = sub_1003A2094();

  qword_10099EBB8 = v3;
}

void sub_100365928()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  v1 = sub_1003A2094();

  qword_10099EBC0 = v1;
}

uint64_t sub_100365988()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390);
  sub_10000DB18(v7, qword_10099EBC8);
  sub_10000A61C(v7, qword_10099EBC8);
  if (qword_100940BC8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A1150);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940BC0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A1138);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

uint64_t sub_100365B68()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_10099EBE0);
  v1 = sub_10000A61C(v0, qword_10099EBE0);
  if (qword_100940BD0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A1168);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100365C30()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390);
  sub_10000DB18(v7, qword_10099EBF8);
  sub_10000A61C(v7, qword_10099EBF8);
  if (qword_100940BE8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A11B0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940BE0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A1198);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

uint64_t sub_100365E10()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  v7 = sub_10000A5D4(&qword_10094C390);
  sub_10000DB18(v7, qword_10099EC10);
  sub_10000A61C(v7, qword_10099EC10);
  if (qword_100940C00 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A11F8);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  v9(v3, v8, v0);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

uint64_t sub_100365FBC()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390);
  sub_10000DB18(v7, qword_10099EC28);
  sub_10000A61C(v7, qword_10099EC28);
  if (qword_100940BF8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A11E0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940BF0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A11C8);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

uint64_t sub_10036619C()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390);
  sub_10000DB18(v7, qword_10099EC40);
  sub_10000A61C(v7, qword_10099EC40);
  if (qword_100940E50 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A18E8);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A18D0);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDFC();
}

uint64_t sub_10036637C()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_10099EC58);
  sub_10000A61C(v0, qword_10099EC58);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

uint64_t sub_100366418()
{
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2368);
  qword_10099EC88 = v0;
  unk_10099EC90 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_10099EC70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_1003664D4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = UIFontTextStyleBody;
  (*(v1 + 104))(v4, enum case for FontSource.textStyle(_:), v0, v2);
  qword_10099ECB0 = sub_10076D9AC();
  unk_10099ECB8 = &protocol witness table for StaticDimension;
  sub_10000DB7C(qword_10099EC98);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v4, v0);
  v6 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100366650(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D9AC();
  v8 = sub_10000A61C(v7, qword_1009A2350);
  *a2 = v7;
  *a3 = &protocol witness table for StaticDimension;
  v9 = sub_10000DB7C(a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v9, v8, v7);
}

uint64_t sub_1003667A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_10000A5D4(&unk_100945BD0);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = sub_10000A5D4(&unk_100952280);
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  sub_10017A500(a3);
  sub_10000A5D4(&unk_100943120);
  sub_10075FDEC();
  sub_10075FDEC();
  return sub_10075FEAC();
}

uint64_t sub_100366988(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v10, a2);
  sub_10000A61C(v10, a2);
  if (qword_100940BC8 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A1150);
  v13 = *(*(v11 - 8) + 16);
  v13(v9, v12, v11);
  v14 = enum case for FontSource.useCase(_:);
  v15 = *(v4 + 104);
  v15(v9, enum case for FontSource.useCase(_:), v3);
  if (qword_100940BC0 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v11, qword_1009A1138);
  v13(v6, v16, v11);
  v15(v6, v14, v3);
  return sub_10075FE3C();
}

uint64_t sub_100366BD0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v7, qword_10099EDD0);
  v14[1] = sub_10000A61C(v7, qword_10099EDD0);
  if (qword_100940BD0 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1168);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_10075FE3C();
}

uint64_t sub_100366DE0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v7, qword_10099EDE8);
  v14[1] = sub_10000A61C(v7, qword_10099EDE8);
  if (qword_100940BD8 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1180);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_10075FE3C();
}

uint64_t sub_100367018(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  *v6 = UIFontTextStyleFootnote;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v8 = UIFontTextStyleFootnote;
  return sub_10075FE4C();
}

uint64_t sub_100367150()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v7, qword_10099EE30);
  sub_10000A61C(v7, qword_10099EE30);
  if (qword_100940BE8 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A11B0);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  if (qword_100940BE0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v8, qword_1009A1198);
  v10(v3, v13, v8);
  v12(v3, v11, v0);
  return sub_10075FE3C();
}

uint64_t sub_100367390()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v7, qword_10099EE48);
  v14[1] = sub_10000A61C(v7, qword_10099EE48);
  if (qword_100940C00 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A11F8);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_10075FE3C();
}

uint64_t sub_100367594()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v7, qword_10099EE60);
  v14[1] = sub_10000A61C(v7, qword_10099EE60);
  if (qword_100940C00 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A11F8);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_10075FE3C();
}

uint64_t sub_100367798()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v7, qword_10099EE78);
  sub_10000A61C(v7, qword_10099EE78);
  if (qword_100940BF8 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A11E0);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  if (qword_100940BF0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v8, qword_1009A11C8);
  v10(v3, v13, v8);
  v12(v3, v11, v0);
  return sub_10075FE3C();
}

uint64_t sub_100367A48(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = sub_10076D1AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10076D9AC();
  sub_10000DB18(v9, a2);
  sub_10000A61C(v9, a2);
  v10 = *a3;
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v15[3] = v5;
  v15[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v15);
  (*(v6 + 16))(v11, v8, v5);
  v12 = v10;
  sub_10076D9BC();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100367BB8()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v4, qword_10099EEF0);
  sub_10000A61C(v4, qword_10099EEF0);
  if (qword_100940C08 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1210);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  return sub_10075FE4C();
}

uint64_t sub_100367DB0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_10076D1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D9AC();
  sub_10000DB18(v11, a2);
  sub_10000A61C(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, a4);
  (*(*(v12 - 8) + 16))(v10, v13, v12);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v17[3] = v7;
  v17[4] = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v17);
  (*(v8 + 16))(v14, v10, v7);
  sub_10076D9BC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100367F7C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099EF38);
  sub_10000A61C(v4, qword_10099EF38);
  if (qword_100940C18 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1240);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100368164()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099EF68);
  sub_10000A61C(v4, qword_10099EF68);
  if (qword_100940C10 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1228);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

void sub_10036838C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = sub_10077071C();

  v5 = 2;
  if (v4)
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_10036842C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000A5D4(&unk_10094C370);
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FECC();
}

void sub_1003684B8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  if (sub_10077071C())
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1007706FC();

    v4 = 1;
    if ((v5 & 1) == 0)
    {
      v4 = 2;
    }
  }

  *a2 = v4;
}

uint64_t sub_10036855C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000A5D4(&unk_10094C370);
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDFC();
}

void sub_100368634()
{
  v0 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.1];
  v1 = [v0 CGColor];

  qword_10099F088 = v1;
}

uint64_t sub_10036869C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100368704@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v20 = a1;
  v21 = &type metadata for EmptyView;
  v22 = a2;
  v23 = &protocol witness table for EmptyView;
  v7 = sub_10076ECAC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_10076EC9C();
  sub_10076ECFC();
  sub_10076EC8C();
  v14 = *(v8 + 8);
  v14(v10, v7);
  v19 = v3;
  v15 = sub_10000CE78(&qword_100953F98);
  v16 = sub_100368C64();
  v20 = a1;
  v21 = v15;
  v22 = a2;
  v23 = v16;
  a3[3] = sub_10076ECAC();
  a3[4] = swift_getWitnessTable();
  sub_10000DB7C(a3);
  sub_10076EC7C();
  return (v14)(v13, v7);
}

uint64_t sub_100368904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100769A5C();
  KeyPath = swift_getKeyPath();
  v5 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension22SwiftUIViewHostingCell_flowPreview);
  v6 = (a2 + *(sub_10000A5D4(&qword_100953F98) + 36));
  *v6 = KeyPath;
  v6[1] = v5;
}

void sub_100368988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1001CEC78(a1, a2, a3, a4, a5);
  v6 = [v5 contentView];
  v7 = [v6 layer];

  sub_10076BD0C();
  [v7 setCornerRadius:?];

  v8 = [v5 contentView];
  sub_1000325F0();
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  v11.super.isa = [v9 secondarySystemBackgroundColor];
  v12.super.isa = v10;
  isa = sub_100770DEC(v12, v11).super.isa;
  [v8 setBackgroundColor:isa];
}

id sub_100368B98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIProductPageCardViewHostingCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SwiftUIProductPageCardViewHostingCell()
{
  result = qword_100953F88;
  if (!qword_100953F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100368C64()
{
  result = qword_100953FA0;
  if (!qword_100953FA0)
  {
    sub_10000CE78(&qword_100953F98);
    sub_100368CF0();
    sub_100368D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953FA0);
  }

  return result;
}

unint64_t sub_100368CF0()
{
  result = qword_100953FA8;
  if (!qword_100953FA8)
  {
    sub_100769A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953FA8);
  }

  return result;
}

unint64_t sub_100368D48()
{
  result = qword_100956780;
  if (!qword_100956780)
  {
    sub_10000CE78(&qword_10094CE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956780);
  }

  return result;
}

uint64_t sub_100368DB4()
{
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2350);
  qword_10099F0A8 = v0;
  unk_10099F0B0 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_10099F090);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_100368E70(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_bundleView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for BundleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v11 contentView];
  [v13 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_lockupView]];

  v14 = [v11 contentView];
  [v14 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_bundleView]];

  return v11;
}

id sub_10036918C()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v38, "layoutSubviews");
  v2 = [v0 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_lockupView];
  v12 = sub_10052225C();
  v14 = v13;
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  MinX = CGRectGetMinX(v39);
  v35 = v6;
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  MinY = CGRectGetMinY(v40);
  v37 = MinX;
  v16 = MinX;
  v17 = v12;
  v18 = v14;
  [v11 setFrame:v16];
  if (qword_1009401B8 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_10099F090, qword_10099F0A8);
  v19 = [v1 traitCollection];
  sub_10076D41C();
  v21 = v20;

  v41.origin.x = v4;
  v41.origin.y = v35;
  v41.size.width = v8;
  v41.size.height = v10;
  Height = CGRectGetHeight(v41);
  v42.origin.y = MinY;
  v42.origin.x = v37;
  v42.size.width = v17;
  v42.size.height = v18;
  v23 = Height - (v21 + CGRectGetHeight(v42));
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_bundleView];
  v43.origin.x = v4;
  v43.origin.y = v35;
  v43.size.width = v8;
  v43.size.height = v10;
  [v24 sizeThatFits:{CGRectGetWidth(v43), v23}];
  v26 = v25;
  v28 = v27;
  v44.origin.x = v4;
  v44.origin.y = v35;
  v44.size.width = v8;
  v44.size.height = v10;
  v29 = CGRectGetMinX(v44);
  v45.origin.y = MinY;
  v45.origin.x = v37;
  v45.size.width = v17;
  v45.size.height = v18;
  MaxY = CGRectGetMaxY(v45);
  sub_10000CF78(qword_10099F090, qword_10099F0A8);
  v31 = [v1 traitCollection];
  sub_10076D41C();
  v33 = v32;

  return [v24 setFrame:{v29, MaxY + v33, v26, v28}];
}

id sub_100369488()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100369550()
{
  v0 = type metadata accessor for BaseTodayBrickCollectionViewCell();
  sub_100369AE8(&qword_100950AA8, type metadata accessor for BaseTodayBrickCollectionViewCell);
  sub_100369AE8(&qword_100950AB0, type metadata accessor for BaseTodayBrickCollectionViewCell);
  sub_100369AE8(&qword_100950AB8, type metadata accessor for BaseTodayBrickCollectionViewCell);
  return v0;
}

uint64_t sub_10036961C()
{
  sub_10076C84C();
  sub_100369AE8(&qword_100947150, &type metadata accessor for TodayCard);
  sub_10076332C();
  if (!v2)
  {
    return 0;
  }

  sub_10076C7FC();
  v0 = sub_100761BEC();

  result = 0;
  if (v0 > 6)
  {
    if (v0 == 7)
    {
      return type metadata accessor for GridTodayBrickCollectionViewCell();
    }

    else if (v0 == 8)
    {
      return type metadata accessor for VideoTodayBrickCollectionViewCell();
    }
  }

  else if (v0)
  {
    if (v0 == 1)
    {
      return type metadata accessor for BrandedAppTodayBrickCollectionViewCell();
    }
  }

  else
  {
    return type metadata accessor for TodayBrickCollectionViewCellWithBackground();
  }

  return result;
}

uint64_t sub_100369728()
{
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  v7 = sub_10000A5D4(&unk_100946720);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.smallStoryCard(_:), v0);
  sub_100369AE8(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);
  }

  else
  {
    v12 = sub_10077167C();
    v13 = *(v1 + 8);
    v13(v3, v0);
    v13(v6, v0);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_10036961C();
  if (result)
  {
    v15 = result;
    sub_100369AE8(&qword_100950AA8, type metadata accessor for BaseTodayBrickCollectionViewCell);
    sub_100369AE8(&qword_100950AB0, type metadata accessor for BaseTodayBrickCollectionViewCell);
    sub_100369AE8(&qword_100950AB8, type metadata accessor for BaseTodayBrickCollectionViewCell);
    return v15;
  }

  return result;
}

uint64_t sub_100369AE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100369B34()
{
  result = qword_100950CE8;
  if (!qword_100950CE8)
  {
    type metadata accessor for MediumLockupCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950CE8);
  }

  return result;
}

double sub_100369B8C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076462C();
  sub_10076460C();
  sub_10076C2FC();
  (*(v1 + 8))(v3, v0);
  swift_getObjectType();
  v4 = swift_unknownObjectRetain();
  sub_1002ADC24(v4);
  v6 = v5;
  swift_unknownObjectRelease_n();
  return v6;
}

char *sub_100369CDC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21.receiver = v4;
  v21.super_class = type metadata accessor for ScreenshotCollectionViewCell();
  v12 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView;
  v14 = *&v12[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v12;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 addSubview:*&v12[v13]];

  return v18;
}

id sub_100369F58()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ScreenshotCollectionViewCell();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  sub_10075FCEC(v8, v4);

  *(v2 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = 0;

  sub_100124EE0();
  v5 = &v1[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  return [v1 setNeedsLayout];
}

id sub_10036A068()
{
  v1 = v0;
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotCollectionViewCell();
  v37.receiver = v1;
  v37.super_class = v6;
  objc_msgSendSuper2(&v37, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
    v8 = [v1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    return [v7 setFrame:{v10, v12, v14, v16}];
  }

  else
  {
    sub_10076D3AC();
    v18 = [v1 contentView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    sub_10076D36C();
    v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
    [v25 setFrame:{v20, v22, v24, v26}];
    v27 = [v1 contentView];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v38.origin.x = v29;
    v38.origin.y = v31;
    v38.size.width = v33;
    v38.size.height = v35;
    MidX = CGRectGetMidX(v38);
    v39.origin.x = v29;
    v39.origin.y = v31;
    v39.size.width = v33;
    v39.size.height = v35;
    [v25 setCenter:{MidX, CGRectGetMidY(v39)}];
    return (*(v3 + 8))(v5, v2);
  }
}

id sub_10036A324()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotCollectionViewCell()
{
  result = qword_1009540A8;
  if (!qword_1009540A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10036A3FC()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

CGFloat sub_10036A4C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration;
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = *(v1 + 80);
  type metadata accessor for BorderedScreenshotView();
  sub_10076422C();
  v4 = CGRectGetWidth(v6) - (v2 + v3);
  sub_10076422C();
  CGRectGetHeight(v7);
  return v4;
}

void sub_10036A564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2908(a1, a2, a3, WitnessTable);
}

void sub_10036A5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2BC0(a1, a2, a3, WitnessTable);
}

unint64_t sub_10036A63C(uint64_t a1)
{
  result = sub_10036A664();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10036A664()
{
  result = qword_1009540B8;
  if (!qword_1009540B8)
  {
    type metadata accessor for ScreenshotCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009540B8);
  }

  return result;
}

id sub_10036A6D0()
{
  v0 = sub_1007636CC();
  sub_100371210(v0, v1);
  v2 = sub_1007636BC();

  return sub_10037121C(v2, v3);
}

double sub_10036A7B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = sub_10076718C();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1007671AC();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10076997C();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10005312C();
  if (qword_100940E00 != -1)
  {
    swift_once();
  }

  v35 = sub_10076D3DC();
  sub_10000A61C(v35, qword_1009A17F8);
  v11 = [a4 traitCollection];
  v44 = a4;
  v12 = v11;
  v13 = sub_100770B3C();

  sub_1007636CC();
  v14 = sub_10076C04C();
  v49[3] = v14;
  v15 = sub_10036ADFC(&qword_100943230, &type metadata accessor for Feature);
  v34[1] = a1;
  v16 = v15;
  v49[4] = v15;
  v17 = sub_10000DB7C(v49);
  v18 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v19 = *(*(v14 - 8) + 104);
  v19(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
  v20 = v13;
  v34[0] = v10;
  v21 = v20;
  sub_10076C90C();
  sub_10000CD74(v49);
  v36 = v21;
  sub_10076996C();
  sub_10076994C();
  v22 = *(v45 + 8);
  v45 += 8;
  v22(v9, v43);
  if (qword_100940E08 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v35, qword_1009A1810);
  v23 = [v44 traitCollection];
  v24 = sub_100770B3C();

  sub_1007636BC();
  v48[3] = v14;
  v48[4] = v16;
  v25 = sub_10000DB7C(v48);
  v19(v25, v18, v14);
  v26 = v24;
  sub_10076C90C();
  sub_10000CD74(v48);
  sub_10076996C();
  sub_10076994C();
  v22(v9, v43);
  if (qword_1009401C0 != -1)
  {
    swift_once();
  }

  v27 = v38;
  v28 = sub_10000A61C(v38, qword_10099F0D0);
  (*(v37 + 16))(v39, v28, v27);
  sub_10000A570(v49, v47);
  sub_10000A570(v48, v46);
  v29 = v40;
  sub_10076719C();
  sub_10036ADFC(&qword_100954110, &type metadata accessor for PrivacyDefinitionLayout);
  v30 = v42;
  sub_10076D2AC();
  v32 = v31;

  (*(v41 + 8))(v29, v30);
  sub_10000CD74(v48);
  sub_10000CD74(v49);
  return v32;
}

uint64_t sub_10036ADFC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10036AE44()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView;
  *&v0[v3] = [objc_allocWithZone(UIView) init];
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView;
  v6 = *&v4[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemBlueColor];
  [v8 setBackgroundColor:v9];

  v10 = [*&v4[v5] layer];
  [v10 setCornerRadius:20.0];

  v11 = [*&v4[v5] layer];
  [v11 setCornerCurve:kCACornerCurveCircular];

  [v4 addSubview:*&v4[v5]];
  v12 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label;
  v13 = *&v4[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label];
  v14 = [v7 whiteColor];
  [v13 setTextColor:v14];

  v15 = *&v4[v12];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 systemFontOfSize:32.0];
  [v17 setFont:v18];

  v19 = *&v4[v12];
  v23._object = 0x80000001007D8160;
  v23._countAndFlagsBits = 0xD00000000000001FLL;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_1007622EC(v23, v24);
  v20 = sub_10076FF6C();

  [v19 setText:v20];

  [v4 addSubview:*&v4[v12]];
  return v4;
}

id sub_10036B1C4()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label];
  [v2 sizeToFit];
  [v2 frame];
  Width = CGRectGetWidth(v6);
  [v2 frame];
  return [v2 setFrame:{20.0, 5.0, Width, CGRectGetHeight(v7)}];
}

uint64_t sub_10036B4F0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100610988(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10024D484();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_100761D3C();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_1001E2550(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_10036B5D8(uint64_t a1)
{
  v47 = sub_10075EBAC();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076B96C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000FD634(_swiftEmptyArrayStorage);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v12 = *(v1 + 48);
  v45 = *(v1 + 56);
  v46 = v12;
  ObjectType = swift_getObjectType();
  v15 = *(v7 + 16);
  v14 = v7 + 16;
  v43 = v15;
  v44 = ObjectType;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v37 = *(v14 + 56);
  v38 = v14;
  v39 = (v14 - 8);
  v40 = (v3 + 8);
  v41 = v9;
  v42 = v6;
  while (1)
  {
    v48 = v11;
    v43(v9, v16, v6);
    sub_10075EE2C();
    swift_getObjectType();
    sub_10075ED1C();
    swift_unknownObjectRelease();
    v17 = sub_10076B92C();
    v19 = v18;
    v20 = v5;
    v21 = sub_10075EB5C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v10;
    v24 = sub_100561E0C(v17, v19);
    v25 = v10[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v10[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v20;
        if (v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10024C568();
        v5 = v20;
        if (v28)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1002478B0(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_100561E0C(v17, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_19;
      }

      v24 = v29;
      v5 = v20;
      if (v28)
      {
LABEL_3:

        v10 = v49;
        *(v49[7] + v24) = v21 & 1;
        (*v40)(v5, v47);
        v9 = v41;
        v6 = v42;
        (*v39)(v41, v42);
        goto LABEL_4;
      }
    }

    v10 = v49;
    v49[(v24 >> 6) + 8] |= 1 << v24;
    v31 = (v10[6] + 16 * v24);
    *v31 = v17;
    v31[1] = v19;
    *(v10[7] + v24) = v21 & 1;
    (*v40)(v5, v47);
    v9 = v41;
    v6 = v42;
    (*v39)(v41, v42);
    v32 = v10[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_18;
    }

    v10[2] = v34;
LABEL_4:
    v16 += v37;
    v11 = v48 - 1;
    if (v48 == 1)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1007716DC();
  __break(1u);
  return result;
}

uint64_t sub_10036B988(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v128 = a6;
  v127 = a5;
  v126 = a4;
  v139 = a3;
  v131 = a2;
  v156 = a1;
  v151 = *v6;
  v122 = sub_10076F08C();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10076F0CC();
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_10076F0EC();
  v132 = *(v130 - 8);
  __chkstk_darwin(v130);
  v116 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v129 = &v115 - v11;
  v12 = sub_10000A5D4(&qword_100954228);
  __chkstk_darwin(v12 - 8);
  v136 = &v115 - v13;
  v149 = sub_10076CE0C();
  v143 = *(v149 - 8);
  __chkstk_darwin(v149);
  v140 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_100761D3C();
  v153 = *(v142 - 8);
  __chkstk_darwin(v142);
  v134 = v15;
  v141 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&qword_100954218);
  __chkstk_darwin(v16 - 8);
  v124 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v137 = &v115 - v19;
  v20 = sub_10000A5D4(&qword_100954220);
  __chkstk_darwin(v20 - 8);
  v123 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v133 = &v115 - v23;
  v24 = sub_10076FD4C();
  v155 = *(v24 - 8);
  __chkstk_darwin(v24);
  v125 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v152 = &v115 - v27;
  v28 = sub_10000A5D4(&qword_100954230);
  __chkstk_darwin(v28 - 8);
  v150 = (&v115 - v29);
  v30 = sub_10076902C();
  v157 = *(v30 - 8);
  v158 = v30;
  __chkstk_darwin(v30);
  v138 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v147 = &v115 - v33;
  __chkstk_darwin(v34);
  v135 = &v115 - v35;
  if (qword_1009412F8 != -1)
  {
    swift_once();
  }

  v154 = sub_10000A61C(v24, qword_1009A2630);
  v36 = sub_10000A5D4(&unk_100942A60);
  v37 = *(sub_10076F33C() - 8);
  v38 = *(v37 + 72);
  v39 = *(v37 + 80);
  v146 = 4 * v38;
  v144 = v36;
  *(swift_allocObject() + 16) = xmmword_100788B20;
  sub_10076F31C();
  sub_10076F27C();
  v159 = v6;
  sub_10076F27C();
  v145 = 3 * v38;
  v40 = v156;
  v41 = sub_100761D2C();
  *(&v162 + 1) = &type metadata for String;
  *&aBlock = v41;
  *(&aBlock + 1) = v42;
  v43 = v154;
  sub_10076F30C();
  sub_10000CFBC(&aBlock, &unk_1009434C0);
  sub_10076FBCC();

  v44 = v150;
  sub_100420CD0(v40, v150);
  v46 = v157;
  v45 = v158;
  v47 = v157[6](v44, 1, v158);
  v148 = v24;
  if (v47 == 1)
  {
    v133 = v39;
    v135 = ((v39 + 32) & ~v39);
    v137 = (2 * v38);
    v115 = v38;
    v48 = v40;
    sub_10000CFBC(v44, &qword_100954230);
    v150 = sub_10000A5D4(&qword_100954238);
    v49 = sub_10076FCEC();
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = v153;
    v52 = v153 + 16;
    v53 = v141;
    v54 = v142;
    v151 = *(v153 + 16);
    v151(v141, v48, v142);
    v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v134 += v55;
    v56 = swift_allocObject();
    *(v56 + 16) = v50;
    *(v56 + 24) = v49;
    v57 = *(v51 + 32);
    v153 = v51 + 32;
    (v57)(v56 + v55, v53, v54);
    v152 = v49;

    v58 = v136;
    sub_10027F0CC(v136);
    v59 = v143;
    v60 = v149;
    if ((*(v143 + 48))(v58, 1, v149) == 1)
    {
      sub_10000CFBC(v58, &qword_100954228);
      v61 = sub_10076189C();
      (*(*(v61 - 8) + 56))(v123, 1, 1, v61);
      v62 = enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
      v63 = sub_1007681AC();
      v64 = *(v63 - 8);
      v65 = v124;
      (*(v64 + 104))(v124, v62, v63);
      (*(v64 + 56))(v65, 0, 1, v63);
      sub_10076900C();
      v66 = v125;
      v67 = v148;
      (*(v155 + 16))(v125, v154, v148);
      *(swift_allocObject() + 16) = xmmword_1007844F0;
      sub_10076F31C();
      sub_10076F27C();
      sub_10076F27C();
      *(&v162 + 1) = v54;
      v68 = sub_10000DB7C(&aBlock);
      v151(v68, v156, v54);
      sub_10076F30C();
      sub_10000CFBC(&aBlock, &unk_1009434C0);
      sub_10076F27C();
      if (v139)
      {
        v69 = 0;
        v70 = 0;
        *(&aBlock + 1) = 0;
        *&v162 = 0;
      }

      else
      {
        v70 = &type metadata for Double;
        v69 = v131;
      }

      *&aBlock = v69;
      *(&v162 + 1) = v70;
      sub_10076F30C();
      sub_10000CFBC(&aBlock, &unk_1009434C0);
      sub_10076FBEC();

      (*(v155 + 8))(v66, v67);
      v111 = v157;
      v110 = v158;
      v112 = v138;
      v157[2](v147, v138, v158);
      v113 = sub_10076FC8C();

      (v111[1])(v112, v110);
      return v113;
    }

    else
    {
      v157 = v57;
      v158 = v52;
      (*(v59 + 32))(v140, v58, v60);
      v78 = v159;
      v79 = sub_10076CE2C();
      v80 = v59;
      if ((v139 & 1) == 0)
      {
        v155 = v56;
        v81 = v131;
        v150 = v78[2];
        v82 = v116;
        sub_10076F0DC();
        sub_10076F15C();
        v83 = *(v132 + 8);
        v132 += 8;
        v154 = v83;
        v83(v82, v130);
        v84 = swift_allocObject();
        swift_weakInit();
        v85 = v141;
        v86 = v142;
        v151(v141, v156, v142);
        v87 = (v134 + 7) & 0xFFFFFFFFFFFFFFF8;
        v88 = swift_allocObject();
        *(v88 + 16) = v152;
        *(v88 + 24) = v84;
        (v157)(v88 + v55, v85, v86);
        *(v88 + v87) = v79;
        *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v81;
        v163 = sub_100371200;
        v164 = v88;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v162 = sub_10009AEDC;
        *(&v162 + 1) = &unk_1008925A8;
        v89 = _Block_copy(&aBlock);

        v90 = v117;
        sub_10076F0AC();
        v160 = _swiftEmptyArrayStorage;
        sub_10037113C(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
        sub_10000A5D4(&unk_10094E1C0);
        sub_100048C98(&qword_100945170, &unk_10094E1C0);
        v91 = v119;
        v92 = v122;
        sub_1007712CC();
        v93 = v129;
        sub_10077064C();
        _Block_release(v89);
        (*(v121 + 8))(v91, v92);
        v94 = v90;
        v80 = v143;
        (*(v118 + 8))(v94, v120);
        v154(v93, v130);
      }

      v95 = v152;

      sub_10000A5D4(&qword_100954210);
      sub_10076ACAC();

      v96 = aBlock;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v96;
      v98 = sub_10024B04C(v79, v95, v156, isUniquelyReferenced_nonNull_native);
      v99 = aBlock;
      __chkstk_darwin(v98);
      *(&v115 - 2) = v99;

      sub_10076ACCC();

      (*(v80 + 8))(v140, v149);
    }
  }

  else
  {
    v71 = v45;
    v72 = v135;
    v46[4](v135, v44, v71);
    v73 = v24;
    v74 = v72;
    (*(v155 + 16))(v152, v43, v73);
    *(swift_allocObject() + 16) = xmmword_100783DE0;
    sub_10076F31C();
    sub_10076F27C();
    sub_10076F27C();
    sub_10076F27C();
    v75 = v133;
    sub_10076901C();
    v76 = sub_10076189C();
    v77 = *(v76 - 8);
    if ((*(v77 + 48))(v75, 1, v76) == 1)
    {
      sub_10000CFBC(v75, &qword_100954220);
      aBlock = 0u;
      v162 = 0u;
    }

    else
    {
      v100 = sub_10076188C();
      *(&v162 + 1) = &type metadata for String;
      *&aBlock = v100;
      *(&aBlock + 1) = v101;
      (*(v77 + 8))(v75, v76);
    }

    sub_10076F30C();
    sub_10000CFBC(&aBlock, &unk_1009434C0);
    sub_10076F27C();
    v102 = v137;
    sub_100768FFC();
    v103 = sub_1007681AC();
    v104 = *(v103 - 8);
    if ((*(v104 + 48))(v102, 1, v103) == 1)
    {
      sub_10000CFBC(v102, &qword_100954218);
      aBlock = 0u;
      v162 = 0u;
    }

    else
    {
      *(&v162 + 1) = v103;
      v105 = sub_10000DB7C(&aBlock);
      (*(v104 + 32))(v105, v102, v103);
    }

    sub_10076F30C();
    sub_10000CFBC(&aBlock, &unk_1009434C0);
    v106 = v148;
    v107 = v152;
    sub_10076FBCC();

    (*(v155 + 8))(v107, v106);
    sub_10000A5D4(&qword_100954238);
    v109 = v157;
    v108 = v158;
    v157[2](v147, v74, v158);
    v95 = sub_10076FC8C();
    (v109[1])(v74, v108);
  }

  return v95;
}

uint64_t sub_10036CEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a1;
  v7 = sub_10076F08C();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F0CC();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100761D3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = *(result + 16);

    (*(v14 + 16))(&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
    v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    v26 = v12;
    v21 = v7;
    *(v20 + 16) = v28;
    *(v20 + 24) = a3;
    (*(v14 + 32))(v20 + v18, v16, v13);
    *(v20 + v19) = v29;
    aBlock[4] = sub_100370FF0;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_1008925F8;
    v22 = _Block_copy(aBlock);

    v23 = v26;
    sub_10076F0AC();
    v33 = _swiftEmptyArrayStorage;
    sub_10037113C(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0);
    sub_100048C98(&qword_100945170, &unk_10094E1C0);
    sub_1007712CC();
    v24 = v27;
    sub_10077069C();
    _Block_release(v22);

    (*(v32 + 8))(v9, v21);
    (*(v30 + 8))(v23, v31);
  }

  return result;
}

uint64_t sub_10036D2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v124 = a4;
  v131 = a3;
  v5 = sub_10076CFDC();
  v134 = *(v5 - 8);
  __chkstk_darwin(v5);
  v112 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10000A5D4(&qword_100954240);
  __chkstk_darwin(v119);
  v123 = v102 - v7;
  v8 = sub_1007681AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v120 = v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100954218);
  __chkstk_darwin(v11 - 8);
  v13 = v102 - v12;
  v14 = sub_10000A5D4(&qword_100954220);
  __chkstk_darwin(v14 - 8);
  v127 = v102 - v15;
  v16 = sub_10076902C();
  v129 = *(v16 - 8);
  __chkstk_darwin(v16);
  v128 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100761D3C();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v116 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076B96C();
  __chkstk_darwin(v19 - 8);
  v115 = v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076189C();
  v125 = *(v21 - 8);
  v126 = v21;
  __chkstk_darwin(v21);
  v118 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000A5D4(&qword_100954248);
  __chkstk_darwin(v23 - 8);
  v117 = v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v130 = v102 - v26;
  __chkstk_darwin(v27);
  v122 = v102 - v28;
  __chkstk_darwin(v29);
  v121 = v102 - v30;
  __chkstk_darwin(v31);
  v33 = v102 - v32;
  v34 = sub_10076FD4C();
  v133 = *(v34 - 8);
  __chkstk_darwin(v34);
  v132 = v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10076FC3C();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v37 = result;
      v103 = v5;
      v106 = v13;
      v107 = v9;
      v108 = v8;
      v109 = a1;

      sub_10000A5D4(&qword_100954210);
      sub_10076ACAC();

      v38 = sub_10036B4F0(v131);
      v39 = sub_100370BEC(v38);
      __chkstk_darwin(v39);

      sub_10076ACCC();

      v110 = sub_10076CD4C();
      if (qword_1009412F8 != -1)
      {
        swift_once();
      }

      v40 = sub_10000A61C(v34, qword_1009A2630);
      (*(v133 + 16))(v132, v40, v34);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_10079D810;
      v102[1] = v41;

      sub_10076F31C();
      v104 = v37;

      sub_10076F27C();
      sub_10076F27C();
      v42 = sub_10076CCDC();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v42;
      *(&v135 + 1) = v43;
      sub_10076F30C();
      sub_10000CFBC(&v135, &unk_1009434C0);
      sub_10076F27C();
      v44 = sub_10076CD0C();
      if (v45)
      {
        v46 = &type metadata for String;
      }

      else
      {
        v44 = 0;
        v46 = 0;
        *&v136 = 0;
      }

      *&v135 = v44;
      *(&v135 + 1) = v45;
      *(&v136 + 1) = v46;
      sub_10076F30C();
      sub_10000CFBC(&v135, &unk_1009434C0);
      sub_10076F27C();
      v47 = sub_10076CD7C();
      v105 = v16;
      if (v48)
      {
        v49 = &type metadata for String;
      }

      else
      {
        v47 = 0;
        v49 = 0;
        *&v136 = 0;
      }

      *&v135 = v47;
      *(&v135 + 1) = v48;
      *(&v136 + 1) = v49;
      sub_10076F30C();
      sub_10000CFBC(&v135, &unk_1009434C0);
      sub_10076F27C();
      v50 = sub_10076CD5C();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v50;
      *(&v135 + 1) = v51;
      sub_10076F30C();
      sub_10000CFBC(&v135, &unk_1009434C0);
      sub_10076F27C();
      v52 = sub_10076CD2C();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v52;
      *(&v135 + 1) = v53;
      sub_10076F30C();
      sub_10000CFBC(&v135, &unk_1009434C0);
      sub_10076F27C();
      sub_10076CD1C();
      v54 = v134;
      v55 = *(v134 + 48);
      v56 = v103;
      if (v55(v33, 1, v103) == 1)
      {
        sub_10000CFBC(v33, &qword_100954248);
        v135 = 0u;
        v136 = 0u;
      }

      else
      {
        *(&v136 + 1) = v56;
        v57 = sub_10000DB7C(&v135);
        (*(v54 + 32))(v57, v33, v56);
      }

      sub_10076F30C();
      sub_10000CFBC(&v135, &unk_1009434C0);
      sub_10076F27C();
      v58 = v110;
      if (v110)
      {
        v59 = sub_10000A5D4(&qword_100954258);
      }

      else
      {
        v59 = 0;
        *(&v135 + 1) = 0;
        *&v136 = 0;
      }

      *&v135 = v58;
      *(&v136 + 1) = v59;

      sub_10076F30C();
      sub_10000CFBC(&v135, &unk_1009434C0);
      sub_10076F27C();
      v60 = sub_10076CCFC();
      v111 = v55;
      if (v61)
      {
        v62 = &type metadata for String;
      }

      else
      {
        v60 = 0;
        v62 = 0;
        *&v136 = 0;
      }

      *&v135 = v60;
      *(&v135 + 1) = v61;
      *(&v136 + 1) = v62;
      sub_10076F30C();
      sub_10000CFBC(&v135, &unk_1009434C0);
      sub_10076F27C();
      v63 = sub_10076CD8C();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v63;
      *(&v135 + 1) = v64;
      sub_10076F30C();
      sub_10000CFBC(&v135, &unk_1009434C0);
      v65 = v132;
      sub_10076FBCC();

      (*(v133 + 8))(v65, v34);
      v66 = v121;
      sub_10076CD1C();
      if (v111(v66, 1, v56) != 1)
      {

        sub_10000CFBC(v66, &qword_100954248);
        v68 = v122;
        v69 = v123;
        v70 = v134;
LABEL_24:
        sub_10076CD1C();
        v71 = v130;
        (*(v70 + 104))(v130, enum case for AppStoreAdUnfilledReason.policyAdDrop(_:), v56);
        (*(v70 + 56))(v71, 0, 1, v56);
        v72 = *(v119 + 48);
        sub_1003710CC(v68, v69);
        sub_1003710CC(v71, v69 + v72);
        v73 = v111;
        if (v111(v69, 1, v56) == 1)
        {
          sub_10000CFBC(v71, &qword_100954248);
          sub_10000CFBC(v68, &qword_100954248);
          v74 = v73(v69 + v72, 1, v56);
          v76 = v125;
          v75 = v126;
          if (v74 == 1)
          {
            sub_10000CFBC(v69, &qword_100954248);
LABEL_40:
            v78 = &enum case for OnDeviceAdFetchFailReason.policyAdDrop(_:);
            goto LABEL_41;
          }
        }

        else
        {
          v77 = v117;
          sub_1003710CC(v69, v117);
          if (v73(v69 + v72, 1, v56) != 1)
          {
            v93 = v69 + v72;
            v94 = v112;
            (*(v70 + 32))(v112, v93, v56);
            sub_10037113C(&qword_100954250, &type metadata accessor for AppStoreAdUnfilledReason);
            v95 = sub_10076FF1C();
            v96 = *(v70 + 8);
            v96(v94, v56);
            sub_10000CFBC(v130, &qword_100954248);
            sub_10000CFBC(v68, &qword_100954248);
            v96(v77, v56);
            sub_10000CFBC(v69, &qword_100954248);
            v76 = v125;
            v75 = v126;
            if (v95)
            {
              goto LABEL_40;
            }

LABEL_30:
            v78 = &enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
LABEL_41:
            v97 = v107;
            v98 = v120;
            v99 = v108;
            (*(v107 + 104))(v120, *v78, v108);
            sub_10076CD2C();
            sub_10076CD7C();
            (*(v76 + 56))(v127, 1, 1, v75);
            v100 = v106;
            (*(v97 + 16))(v106, v98, v99);
            (*(v97 + 56))(v100, 0, 1, v99);
            v101 = v128;
            sub_10076900C();
            sub_10076FCBC();

            (*(v129 + 8))(v101, v105);
            return (*(v97 + 8))(v98, v99);
          }

          sub_10000CFBC(v130, &qword_100954248);
          sub_10000CFBC(v68, &qword_100954248);
          (*(v70 + 8))(v77, v56);
          v76 = v125;
          v75 = v126;
        }

        sub_10000CFBC(v69, &qword_100954240);
        goto LABEL_30;
      }

      sub_10000CFBC(v66, &qword_100954248);
      sub_10076CD5C();
      v67 = sub_10077002C();

      v68 = v122;
      v69 = v123;
      v70 = v134;
      if (v67)
      {

        goto LABEL_24;
      }

      v79 = sub_10076CCDC();
      v133 = v80;
      v134 = v79;
      v81 = sub_10076CD0C();
      if (v82)
      {
        v83 = v81;
      }

      else
      {
        v83 = 0;
      }

      v132 = v83;
      if (v82)
      {
        v84 = v82;
      }

      else
      {
        v84 = 0xE000000000000000;
      }

      v130 = v84;
      sub_10076CD5C();
      sub_10076B94C();
      (*(v113 + 16))(v116, v131, v114);
      sub_10076CD8C();
      sub_10076CCFC();
      sub_10076CCEC();
      sub_10076CD6C();
      sub_10076CD3C();
      v85 = v118;
      sub_10076187C();
      sub_10076CD2C();
      sub_10076CD7C();
      v86 = v125;
      v87 = v127;
      v88 = v85;
      v89 = v126;
      (*(v125 + 16))(v127, v88, v126);
      (*(v86 + 56))(v87, 0, 1, v89);
      (*(v107 + 56))(v106, 1, 1, v108);
      v90 = v128;
      sub_10076900C();
      sub_10076FCBC();
      (*(v129 + 8))(v90, v105);
      v91 = sub_10076CD7C();
      if (v92)
      {
        __chkstk_darwin(v91);
        sub_10076ACCC();

        (*(v86 + 8))(v118, v89);
      }

      else
      {

        return (*(v86 + 8))(v118, v89);
      }
    }
  }

  return result;
}

uint64_t sub_10036E6C8(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_10076F08C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10076F0CC();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100761D3C();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10076F0EC();
  v13 = *(v51 - 8);
  __chkstk_darwin(v51);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;

  sub_10000A5D4(&qword_100954210);
  sub_10076ACAC();

  v19 = aBlock;
  if (aBlock[2] && (v20 = sub_100610988(a1), (v21 & 1) != 0))
  {
    v45 = v7;
    v22 = (v19[7] + 16 * v20);
    v23 = v22[1];
    v46 = *v22;

    swift_retain_n();

    v24 = sub_10076FC3C();

    if ((v24 & 1) == 0)
    {
      v42 = *(v3 + 16);
      sub_10076F0DC();
      sub_10076F15C();
      v43 = *(v13 + 8);
      v44 = v13 + 8;
      v43(v15, v51);
      v29 = swift_allocObject();
      swift_weakInit();
      v41 = v6;
      v30 = v52;
      v31 = a1;
      v32 = v53;
      (*(v52 + 16))(&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v53);
      v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v34 = (v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      *(v35 + 16) = v23;
      *(v35 + 24) = v29;
      (*(v30 + 32))(v35 + v33, v12, v32);
      *(v35 + v34) = v46;
      *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
      v59 = sub_100370BD0;
      v60 = v35;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_10009AEDC;
      v58 = &unk_100892530;
      v36 = _Block_copy(&aBlock);

      v37 = v47;
      sub_10076F0AC();
      v54 = _swiftEmptyArrayStorage;
      sub_10037113C(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000A5D4(&unk_10094E1C0);
      sub_100048C98(&qword_100945170, &unk_10094E1C0);
      v38 = v49;
      v39 = v41;
      sub_1007712CC();
      sub_10077064C();
      _Block_release(v36);

      (*(v45 + 8))(v38, v39);
      (*(v48 + 8))(v37, v50);
      v43(v18, v51);
    }
  }

  else
  {
  }

  if (qword_1009412F8 != -1)
  {
    swift_once();
  }

  v25 = sub_10076FD4C();
  sub_10000A61C(v25, qword_1009A2630);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100788B20;
  sub_10076F31C();
  v58 = &type metadata for String;
  aBlock = 0xD000000000000031;
  v56 = 0x80000001007E11A0;
  sub_10076F32C();
  sub_10000CFBC(&aBlock, &unk_1009434C0);
  sub_10076F27C();
  v26 = v53;
  v58 = v53;
  v27 = sub_10000DB7C(&aBlock);
  (*(v52 + 16))(v27, a1, v26);
  sub_10076F32C();
  sub_10000CFBC(&aBlock, &unk_1009434C0);
  sub_10076FBCC();
}

uint64_t sub_10036EE6C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10076CFEC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076FD4C();
  v54 = *(v13 - 8);
  __chkstk_darwin(v13);
  v53 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&qword_100954218);
  __chkstk_darwin(v15 - 8);
  v17 = v44 - v16;
  v18 = sub_10000A5D4(&qword_100954220);
  __chkstk_darwin(v18 - 8);
  v20 = v44 - v19;
  v21 = sub_10076902C();
  v50 = *(v21 - 8);
  v51 = v21;
  __chkstk_darwin(v21);
  v52 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10076FC3C();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v45 = v13;
      v46 = v12;
      v47 = v10;
      v48 = v9;
      v49 = a1;

      sub_10000A5D4(&qword_100954210);
      sub_10076ACAC();

      v24 = sub_10036B4F0(a4);
      v25 = sub_100370BEC(v24);
      v26 = v55;
      __chkstk_darwin(v25);
      *&v44[-2] = v26;

      sub_10076ACCC();

      sub_10076CFAC();
      sub_10076CFCC();
      v27 = sub_10076189C();
      (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
      v28 = enum case for OnDeviceAdFetchFailReason.timeout(_:);
      v29 = sub_1007681AC();
      v30 = *(v29 - 8);
      v44[1] = a5;
      v31 = v30;
      (*(v30 + 104))(v17, v28, v29);
      (*(v31 + 56))(v17, 0, 1, v29);
      sub_10076900C();
      if (qword_1009412F8 != -1)
      {
        swift_once();
      }

      v32 = v45;
      v33 = sub_10000A61C(v45, qword_1009A2630);
      (*(v54 + 16))(v53, v33, v32);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_10078B310;

      sub_10076F31C();

      sub_10076F27C();
      sub_10076F27C();
      v58 = &type metadata for Double;
      v55 = a2;
      sub_10076F30C();
      sub_10000CFBC(&v55, &unk_1009434C0);
      sub_10076F27C();
      *&v34 = COERCE_DOUBLE(sub_10076CFCC());
      if (v35)
      {
        v36 = &type metadata for String;
      }

      else
      {
        *&v34 = 0.0;
        v36 = 0;
        v57 = 0;
      }

      v55 = *&v34;
      v56 = v35;
      v58 = v36;
      sub_10076F30C();
      sub_10000CFBC(&v55, &unk_1009434C0);
      sub_10076F27C();
      *&v37 = COERCE_DOUBLE(sub_10076CFAC());
      v58 = &type metadata for String;
      v55 = *&v37;
      v56 = v38;
      sub_10076F30C();
      sub_10000CFBC(&v55, &unk_1009434C0);
      v39 = v53;
      sub_10076FBCC();

      (*(v54 + 8))(v39, v32);
      v41 = v46;
      v40 = v47;
      v42 = v48;
      (*(v47 + 104))(v46, enum case for AppStoreTaskCancelReason.slaMiss(_:), v48);
      sub_10076CFBC();
      (*(v40 + 8))(v41, v42);
      v43 = v52;
      sub_10076FCBC();

      return (*(v50 + 8))(v43, v51);
    }
  }

  return result;
}

uint64_t sub_10036F5F4()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_10036F6E4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void, void, void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v107 = a8;
  v93 = a7;
  v106 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v86 = a2;
  v92 = a1;
  v105 = a9;
  v110 = sub_10000A5D4(&qword_100954260);
  __chkstk_darwin(v110);
  v109 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v82 - v11;
  v12 = sub_10000A5D4(&qword_100954228);
  __chkstk_darwin(v12 - 8);
  v97 = &v82 - v13;
  v116 = sub_10076127C();
  v114 = *(v116 - 1);
  __chkstk_darwin(v116);
  v113 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v96 = &v82 - v16;
  v17 = sub_10076CE0C();
  v98 = *(v17 - 8);
  __chkstk_darwin(v17);
  v115 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v108 = &v82 - v20;
  __chkstk_darwin(v21);
  v85 = &v82 - v22;
  __chkstk_darwin(v23);
  v101 = &v82 - v24;
  __chkstk_darwin(v25);
  v111 = &v82 - v26;
  __chkstk_darwin(v27);
  v112 = &v82 - v28;
  v104 = sub_10077067C();
  v29 = *(v104 - 1);
  __chkstk_darwin(v104);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10077063C();
  __chkstk_darwin(v32);
  v33 = sub_10076F0CC();
  __chkstk_darwin(v33 - 8);
  v103 = sub_100085204();
  sub_10076F0AC();
  v117 = _swiftEmptyArrayStorage;
  v102 = sub_10037113C(&qword_10094D780, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A5D4(&qword_10094D788);
  sub_100048C98(&qword_10094D790, &qword_10094D788);
  sub_1007712CC();
  (*(v29 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v104);
  v34 = sub_1007706AC();
  v35 = v90;
  v90[2] = v34;
  v117 = sub_1000FE524(_swiftEmptyArrayStorage);
  sub_10000A5D4(&qword_100954268);
  swift_allocObject();
  v35[3] = sub_10076ACBC();
  sub_10076CE4C();
  v36 = sub_10076CE3C();
  v37 = v105;
  v38 = v106;
  v35[4] = v36;
  v35[5] = v38;
  v35[6] = v107;
  v35[7] = v37;
  v39 = objc_opt_self();

  swift_unknownObjectRetain();
  v40 = v111;
  [v39 setContextPrefetchLimit:v89];
  v117 = _swiftEmptyArrayStorage;
  v41 = sub_10037113C(&qword_100954270, &type metadata accessor for AppStoreConfig);
  sub_10000A5D4(&qword_100954278);
  sub_100048C98(&qword_100954280, &qword_100954278);
  sub_1007712CC();
  if (sub_10076132C())
  {
    v42 = v101;
    sub_10076CDFC();
    sub_10038C830(v40, v42);
    v43 = *(v98 + 8);
    v43(v42, v17);
    v43(v40, v17);
  }

  v44 = sub_10076129C();
  v45 = *(v44 + 16);
  v46 = v92;
  v107 = v41;
  if (v45)
  {
    v106 = *(v114 + 16);
    v47 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v82 = v44;
    v48 = v44 + v47;
    v105 = *(v114 + 72);
    v104 = (v114 + 88);
    LODWORD(v103) = enum case for ASKBagContract.AdPlacementBagValue.searchLanding(_:);
    v95 = enum case for ASKBagContract.AdPlacementBagValue.searchResults(_:);
    v94 = enum case for ASKBagContract.AdPlacementBagValue.today(_:);
    v91 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMAL(_:);
    v84 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMALDuringDownload(_:);
    v114 += 16;
    v102 = (v114 - 8);
    v101 = (v98 + 56);
    v100 = (v98 + 48);
    v99 = (v98 + 32);
    v49 = _swiftEmptyArrayStorage;
    v50 = v97;
    v51 = v116;
    v52 = v96;
    v53 = v113;
    while (1)
    {
      v54 = v106;
      v106(v52, v48, v51);
      v54(v53, v52, v51);
      v55 = (*v104)(v53, v51);
      if (v55 == v103)
      {
        sub_10076CDFC();
        (*v102)(v52, v51);
        (*v101)(v50, 0, 1, v17);
      }

      else if (v55 == v95)
      {
        v52 = v96;
        (*v102)(v96, v116);
        (*v101)(v50, 1, 1, v17);
      }

      else
      {
        v52 = v96;
        if (v55 == v94)
        {
          sub_10076CDCC();
        }

        else if (v55 == v91)
        {
          sub_10076CDDC();
        }

        else
        {
          if (v55 != v84)
          {
            v59 = *v102;
            v60 = v116;
            (*v102)(v96, v116);
            (*v101)(v97, 1, 1, v17);
            v59(v113, v60);
            v50 = v97;
            goto LABEL_18;
          }

          sub_10076CDEC();
        }

        (*v102)(v52, v116);
        (*v101)(v50, 0, 1, v17);
      }

LABEL_18:
      if ((*v100)(v50, 1, v17) == 1)
      {
        sub_10000CFBC(v50, &qword_100954228);
      }

      else
      {
        v56 = *v99;
        (*v99)(v108, v50, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_10049E6D4(0, *(v49 + 2) + 1, 1, v49);
        }

        v58 = *(v49 + 2);
        v57 = *(v49 + 3);
        if (v58 >= v57 >> 1)
        {
          v49 = sub_10049E6D4(v57 > 1, v58 + 1, 1, v49);
        }

        *(v49 + 2) = v58 + 1;
        v56(&v49[((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v58], v108, v17);
        v50 = v97;
      }

      v48 += v105;
      --v45;
      v51 = v116;
      if (!v45)
      {

        v46 = v92;
        goto LABEL_27;
      }
    }
  }

  v49 = _swiftEmptyArrayStorage;
LABEL_27:
  v61 = *(v49 + 2);
  v62 = v85;
  if (v61)
  {
    v63 = *(v98 + 16);
    v64 = &v49[(*(v98 + 80) + 32) & ~*(v98 + 80)];
    v105 = *(v98 + 72);
    v116 = (v98 + 8);
    v103 = v49;
    v104 = (v98 + 32);
    v65 = v110;
    v66 = v111;
    v67 = v83;
    v108 = (v98 + 16);
    v106 = v63;
    do
    {
      v113 = v64;
      v114 = v61;
      v63(v62);
      (v63)(v66, v112, v17);
      sub_10077125C();
      sub_10037113C(&qword_100954288, &type metadata accessor for AppStoreConfig);
      v69 = sub_10076FF1C();
      v70 = *(v65 + 48);
      *v67 = (v69 & 1) == 0;
      v71 = v66;
      v72 = *v116;
      if (v69)
      {
        v72(v62, v17);
        (*v104)(&v67[v70], v115, v17);
      }

      else
      {
        v72(v115, v17);
        (v63)(&v67[v70], v62, v17);
        (v63)(v71, v62, v17);
        sub_10077129C();
        v72(v62, v17);
      }

      v68 = v109;
      sub_100371184(v67, v109);
      v65 = v110;
      v72((v68 + *(v110 + 48)), v17);
      v63 = v106;
      v64 = &v113[v105];
      v61 = v114 - 1;
      v66 = v111;
    }

    while (v114 != 1);

    v46 = v92;
  }

  else
  {
  }

  v73 = sub_1000FD520(_swiftEmptyArrayStorage);
  v120 = v73;
  v74 = sub_10076128C();
  v76 = v90;
  v77 = v86;
  if (v75)
  {
    v78 = v74;
    v79 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v73;
    sub_10024A448(0xD000000000000011, 0x80000001007E1340, 1752459639, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v120 = v117;
    sub_10009833C(v78, v79, 108, 0xE100000000000000);
  }

  sub_10076147C();
  sub_10076CE1C();

  swift_unknownObjectRelease();

  if (qword_1009412F8 != -1)
  {
    swift_once();
  }

  v116 = sub_10076FD4C();
  v115 = sub_10000A61C(v116, qword_1009A2630);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_10078B310;

  sub_10076F31C();

  sub_10076F27C();
  sub_10076F27C();
  v119 = &type metadata for String;
  v117 = v46;
  v118 = v77;
  sub_10076F30C();
  sub_10000CFBC(&v117, &unk_1009434C0);
  sub_10076F27C();
  v119 = &type metadata for String;
  v117 = v87;
  v118 = v88;
  sub_10076F30C();
  sub_10000CFBC(&v117, &unk_1009434C0);
  sub_10076F27C();
  v119 = &type metadata for Int;
  v117 = v89;
  sub_10076F30C();
  sub_10000CFBC(&v117, &unk_1009434C0);
  sub_10076FBCC();

  (*(v98 + 8))(v112, v17);
  return v76;
}

uint64_t sub_100370814(uint64_t a1)
{
  v2 = sub_10075DDBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100761D3C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076CC1C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 == enum case for AdPlacementType.searchLanding(_:))
  {
    v16 = &enum case for AppPlacementLocation.searchLanding(_:);
  }

  else if (v15 == enum case for AdPlacementType.searchResults(_:))
  {
    v16 = &enum case for AppPlacementLocation.searchResults(_:);
  }

  else if (v15 == enum case for AdPlacementType.today(_:))
  {
    v16 = &enum case for AppPlacementLocation.todayPage(_:);
  }

  else if (v15 == enum case for AdPlacementType.productPageYMAL(_:))
  {
    v16 = &enum case for AppPlacementLocation.productPage(_:);
  }

  else
  {
    if (v15 != enum case for AdPlacementType.productPageYMALDuringDownload(_:))
    {
      sub_10075DDAC();
      v19 = sub_10075DD8C();
      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
      return v19;
    }

    v16 = &enum case for AppPlacementLocation.downloadPage(_:);
  }

  v17 = *v16;
  v18 = sub_10076CC0C();
  (*(*(v18 - 8) + 104))(v14, v17, v18);
  (*(v11 + 104))(v14, enum case for AdType.app(_:), v10);
  sub_10076CCCC();
  sub_10076CCBC();
  v19 = sub_10076CCAC();

  (*(v11 + 8))(v14, v10);
  return v19;
}

uint64_t sub_100370B98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100370BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100370BEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100370C30()
{
  v1 = sub_100761D3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100370CFC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100761D3C() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10036CEFC(a1, a2, v6, v7, v8);
}

uint64_t sub_100370D84()
{
  v1 = sub_100761D3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100370E74()
{
  v1 = *(sub_100761D3C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_10036EE6C(v6, v5, v7, v0 + v2, v4);
}

uint64_t sub_100370F10()
{
  v1 = sub_100761D3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100370FF0()
{
  v1 = *(sub_100761D3C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10036D2EC(v3, v4, v0 + v2, v5);
}

uint64_t sub_100371080(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t sub_1003710CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100954248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037113C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100371184(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100954260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100371228()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076718C();
  sub_10000DB18(v4, qword_10099F0D0);
  v30 = sub_10000A61C(v4, qword_10099F0D0);
  if (qword_100940E00 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A17F8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v11 = v1 + 13;
  v29 = v1[13];
  v29(v3, enum case for FontSource.useCase(_:), v0);
  v28 = sub_10076D9AC();
  v40[3] = v28;
  v40[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v40);
  v38 = v0;
  v39 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v37);
  v27 = v1[2];
  v27(v12, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v25 = v1 + 1;
  v26 = v13;
  v13(v3, v0);
  if (qword_100940E08 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v5, qword_1009A1810);
  v22[0] = v8;
  v22[1] = v9;
  v8(v3, v14, v5);
  v15 = v29;
  v29(v3, v10, v0);
  v24 = v11;
  v16 = v28;
  v38 = v28;
  v39 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v37);
  v23 = v10;
  v35 = v0;
  v36 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v34);
  v18 = v27;
  v27(v17, v3, v0);
  sub_10076D9BC();
  v19 = v26;
  v26(v3, v0);
  (v22[0])(v3, v14, v5);
  v15(v3, v23, v0);
  v35 = v16;
  v36 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v34);
  *(&v32 + 1) = v0;
  v33 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(&v31);
  v18(v20, v3, v0);
  sub_10076D9BC();
  v19(v3, v0);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  return sub_10076717C();
}

uint64_t sub_10037173C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = sub_10076D1FC();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076718C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007671AC();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_1000ACA5C();
  sub_10076422C();

  if (qword_1009401C0 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v6, qword_10099F0D0);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_titleLabel];
  v28 = sub_1007626BC();
  v29 = &protocol witness table for UILabel;
  v26 = &protocol witness table for UILabel;
  v27 = v17;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_definitionLabel];
  v25 = v28;
  v24 = v18;
  v19 = v17;
  v20 = v18;
  sub_10076719C();
  sub_10076716C();
  (*(v3 + 8))(v5, v23);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for PrivacyDefinitionCollectionViewCell()
{
  result = qword_1009542C8;
  if (!qword_1009542C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100371BF0()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_100371C90()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10076771C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_itemLayoutContext;
  v8 = sub_10076341C();
  v9 = *(*(v8 - 8) + 56);
  v32 = v0;
  v9(&v0[v7], 1, 1, v8);
  if (qword_100940E00 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A17F8);
  v12 = *(v10 - 8);
  v29 = *(v12 + 16);
  v29(v6, v11, v10);
  v28 = *(v12 + 56);
  v28(v6, 0, 1, v10);
  v13 = enum case for DirectionalTextAlignment.none(_:);
  v14 = *(v2 + 104);
  v14(v31, enum case for DirectionalTextAlignment.none(_:), v1);
  v15 = sub_1007626BC();
  v27 = v1;
  v16 = v15;
  v17 = objc_allocWithZone(v15);
  *&v32[OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940E08 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v10, qword_1009A1810);
  v29(v6, v18, v10);
  v28(v6, 0, 1, v10);
  v14(v31, v13, v27);
  v19 = objc_allocWithZone(v16);
  v20 = sub_1007626AC();
  v21 = v32;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_definitionLabel] = v20;
  v33.receiver = v21;
  v33.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v24 = [v22 contentView];
  [v24 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_titleLabel]];

  v25 = [v22 contentView];
  [v25 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_definitionLabel]];

  return v22;
}

id sub_1003720DC(uint64_t a1, __int16 a2, char a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v7 = HIBYTE(a2);
  v8 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded;
  v5[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded] = a2 & 1;
  sub_1005F9288();
  v145 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isResponseExpanded;
  v5[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isResponseExpanded] = v7 & 1;
  sub_1005F9364();
  v9 = *&v5[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel];
  v10 = [v9 text];
  if (v10)
  {
    v11 = v10;
    v12 = sub_10076FF9C();
    v14 = v13;

    v15 = sub_10076BC5C();
    if (!v15)
    {
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v15 = sub_10076BC5C();
    if (!v15)
    {
      goto LABEL_22;
    }

    v14 = 0;
    v12 = 0;
  }

  v16 = v15;
  v17 = sub_100764D0C();
  v19 = v18;

  if (!v14)
  {
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (!v19)
  {
LABEL_17:

LABEL_18:
    v22 = sub_10076BC5C();
    if (v22)
    {
      v23 = v22;
      v24 = sub_100764CBC();
    }

    else
    {
      v24 = 0;
    }

    [v9 setAttributedText:v24];

    goto LABEL_22;
  }

  if (v12 == v17 && v14 == v19)
  {

    goto LABEL_22;
  }

  v21 = sub_10077167C();

  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  v25 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel];
  v26 = [v25 text];
  if (!v26)
  {
    sub_10076BC8C();
LABEL_32:
    if (!v32)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v27 = v26;
  v28 = sub_10076FF9C();
  v30 = v29;

  v31 = sub_10076BC8C();
  if (!v30)
  {
    goto LABEL_32;
  }

  if (!v32)
  {
LABEL_33:

LABEL_34:
    sub_10076BC8C();
    if (v35)
    {
      v36 = sub_10076FF6C();
    }

    else
    {
      v36 = 0;
    }

    [v25 setText:v36];

    goto LABEL_38;
  }

  if (v28 == v31 && v32 == v30)
  {

    goto LABEL_38;
  }

  v34 = sub_10077167C();

  if ((v34 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v37 = sub_10076BC6C();
  sub_100062020(v37);
  v38 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel];
  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    v41 = sub_10076FF9C();
    v43 = v42;

    v44 = sub_10076BC2C();
    if (!v44)
    {
      if (!v43)
      {
        goto LABEL_56;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v44 = sub_10076BC2C();
    if (!v44)
    {
      goto LABEL_56;
    }

    v43 = 0;
    v41 = 0;
  }

  v45 = v44;
  v46 = sub_100764D0C();
  v48 = v47;

  if (!v43)
  {
    if (!v48)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (!v48)
  {
LABEL_51:

LABEL_52:
    v49 = sub_10076BC2C();
    if (v49)
    {
      v50 = v49;
      v51 = sub_100764CBC();
    }

    else
    {
      v51 = 0;
    }

    [v38 setAttributedText:v51];

    goto LABEL_56;
  }

  if (v41 == v46 && v43 == v48)
  {

    goto LABEL_56;
  }

  v85 = sub_10077167C();

  if ((v85 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_56:
  v52 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel];
  v53 = [v52 text];
  if (v53)
  {
    v54 = v53;
    v55 = sub_10076FF9C();
    v57 = v56;

    v58 = sub_10076BC3C();
    if (!v58)
    {
      if (!v57)
      {
        goto LABEL_74;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v58 = sub_10076BC3C();
    if (!v58)
    {
      goto LABEL_74;
    }

    v57 = 0;
    v55 = 0;
  }

  v59 = v58;
  v60 = sub_100764D0C();
  v62 = v61;

  if (!v57)
  {
    if (!v62)
    {
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (!v62)
  {
LABEL_69:

LABEL_70:
    v63 = sub_10076BC3C();
    if (v63)
    {
      v64 = v63;
      v65 = sub_100764CBC();
    }

    else
    {
      v65 = 0;
    }

    [v52 setAttributedText:v65];

    goto LABEL_74;
  }

  if (v55 == v60 && v57 == v62)
  {

    goto LABEL_74;
  }

  v86 = sub_10077167C();

  if ((v86 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_74:
  v66 = sub_10076BC7C();
  if (!v66)
  {
    goto LABEL_109;
  }

  v67 = v66;
  v68 = sub_100764CBC();

  sub_10077077C();
  v69 = sub_100764D2C();
  sub_100764CCC();
  v70 = objc_allocWithZone(v69);
  v71 = sub_100764D3C();
  v72 = *(*&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel] + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_languageAwareString);
  if (v6[v8] != 1)
  {
    if (v72)
    {
      v78 = v72;
      v79 = sub_100764D0C();
      v81 = v80;

      v82 = sub_100764D0C();
      if (v81)
      {
        if (v79 == v82 && v81 == v83)
        {
          goto LABEL_97;
        }

        v84 = sub_10077167C();

        if (v84)
        {
          goto LABEL_108;
        }

LABEL_100:
        v91 = v71;
        sub_10073EC90(v71);

LABEL_106:
        goto LABEL_109;
      }
    }

    else
    {
      sub_100764D0C();
    }

    goto LABEL_100;
  }

  if (v72)
  {
    v73 = v72;
    v74 = sub_100764D0C();
    v76 = v75;

    v77 = sub_10076BC7C();
    if (!v77)
    {
      if (v76)
      {
        goto LABEL_104;
      }

      goto LABEL_108;
    }

    v143 = v74;
  }

  else
  {
    v77 = sub_10076BC7C();
    if (!v77)
    {
      goto LABEL_108;
    }

    v76 = 0;
    v143 = 0;
  }

  v87 = v77;
  v88 = sub_100764D0C();
  v90 = v89;

  if (v76)
  {
    if (v90)
    {
      if (v143 == v88 && v76 == v90)
      {
LABEL_97:

        goto LABEL_109;
      }

      v92 = sub_10077167C();

      if (v92)
      {
        goto LABEL_108;
      }

      goto LABEL_105;
    }

LABEL_104:

LABEL_105:
    v91 = sub_10076BC7C();
    sub_10073EC90(v91);

    goto LABEL_106;
  }

  if (v90)
  {
    goto LABEL_104;
  }

LABEL_108:

LABEL_109:
  if (!sub_10076BC9C())
  {
LABEL_118:
    v105 = v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse];
    v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse] = 0;
    sub_1005F9134(v105);
    [*&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel] setText:0];
    sub_10073CEFC(0, 0);
    goto LABEL_119;
  }

  v93 = sub_10076C3CC();
  if (!v93)
  {

    goto LABEL_118;
  }

  v94 = v93;
  v95 = sub_100764CBC();

  v96 = v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse];
  v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse] = 1;
  sub_1005F9134(v96);
  v97 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel];
  v98 = [v97 text];
  if (!v98)
  {
    sub_10076C3DC();
LABEL_127:
    if (!v104)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

  v99 = v98;
  v100 = sub_10076FF9C();
  v102 = v101;

  v103 = sub_10076C3DC();
  if (!v102)
  {
    goto LABEL_127;
  }

  if (!v104)
  {
LABEL_128:

LABEL_129:
    sub_10076C3DC();
    if (v116)
    {
      v117 = sub_10076FF6C();
    }

    else
    {
      v117 = 0;
    }

    [v97 setText:v117];

    goto LABEL_133;
  }

  if (v100 == v103 && v104 == v102)
  {

    goto LABEL_133;
  }

  v139 = sub_10077167C();

  if ((v139 & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_133:
  sub_10077077C();
  v118 = sub_100764D2C();
  sub_100764CCC();
  v119 = objc_allocWithZone(v118);
  v120 = sub_100764D3C();
  v121 = *(*&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel] + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_languageAwareString);
  if (v6[v145] != 1)
  {
    if (v121)
    {
      v128 = v121;
      v129 = sub_100764D0C();
      v131 = v130;

      v132 = sub_100764D0C();
      if (v131)
      {
        if (v129 == v132 && v131 == v133)
        {

          goto LABEL_119;
        }

        v140 = sub_10077167C();

        if (v140)
        {
          goto LABEL_164;
        }

LABEL_151:
        v138 = v120;
        sub_10073EC90(v120);

        goto LABEL_119;
      }
    }

    else
    {
      sub_100764D0C();
    }

    goto LABEL_151;
  }

  if (v121)
  {
    v122 = v121;
    v123 = sub_100764D0C();
    v125 = v124;

    v126 = sub_10076C3CC();
    if (!v126)
    {
      if (v125)
      {
        goto LABEL_161;
      }

      goto LABEL_164;
    }

    v127 = v126;
    v146 = v95;
  }

  else
  {
    v134 = sub_10076C3CC();
    if (!v134)
    {
      goto LABEL_164;
    }

    v127 = v134;
    v146 = v95;
    v125 = 0;
    v123 = 0;
  }

  v135 = sub_100764D0C();
  v137 = v136;

  if (v125)
  {
    if (v137)
    {
      if (v123 == v135 && v125 == v137)
      {

        goto LABEL_119;
      }

      v142 = sub_10077167C();

      v95 = v146;
      if (v142)
      {
        goto LABEL_164;
      }

LABEL_162:
      v141 = sub_10076C3CC();
      sub_10073EC90(v141);

      goto LABEL_119;
    }

    v95 = v146;
LABEL_161:

    goto LABEL_162;
  }

  v95 = v146;
  if (v137)
  {
    goto LABEL_161;
  }

LABEL_164:

LABEL_119:
  v106 = sub_10076BC1C();
  if (v106)
  {
    v107 = v106;
    v108 = [a4 traitCollection];
    v109 = [v108 horizontalSizeClass];

    if (v109 == 1)
    {
      v110 = swift_allocObject();
      *(v110 + 16) = a5;
      *(v110 + 24) = v107;
      v111 = &v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler];
      v112 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler];
      *v111 = sub_100372EF4;
      v111[1] = v110;

      sub_1000167E0(v112);
      v113 = &v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapHandler];
      v114 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapHandler];
      *v113 = sub_100372EF4;
      v113[1] = v110;
      sub_1000167E0(v114);
    }

    else
    {
    }
  }

  v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isFlowPreviewingDestination] = a3 & 1;
  sub_1005F87EC();

  return [v6 setNeedsLayout];
}

uint64_t sub_100372D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000527AC(v6);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_100372EB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100372F00(uint64_t a1, int a2, int a3, void *a4)
{
  v157 = a4;
  v150 = a3;
  v163 = a2;
  v5 = sub_10000A5D4(&unk_1009542E0);
  v159 = *(v5 - 8);
  v160 = v5;
  __chkstk_darwin(v5);
  v158 = v142 - v6;
  v7 = sub_1007681FC();
  v151 = *(v7 - 8);
  v152 = v7;
  __chkstk_darwin(v7);
  v153 = v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076821C();
  v10 = *(v9 - 8);
  v155 = v9;
  v156 = v10;
  __chkstk_darwin(v9);
  v154 = v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076DA7C();
  v161 = *(v12 - 8);
  v162 = v12;
  __chkstk_darwin(v12);
  v169 = v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v179 = v142 - v15;
  __chkstk_darwin(v16);
  v180 = v142 - v17;
  __chkstk_darwin(v18);
  v181 = v142 - v19;
  __chkstk_darwin(v20);
  v182 = v142 - v21;
  __chkstk_darwin(v22);
  v178 = v142 - v23;
  __chkstk_darwin(v24);
  v183 = v142 - v25;
  __chkstk_darwin(v26);
  v172 = v142 - v27;
  v28 = sub_10076DD3C();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v148 = v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v149 = v142 - v32;
  __chkstk_darwin(v33);
  v35 = v142 - v34;
  __chkstk_darwin(v36);
  v177 = v142 - v37;
  __chkstk_darwin(v38);
  v145 = v142 - v39;
  __chkstk_darwin(v40);
  v146 = v142 - v41;
  __chkstk_darwin(v42);
  v168 = v142 - v43;
  __chkstk_darwin(v44);
  v143 = v142 - v45;
  __chkstk_darwin(v46);
  v144 = v142 - v47;
  __chkstk_darwin(v48);
  v174 = v142 - v49;
  __chkstk_darwin(v50);
  v175 = v142 - v51;
  __chkstk_darwin(v52);
  v176 = v142 - v53;
  __chkstk_darwin(v54);
  v184 = v142 - v55;
  __chkstk_darwin(v56);
  v58 = v142 - v57;
  __chkstk_darwin(v59);
  v167 = v142 - v60;
  __chkstk_darwin(v61);
  v63 = v142 - v62;
  __chkstk_darwin(v64);
  v66 = v142 - v65;
  __chkstk_darwin(v67);
  v69 = v142 - v68;
  __chkstk_darwin(v70);
  v173 = v142 - v71;
  v72 = sub_10076BC9C();
  if (v72)
  {
  }

  v164 = v72;
  v170 = v58;
  v186 = a1;
  v166 = v35;
  sub_10076DD2C();
  if (qword_100940C78 != -1)
  {
    swift_once();
  }

  v187 = sub_10076D3DC();
  sub_10000A61C(v187, qword_1009A1360);
  sub_10076DCFC();
  v73 = v29;
  v75 = v29 + 8;
  v74 = *(v29 + 8);
  v74(v63, v28);
  v76 = v28;
  v77 = v163;
  v142[3] = ~v163;
  sub_10076DD1C();
  v74(v66, v76);
  v78 = (v77 & 1) == 0;
  v79 = v76;
  if (v78)
  {
    v80 = 4;
  }

  else
  {
    v80 = 0;
  }

  v142[2] = v80;
  sub_10076DD0C();
  v189 = v75;
  v74(v69, v76);
  v81 = sub_10076BC5C();
  if (v81)
  {
    v82 = v81;
    sub_100764D0C();
  }

  v171 = v74;
  v83 = *(v73 + 16);
  v185 = v73 + 16;
  v188 = v83;
  v83(v63, v173, v76);
  sub_10076DA5C();
  sub_10076DA9C();
  v147 = sub_10076DDDC();
  swift_allocObject();
  v165 = sub_10076DD9C();
  v84 = v184;
  sub_10076DD2C();
  if (qword_100940C90 != -1)
  {
    swift_once();
  }

  v85 = sub_10000A61C(v187, qword_1009A13A8);
  v86 = v170;
  v142[1] = v85;
  sub_10076DCFC();
  v87 = v171;
  v171(v84, v79);
  sub_10076DD1C();
  v87(v86, v79);
  v88 = v167;
  sub_10076DD0C();
  v87(v63, v79);
  sub_10076BC8C();
  v89 = v88;
  v90 = v188;
  v188(v63, v89, v79);
  sub_10076DA5C();
  v91 = v184;
  sub_10076DA9C();
  sub_10076DD2C();
  if (qword_100940C98 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v187, qword_1009A13C0);
  sub_10076DCFC();
  v87(v91, v79);
  sub_10076DD1C();
  v87(v86, v79);
  sub_10076DD0C();
  v87(v63, v79);
  v92 = sub_10076BC2C();
  if (v92)
  {
    v93 = v92;
    sub_100764D0C();

    v90 = v188;
  }

  v90(v63, v176, v79);
  sub_10076DA5C();
  sub_10076DA9C();
  v94 = v184;
  sub_10076DD2C();
  if (qword_100940CA0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v187, qword_1009A13D8);
  v95 = v170;
  sub_10076DCFC();
  v87(v94, v79);
  sub_10076DD1C();
  v87(v95, v79);
  sub_10076DD0C();
  v87(v63, v79);
  v96 = sub_10076BC3C();
  if (v96)
  {
    v97 = v96;
    sub_100764D0C();

    v188(v63, v175, v79);
  }

  else
  {
    v90(v63, v175, v79);
  }

  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DD2C();
  if (qword_100940C88 != -1)
  {
    swift_once();
  }

  v98 = sub_10000A61C(v187, qword_1009A1390);
  v99 = v143;
  v142[0] = v98;
  sub_10076DCFC();
  v87(v63, v79);
  v100 = v144;
  sub_10076DD1C();
  v87(v99, v79);
  sub_10076DD0C();
  v87(v100, v79);
  v101 = sub_10076BC7C();
  if (v101)
  {
    v102 = v101;
    sub_100764D0C();
  }

  v103 = v188;
  v188(v63, v174, v79);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DD2C();
  v104 = v187;
  if (qword_100940C80 != -1)
  {
    v141 = v187;
    swift_once();
    v104 = v141;
  }

  sub_10000A61C(v104, qword_1009A1378);
  v105 = v145;
  sub_10076DCFC();
  v106 = v171;
  v171(v63, v79);
  v107 = v146;
  sub_10076DD1C();
  v106(v105, v79);
  v108 = v168;
  sub_10076DD0C();
  v106(v107, v79);
  v199._object = 0x80000001007E1420;
  v199._countAndFlagsBits = 0xD000000000000012;
  v200._countAndFlagsBits = 0;
  v200._object = 0xE000000000000000;
  sub_1007622EC(v199, v200);
  v103(v63, v108, v79);
  sub_10076DA5C();
  sub_10076DA9C();
  v109 = v184;
  sub_10076DD2C();
  v110 = v170;
  sub_10076DCFC();
  v106(v109, v79);
  sub_10076DD1C();
  v106(v110, v79);
  sub_10076DD0C();
  v106(v63, v79);
  v111 = sub_10076BC9C();
  v112 = v169;
  if (v111)
  {
    sub_10076C3DC();
  }

  v188(v63, v177, v79);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DD2C();
  v113 = v148;
  sub_10076DCFC();
  v106(v63, v79);
  v114 = v149;
  sub_10076DD1C();
  v106(v113, v79);
  v115 = v166;
  sub_10076DD0C();
  v106(v114, v79);
  if (sub_10076BC9C())
  {
    v116 = sub_10076C3CC();

    if (v116)
    {
      sub_100764D0C();
    }
  }

  v188(v63, v115, v79);
  sub_10076DA5C();
  sub_10076DA9C();
  v117 = v112;
  if (qword_1009412A8 != -1)
  {
    swift_once();
  }

  v118 = v152;
  v119 = sub_10000A61C(v152, qword_1009A2578);
  (*(v151 + 16))(v153, v119, v118);
  v120 = v162;
  v198[3] = v162;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v121 = sub_10000DB7C(v198);
  v122 = v161;
  v123 = *(v161 + 16);
  v123(v121, v172, v120);
  v197[3] = v120;
  v197[4] = &protocol witness table for LabelPlaceholder;
  v124 = sub_10000DB7C(v197);
  v123(v124, v183, v120);
  v196[3] = v120;
  v196[4] = &protocol witness table for LabelPlaceholder;
  v125 = sub_10000DB7C(v196);
  v123(v125, v178, v120);
  v195[3] = v120;
  v195[4] = &protocol witness table for LabelPlaceholder;
  v126 = sub_10000DB7C(v195);
  v123(v126, v182, v120);
  v194[3] = v120;
  v194[4] = &protocol witness table for LabelPlaceholder;
  v127 = sub_10000DB7C(v194);
  v123(v127, v181, v120);
  v193[3] = v120;
  v193[4] = &protocol witness table for LabelPlaceholder;
  v128 = sub_10000DB7C(v193);
  v123(v128, v180, v120);
  v192[3] = v120;
  v192[4] = &protocol witness table for LabelPlaceholder;
  v129 = sub_10000DB7C(v192);
  v123(v129, v179, v120);
  v191[3] = v120;
  v191[4] = &protocol witness table for LabelPlaceholder;
  v130 = sub_10000DB7C(v191);
  v123(v130, v117, v120);
  v190 = v165;
  sub_10076D2DC();
  v131 = v154;
  sub_10076820C();
  v132 = [v157 traitCollection];
  sub_100374304();
  v133 = v158;
  v134 = v155;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v135 = v160;
  sub_10076E0FC();
  v137 = v136;

  (*(v159 + 8))(v133, v135);
  (*(v156 + 8))(v131, v134);
  v138 = *(v122 + 8);
  v138(v169, v120);
  v139 = v171;
  v171(v166, v79);
  v138(v179, v120);
  v139(v177, v79);
  v138(v180, v120);
  v139(v168, v79);
  v138(v181, v120);
  v139(v174, v79);
  v138(v182, v120);
  v139(v175, v79);
  v138(v178, v120);
  v139(v176, v79);
  v138(v183, v120);
  v139(v167, v79);
  v138(v172, v120);
  v139(v173, v79);
  return v137;
}

unint64_t sub_100374304()
{
  result = qword_1009605D0;
  if (!qword_1009605D0)
  {
    sub_10076821C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009605D0);
  }

  return result;
}

double sub_10037435C(void *a1)
{
  v2 = sub_10076048C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412C0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A5D4(&unk_100945BD0);
  sub_10000A61C(v6, qword_1009A25A0);
  v31 = a1;
  sub_10075FDCC();
  v7 = v32;
  v9 = [a1 traitCollection];
  if (qword_1009412B8 != -1)
  {
    swift_once();
  }

  v33.is_nil = qword_1009A2598;
  v33.value._rawValue = 0;
  isa = sub_1007706DC(v33, v8).super.isa;
  v29 = isa;

  v30 = UIFontTextStyleCaption2;
  v11 = objc_opt_self();
  v12 = [v11 configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  v13 = v3;
  v14 = *(v3 + 104);
  v14(v5, enum case for SystemImage.star(_:), v2);
  v15 = [v12 configurationWithTraitCollection:isa];
  v16 = sub_10076046C();

  v17 = *(v13 + 8);
  v17(v5, v2);
  [v16 contentInsets];
  v19 = v18;
  [v16 contentInsets];
  v21 = v19 + v20;
  [v16 size];
  v23 = v22 - v21;
  [v16 contentInsets];
  [v16 contentInsets];
  [v16 size];

  v24 = [v11 configurationWithTextStyle:v30 scale:1];
  v14(v5, enum case for SystemImage.starFill(_:), v2);
  v25 = v29;
  v26 = [v24 configurationWithTraitCollection:v29];
  v27 = sub_10076046C();

  v17(v5, v2);
  sub_100770E5C();
  [v27 contentInsets];

  return v7 * 4.0 + v23 * 5.0;
}

double sub_100374768(uint64_t a1)
{
  v2 = sub_10077164C();
  v132 = *(v2 - 8);
  v133 = v2;
  __chkstk_darwin(v2);
  v128 = v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_10076D39C();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v131 = v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v5 - 8);
  v7 = v119 - v6;
  v137 = sub_10076C36C();
  v8 = *(v137 - 8);
  __chkstk_darwin(v137);
  *&v135 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v136 = v119 - v11;
  v12 = sub_10076C38C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v119 - v17;
  __chkstk_darwin(v19);
  v138 = v119 - v20;
  sub_10076B56C();
  sub_100375C78(&qword_100954300, &type metadata accessor for Quote);
  sub_10076332C();
  v140 = v147;
  if (!v147)
  {
    return 0.0;
  }

  v125 = v7;
  (*(v8 + 104))(v136, enum case for PageGrid.Direction.vertical(_:), v137);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C24C();
  v21 = *(v13 + 8);
  v21(v18, v12);
  swift_getKeyPath();
  v139 = a1;
  sub_10076338C();

  sub_10076C26C();
  v21(v15, v12);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C25C();
  v21(v18, v12);
  v23 = v136;
  v22 = v137;
  (*(v8 + 16))(v135, v136, v137);
  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v8 + 8))(v23, v22);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v136 = v21;
  v137 = v12;
  v21(v18, v12);
  sub_10076C2EC();
  sub_100770ACC();
  v151._object = 0x80000001007E1440;
  v151._countAndFlagsBits = 0xD000000000000010;
  v152._countAndFlagsBits = 0;
  v152._object = 0xE000000000000000;
  v24 = sub_1007622EC(v151, v152);
  v26 = sub_1003B5290(v24, v25);
  v27 = v13 + 8;
  if (v26 <= 2)
  {
    v28 = v18;
    if (v26)
    {
      if (v26 == 1)
      {
        if (qword_100940290 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_10099F3D8;
      }

      else
      {
        if (qword_100940298 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_10099F430;
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (v26 - 3 >= 2)
  {
    v28 = v18;
    if (v26 == 5)
    {
      if (qword_1009402A8 != -1)
      {
        swift_once();
      }

      v29 = &xmmword_10099F4E0;
      goto LABEL_23;
    }

LABEL_17:
    if (qword_100940288 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_10099F380;
    goto LABEL_23;
  }

  v28 = v18;
  if (qword_1009402A0 != -1)
  {
    swift_once();
  }

  v29 = &xmmword_10099F488;
LABEL_23:
  v31 = v29[3];
  *&v149[32] = v29[4];
  v150 = *(v29 + 10);
  v32 = v29[2];
  *&v149[16] = v31;
  *v149 = v32;
  v33 = *v29;
  v148 = v29[1];
  v147 = v33;
  v35 = *&v149[40];
  v34 = v150;
  v134 = *&v149[8];
  v135 = *&v149[24];
  v37 = *(&v148 + 1);
  v36 = *v149;
  v39 = *(&v33 + 1);
  v38 = v148;
  v40 = v33;
  sub_100375BC0(&v147, v144);
  v144[0] = __PAIR128__(v39, v40);
  v144[1] = __PAIR128__(v37, v38);
  *&v145[0] = v36;
  *(v145 + 8) = v134;
  *(&v145[1] + 8) = v135;
  *(&v145[2] + 1) = v35;
  v146 = v34;
  *v149 = v145[0];
  v147 = __PAIR128__(v39, v40);
  v148 = __PAIR128__(v37, v38);
  v150 = v34;
  *&v149[16] = v145[1];
  *&v149[32] = v145[2];
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2EC();
  (v136)(v28, v137);
  v41 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v135 = sub_1003B52DC(&v147);

  sub_10076B53C();
  v43 = v42;
  v44 = sub_100016F40(0, &qword_100942F00);
  if (qword_1009402C8 != -1)
  {
    swift_once();
  }

  v126 = v27;
  *&v134 = sub_10076D3DC();
  v45 = sub_10000A61C(v134, qword_10099F538);
  swift_getKeyPath();
  sub_10076338C();

  v46 = v141[0];
  v124 = v45;
  v47 = sub_100770B3C();

  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v49 = qword_10093F680;
  v50 = NSParagraphStyleAttributeName;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = [qword_10099CDD8 paragraphStyleWithBaseWritingDirection:-1];
  v52 = sub_100016F40(0, &qword_10094D748);
  *(inited + 40) = v51;
  *(inited + 64) = v52;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v44;
  *(inited + 80) = v47;
  v53 = NSFontAttributeName;
  *&v130 = v47;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10);
  swift_arrayDestroy();
  v54 = objc_allocWithZone(NSMutableAttributedString);
  v55 = sub_10076FF6C();
  type metadata accessor for Key(0);
  sub_100375C78(&qword_100943320, type metadata accessor for Key);
  isa = sub_10076FE3C().super.isa;

  v57 = [v54 initWithString:v55 attributes:isa];

  if (v135)
  {
    v123 = v43;
    v58 = v135;
    sub_1000FC5F4(_swiftEmptyArrayStorage);
    v59 = v57;
    v60 = objc_allocWithZone(NSAttributedString);
    v61 = sub_10076FF6C();
    v62 = sub_10076FE3C().super.isa;

    v63 = [v60 initWithString:v61 attributes:v62];

    [v59 appendAttributedString:v63];
    v64 = [objc_allocWithZone(NSTextAttachment) init];
    [v64 setImage:v58];
    [v58 size];
    [v64 setBounds:{0.0, -v35, v65, v66}];
    v67 = [objc_opt_self() attributedStringWithAttachment:v64];
    [v59 appendAttributedString:v67];

    sub_100375C20(v144);
  }

  else
  {

    sub_100375C20(v144);
    v59 = v57;
  }

  v68 = v134;
  v69 = *(v134 - 8);
  v70 = v125;
  (*(v69 + 16))(v125, v124, v134);
  (*(v69 + 56))(v70, 0, 1, v68);
  swift_getKeyPath();
  sub_10076338C();

  v71 = sub_10076C04C();
  v142 = v71;
  v122 = sub_100375C78(&qword_100943230, &type metadata accessor for Feature);
  v143 = v122;
  v72 = sub_10000DB7C(v141);
  v73 = *(v71 - 8);
  v74 = *(v73 + 104);
  v121 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v119[1] = v73 + 104;
  v120 = v74;
  v74(v72);
  sub_10076C90C();
  sub_10000CD74(v141);
  sub_10076990C();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  swift_unknownObjectRelease();
  sub_1000276DC(v70);
  if (qword_1009402D8 != -1)
  {
    swift_once();
  }

  v125 = v59;
  v81 = sub_10076D9AC();
  sub_10000A61C(v81, qword_10099F568);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076D42C();
  v83 = v82;
  swift_unknownObjectRelease();
  v84 = v76 + v83;
  if (qword_1009402E0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v81, qword_10099F580);
  swift_getKeyPath();
  sub_10076338C();

  v85 = v141[0];
  v86 = sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v87 = swift_allocObject();
  v130 = xmmword_1007841E0;
  *(v87 + 16) = xmmword_1007841E0;
  *(v87 + 32) = v85;
  v88 = v85;
  v123 = v86;
  v89 = sub_10076DEEC();
  sub_10076D3EC();
  v91 = v90;

  v30 = v84 + v91 - v80;
  v124 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v124 setMaximumNumberOfLines:0];
  sub_10076B54C();
  if (v92)
  {
    if (qword_1009402D0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v134, qword_10099F550);
    swift_getKeyPath();
    sub_10076338C();

    v142 = v71;
    v143 = v122;
    v93 = sub_10000DB7C(v141);
    v120(v93, v121, v71);
    sub_10076C90C();
    sub_10000CD74(v141);
    sub_10076991C();
    v95 = v94;
    swift_unknownObjectRelease();

    if (qword_1009402E8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v81, qword_10099F598);
    swift_getKeyPath();
    sub_10076338C();

    v96 = v141[0];
    v97 = swift_allocObject();
    *(v97 + 16) = v130;
    *(v97 + 32) = v96;
    v98 = v96;
    v99 = sub_10076DEEC();
    sub_10076D3EC();
    v101 = v100;

    v102 = v95 + v101 - v78;
    v103 = v132;
    if (qword_1009402F0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v81, qword_10099F5B0);
    swift_getKeyPath();
    sub_10076338C();

    v104 = v141[0];
    v105 = swift_allocObject();
    *(v105 + 16) = v130;
    *(v105 + 32) = v104;
    v106 = v104;
    v107 = sub_10076DEEC();
    sub_10076D3EC();
    v109 = v108;

    v30 = v30 + v102 + v109 - v80;
    v110 = v133;
  }

  else
  {
    v103 = v132;
    v110 = v133;
  }

  v111 = v131;
  if (sub_10076B55C())
  {
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D36C();
    v113 = v112;
    if (qword_1009402F8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v81, qword_10099F5C8);
    swift_getKeyPath();
    sub_10076338C();

    v114 = v141[0];
    v115 = v128;
    sub_10076D17C();
    sub_10076D97C();
    v117 = v116;

    (*(v103 + 8))(v115, v110);
    (*(v127 + 8))(v111, v129);
    (v136)(v138, v137);
    return v30 + v113 + v117;
  }

  else
  {
    (v136)(v138, v137);
  }

  return v30;
}

uint64_t sub_100375C78(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100375D34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotGalleryCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotGalleryCollectionViewCell()
{
  result = qword_100954330;
  if (!qword_100954330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

UIColor sub_100375DF8()
{
  sub_1000325F0();
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.929411765 green:0.964705882 blue:1.0 alpha:1.0];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.11372549 green:0.137254902 blue:0.176470588 alpha:1.0];
  v2.super.isa = v0;
  result.super.isa = sub_100770DEC(v2, v1).super.isa;
  qword_10099F0F0 = result.super.isa;
  return result;
}

UIColor sub_100375E9C()
{
  sub_1000325F0();
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.07];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.05];

  v5.super.isa = v2;
  v6.super.isa = v4;
  result.super.isa = sub_100770DEC(v5, v6).super.isa;
  qword_10099F0F8 = result.super.isa;
  return result;
}

id sub_100375F70(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC20ProductPageExtension16AdBackgroundView_isBorderHidden] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_1009401C8;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_10099F0F0];
  v13 = [v12 layer];
  if (qword_1009401D0 != -1)
  {
    swift_once();
  }

  v14 = [qword_10099F0F8 CGColor];
  [v13 setBorderColor:v14];

  v15 = [v12 layer];
  [v15 setBorderWidth:1.0];

  [v12 setUserInteractionEnabled:0];
  sub_10000A5D4(&unk_100945BF0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100783DD0;
  *(v16 + 32) = sub_10076E4CC();
  *(v16 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v12;
}

void sub_100376258(void *a1)
{
  if ((*(a1 + OBJC_IVAR____TtC20ProductPageExtension16AdBackgroundView_isBorderHidden) & 1) == 0)
  {
    v2 = [a1 layer];
    if (qword_1009401D0 != -1)
    {
      swift_once();
    }

    v3 = [qword_10099F0F8 CGColor];
    [v2 setBorderColor:v3];
  }
}

unint64_t sub_100376324()
{
  sub_10077145C(34);

  sub_10075E0AC();
  v1._countAndFlagsBits = sub_10077163C();
  sub_1007700CC(v1);

  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_1007700CC(v2);
  sub_10075E09C();
  v3._countAndFlagsBits = sub_10077163C();
  sub_1007700CC(v3);

  return 0xD00000000000001DLL;
}

uint64_t sub_100376418(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
  }

  else
  {
    v3 = [a1 tabBarController];
    if (!v3)
    {
LABEL_10:
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v8 = v11;
        v12 = a1;
      }

      else
      {
        v8 = [a1 navigationController];
        if (!v8)
        {
          v13 = 0;
          goto LABEL_19;
        }
      }

      goto LABEL_13;
    }
  }

  v5 = [v3 selectedViewController];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      goto LABEL_13;
    }
  }

  v9 = [v3 selectedViewController];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v8 = [v9 navigationController];

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_13:
  v13 = [v8 presentedViewController];
  if (v13)
  {
    type metadata accessor for PresentationContextViewController();
    v14 = swift_dynamicCastClass();
    if (!v14 || (v15 = [v14 presentedViewController], v13, (v13 = v15) != 0))
    {
      v16 = v13;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v16 = 0;
LABEL_20:
  v35[0] = v16;
  v35[1] = v13;
  v35[2] = v8;
  v35[3] = a1;
  v17 = v8;
  v18 = a1;
  v34 = v16;
  result = v13;
  v20 = result;
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  do
  {
    if (v21 <= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v21;
    }

    v24 = v21;
    while (1)
    {
      if (v23 == v24)
      {
        __break(1u);
        return result;
      }

      v25 = v35[v24];
      if (v25)
      {
        swift_getObjectType();
        result = swift_conformsToProtocol2();
        if (result)
        {
          break;
        }
      }

      if (++v24 == 4)
      {
        goto LABEL_34;
      }
    }

    v33 = v20;
    v26 = result;
    v32 = v25;
    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = v3;
    if ((result & 1) == 0)
    {
      result = sub_10049DE44(0, v22[2] + 1, 1, v22);
      v22 = result;
    }

    v29 = v22[2];
    v28 = v22[3];
    if (v29 >= v28 >> 1)
    {
      result = sub_10049DE44((v28 > 1), v29 + 1, 1, v22);
      v22 = result;
    }

    v21 = v24 + 1;
    v22[2] = v29 + 1;
    v30 = &v22[2 * v29];
    v30[4] = v32;
    v30[5] = v26;
    v3 = v27;
    v20 = v33;
  }

  while (v24 != 3);
LABEL_34:
  sub_10000A5D4(&unk_100954370);
  swift_arrayDestroy();
  if (v22[2])
  {
    v31 = v22[4];

    v8 = *&v31[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_wrapperViewController];
  }

  else
  {

    if (v13)
    {

      return v13;
    }
  }

  return v8;
}

unint64_t sub_1003767CC(void *a1)
{
  v1 = sub_100376418(a1);
  if (!v1)
  {
LABEL_12:

    return a1;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_10003F040();
  v4 = sub_1007701BC();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v5 = sub_10077158C();
  if (!v5)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_4:
  v6 = __OFSUB__(v5, 1);
  result = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v8 = sub_10077149C();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v4 + 8 * result + 32);
LABEL_9:
    v9 = v8;

    return v9;
  }

  __break(1u);
  return result;
}

id sub_1003768E4(uint64_t a1)
{
  if (!a1)
  {
    sub_10050C548();
    return sub_10050C548();
  }

  sub_1007659AC();
  v1 = sub_10076082C();
  v2 = sub_100107BF4(v1, sub_1000368B8);

  v3 = sub_10076081C();
  sub_10050C274(v3, 0, v2);

  if (!sub_1007659BC())
  {
    return sub_10050C548();
  }

  v4 = sub_10076082C();
  v5 = sub_100107BF4(v4, sub_100376A9C);

  v6 = sub_10076081C();
  sub_10050C274(v6, 0, v5);
}

uint64_t sub_100376AC8(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D9AC();
  v8 = sub_10000A61C(v7, qword_1009A2368);
  *a2 = v7;
  *a3 = &protocol witness table for StaticDimension;
  v9 = sub_10000DB7C(a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v9, v8, v7);
}

char *sub_100376BC8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform] = 0;
  v11 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_flowLayout;
  v12 = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork] = _swiftEmptyArrayStorage;
  v13 = &v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = [objc_allocWithZone(UICollectionView) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_collectionView] = v14;
  v29.receiver = v4;
  v29.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell();
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_collectionView;
  [*&v15[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v18 = *&v15[v17];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  [*&v15[v17] setAllowsSelection:1];
  [*&v15[v17] setAlwaysBounceHorizontal:1];
  [*&v15[v17] setShowsHorizontalScrollIndicator:0];
  [*&v15[v17] setDataSource:v15];
  v22 = *&v15[v17];
  [v22 setDelegate:v15];

  v23 = *&v15[v17];
  type metadata accessor for ScreenshotCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = v23;
  sub_1007708FC();
  v26 = sub_10076FF6C();

  [v25 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v26];

  v27 = [v15 contentView];
  [v27 addSubview:*&v15[v17]];

  return v15;
}

id sub_100376F78()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotShelfCollectionViewCell();
  v64.receiver = v0;
  v64.super_class = v6;
  objc_msgSendSuper2(&v64, "layoutSubviews");
  v7 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v60 = v9;
  v61 = v8;
  v58 = v11;
  v59 = v10;

  v63 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (v12)
  {
    v17 = v12;
    [v17 frame];
    v14 = v18;
    v15 = v19;
    if (qword_1009401F0 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10099F100, qword_10099F118);
    sub_1000FF02C();
    sub_10076D40C();
    v16 = v20;

    (*(v3 + 8))(v5, v2);
  }

  v21 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView];
  v23 = 0.0;
  v24 = 0.0;
  if (v22)
  {
    v25 = v22;
    [v25 frame];
    v13 = v26;
    v23 = v27;
    if (qword_1009401E8 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_1009543D0, qword_1009543E8);
    sub_1000FF02C();
    sub_10076D40C();
    v24 = v28;

    (*(v3 + 8))(v5, v2);
  }

  if (qword_1009401D8 != -1)
  {
    swift_once();
  }

  v57 = v13;
  v62 = v14;
  sub_10000CF78(qword_100954380, qword_100954398);
  sub_1000FF02C();
  sub_10076D40C();
  v30 = v29;
  v31 = *(v3 + 8);
  v31(v5, v2);
  if (qword_1009401E0 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_1009543A8, qword_1009543C0);
  sub_1000FF02C();
  sub_10076D40C();
  v33 = v32;
  v31(v5, v2);
  v55 = v15;
  v56 = v16;
  v54 = v15 + v16 + v23 + v24 + v30 + v33;
  v34 = v61;
  v65.origin.x = v61;
  v49 = v24;
  v35 = v23;
  v52 = v23;
  v37 = v59;
  v36 = v60;
  v65.origin.y = v60;
  v65.size.width = v59;
  v38 = v58;
  v65.size.height = v58;
  MinX = CGRectGetMinX(v65);
  v51 = MinX;
  v66.origin.x = v34;
  v66.origin.y = v36;
  v66.size.width = v37;
  v66.size.height = v38;
  v40 = v30 + CGRectGetMinY(v66);
  v53 = v40;
  v67.origin.x = v34;
  v67.origin.y = v36;
  v67.size.width = v37;
  v67.size.height = v38;
  v50 = CGRectGetMinX(v67);
  v68.origin.x = MinX;
  v68.origin.y = v40;
  v41 = v57;
  v68.size.width = v57;
  v68.size.height = v35;
  v42 = v49 + CGRectGetMaxY(v68);
  v69.origin.x = v34;
  v69.origin.y = v36;
  v69.size.width = v37;
  v69.size.height = v38;
  Width = CGRectGetWidth(v69);
  v70.origin.x = v34;
  v70.origin.y = v36;
  v70.size.width = v37;
  v70.size.height = v38;
  v44 = CGRectGetHeight(v70) - v54;
  v71.origin.x = v34;
  v71.origin.y = v36;
  v71.size.width = v37;
  v71.size.height = v38;
  v45 = CGRectGetMinX(v71);
  v46 = v50;
  v72.origin.x = v50;
  v72.origin.y = v42;
  v72.size.width = Width;
  v72.size.height = v44;
  v47 = v56 + CGRectGetMaxY(v72);
  [*&v1[v21] setFrame:{v51, v53, v41, v52}];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_collectionView] setFrame:{v46, v42, Width, v44}];
  return [*&v1[v63] setFrame:{v45, v47, v62, v55}];
}

uint64_t sub_100377548()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell();
  objc_msgSendSuper2(&v10, "prepareForReuse");
  v1 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  [v0 setNeedsLayout];
  v4 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v0[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v0[v4] = 0;

  [v0 setNeedsLayout];
  v7 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;

  v9 = *&v0[v7];
  if (v9)
  {
    *(v9 + 32) = &off_100892648;
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

BOOL sub_100377684()
{
  if (!*(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform))
  {
    return 0;
  }

  v1 = sub_100760E4C();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_10077158C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v3 != v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      if (__OFADD__(v4, 1))
      {
LABEL_14:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }
    }

    v6 = sub_10076BD4C();

    ++v4;
  }

  while ((v6 & 1) == 0);

  return v5;
}

uint64_t sub_1003777D0(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotCollectionViewCell();
  sub_1007708FC();
  v4 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_100124EE0();

  return v7;
}

void sub_100377D64(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler);
  if (v3)
  {

    v4 = sub_10075E09C();
    v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork);
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v5 + 8 * v4 + 32);

LABEL_6:
        v7 = sub_10075E09C();
        v3(v6, v7);
        sub_1000B9010(v3);

        goto LABEL_7;
      }

      __break(1u);
      return;
    }

    v6 = sub_10077149C();

    goto LABEL_6;
  }

LABEL_7:
  isa = sub_10075E02C().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];
}

id sub_100378078()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotShelfCollectionViewCell()
{
  result = qword_100954428;
  if (!qword_100954428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003781F4()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1003782D0(char *a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v94 = a6;
  v96 = a3;
  v95 = a2;
  v89 = sub_10077164C();
  v9 = *(v89 - 8);
  __chkstk_darwin(v89);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = sub_10075F21C();
  v92 = *(ObjectType - 8);
  __chkstk_darwin(ObjectType);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10076D39C();
  v90 = *(v97 - 8);
  __chkstk_darwin(v97);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v84 - v17;
  __chkstk_darwin(v19);
  v21 = &v84 - v20;
  __chkstk_darwin(v22);
  v24 = &v84 - v23;
  v25 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v25 - 8);
  v91 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (a1 >> 62);
  v88 = v9;
  v87 = v11;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_76:
    v100 = sub_10077158C();
  }

  else
  {
    v100 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = 0;
  v99 = a1;
  v98 = a1 & 0xC000000000000001;
  do
  {
    a1 = v29;
    if (v100 == v29)
    {
      break;
    }

    if (v98)
    {
      sub_10077149C();
      if (__OFADD__(a1, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (__OFADD__(a1, 1))
      {
        goto LABEL_12;
      }
    }

    v30 = sub_10076BD4C();

    v29 = a1 + 1;
  }

  while ((v30 & 1) == 0);
  sub_1007601EC();
  sub_10007AFB4(v95, v91);
  if (v27)
  {
    v31 = sub_10077158C();
  }

  else
  {
    v31 = *(v28 + 16);
  }

  v86 = a5;
  v85 = a4;
  if (v31 < 1)
  {
    sub_100760E3C();
    v45 = v92;
    v46 = ObjectType;
    v47 = (*(v92 + 88))(v13, ObjectType);
    v27 = v15;
    a1 = v18;
    v33 = v90;
    if (v47 != enum case for AppPlatform.phone(_:) && v47 != enum case for AppPlatform.pad(_:) && v47 != enum case for AppPlatform.messages(_:))
    {
      if (v47 == enum case for AppPlatform.watch(_:))
      {
        if (qword_10093F5A8 == -1)
        {
LABEL_46:
          v49 = v97;
          v50 = sub_10000A61C(v97, qword_10099CB60);
          (*(v33 + 16))(a1, v50, v49);
          goto LABEL_38;
        }

LABEL_78:
        swift_once();
        goto LABEL_46;
      }

      if (v47 != enum case for AppPlatform.tv(_:) && v47 != enum case for AppPlatform.mac(_:))
      {
        sub_10076D3AC();
        (*(v45 + 8))(v13, v46);
LABEL_38:
        v48 = v96;
        if (sub_100760E4C() & 1) != 0 && (sub_10076D2EC())
        {
          if (sub_10076D2EC())
          {
            (*(v33 + 16))(v27, a1, v97);
          }

          else
          {
            sub_10076D32C();
          }
        }

        else
        {
          (*(v33 + 16))(v27, a1, v97);
          sub_10076D2EC();
        }

        swift_getObjectType();
        v51 = [v48 traitCollection];
        sub_1007706CC();

        [v48 pageMarginInsets];
        [v48 pageMarginInsets];
        PageTraitEnvironment.pageColumnMargin.getter();
        v52 = [v48 traitCollection];
        sub_1007706CC();

        sub_10076D36C();
        sub_10076D36C();
        v36 = v53;
        v54 = *(v33 + 8);
        v55 = v97;
        v54(v27, v97);
        v54(a1, v55);
        goto LABEL_49;
      }
    }

    sub_10076D3AC();
    goto LABEL_38;
  }

  v32 = v90;
  v33 = v100;
  if (!v100)
  {
    v36 = 0.0;
    goto LABEL_49;
  }

  if (v100 < 1)
  {
    __break(1u);
    goto LABEL_78;
  }

  ObjectType = swift_getObjectType();
  v34 = 0;
  v92 = v32 + 16;
  v35 = (v32 + 8);
  v36 = 0.0;
  do
  {
    if (v98)
    {
      sub_10077149C();
    }

    else
    {
    }

    v42 = v96;
    v43 = sub_100760E4C();
    sub_10076BEFC();
    sub_10076D3AC();
    if (v33 == a1 || (v43 & 1) == 0)
    {
      (*v92)(v21, v24, v97);
      sub_10076D2EC();
    }

    else if (sub_10076D2EC())
    {
      (*v92)(v21, v24, v97);
    }

    else
    {
      sub_10076D32C();
    }

    v44 = [v42 traitCollection];
    sub_1007706CC();

    [v42 pageMarginInsets];
    [v42 pageMarginInsets];
    PageTraitEnvironment.pageColumnMargin.getter();
    ++v34;
    v37 = [v42 traitCollection];
    sub_1007706CC();

    sub_10076D36C();
    sub_10076D36C();
    v39 = v38;

    v40 = *v35;
    v41 = v97;
    (*v35)(v21, v97);
    v40(v24, v41);
    if (v39 > v36)
    {
      v36 = v39;
    }

    v33 = v100;
  }

  while (v100 != v34);
LABEL_49:
  sub_10000A5D4(&unk_100952260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = v36;
  v101 = inited;
  v57 = v85;
  v58 = v89;
  v59 = v88;
  v60 = v87;
  v61 = v86;
  if (v85 >= COERCE_DOUBLE(1))
  {
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_100784500;
    *(v62 + 32) = v57;
    if (qword_1009401E8 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_1009543D0, qword_1009543E8);
    sub_1000FF02C();
    sub_10076D40C();
    v64 = v63;
    (*(v59 + 8))(v60, v58);
    *(v62 + 40) = v64;
    sub_1000F92E4(v62);
  }

  if (v61 >= COERCE_DOUBLE(1))
  {
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_100784500;
    *(v65 + 32) = v61;
    if (qword_1009401F0 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10099F100, qword_10099F118);
    sub_1000FF02C();
    sub_10076D40C();
    v67 = v66;
    (*(v59 + 8))(v60, v58);
    *(v65 + 40) = v67;
    sub_1000F92E4(v65);
  }

  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_100784500;
  if (qword_1009401D8 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_100954380, qword_100954398);
  sub_1000FF02C();
  v69 = v96;
  sub_10076D40C();
  v71 = v70;
  v72 = *(v59 + 8);
  v72(v60, v58);
  *(v68 + 32) = v71;
  if (qword_1009401E0 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_1009543A8, qword_1009543C0);
  sub_1000FF02C();
  sub_10076D40C();
  v74 = v73;
  v72(v60, v58);
  *(v68 + 40) = v74;
  sub_1000F92E4(v68);
  [v69 pageMarginInsets];
  v75 = *(v101 + 16);
  if (v75)
  {
    if (v75 <= 3)
    {
      v76 = 0;
      v77 = 0.0;
LABEL_68:
      v80 = v75 - v76;
      v81 = (v101 + 8 * v76 + 32);
      do
      {
        v82 = *v81++;
        v77 = v77 + v82;
        --v80;
      }

      while (v80);
      goto LABEL_70;
    }

    v76 = v75 & 0x7FFFFFFFFFFFFFFCLL;
    v78 = (v101 + 48);
    v77 = 0.0;
    v79 = v75 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v77 = v77 + *(v78 - 2) + *(v78 - 1) + *v78 + v78[1];
      v78 += 4;
      v79 -= 4;
    }

    while (v79);
    if (v75 != v76)
    {
      goto LABEL_68;
    }
  }

LABEL_70:
  sub_100125E90(v91);

  return v94;
}

uint64_t sub_100379184(uint64_t a1)
{
  v2 = v1;
  sub_10000A570(a1, v28);
  sub_10000A5D4(&unk_100942830);
  sub_1007601EC();
  result = swift_dynamicCast();
  if (result)
  {
    v4 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v5 = swift_allocObject();
      *(v5 + 16) = sub_1000FCDDC(_swiftEmptyArrayStorage);
      *(v5 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v5 + 32) = &off_100892648;
      swift_unknownObjectWeakAssign();
      *&v2[v4] = v5;

      v6 = *&v2[v4];
      if (v6)
      {
        *(v6 + 32) = &off_100892648;
        swift_unknownObjectWeakAssign();
      }

      v7 = sub_1007601DC();
      if (!*&v2[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform] || (, v8 = sub_100760E4C(), , (v8 & 1) == 0))
      {
LABEL_20:
        v12 = 0;
        goto LABEL_21;
      }

      v9 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
        goto LABEL_41;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
      {
        v11 = 0;
        do
        {
          v12 = i != v11;
          if (i == v11)
          {
            break;
          }

          if ((v7 & 0xC000000000000001) != 0)
          {
            sub_10077149C();
            if (__OFADD__(v11, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v11 >= *(v9 + 16))
            {
              goto LABEL_40;
            }

            if (__OFADD__(v11, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          v13 = sub_10076BD4C();

          ++v11;
        }

        while ((v13 & 1) == 0);
LABEL_21:

        v14 = [v2 traitCollection];
        sub_1007706CC();

        if (!*&v2[v4])
        {
          break;
        }

        v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork];

        v17 = sub_10060889C(v16, v12);
        v18 = v17;
        v27 = v15;
        v26 = *(v15 + 16);
        if (!v26)
        {
LABEL_35:
        }

        v19 = 0;
        v9 = v17 & 0xFFFFFFFFFFFFFF8;
        v20 = (v27 + 48);
        v24 = v17 & 0xC000000000000001;
        v25 = v17 >> 62;
        while (v19 < *(v27 + 16))
        {
          v4 = *(v20 - 2);
          v21 = *(v20 - 1);
          v22 = *v20;
          if (v25)
          {
            if (v19 == sub_10077158C())
            {
              goto LABEL_35;
            }
          }

          else if (v19 == *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          if (v24)
          {

            sub_10077149C();
          }

          else
          {
            if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }
          }

          v2 = v19 + 1;
          v29 = 0;
          memset(v28, 0, sizeof(v28));
          v23 = swift_allocObject();
          swift_weakInit();
          v7 = swift_allocObject();
          *(v7 + 16) = v12;
          *(v7 + 24) = v23;
          *(v7 + 32) = v4;
          *(v7 + 40) = v21;
          *(v7 + 48) = v22;
          *(v7 + 56) = v19;

          sub_100760B7C();

          sub_10000CFBC(v28, &qword_100943310);

          v20 += 3;
          v19 = v2;
          if (v26 == v2)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        ;
      }
    }
  }

  return result;
}

void sub_1003795C0()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_flowLayout;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork) = _swiftEmptyArrayStorage;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler);
  *v4 = 0;
  v4[1] = 0;
  sub_10077156C();
  __break(1u);
}

void sub_1003796F8(objc_class *a1, uint64_t a2)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_collectionView);
  sub_10000A5D4(&qword_100952110);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100784500;
  *(v10 + 32) = 0;
  *(v10 + 40) = a2;
  sub_10075E01C();
  isa = sub_10075E02C().super.isa;
  (*(v6 + 8))(v8, v5);
  v12 = [v9 cellForItemAtIndexPath:isa];

  if (v12)
  {
    type metadata accessor for ScreenshotCollectionViewCell();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(*(v13 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
      v15 = sub_10075FC9C();
      v17 = v15;
      if (v15)
      {
      }

      v19.is_nil = v17 == 0;
      v19.value.super.isa = a1;
      sub_10075FCEC(v19, v16);
    }

    else
    {
      v14 = v12;
    }
  }
}

uint64_t sub_1003798B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003798E8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10037993C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
    if (!sub_10077158C())
    {
      goto LABEL_4;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  if (!*(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    return 0;
  }

LABEL_4:
  v3 = *(v0 + v1);
  if (!(v3 >> 62))
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_10077158C();
}

void sub_1003799E4(void *a1)
{
  v2 = v1;
  v4 = sub_10076D39C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform))
  {
    return;
  }

  [a1 frame];
  if (v15 <= 0.0 || v14 <= 0.0)
  {

    return;
  }

  sub_1007601EC();

  sub_10007AFB4(v16, v13);

  v17 = sub_10075E09C();
  v18 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork);
  v29 = v5;
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_10077149C();
LABEL_8:
  sub_10076BEFC();
  sub_10076D3AC();

  v19 = sub_100377684();
  v20 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits;
  v21 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits);
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v19;
  swift_unknownObjectRetain();

  v23 = *(v2 + v20);
  if (!v23)
  {
LABEL_22:
    __break(1u);
    return;
  }

  [v23 pageContainerSize];
  v24 = v29;
  if (v22)
  {
    if (sub_10076D2EC())
    {
      (*(v24 + 16))(v7, v10, v4);
    }

    else
    {
      sub_10076D32C();
    }
  }

  else
  {
    (*(v29 + 16))(v7, v10, v4);
    sub_10076D2EC();
  }

  swift_getObjectType();
  v25 = [v21 traitCollection];
  sub_1007706CC();

  [v21 pageMarginInsets];
  [v21 pageMarginInsets];
  PageTraitEnvironment.pageColumnMargin.getter();
  v26 = [v21 traitCollection];
  sub_1007706CC();

  sub_10076D36C();
  sub_10076D36C();

  swift_unknownObjectRelease();
  v27 = *(v29 + 8);
  v27(v7, v4);
  v27(v10, v4);
  sub_100125E90(v13);
}

unint64_t sub_100379E80()
{
  v1 = v0;
  type metadata accessor for ScreenshotCollectionViewCell();
  v2 = swift_dynamicCastClassUnconditional();
  result = sub_10075E09C();
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_10077149C();

    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v5 = *(v4 + 8 * result + 32);

LABEL_5:
  v6 = OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView;
  *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_100124EE0();

  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher);
  if (v7)
  {
    swift_beginAccess();
    v8 = *(v7 + 16);

    v9 = sub_100625CFC(v5, v8);

    if (v9)
    {
      v10 = *(*(v2 + v6) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
      v11 = v9;
      v12 = v10;
      v13 = sub_10075FC9C();

      if (v13 && (sub_100016F40(0, &qword_10094F610), v14 = v11, v15 = sub_100770EEC(), v14, v13, (v15 & 1) != 0))
      {
      }

      else
      {
        v16 = *(*(v2 + v6) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
        v17 = sub_10075FC9C();
        v19 = v17;
        if (v17)
        {
        }

        v21.is_nil = v19 == 0;
        v21.value.super.isa = v9;
        sub_10075FCEC(v21, v18);
      }
    }
  }
}

void sub_10037A0F4(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

double sub_10037A244()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B9EC();
  sub_10037A4B0(&qword_100943140, &type metadata accessor for Banner);
  sub_10076332C();
  v4 = v13;
  if (!v13)
  {
    return 0.0;
  }

  if (sub_10076B99C())
  {

    v5 = 15.0;
  }

  else
  {
    v5 = 22.0;
  }

  sub_10076B98C();
  sub_10000A5D4(&unk_10094C3B0);
  v7 = sub_1007701EC();

  v8 = 15.0;
  if ((v7 & 1) == 0)
  {
    v8 = v5;
  }

  v9 = 9.0;
  if (v7)
  {
    v9 = 12.0;
  }

  *&v13 = v9;
  *(&v13 + 1) = 0x402E000000000000;
  v14 = v9;
  v15 = xmmword_100785060;
  v16 = v5;
  v17 = 0x4022000000000000;
  v18 = v8;
  v19 = xmmword_100785070;
  v20 = xmmword_100785080;
  v10 = sub_100630CB4();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v1 + 8))(v3, v0);
  sub_10011D440(v4, &v13, v10);
  v6 = v11;
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_10037A4B0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10037A4FC(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame:{a1, a2, a3, a4}];
}

void sub_10037A560(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 32))();
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_10075FCEC(v10, v5);

  v6 = *(a2 + 40);
  v7 = v6(a1, a2);
  [v7 setAttributedText:0];

  v8 = v6(a1, a2);
  [v8 setText:0];
}

void sub_10037A640(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10076BF6C();
  v9 = __chkstk_darwin(v8 - 8);
  v24 = 0;
  if (!a1)
  {
LABEL_4:
    v13 = (*(a4 + 32))(a3, a4, v9);
    v14 = v13;
    v22 = v13;
    v26.value.super.isa = 0;
    v26.is_nil = 0;
    sub_10075FCEC(v26, v14);

    return;
  }

  v10 = sub_10037B7B4(&v24, v4, a3, a4);
  sub_10037B894();
  v12 = v11;

  if (v12)
  {

    a1 = v24;
    goto LABEL_4;
  }

  v15 = *(a4 + 32);
  v16 = v15(a3, a4);
  [v16 contentMode];

  sub_10076BFCC();
  v17 = v15(a3, a4);
  sub_10076BF7C();
  sub_10075FCCC();
  [v17 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_100016F40(0, &qword_100942F10);
    sub_100770D5C();
  }

  sub_10075FB8C();

  v18 = v15(a3, a4);
  sub_10075FD2C();
  sub_100760BCC();

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = v19;

  sub_100760B7C();

  sub_10000CFBC(v23, &qword_100943310);
  v21 = v24;
}

uint64_t sub_10037A9B8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_10000A5D4(&unk_100946720);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v10);
  v12 = &v22[-v11 - 8];
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v13 = *(v7 + 8);
  v13(v12, v6);
  if (v23)
  {
    sub_10000A5D4(&qword_1009575A0);
    sub_100760A4C();
    if (swift_dynamicCast())
    {
      sub_10076468C();
      swift_getKeyPath();
      sub_10076F49C();

      v13(v9, v6);
      if (v22[0] == 1)
      {

        v14 = sub_10076B8FC();

        if (v14)
        {
          v15 = (*(a2 + 56))(a1, a2);
          sub_10037B894();
          v17 = v16;

          if ((v17 & 1) == 0)
          {
            sub_10076BDBC();
            sub_100766E2C();

            v18 = 0;
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    sub_10000CFBC(v22, &unk_10094F720);
  }

  v18 = 1;
LABEL_10:
  v19 = sub_100766E4C();
  return (*(*(v19 - 8) + 56))(a3, v18, 1, v19);
}

uint64_t sub_10037ACDC(uint64_t a1, void *a2)
{
  v72 = a2;
  v3 = sub_10000A5D4(&qword_100949DF0);
  __chkstk_darwin(v3 - 8);
  v74 = &v59 - v4;
  v5 = sub_10000A5D4(&qword_100954450);
  __chkstk_darwin(v5 - 8);
  v75 = &v59 - v6;
  v76 = sub_10000A5D4(&qword_100954458);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v59 - v7;
  v8 = sub_10075D9EC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100760A5C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100954460);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = sub_10000A5D4(&qword_100942698);
  __chkstk_darwin(v16 - 8);
  v18 = &v59 - v17;
  v19 = sub_10075D99C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v70 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v59 - v23;
  __chkstk_darwin(v25);
  v69 = &v59 - v26;
  v27 = sub_1007609FC();
  if (!v28)
  {
    return 0;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 0;
  }

  v67 = v27;
  v68 = v28;
  sub_100760A1C();
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    if (qword_100941350 != -1)
    {
      swift_once();
    }

    v59 = qword_1009A2700;
    if (qword_100941358 != -1)
    {
      swift_once();
    }

    v63 = qword_1009A2708;
    (*(v10 + 16))(v12, v15, v9);
    v31 = (*(v10 + 88))(v12, v9);
    v66 = a1;
    v65 = v20;
    v64 = v10;
    v61 = v9;
    if (v31 == enum case for SearchEntity.developers(_:))
    {
      v62 = "Search.ResultsTitle.InStories";
      v32 = 0xD000000000000020;
    }

    else
    {
      if (v31 != enum case for SearchEntity.stories(_:))
      {
        if (v31 == enum case for SearchEntity.arcade(_:))
        {
          v62 = "Search.ResultsTitle.InWatch";
          v33 = 0xD00000000000001CLL;
        }

        else
        {
          if (v31 != enum case for SearchEntity.watch(_:))
          {
            result = sub_10077156C();
            __break(1u);
            return result;
          }

          v62 = "must be handled.";
          v33 = 0xD00000000000001BLL;
        }

        v60 = v33;
        goto LABEL_23;
      }

      v62 = "Search.ResultsTitle.InArcade";
      v32 = 0xD00000000000001DLL;
    }

    v60 = v32;
LABEL_23:
    sub_10000A5D4(&unk_100954470);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    v35 = v68;
    *(inited + 48) = v67;
    *(inited + 56) = v35;

    v36 = sub_1000FD520(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &qword_100961DD0);
    v79._object = (v62 | 0x8000000000000000);
    v79._countAndFlagsBits = v60;
    v37._rawValue = v36;
    sub_1007622DC(v79, v37);

    sub_10075D9DC();
    sub_10075D9AC();
    v38 = v72;
    v78[0] = v72;
    sub_100016BD0();
    v39 = v38;
    sub_10075D9BC();
    v40 = v63;
    v78[0] = v63;
    sub_10037C8FC();
    v41 = v40;
    sub_10075D9BC();
    v78[0] = v67;
    v78[1] = v35;
    v42 = sub_10075DE9C();
    v43 = v74;
    (*(*(v42 - 8) + 56))(v74, 1, 1, v42);
    sub_10037CD5C(&unk_100954490, &type metadata accessor for AttributedString);
    sub_10002564C();
    v44 = v75;
    sub_10075DA9C();
    sub_10000CFBC(v43, &qword_100949DF0);
    if ((*(v73 + 48))(v44, 1, v76) == 1)
    {
      v45 = &qword_100954450;
      v46 = v44;
    }

    else
    {
      v47 = v71;
      sub_10037C950(v44, v71);
      v48 = v59;
      v49 = v59;
      sub_10037C9C0();
      v50 = sub_10075D9CC();
      v77 = v48;
      sub_10075DA2C();
      v50(v78, 0);
      v45 = &qword_100954458;
      v46 = v47;
    }

    sub_10000CFBC(v46, v45);
    v51 = v61;
    v52 = v65;
    v53 = *(v65 + 32);
    v53(v18, v24, v19);
    (*(v52 + 56))(v18, 0, 1, v19);
    (*(v64 + 8))(v15, v51);
    if ((*(v52 + 48))(v18, 1, v19) != 1)
    {

      v57 = v69;
      v53(v69, v18, v19);
      sub_100016F40(0, &qword_1009544A0);
      (*(v52 + 16))(v70, v57, v19);
      v58 = sub_10077076C();
      (*(v52 + 8))(v57, v19);
      return v58;
    }

    goto LABEL_27;
  }

  sub_10000CFBC(v15, &unk_100954460);
  (*(v20 + 56))(v18, 1, 1, v19);
LABEL_27:
  sub_10000CFBC(v18, &qword_100942698);
  v54 = sub_10076B8EC();
  if (!v55)
  {
    return v67;
  }

  v56 = v54;

  return v56;
}

id sub_10037B7B4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v9 = (*(a4 + 32))(a3, a4);
    v10 = sub_10075FC2C();

    if (!v10)
    {
      v10 = (*(a4 + 56))(a3, a4);
    }

    swift_beginAccess();
    v11 = *a1;
    *a1 = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

uint64_t sub_10037B894()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076BE0C();
  result = 0;
  if (v4)
  {
    sub_10076BE4C();
    (*(v1 + 104))(v3, enum case for FloatingPointRoundingRule.up(_:), v0);
    sub_100770AAC();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    return v7;
  }

  return result;
}

uint64_t sub_10037B9E0(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = (*(a7 + 32))(a6, a7);
    v13.value.super.isa = a1;
    v13.is_nil = 0;
    sub_10075FC5C(v13, v12);

    (*(a7 + 80))(a6, a7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10037BAA4(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v4 = (*(a2 + 56))(a1, a2);
  swift_getKeyPath();
  sub_10076338C();

  v5 = [v4 configurationWithTraitCollection:v7];

  v6 = sub_10076044C();
  *a3 = v6;
}

uint64_t sub_10037BBB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v54 = a4;
  v47 = a3;
  v46 = a2;
  v50 = sub_10076C38C();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10076DA7C();
  v62 = *(v10 - 8);
  __chkstk_darwin(v10);
  v53 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v61 = &v43[-v13];
  v14 = sub_10076D7FC();
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_10076DD3C();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v43[-v20];
  sub_100760A4C();
  sub_10037CD5C(&unk_100954440, &type metadata accessor for SearchAction);
  result = sub_10076332C();
  v23 = v68;
  if (v68)
  {
    v45 = v18;
    v51 = v14;
    v57 = v10;
    swift_getKeyPath();
    sub_10076338C();

    v24 = v68;
    (*(a6 + 64))(v68, a5, a6);

    swift_getKeyPath();
    v52 = a1;
    sub_10076338C();

    v25 = v65;
    sub_10076D7EC();
    sub_10076DCAC();
    sub_10000CF78(&v68, v69);
    sub_10076D85C();
    sub_10076D7CC();
    sub_10000CD74(&v68);
    sub_10076DCEC();
    sub_10076D77C();
    sub_10076DCCC();
    sub_10076D75C();
    sub_10076DCDC();
    sub_10076D76C();
    sub_10076DCBC();
    sub_10076D74C();

    v26 = sub_10076D7BC();
    v27 = a5;
    v56 = sub_10037ACDC(v23, v26);
    v55 = v28;
    v30 = v29;
    v31 = ~v29;

    if (v31)
    {
      (*(v59 + 16))(v45, v21, v60);
      v44 = v30;
      if (v30)
      {
        sub_10037CA28(v56, v55, 1);
        sub_10076DA5C();
        v32 = v53;
        sub_10076DABC();
      }

      else
      {
        sub_10037CA28(v56, v55, 0);
        sub_10076DA5C();
        v32 = v53;
        sub_10076DA9C();
      }

      v33 = v57;
      (*(v62 + 32))(v61, v32, v57);

      v34 = sub_10076B8FC();

      if (v34 && (*&v65 = v34, sub_10037BAA4(v27, a6, &v68), , (v35 = v68) != 0))
      {
        [v68 size];
        v37 = v36;
        v39 = v38;

        *(&v66 + 1) = &type metadata for FixedSizedPlaceholder;
        v67 = sub_100016DD8();
        *&v65 = v37;
        *(&v65 + 1) = v39;
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
      }

      v64[3] = v33;
      v64[4] = &protocol witness table for LabelPlaceholder;
      v40 = sub_10000DB7C(v64);
      (*(v62 + 16))(v40, v61, v33);
      swift_getKeyPath();
      sub_10076338C();

      (*(a6 + 48))(&v68, &v65, v64, v63, v27, a6);
      swift_unknownObjectRelease();
      sub_10000CD74(v64);
      sub_10000CFBC(&v65, &unk_10094B230);
      sub_10000CF78(&v68, v69);
      if (v54)
      {
        swift_getKeyPath();
        v41 = v48;
        sub_10076338C();

        sub_10076C2FC();
        (*(v49 + 8))(v41, v50);
      }

      swift_getKeyPath();
      sub_10076338C();

      v42 = v65;
      sub_10076E0FC();

      sub_10037C8D4(v56, v55, v44);

      (*(v62 + 8))(v61, v57);
      (*(v58 + 8))(v16, v51);
      (*(v59 + 8))(v21, v60);
      return sub_10000CD74(&v68);
    }

    else
    {

      (*(v58 + 8))(v16, v51);
      return (*(v59 + 8))(v21, v60);
    }
  }

  return result;
}

uint64_t sub_10037C4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = sub_10076DD3C();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D7FC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760A4C();
  sub_10037CD5C(&unk_100954440, &type metadata accessor for SearchAction);
  result = sub_10076332C();
  v15 = v37[0];
  if (v37[0])
  {
    v33 = v11;
    v34 = v10;
    v32 = *(a3 + 40);
    v16 = v32(a2, a3);
    sub_10076D48C();

    v17 = [v4 traitCollection];
    sub_10076D7EC();
    sub_10076DCAC();
    v36 = v15;
    v31[1] = v4;
    sub_10000CF78(v37, v37[3]);
    v18 = a2;
    v19 = v36;
    sub_10076D85C();
    sub_10076D7CC();
    sub_10000CD74(v37);
    sub_10076DCEC();
    sub_10076D77C();
    sub_10076DCCC();
    sub_10076D75C();
    sub_10076DCDC();
    sub_10076D76C();
    sub_10076DCBC();
    sub_10076D74C();

    (*(v7 + 8))(v9, v35);
    v20 = sub_10076D7BC();
    v21 = sub_10037ACDC(v19, v20);
    v23 = v22;
    v25 = v24;
    LODWORD(v16) = ~v24;

    if (v16)
    {
      v26 = v32(v18, a3);
      v27 = v26;
      if (v25)
      {
        [v26 setAttributedText:v21];
      }

      else
      {
        v29 = sub_10076FF6C();
        [v27 setText:v29];

        v27 = v29;
      }

      v30 = v34;

      sub_10037C8D4(v21, v23, v25);
      (*(v33 + 8))(v13, v30);
      (*(a3 + 80))(v18, a3);
    }

    else
    {
      v28 = v32(v18, a3);
      [v28 setText:0];

      (*(v33 + 8))(v13, v34);
      (*(a3 + 80))(v18, a3);
    }
  }

  return result;
}

void sub_10037C8D4(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_10037C8EC(a1, a2, a3 & 1);
  }
}

void sub_10037C8EC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10037C8FC()
{
  result = qword_100954488;
  if (!qword_100954488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954488);
  }

  return result;
}

uint64_t sub_10037C950(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100954458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10037C9C0()
{
  result = qword_1009544A8;
  if (!qword_1009544A8)
  {
    sub_10000CE78(&qword_100954458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009544A8);
  }

  return result;
}

id sub_10037CA28(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_10037CA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100760A4C();
  sub_10037CD5C(&unk_100954440, &type metadata accessor for SearchAction);
  result = sub_10076332C();
  if (v14)
  {

    v7 = sub_10076B8FC();

    if (!v7)
    {
    }

    v8 = (*(a4 + 56))(a3, a4);
    sub_10037B894();
    v10 = v9;

    if (v10)
    {
    }

    v11 = sub_10076BFBC();
    sub_10000A5D4(&unk_100942870);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007841E0;
    *(v12 + 32) = v11;

    v13._rawValue = v12;
    sub_100760BAC(v13);
  }

  return result;
}

void sub_10037CBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 32))(a2, a3);
  sub_10075FD2C();
  sub_10037CD5C(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
}

uint64_t sub_10037CC98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10037CCD0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10037CD5C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10037CE00(void *a1, double a2)
{
  v4 = sub_100763ADC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076684C())
  {
    swift_getKeyPath();
    sub_10076338C();

    v8 = v12;
    v9 = [v12 userInterfaceIdiom];

    if (v9 == 2)
    {
    }

    else
    {
      type metadata accessor for SmallLockupView();
      sub_1006C1A9C(v7);
      swift_getObjectType();
      a2 = sub_100262AD0(v7, a1);

      (*(v5 + 8))(v7, v4);
    }
  }

  return a2;
}

double sub_10037CFE0(uint64_t a1)
{
  v3 = sub_1007693CC();
  __chkstk_darwin(v3 - 8);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007693EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076341C();
  v61 = *(v10 - 8);
  v62 = v10;
  __chkstk_darwin(v10);
  v59 = v11;
  v60 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076C38C();
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v56 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10076997C();
  v64 = *(v71 - 8);
  __chkstk_darwin(v71);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076686C();
  sub_10037DBE0(&unk_100963A20, &type metadata accessor for GameCenterReengagement);
  sub_10076332C();
  v16 = v88[0];
  if (!v88[0])
  {
    return 0.0;
  }

  v50 = v1;
  v52 = v5;
  v54 = v7;
  v51 = sub_100630CB4();
  v63 = sub_10076682C();
  v49[1] = v17;
  v18 = sub_10005312C();
  v70 = v16;
  if (qword_1009410C0 != -1)
  {
    swift_once();
  }

  v53 = v9;
  v55 = v6;
  v19 = sub_10076D3DC();
  sub_10000A61C(v19, qword_1009A2038);
  swift_getKeyPath();
  sub_10076338C();

  v20 = v88[0];
  sub_100770B3C();

  v21 = sub_10076C04C();
  v88[3] = v21;
  v68 = sub_10037DBE0(&qword_100943230, &type metadata accessor for Feature);
  v88[4] = v68;
  v22 = sub_10000DB7C(v88);
  v23 = *(v21 - 8);
  v24 = *(v23 + 104);
  v69 = a1;
  v67 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v65 = v23 + 104;
  v66 = v24;
  v24(v22);
  sub_10076C90C();
  sub_10000CD74(v88);
  sub_10076996C();
  sub_10076994C();
  v63 = v18;
  v64 = *(v64 + 8);
  (v64)(v15, v71);
  sub_10076683C();
  if (qword_1009410C8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v19, qword_1009A2050);
  swift_getKeyPath();
  sub_10076338C();

  v25 = v87[0];
  sub_100770B3C();

  v87[3] = v21;
  v87[4] = v68;
  v26 = sub_10000DB7C(v87);
  v66(v26, v67, v21);
  sub_10076C90C();
  sub_10000CD74(v87);
  sub_10076996C();
  sub_10076994C();
  (v64)(v15, v71);
  sub_10076685C();
  if (qword_1009410D0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v19, qword_1009A2068);
  swift_getKeyPath();
  v27 = v69;
  sub_10076338C();

  v28 = v86[0];
  sub_100770B3C();

  v86[3] = v21;
  v86[4] = v68;
  v29 = sub_10000DB7C(v86);
  v66(v29, v67, v21);
  sub_10076C90C();
  sub_10000CD74(v86);
  sub_10076996C();
  sub_10076994C();
  (v64)(v15, v71);
  swift_getKeyPath();
  v30 = v56;
  v31 = v27;
  sub_10076338C();

  sub_10076C2FC();
  (*(v57 + 8))(v30, v58);
  v32 = sub_10076DDDC();
  swift_allocObject();
  v33 = sub_10076DDAC();
  v35 = v60;
  v34 = v61;
  v36 = v62;
  (*(v61 + 16))(v60, v31, v62);
  v37 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v70;
  (*(v34 + 32))(v39 + v37, v35, v36);
  *(v39 + v38) = v50;
  swift_allocObject();

  v40 = sub_10076DD9C();
  v41 = swift_unknownObjectRetain();
  sub_10013D454(v41, v52);
  swift_unknownObjectRelease();
  v85 = 0;
  *&v83[40] = 0u;
  v84 = 0u;
  sub_10000A570(v88, v83);
  sub_10000A570(v87, &v82);
  sub_10000A570(v86, &v81);
  v79 = v32;
  v80 = &protocol witness table for LayoutViewPlaceholder;
  v71 = v33;
  v78 = v33;
  swift_getKeyPath();

  sub_10076338C();

  v42 = v75;
  sub_10076E20C();

  swift_allocObject();
  v43 = sub_10076DDBC();
  v76 = v32;
  v77 = &protocol witness table for LayoutViewPlaceholder;
  v74 = &protocol witness table for LayoutViewPlaceholder;
  v75 = v43;
  v73 = v32;
  v72 = v40;

  v44 = v53;
  sub_1007693DC();
  swift_getKeyPath();
  sub_10076338C();

  sub_10037DBE0(&unk_1009544C0, &type metadata accessor for GameCenterReengagementLayout);
  v45 = v55;
  sub_10076D2AC();
  v47 = v46;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v54 + 8))(v44, v45);
  sub_10000CD74(v86);
  sub_10000CD74(v87);
  sub_10000CD74(v88);
  return v47;
}

uint64_t sub_10037DA54()
{
  v1 = sub_10076341C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

double sub_10037DB24(void *a1, double a2)
{
  sub_10076341C();

  return sub_10037CE00(a1, a2);
}

uint64_t sub_10037DBE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10037DC28(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_10076BF6C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100769FCC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10075E7BC();
  if (result)
  {
    v26 = v5;
    v27 = result;
    if (sub_10076BB5C())
    {
      v25[1] = a2;
      v13 = [v2 traitCollection];
      sub_1002301BC(v11);

      sub_100769FBC();
      (*(v9 + 8))(v11, v8);
      sub_10076BF7C();
      sub_10076BF4C();
      (*(v26 + 8))(v7, v4);
      v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_iconView];
      [v14 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v14 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_100760C4C();
      sub_10076F64C();
      sub_10076FC1C();
      v29 = 0;
      memset(v28, 0, sizeof(v28));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100760B7C();

      sub_10002CBB4(v28);
    }

    v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_titleLabel];
    sub_10076BB6C();
    if (v16)
    {
      v17 = sub_10076FF6C();
    }

    else
    {
      v17 = 0;
    }

    [v15 setText:v17];

    v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_subtitleLabel];
    sub_10076BA9C();
    if (v19)
    {
      v20 = sub_10076FF6C();
    }

    else
    {
      v20 = 0;
    }

    [v18 setText:v20];

    sub_10076BBFC();
    if (v21)
    {
      v22 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_ageRatingView];
      v23 = *&v22[OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_ageLabel];
      v24 = sub_10076FF6C();
      [v23 setText:v24];

      [v22 setNeedsLayout];
      [v22 setNeedsDisplay];

      [v22 setHidden:0];
    }

    else
    {
      [*&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_ageRatingView] setHidden:1];
    }

    [v2 setNeedsLayout];
  }

  return result;
}

void sub_10037E0C4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_iconView);

    v5 = a1;
    sub_10075FCAC();
  }
}

uint64_t sub_10037E14C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10037E18C(uint64_t result)
{
  v2 = *(v1 + 25);
  *(v1 + 25) = result;
  if (v2 != (result & 1))
  {
    v3 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10074CA5C(v3 & 1);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10037E1F8()
{
  sub_10000CC8C(v0 + 32);

  return swift_deallocClassInstance();
}

void *sub_10037E284(void *result)
{
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = *(v1 + 16);
    v3 = result;
    [result _systemContentInset];
    v5 = v4;
    [v3 contentInset];
    v7 = v5 + v6;
    [v3 contentOffset];

    return sub_10037E18C(v7 + v8 <= v2);
  }

  return result;
}

void sub_10037E318(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for ProductLockupCollectionViewCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView);
    if (v7)
    {
      sub_1000ACA5C();
      v15 = a1;
      v8 = v7;
      sub_1007709BC();

      if ((v17 & 1) == 0)
      {
        MaxY = CGRectGetMaxY(v16);
        *(v3 + 16) = MaxY;
        *(v3 + 24) = 0;
        [a3 _systemContentInset];
        v11 = v10;
        [a3 contentInset];
        v13 = v11 + v12;
        [a3 contentOffset];
        sub_10037E18C(v13 + v14 <= MaxY);
      }
    }
  }
}

double sub_10037E460@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v142 = a4;
  v148 = a5;
  v8 = sub_1007621EC();
  v9 = *(v8 - 8);
  v140 = v8;
  v141 = v9;
  __chkstk_darwin(v8);
  v149 = (&v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10076469C();
  v12 = *(v11 - 8);
  v146 = v11;
  v147 = v12;
  __chkstk_darwin(v11);
  v143 = v13;
  v145 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100946720);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v138 - v19;
  __chkstk_darwin(v21);
  v23 = &v138 - v22;
  if (sub_10076FF9C() == a1 && v24 == a2)
  {
  }

  else
  {
    v139 = a2;
    v26 = sub_10077167C();

    if ((v26 & 1) == 0)
    {
      if (sub_10076FF9C() == a1 && v27 == v139)
      {

        v28 = a3;
        goto LABEL_18;
      }

      v68 = sub_10077167C();

      v28 = a3;
      if (v68)
      {
LABEL_18:
        sub_10076468C();
        swift_getKeyPath();
        sub_10076F49C();

        (*(v15 + 8))(v17, v14);
        if (v151)
        {

          v69 = sub_10000A5D4(&qword_100954768);
          v70 = v148;
          *(v148 + 24) = v69;
          v70[4] = sub_100120048(&qword_100954770, &qword_100954768);
          v149 = sub_10000DB7C(v70);
          v148 = sub_10076FF9C();
          v141 = v71;
          type metadata accessor for ShelfFooterView();
          sub_1007708FC();
          v72 = swift_allocObject();
          swift_weakInit();
          v73 = v146;
          v74 = v147;
          v75 = v145;
          (*(v147 + 16))(v145, v28, v146);
          v76 = (*(v74 + 80) + 24) & ~*(v74 + 80);
          v77 = (v143 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
          v78 = swift_allocObject();
          *(v78 + 16) = v72;
          (*(v74 + 32))(v78 + v76, v75, v73);
          *(v78 + v77) = v142;
        }

        else
        {
          v79 = sub_10000A5D4(&qword_100950658);
          v80 = v148;
          *(v148 + 24) = v79;
          v80[4] = sub_100120048(&unk_100950660, &qword_100950658);
          sub_10000DB7C(v80);
          sub_10076FF9C();
          type metadata accessor for InfiniteScrollFooterView();
          sub_1007708FC();
        }

        goto LABEL_20;
      }

      type metadata accessor for GradientSectionBackgroundView();
      if (sub_1007708EC() == a1 && v81 == v139)
      {

LABEL_27:
        v83 = sub_10000A5D4(&qword_100954758);
        v84 = v148;
        *(v148 + 24) = v83;
        v84[4] = sub_100120048(&qword_100954760, &qword_100954758);
        v149 = sub_10000DB7C(v84);
        v148 = sub_1007708EC();
        sub_1007708FC();
        v85 = v146;
        v86 = v147;
        v87 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v88 = (*(v86 + 80) + 16) & ~*(v86 + 80);
        v89 = (v143 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
        v90 = swift_allocObject();
        (*(v86 + 32))(v90 + v88, v87, v85);
        *(v90 + v89) = v144;

        goto LABEL_20;
      }

      v82 = sub_10077167C();

      if (v82)
      {
        goto LABEL_27;
      }

      type metadata accessor for MaterialGradientSectionBackgroundView();
      if (sub_1007708EC() == a1 && v91 == v139)
      {

LABEL_33:
        v93 = sub_10000A5D4(&qword_100954748);
        v94 = v148;
        *(v148 + 24) = v93;
        v94[4] = sub_100120048(&qword_100954750, &qword_100954748);
        v149 = sub_10000DB7C(v94);
        v148 = sub_1007708EC();
        sub_1007708FC();
        v95 = v146;
        v96 = v147;
        v97 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v98 = (*(v96 + 80) + 16) & ~*(v96 + 80);
        v99 = (v143 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
        v100 = swift_allocObject();
        (*(v96 + 32))(v100 + v98, v97, v95);
        *(v100 + v99) = v144;

        goto LABEL_20;
      }

      v92 = sub_10077167C();

      if (v92)
      {
        goto LABEL_33;
      }

      type metadata accessor for ArtworkSectionBackgroundView();
      if (sub_1007708EC() == a1 && v101 == v139)
      {

LABEL_38:
        v103 = sub_10000A5D4(&qword_100954738);
        v104 = v148;
        *(v148 + 24) = v103;
        v104[4] = sub_100120048(&qword_100954740, &qword_100954738);
        v149 = sub_10000DB7C(v104);
        v148 = sub_1007708EC();
        sub_1007708FC();
        v105 = v146;
        v106 = v147;
        v107 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v108 = (*(v106 + 80) + 16) & ~*(v106 + 80);
        v109 = (v143 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
        v110 = swift_allocObject();
        (*(v106 + 32))(v110 + v108, v107, v105);
        *(v110 + v109) = v144;

        goto LABEL_20;
      }

      v102 = sub_10077167C();

      if (v102)
      {
        goto LABEL_38;
      }

      type metadata accessor for InteractiveSectionBackgroundView();
      if (sub_1007708EC() == a1 && v111 == v139)
      {

LABEL_43:
        v113 = sub_10000A5D4(&qword_100954728);
        v114 = v148;
        *(v148 + 24) = v113;
        v114[4] = sub_100120048(&qword_100954730, &qword_100954728);
        v149 = sub_10000DB7C(v114);
        v148 = sub_1007708EC();
        sub_1007708FC();
        v115 = swift_allocObject();
        swift_weakInit();
        v116 = v146;
        v117 = v147;
        v118 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v119 = (*(v117 + 80) + 24) & ~*(v117 + 80);
        v120 = swift_allocObject();
        *(v120 + 16) = v115;
        (*(v117 + 32))(v120 + v119, v118, v116);
        goto LABEL_20;
      }

      v112 = sub_10077167C();

      if (v112)
      {
        goto LABEL_43;
      }

      type metadata accessor for EditorsChoiceBackgroundView();
      if (sub_1007708EC() == a1 && v121 == v139)
      {

LABEL_48:
        v123 = sub_10000A5D4(&qword_100954718);
        v124 = v148;
        *(v148 + 24) = v123;
        v124[4] = sub_100120048(&qword_100954720, &qword_100954718);
        v149 = sub_10000DB7C(v124);
        v148 = sub_1007708EC();
        sub_1007708FC();
        v125 = v146;
        v126 = v147;
        v127 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v128 = (*(v126 + 80) + 16) & ~*(v126 + 80);
        v129 = (v143 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
        v130 = swift_allocObject();
        (*(v126 + 32))(v130 + v128, v127, v125);
        *(v130 + v129) = v144;

        goto LABEL_20;
      }

      v122 = sub_10077167C();

      if (v122)
      {
        goto LABEL_48;
      }

      sub_10076529C();
      if (sub_10076527C() == a1 && v131 == v139)
      {
        goto LABEL_51;
      }

      v132 = sub_10077167C();

      if (v132)
      {
        goto LABEL_53;
      }

      if (sub_10076528C() == a1 && v135 == v139)
      {
LABEL_51:
      }

      else
      {
        v136 = sub_10077167C();

        if ((v136 & 1) == 0)
        {
          v137 = v148;
          *(v148 + 32) = 0;
          result = 0.0;
          *v137 = 0u;
          v137[1] = 0u;
          return result;
        }
      }

LABEL_53:
      v133 = sub_10000A5D4(&qword_10094A0E8);
      v134 = v148;
      *(v148 + 24) = v133;
      v134[4] = sub_100120048(&qword_10094A0F0, &qword_10094A0E8);
      sub_10000DB7C(v134);
      sub_10076526C();
      return result;
    }
  }

  v29 = a3;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v30 = *(v15 + 8);
  v30(v23, v14);
  if (!v150)
  {
    v32 = v140;
    v33 = v149;
    goto LABEL_14;
  }

  v31 = sub_10076028C();

  v32 = v140;
  v33 = v149;
  if ((v31 & 1) == 0)
  {
LABEL_14:
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v30(v20, v14);
    v44 = (*(v141 + 88))(v33, v32);
    v45 = v147;
    if (v44 != enum case for ShelfBackground.interactive(_:))
    {
      v55 = sub_10000A5D4(&qword_10094A0F8);
      v56 = v148;
      *(v148 + 24) = v55;
      v56[4] = sub_100120048(&qword_10094A100, &qword_10094A0F8);
      sub_10000DB7C(v56);
      v148 = sub_10076FF9C();
      v140 = v57;
      type metadata accessor for TitleHeaderView(0);
      v58 = sub_1007708FC();
      v138 = v59;
      v139 = v58;
      v60 = v29;
      v61 = swift_allocObject();
      swift_weakInit();
      v63 = v145;
      v62 = v146;
      (*(v45 + 16))(v145, v60, v146);
      v64 = (*(v45 + 80) + 24) & ~*(v45 + 80);
      v65 = (v143 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      *(v66 + 16) = v61;
      (*(v45 + 32))(v66 + v64, v63, v62);
      *(v66 + v65) = v142;

      sub_10076A3BC();
      (*(v141 + 8))(v149, v32);
      return result;
    }

    v46 = sub_10000A5D4(&qword_100954778);
    v47 = v148;
    *(v148 + 24) = v46;
    v47[4] = sub_100120048(&qword_100954780, &qword_100954778);
    v149 = sub_10000DB7C(v47);
    v148 = sub_10076FF9C();
    v141 = v48;
    type metadata accessor for InteractiveTitleHeaderView();
    sub_1007708FC();
    v49 = swift_allocObject();
    swift_weakInit();
    v51 = v145;
    v50 = v146;
    (*(v45 + 16))(v145, v29, v146);
    v52 = (*(v45 + 80) + 24) & ~*(v45 + 80);
    v53 = (v143 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    *(v54 + 16) = v49;
    (*(v45 + 32))(v54 + v52, v51, v50);
    *(v54 + v53) = v142;

    goto LABEL_20;
  }

  v34 = sub_10000A5D4(&qword_100954788);
  v35 = v148;
  *(v148 + 24) = v34;
  v35[4] = sub_100120048(&qword_100954790, &qword_100954788);
  v149 = sub_10000DB7C(v35);
  v148 = sub_10076FF9C();
  v141 = v36;
  type metadata accessor for ShelfHeaderView();
  sub_1007708FC();
  v37 = swift_allocObject();
  swift_weakInit();
  v39 = v146;
  v38 = v147;
  v40 = v145;
  (*(v147 + 16))(v145, v29, v146);
  v41 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v42 = (v143 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v37;
  (*(v38 + 32))(v43 + v41, v40, v39);
  *(v43 + v42) = v142;

LABEL_20:
  sub_10076A3BC();
  return result;
}

uint64_t sub_10037F5E8(uint64_t a1, int *a2)
{
  v54 = a2;
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v58 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076C38C();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v52 - v12;
  __chkstk_darwin(v13);
  v53 = &v52 - v14;
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  __chkstk_darwin(v21);
  v23 = &v52 - v22;
  __chkstk_darwin(v24);
  v26 = &v52 - v25;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v27 = *(v9 + 8);
  v27(v26, v8);
  v28 = v66;
  if (!v66)
  {
    goto LABEL_16;
  }

  v29 = v65;

  v30 = (v28 >> 56) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v30 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
LABEL_16:
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v27(v23, v8);
    if (!v65)
    {
      return 0;
    }

    v31 = sub_1007603BC();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  sub_10076464C();
  sub_10076C8BC();
  sub_10076C2FC();
  v33 = v32;
  v35 = v34;
  (*(v59 + 8))(v7, v60);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v27(v20, v8);
  v36 = v65;
  if (!v65)
  {
    goto LABEL_12;
  }

  if ((sub_10076028C() & 1) == 0)
  {

LABEL_12:
    v38 = sub_100382310(v33, v35);
    v40 = v39;
    v60 = type metadata accessor for TitleHeaderView(0);
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v27(v17, v8);
    v59 = v65;
    v54 = v66;
    v41 = v53;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v27(v41, v8);
    v42 = v64;
    v43 = v55;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v27(v43, v8);
    v45 = v62;
    v44 = v63;
    v46 = v56;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v27(v46, v8);
    v47 = v61;
    v48 = sub_100382688();
    v49 = v58;
    (*(*v57 + 192))(a1);
    v50 = sub_10076462C();
    swift_getObjectType();
    LOBYTE(v51) = 1;
    sub_1001963E0(v59, v54, v42, v45, v44, v47, 0, 0, v33, v35, v38, v40, 0, 0, v48, v49, v51, v50);
    swift_unknownObjectRelease();

    sub_100384A74(v49, type metadata accessor for TitleHeaderView.Style);
    return *&v33;
  }

  type metadata accessor for ShelfHeaderView();
  v33 = sub_10042395C(v36, a1, v33, v35);

  return *&v33;
}

uint64_t sub_10037FCAC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007621EC();
  v106 = *(v6 - 8);
  v107 = v6;
  __chkstk_darwin(v6);
  v105 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10076B5BC();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076F9AC();
  v103 = *(v9 - 8);
  v104 = v9;
  __chkstk_darwin(v9);
  v97 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = &v83 - v12;
  __chkstk_darwin(v13);
  v102 = &v83 - v14;
  v92 = sub_10076469C();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v15;
  __chkstk_darwin(v16);
  v88 = &v83 - v17;
  v18 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v18 - 8);
  v85 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v84);
  v108 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10076BEDC();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000A5D4(&unk_100946720);
  v99 = *(v23 - 8);
  __chkstk_darwin(v23);
  v95 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  v112 = a2;
  sub_10076468C();
  sub_100760C4C();
  sub_10076F64C();
  v93 = a3;
  sub_10076FC1C();
  v109 = v113;
  swift_getKeyPath();
  sub_10076F49C();

  v28 = v113;
  v29 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork;
  v30 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork);

  sub_1001903B4(v28);
  *(a1 + v29) = v28;

  sub_1001903C8(v30);

  swift_getKeyPath();
  v110 = v23;
  v111 = v27;
  sub_10076F49C();

  v31 = v113;
  v32 = v114;
  v33 = (a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
  v35 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
  v34 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText + 8);

  sub_10018FD94(v31, v32);
  *v33 = v31;
  v33[1] = v32;

  sub_10018FE28(v35, v34);

  if (*(a1 + v29))
  {
    v36 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView);
    if (v36)
    {

      v37 = v36;
      sub_10076BEFC();
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v86 + 8))(v22, v87);
      sub_10076BFCC();
      sub_10075FD2C();
      sub_100384AD4(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760B8C();
    }
  }

  swift_getKeyPath();
  sub_10076F49C();

  v38 = v113;
  v39 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork;
  v40 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork);

  sub_100190554(v38);
  *(a1 + v39) = v38;

  sub_100190668(v40);

  v41 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  sub_10076F49C();

  if (v114)
  {
    v42 = sub_10076FF6C();
  }

  else
  {
    v42 = 0;
  }

  [v41 setText:v42];

  v43 = *(a1 + v39);
  if (v43)
  {
    v44 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView);
    if (v44)
    {
      v45 = v108;
      (*((swift_isaMask & *a1) + 0x1C0))();
      v46 = v85;
      sub_10011BA50(v45 + *(v84 + 20), v85);

      v47 = v44;
      sub_100384A74(v45, type metadata accessor for TitleHeaderView.Style);
      sub_1006BA044(v43, v46, a1);
      sub_100384A74(v46, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v86 + 8))(v22, v87);
      sub_10076BFCC();
      sub_10075FD2C();
      sub_100384AD4(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760B8C();
    }
  }

  v48 = v91;
  v49 = *(v91 + 16);
  v50 = v88;
  v51 = v112;
  v52 = v92;
  v49(v88, v112, v92);
  v53 = v90;
  v49(v90, v50, v52);
  v54 = (*(v48 + 80) + 24) & ~*(v48 + 80);
  v55 = swift_allocObject();
  v56 = v94;
  *(v55 + 16) = v94;
  (*(v48 + 32))(v55 + v54, v50, v52);
  v57 = (a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines);
  *v57 = sub_100384A08;
  v57[1] = v55;

  [v41 setNumberOfLines:sub_100382688()];

  (*(v48 + 8))(v53, v52);
  v58 = v108;
  (*(*v56 + 192))(v51);
  (*((swift_isaMask & *a1) + 0x1C8))(v58);
  v59 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
  if (v59)
  {
    swift_getKeyPath();
    v60 = v59;
    sub_10076F49C();

    if (v114)
    {
      v61 = sub_10076FF6C();
    }

    else
    {
      v61 = 0;
    }

    [v60 setText:v61];
  }

  sub_100380BBC(a1, v112, v93);
  v113 = sub_10076467C();
  v62 = sub_10077163C();
  v116[3] = &type metadata for String;
  v116[0] = v62;
  v116[1] = v63;
  sub_10076466C();
  v64 = sub_1007713CC();
  v66 = v65;
  sub_100016C74(&v113);
  v115 = &type metadata for String;
  v113 = v64;
  v114 = v66;
  v67 = v97;
  sub_10076F97C();
  sub_10000CFBC(&v113, &unk_1009434C0);
  sub_10000CFBC(v116, &unk_1009434C0);
  swift_getKeyPath();
  v68 = v98;
  v69 = v110;
  v70 = v111;
  sub_10076F49C();

  v71 = sub_10076B5AC();
  v73 = v72;
  (*(v100 + 8))(v68, v101);
  v115 = &type metadata for String;
  v113 = v71;
  v114 = v73;
  v74 = v96;
  sub_10076F98C();
  v75 = v104;
  v76 = *(v103 + 8);
  v76(v67, v104);
  sub_10000CFBC(&v113, &unk_1009434C0);
  swift_getKeyPath();
  sub_10076F49C();

  v77 = *(v116[0] + 16);

  v115 = &type metadata for Int;
  v113 = v77;
  v78 = v102;
  sub_10076F98C();
  v76(v74, v75);
  sub_10000CFBC(&v113, &unk_1009434C0);
  sub_100770B9C();
  v76(v78, v75);
  v79 = v95;
  sub_10076468C();
  swift_getKeyPath();
  v80 = v105;
  sub_10076F49C();

  v81 = *(v99 + 8);
  v81(v79, v69);
  [a1 setOverrideUserInterfaceStyle:sub_1004751F8()];
  (*(v106 + 8))(v80, v107);
  [a1 setNeedsLayout];

  return (v81)(v70, v69);
}

uint64_t sub_100380BBC(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v45 = a1;
  v4 = sub_10076F9AC();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076469C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_10000A5D4(&unk_100946720);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  if (v47[0])
  {
    v39 = v15;
    v40 = v13;
    v16 = a2;
    sub_1003812BC(a2, v12);
    v17 = type metadata accessor for Accessory();
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
    v18 = v45;
    (*((swift_isaMask & *v45) + 0x268))(v12, v44);
    sub_10000CFBC(v12, &qword_10094BB50);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v6);
    v20 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    (*(v7 + 32))(v21 + v20, v9, v6);
    v22 = (v18 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
    v23 = *(v18 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
    *v22 = sub_10038496C;
    v22[1] = v21;

    sub_1000167E0(v23);

    v24 = *(v18 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView);
    if (v24)
    {
      v25 = v24;
      v26 = sub_10076467C();
      v48[3] = &type metadata for Int;
      v48[0] = v26;
      sub_10076466C();
      v27 = sub_1007713CC();
      v29 = v28;
      sub_100016C74(v47);
      v47[3] = &type metadata for String;
      v47[0] = v27;
      v47[1] = v29;
      v30 = v41;
      sub_10076F97C();
      sub_10000CFBC(v47, &unk_1009434C0);
      sub_10000CFBC(v48, &unk_1009434C0);
      sub_100770B9C();

      (*(v42 + 8))(v30, v43);
    }

    else
    {
    }

    return (*(v46 + 8))(v39, v40);
  }

  else
  {
    v32 = v44;
    v31 = v45;
    swift_getKeyPath();
    sub_10076F49C();

    if (v47[0])
    {
      *v12 = v47[0];
      *(v12 + 8) = xmmword_10079E050;
      v33 = type metadata accessor for Accessory();
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
      v34 = *((swift_isaMask & *v31) + 0x268);

      v34(v12, v32);

      sub_10000CFBC(v12, &qword_10094BB50);
      return (*(v46 + 8))(v15, v13);
    }

    else
    {
      v36 = type metadata accessor for Accessory();
      (*(*(v36 - 8) + 56))(v12, 1, 1, v36);
      (*((swift_isaMask & *v31) + 0x268))(v12, v32);
      sub_10000CFBC(v12, &qword_10094BB50);
      (*(v46 + 8))(v15, v13);
      v37 = (v31 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
      v38 = *(v31 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
      *v37 = 0;
      v37[1] = 0;
      return sub_1000167E0(v38);
    }
  }
}