int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000074AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  unsetenv("TMPDIR");
  unsetenv("HOME");
  unsetenv("CFFIXED_USER_HOME");
  if (_set_user_dir_suffix())
  {
    if (!confstr(65537, 0, 0))
    {
      sub_10000749C();
      v11 = sub_10000747C();
      v12 = sub_10000755C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "confstr(_CS_DARWIN_USER_TEMP_DIR) failed!", v13, 2u);
      }

      (*(v4 + 8))(v10, v3);
    }

    v14 = NSTemporaryDirectory();
    v15 = sub_1000074DC();
    v17 = v16;

    qword_1000106E8 = v15;
    unk_1000106F0 = v17;
    sub_10000749C();
    v18 = sub_10000747C();
    v19 = sub_10000754C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      v22 = qword_1000106E8;
      v23 = unk_1000106F0;

      v24 = sub_100001948(v22, v23, &v27);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Temp directory is %s", v20, 0xCu);
      sub_100001F00(v21);
    }

    (*(v4 + 8))(v8, v3);
    qword_1000106F8 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
    qword_100010700 = [objc_opt_self() serviceListener];
    [qword_100010700 setDelegate:qword_1000106F8];
    [qword_100010700 resume];
    return 0;
  }

  else
  {
    result = sub_10000759C();
    __break(1u);
  }

  return result;
}

id sub_1000017B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_100001800(void *a1, uint64_t *a2)
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

