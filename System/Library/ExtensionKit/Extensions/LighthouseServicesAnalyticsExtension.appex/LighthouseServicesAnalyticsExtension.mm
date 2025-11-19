uint64_t sub_1000014F0()
{
  v0 = sub_10000A2D0();
  sub_10000997C(v0, qword_100014950);
  sub_100006AA0(v0, qword_100014950);
  return sub_10000A2C0();
}

id static ACAccount.activeAccount.getter()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  return v1;
}

unint64_t sub_1000015D0(char a1)
{
  result = 0x4164696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x656C6C65636E6163;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
    case 18:
      result = 0xD000000000000025;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x6165726C41736168;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
    case 20:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x656D726F666C616DLL;
      break;
    case 15:
      result = 0xD000000000000022;
      break;
    case 16:
      result = 0xD00000000000002DLL;
      break;
    case 17:
      result = 0xD00000000000002ELL;
      break;
    case 19:
      result = 0x6552617461446F6ELL;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_1000018C0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000015D0(*a1);
  v5 = v4;
  if (v3 == sub_1000015D0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000A590();
  }

  return v8 & 1;
}

Swift::Int sub_100001948()
{
  v1 = *v0;
  sub_10000A600();
  sub_1000015D0(v1);
  sub_10000A3A0();

  return sub_10000A620();
}

uint64_t sub_1000019AC()
{
  sub_1000015D0(*v0);
  sub_10000A3A0();
}

Swift::Int sub_100001A00()
{
  v1 = *v0;
  sub_10000A600();
  sub_1000015D0(v1);
  sub_10000A3A0();

  return sub_10000A620();
}

uint64_t sub_100001A60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100007958();
  *a2 = result;
  return result;
}

unint64_t sub_100001A90@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000015D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100001AE0()
{
  v1 = *v0;
  sub_10000A600();
  sub_10000A610(v1);
  return sub_10000A620();
}

Swift::Int sub_100001B54()
{
  v1 = *v0;
  sub_10000A600();
  sub_10000A610(v1);
  return sub_10000A620();
}

uint64_t sub_100001B98()
{
  v1 = *v0;
  v2 = 0x6E656B6F74;
  v3 = 0x65636E4F6E7572;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x726F745370696B73;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7972657571;
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

uint64_t sub_100001C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000079AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100001C7C(uint64_t a1)
{
  v2 = sub_100009DD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001CB8(uint64_t a1)
{
  v2 = sub_100009DD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001CF4(void *a1)
{
  v3 = v1;
  v5 = sub_100006900(&qword_100014170, &qword_10000AEA0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_100009D90(a1, a1[3]);
  sub_100009DD4();
  sub_10000A670();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  sub_10000A570();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v18) = 1;
    sub_10000A570();
    v15 = *(v3 + 32);
    LOBYTE(v18) = 2;
    sub_10000A550();
    v18 = v3[5];
    HIBYTE(v17) = 3;
    sub_100006900(&qword_100014068, &qword_10000AC08);
    sub_100009E74(&qword_100014178);
    sub_10000A560();
    v18 = v3[6];
    HIBYTE(v17) = 4;
    sub_10000A560();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_100001F60@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100007B64(a1, v6);
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

uint64_t sub_100001FC8(uint64_t a1)
{
  v1[27] = a1;
  v2 = *(*(sub_100006900(&qword_100014090, &qword_10000AC30) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v3 = sub_100006900(&qword_100014098, &qword_10000AC38);
  v1[29] = v3;
  v4 = *(v3 - 8);
  v1[30] = v4;
  v5 = *(v4 + 64) + 15;
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000020CC, 0, 0);
}

uint64_t sub_1000020CC()
{
  if (qword_100014180 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_10000A2D0();
  v0[32] = sub_100006AA0(v2, qword_100014950);
  v3 = v1;
  v4 = sub_10000A2B0();
  v5 = sub_10000A410();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context in shouldRun: %@", v7, 0xCu);
    sub_100008F94(v8, &qword_1000140C0, &qword_10000AC48);
  }

  v10 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v11 = swift_task_alloc();
  v0[33] = v11;
  v12 = sub_100006824();
  v13 = sub_100006AD8();
  v14 = sub_100006B2C();
  *v11 = v0;
  v11[1] = sub_1000022BC;
  v16 = v0[27];
  v15 = v0[28];

  return MLHostExtension.loadConfig<A>(context:)(v15, v16, &type metadata for LighthouseServicesAnalyticsExtension, &type metadata for AnalyticsExtensionConfig, v12, v13, v14);
}

uint64_t sub_1000022BC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000023B8, 0, 0);
}

uint64_t sub_1000023B8()
{
  v119 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 256);
    sub_100008F94(v3, &qword_100014090, &qword_10000AC30);
    v5 = sub_10000A2B0();
    v6 = sub_10000A420();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to load config, exiting early.", v7, 2u);
    }

    v117 = &type metadata for AnalyticsExtensionError;
    v118 = sub_100006B80();
    LOBYTE(v116[0]) = 1;
    v8 = objc_allocWithZone(sub_10000A1D0());
    v9 = sub_10000A1B0();
    goto LABEL_28;
  }

  (*(v2 + 32))(*(v0 + 248), v3, v1);
  sub_10000A200();
  v10 = *(v0 + 24);
  v11 = *(v0 + 40);
  v12 = *(v0 + 56);
  v13 = *(v0 + 64);

  sub_10000A200();
  v14 = *(v0 + 80);
  v15 = *(v0 + 96);
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);

  if (v12)
  {
    if (v17)
    {
      v18 = *(v0 + 256);

      v19 = sub_10000A2B0();
      v20 = sub_10000A420();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Attempting to use both allowStorefronts and skipStorefronts, exiting early.", v21, 2u);
      }

      v23 = *(v0 + 240);
      v22 = *(v0 + 248);
      v24 = *(v0 + 232);

      v117 = &type metadata for AnalyticsExtensionError;
      v118 = sub_100006B80();
      v25 = 8;
      goto LABEL_26;
    }

    v43 = [objc_opt_self() ams_sharedAccountStore];
    v44 = [v43 ams_activeiTunesAccount];

    if (v44)
    {
      v45 = [v44 ams_storefront];

      if (v45)
      {
        v46 = *(v0 + 256);
        v47 = sub_10000A380();
        v49 = v48;

        sub_100007ECC(6, v47, v49, v50);

        v51 = sub_10000A390();
        v53 = v52;

        *(v0 + 200) = v51;
        *(v0 + 208) = v53;
        v54 = swift_task_alloc();
        *(v54 + 16) = v0 + 200;
        v55 = sub_10000717C(sub_10000A144, v54, v12);

        v38 = sub_10000A2B0();
        if (v55)
        {
          v56 = sub_10000A410();

          if (os_log_type_enabled(v38, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v116[0] = v58;
            *v57 = 136315138;
            v59 = sub_100006BD4(v51, v53, v116);

            *(v57 + 4) = v59;
            _os_log_impl(&_mh_execute_header, v38, v56, "Device's storefront %s is in the allow list.", v57, 0xCu);
            sub_100009E28(v58);

LABEL_33:

            goto LABEL_39;
          }

          goto LABEL_38;
        }

        v75 = sub_10000A420();

        if (os_log_type_enabled(v38, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v116[0] = v77;
          *v76 = 136315138;
          v78 = sub_100006BD4(v51, v53, v116);

          *(v76 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v38, v75, "Storefront %s is not in the allow list, exiting early.", v76, 0xCu);
          sub_100009E28(v77);
        }

        else
        {
        }

        v23 = *(v0 + 240);
        v22 = *(v0 + 248);
        v24 = *(v0 + 232);
        v117 = &type metadata for AnalyticsExtensionError;
        v118 = sub_100006B80();
        v25 = 9;
        goto LABEL_26;
      }
    }

    v61 = *(v0 + 256);
    goto LABEL_23;
  }

  if (v17)
  {
    v26 = [objc_opt_self() ams_sharedAccountStore];
    v27 = [v26 ams_activeiTunesAccount];

    if (v27)
    {
      v28 = [v27 ams_storefront];

      if (v28)
      {
        v29 = *(v0 + 256);
        v30 = sub_10000A380();
        v32 = v31;

        sub_100007ECC(6, v30, v32, v33);

        v34 = sub_10000A390();
        v36 = v35;

        *(v0 + 184) = v34;
        *(v0 + 192) = v36;
        v37 = swift_task_alloc();
        *(v37 + 16) = v0 + 184;
        LOBYTE(v30) = sub_10000717C(sub_1000099E0, v37, v17);

        v38 = sub_10000A2B0();
        if ((v30 & 1) == 0)
        {
          v71 = sub_10000A410();

          if (os_log_type_enabled(v38, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v116[0] = v73;
            *v72 = 136315138;
            v74 = sub_100006BD4(v34, v36, v116);

            *(v72 + 4) = v74;
            _os_log_impl(&_mh_execute_header, v38, v71, "Device's storefront %s is not in the skip list.", v72, 0xCu);
            sub_100009E28(v73);

            goto LABEL_33;
          }

LABEL_38:

          goto LABEL_39;
        }

        v39 = sub_10000A420();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v116[0] = v41;
          *v40 = 136315138;
          v42 = sub_100006BD4(v34, v36, v116);

          *(v40 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v38, v39, "Storefront %s is in the skip list, exiting early.", v40, 0xCu);
          sub_100009E28(v41);
        }

        else
        {
        }

        v23 = *(v0 + 240);
        v22 = *(v0 + 248);
        v24 = *(v0 + 232);
        v117 = &type metadata for AnalyticsExtensionError;
        v118 = sub_100006B80();
        v25 = 10;
LABEL_26:
        LOBYTE(v116[0]) = v25;
        v65 = objc_allocWithZone(sub_10000A1D0());
        v66 = sub_10000A1B0();
LABEL_27:
        v9 = v66;
        (*(v23 + 8))(v22, v24);
        goto LABEL_28;
      }
    }

    v60 = *(v0 + 256);
LABEL_23:

    v62 = sub_10000A2B0();
    v63 = sub_10000A420();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Unable to determine storefront, exiting early.", v64, 2u);
    }

    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v24 = *(v0 + 232);

    v117 = &type metadata for AnalyticsExtensionError;
    v118 = sub_100006B80();
    v25 = 7;
    goto LABEL_26;
  }

