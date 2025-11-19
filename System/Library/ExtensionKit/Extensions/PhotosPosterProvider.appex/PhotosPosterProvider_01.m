void sub_10001B640(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_10002F7D4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = objc_opt_self();
    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_27;
    }

    v6 = v5;
    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_10002F734();
      }

      else
      {
        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v10 = [v6 changeRequestForSuggestion:v8];
      if (v10)
      {
        v11 = v10;
        [v10 setFeaturedState:1];
      }
    }
  }

  if (a2 >> 62)
  {
    v12 = sub_10002F7D4();
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return;
    }
  }

  v13 = objc_opt_self();
  if (v12 < 1)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v14 = v13;
  for (j = 0; j != v12; ++j)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v16 = sub_10002F734();
    }

    else
    {
      v16 = *(a2 + 8 * j + 32);
    }

    v17 = v16;
    v18 = [v14 changeRequestForSuggestion:v16];
    if (v18)
    {
      v19 = v18;
      [v18 setFeaturedState:0];
    }
  }
}

void sub_10001B7F8()
{
  sub_10002B46C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10002F1B4();
  v9 = sub_100004368(v8);
  v103 = v10;
  v106 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10002AC04();
  v15 = v14 - v13;
  v16 = objc_opt_self();
  sub_100004120(&qword_10004A838, qword_1000356F8);
  sub_10002AC74();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000352B0;
  *(v17 + 32) = v5;
  *(v17 + 40) = v3;

  isa = sub_10002F4A4().super.isa;

  v19 = [v16 descriptorIdentifierForDescriptorType:v7 uuids:isa];

  v20 = sub_10002F404();
  v22 = v21;

  v23 = [v16 descriptorTypeStringWithType:v7];
  v100 = sub_10002F404();
  v25 = v24;

  v26 = sub_10002B34C();
  if (sub_1000115E0(v26, v27, v1))
  {

    sub_10002F5E4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v28 = sub_10002AE9C();
    if (os_log_type_enabled(v28, v29))
    {
      sub_10002AB74();
      v30 = swift_slowAlloc();
      sub_10002AB68();
      v31 = v25;
      v32 = swift_slowAlloc();
      v110[0] = v32;
      *v30 = 136315138;
      v33 = sub_100022BB4(v100, v31, v110);

      *(v30 + 4) = v33;
      sub_10002AF44();
      _os_log_impl(v34, v35, v36, v37, v38, v39);
      sub_100004168(v32);
      sub_10002AA28();

      sub_10002AA18();
    }

    else
    {
    }

    goto LABEL_29;
  }

  v98 = v25;
  sub_1000042B4(0, &qword_10004A8F0, PFPosterMediaImage_ptr);
  sub_10002AEB4();

  v40 = sub_10001C1CC();
  sub_1000042B4(0, &qword_10004A638, PFPosterDescriptor_ptr);
  sub_100004120(&qword_10004A650, qword_1000355D8);
  sub_10002ADD0();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000352A0;
  *(v41 + 32) = v40;
  v42 = v40;
  sub_10002AD5C();
  v43 = sub_10001189C();
  v44 = PRPosterRoleLockScreen;
  sub_1000042B4(0, &qword_10004A830, PRMutablePosterDescriptor_ptr);
  v45 = v44;

  v97 = v20;
  v46 = sub_10002B34C();
  v48 = sub_1000189FC(v46, v47, v45);
  v49 = [v48 assetDirectory];
  sub_10002F164();

  sub_10002F134(v50);
  v52 = v51;
  (*(v103 + 8))(v15, v106);
  v110[0] = 0;
  v107 = v43;
  LODWORD(v43) = [v43 saveToURL:v52 error:v110];

  v99 = v42;
  if (!v43)
  {
    v73 = v110[0];
    sub_10002AE28();

    v74 = sub_10002F0F4();
    swift_willThrow();
    v110[0] = v74;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_10002ABEC();
    if (swift_dynamicCast())
    {

      sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v75 = sub_10002AE9C();
      if (os_log_type_enabled(v75, v76))
      {
        sub_10002AB74();
        v77 = swift_slowAlloc();
        sub_10002ABE0();
        v78 = swift_slowAlloc();
        *v77 = 138412290;
        *(v77 + 4) = v108;
        *v78 = v108;
        v79 = v108;
        sub_10002AF44();
        _os_log_impl(v80, v81, v82, v83, v84, v85);
        sub_100010800(v78, &qword_100049CC0, &qword_1000355C0);
        sub_10002AA28();

        sub_10002AA18();
      }

      swift_willThrow();
    }

    v86 = v107;
    goto LABEL_20;
  }

  v53 = v110[0];
  v54 = PPGalleryOptionsForDescriptorType([v107 descriptorType], v42);
  v110[0] = 0;
  v55 = [v48 storeGalleryOptions:v54 error:v110];
  v56 = v110[0];
  if (!v55)
  {
    v87 = v110[0];

    v88 = sub_10002F0F4();
    swift_willThrow();
    v110[0] = v88;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_10002ABEC();
    if (!swift_dynamicCast())
    {

      goto LABEL_21;
    }

    v105 = v54;

    v89 = sub_10002F5D4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v90 = qword_10004B590;
    if (os_log_type_enabled(qword_10004B590, v89))
    {
      sub_10002AB80();
      v91 = swift_slowAlloc();
      sub_10002ABC8();
      v109 = swift_slowAlloc();
      *v91 = 136315394;
      sub_100022BB4(v97, v22, &v109);
      v102 = v89;
      sub_10002AE28();

      sub_10002AF64();
      v92 = [v108 localizedDescription];
      sub_10002F404();

      v93 = sub_10002AFD4();
      sub_100022BB4(v93, v94, v95);
      sub_10002AD80();

      *(v91 + 14) = v92;
      _os_log_impl(&_mh_execute_header, v90, v102, "Failed to store galleryOptions for descriptor '%s': %s", v91, 0x16u);
      swift_arrayDestroy();
      sub_10002AAB4();

      sub_10002AA18();
    }

    else
    {
    }

    swift_willThrow();

    v86 = v105;
LABEL_20:

LABEL_21:

    goto LABEL_29;
  }

  v104 = v54;
  v96 = v45;
  v57 = objc_opt_self();
  v58 = v56;
  v59 = sub_10002F3D4();
  v60 = [v57 lookUpInfoForAssetCatalogIdentifier:v59];

  v61 = [objc_opt_self() galleryOptionsWithAssetLookupInfo:v60];
  [v48 setPreferredGalleryOptions:v61];
  v62 = sub_100018A6C(v107);
  sub_100029174(v62, v63, v48);
  v64 = sub_10002F5E4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v65 = qword_10004B590;
  if (os_log_type_enabled(qword_10004B590, v64))
  {
    sub_10002AB80();
    v66 = swift_slowAlloc();
    sub_10002ABC8();
    v110[0] = swift_slowAlloc();
    *v66 = 136315394;
    v67 = sub_100022BB4(v100, v98, v110);
    v101 = v60;
    v68 = v67;

    *(v66 + 4) = v68;
    *(v66 + 12) = 2080;
    v69 = sub_10002B34C();
    v72 = sub_100022BB4(v69, v70, v71);

    *(v66 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v65, v64, "Added %s descriptor %s", v66, 0x16u);
    swift_arrayDestroy();
    sub_10002AA38();

    sub_10002AA88();
  }

  else
  {
  }

LABEL_29:
  sub_10002B4BC();
}

id sub_10001C1CC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_10002F3D4();

  v2 = [v0 initWithImageName:v1];

  return v2;
}

uint64_t sub_10001C240(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10002AE84();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10001C270()
{
  v1 = sub_1000292C8(*(v0 + 24), &selRef_identifier);
  *(v0 + 40) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (qword_100049690 != -1)
    {
      sub_10002AC8C();
    }

    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    v7[2] = v5;
    v7[3] = v6;
    v7[4] = v3;
    v7[5] = v4;
    v8 = sub_10002B40C(dword_100035730);
    *(v0 + 56) = v8;
    *v8 = v0;
    v8[1] = sub_10001C5B0;

    return v26("updateConfiguration", 19, 2, sub_100029E5C, v7);
  }

  else
  {
    v10 = PPPosterOverrideConfigurationFromSessionInfo(*(v0 + 24));
    *(v0 + 64) = v10;
    if (v10)
    {
      v11 = swift_task_alloc();
      *(v0 + 72) = v11;
      *v11 = v0;
      sub_10002B1D4(v11);

      return sub_10001DD38();
    }

    else if (PPPosterLegacyConfigurationTypeFromSessionInfo(*(v0 + 24)) == 2)
    {
      v12 = swift_task_alloc();
      *(v0 + 88) = v12;
      *v12 = v0;
      sub_10002B1D4(v12);

      return sub_10001F070();
    }

    else
    {
      sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v13 = sub_10002AD68();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 16);
        sub_10002AB74();
        swift_slowAlloc();
        sub_10002ABE0();
        v16 = swift_slowAlloc();
        sub_10002ACE8(v16, 5.7779e-34);
        sub_10002AAD4();
        _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
        sub_100010800(v16, &qword_100049CC0, &qword_1000355C0);
        sub_10002AA18();

        sub_10002AB08();
      }

      v22 = *(v0 + 16);
      sub_100010C84();
      v27 = v23;
      v25 = v24;

      return v27(v25);
    }
  }
}

uint64_t sub_10001C5B0()
{
  sub_100010C44();
  v3 = v2;
  sub_10002AC5C();
  v5 = v4;
  sub_10002ABD4();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  sub_100010AE8();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    v12 = *(v5 + 40);
    v13 = *(v5 + 48);

    v14 = *(v9 + 8);

    return v14(v3);
  }
}

uint64_t sub_10001C6E4()
{
  sub_100010F34();
  sub_10002AC5C();
  sub_10002ABD4();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  sub_10002AE84();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10001C7D4()
{
  sub_100010F34();
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  v2 = *(v0 + 80);
  sub_10002AC68();

  return v3();
}

uint64_t sub_10001C834()
{
  sub_100010F34();
  v2 = v1;
  sub_10002AC5C();
  v4 = *(v3 + 88);
  v5 = *v0;
  sub_100010AE8();
  *v6 = v5;

  sub_10002AC68();

  return v7(v2);
}

uint64_t sub_10001C940(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_10002AC74();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  v14 = a4;
  v15 = a1;

  return sub_10001179C(a7, v12);
}

uint64_t sub_10001C9C8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10001CAA0;

  return sub_10001C240(v8, v9);
}

uint64_t sub_10001CAA0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;
  sub_100010AE8();
  *v11 = v10;

  v12 = *(v5 + 40);
  if (v3)
  {
    sub_10002F0E4();
    sub_100010B50();

    (v12)[2](v12, 0, a1);

    _Block_release(v12);
  }

  else
  {
    (v12)[2](*(v5 + 40), a1, 0);
    _Block_release(v12);
  }

  v13 = *(v10 + 8);

  return v13();
}

