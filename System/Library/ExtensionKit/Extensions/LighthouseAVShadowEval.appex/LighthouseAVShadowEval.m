uint64_t sub_100001600()
{
  v0 = sub_100007544();
  sub_100006E2C(v0, qword_100010850);
  sub_100006764(v0, qword_100010850);
  return sub_100007534();
}

unint64_t LighthouseAVShadowEvalExtensionError.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000017;
  v2 = 0xD000000000000020;
  if (a1 != 5)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000011;
  if (a1 != 3)
  {
    v3 = 0xD000000000000017;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0xD000000000000028;
  }

  if (!a1)
  {
    v1 = 0xD000000000000019;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100001750(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = &unk_100008010;
  if (a1 == 5)
  {
    v4 = 0xD000000000000020;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (a1 == 5)
  {
    v5 = "taskFolderMissingAssets";
  }

  else
  {
    v5 = "eValueFromOutput";
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (a1 == 3)
  {
    v7 = "lePathFromMobileAssetURL";
  }

  else
  {
    v7 = "taskFolderMissing";
  }

  if (a1 > 4u)
  {
    v6 = v4;
    v7 = v5;
  }

  v8 = 0xD000000000000028;
  if (a1 == 1)
  {
    v8 = 0xD000000000000017;
    v9 = "mobileAssetsParamsMissing";
  }

  else
  {
    v9 = "failedToGetMobileAssets";
  }

  if (!a1)
  {
    v8 = 0xD000000000000019;
    v9 = &unk_100008010;
  }

  v10 = a1 <= 2u;
  if (a1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = "mobileAssetsParamsMissing";
      }

      else
      {
        v2 = 0xD000000000000028;
        v3 = "failedToGetMobileAssets";
      }
    }

    else
    {
      v2 = 0xD000000000000019;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000020;
      v3 = "taskFolderMissingAssets";
    }

    else
    {
      v2 = 0xD000000000000013;
      v3 = "eValueFromOutput";
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xD000000000000011;
    v3 = "lePathFromMobileAssetURL";
  }

  else
  {
    v3 = "taskFolderMissing";
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_100007714();
  }

  return v13 & 1;
}

uint64_t sub_1000018F8()
{
  *v0;
  *v0;
  *v0;
  sub_1000075E4();
}

Swift::Int sub_1000019F4()
{
  sub_100007764();
  sub_1000075E4();

  return sub_100007784();
}

uint64_t sub_100001AFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s22LighthouseAVShadowEval0abC14ExtensionErrorO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100001B2C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = *v1;
  v4 = &unk_100008010;
  v5 = "taskFolderMissingAssets";
  v6 = 0xD000000000000020;
  if (v3 != 5)
  {
    v6 = 0xD000000000000013;
    v5 = "eValueFromOutput";
  }

  v7 = "lePathFromMobileAssetURL";
  v8 = 0xD000000000000011;
  if (v3 != 3)
  {
    v8 = 0xD000000000000017;
    v7 = "taskFolderMissing";
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "mobileAssetsParamsMissing";
  if (v3 != 1)
  {
    v2 = 0xD000000000000028;
    v9 = "failedToGetMobileAssets";
  }

  if (*v1)
  {
    v4 = v9;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v2 = v6;
    v10 = v5;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

Swift::Int sub_100001C18()
{
  v1 = *v0;
  sub_100007764();
  sub_100007774(v1);
  return sub_100007784();
}

Swift::Int sub_100001C8C()
{
  v1 = *v0;
  sub_100007764();
  sub_100007774(v1);
  return sub_100007784();
}

uint64_t sub_100001CD0()
{
  v1 = 0x6D614E6C65646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C69626F4D657375;
  }
}

uint64_t sub_100001D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000067F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100001D80(uint64_t a1)
{
  v2 = sub_100006F80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001DBC(uint64_t a1)
{
  v2 = sub_100006F80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001DF8(void *a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a3;
  v5 = sub_100006674(&qword_100010100, &qword_100007F10);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v12 - v8;
  v10 = a1[4];
  sub_100006F3C(a1, a1[3]);
  sub_100006F80();
  sub_1000077A4();
  v15 = 0;
  sub_1000076E4();
  if (!v3)
  {
    v12[1] = v12[0];
    v14 = 1;
    sub_100006674(&qword_1000100F0, &qword_100007F08);
    sub_100007068(&qword_100010108);
    sub_1000076F4();
    v13 = 2;
    sub_1000076E4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100001FE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100006920(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_100002044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[47] = a2;
  v3[48] = a3;
  v3[46] = a1;
  v7 = sub_100007544();
  v3[49] = v7;
  v8 = *(v7 - 8);
  v3[50] = v8;
  v9 = *(v8 + 64) + 15;
  v3[51] = swift_task_alloc();
  v10 = *(*(sub_100006674(&qword_100010060, &qword_100007E10) - 8) + 64) + 15;
  v3[52] = swift_task_alloc();
  v11 = sub_1000073B4();
  v3[53] = v11;
  v12 = *(v11 - 8);
  v3[54] = v12;
  v13 = *(v12 + 64) + 15;
  v3[55] = swift_task_alloc();
  v14 = sub_100007374();
  v3[56] = v14;
  v15 = *(v14 - 8);
  v3[57] = v15;
  v16 = *(v15 + 64) + 15;
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v17 = *(*(sub_100006674(&qword_100010068, &qword_100007E18) - 8) + 64) + 15;
  v3[61] = swift_task_alloc();
  v18 = sub_100007504();
  v3[62] = v18;
  v19 = *(v18 - 8);
  v3[63] = v19;
  v20 = *(v19 + 64) + 15;
  v3[64] = swift_task_alloc();
  v21 = sub_1000074C4();
  v3[65] = v21;
  v22 = *(v21 - 8);
  v3[66] = v22;
  v23 = *(v22 + 64) + 15;
  v3[67] = swift_task_alloc();
  v24 = sub_100007584();
  v3[68] = v24;
  v25 = *(v24 - 8);
  v3[69] = v25;
  v26 = *(v25 + 64) + 15;
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v27 = *(*(sub_100006674(&qword_100010070, &qword_100007E20) - 8) + 64) + 15;
  v28 = swift_task_alloc();
  v3[73] = v28;
  v29 = sub_100006674(&qword_100010078, &qword_100007E28);
  v3[74] = v29;
  v30 = *(v29 - 8);
  v3[75] = v30;
  v31 = *(v30 + 64) + 15;
  v3[76] = swift_task_alloc();
  v3[42] = a2;
  v3[43] = a3;
  v32 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v33 = swift_task_alloc();
  v3[77] = v33;
  v34 = sub_100006620();
  v35 = sub_1000066BC();
  v3[78] = v35;
  v36 = sub_100006710();
  v3[79] = v36;
  *v33 = v3;
  v33[1] = sub_1000024E4;

  return MLHostExtension.loadConfig<A>(context:)(v28, a1, &type metadata for LighthouseAVShadowEvalExtension, &type metadata for LighthouseAVShadowEvalConfig, v34, v35, v36);
}

uint64_t sub_1000024E4()
{
  v1 = *(*v0 + 616);
  v3 = *v0;

  return _swift_task_switch(sub_10000260C, 0, 0);
}

uint64_t sub_10000260C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    v5 = *(v0 + 632);
    v6 = *(v0 + 624);
    v7 = *(v0 + 608);
    *(v0 + 264) = 0;
    *(v0 + 272) = &_swiftEmptyArrayStorage;
    *(v0 + 280) = 0;
    sub_100007474();
    if (v4(v3, 1, v2) != 1)
    {
      sub_100006DCC(*(v0 + 584), &qword_100010070, &qword_100007E20);
    }
  }

  else
  {
    (*(v1 + 32))(*(v0 + 608), v3, v2);
  }

  v8 = *(v0 + 608);
  v9 = *(v0 + 592);
  v10 = *(v0 + 368);
  *(v0 + 640) = sub_1000074E4();
  *(v0 + 648) = v11;
  *(v0 + 281) = os_variant_has_internal_diagnostics();
  sub_100007484();
  LODWORD(v10) = *(v0 + 288);
  v12 = *(v0 + 296);

  if (v10 == 1)
  {
    v13 = *(v0 + 608);
    v14 = *(v0 + 592);
    v15 = *(v0 + 528);
    v16 = *(v0 + 520);
    v18 = *(v0 + 504);
    v17 = *(v0 + 512);
    v20 = *(v0 + 488);
    v19 = *(v0 + 496);
    sub_100007494();
    sub_1000074F4();
    (*(v18 + 8))(v17, v19);
    if ((*(v15 + 48))(v20, 1, v16) == 1)
    {
      v21 = *(v0 + 488);

      sub_100006DCC(v21, &qword_100010068, &qword_100007E18);
      if (qword_100010110 != -1)
      {
        swift_once();
      }

      sub_100006764(*(v0 + 392), qword_100010850);
      v22 = sub_100007524();
      v23 = sub_100007644();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "useMobileAssets set to true but MobileAsset info missing from SystemParameters. Exiting early.", v24, 2u);
      }

LABEL_26:
      v58 = *(v0 + 608);
      v59 = *(v0 + 600);
      v60 = *(v0 + 592);

      sub_10000679C();
      v61 = objc_allocWithZone(sub_100007444());
      v94 = sub_100007424();
      (*(v59 + 8))(v58, v60);
LABEL_33:
      v82 = *(v0 + 608);
      v83 = *(v0 + 584);
      v84 = *(v0 + 576);
      v85 = *(v0 + 568);
      v86 = *(v0 + 560);
      v87 = *(v0 + 536);
      v88 = *(v0 + 512);
      v90 = *(v0 + 480);
      v89 = *(v0 + 488);
      v91 = *(v0 + 472);
      v95 = *(v0 + 464);
      v96 = *(v0 + 440);
      v97 = *(v0 + 416);
      v99 = *(v0 + 408);

      v92 = *(v0 + 8);

      return v92(v94);
    }

    (*(*(v0 + 528) + 32))(*(v0 + 536), *(v0 + 488), *(v0 + 520));
    sub_100007414();
    v47 = sub_1000074B4();
    v49 = v48;
    *(v0 + 656) = v48;
    v50 = sub_1000074A4();
    v52 = v51;
    *(v0 + 664) = v51;
    v53 = async function pointer to static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)[1];
    v54 = swift_task_alloc();
    *(v0 + 672) = v54;
    *v54 = v0;
    v54[1] = sub_100002FEC;
    v55 = *(v0 + 368);

    return static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)(v55, v47, v49, v50, v52);
  }

  else
  {
    v25 = *(v0 + 368);
    sub_1000074D4();
    if (!v26)
    {

      if (qword_100010110 != -1)
      {
        swift_once();
      }

      sub_100006764(*(v0 + 392), qword_100010850);
      v22 = sub_100007524();
      v56 = sub_100007644();
      if (os_log_type_enabled(v22, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v22, v56, "Task folder missing. Exiting early.", v57, 2u);
      }

      goto LABEL_26;
    }

    v27 = *(v0 + 576);
    sub_100007594();
    sub_100007554();
    v28 = [objc_opt_self() defaultManager];
    sub_100007564();
    v29 = sub_1000075C4();

    LOBYTE(v27) = [v28 fileExistsAtPath:v29];

    if ((v27 & 1) == 0)
    {

      if (qword_100010110 != -1)
      {
        swift_once();
      }

      sub_100006764(*(v0 + 392), qword_100010850);
      v62 = sub_100007524();
      v63 = sub_100007644();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Task folder doesn't contain assets. Exiting early.", v64, 2u);
      }

      v65 = *(v0 + 608);
      v66 = *(v0 + 600);
      v67 = *(v0 + 592);
      v68 = *(v0 + 576);
      v69 = *(v0 + 552);
      v70 = *(v0 + 544);

      sub_10000679C();
      v71 = objc_allocWithZone(sub_100007444());
      v94 = sub_100007424();
      (*(v69 + 8))(v68, v70);
      (*(v66 + 8))(v65, v67);
      goto LABEL_33;
    }

    v30 = *(v0 + 608);
    v31 = *(v0 + 592);
    v32 = *(v0 + 368);
    sub_100005050(*(v0 + 440));
    sub_100007484();
    v33 = *(v0 + 320);
    *(v0 + 688) = v33;
    v34 = v33[2];
    *(v0 + 696) = v34;
    if (!v34)
    {

      v72 = *(v0 + 648);
      v98 = *(v0 + 608);
      v73 = *(v0 + 600);
      v74 = *(v0 + 592);
      v75 = *(v0 + 576);
      v76 = *(v0 + 552);
      v77 = *(v0 + 544);
      v78 = *(v0 + 432);
      v79 = *(v0 + 440);
      v80 = *(v0 + 424);

      v81 = objc_allocWithZone(sub_100007444());
      v94 = sub_100007434();
      (*(v78 + 8))(v79, v80);
      (*(v76 + 8))(v75, v77);
      (*(v73 + 8))(v98, v74);
      goto LABEL_33;
    }

    v35 = *(v0 + 552);
    *(v0 + 704) = sub_100006CA4(0, &qword_100010098, MLModel_ptr);
    *(v0 + 712) = 0;
    if (!v33[2])
    {
      __break(1u);
    }

    v36 = *(v0 + 576);
    v37 = *(v0 + 568);
    v38 = *(v0 + 560);
    v39 = *(v0 + 544);
    v40 = *(v0 + 464);
    *(v0 + 720) = v33[4];
    *(v0 + 728) = v33[5];
    (*(v35 + 16))(v38, v36, v39);
    swift_bridgeObjectRetain_n();
    sub_100007574();
    *(v0 + 736) = sub_100007564();
    *(v0 + 744) = v41;
    (*(v35 + 8))(v37, v39);
    sub_100007354();
    v42 = async function pointer to static MLModel.compileModel(at:)[1];
    v43 = swift_task_alloc();
    *(v0 + 752) = v43;
    *v43 = v0;
    v43[1] = sub_1000037B8;
    v44 = *(v0 + 704);
    v45 = *(v0 + 464);
    v46 = *(v0 + 416);

    return static MLModel.compileModel(at:)(v46, v45);
  }
}

