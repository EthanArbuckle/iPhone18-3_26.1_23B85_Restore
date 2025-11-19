uint64_t type metadata accessor for StreaksWidgetCalculator.CalculatedTimelineEntry()
{
  result = qword_1001240D8;
  if (!qword_1001240D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007988C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreaksWidgetCalculator.CalculatedTimelineEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000798F0(uint64_t a1)
{
  v2 = type metadata accessor for StreaksWidgetCalculator.CalculatedTimelineEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007994C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreaksWidgetCalculator.CalculatedTimelineEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000799B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[32])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_100079A04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100079A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000DA084();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100007BC0(&qword_1001203B8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 32));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100079BA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000DA084();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100007BC0(&qword_1001203B8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100079CBC()
{
  sub_1000DA084();
  if (v0 <= 0x3F)
  {
    sub_100024818();
    if (v1 <= 0x3F)
    {
      sub_100079D68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100079D68()
{
  if (!qword_1001224A0)
  {
    v0 = sub_1000DC7C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1001224A0);
    }
  }
}

uint64_t sub_100079DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DB454();
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1000DB464();
}

uint64_t sub_100079EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000DB454();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1000DB464();
}

unint64_t sub_100079FA8()
{
  result = sub_1000D9DA4();
  if (v1 <= 0x3F)
  {
    result = sub_10007A098();
    if (v2 <= 0x3F)
    {
      result = sub_10007A0E8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10007A098()
{
  result = qword_1001241A0;
  if (!qword_1001241A0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1001241A0);
  }

  return result;
}

unint64_t sub_10007A0E8()
{
  result = qword_1001241A8[0];
  if (!qword_1001241A8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1001241A8);
  }

  return result;
}

void sub_10007A14C()
{
  sub_10007A7F0();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WidgetCTAView.CTAInteraction();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10007A1FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1000DBBF4() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_1000D9DA4() - 8);
  v13 = 40;
  if (*(v12 + 64) > 0x28uLL)
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v15 = *(v12 + 80) & 0xF8 | 7;
  v16 = v13 + (((((v7 & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + *(v9 + 64) + v15) & ~v15) + 1;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v20 < 2)
    {
LABEL_31:
      v22 = ((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v24 = *(v9 + 48);

        return v24((v22 + v14 + 8) & ~v14, v10, v8);
      }

      else
      {
        v23 = *v22;
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_20:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 > 3)
    {
      LODWORD(v16) = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v16) = *a1;
      }
    }

    else if (v16 == 1)
    {
      LODWORD(v16) = *a1;
    }

    else
    {
      LODWORD(v16) = *a1;
    }
  }

  return v11 + (v16 | v21) + 1;
}

void sub_10007A4A0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1000DBBF4() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v28 = v11;
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(sub_1000D9DA4() - 8);
  v15 = 40;
  if (*(v14 + 64) > 0x28uLL)
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v11 + 80);
  v17 = *(v14 + 80) & 0xF8 | 7;
  v18 = v15 + (((((v9 & 0xFFFFFFFFFFFFFFF8) + v16 + 16) & ~v16) + *(v11 + 64) + v17) & ~v17) + 1;
  if (a3 <= v13)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v13 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v13 < a2)
  {
    v20 = ~v13 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_52:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  v25 = (&a1[v9 + 8] & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {
    v27 = *(v28 + 56);

    v27((v25 + v16 + 8) & ~v16, a2, v12, v10);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v26 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v26 = (a2 - 1);
    }

    *v25 = v26;
  }
}

void sub_10007A7F0()
{
  if (!qword_100122FF0)
  {
    sub_1000DBBF4();
    v0 = sub_1000DB124();
    if (!v1)
    {
      atomic_store(v0, &qword_100122FF0);
    }
  }
}

uint64_t sub_10007A88C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v117 = a2;
  v3 = sub_1000DBBF4();
  v4 = __chkstk_darwin(v3 - 8);
  v114 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = *(*(a1 + 16) - 8);
  __chkstk_darwin(v4);
  v109 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  v113 = v8;
  v108 = v7;
  v9 = type metadata accessor for BackgroundModifier();
  v112 = *(v9 - 8);
  __chkstk_darwin(v9);
  v111 = &v86 - v10;
  v104 = sub_1000DB4A4();
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v98 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100007BC0(&qword_100124230);
  __chkstk_darwin(v88);
  v13 = &v86 - v12;
  v14 = sub_1000DB654();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100007BC0(&qword_100124238);
  __chkstk_darwin(v18);
  v20 = &v86 - v19;
  v87 = sub_100007BC0(&qword_100124240);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v22 = &v86 - v21;
  v89 = sub_100007BC0(&qword_100124248);
  __chkstk_darwin(v89);
  v24 = &v86 - v23;
  v93 = sub_100007BC0(&qword_100124250);
  __chkstk_darwin(v93);
  v90 = &v86 - v25;
  v95 = sub_100007BC0(&qword_100124258);
  v92 = *(v95 - 8);
  __chkstk_darwin(v95);
  v91 = &v86 - v26;
  v27 = sub_100007BC0(&qword_100124260);
  v96 = *(v27 - 8);
  __chkstk_darwin(v27);
  v94 = &v86 - v28;
  v97 = v29;
  v116 = v9;
  v30 = sub_1000DB1C4();
  v103 = *(v30 - 8);
  __chkstk_darwin(v30);
  v99 = &v86 - v31;
  v105 = v32;
  v107 = sub_1000DB1C4();
  v106 = *(v107 - 8);
  v33 = __chkstk_darwin(v107);
  v100 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v101 = &v86 - v35;
  v115 = a1;
  sub_10007B6FC(a1, v20);
  sub_1000DB694();
  (*(v15 + 104))(v17, enum case for Font.Leading.tight(_:), v14);
  v36 = sub_1000DB674();

  (*(v15 + 8))(v17, v14);
  KeyPath = swift_getKeyPath();
  v38 = &v20[*(v18 + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  v39 = sub_10007CA38();
  sub_1000DB804();
  sub_1000080B0(v20, &qword_100124238);
  v40 = enum case for DynamicTypeSize.xxLarge(_:);
  v41 = sub_1000DB1B4();
  (*(*(v41 - 8) + 104))(v13, v40, v41);
  sub_10007DA24(&qword_1001242B0, &type metadata accessor for DynamicTypeSize);
  result = sub_1000DBE64();
  if (result)
  {
    *&v125 = v18;
    *(&v125 + 1) = v39;
    swift_getOpaqueTypeConformance2();
    sub_1000391D4(&qword_1001242B8, &qword_100124230);
    v43 = v87;
    sub_1000DB7E4();
    sub_1000080B0(v13, &qword_100124230);
    (*(v86 + 8))(v22, v43);
    v44 = sub_1000DB584();
    sub_1000DB0B4();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = &v24[*(sub_100007BC0(&qword_1001242C0) + 36)];
    *v53 = v44;
    *(v53 + 1) = v46;
    *(v53 + 2) = v48;
    *(v53 + 3) = v50;
    *(v53 + 4) = v52;
    v53[40] = 0;
    sub_1000DB994();
    sub_1000DB204();
    v54 = &v24[*(v89 + 36)];
    v55 = v130;
    *(v54 + 4) = v129;
    *(v54 + 5) = v55;
    *(v54 + 6) = v131;
    v56 = v126;
    *v54 = v125;
    *(v54 + 1) = v56;
    v57 = v128;
    *(v54 + 2) = v127;
    *(v54 + 3) = v57;
    v58 = v98;
    sub_1000DB494();
    sub_10007CC8C();
    sub_10007DA24(&qword_1001242D8, &type metadata accessor for BorderlessButtonStyle);
    v59 = v90;
    v60 = v104;
    sub_1000DB7B4();
    (*(v102 + 8))(v58, v60);
    sub_1000080B0(v24, &qword_100124248);
    v61 = (v59 + *(sub_100007BC0(&qword_1001242E0) + 36));
    sub_100007BC0(&qword_1001242E8);
    sub_1000DB214();
    *v61 = swift_getKeyPath();
    v62 = sub_1000DB864();
    v63 = v93;
    *(v59 + *(v93 + 36)) = v62;
    v64 = sub_10007CF6C();
    v65 = v91;
    sub_1000DB7A4();
    sub_1000080B0(v59, &qword_100124250);
    v123 = v63;
    v124 = v64;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v67 = v94;
    v68 = v95;
    sub_1000DB724();
    (*(v92 + 8))(v65, v68);
    v69 = v109;
    v70 = v113;
    (*(v110 + 16))(v109, v118 + *(v115 + 40), v113);
    v71 = v114;
    sub_100080E34(v114);
    v72 = v111;
    sub_10007C01C(v69, v71, v70, v111);
    v123 = v68;
    v124 = OpaqueTypeConformance2;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = v99;
    v75 = v97;
    v76 = v116;
    sub_1000DB824();
    (*(v112 + 8))(v72, v76);
    (*(v96 + 8))(v67, v75);
    sub_1000DB844();
    sub_1000DB874();

    WitnessTable = swift_getWitnessTable();
    v121 = v73;
    v122 = WitnessTable;
    v78 = v105;
    v79 = swift_getWitnessTable();
    v80 = v100;
    sub_1000DB814();

    (*(v103 + 8))(v74, v78);
    v119 = v79;
    v120 = &protocol witness table for _ShadowEffect;
    v81 = v107;
    swift_getWitnessTable();
    v82 = v106;
    v83 = *(v106 + 16);
    v84 = v101;
    v83(v101, v80, v81);
    v85 = *(v82 + 8);
    v85(v80, v81);
    v83(v117, v84, v81);
    return (v85)(v84, v81);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10007B6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = sub_100007BC0(&qword_1001242A8);
  v48 = *(v54 - 8);
  __chkstk_darwin(v54);
  v47 = &v42 - v3;
  v50 = sub_100007BC0(&qword_100124318);
  __chkstk_darwin(v50);
  v52 = &v42 - v4;
  v44 = sub_100007BC0(qword_100124320);
  __chkstk_darwin(v44);
  v43 = &v42 - v5;
  v51 = sub_100007BC0(&qword_100124288);
  __chkstk_darwin(v51);
  v46 = &v42 - v6;
  v45 = sub_100007BC0(&qword_100124298);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = &v42 - v7;
  v9 = sub_1000D9DA4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v18 = type metadata accessor for WidgetCTAView.CTAInteraction();
  __chkstk_darwin(v18);
  v20 = (&v42 - v19);
  v21 = *(a1 + 44);
  v22 = v49;
  (*(v23 + 16))(v20, v49 + v21, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __chkstk_darwin(EnumCaseMultiPayload);
      *(&v42 - 4) = v17;
      *(&v42 - 3) = v16;
      *(&v42 - 2) = v22;

      v25 = v47;
      sub_1000DB924();
      v26 = v48;
      v27 = v54;
      (*(v48 + 16))(v43, v25, v54);
      swift_storeEnumTagMultiPayload();
      sub_1000391D4(&qword_100124290, &qword_100124298);
      sub_1000391D4(&qword_1001242A0, &qword_1001242A8);
      v28 = v46;
      sub_1000DB464();
      sub_10007D184(v28, v52);
      swift_storeEnumTagMultiPayload();
      sub_10007CBA8();
      sub_1000DB464();

      sub_1000080B0(v28, &qword_100124288);
      return (*(v26 + 8))(v25, v27);
    }

    else
    {
      sub_10007D168(v20, v55);
      v34 = sub_100007E68(v55, v55[3]);
      __chkstk_darwin(v34);
      v37 = (*(v36 + 16))(&v42 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
      __chkstk_darwin(v37);
      *(&v42 - 4) = v17;
      *(&v42 - 3) = v16;
      *(&v42 - 2) = v38;
      v39 = v47;
      sub_1000DB914();
      v40 = v48;
      v41 = v54;
      (*(v48 + 16))(v52, v39, v54);
      swift_storeEnumTagMultiPayload();
      sub_10007CBA8();
      sub_1000391D4(&qword_1001242A0, &qword_1001242A8);
      sub_1000DB464();
      (*(v40 + 8))(v39, v41);
      return sub_100007FC0(v55);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v20, v9);
    v30 = (*(v10 + 16))(v13, v15, v9);
    __chkstk_darwin(v30);
    *(&v42 - 4) = v17;
    *(&v42 - 3) = v16;
    *(&v42 - 2) = v22;
    sub_1000DB6A4();
    v31 = v42;
    v32 = v45;
    (*(v42 + 16))(v43, v8, v45);
    swift_storeEnumTagMultiPayload();
    sub_1000391D4(&qword_100124290, &qword_100124298);
    sub_1000391D4(&qword_1001242A0, &qword_1001242A8);
    v33 = v46;
    sub_1000DB464();
    sub_10007D184(v33, v52);
    swift_storeEnumTagMultiPayload();
    sub_10007CBA8();
    sub_1000DB464();
    sub_1000080B0(v33, &qword_100124288);
    (*(v31 + 8))(v8, v32);
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_10007C01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for BackgroundModifier() + 36);
  v7 = sub_1000DBBF4();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a2, v7);
}

uint64_t sub_10007C0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  v57 = a3;
  swift_getWitnessTable();
  v4 = sub_1000DB4B4();
  sub_100007C08(&qword_1001243A8);
  v5 = sub_1000DB1C4();
  v52 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v50 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = v48 - v8;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = sub_10007D9D0();
  v48[2] = v10;
  v74 = v10;
  v75 = &type metadata for Circle;
  v48[3] = v9;
  v76 = v9;
  v77 = v11;
  v48[1] = v11;
  v58 = sub_1000DB554();
  v59 = v4;
  v12 = sub_1000DB1C4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = v48 - v17;
  v18 = sub_1000DBBF4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1000DB474();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = v48 - v22;
  sub_1000DBBE4();
  sub_10007DA24(&qword_100122228, &type metadata accessor for WidgetRenderingMode);
  LOBYTE(a2) = sub_1000DBE64();
  (*(v19 + 8))(v21, v18);
  if (a2)
  {
    sub_1000DB994();
    sub_100007BC0(&qword_1001243C0);
    WitnessTable = swift_getWitnessTable();
    v24 = sub_100007C08(&qword_1001243C8);
    v25 = sub_10007DA6C();
    v74 = v24;
    v75 = v25;
    swift_getOpaqueTypeConformance2();
    v26 = v50;
    sub_1000DB764();
    v27 = sub_1000391D4(&qword_1001243B8, &qword_1001243A8);
    v62 = WitnessTable;
    v63 = v27;
    v53 = swift_getWitnessTable();
    v28 = v52;
    v29 = *(v52 + 16);
    v30 = v51;
    v29(v51, v26, v5);
    v31 = *(v28 + 8);
    v31(v26, v5);
    v29(v26, v30, v5);
    v32 = swift_getWitnessTable();
    v60 = WitnessTable;
    v61 = v32;
    swift_getWitnessTable();
    v33 = v54;
    sub_100079EB0(v26, v12, v5);
    v31(v26, v5);
    v31(v30, v5);
  }

  else
  {
    v34 = swift_getWitnessTable();
    sub_1000DB774();
    v35 = swift_getWitnessTable();
    v72 = v34;
    v73 = v35;
    v53 = swift_getWitnessTable();
    v36 = *(v13 + 16);
    v37 = v49;
    v36(v49, v16, v12);
    v38 = *(v13 + 8);
    v38(v16, v12);
    v36(v16, v37, v12);
    v39 = sub_1000391D4(&qword_1001243B8, &qword_1001243A8);
    v70 = v34;
    v71 = v39;
    swift_getWitnessTable();
    v33 = v54;
    sub_100079DB8(v16, v12);
    v38(v16, v12);
    v38(v37, v12);
  }

  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v68 = v40;
  v69 = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_1000391D4(&qword_1001243B8, &qword_1001243A8);
  v66 = v40;
  v67 = v43;
  v44 = swift_getWitnessTable();
  v64 = v42;
  v65 = v44;
  v45 = v56;
  swift_getWitnessTable();
  v46 = v55;
  (*(v55 + 16))(v57, v33, v45);
  return (*(v46 + 8))(v33, v45);
}

uint64_t sub_10007C978()
{
  sub_1000DB844();
  sub_100007BC0(&qword_1001243C8);
  sub_10007DA6C();
  sub_1000DB724();
}

unint64_t sub_10007CA38()
{
  result = qword_100124268;
  if (!qword_100124268)
  {
    sub_100007C08(&qword_100124238);
    sub_10007CAF0();
    sub_1000391D4(&qword_100123088, &qword_100123090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124268);
  }

  return result;
}

unint64_t sub_10007CAF0()
{
  result = qword_100124270;
  if (!qword_100124270)
  {
    sub_100007C08(&qword_100124278);
    sub_10007CBA8();
    sub_1000391D4(&qword_1001242A0, &qword_1001242A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124270);
  }

  return result;
}

unint64_t sub_10007CBA8()
{
  result = qword_100124280;
  if (!qword_100124280)
  {
    sub_100007C08(&qword_100124288);
    sub_1000391D4(&qword_100124290, &qword_100124298);
    sub_1000391D4(&qword_1001242A0, &qword_1001242A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124280);
  }

  return result;
}

unint64_t sub_10007CC8C()
{
  result = qword_1001242C8;
  if (!qword_1001242C8)
  {
    sub_100007C08(&qword_100124248);
    sub_10007CD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001242C8);
  }

  return result;
}

unint64_t sub_10007CD18()
{
  result = qword_1001242D0;
  if (!qword_1001242D0)
  {
    sub_100007C08(&qword_1001242C0);
    sub_100007C08(&qword_100124240);
    sub_100007C08(&qword_100124230);
    sub_100007C08(&qword_100124238);
    sub_10007CA38();
    swift_getOpaqueTypeConformance2();
    sub_1000391D4(&qword_1001242B8, &qword_100124230);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001242D0);
  }

  return result;
}

uint64_t sub_10007CEA0(uint64_t a1)
{
  v2 = sub_1000DB224();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000DB2E4();
}

unint64_t sub_10007CF6C()
{
  result = qword_1001242F0;
  if (!qword_1001242F0)
  {
    sub_100007C08(&qword_100124250);
    sub_10007D024();
    sub_1000391D4(&qword_100124308, &qword_100124310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001242F0);
  }

  return result;
}

unint64_t sub_10007D024()
{
  result = qword_1001242F8;
  if (!qword_1001242F8)
  {
    sub_100007C08(&qword_1001242E0);
    sub_100007C08(&qword_100124248);
    sub_1000DB4A4();
    sub_10007CC8C();
    sub_10007DA24(&qword_1001242D8, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000391D4(&qword_100124300, &qword_1001242E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001242F8);
  }

  return result;
}

uint64_t sub_10007D168(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10007D184(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100124288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007D1F4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v2 + *(type metadata accessor for WidgetCTAView() + 36));
}

uint64_t sub_10007D240()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1000DBBF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10007D2C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1000DBBF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_10007D52C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1000DBBF4() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_10007D81C()
{
  sub_100007C08(&qword_100124260);
  type metadata accessor for BackgroundModifier();
  sub_1000DB1C4();
  sub_1000DB1C4();
  sub_100007C08(&qword_100124258);
  sub_100007C08(&qword_100124250);
  sub_10007CF6C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_10007D9D0()
{
  result = qword_1001243B0;
  if (!qword_1001243B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001243B0);
  }

  return result;
}

uint64_t sub_10007DA24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10007DA6C()
{
  result = qword_1001243D0;
  if (!qword_1001243D0)
  {
    sub_100007C08(&qword_1001243C8);
    sub_10007DAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001243D0);
  }

  return result;
}

unint64_t sub_10007DAF8()
{
  result = qword_1001243D8;
  if (!qword_1001243D8)
  {
    sub_100007C08(&qword_1001243E0);
    sub_1000391D4(&qword_1001243E8, qword_1001243F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001243D8);
  }

  return result;
}

