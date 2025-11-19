uint64_t static AMLSODAConfig.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_21AF09E4C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_21AF09E4C() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return sub_21AF09E4C();
}

void *AMLSODAConfig.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t AMLSODAConfig.__deallocating_deinit()
{
  AMLSODAConfig.deinit();
  sub_21AED1B1C();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21AEC9510(void *a1)
{
  v3 = v1;
  v5 = sub_21AEA7574(&qword_27CD3D8F0, &qword_21AF0C738);
  sub_21AEA7C90(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  sub_21AEAF9B0(a1, a1[3]);
  sub_21AEC92B0();
  sub_21AF09F4C();
  v14 = v3[2];
  v15 = v3[3];
  v24 = 0;
  sub_21AED1CC0(v14, v15, &v24);
  if (!v2)
  {
    v16 = v3[4];
    v17 = v3[5];
    v23 = 1;
    sub_21AED1CC0(v16, v17, &v23);
    v18 = v3[6];
    v19 = v3[7];
    v22 = 2;
    sub_21AED1CC0(v18, v19, &v22);
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_21AEC9668@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AMLSODAConfig.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_21AEC9700()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_21AF097BC();
  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  if (!v2 || (v5 & 1) == 0)
  {
    sub_21AED1944();
    swift_allocError();
    *v3 = 0xD000000000000071;
    *(v3 + 8) = 0x800000021AF0FA10;
    *(v3 + 16) = 0;
    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_21AEC982C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    oslog = v2;
    [v2 logMessage:a1];
  }

  else
  {
    if (qword_27CD3D278 != -1)
    {
      sub_21AED1A5C();
      swift_once();
    }

    v3 = sub_21AF096CC();
    sub_21AEC78A8(v3, qword_27CD3EB60);
    oslog = sub_21AF096AC();
    v4 = sub_21AF09A9C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21AE94000, oslog, v4, "Unable to get PETEventTracker2", v5, 2u);
      sub_21AEAFB90();
    }
  }
}

void sub_21AEC994C()
{
  sub_21AEAD0C4();
  v53 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_21AEA7574(&qword_27CD3D8C8, &qword_21AF0C740);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_21AEC7504();
  v52 = v9;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v10);
  v12 = &v48[-v11];
  v13 = sub_21AF093FC();
  v14 = sub_21AEA7C90(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_21AEC7554();
  v54 = sub_21AEA7574(&qword_27CD3D8F8, &qword_21AF0C748);
  sub_21AEA7C90(v54);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v23);
  v25 = &v48[-v24];
  sub_21AEC9700();
  v51 = v6;
  v50 = v4;
  v49 = v2[2];
  v26 = v20;
  v27 = v2[3];

  sub_21AF0937C();
  sub_21AF093BC();
  v28 = *(v16 + 8);
  v29 = sub_21AED1DCC();
  v30(v29);
  sub_21AF095BC();
  v31 = v2[4];
  v32 = v2[5];
  v33 = v2[6];
  v34 = v2[7];
  v49 = v26;
  v35 = v54;
  (*(v26 + 16))(v12, v25, v54);
  sub_21AEA75BC(v12, 0, 1, v35);
  v36 = type metadata accessor for AMLSODAHostTask();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  sub_21AEC88BC(v12, v52);

  sub_21AF0962C();
  sub_21AEC6E68(v12, &qword_27CD3D8C8, &qword_21AF0C740);
  v39 = sub_21AF0957C();
  v40 = swift_allocBox();
  v42 = v41;
  sub_21AF0956C();
  v43 = swift_allocBox();
  sub_21AF0956C();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v53 & 1;
  *(v44 + 32) = v40;

  sub_21AF0963C();
  v45 = v54;

  (*(v49 + 8))(v25, v45);
  sub_21AEA7C78();
  v46 = *(*(v39 - 8) + 16);
  v47 = sub_21AED1C74();
  v46(v47);
  sub_21AED1EA8();
  sub_21AEA7C78();
  (v46)(v50, v42, v39);
  sub_21AED1EA8();

  sub_21AEAD0A8();
}

uint64_t sub_21AECA118(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_21AF0959C();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF0957C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = swift_projectBox();
  v28 = swift_projectBox();
  sub_21AF095EC();
  swift_beginAccess();
  v27 = *(v9 + 40);
  v27(v15, v14, v8);
  if (a3)
  {
    sub_21AF0958C();
    sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
    v16 = swift_allocObject();
    v25 = a3;
    v17 = v16;
    *(v16 + 16) = xmmword_21AF0C5D0;
    swift_beginAccess();
    (*(v9 + 16))(v14, v15, v8);
    v18 = sub_21AF094CC();
    v24 = v4;
    v20 = v19;
    (*(v9 + 8))(v14, v8);
    v17[7] = MEMORY[0x277D837D0];
    v17[4] = v18;
    v17[5] = v20;
    sub_21AF09EDC();

    (*(v26 + 8))(v7, v24);
  }

  type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
  swift_beginAccess();
  v21 = v29;
  (*(v9 + 16))(v29, v15, v8);
  sub_21AEC0F7C();
  (*(v9 + 8))(v21, v8);
  v22 = v28;
  swift_beginAccess();
  v27(v22, v14, v8);
  return 1;
}

id sub_21AECA4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v207 = a8;
  v201 = a6;
  v200 = a5;
  v199 = sub_21AF0957C();
  v12 = sub_21AEA7C90(v199);
  v208 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_21AEC7554();
  sub_21AED1AE0(v17 - v16);
  v209 = sub_21AF094EC();
  v18 = sub_21AEA7C90(v209);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_21AEC7504();
  v210 = v23;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v24);
  sub_21AEC774C();
  sub_21AED1AE0(v25);
  v203 = sub_21AF0952C();
  v26 = sub_21AEA7C90(v203);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_21AEC7554();
  v33 = v32 - v31;
  v34 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC7854(v34);
  v36 = *(v35 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v37);
  sub_21AED1AE0(&v173 - v38);
  v39 = type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
  if (sub_21AEC3B74())
  {
    v198 = v39;
    if (sub_21AEC3B74())
    {
      v190 = a7;
      v40 = a4;
      sub_21AED1DD8();
      v192 = v42;
      v196 = sub_21AECEFFC(v42, a1, v41 & 1);
      v43 = MEMORY[0x277D84F90];
      v218 = MEMORY[0x277D84F90];
      sub_21AF0954C();
      v44 = v203;
      (*(v28 + 16))(v205, v33, v203);
      v45 = *(v34 + 36);
      v46 = sub_21AEC5A18();
      v197 = v45;
      v47 = v46;
      sub_21AF099FC();
      (*(v28 + 8))(v33, v44);
      v195 = v20 + 16;
      v194 = v20 + 32;
      v186 = 0x800000021AF0F840;
      v49 = a3 == 0xD000000000000019 && 0x800000021AF0F840 == v40;
      v191 = v49;
      v180 = 0x800000021AF0F860;
      v51 = a3 == 0xD000000000000013 && 0x800000021AF0F860 == v40;
      v185 = v51;
      sub_21AEC7BD0();
      v193 = a3;
      v187 = v40;
      v174 = v52;
      v55 = a3 == v53 && v52 == v40;
      HIDWORD(v179) = v55;
      sub_21AEC7BD0();
      v173 = v56;
      v178 = "com.apple.searchd";
      v177 = "peopleMatchPercent";
      v176 = "matchedLocationRatio";
      v175 = "matchedSceneConfidence";
      v189 = v208 + 8;
      v188 = v20 + 8;
      v181 = xmmword_21AF0C5D0;
      v57 = v204;
      v206 = v47;
      while (1)
      {
        v58 = v205;
        sub_21AF09A1C();
        if (*(v58 + v197) == v215)
        {
          sub_21AEC6E68(v58, &qword_27CD3D850, &qword_21AF0C618);

          return v43;
        }

        v59 = sub_21AF09A6C();
        sub_21AED1E20(&v220);
        v60 = v202;
        v61 = v209;
        v62(v202);
        v59(&v215, 0);
        sub_21AED1BC8();
        sub_21AF09A2C();
        sub_21AED1E20(&v219);
        v63(v210, v60, v61);
        result = [objc_allocWithZone(AMLPhotosSearchLabeledData) init];
        if (!result)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          return result;
        }

        v65 = result;
        v66 = v192;
        if (v191)
        {
          v67 = 2;
        }

        else
        {
          v68 = sub_21AF09E4C();
          if (v68)
          {
            v67 = 2;
          }

          else
          {
            v67 = 1;
          }

          if (((v68 | v185) & 1) == 0)
          {
            sub_21AED1DC0();
            if ((sub_21AF09E4C() | HIDWORD(v179)))
            {
              v67 = 1;
            }

            else
            {
              sub_21AED1DC0();
              if ((sub_21AF09E4C() & 1) == 0)
              {
                goto LABEL_33;
              }

              v67 = 1;
            }
          }
        }

        [v65 setUiSurface_];
LABEL_33:
        sub_21AEC7530();
        result = sub_21AF094FC();
        if (!v214)
        {
          goto LABEL_142;
        }

        sub_21AEA7B80(0, &unk_27CD3D420, 0x277CCACA8);
        v69 = sub_21AED1AF0();
        sub_21AEAF9F4(v69, v70);
        sub_21AED1C24();
        swift_dynamicCast();
        v71 = sub_21AECB898();
        [v65 setSearchSessionUUID_];

        result = sub_21AF094FC();
        if (!v214)
        {
          goto LABEL_143;
        }

        v72 = sub_21AED1AF0();
        sub_21AEAF9F4(v72, v73);
        sub_21AED1C24();
        swift_dynamicCast();
        v74 = v211;
        sub_21AED1DD8();
        sub_21AEBCC44(v74, v66, v75 & 1, v76, v77, v78, v79, v80, v173, v174, v175, v176, v177, v178, v179, v180, v181, *(&v181 + 1), v182, v183);
        sub_21AEC062C();
        v82 = v81;
        sub_21AEC74C8();
        result = sub_21AF094FC();
        if (!v214)
        {
          goto LABEL_144;
        }

        v83 = sub_21AED1AF0();
        sub_21AEAF9F4(v83, v84);
        sub_21AED1C24();
        swift_dynamicCast();
        v86 = v211;
        v85 = v212;
        v87 = sub_21AF099BC();
        v89 = sub_21AEC8BB4(v87, v88, v196);

        if (v89)
        {
          if (*(v89 + 16) && (sub_21AED1C80(), v90 = sub_21AED0594(), (v91 & 1) != 0))
          {
            v92 = (*(v89 + 56) + (v90 << 6));
            v93 = *v92;
            v94 = v92[1];
            v95 = v92[3];
            v96 = v92[4];
            v97 = v92[5];
            v98 = v92[6];
            v99 = v92[7];

            [v65 setHasEverClickInLastMonth_];
            [v65 setClickCountInLastMonthNormalizedAcrossItems_];
            [v65 setHasEverClickInLastWeek_];
            [v65 setClickCountInLastWeekNormalizedAcrossItems_];
            [v65 setClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems_];
            [v65 setClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems_];
            [v65 setClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems_];
            [v65 setClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems_];
          }

          else
          {
          }
        }

        v100 = objc_opt_self();
        sub_21AED1C80();
        v101 = sub_21AF097BC();
        v102 = [v100 clientDonationForPhotoId:v101 aroundTime:v82];

        v208 = v102;
        if (!v102)
        {

LABEL_63:
          sub_21AED1DA0();
          goto LABEL_121;
        }

        v103 = v102;
        v104 = [v103 arrayProvider];
        if (!v104)
        {

          goto LABEL_63;
        }

        v105 = v104;
        type metadata accessor for AMLDonationDecodeHelper();
        v106 = sub_21AEAA6C0(v105);
        if (!v106)
        {

LABEL_72:
          sub_21AED1DA0();
          sub_21AED1BC8();
          goto LABEL_121;
        }

        v107 = v106;
        v183 = v105;
        v184 = v103;
        sub_21AED1DD8();
        if (v108)
        {
          sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
          sub_21AED1B1C();
          v109 = swift_allocObject();
          sub_21AED1BAC(v109);
          sub_21AF09C5C();

          *&v215 = 0xD00000000000001ELL;
          *(&v215 + 1) = v173;
          v110 = sub_21AED1C80();
          MEMORY[0x21CEE4A70](v110);
          v111 = v215;
          *(v103 + 7) = MEMORY[0x277D837D0];
          sub_21AED1AB8(v111);
        }

        v112 = 0;
        v113 = 0;
        while (1)
        {
          v114 = *(v107 + 16);
          if (v113 == v114)
          {
            break;
          }

          if (v113 >= v114)
          {
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
            goto LABEL_140;
          }

          v115 = *(v107 + 8 * v113 + 32);
          if (!*(v115 + 16))
          {
            goto LABEL_138;
          }

          v116 = *(v107 + 8 * v113 + 32);

          v117 = sub_21AED0594();
          if ((v118 & 1) == 0)
          {
            goto LABEL_139;
          }

          sub_21AEA784C(*(v115 + 56) + 32 * v117, &v213);
          v119 = sub_21AED1AF0();
          sub_21AEAF9F4(v119, v120);
          swift_dynamicCast();
          v121 = v212;
          if (v211 == v86 && v212 == v85)
          {

LABEL_58:

            sub_21AED1DD8();
            if (v123)
            {
              sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
              sub_21AED1B1C();
              v124 = swift_allocObject();
              sub_21AED1BAC(v124);
              v57 = MEMORY[0x277D837D0];
              v125 = COERCE_DOUBLE(sub_21AF0971C());
              v213 = v125;
              sub_21AED1AF0();
              sub_21AF09CFC();

              v126 = v215;
              *(v121 + 56) = v57;
              sub_21AED1AB8(v126);
            }

            ++v113;
            v112 = v115;
          }

          else
          {
            v57 = sub_21AF09E4C();

            if (v57)
            {
              goto LABEL_58;
            }

            ++v113;
          }
        }

        if (!v112)
        {
          sub_21AED1D48();
          sub_21AED1D30();
          goto LABEL_72;
        }

        sub_21AEC8AA8(v112, &v215);
        v57 = v204;
        if (v217)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v128 = v213;
          }

          else
          {
            v128 = 0.0;
          }
        }

        else
        {
          sub_21AEC6E68(&v215, &qword_27CD3D330, &unk_21AF0C420);
          v128 = 0.0;
        }

        [v65 setL1Score_];
        sub_21AEC8AA8(v112, &v215);
        if (v217)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v129 = v213;
            goto LABEL_80;
          }
        }

        else
        {
          sub_21AEC6E68(&v215, &qword_27CD3D330, &unk_21AF0C420);
        }

        v129 = 0.0;
LABEL_80:
        [v65 setL2ModelScore_];
        sub_21AEC8AA8(v112, &v215);
        if (v217)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v130 = v213;
            goto LABEL_85;
          }
        }

        else
        {
          sub_21AEC6E68(&v215, &qword_27CD3D330, &unk_21AF0C420);
        }

        v130 = 0.0;
LABEL_85:
        [v65 setFreshness_];
        sub_21AEC8AA8(v112, &v215);
        if (v217)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v131 = v213 > 0.0;
            goto LABEL_90;
          }
        }

        else
        {
          sub_21AEC6E68(&v215, &qword_27CD3D330, &unk_21AF0C420);
        }

        v131 = 0;
LABEL_90:
        [v65 setFavorited_];
        sub_21AEC8AA8(v112, &v215);
        if (v217)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v132 = v213;
            goto LABEL_95;
          }
        }

        else
        {
          sub_21AEC6E68(&v215, &qword_27CD3D330, &unk_21AF0C420);
        }

        v132 = 0.0;
LABEL_95:
        [v65 setAestheticScore_];
        sub_21AEC8AA8(v112, &v215);
        if (v217)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v133 = v213;
            goto LABEL_100;
          }
        }

        else
        {
          sub_21AEC6E68(&v215, &qword_27CD3D330, &unk_21AF0C420);
        }

        v133 = 0.0;
LABEL_100:
        [v65 setCurationScore_];
        sub_21AED1B90(&v215);
        if (v217)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v134 = v213;
            goto LABEL_105;
          }
        }

        else
        {
          sub_21AEC6E68(&v215, &qword_27CD3D330, &unk_21AF0C420);
        }

        v134 = 0.0;
LABEL_105:
        [v65 setMatchedPeopleRatio_];
        sub_21AED1B90(&v215);
        if (v217)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v135 = v213;
            goto LABEL_110;
          }
        }

        else
        {
          sub_21AEC6E68(&v215, &qword_27CD3D330, &unk_21AF0C420);
        }

        v135 = 0.0;
LABEL_110:
        [v65 setMatchedLocationRatio_];
        sub_21AED1B90(&v215);
        if (v217)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v136 = v213;
            goto LABEL_115;
          }
        }

        else
        {
          sub_21AEC6E68(&v215, &qword_27CD3D330, &unk_21AF0C420);
        }

        v136 = 0.0;
LABEL_115:
        [v65 setMatchedSceneConfidence_];
        sub_21AED1B90(&v215);

        if (v217)
        {
          sub_21AED1A98();
          swift_dynamicCast();
          sub_21AED1E0C();
          if (v137)
          {
            v138 = v213;
          }

          else
          {
            v138 = 0.0;
          }
        }

        else
        {
          sub_21AEC6E68(&v215, &qword_27CD3D330, &unk_21AF0C420);
          sub_21AED1E0C();
        }

        [v65 setMatchedSceneBoundingBox_];

LABEL_121:
        v139 = sub_21AED1B4C(v127, sel_setClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems_);
        v140 = sub_21AED1B4C(v139, sel_setClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems_);
        v141 = sub_21AED1B4C(v140, sel_setClickCountGivenLocationInLastMonthNormalizedAcrossItems_);
        v142 = sub_21AED1B4C(v141, sel_setClickCountGivenLocationInLastWeekNormalizedAcrossItems_);
        v143 = sub_21AED1B4C(v142, sel_setClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems_);
        v144 = sub_21AED1B4C(v143, sel_setClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems_);
        v145 = sub_21AED1B4C(v144, sel_setClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems_);
        v146 = sub_21AED1B4C(v145, sel_setClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems_);
        sub_21AED1B4C(v146, sel_setClipScore_);
        v147 = v210;
        sub_21AECF5E8();
        v149 = v148;
        [v65 setHasEverShareInLastMonth_];
        [v65 setShareCountInLastMonthNormalizedAcrossItems_];
        sub_21AED1E38();
        sub_21AECF5F4();
        v151 = v150;
        [v65 setHasEverShareInLastMonth_];
        v152 = sub_21AED1B4C([v65 setShareCountInLastWeekNormalizedAcrossItems_], sel_setIsCompleteMatch_);
        v153 = sub_21AED1B4C(v152, sel_setIsDuplicate_);
        v154 = sub_21AED1B4C(v153, sel_setShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems_);
        v155 = sub_21AED1B4C(v154, sel_setShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems_);
        v156 = sub_21AED1B4C(v155, sel_setShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems_);
        v157 = sub_21AED1B4C(v156, sel_setShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems_);
        v158 = sub_21AED1B4C(v157, sel_setShareCountGivenLocationInLastMonthNormalizedAcrossItems_);
        v159 = sub_21AED1B4C(v158, sel_setShareCountGivenLocationInLastWeekNormalizedAcrossItems_);
        v160 = sub_21AED1B4C(v159, sel_setShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems_);
        v161 = sub_21AED1B4C(v160, sel_setShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems_);
        v162 = sub_21AED1B4C(v161, sel_setShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems_);
        sub_21AED1B4C(v162, sel_setShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems_);
        [v65 setClickOrder_];
        v163 = [v65 setItemPosition_];
        if (v200)
        {
          sub_21AEC982C(v65);
        }

        MEMORY[0x21CEE4AD0](v163);
        v164 = v208;
        if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21AF098CC();
        }

        sub_21AF0991C();
        v43 = v218;

        sub_21AED1E20(&v217);
        v165(v57, v199);
        sub_21AED1E20(v216);
        v166(v210, v209);
      }
    }

    if (qword_27CD3D278 != -1)
    {
      sub_21AED1A5C();
      swift_once();
    }

    v172 = sub_21AF096CC();
    sub_21AEC78A8(v172, qword_27CD3EB60);
    v168 = sub_21AF096AC();
    v169 = sub_21AF09A9C();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      *v170 = 0;
      v171 = "Incorrect search dataframe. Bailing...";
      goto LABEL_133;
    }
  }

  else
  {
    if (qword_27CD3D278 != -1)
    {
LABEL_140:
      sub_21AED1A5C();
      swift_once();
    }

    v167 = sub_21AF096CC();
    sub_21AEC78A8(v167, qword_27CD3EB60);
    v168 = sub_21AF096AC();
    v169 = sub_21AF09A9C();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      *v170 = 0;
      v171 = "Incorrect feedback dataframe. Bailing...";
LABEL_133:
      _os_log_impl(&dword_21AE94000, v168, v169, v171, v170, 2u);
      sub_21AEAFB90();
    }
  }

  return 0;
}

id sub_21AECB898()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21AF097BC();

  v2 = [v0 initWithString_];

  return v2;
}

void sub_21AECB90C()
{
  sub_21AEAD0C4();
  v125 = v2;
  v135 = v3;
  v131 = sub_21AF094EC();
  v4 = sub_21AEA7C90(v131);
  v133 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_21AEC7504();
  *&v139 = v8;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v9);
  sub_21AEC774C();
  v136 = v10;
  sub_21AEAFBDC();
  v132 = sub_21AF0952C();
  v11 = sub_21AEA7C90(v132);
  v134 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_21AEC7554();
  v128 = v16 - v15;
  v17 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  v18 = *(v17 - 8);
  v130 = v17 - 8;
  v19 = *(v18 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v20);
  v22 = &v123 - v21;
  v23 = sub_21AF093FC();
  v24 = sub_21AEA7C90(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_21AEC7504();
  v138 = v29;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v30);
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v31);
  sub_21AED1BF4();
  v32 = MEMORY[0x277D83B88];
  v33 = sub_21AF0974C();
  v34 = v131;
  sub_21AED1D88();
  v129 = sub_21AF0974C();
  sub_21AF093EC();
  v137 = v1;
  sub_21AF093AC();
  v35 = *(v26 + 8);
  v36 = sub_21AEC7734();
  v35(v36);
  sub_21AF093EC();
  sub_21AF093AC();
  v127 = v23;
  v126 = v26 + 8;
  v124 = v35;
  (v35)(v0, v23);
  v37 = v128;
  sub_21AF0954C();
  v38 = v134;
  v39 = v134[2];
  v40 = sub_21AED1E38();
  v41 = v37;
  v42(v40);
  isUniquelyReferenced_nonNull_native = *(v130 + 44);
  v44 = sub_21AEC5A18();
  sub_21AED1C80();
  sub_21AF099FC();
  (v38[1])(v41, v32);
  v134 = v133 + 4;
  v135 = (v133 + 2);
  ++v133;
  v130 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    sub_21AED1C80();
    sub_21AF09A1C();
    if (*&v22[isUniquelyReferenced_nonNull_native] == *&v144[0])
    {
      break;
    }

    v45 = sub_21AF09A6C();
    (*v135)(v136);
    v45(v144, 0);
    v46 = v44;
    sub_21AF09A2C();
    v47 = *v134;
    v48 = sub_21AEC7734();
    v49(v48);
    sub_21AEC74C8();
    sub_21AF094FC();
    if (!v143)
    {
      goto LABEL_70;
    }

    sub_21AEAF9F4(&v142, v144);
    swift_dynamicCast();
    v51 = v140;
    v50 = v141;
    sub_21AED1B28();
    if (!v143)
    {
      goto LABEL_71;
    }

    sub_21AEAF9F4(&v142, v144);
    swift_dynamicCast();
    v52 = v140;
    sub_21AF0936C();
    if (v53 >= v52)
    {
      goto LABEL_31;
    }

    if (*(v33 + 16) && (sub_21AEB3974(), v54 = sub_21AED0594(), (v55 & 1) != 0))
    {
      v56 = *(*(v33 + 56) + 8 * v54);
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_62;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v144[0] = v33;
      sub_21AEB3974();
      sub_21AED0594();
      v58 = *(v33 + 16);
      sub_21AED1B64();
      if (__OFADD__(v61, v62))
      {
        goto LABEL_63;
      }

      v63 = v59;
      v64 = v60;
      sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
      sub_21AED1BE4();
      if (sub_21AF09D0C())
      {
        sub_21AEB3974();
        sub_21AED0594();
        sub_21AED1C04();
        isUniquelyReferenced_nonNull_native = v130;
        if (!v66)
        {
          goto LABEL_72;
        }

        v63 = v65;
      }

      else
      {
        sub_21AED1BC8();
      }

      v33 = *&v144[0];
      if ((v64 & 1) == 0)
      {
        sub_21AED1AA8(*&v144[0] + 8 * (v63 >> 6));
        sub_21AED1DF8();
        *(v80 + 8 * v63) = v57;
        v81 = *(v33 + 16);
        v78 = __OFADD__(v81, 1);
        v79 = v81 + 1;
        if (v78)
        {
          goto LABEL_64;
        }

        goto LABEL_29;
      }

      *(*(*&v144[0] + 56) + 8 * v63) = v57;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v144[0] = v33;
      sub_21AEB3974();
      sub_21AED0594();
      v67 = *(v33 + 16);
      sub_21AED1B64();
      if (__OFADD__(v70, v71))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
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
        sub_21AF09E7C();
        __break(1u);
        return;
      }

      v72 = v68;
      v73 = v69;
      sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
      sub_21AED1BE4();
      if (sub_21AF09D0C())
      {
        sub_21AEB3974();
        sub_21AED0594();
        sub_21AED1C04();
        isUniquelyReferenced_nonNull_native = v130;
        if (!v66)
        {
          goto LABEL_72;
        }

        v72 = v74;
      }

      else
      {
        sub_21AED1BC8();
      }

      v33 = *&v144[0];
      if ((v73 & 1) == 0)
      {
        sub_21AED1AA8(*&v144[0] + 8 * (v72 >> 6));
        sub_21AED1DF8();
        *(v75 + 8 * v72) = v76;
        v77 = *(v33 + 16);
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          goto LABEL_61;
        }

LABEL_29:
        *(v33 + 16) = v79;

        goto LABEL_30;
      }

      *(*(*&v144[0] + 56) + 8 * v72) = 1;
    }

LABEL_30:
    v34 = v131;
    sub_21AED1D88();