uint64_t sub_100002FEC(uint64_t a1)
{
  v2 = *(*v1 + 672);
  v3 = *(*v1 + 664);
  v4 = *(*v1 + 656);
  v6 = *v1;
  *(*v1 + 680) = a1;

  return _swift_task_switch(sub_10000315C, 0, 0);
}

uint64_t sub_10000315C()
{
  v74 = v0;
  if (qword_100010110 != -1)
  {
    swift_once();
  }

  v1 = v0[85];
  sub_100006764(v0[49], qword_100010850);

  v2 = sub_100007524();
  v3 = sub_100007634();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[85];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v73[0] = v6;
    *v5 = 136315138;
    v0[45] = v4;
    sub_100006674(&qword_1000100C0, &qword_100007E48);
    v7 = sub_100007664();
    v9 = sub_100005ADC(v7, v8, v73);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got ML host asset: %s", v5, 0xCu);
    sub_100006FD4(v6);
  }

  if (v0[85])
  {
    v10 = v0[72];
    v70 = v0[67];
    v11 = v0[66];
    v12 = v0[65];
    v13 = v0[60];
    v15 = v0[56];
    v14 = v0[57];
    sub_100007404();
    sub_100007344();
    (*(v14 + 8))(v13, v15);
    sub_100007594();

    (*(v11 + 8))(v70, v12);
    v16 = v0[76];
    v17 = v0[74];
    v18 = v0[46];
    sub_100005050(v0[55]);
    sub_100007484();
    v19 = v0[40];
    v0[86] = v19;
    v20 = v19[2];
    v0[87] = v20;
    if (v20)
    {
      v21 = v0[69];
      v0[88] = sub_100006CA4(0, &qword_100010098, MLModel_ptr);
      v0[89] = 0;
      if (!v19[2])
      {
        __break(1u);
      }

      v22 = v0[72];
      v23 = v0[71];
      v24 = v0[70];
      v25 = v0[68];
      v26 = v0[58];
      v0[90] = v19[4];
      v0[91] = v19[5];
      (*(v21 + 16))(v24, v22, v25);
      swift_bridgeObjectRetain_n();
      sub_100007574();
      v0[92] = sub_100007564();
      v0[93] = v27;
      (*(v21 + 8))(v23, v25);
      sub_100007354();
      v28 = async function pointer to static MLModel.compileModel(at:)[1];
      v29 = swift_task_alloc();
      v0[94] = v29;
      *v29 = v0;
      v29[1] = sub_1000037B8;
      v30 = v0[88];
      v31 = v0[58];
      v32 = v0[52];

      return static MLModel.compileModel(at:)(v32, v31);
    }

    v44 = v0[81];
    v71 = v0[76];
    v45 = v0[75];
    v46 = v0[74];
    v47 = v0[72];
    v48 = v0[69];
    v49 = v0[68];
    v50 = v0[54];
    v51 = v0[55];
    v52 = v0[53];

    v53 = objc_allocWithZone(sub_100007444());
    v66 = sub_100007434();
    (*(v50 + 8))(v51, v52);
    (*(v48 + 8))(v47, v49);
    (*(v45 + 8))(v71, v46);
  }

  else
  {
    v33 = v0[81];

    v34 = sub_100007524();
    v35 = sub_100007644();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to get mlhostAsset", v36, 2u);
    }

    v37 = v0[76];
    v38 = v0[75];
    v39 = v0[74];
    v40 = v0[67];
    v41 = v0[66];
    v42 = v0[65];

    v73[3] = &type metadata for LighthouseAVShadowEvalExtensionError;
    v73[4] = sub_10000679C();
    LOBYTE(v73[0]) = 1;
    v43 = objc_allocWithZone(sub_100007444());
    v66 = sub_100007424();

    (*(v41 + 8))(v40, v42);
    (*(v38 + 8))(v37, v39);
  }

  v54 = v0[76];
  v55 = v0[73];
  v56 = v0[72];
  v57 = v0[71];
  v58 = v0[70];
  v59 = v0[67];
  v60 = v0[64];
  v62 = v0[60];
  v61 = v0[61];
  v63 = v0[59];
  v67 = v0[58];
  v68 = v0[55];
  v69 = v0[52];
  v72 = v0[51];

  v64 = v0[1];

  return v64(v66);
}