uint64_t sub_100001878(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000018EC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100001948(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100001948(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001A14(v11, 0, 0, 1, a1, a2);
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
    sub_100002028(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100001F00(v11);
  return v7;
}

unint64_t sub_100001A14(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001B20(a5, a6);
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
    result = sub_10000758C();
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

char *sub_100001B20(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001B6C(a1, a2);
  sub_100001C9C(&off_10000C510);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100001B6C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100001D88(v5, 0);
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

  result = sub_10000758C();
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
        v10 = sub_1000074FC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100001D88(v10, 0);
        result = sub_10000757C();
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

uint64_t sub_100001C9C(uint64_t result)
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

  result = sub_100001DFC(result, v12, 1, v3);
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

void *sub_100001D88(uint64_t a1, uint64_t a2)
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

  sub_100002084(&unk_100010550, qword_100007C60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100001DFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002084(&unk_100010550, qword_100007C60);
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

_BYTE **sub_100001EF0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100001F00(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100001F4C(void *a1)
{
  v2 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP29BrowserEngineKit_Intermediary23BEKIntermediaryProtocol_];
  [a1 setExportedInterface:v2];

  type metadata accessor for BEKIntermediary();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  if (sub_1000070C0(a1))
  {
    v4 = 1;
LABEL_5:
    *(v3 + 16) = v4;
    goto LABEL_6;
  }

  if (sub_1000071AC(a1))
  {
    v4 = 2;
    goto LABEL_5;
  }

LABEL_6:
  [a1 setExportedObject:v3];
  [a1 resume];

  return 1;
}

uint64_t sub_100002028(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002084(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000020D0()
{
  v0 = sub_1000074AC();
  sub_100006130(v0, qword_100010708);
  sub_1000060F8(v0, qword_100010708);
  return sub_10000748C();
}

Swift::Int sub_100002164()
{
  v1 = *v0;
  sub_1000075BC();
  sub_1000075CC(v1);
  return sub_1000075DC();
}

Swift::Int sub_1000021D8()
{
  v1 = *v0;
  sub_1000075BC();
  sub_1000075CC(v1);
  return sub_1000075DC();
}

uint64_t *sub_10000221C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100002240(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = sub_10000735C();
  v3[31] = v4;
  v5 = *(v4 - 8);
  v3[32] = v5;
  v6 = *(v5 + 64) + 15;
  v3[33] = swift_task_alloc();
  v7 = sub_10000746C();
  v3[34] = v7;
  v8 = *(v7 - 8);
  v3[35] = v8;
  v9 = *(v8 + 64) + 15;
  v3[36] = swift_task_alloc();
  v10 = sub_10000739C();
  v3[37] = v10;
  v11 = *(v10 - 8);
  v3[38] = v11;
  v12 = *(v11 + 64) + 15;
  v3[39] = swift_task_alloc();
  v13 = *(*(sub_100002084(&qword_1000106C8, &qword_100007DF0) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v14 = sub_10000742C();
  v3[41] = v14;
  v15 = *(v14 - 8);
  v3[42] = v15;
  v16 = *(v15 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_1000024D0, 0, 0);
}

uint64_t sub_1000024D0()
{
  v95 = v0;
  v1 = v0;
  if (*(v0[30] + 16) == 1)
  {
    v2 = v0[50];
    v3 = v0[47];
    v91 = v0[48];
    v4 = v0[42];
    v88 = v0[49];
    v89 = v0[41];
    v6 = v0[39];
    v5 = v0[40];
    v8 = v0[37];
    v7 = v0[38];
    v10 = v1[35];
    v9 = v1[36];
    v87 = v1[29];
    v85 = v1[34];
    v86 = v1[28];
    (*(v4 + 56))(v5, 1, 1);
    (*(v7 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v8);
    v1 = v93;
    sub_10000741C();
    sub_10000745C();
    sub_10000744C();
    (*(v10 + 8))(v9, v85);
    sub_1000073CC();

    sub_1000073CC();
    sub_1000073DC();
    v11 = *(v4 + 8);
    v93[51] = v11;
    v93[52] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v3, v89);
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v12 = v93[29];
    v13 = sub_1000074AC();
    v93[53] = sub_1000060F8(v13, qword_100010708);

    v14 = sub_10000747C();
    v15 = sub_10000753C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v93[48];
      v17 = v93[41];
      v18 = v93[29];
      v19 = v11;
      v20 = v93[28];
      v21 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v21 = 136315394;
      v22 = v20;
      v11 = v19;
      v23 = v18;
      v1 = v93;
      *(v21 + 4) = sub_100001948(v22, v23, &v94);
      *(v21 + 12) = 2080;
      swift_beginAccess();
      sub_100006990(&qword_1000106B8, &type metadata accessor for URL);
      v24 = sub_1000075AC();
      v26 = sub_100001948(v24, v25, &v94);

      *(v21 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "createPlaceholder for filename: %s at  %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    v27 = v1[49];
    v28 = [objc_opt_self() defaultManager];
    sub_1000073BC(v29);
    v31 = v30;
    v1[27] = 0;
    v32 = [v28 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:v1 + 27];

    v33 = v1[27];
    if (v32)
    {
      v34 = v1[48];
      v35 = v1[46];
      v37 = v1[41];
      v36 = v1[42];
      swift_beginAccess();
      v38 = v33;
      *(v1 + 472) = sub_10000740C();
      v39 = *(v36 + 16);
      v1[54] = v39;
      v1[55] = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v39(v35, v34, v37);
      sub_10000743C();
      v54 = v1[48];
      v55 = v1[33];
      v11(v1[46], v1[41]);
      sub_10000734C();
      sub_10000733C();
      swift_beginAccess();
      sub_1000073AC();
      swift_endAccess();
      v68 = sub_10000747C();
      v69 = sub_10000753C();
      if (os_log_type_enabled(v68, v69))
      {
        v71 = v1[48];
        v72 = v1[41];
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v94 = v74;
        *v73 = 136315138;
        sub_100006990(&qword_1000106B8, &type metadata accessor for URL);
        v75 = sub_1000075AC();
        v77 = sub_100001948(v75, v76, &v94);

        *(v73 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v68, v69, "DOCDownloadImportManager.importPlaceholderAtURL %s", v73, 0xCu);
        sub_100001F00(v74);
      }

      v78 = v1[48];
      v79 = v1[44];
      v80 = [objc_allocWithZone(DOCDownloadImportManager) init];
      v1[56] = v80;
      sub_1000073BC(v81);
      v83 = v82;
      v1[57] = v82;
      v1[2] = v1;
      v1[7] = v79;
      v1[3] = sub_10000312C;
      v84 = swift_continuation_init();
      v1[17] = sub_100002084(&qword_1000106A8, &qword_100007DD8);
      v1[10] = _NSConcreteStackBlock;
      v1[11] = 1107296256;
      v1[12] = sub_100003E68;
      v1[13] = &unk_10000C5F0;
      v1[14] = v84;
      [v80 importPlaceholderAtURLToDownloadsDirectory:v83 completion:v1 + 10];

      return _swift_continuation_await(v1 + 2);
    }

    v44 = v33;
    sub_10000738C();

    swift_willThrow();
    swift_errorRetain();
    v45 = sub_10000747C();
    v46 = sub_10000755C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      swift_errorRetain();
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v49;
      *v48 = v49;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to create placeholder dir: %@", v47, 0xCu);
      sub_100007298(v48, &qword_1000106B0, &qword_100007DE0);
    }

    v50 = v1[49];
    v51 = v1[50];
    v52 = v1[48];
    v53 = v1[41];

    v11(v50, v53);
    v11(v51, v53);
    v11(v52, v53);
  }

  else
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v40 = sub_1000074AC();
    sub_1000060F8(v40, qword_100010708);
    v41 = sub_10000747C();
    v42 = sub_10000755C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Client not entitled", v43, 2u);
    }
  }

  v57 = v1[49];
  v56 = v1[50];
  v59 = v1[47];
  v58 = v1[48];
  v61 = v1[45];
  v60 = v1[46];
  v63 = v1[43];
  v62 = v1[44];
  v64 = v93[40];
  v65 = v93[39];
  v90 = v93[36];
  v92 = v93[33];

  v66 = v93[1];

  return v66(0);
}

uint64_t sub_10000312C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  if (v2)
  {
    v3 = sub_100003638;
  }

  else
  {
    v3 = sub_100003268;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100003268()
{
  v63 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = *(v0 + 424);
  v6 = *(v0 + 360);
  v7 = *(v0 + 344);
  v8 = *(v0 + 328);
  (*(*(v0 + 336) + 32))(v6, *(v0 + 352), v8);

  v4(v7, v6, v8);
  v9 = sub_10000747C();
  v10 = sub_10000753C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 408);
  v13 = *(v0 + 416);
  if (v11)
  {
    v14 = *(v0 + 384);
    v59 = *(v0 + 344);
    v15 = *(v0 + 328);
    v16 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v16 = 136315394;
    sub_100006990(&qword_1000106B8, &type metadata accessor for URL);
    v17 = sub_1000075AC();
    v19 = sub_100001948(v17, v18, &v62);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = sub_1000075AC();
    v22 = v21;
    v12(v59, v15);
    v23 = sub_100001948(v20, v22, &v62);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "DOCDownloadImportManager.importPlaceholderAtURL for %s returned %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = *(v0 + 344);
    v25 = *(v0 + 328);

    v12(v24, v25);
  }

  v26 = *(v0 + 360);
  v27 = sub_10000740C();
  v28 = objc_allocWithZone(NSSecurityScopedURLWrapper);
  sub_1000073BC(v29);
  v31 = v30;
  v58 = [v28 initWithURL:v30];

  if (v27)
  {
    v32 = *(v0 + 360);
    sub_1000073EC();
  }

  v33 = *(v0 + 472);
  v34 = *(v0 + 416);
  v36 = *(v0 + 384);
  v35 = *(v0 + 392);
  v38 = *(v0 + 256);
  v37 = *(v0 + 264);
  v39 = *(v0 + 248);
  (*(v0 + 408))(*(v0 + 360), *(v0 + 328));
  (*(v38 + 8))(v37, v39);
  sub_1000037EC(v36, v35);
  if (v33 == 1)
  {
    v40 = *(v0 + 384);
    sub_1000073EC();
  }

  v42 = *(v0 + 408);
  v41 = *(v0 + 416);
  v43 = *(v0 + 400);
  v44 = *(v0 + 384);
  v45 = *(v0 + 328);
  v42(*(v0 + 392), v45);
  v42(v43, v45);
  v42(v44, v45);
  v47 = *(v0 + 392);
  v46 = *(v0 + 400);
  v49 = *(v0 + 376);
  v48 = *(v0 + 384);
  v51 = *(v0 + 360);
  v50 = *(v0 + 368);
  v53 = *(v0 + 344);
  v52 = *(v0 + 352);
  v54 = *(v0 + 312);
  v55 = *(v0 + 320);
  v60 = *(v0 + 288);
  v61 = *(v0 + 264);

  v56 = *(v0 + 8);

  return v56(v58);
}

uint64_t sub_100003638()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 448);
  v4 = *(v0 + 472);
  v5 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = *(v0 + 248);
  swift_willThrow();
  (*(v8 + 8))(v7, v9);

  sub_1000037EC(v5, v6);
  if (v4 == 1)
  {
    v10 = *(v0 + 384);
    sub_1000073EC();
  }

  v11 = *(v0 + 408);
  v12 = *(v0 + 416);
  v13 = *(v0 + 400);
  v15 = *(v0 + 376);
  v14 = *(v0 + 384);
  v17 = *(v0 + 360);
  v16 = *(v0 + 368);
  v23 = *(v0 + 352);
  v24 = *(v0 + 344);
  v18 = *(v0 + 328);
  v25 = *(v0 + 320);
  v26 = *(v0 + 312);
  v19 = *(v0 + 288);
  v27 = *(v0 + 264);
  v11(*(v0 + 392), v18);
  v11(v13, v18);
  v11(v14, v18);

  v20 = *(v0 + 8);
  v21 = *(v0 + 464);

  return v20();
}

void sub_1000037EC(uint64_t a1, void *a2)
{
  v4 = sub_10000732C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000742C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  swift_beginAccess();
  (*(v10 + 16))(v13, a1, v9);
  sub_1000073BC(v16);
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  v45 = 0;
  LODWORD(v9) = [v15 removeItemAtURL:v18 error:&v45];

  if (v9)
  {
    v19 = v45;
    goto LABEL_10;
  }

  v20 = v45;
  sub_10000738C();

  swift_willThrow();
  swift_errorRetain();
  sub_10000731C();
  sub_100006990(&qword_1000106D0, &type metadata accessor for CocoaError.Code);
  v21 = sub_10000736C();

  (*(v5 + 8))(v8, v4);
  if ((v21 & 1) == 0)
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v22 = sub_1000074AC();
    sub_1000060F8(v22, qword_100010708);
    swift_errorRetain();
    v23 = sub_10000747C();
    v24 = sub_10000755C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = a2;
      v27 = v26;
      *v25 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "DOCDownloadImportManager.importPlaceholderAtURL failed to delete placeholder file after error: %@", v25, 0xCu);
      sub_100007298(v27, &qword_1000106B0, &qword_100007DE0);

      goto LABEL_10;
    }
  }

LABEL_10:
  v29 = [v14 defaultManager];
  sub_1000073BC(v30);
  v32 = v31;
  v45 = 0;
  v33 = [v29 removeItemAtURL:v31 error:&v45];

  v34 = v45;
  if (v33)
  {

    v35 = v34;
  }

  else
  {
    v44 = v45;
    v36 = v45;
    sub_10000738C();

    swift_willThrow();
    swift_errorRetain();
    sub_10000731C();
    sub_100006990(&qword_1000106D0, &type metadata accessor for CocoaError.Code);
    LOBYTE(v36) = sub_10000736C();

    (*(v5 + 8))(v8, v4);
    if ((v36 & 1) == 0)
    {
      if (qword_1000104C0 != -1)
      {
        swift_once();
      }

      v37 = sub_1000074AC();
      sub_1000060F8(v37, qword_100010708);
      swift_errorRetain();
      v38 = sub_10000747C();
      v39 = sub_10000755C();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        swift_errorRetain();
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v42;
        *v41 = v42;
        _os_log_impl(&_mh_execute_header, v38, v39, "DOCDownloadImportManager.importPlaceholderAtURL failed to delete placeholder dir after error: %@", v40, 0xCu);
        sub_100007298(v41, &qword_1000106B0, &qword_100007DE0);

        return;
      }
    }
  }
}

uint64_t sub_100003E68(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10000742C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *sub_10000694C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002084(&qword_1000106C0, &qword_100007DE8);
    v11 = swift_allocError();
    *v12 = a3;
    v13 = a3;

    return _swift_continuation_throwingResumeWithError(v10, v11);
  }

  else
  {
    sub_1000073FC();
    (*(v6 + 32))(*(*(v10 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100004164(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_1000074DC();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100004238;

  return sub_100002240(v4, v6);
}

uint64_t sub_100004238(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_10000737C();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1000043F8(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = sub_10000735C();
  v3[30] = v4;
  v5 = *(v4 - 8);
  v3[31] = v5;
  v6 = *(v5 + 64) + 15;
  v3[32] = swift_task_alloc();
  v7 = sub_10000742C();
  v3[33] = v7;
  v8 = *(v7 - 8);
  v3[34] = v8;
  v9 = *(v8 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_100004548, 0, 0);
}

uint64_t sub_100004548()
{
  v73 = v0;
  if (*(*(v0 + 232) + 16) == 1)
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 216);
    v1 = *(v0 + 224);
    v3 = sub_1000074AC();
    *(v0 + 320) = sub_1000060F8(v3, qword_100010708);
    v4 = v2;
    v5 = v1;
    v6 = sub_10000747C();
    v7 = sub_10000753C();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 216);
      v8 = *(v0 + 224);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v9;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v8;
      *v11 = v9;
      v11[1] = v8;
      v12 = v9;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "replacePlaceholder placeholderFileWrapper: %@, downloadedFileWrapper %@", v10, 0x16u);
      sub_100002084(&qword_1000106B0, &qword_100007DE0);
      swift_arrayDestroy();
    }

    v15 = *(v0 + 304);
    v14 = *(v0 + 312);
    v16 = *(v0 + 264);
    v17 = *(v0 + 272);
    v18 = *(v0 + 216);
    v19 = *(v0 + 224);

    v20 = [v18 url];
    sub_1000073FC();

    *(v0 + 376) = sub_10000740C();
    (*(v17 + 16))(v15, v14, v16);
    v21 = v19;
    v22 = sub_10000747C();
    v23 = sub_10000753C();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 304);
    if (v24)
    {
      log = v22;
      v27 = *(v0 + 264);
      v26 = *(v0 + 272);
      v68 = *(v0 + 224);
      v69 = *(v0 + 296);
      v28 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v28 = 136315394;
      sub_100006990(&qword_1000106B8, &type metadata accessor for URL);
      v29 = sub_1000075AC();
      v31 = v30;
      v32 = *(v26 + 8);
      v33 = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v32(v25, v27);
      v34 = sub_100001948(v29, v31, &v72);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      v35 = [v68 url];
      sub_1000073FC();

      v36 = sub_1000075AC();
      v38 = v37;
      v32(v69, v27);
      v39 = sub_100001948(v36, v38, &v72);

      *(v28 + 14) = v39;
      _os_log_impl(&_mh_execute_header, log, v23, "DOCDownloadImportManager.replacePlaceholder %s with %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v52 = *(v0 + 264);
      v53 = *(v0 + 272);

      v32 = *(v53 + 8);
      v33 = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v32(v25, v52);
    }

    *(v0 + 328) = v32;
    v54 = *(v0 + 312);
    v55 = v32;
    v56 = *(v0 + 296);
    v70 = *(v0 + 280);
    v57 = *(v0 + 264);
    v58 = *(v0 + 224);
    v59 = [objc_allocWithZone(DOCDownloadImportManager) init];
    *(v0 + 336) = v59;
    sub_1000073BC(v60);
    v62 = v61;
    *(v0 + 344) = v61;
    v63 = [v58 url];
    sub_1000073FC();

    sub_1000073BC(v64);
    v66 = v65;
    *(v0 + 352) = v65;
    *(v0 + 360) = v33;
    v55(v56, v57);
    *(v0 + 16) = v0;
    *(v0 + 56) = v70;
    *(v0 + 24) = sub_100004C10;
    v67 = swift_continuation_init();
    *(v0 + 136) = sub_100002084(&qword_1000106A8, &qword_100007DD8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100003E68;
    *(v0 + 104) = &unk_10000C5C8;
    *(v0 + 112) = v67;
    [v59 replacePlaceholder:v62 withFinalFileURL:v66 completionHandler:?];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v40 = sub_1000074AC();
    sub_1000060F8(v40, qword_100010708);
    v41 = sub_10000747C();
    v42 = sub_10000755C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Client not entitled", v43, 2u);
    }

    v45 = *(v0 + 304);
    v44 = *(v0 + 312);
    v47 = *(v0 + 288);
    v46 = *(v0 + 296);
    v48 = *(v0 + 280);
    v49 = *(v0 + 256);

    v50 = *(v0 + 8);

    return v50(0);
  }
}

uint64_t sub_100004C10()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_100005190;
  }

  else
  {
    v3 = sub_100004D20;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004D20()
{
  v40 = v0;
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 336);
  v4 = *(v0 + 320);
  (*(*(v0 + 272) + 32))(*(v0 + 288), *(v0 + 280), *(v0 + 264));

  v5 = sub_10000747C();
  v6 = sub_10000753C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 288);
    v8 = *(v0 + 264);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39 = v10;
    *v9 = 136315138;
    swift_beginAccess();
    sub_100006990(&qword_1000106B8, &type metadata accessor for URL);
    v11 = sub_1000075AC();
    v13 = sub_100001948(v11, v12, &v39);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "DOCDownloadImportManager.replacePlaceholder returned %s", v9, 0xCu);
    sub_100001F00(v10);
  }

  v14 = *(v0 + 288);
  v15 = *(v0 + 256);
  swift_beginAccess();
  v16 = sub_10000740C();
  sub_10000734C();
  sub_10000733C();
  swift_beginAccess();
  sub_1000073AC();
  v17 = *(v0 + 256);
  v18 = *(v0 + 240);
  v19 = (*(v0 + 248) + 8);
  v20 = *(v0 + 288);
  swift_endAccess();
  (*v19)(v17, v18);
  v21 = objc_allocWithZone(NSSecurityScopedURLWrapper);
  sub_1000073BC(v22);
  v24 = v23;
  v25 = [v21 initWithURL:v23];

  if (v16)
  {
    v26 = *(v0 + 288);
    sub_1000073EC();
  }

  v27 = *(v0 + 360);
  v28 = *(v0 + 376);
  (*(v0 + 328))(*(v0 + 288), *(v0 + 264));
  if (v28 == 1)
  {
    v29 = *(v0 + 312);
    sub_1000073EC();
  }

  v30 = *(v0 + 360);
  (*(v0 + 328))(*(v0 + 312), *(v0 + 264));
  v32 = *(v0 + 304);
  v31 = *(v0 + 312);
  v34 = *(v0 + 288);
  v33 = *(v0 + 296);
  v35 = *(v0 + 280);
  v36 = *(v0 + 256);

  v37 = *(v0 + 8);

  return v37(v25);
}

