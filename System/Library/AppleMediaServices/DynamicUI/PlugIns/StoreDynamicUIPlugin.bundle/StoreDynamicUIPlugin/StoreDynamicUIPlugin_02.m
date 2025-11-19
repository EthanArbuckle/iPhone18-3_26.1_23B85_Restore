uint64_t sub_36B28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_36B74(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for BannerHeaderComponentLayout.Metrics.Layout.Horizontal(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x36C74);
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

__n128 sub_36CA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_36CBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 42))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_36CFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_36D60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 73))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_36DA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

id sub_36E48()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_13BB54();

  v2 = [v0 initWithPath:v1];

  return v2;
}

id sub_36EBC()
{
  sub_36F08();
  result = sub_36E48();
  qword_1B2960 = result;
  return result;
}

unint64_t sub_36F08()
{
  result = qword_19B668;
  if (!qword_19B668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19B668);
  }

  return result;
}

uint64_t sub_36F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 264);
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

uint64_t sub_37008(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 264) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 52);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for BundleDetail()
{
  result = qword_19B6C8;
  if (!qword_19B6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_370E0()
{
  sub_372AC();
  if (v0 <= 0x3F)
  {
    sub_248F4(319, &qword_19B6E0, &qword_19B6E8);
    if (v1 <= 0x3F)
    {
      sub_37314();
      if (v2 <= 0x3F)
      {
        sub_37364(319, &qword_19B6F8, &type metadata accessor for DynamicArtwork);
        if (v3 <= 0x3F)
        {
          sub_248F4(319, &qword_19B700, &unk_19B708);
          if (v4 <= 0x3F)
          {
            sub_248F4(319, &qword_19AE40, &qword_19AE48);
            if (v5 <= 0x3F)
            {
              sub_18A28();
              if (v6 <= 0x3F)
              {
                sub_37364(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
                if (v7 <= 0x3F)
                {
                  sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
                  if (v8 <= 0x3F)
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
  }
}

void sub_372AC()
{
  if (!qword_19B6D8)
  {
    sub_CACC(255, &qword_19B3D0);
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19B6D8);
    }
  }
}

void sub_37314()
{
  if (!qword_19B6F0)
  {
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19B6F0);
    }
  }
}

void sub_37364(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_373B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_373E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_37424(uint64_t result, int a2, int a3)
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
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_374A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_374E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_37530(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

__n128 sub_37568(uint64_t a1, uint64_t a2)
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

uint64_t sub_37584(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_375C4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_37674()
{
  sub_A04C();
  v2 = v1;
  v4 = v3;
  v163 = v5;
  sub_4948(&qword_19A420);
  sub_171D0();
  __chkstk_darwin(v6);
  v165 = &v162 - v7;
  v164 = sub_4948(&qword_19A350);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v8);
  v166 = &v162 - v9;
  sub_13B584();
  sub_9E94();
  v180 = v11;
  v181 = v10;
  __chkstk_darwin(v10);
  v13 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v168 = &v162 - v15;
  __chkstk_darwin(v16);
  v167 = &v162 - v17;
  __chkstk_darwin(v18);
  v173 = &v162 - v19;
  __chkstk_darwin(v20);
  v21 = type metadata accessor for BundleDetail();
  sub_9F94();
  __chkstk_darwin(v22);
  sub_9EC0();
  v183 = v24 - v23;
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v176 = swift_initStackObject();
  v184[2] = v2;
  v197 = v4;
  sub_9DB8(0x756F72676B636162, 0xEF726F6C6F43646ELL, v21, sub_30AC0, v184, v25, v26, v27);
  v169 = v13;
  if (v0)
  {

    v28 = [objc_opt_self() ams_clear];
  }

  v172 = v28;
  *v183 = v28;
  __chkstk_darwin(v28);
  sub_3AE1C();
  *(v29 - 16) = v2;
  sub_3AE98();
  sub_9DB8(v30, v31, v32, v33, v34, v35, v36, v37);
  v182 = v2;
  v171 = v38;
  *(v183 + 8) = v38;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_78E8();
  if (*(&v187 + 1) == 1)
  {
    sub_184DC(&v186, &qword_19B768);
LABEL_6:
    sub_13BAB4();
    sub_3AE04();
    sub_3AA6C(v39, v40);
    sub_9F18();
    *v41 = 0x7265746F6F66;
    v41[1] = 0xE600000000000000;
    v41[2] = v21;
    sub_9EF8();
    (*(v42 + 104))();
    swift_willThrow();
    v43 = sub_3AEBC();
    v44(v43);

    v46 = 0;
    v47 = 0;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    goto LABEL_8;
  }

  v57 = sub_3AEBC();
  v45 = v58(v57);
  v48 = v186;
  v49 = v187;
  v50 = v188;
  v51 = v189;
  v52 = v190;
  v53 = v191;
  v54 = v192;
  v55 = v193;
  v56 = v194;
  v46 = v195;
  v47 = v196;
LABEL_8:
  v59 = v183;
  *(v183 + 16) = v48;
  *(v59 + 32) = v49;
  v60 = v59 + 16;
  *(v60 + 32) = v50;
  *(v60 + 48) = v51;
  *(v60 + 64) = v52;
  *(v60 + 80) = v53;
  *(v60 + 96) = v54;
  *(v60 + 112) = v55;
  *(v60 + 128) = v56;
  *(v60 + 144) = v46;
  *(v60 + 152) = v47;
  __chkstk_darwin(v45);
  sub_3AE1C();
  v61 = v182;
  *(v62 - 16) = v182;
  sub_3AE98();
  sub_9DD0(v63, v64, v65, v66, v67, v68, v69, v70);
  v178 = v71;
  __chkstk_darwin(v71);
  *(&v162 - 2) = v61;
  sub_3AE98();
  sub_9DD0(v72, v73, v74, v75, v76, v77, v78, v79);
  v81 = v80;
  v82 = v178;
  v174 = v80;
  if (v178)
  {
    sub_139C94();
    v83 = swift_allocObject();
    *(v83 + 16) = v81;
    *(v83 + 24) = v82;
  }

  else
  {
    v83 = 0;
  }

  v170 = v83;
  *(v183 + 176) = v83;
  __chkstk_darwin(v80);
  *(&v162 - 2) = v182;

  sub_9DD0(0x777472416E6F6369, 0xEB000000006B726FLL, v21, sub_2B51C, (&v162 - 4), v84, v85, v86);
  v177 = v87;
  __chkstk_darwin(v87);
  sub_3AE1C();
  *(v88 - 16) = v182;
  sub_3AE98();
  sub_9DD0(v89, v90, v91, v92, v93, v94, v95, v96);
  v98 = v97;
  v99 = v177;
  if (v177)
  {
    sub_139C94();
    v100 = swift_allocObject();
    *(v100 + 16) = v98;
    *(v100 + 24) = v99;
  }

  else
  {
    v100 = 0;
  }

  v101 = v173;
  *(v183 + 184) = v100;

  v102 = sub_BB310();
  v173 = 0;
  *&v186 = v102;
  *(&v186 + 1) = v103;
  sub_13BFB4();
  sub_13B594();
  v104 = sub_13B564();
  v162 = v100;
  if (v104)
  {
    goto LABEL_17;
  }

  v105 = v165;
  sub_7738();
  if (sub_52E0(v105, 1, v164) == 1)
  {
    sub_184DC(v105, &qword_19A420);
LABEL_17:
    sub_13BAB4();
    sub_3AE04();
    sub_3AA6C(v106, v107);
    sub_9F18();
    *v108 = 0xD000000000000011;
    v108[1] = 0x800000000014E730;
    v108[2] = v21;
    sub_9EF8();
    (*(v109 + 104))();
    swift_willThrow();
    sub_3AE40();
    v179(v101);

    v110 = sub_13B7A4();
    v111 = v166;
    sub_53A8(v166, 1, 1, v110);
    v112 = 0;
    goto LABEL_19;
  }

  v113 = sub_3AE2C();
  v114(v113);
  v115 = v105;
  v111 = v166;
  sub_92E4(v115, v166);
  v112 = v173;
LABEL_19:
  sub_92E4(v111, v183 + *(v21 + 52));
  v116 = v167;
  sub_3AF38();
  if (sub_13B564())
  {
LABEL_22:
    sub_13BAB4();
    sub_3AE04();
    sub_3AA6C(v117, v118);
    v112 = v116;
    v119 = sub_9F18();
    sub_3AE68(v119, v120);
    sub_9EF8();
    (*(v121 + 104))();
    swift_willThrow();
    sub_3AE40();
    v179(v112);

    sub_3AEF0();
    goto LABEL_23;
  }

  sub_3AE88();
  sub_139BC4();
  if (v112)
  {

    sub_3AE78();
    sub_184DC(v185, &unk_19E320);
    goto LABEL_22;
  }

  v154 = sub_3AE2C();
  v155(v154);
  v122 = sub_9414(v185, &v186);
LABEL_23:
  v123 = v183 + *(v21 + 56);
  v124 = v187;
  *v123 = v186;
  *(v123 + 16) = v124;
  *(v123 + 32) = v188;
  __chkstk_darwin(v122);
  sub_3AE1C();
  *(v125 - 16) = v182;
  sub_3AE98();
  sub_9DB8(v126, v127, v128, v129, v130, v131, v132, v133);
  if (v112)
  {

    v134 = 0;
    v112 = 0;
  }

  *(v183 + 192) = v134;
  v135 = v168;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_3AE04();
    sub_3AA6C(v136, v137);
    v112 = v135;
    v138 = sub_9F18();
    sub_3AE68(v138, v139);
    sub_9EF8();
    (*(v140 + 104))();
    swift_willThrow();
    sub_3AE40();
    v179(v112);

    sub_3AEF0();
  }

  else
  {
    sub_3AE88();
    sub_139DB4();
    v156 = sub_3AE2C();
    v157(v156);
    sub_9414(v185, &v186);
  }

  v141 = v187;
  v142 = v183;
  *(v183 + 200) = v186;
  *(v142 + 216) = v141;
  *(v142 + 232) = v188;
  v143 = v169;
  sub_3AF38();
  if ((sub_13B564() & 1) == 0)
  {
    sub_3AE88();
    sub_139DB4();
    if (!v112)
    {

      v158 = v181;
      v159 = v179;
      (v179)(v197, v181);
      v159(v143, v158);
      sub_9414(v185, &v186);
      v160 = v183;
      sub_9414(&v186, v183 + 240);
      sub_3AAFC(v160, v163);
      sub_13B5A4();
      sub_5224();
      (*(v161 + 8))(v182);
      sub_3AB60(v160);
      goto LABEL_33;
    }

    sub_3AE78();
    sub_184DC(v185, &qword_19E960);
  }

  sub_13BAB4();
  sub_3AE04();
  sub_3AA6C(v144, v145);
  v146 = sub_3AF18();
  sub_3AE68(v146, v147);
  sub_2B538();
  (*(v148 + 104))();
  swift_willThrow();

  v149 = v181;
  v150 = v179;
  (v179)(v197, v181);
  v150(v143, v149);
  v151 = v173;
  sub_13B5A4();
  sub_5224();
  (*(v152 + 8))(v182);

  sub_184DC(v60, &qword_19B770);

  if (!v151)
  {
    v153 = v183;

    sub_184DC(v153 + 200, &qword_19E960);
    sub_9238(v153 + 280);
    sub_184DC(v153 + *(v21 + 52), &qword_19A350);
    sub_184DC(v153 + *(v21 + 56), &unk_19E320);
  }

LABEL_33:
  sub_A064();
}

void sub_385F8()
{
  sub_A04C();
  v77 = v0;
  v82 = v2;
  v4 = v3;
  v76 = v5;
  v6 = sub_13B584();
  sub_9E94();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_3AE4C();
  __chkstk_darwin(v10);
  v12 = &v72 - v11;
  __chkstk_darwin(v13);
  v15 = &v72 - v14;
  sub_139DC4();
  inited = swift_initStackObject();
  v17 = v77;
  v18 = sub_BB310();
  v77 = v17;
  if (!v17)
  {
    v21 = v19;
    v72 = v1;
    v73 = v12;
    v74 = v8;
    v75 = inited;
    if (v18 == 0x65636976726573 && v19 == 0xE700000000000000)
    {

      v24 = v15;
    }

    else
    {
      v23 = v18;
      if ((sub_13C144() & 1) == 0)
      {
        sub_13BAB4();
        sub_3AE04();
        sub_3AA6C(v34, v35);
        sub_3AF18();
        *v36 = v23;
        v36[1] = v21;
        v36[2] = &type metadata for BundleDetail.Footer;
        sub_2B538();
        (*(v37 + 104))();
        swift_willThrow();

        (*(v74 + 8))(v4, v6);
        goto LABEL_19;
      }

      v24 = v15;
    }

    sub_13B594();
    v25 = sub_13B564();
    v26 = v74;
    if ((v25 & 1) == 0)
    {
      v27 = v77;
      sub_139DB4();
      if (!v27)
      {
        v77 = *(v26 + 8);
        (v77)(v24, v6);
        sub_9414(v78, v79);
        sub_13B594();
        if (sub_13B564())
        {
          sub_13BAB4();
          sub_3AE04();
          sub_3AA6C(v38, v39);
          sub_9F18();
          v40 = v77;
          *v41 = 0x656C746974627573;
          v41[1] = 0xE800000000000000;
          v41[2] = &type metadata for BundleDetail.Footer;
          sub_9EF8();
          (*(v42 + 104))();
          swift_willThrow();

          v43 = sub_3AEA4();
          v40(v43);
          (v40)(v73, v6);
        }

        else
        {
          sub_139DB4();
          (v77)(v73, v6);
          v45 = sub_9414(v78, v80);
          __chkstk_darwin(v45);
          sub_3AE1C();
          *(v46 - 16) = v82;
          sub_9DD0(0x6B7261446E6F6369, 0xE800000000000000, &type metadata for BundleDetail.Footer, sub_2B51C, v47, v48, v49, v50);
          v52 = v51;
          __chkstk_darwin(v51);
          sub_3AE1C();
          *(v53 - 16) = v82;
          sub_9DB8(1852793705, 0xE400000000000000, &type metadata for BundleDetail.Footer, sub_3AC1C, v54, v55, v56, v57);
          v59 = v58;
          sub_139C94();
          v60 = swift_allocObject();
          *(v60 + 16) = v52;
          *(v60 + 24) = v59;
          v80[5] = v60;
          sub_13B594();
          if ((sub_13B564() & 1) == 0)
          {
            sub_7A30();
            if (v78[64] != 255)
            {
              v61 = sub_3AEA4();
              v62 = v77;
              v77(v61);
              v63 = sub_3AEB0();
              v62(v63);
              memcpy(v81, v78, sizeof(v81));
              sub_3AC48(v79, v76);
              sub_13B5A4();
              sub_5224();
              (*(v64 + 8))(v82);
              goto LABEL_21;
            }

            sub_184DC(v78, &qword_19B780);
          }

          sub_13BAB4();
          sub_3AE04();
          sub_3AA6C(v65, v66);
          sub_9F18();
          *v67 = 0x6E6F74747562;
          v67[1] = 0xE600000000000000;
          v67[2] = &type metadata for BundleDetail.Footer;
          sub_9EF8();
          (*(v68 + 104))();
          swift_willThrow();

          v69 = sub_3AEA4();
          v70 = v77;
          v77(v69);
          v71 = sub_3AEB0();
          v70(v71);

          sub_3C04(v80);
        }

        sub_3C04(v79);
        goto LABEL_19;
      }

      memset(v78, 0, 40);
      sub_184DC(v78, &qword_19E960);
    }

    sub_13BAB4();
    sub_3AE04();
    sub_3AA6C(v28, v29);
    sub_9F18();
    *v30 = 0x656C746974;
    v30[1] = 0xE500000000000000;
    v30[2] = &type metadata for BundleDetail.Footer;
    sub_9EF8();
    (*(v31 + 104))();
    swift_willThrow();

    v32 = *(v26 + 8);
    v33 = sub_3AEA4();
    v32(v33);
    (v32)(v24, v6);
LABEL_19:
    v20 = v82;
    goto LABEL_20;
  }

  (*(v8 + 8))(v4, v6);

  v20 = v82;
LABEL_20:
  sub_13B5A4();
  sub_5224();
  (*(v44 + 8))(v20);
LABEL_21:
  sub_A064();
}

void sub_38E7C()
{
  sub_A04C();
  v3 = v2;
  v5 = v4;
  v67 = v6;
  v7 = sub_13B584();
  sub_9E94();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_3AE4C();
  __chkstk_darwin(v11);
  v13 = (&v58 - v12);
  v14 = sub_BB310();
  if (!v0)
  {
    v17 = v14;
    v18 = v15;
    v59 = v1;
    v60 = v9;
    v61 = v7;
    v62 = v3;
    if (v14 == 0x647261646E617473 && v15 == 0xE800000000000000)
    {

      v20 = v13;
      goto LABEL_10;
    }

    if (sub_13C144())
    {
      v20 = v13;

LABEL_10:
      sub_BB310();
      sub_CACC(0, &qword_19B790);
      v21 = v67;
      *v67 = sub_395B0();
      v22 = (v67 + 8);
      sub_13B594();
      if ((sub_13B564() & 1) == 0)
      {
        v23 = v62;
        sub_7DF4();
        if (*(&v63 + 1) != 1)
        {
          v43 = sub_3AED0();
          v44 = v61;
          v20(v43, v61);
          v20(v20, v44);
          v45 = v64;
          *v22 = v63;
          *(v67 + 24) = v45;
          *(v67 + 40) = v65;
          *(v67 + 56) = v66;
          sub_13B5A4();
          sub_5224();
          (*(v46 + 8))(v23);
          v32 = 0;
          v21 = v67;
          goto LABEL_25;
        }

        sub_184DC(&v63, &qword_19B798);
        v21 = v67;
      }

      v24 = sub_13BAB4();
      sub_3AE04();
      sub_3AA6C(v25, v26);
      sub_9F18();
      strcpy(v27, "openOverride");
      v27[13] = 0;
      *(v27 + 7) = -5120;
      *(v27 + 2) = &type metadata for BundleDetail.Footer.ServiceButton;
      sub_9EF8();
      (*(v28 + 104))();
      swift_willThrow();
      v29 = sub_3AED0();
      v30 = v61;
      v24(v29, v61);
      v24(v20, v30);

      sub_13B5A4();
      sub_5224();
      (*(v31 + 8))(v62);
      v32 = 0;
      *(v67 + 56) = 0;
      *(v67 + 24) = 0u;
      *(v67 + 40) = 0u;
      *v22 = 0u;
LABEL_25:
      *(v21 + 64) = v32;
      goto LABEL_30;
    }

    if (v17 == 0x6D6F74737563 && v18 == 0xE600000000000000)
    {

      v35 = v61;
      v36 = v59;
    }

    else
    {
      v34 = sub_13C144();
      v35 = v61;
      v36 = v59;
      if ((v34 & 1) == 0)
      {
        sub_13BAB4();
        sub_3AE04();
        sub_3AA6C(v47, v48);
        swift_allocError();
        *v49 = v17;
        v49[1] = v18;
        v49[2] = &type metadata for BundleDetail.Footer.ServiceButton;
        sub_2B538();
        (*(v50 + 104))();
        swift_willThrow();
        (*(v60 + 8))(v5, v35);
        goto LABEL_29;
      }
    }

    sub_13B594();
    if ((sub_13B564() & 1) == 0)
    {
      v37 = v62;
      sub_7CD0();
      if (*(&v63 + 1))
      {
        v38 = sub_3AED0();
        v39 = v61;
        v36(v38, v61);
        v36(v36, v39);
        v40 = v64;
        *v67 = v63;
        *(v67 + 16) = v40;
        *(v67 + 32) = v65;
        *(v67 + 48) = v66;
        sub_13B5A4();
        sub_5224();
        v42 = v37;
        v21 = v67;
        (*(v41 + 8))(v42);
        v32 = 1;
        goto LABEL_25;
      }

      sub_184DC(&v63, &qword_19B788);
      v35 = v61;
    }

    v51 = sub_13BAB4();
    sub_3AE04();
    sub_3AA6C(v52, v53);
    sub_9F18();
    strcpy(v54, "configuration");
    *(v54 + 7) = -4864;
    *(v54 + 2) = &type metadata for BundleDetail.Footer.ServiceButton;
    sub_9EF8();
    (*(v55 + 104))();
    swift_willThrow();
    v56 = sub_3AED0();
    v51(v56, v35);
    v51(v36, v35);
LABEL_29:
    sub_13B5A4();
    sub_5224();
    (*(v57 + 8))(v62);
    goto LABEL_30;
  }

  (*(v9 + 8))(v5, v7);
  sub_13B5A4();
  sub_5224();
  (*(v16 + 8))(v3);
LABEL_30:
  sub_A064();
}

id sub_395B0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_13BB54();

  v2 = [v0 initWithStringValue:v1];

  return v2;
}

void sub_3963C()
{
  sub_A04C();
  v2 = v1;
  v4 = v3;
  v30 = v5;
  v6 = sub_13B584();
  sub_9E94();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_9EC0();
  v12 = v11 - v10;
  sub_139BD4();
  inited = swift_initStackObject();
  v14 = sub_BB310();
  if (v0)
  {
    (*(v8 + 8))(v4, v6);
    sub_13B5A4();
    sub_5224();
    (*(v16 + 8))(v2);
  }

  else
  {
    v28[0] = v14;
    v28[1] = v15;
    sub_13B594();
    if (sub_13B564())
    {
      v17 = sub_13BAB4();
      sub_3AE04();
      sub_3AA6C(v18, v19);
      sub_9F18();
      *v20 = 0x6E6F69746361;
      v20[1] = 0xE600000000000000;
      v20[2] = &type metadata for BundleDetail.Footer.ServiceButton.Configuration;
      sub_9EF8();
      (*(v21 + 104))();
      swift_willThrow();
      v22 = sub_3AEDC();
      v17(v22);
      (v17)(v12, &type metadata for BundleDetail.Footer.ServiceButton.Configuration);
      sub_13B5A4();
      sub_5224();
      (*(v23 + 8))(v2);
    }

    else
    {
      sub_139BC4();
      v24 = sub_3AEDC();
      inited(v24);
      (inited)(v12, &type metadata for BundleDetail.Footer.ServiceButton.Configuration);
      sub_9414(&v26, v27);
      sub_9414(v27, &v29);
      sub_3AC5C(v28, v30);
      sub_13B5A4();
      sub_5224();
      (*(v25 + 8))(v2);
      sub_3AC94(v28);
    }
  }

  sub_A064();
}

uint64_t sub_39988()
{
  sub_3AF04();
  sub_4948(&qword_19B778);
  sub_171D0();
  __chkstk_darwin(v1);
  sub_3AF58();
  v2 = sub_13BAA4();
  v3 = sub_52E0(v0, 1, v2);
  if (v3 == 1)
  {
    sub_184DC(v0, &qword_19B778);
    return 0;
  }

  else
  {
    __chkstk_darwin(v3);
    v4 = sub_13BA94();
    sub_2B538();
    v5 = sub_3AEB0();
    v6(v5);
  }

  return v4;
}

uint64_t sub_39B74()
{
  sub_3AF04();
  sub_4948(&qword_19B778);
  sub_171D0();
  __chkstk_darwin(v2);
  sub_3AF58();
  v3 = sub_13BAA4();
  v4 = sub_52E0(v1, 1, v3);
  if (v4 == 1)
  {
    sub_184DC(v1, &qword_19B778);
    return 0;
  }

  else
  {
    v6 = __chkstk_darwin(v4);
    v0(0, v6);
    v5 = sub_13BA94();
    sub_2B538();
    v7 = sub_3AEB0();
    v8(v7);
  }

  return v5;
}

double sub_39D04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_13B5A4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_13B584();
  v12 = __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  (*(v8 + 16))(v10, a2, v7);
  sub_C261C(v14, v10, a3);
  if (v3)
  {

    *(a3 + 48) = 0;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_39EA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_13B5A4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_13B584();
  v12 = __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  (*(v8 + 16))(v10, a2, v7);
  sub_C1608(v14, v10, a3);
  if (v3)
  {

    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0;
  }

  return result;
}

void sub_3A054(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_13B5A4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_13B584();
  v12 = __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  (*(v8 + 16))(v10, a2, v7);
  sub_C1C78(v14, v10, a3);
  if (v3)
  {

    bzero(a3, 0x98uLL);
  }
}

void sub_3A1F0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_13B5A4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_13B584();
  v12 = __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  (*(v8 + 16))(v10, a2, v7);
  sub_4AEF0(v14, v10, a3);
  if (v3)
  {

    bzero(a3, 0x98uLL);
  }
}

uint64_t sub_3A38C(uint64_t a1, uint64_t a2)
{
  v4 = sub_13B5A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_13B584();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139F94();
  (*(v9 + 16))(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v12 = v14[1];
  result = sub_139F84();
  if (v12)
  {

    return 0;
  }

  return result;
}

double sub_3A534@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_13B5A4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_13B584();
  v12 = __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  (*(v8 + 16))(v10, a2, v7);
  sub_6734C(v14, v10, a3);
  if (v3)
  {

    *(a3 + 80) = 0;
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_3A6D8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_13B5A4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_13B584();
  v12 = __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  (*(v8 + 16))(v10, a2, v7);
  sub_9D8F0(v14, v10, a3);
  if (v3)
  {

    bzero(a3, 0xC0uLL);
  }
}

void sub_3A874()
{
  sub_A04C();
  v24 = v1;
  v23 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_13B5A4();
  sub_9E94();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_9EC0();
  v15 = v14 - v13;
  sub_13B584();
  sub_9E94();
  __chkstk_darwin(v16);
  sub_9EC0();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17, v6);
  (*(v11 + 16))(v15, v4, v9);
  v23(v19, v15);
  if (v0)
  {

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = v24(0);
  sub_53A8(v8, v21, 1, v22);
  sub_A064();
}

uint64_t sub_3AA24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39988();
  *a1 = result;
  return result;
}

uint64_t sub_3AA6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3AAB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39988();
  *a1 = result;
  return result;
}

uint64_t sub_3AAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleDetail();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3AB60(uint64_t a1)
{
  v2 = type metadata accessor for BundleDetail();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3ACFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_3A38C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_3AE68(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v2;
  a2[1] = v4;
  a2[2] = v3;
  return result;
}

double sub_3AE78()
{
  *(v0 + 240) = 0;
  result = 0.0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  return result;
}

uint64_t sub_3AEBC()
{
  result = v1;
  *(v0 + 136) = *(*(v0 + 144) + 8);
  return result;
}

double sub_3AEF0()
{
  *(v0 + 288) = 0;
  result = 0.0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  return result;
}

uint64_t sub_3AF18()
{

  return swift_allocError();
}

uint64_t sub_3AF38()
{

  return sub_13B594();
}

uint64_t sub_3AF58()
{

  return sub_13B544();
}

id sub_3AF78()
{
  v0 = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setLockupSize:ASCLockupViewSizeSmallOfferButton];
  [v0 setShowsPlaceholderContent:1];
  sub_4948(&qword_19B800);
  sub_13ADC4();
  [v0 setDelegate:v2];

  return v0;
}

uint64_t sub_3B034(void *a1)
{
  v2 = v1;
  sub_3BF68(v1, v30);
  if (v32)
  {
    v28[0] = *v30;
    v28[1] = *&v30[16];
    v28[2] = *&v30[32];
    v29 = *&v30[48];
    sub_CACC(0, &qword_19B790);
    v4 = sub_395B0();
    v5 = ASCLockupKindApp;
    v6 = objc_opt_self();
    v7 = v5;
    v8 = sub_13BB54();
    v9 = [v6 textMetadataWithTitle:v8 subtitle:0];

    sub_3AC5C(v28, v26);
    sub_3BFC4(v2, __src);
    v10 = swift_allocObject();
    v11 = v26[1];
    *(v10 + 16) = v26[0];
    *(v10 + 32) = v11;
    *(v10 + 48) = v26[2];
    *(v10 + 64) = v27;
    memcpy((v10 + 72), __src, 0x50uLL);
    v12 = objc_allocWithZone(ASCLocalOffer);
    v13 = sub_3BC5C(v9, sub_3C084, v10);
    v14 = objc_allocWithZone(ASCLockup);
    v15 = sub_EB254(v4, v7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v13);
    [a1 setLockup:v15];

    return sub_3AC94(v28);
  }

  else
  {
    __src[0] = *&v30[8];
    __src[1] = *&v30[24];
    __src[2] = *&v30[40];
    v17 = *v30;
    *&__src[3] = v31;
    sub_4948(&qword_19B800);
    sub_13ADC4();
    sub_3BD20(__src, v28);
    v18 = OBJC_IVAR____TtCV20StoreDynamicUIPlugin38BundleDetailASCLockupViewRepresentable11Coordinator_openOverride;
    swift_beginAccess();
    sub_3C090(v28, v24 + v18);
    swift_endAccess();

    sub_13ADC4();
    v19 = *&v28[0];
    *(*&v28[0] + OBJC_IVAR____TtCV20StoreDynamicUIPlugin38BundleDetailASCLockupViewRepresentable11Coordinator_objectGraph) = *(v1 + 72);

    sub_CACC(0, &qword_19B808);
    v20 = ASCLockupKindApp;
    v21 = ASCLockupContextStandard;
    v22 = v17;
    v23 = sub_3B398(v22, v20, v21, 0xD00000000000001CLL, 0x800000000014F380);
    [a1 setRequest:v23];

    return sub_CC68(__src, &qword_19B788);
  }
}

id sub_3B398(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = sub_13BB54();
  }

  else
  {
    v8 = 0;
  }

  v9 = [swift_getObjCClassFromMetadata() _requestWithID:a1 kind:a2 context:a3 clientID:v8];

  return v9;
}

uint64_t sub_3B44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_139E74();
  __chkstk_darwin(v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13B834();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139E84();
  sub_13B6B4();
  sub_13B9A4();
  v11 = *&v14[0];
  sub_13B9A4();
  (*(v8 + 16))(v6, v10, v7);
  v12 = sub_4948(&unk_19B7E0);
  sub_53A8(v6, 0, 1, v12);
  memset(v14, 0, sizeof(v14));
  v15 = -1;
  (*(*v11 + 216))(a1, v6, a2, v14);

  sub_CC68(v14, &unk_19E330);
  sub_3BDFC(v6);
  return (*(v8 + 8))(v10, v7);
}

id sub_3B674()
{
  v0 = objc_allocWithZone(type metadata accessor for BundleDetailASCLockupViewRepresentable.Coordinator());

  return [v0 init];
}

uint64_t sub_3B6B8(void *a1)
{
  v3 = sub_13BB84();
  v5 = v4;
  if (v3 == sub_13BB84() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_13C144();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  v10 = OBJC_IVAR____TtCV20StoreDynamicUIPlugin38BundleDetailASCLockupViewRepresentable11Coordinator_openOverride;
  swift_beginAccess();
  sub_3BD20(v1 + v10, &v21);
  if (!*(&v21 + 1))
  {
    return sub_CC68(&v21, &qword_19B788);
  }

  v25[0] = v21;
  v25[1] = v22;
  v25[2] = v23;
  v26 = v24;
  v11 = *(v1 + OBJC_IVAR____TtCV20StoreDynamicUIPlugin38BundleDetailASCLockupViewRepresentable11Coordinator_objectGraph);
  if (v11)
  {
    v12 = objc_opt_self();

    v13 = sub_13BB54();
    v14 = [v12 textMetadataWithTitle:v13 subtitle:0];

    sub_3AC5C(v25, &v21);
    v15 = swift_allocObject();
    v16 = v22;
    *(v15 + 16) = v21;
    *(v15 + 32) = v16;
    *(v15 + 48) = v23;
    *(v15 + 64) = v24;
    *(v15 + 72) = v11;
    objc_allocWithZone(ASCLocalOffer);

    v17 = sub_3BC5C(v14, sub_3BDD8, v15);
    v18 = [a1 lockup];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 lockupWithOffer:v17];
    }

    else
    {
      v20 = 0;
    }

    [a1 setLockup:v20];
  }

  return sub_3AC94(v25);
}

id sub_3B9A4()
{
  v1 = &v0[OBJC_IVAR____TtCV20StoreDynamicUIPlugin38BundleDetailASCLockupViewRepresentable11Coordinator_openOverride];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 6) = 0;
  *&v0[OBJC_IVAR____TtCV20StoreDynamicUIPlugin38BundleDetailASCLockupViewRepresentable11Coordinator_objectGraph] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BundleDetailASCLockupViewRepresentable.Coordinator();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_3BA24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleDetailASCLockupViewRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_3BAFC@<X0>(void *a1@<X8>)
{
  result = sub_3B674();
  *a1 = result;
  return result;
}

uint64_t sub_3BB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3C100();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_3BBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3C100();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_3BC34()
{
  sub_3C100();
  sub_13ACB4();
  __break(1u);
}

id sub_3BC5C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v8[4] = a2;
    v8[5] = a3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_E2448;
    v8[3] = &unk_1872B8;
    v5 = _Block_copy(v8);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithMetadata:a1 action:v5];
  _Block_release(v5);

  return v6;
}

