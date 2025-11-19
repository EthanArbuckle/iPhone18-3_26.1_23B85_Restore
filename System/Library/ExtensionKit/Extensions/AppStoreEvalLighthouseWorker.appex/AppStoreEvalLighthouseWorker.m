uint64_t sub_100001358()
{
  v0 = sub_100012388();
  sub_100011B5C(v0, qword_10001CA80);
  sub_100011144(v0, qword_10001CA80);
  return sub_100012378();
}

unint64_t sub_1000013D8(char a1)
{
  result = 0x6165726C41736168;
  switch(a1)
  {
    case 1:
      return 0xD000000000000027;
    case 2:
      v3 = 10;
      goto LABEL_17;
    case 3:
      return 0xD00000000000001BLL;
    case 4:
      return result;
    case 5:
      return 0xD000000000000017;
    case 6:
      v3 = 11;
      goto LABEL_17;
    case 7:
      return 0xD00000000000002BLL;
    case 8:
      return 0xD000000000000014;
    case 9:
      return 0xD000000000000025;
    case 10:
    case 19:
      return 0xD000000000000024;
    case 11:
      return 0xD00000000000001CLL;
    case 12:
      return 0xD000000000000020;
    case 13:
    case 22:
      return 0xD000000000000016;
    case 14:
      return 0xD000000000000018;
    case 15:
      return 0xD000000000000014;
    case 16:
      return 0xD000000000000022;
    case 17:
    case 18:
      return 0xD000000000000019;
    case 20:
    case 24:
      return 0xD000000000000015;
    case 21:
      v3 = 9;
LABEL_17:
      result = v3 | 0xD000000000000014;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD00000000000002ALL;
      break;
  }

  return result;
}

uint64_t sub_100001718(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000013D8(*a1);
  v5 = v4;
  if (v3 == sub_1000013D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100012698();
  }

  return v8 & 1;
}

Swift::Int sub_1000017A0()
{
  v1 = *v0;
  sub_100012728();
  sub_1000013D8(v1);
  sub_100012448();

  return sub_100012748();
}

uint64_t sub_100001804()
{
  sub_1000013D8(*v0);
  sub_100012448();
}

Swift::Int sub_100001858()
{
  v1 = *v0;
  sub_100012728();
  sub_1000013D8(v1);
  sub_100012448();

  return sub_100012748();
}

uint64_t sub_1000018B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100010B40();
  *a2 = result;
  return result;
}

unint64_t sub_1000018E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000013D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100001938()
{
  v1 = *v0;
  sub_100012728();
  sub_100012738(v1);
  return sub_100012748();
}

Swift::Int sub_1000019AC()
{
  v1 = *v0;
  sub_100012728();
  sub_100012738(v1);
  return sub_100012748();
}

uint64_t sub_1000019F0()
{
  v1 = *v0;
  v2 = 0x7341657069636572;
  v3 = 0x736E6F69676572;
  v4 = 0x45736E6F69676572;
  if (v1 != 3)
  {
    v4 = 0x676E696C706D6173;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65636E4F6E7572;
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

uint64_t sub_100001AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100010B94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100001AE4(uint64_t a1)
{
  v2 = sub_100011084();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001B20(uint64_t a1)
{
  v2 = sub_100011084();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001B5C(void *a1)
{
  v3 = v1;
  v5 = sub_10000E8BC(&qword_10001C198, &qword_100012F00);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_100011040(a1, a1[3]);
  sub_100011084();
  sub_100012798();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  sub_100012658();
  if (!v2)
  {
    v14 = *(v3 + 16);
    LOBYTE(v18) = 1;
    sub_100012668();
    v18 = v3[3];
    HIBYTE(v17) = 2;
    sub_10000E8BC(&qword_10001C168, &qword_100012EE0);
    sub_1000110D8(&qword_10001C1A0);
    sub_100012648();
    v18 = v3[4];
    HIBYTE(v17) = 3;
    sub_100012648();
    v15 = v3[5];
    v16 = *(v3 + 48);
    LOBYTE(v18) = 4;
    sub_100012638();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_100001DCC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100010D54(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100001E34(uint64_t a1, unint64_t a2)
{
  v4 = sub_100012418();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012408();
  v9 = sub_1000123F8();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  result = 0;
  if (v11 >> 60 != 15)
  {
    v13 = objc_opt_self();
    isa = sub_1000121C8().super.isa;
    v24[0] = 0;
    v15 = [v13 JSONObjectWithData:isa options:1 error:v24];

    if (v15)
    {
      v16 = v24[0];
      sub_100012528();
      sub_100011B48(v9, v11);
      swift_unknownObjectRelease();
      sub_10000E8BC(&qword_10001C260, &qword_100012FA8);
      if (swift_dynamicCast())
      {
        return v23[1];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v17 = v24[0];
      sub_100012108();

      swift_willThrow();
      if (qword_10001C2A0 != -1)
      {
        swift_once();
      }

      v18 = sub_100012388();
      sub_100011144(v18, qword_10001CA80);

      v19 = sub_100012368();
      v20 = sub_1000124F8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v24[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_10000EEB8(a1, a2, v24);
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to parse dictionary from string %s", v21, 0xCu);
        sub_1000111D0(v22);
      }

      sub_100011B48(v9, v11);

      return 0;
    }
  }

  return result;
}

uint64_t sub_100002174(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = sub_100012218();
  v2[36] = v3;
  v4 = *(v3 - 8);
  v2[37] = v4;
  v5 = *(v4 + 64) + 15;
  v2[38] = swift_task_alloc();
  v6 = *(*(sub_10000E8BC(&qword_10001C270, &qword_100012FC0) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v7 = *(*(sub_10000E8BC(&qword_10001C1B8, &qword_100012F20) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v8 = sub_10000E8BC(&qword_10001C0B8, &unk_100012D40);
  v2[41] = v8;
  v9 = *(v8 - 8);
  v2[42] = v9;
  v10 = *(v9 + 64) + 15;
  v2[43] = swift_task_alloc();

  return _swift_task_switch(sub_10000230C, 0, 0);
}

uint64_t sub_10000230C()
{
  v27 = v0;
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = sub_1000123D8();
  v3 = [v1 initWithSuiteName:v2];
  v0[44] = v3;

  if (v3)
  {
    v4 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
    v5 = swift_task_alloc();
    v0[45] = v5;
    v6 = type metadata accessor for AppStoreEvalLighthouseWorker();
    v7 = sub_10000EC78(&qword_10001C158);
    v8 = sub_10000EA68();
    v9 = sub_10000EABC();
    *v5 = v0;
    v5[1] = sub_1000025FC;
    v10 = v0[40];
    v11 = v0[34];
    v12 = v0[35];

    return MLHostExtension.loadConfig<A>(context:)(v10, v11, v6, &type metadata for AppStoreEvalLighthouseWorkerConfig, v7, v8, v9);
  }

  else
  {
    if (qword_10001C2A0 != -1)
    {
      swift_once();
    }

    v13 = sub_100012388();
    sub_100011144(v13, qword_10001CA80);
    v14 = sub_100012368();
    v15 = sub_1000124F8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10000EEB8(0xD00000000000002DLL, 0x80000001000135D0, v26);
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to instantiate userDefaults with suiteName %s. Exiting early.", v16, 0xCu);
      sub_1000111D0(v17);
    }

    v26[3] = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v26[4] = sub_10001117C();
    LOBYTE(v26[0]) = 0;
    v18 = objc_allocWithZone(sub_100012288());
    v19 = sub_100012268();
    v20 = v0[43];
    v22 = v0[39];
    v21 = v0[40];
    v23 = v0[38];

    v24 = v0[1];

    return v24(v19);
  }
}

uint64_t sub_1000025FC()
{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return _swift_task_switch(sub_1000026F8, 0, 0);
}

uint64_t sub_1000026F8()
{
  v186 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(*(v0 + 344), v3, v1);
    if (qword_10001C2A0 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 272);
    v12 = sub_100012388();
    v13 = sub_100011144(v12, qword_10001CA80);
    v14 = v11;
    v15 = sub_100012368();
    v16 = sub_1000124F8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 272);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v183[0] = v19;
      *v18 = 136315138;
      v20 = sub_100012338();
      v22 = sub_10000EEB8(v20, v21, v183);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "context.taskName %s", v18, 0xCu);
      sub_1000111D0(v19);
    }

    v23 = *(v0 + 344);
    v24 = *(v0 + 328);
    sub_1000122C8();
    v25 = *(v0 + 24);

    v26 = *(v0 + 40);

    v27 = *(v0 + 48);

    if (*(v0 + 64))
    {
LABEL_12:
      v28 = *(v0 + 304);
      v29 = *(v0 + 312);
      v30 = *(v0 + 288);
      v31 = *(v0 + 296);
      sub_100012208();
      sub_1000121F8();
      (*(v31 + 8))(v28, v30);
      v32 = sub_1000121E8();
      v33 = *(v32 - 8);
      v34 = (*(v33 + 48))(v29, 1, v32);
      v35 = *(v0 + 312);
      if (v34 == 1)
      {
        sub_100011BC0(*(v0 + 312), &qword_10001C270, &qword_100012FC0);
        v36 = 0xE300000000000000;
        v37 = 3223600;
      }

      else
      {
        v37 = sub_1000121D8();
        v36 = v50;
        (*(v33 + 8))(v35, v32);
      }

      v51 = sub_100012368();
      v52 = sub_1000124F8();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v183[0] = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_10000EEB8(v37, v36, v183);
        _os_log_impl(&_mh_execute_header, v51, v52, "Device region is %s", v53, 0xCu);
        sub_1000111D0(v54);
      }

      v55 = *(v0 + 344);
      v56 = *(v0 + 328);
      sub_1000122C8();
      v57 = *(v0 + 80);

      v59 = *(v0 + 96);
      v58 = *(v0 + 104);

      if (v59)
      {

        v60 = sub_100012368();
        v61 = sub_1000124F8();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v183[0] = v63;
          *v62 = 136315138;
          v64 = sub_1000124A8();
          v66 = sub_10000EEB8(v64, v65, v183);

          *(v62 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v60, v61, "Expected regions are %s", v62, 0xCu);
          sub_1000111D0(v63);
        }

        v67 = *(v59 + 16);
        v68 = &_swiftEmptyArrayStorage;
        if (v67)
        {
          v183[0] = &_swiftEmptyArrayStorage;
          sub_10000FDB0(0, v67, 0);
          v68 = v183[0];
          v69 = (v59 + 40);
          do
          {
            v70 = *(v69 - 1);
            v71 = *v69;
            v72 = sub_100012428();
            v183[0] = v68;
            v75 = v68[2];
            v74 = v68[3];
            if (v75 >= v74 >> 1)
            {
              v178 = v72;
              v180 = v36;
              v77 = v13;
              v78 = v37;
              v79 = v73;
              sub_10000FDB0((v74 > 1), v75 + 1, 1);
              v73 = v79;
              v37 = v78;
              v13 = v77;
              v72 = v178;
              v36 = v180;
              v68 = v183[0];
            }

            v68[2] = v75 + 1;
            v76 = &v68[2 * v75];
            *(v76 + 4) = v72;
            *(v76 + 5) = v73;
            v69 += 2;
            --v67;
          }

          while (v67);
        }

        v80 = sub_1000112E4(v68);

        v81 = sub_100003B34(v37, v36, v80);

        if ((v81 & 1) == 0)
        {

          v129 = sub_100012368();
          v130 = sub_1000124F8();

          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v183[0] = swift_slowAlloc();
            *v131 = 136315394;
            v132 = sub_10000EEB8(v37, v36, v183);

            *(v131 + 4) = v132;
            *(v131 + 12) = 2080;
            v133 = sub_1000124A8();
            v135 = v134;

            v136 = sub_10000EEB8(v133, v135, v183);

            *(v131 + 14) = v136;
            _os_log_impl(&_mh_execute_header, v129, v130, "Device region is %s, but expected %s. Exiting early.", v131, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v45 = *(v0 + 344);
          v46 = *(v0 + 352);
          v47 = *(v0 + 328);
          v48 = *(v0 + 336);
          v184 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
          v185 = sub_10001117C();
          v49 = 21;
          goto LABEL_67;
        }
      }

      v82 = *(v0 + 344);
      v83 = *(v0 + 328);
      sub_1000122C8();
      v84 = *(v0 + 136);
      v85 = *(v0 + 152);
      v86 = *(v0 + 160);

      if (v86)
      {

        v87 = sub_100012368();
        v88 = sub_1000124F8();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          v183[0] = v181;
          *v89 = 136315138;
          v90 = sub_1000124A8();
          v92 = v86;
          v93 = v36;
          v94 = v13;
          v95 = v37;
          v96 = sub_10000EEB8(v90, v91, v183);

          *(v89 + 4) = v96;
          v37 = v95;
          v13 = v94;
          v36 = v93;
          v86 = v92;
          _os_log_impl(&_mh_execute_header, v87, v88, "Excluded regions are %s", v89, 0xCu);
          sub_1000111D0(v181);
        }

        v97 = *(v86 + 16);
        v98 = &_swiftEmptyArrayStorage;
        if (v97)
        {
          v183[0] = &_swiftEmptyArrayStorage;
          sub_10000FDB0(0, v97, 0);
          v98 = v183[0];
          v99 = (v86 + 40);
          do
          {
            v100 = *(v99 - 1);
            v101 = *v99;
            v102 = sub_100012428();
            v183[0] = v98;
            v105 = v98[2];
            v104 = v98[3];
            if (v105 >= v104 >> 1)
            {
              v179 = v86;
              v182 = v102;
              v107 = v36;
              v108 = v13;
              v109 = v37;
              v110 = v103;
              sub_10000FDB0((v104 > 1), v105 + 1, 1);
              v103 = v110;
              v37 = v109;
              v13 = v108;
              v36 = v107;
              v86 = v179;
              v102 = v182;
              v98 = v183[0];
            }

            v98[2] = v105 + 1;
            v106 = &v98[2 * v105];
            *(v106 + 4) = v102;
            *(v106 + 5) = v103;
            v99 += 2;
            --v97;
          }

          while (v97);
        }

        v111 = sub_1000112E4(v98);

        v112 = sub_100003B34(v37, v36, v111);

        if (v112)
        {

          v113 = sub_100012368();
          v114 = sub_1000124F8();

          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            v183[0] = swift_slowAlloc();
            *v115 = 136315394;
            v116 = sub_10000EEB8(v37, v36, v183);

            *(v115 + 4) = v116;
            *(v115 + 12) = 2080;
            v117 = sub_1000124A8();
            v119 = v118;

            v120 = sub_10000EEB8(v117, v119, v183);

            *(v115 + 14) = v120;
            _os_log_impl(&_mh_execute_header, v113, v114, "Device region is %s, which is excluded by %s. Exiting early.", v115, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v45 = *(v0 + 344);
          v46 = *(v0 + 352);
          v47 = *(v0 + 328);
          v48 = *(v0 + 336);
          v184 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
          v185 = sub_10001117C();
          v49 = 22;
          goto LABEL_67;
        }
      }

      v137 = *(v0 + 344);
      v138 = *(v0 + 328);
      sub_1000122C8();
      v139 = *(v0 + 192);

      LODWORD(v137) = *(v0 + 200);
      v140 = *(v0 + 208);

      v141 = *(v0 + 216);

      if (v137 != 1 || (v142 = *(v0 + 352), v143 = *(v0 + 272), sub_100012338(), v144 = sub_1000123D8(), , LODWORD(v143) = [v142 BOOLForKey:v144], v144, !v143))
      {
        v45 = *(v0 + 344);
        v46 = *(v0 + 352);
        v47 = *(v0 + 328);
        v48 = *(v0 + 336);
        v154 = objc_allocWithZone(sub_100012288());
        v155 = sub_100012278();
LABEL_68:
        v10 = v155;

        (*(v48 + 8))(v45, v47);
        goto LABEL_69;
      }

      v145 = *(v0 + 272);
      v146 = sub_100012368();
      v147 = sub_1000124F8();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = *(v0 + 272);
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v183[0] = v150;
        *v149 = 136315138;
        v151 = sub_100012338();
        v153 = sub_10000EEB8(v151, v152, v183);

        *(v149 + 4) = v153;
        _os_log_impl(&_mh_execute_header, v146, v147, "%s has already run and runOnce is true. Exiting early.", v149, 0xCu);
        sub_1000111D0(v150);
      }

      v45 = *(v0 + 344);
      v46 = *(v0 + 352);
      v47 = *(v0 + 328);
      v48 = *(v0 + 336);
      v184 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v185 = sub_10001117C();
      v49 = 4;
LABEL_67:
      LOBYTE(v183[0]) = v49;
      v171 = objc_allocWithZone(sub_100012288());
      v155 = sub_100012268();
      goto LABEL_68;
    }

    v38 = *(v0 + 56);
    v39 = sub_100012368();
    v40 = sub_1000124F8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v39, v40, "Sampling is %ld", v41, 0xCu);
    }

    if ((v38 - 1001) <= 0xFFFFFFFFFFFFFC17)
    {
      v42 = sub_100012368();
      v43 = sub_1000124F8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        *(v44 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v42, v43, "Sampling is %ld, but expected [1, 1000]. Exiting early.", v44, 0xCu);
      }

      v45 = *(v0 + 344);
      v46 = *(v0 + 352);
      v47 = *(v0 + 328);
      v48 = *(v0 + 336);

      v184 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v185 = sub_10001117C();
      v49 = 23;
      goto LABEL_67;
    }

    v121 = *(v0 + 352);
    v122 = *(v0 + 272);
    v183[0] = sub_100012338();
    v183[1] = v123;

    v188._countAndFlagsBits = 0x6E696C706D61732ELL;
    v188._object = 0xE900000000000067;
    sub_100012458(v188);

    v124 = sub_1000123D8();
    v125 = [v121 objectForKey:v124];

    if (v125)
    {
      v126 = *(v0 + 352);
      sub_100012528();
      swift_unknownObjectRelease();
      sub_100011BC0(v0 + 240, &qword_10001C1C8, &qword_100012F28);
      v127 = sub_1000123D8();

      v128 = [v126 BOOLForKey:v127];

      if (v128)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(v0 + 240) = 0u;
      *(v0 + 256) = 0u;
      sub_100011BC0(v0 + 240, &qword_10001C1C8, &qword_100012F28);
      v156 = sub_10000FD24(0x3E8uLL) + 1;
      v157 = sub_100012368();
      v158 = sub_1000124F8();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        *v159 = 134217984;
        *(v159 + 4) = v156;
        _os_log_impl(&_mh_execute_header, v157, v158, "Sampled probability as %ld. If less than sampling rate, then selected", v159, 0xCu);
      }

      v160 = *(v0 + 352);

      v161 = sub_1000123D8();

      [v160 setBool:v38 >= v156 forKey:v161];

      if (v38 >= v156)
      {
        goto LABEL_12;
      }
    }

    v162 = *(v0 + 272);
    v163 = sub_100012368();
    v164 = sub_1000124F8();

    if (os_log_type_enabled(v163, v164))
    {
      v165 = *(v0 + 272);
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v183[0] = v167;
      *v166 = 136315138;
      v168 = sub_100012338();
      v170 = sub_10000EEB8(v168, v169, v183);

      *(v166 + 4) = v170;
      _os_log_impl(&_mh_execute_header, v163, v164, "%s is not selected due to sampling. Exit early.", v166, 0xCu);
      sub_1000111D0(v167);
    }

    v45 = *(v0 + 344);
    v46 = *(v0 + 352);
    v47 = *(v0 + 328);
    v48 = *(v0 + 336);
    v184 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v185 = sub_10001117C();
    v49 = 24;
    goto LABEL_67;
  }

  sub_100011BC0(v3, &qword_10001C1B8, &qword_100012F20);
  if (qword_10001C2A0 != -1)
  {
    swift_once();
  }

  v4 = sub_100012388();
  sub_100011144(v4, qword_10001CA80);
  v5 = sub_100012368();
  v6 = sub_1000124F8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to parse config. Exiting early.", v7, 2u);
  }

  v8 = *(v0 + 352);

  v184 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
  v185 = sub_10001117C();
  LOBYTE(v183[0]) = 2;
  v9 = objc_allocWithZone(sub_100012288());
  v10 = sub_100012268();

LABEL_69:
  v172 = *(v0 + 344);
  v174 = *(v0 + 312);
  v173 = *(v0 + 320);
  v175 = *(v0 + 304);

  v176 = *(v0 + 8);

  return v176(v10);
}