uint64_t sub_1000037B8()
{
  v2 = *v1;
  v3 = *(*v1 + 752);
  v14 = *v1;

  if (v0)
  {
    v4 = v2[91];
    v6 = v2[57];
    v5 = v2[58];
    v7 = v2[56];

    (*(v6 + 8))(v5, v7);
    v8 = sub_100004B90;
  }

  else
  {
    v10 = v2[57];
    v9 = v2[58];
    v11 = v2[56];
    v12 = *(v10 + 8);
    v2[95] = v12;
    v2[96] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v9, v11);
    v8 = sub_100003960;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100003960()
{
  v89 = v0;
  v1 = v0[59];
  v2 = v0[56];
  v3 = v0[57];
  v4 = v0[52];
  (*(v3 + 56))(v4, 0, 1, v2);
  (*(v3 + 32))(v1, v4, v2);
  sub_100007364(v5);
  v7 = v6;
  v8 = objc_opt_self();
  v0[44] = 0;
  v9 = [v8 modelWithContentsOfURL:v7 error:v0 + 44];
  v0[97] = v9;

  v10 = v0[44];
  if (v9)
  {
    v11 = v0[93];
    v12 = v10;

    if (qword_100010110 != -1)
    {
      swift_once();
    }

    v0[98] = sub_100006764(v0[49], qword_100010850);
    v13 = v9;
    v14 = sub_100007524();
    v15 = sub_100007634();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v9;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "Created model: %@", v16, 0xCu);
      sub_100006DCC(v17, &qword_1000100B8, &qword_100007E40);
    }

    v19 = sub_1000073D4();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v0[99] = sub_1000073C4();
    v22 = *(&async function pointer to dispatch thunk of AVLogReader.runModelWithBiomeInputs(model:startDate:batchSize:) + 1);
    v23 = async function pointer to dispatch thunk of AVLogReader.runModelWithBiomeInputs(model:startDate:batchSize:);
    v24 = swift_task_alloc();
    v0[100] = v24;
    *v24 = v0;
    v24[1] = sub_1000040C8;
    v25 = v0[55];

    return ((&async function pointer to dispatch thunk of AVLogReader.runModelWithBiomeInputs(model:startDate:batchSize:) + v23))(v13, v25, 64);
  }

  else
  {
    v27 = v0[91];
    v28 = v10;

    sub_100007334();

    swift_willThrow();

    if (qword_100010110 != -1)
    {
      swift_once();
    }

    v29 = v0[93];
    sub_100006764(v0[49], qword_100010850);

    v30 = sub_100007524();
    v31 = sub_100007644();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[95];
    v34 = v0[93];
    if (v32)
    {
      v85 = v0[96];
      v35 = v0[92];
      v36 = v0[59];
      v37 = v0[56];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v88 = v39;
      *v38 = 136315138;
      v40 = sub_100005ADC(v35, v34, &v88);

      *(v38 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to initialize model from compiled URL %s", v38, 0xCu);
      sub_100006FD4(v39);

      v33(v36, v37);
    }

    else
    {
      v41 = v0[59];
      v42 = v0[56];
      v43 = v0[93];

      v33(v41, v42);
    }

    v44 = v0[89] + 1;
    if (v44 == v0[87])
    {
      v45 = v0[86];

      v46 = v0[81];
      v86 = v0[76];
      v47 = v0[75];
      v48 = v0[74];
      v49 = v0[72];
      v50 = v0[69];
      v51 = v0[68];
      v52 = v0[54];
      v53 = v0[55];
      v54 = v0[53];

      v55 = objc_allocWithZone(sub_100007444());
      v81 = sub_100007434();
      (*(v52 + 8))(v53, v54);
      (*(v50 + 8))(v49, v51);
      (*(v47 + 8))(v86, v48);
      v56 = v0[76];
      v57 = v0[73];
      v58 = v0[72];
      v59 = v0[71];
      v60 = v0[70];
      v61 = v0[67];
      v62 = v0[64];
      v64 = v0[60];
      v63 = v0[61];
      v65 = v0[59];
      v82 = v0[58];
      v83 = v0[55];
      v84 = v0[52];
      v87 = v0[51];

      v66 = v0[1];

      return v66(v81);
    }

    else
    {
      v0[89] = v44;
      v67 = v0[86];
      if (v44 >= *(v67 + 16))
      {
        __break(1u);
      }

      v68 = v0[72];
      v69 = v0[71];
      v70 = v0[70];
      v71 = v0[69];
      v72 = v0[68];
      v73 = v0[58];
      v74 = v67 + 16 * v44;
      v0[90] = *(v74 + 32);
      v0[91] = *(v74 + 40);
      (*(v71 + 16))(v70, v68, v72);
      swift_bridgeObjectRetain_n();
      sub_100007574();
      v0[92] = sub_100007564();
      v0[93] = v75;
      (*(v71 + 8))(v69, v72);
      sub_100007354();
      v76 = async function pointer to static MLModel.compileModel(at:)[1];
      v77 = swift_task_alloc();
      v0[94] = v77;
      *v77 = v0;
      v77[1] = sub_1000037B8;
      v78 = v0[88];
      v79 = v0[58];
      v80 = v0[52];

      return static MLModel.compileModel(at:)(v80, v79);
    }
  }
}

