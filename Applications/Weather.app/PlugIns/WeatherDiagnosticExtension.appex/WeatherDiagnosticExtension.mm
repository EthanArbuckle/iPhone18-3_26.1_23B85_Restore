void sub_10000180C(id a1)
{
  qword_10000C490 = os_log_create("com.apple.weather", "Diagnostics");

  _objc_release_x1();
}

void *DiagnosticFileProvider.files()()
{
  v0 = sub_100001904();
  v1 = sub_100001BA0();
  sub_100002C78(v1);
  return v0;
}

void *sub_100001904()
{
  v0 = sub_100004144();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v19[-v6];
  sub_1000041C4();
  sub_1000041B4();
  sub_1000041A4();

  sub_100004124();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v9 = [objc_opt_self() defaultManager];
  sub_100004134();
  v10 = sub_100004364();

  v20 = 0;
  v11 = [v9 contentsOfDirectoryAtPath:v10 error:&v20];

  v12 = v20;
  if (v11)
  {
    v13 = sub_1000043B4();
    v14 = v12;

    __chkstk_darwin(v15);
    *&v19[-16] = v7;
    v16 = sub_1000029E8(sub_100002EA8, &v19[-32], v13);
  }

  else
  {
    v17 = v20;
    sub_1000040D4();

    swift_willThrow();

    v16 = &_swiftEmptyArrayStorage;
  }

  v8(v7, v0);
  return v16;
}