uint64_t sub_1000038E4(uint64_t a1)
{
  v3 = (*(*(sub_10000E8BC(&qword_10001C1A8, &qword_100012F10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v22 - v4;
  v6 = sub_1000121A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v22 = v1;
  v26 = &_swiftEmptyArrayStorage;
  sub_10000FE10(0, v11, 0);
  v12 = v26;
  v24 = v7;
  v25 = (v7 + 48);
  v13 = (v7 + 32);
  v14 = (a1 + 40);
  v23 = v5;
  while (1)
  {
    v15 = *(v14 - 1);
    v16 = *v14;

    sub_100012178();
    result = (*v25)(v5, 1, v6);
    if (result == 1)
    {
      break;
    }

    v18 = *v13;
    (*v13)(v10, v5, v6);

    v26 = v12;
    v19 = v10;
    v21 = v12[2];
    v20 = v12[3];
    if (v21 >= v20 >> 1)
    {
      sub_10000FE10(v20 > 1, v21 + 1, 1);
      v12 = v26;
    }

    v12[2] = v21 + 1;
    v18(v12 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, v19, v6);
    v14 += 2;
    --v11;
    v10 = v19;
    v5 = v23;
    if (!v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100003B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_100012728();
  sub_100012448();
  v7 = sub_100012748();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_100012698() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100003C2C(uint64_t a1)
{
  v2[146] = v1;
  v2[145] = a1;
  v3 = sub_100012118();
  v2[147] = v3;
  v4 = *(v3 - 8);
  v2[148] = v4;
  v5 = *(v4 + 64) + 15;
  v2[149] = swift_task_alloc();
  v6 = sub_1000121A8();
  v2[150] = v6;
  v7 = *(v6 - 8);
  v2[151] = v7;
  v8 = *(v7 + 64) + 15;
  v2[152] = swift_task_alloc();
  v2[153] = swift_task_alloc();
  v2[154] = swift_task_alloc();
  v2[155] = swift_task_alloc();
  v2[156] = swift_task_alloc();
  v2[157] = swift_task_alloc();
  v2[158] = swift_task_alloc();
  v2[159] = swift_task_alloc();
  v2[160] = swift_task_alloc();
  v9 = *(*(sub_10000E8BC(&qword_10001C1A8, &qword_100012F10) - 8) + 64) + 15;
  v2[161] = swift_task_alloc();
  v2[162] = swift_task_alloc();
  v2[163] = swift_task_alloc();
  v2[164] = swift_task_alloc();
  v10 = *(*(sub_10000E8BC(&qword_10001C1B0, &qword_100012F18) - 8) + 64) + 15;
  v2[165] = swift_task_alloc();
  v11 = sub_100012358();
  v2[166] = v11;
  v12 = *(v11 - 8);
  v2[167] = v12;
  v13 = *(v12 + 64) + 15;
  v2[168] = swift_task_alloc();
  v14 = sub_100012318();
  v2[169] = v14;
  v15 = *(v14 - 8);
  v2[170] = v15;
  v16 = *(v15 + 64) + 15;
  v2[171] = swift_task_alloc();
  v17 = *(*(sub_10000E8BC(&qword_10001C1B8, &qword_100012F20) - 8) + 64) + 15;
  v2[172] = swift_task_alloc();
  v18 = sub_10000E8BC(&qword_10001C0B8, &unk_100012D40);
  v2[173] = v18;
  v19 = *(v18 - 8);
  v2[174] = v19;
  v20 = *(v19 + 64) + 15;
  v2[175] = swift_task_alloc();
  v2[176] = swift_task_alloc();
  v2[177] = swift_task_alloc();
  v2[178] = swift_task_alloc();

  return _swift_task_switch(sub_100003FE8, 0, 0);
}

uint64_t sub_100003FE8()
{
  v53 = v0;
  if (qword_10001C2A0 != -1)
  {
    swift_once();
  }

  v1 = v0[145];
  v2 = sub_100012388();
  v0[179] = sub_100011144(v2, qword_10001CA80);
  v3 = v1;
  v4 = sub_100012368();
  v5 = sub_1000124F8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[145];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100011BC0(v8, &qword_10001C208, &qword_100012F60);
  }

  v10 = objc_allocWithZone(NSUserDefaults);
  v11 = sub_1000123D8();
  v12 = [v10 initWithSuiteName:v11];
  v0[180] = v12;

  if (v12)
  {
    v13 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
    v14 = swift_task_alloc();
    v0[181] = v14;
    v15 = type metadata accessor for AppStoreEvalLighthouseWorker();
    v16 = sub_10000EC78(&qword_10001C158);
    v17 = sub_10000EA68();
    v18 = sub_10000EABC();
    *v14 = v0;
    v14[1] = sub_100004500;
    v19 = v0[172];
    v20 = v0[146];
    v21 = v0[145];

    return MLHostExtension.loadConfig<A>(context:)(v19, v21, v15, &type metadata for AppStoreEvalLighthouseWorkerConfig, v16, v17, v18);
  }

  else
  {
    v22 = sub_100012368();
    v23 = sub_1000124F8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v52[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10000EEB8(0xD00000000000002DLL, 0x80000001000135D0, v52);
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to instantiate userDefaults with suiteName %s. Exiting early.", v24, 0xCu);
      sub_1000111D0(v25);
    }

    v52[3] = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v52[4] = sub_10001117C();
    LOBYTE(v52[0]) = 1;
    v26 = objc_allocWithZone(sub_100012288());
    v39 = sub_100012268();
    v27 = v0[178];
    v28 = v0[177];
    v29 = v0[176];
    v30 = v0[175];
    v31 = v0[172];
    v32 = v0[171];
    v33 = v0[168];
    v34 = v0[165];
    v35 = v0[164];
    v36 = v0[163];
    v40 = v0[162];
    v41 = v0[161];
    v42 = v0[160];
    v43 = v0[159];
    v44 = v0[158];
    v45 = v0[157];
    v46 = v0[156];
    v47 = v0[155];
    v48 = v0[154];
    v49 = v0[153];
    v50 = v0[152];
    v51 = v0[149];

    v37 = v0[1];

    return v37(v39);
  }
}

uint64_t sub_100004500()
{
  v1 = *(*v0 + 1448);
  v3 = *v0;

  return _swift_task_switch(sub_100004628, 0, 0);
}

uint64_t sub_100004628()
{
  v601 = v0;
  v1 = v0;
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1384);
  v4 = *(v1 + 1376);
  v5 = (*(v2 + 48))(v4, 1, v3);
  v6 = *(v1 + 1432);
  if (v5 == 1)
  {
    sub_100011BC0(v4, &qword_10001C1B8, &qword_100012F20);
    v7 = sub_100012368();
    v8 = sub_1000124F8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to parse config. Exiting early.", v9, 2u);
    }

    v10 = *(v1 + 1440);

    v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v600 = sub_10001117C();
    LOBYTE(v598[0]) = 3;
    v11 = objc_allocWithZone(sub_100012288());
    v558 = sub_100012268();

    goto LABEL_122;
  }

  v12 = *(v1 + 1424);
  v13 = *(v1 + 1416);
  (*(v2 + 32))(v12, v4, v3);
  v14 = *(v2 + 16);
  *(v1 + 1456) = v14;
  *(v1 + 1464) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v13, v12, v3);
  v15 = sub_100012368();
  v16 = sub_1000124F8();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v1 + 1416);
  v19 = *(v1 + 1392);
  v596 = v1;
  v20 = *(v1 + 1384);
  if (v17)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v598[0] = v22;
    *v21 = 136315138;
    sub_100011728(&qword_10001C220, &qword_10001C0B8, &unk_100012D40);
    v23 = sub_100012678();
    v25 = v24;
    v26 = *(v19 + 8);
    v26(v18, v20);
    v27 = sub_10000EEB8(v23, v25, v598);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Configuration: %s", v21, 0xCu);
    sub_1000111D0(v22);
  }

  else
  {

    v26 = *(v19 + 8);
    v26(v18, v20);
  }

  *(v596 + 1472) = v26;
  v1 = v596;
  v28 = *(v596 + 1424);
  v29 = *(v596 + 1384);
  v30 = *(v596 + 1360);
  v31 = *(v596 + 1352);
  v32 = *(v596 + 1344);
  v33 = *(v596 + 1336);
  v34 = *(v596 + 1328);
  v35 = *(v596 + 1320);
  sub_1000122D8();
  sub_100012348();
  (*(v33 + 8))(v32, v34);
  if ((*(v30 + 48))(v35, 1, v31) != 1)
  {
    (*(*(v596 + 1360) + 32))(*(v596 + 1368), *(v596 + 1320), *(v596 + 1352));
    sub_100012258();
    v57 = sub_100012308();
    v59 = v58;
    *(v596 + 1480) = v58;
    v60 = sub_1000122F8();
    v62 = v61;
    *(v596 + 1488) = v61;
    v63 = async function pointer to static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)[1];
    v64 = swift_task_alloc();
    *(v596 + 1496) = v64;
    *v64 = v596;
    v64[1] = sub_100008260;
    v65 = *(v596 + 1160);
    v66 = v57;
    v67 = v59;
    v68 = v60;
    v69 = v62;

    return static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)(v65, v66, v67, v68, v69);
  }

  sub_100011BC0(*(v596 + 1320), &qword_10001C1B0, &qword_100012F18);
  *(v596 + 1512) = 0;
  v36 = *(v596 + 1464);
  v37 = *(v596 + 1456);
  v38 = *(v596 + 1432);
  v39 = *(v596 + 1424);
  v40 = *(v596 + 1408);
  v41 = *(v596 + 1384);
  v42 = [objc_allocWithZone(AMDLighthouseODMLWorker) init];
  *(v596 + 1520) = v42;
  v37(v40, v39, v41);
  v43 = sub_100012368();
  v44 = sub_1000124F8();
  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v596 + 1472);
  v47 = *(v596 + 1408);
  v48 = *(v596 + 1392);
  v49 = *(v596 + 1384);
  if (v45)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v598[0] = v51;
    *v50 = 136315138;
    sub_1000122C8();
    v46(v47, v49);
    v52 = *(v596 + 184);
    v53 = *(v596 + 192);
    v54 = *(v596 + 208);

    v55 = *(v596 + 216);

    v56 = sub_10000EEB8(v52, v53, v598);

    *(v50 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v43, v44, "Recipe: %s", v50, 0xCu);
    sub_1000111D0(v51);
  }

  else
  {

    v46(v47, v49);
  }

  v70 = *(v596 + 1424);
  v71 = *(v596 + 1384);
  sub_1000122C8();
  v73 = *(v596 + 240);
  v72 = *(v596 + 248);
  v74 = *(v596 + 264);

  v75 = *(v596 + 272);

  if (!v73 && v72 == 0xE000000000000000)
  {

    goto LABEL_19;
  }

  v76 = sub_100012698();

  if (v76)
  {
LABEL_19:
    v77 = *(v596 + 1160);
    v78 = *(*(v596 + 1208) + 56);
    v78(*(v596 + 1312), 1, 1, *(v596 + 1200));
    sub_100012328();
    if (v79)
    {
      v80 = *(v596 + 1272);
      v81 = *(v596 + 1208);
      v574 = v81;
      v578 = *(v596 + 1280);
      v582 = *(v596 + 1200);
      v589 = v42;
      v82 = *(v596 + 1192);
      v83 = *(v596 + 1184);
      v84 = *(v596 + 1176);
      v569 = v78;
      (v78)(*(v596 + 1304), 1, 1);
      v85 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v86 = *(v83 + 104);
      v86(v82, enum case for URL.DirectoryHint.inferFromPath(_:), v84);
      sub_100012188();
      *(v596 + 1000) = 0xD000000000000012;
      *(v596 + 1008) = 0x80000001000136F0;
      v87 = v85;
      v1 = v596;
      v86(v82, v87, v84);
      sub_100011680();
      sub_100012198();
      (*(v83 + 8))(v82, v84);
      v88 = *(v574 + 8);
      v88(v80, v582);
      v89 = [objc_opt_self() defaultManager];
      sub_100012168();
      v90 = sub_1000123D8();

      LODWORD(v80) = [v89 fileExistsAtPath:v90];

      if (v80)
      {
        v91 = *(v596 + 1312);
        v92 = *(v596 + 1280);
        v93 = *(v596 + 1208);
        v94 = *(v596 + 1200);
        sub_100011BC0(v91, &qword_10001C1A8, &qword_100012F10);
        (*(v93 + 32))(v91, v92, v94);
        v569(v91, 0, 1, v94);
      }

      else
      {
        v88(*(v596 + 1280), *(v596 + 1200));
      }

      v42 = v589;
    }

    v143 = *(v1 + 1296);
    v144 = *(v1 + 1208);
    v145 = *(v1 + 1200);
    sub_100011AE0(*(v1 + 1312), v143, &qword_10001C1A8, &qword_100012F10);
    v146 = *(v144 + 48);
    LODWORD(v145) = v146(v143, 1, v145);
    sub_100011BC0(v143, &qword_10001C1A8, &qword_100012F10);
    if (v145 == 1)
    {
      v147 = *(v1 + 1432);
      v148 = sub_100012368();
      v149 = sub_1000124F8();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&_mh_execute_header, v148, v149, "Didn't find a recipe in taskParameters. Checking mobileAssets.", v150, 2u);
      }

      v151 = *(v1 + 1432);
      v152 = sub_100012368();
      v153 = sub_100012508();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        *v154 = 0;
        _os_log_impl(&_mh_execute_header, v152, v153, "No MobileAsset found.", v154, 2u);
      }

      v155 = *(v1 + 1472);
      v156 = *(v1 + 1440);
      v157 = *(v1 + 1424);
      v158 = *(v1 + 1392);
      v159 = *(v1 + 1384);
      v160 = *(v1 + 1312);

      v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v600 = sub_10001117C();
      v161 = 7;
LABEL_45:
      LOBYTE(v598[0]) = v161;
      v169 = objc_allocWithZone(sub_100012288());
      v558 = sub_100012268();

      sub_100011BC0(v160, &qword_10001C1A8, &qword_100012F10);
      v155(v157, v159);