void sub_10001CC6C()
{
  sub_100010CCC();
  v197 = v2;
  v198 = v3;
  v202 = v4;
  sub_10002B208(__stack_chk_guard);
  v203 = sub_10002F1B4();
  v5 = sub_100004368(v203);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100010B68();
  v188 = (v10 - v11);
  sub_10002ABF8();
  __chkstk_darwin(v12);
  sub_10002AF24();
  __chkstk_darwin(v13);
  sub_10002AC50();
  v192 = v14;
  sub_10002ABF8();
  __chkstk_darwin(v15);
  sub_10002AC50();
  v201 = v16;
  sub_10002ABF8();
  __chkstk_darwin(v17);
  sub_10002AC50();
  v199 = v18;
  sub_10002ABF8();
  __chkstk_darwin(v19);
  sub_10002AC50();
  v196 = v20;
  sub_10002ABF8();
  __chkstk_darwin(v21);
  sub_10002AC50();
  v200 = v22;
  sub_10002ABF8();
  __chkstk_darwin(v23);
  sub_10002B260();
  __chkstk_darwin(v24);
  v26 = &v186 - v25;
  sub_10002F5E4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v27 = qword_10004B590;
  v28 = sub_10002AD68();
  if (os_log_type_enabled(v28, v29))
  {
    sub_10002AB80();
    v30 = swift_slowAlloc();
    sub_10002ABE0();
    v31 = swift_slowAlloc();
    sub_10002AB68();
    v32 = swift_slowAlloc();
    v206[0] = v32;
    *v30 = 138412546;
    v33 = v202;
    *(v30 + 4) = v202;
    *v31 = v33;
    sub_10002AE6C();
    v35 = v34;
    *(v30 + 14) = sub_100022BB4(v197, v198, v206);
    sub_10002AAD4();
    _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
    sub_100010800(v31, &qword_100049CC0, &qword_1000355C0);
    sub_10002AAC4();

    sub_100004168(v32);
    sub_10002AB08();

    sub_10002AB08();
  }

  v41 = [v202 assetDirectory];
  sub_10002F164();

  v42 = objc_opt_self();
  sub_10002F134(v43);
  v45 = v44;
  v206[0] = 0;
  v46 = &off_100047000;
  v47 = [v42 loadFromURL:v44 error:v206];

  if (!v47)
  {
    v61 = v206[0];
    sub_10002AE28();
    v62 = sub_10002F0F4();

    swift_willThrow();
    v206[0] = v62;
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_10002AEA8();
    swift_dynamicCast();
    v63 = v204;
    v64 = sub_10002F5D4();
    (*(v7 + 16))(v1, v26, v203);
    if (os_log_type_enabled(v27, v64))
    {
      sub_10002AB80();
      v65 = swift_slowAlloc();
      v193 = v26;
      v66 = v65;
      sub_10002ABC8();
      v205 = swift_slowAlloc();
      *v66 = 136315394;
      sub_100029E04();
      v67 = v203;
      v68 = sub_10002F824();
      v70 = v69;
      v198 = v27;
      v71 = *(v7 + 8);
      v71(v1, v67);
      sub_100022BB4(v68, v70, &v205);
      sub_10002AE28();

      sub_10002AF64();
      v72 = [v63 localizedDescription];
      sub_10002F404();
      sub_10002B040();

      v73 = sub_10002AFD4();
      sub_100022BB4(v73, v74, v75);
      sub_10002AD80();

      *(v66 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v198, v64, "Failed to load current configuration model from url '%s': %s", v66, 0x16u);
      swift_arrayDestroy();
      sub_10002AA28();

      sub_10002AA18();

      v76 = sub_10002AFC8();
      (v71)(v76);
    }

    else
    {

      v162 = *(v7 + 8);
      v163 = v203;
      v162(v1, v203);
      v162(v26, v163);
    }

    v176 = v202;
    sub_100010D64();

LABEL_29:
    sub_100010CE4();
    return;
  }

  v48 = v206[0];
  v195 = v47;
  v49 = sub_10002F5B4();
  v50 = *(v7 + 16);
  v51 = sub_10002AFE0();
  v189 = v53;
  v190 = v52;
  v53(v51);
  v54 = os_log_type_enabled(v27, v49);
  v193 = v26;
  v191 = v7;
  if (v54)
  {
    sub_10002AB74();
    v55 = swift_slowAlloc();
    v56 = v203;
    v57 = v55;
    sub_10002AB68();
    v58 = swift_slowAlloc();
    v206[0] = v58;
    *v57 = 136315138;
    sub_100029E04();
    sub_10002F824();
    sub_10002B334();
    v194 = *(v7 + 8);
    v194(v0, v56);
    v59 = sub_10002ADC4();
    sub_100022BB4(v59, v26, v60);
    sub_10002AEB4();

    *(v57 + 4) = v0;
    _os_log_impl(&_mh_execute_header, v27, v49, "Successfully loaded current configuration model from url '%s'", v57, 0xCu);
    sub_100004168(v58);
    sub_10002AAC4();

    v46 = &off_100047000;
    sub_10002AB08();
  }

  else
  {
    v194 = *(v7 + 8);
    v194(v0, v203);
  }

  v77 = v195;
  v78 = v196;
  v79 = v201;
  v80 = [v195 identifier];

  v81 = sub_10002F404();
  v201 = v82;

  sub_10002F5E4();
  sub_10002AD74();
  if (os_log_type_enabled(v27, v83))
  {
    sub_10002AB74();
    v84 = swift_slowAlloc();
    sub_10002AB68();
    v85 = swift_slowAlloc();
    v206[0] = v85;
    *v84 = 136315138;
    *(v84 + 4) = sub_10002B088();
    _os_log_impl(&_mh_execute_header, v27, v80, "Starting to update configuration '%s'", v84, 0xCu);
    sub_100004168(v85);
    sub_10002AA18();

    sub_10002AA78();
  }

  sub_10002F124();
  sub_10002F154();
  sub_10002F134(v86);
  v88 = v87;
  v206[0] = 0;
  v89 = [v42 v46[268]];

  if (v89)
  {
    v90 = v206[0];
    v91 = v89;
    sub_10002F5B4();
    v92 = sub_10002AF34();
    v94 = os_log_type_enabled(v92, v93);
    v197 = v81;
    v188 = v91;
    if (v94)
    {
      sub_10002AB80();
      v95 = swift_slowAlloc();
      sub_10002ABE0();
      v96 = swift_slowAlloc();
      sub_10002AB68();
      v97 = swift_slowAlloc();
      v206[0] = v97;
      *v95 = 136315394;
      *(v95 + 4) = sub_100022BB4(v197, v201, v206);
      *(v95 + 12) = 2112;
      *(v95 + 14) = v91;
      *v96 = v89;
      sub_10002B0A4(&_mh_execute_header, v27, v88, "Successfully loaded updated configuration model '%s': %@");
      sub_100010800(v96, &qword_100049CC0, &qword_1000355C0);
      sub_10002AA18();

      sub_100004168(v97);
      sub_10002AB08();

      sub_10002AB08();
    }

    else
    {
    }

    sub_10002F5E4();
    sub_10002AD74();
    if (os_log_type_enabled(v27, v119))
    {
      sub_10002AB74();
      v120 = swift_slowAlloc();
      sub_10002AB68();
      v121 = swift_slowAlloc();
      v206[0] = v121;
      *v120 = 136315138;
      *(v120 + 4) = sub_10002B088();
      sub_10002AAD4();
      _os_log_impl(v122, v123, v124, v125, v126, 0xCu);
      sub_100004168(v121);
      sub_10002AA78();

      sub_10002AB08();
    }

    v187 = [objc_opt_self() mutableConfiguration];
    v127 = [v187 assetDirectory];
    sub_10002F164();

    v128 = sub_10002F5E4();
    v129 = v79;
    v130 = v79;
    v131 = v78;
    v132 = v78;
    v133 = v189;
    (v189)(v129, v132, v203);
    v134 = v192;
    v135 = sub_10002B388();
    v133(v135);
    if (os_log_type_enabled(v27, v128))
    {
      sub_10002AB68();
      v136 = swift_slowAlloc();
      v198 = v27;
      v137 = v136;
      v206[0] = swift_slowAlloc();
      *v137 = 136315650;
      *(v137 + 4) = sub_10002B088();
      v138 = v203;
      *(v137 + 12) = 2080;
      v139 = v130;
      v140 = v134;
      v141 = v139;
      sub_10002F184();
      sub_10002B340();
      v142 = v139;
      v143 = v194;
      v194(v142, v138);
      v144 = sub_10002AC38();
      sub_100022BB4(v144, v145, v146);
      sub_10002B010();

      *(v137 + 14) = v141;
      *(v137 + 22) = 2080;
      v147 = v140;
      sub_10002F184();
      sub_10002B340();
      v148 = sub_10002B34C();
      v143(v148);
      v149 = sub_10002AC38();
      sub_100022BB4(v149, v150, v151);
      sub_10002B010();
      v152 = v196;

      *(v137 + 24) = v140;
      v27 = v198;
      _os_log_impl(&_mh_execute_header, v198, v128, "Copying resources for configuration '%s' from '%s' to '%s'", v137, 0x20u);
      swift_arrayDestroy();
      sub_10002AA18();

      sub_10002AA78();
    }

    else
    {
      v159 = v134;
      v160 = v203;
      v147 = v194;
      v194(v159, v203);
      (v147)(v130, v160);
      v152 = v131;
    }

    sub_100018ABC(v152, v199, v153, v154, v155, v156, v157, v158, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, SHIDWORD(v195), v196, v197);
    v161 = v187;
    v165 = v164;
    sub_10002F5B4();
    sub_10002AD74();
    if (os_log_type_enabled(v27, v166))
    {
      sub_10002AB80();
      v168 = swift_slowAlloc();
      sub_10002AB68();
      v169 = swift_slowAlloc();
      v206[0] = v169;
      *v168 = 134218242;
      *(v168 + 4) = v165;
      sub_10002AE6C();
      v170 = sub_100022BB4(v197, v201, v206);

      *(v168 + 14) = v170;
      sub_10002AAD4();
      _os_log_impl(v171, v172, v173, v174, v175, 0x16u);
      sub_100004168(v169);
      sub_10002AA18();

      sub_10002AB08();
    }

    else
    {
    }

    sub_10002AF54();
    v147();
    v183 = sub_10002AEC0();
    (v147)(v183);
    v184 = sub_10002B248();
    (v147)(v184);
    v185 = sub_10002AFC8();
    (v147)(v185);
    goto LABEL_29;
  }

  v98 = v206[0];
  sub_10002F0F4();

  swift_willThrow();
  v99 = sub_10002F5D4();
  v100 = v188;
  (v189)(v188, v78, v203);
  if (os_log_type_enabled(v27, v99))
  {
    sub_10002AB68();
    v101 = swift_slowAlloc();
    sub_10002ABE0();
    v102 = swift_slowAlloc();
    v103 = v203;
    v104 = v81;
    v105 = v102;
    sub_10002ABC8();
    v199 = swift_slowAlloc();
    v206[0] = v199;
    *v101 = 136315650;
    v106 = sub_10002ADC4();
    sub_100022BB4(v106, v201, v107);
    sub_10002AE28();

    *(v101 + 4) = v104;
    sub_10002AE6C();
    sub_100029E04();
    v108 = sub_10002F824();
    v110 = v109;
    v198 = v27;
    v111 = v100;
    v112 = v194;
    v194(v111, v103);
    v113 = sub_10002ADC4();
    sub_100022BB4(v113, v110, v114);
    sub_10002AE28();

    *(v101 + 14) = v108;
    *(v101 + 22) = 2112;
    swift_errorRetain();
    v115 = _swift_stdlib_bridgeErrorToNSError();
    *(v101 + 24) = v115;
    *v105 = v115;
    _os_log_impl(&_mh_execute_header, v198, v99, "Failed to load updated configuration model '%s' from url '%s': %@", v101, 0x20u);
    sub_100010800(v105, &qword_100049CC0, &qword_1000355C0);
    sub_10002AA28();

    swift_arrayDestroy();
    sub_10002AA38();

    sub_10002AB08();

    v116 = sub_10002AEC0();
    v112(v116);
    v117 = sub_10002B248();
    v112(v117);
    v118 = sub_10002AFC8();
    v112(v118);
  }

  else
  {

    sub_10002AF54();
    (v98)();
    v177 = sub_10002AEC0();
    (v98)(v177);
    v178 = sub_10002B248();
    (v98)(v178);
    v179 = sub_10002AFC8();
    (v98)(v179);
  }

  sub_100010CE4();

  v182 = v180;
}

uint64_t sub_10001DD38()
{
  sub_100010F34();
  v0[31] = v1;
  v0[32] = v2;
  v3 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  sub_10002AE90(v3);
  v5 = *(v4 + 64) + 15;
  v0[33] = swift_task_alloc();
  v6 = sub_10002F1B4();
  v0[34] = v6;
  sub_10002AEE4(v6);
  v0[35] = v7;
  v9 = *(v8 + 64) + 15;
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  sub_10002AE84();

  return _swift_task_switch(v10, v11, v12);
}

void sub_10001DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10002B3B8();
  v16 = [objc_opt_self() mutableConfiguration];
  *(v15 + 312) = v16;
  v17 = objc_opt_self();
  *(v15 + 176) = 0;
  v18 = [v17 openPhotoLibraryWithWellKnownIdentifier:1 error:v15 + 176];
  *(v15 + 320) = v18;
  v19 = *(v15 + 176);
  if (v18)
  {
    v20 = v18;
    v21 = *(v15 + 304);
    v22 = *(v15 + 248);
    v23 = v19;
    v24 = [v22 assetDirectory];
    sub_10002F164();

    objc_opt_self();
    sub_10002F134(v25);
    v27 = v26;
    *(v15 + 200) = 0;
    v28 = sub_10002B358();
    v30 = [v28 v29];

    v31 = *(v15 + 200);
    if (v30)
    {
      v32 = v30;
      v33 = v31;
    }

    else
    {
      v57 = v31;
      sub_100010CB8();
      sub_10002F0F4();

      swift_willThrow();

      v58 = [objc_allocWithZone(PFPosterConfiguration) initWithConfigurationType:0];
      if (!v58)
      {
        __break(1u);
_swift_continuation_await:
        _swift_continuation_await(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14);
        return;
      }

      v32 = v58;
    }

    a9 = v15 + 144;
    *(v15 + 328) = v32;
    v66 = *(v15 + 264);
    v67 = *(v15 + 272);
    v68 = *(v15 + 256);
    v69 = v32;
    [v69 setOptions:{objc_msgSend(v69, "options") | 8}];

    v70 = [v16 assetDirectory];
    sub_10002F164();

    sub_1000103AC(v66, 0, 1, v67);
    objc_allocWithZone(PUWallpaperConfigurationUpdater);
    v71 = v20;
    swift_unknownObjectRetain();
    v72 = sub_100021FE4(v71, v69, v66, v68);
    *(v15 + 336) = v72;
    *(v15 + 16) = v15;
    *(v15 + 56) = v15 + 144;
    *(v15 + 24) = sub_10001E36C;
    v73 = swift_continuation_init();
    *(v15 + 136) = sub_100004120(&unk_10004A8E0, &qword_100035728);
    *(v15 + 80) = _NSConcreteStackBlock;
    *(v15 + 88) = 1107296256;
    *(v15 + 96) = sub_10001EEEC;
    *(v15 + 104) = &unk_100041300;
    *(v15 + 112) = v73;
    [v72 attemptUpdateWithCompletionBlock:v15 + 80];
    sub_10002ACB8();

    goto _swift_continuation_await;
  }

  v34 = v19;
  sub_10002AE40();
  v35 = sub_10002F0F4();

  swift_willThrow();
  *(v15 + 184) = v35;
  sub_100004120(&qword_10004A630, &unk_100035270);
  sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
  sub_10002ABEC();
  if (swift_dynamicCast())
  {
    v36 = *(v15 + 192);
    sub_10002F5D4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v37 = sub_10002AD68();
    if (os_log_type_enabled(v37, v38))
    {
      sub_10002AB74();
      swift_slowAlloc();
      sub_10002ABE0();
      v39 = swift_slowAlloc();
      sub_10002ACE8(v39, 5.7779e-34);
      sub_10002AAD4();
      _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
      sub_100010800(v39, &qword_100049CC0, &qword_1000355C0);
      sub_10002AA18();

      sub_10002AB08();
    }

    v45 = *(v15 + 248);

    v46 = *(v15 + 184);
    v47 = v45;

    v48 = *(v15 + 248);
    sub_10002B198();

    sub_10002AC68();
    sub_10002ACB8();

    v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_10002ACB8();
  }
}

uint64_t sub_10001E36C()
{
  sub_100010F34();
  v1 = *v0;
  sub_10002ABD4();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 344) = v5;
  if (v5)
  {
  }

  sub_10002AE84();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10001E4A4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 168);
  v120 = *(v0 + 160);
  v5 = [*(v0 + 312) assetDirectory];
  sub_10002F164();

  sub_10002F134(v6);
  v8 = v7;
  *(v0 + 208) = 0;
  v9 = (v0 + 208);
  v10 = (v0 + 312);
  v11 = sub_10002B04C();
  LODWORD(v5) = [v11 v12];

  v13 = *(v0 + 208);
  if (!v5)
  {
    v119 = v2;
    v45 = *v10;
    v46 = v13;

    v47 = sub_10002F0F4();
    goto LABEL_11;
  }

  v14 = v13;
  v15 = sub_100029328(v2);
  if (!v15)
  {
    v87 = v3;
    v89 = *(v0 + 328);
    v88 = *(v0 + 336);
    v90 = *(v0 + 320);
    v112 = *(v0 + 296);
    v115 = *(v0 + 304);
    v91 = *(v0 + 272);
    v92 = *(v0 + 280);

    swift_unknownObjectRelease();
    v93 = *(v92 + 8);
    v93(v112, v91);
    v93(v115, v91);
    goto LABEL_26;
  }

  v16 = v15;
  if (!sub_1000126D0(v15))
  {
    v94 = v3;
    v95 = v2;
    v97 = *(v0 + 328);
    v96 = *(v0 + 336);
    v108 = *(v0 + 320);
    v113 = *(v0 + 296);
    v116 = *(v0 + 304);
    v99 = *(v0 + 272);
    v98 = *(v0 + 280);

    swift_unknownObjectRelease();

    v100 = *(v98 + 8);
    v100(v113, v99);
    v100(v116, v99);
    goto LABEL_26;
  }

  v117 = v3;
  v119 = v2;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = sub_10002F734();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v17 = *(v16 + 32);
  }

  v18 = v17;
  v19 = *(v0 + 288);
  v20 = *(v0 + 280);
  v109 = *(v0 + 296);
  v114 = *(v0 + 272);

  v21 = [v18 subpath];

  sub_10002F404();
  v104 = objc_opt_self();
  swift_unknownObjectRetain();
  v22 = v117;
  v23 = v120;
  sub_10002B064();
  sub_10002F154();

  sub_10002F134(v24);
  v26 = v25;
  v110 = *(v20 + 8);
  v110(v19, v114);
  *(v0 + 232) = 0;
  v27 = [v104 saveSegmentationItem:v4 compoundLayerStack:v22 style:v23 toWallpaperURL:v26 error:v0 + 232];

  v105 = v23;
  swift_unknownObjectRelease();
  v28 = *(v0 + 232);
  v29 = *(v0 + 312);
  if (!v27)
  {
    v103 = v28;

    v47 = sub_10002F0F4();
    v3 = v117;
    goto LABEL_11;
  }

  v30 = *(v0 + 296);
  v31 = v28;
  sub_10002F134(v32);
  v34 = v33;
  *(v0 + 240) = 0;
  v35 = sub_10002B358();
  v37 = [v35 v36];

  v38 = *(v0 + 240);
  if (!v37)
  {
    v47 = sub_10002F0F4();

    v3 = v117;
LABEL_11:
    swift_willThrow();
    *(v0 + 216) = v47;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    if (swift_dynamicCast())
    {

      v48 = *(v0 + 224);
      v49 = sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v118 = v3;
      v50 = qword_10004B590;
      if (sub_10002B104())
      {
        sub_10002AB74();
        v51 = swift_slowAlloc();
        sub_10002ABE0();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        *(v51 + 4) = v48;
        *v52 = v48;
        v53 = v48;
        _os_log_impl(&_mh_execute_header, v50, v49, "Failed to run segmentation with override configuration: %@", v51, 0xCu);
        sub_100010800(v52, &qword_100049CC0, &qword_1000355C0);
        sub_10002AA28();

        sub_10002AAB4();
      }

      v10 = (v0 + 248);
      v55 = *(v0 + 328);
      v54 = *(v0 + 336);
      v57 = *(v0 + 312);
      v56 = *(v0 + 320);
      v58 = *(v0 + 296);
      v106 = *(v0 + 304);
      v111 = *(v0 + 248);
      v59 = v48;
      v60 = *(v0 + 272);
      v61 = *(v0 + 280);

      swift_unknownObjectRelease();
      v62 = *(v61 + 8);
      v63 = sub_10002AC80();
      v62(v63);
      (v62)(v106, v60);
      v64 = *(v0 + 216);
      v65 = v111;
LABEL_22:

      goto LABEL_26;
    }

    v66 = v3;
    v67 = *(v0 + 336);
    v68 = *(v0 + 320);
    v69 = *(v0 + 296);
    v107 = *(v0 + 304);
    v71 = *(v0 + 272);
    v70 = *(v0 + 280);

    swift_unknownObjectRelease();
    v72 = *(v70 + 8);
    v73 = sub_10002AFD4();
    v72(v73);
    (v72)(v107, v71);
    v74 = *(v0 + 216);

    *(v0 + 184) = v47;
    sub_100004120(&qword_10004A630, &unk_100035270);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v9 = *(v0 + 192);
    sub_10002F5D4();
    if (qword_100049688 == -1)
    {
LABEL_19:
      v76 = sub_10002AD68();
      if (os_log_type_enabled(v76, v77))
      {
        sub_10002AB74();
        swift_slowAlloc();
        sub_10002ABE0();
        v78 = swift_slowAlloc();
        sub_10002ACE8(v78, 5.7779e-34);
        sub_10002AAD4();
        _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
        sub_100010800(v78, &qword_100049CC0, &qword_1000355C0);
        sub_10002AA18();

        sub_10002AB08();
      }

      v10 = (v0 + 248);
      v84 = *(v0 + 248);

      v85 = *(v0 + 184);
      v86 = v84;
      goto LABEL_22;
    }

LABEL_33:
    sub_10002AA04();
    swift_once();
    goto LABEL_19;
  }

  v39 = *(v0 + 336);
  v40 = *(v0 + 320);
  v41 = *(v0 + 296);
  v42 = *(v0 + 304);
  v43 = *(v0 + 272);

  swift_unknownObjectRelease();
  v110(v41, v43);
  v44 = sub_10002B37C();
  (v110)(v44);