uint64_t sub_3BD20(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19B788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3BD90()
{

  sub_3C04(v0 + 32);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_3BDE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3BDFC(uint64_t a1)
{
  v2 = sub_139E74();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3BE60(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_3BEA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_3BF14()
{
  result = qword_19B7F0;
  if (!qword_19B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B7F0);
  }

  return result;
}

uint64_t sub_3BFFC()
{

  sub_3C04(v0 + 32);
  if (*(v0 + 136))
  {
    v1 = v0 + 88;
  }

  else
  {

    if (!*(v0 + 88))
    {
      goto LABEL_6;
    }

    v1 = v0 + 96;
  }

  sub_3C04(v1);
LABEL_6:

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_3C090(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19B788);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_3C100()
{
  result = qword_19B810;
  if (!qword_19B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19B810);
  }

  return result;
}

uint64_t sub_3C154()
{
  swift_getKeyPath();
  sub_3DED8();
  sub_4948(&qword_19BC20);
  sub_3DE58();

  if (!v12[0])
  {
    v0 = [objc_opt_self() ams_componentBackground];
  }

  v1 = sub_13B1E4();
  sub_3C790(v1);

  swift_getKeyPath();
  sub_3DED8();
  sub_3DE58();

  sub_3CAF0(v12);

  swift_getKeyPath();
  sub_3DED8();
  sub_3DE58();

  sub_3CC90(v12[0]);

  swift_getKeyPath();
  sub_3DED8();
  sub_3DE58();

  sub_3CDB8(v12[0]);

  sub_3CEE0(v2);

  swift_getKeyPath();

  sub_3DEB8();

  sub_3D008(v12[0]);

  swift_getKeyPath();

  sub_3DEB8();

  v3 = v13;
  if (v13)
  {
    v4 = v14;
    sub_162F0(v12, v13);
    v5 = (*(v4 + 72))(v3, v4);
    v3 = v6;
    sub_3C04(v12);
  }

  else
  {
    sub_184DC(v12, &qword_19E960);
    v5 = 0;
  }

  sub_3D2E8(v5, v3);

  swift_getKeyPath();

  sub_13B5E4();

  v7 = v13;
  v8 = v14;
  sub_162F0(v12, v13);
  v9 = (*(v8 + 72))(v7, v8);
  sub_3D4D8(v9, v10);

  return sub_3C04(v12);
}

uint64_t sub_3C440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleDetailComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_3C4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleDetailComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_3C510(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_3C564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_3C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_3C65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_3C6D8()
{
  swift_getKeyPath();
  sub_3DE40();
  v3 = sub_3DA84(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();
}

uint64_t sub_3C790(uint64_t a1)
{

  v3 = sub_13B174();

  if (v3)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    swift_getKeyPath();
    sub_3DEAC();
    __chkstk_darwin(v5);
    sub_3DE94();
  }
}

uint64_t sub_3C878(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

double sub_3C8B4()
{
  swift_getKeyPath();
  sub_3DE40();
  v3 = sub_3DA84(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();

  return *(v0 + 24);
}

void sub_3C964(double a1, double a2)
{
  if (*(v2 + 24) == a1 && *(v2 + 32) == a2)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3DE84();
    *(v7 - 32) = v2;
    *(v7 - 24) = a1;
    *(v7 - 16) = a2;
    sub_3DE94();
  }
}

uint64_t sub_3CA0C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_3DE40();
  v5 = sub_3DA84(v3, v4);
  sub_101F0(v5, v6, v7, v8, v9, v10, v11, v12, v14, v1);
  sub_139874();

  swift_beginAccess();
  return sub_3DD4C(v1 + 40, a1);
}

uint64_t sub_3CAF0(uint64_t a1)
{
  swift_getKeyPath();
  sub_3D6C0();

  return sub_184DC(a1, &qword_19B770);
}

uint64_t sub_3CB74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_3DCDC(a2, a1 + 40);
  return swift_endAccess();
}

uint64_t sub_3CBD8()
{
  swift_getKeyPath();
  sub_3DE40();
  v3 = sub_3DA84(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();
}

uint64_t sub_3CCC4(uint64_t a1, uint64_t a2)
{
  *(a1 + 200) = a2;
}

uint64_t sub_3CD00()
{
  swift_getKeyPath();
  sub_3DE40();
  v3 = sub_3DA84(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();
}

uint64_t sub_3CDEC(uint64_t a1, uint64_t a2)
{
  *(a1 + 224) = a2;
}

uint64_t sub_3CE28()
{
  swift_getKeyPath();
  sub_3DE40();
  v3 = sub_3DA84(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();
}

uint64_t sub_3CF14(uint64_t a1, uint64_t a2)
{
  *(a1 + 232) = a2;
}

uint64_t sub_3CF50()
{
  swift_getKeyPath();
  sub_3DE40();
  v3 = sub_3DA84(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();
}

uint64_t sub_3D03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  sub_3D6C0();

  return a4(a1);
}

uint64_t sub_3D0B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 240) = a2;
}

uint64_t sub_3D0EC()
{
  swift_getKeyPath();
  sub_3DE40();
  v3 = sub_3DA84(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_139874();

  return *(v0 + 248);
}

uint64_t sub_3D174(uint64_t result)
{
  if (*(v1 + 248) != result)
  {
    swift_getKeyPath();
    sub_3DEAC();
    __chkstk_darwin(v2);
    sub_3DE94();
  }

  return result;
}

uint64_t sub_3D210()
{
  swift_getKeyPath();
  sub_3DE40();
  v3 = sub_3DA84(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_139874();

  v11 = *(v0 + 256);

  return v11;
}

uint64_t sub_3D2A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_3D2E8(v1, v2);
}

uint64_t sub_3D2E8(uint64_t a1, uint64_t a2)
{
  if (sub_3D768(*(v2 + 256), *(v2 + 264), a1, a2))
  {
    swift_getKeyPath();
    sub_3DEAC();
    __chkstk_darwin(v5);
    sub_3DE84();
    *(v6 - 32) = v2;
    *(v6 - 24) = a1;
    *(v6 - 16) = a2;
    sub_3DE94();
  }

  else
  {
    *(v2 + 256) = a1;
    *(v2 + 264) = a2;
  }
}

uint64_t sub_3D3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 256) = a2;
  *(a1 + 264) = a3;
}

uint64_t sub_3D400()
{
  swift_getKeyPath();
  sub_3DE40();
  v3 = sub_3DA84(v1, v2);
  sub_101F0(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_139874();

  v11 = *(v0 + 272);

  return v11;
}

uint64_t sub_3D498(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_3D4D8(v1, v2);
}

uint64_t sub_3D4D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 272) == a1 && *(v2 + 280) == a2;
  if (v5 || (sub_13C144() & 1) != 0)
  {
    *(v2 + 272) = a1;
    *(v2 + 280) = a2;
  }

  else
  {
    swift_getKeyPath();
    sub_3DEAC();
    __chkstk_darwin(v7);
    sub_3DE84();
    *(v8 - 32) = v2;
    *(v8 - 24) = a1;
    *(v8 - 16) = a2;
    sub_3DE94();
  }
}

uint64_t sub_3D5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 272) = a2;
  *(a1 + 280) = a3;
}

uint64_t sub_3D600()
{
  v1 = [objc_opt_self() ams_componentBackground];
  *(v0 + 16) = sub_13B1E4();
  if (qword_199E98 != -1)
  {
    swift_once();
  }

  *(v0 + 24) = xmmword_1B2970;
  bzero((v0 + 40), 0x99uLL);
  *(v0 + 232) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 248) = 8;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  sub_1398A4();
  *(v0 + 272) = 0;
  *(v0 + 280) = 0xE000000000000000;
  return v0;
}

uint64_t sub_3D6C0()
{
  sub_3DE40();
  sub_3DA84(v0, v1);
  return sub_139864();
}

BOOL sub_3D768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_13C144();
    }
  }

  return (v5 & 1) == 0;
}

