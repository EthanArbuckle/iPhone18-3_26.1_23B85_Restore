Swift::Int sub_2FE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_7D10();
  sub_7C60();
  sub_7D20(v2);
  sub_7D20(v3);
  return sub_7D30();
}

void sub_3054()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_7C60();
  sub_7D20(v1);
  sub_7D20(v2);
}

Swift::Int sub_30A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_7D10();
  sub_7C60();
  sub_7D20(v2);
  sub_7D20(v3);
  return sub_7D30();
}

BOOL sub_3108(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  sub_5418(0, &qword_11930, NSObject_ptr);
  v8 = sub_7C50();
  v9 = v4 == v7;
  if (v3 != v6)
  {
    v9 = 0;
  }

  return (v8 & 1) != 0 && v9;
}

uint64_t sub_3198()
{
  v0 = sub_79B0();
  sub_5140(v0, qword_12210);
  sub_4E6C(v0, qword_12210);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_7B90();
  }

  return sub_79A0();
}

uint64_t sub_3288@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = *(*(sub_7980() - 8) + 64);
  __chkstk_darwin();
  v6 = sub_7960();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4CF4(&qword_118B8, &qword_9090);
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v40 - v14;
  v16 = sub_4CF4(&qword_118B0, &qword_9088);
  v17 = *(v16 - 8);
  v45 = v16;
  v46 = v17;
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v42 = &v40 - v19;
  sub_5418(0, &qword_11920, &off_C518);
  sub_7970();
  sub_7950();
  if (a2)
  {
    v20 = a1;
  }

  else
  {
    v20 = 0;
  }

  v41 = v20;
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  v48 = v20;
  v49 = v21;
  v40 = sub_4F0C();
  swift_bridgeObjectRetain_n();
  v22 = sub_7A90();
  v24 = v23;
  v26 = v25;
  v27 = sub_5060(&qword_118C0, &type metadata accessor for PreferencesControllerView);
  sub_7AC0();
  sub_51A4(v22, v24, v26 & 1);

  (*(v7 + 8))(v10, v6);
  v48 = v6;
  v49 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_4DC4();
  v39 = sub_4E18();
  v31 = v42;
  v30 = v43;
  sub_7AD0();
  (*(v44 + 8))(v15, v30);
  v48 = v41;
  v49 = v21;
  v32 = sub_7A90();
  v34 = v33;
  v36 = v35;
  v48 = v30;
  v49 = &type metadata for CurrentNetworkDetailViewInput;
  v50 = &type metadata for WiFiSettingsViewProviderViewControllerRepresentable;
  v51 = OpaqueTypeConformance2;
  v52 = v29;
  v53 = v39;
  swift_getOpaqueTypeConformance2();
  v37 = v45;
  sub_7AA0();
  sub_51A4(v32, v34, v36 & 1);

  return (*(v46 + 8))(v31, v37);
}

uint64_t sub_36FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  return _objc_retain_x1();
}