LABEL_26:
  v101 = *v10;
  sub_10002B198();

  sub_10002AC68();

  return v102(v101);
}

void sub_10001ECB4()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v0 + 272);
  v7 = *(v0 + 280);
  swift_willThrow();

  v8 = *(v7 + 8);
  v9 = sub_10002B064();
  v10(v9);
  *(v0 + 184) = *(v0 + 344);
  sub_100004120(&qword_10004A630, &unk_100035270);
  sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
  sub_10002ABEC();
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 192);
    sub_10002F5D4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v12 = sub_10002AD68();
    if (os_log_type_enabled(v12, v13))
    {
      sub_10002AB74();
      swift_slowAlloc();
      sub_10002ABE0();
      v14 = swift_slowAlloc();
      sub_10002ACE8(v14, 5.7779e-34);
      sub_10002AAD4();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      sub_100010800(v14, &qword_100049CC0, &qword_1000355C0);
      sub_10002AA18();

      sub_10002AB08();
    }

    v20 = *(v0 + 248);

    v21 = *(v0 + 184);
    v22 = v20;

    v23 = *(v0 + 248);
    sub_10002B198();

    sub_10002AC68();
    sub_10002B4A4();

    __asm { BRAA            X2, X16 }
  }

  sub_10002B4A4();
}

uint64_t *sub_10001EEEC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  result = sub_100010414((a1 + 32), *(a1 + 56));
  v12 = *result;
  if (a6)
  {
    return sub_10001EFC0(v12, a6);
  }

  if (!a3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!a4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!a5)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v13 = a2;
  v14 = a3;
  v15 = a4;
  swift_unknownObjectRetain();

  return sub_10001F02C(v12, v13, v14, v15, a5);
}

uint64_t sub_10001EFC0(uint64_t a1, uint64_t a2)
{
  sub_100004120(&qword_10004A630, &unk_100035270);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_10001F02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1 + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  return _swift_continuation_throwingResume();
}

uint64_t sub_10001F050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return _swift_continuation_throwingResume();
}

uint64_t sub_10001F070()
{
  sub_100010F34();
  v0[24] = v1;
  v0[25] = v2;
  v3 = sub_10002F1B4();
  v0[26] = v3;
  sub_10002AEE4(v3);
  v0[27] = v4;
  v6 = *(v5 + 64) + 15;
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  sub_10002AE84();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10001F164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[29];
  v16 = v14[30];
  v17 = v14[27];
  v18 = v14[28];
  v19 = v14[26];
  v37 = v14[25];
  v20 = v14[24];
  v21 = [objc_opt_self() mutableConfiguration];
  v14[31] = v21;
  v22 = [v21 assetDirectory];
  sub_10002F164();

  v23 = [v20 assetDirectory];
  sub_10002F164();

  v14[32] = [objc_allocWithZone(PFPosterConfiguration) initWithConfigurationType:0];
  sub_1000042B4(0, &qword_10004A858, PUWallpaperPosterMigrator_ptr);
  v24 = *(v17 + 16);
  v25 = sub_10002AC38();
  v26(v25);
  v27 = sub_10001FF48(v18, v37);
  v14[33] = v27;
  v14[2] = v14;
  v14[7] = v14 + 18;
  v14[3] = sub_10001F3B8;
  v28 = swift_continuation_init();
  v14[17] = sub_100004120(&unk_10004A8C0, &unk_100035710);
  v14[10] = _NSConcreteStackBlock;
  v14[11] = 1107296256;
  v14[12] = sub_10001FFEC;
  v14[13] = &unk_1000412D8;
  v14[14] = v28;
  [v27 attemptMigrationWithCompletionBlock:?];

  return _swift_continuation_await(v14 + 2, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10001F3B8()
{
  sub_100010F34();
  v1 = *v0;
  sub_10002ABD4();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 272) = *(v4 + 48);
  sub_10002AE84();

  return _swift_task_switch(v5, v6, v7);
}

void sub_10001F4E8()
{
  v1 = *(v0 + 144);
  v119 = *(v0 + 152);
  v2 = [objc_allocWithZone(PFPosterEditConfiguration) init];
  v3 = [v1 portraitLayerStack];
  v4 = &off_100047000;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 layout];
    [v6 normalizedVisibleFrame];
    sub_100010F14();

    v7 = PXRectUnit[1];
    v8 = PXRectUnit[2];
    v9 = PXRectUnit[3];
    sub_100010F00();
    PXRectFlippedVertically();
    sub_100010F14();
  }

  else
  {
    sub_10002B294();
  }

  v10 = sub_100010F00();
  [v11 v12];
  v13 = [v1 landscapeLayerStack];
  if (v13)
  {
    v14 = v13;
    v15 = [v14 layout];
    [v15 normalizedVisibleFrame];
    sub_100010F14();

    v16 = PXRectUnit[1];
    v17 = PXRectUnit[2];
    v18 = PXRectUnit[3];
    sub_100010F00();
    PXRectFlippedVertically();
    sub_100010F14();
  }

  else
  {
    sub_10002B294();
  }

  v19 = sub_100010F00();
  [v20 v21];
  v120 = v1;
  v22 = [v1 portraitLayerStack];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_10;
  }

  v24 = v22;
  v25 = [v24 layout];
  [v25 normalizedAdaptiveVisibleFrame];
  sub_100010F14();

  v122.origin.x = sub_100010F00();
  if (CGRectIsNull(v122))
  {

LABEL_10:
    sub_10002B294();

    goto LABEL_12;
  }

  v26 = [v24 layout];
  [v26 normalizedAdaptiveVisibleFrame];
  sub_100010F14();

  v27 = PXRectUnit[1];
  v28 = PXRectUnit[2];
  v29 = PXRectUnit[3];
  sub_100010F00();
  PXRectFlippedVertically();
  sub_100010F14();

LABEL_12:
  v30 = sub_100010F00();
  [v31 v32];
  v33 = [v1 landscapeLayerStack];
  v34 = v33;
  if (!v33)
  {
LABEL_15:
    sub_10002B294();

    goto LABEL_17;
  }

  v35 = v33;
  v36 = [v35 layout];
  [v36 normalizedAdaptiveVisibleFrame];
  sub_100010F14();

  v123.origin.x = sub_100010F00();
  if (CGRectIsNull(v123))
  {

    goto LABEL_15;
  }

  v37 = [v35 layout];
  [v37 normalizedAdaptiveVisibleFrame];
  sub_100010F14();

  v38 = PXRectUnit[1];
  v39 = PXRectUnit[2];
  v40 = PXRectUnit[3];
  sub_100010F00();
  PXRectFlippedVertically();
  sub_100010F14();

LABEL_17:
  v41 = *(v0 + 256);
  v42 = sub_100010F00();
  [v43 v44];
  [v41 setEditConfiguration:v2];
  sub_100004120(&qword_10004A650, qword_1000355D8);
  sub_10002ADD0();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1000352A0;
  v46 = PFPosterMedia_ptr;
  v47 = objc_allocWithZone(PFPosterMedia);
  *(v45 + 32) = sub_100021CA8(0, 0);
  v48 = sub_10002B034();
  sub_1000291D8(v48, v49, v50, PFPosterMedia_ptr, v51);
  v52 = sub_100029328(v41);
  if (!v52)
  {
    v84 = *(v0 + 256);
    v83 = *(v0 + 264);
    v85 = *(v0 + 240);
    v86 = *(v0 + 232);
    v87 = *(v0 + 208);
    v88 = *(v0 + 216);

    swift_unknownObjectRelease();
    v89 = *(v88 + 8);
    v89(v86, v87);
    v90 = sub_10002B370();
    (v89)(v90);
    goto LABEL_32;
  }

  v53 = v52;
  if (!sub_1000126D0(v52))
  {
    v104 = *(v0 + 256);
    v105 = *(v0 + 264);
    v106 = *(v0 + 240);
    v107 = *(v0 + 232);
    v109 = *(v0 + 208);
    v108 = *(v0 + 216);

    swift_unknownObjectRelease();

    v110 = *(v108 + 8);
    v111 = sub_10002AD30();
    v110(v111);
    (v110)(v106, v109);
    goto LABEL_32;
  }

  v118 = v2;
  if ((v53 & 0xC000000000000001) != 0)
  {
    v54 = sub_10002F734();
  }

  else
  {
    if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v54 = *(v53 + 32);
  }

  v55 = v54;
  v56 = *(v0 + 240);
  v57 = *(v0 + 216);
  v45 = *(v0 + 224);
  v46 = *(v0 + 208);

  v58 = [v55 subpath];

  sub_10002F404();
  v59 = objc_opt_self();
  swift_unknownObjectRetain();
  v60 = v120;
  sub_10002F154();

  sub_10002F134(v61);
  v63 = v62;
  v65 = *(v57 + 8);
  v4 = (v57 + 8);
  v64 = v65;
  v66 = sub_10002AD30();
  (v65)(v66);
  *(v0 + 176) = 0;
  v67 = [v59 saveSegmentationItem:v119 compoundLayerStack:v60 style:0 toWallpaperURL:v63 error:v0 + 176];

  swift_unknownObjectRelease();
  v68 = *(v0 + 176);
  if (v67)
  {
    v69 = *(v0 + 256);
    v70 = *(v0 + 240);
    v71 = v68;
    sub_10002F134(v72);
    v74 = v73;
    *(v0 + 184) = 0;
    v75 = sub_10002B04C();
    LODWORD(v69) = [v75 v76];

    v68 = *(v0 + 184);
    if (v69)
    {
      v78 = *(v0 + 256);
      v77 = *(v0 + 264);
      v79 = *(v0 + 248);
      v121 = *(v0 + 240);
      v80 = *(v0 + 232);
      v81 = *(v0 + 208);
      v82 = v68;

      swift_unknownObjectRelease();
      v64(v80, v81);
      v64(v121, v81);
      goto LABEL_32;
    }
  }

  v91 = v68;
  v92 = sub_10002F0F4();

  swift_willThrow();
  swift_unknownObjectRelease();

  *(v0 + 160) = v92;
  sub_100004120(&qword_10004A630, &unk_100035270);
  sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
  sub_10002AEA8();
  if (swift_dynamicCast())
  {
    v41 = *(v0 + 168);
    sub_10002F5D4();
    if (qword_100049688 == -1)
    {
LABEL_28:
      v93 = sub_10002AD68();
      if (os_log_type_enabled(v93, v94))
      {
        sub_10002AB74();
        swift_slowAlloc();
        sub_10002ABE0();
        v4 = swift_slowAlloc();
        sub_10002ACE8(v4, 5.7779e-34);
        sub_10002AAD4();
        _os_log_impl(v95, v96, v97, v98, v99, 0xCu);
        sub_100010800(v4, &qword_100049CC0, &qword_1000355C0);
        sub_10002AA18();

        sub_10002AB08();
      }

      sub_10002B44C();

      v100 = v46[1];
      v101 = sub_10002AC80();
      v100(v101);
      v102 = sub_10002AECC();
      v100(v102);
      v103 = *(v0 + 160);

LABEL_32:
      v113 = *(v0 + 232);
      v112 = *(v0 + 240);
      v114 = *(v0 + 224);

      sub_10002AC68();
      v115 = *(v0 + 248);
      sub_10002B51C();

      __asm { BRAA            X2, X16 }
    }

LABEL_38:
    sub_10002AA04();
    swift_once();
    goto LABEL_28;
  }

  sub_10002B51C();
}

void sub_10001FD24()
{
  v4 = v0[34];
  swift_willThrow();
  v0[20] = v0[34];
  sub_100004120(&qword_10004A630, &unk_100035270);
  sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
  sub_10002ABEC();
  if (swift_dynamicCast())
  {
    v5 = v0[21];
    sub_10002F5D4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v6 = sub_10002AD68();
    if (os_log_type_enabled(v6, v7))
    {
      sub_10002AB74();
      swift_slowAlloc();
      sub_10002ABE0();
      v1 = swift_slowAlloc();
      sub_10002ACE8(v1, 5.7779e-34);
      sub_10002AAD4();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
      sub_100010800(v1, &qword_100049CC0, &qword_1000355C0);
      sub_10002AA18();

      sub_10002AB08();
    }

    sub_10002B44C();

    v13 = *(v3 + 8);
    v14 = sub_10002AC80();
    v13(v14);
    v15 = sub_10002AECC();
    v13(v15);
    v16 = v0[20];

    v18 = v0[29];
    v17 = v0[30];
    v19 = v0[28];

    sub_10002AC68();
    v20 = v0[31];
    sub_10002B4A4();

    __asm { BRAA            X2, X16 }
  }

  sub_10002B4A4();
}