uint64_t sub_3D7BC()
{

  sub_184DC(v0 + 40, &qword_19B770);

  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26BundleDetailComponentModel___observationRegistrar;
  sub_1398B4();
  sub_5224();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_3D860()
{
  sub_3D7BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for BundleDetailComponentModel()
{
  result = qword_19B8B0;
  if (!qword_19B8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3D90C()
{
  result = sub_1398B4();
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

uint64_t sub_3DA38()
{
  sub_3DE78();
  result = sub_3D400();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_3DA84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3DACC()
{
  sub_3DE78();
  result = sub_3D210();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_3DB18()
{
  sub_3DE78();
  result = sub_3D0EC();
  *v0 = result;
  return result;
}

uint64_t sub_3DB78()
{
  sub_3DE78();
  result = sub_3CF50();
  *v0 = result;
  return result;
}

uint64_t sub_3DBC0()
{
  sub_3DE78();
  result = sub_3CE28();
  *v0 = result;
  return result;
}

uint64_t sub_3DC08()
{
  sub_3DE78();
  result = sub_3CD00();
  *v0 = result;
  return result;
}

uint64_t sub_3DC50()
{
  sub_3DE78();
  result = sub_3CBD8();
  *v0 = result;
  return result;
}

uint64_t sub_3DCDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19B770);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_3DD4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19B770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_3DDBC()
{
  sub_3DE78();
  *v0 = sub_3C8B4();
  *(v0 + 8) = v1;
}

__n128 sub_3DDE8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

uint64_t sub_3DDF8()
{
  sub_3DE78();
  result = sub_3C6D8();
  *v0 = result;
  return result;
}

uint64_t sub_3DE58()
{

  return sub_13B5E4();
}

uint64_t sub_3DE94()
{

  return sub_3D6C0();
}

uint64_t sub_3DEB8()
{

  return sub_13B5E4();
}

uint64_t sub_3DED8()
{
}

id sub_3DEF0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleDetailComponent_model;
  type metadata accessor for BundleDetailComponentModel();
  swift_allocObject();
  *&v4[v10] = sub_3D600();
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleDetailComponent_rootView;
  v12 = type metadata accessor for BundleDetailComponentView(0);
  sub_53A8(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleDetailComponent_content] = 0;
  v15.receiver = v5;
  v15.super_class = type metadata accessor for BundleDetailComponent();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_3E134();

  return v13;
}

uint64_t sub_3E000()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BundleDetailComponent();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  [v0 frame];
  CGRectGetWidth(v5);
  sub_139D84();
  swift_allocObject();
  v1 = sub_139D74();
  v2 = (*(*v1 + 192))(v1);

  sub_3D174(v2);
}

void sub_3E134()
{
  v1 = v0;
  sub_13AE44();
  sub_9E94();
  v57[0] = v2;
  __chkstk_darwin(v3);
  v4 = type metadata accessor for BundleDetailComponentView(0);
  __chkstk_darwin(v4);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v57 - v8;
  v10 = sub_4948(&qword_19BC78);
  __chkstk_darwin(v10 - 8);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v57 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleDetailComponent_model);
  *&v15[*(v4 + 24)] = swift_getKeyPath();
  sub_4948(&qword_19AC60);
  swift_storeEnumTagMultiPayload();
  *v15 = v16;
  v15[8] = 0;
  sub_53A8(v15, 0, 1, v4);
  v17 = OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleDetailComponent_rootView;
  swift_beginAccess();

  sub_3EDE4(v15, v1 + v17);
  swift_endAccess();
  sub_3EE54(v1 + v17, v12);
  if (sub_52E0(v12, 1, v4) == 1)
  {
    sub_3EEC4(v12);
  }

  else
  {
    sub_3EF2C(v12, v9);
    sub_3EF90(v9, v6);
    v18 = objc_allocWithZone(sub_4948(&qword_19BC80));
    v19 = sub_13AC14();
    v20 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleDetailComponent_content);
    *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleDetailComponent_content) = v19;
    v21 = v19;

    sub_4948(&qword_19BC88);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_140280;
    sub_13AE34();
    v57[1] = v22;
    sub_3EFF4();
    sub_4948(&qword_19BC98);
    sub_3F04C();
    sub_13BF64();
    sub_13AC04();

    sub_3F0B0(v9);
  }

  v23 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin21BundleDetailComponent_content);
  if (v23)
  {
    v24 = v23;
    v25 = sub_3F15C();
    v26 = v24;
    v27 = [v26 view];
    if (v27)
    {
      v28 = v27;
      [v25 addSubview:v27];

      v29 = sub_3F10C();
      if (v29)
      {
        v30 = v29;
        v31 = [objc_opt_self() clearColor];
        [v30 setBackgroundColor:v31];

        v32 = sub_3F10C();
        if (v32)
        {
          v33 = v32;
          [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

          v34 = sub_3F10C();
          if (v34)
          {
            v35 = v34;
            v36 = [v34 topAnchor];

            v37 = sub_3F15C();
            v38 = [v37 topAnchor];

            v39 = sub_3F140();
            sub_3F124();

            v40 = sub_3F10C();
            if (v40)
            {
              v41 = v40;
              v42 = [v40 bottomAnchor];

              v43 = sub_3F15C();
              v44 = [v43 bottomAnchor];

              v45 = sub_3F140();
              sub_3F124();

              v46 = sub_3F10C();
              if (v46)
              {
                v47 = v46;
                v48 = [v46 leftAnchor];

                v49 = sub_3F15C();
                v50 = [v49 leftAnchor];

                v51 = sub_3F140();
                sub_3F124();

                v52 = sub_3F10C();
                if (v52)
                {
                  v53 = [v52 rightAnchor];

                  v54 = sub_3F15C();
                  v55 = [v54 rightAnchor];

                  v56 = [v53 constraintEqualToAnchor:v55];
                  [v56 setActive:1];

                  return;
                }

LABEL_20:
                __break(1u);
                return;
              }

LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }
}

double sub_3E7A0(double a1)
{

  sub_3C8B4();

  return a1;
}

id sub_3E880()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleDetailComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BundleDetailComponent()
{
  result = qword_19BC60;
  if (!qword_19BC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3E968()
{
  sub_3EA10();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3EA10()
{
  if (!qword_19BC70)
  {
    type metadata accessor for BundleDetailComponentView(255);
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19BC70);
    }
  }
}

uint64_t sub_3EA68()
{
  v0 = sub_139A34();
  sub_9E94();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v2 + 104))(v5, enum case for FlagKeys.Solarium(_:), v0), v7 = sub_139A24(), result = (*(v2 + 8))(v5, v0), v8 = 26.0, (v7 & 1) == 0))
  {
    v8 = 10.0;
  }

  qword_1B2968 = *&v8;
  return result;
}

id sub_3EB90(void *a1)
{
  v2 = objc_opt_self();
  [objc_msgSend(a1 "container")];
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = [v2 absoluteDimension:v4 + -48.0];
  v6 = [v2 absoluteDimension:260.0];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  return v7;
}

id sub_3EC84(void *a1)
{
  [objc_msgSend(a1 "container")];
  swift_unknownObjectRelease();
  sub_B84DC();
  v3 = v2;
  v4 = objc_opt_self();
  [objc_msgSend(a1 "container")];
  v6 = v5;
  swift_unknownObjectRelease();
  v7 = [v4 absoluteDimension:v6 - (v3 + v3)];
  v8 = [v4 estimatedDimension:400.0];
  v9 = [objc_opt_self() sizeWithWidthDimension:v7 heightDimension:v8];

  return v9;
}

uint64_t sub_3EDE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19BC78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_3EE54(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19BC78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3EEC4(uint64_t a1)
{
  v2 = sub_4948(&qword_19BC78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3EF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleDetailComponentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3EF90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleDetailComponentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_3EFF4()
{
  result = qword_19BC90;
  if (!qword_19BC90)
  {
    sub_13AE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BC90);
  }

  return result;
}

unint64_t sub_3F04C()
{
  result = qword_19BCA0;
  if (!qword_19BCA0)
  {
    sub_558C(&qword_19BC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BCA0);
  }

  return result;
}

uint64_t sub_3F0B0(uint64_t a1)
{
  v2 = type metadata accessor for BundleDetailComponentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_3F10C()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

id sub_3F124()
{
  v3 = *(v1 + 32);

  return [v0 v3];
}

id sub_3F140()
{
  v4 = *(v2 + 24);

  return [v0 v4];
}

id sub_3F15C()
{
  v3 = *(v1 + 3456);

  return [v0 v3];
}

uint64_t BundleDetailComponentLayout.init(headerArtworkView:metrics:titleView:subtitleView:gridView:)@<X0>(__int128 *a1@<X0>, const void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  sub_9414(a1, a6);
  memcpy((a6 + 160), a2, 0x78uLL);
  sub_9414(a3, a6 + 40);
  sub_9414(a4, a6 + 80);

  return sub_9414(a5, a6 + 120);
}

uint64_t BundleDetailComponentLayout.Metrics.init(titleTopSpace:subtitleTopSpace:gridTopSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_9414(a1, a4);
  sub_9414(a2, a4 + 40);

  return sub_9414(a3, a4 + 80);
}

double BundleDetailComponentLayout.measurements(fitting:in:)(uint64_t a1)
{
  v2 = v1;
  v69 = sub_13A514();
  sub_9E94();
  v68 = v4;
  __chkstk_darwin(v5);
  sub_21548();
  sub_2159C(v6);
  v74 = sub_13A4C4();
  sub_9E94();
  v76 = v7;
  __chkstk_darwin(v8);
  sub_21548();
  sub_2159C(v9);
  v64 = sub_13A4B4();
  v77 = *(v64 - 8);
  v10 = v77;
  __chkstk_darwin(v64);
  sub_21548();
  sub_2159C(v11);
  v75 = sub_13A454();
  sub_9E94();
  v73 = v12;
  __chkstk_darwin(v13);
  sub_21548();
  sub_2159C(v14);
  v15 = sub_13C114();
  sub_9E94();
  v17 = v16;
  __chkstk_darwin(v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1[23];
  v22 = v2[24];
  sub_162F0(v2 + 20, v21);
  sub_20038(v21, v22);
  v66 = a1;
  sub_13A404();
  (*(v17 + 8))(v20, v15);
  v23 = v2[9];
  sub_162F0(v2 + 5, v2[8]);
  sub_13A384();
  sub_13BE64();
  sub_4948(&qword_19AFE0);
  sub_13A4F4();
  v24 = sub_40724(&v84);
  v62 = v24;
  *(v24 + 16) = xmmword_13E650;
  v72 = v24 + v23;
  v71 = v2;
  v26 = v2[13];
  v25 = v2[14];
  sub_162F0(v2 + 10, v26);
  *(&v82 + 1) = v26;
  v83 = *(v25 + 8);
  sub_CC08(&v81);
  sub_9EF8();
  (*(v27 + 16))();
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v61 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v28 = *(v73 + 104);
  v53 = v73 + 104;
  v60 = v28;
  v28(v70);
  v59 = sub_4948(&qword_19AFE8);
  v29 = *(v10 + 72);
  v52 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v58 = 3 * v29;
  v30 = swift_allocObject();
  v57 = xmmword_13E660;
  *(v30 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v78 = v30;
  v55 = sub_20068();
  v54 = sub_4948(&qword_19AFF0);
  v56 = sub_1D268();
  v31 = v63;
  v32 = v64;
  sub_13BF64();
  v51 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v33 = v76;
  v50 = *(v76 + 104);
  v34 = v65;
  v35 = v74;
  v50(v65);
  v36 = v70;
  sub_13A4E4();
  v37 = *(v33 + 8);
  v76 = v33 + 8;
  v49 = v37;
  v37(v34, v35);
  v38 = *(v77 + 8);
  v77 += 8;
  v48 = v38;
  v38(v31, v32);
  v73 = *(v73 + 8);
  v39 = v75;
  (v73)(v36, v75);
  sub_1D2CC(v79);
  sub_3C04(&v81);
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v60(v36, v61, v39);
  v40 = swift_allocObject();
  *(v40 + 16) = v57;
  sub_13A494();
  sub_13A484();
  sub_13A4A4();
  *&v79[0] = v40;
  sub_13BF64();
  v41 = v74;
  (v50)(v34, v51, v74);
  sub_13A4E4();
  v49(v34, v41);
  v48(v31, v32);
  (v73)(v36, v75);
  sub_1D2CC(&v81);
  v42 = v67;
  sub_13A4D4();
  sub_13A464();
  v44 = v43;
  sub_40750();
  v45(v42, v69);
  return v44;
}

uint64_t BundleDetailComponentLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v83 = a2;
  v84 = sub_13A314();
  sub_9E94();
  v82 = v5;
  __chkstk_darwin(v6);
  sub_21548();
  sub_2159C(v7);
  v81 = sub_13A514();
  sub_9E94();
  v80 = v8;
  __chkstk_darwin(v9);
  sub_21548();
  sub_2159C(v10);
  v90 = sub_13A4B4();
  v75 = *(v90 - 8);
  v92 = v75;
  __chkstk_darwin(v90);
  sub_21548();
  sub_2159C(v11);
  v86 = sub_13A4C4();
  sub_9E94();
  v93 = v12;
  __chkstk_darwin(v13);
  sub_21548();
  sub_2159C(v14);
  v88 = sub_13A454();
  sub_9E94();
  v16 = v15;
  v91 = v15;
  __chkstk_darwin(v17);
  sub_21548();
  sub_2159C(v18);
  v19 = sub_13C114();
  sub_9E94();
  v21 = v20;
  __chkstk_darwin(v22);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2[23];
  v26 = v3[24];
  sub_162F0(v3 + 20, v25);
  sub_20038(v25, v26);
  v77 = a1;
  sub_13A404();
  (*(v21 + 8))(v24, v19);
  sub_13BE34();
  sub_40710();
  sub_13BE44();
  sub_4948(&qword_19AFE0);
  sub_13A4F4();
  v27 = sub_40724(&v101);
  v76 = v27;
  *(v27 + 16) = xmmword_13E650;
  v87 = v27 + v21 + 8;
  v85 = v3;
  v29 = v3[8];
  v28 = v3[9];
  sub_162F0(v3 + 5, v29);
  v99 = v29;
  v100 = *(v28 + 8);
  sub_CC08(&v98);
  sub_9EF8();
  (*(v30 + 16))();
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v70 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v31 = *(v16 + 104);
  v71 = v16 + 104;
  v72 = v31;
  v32 = v73;
  v31(v73);
  v69 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v33 = *(v93 + 104);
  v67 = v93 + 104;
  v68 = v33;
  v34 = v74;
  v33(v74);
  v66 = sub_4948(&qword_19AFE8);
  v35 = v92;
  v75 = 3 * *(v75 + 72);
  v36 = swift_allocObject();
  v65 = xmmword_13E660;
  *(v36 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v94 = v36;
  v63 = sub_20068();
  v62 = sub_4948(&qword_19AFF0);
  v64 = sub_1D268();
  v37 = v89;
  v38 = v90;
  sub_13BF64();
  v39 = v85;
  sub_13A4E4();
  v40 = *(v35 + 8);
  v92 = v35 + 8;
  v61 = v40;
  v40(v37, v38);
  v41 = *(v93 + 8);
  v93 += 8;
  v60 = v41;
  v42 = v86;
  v41(v34, v86);
  sub_40750();
  v91 = v43;
  v59 = v44;
  v45 = v88;
  v44(v32, v88);
  sub_1D2CC(&v95);
  sub_3C04(&v98);
  v46 = v39;
  v47 = v39[13];
  v48 = v39[14];
  sub_162F0(v46 + 10, v47);
  v99 = v47;
  v100 = *(v48 + 8);
  sub_CC08(&v98);
  sub_9EF8();
  (*(v49 + 16))();
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v50 = v45;
  v72(v32, v70, v45);
  v68(v34, v69, v42);
  v51 = swift_allocObject();
  *(v51 + 16) = v65;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v94 = v51;
  v52 = v89;
  v53 = v90;
  sub_13BF64();
  sub_13A4E4();
  v61(v52, v53);
  v60(v34, v42);
  v59(v32, v50);
  sub_1D2CC(&v95);
  sub_3C04(&v98);
  v54 = v78;
  sub_13A4D4();
  v55 = v79;
  sub_13A474();
  sub_13A2D4();
  v102.origin.x = sub_40710();
  CGRectGetMinX(v102);
  v103.origin.x = sub_40710();
  CGRectGetMinY(v103);
  sub_13A2C4();
  sub_40750();
  v56(v55, v84);
  sub_40750();
  return v57(v54, v81);
}

unint64_t sub_40500()
{
  result = qword_19BCA8;
  if (!qword_19BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BCA8);
  }

  return result;
}

uint64_t sub_40584(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_405C4(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_40664(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_406A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_40724@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v1;

  return swift_allocObject();
}

uint64_t sub_40770(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_45BD4(*a1);
  }

  v7 = sub_4948(&qword_19A970);
  v8 = a1 + *(a3 + 24);

  return sub_52E0(v8, a2, v7);
}

void *sub_4080C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A970);
    v8 = v5 + *(a4 + 24);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_408B8()
{
  type metadata accessor for BundleDetailComponentModel();
  if (v0 <= 0x3F)
  {
    sub_40944();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_40944()
{
  if (!qword_19A9F0)
  {
    sub_13ABC4();
    v0 = sub_13A764();
    if (!v1)
    {
      atomic_store(v0, &qword_19A9F0);
    }
  }
}

uint64_t sub_409B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_13AB24();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  sub_4948(&qword_19AC60);
  sub_9F94();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for BundleDetailComponentView(0);
  sub_458D8(v1 + *(v13 + 24), v12, &qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_45BA8();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    sub_13BD54();
    v16 = sub_13AE64();
    sub_13A004();

    sub_13AB14();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_40B98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_13A9A4();
  sub_9F94();
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = (v7 - v6);
  v9 = type metadata accessor for BundleDetailComponentView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  *a1 = sub_13ABD4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v12 = sub_4948(&qword_19BD48);
  sub_41020(v1, (a1 + *(v12 + 44)));
  v13 = sub_3C6D8();
  v14 = sub_13AEB4();
  sub_4948(&qword_19BD50);
  sub_45BC8();
  *v15 = v13;
  *(v15 + 8) = v14;
  v16 = sub_13B3C4();
  v18 = v17;
  sub_4948(&qword_19BD58);
  sub_45BC8();
  *v19 = sub_42104;
  v19[1] = 0;
  v19[2] = v16;
  v19[3] = v18;
  sub_430AC(v2, &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BundleDetailComponentView);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_44B88(&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for BundleDetailComponentView);
  sub_4948(&qword_19BD60);
  sub_45BC8();
  *v22 = sub_4303C;
  v22[1] = v21;
  if (qword_199E90 != -1)
  {
    swift_once();
  }

  v23 = qword_1B2968;
  v24 = (a1 + *(sub_4948(&qword_19BD68) + 36));
  v25 = *(v4 + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = sub_13ABA4();
  sub_9F94();
  v29 = *(v28 + 104);
  v29(v24 + v25, v26, v27);
  *v24 = v23;
  v24[1] = v23;
  *(v24 + *(sub_4948(&qword_19AAB0) + 36)) = 256;
  v29(v8 + *(v4 + 20), v26, v27);
  *v8 = v23;
  v8[1] = v23;
  sub_13B184();
  v30 = sub_13B1B4();

  sub_13A784();
  v31 = a1 + *(sub_4948(&qword_19BD70) + 36);
  sub_430AC(v8, v31, &type metadata accessor for RoundedRectangle);
  v32 = *&v47 * 0.5;
  v33 = v31 + *(sub_4948(&qword_19AB60) + 68);
  sub_430AC(v8, v33, &type metadata accessor for RoundedRectangle);
  *(v33 + *(sub_13A994() + 20)) = v32;
  sub_4948(&qword_19AB68);
  sub_45BC8();
  v34 = v48;
  *v35 = v47;
  *(v35 + 16) = v34;
  *(v35 + 32) = v49;
  v36 = sub_4948(&qword_19AB70);
  *(v33 + *(v36 + 52)) = v30;
  *(v33 + *(v36 + 56)) = 256;
  v37 = sub_13B3C4();
  v39 = v38;
  sub_43104(v8);
  sub_4948(&qword_19AB78);
  sub_45BC8();
  *v40 = v37;
  v40[1] = v39;
  v41 = sub_13B3C4();
  v43 = v42;
  result = sub_4948(&qword_19AB48);
  v45 = (v31 + *(result + 36));
  *v45 = v41;
  v45[1] = v43;
  return result;
}

uint64_t sub_41020@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_4948(&qword_19BD78);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = sub_13B3B4();
  v12 = v11;
  sub_412F4(a1, v21);
  memcpy(v25, v21, sizeof(v25));
  memcpy(__dst, v21, 0x88uLL);
  sub_458D8(v25, v20, &qword_19BD80);
  sub_928C(__dst, &qword_19BD80);
  memcpy(v19, v25, sizeof(v19));
  sub_3C8B4();
  sub_13B3C4();
  sub_13A834();
  *v9 = sub_13ABD4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v13 = sub_4948(&qword_19BD88);
  sub_416A4(a1, &v9[*(v13 + 44)]);
  sub_458D8(v9, v6, &qword_19BD78);
  v20[0] = v10;
  v20[1] = v12;
  memcpy(&v20[2], v19, 0x88uLL);
  *&v20[19] = v16;
  *&v20[21] = v17;
  *&v20[23] = v18;
  memcpy(a2, v20, 0xC8uLL);
  v14 = sub_4948(&qword_19BD90);
  sub_458D8(v6, a2 + *(v14 + 48), &qword_19BD78);
  sub_458D8(v20, v21, &qword_19BD98);
  sub_928C(v9, &qword_19BD78);
  sub_928C(v6, &qword_19BD78);
  v21[0] = v10;
  v21[1] = v12;
  memcpy(&v21[2], v19, 0x88uLL);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  return sub_928C(v21, &qword_19BD98);
}

uint64_t sub_412F4@<X0>(uint64_t a1@<X0>, void *(**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = type metadata accessor for BundleDetailComponentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_430AC(a1, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for BundleDetailComponentView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_44B88(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for BundleDetailComponentView);
  sub_414A0(v11);
  memcpy(__dst, v11, sizeof(__dst));
  memcpy(v12, v11, sizeof(v12));
  *a2 = sub_45018;
  a2[1] = v8;
  memcpy(a2 + 2, v11, 0x78uLL);

  sub_458D8(v12, v10, &qword_19BE48);
  sub_928C(__dst, &qword_19BE48);
}

uint64_t sub_414A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_13B164();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_3CD00();
  v7 = 0uLL;
  if (result)
  {
    if (sub_3CE28())
    {

      sub_139B44();
      sub_13B3C4();
      sub_13A834();
      v18 = v21;
      v19 = v20;
      v8 = v22;
      v16 = v24;
      v17 = v23;
      v15 = v25;
      (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGBLinear(_:), v2);
      v9 = sub_13B1D4();

      v11 = v15;
      v10 = v16;
      v13 = v17;
      v12 = v18;
      v7 = v19;
      v14 = 0x4018000000000000;
    }

    else
    {

      v8 = 0;
      v9 = 0;
      v14 = 0;
      v12 = 0uLL;
      v13 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v7 = 0uLL;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v14 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *a1 = v7;
  *(a1 + 16) = v12;
  *(a1 + 32) = v8;
  *(a1 + 40) = v13;
  *(a1 + 56) = v10;
  *(a1 + 72) = v11;
  *(a1 + 88) = v9;
  *(a1 + 96) = v14;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_416A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_4948(&qword_19BDA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_4948(&qword_19BDA8);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_4948(&qword_19BDB0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  __chkstk_darwin(v19);
  v21 = &v26 - v20;
  *v11 = sub_13ABD4();
  *(v11 + 1) = 0x402C000000000000;
  v11[16] = 0;
  v22 = sub_4948(&qword_19BDB8);
  sub_419E8(a1, &v11[*(v22 + 44)]);
  sub_13B3A4();
  sub_13A9B4();
  sub_44BE0(v11, v18, &qword_19BDA8);
  memcpy(&v18[*(v13 + 44)], __src, 0x70uLL);
  sub_44BE0(v18, v21, &qword_19BDB0);
  sub_41F58(v8);
  sub_458D8(v21, v15, &qword_19BDB0);
  sub_458D8(v8, v5, &qword_19BDA0);
  v23 = v27;
  sub_458D8(v15, v27, &qword_19BDB0);
  v24 = sub_4948(&qword_19BDC0);
  sub_458D8(v5, v23 + *(v24 + 48), &qword_19BDA0);
  sub_928C(v8, &qword_19BDA0);
  sub_928C(v21, &qword_19BDB0);
  sub_928C(v5, &qword_19BDA0);
  return sub_928C(v15, &qword_19BDB0);
}

uint64_t sub_419E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v3 = sub_4948(&qword_19BDC8);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v46 = sub_4948(&qword_19BDD0);
  __chkstk_darwin(v46);
  v7 = &v46 - v6;
  v48 = sub_4948(&qword_19BDD8);
  __chkstk_darwin(v48);
  v9 = &v46 - v8;
  v47 = sub_4948(&qword_19BDE0);
  __chkstk_darwin(v47);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v51 = sub_13ABD4();
  v56[0] = 1;
  sub_424B4(a1, v54);
  memcpy(v58, v54, 0xC9uLL);
  memcpy(v59, v54, 0xC9uLL);
  sub_458D8(v58, v53, &qword_19BDE8);
  sub_928C(v59, &qword_19BDE8);
  memcpy(&v57[7], v58, 0xC9uLL);
  v49 = v56[0];
  *v5 = sub_13B3D4();
  *(v5 + 1) = v15;
  *(v5 + 2) = 0x4028000000000000;
  v5[24] = 0;
  *(v5 + 4) = 0;
  v5[40] = 1;
  v16 = &v5[*(sub_4948(&qword_19BDF0) + 44)];
  v50 = a1;
  sub_42930(v16);
  sub_4948(&qword_19AAA0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_13E650;
  v18 = sub_13AEE4();
  *(v17 + 32) = v18;
  v19 = sub_13AF04();
  *(v17 + 33) = v19;
  v20 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v18)
  {
    v20 = sub_13AEF4();
  }

  sub_13AEF4();
  if (sub_13AEF4() != v19)
  {
    v20 = sub_13AEF4();
  }

  sub_13A6E4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_44BE0(v5, v7, &qword_19BDC8);
  v29 = &v7[*(v46 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = sub_13AED4();
  sub_3CA0C(v56);
  sub_928C(v56, &qword_19B770);
  sub_13A6E4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_44BE0(v7, v9, &qword_19BDD0);
  v39 = &v9[*(v48 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  sub_44BE0(v9, v14, &qword_19BDD8);
  *&v14[*(v47 + 36)] = 256;
  sub_458D8(v14, v11, &qword_19BDE0);
  v40 = v51;
  v53[0] = v51;
  v53[1] = 0;
  v41 = v14;
  v42 = v49;
  LOBYTE(v53[2]) = v49;
  memcpy(&v53[2] + 1, v57, 0xD0uLL);
  *(&v53[28] + 1) = 256;
  v43 = v52;
  memcpy(v52, v53, 0xE3uLL);
  v44 = sub_4948(&qword_19BDF8);
  sub_458D8(v11, v43 + *(v44 + 48), &qword_19BDE0);
  sub_458D8(v53, v54, &qword_19BE00);
  sub_928C(v41, &qword_19BDE0);
  sub_928C(v11, &qword_19BDE0);
  *v54 = v40;
  *&v54[8] = 0;
  v54[16] = v42;
  memcpy(&v54[17], v57, 0xD0uLL);
  v55 = 256;
  return sub_928C(v54, &qword_19BE00);
}

uint64_t sub_41F58@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ServiceFooter(0);
  __chkstk_darwin(v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_3CA0C(&v11);
  if (!v12)
  {
    sub_928C(&v11, &qword_19B770);
LABEL_6:
    v8 = a1;
    v9 = 1;
    return sub_53A8(v8, v9, 1, v2);
  }

  sub_3AC48(&v11, v16);
  v5 = sub_3CE28();
  if (!v5)
  {
    sub_431B8(v16);
    goto LABEL_6;
  }

  v6 = v5;
  sub_3AC48(v16, &v11);
  v7 = v14;
  sub_9414(&v11, v4 + v2[5]);
  sub_9414(&v13, v4 + v2[6]);
  memcpy(v4 + v2[8], v15, 0x41uLL);
  *v4 = swift_getKeyPath();
  sub_4948(&qword_19AC60);
  swift_storeEnumTagMultiPayload();
  *(v4 + v2[7]) = v7;
  *(v4 + v2[9]) = v6;
  sub_44B88(v4, a1, type metadata accessor for ServiceFooter);
  v8 = a1;
  v9 = 0;
  return sub_53A8(v8, v9, 1, v2);
}

uint64_t sub_42104@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_13B1A4();
  result = sub_13A844();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

void *sub_42144@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_13ABD4();
  v8 = 1;
  sub_42228(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v10, __src, sizeof(v10));
  sub_458D8(__dst, v5, &qword_19BE50);
  sub_928C(v10, &qword_19BE50);
  memcpy(&v7[7], __dst, 0x98uLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  return memcpy((a1 + 17), v7, 0x9FuLL);
}

uint64_t sub_42228@<X0>(uint64_t a1@<X8>)
{
  if (!sub_3CBD8())
  {
    goto LABEL_5;
  }

  if (!sub_3CE28())
  {

LABEL_5:
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    v1 = 0;
    v7 = 0;
    v17 = 0;
    goto LABEL_6;
  }

  sub_13A844();

  sub_139B44();
  sub_13A844();
  sub_13A844();
  sub_13B3C4();
  sub_13A834();

  v15 = v20[12];
  v16 = v20[11];
  v13 = v20[14];
  v14 = v20[13];
  v11 = v20[16];
  v12 = v20[15];
  v9 = v20[18];
  v10 = v20[17];
  v1 = v20[19];
  v7 = v20[20];
  v17 = v20[21];
LABEL_6:
  sub_13B3C4();
  sub_13A834();
  v5 = v22;
  v6 = v20[22];
  v3 = v21;
  v4 = v23;
  v18[104] = 1;
  v18[96] = v21;
  v18[88] = v23;
  __src[0] = v16;
  __src[1] = v15;
  __src[2] = v14;
  __src[3] = v13;
  __src[4] = v12;
  __src[5] = v11;
  __src[6] = v10;
  __src[7] = v9;
  __src[8] = v1;
  __src[9] = v7;
  __src[10] = v17;
  memcpy(a1, __src, 0x58uLL);
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = v6;
  *(a1 + 112) = v3;
  *(a1 + 120) = v5;
  *(a1 + 128) = v4;
  *(a1 + 136) = v24;
  v20[0] = v16;
  v20[1] = v15;
  v20[2] = v14;
  v20[3] = v13;
  v20[4] = v12;
  v20[5] = v11;
  v20[6] = v10;
  v20[7] = v9;
  v20[8] = v1;
  v20[9] = v7;
  v20[10] = v17;
  sub_458D8(__src, v18, &qword_19BE58);
  return sub_928C(v20, &qword_19BE58);
}

uint64_t sub_424B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v43[1] = a1;
  v47 = a2;
  v3 = sub_13ABC4();
  v48 = *(v3 - 8);
  KeyPath = v3;
  __chkstk_darwin(v3);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a1;
  v53 = sub_3D400();
  v54 = v6;
  v43[0] = sub_1628C();
  v7 = sub_13B004();
  v9 = v8;
  v11 = v10;
  sub_13AF54();
  v12 = sub_13AFB4();
  v14 = v13;
  v16 = v15;
  sub_162E0(v7, v9, v11 & 1);

  sub_13AF24();
  v45 = sub_13AFE4();
  v46 = v17;
  v50 = v18;
  LOBYTE(v9) = v19;

  sub_162E0(v12, v14, v16 & 1);

  sub_409B8(v5);
  LODWORD(v20) = sub_750BC();
  (*(v48 + 8))(v5, KeyPath);
  KeyPath = swift_getKeyPath();
  sub_13B3C4();
  sub_13A9B4();
  v63 = v9 & 1;
  memcpy(&v61[7], __src, 0x70uLL);
  LODWORD(v48) = v9 & 1;
  v21 = sub_3D210();
  if (v22)
  {
    v53 = v21;
    v54 = v22;
    v23 = sub_13B004();
    LODWORD(v44) = v20;
    v20 = v23;
    v25 = v24;
    v27 = v26;
    sub_13AF24();
    v28 = sub_13AFE4();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v35 = v20;
    LOBYTE(v20) = v44;
    sub_162E0(v35, v25, v27 & 1);

    v36 = swift_getKeyPath();
    v37 = v32 & 1;
    sub_44DB4(v28, v30, v32 & 1);

    v38 = 1;
  }

  else
  {
    v28 = 0;
    v30 = 0;
    v37 = 0;
    v34 = 0;
    v36 = 0;
    v38 = 0;
  }

  LODWORD(v44) = (v20 & 1) == 0;
  v39 = v45;
  v40 = v46;
  v51[0] = v45;
  v51[1] = v50;
  LOBYTE(v51[2]) = v48;
  *(&v51[2] + 1) = *v62;
  HIDWORD(v51[2]) = *&v62[3];
  v51[3] = v46;
  v51[4] = KeyPath;
  LOBYTE(v51[5]) = v44;
  memcpy(&v51[5] + 1, v61, 0x77uLL);
  memcpy(v52, v51, sizeof(v52));
  sub_458D8(v51, &v53, &qword_19BE40);
  sub_44E64(v28, v30, v37, v34);
  sub_44EB4(v28, v30, v37, v34);
  v41 = v47;
  memcpy(v47, v52, 0xA0uLL);
  v41[20] = v28;
  v41[21] = v30;
  v41[22] = v37;
  v41[23] = v34;
  v41[24] = v36;
  *(v41 + 200) = v38;
  sub_44EB4(v28, v30, v37, v34);
  v53 = v39;
  v54 = v50;
  v55 = v48;
  *v56 = *v62;
  *&v56[3] = *&v62[3];
  v57 = v40;
  v58 = KeyPath;
  v59 = v44;
  memcpy(v60, v61, sizeof(v60));
  return sub_928C(&v53, &qword_19BE40);
}

uint64_t sub_42930@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_4948(&qword_19BE08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - v4;
  v6 = sub_3CF50();
  if (v6)
  {
    if (*(v6 + 16))
    {
      v8[1] = v6;
      sub_4948(&unk_19B708);
      sub_4948(&qword_19BE10);
      sub_CBC0(&qword_19BE18, &unk_19B708);
      sub_44C28();
      sub_44CE0();
      sub_13B324();
      (*(v3 + 32))(a1, v5, v2);
      return sub_53A8(a1, 0, 1, v2);
    }
  }

  return sub_53A8(a1, 1, 1, v2);
}

void *sub_42B30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __src[0] = 0;
  LOBYTE(__src[1]) = 1;
  sub_42C70(a1, &__src[2]);
  sub_4948(&qword_19AAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13E650;
  v4 = sub_13AEC4();
  *(inited + 32) = v4;
  v5 = sub_13AED4();
  *(inited + 33) = v5;
  v6 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v4)
  {
    v6 = sub_13AEF4();
  }

  sub_13AEF4();
  if (sub_13AEF4() != v5)
  {
    v6 = sub_13AEF4();
  }

  sub_13A6E4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = memcpy(a2, __src, 0x50uLL);
  *(a2 + 80) = v6;
  *(a2 + 88) = v8;
  *(a2 + 96) = v10;
  *(a2 + 104) = v12;
  *(a2 + 112) = v14;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_42C70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  v22 = sub_13B214();
  v21 = sub_13B1C4();
  v20 = sub_13AFA4();
  KeyPath = swift_getKeyPath();
  v4 = a1[3];
  v5 = a1[4];
  sub_162F0(a1, v4);
  (*(v5 + 72))(v4, v5);
  sub_1628C();
  v6 = sub_13B004();
  v8 = v7;
  v10 = v9;
  sub_13AFA4();
  v11 = sub_13AFE4();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_162E0(v6, v8, v10 & 1);

  *a2 = v22;
  *(a2 + 8) = v21;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = v20;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15 & 1;
  *(a2 + 56) = v17;

  sub_44DB4(v11, v13, v15 & 1);

  sub_162E0(v11, v13, v15 & 1);
}

uint64_t sub_42E34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_13AB24();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_4948(&qword_19AC60);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_458D8(v2, &v14 - v9, &qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_13ABC4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_13BD54();
    v13 = sub_13AE64();
    sub_13A004();

    sub_13AB14();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_4303C(double *a1)
{
  type metadata accessor for BundleDetailComponentView(0);

  sub_3C93C(a1);
}

uint64_t sub_430AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_45BA8();
  v4 = sub_17208();
  v5(v4);
  return a2;
}

uint64_t sub_43104(uint64_t a1)
{
  v2 = sub_13A9A4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_43180(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4320C@<X0>(uint64_t a1@<X8>)
{
  sub_432EC(v1, a1);
  v3 = sub_13AEA4();
  sub_13A6E4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(sub_4948(&qword_19BF58) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = [objc_opt_self() ams_secondaryBackground];
  v14 = sub_13B1E4();
  v15 = sub_13AEB4();
  result = sub_4948(&qword_19BF60);
  v17 = a1 + *(result + 36);
  *v17 = v14;
  *(v17 + 8) = v15;
  return result;
}

uint64_t sub_432EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v21 = sub_4948(&qword_19BF68);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v4 = sub_4948(&qword_19BF70);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v22 = sub_4948(&qword_19BF78);
  __chkstk_darwin(v22);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = sub_13ABC4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  sub_42E34(v15);
  LOBYTE(a1) = sub_750BC();
  (*(v13 + 8))(v15, v12);
  if (a1)
  {
    *v6 = sub_13ABE4();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v17 = sub_4948(&qword_19BFB0);
    sub_43758(v16, &v6[*(v17 + 44)]);
    *&v6[*(v4 + 36)] = 256;
    sub_13B3D4();
    sub_13A9B4();
    sub_44BE0(v6, v8, &qword_19BF70);
    memcpy(&v8[*(v22 + 36)], v24, 0x70uLL);
    sub_44BE0(v8, v11, &qword_19BF78);
    sub_458D8(v11, v20, &qword_19BF78);
    swift_storeEnumTagMultiPayload();
    sub_4948(&qword_19BF80);
    sub_456D8();
    sub_CBC0(&qword_19BFA8, &qword_19BF80);
    sub_13ACD4();
    return sub_928C(v11, &qword_19BF78);
  }

  else
  {
    v24[0] = sub_13AB44();
    v24[1] = 0x4028000000000000;
    LOBYTE(v24[2]) = 0;
    sub_441CC(v16, &v24[3]);
    sub_458D8(v24, v20, &qword_19BF80);
    swift_storeEnumTagMultiPayload();
    sub_4948(&qword_19BF80);
    sub_456D8();
    sub_CBC0(&qword_19BFA8, &qword_19BF80);
    sub_13ACD4();
    return sub_928C(v24, &qword_19BF80);
  }
}

uint64_t sub_43758@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v107 = a2;
  v115 = sub_4948(&qword_19BFB8);
  __chkstk_darwin(v115);
  v108 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v106 = &v99 - v5;
  v114 = sub_4948(&qword_19ACD0);
  __chkstk_darwin(v114);
  v118 = &v99 - v6;
  v7 = sub_13AB84();
  __chkstk_darwin(v7 - 8);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_4948(&qword_19BFC0);
  __chkstk_darwin(v111);
  v105 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v117 = &v99 - v12;
  v13 = type metadata accessor for ServiceFooter(0);
  v14 = *(a1 + *(v13 + 36));
  swift_retain_n();

  v103 = v14;
  sub_139B44();
  sub_13B3C4();
  sub_13A834();
  v104 = sub_13AEC4();
  sub_13A6E4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v120) = 0;
  sub_13AB74();
  v148._countAndFlagsBits = 0;
  v148._object = 0xE000000000000000;
  sub_13AB64(v148);
  v113 = v13;
  v23 = *(v13 + 20);
  v116 = a1;
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 24);
  v26 = *(a1 + v23 + 32);
  sub_162F0(v24, v25);
  v149._countAndFlagsBits = (*(v26 + 72))(v25, v26);
  sub_13AB54(v149);

  v150._countAndFlagsBits = 0;
  v150._object = 0xE000000000000000;
  sub_13AB64(v150);
  v112 = v9;
  sub_13AB94();
  v27 = sub_13AFF4();
  v29 = v28;
  LOBYTE(v26) = v30;
  sub_13AFA4();
  v31 = sub_13AFE4();
  v33 = v32;
  v35 = v34;

  sub_162E0(v27, v29, v26 & 1);

  LODWORD(v120) = sub_13AD54();
  v36 = sub_13AFD4();
  v38 = v37;
  LOBYTE(v13) = v39;
  sub_162E0(v31, v33, v35 & 1);

  sub_13AF64();
  v40 = sub_13AFB4();
  v42 = v41;
  LOBYTE(v33) = v43;
  v45 = v44;
  sub_162E0(v36, v38, v13 & 1);

  v120 = v40;
  v121 = v42;
  v46 = v33 & 1;
  v122 = v33 & 1;
  v123 = v45;
  v47 = enum case for DynamicTypeSize.accessibility3(_:);
  v48 = sub_13A934();
  v49 = (*(v48 - 8) + 104);
  v109 = *v49;
  v109(v118, v47, v48);
  v110 = sub_4581C();
  result = sub_13BB44();
  if (result)
  {
    v101 = v47;
    v102 = v49;
    v99 = sub_CBC0(&qword_19ACE0, &qword_19ACD0);
    v100 = v48;
    v51 = v117;
    v52 = v118;
    sub_13B0C4();
    sub_928C(v52, &qword_19ACD0);
    sub_162E0(v40, v42, v46);

    KeyPath = swift_getKeyPath();
    v54 = v51 + *(v115 + 36);
    *v54 = KeyPath;
    *(v54 + 8) = 0;
    *(v54 + 16) = 1;
    v55 = sub_13AEC4();
    sub_13A6E4();
    v56 = v51 + *(v111 + 36);
    *v56 = v55;
    *(v56 + 8) = v57;
    *(v56 + 16) = v58;
    *(v56 + 24) = v59;
    *(v56 + 32) = v60;
    *(v56 + 40) = 0;
    sub_13AB74();
    v151._countAndFlagsBits = 0;
    v151._object = 0xE000000000000000;
    sub_13AB64(v151);
    v61 = (v116 + *(v113 + 24));
    v62 = v61[3];
    v63 = v61[4];
    sub_162F0(v61, v62);
    v152._countAndFlagsBits = (*(v63 + 72))(v62, v63);
    sub_13AB54(v152);

    v153._countAndFlagsBits = 0;
    v153._object = 0xE000000000000000;
    sub_13AB64(v153);
    sub_13AB94();
    v64 = sub_13AFF4();
    v66 = v65;
    LOBYTE(v63) = v67;
    sub_13AFA4();
    v68 = sub_13AFE4();
    v70 = v69;
    LOBYTE(v52) = v71;

    sub_162E0(v64, v66, v63 & 1);

    LODWORD(v120) = sub_13AD64();
    v72 = sub_13AFD4();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    sub_162E0(v68, v70, v52 & 1);

    v120 = v72;
    v121 = v74;
    v122 = v76 & 1;
    v123 = v78;
    v109(v118, v101, v100);
    result = sub_13BB44();
    if (result)
    {
      v79 = v106;
      v80 = v118;
      sub_13B0C4();
      sub_928C(v80, &qword_19ACD0);
      sub_162E0(v72, v74, v76 & 1);

      v81 = swift_getKeyPath();
      v82 = v79 + *(v115 + 36);
      *v82 = v81;
      *(v82 + 8) = 0;
      *(v82 + 16) = 1;
      sub_3BF68(v116 + *(v113 + 32), &v120);
      v124 = v103;
      v125 = 257;
      v83 = sub_13AEC4();
      sub_13A6E4();
      v126 = v83;
      v127 = v84;
      v128 = v85;
      v129 = v86;
      v130 = v87;
      v131 = 0;
      v88 = sub_13AED4();
      sub_13A6E4();
      v132 = v88;
      v133 = v89;
      v134 = v90;
      v135 = v91;
      v136 = v92;
      v137 = 0;
      v93 = v117;
      v94 = v105;
      sub_458D8(v117, v105, &qword_19BFC0);
      v95 = v108;
      sub_458D8(v79, v108, &qword_19BFB8);
      sub_458D8(&v120, v119, &qword_19BFC8);
      memcpy(v140, v138, 0x58uLL);
      v96 = v104;
      LOBYTE(v140[11]) = v104;
      *(&v140[11] + 1) = *v139;
      HIDWORD(v140[11]) = *&v139[3];
      v140[12] = v16;
      v140[13] = v18;
      v140[14] = v20;
      v140[15] = v22;
      LOBYTE(v140[16]) = 0;
      v97 = v107;
      memcpy(v107, v140, 0x81uLL);
      v98 = sub_4948(&qword_19BFD0);
      sub_458D8(v94, v97 + v98[12], &qword_19BFC0);
      sub_458D8(v95, v97 + v98[16], &qword_19BFB8);
      sub_458D8(v119, v97 + v98[20], &qword_19BFC8);
      sub_458D8(v140, __dst, &qword_19BFD8);
      sub_928C(&v120, &qword_19BFC8);
      sub_928C(v79, &qword_19BFB8);
      sub_928C(v93, &qword_19BFC0);
      sub_928C(v119, &qword_19BFC8);
      sub_928C(v95, &qword_19BFB8);
      sub_928C(v94, &qword_19BFC0);
      memcpy(__dst, v138, 0x58uLL);
      __dst[88] = v96;
      *v142 = *v139;
      *&v142[3] = *&v139[3];
      v143 = v16;
      v144 = v18;
      v145 = v20;
      v146 = v22;
      v147 = 0;
      return sub_928C(__dst, &qword_19BFD8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_441CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ServiceFooter(0);
  v5 = *(a1 + *(v4 + 36));
  swift_retain_n();

  sub_139B44();
  sub_13B3C4();
  sub_13A834();
  v6 = sub_13ABE4();
  v36[0] = 0;
  sub_4455C(a1, __src);
  memcpy(__dst, __src, 0x69uLL);
  memcpy(v38, __src, 0x69uLL);
  sub_458D8(__dst, v23, &qword_19BFE0);
  sub_928C(v38, &qword_19BFE0);
  memcpy(&v33[7], __dst, 0x69uLL);
  v7 = v36[0];
  sub_13B3D4();
  sub_13A9B4();
  memcpy(&v34[5], v36, 0x70uLL);
  v8 = sub_13AF14();
  sub_13A6E4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v34[120] = 0;
  sub_3BF68(a1 + *(v4 + 32), v19);
  v20 = v5;
  v21 = 257;
  sub_458D8(v19, v18, &qword_19BFE8);
  memcpy(v22, v35, sizeof(v22));
  memcpy(a2, v35, 0x58uLL);
  v23[0] = v6;
  v23[1] = 0;
  LOBYTE(v23[2]) = v7;
  memcpy(&v23[2] + 1, v33, 0x70uLL);
  *(&v23[16] + 1) = 256;
  memcpy(&v23[16] + 3, v34, 0x75uLL);
  LOBYTE(v23[31]) = v8;
  v23[32] = v10;
  v23[33] = v12;
  v23[34] = v14;
  v23[35] = v16;
  LOBYTE(v23[36]) = 0;
  memcpy((a2 + 88), v23, 0x121uLL);
  sub_458D8(v18, a2 + 384, &qword_19BFE8);
  sub_458D8(v22, __src, &qword_19ACB0);
  sub_458D8(v23, __src, &qword_19BFF0);
  sub_928C(v19, &qword_19BFE8);
  sub_928C(v18, &qword_19BFE8);
  *__src = v6;
  *&__src[8] = 0;
  __src[16] = v7;
  memcpy(&__src[17], v33, 0x70uLL);
  v25 = 256;
  memcpy(v26, v34, 0x75uLL);
  v26[117] = v8;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v30 = v16;
  v31 = 0;
  sub_928C(__src, &qword_19BFF0);
  memcpy(v32, v35, sizeof(v32));
  return sub_928C(v32, &qword_19ACB0);
}

uint64_t sub_4455C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_13AB84();
  __chkstk_darwin(v3 - 8);
  sub_13AB74();
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  sub_13AB64(v52);
  v49 = type metadata accessor for ServiceFooter(0);
  v4 = (a1 + *(v49 + 20));
  v5 = v4[3];
  v6 = v4[4];
  sub_162F0(v4, v5);
  v53._countAndFlagsBits = (*(v6 + 72))(v5, v6);
  sub_13AB54(v53);

  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  sub_13AB64(v54);
  sub_13AB94();
  v7 = sub_13AFF4();
  v9 = v8;
  LOBYTE(v6) = v10;
  sub_13AFA4();
  v11 = sub_13AFE4();
  v13 = v12;
  v15 = v14;

  sub_162E0(v7, v9, v6 & 1);

  sub_13AD54();
  v16 = sub_13AFD4();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_162E0(v11, v13, v15 & 1);

  sub_13AF64();
  v20 = sub_13AFB4();
  v47 = v21;
  v48 = v20;
  v46 = v22;
  v45 = v23;
  sub_162E0(v16, v18, v9 & 1);

  KeyPath = swift_getKeyPath();
  sub_13AB74();
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  sub_13AB64(v55);
  v25 = (a1 + *(v49 + 24));
  v26 = v25[3];
  v27 = v25[4];
  sub_162F0(v25, v26);
  v56._countAndFlagsBits = (*(v27 + 72))(v26, v27);
  sub_13AB54(v56);

  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_13AB64(v57);
  sub_13AB94();
  v28 = sub_13AFF4();
  v30 = v29;
  LOBYTE(v26) = v31;
  sub_13AFA4();
  v32 = sub_13AFE4();
  v34 = v33;
  v36 = v35;

  sub_162E0(v28, v30, v26 & 1);

  sub_13AD64();
  v37 = sub_13AFD4();
  v39 = v38;
  LOBYTE(v26) = v40;
  v42 = v41;
  sub_162E0(v32, v34, v36 & 1);

  v43 = swift_getKeyPath();
  *a2 = v48;
  *(a2 + 8) = v46;
  *(a2 + 16) = v45 & 1;
  *(a2 + 24) = v47;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v37;
  *(a2 + 64) = v39;
  *(a2 + 72) = v26 & 1;
  *(a2 + 80) = v42;
  *(a2 + 88) = v43;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  sub_44DB4(v48, v46, v45 & 1);

  sub_44DB4(v37, v39, v26 & 1);

  sub_162E0(v37, v39, v26 & 1);

  sub_162E0(v48, v46, v45 & 1);
}

void *sub_449FC(double *a1, void *(*a2)(double *__return_ptr))
{
  v4 = a1[1];
  result = a2(&v7);
  if (v8 >= v4)
  {
    result = (a2)(&v7, result, v8);
    v6 = v7;
    v4 = v8;
  }

  else
  {
    v6 = *a1;
  }

  *a1 = v6;
  a1[1] = v4;
  return result;
}

uint64_t sub_44AD0(uint64_t a1)
{
  sub_13ABC4();
  sub_9E94();
  __chkstk_darwin(v2);
  sub_9EC0();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_13AA04();
}

uint64_t sub_44B88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_45BA8();
  v4 = sub_17208();
  v5(v4);
  return a2;
}

uint64_t sub_44BE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_171DC(a1, a2, a3);
  sub_45BA8();
  v4 = sub_17208();
  v5(v4);
  return v3;
}

unint64_t sub_44C28()
{
  result = qword_19BE20;
  if (!qword_19BE20)
  {
    sub_558C(&qword_19BE10);
    sub_CBC0(&qword_19BE28, &qword_19BE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BE20);
  }

  return result;
}

unint64_t sub_44CE0()
{
  result = qword_19BE38;
  if (!qword_19BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BE38);
  }

  return result;
}

uint64_t sub_44D34()
{
  sub_45BBC();
  result = sub_13AAD4();
  *v0 = result;
  return result;
}

uint64_t sub_44D5C()
{
  sub_45BBC();
  result = sub_13AAD4();
  *v0 = result;
  return result;
}

uint64_t sub_44DB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_44DC4()
{
  sub_45BBC();
  result = sub_13AAB4();
  *v0 = result;
  return result;
}

uint64_t sub_44DEC()
{
  sub_45BBC();
  result = sub_13AAB4();
  *v0 = result;
  return result;
}

uint64_t sub_44E64(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_44DB4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_44EB4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_162E0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_44F04()
{
  v1 = (type metadata accessor for BundleDetailComponentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_4948(&qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_9F94();
    (*(v6 + 8))(v0 + v3 + v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void *sub_45018@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BundleDetailComponentView(0);

  return sub_42144(a1);
}

uint64_t sub_450BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4948(&qword_19A970);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_45BD4(*(a1 + *(a3 + 20) + 24));
  }

  return sub_52E0(a1, a2, v6);
}

uint64_t sub_45180(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_4948(&qword_19A970);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_53A8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_45238()
{
  sub_40944();
  if (v0 <= 0x3F)
  {
    sub_18A28();
    if (v1 <= 0x3F)
    {
      sub_139C94();
      if (v2 <= 0x3F)
      {
        sub_13B6B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_452F8()
{
  result = qword_19BF00;
  if (!qword_19BF00)
  {
    sub_558C(&qword_19BD70);
    sub_453B0();
    sub_CBC0(&qword_19AB40, &qword_19AB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BF00);
  }

  return result;
}

unint64_t sub_453B0()
{
  result = qword_19BF08;
  if (!qword_19BF08)
  {
    sub_558C(&qword_19BD68);
    sub_45468();
    sub_CBC0(&qword_19AB20, &qword_19AAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BF08);
  }

  return result;
}

unint64_t sub_45468()
{
  result = qword_19BF10;
  if (!qword_19BF10)
  {
    sub_558C(&qword_19BD60);
    sub_45520();
    sub_CBC0(&qword_19BF48, &qword_19BF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BF10);
  }

  return result;
}

unint64_t sub_45520()
{
  result = qword_19BF18;
  if (!qword_19BF18)
  {
    sub_558C(&qword_19BD58);
    sub_455D8();
    sub_CBC0(&qword_19BF38, &qword_19BF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BF18);
  }

  return result;
}

unint64_t sub_455D8()
{
  result = qword_19BF20;
  if (!qword_19BF20)
  {
    sub_558C(&qword_19BD50);
    sub_CBC0(&qword_19BF28, &qword_19BF30);
    sub_CBC0(&qword_19AB00, &qword_19AB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BF20);
  }

  return result;
}

unint64_t sub_456D8()
{
  result = qword_19BF88;
  if (!qword_19BF88)
  {
    sub_558C(&qword_19BF78);
    sub_45764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BF88);
  }

  return result;
}

unint64_t sub_45764()
{
  result = qword_19BF90;
  if (!qword_19BF90)
  {
    sub_558C(&qword_19BF70);
    sub_CBC0(&qword_19BF98, &qword_19BFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BF90);
  }

  return result;
}

unint64_t sub_4581C()
{
  result = qword_19ACF0;
  if (!qword_19ACF0)
  {
    sub_13A934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19ACF0);
  }

  return result;
}

uint64_t sub_45874()
{
  sub_45BBC();
  result = sub_13AAF4();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_458D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_171DC(a1, a2, a3);
  sub_45BA8();
  v4 = sub_17208();
  v5(v4);
  return v3;
}

unint64_t sub_45924()
{
  result = qword_19BFF8;
  if (!qword_19BFF8)
  {
    sub_558C(&qword_19BF60);
    sub_459DC();
    sub_CBC0(&qword_19AB00, &qword_19AB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BFF8);
  }

  return result;
}

unint64_t sub_459DC()
{
  result = qword_19C000;
  if (!qword_19C000)
  {
    sub_558C(&qword_19BF58);
    sub_45A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C000);
  }

  return result;
}

unint64_t sub_45A68()
{
  result = qword_19C008;
  if (!qword_19C008)
  {
    sub_558C(&qword_19C010);
    sub_45AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C008);
  }

  return result;
}

unint64_t sub_45AEC()
{
  result = qword_19C018;
  if (!qword_19C018)
  {
    sub_558C(&qword_19C020);
    sub_456D8();
    sub_CBC0(&qword_19BFA8, &qword_19BF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19C018);
  }

  return result;
}

uint64_t sub_45BD4@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_45BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1 == 0x6568732D79646F62 && a2 == 0xEA0000000000666CLL;
  if (v5 || (sub_13C144() & 1) != 0)
  {
    memcpy(__dst, v3 + 176, sizeof(__dst));
    a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
    a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
    v8 = swift_allocObject();
    *a3 = v8;
    v9 = (v8 + 16);
    v10 = v3 + 176;
  }

  else
  {
    v12 = a1 == 0xD000000000000017 && 0x800000000014F510 == a2;
    if (v12 || (sub_13C144() & 1) != 0)
    {
      memcpy(__dst, v3 + 264, sizeof(__dst));
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v13 = swift_allocObject();
      *a3 = v13;
      v9 = (v13 + 16);
      v10 = v3 + 264;
    }

    else
    {
      v14 = a1 == 0x732D726564616568 && a2 == 0xEC000000666C6568;
      if (v14 || (sub_13C144() & 1) != 0)
      {
        memcpy(__dst, v3, sizeof(__dst));
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v15 = swift_allocObject();
        *a3 = v15;
        v9 = (v15 + 16);
        v10 = v3;
      }

      else
      {
        v16 = a1 == 0x656E696C64616568 && a2 == 0xEE00666C6568732DLL;
        if (v16 || (sub_13C144() & 1) != 0)
        {
          memcpy(__dst, v3 + 88, sizeof(__dst));
          a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
          a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
          v17 = swift_allocObject();
          *a3 = v17;
          v9 = (v17 + 16);
          v10 = v3 + 88;
        }

        else if (v3[528] - 1 > 1)
        {
          memcpy(__dst, v3 + 352, sizeof(__dst));
          a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
          a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
          v19 = swift_allocObject();
          *a3 = v19;
          v9 = (v19 + 16);
          v10 = v3 + 352;
        }

        else
        {
          memcpy(__dst, v3 + 440, sizeof(__dst));
          a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
          a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
          v18 = swift_allocObject();
          *a3 = v18;
          v9 = (v18 + 16);
          v10 = v3 + 440;
        }
      }
    }
  }

  memcpy(v9, v10, 0x58uLL);
  return sub_4AB8(__dst, &v20);
}

void *sub_45EE0@<X0>(_BYTE *a1@<X8>)
{
  sub_139F34();
  sub_139F34();
  sub_139F34();
  sub_139F34();
  sub_139F34();
  sub_139F34();
  result = memcpy(a1, __src, 0x210uLL);
  a1[528] = 8;
  return result;
}

uint64_t sub_461B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 == 0x732D7265746F6F66 && a2 == 0xEC000000666C6568)
  {
    v7 = &protocol witness table for BoxedLayoutCollectionSpacingModel;
    v8 = &type metadata for BoxedLayoutCollectionSpacingModel;
  }

  else
  {
    v6 = sub_13C144();
    v7 = &protocol witness table for BoxedLayoutCollectionSpacingModel;
    v8 = &type metadata for BoxedLayoutCollectionSpacingModel;
    if ((v6 & 1) == 0)
    {
      v8 = &type metadata for BundleDetailedLayout.FooterSpacing;
      v7 = &off_187770;
    }
  }

  a3[3] = v8;
  a3[4] = v7;
  v9 = swift_allocObject();
  *a3 = v9;
  memcpy((v9 + 16), v3, 0x58uLL);
  return sub_467F4(v3, v11);
}

uint64_t sub_46390@<X0>(uint64_t *a1@<X8>)
{
  sub_45EE0(__src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x211uLL);
  sub_46294(v6);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v6, 0x58uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_464A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_46390(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_4654C()
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

  if (v0[42])
  {
  }

  if (v0[44])
  {
  }

  if (v0[53])
  {
  }

  if (v0[55])
  {
  }

  if (v0[64])
  {
  }

  if (v0[66])
  {
  }

  return _swift_deallocObject(v0, 545, 7);
}

uint64_t sub_4663C()
{
  sub_3C04(v0 + 16);
  sub_3C04(v0 + 56);
  sub_3C04(v0 + 96);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_4669C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 529))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_466F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 520) = 0;
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
    *(result + 528) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 529) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 529) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for BundleFocused()
{
  result = qword_19C090;
  if (!qword_19C090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4693C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a2;
  v103 = a3;
  sub_4948(&qword_19A420);
  sub_171D0();
  __chkstk_darwin(v5);
  v105 = &v100 - v6;
  v104 = sub_4948(&qword_19A350);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v7);
  v107 = &v100 - v8;
  sub_4948(&qword_19C030);
  sub_171D0();
  __chkstk_darwin(v9);
  v11 = &v100 - v10;
  v12 = sub_13B584();
  v118 = *(v12 - 8);
  v119 = v12;
  __chkstk_darwin(v12);
  sub_18B60();
  __chkstk_darwin(v13);
  sub_18B60();
  __chkstk_darwin(v14);
  sub_18B60();
  __chkstk_darwin(v15);
  sub_18B60();
  __chkstk_darwin(v16);
  v18 = &v100 - v17;
  __chkstk_darwin(v19);
  v21 = &v100 - v20;
  v22 = sub_4948(&qword_19A480);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v23);
  v25 = &v100 - v24;
  v26 = type metadata accessor for BundleFocused();
  sub_9F94();
  __chkstk_darwin(v27);
  v116 = (&v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v115 = swift_initStackObject();
  v113 = v26;
  v121 = a1;
  v29 = sub_BB310();
  v106 = v18;
  if (v3)
  {

    v29 = 0;
    v30 = 0;
  }

  v31 = v116;
  *v116 = v29;
  v31[1] = v30;
  v112 = v30;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_7F30();
  if (sub_52E0(v11, 1, v22) == 1)
  {
    sub_928C(v11, &qword_19C030);
LABEL_6:
    sub_13BAB4();
    sub_47E28();
    sub_47820(v32, v33);
    v34 = sub_9F18();
    sub_47E64(v34, v35);
    *v36 = 0x6567646162;
    v36[1] = 0xE500000000000000;
    v37 = v113;
    v36[2] = v113;
    sub_9EF8();
    (*(v38 + 104))();
    swift_willThrow();
    v39 = *(v118 + 8);
    v39(v21, v119);

    v40 = type metadata accessor for Badge();
    sub_53A8(v25, 1, 1, v40);
    goto LABEL_8;
  }

  v39 = *(v118 + 8);
  v39(v21, v119);
  sub_47868(v11, v25, &qword_19A480);
  v37 = v113;
LABEL_8:
  v41 = v37[5];
  v42 = v116;
  sub_47868(v25, v116 + v41, &qword_19A480);
  *&v120 = sub_BB310();
  *(&v120 + 1) = v43;
  sub_13BFB4();
  v44 = v106;
  sub_13B594();
  v45 = sub_13B564();
  v102 = v41;
  v101 = 0;
  if (v45)
  {
LABEL_11:
    sub_13BAB4();
    sub_47E28();
    sub_47820(v47, v48);
    v49 = sub_9F18();
    sub_47E64(v49, v50);
    *v51 = 0xD000000000000011;
    v51[1] = 0x800000000014E730;
    v51[2] = v37;
    sub_9EF8();
    (*(v52 + 104))();
    swift_willThrow();
    sub_47E58();
    (v39)(v44);

    v53 = sub_13B7A4();
    v54 = v107;
    sub_53A8(v107, 1, 1, v53);
    goto LABEL_13;
  }

  v46 = v105;
  sub_7738();
  if (sub_52E0(v46, 1, v104) == 1)
  {
    sub_928C(v46, &qword_19A420);
    goto LABEL_11;
  }

  sub_47E58();
  (v39)(v44);
  v55 = v46;
  v54 = v107;
  sub_47868(v55, v107, &qword_19A350);
LABEL_13:
  sub_47868(v54, v42 + v37[12], &qword_19A350);
  v56 = v108;
  sub_13B594();
  v57 = sub_13B564();
  v58 = v117;
  if (v57)
  {
    v59 = sub_13BAB4();
    sub_47E28();
    sub_47820(v60, v61);
    swift_allocError();
    *v62 = 1868983913;
    v62[1] = 0xE400000000000000;
    v62[2] = v37;
    (*(*(v59 - 8) + 104))(v62, enum case for JSONError.missingProperty(_:), v59);
    swift_willThrow();
    sub_47E58();
    (v39)(v56);

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    sub_47E58();
    (v39)(v56);
    sub_249B4();
  }

  sub_47E40(v37[6]);
  v63 = v109;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_47E28();
    sub_47820(v64, v65);
    v66 = sub_9F18();
    sub_47E64(v66, v67);
    *v68 = 0x6575676573;
    v68[1] = 0xE500000000000000;
    v68[2] = v37;
    sub_9EF8();
    (*(v69 + 104))();
    swift_willThrow();
    sub_47E58();
    (v39)(v63);

    sub_18B90();
  }

  else
  {
    sub_139BC4();
    sub_47E58();
    (v39)(v63);
    sub_249B4();
  }

  sub_47E40(v37[13]);
  __chkstk_darwin(v70);
  *(&v100 - 2) = v58;
  sub_9DB8(0x7365636976726573, 0xE800000000000000, v37, sub_478E0, (&v100 - 4), v71, v72, v73);
  v74 = v110;
  *(v42 + v37[7]) = v75;
  *(v42 + v37[8]) = sub_BB458() & 1;
  sub_13B594();
  v76 = sub_13B564();
  v113 = v39;
  if (v76)
  {
    sub_13BAB4();
    sub_47E28();
    sub_47820(v77, v78);
    v79 = sub_9F18();
    sub_47E64(v79, v80);
    *v81 = 0x656C746974627573;
    v81[1] = 0xE800000000000000;
    v81[2] = v37;
    sub_9EF8();
    (*(v82 + 104))();
    swift_willThrow();
    sub_47E58();
    (v39)(v74);

    sub_18B90();
  }

  else
  {
    sub_139DB4();
    sub_47E58();
    (v39)(v74);
    sub_249B4();
  }

  sub_47E40(v37[9]);
  v83 = v111;
  v84 = v121;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_47E28();
    sub_47820(v86, v87);
    sub_9F18();
    *v88 = 0x656C746974;
    v88[1] = 0xE500000000000000;
    v88[2] = v37;
    sub_9EF8();
    (*(v89 + 104))();
    swift_willThrow();

    v90 = v119;
    v91 = v113;
    (v113)(v84, v119);
    (v91)(v83, v90);
    v92 = v102;
    v93 = v101;
    v94 = v117;
    sub_13B5A4();
    sub_9F94();
    (*(v95 + 8))(v94);

    result = sub_928C(v42 + v92, &qword_19A480);
    if (!v93)
    {
      sub_928C(v42 + v37[6], &qword_19E960);

      sub_928C(v42 + v37[9], &qword_19E960);
      sub_9238(v42 + v37[11]);
      sub_928C(v42 + v37[12], &qword_19A350);
      return sub_928C(v42 + v37[13], &unk_19E320);
    }
  }

  else
  {
    v85 = v117;
    sub_139DB4();
    v96 = v119;
    v97 = v113;
    (v113)(v121, v119);
    (v97)(v83, v96);
    sub_249B4();
    sub_9414(&v120, v42 + v37[10]);
    sub_4790C(v42, v103);
    sub_13B5A4();
    sub_9F94();
    (*(v98 + 8))(v85);
    return sub_47970(v42);
  }

  return result;
}

uint64_t sub_47820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_47868(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_171DC(a1, a2, a3);
  sub_9F94();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_478B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39ABC();
  *a1 = result;
  return result;
}

uint64_t sub_478E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39ABC();
  *a1 = result;
  return result;
}

uint64_t sub_4790C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleFocused();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_47970(uint64_t a1)
{
  v2 = type metadata accessor for BundleFocused();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_479CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_171DC(a1, a2, a3);
  sub_9F94();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_47A30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_4948(&qword_19A480);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return sub_52E0(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_4948(&qword_19A350);
    v8 = a3[12];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[10] + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_47B30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_4948(&qword_19A480);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[10] + 24) = (a2 - 1);
      return result;
    }

    v9 = sub_4948(&qword_19A350);
    v10 = a4[12];
  }

  return sub_53A8(a1 + v10, a2, a2, v9);
}

unint64_t sub_47C18()
{
  sub_24850();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_47DD4(319, &qword_19C0A0, type metadata accessor for Badge);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_248F4(319, &qword_19AE40, &qword_19AE48);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_248F4(319, &qword_19C0A8, &unk_19C0B0);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          v1 = sub_18A28();
          if (v9 <= 0x3F)
          {
            sub_47DD4(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
            v1 = v10;
            if (v11 <= 0x3F)
            {
              sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
              v1 = v12;
              if (v13 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_47DD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

__n128 sub_47E40@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *(v2 - 160);
  v5 = *(v2 - 144);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 - 128);
  return result;
}

void sub_47E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_4948(&qword_19A480);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Badge();
  __chkstk_darwin(v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  sub_4948(&qword_19C150);
  sub_13B5E4();

  if (v17)
  {
    sub_9414(&v16, v18);
    sub_486B0();
    (*(v11 + 384))(v18, a3);
    sub_3C04(v18);
  }

  else
  {
    sub_CC68(&v16, &qword_19E960);
  }

  swift_getKeyPath();
  sub_13B5E4();

  if (v17)
  {
    sub_9414(&v16, v18);
    sub_486B0();
    (*(v12 + 384))(v18, a3);
    sub_3C04(v18);
  }

  else
  {
    sub_CC68(&v16, &qword_19E960);
  }

  swift_getKeyPath();
  sub_48694();

  v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_showSeparator] = v18[0];
  swift_getKeyPath();
  sub_13B5E4();

  if (sub_52E0(v7, 1, v8) == 1)
  {
    sub_CC68(v7, &qword_19A480);
  }

  else
  {
    sub_48630(v7, v10);
    sub_31DEC(v10);
    sub_30B74(v10);
  }

  swift_getKeyPath();
  sub_48694();

  if (v18[0])
  {
    sub_4916C(v18[0], a3);
  }

  v13 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_titleLabel];
  swift_getKeyPath();
  sub_48694();

  (*(&stru_158.size + (swift_isaMask & *v13)))(v18, a3);
  sub_3C04(v18);
  v14 = [v3 contentView];
  swift_getKeyPath();
  sub_48694();

  if (v18[1])
  {
    v15 = sub_13BB54();
  }

  else
  {
    v15 = 0;
  }

  [v14 setAccessibilityLabel:v15];
}

uint64_t sub_482C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleFocusedComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_48328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleFocusedComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_48390(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_483E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_48460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_484DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_485E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_48630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Badge();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_48694()
{

  return sub_13B5E4();
}

id sub_486C8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_badgeView;
  *&v5[v10] = [objc_allocWithZone(type metadata accessor for BadgeView()) init];
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_detailLabel;
  sub_139BB4();
  v12 = objc_opt_self();
  v13 = [v12 ams_primaryText];
  v14 = sub_13A2A4();
  *(&v34 + 1) = v14;
  v35 = &protocol witness table for FontSource;
  v15 = sub_CC08(&v33);
  *v15 = UIFontTextStyleSubheadline;
  v15[1] = *&UIFontWeightMedium;
  v16 = enum case for FontUseCase.preferredFontDerivative(_:);
  v17 = sub_13A3E4();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  v18 = *(*(v14 - 8) + 104);
  (v18)(v15, enum case for FontSource.useCase(_:), v14);
  v19 = UIFontTextStyleSubheadline;
  *&v5[v11] = sub_4AD94();
  v20 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_infoLabel;
  v21 = [v12 ams_secondaryText];
  *(&v34 + 1) = v14;
  v35 = &protocol witness table for FontSource;
  *sub_CC08(&v33) = UIFontTextStyleCaption1;
  v18();
  v22 = UIFontTextStyleCaption1;
  *&v5[v20] = sub_4AD94();
  v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_showSeparator] = 1;
  v23 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_titleLabel;
  v24 = [v12 ams_primaryText];
  *(&v34 + 1) = v14;
  v35 = &protocol witness table for FontSource;
  *sub_CC08(&v33) = UIFontTextStyleHeadline;
  v18();
  v25 = UIFontTextStyleHeadline;
  *&v5[v23] = sub_139BA4();
  v26 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_gridView;
  type metadata accessor for ServicesGridView();
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  *&v5[v26] = sub_117788(0, 1, &v33, 0, 0, 1, 0, 1, v31);
  v27 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_separator;
  *&v5[v27] = [objc_allocWithZone(AMSUICommonView) init];
  v30.receiver = v5;
  v30.super_class = type metadata accessor for BundleFocusedComponent();
  v28 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  sub_49E20();

  return v28;
}

uint64_t sub_48A48()
{
  v1 = sub_13A314();
  sub_9E94();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for BundleFocusedComponent();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v8 = [v0 contentView];
  [v8 bounds];
  sub_1D3D0();

  sub_27C54();
  sub_1D4AC();
  sub_1D3D0();
  sub_49210(v11);
  sub_162F0(v11, v11[3]);
  v9 = [v0 contentView];
  sub_13A544();

  (*(v3 + 8))(v7, v1);
  return sub_3C04(v11);
}

double sub_48C10(double a1, double a2, float a3)
{
  sub_27C54();
  sub_13BE64();
  sub_49210(v10);
  sub_162F0(v10, v10[3]);
  v6 = [v3 contentView];
  sub_13A394();

  sub_27C54();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v8 = a1;
  }

  else
  {
    v8 = v7;
  }

  sub_3C04(v10);
  return v8;
}

id sub_48DA0()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BundleFocusedComponent();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  sub_4ACC4();
  (*(v1 + 392))();
  sub_4ACC4();
  (*(v2 + 392))();
  sub_4ACC4();
  (*(v3 + 392))();
  sub_117FB4();
  sub_4ACC4();
  (*(v4 + 392))();
  return [*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_separator] setHidden:1];
}

void sub_48F80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_139A34();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for BundleFocusedComponent();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  if (!_UISolariumEnabled() || ((*(v6 + 104))(v10, enum case for FlagKeys.Solarium(_:), v4), v11 = sub_139A24(), (*(v6 + 8))(v10, v4), (v11 & 1) == 0))
  {
    v12 = [v2 contentView];
    v13 = [objc_opt_self() ams_shadow];
    v14 = [v13 CGColor];

    v15 = sub_4AD60();
    sub_12BE00(v14, v15, v16, v17, v18);
  }
}

uint64_t sub_4916C(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    v4 = result;
    [*(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_separator) setHidden:(*(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_showSeparator) & 1) == 0];
    v5 = sub_4C488(v4);
    sub_1180F8(v5, a2);
  }

  return result;
}