LABEL_122:
      v377 = *(v1 + 1424);
      v378 = *(v1 + 1416);
      v379 = *(v1 + 1408);
      v380 = *(v1 + 1400);
      v381 = *(v1 + 1376);
      v382 = *(v1 + 1368);
      v383 = *(v1 + 1344);
      v384 = *(v1 + 1320);
      v385 = *(v1 + 1312);
      v386 = *(v1 + 1304);
      v560 = *(v1 + 1296);
      v562 = *(v1 + 1288);
      v564 = *(v1 + 1280);
      v566 = *(v1 + 1272);
      v568 = *(v1 + 1264);
      v571 = *(v1 + 1256);
      v573 = *(v1 + 1248);
      v576 = *(v1 + 1240);
      v580 = *(v1 + 1232);
      v585 = *(v1 + 1224);
      v593 = *(v1 + 1216);
      v597 = *(v1 + 1192);

      v387 = *(v1 + 8);

      return v387(v558);
    }

    v162 = *(v1 + 1288);
    v163 = *(v1 + 1200);
    sub_100011AE0(*(v1 + 1312), v162, &qword_10001C1A8, &qword_100012F10);
    if (v146(v162, 1, v163) == 1)
    {
      v164 = *(v1 + 1432);
      sub_100011BC0(*(v1 + 1288), &qword_10001C1A8, &qword_100012F10);
      v165 = sub_100012368();
      v166 = sub_100012508();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        *v167 = 0;
        _os_log_impl(&_mh_execute_header, v165, v166, "Unable to get recipe from task folder or mobileAssets", v167, 2u);
      }

      v155 = *(v1 + 1472);
      v156 = *(v1 + 1440);
      v157 = *(v1 + 1424);
      v168 = *(v1 + 1392);
      v159 = *(v1 + 1384);
      v160 = *(v1 + 1312);

      v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v600 = sub_10001117C();
      v161 = 8;
      goto LABEL_45;
    }

    (*(*(v1 + 1208) + 32))(*(v1 + 1248), *(v1 + 1288), *(v1 + 1200));
    v208 = sub_1000121B8();
    v210 = v209;
    v211 = objc_opt_self();
    isa = sub_1000121C8().super.isa;
    *(v1 + 1112) = 0;
    v213 = [v211 JSONObjectWithData:isa options:0 error:v1 + 1112];

    v214 = *(v1 + 1112);
    if (v213)
    {
      sub_100012528();
      swift_unknownObjectRelease();
      sub_100011614(v1 + 520, v1 + 456);
      sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
      if (swift_dynamicCast())
      {
        v584 = *(v1 + 1312);
        v215 = *(v1 + 1248);
        v216 = v42;
        v217 = *(v1 + 1208);
        v218 = *(v1 + 1200);
        v219 = *(v1 + 1128);
        v220 = sub_100012398().super.isa;

        [v216 setRecipe:v220];
        sub_1000116D4(v208, v210);

        sub_1000111D0((v1 + 520));
        (*(v217 + 8))(v215, v218);
        v42 = v216;
        sub_100011BC0(v584, &qword_10001C1A8, &qword_100012F10);
        goto LABEL_24;
      }

      v592 = v42;
      v312 = *(v1 + 1432);
      v313 = sub_100012368();
      v314 = sub_100012508();
      if (os_log_type_enabled(v313, v314))
      {
        v315 = swift_slowAlloc();
        *v315 = 0;
        _os_log_impl(&_mh_execute_header, v313, v314, "Unable to parse recipe into dictionary.", v315, 2u);
      }

      v316 = *(v1 + 1440);
      v579 = *(v1 + 1424);
      v583 = *(v1 + 1472);
      v317 = *(v596 + 1392);
      v318 = *(v596 + 1384);
      v319 = *(v596 + 1312);
      v320 = *(v596 + 1248);
      v321 = *(v596 + 1208);
      v322 = *(v596 + 1200);

      v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v600 = sub_10001117C();
      LOBYTE(v598[0]) = 9;
      v323 = objc_allocWithZone(sub_100012288());
      v558 = sub_100012268();
      sub_1000116D4(v208, v210);

      sub_1000111D0((v596 + 520));
      (*(v321 + 8))(v320, v322);
      sub_100011BC0(v319, &qword_10001C1A8, &qword_100012F10);
      v1 = v596;
      v190 = v579;
      v191 = v318;
    }

    else
    {
      v297 = v214;
      sub_100012108();

      swift_willThrow();
      sub_1000116D4(v208, v210);
      v170 = *(v1 + 1432);
      swift_errorRetain();
      v171 = sub_100012368();
      v172 = sub_100012508();

      v590 = v42;
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v598[0] = v174;
        *v173 = 136315138;
        swift_getErrorValue();
        v175 = *(v1 + 800);
        v176 = *(v1 + 808);
        v177 = *(v1 + 816);
        v178 = sub_1000126D8();
        v180 = sub_10000EEB8(v178, v179, v598);

        *(v173 + 4) = v180;
        _os_log_impl(&_mh_execute_header, v171, v172, "Got error when reading recipe file: %s", v173, 0xCu);
        sub_1000111D0(v174);
      }

      v583 = *(v1 + 1472);
      v181 = *(v596 + 1440);
      v182 = *(v596 + 1424);
      v183 = *(v596 + 1392);
      v184 = *(v596 + 1384);
      v185 = *(v596 + 1312);
      v186 = *(v596 + 1248);
      v187 = *(v596 + 1208);
      v188 = *(v596 + 1200);
      v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v600 = sub_10001117C();
      LOBYTE(v598[0]) = 10;
      v189 = objc_allocWithZone(sub_100012288());
      v558 = sub_100012268();

      v1 = v596;

      (*(v187 + 8))(v186, v188);
      sub_100011BC0(v185, &qword_10001C1A8, &qword_100012F10);
      v190 = v182;
      v191 = v184;
    }

    v583(v190, v191);
    goto LABEL_122;
  }

  v95 = *(v596 + 1424);
  v96 = *(v596 + 1384);
  sub_1000122C8();
  v97 = *(v596 + 72);
  v98 = *(v596 + 80);
  v99 = *(v596 + 96);

  v100 = *(v596 + 104);

  v101 = sub_100001E34(v97, v98);

  if (!v101)
  {
    v192 = *(v596 + 1464);
    v193 = *(v596 + 1432);
    (*(v596 + 1456))(*(v596 + 1400), *(v596 + 1424), *(v596 + 1384));
    v194 = sub_100012368();
    v195 = sub_100012508();
    v196 = os_log_type_enabled(v194, v195);
    v197 = *(v596 + 1472);
    v198 = *(v596 + 1400);
    v199 = *(v596 + 1392);
    v200 = *(v596 + 1384);
    if (v196)
    {
      v201 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v598[0] = v202;
      *v201 = 136315138;
      sub_1000122C8();
      v197(v198, v200);
      v203 = *(v596 + 128);
      v204 = *(v596 + 136);
      v205 = *(v596 + 152);

      v206 = *(v596 + 160);

      v207 = sub_10000EEB8(v203, v204, v598);

      *(v201 + 4) = v207;
      _os_log_impl(&_mh_execute_header, v194, v195, "Failed to parse recipeAsString into dictionary: %s", v201, 0xCu);
      sub_1000111D0(v202);
    }

    else
    {

      v197(v198, v200);
    }

    v244 = *(v596 + 1472);
    v245 = *(v596 + 1440);
    v246 = *(v596 + 1424);
    v247 = *(v596 + 1384);
    v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v600 = sub_10001117C();
    LOBYTE(v598[0]) = 6;
    v248 = objc_allocWithZone(sub_100012288());
    v558 = sub_100012268();

    v244(v246, v247);
    goto LABEL_122;
  }

  sub_10000D444(v101);

  v102 = sub_100012398().super.isa;

  [v42 setRecipe:v102];

LABEL_24:
  v103 = *(v1 + 1432);
  v104 = v42;
  v105 = sub_100012368();
  v106 = sub_1000124F8();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v598[0] = v108;
    *v107 = 136315138;
    v109 = [v104 recipe];
    sub_1000123A8();

    v1 = v596;
    v110 = sub_1000123B8();
    v112 = v111;

    v113 = sub_10000EEB8(v110, v112, v598);

    *(v107 + 4) = v113;
    _os_log_impl(&_mh_execute_header, v105, v106, "worker.recipe: %s", v107, 0xCu);
    sub_1000111D0(v108);
  }

  v114 = *(v1 + 1160);
  if (os_variant_has_internal_diagnostics())
  {
    v115 = 1001;
  }

  else
  {
    v115 = 5001;
  }

  sub_100012338();
  v116 = objc_allocWithZone(TRIExperimentIdentifiers);
  v117 = sub_1000123D8();
  v118 = sub_1000123D8();

  v119 = [v116 initWithExperimentId:v117 deploymentId:v115 treatmentId:v118];

  [v104 setTriExperimentIdentifiers:v119];
  v120 = swift_allocObject();
  *(v1 + 1528) = v120;
  *(v120 + 16) = 0;
  v121 = (v120 + 16);
  v122 = [v104 recipe];
  v123 = sub_1000123A8();

  sub_10000D698(v123);

  v124 = sub_100012398().super.isa;

  *(v1 + 1144) = *(v120 + 16);
  v125 = [v104 checkIfModelShouldBeDownloaded:v124 outError:v1 + 1144];
  *(v1 + 1536) = v125;

  v126 = *(v1 + 1144);
  v127 = *(v120 + 16);
  *(v120 + 16) = v126;
  v128 = v126;

  v129 = *(v1 + 1432);
  if (*(v120 + 16))
  {

    v130 = sub_100012368();
    v131 = sub_1000124F8();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = v125;
      v134 = swift_slowAlloc();
      *v132 = 138412290;
      swift_beginAccess();
      v135 = *v121;
      *(v132 + 4) = *v121;
      *v134 = v135;
      v136 = v135;
      _os_log_impl(&_mh_execute_header, v130, v131, "Got error getting data processor: %@", v132, 0xCu);
      sub_100011BC0(v134, &qword_10001C208, &qword_100012F60);
      v125 = v133;
    }

    v137 = *(v1 + 1472);
    v138 = *(v1 + 1440);
    v139 = *(v1 + 1424);
    v140 = *(v1 + 1392);
    v141 = *(v1 + 1384);

    v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v600 = sub_10001117C();
    LOBYTE(v598[0]) = 11;
    v142 = objc_allocWithZone(sub_100012288());
    v558 = sub_100012268();

    v137(v139, v141);
    goto LABEL_121;
  }

  v591 = v125;
  v221 = v104;
  v222 = sub_100012368();
  v223 = sub_1000124F8();

  if (os_log_type_enabled(v222, v223))
  {
    v224 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    *v224 = 138412290;
    v226 = [v221 triExperimentIdentifiers];
    *(v224 + 4) = v226;
    *v225 = v226;
    _os_log_impl(&_mh_execute_header, v222, v223, "Trial experiment identifiers: %@", v224, 0xCu);
    sub_100011BC0(v225, &qword_10001C208, &qword_100012F60);
  }

  v227 = swift_allocObject();
  *(v1 + 1544) = v227;
  *(v227 + 16) = &_swiftEmptyArrayStorage;
  v228 = (v227 + 16);
  v229 = *(v1 + 1432);
  v230 = sub_100012368();
  v231 = sub_1000124F8();
  if (os_log_type_enabled(v230, v231))
  {
    v232 = swift_slowAlloc();
    *v232 = 0;
    _os_log_impl(&_mh_execute_header, v230, v231, "No task folder found", v232, 2u);
  }

  v233 = *(v1 + 1432);
  swift_retain_n();
  v234 = sub_100012368();
  v235 = sub_1000124F8();

  if (os_log_type_enabled(v234, v235))
  {
    v236 = *(v1 + 1200);
    v237 = swift_slowAlloc();
    v238 = swift_slowAlloc();
    v598[0] = v238;
    *v237 = 136315138;
    swift_beginAccess();
    v239 = *(v227 + 16);

    v240 = sub_1000124A8();
    v242 = v241;

    v243 = sub_10000EEB8(v240, v242, v598);

    *(v237 + 4) = v243;
    _os_log_impl(&_mh_execute_header, v234, v235, "All URLS: %s", v237, 0xCu);
    sub_1000111D0(v238);

    v1 = v596;
  }

  else
  {
  }

  v249 = *(v1 + 1432);
  v250 = *(v1 + 1200);
  swift_beginAccess();
  v251 = *v228;
  v252 = objc_allocWithZone(MLRTaskAttachments);

  v253 = sub_100012488().super.isa;

  v254 = [v252 initWithURLs:v253];
  *(v1 + 1552) = v254;

  v255 = v254;
  v256 = sub_100012368();
  v257 = sub_1000124F8();

  if (os_log_type_enabled(v256, v257))
  {
    v258 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    *v258 = 138412290;
    *(v258 + 4) = v255;
    *v259 = v255;
    v260 = v255;
    _os_log_impl(&_mh_execute_header, v256, v257, "taskAttachments: %@", v258, 0xCu);
    sub_100011BC0(v259, &qword_10001C208, &qword_100012F60);
  }

  v65 = [v591 getCoreDictionary];
  if (!v65)
  {
    __break(1u);
    goto LABEL_220;
  }

  v261 = v65;
  v262 = *(v1 + 1432);
  sub_1000123A8();

  v263 = sub_100012398().super.isa;

  v264 = [v221 recipe];
  v265 = sub_1000123A8();

  sub_10000D698(v265);

  v1 = v596;
  v266 = sub_100012398().super.isa;

  *(v596 + 1136) = *v121;
  v267 = [v221 gatherMetricsToReturn:v263 withRecipe:v266 withAttachments:v255 outError:v596 + 1136];

  v268 = *(v596 + 1136);
  v269 = *v121;
  *v121 = v268;
  v270 = v268;

  v271 = sub_100012498();
  v272 = sub_10000D960(v271);
  *(v596 + 1560) = v272;

  v273 = sub_100012368();
  v274 = sub_1000124F8();
  if (os_log_type_enabled(v273, v274))
  {
    v275 = swift_slowAlloc();
    *v275 = 0;
    _os_log_impl(&_mh_execute_header, v273, v274, "Gathered metrics!", v275, 2u);
  }

  v276 = *(v596 + 1432);

  v277 = sub_100012368();
  v278 = sub_1000124F8();

  v575 = v255;
  if (os_log_type_enabled(v277, v278))
  {
    v279 = swift_slowAlloc();
    v280 = swift_slowAlloc();
    v598[0] = v280;
    *v279 = 136315138;
    sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
    v281 = sub_1000124A8();
    v283 = sub_10000EEB8(v281, v282, v598);

    *(v279 + 4) = v283;
    _os_log_impl(&_mh_execute_header, v277, v278, "Results: %s", v279, 0xCu);
    sub_1000111D0(v280);
  }

  v284 = *(v596 + 1432);
  if (*v121)
  {

    v285 = sub_100012368();
    v286 = sub_1000124F8();

    if (os_log_type_enabled(v285, v286))
    {
      v287 = swift_slowAlloc();
      v288 = swift_slowAlloc();
      *v287 = 138412290;
      swift_beginAccess();
      v289 = *v121;
      *(v287 + 4) = *v121;
      *v288 = v289;
      v290 = v289;
      _os_log_impl(&_mh_execute_header, v285, v286, "Got error getting metrics: %@", v287, 0xCu);
      sub_100011BC0(v288, &qword_10001C208, &qword_100012F60);
    }

    v291 = *(v596 + 1472);
    v292 = *(v596 + 1440);
    v293 = *(v596 + 1424);
    v294 = *(v596 + 1392);
    v295 = *(v596 + 1384);

    v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v600 = sub_10001117C();
    LOBYTE(v598[0]) = 13;
    v296 = objc_allocWithZone(sub_100012288());
    v558 = sub_100012268();

    goto LABEL_120;
  }

  v570 = v272;
  v298 = v221;
  v299 = sub_100012368();
  v300 = sub_1000124F8();

  v572 = v298;
  if (os_log_type_enabled(v299, v300))
  {
    v301 = swift_slowAlloc();
    v302 = swift_slowAlloc();
    v598[0] = v302;
    *v301 = 136315138;
    v303 = sub_1000123E8();
    v305 = v304;
    v306 = [v298 recipe];
    v307 = sub_1000123A8();

    v1 = v596;
    sub_10000DB8C(v303, v305, v307, (v596 + 360));

    sub_10000E8BC(&qword_10001C1C8, &qword_100012F28);
    v308 = sub_100012518();
    v310 = v309;
    v298 = v572;
    sub_100011BC0(v596 + 360, &qword_10001C1C8, &qword_100012F28);
    v311 = sub_10000EEB8(v308, v310, v598);

    *(v301 + 4) = v311;
    _os_log_impl(&_mh_execute_header, v299, v300, "Logging strategies: %s", v301, 0xCu);
    sub_1000111D0(v302);
  }

  else
  {

    v1 = v596;
  }

  v324 = sub_1000123E8();
  v326 = v325;
  v327 = [v298 recipe];
  v328 = sub_1000123A8();

  sub_10000DB8C(v324, v326, v328, (v1 + 424));

  if (!*(v1 + 448))
  {

    sub_100011BC0(v1 + 424, &qword_10001C1C8, &qword_100012F28);
LABEL_116:
    v369 = *(v1 + 1432);
    v370 = sub_100012368();
    v371 = sub_100012508();
    if (os_log_type_enabled(v370, v371))
    {
      v372 = swift_slowAlloc();
      *v372 = 0;
      _os_log_impl(&_mh_execute_header, v370, v371, "Logging strategies missing", v372, 2u);
    }

    v291 = *(v1 + 1472);
    v373 = *(v1 + 1440);
    v293 = *(v1 + 1424);
    v374 = *(v1 + 1392);
    v295 = *(v1 + 1384);

    v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v600 = sub_10001117C();
    v375 = 14;
    goto LABEL_119;
  }

  sub_10000E8BC(&qword_10001C168, &qword_100012EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_116;
  }

  v329 = v1 + 984;
  v330 = v1;
  v331 = *(v1 + 1120);
  *(v330 + 1568) = v331;
  *(v330 + 984) = 0x6E61697373756147;
  *(v330 + 992) = 0xEF6F637369446544;
  v332 = swift_task_alloc();
  *(v332 + 16) = v329;
  LOBYTE(v329) = sub_1000103D0(sub_10001128C, v332, v331);

  if ((v329 & 1) == 0)
  {
LABEL_191:
    v471 = *(v330 + 1568);
    v472 = v471[2];
    v473 = v330;
    if (v472 <= 1 && (v472 != 1 || v471[4] == 0x6E61697373756147 && v471[5] == 0xEF6F637369446544 || (v483 = sub_100012698(), v484 = *(v330 + 1568), (v483 & 1) != 0)))
    {
      v485 = *(v330 + 1560);
    }

    else
    {
      v474 = *(v330 + 1560);
      v475 = *(v330 + 1528);
      v476 = *(v473 + 1520);
      sub_10000DA78(*(v473 + 1560));

      v477 = sub_100012488().super.isa;

      v478 = sub_100012488().super.isa;

      *(v473 + 1096) = *(v475 + 16);
      v479 = [v476 logAllResultsToCoreAnalyticsOrDeDisco:v477 withLoggingStrategies:v478 outError:v473 + 1096];

      v480 = *(v473 + 1096);
      v481 = *(v475 + 16);
      *(v475 + 16) = v480;
      v482 = v480;
    }

    v486 = *(v473 + 1424);
    v487 = *(v473 + 1384);
    sub_1000122C8();
    v488 = *(v473 + 24);

    LODWORD(v486) = *(v473 + 32);
    v489 = *(v473 + 40);

    v490 = *(v473 + 48);

    if (v486 == 1)
    {
      v491 = *(v473 + 1440);
      v492 = *(v473 + 1432);
      v493 = *(v473 + 1160);
      v494 = sub_1000124B8().super.super.isa;
      sub_100012338();
      v495 = sub_1000123D8();

      [v491 setValue:v494 forKey:v495];

      v496 = v493;
      v497 = sub_100012368();
      v498 = sub_1000124F8();

      if (os_log_type_enabled(v497, v498))
      {
        v499 = *(v473 + 1160);
        v500 = swift_slowAlloc();
        v501 = swift_slowAlloc();
        v598[0] = v501;
        *v500 = 136315138;
        v502 = sub_100012338();
        v504 = sub_10000EEB8(v502, v503, v598);

        *(v500 + 4) = v504;
        _os_log_impl(&_mh_execute_header, v497, v498, "Execution state saved for taskName %s.", v500, 0xCu);
        sub_1000111D0(v501);
      }
    }

    v505 = *(v473 + 1552);
    v506 = *(v473 + 1544);
    v507 = *(v473 + 1536);
    v508 = *(v473 + 1520);
    v587 = *(v473 + 1528);
    v594 = *(v473 + 1512);
    v509 = *(v596 + 1472);
    v510 = *(v596 + 1440);
    v511 = *(v596 + 1424);
    v512 = *(v596 + 1392);
    v513 = *(v596 + 1384);
    v514 = objc_allocWithZone(sub_100012288());
    v558 = sub_100012278();

    v509(v511, v513);
    v1 = v596;
LABEL_203:

    goto LABEL_121;
  }

  v333 = [v572 recipe];
  v334 = sub_1000123A8();

  sub_10000DB8C(0x436F637369646564, 0xED00006769666E6FLL, v334, (v330 + 584));

  if (!*(v330 + 608))
  {

    sub_100011BC0(v330 + 584, &qword_10001C1C8, &qword_100012F28);
LABEL_127:
    v1 = v330;
    v389 = *(v330 + 1432);
    v390 = sub_100012368();
    v391 = sub_100012508();
    if (os_log_type_enabled(v390, v391))
    {
      v392 = swift_slowAlloc();
      *v392 = 0;
      _os_log_impl(&_mh_execute_header, v390, v391, "Recipe lacked dediscoConfig but specified GaussianDeDisco", v392, 2u);
    }

    v291 = *(v330 + 1472);
    v373 = *(v330 + 1440);
    v293 = *(v1 + 1424);
    v393 = *(v1 + 1392);
    v295 = *(v1 + 1384);

    v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v600 = sub_10001117C();
    v375 = 15;
    goto LABEL_119;
  }

  v335 = sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
  *(v330 + 1576) = v335;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_127;
  }

  v336 = *(v330 + 1080);
  sub_10000DB8C(0x676E69646F636E65, 0xEE00616D65686353, v336, (v330 + 648));
  if (!*(v330 + 672))
  {

    sub_100011BC0(v330 + 648, &qword_10001C1C8, &qword_100012F28);
    v1 = v330;
LABEL_132:
    v394 = *(v1 + 1432);
    v395 = sub_100012368();
    v396 = sub_100012508();
    if (os_log_type_enabled(v395, v396))
    {
      v397 = swift_slowAlloc();
      *v397 = 0;
      _os_log_impl(&_mh_execute_header, v395, v396, "dediscoConfig lacked encodingSchema but specified GaussianDeDisco", v397, 2u);
    }

    v291 = *(v1 + 1472);
    v373 = *(v1 + 1440);
    v293 = *(v1 + 1424);
    v398 = *(v1 + 1392);
    v295 = *(v1 + 1384);

    v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v600 = sub_10001117C();
    v375 = 16;
LABEL_119:
    LOBYTE(v598[0]) = v375;
    v376 = objc_allocWithZone(sub_100012288());
    v558 = sub_100012268();

LABEL_120:
    v291(v293, v295);

LABEL_121:

    goto LABEL_122;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    v1 = v596;
    goto LABEL_132;
  }

  v337 = v596;
  v338 = *(v596 + 1072);
  v339 = sub_10001137C(&_swiftEmptyArrayStorage);
  sub_10000DB8C(0xD000000000000010, 0x8000000100013670, v338, (v596 + 712));
  if (!*(v596 + 736))
  {

    sub_100011BC0(v596 + 712, &qword_10001C1C8, &qword_100012F28);
LABEL_137:

    v1 = v596;
    v399 = *(v596 + 1432);
    v400 = sub_100012368();
    v401 = sub_100012508();
    if (os_log_type_enabled(v400, v401))
    {
      v402 = swift_slowAlloc();
      *v402 = 0;
      _os_log_impl(&_mh_execute_header, v400, v401, "Got malformed dataContentTypes", v402, 2u);
    }

    v403 = *(v596 + 1472);
    v404 = *(v596 + 1440);
    v405 = *(v596 + 1424);
    v406 = *(v596 + 1392);
    v407 = *(v596 + 1384);

    v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v600 = sub_10001117C();
    v408 = 17;
    goto LABEL_189;
  }

  v561 = v338;
  v563 = v336;
  v565 = v339;
  v557 = sub_10000E8BC(&qword_10001C1D8, &qword_100012F38);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_137;
  }

  v340 = 0;
  v555 = (v596 + 744);
  v556 = (v596 + 1024);
  v553 = (v596 + 1032);
  v554 = (v596 + 1040);
  v341 = *(v596 + 1064);
  v342 = *(v341 + 64);
  v559 = v341 + 64;
  v567 = v341;
  v343 = -1;
  v344 = -1 << *(v341 + 32);
  if (-v344 < 64)
  {
    v343 = ~(-1 << -v344);
  }

  v345 = v343 & v342;
  v346 = (63 - v344) >> 6;