id sub_10001FF48(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10002F134(v5);
  v7 = v6;
  v8 = [v4 initWithAssetDirectory:v6 configurationType:a2];

  v9 = sub_10002F1B4();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

uint64_t *sub_10001FFEC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  result = sub_100010414((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    return sub_10001EFC0(v8, a4);
  }

  if (!a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!a3)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = a2;
  swift_unknownObjectRetain();

  return sub_10001F050(v8, v9, a3);
}

uint64_t sub_10002008C()
{
  sub_100010F34();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_10002F1B4();
  v1[6] = v4;
  sub_10002AEE4(v4);
  v1[7] = v5;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_10002AE84();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100020178()
{
  v114 = v1;
  v2 = sub_10002F5B4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v3 = qword_10004B590;
  if (os_log_type_enabled(qword_10004B590, v2))
  {
    v4 = v1[3];
    v5 = v1[4];
    sub_10002AB80();
    v6 = swift_slowAlloc();
    sub_10002ABE0();
    v7 = swift_slowAlloc();
    sub_10002AB68();
    v0 = swift_slowAlloc();
    v113 = v0;
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2080;
    sub_1000042B4(0, &qword_10004A808, PRPosterDescriptor_ptr);
    v8 = v5;
    v9 = sub_10002F4D4();
    v11 = sub_100022BB4(v9, v10, &v113);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v2, "Configuration: %@; Current Suggestions %s", v6, 0x16u);
    sub_100010800(v7, &qword_100049CC0, &qword_1000355C0);
    sub_10002AA18();

    sub_100004168(v0);
    sub_10002AB08();

    sub_10002AAB4();
  }

  v12 = v1[9];
  v13 = [v1[4] assetDirectory];
  sub_10002F164();

  objc_opt_self();
  sub_10002F134(v14);
  v16 = v15;
  v1[2] = 0;
  v17 = sub_10002B04C();
  v19 = [v17 v18];

  v20 = v1[2];
  if (v19)
  {
    v21 = v20;
    v22 = sub_100029328(v19);
    if (v22)
    {
      v23 = v22;
      v24 = sub_1000126D0(v22);
      v112 = v1;
      oslog = v3;
      v104 = v19;
      if (v24)
      {
        v25 = v24;
        if (v24 < 1)
        {
          __break(1u);
        }

        v26 = 0;
        v27 = 0;
        v28 = 0xE000000000000000;
        while (1)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v29 = sub_10002F734();
          }

          else
          {
            v29 = *(v23 + 8 * v27 + 32);
          }

          v30 = v29;
          objc_opt_self();
          v31 = swift_dynamicCastObjCClass();
          if (v31)
          {
            v32 = v31;

            v33 = [v32 suggestionUUID];
          }

          else
          {
            if ([v30 mediaType] != 1 || (v35 = objc_msgSend(v30, "assetUUID")) == 0)
            {

              goto LABEL_20;
            }

            v33 = v35;
          }

          v26 = sub_10002F404();
          v28 = v34;

LABEL_20:
          if (v25 == ++v27)
          {
            goto LABEL_25;
          }
        }
      }

      v26 = 0;
      v28 = 0xE000000000000000;
LABEL_25:
      v48 = v112[7];

      sub_1000042B4(0, &qword_10004A830, PRMutablePosterDescriptor_ptr);
      v49 = objc_opt_self();
      v50 = 0;
      v111 = PRPosterRoleLockScreen;
      v107 = (v48 + 8);
      v109 = xmmword_1000352B0;
      v105 = xmmword_1000352A0;
      v106 = v28;
      do
      {
        v51 = *(&off_100040F68 + v50 + 32);
        sub_100004120(&qword_10004A838, qword_1000356F8);
        sub_10002AC74();
        v52 = swift_allocObject();
        *(v52 + 16) = v109;
        *(v52 + 32) = v26;
        *(v52 + 40) = v28;

        isa = sub_10002F4A4().super.isa;

        v54 = [v49 descriptorIdentifierForDescriptorType:v51 uuids:isa];

        v55 = sub_10002F404();
        v57 = v56;

        v58 = sub_1000189FC(v55, v57, v111);
        v59 = v58;
        if ((v51 - 201) >= 3)
        {
        }

        else
        {
          v60 = off_100041548[v51 - 201];
          v61 = v112[8];
          v108 = v112[9];
          sub_100004120(&qword_10004A650, qword_1000355D8);
          sub_10002ADD0();
          v62 = swift_allocObject();
          *(v62 + 16) = v105;
          v63 = [objc_opt_self() *v60];
          v64 = [objc_allocWithZone(PRPosterColor) initWithColor:v63 preferredStyle:2];

          *(v62 + 32) = v64;
          sub_1000042B4(0, &unk_10004A840, PRPosterColor_ptr);
          v65 = sub_10002F4A4().super.isa;

          [v59 setPreferredTitleColors:v65];

          v66 = [objc_opt_self() defaultLookupInfo];
          v67 = [objc_opt_self() galleryOptionsWithAssetLookupInfo:v66 galleryPresentationStyle:0 galleryDisplayStyle:0];

          [v59 setPreferredGalleryOptions:v67];
          v68 = v59;
          v69 = [v68 assetDirectory];
          sub_10002F164();

          sub_100018ABC(v108, v61, v70, v71, v72, v73, v74, v75, oslog, v104, v105, *(&v105 + 1), v106, v107, _swiftEmptyArrayStorage, v108, v109, SDWORD2(v109), SHIDWORD(v109), v110, v111);
          sub_10002F494();
          sub_10002AF84(_swiftEmptyArrayStorage);
          if (v77)
          {
            sub_10002ABBC(v76);
            sub_10002F4E4();
          }

          v78 = v112[8];
          v79 = v112[6];
          sub_10002F504();

          (*v107)(v78, v79);
          v28 = v106;
        }

        v50 += 8;
      }

      while (v50 != 24);

      v80 = sub_10002F5B4();
      v81 = os_log_type_enabled(oslog, v80);
      v1 = v112;
      v82 = v112[9];
      v83 = v112[6];
      if (v81)
      {
        sub_10002AB74();
        v84 = swift_slowAlloc();
        sub_10002AB68();
        v85 = swift_slowAlloc();
        v113 = v85;
        *v84 = 136315138;
        sub_1000042B4(0, &qword_10004A808, PRPosterDescriptor_ptr);
        v47 = _swiftEmptyArrayStorage;

        sub_10002F4D4();
        sub_10002B31C();

        v86 = sub_10002AD30();
        v89 = sub_100022BB4(v86, v87, v88);

        *(v84 + 4) = v89;
        _os_log_impl(&_mh_execute_header, oslog, v80, "Created %s new suggestions", v84, 0xCu);
        sub_100004168(v85);
        sub_10002AA28();

        sub_10002AA18();

        v90 = *v107;
        v91 = sub_10002B064();
        v92(v91);
      }

      else
      {

        v97 = *v107;
        v98 = sub_10002B064();
        v99(v98);
        v47 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v40 = v1[9];
      v41 = v1[6];
      v42 = v1[7];
      v43 = v1[3];
      sub_10002F5D4();
      sub_10002F2D4();

      v44 = *(v42 + 8);
      v45 = sub_10002B064();
      v46(v45);

      v47 = v1[3];
    }

    v101 = v1[8];
    v100 = v1[9];

    sub_10002AC68();

    return v102(v47);
  }

  else
  {
    v36 = v1[9];
    v37 = v1[6];
    v38 = v1[7];
    v39 = v20;
    sub_100010CB8();
    sub_10002F0F4();

    swift_willThrow();
    (*(v38 + 8))(v36, v37);
    v94 = v1[8];
    v93 = v1[9];

    sub_100010C84();

    return v95();
  }
}

uint64_t sub_100020BC0(int a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  v5[6] = sub_1000042B4(0, &qword_10004A808, PRPosterDescriptor_ptr);
  v5[7] = sub_10002F4C4();
  v9 = a2;
  v10 = a3;
  a5;
  v11 = swift_task_alloc();
  v5[8] = v11;
  *v11 = v5;
  v11[1] = sub_100020CD0;

  return sub_10002008C();
}

uint64_t sub_100020CD0(objc_class *a1)
{
  v3 = v1;
  sub_10002AC5C();
  v6 = v5;
  sub_10002ABD4();
  *v7 = v6;
  v9 = v8[8];
  v10 = v8[7];
  v11 = v8[4];
  v12 = v8[3];
  v13 = v8[2];
  v14 = *v2;
  sub_100010AE8();
  *v15 = v14;

  if (v3)
  {
    sub_10002F0E4();
    sub_10002AE40();

    v16 = a1;
  }

  else
  {
    v17 = *(v6 + 48);
    isa = sub_10002F4A4().super.isa;

    v16 = isa;
  }

  v19 = *(v6 + 40);
  v20 = v19[2];
  v21 = sub_10002AECC();
  v22(v21);

  _Block_release(v19);
  sub_100010C84();

  return v23();
}

void sub_100020E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100010CCC();
  a19 = v20;
  a20 = v21;
  sub_10002B208(__stack_chk_guard);
  v146 = sub_10002F1B4();
  v22 = sub_100004368(v146);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_10002AC04();
  v29 = (v28 - v27);

  v151 = sub_1000294B8(v30, sub_1000295B4);
  sub_100023A00(&v151);
  v31 = v151;
  v151 = _swiftEmptyArrayStorage;
  v149 = _swiftEmptyArrayStorage;
  v150 = _swiftEmptyArrayStorage;
  v147 = _swiftEmptyArrayStorage;
  v148 = _swiftEmptyArrayStorage;
  v32 = sub_1000126D0(v31);
  if (!v32)
  {

    v128 = _swiftEmptyArrayStorage;
    v125 = _swiftEmptyArrayStorage;
    v127 = _swiftEmptyArrayStorage;
    v126 = _swiftEmptyArrayStorage;
    v124 = _swiftEmptyArrayStorage;
    goto LABEL_72;
  }

  v33 = v32;
  v145 = objc_opt_self();
  if (v33 < 1)
  {
    __break(1u);
  }

  v35 = 0;
  v144 = v31 & 0xC000000000000001;
  v143 = (v24 + 8);
  v135 = PFParallaxStyleCategoryTrueColors;
  v130 = PFParallaxStyleCategoryBlackWhite;
  *&v34 = 136315394;
  v136 = v34;
  *&v34 = 136315138;
  v132 = v34;
  v131 = _swiftEmptyArrayStorage;
  v133 = _swiftEmptyArrayStorage;
  v134 = _swiftEmptyArrayStorage;
  v141 = _swiftEmptyArrayStorage;
  v140 = _swiftEmptyArrayStorage;
  v138 = v31;
  v139 = v33;
  v137 = v29;
  do
  {
    if (v144)
    {
      v36 = sub_10002F734();
    }

    else
    {
      v36 = *(v31 + 8 * v35 + 32);
    }

    v37 = v36;
    v38 = [v36 assetDirectory];
    sub_10002F164();

    sub_10002F134(v39);
    v41 = v40;
    (*v143)(v29, v146);
    v155[0] = 0;
    v42 = [v145 loadFromURL:v41 error:v155];

    if (v42)
    {
      v43 = v155[0];
      v44 = [v42 descriptorType];
      if (v44 != 1)
      {
        if (v44 == 3)
        {
          v45 = v37;
          sub_10002F494();
          sub_10002AB34(v151);
          if (v47)
          {
            sub_10002AA48(v46);
            sub_10002F4E4();
          }

          sub_10002AD14();
          sub_10002F504();

          v48 = v151;
          v49 = &a13;
          goto LABEL_64;
        }

        v99 = v37;
        sub_10002F494();
        sub_10002AB34(v147);
        if (v47)
        {
          sub_10002AA48(v100);
          sub_10002F4E4();
        }

        sub_10002AD14();
        sub_10002F504();

LABEL_48:
        v48 = v147;
        v49 = &a14;
LABEL_64:
        *(v49 - 32) = v48;
        goto LABEL_65;
      }

      v63 = [v42 styleCategory];
      if (v63)
      {
        v64 = v63;
        v142 = v37;
        v65 = sub_10002F404();
        v67 = v66;
        if (v65 == sub_10002F404() && v67 == v68)
        {
        }

        else
        {
          v70 = sub_10002B134();

          if ((v70 & 1) == 0)
          {
            v71 = sub_10002F404();
            v73 = v72;
            if (v71 != sub_10002F404() || v73 != v74)
            {
              sub_10002AD14();
              v76 = sub_10002F854();

              if (v76)
              {
                goto LABEL_61;
              }

              v77 = sub_10002F404();
              v79 = v78;
              if (v77 != sub_10002F404() || v79 != v80)
              {
                sub_10002AD14();
                v82 = sub_10002F854();

                if ((v82 & 1) == 0)
                {
                  v83 = sub_10002F404();
                  v85 = v84;
                  if (v83 == sub_10002F404() && v85 == v86)
                  {
                  }

                  else
                  {
                    v88 = sub_10002B134();

                    if ((v88 & 1) == 0)
                    {
                      v89 = sub_10002F5D4();
                      if (qword_100049688 != -1)
                      {
                        sub_10002AA04();
                        swift_once();
                      }

                      v90 = qword_10004B590;
                      if (os_log_type_enabled(qword_10004B590, v89))
                      {
                        sub_10002AB74();
                        v91 = swift_slowAlloc();
                        sub_10002AB68();
                        v141 = swift_slowAlloc();
                        sub_10002B1E8(v141);
                        v92 = sub_10002F404();
                        v94 = sub_100022BB4(v92, v93, v155);

                        *(v91 + 4) = v94;
                        v33 = v139;
                        sub_10002B11C(&_mh_execute_header, v90, v89, "Unknown style category: %s");
                        v95 = sub_10002AFBC(&a14);
                        sub_100004168(v95);
                        sub_10002AAB4();

                        sub_10002AA28();
                      }

                      sub_10002AE78();
                      v97 = v96;
                      sub_10002F494();
                      sub_10002AB34(v147);
                      if (v47)
                      {
                        sub_10002AA48(v98);
                        sub_10002F4E4();
                      }

                      sub_10002AD14();
                      sub_10002F504();

                      goto LABEL_48;
                    }
                  }

                  sub_10002AE78();
                  v122 = v121;
                  sub_10002F494();
                  sub_10002AB34(v148);
                  if (v47)
                  {
                    sub_10002AA48(v123);
                    sub_10002F4E4();
                  }

                  sub_10002AD14();
                  sub_10002F504();

                  v48 = v148;
                  v49 = &v152;
                  goto LABEL_64;
                }

LABEL_61:
                sub_10002AE78();
                v119 = v118;
                sub_10002F494();
                sub_10002AB34(v149);
                if (v47)
                {
                  sub_10002AA48(v120);
                  sub_10002F4E4();
                }

                sub_10002AD14();
                sub_10002F504();

                v48 = v149;
                v49 = &v153;
                goto LABEL_64;
              }
            }

            goto LABEL_61;
          }
        }

        sub_10002AE78();
        v116 = v115;
        sub_10002F494();
        sub_10002AB34(v150);
        if (v47)
        {
          sub_10002AA48(v117);
          sub_10002F4E4();
        }

        sub_10002AD14();
        sub_10002F504();

        v48 = v150;
        v49 = &v154;
        goto LABEL_64;
      }

      v101 = sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v102 = qword_10004B590;
      v103 = sub_10002AE9C();
      if (os_log_type_enabled(v103, v104))
      {
        sub_10002AB74();
        v105 = swift_slowAlloc();
        v142 = v37;
        v106 = v105;
        sub_10002AB68();
        v107 = swift_slowAlloc();
        v108 = [v37 identifier];
        v109 = sub_10002F404();
        v110 = v101;
        v112 = v111;

        v113 = sub_100022BB4(v109, v112, v155);

        *(v106 + 4) = v113;
        v31 = v138;
        sub_10002B11C(&_mh_execute_header, v102, v110, "Featured photo descriptor '%s' is missing a style category");
        sub_100004168(v107);
        v33 = v139;
        sub_10002AB08();

        sub_10002AA28();

        sub_10002AE78();
      }

      else
      {
      }
    }

    else
    {
      v50 = v155[0];
      sub_100010B50();
      sub_10002F0F4();

      swift_willThrow();
      v51 = sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v52 = qword_10004B590;
      if (os_log_type_enabled(qword_10004B590, v51))
      {
        sub_10002AB80();
        v53 = swift_slowAlloc();
        sub_10002ABC8();
        v54 = swift_slowAlloc();
        v142 = v37;
        v155[0] = v54;
        *v53 = v136;
        v55 = [v37 identifier];
        v56 = sub_10002F404();
        v58 = v57;

        v59 = v56;
        v31 = v138;
        sub_100022BB4(v59, v58, v155);
        sub_10002B004();

        *(v53 + 4) = v55;
        *(v53 + 12) = 2080;
        swift_getErrorValue();
        v60 = sub_10002F884();
        sub_100022BB4(v60, v61, v155);
        sub_10002B254();

        *(v53 + 14) = v58;
        sub_10002B3A0();
        _os_log_impl(&_mh_execute_header, v52, v51, "Failed to load descriptor model '%s': %s", v53, 0x16u);
        swift_arrayDestroy();
        sub_10002AA28();

        v33 = v139;
        sub_10002AB08();

        sub_10002AE78();
      }

      else
      {
      }
    }

LABEL_65:
    ++v35;
  }

  while (v33 != v35);

  v124 = v140;
  v125 = v131;
  v126 = v134;
  v127 = v133;
  v128 = v141;
