uint64_t sub_100290980@<X0>(uint64_t a1@<X1>, void (*a2)(char *, char *, uint64_t)@<X3>, _OWORD *a3@<X4>, uint64_t a4@<X8>)
{
  v96 = a3;
  v97 = a1;
  v94 = a2;
  v100 = a4;
  v4 = type metadata accessor for URL();
  v93 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimeZone();
  v90 = *(v7 - 8);
  v91 = v7;
  __chkstk_darwin(v7);
  v89 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&unk_100CB2CF0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v89 - v13;
  v14 = type metadata accessor for Location();
  v98 = *(v14 - 8);
  v99 = v14;
  __chkstk_darwin(v14);
  v95 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DetailCondition();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v89 - v21;
  v23 = type metadata accessor for LocationComponentAction(0);
  __chkstk_darwin(v23);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3C70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = type metadata accessor for WeatherMapOverlayKind();
      (*(*(v38 - 8) + 8))(v25, v38);
      goto LABEL_18;
    case 2u:
      v39 = v25[*(sub_10022C350(&qword_100CA6690) + 48)];
      v40 = v17;
      v41 = *(v17 + 32);
      v41(v22, v25, v16);
      v42 = v39 == 1;
      v43 = v94;
      if (v42)
      {
        v44 = type metadata accessor for Date();
        if (sub_100024D10(v43, 1, v44) == 1)
        {
          (*(v40 + 8))(v22, v16);
          goto LABEL_18;
        }
      }

      (*(v40 + 16))(v20, v22, v16);
      (*(v98 + 16))(v95, v97, v99);
      sub_100095588();
      v74 = type metadata accessor for Date();
      if (sub_100024D10(v12, 1, v74) == 1)
      {
        (*(v40 + 8))(v22, v16);
        sub_1000180EC(v12, &unk_100CB2CF0);
        v75 = 1;
        v76 = v96;
        v77 = v92;
      }

      else
      {
        v94 = v41;
        v80 = v89;
        Location.timeZone.getter();
        v81 = v40;
        v77 = v92;
        Date.startOfDay(timeZone:)();
        v82 = v80;
        v41 = v94;
        (*(v90 + 8))(v82, v91);
        (*(v81 + 8))(v22, v16);
        (*(*(v74 - 8) + 8))(v12, v74);
        v75 = 0;
        v76 = v96;
      }

      sub_10001B350(v77, v75, 1, v74);
      v83 = type metadata accessor for ConditionDetailViewState();
      v84 = v83[8];
      v85 = type metadata accessor for DetailChartSelection();
      v86 = v100;
      sub_10001B350(v100 + v84, 1, 1, v85);
      v41(v86, v20, v16);
      (*(v98 + 32))(v86 + v83[5], v95, v99);
      sub_100051BBC();
      v87 = v86 + v83[7];
      v88 = v76[1];
      *v87 = *v76;
      *(v87 + 16) = v88;
      *(v87 + 32) = *(v76 + 32);
      *(v86 + v83[9]) = 0;
      v30 = type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      v31 = v86;
      goto LABEL_21;
    case 3u:
      v32 = *v25;
      v33 = v100;
      (*(v98 + 16))(v100, v97, v99);
      v34 = type metadata accessor for AirQualityDetailViewState();
      *(v33 + *(v34 + 20)) = v32;
      v35 = v33 + *(v34 + 24);
      v36 = v96;
      v37 = v96[1];
      *v35 = *v96;
      *(v35 + 16) = v37;
      *(v35 + 32) = *(v36 + 32);
      v30 = type metadata accessor for LocationPreviewModalViewState(0);
      goto LABEL_13;
    case 4u:
      v49 = *v25;
      v50 = *(sub_10022C350(&qword_100CA6688) + 48);
      v51 = v98;
      v53 = v99;
      v52 = v100;
      (*(v98 + 16))(v100, v97, v99);
      v54 = type metadata accessor for AveragesDetailViewState();
      v55 = v54[6];
      v56 = type metadata accessor for DetailHeroChartLollipopPosition(0);
      sub_10001B350(v52 + v55, 1, 1, v56);
      *(v52 + v54[5]) = v49;
      v57 = v52 + v54[7];
      v58 = v96;
      v59 = v96[1];
      *v57 = *v96;
      *(v57 + 16) = v59;
      *(v57 + 32) = *(v58 + 32);
      v60 = type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v52, 0, 1, v60);
      return (*(v51 + 8))(&v25[v50], v53);
    case 5u:
      v33 = v100;
      (*(v98 + 16))(v100, v97, v99);
      v62 = v33 + *(type metadata accessor for NextHourPrecipitationDetailViewState() + 20);
      v63 = v96;
      v64 = v96[1];
      *v62 = *v96;
      *(v62 + 16) = v64;
      *(v62 + 32) = *(v63 + 32);
      v30 = type metadata accessor for LocationPreviewModalViewState(0);
      goto LABEL_13;
    case 6u:
      goto LABEL_18;
    case 7u:
      v33 = v100;
      (*(v98 + 16))(v100, v97, v99);
      v45 = type metadata accessor for SunriseSunsetDetailViewState();
      v46 = v33 + *(v45 + 20);
      v47 = v96;
      v48 = v96[1];
      *v46 = *v96;
      *(v46 + 16) = v48;
      *(v46 + 32) = *(v47 + 32);
      *(v33 + *(v45 + 24)) = 0;
      v30 = type metadata accessor for LocationPreviewModalViewState(0);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      v31 = v33;
      goto LABEL_21;
    case 8u:
      v65 = v100;
      (*(v98 + 16))(v100, v97, v99);
      v66 = type metadata accessor for MoonDetailViewState();
      v67 = v66[5];
      v68 = type metadata accessor for MoonDetailSelectedDate();
      sub_10001B350(v65 + v67, 1, 1, v68);
      v69 = v66[6];
      v70 = type metadata accessor for Date();
      sub_10001B350(v65 + v69, 1, 1, v70);
      v71 = v65 + v66[7];
      v72 = v96;
      v73 = v96[1];
      *v71 = *v96;
      *(v71 + 16) = v73;
      *(v71 + 32) = *(v72 + 32);
      *(v65 + v66[8]) = 2;
      v30 = type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      v31 = v65;
      goto LABEL_21;
    default:
      v26 = v25[*(sub_10022C350(&qword_100CA6680) + 48)];
      v27 = v93;
      v28 = *(v93 + 32);
      v28(v6, v25, v4);
      if (v26 == 1)
      {
        v29 = v100;
        v28(v100, v6, v4);
        v30 = type metadata accessor for LocationPreviewModalViewState(0);
        swift_storeEnumTagMultiPayload();
        v31 = v29;
LABEL_21:
        v79 = 0;
        v78 = v30;
      }

      else
      {
        (*(v27 + 8))(v6, v4);
LABEL_18:
        v78 = type metadata accessor for LocationPreviewModalViewState(0);
        v31 = v100;
        v79 = 1;
      }

      return sub_10001B350(v31, v79, 1, v78);
  }
}

uint64_t sub_100291354(uint64_t a1)
{
  v2 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_100021CEC();
  return String.init<A>(describing:)();
}