uint64_t sub_100005190()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = *(v0 + 376);
  swift_willThrow();

  if (v5 == 1)
  {
    v6 = *(v0 + 312);
    sub_1000073EC();
  }

  v7 = *(v0 + 360);
  v8 = *(v0 + 304);
  v10 = *(v0 + 288);
  v9 = *(v0 + 296);
  v11 = *(v0 + 280);
  v12 = *(v0 + 256);
  (*(v0 + 328))(*(v0 + 312), *(v0 + 264));

  v13 = *(v0 + 8);
  v14 = *(v0 + 368);

  return v13();
}

uint64_t sub_100005418(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1000054F0;

  return sub_1000043F8(v7, v8);
}

uint64_t sub_1000054F0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 40);
  if (v3)
  {
    v12 = sub_10000737C();

    (v11)[2](v11, 0, v12);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 40), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_1000056CC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_10000575C, 0, 0);
}

uint64_t sub_10000575C()
{
  if (qword_1000104C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1000074AC();
  sub_1000060F8(v1, qword_100010708);
  v2 = sub_10000747C();
  v3 = sub_10000753C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "isEligible", v4, 2u);
  }

  v5 = v0[3];

  if (v5 != 1)
  {
    if (v5)
    {
      v14 = objc_allocWithZone(NSError);
      v15 = sub_1000074CC();
      [v14 initWithDomain:v15 code:1 userInfo:0];
    }

    else
    {
      if (*(v0[4] + 16) == 2)
      {
        goto LABEL_8;
      }

      v22 = objc_allocWithZone(NSError);
      v15 = sub_1000074CC();
      [v22 initWithDomain:v15 code:2 userInfo:0];
    }

LABEL_21:
    swift_willThrow();
    v12 = v0[1];
    v13 = 0;
    goto LABEL_22;
  }

