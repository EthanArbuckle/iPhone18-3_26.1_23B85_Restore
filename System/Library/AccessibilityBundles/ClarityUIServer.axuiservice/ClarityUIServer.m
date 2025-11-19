uint64_t sub_1CA0()
{
  result = sub_E72C();
  qword_188A8 = result;
  unk_188B0 = v1;
  return result;
}

uint64_t sub_1CD0()
{
  result = sub_E72C();
  qword_188C0 = result;
  *algn_188C8 = v1;
  return result;
}

uint64_t sub_1D00()
{
  result = sub_E72C();
  qword_188D8 = result;
  unk_188E0 = v1;
  return result;
}

uint64_t sub_1D30()
{
  result = sub_E72C();
  qword_188F0 = result;
  *algn_188F8 = v1;
  return result;
}

id sub_1D60(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_79E4(&qword_18928, &qword_F2C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v12 - v5;
  result = [objc_opt_self() sharedServiceManager];
  if (result)
  {
    v8 = result;
    v9 = sub_E6FC();
    [v8 beginTransactionWithIdentifier:v9 forService:a2];

    v10 = sub_E7FC();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = a1;
    v11[5] = a2;

    swift_unknownObjectRetain();
    sub_30B0(0, 0, v6, &unk_F3C0, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_E53C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_2008, 0, 0);
}

uint64_t sub_2008()
{
  v142 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = [objc_opt_self() defaultManager];
  *(v0 + 120) = 1;
  v6 = (v0 + 120);
  v7 = sub_E82C();
  v8 = *(v4 + 16);
  v8(v2, v7, v3);
  v9 = sub_E81C();
  v137 = v8;
  v8(v1, v9, v3);
  sub_E51C();
  v10 = sub_E6FC();

  v136 = v5;
  LODWORD(v2) = [v5 fileExistsAtPath:v10 isDirectory:v0 + 120];

  if (v2)
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v11 = sub_E55C();
    sub_7A2C(v11, qword_198C0);
    v12 = sub_E54C();
    v13 = sub_E86C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Found Legacy App icons directory. Removing.", v14, 2u);
    }

    v15 = *(v0 + 104);

    sub_E4FC(v16);
    v18 = v17;
    *(v0 + 40) = 0;
    v19 = [v5 removeItemAtURL:v17 error:v0 + 40];

    v20 = *(v0 + 40);
    if (v19)
    {
      v21 = v20;
      v6 = (v0 + 120);
    }

    else
    {
      v22 = v20;
      sub_E4CC();

      swift_willThrow();
      v23 = sub_E54C();
      v24 = sub_E84C();
      v6 = (v0 + 120);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v23, v24, "Legacy App icons directory could not be deleted", v25, 2u);
      }
    }
  }

  v26 = *(v0 + 112);
  sub_E51C();
  v27 = sub_E6FC();

  LODWORD(v26) = [v5 fileExistsAtPath:v27 isDirectory:v6];

  if (!v26)
  {
    goto LABEL_54;
  }

  v28 = *v6;
  if ((v28 & 1) == 0)
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v44 = sub_E55C();
    sub_7A2C(v44, qword_198C0);
    v45 = sub_E54C();
    v46 = sub_E84C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "App icons directory was not a directory. Removing.", v47, 2u);
    }

    v48 = *(v0 + 112);

    sub_E4FC(v49);
    v51 = v50;
    *(v0 + 16) = 0;
    v52 = [v5 removeItemAtURL:v50 error:v6 - 104];

    v53 = *(v0 + 16);
    if (v52)
    {
      v54 = v53;
      goto LABEL_54;
    }

    v103 = v53;
    sub_E4CC();

    swift_willThrow();
    swift_errorRetain();
    v104 = sub_E54C();
    v105 = sub_E84C();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v106 = 138412290;
      swift_errorRetain();
      v108 = _swift_stdlib_bridgeErrorToNSError();
      *(v106 + 4) = v108;
      *v107 = v108;
      v109 = "Unable to remove file at location of app icons directory: %@";
LABEL_50:
      _os_log_impl(&dword_0, v104, v105, v109, v106, 0xCu);
      sub_91CC(v107, &qword_18930, &qword_F2C8);

      goto LABEL_54;
    }

LABEL_51:

    goto LABEL_54;
  }

  v29 = v6 - 96;
  v30 = *(v0 + 48);
  v31 = *(v30 + 16);
  v32 = &_swiftEmptyArrayStorage;
  if (v31)
  {
    v132 = v6 - 96;
    v134 = v6;
    v33 = *(v0 + 72);
    v141 = &_swiftEmptyArrayStorage;
    sub_6738(0, v31, 0);
    v32 = &_swiftEmptyArrayStorage;
    v138 = objc_opt_self();
    v34 = (v30 + 40);
    do
    {
      v35 = *(v0 + 96);
      v36 = *(v34 - 1);
      v37 = *v34;

      v38 = sub_E6FC();
      v39 = [v138 urlForBundleIdentifier:v38];

      sub_E50C();

      v141 = v32;
      v41 = v32[2];
      v40 = v32[3];
      if (v41 >= v40 >> 1)
      {
        sub_6738(v40 > 1, v41 + 1, 1);
        v32 = v141;
      }

      v42 = *(v0 + 96);
      v43 = *(v0 + 64);
      v32[2] = v41 + 1;
      (*(v33 + 32))(v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v41, v42, v43);
      v34 += 2;
      --v31;
    }

    while (v31);
    v29 = v132;
    v6 = v134;
  }

  v55 = *(v0 + 112);
  sub_E4FC(v28);
  v57 = v56;
  type metadata accessor for URLResourceKey(0);
  isa = sub_E78C().super.isa;
  *(v0 + 24) = 0;
  v59 = [v136 contentsOfDirectoryAtURL:v57 includingPropertiesForKeys:isa options:0 error:v29];

  v60 = *(v0 + 24);
  if (!v59)
  {
    v110 = v60;

    sub_E4CC();

    swift_willThrow();
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v111 = sub_E55C();
    sub_7A2C(v111, qword_198C0);
    swift_errorRetain();
    v104 = sub_E54C();
    v105 = sub_E84C();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v106 = 138412290;
      swift_errorRetain();
      v112 = _swift_stdlib_bridgeErrorToNSError();
      *(v106 + 4) = v112;
      *v107 = v112;
      v109 = "Unable to list files in ClarityBoard app icons directory: %@";
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  v61 = *(v0 + 112);
  v62 = *(v0 + 64);
  v63 = sub_E79C();
  v64 = v60;

  v65 = swift_task_alloc();
  *(v65 + 16) = v61;
  v66 = sub_2DB4(sub_945C, v65, v63);

  v133 = *(v66 + 16);
  if (v133)
  {
    v67 = 0;
    v129 = v6 - 88;
    v68 = *(v0 + 72);
    v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v130 = v32 + v69;
    v131 = v66 + v69;
    v70 = *(v68 + 72);
    v135 = (v68 + 8);
    do
    {
      v139 = v67 + 1;
      v137(*(v0 + 88), v131 + v67 * v70, *(v0 + 64));
      v71 = v32[2] + 1;
      v72 = v130;
      while (--v71)
      {
        v73 = *(v0 + 88);
        v74 = *(v0 + 64);
        sub_947C(&qword_189C8, &type metadata accessor for URL);
        v72 += v70;
        if (sub_E6EC())
        {
          (*v135)(*(v0 + 88), *(v0 + 64));
          goto LABEL_29;
        }
      }

      if (qword_18900 != -1)
      {
        swift_once();
      }

      v75 = *(v0 + 80);
      v76 = *(v0 + 88);
      v77 = *(v0 + 64);
      v78 = sub_E55C();
      sub_7A2C(v78, qword_198C0);
      v137(v75, v76, v77);
      v79 = sub_E54C();
      v80 = sub_E86C();
      v81 = os_log_type_enabled(v79, v80);
      v82 = *(v0 + 80);
      v83 = *(v0 + 64);
      if (v81)
      {
        buf = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v141 = v128;
        *buf = 136315138;
        sub_947C(&qword_189D0, &type metadata accessor for URL);
        v126 = v80;
        v84 = sub_E94C();
        v86 = v85;
        v87 = v83;
        v88 = *v135;
        (*v135)(v82, v87);
        v89 = sub_C568(v84, v86, &v141);

        *(buf + 4) = v89;
        _os_log_impl(&dword_0, v79, v126, "Removing unused app icon file: %s", buf, 0xCu);
        sub_7AC8(v128);
      }

      else
      {

        v91 = v83;
        v88 = *v135;
        (*v135)(v82, v91);
      }

      v92 = *(v0 + 88);
      sub_E4FC(v90);
      v94 = v93;
      *(v0 + 32) = 0;
      v95 = [v136 removeItemAtURL:v93 error:v129];

      v96 = *(v0 + 32);
      if (!v95)
      {
        v97 = v96;
        sub_E4CC();

        swift_willThrow();
        swift_errorRetain();
        v98 = sub_E54C();
        v99 = sub_E84C();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          *v100 = 138412290;
          swift_errorRetain();
          v102 = _swift_stdlib_bridgeErrorToNSError();
          *(v100 + 4) = v102;
          *v101 = v102;
          _os_log_impl(&dword_0, v98, v99, "Unable to remove file: %@", v100, 0xCu);
          sub_91CC(v101, &qword_18930, &qword_F2C8);
        }

        else
        {
        }
      }

      v88(*(v0 + 88), *(v0 + 64));
LABEL_29:
      v67 = v139;
    }

    while (v139 != v133);
  }

  else
  {
  }

LABEL_54:
  v113 = [objc_opt_self() sharedServiceManager];
  if (!v113)
  {
    __break(1u);
  }

  v114 = v113;
  v116 = *(v0 + 104);
  v115 = *(v0 + 112);
  v117 = *(v0 + 88);
  v118 = *(v0 + 96);
  v119 = *(v0 + 72);
  v140 = *(v0 + 80);
  v121 = *(v0 + 56);
  v120 = *(v0 + 64);
  v122 = sub_E6FC();
  [v114 endTransactionWithIdentifier:v122 forService:v121];

  v123 = *(v119 + 8);
  v123(v116, v120);
  v123(v115, v120);

  v124 = *(v0 + 8);

  return v124();
}