LABEL_95:
  *(v596 + 1584) = v565;
  v347 = v340;
  if (!v345)
  {
    goto LABEL_97;
  }

  do
  {
    v340 = v347;
LABEL_100:
    v348 = __clz(__rbit64(v345));
    v345 &= v345 - 1;
    v349 = v348 | (v340 << 6);
    v350 = *(v567 + 48) + 16 * v349;
    v337 = *v350;
    v351 = *(v350 + 8);
    v352 = *(*(v567 + 56) + 8 * v349);

    v603._countAndFlagsBits = 0x6E61697373756167;
    v603._object = 0xE90000000000003ALL;
    if (sub_100012478(v603))
    {
      *(v596 + 920) = v337;
      *(v596 + 928) = v351;
      *(v596 + 936) = 0x6E61697373756167;
      *(v596 + 944) = 0xE90000000000003ALL;
      sub_1000114AC();
      sub_1000124E8();
      v353 = *(v596 + 680);
      v354 = *(v596 + 688);
      v355 = *(v596 + 696);
      v356 = *(v596 + 704);
      v551 = sub_100012438();
      v552 = v357;

      *(v596 + 640) = v335;
      *(v596 + 616) = v352;
      sub_100011500((v596 + 616), (v596 + 552));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v598[0] = v565;
      v359 = sub_100010358(v551, v552);
      v360 = v565[2];
      v361 = (v66 & 1) == 0;
      v65 = (v360 + v361);
      if (__OFADD__(v360, v361))
      {
        goto LABEL_221;
      }

      v362 = v66;
      if (v565[3] >= v65)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v66)
          {
            goto LABEL_111;
          }
        }

        else
        {
          sub_10001099C();
          v565 = v598[0];
          if (v362)
          {
            goto LABEL_111;
          }
        }
      }

      else
      {
        sub_10001047C(v65, isUniquelyReferenced_nonNull_native);
        v565 = v598[0];
        v363 = sub_100010358(v551, v552);
        if ((v362 & 1) != (v364 & 1))
        {
LABEL_216:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
        }

        v359 = v363;
        if (v362)
        {
LABEL_111:
          v337 = (v565[7] + 32 * v359);
          sub_1000111D0(v337);
          sub_100011500((v596 + 552), v337);

          goto LABEL_95;
        }
      }

      v337 = v565;
      v565[(v359 >> 6) + 8] |= 1 << v359;
      v365 = (v565[6] + 16 * v359);
      *v365 = v551;
      v365[1] = v552;
      v65 = sub_100011500((v596 + 552), (v565[7] + 32 * v359));
      v366 = v565[2];
      v367 = __OFADD__(v366, 1);
      v368 = v366 + 1;
      if (v367)
      {
        goto LABEL_222;
      }

      v565[2] = v368;
      goto LABEL_95;
    }

    v347 = v340;
  }

  while (v345);
  while (1)
  {
LABEL_97:
    v340 = v347 + 1;
    if (__OFADD__(v347, 1))
    {
      __break(1u);
LABEL_212:

LABEL_213:
      v546 = *(v596 + 1608);
      v547 = swift_task_alloc();
      *(v596 + 1632) = v547;
      v548 = *v591;
      *(v547 + 16) = v546;
      *(v547 + 24) = 0xD000000000000031;
      *(v547 + 32) = 0x8000000100013630;
      *(v547 + 40) = v556;
      *(v547 + 48) = v548;
      v549 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
      v550 = swift_task_alloc();
      *(v596 + 1640) = v550;
      *v550 = v596;
      v550[1] = sub_10000C578;

      return withCheckedContinuation<A>(isolation:function:_:)(v596 + 65, 0, 0, 0xD000000000000010, 0x80000001000136D0, sub_100011670, v547, &type metadata for Bool);
    }

    if (v340 >= v346)
    {
      break;
    }

    v345 = *(v559 + 8 * v340);
    ++v347;
    if (v345)
    {
      goto LABEL_100;
    }
  }

  sub_10000DB8C(1701869940, 0xE400000000000000, v561, (v596 + 296));

  if (!*(v596 + 320))
  {

    sub_100011BC0(v596 + 296, &qword_10001C1C8, &qword_100012F28);
LABEL_181:

    v457 = *(v596 + 1432);
    v458 = sub_100012368();
    v459 = sub_100012508();
    if (os_log_type_enabled(v458, v459))
    {
      v460 = swift_slowAlloc();
      *v460 = 0;
      _os_log_impl(&_mh_execute_header, v458, v459, "encodingSchema lacked type", v460, 2u);
    }

    v1 = v596;
    v403 = *(v596 + 1472);
    v404 = *(v596 + 1440);
    v405 = *(v596 + 1424);
    v461 = *(v596 + 1392);
    v407 = *(v596 + 1384);

    v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v600 = sub_10001117C();
    v408 = 18;
    goto LABEL_189;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_181;
  }

  v409 = *(v596 + 968);
  v410 = *(v596 + 976);
  sub_10000E8BC(&qword_10001C1E8, &qword_100012F40);
  v411 = swift_allocObject();
  *(v411 + 16) = xmmword_100012D20;
  *(v411 + 32) = 1701869940;
  *(v411 + 40) = 0xE400000000000000;
  *(v411 + 48) = v409;
  *(v411 + 56) = v410;
  *(v411 + 72) = &type metadata for String;
  *(v411 + 80) = 0xD000000000000012;
  *(v411 + 88) = 0x8000000100013690;
  sub_10000E8BC(&qword_10001C1F0, &qword_100012F48);
  v412 = swift_allocObject();
  *(v412 + 16) = xmmword_100012D30;
  *(v412 + 32) = 0xD000000000000010;
  *(v412 + 40) = 0x8000000100013670;
  *(v412 + 48) = v565;

  v413 = sub_100011510(v412);
  swift_setDeallocating();
  sub_100011BC0(v412 + 32, &qword_10001C1F8, &qword_100012F50);
  swift_deallocClassInstance();
  *(v411 + 120) = v557;
  *(v411 + 96) = v413;
  *(v596 + 1592) = sub_10001137C(v411);
  swift_setDeallocating();
  sub_10000E8BC(&qword_10001C200, &qword_100012F58);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10000DB8C(0xD00000000000001DLL, 0x80000001000136B0, v563, (v596 + 488));

  if (!*(v596 + 512))
  {

    sub_100011BC0(v596 + 488, &qword_10001C1C8, &qword_100012F28);
LABEL_186:

    v462 = *(v596 + 1432);
    v463 = sub_100012368();
    v464 = sub_100012508();
    if (os_log_type_enabled(v463, v464))
    {
      v465 = swift_slowAlloc();
      *v465 = 0;
      _os_log_impl(&_mh_execute_header, v463, v464, "dediscoConfig lacked DifferentialPrivacyParameters but specified GaussianDeDisco", v465, 2u);
    }

    v1 = v596;
    v403 = *(v596 + 1472);
    v404 = *(v596 + 1440);
    v405 = *(v596 + 1424);
    v466 = *(v596 + 1392);
    v407 = *(v596 + 1384);

    v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v600 = sub_10001117C();
    v408 = 19;
LABEL_189:
    LOBYTE(v598[0]) = v408;
    v467 = objc_allocWithZone(sub_100012288());
    v558 = sub_100012268();

    v403(v405, v407);

    goto LABEL_121;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_186;
  }

  *(v596 + 1600) = *(v596 + 1016);
  v65 = [objc_opt_self() defaultManager];
  *(v596 + 1608) = v65;
  v414 = v570[2];
  *(v596 + 1616) = v414;
  if (!v414)
  {
    v330 = v596;
    v468 = *(v596 + 1600);
    v469 = *(v596 + 1592);
    v470 = *(v596 + 1584);

    goto LABEL_191;
  }

  *(v596 + 1624) = 0;
  v415 = *(v596 + 1560);
  if (!*(v415 + 16))
  {
    goto LABEL_223;
  }

  v416 = *(v415 + 32);

  sub_10000DB8C(0x74654D6C65646F4DLL, 0xEC00000073636972, v416, (v596 + 392));

  if (!*(v596 + 416))
  {
    v515 = *(v596 + 1600);
    v516 = *(v596 + 1592);
    v517 = *(v596 + 1584);
    v518 = *(v596 + 1568);
    v519 = *(v596 + 1560);

    sub_100011BC0(v596 + 392, &qword_10001C1C8, &qword_100012F28);
LABEL_206:

    v525 = *(v596 + 1432);
    v526 = sub_100012368();
    v527 = sub_100012508();
    if (os_log_type_enabled(v526, v527))
    {
      v528 = swift_slowAlloc();
      *v528 = 0;
      _os_log_impl(&_mh_execute_header, v526, v527, "Measurements were malformed", v528, 2u);
    }

    v1 = v596;
    v529 = *(v596 + 1608);
    v530 = *(v596 + 1552);
    v531 = *(v596 + 1536);
    v581 = *(v596 + 1544);
    v588 = *(v596 + 1528);
    v532 = *(v596 + 1520);
    v595 = *(v596 + 1512);
    v577 = *(v596 + 1472);
    v533 = *(v596 + 1440);
    v534 = *(v596 + 1424);
    v535 = *(v596 + 1392);
    v536 = *(v596 + 1384);

    v599 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v600 = sub_10001117C();
    LOBYTE(v598[0]) = 20;
    v537 = objc_allocWithZone(sub_100012288());
    v558 = sub_100012268();

    v577(v534, v536);
    goto LABEL_203;
  }

  v417 = *(v596 + 1576);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v520 = *(v596 + 1600);
    v521 = *(v596 + 1592);
    v522 = *(v596 + 1584);
    v523 = *(v596 + 1568);
    v524 = *(v596 + 1560);

    goto LABEL_206;
  }

  v591 = (v596 + 1592);
  v418 = *(v596 + 1048);
  *v556 = sub_10001137C(&_swiftEmptyArrayStorage);
  v419 = v418 + 64;
  v420 = -1;
  v421 = -1 << *(v418 + 32);
  if (-v421 < 64)
  {
    v420 = ~(-1 << -v421);
  }

  v422 = v420 & *(v418 + 64);
  v423 = (63 - v421) >> 6;
  v424 = v418;

  v425 = 0;
  while (v422)
  {
    v426 = v422;
LABEL_157:
    v422 = (v426 - 1) & v426;
    if (*(*(v596 + 1584) + 16))
    {
      v428 = (v424[6] + ((v425 << 10) | (16 * __clz(__rbit64(v426)))));
      v430 = *v428;
      v429 = v428[1];
      v431 = *(v596 + 1584);

      sub_100010358(v430, v429);
      v433 = v432;

      if (v433)
      {
        if (v424[2] && (v434 = sub_100010358(v430, v429), (v435 & 1) != 0))
        {
          sub_100011614(v424[7] + 32 * v434, v596 + 328);
          v436 = *v556;
          v437 = swift_isUniquelyReferenced_nonNull_native();
          v438 = *v556;
          *v554 = *v556;
          v439 = sub_100010358(v430, v429);
          v440 = *(v438 + 16);
          v586 = v66;
          v441 = (v66 & 1) == 0;
          v65 = (v440 + v441);
          if (__OFADD__(v440, v441))
          {
            goto LABEL_224;
          }

          if (*(v438 + 24) >= v65)
          {
            if ((v437 & 1) == 0)
            {
              sub_10001099C();
            }
          }

          else
          {
            sub_10001047C(v65, v437);
            v442 = *v554;
            v443 = sub_100010358(v430, v429);
            if ((v586 & 1) != (v444 & 1))
            {
              goto LABEL_216;
            }

            v439 = v443;
          }

          v452 = *v554;
          if (v586)
          {
            v453 = (v452[7] + 32 * v439);
            sub_1000111D0(v453);
            sub_100011500((v596 + 328), v453);
          }

          else
          {
            v452[(v439 >> 6) + 8] |= 1 << v439;
            v454 = (v452[6] + 16 * v439);
            *v454 = v430;
            v454[1] = v429;
            v65 = sub_100011500((v596 + 328), (v452[7] + 32 * v439));
            v455 = v452[2];
            v367 = __OFADD__(v455, 1);
            v456 = v455 + 1;
            if (v367)
            {
              goto LABEL_225;
            }

            v452[2] = v456;
          }

          *v556 = v452;
        }

        else
        {
          v445 = sub_100010358(v430, v429);
          v447 = v446;

          if (v447)
          {
            v448 = *v556;
            v449 = swift_isUniquelyReferenced_nonNull_native();
            v450 = *v556;
            *v553 = *v556;
            if (!v449)
            {
              sub_10001099C();
              v450 = *v553;
            }

            v451 = *(*(v450 + 48) + 16 * v445 + 8);

            sub_100011500((*(v450 + 56) + 32 * v445), v555);
            sub_100010734(v445, v450);
            *v556 = v450;
          }

          else
          {
            *v555 = 0u;
            *(v596 + 760) = 0u;
          }

          v65 = sub_100011BC0(v555, &qword_10001C1C8, &qword_100012F28);
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v427 = v425 + 1;
    if (__OFADD__(v425, 1))
    {
      break;
    }

    if (v427 >= v423)
    {
      v538 = *(v596 + 1432);

      v337 = sub_100012368();
      v539 = sub_1000124F8();

      if (!os_log_type_enabled(v337, v539))
      {
        goto LABEL_212;
      }

      v540 = swift_slowAlloc();
      v541 = swift_slowAlloc();
      v598[0] = v541;
      *v540 = 136315138;
      v542 = sub_1000123B8();
      v544 = v543;

      v545 = sub_10000EEB8(v542, v544, v598);

      *(v540 + 4) = v545;
      _os_log_impl(&_mh_execute_header, v337, v539, "Measurements: %s", v540, 0xCu);
      sub_1000111D0(v541);

      goto LABEL_213;
    }

    v426 = *(v419 + 8 * v427);
    ++v425;
    if (v426)
    {
      v425 = v427;
      goto LABEL_157;
    }
  }

LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
  return static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)(v65, v66, v67, v68, v69);
}

uint64_t sub_100008260(uint64_t a1)
{
  v2 = *(*v1 + 1496);
  v3 = *(*v1 + 1488);
  v4 = *(*v1 + 1480);
  v6 = *v1;
  *(*v1 + 1504) = a1;

  return _swift_task_switch(sub_1000083D0, 0, 0);
}

uint64_t sub_1000083D0()
{
  v657 = v0;
  v1 = v0;
  v2 = *(v0 + 1432);
  v3 = sub_100012368();
  v4 = sub_1000124F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1504);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v654[0] = v7;
    *v6 = 136315138;
    *(v1 + 1152) = v5;
    sub_10000E8BC(&qword_10001C218, &qword_100012F68);
    v8 = sub_100012518();
    v10 = sub_10000EEB8(v8, v9, v654);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Got ML host asset: %s", v6, 0xCu);
    sub_1000111D0(v7);
  }

  v653 = v1;
  if (!*(v1 + 1504))
  {
    v32 = *(v1 + 1432);
    v33 = sub_100012368();
    v34 = sub_1000124F8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to get mlhostAsset", v35, 2u);
    }

    v36 = *(v1 + 1472);
    v37 = *(v1 + 1440);
    v38 = *(v1 + 1424);
    v39 = *(v1 + 1392);
    v40 = *(v1 + 1384);
    v41 = *(v1 + 1368);
    v42 = *(v1 + 1360);
    v43 = *(v1 + 1352);

    v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v656 = sub_10001117C();
    LOBYTE(v654[0]) = 5;
    v44 = objc_allocWithZone(sub_100012288());
    v601 = sub_100012268();

    (*(v42 + 8))(v41, v43);
    v36(v38, v40);
    goto LABEL_86;
  }

  (*(*(v1 + 1360) + 8))(*(v1 + 1368), *(v1 + 1352));
  v11 = *(v1 + 1504);
  *(v1 + 1512) = v11;
  v12 = *(v1 + 1464);
  v13 = *(v1 + 1456);
  v14 = *(v1 + 1432);
  v15 = *(v1 + 1424);
  v16 = *(v1 + 1408);
  v17 = *(v1 + 1384);
  v637 = [objc_allocWithZone(AMDLighthouseODMLWorker) init];
  *(v1 + 1520) = v637;
  v13(v16, v15, v17);
  v18 = sub_100012368();
  v19 = sub_1000124F8();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v1 + 1472);
  v22 = *(v1 + 1408);
  v23 = *(v1 + 1392);
  v24 = *(v1 + 1384);
  if (v20)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v654[0] = v26;
    *v25 = 136315138;
    sub_1000122C8();
    v21(v22, v24);
    v27 = *(v1 + 184);
    v28 = *(v1 + 192);
    v29 = *(v1 + 208);

    v30 = *(v1 + 216);

    v31 = sub_10000EEB8(v27, v28, v654);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v18, v19, "Recipe: %s", v25, 0xCu);
    sub_1000111D0(v26);
  }

  else
  {

    v21(v22, v24);
  }

  v45 = *(v1 + 1424);
  v46 = *(v1 + 1384);
  sub_1000122C8();
  v48 = *(v1 + 240);
  v47 = *(v1 + 248);
  v49 = *(v1 + 264);

  v50 = *(v1 + 272);

  if (!v48 && v47 == 0xE000000000000000)
  {

    goto LABEL_14;
  }

  v51 = sub_100012698();

  if (v51)
  {
LABEL_14:
    v52 = *(v1 + 1160);
    v53 = *(*(v1 + 1208) + 56);
    v53(*(v1 + 1312), 1, 1, *(v1 + 1200));
    sub_100012328();
    v648 = v11;
    v626 = v53;
    if (v54)
    {
      v55 = *(v1 + 1272);
      v56 = *(v1 + 1208);
      v613 = v56;
      v618 = *(v1 + 1280);
      v621 = *(v1 + 1200);
      v57 = *(v1 + 1192);
      v58 = *(v1 + 1184);
      v59 = *(v1 + 1176);
      (v53)(*(v1 + 1304), 1, 1);
      v60 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v61 = *(v58 + 104);
      v61(v57, enum case for URL.DirectoryHint.inferFromPath(_:), v59);
      sub_100012188();
      *(v1 + 1000) = 0xD000000000000012;
      *(v1 + 1008) = 0x80000001000136F0;
      v61(v57, v60, v59);
      sub_100011680();
      sub_100012198();
      (*(v58 + 8))(v57, v59);
      v62 = *(v613 + 8);
      v62(v55, v621);
      v63 = [objc_opt_self() defaultManager];
      sub_100012168();
      v64 = sub_1000123D8();

      LODWORD(v55) = [v63 fileExistsAtPath:v64];

      if (v55)
      {
        v65 = *(v1 + 1312);
        v66 = *(v1 + 1280);
        v67 = *(v1 + 1208);
        v68 = *(v1 + 1200);
        sub_100011BC0(v65, &qword_10001C1A8, &qword_100012F10);
        (*(v67 + 32))(v65, v66, v68);
        v626(v65, 0, 1, v68);
      }

      else
      {
        v62(*(v1 + 1280), *(v1 + 1200));
      }
    }

    v127 = *(v1 + 1296);
    v128 = *(v1 + 1208);
    v129 = *(v1 + 1200);
    sub_100011AE0(*(v1 + 1312), v127, &qword_10001C1A8, &qword_100012F10);
    v130 = *(v128 + 48);
    LODWORD(v129) = v130(v127, 1, v129);
    sub_100011BC0(v127, &qword_10001C1A8, &qword_100012F10);
    if (v129 == 1)
    {
      v131 = *(v1 + 1432);
      v132 = sub_100012368();
      v133 = sub_1000124F8();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&_mh_execute_header, v132, v133, "Didn't find a recipe in taskParameters. Checking mobileAssets.", v134, 2u);
      }

      if (!v11)
      {
        v149 = *(v1 + 1432);
        v150 = sub_100012368();
        v151 = sub_100012508();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&_mh_execute_header, v150, v151, "No MobileAsset found.", v152, 2u);
        }

        v153 = *(v1 + 1472);
        v154 = *(v1 + 1440);
        v155 = *(v1 + 1424);
        v156 = *(v1 + 1392);
        v157 = *(v1 + 1384);
        v158 = *(v1 + 1312);

        v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
        v656 = sub_10001117C();
        LOBYTE(v654[0]) = 7;
        v159 = objc_allocWithZone(sub_100012288());
        v601 = sub_100012268();

        sub_100011BC0(v158, &qword_10001C1A8, &qword_100012F10);
        v153(v155, v157);
        goto LABEL_86;
      }

      v135 = *(v1 + 1272);
      v619 = *(v1 + 1264);
      v622 = v130;
      v136 = *(v1 + 1256);
      v137 = *(v1 + 1208);
      v610 = *(v1 + 1200);
      v614 = *(v1 + 1304);
      v138 = *(v1 + 1192);
      v139 = *(v1 + 1184);
      v140 = *(v1 + 1176);

      sub_100012248();
      *(v1 + 952) = 0x6A2E657069636572;
      *(v1 + 960) = 0xEB000000006E6F73;
      v607 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v604 = *(v139 + 104);
      v604(v138);
      sub_100011680();
      sub_100012198();
      (*(v139 + 8))(v138, v140);
      v141 = *(v137 + 8);
      v141(v136, v610);
      sub_100012128();
      v599 = v141;
      v141(v135, v610);
      v626(v614, 1, 1, v610);
      (v604)(v138, v607, v140);
      sub_100012188();
      v142 = [objc_opt_self() defaultManager];
      sub_100012168();
      v143 = sub_1000123D8();

      v144 = [v142 fileExistsAtPath:v143];
      v11 = v648;

      if (v144)
      {
        v145 = *(v1 + 1312);
        v146 = *(v1 + 1264);
        v147 = *(v1 + 1208);
        v148 = *(v1 + 1200);
        sub_100011BC0(v145, &qword_10001C1A8, &qword_100012F10);
        (*(v147 + 32))(v145, v146, v148);
        v626(v145, 0, 1, v148);
      }

      else
      {
        v599(*(v1 + 1264), *(v1 + 1200));
      }

      v130 = v622;
    }

    v160 = *(v1 + 1288);
    v161 = *(v1 + 1200);
    sub_100011AE0(*(v1 + 1312), v160, &qword_10001C1A8, &qword_100012F10);
    if (v130(v160, 1, v161) == 1)
    {
      v162 = *(v1 + 1432);
      sub_100011BC0(*(v1 + 1288), &qword_10001C1A8, &qword_100012F10);
      v163 = sub_100012368();
      v164 = sub_100012508();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        *v165 = 0;
        _os_log_impl(&_mh_execute_header, v163, v164, "Unable to get recipe from task folder or mobileAssets", v165, 2u);
      }

      v166 = *(v1 + 1472);
      v167 = *(v1 + 1440);
      v168 = *(v1 + 1424);
      v169 = *(v1 + 1392);
      v170 = *(v1 + 1384);
      v171 = *(v1 + 1312);

      v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v656 = sub_10001117C();
      LOBYTE(v654[0]) = 8;
      v172 = objc_allocWithZone(sub_100012288());
      v601 = sub_100012268();

      sub_100011BC0(v171, &qword_10001C1A8, &qword_100012F10);
      v166(v168, v170);
      goto LABEL_85;
    }

    (*(*(v1 + 1208) + 32))(*(v1 + 1248), *(v1 + 1288), *(v1 + 1200));
    v195 = sub_1000121B8();
    v197 = v196;
    v198 = objc_opt_self();
    isa = sub_1000121C8().super.isa;
    *(v1 + 1112) = 0;
    v200 = [v198 JSONObjectWithData:isa options:0 error:v1 + 1112];

    v201 = *(v1 + 1112);
    if (v200)
    {
      sub_100012528();
      swift_unknownObjectRelease();
      sub_100011614(v1 + 520, v1 + 456);
      sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
      if (swift_dynamicCast())
      {
        v632 = *(v1 + 1312);
        v202 = *(v1 + 1248);
        v203 = v11;
        v204 = *(v1 + 1208);
        v205 = *(v1 + 1200);
        v206 = *(v1 + 1128);
        v207 = sub_100012398().super.isa;

        v77 = v637;
        [v637 setRecipe:v207];
        sub_1000116D4(v195, v197);

        sub_1000111D0((v1 + 520));
        (*(v204 + 8))(v202, v205);
        v11 = v203;
        sub_100011BC0(v632, &qword_10001C1A8, &qword_100012F10);
        goto LABEL_19;
      }

      v253 = *(v1 + 1432);
      v254 = sub_100012368();
      v255 = sub_100012508();
      if (os_log_type_enabled(v254, v255))
      {
        v256 = swift_slowAlloc();
        *v256 = 0;
        _os_log_impl(&_mh_execute_header, v254, v255, "Unable to parse recipe into dictionary.", v256, 2u);
      }

      v257 = *(v1 + 1440);
      v628 = *(v1 + 1424);
      v631 = *(v1 + 1472);
      v258 = *(v1 + 1392);
      v259 = *(v653 + 1384);
      v260 = *(v653 + 1312);
      v261 = *(v653 + 1248);
      v262 = *(v653 + 1208);
      v263 = *(v653 + 1200);

      v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v656 = sub_10001117C();
      LOBYTE(v654[0]) = 9;
      v264 = objc_allocWithZone(sub_100012288());
      v601 = sub_100012268();
      sub_1000116D4(v195, v197);

      sub_1000111D0((v653 + 520));
      (*(v262 + 8))(v261, v263);
      sub_100011BC0(v260, &qword_10001C1A8, &qword_100012F10);
      v1 = v653;
      v193 = v628;
      v194 = v259;
    }

    else
    {
      v252 = v201;
      sub_100012108();

      swift_willThrow();
      sub_1000116D4(v195, v197);
      v173 = *(v1 + 1432);
      swift_errorRetain();
      v174 = sub_100012368();
      v175 = sub_100012508();

      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v654[0] = v177;
        *v176 = 136315138;
        swift_getErrorValue();
        v178 = *(v1 + 800);
        v179 = *(v1 + 808);
        v180 = *(v1 + 816);
        v181 = sub_1000126D8();
        v183 = sub_10000EEB8(v181, v182, v654);

        *(v176 + 4) = v183;
        _os_log_impl(&_mh_execute_header, v174, v175, "Got error when reading recipe file: %s", v176, 0xCu);
        sub_1000111D0(v177);
      }

      v631 = *(v1 + 1472);
      v184 = *(v1 + 1440);
      v185 = *(v653 + 1424);
      v186 = *(v653 + 1392);
      v187 = *(v653 + 1384);
      v188 = *(v653 + 1312);
      v189 = *(v653 + 1248);
      v190 = *(v653 + 1208);
      v191 = *(v653 + 1200);
      v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v656 = sub_10001117C();
      LOBYTE(v654[0]) = 10;
      v192 = objc_allocWithZone(sub_100012288());
      v601 = sub_100012268();

      v1 = v653;

      (*(v190 + 8))(v189, v191);
      sub_100011BC0(v188, &qword_10001C1A8, &qword_100012F10);
      v193 = v185;
      v194 = v187;
    }

    v631(v193, v194);