LABEL_39:
  v79 = *(v0 + 248);
  v80 = *(v0 + 232);
  sub_10000A200();
  v81 = *(v0 + 136);
  v82 = *(v0 + 152);
  v83 = *(v0 + 160);
  v84 = *(v0 + 168);
  v85 = *(v0 + 176);

  if (v83 != 2 && (v83 & 1) == 0)
  {
    goto LABEL_50;
  }

  v86 = objc_allocWithZone(NSUserDefaults);
  v87 = sub_10000A370();
  v88 = [v86 initWithSuiteName:v87];

  if (!v88)
  {
    v105 = *(v0 + 256);
    v106 = *(v0 + 216);
    v107 = sub_10000A2B0();
    v108 = sub_10000A420();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = *(v0 + 216);
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v116[0] = v111;
      *v110 = 136315138;
      v112 = sub_10000A270();
      v114 = sub_100006BD4(v112, v113, v116);

      *(v110 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v107, v108, "Failed to instantiate userDefaults with suiteName: %s, exiting early.", v110, 0xCu);
      sub_100009E28(v111);
    }

    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v24 = *(v0 + 232);
    v117 = &type metadata for AnalyticsExtensionError;
    v118 = sub_100006B80();
    v25 = 2;
    goto LABEL_26;
  }

  v89 = *(v0 + 216);
  sub_10000A270();
  v90 = sub_10000A370();

  LODWORD(v89) = [v88 BOOLForKey:v90];

  if (!v89)
  {

LABEL_50:
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v24 = *(v0 + 232);
    v115 = objc_allocWithZone(sub_10000A1D0());
    v66 = sub_10000A1C0();
    goto LABEL_27;
  }

  v91 = *(v0 + 256);
  v92 = *(v0 + 216);
  v93 = sub_10000A2B0();
  v94 = sub_10000A410();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = *(v0 + 216);
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v116[0] = v97;
    *v96 = 136315138;
    v98 = sub_10000A270();
    v100 = sub_100006BD4(v98, v99, v116);

    *(v96 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v93, v94, "%s has already run, exiting early.", v96, 0xCu);
    sub_100009E28(v97);
  }

  v102 = *(v0 + 240);
  v101 = *(v0 + 248);
  v103 = *(v0 + 232);
  v117 = &type metadata for AnalyticsExtensionError;
  v118 = sub_100006B80();
  LOBYTE(v116[0]) = 11;
  v104 = objc_allocWithZone(sub_10000A1D0());
  v9 = sub_10000A1B0();

  (*(v102 + 8))(v101, v103);
LABEL_28:
  v67 = *(v0 + 248);
  v68 = *(v0 + 224);

  v69 = *(v0 + 8);

  return v69(v9);
}