LABEL_31:
    sub_21AF0936C();
    if (v82 < v52)
    {
      v83 = v129;
      if (*(v129 + 16) && (sub_21AEB3974(), v84 = sub_21AED0594(), v83 = v129, (v85 & 1) != 0))
      {
        v86 = *(*(v129 + 56) + 8 * v84);
        v87 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_67;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v144[0] = v83;
        sub_21AEB3974();
        sub_21AED0594();
        v88 = *(v83 + 16);
        sub_21AED1B64();
        if (__OFADD__(v91, v92))
        {
          goto LABEL_68;
        }

        v93 = v89;
        LODWORD(v129) = v90;
        sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
        sub_21AED1BE4();
        if (sub_21AF09D0C())
        {
          sub_21AEB3974();
          v94 = sub_21AED0594();
          v96 = v129;
          v34 = v131;
          isUniquelyReferenced_nonNull_native = v130;
          if ((v129 & 1) != (v95 & 1))
          {
            goto LABEL_72;
          }

          v93 = v94;
        }

        else
        {
          v34 = v131;
          sub_21AED1BC8();
          v96 = v129;
        }

        v129 = *&v144[0];
        if (v96)
        {
          *(*(*&v144[0] + 56) + 8 * v93) = v87;
        }

        else
        {
          sub_21AED1AA8(*&v144[0] + 8 * (v93 >> 6));
          v111 = (v110[6] + 16 * v93);
          *v111 = v51;
          v111[1] = v50;
          *(v110[7] + 8 * v93) = v87;
          v112 = v110[2];
          v78 = __OFADD__(v112, 1);
          v113 = v112 + 1;
          if (v78)
          {
            goto LABEL_69;
          }

          v110[2] = v113;
        }

        sub_21AED1D88();
        v44 = v46;
        (*v133)(v139, v34);
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        *&v144[0] = v83;
        sub_21AEB3974();
        sub_21AED0594();
        v97 = *(v83 + 16);
        sub_21AED1B64();
        isUniquelyReferenced_nonNull_native = v100 + v101;
        if (__OFADD__(v100, v101))
        {
          goto LABEL_65;
        }

        v102 = v98;
        v103 = v99;
        sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
        if (sub_21AF09D0C())
        {
          sub_21AEB3974();
          sub_21AED0594();
          sub_21AED1C04();
          isUniquelyReferenced_nonNull_native = v130;
          if (!v66)
          {
            goto LABEL_72;
          }

          v102 = v104;
        }

        else
        {
          sub_21AED1D88();
          sub_21AED1BC8();
        }

        v129 = *&v144[0];
        if (v103)
        {
          *(*(*&v144[0] + 56) + 8 * v102) = 1;
        }

        else
        {
          sub_21AED1AA8(*&v144[0] + 8 * (v102 >> 6));
          v106 = (v105[6] + 16 * v102);
          *v106 = v51;
          v106[1] = v50;
          *(v105[7] + 8 * v102) = v107;
          v108 = v105[2];
          v78 = __OFADD__(v108, 1);
          v109 = v108 + 1;
          if (v78)
          {
            goto LABEL_66;
          }

          v105[2] = v109;
        }

        v34 = v131;
        (*v133)(v139, v131);
        v44 = v46;
      }
    }

    else
    {
      (*v133)(v139, v34);

      v44 = v46;
    }
  }

  sub_21AEC6E68(v22, &qword_27CD3D850, &qword_21AF0C618);
  if (v125)
  {
    sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
    sub_21AED1B1C();
    v114 = swift_allocObject();
    v139 = xmmword_21AF0C5D0;
    *(v114 + 16) = xmmword_21AF0C5D0;
    strcpy(v144, "Weekly dict ");
    BYTE13(v144[0]) = 0;
    HIWORD(v144[0]) = -5120;
    v115 = MEMORY[0x277D837D0];
    v116 = sub_21AF0973C();
    MEMORY[0x21CEE4A70](v116);

    v117 = v144[0];
    *(v114 + 56) = v115;
    *(v114 + 32) = v117;
    sub_21AEC76AC();

    sub_21AED1B1C();
    v118 = swift_allocObject();
    *(v118 + 16) = v139;
    strcpy(v144, "Monthly dict ");
    HIWORD(v144[0]) = -4864;
    sub_21AED1E7C();
    v119 = sub_21AF0973C();
    MEMORY[0x21CEE4A70](v119);

    v120 = v144[0];
    *(v118 + 56) = v115;
    *(v118 + 32) = v120;
    sub_21AEC76AC();
  }

  v121 = v127;
  v122 = v124;
  (v124)(v138, v127);
  v122(v137, v121);
  sub_21AEAD0A8();
}