LABEL_85:

LABEL_86:
    v337 = *(v1 + 1424);
    v338 = *(v1 + 1416);
    v339 = *(v1 + 1408);
    v340 = *(v1 + 1400);
    v341 = *(v1 + 1376);
    v342 = *(v1 + 1368);
    v343 = *(v1 + 1344);
    v344 = *(v1 + 1320);
    v345 = *(v653 + 1312);
    v346 = *(v653 + 1304);
    v347 = *(v653 + 1296);
    v603 = *(v653 + 1288);
    v605 = *(v653 + 1280);
    v608 = *(v653 + 1272);
    v611 = *(v653 + 1264);
    v616 = *(v653 + 1256);
    v620 = *(v653 + 1248);
    v625 = *(v653 + 1240);
    v629 = *(v653 + 1232);
    v634 = *(v653 + 1224);
    v640 = *(v653 + 1216);
    v650 = *(v653 + 1192);

    v348 = *(v653 + 8);

    return v348(v601);
  }

  v69 = *(v1 + 1424);
  v70 = *(v1 + 1384);
  sub_1000122C8();
  v71 = *(v1 + 72);
  v72 = *(v1 + 80);
  v73 = *(v1 + 96);

  v74 = *(v1 + 104);

  v75 = sub_100001E34(v71, v72);

  if (!v75)
  {
    v208 = *(v1 + 1464);
    v209 = *(v1 + 1432);
    (*(v1 + 1456))(*(v1 + 1400), *(v1 + 1424), *(v1 + 1384));
    v210 = sub_100012368();
    v211 = sub_100012508();
    v212 = os_log_type_enabled(v210, v211);
    v213 = *(v1 + 1472);
    v214 = *(v1 + 1400);
    v215 = *(v1 + 1392);
    v216 = *(v1 + 1384);
    if (v212)
    {
      v217 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v654[0] = v218;
      *v217 = 136315138;
      sub_1000122C8();
      v213(v214, v216);
      v219 = *(v1 + 128);
      v220 = *(v1 + 136);
      v221 = *(v1 + 152);

      v222 = *(v1 + 160);

      v223 = sub_10000EEB8(v219, v220, v654);

      *(v217 + 4) = v223;
      _os_log_impl(&_mh_execute_header, v210, v211, "Failed to parse recipeAsString into dictionary: %s", v217, 0xCu);
      sub_1000111D0(v218);
    }

    else
    {

      v213(v214, v216);
    }

    v247 = *(v1 + 1472);
    v248 = *(v1 + 1440);
    v249 = *(v1 + 1424);
    v250 = *(v1 + 1384);
    v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v656 = sub_10001117C();
    LOBYTE(v654[0]) = 6;
    v251 = objc_allocWithZone(sub_100012288());
    v601 = sub_100012268();

    v247(v249, v250);
    goto LABEL_85;
  }

  sub_10000D444(v75);

  v76 = sub_100012398().super.isa;

  v77 = v637;
  [v637 setRecipe:v76];