uint64_t sub_100003058(uint64_t a1)
{
  v1[32] = a1;
  v2 = sub_10000A2E0();
  v1[33] = v2;
  v3 = *(v2 - 8);
  v1[34] = v3;
  v4 = *(v3 + 64) + 15;
  v1[35] = swift_task_alloc();
  v5 = sub_10000A400();
  v1[36] = v5;
  v6 = *(v5 - 8);
  v1[37] = v6;
  v7 = *(v6 + 64) + 15;
  v1[38] = swift_task_alloc();
  v8 = sub_10000A180();
  v1[39] = v8;
  v9 = *(v8 - 8);
  v1[40] = v9;
  v10 = *(v9 + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v11 = sub_10000A190();
  v1[43] = v11;
  v12 = *(v11 - 8);
  v1[44] = v12;
  v13 = *(v12 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v14 = sub_10000A490();
  v1[48] = v14;
  v15 = *(v14 - 8);
  v1[49] = v15;
  v16 = *(v15 + 64) + 15;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v17 = sub_10000A4B0();
  v1[52] = v17;
  v18 = *(v17 - 8);
  v1[53] = v18;
  v19 = *(v18 + 64) + 15;
  v1[54] = swift_task_alloc();
  v20 = *(*(sub_100006900(&qword_100014088, &qword_10000AC28) - 8) + 64) + 15;
  v1[55] = swift_task_alloc();
  v21 = sub_10000A290();
  v1[56] = v21;
  v22 = *(v21 - 8);
  v1[57] = v22;
  v23 = *(v22 + 64) + 15;
  v1[58] = swift_task_alloc();
  v24 = sub_10000A240();
  v1[59] = v24;
  v25 = *(v24 - 8);
  v1[60] = v25;
  v26 = *(v25 + 64) + 15;
  v1[61] = swift_task_alloc();
  v27 = sub_10000A310();
  v1[62] = v27;
  v28 = *(v27 - 8);
  v1[63] = v28;
  v29 = *(v28 + 64) + 15;
  v1[64] = swift_task_alloc();
  v30 = *(*(sub_100006900(&qword_100014090, &qword_10000AC30) - 8) + 64) + 15;
  v1[65] = swift_task_alloc();
  v31 = sub_100006900(&qword_100014098, &qword_10000AC38);
  v1[66] = v31;
  v32 = *(v31 - 8);
  v1[67] = v32;
  v33 = *(v32 + 64) + 15;
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();

  return _swift_task_switch(sub_10000350C, 0, 0);
}

uint64_t sub_10000350C()
{
  if (qword_100014180 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = sub_10000A2D0();
  v0[70] = sub_100006AA0(v2, qword_100014950);
  v3 = v1;
  v4 = sub_10000A2B0();
  v5 = sub_10000A410();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[32];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context in doWork: %@", v7, 0xCu);
    sub_100008F94(v8, &qword_1000140C0, &qword_10000AC48);
  }

  v10 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v11 = swift_task_alloc();
  v0[71] = v11;
  v12 = sub_100006824();
  v13 = sub_100006AD8();
  v14 = sub_100006B2C();
  *v11 = v0;
  v11[1] = sub_100003700;
  v15 = v0[65];
  v16 = v0[32];

  return MLHostExtension.loadConfig<A>(context:)(v15, v16, &type metadata for LighthouseServicesAnalyticsExtension, &type metadata for AnalyticsExtensionConfig, v12, v13, v14);
}

uint64_t sub_100003700()
{
  v1 = *(*v0 + 568);
  v3 = *v0;

  return _swift_task_switch(sub_1000037FC, 0, 0);
}

uint64_t sub_1000037FC()
{
  v108 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = v0[70];
  if (v4 == 1)
  {
    sub_100008F94(v3, &qword_100014090, &qword_10000AC30);
    v6 = sub_10000A2B0();
    v7 = sub_10000A420();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to load config, exiting early.", v8, 2u);
    }

    v106 = &type metadata for AnalyticsExtensionError;
    v107 = sub_100006B80();
    LOBYTE(v105) = 1;
    v9 = objc_allocWithZone(sub_10000A1D0());
    v102 = sub_10000A1B0();
LABEL_17:
    v61 = v0[69];
    v62 = v0[68];
    v63 = v0[65];
    v64 = v0[64];
    v65 = v0[61];
    v66 = v0[58];
    v67 = v0[54];
    v68 = v0[55];
    v70 = v0[50];
    v69 = v0[51];
    v92 = v0[47];
    v93 = v0[46];
    v94 = v0[45];
    v95 = v0[42];
    v97 = v0[41];
    v99 = v0[38];
    v101 = v0[35];

    v71 = v0[1];

    return v71(v102);
  }

  v10 = v0[69];
  v11 = v0[68];
  (*(v1 + 32))(v10, v3, v2);
  (*(v1 + 16))(v11, v10, v2);
  v12 = sub_10000A2B0();
  v13 = sub_10000A410();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[68];
  v16 = v0[67];
  v17 = v0[66];
  if (v14)
  {
    v18 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v105 = v103;
    *v18 = 136315138;
    sub_100009698(&qword_1000140D8, &qword_100014098, &qword_10000AC38);
    v19 = sub_10000A580();
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v15, v17);
    v23 = sub_100006BD4(v19, v21, &v105);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "Configuration: %s", v18, 0xCu);
    sub_100009E28(v103);
  }

  else
  {

    v22 = *(v16 + 8);
    v22(v15, v17);
  }

  v0[72] = v22;
  v24 = v0[64];
  sub_10000A300();
  v25 = [objc_opt_self() ams_sharedAccountStore];
  v26 = [v25 ams_activeiTunesAccount];

  if (!v26 || (v27 = [v26 ams_DSID], v26, !v27))
  {
    v50 = v0[70];
    v51 = sub_10000A2B0();
    v52 = sub_10000A420();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Invalid AMS DSID, exiting early.", v53, 2u);
    }

    v54 = v0[69];
    v55 = v0[67];
    v56 = v0[66];
    v58 = v0[63];
    v57 = v0[64];
    v59 = v0[62];

    v106 = &type metadata for AnalyticsExtensionError;
    v107 = sub_100006B80();
    LOBYTE(v105) = 3;
    v60 = objc_allocWithZone(sub_10000A1D0());
    v102 = sub_10000A1B0();
    (*(v58 + 8))(v57, v59);
    v22(v54, v56);
    goto LABEL_17;
  }

  v28 = v0[69];
  v29 = v0[66];
  v30 = v0[60];
  v98 = v22;
  v100 = v0[59];
  v31 = v0[57];
  v32 = v0[58];
  v34 = v0[55];
  v33 = v0[56];
  v35 = [v27 stringValue];

  v96 = sub_10000A380();
  v37 = v36;

  v104 = v37;
  v0[73] = v37;
  sub_10000A210();
  sub_10000A280();
  (*(v31 + 8))(v32, v33);
  if ((*(v30 + 48))(v34, 1, v100) == 1)
  {
    v38 = v0[70];
    v39 = v0[55];

    sub_100008F94(v39, &qword_100014088, &qword_10000AC28);
    v40 = sub_10000A2B0();
    v41 = sub_10000A420();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Couldn't find dediscoParameters, exiting early.", v42, 2u);
    }

    v43 = v0[69];
    v44 = v0[67];
    v45 = v0[66];
    v47 = v0[63];
    v46 = v0[64];
    v48 = v0[62];

    v106 = &type metadata for AnalyticsExtensionError;
    v107 = sub_100006B80();
    LOBYTE(v105) = 0;
    v49 = objc_allocWithZone(sub_10000A1D0());
    v102 = sub_10000A1B0();
    (*(v47 + 8))(v46, v48);
    v98(v43, v45);
    goto LABEL_17;
  }

  v73 = v0[69];
  v74 = v0[66];
  v75 = v0[54];
  v76 = v0[51];
  (*(v0[60] + 32))(v0[61], v0[55], v0[59]);
  v77 = sub_10000A220();
  v78 = sub_100008144(v77);
  v0[74] = v78;

  sub_10000A4A0();
  sub_10000A470();
  sub_10000A200();
  v79 = v0[2];
  v80 = v0[3];
  v0[75] = v80;
  v81 = v0[5];
  v82 = v0[7];
  v83 = v0[8];

  sub_10000A200();
  v84 = v0[10];
  v85 = v0[11];
  v86 = v0[12];
  v0[76] = v86;
  v87 = v0[14];
  v88 = v0[15];

  v89 = async function pointer to AnalyticsWorker.runQuery(token:userId:query:keysToFieldTypes:)[1];
  v90 = swift_task_alloc();
  v0[77] = v90;
  *v90 = v0;
  v90[1] = sub_100004048;
  v91 = v0[64];

  return AnalyticsWorker.runQuery(token:userId:query:keysToFieldTypes:)(v79, v80, v96, v104, v85, v86, v78);
}