uint64_t sub_49210@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v88 = sub_13A4C4();
  sub_9E94();
  v111 = v3;
  __chkstk_darwin(v4);
  sub_9EC0();
  v102 = v6 - v5;
  v100 = sub_13A454();
  sub_9E94();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_9EC0();
  v12 = v11 - v10;
  v13 = sub_13A4B4();
  v103 = *(v13 - 8);
  v15 = v103;
  v14 = v103;
  __chkstk_darwin(v13);
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v109 = &v81 - v18;
  v94 = sub_4948(&qword_19AFE8);
  v92 = *(v14 + 72);
  v93 = *(v15 + 80);
  v83 = (v93 + 32) & ~v93;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  v119 = v19;
  v91 = sub_20068();
  v90 = sub_4948(&qword_19AFF0);
  v89 = sub_1D268();
  v82 = v13;
  sub_13BF64();
  sub_4948(&qword_19AFE0);
  v20 = *(sub_13A4F4() - 8);
  v106 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v85 = v22;
  *(v22 + 16) = xmmword_142F10;
  v98 = v22 + v21;
  v23 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_titleLabel);
  v87 = sub_139BB4();
  v120 = v87;
  v121 = &protocol witness table for UIView;
  v119 = v23;
  v117 = &type metadata for CGFloat;
  v118 = &protocol witness table for CGFloat;
  v115 = 0;
  v116 = 0;
  v113 = 0u;
  v114 = 0u;
  v95 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v24 = v8;
  v25 = *(v8 + 104);
  v105 = v8 + 104;
  v108 = v25;
  v26 = v12;
  v27 = v100;
  (v25)(v12);
  v110 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v28 = v111;
  v97 = *(v111 + 104);
  v107 = v111 + 104;
  v29 = v102;
  v30 = v88;
  v97(v102);
  v31 = v23;
  sub_2A268();
  sub_13A4E4();
  v32 = *(v28 + 8);
  v111 = v28 + 8;
  v104 = v32;
  v33 = v30;
  v32(v29, v30);
  v96 = *(v24 + 8);
  v96(v26, v27);
  v101 = v24 + 8;
  sub_1D2CC(&v113);
  sub_4AD04();
  v99 = v2;
  v34 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_detailLabel);
  sub_217E8();
  v120 = v35;
  v121 = v36;
  v119 = v34;
  v118 = &protocol witness table for CGFloat;
  v117 = &type metadata for CGFloat;
  v37 = sub_4ACB0(0x4022000000000000);
  v38 = v95;
  v39 = v27;
  v108(v37, v95, v27);
  v40 = v29;
  v41 = v97;
  (v97)(v29, v110, v33);
  v42 = v34;
  v43 = v106;
  v44 = v98;
  sub_2A268();
  sub_13A4E4();
  v104(v40, v33);
  v45 = v96;
  v96(v26, v39);
  sub_1D2CC(&v113);
  sub_4AD04();
  v46 = v99;
  v47 = *(v99 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_infoLabel);
  *&v81 = v44 + 2 * v43;
  sub_217E8();
  v120 = v48;
  v121 = v49;
  v119 = v47;
  v118 = &protocol witness table for CGFloat;
  v117 = &type metadata for CGFloat;
  v50 = sub_4ACB0(0x4024000000000000);
  v51 = v39;
  v108(v50, v38, v39);
  v52 = v102;
  v53 = v88;
  (v41)(v102, v110, v88);
  v54 = v47;
  sub_2A268();
  sub_13A4E4();
  v104(v52, v53);
  v55 = v51;
  v45(v26, v51);
  sub_1D2CC(&v113);
  sub_4AD04();
  v87 = 3 * v106;
  v56 = *(v46 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_badgeView);
  v120 = type metadata accessor for BadgeView();
  v121 = &protocol witness table for UIView;
  v119 = v56;
  v118 = &protocol witness table for CGFloat;
  v117 = &type metadata for CGFloat;
  v115 = 0;
  v116 = 0x4020000000000000;
  v113 = 0u;
  v114 = 0u;
  v57 = v95;
  v58 = v108;
  v108(v26, v95, v55);
  v59 = v97;
  (v97)(v52, v110, v53);
  v60 = v56;
  v61 = v98;
  sub_217E8();
  sub_2A268();
  sub_13A4E4();
  v62 = v53;
  v104(v52, v53);
  v63 = v100;
  v64 = v96;
  v96(v26, v100);
  sub_1D2CC(&v113);
  sub_4AD04();
  v87 = v61 + 4 * v106;
  sub_49D6C();
  v118 = &protocol witness table for CGFloat;
  v117 = &type metadata for CGFloat;
  v65 = sub_4ACB0(0x4028000000000000);
  v58(v65, v57, v63);
  v66 = v102;
  (v59)(v102, v110, v53);
  v67 = sub_4ACD4();
  v81 = xmmword_140280;
  *(v67 + 16) = xmmword_140280;
  sub_13A484();
  v112 = v67;
  v68 = v84;
  sub_4AD30();
  v69 = v82;
  sub_4AD74();
  sub_2A268();
  sub_217E8();
  sub_13A4E4();
  v70 = *(v103 + 8);
  v103 += 8;
  v87 = v70;
  v70(v68, v69);
  v71 = v104;
  v104(v66, v62);
  v64(v26, v63);
  sub_1D2CC(&v113);
  sub_3C04(&v119);
  sub_3C04(&v116);
  v106 *= 5;
  v72 = *(v99 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_gridView);
  v120 = type metadata accessor for ServicesGridView();
  v121 = &protocol witness table for UIView;
  v119 = v72;
  v118 = &protocol witness table for CGFloat;
  v117 = &type metadata for CGFloat;
  v73 = sub_4ACB0(0x4020000000000000);
  v108(v73, v95, v63);
  (v97)(v66, v110, v62);
  v74 = sub_4ACD4();
  *(v74 + 16) = v81;
  v75 = v72;
  sub_13A484();
  v112 = v74;
  sub_4AD30();
  sub_4AD74();
  sub_2A268();
  sub_13A4E4();
  v76 = v68;
  v77 = v87;
  (v87)(v76, v69);
  v71(v66, v62);
  v96(v26, v100);
  sub_1D2CC(&v113);
  sub_4AD04();
  v78 = sub_13A514();
  v79 = v86;
  v86[3] = v78;
  v79[4] = &protocol witness table for VerticalFlowLayout;
  v79[5] = &protocol witness table for VerticalFlowLayout;
  sub_CC08(v79);
  sub_13A4D4();
  return v77(v109, v69);
}

