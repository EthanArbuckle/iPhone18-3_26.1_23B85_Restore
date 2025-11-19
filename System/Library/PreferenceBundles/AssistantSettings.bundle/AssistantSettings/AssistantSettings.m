uint64_t sub_1520()
{
  v0 = sub_4E7C();
  sub_4C34(v0, qword_C248);
  sub_46C0(v0, qword_C248);
  return sub_4E6C();
}

unint64_t sub_15E0()
{
  result = qword_C148;
  if (!qword_C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C148);
  }

  return result;
}

uint64_t sub_1650@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_3C90(&qword_C150, &qword_54A8);
  v2 = *(v1 - 8);
  v49 = v1 - 8;
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v48 = &v42 - v4;
  v47 = sub_3C90(&qword_C158, &qword_54B0);
  v53 = *(v47 - 8);
  v5 = v53[8];
  v6 = (__chkstk_darwin)();
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v42 - v8;
  v9 = sub_3C90(&qword_C160, &qword_54B8);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v13 = &v42 - v12;
  v45 = sub_3C90(&qword_C168, &qword_54C0);
  v43 = *(v45 - 8);
  v14 = v43;
  v15 = *(v43 + 64);
  v16 = __chkstk_darwin(v45);
  v51 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  sub_3C90(&qword_C170, &qword_54C8);
  v20 = sub_4DDC();
  v21 = sub_4AAC(&qword_C178, &type metadata accessor for PreferencesControllerView);
  v58 = v20;
  v59 = v21;
  swift_getOpaqueTypeConformance2();
  sub_4F7C();
  v44 = &protocol conformance descriptor for SettingsPane<A>;
  v22 = sub_4D44(&qword_C180, &qword_C160, &qword_54B8);
  v23 = v19;
  v42 = v19;
  sub_4F1C();
  (*(v10 + 8))(v13, v9);
  swift_checkMetadataState();
  v24 = v52;
  sub_4F8C();
  v25 = *(v14 + 16);
  v26 = v51;
  v27 = v23;
  v28 = v45;
  v25(v51, v27, v45);
  v29 = v53[2];
  v30 = v46;
  v31 = v24;
  v32 = v47;
  v29(v46, v31, v47);
  v58 = v9;
  v59 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v48;
  v35 = v26;
  v36 = v28;
  v25(v48, v35, v28);
  v58 = v34;
  v37 = sub_4D44(&qword_C188, &qword_C158, &qword_54B0);
  v38 = &v34[*(v49 + 56)];
  v29(v38, v30, v32);
  v59 = v38;
  v56 = v36;
  v57 = v32;
  v54 = OpaqueTypeConformance2;
  v55 = v37;
  sub_4EDC();
  v39 = v53[1];
  v39(v52, v32);
  v40 = *(v43 + 8);
  v40(v42, v36);
  v39(v30, v32);
  return (v40)(v51, v36);
}