uint64_t sub_100004048(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 616);
  v6 = *v2;
  v4[78] = a1;
  v4[79] = v1;

  v7 = v3[73];
  if (v1)
  {
    v8 = v4[76];
    v9 = v4[75];
    v10 = v4[74];

    v11 = sub_1000051B8;
  }

  else
  {
    v12 = v4[76];
    v13 = v4[75];

    v11 = sub_1000041C8;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000041C8()
{
  v195 = v0;
  v1 = v0[70];
  v2 = v0[54];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[48];
  v6 = v0[49];
  sub_10000A470();
  sub_10000A480();
  v185 = *(v6 + 8);
  v185(v4, v5);
  v7 = sub_10000A2B0();
  v8 = sub_10000A410();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v191 = v10;
    *v9 = 136315138;
    v11 = sub_10000A690();
    v13 = sub_100006BD4(v11, v12, &v191);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Duration: %s", v9, 0xCu);
    sub_100009E28(v10);
  }

  result = sub_10000A680();
  v15 = 1000 * result;
  if ((result * 1000) >> 64 != (1000 * result) >> 63)
  {
    goto LABEL_49;
  }

  result = sub_10000A680();
  v17 = v16 * 1.0e-15;
  if (COERCE__INT64(fabs(v17)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v18 = v15 + v17;
  if (__OFADD__(v15, v17))
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v19 = v0[53];
  v173 = v0[54];
  v178 = v0[78];
  v21 = v0[51];
  v20 = v0[52];
  v22 = v0[48];
  v23 = v0[32];
  v24 = sub_10000A370();
  v25 = swift_allocObject();
  *(v25 + 16) = v18;
  *(v25 + 24) = v23;
  v0[27] = sub_100009080;
  v0[28] = v25;
  v0[23] = _NSConcreteStackBlock;
  v0[24] = 1107296256;
  v0[25] = sub_1000059A0;
  v0[26] = &unk_100010B18;
  v26 = _Block_copy(v0 + 23);
  v27 = v0[28];
  v28 = v23;

  AnalyticsSendEventLazy();
  _Block_release(v26);

  v185(v21, v22);
  (*(v19 + 8))(v173, v20);
  v29 = *(v178 + 16);
  if (!v29)
  {
    v73 = v0[78];
    v74 = v0[74];
    v75 = v0[70];

    v76 = sub_10000A2B0();
    v77 = sub_10000A420();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "No data was returned from the query, exiting early", v78, 2u);
    }

    v180 = v0[69];
    v187 = v0[72];
    v79 = v0[67];
    v80 = v0[66];
    v82 = v0[63];
    v81 = v0[64];
    v84 = v0[61];
    v83 = v0[62];
    v86 = v0[59];
    v85 = v0[60];

    v193 = &type metadata for AnalyticsExtensionError;
    v194 = sub_100006B80();
    v87 = 19;
    goto LABEL_33;
  }

  v30 = v0[69];
  v31 = v0[66];
  sub_10000A200();
  v32 = v0[17];
  v33 = v0[19];
  v34 = *(v0 + 160);
  v35 = v0[21];
  v36 = v0[22];

  if (v34 == 2 || (v34 & 1) != 0)
  {
    v37 = objc_allocWithZone(NSUserDefaults);
    v38 = sub_10000A370();
    v39 = [v37 initWithSuiteName:v38];

    if (v39)
    {
      v40 = v0[70];
      v41 = v0[32];
      isa = sub_10000A3F0().super.super.isa;
      sub_10000A270();
      v43 = sub_10000A370();

      [v39 setValue:isa forKey:v43];

      v44 = v41;
      v45 = sub_10000A2B0();
      v46 = sub_10000A410();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = v0[32];
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v191 = v49;
        *v48 = 136315138;
        v50 = sub_10000A270();
        v52 = sub_100006BD4(v50, v51, &v191);

        *(v48 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v45, v46, "Execution state saved for task: %s", v48, 0xCu);
        sub_100009E28(v49);
      }

      goto LABEL_15;
    }

    v103 = v0[78];
    v104 = v0[74];
    v105 = v0[70];
    v106 = v0[32];

    v107 = v106;
    v108 = sub_10000A2B0();
    v109 = sub_10000A420();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = v0[32];
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v191 = v112;
      *v111 = 136315138;
      v113 = sub_10000A270();
      v115 = sub_100006BD4(v113, v114, &v191);

      *(v111 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v108, v109, "Failed to instantiate userDefaults with suiteName: %s, exiting early.", v111, 0xCu);
      sub_100009E28(v112);
    }

    v180 = v0[69];
    v187 = v0[72];
    v116 = v0[67];
    v80 = v0[66];
    v82 = v0[63];
    v81 = v0[64];
    v84 = v0[61];
    v83 = v0[62];
    v86 = v0[59];
    v85 = v0[60];
    v193 = &type metadata for AnalyticsExtensionError;
    v194 = sub_100006B80();
    v87 = 2;
LABEL_33:
    LOBYTE(v191) = v87;
    v117 = objc_allocWithZone(sub_10000A1D0());
    v165 = sub_10000A1B0();
    (*(v85 + 8))(v84, v86);
    (*(v82 + 8))(v81, v83);
    v187(v180, v80);
    goto LABEL_34;
  }

LABEL_15:
  v53 = v0[78];
  v54 = v0[32];
  if (os_variant_has_internal_diagnostics())
  {
    v55 = 1001;
  }

  else
  {
    v55 = 5001;
  }

  v191 = 0;
  v192 = 0xE000000000000000;
  sub_10000A450(70);
  v197._countAndFlagsBits = 0xD000000000000041;
  v197._object = 0x800000010000B330;
  sub_10000A3C0(v197);
  *(v0 + 160) = v55;
  v198._countAndFlagsBits = sub_10000A580();
  sub_10000A3C0(v198);

  v199._countAndFlagsBits = 58;
  v199._object = 0xE100000000000000;
  sub_10000A3C0(v199);
  v200._countAndFlagsBits = sub_10000A270();
  sub_10000A3C0(v200);

  if (!*(v178 + 16))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v56 = v191;
  v57 = v192;
  v58 = v0[79];
  v59 = v0[61];
  v60 = *(v53 + 32);

  sub_1000091F0(v61, v59, v56, v57);
  if (v58)
  {
    v62 = v0[78];
    v63 = v0[74];

    v0[31] = v58;
    swift_errorRetain();
    sub_100006900(&qword_1000140B8, &qword_10000AC40);
    if (swift_dynamicCast())
    {
      v64 = *(v0 + 644);
      if (v64 == 5)
      {
        v179 = v0[69];
        v186 = v0[72];
        v138 = v0[67];
        v174 = v0[66];
        v66 = v0[63];
        v67 = v0[64];
        v69 = v0[61];
        v68 = v0[62];
        v71 = v0[59];
        v70 = v0[60];

        v193 = &type metadata for AnalyticsExtensionError;
        v194 = sub_100006B80();
        v72 = 5;
        goto LABEL_43;
      }

      if (v64 == 4)
      {
        v179 = v0[69];
        v186 = v0[72];
        v65 = v0[67];
        v174 = v0[66];
        v66 = v0[63];
        v67 = v0[64];
        v69 = v0[61];
        v68 = v0[62];
        v71 = v0[59];
        v70 = v0[60];

        v193 = &type metadata for AnalyticsExtensionError;
        v194 = sub_100006B80();
        v72 = 4;
LABEL_43:
        LOBYTE(v191) = v72;
        v139 = objc_allocWithZone(sub_10000A1D0());
        v165 = sub_10000A1B0();
        (*(v70 + 8))(v69, v71);
        (*(v66 + 8))(v67, v68);
        v186(v179, v174);
        v140 = v0[31];

        goto LABEL_34;
      }
    }

    v88 = v0[70];
    v89 = v0[31];

    swift_errorRetain();
    v90 = sub_10000A2B0();
    v91 = sub_10000A420();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v92 = 138412290;
      swift_errorRetain();
      v94 = _swift_stdlib_bridgeErrorToNSError();
      *(v92 + 4) = v94;
      *v93 = v94;
      _os_log_impl(&_mh_execute_header, v90, v91, "Encountered error without specific handling logic: %@", v92, 0xCu);
      sub_100008F94(v93, &qword_1000140C0, &qword_10000AC48);
    }

    v181 = v0[69];
    v188 = v0[72];
    v95 = v0[67];
    v175 = v0[66];
    v96 = v0[63];
    v97 = v0[64];
    v99 = v0[61];
    v98 = v0[62];
    v101 = v0[59];
    v100 = v0[60];

    v102 = objc_allocWithZone(sub_10000A1D0());
    v165 = sub_10000A1C0();

    (*(v100 + 8))(v99, v101);
    (*(v96 + 8))(v97, v98);
    v188(v181, v175);
    goto LABEL_34;
  }

  if (v29 != 1)
  {
    v129 = (v53 + 40);
    v130 = 1;
    while (v130 < *(v178 + 16))
    {
      v131 = v0[61];
      v132 = *v129;

      sub_1000091F0(v133, v131, v56, v57);

      ++v130;
      ++v129;
      if (v29 == v130)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_48;
  }

LABEL_41:
  v134 = v0[78];
  v135 = v0[74];
  v136 = v0[46];
  v137 = v0[41];

  sub_10000A170();
  v141 = v0[70];
  v142 = v0[47];
  v144 = v0[44];
  v143 = v0[45];
  v145 = v0[43];
  (*(v144 + 32))(v142, v0[46], v145);
  (*(v144 + 16))(v143, v142, v145);
  v146 = sub_10000A2B0();
  v147 = sub_10000A410();
  v148 = os_log_type_enabled(v146, v147);
  v149 = v0[44];
  v150 = v0[45];
  v151 = v0[43];
  if (v148)
  {
    v152 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v191 = v183;
    *v152 = 136315138;
    sub_100009640();
    v153 = sub_10000A580();
    v155 = v154;
    v190 = *(v149 + 8);
    v190(v150, v151);
    v156 = sub_100006BD4(v153, v155, &v191);

    *(v152 + 4) = v156;
    _os_log_impl(&_mh_execute_header, v146, v147, "\n %s", v152, 0xCu);
    sub_100009E28(v183);
  }

  else
  {

    v190 = *(v149 + 8);
    v190(v150, v151);
  }

  v177 = v0[69];
  v184 = v0[72];
  v170 = v0[67];
  v172 = v0[66];
  v157 = v0[63];
  v168 = v0[64];
  v159 = v0[61];
  v158 = v0[62];
  v161 = v0[59];
  v160 = v0[60];
  v162 = v0[47];
  v163 = v0[43];
  v164 = objc_allocWithZone(sub_10000A1D0());
  v165 = sub_10000A1C0();
  v190(v162, v163);
  (*(v160 + 8))(v159, v161);
  (*(v157 + 8))(v168, v158);
  v184(v177, v172);
LABEL_34:
  v118 = v0[69];
  v119 = v0[68];
  v120 = v0[65];
  v121 = v0[64];
  v122 = v0[61];
  v123 = v0[58];
  v124 = v0[54];
  v125 = v0[55];
  v127 = v0[50];
  v126 = v0[51];
  v166 = v0[47];
  v167 = v0[46];
  v169 = v0[45];
  v171 = v0[42];
  v176 = v0[41];
  v182 = v0[38];
  v189 = v0[35];

  v128 = v0[1];

  return v128(v165);
}