LABEL_8:
  v0[2] = 0;
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer != sub_1000074BC())
  {
    v16 = sub_10000747C();
    v17 = sub_10000755C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to determine eligibility for alternative Browser engines", v18, 2u);
    }

    v19 = domain_answer;
    v20 = objc_allocWithZone(NSError);
    v21 = sub_1000074CC();
    [v20 initWithDomain:v21 code:v19 userInfo:0];

    goto LABEL_21;
  }

  v7 = v0[2];
  v8 = sub_10000747C();
  v9 = sub_10000753C();
  if (os_log_type_enabled(v8, v9))
  {
    if (v7 == 4)
    {
      v10 = "Determined eligible for alternative Browser engines";
    }

    else
    {
      v10 = "Determined not eligible for alternative Browser engines";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, v10, v11, 2u);
  }

  v12 = v0[1];
  v13 = v7 == 4;
LABEL_22:

  return v12(v13);
}

uint64_t sub_100005CA8(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_100005D64;

  return sub_1000056CC(a1);
}

uint64_t sub_100005D64(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_10000737C();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t getEnumTagSinglePayload for BEKIntermediary.ClientType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BEKIntermediary.ClientType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000060A4()
{
  result = qword_1000106A0;
  if (!qword_1000106A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000106A0);
  }

  return result;
}