LABEL_72:
  sub_100004120(&qword_10004A7F8, &qword_1000356C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000351F0;
  *(inited + 32) = v124;
  *(inited + 40) = v126;
  *(inited + 48) = v127;
  *(inited + 56) = v125;
  sub_10002190C(inited);
  sub_100010D64();
  swift_setDeallocating();
  sub_1000228D4();
  v155[0] = v124;
  sub_1000133C0(v128);
  sub_100010CE4();
}

void *sub_10002190C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000233E8(0, v2, 0);
    v3 = (a1 + 32);
    v4 = v2;
    do
    {
      v5 = *v3;
      if (*v3 >> 62)
      {
        if (v5 < 0)
        {
          v9 = *v3;
        }

        v6 = sub_10002F7D4();
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_1000233E8((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      _swiftEmptyArrayStorage[v8 + 4] = v6;
      ++v3;
      --v4;
    }

    while (v4);
  }

  v10 = sub_100021B74(_swiftEmptyArrayStorage);
  v12 = v11;

  if (v12)
  {
    return _swiftEmptyArrayStorage;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v10)
    {
      v14 = 0;
      v15 = (a1 + 32);
      do
      {
        for (i = v14; ; ++i)
        {
          if (i >= v10)
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          v14 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_41;
          }

          if (v2)
          {
            break;
          }

          if (v14 == v10)
          {
            return _swiftEmptyArrayStorage;
          }
        }

        v21 = v15;
        v17 = v2;
        do
        {
          v18 = *v15;
          if (*v15 >> 62)
          {
            if (v18 < 0)
            {
              v20 = *v15;
            }

            result = sub_10002F7D4();
          }

          else
          {
            result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (i < result)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {

              sub_10002F734();
            }

            else
            {
              if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_42;
              }

              v19 = *(v18 + 8 * i + 32);
            }

            sub_10002F494();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10002F4E4();
            }

            result = sub_10002F504();
          }

          ++v15;
          --v17;
        }

        while (v17);
        v15 = v21;
      }

      while (v14 != v10);
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_100021B74(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

id sub_100021BB8()
{
  *&v0[OBJC_IVAR____TtC20PhotosPosterProvider13PosterUpdater____lazy_storage___photoLibrary] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterUpdater();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100021C1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterUpdater();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100021CA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10002F3D4();
    sub_10002AE40();
  }

  else
  {
    v2 = 0;
  }

  v4 = [v3 initWithAssetUUID:v2];

  return v4;
}