uint64_t sub_1BA8()
{
  v0 = *(*(sub_4E1C() - 8) + 64);
  __chkstk_darwin();
  v1 = sub_4DDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4C98(0, &qword_C220, AssistantController_ptr);
  sub_4DFC();
  sub_4DCC();
  sub_4E4C();
  v6 = sub_4E3C();
  sub_4E2C();

  sub_4EAC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9 = sub_4EBC();
  v11 = v10;
  v13 = v12;
  sub_4AAC(&qword_C178, &type metadata accessor for PreferencesControllerView);
  sub_4ECC();
  sub_4CE0(v9, v11, v13 & 1);

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1E7C(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v3 = *(*(sub_3C90(&qword_C198, &qword_54D8) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v4 = *(*(sub_506C() - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v5 = *(*(sub_3C90(&qword_C1A0, &qword_54E0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v6 = sub_4F0C();
  v2[27] = v6;
  v7 = *(v6 - 8);
  v2[28] = v7;
  v8 = *(v7 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v9 = sub_4E9C();
  v2[33] = v9;
  v10 = *(v9 - 8);
  v2[34] = v10;
  v11 = *(v10 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v12 = *(*(sub_3C90(&qword_C1A8, &qword_54E8) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v13 = sub_4DAC();
  v2[38] = v13;
  v14 = *(v13 - 8);
  v2[39] = v14;
  v15 = *(v14 + 64) + 15;
  v2[40] = swift_task_alloc();
  v16 = sub_4DBC();
  v2[41] = v16;
  v17 = *(v16 - 8);
  v2[42] = v17;
  v18 = *(v17 + 64) + 15;
  v2[43] = swift_task_alloc();
  v19 = sub_4F4C();
  v2[44] = v19;
  v20 = *(v19 - 8);
  v2[45] = v20;
  v21 = *(v20 + 64) + 15;
  v2[46] = swift_task_alloc();
  sub_501C();
  v2[47] = sub_500C();
  v23 = sub_4FFC();

  return _swift_task_switch(sub_222C, v23, v22);
}

uint64_t sub_222C()
{
  v178 = v0;
  v1 = v0[47];

  if (qword_C240 != -1)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v2 = v0[45];
    v3 = v0[46];
    v4 = v0[44];
    v5 = v0[17];
    v6 = sub_4E7C();
    sub_46C0(v6, qword_C248);
    (*(v2 + 16))(v3, v5, v4);
    v7 = sub_4E5C();
    v8 = sub_502C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[45];
    v11 = v0[46];
    v12 = v0[44];
    if (v9)
    {
      v167 = v0[44];
      v13 = v0[42];
      v14 = v0[43];
      v15 = v0[41];
      v16 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v177 = v174;
      *v16 = 136315138;
      v170 = v8;
      sub_4F3C();
      sub_4AAC(&qword_C1D0, &type metadata accessor for URL);
      v17 = sub_50DC();
      v19 = v18;
      (*(v13 + 8))(v14, v15);
      (*(v10 + 8))(v11, v167);
      v20 = sub_3FE8(v17, v19, &v177);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_0, v7, v170, "[AssistantSettings] onSettingsExperienceOpenURL url: %s", v16, 0xCu);
      sub_4A60(v174);
    }

    else
    {

      (*(v10 + 8))(v11, v12);
    }

    v22 = v0[42];
    v21 = v0[43];
    v23 = v0[41];
    v24 = v0[38];
    v25 = v0[39];
    v26 = v0[37];
    v27 = v0[17];
    sub_4F3C();
    sub_4D8C();
    (*(v22 + 8))(v21, v23);
    v28 = (*(v25 + 48))(v26, 1, v24);
    v29 = v0[17];
    if (v28 == 1)
    {
      v30 = v0[36];
      v31 = v0[33];
      v32 = v0[34];
      v33 = v0[16];
      sub_4AF4(v0[37], &qword_C1A8, &qword_54E8);
      sub_4F2C();
      sub_4F6C();
      (*(v32 + 8))(v30, v31);
      goto LABEL_71;
    }

    v34 = v0[35];
    (*(v0[39] + 32))(v0[40], v0[37], v0[38]);
    sub_4F2C();
    v0[12] = sub_4D9C();
    v0[13] = v35;
    v0[14] = 47;
    v0[15] = 0xE100000000000000;
    sub_46F8();
    v36 = sub_507C();

    v168 = *(v36 + 16);
    if (!v168)
    {

      goto LABEL_68;
    }

    v37 = 0;
    v38 = v0[28];
    v171 = (v38 + 56);
    v175 = (v38 + 48);
    v160 = (v38 + 32);
    v162 = (v38 + 8);
    v39 = (v36 + 40);
    v40 = 13;
    v165 = v36;
LABEL_9:
    if (v37 < *(v36 + 16))
    {
      break;
    }

    __break(1u);
LABEL_81:
    swift_once();
  }

  v41 = v40;
  v43 = *(v39 - 1);
  v42 = *v39;

  v44._rawValue = &off_8570;
  v180._countAndFlagsBits = v43;
  v180._object = v42;
  v45 = sub_50CC(v44, v180);

  v40 = 0;
  switch(v45)
  {
    case 0:
      goto LABEL_26;
    case 1:
      v40 = 1;
      goto LABEL_26;
    case 2:
      v40 = 2;
      goto LABEL_26;
    case 3:
      v40 = 3;
      goto LABEL_26;
    case 4:
      v40 = 4;
      goto LABEL_26;
    case 5:
      sub_474C();
      if (v46)
      {
        v47 = v0[27];
        v48 = v0[24];
        v49 = v0[20];
        sub_505C();
        sub_4EFC();
        (*v171)(v48, 0, 1, v47);
        v40 = 5;
      }

      else
      {
        v40 = 5;
LABEL_26:
        v53 = v0[19];
        sub_3D20(v40, v53);
        v54 = sub_4E1C();
        v55 = *(v54 - 8);
        if ((*(v55 + 48))(v53, 1, v54) == 1)
        {
          v56 = v0[27];
          v57 = v0[24];
          sub_4AF4(v0[19], &qword_C198, &qword_54D8);
          (*v171)(v57, 1, 1, v56);
        }

        else
        {
          v58 = v0[24];
          v59 = v0[19];
          sub_4DEC();
          (*(v55 + 8))(v59, v54);
        }
      }

LABEL_29:
      v60 = v0[27];
      v61 = v0[25];
      sub_49F0(v0[24], v61);
      v62 = *v175;
      if ((*v175)(v61, 1, v60) == 1)
      {
        sub_4AF4(v0[25], &qword_C1A0, &qword_54E0);
        if (v41 != 5)
        {
          if (v41 != 8)
          {
            if (v41 == 13)
            {
              (*v171)(v0[23], 1, 1, v0[27]);
LABEL_42:
              sub_4AF4(v0[23], &qword_C1A0, &qword_54E0);
              goto LABEL_46;
            }

            goto LABEL_38;
          }

          v63 = v0[27];
          v64 = v0[22];
          v65 = v0[20];
          sub_505C();
          sub_4EEC();
LABEL_37:
          (*v171)(v64, 0, 1, v63);
          goto LABEL_41;
        }

        sub_474C();
        if (v66)
        {
          v63 = v0[27];
          v64 = v0[22];
          v67 = v0[20];
          sub_505C();
          sub_4EFC();
          goto LABEL_37;
        }

LABEL_38:
        v68 = v0[18];
        sub_3D20(v41, v68);
        v69 = sub_4E1C();
        v70 = *(v69 - 8);
        if ((*(v70 + 48))(v68, 1, v69) == 1)
        {
          v71 = v0[27];
          v72 = v0[22];
          sub_4AF4(v0[18], &qword_C198, &qword_54D8);
          (*v171)(v72, 1, 1, v71);
        }

        else
        {
          v73 = v0[22];
          v74 = v0[18];
          sub_4DEC();
          (*(v70 + 8))(v74, v69);
        }

LABEL_41:
        v75 = v0[27];
        v76 = v0[23];
        sub_49F0(v0[22], v76);
        if (v62(v76, 1, v75) == 1)
        {
          goto LABEL_42;
        }

        (*v160)(v0[30], v0[23], v0[27]);
        v77 = sub_4E5C();
        v78 = sub_502C();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v177 = v80;
          *v79 = 136315138;
          v81 = sub_3764(v40);
          v83 = sub_3FE8(v81, v82, &v177);

          *(v79 + 4) = v83;
          _os_log_impl(&dword_0, v77, v78, "[AssistantSettings] adding destination to navigationPath: %s", v79, 0xCu);
          sub_4A60(v80);
        }

        v84 = v0[35];
        v85 = v0[30];
        v86 = v0[27];
        sub_4AAC(&qword_C1B8, &type metadata accessor for SettingsPaneRecipe);
        sub_4E8C();
        (*v162)(v85, v86);
LABEL_46:
        v87 = sub_4E5C();
        v88 = sub_502C();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v177 = v90;
          *v89 = 136315138;
          v91 = 0xE800000000000000;
          v92 = 0x65676175676E614CLL;
          switch(v40)
          {
            case 1:
              v91 = 0xE400000000000000;
              v92 = 1802264916;
              break;
            case 2:
              v91 = 0xE500000000000000;
              v92 = 0x6563696F56;
              break;
            case 3:
              v91 = 0xE900000000000073;
              v92 = 0x65736E6F70736552;
              break;
            case 4:
              v92 = 0x65636E756F6E6E41;
              v91 = 0xED0000736C6C6143;
              break;
            case 5:
              v92 = 0xD000000000000015;
              v91 = 0x8000000000005560;
              break;
            case 6:
              v92 = 0x6E6967617373654DLL;
              v91 = 0xE900000000000067;
              break;
            case 7:
              v91 = 0xE700000000000000;
              v92 = 0x79726F74736948;
              break;
            case 8:
              v92 = 0x6C616E7265747845;
              v91 = 0xEF6C65646F4D4941;
              break;
            case 9:
              v92 = 0xD000000000000014;
              v91 = 0x80000000000055A0;
              break;
            case 10:
              v91 = 0xE500000000000000;
              v92 = 0x5546436D67;
              break;
            case 11:
              v92 = 0xD000000000000010;
              v91 = 0x80000000000055C0;
              break;
            case 12:
              v92 = 0x6F6C467964647562;
              v91 = 0xEE00707574655377;
              break;
            default:
              break;
          }

          v93 = sub_3FE8(v92, v91, &v177);

          *(v89 + 4) = v93;
          _os_log_impl(&dword_0, v87, v88, "[AssistantSettings] setting previousDestination = %s", v89, 0xCu);
          sub_4A60(v90);
        }

        v36 = v165;
LABEL_62:
        ++v37;
        v39 += 2;
        if (v168 == v37)
        {

          if (v40 != 13)
          {
            v94 = v0[26];
            v95 = v0[27];
            sub_34F4(v40, v94);
            v96 = *v175;
            if ((*v175)(v94, 1, v95) != 1)
            {
              v146 = v0[39];
              v145 = v0[40];
              v147 = v0[38];
              v149 = v0[34];
              v148 = v0[35];
              v151 = v0[32];
              v150 = v0[33];
              v152 = v0[27];
              v153 = v0[16];
              (*v160)(v151, v0[26], v152);
              sub_4F5C();
              (*v162)(v151, v152);
              (*(v149 + 8))(v148, v150);
              (*(v146 + 8))(v145, v147);
              goto LABEL_71;
            }

            sub_4AF4(v0[26], &qword_C1A0, &qword_54E0);
            if ((v40 - 9) < 4u)
            {
              sub_3C90(&qword_C1C0, &qword_54F0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_53E0;
              *(inited + 32) = 1752457584;
              *(inited + 40) = 0xE400000000000000;
              v98 = sub_3764(v40);
              *(inited + 72) = &type metadata for String;
              *(inited + 48) = v98;
              *(inited + 56) = v99;
              v100 = sub_48E0(inited);
              swift_setDeallocating();
              sub_4AF4(inited + 32, &qword_C1C8, &qword_54F8);
              v101 = objc_opt_self();
              sub_392C(v100);

              isa = sub_4F9C().super.isa;

              [v101 setPendingURLResources:isa];

LABEL_70:
              v108 = v0[39];
              v107 = v0[40];
              v109 = v0[38];
              v111 = v0[34];
              v110 = v0[35];
              v112 = v0[33];
              v113 = v0[16];
              sub_4F6C();
              (*(v111 + 8))(v110, v112);
              (*(v108 + 8))(v107, v109);
              goto LABEL_71;
            }

            v154 = v0[27];
            v155 = v0[21];
            sub_34F4(v40, v155);
            if (v96(v155, 1, v154) != 1)
            {
              v156 = v0[35];
              v157 = v0[29];
              v158 = v0[27];
              (*v160)(v157, v0[21], v158);
              sub_4AAC(&qword_C1B8, &type metadata accessor for SettingsPaneRecipe);
              sub_4E8C();
              (*v162)(v157, v158);
              goto LABEL_70;
            }

LABEL_69:
            sub_4AF4(v0[21], &qword_C1A0, &qword_54E0);
            goto LABEL_70;
          }

LABEL_68:
          v103 = v0[27];
          v104 = v0[26];
          v105 = v0[21];
          v106 = *(v0[28] + 56);
          v106(v104, 1, 1, v103);
          sub_4AF4(v104, &qword_C1A0, &qword_54E0);
          v106(v105, 1, 1, v103);
          goto LABEL_69;
        }

        goto LABEL_9;
      }

      v126 = v0[31];
      v127 = v0[27];
      v128 = v0[25];

      (*v160)(v126, v128, v127);
      v129 = sub_4E5C();
      v130 = sub_502C();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v177 = v132;
        *v131 = 136315138;
        v133 = sub_3764(v40);
        v135 = sub_3FE8(v133, v134, &v177);

        *(v131 + 4) = v135;
        _os_log_impl(&dword_0, v129, v130, "[AssistantSettings] openSettingsExperience destination: %s", v131, 0xCu);
        sub_4A60(v132);
      }

      v137 = v0[39];
      v136 = v0[40];
      v138 = v0[38];
      v140 = v0[34];
      v139 = v0[35];
      v141 = v0[33];
      v142 = v0[31];
      v143 = v0[27];
      v144 = v0[16];
      sub_4F5C();
      (*v162)(v142, v143);
      (*(v140 + 8))(v139, v141);
      (*(v137 + 8))(v136, v138);
LABEL_71:
      v114 = v0[46];
      v115 = v0[43];
      v116 = v0[40];
      v117 = v0[36];
      v118 = v0[37];
      v119 = v0[35];
      v121 = v0[31];
      v120 = v0[32];
      v123 = v0[29];
      v122 = v0[30];
      v159 = v0[26];
      v161 = v0[25];
      v163 = v0[24];
      v164 = v0[23];
      v166 = v0[22];
      v169 = v0[21];
      v172 = v0[20];
      v173 = v0[19];
      v176 = v0[18];

      v124 = v0[1];

      return v124();
    case 6:
      v40 = 6;
      goto LABEL_26;
    case 7:
      v40 = 7;
      goto LABEL_26;
    case 8:
      v50 = v0[27];
      v51 = v0[24];
      v52 = v0[20];
      sub_505C();
      sub_4EEC();
      (*v171)(v51, 0, 1, v50);
      v40 = 8;
      goto LABEL_29;
    case 9:
      v40 = 9;
      goto LABEL_26;
    case 10:
      v40 = 10;
      goto LABEL_26;
    case 11:
      v40 = 11;
      goto LABEL_26;
    case 12:
      v40 = 12;
      goto LABEL_26;
    default:
      v40 = v41;
      goto LABEL_62;
  }
}

uint64_t sub_34F4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_3C90(&qword_C198, &qword_54D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_506C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  if (a1 == 5)
  {
    sub_474C();
    if (v10)
    {
      sub_505C();
      sub_4EFC();
      goto LABEL_6;
    }
  }

  else if (a1 == 8)
  {
    sub_505C();
    sub_4EEC();
LABEL_6:
    v11 = sub_4F0C();
    return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
  }

  sub_3D20(a1, v7);
  v13 = sub_4E1C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_4AF4(v7, &qword_C198, &qword_54D8);
    v15 = sub_4F0C();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  else
  {
    sub_4DEC();
    return (*(v14 + 8))(v7, v13);
  }
}

unint64_t sub_3764(char a1)
{
  result = 0x65676175676E614CLL;
  switch(a1)
  {
    case 1:
      result = 1802264916;
      break;
    case 2:
      result = 0x6563696F56;
      break;
    case 3:
      result = 0x65736E6F70736552;
      break;
    case 4:
      result = 0x65636E756F6E6E41;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6E6967617373654DLL;
      break;
    case 7:
      result = 0x79726F74736948;
      break;
    case 8:
      result = 0x6C616E7265747845;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x5546436D67;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6F6C467964647562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_392C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_3C90(&qword_C210, &qword_5510);
    v2 = sub_50BC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_4B54(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_4BB4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_4BB4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_4BB4(v31, v32);
    result = sub_508C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_4BB4(v32, (v2[7] + 32 * v10));
    ++v2[2];
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

uint64_t sub_3BF4()
{
  v0 = *(*(sub_4E1C() - 8) + 64);
  __chkstk_darwin();
  sub_4C98(0, &qword_C190, ASTLockScreenSuggestionsDetailListController_ptr);
  sub_4DFC();
  return sub_4DCC();
}

uint64_t sub_3C90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3CD8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3D20@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_504C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  if (a1 <= 5u)
  {
    if (a1 <= 2u)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v11 = &unk_C200;
          v12 = AssistantActivationController_ptr;
        }

        else
        {
          v11 = &unk_C1F8;
          v12 = AssistantVoiceController_ptr;
        }
      }

      else
      {
        v11 = &unk_C208;
        v12 = AssistantLanguageController_ptr;
      }

      goto LABEL_16;
    }

    if (a1 == 3)
    {
      v11 = &unk_C1F0;
      v12 = AssistantAudioFeedbackController_ptr;
      goto LABEL_16;
    }

    if (a1 != 4)
    {
      sub_474C();
      if (v15)
      {
        goto LABEL_3;
      }
    }

LABEL_21:
    sub_503C();
    sub_4E0C();
    v16 = sub_4E1C();
    return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
  }

  if (a1 - 8 >= 5)
  {
    if (a1 != 6)
    {
      v11 = &unk_C1E8;
      v12 = AssistantHistoryViewController_ptr;
LABEL_16:
      sub_4C98(0, v11, v12);
      sub_4DFC();
      v13 = sub_4E1C();
      v7 = *(*(v13 - 8) + 56);
      v8 = v13;
      v9 = a2;
      v10 = 0;
      goto LABEL_17;
    }

    goto LABEL_21;
  }

LABEL_3:
  v6 = sub_4E1C();
  v7 = *(*(v6 - 8) + 56);
  v8 = v6;
  v9 = a2;
  v10 = 1;
LABEL_17:

  return v7(v9, v10, 1, v8);
}

uint64_t sub_3FE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_40B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_4B54(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4A60(v11);
  return v7;
}

unint64_t sub_40B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_41C0(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_50AC();
    a6 = v11;
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

char *sub_41C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_420C(a1, a2);
  sub_433C(&off_8548);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_420C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_4428(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_50AC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_4FEC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_4428(v10, 0);
        result = sub_509C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_433C(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_449C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_4428(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_3C90(&qword_C1E0, &qword_5508);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_449C(char *result, int64_t a2, char a3, char *a4)
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
    sub_3C90(&qword_C1E0, &qword_5508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_4590(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_50FC();
  sub_4FDC();
  v6 = sub_510C();

  return sub_4608(a1, a2, v6);
}

unint64_t sub_4608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_50EC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_46C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_46F8()
{
  result = qword_C1B0;
  if (!qword_C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1B0);
  }

  return result;
}

void sub_474C()
{
  v0 = sub_4FBC();
  v1 = PSBundlePathForPreferenceBundle();

  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = SFRuntimeAbsoluteFilePathForPath();

  if (!v2)
  {
    sub_4FCC();
    v2 = sub_4FBC();
  }

  v3 = [objc_allocWithZone(NSBundle) initWithPath:v2];

  if (v3)
  {
    v4 = [v3 infoDictionary];
    if (v4)
    {
      v5 = v4;
      v6 = sub_4FAC();

      if (*(v6 + 16))
      {
        v7 = sub_4590(0xD000000000000033, 0x80000000000056A0);
        if (v8)
        {
          sub_4B54(*(v6 + 56) + 32 * v7, v9);

LABEL_11:
          sub_4AF4(v9, &qword_C1D8, &qword_5500);
          return;
        }
      }
    }

    memset(v9, 0, sizeof(v9));
    goto LABEL_11;
  }
}

unint64_t sub_48E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3C90(&qword_C218, &qword_5518);
    v3 = sub_50BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_4BC4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_4590(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_4BB4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_49F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3C90(&qword_C1A0, &qword_54E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4A60(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_4AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4AF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3C90(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_4B54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_4BB4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_4BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3C90(&qword_C1C8, &qword_54F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_4C34(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_4C98(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_4CE0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_4D44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_3CD8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}