LABEL_19:
  v78 = *(v1 + 1432);
  v79 = v77;
  v80 = sub_100012368();
  v81 = sub_1000124F8();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v654[0] = v83;
    *v82 = 136315138;
    v84 = [v79 recipe];
    sub_1000123A8();

    v85 = sub_1000123B8();
    v87 = v86;

    v88 = sub_10000EEB8(v85, v87, v654);

    *(v82 + 4) = v88;
    _os_log_impl(&_mh_execute_header, v80, v81, "worker.recipe: %s", v82, 0xCu);
    sub_1000111D0(v83);
  }

  v89 = *(v1 + 1160);
  if (os_variant_has_internal_diagnostics())
  {
    v90 = 1001;
  }

  else
  {
    v90 = 5001;
  }

  sub_100012338();
  v91 = objc_allocWithZone(TRIExperimentIdentifiers);
  v92 = sub_1000123D8();
  v93 = sub_1000123D8();

  v94 = [v91 initWithExperimentId:v92 deploymentId:v90 treatmentId:v93];

  [v79 setTriExperimentIdentifiers:v94];
  if (v11)
  {
    v95 = *(v1 + 1272);
    v96 = *(v1 + 1240);
    v97 = *(v1 + 1232);
    v98 = *(v1 + 1208);
    v99 = *(v1 + 1200);

    sub_100012248();

    (*(v98 + 32))(v96, v97, v99);
    sub_100012128();
    sub_100012148();

    sub_100012158(v100);
    v102 = v101;
    v103 = *(v98 + 8);
    v103(v95, v99);
    [v79 setModelsURL:v102];

    v103(v96, v99);
  }

  v104 = swift_allocObject();
  *(v1 + 1528) = v104;
  *(v104 + 16) = 0;
  v105 = (v104 + 16);
  v106 = [v79 recipe];
  v107 = sub_1000123A8();

  sub_10000D698(v107);

  v108 = sub_100012398().super.isa;

  *(v1 + 1144) = *(v104 + 16);
  v109 = v79;
  v110 = [v79 checkIfModelShouldBeDownloaded:v108 outError:v1 + 1144];
  *(v1 + 1536) = v110;

  v111 = *(v1 + 1144);
  v112 = *(v104 + 16);
  *(v104 + 16) = v111;
  v113 = v111;

  v114 = *(v1 + 1432);
  if (*(v104 + 16))
  {
    v638 = v109;

    v115 = sub_100012368();
    v116 = sub_1000124F8();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v117 = 138412290;
      swift_beginAccess();
      v119 = *v105;
      *(v117 + 4) = *v105;
      *v118 = v119;
      v120 = v119;
      _os_log_impl(&_mh_execute_header, v115, v116, "Got error getting data processor: %@", v117, 0xCu);
      sub_100011BC0(v118, &qword_10001C208, &qword_100012F60);
    }

    v121 = *(v1 + 1472);
    v122 = *(v1 + 1440);
    v123 = *(v1 + 1424);
    v124 = *(v1 + 1392);
    v125 = *(v1 + 1384);

    v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v656 = sub_10001117C();
    LOBYTE(v654[0]) = 11;
    v126 = objc_allocWithZone(sub_100012288());
    v601 = sub_100012268();

    v121(v123, v125);
    goto LABEL_84;
  }

  v224 = v109;
  v225 = sub_100012368();
  v226 = sub_1000124F8();
  v639 = v224;

  v633 = v110;
  if (os_log_type_enabled(v225, v226))
  {
    v227 = swift_slowAlloc();
    v228 = swift_slowAlloc();
    *v227 = 138412290;
    v229 = [v639 triExperimentIdentifiers];
    *(v227 + 4) = v229;
    *v228 = v229;
    _os_log_impl(&_mh_execute_header, v225, v226, "Trial experiment identifiers: %@", v227, 0xCu);
    sub_100011BC0(v228, &qword_10001C208, &qword_100012F60);
    v110 = v633;
  }

  v230 = swift_allocObject();
  *(v1 + 1544) = v230;
  v627 = v230;
  *(v230 + 16) = &_swiftEmptyArrayStorage;
  v231 = (v230 + 16);
  v649 = v11;
  if (v11)
  {
    v623 = (v230 + 16);
    v232 = *(v1 + 1224);
    v233 = *(v1 + 1216);
    v234 = *(v1 + 1208);
    v235 = *(v1 + 1200);

    sub_100012248();

    (*(v234 + 32))(v232, v233, v235);
    v236 = [objc_opt_self() defaultManager];
    sub_100012138();
    v237 = sub_1000123D8();

    *(v1 + 1056) = 0;
    v238 = [v236 contentsOfDirectoryAtPath:v237 error:v1 + 1056];

    v239 = *(v1 + 1056);
    if (!v238)
    {
      v363 = *(v1 + 1432);
      v364 = v239;
      sub_100012108();

      swift_willThrow();
      swift_errorRetain();
      v365 = sub_100012368();
      v366 = sub_100012508();

      if (os_log_type_enabled(v365, v366))
      {
        v367 = swift_slowAlloc();
        v368 = swift_slowAlloc();
        v654[0] = v368;
        *v367 = 136315138;
        swift_getErrorValue();
        v369 = *(v1 + 848);
        v370 = *(v1 + 856);
        v371 = *(v1 + 864);
        v372 = sub_1000126D8();
        v374 = sub_10000EEB8(v372, v373, v654);

        *(v367 + 4) = v374;
        _os_log_impl(&_mh_execute_header, v365, v366, "Found a task folder, but got error while trying to access contents: %s", v367, 0xCu);
        sub_1000111D0(v368);
      }

      v375 = *(v1 + 1472);
      v376 = *(v1 + 1440);
      v377 = *(v653 + 1424);
      v378 = *(v653 + 1392);
      v379 = *(v653 + 1384);
      v380 = *(v653 + 1224);
      v381 = *(v653 + 1208);
      v382 = *(v653 + 1200);
      v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v656 = sub_10001117C();
      LOBYTE(v654[0]) = 12;
      v383 = objc_allocWithZone(sub_100012288());
      v601 = sub_100012268();

      v1 = v653;

      (*(v381 + 8))(v380, v382);
      v375(v377, v379);
      goto LABEL_94;
    }

    v240 = *(v1 + 1224);
    v241 = *(v1 + 1208);
    v242 = *(v1 + 1200);
    v243 = sub_100012498();
    v244 = v239;

    v245 = sub_1000038E4(v243);
    (*(v241 + 8))(v240, v242);

    v231 = v623;
    v246 = *v623;

    *v623 = v245;
    v110 = v633;
  }

  else
  {
    v265 = *(v1 + 1432);
    v266 = sub_100012368();
    v267 = sub_1000124F8();
    if (os_log_type_enabled(v266, v267))
    {
      v268 = swift_slowAlloc();
      *v268 = 0;
      _os_log_impl(&_mh_execute_header, v266, v267, "No task folder found", v268, 2u);
    }
  }

  v269 = *(v1 + 1432);
  swift_retain_n();
  v270 = sub_100012368();
  v271 = sub_1000124F8();

  if (os_log_type_enabled(v270, v271))
  {
    v272 = *(v1 + 1200);
    v273 = swift_slowAlloc();
    v274 = swift_slowAlloc();
    v654[0] = v274;
    *v273 = 136315138;
    swift_beginAccess();
    v275 = v231;
    v276 = *(v627 + 16);

    v277 = sub_1000124A8();
    v279 = v278;
    v231 = v275;

    v280 = sub_10000EEB8(v277, v279, v654);

    *(v273 + 4) = v280;
    _os_log_impl(&_mh_execute_header, v270, v271, "All URLS: %s", v273, 0xCu);
    sub_1000111D0(v274);
    v110 = v633;
  }

  else
  {
  }

  v281 = *(v1 + 1432);
  v282 = *(v1 + 1200);
  swift_beginAccess();
  v283 = *v231;
  v284 = objc_allocWithZone(MLRTaskAttachments);

  v285 = sub_100012488().super.isa;

  v286 = [v284 initWithURLs:v285];
  *(v1 + 1552) = v286;

  v287 = v286;
  v288 = sub_100012368();
  v289 = sub_1000124F8();
  v624 = v287;

  if (os_log_type_enabled(v288, v289))
  {
    v290 = swift_slowAlloc();
    v291 = swift_slowAlloc();
    *v290 = 138412290;
    *(v290 + 4) = v624;
    *v291 = v624;
    v292 = v624;
    _os_log_impl(&_mh_execute_header, v288, v289, "taskAttachments: %@", v290, 0xCu);
    sub_100011BC0(v291, &qword_10001C208, &qword_100012F60);
  }

  v293 = [v110 getCoreDictionary];
  if (!v293)
  {
    __break(1u);
    goto LABEL_226;
  }

  v301 = v293;
  v615 = *(v1 + 1432);
  v302 = v1;
  sub_1000123A8();

  v303 = sub_100012398().super.isa;

  v304 = [v639 recipe];
  v305 = sub_1000123A8();

  sub_10000D698(v305);

  v306 = sub_100012398().super.isa;

  *(v1 + 1136) = *v105;
  v307 = [v639 gatherMetricsToReturn:v303 withRecipe:v306 withAttachments:v624 outError:v1 + 1136];

  v308 = *(v1 + 1136);
  v309 = *v105;
  *v105 = v308;
  v310 = v308;

  v311 = sub_100012498();
  v312 = sub_10000D960(v311);
  *(v302 + 1560) = v312;

  v313 = sub_100012368();
  v314 = sub_1000124F8();
  if (os_log_type_enabled(v313, v314))
  {
    v315 = swift_slowAlloc();
    *v315 = 0;
    _os_log_impl(&_mh_execute_header, v313, v314, "Gathered metrics!", v315, 2u);
  }

  v316 = *(v653 + 1432);

  v317 = sub_100012368();
  v318 = sub_1000124F8();

  if (os_log_type_enabled(v317, v318))
  {
    v319 = swift_slowAlloc();
    v320 = swift_slowAlloc();
    v654[0] = v320;
    *v319 = 136315138;
    sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
    v321 = sub_1000124A8();
    v323 = sub_10000EEB8(v321, v322, v654);

    *(v319 + 4) = v323;
    _os_log_impl(&_mh_execute_header, v317, v318, "Results: %s", v319, 0xCu);
    sub_1000111D0(v320);
  }

  v324 = *(v653 + 1432);
  if (*v105)
  {

    v325 = sub_100012368();
    v326 = sub_1000124F8();

    v1 = v653;
    if (os_log_type_enabled(v325, v326))
    {
      v327 = swift_slowAlloc();
      v328 = swift_slowAlloc();
      *v327 = 138412290;
      swift_beginAccess();
      v329 = *v105;
      *(v327 + 4) = *v105;
      *v328 = v329;
      v330 = v329;
      _os_log_impl(&_mh_execute_header, v325, v326, "Got error getting metrics: %@", v327, 0xCu);
      sub_100011BC0(v328, &qword_10001C208, &qword_100012F60);
    }

    v331 = *(v653 + 1472);
    v332 = *(v653 + 1440);
    v333 = *(v653 + 1424);
    v334 = *(v653 + 1392);
    v335 = *(v653 + 1384);

    v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v656 = sub_10001117C();
    LOBYTE(v654[0]) = 13;
    v336 = objc_allocWithZone(sub_100012288());
    v601 = sub_100012268();

    v331(v333, v335);

    goto LABEL_84;
  }

  v617 = v312;
  v350 = v639;
  v351 = sub_100012368();
  v352 = sub_1000124F8();

  if (os_log_type_enabled(v351, v352))
  {
    v353 = swift_slowAlloc();
    v641 = swift_slowAlloc();
    v654[0] = v641;
    *v353 = 136315138;
    v354 = sub_1000123E8();
    v609 = v352;
    v356 = v355;
    v357 = [v350 recipe];
    v358 = sub_1000123A8();

    v1 = v653;
    sub_10000DB8C(v354, v356, v358, (v653 + 360));

    sub_10000E8BC(&qword_10001C1C8, &qword_100012F28);
    v359 = sub_100012518();
    v361 = v360;
    sub_100011BC0(v653 + 360, &qword_10001C1C8, &qword_100012F28);
    v362 = sub_10000EEB8(v359, v361, v654);

    *(v353 + 4) = v362;
    _os_log_impl(&_mh_execute_header, v351, v609, "Logging strategies: %s", v353, 0xCu);
    sub_1000111D0(v641);
  }

  else
  {

    v1 = v653;
  }

  v384 = sub_1000123E8();
  v386 = v385;
  v387 = [v350 recipe];
  v388 = sub_1000123A8();

  sub_10000DB8C(v384, v386, v388, (v1 + 424));

  if (!*(v1 + 448))
  {

    sub_100011BC0(v1 + 424, &qword_10001C1C8, &qword_100012F28);
LABEL_129:
    v427 = *(v1 + 1432);
    v428 = sub_100012368();
    v429 = sub_100012508();
    if (os_log_type_enabled(v428, v429))
    {
      v430 = swift_slowAlloc();
      *v430 = 0;
      _os_log_impl(&_mh_execute_header, v428, v429, "Logging strategies missing", v430, 2u);
    }

    v431 = *(v1 + 1472);
    v432 = *(v1 + 1440);
    v433 = *(v1 + 1424);
    v434 = *(v1 + 1392);
    v435 = *(v1 + 1384);

    v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v656 = sub_10001117C();
    v436 = 14;
    goto LABEL_132;
  }

  sub_10000E8BC(&qword_10001C168, &qword_100012EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_129;
  }

  v389 = *(v1 + 1120);
  *(v1 + 1568) = v389;
  *(v1 + 984) = 0x6E61697373756147;
  *(v1 + 992) = 0xEF6F637369446544;
  v390 = swift_task_alloc();
  *(v390 + 16) = v1 + 984;
  v391 = sub_1000103D0(sub_10001128C, v390, v389);

  if ((v391 & 1) == 0)
  {
    goto LABEL_198;
  }

  v392 = [v350 recipe];
  v393 = sub_1000123A8();

  sub_10000DB8C(0x436F637369646564, 0xED00006769666E6FLL, v393, (v1 + 584));

  if (!*(v1 + 608))
  {

    sub_100011BC0(v1 + 584, &qword_10001C1C8, &qword_100012F28);
LABEL_135:
    v438 = *(v1 + 1432);
    v439 = sub_100012368();
    v440 = sub_100012508();
    if (os_log_type_enabled(v439, v440))
    {
      v441 = swift_slowAlloc();
      *v441 = 0;
      _os_log_impl(&_mh_execute_header, v439, v440, "Recipe lacked dediscoConfig but specified GaussianDeDisco", v441, 2u);
    }

    v431 = *(v1 + 1472);
    v432 = *(v1 + 1440);
    v433 = *(v1 + 1424);
    v442 = *(v1 + 1392);
    v435 = *(v1 + 1384);

    v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v656 = sub_10001117C();
    v436 = 15;
    goto LABEL_132;
  }

  v394 = sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
  *(v1 + 1576) = v394;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_135;
  }

  v395 = *(v1 + 1080);
  sub_10000DB8C(0x676E69646F636E65, 0xEE00616D65686353, v395, (v1 + 648));
  if (!*(v1 + 672))
  {

    sub_100011BC0(v1 + 648, &qword_10001C1C8, &qword_100012F28);
LABEL_140:
    v443 = *(v1 + 1432);
    v444 = sub_100012368();
    v445 = sub_100012508();
    if (os_log_type_enabled(v444, v445))
    {
      v446 = swift_slowAlloc();
      *v446 = 0;
      _os_log_impl(&_mh_execute_header, v444, v445, "dediscoConfig lacked encodingSchema but specified GaussianDeDisco", v446, 2u);
    }

    v431 = *(v1 + 1472);
    v432 = *(v1 + 1440);
    v433 = *(v1 + 1424);
    v447 = *(v1 + 1392);
    v435 = *(v1 + 1384);

    v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v656 = sub_10001117C();
    v436 = 16;
    goto LABEL_132;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_140;
  }

  v396 = *(v1 + 1072);
  v642 = sub_10001137C(&_swiftEmptyArrayStorage);
  v612 = v396;
  sub_10000DB8C(0xD000000000000010, 0x8000000100013670, v396, (v1 + 712));
  if (!*(v1 + 736))
  {

    sub_100011BC0(v1 + 712, &qword_10001C1C8, &qword_100012F28);

LABEL_145:
    v448 = *(v1 + 1432);
    v449 = sub_100012368();
    v450 = sub_100012508();
    if (os_log_type_enabled(v449, v450))
    {
      v451 = swift_slowAlloc();
      *v451 = 0;
      _os_log_impl(&_mh_execute_header, v449, v450, "Got malformed dataContentTypes", v451, 2u);
    }

    v431 = *(v1 + 1472);
    v432 = *(v1 + 1440);
    v433 = *(v1 + 1424);
    v452 = *(v1 + 1392);
    v435 = *(v1 + 1384);

    v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v656 = sub_10001117C();
    v436 = 17;
LABEL_132:
    LOBYTE(v654[0]) = v436;
    v437 = objc_allocWithZone(sub_100012288());
    v601 = sub_100012268();

    v431(v433, v435);

    goto LABEL_85;
  }

  v606 = sub_10000E8BC(&qword_10001C1D8, &qword_100012F38);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v1 = v653;
    goto LABEL_145;
  }

  v600 = v350;
  v602 = v395;
  v397 = 0;
  v398 = v653;
  v597 = (v653 + 744);
  v598 = (v653 + 1024);
  v595 = (v653 + 1032);
  v596 = (v653 + 1040);
  v399 = *(v653 + 1064);
  v400 = -1;
  v401 = -1 << *(v399 + 32);
  if (-v401 < 64)
  {
    v400 = ~(-1 << -v401);
  }

  v402 = v400 & *(v399 + 64);
  v403 = (63 - v401) >> 6;