uint64_t sub_1000060F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100006130(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100006194(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100007318;

  return v7();
}

uint64_t sub_10000627C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100006364;

  return v8();
}

uint64_t sub_100006364()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002084(&qword_1000106D8, &qword_100007DF8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100006C5C(a3, v25 - v11);
  v13 = sub_10000752C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100007298(v12, &qword_1000106D8, &qword_100007DF8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10000751C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_10000750C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1000074EC() + 32;
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

    sub_100007298(a3, &qword_1000106D8, &qword_100007DF8);

    return v23;
  }

LABEL_8:
  sub_100007298(a3, &qword_1000106D8, &qword_100007DF8);
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

uint64_t sub_100006744(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000683C;

  return v7(a1);
}

uint64_t sub_10000683C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_10000694C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100006990(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000069D8()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006A18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100006364;

  return sub_100005CA8(v2, v3, v4);
}

uint64_t sub_100006AD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100007318;

  return sub_100006194(v2, v3, v5);
}

uint64_t sub_100006B90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007318;

  return sub_10000627C(a1, v4, v5, v7);
}

uint64_t sub_100006C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002084(&qword_1000106D8, &qword_100007DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006CCC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006D04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007318;

  return sub_100006744(a1, v5);
}

uint64_t sub_100006DBC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006364;

  return sub_100006744(a1, v5);
}

uint64_t sub_100006E74()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006EC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100007318;

  return sub_100005418(v2, v3, v5, v4);
}

uint64_t sub_100006F84()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006FCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007318;

  return sub_100004164(v2, v3, v4);
}

uint64_t sub_100007080()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000070C0(void *a1)
{
  v2 = sub_1000074CC();
  v3 = [a1 valueForEntitlement:v2];

  if (v3)
  {
    sub_10000756C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v6[0] = v7;
  v6[1] = v8;
  if (*(&v8 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v5;
    }
  }

  else
  {
    sub_100007298(v6, &qword_1000106E0, qword_100007E88);
    return 0;
  }

  return result;
}

uint64_t sub_1000071AC(void *a1)
{
  v2 = sub_1000074CC();
  v3 = [a1 valueForEntitlement:v2];

  if (v3)
  {
    sub_10000756C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v6[0] = v7;
  v6[1] = v8;
  if (*(&v8 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v5;
    }
  }

  else
  {
    sub_100007298(v6, &qword_1000106E0, qword_100007E88);
    return 0;
  }

  return result;
}

uint64_t sub_100007298(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002084(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}