uint64_t sub_3710(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v3 = sub_7AE0();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = sub_7B00();
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v8 = *(v7 + 64) + 15;
  v2[23] = swift_task_alloc();
  v9 = *(*(sub_4CF4(&qword_118E0, &qword_90A0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v10 = sub_78E0();
  v2[25] = v10;
  v11 = *(v10 - 8);
  v2[26] = v11;
  v12 = *(v11 + 64) + 15;
  v2[27] = swift_task_alloc();
  v13 = sub_79D0();
  v2[28] = v13;
  v14 = *(v13 - 8);
  v2[29] = v14;
  v15 = *(v14 + 64) + 15;
  v2[30] = swift_task_alloc();
  v16 = sub_7910();
  v2[31] = v16;
  v17 = *(v16 - 8);
  v2[32] = v17;
  v2[33] = *(v17 + 64);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  sub_7BF0();
  v2[37] = sub_7BE0();
  v19 = sub_7BD0();

  return _swift_task_switch(sub_39CC, v19, v18);
}

uint64_t sub_39CC()
{
  v116 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[30];
  v4 = v0[17];

  sub_7B30();
  sub_7B20();
  if (qword_11780 != -1)
  {
LABEL_34:
    swift_once();
  }

  v5 = v0[35];
  v6 = v0[36];
  v7 = v0[31];
  v8 = v0[32];
  v9 = sub_79B0();
  sub_4E6C(v9, qword_12210);
  v112 = *(v8 + 16);
  v112(v5, v6, v7);
  v10 = sub_7990();
  v11 = sub_7C10();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[35];
  v14 = v0[31];
  v15 = v0[32];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v115 = v110;
    *v16 = 136315138;
    sub_5060(&qword_11910, &type metadata accessor for URL);
    v17 = sub_7CF0();
    v109 = v11;
    v19 = v18;
    v20 = *(v15 + 8);
    v20(v13, v14);
    v21 = sub_68AC(v17, v19, &v115);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_0, v10, v109, "settings experience handling URL for %s", v16, 0xCu);
    sub_50F0(v110);
  }

  else
  {

    v20 = *(v15 + 8);
    v20(v13, v14);
  }

  v22 = v0[34];
  v23 = v0[31];
  v24 = v0[25];
  v25 = v0[26];
  v26 = v0[24];
  v27 = v0[17];
  sub_7B30();
  sub_78C0();
  v20(v22, v23);
  if ((*(v25 + 48))(v26, 1, v24) == 1)
  {
    v28 = v0[36];
    v30 = v0[30];
    v29 = v0[31];
    v31 = v0[28];
    v32 = v0[29];
    v33 = v0[16];
    sub_4EA4(v0[24]);
    sub_7B40();
    (*(v32 + 8))(v30, v31);
    v20(v28, v29);
  }

  else
  {
    v111 = v20;
    (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
    v0[11] = sub_78D0();
    v0[12] = v34;
    v0[13] = 47;
    v0[14] = 0xE100000000000000;
    sub_4F0C();
    v35 = sub_7C70();

    v36 = 0;
    v37 = *(v35 + 16);
    v38 = &_swiftEmptyArrayStorage;
LABEL_8:
    v39 = (v35 + 40 + 16 * v36);
    while (v37 != v36)
    {
      if (v36 >= *(v35 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v41 = *(v39 - 1);
      v40 = *v39;
      v39 += 2;
      ++v36;
      v42 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v42 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_4A7C(0, v38[2] + 1, 1);
          v38 = v115;
        }

        v45 = v38[2];
        v44 = v38[3];
        if (v45 >= v44 >> 1)
        {
          sub_4A7C((v44 > 1), v45 + 1, 1);
          v38 = v115;
        }

        v38[2] = v45 + 1;
        v46 = &v38[2 * v45];
        v46[4] = v41;
        v46[5] = v40;
        goto LABEL_8;
      }
    }

    v47 = v38 + 5;
    v48 = -v38[2];
    v49 = -1;
    do
    {
      if (v48 + v49 == -1)
      {
        v66 = v0[36];
        v68 = v0[33];
        v67 = v0[34];
        v70 = v0[31];
        v69 = v0[32];
        v107 = v0[29];
        v108 = v0[28];
        v106 = v0[27];
        v103 = v0[26];
        v104 = v0[30];
        v105 = v0[25];
        v97 = v0[23];
        v99 = v66;
        v100 = v0[22];
        v71 = v0[20];
        v72 = v0[18];
        v73 = v0[19];
        v101 = v0[16];
        v102 = v0[21];

        sub_5418(0, &qword_118F0, OS_dispatch_queue_ptr);
        v98 = sub_7C30();
        v112(v67, v66, v70);
        v74 = (*(v69 + 80) + 16) & ~*(v69 + 80);
        v75 = swift_allocObject();
        (*(v69 + 32))(v75 + v74, v67, v70);
        v0[6] = sub_4FE8;
        v0[7] = v75;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_4530;
        v0[5] = &unk_C988;
        v76 = _Block_copy(v0 + 2);
        v77 = v0[7];

        sub_7AF0();
        v0[15] = &_swiftEmptyArrayStorage;
        sub_5060(&qword_118F8, &type metadata accessor for DispatchWorkItemFlags);
        sub_4CF4(&qword_11900, &qword_90A8);
        sub_50A8(&qword_11908, &qword_11900, &qword_90A8);
        sub_7C80();
        sub_7C40();
        _Block_release(v76);

        (*(v73 + 8))(v71, v72);
        (*(v100 + 8))(v97, v102);
        sub_7B40();
        (*(v103 + 8))(v106, v105);
        (*(v107 + 8))(v104, v108);
        v65 = v70;
        v64 = v99;
        goto LABEL_28;
      }

      if (++v49 >= v38[2])
      {
        goto LABEL_33;
      }

      v50 = v47 + 2;
      v52 = *(v47 - 1);
      v51 = *v47;

      LOBYTE(v52) = sub_42F0();

      v47 = v50;
    }

    while ((v52 & 1) == 0);

    v53 = [objc_allocWithZone(CWFInterface) initWithServiceType:1];
    [v53 activate];
    v54 = [v53 currentScanResult];
    if (v54 && (v55 = v54, v56 = [v54 matchingKnownNetworkProfile], v55, v56))
    {
      v57 = v0[30];
      v113 = v0[31];
      v114 = v0[36];
      v58 = v0[28];
      v59 = v0[29];
      v60 = v0[26];
      v61 = v0[27];
      v62 = v0[25];
      v63 = v0[16];
      v0[8] = v56;
      sub_4DC4();
      v0[9] = 0;
      v0[10] = 0;
      sub_79C0();
      sub_7B40();

      (*(v60 + 8))(v61, v62);
      (*(v59 + 8))(v57, v58);
      v65 = v113;
      v64 = v114;
    }

    else
    {
      v78 = v0[36];
      v80 = v0[30];
      v79 = v0[31];
      v81 = v0[28];
      v82 = v0[29];
      v84 = v0[26];
      v83 = v0[27];
      v85 = v0[25];
      v86 = v0[16];
      sub_7B40();

      (*(v84 + 8))(v83, v85);
      (*(v82 + 8))(v80, v81);
      v64 = v78;
      v65 = v79;
    }

LABEL_28:
    v111(v64, v65);
  }

  v88 = v0[35];
  v87 = v0[36];
  v89 = v0[34];
  v90 = v0[30];
  v91 = v0[27];
  v93 = v0[23];
  v92 = v0[24];
  v94 = v0[20];

  v95 = v0[1];

  return v95();
}

uint64_t sub_42F0()
{

  v0 = sub_7BB0();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_7BB0();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_7D00();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_7BB0();
      v3 = v5;
    }

    while (v5);
  }

  sub_7BB0();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_444C()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v6 = [v0 airportController];

    if (v6)
    {
      if ([v6 respondsToSelector:"handleURL:"])
      {
        sub_78F0(v2);
        v4 = v3;
        [v6 handleURL:v3];

        v5 = v4;
      }

      else
      {
        v5 = v6;
      }
    }
  }
}