uint64_t sub_1000040C8(uint64_t a1)
{
  v2 = *(*v1 + 800);
  v3 = *(*v1 + 792);
  v5 = *v1;
  *(*v1 + 808) = a1;

  return _swift_task_switch(sub_100004228, 0, 0);
}

uint64_t sub_100004228()
{
  v110 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 784);

  v3 = sub_100007524();
  v4 = sub_100007634();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 808);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v109[0] = v7;
    *v6 = 136315138;
    v8 = sub_1000075B4();
    v10 = sub_100005ADC(v8, v9, v109);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Metrics: %s", v6, 0xCu);
    sub_100006FD4(v7);
  }

  v11 = *(v0 + 808);
  v14 = *(v11 + 64);
  v13 = v11 + 64;
  v12 = v14;
  v15 = -1;
  v16 = -1 << *(*(v0 + 808) + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & v12;
  v18 = (63 - v16) >> 6;
  v96 = *(v0 + 808);

  v19 = 0;
  v94 = v18;
  v95 = v13;
LABEL_8:
  if (v17)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v26 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v26 >= v18)
    {
      break;
    }

    v17 = *(v13 + 8 * v26);
    ++v19;
    if (v17)
    {
      v19 = v26;
LABEL_13:
      v27 = *(v0 + 728);
      v28 = *(v0 + 720);
      v98 = *(v0 + 640);
      v100 = *(v0 + 648);
      v105 = *(v0 + 408);
      if (*(v0 + 281))
      {
        v29 = 1001;
      }

      else
      {
        v29 = 5001;
      }

      v103 = v29;
      v30 = __clz(__rbit64(v17)) | (v19 << 6);
      v31 = (v96[6] + 16 * v30);
      v32 = *v31;
      v33 = v31[1];
      v34 = *(v96[7] + 4 * v30);
      sub_100006674(&qword_1000100A0, &qword_100007E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100007BB0;
      *(inited + 32) = 0x614E63697274656DLL;
      *(inited + 40) = 0xEA0000000000656DLL;

      v36 = sub_1000075C4();

      *(inited + 48) = v36;
      *(inited + 56) = 0x615663697274656DLL;
      *(inited + 64) = 0xEB0000000065756CLL;
      *(inited + 72) = sub_100007614();
      *(inited + 80) = 0xD000000000000012;
      *(inited + 88) = 0x8000000100008170;
      *(inited + 96) = sub_1000075C4();
      *(inited + 104) = 0x5573656C706D6173;
      *(inited + 112) = 0xEB00000000646573;
      v37 = v96[2];
      *(inited + 120) = sub_100007624();
      *(inited + 128) = 0xD000000000000011;
      *(inited + 136) = 0x8000000100008190;
      *(inited + 144) = sub_1000075C4();
      *(inited + 152) = 0xD000000000000010;
      *(inited + 160) = 0x80000001000081B0;
      *(inited + 168) = sub_1000075C4();
      *(inited + 176) = 0xD000000000000011;
      *(inited + 184) = 0x80000001000081D0;
      *(v0 + 284) = v103;
      sub_100007704();
      v38 = sub_1000075C4();

      *(inited + 192) = v38;
      v39 = sub_100006B48(inited);
      swift_setDeallocating();
      sub_100006674(&qword_1000100A8, &qword_100007E38);
      swift_arrayDestroy();
      sub_100007514();

      v40 = sub_100007524();
      v41 = sub_100007634();

      v42 = os_log_type_enabled(v40, v41);
      v44 = *(v0 + 400);
      v43 = *(v0 + 408);
      v45 = *(v0 + 392);
      if (v42)
      {
        v101 = v41;
        v46 = swift_slowAlloc();
        v106 = v43;
        v109[0] = swift_slowAlloc();
        v47 = v109[0];
        *v46 = 136315138;
        sub_100006CA4(0, &qword_1000100B0, NSObject_ptr);
        v48 = sub_1000075B4();
        v50 = v39;
        v51 = sub_100005ADC(v48, v49, v109);

        *(v46 + 4) = v51;
        v39 = v50;
        _os_log_impl(&_mh_execute_header, v40, v101, "Submitting %s.", v46, 0xCu);
        sub_100006FD4(v47);

        (*(v44 + 8))(v106, v45);
      }

      else
      {

        (*(v44 + 8))(v43, v45);
      }

      v18 = v94;
      v13 = v95;
      v17 &= v17 - 1;
      v20 = *(v0 + 376);
      v21 = *(v0 + 384);
      v22 = sub_1000075C4();
      v23 = swift_allocObject();
      *(v23 + 16) = v39;
      *(v0 + 248) = sub_100006C84;
      *(v0 + 256) = v23;
      *(v0 + 216) = _NSConcreteStackBlock;
      *(v0 + 224) = 1107296256;
      *(v0 + 232) = sub_10000556C;
      *(v0 + 240) = &unk_10000C970;
      v24 = _Block_copy((v0 + 216));
      v25 = *(v0 + 256);

      AnalyticsSendEventLazy();
      _Block_release(v24);

      goto LABEL_8;
    }
  }

  v52 = *(v0 + 808);
  v53 = *(v0 + 776);
  v54 = *(v0 + 768);
  v55 = *(v0 + 728);
  (*(v0 + 760))(*(v0 + 472), *(v0 + 448));

  v56 = *(v0 + 712) + 1;
  if (v56 == *(v0 + 696))
  {
    v57 = *(v0 + 688);

    v58 = *(v0 + 648);
    v107 = *(v0 + 608);
    v59 = *(v0 + 600);
    v60 = *(v0 + 592);
    v61 = *(v0 + 576);
    v62 = *(v0 + 552);
    v63 = *(v0 + 544);
    v64 = *(v0 + 432);
    v65 = *(v0 + 440);
    v66 = *(v0 + 424);

    v67 = objc_allocWithZone(sub_100007444());
    aBlock = sub_100007434();
    (*(v64 + 8))(v65, v66);
    (*(v62 + 8))(v61, v63);
    (*(v59 + 8))(v107, v60);
    v68 = *(v0 + 608);
    v69 = *(v0 + 584);
    v70 = *(v0 + 576);
    v71 = *(v0 + 568);
    v72 = *(v0 + 560);
    v73 = *(v0 + 536);
    v74 = *(v0 + 512);
    v76 = *(v0 + 480);
    v75 = *(v0 + 488);
    v77 = *(v0 + 472);
    v99 = *(v0 + 464);
    v102 = *(v0 + 440);
    v104 = *(v0 + 416);
    v108 = *(v0 + 408);

    v78 = *(v0 + 8);

    return v78(aBlock);
  }

  *(v0 + 712) = v56;
  v80 = *(v0 + 688);
  if (v56 >= *(v80 + 16))
  {
LABEL_27:
    __break(1u);
  }

  v81 = *(v0 + 576);
  v82 = *(v0 + 568);
  v83 = *(v0 + 560);
  v84 = *(v0 + 552);
  v85 = *(v0 + 544);
  v86 = *(v0 + 464);
  v87 = v80 + 16 * v56;
  *(v0 + 720) = *(v87 + 32);
  *(v0 + 728) = *(v87 + 40);
  (*(v84 + 16))(v83, v81, v85);
  swift_bridgeObjectRetain_n();
  sub_100007574();
  *(v0 + 736) = sub_100007564();
  *(v0 + 744) = v88;
  (*(v84 + 8))(v82, v85);
  sub_100007354();
  v89 = async function pointer to static MLModel.compileModel(at:)[1];
  v90 = swift_task_alloc();
  *(v0 + 752) = v90;
  *v90 = v0;
  v90[1] = sub_1000037B8;
  v91 = *(v0 + 704);
  v92 = *(v0 + 464);
  v93 = *(v0 + 416);

  return static MLModel.compileModel(at:)(v93, v92);
}