uint64_t sub_49D6C()
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

void sub_49E20()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = sub_3F15C();
  if (qword_199EA0 != -1)
  {
    swift_once();
  }

  [v9 setBackgroundColor:qword_19C158];

  v10 = sub_3F15C();
  v11 = [v10 layer];

  if (qword_199EA8 != -1)
  {
    swift_once();
  }

  [v11 setCornerRadius:*&qword_19C160];

  v12 = sub_3F15C();
  v13 = [v12 layer];

  if (qword_199EB8 != -1)
  {
    swift_once();
  }

  [v13 setBorderWidth:*&qword_19C170];

  v14 = sub_3F15C();
  v15 = [v14 layer];

  if (qword_199EB0 != -1)
  {
    swift_once();
  }

  [v15 setBorderColor:qword_19C168];

  if (!_UISolariumEnabled() || ((*(v4 + 104))(v8, enum case for FlagKeys.Solarium(_:), v2), v16 = sub_139A24(), (*(v4 + 8))(v8, v2), (v16 & 1) == 0))
  {
    v17 = sub_3F15C();
    v18 = [objc_opt_self() ams_shadow];
    v19 = [v18 CGColor];

    v20 = sub_4AD60();
    sub_12BE00(v19, v20, v21, v22, v23);
  }

  v24 = sub_3F15C();
  [v24 addSubview:*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_titleLabel)];

  v25 = sub_3F15C();
  sub_4AD48(v25, OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_detailLabel);

  v26 = sub_3F15C();
  sub_4AD48(v26, OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_infoLabel);

  v27 = sub_3F15C();
  sub_4AD48(v27, OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_badgeView);

  v28 = sub_3F15C();
  sub_4AD48(v28, OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_separator);

  v29 = sub_3F15C();
  sub_4AD48(v29, OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_gridView);

  sub_4A2A0();
  sub_4A260();
  v30 = sub_3F15C();
  [v30 setIsAccessibilityElement:1];

  v31 = sub_3F15C();
  [v31 setAccessibilityTraits:UIAccessibilityTraitNone];
}