uint64_t sub_1000051B8()
{
  v1 = v0[79];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[52];
  v5 = v0[38];
  v6 = v0[36];
  (*(v0[49] + 8))(v0[51], v0[48]);
  (*(v3 + 8))(v2, v4);
  v0[29] = v1;
  swift_errorRetain();
  sub_100006900(&qword_1000140B8, &qword_10000AC40);
  v7 = swift_dynamicCast();
  v8 = v0[79];
  if (v7)
  {
    v101 = v0[69];
    v106 = v0[72];
    v97 = v0[66];
    v9 = v0[63];
    v10 = v0[64];
    v12 = v0[61];
    v11 = v0[62];
    v13 = v0[59];
    v14 = v0[60];
    v15 = v0[37];
    v93 = v0[67];
    v95 = v0[38];
    v91 = v0[36];

    sub_100006B80();
    v16 = objc_allocWithZone(sub_10000A1D0());
    v110 = sub_10000A1B0();
    (*(v14 + 8))(v12, v13);
    (*(v9 + 8))(v10, v11);
    v106(v101, v97);
    (*(v15 + 8))(v95, v91);
    v17 = v0[29];
LABEL_29:

    goto LABEL_30;
  }

  v18 = v0[35];
  v19 = v0[33];
  v20 = v0[29];

  v0[30] = v8;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v21 = (*(v0[34] + 88))(v0[35], v0[33]);
    if (v21 == enum case for AnalyticsWorkerError.encounteredErrorDuringQuery(_:))
    {
      v22 = v0[79];
      v24 = v0[34];
      v23 = v0[35];
      v25 = v0[33];

      (*(v24 + 96))(v23, v25);
      v26 = *v23;
      if (*v23 <= 500)
      {
        if (v26 == 491)
        {
          v27 = 17;
          goto LABEL_25;
        }

        if (v26 == 492)
        {
          v27 = 16;
          goto LABEL_25;
        }
      }

      else
      {
        switch(v26)
        {
          case 501:
            v27 = 14;
            goto LABEL_25;
          case 514:
            v27 = 18;
            goto LABEL_25;
          case 599:
            v27 = 15;
LABEL_25:
            v62 = v0[70];
            v63 = sub_10000A2B0();
            v64 = sub_10000A420();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              *v65 = 138412290;
              sub_100008FF4();
              swift_allocError();
              *v67 = v27;
              v68 = _swift_stdlib_bridgeErrorToNSError();
              *(v65 + 4) = v68;
              *v66 = v68;
              _os_log_impl(&_mh_execute_header, v63, v64, "Encountered error when querying connection: %@. Exiting early.", v65, 0xCu);
              sub_100008F94(v66, &qword_1000140C0, &qword_10000AC48);
            }

            v104 = v0[69];
            v107 = v0[72];
            v69 = v0[67];
            v99 = v0[66];
            v71 = v0[63];
            v70 = v0[64];
            v73 = v0[61];
            v72 = v0[62];
            v75 = v0[59];
            v74 = v0[60];

            sub_100006B80();
            v76 = objc_allocWithZone(sub_10000A1D0());
            v110 = sub_10000A1B0();
            (*(v74 + 8))(v73, v75);
            (*(v71 + 8))(v70, v72);
            v43 = v99;
            v42 = v104;
LABEL_28:
            v107(v42, v43);
            v77 = v0[30];
            goto LABEL_29;
        }
      }

      v27 = 13;
      goto LABEL_25;
    }

    if (v21 == enum case for AnalyticsWorkerError.failedToOpenConnection(_:))
    {
      v28 = v0[79];
      v29 = v0[70];

      v30 = sub_10000A2B0();
      v31 = sub_10000A420();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Encountered error when opening connection. Exiting early.", v32, 2u);
      }

      v102 = v0[69];
      v107 = v0[72];
      v33 = v0[67];
      v34 = v0[66];
      v36 = v0[63];
      v35 = v0[64];
      v38 = v0[61];
      v37 = v0[62];
      v40 = v0[59];
      v39 = v0[60];

      sub_100006B80();
      v41 = objc_allocWithZone(sub_10000A1D0());
      v110 = sub_10000A1B0();
      (*(v39 + 8))(v38, v40);
      (*(v36 + 8))(v35, v37);
      v42 = v102;
      v43 = v34;
      goto LABEL_28;
    }

    (*(v0[34] + 8))(v0[35], v0[33]);
  }

  v44 = v0[79];
  v45 = v0[70];
  v46 = v0[30];

  swift_errorRetain();
  v47 = sub_10000A2B0();
  v48 = sub_10000A420();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = v0[79];
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    swift_errorRetain();
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 4) = v52;
    *v51 = v52;
    _os_log_impl(&_mh_execute_header, v47, v48, "Encountered error without specific handling logic: %@", v50, 0xCu);
    sub_100008F94(v51, &qword_1000140C0, &qword_10000AC48);
  }

  v53 = v0[79];
  v103 = v0[69];
  v108 = v0[72];
  v54 = v0[67];
  v98 = v0[66];
  v55 = v0[63];
  v56 = v0[64];
  v58 = v0[61];
  v57 = v0[62];
  v60 = v0[59];
  v59 = v0[60];

  v61 = objc_allocWithZone(sub_10000A1D0());
  v110 = sub_10000A1C0();

  (*(v59 + 8))(v58, v60);
  (*(v55 + 8))(v56, v57);
  v108(v103, v98);
LABEL_30:
  v78 = v0[69];
  v79 = v0[68];
  v80 = v0[65];
  v81 = v0[64];
  v82 = v0[61];
  v83 = v0[58];
  v84 = v0[54];
  v85 = v0[55];
  v87 = v0[50];
  v86 = v0[51];
  v90 = v0[47];
  v92 = v0[46];
  v94 = v0[45];
  v96 = v0[42];
  v100 = v0[41];
  v105 = v0[38];
  v109 = v0[35];

  v88 = v0[1];

  return v88(v110);
}

Class sub_1000059A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10000974C();
    v5.super.isa = sub_10000A330().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_100005A2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100006900(&qword_1000140F8, &qword_10000AC68);
    v2 = sub_10000A500();
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
    sub_1000096E0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000973C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000973C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000973C(v31, v32);
    result = sub_10000A430(v2[5]);
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
    result = sub_10000973C(v32, (v2[7] + 32 * v10));
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