LABEL_108:
  *(v398 + 1584) = v642;
  v404 = v397;
  if (!v402)
  {
    goto LABEL_110;
  }

  do
  {
    v397 = v404;
LABEL_113:
    v405 = __clz(__rbit64(v402));
    v402 &= v402 - 1;
    v406 = v405 | (v397 << 6);
    v407 = *(v399 + 48) + 16 * v406;
    v396 = *v407;
    v408 = *(v407 + 8);
    v409 = *(*(v399 + 56) + 8 * v406);

    v659._countAndFlagsBits = 0x6E61697373756167;
    v659._object = 0xE90000000000003ALL;
    if (sub_100012478(v659))
    {
      *(v653 + 920) = v396;
      *(v653 + 928) = v408;
      *(v653 + 936) = 0x6E61697373756167;
      *(v653 + 944) = 0xE90000000000003ALL;
      sub_1000114AC();
      sub_1000124E8();
      v410 = *(v653 + 680);
      v411 = *(v653 + 688);
      v412 = *(v653 + 696);
      v413 = *(v653 + 704);
      v414 = sub_100012438();
      v593 = v415;
      v594 = v414;

      *(v653 + 640) = v394;
      *(v653 + 616) = v409;
      sub_100011500((v653 + 616), (v653 + 552));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v654[0] = v642;
      v417 = sub_100010358(v594, v593);
      v418 = v642[2];
      v419 = (v294 & 1) == 0;
      v293 = (v418 + v419);
      if (__OFADD__(v418, v419))
      {
        goto LABEL_227;
      }

      v420 = v294;
      if (v642[3] >= v293)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v294)
          {
            goto LABEL_124;
          }
        }

        else
        {
          sub_10001099C();
          v642 = v654[0];
          if (v420)
          {
            goto LABEL_124;
          }
        }
      }

      else
      {
        sub_10001047C(v293, isUniquelyReferenced_nonNull_native);
        v642 = v654[0];
        v421 = sub_100010358(v594, v593);
        if ((v420 & 1) != (v422 & 1))
        {
LABEL_222:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
        }

        v417 = v421;
        if (v420)
        {
LABEL_124:
          v396 = (v642[7] + 32 * v417);
          sub_1000111D0(v396);
          v398 = v653;
          sub_100011500((v653 + 552), v396);

          goto LABEL_108;
        }
      }

      v396 = v642;
      v642[(v417 >> 6) + 8] |= 1 << v417;
      v423 = (v642[6] + 16 * v417);
      *v423 = v594;
      v423[1] = v593;
      v293 = sub_100011500((v653 + 552), (v642[7] + 32 * v417));
      v424 = v642[2];
      v425 = __OFADD__(v424, 1);
      v426 = v424 + 1;
      if (v425)
      {
        goto LABEL_228;
      }

      v642[2] = v426;
      v398 = v653;
      goto LABEL_108;
    }

    v404 = v397;
  }

  while (v402);
  while (1)
  {
LABEL_110:
    v397 = v404 + 1;
    if (__OFADD__(v404, 1))
    {
      __break(1u);
LABEL_218:

LABEL_219:
      v588 = *(v653 + 1608);
      v589 = swift_task_alloc();
      *(v653 + 1632) = v589;
      v590 = *v649;
      *(v589 + 16) = v588;
      *(v589 + 24) = v397 + 33;
      *(v589 + 32) = 0x8000000100013630;
      *(v589 + 40) = v598;
      *(v589 + 48) = v590;
      v591 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
      v592 = swift_task_alloc();
      *(v653 + 1640) = v592;
      *v592 = v653;
      v592[1] = sub_10000C578;
      v300 = &type metadata for Bool;
      v298 = sub_100011670;
      v293 = (v653 + 65);
      v297 = 0x80000001000136D0;
      v294 = 0;
      v295 = 0;
      v296 = 0xD000000000000010;
      v299 = v589;

      return withCheckedContinuation<A>(isolation:function:_:)(v293, v294, v295, v296, v297, v298, v299, v300);
    }

    if (v397 >= v403)
    {
      break;
    }

    v402 = *(v399 + 64 + 8 * v397);
    ++v404;
    if (v402)
    {
      goto LABEL_113;
    }
  }

  sub_10000DB8C(1701869940, 0xE400000000000000, v612, (v653 + 296));

  if (!*(v653 + 320))
  {

    sub_100011BC0(v653 + 296, &qword_10001C1C8, &qword_100012F28);
LABEL_188:

    v496 = *(v653 + 1432);
    v497 = sub_100012368();
    v498 = sub_100012508();
    if (os_log_type_enabled(v497, v498))
    {
      v499 = swift_slowAlloc();
      *v499 = 0;
      _os_log_impl(&_mh_execute_header, v497, v498, "encodingSchema lacked type", v499, 2u);
    }

    v1 = v653;
    v500 = *(v653 + 1472);
    v501 = *(v653 + 1440);
    v502 = *(v653 + 1424);
    v503 = *(v653 + 1392);
    v504 = *(v653 + 1384);

    v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v656 = sub_10001117C();
    v505 = 18;
    goto LABEL_196;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_188;
  }

  v453 = *(v653 + 968);
  v454 = *(v653 + 976);
  sub_10000E8BC(&qword_10001C1E8, &qword_100012F40);
  v455 = swift_allocObject();
  *(v455 + 16) = xmmword_100012D20;
  *(v455 + 32) = 1701869940;
  *(v455 + 40) = 0xE400000000000000;
  *(v455 + 48) = v453;
  *(v455 + 56) = v454;
  *(v455 + 72) = &type metadata for String;
  *(v455 + 80) = 0xD000000000000012;
  *(v455 + 88) = 0x8000000100013690;
  sub_10000E8BC(&qword_10001C1F0, &qword_100012F48);
  v456 = swift_allocObject();
  *(v456 + 16) = xmmword_100012D30;
  *(v456 + 32) = 0xD000000000000010;
  *(v456 + 40) = 0x8000000100013670;
  *(v456 + 48) = v642;

  v457 = sub_100011510(v456);
  swift_setDeallocating();
  sub_100011BC0(v456 + 32, &qword_10001C1F8, &qword_100012F50);
  swift_deallocClassInstance();
  *(v455 + 120) = v606;
  *(v455 + 96) = v457;
  *(v653 + 1592) = sub_10001137C(v455);
  swift_setDeallocating();
  sub_10000E8BC(&qword_10001C200, &qword_100012F58);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v397 = 0xD000000000000010;
  sub_10000DB8C(0xD00000000000001DLL, 0x80000001000136B0, v602, (v653 + 488));

  if (!*(v653 + 512))
  {

    sub_100011BC0(v653 + 488, &qword_10001C1C8, &qword_100012F28);
LABEL_193:

    v506 = *(v653 + 1432);
    v507 = sub_100012368();
    v508 = sub_100012508();
    if (os_log_type_enabled(v507, v508))
    {
      v509 = swift_slowAlloc();
      *v509 = 0;
      _os_log_impl(&_mh_execute_header, v507, v508, "dediscoConfig lacked DifferentialPrivacyParameters but specified GaussianDeDisco", v509, 2u);
    }

    v1 = v653;
    v500 = *(v653 + 1472);
    v501 = *(v653 + 1440);
    v502 = *(v653 + 1424);
    v510 = *(v653 + 1392);
    v504 = *(v653 + 1384);

    v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v656 = sub_10001117C();
    v505 = 19;
LABEL_196:
    LOBYTE(v654[0]) = v505;
    v511 = objc_allocWithZone(sub_100012288());
    v601 = sub_100012268();

    v500(v502, v504);
    goto LABEL_94;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_193;
  }

  *(v653 + 1600) = *(v653 + 1016);
  v293 = [objc_opt_self() defaultManager];
  *(v653 + 1608) = v293;
  v458 = v617[2];
  *(v653 + 1616) = v458;
  if (!v458)
  {
    v1 = v653;
    v512 = *(v653 + 1600);
    v513 = *(v653 + 1592);
    v514 = *(v653 + 1584);

LABEL_198:
    v515 = *(v1 + 1568);
    v516 = v515[2];
    if (v516 <= 1 && (v516 != 1 || v515[4] == 0x6E61697373756147 && v515[5] == 0xEF6F637369446544 || (v525 = sub_100012698(), v526 = *(v1 + 1568), (v525 & 1) != 0)))
    {
      v527 = *(v1 + 1560);
    }

    else
    {
      v517 = *(v1 + 1528);
      v518 = *(v1 + 1520);
      sub_10000DA78(*(v1 + 1560));

      v519 = sub_100012488().super.isa;

      v520 = sub_100012488().super.isa;

      *(v1 + 1096) = *(v517 + 16);
      v521 = [v518 logAllResultsToCoreAnalyticsOrDeDisco:v519 withLoggingStrategies:v520 outError:v1 + 1096];

      v522 = *(v1 + 1096);
      v523 = *(v517 + 16);
      *(v517 + 16) = v522;
      v524 = v522;
    }

    v528 = *(v1 + 1424);
    v529 = *(v1 + 1384);
    sub_1000122C8();
    v530 = *(v1 + 24);

    LODWORD(v528) = *(v1 + 32);
    v531 = *(v1 + 40);

    v532 = *(v1 + 48);

    if (v528 == 1)
    {
      v533 = *(v1 + 1440);
      v534 = *(v1 + 1432);
      v535 = *(v1 + 1160);
      v536 = sub_1000124B8().super.super.isa;
      sub_100012338();
      v537 = sub_1000123D8();

      [v533 setValue:v536 forKey:v537];

      v538 = v535;
      v539 = sub_100012368();
      v540 = sub_1000124F8();

      if (os_log_type_enabled(v539, v540))
      {
        v541 = *(v1 + 1160);
        v542 = swift_slowAlloc();
        v543 = swift_slowAlloc();
        v654[0] = v543;
        *v542 = 136315138;
        v544 = sub_100012338();
        v546 = sub_10000EEB8(v544, v545, v654);

        *(v542 + 4) = v546;
        _os_log_impl(&_mh_execute_header, v539, v540, "Execution state saved for taskName %s.", v542, 0xCu);
        sub_1000111D0(v543);
      }
    }

    v547 = *(v1 + 1552);
    v548 = *(v1 + 1544);
    v549 = *(v1 + 1536);
    v646 = *(v1 + 1528);
    v550 = *(v1 + 1520);
    v651 = *(v1 + 1512);
    v551 = *(v653 + 1472);
    v552 = *(v653 + 1440);
    v553 = *(v653 + 1424);
    v554 = *(v653 + 1392);
    v555 = *(v653 + 1384);
    v556 = objc_allocWithZone(sub_100012288());
    v601 = sub_100012278();

    v551(v553, v555);
    v1 = v653;
    goto LABEL_94;
  }

  *(v653 + 1624) = 0;
  v459 = *(v653 + 1560);
  if (!*(v459 + 16))
  {
    goto LABEL_229;
  }

  v460 = *(v459 + 32);

  sub_10000DB8C(0x74654D6C65646F4DLL, 0xEC00000073636972, v460, (v653 + 392));

  if (!*(v653 + 416))
  {
    v557 = *(v653 + 1600);
    v558 = *(v653 + 1592);
    v559 = *(v653 + 1584);
    v560 = *(v653 + 1568);
    v561 = *(v653 + 1560);

    sub_100011BC0(v653 + 392, &qword_10001C1C8, &qword_100012F28);
LABEL_212:

    v567 = *(v653 + 1432);
    v568 = sub_100012368();
    v569 = sub_100012508();
    if (os_log_type_enabled(v568, v569))
    {
      v570 = swift_slowAlloc();
      *v570 = 0;
      _os_log_impl(&_mh_execute_header, v568, v569, "Measurements were malformed", v570, 2u);
    }

    v1 = v653;
    v571 = *(v653 + 1608);
    v572 = *(v653 + 1552);
    v573 = *(v653 + 1536);
    v636 = *(v653 + 1544);
    v647 = *(v653 + 1528);
    v574 = *(v653 + 1520);
    v652 = *(v653 + 1512);
    v630 = *(v653 + 1472);
    v575 = *(v653 + 1440);
    v576 = *(v653 + 1424);
    v577 = *(v653 + 1392);
    v578 = *(v653 + 1384);

    v655 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v656 = sub_10001117C();
    LOBYTE(v654[0]) = 20;
    v579 = objc_allocWithZone(sub_100012288());
    v601 = sub_100012268();

    v630(v576, v578);
LABEL_94:

LABEL_84:

    goto LABEL_85;
  }

  v461 = *(v653 + 1576);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v562 = *(v653 + 1600);
    v563 = *(v653 + 1592);
    v564 = *(v653 + 1584);
    v565 = *(v653 + 1568);
    v566 = *(v653 + 1560);

    goto LABEL_212;
  }

  v649 = (v653 + 1592);
  v462 = *(v653 + 1048);
  *v598 = sub_10001137C(&_swiftEmptyArrayStorage);
  v463 = -1;
  v464 = -1 << *(v462 + 32);
  if (-v464 < 64)
  {
    v463 = ~(-1 << -v464);
  }

  v465 = v463 & *(v462 + 64);
  v466 = (63 - v464) >> 6;

  v467 = 0;
  while (v465)
  {
    v468 = v465;
LABEL_165:
    v465 = (v468 - 1) & v468;
    if (*(*(v653 + 1584) + 16))
    {
      v470 = (*(v462 + 48) + ((v467 << 10) | (16 * __clz(__rbit64(v468)))));
      v472 = *v470;
      v471 = v470[1];
      v473 = *(v653 + 1584);

      sub_100010358(v472, v471);
      v475 = v474;

      if (v475)
      {
        if (*(v462 + 16) && (v476 = sub_100010358(v472, v471), (v477 & 1) != 0))
        {
          sub_100011614(*(v462 + 56) + 32 * v476, v653 + 328);
          v478 = *v598;
          v643 = swift_isUniquelyReferenced_nonNull_native();
          v479 = *v598;
          *v596 = *v598;
          v480 = sub_100010358(v472, v471);
          v481 = *(v479 + 16);
          v635 = v294;
          v482 = (v294 & 1) == 0;
          v293 = (v481 + v482);
          if (__OFADD__(v481, v482))
          {
            goto LABEL_230;
          }

          if (*(v479 + 24) >= v293)
          {
            if ((v643 & 1) == 0)
            {
              sub_10001099C();
            }
          }

          else
          {
            sub_10001047C(v293, v643);
            v483 = *v596;
            v484 = sub_100010358(v472, v471);
            if ((v635 & 1) != (v485 & 1))
            {
              goto LABEL_222;
            }

            v480 = v484;
          }

          v645 = *v596;
          if (v635)
          {
            v492 = (v645[7] + 32 * v480);
            sub_1000111D0(v492);
            sub_100011500((v653 + 328), v492);

            *v598 = v645;
          }

          else
          {
            v645[(v480 >> 6) + 8] |= 1 << v480;
            v493 = (v645[6] + 16 * v480);
            *v493 = v472;
            v493[1] = v471;
            v293 = sub_100011500((v653 + 328), (v645[7] + 32 * v480));
            v494 = v645[2];
            v425 = __OFADD__(v494, 1);
            v495 = v494 + 1;
            if (v425)
            {
              goto LABEL_231;
            }

            v645[2] = v495;
            *v598 = v645;
          }
        }

        else
        {
          v486 = sub_100010358(v472, v471);
          v488 = v487;

          if (v488)
          {
            v489 = *v598;
            v490 = swift_isUniquelyReferenced_nonNull_native();
            v644 = *v598;
            *v595 = *v598;
            if (!v490)
            {
              sub_10001099C();
              v644 = *v595;
            }

            v491 = *(v644[6] + 16 * v486 + 8);

            sub_100011500((v644[7] + 32 * v486), v597);
            sub_100010734(v486, v644);
            *v598 = v644;
          }

          else
          {
            *v597 = 0u;
            *(v653 + 760) = 0u;
          }

          v293 = sub_100011BC0(v597, &qword_10001C1C8, &qword_100012F28);
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v469 = v467 + 1;
    if (__OFADD__(v467, 1))
    {
      break;
    }

    if (v469 >= v466)
    {
      v580 = *(v653 + 1432);

      v396 = sub_100012368();
      v581 = sub_1000124F8();

      if (!os_log_type_enabled(v396, v581))
      {
        goto LABEL_218;
      }

      v582 = swift_slowAlloc();
      v583 = swift_slowAlloc();
      v654[0] = v583;
      *v582 = 136315138;
      v584 = sub_1000123B8();
      v586 = v585;

      v587 = sub_10000EEB8(v584, v586, v654);

      *(v582 + 4) = v587;
      _os_log_impl(&_mh_execute_header, v396, v581, "Measurements: %s", v582, 0xCu);
      sub_1000111D0(v583);

      goto LABEL_219;
    }

    v468 = *(v462 + 64 + 8 * v469);
    ++v467;
    if (v468)
    {
      v467 = v469;
      goto LABEL_165;
    }
  }

LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
  return withCheckedContinuation<A>(isolation:function:_:)(v293, v294, v295, v296, v297, v298, v299, v300);
}

uint64_t sub_10000C578()
{
  v1 = *(*v0 + 1640);
  v2 = *(*v0 + 1632);
  v4 = *v0;

  return _swift_task_switch(sub_10000C6BC, 0, 0);
}

uint64_t sub_10000C6BC()
{
  v177 = v0;
  v1 = *(v0 + 1432);
  v2 = *(v0 + 65);
  v3 = sub_100012368();
  v4 = sub_1000124F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "Succeded: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 1624);
  v7 = *(v0 + 1616);

  v8 = *(v0 + 1024);

  if (v6 + 1 == v7)
  {
    v9 = *(v0 + 1600);
    v10 = *(v0 + 1592);
    v11 = *(v0 + 1584);

    v12 = *(v0 + 1568);
    v13 = v12[2];
    if (v13 <= 1 && (v13 != 1 || v12[4] == 0x6E61697373756147 && v12[5] == 0xEF6F637369446544 || (v69 = sub_100012698(), v70 = *(v0 + 1568), (v69 & 1) != 0)))
    {
      v71 = *(v0 + 1560);
    }

    else
    {
      v14 = *(v0 + 1528);
      v15 = *(v0 + 1520);
      sub_10000DA78(*(v0 + 1560));

      isa = sub_100012488().super.isa;

      v17 = sub_100012488().super.isa;

      *(v0 + 1096) = *(v14 + 16);
      v18 = [v15 logAllResultsToCoreAnalyticsOrDeDisco:isa withLoggingStrategies:v17 outError:v0 + 1096];

      v19 = *(v0 + 1096);
      v20 = *(v14 + 16);
      *(v14 + 16) = v19;
      v21 = v19;
    }

    v72 = *(v0 + 1424);
    v73 = *(v0 + 1384);
    sub_1000122C8();
    v74 = *(v0 + 24);

    LODWORD(v72) = *(v0 + 32);
    v75 = *(v0 + 40);

    v76 = *(v0 + 48);

    if (v72 == 1)
    {
      v77 = *(v0 + 1440);
      v78 = *(v0 + 1432);
      v79 = *(v0 + 1160);
      v80 = sub_1000124B8().super.super.isa;
      sub_100012338();
      v81 = sub_1000123D8();

      [v77 setValue:v80 forKey:v81];

      v82 = v79;
      v83 = sub_100012368();
      v84 = sub_1000124F8();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = *(v0 + 1160);
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v176[0] = v87;
        *v86 = 136315138;
        v88 = sub_100012338();
        v90 = sub_10000EEB8(v88, v89, v176);

        *(v86 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v83, v84, "Execution state saved for taskName %s.", v86, 0xCu);
        sub_1000111D0(v87);
      }
    }

    v91 = *(v0 + 1552);
    v92 = *(v0 + 1536);
    v165 = *(v0 + 1544);
    v169 = *(v0 + 1528);
    v93 = *(v0 + 1520);
    v173 = *(v0 + 1512);
    v94 = *(v0 + 1472);
    v95 = *(v0 + 1440);
    v96 = *(v0 + 1424);
    v97 = *(v0 + 1392);
    v98 = *(v0 + 1384);
    v99 = objc_allocWithZone(sub_100012288());
    v149 = sub_100012278();

    v94(v96, v98);
LABEL_54:

    v123 = *(v0 + 1424);
    v124 = *(v0 + 1416);
    v125 = *(v0 + 1408);
    v126 = *(v0 + 1400);
    v127 = *(v0 + 1376);
    v128 = *(v0 + 1368);
    v129 = *(v0 + 1344);
    v130 = *(v0 + 1320);
    v131 = *(v0 + 1312);
    v132 = *(v0 + 1304);
    v150 = *(v0 + 1296);
    v151 = *(v0 + 1288);
    v152 = *(v0 + 1280);
    v153 = *(v0 + 1272);
    v154 = *(v0 + 1264);
    v155 = *(v0 + 1256);
    v158 = *(v0 + 1248);
    v160 = *(v0 + 1240);
    v163 = *(v0 + 1232);
    v167 = *(v0 + 1224);
    v171 = *(v0 + 1216);
    v175 = *(v0 + 1192);

    v133 = *(v0 + 8);

    return v133(v149);
  }

  v22 = *(v0 + 1624) + 1;
  *(v0 + 1624) = v22;
  v23 = *(v0 + 1560);
  if (v22 >= *(v23 + 16))
  {
LABEL_64:
    __break(1u);
LABEL_65:

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
  }

  v24 = *(v23 + 8 * v22 + 32);

  sub_10000DB8C(0x74654D6C65646F4DLL, 0xEC00000073636972, v24, (v0 + 392));

  if (!*(v0 + 416))
  {
    v100 = *(v0 + 1600);
    v101 = *(v0 + 1592);
    v102 = *(v0 + 1584);
    v103 = *(v0 + 1568);
    v104 = *(v0 + 1560);

    sub_100011BC0(v0 + 392, &qword_10001C1C8, &qword_100012F28);
LABEL_51:

    v110 = *(v0 + 1432);
    v111 = sub_100012368();
    v112 = sub_100012508();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "Measurements were malformed", v113, 2u);
    }

    v114 = *(v0 + 1608);
    v115 = *(v0 + 1552);
    v116 = *(v0 + 1536);
    v166 = *(v0 + 1544);
    v170 = *(v0 + 1528);
    v117 = *(v0 + 1520);
    v174 = *(v0 + 1512);
    v162 = *(v0 + 1472);
    v118 = *(v0 + 1440);
    v119 = *(v0 + 1424);
    v120 = *(v0 + 1392);
    v121 = *(v0 + 1384);

    v176[3] = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v176[4] = sub_10001117C();
    LOBYTE(v176[0]) = 20;
    v122 = objc_allocWithZone(sub_100012288());
    v149 = sub_100012268();

    v162(v119, v121);
    goto LABEL_54;
  }

  v25 = *(v0 + 1576);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v105 = *(v0 + 1600);
    v106 = *(v0 + 1592);
    v107 = *(v0 + 1584);
    v108 = *(v0 + 1568);
    v109 = *(v0 + 1560);

    goto LABEL_51;
  }

  v172 = (v0 + 1024);
  v159 = (v0 + 1032);
  v161 = (v0 + 744);
  v164 = (v0 + 1040);
  v26 = *(v0 + 1048);
  *(v0 + 1024) = sub_10001137C(&_swiftEmptyArrayStorage);
  v27 = -1;
  v28 = -1 << *(v26 + 32);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v26 + 64);
  v30 = (63 - v28) >> 6;

  v31 = 0;