uint64_t sub_10007DBB0()
{
  type metadata accessor for BackgroundModifier();
  swift_getWitnessTable();
  sub_1000DB4B4();
  sub_10007D9D0();
  sub_1000DB554();
  sub_1000DB1C4();
  sub_100007C08(&qword_1001243A8);
  sub_1000DB1C4();
  sub_1000DB474();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000391D4(&qword_1001243B8, &qword_1001243A8);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10007DDD0()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_10007DE58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ContactAsset()
{
  result = qword_1001244A0;
  if (!qword_1001244A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10007DF60()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v65 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000DBED4();
  __chkstk_darwin(v3 - 8);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_1001203B8);
  v6 = __chkstk_darwin(v5 - 8);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v60 - v8;
  v62 = sub_1000DA374();
  v9 = *(v62 - 8);
  __chkstk_darwin(v62);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000DAF04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007BC0(&qword_100120580);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = sub_1000DA744();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v0;
  sub_10001622C(v18);
  v23 = v19;
  v24 = v20;
  if ((*(v20 + 48))(v18, 1, v23) == 1)
  {
    sub_1000080B0(v18, &qword_100120580);
    return 0;
  }

  else
  {
    v26 = *(v20 + 32);
    v60 = v23;
    v26(v22, v18, v23);
    sub_1000DAED4();
    v27 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_1000DAE64().super.isa;
    v25 = [v27 initWithContentType:isa];

    (*(v13 + 8))(v15, v12);
    sub_1000DA724();
    v29 = sub_1000DBF04();

    [v25 setDisplayName:v29];

    v30 = v62;
    (*(v9 + 104))(v11, enum case for JournalFeatureFlags.search(_:), v62);
    LOBYTE(isa) = sub_1000DA364();
    (*(v9 + 8))(v11, v30);
    v31 = v22;
    if (isa)
    {
      sub_1000DA724();
      v32 = objc_allocWithZone(CSPerson);
      v33 = sub_1000DBF04();

      v34 = sub_1000DC124().super.isa;
      v35 = sub_1000DBF04();
      v36 = [v32 initWithDisplayName:v33 handles:v34 handleIdentifier:v35];

      sub_100007BC0(&qword_100120148);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000E2FB0;
      *(v37 + 32) = v36;
      sub_10007E878();
      v38 = v36;
      v39.super.isa = sub_1000DC124().super.isa;

      [v25 setAuthors:v39.super.isa];
    }

    else
    {
      sub_100007BC0(&qword_1001203C0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1000DFEF0;
      *(v40 + 32) = sub_1000DA724();
      *(v40 + 40) = v41;
      v39.super.isa = sub_1000DC124().super.isa;

      [v25 setAuthorNames:v39.super.isa];
    }

    v42 = v66;
    v43 = v63;

    sub_1000DA734();
    v44 = sub_1000DA084();
    v45 = *(v44 - 8);
    v46 = *(v45 + 48);
    if (v46(v43, 1, v44) == 1)
    {
      v47 = *(v61 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
      if (v47 && (v48 = [v47 entry]) != 0)
      {
        v49 = v48;
        sub_1000DA3A4();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      (*(v45 + 56))(v42, v50, 1, v44);
      if (v46(v43, 1, v44) != 1)
      {
        sub_1000080B0(v43, &qword_1001203B8);
      }
    }

    else
    {
      (*(v45 + 32))(v42, v43, v44);
      (*(v45 + 56))(v42, 0, 1, v44);
    }

    sub_1000DBE74();
    sub_1000DA114();
    v51 = sub_1000DBF64();
    v53 = v52;
    sub_100007BC0(&qword_1001203C0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1000DFEF0;
    v55 = sub_1000478A0(v51, v53, v42);
    v57 = v56;

    *(v54 + 32) = v55;
    *(v54 + 40) = v57;
    v58 = sub_1000DC124().super.isa;

    [v25 setAlternateNames:v58];

    sub_1000080B0(v42, &qword_1001203B8);
    (*(v24 + 8))(v31, v60);
  }

  return v25;
}

uint64_t sub_10007E834(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA744();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10007E878()
{
  result = qword_1001244F0;
  if (!qword_1001244F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001244F0);
  }

  return result;
}

uint64_t sub_10007E8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007BC0(&qword_100122F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for StreaksWidgetTimelineEntry();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10007E9E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100007BC0(&qword_100122F70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for StreaksWidgetTimelineEntry();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for StreaksWidgetView()
{
  result = qword_100124550;
  if (!qword_100124550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007EB3C()
{
  sub_10007EBC0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StreaksWidgetTimelineEntry();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10007EBC0()
{
  if (!qword_100122FE8)
  {
    sub_1000DBC14();
    v0 = sub_1000DB124();
    if (!v1)
    {
      atomic_store(v0, &qword_100122FE8);
    }
  }
}

uint64_t sub_10007EC34(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_100007BC0(&qword_100124618);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_1000DA484();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_1000810A8(&qword_10011FDF0, &type metadata accessor for MergeableFont.Traits);
  sub_1000DC884();
  v16 = v26;
  sub_1000810A8(&qword_100124620, &type metadata accessor for MergeableFont.Traits);
  v24 = a2;
  v17 = sub_1000DBE64();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    sub_1000DC8B4();
  }

  v20 = v27;
  sub_10001865C(v7, v27, &qword_100124618);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_10007EF38(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_100007BC0(&qword_1001245F0);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_1000DB1F4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_1000810A8(&qword_100121C40, &type metadata accessor for RedactionReasons);
  sub_1000DC884();
  v16 = v26;
  sub_1000810A8(&qword_1001245F8, &type metadata accessor for RedactionReasons);
  v24 = a2;
  v17 = sub_1000DBE64();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    sub_1000DC8B4();
  }

  v20 = v27;
  sub_10001865C(v7, v27, &qword_1001245F0);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_10007F23C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StreaksWidgetView();
  v4 = v3 - 8;
  v29 = *(v3 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v3);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007BC0(&qword_100121580);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for AppLaunchAction();
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007BC0(&qword_100124588);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = v1;
  sub_10007F590(&v28 - v13);
  swift_storeEnumTagMultiPayload();
  sub_10009BEC0(v8);
  sub_100081048(v11, type metadata accessor for AppLaunchAction);
  sub_100080688();
  sub_1000DB734();
  sub_1000080B0(v8, &qword_100121580);
  sub_1000080B0(v14, &qword_100124588);
  KeyPath = swift_getKeyPath();
  v17 = v15;
  v18 = v15;
  v19 = v28;
  sub_100080FE0(v18, v28, type metadata accessor for StreaksWidgetView);
  v20 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v21 = swift_allocObject();
  sub_100080AF8(v19, v21 + v20);
  v22 = (a1 + *(sub_100007BC0(&qword_1001245D0) + 36));
  *v22 = KeyPath;
  v22[1] = sub_100080B5C;
  v22[2] = v21;
  v23 = v17 + *(v4 + 28);
  LOBYTE(v19) = *(v23 + *(type metadata accessor for StreaksWidgetTimelineEntry() + 36));
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  result = sub_100007BC0(&qword_1001245D8);
  v27 = (a1 + *(result + 36));
  *v27 = v24;
  v27[1] = sub_100080BDC;
  v27[2] = v25;
  return result;
}

uint64_t sub_10007F590@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v38 = sub_100007BC0(&qword_100124600);
  __chkstk_darwin(v38);
  v39 = &v34 - v2;
  v44 = sub_100007BC0(&qword_1001245C0);
  __chkstk_darwin(v44);
  v40 = &v34 - v3;
  v4 = type metadata accessor for StreaksWidgetSystemSmallView(0);
  __chkstk_darwin(v4);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for StreaksWidgetAccessoryRectangularView();
  __chkstk_darwin(v42);
  v34 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_100007BC0(&qword_100124608);
  __chkstk_darwin(v43);
  v9 = &v34 - v8;
  v35 = sub_100007BC0(&qword_100124610);
  __chkstk_darwin(v35);
  v37 = &v34 - v10;
  v11 = sub_100007BC0(&qword_1001245A0);
  __chkstk_darwin(v11);
  v41 = &v34 - v12;
  v36 = type metadata accessor for StreaksWidgetAccessoryCircularView();
  __chkstk_darwin(v36);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1000DBC14();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  sub_100080C34(&qword_100121FB8, &type metadata accessor for WidgetFamily, &v34 - v20);
  v22 = (*(v16 + 88))(v21, v15);
  if (v22 == enum case for WidgetFamily.systemSmall(_:))
  {
    v23 = type metadata accessor for StreaksWidgetView();
    sub_100080FE0(v1 + *(v23 + 20), v6 + *(v4 + 24), type metadata accessor for StreaksWidgetTimelineEntry);
    *v6 = swift_getKeyPath();
    sub_100007BC0(&qword_100121FC8);
    swift_storeEnumTagMultiPayload();
    v24 = *(v4 + 20);
    *(v6 + v24) = swift_getKeyPath();
    sub_100007BC0(&qword_100121FC0);
    swift_storeEnumTagMultiPayload();
    sub_100080FE0(v6, v39, type metadata accessor for StreaksWidgetSystemSmallView);
    swift_storeEnumTagMultiPayload();
    sub_1000810A8(&qword_1001245C8, type metadata accessor for StreaksWidgetSystemSmallView);
    v25 = v40;
    sub_1000DB464();
    sub_100007F58(v25, v9, &qword_1001245C0);
    swift_storeEnumTagMultiPayload();
    sub_100080714();
    sub_100080800();
    sub_1000DB464();
    sub_1000080B0(v25, &qword_1001245C0);
    v26 = type metadata accessor for StreaksWidgetSystemSmallView;
    v27 = v6;
    return sub_100081048(v27, v26);
  }

  v40 = v11;
  if (v22 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v28 = type metadata accessor for StreaksWidgetView();
    sub_100080FE0(v1 + *(v28 + 20), v14 + *(v36 + 20), type metadata accessor for StreaksWidgetTimelineEntry);
    *v14 = swift_getKeyPath();
    sub_100007BC0(&qword_100121FC8);
    swift_storeEnumTagMultiPayload();
    sub_100080FE0(v14, v37, type metadata accessor for StreaksWidgetAccessoryCircularView);
    swift_storeEnumTagMultiPayload();
    sub_1000810A8(&qword_1001245A8, type metadata accessor for StreaksWidgetAccessoryCircularView);
    sub_1000810A8(&qword_1001245B0, type metadata accessor for StreaksWidgetAccessoryRectangularView);
    v29 = v41;
    sub_1000DB464();
    sub_100007F58(v29, v9, &qword_1001245A0);
    swift_storeEnumTagMultiPayload();
    sub_100080714();
    sub_100080800();
    sub_1000DB464();
    sub_1000080B0(v29, &qword_1001245A0);
    v26 = type metadata accessor for StreaksWidgetAccessoryCircularView;
    v27 = v14;
    return sub_100081048(v27, v26);
  }

  if (v22 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v30 = type metadata accessor for StreaksWidgetView();
    v31 = v34;
    sub_100080FE0(v1 + *(v30 + 20), v34 + *(v42 + 20), type metadata accessor for StreaksWidgetTimelineEntry);
    *v31 = swift_getKeyPath();
    sub_100007BC0(&qword_100121FC8);
    swift_storeEnumTagMultiPayload();
    sub_100080FE0(v31, v37, type metadata accessor for StreaksWidgetAccessoryRectangularView);
    swift_storeEnumTagMultiPayload();
    sub_1000810A8(&qword_1001245A8, type metadata accessor for StreaksWidgetAccessoryCircularView);
    sub_1000810A8(&qword_1001245B0, type metadata accessor for StreaksWidgetAccessoryRectangularView);
    v32 = v41;
    sub_1000DB464();
    sub_100007F58(v32, v9, &qword_1001245A0);
    swift_storeEnumTagMultiPayload();
    sub_100080714();
    sub_100080800();
    sub_1000DB464();
    sub_1000080B0(v32, &qword_1001245A0);
    v26 = type metadata accessor for StreaksWidgetAccessoryRectangularView;
    v27 = v31;
    return sub_100081048(v27, v26);
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1000DCA04(27);

  v46 = 0xD000000000000019;
  v47 = 0x80000001000EB0F0;
  sub_100080C34(&qword_100121FB8, &type metadata accessor for WidgetFamily, v19);
  sub_1000810A8(&qword_100123050, &type metadata accessor for WidgetFamily);
  v48._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v48);

  (*(v16 + 8))(v19, v15);
  result = sub_1000DCB04();
  __break(1u);
  return result;
}

uint64_t sub_100080018(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v42 = sub_1000DB1F4();
  v47 = *(v42 - 8);
  v3 = __chkstk_darwin(v42);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v41 = &v36 - v6;
  v7 = __chkstk_darwin(v5);
  v45 = &v36 - v8;
  __chkstk_darwin(v7);
  v44 = &v36 - v9;
  v10 = sub_100007BC0(&qword_1001245E0);
  __chkstk_darwin(v10 - 8);
  v38 = &v36 - v11;
  v12 = sub_1000DBC14();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v19 = a2 + *(type metadata accessor for StreaksWidgetView() + 20);
  v39 = type metadata accessor for StreaksWidgetTimelineEntry();
  v40 = v19;
  v43 = *(v19 + *(v39 + 36));
  sub_100080C34(&qword_100121FB8, &type metadata accessor for WidgetFamily, v18);
  v20 = *(v13 + 104);
  v20(v16, enum case for WidgetFamily.accessoryInline(_:), v12);
  sub_1000810A8(&qword_1001245E8, &type metadata accessor for WidgetFamily);
  sub_1000DC0B4();
  sub_1000DC0B4();
  v21 = *(v13 + 8);
  v21(v16, v12);
  result = (v21)(v18, v12);
  if (v49 == v48 || (sub_100080C34(&qword_100121FB8, &type metadata accessor for WidgetFamily, v18), v20(v16, enum case for WidgetFamily.accessoryCircular(_:), v12), sub_1000DC0B4(), sub_1000DC0B4(), v21(v16, v12), result = (v21)(v18, v12), v49 == v48))
  {
    v23 = 0;
  }

  else
  {
    sub_100080C34(&qword_100121FB8, &type metadata accessor for WidgetFamily, v18);
    v20(v16, enum case for WidgetFamily.accessoryRectangular(_:), v12);
    sub_1000DC0B4();
    sub_1000DC0B4();
    v21(v16, v12);
    result = (v21)(v18, v12);
    v23 = v49 != v48;
  }

  v25 = v46;
  v24 = v47;
  v27 = v44;
  v26 = v45;
  if (v43 == 2 && !v23)
  {
    if (*(v40 + *(v39 + 32)) == 1)
    {
      sub_1000DB1D4();
      v28 = v42;
      (*(v24 + 16))(v41, v25, v42);
      sub_1000810A8(&qword_100121C40, &type metadata accessor for RedactionReasons);
      sub_1000DC884();
      if (sub_1000DC894())
      {
        v29 = *(v24 + 8);
        v29(v26, v42);
        v29(v27, v42);
        v28 = v42;
        v30 = 1;
        v31 = v38;
      }

      else
      {
        sub_1000DC8A4();
        (*(v24 + 8))(v27, v28);
        v31 = v38;
        (*(v24 + 32))(v38, v26, v28);
        v30 = 0;
      }

      (*(v24 + 56))(v31, v30, 1, v28);
      return sub_1000080B0(v31, &qword_1001245E0);
    }

    else
    {
      v32 = v37;
      sub_1000DB1D4();
      v33 = v41;
      sub_10007EF38(v41, v32);
      v34 = *(v24 + 8);
      v35 = v42;
      v34(v32, v42);
      return (v34)(v33, v35);
    }
  }

  return result;
}

unint64_t sub_100080688()
{
  result = qword_100124590;
  if (!qword_100124590)
  {
    sub_100007C08(&qword_100124588);
    sub_100080714();
    sub_100080800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124590);
  }

  return result;
}

unint64_t sub_100080714()
{
  result = qword_100124598;
  if (!qword_100124598)
  {
    sub_100007C08(&qword_1001245A0);
    sub_1000810A8(&qword_1001245A8, type metadata accessor for StreaksWidgetAccessoryCircularView);
    sub_1000810A8(&qword_1001245B0, type metadata accessor for StreaksWidgetAccessoryRectangularView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124598);
  }

  return result;
}

unint64_t sub_100080800()
{
  result = qword_1001245B8;
  if (!qword_1001245B8)
  {
    sub_100007C08(&qword_1001245C0);
    sub_1000810A8(&qword_1001245C8, type metadata accessor for StreaksWidgetSystemSmallView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001245B8);
  }

  return result;
}

uint64_t sub_100080920()
{
  v1 = type metadata accessor for StreaksWidgetView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100007BC0(&qword_100121FB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000DBC14();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 20);
  v7 = sub_1000DA084();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(type metadata accessor for StreaksWidgetTimelineEntry() + 28);
  v9 = sub_1000DBCC4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100080AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreaksWidgetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100080B5C(uint64_t a1)
{
  v3 = *(type metadata accessor for StreaksWidgetView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100080018(a1, v4);
}

uint64_t sub_100080C34@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1000DB3B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007BC0(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_100007F58(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1000DC4D4();
    v17 = sub_1000DB564();
    sub_1000DAF14();

    sub_1000DB3A4();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100080ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100080FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100081048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000810A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000810F4()
{
  result = qword_100124628;
  if (!qword_100124628)
  {
    sub_100007C08(&qword_1001245D8);
    sub_100081180();
    sub_100081248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124628);
  }

  return result;
}

unint64_t sub_100081180()
{
  result = qword_100124630;
  if (!qword_100124630)
  {
    sub_100007C08(&qword_1001245D0);
    sub_100007C08(&qword_100124588);
    sub_100080688();
    swift_getOpaqueTypeConformance2();
    sub_100081248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124630);
  }

  return result;
}

unint64_t sub_100081248()
{
  result = qword_100124638;
  if (!qword_100124638)
  {
    sub_100007C08(&qword_100124640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124638);
  }

  return result;
}

uint64_t sub_1000812AC()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100124648);
  v1 = sub_100007EBC(v0, qword_100124648);
  if (qword_10011FA50 != -1)
  {
    swift_once();
  }

  v2 = sub_100007EBC(v0, qword_1001270B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

UIImage *sub_100081374(void *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (![a1 imageOrientation] || (objc_msgSend(a1, "size"), UIGraphicsBeginImageContext(v5), objc_msgSend(a1, "drawAtPoint:", 0.0, 0.0), v3 = UIGraphicsGetImageFromCurrentImageContext(), UIGraphicsEndImageContext(), !v3))
  {
    v3 = a1;
  }

  sub_10008141C(Current);
  return v3;
}

void sub_10008141C(double a1)
{
  if (qword_10011FAE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000DAFF4();
  sub_100007EBC(v2, qword_100124648);
  oslog = sub_1000DAFD4();
  v3 = sub_1000DC4E4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315394;
    v6 = sub_1000DCE74();
    v8 = sub_10001A58C(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    *(v4 + 14) = CFAbsoluteTimeGetCurrent() - a1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "%s.fixImageOrientationIfNeeded took %f seconds", v4, 0x16u);
    sub_100007FC0(v5);
  }
}

uint64_t sub_100081594(uint64_t a1, double a2)
{
  *(v3 + 160) = v2;
  *(v3 + 152) = a2;
  v5 = sub_1000DAF44();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  v6 = sub_1000DAFF4();
  *(v3 + 200) = v6;
  *(v3 + 208) = *(v6 - 8);
  *(v3 + 216) = swift_task_alloc();
  v7 = sub_1000DAF74();
  *(v3 + 224) = v7;
  *(v3 + 232) = *(v7 - 8);
  *(v3 + 240) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = sub_1000DC1D4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v3 + 248) = v8;
  *(v3 + 256) = v10;

  return _swift_task_switch(sub_100081758, v8, v10);
}

uint64_t sub_100081758()
{
  if (qword_10011FAE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = sub_100007EBC(v3, qword_100124648);
  (*(v2 + 16))(v1, v4, v3);
  sub_1000DAF54();
  sub_1000DAF34();
  v5 = sub_1000DAF64();
  v6 = sub_1000DC5D4();
  if (sub_1000DC7A4())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_1000DAF24();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "createThumbnail", "", v7, 2u);
  }

  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = *(v0 + 160);

  (*(v12 + 16))(v9, v10, v11);
  sub_1000DAFB4();
  swift_allocObject();
  *(v0 + 264) = sub_1000DAFA4();
  (*(v12 + 8))(v10, v11);
  [v13 size];
  v14 = *(v0 + 152);
  v17 = v16 < v15;
  v18 = v16 / v15 * v14;
  v19 = v15 / v16 * v14;
  if (v17)
  {
    v20 = *(v0 + 152);
  }

  else
  {
    v20 = v18;
  }

  if (v17)
  {
    v21 = v19;
  }

  else
  {
    v21 = *(v0 + 152);
  }

  v22 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100081A20;
  v23 = swift_continuation_init();
  *(v0 + 136) = sub_100007BC0(&qword_100124660);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100081EA8;
  *(v0 + 104) = &unk_100110008;
  *(v0 + 112) = v23;
  [v22 prepareThumbnailOfSize:v0 + 80 completionHandler:{v21, v20}];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100081A20()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return _swift_task_switch(sub_100081B28, v2, v1);
}

uint64_t sub_100081B28()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[18];
  sub_100081C0C(v1, "createThumbnail", 15, 2);

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100081C0C(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = sub_1000DAF84();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000DAF44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000DAF64();
  sub_1000DAF94();
  v20 = sub_1000DC5C4();
  result = sub_1000DC7A4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      sub_1000DAFC4();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_1000DAF24();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v20, v18, v15, v16, v17, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100081EA8(uint64_t a1, void *a2)
{
  v3 = sub_100007E68((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

id sub_100081F24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PlaceholderAsset()
{
  result = qword_100124690;
  if (!qword_100124690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int TranscriptionState.hashValue.getter(char a1)
{
  sub_1000DCD24();
  sub_1000DCD34(a1 & 1);
  return sub_1000DCD74();
}

unint64_t sub_10008206C()
{
  result = qword_1001246A0;
  if (!qword_1001246A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001246A0);
  }

  return result;
}

void *sub_1000820F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  v2 = v1;
  return v1;
}

uint64_t sub_100082124(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_context);
  if (v2)
  {
    __chkstk_darwin(a1);
    v4 = v3;
    sub_100007BC0(&qword_1001238B8);
    sub_1000DC674();

    LOBYTE(v2) = v6;
  }

  return v2 & 1;
}

uint64_t sub_10008222C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v8 = sub_100007BC0(&qword_1001217A0);
  __chkstk_darwin(v8 - 8);
  v10 = aBlock - v9;
  v11 = sub_1000DA0E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9A14();
  if (!v23)
  {
    sub_1000080B0(aBlock, &qword_100121470);
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_1000080B0(v10, &qword_1001217A0);
  }

  v15 = swift_dynamicCast();
  (*(v12 + 56))(v10, v15 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000080B0(v10, &qword_1001217A0);
  }

  (*(v12 + 32))(v14, v10, v11);
  if (sub_1000DA0B4())
  {
    v16 = *&v4[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_context];
    if (v16)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v4;
      v24 = a3;
      v25 = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100034608;
      v23 = a4;
      v18 = _Block_copy(aBlock);
      v19 = v16;
      v20 = v7;

      [v19 performBlock:v18];
      _Block_release(v18);
    }
  }

  return (*(v12 + 8))(v14, v11);
}

char *sub_100082510(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(type metadata accessor for ThumbnailCacheOperation());

  return sub_10008A204(v6, a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_1000825A4(uint64_t a1, unsigned __int8 a2)
{
  sub_1000DA0E4();
  sub_100086DCC(&qword_10011FDE0, &type metadata accessor for UUID);
  v14._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v14);

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  sub_1000DBFE4(v15);
  v16._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v16);

  v17._countAndFlagsBits = 45;
  v17._object = 0xE100000000000000;
  sub_1000DBFE4(v17);
  if (a2 > 3u)
  {
    v9 = 0xE500000000000000;
    v10 = 0x6C6C616D73;
    if (a2 != 6)
    {
      v10 = 0x657263536C6C7566;
      v9 = 0xEA00000000006E65;
    }

    v11 = 0xE600000000000000;
    v12 = 0x6D756964656DLL;
    if (a2 != 4)
    {
      v12 = 0x61546D756964656DLL;
      v11 = 0xEA00000000006C6CLL;
    }

    if (a2 <= 5u)
    {
      v7._countAndFlagsBits = v12;
    }

    else
    {
      v7._countAndFlagsBits = v10;
    }

    if (a2 <= 5u)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0x656772614C78;
    v4 = 0xEA00000000006564;
    v5 = 0x69576D756964656DLL;
    if (a2 != 2)
    {
      v5 = 0x656772616CLL;
      v4 = 0xE500000000000000;
    }

    if (a2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v3 = 0x6154656772614C78;
      v6 = 0xEA00000000006C6CLL;
    }

    if (a2 <= 1u)
    {
      v7._countAndFlagsBits = v3;
    }

    else
    {
      v7._countAndFlagsBits = v5;
    }

    if (a2 <= 1u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }
  }

  v7._object = v8;
  sub_1000DBFE4(v7);

  return 0x2D626D756874;
}

void sub_1000827C4()
{
  v1 = v0;
  v2 = sub_1000DA0E4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v70 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v70 - v11;
  __chkstk_darwin(v10);
  v14 = &v70 - v13;
  v87 = sub_1000DA844();
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000D9DA4();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _swiftEmptyArrayStorage;
  v92 = &_swiftEmptySetSingleton;
  v93 = _swiftEmptyArrayStorage;
  v22 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (!v22)
  {
    goto LABEL_35;
  }

  v84 = v18;
  v85 = v20;
  v83 = v14;
  v23 = v22;
  v24 = [v23 fileAttachments];
  if (!v24 || (v25 = v24, v79 = v12, v80 = v9, v94 = 0, v26 = sub_1000DA394(), sub_100086DCC(&qword_1001247E8, &type metadata accessor for JournalEntryAssetFileAttachmentMO), v88 = v26, sub_1000DC2A4(), v25, (v27 = v94) == 0))
  {

    v21 = _swiftEmptyArrayStorage;
LABEL_35:
    *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_attachmentIdsMissingFile) = v92;

    *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_attachments) = v21;

    (*((swift_isaMask & *v1) + 0x2D8))(v56);
    ObjectType = swift_getObjectType();
    v58 = swift_conformsToProtocol2();
    if (v58)
    {
      v59 = v58;
      v60 = v1;
      sub_10001914C(ObjectType, v59);
    }

    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      return;
    }

    v61 = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
    if (v61)
    {
      v62 = v1;
      v63 = [v61 contentType];
      if (v63)
      {
        v64 = v63;
        v65 = sub_1000DBF44();
        v67 = v66;

        v68 = v67;
        v63 = v65;
LABEL_43:
        *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure9LinkAsset_contentType) = sub_100034374(v63, v68);

        return;
      }
    }

    else
    {
      v69 = v1;
      v63 = 0;
    }

    v68 = 0xE000000000000000;
    goto LABEL_43;
  }

  v76 = v6;
  v77 = v2;
  v82 = v23;
  if ((v94 & 0xC000000000000001) != 0)
  {
    sub_1000DC924();
    sub_1000DC2D4();
    v27 = v94;
    v28 = v95;
    v29 = v96;
    v30 = v97;
    v31 = v98;
  }

  else
  {
    v30 = 0;
    v32 = -1 << *(v94 + 32);
    v28 = v94 + 56;
    v29 = ~v32;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v31 = v34 & *(v94 + 56);
  }

  v81 = v29;
  v35 = (v29 + 64) >> 6;
  ++v89;
  v75 = (v3 + 32);
  v74 = (v3 + 16);
  v73 = (v3 + 8);
  v78 = (v17 + 8);
  v21 = _swiftEmptyArrayStorage;
  while (v27 < 0)
  {
    v39 = sub_1000DC964();
    if (!v39 || (v90 = v39, swift_dynamicCast(), (v38 = v91) == 0))
    {
LABEL_34:
      sub_100027E40();

      goto LABEL_35;
    }

LABEL_21:
    v40 = [v38 filePath];
    if (v40)
    {

      v41 = v38;
      if (sub_1000B38B8(v41))
      {

        sub_1000DC114();
        if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000DC164();
        }

        sub_1000DC194();

        v21 = v93;
      }

      v42 = [v41 filePath];
      if (v42)
      {
        v72 = v41;
        v43 = v42;
        v71 = sub_1000DBF44();

        v44 = v86;
        sub_1000DA834();
        sub_1000DA804();

        (*v89)(v44, v87);
        v71 = [objc_opt_self() defaultManager];
        sub_1000D9D84();
        v45 = sub_1000DBF04();

        v46 = v71;
        LOBYTE(v44) = [v71 fileExistsAtPath:v45];

        if (v44)
        {
          (*v78)(v85, v84);
        }

        else
        {
          v47 = v72;
          v48 = [v72 id];
          if (v48)
          {
            v49 = v79;
            v50 = v48;
            sub_1000DA0C4();

            v51 = v83;
            v52 = v49;
            v53 = v77;
            (*v75)(v83, v52, v77);
            v54 = v76;
            (*v74)(v76, v51, v53);
            sub_10000A808(v80, v54);

            v55 = *v73;
            (*v73)(v80, v53);
            v55(v83, v53);
            (*v78)(v85, v84);
          }

          else
          {
            (*v78)(v85, v84);
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v36 = v30;
  v37 = v31;
  if (v31)
  {
LABEL_17:
    v31 = (v37 - 1) & v37;
    v38 = *(*(v27 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v37)))));
    if (!v38)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v30 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v30 >= v35)
    {
      goto LABEL_34;
    }

    v37 = *(v28 + 8 * v30);
    ++v36;
    if (v37)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_10008306C(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v47 = a6;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v12 = sub_1000DBA34();
  v54 = *(v12 - 8);
  v55 = v12;
  __chkstk_darwin(v12);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000DBAA4();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000DA0E4();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3 & 1;
  if (a3)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2;
  }

  v20 = (*((swift_isaMask & *v7) + 0x2F8))(v19, a1, a5);
  v22 = v21;
  v44 = (*((swift_isaMask & *v7) + 0x2F0))(a1, a2, v18, v20, v21, a5);
  v23 = swift_getObjectType();
  v24 = swift_conformsToProtocol2();
  if (v24)
  {
    v43 = sub_1000190F0(v23, v24);
  }

  else
  {
    v43 = 0;
  }

  v25 = (v7 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_thumbnailCacheKey);
  *v25 = v20;
  v25[1] = v22;

  v42 = *(v7 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_attachmentIdsMissingFile);
  v26 = *(v7 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_attachments);
  if (v26 >> 62)
  {
    v41 = sub_1000DCB14();
  }

  else
  {
    v41 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v45;
  v27 = v46;
  (*(v45 + 16))(&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_id, v46);
  v29 = (*(v28 + 80) + 72) & ~*(v28 + 80);
  v30 = v29 + v16;
  v31 = swift_allocObject();
  *(v31 + 2) = v20;
  *(v31 + 3) = v22;
  v32 = v49;
  *(v31 + 4) = v47;
  *(v31 + 5) = v32;
  v33 = v44;
  v34 = v56;
  *(v31 + 6) = v44;
  *(v31 + 7) = v34;
  *(v31 + 8) = v41;
  (*(v28 + 32))(&v31[v29], v17, v27);
  v31[v30] = v43;
  *&v31[(v30 & 0xFFFFFFFFFFFFFFF8) + 8] = v42;
  *&v31[((v30 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  aBlock[4] = sub_100086BE8;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100034608;
  aBlock[3] = &unk_100110148;
  v35 = _Block_copy(aBlock);

  v36 = v33;
  v56;
  v37 = v50;
  sub_1000DBA54();
  v57 = _swiftEmptyArrayStorage;
  sub_100086DCC(&qword_100121568, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007BC0(&qword_100121570);
  sub_100031080();
  v38 = v52;
  v39 = v55;
  sub_1000DC8D4();
  sub_1000DC584();
  _Block_release(v35);

  (*(v54 + 8))(v38, v39);
  (*(v51 + 8))(v37, v53);
}

uint64_t sub_100083600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100047540(0, v7[2] + 1, 1, v7);
    v7 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_100047540((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_100086D34;
  v11[5] = v6;
  *(a1 + 8) = v7;
  return result;
}

void sub_1000836E4(void *a1, char a2, void (*a3)(id *))
{
  if (a2)
  {
    v5 = a1;
    sub_100007BC0(&qword_100121D50);
    swift_willThrowTypedImpl();
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  v5 = v4;
  a3(&v5);
}

uint64_t sub_100083764()
{
  v0 = sub_1000DC554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DC544();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000DBAA4();
  __chkstk_darwin(v5 - 8);
  sub_100008068(0, &qword_100120210);
  sub_1000DBA44();
  sub_1000DC534();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_1000DC594();
  qword_1001271E0 = result;
  return result;
}

uint64_t sub_100083924()
{
  v0 = sub_1000DC554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DC544();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000DBAA4();
  __chkstk_darwin(v5 - 8);
  sub_100008068(0, &qword_100120210);
  sub_1000DBA64();
  sub_1000DC534();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_1000DC594();
  qword_1001271E8 = result;
  return result;
}

uint64_t sub_100083AE4()
{
  v0 = sub_1000DC554();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DC544();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000DBAA4();
  __chkstk_darwin(v5 - 8);
  sub_100008068(0, &qword_100120210);
  sub_1000DBA74();
  sub_1000DC534();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_1000DC594();
  qword_1001271F0 = result;
  return result;
}

uint64_t sub_100083CA4(uint64_t a1)
{
  v3 = sub_1000DA084();
  v4 = *(v3 - 8);
  v66 = v3;
  v67 = v4;
  __chkstk_darwin(v3);
  v6 = &v58[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100007BC0(&qword_1001211A0);
  __chkstk_darwin(v7);
  v65 = &v58[-v8];
  v9 = sub_100007BC0(&qword_1001203B8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v58[-v13];
  v15 = sub_1000DA424();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v58[-v20];
  sub_100007F58(a1, &v70, &qword_100121470);
  if (v72)
  {
    type metadata accessor for Asset();
    if (swift_dynamicCast())
    {
      v64 = v6;
      v22 = v68;
      ObjectType = swift_getObjectType();
      if (ObjectType == swift_getObjectType() && (sub_1000DA0B4() & 1) != 0)
      {
        v60 = v14;
        v61 = v12;
        sub_1000DAD44();
        sub_100086DCC(&qword_1001247D8, &type metadata accessor for AssetType);
        v62 = v1;
        sub_1000DC0B4();
        v63 = v22;
        sub_1000DC0B4();
        if (v70 == v68 && v71 == v69)
        {
        }

        else
        {
          v26 = sub_1000DCC74();

          if ((v26 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v27 = *(v16 + 16);
        v27(v21, &v62[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_source], v15);
        v27(v19, &v63[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_source], v15);
        sub_100086DCC(&qword_1001247E0, &type metadata accessor for AssetSource);
        sub_1000DC0B4();
        sub_1000DC0B4();
        if (v70 == v68 && v71 == v69)
        {
          v28 = *(v16 + 8);
          v28(v19, v15);
          v28(v21, v15);

          v30 = v60;
          v29 = v61;
        }

        else
        {
          v59 = sub_1000DCC74();
          v31 = *(v16 + 8);
          v31(v19, v15);
          v31(v21, v15);

          v30 = v60;
          v29 = v61;
          if ((v59 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v32 = v62;
        v33 = *&v62[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_title];
        v34 = *&v63[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_title];
        if (v33)
        {
          if (!v34)
          {
            goto LABEL_28;
          }

          sub_100008068(0, &qword_100122DA0);
          v35 = v34;
          v36 = v33;
          v37 = sub_1000DC764();
          v32 = v62;
          v38 = v37;

          if ((v38 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (v34)
        {
          goto LABEL_28;
        }

        v39 = OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_suggestionDate;
        swift_beginAccess();
        sub_100007F58(&v32[v39], v30, &qword_1001203B8);
        v40 = OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_suggestionDate;
        v41 = v63;
        swift_beginAccess();
        v42 = *(v7 + 48);
        v43 = v65;
        sub_100007F58(v30, v65, &qword_1001203B8);
        v44 = &v41[v40];
        v45 = v43;
        sub_100007F58(v44, &v43[v42], &qword_1001203B8);
        v46 = *(v67 + 48);
        v47 = v43;
        v48 = v66;
        if (v46(v47, 1, v66) == 1)
        {
          sub_1000080B0(v30, &qword_1001203B8);
          if (v46(v45 + v42, 1, v48) == 1)
          {
            v49 = sub_1000080B0(v45, &qword_1001203B8);
LABEL_30:
            v55 = (*((swift_isaMask & *v32) + 0x200))(v49);
            v56 = v63;
            v57 = (*((swift_isaMask & *v63) + 0x200))();

            v24 = v55 ^ v57 ^ 1;
            return v24 & 1;
          }

          goto LABEL_27;
        }

        sub_100007F58(v45, v29, &qword_1001203B8);
        if (v46(v45 + v42, 1, v48) == 1)
        {
          sub_1000080B0(v30, &qword_1001203B8);
          (*(v67 + 8))(v29, v48);
LABEL_27:
          sub_1000080B0(v45, &qword_1001211A0);
          goto LABEL_28;
        }

        v50 = v67;
        v51 = v64;
        (*(v67 + 32))(v64, v45 + v42, v48);
        sub_100086DCC(&qword_100120AC0, &type metadata accessor for Date);
        v52 = sub_1000DBE64();
        v32 = v62;
        v53 = v52;
        v54 = *(v50 + 8);
        v54(v51, v48);
        sub_1000080B0(v30, &qword_1001203B8);
        v54(v29, v48);
        v49 = sub_1000080B0(v45, &qword_1001203B8);
        if (v53)
        {
          goto LABEL_30;
        }

LABEL_28:

        goto LABEL_10;
      }
    }
  }

  else
  {
    sub_1000080B0(&v70, &qword_100121470);
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

Swift::Int sub_1000845EC()
{
  v1 = v0;
  v2 = sub_1000DA084();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100007BC0(&qword_1001203B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-v7];
  v9 = sub_1000DA424();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000DCD84();
  sub_1000DA0E4();
  sub_100086DCC(&qword_1001202E8, &type metadata accessor for UUID);
  sub_1000DBDC4();
  sub_1000DAD44();
  sub_100086DCC(&qword_1001247C0, &type metadata accessor for AssetType);
  sub_1000DBDC4();
  (*(v10 + 16))(v12, v0 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_source, v9);
  sub_100086DCC(&qword_1001247C8, &type metadata accessor for AssetSource);
  sub_1000DBDC4();
  (*(v10 + 8))(v12, v9);
  v13 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_title);
  if (v13)
  {
    sub_1000DCD44(1u);
    v14 = v13;
    sub_1000DC774();
  }

  else
  {
    sub_1000DCD44(0);
  }

  v15 = OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_suggestionDate;
  swift_beginAccess();
  sub_100007F58(v1 + v15, v8, &qword_1001203B8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1000DCD44(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1000DCD44(1u);
    sub_100086DCC(&qword_1001247D0, &type metadata accessor for Date);
    sub_1000DBDC4();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1000DCD64();
}

uint64_t sub_1000849FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v3)
  {
    result = [v3 isSlim];
  }

  else
  {
    result = 2;
  }

  *a2 = result;
  return result;
}

id sub_100084A4C(void *a1)
{
  v2 = v1;
  v4 = sub_100007BC0(&qword_1001203B8);
  __chkstk_darwin(v4 - 8);
  v115 = &v95 - v5;
  v6 = sub_100007BC0(&qword_1001247F0);
  __chkstk_darwin(v6 - 8);
  v112 = &v95 - v7;
  v8 = sub_1000DA424();
  v113 = *(v8 - 8);
  v114 = v8;
  __chkstk_darwin(v8);
  v110 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007BC0(&qword_1001247F8);
  __chkstk_darwin(v10 - 8);
  v101 = &v95 - v11;
  v102 = sub_1000DAD44();
  v98 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007BC0(&qword_1001217A0);
  v14 = __chkstk_darwin(v13 - 8);
  v111 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v96 = &v95 - v17;
  __chkstk_darwin(v16);
  v19 = &v95 - v18;
  v20 = sub_1000DA0E4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v97 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_sourceAttachments] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_attachments] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_attachmentIdsMissingFile] = &_swiftEmptySetSingleton;
  v23 = OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_context;
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_context] = 0;
  v24 = OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO;
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO] = 0;
  v99 = OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_title;
  *&v1[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_title] = 0;
  v25 = *(v21 + 56);
  v104 = OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_suggestionId;
  v25(&v1[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_suggestionId], 1, 1, v20);
  v26 = OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_suggestionDate;
  v27 = sub_1000DA084();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v108 = v27;
  v109 = v26;
  v106 = v28 + 56;
  v107 = v29;
  (v29)(&v2[v26], 1, 1);
  v30 = &v2[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_attachmentsDirectoryPath];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_attachmentsDirectoryURL;
  v32 = sub_1000D9DA4();
  (*(*(v32 - 8) + 56))(&v2[v31], 1, 1, v32);
  v33 = &v2[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_thumbnailCacheKey];
  *v33 = 0;
  v33[1] = 0;
  v105 = OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_isHidden;
  v2[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_isHidden] = 0;
  v34 = OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_delegates;
  *&v2[v34] = [objc_opt_self() weakObjectsHashTable];
  v35 = &v2[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_didUpdate];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v2[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_didUpdateMediaFile];
  *v36 = 0;
  v36[1] = 0;
  v37 = [a1 managedObjectContext];
  v38 = *&v2[v23];
  *&v2[v23] = v37;

  v39 = *&v2[v24];
  *&v2[v24] = a1;
  v40 = a1;

  v41 = *&v2[v24];
  v116 = v21 + 56;
  if (v41)
  {
    v95 = v19;
    v42 = [v41 id];
    v43 = v40;
    if (v42)
    {
      v44 = v96;
      v45 = v42;
      sub_1000DA0C4();

      v46 = 0;
      v47 = v98;
      v48 = v97;
    }

    else
    {
      v46 = 1;
      v47 = v98;
      v48 = v97;
      v44 = v96;
    }

    v49 = v25;
    v25(v44, v46, 1, v20);
    v50 = v95;
    sub_100086E70(v44, v95);
    v40 = v43;
    v19 = v50;
    if ((*(v21 + 48))(v50, 1, v20) != 1)
    {
      (*(v21 + 32))(v48, v50, v20);
      v52 = v113;
      goto LABEL_10;
    }
  }

  else
  {
    v25(v19, 1, 1, v20);
    v49 = v25;
    v47 = v98;
    v48 = v97;
  }

  sub_1000DA0D4();
  v51 = (*(v21 + 48))(v19, 1, v20);
  v52 = v113;
  if (v51 != 1)
  {
    sub_1000080B0(v19, &qword_1001217A0);
  }

LABEL_10:
  v103 = v49;
  v53 = *(v21 + 32);
  v113 = v20;
  v53(&v2[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_id], v48, v20);
  v54 = *&v2[v24];
  if (v54)
  {
    v55 = v54;
    v56 = v101;
    sub_1000DA344();

    v57 = v102;
    v58 = (*(v47 + 48))(v56, 1, v102);
    v59 = v112;
    v60 = v110;
    v61 = v100;
    if (v58 != 1)
    {
      (*(v47 + 32))(v100, v56, v57);
      goto LABEL_16;
    }
  }

  else
  {
    v56 = v101;
    v57 = v102;
    (*(v47 + 56))(v101, 1, 1, v102);
    v59 = v112;
    v60 = v110;
    v61 = v100;
  }

  (*(v47 + 104))(v61, enum case for AssetType.unknown(_:), v57);
  if ((*(v47 + 48))(v56, 1, v57) != 1)
  {
    sub_1000080B0(v56, &qword_1001247F8);
  }

LABEL_16:
  (*(v47 + 32))(&v2[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_type], v61, v57);
  v62 = *&v2[v24];
  if (v62 && (v63 = [v62 title]) != 0)
  {
    v64 = v63;
    v65 = sub_1000D9DF4();
    v67 = v66;

    v68 = sub_1000D9DC4();
    sub_100010514(v65, v67);
  }

  else
  {
    v68 = 0;
  }

  v69 = *&v2[v99];
  *&v2[v99] = v68;

  v70 = *&v2[v24];
  if (v70)
  {
    v71 = [v70 source];
    v72 = v114;
    if (v71)
    {
      v73 = v71;
      sub_1000DBF44();
    }
  }

  else
  {
    v72 = v114;
  }

  sub_1000DA414();
  v74 = *(v52 + 48);
  if (v74(v59, 1, v72) == 1)
  {
    (*(v52 + 104))(v60, enum case for AssetSource.unknown(_:), v72);
    v75 = v74(v59, 1, v72);
    v76 = v115;
    if (v75 != 1)
    {
      sub_1000080B0(v59, &qword_1001247F0);
    }
  }

  else
  {
    (*(v52 + 32))(v60, v59, v72);
    v76 = v115;
  }

  (*(v52 + 32))(&v2[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_source], v60, v72);
  v77 = [v40 suggestionId];
  if (v77)
  {
    v78 = v111;
    v79 = v77;
    sub_1000DA0C4();

    v80 = 0;
  }

  else
  {
    v80 = 1;
    v78 = v111;
  }

  v81 = 1;
  v103(v78, v80, 1, v113);
  v82 = v104;
  swift_beginAccess();
  sub_1000185AC(v78, &v2[v82], &qword_1001217A0);
  swift_endAccess();
  v83 = [v40 suggestionDate];
  if (v83)
  {
    v84 = v83;
    sub_1000DA044();

    v81 = 0;
  }

  v107(v76, v81, 1, v108);
  v85 = v109;
  swift_beginAccess();
  sub_1000185AC(v76, &v2[v85], &qword_1001203B8);
  swift_endAccess();
  v86 = [v40 isHidden];
  v2[v105] = v86;
  v87 = type metadata accessor for Asset();
  v117.receiver = v2;
  v117.super_class = v87;
  v88 = objc_msgSendSuper2(&v117, "init");
  sub_1000827C4();
  v89 = objc_opt_self();
  v90 = [v89 defaultCenter];
  if (qword_10011FA78 != -1)
  {
    swift_once();
  }

  [v90 addObserver:v88 selector:? name:? object:?];

  v91 = [v89 defaultCenter];
  v92 = qword_10011FA80;
  v93 = v88;
  if (v92 != -1)
  {
    swift_once();
  }

  [v91 addObserver:v93 selector:"mediaFileUpdatedNotificationWithNotification:" name:qword_100127120 object:0];

  return v93;
}

id sub_10008569C()
{
  v1 = sub_1000DA0E4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_thumbnailCacheKey + 8];
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_thumbnailCacheKey];

    sub_100009DBC(v6, v5, 0);
  }

  (*(v2 + 16))(v4, &v0[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_id], v1);
  ObjectType = swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = sub_1000190F0(ObjectType, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_attachmentIdsMissingFile];

  sub_10004EA84(1, v4, v9, v10);

  (*(v2 + 8))(v4, v1);
  v11 = [objc_opt_self() defaultCenter];
  [v11 removeObserver:v0];

  v12 = type metadata accessor for Asset();
  v14.receiver = v0;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t type metadata accessor for Asset()
{
  result = qword_100124798;
  if (!qword_100124798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100085B0C(uint64_t a1)
{
  sub_1000827C4();
  v2 = [*(a1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_delegates) allObjects];
  v3 = sub_1000DC134();

  if (v3 >> 62)
  {
    v4 = sub_1000DCB14();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_1000DCA24();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7 && v6)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(ObjectType, v8);
    }

    swift_unknownObjectRelease();
  }

LABEL_13:

  v10 = *(a1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_didUpdate);
  if (v10)
  {

    v10(v11);

    sub_100030FC0(v10);
  }
}

void sub_100085CD0(uint64_t a1)
{
  sub_1000827C4();
  v2 = *(a1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_didUpdateMediaFile);
  if (v2)
  {

    v2(v3);

    sub_100030FC0(v2);
  }
}

uint64_t sub_100085D58(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1000D9A34();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9A04();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_100085E48(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, char *a5, uint64_t a6, void *a7, char *a8, char a9, uint64_t a10)
{
  v48 = a8;
  v49 = a5;
  v50 = a7;
  v51 = a3;
  v52 = a4;
  v47 = a10;
  v12 = sub_1000DBAA4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  if (qword_10011F9A0 != -1)
  {
    swift_once();
  }

  v19 = sub_10008C1F4(a1, a2);
  if (v19)
  {
    v20 = v19;
    v21 = [v19 imageByPreparingForDisplay];

    if (v21)
    {
      v50 = v21;
      v51(v21);

      v22 = v50;
LABEL_18:

      return;
    }
  }

  v23 = sub_1000098C8(a1, a2);
  if (v23)
  {
    v48 = v23;
    v24 = *&v23[qword_100127260];
    if (v24 >> 62)
    {
      v25 = sub_1000DCB14();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25 == v50)
    {
      v26 = swift_allocObject();
      v27 = v52;
      *(v26 + 16) = v51;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_100086F28;
      *(v28 + 24) = v26;
      v29 = *&v48[qword_100121C48];
      __chkstk_darwin(v48);
      *(&v46 - 2) = sub_100086F0C;
      *(&v46 - 1) = v28;

      os_unfair_lock_lock(v29 + 10);
      sub_100086F10(&v29[4]);
      os_unfair_lock_unlock(v29 + 10);

      return;
    }

    sub_100086350(v49, v51, v52);
    v22 = v48;
    goto LABEL_18;
  }

  sub_100009B68(a1, a2);
  if (v30)
  {
    v32 = v30;
    v33 = v31;
    sub_1000DC564();
    v34 = sub_1000DBA84();
    v35 = *(v13 + 8);
    v35(v18, v12);
    sub_1000DC564();
    v36 = sub_1000DBA84();
    v35(v16, v12);
    if (v34 >= v36 && ((v37 = *&v32[qword_100127260], v37 >> 62) ? (v38 = sub_1000DCB14()) : (v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10)), v38 == v50))
    {
      v39 = swift_allocObject();
      v40 = v52;
      *(v39 + 16) = v51;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_100086CE8;
      *(v41 + 24) = v39;
      v42 = *&v32[qword_100121C48];
      v43 = __chkstk_darwin(v41);
      *(&v46 - 2) = sub_100086D14;
      *(&v46 - 1) = v43;

      os_unfair_lock_lock(v42 + 10);
      sub_100086D18(&v42[4]);
      os_unfair_lock_unlock(v42 + 10);
    }

    else
    {
      sub_100086350(v49, v51, v52);
    }
  }

  else
  {
    sub_100086350(v49, v51, v52);
    v45 = v47;
    v44 = v48;

    sub_10004EA84(0, v44, a9 & 1, v45);
  }
}

id sub_100086350(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100086F28;
  *(v7 + 24) = v6;
  v8 = *&a1[qword_100121C48];

  os_unfair_lock_lock(v8 + 10);
  sub_100086F10(&v8[4]);
  os_unfair_lock_unlock(v8 + 10);

  sub_100008068(0, qword_100120158);
  if (qword_10011FAE8 != -1)
  {
    swift_once();
  }

  if (sub_1000DC764())
  {
    [a1 setQualityOfService:9];
  }

  else
  {
    if (qword_10011FAF0 != -1)
    {
      swift_once();
    }

    if (sub_1000DC764())
    {
      v9 = a1;
      v10 = -1;
    }

    else
    {
      v9 = a1;
      v10 = 25;
    }

    [v9 setQualityOfService:v10];
  }

  return sub_10000977C(a1);
}

void sub_100086558()
{
  sub_1000DA0E4();
  if (v0 <= 0x3F)
  {
    sub_1000DAD44();
    if (v1 <= 0x3F)
    {
      sub_1000DA424();
      if (v2 <= 0x3F)
      {
        sub_1000867A8(319, &qword_100121768, &type metadata accessor for UUID);
        if (v3 <= 0x3F)
        {
          sub_1000867A8(319, &qword_100120C98, &type metadata accessor for Date);
          if (v4 <= 0x3F)
          {
            sub_1000867A8(319, &qword_1001247A8, &type metadata accessor for URL);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1000867A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DC7C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10008686C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_id;
  v5 = sub_1000DA0E4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_100086930(uint64_t a1)
{
  v3 = sub_1000D9CA4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 dataAttachments];
  if (!v7)
  {
    sub_100008068(0, &qword_1001247B8);
    v7 = sub_1000DC6C4();
  }

  sub_1000DC6D4();

  sub_1000D9C94();
  while (v14)
  {
    sub_100007EAC(&v13, &v12);
    sub_1000DA384();
    if (swift_dynamicCast())
    {
      v8 = v11;
      if ([v11 index] == a1)
      {
        goto LABEL_10;
      }
    }

    sub_1000D9C94();
  }

  v8 = 0;
LABEL_10:
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_100086AE8()
{
  v1 = sub_1000DA0E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_100086BE8()
{
  v1 = *(sub_1000DA0E4() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  sub_100085E48(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + v2), *(v0 + v2 + *(v1 + 64)), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100086C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100086CB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100086D34(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_100086D8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100086DCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100086E1C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v3)
  {
    result = [v3 isSlim];
  }

  else
  {
    result = 2;
  }

  *a1 = result;
  return result;
}

uint64_t sub_100086E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_1001217A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100086F2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnknownAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UnknownAsset()
{
  result = qword_100124828;
  if (!qword_100124828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100086FF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100007BC0(&qword_10011FC88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = sub_100007BC0(&qword_10011FC80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  type metadata accessor for StreaksWidgetView();
  sub_100088054();
  sub_100088104();
  sub_1000DBC64();
  if (qword_10011FAA8 != -1)
  {
    swift_once();
  }

  v17[0] = qword_100127178;
  v17[1] = unk_100127180;
  sub_1000391D4(&qword_10011FC90, &qword_10011FC88);
  sub_100007C50();
  sub_1000DB404();
  (*(v3 + 8))(v5, v2);
  sub_100007BC0(&qword_100124848);
  v10 = sub_1000DBC14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000DE2C0;
  v15 = *(v11 + 104);
  v15(v14 + v13, enum case for WidgetFamily.accessoryCircular(_:), v10);
  v15(v14 + v13 + v12, enum case for WidgetFamily.accessoryRectangular(_:), v10);
  sub_100087360(v14, a1);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100087360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = a1;
  v2 = sub_100007BC0(&qword_10011FC78);
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - v3;
  v23 = sub_100007BC0(&qword_10011FC70);
  v20 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - v5;
  v24 = sub_100007BC0(&qword_100124868);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v19 - v7;
  if (qword_10011FAA0 != -1)
  {
    swift_once();
  }

  v31 = qword_100127168;
  v32 = unk_100127170;
  v9 = sub_100007BC0(&qword_10011FC80);
  v10 = sub_100007C08(&qword_10011FC88);
  v11 = sub_1000391D4(&qword_10011FC90, &qword_10011FC88);
  v12 = sub_100007C50();
  v27 = v10;
  v28 = &type metadata for String;
  v29 = v11;
  v30 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000DB444();
  v27 = v9;
  v28 = &type metadata for String;
  v29 = OpaqueTypeConformance2;
  v30 = v12;
  v14 = swift_getOpaqueTypeConformance2();
  sub_1000DB414();
  (*(v21 + 8))(v4, v2);
  v27 = v2;
  v28 = v14;
  v15 = swift_getOpaqueTypeConformance2();
  v16 = v23;
  sub_1000DB434();
  (*(v20 + 8))(v6, v16);
  sub_100007BC0(&qword_100124858);
  sub_1000DBC34();
  *(swift_allocObject() + 16) = xmmword_1000DFEF0;
  sub_1000DBC24();
  v27 = v16;
  v28 = v15;
  swift_getOpaqueTypeConformance2();
  v17 = v24;
  sub_1000DB424();

  return (*(v22 + 8))(v8, v17);
}

uint64_t sub_1000877DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = a1;
  v2 = sub_100007BC0(&qword_10011FCA8);
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - v3;
  v23 = sub_100007BC0(&qword_10011FCA0);
  v20 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - v5;
  v24 = sub_100007BC0(&qword_100124850);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v19 - v7;
  if (qword_10011FAA0 != -1)
  {
    swift_once();
  }

  v31 = qword_100127168;
  v32 = unk_100127170;
  v9 = sub_100007BC0(&qword_10011FCB0);
  v10 = sub_100007C08(&qword_10011FCB8);
  v11 = sub_1000391D4(&qword_10011FCC0, &qword_10011FCB8);
  v12 = sub_100007C50();
  v27 = v10;
  v28 = &type metadata for String;
  v29 = v11;
  v30 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000DB444();
  v27 = v9;
  v28 = &type metadata for String;
  v29 = OpaqueTypeConformance2;
  v30 = v12;
  v14 = swift_getOpaqueTypeConformance2();
  sub_1000DB414();
  (*(v21 + 8))(v4, v2);
  v27 = v2;
  v28 = v14;
  v15 = swift_getOpaqueTypeConformance2();
  v16 = v23;
  sub_1000DB434();
  (*(v20 + 8))(v6, v16);
  sub_100007BC0(&qword_100124858);
  sub_1000DBC34();
  *(swift_allocObject() + 16) = xmmword_1000DFEF0;
  sub_1000DBC24();
  v27 = v16;
  v28 = v15;
  swift_getOpaqueTypeConformance2();
  v17 = v24;
  sub_1000DB424();

  return (*(v22 + 8))(v8, v17);
}

uint64_t sub_100087C78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100007BC0(&qword_10011FCB8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = sub_100007BC0(&qword_10011FCB0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  type metadata accessor for StreaksWidgetView();
  sub_100088054();
  sub_1000880AC();
  sub_1000DBCA4();
  if (qword_10011FAB0 != -1)
  {
    swift_once();
  }

  v15[0] = qword_100127188;
  v15[1] = unk_100127190;
  sub_1000391D4(&qword_10011FCC0, &qword_10011FCB8);
  sub_100007C50();
  sub_1000DB404();
  (*(v3 + 8))(v5, v2);
  sub_100007BC0(&qword_100124848);
  v10 = sub_1000DBC14();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000DFEF0;
  (*(v11 + 104))(v13 + v12, enum case for WidgetFamily.systemSmall(_:), v10);
  sub_1000877DC(v13, a1);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100087FD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for StreaksWidgetView();
  sub_100049F4C(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100007BC0(&qword_100121FB8);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100088054()
{
  result = qword_100124838;
  if (!qword_100124838)
  {
    type metadata accessor for StreaksWidgetView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124838);
  }

  return result;
}

unint64_t sub_1000880AC()
{
  result = qword_100124840;
  if (!qword_100124840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124840);
  }

  return result;
}

unint64_t sub_100088104()
{
  result = qword_100124860;
  if (!qword_100124860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124860);
  }

  return result;
}

uint64_t sub_100088158()
{
  sub_100007C08(&qword_100124850);
  sub_100007C08(&qword_10011FCA0);
  sub_100007C08(&qword_10011FCA8);
  sub_100007C08(&qword_10011FCB0);
  sub_100007C08(&qword_10011FCB8);
  sub_1000391D4(&qword_10011FCC0, &qword_10011FCB8);
  sub_100007C50();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008830C()
{
  sub_100007C08(&qword_100124868);
  sub_100007C08(&qword_10011FC70);
  sub_100007C08(&qword_10011FC78);
  sub_100007C08(&qword_10011FC80);
  sub_100007C08(&qword_10011FC88);
  sub_1000391D4(&qword_10011FC90, &qword_10011FC88);
  sub_100007C50();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_100088504()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommonTransitions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10008855C@<X0>(_BYTE *a1@<X8>)
{
  sub_100007C08(&qword_100121D50);
  sub_1000DCD94();
  swift_getFunctionTypeMetadata1();
  sub_1000DC1C4();
  swift_getWitnessTable();
  result = sub_1000DC354();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100088628(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v5 = sub_1000DAF84();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_1000DC684();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = sub_1000DAD44();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v8 = sub_1000DAF44();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_1000DC1D4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v3[25] = v9;
  v3[26] = v11;

  return _swift_task_switch(sub_100088854, v9, v11);
}

uint64_t sub_100088854()
{
  v0[27] = qword_1001248A8;
  sub_1000DAF34();
  v1 = sub_1000DAF64();
  v2 = sub_1000DC5D4();
  if (sub_1000DC7A4())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1000DAF24();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, v2, v4, "Image attachment loading", "", v3, 2u);
  }

  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[21];

  (*(v8 + 16))(v5, v6, v7);
  sub_1000DAFB4();
  swift_allocObject();
  v0[28] = sub_1000DAFA4();
  v9 = *(v8 + 8);
  v0[29] = v9;
  v0[30] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v7);
  if (qword_10011F9A0 != -1)
  {
    swift_once();
  }

  v10 = v0[10];
  v0[31] = qword_100126ED8;
  v11 = (v10 + qword_100124898);
  v12 = *v11;
  v0[32] = *v11;
  v13 = v11[1];
  v0[33] = v13;
  v14 = sub_10008C1F4(v12, v13);
  if (v14 && (v15 = v14, v16 = [v14 imageByPreparingForDisplay], v15, v16))
  {
    v17 = sub_1000DAFD4();
    v18 = sub_1000DC4E4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Cache hit.", v19, 2u);
    }

    v20 = v0[10];

    sub_10008A6C0(v20, "Image attachment loading", 24, 2);

    v21 = v0[1];

    return v21(v16);
  }

  else
  {
    v23 = swift_task_alloc();
    v0[34] = v23;
    *v23 = v0;
    v23[1] = sub_100088BB8;
    v24 = v0[8];

    return sub_10008A968(v24);
  }
}

uint64_t sub_100088BB8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);

  return _swift_task_switch(sub_100088CE0, v4, v3);
}

uint64_t sub_100088CE0()
{
  v1 = v0[35];
  if (v1)
  {
    v2 = v0[10];
    sub_10008C55C();
    v3 = sub_100081374(v1);
    if (sub_100021930(*(v2 + qword_100127280)))
    {
      sub_100097C1C(v3, v0[32], v0[33]);
    }

    v4 = sub_1000DAFD4();
    v5 = sub_1000DC4E4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Image file attachment found.", v6, 2u);
    }

    v7 = v0[10];

    sub_10008A6C0(v7, "Image attachment loading", 24, 2);
    goto LABEL_34;
  }

  (*(v0[18] + 104))(v0[19], enum case for AssetType.photo(_:), v0[17]);
  sub_10008C5A8(&qword_1001247D8, &type metadata accessor for AssetType);
  sub_1000DC0B4();
  sub_1000DC0B4();
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    (*(v9 + 8))(v0[19], v0[17]);
  }

  else
  {
    v11 = sub_1000DCC74();
    (*(v9 + 8))(v8, v10);

    if ((v11 & 1) == 0)
    {
      v26 = v0[10];
      v27 = sub_1000DAFD4();
      v28 = sub_1000DC4C4();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[10];
      if (v29)
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        v32 = *&v30[qword_100127260];
        if (v32 >> 62)
        {
          v49 = v31;
          v33 = sub_1000DCB14();
          v31 = v49;
        }

        else
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v34 = v0[10];
        *(v31 + 4) = v33;
        v35 = v31;

        _os_log_impl(&_mh_execute_header, v27, v28, "did not find image file attachment, attachments.count=%ld", v35, 0xCu);
      }

      else
      {
      }

      v25 = v0[10];
LABEL_33:
      sub_10008A6C0(v25, "Image attachment loading", 24, 2);
      v3 = 0;
LABEL_34:

      v48 = v0[1];

      return v48(v3);
    }
  }

  v0[36] = qword_1001248A0;
  v12 = sub_1000DAFD4();
  v13 = sub_1000DC4E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Will try to get image from Core Data (legacy support)", v14, 2u);
  }

  v15 = v0[10];

  v16 = *(v15 + qword_100127278);
  v0[37] = v16;
  if (!v16)
  {
    v21 = sub_1000DAFD4();
    v22 = sub_1000DC4C4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "context is nil", v23, 2u);
    }

    v24 = v0[10];

    v25 = v24;
    goto LABEL_33;
  }

  v17 = *(v0[10] + qword_100127270);
  v0[38] = v17;
  if (!v17)
  {
    v36 = v16;
    v37 = sub_1000DAFD4();
    v38 = sub_1000DC4C4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "assetID is nil", v39, 2u);
    }

    v40 = v0[10];

    v25 = v40;
    goto LABEL_33;
  }

  v18 = v16;
  v19 = v17;
  if ([v18 concurrencyType] == 1)
  {
    v20 = v18;
  }

  else
  {
    v20 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
    [v20 setParentContext:v18];
  }

  v0[39] = v20;
  v41 = v0[10];
  (*(v0[15] + 104))(v0[16], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[14]);
  v42 = swift_allocObject();
  v0[40] = v42;
  v42[2] = v20;
  v42[3] = v19;
  v42[4] = v41;
  v43 = v19;
  v20;
  v44 = v41;
  v45 = swift_task_alloc();
  v0[41] = v45;
  v46 = sub_100007BC0(&qword_100120828);
  *v45 = v0;
  v45[1] = sub_1000893F8;
  v47 = v0[16];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 6, v47, sub_10008C53C, v42, v46);
}

uint64_t sub_1000893F8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[39];
    (*(v2[15] + 8))(v2[16], v2[14]);

    v5 = v2[25];
    v6 = v2[26];

    return _swift_task_switch(sub_10008954C, v5, v6);
  }
}

uint64_t sub_10008954C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    v7 = objc_allocWithZone(UIImage);
    sub_100019784(v2, v1);
    isa = sub_1000D9DE4().super.isa;
    v9 = [v7 initWithData:isa];

    sub_100010500(v2, v1);
    if (v9)
    {
      v10 = *(v0 + 80);
      sub_10008C55C();
      v11 = sub_100081374(v9);
      if (sub_100021930(*(v10 + qword_100127280)))
      {
        sub_100097C1C(v11, *(v0 + 256), *(v0 + 264));
      }

      v12 = sub_1000DAF64();
      sub_1000DAF94();
      v13 = sub_1000DC5C4();
      if (sub_1000DC7A4())
      {
        v39 = v13;
        v14 = *(v0 + 96);
        v15 = *(v0 + 104);
        v16 = *(v0 + 88);

        sub_1000DAFC4();

        if ((*(v14 + 88))(v15, v16) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v17 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
          v17 = "";
        }

        v25 = *(v0 + 312);
        v37 = *(v0 + 296);
        v38 = *(v0 + 304);
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = sub_1000DAF24();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v39, v27, "Image attachment loading", v17, v26, 2u);

        sub_100010500(v2, v1);
        v12 = v37;
        v9 = v38;
      }

      else
      {
        v23 = *(v0 + 312);
        v24 = *(v0 + 296);

        sub_100010500(v2, v1);
      }

      v28 = *(v0 + 80);
      (*(v0 + 232))(*(v0 + 176), *(v0 + 160));
      sub_10008A6C0(v28, "Image attachment loading", 24, 2);
      goto LABEL_28;
    }

    sub_100019784(v2, v1);
    v18 = sub_1000DAFD4();
    v19 = sub_1000DC4C4();
    if (!os_log_type_enabled(v18, v19))
    {
      sub_100010500(v2, v1);
LABEL_26:
      v33 = *(v0 + 304);
      v34 = *(v0 + 296);
      v35 = *(v0 + 80);

      sub_100010500(v2, v1);
      v6 = v35;
      goto LABEL_27;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v21 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v22 = 0;
        goto LABEL_25;
      }

      v30 = *(v2 + 16);
      v29 = *(v2 + 24);
      v31 = __OFSUB__(v29, v30);
      v22 = v29 - v30;
      if (!v31)
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = BYTE6(v1);
LABEL_25:
      *(result + 4) = v22;
      v32 = result;
      sub_100010500(v2, v1);
      _os_log_impl(&_mh_execute_header, v18, v19, "can't create image from data (size: %{bytes}ld)", v32, 0xCu);

      goto LABEL_26;
    }

    LODWORD(v22) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    v22 = v22;
    goto LABEL_25;
  }

  v3 = *(v0 + 304);
  v4 = *(v0 + 296);
  v5 = *(v0 + 80);

  v6 = v5;
LABEL_27:
  sub_10008A6C0(v6, "Image attachment loading", 24, 2);
  v11 = 0;
LABEL_28:

  v36 = *(v0 + 8);

  return v36(v11);
}

uint64_t sub_1000899C8(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v8 = (*((swift_isaMask & *v2) + 0xF0) + **((swift_isaMask & *v2) + 0xF0));
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_100089B08;

  return v8(a1, a2);
}

uint64_t sub_100089B08(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 184) = a1;

  if (v3)
  {
    swift_getObjectType();
    v4 = sub_1000DC1D4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *(v2 + 192) = v4;
  *(v2 + 200) = v6;

  return _swift_task_switch(sub_100089C58, v4, v6);
}

uint64_t sub_100089C58()
{
  v11 = v0;
  sub_1000DC264();
  v1 = *(v0[21] + qword_100121C48);
  v2 = swift_task_alloc();
  *v2 = sub_10008C55C();
  KeyPath = swift_getKeyPath();

  v4 = swift_task_alloc();
  *(v4 + 16) = sub_10003F5DC;
  *(v4 + 24) = KeyPath;

  os_unfair_lock_lock((v1 + 40));
  sub_10008C6A8((v1 + 16), v10);
  os_unfair_lock_unlock((v1 + 40));

  LOBYTE(KeyPath) = v10[0];

  v5 = v0[23];
  if ((KeyPath & 1) != 0 || !v5)
  {
    v7 = v0[1];
    v8 = v0[23];

    return v7(v8);
  }

  else
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100089ECC;
    v6 = swift_continuation_init();
    v0[17] = sub_100007BC0(&qword_100124660);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100081EA8;
    v0[13] = &unk_100110390;
    v0[14] = v6;
    [v5 prepareForDisplayWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100089ECC()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return _swift_task_switch(sub_100089FD4, v2, v1);
}

uint64_t sub_100089FD4()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 184);
  if (v1)
  {

    v2 = v1;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10008A04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10008A0F4;

  return sub_1000899C8(a2, a3);
}

uint64_t sub_10008A0F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

char *sub_10008A204(NSObject *a1, int a2, uint64_t a3, int a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  v47 = a5;
  LODWORD(v46) = a4;
  v45 = a3;
  v44 = a2;
  v12 = sub_1000DAF74();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v14 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1000DAFF4();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v50 = &v43[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v43[-v19];
  v21 = OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_type;
  v22 = qword_100127258;
  v23 = sub_1000DAD44();
  (*(*(v23 - 8) + 16))(&v8[v22], a1 + v21, v23);
  *&v8[qword_100127260] = *(a1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_attachments);
  *&v8[qword_100127268] = *(a1 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_sourceAttachments);
  v24 = *(&a1->isa + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);

  if (v24)
  {
    v25 = [v24 objectID];
  }

  else
  {
    v25 = 0;
  }

  *&v8[qword_100127270] = v25;
  v26 = *(&a1->isa + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_context);
  *&v8[qword_100127278] = v26;
  v8[qword_100127280] = v44;
  v27 = &v8[qword_100127288];
  *v27 = v45;
  v27[8] = v46 & 1;
  v28 = &v8[qword_100124898];
  v29 = v47;
  *v28 = v47;
  v28[1] = a6;
  *&v8[qword_100127290] = a7;
  v52 = 0;
  v53 = 0xE000000000000000;
  v30 = v26;

  v46 = a7;
  sub_1000DCA04(26);

  v52 = 0xD000000000000018;
  v53 = 0x80000001000EB550;
  v54._countAndFlagsBits = v29;
  v54._object = a6;
  sub_1000DBFE4(v54);

  sub_1000DAFE4();
  v31 = qword_1001248A0;
  (*(v16 + 32))(&v8[qword_1001248A0], v20, v15);
  v32 = *(v16 + 16);
  v32(v20, &v8[v31], v15);
  sub_1000DAF54();
  (*(v48 + 32))(&v8[qword_1001248A8], v14, v49);
  v33 = type metadata accessor for ThumbnailCacheOperation();
  v51.receiver = v8;
  v51.super_class = v33;
  v34 = [&v51 init];
  v35 = v50;
  v32(v50, &v34[qword_1001248A0], v15);
  v36 = v34;
  v37 = sub_1000DAFD4();
  v38 = sub_1000DC4B4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Initialized", v39, 2u);

    v40 = v46;
    v41 = a1;
    a1 = v36;
  }

  else
  {
    v40 = v36;
    v41 = v37;
    v37 = v46;
  }

  (*(v16 + 8))(v35, v15);
  return v36;
}

uint64_t sub_10008A6C0(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = sub_1000DAF84();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000DAF44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000DAF64();
  sub_1000DAF94();
  v20 = sub_1000DC5C4();
  result = sub_1000DC7A4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      sub_1000DAFC4();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_1000DAF24();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v20, v18, v15, v16, v17, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10008A968(uint64_t a1)
{
  v2[10] = v1;
  v4 = sub_1000DB074();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_1000DB044();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_100007BC0(&qword_1001223A8);
  v2[18] = swift_task_alloc();
  v6 = sub_1000DAF04();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = sub_1000DA844();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  sub_100007BC0(&qword_100121580);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v8 = sub_1000D9DA4();
  v2[31] = v8;
  v2[32] = *(v8 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = type metadata accessor for AssetAttachment.AssetType(0);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_1000DC1D4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v2[39] = v9;
  v2[40] = v11;

  return _swift_task_switch(sub_10008ACF8, v9, v11);
}

uint64_t sub_10008ACF8()
{
  v1 = v0[10];
  v2 = *(v1 + qword_100127260);
  if (v2 >> 62)
  {
LABEL_53:
    v3 = sub_1000DCB14();
    v1 = v0[10];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_43:

    v46 = v0[1];

    return v46(0);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_43;
  }

LABEL_3:
  v4 = 0;
  v5 = (v1 + qword_100127288);
  v6 = v0[32];
  v7 = v2 & 0xC000000000000001;
  v76 = v2 & 0xFFFFFFFFFFFFFF8;
  v70 = (v6 + 56);
  v8 = v0[20];
  v68 = v2;
  v69 = (v6 + 32);
  v71 = (v6 + 48);
  v72 = v2 & 0xC000000000000001;
  v66 = (v8 + 48);
  v67 = v3;
  v63 = (v8 + 32);
  v62 = (v8 + 8);
  v64 = (v0[24] + 8);
  v65 = (v6 + 8);
  v73 = v5;
  while (1)
  {
    if (v7)
    {
      v11 = sub_1000DCA24();
    }

    else
    {
      if (v4 >= *(v76 + 16))
      {
        goto LABEL_52;
      }

      v11 = *(v2 + 8 * v4 + 32);
    }

    v0[41] = v11;
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v78 = *v5;
    v79 = *(v5 + 8);
    v77 = OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType;
    sub_100046830(v11 + OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType, v0[38], type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v14 = type metadata accessor for AssetAttachment.AssetType;
      }

      sub_10004676C(v0[38], v14);
      if (v79)
      {
        goto LABEL_41;
      }

      v19 = *(v11 + 16);
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      v9 = v0[38];

      v10 = v9;
LABEL_5:
      sub_10004676C(v10, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      goto LABEL_6;
    }

    v15 = v0[37];

    sub_100046830(v11 + v77, v15, type metadata accessor for AssetAttachment.AssetType);
    v16 = swift_getEnumCaseMultiPayload();
    v17 = v0[37];
    if (v16 <= 1)
    {
      if (v16)
      {
        sub_10004676C(v17, type metadata accessor for AssetAttachment.AssetType);
        v29 = 1;
        goto LABEL_28;
      }
    }

    else if ((v16 - 2) >= 2)
    {
      v18 = v0[37];

      v17 = v18 + *(sub_100007BC0(&qword_1001223B0) + 48);
    }

    v20 = v0[27];
    v21 = v0[28];
    sub_1000467CC(v17, v21);
    sub_100046830(v21, v20, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v0[30];
      v23 = v0[31];
      v24 = v0[27];
      sub_10004676C(v0[28], type metadata accessor for AssetAttachment.AssetType.FilePathType);
      (*v69)(v22, v24, v23);
    }

    else
    {
      v25 = v0[28];
      v26 = v0[25];
      v27 = v0[23];
      sub_1000DA834();
      v3 = v67;
      sub_1000DA804();

      v28 = v27;
      v2 = v68;
      (*v64)(v26, v28);
      sub_10004676C(v25, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v29 = 0;
    v7 = v72;
    v5 = v73;
LABEL_28:
    v75 = v0[38];
    v30 = v0[30];
    v31 = v0[31];
    (*v70)(v30, v29, 1, v31);
    v74 = *(sub_100007BC0(&qword_1001223B0) + 48);
    if ((*v71)(v30, 1, v31) == 1)
    {
      v32 = v0[30];

      sub_1000080B0(v32, &qword_100121580);
LABEL_38:
      v10 = v75 + v74;
      goto LABEL_5;
    }

    v34 = v0[18];
    v33 = v0[19];
    (*v69)(v0[35], v0[30], v0[31]);
    sub_1000D9D24();
    sub_1000DAE74();
    sub_1000DAE44();
    v35 = (*v66)(v34, 1, v33);
    v36 = v0[35];
    v37 = v0[31];
    if (v35 == 1)
    {
      v38 = v0[18];

      (*v65)(v36, v37);
      sub_1000080B0(v38, &qword_1001223A8);
LABEL_37:
      v3 = v67;
      v2 = v68;
      v7 = v72;
      v5 = v73;
      goto LABEL_38;
    }

    v40 = v0[21];
    v39 = v0[22];
    v41 = v0[19];
    (*v63)(v39, v0[18], v41);
    sub_1000DAEA4();
    v61 = sub_1000DAEE4();
    v42 = *v62;
    (*v62)(v40, v41);
    v42(v39, v41);
    (*v65)(v36, v37);
    if ((v61 & 1) == 0)
    {

      goto LABEL_37;
    }

    v2 = v68;
    v7 = v72;
    v5 = v73;
    if (v79)
    {
      break;
    }

    v19 = *(v11 + 16);
    sub_10004676C(v75 + v74, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v3 = v67;
LABEL_21:
    if (v19 == v78)
    {
      goto LABEL_41;
    }

LABEL_6:
    ++v4;
    if (v12 == v3)
    {
      goto LABEL_43;
    }
  }

  sub_10004676C(v75 + v74, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_41:
  v43 = v0[31];
  v44 = v0[29];
  sub_1000B3098(v44);
  if ((*v71)(v44, 1, v43) == 1)
  {
    v45 = v0[29];

    sub_1000080B0(v45, &qword_100121580);
    goto LABEL_43;
  }

  v48 = v0[10];
  (*v69)(v0[34], v0[29], v0[31]);
  sub_1000DB034();
  sub_1000DB024();
  if (sub_100022140(*(v48 + qword_100127280)))
  {
    v49 = v0[10];
    sub_100065D44();
    sub_1000DB014();
    v50 = *(v49 + qword_100127290);
    [v50 displayScale];
    v52 = v51;
    v53 = sub_1000DB004();
    *v54 = v52 * *v54;
    v53(v0 + 2, 0);
    [v50 displayScale];
    v56 = v55;
    v57 = sub_1000DB004();
    *(v58 + 8) = v56 * *(v58 + 8);
    v57(v0 + 6, 0);
  }

  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  sub_1000DB054();
  v59 = swift_task_alloc();
  v0[42] = v59;
  *v59 = v0;
  v59[1] = sub_10008B680;
  v60 = v0[34];

  return UIImageReader.image(contentsOf:)(v60);
}

uint64_t sub_10008B680(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 344) = a1;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);

  return _swift_task_switch(sub_10008B7A8, v4, v3);
}

uint64_t sub_10008B7A8()
{
  v39 = v0;
  v1 = v0[31];
  v2 = v0[32];
  if (v0[43])
  {
    v3 = v0[34];
    v4 = v0[17];
    v5 = v0[14];
    v6 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);
    (*(v2 + 8))(v3, v1);
    v36 = v0[43];
  }

  else
  {
    (*(v2 + 16))(v0[33], v0[34], v0[31]);
    v10 = sub_1000DAFD4();
    v33 = sub_1000DC4C4();
    v11 = os_log_type_enabled(v10, v33);
    v12 = v0[33];
    v13 = v0[34];
    v14 = v0[31];
    v15 = v0[32];
    v16 = v0[17];
    v17 = v0[15];
    v18 = v0[12];
    v35 = v0[13];
    v37 = v0[14];
    v34 = v0[11];
    if (v11)
    {
      v19 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v19 = 136315138;
      sub_10008C5A8(&qword_100124A18, &type metadata accessor for URL);
      v20 = sub_1000DCC44();
      v21 = v14;
      v31 = v14;
      v32 = v16;
      v22 = v20;
      v24 = v23;
      v25 = *(v15 + 8);
      v25(v12, v21);
      v26 = sub_10001A58C(v22, v24, &v38);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v10, v33, "getImageStoredInFile can't create image from %s", v19, 0xCu);
      sub_100007FC0(v30);

      (*(v18 + 8))(v35, v34);
      (*(v17 + 8))(v32, v37);
      v25(v13, v31);
    }

    else
    {

      v27 = *(v15 + 8);
      v27(v12, v14);
      (*(v18 + 8))(v35, v34);
      (*(v17 + 8))(v16, v37);
      v27(v13, v14);
    }

    v36 = 0;
  }

  v28 = v0[1];

  return v28(v36);
}

void sub_10008BB88(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = [a1 objectWithID:a2];
  sub_1000DA354();
  if (!swift_dynamicCastClass())
  {

    v14 = sub_1000DAFD4();
    v15 = sub_1000DC4C4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to retrieve assetMO based on NSManagedObjectID", v16, 2u);
    }

    goto LABEL_11;
  }

  v5 = sub_100086930(0);
  if (!v5 || (v6 = v5, v7 = [v5 data], v6, !v7))
  {
    v11 = sub_1000DAFD4();
    v12 = sub_1000DC4E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "data attachment [0] is nil", v13, 2u);
    }

LABEL_11:
    v8 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_12;
  }

  v8 = sub_1000D9DF4();
  v10 = v9;

LABEL_12:
  *a3 = v8;
  a3[1] = v10;
}

uint64_t sub_10008BD80()
{

  v1 = qword_100127258;
  v2 = sub_1000DAD44();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = qword_1001248A0;
  v4 = sub_1000DAFF4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_1001248A8;
  v6 = sub_1000DAF74();
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

id sub_10008BECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThumbnailCacheOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10008BF04(uint64_t a1)
{

  v2 = qword_100127258;
  v3 = sub_1000DAD44();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = qword_1001248A0;
  v5 = sub_1000DAFF4();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = qword_1001248A8;
  v7 = sub_1000DAF74();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

uint64_t type metadata accessor for ThumbnailCacheOperation()
{
  result = qword_1001248D8;
  if (!qword_1001248D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008C0A0()
{
  result = sub_1000DAD44();
  if (v1 <= 0x3F)
  {
    result = sub_1000DAFF4();
    if (v2 <= 0x3F)
    {
      result = sub_1000DAF74();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

id sub_10008C1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D9D14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D9DA4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v24 - v13;
  if (qword_10011FB70 != -1)
  {
    swift_once();
  }

  v15 = sub_1000DA844();
  sub_100007EBC(v15, qword_1001272F8);
  sub_1000DA814();
  v24[0] = a1;
  v24[1] = a2;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_100007C50();
  sub_1000D9D94();
  (*(v5 + 8))(v7, v4);
  v16 = *(v9 + 8);
  v16(v12, v8);
  v17 = [objc_opt_self() defaultManager];
  sub_1000D9D84();
  v18 = sub_1000DBF04();

  v19 = [v17 fileExistsAtPath:v18];

  v20 = 0;
  if (v19)
  {
    sub_1000D9D04();
    v21 = objc_allocWithZone(UIImage);
    v22 = sub_1000DBF04();

    v20 = [v21 initWithContentsOfFile:v22];
  }

  v16(v14, v8);
  return v20;
}

uint64_t sub_10008C4F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10008C55C()
{
  result = qword_100124A10;
  if (!qword_100124A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100124A10);
  }

  return result;
}

uint64_t sub_10008C5A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008C5F0()
{
  sub_100007C08(&qword_100121D50);
  sub_1000DCD94();
  swift_getFunctionTypeMetadata1();
  sub_1000DC1C4();

  return swift_getWitnessTable();
}

uint64_t sub_10008C6A8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result & 1;
  return result;
}

uint64_t sub_10008C70C()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100124A20);
  sub_100007EBC(v0, qword_100124A20);
  return sub_1000DAFE4();
}

uint64_t sub_10008C78C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100007BC0(&qword_1001204F8);
  v3[5] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_1000DC1D4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v3[6] = v5;
  v3[7] = v7;

  return _swift_task_switch(sub_10008C868, v5, v7);
}

uint64_t sub_10008C868()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_10008C900;
  v2 = v0[3];
  v3 = v0[2];

  return sub_100088628(v3, v2);
}

uint64_t sub_10008C900(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_10008CA28, v4, v3);
}

uint64_t sub_10008CA28()
{
  v1 = v0[9];
  if (v1)
  {
LABEL_13:

    v16 = v0[1];

    return v16(v1);
  }

  v2 = v0[5];
  sub_10008DCF8(v0[4] + qword_100127298, v2);
  v3 = sub_1000DA984();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[5];
  if (v5 == 1)
  {
    sub_1000080B0(v0[5], &qword_1001204F8);
LABEL_8:
    if (qword_10011FB00 != -1)
    {
      swift_once();
    }

    v12 = sub_1000DAFF4();
    sub_100007EBC(v12, qword_100124A20);
    v13 = sub_1000DAFD4();
    v14 = sub_1000DC4C4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "no visits data", v15, 2u);
    }

    goto LABEL_13;
  }

  v7 = sub_1000DA944();
  v0[10] = v7;
  (*(v4 + 8))(v6, v3);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_10008CC94;
  v9 = v0[3];
  v10 = v0[2];

  return sub_10008D200(v10, v9, v7);
}

uint64_t sub_10008CC94(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_10008CDE0, v4, v3);
}

uint64_t sub_10008CDE0()
{
  if (*(v0 + 96))
  {
    v1 = *(*(v0 + 32) + qword_100127280);
    *(v0 + 120) = v1;
    if (sub_100022140(v1))
    {
      sub_100065D44();
      v3 = v2;
      v4 = [objc_opt_self() mainScreen];
      [v4 scale];
      v6 = v5;

      v7 = swift_task_alloc();
      *(v0 + 104) = v7;
      *v7 = v0;
      v7[1] = sub_10008CF44;
      v8 = *(v0 + 16);

      return sub_100081594(v8, v3 * v6);
    }

    v10 = *(v0 + 96);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_10008CF44(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_10008D06C, v4, v3);
}

uint64_t sub_10008D06C()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    if (sub_100021930(*(v0 + 120)))
    {
      if (qword_10011F9A0 != -1)
      {
        swift_once();
      }

      sub_100097C1C(v1, *(*(v0 + 32) + qword_100124898), *(*(v0 + 32) + qword_100124898 + 8));
    }
  }

  else
  {
    if (qword_10011FB00 != -1)
    {
      swift_once();
    }

    v2 = sub_1000DAFF4();
    sub_100007EBC(v2, qword_100124A20);
    v1 = sub_1000DAFD4();
    v3 = sub_1000DC4C4();
    if (os_log_type_enabled(v1, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, v3, "error creating thumbnail from video preview image", v4, 2u);
    }
  }

  v5 = *(v0 + 96);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_10008D200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  sub_100007BC0(&qword_1001204F8);
  v4[21] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_1000DC1D4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v4[22] = v6;
  v4[23] = v8;

  return _swift_task_switch(sub_10008D2D8, v6, v8);
}

uint64_t sub_10008D2D8()
{
  v1 = v0[20];
  v2 = sub_100010030(v0[19]);
  v0[24] = v2;
  v3 = *(v1 + qword_100127290);
  v4 = *(v1 + qword_100127280);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_10008D3BC;

  return sub_10001C1CC(v2, v4, v3);
}

uint64_t sub_10008D3BC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return _swift_task_switch(sub_10008D508, v4, v3);
}

uint64_t sub_10008D508()
{
  v1 = *(v0 + 168);
  sub_10008DCF8(*(v0 + 160) + qword_100127298, v1);
  v2 = sub_1000DA984();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000080B0(*(v0 + 168), &qword_1001204F8);
  }

  else
  {
    v4 = sub_1000DA954();
    v6 = *(v0 + 168);
    if (v5 >> 60 == 15)
    {
      (*(v3 + 8))(*(v0 + 168), v2);
    }

    else
    {
      v7 = v4;
      v8 = v5;
      sub_10008DD80();
      v9 = sub_1000DC734();
      sub_100010500(v7, v8);
      (*(v3 + 8))(v6, v2);
      if (v9)
      {
        goto LABEL_7;
      }
    }
  }

  v9 = [*(v0 + 208) camera];
LABEL_7:
  v10 = *(v0 + 208);
  [v10 setCamera:v9];

  [v10 _setRendersInBackground:1];
  v11 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v10];
  *(v0 + 216) = v11;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10008D7B4;
  v12 = swift_continuation_init();
  *(v0 + 136) = sub_100007BC0(&qword_100122730);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100097F90;
  *(v0 + 104) = &unk_1001103B8;
  *(v0 + 112) = v12;
  [v11 startWithCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10008D7B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_10008D980;
  }

  else
  {
    v5 = sub_10008D8E4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10008D8E4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = [v3 image];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10008D980()
{
  swift_willThrow();
  if (qword_10011FB00 != -1)
  {
    swift_once();
  }

  v1 = sub_1000DAFF4();
  sub_100007EBC(v1, qword_100124A20);
  swift_errorRetain();
  v2 = sub_1000DAFD4();
  v3 = sub_1000DC4C4();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  v6 = v0[26];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "MKMapSnapshotter: Unable to create Location Preview Map Snapshot with error: %@", v7, 0xCu);
    sub_1000080B0(v8, &qword_100120A80);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t type metadata accessor for MultiPinMapThumbnailCacheOperation()
{
  result = qword_100124A60;
  if (!qword_100124A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008DC08()
{
  sub_10008DC98();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_10008DC98()
{
  if (!qword_100124A70)
  {
    sub_1000DA984();
    v0 = sub_1000DC7C4();
    if (!v1)
    {
      atomic_store(v0, &qword_100124A70);
    }
  }
}

uint64_t sub_10008DCF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_1001204F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008DD80()
{
  result = qword_100124BB0;
  if (!qword_100124BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100124BB0);
  }

  return result;
}

id sub_10008DE0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedDeviceInfoProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10008DE64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v39 = _swiftEmptyArrayStorage;
    sub_100017A34(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v2 + 64;
    v5 = sub_1000DC8E4();
    v6 = 0;
    v30 = v2 + 72;
    v34 = v2 + 64;
    v35 = v2;
    v33 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      v36 = v3;
      v37 = *(v2 + 36);
      v10 = (*(v2 + 48) + 16 * v5);
      v11 = *v10;
      v12 = v10[1];
      swift_bridgeObjectRetain_n();
      v13 = sub_100094BF4(v11, v12);
      if (v13 == 13)
      {
        if (qword_10011FB08 != -1)
        {
          swift_once();
        }

        v14 = sub_1000DAFF4();
        sub_100007EBC(v14, qword_100124BE0);

        v15 = sub_1000DAFD4();
        v16 = sub_1000DC4B4();

        if (os_log_type_enabled(v15, v16))
        {
          v32 = v16;
          v17 = 12;
          v18 = swift_slowAlloc();
          log = v15;
          v19 = swift_slowAlloc();
          v38 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_10001A58C(v11, v12, &v38);
          _os_log_impl(&_mh_execute_header, log, v32, "No JournalEntryMO field match for key: %s", v18, 0xCu);
          sub_100007FC0(v19);
        }

        else
        {

          v17 = 12;
        }
      }

      else
      {
        v17 = v13;
      }

      v3 = v36;
      v20 = v37;
      v39 = v36;
      v22 = *(v36 + 2);
      v21 = *(v36 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_100017A34((v21 > 1), v22 + 1, 1);
        v20 = v37;
        v3 = v39;
      }

      *(v3 + 2) = v22 + 1;
      *(v3 + v22 + 32) = v17;
      v2 = v35;
      v7 = 1 << *(v35 + 32);
      if (v5 >= v7)
      {
        goto LABEL_29;
      }

      v4 = v34;
      v23 = *(v34 + 8 * v9);
      if ((v23 & (1 << v5)) == 0)
      {
        goto LABEL_30;
      }

      if (v20 != *(v35 + 36))
      {
        goto LABEL_31;
      }

      v24 = v23 & (-2 << (v5 & 0x3F));
      if (v24)
      {
        v7 = __clz(__rbit64(v24)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v8 = v33;
      }

      else
      {
        v25 = v9 << 6;
        v26 = v9 + 1;
        v27 = (v30 + 8 * v9);
        v8 = v33;
        while (v26 < (v7 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_100020EA0(v5, v20, 0);
            v7 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_100020EA0(v5, v20, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }
}

void sub_10008E200(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000DC924();
    sub_100008068(0, &qword_100124C08);
    sub_100094608();
    sub_1000DC2D4();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_1000DC964() || (sub_100008068(0, &qword_100124C08), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_100027E40();
      return;
    }

LABEL_16:
    sub_1000DA354();
    if (swift_dynamicCastClass())
    {
      sub_1000DC114();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000DC164();
      }

      sub_1000DC194();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10008E460()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100124BE0);
  v1 = sub_100007EBC(v0, qword_100124BE0);
  if (qword_10011FA30 != -1)
  {
    swift_once();
  }

  v2 = sub_100007EBC(v0, qword_100127050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10008E528(unint64_t a1)
{
  v2 = 0;
  v3 = sub_100007BC0(&qword_1001217A8);
  __chkstk_darwin(v3);
  v202 = &v188 - v4;
  v212 = sub_1000DAD44();
  v5 = *(v212 - 1);
  __chkstk_darwin(v212);
  v211 = &v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007BC0(&qword_1001217A0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = (&v188 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = &v188 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = (&v188 - v18);
  v20 = __chkstk_darwin(v17);
  v22 = (&v188 - v21);
  v23 = __chkstk_darwin(v20);
  v210 = &v188 - v24;
  __chkstk_darwin(v23);
  v209 = &v188 - v25;
  v214 = sub_1000DA0E4();
  *&v204 = *(v214 - 8);
  v26 = __chkstk_darwin(v214);
  v28 = &v188 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v208 = &v188 - v29;
  v30 = [a1 userInfo];
  if (!v30)
  {
    return;
  }

  v206 = v22;
  v193 = v5;
  v31 = v30;
  v205 = sub_1000DBD74();

  if (qword_10011FB08 == -1)
  {
    goto LABEL_3;
  }

LABEL_219:
  swift_once();
LABEL_3:
  v32 = sub_1000DAFF4();
  v33 = sub_100007EBC(v32, qword_100124BE0);
  v34 = a1;
  v207 = v33;
  v35 = sub_1000DAFD4();
  v36 = sub_1000DC4B4();

  v37 = os_log_type_enabled(v35, v36);
  v196 = v10;
  v201 = v13;
  v197 = v16;
  v203 = v19;
  v198 = v3;
  v195 = v28;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v226[0] = v16;
    *v38 = 136315138;
    v39 = [v34 name];
    v40 = sub_1000DBF44();
    v28 = v41;

    v42 = sub_10001A58C(v40, v28, v226);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Responding to NSManagedObjectContextObjectsDidChange notification: %s", v38, 0xCu);
    sub_100007FC0(v16);
  }

  v43 = v205;
  v219 = &_swiftEmptySetSingleton;
  v220 = sub_1000DBF44();
  v221 = v44;
  sub_1000DC9A4();
  if (*(v43 + 16) && (a1 = v43, v45 = sub_1000630F0(v226), (v46 & 1) != 0))
  {
    sub_10000800C(*(v43 + 56) + 32 * v45, v225);
    sub_100030F6C(v226);
    sub_100007BC0(&qword_100124C00);
    if (swift_dynamicCast())
    {
      sub_10008E200(v220);
      v28 = v47;

      v226[0] = _swiftEmptyArrayStorage;
      if (v28 >> 62)
      {
        v3 = sub_1000DCB14();
      }

      else
      {
        v3 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v194 = v2;
      if (v3)
      {
        v16 = 0;
        v213 = v28 & 0xC000000000000001;
        v2 = (v28 & 0xFFFFFFFFFFFFFF8);
        v13 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
        while (1)
        {
          if (v213)
          {
            v48 = sub_1000DCA24();
          }

          else
          {
            if (v16 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_215;
            }

            v48 = *(v28 + 8 * v16 + 32);
          }

          v49 = v48;
          v10 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_214;
          }

          v50 = [v48 entry];
          if (v50)
          {
            a1 = v50;
            v51 = [v50 *&v13[498]];
          }

          else
          {
            v51 = 0;
          }

          v19 = v13;
          v52 = [*(v215 + 32) *&v13[498]];
          v53 = v52;
          if (v51)
          {
            if (!v52)
            {

              goto LABEL_13;
            }

            sub_100008068(0, &qword_100120308);
            a1 = sub_1000DC764();

            if ((a1 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else if (v52)
          {

LABEL_27:
            goto LABEL_13;
          }

          a1 = v226;
          sub_1000DCA94();
          sub_1000DCAC4();
          sub_1000DCAD4();
          sub_1000DCAA4();
LABEL_13:
          ++v16;
          v13 = v19;
          if (v10 == v3)
          {
            v89 = v226[0];
            v2 = v194;
            v43 = v205;
            goto LABEL_66;
          }
        }
      }

      v89 = _swiftEmptyArrayStorage;
LABEL_66:

      if (v89 < 0)
      {
        v3 = 1;
      }

      else
      {
        v3 = (v89 >> 62) & 1;
      }

      if (v3 == 1)
      {
        v200 = sub_1000DCB14();
        if (!v200)
        {
          goto LABEL_222;
        }
      }

      else
      {
        v200 = *(v89 + 16);
        if (!v200)
        {
          goto LABEL_222;
        }
      }

      v90 = sub_1000DAFD4();
      v91 = sub_1000DC4B4();
      v92 = os_log_type_enabled(v90, v91);
      v213 = v89;
      if (v92)
      {
        v10 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v226[0] = v188;
        *v10 = 134218242;
        v192 = v3;
        v191 = v90;
        v189 = v91;
        if (v3)
        {
          v93 = sub_1000DCB14();
        }

        else
        {
          v93 = *(v89 + 16);
        }

        v116 = v206;
        *(v10 + 4) = v93;

        a1 = 0;
        v190 = v10;
        *(v10 + 12) = 2080;
        v199 = (v89 & 0xC000000000000001);
        v28 = v204 + 56;
        v13 = (v204 + 48);
        v16 = _swiftEmptyArrayStorage;
        v2 = (v204 + 32);
        do
        {
          if (v199)
          {
            v117 = sub_1000DCA24();
            v3 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_217;
            }
          }

          else
          {
            if (a1 >= *(v89 + 16))
            {
              goto LABEL_218;
            }

            v117 = *(v89 + 8 * a1 + 32);
            v3 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_217;
            }
          }

          v118 = v117;
          v119 = [v118 id];
          if (v119)
          {
            v120 = v119;
            sub_1000DA0C4();

            v116 = v206;
            v121 = 0;
          }

          else
          {
            v121 = 1;
          }

          v10 = v214;
          (*v28)(v116, v121, 1, v214);
          v122 = v210;
          sub_100086E70(v116, v210);
          v123 = v122;
          v19 = v209;
          sub_100086E70(v123, v209);

          if ((*v13)(v19, 1, v10) == 1)
          {
            sub_1000080B0(v19, &qword_1001217A0);
          }

          else
          {
            v124 = *v2;
            (*v2)(v208, v19, v10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_100047674(0, *(v16 + 16) + 1, 1, v16);
            }

            v10 = *(v16 + 16);
            v125 = *(v16 + 24);
            if (v10 >= v125 >> 1)
            {
              v16 = sub_100047674(v125 > 1, v10 + 1, 1, v16);
            }

            *(v16 + 16) = v10 + 1;
            v124((v16 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v10), v208, v214);
            v116 = v206;
          }

          v89 = v213;
          ++a1;
        }

        while (v3 != v200);
        v126 = sub_1000DC144();
        v128 = v127;

        v129 = sub_10001A58C(v126, v128, v226);

        v130 = v190;
        *(v190 + 14) = v129;
        v89 = v213;
        v131 = v191;
        _os_log_impl(&_mh_execute_header, v191, v189, "Processing %ld asset inserts: %s", v130, 0x16u);
        sub_100007FC0(v188);

        v2 = v194;
        v43 = v205;
        if (!v192)
        {
LABEL_140:
          v95 = *(v89 + 16);
          if (v95)
          {
            goto LABEL_141;
          }

          goto LABEL_222;
        }
      }

      else
      {

        if (!v3)
        {
          goto LABEL_140;
        }
      }

      v95 = sub_1000DCB14();
      if (v95)
      {
LABEL_141:
        if (v95 < 1)
        {
          __break(1u);
          return;
        }

        v132 = 0;
        v209 = v89 & 0xC000000000000001;
        LODWORD(v208) = enum case for AssetType.reflection(_:);
        v133 = (v193 + 104);
        v134 = (v193 + 8);
        v210 = v95;
        while (1)
        {
          if (v209)
          {
            v136 = sub_1000DCA24();
          }

          else
          {
            v136 = *(v89 + 8 * v132 + 32);
          }

          v137 = v136;
          v138 = [v136 assetType];
          if (v138)
          {
            v139 = v138;
            v16 = sub_1000DBF44();
            v141 = v140;
          }

          else
          {
            v16 = 0;
            v141 = 0;
          }

          v142 = v211;
          v143 = v212;
          (*v133)(v211, v208, v212);
          v28 = sub_1000DAD34();
          v145 = v144;
          (*v134)(v142, v143);
          if (v141)
          {
            if (v16 == v28 && v141 == v145)
            {

              v89 = v213;
LABEL_157:
              v135 = 4;
              goto LABEL_145;
            }

            v16 = sub_1000DCC74();

            v89 = v213;
            if (v16)
            {
              goto LABEL_157;
            }
          }

          else
          {

            v89 = v213;
          }

          v135 = 1;
LABEL_145:
          sub_10000AAC0(v226, v135);

          if (v210 == ++v132)
          {

            v2 = v194;
            v43 = v205;
            goto LABEL_31;
          }
        }
      }

LABEL_222:
    }
  }

  else
  {
    sub_100030F6C(v226);
  }

LABEL_31:
  v220 = sub_1000DBF44();
  v221 = v54;
  sub_1000DC9A4();
  if (*(v43 + 16) && (v55 = sub_1000630F0(v226), (v56 & 1) != 0))
  {
    sub_10000800C(*(v43 + 56) + 32 * v55, v225);
    sub_100030F6C(v226);
    sub_100007BC0(&qword_100124C00);
    if (swift_dynamicCast())
    {
      v57 = v220;

      a1 = sub_1000DAFD4();
      v58 = sub_1000DC4B4();
      v59 = v57 & 0xC000000000000001;
      if (os_log_type_enabled(a1, v58))
      {
        v60 = swift_slowAlloc();
        *v60 = 134217984;
        if (v59)
        {
          v61 = sub_1000DC934();
        }

        else
        {
          v61 = *(v57 + 16);
        }

        *(v60 + 4) = v61;

        _os_log_impl(&_mh_execute_header, a1, v58, "Processing %ld updated objects", v60, 0xCu);
      }

      else
      {
      }

      v194 = v2;
      if (v59)
      {
        sub_1000DC924();
        a1 = sub_100008068(0, &qword_100124C08);
        sub_100094608();
        sub_1000DC2D4();
        v57 = v220;
        v3 = v221;
        v96 = v222;
        v13 = v223;
        v2 = v224;
      }

      else
      {
        v13 = 0;
        v3 = v57 + 56;
        v97 = -1 << *(v57 + 32);
        v96 = ~v97;
        v98 = -v97;
        if (v98 < 64)
        {
          v99 = ~(-1 << v98);
        }

        else
        {
          v99 = -1;
        }

        v2 = (v99 & *(v57 + 56));
      }

      v19 = ((v96 + 64) >> 6);
      v16 = NSManagedObject_ptr;
      if ((v57 & 0x8000000000000000) == 0)
      {
        goto LABEL_92;
      }

LABEL_89:
      v100 = sub_1000DC964();
      if (v100)
      {
        v225[0] = v100;
        sub_100008068(0, &qword_100124C08);
        swift_dynamicCast();
        a1 = v226[0];
        v10 = v13;
        v28 = v2;
        if (v226[0])
        {
          while (1)
          {
            v103 = sub_100090464(a1, v215);
            v104 = v219;

            v105 = sub_10009275C(v103, v104);

            v219 = v105;
            v13 = v10;
            v2 = v28;
            if (v57 < 0)
            {
              goto LABEL_89;
            }

LABEL_92:
            v101 = v13;
            v102 = v2;
            v10 = v13;
            if (!v2)
            {
              break;
            }

LABEL_96:
            v28 = (v102 - 1) & v102;
            a1 = *(*(v57 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v102)))));
            if (!a1)
            {
              goto LABEL_99;
            }
          }

          while (1)
          {
            v10 = v101 + 1;
            if (__OFADD__(v101, 1))
            {
              break;
            }

            if (v10 >= v19)
            {
              goto LABEL_99;
            }

            v102 = *(v3 + 8 * v10);
            v101 = (v101 + 1);
            if (v102)
            {
              goto LABEL_96;
            }
          }

          __break(1u);
          goto LABEL_213;
        }
      }

LABEL_99:
      sub_100027E40();
      v2 = v194;
      v43 = v205;
    }
  }

  else
  {
    sub_100030F6C(v226);
  }

  v218[0] = sub_1000DBF44();
  v218[1] = v62;
  sub_1000DC9A4();
  if (*(v43 + 16) && (v63 = sub_1000630F0(v226), (v64 & 1) != 0))
  {
    sub_10000800C(*(v43 + 56) + 32 * v63, v225);
    sub_100030F6C(v226);
    sub_100007BC0(&qword_100124C00);
    if (swift_dynamicCast())
    {
      v65 = v218[0];

      a1 = sub_1000DAFD4();
      v66 = sub_1000DC4B4();
      v67 = v65 & 0xC000000000000001;
      if (os_log_type_enabled(a1, v66))
      {
        v68 = swift_slowAlloc();
        *v68 = 134217984;
        if (v67)
        {
          v69 = sub_1000DC934();
        }

        else
        {
          v69 = *(v65 + 16);
        }

        *(v68 + 4) = v69;

        _os_log_impl(&_mh_execute_header, a1, v66, "Processing %ld refreshed objects", v68, 0xCu);
      }

      else
      {
      }

      v194 = v2;
      if (v67)
      {
        sub_1000DC924();
        a1 = sub_100008068(0, &qword_100124C08);
        sub_100094608();
        sub_1000DC2D4();
        v65 = v225[0];
        v3 = v225[1];
        v106 = v225[2];
        v13 = v225[3];
        v2 = v225[4];
      }

      else
      {
        v13 = 0;
        v3 = v65 + 56;
        v107 = -1 << *(v65 + 32);
        v106 = ~v107;
        v108 = -v107;
        if (v108 < 64)
        {
          v109 = ~(-1 << v108);
        }

        else
        {
          v109 = -1;
        }

        v2 = (v109 & *(v65 + 56));
      }

      v19 = ((v106 + 64) >> 6);
      v16 = NSManagedObject_ptr;
      if ((v65 & 0x8000000000000000) == 0)
      {
        goto LABEL_112;
      }

LABEL_109:
      v110 = sub_1000DC964();
      if (!v110 || (v218[0] = v110, sub_100008068(0, &qword_100124C08), swift_dynamicCast(), a1 = v226[0], v10 = v13, v28 = v2, !v226[0]))
      {
LABEL_119:
        sub_100027E40();
        v2 = v194;
        v43 = v205;
        goto LABEL_45;
      }

      while (1)
      {
        v113 = sub_100090464(a1, v215);
        v114 = v219;

        v115 = sub_10009275C(v113, v114);

        v219 = v115;
        v13 = v10;
        v2 = v28;
        if (v65 < 0)
        {
          goto LABEL_109;
        }

LABEL_112:
        v111 = v13;
        v112 = v2;
        v10 = v13;
        if (!v2)
        {
          break;
        }

LABEL_116:
        v28 = (v112 - 1) & v112;
        a1 = *(*(v65 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v112)))));
        if (!a1)
        {
          goto LABEL_119;
        }
      }

      while (1)
      {
        v10 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          break;
        }

        if (v10 >= v19)
        {
          goto LABEL_119;
        }

        v112 = *(v3 + 8 * v10);
        v111 = (v111 + 1);
        if (v112)
        {
          goto LABEL_116;
        }
      }

LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
      goto LABEL_216;
    }
  }

  else
  {
    sub_100030F6C(v226);
  }

LABEL_45:
  v216 = sub_1000DBF44();
  v217 = v70;
  sub_1000DC9A4();
  if (!*(v43 + 16) || (v71 = sub_1000630F0(v226), (v72 & 1) == 0))
  {

    sub_100030F6C(v226);
    goto LABEL_54;
  }

  sub_10000800C(*(v43 + 56) + 32 * v71, v218);
  sub_100030F6C(v226);

  sub_100007BC0(&qword_100124C00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_54;
  }

  v10 = v216;
  v73 = v216 & 0xC000000000000001;
  if ((v216 & 0xC000000000000001) != 0)
  {
    if (sub_1000DC934() < 1)
    {
      goto LABEL_75;
    }
  }

  else if (*(v216 + 16) < 1)
  {
LABEL_75:

    goto LABEL_54;
  }

  v74 = sub_1000DAFD4();
  a1 = sub_1000DC4B4();
  if (os_log_type_enabled(v74, a1))
  {
    v75 = swift_slowAlloc();
    *v75 = 134217984;
    if (v73)
    {
      v76 = sub_1000DC934();
    }

    else
    {
      v76 = *(v10 + 16);
    }

    *(v75 + 4) = v76;

    _os_log_impl(&_mh_execute_header, v74, a1, "Notified of %ld deletes:", v75, 0xCu);
  }

  else
  {
  }

  v194 = v2;
  if (v73)
  {
    sub_1000DC924();
    a1 = sub_100008068(0, &qword_100124C08);
    sub_100094608();
    sub_1000DC2D4();
    v10 = v226[0];
    v146 = v226[1];
    v147 = v226[2];
    v73 = v226[3];
    v28 = v226[4];
  }

  else
  {
    v148 = -1 << *(v10 + 32);
    v146 = v10 + 56;
    v147 = ~v148;
    v149 = -v148;
    if (v149 < 64)
    {
      v150 = ~(-1 << v149);
    }

    else
    {
      v150 = -1;
    }

    v28 = v150 & *(v10 + 56);
  }

  v193 = v147;
  v13 = ((v147 + 64) >> 6);
  v212 = (v204 + 56);
  v206 = (v204 + 48);
  v199 = (v204 + 32);
  v200 = (v204 + 8);
  *&v94 = 136315138;
  v204 = v94;
  v19 = &qword_1001217A0;
  v209 = v10;
  v208 = v146;
  v205 = v13;
  if ((v10 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v154 = v73;
      v155 = v28;
      v3 = v73;
      if (!v28)
      {
        while (1)
        {
          v3 = v154 + 1;
          if (__OFADD__(v154, 1))
          {
            break;
          }

          if (v3 >= v13)
          {
            goto LABEL_211;
          }

          v155 = *(v146 + 8 * v3);
          ++v154;
          if (v155)
          {
            goto LABEL_175;
          }
        }

LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }

LABEL_175:
      v153 = (v155 - 1) & v155;
      v152 = *(*(v10 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v155)))));
      if (!v152)
      {
        goto LABEL_211;
      }

LABEL_176:
      v156 = v152;
      v157 = sub_1000DAFD4();
      v158 = sub_1000DC4B4();

      v159 = os_log_type_enabled(v157, v158);
      v213 = v156;
      v211 = v153;
      if (v159)
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v218[0] = v161;
        *v160 = v204;
        v162 = sub_10005C3D4();
        v164 = sub_10001A58C(v162, v163, v218);

        *(v160 + 4) = v164;
        _os_log_impl(&_mh_execute_header, v157, v158, "Processing deletion %s", v160, 0xCu);
        sub_100007FC0(v161);
      }

      v2 = v202;
      v165 = v214;
      sub_1000DA404();
      v166 = swift_dynamicCastClass();
      v167 = v197;
      v168 = v203;
      if (v166)
      {
        v169 = [v166 id];
        if (v169)
        {
          v170 = v169;
          sub_1000DA0C4();

          v165 = v214;
          v171 = 0;
        }

        else
        {
          v171 = 1;
        }

        v172 = *v212;
        (*v212)(v167, v171, 1, v165);
        sub_100086E70(v167, v168);
      }

      else
      {
        v172 = *v212;
        (*v212)(v203, 1, 1, v165);
      }

      v210 = *(v215 + 32);
      v173 = [v210 id];
      if (v173)
      {
        v174 = v201;
        v175 = v173;
        sub_1000DA0C4();

        v165 = v214;
        v176 = 0;
      }

      else
      {
        v176 = 1;
        v174 = v201;
      }

      v172(v174, v176, 1, v165);
      a1 = *(v198 + 48);
      v177 = v203;
      sub_100007F58(v203, v2, &qword_1001217A0);
      sub_100007F58(v174, v2 + a1, &qword_1001217A0);
      v178 = *v206;
      if ((*v206)(v2, 1, v165) == 1)
      {
        break;
      }

      v180 = v196;
      sub_100007F58(v2, v196, &qword_1001217A0);
      if (v178(v2 + a1, 1, v165) == 1)
      {
        sub_1000080B0(v201, &qword_1001217A0);
        sub_1000080B0(v203, &qword_1001217A0);
        (*v200)(v180, v165);
        v10 = v209;
        v16 = v213;
LABEL_192:
        sub_1000080B0(v2, &qword_1001217A8);
        v146 = v208;
        v13 = v205;
        goto LABEL_193;
      }

      v185 = v195;
      (*v199)(v195, v2 + a1, v165);
      sub_100094670(&qword_1001202F8, &type metadata accessor for UUID);
      a1 = sub_1000DBE64();
      v186 = *v200;
      (*v200)(v185, v165);
      sub_1000080B0(v201, &qword_1001217A0);
      sub_1000080B0(v203, &qword_1001217A0);
      v186(v180, v165);
      sub_1000080B0(v2, &qword_1001217A0);
      v10 = v209;
      v146 = v208;
      v13 = v205;
      v16 = v213;
      if (a1)
      {
        goto LABEL_202;
      }

LABEL_193:
      sub_1000DA354();
      v181 = swift_dynamicCastClass();
      if (v181 && (v182 = [v181 entry]) != 0)
      {
        a1 = v182;
        v2 = [v182 objectID];
      }

      else
      {
        v2 = 0;
      }

      v183 = [v210 objectID];
      v184 = v183;
      if (v2)
      {
        if (!v183)
        {

          goto LABEL_208;
        }

        sub_100008068(0, &qword_100120308);
        a1 = sub_1000DC764();

        if (a1)
        {
LABEL_205:
          a1 = &v219;
          sub_10000AAC0(v218, 4);
          v187 = 1;
          goto LABEL_206;
        }
      }

      else
      {
        if (!v183)
        {
          goto LABEL_205;
        }
      }

LABEL_207:

LABEL_208:
      v73 = v3;
      v28 = v211;
      if (v10 < 0)
      {
        goto LABEL_168;
      }
    }

    sub_1000080B0(v174, &qword_1001217A0);
    sub_1000080B0(v177, &qword_1001217A0);
    v179 = v178(v2 + a1, 1, v165);
    v10 = v209;
    v16 = v213;
    if (v179 == 1)
    {
      sub_1000080B0(v2, &qword_1001217A0);
      v146 = v208;
      v13 = v205;
LABEL_202:
      a1 = &v219;
      v187 = 9;
LABEL_206:
      sub_10000AAC0(v218, v187);
      goto LABEL_207;
    }

    goto LABEL_192;
  }

LABEL_168:
  v151 = sub_1000DC964();
  if (v151)
  {
    v216 = v151;
    sub_100008068(0, &qword_100124C08);
    swift_dynamicCast();
    v152 = v218[0];
    v3 = v73;
    v153 = v28;
    if (v218[0])
    {
      goto LABEL_176;
    }
  }

LABEL_211:
  sub_100027E40();
LABEL_54:
  v77 = v219;
  v78 = v219[2];
  v79 = sub_1000DAFD4();
  v80 = sub_1000DC4B4();
  v81 = os_log_type_enabled(v79, v80);
  if (v78)
  {
    if (v81)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v218[0] = v83;
      *v82 = 136315138;
      sub_1000945B4();

      v84 = sub_1000DC2B4();
      v86 = v85;

      v87 = sub_10001A58C(v84, v86, v218);

      *(v82 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v79, v80, "Detected %s changes", v82, 0xCu);
      sub_100007FC0(v83);
    }

    v218[0] = v77;

    sub_1000DB0A4();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    if (v81)
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "No changed fields found from NSManagedObjectContextObjectsDidChange notification.", v88, 2u);
    }
  }
}