uint64_t sub_100001BA0()
{
  v67 = sub_100004144();
  v66 = *(v67 - 8);
  v0 = *(v66 + 64);
  v1 = __chkstk_darwin(v67);
  v68 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v64 = &v62 - v4;
  __chkstk_darwin(v3);
  v65 = &v62 - v5;
  v6 = sub_100004324();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v62 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v62 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v62 - v18;
  __chkstk_darwin(v17);
  v21 = &v62 - v20;
  sub_100002D38(&qword_10000C448, &qword_100004AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100004A30;
  sub_100004204();
  sub_1000041F4();
  v23 = sub_100004314();
  v25 = v24;
  v26 = *(v7 + 8);
  v26(v21, v6);
  *(inited + 32) = v23;
  *(inited + 40) = v25;
  sub_1000041E4();
  sub_1000041D4();
  v27 = sub_100004314();
  v29 = v28;
  v26(v19, v6);
  *(inited + 48) = v27;
  *(inited + 56) = v29;
  sub_100004264();
  sub_100004254();
  v30 = sub_100004314();
  v32 = v31;
  v26(v16, v6);
  *(inited + 64) = v30;
  *(inited + 72) = v32;
  sub_100004194();
  *(inited + 80) = sub_100004184();
  *(inited + 88) = v33;
  sub_100004224();
  sub_100004214();
  v34 = sub_100004314();
  v36 = v35;
  v26(v13, v6);
  *(inited + 96) = v34;
  *(inited + 104) = v36;
  sub_100004244();
  v37 = v63;
  sub_100004234();
  v38 = sub_100004314();
  v40 = v39;
  v26(v37, v6);
  *(inited + 112) = v38;
  *(inited + 120) = v40;
  sub_1000041C4();
  sub_1000041B4();
  v41 = v64;
  sub_1000041A4();

  v42 = v65;
  sub_100004124();
  v43 = *(v66 + 8);
  v44 = v67;
  v43(v41, v67);
  v45 = sub_100004134();
  v47 = v46;
  v43(v42, v44);
  *(inited + 128) = v45;
  *(inited + 136) = v47;
  sub_1000041B4();
  v48 = v68;
  sub_1000041A4();

  sub_100004124();
  v43(v48, v44);
  v49 = sub_100004134();
  v51 = v50;
  result = (v43)(v41, v44);
  v53 = 0;
  *(inited + 144) = v49;
  *(inited + 152) = v51;
  v54 = &_swiftEmptyArrayStorage;
LABEL_2:
  v55 = 16 * v53 + 40;
  while (1)
  {
    if (v53 == 8)
    {
      swift_setDeallocating();
      sub_100002C18();
      return v54;
    }

    if (v53 > 7)
    {
      break;
    }

    ++v53;
    v56 = v55 + 16;
    v57 = *(inited + v55);
    v55 += 16;
    if (v57)
    {
      v58 = *(inited + v56 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100002B10(0, *(v54 + 2) + 1, 1, v54);
        v54 = result;
      }

      v60 = *(v54 + 2);
      v59 = *(v54 + 3);
      if (v60 >= v59 >> 1)
      {
        result = sub_100002B10((v59 > 1), v60 + 1, 1, v54);
        v54 = result;
      }

      *(v54 + 2) = v60 + 1;
      v61 = &v54[16 * v60];
      *(v61 + 4) = v58;
      *(v61 + 5) = v57;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t DiagnosticFileProvider.exportDirectory()@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = sub_100004174();
  v2 = sub_100002FF0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004144();
  v10 = sub_100002FF0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v10);
  v71 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v70 = &v64 - v18;
  __chkstk_darwin(v17);
  v20 = &v64 - v19;
  v21 = sub_100001904();
  v22 = sub_100001BA0();
  v72 = v21;
  sub_100002C78(v22);
  v65 = v72;
  v23 = NSTemporaryDirectory();
  sub_100004374();

  sub_1000040E4();

  sub_100004164();
  sub_100004154();
  v24 = v8;
  v25 = v64;
  (*(v4 + 8))(v24, v1);
  sub_100004124();

  v28 = *(v12 + 8);
  v26 = v12 + 8;
  v27 = v28;
  v28(v20, v9);
  v69 = objc_opt_self();
  v29 = [v69 defaultManager];
  sub_100004114(v30);
  v32 = v31;
  v72 = 0;
  v33 = [v29 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:&v72];

  if (v33)
  {
    v68 = v27;
    v34 = v65[2];
    if (v34)
    {
      v35 = v65;
      v36 = v72;
      v37 = v35 + 5;
      v66 = xmmword_100004A40;
      do
      {
        v39 = *(v37 - 1);
        v38 = *v37;

        sub_1000040F4();

        sub_100004104();
        sub_100004124();

        v40 = [v69 defaultManager];
        sub_100004114(v41);
        v43 = v42;
        sub_100004114(v44);
        v46 = v45;
        v72 = 0;
        v47 = [v40 copyItemAtURL:v43 toURL:v45 error:&v72];

        if (v47)
        {
          v48 = v72;
        }

        else
        {
          v49 = v72;
          v50 = sub_1000040D4();

          swift_willThrow();
          LODWORD(v67) = sub_1000043C4();
          sub_100002D38(&qword_10000C3F8, &unk_100004A50);
          v51 = swift_allocObject();
          *(v51 + 16) = v66;
          v72 = v50;
          swift_errorRetain();
          sub_100002D38(&qword_10000C400, qword_100004AC0);
          v52 = sub_100004384();
          v53 = v26;
          v54 = v9;
          v55 = v25;
          v57 = v56;
          *(v51 + 56) = &type metadata for String;
          *(v51 + 64) = sub_100002D80();
          *(v51 + 32) = v52;
          *(v51 + 40) = v57;
          sub_100002DD4();
          v58 = sub_1000043E4();
          sub_100004274();

          v25 = v55;
          v9 = v54;
          v26 = v53;

          v67 = 0;
        }

        v59 = v68;
        v68(v71, v9);
        v59(v70, v9);
        v37 += 2;
        --v34;
      }

      while (v34);
    }

    else
    {
      v63 = v72;
    }
  }

  else
  {
    v60 = v9;
    v61 = v72;

    sub_1000040D4();

    swift_willThrow();
    return (v27)(v25, v60);
  }
}

id DatabaseManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DatabaseManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id DatabaseManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000028EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100004144();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  sub_100004124();
  v11 = sub_100004134();
  v13 = v12;
  result = (*(v5 + 8))(v8, v4);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1000029E8(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = &_swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v19 = &_swiftEmptyArrayStorage;
  sub_100002EC8(0, v5, 0);
  v6 = &_swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      sub_100002EC8((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    v6[2] = v13 + 1;
    v14 = &v6[2 * v13];
    v14[4] = v11;
    v14[5] = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100002B10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D38(&qword_10000C440, &qword_100004A98);
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

uint64_t sub_100002C18()
{
  v1 = *(v0 + 16);
  sub_100002D38(&qword_10000C450, &unk_100004AA8);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

int64_t sub_100002C78(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100002E3C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100002D38(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002D80()
{
  result = qword_10000C408;
  if (!qword_10000C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C408);
  }

  return result;
}

unint64_t sub_100002DD4()
{
  result = qword_10000C410;
  if (!qword_10000C410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C410);
  }

  return result;
}

char *sub_100002E3C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_100002B10(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

char *sub_100002EC8(char *a1, int64_t a2, char a3)
{
  result = sub_100002EE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100002EE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D38(&qword_10000C440, &qword_100004A98);
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

Swift::Void __swiftcall DatabaseManager.checkpoint()()
{
  v1 = v0;
  v2 = sub_100004324();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v29 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v30 = &v27 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = __chkstk_darwin(v9);
  v31 = &v27 - v13;
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  if (qword_10000C3F0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000042A4();
  sub_100003958(v16, qword_10000C498);
  v17 = sub_100004284();
  v18 = sub_1000043D4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = v11;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Performing checkpoint operation on Weather databases", v19, 2u);
    v11 = v28;
  }

  sub_100004204();
  sub_1000041F4();
  sub_1000034FC(v15);
  v20 = v1;
  v21 = *(v3 + 8);
  v21(v15, v2);
  sub_100004264();
  v22 = v31;
  sub_100004254();
  v28 = v20;
  sub_1000034FC(v22);
  v21(v22, v2);
  sub_1000041E4();
  sub_1000041D4();
  sub_1000034FC(v11);
  v21(v11, v2);
  sub_100004224();
  v23 = v30;
  sub_100004214();
  sub_1000034FC(v23);
  v21(v30, v2);
  sub_100004194();
  v24 = sub_100004184();
  if (v25)
  {
    v26 = v29;
    *v29 = v24;
    *(v26 + 8) = v25;
    (*(v3 + 104))(v26, enum case for Database.Location.path(_:), v2);
    sub_1000034FC(v26);
    v21(v29, v2);
  }
}

uint64_t sub_1000034FC(uint64_t a1)
{
  v30 = a1;
  v1 = sub_1000042D4();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  __chkstk_darwin(v1);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100004344();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v31);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000042F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004304();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000042C4();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_100004324();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  (*(v22 + 16))(&v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
  sub_1000042B4();
  (*(v13 + 104))(v16, enum case for Database.JournalingMode.wal(_:), v12);
  (*(v8 + 104))(v11, enum case for Database.RecoveryMode.throw(_:), v7);
  (*(v4 + 104))(v29, enum case for Database.CacheSize.default(_:), v31);
  (*(v33 + 104))(v32, enum case for Database.VacuumMode.none(_:), v34);
  v23 = sub_100004354();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v36 = 0;
  v26 = v35;
  result = sub_100004334();
  if (!v26)
  {
    sub_1000042E4();
  }

  return result;
}

uint64_t sub_100003958(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003990(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003A54(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100003F70(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100003F00(v11);
  return v7;
}

unint64_t sub_100003A54(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003B54(a5, a6);
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
    result = sub_100004404();
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

char *sub_100003B54(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003BA0(a1, a2);
  sub_100003CB8(&off_100008508);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003BA0(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_100004394())
  {
    result = sub_100003D9C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1000043F4();
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
          result = sub_100004404();
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

uint64_t sub_100003CB8(uint64_t result)
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

    result = sub_100003E0C(result, v8, 1, v3);
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

void *sub_100003D9C(uint64_t a1, uint64_t a2)
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

  sub_100002D38(&qword_10000C480, &qword_100004AF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100003E0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D38(&qword_10000C480, &qword_100004AF0);
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

uint64_t sub_100003F00(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003F70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003FCC()
{
  v0 = sub_1000042A4();
  sub_10000404C(v0, qword_10000C498);
  sub_100003958(v0, qword_10000C498);
  return sub_100004294();
}

uint64_t *sub_10000404C(uint64_t a1, uint64_t *a2)
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