uint64_t sub_100291410()
{
  type metadata accessor for Location();
  sub_10029C394(&qword_100CA6678, &type metadata accessor for Location);
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10029147C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, _OWORD *a5)
{
  v1072 = a5;
  v1022 = a4;
  v1076 = a3;
  v1074 = a2;
  v1079 = a1;
  v940 = type metadata accessor for URL();
  v938 = *(v940 - 8);
  __chkstk_darwin(v940);
  v939 = &v846 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1046 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v1046);
  v1051 = &v846 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA6698);
  __chkstk_darwin(v7 - 8);
  v957 = &v846 - v8;
  v1048 = type metadata accessor for DisplayMetrics();
  v9 = __chkstk_darwin(v1048);
  v962 = &v846 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v1044 = &v846 - v11;
  v1057 = type metadata accessor for WeatherMapPresentationState(0);
  v12 = __chkstk_darwin(v1057);
  v961 = &v846 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v1043 = &v846 - v14;
  v15 = sub_10022C350(&qword_100CA65F0);
  v16 = __chkstk_darwin(v15 - 8);
  v960 = &v846 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v1068 = &v846 - v18;
  v19 = sub_10022C350(&qword_100CA65F8);
  v20 = __chkstk_darwin(v19 - 8);
  v959 = &v846 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v1067 = &v846 - v22;
  v23 = sub_10022C350(&qword_100CA6600);
  v24 = __chkstk_darwin(v23 - 8);
  v858 = &v846 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v1047 = &v846 - v27;
  __chkstk_darwin(v26);
  v1066 = &v846 - v28;
  v29 = sub_10022C350(&qword_100CA6608);
  v30 = __chkstk_darwin(v29 - 8);
  v956 = &v846 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v1065 = &v846 - v32;
  v33 = type metadata accessor for LocationPreviewViewState(0);
  __chkstk_darwin(v33 - 8);
  v846 = &v846 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CA5CF8);
  v36 = __chkstk_darwin(v35 - 8);
  v953 = &v846 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v954 = &v846 - v39;
  v40 = __chkstk_darwin(v38);
  v932 = &v846 - v41;
  __chkstk_darwin(v40);
  v1069 = &v846 - v42;
  v43 = sub_10022C350(qword_100CA66A0);
  __chkstk_darwin(v43 - 8);
  v931 = &v846 - v44;
  v1084 = type metadata accessor for ViewState(0);
  v45 = __chkstk_darwin(v1084);
  v947 = &v846 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  *(&v856 + 1) = &v846 - v48;
  v49 = __chkstk_darwin(v47);
  v1056 = &v846 - v50;
  v51 = __chkstk_darwin(v49);
  v1070 = (&v846 - v52);
  v53 = __chkstk_darwin(v51);
  v948 = &v846 - v54;
  v55 = __chkstk_darwin(v53);
  v946 = &v846 - v56;
  v57 = __chkstk_darwin(v55);
  v945 = &v846 - v58;
  v59 = __chkstk_darwin(v57);
  v1041 = &v846 - v60;
  __chkstk_darwin(v59);
  v1040 = &v846 - v61;
  v1078 = type metadata accessor for TimeState();
  v62 = __chkstk_darwin(v1078);
  v1039 = &v846 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v944 = &v846 - v65;
  v66 = __chkstk_darwin(v64);
  v1055 = &v846 - v67;
  v68 = __chkstk_darwin(v66);
  v1042 = &v846 - v69;
  v70 = __chkstk_darwin(v68);
  v1038 = &v846 - v71;
  v72 = __chkstk_darwin(v70);
  v1037 = &v846 - v73;
  v74 = __chkstk_darwin(v72);
  v1035 = &v846 - v75;
  __chkstk_darwin(v74);
  v1034 = &v846 - v76;
  v1077 = type metadata accessor for NotificationsOptInState();
  v77 = __chkstk_darwin(v1077);
  v1033 = &v846 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __chkstk_darwin(v77);
  v942 = &v846 - v80;
  v81 = __chkstk_darwin(v79);
  v1054 = &v846 - v82;
  v83 = __chkstk_darwin(v81);
  v1036 = &v846 - v84;
  v85 = __chkstk_darwin(v83);
  v1032 = &v846 - v86;
  v87 = __chkstk_darwin(v85);
  v1031 = &v846 - v88;
  v89 = __chkstk_darwin(v87);
  v1029 = &v846 - v90;
  __chkstk_darwin(v89);
  v1028 = &v846 - v91;
  v1080 = type metadata accessor for NotificationsState();
  v92 = __chkstk_darwin(v1080);
  v1027 = &v846 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __chkstk_darwin(v92);
  v941 = &v846 - v95;
  v96 = __chkstk_darwin(v94);
  v1053 = &v846 - v97;
  v98 = __chkstk_darwin(v96);
  v1030 = &v846 - v99;
  v100 = __chkstk_darwin(v98);
  v1026 = &v846 - v101;
  v102 = __chkstk_darwin(v100);
  v1025 = &v846 - v103;
  v104 = __chkstk_darwin(v102);
  v1023 = &v846 - v105;
  __chkstk_darwin(v104);
  v1021 = &v846 - v106;
  v1081 = type metadata accessor for LocationsState();
  v107 = __chkstk_darwin(v1081);
  v1020 = &v846 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __chkstk_darwin(v107);
  v937 = &v846 - v110;
  v111 = __chkstk_darwin(v109);
  v1052 = &v846 - v112;
  v113 = __chkstk_darwin(v111);
  v1024 = &v846 - v114;
  v115 = __chkstk_darwin(v113);
  v1019 = &v846 - v116;
  v117 = __chkstk_darwin(v115);
  v1018 = &v846 - v118;
  v119 = __chkstk_darwin(v117);
  v1016 = &v846 - v120;
  __chkstk_darwin(v119);
  v1015 = &v846 - v121;
  v1082 = type metadata accessor for EnvironmentState();
  v122 = __chkstk_darwin(v1082);
  v1014 = &v846 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __chkstk_darwin(v122);
  v935 = &v846 - v125;
  v126 = __chkstk_darwin(v124);
  v1050 = &v846 - v127;
  v128 = __chkstk_darwin(v126);
  v1017 = &v846 - v129;
  v130 = __chkstk_darwin(v128);
  v1013 = &v846 - v131;
  v132 = __chkstk_darwin(v130);
  v1012 = &v846 - v133;
  v134 = __chkstk_darwin(v132);
  v1010 = &v846 - v135;
  __chkstk_darwin(v134);
  v1009 = &v846 - v136;
  v1083 = type metadata accessor for AppConfigurationState();
  v137 = __chkstk_darwin(v1083);
  v1008 = &v846 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __chkstk_darwin(v137);
  v934 = &v846 - v140;
  v141 = __chkstk_darwin(v139);
  v1049 = &v846 - v142;
  v143 = __chkstk_darwin(v141);
  v1011 = &v846 - v144;
  v145 = __chkstk_darwin(v143);
  v1007 = &v846 - v146;
  v147 = __chkstk_darwin(v145);
  v1006 = &v846 - v148;
  v149 = __chkstk_darwin(v147);
  v1005 = &v846 - v150;
  __chkstk_darwin(v149);
  v1004 = &v846 - v151;
  v1075 = type metadata accessor for ModalViewState(0);
  v152 = __chkstk_darwin(v1075);
  v918 = &v846 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __chkstk_darwin(v152);
  v1002 = &v846 - v155;
  v156 = __chkstk_darwin(v154);
  v855 = &v846 - v157;
  v158 = __chkstk_darwin(v156);
  v929 = &v846 - v159;
  v160 = __chkstk_darwin(v158);
  v952 = &v846 - v161;
  v162 = __chkstk_darwin(v160);
  v958 = &v846 - v163;
  v164 = __chkstk_darwin(v162);
  v933 = &v846 - v165;
  v166 = __chkstk_darwin(v164);
  v919 = &v846 - v167;
  v168 = __chkstk_darwin(v166);
  v1003 = &v846 - v169;
  v170 = __chkstk_darwin(v168);
  v910 = &v846 - v171;
  v172 = __chkstk_darwin(v170);
  v915 = &v846 - v173;
  v174 = __chkstk_darwin(v172);
  v928 = &v846 - v175;
  v176 = __chkstk_darwin(v174);
  v914 = &v846 - v177;
  v178 = __chkstk_darwin(v176);
  v1001 = &v846 - v179;
  v180 = __chkstk_darwin(v178);
  v911 = &v846 - v181;
  v182 = __chkstk_darwin(v180);
  v1000 = &v846 - v183;
  v184 = __chkstk_darwin(v182);
  v1073 = &v846 - v185;
  v186 = __chkstk_darwin(v184);
  v908 = &v846 - v187;
  __chkstk_darwin(v186);
  v999 = &v846 - v188;
  v189 = sub_10022C350(&qword_100CA65E8);
  v190 = __chkstk_darwin(v189 - 8);
  v904 = &v846 - ((v191 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = __chkstk_darwin(v190);
  v903 = (&v846 - v193);
  v194 = __chkstk_darwin(v192);
  v853 = &v846 - v195;
  v196 = __chkstk_darwin(v194);
  v852 = &v846 - v197;
  v198 = __chkstk_darwin(v196);
  v950 = &v846 - v199;
  v200 = __chkstk_darwin(v198);
  v1045 = &v846 - v201;
  v202 = __chkstk_darwin(v200);
  v906 = &v846 - v203;
  v204 = __chkstk_darwin(v202);
  v857 = &v846 - v205;
  v206 = __chkstk_darwin(v204);
  v902 = &v846 - v207;
  v208 = __chkstk_darwin(v206);
  v898 = &v846 - v209;
  v210 = __chkstk_darwin(v208);
  v901 = &v846 - v211;
  v212 = __chkstk_darwin(v210);
  v897 = &v846 - v213;
  v214 = __chkstk_darwin(v212);
  v896 = &v846 - v215;
  v216 = __chkstk_darwin(v214);
  v892 = &v846 - v217;
  v218 = __chkstk_darwin(v216);
  v895 = &v846 - v219;
  __chkstk_darwin(v218);
  v891 = &v846 - v220;
  v221 = sub_10022C350(&qword_100CA6610);
  v222 = __chkstk_darwin(v221 - 8);
  v925 = &v846 - ((v223 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = __chkstk_darwin(v222);
  v997 = &v846 - v225;
  v226 = __chkstk_darwin(v224);
  *&v856 = &v846 - v227;
  v228 = __chkstk_darwin(v226);
  v922 = &v846 - v229;
  v230 = __chkstk_darwin(v228);
  v955 = &v846 - v231;
  v232 = __chkstk_darwin(v230);
  v1064 = (&v846 - v233);
  v234 = __chkstk_darwin(v232);
  v926 = &v846 - v235;
  v236 = __chkstk_darwin(v234);
  v998 = &v846 - v237;
  v238 = __chkstk_darwin(v236);
  v924 = &v846 - v239;
  v240 = __chkstk_darwin(v238);
  v996 = &v846 - v241;
  v242 = __chkstk_darwin(v240);
  v923 = &v846 - v243;
  v244 = __chkstk_darwin(v242);
  v995 = &v846 - v245;
  v246 = __chkstk_darwin(v244);
  v921 = &v846 - v247;
  v248 = __chkstk_darwin(v246);
  v994 = &v846 - v249;
  v250 = __chkstk_darwin(v248);
  v920 = &v846 - v251;
  __chkstk_darwin(v250);
  v993 = &v846 - v252;
  v253 = sub_10022C350(&qword_100CA6618);
  v254 = __chkstk_darwin(v253 - 8);
  v916 = &v846 - ((v255 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = __chkstk_darwin(v254);
  v991 = &v846 - v257;
  v258 = __chkstk_darwin(v256);
  v854 = &v846 - v259;
  v260 = __chkstk_darwin(v258);
  v909 = &v846 - v261;
  v262 = __chkstk_darwin(v260);
  v951 = &v846 - v263;
  v264 = __chkstk_darwin(v262);
  v1063 = &v846 - v265;
  v266 = __chkstk_darwin(v264);
  v917 = &v846 - v267;
  v268 = __chkstk_darwin(v266);
  v992 = &v846 - v269;
  v270 = __chkstk_darwin(v268);
  v913 = &v846 - v271;
  v272 = __chkstk_darwin(v270);
  v990 = &v846 - v273;
  v274 = __chkstk_darwin(v272);
  v912 = &v846 - v275;
  v276 = __chkstk_darwin(v274);
  v989 = &v846 - v277;
  v278 = __chkstk_darwin(v276);
  v907 = &v846 - v279;
  v280 = __chkstk_darwin(v278);
  v988 = &v846 - v281;
  v282 = __chkstk_darwin(v280);
  v905 = &v846 - v283;
  __chkstk_darwin(v282);
  v987 = &v846 - v284;
  v285 = sub_10022C350(&qword_100CA6620);
  v286 = __chkstk_darwin(v285 - 8);
  v899 = &v846 - ((v287 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = __chkstk_darwin(v286);
  v985 = &v846 - v289;
  v290 = __chkstk_darwin(v288);
  v851 = &v846 - v291;
  v292 = __chkstk_darwin(v290);
  v890 = &v846 - v293;
  v294 = __chkstk_darwin(v292);
  v949 = &v846 - v295;
  v296 = __chkstk_darwin(v294);
  v1062 = &v846 - v297;
  v298 = __chkstk_darwin(v296);
  v900 = &v846 - v299;
  v300 = __chkstk_darwin(v298);
  v986 = &v846 - v301;
  v302 = __chkstk_darwin(v300);
  v894 = &v846 - v303;
  v304 = __chkstk_darwin(v302);
  v984 = &v846 - v305;
  v306 = __chkstk_darwin(v304);
  v893 = &v846 - v307;
  v308 = __chkstk_darwin(v306);
  v983 = &v846 - v309;
  v310 = __chkstk_darwin(v308);
  v889 = &v846 - v311;
  v312 = __chkstk_darwin(v310);
  v982 = &v846 - v313;
  v314 = __chkstk_darwin(v312);
  v888 = &v846 - v315;
  __chkstk_darwin(v314);
  v981 = &v846 - v316;
  v317 = sub_10022C350(&qword_100CA6628);
  v318 = __chkstk_darwin(v317 - 8);
  v886 = &v846 - ((v319 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = __chkstk_darwin(v318);
  v979 = &v846 - v321;
  v322 = __chkstk_darwin(v320);
  v850 = &v846 - v323;
  v324 = __chkstk_darwin(v322);
  v883 = &v846 - v325;
  v326 = __chkstk_darwin(v324);
  v943 = &v846 - v327;
  v328 = __chkstk_darwin(v326);
  v1061 = &v846 - v329;
  v330 = __chkstk_darwin(v328);
  v887 = &v846 - v331;
  v332 = __chkstk_darwin(v330);
  v980 = &v846 - v333;
  v334 = __chkstk_darwin(v332);
  v885 = &v846 - v335;
  v336 = __chkstk_darwin(v334);
  v978 = &v846 - v337;
  v338 = __chkstk_darwin(v336);
  v884 = &v846 - v339;
  v340 = __chkstk_darwin(v338);
  v977 = &v846 - v341;
  v342 = __chkstk_darwin(v340);
  v882 = &v846 - v343;
  v344 = __chkstk_darwin(v342);
  v976 = &v846 - v345;
  v346 = __chkstk_darwin(v344);
  v881 = &v846 - v347;
  __chkstk_darwin(v346);
  v975 = &v846 - v348;
  v349 = sub_10022C350(&qword_100CA6630);
  v350 = __chkstk_darwin(v349 - 8);
  v879 = &v846 - ((v351 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = __chkstk_darwin(v350);
  v973 = &v846 - v353;
  v354 = __chkstk_darwin(v352);
  v849 = &v846 - v355;
  v356 = __chkstk_darwin(v354);
  v876 = &v846 - v357;
  v358 = __chkstk_darwin(v356);
  v936 = &v846 - v359;
  v360 = __chkstk_darwin(v358);
  v1060 = &v846 - v361;
  v362 = __chkstk_darwin(v360);
  v880 = &v846 - v363;
  v364 = __chkstk_darwin(v362);
  v974 = &v846 - v365;
  v366 = __chkstk_darwin(v364);
  v878 = &v846 - v367;
  v368 = __chkstk_darwin(v366);
  v972 = &v846 - v369;
  v370 = __chkstk_darwin(v368);
  v877 = &v846 - v371;
  v372 = __chkstk_darwin(v370);
  v971 = &v846 - v373;
  v374 = __chkstk_darwin(v372);
  v875 = &v846 - v375;
  v376 = __chkstk_darwin(v374);
  v970 = &v846 - v377;
  v378 = __chkstk_darwin(v376);
  v874 = &v846 - v379;
  __chkstk_darwin(v378);
  v969 = &v846 - v380;
  v381 = sub_10022C350(&qword_100CA6638);
  v382 = __chkstk_darwin(v381 - 8);
  v872 = &v846 - ((v383 + 15) & 0xFFFFFFFFFFFFFFF0);
  v384 = __chkstk_darwin(v382);
  v868 = &v846 - v385;
  v386 = __chkstk_darwin(v384);
  v848 = &v846 - v387;
  v388 = __chkstk_darwin(v386);
  v867 = &v846 - v389;
  v390 = __chkstk_darwin(v388);
  v930 = &v846 - v391;
  v392 = __chkstk_darwin(v390);
  v1059 = &v846 - v393;
  v394 = __chkstk_darwin(v392);
  v873 = &v846 - v395;
  v396 = __chkstk_darwin(v394);
  v869 = &v846 - v397;
  v398 = __chkstk_darwin(v396);
  v871 = &v846 - v399;
  v400 = __chkstk_darwin(v398);
  v968 = &v846 - v401;
  v402 = __chkstk_darwin(v400);
  v870 = &v846 - v403;
  v404 = __chkstk_darwin(v402);
  v967 = &v846 - v405;
  v406 = __chkstk_darwin(v404);
  v963 = &v846 - v407;
  v408 = __chkstk_darwin(v406);
  v966 = &v846 - v409;
  v410 = __chkstk_darwin(v408);
  v866 = &v846 - v411;
  __chkstk_darwin(v410);
  v865 = &v846 - v412;
  v413 = sub_10022C350(&qword_100CA6640);
  v414 = __chkstk_darwin(v413 - 8);
  v863 = &v846 - ((v415 + 15) & 0xFFFFFFFFFFFFFFF0);
  v416 = __chkstk_darwin(v414);
  v860 = &v846 - v417;
  v418 = __chkstk_darwin(v416);
  v847 = &v846 - v419;
  v420 = __chkstk_darwin(v418);
  v859 = &v846 - v421;
  v422 = __chkstk_darwin(v420);
  v927 = &v846 - v423;
  v424 = __chkstk_darwin(v422);
  v1058 = &v846 - v425;
  v426 = __chkstk_darwin(v424);
  v864 = &v846 - v427;
  v428 = __chkstk_darwin(v426);
  v965 = &v846 - v429;
  v430 = __chkstk_darwin(v428);
  v862 = &v846 - v431;
  v432 = __chkstk_darwin(v430);
  v964 = &v846 - v433;
  v434 = __chkstk_darwin(v432);
  v861 = &v846 - v435;
  v436 = __chkstk_darwin(v434);
  v438 = &v846 - v437;
  v439 = __chkstk_darwin(v436);
  v441 = &v846 - v440;
  v442 = __chkstk_darwin(v439);
  v444 = &v846 - v443;
  v445 = __chkstk_darwin(v442);
  v447 = &v846 - v446;
  __chkstk_darwin(v445);
  v449 = &v846 - v448;
  v450 = type metadata accessor for DetailCondition();
  v451 = *(v450 - 8);
  __chkstk_darwin(v450);
  v453 = &v846 - ((v452 + 15) & 0xFFFFFFFFFFFFFFF0);
  v454 = type metadata accessor for LocationComponentAction(0);
  __chkstk_darwin(v454);
  v456 = &v846 - ((v455 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3C70();
  v1076 = v456;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v510 = type metadata accessor for WeatherMapOverlayKind();
      v1041 = *(v510 - 1);
      (*(v1041 + 8))(v1076, v510);
      v511 = v1069;
      v1072 = v510;
      sub_10001B350(v1069, 1, 1, v510);
      sub_10001B350(v965, 1, 1, v1083);
      v512 = v1082;
      sub_10001B350(v869, 1, 1, v1082);
      v513 = v1081;
      sub_10001B350(v974, 1, 1, v1081);
      v514 = v1080;
      sub_10001B350(v980, 1, 1, v1080);
      v515 = v1077;
      sub_10001B350(v986, 1, 1, v1077);
      v516 = v1078;
      sub_10001B350(v992, 1, 1, v1078);
      sub_10001B350(v998, 1, 1, v1084);
      v517 = v932;
      v518 = v1079;
      sub_10029BE04(v1079, v1074, v1071, v932);
      sub_10029C3EC(v517, v511);
      v519 = v910;
      sub_1000A3C70();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100154038(v519, type metadata accessor for ModalViewState);
        v520 = 1;
        v521 = v857;
      }

      else
      {
        sub_1000D37D4();
        v521 = v857;
        sub_1000D37D4();
        v520 = 0;
      }

      v709 = type metadata accessor for ModalViewState.MapViewModal(0);
      sub_10001B350(v521, v520, 1, v709);
      v710 = v1075;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v521, 0, 1, v710);
      v711 = v919;
      sub_1000A3C70();
      v712 = v906;
      sub_100051BBC();
      if (sub_100024D10(v712, 1, v710) == 1)
      {
        sub_1000180EC(v712, &qword_100CA65E8);
      }

      else
      {
        sub_100154038(v711, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      v713 = v1083;
      sub_1000D37D4();
      v714 = *(v518 + 16);
      LODWORD(v1071) = *(v518 + 24);
      v715 = v864;
      sub_100051BBC();
      v716 = sub_100024D10(v715, 1, v713);
      v1074 = v714;
      if (v716 == 1)
      {
        sub_1000A3C70();
        v717 = sub_100024D10(v715, 1, v713);

        v493 = v717 == 1;
        v512 = v1082;
        v718 = v926;
        v719 = v880;
        if (!v493)
        {
          sub_1000180EC(v715, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000D37D4();

        v718 = v926;
        v719 = v880;
      }

      v720 = v873;
      sub_100051BBC();
      if (sub_100024D10(v720, 1, v512) == 1)
      {
        swift_beginAccess();
        sub_1000A3C70();
        v721 = sub_100024D10(v720, 1, v1082);
        v722 = v917;
        if (v721 != 1)
        {
          sub_1000180EC(v720, &qword_100CA6638);
        }
      }

      else
      {
        sub_1000D37D4();
        v722 = v917;
      }

      sub_100051BBC();
      if (sub_100024D10(v719, 1, v513) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v719, 1, v513) != 1)
        {
          sub_1000180EC(v719, &qword_100CA6630);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v723 = v887;
      sub_100051BBC();
      if (sub_100024D10(v723, 1, v514) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v723, 1, v514) != 1)
        {
          sub_1000180EC(v723, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v724 = v900;
      sub_100051BBC();
      if (sub_100024D10(v724, 1, v515) == 1)
      {
        sub_1000A3C70();
        v725 = sub_100024D10(v724, 1, v515);
        v726 = v948;
        if (v725 != 1)
        {
          sub_1000180EC(v724, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000D37D4();
        v726 = v948;
      }

      sub_100051BBC();
      if (sub_100024D10(v722, 1, v516) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v722, 1, v516) != 1)
        {
          sub_1000180EC(v722, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      v727 = v1084;
      if (sub_100024D10(v718, 1, v1084) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v718, 1, v727) != 1)
        {
          sub_1000180EC(v718, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v728 = v933;
      sub_1000D37D4();
      v730 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v729 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v731 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v732 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v733 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v735 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v734 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v736 = *(v518 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v1076 = type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v844) = v733;
      sub_10003E038(v1074, v1071, v1011, v1017, v1024, v1030, v1036, v1042, v726, v728, v730, v729, v731, v732, v844, v735, v734, v736, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      v738 = v737;
      sub_10001B350(v1058, 1, 1, v1083);
      sub_10001B350(v1059, 1, 1, v1082);
      sub_10001B350(v1060, 1, 1, v1081);
      sub_10001B350(v1061, 1, 1, v1080);
      sub_10001B350(v1062, 1, 1, v1077);
      sub_10001B350(v1063, 1, 1, v1078);
      v1079 = v738;
      v739 = v738 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_1000A3C70();
      sub_10001B350(v1065, 1, 1, v1046);
      v1074 = type metadata accessor for SearchViewState(0);
      sub_10001B350(v1066, 1, 1, v1074);
      sub_10001B350(v1067, 1, 1, v1048);
      v740 = v1084;
      sub_1000A3C70();
      if (*(v739 + *(v740 + 36) + 8) == 2)
      {
        v741 = 5;
      }

      else
      {
        v741 = 1;
      }

      LODWORD(v1071) = v741;
      sub_1000A3C70();
      v742 = v953;
      sub_100095588();
      v743 = v1072;
      v744 = sub_100024D10(v742, 1, v1072);
      v1042 = v739;
      if (v744 == 1)
      {
        v745 = v739 + *(v740 + 40) + *(v1057 + 24);
        v746 = v954;
        (*(v1041 + 16))(v954, v745, v743);
        v747 = sub_100024D10(v742, 1, v743);

        if (v747 != 1)
        {
          sub_1000180EC(v742, &qword_100CA5CF8);
        }
      }

      else
      {
        v746 = v954;
        (*(v1041 + 32))(v954, v742, v743);
      }

      sub_10001B350(v746, 0, 1, v743);
      v748 = sub_10022C350(&qword_100CA6660);
      v749 = v746;
      v750 = v957;
      sub_10001B350(v957, 1, 3, v748);
      v751 = type metadata accessor for WeatherMapTrackingState(0);
      sub_10001B350(v750, 0, 1, v751);
      v752 = v1068;
      v753 = v1044;
      v754 = v1043;
      sub_1000B0430(v1071, v1044, v749, v750, v1068);
      sub_1000180EC(v750, &qword_100CA6698);
      sub_1000180EC(v749, &qword_100CA5CF8);
      sub_100154038(v753, type metadata accessor for DisplayMetrics);
      sub_100154038(v754, type metadata accessor for WeatherMapPresentationState);
      sub_10001B350(v752, 0, 1, v1057);
      v755 = v1070;
      v756 = *v1070;
      v757 = v956;
      sub_100095588();
      v758 = v1046;
      v759 = sub_100024D10(v757, 1, v1046);
      v760 = v1048;
      if (v759 == 1)
      {
        v761 = v1084;
        sub_1000A3C70();
        v762 = sub_100024D10(v757, 1, v758);

        if (v762 != 1)
        {
          sub_1000180EC(v757, &qword_100CA6608);
        }
      }

      else
      {
        sub_1000D37D4();

        v761 = v1084;
      }

      v763 = *(v755 + v761[6]);
      v764 = [objc_opt_self() currentDevice];
      v765 = [v764 userInterfaceIdiom];

      if (v765 && *(v755 + v761[9] + 8) == 2)
      {
        v766 = 1;
      }

      else
      {
        v766 = *(v755 + v761[7]);
      }

      v767 = v858;
      sub_100095588();
      v768 = v1074;
      v769 = sub_100024D10(v767, 1, v1074);
      v770 = v1057;
      if (v769 == 1)
      {
        sub_100095588();
        v771 = sub_100024D10(v767, 1, v768);
        v772 = v959;
        if (v771 != 1)
        {
          sub_1000180EC(v767, &qword_100CA6600);
        }
      }

      else
      {
        v773 = v1047;
        sub_1000D37D4();
        sub_10001B350(v773, 0, 1, v768);
        v772 = v959;
      }

      sub_100095588();
      if (sub_100024D10(v772, 1, v760) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v772, 1, v760) != 1)
        {
          sub_1000180EC(v772, &qword_100CA65F8);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v774 = v960;
      sub_100095588();
      if (sub_100024D10(v774, 1, v770) == 1)
      {
        v775 = v1070;
        sub_1000A3C70();
        if (sub_100024D10(v774, 1, v770) != 1)
        {
          sub_1000180EC(v774, &qword_100CA65F0);
        }
      }

      else
      {
        sub_1000D37D4();
        v775 = v1070;
      }

      v776 = *(v775 + v761[11]);
      v777 = v1064;
      *v1064 = v756;
      sub_1000D37D4();
      *(v777 + v761[6]) = v763;
      *(v777 + v761[7]) = v766;
      sub_100051BBC();
      sub_1000D37D4();
      sub_1000D37D4();
      *(v777 + v761[11]) = v776;
      sub_1000180EC(v1068, &qword_100CA65F0);
      sub_1000180EC(v1067, &qword_100CA65F8);
      sub_1000180EC(v1066, &qword_100CA6600);
      sub_1000180EC(v1065, &qword_100CA6608);
      sub_100154038(v775, type metadata accessor for ViewState);
      sub_10001B350(v777, 0, 1, v761);
      v778 = v1075;
      sub_10001B350(v1045, 1, 1, v1075);
      v779 = v1079;
      v780 = v952;
      sub_1000A3C70();
      v781 = v950;
      sub_100095588();
      if (sub_100024D10(v781, 1, v778) == 1)
      {
        sub_1000180EC(v781, &qword_100CA65E8);
      }

      else
      {
        sub_100154038(v780, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      v782 = v1083;
      v783 = v951;
      v784 = v949;
      v785 = v936;
      v786 = v930;
      v787 = v927;
      sub_1000D37D4();
      v788 = *(v779 + 16);
      LODWORD(v1083) = *(v779 + 24);
      sub_100095588();
      v789 = sub_100024D10(v787, 1, v782);
      v1084 = v788;
      if (v789 == 1)
      {
        sub_1000A3C70();
        v790 = sub_100024D10(v787, 1, v782);

        v791 = v1082;
        if (v790 != 1)
        {
          sub_1000180EC(v787, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000D37D4();

        v791 = v1082;
      }

      sub_100095588();
      if (sub_100024D10(v786, 1, v791) == 1)
      {
        swift_beginAccess();
        sub_1000A3C70();
        v792 = sub_100024D10(v786, 1, v791);
        v793 = v955;
        if (v792 != 1)
        {
          sub_1000180EC(v786, &qword_100CA6638);
        }
      }

      else
      {
        sub_1000D37D4();
        v793 = v955;
      }

      sub_100095588();
      v794 = v1081;
      if (sub_100024D10(v785, 1, v1081) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v785, 1, v794) != 1)
        {
          sub_1000180EC(v785, &qword_100CA6630);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v795 = v943;
      sub_100095588();
      v796 = v1080;
      if (sub_100024D10(v795, 1, v1080) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v795, 1, v796) != 1)
        {
          sub_1000180EC(v795, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100095588();
      v797 = v1077;
      if (sub_100024D10(v784, 1, v1077) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v784, 1, v797) != 1)
        {
          sub_1000180EC(v784, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100095588();
      v798 = v1078;
      if (sub_100024D10(v783, 1, v1078) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v783, 1, v798) != 1)
        {
          sub_1000180EC(v783, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100095588();
      if (sub_100024D10(v793, 1, v761) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v793, 1, v761) != 1)
        {
          sub_1000180EC(v793, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v799 = v1073;
      sub_1000D37D4();
      v800 = (v779 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v801 = v779;
      v803 = *(v779 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v802 = v800[1];
      v804 = v800[2];
      v805 = v800[3];
      v806 = *(v801 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v807 = *(v801 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v808 = *(v801 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v809 = *(v801 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      swift_allocObject();
      LOBYTE(v845) = v806;
      sub_10003E038(v1084, v1083, v1049, v1050, v1052, v1053, v1054, v1055, v1056, v799, v803, v802, v804, v805, v845, v807, v808, v809, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      v463 = v810;

      sub_1000180EC(v1045, &qword_100CA65E8);
      sub_1000180EC(v1064, &qword_100CA6610);
      sub_1000180EC(v1063, &qword_100CA6618);
      sub_1000180EC(v1062, &qword_100CA6620);
      sub_1000180EC(v1061, &qword_100CA6628);
      sub_1000180EC(v1060, &qword_100CA6630);
      sub_1000180EC(v1059, &qword_100CA6638);
      sub_1000180EC(v1058, &qword_100CA6640);
      sub_1000180EC(v1069, &qword_100CA5CF8);
      return v463;
    case 2u:
      v491 = sub_10022C350(&qword_100CA6690);
      v492 = v1076[*(v491 + 48)];
      (*(v451 + 32))(v453);
      v493 = v492 == 1;
      v494 = v1079;
      v495 = v1022;
      if (v493 && (v496 = type metadata accessor for Date(), sub_100024D10(v495, 1, v496) == 1))
      {
        (*(v451 + 8))(v453, v450);
        return 0;
      }

      else
      {
        v463 = sub_100299880(v494, v453, v1074, v495, v1072);
        (*(v451 + 8))(v453, v450);
      }

      return v463;
    case 3u:
      return sub_10029AC40(v1079, v1074, *v1076, v1072);
    case 4u:
      v473 = *v1076;
      sub_10001B350(v964, 1, 1, v1083);
      sub_10001B350(v968, 1, 1, v1082);
      sub_10001B350(v972, 1, 1, v1081);
      v474 = v1080;
      sub_10001B350(v978, 1, 1, v1080);
      v475 = v1077;
      sub_10001B350(v984, 1, 1, v1077);
      v476 = v1078;
      sub_10001B350(v990, 1, 1, v1078);
      sub_10001B350(v996, 1, 1, v1084);
      v477 = type metadata accessor for Location();
      v1071 = *(v477 - 8);
      v478 = v1071[2];
      v479 = v898;
      v480 = v1074;
      v1074 = v477;
      v478(v898, v480);
      v481 = type metadata accessor for AveragesDetailViewState();
      v482 = v481[6];
      v483 = type metadata accessor for DetailHeroChartLollipopPosition(0);
      sub_10001B350(v479 + v482, 1, 1, v483);
      *(v479 + v481[5]) = v473;
      v484 = v479 + v481[7];
      v485 = v1072;
      v486 = v1072[1];
      *v484 = *v1072;
      *(v484 + 16) = v486;
      *(v484 + 32) = *(v485 + 32);
      type metadata accessor for ModalViewState.LocationDetailModal(0);
      swift_storeEnumTagMultiPayload();
      v487 = v1075;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v479, 0, 1, v487);
      v488 = v1079;
      v489 = v915;
      sub_1000A3C70();
      v490 = v902;
      sub_100051BBC();
      if (sub_100024D10(v490, 1, v487) == 1)
      {
        sub_1000180EC(v490, &qword_100CA65E8);
      }

      else
      {
        sub_100154038(v489, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      v558 = v885;
      v559 = v871;
      sub_1000D37D4();
      v560 = *(v488 + 16);
      LODWORD(v1072) = *(v488 + 24);
      v561 = v862;
      sub_100051BBC();
      v562 = v1083;
      v563 = sub_100024D10(v561, 1, v1083);
      v1075 = v560;
      if (v563 == 1)
      {
        sub_1000A3C70();
        v564 = sub_100024D10(v561, 1, v562);

        v565 = v1082;
        v566 = v561;
        v567 = v894;
        if (v564 != 1)
        {
          sub_1000180EC(v566, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000D37D4();

        v565 = v1082;
        v567 = v894;
      }

      sub_100051BBC();
      if (sub_100024D10(v559, 1, v565) == 1)
      {
        swift_beginAccess();
        sub_1000A3C70();
        v493 = sub_100024D10(v559, 1, v565) == 1;
        v568 = v946;
        v569 = v559;
        v570 = v878;
        if (!v493)
        {
          sub_1000180EC(v569, &qword_100CA6638);
        }
      }

      else
      {
        sub_1000D37D4();
        v568 = v946;
        v570 = v878;
      }

      sub_100051BBC();
      v571 = v1081;
      if (sub_100024D10(v570, 1, v1081) == 1)
      {
        sub_1000A3C70();
        v572 = sub_100024D10(v570, 1, v571);
        v573 = v913;
        if (v572 != 1)
        {
          sub_1000180EC(v570, &qword_100CA6630);
        }
      }

      else
      {
        sub_1000D37D4();
        v573 = v913;
      }

      sub_100051BBC();
      if (sub_100024D10(v558, 1, v474) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v558, 1, v474) != 1)
        {
          sub_1000180EC(v558, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v567, 1, v475) == 1)
      {
        sub_1000A3C70();
        v574 = sub_100024D10(v567, 1, v475);
        v575 = v924;
        if (v574 != 1)
        {
          sub_1000180EC(v567, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000D37D4();
        v575 = v924;
      }

      sub_100051BBC();
      if (sub_100024D10(v573, 1, v476) == 1)
      {
        sub_1000A3C70();
        v576 = sub_100024D10(v573, 1, v476);
        v577 = v1084;
        if (v576 != 1)
        {
          sub_1000180EC(v573, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000D37D4();
        v577 = v1084;
      }

      sub_100051BBC();
      if (sub_100024D10(v575, 1, v577) == 1)
      {
        sub_1000A3C70();
        v578 = sub_100024D10(v575, 1, v577);
        v579 = v568;
        if (v578 != 1)
        {
          sub_1000180EC(v575, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000D37D4();
        v579 = v568;
      }

      v1084 = *(sub_10022C350(&qword_100CA6688) + 48);
      v580 = v1073;
      sub_1000D37D4();
      v581 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v582 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v584 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v583 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v585 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v587 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v586 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v588 = *(v1079 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v844) = v585;
      sub_10003E038(v1075, v1072, v1007, v1013, v1019, v1026, v1032, v1038, v579, v580, v581, v582, v584, v583, v844, v587, v586, v588, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      v463 = v589;
      v590 = v1071[1];

      v590(&v1076[v1084], v1074);
      return v463;
    case 5u:
      v522 = v1083;
      sub_10001B350(v449, 1, 1, v1083);
      sub_10001B350(v865, 1, 1, v1082);
      sub_10001B350(v969, 1, 1, v1081);
      sub_10001B350(v975, 1, 1, v1080);
      v523 = v1077;
      sub_10001B350(v981, 1, 1, v1077);
      v524 = v1078;
      sub_10001B350(v987, 1, 1, v1078);
      sub_10001B350(v993, 1, 1, v1084);
      v525 = type metadata accessor for Location();
      v526 = v891;
      (*(*(v525 - 8) + 16))(v891, v1074, v525);
      v527 = v526 + *(type metadata accessor for NextHourPrecipitationDetailViewState() + 20);
      v528 = v1072;
      v529 = v1072[1];
      *v527 = *v1072;
      *(v527 + 16) = v529;
      *(v527 + 32) = *(v528 + 32);
      type metadata accessor for ModalViewState.LocationDetailModal(0);
      swift_storeEnumTagMultiPayload();
      v530 = v1075;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v526, 0, 1, v530);
      v531 = v1079;
      v532 = v908;
      sub_1000A3C70();
      v533 = v895;
      sub_100051BBC();
      if (sub_100024D10(v533, 1, v530) == 1)
      {
        sub_1000180EC(v533, &qword_100CA65E8);
      }

      else
      {
        sub_100154038(v532, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      sub_1000D37D4();
      v619 = *(v531 + 16);
      LODWORD(v1075) = *(v531 + 24);
      sub_100051BBC();
      v620 = sub_100024D10(v447, 1, v522);
      v621 = v888;
      v622 = v874;
      v1076 = v619;
      if (v620 == 1)
      {
        sub_1000A3C70();
        v623 = sub_100024D10(v447, 1, v522);

        v624 = v1080;
        v625 = v1081;
        if (v623 != 1)
        {
          sub_1000180EC(v447, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000D37D4();

        v624 = v1080;
        v625 = v1081;
      }

      v626 = v866;
      sub_100051BBC();
      v627 = v1082;
      if (sub_100024D10(v626, 1, v1082) == 1)
      {
        swift_beginAccess();
        sub_1000A3C70();
        v628 = sub_100024D10(v626, 1, v627);
        v629 = v905;
        v630 = v881;
        if (v628 != 1)
        {
          sub_1000180EC(v626, &qword_100CA6638);
        }
      }

      else
      {
        sub_1000D37D4();
        v629 = v905;
        v630 = v881;
      }

      sub_100051BBC();
      if (sub_100024D10(v622, 1, v625) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v622, 1, v625) != 1)
        {
          sub_1000180EC(v622, &qword_100CA6630);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v630, 1, v624) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v630, 1, v624) != 1)
        {
          sub_1000180EC(v630, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v621, 1, v523) == 1)
      {
        sub_1000A3C70();
        v631 = sub_100024D10(v621, 1, v523);
        v632 = v920;
        if (v631 != 1)
        {
          sub_1000180EC(v621, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000D37D4();
        v632 = v920;
      }

      sub_100051BBC();
      if (sub_100024D10(v629, 1, v524) == 1)
      {
        sub_1000A3C70();
        v633 = sub_100024D10(v629, 1, v524);
        v634 = v1084;
        if (v633 != 1)
        {
          sub_1000180EC(v629, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000D37D4();
        v634 = v1084;
      }

      sub_100051BBC();
      if (sub_100024D10(v632, 1, v634) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v632, 1, v634) != 1)
        {
          sub_1000180EC(v632, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v635 = v1073;
      sub_1000D37D4();
      v637 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v636 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v639 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v638 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v640 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v642 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v641 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v643 = *(v531 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v844) = v640;
      sub_10003E038(v1076, v1075, v1004, v1009, v1015, v1021, v1028, v1034, v1040, v635, v637, v636, v639, v638, v844, v642, v641, v643, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      goto LABEL_295;
    case 6u:
      sub_1000161C0(v1071 + 17, v1071[20]);
      v534 = v1079;
      sub_1007381FC(v1079, 0, __src);
      type metadata accessor for ReportWeatherViewState._Storage();
      v535 = swift_allocObject();
      memcpy((v535 + 16), __src, 0x60uLL);
      sub_10001B350(v860, 1, 1, v1083);
      v536 = v1082;
      sub_10001B350(v868, 1, 1, v1082);
      v537 = v1081;
      sub_10001B350(v973, 1, 1, v1081);
      sub_10001B350(v979, 1, 1, v1080);
      sub_10001B350(v985, 1, 1, v1077);
      v538 = v1078;
      sub_10001B350(v991, 1, 1, v1078);
      sub_10001B350(v997, 1, 1, v1084);
      v539 = v903;
      *v903 = v535;
      v540 = v1075;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v539, 0, 1, v540);
      v541 = v918;
      sub_1000A3C70();
      v542 = v904;
      sub_100051BBC();
      if (sub_100024D10(v542, 1, v540) == 1)
      {
        sub_1000180EC(v542, &qword_100CA65E8);
      }

      else
      {
        sub_100154038(v541, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      v644 = v916;
      sub_1000D37D4();
      v645 = *(v534 + 16);
      LODWORD(v1075) = *(v534 + 24);
      v646 = v863;
      sub_100051BBC();
      v647 = v1083;
      v648 = sub_100024D10(v646, 1, v1083);
      v649 = v886;
      if (v648 == 1)
      {
        sub_1000A3C70();
        v650 = sub_100024D10(v646, 1, v647);

        v493 = v650 == 1;
        v536 = v1082;
        if (!v493)
        {
          sub_1000180EC(v646, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v1076 = v645;
      v651 = v872;
      sub_100051BBC();
      if (sub_100024D10(v651, 1, v536) == 1)
      {
        swift_beginAccess();
        sub_1000A3C70();
        v652 = sub_100024D10(v651, 1, v536);
        v653 = v899;
        v654 = v879;
        v655 = v538;
        if (v652 != 1)
        {
          sub_1000180EC(v651, &qword_100CA6638);
        }
      }

      else
      {
        sub_1000D37D4();
        v653 = v899;
        v654 = v879;
        v655 = v538;
      }

      sub_100051BBC();
      v656 = sub_100024D10(v654, 1, v537);
      v657 = v1080;
      if (v656 == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v654, 1, v537) != 1)
        {
          sub_1000180EC(v654, &qword_100CA6630);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v649, 1, v657) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v649, 1, v657) != 1)
        {
          sub_1000180EC(v649, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      v658 = v1077;
      if (sub_100024D10(v653, 1, v1077) == 1)
      {
        sub_1000A3C70();
        v659 = sub_100024D10(v653, 1, v658);
        v660 = v925;
        if (v659 != 1)
        {
          sub_1000180EC(v653, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000D37D4();
        v660 = v925;
      }

      sub_100051BBC();
      if (sub_100024D10(v644, 1, v655) == 1)
      {
        sub_1000A3C70();
        v661 = sub_100024D10(v644, 1, v655);
        v662 = v947;
        if (v661 != 1)
        {
          sub_1000180EC(v644, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000D37D4();
        v662 = v947;
      }

      sub_100051BBC();
      v663 = v1084;
      if (sub_100024D10(v660, 1, v1084) == 1)
      {
        sub_1000A3C70();
        v664 = sub_100024D10(v660, 1, v663);
        v665 = v662;
        if (v664 != 1)
        {
          sub_1000180EC(v660, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000D37D4();
        v665 = v662;
      }

      v666 = v1073;
      sub_1000D37D4();
      v668 = *(v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v667 = *(v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v670 = *(v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v669 = *(v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v671 = v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v672 = v534;
      v673 = *(v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v675 = *(v534 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v674 = *(v671 + 16);
      v676 = *(v672 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v844) = v673;
      sub_10003E038(v1076, v1075, v1008, v1014, v1020, v1027, v1033, v1039, v665, v666, v668, v667, v670, v669, v844, v675, v674, v676, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      goto LABEL_295;
    case 7u:
      sub_10001B350(v444, 1, 1, v1083);
      sub_10001B350(v966, 1, 1, v1082);
      sub_10001B350(v970, 1, 1, v1081);
      v497 = v1080;
      sub_10001B350(v976, 1, 1, v1080);
      v498 = v1077;
      sub_10001B350(v982, 1, 1, v1077);
      v499 = v1078;
      sub_10001B350(v988, 1, 1, v1078);
      sub_10001B350(v994, 1, 1, v1084);
      v500 = type metadata accessor for Location();
      v501 = v892;
      (*(*(v500 - 8) + 16))(v892, v1074, v500);
      v502 = type metadata accessor for SunriseSunsetDetailViewState();
      v503 = v501 + *(v502 + 20);
      v504 = v1072;
      v505 = v1072[1];
      *v503 = *v1072;
      *(v503 + 16) = v505;
      *(v503 + 32) = *(v504 + 32);
      *(v501 + *(v502 + 24)) = 0;
      type metadata accessor for ModalViewState.LocationDetailModal(0);
      swift_storeEnumTagMultiPayload();
      v506 = v1075;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v501, 0, 1, v506);
      v507 = v1079;
      v508 = v911;
      sub_1000A3C70();
      v509 = v896;
      sub_100051BBC();
      if (sub_100024D10(v509, 1, v506) == 1)
      {
        sub_1000180EC(v509, &qword_100CA65E8);
      }

      else
      {
        sub_100154038(v508, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      sub_1000D37D4();
      v591 = *(v507 + 16);
      LODWORD(v1075) = *(v507 + 24);
      sub_100051BBC();
      v592 = v1083;
      v593 = sub_100024D10(v441, 1, v1083);
      v594 = v889;
      v595 = v875;
      v1076 = v591;
      if (v593 == 1)
      {
        sub_1000A3C70();
        v596 = sub_100024D10(v441, 1, v592);

        v597 = v882;
        if (v596 != 1)
        {
          sub_1000180EC(v441, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000D37D4();

        v597 = v882;
      }

      v598 = v963;
      sub_100051BBC();
      v599 = v1082;
      if (sub_100024D10(v598, 1, v1082) == 1)
      {
        swift_beginAccess();
        v600 = v963;
        sub_1000A3C70();
        v601 = sub_100024D10(v600, 1, v599);
        v602 = v921;
        if (v601 != 1)
        {
          sub_1000180EC(v600, &qword_100CA6638);
        }
      }

      else
      {
        sub_1000D37D4();
        v602 = v921;
      }

      sub_100051BBC();
      v603 = v1081;
      if (sub_100024D10(v595, 1, v1081) == 1)
      {
        sub_1000A3C70();
        v604 = sub_100024D10(v595, 1, v603);
        v605 = v907;
        if (v604 != 1)
        {
          sub_1000180EC(v595, &qword_100CA6630);
        }
      }

      else
      {
        sub_1000D37D4();
        v605 = v907;
      }

      sub_100051BBC();
      if (sub_100024D10(v597, 1, v497) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v597, 1, v497) != 1)
        {
          sub_1000180EC(v597, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v594, 1, v498) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v594, 1, v498) != 1)
        {
          sub_1000180EC(v594, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v605, 1, v499) == 1)
      {
        sub_1000A3C70();
        v606 = sub_100024D10(v605, 1, v499);
        v607 = v1084;
        if (v606 != 1)
        {
          sub_1000180EC(v605, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000D37D4();
        v607 = v1084;
      }

      sub_100051BBC();
      if (sub_100024D10(v602, 1, v607) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v602, 1, v607) != 1)
        {
          sub_1000180EC(v602, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      v608 = v1073;
      sub_1000D37D4();
      v609 = v507;
      v611 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v610 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v613 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v612 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v614 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v616 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v615 = *(v507 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v617 = *(v609 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v844) = v614;
      sub_10003E038(v1076, v1075, v1005, v1010, v1016, v1023, v1029, v1035, v1041, v608, v611, v610, v613, v612, v844, v616, v615, v617, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      goto LABEL_295;
    case 8u:
      sub_10029BC34(v931);
      sub_10001B350(v438, 1, 1, v1083);
      v543 = v1082;
      sub_10001B350(v967, 1, 1, v1082);
      sub_10001B350(v971, 1, 1, v1081);
      v544 = v1080;
      sub_10001B350(v977, 1, 1, v1080);
      v545 = v1077;
      sub_10001B350(v983, 1, 1, v1077);
      sub_10001B350(v989, 1, 1, v1078);
      sub_10001B350(v995, 1, 1, v1084);
      v546 = type metadata accessor for Location();
      v547 = v897;
      (*(*(v546 - 8) + 16))(v897, v1074, v546);
      v548 = type metadata accessor for MoonDetailViewState();
      v549 = v548[6];
      v550 = type metadata accessor for Date();
      sub_10001B350(v547 + v549, 1, 1, v550);
      v551 = v547 + v548[7];
      sub_100051BBC();
      v552 = v1072;
      v553 = v1072[1];
      *v551 = *v1072;
      *(v551 + 16) = v553;
      *(v551 + 32) = *(v552 + 32);
      *(v547 + v548[8]) = 2;
      type metadata accessor for ModalViewState.LocationDetailModal(0);
      swift_storeEnumTagMultiPayload();
      v554 = v1075;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v547, 0, 1, v554);
      v555 = v1079;
      v556 = v914;
      sub_1000A3C70();
      v557 = v901;
      sub_100051BBC();
      if (sub_100024D10(v557, 1, v554) == 1)
      {
        sub_1000180EC(v557, &qword_100CA65E8);
      }

      else
      {
        sub_100154038(v556, type metadata accessor for ModalViewState);
        sub_1000D37D4();
      }

      v677 = v912;
      v678 = v884;
      sub_1000D37D4();
      v679 = *(v555 + 16);
      LODWORD(v1075) = *(v555 + 24);
      v680 = v861;
      sub_100051BBC();
      v681 = v1083;
      v682 = sub_100024D10(v680, 1, v1083);
      v683 = v870;
      if (v682 == 1)
      {
        sub_1000A3C70();
        v684 = sub_100024D10(v680, 1, v681);

        v493 = v684 == 1;
        v543 = v1082;
        v685 = v680;
        v686 = v923;
        if (!v493)
        {
          sub_1000180EC(v685, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000D37D4();

        v686 = v923;
      }

      sub_100051BBC();
      v687 = sub_100024D10(v683, 1, v543);
      v1076 = v679;
      if (v687 == 1)
      {
        swift_beginAccess();
        sub_1000A3C70();
        v493 = sub_100024D10(v683, 1, v543) == 1;
        v688 = v893;
        v689 = v683;
        v690 = v877;
        if (!v493)
        {
          sub_1000180EC(v689, &qword_100CA6638);
        }
      }

      else
      {
        sub_1000D37D4();
        v688 = v893;
        v690 = v877;
      }

      sub_100051BBC();
      v691 = v1081;
      if (sub_100024D10(v690, 1, v1081) == 1)
      {
        sub_1000A3C70();
        v692 = sub_100024D10(v690, 1, v691);
        v693 = v945;
        if (v692 != 1)
        {
          sub_1000180EC(v690, &qword_100CA6630);
        }
      }

      else
      {
        sub_1000D37D4();
        v693 = v945;
      }

      sub_100051BBC();
      if (sub_100024D10(v678, 1, v544) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v678, 1, v544) != 1)
        {
          sub_1000180EC(v678, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      if (sub_100024D10(v688, 1, v545) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v688, 1, v545) != 1)
        {
          sub_1000180EC(v688, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      v694 = v1078;
      if (sub_100024D10(v677, 1, v1078) == 1)
      {
        sub_1000A3C70();
        if (sub_100024D10(v677, 1, v694) != 1)
        {
          sub_1000180EC(v677, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000D37D4();
      }

      sub_100051BBC();
      v695 = v1084;
      if (sub_100024D10(v686, 1, v1084) == 1)
      {
        sub_1000A3C70();
        v696 = sub_100024D10(v686, 1, v695);
        v697 = v693;
        if (v696 != 1)
        {
          sub_1000180EC(v686, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000D37D4();
        v697 = v693;
      }

      v698 = v1073;
      sub_1000D37D4();
      v700 = *(v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v699 = *(v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v702 = *(v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v701 = *(v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v703 = v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v704 = v555;
      v705 = *(v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v707 = *(v555 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v706 = *(v703 + 16);
      v708 = *(v704 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v844) = v705;
      sub_10003E038(v1076, v1075, v1006, v1012, v1018, v1025, v1031, v1037, v697, v698, v700, v699, v702, v701, v844, v707, v706, v708, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
      goto LABEL_295;
    default:
      v457 = sub_10022C350(&qword_100CA6680);
      v458 = v1076[*(v457 + 48)];
      v459 = v938;
      v460 = *(v938 + 32);
      v461 = v939;
      v462 = v940;
      v460(v939);
      v463 = v1079;
      if (v458 == 1)
      {
        sub_10001B350(v859, 1, 1, v1083);
        v464 = v1082;
        sub_10001B350(v867, 1, 1, v1082);
        v465 = v1081;
        sub_10001B350(v876, 1, 1, v1081);
        v466 = v1080;
        sub_10001B350(v883, 1, 1, v1080);
        sub_10001B350(v890, 1, 1, v1077);
        sub_10001B350(v909, 1, 1, v1078);
        sub_10001B350(v922, 1, 1, v1084);
        v467 = v852;
        (v460)(v852, v461, v462);
        type metadata accessor for ModalViewState.LocationDetailModal(0);
        swift_storeEnumTagMultiPayload();
        v468 = v1075;
        swift_storeEnumTagMultiPayload();
        sub_10001B350(v467, 0, 1, v468);
        v469 = v855;
        sub_1000A3C70();
        v470 = v853;
        sub_100051BBC();
        v471 = sub_100024D10(v470, 1, v468);
        v472 = v466;
        if (v471 == 1)
        {
          sub_1000180EC(v470, &qword_100CA65E8);
        }

        else
        {
          sub_100154038(v469, type metadata accessor for ModalViewState);
          sub_1000D37D4();
        }

        v811 = v851;
        v812 = v850;
        v813 = v849;
        sub_1000D37D4();
        v814 = *(v463 + 16);
        LODWORD(v1075) = *(v463 + 24);
        v815 = v847;
        sub_100051BBC();
        v816 = v1083;
        v817 = sub_100024D10(v815, 1, v1083);
        v1076 = v814;
        if (v817 == 1)
        {
          sub_1000A3C70();
          v818 = sub_100024D10(v815, 1, v816);

          v493 = v818 == 1;
          v464 = v1082;
          if (!v493)
          {
            sub_1000180EC(v815, &qword_100CA6640);
          }
        }

        else
        {
          sub_1000D37D4();
        }

        v819 = v848;
        sub_100051BBC();
        if (sub_100024D10(v819, 1, v464) == 1)
        {
          swift_beginAccess();
          sub_1000A3C70();
          v820 = sub_100024D10(v819, 1, v464);
          v821 = *(&v856 + 1);
          v822 = v856;
          v823 = v472;
          if (v820 != 1)
          {
            sub_1000180EC(v819, &qword_100CA6638);
          }
        }

        else
        {
          sub_1000D37D4();
          v821 = *(&v856 + 1);
          v822 = v856;
          v823 = v472;
        }

        sub_100051BBC();
        v824 = sub_100024D10(v813, 1, v465);
        v825 = v854;
        if (v824 == 1)
        {
          sub_1000A3C70();
          v826 = sub_100024D10(v813, 1, v465);
          v827 = v1078;
          if (v826 != 1)
          {
            sub_1000180EC(v813, &qword_100CA6630);
          }
        }

        else
        {
          sub_1000D37D4();
          v827 = v1078;
        }

        sub_100051BBC();
        if (sub_100024D10(v812, 1, v823) == 1)
        {
          sub_1000A3C70();
          if (sub_100024D10(v812, 1, v823) != 1)
          {
            sub_1000180EC(v812, &qword_100CA6628);
          }
        }

        else
        {
          sub_1000D37D4();
        }

        sub_100051BBC();
        v828 = v1077;
        if (sub_100024D10(v811, 1, v1077) == 1)
        {
          sub_1000A3C70();
          if (sub_100024D10(v811, 1, v828) != 1)
          {
            sub_1000180EC(v811, &qword_100CA6620);
          }
        }

        else
        {
          sub_1000D37D4();
        }

        sub_100051BBC();
        if (sub_100024D10(v825, 1, v827) == 1)
        {
          sub_1000A3C70();
          if (sub_100024D10(v825, 1, v827) != 1)
          {
            sub_1000180EC(v825, &qword_100CA6618);
          }
        }

        else
        {
          sub_1000D37D4();
        }

        sub_100051BBC();
        v829 = v1084;
        if (sub_100024D10(v822, 1, v1084) == 1)
        {
          sub_1000A3C70();
          v830 = sub_100024D10(v822, 1, v829);
          v831 = v821;
          if (v830 != 1)
          {
            sub_1000180EC(v822, &qword_100CA6610);
          }
        }

        else
        {
          sub_1000D37D4();
          v831 = v821;
        }

        v832 = v1073;
        sub_1000D37D4();
        v834 = *(v463 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
        v833 = *(v463 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
        v836 = *(v463 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
        v835 = *(v463 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
        v837 = v463 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
        v838 = v463;
        v839 = *(v463 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
        v841 = *(v837 + 8);
        v840 = *(v837 + 16);
        v842 = *(v838 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
        type metadata accessor for MainState._Storage(0);
        swift_allocObject();
        LOBYTE(v844) = v839;
        sub_10003E038(v1076, v1075, v934, v935, v937, v941, v942, v944, v831, v832, v834, v833, v836, v835, v844, v841, v840, v842, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862);
LABEL_295:
        v463 = v618;
      }

      else
      {
        (*(v459 + 8))(v461, v462);
      }

      return v463;
  }
}

uint64_t sub_100299588@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocationComponentAction(0);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3C70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = type metadata accessor for WeatherMapOverlayKind();
      goto LABEL_7;
    case 2u:
      v12 = type metadata accessor for DetailCondition();
      goto LABEL_7;
    case 3u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      goto LABEL_8;
    case 4u:
      v8 += *(sub_10022C350(&qword_100CA6688) + 48);
      v12 = type metadata accessor for Location();
LABEL_7:
      (*(*(v12 - 8) + 8))(v8, v12);
      goto LABEL_8;
    default:
      v9 = v8[*(sub_10022C350(&qword_100CA6680) + 48)];
      v10 = *(v3 + 32);
      v10(v5, v8, v2);
      if (v9 == 1)
      {
        v10(a1, v5, v2);
        type metadata accessor for LocationPreviewModalViewState(0);
        return swift_storeEnumTagMultiPayload();
      }

      else
      {
        (*(v3 + 8))(v5, v2);
LABEL_8:
        type metadata accessor for LocationPreviewViewState(0);
        return sub_1000A3C70();
      }
  }
}

uint64_t sub_100299814()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);
  sub_100006F14(v0 + 96);
  sub_100006F14(v0 + 136);
  return v0;
}

uint64_t sub_10029984C()
{
  sub_100299814();

  return swift_deallocClassInstance();
}

uint64_t sub_100299880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v148 = a5;
  v142 = a4;
  v140 = a3;
  v141 = a2;
  v158 = a1;
  v169 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v169);
  v159 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for TimeState();
  __chkstk_darwin(v165);
  v172 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for NotificationsOptInState();
  __chkstk_darwin(v164);
  v171 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for NotificationsState();
  __chkstk_darwin(v163);
  v170 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationsState();
  __chkstk_darwin(v9);
  v168 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for EnvironmentState();
  __chkstk_darwin(v162);
  v167 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for AppConfigurationState();
  __chkstk_darwin(v161);
  v166 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for ModalViewState(0);
  v13 = __chkstk_darwin(v145);
  v157 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v146 = &v126 - v16;
  __chkstk_darwin(v15);
  v156 = &v126 - v17;
  v128 = type metadata accessor for TimeZone();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&unk_100CB2CF0);
  v20 = __chkstk_darwin(v19 - 8);
  v133 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  *(&v136 + 1) = &v126 - v22;
  v129 = type metadata accessor for Location();
  v131 = *(v129 - 8);
  __chkstk_darwin(v129);
  v160 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DetailCondition();
  v130 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CA65E8);
  v28 = __chkstk_darwin(v27 - 8);
  v138 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v126 - v30;
  v32 = sub_10022C350(&qword_100CA6610);
  v33 = __chkstk_darwin(v32 - 8);
  v155 = &v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v126 - v35;
  v37 = sub_10022C350(&qword_100CA6618);
  v38 = __chkstk_darwin(v37 - 8);
  v152 = &v126 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = &v126 - v40;
  v42 = sub_10022C350(&qword_100CA6620);
  v43 = __chkstk_darwin(v42 - 8);
  v150 = &v126 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v46 = &v126 - v45;
  v47 = sub_10022C350(&qword_100CA6628);
  v48 = __chkstk_darwin(v47 - 8);
  v147 = &v126 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v51 = &v126 - v50;
  v52 = sub_10022C350(&qword_100CA6630);
  v53 = __chkstk_darwin(v52 - 8);
  v143 = &v126 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v56 = &v126 - v55;
  v57 = sub_10022C350(&qword_100CA6638);
  v58 = __chkstk_darwin(v57 - 8);
  v137 = &v126 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v61 = &v126 - v60;
  v62 = sub_10022C350(&qword_100CA6640);
  v63 = __chkstk_darwin(v62 - 8);
  v134 = &v126 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v132 = &v126 - v65;
  sub_10001B350(&v126 - v65, 1, 1, v161);
  *&v136 = v61;
  sub_10001B350(v61, 1, 1, v162);
  v139 = v56;
  v66 = v56;
  v67 = v129;
  v154 = v9;
  sub_10001B350(v66, 1, 1, v9);
  v144 = v51;
  v68 = v51;
  v69 = v131;
  sub_10001B350(v68, 1, 1, v163);
  v149 = v46;
  sub_10001B350(v46, 1, 1, v164);
  v151 = v41;
  sub_10001B350(v41, 1, 1, v165);
  v153 = v36;
  v70 = v36;
  v71 = v140;
  sub_10001B350(v70, 1, 1, v169);
  v72 = v130;
  v73 = *(v130 + 16);
  v135 = v26;
  v74 = v26;
  v75 = v24;
  v73(v74, v141, v24);
  (*(v69 + 16))(v160, v71, v67);
  v76 = v133;
  sub_100095588();
  v77 = type metadata accessor for Date();
  v78 = v76;
  if (sub_100024D10(v76, 1, v77) == 1)
  {
    sub_1000180EC(v76, &unk_100CB2CF0);
    v79 = 1;
    v80 = *(&v136 + 1);
  }

  else
  {
    v81 = v126;
    Location.timeZone.getter();
    v80 = *(&v136 + 1);
    Date.startOfDay(timeZone:)();
    (*(v127 + 8))(v81, v128);
    (*(*(v77 - 8) + 8))(v78, v77);
    v79 = 0;
  }

  sub_10001B350(v80, v79, 1, v77);
  v82 = type metadata accessor for ConditionDetailViewState();
  v83 = v82[8];
  v84 = type metadata accessor for DetailChartSelection();
  sub_10001B350(&v31[v83], 1, 1, v84);
  (*(v72 + 32))(v31, v135, v75);
  (*(v69 + 32))(&v31[v82[5]], v160, v67);
  sub_100051BBC();
  v85 = &v31[v82[7]];
  v86 = v148;
  v87 = v148[1];
  *v85 = *v148;
  *(v85 + 1) = v87;
  v85[32] = *(v86 + 32);
  v31[v82[9]] = 0;
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  swift_storeEnumTagMultiPayload();
  v88 = v145;
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v31, 0, 1, v88);
  v89 = v158;
  v90 = v146;
  sub_1000A3C70();
  v91 = v138;
  sub_100051BBC();
  if (sub_100024D10(v91, 1, v88) == 1)
  {
    sub_1000180EC(v91, &qword_100CA65E8);
  }

  else
  {
    sub_100154038(v90, type metadata accessor for ModalViewState);
    sub_1000D37D4();
  }

  v92 = v169;
  v94 = v164;
  v93 = v165;
  v95 = v163;
  v96 = v134;
  sub_1000D37D4();
  v97 = *(v89 + 16);
  LODWORD(v156) = *(v89 + 24);
  sub_100051BBC();
  v98 = v161;
  if (sub_100024D10(v96, 1, v161) == 1)
  {
    sub_1000A3C70();
    v99 = sub_100024D10(v96, 1, v98);

    v100 = v162;
    if (v99 != 1)
    {
      sub_1000180EC(v96, &qword_100CA6640);
    }
  }

  else
  {
    sub_1000D37D4();

    v100 = v162;
  }

  v101 = v137;
  sub_100051BBC();
  v102 = sub_100024D10(v101, 1, v100);
  v160 = v97;
  if (v102 == 1)
  {
    swift_beginAccess();
    sub_1000A3C70();
    v103 = sub_100024D10(v101, 1, v100);
    v104 = v159;
    if (v103 != 1)
    {
      sub_1000180EC(v101, &qword_100CA6638);
    }
  }

  else
  {
    sub_1000D37D4();
    v104 = v159;
  }

  v105 = v143;
  sub_100051BBC();
  v106 = v154;
  if (sub_100024D10(v105, 1, v154) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v105, 1, v106) != 1)
    {
      sub_1000180EC(v105, &qword_100CA6630);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v107 = v147;
  sub_100051BBC();
  if (sub_100024D10(v107, 1, v95) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v107, 1, v95) != 1)
    {
      sub_1000180EC(v107, &qword_100CA6628);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v108 = v150;
  sub_100051BBC();
  if (sub_100024D10(v108, 1, v94) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v108, 1, v94) != 1)
    {
      sub_1000180EC(v108, &qword_100CA6620);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v109 = v152;
  sub_100051BBC();
  if (sub_100024D10(v109, 1, v93) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v109, 1, v93) != 1)
    {
      sub_1000180EC(v109, &qword_100CA6618);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v110 = v155;
  sub_100051BBC();
  if (sub_100024D10(v110, 1, v92) == 1)
  {
    sub_1000A3C70();
    v111 = v104;
    if (sub_100024D10(v110, 1, v92) != 1)
    {
      sub_1000180EC(v110, &qword_100CA6610);
    }
  }

  else
  {
    sub_1000D37D4();
    v111 = v104;
  }

  v112 = v157;
  sub_1000D37D4();
  v114 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v113 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v116 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v115 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v117 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v118 = v89;
  v120 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v119 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v121 = *(v118 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v125) = v117;
  sub_10003E038(v160, v156, v166, v167, v168, v170, v171, v172, v111, v112, v114, v113, v116, v115, v125, v120, v119, v121, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  v123 = v122;

  return v123;
}

uint64_t sub_10029AC40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *&v110 = a4;
  HIDWORD(v109) = a3;
  v106 = a2;
  v108 = a1;
  v128 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v128);
  v132 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for TimeState();
  __chkstk_darwin(v124);
  v131 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for NotificationsOptInState();
  __chkstk_darwin(v123);
  v130 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for NotificationsState();
  __chkstk_darwin(v122);
  v129 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for LocationsState();
  __chkstk_darwin(v121);
  v127 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for EnvironmentState();
  __chkstk_darwin(v120);
  v126 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for AppConfigurationState();
  __chkstk_darwin(v119);
  v125 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for ModalViewState(0);
  v11 = __chkstk_darwin(v103);
  v118 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v101 = &v100 - v14;
  __chkstk_darwin(v13);
  v117 = &v100 - v15;
  v16 = sub_10022C350(&qword_100CA65E8);
  v17 = __chkstk_darwin(v16 - 8);
  v102 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v100 - v19;
  v21 = sub_10022C350(&qword_100CA6610);
  v22 = __chkstk_darwin(v21 - 8);
  v116 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v100 - v24;
  v26 = sub_10022C350(&qword_100CA6618);
  v27 = __chkstk_darwin(v26 - 8);
  v114 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v100 - v29;
  v31 = sub_10022C350(&qword_100CA6620);
  v32 = __chkstk_darwin(v31 - 8);
  v112 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v100 - v34;
  v36 = sub_10022C350(&qword_100CA6628);
  v37 = __chkstk_darwin(v36 - 8);
  *(&v110 + 1) = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v100 - v39;
  v41 = sub_10022C350(&qword_100CA6630);
  v42 = __chkstk_darwin(v41 - 8);
  v105 = &v100 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v45 = &v100 - v44;
  v46 = sub_10022C350(&qword_100CA6638);
  v47 = __chkstk_darwin(v46 - 8);
  v49 = &v100 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v51 = &v100 - v50;
  v52 = sub_10022C350(&qword_100CA6640);
  v53 = __chkstk_darwin(v52 - 8);
  v55 = &v100 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  sub_10001B350(&v100 - v56, 1, 1, v119);
  sub_10001B350(v51, 1, 1, v120);
  v104 = v45;
  sub_10001B350(v45, 1, 1, v121);
  v107 = v40;
  v57 = v40;
  v58 = v101;
  sub_10001B350(v57, 1, 1, v122);
  v111 = v35;
  sub_10001B350(v35, 1, 1, v123);
  v113 = v30;
  sub_10001B350(v30, 1, 1, v124);
  v115 = v25;
  sub_10001B350(v25, 1, 1, v128);
  v59 = type metadata accessor for Location();
  (*(*(v59 - 8) + 16))(v20, v106, v59);
  v60 = type metadata accessor for AirQualityDetailViewState();
  v20[*(v60 + 20)] = BYTE4(v109) & 1;
  v61 = &v20[*(v60 + 24)];
  v62 = v110;
  v63 = *(v110 + 16);
  *v61 = *v110;
  *(v61 + 1) = v63;
  v61[32] = *(v62 + 32);
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  swift_storeEnumTagMultiPayload();
  v64 = v103;
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v20, 0, 1, v64);
  v65 = v108;
  sub_1000A3C70();
  v66 = v102;
  sub_100051BBC();
  if (sub_100024D10(v66, 1, v64) == 1)
  {
    sub_1000180EC(v66, &qword_100CA65E8);
  }

  else
  {
    sub_100154038(v58, type metadata accessor for ModalViewState);
    sub_1000D37D4();
  }

  sub_1000D37D4();
  v67 = v65;
  v68 = *(v65 + 16);
  HIDWORD(v109) = *(v67 + 24);
  sub_100051BBC();
  v69 = v119;
  v70 = sub_100024D10(v55, 1, v119);
  v71 = v105;
  *&v110 = v68;
  if (v70 == 1)
  {
    sub_1000A3C70();
    v72 = sub_100024D10(v55, 1, v69);

    v73 = *(&v110 + 1);
    if (v72 != 1)
    {
      sub_1000180EC(v55, &qword_100CA6640);
    }
  }

  else
  {
    sub_1000D37D4();

    v73 = *(&v110 + 1);
  }

  sub_100051BBC();
  v74 = v120;
  if (sub_100024D10(v49, 1, v120) == 1)
  {
    swift_beginAccess();
    sub_1000A3C70();
    v75 = sub_100024D10(v49, 1, v74);
    v76 = v124;
    v77 = v112;
    if (v75 != 1)
    {
      sub_1000180EC(v49, &qword_100CA6638);
    }
  }

  else
  {
    sub_1000D37D4();
    v76 = v124;
    v77 = v112;
  }

  sub_100051BBC();
  v78 = v121;
  if (sub_100024D10(v71, 1, v121) == 1)
  {
    sub_1000A3C70();
    v79 = sub_100024D10(v71, 1, v78);
    v80 = v128;
    if (v79 != 1)
    {
      sub_1000180EC(v71, &qword_100CA6630);
    }
  }

  else
  {
    sub_1000D37D4();
    v80 = v128;
  }

  sub_100051BBC();
  v81 = v122;
  if (sub_100024D10(v73, 1, v122) == 1)
  {
    sub_1000A3C70();
    v82 = sub_100024D10(v73, 1, v81);
    v83 = v123;
    if (v82 != 1)
    {
      sub_1000180EC(v73, &qword_100CA6628);
    }
  }

  else
  {
    sub_1000D37D4();
    v83 = v123;
  }

  sub_100051BBC();
  if (sub_100024D10(v77, 1, v83) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v77, 1, v83) != 1)
    {
      sub_1000180EC(v77, &qword_100CA6620);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v84 = v114;
  sub_100051BBC();
  if (sub_100024D10(v84, 1, v76) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v84, 1, v76) != 1)
    {
      sub_1000180EC(v84, &qword_100CA6618);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v85 = v116;
  sub_100051BBC();
  if (sub_100024D10(v85, 1, v80) == 1)
  {
    sub_1000A3C70();
    if (sub_100024D10(v85, 1, v80) != 1)
    {
      sub_1000180EC(v85, &qword_100CA6610);
    }
  }

  else
  {
    sub_1000D37D4();
  }

  v86 = v118;
  sub_1000D37D4();
  v88 = *(v67 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v87 = *(v67 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v89 = v67;
  v91 = *(v67 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v90 = *(v67 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v92 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v94 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v93 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v95 = *(v89 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v99) = v92;
  sub_10003E038(v110, HIDWORD(v109), v125, v126, v127, v129, v130, v131, v132, v86, v88, v87, v91, v90, v99, v94, v93, v95, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
  v97 = v96;

  return v97;
}

uint64_t sub_10029BC34@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095588();
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    sub_1000180EC(v4, &unk_100CB2CF0);
    v9 = type metadata accessor for MoonDetailSelectedDate();
    v10 = a1;
    v11 = 1;
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v8, v4, v5);
    v12(a1, v8, v5);
    v13 = type metadata accessor for MoonDetailSelectedDate();
    swift_storeEnumTagMultiPayload();
    v10 = a1;
    v11 = 0;
    v9 = v13;
  }

  return sub_10001B350(v10, v11, 1, v9);
}

uint64_t sub_10029BE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Location.Identifier();
  v9 = *(v8 - 8);
  v40 = v8;
  v41 = v9;
  __chkstk_darwin(v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v12 - 8);
  v14 = v38 - v13;
  v15 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v15 - 8);
  v17 = v38 - v16;
  v18 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v18);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  if (*(a1 + *(type metadata accessor for ViewState(0) + 40) + v21 + 1) == 128)
  {
    v39 = a4;
    v22 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v38[1] = a2;
    v23 = Location.id.getter();
    sub_1000864C0(v23, v24, v22);

    v25 = type metadata accessor for LocationWeatherDataState(0);
    if (sub_100024D10(v14, 1, v25) == 1)
    {
      sub_1000180EC(v14, &qword_100CA37B0);
      sub_10001B350(v17, 1, 1, v18);
    }

    else
    {
      sub_1001A0D3C();
      sub_100154038(v14, type metadata accessor for LocationWeatherDataState);
      if (sub_100024D10(v17, 1, v18) != 1)
      {
        sub_1000D37D4();
        v31 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        LODWORD(v31) = *(v31 + 3) == 4;
        sub_1000161C0(a3 + 2, a3[5]);
        v32 = sub_100922C64(v20, v31);
        v34 = v33;
        sub_1000161C0(a3 + 7, a3[10]);
        v35 = *(v18 + 24);
        Location.identifier.getter();
        v36 = &v20[v35];
        v37 = v39;
        sub_100523678(v36, v32, v34, v11, v39);

        (*(v41 + 8))(v11, v40);
        sub_100154038(v20, type metadata accessor for WeatherData);
        v29 = type metadata accessor for WeatherMapOverlayKind();
        v30 = v37;
        return sub_10001B350(v30, 0, 1, v29);
      }
    }

    sub_1000180EC(v17, &qword_100CA3898);
    sub_1000161C0(a3 + 7, a3[10]);
    v28 = v39;
    sub_1001A79EC(v39);
    v29 = type metadata accessor for WeatherMapOverlayKind();
    v30 = v28;
    return sub_10001B350(v30, 0, 1, v29);
  }

  v26 = type metadata accessor for WeatherMapOverlayKind();

  return sub_10001B350(a4, 1, 1, v26);
}

uint64_t sub_10029C2E8()
{
  v1 = type metadata accessor for LocationModel();
  sub_100003810(v1);
  return sub_100291354(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

uint64_t sub_10029C338()
{
  v0 = type metadata accessor for Location();
  sub_100003810(v0);

  return sub_100291410();
}

uint64_t sub_10029C394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10029C3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA5CF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t property wrapper backing initializer of WindowLiveResizeDeferred._value(uint64_t a1, uint64_t a2)
{
  sub_100007FD0();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = sub_10001BBD0(v8, v12);
  v10(v9);
  sub_10029C560(v2, a2);
  return (*(v6 + 8))(a1, a2);
}

uint64_t sub_10029C560(uint64_t a1, uint64_t a2)
{
  sub_100007FD0();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = sub_10001BBD0(v7, v11);
  v9(v8);
  Published.init(initialValue:)();
  return (*(v5 + 8))(a1, a2);
}

uint64_t sub_10029C628()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t WindowLiveResizeDeferred.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  CurrentValueSubject.send(_:)();
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*WindowLiveResizeDeferred.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10023FBC0(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v3[1] = *(*v1 + 80);
  sub_100007FD0();
  *(v4 + 16) = v5;
  v7 = *(v6 + 64);
  v3[3] = sub_10023FBC0(v7);
  v3[4] = sub_10023FBC0(v7);
  WindowLiveResizeDeferred.wrappedValue.getter();
  return sub_10029C854;
}

void sub_10029C854(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    WindowLiveResizeDeferred.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    WindowLiveResizeDeferred.wrappedValue.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t WindowLiveResizeDeferred.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WindowLiveResizeDeferred.init(wrappedValue:)(a1);
  return v2;
}

void *WindowLiveResizeDeferred.init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_10022C350(&qword_100CA34C8);
  __chkstk_darwin(v5 - 8);
  v41 = &v36 - v6;
  v46 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  sub_100007FD0();
  v43 = v7;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[10];
  v12 = type metadata accessor for CurrentValueSubject();
  v13 = sub_1000405D8();
  v40 = v13;
  WitnessTable = swift_getWitnessTable();
  v39 = WitnessTable;
  v38 = sub_100042F54();
  v48 = v12;
  v49 = v13;
  v50 = WitnessTable;
  v51 = v38;
  v42 = type metadata accessor for Publishers.Debounce();
  sub_100007FD0();
  v45 = v15;
  __chkstk_darwin(v16);
  v36 = &v36 - v17;
  sub_100007FD0();
  v19 = v18;
  v44 = v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v36 - v22;
  *(v2 + v4[14]) = &_swiftEmptySetSingleton;
  v24 = *(v19 + 16);
  v24(&v36 - v22, a1, v11, v21);
  swift_beginAccess();
  v37 = v4[11];
  property wrapper backing initializer of WindowLiveResizeDeferred._value(v23, v11);
  swift_endAccess();
  v25 = a1;
  (v24)(v23, a1, v11);
  v26 = CurrentValueSubject.__allocating_init(_:)();
  *(v2 + *(*v2 + 104)) = v26;
  v48 = v26;

  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v27 = [objc_opt_self() mainRunLoop];
  v47 = v27;
  v28 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v29 = v41;
  sub_10001B350(v41, 1, 1, v28);
  v30 = v36;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_10029D3F4(v29);

  (*(v43 + 8))(v10, v46);

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v33 = v37;
  v32[2] = v11;
  v32[3] = v33;
  v32[4] = v31;

  v34 = v42;
  swift_getWitnessTable();
  Publisher<>.sink(receiveValue:)();

  (*(v45 + 8))(v30, v34);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v44 + 8))(v25, v11);
  return v2;
}

uint64_t sub_10029CE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);
    *(&v15 - 2) = a3;
    *(&v15 - 1) = a4;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v15 - 2) = a3;
    *(&v15 - 1) = a4;
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13 = (*(v7 + 8))(v9, a3);
    if (v12)
    {
    }

    else
    {
      __chkstk_darwin(v13);
      *(&v15 - 2) = a3;
      *(&v15 - 1) = a4;
      v14 = swift_getKeyPath();
      __chkstk_darwin(v14);
      *(&v15 - 2) = a3;
      *(&v15 - 1) = a4;
      swift_getKeyPath();
      (*(v7 + 16))(v9, a1, a3);
      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t WindowLiveResizeDeferred.deinit()
{
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t WindowLiveResizeDeferred.__deallocating_deinit()
{
  WindowLiveResizeDeferred.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10029D1E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10029D278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *(v4 - 8);
  __chkstk_darwin(a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = v15 - v11;
  v13 = *(v6 + 16);
  v13(v15 - v11, v10);
  v15[2] = v4;
  v15[3] = v5;
  swift_getKeyPath();
  v15[0] = v4;
  v15[1] = v5;
  swift_getKeyPath();
  (v13)(v8, v12, v4);

  static Published.subscript.setter();
  return (*(v6 + 8))(v12, v4);
}

uint64_t sub_10029D3F4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA34C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10029D488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v891 = a3;
  v899 = a2;
  v892 = type metadata accessor for Date();
  sub_1000037C4();
  v888 = v3;
  __chkstk_darwin(v4);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v5);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v6);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v7);
  sub_10000E70C();
  sub_100003990(v8);
  v9 = sub_10022C350(&unk_100CB2CF0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  sub_100003918(v18);
  v895 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_100003848();
  v886 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_100003878();
  v885 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_100003878();
  v884 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  sub_100003878();
  v883 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  sub_100003918(v31);
  v893 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_10000E70C();
  sub_100003918(v44);
  v897 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v45);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_10000E70C();
  sub_100003918(v53);
  v896 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v54);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_10000E70C();
  sub_100003918(v62);
  v900 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v63);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_10000E70C();
  sub_100003918(v71);
  v898 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v72);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_10000E70C();
  v81 = sub_100003918(v80);
  v889 = type metadata accessor for ModalViewState(v81);
  sub_1000037E8();
  __chkstk_darwin(v82);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  v887 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  v890 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_10000E70C();
  sub_100003990(v101);
  v102 = sub_10022C350(&qword_100CA65E8);
  v103 = sub_100003810(v102);
  __chkstk_darwin(v103);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_10000E70C();
  sub_100003990(v119);
  v120 = sub_10022C350(&qword_100CA6610);
  v121 = sub_100003810(v120);
  __chkstk_darwin(v121);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_10000E70C();
  sub_100003990(v137);
  v138 = sub_10022C350(&qword_100CA6618);
  v139 = sub_100003810(v138);
  __chkstk_darwin(v139);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v141);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_10000E70C();
  sub_100003990(v155);
  v156 = sub_10022C350(&qword_100CA6620);
  v157 = sub_100003810(v156);
  __chkstk_darwin(v157);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_10000E70C();
  sub_100003990(v173);
  v174 = sub_10022C350(&qword_100CA6628);
  v175 = sub_100003810(v174);
  __chkstk_darwin(v175);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v189);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_10000E70C();
  sub_100003990(v191);
  v192 = sub_10022C350(&qword_100CA6630);
  v193 = sub_100003810(v192);
  __chkstk_darwin(v193);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v198);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v199);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v208);
  sub_10000E70C();
  sub_100003990(v209);
  v210 = sub_10022C350(&qword_100CA6638);
  v211 = sub_100003810(v210);
  __chkstk_darwin(v211);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v212);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v217);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v218);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v222);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v223);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v224);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_10000E70C();
  sub_100003990(v227);
  v228 = sub_10022C350(&qword_100CA6640);
  v229 = sub_100003810(v228);
  __chkstk_darwin(v229);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v230);
  sub_100003878();
  sub_100003908();
  v232 = __chkstk_darwin(v231);
  v234 = &v750 - v233;
  v235 = __chkstk_darwin(v232);
  v237 = &v750 - v236;
  __chkstk_darwin(v235);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v238);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v240);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v241);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v242);
  sub_100003878();
  sub_100003908();
  v244 = __chkstk_darwin(v243);
  v246 = &v750 - v245;
  v247 = __chkstk_darwin(v244);
  v249 = &v750 - v248;
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v250);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v251);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v252);
  sub_10000E70C();
  sub_100003918(v253);
  v254 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v759 = v255;
  __chkstk_darwin(v256);
  sub_1000037D8();
  v259 = v258 - v257;
  active = type metadata accessor for LocationViewerActiveLocationState();
  v261 = sub_100003810(active);
  __chkstk_darwin(v261);
  sub_1000037D8();
  v264 = v263 - v262;
  v265 = type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v266);
  sub_1000037D8();
  v269 = v268 - v267;
  v894 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  v271 = __chkstk_darwin(v270);
  v272 = __chkstk_darwin(v271);
  v273 = __chkstk_darwin(v272);
  __chkstk_darwin(v273);
  v275 = __chkstk_darwin(&v750 - v274);
  v276 = __chkstk_darwin(v275);
  v277 = __chkstk_darwin(v276);
  v278 = __chkstk_darwin(v277);
  v279 = __chkstk_darwin(v278);
  v288 = &v750 - v287;
  switch(v891)
  {
    case 1:
      v886 = v280;
      v362 = sub_100003BCC(v853);
      sub_1000D3D0C(v362, v363, v364);
      v365 = sub_100003BCC(&v858);
      sub_10001B350(v365, v366, v367, v900);
      v368 = sub_100003BCC(&v863);
      sub_10001B350(v368, v369, v370, v896);
      v371 = sub_100003BCC(&v868);
      sub_10001B350(v371, v372, v373, v897);
      v374 = *v265;
      sub_10001BBFC();
      sub_100037F80();
      sub_100003934();
      v375 = v892;
      sub_10001B350(v376, v377, v378, v892);
      v379 = *v237;
      v891 = *(v237 + 1);
      v380 = v237[17];
      v381 = v237[18];
      v382 = v237[19];
      v383 = v237[20];
      sub_10003778C();
      sub_100051BBC();
      sub_100003BDC(v249);
      v878 = v374;
      LODWORD(v885) = v380;
      LODWORD(v884) = v381;
      LODWORD(v882) = v382;
      LODWORD(v881) = v383;
      LODWORD(v880) = v379;
      if (v316)
      {
        v573 = v888;
        v574 = v834;
        (*(v888 + 16))(v834, &v237[v893[11]], v375);
        v384 = sub_1000131C4();
        v374 = sub_100024D10(v384, v385, v375);

        if (v374 != 1)
        {
          sub_1000180EC(v249, &unk_100CB2CF0);
        }
      }

      else
      {
        v573 = v888;
        v574 = v834;
        (*(v888 + 32))(v834, v249, v375);
      }

      sub_1000421D0();
      v576 = v237[v575];
      v577 = v237;
      v579 = v237[v578];
      v580 = *(v577 + v382[16]);
      v581 = *(v577 + v382[17]);
      v582 = *(v577 + v382[18]);
      sub_1000182D0(v577);
      v583 = v844;
      *v844 = v880;
      *(v583 + 1) = v891;
      v583[16] = 1;
      v583[17] = v885;
      sub_1000D4178(v884);
      (*(v573 + 32))(&v583[v584], v574);
      sub_100043950();
      v583[v585] = v576;
      v583[v382[15]] = v579;
      v583[v382[16]] = v580;
      v583[v382[17]] = v581;
      v583[v382[18]] = v582;
      sub_10000E7B0();
      sub_10001B350(v586, v587, v588, v382);
      v589 = sub_100003BCC(&v877);
      sub_10001B350(v589, v590, v591, v895);
      v592 = sub_100003BCC(&v882);
      v593 = v894;
      sub_10001B350(v592, v594, v595, v894);
      v596 = v799;
      sub_100003934();
      sub_10001B350(v597, v598, v599, v889);
      sub_1000227DC();
      sub_1000131D0(v600);
      sub_1000113EC();
      sub_1002A2BB0();
      sub_1000131DC();
      sub_100051BBC();
      sub_10000554C(v596);
      if (v316)
      {
        sub_1000180EC(v596, &qword_100CA65E8);
      }

      else
      {
        sub_1000141BC();
        sub_1000CA5D8(v374, v601);
        sub_100005518();
        sub_100072EC8();
      }

      sub_100005518();
      sub_100072EC8();
      v602 = *(v579 + 16);
      LODWORD(v891) = *(v579 + 24);
      sub_1000113EC();
      sub_100051BBC();
      v603 = sub_10000C7F0();
      v604 = v898;
      sub_1000038B4(v603, v605, v898);
      v606 = v900;
      v892 = v602;
      if (v316)
      {
        sub_1000175E8();
        sub_1002A2BB0();
        v607 = sub_10000C7F0();
        v609 = sub_100024D10(v607, v608, v604);

        v610 = v374;
        v611 = v815;
        if (v609 != 1)
        {
          sub_1000180EC(v610, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072EC8();

        v611 = v815;
      }

      sub_100051BBC();
      v612 = sub_10000C7F0();
      sub_1000038B4(v612, v613, v606);
      if (v316)
      {
        sub_10002014C();
        sub_1000134E0();
        sub_1002A2BB0();
        v614 = sub_10000C7F0();
        sub_1000038B4(v614, v615, v606);
        v616 = v831;
        v617 = v819;
        if (!v316)
        {
          sub_1000180EC(v611, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072EC8();
        v616 = v831;
        v617 = v819;
      }

      sub_1000113EC();
      sub_100051BBC();
      sub_100003BDC(v611);
      if (v316)
      {
        sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1002A2BB0();
        sub_100003BDC(v611);
        v618 = v823;
        if (!v316)
        {
          sub_1000180EC(v611, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072EC8();
        v618 = v823;
      }

      sub_1000870F8(&v868);
      sub_100051BBC();
      sub_100003BFC(v617);
      if (v316)
      {
        sub_10004962C();
        sub_1002A2BB0();
        sub_100003BFC(v617);
        v619 = v827;
        if (!v316)
        {
          sub_1000180EC(v617, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100072EC8();
        v619 = v827;
      }

      sub_1000131E8(&v873);
      sub_100051BBC();
      sub_10000E7EC(v618);
      if (v316)
      {
        sub_10001BBFC();
        sub_1000AF4E8(&v901);
        sub_1002A2BB0();
        sub_10000E7EC(v618);
        if (!v316)
        {
          sub_1000180EC(v618, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072EC8();
      }

      sub_100030224(&v877);
      sub_100051BBC();
      sub_100005404(v619);
      if (v316)
      {
        sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1002A2BB0();
        sub_100005404(v619);
        if (!v316)
        {
          sub_1000180EC(v619, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072EC8();
      }

      sub_1000C893C(&v882);
      sub_100051BBC();
      sub_10000C814(v616);
      if (v316)
      {
        sub_10000FA9C();
        v620 = v886;
        sub_1002A2BB0();
        sub_10000C814(v616);
        if (!v316)
        {
          sub_1000180EC(v616, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        v620 = v886;
        sub_100072EC8();
      }

      sub_100005518();
      v621 = v890;
      sub_100072EC8();
      sub_1000421C0();
      sub_10003A0FC();
      v623 = *(v622 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      LOBYTE(v749) = v602;
      v748 = v620;
      v502 = sub_100003B6C();
      sub_10003E038(v892, v891, v860, v865, v870, v874[1], v879, v883, v748, v621, v617, v382, v618, v619, v749, v593, v579, v623, v750, v751, v752, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764, v765, v766);
      sub_100052654();

      goto LABEL_223;
    case 2:
      v891 = v279;
      v320 = sub_100003BCC(v854);
      sub_1000D3D0C(v320, v321, v322);
      v323 = sub_100003BCC(&v859);
      sub_10001B350(v323, v324, v325, v900);
      v326 = sub_100003BCC(&v864);
      sub_10001B350(v326, v327, v328, v896);
      v329 = sub_100003BCC(&v869);
      sub_10001B350(v329, v330, v331, v897);
      v332 = *v265;
      sub_10001BBFC();
      sub_100037F80();
      sub_100003934();
      v333 = v892;
      sub_10001B350(v334, v335, v336, v892);
      sub_1000718F8();
      LODWORD(v882) = v337;
      LODWORD(v881) = v237[20];
      sub_10003778C();
      sub_100051BBC();
      sub_10003797C();
      v879 = v332;
      LODWORD(v887) = v234;
      LODWORD(v886) = v269;
      LODWORD(v885) = v259;
      LODWORD(v883) = v288;
      if (v316)
      {
        sub_100071680();
        v464 = v835;
        v338(v835);
        v339 = sub_1000131C4();
        sub_1000EFED0(v339, v340);

        if (v333 != 1)
        {
          sub_1000180EC(v249, &unk_100CB2CF0);
        }
      }

      else
      {
        v259 = v888;
        v464 = v835;
        (*(v888 + 32))(v835, v249, v333);
      }

      v465 = v893;
      v466 = v237[v893[12]];
      v467 = v237[v893[13]];
      v468 = v237;
      v469 = v237[v893[14]];
      v470 = *(v468 + v893[17]);
      LODWORD(v888) = *(v468 + v893[18]);
      sub_1000182D0(v468);
      sub_1000BCDB8(v874);
      *(v269 + 16) = v886;
      *(v269 + 17) = v885;
      sub_1000D4178(v883);
      (*(v259 + 32))(v269 + v471, v464, v892);
      *(v269 + v465[12]) = v466;
      *(v269 + v465[13]) = v467;
      sub_10003253C(v465[14]);
      *(v269 + v472) = 1;
      *(v269 + v465[17]) = v470;
      *(v269 + v465[18]) = v888;
      sub_10000E7B0();
      sub_10001B350(v473, v474, v475, v465);
      v476 = sub_100003BCC(&v878);
      sub_10001B350(v476, v477, v478, v895);
      v479 = sub_100003BCC(&v886);
      sub_10001B350(v479, v480, v481, v894);
      v482 = v800;
      sub_100003934();
      sub_10001B350(v483, v484, v485, v889);
      sub_1000227DC();
      sub_1000131D0(v486);
      sub_100037798();
      sub_10003778C();
      sub_100051BBC();
      sub_10003797C();
      if (v316)
      {
        sub_1000180EC(v482, &qword_100CA65E8);
      }

      else
      {
        sub_1000141BC();
        sub_1000CA5D8(v464, v487);
        sub_100005518();
        sub_100072EC8();
      }

      v488 = v816;
      v489 = v812;
      sub_100005518();
      sub_100072EC8();
      v490 = *(v469 + 16);
      LODWORD(v892) = *(v469 + 24);
      sub_1000870F8(v854);
      sub_100051BBC();
      v491 = sub_100007FC4();
      v492 = v898;
      sub_1000038B4(v491, v493, v898);
      v900 = v490;
      if (v316)
      {
        sub_1000175E8();
        sub_1002A2BB0();
        v494 = sub_100007FC4();
        sub_1000EFED0(v494, v495);

        if (v492 != 1)
        {
          sub_1000180EC(v489, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072EC8();
      }

      sub_100051BBC();
      sub_100003BDC(v488);
      if (v316)
      {
        sub_10002014C();
        sub_1000134E0();
        sub_1002A2BB0();
        sub_100003BDC(v488);
        v496 = v832;
        v497 = v820;
        if (!v316)
        {
          sub_1000180EC(v488, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072EC8();
        v496 = v832;
        v497 = v820;
      }

      v498 = v797[0];
      sub_100051BBC();
      sub_10000C814(v498);
      if (v316)
      {
        sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1002A2BB0();
        sub_10000C814(v498);
        v499 = v824;
        if (!v316)
        {
          sub_1000180EC(v498, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072EC8();
        v499 = v824;
      }

      sub_1000131E8(&v869);
      sub_100051BBC();
      sub_100005404(v497);
      if (v316)
      {
        sub_10004962C();
        sub_1002A2BB0();
        sub_100005404(v497);
        v500 = v828;
        if (!v316)
        {
          sub_1000180EC(v497, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100072EC8();
        v500 = v828;
      }

      sub_1000E31B8(v874);
      sub_100051BBC();
      sub_10000E7EC(v499);
      if (v316)
      {
        sub_10001BBFC();
        sub_1000AF4E8(&v902);
        sub_1002A2BB0();
        sub_10000E7EC(v499);
        if (!v316)
        {
          sub_1000180EC(v499, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072EC8();
      }

      sub_1000436AC(&v878);
      sub_100051BBC();
      sub_10000E7EC(v500);
      if (v316)
      {
        sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1002A2BB0();
        sub_10000E7EC(v500);
        if (!v316)
        {
          sub_1000180EC(v500, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072EC8();
      }

      sub_100003940();
      sub_100051BBC();
      sub_100003BFC(v496);
      if (v316)
      {
        sub_10000FA9C();
        sub_1002A2BB0();
        sub_100003BFC(v496);
        if (!v316)
        {
          sub_1000180EC(v496, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100072EC8();
      }

      sub_100005518();
      v501 = v890;
      sub_100072EC8();
      sub_1000B0E48();
      sub_1000B0C14();
      type metadata accessor for MainState._Storage(0);
      v502 = sub_100003B6C();
      sub_1000162BC();
      v751 = v501;
      v750 = v891;
      v503 = v900;
      v504 = v892;
      v505 = v861;
      v506 = v866;
      v507 = v871;
      v508 = v875;
      v509 = v880;
      v510 = v884;
      goto LABEL_121;
    case 3:
      v891 = v285;
      v341 = sub_100003BCC(v855);
      sub_1000D3D0C(v341, v342, v343);
      v344 = sub_100003BCC(&v860);
      sub_10001B350(v344, v345, v346, v900);
      v347 = sub_100003BCC(&v865);
      sub_10001B350(v347, v348, v349, v896);
      v350 = sub_100003BCC(&v870);
      sub_10001B350(v350, v351, v352, v897);
      sub_10001BBFC();
      v880 = v353;
      sub_100037F80();
      v354 = v806;
      sub_100003934();
      v355 = v892;
      sub_10001B350(v356, v357, v358, v892);
      LODWORD(v882) = *v237;
      v359 = *(v237 + 1);
      LODWORD(v887) = v237[17];
      LODWORD(v886) = v237[18];
      LODWORD(v884) = v237[19];
      LODWORD(v883) = v237[20];
      sub_10003778C();
      sub_100051BBC();
      sub_10003797C();
      if (v316)
      {
        v511 = v888;
        v512 = v836;
        (*(v888 + 16))(v836, &v237[v893[11]], v355);
        v360 = sub_1000131C4();
        sub_1000EFED0(v360, v361);

        if (v355 != 1)
        {
          sub_1000180EC(v354, &unk_100CB2CF0);
        }
      }

      else
      {
        v511 = v888;
        v512 = v836;
        (*(v888 + 32))(v836, v354, v355);
      }

      v513 = v893;
      v514 = v237[v893[12]];
      v515 = v237[v893[13]];
      v516 = v237[v893[14]];
      v517 = v237;
      v518 = v237[v893[15]];
      v519 = *(v517 + v893[16]);
      sub_1000182D0(v517);
      v520 = v845;
      *v845 = v882;
      *(v520 + 1) = v359;
      v520[16] = 0;
      v520[17] = v887;
      v520[18] = v886;
      v520[19] = v884;
      v520[20] = v883;
      (*(v511 + 32))(&v520[v513[11]], v512, v892);
      v520[v513[12]] = v514;
      v520[v513[13]] = v515;
      v520[v513[14]] = v516;
      v520[v513[15]] = v518;
      v520[v513[16]] = v519;
      v520[v513[17]] = 1;
      v520[v513[18]] = 0;
      sub_10000E7B0();
      sub_10001B350(v521, v522, v523, v513);
      v524 = sub_100003BCC(&v879);
      sub_10001B350(v524, v525, v526, v895);
      v527 = sub_100003BCC(&v883);
      sub_10001B350(v527, v528, v529, v894);
      v530 = v801;
      sub_100003934();
      sub_10001B350(v531, v532, v533, v889);
      sub_1000227DC();
      sub_1000131D0(v534);
      v535 = v803;
      sub_1002A2BB0();
      sub_10003778C();
      sub_100051BBC();
      sub_10003797C();
      if (v316)
      {
        sub_1000180EC(v530, &qword_100CA65E8);
      }

      else
      {
        sub_1000141BC();
        sub_1000CA5D8(v535, v536);
        sub_100005518();
        sub_100072EC8();
      }

      v537 = v897;
      v538 = v813;
      sub_100005518();
      sub_100072EC8();
      v539 = *(v518 + 16);
      LODWORD(v889) = *(v518 + 24);
      sub_100051BBC();
      v540 = v898;
      sub_1000038B4(v538, 1, v898);
      v892 = v539;
      if (v316)
      {
        sub_1000175E8();
        sub_1002A2BB0();
        sub_1000EFED0(v538, 1);

        if (v540 != 1)
        {
          sub_1000180EC(v538, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072EC8();
      }

      v541 = v794;
      sub_100051BBC();
      sub_100003BDC(v541);
      if (v316)
      {
        sub_10002014C();
        sub_1000134E0();
        sub_1002A2BB0();
        sub_100003BDC(v541);
        v542 = v829;
        if (!v316)
        {
          sub_1000180EC(v541, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072EC8();
        v542 = v829;
      }

      v543 = v797[1];
      sub_100051BBC();
      sub_10000E7EC(v543);
      if (v316)
      {
        sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1002A2BB0();
        sub_10000E7EC(v543);
        if (!v316)
        {
          sub_1000180EC(v543, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072EC8();
      }

      v544 = v797[3];
      sub_100051BBC();
      sub_100005404(v544);
      if (v316)
      {
        sub_10004962C();
        sub_1002A2BB0();
        sub_100005404(v544);
        if (!v316)
        {
          sub_1000180EC(v544, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100072EC8();
      }

      sub_10003778C();
      sub_100051BBC();
      sub_100003BFC(v537);
      if (v316)
      {
        sub_10001BBFC();
        sub_1000AF4E8(&v903);
        sub_1002A2BB0();
        sub_100003BFC(v537);
        if (!v316)
        {
          sub_1000180EC(v537, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072EC8();
      }

      sub_100051BBC();
      sub_10000554C(v542);
      if (v316)
      {
        sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1002A2BB0();
        sub_10000554C(v542);
        if (!v316)
        {
          sub_1000180EC(v542, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072EC8();
      }

      v545 = v805;
      sub_100051BBC();
      sub_10000C814(v545);
      if (v316)
      {
        sub_10000FA9C();
        sub_1002A2BB0();
        sub_10000C814(v545);
        if (!v316)
        {
          sub_1000180EC(v545, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100072EC8();
      }

      sub_100005518();
      v546 = v890;
      sub_100072EC8();
      sub_1000B0E48();
      sub_1000B0C14();
      type metadata accessor for MainState._Storage(0);
      v502 = sub_100003B6C();
      sub_1000162BC();
      v751 = v546;
      v750 = v891;
      v503 = v892;
      v504 = v889;
      v505 = v862;
      v506 = v867;
      v507 = v872;
      v508 = v876;
      v509 = v881;
      v510 = v885;
LABEL_121:
      sub_10003E038(v503, v504, v505, v506, v507, v508, v509, v510, v750, v751, v752, v753, v754, v755, v756, v757, v758, v759, v760, *(&v760 + 1), v761, v762, v763, v764, v765, v766, v767, v768, v769, v770, v771, v772, v773, v774, v775);
      sub_100052654();

      goto LABEL_223;
    case 4:
      v891 = v284;
      v298 = sub_100003BCC(v856);
      sub_1000D3D0C(v298, v299, v300);
      v301 = sub_100003BCC(&v861);
      sub_10001B350(v301, v302, v303, v900);
      v304 = sub_100003BCC(&v866);
      sub_10001B350(v304, v305, v306, v896);
      v307 = sub_100003BCC(&v871);
      sub_10001B350(v307, v308, v309, v897);
      v310 = *v265;
      sub_10001BBFC();
      sub_100037F80();
      sub_100003934();
      v311 = v892;
      sub_10001B350(v312, v313, v314, v892);
      sub_1000718F8();
      LODWORD(v881) = v315;
      LODWORD(v880) = v237[20];
      sub_10003778C();
      sub_100051BBC();
      sub_10003797C();
      v879 = v310;
      LODWORD(v887) = v234;
      LODWORD(v885) = v269;
      LODWORD(v884) = v259;
      LODWORD(v883) = v288;
      if (v316)
      {
        sub_100071680();
        v415 = v837;
        v317(v837);
        v318 = sub_1000131C4();
        sub_1000EFED0(v318, v319);

        if (v311 != 1)
        {
          sub_1000180EC(v249, &unk_100CB2CF0);
        }
      }

      else
      {
        v259 = v888;
        v415 = v837;
        (*(v888 + 32))(v837, v249, v311);
      }

      sub_1000421D0();
      v416 = v237;
      v418 = v237[v417];
      v419 = *(v416 + v254[16]);
      v420 = *(v416 + v254[17]);
      sub_1000182D0(v416);
      sub_1000BCDB8(&v875);
      *(v269 + 16) = v885;
      *(v269 + 17) = v884;
      *(v269 + 18) = v883;
      *(v269 + 19) = v881;
      *(v269 + 20) = v880;
      (*(v259 + 32))(v269 + v254[11], v415, v892);
      sub_100043950();
      sub_10003253C(v421);
      *(v269 + v422) = v419;
      *(v269 + v254[17]) = v420;
      *(v269 + v254[18]) = 1;
      sub_10000E7B0();
      sub_10001B350(v423, v424, v425, v254);
      v426 = sub_100003BCC(&v880);
      sub_10001B350(v426, v427, v428, v895);
      v429 = sub_100003BCC(&v884);
      sub_10001B350(v429, v430, v431, v894);
      v432 = v802;
      sub_100003934();
      sub_10001B350(v433, v434, v435, v889);
      sub_1000227DC();
      sub_1000131D0(v436);
      v437 = v804;
      sub_1002A2BB0();
      sub_10003778C();
      sub_100051BBC();
      sub_10000554C(v432);
      if (v316)
      {
        sub_1000180EC(v432, &qword_100CA65E8);
      }

      else
      {
        sub_1000141BC();
        sub_1000CA5D8(v437, v438);
        sub_100005518();
        sub_100072EC8();
      }

      v439 = v900;
      v440 = v898;
      v441 = v817;
      sub_100005518();
      sub_100072EC8();
      v442 = *(v418 + 16);
      LODWORD(v898) = *(v418 + 24);
      v443 = v793;
      sub_100051BBC();
      sub_100005404(v443);
      v900 = v442;
      if (v316)
      {
        sub_1000175E8();
        sub_1002A2BB0();
        sub_100021CF8(v443, 1);

        if (v440 != 1)
        {
          sub_1000180EC(v443, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072EC8();
      }

      sub_1000C893C(&v861);
      sub_100051BBC();
      v444 = sub_10000C834();
      sub_1000038B4(v444, v445, v439);
      if (v316)
      {
        sub_10002014C();
        sub_1000134E0();
        sub_1002A2BB0();
        v446 = sub_10000C834();
        sub_1000038B4(v446, v447, v439);
        v448 = v833;
        v449 = v821;
        if (!v316)
        {
          sub_1000180EC(v441, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072EC8();
        v448 = v833;
        v449 = v821;
      }

      v450 = v797[2];
      sub_100051BBC();
      sub_100003BDC(v450);
      if (v316)
      {
        sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1002A2BB0();
        sub_100003BDC(v450);
        v451 = v825;
        if (!v316)
        {
          sub_1000180EC(v450, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072EC8();
        v451 = v825;
      }

      sub_1000870F8(&v871);
      sub_100051BBC();
      v452 = sub_100007FC4();
      sub_1000038B4(v452, v453, v897);
      if (v316)
      {
        sub_10004962C();
        sub_1002A2BB0();
        sub_10000554C(v449);
        v454 = v830;
        if (!v316)
        {
          sub_1000180EC(v449, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100072EC8();
        v454 = v830;
      }

      sub_1000131E8(&v875);
      sub_100051BBC();
      sub_10000E7EC(v451);
      if (v316)
      {
        sub_10001BBFC();
        sub_1000AF4E8(&v902);
        sub_1002A2BB0();
        sub_10000E7EC(v451);
        if (!v316)
        {
          sub_1000180EC(v451, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072EC8();
      }

      sub_100030224(&v880);
      sub_100051BBC();
      sub_10000554C(v454);
      if (v316)
      {
        sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1002A2BB0();
        sub_10000554C(v454);
        if (!v316)
        {
          sub_1000180EC(v454, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072EC8();
      }

      sub_1000436AC(&v884);
      sub_100051BBC();
      sub_10000C814(v448);
      if (v316)
      {
        sub_10000FA9C();
        sub_1000436A0();
        sub_1002A2BB0();
        sub_10000C814(v448);
        if (!v316)
        {
          sub_1000180EC(v448, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_1000436A0();
        sub_100072EC8();
      }

      sub_100005518();
      sub_100072EC8();
      sub_1000421C0();
      sub_10003A0FC();
      sub_100087104();
      sub_100003B6C();
      sub_10000E80C();
      v456 = v900;
      v457 = v898;
      v458 = v863;
      v459 = v868;
      v460 = v873;
      v461 = v877;
      v462 = v882;
      v463 = v886;
      goto LABEL_222;
    case 5:
      v892 = v282;
      sub_100003934();
      v386 = v898;
      v388 = v387;
      sub_10001B350(v389, v390, v391, v898);
      v392 = sub_100003BCC(v857);
      sub_10001B350(v392, v393, v394, v900);
      v395 = sub_100003BCC(&v862);
      sub_10001B350(v395, v396, v397, v896);
      v398 = sub_100003BCC(&v867);
      sub_10001B350(v398, v399, v400, v897);
      v401 = sub_100003BCC(&v872);
      sub_10001B350(v401, v402, v403, v893);
      v404 = sub_100003BCC(&v876);
      sub_10001B350(v404, v405, v406, v895);
      v407 = sub_100003BCC(&v881);
      sub_10001B350(v407, v408, v409, v894);
      v410 = v798;
      *v798 = 0;
      v411 = v889;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v412, v413, v414, v411);
      sub_1000227DC();
      sub_1000131DC();
      sub_1002A2BB0();
      sub_1000519E0();
      sub_100051BBC();
      sub_10000554C(v410);
      if (v316)
      {
        sub_1000180EC(v410, &qword_100CA65E8);
      }

      else
      {
        sub_1000141BC();
        sub_1000CA5D8(v388, v624);
        sub_100005518();
        sub_100072EC8();
      }

      v625 = v814;
      sub_100005518();
      sub_100072EC8();
      v626 = *(v899 + 16);
      LODWORD(v889) = *(v899 + 24);
      sub_100051BBC();
      sub_100005404(v234);
      v627 = v795;
      v891 = v626;
      if (v316)
      {
        sub_1000175E8();
        sub_1002A2BB0();
        sub_100021CF8(v234, 1);

        if (v386 != 1)
        {
          sub_1000180EC(v234, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072EC8();
      }

      sub_1000C893C(v857);
      sub_100051BBC();
      v628 = sub_10000C834();
      sub_1000038B4(v628, v629, v900);
      if (v316)
      {
        sub_10002014C();
        sub_1000134E0();
        sub_1002A2BB0();
        sub_100003BFC(v625);
        v630 = v826;
        v631 = v822;
        v632 = v818;
        if (!v316)
        {
          sub_1000180EC(v625, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072EC8();
        v630 = v826;
        v631 = v822;
        v632 = v818;
      }

      sub_1000870F8(&v862);
      sub_100051BBC();
      sub_10000556C(v627);
      if (v316)
      {
        sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1002A2BB0();
        sub_10000556C(v627);
        if (!v316)
        {
          sub_1000180EC(v627, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072EC8();
      }

      sub_1000E31B8(&v867);
      sub_100051BBC();
      sub_100003BDC(v632);
      if (v316)
      {
        sub_10004962C();
        sub_1002A2BB0();
        sub_100003BDC(v632);
        if (!v316)
        {
          sub_1000180EC(v632, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100072EC8();
      }

      sub_100030224(&v872);
      sub_100051BBC();
      sub_10000E7EC(v631);
      if (v316)
      {
        sub_10001BBFC();
        sub_1002A2BB0();
        sub_10000E7EC(v631);
        if (!v316)
        {
          sub_1000180EC(v631, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072EC8();
      }

      sub_1000436AC(&v876);
      sub_100051BBC();
      sub_10000554C(v630);
      if (v316)
      {
        sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1002A2BB0();
        sub_10000554C(v630);
        if (!v316)
        {
          sub_1000180EC(v630, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072EC8();
      }

      sub_1000113EC();
      sub_100051BBC();
      v633 = sub_10000C7F0();
      sub_10001627C(v633, v634);
      if (v316)
      {
        sub_10000FA9C();
        sub_1002A2BB0();
        sub_100005404(v626);
        if (!v316)
        {
          sub_1000180EC(v626, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_100072EC8();
      }

      sub_100005518();
      sub_100079478();
      sub_1000421C0();
      sub_10003A0FC();
      sub_100087104();
      sub_100003B6C();
      sub_10000E80C();
      v456 = v891;
      v457 = v889;
      v458 = v858;
      v459 = v859;
      v460 = v864;
      v461 = v869;
      v462 = v874[0];
      v635 = &v901;
      goto LABEL_221;
    default:
      v289 = v899;
      v892 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications;
      if (*(v899 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications) == 1)
      {
        v887 = v281;
        v891 = v286;
        sub_10000FA9C();
        v888 = v290;
        sub_1002A2BB0();
        v291 = v894;
        sub_1002A2BB0();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1000CA5D8(v269, type metadata accessor for ViewState.SecondaryViewState);
        }

        else
        {
          v636 = *v269;
          if (*&v288[*(v291 + 36) + 8] != 1 || (v637 = [objc_opt_self() currentDevice], objc_msgSend(v637, "userInterfaceIdiom"), v637, (v288[*(v894 + 28)] & 1) != 0))
          {
            sub_1000A7B74();
            sub_1002A2BB0();
            sub_10089E774(v259);
            sub_1000CA5D8(v264, type metadata accessor for LocationViewerActiveLocationState);
            Location.Identifier.kind.getter();
            (*(v759 + 8))(v259, v254);
            v638 = sub_10074A0C8();
            v293 = v897;
            if (v638)
            {
              v639 = sub_100003BCC(v791);
              v640 = v898;
              sub_10001B350(v639, v641, v642, v898);
              v643 = sub_100003BCC(v792);
              sub_10001B350(v643, v644, v645, v900);
              v646 = sub_100003BCC(&v793);
              sub_10001B350(v646, v647, v648, v896);
              v649 = sub_100003BCC(&v794);
              sub_10001B350(v649, v650, v651, v293);
              v652 = sub_100003BCC(&v795);
              sub_10001B350(v652, v653, v654, v893);
              v655 = sub_100003BCC(v796);
              v656 = v895;
              sub_10001B350(v655, v657, v658, v895);
              v659 = sub_100003BCC(v797);
              sub_10001B350(v659, v660, v661, v894);
              v662 = v760;
              v663 = v889;
              swift_storeEnumTagMultiPayload();
              sub_10000E7B0();
              sub_10001B350(v664, v665, v666, v663);
              sub_1000227DC();
              sub_100037798();
              sub_1000519E0();
              sub_100095588();
              sub_100003BFC(v662);
              if (v316)
              {
                sub_1000180EC(v662, &qword_100CA65E8);
              }

              else
              {
                sub_1000141BC();
                sub_1000CA5D8(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v728);
                sub_100005518();
                sub_100072EC8();
              }

              v729 = v752;
              sub_100005518();
              sub_100072EC8();
              v730 = *(v289 + 16);
              LODWORD(v889) = *(v289 + 24);
              sub_1000519E0();
              sub_100095588();
              sub_100005404(v662);
              v891 = v730;
              if (v316)
              {
                sub_1000175E8();
                sub_1002A2BB0();
                v731 = sub_100007FC4();
                v733 = sub_100024D10(v731, v732, v640);

                v734 = v754;
                if (v733 != 1)
                {
                  sub_1000180EC(v662, &qword_100CA6640);
                }
              }

              else
              {
                sub_10000E7D4();
                sub_100072EC8();

                v734 = v754;
              }

              sub_1000131DC();
              sub_100095588();
              v735 = sub_1000162A4();
              v736 = v900;
              sub_1000038B4(v735, v737, v900);
              if (v316)
              {
                sub_10002014C();
                sub_1000134E0();
                sub_1002A2BB0();
                v738 = sub_1000162A4();
                sub_1000038B4(v738, v739, v736);
                v740 = v756;
                v741 = v753;
                if (!v316)
                {
                  sub_1000180EC(v730, &qword_100CA6638);
                }
              }

              else
              {
                sub_100003BB4();
                sub_100072EC8();
                v740 = v756;
                v741 = v753;
              }

              sub_1000131E8(&v793);
              sub_100095588();
              sub_10000556C(v729);
              if (v316)
              {
                sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
                sub_1002A2BB0();
                sub_10000556C(v729);
                if (!v316)
                {
                  sub_1000180EC(v729, &qword_100CA6630);
                }
              }

              else
              {
                sub_10000E7BC();
                sub_100072EC8();
              }

              sub_1000870F8(&v794);
              sub_100095588();
              v742 = sub_100007FC4();
              sub_1000038B4(v742, v743, v897);
              if (v316)
              {
                sub_10004962C();
                sub_1002A2BB0();
                sub_100003BDC(v741);
                if (!v316)
                {
                  sub_1000180EC(v741, &qword_100CA6628);
                }
              }

              else
              {
                sub_100028144();
                sub_100072EC8();
              }

              sub_1000E31B8(&v795);
              sub_100095588();
              sub_10000E7EC(v734);
              if (v316)
              {
                sub_10001BBFC();
                sub_1002A2BB0();
                sub_10000E7EC(v734);
                if (!v316)
                {
                  sub_1000180EC(v734, &qword_100CA6620);
                }
              }

              else
              {
                sub_1000134C8();
                sub_100072EC8();
              }

              sub_1000436AC(v796);
              sub_100095588();
              sub_10003797C();
              if (v316)
              {
                sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
                sub_1002A2BB0();
                sub_10003797C();
                if (!v316)
                {
                  sub_1000180EC(v740, &qword_100CA6618);
                }
              }

              else
              {
                sub_100003B9C();
                sub_100072EC8();
              }

              v900 = v636;
              sub_1000113EC();
              sub_100095588();
              v744 = sub_10000C7F0();
              sub_10001627C(v744, v745);
              if (v316)
              {
                sub_10000FA9C();
                v746 = v887;
                sub_1002A2BB0();
                sub_100005404(v656);
                if (!v316)
                {
                  sub_1000180EC(v656, &qword_100CA6610);
                }
              }

              else
              {
                sub_100003B84();
                v746 = v887;
                sub_100072EC8();
              }

              sub_100005518();
              sub_100079478();
              sub_1000B0E48();
              sub_1000B0C14();
              type metadata accessor for MainState._Storage(0);
              sub_100003B6C();
              sub_1000162BC();
              v751 = v656;
              v502 = v747;
              sub_10003E038(v891, v889, v761, v762, v763, v764, v765, v766, v746, v751, v752, v753, v754, v755, v756, v757, v758, v759, v760, *(&v760 + 1), v761, v762, v763, v764, v765, v766, v767, v768, v769, v770, v771, v772, v773, v774, v775);
              sub_100052654();

              sub_1000180EC(v760, &qword_100CA65E8);
              sub_1000180EC(v772, &qword_100CA6610);
              sub_1000180EC(v771, &qword_100CA6618);
              sub_1000180EC(v770, &qword_100CA6620);
              sub_1000180EC(*(&v769 + 1), &qword_100CA6628);
              sub_1000180EC(v769, &qword_100CA6630);
              sub_1000180EC(v768, &qword_100CA6638);
              v727 = v791;
              goto LABEL_258;
            }

            v295 = v894;
            v294 = v895;
            v296 = v893;
            v297 = v896;
            v292 = v898;
LABEL_226:
            v684 = v889;
            v685 = sub_100003BCC(v846);
            sub_10001B350(v685, v686, v687, v292);
            v688 = sub_100003BCC(v847);
            sub_10001B350(v688, v689, v690, v900);
            v691 = sub_100003BCC(v848);
            sub_10001B350(v691, v692, v693, v297);
            v694 = sub_100003BCC(v849);
            sub_10001B350(v694, v695, v696, v293);
            v697 = sub_100003BCC(v850);
            sub_10001B350(v697, v698, v699, v296);
            v700 = sub_100003BCC(v851);
            sub_10001B350(v700, v701, v702, v294);
            v703 = sub_100003BCC(v852);
            sub_10001B350(v703, v704, v705, v295);
            v706 = v790;
            *v790 = 0;
            swift_storeEnumTagMultiPayload();
            sub_10000E7B0();
            sub_10001B350(v707, v708, v709, v684);
            sub_1000227DC();
            sub_100037798();
            sub_1000131DC();
            sub_100095588();
            sub_10000554C(v706);
            if (v316)
            {
              sub_1000180EC(v706, &qword_100CA65E8);
            }

            else
            {
              sub_1000141BC();
              sub_1000CA5D8(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v710);
              sub_100005518();
              sub_100072EC8();
            }

            v711 = v773;
            sub_100005518();
            sub_100072EC8();
            v712 = *(v289 + 16);
            LODWORD(v896) = *(v289 + 24);
            sub_1000C893C(v846);
            sub_100095588();
            sub_100005404(v711);
            v713 = v777;
            v898 = v712;
            if (v316)
            {
              sub_1000175E8();
              sub_1002A2BB0();
              v714 = sub_10000C834();
              sub_100021CF8(v714, v715);

              if (v292 != 1)
              {
                sub_1000180EC(v711, &qword_100CA6640);
              }
            }

            else
            {
              sub_10000E7D4();
              sub_100072EC8();
            }

            sub_10003778C();
            sub_100095588();
            v716 = sub_1000131C4();
            if (sub_100024D10(v716, v717, v900) == 1)
            {
              v718 = v292;
              sub_10002014C();
              sub_1000134E0();
              sub_1002A2BB0();
              sub_100003BFC(v292);
              v719 = v775;
              v720 = v774;
              if (!v316)
              {
                sub_1000180EC(v718, &qword_100CA6638);
              }
            }

            else
            {
              sub_100003BB4();
              sub_100072EC8();
              v719 = v775;
              v720 = v774;
            }

            v721 = v776;
            sub_100095588();
            sub_10000556C(v721);
            if (v316)
            {
              sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
              sub_1002A2BB0();
              sub_10000556C(v721);
              if (!v316)
              {
                sub_1000180EC(v721, &qword_100CA6630);
              }
            }

            else
            {
              sub_10000E7BC();
              sub_100072EC8();
            }

            sub_1000E31B8(v849);
            sub_100095588();
            sub_10000554C(v713);
            if (v316)
            {
              sub_10004962C();
              sub_1002A2BB0();
              sub_10000554C(v713);
              if (!v316)
              {
                sub_1000180EC(v713, &qword_100CA6628);
              }
            }

            else
            {
              sub_100028144();
              sub_100072EC8();
            }

            sub_100030224(v850);
            sub_100095588();
            sub_10000E7EC(v720);
            if (v316)
            {
              sub_10001BBFC();
              sub_1002A2BB0();
              sub_10000E7EC(v720);
              if (!v316)
              {
                sub_1000180EC(v720, &qword_100CA6620);
              }
            }

            else
            {
              sub_1000134C8();
              sub_100072EC8();
            }

            sub_1000436AC(v851);
            sub_100095588();
            sub_10003797C();
            if (v316)
            {
              sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
              sub_1002A2BB0();
              sub_10003797C();
              if (!v316)
              {
                sub_1000180EC(v719, &qword_100CA6618);
              }
            }

            else
            {
              sub_100003B9C();
              sub_100072EC8();
            }

            sub_1000113EC();
            sub_100095588();
            v722 = sub_10000C7F0();
            sub_1000038B4(v722, v723, v295);
            if (v316)
            {
              sub_10000FA9C();
              sub_1000436A0();
              sub_1002A2BB0();
              v724 = sub_10000C7F0();
              sub_1000038B4(v724, v725, v295);
              if (!v316)
              {
                sub_1000180EC(v294, &qword_100CA6610);
              }
            }

            else
            {
              sub_100003B84();
              sub_1000436A0();
              sub_100072EC8();
            }

            sub_100005518();
            sub_100079478();
            sub_1000421C0();
            sub_10003A0FC();
            sub_100087104();
            sub_100003B6C();
            sub_10000E80C();
            v502 = v726;
            sub_10003E038(v898, v896, v784, v785, v786, v787, v788, v789, v750, v751, v752, v753, v754, v755, v756, v757, v758, v759, v760, *(&v760 + 1), v761, v762, v763, v764, v765, v766, v767, v768, v769, v770, v771, v772, v773, v774, v775);
            sub_100052654();

            sub_1000180EC(v790, &qword_100CA65E8);
            sub_1000180EC(v840, &qword_100CA6610);
            sub_1000180EC(v839[3], &qword_100CA6618);
            sub_1000180EC(v839[2], &qword_100CA6620);
            sub_1000180EC(v839[1], &qword_100CA6628);
            sub_1000180EC(v839[0], &qword_100CA6630);
            sub_1000180EC(v838, &qword_100CA6638);
            v727 = v846;
LABEL_258:
            sub_1000180EC(*(v727 - 32), &qword_100CA6640);
            return v502;
          }
        }

        v293 = v897;
        v292 = v898;
        sub_1000A7B74();
        v295 = v894;
        v294 = v895;
        v296 = v893;
        v297 = v896;
        goto LABEL_226;
      }

      v891 = v283;
      sub_100003934();
      sub_10001B350(v547, v548, v549, v898);
      v550 = sub_100003BCC(&v836);
      sub_10001B350(v550, v551, v552, v900);
      v553 = sub_100003BCC(v839);
      sub_10001B350(v553, v554, v555, v896);
      v556 = sub_100003BCC(&v840);
      sub_10001B350(v556, v557, v558, v897);
      v559 = sub_100003BCC(v841);
      sub_10001B350(v559, v560, v561, v893);
      v562 = sub_100003BCC(v842);
      sub_10001B350(v562, v563, v564, v895);
      v565 = sub_100003BCC(v843);
      sub_10001B350(v565, v566, v567, v894);
      v568 = v783;
      v569 = v889;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v570, v571, v572, v569);
      sub_1000227DC();
      sub_100037798();
      sub_1000519E0();
      sub_100051BBC();
      sub_10000554C(v568);
      if (v316)
      {
        sub_1000180EC(v568, &qword_100CA65E8);
      }

      else
      {
        sub_1000141BC();
        sub_1000CA5D8(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v667);
        sub_100005518();
        sub_100072EC8();
      }

      v668 = v778;
      sub_100005518();
      sub_100072EC8();
      v669 = *(v289 + 16);
      LODWORD(v888) = *(v289 + 24);
      sub_100051BBC();
      v670 = sub_1000162A4();
      v671 = v898;
      sub_10001627C(v670, v672);
      v673 = v782;
      v674 = v781;
      v889 = v669;
      if (v316)
      {
        sub_1000175E8();
        sub_1002A2BB0();
        v675 = sub_1000162A4();
        sub_100021CF8(v675, v676);

        if (v671 != 1)
        {
          sub_1000180EC(v246, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000E7D4();
        sub_100072EC8();
      }

      sub_1000C893C(&v836);
      sub_100051BBC();
      v677 = sub_10000C834();
      sub_1000038B4(v677, v678, v900);
      if (v316)
      {
        sub_10002014C();
        sub_1000134E0();
        sub_1002A2BB0();
        sub_100003BFC(v668);
        v679 = v780;
        v680 = v779;
        if (!v316)
        {
          sub_1000180EC(v668, &qword_100CA6638);
        }
      }

      else
      {
        sub_100003BB4();
        sub_100072EC8();
        v679 = v780;
        v680 = v779;
      }

      sub_1000870F8(v839);
      sub_100051BBC();
      sub_10000556C(v674);
      if (v316)
      {
        sub_100007FE0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1002A2BB0();
        sub_10000556C(v674);
        if (!v316)
        {
          sub_1000180EC(v674, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000E7BC();
        sub_100072EC8();
      }

      sub_1000E31B8(&v840);
      sub_100051BBC();
      sub_100003BDC(v673);
      if (v316)
      {
        sub_10004962C();
        sub_1002A2BB0();
        sub_100003BDC(v673);
        if (!v316)
        {
          sub_1000180EC(v673, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028144();
        sub_100072EC8();
      }

      sub_100030224(v841);
      sub_100051BBC();
      sub_10000E7EC(v680);
      if (v316)
      {
        sub_10001BBFC();
        sub_1002A2BB0();
        sub_10000E7EC(v680);
        if (!v316)
        {
          sub_1000180EC(v680, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000134C8();
        sub_100072EC8();
      }

      sub_1000436AC(v842);
      sub_100051BBC();
      sub_10000554C(v679);
      if (v316)
      {
        sub_100005530(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1002A2BB0();
        sub_10000554C(v679);
        if (!v316)
        {
          sub_1000180EC(v679, &qword_100CA6618);
        }
      }

      else
      {
        sub_100003B9C();
        sub_100072EC8();
      }

      sub_1000113EC();
      sub_100051BBC();
      v681 = sub_10000C7F0();
      sub_10001627C(v681, v682);
      if (v316)
      {
        sub_10000FA9C();
        sub_1000436A0();
        sub_1002A2BB0();
        sub_100005404(v669);
        if (!v316)
        {
          sub_1000180EC(v669, &qword_100CA6610);
        }
      }

      else
      {
        sub_100003B84();
        sub_1000436A0();
        sub_100072EC8();
      }

      sub_100005518();
      sub_100079478();
      sub_1000421C0();
      sub_10003A0FC();
      sub_100087104();
      sub_100003B6C();
      sub_10000E80C();
      v456 = v889;
      v457 = v888;
      v458 = v807;
      v459 = v808;
      v460 = v809;
      v461 = v810;
      v462 = v811;
      v635 = &v835;
LABEL_221:
      v463 = *(v635 - 32);
LABEL_222:
      v502 = v455;
      sub_10003E038(v456, v457, v458, v459, v460, v461, v462, v463, v750, v751, v752, v753, v754, v755, v756, v757, v758, v759, v760, *(&v760 + 1), v761, v762, v763, v764, v765, v766, v767, v768, v769, v770, v771, v772, v773, v774, v775);
      sub_100052654();

LABEL_223:

      return v502;
  }
}

uint64_t sub_1002A2BB0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

void sub_1002A2C08(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, int a7, double a8, double a9)
{
  v186 = a7;
  v191 = a6;
  v195 = a4;
  v15 = sub_10022C350(&qword_100CA65C8);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  v185 = &v181 - v17;
  v187 = type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v184 = v20 - v19;
  v21 = sub_10022C350(&qword_100CA3538);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  v189 = &v181 - v23;
  v24 = sub_10022C350(&qword_100CA6890);
  sub_100003810(v24);
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v181 - v26;
  v28 = type metadata accessor for SavedLocation();
  sub_1000037E8();
  __chkstk_darwin(v29);
  v31 = &v181 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v192 = (&v181 - v33);
  v34 = sub_10022C350(&qword_100CA6898);
  sub_100003810(v34);
  sub_100003828();
  __chkstk_darwin(v35);
  v194 = &v181 - v36;
  v193 = type metadata accessor for OpenL2Descriptor(0);
  sub_1000037E8();
  __chkstk_darwin(v37);
  sub_1000037D8();
  v40 = (v39 - v38);
  v196 = type metadata accessor for ActivityAction();
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_1000037D8();
  v197 = (v43 - v42);
  v44 = sub_10022C350(&unk_100CB2CF0);
  v45 = sub_100003AE8(v44);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v50 = &v181 - v49;
  if (a2)
  {
    v51 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v51 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v51)
    {
      if (qword_100CA2760 != -1)
      {
        sub_10000FAB4();
      }

      v91 = type metadata accessor for Logger();
      sub_10000703C(v91, qword_100D90C78);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v201[0] = v95;
        *v94 = 141558275;
        sub_1000182C4();
        *(v94 + 4) = v96;
        *(v94 + 12) = 2081;
        v199 = a8;
        v200 = a9;
        type metadata accessor for CLLocationCoordinate2D(0);
        v97 = String.init<A>(describing:)();
        v99 = sub_100078694(v97, v98, v201);

        *(v94 + 14) = v99;
        _os_log_impl(&_mh_execute_header, v92, v93, "Encountered an empty location name while handling a coordinate activity. coordinate=%{private,mask.hash}s", v94, 0x16u);
        sub_100006F14(v95);
        sub_100003884();
        sub_100003884();
      }

      v100 = type metadata accessor for Date();
      sub_10000E830(v50, v101, v102, v100);
      sub_100066E08();
      v103 = Dictionary.init(dictionaryLiteral:)();
      v104 = sub_100017600();
      sub_1002A2C08(0, 0, 18, v50, v103, 0, 0, v104);

      v105 = &unk_100CB2CF0;
      v106 = v50;
      goto LABEL_24;
    }
  }

  v183 = v48;
  v188 = v40;
  v52 = a3;
  v190 = a5;
  v53 = v198;
  sub_1000161C0(v198 + 4, v198[7]);
  sub_100017600();
  sub_100589B78();
  if ((v54 & 1) == 0)
  {
    sub_1000161C0(v53 + 4, v53[7]);
    sub_100017600();
    v182 = a2;
    sub_1001A34D0();
    if (sub_100024D10(v27, 1, v28) == 1)
    {
      sub_1000180EC(v27, &qword_100CA6890);
      v79 = v52;
      if (v191)
      {
        if (qword_100CA2760 != -1)
        {
          sub_10000FAB4();
        }

        v80 = type metadata accessor for Logger();
        sub_10000703C(v80, qword_100D90C78);
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();
        if (sub_10000C79C(v82))
        {
          *swift_slowAlloc() = 0;
          sub_1000133FC(&_mh_execute_header, v83, v84, "CoordinateHandler was requested to open saved location but did not find it, reloading...");
          sub_100007E54();
        }

        v85 = type metadata accessor for TaskPriority();
        sub_10000E830(v189, v86, v87, v85);
        sub_1000D47CC(v195, v50);
        v88 = (*(v183 + 80) + 73) & ~*(v183 + 80);
        v89 = swift_allocObject();
        *(v89 + 16) = 0;
        *(v89 + 24) = 0;
        *(v89 + 32) = v198;
        *(v89 + 40) = a8;
        *(v89 + 48) = a9;
        v90 = v182;
        *(v89 + 56) = a1;
        *(v89 + 64) = v90;
        *(v89 + 72) = v79;
        sub_100237E84(v50, v89 + v88);
        *(v89 + ((v47 + v88 + 7) & 0xFFFFFFFFFFFFFFF8)) = v190;

        sub_1006C0138();

        return;
      }

      v192 = a1;
      if (qword_100CA2760 != -1)
      {
        sub_10000FAB4();
      }

      v121 = type metadata accessor for Logger();
      sub_10000703C(v121, qword_100D90C78);
      v122 = v182;

      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v201[0] = swift_slowAlloc();
        *v125 = 141558787;
        sub_1000182C4();
        *(v125 + 4) = v126;
        *(v125 + 12) = 2081;
        v199 = a8;
        v200 = a9;
        type metadata accessor for CLLocationCoordinate2D(0);
        v127 = String.init<A>(describing:)();
        v129 = sub_100078694(v127, v128, v201);

        *(v125 + 14) = v129;
        *(v125 + 22) = 2160;
        sub_1000182C4();
        *(v125 + 24) = v130;
        *(v125 + 32) = 2081;
        v131 = v192;
        if (v122)
        {
          v132 = v192;
        }

        else
        {
          v132 = 7104878;
        }

        if (v122)
        {
          v133 = v122;
        }

        else
        {
          v133 = 0xE300000000000000;
        }

        v134 = sub_100078694(v132, v133, v201);

        *(v125 + 34) = v134;
        _os_log_impl(&_mh_execute_header, v123, v124, "CoordinateHandler handling coordinate that isn't in our locations; coordinate=%{private,mask.hash}s, name=%{private,mask.hash}s", v125, 0x2Au);
        swift_arrayDestroy();
        sub_100003884();
        sub_100007E54();

        v135 = v198;
      }

      else
      {

        v135 = v198;
        v131 = v192;
      }

      sub_1000161C0(v135 + 4, v135[7]);
      sub_100017600();
      sub_10058A09C();
      if ((v157 & 1) == 0)
      {
        sub_1000244F0();
        v163 = v197;
        *v197 = a8;
        v163[1] = a9;
        *(v163 + 2) = v131;
        *(v163 + 3) = v122;
        *(v163 + 32) = v186 & 1;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_100003940();
        v164 = static VerticalSizingBehaviorKey.defaultValue.getter();

        sub_100366814(v163, 0, v164 & 1);
        sub_10000558C();
        sub_1002A4304(v163, v165);
        if (v79 != 18)
        {
          v166 = v193;
          v167 = *(v193 + 24);
          v168 = type metadata accessor for Location();
          v169 = v188;
          sub_10000E830(&v188[v167], v170, v171, v168);
          sub_1000D47CC(v195, &v169[v166[9]]);
          *v169 = v79;
          v169[1] = 1;
          v172 = &v169[v166[7]];
          *v172 = a8;
          v172[1] = a9;
          *(v172 + 16) = 0;
          sub_100031480(&v169[v166[8]]);
          *&v169[v166[10]] = v190;
          sub_1000161C0(v135 + 19, v135[22]);
          sub_10001E6F8();
          v173 = v194;
          sub_1002A42A8(v169, v194, v174);
          sub_10001B350(v173, 0, 1, v166);

          sub_100364F6C(v173);
          sub_1000180EC(v173, &qword_100CA6898);
          sub_10001BC14();
          v78 = v169;
          goto LABEL_44;
        }

        return;
      }

      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.default.getter();
      if (sub_10000C79C(v159))
      {
        *swift_slowAlloc() = 0;
        sub_1000133FC(&_mh_execute_header, v160, v161, "A location that matches the given coordinate and location name is already being previewed.");
        sub_100007E54();
      }

      if (v79 == 18)
      {
        return;
      }

      sub_1000161C0(v135 + 4, v135[7]);
      v162 = v185;
      sub_10058A254(v185);
      if (sub_100024D10(v162, 1, v187) == 1)
      {
        v105 = &qword_100CA65C8;
        v106 = v162;
LABEL_24:
        sub_1000180EC(v106, v105);
        return;
      }

      v107 = v184;
      sub_1001875A4(v162, v184, type metadata accessor for PreviewLocation);
      sub_10003C284();
      sub_1006E6234(v175);
      sub_1000205D4();
      *v124 = v79;
      v124[1] = 1;
      v176 = &v124[v131[7]];
      *v176 = a8;
      v176[1] = a9;
      *(v176 + 16) = 0;
      sub_100031480(&v124[v131[8]]);
      *&v124[v131[10]] = v190;
      sub_1000161C0(v135 + 19, v135[22]);
      sub_10001E6F8();
      sub_10002C548(v177, v178, v179);
      sub_10002815C();

      sub_100364F6C(v135);
      sub_1000180EC(v135, &qword_100CA6898);
      sub_10001BC14();
      sub_1002A4304(v124, v180);
      v156 = type metadata accessor for PreviewLocation;
    }

    else
    {
      v107 = v192;
      sub_1001875A4(v27, v192, &type metadata accessor for SavedLocation);
      v108 = v52;
      if (qword_100CA2760 != -1)
      {
        sub_10000FAB4();
      }

      v109 = type metadata accessor for Logger();
      sub_10000703C(v109, qword_100D90C78);
      v110 = sub_100003C1C();
      sub_1002A42A8(v110, v31, v111);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v199 = *&v115;
        *v114 = 141558275;
        sub_1000182C4();
        *(v114 + 4) = v116;
        *(v114 + 12) = 2081;
        sub_1002A435C();
        v117 = dispatch thunk of CustomStringConvertible.description.getter();
        v119 = v118;
        sub_100019244();
        v120 = sub_100078694(v117, v119, &v199);

        *(v114 + 14) = v120;
        _os_log_impl(&_mh_execute_header, v112, v113, "CoordinateHandler found existing location for coordinate; opening location viewer; location=%{private,mask.hash}s", v114, 0x16u);
        sub_100006F14(v115);
        sub_100003884();
        sub_100003884();
      }

      else
      {

        sub_100019244();
      }

      v136 = v198;
      sub_1000244F0();
      v137 = sub_100003C1C();
      v138 = v197;
      sub_1002A42A8(v137, v197, v139);
      swift_storeEnumTagMultiPayload();
      sub_100003940();
      v140 = static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
      sub_100003940();
      v141 = static VerticalSizingBehaviorKey.defaultValue.getter();
      sub_1000113F8(v141);
      sub_10000558C();
      sub_1002A4304(v138, v142);
      if (v108 != 18)
      {
        sub_10003C284();
        SavedLocation.location.getter();
        SavedLocation.coordinate.getter();
        v144 = v143;
        v146 = v145;
        v147 = SavedLocation.name.getter();
        v149 = v148;
        sub_1000205D4();
        *v140 = v108;
        v140[1] = 0;
        v150 = &v140[v138[7]];
        *v150 = v144;
        *(v150 + 1) = v146;
        v150[16] = 0;
        v151 = &v140[v138[8]];
        *v151 = v147;
        v151[1] = v149;
        *&v140[v138[10]] = v190;
        sub_1000161C0((v136 + 152), *(v136 + 176));
        sub_10001E6F8();
        sub_10002C548(v152, v153, v154);
        sub_10002815C();
        sub_100364F6C(v136);
        sub_1000180EC(v136, &qword_100CA6898);
        sub_10001BC14();
        sub_1002A4304(v140, v155);
      }

      v156 = &type metadata accessor for SavedLocation;
    }

    v77 = v156;
    v78 = v107;
    goto LABEL_44;
  }

  if (qword_100CA2760 != -1)
  {
    sub_10000FAB4();
  }

  v55 = type metadata accessor for Logger();
  sub_10000703C(v55, qword_100D90C78);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  v58 = sub_10000C79C(v57);
  v59 = v198;
  v60 = v52;
  if (v58)
  {
    *swift_slowAlloc() = 0;
    sub_1000133FC(&_mh_execute_header, v61, v62, "CoordinateHandler found existing location for coordinate but it matched a location coalesced with the current location");
    sub_100007E54();
  }

  sub_1000244F0();
  v63 = v197;
  swift_storeEnumTagMultiPayload();
  sub_100003940();
  static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
  sub_100003940();
  v64 = static VerticalSizingBehaviorKey.defaultValue.getter();
  sub_1000113F8(v64);
  sub_10000558C();
  sub_1002A4304(v63, v65);
  if (v52 != 18)
  {
    v66 = v193;
    v67 = *(v193 + 24);
    v68 = type metadata accessor for Location();
    v69 = v188;
    sub_10000E830(&v188[v67], v70, v71, v68);
    sub_1000205D4();
    *v69 = v60;
    v69[1] = 0;
    v72 = &v69[v66[7]];
    *v72 = 0;
    *(v72 + 1) = 0;
    v72[16] = 1;
    v73 = &v69[v66[8]];
    *v73 = 0;
    v73[1] = 0;
    *&v69[v66[10]] = v190;
    sub_1000161C0((v59 + 152), *(v59 + 176));
    sub_10001E6F8();
    sub_10002C548(v74, v75, v76);
    sub_10002815C();
    sub_100364F6C(v59);
    sub_1000180EC(v59, &qword_100CA6898);
    sub_10001BC14();
    v78 = v69;
LABEL_44:
    sub_1002A4304(v78, v77);
  }
}

uint64_t sub_1002A3B1C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  *(v10 + 56) = a10;
  *(v10 + 64) = v14;
  *(v10 + 112) = a9;
  *(v10 + 40) = a7;
  *(v10 + 48) = a8;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 16) = a6;
  v11 = *(sub_10022C350(&unk_100CB2CF0) - 8);
  *(v10 + 72) = v11;
  *(v10 + 80) = *(v11 + 64);
  *(v10 + 88) = swift_task_alloc();
  sub_10022C350(&qword_100CA3538);
  *(v10 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1002A3C3C, 0, 0);
}

uint64_t sub_1002A3C3C()
{
  v1 = *(v0 + 16);
  v2 = v1[31];
  v3 = v1[32];
  sub_1000161C0(v1 + 28, v2);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1002A3CF4;

  return dispatch thunk of SavedLocationsManagerType.reloadFromLocalStorage()(v2, v3);
}

uint64_t sub_1002A3CF4()
{

  return _swift_task_switch(sub_1002A3DF0, 0, 0);
}

uint64_t sub_1002A3DF0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v21 = *(v0 + 112);
  v7 = *(v0 + 48);
  v20 = *(v0 + 40);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 16);
  v11 = type metadata accessor for TaskPriority();
  sub_10000E830(v2, v12, v13, v11);
  sub_1000D47CC(v5, v1);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = (*(v4 + 80) + 73) & ~*(v4 + 80);
  v16 = (v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = &protocol witness table for MainActor;
  *(v17 + 32) = v10;
  *(v17 + 40) = v9;
  *(v17 + 48) = v8;
  *(v17 + 56) = v20;
  *(v17 + 64) = v7;
  *(v17 + 72) = v21;
  sub_100237E84(v1, v17 + v15);
  *(v17 + v16) = v6;
  sub_1006C0138();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1002A3F80(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  *(v10 + 56) = a10;
  *(v10 + 64) = v15;
  *(v10 + 80) = a9;
  *(v10 + 40) = a7;
  *(v10 + 48) = a8;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 16) = a6;
  type metadata accessor for MainActor();
  *(v10 + 72) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A4030, v12, v11);
}

uint64_t sub_1002A4030()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v0 + 80);

  v6 = sub_100017600();
  sub_1002A2C08(v4, v3, v5, v2, v1, 0, 0, v6, v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002A40E0()
{

  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 72);
  sub_100006F14(v0 + 112);
  sub_100006F14(v0 + 152);

  sub_100006F14(v0 + 224);
  return v0;
}

uint64_t sub_1002A4144()
{
  sub_1002A40E0();

  return swift_deallocClassInstance();
}

uint64_t sub_1002A419C()
{
  v1 = sub_10022C350(&unk_100CB2CF0);
  sub_100003AE8(v1);
  sub_100074678();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  sub_1000141D4(v2);
  sub_100031BD8();

  return sub_1002A3B1C(v11, v12, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1002A42A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1002A4304(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1002A435C()
{
  result = qword_100CA68A0[0];
  if (!qword_100CA68A0[0])
  {
    type metadata accessor for SavedLocation();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CA68A0);
  }

  return result;
}

uint64_t sub_1002A43B4()
{
  v1 = sub_10022C350(&unk_100CB2CF0);
  sub_100003AE8(v1);
  sub_100074678();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  sub_1000141D4(v2);
  sub_100031BD8();

  return sub_1002A3F80(v11, v12, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1002A44C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v309 = a1;
  v310 = a5;
  v308 = a3;
  v271 = a6;
  v8 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v8 - 8);
  v254 = v251 - v9;
  v252 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v252);
  sub_100003848();
  v281 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v269 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v268 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_100003878();
  v278 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_100003878();
  v266 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v275 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v263 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v261 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v273 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v258 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v272 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v255 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v251[0] = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v37 = v251 - v36;
  v38 = *(a4 - 8);
  __chkstk_darwin(v39);
  sub_100003848();
  v270 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  v290 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v289 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v288 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v287 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v286 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v285 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v284 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v283 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v282 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v267 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v280 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v265 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v305 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v264 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v304 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v262 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v303 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v260 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v302 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v259 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v300 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v257 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v299 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v256 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v298 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v253 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v297 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v251[3] = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v296 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v251[2] = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v295 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v251[1] = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v294 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  v109 = v251 - v108;
  __chkstk_darwin(v110);
  v112 = v251 - v111;
  v301 = type metadata accessor for Optional();
  v274 = *(v301 - 8);
  __chkstk_darwin(v301);
  sub_100003848();
  v279 = v113;
  sub_10000386C();
  __chkstk_darwin(v114);
  sub_100003878();
  v293 = v115;
  sub_10000386C();
  __chkstk_darwin(v116);
  v118 = v251 - v117;
  __chkstk_darwin(v119);
  v292 = v251 - v120;
  v121 = a2;
  sub_100566BE4(a2, v328);
  v306 = v118;
  v307 = v109;
  v291 = v112;
  if (v329)
  {
    v122 = 1;
  }

  else
  {
    v123 = v328[3];
    v124 = v328[2];
    v125 = v38;
    v126 = v328[1];
    v277 = v121;
    v127 = v328[0];
    sub_1001B3B30(v309 + OBJC_IVAR____TtCV7Weather15NoAqiNhpContent8_Storage_nextHourPrecipitation, v37);
    v128 = v123;
    v109 = v307;
    v308(v37, v127, v126, v124, v128);
    sub_1001B4354(v37);
    v129 = v310;
    sub_1000833D8(v109, a4, v310);
    v130 = *(v125 + 8);
    v130(v109, a4);
    v131 = sub_100005480();
    v132 = v129;
    v118 = v306;
    sub_1000833D8(v131, v133, v132);
    v134 = sub_100005480();
    (v130)(v134);
    v38 = v125;
    v121 = v277;
    (*(v125 + 32))(v118, v109, a4);
    v122 = 0;
  }

  sub_10001B350(v118, v122, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v135, v136);
  v276 = *(v274 + 8);
  v277 = v274 + 8;
  v276(v118, v301);
  v137 = OBJC_IVAR____TtCV7Weather15NoAqiNhpContent8_Storage_map;
  v138 = v309;
  swift_beginAccess();
  v139 = v138 + v137;
  v140 = v254;
  sub_10026E174(v139, v254);
  if (sub_100024D10(v140, 1, v252) == 1)
  {
    sub_10026E1E4(v140);
LABEL_8:
    v142 = 1;
    v143 = v306;
    goto LABEL_10;
  }

  v141 = v251[0];
  sub_10026E24C(v140, v251[0]);
  sub_100566A5C(v121, v330);
  if (v330[32])
  {
    sub_1001B4354(v141);
    goto LABEL_8;
  }

  v144 = sub_100028198();
  v145(v144);
  sub_1001B4354(v141);
  v146 = v310;
  sub_1000833D8(v109, a4, v310);
  v147 = *(v38 + 8);
  v147(v307, a4);
  v148 = sub_100005480();
  sub_1000833D8(v148, v149, v146);
  v150 = sub_100005480();
  (v147)(v150);
  v143 = v306;
  (*(v38 + 32))(v306, v307, a4);
  v142 = 0;
LABEL_10:
  sub_10001B350(v143, v142, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v151, v152);
  v276(v143, v301);
  sub_10001420C();
  v154 = v255;
  sub_1001B3B30(v153 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v255);
  sub_100566A78(v121, v331);
  if (v332)
  {
    goto LABEL_28;
  }

  v308(v154, v331[0], v331[1], v331[2], v331[3]);
  sub_1001B4354(v154);
  v155 = sub_100005480();
  sub_1000833D8(v155, v156, v310);
  v157 = *(v38 + 8);
  v158 = sub_100005480();
  v157(v158);
  sub_10001420C();
  sub_1001B3B30(v159 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v272);
  sub_100566A94(v121, v333);
  if (v334)
  {
    goto LABEL_28;
  }

  v160 = v272;
  v308(v272, v333[0], v333[1], v333[2], v333[3]);
  sub_1001B4354(v160);
  v161 = sub_100005480();
  sub_1000833D8(v161, v162, v310);
  v163 = sub_100005480();
  v157(v163);
  sub_10001420C();
  v165 = v258;
  sub_1001B3B30(v164 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v258);
  sub_100566AB0(v121, v335);
  if (v335[32])
  {
    goto LABEL_31;
  }

  v166 = sub_10001926C();
  v167(v166);
  sub_1001B4354(v165);
  v168 = sub_100005480();
  sub_1000833D8(v168, v169, v310);
  v170 = sub_100005480();
  v157(v170);
  sub_10001420C();
  sub_1001B3B30(v171 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v273);
  sub_100566ACC(v121, v336);
  if (v337)
  {
    goto LABEL_28;
  }

  v172 = v273;
  v308(v273, v336[0], v336[1], v336[2], v336[3]);
  sub_1001B4354(v172);
  v173 = sub_100005480();
  sub_1000833D8(v173, v174, v310);
  v175 = sub_100005480();
  v157(v175);
  sub_10001420C();
  v177 = v261;
  sub_1001B3B30(v176 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v261);
  sub_100566AE8(v121, v338);
  if (v338[32])
  {
    goto LABEL_31;
  }

  v178 = sub_10001926C();
  v179(v178);
  sub_1001B4354(v177);
  v180 = sub_100005480();
  sub_1000833D8(v180, v181, v310);
  v182 = sub_100005480();
  v157(v182);
  sub_10001420C();
  v184 = v263;
  sub_1001B3B30(v183 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v263);
  sub_100566B04(v121, v339);
  if (v339[32])
  {
    goto LABEL_28;
  }

  v185 = sub_100028198();
  v186(v185);
  sub_1001B4354(v184);
  sub_100007FFC();
  sub_1000833D8(v187, v188, v189);
  v190 = sub_100005474();
  v157(v190);
  sub_10001420C();
  sub_1001B3B30(v191 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v275);
  sub_100566B20(v121, v340);
  if (v340[32])
  {
    goto LABEL_28;
  }

  v192 = v275;
  v193 = sub_100028198();
  v194(v193);
  sub_1001B4354(v192);
  sub_100007FFC();
  sub_1000833D8(v195, v196, v197);
  v198 = sub_100005474();
  v157(v198);
  sub_10001420C();
  v200 = v266;
  sub_1001B3B30(v199 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v266);
  sub_100566B3C(v121, v341);
  if (v341[32])
  {
LABEL_31:
    sub_100013470();
    goto LABEL_32;
  }

  v201 = sub_10001926C();
  v202(v201);
  sub_1001B4354(v200);
  v203 = sub_100005480();
  sub_1000833D8(v203, v204, v310);
  v205 = sub_100005480();
  v157(v205);
  sub_10001420C();
  sub_1001B3B30(v206 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v278);
  sub_100566B58(v121, v342);
  if ((v343 & 1) == 0)
  {
    v207 = v278;
    v308(v278, v342[0], v342[1], v342[2], v342[3]);
    sub_1001B4354(v207);
    v208 = sub_100005480();
    sub_1000833D8(v208, v209, v310);
    v210 = sub_100005480();
    v157(v210);
    sub_10001420C();
    v212 = v268;
    sub_1001B3B30(v211 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v268);
    sub_100566B74(v121, &v344);
    if ((v345 & 1) == 0)
    {
      v213 = sub_10001926C();
      v214(v213);
      sub_1001B4354(v212);
      v215 = sub_100005480();
      sub_1000833D8(v215, v216, v310);
      v217 = sub_100005480();
      v157(v217);
      sub_10001420C();
      v219 = v269;
      sub_1001B3B30(v218 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v269);
      sub_100566B90(v121, &v346);
      if ((v347 & 1) == 0)
      {
        v220 = sub_100028198();
        v221(v220);
        sub_1001B4354(v219);
        sub_100007FFC();
        sub_1000833D8(v222, v223, v224);
        v225 = sub_100005474();
        v157(v225);
        sub_10001420C();
        sub_1001B3B30(v226 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v281);
        sub_100566BAC(v121, v348);
        if ((v349 & 1) == 0)
        {
          v227 = v267;
          v228 = v281;
          v308(v281, v348[0], v348[1], v348[2], v348[3]);
          sub_1001B4354(v228);
          v229 = v310;
          sub_1000833D8(v227, a4, v310);
          (v157)(v227, a4);
          v230 = *(v274 + 16);
          v231 = v306;
          v232 = v301;
          v230(v306, v292, v301);
          v327[0] = v231;
          v233 = v279;
          v230(v279, v293, v232);
          v327[1] = v233;
          v234 = *(v38 + 16);
          v235 = v291;
          v234(v291, v294, a4);
          v327[2] = v235;
          v236 = v307;
          v234(v307, v295, a4);
          v327[3] = v236;
          v237 = v282;
          v234(v282, v296, a4);
          v327[4] = v237;
          v238 = v283;
          v234(v283, v297, a4);
          v327[5] = v238;
          v239 = v284;
          v234(v284, v298, a4);
          v327[6] = v239;
          v240 = v285;
          v234(v285, v299, a4);
          v327[7] = v240;
          v241 = v286;
          v234(v286, v300, a4);
          v327[8] = v241;
          v242 = v287;
          v234(v287, v302, a4);
          v327[9] = v242;
          v243 = v288;
          v234(v288, v303, a4);
          v327[10] = v243;
          v244 = v289;
          v234(v289, v304, a4);
          v327[11] = v244;
          v245 = v290;
          v234(v290, v305, a4);
          v327[12] = v245;
          v246 = v270;
          v234(v270, v280, a4);
          v327[13] = v246;
          v247 = v246;
          v326[0] = v232;
          v326[1] = v232;
          v326[2] = a4;
          v326[3] = a4;
          v326[4] = a4;
          v326[5] = a4;
          v326[6] = a4;
          v326[7] = a4;
          v326[8] = a4;
          v326[9] = a4;
          v326[10] = a4;
          v326[11] = a4;
          v326[12] = a4;
          v326[13] = a4;
          v311 = v229;
          WitnessTable = swift_getWitnessTable();
          v313 = WitnessTable;
          v314 = v229;
          v315 = v229;
          v316 = v229;
          v317 = v229;
          v318 = v229;
          v319 = v229;
          v320 = v229;
          v321 = v229;
          v322 = v229;
          v323 = v229;
          v324 = v229;
          v325 = v229;
          sub_10012E24C(v327, 14, v326);
          v248 = sub_100005474();
          v157(v248);
          (v157)(v305, a4);
          (v157)(v304, a4);
          (v157)(v303, a4);
          (v157)(v302, a4);
          (v157)(v300, a4);
          (v157)(v299, a4);
          (v157)(v298, a4);
          (v157)(v297, a4);
          (v157)(v296, a4);
          (v157)(v295, a4);
          (v157)(v294, a4);
          v249 = v276;
          v276(v293, v232);
          v249(v292, v232);
          (v157)(v247, a4);
          (v157)(v290, a4);
          (v157)(v289, a4);
          (v157)(v288, a4);
          (v157)(v287, a4);
          (v157)(v286, a4);
          (v157)(v285, a4);
          (v157)(v284, a4);
          (v157)(v283, a4);
          (v157)(v282, a4);
          (v157)(v307, a4);
          (v157)(v291, a4);
          v249(v279, v232);
          return (v249)(v306, v232);
        }
      }
    }

    goto LABEL_31;
  }

LABEL_28:
  sub_10001E640();
LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002A5B14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002A5BC0(uint64_t a1)
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2838 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (v3 != 1)
  {
    return 0;
  }

  return a1;
}

void sub_1002A5C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_100078694(a4, a5, &v16);
      *(v9 + 12) = 2080;
      v10 = StaticString.description.getter();
      v12 = sub_100078694(v10, v11, &v16);

      *(v9 + 14) = v12;
      *(v9 + 22) = 2080;
      _StringGuts.grow(_:)(22);

      v13._countAndFlagsBits = CGSize.debugDescription.getter();
      String.append(_:)(v13);

      v14 = sub_100078694(0xD000000000000014, 0x8000000100ABD7F0, &v16);

      *(v9 + 24) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v8, "%s | %s: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002A5EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_100078694(a4, a5, &v16);
      *(v9 + 12) = 2080;
      v10 = StaticString.description.getter();
      v12 = sub_100078694(v10, v11, &v16);

      *(v9 + 14) = v12;
      *(v9 + 22) = 2080;
      _StringGuts.grow(_:)(25);

      swift_beginAccess();
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14 = sub_100078694(0xD000000000000017, 0x8000000100ABD790, &v16);

      *(v9 + 24) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v8, "%s | %s: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002A6178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_100078694(a4, a5, &v23);
      *(v9 + 12) = 2080;
      v10 = StaticString.description.getter();
      v11 = v8;
      v13 = sub_100078694(v10, v12, &v23);

      *(v9 + 14) = v13;
      *(v9 + 22) = 2080;
      _StringGuts.grow(_:)(41);

      swift_beginAccess();
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 0x72206C6C6957202ELL;
      v15._object = 0xEF203A7461657065;
      String.append(_:)(v15);
      swift_beginAccess();
      swift_beginAccess();
      sub_1002D6C88();
      v17 = (v16 & 1) == 0;
      if (v16)
      {
        v18 = 0x65736C6166;
      }

      else
      {
        v18 = 1702195828;
      }

      if (v17)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      v20 = v19;
      String.append(_:)(*&v18);

      v21 = sub_100078694(0xD000000000000016, 0x8000000100ABD770, &v23);

      *(v9 + 24) = v21;
      _os_log_impl(&_mh_execute_header, oslog, v11, "%s | %s: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002A64B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_100078694(a4, a5, &v14);
      *(v9 + 12) = 2080;
      v10 = StaticString.description.getter();
      v12 = sub_100078694(v10, v11, &v14);

      *(v9 + 14) = v12;
      *(v9 + 22) = 2080;
      *(v9 + 24) = sub_100078694(0xD000000000000020, 0x8000000100ABD630, &v14);
      _os_log_impl(&_mh_execute_header, oslog, v8, "%s | %s: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002A66B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_100078694(a4, a5, &v14);
      *(v9 + 12) = 2080;
      v10 = StaticString.description.getter();
      v12 = sub_100078694(v10, v11, &v14);

      *(v9 + 14) = v12;
      *(v9 + 22) = 2080;
      *(v9 + 24) = sub_100078694(0xD000000000000031, 0x8000000100ABD660, &v14);
      _os_log_impl(&_mh_execute_header, oslog, v8, "%s | %s: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002A68B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_100078694(a4, a5, &v18);
      *(v9 + 12) = 2080;
      v10 = StaticString.description.getter();
      v12 = sub_100078694(v10, v11, &v18);

      *(v9 + 14) = v12;
      *(v9 + 22) = 2080;
      _StringGuts.grow(_:)(49);

      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 0x69646E756F62202CLL;
      v14._object = 0xEF3D74636552676ELL;
      String.append(_:)(v14);
      v15._countAndFlagsBits = CGRect.debugDescription.getter();
      String.append(_:)(v15);

      v16 = sub_100078694(0xD00000000000001ELL, 0x8000000100ABD440, &v18);

      *(v9 + 24) = v16;
      _os_log_impl(&_mh_execute_header, oslog, v8, "%s | %s: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002A6B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a5)
  {
LABEL_9:

    sub_1002AB010(a7);
    return;
  }

  if (qword_100CA2698 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000703C(v11, qword_100D90A30);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_9;
  }

  v14 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  *v14 = 136315650;
  *(v14 + 4) = sub_100078694(a4, a5, &v28);
  *(v14 + 12) = 2080;
  v15 = StaticString.description.getter();
  v17 = sub_100078694(v15, v16, &v28);

  *(v14 + 14) = v17;
  *(v14 + 22) = 2080;
  _StringGuts.grow(_:)(65);
  v18._countAndFlagsBits = 0xD00000000000001ELL;
  v18._object = 0x8000000100ABD4B0;
  String.append(_:)(v18);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x6E6F706D6F63202CLL;
  v20._object = 0xEC0000003D746E65;
  String.append(_:)(v20);
  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v21 = *(a7 + 56);
    if (*(v21 + 16) > a6)
    {
      v22 = v21 + 104 * a6;
      v23 = *(v22 + 32);
      v24 = *(v22 + 40);

      v25._countAndFlagsBits = v23;
      v25._object = v24;
      String.append(_:)(v25);

      v26._object = 0x8000000100ABD4D0;
      v26._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v26);
      type metadata accessor for CGRect(0);
      _print_unlocked<A, B>(_:_:)();
      v27 = sub_100078694(0, 0xE000000000000000, &v28);

      *(v14 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s | %s: %s", v14, 0x20u);
      swift_arrayDestroy();

      sub_1002AB010(a7);
      return;
    }
  }

  __break(1u);
}

void sub_1002A6F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a5)
  {
LABEL_9:

    sub_1002AB010(a7);
    return;
  }

  if (qword_100CA2698 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000703C(v11, qword_100D90A30);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_9;
  }

  v14 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  *v14 = 136315650;
  *(v14 + 4) = sub_100078694(a4, a5, &v28);
  *(v14 + 12) = 2080;
  v15 = StaticString.description.getter();
  v17 = sub_100078694(v15, v16, &v28);

  *(v14 + 14) = v17;
  *(v14 + 22) = 2080;
  _StringGuts.grow(_:)(96);
  v18._countAndFlagsBits = 0xD00000000000003DLL;
  v18._object = 0x8000000100ABD4F0;
  String.append(_:)(v18);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x6E6F706D6F63202CLL;
  v20._object = 0xEC0000003D746E65;
  String.append(_:)(v20);
  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v21 = *(a7 + 56);
    if (*(v21 + 16) > a6)
    {
      v22 = v21 + 104 * a6;
      v23 = *(v22 + 32);
      v24 = *(v22 + 40);

      v25._countAndFlagsBits = v23;
      v25._object = v24;
      String.append(_:)(v25);

      v26._object = 0x8000000100ABD4D0;
      v26._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v26);
      type metadata accessor for CGRect(0);
      _print_unlocked<A, B>(_:_:)();
      v27 = sub_100078694(0, 0xE000000000000000, &v28);

      *(v14 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s | %s: %s", v14, 0x20u);
      swift_arrayDestroy();

      sub_1002AB010(a7);
      return;
    }
  }

  __break(1u);
}

void sub_1002A7290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    if (qword_100CA2698 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90A30);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_100078694(a4, a5, &v16);
      *(v9 + 12) = 2080;
      v10 = StaticString.description.getter();
      v12 = sub_100078694(v10, v11, &v16);

      *(v9 + 14) = v12;
      *(v9 + 22) = 2080;
      _StringGuts.grow(_:)(42);

      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14 = sub_100078694(0xD000000000000028, 0x8000000100ABD530, &v16);

      *(v9 + 24) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v8, "%s | %s: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
  }
}

double sub_1002A754C()
{
  v1 = v0[5];
  sub_1002A5C78("sizeThatFits(proposedSize:subviews:context:cache:)", 50, 2, *v0, *(v0 + 1));
  return v1;
}

void sub_1002A7598()
{
  sub_10003B914();
  v221 = v1;
  v3 = v2;
  v227 = v4;
  v205 = type metadata accessor for _LazyLayout_PlacedSubview_V1();
  sub_1000037C4();
  v198 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v204 = v8 - v7;
  v9 = sub_10022C350(&qword_100CA6968);
  sub_1000037C4();
  v224 = v10;
  __chkstk_darwin(v11);
  sub_100003848();
  v191 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  v208 = &v178 - v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_10000E70C();
  v226 = v16;
  v212 = sub_10022C350(&qword_100CA6930);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v178 - v18;
  v20 = sub_10022C350(&qword_100CA6938);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v178 - v22;
  v24 = type metadata accessor for _LazyLayout_Subview_V1();
  sub_1000037C4();
  v223 = v25;
  __chkstk_darwin(v26);
  sub_100003848();
  v229 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_10000E70C();
  v200 = v29;
  v30 = sub_10022C350(&qword_100CA6940);
  v31 = sub_100003810(v30);
  __chkstk_darwin(v31);
  sub_100003848();
  v220 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v219 = v34;
  v35 = sub_10022C350(&qword_100CA6948);
  sub_100003810(v35);
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  v183 = v37;
  v182 = sub_10022C350(&qword_100CA6950);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  v228 = v39;
  v184 = type metadata accessor for _LazyLayout_Subviews_V1.SubviewsSequence();
  sub_1000037C4();
  v41 = v40;
  __chkstk_darwin(v42);
  sub_100003848();
  v181 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_10000E70C();
  v185 = v45;
  type metadata accessor for _LazyLayout_PlacementContext_V1();
  sub_1000037C4();
  v47 = v46;
  __chkstk_darwin(v48);
  sub_1000037D8();
  v51 = v50 - v49;
  v199 = *v0;
  v209 = v3;
  v210 = v0;
  v52 = v0[1];
  v53 = *(v47 + 16);
  v222 = v54;
  v53(v51, v3);
  v55 = v19;
  v215 = v19;
  v216 = v23;
  object = v24;
  v225 = v52;
  v218 = v24;
  if (v52)
  {
    if (qword_100CA2698 != -1)
    {
LABEL_70:
      sub_10001E714();
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000212C4(v57, qword_100D90A30);
    v58 = v225;

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = sub_1000205BC();
      LODWORD(v214) = v60;
      v62 = v61;
      v217 = sub_100011418();
      v238[0] = v217;
      *v62 = 136315650;
      *(v62 + 4) = sub_100078694(v199, v58, v238);
      *(v62 + 12) = 2080;
      sub_1000379A0();
      v63 = StaticString.description.getter();
      v213 = v59;
      sub_100078694(v63, v64, v238);
      sub_10002C564();
      *(v62 + 14) = object;
      *(v62 + 22) = 2080;
      v234 = 0;
      v235 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v232 = v234;
      v233 = v235;
      v65._countAndFlagsBits = 0x20656C6269736956;
      v65._object = 0xEE00203A74636572;
      String.append(_:)(v65);
      _LazyLayout_PlacementContext_V1.visibleRect.getter();
      v234 = v66;
      v235 = v67;
      v236 = v68;
      v237 = v69;
      type metadata accessor for CGRect(0);
      sub_100025088();
      _print_unlocked<A, B>(_:_:)();
      sub_100078694(v232, v233, v238);
      sub_10002C564();
      *(v62 + 24) = object;
      v55 = v215;
      v70 = v213;
      _os_log_impl(&_mh_execute_header, v213, v214, "%s | %s: %s", v62, 0x20u);
      swift_arrayDestroy();
      sub_100003884();
      object = v218;
      sub_100003884();
    }

    else
    {
    }
  }

  (*(v47 + 8))(v51, v222);
  _LazyLayout_Subviews_V1.views(from:)();
  v240 = &_swiftEmptySetSingleton;
  v241 = &_swiftEmptySetSingleton;
  v239 = 0;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v71 = 0;
  v178 = v41;
  v179 = (v41 + 32);
  v180 = (v41 + 16);
  v227 = (v223 + 32);
  v217 = (v223 + 8);
  v188 = "ontext:cache:in:)";
  v207 = (v224 + 16);
  v203 = (v224 + 88);
  v202 = enum case for _LazyLayout_Subview_V1.SubviewResult.value<A>(_:);
  v197 = enum case for _LazyLayout_Subview_V1.SubviewResult.cancelled<A>(_:);
  v201 = (v224 + 8);
  v186 = " - unhandled case. Result=";
  v187 = "mentRect. Component frame=";
  v195 = v198 + 32;
  v196 = (v224 + 96);
  v190 = " - placement was cancelled.";
  v193 = (v198 + 8);
  v194 = v198 + 16;
  *&v72 = 136315650;
  v192 = v72;
  v41 = &_swiftEmptySetSingleton;
  v214 = v9;
  v47 = v212;
  do
  {
    v73 = __OFADD__(v71, 1);
    v74 = v71 + 1;
    if (v73)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v189 = v74;
    v239 = v74;
    sub_1000379A0();
    sub_1002A5EEC(v75, v76, v77, v199, v225);
    v240 = v41;

    v78 = *v180;
    v79 = v183;
    v211 = v41;
    v80 = object;
    v81 = v184;
    v78(v183, v185, v184);
    (*v179)(v181, v79, v81);
    sub_100014218();
    sub_1002AAF90(&qword_100CA6958, v82);
    v83 = v228;
    object = v80;
    v51 = v211;
    dispatch thunk of Sequence.makeIterator()();
    v206 = *(v182 + 36);
    *(v83 + v206) = 0;
    v224 = type metadata accessor for _LazyLayout_Subviews_V1.SubviewsIterator();
    sub_100008008();
    v85 = sub_1002AAF90(&qword_100CA6960, v84);
    v222 = 0;
    v223 = v85;
    v86 = (v51 + 56);
    v41 = v55;
    v55 = v47;
    v213 = (v51 + 56);
    v47 = v216;
    while (1)
    {
LABEL_9:
      dispatch thunk of IteratorProtocol.next()();
      sub_1000038B4(v47, 1, object);
      if (v131)
      {
        sub_1000180EC(v47, &qword_100CA6938);
        v87 = v220;
        sub_10001B350(v220, 1, 1, v55);
      }

      else
      {
        v88 = v9;
        v9 = v227;
        v89 = *v227;
        v51 = object;
        v90 = v200;
        (*v227)(v200, v47, v51);
        v91 = *(v55 + 48);
        v86 = v55;
        v55 = v41;
        v92 = v222;
        *v55 = v222;
        v93 = v90;
        object = v51;
        v89(v55 + v91, v93, v51);
        v73 = __OFADD__(v92, 1);
        v41 = v92 + 1;
        if (v73)
        {
          goto LABEL_68;
        }

        v222 = v41;
        *(v228 + v206) = v41;
        v87 = v220;
        sub_1002AB08C(v55, v220, &qword_100CA6930);
        sub_10001B350(v87, 0, 1, v86);
        v9 = v88;
        v41 = v55;
        sub_1000B9898();
        v51 = v211;
      }

      v94 = v87;
      v95 = v219;
      sub_1002AB08C(v94, v219, &qword_100CA6940);
      sub_1000038B4(v95, 1, v55);
      if (v131)
      {
        break;
      }

      v96 = *v95;
      (*v227)(v229, v95 + *(v55 + 48), object);
      if (*(v51 + 16))
      {
        v97 = static Hasher._hash(seed:_:)();
        v98 = ~(-1 << *(v51 + 32));
        while (1)
        {
          v99 = v97 & v98;
          if (((*(&v86->isa + (((v97 & v98) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v97 & v98)) & 1) == 0)
          {
            break;
          }

          v97 = v99 + 1;
          if (*(*(v51 + 48) + 8 * v99) == v96)
          {
            v100 = sub_100020E14();
            v101(v100);
            goto LABEL_9;
          }
        }
      }

      if ((v96 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v102 = v210[4];
      if (v96 >= *(v102 + 16))
      {
        goto LABEL_66;
      }

      v47 = v210[7];
      v103 = *(v102 + 32 * v96 + 56);
      _LazyLayout_PlacementContext_V1.visibleRect.getter();
      sub_100021354();
      v41 = v221;
      _LazyLayout_Placements_V1.validRect.getter();
      v242.origin.x = sub_1000418D8();
      CGRectUnion(v242, v245);
      if (v96 >= *(v47 + 16))
      {
        goto LABEL_67;
      }

      sub_100021354();
      sub_1002AADD8(v47 + 104 * v96 + 32, &v234);
      sub_1000418D8();
      sub_10001760C();
      if (CGRectIntersectsRect(v243, v246))
      {
LABEL_24:
        _LazyLayout_Placements_V1.validRect.getter();
        sub_10001760C();
        CGRectUnion(v244, v247);
        _LazyLayout_Placements_V1.validRect.setter();
        object = v103;
        static UnitPoint.topLeading.getter();
        LOBYTE(v232) = 0;
        LOBYTE(v230[0]) = 0;
        v55 = v226;
        _LazyLayout_Subview_V1.place_v2(at:anchor:proposal:)();
        v47 = v208;
        v104 = *v207;
        (*v207)(v208, v55, v9);
        v105 = (*v203)(v47, v9);
        if (v105 == v202)
        {
          (*v196)(v47, v9);
          v106 = v198;
          v107 = v204;
          v108 = v47;
          v109 = v205;
          (*(v198 + 32))(v204, v108, v205);
          v110 = _LazyLayout_Placements_V1.subviews.modify();
          v112 = v111;
          sub_10051A918();
          v113 = *(*v112 + 16);
          sub_1002789B8(v113);
          v114 = *v112;
          *(v114 + 16) = v113 + 1;
          (*(v106 + 16))(v114 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v113, v107, v109);
          v110(&v232, 0);
          swift_beginAccess();
          sub_1006A11BC(v230, v96);
          swift_endAccess();
          v115 = sub_100025088();
          sub_1002AADD8(v115, v116);
          v55 = v212;
          v41 = v215;
          v47 = v216;
          object = v225;
          if (v225)
          {
            if (qword_100CA2698 != -1)
            {
              sub_10001E714();
              swift_once();
            }

            v117 = type metadata accessor for Logger();
            sub_1000212C4(v117, qword_100D90A30);

            v118 = Logger.logObject.getter();
            v119 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v118, v119))
            {
              sub_1000205BC();
              v86 = v55;
              v120 = sub_100051D1C();
              v121 = sub_10007469C(v120);
              *(v55 + 4) = sub_100078694(v121, v225, v122);
              *(v55 + 12) = 2080;
              sub_1000379A0();
              v123 = StaticString.description.getter();
              sub_1000D3E0C(v123, v124);
              sub_10002C564();
              *(v55 + 14) = object;
              *(v55 + 22) = 2080;
              sub_10003C29C();
              _StringGuts.grow(_:)(29);

              strcpy(v230, "Placed ");
              v230[1] = 0xE700000000000000;
              sub_1000C86E4();
              sub_10003BD14();
              v125._countAndFlagsBits = 0xD000000000000012;
              String.append(_:)(v125);
              sub_10001E728();
              v126._countAndFlagsBits = CGRect.debugDescription.getter();
              object = v126._object;
              String.append(_:)(v126);

              sub_10000E848();
              sub_10002C564();
              *(v55 + 24) = object;
              v41 = v215;
              sub_100020168(&_mh_execute_header, v118, v119, "%s | %s: %s");
              sub_100024068();
              sub_100003884();
              sub_1000B9898();
              v47 = v216;
              sub_100003884();
            }
          }

          sub_1002AAE34(&v232);
          (*v193)(v204, v205);
          v9 = v214;
          (*v201)(v226, v214);
          goto LABEL_55;
        }

        if (v105 == v197)
        {
          v133 = sub_100025088();
          sub_1002AADD8(v133, v134);
          sub_10003A110();
          if (v135)
          {
            v86 = v55;
            if (qword_100CA2698 != -1)
            {
              sub_10001E714();
              swift_once();
            }

            v136 = type metadata accessor for Logger();
            sub_1000212C4(v136, qword_100D90A30);
            object = v225;

            v137 = Logger.logObject.getter();
            v55 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v137, v55))
            {
              v138 = sub_1000205BC();
              v231 = sub_100011418();
              *v138 = v192;
              *(v138 + 4) = sub_100078694(v199, object, &v231);
              *(v138 + 12) = 2080;
              sub_1000379A0();
              v139 = StaticString.description.getter();
              sub_1000D3E0C(v139, v140);
              sub_10002C564();
              *(v138 + 14) = object;
              *(v138 + 22) = 2080;
              sub_10003C29C();
              _StringGuts.grow(_:)(41);

              strcpy(v230, "NOT placing ");
              BYTE5(v230[1]) = 0;
              HIWORD(v230[1]) = -5120;
              sub_1000C86E4();
              sub_10003BD14();
              String.append(_:)(v141);
              sub_10000E848();
              sub_10002C564();
              *(v138 + 24) = object;
              v142 = v215;
              _os_log_impl(&_mh_execute_header, v137, v55, "%s | %s: %s", v138, 0x20u);
              swift_arrayDestroy();
              v9 = v214;
              sub_100003884();
              v41 = v142;
              sub_100003884();
            }

            v47 = v216;
            sub_1000B9898();
          }

          sub_1002AAE34(&v232);
          (*v201)(v226, v9);
          goto LABEL_55;
        }

        v158 = sub_100025088();
        sub_1002AADD8(v158, v159);
        v160 = v191;
        v104(v191, v226, v9);
        sub_10003A110();
        if (v161)
        {
          if (qword_100CA2698 != -1)
          {
            sub_10001E714();
            swift_once();
          }

          v162 = type metadata accessor for Logger();
          sub_1000212C4(v162, qword_100D90A30);
          v163 = v225;

          v164 = Logger.logObject.getter();
          v165 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v164, v165))
          {
            sub_1000205BC();
            v166 = sub_100051D1C();
            v167 = sub_10007469C(v166);
            *(v55 + 4) = sub_100078694(v167, v163, v168);
            *(v55 + 12) = 2080;
            sub_1000379A0();
            v169 = StaticString.description.getter();
            sub_1000D3E0C(v169, v170);
            sub_10002C564();
            *(v55 + 14) = v163;
            *(v55 + 22) = 2080;
            sub_10003C29C();
            _StringGuts.grow(_:)(42);
            sub_100024514();
            sub_1000C86E4();
            sub_10003BD14();
            String.append(_:)(v171);
            v160 = v191;
            v172 = v214;
            _print_unlocked<A, B>(_:_:)();
            sub_10000E848();
            sub_10002C564();
            *(v55 + 24) = v163;
            v173 = v215;
            v174 = v165;
            v9 = v172;
            v86 = v212;
            sub_100020168(&_mh_execute_header, v164, v174, "%s | %s: %s");
            swift_arrayDestroy();
            v41 = v173;
            sub_100003884();
            sub_1000B9898();
            v47 = v216;
            sub_100003884();
          }

          else
          {

            v9 = v214;
            v160 = v191;
          }
        }

        sub_1002AAE34(&v232);
        v175 = *v201;
        (*v201)(v160, v9);
        v175(v226, v9);
        v176 = v218;
        (*v217)(v229, v218);
        sub_1002AAE34(&v234);
        v175(v208, v9);
        object = v176;
        v51 = v211;
      }

      else
      {
        v127 = v234;
        v128 = v235;
        v47 = v236;
        v232 = &type metadata for MapLocationContentComponent;
        sub_10022C350(&qword_100CA6978);
        object = String.init<A>(describing:)();
        v130 = v129;
        v55 = ObjectIdentifier.hashValue.getter();
        v131 = v127 == object && v128 == v130;
        if (v131)
        {

          v41 = v221;
          v9 = v214;
          if (v47 == v55)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v41 = v221;
          v9 = v214;
          if ((v132 & 1) != 0 && v47 == v55)
          {
            goto LABEL_24;
          }
        }

        v143 = sub_100025088();
        sub_1002AADD8(v143, v144);
        sub_10003A110();
        if (v145)
        {
          if (qword_100CA2698 != -1)
          {
            sub_10001E714();
            swift_once();
          }

          v146 = type metadata accessor for Logger();
          sub_1000212C4(v146, qword_100D90A30);
          object = v225;

          v147 = Logger.logObject.getter();
          v148 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v147, v148))
          {
            sub_1000205BC();
            v149 = sub_100051D1C();
            v150 = sub_10007469C(v149);
            *(v55 + 4) = sub_100078694(v150, object, v151);
            *(v55 + 12) = 2080;
            sub_1000379A0();
            v152 = StaticString.description.getter();
            sub_1000D3E0C(v152, v153);
            sub_10002C564();
            *(v55 + 14) = object;
            *(v55 + 22) = 2080;
            sub_10003C29C();
            _StringGuts.grow(_:)(74);
            sub_100024514();
            sub_1000C86E4();
            sub_10003BD14();
            String.append(_:)(v154);
            sub_10001E728();
            v155._countAndFlagsBits = CGRect.debugDescription.getter();
            object = v155._object;
            String.append(_:)(v155);

            sub_10000E848();
            sub_10002C564();
            *(v55 + 24) = object;
            v41 = v215;
            sub_100020168(&_mh_execute_header, v147, v148, "%s | %s: %s");
            swift_arrayDestroy();
            sub_100003884();
            v55 = v212;
            v86 = v213;
            v47 = v216;
            sub_100003884();
          }

          v9 = v214;
        }

        sub_1002AAE34(&v232);
LABEL_55:
        v156 = sub_100020E14();
        v157(v156);
        sub_1002AAE34(&v234);
      }
    }

    v47 = v55;
    v55 = v41;
    sub_1000180EC(v228, &qword_100CA6950);
    sub_1002A6178("place(subviews:context:cache:in:)", 33, 2, v199, v225);
    v41 = v241;
    sub_1002D6C88();
    v71 = v189;
  }

  while ((v177 & 1) == 0);
  v178[1](v185, v184);

  sub_100036C74();
}

void sub_1002A8AE8()
{
  sub_10003B914();
  v175 = v1;
  v3 = v2;
  v187 = v4;
  v176 = type metadata accessor for _LazyLayout_PlacedSubview_V1();
  sub_1000037C4();
  v180 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_100003990(v8 - v7);
  v183 = sub_10022C350(&qword_100CA6968);
  sub_1000037C4();
  v182 = v9;
  __chkstk_darwin(v10);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003908();
  __chkstk_darwin(v12);
  sub_10000E70C();
  sub_100003990(v13);
  v195 = sub_1002AB040();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_10000E70C();
  sub_100003990(v16);
  v17 = sub_10022C350(&qword_100CA6930);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v170 - v19;
  v21 = sub_10022C350(&qword_100CA6938);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_100003990(v23);
  v24 = type metadata accessor for _LazyLayout_Subview_V1();
  sub_1000037C4();
  v196 = v25;
  __chkstk_darwin(v26);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_10000E70C();
  sub_100003990(v28);
  v29 = sub_10022C350(&qword_100CA6940);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_100003C38();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = (&v170 - v35);
  v200 = type metadata accessor for _LazyLayout_Subviews_V1.SubviewsSequence();
  sub_1000037C4();
  v191 = v37;
  __chkstk_darwin(v38);
  sub_1000037D8();
  sub_100003990(v40 - v39);
  v41 = sub_10022C350(&qword_100CA6948);
  sub_100003810(v41);
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  sub_100003990(v43);
  v190 = sub_10022C350(&qword_100CA6950);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v44);
  sub_1000039BC();
  sub_100003990(v45);
  v46 = sub_10022C350(&qword_100CA6970);
  v47 = sub_100003810(v46);
  __chkstk_darwin(v47);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003908();
  __chkstk_darwin(v49);
  sub_10000E70C();
  sub_100003990(v50);
  type metadata accessor for _LazyLayout_EstimatedPlacementContext_V1();
  sub_1000037C4();
  v52 = v51;
  __chkstk_darwin(v53);
  sub_1000037D8();
  v56 = v55 - v54;
  v57 = v0[1];
  v192 = *v0;
  v198 = v0;
  v58 = *(v52 + 16);
  v188 = v59;
  v58(v56, v3);
  v186 = v57;
  v202 = v20;
  v199 = v33;
  if (v57)
  {
    if (qword_100CA2698 != -1)
    {
LABEL_47:
      sub_10001E714();
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_1000212C4(v60, qword_100D90A30);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      sub_1000205BC();
      v173 = sub_100051D1C();
      v206 = v173;
      *v33 = 136315650;
      *(v33 + 4) = sub_100078694(v192, v57, &v206);
      v172 = v62;
      *(v33 + 12) = 2080;
      v63 = StaticString.description.getter();
      v171 = v61;
      v65 = sub_100078694(v63, v64, &v206);

      *(v33 + 14) = v65;
      *(v33 + 22) = 2080;
      v210[0] = 0;
      v210[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      sub_100071C4C(v210[0]);
      v66._object = 0x8000000100ABD600;
      v66._countAndFlagsBits = 0xD000000000000023;
      String.append(_:)(v66);
      _LazyLayout_EstimatedPlacementContext_V1.visibleRect.getter();
      v210[0] = v67;
      v210[1] = v68;
      v210[2] = v69;
      v210[3] = v70;
      type metadata accessor for CGRect(0);
      _print_unlocked<A, B>(_:_:)();
      v71 = sub_10002FD90();
      v73 = sub_100078694(v71, *(v72 - 256), &v206);

      *(v33 + 24) = v73;
      v61 = v171;
      sub_100020168(&_mh_execute_header, v171, v172, "%s | %s: %s");
      swift_arrayDestroy();
      sub_100003884();
      v33 = v199;
      sub_100003884();
    }
  }

  (*(v52 + 8))(v56, v188);
  _LazyLayout_EstimatedPlacementContext_V1.visibleRect.getter();
  v75 = v74;
  v77 = v76;
  sub_10001B350(v203, 1, 1, v195);
  v78 = v189;
  _LazyLayout_Subviews_V1.views(from:)();
  (*(v191 + 32))(v193, v78, v200);
  sub_100014218();
  sub_1002AAF90(v79, v80);
  v81 = v204;
  dispatch thunk of Sequence.makeIterator()();
  v193 = *(v190 + 36);
  *(v81 + v193) = 0;
  v52 = type metadata accessor for _LazyLayout_Subviews_V1.SubviewsIterator();
  sub_100008008();
  v200 = sub_1002AAF90(v82, v83);
  v84 = 0;
  v57 = (v196 + 32);
  v196 += 8;
  v85 = 1.79769313e308;
  v86 = v201;
  v56 = v202;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    sub_1000038B4(v86, 1, v24);
    if (v87)
    {
      sub_1000180EC(v86, &qword_100CA6938);
      v88 = 1;
    }

    else
    {
      v89 = *v57;
      v33 = v194;
      (*v57)(v194, v86, v24);
      v90 = *(v17 + 48);
      *v56 = v84;
      v89(v56 + v90, v33, v24);
      if (__OFADD__(v84++, 1))
      {
        goto LABEL_46;
      }

      *(v204 + v193) = v84;
      v33 = v199;
      sub_1002AB08C(v56, v199, &qword_100CA6930);
      v88 = 0;
    }

    sub_10001B350(v33, v88, 1, v17);
    sub_1002AB08C(v33, v36, &qword_100CA6940);
    sub_1000038B4(v36, 1, v17);
    v92 = v203;
    if (v87)
    {
      break;
    }

    v56 = *v36;
    v93 = *v57;
    (*v57)(v205, v36 + *(v17 + 48), v24);
    if ((v56 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v94 = v198[7];
    if (v56 >= *(v94 + 16))
    {
      goto LABEL_44;
    }

    v95 = v198[4];
    sub_1002AADD8(v94 + 104 * v56 + 32, v210);
    if (v56 >= *(v95 + 16))
    {
      goto LABEL_45;
    }

    v96 = v95 + 32 * v56;
    v98 = *(v96 + 32);
    v99 = *(v96 + 40);
    v97 = v96 + 32;
    v100 = sqrt((v75 - v98) * (v75 - v98) + (v77 - v99) * (v77 - v99));
    if (v100 >= v85)
    {
      sub_1002AAE34(v210);
      sub_1000182F4();
      v112(v205, v24);
      v56 = v202;
      v86 = v201;
    }

    else
    {
      v101 = v36;
      v102 = v52;
      v103 = v17;
      v105 = *(v97 + 16);
      v104 = *(v97 + 24);
      v106 = v197;
      v93(v197, v205, v24);
      v107 = v195;
      v108 = v106 + *(v195 + 20);
      *v108 = v98;
      *(v108 + 8) = v99;
      *(v108 + 16) = v105;
      *(v108 + 24) = v104;
      memcpy((v106 + *(v107 + 24)), v210, 0x68uLL);
      sub_10001B350(v106, 0, 1, v107);
      v109 = v203;
      sub_1000038B4(v203, 1, v107);
      v110 = v202;
      v86 = v201;
      if (!v87)
      {
        sub_1000182F4();
        v111(v109, v24);
        sub_1002AAE34(v109 + *(v107 + 24));
      }

      sub_1002AB08C(v197, v109, &qword_100CA6970);
      v85 = v100;
      v56 = v110;
      v17 = v103;
      v52 = v102;
      v36 = v101;
      v33 = v199;
    }
  }

  sub_1000180EC(v204, &qword_100CA6950);
  v113 = v185;
  sub_1002AB08C(v92, v185, &qword_100CA6970);
  v114 = v195;
  sub_1000038B4(v113, 1, v195);
  if (v87)
  {
    sub_100031494();
    sub_1002A66B0(v115, v116, v117, v118, v119);
  }

  else
  {
    v120 = v113;
    v121 = v177;
    sub_1002AB0EC(v120, v177);
    sub_1002AADD8(v121 + *(v114 + 24), v210);
    v122 = v178;
    sub_1002AB0EC(v121, v178);
    static UnitPoint.topLeading.getter();
    LOBYTE(v209[0]) = 0;
    LOBYTE(v206) = 0;
    v123 = v181;
    _LazyLayout_Subview_V1.place_v2(at:anchor:proposal:)();
    sub_1000182F4();
    v124(v122, v24);
    sub_1002AAE34(v122 + *(v114 + 24));
    v125 = v182;
    v126 = *(v182 + 16);
    v127 = v184;
    v128 = v183;
    v126(v184, v123, v183);
    v129 = (*(v125 + 88))(v127, v128);
    if (v129 == enum case for _LazyLayout_Subview_V1.SubviewResult.value<A>(_:))
    {
      (*(v125 + 96))(v127, v128);
      v130 = v180;
      v131 = v179;
      v132 = v176;
      (*(v180 + 32))(v179, v127, v176);
      v133 = _LazyLayout_EstimatedPlacements_V1.subviews.modify();
      v135 = v134;
      sub_10051A918();
      v136 = *(*v135 + 16);
      sub_1002789B8(v136);
      v137 = *v135;
      *(v137 + 16) = v136 + 1;
      (*(v130 + 16))(v137 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v136, v131, v132);
      v133(v209, 0);
      sub_1002AADD8(v210, v209);
      v138 = v186;
      if (v186)
      {
        if (qword_100CA2698 != -1)
        {
          sub_10001E714();
          swift_once();
        }

        v139 = type metadata accessor for Logger();
        sub_1000212C4(v139, qword_100D90A30);

        v140 = v138;
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v141, v142))
        {
          v143 = sub_1000205BC();
          v208 = sub_100011418();
          *v143 = 136315650;
          *(v143 + 4) = sub_100078694(v192, v140, &v208);
          *(v143 + 12) = 2080;
          v144 = StaticString.description.getter();
          sub_100078694(v144, v145, &v208);
          sub_10002C564();
          *(v143 + 14) = v130;
          *(v143 + 22) = 2080;
          v206 = 0;
          v207 = 0xE000000000000000;
          _StringGuts.grow(_:)(41);

          v206 = 0xD000000000000027;
          v207 = 0x8000000100ABD5D0;
          v146._countAndFlagsBits = sub_10002FD90();
          v146._object = *(v147 - 256);
          String.append(_:)(v146);
          sub_100078694(v206, v207, &v208);
          sub_10002C564();
          *(v143 + 24) = v130;
          sub_10006A6D8(&_mh_execute_header, v148, v149, "%s | %s: %s");
          sub_100024068();
          v132 = v176;
          sub_100003884();
          sub_100003884();
        }
      }

      sub_1002AAE34(v209);
      (*(v180 + 8))(v179, v132);
      goto LABEL_34;
    }

    if (v129 == enum case for _LazyLayout_Subview_V1.SubviewResult.cancelled<A>(_:))
    {
      sub_100031494();
      sub_1002A64B0(v150, v151, v152, v153, v154);
LABEL_34:
      (*(v125 + 8))(v123, v128);
      sub_1002AAE34(v210);
      goto LABEL_42;
    }

    v155 = v174;
    v126(v174, v123, v128);
    v156 = v186;
    if (v186)
    {
      if (qword_100CA2698 != -1)
      {
        sub_10001E714();
        swift_once();
      }

      v157 = type metadata accessor for Logger();
      sub_1000212C4(v157, qword_100D90A30);

      v158 = v156;
      v159 = Logger.logObject.getter();
      v160 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v159, v160))
      {
        v161 = sub_1000205BC();
        v206 = sub_100011418();
        *v161 = 136315650;
        *(v161 + 4) = sub_100078694(v192, v158, &v206);
        *(v161 + 12) = 2080;
        v162 = StaticString.description.getter();
        sub_100078694(v162, v163, &v206);
        sub_10002C564();
        *(v161 + 14) = v122;
        *(v161 + 22) = 2080;
        v209[0] = 0;
        v209[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(61);
        sub_100071C4C(v209[0]);
        v164._countAndFlagsBits = 0xD00000000000003BLL;
        v164._object = 0x8000000100ABD590;
        String.append(_:)(v164);
        _print_unlocked<A, B>(_:_:)();
        v165 = sub_10002FD90();
        sub_100078694(v165, *(v166 - 256), &v206);
        sub_10002C564();
        *(v161 + 24) = v122;
        sub_10006A6D8(&_mh_execute_header, v167, v168, "%s | %s: %s");
        sub_100024068();
        v155 = v174;
        sub_100003884();
        v127 = v184;
        sub_100003884();
      }
    }

    v169 = *(v125 + 8);
    v169(v155, v128);
    v169(v123, v128);
    sub_1002AAE34(v210);
    v169(v127, v128);
  }

LABEL_42:
  sub_100036C74();
}

void sub_1002A9D60(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2[4];
    if (*(v4 + 16) > a1)
    {
      v5 = v4 + 32 * a1;
      v6 = *(v5 + 48);
      v7 = *(v5 + 32);
      sub_1002A68B0("boundingRect(at:subviews:context:cache:)", 40, 2, *v2, v2[1]);
      *a2 = v7;
      *(a2 + 16) = v6;
      *(a2 + 32) = 0;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1002A9DE8(uint64_t a1, void (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v123 = a4;
  v141 = a1;
  v142 = a2;
  v122 = type metadata accessor for _LazyLayout_ProposedSubview_V1();
  sub_1000037C4();
  v125 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_100003990(v10 - v9);
  v11 = sub_10022C350(&qword_100CA6930);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  sub_100003990(v13);
  v14 = sub_10022C350(&qword_100CA6938);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v116[-v16];
  v18 = type metadata accessor for _LazyLayout_Subview_V1();
  sub_1000037C4();
  v130 = v19;
  __chkstk_darwin(v20);
  sub_100003C38();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  sub_10000E70C();
  sub_100003990(v25);
  v26 = sub_10022C350(&qword_100CA6940);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003C38();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = &v116[-v32];
  v34 = sub_10022C350(&qword_100CA6948);
  sub_100003810(v34);
  sub_100003828();
  __chkstk_darwin(v35);
  sub_1000039BC();
  v138 = v36;
  v139 = sub_10022C350(&qword_100CA6950);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  v143 = v38;
  v128 = type metadata accessor for _LazyLayout_Subviews_V1.SubviewsSequence();
  sub_1000037C4();
  v127 = v39;
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  sub_100003990(v42);
  type metadata accessor for _LazyLayout_PlacementContext_V1();
  sub_1000037C4();
  __chkstk_darwin(v43);
  sub_1000037D8();
  v46 = v45 - v44;
  v47 = v5[1];
  v140 = *v5;
  v129 = v48;
  v49 = v48[2];
  v136 = a3;
  v131 = v50;
  v49(v46, a3);
  v134 = v33;
  v135 = v47;
  if (v47)
  {
    v121 = v46;
    if (qword_100CA2698 != -1)
    {
LABEL_27:
      sub_10001E714();
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000212C4(v51, qword_100D90A30);
    v52 = v135;

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = sub_1000205BC();
      v117 = v54;
      v56 = v55;
      v118 = sub_100011418();
      v146 = v118;
      *v56 = 136315650;
      *(v56 + 4) = sub_100078694(v140, v52, &v146);
      *(v56 + 12) = 2080;
      sub_1000162D8();
      v57 = StaticString.description.getter();
      v119 = v53;
      v59 = sub_100078694(v57, v58, &v146);

      v120 = v56;
      *(v56 + 14) = v59;
      *(v56 + 22) = 2080;
      v60 = v141;
      v147 = 0;
      v148 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);
      v144 = v147;
      v145 = v148;
      v61._object = 0x8000000100ABD490;
      v61._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v61);
      v147 = v60;
      v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v62);

      v63._countAndFlagsBits = 0x6C6269736976202CLL;
      v63._object = 0xEE003D7463655265;
      String.append(_:)(v63);
      v46 = v121;
      _LazyLayout_PlacementContext_V1.visibleRect.getter();
      v147 = v64;
      v148 = v65;
      v149 = v66;
      v150 = v67;
      type metadata accessor for CGRect(0);
      _print_unlocked<A, B>(_:_:)();
      v68 = sub_100078694(v144, v145, &v146);

      v69 = v120;
      *(v120 + 24) = v68;
      v33 = v134;
      _os_log_impl(&_mh_execute_header, v119, v117, "%s | %s: %s", v69, 0x20u);
      swift_arrayDestroy();
      sub_100003884();
      sub_100003884();
    }

    else
    {

      v46 = v121;
    }
  }

  (v129[1])(v46, v131);
  v70 = v126;
  _LazyLayout_Subviews_V1.views(from:)();
  v71 = v127;
  v72 = v138;
  v73 = v70;
  v74 = v128;
  (*(v127 + 16))(v138, v73, v128);
  (*(v71 + 32))(v137, v72, v74);
  sub_100014218();
  sub_1002AAF90(v75, v76);
  v77 = v143;
  dispatch thunk of Sequence.makeIterator()();
  v131 = *(v139 + 36);
  *(v77 + v131) = 0;
  v139 = type metadata accessor for _LazyLayout_Subviews_V1.SubviewsIterator();
  sub_100008008();
  v138 = sub_1002AAF90(v78, v79);
  v137 = 0;
  v142 = v130 + 4;
  v80 = v130 + 1;
  v121 = v125 + 32;
  v129 = _swiftEmptyArrayStorage;
  v81 = v135;
  ++v130;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    sub_1000038B4(v17, 1, v18);
    if (v82)
    {
      sub_1000180EC(v17, &qword_100CA6938);
      v83 = 1;
    }

    else
    {
      v84 = v5;
      v5 = v23;
      v85 = *v142;
      v86 = v132;
      (*v142)(v132, v17, v18);
      v87 = v18;
      v18 = v11;
      v88 = *(v11 + 48);
      v23 = v133;
      v89 = v137;
      *v133 = v137;
      v90 = v86;
      v33 = v87;
      v85(v23 + v88, v90);
      v91 = __OFADD__(v89, 1);
      v11 = v89 + 1;
      if (v91)
      {
        goto LABEL_26;
      }

      v137 = v11;
      *(v143 + v131) = v11;
      sub_1002AB08C(v23, v30, &qword_100CA6930);
      v83 = 0;
      v23 = v5;
      v5 = v84;
      v11 = v18;
      v18 = v33;
      v33 = v134;
      v81 = v135;
      v80 = v130;
    }

    sub_10001B350(v30, v83, 1, v11);
    sub_1002AB08C(v30, v33, &qword_100CA6940);
    sub_1000038B4(v33, 1, v11);
    if (v82)
    {
      break;
    }

    v92 = *v33;
    (*v142)(v23, v33 + *(v11 + 48), v18);
    if ((v92 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v92 >= *(v5[4] + 16))
    {
      goto LABEL_25;
    }

    _LazyLayout_PlacementContext_V1.visibleRect.getter();
    sub_10001760C();
    if (CGRectIntersectsRect(v151, v152))
    {
      LOBYTE(v147) = 0;
      LOBYTE(v144) = 0;
      _LazyLayout_Subview_V1.proposeSize(_:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069E1A4();
        v129 = v110;
      }

      v100 = v129[2];
      v101 = v100 + 1;
      if (v100 >= v129[3] >> 1)
      {
        v120 = v100 + 1;
        sub_10069E1A4();
        v101 = v120;
        v129 = v111;
      }

      v102 = v129;
      v129[2] = v101;
      (*(v125 + 32))(v102 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v100, v124, v122);
      sub_1002AAFD8(v5, &v147);
      sub_1000162D8();
      sub_10001E728();
      sub_1002A6B9C(v103, v104, v105, v106, v107, v108, v109);
    }

    else
    {
      sub_1002AAFD8(v5, &v147);
      sub_1000162D8();
      sub_10001E728();
      sub_1002A6F14(v93, v94, v95, v96, v97, v98, v99);
    }

    (*v80)(v23, v18);
  }

  sub_1000180EC(v143, &qword_100CA6950);

  _LazyLayout_ProposedSizes_V1.subviews.setter();

  sub_1000162D8();
  sub_1002A7290(v112, v113, v114, v140, v81);

  return (*(v127 + 8))(v126, v128);
}

double sub_1002AAA40@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002A9D60(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

void (*sub_1002AAAC0(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

uint64_t sub_1002AAB34(uint64_t a1, uint64_t a2)
{
  sub_100894558();
  sub_1003BD5F4(a2);
  v24 = *(a1 + 40);
  sub_10014B28C();
  v23 = sub_10014B28C();
  v4 = *(a2 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v30 = _swiftEmptyArrayStorage;

  sub_1006A796C(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  for (i = a2 + 32; ; i += 104)
  {
    sub_1002AADD8(i, v25);
    v8 = v26;
    v7 = v27;
    v10 = v28;
    v9 = v29;
    result = sub_1002AAE34(v25);
    v12 = v7 - v8;
    if (__OFSUB__(v7, v8))
    {
      break;
    }

    if (v12)
    {
      v13 = v12 - 1;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = __OFSUB__(v9, v10);
    v15 = v9 - v10;
    if (v14)
    {
      goto LABEL_21;
    }

    if (v15)
    {
      v16 = v15 - 1;
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    v30 = v5;
    v18 = v5[2];
    v17 = v5[3];
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      sub_1006A796C((v17 > 1), v18 + 1, 1);
      v19 = v18 + 1;
      v5 = v30;
    }

    v20.i64[0] = v8;
    v20.i64[1] = v10;
    v21 = vcvtq_f64_s64(v20);
    v5[2] = v19;
    v22 = &v5[4 * v18];
    v22[2] = vaddq_f64(vmulq_n_f64(v21, v23), vmulq_n_f64(v21, v24));
    v22[3].f64[0] = v23 * v12 + v24 * v13;
    v22[3].f64[1] = v23 * v15 + v24 * v16;
    if (!--v4)
    {

      return v5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}