LABEL_12:
  if (v29)
  {
    v32 = v29;
    goto LABEL_18;
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v33 >= v30)
    {
      break;
    }

    v32 = *(v26 + 64 + 8 * v33);
    ++v31;
    if (v32)
    {
      v31 = v33;
LABEL_18:
      v29 = (v32 - 1) & v32;
      if (!*(*(v0 + 1584) + 16))
      {
        goto LABEL_12;
      }

      v34 = (*(v26 + 48) + ((v31 << 10) | (16 * __clz(__rbit64(v32)))));
      v35 = *v34;
      v36 = v34[1];
      v37 = *(v0 + 1584);

      sub_100010358(v35, v36);
      v39 = v38;

      if (v39)
      {
        if (*(v26 + 16) && (v40 = sub_100010358(v35, v36), (v41 & 1) != 0))
        {
          sub_100011614(*(v26 + 56) + 32 * v40, v0 + 328);
          v42 = *v172;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v43 = *v172;
          *v164 = *v172;
          v45 = sub_100010358(v35, v36);
          v46 = *(v43 + 16);
          v47 = (v44 & 1) == 0;
          v48 = v46 + v47;
          if (__OFADD__(v46, v47))
          {
            __break(1u);
LABEL_69:
            __break(1u);
          }

          if (*(v43 + 24) >= v48)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v157 = v44;
              sub_10001099C();
              v44 = v157;
            }
          }

          else
          {
            v156 = v44;
            sub_10001047C(v48, isUniquelyReferenced_nonNull_native);
            v49 = *v164;
            v50 = sub_100010358(v35, v36);
            v52 = v51 & 1;
            v44 = v156;
            if ((v156 & 1) != v52)
            {
              goto LABEL_65;
            }

            v45 = v50;
          }

          v62 = *v164;
          if (v44)
          {
            v63 = *v164;
            v64 = (v62[7] + 32 * v45);
            sub_1000111D0(v64);
            sub_100011500((v0 + 328), v64);

            *v172 = v63;
          }

          else
          {
            v62[(v45 >> 6) + 8] |= 1 << v45;
            v65 = (v62[6] + 16 * v45);
            *v65 = v35;
            v65[1] = v36;
            sub_100011500((v0 + 328), (v62[7] + 32 * v45));
            v66 = v62[2];
            v67 = __OFADD__(v66, 1);
            v68 = v66 + 1;
            if (v67)
            {
              goto LABEL_69;
            }

            v62[2] = v68;
            *v172 = v62;
          }
        }

        else
        {
          v53 = sub_100010358(v35, v36);
          v55 = v54;

          if (v55)
          {
            v56 = (v0 + 1024);
            v57 = *v172;
            v58 = swift_isUniquelyReferenced_nonNull_native();
            v59 = *v172;
            *v159 = *v172;
            if (!v58)
            {
              sub_10001099C();
              v56 = (v0 + 1024);
              v59 = *v159;
            }

            v60 = *(*(v59 + 48) + 16 * v53 + 8);

            sub_100011500((*(v59 + 56) + 32 * v53), v161);
            sub_100010734(v53, v59);
            v61 = v0 + 744;
            *v56 = v59;
          }

          else
          {
            v61 = v0 + 744;
            *v161 = 0u;
            *(v0 + 760) = 0u;
          }

          sub_100011BC0(v61, &qword_10001C1C8, &qword_100012F28);
        }
      }

      else
      {
      }

      goto LABEL_12;
    }
  }

  v135 = *(v0 + 1432);

  v136 = sub_100012368();
  v137 = sub_1000124F8();

  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v176[0] = v139;
    *v138 = 136315138;
    v140 = sub_1000123B8();
    v142 = v141;

    v143 = sub_10000EEB8(v140, v142, v176);

    *(v138 + 4) = v143;
    _os_log_impl(&_mh_execute_header, v136, v137, "Measurements: %s", v138, 0xCu);
    sub_1000111D0(v139);
  }

  else
  {
  }

  v144 = *(v0 + 1608);
  v145 = swift_task_alloc();
  *(v0 + 1632) = v145;
  v146 = *(v0 + 1592);
  *(v145 + 16) = v144;
  *(v145 + 24) = 0xD000000000000031;
  *(v145 + 32) = 0x8000000100013630;
  *(v145 + 40) = v172;
  *(v145 + 48) = v146;
  v147 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v148 = swift_task_alloc();
  *(v0 + 1640) = v148;
  *v148 = v0;
  v148[1] = sub_10000C578;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 65, 0, 0, 0xD000000000000010, 0x80000001000136D0, sub_100011670, v145, &type metadata for Bool);
}

unint64_t sub_10000D444(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000E8BC(&qword_10001C238, &qword_100012F80);
    v2 = sub_1000125D8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_100011500(&v25, v27);
        sub_100011500(v27, v28);
        sub_100011500(v28, &v26);
        result = sub_100010358(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_1000111D0(v12);
          result = sub_100011500(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_100011500(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10000D698(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000E8BC(&qword_10001C258, &qword_100012FA0);
    v2 = sub_1000125D8();
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
    sub_100011614(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100011500(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100011500(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100011500(v31, v32);
    result = sub_100012548(v2[5]);
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
    result = sub_100011500(v32, (v2[7] + 32 * v10));
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

unint64_t *sub_10000D960(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = &_swiftEmptyArrayStorage;
    sub_10000FDF0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_100011614(v4, v9);
      sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
      swift_dynamicCast();
      v5 = v9[4];
      v10 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_10000FDF0((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      v2[2] = v7 + 1;
      v2[v7 + 4] = v5;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_10000DA78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = &_swiftEmptyArrayStorage;
    sub_10000FDD0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;

      sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000FDD0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_100011500(&v9, &v2[4 * v6 + 4]);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double sub_10000DB8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100010358(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100011614(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_10000DBF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a1;
  v28 = a2;
  v9 = sub_10000E8BC(&qword_10001C228, &qword_100012F70);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v23 - v12;
  v27 = sub_1000123D8();
  v14 = *a5;

  sub_10000D698(v15);

  isa = sub_100012398().super.isa;

  sub_10000D698(a6);
  v16 = sub_100012398().super.isa;

  sub_10000D698(v24);
  v17 = sub_100012398().super.isa;

  (*(v10 + 16))(v13, v25, v9);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + v18, v13, v9);
  aBlock[4] = sub_100011804;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DE90;
  aBlock[3] = &unk_100018D00;
  v20 = _Block_copy(aBlock);

  v21 = v27;
  v22 = isa;
  [v28 encodeAndUploadToDediscoWithIdentifier:v27 measurements:isa withEncodingSchemas:v16 metadata:v17 completion:v20];
  _Block_release(v20);
}

void sub_10000DE90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10000DEFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000120FC;

  return sub_100002174(a1);
}

uint64_t sub_10000DF90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000E024;

  return sub_100003C2C(a1);
}

uint64_t sub_10000E024(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10000E120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_10000E204;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_10000E204()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000E2F8(uint64_t a1)
{
  v2 = sub_10000EC78(&qword_10001C158);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_10000E360()
{
  sub_10000EA68();
  sub_10000EABC();
  return sub_1000122B8();
}

uint64_t sub_10000E3CC()
{
  v1 = sub_100012778();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *v0;
  v6 = *(v0 + 3);
  v28 = *(v0 + 4);
  v29 = v6;
  *(&v26 + 1) = &type metadata for AppStoreEvalLighthouseWorkerConfig;
  v7 = swift_allocObject();
  *&v25 = v7;
  v8 = v0[1];
  *(v7 + 16) = *v0;
  *(v7 + 32) = v8;
  *(v7 + 48) = v0[2];
  *(v7 + 64) = *(v0 + 48);
  sub_10000ED04(&v30, v24);
  sub_100011AE0(&v29, v24, &qword_10001C160, &qword_100012ED8);
  sub_100011AE0(&v28, v24, &qword_10001C160, &qword_100012ED8);
  sub_100012758();
  v9 = sub_100012768();
  (*(v2 + 8))(v5, v1);
  v21[1] = v9;
  sub_100012598();
  sub_1000125E8();
  if (*(&v27 + 1))
  {
    v10 = &_swiftEmptyArrayStorage;
    do
    {
      v24[0] = v25;
      v24[1] = v26;
      v24[2] = v27;
      v11._object = *(&v25 + 1);
      if (*(&v25 + 1))
      {
        v11._countAndFlagsBits = *&v24[0];
        v22 = 0;
        v23 = 0xE000000000000000;
        sub_100012458(v11);
        v31._countAndFlagsBits = 8250;
        v31._object = 0xE200000000000000;
        sub_100012458(v31);
        sub_1000125A8();
        v12 = v22;
        v13 = v23;
        sub_100011BC0(v24, &qword_10001C178, &qword_100012EE8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10000EDA8(0, *(v10 + 2) + 1, 1, v10);
        }

        v15 = *(v10 + 2);
        v14 = *(v10 + 3);
        if (v15 >= v14 >> 1)
        {
          v10 = sub_10000EDA8((v14 > 1), v15 + 1, 1, v10);
        }

        *(v10 + 2) = v15 + 1;
        v16 = &v10[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v13;
      }

      else
      {
        sub_100011BC0(v24, &qword_10001C178, &qword_100012EE8);
      }

      sub_1000125E8();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  *&v25 = 0xD000000000000023;
  *(&v25 + 1) = 0x80000001000135A0;
  *&v24[0] = v10;
  sub_10000E8BC(&qword_10001C168, &qword_100012EE0);
  sub_100011728(&qword_10001C170, &qword_10001C168, &qword_100012EE0);
  v17 = sub_1000123C8();
  v19 = v18;

  v32._countAndFlagsBits = v17;
  v32._object = v19;
  sub_100012458(v32);

  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  sub_100012458(v33);
  return v25;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppStoreEvalLighthouseWorker();
  sub_10000EC78(&qword_10001C0B0);
  sub_100012228();
  return 0;
}

uint64_t type metadata accessor for AppStoreEvalLighthouseWorker()
{
  result = qword_10001C2B8;
  if (!qword_10001C2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E844(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E8BC(&qword_10001C0B8, &unk_100012D40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000E8BC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000E918(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E8BC(&qword_10001C0B8, &unk_100012D40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10000E994()
{
  sub_10000EA00();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000EA00()
{
  if (!qword_10001C118)
  {
    sub_10000EA68();
    sub_10000EABC();
    v0 = sub_1000122E8();
    if (!v1)
    {
      atomic_store(v0, &qword_10001C118);
    }
  }
}

unint64_t sub_10000EA68()
{
  result = qword_10001C120;
  if (!qword_10001C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C120);
  }

  return result;
}

unint64_t sub_10000EABC()
{
  result = qword_10001C128;
  if (!qword_10001C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C128);
  }

  return result;
}

__n128 sub_10000EB10(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000EB2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_10000EB74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000EC78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppStoreEvalLighthouseWorker();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000ECBC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_10000ED60(uint64_t *a1, uint64_t *a2)
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

char *sub_10000EDA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E8BC(&qword_10001C180, &qword_100012EF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000EEB8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000EF84(v11, 0, 0, 1, a1, a2);
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
    sub_100011614(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000111D0(v11);
  return v7;
}

unint64_t sub_10000EF84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000F090(a5, a6);
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
    result = sub_100012588();
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

char *sub_10000F090(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000F0DC(a1, a2);
  sub_10000F20C(&off_100018BA8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000F0DC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000F2F8(v5, 0);
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

  result = sub_100012588();
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
        v10 = sub_100012468();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000F2F8(v10, 0);
        result = sub_100012578();
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

uint64_t sub_10000F20C(uint64_t result)
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

  result = sub_10000F36C(result, v12, 1, v3);
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

void *sub_10000F2F8(uint64_t a1, uint64_t a2)
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

  sub_10000E8BC(&qword_10001C268, &qword_100012FB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000F36C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E8BC(&qword_10001C268, &qword_100012FB0);
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

uint64_t sub_10000F460(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100012728();
  sub_100012448();
  v9 = sub_100012748();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_100012698() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10000F810(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000F5B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000E8BC(&qword_10001C278, &qword_100012FC8);
  result = sub_100012568();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_100012728();
      sub_100012448();
      result = sub_100012748();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10000F810(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000F5B0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000F990();
      goto LABEL_16;
    }

    sub_10000FAEC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_100012728();
  sub_100012448();
  result = sub_100012748();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100012698();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000126B8();
  __break(1u);
  return result;
}

void *sub_10000F990()
{
  v1 = v0;
  sub_10000E8BC(&qword_10001C278, &qword_100012FC8);
  v2 = *v0;
  v3 = sub_100012558();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000FAEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000E8BC(&qword_10001C278, &qword_100012FC8);
  result = sub_100012568();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_100012728();

      sub_100012448();
      result = sub_100012748();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_10000FD24(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10000FDB0(char *a1, int64_t a2, char a3)
{
  result = sub_10000FE30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000FDD0(char *a1, int64_t a2, char a3)
{
  result = sub_10000FF3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000FDF0(void *a1, int64_t a2, char a3)
{
  result = sub_10001004C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000FE10(size_t a1, int64_t a2, char a3)
{
  result = sub_100010180(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000FE30(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E8BC(&qword_10001C180, &qword_100012EF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000FF3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E8BC(&qword_10001C240, &qword_100012F88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001004C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E8BC(&qword_10001C248, &qword_100012F90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100010180(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000E8BC(&qword_10001C250, &qword_100012F98);
  v10 = *(sub_1000121A8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000121A8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100010358(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100012728();
  sub_100012448();
  v6 = sub_100012748();

  return sub_1000108E4(a1, a2, v6);
}

uint64_t sub_1000103D0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10001047C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000E8BC(&qword_10001C238, &qword_100012F80);
  v36 = a2;
  result = sub_1000125C8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100011500(v25, v37);
      }

      else
      {
        sub_100011614(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_100012728();
      sub_100012448();
      result = sub_100012748();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100011500(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100010734(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100012538() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_100012728();

      sub_100012448();
      v14 = sub_100012748();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000108E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100012698())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10001099C()
{
  v1 = v0;
  sub_10000E8BC(&qword_10001C238, &qword_100012F80);
  v2 = *v0;
  v3 = sub_1000125B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100011614(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100011500(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100010B40()
{
  v0 = sub_1000126A8();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100010B94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7341657069636572 && a2 == 0xEE00676E69727453;
  if (v4 || (sub_100012698() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E4F6E7572 && a2 == 0xE700000000000000 || (sub_100012698() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F69676572 && a2 == 0xE700000000000000 || (sub_100012698() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x45736E6F69676572 && a2 == 0xEE006564756C6378 || (sub_100012698() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_100012698();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100010D54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000E8BC(&qword_10001C188, &qword_100012EF8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_100011040(a1, a1[3]);
  sub_100011084();
  sub_100012788();
  if (v2)
  {
    return sub_1000111D0(a1);
  }

  LOBYTE(v25) = 0;
  v11 = sub_100012618();
  v13 = v12;
  v23 = v11;
  LOBYTE(v25) = 1;
  v21 = sub_100012628();
  sub_10000E8BC(&qword_10001C168, &qword_100012EE0);
  v24 = 2;
  v22 = sub_1000110D8(&qword_10001C190);
  sub_100012608();
  v14 = v25;
  v24 = 3;
  sub_100012608();
  v22 = v25;
  LOBYTE(v25) = 4;
  v15 = sub_1000125F8();
  v20 = v16;
  v17 = v15;
  (*(v6 + 8))(v9, v5);
  result = sub_1000111D0(a1);
  *a2 = v23;
  *(a2 + 8) = v13;
  *(a2 + 16) = v21 & 1;
  v19 = v22;
  *(a2 + 24) = v14;
  *(a2 + 32) = v19;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20 & 1;
  return result;
}

void *sub_100011040(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100011084()
{
  result = qword_10001C550[0];
  if (!qword_10001C550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10001C550);
  }

  return result;
}

uint64_t sub_1000110D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000ED60(&qword_10001C168, &qword_100012EE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011144(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10001117C()
{
  result = qword_10001C1C0;
  if (!qword_10001C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1C0);
  }

  return result;
}

uint64_t sub_1000111D0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10001121C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011254()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001128C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100012698() & 1;
  }
}

uint64_t sub_1000112E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000124D8();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10000F460(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10001137C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E8BC(&qword_10001C238, &qword_100012F80);
    v3 = sub_1000125D8();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011AE0(v4, &v13, &qword_10001C200, &qword_100012F58);
      v5 = v13;
      v6 = v14;
      result = sub_100010358(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100011500(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000114AC()
{
  result = qword_10001C1E0;
  if (!qword_10001C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1E0);
  }

  return result;
}

_OWORD *sub_100011500(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100011510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E8BC(&qword_10001C230, &qword_100012F78);
    v3 = sub_1000125D8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100010358(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_100011614(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100011680()
{
  result = qword_10001C210;
  if (!qword_10001C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C210);
  }

  return result;
}

uint64_t sub_1000116D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100011728(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000ED60(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011770()
{
  v1 = sub_10000E8BC(&qword_10001C228, &qword_100012F70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100011804(uint64_t a1)
{
  v2 = *(sub_10000E8BC(&qword_10001C228, &qword_100012F70) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  if (a1)
  {
    swift_errorRetain();
    if (qword_10001C2A0 != -1)
    {
      swift_once();
    }

    v4 = sub_100012388();
    sub_100011144(v4, qword_10001CA80);
    swift_errorRetain();
    v5 = sub_100012368();
    v6 = sub_1000124F8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Found error: %@", v7, 0xCu);
      sub_100011BC0(v8, &qword_10001C208, &qword_100012F60);
    }

    sub_10000E8BC(&qword_10001C228, &qword_100012F70);
    sub_1000124C8();
  }

  else
  {
    if (qword_10001C2A0 != -1)
    {
      swift_once();
    }

    v11 = sub_100012388();
    sub_100011144(v11, qword_10001CA80);
    v12 = sub_100012368();
    v13 = sub_1000124F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "error was nil", v14, 2u);
    }

    sub_10000E8BC(&qword_10001C228, &qword_100012F70);
    return sub_1000124C8();
  }
}

uint64_t sub_100011AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011AE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000E8BC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011B48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000116D4(a1, a2);
  }

  return a1;
}

uint64_t *sub_100011B5C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100011BC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000E8BC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppStoreEvalLighthouseWorkerErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStoreEvalLighthouseWorkerErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreEvalLighthouseWorkerConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStoreEvalLighthouseWorkerConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100011EEC()
{
  result = qword_10001C660[0];
  if (!qword_10001C660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10001C660);
  }

  return result;
}

unint64_t sub_100011F44()
{
  result = qword_10001C280;
  if (!qword_10001C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C280);
  }

  return result;
}

unint64_t sub_100011F9C()
{
  result = qword_10001C288;
  if (!qword_10001C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C288);
  }

  return result;
}

unint64_t sub_100011FF4()
{
  result = qword_10001C290;
  if (!qword_10001C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C290);
  }

  return result;
}

unint64_t sub_100012050()
{
  result = qword_10001C9F0;
  if (!qword_10001C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9F0);
  }

  return result;
}

unint64_t sub_1000120A8()
{
  result = qword_10001C9F8[0];
  if (!qword_10001C9F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10001C9F8);
  }

  return result;
}