void *sub_100090464(void *a1, uint64_t a2)
{
  v146 = a2;
  v3 = sub_1000DAD44();
  v134 = *(v3 - 8);
  v135 = v3;
  __chkstk_darwin(v3);
  v133 = &v124[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = sub_1000DA0E4();
  v5 = *(v147 - 8);
  __chkstk_darwin(v147);
  v140 = &v124[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v145 = sub_100007BC0(&qword_1001217A8);
  v7 = __chkstk_darwin(v145);
  v142 = &v124[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v124[-v9];
  v11 = sub_100007BC0(&qword_1001217A0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v124[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v144 = &v124[-v16];
  v17 = __chkstk_darwin(v15);
  v138 = &v124[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v124[-v20];
  v22 = __chkstk_darwin(v19);
  v132 = &v124[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v124[-v25];
  v27 = __chkstk_darwin(v24);
  v139 = &v124[-v28];
  v29 = __chkstk_darwin(v27);
  v31 = &v124[-v30];
  __chkstk_darwin(v29);
  v33 = &v124[-v32];
  v149 = &_swiftEmptySetSingleton;
  sub_1000DA404();
  v34 = swift_dynamicCastClass();
  v136 = v14;
  if (!v34)
  {
LABEL_15:
    sub_1000DA354();
    v48 = swift_dynamicCastClass();
    if (!v48)
    {
      return v149;
    }

    v49 = v48;
    v141 = a1;
    v50 = [v49 entry];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 id];

      if (v52)
      {
        v53 = v138;
        sub_1000DA0C4();

        v54 = 0;
      }

      else
      {
        v54 = 1;
        v53 = v138;
      }

      v55 = v5[7];
      v55(v53, v54, 1, v147);
      sub_100086E70(v53, v21);
    }

    else
    {
      v55 = v5[7];
      v55(v21, 1, 1, v147);
    }

    v86 = [*(v146 + 32) id];
    v139 = v49;
    if (v86)
    {
      v87 = v144;
      v88 = v86;
      sub_1000DA0C4();

      v89 = 0;
    }

    else
    {
      v89 = 1;
      v87 = v144;
    }

    v90 = v147;
    v55(v87, v89, 1, v147);
    v91 = *(v145 + 48);
    v92 = v21;
    v93 = v21;
    v94 = v142;
    sub_100007F58(v92, v142, &qword_1001217A0);
    sub_100007F58(v87, &v94[v91], &qword_1001217A0);
    v95 = v5[6];
    if (v95(v94, 1, v90) == 1)
    {
      sub_1000080B0(v87, &qword_1001217A0);
      sub_1000080B0(v93, &qword_1001217A0);
      if (v95(&v94[v91], 1, v147) == 1)
      {
        sub_1000080B0(v94, &qword_1001217A0);
        goto LABEL_39;
      }
    }

    else
    {
      v143 = v93;
      v96 = v136;
      sub_100007F58(v94, v136, &qword_1001217A0);
      if (v95(&v94[v91], 1, v147) != 1)
      {
        v97 = v140;
        v98 = v147;
        (v5[4])(v140, &v94[v91], v147);
        sub_100094670(&qword_1001202F8, &type metadata accessor for UUID);
        v99 = sub_1000DBE64();
        v100 = v5[1];
        v100(v97, v98);
        sub_1000080B0(v144, &qword_1001217A0);
        sub_1000080B0(v143, &qword_1001217A0);
        v100(v96, v98);
        sub_1000080B0(v94, &qword_1001217A0);
        if (v99)
        {
LABEL_39:
          v101 = [v139 assetType];
          if (v101)
          {
            v102 = v101;
            v103 = sub_1000DBF44();
            v105 = v104;
          }

          else
          {
            v103 = 0;
            v105 = 0;
          }

          v107 = v134;
          v106 = v135;
          v108 = v133;
          (*(v134 + 104))(v133, enum case for AssetType.reflection(_:), v135);
          v109 = sub_1000DAD34();
          v111 = v110;
          (*(v107 + 8))(v108, v106);
          if (v105)
          {
            if (v103 == v109 && v105 == v111)
            {

LABEL_48:
              v113 = 4;
LABEL_50:
              sub_10000AAC0(&v148, v113);
              goto LABEL_51;
            }

            v112 = sub_1000DCC74();

            if (v112)
            {
              goto LABEL_48;
            }
          }

          else
          {
          }

          v113 = 1;
          goto LABEL_50;
        }

LABEL_51:

        return v149;
      }

      sub_1000080B0(v144, &qword_1001217A0);
      sub_1000080B0(v143, &qword_1001217A0);
      (v5[1])(v96, v147);
    }

    sub_1000080B0(v94, &qword_1001217A8);
    goto LABEL_51;
  }

  v35 = v34;
  v130 = v26;
  v131 = a1;
  v137 = a1;
  v36 = [v35 id];
  if (v36)
  {
    v37 = v36;
    sub_1000DA0C4();

    v38 = v5[7];
    v38(v33, 0, 1, v147);
  }

  else
  {
    v38 = v5[7];
    v38(v33, 1, 1, v147);
  }

  v39 = [*(v146 + 32) id];
  v143 = v21;
  if (v39)
  {
    v40 = v39;
    sub_1000DA0C4();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = v147;
  v129 = (v5 + 7);
  v38(v31, v41, 1, v147);
  v43 = v5;
  v44 = *(v145 + 48);
  sub_100007F58(v33, v10, &qword_1001217A0);
  sub_100007F58(v31, &v10[v44], &qword_1001217A0);
  v141 = v43;
  v45 = v42;
  v46 = v43[6];
  if (v46(v10, 1, v45) != 1)
  {
    v47 = v139;
    sub_100007F58(v10, v139, &qword_1001217A0);
    if (v46(&v10[v44], 1, v147) != 1)
    {
      v126 = v46;
      v127 = v38;
      v56 = v141;
      v57 = *(v141 + 4);
      v128 = v35;
      v58 = v140;
      v59 = v147;
      v57(v140, &v10[v44], v147);
      sub_100094670(&qword_1001202F8, &type metadata accessor for UUID);
      v60 = v47;
      v125 = sub_1000DBE64();
      v61 = v56[1];
      v62 = v58;
      v35 = v128;
      v61(v62, v59);
      sub_1000080B0(v31, &qword_1001217A0);
      sub_1000080B0(v33, &qword_1001217A0);
      v61(v60, v59);
      sub_1000080B0(v10, &qword_1001217A0);
      if (v125)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_1000080B0(v31, &qword_1001217A0);
    sub_1000080B0(v33, &qword_1001217A0);
    (*(v141 + 1))(v47, v147);
LABEL_13:
    sub_1000080B0(v10, &qword_1001217A8);
LABEL_14:

    v5 = v141;
    v21 = v143;
    a1 = v131;
    goto LABEL_15;
  }

  sub_1000080B0(v31, &qword_1001217A0);
  sub_1000080B0(v33, &qword_1001217A0);
  if (v46(&v10[v44], 1, v147) != 1)
  {
    goto LABEL_13;
  }

  v126 = v46;
  v127 = v38;
  sub_1000080B0(v10, &qword_1001217A0);
LABEL_21:
  sub_100091394(v35);

  v64 = sub_10009275C(v63, &_swiftEmptySetSingleton);
  sub_100092838(v35);

  v149 = sub_10009275C(v65, v64);
  if (qword_10011FB08 != -1)
  {
    swift_once();
  }

  v66 = sub_1000DAFF4();
  sub_100007EBC(v66, qword_100124BE0);
  v67 = v137;

  v68 = sub_1000DAFD4();
  v69 = sub_1000DC4B4();

  if (os_log_type_enabled(v68, v69))
  {
    LODWORD(v146) = v69;
    v70 = swift_slowAlloc();
    v128 = v35;
    v71 = v70;
    v145 = swift_slowAlloc();
    v148 = v145;
    *v71 = 136315650;
    sub_1000945B4();
    v72 = sub_1000DC2B4();
    v74 = v73;

    v75 = sub_10001A58C(v72, v74, &v148);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2080;
    v76 = sub_1000DC2B4();
    v78 = v77;

    v79 = sub_10001A58C(v76, v78, &v148);

    *(v71 + 14) = v79;
    *(v71 + 22) = 2080;
    v80 = [v128 id];
    v81 = v67;
    if (v80)
    {
      v82 = v132;
      v83 = v80;
      sub_1000DA0C4();

      v84 = 0;
      v85 = v141;
    }

    else
    {
      v84 = 1;
      v85 = v141;
      v82 = v132;
    }

    v115 = v147;
    v127(v82, v84, 1, v147);
    v116 = v130;
    sub_100086E70(v82, v130);
    if (v126(v116, 1, v115))
    {
      sub_1000080B0(v116, &qword_1001217A0);
      v117 = 0xE300000000000000;
      v118 = 7104878;
    }

    else
    {
      v119 = v140;
      v120 = v147;
      v85[2](v140, v116, v147);
      sub_1000080B0(v116, &qword_1001217A0);
      v121 = sub_1000DA094();
      v117 = v122;
      (v85[1])(v119, v120);
      v118 = v121;
    }

    v123 = sub_10001A58C(v118, v117, &v148);

    *(v71 + 24) = v123;
    _os_log_impl(&_mh_execute_header, v68, v146, "Tracked %s CoreData changes and %s inspected changes to entry with ID %s", v71, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v149;
}

void sub_100091394(void *a1)
{
  v2 = sub_100007BC0(&qword_100122D70);
  __chkstk_darwin(v2 - 8);
  v168 = &v146 - v3;
  v4 = sub_100007BC0(&qword_100122DB8);
  __chkstk_darwin(v4 - 8);
  v172 = &v146 - v5;
  v6 = sub_100007BC0(&qword_1001203B8);
  __chkstk_darwin(v6 - 8);
  v171 = &v146 - v7;
  v170 = sub_1000DA084();
  v177 = *(v170 - 8);
  v8 = __chkstk_darwin(v170);
  v167 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v146 - v10;
  v12 = sub_1000DA374();
  v176 = *(v12 - 8);
  __chkstk_darwin(v12);
  v178 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000DA0E4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v173 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007BC0(&qword_1001217A8);
  __chkstk_darwin(v17);
  v19 = &v146 - v18;
  v20 = sub_100007BC0(&qword_1001217A0);
  v21 = __chkstk_darwin(v20 - 8);
  v166 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v165 = &v146 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v146 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v146 - v29;
  __chkstk_darwin(v28);
  v32 = &v146 - v31;
  v179 = a1;
  v33 = [a1 id];
  if (v33)
  {
    v34 = v33;
    sub_1000DA0C4();

    v35 = *(v15 + 56);
    v36 = v32;
    v37 = 0;
  }

  else
  {
    v35 = *(v15 + 56);
    v36 = v32;
    v37 = 1;
  }

  v180 = v35;
  v35(v36, v37, 1, v14);
  v175 = *(v181 + 32);
  v38 = [v175 id];
  v182 = v14;
  v169 = v11;
  if (v38)
  {
    v39 = v38;
    sub_1000DA0C4();

    v14 = v182;
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v164 = v15 + 56;
  v180(v30, v40, 1, v14);
  v41 = *(v17 + 48);
  sub_100007F58(v32, v19, &qword_1001217A0);
  v42 = v182;
  sub_100007F58(v30, &v19[v41], &qword_1001217A0);
  v43 = *(v15 + 48);
  if (v43(v19, 1, v42) != 1)
  {
    sub_100007F58(v19, v27, &qword_1001217A0);
    if (v43(&v19[v41], 1, v42) != 1)
    {
      v174 = v43;
      v161 = v15 + 48;
      v45 = &v19[v41];
      v46 = v173;
      (*(v15 + 32))(v173, v45, v42);
      sub_100094670(&qword_1001202F8, &type metadata accessor for UUID);
      LODWORD(v163) = sub_1000DBE64();
      v162 = v12;
      v47 = *(v15 + 8);
      v47(v46, v42);
      sub_1000080B0(v30, &qword_1001217A0);
      sub_1000080B0(v32, &qword_1001217A0);
      v47(v27, v42);
      v12 = v162;
      v44 = v179;
      sub_1000080B0(v19, &qword_1001217A0);
      if ((v163 & 1) == 0)
      {
        return;
      }

      goto LABEL_15;
    }

    sub_1000080B0(v30, &qword_1001217A0);
    sub_1000080B0(v32, &qword_1001217A0);
    (*(v15 + 8))(v27, v42);
LABEL_12:
    sub_1000080B0(v19, &qword_1001217A8);
    return;
  }

  v174 = v43;
  sub_1000080B0(v30, &qword_1001217A0);
  sub_1000080B0(v32, &qword_1001217A0);
  if (v174(&v19[v41], 1, v182) != 1)
  {
    goto LABEL_12;
  }

  v161 = v15 + 48;
  sub_1000080B0(v19, &qword_1001217A0);
  v44 = v179;
LABEL_15:
  v48 = [v44 changedValuesForCurrentEvent];
  v49 = sub_1000DBD74();

  sub_10008DE64(v49);
  v51 = v50;
  v149 = 0;

  v52 = sub_100094C40(v51);

  v54 = 0;
  v55 = v52 + 56;
  v56 = 1 << *(v52 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v52 + 56);
  v185 = &_swiftEmptySetSingleton;
  v59 = (v56 + 63) >> 6;
  v163 = (v176 + 13);
  v160 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_prompts;
  ++v176;
  v151 = (v15 + 16);
  v159 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_dateSource;
  v150 = (v15 + 8);
  v156 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_date;
  v158 = v184;
  v155 = v177 + 4;
  v60 = enum case for JournalFeatureFlags.enhancedSync(_:);
  v157 = (v177 + 7);
  v154 = (v177 + 6);
  v177 += 5;
  *&v53 = 136315138;
  v152 = v53;
  while (v58)
  {
LABEL_23:
    v62 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v63 = *(*(v52 + 48) + (v62 | (v54 << 6)));
    if (v63 > 6)
    {
      if (v63 > 9)
      {
        if ((v63 - 11) >= 2)
        {
          v66 = v178;
          (*v163)(v178, v60, v12);
          v67 = sub_1000DA364();
          (*v176)(v66, v12);
          if (v67)
          {
            v68 = v179;
            v69 = [v179 mergeableAttributes];
            if (v69)
            {
              v70 = v69;
              v71 = v168;
              sub_1000DACB4();

              v72 = sub_1000DA934();
              (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
              sub_1000080B0(v71, &qword_100122D70);
              v73 = sub_10009321C(v68);
              if (v73)
              {
                v185 = sub_10009275C(v73, v185);
              }
            }

            else
            {
              v153 = v60;
              v127 = sub_1000DA934();
              v128 = v168;
              (*(*(v127 - 8) + 56))(v168, 1, 1, v127);
              sub_1000080B0(v128, &qword_100122D70);
              if (qword_10011FB08 != -1)
              {
                swift_once();
              }

              v129 = sub_1000DAFF4();
              sub_100007EBC(v129, qword_100124BE0);
              v130 = v179;
              v131 = sub_1000DAFD4();
              v132 = sub_1000DC4C4();

              if (os_log_type_enabled(v131, v132))
              {
                v133 = swift_slowAlloc();
                v147 = swift_slowAlloc();
                aBlock[0] = v147;
                *v133 = v152;
                v134 = [v130 id];
                LODWORD(v162) = v132;
                v148 = v133;
                if (v134)
                {
                  v135 = v166;
                  v136 = v134;
                  sub_1000DA0C4();

                  v137 = 0;
                }

                else
                {
                  v137 = 1;
                  v135 = v166;
                }

                v138 = v182;
                v180(v135, v137, 1, v182);
                v139 = v165;
                sub_100086E70(v135, v165);
                if (v174(v139, 1, v138))
                {
                  sub_1000080B0(v139, &qword_1001217A0);
                  v140 = 0xE700000000000000;
                  v141 = 0x6E776F6E6B6E55;
                }

                else
                {
                  v142 = v173;
                  (*v151)(v173, v139, v138);
                  sub_1000080B0(v139, &qword_1001217A0);
                  v146 = sub_1000DA094();
                  v140 = v143;
                  (*v150)(v142, v138);
                  v141 = v146;
                }

                v144 = sub_10001A58C(v141, v140, aBlock);

                v145 = v148;
                *(v148 + 1) = v144;
                _os_log_impl(&_mh_execute_header, v131, v162, "mergeableAttributes changed to nil value for entry %s. This implies an incorrect assignment rather than a merge operation somewhere.", v145, 0xCu);
                sub_100007FC0(v147);
              }

LABEL_56:
              v60 = v153;
            }
          }
        }
      }

      else if (v63 == 7)
      {
        v94 = [v175 dateSource];
        if (v94)
        {
          v162 = v12;
          v95 = v52;
          v96 = v60;
          v97 = v94;
          sub_1000DBF44();

          v60 = v96;
          v52 = v95;
          v12 = v162;
        }

        v115 = v172;
        sub_1000DA4E4();
        v116 = v181;
        v117 = v159;
        swift_beginAccess();
        sub_1000946B8(v115, v116 + v117);
        swift_endAccess();
        sub_10000AAC0(aBlock, 3);
      }

      else
      {
        if (v63 != 8)
        {
          v153 = v60;
          v98 = [v175 prompt];
          v99 = v12;
          if (v98)
          {
            v100 = v98;
            v101 = sub_1000D9DF4();
            v103 = v102;

            v104 = sub_1000D9DC4();
            sub_100010514(v101, v103);
          }

          else
          {
            v104 = 0;
          }

          v118 = v181;
          v119 = *(v181 + v160);
          *(v181 + v160) = v104;
          v120 = v104;

          v121 = *(v118 + 24);
          v122 = swift_allocObject();
          swift_weakInit();
          v184[2] = sub_100094CEC;
          v184[3] = v122;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v184[0] = sub_100034608;
          v184[1] = &unk_1001104F8;
          v123 = _Block_copy(aBlock);

          [v121 performBlock:v123];
          _Block_release(v123);

          sub_10000AAC0(aBlock, 6);
          v12 = v99;
          goto LABEL_56;
        }

        sub_10000AAC0(aBlock, 7);
      }
    }

    else if (v63 > 2)
    {
      if ((v63 - 5) >= 2)
      {
        if (v63 == 3)
        {
          v74 = v178;
          (*v163)(v178, v60, v12);
          v75 = sub_1000DA364();
          (*v176)(v74, v12);
          if ((v75 & 1) == 0)
          {
            v76 = [v179 title];
            if (v76)
            {
              v77 = v76;
              v78 = sub_1000D9DF4();
              v79 = v60;
              v81 = v80;

              v82 = sub_1000D9DC4();
              v83 = v81;
              v60 = v79;
              sub_100010514(v78, v83);
            }

            else
            {
              v82 = 0;
            }

            sub_100050C98(v82);

            sub_10000AAC0(aBlock, 2);
          }
        }

        else
        {
          v162 = v12;
          v105 = [v175 entryDate];
          if (v105)
          {
            v106 = v167;
            v107 = v105;
            sub_1000DA044();

            v153 = v60;
            v108 = *v155;
            v109 = v171;
            v110 = v106;
            v111 = v170;
            (*v155)(v171, v110, v170);
            (*v157)(v109, 0, 1, v111);
            v112 = v169;
            v113 = v109;
            v114 = v111;
            v108(v169, v113, v111);
            v60 = v153;
          }

          else
          {
            v124 = v171;
            v114 = v170;
            (*v157)(v171, 1, 1, v170);
            v112 = v169;
            sub_1000DA074();
            if ((*v154)(v124, 1, v114) != 1)
            {
              sub_1000080B0(v171, &qword_1001203B8);
            }
          }

          v125 = v181;
          v126 = v156;
          swift_beginAccess();
          (*v177)(v125 + v126, v112, v114);
          swift_endAccess();
          sub_10000AAC0(aBlock, 3);
          v12 = v162;
        }
      }

      else
      {
        sub_10000AAC0(aBlock, 8);
      }
    }

    else if (v63)
    {
      if (v63 == 1)
      {
        v64 = v178;
        (*v163)(v178, v60, v12);
        v65 = sub_1000DA364();
        (*v176)(v64, v12);
        if ((v65 & 1) == 0)
        {
          sub_10000AAC0(aBlock, 1);
        }
      }
    }

    else
    {
      v84 = v178;
      (*v163)(v178, v60, v12);
      v85 = sub_1000DA364();
      (*v176)(v84, v12);
      if ((v85 & 1) == 0)
      {
        v86 = [v179 text];
        if (v86)
        {
          v87 = v86;
          v88 = sub_1000D9DF4();
          v89 = v60;
          v91 = v90;

          v92 = sub_1000D9DC4();
          v93 = v91;
          v60 = v89;
          sub_100010514(v88, v93);
        }

        else
        {
          v92 = 0;
        }

        sub_100051430(v92);

        sub_10000AAC0(aBlock, 0);
      }
    }
  }

  while (1)
  {
    v61 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v61 >= v59)
    {

      return;
    }

    v58 = *(v55 + 8 * v61);
    ++v54;
    if (v58)
    {
      v54 = v61;
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_10009275C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_10000AAC0(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
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

      return v12;
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

void *sub_100092838(void *a1)
{
  v3 = sub_1000DA374();
  v76 = *(v3 - 8);
  v77 = v3;
  __chkstk_darwin(v3);
  v75 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_100122DB8);
  __chkstk_darwin(v5 - 8);
  v68 = &v67 - v6;
  v74 = sub_1000DA084();
  v72 = *(v74 - 8);
  v7 = __chkstk_darwin(v74);
  v70 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v69 = &v67 - v10;
  __chkstk_darwin(v9);
  v73 = &v67 - v11;
  v12 = sub_1000DA0E4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v71 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007BC0(&qword_1001217A8);
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  v18 = sub_100007BC0(&qword_1001217A0);
  v19 = __chkstk_darwin(v18 - 8);
  v80 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v67 - v22;
  __chkstk_darwin(v21);
  v25 = &v67 - v24;
  v78 = a1;
  v26 = [a1 id];
  if (v26)
  {
    v27 = v26;
    sub_1000DA0C4();

    v28 = *(v13 + 56);
    v28(v25, 0, 1, v12);
  }

  else
  {
    v28 = *(v13 + 56);
    v28(v25, 1, 1, v12);
  }

  v67 = *(v1 + 32);
  v29 = [v67 id];
  v79 = v1;
  if (v29)
  {
    v30 = v29;
    sub_1000DA0C4();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v28(v23, v31, 1, v12);
  v32 = *(v15 + 48);
  sub_100007F58(v25, v17, &qword_1001217A0);
  sub_100007F58(v23, &v17[v32], &qword_1001217A0);
  v33 = *(v13 + 48);
  if (v33(v17, 1, v12) == 1)
  {
    sub_1000080B0(v23, &qword_1001217A0);
    sub_1000080B0(v25, &qword_1001217A0);
    if (v33(&v17[v32], 1, v12) == 1)
    {
      sub_1000080B0(v17, &qword_1001217A0);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v34 = v80;
  sub_100007F58(v17, v80, &qword_1001217A0);
  if (v33(&v17[v32], 1, v12) == 1)
  {
    sub_1000080B0(v23, &qword_1001217A0);
    sub_1000080B0(v25, &qword_1001217A0);
    (*(v13 + 8))(v34, v12);
LABEL_12:
    sub_1000080B0(v17, &qword_1001217A8);
    return &_swiftEmptySetSingleton;
  }

  v36 = v71;
  (*(v13 + 32))(v71, &v17[v32], v12);
  sub_100094670(&qword_1001202F8, &type metadata accessor for UUID);
  v37 = v34;
  v38 = sub_1000DBE64();
  v39 = *(v13 + 8);
  v39(v36, v12);
  sub_1000080B0(v23, &qword_1001217A0);
  sub_1000080B0(v25, &qword_1001217A0);
  v39(v37, v12);
  sub_1000080B0(v17, &qword_1001217A0);
  if ((v38 & 1) == 0)
  {
    return &_swiftEmptySetSingleton;
  }

LABEL_15:
  v83 = &_swiftEmptySetSingleton;
  v40 = v78;
  if (([v78 isRemovedFromCloud] & 1) != 0 || objc_msgSend(v40, "isFullyRemoved"))
  {
    sub_10000AAC0(v82, 9);
  }

  v41 = [v40 entryDate];
  v42 = v79;
  v44 = v73;
  v43 = v74;
  v45 = v72;
  if (v41)
  {
    v46 = v69;
    v47 = v41;
    sub_1000DA044();

    (*(v45 + 32))(v44, v46, v43);
    v48 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_date;
    swift_beginAccess();
    v49 = v70;
    (*(v45 + 16))(v70, v42 + v48, v43);
    sub_100094670(&qword_100120AC0, &type metadata accessor for Date);
    LOBYTE(v47) = sub_1000DBE64();
    v50 = *(v45 + 8);
    v50(v49, v43);
    if ((v47 & 1) == 0)
    {
      swift_beginAccess();
      (*(v45 + 24))(v42 + v48, v44, v43);
      swift_endAccess();
      v51 = [v67 dateSource];
      if (v51)
      {
        v52 = v51;
        sub_1000DBF44();
      }

      v53 = v68;
      sub_1000DA4E4();
      v54 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_dateSource;
      swift_beginAccess();
      sub_1000946B8(v53, v42 + v54);
      swift_endAccess();
      sub_10000AAC0(v81, 3);
    }

    v50(v44, v43);
  }

  v55 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_bookmarked;
  v56 = *(v42 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_bookmarked);
  if (v56 != [v40 flagged])
  {
    v57 = [v40 flagged];
    v58 = *(v42 + v55);
    *(v42 + v55) = v57;
    sub_100051B18(v58);
    sub_10000AAC0(v81, 7);
  }

  v60 = v75;
  v59 = v76;
  v61 = v77;
  (*(v76 + 104))(v75, enum case for JournalFeatureFlags.enhancedSync(_:), v77);
  v62 = sub_1000DA364();
  (*(v59 + 8))(v60, v61);
  if ((v62 & 1) == 0)
  {
    v63 = sub_1000937A8();
    v64 = sub_100093BA4(v63);

    if (v64)
    {
      sub_10000AAC0(v81, 0);
    }
  }

  v65 = sub_10009321C(v40);
  v35 = v83;
  if (v65)
  {
    return sub_10009275C(v65, v83);
  }

  return v35;
}

id sub_10009321C(void *a1)
{
  v2 = v1;
  v4 = sub_1000DACA4();
  v44 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v39 - v7;
  v8 = sub_100007BC0(&qword_100122D70);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = sub_1000DA934();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v41 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v39 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v39 - v22;
  __chkstk_darwin(v21);
  v25 = &v39 - v24;
  result = [a1 mergeableAttributes];
  if (result)
  {
    v27 = result;
    v39 = v4;
    sub_1000DACB4();

    v28 = v2;
    v29 = *(v15 + 32);
    v29(v25, v23, v14);
    v30 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    v45 = v28;
    sub_100007F58(v28 + v30, v13, &qword_100122D70);
    v40 = *(v15 + 48);
    if (v40(v13, 1, v14) == 1)
    {
      sub_1000080B0(v13, &qword_100122D70);
    }

    else
    {
      v29(v20, v13, v14);
      sub_100094670(&qword_100124C20, &type metadata accessor for MergeableEntryAttributes);
      v31 = sub_1000DBB44();
      v32 = *(v15 + 8);
      v32(v20, v14);
      if ((v31 & 1) == 0)
      {
        v32(v25, v14);
        return 0;
      }
    }

    v47 = &_swiftEmptySetSingleton;
    v33 = v45;
    if (sub_100054CDC(v25))
    {
      sub_10000AAC0(&v46, 11);
    }

    if (sub_100055A14(v25))
    {
      sub_10000AAC0(&v46, 12);
    }

    sub_100007F58(v33 + v30, v11, &qword_100122D70);
    if (v40(v11, 1, v14))
    {
      sub_1000080B0(v11, &qword_100122D70);
    }

    else
    {
      v34 = v41;
      (*(v15 + 16))(v41, v11, v14);
      sub_1000080B0(v11, &qword_100122D70);
      v35 = v42;
      sub_1000DA8B4();
      (*(v15 + 8))(v34, v14);
      v36 = v43;
      sub_1000DA8B4();
      sub_100094670(&qword_100124C18, &type metadata accessor for MergeableEntryAssetsPlacement);
      v37 = v39;
      LOBYTE(v34) = sub_1000DBB44();
      v38 = *(v44 + 8);
      v38(v36, v37);
      v38(v35, v37);
      if (v34)
      {
        sub_10000AAC0(&v46, 1);
      }
    }

    sub_100052E5C(v25);
    (*(v15 + 8))(v25, v14);
    return v47;
  }

  return result;
}

id sub_1000937A8()
{
  v1 = v0;
  v2 = sub_100007BC0(&qword_100122D90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-1] - v4;
  v6 = sub_100007BC0(&qword_100124C28);
  __chkstk_darwin(v6 - 8);
  v8 = &v27[-1] - v7;
  v9 = sub_1000DA374();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for JournalFeatureFlags.enhancedSync(_:), v9);
  v13 = sub_1000DA364();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    sub_1000DA3D4();
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_1000080B0(v8, &qword_100124C28);
      return 0;
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_1000080B0(v8, &qword_100124C28);
      v20 = [objc_allocWithZone(UITraitCollection) init];
      v21 = type metadata accessor for CustomAttributeProviderConcrete();
      v22 = sub_100094670(&qword_10011FC58, type metadata accessor for CustomAttributeProviderConcrete);
      v27[3] = v21;
      v27[4] = v22;
      v23 = sub_100055EEC(v27);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      sub_1000DAFE4();
      *v23 = v24;
      sub_100094670(&qword_100122DA8, &type metadata accessor for MergeableTextAttributeScope);
      v25 = sub_1000DBB04();

      (*(v3 + 8))(v5, v2);
      sub_100007FC0(v27);
      return v25;
    }
  }

  else
  {
    result = [v1 text];
    if (result)
    {
      v15 = result;
      v16 = sub_1000D9DF4();
      v18 = v17;

      v19 = sub_1000D9DC4();
      sub_100010514(v16, v18);
      return v19;
    }
  }

  return result;
}

uint64_t sub_100093BA4(void *a1)
{
  v3 = [objc_allocWithZone(UITraitCollection) init];
  type metadata accessor for CustomAttributeProviderConcrete();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_1000DAFE4();
  v5 = sub_100094728(v3, v4, v1);

  v6 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
  v7 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
  v8 = &selRef_fontWithDescriptor_size_;
  v9 = &selRef_fontWithDescriptor_size_;
  v10 = &unk_1000E0000;
  if (!v5)
  {
    if (!a1)
    {
      v40 = 0;
      return v40 & 1;
    }

    v23 = 0;
    goto LABEL_10;
  }

  v11 = v5;
  v12 = [v11 string];
  if (!v12)
  {
    sub_1000DBF44();
    v12 = sub_1000DBF04();
  }

  v13 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v12];

  v14 = [objc_opt_self() labelColor];
  v15 = [objc_opt_self() systemFontOfSize:0.0];
  result = [v11 length];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v17 = result;
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = v14;
  v18[4] = 0;
  v18[5] = 0;
  v18[6] = v13;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100094FCC;
  *(v19 + 24) = v18;
  v45 = sub_100094FC8;
  v46 = v19;
  v41 = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_1000944E4;
  v44 = &unk_1001104A8;
  v20 = _Block_copy(&v41);
  v21 = v15;
  v22 = v14;
  v23 = v13;

  [v11 enumerateAttributesInRange:0 options:v17 usingBlock:{0, v20}];

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!a1)
  {

    goto LABEL_18;
  }

  v10 = &unk_1000E0000;
  v9 = &selRef_fontWithDescriptor_size_;
  v8 = &selRef_fontWithDescriptor_size_;
  v7 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
  v6 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
LABEL_10:
  v25 = a1;
  v26 = [v25 *&v6[398]];
  if (!v26)
  {
    sub_1000DBF44();
    v26 = sub_1000DBF04();
  }

  v27 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v26];

  v28 = [objc_opt_self() *&v7[293]];
  v29 = [objc_opt_self() v8[61]];
  result = [v25 v9[62]];
  if (result < 0)
  {
    goto LABEL_23;
  }

  v30 = result;
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v28;
  v31[4] = 0;
  v31[5] = 0;
  v31[6] = v27;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_100094B40;
  *(v32 + 24) = v31;
  v45 = sub_100094B54;
  v46 = v32;
  v41 = _NSConcreteStackBlock;
  v42 = v10[141];
  v43 = sub_1000944E4;
  v44 = &unk_100110430;
  v33 = _Block_copy(&v41);
  v34 = v29;
  v35 = v28;
  v36 = v27;

  [v25 enumerateAttributesInRange:0 options:v30 usingBlock:{0, v33}];

  _Block_release(v33);
  v37 = swift_isEscapingClosureAtFileLocation();

  if ((v37 & 1) == 0)
  {
    if (v23)
    {
      sub_100008068(0, &qword_100122DA0);
      v38 = v23;
      v39 = sub_1000DC764();

      v40 = v39 ^ 1;
      return v40 & 1;
    }

LABEL_18:
    v40 = 1;
    return v40 & 1;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_10009413C(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x64724F7465737361;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x7461447972746E65;
      break;
    case 5:
      result = 0x6449656C646E7562;
      break;
    case 6:
      result = 0x6144656C646E7562;
      break;
    case 7:
      result = 0x72756F5365746164;
      break;
    case 8:
      result = 0x64656767616C66;
      break;
    case 9:
      result = 0x74706D6F7270;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}