id sub_4A2A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22BundleFocusedComponent_separator);
  if (qword_199EC0 != -1)
  {
    swift_once();
  }

  [v1 setBackgroundColor:qword_19C178];

  return [v1 setHidden:1];
}

id sub_4A370()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleFocusedComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_4A454()
{
  v0 = sub_139A34();
  sub_9E94();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  v7 = sub_1D4CC();
  swift_getObjectType();
  v8 = sub_BBC00();
  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = 200.0;
  }

  else
  {
    v9 = 32.0;
  }

  if (_UISolariumEnabled() && ((*(v2 + 104))(v6, enum case for FlagKeys.Solarium(_:), v0), v10 = sub_139A24(), (*(v2 + 8))(v6, v0), (v10 & 1) != 0))
  {
    [sub_1D4CC() contentSize];
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = sub_1D4CC();
    swift_getObjectType();
    sub_BBC90();
    v15 = v14;
    swift_unknownObjectRelease();
    v16 = v12 - (v15 + v15);
  }

  else
  {
    [sub_1D4CC() contentSize];
    v18 = v17;
    swift_unknownObjectRelease();
    v16 = v18 - v9;
  }

  if (v16 <= 360.0)
  {
    v19 = v16;
  }

  else
  {
    v19 = 360.0;
  }

  v20 = objc_opt_self();
  v21 = [v20 absoluteDimension:v19];
  v22 = [v20 estimatedDimension:200.0];
  v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

  return v23;
}