id sub_100021D08(uint64_t a1)
{
  v2 = v1;
  sub_10002F134(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_10002F1B4();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_10002F0F4();

    swift_willThrow();
    v12 = sub_10002F1B4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

id sub_100021E54(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_10002F3D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

void sub_100021EC0()
{
  sub_100010CCC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11.super.isa = sub_10002F4A4().super.isa;

  if (v8)
  {
    v12 = sub_10002F3D4();

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13.super.isa = 0;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v12 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13.super.isa = sub_10002F574().super.isa;

  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = sub_10002F3D4();

LABEL_8:
  [v0 initWithObjects:v11.super.isa photoLibrary:v10 fetchType:v12 fetchPropertySets:v13.super.isa identifier:v14 registerIfNeeded:v2 & 1];

  sub_100010CE4();
}

id sub_100021FE4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10002F1B4();
  v12 = 0;
  if (sub_1000103D4(a3, 1, v10) != 1)
  {
    sub_10002F134(v11);
    v12 = v13;
    (*(*(v10 - 8) + 8))(a3, v10);
  }

  v14 = [v5 initWithPhotoLibrary:a1 sourceConfiguration:a2 targetAssetDirectory:v12 overrideConfiguration:a4];

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1000220CC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10002A9F0;

  return v7();
}

uint64_t sub_1000221B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10002229C;

  return v8();
}

uint64_t sub_10002229C()
{
  sub_100010F34();
  sub_10002AC5C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100010AE8();
  *v4 = v3;

  sub_100010C84();

  return v5();
}

uint64_t sub_10002237C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004120(&unk_10004A9F0, &qword_1000357C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10002A47C(a3, v25 - v11, &unk_10004A9F0, &qword_1000357C0);
  v13 = sub_10002F564();
  if (sub_1000103D4(v12, 1, v13) == 1)
  {
    sub_100010800(v12, &unk_10004A9F0, &qword_1000357C0);
  }

  else
  {
    sub_10002F554();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_10002F514();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10002F434() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100010800(a3, &unk_10004A9F0, &qword_1000357C0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100010800(a3, &unk_10004A9F0, &qword_1000357C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100022658(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100022750;

  return v7(a1);
}

uint64_t sub_100022750()
{
  sub_100010F34();
  sub_10002AC5C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100010AE8();
  *v4 = v3;

  sub_100010C84();

  return v5();
}

uint64_t sub_100022834(uint64_t result, unint64_t *a2, uint64_t *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_1000042B4(0, a2, a3);
      sub_100010C70();
      result = sub_10002F4F4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;
    }

    else
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_10002288C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000228D4()
{
  v1 = *(v0 + 16);
  sub_100004120(&qword_10004A810, &qword_1000356D8);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

char *sub_100022934(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004120(&qword_10004A828, &qword_1000356F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_100022A34(uint64_t a1, uint64_t a2)
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

  sub_100004120(&qword_10004A968, &qword_100035768);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

void *sub_100022AB8(uint64_t a1, uint64_t a2)
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

  sub_100004120(&qword_10004A650, qword_1000355D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_100022B38(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100004120(&qword_10004A838, qword_1000356F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t sub_100022BB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_10002AE84();
  v9 = sub_100022C74(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_100029554(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_100004168(v14);
  return v10;
}

unint64_t sub_100022C74(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100022D74(a5, a6);
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
    result = sub_10002F754();
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

char *sub_100022D74(uint64_t a1, unint64_t a2)
{
  v4 = sub_100022DC0(a1, a2);
  sub_100022ED8(&off_100040ED8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100022DC0(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_10002F474())
  {
    result = sub_100022FBC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10002F704();
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

        v9 = result + 32;
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
          result = sub_10002F754();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
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

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100022ED8(uint64_t result)
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

    result = sub_10002302C(result, v8, 1, v3);
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

void *sub_100022FBC(uint64_t a1, uint64_t a2)
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

  sub_100004120(&qword_10004A800, &qword_1000356D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10002302C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004120(&qword_10004A800, &qword_1000356D0);
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

unint64_t sub_100023130(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100023154(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002F6A4(*(v2 + 40));

  return sub_100023210(a1, v4);
}

unint64_t sub_100023198(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10002F8D4();
  sub_10002F444();
  v6 = sub_10002F8F4();

  return sub_1000232D4(a1, a2, v6);
}

unint64_t sub_100023210(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10002A054(*(v2 + 48) + 40 * i, v7);
    v5 = sub_10002F6B4();
    sub_10001072C(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000232D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10002F854() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

char *sub_100023388(char *a1, int64_t a2, char a3)
{
  result = sub_100023408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000233A8(void *a1, int64_t a2, char a3)
{
  result = sub_100023514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000233C8(char *a1, int64_t a2, char a3)
{
  result = sub_10002377C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000233E8(char *a1, int64_t a2, char a3)
{
  result = sub_100023884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100023408(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004120(&qword_10004A948, &qword_100035750);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_100023514(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004120(&qword_10004A958, &qword_100035758);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004120(&qword_10004A960, &qword_100035760);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100023644(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004120(&qword_10004A968, &qword_100035768);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004120(&qword_10004A970, &unk_100035770);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002377C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004120(&qword_10004A838, qword_1000356F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023884(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004120(&qword_10004A820, &unk_1000356E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_100023984(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100029DD8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100023CC0(v6);
  return sub_10002F774();
}

uint64_t sub_100023A00(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100029DD8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100023DB0(v6);
  return sub_10002F774();
}

uint64_t sub_100023A7C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

void *sub_100023B00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = sub_100022A34(*(a1 + 16), 0);
  v4 = sub_1000299A0(&v6, v3 + 4, v1, a1);

  sub_100029F34();
  if (v4 != v1)
  {
    __break(1u);
    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

Swift::Int sub_100023BBC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10002F814(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100004120(&qword_10004A970, &unk_100035770);
        v6 = sub_10002F4F4();
        v6[2] = v5;
      }

      v7[0] = v6 + 4;
      v7[1] = v5;
      sub_100024504(v7, v8, a1, v4);
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
    return sub_100023F94(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100023CC0(uint64_t *a1)
{
  v3 = a1[1];
  result = sub_10002F814(v3);
  if (result < v3)
  {
    v5 = result;
    v6 = sub_100022834(v3 / 2, &qword_10004A930, PHAsset_ptr);
    v8[0] = v7;
    v8[1] = v3 / 2;
    result = sub_100024E04(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    return sub_10002416C(0, v3, 1, a1);
  }

  return result;
}

void sub_100023DB0(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_10002F814(v3);
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_100022834(v3 / 2, &qword_10004A808, PRPosterDescriptor_ptr);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1000255C0(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1000242C4(0, v3, 1, a1);
  }
}

Swift::Int sub_100023EA0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10002F814(v2);
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
        v6 = sub_10002F4F4();
        v6[2] = v5;
      }

      v7[0] = v6 + 4;
      v7[1] = v5;
      sub_100025D88(v7, v8, a1, v4);
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
    return sub_10002443C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100023F94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v32 = *a4;
  v4 = (*a4 + 24 * a3);
  v5 = result - a3;
  while (2)
  {
    v25 = v4;
    v26 = a3;
    v6 = (v32 + 24 * a3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v24 = v5;
    do
    {
      v10 = *(v4 - 3);
      v11 = *(v4 - 2);
      v12 = *(v4 - 1);
      if (v9 >> 62)
      {
        v19 = v7;
        v20 = *(v4 - 3);
        v30 = *(v4 - 2);
        v21 = sub_10002F7D4();
        v11 = v30;
        v10 = v20;
        v7 = v19;
        v13 = v21;
      }

      else
      {
        v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v12 >> 62;
      if (v12 >> 62)
      {
        v22 = v7;
        v28 = v10;
        v31 = v11;
        result = sub_10002F7D4();
        v10 = v28;
        v11 = v31;
        v7 = v22;
      }

      else
      {
        result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13 >= result)
      {
        goto LABEL_20;
      }

      v27 = v10;
      v29 = v11;
      if (v9 >> 62)
      {
        v15 = v7;
        v16 = sub_10002F7D4();
        if (!v14)
        {
LABEL_13:
          result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_14;
        }
      }

      else
      {
        v15 = v7;
        v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          goto LABEL_13;
        }
      }

      result = sub_10002F7D4();
LABEL_14:
      if (v16 != result)
      {
        break;
      }

      if (v15 != v27 || v8 != v29)
      {
        result = sub_10002F854();
        if (result)
        {
          break;
        }
      }

LABEL_20:
      if (!v32)
      {
        __break(1u);
        return result;
      }

      v7 = *v4;
      v8 = v4[1];
      v9 = v4[2];
      *v4 = *(v4 - 3);
      v4[2] = *(v4 - 1);
      *(v4 - 2) = v8;
      *(v4 - 1) = v9;
      *(v4 - 3) = v7;
      v4 -= 3;
    }

    while (!__CFADD__(v5++, 1));
    a3 = v26 + 1;
    v4 = v25 + 3;
    v5 = v24 - 1;
    if (v26 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_10002416C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v22 = a3;
      v7 = *(v4 + 8 * a3);
      v20 = v6;
      v21 = v5;
      while (1)
      {
        v8 = *v5;
        v9 = v7;
        v10 = v8;
        result = sub_1000292C8(v9, &selRef_uuid);
        if (!v11)
        {
          goto LABEL_19;
        }

        v12 = result;
        v13 = v11;
        result = sub_1000292C8(v10, &selRef_uuid);
        if (!v14)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        if (v12 == result && v13 == v14)
        {
          break;
        }

        v16 = sub_10002F854();

        if ((v16 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (!v4)
        {
          goto LABEL_20;
        }

        v17 = *v5;
        v7 = *(v5 + 8);
        *v5 = v7;
        *(v5 + 8) = v17;
        v5 -= 8;
        if (__CFADD__(v6++, 1))
        {
          goto LABEL_16;
        }
      }

LABEL_16:
      a3 = v22 + 1;
      v5 = v21 + 8;
      v6 = v20 - 1;
      if (v22 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1000242C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    while (2)
    {
      v24 = v4;
      v25 = a3;
      v6 = *(v26 + 8 * a3);
      v23 = v5;
      while (1)
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 identifier];
        v11 = sub_10002F404();
        v13 = v12;

        v14 = [v9 identifier];
        v15 = sub_10002F404();
        v17 = v16;

        if (v11 == v15 && v13 == v17)
        {
          break;
        }

        v19 = sub_10002F854();

        if (v19)
        {
          if (!v26)
          {
            __break(1u);
            return result;
          }

          v20 = *v4;
          v6 = *(v4 + 8);
          *v4 = v6;
          *(v4 + 8) = v20;
          v4 -= 8;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

LABEL_14:
      a3 = v25 + 1;
      v4 = v24 + 8;
      v5 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_10002443C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_10002F854();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100024504(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v124 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = &_swiftEmptyArrayStorage;
LABEL_142:
    v148 = *v124;
    if (!*v124)
    {
      goto LABEL_183;
    }

    v4 = v7;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_144;
  }

  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  while (2)
  {
    v8 = v6;
    v9 = v6 + 1;
    v125 = v6;
    if (v6 + 1 >= v5)
    {
      goto LABEL_56;
    }

    v127 = v5;
    v4 = *a3;
    v10 = v6 + 1;
    v11 = (*a3 + 24 * v9);
    v12 = *v11;
    v148 = v11[1];
    v13 = v11[2];
    v14 = (*a3 + 24 * v8);
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    v18 = sub_1000126D0(v13);
    result = sub_1000126D0(v17);
    v122 = v7;
    if (v18 >= result)
    {
      LODWORD(v148) = 1;
    }

    else
    {
      v19 = sub_1000126D0(v13);
      result = sub_1000126D0(v17);
      if (v19 == result)
      {
        v20 = v12 == v16 && v148 == v15;
        v21 = v10;
        if (v20)
        {
          v22 = 1;
        }

        else
        {
          result = sub_10002F854();
          v22 = result ^ 1;
        }

        LODWORD(v148) = v22;
        goto LABEL_16;
      }

      LODWORD(v148) = 0;
    }

    v21 = v10;
LABEL_16:
    v23 = v127;
    v24 = 0;
    v25 = 24 * v125;
    v26 = (v4 + 24 * v125 + 32);
    while (1)
    {
      v27 = v21 + 1;
      if (v21 + 1 >= v23)
      {
        break;
      }

      v134 = v21;
      v28 = v26[3];
      v29 = v26[4];
      v30 = *(v26 - 1);
      v31 = *v26;
      v33 = v26[1];
      v32 = v26[2];
      if (v29 >> 62)
      {
        if (v29 < 0)
        {
          v38 = v26[4];
        }

        v39 = v26[3];
        v143 = *(v26 - 1);
        v40 = *v26;
        v138 = v26[2];
        v41 = sub_10002F7D4();
        v32 = v138;
        v31 = v40;
        v30 = v143;
        v28 = v39;
        v23 = v127;
        v34 = v41;
      }

      else
      {
        v34 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v4 = v33 >> 62;
      if (v33 >> 62)
      {
        v119 = v28;
        v144 = v30;
        v130 = v31;
        v139 = v32;
        result = sub_10002F7D4();
        v32 = v139;
        v23 = v127;
        v31 = v130;
        v30 = v144;
        v28 = v119;
      }

      else
      {
        result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v34 >= result)
      {
        v21 = v134;
        goto LABEL_27;
      }

      v142 = v30;
      v129 = v31;
      v137 = v32;
      if (v29 >> 62)
      {
        v35 = v28;
        v36 = sub_10002F7D4();
        if (!v4)
        {
LABEL_30:
          result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_31;
        }
      }

      else
      {
        v35 = v28;
        v36 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_30;
        }
      }

      result = sub_10002F7D4();
LABEL_31:
      v23 = v127;
      v20 = v36 == result;
      v21 = v134;
      if (!v20)
      {
        if (v148)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      if (v137 != v142 || v35 != v129)
      {
        result = sub_10002F854();
        v23 = v127;
        if (((v148 ^ result) & 1) == 0)
        {
          break;
        }

        goto LABEL_40;
      }

LABEL_27:
      if ((v148 & 1) == 0)
      {
        v9 = v21 + 1;
        goto LABEL_55;
      }

LABEL_40:
      v26 += 3;
      ++v21;
      ++v24;
      v25 += 24;
    }

    if (v148)
    {
LABEL_46:
      v8 = v125;
      if (v21 + 1 >= v125)
      {
        if (v125 <= v21)
        {
          v42 = 0;
          v43 = 24 * v125;
          do
          {
            if (v125 + v42 != v125 + v24 + 1)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_181;
              }

              v45 = v44 + v43;
              v46 = v44 + v25;
              v47 = *v45;
              v48 = *(v45 + 8);
              v49 = *(v46 + 24);
              *(v45 + 16) = *(v46 + 40);
              *v45 = v49;
              *(v46 + 24) = v47;
              *(v46 + 32) = v48;
            }

            --v24;
            ++v42;
            v25 -= 24;
            v43 += 24;
          }

          while (v42 + v125 < v125 + v24 + 2);
        }

        v9 = v21 + 1;
        v7 = v122;
        goto LABEL_56;
      }

LABEL_176:
      __break(1u);
LABEL_177:
      result = sub_10002703C(v4);
      v4 = result;
LABEL_144:
      v113 = (v4 + 16);
      for (i = *(v4 + 16); i >= 2; *v113 = i)
      {
        if (!*a3)
        {
          goto LABEL_180;
        }

        v114 = (v4 + 16 * i);
        v115 = *v114;
        v116 = &v113[2 * i];
        v117 = v116[1];
        sub_1000263BC((*a3 + 24 * *v114), (*a3 + 24 * *v116), *a3 + 24 * v117, v148);
        if (v133)
        {
          break;
        }

        if (v117 < v115)
        {
          goto LABEL_168;
        }

        if (i - 2 >= *v113)
        {
          goto LABEL_169;
        }

        *v114 = v115;
        v114[1] = v117;
        v118 = *v113 - i;
        if (*v113 < i)
        {
          goto LABEL_170;
        }

        v133 = 0;
        i = *v113 - 1;
        result = memmove(v116, v116 + 2, 16 * v118);
      }
    }

    v9 = v27;
LABEL_55:
    v7 = v122;
    v8 = v125;
LABEL_56:
    v50 = a3[1];
    if (v9 >= v50)
    {
      goto LABEL_90;
    }

    if (__OFSUB__(v9, v8))
    {
      goto LABEL_173;
    }

    if (v9 - v8 >= a4)
    {
LABEL_90:
      if (v9 < v8)
      {
        goto LABEL_172;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v136 = v9;
      if ((result & 1) == 0)
      {
        result = sub_100022934(0, v7[2] + 1, 1, v7);
        v7 = result;
      }

      v71 = v7[2];
      v70 = v7[3];
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        result = sub_100022934((v70 > 1), v71 + 1, 1, v7);
        v7 = result;
      }

      v7[2] = v72;
      v73 = (v7 + 4);
      v74 = &v7[2 * v71 + 4];
      *v74 = v125;
      v74[1] = v9;
      v148 = *v124;
      if (!*v124)
      {
        goto LABEL_182;
      }

      if (!v71)
      {
LABEL_139:
        v5 = a3[1];
        v6 = v136;
        if (v136 >= v5)
        {
          goto LABEL_142;
        }

        continue;
      }

      while (1)
      {
        v75 = v72 - 1;
        v76 = &v73[16 * v72 - 16];
        v77 = &v7[2 * v72];
        if (v72 >= 4)
        {
          break;
        }

        if (v72 == 3)
        {
          v78 = v7[4];
          v79 = v7[5];
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_110:
          if (v81)
          {
            goto LABEL_159;
          }

          v93 = *v77;
          v92 = v77[1];
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_162;
          }

          v97 = *(v76 + 1);
          v98 = v97 - *v76;
          if (__OFSUB__(v97, *v76))
          {
            goto LABEL_165;
          }

          if (__OFADD__(v95, v98))
          {
            goto LABEL_167;
          }

          if (v95 + v98 >= v80)
          {
            if (v80 < v98)
            {
              v75 = v72 - 2;
            }

            goto LABEL_132;
          }

          goto LABEL_125;
        }

        if (v72 < 2)
        {
          goto LABEL_161;
        }

        v100 = *v77;
        v99 = v77[1];
        v88 = __OFSUB__(v99, v100);
        v95 = v99 - v100;
        v96 = v88;
LABEL_125:
        if (v96)
        {
          goto LABEL_164;
        }

        v102 = *v76;
        v101 = *(v76 + 1);
        v88 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v88)
        {
          goto LABEL_166;
        }

        if (v103 < v95)
        {
          goto LABEL_139;
        }

LABEL_132:
        if (v75 - 1 >= v72)
        {
          __break(1u);
LABEL_154:
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
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        if (!*a3)
        {
          goto LABEL_179;
        }

        v4 = v7;
        v107 = &v73[16 * v75 - 16];
        v108 = *v107;
        v109 = &v73[16 * v75];
        v110 = *(v109 + 1);
        sub_1000263BC((*a3 + 24 * *v107), (*a3 + 24 * *v109), *a3 + 24 * v110, v148);
        if (v133)
        {
        }

        if (v110 < v108)
        {
          goto LABEL_154;
        }

        v111 = *(v4 + 16);
        if (v75 > v111)
        {
          goto LABEL_155;
        }

        *v107 = v108;
        *(v107 + 1) = v110;
        if (v75 >= v111)
        {
          goto LABEL_156;
        }

        v133 = 0;
        v72 = v111 - 1;
        result = memmove(&v73[16 * v75], v109 + 16, 16 * (v111 - 1 - v75));
        v7 = v4;
        *(v4 + 16) = v111 - 1;
        if (v111 <= 2)
        {
          goto LABEL_139;
        }
      }

      v82 = &v73[16 * v72];
      v83 = *(v82 - 8);
      v84 = *(v82 - 7);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_157;
      }

      v87 = *(v82 - 6);
      v86 = *(v82 - 5);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_158;
      }

      v89 = v77[1];
      v90 = v89 - *v77;
      if (__OFSUB__(v89, *v77))
      {
        goto LABEL_160;
      }

      v88 = __OFADD__(v80, v90);
      v91 = v80 + v90;
      if (v88)
      {
        goto LABEL_163;
      }

      if (v91 >= v85)
      {
        v105 = *v76;
        v104 = *(v76 + 1);
        v88 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v88)
        {
          goto LABEL_171;
        }

        if (v80 < v106)
        {
          v75 = v72 - 2;
        }

        goto LABEL_132;
      }

      goto LABEL_110;
    }

    break;
  }

  v51 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_174;
  }

  if (v51 >= v50)
  {
    v51 = a3[1];
  }

  if (v51 < v8)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (v9 == v51)
  {
    goto LABEL_90;
  }

  v123 = v7;
  v148 = *a3;
  v52 = (*a3 + 24 * v9);
  v53 = v8 - v9;
  v126 = v51;
  while (2)
  {
    v135 = v9;
    v54 = &v148[24 * v9];
    v55 = *v54;
    v56 = *(v54 + 1);
    v57 = *(v54 + 2);
    v128 = v53;
    v131 = v52;
LABEL_66:
    v58 = *(v52 - 3);
    v59 = *(v52 - 2);
    v4 = (v52 - 3);
    v60 = *(v52 - 1);
    if (v57 >> 62)
    {
      v67 = v55;
      v68 = *(v52 - 3);
      v146 = *(v52 - 2);
      v69 = sub_10002F7D4();
      v59 = v146;
      v58 = v68;
      v55 = v67;
      v61 = v69;
    }

    else
    {
      v61 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = v60 >> 62;
    if (v60 >> 62)
    {
      v120 = v55;
      v141 = v58;
      v147 = v59;
      result = sub_10002F7D4();
      v59 = v147;
      v58 = v141;
      v55 = v120;
    }

    else
    {
      result = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v61 < result)
    {
      v140 = v58;
      v145 = v59;
      if (v57 >> 62)
      {
        v63 = v55;
        v64 = sub_10002F7D4();
        if (!v62)
        {
          goto LABEL_75;
        }

LABEL_73:
        result = sub_10002F7D4();
      }

      else
      {
        v63 = v55;
        v64 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v62)
        {
          goto LABEL_73;
        }

LABEL_75:
        result = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v64 != result || (v63 == v140 ? (v65 = v56 == v145) : (v65 = 0), !v65 && (result = sub_10002F854(), (result & 1) != 0)))
      {
LABEL_88:
        v9 = v135 + 1;
        v52 = v131 + 3;
        v53 = v128 - 1;
        if (v135 + 1 == v126)
        {
          v9 = v126;
          v7 = v123;
          v8 = v125;
          goto LABEL_90;
        }

        continue;
      }
    }

    break;
  }

  if (v148)
  {
    v55 = *v52;
    v56 = v52[1];
    v57 = v52[2];
    *v52 = *v4;
    v52[2] = *(v52 - 1);
    *(v52 - 2) = v56;
    *(v52 - 1) = v57;
    *(v52 - 3) = v55;
    v52 -= 3;
    if (__CFADD__(v53++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_66;
  }

  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
  return result;
}

uint64_t sub_100024E04(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v106 = result;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v10 = v8++;
      if (v8 < v7)
      {
        v111 = v7;
        v102 = v6;
        v11 = *a3;
        v12 = *(*a3 + 8 * v10);
        v13 = *(*a3 + 8 * v8);
        v6 = v12;
        result = sub_1000292C8(v13, &selRef_uuid);
        if (!v14)
        {
          goto LABEL_158;
        }

        v15 = result;
        v16 = v14;
        result = sub_1000292C8(v6, &selRef_uuid);
        if (!v17)
        {
          goto LABEL_159;
        }

        v18 = v15 == result && v16 == v17;
        v115 = v9;
        if (v18)
        {
          v109 = 0;
        }

        else
        {
          v109 = sub_10002F854();
        }

        v4 = v111;

        v104 = v10;
        v9 = v11 + 8 * v10 + 16;
        v107 = 8 * v10;
        for (i = 8 * v10 + 8; ; i += 8)
        {
          v20 = v8++;
          if (v8 >= v4)
          {
            break;
          }

          v21 = *(v9 - 8);
          v22 = *v9;
          v23 = v21;
          result = sub_1000292C8(v22, &selRef_uuid);
          if (!v24)
          {
            goto LABEL_153;
          }

          v25 = result;
          v6 = v24;
          result = sub_1000292C8(v23, &selRef_uuid);
          if (!v26)
          {
            goto LABEL_152;
          }

          if (v25 == result && v6 == v26)
          {

            v4 = v111;
            if (v109)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v28 = sub_10002F854();

            v29 = v109 ^ v28;
            v4 = v111;
            if (v29)
            {
              break;
            }
          }

          v9 += 8;
        }

        if ((v109 & 1) == 0)
        {
          v6 = v102;
          v10 = v104;
LABEL_35:
          v9 = v115;
          goto LABEL_36;
        }

LABEL_25:
        v30 = v20;
        v8 = v20 + 1;
        v10 = v104;
        if (v8 < v104)
        {
          goto LABEL_145;
        }

        if (v104 >= v8)
        {
          v6 = v102;
          goto LABEL_35;
        }

        v31 = v104;
        v6 = v102;
        v9 = v115;
        v32 = v107;
        do
        {
          if (v31 != v30)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_156;
            }

            v34 = *(v33 + v32);
            *(v33 + v32) = *(v33 + i);
            *(v33 + i) = v34;
          }

          ++v31;
          i -= 8;
          v32 += 8;
          v35 = v31 < v30--;
        }

        while (v35);
      }

LABEL_36:
      v36 = a3[1];
      if (v8 < v36)
      {
        if (__OFSUB__(v8, v10))
        {
          goto LABEL_144;
        }

        if (v8 - v10 < a4)
        {
          v37 = (v10 + a4);
          if (__OFADD__(v10, a4))
          {
            goto LABEL_146;
          }

          if (v37 >= v36)
          {
            v37 = a3[1];
          }

          if (v37 >= v10)
          {
            if (v8 == v37)
            {
              goto LABEL_60;
            }

            v116 = v9;
            v103 = v6;
            v105 = v10;
            v38 = *a3;
            v39 = *a3 + 8 * v8 - 8;
            v40 = v10 - v8;
            v108 = v37;
LABEL_45:
            v110 = v39;
            v112 = v8;
            v41 = *(v38 + 8 * v8);
            v42 = v40;
            while (1)
            {
              v43 = *v39;
              v44 = v41;
              v45 = v43;
              result = sub_1000292C8(v44, &selRef_uuid);
              if (!v46)
              {
                goto LABEL_150;
              }

              v4 = result;
              v47 = v46;
              result = sub_1000292C8(v45, &selRef_uuid);
              if (!v48)
              {
                break;
              }

              if (v4 == result && v47 == v48)
              {

LABEL_58:
                v8 = (v112 + 1);
                v39 = v110 + 8;
                --v40;
                if (v112 + 1 == v108)
                {
                  v8 = v108;
                  v6 = v103;
                  v10 = v105;
                  v9 = v116;
                  goto LABEL_60;
                }

                goto LABEL_45;
              }

              v4 = sub_10002F854();

              if ((v4 & 1) == 0)
              {
                goto LABEL_58;
              }

              if (!v38)
              {
                goto LABEL_151;
              }

              v50 = *v39;
              v41 = *(v39 + 8);
              *v39 = v41;
              *(v39 + 8) = v50;
              v39 -= 8;
              if (__CFADD__(v42++, 1))
              {
                goto LABEL_58;
              }
            }

            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
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
            goto LABEL_160;
          }

LABEL_147:
          __break(1u);
LABEL_148:
          result = sub_10002703C(v9);
          v9 = result;
          goto LABEL_115;
        }
      }

LABEL_60:
      if (v8 < v10)
      {
        goto LABEL_143;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100022934(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
      }

      v53 = *(v9 + 16);
      v52 = *(v9 + 24);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        result = sub_100022934((v52 > 1), v53 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v54;
      v55 = v9 + 32;
      v56 = (v9 + 32 + 16 * v53);
      *v56 = v10;
      v56[1] = v8;
      v113 = *v106;
      if (!*v106)
      {
        goto LABEL_157;
      }

      if (v53)
      {
        v117 = v9;
        while (1)
        {
          v57 = v54 - 1;
          v58 = (v55 + 16 * (v54 - 1));
          v59 = (v9 + 16 * v54);
          if (v54 >= 4)
          {
            break;
          }

          if (v54 == 3)
          {
            v60 = *(v9 + 32);
            v61 = *(v9 + 40);
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
LABEL_81:
            if (v63)
            {
              goto LABEL_130;
            }

            v75 = *v59;
            v74 = v59[1];
            v76 = __OFSUB__(v74, v75);
            v77 = v74 - v75;
            v78 = v76;
            if (v76)
            {
              goto LABEL_133;
            }

            v79 = v58[1];
            v80 = v79 - *v58;
            if (__OFSUB__(v79, *v58))
            {
              goto LABEL_136;
            }

            if (__OFADD__(v77, v80))
            {
              goto LABEL_138;
            }

            if (v77 + v80 >= v62)
            {
              if (v62 < v80)
              {
                v57 = v54 - 2;
              }

              goto LABEL_103;
            }

            goto LABEL_96;
          }

          if (v54 < 2)
          {
            goto LABEL_132;
          }

          v82 = *v59;
          v81 = v59[1];
          v70 = __OFSUB__(v81, v82);
          v77 = v81 - v82;
          v78 = v70;
LABEL_96:
          if (v78)
          {
            goto LABEL_135;
          }

          v84 = *v58;
          v83 = v58[1];
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_137;
          }

          if (v85 < v77)
          {
            goto LABEL_110;
          }

LABEL_103:
          if (v57 - 1 >= v54)
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          if (!*a3)
          {
            goto LABEL_154;
          }

          v89 = v8;
          v90 = (v55 + 16 * (v57 - 1));
          v91 = *v90;
          v4 = v55;
          v92 = v57;
          v93 = (v55 + 16 * v57);
          v9 = v93[1];
          sub_1000267F4((*a3 + 8 * *v90), (*a3 + 8 * *v93), (*a3 + 8 * v9), v113);
          if (v6)
          {
          }

          if (v9 < v91)
          {
            goto LABEL_125;
          }

          v6 = *(v117 + 16);
          if (v92 > v6)
          {
            goto LABEL_126;
          }

          *v90 = v91;
          v90[1] = v9;
          if (v92 >= v6)
          {
            goto LABEL_127;
          }

          v94 = v92;
          v54 = (v6 - 1);
          result = memmove(v93, v93 + 2, 16 * &v6[-v94 - 1]);
          v9 = v117;
          *(v117 + 16) = v6 - 1;
          v35 = v6 > 2;
          v6 = 0;
          v8 = v89;
          v55 = v4;
          if (!v35)
          {
            goto LABEL_110;
          }
        }

        v64 = v55 + 16 * v54;
        v65 = *(v64 - 64);
        v66 = *(v64 - 56);
        v70 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        if (v70)
        {
          goto LABEL_128;
        }

        v69 = *(v64 - 48);
        v68 = *(v64 - 40);
        v70 = __OFSUB__(v68, v69);
        v62 = v68 - v69;
        v63 = v70;
        if (v70)
        {
          goto LABEL_129;
        }

        v71 = v59[1];
        v72 = v71 - *v59;
        if (__OFSUB__(v71, *v59))
        {
          goto LABEL_131;
        }

        v70 = __OFADD__(v62, v72);
        v73 = v62 + v72;
        if (v70)
        {
          goto LABEL_134;
        }

        if (v73 >= v67)
        {
          v87 = *v58;
          v86 = v58[1];
          v70 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v70)
          {
            goto LABEL_142;
          }

          if (v62 < v88)
          {
            v57 = v54 - 2;
          }

          goto LABEL_103;
        }

        goto LABEL_81;
      }

LABEL_110:
      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_113;
      }
    }
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_113:
  v4 = *v106;
  if (!*v106)
  {
LABEL_160:
    __break(1u);
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_148;
  }

LABEL_115:
  v95 = (v9 + 16);
  v96 = *(v9 + 16);
  for (j = v9; v96 >= 2; v9 = j)
  {
    if (!*a3)
    {
      goto LABEL_155;
    }

    v9 += 16 * v96;
    v97 = *v9;
    v98 = &v95[2 * v96];
    v99 = v98[1];
    sub_1000267F4((*a3 + 8 * *v9), (*a3 + 8 * *v98), (*a3 + 8 * v99), v4);
    if (v6)
    {
      break;
    }

    if (v99 < v97)
    {
      goto LABEL_139;
    }

    if (v96 - 2 >= *v95)
    {
      goto LABEL_140;
    }

    *v9 = v97;
    *(v9 + 8) = v99;
    v100 = *v95 - v96;
    if (*v95 < v96)
    {
      goto LABEL_141;
    }

    v96 = *v95 - 1;
    result = memmove(v98, v98 + 2, 16 * v100);
    *v95 = v96;
  }
}

void sub_1000255C0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_106:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v122 = v6;
      v102 = *(v6 + 2);
      v6 += 16;
      for (i = v102; i >= 2; *v6 = i)
      {
        if (!*a3)
        {
          goto LABEL_144;
        }

        v103 = &v122[16 * i];
        v104 = *v103;
        v105 = &v6[16 * i];
        v106 = *(v105 + 1);
        sub_100026B50((*a3 + 8 * *v103), (*a3 + 8 * *v105), (*a3 + 8 * v106), v7);
        if (v118)
        {
          break;
        }

        if (v106 < v104)
        {
          goto LABEL_132;
        }

        if (i - 2 >= *v6)
        {
          goto LABEL_133;
        }

        *v103 = v104;
        *(v103 + 1) = v106;
        v107 = *v6 - i;
        if (*v6 < i)
        {
          goto LABEL_134;
        }

        v118 = 0;
        i = *v6 - 1;
        memmove(v105, v105 + 16, 16 * v107);
      }

LABEL_116:

      return;
    }

LABEL_141:
    v6 = sub_10002703C(v6);
    goto LABEL_108;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v113 = v4;
      v119 = v6;
      v9 = *a3;
      v110 = v5;
      v10 = *(*a3 + 8 * v5);
      v11 = *(*a3 + 8 * v8);
      v12 = v10;
      v13 = [v11 identifier];
      v14 = sub_10002F404();
      v16 = v15;

      v17 = [v12 identifier];
      v18 = sub_10002F404();
      v7 = v19;

      if (v14 == v18 && v16 == v7)
      {
        v115 = 0;
      }

      else
      {
        v115 = sub_10002F854();
      }

      v21 = (v9 + 8 * v110 + 16);
      v22 = 8 * v110 + 8;
      do
      {
        v23 = v8;
        v6 = v22;
        if (++v8 >= v113)
        {
          break;
        }

        v123 = v8;
        v24 = *(v21 - 1);
        v25 = *v21;
        v26 = v24;
        v126 = v25;
        v27 = [v25 identifier];
        v28 = sub_10002F404();
        v30 = v29;

        v31 = [v26 identifier];
        sub_10002F404();
        sub_10002B340();

        v32 = v28 == v27 && v30 == v14;
        v7 = v32 ? 0 : sub_10002F854();

        ++v21;
        v22 = (v6 + 8);
        v8 = v123;
      }

      while (((v115 ^ v7) & 1) == 0);
      if (v115)
      {
        v33 = v110;
        if (v8 < v110)
        {
          goto LABEL_138;
        }

        if (v110 >= v8)
        {
          v6 = v119;
          v7 = v110;
          goto LABEL_29;
        }

        v34 = 8 * v110;
        do
        {
          if (v33 != v23)
          {
            v35 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v36 = *(v35 + v34);
            *(v35 + v34) = *&v6[v35];
            *&v6[v35] = v36;
          }

          v33 = (v33 + 1);
          v6 -= 8;
          v34 += 8;
        }

        while (v33 < v23--);
      }

      v6 = v119;
      v7 = v110;
    }

LABEL_29:
    v38 = a3[1];
    if (v8 < v38)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100022934(0, *(v6 + 2) + 1, 1, v6);
    }

    v59 = v6;
    v60 = *(v6 + 2);
    v121 = v59;
    v61 = *(v59 + 3);
    v62 = v60 + 1;
    if (v60 >= v61 >> 1)
    {
      v121 = sub_100022934((v61 > 1), v60 + 1, 1, v121);
    }

    *(v121 + 2) = v62;
    v63 = v121 + 32;
    v64 = &v121[16 * v60 + 32];
    *v64 = v7;
    v64[1] = v8;
    v65 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v125 = v8;
    if (v60)
    {
      v6 = v121;
      while (1)
      {
        v66 = v62 - 1;
        v67 = &v63[16 * v62 - 16];
        v68 = &v6[16 * v62];
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v69 = *(v6 + 4);
          v70 = *(v6 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_72:
          if (v72)
          {
            goto LABEL_123;
          }

          v84 = *v68;
          v83 = *(v68 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_126;
          }

          v88 = *(v67 + 1);
          v89 = v88 - *v67;
          if (__OFSUB__(v88, *v67))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v86, v89))
          {
            goto LABEL_131;
          }

          if (v86 + v89 >= v71)
          {
            if (v71 < v89)
            {
              v66 = v62 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v62 < 2)
        {
          goto LABEL_125;
        }

        v91 = *v68;
        v90 = *(v68 + 1);
        v79 = __OFSUB__(v90, v91);
        v86 = v90 - v91;
        v87 = v79;
LABEL_87:
        if (v87)
        {
          goto LABEL_128;
        }

        v93 = *v67;
        v92 = *(v67 + 1);
        v79 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v79)
        {
          goto LABEL_130;
        }

        if (v94 < v86)
        {
          goto LABEL_103;
        }

LABEL_94:
        if (v66 - 1 >= v62)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v6 = &v63[16 * v66 - 16];
        v7 = *v6;
        v98 = &v63[16 * v66];
        v99 = *(v98 + 1);
        sub_100026B50((*a3 + 8 * *v6), (*a3 + 8 * *v98), (*a3 + 8 * v99), v65);
        if (v118)
        {
          goto LABEL_116;
        }

        if (v99 < v7)
        {
          goto LABEL_118;
        }

        v100 = *(v121 + 2);
        if (v66 > v100)
        {
          goto LABEL_119;
        }

        *v6 = v7;
        *(v6 + 1) = v99;
        if (v66 >= v100)
        {
          goto LABEL_120;
        }

        v118 = 0;
        v62 = v100 - 1;
        memmove(&v63[16 * v66], v98 + 16, 16 * (v100 - 1 - v66));
        v6 = v121;
        *(v121 + 2) = v100 - 1;
        if (v100 <= 2)
        {
          goto LABEL_103;
        }
      }

      v73 = &v63[16 * v62];
      v74 = *(v73 - 8);
      v75 = *(v73 - 7);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_121;
      }

      v78 = *(v73 - 6);
      v77 = *(v73 - 5);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_122;
      }

      v80 = *(v68 + 1);
      v81 = v80 - *v68;
      if (__OFSUB__(v80, *v68))
      {
        goto LABEL_124;
      }

      v79 = __OFADD__(v71, v81);
      v82 = v71 + v81;
      if (v79)
      {
        goto LABEL_127;
      }

      if (v82 >= v76)
      {
        v96 = *v67;
        v95 = *(v67 + 1);
        v79 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v79)
        {
          goto LABEL_135;
        }

        if (v71 < v97)
        {
          v66 = v62 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

    v6 = v121;
LABEL_103:
    v4 = a3[1];
    v5 = v125;
    if (v125 >= v4)
    {
      goto LABEL_106;
    }
  }

  v39 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_139;
  }

  if (v39 >= v38)
  {
    v39 = a3[1];
  }

  if (v39 < v7)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v8 == v39)
  {
    goto LABEL_51;
  }

  v120 = v6;
  v127 = *a3;
  v40 = *a3 + 8 * v8 - 8;
  v111 = v7;
  v112 = v39;
  v41 = v7 - v8;
LABEL_38:
  v124 = v8;
  v42 = *(v127 + 8 * v8);
  v114 = v41;
  v116 = v40;
  v43 = v40;
  while (1)
  {
    v44 = *v43;
    v45 = v42;
    v46 = v44;
    v47 = [v45 identifier];
    v48 = sub_10002F404();
    v50 = v49;

    v51 = [v46 identifier];
    v52 = sub_10002F404();
    v54 = v53;

    if (v48 == v52 && v50 == v54)
    {

LABEL_49:
      v8 = v124 + 1;
      v40 = v116 + 8;
      v41 = v114 - 1;
      if ((v124 + 1) == v112)
      {
        v8 = v112;
        v6 = v120;
        v7 = v111;
        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v56 = sub_10002F854();

    if ((v56 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v127)
    {
      break;
    }

    v57 = *v43;
    v42 = *(v43 + 8);
    *v43 = v42;
    *(v43 + 8) = v57;
    v43 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_100025D88(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v83 = result;
  v89 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        result = *v11;
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          result = sub_10002F854();
          v14 = result;
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_10002F854();
            if ((v14 ^ result))
            {
              break;
            }
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = (v9 + a4);
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return result;
          }

          if (v10 != v27)
          {
            v84 = v5;
            v86 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = (v9 - v10);
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              result = *v32;
              v33 = v32[1];
              v34 = v30;
              v35 = v29;
              do
              {
                if (result == *(v35 - 2) && v33 == *(v35 - 1))
                {
                  break;
                }

                result = sub_10002F854();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                result = *v35;
                v33 = v35[1];
                *v35 = *(v35 - 1);
                *(v35 - 1) = v33;
                *(v35 - 2) = result;
                v35 -= 2;
              }

              while (!__CFADD__(v34++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while ((v31 + 1) != v27);
            v10 = v27;
            v5 = v84;
            v9 = v86;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v10;
      if ((result & 1) == 0)
      {
        result = sub_100022934(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v39 = *(v8 + 2);
      v38 = *(v8 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_100022934((v38 > 1), v39 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v40;
      v41 = v8 + 32;
      v42 = &v8[16 * v39 + 32];
      *v42 = v9;
      *(v42 + 1) = v85;
      v87 = *v83;
      if (!*v83)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[16 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = *(v8 + 4);
            v47 = *(v8 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = *(v45 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = *(v45 + 1);
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          result = sub_100026E78((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = *(v8 + 2);
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          result = memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          *(v79 + 2) = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = *(v45 + 1);
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v85;
      if (v85 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*v83)
  {
    goto LABEL_128;
  }

  sub_100026290(&v89, *v83, a3);
}

uint64_t sub_100026290(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_10002703C(v5);
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
    sub_100026E78((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_1000263BC(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    v77 = v11;
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v38 = v7;
        goto LABEL_73;
      }

      v81 = v7;
      v13 = *v6;
      v14 = *(v6 + 1);
      v15 = *(v6 + 2);
      v17 = *v4;
      v16 = *(v4 + 1);
      v83 = v4;
      v18 = *(v4 + 2);
      if (v15 >> 62)
      {
        v32 = *v6;
        v33 = *(v6 + 1);
        v34 = sub_10002F7D4();
        v14 = v33;
        v13 = v32;
        v19 = v34;
      }

      else
      {
        v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v18 >> 62;
      if (v18 >> 62)
      {
        v75 = v13;
        v35 = v17;
        v36 = v14;
        v21 = sub_10002F7D4();
        v14 = v36;
        v17 = v35;
        v13 = v75;
      }

      else
      {
        v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19 >= v21)
      {
        goto LABEL_29;
      }

      v22 = v17;
      v23 = v14;
      if (v15 >> 62)
      {
        v24 = v13;
        v25 = sub_10002F7D4();
        if (!v20)
        {
LABEL_21:
          v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_22;
        }
      }

      else
      {
        v24 = v13;
        v25 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_21;
        }
      }

      v26 = sub_10002F7D4();
LABEL_22:
      if (v25 != v26 || (v24 == v22 ? (v27 = v23 == v16) : (v27 = 0), !v27 && (sub_10002F854() & 1) != 0))
      {
        v28 = v83;
        v4 = v83 + 24;
        v29 = v81;
        v30 = v81 == v83;
        goto LABEL_30;
      }

LABEL_29:
      v28 = v6;
      v29 = v81;
      v30 = v81 == v6;
      v6 += 24;
      v4 = v83;
LABEL_30:
      v11 = v77;
      if (!v30)
      {
        v31 = *v28;
        *(v29 + 2) = *(v28 + 2);
        *v29 = v31;
      }

      v7 = v29 + 24;
    }
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
  v84 = v4;
  v82 = v7;
LABEL_41:
  v38 = v6;
  v6 -= 24;
  v39 = v5 - 24;
  v74 = v6;
  v76 = v38;
  while (v11 > v4 && v38 > v7)
  {
    v78 = v11;
    v80 = v39;
    v41 = *(v11 - 3);
    v42 = *(v11 - 2);
    v43 = v11 - 24;
    v44 = *(v11 - 1);
    v46 = *(v38 - 3);
    v45 = *(v38 - 2);
    v47 = *(v38 - 1);
    if (v44 >> 62)
    {
      if (v44 < 0)
      {
        v61 = *(v11 - 1);
      }

      v62 = *(v11 - 3);
      v63 = *(v11 - 2);
      v72 = *(v38 - 2);
      v64 = sub_10002F7D4();
      v45 = v72;
      v42 = v63;
      v41 = v62;
      v48 = v64;
    }

    else
    {
      v48 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v47 >> 62;
    if (v47 >> 62)
    {
      v73 = v41;
      v65 = v46;
      v66 = v42;
      v67 = v45;
      v50 = sub_10002F7D4();
      v45 = v67;
      v42 = v66;
      v46 = v65;
      v6 = v74;
      v38 = v76;
      v41 = v73;
    }

    else
    {
      v50 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v48 >= v50)
    {
LABEL_70:
      v5 = v80;
      v7 = v82;
      v4 = v84;
      v11 = v78;
      if ((v80 + 24) != v38)
      {
        v68 = *v6;
        *(v80 + 16) = *(v6 + 2);
        *v80 = v68;
      }

      goto LABEL_41;
    }

    v51 = v46;
    v52 = v45;
    v53 = v42;
    if (v44 >> 62)
    {
      v54 = v41;
      v55 = sub_10002F7D4();
      if (!v49)
      {
LABEL_56:
        v56 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_57;
      }
    }

    else
    {
      v54 = v41;
      v55 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v49)
      {
        goto LABEL_56;
      }
    }

    v56 = sub_10002F7D4();
LABEL_57:
    v57 = v52;
    v58 = v51;
    v6 = v74;
    v38 = v76;
    if (v55 == v56)
    {
      v59 = v54 == v58 && v53 == v57;
      if (v59 || (sub_10002F854() & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    v4 = v84;
    if (v78 != (v80 + 24))
    {
      v60 = *v43;
      *(v80 + 16) = *(v43 + 2);
      *v80 = v60;
    }

    v39 = v80 - 24;
    v11 = v43;
    v7 = v82;
  }

LABEL_73:
  v69 = (v11 - v4) / 24;
  if (v38 != v4 || v38 >= &v4[24 * v69])
  {
    memmove(v38, v4, 24 * v69);
  }

  return 1;
}

uint64_t sub_1000267F4(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = a3 - __dst;
  if (v7 < v8)
  {
    if (a4 != __src || &__src[v7] <= a4)
    {
      memmove(a4, __src, 8 * v7);
    }

    v11 = &v4[v7];
    v12 = &selRef_uuid;
    v13 = __dst;
    v53 = v11;
    v50 = v5;
    while (1)
    {
      if (v4 >= v11 || v13 >= v5)
      {
        v29 = v6;
        goto LABEL_52;
      }

      v15 = v13;
      v16 = *v4;
      v17 = *v13;
      v18 = v16;
      result = sub_1000292C8(v17, v12);
      if (!v20)
      {
        __break(1u);
        goto LABEL_60;
      }

      v21 = result;
      v22 = v12;
      v23 = v20;
      v24 = v22;
      result = sub_1000292C8(v18, v22);
      if (!v25)
      {
        goto LABEL_61;
      }

      v26 = v21 == result && v23 == v25;
      if (v26)
      {
        break;
      }

      v27 = sub_10002F854();

      if ((v27 & 1) == 0)
      {
        goto LABEL_22;
      }

      v28 = v15;
      v13 = v15 + 1;
      v12 = v24;
      if (v6 != v15)
      {
        goto LABEL_23;
      }

LABEL_24:
      ++v6;
      v5 = v50;
      v11 = v53;
    }

LABEL_22:
    v28 = v4;
    v26 = v6 == v4++;
    v12 = v24;
    v13 = v15;
    if (v26)
    {
      goto LABEL_24;
    }

LABEL_23:
    *v6 = *v28;
    goto LABEL_24;
  }

  v29 = __dst;
  if (a4 != __dst || &__dst[v8] <= a4)
  {
    memmove(a4, __dst, 8 * v8);
  }

  v11 = &v4[v8];
  v51 = v6;
  v52 = v4;
LABEL_31:
  v31 = v29 - 1;
  v32 = v5 - 1;
  v54 = v29;
  while (v11 > v4 && v29 > v6)
  {
    v34 = v32;
    v35 = v11;
    v36 = v11 - 1;
    v37 = v31;
    v38 = *v31;
    v39 = *(v11 - 1);
    v40 = v38;
    result = sub_1000292C8(v39, &selRef_uuid);
    if (!v41)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      return result;
    }

    v42 = result;
    v43 = v41;
    result = sub_1000292C8(v40, &selRef_uuid);
    if (!v44)
    {
      goto LABEL_62;
    }

    if (v42 == result && v43 == v44)
    {
    }

    else
    {
      v46 = sub_10002F854();

      if (v46)
      {
        v5 = v34;
        v26 = v34 + 1 == v54;
        v47 = v37;
        v29 = v37;
        v6 = v51;
        v4 = v52;
        v11 = v35;
        if (!v26)
        {
          *v5 = *v47;
          v29 = v47;
        }

        goto LABEL_31;
      }
    }

    v31 = v37;
    if (v35 != v34 + 1)
    {
      *v34 = *v36;
    }

    v32 = v34 - 1;
    v11 = v36;
    v29 = v54;
    v6 = v51;
    v4 = v52;
  }

LABEL_52:
  v48 = v11 - v4;
  if (v29 != v4 || v29 >= &v4[v48])
  {
    memmove(v29, v4, 8 * v48);
  }

  return 1;
}

uint64_t sub_100026B50(void **a1, id *__src, void **a3, void **__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = __src;
  v7 = a1;
  v8 = __src - a1;
  v9 = a3 - __src;
  if (v8 < v9)
  {
    if (__dst != a1 || &a1[v8] <= __dst)
    {
      v11 = sub_10002AC38();
      memmove(v11, v12, v13);
    }

    v14 = &v4[v8];
    v58 = v14;
    v60 = v5;
    while (1)
    {
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_48;
      }

      v62 = v7;
      v16 = *v4;
      v17 = *v6;
      v18 = v16;
      v19 = [v17 identifier];
      v20 = sub_10002F404();
      v22 = v21;

      v23 = [v18 identifier];
      v24 = sub_10002F404();
      v26 = v25;

      if (v20 == v24 && v22 == v26)
      {

        v29 = v62;
      }

      else
      {
        v28 = sub_10002B174();

        v29 = v62;
        if (v28)
        {
          v30 = v6;
          v31 = v62 == v6++;
          goto LABEL_20;
        }
      }

      v30 = v4;
      v31 = v29 == v4++;
LABEL_20:
      v14 = v58;
      v5 = v60;
      if (!v31)
      {
        *v29 = *v30;
      }

      v7 = v29 + 1;
    }
  }

  if (__dst != __src || &__src[v9] <= __dst)
  {
    memmove(__dst, __src, 8 * v9);
  }

  v14 = &v4[v9];
  v56 = v4;
  v63 = v7;
LABEL_29:
  v33 = v6 - 1;
  v34 = v5 - 1;
  for (i = v6; v14 > v4 && v6 > v7; v6 = i)
  {
    v59 = v14;
    v61 = v34;
    v36 = v14 - 1;
    v37 = v33;
    v38 = *v33;
    v39 = *(v14 - 1);
    v40 = v38;
    v41 = [v39 identifier];
    v42 = sub_10002F404();
    v44 = v43;

    v45 = [v40 identifier];
    v46 = sub_10002F404();
    v48 = v47;

    if (v42 == v46 && v44 == v48)
    {
      v50 = 0;
    }

    else
    {
      v50 = sub_10002B174();
    }

    v7 = v63;
    v14 = v59;
    v33 = v37;
    if (v50)
    {
      v5 = v61;
      v4 = v56;
      v6 = v33;
      if (v61 + 1 != i)
      {
        *v61 = *v33;
        v6 = v33;
      }

      goto LABEL_29;
    }

    v4 = v56;
    if (v59 != v61 + 1)
    {
      *v61 = *v36;
    }

    v34 = v61 - 1;
    v14 = v36;
  }

LABEL_48:
  if (v6 != v4 || v6 >= &v4[v14 - v4])
  {
    v52 = sub_10002AFF8();
    memmove(v52, v53, v54);
  }

  return 1;
}

uint64_t sub_100026E78(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_10002F854() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_10002F854() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_100027050(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_10002F7D4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_10002F744();
  *v1 = result;
  return result;
}

uint64_t sub_1000270F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_10002F854() & 1;
  }
}

BOOL sub_100027134(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_1000271E4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10002F8D4();
  sub_10002F444();
  v9 = sub_10002F8F4();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_10002F854() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_100028CEC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_100027330(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10002840C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10002745C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v49 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v51 = v12;
    v52 = v7;
    v53 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = v5[5];
        sub_10002F8D4();

        sub_10002F444();
        v21 = sub_10002F8F4();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v23 = (v5[6] + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_10002F854() & 1) != 0)
          {
            v55 = v49;
            v56 = v16;
            v57 = v11;
            v3 = v52;
            v12 = v53;
            v54[0] = v53;
            v54[1] = v52;

            v26 = *(v5 + 32);
            v46 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v46;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v47 = &v45;
              __chkstk_darwin(v25);
              v7 = &v45 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = v5[2];
              v50 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v51;
              while (1)
              {
                v48 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = v5[5];
                sub_10002F8D4();

                sub_10002F444();
                v36 = sub_10002F8F4();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v52;
                    v12 = v53;
                    v30 = v51;
                    goto LABEL_24;
                  }

                  v38 = (v5[6] + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = sub_10002F854();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v50[v7];
                v50[v7] = v41 & ~v8;
                v3 = v52;
                v12 = v53;
                v30 = v51;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v48 - 1;
                if (__OFSUB__(v48, 1))
                {
                  __break(1u);
                }

                if (v48 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_1000281F0(v50, v46, v48, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v43 = swift_slowAlloc();
            v44 = sub_100028720(v43, v46, v5 + 7, v46, v5, v7, v54);

            v49 = v55;
            v5 = v44;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v52;
        v14 = v53;
        v12 = v51;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_100029F34();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

uint64_t sub_100027934(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004120(&qword_10004A9D0, &qword_1000357A0);
  result = sub_10002F6E4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_100027DE8(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_10002F8D4();
    sub_10002F444();
    result = sub_10002F8F4();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100027B90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v8 = &v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100027DE8(0, v6, v8);
    v9 = sub_100027E4C(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_100027D58(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_100027D58(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100027E4C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100027DE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100035610;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_100027E4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_10002F8D4();

      sub_10002F444();
      v42 = sub_10002F8F4();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_10002F854();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return sub_1000281F0(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_10002F8D4();

      sub_10002F444();
      v19 = sub_10002F8F4();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_10002F854();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1000281F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004120(&qword_10004A9D0, &qword_1000357A0);
  result = sub_10002F6F4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    sub_10002F8D4();

    sub_10002F444();
    result = sub_10002F8F4();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10002840C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_10002F8D4();
  sub_10002F444();
  v7 = sub_10002F8F4();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_10002F854() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000287A8();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_100028B34(v9);
  *v2 = v19;
  return v16;
}

unint64_t *sub_100028534(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_10002F8D4();

    sub_10002F444();
    v17 = sub_10002F8F4();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_10002F854();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1000281F0(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_100028720(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_100028534(a1, a2, a5, a6, a7);

  return v12;
}

void *sub_1000287A8()
{
  v1 = v0;
  sub_100004120(&qword_10004A9D0, &qword_1000357A0);
  v2 = *v0;
  v3 = sub_10002F6D4();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_100028900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004120(&qword_10004A9D0, &qword_1000357A0);
  result = sub_10002F6E4();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_10002F8D4();

        sub_10002F444();
        result = sub_10002F8F4();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_100028B34(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_10002F694();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_10002F8D4();

        sub_10002F444();
        v15 = sub_10002F8F4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int sub_100028CEC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100027934(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_100028900(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_10002F8D4();
      sub_10002F444();
      result = sub_10002F8F4();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_10002F854() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1000287A8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_10002F864();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

_OWORD *sub_100028E54(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100023198(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100004120(&qword_10004A998, &qword_100035780);
  if (!sub_10002F7B4(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_100023198(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_10002F874();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v16);
    sub_100004168(v22);

    return sub_1000107F0(a1, v22);
  }

  else
  {
    sub_100028F9C(v16, a2, a3, a1, v21);
  }
}