uint64_t sub_4530(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_4574()
{
  v1 = sub_4CF4(&qword_118A0, &qword_9078);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v18 - v4;
  v7 = *v0;
  v6 = v0[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;

  sub_4CF4(&qword_118A8, &qword_9080);
  v9 = sub_4D7C(&qword_118B0, &qword_9088);
  v10 = sub_4D7C(&qword_118B8, &qword_9090);
  v11 = sub_7960();
  v12 = sub_5060(&qword_118C0, &type metadata accessor for PreferencesControllerView);
  v18 = v11;
  v19 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_4DC4();
  v15 = sub_4E18();
  v18 = v10;
  v19 = &type metadata for CurrentNetworkDetailViewInput;
  v20 = &type metadata for WiFiSettingsViewProviderViewControllerRepresentable;
  v21 = OpaqueTypeConformance2;
  v22 = v14;
  v23 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  v18 = v9;
  v19 = v16;
  swift_getOpaqueTypeConformance2();
  sub_7B50();
  sub_50A8(&qword_118D8, &qword_118A0, &qword_9078);
  sub_7B10();
  return (*(v2 + 8))(v5, v1);
}

id sub_481C@<X0>(void *a1@<X8>)
{
  result = sub_4BA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_489C()
{
  result = qword_11898;
  if (!qword_11898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11898);
  }

  return result;
}

BOOL sub_4928(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

Swift::Int sub_4984()
{
  v1 = *v0;
  sub_7D10();
  sub_7D20(v1);
  return sub_7D30();
}

Swift::Int sub_49FC()
{
  v1 = *v0;
  sub_7D10();
  sub_7D20(v1);
  return sub_7D30();
}

void *sub_4A40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

char *sub_4A7C(char *a1, int64_t a2, char a3)
{
  result = sub_4A9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_4A9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_4CF4(&qword_11918, &qword_90B0);
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

id sub_4BA8()
{
  v0 = objc_allocWithZone(NSBundle);
  v1 = sub_7B80();
  v2 = [v0 initWithPath:v1];

  if (!v2)
  {
    return v2;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    MobileGestalt_get_wapiCapability();

    v5 = sub_7B80();

    v6 = sub_7B80();
    v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

    v2 = sub_7B90();
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_4CF4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_4D3C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4D7C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_4DC4()
{
  result = qword_118C8;
  if (!qword_118C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118C8);
  }

  return result;
}

unint64_t sub_4E18()
{
  result = qword_118D0;
  if (!qword_118D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118D0);
  }

  return result;
}

uint64_t sub_4E6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_4EA4(uint64_t a1)
{
  v2 = sub_4CF4(&qword_118E0, &qword_90A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_4F0C()
{
  result = qword_118E8;
  if (!qword_118E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118E8);
  }

  return result;
}

uint64_t sub_4F60()
{
  v1 = sub_7910();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_4FE8()
{
  v0 = *(*(sub_7910() - 8) + 80);

  sub_444C();
}

uint64_t sub_5048(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_50A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_4D7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_50F0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_5140(uint64_t a1, uint64_t *a2)
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

uint64_t sub_51A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_51B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_51C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_521C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_527C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_5290(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_52D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5328()
{
  sub_4D7C(&qword_118A0, &qword_9078);
  sub_50A8(&qword_118D8, &qword_118A0, &qword_9078);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_53C4()
{
  result = qword_11928;
  if (!qword_11928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11928);
  }

  return result;
}

uint64_t sub_5418(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_5488(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_557C()
{
  v0 = sub_79B0();
  sub_5140(v0, qword_12228);
  sub_4E6C(v0, qword_12228);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_7B90();
  }

  return sub_79A0();
}

Swift::Void __swiftcall WFSettingsKitViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for WFSettingsKitViewController();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1);
  v3 = *&v1[OBJC_IVAR___WFSettingsKitViewController_hostingController];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 parentViewController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationItem];
    }

    else
    {
      v7 = 0;
    }

    [v4 _setExistingNavigationItem:v7];
  }
}

Swift::Void __swiftcall WFSettingsKitViewController.loadView()()
{
  v1 = v0;
  v2 = sub_7940();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v10 = type metadata accessor for WFSettingsKitViewController();
  v47.receiver = v1;
  v47.super_class = v10;
  objc_msgSendSuper2(&v47, "loadView");
  sub_7930();
  (*(v3 + 16))(v7, v9, v2);
  v11 = objc_allocWithZone(sub_4CF4(&qword_11A28, &qword_9330));
  v12 = sub_79E0();
  v13 = *&v1[OBJC_IVAR___WFSettingsKitViewController_hostingController];
  *&v1[OBJC_IVAR___WFSettingsKitViewController_hostingController] = v12;
  v14 = v12;

  v15 = v14;
  [v1 addChildViewController:v15];
  v16 = [v15 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  v18 = [v1 view];
  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v18;
  [v18 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v17 setFrame:{v21, v23, v25, v27}];
  v28 = [v15 view];

  if (!v28)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v28 setAutoresizingMask:18];

  v29 = [v1 view];
  if (v29)
  {
    v30 = v29;
    if (qword_11788 != -1)
    {
      swift_once();
    }

    v31 = sub_79B0();
    sub_4E6C(v31, qword_12228);
    v32 = v30;
    v33 = sub_7990();
    v34 = sub_7C20();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v46 = v2;
      v36 = v35;
      v37 = swift_slowAlloc();
      v45 = v3;
      v38 = v37;
      *v36 = 138412290;
      *(v36 + 4) = v32;
      *v37 = v30;
      v39 = v32;
      _os_log_impl(&dword_0, v33, v34, "View unwrapped: %@", v36, 0xCu);
      sub_6F6C(v38, &qword_11A30, &qword_9338);
      v3 = v45;

      v2 = v46;

      v32 = v33;
      v33 = v39;
    }
  }

  v40 = [v1 view];
  if (!v40)
  {
    goto LABEL_18;
  }

  v41 = v40;
  v42 = [v15 view];

  if (!v42)
  {
LABEL_19:
    __break(1u);
    return;
  }

  [v41 addSubview:v42];

  [v15 didMoveToParentViewController:v1];
  v43 = [v15 navigationController];

  if (v43)
  {
    v44 = [v43 navigationBar];

    [v44 setPrefersLargeTitles:1];
    (*(v3 + 8))(v9, v2);
  }

  else
  {
    (*(v3 + 8))(v9, v2);
  }
}

id WFSettingsKitViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFSettingsKitViewController.init()()
{
  *&v0[OBJC_IVAR___WFSettingsKitViewController_hostingController] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSettingsKitViewController();
  return objc_msgSendSuper2(&v2, "initWithNibName:bundle:", 0, 0);
}

Swift::Void __swiftcall WFSettingsKitViewController.handleURLDict(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_7910();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v65[-v10];
  v71 = sub_4CF4(&qword_11A38, &qword_9340);
  v12 = *(*(v71 - 1) + 64);
  v13 = __chkstk_darwin(v71);
  v15 = &v65[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v72 = &v65[-v17];
  v18 = __chkstk_darwin(v16);
  v20 = &v65[-v19];
  __chkstk_darwin(v18);
  v22 = &v65[-v21];
  v73 = 1752457584;
  v74 = 0xE400000000000000;
  sub_7CB0();
  if (*(a1._rawValue + 2) && (v23 = sub_6E64(v75), (v24 & 1) != 0))
  {
    sub_7024(*(a1._rawValue + 7) + 32 * v23, v76);
    sub_6EA8(v75);
    swift_dynamicCast();
  }

  else
  {
    sub_6EA8(v75);
  }

  sub_7900();

  if (![v1 isViewLoaded] || (v25 = *&v1[OBJC_IVAR___WFSettingsKitViewController_hostingController]) == 0)
  {
LABEL_9:
    if (qword_11788 != -1)
    {
      swift_once();
    }

    v26 = sub_79B0();
    sub_4E6C(v26, qword_12228);
    sub_6EFC(v22, v15);
    v27 = v2;

    v28 = v27;
    v29 = sub_7990();
    v30 = sub_7C20();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v31 = 136315906;
      v32 = sub_7B70();
      v34 = sub_68AC(v32, v33, v75);

      *(v31 + 4) = v34;
      *(v31 + 12) = 1024;
      v35 = [v28 isViewLoaded];

      *(v31 + 14) = v35;
      *(v31 + 18) = 2080;
      v76[0] = *&v28[OBJC_IVAR___WFSettingsKitViewController_hostingController];
      v36 = v76[0];
      sub_4CF4(&qword_11A40, &qword_9348);
      v37 = sub_7BA0();
      v39 = sub_68AC(v37, v38, v75);

      *(v31 + 20) = v39;
      *(v31 + 28) = 2080;
      sub_6EFC(v15, v72);
      v40 = sub_7BA0();
      v42 = v41;
      sub_6F6C(v15, &qword_11A38, &qword_9340);
      v43 = sub_68AC(v40, v42, v75);

      *(v31 + 30) = v43;
      _os_log_impl(&dword_0, v29, v30, "Could not handle URL with resource dictionary: %s, viewLoaded: %{BOOL}d, hostingController: %s, url: %s", v31, 0x26u);
      swift_arrayDestroy();
    }

    else
    {

      sub_6F6C(v15, &qword_11A38, &qword_9340);
    }

    v44 = v22;
    goto LABEL_21;
  }

  sub_6EFC(v22, v20);
  if ((*(v5 + 48))(v20, 1, v4) == 1)
  {
    sub_6F6C(v20, &qword_11A38, &qword_9340);
    goto LABEL_9;
  }

  (*(v5 + 32))(v11, v20, v4);
  v45 = qword_11788;
  v71 = v25;
  if (v45 != -1)
  {
    swift_once();
  }

  v46 = sub_79B0();
  sub_4E6C(v46, qword_12228);
  v70 = *(v5 + 16);
  v70(v9, v11, v4);

  v47 = sub_7990();
  v48 = sub_7C00();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v69 = v5 + 16;
    v50 = v49;
    v68 = swift_slowAlloc();
    v75[0] = v68;
    *v50 = 136315650;
    *(v50 + 4) = sub_68AC(0xD000000000000011, 0x800000000000A950, v75);
    *(v50 + 12) = 2080;
    sub_6FCC();
    v67 = v47;
    v51 = sub_7CF0();
    v66 = v48;
    v53 = v52;
    v54 = v9;
    v55 = *(v5 + 8);
    v55(v54, v4);
    v56 = sub_68AC(v51, v53, v75);

    *(v50 + 14) = v56;
    *(v50 + 22) = 2080;
    v57 = sub_7B70();
    v59 = sub_68AC(v57, v58, v75);

    *(v50 + 24) = v59;
    v60 = v67;
    _os_log_impl(&dword_0, v67, v66, "%s called url: %s with resource dict %s", v50, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v61 = v9;
    v55 = *(v5 + 8);
    v55(v61, v4);
  }

  v62 = v72;
  v70(v72, v11, v4);
  (*(v5 + 56))(v62, 0, 1, v4);
  v63 = v71;
  v64 = sub_79F0();
  sub_7920();
  v64(v75, 0);

  v55(v11, v4);
  v44 = v22;
LABEL_21:
  sub_6F6C(v44, &qword_11A38, &qword_9340);
}

id WFSettingsKitViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_7B80();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WFSettingsKitViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSettingsKitViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_67DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_6850(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_68AC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_68AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_6978(v11, 0, 0, 1, a1, a2);
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
    sub_7024(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_50F0(v11);
  return v7;
}

unint64_t sub_6978(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_6A84(a5, a6);
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
    result = sub_7CD0();
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

char *sub_6A84(uint64_t a1, unint64_t a2)
{
  v4 = sub_6AD0(a1, a2);
  sub_6C00(&off_C8D0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_6AD0(uint64_t a1, unint64_t a2)
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

  v6 = sub_6CEC(v5, 0);
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

  result = sub_7CD0();
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
        v10 = sub_7BC0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_6CEC(v10, 0);
        result = sub_7CC0();
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

uint64_t sub_6C00(uint64_t result)
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

  result = sub_6D60(result, v12, 1, v3);
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

void *sub_6CEC(uint64_t a1, uint64_t a2)
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

  sub_4CF4(&unk_11A70, &unk_9380);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_6D60(char *result, int64_t a2, char a3, char *a4)
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
    sub_4CF4(&unk_11A70, &unk_9380);
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

_BYTE **sub_6E54(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_6E64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7C90(*(v2 + 40));

  return sub_7080(a1, v4);
}

uint64_t sub_6EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4CF4(&qword_11A38, &qword_9340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4CF4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_6FCC()
{
  result = qword_11910;
  if (!qword_11910)
  {
    sub_7910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11910);
  }

  return result;
}

uint64_t sub_7024(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_7080(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_7148(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_7CA0();
      sub_6EA8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_71A4()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

void sub_7200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WFNetworkViewController();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = [objc_allocWithZone(WFNetworkListController) initWithViewController:v6];
  sub_4CF4(&qword_11BF8, &qword_9500);
  sub_7A80();
  v8 = *(v13 + 16);
  *(v13 + 16) = v7;
  v9 = v7;

  v10 = swift_dynamicCastObjCProtocolUnconditional();
  v11 = v6;
  v12 = [v9 networkListViewController:v11 showSettingsForNetwork:v10 context:a3 scrollToCellType:a4 controller:{v9, &OBJC_PROTOCOL___WFNetworkListRecord}];

  if (v12)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_7364@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WiFiSettingsViewProviderViewControllerRepresentable.Coordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_73D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_786C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_743C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_786C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_74BC()
{
  sub_786C();
  sub_7A60();
  __break(1u);
}

id sub_75F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_showOtherNetwork] = 0;
  *&v3[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetworkScaledRSSI] = 0;
  *&v3[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetwork] = 0;
  *&v3[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetworkState] = 0;
  *&v3[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_deviceCapability] = 0;
  if (a2)
  {
    v5 = sub_7B80();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for WFNetworkViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_7710(void *a1)
{
  v1[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_showOtherNetwork] = 0;
  *&v1[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetworkScaledRSSI] = 0;
  *&v1[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetwork] = 0;
  *&v1[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetworkState] = 0;
  *&v1[OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_deviceCapability] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFNetworkViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_77E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFNetworkViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_786C()
{
  result = qword_11BF0;
  if (!qword_11BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11BF0);
  }

  return result;
}