void sub_4A6C8()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), (*(v1 + 8))(v3, v0), (v5 & 1) != 0))
  {
    v6 = &selRef_ams_quaternarySystemFillColor;
  }

  else
  {
    v6 = &selRef_ams_componentBackground;
  }

  v7 = [v4 *v6];
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v8 = sub_139A24(), (*(v1 + 8))(v3, v0), (v8 & 1) != 0))
  {
    v9 = [v4 ams_quaternarySystemFillColor];
  }

  else
  {
    v10 = [v4 systemGrayColor];
    v9 = [v10 colorWithAlphaComponent:0.1];
  }

  v11 = [v4 ams_dynamicColorWithLightColor:v7 darkColor:v9];

  qword_19C158 = v11;
}

uint64_t sub_4A8E4()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 18.0;
  }

  qword_19C160 = *&v6;
  return result;
}

void sub_4A9E8()
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
    v6 = [objc_opt_self() ams_clear];
  }

  v7 = [v6 CGColor];

  qword_19C168 = v7;
}

uint64_t sub_4AB70()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 1.0, (v5 & 1) == 0))
  {
    v6 = 0.0;
  }

  qword_19C170 = *&v6;
  return result;
}

id sub_4AC74()
{
  result = [objc_opt_self() ams_mediaBorder];
  qword_19C178 = result;
  return result;
}

uint64_t sub_4ACB0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 176) = 0;
  *(v2 - 168) = a1;
  *(v2 - 208) = 0u;
  *(v2 - 192) = 0u;
  return v1;
}

uint64_t sub_4ACD4()
{

  return swift_allocObject();
}

uint64_t sub_4AD04()
{
  sub_3C04(v0 - 168);

  return sub_3C04(v0 - 128);
}

id sub_4AD48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + a2);
  v6 = *(v3 + 3576);

  return [a1 v6];
}

uint64_t sub_4AD74()
{

  return sub_13BF64();
}

uint64_t sub_4AD94()
{

  return sub_139BA4();
}

uint64_t type metadata accessor for BundleList()
{
  result = qword_19C240;
  if (!qword_19C240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_4AE48()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_4AEF0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v52 = a3;
  v54 = sub_13B584();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v48 - v11;
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  sub_139BD4();
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  inited = swift_initStackObject();
  sub_139DC4();
  v55 = swift_initStackObject();
  sub_BB310();
  v51 = v9;
  if (v3)
  {

    v15 = 0;
    v16 = 0;
  }

  else
  {
    sub_4BF80();
    v15 = sub_395B0();
    v16 = v15;
  }

  v60[2] = v15;
  __chkstk_darwin(v15);
  *(&v48 - 2) = v67;
  sub_9DB8(0x6B726F77747261, 0xE700000000000000, &type metadata for BundledServiceListItem, sub_4BE58, (&v48 - 4), v17, v18, v19);
  v48 = v16;
  v49 = v6;
  v60[3] = v20;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_4C420();
    sub_4BE60(v21, v22);
    sub_9F18();
    *v23 = 0x7470697263736564;
    v23[1] = 0xEB000000006E6F69;
    v23[2] = &type metadata for BundledServiceListItem;
    sub_2B538();
    (*(v24 + 104))();
    swift_willThrow();

    v25 = *(v49 + 1);
    v26 = v54;
    v25(a1, v54);
    v25(v14, v26);
    v27 = v48;
    sub_13B5A4();
    sub_5224();
    (*(v28 + 8))(v67);

    return sub_184DC(v62, &unk_19E320);
  }

  else
  {
    sub_139DB4();
    v30 = *(v49 + 1);
    v30(v14, v54);
    sub_9414(v56, &v57);
    sub_9414(&v57, &v61);
    v31 = sub_BB310();
    v49 = v30;
    v60[0] = v31;
    v60[1] = v32;
    v33 = v50;
    sub_13B594();
    if (sub_13B564())
    {
      sub_13BAB4();
      sub_4C420();
      sub_4BE60(v34, v35);
      sub_9F18();
      *v36 = 0xD000000000000010;
      v36[1] = 0x800000000014F5E0;
      v36[2] = &type metadata for BundledServiceListItem;
      sub_2B538();
      (*(v37 + 104))();
      swift_willThrow();
      v49(v33, v54);

      v59 = 0;
      v57 = 0u;
      v58 = 0u;
    }

    else
    {
      sub_139BC4();
      v49(v33, v54);
      sub_9414(v56, &v57);
    }

    sub_4BEA8(&v57, v62);
    v38 = v51;
    sub_13B594();
    if (sub_13B564())
    {
      v40 = sub_13BAB4();
      sub_4C420();
      sub_4BE60(v41, v42);
      sub_9F18();
      *v43 = 0x656C746974;
      v43[1] = 0xE500000000000000;
      v43[2] = &type metadata for BundledServiceListItem;
      sub_2B538();
      (*(v44 + 104))();
      swift_willThrow();

      v45 = sub_4C460();
      MEMORY[0x656C746974](v45);
      MEMORY[0x656C746974](v38, v40);

      v59 = 0;
      v57 = 0u;
      v58 = 0u;
    }

    else
    {
      v39 = v55;
      sub_139DB4();

      v47 = sub_4C460();
      MEMORY[0x656C746974](v47);
      MEMORY[0x656C746974](v38, v39);
      sub_9414(v56, &v57);
    }

    v64 = v57;
    v65 = v58;
    v66 = v59;
    sub_4BF18(v60, v52);
    sub_13B5A4();
    sub_5224();
    (*(v46 + 8))(v67);
    return sub_4BF50(v60);
  }
}

uint64_t sub_4B73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v61 = a3;
  v5 = sub_4948(&qword_19A420);
  __chkstk_darwin(v5 - 8);
  v7 = v57 - v6;
  v71 = sub_13B584();
  sub_9E94();
  v65 = v8;
  __chkstk_darwin(v9);
  v62 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v12 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v13);
  v15 = v57 - v14;
  v16 = type metadata accessor for BundleList();
  sub_9F94();
  __chkstk_darwin(v17);
  v19 = (v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_139BD4();
  inited = swift_initStackObject();
  v20 = sub_BB310();
  if (v3)
  {

    v20 = 0;
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  *v19 = v20;
  v19[1] = v22;
  v23 = sub_BB310();
  v58 = 0;
  v57[1] = v22;
  *&v68 = v23;
  *(&v68 + 1) = v24;
  sub_13BFB4();
  sub_13B594();
  v25 = sub_13B564();
  v59 = a1;
  if (v25)
  {
    goto LABEL_7;
  }

  sub_7738();
  if (sub_52E0(v7, 1, v12) == 1)
  {
    sub_184DC(v7, &qword_19A420);
LABEL_7:
    sub_13BAB4();
    sub_4C420();
    sub_4BE60(v26, v27);
    swift_allocError();
    *v28 = 0xD000000000000011;
    v28[1] = 0x800000000014E730;
    v28[2] = v16;
    sub_2B538();
    (*(v29 + 104))();
    swift_willThrow();
    v30 = sub_4C448();
    v31(v30);

    v32 = sub_13B7A4();
    sub_53A8(v15, 1, 1, v32);
    v33 = 0;
    goto LABEL_9;
  }

  v34 = sub_4C448();
  v35(v34);
  sub_92E4(v7, v15);
  v33 = v58;
LABEL_9:
  sub_92E4(v15, v19 + *(v16 + 28));
  sub_13B594();
  v36 = sub_13B564();
  v37 = v64;
  if ((v36 & 1) == 0)
  {
    sub_139BC4();
    if (!v33)
    {
      v55 = sub_4C474();
      v56(v55);
      v44 = sub_9414(v66, &v68);
      goto LABEL_13;
    }

    v67 = 0;
    memset(v66, 0, sizeof(v66));
    sub_184DC(v66, &unk_19E320);
  }

  sub_13BAB4();
  sub_4C420();
  sub_4BE60(v38, v39);
  sub_9F18();
  *v40 = 0x6575676573;
  v40[1] = 0xE500000000000000;
  v40[2] = v16;
  sub_2B538();
  (*(v41 + 104))();
  swift_willThrow();
  v42 = sub_4C474();
  v43(v42);

  v70 = 0;
  v68 = 0u;
  v69 = 0u;
LABEL_13:
  v45 = v19 + *(v16 + 32);
  v46 = v69;
  *v45 = v68;
  *(v45 + 1) = v46;
  *(v45 + 4) = v70;
  __chkstk_darwin(v44);
  v57[-2] = v37;
  v47 = v59;
  sub_9DB8(0x7365636976726573, 0xE800000000000000, v16, sub_4BFC4, &v57[-4], v48, v49, v50);
  v52 = v51;
  v60(v47, v71);
  v19[2] = v52;
  sub_4BFF0(v19, v61);
  sub_13B5A4();
  sub_5224();
  (*(v53 + 8))(v37);
  return sub_4C054(v19);
}

uint64_t sub_4BE60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4BEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&unk_19E320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_4BF80()
{
  result = qword_19B790;
  if (!qword_19B790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19B790);
  }

  return result;
}

uint64_t sub_4BFC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39ADC();
  *a1 = result;
  return result;
}

uint64_t sub_4BFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4C054(uint64_t a1)
{
  v2 = type metadata accessor for BundleList();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4C0B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_4C0C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_4C108(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_4C190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
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

uint64_t sub_4C238(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 28);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_4C2C4()
{
  sub_4C3C8(319, &qword_19AE28, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_4C3C8(319, &unk_19C250, &type metadata for BundledServiceListItem, &type metadata accessor for Array);
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

void sub_4C3C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_4C438()
{
  *(v0 + 96) = 0;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

uint64_t sub_4C448()
{
  result = v0;
  *(v1 - 240) = *(*(v1 - 200) + 8);
  return result;
}

unint64_t *sub_4C488(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = &_swiftEmptyArrayStorage;
    sub_4CF5C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_4D8D4(v4, v11);
      v12 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_4CF5C((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for MarketingItemService;
      v10 = &off_18B6B8;
      *&v8 = swift_allocObject();
      sub_4D8D4(v11, v8 + 16);
      v2[2] = v6 + 1;
      sub_9414(&v8, &v2[5 * v6 + 4]);
      sub_4D9A0(v11);
      v4 += 152;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_4C5B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = &_swiftEmptyArrayStorage;
    sub_4CF5C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_4BF18(v4, v11);
      v12 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_4CF5C((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for BundledServiceListItem;
      v10 = &off_187908;
      *&v8 = swift_allocObject();
      sub_4BF18(v11, v8 + 16);
      v2[2] = v6 + 1;
      sub_9414(&v8, &v2[5 * v6 + 4]);
      sub_4BF50(v11);
      v4 += 152;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_4C6E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_13C0C4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v21 = _swiftEmptyArrayStorage;
  result = sub_4D02C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v21;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_13C004();
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = type metadata accessor for ServiceDetailView();
      v19 = v8;
      v20 = &protocol witness table for UIView;
      v18[0] = v7;
      v21 = v3;
      v10 = v3[2];
      v9 = v3[3];
      if (v10 >= v9 >> 1)
      {
        sub_4D02C((v9 > 1), v10 + 1, 1);
        v11 = v19;
        v12 = v20;
      }

      else
      {
        v11 = v8;
        v12 = &protocol witness table for UIView;
      }

      ++v5;
      v13 = sub_4D884(v18, v11);
      v14 = __chkstk_darwin(v13);
      v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16, v14);
      sub_4D7EC(v10, v16, &v21, v11, v12);
      sub_3C04(v18);
      v3 = v21;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_4C8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_4948(&qword_19C2E0);
  sub_13B5E4();

  v5 = sub_4C5B4(v8);

  sub_1180F8(v5, a3);

  sub_117FF4();
  v6 = [v3 contentView];
  swift_getKeyPath();
  sub_13B5E4();

  if (v9)
  {
    v7 = sub_13BB54();
  }

  else
  {
    v7 = 0;
  }

  [v6 setAccessibilityLabel:v7];
}

uint64_t sub_4CA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleListComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_4CA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BundleListComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_4CAEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_4CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_4CBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_4CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_4CD44(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_4CDA4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return sub_4D9F4(a3, result);
  }

  return result;
}

char *sub_4CDCC(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_4CDF4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_4D9F4(a3, result);
  }

  return result;
}

char *sub_4CE14(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_4D9F4(a3, result);
  }

  return result;
}

char *sub_4CE3C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_4D9F4(a3, result);
  }

  return result;
}

char *sub_4CE5C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_4D9F4(a3, result);
  }

  return result;
}

uint64_t sub_4CE94(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_4DA04();

    return _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_4DA04();

    return _swift_arrayInitWithTakeBackToFront(v9);
  }

  return result;
}

void *sub_4CF5C(void *a1, int64_t a2, char a3)
{
  result = sub_4D1F0(a1, a2, a3, *v3, &qword_19C2E8, &unk_143168, &qword_19C2F0);
  *v3 = result;
  return result;
}

uint64_t sub_4CF9C()
{

  sub_3C04(v0 + 48);
  if (*(v0 + 112))
  {
    sub_3C04(v0 + 88);
  }

  if (*(v0 + 152))
  {
    sub_3C04(v0 + 128);
  }

  return _swift_deallocObject(v0, 168, 7);
}

char *sub_4D00C(char *a1, int64_t a2, char a3)
{
  result = sub_4D0F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_4D02C(void *a1, int64_t a2, char a3)
{
  result = sub_4D1F0(a1, a2, a3, *v3, &qword_19C300, &unk_143180, &qword_19C308);
  *v3 = result;
  return result;
}

size_t sub_4D06C(size_t a1, int64_t a2, char a3)
{
  result = sub_4D328(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_4D08C(char *a1, int64_t a2, char a3)
{
  result = sub_4D4F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_4D0AC(char *a1, int64_t a2, char a3)
{
  result = sub_4D5F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_4D0CC(char *a1, int64_t a2, char a3)
{
  result = sub_4D6F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_4D0F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_4948(&qword_19C310);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_4D1F0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_4948(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || &a4[5 * v12 + 4] <= v14 + 4)
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_4948(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_4D328(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_4948(&qword_19C2F8);
  v10 = *(type metadata accessor for BundleDetail() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for BundleDetail() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_4CE94(a4 + v16, v8, v13 + v16, type metadata accessor for BundleDetail);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_4D4F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_4948(&qword_19C318);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_4D5F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_4948(&qword_19C328);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_4D6F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_4948(&qword_19C320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_4D7EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_CC08(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_9414(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_4D884(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_4D930()
{

  sub_3C04(v0 + 48);
  if (*(v0 + 112))
  {
    sub_3C04(v0 + 88);
  }

  if (*(v0 + 152))
  {
    sub_3C04(v0 + 128);
  }

  return _swift_deallocObject(v0, 168, 7);
}

id sub_4DA18(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleListComponent_servicesGrid;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v10 = type metadata accessor for ServicesGridView();
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v11 = objc_allocWithZone(v10);
  v20[3] = &type metadata for Double;
  v20[4] = &protocol witness table for Double;
  v19[4] = &protocol witness table for Double;
  v20[0] = 0;
  v19[3] = &type metadata for Double;
  v19[0] = 0x4030000000000000;
  *&v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_columns] = 1;
  v12 = &v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView];
  *v12 = 0;
  v12[1] = 0;
  *&v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViews] = &_swiftEmptyArrayStorage;
  v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_serviceViewState] = 0;
  sub_4B14(v19, &v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_rowSpacing]);
  *&v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_artworkSize] = vdupq_n_s64(0x4044000000000000uLL);
  v13 = &v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics];
  sub_4B14(v20, &v11[OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_metrics]);
  sub_4F14C(v23, (v13 + 48));
  sub_4F1A8(v21, (v13 + 88));
  sub_4B14(v19, (v13 + 128));
  v13[40] = 1;
  v13[168] = 0;
  *(v13 + 22) = 1;
  v13[184] = 0;
  v18.receiver = v11;
  v18.super_class = v10;
  v14 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_4F204(v21);
  sub_4F258(v23);
  sub_3C04(v19);
  sub_3C04(v20);
  *&v4[v9] = v14;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for BundleListComponent();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_4DCD8();

  return v15;
}

uint64_t sub_4DC44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleListComponent();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  return sub_117FB4();
}

void sub_4DCD8()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = [v0 contentView];
  if (qword_199EC8 != -1)
  {
    swift_once();
  }

  [v9 setBackgroundColor:qword_19C330];

  v10 = sub_3F15C();
  if (qword_199EE0 != -1)
  {
    swift_once();
  }

  sub_127EDC(*&qword_19C348);

  v11 = sub_3F15C();
  v12 = [v11 layer];

  if (qword_199ED8 != -1)
  {
    swift_once();
  }

  [v12 setBorderWidth:*&qword_19C340];

  v13 = sub_3F15C();
  v14 = [v13 layer];

  if (qword_199ED0 != -1)
  {
    swift_once();
  }

  [v14 setBorderColor:qword_19C338];

  if (!_UISolariumEnabled() || ((*(v4 + 104))(v8, enum case for FlagKeys.Solarium(_:), v2), v15 = sub_139A24(), (*(v4 + 8))(v8, v2), (v15 & 1) == 0))
  {
    v16 = sub_3F15C();
    v17 = [objc_opt_self() ams_shadow];
    v18 = [v17 CGColor];

    sub_12BE00(v18, 7.0, 1.0, 0.0, 3.0);
  }

  v19 = sub_3F15C();
  v20 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleListComponent_servicesGrid];
  [v19 addSubview:v20];

  v21 = (v20 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView);
  v22 = *(v20 + OBJC_IVAR____TtC20StoreDynamicUIPlugin16ServicesGridView_onConfigureServiceView);
  *v21 = sub_4E090;
  v21[1] = 0;
  sub_C9FC(v22);
  v23 = sub_3F15C();
  [v23 setIsAccessibilityElement:1];

  v24 = sub_3F15C();
  [v24 setAccessibilityTraits:UIAccessibilityTraitNone];
}

uint64_t sub_4E090(uint64_t a1)
{
  v2 = sub_13A2A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = &type metadata for Double;
  v25 = &protocol witness table for Double;
  *&v23 = 0x4030000000000000;
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_spacingDimension;
  swift_beginAccess();
  sub_3C04(a1 + v6);
  sub_21520(&v23, a1 + v6);
  swift_endAccess();
  *v5 = UIFontTextStyleCaption1;
  v7 = *(v3 + 104);
  v20[1] = enum case for FontSource.textStyle(_:);
  (v7)(v5, enum case for FontSource.textStyle(_:), v2);
  v8 = v7;
  v24 = sub_13A434();
  v25 = &protocol witness table for StaticDimension;
  sub_CC08(&v23);
  v22[3] = v2;
  v22[4] = &protocol witness table for FontSource;
  v9 = sub_CC08(v22);
  (*(v3 + 16))(v9, v5, v2);
  v21 = UIFontTextStyleCaption1;
  sub_13A444();
  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailTop;
  swift_beginAccess();
  sub_3C04(a1 + v10);
  sub_21520(&v23, a1 + v10);
  swift_endAccess();
  v11 = *(a1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_titleLabel);
  (*&stru_B8.sectname[swift_isaMask & *v11])(4);
  v12 = objc_opt_self();
  v13 = [v12 ams_primaryText];
  (*&stru_B8.segname[(swift_isaMask & *v11) + 8])(v13);
  v24 = v2;
  v25 = &protocol witness table for FontSource;
  *sub_CC08(&v23) = UIFontTextStyleBody;
  v8();
  v14 = *(&stru_B8.reloff + (swift_isaMask & *v11));
  v15 = UIFontTextStyleBody;
  v14(&v23);
  v16 = *(a1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailLabel);
  (*&stru_B8.sectname[swift_isaMask & *v16])(4);
  v17 = [v12 ams_secondaryText];
  (*&stru_B8.segname[(swift_isaMask & *v16) + 8])(v17);
  v24 = v2;
  v25 = &protocol witness table for FontSource;
  v18 = sub_CC08(&v23);
  *v18 = v21;
  v8();
  return (*(&stru_B8.reloff + (swift_isaMask & *v16)))(&v23);
}

uint64_t sub_4E498()
{
  v1 = v0;
  v2 = sub_13A314();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for BundleListComponent();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v9 = [v1 contentView];
  [v9 bounds];
  sub_1D3D0();

  sub_27C54();
  sub_13BE34();
  sub_1D3D0();
  v10 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleListComponent_servicesGrid];
  v14[3] = type metadata accessor for ServicesGridView();
  v14[4] = &protocol witness table for UIView;
  v14[0] = v10;
  v11 = v10;
  v12 = [v1 contentView];
  sub_4F04C(1, v12, v14);
  sub_13A2E4();

  sub_4EFF8(v14);
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_4E6A4()
{
  sub_27C54();
  sub_13BE64();
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin19BundleListComponent_servicesGrid];
  v6 = type metadata accessor for ServicesGridView();
  v7 = &protocol witness table for UIView;
  v5[0] = v1;
  v2 = v1;
  v3 = [v0 contentView];
  sub_162F0(v5, v6);
  sub_13A384();

  sub_4EFF8(v5);
  sub_27C54();
  return sub_13BE74();
}

id sub_4E880()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleListComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_4E8E8(void *a1)
{
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  if (_UISolariumEnabled() && ((*(v4 + 104))(v8, enum case for FlagKeys.Solarium(_:), v2), v9 = sub_139A24(), (*(v4 + 8))(v8, v2), (v9 & 1) != 0))
  {
    [objc_msgSend(a1 "container")];
    swift_unknownObjectRelease();
    sub_B84DC();
    v11 = v10;
  }

  else
  {
    v12 = [a1 container];
    swift_getObjectType();
    v13 = sub_BBC00();
    swift_unknownObjectRelease();
    if (v13)
    {
      v11 = 200.0;
    }

    else
    {
      v11 = 32.0;
    }
  }

  v14 = objc_opt_self();
  [objc_msgSend(a1 "container")];
  v16 = v15;
  swift_unknownObjectRelease();
  v17 = [v14 absoluteDimension:v16 - v11];
  v18 = [v14 estimatedDimension:200.0];
  v19 = [objc_opt_self() sizeWithWidthDimension:v17 heightDimension:v18];

  return v19;
}

id sub_4EB3C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = &selRef_ams_quaternarySystemFillColor;
  }

  else
  {
    v5 = &selRef_ams_componentBackground;
  }

  result = [objc_opt_self() *v5];
  qword_19C330 = result;
  return result;
}