void sub_21AECC428()
{
  sub_21AEAD0C4();
  LODWORD(v121) = v0;
  v113 = v1;
  v2 = sub_21AF0957C();
  v3 = sub_21AEA7C90(v2);
  v119 = v4;
  v120 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_21AEAD074();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_21AEC774C();
  *&v122 = v11;
  sub_21AEAFBDC();
  v108 = sub_21AF0925C();
  v12 = sub_21AEA7C90(v108);
  v107 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_21AEC7504();
  v115 = v16;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v17);
  sub_21AEC774C();
  v116 = v18;
  sub_21AEAFBDC();
  v19 = sub_21AF093FC();
  v20 = sub_21AEA7C90(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_21AEAD074();
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v25);
  v109 = &v106 - v26;
  sub_21AEC76CC();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v106 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v106 - v31;
  sub_21AEA7574(&qword_27CD3D880, &qword_21AF0C650);
  v118 = sub_21AED1F08();
  v117 = sub_21AED1F08();
  sub_21AF093EC();
  sub_21AF093AC();
  v33 = *(v22 + 8);
  v33(v30, v19);
  sub_21AF093EC();
  v34 = v109;
  sub_21AF093AC();
  v123 = v33;
  v124 = v22 + 8;
  v33(v30, v19);
  v37 = *(v22 + 16);
  v35 = (v22 + 16);
  v36 = v37;
  v106 = v32;
  v37(v30, v32, v19);
  sub_21AF093EC();
  sub_21AED1DC0();
  sub_21AF0923C();
  v125 = v19;
  v37(v30, v34, v19);
  sub_21AF093EC();
  sub_21AED1DC0();
  sub_21AF0923C();
  v38 = type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
  v39 = v38;
  sub_21AEB3BEC();
  v41 = v40;
  v112 = *(v40 + 16);
  if (v112)
  {
    v42 = 0;
    v110 = v40;
    v111 = v40 + 32;
    v43 = ++v119;
    while (v42 < *(v41 + 16))
    {
      v44 = (v111 + 16 * v42);
      v45 = *v44;
      v46 = v44[1];

      v36 = v122;
      sub_21AEB908C(v45, v46, v113, v121 & 1, v47, v48, v49, v50, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);

      sub_21AEB41A0();
      v35 = *(v51 + 16);
      if (v35)
      {
        v114 = v42;
        v57 = 32;
        do
        {
          v58 = v51;
          v36 = v121;
          sub_21AEBCC44(*(v51 + v57), v122, v121 & 1, v52, v53, v54, v55, v56, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
          sub_21AEB4470();
          sub_21AEC062C();
          sub_21AF0935C();
          v59 = v116;
          sub_21AF0924C();
          v60 = sub_21AED1DE4();
          v61(v60);
          if (v59)
          {
            sub_21AF099BC();
            v36 = v62;

            swift_isUniquelyReferenced_nonNull_native();
            sub_21AED1D74();
            sub_21AF05334();

            v118 = v126;
          }

          sub_21AF0935C();
          v63 = v115;
          sub_21AF0924C();
          v64 = sub_21AED1DE4();
          v65(v64);
          if (v63)
          {
            v36 = sub_21AF099BC();
            swift_isUniquelyReferenced_nonNull_native();
            sub_21AED1D74();
            sub_21AF05334();

            v39 = *v119;
            (*v119)(v9, v120);
            v117 = v126;
          }

          else
          {
            v39 = *v119;
            (*v119)(v9, v120);
          }

          v57 += 8;
          v35 = (v35 - 1);
          v51 = v58;
        }

        while (v35);

        v41 = v110;
        v42 = v114;
        v43 = v119;
      }

      else
      {

        v39 = *v43;
      }

      ++v42;
      v39(v122, v120);
      if (v42 == v112)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    if ((v121 & 1) == 0)
    {
      v83 = sub_21AED1B70();
      v35(v83);
      (v35)(v116, v39);
      v84 = sub_21AED1C5C();
      (v36)(v84);
      v85 = sub_21AED1E7C();
      (v36)(v85, v35);
LABEL_28:
      sub_21AEAD0A8();
      return;
    }

    v67 = *(v118 + 64);
    v66 = v118 + 64;
    v68 = *(v118 + 32);
    sub_21AED1A7C();
    sub_21AED1BD4();
    sub_21AEC7BD0();
    v121 = v69;

    v70 = 0;
    v122 = xmmword_21AF0C5D0;
    v71 = MEMORY[0x277D837D0];
    if (v35)
    {
      while (1)
      {
LABEL_20:
        sub_21AED1C8C();
        sub_21AED1E50();
        v74 = *v73;
        v75 = v73[1];
        v78 = *(v77 + 8 * v76);
        sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
        sub_21AED1B1C();
        v79 = swift_allocObject();
        sub_21AED1C34(v79);

        sub_21AF09C5C();

        v126 = 0xD00000000000001BLL;
        v127 = v121;
        v80 = sub_21AED1C74();
        MEMORY[0x21CEE4A70](v80);

        MEMORY[0x21CEE4A70](8250, 0xE200000000000000);
        MEMORY[0x21CEE4B10](v78, v71);

        v81 = sub_21AED1C74();
        MEMORY[0x21CEE4A70](v81);

        v82 = v126;
        *(v38 + 56) = v71;
        sub_21AED1AB8(v82);
      }
    }

    while (1)
    {
      v72 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v72 >= v9)
      {

        v87 = *(v117 + 64);
        v86 = v117 + 64;
        v88 = *(v117 + 32);
        sub_21AED1A7C();
        sub_21AED1BD4();
        sub_21AEC7BD0();
        v121 = v89;

        v90 = 0;
        v91 = MEMORY[0x277D837D0];
        while (1)
        {
          v92 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            goto LABEL_31;
          }

          if (v92 >= v9)
          {
            v103 = sub_21AED1B70();
            v35(v103);
            (v35)(v116, v39);
            v104 = sub_21AED1C5C();
            (v36)(v104);
            v105 = sub_21AED1E7C();
            (v36)(v105, v35);

            goto LABEL_28;
          }

          v35 = *(v86 + 8 * v92);
          ++v90;
          if (v35)
          {
            while (1)
            {
              sub_21AED1C8C();
              sub_21AED1E50();
              v94 = *v93;
              v95 = v93[1];
              v98 = *(v97 + 8 * v96);
              sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
              sub_21AED1B1C();
              v99 = swift_allocObject();
              sub_21AED1C34(v99);

              sub_21AF09C5C();

              v126 = 0xD00000000000001CLL;
              v127 = v121;
              v100 = sub_21AED1C74();
              MEMORY[0x21CEE4A70](v100);

              MEMORY[0x21CEE4A70](8250, 0xE200000000000000);
              MEMORY[0x21CEE4B10](v98, v91);

              v101 = sub_21AED1C74();
              MEMORY[0x21CEE4A70](v101);

              v102 = v126;
              *(v38 + 56) = v91;
              sub_21AED1AB8(v102);
            }
          }
        }
      }

      v35 = *(v66 + 8 * v72);
      ++v70;
      if (v35)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_21AECCCC0()
{
  sub_21AEAD0C4();
  v178 = v1;
  v176 = v2;
  v199 = *MEMORY[0x277D85DE8];
  v189 = sub_21AF094EC();
  v3 = sub_21AEA7C90(v189);
  v177 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_21AEC7504();
  v190 = v7;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v8);
  sub_21AEC774C();
  sub_21AED1AE0(v9);
  v188 = sub_21AF0952C();
  v10 = sub_21AEA7C90(v188);
  v175 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_21AEC7554();
  v174 = v15 - v14;
  v173 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC7854(v173);
  v17 = *(v16 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v18);
  sub_21AED1AE0(v165 - v19);
  v20 = sub_21AF0930C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  sub_21AEC7554();
  v24 = v23 - v22;
  v25 = sub_21AF093FC();
  v26 = sub_21AEA7C90(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_21AEAD074();
  v33 = v31 - v32;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = v165 - v36;
  MEMORY[0x28223BE20](v35);
  sub_21AED1BF4();
  sub_21AF093EC();
  v183 = v0;
  sub_21AF093AC();
  v38 = *(v28 + 8);
  v38(v37, v25);
  sub_21AF093EC();
  v182 = v33;
  sub_21AF093AC();
  v180 = v28 + 8;
  v179 = v38;
  v38(v37, v25);
  v39 = sub_21AEA7574(&qword_27CD3D920, &qword_21AF0C9A0);
  v193 = sub_21AED1EC8();
  v192 = sub_21AED1EC8();
  sub_21AEA7B80(0, &qword_27CD3D928, 0x277CD9948);
  v40 = [objc_opt_self() systemPhotoLibraryURL];
  sub_21AF092CC();

  v41 = sub_21AECDE88(v24);
  *&v197 = 0;
  if (![v41 openAndWaitWithUpgrade:0 error:&v197])
  {
    v90 = v197;
    v62 = sub_21AF0927C();

    swift_willThrow();
    if (qword_27CD3D278 != -1)
    {
      goto LABEL_67;
    }

    goto LABEL_20;
  }

  v165[1] = v39;
  v171 = v25;
  v42 = v197;
  v43 = [v41 librarySpecificFetchOptions];
  [v43 setFetchLimit_];
  sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_21AF0C080;
  v45 = *MEMORY[0x277CD9AA8];
  *(v44 + 32) = sub_21AF097CC();
  *(v44 + 40) = v46;
  v47 = *MEMORY[0x277CD9A80];
  *(v44 + 48) = sub_21AF097CC();
  *(v44 + 56) = v48;
  v49 = *MEMORY[0x277CD9B28];
  *(v44 + 64) = sub_21AF097CC();
  *(v44 + 72) = v50;
  v51 = *MEMORY[0x277CD9AD0];
  *(v44 + 80) = sub_21AF097CC();
  *(v44 + 88) = v52;
  v53 = *MEMORY[0x277CD9B10];
  *(v44 + 96) = sub_21AF097CC();
  *(v44 + 104) = v54;
  v55 = *MEMORY[0x277CD9A90];
  *(v44 + 112) = sub_21AF097CC();
  *(v44 + 120) = v56;
  sub_21AEF75E8(v44, v43);

  v58 = sub_21AEEF580(v57);
  v59 = objc_opt_self();
  v60 = MEMORY[0x277D837D0];
  v61 = sub_21AF0987C();
  v170 = v43;
  v62 = [v59 fetchAssetsWithLocalIdentifiers:v61 options:v43];

  v63 = [v41 librarySpecificFetchOptions];
  sub_21AEA7574(&qword_27CD3D6B0, &unk_21AF0C9B0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_21AF0C720;
  sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  *(v64 + 32) = sub_21AF09B5C();
  *(v64 + 40) = sub_21AF09B5C();
  v65 = sub_21AEB3974();
  sub_21AEF7654(v65, v66);
  [v63 setIncludeTorsoAndFaceDetectionData_];
  v67 = objc_opt_self();
  v169 = v62;
  v168 = v63;
  v68 = [v67 fetchFacesGroupedByAssetLocalIdentifierForAssets:v62 options:v63];
  sub_21AEA7574(&qword_27CD3D930, &unk_21AF0D3B0);
  v184 = sub_21AF0972C();

  v69 = *(v58 + 16);
  v172 = v41;
  v185 = v58;
  v186 = v69;
  if (v69)
  {
    v25 = 0;
    v70 = (v58 + 40);
    v41 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v25 >= *(v185 + 16))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        sub_21AED1A5C();
        swift_once();
LABEL_20:
        v91 = sub_21AF096CC();
        sub_21AEC78A8(v91, qword_27CD3EB60);
        v92 = v62;
        v93 = sub_21AF096AC();
        v94 = sub_21AF09A9C();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = sub_21AED1D18();
          v96 = sub_21AEB39C8();
          *&v197 = v96;
          *v95 = 136315138;
          swift_getErrorValue();
          v97 = sub_21AF09E8C();
          v99 = sub_21AECFFFC(v97, v98, &v197);
          v172 = v41;
          v100 = v99;

          *(v95 + 4) = v100;
          _os_log_impl(&dword_21AE94000, v93, v94, "PhotoLibrary open fail with error: %s", v95, 0xCu);
          sub_21AEA79F0(v96);
          sub_21AEAFB90();
          sub_21AEAFB90();
        }

        else
        {
        }

        v101 = sub_21AED1DB4();
        v102 = v179;
        v179(v101, v25);
        v102(v183, v25);
        goto LABEL_62;
      }

      v62 = *(v70 - 1);
      v60 = *v70;
      v71 = *(v184 + 16);

      if (v71 && (v72 = sub_21AED0594(), (v73 & 1) != 0))
      {
        v74 = [sub_21AED1E5C(v72) count];
      }

      else
      {
        v74 = 0;
      }

      swift_isUniquelyReferenced_nonNull_native();
      *&v197 = v41;
      sub_21AED0594();
      v75 = *(v41 + 2);
      sub_21AED1B64();
      if (__OFADD__(v78, v79))
      {
        goto LABEL_64;
      }

      v80 = v76;
      v81 = v77;
      sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
      if (sub_21AF09D0C())
      {
        v82 = sub_21AED0594();
        v84 = v191;
        if ((v81 & 1) != (v83 & 1))
        {
          sub_21AF09E7C();
          __break(1u);
          return;
        }

        v80 = v82;
        if ((v81 & 1) == 0)
        {
LABEL_13:
          v41 = v197;
          sub_21AED1AA8(v197 + 8 * (v80 >> 6));
          v85 = (*(v41 + 6) + 16 * v80);
          *v85 = v62;
          v85[1] = v60;
          *(*(v41 + 7) + 8 * v80) = v74;
          v86 = *(v41 + 2);
          v87 = __OFADD__(v86, 1);
          v88 = v86 + 1;
          if (v87)
          {
            goto LABEL_66;
          }

          *(v41 + 2) = v88;
          goto LABEL_17;
        }
      }

      else
      {
        v84 = v191;
        if ((v81 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v41 = v197;
      *(*(v197 + 56) + 8 * v80) = v74;
LABEL_17:
      ++v25;
      v70 += 2;
      v89 = v189;
      if (v186 == v25)
      {
        goto LABEL_25;
      }
    }
  }

  v41 = MEMORY[0x277D84F98];
  v89 = v189;
  v84 = v191;
LABEL_25:
  v181 = v41;
  if (v178)
  {
    v104 = v41 + 64;
    v103 = *(v41 + 8);
    v105 = v41[32];
    sub_21AED1A7C();
    sub_21AED1BD4();

    v106 = 0;
    *&v107 = 136315394;
    v166 = v107;
    v167 = v41 + 64;
    if (!v60)
    {
      goto LABEL_28;
    }

    do
    {
      v108 = v106;
LABEL_31:
      v109 = __clz(__rbit64(v60)) | (v108 << 6);
      v110 = *(v41 + 6) + 16 * v109;
      v62 = *v110;
      v111 = *(v110 + 8);
      v186 = *(*(v41 + 7) + 8 * v109);
      v112 = qword_27CD3D278;

      if (v112 != -1)
      {
        sub_21AED1A5C();
        swift_once();
      }

      v60 &= v60 - 1;
      v113 = sub_21AF096CC();
      sub_21AEC78A8(v113, qword_27CD3EB60);

      v114 = sub_21AF096AC();
      v115 = sub_21AF09A7C();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = sub_21AEB3B54();
        v117 = sub_21AEB39C8();
        *&v197 = v117;
        *v116 = v166;
        v62 = sub_21AECFFFC(v62, v111, &v197);

        *(v116 + 4) = v62;
        *(v116 + 12) = 2048;
        *(v116 + 14) = v186;
        _os_log_impl(&dword_21AE94000, v114, v115, "assetID: %s, faceCount: %ld", v116, 0x16u);
        sub_21AEA79F0(v117);
        v41 = v181;
        sub_21AEAFB90();
        v104 = v167;
        sub_21AEAFB90();
      }

      else
      {
      }

      v106 = v108;
      v89 = v189;
    }

    while (v60);
    while (1)
    {
LABEL_28:
      v108 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        goto LABEL_65;
      }

      if (v108 >= v25)
      {
        break;
      }

      v60 = *&v104[8 * v108];
      ++v106;
      if (v60)
      {
        goto LABEL_31;
      }
    }
  }

  v118 = v174;
  sub_21AF0954C();
  v119 = v175;
  v120 = v188;
  (*(v175 + 16))(v84, v118, v188);
  v121 = *(v173 + 36);
  sub_21AEC5A18();
  sub_21AF099FC();
  (*(v119 + 8))(v118, v120);
  v122 = (v177 + 16);
  v123 = (v177 + 32);
  v186 = "AMLPhotosSearchPoirotMetrics";
  v124 = (v177 + 8);
  while (1)
  {
    sub_21AF09A1C();
    if (*(v84 + v121) == v197)
    {
      break;
    }

    v125 = sub_21AF09A6C();
    v126 = v187;
    (*v122)(v187);
    v125(&v197, 0);
    v127 = v190;
    sub_21AF09A2C();
    (*v123)(v127, v126, v89);
    sub_21AF094FC();
    if (!v198)
    {
      (*v124)(v127, v89);
      sub_21AEC6E68(&v197, &qword_27CD3D330, &unk_21AF0C420);
      goto LABEL_50;
    }

    if (swift_dynamicCast())
    {
      sub_21AED1B28();
      if (!v196)
      {
        __break(1u);
      }

      sub_21AEAF9F4(&v195, &v197);
      swift_dynamicCast();
      v128 = v194;
      sub_21AF0936C();
      v84 = v191;
      if (v129 < v128)
      {
        type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
        sub_21AED1F28(&v193);
      }

      sub_21AF0936C();
      if (v130 >= v128)
      {
        v134 = sub_21AED1D60();
        v136 = *(v135 - 256);
        v137(v134, v136);
        v89 = v136;
      }

      else
      {
        type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
        sub_21AED1F28(&v192);

        v131 = sub_21AED1D60();
        v89 = *(v132 - 256);
        v133(v131, v89);
      }
    }

    else
    {
      (*v124)(v127, v89);
LABEL_50:
      v84 = v191;
    }
  }

  sub_21AEC6E68(v84, &qword_27CD3D850, &qword_21AF0C618);

  if (v178)
  {
    v138 = v171;
    if (qword_27CD3D278 != -1)
    {
      sub_21AED1A5C();
      swift_once();
    }

    v139 = sub_21AF096CC();
    sub_21AEC78A8(v139, qword_27CD3EB60);
    v140 = sub_21AF096AC();
    v141 = sub_21AF09A7C();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = sub_21AED1D18();
      v143 = sub_21AEB39C8();
      *&v197 = v143;
      *v142 = 136315138;
      sub_21AEA7C78();

      v144 = sub_21AF0973C();
      v146 = v145;

      v147 = sub_21AECFFFC(v144, v146, &v197);

      *(v142 + 4) = v147;
      _os_log_impl(&dword_21AE94000, v140, v141, "PhotoIDCountGivenFaceCountDictWeek %s", v142, 0xCu);
      sub_21AEA79F0(v143);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    v148 = v172;
    v149 = sub_21AF096AC();
    v150 = sub_21AF09A7C();
    if (sub_21AED1CA4(v150))
    {
      v151 = sub_21AED1D18();
      v152 = sub_21AEB39C8();
      *&v197 = v152;
      *v151 = 136315138;
      sub_21AEA7C78();

      v153 = sub_21AF0973C();
      v155 = v154;

      v156 = sub_21AECFFFC(v153, v155, &v197);

      *(v151 + 4) = v156;
      sub_21AED1E88(&dword_21AE94000, v157, v158, "PhotoIDCountGivenFaceCountDictMonth %s");
      sub_21AEA79F0(v152);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    sub_21AED1D30();
    sub_21AED1D48();

    v159 = sub_21AED1DB4();
    v160 = v179;
    v179(v159, v138);
    v160(v183, v138);
  }

  else
  {

    sub_21AED1D30();
    sub_21AED1D48();

    v161 = sub_21AED1DB4();
    v162 = v171;
    v163 = v179;
    v179(v161, v171);
    v163(v183, v162);
  }

  sub_21AEA7C78();
  sub_21AEA7C78();
LABEL_62:
  v164 = *MEMORY[0x277D85DE8];
  sub_21AED1DCC();
  sub_21AEAD0A8();
}

id sub_21AECDE88(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_21AF092AC();
  v4 = [v2 initWithPhotoLibraryURL_];

  v5 = sub_21AF0930C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_21AECDF24()
{
  sub_21AEAD0C4();
  HIDWORD(v184) = v1;
  v194 = v2;
  v3 = sub_21AF094EC();
  v4 = sub_21AEA7C90(v3);
  v195 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_21AEC7504();
  v211 = v8;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v9);
  sub_21AEC774C();
  sub_21AED1AE0(v10);
  v11 = sub_21AF0952C();
  v12 = sub_21AEA7C90(v11);
  v193 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_21AEC7554();
  v192 = v17 - v16;
  v191 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC7854(v191);
  v19 = *(v18 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v20);
  v22 = &v184 - v21;
  v23 = sub_21AF093FC();
  v24 = sub_21AEA7C90(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_21AEAD074();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v33);
  v35 = &v184 - v34;
  sub_21AF093EC();
  v199 = v35;
  sub_21AF093AC();
  v36 = *(v26 + 8);
  v37 = sub_21AEC7734();
  v36(v37);
  sub_21AF093EC();
  v198 = v31;
  sub_21AF093AC();
  v190 = v23;
  v189 = v26 + 8;
  v188 = v36;
  (v36)(v0, v23);
  v187 = [objc_opt_self() sharedPhotoLibrary];
  v38 = [v187 librarySpecificFetchOptions];
  [v38 setFetchLimit_];
  sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_21AF0C080;
  v40 = *MEMORY[0x277CD9AA8];
  *(v39 + 32) = sub_21AF097CC();
  *(v39 + 40) = v41;
  v42 = *MEMORY[0x277CD9A80];
  *(v39 + 48) = sub_21AF097CC();
  *(v39 + 56) = v43;
  v44 = *MEMORY[0x277CD9B28];
  *(v39 + 64) = sub_21AF097CC();
  *(v39 + 72) = v45;
  v46 = *MEMORY[0x277CD9AD0];
  *(v39 + 80) = sub_21AF097CC();
  *(v39 + 88) = v47;
  v48 = *MEMORY[0x277CD9B10];
  *(v39 + 96) = sub_21AF097CC();
  *(v39 + 104) = v49;
  v50 = *MEMORY[0x277CD9A90];
  *(v39 + 112) = sub_21AF097CC();
  *(v39 + 120) = v51;
  v52 = sub_21AEC7734();
  sub_21AEF75E8(v52, v53);

  v55 = sub_21AEEF580(v54);
  v56 = objc_opt_self();
  v197 = v55;
  v57 = sub_21AF0987C();
  v186 = v38;
  v58 = [v56 fetchAssetsWithLocalIdentifiers:v57 options:v38];

  v59 = objc_opt_self();
  v185 = v58;
  v60 = [v59 fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets_];
  if (v60)
  {
    v61 = v60;
    sub_21AEA7574(&qword_27CD3DF50, &qword_21AF0C9A8);
    v62 = sub_21AF0972C();

    sub_21AF00820(v62, v63, v64, v65, v66, v67, v68, v69, v184, v185, v186, v187);
    v206 = v70;
  }

  else
  {
    v206 = 0;
  }

  v220 = MEMORY[0x277D84FA0];
  v71 = *(v197 + 16);
  v200 = v3;
  v72 = v211;
  v210 = v11;
  v209 = v22;
  v204 = v71;
  if (v71)
  {
    v73 = 0;
    v74 = MEMORY[0x277D84F98];
    v203 = v197 + 32;
    v75 = v197;
    while (1)
    {
      if (v73 >= *(v75 + 16))
      {
        goto LABEL_82;
      }

      v76 = (v203 + 16 * v73);
      v78 = *v76;
      v77 = v76[1];
      v38 = v206;
      if (!v206)
      {
        break;
      }

      v79 = *(v206 + 16);

      if (!v79)
      {
        goto LABEL_33;
      }

      sub_21AED1E38();
      v80 = sub_21AED0594();
      if ((v81 & 1) == 0)
      {

        goto LABEL_33;
      }

      v82 = *(*(v38 + 56) + 8 * v80);

      if (!v82)
      {
        goto LABEL_33;
      }

      v205 = v74;
      LOBYTE(v38) = v82 & 0xF8;
      if (v82 >> 62)
      {
        v75 = sub_21AF09DAC();
        if (v75)
        {
LABEL_13:
          v202 = v82 & 0xFFFFFFFFFFFFFF8;
          v196 = v78;
          v83 = 0;
          v212 = (v82 & 0xC000000000000001);
          *&v208 = v82;
          v201 = v82 + 32;
          v84 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v212)
            {
              v85 = MEMORY[0x21CEE4EF0](v83, v208);
            }

            else
            {
              if (v83 >= *(v202 + 16))
              {
                goto LABEL_84;
              }

              v85 = *(v201 + 8 * v83);
            }

            v86 = v85;
            v87 = __OFADD__(v83++, 1);
            if (v87)
            {
              break;
            }

            v88 = [v85 sceneIdentifier];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_21AEAC610(0, *(v84 + 16) + 1, 1, v84);
              v84 = v96;
            }

            v38 = *(v84 + 16);
            v89 = *(v84 + 24);
            v74 = v38 + 1;
            if (v38 >= v89 >> 1)
            {
              sub_21AEAC610(v89 > 1, v38 + 1, 1, v84);
              v84 = v97;
            }

            v90 = v88;
            *(v84 + 16) = v74;
            *(v84 + 8 * v38 + 32) = v88;
            v91 = v220;
            if (*(v220 + 16))
            {
              v92 = *(v220 + 40);
              v93 = sub_21AF09EEC();
              v94 = ~(-1 << *(v91 + 32));
              while (1)
              {
                v95 = v93 & v94;
                if (((*(v91 + 56 + (((v93 & v94) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v93 & v94)) & 1) == 0)
                {
                  break;
                }

                v93 = v95 + 1;
                if (*(*(v91 + 48) + 8 * v95) == v90)
                {
                  goto LABEL_29;
                }
              }
            }

            sub_21AEF65F0();
LABEL_29:

            if (v83 == v75)
            {
              sub_21AED1E7C();

              sub_21AED1E68();
              v78 = v196;
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_81;
        }
      }

      else
      {
        v75 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v75)
        {
          goto LABEL_13;
        }
      }

      v84 = MEMORY[0x277D84F90];
      sub_21AED1E68();
LABEL_34:
      swift_isUniquelyReferenced_nonNull_native();
      *&v216 = v74;
      v98 = v78;
      sub_21AED1E38();
      sub_21AED0594();
      v99 = *(v74 + 16);
      sub_21AED1B64();
      if (__OFADD__(v102, v103))
      {
        goto LABEL_83;
      }

      v38 = v100;
      v104 = v101;
      sub_21AEA7574(&qword_27CD3D918, &qword_21AF0C998);
      if (sub_21AF09D0C())
      {
        v105 = sub_21AED0594();
        if ((v104 & 1) != (v106 & 1))
        {
LABEL_88:
          sub_21AF09E7C();
          __break(1u);
          return;
        }

        v38 = v105;
      }

      if (v104)
      {

        v74 = v216;
        v107 = *(v216 + 56);
        v108 = *(v107 + 8 * v38);
        *(v107 + 8 * v38) = v84;
      }

      else
      {
        v74 = v216;
        sub_21AED1AA8(v216 + 8 * (v38 >> 6));
        v109 = (*(v74 + 48) + 16 * v38);
        *v109 = v98;
        v109[1] = v77;
        *(*(v74 + 56) + 8 * v38) = v84;
        v110 = *(v74 + 16);
        v87 = __OFADD__(v110, 1);
        v111 = v110 + 1;
        if (v87)
        {
          goto LABEL_85;
        }

        *(v74 + 16) = v111;
      }

      ++v73;
      v72 = v211;
      if (v73 == v204)
      {
        goto LABEL_47;
      }
    }

LABEL_33:
    v84 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v74 = MEMORY[0x277D84F98];
LABEL_47:
  v113 = v74 + 64;
  v112 = *(v74 + 64);
  v114 = *(v74 + 32);
  sub_21AED1A7C();
  v115 = v74;
  v118 = v117 & v116;
  v120 = (v119 + 63) >> 6;
  v205 = v115;
  swift_bridgeObjectRetain_n();
  v121 = 0;
  *&v122 = 136315394;
  v208 = v122;
  if (!v118)
  {
    goto LABEL_49;
  }

  do
  {
    v123 = v121;
LABEL_52:
    sub_21AED1E50();
    v126 = *v124;
    v125 = v124[1];
    v38 = *(v128 + 8 * v127);
    v129 = qword_27CD3D278;

    if (v129 != -1)
    {
      sub_21AED1A5C();
      swift_once();
    }

    v118 &= v118 - 1;
    v130 = sub_21AF096CC();
    sub_21AEC78A8(v130, qword_27CD3EB60);

    v131 = sub_21AF096AC();
    v132 = sub_21AF09A7C();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = sub_21AEB3B54();
      v212 = swift_slowAlloc();
      *&v216 = v212;
      *v133 = v208;
      v134 = sub_21AED1D94();
      v137 = sub_21AECFFFC(v134, v135, v136);

      *(v133 + 4) = v137;
      *(v133 + 12) = 2080;
      v138 = MEMORY[0x21CEE4B10](v38, MEMORY[0x277D83B88]);
      v140 = v139;

      v38 = sub_21AECFFFC(v138, v140, &v216);

      *(v133 + 14) = v38;
      _os_log_impl(&dword_21AE94000, v131, v132, "assetID: %s, sceneCategory: %s", v133, 0x16u);
      LOBYTE(v38) = v212;
      swift_arrayDestroy();
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    else
    {
    }

    v121 = v123;
    v72 = v211;
  }

  while (v118);
LABEL_49:
  while (1)
  {
    v123 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      break;
    }

    if (v123 >= v120)
    {

      v141 = sub_21AEA7574(&qword_27CD3D920, &qword_21AF0C9A0);
      sub_21AED1DCC();
      v219 = sub_21AF0974C();
      sub_21AED1DCC();
      *&v208 = v141;
      v218 = sub_21AF0974C();
      v142 = v192;
      sub_21AF0954C();
      v143 = v193;
      v144 = v210;
      (*(v193 + 16))(v209, v142, v210);
      v145 = *(v191 + 36);
      sub_21AEC5A18();
      sub_21AF099FC();
      (*(v143 + 8))(v142, v144);
      v212 = (v195 + 16);
      v146 = (v195 + 32);
      v147 = (v195 + 8);
      v148 = v200;
      while (1)
      {
        v149 = v209;
        LOBYTE(v38) = v210;
        sub_21AF09A1C();
        if (*(v149 + v145) == v216)
        {
          break;
        }

        v150 = sub_21AF09A6C();
        v151 = v207;
        (*v212)(v207);
        v150(&v216, 0);
        sub_21AF09A2C();
        (*v146)(v72, v151, v148);
        sub_21AEC74C8();
        sub_21AF094FC();
        if (v217)
        {
          if (swift_dynamicCast())
          {
            sub_21AED1B28();
            if (!v215)
            {
              __break(1u);
              goto LABEL_88;
            }

            sub_21AEAF9F4(&v214, &v216);
            swift_dynamicCast();
            v152 = v213;
            sub_21AF0936C();
            if (v153 < v152)
            {
              type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
              sub_21AED1EE8(&v219, v154, v155, v156, v220);
            }

            sub_21AF0936C();
            if (v157 >= v152)
            {
              v161 = v211;
              v148 = v200;
              (*v147)(v211, v200);
              v72 = v161;
            }

            else
            {
              type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
              sub_21AED1EE8(&v218, v158, v159, v160, v220);

              v72 = v211;
              v148 = v200;
              (*v147)(v211, v200);
            }
          }

          else
          {
            (*v147)(v72, v148);
          }
        }

        else
        {
          (*v147)(v72, v148);
          sub_21AEC6E68(&v216, &qword_27CD3D330, &unk_21AF0C420);
        }
      }

      sub_21AEC6E68(v149, &qword_27CD3D850, &qword_21AF0C618);

      if ((v184 & 0x100000000) == 0)
      {
        sub_21AED1D30();
        sub_21AED1D48();
        goto LABEL_79;
      }

      if (qword_27CD3D278 != -1)
      {
        goto LABEL_86;
      }

      goto LABEL_73;
    }

    v118 = *(v113 + 8 * v123);
    ++v121;
    if (v118)
    {
      goto LABEL_52;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  sub_21AED1A5C();
  swift_once();
LABEL_73:
  v162 = sub_21AF096CC();
  sub_21AEC78A8(v162, qword_27CD3EB60);
  v163 = sub_21AF096AC();
  v164 = sub_21AF09A7C();
  if (sub_21AED1CA4(v164))
  {
    v165 = sub_21AED1D18();
    v166 = sub_21AEB39C8();
    *&v216 = v166;
    *v165 = 136315138;
    sub_21AEA7C78();

    v167 = sub_21AF0973C();
    v169 = v168;

    v170 = sub_21AECFFFC(v167, v169, &v216);

    *(v165 + 4) = v170;
    _os_log_impl(&dword_21AE94000, v163, v38, "PhotoIDCountGivenSceneCategoryDictWeek %s", v165, 0xCu);
    sub_21AEA79F0(v166);
    sub_21AEAFB90();
    sub_21AEAFB90();
  }

  v171 = sub_21AF096AC();
  v172 = sub_21AF09A7C();
  if (sub_21AED1CA4(v172))
  {
    v173 = sub_21AED1D18();
    v174 = sub_21AEB39C8();
    *&v216 = v174;
    *v173 = 136315138;
    sub_21AEA7C78();

    v175 = sub_21AF0973C();
    v177 = v176;

    v178 = sub_21AECFFFC(v175, v177, &v216);

    *(v173 + 4) = v178;
    sub_21AED1E88(&dword_21AE94000, v179, v180, "PhotoIDCountGivenSceneCategoryDictMonth %s");
    sub_21AEA79F0(v174);
    sub_21AEAFB90();
    sub_21AEAFB90();
  }

  sub_21AED1D30();
  sub_21AED1D48();

LABEL_79:
  v181 = v190;
  v182 = v188;
  (v188)(v198, v190);
  v183 = sub_21AED1DB4();
  v182(v183, v181);

  sub_21AEA7C78();
  sub_21AEA7C78();
  sub_21AEAD0A8();
}

__int128 *sub_21AECEFFC(uint64_t a1, uint64_t a2, char a3)
{
  sub_21AECB90C();
  v73 = v4;
  v74 = v5;
  v76 = a3;
  sub_21AECC428();
  v75 = v6;
  v8 = v7;
  sub_21AEA7574(&qword_27CD3D938, &unk_21AF0C9D0);
  v9 = sub_21AF0974C();
  v89 = v9;
  v88 = MEMORY[0x277D84FA0];
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;
  v81 = v8;

  v15 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v84 = _Q0;
  v77 = v14;
  v78 = v8 + 64;
  if (v13)
  {
LABEL_9:
    while (1)
    {
      sub_21AED1E50();
      v22 = v21[1];
      v82 = v13;
      v83 = *v21;
      v25 = *(v24 + 8 * v23);
      v85 = *(v25 + 16);
      if (v85)
      {
        break;
      }

      v27 = MEMORY[0x277D84F98];
LABEL_25:
      swift_isUniquelyReferenced_nonNull_native();
      v87 = v9;
      sub_21AED0594();
      v39 = *(v9 + 16);
      sub_21AED1B64();
      if (__OFADD__(v42, v43))
      {
        goto LABEL_38;
      }

      v44 = v40;
      v45 = v41;
      sub_21AEA7574(&qword_27CD3D940, &qword_21AF0D3C0);
      if (sub_21AF09D0C())
      {
        v46 = sub_21AED0594();
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_40;
        }

        v44 = v46;
      }

      v9 = v87;
      if (v45)
      {
        v48 = *(v87 + 56);
        v49 = *(v48 + 8 * v44);
        *(v48 + 8 * v44) = v27;
      }

      else
      {
        sub_21AED1AA8(v87 + 8 * (v44 >> 6));
        v50 = (*(v9 + 48) + 16 * v44);
        *v50 = v83;
        v50[1] = v22;
        *(*(v9 + 56) + 8 * v44) = v27;
        v51 = *(v9 + 16);
        _VF = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (_VF)
        {
          goto LABEL_39;
        }

        *(v9 + 16) = v52;
      }

      v13 = (v82 - 1) & v82;
      v89 = v9;
      v14 = v77;
      v10 = v78;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v79 = v21[1];
    v80 = v9;

    v26 = 0;
    v27 = MEMORY[0x277D84F98];
    while (v26 < *(v25 + 16))
    {
      v28 = (v25 + 32 + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v90 = v84;
      v91 = v84;
      v92 = v84;
      v93 = v84;

      swift_isUniquelyReferenced_nonNull_native();
      v87 = v27;
      sub_21AF05348();
      v27 = v87;
      v31 = v88;
      if (*(v88 + 16))
      {
        v32 = *(v88 + 40);
        sub_21AF09EFC();
        sub_21AF097EC();
        v33 = sub_21AF09F1C();
        v34 = ~(-1 << *(v31 + 32));
        while (1)
        {
          v35 = v33 & v34;
          if (((*(v31 + 56 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
          {
            break;
          }

          v36 = (*(v31 + 48) + 16 * v35);
          if (*v36 != v29 || v36[1] != v30)
          {
            v38 = sub_21AF09E4C();
            v33 = v35 + 1;
            if ((v38 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_22;
        }
      }

      sub_21AEF66E4(&v87, v29, v30);
LABEL_22:

      if (++v26 == v85)
      {

        v22 = v79;
        v9 = v80;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v20 >= v14)
      {

        type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
        sub_21AEE80E8(&v89, v73, v75, 1, v76 & 1);

        sub_21AEE80E8(&v89, v74, v81, 0, v76 & 1);

        sub_21AECCCC0();
        v54 = v53;
        v56 = v55;
        v58 = v57;

        sub_21AECDF24();
        v60 = v59;
        v62 = v61;
        v86 = v63;

        v64 = sub_21AED1E2C();
        sub_21AEE681C(v64, v54, v56, v75, 1, v65);

        v66 = sub_21AED1E2C();
        sub_21AEE681C(v66, v54, v58, v81, 0, v67);

        v68 = sub_21AED1E2C();
        sub_21AEE77C0(v68, v60, v62, v75, 1, v69);

        v70 = sub_21AED1E2C();
        sub_21AEE77C0(v70, v60, v86, v81, 0, v71);

        return v89;
      }

      v13 = *(v10 + 8 * v20);
      ++v15;
      if (v13)
      {
        v15 = v20;
        goto LABEL_9;
      }
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_21AF09E7C();
  __break(1u);
  return result;
}

uint64_t sub_21AECF558()
{
  result = sub_21AF094FC();
  if (!v3)
  {
    goto LABEL_7;
  }

  sub_21AEAF9F4(&v2, &v4);
  swift_dynamicCast();
  result = v1;
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (HIDWORD(v1))
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

void sub_21AECF600()
{
  v1 = sub_21AF093FC();
  v2 = sub_21AEA7C90(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_21AEAD074();
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v7);
  sub_21AF093EC();
  sub_21AF0938C();
  v8 = *(v4 + 8);
  v8(v0, v1);
  sub_21AF0936C();
  v9 = sub_21AED1D94();
  (v8)(v9);
  sub_21AF093EC();
  sub_21AF0936C();
  v10 = sub_21AED1D94();
  (v8)(v10);
  sub_21AECF74C();
}

void sub_21AECF74C()
{
  sub_21AEAD0C4();
  v2 = v1;
  v3 = sub_21AF093FC();
  v4 = sub_21AEA7C90(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_21AEAD074();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_21AED1BF4();
  sub_21AF0935C();
  sub_21AF0935C();
  sub_21AEC74C8();
  sub_21AF094FC();
  if (v18)
  {
    sub_21AEAF9F4(&v17, &v19);
    swift_dynamicCast();
    v13 = sub_21AF097BC();

    v14 = sub_21AF0939C();
    v15 = sub_21AF0939C();
    if (v2)
    {
      sub_21AED1D94();
      v2 = sub_21AF097BC();
    }

    [objc_opt_self() shareInformationForPhotoId:v13 startTime:v14 endTime:v15 interactionStorePath:v2];

    v16 = *(v6 + 8);
    v16(v11, v3);
    v16(v0, v3);
    sub_21AEAD0A8();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21AECF92C(uint64_t a1, void (**a2)(uint64_t))
{
  v66 = a2;
  v69 = sub_21AF094EC();
  v2 = sub_21AEA7C90(v69);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_21AEC7504();
  v70 = v7;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v8);
  sub_21AEC774C();
  v67 = v9;
  sub_21AEAFBDC();
  v68 = sub_21AF0952C();
  v10 = sub_21AEA7C90(v68);
  v65 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_21AEC7554();
  v16 = v15 - v14;
  v17 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC7854(v17);
  v19 = *(v18 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v23 = sub_21AF0957C();
  v24 = sub_21AEA7C90(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_21AEC7554();
  v63 = v30 - v29;
  sub_21AEC7530();
  result = sub_21AF094FC();
  if (v73)
  {
    v61 = v26;
    v62 = v23;
    sub_21AED1F48();
    sub_21AED1C14();
    swift_dynamicCast();
    v33 = v71;
    v32 = v72;
    result = sub_21AF094FC();
    if (!v73)
    {
      goto LABEL_30;
    }

    sub_21AED1F48();
    sub_21AED1C14();
    swift_dynamicCast();
    HIDWORD(v60) = v71;
    type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
    sub_21AEB908C(v33, v32, v66, 0, v34, v35, v36, v37, v32, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    sub_21AF0954C();
    v38 = v65;
    v39 = v68;
    (*(v65 + 2))(v22, v16, v68);
    v40 = *(v17 + 36);
    sub_21AEC5A18();
    sub_21AF099FC();
    (*(v38 + 1))(v16, v39);
    v41 = (v4 + 32);
    v65 = "parent_cardSectionId";
    v66 = (v4 + 16);
    v42 = (v4 + 8);
    v64 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_21AF09A1C();
      if (*&v22[v40] == v74[0])
      {
        break;
      }

      v43 = sub_21AF09A6C();
      (*v66)(v67);
      v43(v74, 0);
      sub_21AF09A2C();
      v44 = *v41;
      v45 = sub_21AEC7734();
      v46(v45);
      result = sub_21AF094FC();
      if (!v73)
      {
        goto LABEL_28;
      }

      sub_21AED1F48();
      swift_dynamicCast();
      if (v71 == 1)
      {
        result = sub_21AF094FC();
        if (!v73)
        {
          goto LABEL_31;
        }

        sub_21AED1F48();
        sub_21AED1C14();
        swift_dynamicCast();
        v47 = v71;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = *(v64 + 16);
          sub_21AEAC498();
          v64 = v51;
        }

        v48 = *(v64 + 16);
        if (v48 >= *(v64 + 24) >> 1)
        {
          sub_21AEAC498();
          v64 = v52;
        }

        (*v42)(v70, v69);
        v49 = v64;
        *(v64 + 16) = v48 + 1;
        *(v49 + 4 * v48 + 32) = v47;
      }

      else
      {
        (*v42)(v70, v69);
      }
    }

    sub_21AEC6E68(v22, &qword_27CD3D850, &qword_21AF0C618);

    v53 = v64;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21AED110C(v53);
      v53 = v58;
    }

    v55 = v61;
    v54 = v62;
    v56 = *(v53 + 16);
    v74[0] = v53 + 32;
    v74[1] = v56;
    sub_21AED0868(v74);
    for (i = 0; *(v53 + 16) != i; ++i)
    {
      if (*(v53 + 4 * i + 32) == HIDWORD(v60))
      {
        goto LABEL_21;
      }
    }

    i = 1;
LABEL_21:
    (*(v55 + 8))(v63, v54);

    result = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
    }

    else if ((result & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(result))
      {
        return result;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

id AMLPhotosSearchPoirotDataMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMLPhotosSearchPoirotDataMetrics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchPoirotDataMetrics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AMLPhotosSearchPoirotDataMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchPoirotDataMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21AECFFFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21AED00C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_21AEA784C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_21AEA79F0(v11);
  return v7;
}

unint64_t sub_21AED00C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21AED01C0(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_21AF09CAC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21AED01C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_21AED020C(a1, a2);
  sub_21AED0324(&unk_282C805E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21AED020C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_21AF0981C())
  {
    result = sub_21AED0408(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21AF09C4C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_21AF09CAC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21AED0324(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_21AED0478(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21AED0408(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21AEA7574(&qword_27CD3D948, qword_21AF0C9E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_21AED0478(char *result, int64_t a2, char a3, char *a4)
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
    sub_21AEA7574(&qword_27CD3D948, qword_21AF0C9E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_21AED0594()
{
  v1 = *(v0 + 40);
  sub_21AF09EFC();
  sub_21AF097EC();
  sub_21AF09F1C();
  v2 = sub_21AEB3974();

  return sub_21AED0690(v2, v3, v4);
}

unint64_t sub_21AED0608(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_21AF09EEC();

  return sub_21AED0744(a1, v4);
}

unint64_t sub_21AED064C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_21AF09BEC();

  return sub_21AED07A4(a1, v5);
}

unint64_t sub_21AED0690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21AF09E4C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_21AED0744(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_21AED07A4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_21AED1894(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x21CEE4E60](v8, a1);
    sub_21AED18F0(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_21AED0868(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21AF09E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21AF098FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21AED09B8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_21AED095C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AED095C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 4 * a3 - 4;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 4 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 4;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AED09B8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 4 * v8);
        v10 = *(*a3 + 4 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 4 * v11++) >= v12);
          v12 = *(*a3 + 4 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 4 * v16);
                *(v17 + 4 * v16) = *(v17 + 4 * v15);
                *(v17 + 4 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 4 * v8 - 4;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 4 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 4;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v7[2];
        sub_21AEAC638();
        v7 = v71;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_21AEAC638();
        v7 = v72;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_21AED0F84((*a3 + 4 * *v64), (*a3 + 4 * *v66), (*a3 + 4 * v67), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_21AED0E58(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_21AED0E58(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21AEFBBF8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_21AED0F84((*a3 + 4 * *v9), (*a3 + 4 * *v11), (*a3 + 4 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21AED0F84(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 4;
  v9 = (a3 - a2) / 4;
  if (v8 < v9)
  {
    sub_21AEFAB80(a1, (a2 - a1) / 4, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_21AEFAB80(a2, (a3 - a2) / 4, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  v14 = v6 - 4;
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 4 == v6;
      v6 -= 4;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 4)
    {
      *v5 = v16;
    }

    v10 -= 4;
  }

LABEL_28:
  v17 = (v10 - v4) / 4;
  if (v6 != v4 || v6 >= &v4[4 * v17])
  {
    memmove(v6, v4, 4 * v17);
  }

  return 1;
}

uint64_t getEnumTagSinglePayload for AMLSODAConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AMLSODAConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_21AED1718()
{
  result = qword_27CD3D900;
  if (!qword_27CD3D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D900);
  }

  return result;
}

unint64_t sub_21AED1770()
{
  result = qword_27CD3D908;
  if (!qword_27CD3D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D908);
  }

  return result;
}

unint64_t sub_21AED17C8()
{
  result = qword_27CD3D910;
  if (!qword_27CD3D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D910);
  }

  return result;
}

uint64_t sub_21AED181C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21AF09DAC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

unint64_t sub_21AED1944()
{
  result = qword_27CD3D950;
  if (!qword_27CD3D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D950);
  }

  return result;
}

__n128 sub_21AED19A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21AED19B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_21AED19F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21AED1AB8@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;

  return sub_21AF09EDC();
}

uint64_t sub_21AED1B28()
{

  return sub_21AF094FC();
}

id sub_21AED1B4C(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_21AED1B70()
{
  v1 = *(*(v0 - 280) + 8);
  result = *(v0 - 216);
  v3 = *(v0 - 272);
  return result;
}

double sub_21AED1B90@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 - 256) | 0x8000000000000000;

  return sub_21AEC8AA8(v2, a1);
}

__n128 sub_21AED1BAC(__n128 *a1)
{
  result = *(v1 - 496);
  a1[1] = result;
  *(v1 - 192) = 0;
  *(v1 - 184) = 0xE000000000000000;
  return result;
}

uint64_t sub_21AED1C34(uint64_t a1)
{
  *(a1 + 16) = *(v1 - 160);
  *(v1 - 120) = 0;
  *(v1 - 112) = 0xE000000000000000;
}

uint64_t sub_21AED1C5C()
{
  result = *(v0 - 264);
  v3 = *(v0 - 136);
  v2 = *(v0 - 128);
  v4 = *(v0 - 144);
  return result;
}

BOOL sub_21AED1CA4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_21AED1CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FDB38](a1, a2, a3, v3);
}

uint64_t sub_21AED1CDC()
{

  return sub_21AF09E4C();
}

uint64_t sub_21AED1D18()
{

  return swift_slowAlloc();
}

void sub_21AED1D30()
{
  v2 = *(v0 - 464);
}

void sub_21AED1D48()
{
  v2 = *(v0 - 472);
}

uint64_t sub_21AED1DE4()
{
  result = v0;
  v4 = *(v1 - 136);
  v3 = *(v1 - 128);
  v5 = *(v1 - 144);
  return result;
}

void sub_21AED1DF8()
{
  v4 = (*(v0 + 48) + 16 * v3);
  *v4 = v2;
  v4[1] = v1;
  v5 = *(v0 + 56);
}

void sub_21AED1E88(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_21AED1EA8()
{

  return sub_21AEA75BC(v0, 0, 1, v1);
}

uint64_t sub_21AED1EC8()
{

  return sub_21AF0974C();
}

uint64_t sub_21AED1EE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 - 312);

  return sub_21AEE706C(a1, v6, v5, v9, a5);
}

uint64_t sub_21AED1F08()
{

  return sub_21AF0974C();
}

uint64_t sub_21AED1F28(void *a1)
{
  v5 = *(v3 - 368);

  return sub_21AEE7500(a1, v1, v2);
}

_OWORD *sub_21AED1F48()
{

  return sub_21AEAF9F4((v0 - 152), (v0 - 120));
}

void *sub_21AED2014()
{
  v1 = *(v0 + OBJC_IVAR___AMLClientDonations_arrayProvider);
  v2 = v1;
  return v1;
}

void *sub_21AED2078()
{
  v1 = *(v0 + OBJC_IVAR___AMLClientDonations_featuresConfiguration);
  v2 = v1;
  return v1;
}

void *sub_21AED20DC()
{
  v1 = *(v0 + OBJC_IVAR___AMLClientDonations_metadata);
  v2 = v1;
  return v1;
}

uint64_t sub_21AED2164()
{
  v1 = *(v0 + OBJC_IVAR___AMLClientDonations_donationTime);
  v2 = *(v0 + OBJC_IVAR___AMLClientDonations_donationTime + 8);

  return v1;
}

id AMLClientDonations.init(featuresConfiguration:featureProvider:batchProvider:arrayProvider:metadata:donationTime:)()
{
  sub_21AED2E9C();
  if (v3)
  {
    v4 = sub_21AF097BC();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_21AED2EB8(v5, sel_initWithFeaturesConfiguration_featureProvider_batchProvider_arrayProvider_metadata_donationTime_);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

id AMLClientDonations.init(featuresConfiguration:featureProvider:batchProvider:arrayProvider:metadata:donationTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + OBJC_IVAR___AMLClientDonations_featuresConfiguration) = a1;
  *(v7 + OBJC_IVAR___AMLClientDonations_featureProvider) = a2;
  *(v7 + OBJC_IVAR___AMLClientDonations_batchProvider) = a3;
  *(v7 + OBJC_IVAR___AMLClientDonations_arrayProvider) = a4;
  *(v7 + OBJC_IVAR___AMLClientDonations_metadata) = a5;
  v8 = (v7 + OBJC_IVAR___AMLClientDonations_donationTime);
  *v8 = a6;
  v8[1] = a7;
  v10.super_class = AMLClientDonations;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t AMLClientDonations.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = [v1 featuresConfiguration];
  v4 = [v1 featureProvider];
  v5 = [v1 batchProvider];
  v6 = [v1 arrayProvider];
  v7 = [v1 metadata];
  sub_21AED2D8C(v1);
  v8 = objc_allocWithZone(AMLClientDonations);
  v9 = sub_21AED2CF4();
  result = type metadata accessor for AMLClientDonations(v9);
  a1[3] = result;
  *a1 = v9;
  return result;
}

Swift::Void __swiftcall AMLClientDonations.encode(with:)(NSCoder with)
{
  v3 = [v1 featuresConfiguration];
  v4 = sub_21AEAFBE8();
  v5 = sub_21AED2E34();
  [v5 v6];

  v7 = [v1 featureProvider];
  v8 = sub_21AF097BC();
  v9 = sub_21AED2E34();
  [v9 v10];
  swift_unknownObjectRelease();

  v11 = [v1 batchProvider];
  sub_21AED2F18();
  v12 = sub_21AF097BC();
  v13 = sub_21AED2E34();
  [v13 v14];
  swift_unknownObjectRelease();

  v15 = [v1 arrayProvider];
  sub_21AED2F04();
  v16 = sub_21AF097BC();
  v17 = sub_21AED2E34();
  [v17 v18];

  v19 = [v1 metadata];
  v20 = sub_21AED2EE0();
  v21 = sub_21AED2E34();
  [v21 v22];

  sub_21AED2D8C(v1);
  if (v23)
  {
    v24 = sub_21AF097BC();
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_21AED2E70();
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];
  swift_unknownObjectRelease();
}

id AMLClientDonations.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v4 = sub_21AEAFBE8();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_21AF09B9C();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AED2E64();
  }

  sub_21AED2E04(v6, v7, v8, v9, v10, v11, v12, v13, v79, v85, v91.receiver, v91.super_class, v92, v93, v94, v95, v96);
  if (!v14)
  {

LABEL_47:
    v26 = sub_21AEADFD8(v97);
    goto LABEL_53;
  }

  type metadata accessor for AMLFeaturesConfiguration(0);
  if ((sub_21AED2E14() & 1) == 0)
  {

LABEL_53:
    type metadata accessor for AMLClientDonations(v26);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v15 = v92;
  v16 = sub_21AF097BC();
  v17 = [a1 decodeObjectForKey_];

  if (v17)
  {
    sub_21AF09B9C();
    v18 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AED2E64();
  }

  sub_21AED2E04(v18, v19, v20, v21, v22, v23, v24, v25, v80, v86, v91.receiver, v91.super_class, v92, v93, v94, v95, v96);
  if (!v27)
  {

LABEL_46:
    goto LABEL_47;
  }

  sub_21AEA7574(&unk_27CD3DE90, &unk_21AF0C440);
  if ((sub_21AED2E14() & 1) == 0)
  {

LABEL_52:
    goto LABEL_53;
  }

  v28 = v92;
  sub_21AED2F18();
  v29 = sub_21AF097BC();
  v30 = sub_21AED2E44(v29);

  if (v30)
  {
    sub_21AF09B9C();
    v31 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AED2E64();
  }

  sub_21AED2E04(v31, v32, v33, v34, v35, v36, v37, v38, v81, v87, v91.receiver, v91.super_class, v92, v93, v94, v95, v96);
  if (!v39)
  {

LABEL_45:
    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  sub_21AEA7574(&qword_27CD3D9F0, &unk_21AF0C430);
  if ((sub_21AED2E14() & 1) == 0)
  {

LABEL_51:
    swift_unknownObjectRelease();
    goto LABEL_52;
  }

  v40 = v92;
  sub_21AED2F04();
  v41 = sub_21AF097BC();
  v42 = sub_21AED2E44(v41);

  if (v42)
  {
    sub_21AF09B9C();
    v43 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AED2E64();
  }

  sub_21AED2E04(v43, v44, v45, v46, v47, v48, v49, v50, v82, v88, v91.receiver, v91.super_class, v92, v93, v94, v95, v96);
  if (!v51)
  {

LABEL_44:
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  sub_21AEA7B80(0, &qword_27CD3D9F8, 0x277CBFEB0);
  if ((sub_21AED2E14() & 1) == 0)
  {

LABEL_50:
    swift_unknownObjectRelease();
    goto LABEL_51;
  }

  v52 = v92;
  v53 = sub_21AED2EE0();
  v54 = sub_21AED2E44(v53);

  if (v54)
  {
    sub_21AF09B9C();
    v55 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AED2E64();
  }

  sub_21AED2E04(v55, v56, v57, v58, v59, v60, v61, v62, v83, v89, v91.receiver, v91.super_class, v92, v93, v94, v95, v96);
  if (!v63)
  {

LABEL_43:
    goto LABEL_44;
  }

  type metadata accessor for AMLFeaturesDonationMetadata(0);
  if ((sub_21AED2E14() & 1) == 0)
  {

LABEL_49:
    goto LABEL_50;
  }

  v64 = sub_21AED2E70();
  v65 = sub_21AED2E44(v64);

  if (v65)
  {
    sub_21AF09B9C();
    v66 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AED2E64();
  }

  sub_21AED2E04(v66, v67, v68, v69, v70, v71, v72, v73, v84, v92, v91.receiver, v91.super_class, v92, v93, v94, v95, v96);
  if (!v74)
  {

    goto LABEL_43;
  }

  if ((sub_21AED2E14() & 1) == 0)
  {

    goto LABEL_49;
  }

  *&v1[OBJC_IVAR___AMLClientDonations_featuresConfiguration] = v15;
  *&v1[OBJC_IVAR___AMLClientDonations_featureProvider] = v28;
  *&v1[OBJC_IVAR___AMLClientDonations_batchProvider] = v40;
  *&v1[OBJC_IVAR___AMLClientDonations_arrayProvider] = v52;
  *&v1[OBJC_IVAR___AMLClientDonations_metadata] = v90;
  v75 = v93;
  v76 = &v1[OBJC_IVAR___AMLClientDonations_donationTime];
  *v76 = v92;
  *(v76 + 1) = v75;
  v91.receiver = v1;
  v91.super_class = AMLClientDonations;
  v77 = objc_msgSendSuper2(&v91, sel_init);

  return v77;
}

id AMLClientDonations.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_21AED2CF4()
{
  sub_21AED2E9C();
  if (v4)
  {
    v5 = sub_21AF097BC();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21AED2EB8(v3, sel_initWithFeaturesConfiguration_featureProvider_batchProvider_arrayProvider_metadata_donationTime_);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_21AED2D8C(void *a1)
{
  v1 = [a1 donationTime];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21AF097CC();

  return v3;
}

uint64_t sub_21AED2E14()
{

  return swift_dynamicCast();
}

id sub_21AED2E44(uint64_t a1)
{

  return [v1 (v2 + 2445)];
}

uint64_t sub_21AED2E70()
{

  return sub_21AF097BC();
}

id sub_21AED2EB8(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_21AED2EE0()
{

  return sub_21AF097BC();
}

uint64_t type metadata accessor for AMLSODAUserHostEnvironment()
{
  result = qword_27CD3DA10;
  if (!qword_27CD3DA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AED2FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_21AED3054(a1, a2, a3);
}

uint64_t sub_21AED3054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21AF0930C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_27CD3DA08;
  *(v3 + v10) = [objc_opt_self() standardUserDefaults];
  (*(v6 + 16))(v9, a3, v5);
  v11 = sub_21AF0965C();
  (*(v6 + 8))(a3, v5);
  return v11;
}

uint64_t sub_21AED319C()
{
  v1 = *(v0 + qword_27CD3DA08);
  v2 = sub_21AF097BC();
  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_21AF09B9C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21AEADFD8(v8);
    return 0;
  }
}

void sub_21AED32A4(uint64_t a1, char a2)
{
  v3 = *(v2 + qword_27CD3DA08);
  if (a2)
  {
    v4 = v3;
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v5 = sub_21AF099AC();
  }

  v7 = sub_21AF097BC();
  [v3 setObject:v5 forKey:v7];

  swift_unknownObjectRelease();
}

void (*sub_21AED3358(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_21AED319C();
  *(a1 + 8) = v3 & 1;
  return sub_21AED33A8;
}

uint64_t sub_21AED33E8()
{
  v0 = sub_21AF0966C();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21AED3450(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a8;
  v56 = a1;
  v57 = a2;
  sub_21AEE1E2C();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  sub_21AEA7CA4();
  v58 = v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_21AEA7C90(AssociatedTypeWitness);
  v60 = v19;
  v21 = *(v20 + 64);
  sub_21AEC7728();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v45 - v24;
  v26 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  sub_21AEA7CA4();
  v54 = v27;
  v28 = swift_getAssociatedTypeWitness();
  v29 = sub_21AEA7C90(v28);
  v48 = v30;
  v49 = v29;
  v32 = *(v31 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v33);
  v35 = &v45 - v34;
  v36 = sub_21AF09A0C();
  if (!v36)
  {
    return sub_21AF098EC();
  }

  v59 = v36;
  v63 = sub_21AF09CDC();
  v50 = sub_21AF09CEC();
  sub_21AF09CBC();
  result = sub_21AF099FC();
  if ((v59 & 0x8000000000000000) == 0)
  {
    v45 = v12;
    v46 = a5;
    v38 = 0;
    v51 = (v60 + 16);
    v52 = v60 + 8;
    v53 = v8;
    while (!__OFADD__(v38, 1))
    {
      v60 = v38 + 1;
      v39 = sub_21AF09A6C();
      (*v51)(v25);
      v39(v62, 0);
      v40 = v61;
      v56(v25, v58);
      if (v40)
      {
        v43 = sub_21AEE2E64();
        v44(v43);
        (*(v48 + 8))(v35, v49);

        return (*(v45 + 32))(v47, v58, v46);
      }

      v61 = 0;
      v41 = sub_21AEE2E64();
      v42(v41);
      sub_21AF09CCC();
      result = sub_21AF09A2C();
      ++v38;
      if (v60 == v59)
      {
        (*(v48 + 8))(v35, v49);
        return v63;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AMLRecommendationPipeline.contextFeatureProviders()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  sub_21AEE2514();
  swift_getExtendedExistentialTypeMetadata();
  sub_21AEE2790();
  return sub_21AF098EC();
}

uint64_t sub_21AED3940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  sub_21AEE2CBC();
  swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  sub_21AEE2790();
  return sub_21AF098EC();
}

uint64_t sub_21AED39D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  sub_21AEE2CBC();
  swift_getAssociatedTypeWitness();
  sub_21AEE17F4();
  swift_getExtendedExistentialTypeMetadata();
  sub_21AEE2790();
  return sub_21AF098EC();
}

uint64_t AMLRecommendationPipeline.process(context:)()
{
  sub_21AEE2818();
  v3 = v2;
  v1[134] = v0;
  v1[133] = v4;
  v1[132] = v2;
  v1[131] = v5;
  v1[135] = *(v4 + 8);
  v1[136] = swift_getAssociatedTypeWitness();
  sub_21AEE2CBC();
  v1[137] = swift_getAssociatedTypeWitness();
  sub_21AEE252C();
  v6 = type metadata accessor for AMLRankingPipelineContext();
  v1[138] = v6;
  v7 = *(v6 - 8);
  sub_21AEE21F4();
  v1[139] = v8;
  v10 = *(v9 + 64);
  v1[140] = sub_21AEE30A8();
  sub_21AEE252C();
  v11 = type metadata accessor for AMLScoringPipelineContext();
  v1[141] = v11;
  v12 = *(v11 - 8);
  sub_21AEE21F4();
  v1[142] = v13;
  v15 = *(v14 + 64);
  v1[143] = sub_21AEE30A8();
  sub_21AEE1E2C();
  v1[144] = v16;
  v18 = *(v17 + 64);
  v1[145] = sub_21AEE2D7C();
  v1[146] = swift_task_alloc();
  v19 = type metadata accessor for AMLCandidateWithFeatures();
  v1[147] = v19;
  sub_21AEA7C90(v19);
  v1[148] = v20;
  v22 = *(v21 + 64) + 15;
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  v1[152] = swift_getTupleTypeMetadata2();
  v23 = sub_21AF09B7C();
  v1[153] = v23;
  v24 = *(v23 - 8);
  sub_21AEE21F4();
  v1[154] = v25;
  v27 = *(v26 + 64);
  v1[155] = sub_21AEE2D7C();
  v1[156] = swift_task_alloc();
  v1[157] = swift_task_alloc();
  sub_21AEE268C();
  v1[158] = v28;
  v30 = *(v29 + 64);
  v1[159] = sub_21AEE2D7C();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v31 = *(v3 - 8);
  v1[168] = v31;
  v32 = *(v31 + 64);
  v1[169] = sub_21AEE2D7C();
  v1[170] = swift_task_alloc();
  v1[171] = swift_task_alloc();
  v1[172] = swift_task_alloc();
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v1[175] = swift_task_alloc();
  v1[176] = swift_task_alloc();
  v1[177] = swift_task_alloc();
  sub_21AEE246C();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_21AED3E70()
{
  v84 = v0;
  if (qword_27CD3D2C0 != -1)
  {
    sub_21AEE1934();
  }

  v3 = *(v0 + 1416);
  v4 = *(v0 + 1344);
  v78 = *(v0 + 1336);
  v80 = *(v0 + 1408);
  v5 = *(v0 + 1264);
  sub_21AEE2F58();
  v6 = sub_21AF096CC();
  *(v0 + 1424) = sub_21AEA7958(v6, qword_27CD3EC20);
  v7 = *(v4 + 16);
  *(v0 + 1432) = v7;
  *(v0 + 1440) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8 = sub_21AEE2034();
  (v7)(v8);
  v9 = *(v5 + 16);
  *(v0 + 1448) = v9;
  *(v0 + 1456) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v78, v2, v1);
  sub_21AEE2334();
  v7();
  v10 = sub_21AF096AC();
  v81 = sub_21AF09AAC();
  v11 = os_log_type_enabled(v10, v81);
  v12 = *(v0 + 1416);
  v13 = *(v0 + 1408);
  v14 = *(v0 + 1344);
  v15 = *(v0 + 1336);
  v16 = *(v0 + 1264);
  v17 = *(v0 + 1088);
  if (v11)
  {
    v18 = *(v0 + 1080);
    v19 = *(v0 + 1056);
    sub_21AEE2058();
    v75 = v20;
    swift_slowAlloc();
    v83 = sub_21AEE1FE4();
    *v10 = 136315394;
    v74 = v18;
    sub_21AEE2EF0();
    v73 = v21(v15, v19);
    v23 = v22;
    v24 = *(v16 + 8);
    v25 = sub_21AEC7BDC();
    v24(v25);
    v26 = *(v14 + 8);
    v27 = sub_21AEE2854();
    v26(v27);
    sub_21AECFFFC(v73, v23, &v83);
    sub_21AEE2064();

    sub_21AEE1BDC();
    (*(*(*(v74 + 8) + 8) + 16))(v19);
    v28 = sub_21AEE2064();
    (v26)(v28, v19);
    sub_21AEEC484();

    v29 = sub_21AEE204C();
    sub_21AECFFFC(v29, v30, v31);
    sub_21AEE2180();

    *(v10 + 14) = v75;
    v32 = v10;
    sub_21AEE218C(&dword_21AE94000, v33, v81, "<requestID: %s> Processing %s");
    sub_21AEE2930();
    sub_21AEE20A4();
    v34 = v10;
    v35 = v24;
    MEMORY[0x21CEE5A20](v34, -1, -1);
  }

  else
  {
    v26 = *(v14 + 8);
    (v26)(*(v0 + 1408), *(v0 + 1056));

    v35 = *(v16 + 8);
    v36 = sub_21AEC7BDC();
    v35(v36);
    v37 = sub_21AEE2460();
    v26(v37);
  }

  *(v0 + 1472) = v35;
  *(v0 + 1464) = v26;
  v38 = [objc_opt_self() mainBundle];
  v39 = [v38 bundleIdentifier];

  if (v39)
  {
    v40 = *(v0 + 1080);
    v41 = *(v0 + 1072);
    v42 = *(v0 + 1064);
    v43 = *(v0 + 1056);
    v82 = *(v0 + 1048);
    v76 = *(v0 + 1088);
    v44 = sub_21AF097CC();
    v77 = v45;
    v79 = v44;

    v46 = *(v42 + 40);
    v47 = sub_21AEE2174();
    *(v0 + 1024) = v48(v47);
    v49 = swift_task_alloc();
    *(v49 + 16) = v43;
    *(v49 + 24) = v42;
    *(v0 + 848) = v76;
    sub_21AEE1A84();
    swift_getExtendedExistentialTypeMetadata();
    sub_21AEE2790();
    v50 = sub_21AF0997C();
    sub_21AEE1A6C();
    WitnessTable = swift_getWitnessTable();
    v53 = sub_21AED3450(sub_21AEE15C0, v49, v50, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v52);

    *(v0 + 1040) = v53;
    v54 = sub_21AEE2D64();
    sub_21AEA7574(v54, v55);
    sub_21AEE1684(&qword_27CD3DA20, &qword_27CD3D880, &qword_21AF0C650);
    v56 = sub_21AF097AC();
    v58 = v57;

    type metadata accessor for AMLFeaturesSpecification(0);
    sub_21AF0974C();
    v59 = sub_21AEDD4A4();
    v60 = objc_allocWithZone(AMLFeaturesConfiguration);
    v61 = sub_21AEE0C50(v79, v77, v56, v58, 0x69737265762D6F6ELL, 0xEA00000000006E6FLL, 3, v59);
    v62 = [objc_allocWithZone(AMLPipelineLogger) initWithFeaturesConfiguration_];
    sub_21AEE2EF0();
    v63(v82, v43, v40);
    v64 = objc_allocWithZone(AMLFeaturesDonationMetadata);
    v65 = sub_21AEE2460();
    v39 = sub_21AEE0BB4(v65, v66, 0);
  }

  else
  {
    v62 = 0;
  }

  *(v0 + 1488) = v62;
  *(v0 + 1480) = v39;
  v67 = swift_task_alloc();
  *(v0 + 1496) = v67;
  *v67 = v0;
  v67[1] = sub_21AED4468;
  v68 = *(v0 + 1072);
  v69 = *(v0 + 1064);
  v70 = *(v0 + 1056);
  sub_21AEE2040(*(v0 + 1048));
  sub_21AEE2F84();

  return AMLRecommendationPipeline.contextFeatures(context:)();
}

uint64_t sub_21AED4468()
{
  sub_21AEE2AC0();
  sub_21AEE269C();
  v3 = v2;
  sub_21AEE1D9C();
  *v4 = v3;
  v6 = *(v5 + 1496);
  v7 = *v1;
  *v4 = v7;
  v3[188] = v8;
  v3[189] = v0;

  if (v0)
  {
    sub_21AEE246C();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[190] = v12;
    *v12 = v7;
    v12[1] = sub_21AED45D8;
    v13 = v3[186];
    v14 = v3[185];
    v15 = v3[134];
    v16 = v3[133];
    v17 = v3[132];
    sub_21AEE2040(v3[131]);

    return AMLRecommendationPipeline.candidates(context:pipelineLogger:metadata:)();
  }
}

uint64_t sub_21AED45D8()
{
  sub_21AEE2818();
  sub_21AEE22E4();
  v4 = v3;
  sub_21AEE1D9C();
  *v5 = v4;
  v7 = *(v6 + 1520);
  v8 = *v2;
  sub_21AEE1F6C();
  *v9 = v8;
  *(v4 + 1528) = v0;

  if (!v0)
  {
    *(v4 + 1536) = v1;
  }

  sub_21AEE23FC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_21AED46DC()
{
  v471 = v0 + 129;
  v2 = v0[192];
  v3 = v0[147];
  v0[110] = v2;
  v4 = MEMORY[0x277D84F90];
  v0[129] = MEMORY[0x277D84F90];
  v0[126] = v2;
  v0[193] = sub_21AF0997C();
  sub_21AEE2538();
  WitnessTable = swift_getWitnessTable();
  v0[194] = WitnessTable;
  v6 = sub_21AEB3AB4();
  MEMORY[0x21CEE4AC0](v6);
  v0[125] = v0[127];
  v0[195] = sub_21AF09D9C();
  sub_21AF09D6C();
  v7 = v0[191];
  v499 = v0;
  while (1)
  {
    sub_21AEE2F38();
    v8 = v0[154];
    v9 = v0[153];
    v10 = v0[152];
    v0[196] = sub_21AF09D8C();
    sub_21AF09D7C();
    v0[197] = *(v8 + 32);
    v0[198] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    sub_21AEE2334();
    v11();
    v12 = sub_21AEE2E58();
    sub_21AEA766C(v12, v13, v10);
    v14 = v0[193];
    v15 = v0[134];
    sub_21AEE2398();
    if (v16)
    {
      break;
    }

    sub_21AEE2BD8();
    v17 = v0[151];
    v18 = v0[148];
    sub_21AEE2BC8(v19);
    v20 = *(v18 + 32);
    v21 = sub_21AEE2148();
    v22(v21);
    v475 = v0 + 87;
    v23 = *(v17 + *(v4 + 28));
    swift_getObjectType();
    sub_21AEE2ACC();
    swift_unknownObjectRetain();
    sub_21AEE1DCC();
    sub_21AEE2ACC();
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    sub_21AEE2D94();
    sub_21AEE273C();
    v24 = v23 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * WitnessTable;
    v25 = *(v4 + 28);
    v0 = v499;
    v26 = *(v24 + v25);
    *(v24 + v25) = v17;
    swift_unknownObjectRelease();
    v27 = *(v1 + 56);
    v1 = (v27)(v475, v1);
    v499[121] = v1;
    *(v499 + 52) = v482;
    sub_21AEE1900();
    ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
    sub_21AEE2AA0(ExtendedExistentialTypeMetadata);
    sub_21AEE1A6C();
    swift_getWitnessTable();
    LOBYTE(v23) = sub_21AF09A4C();

    if ((v23 & 1) == 0)
    {
      v29 = sub_21AEE2B68();
      v1 = (v27)(v29);
      v499[200] = v1;
      v30 = sub_21AF0989C();
      v499[123] = v30;
      sub_21AED1D94();
      if (v30 != sub_21AF0992C())
      {
        v499[201] = v17;
        sub_21AEE2CB0();
        sub_21AEE204C();
        sub_21AF0990C();
        sub_21AEE20C0();
        sub_21AEE21E8();
        sub_21AF098BC();
        sub_21AEE2CB0();
        if (WitnessTable)
        {
          v490 = v499[182];
          v478 = v499[180];
          v486 = v499[181];
          v189 = v499[179];
          v496 = v499[178];
          v190 = v499[175];
          v191 = v499[166];
          sub_21AEE1CE8();
          sub_21AEE2948(v192);
          sub_21AEE252C();
          sub_21AF0996C();
          v193 = sub_21AEE1B30(v499 + 11, (v499 + 17));
          v194 = v499;
          v189(v193);
          sub_21AEE2070();
          sub_21AEE2F14();
          v195();
          sub_21AEE15E0((v194 + 17), (v194 + 12));
          sub_21AF096AC();
          sub_21AF09AAC();
          sub_21AEE2228();
          sub_21AEE3078(v196, v197);
          v198 = v499[184];
          v491 = v499[183];
          sub_21AEE22AC();
          if (v199)
          {
            sub_21AEE1C4C();
            v479 = v200;
            sub_21AEE2058();
            swift_slowAlloc();
            v201 = sub_21AEE1FE4();
            sub_21AEE2E08(v201);
            v202 = sub_21AEE182C(4.8151e-34);
            v203(v202);
            v204 = sub_21AEE1B70();
            v198(v204);
            v205 = sub_21AEE1DFC();
            v491(v205);
            v206 = sub_21AEE2278();
            v207 = MEMORY[0x277D84F70];
            sub_21AECFFFC(v206, &OBJC_INSTANCE_METHODS_NSCopying, v208);
            sub_21AEE2028();

            sub_21AEE1BDC();
            v209 = v499[16];
            sub_21AEAF9B0(v499 + 12, v499[15]);
            v210 = sub_21AEE1C34();
            v212 = v211(v210);
            sub_21AEA79F0(v499 + 12);
            sub_21AEEC484();
            sub_21AEE207C();
            v213 = sub_21AEE2070();
            sub_21AECFFFC(v213, v214, v215);
            sub_21AEE2884();
            *(v190 + 14) = v212;
            sub_21AEE218C(&dword_21AE94000, v216, v7, "<requestID: %s> Processing candidate feature provider %s");
            sub_21AEE2DFC(v217, v218, v207 + 8, v219, v220, v221, v222, v223, v442, v443, v444, v445, v447, v449, v451, v453, v455, v457, v459, v461, v463, v465, v467, v469, v471, v479, v486);
            swift_arrayDestroy();
            sub_21AEE2494();
            sub_21AEE2000();
          }

          else
          {
            sub_21AEE267C();
            sub_21AEA79F0(v499 + 12);

            v272 = sub_21AEE1FD8();
            v198(v272);
            v273 = sub_21AEC7734();
            v491(v273);
          }

          v274 = sub_21AEE2860();
          v275(v274);
          sub_21AEE204C();
          sub_21AF097DC();
          sub_21AEE2A04();
          v276 = sub_21AF096AC();
          v277 = sub_21AF09AAC();
          if (sub_21AEE2C98(v277))
          {
            sub_21AEE2058();
            swift_slowAlloc();
            sub_21AEE1FE4();
            *v190 = 136315394;
            v278 = v499[70];
            v279 = v499[71];
            v280 = sub_21AEE2E8C();
            sub_21AEAF9B0(v280, v278);
            sub_21AEE2508(v279);
            v281 = sub_21AEE2AF4();
            v282(v281);
            v283 = sub_21AEE2E8C();
            sub_21AEA79F0(v283);
            sub_21AEEC484();
            v194 = v284;

            v285 = sub_21AEE2278();
            v287 = sub_21AECFFFC(v285, v194, v286);
            sub_21AEE2664();

            sub_21AEE1BDC();
            v288 = sub_21AEE2174();
            sub_21AECFFFC(v288, v289, v290);
            sub_21AEE2180();

            *(v190 + 14) = v287;
            sub_21AEE270C(&dword_21AE94000, v291, v277, "Processing candidate feature provider %s for %s");
            swift_arrayDestroy();
            sub_21AEE23C8();
            sub_21AEE2000();
          }

          else
          {
            sub_21AEA79F0(v499 + 67);
          }

          v292 = v194[20];
          v293 = v194[21];
          v294 = sub_21AEE1B50(v194 + 17);
          sub_21AEE1D3C(v294);
          v501 = v295 + *v295;
          v297 = *(v296 + 4);
          v298 = swift_task_alloc();
          v194[202] = v298;
          *v298 = v194;
          v298[1] = sub_21AED6158;
          v299 = v194[151];
          sub_21AEE1974();
          sub_21AEE289C();

          __asm { BRAA            X4, X16 }
        }

        goto LABEL_68;
      }

      v31 = v499[200];
    }

    v32 = swift_unknownObjectRetain();
    MEMORY[0x21CEE4AD0](v32);
    sub_21AEE2BA8(*v471);
    if (v34)
    {
      sub_21AEE2E44(v33);
      sub_21AF098CC();
    }

    sub_21AEE2CC8();
    sub_21AF0991C();
    swift_unknownObjectRelease();
    v4 = v499[129];
    v35 = *(v27 + 8);
    v36 = sub_21AEE2070();
    v37(v36);
  }

  v483 = v0[186];
  v472 = v0[185];
  v38 = v0[137];
  v489 = v0[136];
  v39 = v0[87];

  v40 = sub_21AEE29C4();
  sub_21AEE2DCC(v40);
  v476 = v4;
  v41 = MEMORY[0x277D83988];
  v42 = swift_getWitnessTable();
  sub_21AEE2B98(v42);
  sub_21AEE1CF8();
  v43 = (v0 + 87);
  sub_21AEE2B88();
  v51 = sub_21AED3450(v44, v45, v46, v38, v47, v48, v49, v50);
  sub_21AEE29E4(v51);

  v52 = *(v1 + 56);
  v53 = sub_21AEE2E38();
  v55 = v54(v53);
  sub_21AEE279C(v55);
  *(v56 + 816) = v489;
  v499[103] = v38;
  sub_21AEE1900();
  swift_getExtendedExistentialTypeMetadata();
  sub_21AEE2790();
  sub_21AF0997C();
  v57 = v499;
  swift_getWitnessTable();
  sub_21AF09A4C();

  sub_21AEE2B78();
  sub_21AEE26CC();
  AMLRecommendationPipeline.logPipelineAsync(pipelineStage:pipelineName:candidates:features:pipelineLogger:metadata:)(v58, v59, v60, v61, v62, v476, v483, v472, v43, v1);
  v63 = *(v1 + 64);
  v64 = sub_21AEE2E38();
  v499[208] = v65(v64);
  v499[96] = v489;
  v499[97] = v38;
  sub_21AEE1D14();
  v66 = swift_getExtendedExistentialTypeMetadata();
  v67 = v66;
  v499[209] = v66;
  sub_21AEB3AB4();
  v68 = sub_21AF0989C();
  v499[120] = v68;
  sub_21AEB3AB4();
  if (v68 != sub_21AF0992C())
  {
    v499[210] = v476;
    v100 = v499[209];
    v101 = v499[208];
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    v102 = v499[209];
    v103 = v499[208];
    if (v67)
    {
      sub_21AEE1EC4();
      v104 = v499[174];
      v105 = v499[165];
      v106 = v499[136];
      v107 = v499[134];
      v108 = sub_21AEE1954(40);
      sub_21AEE15E0(v108, v109 + 256);
      sub_21AEE201C();
      sub_21AF0996C();
      v110 = sub_21AEE1B30(v499 + 16, (v499 + 37));
      v111 = v499;
      v43(v110);
      sub_21AEE1C84();
      sub_21AEE2F14();
      v112();
      sub_21AEE15E0((v111 + 37), (v111 + 42));
      v113 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2228();
      os_log_type_enabled(v113, v114);
      v115 = v499[184];
      v116 = v499[183];
      sub_21AEE2380();
      if (v117)
      {
        sub_21AEE1C4C();
        v119 = (v118 + 8);
        sub_21AEE2058();
        swift_slowAlloc();
        v120 = sub_21AEE1FE4();
        sub_21AEE2848(v120);
        v121 = sub_21AEE182C(4.8151e-34);
        v122(v121);
        v123 = sub_21AEE1CC0();
        v115(v123);
        v124 = sub_21AEE1DFC();
        v116(v124);
        v125 = sub_21AEE21DC();
        sub_21AECFFFC(v125, v126, v127);
        sub_21AEE2028();

        sub_21AEE1BDC();
        v128 = v499[46];
        sub_21AEAF9B0(v499 + 42, v499[45]);
        v129 = sub_21AEE1C34();
        v131 = v130(v129);
        sub_21AEA79F0(v499 + 42);
        sub_21AEEC484();
        sub_21AEE207C();
        v132 = sub_21AEE2070();
        sub_21AECFFFC(v132, v133, v134);
        sub_21AEE2884();
        *(v104 + 14) = v131;
        sub_21AEE2760(&dword_21AE94000, v135, v136, "<requestID: %s> Processing batch candidate feature provider %s");
        sub_21AEE2A40();
        sub_21AEE2200();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE267C();
        sub_21AEA79F0(v499 + 42);

        v224 = sub_21AEE1FD8();
        v115(v224);
        v225 = sub_21AEC7734();
        v116(v225);
      }

      v226 = v499[40];
      v227 = v499[41];
      v228 = sub_21AEE1B50(v499 + 37);
      sub_21AEE1D3C(v228);
      v500 = v229 + *v229;
      v231 = *(v230 + 4);
      v232 = swift_task_alloc();
      v111[211] = v232;
      *v232 = v111;
      sub_21AEE1B10(v232);
      v233 = v111[205];
      sub_21AEE1974();
      sub_21AEE289C();

      __asm { BRAA            X4, X16 }
    }

LABEL_67:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_68:
    sub_21AEE252C();
    sub_21AF09C7C();
    __break(1u);
LABEL_69:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_70:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_71:
    sub_21AEE201C();
    result = sub_21AF09C7C();
    __break(1u);
    return result;
  }

  v499[214] = v476;
  v69 = v499[208];
  v70 = v499[205];
  v71 = v499[195];
  v72 = v499[194];
  v73 = v499[193];
  v74 = v499[148];
  v75 = v499[147];

  sub_21AEE2D70();
  v499[119] = sub_21AF098EC();
  v499[117] = v70;
  v76 = sub_21AED1D94();
  MEMORY[0x21CEE4AC0](v76);
  v499[116] = v499[118];
  sub_21AF09D6C();
  v77 = (v74 + 16);
  while (1)
  {
    v78 = v57[198];
    v79 = v57[197];
    v80 = v57[196];
    v81 = v57[156];
    v82 = v57[155];
    v83 = v57[153];
    v84 = v57[152];
    sub_21AF09D7C();
    v85 = sub_21AEE221C();
    v79(v85);
    v86 = sub_21AEE2E58();
    if (sub_21AEA766C(v86, v87, v84) == 1)
    {
      break;
    }

    v88 = v57[155];
    v89 = v57[148];
    v90 = v57[147];
    v91 = *v88;
    v92 = *(v57[152] + 48);
    (*(v57[144] + 16))(v57[145], v88 + v92, v57[137]);
    v41 = *(v89 + 8);
    v41(v88 + v92, v90);
    if ((v476 & 0xC000000000000001) != 0)
    {
      v91 = MEMORY[0x21CEE4EF0](v91, v476);
    }

    else
    {
      if (v91 < 0)
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      sub_21AEE2F6C(v476 & 0xFFFFFFFFFFFFFF8);
      if (v34)
      {
        goto LABEL_66;
      }

      sub_21AEE30C0(&v476[4]);
    }

    v57 = v499;
    v93 = v499[193];
    v94 = v499[150];
    v95 = v499[149];
    v96 = v499[147];
    sub_21AEA8470(v499[145], v91, v499[137], v94);
    v97 = *v77;
    v98 = sub_21AED1D94();
    v99(v98);
    sub_21AEE2174();
    sub_21AF0994C();
    v41(v94, v96);
  }

  v137 = v57[134];
  v138 = v57[133];
  v139 = v57[132];
  v140 = v57[90];
  v492 = *(v57 + 68);

  v141 = *(v138 + 40);
  v142 = sub_21AEE2098();
  v57[215] = v143(v142);

  *(v57 + 49) = v492;
  sub_21AEE1A84();
  v57[216] = swift_getExtendedExistentialTypeMetadata();
  sub_21AEE204C();
  sub_21AF0989C();
  sub_21AEE2C4C();
  v57[115] = v83;
  sub_21AEE204C();
  if (v83 == sub_21AF0992C())
  {
    v144 = v57[215];
    v145 = v57[207];
    v146 = v57[134];
    v147 = v57[133];
    v148 = v57[132];
    v493 = *(v57 + 68);

    v149 = sub_21AEE21A8();
    v57[221] = v150(v149);

    *(v57 + 54) = v493;
    sub_21AEE1A9C();
    v57[222] = swift_getExtendedExistentialTypeMetadata();
    sub_21AEE204C();
    sub_21AF0989C();
    sub_21AEE2C4C();
    v57[111] = v83;
    sub_21AEE204C();
    if (v83 == sub_21AF0992C())
    {
      v151 = v57[205];

      v152 = v57[119];
      v57[227] = v152;
      v153 = v57[134];
      v154 = v57[133];
      v155 = v57[132];
      v156 = v57[131];
      v57[113] = v152;
      v157 = *(v154 + 80);

      v494 = *(v57 + 68);
      sub_21AEE201C();
      v57[228] = v157();
      *(v57 + 50) = v494;
      sub_21AEE17F4();
      v57[229] = swift_getExtendedExistentialTypeMetadata();
      sub_21AEE204C();
      v158 = sub_21AF0989C();
      v57[114] = v158;
      sub_21AEE204C();
      if (v158 == sub_21AF0992C())
      {
        v159 = v57[228];
        v160 = v57[227];
        v495 = v57[182];
        v484 = v57[181];
        v161 = v57[180];
        sub_21AEE1E74();
        sub_21AEE256C(v162);

        v163 = sub_21AEE2138();
        (v41)(v163);
        v164 = v499;
        v165 = sub_21AEE2118();
        v484(v165);
        v166 = sub_21AF096AC();
        sub_21AF09AAC();
        sub_21AEE2824();
        os_log_type_enabled(v166, v167);
        sub_21AEE22F4();
        v477 = v169;
        v485 = v168;
        v170 = v499[184];
        v171 = v499[183];
        v172 = v499[169];
        v173 = v499[168];
        v174 = v499[159];
        v175 = v499[158];
        if (v176)
        {
          sub_21AEE2AD8();
          v177 = v499[132];
          sub_21AEE2058();
          swift_slowAlloc();
          sub_21AEE2550();
          v178 = sub_21AEE1BFC(4.8151e-34);
          v164 = v179(v178);
          v180 = sub_21AEE2784();
          v170(v180);
          v181 = sub_21AEE2034();
          v171(v181);
          v182 = sub_21AEE2664();
          sub_21AECFFFC(v182, v160, v183);
          sub_21AEE2064();

          sub_21AEE1F1C();

          v185 = MEMORY[0x21CEE4B10](v184);

          v186 = sub_21AEE2460();
          sub_21AECFFFC(v186, v187, v188);
          sub_21AEE2064();

          *(v175 + 14) = v185;
          sub_21AEE262C(&dword_21AE94000, "<requestID: %s> Returning ranked suggestions: %s", v160);
          sub_21AEE2B18();
          sub_21AEE2200();
          sub_21AEE23C8();
          swift_unknownObjectRelease();
        }

        else
        {
          v410 = v499[136];
          v411 = v499[132];
          swift_unknownObjectRelease();

          v412 = sub_21AEE2098();
          v170(v412);
          v413 = sub_21AEE2034();
          v171(v413);
        }

        v414 = v164[177];
        v415 = v164[176];
        v416 = v164[175];
        v417 = v164[174];
        v418 = v164[173];
        v419 = v164[172];
        v420 = v164[171];
        v421 = v164;
        v422 = v164[170];
        v423 = v421[169];
        v424 = v421[167];
        v446 = v421[166];
        v448 = v421[165];
        v450 = v421[164];
        v452 = v421[163];
        v454 = v421[162];
        v456 = v421[161];
        v458 = v421[160];
        v460 = v421[159];
        v462 = v421[157];
        v464 = v421[156];
        v466 = v421[155];
        v468 = v421[151];
        v470 = v421[150];
        v474 = v421[149];
        v481 = v421[146];
        v488 = v421[145];
        v498 = v421[143];
        v502 = v421[140];

        sub_21AEE24D4();
        sub_21AEE289C();

        __asm { BRAA            X2, X16 }
      }

      sub_21AEE2C80();
      v57[230] = v152;
      v355 = v57[229];
      v356 = v57[228];
      sub_21AEE2098();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE21D0();
      sub_21AF098BC();
      v357 = v57[229];
      v358 = v57[228];
      if (v156)
      {
        v480 = v57[181];
        v487 = v57[182];
        v359 = v57[180];
        v360 = v57[179];
        v497 = v57[178];
        v361 = v57[171];
        v362 = v57[161];
        v363 = v57[136];
        v364 = v57[134];
        v365 = sub_21AEE1954(40);
        sub_21AEE15E0(v365, v366 + 616);
        sub_21AEE201C();
        sub_21AF0996C();
        v367 = sub_21AEE1B30((v499 + 77), (v499 + 72));
        v368 = v499;
        v360(v367);
        v369 = sub_21AEE1C84();
        v480(v369);
        sub_21AEE15E0((v368 + 72), (v368 + 47));
        v370 = sub_21AF096AC();
        sub_21AF09AAC();
        sub_21AEE2924();
        os_log_type_enabled(v370, v371);
        v372 = v499[184];
        v373 = v499[183];
        sub_21AEE2E78();
        if (v374)
        {
          v473 = v499[147];
          v375 = v499[136];
          v368 = v499[135];
          v376 = v499[132];
          sub_21AEB39C8();
          v377 = sub_21AEE2234();
          sub_21AEE2830(v377);
          v378 = sub_21AEE1AC8(4.8152e-34);
          v379(v378);
          v380 = sub_21AEE20F8();
          v372(v380, v375);
          v381 = sub_21AEE2854();
          v373(v381);
          v382 = sub_21AEE2664();
          sub_21AECFFFC(v382, v362, v383);
          sub_21AEE2884();
          sub_21AEE1D2C();
          v384 = v368[50];
          sub_21AEAF9B0(v368 + 47, v384);
          sub_21AEE1A54();
          v386 = v385(v384);
          sub_21AEA79F0(v368 + 47);
          sub_21AEEC484();
          sub_21AEE2478();
          v387 = sub_21AEE24C8();
          sub_21AECFFFC(v387, v388, v389);
          sub_21AEE2884();
          sub_21AEE1DAC();

          sub_21AF0992C();
          sub_21AEE2658();

          *(v158 + 24) = v386;
          sub_21AEE1D50();
          sub_21AEE2B30(v390, v391, v392, v393);
          sub_21AEE2340();
          sub_21AEE2494();
          sub_21AEE2250();
        }

        else
        {
          v427 = v499[136];
          v428 = v499[132];
          sub_21AEA79F0(v499 + 47);

          v429 = sub_21AEE24BC();
          (v372)(v429);
          v430 = sub_21AEE2034();
          v373(v430);
        }

        v431 = v368[75];
        v432 = v368[76];
        v433 = sub_21AEE1B50(v368 + 72);
        v434 = *(v433 + 32);
        sub_21AEE1E1C(v433 + 32);
        v503 = v435 + *v435;
        v437 = *(v436 + 4);
        v438 = swift_task_alloc();
        v368[231] = v438;
        *v438 = v368;
        sub_21AEE180C(v438);
        v439 = v368[227];
        sub_21AEE1974();
        sub_21AEE289C();

        __asm { BRAA            X4, X16 }
      }

      goto LABEL_71;
    }

    v302 = v57[222];
    v303 = v57[221];
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    v304 = v57[222];
    v305 = v57[221];
    if ((v148 & 1) == 0)
    {
      goto LABEL_70;
    }

    sub_21AEE1EC4();
    v306 = v57[172];
    v307 = v57[162];
    v308 = v57[136];
    v309 = v57[134];
    v310 = sub_21AEE1954(40);
    sub_21AEE15E0(v310, v311 + 16);
    sub_21AEE201C();
    sub_21AF0996C();
    v312 = sub_21AEE1B30(v499 + 1, (v499 + 52));
    v78(v312);
    sub_21AEE1C84();
    sub_21AEE2F14();
    v313();
    sub_21AEE15E0((v499 + 52), (v499 + 57));
    v314 = sub_21AF096AC();
    sub_21AF09AAC();
    sub_21AEE2228();
    os_log_type_enabled(v314, v315);
    v316 = v499[184];
    v317 = v499[183];
    sub_21AEE23B0();
    if (v318)
    {
      sub_21AEE1C4C();
      v320 = (v319 + 8);
      sub_21AEE2058();
      swift_slowAlloc();
      v321 = sub_21AEE1FE4();
      sub_21AEE2848(v321);
      v322 = sub_21AEE182C(4.8151e-34);
      v323(v322);
      v324 = sub_21AEE1CC0();
      v316(v324);
      v325 = sub_21AEE1DFC();
      v317(v325);
      v326 = sub_21AEE21DC();
      sub_21AECFFFC(v326, v327, v328);
      sub_21AEE2028();

      sub_21AEE1BDC();
      v329 = v499[61];
      sub_21AEAF9B0(v499 + 57, v499[60]);
      v330 = sub_21AEE18E0();
      v332 = v331(v330);
      sub_21AEA79F0(v499 + 57);
      sub_21AEEC484();
      sub_21AEE207C();
      v333 = sub_21AEE2070();
      sub_21AECFFFC(v333, v334, v335);
      sub_21AEE2884();
      *(v306 + 14) = v332;
      sub_21AEE2760(&dword_21AE94000, v336, v337, "<requestID: %s> Processing ranking pipeline %s");
      sub_21AEE2A40();
      sub_21AEE2200();
      sub_21AEE2000();
    }

    else
    {
      sub_21AEE267C();
      sub_21AEA79F0(v499 + 57);

      v394 = sub_21AEE1FD8();
      v316(v394);
      v395 = sub_21AEC7734();
      v317(v395);
    }

    sub_21AEE2164();
    v396 = v499[140];
    v397 = sub_21AEE1EE8();
    v398(v397);
    v499[223] = v499[119];
    v399 = sub_21AEE1AE4();
    sub_21AEFBF4C(v399, v400, v401, v402);
    v404 = v499[55];
    v403 = v499[56];
    sub_21AEE1F00(v499 + 52);

    v405 = swift_task_alloc();
    v499[224] = v405;
    *v405 = v499;
    sub_21AEE18A0(v405);
    sub_21AEE1994(v499[140]);
    sub_21AEE289C();

    return AMLRankingPipeline.process(context:)(v406, v407, v408);
  }

  else
  {
    v236 = v57[216];
    v237 = v57[215];
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    v238 = v57[216];
    v239 = v57[215];
    if ((v82 & 1) == 0)
    {
      goto LABEL_69;
    }

    sub_21AEE1EC4();
    v240 = v57[173];
    v241 = v57[164];
    v242 = v57[136];
    v243 = v57[134];
    v244 = sub_21AEE1954(40);
    sub_21AEE15E0(v244, v245 + 56);
    sub_21AEE201C();
    sub_21AF0996C();
    v246 = sub_21AEE1B30((v499 + 7), (v499 + 82));
    v78(v246);
    sub_21AEE1C84();
    sub_21AEE2F14();
    v247();
    sub_21AEE15E0((v499 + 82), (v499 + 62));
    v248 = sub_21AF096AC();
    sub_21AF09AAC();
    sub_21AEE2228();
    os_log_type_enabled(v248, v249);
    v250 = v499[184];
    v251 = v499[183];
    sub_21AEE23E4();
    if (v252)
    {
      sub_21AEE1C4C();
      v254 = (v253 + 8);
      sub_21AEE2058();
      swift_slowAlloc();
      v255 = sub_21AEE1FE4();
      sub_21AEE2848(v255);
      v256 = sub_21AEE182C(4.8151e-34);
      v257(v256);
      v258 = sub_21AEE1CC0();
      v250(v258);
      v259 = sub_21AEE1DFC();
      v251(v259);
      v260 = sub_21AEE21DC();
      sub_21AECFFFC(v260, v261, v262);
      sub_21AEE2028();

      sub_21AEE1BDC();
      v263 = v499[66];
      sub_21AEAF9B0(v499 + 62, v499[65]);
      v264 = sub_21AEE18E0();
      v266 = v265(v264);
      sub_21AEA79F0(v499 + 62);
      sub_21AEEC484();
      sub_21AEE207C();
      v267 = sub_21AEE2070();
      sub_21AECFFFC(v267, v268, v269);
      sub_21AEE2884();
      *(v240 + 14) = v266;
      sub_21AEE2760(&dword_21AE94000, v270, v271, "<requestID: %s> Processing scoring pipeline %s");
      sub_21AEE2A40();
      sub_21AEE2200();
      sub_21AEE2000();
    }

    else
    {
      sub_21AEE267C();
      sub_21AEA79F0(v499 + 62);

      v338 = sub_21AEE1FD8();
      v250(v338);
      v339 = sub_21AEC7734();
      v251(v339);
    }

    sub_21AEE2164();
    v340 = v499[143];
    v341 = sub_21AEE1EE8();
    v342(v341);
    v499[217] = v499[119];
    v343 = sub_21AEE1AE4();
    sub_21AEFC9C0(v343, v344, v345, v346);
    v347 = v499[85];
    v348 = v499[86];
    sub_21AEE1F00(v499 + 82);

    v349 = swift_task_alloc();
    v499[218] = v349;
    *v349 = v499;
    sub_21AEE1A1C(v349);
    sub_21AEE1994(v499[143]);
    sub_21AEE289C();

    return AMLScoringPipeline.process(context:)(v350, v351, v352);
  }
}

uint64_t sub_21AED6158()
{
  sub_21AEE2818();
  v3 = v2;
  sub_21AEE269C();
  v5 = v4;
  sub_21AEE1D9C();
  *v6 = v5;
  v8 = *(v7 + 1616);
  v9 = *v1;
  sub_21AEE1F6C();
  *v10 = v9;
  *(v5 + 1624) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 1632) = v3;
  }

  sub_21AEE246C();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_21AED626C()
{
  v491 = v0;
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1624);
  v5 = *(v0 + 1608);
  swift_getObjectType();
  v6 = MLFeatureProvider.merging(other:uniquingKeysWith:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = *(v0 + 1600);
  v8 = *(v0 + 1592);
  sub_21AEA79F0((v0 + 136));
  sub_21AEE24E0();
  v9 = sub_21AF0992C();
  v10 = *(v0 + 984);
  v486 = v0;
  if (v10 == v9)
  {
    v2 = (v0 + 1032);
    v464 = (v0 + 1032);
LABEL_3:
    v11 = *(v0 + 1600);

    while (1)
    {
      v12 = swift_unknownObjectRetain();
      MEMORY[0x21CEE4AD0](v12);
      sub_21AEE2BA8(*v2);
      if (v14)
      {
        sub_21AEE2E44(v13);
        sub_21AF098CC();
      }

      v15 = *(v0 + 1208);
      v16 = *(v0 + 1184);
      v17 = *(v0 + 1176);
      sub_21AF0991C();
      swift_unknownObjectRelease();
      v18 = *(v0 + 1032);
      v19 = *(v16 + 8);
      v20 = sub_21AEE2D58();
      v21(v20);
      v22 = *(v0 + 1552);
      v23 = *(v0 + 1544);
      v24 = *(v0 + 1256);
      v8 = *(v0 + 1248);
      v25 = *(v0 + 1232);
      v26 = *(v0 + 1224);
      v27 = *(v0 + 1216);
      *(v0 + 1568) = sub_21AF09D8C();
      sub_21AF09D7C();
      v28 = *(v25 + 32);
      *(v0 + 1576) = v28;
      *(v0 + 1584) = (v25 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v28(v24, v8, v26);
      sub_21AEA766C(v24, 1, v27);
      v29 = *(v0 + 1544);
      v30 = *(v0 + 1072);
      sub_21AEE2398();
      if (v31)
      {
        break;
      }

      sub_21AEE2BD8();
      v6 = *(v0 + 1208);
      v32 = *(v0 + 1184);
      v468 = v30;
      sub_21AEE2BC8(v33);
      v34 = *(v32 + 32);
      v0 = v32 + 32;
      v35 = sub_21AEE2148();
      v36(v35);
      sub_21AEE3018();
      sub_21AEE2ACC();
      swift_unknownObjectRetain();
      sub_21AEE1DCC();
      sub_21AEE2ACC();
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      sub_21AEE2D94();
      sub_21AEE273C();
      sub_21AEE27D0();
      v37 = *(v26 + 56);
      v38 = sub_21AEE2D58();
      v1 = v37(v38);
      *(v0 + 968) = v1;
      *(v0 + 832) = v476;
      sub_21AEE1900();
      ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
      sub_21AEE2AA0(ExtendedExistentialTypeMetadata);
      sub_21AEE1A6C();
      swift_getWitnessTable();
      v40 = sub_21AF09A4C();

      if ((v40 & 1) == 0)
      {
        v41 = sub_21AEE2B68();
        *(v0 + 1600) = v37(v41);
        v10 = sub_21AF0989C();
        *(v0 + 984) = v10;
        sub_21AEE24E0();
        if (v10 == sub_21AF0992C())
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    sub_21AEE2978();
    v75 = sub_21AEE29C4();
    sub_21AEE2DCC(v75);
    WitnessTable = swift_getWitnessTable();
    sub_21AEE2B98(WitnessTable);
    sub_21AEE1CF8();
    v77 = v0 + 696;
    sub_21AEE2B88();
    v85 = sub_21AED3450(v78, v79, v80, v462, v81, v82, v83, v84);
    sub_21AEE29E4(v85);

    v86 = *(v26 + 56);
    v87 = sub_21AEC7BDC();
    v89 = v88(v87);
    sub_21AEE279C(v89);
    *(v90 + 816) = v476;
    *(v486 + 824) = v462;
    sub_21AEE1900();
    swift_getExtendedExistentialTypeMetadata();
    sub_21AEE2790();
    sub_21AF0997C();
    v91 = v486;
    swift_getWitnessTable();
    sub_21AF09A4C();

    sub_21AEE2B78();
    sub_21AEE26CC();
    AMLRecommendationPipeline.logPipelineAsync(pipelineStage:pipelineName:candidates:features:pipelineLogger:metadata:)(v92, v93, v94, v95, v96, v18, v468, v464, v0 + 696, v26);
    v97 = *(v26 + 64);
    v98 = sub_21AEC7BDC();
    *(v486 + 1664) = v99(v98);
    *(v486 + 768) = v476;
    *(v486 + 776) = v462;
    sub_21AEE1D14();
    *(v486 + 1672) = swift_getExtendedExistentialTypeMetadata();
    v100 = sub_21AF0989C();
    *(v486 + 960) = v100;
    if (v100 != sub_21AF0992C())
    {
      *(v486 + 1680) = v18;
      v158 = *(v486 + 1672);
      v159 = *(v486 + 1664);
      sub_21AEB3980();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE2CF8();
      sub_21AF098BC();
      v160 = *(v486 + 1672);
      v161 = *(v486 + 1664);
      if (v8)
      {
        v470 = *(v486 + 1448);
        v477 = *(v486 + 1456);
        v162 = *(v486 + 1440);
        sub_21AEE1C18();
        v164 = *(v163 + 1392);
        v165 = *(v486 + 1320);
        sub_21AEE1B84();
        v167 = sub_21AEE1A3C(v166);
        sub_21AEE15E0(v167, v168 + 256);
        sub_21AEE201C();
        sub_21AF0996C();
        sub_21AE9641C((v486 + 256), v486 + 296);
        v169 = sub_21AEE22D4();
        (v77)(v169);
        v170 = sub_21AEE1EB0();
        v470(v170);
        sub_21AEE15E0(v77 + 296, v77 + 336);
        v171 = sub_21AF096AC();
        sub_21AF09AAC();
        sub_21AEE2924();
        os_log_type_enabled(v171, v172);
        sub_21AEE2F4C();
        sub_21AEE2380();
        if (v173)
        {
          sub_21AEE21BC();
          sub_21AEE2058();
          swift_slowAlloc();
          v174 = sub_21AEE1FE4();
          sub_21AEE2E08(v174);
          v175 = sub_21AEE1D80(4.8151e-34);
          v176(v175);
          v77 = v177;
          v178 = sub_21AEE1FD8();
          v161(v178);
          v179 = sub_21AEE2BE8();
          v100(v179);
          v180 = sub_21AEE264C();
          sub_21AECFFFC(v180, v77, v181);
          sub_21AEE2664();

          sub_21AEE1BDC();
          v182 = *(v77 + 360);
          v183 = *(v77 + 368);
          sub_21AEAF9B0((v77 + 336), v182);
          sub_21AEE2508(v183);
          v185 = v184(v182, v183);
          sub_21AEA79F0((v77 + 336));
          sub_21AEEC484();
          sub_21AEE28B8();
          v186 = sub_21AEE264C();
          sub_21AECFFFC(v186, v183, v187);
          sub_21AEE2884();
          *(v165 + 14) = v185;
          sub_21AEE2324();
          _os_log_impl(v188, v189, v190, v191, v192, 0x16u);
          sub_21AEE2A60();
          sub_21AEE2200();
          sub_21AEE2000();
        }

        else
        {
          sub_21AEE26F0();
          sub_21AEA79F0((v77 + 336));

          v255 = sub_21AEE1FD8();
          v161(v255);
          v256 = sub_21AED1DCC();
          v100(v256);
        }

        v257 = *(v77 + 320);
        v258 = *(v77 + 328);
        v259 = sub_21AEE1B50((v77 + 296));
        sub_21AEE1D3C(v259);
        v488 = v260 + *v260;
        v262 = *(v261 + 4);
        v263 = swift_task_alloc();
        *(v77 + 1688) = v263;
        *v263 = v77;
        sub_21AEE1B10(v263);
        v264 = *(v77 + 1640);
        sub_21AEE1974();
        sub_21AEE2290();

        __asm { BRAA            X4, X16 }
      }

      goto LABEL_68;
    }

    *(v486 + 1712) = v18;
    v101 = *(v486 + 1664);
    v102 = *(v486 + 1640);
    v103 = *(v486 + 1560);
    v104 = *(v486 + 1552);
    v105 = *(v486 + 1544);
    v106 = *(v486 + 1184);
    v107 = *(v486 + 1176);

    sub_21AEE2D70();
    *(v486 + 952) = sub_21AF098EC();
    *(v486 + 936) = v102;
    v108 = sub_21AEE221C();
    MEMORY[0x21CEE4AC0](v108);
    *(v486 + 928) = *(v486 + 944);
    sub_21AF09D6C();
    sub_21AEE2D04();
    v109 = v106 + 16;
    while (1)
    {
      v110 = *(v91 + 1584);
      v111 = *(v91 + 1576);
      v112 = *(v91 + 1568);
      v113 = *(v91 + 1248);
      v114 = *(v91 + 1240);
      v115 = *(v91 + 1224);
      v116 = *(v91 + 1216);
      sub_21AF09D7C();
      v111(v114, v113, v115);
      if (sub_21AEA766C(v114, 1, v116) == 1)
      {
        break;
      }

      v117 = *(v91 + 1240);
      v118 = *(v91 + 1184);
      v119 = *(v91 + 1176);
      v120 = *v117;
      v121 = *(*(v91 + 1216) + 48);
      (*(*(v91 + 1152) + 16))(*(v91 + 1160), v117 + v121, *(v91 + 1096));
      v122 = *(v118 + 8);
      v122(v117 + v121, v119);
      if (v481)
      {
        v130 = sub_21AEE2460();
        v120 = MEMORY[0x21CEE4EF0](v130);
      }

      else
      {
        if (v120 < 0)
        {
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        sub_21AEE2F6C(v476);
        if (v14)
        {
          goto LABEL_66;
        }

        sub_21AEE30C0(v468);
      }

      v91 = v486;
      v123 = *(v486 + 1544);
      v124 = *(v486 + 1192);
      v125 = *(v486 + 1176);
      sub_21AEA8470(*(v486 + 1160), v120, *(v486 + 1096), *(v486 + 1200));
      v126 = *v109;
      v127 = sub_21AEE221C();
      v128(v127);
      sub_21AF0994C();
      v129 = sub_21AEE2700();
      (v122)(v129);
    }

    v193 = *(v91 + 1072);
    v194 = *(v91 + 1064);
    v195 = *(v91 + 1056);
    v196 = *(v91 + 720);
    v482 = *(v91 + 1088);

    v197 = *(v194 + 40);
    v198 = sub_21AEB3980();
    *(v91 + 1720) = v199(v198);

    *(v91 + 784) = v482;
    sub_21AEE1A84();
    *(v91 + 1728) = swift_getExtendedExistentialTypeMetadata();
    sub_21AEC78CC();
    v200 = sub_21AF0989C();

    *(v91 + 920) = v200;
    sub_21AEC78CC();
    v201 = v91;
    if (v200 == sub_21AF0992C())
    {
      v202 = *(v91 + 1720);
      v203 = *(v91 + 1656);
      v204 = *(v91 + 1072);
      v205 = *(v91 + 1064);
      v206 = *(v91 + 1056);
      v483 = *(v91 + 1088);

      v207 = *(v205 + 48);
      v208 = sub_21AEE2098();
      *(v91 + 1768) = v209(v208);

      *(v91 + 864) = v483;
      sub_21AEE1A9C();
      *(v91 + 1776) = swift_getExtendedExistentialTypeMetadata();
      sub_21AEB3980();
      sub_21AF0989C();
      sub_21AEE2C4C();
      *(v91 + 888) = v200;
      sub_21AEB3980();
      if (v200 == sub_21AF0992C())
      {
        v210 = *(v91 + 1640);

        v211 = *(v91 + 952);
        *(v201 + 1816) = v211;
        v212 = *(v201 + 1072);
        v213 = *(v201 + 1064);
        v214 = *(v201 + 1056);
        v215 = *(v201 + 1048);
        *(v201 + 904) = v211;
        v216 = v213 + 80;
        v217 = *(v213 + 80);

        v484 = *(v201 + 1088);
        v218 = sub_21AEE2098();
        *(v201 + 1824) = v217(v218);
        *(v201 + 800) = v484;
        sub_21AEE17F4();
        *(v201 + 1832) = swift_getExtendedExistentialTypeMetadata();
        sub_21AEC78CC();
        v219 = sub_21AF0989C();
        *(v201 + 912) = v219;
        sub_21AEC78CC();
        v478 = v211;
        if (v219 == sub_21AF0992C())
        {
          v220 = *(v201 + 1824);
          v221 = *(v201 + 1816);
          v485 = *(v201 + 1456);
          v471 = *(v201 + 1448);
          v222 = *(v201 + 1440);
          sub_21AEE1E74();
          v224 = *(v223 + 1424);
          v225 = *(v486 + 1352);
          v226 = *(v486 + 1272);
          v227 = *(v486 + 1088);
          v228 = *(v486 + 1072);
          v229 = *(v486 + 1056);
          v230 = *(v486 + 1048);

          sub_21AEE2334();
          (v109)();
          v231 = v486;
          sub_21AEE2128();
          sub_21AEE2F78();
          v232();
          v233 = sub_21AF096AC();
          sub_21AF09AAC();
          sub_21AEE2924();
          os_log_type_enabled(v233, v234);
          sub_21AEE22F4();
          v465 = v236;
          v472 = v235;
          v237 = *(v486 + 1472);
          v238 = *(v486 + 1464);
          v239 = *(v486 + 1352);
          v240 = *(v486 + 1344);
          v241 = *(v486 + 1272);
          v242 = *(v486 + 1264);
          if (v243)
          {
            v456 = *(v486 + 1088);
            v244 = *(v486 + 1080);
            v459 = *(v486 + 1176);
            v231 = *(v486 + 1056);
            sub_21AEE2058();
            swift_slowAlloc();
            v490[0] = sub_21AEE2550();
            *v242 = 136315394;
            sub_21AEE2EF0();
            v246 = v245(v241, v231, v244);
            v248 = v247;
            v237(v241, v456);
            v249 = sub_21AEE1DFC();
            v238(v249);
            sub_21AECFFFC(v246, v248, v490);
            sub_21AEE2028();

            sub_21AEE1F1C();

            v251 = MEMORY[0x21CEE4B10](v250, v459);

            v252 = sub_21AED1DCC();
            sub_21AECFFFC(v252, v253, v254);
            sub_21AEE2658();

            *(v242 + 14) = v251;
            sub_21AEE262C(&dword_21AE94000, "<requestID: %s> Returning ranked suggestions: %s", v221);
            sub_21AEE2B18();
            sub_21AEE2200();
            sub_21AEE23C8();
            swift_unknownObjectRelease();
          }

          else
          {
            v414 = *(v486 + 1088);
            v415 = *(v486 + 1056);
            swift_unknownObjectRelease();

            v237(v241, v414);
            v416 = sub_21AEE2460();
            v238(v416);
          }

          v417 = v231[177];
          v418 = v231[176];
          v419 = v231[175];
          v420 = v231[174];
          v421 = v231[173];
          v422 = v231[172];
          v423 = v231[171];
          v424 = v231[170];
          v425 = v231;
          v426 = v231[169];
          v427 = v425[167];
          sub_21AEE19AC();

          sub_21AEE24D4();
          sub_21AEE2290();

          __asm { BRAA            X2, X16 }
        }

        sub_21AEE2C80();
        *(v201 + 1840) = v211;
        v353 = *(v201 + 1832);
        v354 = *(v201 + 1824);
        sub_21AEB3980();
        sub_21AF0990C();
        sub_21AEE1BEC();
        sub_21AEE2CF8();
        sub_21AF098BC();
        v355 = *(v201 + 1832);
        v356 = *(v201 + 1824);
        if (v216)
        {
          v466 = *(v201 + 1448);
          v475 = *(v201 + 1456);
          v357 = *(v201 + 1440);
          sub_21AEE1C18();
          v359 = *(v358 + 1368);
          v360 = *(v486 + 1288);
          sub_21AEE1B84();
          v362 = sub_21AEE1A3C(v361);
          sub_21AEE15E0(v362, v363 + 616);
          sub_21AEE201C();
          sub_21AF0996C();
          sub_21AE9641C((v486 + 616), v486 + 576);
          v364 = sub_21AEE22D4();
          (v109)(v364);
          v365 = sub_21AEE1EB0();
          v466(v365);
          sub_21AEE15E0(v109 + 576, v109 + 376);
          v366 = sub_21AF096AC();
          sub_21AF09AAC();
          sub_21AEE2924();
          os_log_type_enabled(v366, v367);
          v368 = *(v109 + 1472);
          v369 = *(v109 + 1464);
          sub_21AEE2E78();
          if (v370)
          {
            v463 = *(v109 + 1176);
            LODWORD(v475) = v359;
            v371 = *(v109 + 1088);
            v372 = *(v109 + 1080);
            sub_21AEE2F08();
            v109 = *(v486 + 1056);
            sub_21AEB39C8();
            v467 = sub_21AEE2234();
            v490[0] = v467;
            *v219 = 136315650;
            (*(v372 + 56))(v355, v109, v372);
            v374 = v373;
            v375 = sub_21AEB3980();
            v368(v375);
            v376 = sub_21AEE1DFC();
            v369(v376);
            v377 = sub_21AEE2278();
            sub_21AECFFFC(v377, v374, v378);

            sub_21AEE1D2C();
            v379 = *(v109 + 400);
            sub_21AEAF9B0((v109 + 376), v379);
            sub_21AEE1A54();
            v381 = v380(v379);
            sub_21AEA79F0((v109 + 376));
            sub_21AEEC484();
            v383 = v382;

            v384 = sub_21AEE264C();
            sub_21AECFFFC(v384, v383, v385);
            sub_21AEE2064();

            sub_21AEE1DAC();
            sub_21AEE2DFC(v386, v387, v388, v389, v390, v391, v392, v393, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v457, v458, v460, v461, v463, v467, v475, v478);

            sub_21AF0992C();
            sub_21AEE2658();

            *(v219 + 24) = v381;
            sub_21AEE1DBC();
            sub_21AEE2B30(v394, v395, v396, v397);
            sub_21AEE2FF8();
            sub_21AEE2494();
            sub_21AEE2250();
          }

          else
          {
            v430 = *(v109 + 1088);
            v431 = *(v109 + 1056);
            sub_21AEA79F0((v109 + 376));

            v432 = sub_21AEB3980();
            v368(v432);
            v433 = sub_21AEE24E0();
            v369(v433);
          }

          v434 = *(v109 + 600);
          v435 = *(v109 + 608);
          v436 = sub_21AEE1B50((v109 + 576));
          v437 = *(v436 + 32);
          sub_21AEE1E1C(v436 + 32);
          v489 = v438 + *v438;
          v440 = *(v439 + 4);
          v441 = swift_task_alloc();
          *(v109 + 1848) = v441;
          *v441 = v109;
          sub_21AEE180C(v441);
          v442 = *(v109 + 1816);
          sub_21AEE1974();
          sub_21AEE2290();

          __asm { BRAA            X4, X16 }
        }

        goto LABEL_71;
      }

      v302 = *(v91 + 1776);
      v303 = *(v91 + 1768);
      sub_21AEB3980();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE2CF8();
      sub_21AF098BC();
      v304 = *(v91 + 1776);
      v305 = *(v91 + 1768);
      if ((v115 & 1) == 0)
      {
        goto LABEL_70;
      }

      v474 = *(v91 + 1448);
      v480 = *(v91 + 1456);
      v306 = *(v91 + 1440);
      sub_21AEE1C18();
      v308 = *(v307 + 1376);
      v309 = *(v486 + 1296);
      sub_21AEE1B84();
      v311 = sub_21AEE1A3C(v310);
      sub_21AEE15E0(v311, v312 + 16);
      sub_21AEE201C();
      sub_21AF0996C();
      sub_21AE9641C((v486 + 16), v486 + 416);
      v313 = sub_21AEE22D4();
      (v109)(v313);
      v314 = sub_21AEE1EB0();
      v474(v314);
      sub_21AEE15E0(v109 + 416, v109 + 456);
      v315 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2924();
      os_log_type_enabled(v315, v316);
      sub_21AEE2F4C();
      sub_21AEE23B0();
      if (v317)
      {
        sub_21AEE21BC();
        sub_21AEE2058();
        swift_slowAlloc();
        v318 = sub_21AEE1FE4();
        sub_21AEE2E08(v318);
        v319 = sub_21AEE1D80(4.8151e-34);
        v320(v319);
        v109 = v321;
        v322 = sub_21AEE1FD8();
        v305(v322);
        v323 = sub_21AEE2BE8();
        v200(v323);
        v324 = sub_21AEE264C();
        sub_21AECFFFC(v324, v109, v325);
        sub_21AEE2664();

        sub_21AEE1BDC();
        v326 = *(v109 + 480);
        sub_21AEAF9B0((v109 + 456), v326);
        sub_21AEE1918();
        v328 = v327(v326);
        sub_21AEA79F0((v109 + 456));
        sub_21AEEC484();
        sub_21AEE28B8();
        v329 = sub_21AEE264C();
        sub_21AECFFFC(v329, v91, v330);
        sub_21AEE2884();
        *(v309 + 14) = v328;
        sub_21AEE2324();
        _os_log_impl(v331, v332, v333, v334, v335, 0x16u);
        sub_21AEE2A60();
        sub_21AEE2200();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE26F0();
        sub_21AEA79F0((v109 + 456));

        v398 = sub_21AEE1FD8();
        v305(v398);
        v399 = sub_21AED1DCC();
        v200(v399);
      }

      sub_21AEE2164();
      v400 = *(v109 + 1120);
      v401 = sub_21AEE2CE0();
      v402(v401);
      *(v109 + 1784) = *(v109 + 952);
      sub_21AEE24E0();
      sub_21AEE21D0();
      sub_21AEFBF4C(v403, v404, v405, v406);
      v408 = *(v109 + 440);
      v407 = *(v109 + 448);
      sub_21AEE1F00((v109 + 416));

      v409 = swift_task_alloc();
      *(v109 + 1792) = v409;
      *v409 = v109;
      sub_21AEE18A0(v409);
      sub_21AEE1994(*(v109 + 1120));
      sub_21AEE2290();

      return AMLRankingPipeline.process(context:)(v410, v411, v412);
    }

    else
    {
      v267 = *(v91 + 1728);
      v268 = *(v91 + 1720);
      sub_21AEB3980();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE2CF8();
      sub_21AF098BC();
      v269 = *(v91 + 1728);
      v270 = *(v91 + 1720);
      if ((v115 & 1) == 0)
      {
        goto LABEL_69;
      }

      v473 = *(v91 + 1448);
      v479 = *(v91 + 1456);
      v271 = *(v91 + 1440);
      sub_21AEE1C18();
      v273 = *(v272 + 1384);
      v274 = *(v486 + 1312);
      sub_21AEE1B84();
      v276 = sub_21AEE1A3C(v275);
      sub_21AEE15E0(v276, v277 + 56);
      sub_21AEE201C();
      sub_21AF0996C();
      sub_21AE9641C((v486 + 56), v486 + 656);
      v278 = sub_21AEE22D4();
      (v109)(v278);
      v279 = sub_21AEE1EB0();
      v473(v279);
      sub_21AEE15E0(v109 + 656, v109 + 496);
      v280 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2924();
      os_log_type_enabled(v280, v281);
      sub_21AEE2F4C();
      sub_21AEE23E4();
      if (v282)
      {
        sub_21AEE21BC();
        sub_21AEE2058();
        swift_slowAlloc();
        v283 = sub_21AEE1FE4();
        sub_21AEE2E08(v283);
        v284 = sub_21AEE1D80(4.8151e-34);
        v285(v284);
        v109 = v286;
        v287 = sub_21AEE1FD8();
        v270(v287);
        v288 = sub_21AEE2BE8();
        v200(v288);
        v289 = sub_21AEE264C();
        sub_21AECFFFC(v289, v109, v290);
        sub_21AEE2664();

        sub_21AEE1BDC();
        v291 = *(v109 + 520);
        v292 = *(v109 + 528);
        sub_21AEAF9B0((v109 + 496), v291);
        sub_21AEE1918();
        v294 = v293(v291);
        sub_21AEA79F0((v109 + 496));
        sub_21AEEC484();
        sub_21AEE28B8();
        v295 = sub_21AEE264C();
        sub_21AECFFFC(v295, v91, v296);
        sub_21AEE2884();
        *(v274 + 14) = v294;
        sub_21AEE2324();
        _os_log_impl(v297, v298, v299, v300, v301, 0x16u);
        sub_21AEE2A60();
        sub_21AEE2200();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE26F0();
        sub_21AEA79F0((v109 + 496));

        v336 = sub_21AEE1FD8();
        v270(v336);
        v337 = sub_21AED1DCC();
        v200(v337);
      }

      sub_21AEE2164();
      v338 = *(v109 + 1144);
      v339 = sub_21AEE2CE0();
      v340(v339);
      *(v109 + 1736) = *(v109 + 952);
      sub_21AEE24E0();
      sub_21AEE21D0();
      sub_21AEFC9C0(v341, v342, v343, v344);
      v345 = *(v109 + 680);
      v346 = *(v109 + 688);
      sub_21AEE1F00((v109 + 656));

      v347 = swift_task_alloc();
      *(v109 + 1744) = v347;
      *v347 = v109;
      sub_21AEE1A1C(v347);
      sub_21AEE1994(*(v109 + 1144));
      sub_21AEE2290();

      return AMLScoringPipeline.process(context:)(v348, v349, v350);
    }
  }

  else
  {
LABEL_9:
    *(v0 + 1608) = v6;
    v42 = *(v0 + 1600);
    v43 = *(v0 + 1592);
    sub_21AEE2460();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AF098BC();
    sub_21AEE2CB0();
    if (v8)
    {
      sub_21AEE2670();
      v469 = v44;
      v45 = *(v0 + 1440);
      sub_21AEE1C18();
      v47 = *(v46 + 1400);
      v48 = *(v486 + 1328);
      sub_21AEE1B84();
      v50 = v43 + v10 * v49;
      v51 = *(v486 + 1048);
      sub_21AEE15E0(v50 + 32, v486 + 176);
      sub_21AEE252C();
      sub_21AF0996C();
      sub_21AE9641C((v486 + 176), v486 + 136);
      v52 = sub_21AEE22D4();
      (v2)(v52);
      v53 = sub_21AEE1EB0();
      v469(v53);
      sub_21AEE15E0((v2 + 17), (v2 + 12));
      v54 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2924();
      sub_21AEE3078(v55, v56);
      sub_21AEE2F4C();
      sub_21AEE22AC();
      if (v57)
      {
        sub_21AEE21BC();
        sub_21AEE2058();
        swift_slowAlloc();
        v58 = sub_21AEE1FE4();
        sub_21AEE2830(v58);
        v59 = sub_21AEE1D80(4.8151e-34);
        v60(v59);
        v2 = v61;
        v62 = sub_21AEE1FD8();
        v4(v62);
        v51(v54, v1);
        v63 = sub_21AEE264C();
        sub_21AECFFFC(v63, v2, v64);
        sub_21AEE2664();

        sub_21AEE1BDC();
        v65 = v2[15];
        v66 = v2[16];
        sub_21AEAF9B0(v2 + 12, v65);
        sub_21AEE2508(v66);
        v68 = v67(v65, v66);
        sub_21AEA79F0(v2 + 12);
        sub_21AEEC484();
        sub_21AEE28B8();
        v69 = sub_21AEE264C();
        sub_21AECFFFC(v69, v66, v70);
        sub_21AEE2884();
        *(v48 + 14) = v68;
        sub_21AEE1D50();
        sub_21AEE28EC(v71, v72, v73, v74);
        sub_21AEE2340();
        sub_21AEE2494();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE26F0();
        sub_21AEA79F0(v2 + 12);

        v131 = sub_21AEE1FD8();
        v4(v131);
        v132 = sub_21AED1DCC();
        (v51)(v132);
      }

      v133 = v2[178];
      (*(v2[144] + 16))(v2[146], v2[151], v2[137]);
      sub_21AEC78CC();
      sub_21AF097DC();
      sub_21AEE2A04();
      v134 = sub_21AF096AC();
      v135 = sub_21AF09AAC();
      if (sub_21AEE2C98(v135))
      {
        sub_21AEE2058();
        swift_slowAlloc();
        v490[0] = sub_21AEE1FE4();
        *v48 = 136315394;
        v136 = v2[70];
        v137 = v2[71];
        sub_21AEAF9B0(v2 + 67, v136);
        sub_21AEE2508(v137);
        v138(v136, v137);
        sub_21AEA79F0(v2 + 67);
        sub_21AEEC484();
        v140 = v139;

        v141 = sub_21AEE264C();
        v143 = sub_21AECFFFC(v141, v140, v142);

        sub_21AEE1BDC();
        v144 = sub_21AEE2174();
        sub_21AECFFFC(v144, v145, v146);
        sub_21AEE2180();

        *(v48 + 14) = v143;
        sub_21AEE270C(&dword_21AE94000, v147, v135, "Processing candidate feature provider %s for %s");
        swift_arrayDestroy();
        sub_21AEE23C8();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEA79F0(v2 + 67);
      }

      v148 = v2[20];
      v149 = v2[21];
      v150 = sub_21AEE1B50(v2 + 17);
      sub_21AEE1D3C(v150);
      v487 = v151 + *v151;
      v153 = *(v152 + 4);
      v154 = swift_task_alloc();
      v2[202] = v154;
      *v154 = v2;
      v154[1] = sub_21AED6158;
      v155 = v2[151];
      sub_21AEE1974();
      sub_21AEE2290();

      __asm { BRAA            X4, X16 }
    }

LABEL_67:
    sub_21AEE252C();
    sub_21AF09C7C();
    __break(1u);
LABEL_68:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_69:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_70:
    sub_21AEE201C();
    sub_21AF09C7C();
    __break(1u);
LABEL_71:
    sub_21AEE201C();
    result = sub_21AF09C7C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AED7D44()
{
  sub_21AEE2AC0();
  sub_21AEE269C();
  v3 = v2;
  sub_21AEE1D9C();
  *v4 = v3;
  v6 = *(v5 + 1688);
  *v4 = *v1;
  v3[212] = v7;
  v3[213] = v0;

  if (v0)
  {
    v8 = v3[208];
    v9 = v3[207];
    v10 = v3[205];
  }

  sub_21AEE246C();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_21AED7E68()
{
  v1 = *(v0 + 1680);
  v2 = sub_21AEA7BE4(v1);
  v296 = v1 & 0xFFFFFFFFFFFFFF8;
  v298 = v1 & 0xC000000000000001;
  v3 = v1 + 32;
  v4 = *(v0 + 1704);
  v5 = *(v0 + 1680);

  for (i = 0; v2 != i; ++i)
  {
    if (v298)
    {
      MEMORY[0x21CEE4EF0](i, *(v0 + 1680));
    }

    else
    {
      if (i >= *(v296 + 16))
      {
        goto LABEL_60;
      }

      v7 = *(v3 + 8 * i);
      swift_unknownObjectRetain();
    }

    v8 = *(v0 + 1696);
    swift_getObjectType();
    v9 = [v8 featuresAtIndex_];
    v10 = MLFeatureProvider.merging(other:uniquingKeysWith:)();
    swift_unknownObjectRelease();
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
    {
      v5 = sub_21AED181C(v5);
    }

    swift_unknownObjectRelease();
    if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      sub_21AEE2174();
      sub_21AF09C7C();
      __break(1u);
LABEL_64:
      sub_21AEE2174();
      sub_21AF09C7C();
      __break(1u);
LABEL_65:
      sub_21AEE2174();
      sub_21AF09C7C();
      __break(1u);
LABEL_66:
      sub_21AEE2174();
      result = sub_21AF09C7C();
      __break(1u);
      return result;
    }

    v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * i + 0x20);
    *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * i + 0x20) = v10;
    swift_unknownObjectRelease();
  }

  v12 = *(v0 + 1680);
  v299 = *(v0 + 1672);
  v292 = *(v0 + 1696);
  v297 = *(v0 + 1664);
  v13 = *(v0 + 1656);
  v14 = *(v0 + 1480);
  v287 = *(v0 + 1072);
  v289 = *(v0 + 1488);
  v15 = *(v0 + 1064);
  v16 = *(v0 + 1056);

  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  sub_21AEAF9B0((v0 + 296), v17);
  v19 = sub_21AEE1C34();
  v20(v19);
  sub_21AEEC484();
  sub_21AEE207C();
  AMLRecommendationPipeline.logPipelineAsync(pipelineStage:pipelineName:candidates:features:pipelineLogger:metadata:)(0xD00000000000001DLL, 0x800000021AF0FCC0, v17, v18, v13, v5, v289, v14, v16, v15);

  swift_unknownObjectRelease();
  sub_21AEA79F0((v0 + 296));
  if (*(v0 + 960) != sub_21AF0992C())
  {
    *(v0 + 1680) = v5;
    v52 = *(v0 + 1672);
    v53 = *(v0 + 1664);
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    v54 = *(v0 + 1672);
    v55 = *(v0 + 1664);
    if (v16)
    {
      sub_21AEE1C60();
      v56 = *(v0 + 1392);
      v57 = *(v0 + 1320);
      v58 = sub_21AEE18C0();
      sub_21AEE15E0(v58, v0 + 256);
      sub_21AEE226C();
      sub_21AF0996C();
      v59 = sub_21AEE1B30((v0 + 256), v0 + 296);
      v52(v59);
      v60 = sub_21AEE1C84();
      v292(v60);
      sub_21AEE15E0(v0 + 296, v0 + 336);
      v61 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2228();
      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 1472);
      v65 = *(v0 + 1464);
      v66 = *(v0 + 1392);
      v67 = *(v0 + 1344);
      v68 = *(v0 + 1320);
      v69 = *(v0 + 1264);
      v70 = *(v0 + 1088);
      if (v63)
      {
        sub_21AEE1BA4();
        v71 = sub_21AEE1FE4();
        sub_21AEE2848(v71);
        v72 = sub_21AEE182C(4.8151e-34);
        v73(v72);
        v74 = sub_21AEE1B70();
        v64(v74);
        v75 = sub_21AEE2284();
        (v289)(v75);
        v76 = sub_21AEE21DC();
        sub_21AECFFFC(v76, v77, v78);
        sub_21AEE2028();

        sub_21AEE1BDC();
        v79 = *(v0 + 368);
        sub_21AEAF9B0((v0 + 336), *(v0 + 360));
        v80 = sub_21AEE1C34();
        v82 = v81(v80);
        sub_21AEA79F0((v0 + 336));
        sub_21AEEC484();
        sub_21AEE207C();
        v83 = sub_21AEE2070();
        sub_21AECFFFC(v83, v84, v85);
        sub_21AEE2884();
        *(v56 + 14) = v82;
        sub_21AEE1E3C(&dword_21AE94000, v86, v87, "<requestID: %s> Processing batch candidate feature provider %s");
        sub_21AEE2360();
        sub_21AEE20A4();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE20E8();
        sub_21AEA79F0((v0 + 336));

        v125 = sub_21AEE1FD8();
        v64(v125);
        v126 = sub_21AEC7734();
        v65(v126);
      }

      v127 = *(v0 + 320);
      v128 = *(v0 + 328);
      v129 = *(sub_21AEE1B50((v0 + 296)) + 48);
      sub_21AEE21F4();
      v303 = v130 + *v130;
      v132 = *(v131 + 4);
      v133 = swift_task_alloc();
      *(v0 + 1688) = v133;
      *v133 = v0;
      sub_21AEE1B10();
      v134 = *(v0 + 1640);
      sub_21AEE1AFC(*(v0 + 1048));
      sub_21AEE24EC();

      __asm { BRAA            X4, X16 }
    }

    goto LABEL_63;
  }

  *(v0 + 1712) = v5;
  v21 = *(v0 + 1664);
  v22 = *(v0 + 1640);
  v23 = *(v0 + 1560);
  v24 = *(v0 + 1552);
  v25 = *(v0 + 1544);
  v26 = *(v0 + 1184);
  v27 = *(v0 + 1176);

  sub_21AEE2D70();
  *(v0 + 952) = sub_21AF098EC();
  *(v0 + 936) = v22;
  MEMORY[0x21CEE4AC0](v25, v24);
  *(v0 + 928) = *(v0 + 944);
  sub_21AF09D6C();
  v293 = (v5 + 32);
  v28 = (v26 + 16);
  while (1)
  {
    v29 = *(v0 + 1584);
    v30 = *(v0 + 1576);
    v31 = *(v0 + 1568);
    v32 = *(v0 + 1248);
    v33 = *(v0 + 1240);
    v34 = *(v0 + 1224);
    v35 = *(v0 + 1216);
    sub_21AF09D7C();
    v36 = sub_21AED1D94();
    v30(v36);
    if (sub_21AEA766C(v33, 1, v35) == 1)
    {
      break;
    }

    v37 = *(v0 + 1240);
    v38 = *(v0 + 1184);
    v39 = *(v0 + 1176);
    v40 = *v37;
    v41 = *(*(v0 + 1216) + 48);
    (*(*(v0 + 1152) + 16))(*(v0 + 1160), v37 + v41, *(v0 + 1096));
    v42 = *(v38 + 8);
    v42(v37 + v41, v39);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v51 = sub_21AEE2460();
      v40 = MEMORY[0x21CEE4EF0](v51);
    }

    else
    {
      if (v40 < 0)
      {
        goto LABEL_61;
      }

      sub_21AEE2F6C(v5 & 0xFFFFFFFFFFFFFF8);
      if (v43)
      {
        goto LABEL_62;
      }

      sub_21AEE30C0(v293);
    }

    v44 = *(v0 + 1544);
    v45 = *(v0 + 1200);
    v46 = *(v0 + 1192);
    v47 = *(v0 + 1176);
    sub_21AEA8470(*(v0 + 1160), v40, *(v0 + 1096), v45);
    v48 = *v28;
    v49 = sub_21AEE1C84();
    v50(v49);
    sub_21AF0994C();
    v42(v45, v47);
  }

  v88 = *(v0 + 1072);
  v89 = *(v0 + 1064);
  v90 = *(v0 + 1056);
  v91 = *(v0 + 720);
  v300 = *(v0 + 1088);

  v92 = *(v89 + 40);
  v93 = sub_21AEE2098();
  *(v0 + 1720) = v94(v93);

  *(v0 + 784) = v300;
  sub_21AEE1A84();
  *(v0 + 1728) = swift_getExtendedExistentialTypeMetadata();
  sub_21AEE204C();
  sub_21AF0989C();
  sub_21AEE2C4C();
  *(v0 + 920) = v33;
  sub_21AEE204C();
  if (v33 == sub_21AF0992C())
  {
    v95 = *(v0 + 1720);
    sub_21AEE2C08();

    v96 = sub_21AEE21A8();
    *(v0 + 1768) = v97(v96);

    *(v0 + 864) = v300;
    sub_21AEE1A9C();
    *(v0 + 1776) = swift_getExtendedExistentialTypeMetadata();
    sub_21AEE204C();
    sub_21AF0989C();
    sub_21AEE2C4C();
    *(v0 + 888) = v33;
    sub_21AEE204C();
    if (v33 == sub_21AF0992C())
    {
      v98 = *(v0 + 1640);

      v99 = *(v0 + 952);
      sub_21AEE1F7C();
      v301 = *(v0 + 1088);
      sub_21AEE201C();
      v100 = v34();
      *(v0 + 1824) = v100;
      *(v0 + 800) = v301;
      sub_21AEE17F4();
      *(v0 + 1832) = swift_getExtendedExistentialTypeMetadata();
      sub_21AEE204C();
      v101 = sub_21AF0989C();
      *(v0 + 912) = v101;
      sub_21AEE204C();
      if (v101 == sub_21AF0992C())
      {
        sub_21AEE2B58();
        v294 = *(v0 + 1448);
        sub_21AEE27C0();
        sub_21AEE1FB0();

        v102 = sub_21AEE2138();
        v30(v102);
        v103 = sub_21AEE2118();
        v294(v103);
        sub_21AF096AC();
        sub_21AF09AAC();
        sub_21AEE2824();
        sub_21AEE3078(v104, v105);
        sub_21AEE2B48();
        v290 = v106;
        v302 = *(v0 + 1480);
        sub_21AEE20CC();
        if (v107)
        {
          v286 = *(v0 + 1176);
          v108 = *(v0 + 1080);
          v285 = *(v0 + 1088);
          v109 = *(v0 + 1056);
          sub_21AEE2058();
          swift_slowAlloc();
          sub_21AEE2550();
          v110 = sub_21AEE1BFC(4.8151e-34);
          v111(v110);
          v112 = sub_21AEE2784();
          (v34)(v112, v285);
          v113 = sub_21AEE2034();
          v29(v113);
          v114 = sub_21AEE283C();
          sub_21AECFFFC(v114, v100, v115);
          sub_21AEE2064();

          sub_21AEE1F1C();

          v117 = MEMORY[0x21CEE4B10](v116, v286);
          sub_21AEE2784();

          v118 = sub_21AEE2460();
          sub_21AECFFFC(v118, v119, v120);
          sub_21AEE2064();

          *(v99 + 14) = v117;
          sub_21AEE1DBC();
          _os_log_impl(v121, v122, v123, v124, v99, 0x16u);
          sub_21AEE2930();
          sub_21AEE20A4();
          sub_21AEE23C8();
          swift_unknownObjectRelease();
        }

        else
        {
          sub_21AEE2DB0();

          v257 = sub_21AEE2098();
          (v34)(v257);
          v258 = sub_21AEE2034();
          v29(v258);
        }

        v259 = *(v0 + 1416);
        v260 = *(v0 + 1408);
        v261 = *(v0 + 1400);
        v262 = *(v0 + 1392);
        v263 = *(v0 + 1384);
        v264 = *(v0 + 1376);
        v265 = *(v0 + 1368);
        v266 = *(v0 + 1360);
        v267 = *(v0 + 1352);
        v268 = *(v0 + 1336);
        sub_21AEE19AC();

        sub_21AEE24D4();
        sub_21AEE24EC();

        __asm { BRAA            X2, X16 }
      }

      sub_21AEE2A80();
      *(v0 + 1840) = v99;
      v212 = *(v0 + 1832);
      v213 = *(v0 + 1824);
      sub_21AEE2098();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE21D0();
      sub_21AF098BC();
      v305 = *(v0 + 1832);
      v214 = *(v0 + 1824);
      if (v32)
      {
        sub_21AEE2670();
        v288 = v215;
        v216 = *(v0 + 1440);
        sub_21AEE2614();
        v217 = *(v0 + 1368);
        v218 = *(v0 + 1288);
        v219 = sub_21AEE18C0();
        sub_21AEE15E0(v219, v0 + 616);
        sub_21AF0996C();
        v220 = sub_21AEE1B30((v0 + 616), v0 + 576);
        v212(v220);
        v221 = sub_21AEE1C84();
        v288(v221);
        sub_21AEE3090();
        sub_21AF096AC();
        v222 = sub_21AF09AAC();
        sub_21AEE28D0(v222);
        sub_21AEE1D64();
        if (v223)
        {
          sub_21AEE25B0();
          v224 = sub_21AEE2234();
          sub_21AEE2830(v224);
          v225 = sub_21AEE1AC8(4.8152e-34);
          v226(v225);
          v227 = sub_21AEE20F8();
          v29(v227);
          v228 = sub_21AEE2854();
          v214(v228);
          v229 = sub_21AEE283C();
          sub_21AECFFFC(v229, v218, v230);
          sub_21AEE2884();
          sub_21AEE1D2C();
          v231 = *(v0 + 400);
          v232 = *(v0 + 408);
          sub_21AEAF9B0((v0 + 376), v231);
          sub_21AEE1A54();
          v233(v231);
          sub_21AEE2E98();
          sub_21AEE2478();
          v234 = sub_21AEE24C8();
          sub_21AECFFFC(v234, v235, v236);
          sub_21AEE2884();
          sub_21AEE1DAC();

          sub_21AF0992C();
          sub_21AEE2064();

          *(v101 + 24) = v232;
          sub_21AEE1E64();
          sub_21AEE2B30(v237, v238, v239, v240);
          sub_21AEE2930();
          sub_21AEE20A4();
          sub_21AEE2250();
        }

        else
        {
          sub_21AEE240C();
          v271 = sub_21AEE24BC();
          v29(v271);
          v272 = sub_21AEE2034();
          v214(v272);
        }

        v273 = *(v0 + 600);
        v274 = *(v0 + 608);
        v275 = *(sub_21AEE1B50((v0 + 576)) + 32);
        sub_21AEE21F4();
        v306 = v276 + *v276;
        v278 = *(v277 + 4);
        v279 = swift_task_alloc();
        v280 = sub_21AEE2E14(v279);
        *v280 = v281;
        sub_21AEE180C(v280);
        v282 = *(v0 + 1816);
        sub_21AEE1AFC(*(v0 + 1048));
        sub_21AEE24EC();

        __asm { BRAA            X4, X16 }
      }

      goto LABEL_66;
    }

    v166 = *(v0 + 1776);
    v167 = *(v0 + 1768);
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    v304 = *(v0 + 1776);
    v168 = *(v0 + 1768);
    if ((v32 & 1) == 0)
    {
      goto LABEL_65;
    }

    v295 = *(v0 + 1456);
    v291 = *(v0 + 1448);
    v169 = *(v0 + 1440);
    sub_21AEE2614();
    v170 = *(v0 + 1376);
    v171 = *(v0 + 1296);
    v172 = sub_21AEE18C0();
    sub_21AEE15E0(v172, v0 + 16);
    sub_21AF0996C();
    v173 = sub_21AEE1B30((v0 + 16), v0 + 416);
    v166(v173);
    sub_21AEE1C84();
    sub_21AEE2F78();
    v174();
    sub_21AEE15E0(v0 + 416, v0 + 456);
    v175 = sub_21AF096AC();
    sub_21AF09AAC();
    sub_21AEE2228();
    os_log_type_enabled(v175, v176);
    sub_21AEE1F2C();
    if (v177)
    {
      sub_21AEE1BA4();
      v178 = sub_21AEE1FE4();
      sub_21AEE2848(v178);
      v179 = sub_21AEE182C(4.8151e-34);
      v180(v179);
      v181 = sub_21AEE1B70();
      v166(v181);
      v182 = sub_21AEE2284();
      v291(v182);
      v183 = sub_21AEE21DC();
      sub_21AECFFFC(v183, v184, v185);
      sub_21AEE2028();

      sub_21AEE1BDC();
      v186 = *(v0 + 488);
      sub_21AEAF9B0((v0 + 456), *(v0 + 480));
      v187 = sub_21AEE18E0();
      v189 = v188(v187);
      sub_21AEA79F0((v0 + 456));
      sub_21AEEC484();
      sub_21AEE207C();
      v190 = sub_21AEE2070();
      sub_21AECFFFC(v190, v191, v192);
      sub_21AEE2884();
      *(v170 + 14) = v189;
      sub_21AEE1E3C(&dword_21AE94000, v193, v194, "<requestID: %s> Processing ranking pipeline %s");
      sub_21AEE2360();
      sub_21AEE20A4();
      sub_21AEE2000();
    }

    else
    {
      sub_21AEE20E8();
      sub_21AEA79F0((v0 + 456));

      v241 = sub_21AEE1FD8();
      v166(v241);
      v242 = sub_21AEC7734();
      v30(v242);
    }

    sub_21AEE22C4();
    v243 = *(v0 + 1120);
    v244 = sub_21AEE1CD0();
    v245(v244);
    *(v0 + 1784) = *(v0 + 952);
    v246 = sub_21AEE1AE4();
    sub_21AEFBF4C(v246, v247, v248, v249);
    v251 = *(v0 + 440);
    v250 = *(v0 + 448);
    sub_21AEE1F00((v0 + 416));

    v252 = swift_task_alloc();
    *(v0 + 1792) = v252;
    *v252 = v0;
    sub_21AEE18A0(v252);
    sub_21AEE1994(*(v0 + 1120));
    sub_21AEE24EC();

    return AMLRankingPipeline.process(context:)(v253, v254, v255);
  }

  else
  {
    v137 = *(v0 + 1728);
    v138 = *(v0 + 1720);
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    v139 = *(v0 + 1728);
    v140 = *(v0 + 1720);
    if ((v32 & 1) == 0)
    {
      goto LABEL_64;
    }

    sub_21AEE1C60();
    v141 = *(v0 + 1384);
    v142 = *(v0 + 1312);
    v143 = sub_21AEE18C0();
    sub_21AEE15E0(v143, v0 + 56);
    sub_21AEE226C();
    sub_21AF0996C();
    v144 = sub_21AEE1B30((v0 + 56), v0 + 656);
    v137(v144);
    v145 = sub_21AEE1C84();
    v293(v145);
    sub_21AEE15E0(v0 + 656, v0 + 496);
    v146 = sub_21AF096AC();
    sub_21AF09AAC();
    sub_21AEE2228();
    os_log_type_enabled(v146, v147);
    sub_21AEE2904();
    if (v148)
    {
      sub_21AEE1BA4();
      v149 = sub_21AEE1FE4();
      sub_21AEE2848(v149);
      v150 = sub_21AEE182C(4.8151e-34);
      v151(v150);
      v152 = sub_21AEE1B70();
      v137(v152);
      v153 = sub_21AEE2284();
      (v289)(v153);
      v154 = sub_21AEE21DC();
      sub_21AECFFFC(v154, v155, v156);
      sub_21AEE2028();

      sub_21AEE1BDC();
      v157 = *(v0 + 528);
      sub_21AEAF9B0((v0 + 496), *(v0 + 520));
      v158 = sub_21AEE18E0();
      v160 = v159(v158);
      sub_21AEA79F0((v0 + 496));
      sub_21AEEC484();
      sub_21AEE207C();
      v161 = sub_21AEE2070();
      sub_21AECFFFC(v161, v162, v163);
      sub_21AEE2884();
      *(v141 + 14) = v160;
      sub_21AEE1E3C(&dword_21AE94000, v164, v165, "<requestID: %s> Processing scoring pipeline %s");
      sub_21AEE2360();
      sub_21AEE20A4();
      sub_21AEE2000();
    }

    else
    {
      sub_21AEE20E8();
      sub_21AEA79F0((v0 + 496));

      v195 = sub_21AEE1FD8();
      v137(v195);
      v196 = sub_21AEC7734();
      v30(v196);
    }

    sub_21AEE22C4();
    v197 = *(v0 + 1144);
    v198 = sub_21AEE1CD0();
    v199(v198);
    *(v0 + 1736) = *(v0 + 952);
    v200 = sub_21AEE1AE4();
    sub_21AEFC9C0(v200, v201, v202, v203);
    v204 = *(v0 + 680);
    v205 = *(v0 + 688);
    sub_21AEE1F00((v0 + 656));

    v206 = swift_task_alloc();
    *(v0 + 1744) = v206;
    *v206 = v0;
    sub_21AEE1A1C(v206);
    sub_21AEE1994(*(v0 + 1144));
    sub_21AEE24EC();

    return AMLScoringPipeline.process(context:)(v207, v208, v209);
  }
}

uint64_t sub_21AED90D0()
{
  sub_21AEE2818();
  sub_21AEE22E4();
  v4 = v3;
  sub_21AEE1D9C();
  *v5 = v4;
  v7 = *(v6 + 1744);
  v8 = *v2;
  sub_21AEE1F6C();
  *v9 = v8;
  v4[219] = v0;

  if (!v0)
  {
    v10 = v4[217];

    v4[220] = v1;
  }

  sub_21AEE23FC();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_21AED91DC()
{
  v1 = *(v0 + 1760);
  v197 = *(v0 + 1752);
  v210 = *(v0 + 1720);
  *&v211 = *(v0 + 1728);
  v194 = *(v0 + 1544);
  v195 = *(v0 + 1648);
  v201 = *(v0 + 1488);
  v202 = *(v0 + 1656);
  v200 = *(v0 + 1480);
  v207 = *(v0 + 1144);
  v2 = *(v0 + 1136);
  v204 = *(v0 + 1128);
  v3 = *(v0 + 1064);
  v4 = *(v0 + 1056);
  v198 = *(v0 + 1072);
  *(v0 + 952) = v1;
  v5 = *(v0 + 680);
  v6 = *(v0 + 688);
  sub_21AEAF9B0((v0 + 656), v5);
  v7 = *(*(*(v6 + 8) + 8) + 8);
  v8 = *(v7 + 16);

  v8(v5, v7);
  v9 = sub_21AEEC484();
  v11 = v10;

  *(v0 + 896) = v1;
  v12 = swift_task_alloc();
  *(v12 + 16) = v4;
  *(v12 + 24) = v3;
  v13 = sub_21AEA7574(&unk_27CD3DE90, &unk_21AF0C440);
  v15 = sub_21AED3450(sub_21AEE17BC, v12, v194, v13, MEMORY[0x277D84A98], v195, MEMORY[0x277D84AC0], v14);

  AMLRecommendationPipeline.logPipelineAsync(pipelineStage:pipelineName:candidates:features:pipelineLogger:metadata:)(0xD000000000000010, 0x800000021AF0FD10, v9, v11, v202, v15, v201, v200, v4, v3);

  (*(v2 + 8))(v207, v204);
  sub_21AEA79F0((v0 + 656));
  v16 = sub_21AF0992C();
  v17 = *(v0 + 920);
  v18 = *(v0 + 1720);
  if (v17 == v16)
  {
    sub_21AEE2C08();

    v19 = sub_21AEE21A8();
    *(v0 + 1768) = v20(v19);

    *(v0 + 864) = v211;
    sub_21AEE1A9C();
    *(v0 + 1776) = swift_getExtendedExistentialTypeMetadata();
    sub_21AEE204C();
    sub_21AF0989C();
    sub_21AEE2C4C();
    *(v0 + 888) = v17;
    sub_21AEE204C();
    if (v17 == sub_21AF0992C())
    {
      v21 = *(v0 + 1640);

      v22 = *(v0 + 952);
      sub_21AEE1F7C();
      v212 = *(v0 + 1088);
      sub_21AEE201C();
      v23 = v4();
      *(v0 + 1824) = v23;
      *(v0 + 800) = v212;
      sub_21AEE17F4();
      *(v0 + 1832) = swift_getExtendedExistentialTypeMetadata();
      sub_21AEE204C();
      v24 = sub_21AF0989C();
      *(v0 + 912) = v24;
      sub_21AEE204C();
      if (v24 == sub_21AF0992C())
      {
        sub_21AEE2B58();
        v208 = *(v0 + 1448);
        sub_21AEE27C0();
        sub_21AEE1FB0();

        v25 = sub_21AEE2138();
        (v12)(v25);
        v26 = sub_21AEE2118();
        v208(v26);
        sub_21AF096AC();
        sub_21AF09AAC();
        sub_21AEE2824();
        sub_21AEE3078(v27, v28);
        sub_21AEE2B48();
        v205 = v29;
        v213 = *(v0 + 1480);
        sub_21AEE20CC();
        if (v30)
        {
          v199 = *(v0 + 1176);
          v31 = *(v0 + 1080);
          v196 = *(v0 + 1088);
          v32 = *(v0 + 1056);
          sub_21AEE2058();
          swift_slowAlloc();
          sub_21AEE2550();
          v33 = sub_21AEE1BFC(4.8151e-34);
          v34(v33);
          v35 = sub_21AEE2784();
          (v4)(v35, v196);
          v36 = sub_21AEE2034();
          v9(v36);
          v37 = sub_21AEE283C();
          sub_21AECFFFC(v37, v23, v38);
          sub_21AEE2064();

          sub_21AEE1F1C();

          v40 = MEMORY[0x21CEE4B10](v39, v199);
          sub_21AEE2784();

          v41 = sub_21AEE2460();
          sub_21AECFFFC(v41, v42, v43);
          sub_21AEE2064();

          *(v22 + 14) = v40;
          sub_21AEE1DBC();
          _os_log_impl(v44, v45, v46, v47, v22, 0x16u);
          sub_21AEE2930();
          sub_21AEE20A4();
          sub_21AEE23C8();
          swift_unknownObjectRelease();
        }

        else
        {
          sub_21AEE2DB0();

          v166 = sub_21AEE2098();
          (v4)(v166);
          v167 = sub_21AEE2034();
          v9(v167);
        }

        v168 = *(v0 + 1416);
        v169 = *(v0 + 1408);
        v170 = *(v0 + 1400);
        v171 = *(v0 + 1392);
        v172 = *(v0 + 1384);
        v173 = *(v0 + 1376);
        v174 = *(v0 + 1368);
        v175 = *(v0 + 1360);
        v176 = *(v0 + 1352);
        v177 = *(v0 + 1336);
        sub_21AEE19AC();

        sub_21AEE24D4();
        sub_21AEE24EC();

        __asm { BRAA            X2, X16 }
      }

      sub_21AEE2A80();
      *(v0 + 1840) = v22;
      v122 = *(v0 + 1832);
      v123 = *(v0 + 1824);
      sub_21AEE2098();
      sub_21AF0990C();
      sub_21AEE1BEC();
      sub_21AEE21D0();
      sub_21AF098BC();
      v124 = *(v0 + 1832);
      v125 = *(v0 + 1824);
      if (v1)
      {
        v209 = *(v0 + 1456);
        v203 = *(v0 + 1440);
        v206 = *(v0 + 1448);
        sub_21AEE2614();
        v126 = *(v0 + 1368);
        v127 = *(v0 + 1288);
        v128 = sub_21AEE18C0();
        sub_21AEE15E0(v128, v0 + 616);
        sub_21AEE226C();
        sub_21AF0996C();
        v129 = sub_21AEE1B30((v0 + 616), v0 + 576);
        v122(v129);
        sub_21AEE1C84();
        sub_21AEE2F78();
        v130();
        sub_21AEE3090();
        sub_21AF096AC();
        v131 = sub_21AF09AAC();
        sub_21AEE28D0(v131);
        sub_21AEE1D64();
        if (v132)
        {
          sub_21AEE25B0();
          v133 = sub_21AEE2234();
          sub_21AEE2830(v133);
          v134 = sub_21AEE1AC8(4.8152e-34);
          v135(v134);
          v136 = sub_21AEE20F8();
          (v9)(v136, v200);
          v137 = sub_21AEE2854();
          v125(v137);
          v138 = sub_21AEE283C();
          sub_21AECFFFC(v138, v127, v139);
          sub_21AEE2884();
          sub_21AEE1D2C();
          v140 = *(v0 + 400);
          v141 = *(v0 + 408);
          sub_21AEAF9B0((v0 + 376), v140);
          sub_21AEE1A54();
          v142(v140);
          sub_21AEE2E98();
          sub_21AEE2478();
          v143 = sub_21AEE24C8();
          sub_21AECFFFC(v143, v144, v145);
          sub_21AEE2884();
          sub_21AEE1DAC();

          sub_21AF0992C();
          sub_21AEE2064();

          *(v24 + 24) = v141;
          sub_21AEE1E64();
          sub_21AEE2B30(v146, v147, v148, v149);
          sub_21AEE2930();
          sub_21AEE20A4();
          sub_21AEE2250();
        }

        else
        {
          sub_21AEE240C();
          v180 = sub_21AEE24BC();
          v9(v180);
          v181 = sub_21AEE2034();
          v125(v181);
        }

        v182 = *(v0 + 600);
        v183 = *(v0 + 608);
        v184 = *(sub_21AEE1B50((v0 + 576)) + 32);
        sub_21AEE21F4();
        v214 = v185 + *v185;
        v187 = *(v186 + 4);
        v188 = swift_task_alloc();
        v189 = sub_21AEE2E14(v188);
        *v189 = v190;
        sub_21AEE180C(v189);
        v191 = *(v0 + 1816);
        sub_21AEE1AFC(*(v0 + 1048));
        sub_21AEE24EC();

        __asm { BRAA            X4, X16 }
      }

      goto LABEL_33;
    }

    v76 = *(v0 + 1776);
    v77 = *(v0 + 1768);
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    v78 = *(v0 + 1776);
    v79 = *(v0 + 1768);
    if (v1)
    {
      sub_21AEE1C60();
      v80 = *(v0 + 1376);
      v81 = *(v0 + 1296);
      v82 = sub_21AEE18C0();
      sub_21AEE15E0(v82, v0 + 16);
      sub_21AEE226C();
      sub_21AF0996C();
      v83 = sub_21AEE1B30((v0 + 16), v0 + 416);
      v76(v83);
      v84 = sub_21AEE1C84();
      v207(v84);
      sub_21AEE15E0(v0 + 416, v0 + 456);
      v85 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2228();
      os_log_type_enabled(v85, v86);
      sub_21AEE1F2C();
      if (v87)
      {
        sub_21AEE1BA4();
        v88 = sub_21AEE1FE4();
        sub_21AEE2848(v88);
        v89 = sub_21AEE182C(4.8151e-34);
        v90(v89);
        v91 = sub_21AEE1B70();
        v76(v91);
        v92 = sub_21AEE2284();
        v204(v92);
        v93 = sub_21AEE21DC();
        sub_21AECFFFC(v93, v94, v95);
        sub_21AEE2028();

        sub_21AEE1BDC();
        v96 = *(v0 + 488);
        sub_21AEAF9B0((v0 + 456), *(v0 + 480));
        v97 = sub_21AEE18E0();
        v99 = v98(v97);
        sub_21AEA79F0((v0 + 456));
        sub_21AEEC484();
        sub_21AEE207C();
        v100 = sub_21AEE2070();
        sub_21AECFFFC(v100, v101, v102);
        sub_21AEE2884();
        *(v80 + 14) = v99;
        sub_21AEE1E3C(&dword_21AE94000, v103, v104, "<requestID: %s> Processing ranking pipeline %s");
        sub_21AEE2360();
        sub_21AEE20A4();
        sub_21AEE2000();
      }

      else
      {
        sub_21AEE20E8();
        sub_21AEA79F0((v0 + 456));

        v150 = sub_21AEE1FD8();
        v76(v150);
        v151 = sub_21AEC7734();
        (v12)(v151);
      }

      sub_21AEE22C4();
      v152 = *(v0 + 1120);
      v153 = sub_21AEE1CD0();
      v154(v153);
      *(v0 + 1784) = *(v0 + 952);
      v155 = sub_21AEE1AE4();
      sub_21AEFBF4C(v155, v156, v157, v158);
      v160 = *(v0 + 440);
      v159 = *(v0 + 448);
      sub_21AEE1F00((v0 + 416));

      v161 = swift_task_alloc();
      *(v0 + 1792) = v161;
      *v161 = v0;
      sub_21AEE18A0(v161);
      sub_21AEE1994(*(v0 + 1120));
      sub_21AEE24EC();

      return AMLRankingPipeline.process(context:)(v162, v163, v164);
    }

LABEL_32:
    sub_21AEE2174();
    sub_21AF09C7C();
    __break(1u);
LABEL_33:
    sub_21AEE2174();
    result = sub_21AF09C7C();
    __break(1u);
    return result;
  }

  v48 = *(v0 + 1728);
  sub_21AEE204C();
  sub_21AF0990C();
  sub_21AEE1BEC();
  sub_21AEE21E8();
  sub_21AF098BC();
  v49 = *(v0 + 1728);
  v50 = *(v0 + 1720);
  if ((v1 & 1) == 0)
  {
    sub_21AEE2174();
    sub_21AF09C7C();
    __break(1u);
    goto LABEL_32;
  }

  sub_21AEE1C60();
  v51 = *(v0 + 1384);
  v52 = *(v0 + 1312);
  v53 = sub_21AEE18C0();
  sub_21AEE15E0(v53, v0 + 56);
  sub_21AEE226C();
  sub_21AF0996C();
  v54 = sub_21AEE1B30((v0 + 56), v0 + 656);
  v18(v54);
  v55 = sub_21AEE1C84();
  v207(v55);
  sub_21AEE15E0(v0 + 656, v0 + 496);
  v56 = sub_21AF096AC();
  sub_21AF09AAC();
  sub_21AEE2228();
  os_log_type_enabled(v56, v57);
  sub_21AEE2904();
  if (v58)
  {
    sub_21AEE1BA4();
    v59 = sub_21AEE1FE4();
    sub_21AEE2848(v59);
    v60 = sub_21AEE182C(4.8151e-34);
    v61(v60);
    v62 = sub_21AEE1B70();
    v18(v62);
    v63 = sub_21AEE2284();
    v204(v63);
    v64 = sub_21AEE21DC();
    sub_21AECFFFC(v64, v65, v66);
    sub_21AEE2028();

    sub_21AEE1BDC();
    v67 = *(v0 + 528);
    sub_21AEAF9B0((v0 + 496), *(v0 + 520));
    v68 = sub_21AEE18E0();
    v70 = v69(v68);
    sub_21AEA79F0((v0 + 496));
    sub_21AEEC484();
    sub_21AEE207C();
    v71 = sub_21AEE2070();
    sub_21AECFFFC(v71, v72, v73);
    sub_21AEE2884();
    *(v51 + 14) = v70;
    sub_21AEE1E3C(&dword_21AE94000, v74, v75, "<requestID: %s> Processing scoring pipeline %s");
    sub_21AEE2360();
    sub_21AEE20A4();
    sub_21AEE2000();
  }

  else
  {
    sub_21AEE20E8();
    sub_21AEA79F0((v0 + 496));

    v105 = sub_21AEE1FD8();
    v18(v105);
    v106 = sub_21AEC7734();
    (v12)(v106);
  }

  sub_21AEE22C4();
  v107 = *(v0 + 1144);
  v108 = sub_21AEE1CD0();
  v109(v108);
  *(v0 + 1736) = *(v0 + 952);
  v110 = sub_21AEE1AE4();
  sub_21AEFC9C0(v110, v111, v112, v113);
  v114 = *(v0 + 680);
  v115 = *(v0 + 688);
  sub_21AEE1F00((v0 + 656));

  v116 = swift_task_alloc();
  *(v0 + 1744) = v116;
  *v116 = v0;
  sub_21AEE1A1C();
  sub_21AEE1994(*(v0 + 1144));
  sub_21AEE24EC();

  return AMLScoringPipeline.process(context:)(v117, v118, v119);
}

uint64_t sub_21AED9F20()
{
  sub_21AEE2818();
  sub_21AEE22E4();
  v4 = v3;
  sub_21AEE1D9C();
  *v5 = v4;
  v7 = *(v6 + 1792);
  v8 = *v2;
  sub_21AEE1F6C();
  *v9 = v8;
  v4[225] = v0;

  if (!v0)
  {
    v10 = v4[223];

    v4[226] = v1;
  }

  sub_21AEE23FC();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_21AEDA02C()
{
  v160 = v0;
  v5 = *(v0 + 1808);
  v6 = *(v0 + 1776);
  v7 = *(v0 + 1768);
  (*(*(v0 + 1112) + 8))(*(v0 + 1120), *(v0 + 1104));
  *(v0 + 952) = v5;
  sub_21AEA79F0((v0 + 416));
  sub_21AEC76A0();
  v8 = sub_21AF0992C();
  v9 = *(v0 + 1768);
  if (*(v0 + 888) == v8)
  {
    v10 = *(v0 + 1640);
    v11 = *(v0 + 1768);

    v12 = *(v0 + 1808);
    sub_21AEE1F7C();
    v153 = *(v0 + 1088);
    sub_21AEE201C();
    v13 = v2();
    *(v0 + 1824) = v13;
    *(v0 + 800) = v153;
    sub_21AEE17F4();
    *(v0 + 1832) = swift_getExtendedExistentialTypeMetadata();
    sub_21AEE204C();
    v14 = sub_21AF0989C();
    *(v0 + 912) = v14;
    sub_21AEE204C();
    if (v14 == sub_21AF0992C())
    {
      sub_21AEE2B58();
      v149 = *(v0 + 1448);
      sub_21AEE27C0();
      sub_21AEE1FB0();

      v15 = sub_21AEE2138();
      v4(v15);
      v16 = sub_21AEE2118();
      v149(v16);
      v17 = sub_21AF096AC();
      sub_21AF09AAC();
      sub_21AEE2824();
      os_log_type_enabled(v17, v18);
      sub_21AEE2B48();
      v144 = v19;
      v154 = *(v0 + 1480);
      sub_21AEE20CC();
      if (v20)
      {
        v139 = *(v0 + 1176);
        v21 = *(v0 + 1080);
        v138 = *(v0 + 1088);
        v22 = *(v0 + 1056);
        sub_21AEE2058();
        swift_slowAlloc();
        v159 = sub_21AEE2550();
        v23 = sub_21AEE1BFC(4.8151e-34);
        v25 = v24(v23);
        v26 = sub_21AEE2784();
        (v2)(v26, v138);
        v27 = sub_21AEE2034();
        v3(v27);
        sub_21AECFFFC(v25, v13, &v159);
        sub_21AEE2064();

        sub_21AEE1F1C();

        v29 = MEMORY[0x21CEE4B10](v28, v139);
        sub_21AEE2784();

        v30 = sub_21AEE2460();
        sub_21AECFFFC(v30, v31, v32);
        sub_21AEE2064();

        *(v12 + 14) = v29;
        sub_21AEE1E64();
        _os_log_impl(v33, v34, v35, v36, v12, 0x16u);
        sub_21AEE2930();
        sub_21AEE20A4();
        sub_21AEE23C8();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_21AEE2DB0();

        v110 = sub_21AEE2098();
        (v2)(v110);
        v111 = sub_21AEE2034();
        v3(v111);
      }

      v112 = *(v0 + 1416);
      v113 = *(v0 + 1408);
      v114 = *(v0 + 1400);
      v115 = *(v0 + 1392);
      v116 = *(v0 + 1384);
      v117 = *(v0 + 1376);
      v118 = *(v0 + 1368);
      v119 = *(v0 + 1360);
      v120 = *(v0 + 1352);
      v121 = *(v0 + 1336);
      sub_21AEE1848();
      v143 = *(v0 + 1168);
      v148 = *(v0 + 1160);
      v152 = *(v0 + 1144);
      v157 = *(v0 + 1120);

      sub_21AEE24D4();
      sub_21AEE29A8();

      __asm { BRAA            X2, X16 }
    }

    sub_21AEE2A80();
    *(v0 + 1840) = v12;
    v66 = *(v0 + 1832);
    v67 = *(v0 + 1824);
    sub_21AEE2098();
    sub_21AF0990C();
    sub_21AEE1BEC();
    sub_21AEE21D0();
    sub_21AF098BC();
    v68 = *(v0 + 1832);
    v69 = *(v0 + 1824);
    if (v1)
    {
      v151 = *(v0 + 1456);
      v141 = *(v0 + 1440);
      v147 = *(v0 + 1448);
      sub_21AEE2614();
      v70 = *(v0 + 1368);
      v71 = *(v0 + 1288);
      v72 = sub_21AEE18C0();
      sub_21AEE15E0(v72, v0 + 616);
      sub_21AEE226C();
      sub_21AF0996C();
      v73 = sub_21AEE1B30((v0 + 616), v0 + 576);
      v66(v73);
      v74 = sub_21AEE1C84();
      v147(v74);
      sub_21AEE3090();
      v75 = sub_21AF096AC();
      v76 = sub_21AF09AAC();
      sub_21AEE28D0(v76);
      sub_21AEE1D64();
      if (v77)
      {
        v142 = *(v0 + 1176);
        v140 = *(v0 + 1088);
        v156 = v75;
        v78 = *(v0 + 1080);
        sub_21AEE25F4();
        v159 = sub_21AEE2234();
        v79 = sub_21AEE1AC8(4.8152e-34);
        v80(v79);
        v81 = sub_21AEE20F8();
        (v3)(v81, v140);
        v82 = sub_21AEE2854();
        v69(v82);
        v83 = sub_21AEE2B0C();
        sub_21AECFFFC(v83, v84, v85);
        sub_21AEE2884();
        sub_21AEE1D2C();
        v86 = *(v0 + 400);
        v87 = *(v0 + 408);
        sub_21AEAF9B0((v0 + 376), v86);
        sub_21AEE1A54();
        v88(v86);
        sub_21AEE2E98();
        sub_21AEE2478();
        v89 = sub_21AEE24C8();
        sub_21AECFFFC(v89, v90, v91);
        sub_21AEE2884();
        sub_21AEE1DAC();

        sub_21AF0992C();
        sub_21AEE2064();

        *(v14 + 24) = v87;
        sub_21AEE2444(&dword_21AE94000, v92, v70, "<requestID: %s> Using post ranking selector %s with %ld candidates");
        sub_21AEE2930();
        sub_21AEE20A4();
        sub_21AEE2250();
      }

      else
      {
        sub_21AEE240C();
        v124 = sub_21AEE24BC();
        v3(v124);
        v125 = sub_21AEE2034();
        v69(v125);
      }

      v126 = *(v0 + 600);
      v127 = *(v0 + 608);
      v128 = *(sub_21AEE1B50((v0 + 576)) + 32);
      sub_21AEE21F4();
      v158 = v129 + *v129;
      v131 = *(v130 + 4);
      v132 = swift_task_alloc();
      v133 = sub_21AEE2E14(v132);
      *v133 = v134;
      sub_21AEE180C(v133);
      v135 = *(v0 + 1816);
      sub_21AEE1AFC(*(v0 + 1048));
      sub_21AEE29A8();

      __asm { BRAA            X4, X16 }
    }

    goto LABEL_24;
  }

  v37 = *(v0 + 1776);
  sub_21AEE204C();
  sub_21AF0990C();
  sub_21AEE1BEC();
  sub_21AEE21E8();
  sub_21AF098BC();
  v38 = *(v0 + 1776);
  v39 = *(v0 + 1768);
  if ((v1 & 1) == 0)
  {
    sub_21AEE2174();
    sub_21AF09C7C();
    __break(1u);
LABEL_24:
    sub_21AEE2174();
    result = sub_21AF09C7C();
    __break(1u);
    return result;
  }

  sub_21AEE2670();
  v150 = v40;
  v145 = *(v0 + 1440);
  sub_21AEE2614();
  v41 = *(v0 + 1376);
  v42 = *(v0 + 1296);
  v43 = sub_21AEE18C0();
  sub_21AEE15E0(v43, v0 + 16);
  sub_21AEE226C();
  sub_21AF0996C();
  v44 = sub_21AEE1B30((v0 + 16), v0 + 416);
  v9(v44);
  v45 = sub_21AEE1C84();
  v150(v45);
  sub_21AEE15E0(v0 + 416, v0 + 456);
  v46 = sub_21AF096AC();
  sub_21AF09AAC();
  sub_21AEE2228();
  os_log_type_enabled(v46, v47);
  sub_21AEE1F2C();
  if (v48)
  {
    v155 = v46;
    v49 = *(v0 + 1080);
    v146 = v4;
    v50 = *(v0 + 1056);
    sub_21AEE2F08();
    sub_21AEE2058();
    swift_slowAlloc();
    v159 = sub_21AEE1FE4();
    v51 = sub_21AEE182C(4.8151e-34);
    v52(v51);
    v53 = sub_21AEE1B70();
    v9(v53);
    v54 = sub_21AEE2284();
    v146(v54);
    v55 = sub_21AEE21DC();
    sub_21AECFFFC(v55, v56, v57);
    sub_21AEE2028();

    sub_21AEE1BDC();
    v58 = *(v0 + 488);
    sub_21AEAF9B0((v0 + 456), *(v0 + 480));
    v59 = sub_21AEE18E0();
    v61 = v60(v59);
    sub_21AEA79F0((v0 + 456));
    sub_21AEEC484();
    sub_21AEE207C();
    v62 = sub_21AEE2070();
    sub_21AECFFFC(v62, v63, v64);
    sub_21AEE2884();
    *(v41 + 14) = v61;
    sub_21AEE218C(&dword_21AE94000, v65, v39, "<requestID: %s> Processing ranking pipeline %s");
    sub_21AEE2930();
    sub_21AEE20A4();
    sub_21AEE2000();
  }

  else
  {
    sub_21AEE20E8();
    sub_21AEA79F0((v0 + 456));

    v93 = sub_21AEE1FD8();
    v9(v93);
    v94 = sub_21AEC7734();
    v4(v94);
  }

  sub_21AEE22C4();
  v95 = *(v0 + 1120);
  v96 = sub_21AEE1CD0();
  v97(v96);
  *(v0 + 1784) = *(v0 + 952);
  v98 = sub_21AEE1AE4();
  sub_21AEFBF4C(v98, v99, v100, v101);
  v103 = *(v0 + 440);
  v102 = *(v0 + 448);
  sub_21AEE1F00((v0 + 416));

  v104 = swift_task_alloc();
  *(v0 + 1792) = v104;
  *v104 = v0;
  sub_21AEE18A0();
  sub_21AEE1994(*(v0 + 1120));
  sub_21AEE29A8();

  return AMLRankingPipeline.process(context:)(v105, v106, v107);
}

uint64_t sub_21AEDA9F4()
{
  sub_21AEE2AC0();
  sub_21AEE269C();
  v3 = v2;
  sub_21AEE1D9C();
  *v4 = v3;
  v6 = *(v5 + 1848);
  *v4 = *v1;
  v3[232] = v7;
  v3[233] = v0;

  if (v0)
  {
    v8 = v3[228];
    v9 = v3[227];
  }

  sub_21AEE246C();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_21AEDAB0C()
{
  v2 = *(v0 + 1856);
  v3 = *(v0 + 1840);
  v4 = *(v0 + 1448);
  v5 = *(v0 + 1440);
  v6 = *(v0 + 1432);
  v169 = *(v0 + 1456);
  v173 = *(v0 + 1424);
  v7 = *(v0 + 1360);
  v8 = *(v0 + 1280);
  sub_21AEE2F58();
  *(v0 + 904) = v9;

  sub_21AEE2334();
  v6();
  v10 = sub_21AEE2128();
  v4(v10);
  sub_21AEE15E0(v0 + 576, v0 + 216);
  v11 = sub_21AF096AC();
  LOBYTE(v6) = sub_21AF09AAC();
  if (sub_21AEE2C98(v6))
  {
    v165 = *(v0 + 1856);
    v154 = *(v0 + 1472);
    v157 = *(v0 + 1464);
    v12 = *(v0 + 1360);
    v13 = *(v0 + 1280);
    v161 = *(v0 + 1176);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v151 = *(v0 + 1344) + 8;
    v16 = *(v0 + 1264) + 8;
    v17 = *(v0 + 1056);
    sub_21AEB39C8();
    sub_21AEE1FE4();
    *v1 = 136315650;
    v18 = *(v15 + 56);
    v19 = sub_21AEE21DC();
    v21 = v20(v19);
    v22 = sub_21AEE2AF4();
    v154(v22);
    v23 = sub_21AEE2034();
    v157(v23);
    v24 = sub_21AEE2F2C();
    sub_21AECFFFC(v24, v25, v26);
    sub_21AEE2884();
    sub_21AEE1BDC();
    v28 = *(v0 + 240);
    v27 = *(v0 + 248);
    sub_21AEAF9B0((v0 + 216), v28);
    sub_21AEE1A54();
    v29(v28);
    sub_21AEE2EC4();
    sub_21AEE207C();
    v30 = sub_21AEE2070();
    sub_21AECFFFC(v30, v31, v32);
    sub_21AEE2884();
    *(v1 + 14) = v27;
    *(v1 + 22) = 2048;

    sub_21AF0992C();
    sub_21AEE2180();

    *(v1 + 24) = v27;
    sub_21AEE2324();
    _os_log_impl(v33, v34, v35, v36, v37, 0x20u);
    sub_21AEE2B18();
    sub_21AEE2200();
    sub_21AEE2000();
  }

  else
  {
    v38 = *(v0 + 1472);
    v21 = *(v0 + 1464);
    v39 = *(v0 + 1360);
    v40 = *(v0 + 1280);
    v41 = *(v0 + 1088);
    v42 = *(v0 + 1056);
    v13 = (*(v0 + 1344) + 8);
    v14 = (*(v0 + 1264) + 8);
    sub_21AEA79F0((v0 + 216));

    v43 = sub_21AEB3AB4();
    v38(v43);
    v44 = sub_21AEE2034();
    v21(v44);
  }

  v45 = *(v0 + 1832);
  v46 = *(v0 + 1824);
  sub_21AEA79F0((v0 + 576));
  sub_21AEC76A0();
  v47 = sub_21AF0992C();
  v48 = *(v0 + 912);
  v174 = *(v0 + 1856);
  if (v48 == v47)
  {
    v49 = *(v0 + 1824);
    v50 = *(v0 + 1816);
    sub_21AEE2670();
    v166 = v51;
    sub_21AEE27C0();
    sub_21AEE1FB0();

    v52 = sub_21AEE2138();
    v14(v52);
    v53 = sub_21AEE2118();
    v166(v53);
    v54 = sub_21AF096AC();
    sub_21AF09AAC();
    sub_21AEE2824();
    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 1504);
    v162 = *(v0 + 1488);
    v167 = *(v0 + 1480);
    v170 = *(v0 + 1712);
    v58 = *(v0 + 1472);
    v59 = *(v0 + 1464);
    v60 = *(v0 + 1352);
    v61 = *(v0 + 1344);
    v62 = *(v0 + 1272);
    v63 = *(v0 + 1264);
    if (v56)
    {
      v155 = v50;
      v64 = *(v0 + 1080);
      v149 = *(v0 + 1176);
      v146 = *(v0 + 1088);
      v65 = *(v0 + 1056);
      sub_21AEE2058();
      swift_slowAlloc();
      sub_21AEE2550();
      *v63 = 136315394;
      sub_21AEE2EF0();
      v66 = sub_21AEC7BDC();
      v67(v66);
      v58(v62, v146);
      v68 = sub_21AEE2034();
      v59(v68);
      v69 = sub_21AEE204C();
      sub_21AECFFFC(v69, v70, v71);
      sub_21AEE2180();

      sub_21AEE1F1C();

      v73 = MEMORY[0x21CEE4B10](v72, v149);
      sub_21AEE2784();

      v74 = sub_21AEE2460();
      sub_21AECFFFC(v74, v75, v76);
      sub_21AEE2064();

      *(v63 + 14) = v73;
      sub_21AEE262C(&dword_21AE94000, "<requestID: %s> Returning ranked suggestions: %s", v155);
      sub_21AEE2B18();
      sub_21AEE2200();
      sub_21AEE23C8();
      swift_unknownObjectRelease();
    }

    else
    {
      v107 = *(v0 + 1088);
      v108 = *(v0 + 1056);
      swift_unknownObjectRelease();

      v58(v62, v107);
      v109 = sub_21AEC7734();
      v59(v109);
    }

    v110 = *(v0 + 1416);
    v111 = *(v0 + 1408);
    v112 = *(v0 + 1400);
    v113 = *(v0 + 1392);
    v114 = *(v0 + 1384);
    v115 = *(v0 + 1376);
    v116 = *(v0 + 1368);
    v117 = *(v0 + 1360);
    v118 = *(v0 + 1352);
    v119 = *(v0 + 1336);
    v137 = *(v0 + 1328);
    v138 = *(v0 + 1320);
    v139 = *(v0 + 1312);
    v140 = *(v0 + 1304);
    v141 = *(v0 + 1296);
    v142 = *(v0 + 1288);
    v143 = *(v0 + 1280);
    v144 = *(v0 + 1272);
    v145 = *(v0 + 1256);
    v147 = *(v0 + 1248);
    v148 = *(v0 + 1240);
    v150 = *(v0 + 1208);
    v153 = *(v0 + 1200);
    v156 = *(v0 + 1192);
    v160 = *(v0 + 1168);
    v164 = *(v0 + 1160);
    v168 = *(v0 + 1144);
    v172 = *(v0 + 1120);

    sub_21AEE24D4();
    sub_21AEE29A8();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 1840) = *(v0 + 1856);
  v77 = *(v0 + 1832);
  v78 = *(v0 + 1824);
  sub_21AEC76A0();
  v79 = sub_21AF0990C();
  sub_21AEE3058();
  v80 = *(v0 + 1832);
  v81 = *(v0 + 1824);
  if (v79)
  {
    sub_21AEE2670();
    v163 = v82;
    v158 = *(v0 + 1440);
    sub_21AEE2614();
    v83 = *(v0 + 1368);
    v84 = *(v0 + 1288);
    sub_21AEE1CE8();
    v85 = *(v0 + 1056);
    v87 = v81 + v48 * v86;
    v88 = *(v0 + 1048);
    sub_21AEE15E0((v87 + 32), v0 + 616);
    sub_21AEE226C();
    sub_21AF0996C();
    sub_21AE9641C((v0 + 616), v0 + 576);
    v78(v83, v13, v85);
    v163(v84, v88, v21);
    sub_21AEE3090();
    v89 = sub_21AF096AC();
    v90 = sub_21AF09AAC();
    sub_21AEE28D0(v90);
    sub_21AEE1D64();
    if (v91)
    {
      v159 = *(v0 + 1176);
      v152 = *(v0 + 1088);
      v171 = v89;
      v92 = *(v0 + 1080);
      sub_21AEE2F08();
      sub_21AEE25F4();
      sub_21AEE2234();
      v93 = sub_21AEE1AC8(4.8152e-34);
      v94(v93);
      v95 = sub_21AEE20F8();
      v13(v95, v152);
      v96 = sub_21AEE2854();
      v81(v96);
      v97 = sub_21AEE2B0C();
      sub_21AECFFFC(v97, v98, v99);
      sub_21AEE2884();
      sub_21AEE1D2C();
      v100 = *(v0 + 400);
      v101 = *(v0 + 408);
      sub_21AEAF9B0((v0 + 376), v100);
      sub_21AEE1A54();
      v102(v100);
      sub_21AEE2E98();
      sub_21AEE2478();
      v103 = sub_21AEE24C8();
      sub_21AECFFFC(v103, v104, v105);
      sub_21AEE2884();
      sub_21AEE1DAC();

      sub_21AF0992C();
      sub_21AEE2064();

      *(v83 + 24) = v101;
      sub_21AEE2444(&dword_21AE94000, v106, v88, "<requestID: %s> Using post ranking selector %s with %ld candidates");
      sub_21AEE2930();
      sub_21AEE20A4();
      sub_21AEE2250();
    }

    else
    {
      sub_21AEE240C();
      v122 = sub_21AEE24BC();
      (v13)(v122);
      v123 = sub_21AEE2034();
      v81(v123);
    }

    v124 = *(v0 + 600);
    v125 = *(v0 + 608);
    v126 = *(sub_21AEE1B50((v0 + 576)) + 32);
    sub_21AEE21F4();
    v175 = v127 + *v127;
    v129 = *(v128 + 4);
    v130 = swift_task_alloc();
    v131 = sub_21AEE2E14(v130);
    *v131 = v132;
    sub_21AEE180C();
    v133 = *(v0 + 1816);
    sub_21AEE1AFC(*(v0 + 1048));
    sub_21AEE29A8();

    __asm { BRAA            X4, X16 }
  }

  sub_21AEE221C();
  result = sub_21AF09C7C();
  __break(1u);
  return result;
}