uint64_t sub_100004B90()
{
  v56 = v0;
  v1 = v0[52];
  (*(v0[57] + 56))(v1, 1, 1, v0[56]);
  sub_100006DCC(v1, &qword_100010060, &qword_100007E10);
  if (qword_100010110 != -1)
  {
    swift_once();
  }

  v2 = v0[93];
  sub_100006764(v0[49], qword_100010850);

  v3 = sub_100007524();
  v4 = sub_100007644();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[93];
  if (v5)
  {
    v7 = v0[92];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55 = v9;
    *v8 = 136315138;
    v10 = sub_100005ADC(v7, v6, &v55);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to compile model at %s", v8, 0xCu);
    sub_100006FD4(v9);
  }

  else
  {
  }

  v11 = v0[89] + 1;
  if (v11 == v0[87])
  {
    v12 = v0[86];

    v13 = v0[81];
    v53 = v0[76];
    v14 = v0[75];
    v15 = v0[74];
    v16 = v0[72];
    v17 = v0[69];
    v18 = v0[68];
    v19 = v0[54];
    v20 = v0[55];
    v21 = v0[53];

    v22 = objc_allocWithZone(sub_100007444());
    v49 = sub_100007434();
    (*(v19 + 8))(v20, v21);
    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v53, v15);
    v23 = v0[76];
    v24 = v0[73];
    v25 = v0[72];
    v26 = v0[71];
    v27 = v0[70];
    v28 = v0[67];
    v29 = v0[64];
    v31 = v0[60];
    v30 = v0[61];
    v32 = v0[59];
    v50 = v0[58];
    v51 = v0[55];
    v52 = v0[52];
    v54 = v0[51];

    v33 = v0[1];

    return v33(v49);
  }

  else
  {
    v0[89] = v11;
    v35 = v0[86];
    if (v11 >= *(v35 + 16))
    {
      __break(1u);
    }

    v36 = v0[72];
    v37 = v0[71];
    v38 = v0[70];
    v39 = v0[69];
    v40 = v0[68];
    v41 = v0[58];
    v42 = v35 + 16 * v11;
    v0[90] = *(v42 + 32);
    v0[91] = *(v42 + 40);
    (*(v39 + 16))(v38, v36, v40);
    swift_bridgeObjectRetain_n();
    sub_100007574();
    v0[92] = sub_100007564();
    v0[93] = v43;
    (*(v39 + 8))(v37, v40);
    sub_100007354();
    v44 = async function pointer to static MLModel.compileModel(at:)[1];
    v45 = swift_task_alloc();
    v0[94] = v45;
    *v45 = v0;
    v45[1] = sub_1000037B8;
    v46 = v0[88];
    v47 = v0[58];
    v48 = v0[52];

    return static MLModel.compileModel(at:)(v48, v47);
  }
}