void sub_4EC68()
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
    v6 = [objc_opt_self() ams_clear];
  }

  v7 = [v6 CGColor];

  qword_19C338 = v7;
}

uint64_t sub_4EDF0()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 1.0, (v5 & 1) == 0))
  {
    v6 = 0.0;
  }

  qword_19C340 = *&v6;
  return result;
}

uint64_t sub_4EEF4()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 18.0;
  }

  qword_19C348 = *&v6;
  return result;
}

double sub_4F04C(char a1, uint64_t a2, void *a3)
{
  sub_162F0(a3, a3[3]);
  sub_13A384();
  v6 = v5;
  if (a1)
  {
    sub_162F0(a3, a3[3]);
    sub_13BE44();
    sub_13A354();
  }

  return v6;
}

uint64_t type metadata accessor for BundleOption()
{
  result = qword_19C3E8;
  if (!qword_19C3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4F340(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_1840E0;
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

uint64_t sub_4F394(char a1)
{
  if (a1)
  {
    return 0x746365527674;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_4F3EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_4F340(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_4F41C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4F394(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_4F4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v136 = a3;
  sub_4948(&qword_19A420);
  sub_171D0();
  __chkstk_darwin(v6);
  v141 = &v132 - v7;
  v140 = sub_4948(&qword_19A350);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v8);
  v142 = &v132 - v9;
  sub_4948(&qword_19C030);
  sub_171D0();
  __chkstk_darwin(v10);
  v12 = &v132 - v11;
  v151 = sub_13B584();
  sub_9E94();
  v150 = v13;
  __chkstk_darwin(v14);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v15);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v16);
  v18 = &v132 - v17;
  __chkstk_darwin(v19);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v20);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v21);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v22);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v23);
  v24 = sub_4948(&qword_19A480);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v25);
  v27 = &v132 - v26;
  v28 = type metadata accessor for BundleOption();
  sub_9F94();
  __chkstk_darwin(v29);
  v149 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v147 = swift_initStackObject();
  v156 = a1;
  v31 = sub_BB310();
  if (v3)
  {

    v31 = 0;
    v32 = 0;
    v3 = 0;
  }

  v38 = v149;
  *v149 = v31;
  *(v38 + 1) = v32;
  v145 = v32;
  sub_6E84(0x536B726F77747261, 0xEB00000000657A69, v28, v33, v34, v35, v36, v37);
  v148 = a2;
  v138 = v18;
  v149[16] = v39 & 1;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_7F30();
  if (sub_52E0(v12, 1, v24) == 1)
  {
    sub_928C(v12, &qword_19C030);
LABEL_6:
    sub_13BAB4();
    sub_519C8();
    sub_51188(v40, v41);
    v42 = sub_18B70();
    sub_18BE4(v42, v43);
    *v44 = 0x6567646162;
    v44[1] = 0xE500000000000000;
    v44[2] = v28;
    sub_2B538();
    (*(v45 + 104))();
    v3 = &enum case for JSONError.missingProperty(_:);
    swift_willThrow();
    sub_51A50();
    v47 = *(v46 + 8);
    sub_51A5C();
    v47();

    v48 = type metadata accessor for Badge();
    sub_53A8(v27, 1, 1, v48);
    goto LABEL_8;
  }

  sub_51A50();
  v47 = *(v49 + 8);
  sub_51A5C();
  v47();
  sub_47868(v12, v27, &qword_19A480);
LABEL_8:
  v50 = v28[7];
  v51 = v149;
  sub_47868(v27, &v149[v50], &qword_19A480);
  sub_51A88();
  v52 = sub_BB310();
  v54 = v3;
  v55 = v148;
  if (v3)
  {

    sub_51A40();
    sub_51A5C();
    v47();

    v56 = 0;
    goto LABEL_40;
  }

  *&v152[0] = v52;
  *(&v152[0] + 1) = v53;
  sub_13BFB4();
  sub_13B594();
  v57 = sub_13B564();
  v135 = 0;
  if (v57)
  {
    goto LABEL_13;
  }

  v58 = v141;
  sub_7738();
  if (sub_52E0(v58, 1, v140) == 1)
  {
    sub_928C(v58, &qword_19A420);
LABEL_13:
    sub_13BAB4();
    sub_519C8();
    sub_51188(v59, v60);
    sub_9F18();
    *v61 = 0xD000000000000011;
    v61[1] = 0x800000000014E730;
    v61[2] = v28;
    sub_9EF8();
    (*(v62 + 104))();
    swift_willThrow();
    v63 = sub_519E0();
    (v47)(v63);

    v64 = sub_13B7A4();
    v65 = v142;
    sub_53A8(v142, 1, 1, v64);
    goto LABEL_15;
  }

  v66 = sub_519E0();
  (v47)(v66);
  v67 = v58;
  v65 = v142;
  sub_47868(v67, v142, &qword_19A350);
LABEL_15:
  sub_47868(v65, &v51[v28[16]], &qword_19A350);
  v68 = v143;
  sub_13B594();
  v69 = sub_13B564();
  v134 = v50;
  if (v69)
  {
    sub_13BAB4();
    sub_519C8();
    sub_51188(v71, v72);
    v73 = sub_18B70();
    sub_18BE4(v73, v74);
    *v75 = 1868983913;
    v75[1] = 0xE400000000000000;
    v75[2] = v28;
    sub_2B538();
    (*(v76 + 104))();
    v70 = v68;
    swift_willThrow();
    sub_51A40();
    sub_51A5C();
    v47();

    sub_51A20();
  }

  else
  {
    v70 = 0;
    sub_139DB4();
    sub_51A40();
    sub_51A5C();
    v47();
    sub_51AB0();
  }

  sub_519FC(&v51[v28[8]]);
  v77 = v144;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    sub_50878(v77, v148, v152);
    if (*(&v153 + 1))
    {
      sub_51A40();
      sub_51A5C();
      v47();
      v78 = v152[0];
      v79 = v152[1];
      v80 = v152[2];
      v81 = v152[3];
      v82 = v152[4];
      v83 = v152[5];
      v84 = v152[6];
      v85 = v153;
      v86 = v154;
      goto LABEL_23;
    }

    sub_928C(v152, &qword_19C388);
  }

  sub_13BAB4();
  sub_519C8();
  sub_51188(v87, v88);
  v89 = sub_18B70();
  sub_18BE4(v89, v90);
  strcpy(v91, "inlineButton");
  v91[13] = 0;
  *(v91 + 7) = -5120;
  *(v91 + 2) = v28;
  sub_2B538();
  (*(v92 + 104))();
  v70 = v77;
  swift_willThrow();
  sub_51A40();
  sub_51A5C();
  v47();

  v86 = 0;
  v78 = 0uLL;
  v79 = 0uLL;
  v80 = 0uLL;
  v81 = 0uLL;
  v82 = 0uLL;
  v83 = 0uLL;
  v84 = 0uLL;
  v85 = 0uLL;
LABEL_23:
  v93 = &v51[v28[9]];
  *v93 = v78;
  *(v93 + 1) = v79;
  *(v93 + 2) = v80;
  *(v93 + 3) = v81;
  *(v93 + 4) = v82;
  *(v93 + 5) = v83;
  *(v93 + 6) = v84;
  *(v93 + 7) = v85;
  *(v93 + 16) = v86;
  sub_51A88();
  v94 = sub_BB458();
  v50 = v134;
  if (v70)
  {

    v70 = 0;
    v94 = 1;
  }

  v51[17] = v94 & 1;
  v95 = sub_BB458();
  v133 = v47;
  v51[v28[18]] = v95 & 1;
  v96 = v137;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_519C8();
    sub_51188(v97, v98);
    v99 = sub_18B70();
    sub_18BE4(v99, v100);
    *v101 = 0x7469736F706F7270;
    v101[1] = 0xEB000000006E6F69;
    v101[2] = v28;
    sub_2B538();
    (*(v102 + 104))();
    v70 = v96;
    swift_willThrow();
    sub_51A40();
    sub_51A5C();
    v133();

    sub_51A20();
  }

  else
  {
    sub_51A68();
    sub_139DB4();
    sub_51A40();
    sub_51A5C();
    v133();
    sub_51AB0();
  }

  sub_519FC(&v51[v28[10]]);
  sub_51A88();
  v103 = sub_BB458();
  v104 = v70;
  if (v70)
  {

    v104 = 0;
    v103 = 1;
  }

  v51[v28[12]] = v103 & 1;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    sub_139BC4();
    if (!v104)
    {
      v128 = sub_519E0();
      v110 = v133;
      (v133)(v128);
      sub_51AB0();
      goto LABEL_34;
    }

    sub_18B90();
    sub_928C(v155, &unk_19E320);
  }

  sub_13BAB4();
  sub_519C8();
  sub_51188(v105, v106);
  sub_9F18();
  *v107 = 0x6575676573;
  v107[1] = 0xE500000000000000;
  v107[2] = v28;
  sub_9EF8();
  (*(v108 + 104))();
  swift_willThrow();
  v109 = sub_519E0();
  v110 = v133;
  (v133)(v109);

  sub_51A20();
LABEL_34:
  sub_519FC(&v51[v28[17]]);
  __chkstk_darwin(v111);
  *(&v132 - 2) = v148;
  sub_9DB8(0x7365636976726573, 0xE800000000000000, v28, sub_511D0, (&v132 - 4), v112, v113, v114);
  *&v51[v28[11]] = v115;
  sub_13B594();
  v116 = sub_13B564();
  v55 = v148;
  if (v116)
  {
    sub_13BAB4();
    sub_519C8();
    sub_51188(v117, v118);
    sub_9F18();
    *v119 = 0x656C746974627573;
    v119[1] = 0xE800000000000000;
    v119[2] = v28;
    sub_9EF8();
    (*(v120 + 104))();
    swift_willThrow();
    v121 = sub_519E0();
    (v110)(v121);

    sub_51A20();
  }

  else
  {
    sub_51A68();
    sub_139DB4();
    sub_51A40();
    sub_51A5C();
    v110();
    sub_51AB0();
  }

  sub_519FC(&v149[v28[13]]);
  v122 = v139;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    sub_51A68();
    sub_139DB4();
    sub_51A50();
    sub_51A98();
    MEMORY[0xE500000000000000]();
    MEMORY[0xE500000000000000](v122, 0x656C746974);
    sub_51AB0();
    v129 = v149;
    sub_9414(v152, &v149[v28[14]]);
    sub_511D8(v129, v136);
    sub_13B5A4();
    sub_9F94();
    (*(v130 + 8))(v55);
    return sub_5123C(v129);
  }

  sub_13BAB4();
  sub_519C8();
  sub_51188(v123, v124);
  sub_9F18();
  *v125 = 0x656C746974;
  v125[1] = 0xE500000000000000;
  v125[2] = v28;
  sub_9EF8();
  (*(v126 + 104))();
  swift_willThrow();

  sub_51A50();
  sub_51A98();
  MEMORY[0xE500000000000000]();
  MEMORY[0xE500000000000000](v122, 0x656C746974);
  v56 = 1;
  v51 = v149;
  v54 = v135;
LABEL_40:
  sub_13B5A4();
  sub_9F94();
  (*(v127 + 8))(v55);

  result = sub_928C(&v51[v50], &qword_19A480);
  if (v54)
  {
    if (!v56)
    {
      goto LABEL_42;
    }
  }

  else
  {
    sub_928C(&v51[v28[8]], &qword_19E960);
    result = sub_928C(&v51[v28[9]], &qword_19C388);
    if (!v56)
    {
LABEL_42:
      if (v54)
      {
        goto LABEL_43;
      }

LABEL_47:
      sub_9238(&v51[v28[15]]);
      result = sub_928C(&v51[v28[16]], &qword_19A350);
      if (!v56)
      {
        return result;
      }

      return sub_928C(&v51[v28[17]], &unk_19E320);
    }
  }

  sub_928C(&v51[v28[10]], &qword_19E960);

  result = sub_928C(&v51[v28[13]], &qword_19E960);
  if (!v54)
  {
    goto LABEL_47;
  }

LABEL_43:
  if (!v56)
  {
    return result;
  }

  return sub_928C(&v51[v28[17]], &unk_19E320);
}

uint64_t sub_50878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v13, a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  return sub_50A10(v13, v9, a3);
}

uint64_t sub_50A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v69 = sub_13B584();
  sub_9E94();
  v56 = v6;
  __chkstk_darwin(v7);
  sub_2162C();
  v53 = v8;
  __chkstk_darwin(v9);
  sub_18C34();
  v52 = v10;
  __chkstk_darwin(v11);
  sub_139DC4();
  memset(v66, 0, sizeof(v66));
  v67 = 0;
  inited = swift_initStackObject();
  v58[2] = a2;
  sub_9DB8(0x726F6C6F63, 0xE500000000000000, &type metadata for BundleOption.Button, sub_519C4, v58, v12, v13, v14);
  if (v3)
  {

    v15 = 0;
  }

  v51 = v15;
  v63[0] = v15;
  __chkstk_darwin(v15);
  *(&v48 - 2) = a2;
  v57 = a1;
  sub_9DB8(0x4364657375636F66, 0xEC000000726F6C6FLL, &type metadata for BundleOption.Button, sub_51298, (&v48 - 4), v16, v17, v18);
  v50 = v19;
  v63[1] = v19;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_519C8();
    sub_51188(v20, v21);
    sub_9F18();
    strcpy(v22, "focusedTitle");
    v22[13] = 0;
    *(v22 + 7) = -5120;
    *(v22 + 2) = &type metadata for BundleOption.Button;
    sub_9EF8();
    (*(v23 + 104))();
    swift_willThrow();
    v24 = sub_51AC8();
    MEMORY[0xEC000000656C7468](v24);

    v62 = 0;
    v60 = 0u;
    v61 = 0u;
  }

  else
  {
    sub_139DB4();
    v42 = sub_51AC8();
    MEMORY[0xEC000000656C7468](v42);
    sub_9414(v59, &v60);
  }

  v64[0] = v60;
  v64[1] = v61;
  v65 = v62;
  v25 = v52;
  sub_13B594();
  v26 = sub_13B564();
  v27 = v53;
  v54 = a2;
  if (v26)
  {
    sub_13BAB4();
    sub_519C8();
    sub_51188(v28, v29);
    sub_9F18();
    *v30 = 0x656C746974627573;
    v30[1] = 0xE800000000000000;
    v30[2] = &type metadata for BundleOption.Button;
    sub_9EF8();
    (*(v31 + 104))();
    swift_willThrow();
    MEMORY[0xEC000000656C7468](v25, v69);

    v62 = 0;
    v60 = 0u;
    v61 = 0u;
  }

  else
  {
    sub_139DB4();
    MEMORY[0xEC000000656C7468](v25, v69);
    sub_9414(v59, &v60);
  }

  sub_512B4(&v60, v66);
  v32 = v57;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_519C8();
    sub_51188(v34, v35);
    v36 = swift_allocError();
    sub_18BE4(v36, v37);
    *v38 = 0x656C746974;
    v38[1] = 0xE500000000000000;
    v38[2] = &type metadata for BundleOption.Button;
    sub_2B538();
    (*(v39 + 104))();
    swift_willThrow();
    v40 = v69;
    MEMORY[0xEC000000656C7468](v32, v69);
    MEMORY[0xEC000000656C7468](v27, v40);
    sub_13B5A4();
    sub_9F94();
    (*(v41 + 8))(v54);

    sub_928C(v64, &qword_19E960);
    return sub_928C(v66, &qword_19E960);
  }

  else
  {
    v33 = v54;
    sub_139DB4();
    v43 = v32;
    v44 = v27;
    v45 = v69;
    MEMORY[0xEC000000656C7468](v43, v69);
    MEMORY[0xEC000000656C7468](v44, v45);
    sub_9414(v59, &v60);
    sub_9414(&v60, &v68);
    sub_51324(v63, v49);
    sub_13B5A4();
    sub_9F94();
    (*(v46 + 8))(v33);
    return sub_5135C(v63);
  }
}

uint64_t sub_51188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_511D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleOption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5123C(uint64_t a1)
{
  v2 = type metadata accessor for BundleOption();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_512B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19E960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for BundleOption.ArtworkSize(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x51458);
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