uint64_t sub_2DB4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_E53C();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v23 = &_swiftEmptyArrayStorage;
  sub_6738(0, v10, 0);
  v11 = v23;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = a3 + v19;
  v18 = (v6 + 32);
  v13 = *(v6 + 72);
  while (1)
  {
    v21(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_6738(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    v11[2] = v15 + 1;
    (*v18)(v11 + v19 + v15 * v13, v9, v20);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2F70()
{
  v0 = sub_E4DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = sub_E4EC();
  v7[1] = v5;
  (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  sub_94C4();
  sub_E52C();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_30B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_79E4(&qword_18928, &qword_F2C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_9240(a3, v26 - v10, &qword_18928, &qword_F2C0);
  v12 = sub_E7FC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_91CC(v11, &qword_18928, &qword_F2C0);
  }

  else
  {
    sub_E7EC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_E7BC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_E74C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_91CC(a3, &qword_18928, &qword_F2C0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_91CC(a3, &qword_18928, &qword_F2C0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_33B0(void *a1, void (*a2)(void, void), uint64_t a3, void (*a4)(void, void), NSObject *a5)
{
  v10 = (*(*(sub_79E4(&qword_18928, &qword_F2C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v64 - v11;
  if (a1)
  {
    v13 = a1;
    v14 = [v13 responseDictionary];
    if (v14)
    {
      v15 = v14;
      v16 = sub_E6CC();

      v67 = 1635017060;
      v68 = 0xE400000000000000;
      sub_E8BC();
      if (*(v16 + 16) && (v17 = sub_CB10(&v69), (v18 & 1) != 0))
      {
        sub_7B68(*(v16 + 56) + 32 * v17, &v71);
        sub_7B14(&v69);
        sub_79E4(&qword_18938, &qword_F2D0);
        if (swift_dynamicCast())
        {
          v66 = v13;
          a2 = a4;
          v19 = a5;
          v20 = a3;
          a4 = v67;
          v21 = objc_opt_self();
          v22 = [v21 sharedServiceManager];
          if (!v22)
          {
            goto LABEL_37;
          }

          v23 = v22;

          v24 = sub_E6FC();
          [v23 beginTransactionWithIdentifier:v24 forService:v20];

          a3 = v20;
          v25 = sub_E7FC();
          (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
          v26 = swift_allocObject();
          v26[2] = 0;
          v26[3] = 0;
          v26[4] = v20;
          v26[5] = a4;
          v26[6] = a2;
          v26[7] = v19;
          swift_unknownObjectRetain();

          sub_30B0(0, 0, v12, &unk_F2E0, v26);

          v27 = [v21 sharedServiceManager];
          if (!v27)
          {
            __break(1u);
            goto LABEL_9;
          }

LABEL_35:
          v62 = v27;
          v63 = sub_E6FC();
          [v62 endTransactionWithIdentifier:v63 forService:a3];

          return;
        }
      }

      else
      {
        sub_7B14(&v69);
      }

      if (qword_18900 != -1)
      {
        swift_once();
      }

      v34 = sub_E55C();
      sub_7A2C(v34, qword_198C0);

      v35 = sub_E54C();
      v36 = sub_E85C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v65 = a3;
        v66 = a5;
        v38 = v37;
        v39 = v13;
        v40 = a4;
        v41 = swift_slowAlloc();
        v69 = v41;
        *v38 = 136315138;
        v42 = sub_E6DC();
        v44 = v43;

        v45 = sub_C568(v42, v44, &v69);

        *(v38 + 4) = v45;
        _os_log_impl(&dword_0, v35, v36, "Unexpected format for app icon response dictionary: %s.", v38, 0xCu);
        sub_7AC8(v41);
        a4 = v40;
        v13 = v39;

        a3 = v65;

        goto LABEL_26;
      }
    }

    else
    {
      if (qword_18900 != -1)
      {
        swift_once();
      }

      v46 = sub_E55C();
      sub_7A2C(v46, qword_198C0);
      v47 = sub_E54C();
      v48 = sub_E84C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_0, v47, v48, "Requested app icons, but received no response dictionary.", v49, 2u);
      }

      sub_79E4(&qword_18918, &qword_F2B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_F290;
      v69 = sub_E72C();
      v70 = v51;
      sub_E8BC();
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = 1;
      v52 = sub_6C4C(inited);
      swift_setDeallocating();
      sub_91CC(inited + 32, &qword_18920, &qword_F2B8);
      v35 = a5;
      a4(v52, 0);

      v27 = [objc_opt_self() sharedServiceManager];
      if (v27)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

LABEL_26:

    sub_79E4(&qword_18918, &qword_F2B0);
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_F290;
    v69 = sub_E72C();
    v70 = v54;
    sub_E8BC();
    *(v53 + 96) = &type metadata for Bool;
    *(v53 + 72) = 0;
    v55 = sub_6C4C(v53);
    swift_setDeallocating();
    sub_91CC(v53 + 32, &qword_18920, &qword_F2B8);
    a4(v55, 0);

    v27 = [objc_opt_self() sharedServiceManager];
    if (!v27)
    {
      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_35;
  }

LABEL_9:
  if (!a2)
  {
LABEL_28:
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v56 = sub_E55C();
    sub_7A2C(v56, qword_198C0);
    v29 = sub_E54C();
    v57 = sub_E84C();
    if (os_log_type_enabled(v29, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v29, v57, "Requested app icons, but received neither result nor error.", v58, 2u);
    }

    goto LABEL_32;
  }

  swift_errorRetain();
  if (qword_18900 != -1)
  {
    swift_once();
  }

  v28 = sub_E55C();
  sub_7A2C(v28, qword_198C0);
  swift_errorRetain();
  v29 = sub_E54C();
  v30 = sub_E84C();

  if (!os_log_type_enabled(v29, v30))
  {

    goto LABEL_34;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  *v31 = 138412290;
  swift_errorRetain();
  v33 = _swift_stdlib_bridgeErrorToNSError();
  *(v31 + 4) = v33;
  *v32 = v33;
  _os_log_impl(&dword_0, v29, v30, "Error requesting app icons: %@", v31, 0xCu);
  sub_91CC(v32, &qword_18930, &qword_F2C8);

LABEL_32:

LABEL_34:
  sub_79E4(&qword_18918, &qword_F2B0);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_F290;
  v69 = sub_E72C();
  v70 = v60;
  sub_E8BC();
  *(v59 + 96) = &type metadata for Bool;
  *(v59 + 72) = 1;
  v61 = sub_6C4C(v59);
  swift_setDeallocating();
  sub_91CC(v59 + 32, &qword_18920, &qword_F2B8);
  a4(v61, 0);

  v27 = [objc_opt_self() sharedServiceManager];
  if (v27)
  {
    goto LABEL_35;
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_3D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return _swift_task_switch(sub_3DBC, 0, 0);
}

uint64_t sub_3DBC()
{
  v1 = sub_79E4(&qword_18940, &qword_F300);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3 = sub_79E4(&qword_18948, &qword_F318);
  v4 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_3EDC;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v1, v3, 0, 0, &unk_F310, v2, v1);
}

uint64_t sub_3EDC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_3FF4, 0, 0);
}

id sub_3FF4()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_40F4(v0[2]);
  v2();

  result = [objc_opt_self() sharedServiceManager];
  if (result)
  {
    v4 = result;
    v5 = v0[3];

    v6 = sub_E6FC();
    [v4 endTransactionWithIdentifier:v6 forService:v5];

    v7 = v0[1];

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_40F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_79E4(&qword_18950, &qword_F320);
    v2 = sub_E92C();
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
    sub_7B68(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_7E8C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_7E8C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_7E8C(v31, v32);
    result = sub_E89C(v2[5]);
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
    result = sub_7E8C(v32, (v2[7] + 32 * v10));
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

void sub_43BC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_4448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  v5 = sub_79E4(&qword_18958, &qword_F328);
  v4[32] = v5;
  v6 = *(v5 - 8);
  v4[33] = v6;
  v7 = *(v6 + 64) + 15;
  v4[34] = swift_task_alloc();
  v8 = *(*(sub_79E4(&qword_18928, &qword_F2C0) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return _swift_task_switch(sub_455C, 0, 0);
}

uint64_t sub_455C()
{
  v1 = *(v0 + 240);
  v2 = *(v1 + 16);
  if (v2)
  {
    v31 = **(v0 + 232);
    v3 = (v1 + 32);
    v4 = sub_E7FC();
    v5 = *(v4 - 8);
    v30 = *(v5 + 56);
    v28 = v4;
    v29 = (v5 + 48);
    v27 = (v5 + 8);
    do
    {
      v32 = v3;
      v33 = v2;
      v8 = *(v0 + 280);
      v7 = *(v0 + 288);
      v9 = *(v0 + 248);
      v10 = *v3;
      v30(v7, 1, 1, v4);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v9;
      v11[5] = v10;
      sub_9240(v7, v8, &qword_18928, &qword_F2C0);
      LODWORD(v8) = (*v29)(v8, 1, v4);

      swift_unknownObjectRetain();
      v13 = *(v0 + 280);
      if (v8 == 1)
      {
        sub_91CC(*(v0 + 280), &qword_18928, &qword_F2C0);
        if (*v12)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_E7EC();
        (*v27)(v13, v4);
        if (*v12)
        {
LABEL_8:
          v16 = v11[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_E7BC();
          v15 = v17;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_9:
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_F340;
      *(v18 + 24) = v11;

      sub_79E4(&qword_18940, &qword_F300);
      v19 = v15 | v14;
      if (v15 | v14)
      {
        v19 = v0 + 144;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = v14;
        *(v0 + 168) = v15;
      }

      v6 = *(v0 + 288);
      *(v0 + 176) = 1;
      *(v0 + 184) = v19;
      *(v0 + 192) = v31;
      swift_task_create();

      sub_91CC(v6, &qword_18928, &qword_F2C0);
      v3 = v32 + 1;
      v2 = v33 - 1;
      v4 = v28;
    }

    while (v33 != 1);
  }

  v20 = *(v0 + 272);
  v21 = **(v0 + 232);
  sub_79E4(&qword_18940, &qword_F300);
  sub_E7CC();
  *(v0 + 296) = &_swiftEmptyArrayStorage;
  *(v0 + 217) = 0;
  v22 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v23 = swift_task_alloc();
  *(v0 + 304) = v23;
  *v23 = v0;
  v23[1] = sub_48EC;
  v24 = *(v0 + 272);
  v25 = *(v0 + 256);

  return TaskGroup.Iterator.next(isolation:)(v0 + 200, 0, 0, v25);
}

uint64_t sub_48EC()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return _swift_task_switch(sub_49E8, 0, 0);
}

uint64_t sub_49E8()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  if (v1 == 1)
  {
    v5 = *(v0 + 217);
    v6 = *(v0 + 288);
    v7 = *(v0 + 296);
    v8 = *(v0 + 280);
    v9 = *(v0 + 224);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_79E4(&qword_18960, &qword_F350);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F2A0;
    *(inited + 32) = sub_E72C();
    *(inited + 40) = v11;
    *(inited + 72) = sub_79E4(&qword_18968, &qword_F358);
    *(inited + 48) = v7;
    *(inited + 80) = sub_E72C();
    *(inited + 88) = v12;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = v5;
    v13 = sub_8134(inited);
    swift_setDeallocating();
    sub_79E4(&qword_18970, &qword_F360);
    swift_arrayDestroy();
    *v9 = v13;

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v3 = *(v0 + 216);
    if (v1)
    {
      v16 = *(v0 + 296);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = *(v0 + 296);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_660C(0, *(v4 + 2) + 1, 1, v4);
      }

      v19 = *(v4 + 2);
      v18 = *(v4 + 3);
      if (v19 >= v18 >> 1)
      {
        v4 = sub_660C((v18 > 1), v19 + 1, 1, v4);
      }

      *(v4 + 2) = v19 + 1;
      v20 = &v4[16 * v19];
      *(v20 + 4) = v2;
      *(v20 + 5) = v1;
    }

    else
    {
      v4 = *(v0 + 296);
    }

    v21 = *(v0 + 217) | v3;
    *(v0 + 296) = v4;
    *(v0 + 217) = v21 & 1;
    v22 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v23 = swift_task_alloc();
    *(v0 + 304) = v23;
    *v23 = v0;
    v23[1] = sub_48EC;
    v24 = *(v0 + 272);
    v25 = *(v0 + 256);

    return TaskGroup.Iterator.next(isolation:)(v0 + 200, 0, 0, v25);
  }
}

uint64_t sub_4C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_4D20;

  return sub_4E4C(a5, a4);
}

uint64_t sub_4D20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 24);
  v7 = *v3;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;

  return _swift_task_switch(sub_4E24, 0, 0);
}

uint64_t sub_4E24()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 32);
  *(v2 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_4E4C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_79E4(&qword_18988, &qword_F380) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_E53C();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_4F44, 0, 0);
}

uint64_t sub_4F44()
{
  v1 = v0[4];
  sub_52A0(v0[2], v1);
  v2 = sub_79E4(&qword_18990, &qword_F388);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_91CC(v0[4], &qword_18988, &qword_F380);
    v3 = v0[7];
    v4 = v0[4];

    v5 = v0[1];

    return v5(0, 0, 0);
  }

  else
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    v10 = (v0[4] + *(v2 + 48));
    v11 = *v10;
    v0[8] = *v10;
    v12 = v10[1];
    v0[9] = v12;
    (*(v8 + 32))(v7);
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_50DC;
    v14 = v0[7];

    return sub_8390(v14, v11, v12);
  }
}

uint64_t sub_50DC(__int16 a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_51DC, 0, 0);
}

uint64_t sub_51DC()
{
  v1 = *(v0 + 88);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 64);
  }

  else
  {
    v4 = *(v0 + 72);

    v3 = 0;
    v2 = 0;
  }

  v5 = HIBYTE(*(v0 + 88)) & 1;
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);

  v8 = *(v0 + 8);

  return v8(v3, v2, v5);
}

uint64_t sub_52A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = (*(*(sub_79E4(&qword_189B8, &qword_F3B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v71 - v5;
  v7 = sub_E53C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_40;
  }

  v12 = sub_CB54(0x7475626972747461, 0xEA00000000007365);
  if ((v13 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_7B68(*(a1 + 56) + 32 * v12, v78);
  sub_79E4(&qword_18948, &qword_F318);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = v77[0];
  if (!*(v77[0] + 16))
  {
    goto LABEL_39;
  }

  v15 = sub_CB54(0xD000000000000012, 0x8000000000010F70);
  if ((v16 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_7B68(*(v14 + 56) + 32 * v15, v78);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  v17 = v77[0];
  if (!*(v77[0] + 16))
  {
    goto LABEL_39;
  }

  v18 = sub_CB54(7565161, 0xE300000000000000);
  if ((v19 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_7B68(*(v17 + 56) + 32 * v18, v78);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v54 = sub_E55C();
    sub_7A2C(v54, qword_198C0);

    v55 = sub_E54C();
    v56 = sub_E85C();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v78[0] = v58;
      *v57 = 136315138;
      v59 = sub_E6DC();
      v61 = sub_C568(v59, v60, v78);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_0, v55, v56, "Unexpected format for app icon dictionary: %s", v57, 0xCu);
      sub_7AC8(v58);
    }

    goto LABEL_45;
  }

  v20 = v77[0];
  if (!*(v77[0] + 16))
  {
    goto LABEL_39;
  }

  v21 = sub_CB54(0x6449656C646E7562, 0xE800000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_7B68(*(v20 + 56) + 32 * v21, v78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v23 = v77[1];
  if (!*(v20 + 16) || (v76 = v77[0], v24 = sub_CB54(0x6B726F77747261, 0xE700000000000000), (v25 & 1) == 0))
  {

    goto LABEL_39;
  }

  sub_7B68(*(v20 + 56) + 32 * v24, v78);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:

    goto LABEL_40;
  }

  v74 = v77[0];
  if (qword_188D0 != -1)
  {
    swift_once();
  }

  if (qword_188D8 == v76 && unk_188E0 == v23 || (sub_E95C() & 1) != 0)
  {

    if (qword_188A0 != -1)
    {
      swift_once();
    }

    v26 = &qword_188A8;
LABEL_24:
    v27 = *v26;
    v75 = v26[1];
    v76 = v27;

    goto LABEL_25;
  }

  v75 = v23;
  if (qword_188E8 != -1)
  {
    swift_once();
  }

  if (qword_188F0 == v76 && *algn_188F8 == v75 || (sub_E95C() & 1) != 0)
  {

    if (qword_188B8 != -1)
    {
      swift_once();
    }

    v26 = &qword_188C0;
    goto LABEL_24;
  }

LABEL_25:
  v28 = v74;
  sub_40F4(v74);
  v29 = objc_allocWithZone(AMSMediaArtwork);
  isa = sub_E6BC().super.isa;

  v31 = [v29 initWithDictionary:isa];

  v73 = v31;
  [v31 artworkSize];
  v33 = v32;
  v35 = v34;
  [objc_opt_self() size];
  v80.width = v36;
  v80.height = v37;
  v79.width = v33;
  v79.height = v35;
  if (!CGSizeEqualToSize(v79, v80))
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v38 = sub_E55C();
    sub_7A2C(v38, qword_198C0);

    v39 = sub_E54C();
    v40 = sub_E85C();

    v72 = v40;
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v77[0] = v71;
      *v41 = 136315394;
      *(v41 + 4) = sub_C568(v76, v75, v77);
      *(v41 + 12) = 2080;
      *v78 = v33;
      *&v78[1] = v35;
      type metadata accessor for CGSize(0);
      v42 = sub_E73C();
      v44 = sub_C568(v42, v43, v77);

      *(v41 + 14) = v44;
      _os_log_impl(&dword_0, v39, v72, "App icon for %s had unexpected size: %s", v41, 0x16u);
      swift_arrayDestroy();
    }

    v28 = v74;
  }

  if (!*(v28 + 16) || (v45 = sub_CB54(7107189, 0xE300000000000000), (v46 & 1) == 0))
  {

LABEL_49:
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v64 = sub_E55C();
    sub_7A2C(v64, qword_198C0);
    v65 = v75;

    v48 = sub_E54C();
    v49 = sub_E85C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v78[0] = v51;
      *v50 = 136315138;
      v66 = sub_C568(v76, v65, v78);

      *(v50 + 4) = v66;
      v53 = "Unable to get template URL for artwork: %s";
      goto LABEL_53;
    }

LABEL_54:

    goto LABEL_55;
  }

  sub_7B68(*(v74 + 56) + 32 * v45, v78);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_49;
  }

  sub_9184(0, &qword_189C0, AMSMediaArtwork_ptr);
  sub_E72C();
  sub_E87C();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_91CC(v6, &qword_189B8, &qword_F3B0);
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v47 = sub_E55C();
    sub_7A2C(v47, qword_198C0);

    v48 = sub_E54C();
    v49 = sub_E85C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v78[0] = v51;
      *v50 = 136315138;
      v52 = sub_C568(v76, v75, v78);

      *(v50 + 4) = v52;
      v53 = "Unable to get artwork URL for app: %s";
LABEL_53:
      _os_log_impl(&dword_0, v48, v49, v53, v50, 0xCu);
      sub_7AC8(v51);

LABEL_55:

LABEL_45:
      v62 = sub_79E4(&qword_18990, &qword_F388);
      return (*(*(v62 - 8) + 56))(a2, 1, 1, v62);
    }

    goto LABEL_54;
  }

  v67 = *(v8 + 32);
  v67(v11, v6, v7);
  v68 = sub_79E4(&qword_18990, &qword_F388);
  v69 = &a2[*(v68 + 48)];
  v67(a2, v11, v7);
  v70 = v75;
  *v69 = v76;
  *(v69 + 1) = v70;
  return (*(*(v68 - 8) + 56))(a2, 0, 1, v68);
}

uint64_t sub_5E98(uint64_t a1, id *a2)
{
  result = sub_E70C();
  *a2 = 0;
  return result;
}

uint64_t sub_5F10(uint64_t a1, id *a2)
{
  v3 = sub_E71C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_5F90@<X0>(void *a1@<X8>)
{
  sub_E72C();
  v2 = sub_E6FC();

  *a1 = v2;
  return result;
}

uint64_t sub_5FD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_E72C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_6004(uint64_t a1)
{
  v2 = sub_947C(&qword_18AB0, type metadata accessor for URLResourceKey);
  v3 = sub_947C(&qword_18AB8, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_60C0(uint64_t a1)
{
  v2 = sub_947C(&qword_189A8, type metadata accessor for FileAttributeKey);
  v3 = sub_947C(&unk_18AD0, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_617C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_E6FC();

  *a2 = v5;
  return result;
}

uint64_t sub_61C4(uint64_t a1)
{
  v2 = sub_947C(&qword_18AC0, type metadata accessor for FileProtectionType);
  v3 = sub_947C(&qword_18AC8, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_628C()
{
  v1 = *v0;
  sub_E72C();
  v2 = sub_E77C();

  return v2;
}

uint64_t sub_62C8()
{
  v1 = *v0;
  sub_E72C();
  sub_E75C();
}

Swift::Int sub_631C()
{
  v1 = *v0;
  sub_E72C();
  sub_E9AC();
  sub_E75C();
  v2 = sub_E9CC();

  return v2;
}

uint64_t sub_6394(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_E72C();
  v6 = v5;
  if (v4 == sub_E72C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_E95C();
  }

  return v9 & 1;
}

uint64_t sub_641C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6514;

  return v7(a1);
}

uint64_t sub_6514()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_660C(char *result, int64_t a2, char a3, char *a4)
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
    sub_79E4(&qword_18978, &qword_F368);
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

char *sub_6718(char *a1, int64_t a2, char a3)
{
  result = sub_6758(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_6738(size_t a1, int64_t a2, char a3)
{
  result = sub_6864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6758(char *result, int64_t a2, char a3, char *a4)
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
    sub_79E4(&qword_18978, &qword_F368);
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

size_t sub_6864(size_t result, int64_t a2, char a3, void *a4)
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

  sub_79E4(&qword_189E0, &qword_F3C8);
  v10 = *(sub_E53C() - 8);
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
  v15 = *(sub_E53C() - 8);
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

uint64_t sub_6A3C(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = sub_6B30;

  return v6(v2 + 16);
}

uint64_t sub_6B30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v4 = *(v1 + 32);
  *v3 = *(v1 + 16);
  *(v3 + 16) = v4;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_6C4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_79E4(&qword_18950, &qword_F320);
    v3 = sub_E92C();
    v4 = a1 + 32;

    while (1)
    {
      sub_9240(v4, v13, &qword_18920, &qword_F2B8);
      result = sub_CB10(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_7E8C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void sub_6D88(NSObject *p_aBlock, uint64_t a2, const void *a3)
{
  v66 = a2;
  v69 = sub_E53C();
  v5 = *(v69 - 1);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = swift_allocObject();
  *(v65 + 16) = a3;
  isa = p_aBlock[2].isa;
  v64 = a3;
  _Block_copy(a3);
  v10 = &_swiftEmptyArrayStorage;
  if (!isa)
  {
    goto LABEL_14;
  }

  v11 = 0;
  v68 = (v5 + 8);
  v12 = p_aBlock + 5;
  v63 = p_aBlock + 5;
  do
  {
    v67 = v10;
    v13 = &v12[2 * v11];
    v10 = v11;
    while (1)
    {
      if (v10 >= isa)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        swift_once();
LABEL_17:
        v28 = sub_E55C();
        sub_7A2C(v28, qword_198C0);

        p_aBlock = sub_E54C();
        v29 = sub_E86C();

        if (os_log_type_enabled(p_aBlock, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          aBlock = v31;
          *v30 = 136315138;
          v32 = sub_E7AC();
          v34 = sub_C568(v32, v33, &aBlock);

          *(v30 + 4) = v34;
          _os_log_impl(&dword_0, p_aBlock, v29, "Downloading missing app icons: %s", v30, 0xCu);
          sub_7AC8(v31);
        }

        v35 = objc_opt_self();
        v36 = [v35 bagSubProfile];
        if (!v36)
        {
          goto LABEL_51;
        }

        p_aBlock = v36;
        v37 = [v35 bagSubProfileVersion];
        if (!v37)
        {
LABEL_52:
          _Block_release(v64);

          __break(1u);
          return;
        }

        v38 = v37;
        v39 = [objc_opt_self() bagForProfile:p_aBlock profileVersion:v37];

        v40 = objc_allocWithZone(AMSMediaTask);
        v41 = sub_E6FC();
        v42 = sub_E6FC();
        v69 = [v40 initWithType:0 clientIdentifier:v41 clientVersion:v42 bag:v39];

        aBlock = &_swiftEmptyArrayStorage;
        sub_6718(0, v13, 0);
        v67 = v10;
        v43 = (v10 + 5);
        v44 = aBlock;
        while (1)
        {
          v46 = *(v43 - 1);
          v45 = *v43;
          v47 = qword_188A0;

          if (v47 != -1)
          {
            swift_once();
          }

          v48 = qword_188A8 == v46 && unk_188B0 == v45;
          if (v48 || (sub_E95C() & 1) != 0)
          {
            v49 = &qword_188D8;
            if (qword_188D0 != -1)
            {
              swift_once();
              v49 = &qword_188D8;
            }
          }

          else
          {
            if (qword_188B8 != -1)
            {
              swift_once();
            }

            v54 = qword_188C0 == v46 && *algn_188C8 == v45;
            if (!v54 && (sub_E95C() & 1) == 0)
            {
              goto LABEL_32;
            }

            v49 = &qword_188F0;
            if (qword_188E8 != -1)
            {
              swift_once();
              v49 = &qword_188F0;
            }
          }

          v46 = *v49;
          v50 = v49[1];

          v45 = v50;
LABEL_32:
          aBlock = v44;
          v52 = v44[2];
          v51 = v44[3];
          if (v52 >= v51 >> 1)
          {
            sub_6718((v51 > 1), v52 + 1, 1);
            v44 = aBlock;
          }

          v44[2] = v52 + 1;
          v53 = &v44[2 * v52];
          v53[4] = v46;
          v53[5] = v45;
          v43 += 2;
          v13 = (v13 - 1);
          if (!v13)
          {

            v55 = sub_E78C().super.isa;

            v56 = v69;
            [v69 setBundleIdentifiers:v55];

            v57 = [v56 perform];
            v58 = swift_allocObject();
            v58[2] = v66;
            v58[3] = sub_79DC;
            v58[4] = v65;
            v74 = sub_7AA4;
            v75 = v58;
            aBlock = _NSConcreteStackBlock;
            v71 = 1107296256;
            v72 = sub_43BC;
            v73 = &unk_14B10;
            v59 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();

            [(objc_class *)v57 addFinishBlock:v59];
            _Block_release(v59);

            goto LABEL_46;
          }
        }
      }

      v11 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_48;
      }

      v15 = v13[-1].isa;
      v14 = v13->isa;
      v16 = objc_opt_self();

      v17 = [v16 defaultManager];
      v18 = objc_opt_self();
      v19 = sub_E6FC();
      v20 = [v18 urlForBundleIdentifier:v19];

      sub_E50C();
      sub_E51C();
      (*v68)(v8, v69);
      p_aBlock = sub_E6FC();

      LOBYTE(v19) = [v17 fileExistsAtPath:p_aBlock];

      if ((v19 & 1) == 0)
      {
        break;
      }

      v10 = (v10 + 1);
      v13 += 2;
      if (v11 == isa)
      {
        v10 = v67;
        goto LABEL_14;
      }
    }

    v10 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      p_aBlock = &aBlock;
      sub_6718(0, v10[2] + 1, 1);
      v10 = aBlock;
    }

    v12 = v63;
    v23 = v10[2];
    v22 = v10[3];
    if (v23 >= v22 >> 1)
    {
      p_aBlock = &aBlock;
      sub_6718((v22 > 1), v23 + 1, 1);
      v10 = aBlock;
    }

    v10[2] = v23 + 1;
    v24 = &v10[2 * v23];
    v24[4] = v15;
    v24[5] = v14;
  }

  while (v11 != isa);
LABEL_14:
  v13 = v10[2];
  if (v13)
  {
    v25 = [objc_opt_self() sharedServiceManager];
    if (v25)
    {
      v26 = v25;
      v27 = sub_E6FC();
      [v26 beginTransactionWithIdentifier:v27 forService:v66];

      if (qword_18900 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_49;
    }

    _Block_release(v64);
    __break(1u);
LABEL_51:
    _Block_release(v64);
    __break(1u);
    goto LABEL_52;
  }

  sub_79E4(&qword_18918, &qword_F2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_F290;
  aBlock = sub_E72C();
  v71 = v61;
  sub_E8BC();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 0;
  sub_6C4C(inited);
  swift_setDeallocating();
  sub_91CC(inited + 32, &qword_18920, &qword_F2B8);
  v57 = sub_E6BC().super.isa;
  (*(v64 + 2))(v64, v57, 0);

LABEL_46:
}

void sub_7748(uint64_t a1, void *a2)
{
  sub_9184(0, &qword_18910, CLFSettings_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  aBlock = a2;
  _Block_copy(a2);
  v4 = [ObjCClassFromMetadata sharedInstance];
  v5 = [v4 applicationBundleIdentifiers];

  v6 = sub_E79C();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + 40;
    v10 = &_swiftEmptyArrayStorage;
    do
    {
      v22 = v10;
      v11 = (v9 + 16 * v8);
      v12 = v8;
      while (1)
      {
        if (v12 >= *(v6 + 16))
        {
          __break(1u);
          return;
        }

        v14 = *(v11 - 1);
        v13 = *v11;
        v8 = v12 + 1;
        v15 = objc_opt_self();

        v16 = sub_E6FC();
        LODWORD(v15) = [v15 shouldDownloadForBundleIdentifier:v16];

        if (v15)
        {
          break;
        }

        v11 += 2;
        ++v12;
        if (v7 == v8)
        {
          v10 = v22;
          goto LABEL_15;
        }
      }

      v10 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_6718(0, v22[2].isa + 1, 1);
        v10 = v22;
      }

      isa = v10[2].isa;
      v17 = v10[3].isa;
      if (isa >= v17 >> 1)
      {
        sub_6718((v17 > 1), isa + 1, 1);
        v10 = v22;
      }

      v10[2].isa = (isa + 1);
      v19 = &v10[2 * isa];
      v19[4].isa = v14;
      v19[5].isa = v13;
      v9 = v6 + 40;
    }

    while (v7 - 1 != v12);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

LABEL_15:

  sub_1D60(v10, a1);
  _Block_copy(aBlock);
  sub_6D88(v10, a1, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

uint64_t sub_79A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_79E4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_7A2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_7A64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7AC8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_7B68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_7BC4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_7C14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_9820;

  return sub_3D98(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_7CE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_9820;

  return sub_641C(a1, v5);
}

uint64_t sub_7DA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7DD8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_9820;

  return sub_4448(a1, a2, v7, v6);
}

_OWORD *sub_7E8C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_7EC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_9820;

  return sub_4C80(a1, v4, v5, v7, v6);
}

uint64_t sub_7F88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_8040;

  return sub_6A3C(a1, v5);
}

uint64_t sub_8040()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_8134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_79E4(&qword_18980, &qword_F370);
    v3 = sub_E92C();
    v4 = a1 + 32;

    while (1)
    {
      sub_9240(v4, &v13, &qword_18970, &qword_F360);
      v5 = v13;
      v6 = v14;
      result = sub_CB54(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_7E8C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_8268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_79E4(&qword_189B0, &qword_F3A8);
    v3 = sub_E92C();
    v4 = a1 + 32;

    while (1)
    {
      sub_9240(v4, &v11, &qword_189A0, &qword_F3A0);
      v5 = v11;
      result = sub_CBCC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_7E8C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_8390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v4 = sub_E53C();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_8498, 0, 0);
}

uint64_t sub_8498()
{
  v1 = v0;
  v0[22] = [objc_opt_self() sharedSession];
  v2 = async function pointer to NSURLSession.download(from:delegate:)[1];
  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v1;
  v3[1] = sub_8594;
  v4 = v1[21];
  v5 = v1[14];

  return NSURLSession.download(from:delegate:)(v4, v5, 0);
}

uint64_t sub_8594(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v9 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v6 = sub_8EF4;
  }

  else
  {
    v7 = *(v4 + 176);

    v6 = sub_86EC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_86EC()
{
  v93 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = sub_E82C();
  (*(v3 + 16))(v1, v4, v2);
  v5 = [objc_opt_self() defaultManager];
  sub_E4FC(v6);
  v8 = v7;
  v0[11] = 0;
  v9 = [v5 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:v0 + 11];

  v10 = v0[11];
  if (v9)
  {
    v11 = v0[21];
    v12 = v0[19];
    v14 = v0[15];
    v13 = v0[16];
    v15 = objc_opt_self();
    v16 = v10;
    v17 = sub_E6FC();
    v18 = [v15 urlForBundleIdentifier:v17];

    sub_E50C();
    sub_E4FC(v19);
    v21 = v20;
    sub_E4FC(v22);
    v24 = v23;
    v0[12] = 0;
    LODWORD(v18) = [v5 copyItemAtURL:v21 toURL:v23 error:v0 + 12];

    v25 = v0[12];
    if (v18)
    {
      v26 = v0[19];
      v27 = v25;
      sub_E51C();
      sub_79E4(&qword_18998, &qword_F398);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_F290;
      *(inited + 32) = NSFileProtectionKey;
      type metadata accessor for FileProtectionType(0);
      *(inited + 64) = v29;
      *(inited + 40) = NSFileProtectionNone;
      v30 = NSFileProtectionKey;
      v31 = NSFileProtectionNone;
      sub_8268(inited);
      swift_setDeallocating();
      sub_91CC(inited + 32, &qword_189A0, &qword_F3A0);
      type metadata accessor for FileAttributeKey(0);
      sub_947C(&qword_189A8, type metadata accessor for FileAttributeKey);
      isa = sub_E6BC().super.isa;

      v33 = sub_E6FC();

      v0[13] = 0;
      v34 = [v5 setAttributes:isa ofItemAtPath:v33 error:v0 + 13];

      v35 = v0[13];
      if (v34)
      {
        v37 = v0[20];
        v36 = v0[21];
        v39 = v0[18];
        v38 = v0[19];
        v40 = v0[17];
        v41 = v35;

        v42 = *(v39 + 8);
        v42(v38, v40);
        v42(v37, v40);
        v42(v36, v40);
      }

      else
      {
        v68 = v35;
        sub_E4CC();

        swift_willThrow();
        if (qword_18900 != -1)
        {
          swift_once();
        }

        v69 = sub_E55C();
        sub_7A2C(v69, qword_198C0);
        swift_errorRetain();
        v70 = sub_E54C();
        v71 = sub_E84C();

        v72 = os_log_type_enabled(v70, v71);
        v73 = v0[21];
        v91 = v0[20];
        v74 = v0[18];
        v75 = v0[19];
        v76 = v0[17];
        if (v72)
        {
          v89 = v0[21];
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *v77 = 138412290;
          swift_errorRetain();
          v79 = _swift_stdlib_bridgeErrorToNSError();
          *(v77 + 4) = v79;
          *v78 = v79;
          _os_log_impl(&dword_0, v70, v71, "Unable to set file protection class on app icon: %@", v77, 0xCu);
          sub_91CC(v78, &qword_18930, &qword_F2C8);

          v80 = *(v74 + 8);
          v80(v75, v76);
          v80(v91, v76);
          v80(v89, v76);
        }

        else
        {

          v81 = *(v74 + 8);
          v81(v75, v76);
          v81(v91, v76);
          v81(v73, v76);
        }
      }

      v67 = 1;
      goto LABEL_19;
    }

    v49 = v0[19];
    v48 = v0[20];
    v50 = v0[17];
    v51 = v0[18];
    v52 = v25;
    sub_E4CC();

    swift_willThrow();
    v47 = *(v51 + 8);
    v47(v49, v50);
    v47(v48, v50);
  }

  else
  {
    v43 = v0[20];
    v44 = v0[17];
    v45 = v0[18];
    v46 = v10;
    sub_E4CC();

    swift_willThrow();
    v47 = *(v45 + 8);
    v47(v43, v44);
  }

  if (qword_18900 != -1)
  {
    swift_once();
  }

  v53 = v0[16];
  v54 = sub_E55C();
  sub_7A2C(v54, qword_198C0);

  swift_errorRetain();
  v55 = sub_E54C();
  v56 = sub_E84C();

  v57 = os_log_type_enabled(v55, v56);
  v58 = v0[21];
  v60 = v0[17];
  v59 = v0[18];
  if (v57)
  {
    v90 = v0[21];
    v61 = v0[15];
    v62 = v0[16];
    v88 = v0[17];
    v63 = swift_slowAlloc();
    v87 = v47;
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v92 = v65;
    *v63 = 136315394;
    *(v63 + 4) = sub_C568(v61, v62, &v92);
    *(v63 + 12) = 2112;
    swift_errorRetain();
    v66 = _swift_stdlib_bridgeErrorToNSError();
    *(v63 + 14) = v66;
    *v64 = v66;
    _os_log_impl(&dword_0, v55, v56, "Error copying artwork for app with bundle identifier %s: %@", v63, 0x16u);
    sub_91CC(v64, &qword_18930, &qword_F2C8);

    sub_7AC8(v65);

    v87(v90, v88);
  }

  else
  {

    v47(v58, v60);
  }

  v67 = 0;
LABEL_19:
  v83 = v0[20];
  v82 = v0[21];
  v84 = v0[19];

  v85 = v0[1];

  return v85(v67);
}

uint64_t sub_8EF4()
{
  v20 = v0;

  if (qword_18900 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 128);
  v3 = sub_E55C();
  sub_7A2C(v3, qword_198C0);

  swift_errorRetain();
  v4 = sub_E54C();
  v5 = sub_E84C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 192);
  if (v6)
  {
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_C568(v9, v8, &v19);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_0, v4, v5, "Error downloading artwork for app with bundle identifier %s: %@", v10, 0x16u);
    sub_91CC(v11, &qword_18930, &qword_F2C8);

    sub_7AC8(v12);
  }

  else
  {
  }

  v15 = *(v0 + 160);
  v14 = *(v0 + 168);
  v16 = *(v0 + 152);

  v17 = *(v0 + 8);

  return v17(256);
}

uint64_t sub_9184(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_91CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_79E4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_9240(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_79E4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_92D4(void (*a1)(void), void (*a2)(void))
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  a1(v2[4]);
  a2(v2[5]);

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_933C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_8040;

  return sub_1EEC(a1, v4, v5, v7, v6);
}

void sub_9410(uint64_t a1, unint64_t *a2)
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

uint64_t sub_947C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_94C4()
{
  result = qword_189D8;
  if (!qword_189D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_189D8);
  }

  return result;
}

__n128 sub_9518(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_9528(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_9548(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_982C()
{
  v0 = sub_E55C();
  sub_E084(v0, qword_198C0);
  sub_7A2C(v0, qword_198C0);
  v1 = [objc_opt_self() commonLog];
  return sub_E56C();
}

Swift::Int sub_98A4()
{
  sub_E9AC();
  sub_E9BC(0);
  return sub_E9CC();
}

Swift::Int sub_9910()
{
  sub_E9AC();
  sub_E9BC(0);
  return sub_E9CC();
}

void sub_9A68(void *a1)
{
  v1 = UIAccessibilityScreenChangedNotification;
  v3 = a1;
  v2 = [v3 view];
  UIAccessibilityPostNotification(v1, v2);
}

id sub_9AF8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a5(a4);
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

id sub_9B94(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_9C34()
{
  v0 = sub_E5EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_E5FC();
  v13 = 1;
  sub_9EFC(&v26);
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v14 = v26;
  v15 = v27;
  v24[6] = v32;
  v24[7] = v33;
  v24[8] = v34;
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v23 = v35;
  v25 = v35;
  v24[0] = v26;
  v24[1] = v27;
  sub_9240(&v14, &v10, &qword_18C50, &qword_F9D0);
  sub_91CC(v24, &qword_18C50, &qword_F9D0);
  *&v12[103] = v20;
  *&v12[119] = v21;
  *&v12[135] = v22;
  *&v12[39] = v16;
  *&v12[55] = v17;
  *&v12[71] = v18;
  *&v12[87] = v19;
  *&v12[7] = v14;
  v12[151] = v23;
  *&v12[23] = v15;
  v6 = v13;
  v7 = sub_E69C();
  v8 = sub_E63C();
  *(&v11[6] + 1) = *&v12[96];
  *(&v11[7] + 1) = *&v12[112];
  *(&v11[8] + 1) = *&v12[128];
  *(&v11[2] + 1) = *&v12[32];
  *(&v11[3] + 1) = *&v12[48];
  *(&v11[4] + 1) = *&v12[64];
  *(&v11[5] + 1) = *&v12[80];
  *(v11 + 1) = *v12;
  v10 = v5;
  LOBYTE(v11[0]) = v6;
  *(&v11[9] + 1) = *&v12[144];
  *(&v11[1] + 1) = *&v12[16];
  *&v11[10] = v7;
  BYTE8(v11[10]) = v8;
  BYTE9(v11[10]) = 1;
  sub_E5DC();
  sub_79E4(&qword_18C58, &qword_F9D8);
  sub_C314();
  sub_E68C();
  (*(v1 + 8))(v4, v0);
  v34 = v11[7];
  v35 = v11[8];
  v36[0] = v11[9];
  *(v36 + 10) = *(&v11[9] + 10);
  v30 = v11[3];
  v31 = v11[4];
  v32 = v11[5];
  v33 = v11[6];
  v26 = v10;
  v27 = v11[0];
  v28 = v11[1];
  v29 = v11[2];
  return sub_91CC(&v26, &qword_18C58, &qword_F9D8);
}

uint64_t sub_9EFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_E5BC();
  v12[0] = 1;
  sub_A138(&v25);
  v17 = *v26;
  v18 = *&v26[16];
  v19[0] = *&v26[32];
  *(v19 + 9) = *&v26[41];
  v16 = v25;
  v20[2] = *&v26[16];
  v21[0] = *&v26[32];
  *(v21 + 9) = *&v26[41];
  v20[0] = v25;
  v20[1] = *v26;
  sub_9240(&v16, v22, &qword_18CA0, &qword_F9F8);
  sub_91CC(v20, &qword_18CA0, &qword_F9F8);
  *(&v15[1] + 7) = v17;
  *(&v15[2] + 7) = v18;
  *(&v15[3] + 7) = v19[0];
  v15[4] = *(v19 + 9);
  *(v15 + 7) = v16;
  v3 = sub_E6AC();
  KeyPath = swift_getKeyPath();
  v14 = 1;
  v22[0] = v2;
  v22[1] = 0;
  v23[0] = 1;
  *&v23[1] = v15[0];
  *&v23[17] = v15[1];
  *&v23[33] = v15[2];
  *&v23[49] = v15[3];
  *&v23[65] = v15[4];
  *&v23[88] = KeyPath;
  v24 = v3;
  *&v13[55] = *&v23[32];
  *&v13[39] = *&v23[16];
  *&v13[23] = *v23;
  *&v13[7] = v2;
  *&v13[119] = v3;
  *&v13[103] = *&v23[80];
  *&v13[87] = *&v23[64];
  *&v13[71] = *&v23[48];
  v12[120] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v5 = *v13;
  v6 = *&v13[16];
  v7 = *&v13[32];
  *(a1 + 57) = *&v13[48];
  *(a1 + 41) = v7;
  *(a1 + 25) = v6;
  *(a1 + 9) = v5;
  v8 = *&v13[64];
  v9 = *&v13[80];
  v10 = *&v13[96];
  *(a1 + 120) = *&v13[111];
  *(a1 + 105) = v10;
  *(a1 + 89) = v9;
  *(a1 + 73) = v8;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  v25 = v2;
  v26[0] = 1;
  *&v26[1] = v15[0];
  v27 = v15[4];
  *&v26[49] = v15[3];
  *&v26[33] = v15[2];
  *&v26[17] = v15[1];
  v28 = KeyPath;
  v29 = v3;
  sub_9240(v22, v12, &qword_18CA8, &qword_FA30);
  return sub_91CC(&v25, &qword_18CA8, &qword_FA30);
}

uint64_t sub_A138@<X0>(uint64_t a1@<X8>)
{
  sub_E5CC();
  type metadata accessor for CLUIServer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_E64C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8 & 1;
  *(a1 + 40) = v10;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  sub_CF90(v4, v6, v8 & 1);

  sub_CFA0(v4, v6, v8 & 1);
}

id sub_A2CC()
{
  result = [objc_allocWithZone(type metadata accessor for CLUIServer()) init];
  qword_198D8 = result;
  return result;
}

void sub_A358()
{
  swift_getObjectType();
  if (_AXSClarityUIEnabled())
  {
    v63 = -1;
    v1 = [objc_opt_self() sharedConnection];
    if (!v1)
    {
      if (qword_18900 != -1)
      {
        swift_once();
      }

      v32 = sub_E55C();
      sub_7A2C(v32, qword_198C0);
      v2 = sub_E54C();
      v33 = sub_E84C();
      if (os_log_type_enabled(v2, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_0, v2, v33, "Could not get profile connection", v34, 2u);
      }

      goto LABEL_35;
    }

    v2 = v1;
    v3 = [v1 unlockScreenTypeWithOutSimplePasscodeType:&v63];
    if ([v2 isPasscodeSet])
    {
      if (v3 || v63 == -1)
      {
        v5 = [objc_opt_self() sharedDisplayManager];
        if (v5)
        {
          v6 = v5;
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v8 = objc_opt_self();
          v9 = [v8 bundleForClass:ObjCClassFromMetadata];
          v57._countAndFlagsBits = 0xE000000000000000;
          v65._object = 0x8000000000011210;
          v65._countAndFlagsBits = 0xD000000000000023;
          v72.value._countAndFlagsBits = 0;
          v72.value._object = 0;
          v10.super.isa = v9;
          v79._countAndFlagsBits = 0;
          v79._object = 0xE000000000000000;
          sub_E4AC(v65, v72, v10, v79, v57);

          v11 = sub_E6FC();

          v12 = [v8 bundleForClass:ObjCClassFromMetadata];
          v58._countAndFlagsBits = 0xE000000000000000;
          v66._countAndFlagsBits = 0xD00000000000002BLL;
          v66._object = 0x8000000000011240;
          v73.value._countAndFlagsBits = 0;
          v73.value._object = 0;
          v13.super.isa = v12;
          v80._countAndFlagsBits = 0;
          v80._object = 0xE000000000000000;
          sub_E4AC(v66, v73, v13, v80, v58);

          v14 = sub_E6FC();

          v15 = [v6 showAlertWithText:v11 subtitleText:v14 iconImage:0 type:4 forService:v0];
LABEL_18:

LABEL_35:
          return;
        }

        goto LABEL_38;
      }
    }

    if ((sub_D000() & 1) == 0)
    {
      if (![objc_opt_self() settingEnabled] || (v35 = objc_msgSend(objc_opt_self(), "server")) == 0 || (v36 = v35, v37 = objc_msgSend(v35, "isScreenLockedWithPasscode:", 0), v36, !v37))
      {
        v44 = OBJC_IVAR___CLUIServer_presentingViewController;
        v45 = *&v0[OBJC_IVAR___CLUIServer_presentingViewController];
        if (v45)
        {
          v46 = v0;
          v47 = qword_18900;
          v48 = v45;
          if (v47 != -1)
          {
            swift_once();
          }

          v49 = sub_E55C();
          sub_7A2C(v49, qword_198C0);
          v50 = sub_E54C();
          v51 = sub_E86C();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_0, v50, v51, "Passcode was already presented. Dismissing it.", v52, 2u);
          }

          v53 = swift_allocObject();
          *(v53 + 16) = v48;
          *(v53 + 24) = v46;
          aBlock[4] = sub_E1D8;
          aBlock[5] = v53;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_E42C;
          aBlock[3] = &unk_14E58;
          v54 = _Block_copy(aBlock);
          v55 = v48;
          v56 = v46;

          [v55 dismissViewControllerAnimated:1 completion:v54];

          _Block_release(v54);
          v2 = *&v46[v44];
          *&v46[v44] = 0;
        }

        else
        {
          sub_B094();
        }

        goto LABEL_35;
      }

      v38 = [objc_opt_self() sharedDisplayManager];
      if (v38)
      {
        v39 = v38;
        v40 = swift_getObjCClassFromMetadata();
        v41 = [objc_opt_self() bundleForClass:v40];
        v71._countAndFlagsBits = 0xD000000000000021;
        v57._countAndFlagsBits = 0xE000000000000000;
        v71._object = 0x80000000000111A0;
        v78.value._countAndFlagsBits = 0;
        v78.value._object = 0;
        v42.super.isa = v41;
        v85._countAndFlagsBits = 0;
        v85._object = 0xE000000000000000;
        sub_E4AC(v71, v78, v42, v85, v57);

        v43 = sub_E6FC();

        goto LABEL_35;
      }

      goto LABEL_39;
    }

    v25 = [objc_opt_self() sharedDisplayManager];
    if (v25)
    {
      v6 = v25;
      v26 = swift_getObjCClassFromMetadata();
      v27 = objc_opt_self();
      v28 = [v27 bundleForClass:v26];
      v69._countAndFlagsBits = 0xD000000000000015;
      v57._countAndFlagsBits = 0xE000000000000000;
      v69._object = 0x80000000000111D0;
      v76.value._countAndFlagsBits = 0;
      v76.value._object = 0;
      v29.super.isa = v28;
      v83._countAndFlagsBits = 0;
      v83._object = 0xE000000000000000;
      sub_E4AC(v69, v76, v29, v83, v57);

      v11 = sub_E6FC();

      v30 = [v27 bundleForClass:v26];
      v70._countAndFlagsBits = 0xD00000000000001DLL;
      v60._countAndFlagsBits = 0xE000000000000000;
      v70._object = 0x80000000000111F0;
      v77.value._countAndFlagsBits = 0;
      v77.value._object = 0;
      v31.super.isa = v30;
      v84._countAndFlagsBits = 0;
      v84._object = 0xE000000000000000;
      sub_E4AC(v70, v77, v31, v84, v60);

      v14 = sub_E6FC();

      v15 = [v6 showAlertWithText:v11 subtitleText:v14 iconImage:0 type:4 forService:v0];
      goto LABEL_18;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v16 = [objc_opt_self() sharedDisplayManager];
  if (!v16)
  {
    __break(1u);
    goto LABEL_37;
  }

  v17 = v16;
  v18 = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass:v18];
  v67._countAndFlagsBits = 0xD00000000000001BLL;
  v57._countAndFlagsBits = 0xE000000000000000;
  v67._object = 0x8000000000011270;
  v74.value._countAndFlagsBits = 0;
  v74.value._object = 0;
  v21.super.isa = v20;
  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  sub_E4AC(v67, v74, v21, v81, v57);

  v22 = sub_E6FC();

  v23 = [v19 bundleForClass:v18];
  v59._countAndFlagsBits = 0xE000000000000000;
  v68._object = 0x8000000000011290;
  v68._countAndFlagsBits = 0xD000000000000023;
  v75.value._countAndFlagsBits = 0;
  v75.value._object = 0;
  v24.super.isa = v23;
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  sub_E4AC(v68, v75, v24, v82, v59);

  v61 = sub_E6FC();
}

void sub_AEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = sub_E6BC().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = sub_E4BC();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_B00C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedDisplayManager];
  if (v4)
  {
    v5 = v4;
    [v4 removeContentViewController:a1 withUserInteractionEnabled:1 forService:a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_B094()
{
  v1 = v0;
  if (qword_18900 != -1)
  {
    swift_once();
  }

  v2 = sub_E55C();
  sub_7A2C(v2, qword_198C0);
  v3 = sub_E54C();
  v4 = sub_E86C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Presenting passcode.", v5, 2u);
  }

  type metadata accessor for CLUIServer.SecureViewController();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = *&v1[OBJC_IVAR___CLUIServer_presentingViewController];
  *&v1[OBJC_IVAR___CLUIServer_presentingViewController] = v6;
  v8 = v6;

  v9 = [objc_opt_self() sharedDisplayManager];
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    *(v11 + 24) = v8;
    v15[4] = sub_E1E0;
    v15[5] = v11;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_E448;
    v15[3] = &unk_14EA8;
    v12 = _Block_copy(v15);
    v13 = v8;
    v14 = v1;

    [v10 addContentViewController:v13 withUserInteractionEnabled:1 forService:v14 context:0 completion:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_B2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([objc_opt_self() settingEnabled])
  {
    sub_9184(0, &qword_18CC0, NSDistributedNotificationCenter_ptr);
    v5 = [swift_getObjCClassFromMetadata() defaultCenter];
    [v5 addObserver:a2 selector:"handleRestrictionsPINNotification:" name:STRestrictionsPINControllerDidFinishNotification object:0];

    v6 = objc_opt_self();

    [v6 activateRemotePINUI];
  }

  else
  {
    v7 = [objc_opt_self() currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if ((AXBackBoardServerClarityUIAdminPasscodeLength & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13._object = [objc_allocWithZone(AXUIPasscodeViewController) initWithPresentationStyle:v8 == &dword_0 + 1 forSetup:0 pinLength:AXBackBoardServerClarityUIAdminPasscodeLength];
      type metadata accessor for CLUIServer();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v13._countAndFlagsBits = 0xE000000000000000;
      v16._object = 0x80000000000112C0;
      v16._countAndFlagsBits = 0xD000000000000022;
      v17.value._countAndFlagsBits = 0;
      v17.value._object = 0;
      v11.super.isa = v10;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      sub_E4AC(v16, v17, v11, v18, v13);

      v12 = sub_E6FC();

      [v14 setPinViewTitle:v12];

      [v14 setDelegate:a2];
      [v14 presentPasscodeViewWithParentViewController:a3 animated:1];
    }
  }
}

void sub_B510()
{
  sub_9184(0, &qword_18CC0, NSDistributedNotificationCenter_ptr);
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver:v0 name:STRestrictionsPINControllerDidFinishNotification object:0];

  v2 = sub_E45C();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  *&v11 = sub_E72C();
  *(&v11 + 1) = v4;

  sub_E8BC();
  if (!*(v3 + 16) || (v5 = sub_CB10(v10), (v6 & 1) == 0))
  {

    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v7 = v5;

  sub_7B68(*(v3 + 56) + 32 * v7, v9);

  sub_7B14(v10);
  sub_7E8C(v9, &v11);
  sub_9184(0, &qword_18CC8, NSNumber_ptr);
  swift_dynamicCast();
  if ([v8 BOOLValue])
  {
    sub_B69C();
  }
}

void sub_B69C()
{
  *(v0 + OBJC_IVAR___CLUIServer_isShowingLoadingView) = 1;
  v1 = objc_allocWithZone(type metadata accessor for CLUIServer.SecureHostingController());
  v2 = sub_E61C();
  [v2 setModalPresentationStyle:0];
  v3 = *(v0 + OBJC_IVAR___CLUIServer_presentingViewController);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() blackColor];
      [v6 setBackgroundColor:v7];

      aBlock[4] = sub_B9D0;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_E42C;
      aBlock[3] = &unk_14DB8;
      v8 = _Block_copy(aBlock);
      [v4 presentViewController:v2 animated:1 completion:v8];

      _Block_release(v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v9 = sub_E55C();
    sub_7A2C(v9, qword_198C0);
    oslog = sub_E54C();
    v10 = sub_E85C();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, oslog, v10, "Tried to show loading screen, but had no presenting view controller.", v11, 2u);
    }
  }
}

void sub_B9D0()
{
  _AXFeatureSupportsNonSightedUsage();
  v1[4] = sub_BA84;
  v1[5] = 0;
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 1107296256;
  v1[2] = sub_E42C;
  v1[3] = &unk_14DE0;
  v0 = _Block_copy(v1);
  AXPerformBlockOnMainThreadAfterDelay();
  _Block_release(v0);
}

void sub_BA84()
{
  v0 = [objc_allocWithZone(AXSpringBoardServer) init];
  v2[4] = sub_BB48;
  v2[5] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_E42C;
  v2[3] = &unk_14E08;
  v1 = _Block_copy(v2);
  [v0 freezeClarityUILoadingScreenWithCompletion:v1];
  _Block_release(v1);
}

void sub_BB48()
{
  v0 = [objc_allocWithZone(CLFSystemShellSwitcher) init];
  v13 = 0;
  v1 = [v0 setClarityBoardEnabled:1 error:&v13];

  v2 = v13;
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v13;
    sub_E4CC();

    swift_willThrow();
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v5 = sub_E55C();
    sub_7A2C(v5, qword_198C0);
    swift_errorRetain();
    v6 = sub_E54C();
    v7 = sub_E85C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      swift_errorRetain();
      sub_79E4(&qword_18CB0, &qword_FA68);
      v10 = sub_E73C();
      v12 = sub_C568(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v6, v7, "Unable to enter ClarityUI: %s", v8, 0xCu);
      sub_7AC8(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_BDB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_BED8(char a1, uint64_t (*a2)(void))
{
  if (qword_18900 != -1)
  {
    swift_once();
  }

  v4 = sub_E55C();
  sub_7A2C(v4, qword_198C0);
  v5 = sub_E54C();
  v6 = sub_E86C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v5, v6, "Passcode is correct: %{BOOL}d", v7, 8u);
  }

  return a2(a1 & 1);
}

uint64_t sub_BFE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_C1C4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CLUIServer.SecureHostingController()
{
  result = qword_18C00;
  if (!qword_18C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_C314()
{
  result = qword_18C60;
  if (!qword_18C60)
  {
    sub_C3A0(&qword_18C58, &qword_F9D8);
    sub_C3E8();
    sub_C514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18C60);
  }

  return result;
}

uint64_t sub_C3A0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_C3E8()
{
  result = qword_18C68;
  if (!qword_18C68)
  {
    sub_C3A0(&qword_18C70, &qword_F9E0);
    sub_C4CC(&qword_18C78, &qword_18C80, &qword_F9E8);
    sub_C4CC(&qword_18C88, &qword_18C90, &qword_F9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18C68);
  }

  return result;
}

uint64_t sub_C4CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_C3A0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_C514()
{
  result = qword_18C98;
  if (!qword_18C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18C98);
  }

  return result;
}

uint64_t sub_C568(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_C634(v11, 0, 0, 1, a1, a2);
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
    sub_7B68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_7AC8(v11);
  return v7;
}

unint64_t sub_C634(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_C740(a5, a6);
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
    result = sub_E8FC();
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

char *sub_C740(uint64_t a1, unint64_t a2)
{
  v4 = sub_C78C(a1, a2);
  sub_C8BC(&off_14A98);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_C78C(uint64_t a1, unint64_t a2)
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

  v6 = sub_C9A8(v5, 0);
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

  result = sub_E8FC();
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
        v10 = sub_E76C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_C9A8(v10, 0);
        result = sub_E8DC();
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

uint64_t sub_C8BC(uint64_t result)
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

  result = sub_CA1C(result, v12, 1, v3);
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

void *sub_C9A8(uint64_t a1, uint64_t a2)
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

  sub_79E4(&qword_18CB8, &unk_FA70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_CA1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_79E4(&qword_18CB8, &unk_FA70);
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

unint64_t sub_CB10(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E89C(*(v2 + 40));

  return sub_CC60(a1, v4);
}

unint64_t sub_CB54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_E9AC();
  sub_E75C();
  v6 = sub_E9CC();

  return sub_CD28(a1, a2, v6);
}

unint64_t sub_CBCC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_E72C();
  sub_E9AC();
  sub_E75C();
  v4 = sub_E9CC();

  return sub_CDE0(a1, v4);
}

unint64_t sub_CC60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_E0E8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_E8AC();
      sub_7B14(v8);
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

unint64_t sub_CD28(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_E95C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_CDE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_E72C();
      v9 = v8;
      if (v7 == sub_E72C() && v9 == v10)
      {
        break;
      }

      v12 = sub_E95C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_CEE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E57C();
  *a1 = result;
  return result;
}

uint64_t sub_CF10(uint64_t *a1)
{
  v1 = *a1;

  return sub_E58C();
}

uint64_t sub_CF3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_E59C();
  *a1 = result;
  return result;
}

uint64_t sub_CF90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_CFA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_CFB0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D000()
{
  sub_9184(0, &unk_18CD8, OS_dispatch_queue_ptr);
  v0 = sub_E88C();
  v1 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v0];

  v50 = 0;
  v2 = [v1 getSubscriptionInfoWithError:&v50];
  if (!v2)
  {
    v14 = v50;
    sub_E4CC();

    swift_willThrow();
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v15 = sub_E55C();
    sub_7A2C(v15, qword_198C0);
    swift_errorRetain();
    v16 = sub_E54C();
    v17 = sub_E86C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&dword_0, v16, v17, "Unable to get info about SIMs: %@", v18, 0xCu);
      sub_91CC(v19, &qword_18930, &qword_F2C8);
    }

    else
    {
    }

    return 0;
  }

  v3 = v2;
  v4 = v50;
  v5 = [v3 subscriptionsInUse];
  if (!v5)
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v21 = sub_E55C();
    sub_7A2C(v21, qword_198C0);
    v22 = sub_E54C();
    v23 = sub_E86C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Found no SIMs.", v24, 2u);
    }

    goto LABEL_44;
  }

  v6 = v5;
  sub_9184(0, &qword_18CE8, CTXPCServiceSubscriptionContext_ptr);
  v7 = sub_E79C();

  if (qword_18900 != -1)
  {
LABEL_41:
    swift_once();
  }

  v8 = sub_E55C();
  sub_7A2C(v8, qword_198C0);

  v9 = sub_E54C();
  v10 = sub_E86C();
  v11 = v7 >> 62;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    if (v11)
    {
      v13 = sub_E91C();
    }

    else
    {
      v13 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    *(v12 + 4) = v13;

    _os_log_impl(&dword_0, v9, v10, "Checking %ld SIMs...", v12, 0xCu);
  }

  else
  {
  }

  if (v11)
  {
    v25 = sub_E91C();
    if (v25)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

  v25 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  if (!v25)
  {
LABEL_43:

LABEL_44:

    return 0;
  }

LABEL_20:
  v46 = v3;
  v3 = 0;
  v26 = v7 & 0xC000000000000001;
  v49 = v7 & 0xFFFFFFFFFFFFFF8;
  v27 = &AXUIService__prots;
  v47 = v1;
  v48 = v7;
  while (1)
  {
    if (v26)
    {
      v33 = sub_E8EC();
    }

    else
    {
      if (v3 >= *(v49 + 16))
      {
        goto LABEL_40;
      }

      v33 = *(v7 + 8 * v3 + 32);
    }

    v34 = v33;
    v35 = (v3 + 1);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v50 = 0;
    v36 = [v1 v27[167].count];
    if (!v36)
    {
      v39 = v50;
      sub_E4CC();

      swift_willThrow();
      swift_errorRetain();
      v40 = sub_E54C();
      v41 = sub_E84C();

      if (os_log_type_enabled(v40, v41))
      {
        v28 = swift_slowAlloc();
        v29 = v26;
        v30 = v25;
        v31 = swift_slowAlloc();
        *v28 = 138412290;
        swift_errorRetain();
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v32;
        *v31 = v32;
        _os_log_impl(&dword_0, v40, v41, "Unable to fetch whether SIM had PIN: %@", v28, 0xCu);
        sub_91CC(v31, &qword_18930, &qword_F2C8);
        v25 = v30;
        v26 = v29;

        v1 = v47;
      }

      else
      {
      }

      v7 = v48;
      v27 = &AXUIService__prots;
      goto LABEL_23;
    }

    v37 = v36;
    v38 = v50;
    if ([v37 BOOLValue])
    {
      break;
    }

LABEL_23:
    ++v3;
    if (v35 == v25)
    {

      return 0;
    }
  }

  v42 = sub_E54C();
  v43 = sub_E86C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_0, v42, v43, "Found SIM with PIN.", v44, 2u);
  }

  return 1;
}

Swift::Int sub_D738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_79E4(&qword_18CF8, &qword_FA88);
    v3 = sub_E8CC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_E0E8(v6 + 40 * v4, v19);
      result = sub_E89C(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_E0E8(*(v3 + 48) + 40 * i, v18);
        v11 = sub_E8AC();
        result = sub_7B14(v18);
        if (v11)
        {
          sub_7B14(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_D898(uint64_t a1)
{
  if (AXTripleClickAttemptToEnterClarityBoardMessageIdentifier == a1)
  {
    sub_79E4(&qword_18CF0, &qword_FA80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F900;
    sub_E8BC();
    sub_E8BC();
    sub_E8BC();
    sub_E8BC();
    sub_E8BC();
    sub_E8BC();
    v2 = sub_D738(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else if (CLFUpdateAppIconsMessageIdentifier == a1)
  {
    sub_79E4(&qword_18CF0, &qword_FA80);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_F290;
    sub_E8BC();
    v2 = sub_D738(v3);
    swift_setDeallocating();
    sub_7B14(v3 + 32);
  }

  else
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v5 = sub_E55C();
    sub_7A2C(v5, qword_198C0);
    v6 = sub_E54C();
    v7 = sub_E85C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_0, v6, v7, "Asked for required entitlements for unknown message identifier: %ld", v8, 0xCu);
    }

    return 0;
  }

  return v2;
}

void sub_DBB8(char a1)
{
  if (a1)
  {
    if (qword_18900 != -1)
    {
      swift_once();
    }

    v2 = sub_E55C();
    sub_7A2C(v2, qword_198C0);
    oslog = sub_E54C();
    v3 = sub_E86C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, oslog, v3, "Passcode was shown.", v4, 2u);
    }

    v5 = oslog;
LABEL_16:

    return;
  }

  v6 = v1;
  if (qword_18900 != -1)
  {
    swift_once();
  }

  v7 = sub_E55C();
  sub_7A2C(v7, qword_198C0);
  v8 = sub_E54C();
  v9 = sub_E86C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Passcode was hidden.", v10, 2u);
  }

  if ((*(v6 + OBJC_IVAR___CLUIServer_isShowingLoadingView) & 1) == 0)
  {
    v11 = [objc_opt_self() sharedDisplayManager];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    v13 = OBJC_IVAR___CLUIServer_presentingViewController;
    [v11 removeContentViewController:*(v6 + OBJC_IVAR___CLUIServer_presentingViewController) withUserInteractionEnabled:1 forService:v6];

    v5 = *(v6 + v13);
    *(v6 + v13) = 0;
    goto LABEL_16;
  }
}

void sub_DDE4(uint64_t a1)
{
  if (qword_18900 != -1)
  {
    swift_once();
  }

  v2 = sub_E55C();
  sub_7A2C(v2, qword_198C0);
  v3 = sub_E54C();
  v4 = sub_E86C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_0, v3, v4, "Passcode was dismissed with reason: %ld", v5, 0xCu);
  }

  if (a1 == 2)
  {

    sub_B69C();
  }
}

void sub_DF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(AXBackBoardServer) init];
  v7 = sub_E6FC();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_E064;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_E448;
  v10[3] = &unk_14D90;
  v9 = _Block_copy(v10);

  [v6 validateClarityUIAdminPasscode:v7 completion:v9];
  _Block_release(v9);
}

uint64_t sub_E02C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E06C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_E084(uint64_t a1, uint64_t *a2)
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

unint64_t sub_E144()
{
  result = qword_18CD0;
  if (!qword_18CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18CD0);
  }

  return result;
}

uint64_t sub_E198()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for CLUIServer.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CLUIServer.Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_E2D8()
{
  result = qword_18D00;
  if (!qword_18D00)
  {
    sub_C3A0(&qword_18D08, qword_FA98);
    sub_C314();
    sub_E364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18D00);
  }

  return result;
}

unint64_t sub_E364()
{
  result = qword_18D10;
  if (!qword_18D10)
  {
    sub_E62C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18D10);
  }

  return result;
}

unint64_t sub_E3C4()
{
  result = qword_18D18;
  if (!qword_18D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18D18);
  }

  return result;
}