uint64_t sub_100005050@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(sub_100006674(&qword_1000100D8, &qword_100007E60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v26[-v3 - 8];
  v5 = sub_1000073B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100006674(&qword_100010078, &qword_100007E28);
  sub_100007484();

  if (v33 == 1)
  {
    return sub_100007384();
  }

  v11 = [objc_opt_self() standardUserDefaults];
  v34._countAndFlagsBits = sub_1000074E4();
  *&v32 = 0xD000000000000018;
  *(&v32 + 1) = 0x8000000100008210;
  sub_1000075F4(v34);

  v12 = sub_1000075C4();
  v13 = [v11 valueForKey:v12];

  if (v13)
  {
    sub_100007674();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  sub_1000073A4();
  isa = sub_100007394().super.isa;
  (*(v6 + 8))(v9, v5);
  v15 = sub_1000075C4();

  [v11 setObject:isa forKey:v15];

  sub_100006D4C(&v32, v28);
  if (v29)
  {
    sub_100006DBC(v28, &v30);
    sub_100006CEC(&v30, v28);
    if (swift_dynamicCast())
    {

      sub_100006FD4(&v30);
      sub_100006DCC(&v32, &qword_1000100E0, &qword_100007E68);
      (*(v6 + 56))(v4, 0, 1, v5);
      return (*(v6 + 32))(a1, v4, v5);
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_100006DCC(v4, &qword_1000100D8, &qword_100007E60);
    if (qword_100010110 != -1)
    {
      swift_once();
    }

    v16 = sub_100007544();
    sub_100006764(v16, qword_100010850);
    sub_100006CEC(&v30, v28);
    v17 = sub_100007524();
    v18 = sub_100007644();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      sub_100006CEC(v28, v26);
      v21 = sub_1000075D4();
      v23 = v22;
      sub_100006FD4(v28);
      v24 = sub_100005ADC(v21, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Got non-date type object for last run date: %s", v19, 0xCu);
      sub_100006FD4(v20);
    }

    else
    {

      sub_100006FD4(v28);
    }

    sub_100007384();

    sub_100006FD4(&v30);
  }

  else
  {
    sub_100006DCC(v28, &qword_1000100E0, &qword_100007E68);
    sub_100007384();
  }

  return sub_100006DCC(&v32, &qword_1000100E0, &qword_100007E68);
}

Class sub_10000556C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100006CA4(0, &qword_1000100B0, NSObject_ptr);
    v5.super.isa = sub_1000075A4().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_100005624()
{
  objc_allocWithZone(sub_100007444());
  v1 = sub_100007434();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100005698(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005740;

  return sub_100002044(a1, v5, v4);
}

uint64_t sub_100005740(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10000583C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100005920;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100005920()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005A14(uint64_t a1)
{
  v2 = sub_100006620();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100006200();
  sub_1000073E4();
  return 0;
}

uint64_t sub_100005ADC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005BA8(v11, 0, 0, 1, a1, a2);
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
    sub_100006CEC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006FD4(v11);
  return v7;
}

unint64_t sub_100005BA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005CB4(a5, a6);
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
    result = sub_100007694();
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

char *sub_100005CB4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005D00(a1, a2);
  sub_100005E30(&off_10000C810);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100005D00(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005F1C(v5, 0);
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

  result = sub_100007694();
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
        v10 = sub_100007604();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005F1C(v10, 0);
        result = sub_100007684();
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

uint64_t sub_100005E30(uint64_t result)
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

  result = sub_100005F90(result, v12, 1, v3);
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

void *sub_100005F1C(uint64_t a1, uint64_t a2)
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

  sub_100006674(&qword_1000100D0, &qword_100007E58);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005F90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006674(&qword_1000100D0, &qword_100007E58);
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

unint64_t sub_100006084(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100007764();
  sub_1000075E4();
  v6 = sub_100007784();

  return sub_1000060FC(a1, a2, v6);
}

unint64_t sub_1000060FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100007714())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s22LighthouseAVShadowEval0abC14ExtensionErrorO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C748;
  v6._object = a2;
  v4 = sub_1000076B4(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100006200()
{
  result = qword_100010030;
  if (!qword_100010030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010030);
  }

  return result;
}

unint64_t sub_100006258()
{
  result = qword_100010038;
  if (!qword_100010038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010038);
  }

  return result;
}

unint64_t sub_1000062B0()
{
  result = qword_100010040;
  if (!qword_100010040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010040);
  }

  return result;
}

unint64_t sub_100006308()
{
  result = qword_100010048;
  if (!qword_100010048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010048);
  }

  return result;
}

unint64_t sub_100006360()
{
  result = qword_100010050;
  if (!qword_100010050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010050);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LighthouseAVShadowEvalExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LighthouseAVShadowEvalExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100006528(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100006534(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000657C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100006620()
{
  result = qword_100010058;
  if (!qword_100010058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010058);
  }

  return result;
}

uint64_t sub_100006674(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000066BC()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

unint64_t sub_100006710()
{
  result = qword_100010088;
  if (!qword_100010088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010088);
  }

  return result;
}

uint64_t sub_100006764(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000679C()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

uint64_t sub_1000067F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C69626F4D657375 && a2 == 0xEF73746573734165;
  if (v4 || (sub_100007714() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xEA00000000007365 || (sub_100007714() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100008260 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_100007714();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100006920(uint64_t *a1)
{
  v3 = sub_100006674(&qword_1000100E8, &qword_100007F00);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_100006F3C(a1, v8);
  sub_100006F80();
  sub_100007794();
  if (!v1)
  {
    v10[31] = 0;
    LOBYTE(v8) = sub_1000076C4();
    sub_100006674(&qword_1000100F0, &qword_100007F08);
    v10[15] = 1;
    sub_100007068(&qword_1000100F8);
    sub_1000076D4();
    v10[14] = 2;
    sub_1000076C4();
    (*(v4 + 8))(v7, v3);
  }

  sub_100006FD4(a1);
  return v8 & 1;
}

unint64_t sub_100006B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006674(&qword_1000100C8, &qword_100007E50);
    v3 = sub_1000076A4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100006084(v5, v6);
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

uint64_t sub_100006C4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CA4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100006CEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006674(&qword_1000100E0, &qword_100007E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100006DBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006DCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006674(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_100006E2C(uint64_t a1, uint64_t *a2)
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

__n128 sub_100006E90(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100006EA4(uint64_t a1, int a2)
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

uint64_t sub_100006EEC(uint64_t result, int a2, int a3)
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

void *sub_100006F3C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100006F80()
{
  result = qword_1000105A0[0];
  if (!qword_1000105A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000105A0);
  }

  return result;
}

uint64_t sub_100006FD4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100007020(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100007068(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100007020(&qword_1000100F0, &qword_100007F08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LighthouseAVShadowEvalConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LighthouseAVShadowEvalConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100007228()
{
  result = qword_1000106B0[0];
  if (!qword_1000106B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000106B0);
  }

  return result;
}

unint64_t sub_100007280()
{
  result = qword_1000107C0;
  if (!qword_1000107C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000107C0);
  }

  return result;
}

unint64_t sub_1000072D8()
{
  result = qword_1000107C8[0];
  if (!qword_1000107C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000107C8);
  }

  return result;
}