unint64_t sub_100005CF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100006900(&qword_1000140E8, &qword_10000AC58);
    v2 = sub_10000A500();
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
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v25 = *(*(a1 + 56) + 8 * v16);

        sub_100006900(&qword_1000140F0, &qword_10000AC60);
        sub_100006900(&qword_1000140E0, &qword_10000AC50);
        swift_dynamicCast();
        result = sub_100007228(v19, v18);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v18;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v26;

          v8 = v14;
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
          v21 = (v2[6] + 16 * result);
          *v21 = v19;
          v21[1] = v18;
          *(v2[7] + 8 * result) = v26;
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
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

uint64_t sub_100005F28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A138;

  return sub_100001FC8(a1);
}

uint64_t sub_100005FBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100006050;

  return sub_100003058(a1);
}

uint64_t sub_100006050(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10000614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100006230;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100006230()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006324(uint64_t a1)
{
  v2 = sub_100006824();

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100006374()
{
  v1 = sub_10000A650();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v24 + 1) = &type metadata for AnalyticsExtensionConfig;
  v6 = swift_allocObject();
  *&v23 = v6;
  v7 = *(v0 + 16);
  *(v6 + 16) = *v0;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v0 + 32);
  *(v6 + 64) = *(v0 + 48);
  sub_1000068C8(v0, v26);
  sub_10000A630();
  v8 = sub_10000A640();
  (*(v2 + 8))(v5, v1);
  v20[1] = v8;
  sub_10000A4C0();
  sub_10000A510();
  if (*(&v27 + 1))
  {
    v9 = &_swiftEmptyArrayStorage;
    do
    {
      v23 = v26[0];
      v24 = v26[1];
      v25 = v27;
      v10._object = *(&v26[0] + 1);
      if (*(&v26[0] + 1))
      {
        v10._countAndFlagsBits = v23;
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_10000A3C0(v10);
        v28._countAndFlagsBits = 8250;
        v28._object = 0xE200000000000000;
        sub_10000A3C0(v28);
        sub_10000A4D0();
        v11 = v21;
        v12 = v22;
        sub_100008F94(&v23, &qword_100014078, &qword_10000AC10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100006990(0, *(v9 + 2) + 1, 1, v9);
        }

        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        if (v14 >= v13 >> 1)
        {
          v9 = sub_100006990((v13 > 1), v14 + 1, 1, v9);
        }

        *(v9 + 2) = v14 + 1;
        v15 = &v9[16 * v14];
        *(v15 + 4) = v11;
        *(v15 + 5) = v12;
      }

      else
      {
        sub_100008F94(&v23, &qword_100014078, &qword_10000AC10);
      }

      sub_10000A510();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  *&v26[0] = 0xD000000000000019;
  *(&v26[0] + 1) = 0x800000010000B240;
  *&v23 = v9;
  sub_100006900(&qword_100014068, &qword_10000AC08);
  sub_100009698(&qword_100014070, &qword_100014068, &qword_10000AC08);
  v16 = sub_10000A360();
  v18 = v17;

  v29._countAndFlagsBits = v16;
  v29._object = v18;
  sub_10000A3C0(v29);

  v30._countAndFlagsBits = 41;
  v30._object = 0xE100000000000000;
  sub_10000A3C0(v30);
  return *&v26[0];
}

uint64_t sub_1000066C8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_100006374();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100006768();
  sub_10000A1A0();
  return 0;
}

unint64_t sub_100006768()
{
  result = qword_100014058;
  if (!qword_100014058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014058);
  }

  return result;
}

unint64_t sub_100006824()
{
  result = qword_100014060;
  if (!qword_100014060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014060);
  }

  return result;
}

uint64_t sub_100006878()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100006900(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100006948(uint64_t *a1, uint64_t *a2)
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

char *sub_100006990(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006900(&qword_100014080, &qword_10000AC18);
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

uint64_t sub_100006AA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100006AD8()
{
  result = qword_1000140A0;
  if (!qword_1000140A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140A0);
  }

  return result;
}

unint64_t sub_100006B2C()
{
  result = qword_1000140A8;
  if (!qword_1000140A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140A8);
  }

  return result;
}

unint64_t sub_100006B80()
{
  result = qword_1000140B0;
  if (!qword_1000140B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140B0);
  }

  return result;
}

uint64_t sub_100006BD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006CA0(v11, 0, 0, 1, a1, a2);
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
    sub_1000096E0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009E28(v11);
  return v7;
}

unint64_t sub_100006CA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006DAC(a5, a6);
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
    result = sub_10000A460();
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

char *sub_100006DAC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006DF8(a1, a2);
  sub_100006F28(&off_100010A80);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100006DF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100007014(v5, 0);
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

  result = sub_10000A460();
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
        v10 = sub_10000A3D0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100007014(v10, 0);
        result = sub_10000A440();
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

uint64_t sub_100006F28(uint64_t result)
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

  result = sub_100007088(result, v12, 1, v3);
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

void *sub_100007014(uint64_t a1, uint64_t a2)
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

  sub_100006900(&qword_100014100, &qword_10000AC70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007088(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006900(&qword_100014100, &qword_10000AC70);
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

uint64_t sub_10000717C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

unint64_t sub_100007228(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000A600();
  sub_10000A3A0();
  v6 = sub_10000A620();

  return sub_100007620(a1, a2, v6);
}

uint64_t sub_1000072A0(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_10000A320();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100006900(&qword_100014138, &qword_10000ACA0);
  v46 = a2;
  result = sub_10000A4F0();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_10000A600();
      sub_10000A3A0();
      result = sub_10000A620();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_100007620(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000A590())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_1000076D8()
{
  v1 = v0;
  v36 = sub_10000A320();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin();
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006900(&qword_100014138, &qword_10000ACA0);
  v4 = *v0;
  v5 = sub_10000A4E0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100007958()
{
  v0 = sub_10000A5A0();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000079AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_10000A590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_10000A590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E4F6E7572 && a2 == 0xE700000000000000 || (sub_10000A590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010000B3A0 == a2 || (sub_10000A590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F745370696B73 && a2 == 0xEF73746E6F726665)
  {

    return 4;
  }

  else
  {
    v6 = sub_10000A590();

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

uint64_t sub_100007B64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100006900(&qword_100014160, &qword_10000AE98);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_100009D90(a1, a1[3]);
  sub_100009DD4();
  sub_10000A660();
  if (v2)
  {
    sub_100009E28(a1);
  }

  else
  {
    LOBYTE(v31) = 0;
    v11 = sub_10000A540();
    v13 = v12;
    v29 = v11;
    LOBYTE(v31) = 1;
    v14 = sub_10000A540();
    v16 = v15;
    v28 = v14;
    LOBYTE(v31) = 2;
    v25 = sub_10000A520();
    v17 = sub_100006900(&qword_100014068, &qword_10000AC08);
    v30 = 3;
    v26 = sub_100009E74(&qword_100014168);
    v27 = v17;
    sub_10000A530();
    v24 = a2;
    v18 = v31;
    v30 = 4;
    sub_10000A530();
    (*(v6 + 8))(v9, v5);
    v19 = v31;

    sub_100009E28(a1);

    v21 = v28;
    v22 = v24;
    *v24 = v29;
    v22[1] = v13;
    v22[2] = v21;
    v22[3] = v16;
    *(v22 + 32) = v25;
    v22[5] = v18;
    v22[6] = v19;
  }

  return result;
}

uint64_t sub_100007ECC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_10000A3B0();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

unint64_t sub_100007F68(uint64_t a1)
{
  v2 = sub_100006900(&qword_100014140, &qword_10000ACA8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100006900(&qword_100014138, &qword_10000ACA0);
    v8 = sub_10000A500();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000990C(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100007228(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_10000A320();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_100008144(uint64_t a1)
{
  v143 = sub_10000A320();
  v2 = *(v143 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v135 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v128 = &v125 - v7;
  v8 = __chkstk_darwin(v6);
  v136 = &v125 - v9;
  v10 = __chkstk_darwin(v8);
  v130 = &v125 - v11;
  v12 = __chkstk_darwin(v10);
  v138 = &v125 - v13;
  v14 = __chkstk_darwin(v12);
  v132 = &v125 - v15;
  v16 = __chkstk_darwin(v14);
  v139 = &v125 - v17;
  __chkstk_darwin(v16);
  v134 = &v125 - v18;
  v19 = sub_10000A2A0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v148 = &v125 - v25;
  v26 = sub_100006900(&qword_100014128, &qword_10000AC90);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v30 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = (&v125 - v31);
  v33 = sub_100007F68(&_swiftEmptyArrayStorage);
  v34 = *(a1 + 64);
  v144 = v33;
  v145 = a1 + 64;
  v35 = 1 << *(a1 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v38 = (v35 + 63) >> 6;
  v146 = v20 + 16;
  v161 = (v20 + 32);
  v160 = (v20 + 88);
  v159 = enum case for DeDiscoFieldEncodingValue.BOOLeanType(_:);
  v157 = enum case for DeDiscoFieldEncodingValue.boundedIntegerType(_:);
  v155 = enum case for DeDiscoFieldEncodingValue.bucketedBoundariesType(_:);
  v153 = enum case for DeDiscoFieldEncodingValue.categoricalType(_:);
  v154 = enum case for DeDiscoFieldEncodingValue.bucketedType(_:);
  v151 = v20;
  v158 = (v20 + 8);
  v127 = enum case for SQLQueryResultFieldType.string(_:);
  v141 = (v2 + 104);
  v142 = (v2 + 32);
  v140 = v2;
  v137 = v2 + 40;
  v39 = v30;
  v129 = enum case for SQLQueryResultFieldType.double(_:);
  v131 = enum case for SQLQueryResultFieldType.int(_:);
  v133 = enum case for SQLQueryResultFieldType.BOOL(_:);
  v152 = a1;

  v40 = 0;
  v149 = v24;
  v150 = v19;
  v156 = v30;
  v147 = v32;
  if (!v37)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v42 = v40;
LABEL_16:
      v44 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v45 = v44 | (v42 << 6);
      v46 = v151;
      v47 = (*(v152 + 48) + 16 * v45);
      v49 = *v47;
      v48 = v47[1];
      v50 = v148;
      v51 = v150;
      (*(v151 + 16))(v148, *(v152 + 56) + *(v151 + 72) * v45, v150);
      v52 = sub_100006900(&qword_100014130, &qword_10000AC98);
      v53 = *(v52 + 48);
      v54 = v156;
      *v156 = v49;
      v54[1] = v48;
      v39 = v54;
      v55 = *(v46 + 32);
      v19 = v51;
      v55(v39 + v53, v50, v51);
      (*(*(v52 - 8) + 56))(v39, 0, 1, v52);

      v162 = v42;
      v24 = v149;
      v32 = v147;
LABEL_17:
      sub_10000989C(v39, v32);
      v56 = sub_100006900(&qword_100014130, &qword_10000AC98);
      if ((*(*(v56 - 8) + 48))(v32, 1, v56) == 1)
      {

        return v144;
      }

      v57 = *v32;
      v58 = v32[1];
      (*v161)(v24, v32 + *(v56 + 48), v19);
      v59 = (*v160)(v24, v19);
      if (v59 != v159)
      {
        break;
      }

      (*v158)(v24, v19);
      v60 = v134;
      v61 = v143;
      (*v141)(v134, v133, v143);
      v62 = *v142;
      (*v142)(v139, v60, v61);
      v63 = v144;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v163 = v63;
      v65 = sub_100007228(v57, v58);
      v66 = v63[2];
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_73;
      }

      if (v63[3] >= v68)
      {
        v39 = v156;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_46;
        }

        LODWORD(v144) = v64;
        sub_1000076D8();
        LOBYTE(v64) = v144;
      }

      else
      {
        LODWORD(v144) = v64;
        sub_1000072A0(v68, isUniquelyReferenced_nonNull_native);
        v69 = sub_100007228(v57, v58);
        v70 = v64 & 1;
        LOBYTE(v64) = v144;
        if ((v144 & 1) != v70)
        {
          goto LABEL_81;
        }

        v65 = v69;
      }

      v39 = v156;
LABEL_46:
      if ((v64 & 1) == 0)
      {
        v105 = v62;
        v106 = v163;
        v163[(v65 >> 6) + 8] |= 1 << v65;
        v107 = (v106[6] + 16 * v65);
        *v107 = v57;
        v107[1] = v58;
        v105(v106[7] + *(v140 + 72) * v65, v139, v143);
        v108 = v106[2];
        v80 = __OFADD__(v108, 1);
        v109 = v108 + 1;
        if (v80)
        {
          goto LABEL_77;
        }

        v110 = v106;
        goto LABEL_70;
      }

      v144 = v163;
      (*(v140 + 40))(v163[7] + *(v140 + 72) * v65, v139, v143);
LABEL_6:
      v40 = v162;
      if (!v37)
      {
        goto LABEL_7;
      }
    }

    if (v59 == v157)
    {
      (*v158)(v24, v19);
      v71 = v132;
      v72 = v143;
      (*v141)(v132, v131, v143);
      v73 = *v142;
      (*v142)(v138, v71, v72);
      v74 = v144;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v163 = v74;
      v76 = sub_100007228(v57, v58);
      v78 = v74[2];
      v79 = (v77 & 1) == 0;
      v80 = __OFADD__(v78, v79);
      v81 = v78 + v79;
      if (v80)
      {
        goto LABEL_74;
      }

      if (v74[3] >= v81)
      {
        v39 = v156;
        if (v75)
        {
          if ((v77 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v144 = v76;
          v114 = v77;
          sub_1000076D8();
          v39 = v156;
          v76 = v144;
          if ((v114 & 1) == 0)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        LODWORD(v144) = v77;
        sub_1000072A0(v81, v75);
        v76 = sub_100007228(v57, v58);
        if ((v144 & 1) != (v82 & 1))
        {
          goto LABEL_81;
        }

        v39 = v156;
        if ((v144 & 1) == 0)
        {
LABEL_60:
          v115 = v163;
          v163[(v76 >> 6) + 8] |= 1 << v76;
          v116 = (v115[6] + 16 * v76);
          *v116 = v57;
          v116[1] = v58;
          v73((v115[7] + *(v140 + 72) * v76), v138, v143);
          v117 = v115[2];
          v80 = __OFADD__(v117, 1);
          v109 = v117 + 1;
          if (v80)
          {
            goto LABEL_78;
          }

LABEL_69:
          v110 = v115;
LABEL_70:
          v144 = v110;
          v110[2] = v109;
          goto LABEL_6;
        }
      }

      v111 = v76;

      v144 = v163;
      (*(v140 + 40))(v163[7] + *(v140 + 72) * v111, v138, v143);
      goto LABEL_6;
    }

    if (v59 == v155 || v59 == v154)
    {
      (*v158)(v24, v19);
      v83 = v130;
      v84 = v143;
      (*v141)(v130, v129, v143);
      v85 = *v142;
      (*v142)(v136, v83, v84);
      v86 = v144;
      v87 = swift_isUniquelyReferenced_nonNull_native();
      v163 = v86;
      v88 = sub_100007228(v57, v58);
      v90 = v86[2];
      v91 = (v89 & 1) == 0;
      v80 = __OFADD__(v90, v91);
      v92 = v90 + v91;
      if (v80)
      {
        goto LABEL_75;
      }

      if (v86[3] >= v92)
      {
        v39 = v156;
        if (v87)
        {
          if ((v89 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v144 = v88;
          v118 = v89;
          sub_1000076D8();
          v39 = v156;
          v88 = v144;
          if ((v118 & 1) == 0)
          {
            goto LABEL_64;
          }
        }
      }

      else
      {
        LODWORD(v144) = v89;
        sub_1000072A0(v92, v87);
        v88 = sub_100007228(v57, v58);
        if ((v144 & 1) != (v93 & 1))
        {
          goto LABEL_81;
        }

        v39 = v156;
        if ((v144 & 1) == 0)
        {
LABEL_64:
          v115 = v163;
          v163[(v88 >> 6) + 8] |= 1 << v88;
          v119 = (v115[6] + 16 * v88);
          *v119 = v57;
          v119[1] = v58;
          v85((v115[7] + *(v140 + 72) * v88), v136, v143);
          v120 = v115[2];
          v80 = __OFADD__(v120, 1);
          v109 = v120 + 1;
          if (v80)
          {
            goto LABEL_79;
          }

          goto LABEL_69;
        }
      }

      v112 = v88;

      v144 = v163;
      (*(v140 + 40))(v163[7] + *(v140 + 72) * v112, v136, v143);
      goto LABEL_6;
    }

    if (v59 == v153)
    {
      (*v158)(v24, v19);
      v94 = v128;
      v95 = v143;
      (*v141)(v128, v127, v143);
      v96 = *v142;
      (*v142)(v135, v94, v95);
      v97 = v144;
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v163 = v97;
      v99 = sub_100007228(v57, v58);
      v101 = v97[2];
      v102 = (v100 & 1) == 0;
      v80 = __OFADD__(v101, v102);
      v103 = v101 + v102;
      if (v80)
      {
        goto LABEL_76;
      }

      if (v97[3] >= v103)
      {
        v39 = v156;
        if (v98)
        {
          if ((v100 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v144 = v99;
          v121 = v100;
          sub_1000076D8();
          v39 = v156;
          v99 = v144;
          if ((v121 & 1) == 0)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        LODWORD(v144) = v100;
        sub_1000072A0(v103, v98);
        v99 = sub_100007228(v57, v58);
        if ((v144 & 1) != (v104 & 1))
        {
          goto LABEL_81;
        }

        v39 = v156;
        if ((v144 & 1) == 0)
        {
LABEL_68:
          v115 = v163;
          v163[(v99 >> 6) + 8] |= 1 << v99;
          v122 = (v115[6] + 16 * v99);
          *v122 = v57;
          v122[1] = v58;
          v96((v115[7] + *(v140 + 72) * v99), v135, v143);
          v123 = v115[2];
          v80 = __OFADD__(v123, 1);
          v109 = v123 + 1;
          if (v80)
          {
            goto LABEL_80;
          }

          goto LABEL_69;
        }
      }

      v113 = v99;

      v144 = v163;
      (*(v140 + 40))(v163[7] + *(v140 + 72) * v113, v135, v143);
      goto LABEL_6;
    }

    (*v158)(v24, v19);
    v40 = v162;
  }

  while (v37);
LABEL_7:
  if (v38 <= v40 + 1)
  {
    v41 = v40 + 1;
  }

  else
  {
    v41 = v38;
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v42 >= v38)
    {
      v162 = v41 - 1;
      v43 = sub_100006900(&qword_100014130, &qword_10000AC98);
      (*(*(v43 - 8) + 56))(v39, 1, 1, v43);
      v37 = 0;
      goto LABEL_17;
    }

    v37 = *(v145 + 8 * v42);
    ++v40;
    if (v37)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_10000A5B0();
  __break(1u);
  return result;
}

uint64_t sub_100008F94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006900(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100008FF4()
{
  result = qword_1000140C8;
  if (!qword_1000140C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140C8);
  }

  return result;
}

uint64_t sub_100009048()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100009080()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_100006900(&qword_100014110, &qword_10000AC78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000AB00;
  strcpy((inited + 32), "queryDuration");
  *(inited + 46) = -4864;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithLongLong:v2];
  *(inited + 56) = 0x656D614E6B736174;
  *(inited + 64) = 0xE800000000000000;
  sub_10000A270();
  v4 = objc_allocWithZone(NSString);
  v5 = sub_10000A370();

  v6 = [v4 initWithString:v5];

  *(inited + 72) = v6;
  v7 = sub_100009798(inited);
  swift_setDeallocating();
  sub_100006900(&qword_100014118, &qword_10000AC80);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_1000091D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000091F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000A260();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A220();
  v13 = sub_10000A350();

  if (!v4)
  {
    v43 = v9;
    v40 = a3;
    v41 = a4;
    sub_10000A230();
    v15 = sub_10000A250();
    v42 = 0;
    v16 = v15;
    v39 = v8;
    if (qword_100014180 != -1)
    {
      swift_once();
    }

    v17 = sub_10000A2D0();
    sub_100006AA0(v17, qword_100014950);

    v18 = sub_10000A2B0();
    v19 = sub_10000A410();

    v20 = v13;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v38 = v12;
      v22 = v44;
      *v21 = 136315138;
      v23 = sub_10000A340();
      v25 = v18;
      v26 = sub_100006BD4(v23, v24, &v44);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v25, v19, "DeDisco taskConfig: %s", v21, 0xCu);
      sub_100009E28(v22);
      v12 = v38;
    }

    else
    {
    }

    v27 = a1;
    v28 = objc_opt_self();
    sub_100005A2C(v27);
    isa = sub_10000A330().super.isa;

    sub_100005CF4(v20);

    sub_100006900(&qword_1000140E0, &qword_10000AC50);
    v30 = sub_10000A330().super.isa;

    sub_100005A2C(v16);

    v31 = sub_10000A330().super.isa;

    v32 = sub_10000A370();
    v44 = 0;
    v33 = [v28 encodeDataAndRecord:isa dataTypeContent:v30 metadata:v31 baseKey:v32 errorOut:&v44];

    v34 = v43;
    if (v33)
    {
      v35 = *(v43 + 8);
      v36 = v44;
      return v35(v12, v39);
    }

    else
    {
      v37 = v44;
      sub_10000A160();

      swift_willThrow();
      return (*(v34 + 8))(v12, v39);
    }
  }

  return result;
}

unint64_t sub_100009640()
{
  result = qword_1000140D0;
  if (!qword_1000140D0)
  {
    sub_10000A190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140D0);
  }

  return result;
}

uint64_t sub_100009698(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006948(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000096E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000973C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000974C()
{
  result = qword_100014108;
  if (!qword_100014108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014108);
  }

  return result;
}

unint64_t sub_100009798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006900(&qword_100014120, &qword_10000AC88);
    v3 = sub_10000A500();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100007228(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_10000989C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006900(&qword_100014128, &qword_10000AC90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000990C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006900(&qword_100014140, &qword_10000ACA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_10000997C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000099FC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000A590() & 1;
  }
}

uint64_t getEnumTagSinglePayload for AnalyticsExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100009BC4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100009BE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100009C28(uint64_t result, int a2, int a3)
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

unint64_t sub_100009C88()
{
  result = qword_100014148;
  if (!qword_100014148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014148);
  }

  return result;
}

unint64_t sub_100009CE4()
{
  result = qword_100014150;
  if (!qword_100014150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014150);
  }

  return result;
}

unint64_t sub_100009D3C()
{
  result = qword_100014158;
  if (!qword_100014158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014158);
  }

  return result;
}

void *sub_100009D90(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100009DD4()
{
  result = qword_1000146A0[0];
  if (!qword_1000146A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000146A0);
  }

  return result;
}

uint64_t sub_100009E28(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100009E74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100006948(&qword_100014068, &qword_10000AC08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsExtensionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnalyticsExtensionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000A034()
{
  result = qword_1000147B0[0];
  if (!qword_1000147B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000147B0);
  }

  return result;
}

unint64_t sub_10000A08C()
{
  result = qword_1000148C0;
  if (!qword_1000148C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000148C0);
  }

  return result;
}

unint64_t sub_10000A0E4()
{
  result = qword_1000148C8[0];
  if (!qword_1000148C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000148C8);
  }

  return result;
}