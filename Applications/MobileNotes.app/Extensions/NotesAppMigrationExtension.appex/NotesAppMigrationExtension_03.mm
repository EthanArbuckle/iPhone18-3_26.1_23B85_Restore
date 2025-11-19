uint64_t sub_10003DA60(uint64_t a1)
{
  v2 = sub_100005740(&qword_1000A63E8, &qword_10008CCA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003DAC8(uint64_t a1, uint64_t a2)
{
  v4 = _s3TagVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003DB2C(uint64_t a1)
{
  v2 = _s3TagVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_10003DB88(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t), void *a4))(uint64_t, uint64_t)
{
  v8 = sub_1000847C8();
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = *(v81 + 64);
  __chkstk_darwin(v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v12 = *(v83 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v83);
  v15 = __chkstk_darwin(v14);
  v17 = &v79 - v16;
  __chkstk_darwin(v15);
  v19 = &v79 - v18;
  v20 = swift_allocObject();
  v85 = a3;
  v86 = v20;
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  swift_beginAccess();
  v80 = a2;
  v21 = a2[3];
  v22 = *(v21 + 16);
  v84 = a4;
  v23 = a1;

  if (!v22 || (v24 = sub_100039054(a1), (v25 & 1) == 0))
  {
    swift_endAccess();
    if (qword_1000A5408 != -1)
    {
      swift_once();
    }

    v38 = sub_100084FB8();
    sub_10000B614(v38, qword_1000A62F0);
    v39 = v12;
    v40 = *(v12 + 16);
    v41 = v83;
    v40(v19, a1, v83);
    v42 = sub_100084FA8();
    v43 = sub_100085388();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock[0] = v80;
      *v44 = 136315138;
      sub_100084A78();
      sub_10003EB7C(&qword_1000A5AD8, &type metadata accessor for URL);
      v45 = v82;
      v46 = sub_100085908();
      v48 = v47;
      (*(v81 + 8))(v11, v45);
      (*(v39 + 8))(v19, v41);
      v49 = sub_100038A4C(v46, v48, aBlock);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "Object to be previewed does not exist {url: %s}", v44, 0xCu);
      sub_100006304(v80);
    }

    else
    {

      (*(v39 + 8))(v19, v41);
    }

    sub_1000081FC();
    v50 = swift_allocError();
    *v51 = 4;
    swift_errorRetain();
    v85(v50, 1);

    v33 = [objc_allocWithZone(NSProgress) init];
    goto LABEL_12;
  }

  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v21 + 56) + 24 * v24;
  v28 = *v26;
  v27 = *(v26 + 8);
  v29 = *(v26 + 16);
  swift_endAccess();
  if (v29 <= 1)
  {
    if (v29)
    {
      v53 = objc_opt_self();
      v54 = v28;
      v33 = [v53 progressWithTotalUnitCount:1];
      [v33 setCompletedUnitCount:{objc_msgSend(v33, "totalUnitCount")}];
      v88 = sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
      aBlock[0] = v54;
      v55 = v54;
      v56 = sub_10000DD18(aBlock);
      sub_100006304(aBlock);
      v85(v56, 0);

      sub_10003B050(v28, v27, 1);
      sub_10003B050(v28, v27, 1);
    }

    else
    {
      sub_100005740(&qword_1000A5A70, &qword_10008B590);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10008B5D0;
      v31 = swift_allocObject();
      v32 = v86;
      *(v31 + 16) = sub_10003ED3C;
      *(v31 + 24) = v32;
      *(inited + 32) = sub_10003F0AC;
      *(inited + 40) = v31;
      aBlock[0] = v27;
      sub_1000112CC(v28, v27, 0);
      v33 = v28;

      sub_10003935C(inited);
      v34 = aBlock[0];
      v35 = v80;
      swift_beginAccess();
      v36 = v35[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v35[3];
      v35[3] = 0x8000000000000000;
      sub_10003AE34(v28, v34, 0, v23, isUniquelyReferenced_nonNull_native);
      v35[3] = v91;
      swift_endAccess();
    }

    goto LABEL_12;
  }

  if (v29 == 2)
  {
    swift_errorRetain();
    v85(v28, 1);
    v33 = [objc_allocWithZone(NSProgress) init];
    sub_10003B050(v28, v27, 2);
LABEL_12:

    return v33;
  }

  v57 = [objc_opt_self() progressWithTotalUnitCount:1];
  sub_100005740(&qword_1000A5A70, &qword_10008B590);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_10008B5D0;
  v59 = swift_allocObject();
  v60 = v86;
  *(v59 + 16) = sub_10003ED3C;
  *(v59 + 24) = v60;
  *(v58 + 32) = sub_10003F0AC;
  *(v58 + 40) = v59;
  v61 = v80;
  swift_beginAccess();

  v85 = v57;
  v62 = v61[3];
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v91 = v61[3];
  v61[3] = 0x8000000000000000;
  sub_10003AE34(v57, v58, 0, v23, v63);
  v61[3] = v91;
  swift_endAccess();
  v64 = v12;
  v65 = *(v12 + 16);
  v66 = v83;
  v65(v17, v23, v83);
  v67 = *(v64 + 80);
  v68 = swift_allocObject();
  v81 = v68;
  *(v68 + 16) = v61;
  v79 = *(v64 + 32);
  v79(v68 + ((v67 + 24) & ~v67), v17, v66);
  v84 = v61[2];
  v69 = v82;
  v65(v82, v23, v66);
  v70 = (v67 + 16) & ~v67;
  v71 = (v13 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v79(v73 + v70, v69, v66);
  v74 = v85;
  *(v73 + v71) = v85;
  *(v73 + v72) = v80;
  v75 = (v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8));
  v76 = v81;
  *v75 = sub_10003F0B4;
  v75[1] = v76;
  v89 = sub_10003F0A8;
  v90 = v73;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000389E4;
  v88 = &unk_10009FF98;
  v77 = _Block_copy(aBlock);
  swift_retain_n();
  v78 = v74;

  [v84 performBackgroundTask:v77];
  _Block_release(v77);

  return v78;
}

unint64_t sub_10003E50C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005740(&qword_1000A5C58, &qword_10008B868);
    v3 = sub_100085748();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1000391B0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10003E5E8()
{
  result = qword_1000A6428;
  if (!qword_1000A6428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6428);
  }

  return result;
}

unint64_t sub_10003E63C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005740(&qword_1000A5CA0, &unk_10008B8A0);
    v3 = sub_100085748();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005888(v4, &v11, &qword_1000A6450, &qword_10008CD18);
      v5 = v11;
      result = sub_1000392C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001C864(&v12, (v3[7] + 32 * result));
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

unint64_t sub_10003E764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005740(&qword_1000A6458, &unk_10008CD20);
    v3 = sub_100085748();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100039138(v5, v6);
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

unint64_t sub_10003E868(uint64_t a1)
{
  v2 = sub_100005740(&qword_1000A5A28, &unk_10008F890);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100005740(&qword_1000A5C80, &qword_10008F8A0);
    v8 = sub_100085748();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005888(v10, v6, &qword_1000A5A28, &unk_10008F890);
      result = sub_1000391F4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_100084918();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

uint64_t sub_10003EB08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003EB7C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10003EBC4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_10003EC14()
{
  sub_10003EBC4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

id sub_10003EC84(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {

    return swift_errorRetain();
  }

  else
  {

    return a3;
  }
}

id sub_10003ECD4(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_10003ECE0(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_10003B050(a1, a2, a3);
  }
}

uint64_t sub_10003ECF4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003ED48()
{
  v1 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10003EE18(void *a1, char a2)
{
  v5 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  sub_100037A88(a1, a2 & 1, v6, v7);
}

uint64_t sub_10003EEAC()
{
  v1 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v8 = *(v0 + v6);

  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_10003EF80(void *a1)
{
  v3 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_100037FD4(a1, (v1 + v4), v7, v8, v10, v11);
}

uint64_t sub_10003F044(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_10003F0B8(uint64_t a1)
{
  v3 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v49 - v5;
  v7 = _s3TagVMa();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_1000855B8();
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v66 = _swiftEmptyArrayStorage;
  sub_10003BCE0(0, v11 & ~(v11 >> 63), 0);
  v12 = v66;
  if (v58)
  {
    result = sub_100085568();
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    result = sub_100085548();
    v14 = *(a1 + 36);
  }

  v63 = result;
  v64 = v14;
  v65 = v58 != 0;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v54 = v6;
    v55 = a1;
    v16 = 0;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v17 = a1;
    }

    v51 = a1 + 56;
    v52 = v17;
    v49[1] = v1;
    v50 = a1 + 64;
    v53 = v11;
    while (v16 < v11)
    {
      if (__OFADD__(v16++, 1))
      {
        goto LABEL_42;
      }

      v20 = v63;
      v60 = v64;
      v61 = v12;
      v59 = v65;
      sub_100040358(v63, v64, v65, a1);
      v22 = v21;
      v23 = sub_1000848B8();
      v24 = *(*(v23 - 8) + 56);
      v25 = 1;
      v26 = v10;
      v24(v10, 1, 1, v23);
      v27 = [v22 creationDate];
      v28 = v54;
      if (v27)
      {
        v29 = v27;
        sub_100084888();

        v25 = 0;
      }

      v24(v28, v25, 1, v23);
      v30 = v28;
      v10 = v26;
      sub_100040A94(v30, v26);
      v31 = [v22 displayText];
      if (v31)
      {
        v32 = v31;
        v33 = sub_100085098();
        v35 = v34;
      }

      else
      {

        v33 = 0;
        v35 = 0xE000000000000000;
      }

      a1 = v55;
      v11 = v53;
      v36 = &v10[*(v57 + 20)];
      *v36 = v33;
      v36[1] = v35;
      v12 = v61;
      v66 = v61;
      v38 = v61[2];
      v37 = v61[3];
      if (v38 >= v37 >> 1)
      {
        sub_10003BCE0(v37 > 1, v38 + 1, 1);
        v12 = v66;
      }

      v12[2] = v38 + 1;
      result = sub_10003DAC8(v10, v12 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v38);
      if (v58)
      {
        if (!v59)
        {
          goto LABEL_47;
        }

        if (sub_100085588())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_100005740(&qword_1000A6500, &qword_10008CD88);
        v18 = sub_1000852B8();
        sub_1000855E8();
        result = v18(v62, 0);
        if (v16 == v11)
        {
LABEL_39:
          sub_100040B04(v63, v64, v65);
          return v12;
        }
      }

      else
      {
        if (v59)
        {
          goto LABEL_48;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v39 = 1 << *(a1 + 32);
        if (v20 >= v39)
        {
          goto LABEL_43;
        }

        v40 = v20 >> 6;
        v41 = *(v51 + 8 * (v20 >> 6));
        if (((v41 >> v20) & 1) == 0)
        {
          goto LABEL_44;
        }

        if (*(a1 + 36) != v60)
        {
          goto LABEL_45;
        }

        v42 = v41 & (-2 << (v20 & 0x3F));
        if (v42)
        {
          v39 = __clz(__rbit64(v42)) | v20 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v43 = v40 << 6;
          v44 = v40 + 1;
          v45 = (v50 + 8 * v40);
          while (v44 < (v39 + 63) >> 6)
          {
            v47 = *v45++;
            v46 = v47;
            v43 += 64;
            ++v44;
            if (v47)
            {
              result = sub_100040B04(v20, v60, 0);
              v39 = __clz(__rbit64(v46)) + v43;
              goto LABEL_38;
            }
          }

          result = sub_100040B04(v20, v60, 0);
        }

LABEL_38:
        v48 = *(a1 + 36);
        v63 = v39;
        v64 = v48;
        v65 = 0;
        if (v16 == v11)
        {
          goto LABEL_39;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_10003F5CC()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A64D0);
  sub_10000B614(v0, qword_1000A64D0);
  return sub_100084F98();
}

uint64_t sub_10003F618(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6550, &qword_10008CE58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100040CA4();
  sub_100085A78();
  LOBYTE(v16) = *v3;
  v17 = 0;
  sub_100040CF8();
  sub_1000858D8();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v16) = 1;
    sub_100085898();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v16) = 2;
    sub_100085848();
    LOBYTE(v16) = *(v3 + 40);
    v17 = 3;
    sub_100040D4C();
    sub_100085888();
    v16 = *(v3 + 48);
    v17 = 4;
    sub_100005740(&qword_1000A6570, &qword_10008CE60);
    sub_1000414D0(&qword_1000A6578, &qword_1000A6580);
    sub_100085888();
    v16 = *(v3 + 56);
    v17 = 5;
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    sub_100041558(&qword_1000A6590);
    sub_100085888();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10003F934()
{
  v1 = *v0;
  v2 = 0x6E65644965707974;
  v3 = 1701869940;
  v4 = 1936154996;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003F9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100040DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003FA24(uint64_t a1)
{
  v2 = sub_100040CA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003FA60(uint64_t a1)
{
  v2 = sub_100040CA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10003FA9C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100040FF4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

id sub_10003FAF8(id a1, uint64_t a2, _BYTE *a3)
{
  v5 = v3;
  if ((*a3 & 1) == 0 || (v9 = [a1 managedObjectContext]) == 0)
  {
LABEL_8:
    ObjectType = swift_getObjectType();
    v14 = a1;
    v16 = (*(a2 + 16))(v5[1], v5[2], a3, ObjectType, a2);
    if (!v4)
    {
      v14 = v16;
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        v14 = v14;
        v19 = v14;
        if ([v18 isRenamable])
        {
          if (v5[4])
          {
            v20 = v5[3];
            v21 = v5[4];
          }

          v19 = sub_100085068();

          [v18 setTitle:v19];
        }
      }
    }

    return v14;
  }

  v10 = *(v3 + 40);
  if (v10 == 2)
  {

    goto LABEL_8;
  }

  v11 = v9;
  v12 = objc_opt_self();
  v13 = &selRef_localAccountInContext_;
  if ((v10 & 1) == 0)
  {
    v13 = &selRef_cloudKitAccountInContext_;
  }

  v14 = [v12 *v13];

  if (!v14)
  {
    goto LABEL_8;
  }

  return v14;
}

id sub_10003FCAC(id a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = a1;
  v5 = *(v3 + 16);
  v24 = a1;
  if (!v5)
  {
    goto LABEL_18;
  }

  v7 = 0;
  v8 = v3 + 40;
  v23 = v8;
  do
  {
    v9 = (v8 + 16 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_31;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_6;
      }

      v11 = *(v9 - 1);
      v12 = *v9;

      v13 = sub_100039138(v11, v12);
      if (v14)
      {
        if ([*(*(a2 + 56) + 8 * v13) identifier])
        {
          break;
        }
      }

LABEL_6:
      ++v10;
      v9 += 2;
      if (v7 == v5)
      {
        v4 = v24;
        goto LABEL_18;
      }
    }

    sub_1000851F8();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100085228();
    }

    a1 = sub_100085258();
    v4 = v24;
    v8 = v23;
  }

  while (v7 != v5);
LABEL_18:
  a1 = [v4 subFolderIdentifiersOrderedSet];
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_34;
  }

  v17 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    a1 = a1;
    v18 = a1;
    if (!v17)
    {
      break;
    }

    v19 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        a1 = sub_100085648();
      }

      else
      {
        if (v19 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        a1 = _swiftEmptyArrayStorage[v19 + 4];
      }

      v20 = a1;
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [v18 addObject:a1];

      ++v19;
      if (v21 == v17)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v22 = a1;
    v17 = sub_100085718();
    a1 = v22;
  }

LABEL_29:

  [v24 setSubFolderOrderMergeableDataDirty:1];
  [v24 saveSubFolderMergeableDataIfNeeded];
  return [v24 subFolderIdentifiersOrderedSetDocument];
}

uint64_t sub_10003FF4C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x4C41434F4CLL;
  }

  else
  {
    v2 = 0x44554F4C43;
  }

  if (*a2)
  {
    v3 = 0x4C41434F4CLL;
  }

  else
  {
    v3 = 0x44554F4C43;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_100085948();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10003FFCC()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10004003C()
{
  *v0;
  sub_100085118();
}

Swift::Int sub_100040090()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_1000400FC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10009E018;
  v8._object = v3;
  v5 = sub_100085788(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10004015C(uint64_t *a1@<X8>)
{
  v2 = 0x44554F4C43;
  if (*v1)
  {
    v2 = 0x4C41434F4CLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_100040258()
{
  sub_100041944();
  sub_1000418F0();

  return sub_100084A28();
}

uint64_t sub_1000402E0()
{
  sub_100041944();
  sub_1000418F0();

  return sub_100084A48();
}

void sub_100040358(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1000855C8();
      sub_100008250(0, &qword_1000A64E8, ICHashtag_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100008250(0, &qword_1000A64E8, ICHashtag_ptr);
    if (sub_100085598() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_1000855A8();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_1000854B8(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_1000854C8();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10004057C(int a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return 1;
  }

  if (qword_1000A5410 != -1)
  {
    swift_once();
  }

  v2 = sub_100084FB8();
  sub_10000B614(v2, qword_1000A64D0);
  v3 = sub_100084FA8();
  v4 = sub_100085388();
  if (os_log_type_enabled(v3, v4))
  {
    v1 = 2;
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown account type — returning nil", v5, 2u);
  }

  else
  {

    return 2;
  }

  return v1;
}

uint64_t sub_100040688@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_100030518(a2);
  v5 = [a1 identifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_100085098();
    v39 = v8;
  }

  else
  {
    v7 = 0;
    v39 = 0xE000000000000000;
  }

  v9 = [a1 localizedName];
  v10 = sub_100085098();
  v36 = v11;
  v37 = v10;

  v35 = sub_10004057C([a1 accountType]);
  v12 = [a1 hashtags];
  sub_100008250(0, &qword_1000A64E8, ICHashtag_ptr);
  sub_1000409C4();
  v13 = sub_100085298();

  v14 = sub_10003F0B8(v13);

  v15 = sub_100079D24(v14);

  v38 = a1;
  v16 = [a1 subFolderIdentifiersOrderedSet];
  v17 = [v16 allObjects];

  sub_100008250(0, &qword_1000A64F8, NSString_ptr);
  v18 = sub_100085208();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v15;
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_16:

    v22 = _swiftEmptyArrayStorage;
LABEL_17:
    LOBYTE(v41) = 1;
    *(&v41 + 1) = v7;
    *&v42 = v39;
    *(&v42 + 1) = v37;
    *&v43 = v36;
    BYTE8(v43) = v35;
    *&v44 = v34;
    *(&v44 + 1) = v22;
    LOBYTE(v45[0]) = 1;
    v45[1] = v7;
    v45[2] = v39;
    v45[3] = v37;
    v45[4] = v36;
    v46 = v35;
    v47 = v34;
    v48 = v22;
    sub_100040A2C(&v41, v40);
    result = sub_100040A64(v45);
    v31 = v42;
    *a3 = v41;
    a3[1] = v31;
    v32 = v44;
    a3[2] = v43;
    a3[3] = v32;
    return result;
  }

  v19 = sub_100085718();
  v34 = v15;
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_6:
  v45[0] = _swiftEmptyArrayStorage;
  result = sub_10003BCC0(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v33 = v7;
    v21 = 0;
    v22 = v45[0];
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = sub_100085648();
      }

      else
      {
        v23 = *(v18 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = sub_100085098();
      v27 = v26;

      v45[0] = v22;
      v29 = v22[2];
      v28 = v22[3];
      if (v29 >= v28 >> 1)
      {
        sub_10003BCC0((v28 > 1), v29 + 1, 1);
        v22 = v45[0];
      }

      ++v21;
      v22[2] = v29 + 1;
      v30 = &v22[2 * v29];
      v30[4] = v25;
      v30[5] = v27;
    }

    while (v19 != v21);

    v7 = v33;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000409C4()
{
  result = qword_1000A64F0;
  if (!qword_1000A64F0)
  {
    sub_100008250(255, &qword_1000A64E8, ICHashtag_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A64F0);
  }

  return result;
}

uint64_t sub_100040A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040B04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 sub_100040B10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100040B24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100040B6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100040BCC(uint64_t a1)
{
  *(a1 + 8) = sub_100040BFC();
  result = sub_100040C50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100040BFC()
{
  result = qword_1000A6540;
  if (!qword_1000A6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6540);
  }

  return result;
}

unint64_t sub_100040C50()
{
  result = qword_1000A6548;
  if (!qword_1000A6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6548);
  }

  return result;
}

unint64_t sub_100040CA4()
{
  result = qword_1000A6558;
  if (!qword_1000A6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6558);
  }

  return result;
}

unint64_t sub_100040CF8()
{
  result = qword_1000A6560;
  if (!qword_1000A6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6560);
  }

  return result;
}

unint64_t sub_100040D4C()
{
  result = qword_1000A6568;
  if (!qword_1000A6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6568);
  }

  return result;
}

uint64_t sub_100040DA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s3TagVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100040DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100086EF0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100040FF4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100005740(&qword_1000A6598, &qword_10008CE70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100040CA4();
  sub_100085A68();
  if (v2)
  {
    sub_100006304(a1);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_100041428();
    sub_100085828();
    v11 = LOBYTE(v35[0]);
    LOBYTE(v35[0]) = 1;
    v12 = sub_1000857E8();
    v14 = v13;
    v29 = v12;
    LOBYTE(v35[0]) = 2;
    v28 = sub_100085798();
    v30 = v15;
    LOBYTE(v31) = 3;
    sub_10004147C();
    sub_1000857D8();
    v27 = LOBYTE(v35[0]);
    sub_100005740(&qword_1000A6570, &qword_10008CE60);
    LOBYTE(v31) = 4;
    sub_1000414D0(&qword_1000A65B0, &qword_1000A65B8);
    sub_1000857D8();
    v26 = v11;
    v16 = v35[0];
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    v39 = 5;
    sub_100041558(&qword_1000A65C0);
    sub_1000857D8();
    (*(v6 + 8))(v9, v5);
    v25 = v40;
    v17 = v26;
    LOBYTE(v31) = v26;
    v19 = v28;
    v18 = v29;
    *(&v31 + 1) = v29;
    *&v32 = v14;
    v20 = v30;
    *(&v32 + 1) = v28;
    *&v33 = v30;
    BYTE8(v33) = v27;
    *&v34 = v16;
    *(&v34 + 1) = v40;
    sub_100040A2C(&v31, v35);
    sub_100006304(a1);
    LOBYTE(v35[0]) = v17;
    v35[1] = v18;
    v35[2] = v14;
    v35[3] = v19;
    v35[4] = v20;
    v36 = v27;
    v37 = v16;
    v38 = v25;
    result = sub_100040A64(v35);
    v22 = v32;
    *a2 = v31;
    a2[1] = v22;
    v23 = v34;
    a2[2] = v33;
    a2[3] = v23;
  }

  return result;
}

unint64_t sub_100041428()
{
  result = qword_1000A65A0;
  if (!qword_1000A65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65A0);
  }

  return result;
}

unint64_t sub_10004147C()
{
  result = qword_1000A65A8;
  if (!qword_1000A65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65A8);
  }

  return result;
}

uint64_t sub_1000414D0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A6570, &qword_10008CE60);
    sub_100040DA0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100041558(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A6588, &qword_10008CE68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICAccountArchiveModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICAccountArchiveModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10004172C()
{
  result = qword_1000A65C8;
  if (!qword_1000A65C8)
  {
    sub_100011888(&qword_1000A65D0, &qword_10008CED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65C8);
  }

  return result;
}

unint64_t sub_100041794()
{
  result = qword_1000A65D8;
  if (!qword_1000A65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65D8);
  }

  return result;
}

unint64_t sub_1000417EC()
{
  result = qword_1000A65E0;
  if (!qword_1000A65E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65E0);
  }

  return result;
}

unint64_t sub_100041844()
{
  result = qword_1000A65E8;
  if (!qword_1000A65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65E8);
  }

  return result;
}

unint64_t sub_10004189C()
{
  result = qword_1000A65F0;
  if (!qword_1000A65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65F0);
  }

  return result;
}

unint64_t sub_1000418F0()
{
  result = qword_1000A65F8;
  if (!qword_1000A65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A65F8);
  }

  return result;
}

unint64_t sub_100041944()
{
  result = qword_1000A6600;
  if (!qword_1000A6600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6600);
  }

  return result;
}

uint64_t static ICArchiveImporter.Configuration.default.getter@<X0>(uint64_t a1@<X8>)
{
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  result = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  *a1 = IsAlexandriaDemoModeEnabled;
  *(a1 + 1) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 2;
  return result;
}

uint64_t sub_1000419DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1413891404;
    }

    else
    {
      v3 = 0x5448474952;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1314344772;
    }

    else
    {
      v3 = 20565;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 20565;
  v7 = 0xE400000000000000;
  v8 = 1413891404;
  if (a2 != 2)
  {
    v8 = 0x5448474952;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v6 = 1314344772;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100085948();
  }

  return v11 & 1;
}

uint64_t sub_100041AF0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x524F4C4F43;
    }

    else
    {
      v2 = 0x4F544F4850;
    }

    v3 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0x4C41435359415247;
    v3 = 0xE900000000000045;
  }

  else if (a1 == 3)
  {
    v2 = 0x4E415F4B43414C42;
    v3 = 0xEF45544948575F44;
  }

  else
  {
    v2 = 0x414F424554494857;
    v3 = 0xEA00000000004452;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x524F4C4F43;
    }

    else
    {
      v8 = 0x4F544F4850;
    }

    v7 = 0xE500000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x4E415F4B43414C42;
    v5 = 0xEF45544948575F44;
    if (a2 != 3)
    {
      v4 = 0x414F424554494857;
      v5 = 0xEA00000000004452;
    }

    if (a2 == 2)
    {
      v6 = 0x4C41435359415247;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE900000000000045;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_100085948();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_100041C98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1162760014;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 0x4C5F4D554944454DLL;
  v6 = 0xEC00000053454E49;
  if (a1 != 5)
  {
    v5 = 0x494C5F454752414CLL;
    v6 = 0xEB0000000053454ELL;
  }

  v7 = 0x52475F454752414CLL;
  v8 = 0xEA00000000004449;
  if (a1 != 3)
  {
    v7 = 0x494C5F4C4C414D53;
    v8 = 0xEB0000000053454ELL;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x52475F4C4C414D53;
  v10 = 0xEA00000000004449;
  if (a1 != 1)
  {
    v9 = 0x475F4D554944454DLL;
    v10 = 0xEB00000000444952;
  }

  if (a1)
  {
    v4 = v10;
  }

  else
  {
    v9 = 1162760014;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v14 = 0xE400000000000000;
      goto LABEL_34;
    }

    if (a2 == 1)
    {
      v13 = 0x5F4C4C414D53;
      goto LABEL_25;
    }

    v2 = 0x475F4D554944454DLL;
    v15 = 4475218;
LABEL_33:
    v14 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    goto LABEL_34;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0x4C5F4D554944454DLL;
      v14 = 0xEC00000053454E49;
      goto LABEL_34;
    }

    v16 = 0x5F454752414CLL;
    goto LABEL_32;
  }

  if (a2 != 3)
  {
    v16 = 0x5F4C4C414D53;
LABEL_32:
    v2 = v16 & 0xFFFFFFFFFFFFLL | 0x494C000000000000;
    v15 = 5457230;
    goto LABEL_33;
  }

  v13 = 0x5F454752414CLL;
LABEL_25:
  v2 = v13 & 0xFFFFFFFFFFFFLL | 0x5247000000000000;
  v14 = 0xEA00000000004449;
LABEL_34:
  if (v11 == v2 && v12 == v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_100085948();
  }

  return v17 & 1;
}

uint64_t sub_100041EC0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = "ERRIDE";
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = "com.apple.notes.archive";
    }

    else
    {
      v4 = "ERRIDE";
    }

    v5 = 0xD000000000000017;
  }

  else if (a1 == 2)
  {
    v4 = "com.apple.notes.account";
    v5 = 0xD000000000000016;
  }

  else if (a1 == 3)
  {
    v4 = "com.apple.notes.folder";
    v5 = 0xD000000000000014;
  }

  else
  {
    v4 = "com.apple.notes.note";
    v5 = 0xD00000000000001ALL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "com.apple.notes.archive";
    }
  }

  else if (a2 == 2)
  {
    v3 = "com.apple.notes.account";
    v2 = 0xD000000000000016;
  }

  else
  {
    v3 = "com.apple.notes.folder";
    if (a2 == 3)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a2 != 3)
    {
      v3 = "com.apple.notes.note";
    }
  }

  if (v5 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_100085948();
  }

  return v6 & 1;
}

uint64_t sub_100042020(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5F4F545F5446454CLL;
    }

    else
    {
      v3 = 0x4C41525554414ELL;
    }

    if (v2)
    {
      v4 = 0xED00005448474952;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000016;
    v4 = 0x8000000100086450;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x4F545F5448474952;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (v2 == 3)
    {
      v4 = 0xED00005446454C5FLL;
    }

    else
    {
      v4 = 0x8000000100086480;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x5F4F545F5446454CLL;
    }

    else
    {
      v9 = 0x4C41525554414ELL;
    }

    if (a2)
    {
      v8 = 0xED00005448474952;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x4F545F5448474952;
    v6 = 0x8000000100086480;
    if (a2 == 3)
    {
      v6 = 0xED00005446454C5FLL;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000100086450;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_100085948();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_1000421E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1263421776;
    }

    else
    {
      v4 = 0x454C50525550;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x45474E41524FLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 3)
    {
      v4 = 1414416717;
    }

    else
    {
      v4 = 1163217986;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1263421776;
    }

    else
    {
      v8 = 0x454C50525550;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 1414416717;
    if (a2 != 3)
    {
      v5 = 1163217986;
    }

    if (a2 == 2)
    {
      v6 = 0x45474E41524FLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_100085948();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_100042330(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5245544E4543;
    }

    else
    {
      v3 = 1413891404;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x5448474952;
  }

  else if (a1 == 3)
  {
    v3 = 0x454946495453554ALL;
    v4 = 0xE900000000000044;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x4C41525554414ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x5245544E4543;
    }

    else
    {
      v9 = 1413891404;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x454946495453554ALL;
    v6 = 0xE900000000000044;
    if (a2 != 3)
    {
      v5 = 0x4C41525554414ELL;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x5448474952;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_100085948();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

id ICArchiveImporter.__allocating_init(context:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  swift_getObjectType();
  v5 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v7 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v8 = objc_allocWithZone(v2);
  v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting] = 0;
  v9 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  *&v8[v9] = sub_10003D4E0(_swiftEmptyArrayStorage);
  *&v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_saveBatchSize] = 32;
  v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v10 = &v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v10 = 0u;
  v10[1] = 0u;
  *&v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context] = a1;
  v11 = &v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
  *v11 = IsAlexandriaDemoModeEnabled;
  v11[1] = v7;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = 0;
  *(v11 + 16) = 2;
  v12 = &v8[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  *v12 = v5;
  v12[1] = &protocol witness table for NSFileManager;
  v16.receiver = v8;
  v16.super_class = v2;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, "init");
  sub_100044760();

  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t *ICArchiveImporter.objects(forArchiveAt:)()
{
  v0 = sub_100005740(&qword_1000A5A88, &unk_10008D110);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v57 = (&v48 - v2);
  v3 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  v5 = __chkstk_darwin(v3);
  v63 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v48 - v7;
  v8 = sub_1000847C8();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 8);
  __chkstk_darwin(v8);
  v64 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084EF8();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  if (qword_1000A5420 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v19 = sub_100084F28();
    sub_10000B614(v19, qword_1000A6620);
    sub_1000846F8(v20);
    sub_100084F18();
    sub_100084ED8();
    v21 = sub_100084F18();
    v22 = sub_100085408();
    if (sub_1000854D8())
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_100084EE8();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v22, v24, "Objects for Archive", "", v23, 2u);
    }

    (*(v12 + 16))(v16, v18, v11);
    v25 = sub_100084F68();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = sub_100084F58();
    v29 = v65;
    v30 = *(v65 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager);
    v31 = *(v65 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager + 8);
    swift_getObjectType();
    v32 = v62;
    v33 = sub_1000849E8();
    if (v32)
    {
      sub_100048E94(v28, "Objects for Archive");

      (*(v12 + 8))(v18, v11);
      return v11;
    }

    v34 = v33;
    v48 = v28;
    v49 = v18;
    v50 = v12;
    v51 = v11;
    v35 = *(v33 + 16);
    v36 = v29;
    v62 = v35;
    if (!v35)
    {
      break;
    }

    v18 = 0;
    v16 = v53;
    v12 = v54;
    v60 = v53 + 16;
    v61 = (v53 + 8);
    v37 = v56;
    v58 = (v55 + 32);
    v59 = (v55 + 48);
    v65 = &_swiftEmptyArrayStorage;
    v11 = v57;
    while (v18 < *(v34 + 16))
    {
      v38 = v34;
      v39 = v34 + ((v16[80] + 32) & ~v16[80]) + *(v16 + 9) * v18;
      v40 = v64;
      (*(v16 + 2))(v64, v39, v12);
      sub_1000455C4(v40, v11);
      (*v61)(v40, v12);
      if ((*v59)(v11, 1, v37) == 1)
      {
        sub_1000058F0(v11, &qword_1000A5A88, &unk_10008D110);
        v34 = v38;
      }

      else
      {
        v41 = *v58;
        v42 = v52;
        (*v58)(v52, v11, v37);
        v41(v63, v42, v37);
        v43 = v65;
        v34 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_10000ED28(0, v43[2] + 1, 1, v43);
        }

        v45 = v43[2];
        v44 = v43[3];
        v65 = v43;
        v16 = v53;
        if (v45 >= v44 >> 1)
        {
          v65 = sub_10000ED28(v44 > 1, v45 + 1, 1, v65);
        }

        v46 = v65;
        v65[2] = v45 + 1;
        v37 = v56;
        v41(&v46[((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v45], v63, v56);
        v11 = v57;
        v12 = v54;
      }

      if (v62 == ++v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v65 = &_swiftEmptyArrayStorage;
LABEL_18:

  v66 = v65;

  sub_10004CFD0(&v66);

  v11 = v66;
  sub_100048E94(v48, "Objects for Archive");

  (*(v50 + 8))(v49, v51);
  return v11;
}

uint64_t sub_100042D18(uint64_t a1, void *a2, char *a3, void *a4)
{
  v170 = a1;
  v164 = a2;
  v165 = a3;
  v160 = type metadata accessor for ICAttachmentArchiveModel();
  v5 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160);
  v161 = (&v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = type metadata accessor for ICNoteArchiveModel();
  v7 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158);
  v159 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for ICFolderArchiveModel(0);
  v9 = *(v162[-1].isa + 8);
  __chkstk_darwin(v162);
  v163 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v166 = *(v169 - 8);
  v11 = *(v166 + 64);
  v12 = __chkstk_darwin(v169);
  v14 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v146 - v15;
  v172 = sub_1000847C8();
  v167 = *(v172 - 8);
  v17 = *(v167 + 8);
  v18 = __chkstk_darwin(v172);
  v20 = (&v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v18);
  v23 = &v146 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v146 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v146 - v28;
  __chkstk_darwin(v27);
  v31 = &v146 - v30;
  v32 = v171;
  sub_100085348();
  if (v32)
  {
    return v23;
  }

  v151 = v16;
  v152 = v26;
  v149 = v23;
  v150 = v20;
  v154 = a4;
  v34 = *(v168 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager);
  v33 = *(v168 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager + 8);
  v156 = v14;
  v157 = v33;
  swift_getObjectType();
  v35 = v169;
  sub_100084A78();
  sub_100084718();
  v36 = v29;
  v37 = v35;
  v39 = v167 + 8;
  v38 = *(v167 + 1);
  v153 = v36;
  v38();
  v40 = sub_100084A08();
  v171 = v38;
  v147 = v40;
  v148 = v41;
  v155 = v39;
  (v38)(v31, v172);
  v42 = v166;
  v43 = v151;
  (*(v166 + 16))(v151, v170, v37);
  v44 = (*(v42 + 88))(v43, v37);
  if (v44 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v42 + 96))(v43, v37);
    v45 = *v43;
    v46 = sub_100005740(&qword_1000A6708, &unk_10008D340);
    v47 = swift_projectBox();
    v48 = *(v47 + *(v46 + 64));
    v49 = v172;
    (*(v167 + 2))(v152, v47);
    v50 = qword_1000A53F8;

    if (v50 != -1)
    {
      swift_once();
    }

    sub_100040BFC();
    sub_1000844B8();
    v174[0] = v173[0];
    v174[1] = v173[1];
    v174[2] = v173[2];
    v174[3] = v173[3];
    v23 = sub_1000496CC(v174, v48, v65, v164, v165, v154);
    (v171)(v152, v49);
    sub_10000650C(v147, v148);

    sub_100040A64(v174);

    return v23;
  }

  v152 = v34;
  v51 = v172;
  v52 = v167;
  if (v44 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v42 + 96))(v43, v37);
    v53 = *v43;
    v54 = sub_100005740(&qword_1000A6708, &unk_10008D340);
    v167 = v53;
    v55 = *(swift_projectBox() + *(v54 + 64));
    v56 = qword_1000A53F8;

    if (v56 != -1)
    {
      swift_once();
    }

    sub_10004F178(&qword_1000A6710, type metadata accessor for ICFolderArchiveModel);
    sub_1000844B8();
    v73 = v168 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
    swift_beginAccess();
    v74 = *(v73 + 16);
    v175[0] = *v73;
    v175[1] = v74;
    v176 = *(v73 + 32);
    v183 = v74;
    sub_100005888(&v183, v173, &qword_1000A6690, &qword_10008D120);
    v78 = sub_100060EF4(v164, v165, v175);
    sub_10003EAB4(v175);
    v79 = v78;
    v116 = sub_100049124(v55, v79, &off_10009E9B0, v154);

    v117 = sub_10004A65C(v116, ICFolder_ptr, sub_10003A794);

    v118 = v163;
    v138 = sub_1000612DC(v79, v117);

    sub_1000615AC(v79);

    sub_10000650C(v147, v148);
    v23 = *(v118 + 8);
    v145 = *(v118 + 16);

    sub_10004F27C(v118, type metadata accessor for ICFolderArchiveModel);

    return v23;
  }

  if (v44 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v42 + 96))(v43, v37);
    v57 = *v43;
    v58 = sub_100005740(&qword_1000A66F8, &qword_10008D338);
    v163 = v57;
    v59 = swift_projectBox();
    v60 = *(v52 + 16);
    v61 = v51;
    v62 = *(v59 + *(v58 + 64));
    v60(v149, v59, v61);
    v63 = qword_1000A53F8;

    if (v63 != -1)
    {
      swift_once();
    }

    sub_10004F178(&qword_1000A6700, type metadata accessor for ICNoteArchiveModel);
    v64 = v159;
    sub_1000844B8();
    v80 = sub_10004A03C(v64, v62, v75, v164, v165, v154);
    sub_10000650C(v147, v148);

    sub_10004F27C(v64, type metadata accessor for ICNoteArchiveModel);
    (v171)(v149, v61);

    return v80;
  }

  if (v44 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v42 + 96))(v43, v37);
    v66 = *v43;
    v67 = sub_100005740(&qword_1000A66E8, &qword_10008D330);
    v163 = v66;
    v68 = swift_projectBox();
    v69 = *(v68 + *(v67 + 80));
    (*(v52 + 16))(v150, v68, v51);
    v70 = qword_1000A53F8;
    v167 = v69;

    v71 = v156;
    if (v70 != -1)
    {
      swift_once();
    }

    sub_10004F178(&qword_1000A66F0, type metadata accessor for ICAttachmentArchiveModel);
    sub_1000844B8();
    v72 = v155;
    v76 = v168 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
    swift_beginAccess();
    v77 = *(v76 + 16);
    v179[0] = *v76;
    v179[1] = v77;
    v180 = *(v76 + 32);
    v181 = v77;
    sub_100005888(&v181, v173, &qword_1000A6690, &qword_10008D120);
    v81 = sub_100055F34(v164, v165, v179);
    sub_10003EAB4(v179);
    v165 = v81;
    v119 = sub_100049124(v167, v165, &off_10009EA20, v154);

    v120 = sub_10004A65C(v119, ICAttachment_ptr, sub_10003A7A8);
    v167 = 0;

    v121 = v161;
    v122 = v171;
    v123 = v172;
    if (v161[11])
    {
      v124 = v161[10];
      v125 = v153;
      sub_100084718();
      sub_1000846F8(v126);
      v128 = v127;

      v129 = v125;
      v123 = v172;
      (v122)(v129, v172);
    }

    v130 = (v121 + *(v160 + 88));
    if ((v130[2] & 1) == 0)
    {
    }

    v131 = *(v76 + 16);
    v177[0] = *v76;
    v177[1] = v131;
    v178 = *(v76 + 32);
    v182 = *(v76 + 16);
    sub_100005888(&v182, v173, &qword_1000A6690, &qword_10008D120);
    v132 = v165;
    v133 = v150;
    v134 = v167;
    sub_100056734(v165, v150, v120, v152, v157, v177);
    if (v134)
    {
      sub_10003EAB4(v177);

      v136 = v154;
      v137 = [v154 completedUnitCount];
      if (!__OFADD__(v137, 1))
      {
        [v136 setCompletedUnitCount:v137 + 1];
        sub_10000650C(v147, v148);
        (v171)(v133, v123);
        sub_10004F27C(v161, type metadata accessor for ICAttachmentArchiveModel);

        v23 = v134;
        *&v173[0] = v134;
        swift_errorRetain();
        sub_100005740(&qword_1000A5B98, &unk_10008B760);
        sub_100008250(0, &qword_1000A5BA0, NSError_ptr);
        if (!swift_dynamicCast())
        {
          goto LABEL_26;
        }

        v82 = v184;
        v83 = [v184 domain];
        v84 = sub_100085098();
        v86 = v85;

        if (v84 == sub_100085098() && v86 == v87)
        {

          v88 = v82;
        }

        else
        {
          v89 = sub_100085948();

          v88 = v82;
          if ((v89 & 1) == 0)
          {
LABEL_25:

LABEL_26:
            v167 = 0;
            v90 = v72;

            if (qword_1000A5418 != -1)
            {
              swift_once();
            }

            v91 = sub_100084FB8();
            sub_10000B614(v91, qword_1000A6608);
            v92 = v166;
            v93 = v169;
            (*(v166 + 16))(v71, v170, v169);
            swift_errorRetain();
            v94 = sub_100084FA8();
            v95 = sub_100085378();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              LODWORD(v163) = v95;
              v97 = v96;
              v98 = swift_slowAlloc();
              v155 = v90;
              v164 = v98;
              *&v173[0] = v98;
              *v97 = 136315394;
              swift_getErrorValue();
              v162 = v94;
              v99 = sub_100085988();
              v101 = sub_100038A4C(v99, v100, v173);

              *(v97 + 4) = v101;
              *(v97 + 12) = 2080;
              v165 = v134;
              v102 = v71;
              v103 = v153;
              sub_100084A78();
              sub_10004F178(&qword_1000A5AD8, &type metadata accessor for URL);
              v104 = v172;
              v105 = sub_100085908();
              v107 = v106;
              (v171)(v103, v104);
              v23 = v165;
              (*(v92 + 8))(v102, v93);
              v108 = sub_100038A4C(v105, v107, v173);

              *(v97 + 14) = v108;
              v109 = v162;
              _os_log_impl(&_mh_execute_header, v162, v163, "Cannot import model {error: %s, containerID: %s}", v97, 0x16u);
              swift_arrayDestroy();
              v110 = v171;
            }

            else
            {

              (*(v92 + 8))(v71, v93);
              v103 = v153;
              v110 = v171;
            }

            sub_100084A78();
            v111 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
            v112 = v168;
            swift_beginAccess();
            swift_errorRetain();
            v113 = *(v112 + v111);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v184 = *(v112 + v111);
            *(v112 + v111) = 0x8000000000000000;
            sub_10003B328(v23, v103, isUniquelyReferenced_nonNull_native);
            (v110)(v103, v172);
            *(v112 + v111) = v184;
            swift_endAccess();
            [v154 setCompletedUnitCount:{objc_msgSend(v154, "totalUnitCount")}];
            return v23;
          }
        }

        if ([v88 code] == 3072)
        {

          swift_willThrow();

          return v23;
        }

        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      v139 = v135;

      sub_10003EAB4(v177);
      v140 = v161;
      v141 = v161[1];
      v142 = v161[2];

      v143 = v154;
      v144 = [v154 completedUnitCount];
      if (!__OFADD__(v144, 1))
      {
        [v143 setCompletedUnitCount:v144 + 1];
        sub_10000650C(v147, v148);
        (v171)(v150, v123);
        sub_10004F27C(v140, type metadata accessor for ICAttachmentArchiveModel);

        return v141;
      }
    }

    __break(1u);
  }

  result = sub_100085938();
  __break(1u);
  return result;
}

uint64_t sub_1000443C8()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A6608);
  sub_10000B614(v0, qword_1000A6608);
  return sub_100084F98();
}

uint64_t sub_100044414()
{
  v0 = sub_100084FB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100084F28();
  sub_10000B64C(v5, qword_1000A6620);
  sub_10000B614(v5, qword_1000A6620);
  if (qword_1000A5418 != -1)
  {
    swift_once();
  }

  v6 = sub_10000B614(v0, qword_1000A6608);
  (*(v1 + 16))(v4, v6, v0);
  return sub_100084F08();
}

id ICArchiveImporter.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 8);
  v6 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v5;
  v7 = *(v3 + 16);
  *(a1 + 16) = v7;
  *(a1 + 32) = v6;

  return v7;
}

uint64_t ICArchiveImporter.fileManager.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager);
  v2 = *(v0 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager + 8);
  return swift_unknownObjectRetain();
}

id ICArchiveImporter.__allocating_init(context:configuration:fileManager:markdown:markdownFlavor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, char a6)
{
  ObjectType = swift_getObjectType();

  return sub_10004E634(a1, a2, a3, a5, a6, v6, ObjectType, a4);
}

id ICArchiveImporter.init(context:configuration:fileManager:markdown:markdownFlavor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, char a6)
{
  ObjectType = swift_getObjectType();

  return sub_10004E6BC(a1, a2, a3, a5, a6, v6, ObjectType, a4);
}

uint64_t sub_100044760()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = sub_10004FB80;
  v10 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072320;
  ObjectType = &unk_1000A02E8;
  v3 = _Block_copy(aBlock);

  v4 = [v1 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v3];
  _Block_release(v3);

  ObjectType = swift_getObjectType();
  aBlock[0] = v4;
  v5 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver;
  swift_beginAccess();
  sub_10004FB88(aBlock, v0 + v5);
  return swift_endAccess();
}

void ICArchiveImporter.init()()
{
  v1 = [objc_opt_self() sharedContext];
  if (v1 && (v2 = v1, v3 = [v1 snapshotManagedObjectContext], v2, v3))
  {
    [v0 initWithContext:v3];
  }

  else
  {
    __break(1u);
  }
}

id ICArchiveImporter.init(context:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v5 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v6 = objc_allocWithZone(ObjectType);
  v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting] = 0;
  v7 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  *&v6[v7] = sub_10003D4E0(_swiftEmptyArrayStorage);
  *&v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_saveBatchSize] = 32;
  v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v8 = &v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v8 = 0u;
  v8[1] = 0u;
  *&v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context] = a1;
  v9 = &v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
  *v9 = IsAlexandriaDemoModeEnabled;
  v9[1] = v5;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  *(v9 + 16) = 2;
  v10 = &v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  *v10 = v3;
  v10[1] = &protocol witness table for NSFileManager;
  v14.receiver = v6;
  v14.super_class = ObjectType;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_100044760();

  swift_deallocPartialClassInstance();
  return v12;
}

void ICArchiveImporter.init(notesMarkdown:)(char a1)
{
  v2 = [objc_opt_self() sharedContext];
  if (v2 && (v3 = v2, v4 = [v2 snapshotManagedObjectContext], v3, v4))
  {
    swift_getObjectType();
    v6[0] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v6[1] = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v10 = 2;
    v5 = [objc_opt_self() defaultManager];
    sub_10003D07C(v4, v6, v5, a1 & 1, 2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __break(1u);
  }
}

id ICArchiveImporter.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver;
  swift_beginAccess();
  sub_100005888(v0 + v2, v10, &qword_1000A5AD0, &unk_10008B5E0);
  v3 = [objc_opt_self() defaultCenter];
  sub_100005888(v10, &v8, &qword_1000A5AD0, &unk_10008B5E0);
  if (v9)
  {
    sub_10001C864(&v8, v5);
    sub_10000626C(v5, v6);
    [v3 removeObserver:sub_100085928()];
    swift_unknownObjectRelease();
    sub_100006304(v5);
  }

  sub_1000058F0(v10, &qword_1000A5AD0, &unk_10008B5E0);

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100044ED4()
{
  v1 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver;
  swift_beginAccess();
  sub_100005888(v0 + v1, v7, &qword_1000A5AD0, &unk_10008B5E0);
  v2 = [objc_opt_self() defaultCenter];
  sub_100005888(v7, &v5, &qword_1000A5AD0, &unk_10008B5E0);
  if (v6)
  {
    sub_10001C864(&v5, v3);
    sub_10000626C(v3, v4);
    [v2 removeObserver:sub_100085928()];
    swift_unknownObjectRelease();
    sub_100006304(v3);
  }

  sub_1000058F0(v7, &qword_1000A5AD0, &unk_10008B5E0);
}

uint64_t ICArchiveImporter.Errors.errorDescription.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3 || a1 == 4 || a1 == 5)
    {
      goto LABEL_11;
    }
  }

  else if (a1 <= 1 || a1 == 2)
  {
LABEL_11:
    v1 = [objc_opt_self() mainBundle];
    v2 = sub_100085068();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];

    v4 = sub_100085098();
    return v4;
  }

  result = sub_100085958();
  __break(1u);
  return result;
}

uint64_t sub_100045278(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004F1C0();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

unint64_t sub_1000452C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10004EED8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100045300(uint64_t a1)
{
  v2 = sub_10004F1C0();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_10004533C(uint64_t a1)
{
  v2 = sub_10004F1C0();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_100045378(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004F1C0();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t ICArchiveImporter.errors.getter()
{
  v1 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1000455C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v175 = a2;
  v4 = sub_100005740(&qword_1000A5A88, &unk_10008D110);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v180 = (v167 - v6);
  v7 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v8 = *(v7 - 8);
  v181 = v7;
  v182 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v179 = v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v178 = v167 - v12;
  v13 = sub_1000847C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v170 = v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v172 = v167 - v19;
  v20 = __chkstk_darwin(v18);
  v171 = v167 - v21;
  v22 = __chkstk_darwin(v20);
  v174 = v167 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = v167 - v25;
  __chkstk_darwin(v24);
  v28 = v167 - v27;
  sub_100084708();
  v173 = sub_1000846E8();
  v30 = v29;
  v190 = v14;
  v33 = *(v14 + 8);
  v32 = v14 + 8;
  v31 = v33;
  v34 = v28;
  v35 = v13;
  v33(v34, v13);
  v188 = v2;
  v36 = *&v2[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  v37 = *&v188[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager + 8];
  ObjectType = swift_getObjectType();
  v39 = v189;
  v40 = sub_1000849E8();
  v177 = v39;
  if (v39)
  {
  }

  v167[2] = ObjectType;
  v167[3] = v36;
  v167[1] = v37;
  v169 = v30;
  v186 = v31;
  v187 = v32;
  v168 = a1;
  v189 = v40;
  v42 = *(v40 + 16);
  v188 = v188;
  v43 = &_swiftEmptyArrayStorage;
  v176 = v35;
  v44 = v181;
  v185 = v42;
  if (!v42)
  {
    v48 = v177;
LABEL_16:
    v57 = v44;

    v191[0] = v43;

    sub_10004CFD0(v191);
    v177 = v48;
    if (v48)
    {

      __break(1u);
      return result;
    }

    v47 = 0xEC00000065766968;
    v35 = 0x6372617365746F6ELL;

    v58 = v191[0];
    v46 = v168;
    v43 = sub_100084698();
    v48 = v59;
    v60 = v182;
    v45 = v190;
    if (v43 == 0x6372617365746F6ELL && v59 == 0xEC00000065766968 || (sub_100085948() & 1) != 0)
    {

      v61 = v176;
      v62 = v174;
      if (qword_1000A5418 != -1)
      {
        swift_once();
      }

      v63 = sub_100084FB8();
      sub_10000B614(v63, qword_1000A6608);
      (*(v45 + 16))(v62, v46, v61);
      v64 = sub_100084FA8();
      v65 = sub_100085378();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = v62;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v191[0] = v68;
        *v67 = 136315138;
        v69 = sub_100084698();
        v70 = v57;
        v72 = v71;
        v186(v66, v61);
        v73 = sub_100038A4C(v69, v72, v191);
        v57 = v70;

        *(v67 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v64, v65, "Archive object type not supported inside archive — skipping {pathExtension: %s}", v67, 0xCu);
        sub_100006304(v68);
      }

      else
      {

        v186(v62, v61);
      }

      return (*(v182 + 56))(v175, 1, 1, v57);
    }

    if (v43 == 0x746E756F636361 && v48 == 0xE700000000000000 || (sub_100085948() & 1) != 0)
    {
      v74 = v45;

      v75 = sub_100005740(&qword_1000A6708, &unk_10008D340);
      v76 = swift_allocBox();
      v78 = v77;
      v79 = (v77 + *(v75 + 48));
      v80 = *(v75 + 64);
      (*(v74 + 16))(v77, v46, v176);
      v81 = v169;
      *v79 = v173;
      v79[1] = v81;
      *(v78 + v80) = v58;
      v82 = v175;
      *v175 = v76;
      (*(v60 + 104))(v82, enum case for ICObjectReferences.account<A>(_:), v57);
      return (*(v60 + 56))(v82, 0, 1, v57);
    }

    v189 = v58;
    v44 = 0x7265646C6F66;
    if (v43 == 0x7265646C6F66 && v48 == 0xE600000000000000 || (sub_100085948() & 1) != 0)
    {
      v83 = v45;

      v84 = sub_100005740(&qword_1000A6708, &unk_10008D340);
      v85 = swift_allocBox();
      v87 = v86;
      v88 = (v86 + *(v84 + 48));
      v89 = *(v84 + 64);
      (*(v83 + 16))(v86, v46, v176);
      v90 = v169;
      *v88 = v173;
      v88[1] = v90;
      *(v87 + v89) = v189;
      v91 = v175;
      *v175 = v85;
      v92 = &enum case for ICObjectReferences.folder<A>(_:);
    }

    else
    {
      if ((v43 != 1702129518 || v48 != 0xE400000000000000) && (sub_100085948() & 1) == 0)
      {
        goto LABEL_41;
      }

      v94 = v45;

      v95 = sub_100005740(&qword_1000A66F8, &qword_10008D338);
      v96 = swift_allocBox();
      v98 = v97;
      v99 = (v97 + *(v95 + 48));
      v100 = *(v95 + 64);
      (*(v94 + 16))(v97, v46, v176);
      v101 = v169;
      *v99 = v173;
      v99[1] = v101;
      *(v98 + v100) = v189;
      v91 = v175;
      *v175 = v96;
      v92 = &enum case for ICObjectReferences.note<A>(_:);
    }

    v93 = v181;
    (*(v60 + 104))(v91, *v92, v181);
    return (*(v60 + 56))(v91, 0, 1, v93);
  }

  v45 = 0;
  v46 = v189;
  v183 = (v182 + 48);
  v184 = v190 + 16;
  v47 = v182 + 32;
  v48 = v177;
  v49 = v180;
  while (v45 < v46[2])
  {
    (*(v190 + 16))(v26, v46 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v45, v35);
    sub_1000455C4(v26);
    if (v48)
    {

      v186(v26, v35);
    }

    v48 = 0;
    v186(v26, v35);
    if ((*v183)(v49, 1, v44) == 1)
    {
      sub_1000058F0(v49, &qword_1000A5A88, &unk_10008D110);
    }

    else
    {
      v50 = v49;
      v51 = *v47;
      v52 = v178;
      (*v47)(v178, v50, v44);
      v53 = v179;
      v51(v179, v52, v44);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_10000ED28(0, v43[2] + 1, 1, v43);
      }

      v55 = v43[2];
      v54 = v43[3];
      if (v55 >= v54 >> 1)
      {
        v43 = sub_10000ED28(v54 > 1, v55 + 1, 1, v43);
      }

      v43[2] = v55 + 1;
      v56 = v43 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v55;
      v44 = v181;
      v51(v56, v53, v181);
      v48 = 0;
      v35 = v176;
      v49 = v180;
    }

    ++v45;
    v46 = v189;
    if (v185 == v45)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  v188 = v35;
  if (v43 == 0x656D686361747461 && v48 == 0xEA0000000000746ELL)
  {
  }

  else
  {
    v102 = sub_100085948();

    v103 = v176;
    if ((v102 & 1) == 0)
    {

      if (qword_1000A5418 != -1)
      {
        swift_once();
      }

      v107 = sub_100084FB8();
      sub_10000B614(v107, qword_1000A6608);
      v108 = v170;
      (*(v45 + 16))(v170, v46, v103);
      v109 = sub_100084FA8();
      v110 = sub_100085378();
      v111 = os_log_type_enabled(v109, v110);
      v112 = v181;
      if (v111)
      {
        v113 = swift_slowAlloc();
        v114 = v103;
        v115 = swift_slowAlloc();
        v191[0] = v115;
        *v113 = 136315138;
        v116 = sub_100084698();
        v117 = v108;
        v119 = v118;
        v186(v117, v114);
        v120 = sub_100038A4C(v116, v119, v191);

        *(v113 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v109, v110, "Unknown object type — skipping {pathExtension: %s}", v113, 0xCu);
        sub_100006304(v115);
      }

      else
      {

        v186(v108, v103);
      }

      return (*(v182 + 56))(v175, 1, 1, v112);
    }
  }

  v191[0] = &_swiftEmptyArrayStorage;
  sub_10003BCC0(0, 5, 0);
  v104 = v191[0];
  v105 = 0x6372617365746F6ELL;
  v106 = 0x656D686361747461;
  v122 = v191[0][2];
  v121 = v191[0][3];
  v123 = v122 + 1;
  if (v122 >= v121 >> 1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v104[2] = v123;
    v124 = &v104[2 * v122];
    v124[4] = v105;
    v124[5] = v47;
    v125 = v45;
    v191[0] = v104;
    v126 = v104[3];
    v127 = v122 + 2;
    if (v123 >= v126 >> 1)
    {
      v162 = v122 + 2;
      v163 = v106;
      sub_10003BCC0((v126 > 1), v162, 1);
      v106 = v163;
      v104 = v191[0];
    }

    v104[2] = v127;
    v128 = &v104[2 * v123];
    v128[4] = 0x746E756F636361;
    v128[5] = 0xE700000000000000;
    v191[0] = v104;
    v130 = v104[2];
    v129 = v104[3];
    v131 = v130 + 1;
    if (v130 >= v129 >> 1)
    {
      v164 = v106;
      sub_10003BCC0((v129 > 1), v130 + 1, 1);
      v106 = v164;
      v104 = v191[0];
    }

    v104[2] = v131;
    v132 = &v104[2 * v130];
    v132[4] = v44;
    v132[5] = 0xE600000000000000;
    v191[0] = v104;
    v133 = v104[3];
    v134 = v130 + 2;
    if (v131 >= v133 >> 1)
    {
      v165 = v130 + 2;
      v166 = v106;
      sub_10003BCC0((v133 > 1), v165, 1);
      v106 = v166;
      v104 = v191[0];
    }

    v104[2] = v134;
    v135 = &v104[2 * v131];
    v135[4] = 1702129518;
    v135[5] = 0xE400000000000000;
    v188 = v106;
    v136 = 0xEA0000000000746ELL;
    v105 = v169;
    v191[0] = v104;
    v138 = v104[2];
    v137 = v104[3];
    v123 = v138 + 1;
    if (v138 >= v137 >> 1)
    {
      v185 = 0xEA0000000000746ELL;
      sub_10003BCC0((v137 > 1), v138 + 1, 1);
      v136 = v185;
      v104 = v191[0];
    }

    v104[2] = v123;
    v139 = &v104[2 * v138];
    v139[4] = v188;
    v139[5] = v136;
    v140 = v177;
    v122 = v104;
    v141 = sub_1000849D8();
    if (v140)
    {
    }

    v47 = v141;
    v177 = 0;
    v184 = *(v141 + 16);
    v185 = v122;
    if (!v184)
    {
      break;
    }

    v44 = 0;
    v106 = v125 + 16;
    v183 = (v125 + 16);
    v180 = (v125 + 32);
    v45 = &_swiftEmptyArrayStorage;
    v142 = v171;
    while (1)
    {
      v121 = *(v47 + 16);
      if (v44 >= v121)
      {
        break;
      }

      v188 = ((*(v125 + 80) + 32) & ~*(v125 + 80));
      v122 = *(v125 + 72);
      v123 = v176;
      (*(v125 + 16))(v142, &v188[v47 + v122 * v44], v176);
      v191[0] = sub_100084698();
      v191[1] = v143;
      __chkstk_darwin(v191[0]);
      v167[-2] = v191;
      v144 = v177;
      v105 = sub_10001CF34(sub_10004FB28, &v167[-4], v185);
      v177 = v144;

      if (v105)
      {
        v186(v142, v123);
      }

      else
      {
        v105 = *v180;
        (*v180)(v172, v142, v123);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v192 = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10003BEAC(0, *(v45 + 16) + 1, 1);
          v142 = v171;
          v45 = v192;
        }

        v147 = *(v45 + 16);
        v146 = *(v45 + 24);
        if (v147 >= v146 >> 1)
        {
          sub_10003BEAC(v146 > 1, v147 + 1, 1);
          v142 = v171;
          v45 = v192;
        }

        *(v45 + 16) = v147 + 1;
        (v105)(&v188[v45 + v147 * v122], v172, v176);
      }

      ++v44;
      v125 = v190;
      if (v184 == v44)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_77:
    v161 = v106;
    sub_10003BCC0((v121 > 1), v123, 1);
    v106 = v161;
    v104 = v191[0];
  }

  v45 = &_swiftEmptyArrayStorage;
LABEL_75:

  v148 = *(v45 + 16);

  v149 = v148 > 1;
  v150 = sub_100005740(&qword_1000A66E8, &qword_10008D330);
  v151 = swift_allocBox();
  v153 = v152;
  v154 = (v152 + v150[12]);
  v155 = v150[16];
  v156 = v150[20];
  (*(v125 + 16))(v152, v168, v176);
  v157 = v169;
  *v154 = v173;
  v154[1] = v157;
  *(v153 + v155) = v149;
  *(v153 + v156) = v189;
  v158 = v175;
  *v175 = v151;
  v159 = v181;
  v160 = v182;
  (*(v182 + 104))(v158, enum case for ICObjectReferences.attachment<A>(_:), v181);
  return (*(v160 + 56))(v158, 0, 1, v159);
}

void sub_100046AB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [*(a1 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context) ic_existingObjectWithID:a2];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

LABEL_19:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = a1 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
  swift_beginAccess();
  v13 = *(v12 + 32);
  if (v13 == 2 || (v13 & 1) == 0)
  {
    v16 = ICArchiveImporter.objects(forArchiveAt:)();
    if (!v4)
    {
      v17 = v16;
      if (a4)
      {
        v18 = a4;
      }

      else
      {
        v18 = [objc_allocWithZone(NSProgress) init];
      }

      v19 = a4;
      ICArchiveImporter.importObjects(_:fromArchiveAt:into:progress:)(v17, a3, v11, v18);
    }

    goto LABEL_12;
  }

  sub_100084778();
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v9 = v9;
    sub_100046D04(a3, v15, 0, 1);

LABEL_12:
    return;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    sub_100046D04(a3, 0, 0, 1);
    goto LABEL_12;
  }

  v21 = v20;
  v22 = v9;
  v9 = [v21 defaultFolder];
  sub_100046D04(a3, v9, 0, 1);
  if (v4)
  {

    goto LABEL_12;
  }
}

void sub_100046D04(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v6 = v5;
  v7 = v4;
  v74 = a4;
  v73 = a3;
  v10 = sub_1000847C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v76 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v81 = &v66 - v15;
  if (qword_1000A5418 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v16 = sub_100084FB8();
    v80 = sub_10000B614(v16, qword_1000A6608);
    v17 = sub_100084FA8();
    v18 = sub_100085368();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "starting markdown archive import", v19, 2u);
    }

    if (!a2 || (v20 = [a2 account]) == 0)
    {
      v20 = [objc_opt_self() localAccountInContext:*&v7[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context]];
      if (!v20)
      {
        break;
      }
    }

    v21 = v20;
    v22 = [objc_opt_self() defaultManager];
    v23 = sub_100085358();
    if (v6)
    {

      goto LABEL_9;
    }

    v67 = a1;
    v68 = a2;
    v71 = v7;
    v72 = v11;
    v80 = v10;
    v70 = 0;
    v24 = v23;

    v25 = *(v24 + 16);
    v26 = _swiftEmptyArrayStorage;
    v75 = v24;
    v69 = v21;
    if (v25)
    {
      v82 = _swiftEmptyArrayStorage;
      sub_10003BCC0(0, v25, 0);
      v26 = v82;
      v27 = *(v72 + 16);
      v28 = v24 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
      v77 = *(v72 + 72);
      v78 = v27;
      v79 = v72 + 16;
      v29 = (v72 + 8);
      do
      {
        v31 = v80;
        v30 = v81;
        v78(v81, v28, v80);
        v32 = sub_100084698();
        v34 = v33;
        (*v29)(v30, v31);
        v82 = v26;
        v36 = v26[2];
        v35 = v26[3];
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          sub_10003BCC0((v35 > 1), v36 + 1, 1);
          v26 = v82;
        }

        v26[2] = v37;
        v38 = &v26[2 * v36];
        v38[4] = v32;
        v38[5] = v34;
        v28 += v77;
        --v25;
      }

      while (v25);
      v21 = v69;
    }

    else
    {
      v37 = _swiftEmptyArrayStorage[2];
    }

    v41 = v26 + 5;
    v42 = v37 + 1;
    a2 = v71;
    v11 = v72;
    a1 = v80;
    while (--v42)
    {
      if (*(v41 - 1) != 25709 || *v41 != 0xE200000000000000)
      {
        v41 += 2;
        if ((sub_100085948() & 1) == 0)
        {
          continue;
        }
      }

      v44 = v68;
      if (v68)
      {
        v45 = v68;
      }

      else
      {
        v45 = [v21 defaultFolder];
      }

      v50 = v67;
      v51 = v44;
      sub_10004A8CC(v50, v45);

      return;
    }

    v85 = 0;
    v83 = 0;
    v84 = 1;
    v46 = &a2[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
    swift_beginAccess();
    if (v46[33] == 1)
    {
      sub_1000846E8();
      v47 = sub_1000846B8();
      if (v74)
      {
        v48 = v47;

        v49 = *(v48 + 16);

        v81 = 0;
        v83 = v49;
        v84 = 0;
      }

      else
      {
        v52 = v73;
        v83 = v73;
        v84 = 0;
        v53 = *(v47 + 16);

        if (__OFADD__(v52, 2))
        {
          __break(1u);
          return;
        }

        if (v52 + 2 >= v53)
        {
LABEL_44:

          v81 = 0;
          goto LABEL_45;
        }

        v54 = v68;
        if (v68)
        {
          v55 = sub_100085068();
          v56 = [v54 visibleChildFolderWithTitle:v55];

          v85 = v56;
          v81 = v56;
          if (v56)
          {
            goto LABEL_40;
          }

          v57 = &selRef_newFolderInParentFolder_;
        }

        else
        {
          v58 = sub_100085068();
          v59 = [v21 visibleRootFolderWithTitle:v58];

          v85 = v59;
          v81 = v59;
          if (v59)
          {
LABEL_40:

            goto LABEL_45;
          }

          v57 = &selRef_newFolderInAccount_;
          v54 = v21;
        }

        v85 = [objc_opt_self() *v57];
        v81 = v85;
        if (!v85)
        {
          goto LABEL_44;
        }

        v60 = sub_100085068();

        v61 = v81;
        [v81 setTitle:v60];

        v62 = sub_100085068();
        [v61 updateChangeCountWithReason:v62];
      }
    }

    else
    {
      v85 = v68;
      v81 = v68;
    }

LABEL_45:
    v6 = v70;
    v63 = v75;
    v7 = *(v75 + 16);
    if (!v7)
    {
LABEL_50:

      return;
    }

    v10 = 0;
    v64 = (v11 + 8);
    while (v10 < *(v63 + 16))
    {
      v65 = v76;
      (*(v11 + 16))(v76, v63 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10, a1);
      sub_10004BAF8(v65, a2, &v85, &v83);
      if (v6)
      {
        (*v64)(v65, a1);

        return;
      }

      ++v10;
      (*v64)(v65, a1);
      v63 = v75;
      if (v7 == v10)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

  v22 = sub_100084FA8();
  v39 = sub_100085378();
  if (os_log_type_enabled(v22, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v22, v39, "no account found", v40, 2u);
  }

LABEL_9:
}

uint64_t ICArchiveImporter.importObjects(_:fromArchiveAt:into:progress:)(unint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v199 = a2;
  v179 = _s3TagVMa();
  v178 = *(v179 - 8);
  v9 = *(v178 + 64);
  __chkstk_darwin(v179);
  v181 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v176 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v180 = &v171 - v16;
  __chkstk_darwin(v15);
  v172 = (&v171 - v17);
  v184 = sub_1000848B8();
  v18 = *(v184 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v184);
  v185 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v174 = &v171 - v23;
  __chkstk_darwin(v22);
  v173 = &v171 - v24;
  v25 = type metadata accessor for ICArchiveModel();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v187 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1000847C8();
  v188 = *(v189 - 8);
  v28 = *(v188 + 64);
  __chkstk_darwin(v189);
  v190 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  ObjectType = *(v205 - 8);
  v30 = ObjectType[8];
  __chkstk_darwin(v205);
  v204 = &v171 - v31;
  v201 = sub_100084EF8();
  v200 = *(v201 - 8);
  v32 = *(v200 + 64);
  v33 = __chkstk_darwin(v201);
  v35 = &v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v171 - v36;
  v38 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting;
  if (*(v5 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting))
  {
    __break(1u);
  }

  else
  {
    v175 = v18;
    v186 = v25;
    v196 = a1;
    v39 = [a3 managedObjectContext];
    if (!v39)
    {
      __break(1u);
    }

    v40 = v39;
    v41 = *(v5 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context);
    sub_100008250(0, &qword_1000A6678, NSManagedObjectContext_ptr);
    v42 = v41;
    v43 = sub_1000854C8();

    if (v43)
    {
      v171 = v42;
      *(v38 + v5) = 1;
      if (qword_1000A5420 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_110;
    }
  }

  __break(1u);
LABEL_110:
  swift_once();
LABEL_5:
  v195 = a4;
  v194 = v38;
  v44 = sub_100084F28();
  sub_10000B614(v44, qword_1000A6620);
  sub_1000846F8(&var20);
  sub_100084F18();
  sub_100084ED8();
  v45 = sub_100084F18();
  v46 = sub_100085408();
  if (sub_1000854D8())
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = sub_100084EE8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, v46, v48, "Import Objects from Archive", "", v47, 2u);
  }

  (*(v200 + 16))(v35, v37, v201);
  v49 = sub_100084F68();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v192 = sub_100084F58();
  v52 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  swift_beginAccess();
  v53 = *(v5 + v52);
  *(v5 + v52) = &_swiftEmptyDictionarySingleton;

  v207[3] = sub_100008250(0, &qword_1000A6680, ICNoteContainer_ptr);
  v207[0] = a3;
  v54 = a3;
  v55 = sub_10000DFBC(v207);
  v57 = v56;
  sub_100006304(v207);
  v58 = v5 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
  swift_beginAccess();
  v59 = *(v58 + 16);
  v177 = (v58 + 16);
  *(v58 + 16) = v55;
  v183 = v57;
  v182 = v58;
  *(v58 + 24) = v57;
  v197 = v55;

  v60 = v196;
  v61 = *(v196 + 16);
  v62 = _swiftEmptyArrayStorage;
  v198 = v37;
  if (v61)
  {
    v191 = v5;
    v206 = _swiftEmptyArrayStorage;
    sub_10003BDAC(0, v61, 0);
    v62 = v206;
    v63 = (ObjectType + 2);
    ObjectType = ObjectType[2];
    a3 = (v60 + ((v63[64] + 32) & ~v63[64]));
    v202 = *(v63 + 7);
    v38 = (v63 - 8);
    do
    {
      v64 = v204;
      v65 = v205;
      (ObjectType)(v204, a3, v205);
      v66 = sub_100084A98();
      (*v38)(v64, v65);
      v206 = v62;
      v5 = v62[2];
      v67 = v62[3];
      v68 = v5 + 1;
      if (v5 >= v67 >> 1)
      {
        sub_10003BDAC((v67 > 1), v5 + 1, 1);
        v62 = v206;
      }

      v62[2] = v68;
      v62[v5 + 4] = v66;
      a3 = v202 + a3;
      --v61;
    }

    while (v61);
LABEL_15:
    v69 = 0;
    v70 = 4;
    do
    {
      v71 = v62[v70];
      v72 = __OFADD__(v69, v71);
      v69 += v71;
      if (v72)
      {
        __break(1u);
        goto LABEL_39;
      }

      ++v70;
      --v68;
    }

    while (v68);
    v5 = v191;
    goto LABEL_19;
  }

  v68 = _swiftEmptyArrayStorage[2];
  if (v68)
  {
    v191 = v5;
    goto LABEL_15;
  }

  v69 = 0;
LABEL_19:

  a3 = v194;
  v73 = v195;
  if (qword_1000A5418 != -1)
  {
    swift_once();
  }

  v74 = sub_100084FB8();
  sub_10000B614(v74, qword_1000A6608);
  v75 = sub_100084FA8();
  v76 = sub_100085368();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 134217984;
    *(v77 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v75, v76, "Importing archive… {noteCount: %ld}", v77, 0xCu);
  }

  v78 = v193;
  sub_100085348();
  v38 = v78;
  if (v78)
  {

    goto LABEL_26;
  }

  [v73 setTotalUnitCount:v69];
  v79 = *(v5 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager);
  v80 = *(v5 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager + 8);
  swift_getObjectType();
  v81 = v190;
  sub_100084718();
  v82 = sub_100084A08();
  v87 = v86;
  v205 = v82;
  (*(v188 + 8))(v81, v189);
  if (qword_1000A53F8 != -1)
  {
    goto LABEL_112;
  }

  while (1)
  {
    sub_10004F178(&qword_1000A6688, type metadata accessor for ICArchiveModel);
    v69 = v187;
    v62 = v186;
    v88 = v205;
    sub_1000844B8();
    if (v38)
    {

      sub_10000650C(v88, v87);
      goto LABEL_26;
    }

    v89 = *v69;
    v204 = v87;
    if (v89 > 1)
    {
      goto LABEL_120;
    }

    v90 = "ERRIDE";
    if (v89)
    {
      v90 = "com.apple.notes.archive";
    }

    if ((v90 | 0x8000000000000000) == 0x80000001000864B0)
    {
    }

    else
    {
LABEL_120:
    {
LABEL_39:
      v91 = sub_100085948();

      if ((v91 & 1) == 0)
      {
        v99 = sub_100084FA8();
        v100 = sub_100085378();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&_mh_execute_header, v99, v100, "Notes archive specifies unknown type identifier — aborting", v101, 2u);
        }

        sub_1000081FC();
        swift_allocError();
        *v102 = 0;
        swift_willThrow();

        sub_10000650C(v205, v204);
        sub_10004F27C(v69, type metadata accessor for ICArchiveModel);
        goto LABEL_26;
      }
    }
    }

    v191 = v5;
    v92 = v181;
    if (*(v182 + 1) == 1)
    {
      v93 = v172;
      sub_100005888(&v69[*(v62 + 6)], v172, &qword_1000A5490, &qword_10008CD80);
      v94 = v175;
      v95 = v184;
      if ((*(v175 + 48))(v93, 1, v184) == 1)
      {
        sub_1000058F0(v93, &qword_1000A5490, &qword_10008CD80);
        v96 = sub_100084FA8();
        v97 = sub_100085368();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v96, v97, "Notes archive doesn't have a creation date — fallback back to configuration's timestamp offset", v98, 2u);
          v62 = v186;
        }
      }

      else
      {
        (*(v94 + 32))(v173, v93, v95);
        v103 = v174;
        sub_1000848A8();
        sub_100084828();
        v105 = v104;
        v106 = *(v94 + 8);
        v107 = v103;
        v92 = v181;
        v106(v107, v95);
        v106(v173, v95);
        *(v182 + 8) = v105;
      }
    }

    v108 = *&v69[*(v62 + 8)];
    if (!v108)
    {
      break;
    }

    v109 = (v108 + 56);
    v110 = 1 << *(v108 + 32);
    v111 = -1;
    if (v110 < 64)
    {
      v111 = ~(-1 << v110);
    }

    v5 = v111 & *(v108 + 56);
    v112 = (v110 + 63) >> 6;
    v193 = (v183 + 1);
    v202 = (v175 + 48);
    v173 = (v175 + 32);
    v172 = (v175 + 56);
    v188 = v175 + 8;

    v114 = 0;
    v83 = v198;
    v190 = v109;
    v189 = v112;
    v199 = v113;
LABEL_55:
    if (v5)
    {
      goto LABEL_61;
    }

    v87 = v196;
    while (1)
    {
      v118 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        break;
      }

      if (v118 >= v112)
      {

        a3 = v194;
        goto LABEL_72;
      }

      v5 = *&v109[8 * v118];
      ++v114;
      if (v5)
      {
        v114 = v118;
LABEL_61:
        sub_10001172C(*(v113 + 48) + *(v178 + 72) * (__clz(__rbit64(v5)) | (v114 << 6)), v92);
        v119 = *(v182 + 16);
        v208[0] = *v182;
        v208[1] = v119;
        v209 = *(v182 + 32);
        ObjectType = swift_getObjectType();
        v120 = (v92 + *(v179 + 20));
        v122 = *v120;
        v121 = v120[1];
        v123 = v183;
        v124 = v183[1];
        v210 = *v177;
        sub_100005888(&v210, &v206, &qword_1000A6690, &qword_10008D120);
        v125 = v124(v122, v121, v208, ObjectType, v123);
        if (!v38)
        {
          v126 = v125;
          a3 = v180;
          sub_100005888(v92, v180, &qword_1000A5490, &qword_10008CD80);
          v127 = *v202;
          v128 = v184;
          v129 = (*v202)(a3, 1, v184);
          v83 = v198;
          if (v129 == 1)
          {
            v130 = [v126 creationDate];
            if (v130)
            {
              v131 = v174;
              v132 = v130;
              sub_100084888();

              ObjectType = v127;
              v133 = *v173;
              v134 = v176;
              v135 = v131;
              v115 = v184;
              (*v173)(v176, v135, v184);
              (*v172)(v134, 0, 1, v115);
              v136 = v134;
              a3 = v180;
              v133(v185, v136, v115);
              v137 = (ObjectType)(a3, 1, v115);
            }

            else
            {
              v138 = v176;
              v115 = v184;
              (*v172)(v176, 1, 1, v184);
              sub_100084898();
              if (v127(v138, 1, v115) != 1)
              {
                sub_1000058F0(v176, &qword_1000A5490, &qword_10008CD80);
              }

              v137 = v127(a3, 1, v115);
            }

            if (v137 != 1)
            {
              sub_1000058F0(a3, &qword_1000A5490, &qword_10008CD80);
            }
          }

          else
          {
            (*v173)(v185, a3, v128);
            v115 = v128;
          }

          v5 &= v5 - 1;
          v116 = v185;
          isa = sub_100084848().super.isa;
          (*v188)(v116, v115);
          [v126 setCreationDate:isa];

          sub_10003EAB4(v208);
          v92 = v181;
          sub_10004F27C(v181, _s3TagVMa);
          v113 = v199;
          v109 = v190;
          v112 = v189;
          goto LABEL_55;
        }

        sub_10000650C(v205, v204);
        sub_10003EAB4(v208);

        sub_10004F27C(v92, _s3TagVMa);
        sub_10004F27C(v187, type metadata accessor for ICArchiveModel);
        v5 = v191;
        a3 = v194;
LABEL_26:
        v83 = v198;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_112:
    swift_once();
  }

  v83 = v198;
  v87 = v196;
LABEL_72:
  v139 = v197;
  v5 = v191;
  v140 = sub_100049124(v87, v197, v183, v195);
  if (v38)
  {

    sub_10000650C(v205, v204);
    v141 = v187;
    goto LABEL_107;
  }

  v142 = v140;
  objc_opt_self();
  v143 = swift_dynamicCastObjCClass();
  if (!v143 || (v144 = *&v187[*(v186 + 36)]) == 0)
  {

    goto LABEL_103;
  }

  ObjectType = v143;
  v145 = _swiftEmptyArrayStorage;
  v206 = _swiftEmptyArrayStorage;
  v146 = *(v144 + 16);
  v147 = v139;
  v202 = v147;
  if (!v146)
  {
    goto LABEL_90;
  }

  v148 = 0;
  v149 = v144 + 40;
  v196 = v146 - 1;
  v199 = v144 + 40;
  do
  {
    v150 = (v149 + 16 * v148);
    v151 = v148;
    while (1)
    {
      if (v151 >= *(v144 + 16))
      {
        __break(1u);
        goto LABEL_114;
      }

      if (!*(v142 + 16))
      {
        goto LABEL_80;
      }

      v152 = *(v150 - 1);
      v153 = *v150;

      v154 = sub_100039138(v152, v153);
      if (v155)
      {
        v156 = [*(*(v142 + 56) + 8 * v154) identifier];
        if (v156)
        {
          break;
        }
      }

LABEL_80:
      ++v151;
      v150 += 2;
      if (v146 == v151)
      {
        goto LABEL_90;
      }
    }

    v193 = v156;

    sub_1000851F8();
    if (*((v206 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v206 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v157 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100085228();
    }

    v148 = v151 + 1;
    v147 = sub_100085258();
    v145 = v206;
    v149 = v199;
  }

  while (v196 != v151);
LABEL_90:

  v147 = [ObjectType subFolderIdentifiersOrderedSet];
  if (v145 >> 62)
  {
    goto LABEL_116;
  }

  v158 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v147 = v147;
    v159 = v147;
    if (!v158)
    {
      break;
    }

    v160 = 0;
    v161 = v145 & 0xC000000000000001;
    v162 = v145 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v161)
      {
        v163 = v145;
        v147 = sub_100085648();
      }

      else
      {
        if (v160 >= *(v162 + 16))
        {
          goto LABEL_115;
        }

        v163 = v145;
        v147 = *(v145 + 8 * v160 + 32);
      }

      v164 = v147;
      v145 = v160 + 1;
      if (__OFADD__(v160, 1))
      {
        break;
      }

      [v159 addObject:v147];

      ++v160;
      v165 = v145 == v158;
      v145 = v163;
      if (v165)
      {
        goto LABEL_102;
      }
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    v170 = v147;
    v158 = sub_100085718();
    v147 = v170;
  }

LABEL_102:

  v166 = ObjectType;
  [ObjectType setSubFolderOrderMergeableDataDirty:1];
  [v166 saveSubFolderMergeableDataIfNeeded];

  v5 = v191;
  a3 = v194;
  v83 = v198;
  v139 = v197;
LABEL_103:
  sub_100085348();
  v167 = v187;
  v206 = 0;
  if ([v171 save:&v206])
  {
    v168 = v206;

    sub_10000650C(v205, v204);
    sub_10004F27C(v167, type metadata accessor for ICArchiveModel);
    v84 = v192;
    goto LABEL_28;
  }

  v169 = v206;
  sub_100084688();

  swift_willThrow();
  sub_10000650C(v205, v204);
  v141 = v167;
LABEL_107:
  sub_10004F27C(v141, type metadata accessor for ICArchiveModel);
LABEL_27:
  v84 = v192;
LABEL_28:
  sub_100048E94(v84, "Import Objects from Archive");

  result = (*(v200 + 8))(v83, v201);
  a3[v5] = 0;
  return result;
}

uint64_t sub_100048E94(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_100084F38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084EF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A5420 != -1)
  {
    swift_once();
  }

  v12 = sub_100084F28();
  sub_10000B614(v12, qword_1000A6620);
  v13 = sub_100084F18();
  sub_100084F48();
  v14 = sub_1000853F8();
  if (sub_1000854D8())
  {

    sub_100084F78();

    if ((*(v3 + 88))(v6, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_100084EE8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, v20, v15, v16, 2u);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100049124(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v7 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v52 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v66 = _swiftEmptyArrayStorage;
    v53 = v10;
    sub_10003BE8C(0, v13, 0);
    v14 = v53;
    v65 = v66;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v57 = (v15 - 8);
    v58 = v16;
    v54 = *(v15 + 56);
    v55 = v12;
    v56 = v15;
    while (1)
    {
      v63 = v13;
      v58(v12, v17, v14);
      v18 = sub_100042D18(v12, v59, v60, v61);
      if (v5)
      {
        break;
      }

      v22 = v18;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      v64 = 0;
      (*v57)(v12, v14);
      v26 = v65;
      v66 = v65;
      v28 = v65[2];
      v27 = v65[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_10003BE8C((v27 > 1), v28 + 1, 1);
        v14 = v53;
        v29 = v28 + 1;
        v26 = v66;
      }

      v26[2] = v29;
      v65 = v26;
      v30 = &v26[4 * v28];
      v30[4] = v22;
      v30[5] = v23;
      v30[6] = v24;
      *(v30 + 56) = v25 & 1;
      v12 = v55;
      v17 += v54;
      v5 = v64;
      v13 = v63 - 1;
      if (v63 == 1)
      {
        v32 = v65;
        goto LABEL_11;
      }
    }

    (*v57)(v12, v14);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
    v29 = _swiftEmptyArrayStorage[2];
    v65 = _swiftEmptyArrayStorage;
    if (v29)
    {
LABEL_11:
      v64 = v5;
      v33 = 0;
      v34 = v32 + 7;
      v65 = _swiftEmptyArrayStorage;
      v62 = v29 - 1;
      v63 = v32 + 7;
LABEL_12:
      v35 = &v34[4 * v33];
      v36 = v33;
      while (v36 < v32[2])
      {
        v37 = v29;
        v38 = *(v35 - 3);
        v33 = v36 + 1;
        if (*v35 != 1)
        {
          v39 = *(v35 - 1);
          v61 = *(v35 - 2);

          v40 = v39;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v65 = sub_10000F270(0, v65[2] + 1, 1, v65);
          }

          v43 = v65[2];
          v42 = v65[3];
          v44 = v43 + 1;
          if (v43 >= v42 >> 1)
          {
            v59 = v43 + 1;
            v49 = sub_10000F270((v42 > 1), v43 + 1, 1, v65);
            v44 = v59;
            v29 = v37;
            v65 = v49;
          }

          else
          {
            v29 = v37;
          }

          v45 = v65;
          v65[2] = v44;
          v46 = &v45[3 * v43];
          v47 = v60;
          v48 = v61;
          v46[4] = v38;
          v46[5] = v48;
          v46[6] = v47;
          v34 = v63;
          if (v62 == v36)
          {
LABEL_24:
            v5 = v64;
            goto LABEL_25;
          }

          goto LABEL_12;
        }

        v66 = *(v35 - 3);
        sub_100005740(&qword_1000A5B98, &unk_10008B760);
        swift_willThrowTypedImpl();
        v35 += 32;
        ++v36;
        v29 = v37;
        if (v37 == v33)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_25:

      v50 = sub_100049580(v65);

      if (v50[2])
      {
        sub_100005740(&qword_1000A5C88, &qword_10008B890);
        v51 = sub_100085748();
      }

      else
      {
        v51 = &_swiftEmptyDictionarySingleton;
      }

      v66 = v51;
      sub_10004EC38(v50, 1, &v66);
      if (!v5)
      {

        return v66;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_100049580(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003BE6C(0, v1, 0);
    v3 = (a1 + 48);
    do
    {
      v4 = *v3;
      v11 = *(v3 - 2);
      v12 = *(v3 - 1);

      v5 = v4;
      sub_100005740(&qword_1000A5A38, &unk_10008D320);
      sub_100005740(&qword_1000A6438, &qword_10008CCF8);
      swift_dynamicCast();
      v6 = v14;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_10003BE6C((v7 > 1), v8 + 1, 1);
        v6 = v14;
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[3 * v8];
      v9[4] = v13;
      *(v9 + 5) = v6;
      v3 += 3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000496CC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v103 = a2;
  v104 = a6;
  v10 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v99 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v102 = &v83 - v14;
  v100 = sub_1000848B8();
  v98 = *(v100 - 8);
  v15 = *(v98 + 64);
  v16 = __chkstk_darwin(v100);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v83 - v19;
  v21 = _s3TagVMa();
  v101 = *(v21 - 8);
  v22 = *(v101 + 64);
  __chkstk_darwin(v21);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v6;
  v25 = &v6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
  swift_beginAccess();
  v26 = *(v25 + 1);
  v107[0] = *v25;
  v107[1] = v26;
  v108 = *(v25 + 16);
  v109 = v26;
  sub_100005888(&v109, v106, &qword_1000A6690, &qword_10008D120);
  v27 = a5;
  v28 = a1;
  v29 = v110;
  v30 = sub_10003FAF8(a4, v27, v107);
  v31 = v29;
  sub_10003EAB4(v107);
  if (v29)
  {
    return v31;
  }

  v94 = v25;
  v110 = 0;
  v97 = v24;
  v95 = v21;
  v96 = v20;
  v93 = v18;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    v31 = v104;
    v39 = v103;
    if (!v38)
    {
      v44 = v28;
LABEL_35:
      v31 = *(v44 + 8);
      v82 = *(v44 + 16);

      return v31;
    }

    v40 = v38;
    v41 = v30;
    v42 = v110;
    v43 = sub_100049124(v39, v40, &off_10009E9B0, v31);
    if (v42)
    {

      return v31;
    }

    v47 = sub_10004A65C(v43, ICFolder_ptr, sub_10003A794);

    v44 = v28;
    v35 = sub_10003FCAC(v40, v47);

    v110 = 0;

LABEL_34:

    goto LABEL_35;
  }

  v34 = v33;
  v35 = v30;
  v36 = v110;
  v37 = sub_100049124(v103, v34, &off_10009E978, v104);
  if (v36)
  {

    return v31;
  }

  v44 = v28;
  v105 = v30;
  v45 = sub_10004A65C(v37, ICFolder_ptr, sub_10003A794);

  v46 = sub_10003FCAC(v34, v45);
  v110 = 0;
  v48 = v46;

  v49 = *(v28 + 48);
  if (!v49)
  {
    goto LABEL_34;
  }

  v92 = v34;
  v84 = v35;
  v50 = v49 + 56;
  v51 = 1 << *(v49 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v49 + 56);
  v54 = (v51 + 63) >> 6;
  v85 = "fallbackMinimumVersion";
  v103 = (v98 + 48);
  v87 = (v98 + 32);
  v86 = (v98 + 56);
  v98 += 8;

  v56 = 0;
  v57 = v97;
  v88 = v44;
  v91 = v54;
  v90 = v50;
  v89 = v55;
  while (v53)
  {
LABEL_23:
    sub_10001172C(*(v55 + 48) + *(v101 + 72) * (__clz(__rbit64(v53)) | (v56 << 6)), v57);
    v62 = *v94;
    v63 = (v57 + *(v95 + 20));
    v64 = *v63;
    v65 = v63[1];
    v104 = v94[2];
    v66 = sub_100085068();
    v67 = [objc_opt_self() hashtagWithDisplayText:v66 account:v92 createIfNecessary:1];

    if (!v67)
    {
      goto LABEL_37;
    }

    v68 = v67;
    v69 = v102;
    v70 = v67;
    if (v62)
    {
      v71 = sub_100085068();
      [v67 setDisplayText:v71];

      [v67 unmarkForDeletion];
      v72 = sub_100085068();
      [v67 updateChangeCountWithReason:v72];
    }

    sub_100005888(v97, v69, &qword_1000A5490, &qword_10008CD80);
    v73 = *v103;
    v74 = v100;
    if ((*v103)(v69, 1, v100) == 1)
    {
      v75 = [v67 creationDate];
      v59 = v88;
      if (v75)
      {
        v76 = v75;
        sub_100084888();

        v77 = *v87;
        v78 = v99;
        (*v87)(v99, v93, v74);
        (*v86)(v78, 0, 1, v74);
        v79 = v78;
        v69 = v102;
        v77(v96, v79, v74);
        v70 = v68;
      }

      else
      {
        v80 = v99;
        (*v86)(v99, 1, 1, v74);
        sub_100084898();
        if (v73(v80, 1, v74) != 1)
        {
          sub_1000058F0(v80, &qword_1000A5490, &qword_10008CD80);
        }
      }

      v81 = v73(v69, 1, v74);
      v58 = v96;
      if (v81 != 1)
      {
        sub_1000058F0(v69, &qword_1000A5490, &qword_10008CD80);
      }
    }

    else
    {
      v58 = v96;
      (*v87)(v96, v69, v74);
      v59 = v88;
    }

    v53 &= v53 - 1;
    isa = sub_100084848().super.isa;
    (*v98)(v58, v74);
    [v70 setCreationDate:isa];

    v57 = v97;
    sub_10004F27C(v97, _s3TagVMa);
    v44 = v59;
    v55 = v89;
    v50 = v90;
    v54 = v91;
  }

  while (1)
  {
    v61 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v61 >= v54)
    {

      v35 = v84;
      goto LABEL_34;
    }

    v53 = *(v50 + 8 * v61);
    ++v56;
    if (v53)
    {
      v56 = v61;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_37:
  result = sub_100085708();
  __break(1u);
  return result;
}

NSObject *sub_10004A03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, void, void, void), void *a6)
{
  v7 = v6;
  v53 = a5;
  v52 = a4;
  v67 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v11 = *(v67 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v67);
  v14 = &v48 - v13;
  v15 = *(a2 + 16);
  isa = _swiftEmptyArrayStorage;
  v55 = a6;
  v50 = a2;
  if (v15)
  {
    v51 = v7;
    v49 = a1;
    v60 = _swiftEmptyArrayStorage;
    sub_10003BDAC(0, v15, 0);
    isa = v60;
    v18 = *(v11 + 16);
    v17 = v11 + 16;
    v58 = v18;
    v19 = a2 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v57 = *(v17 + 56);
    v56 = (v17 - 8);
    do
    {
      v20 = v67;
      v21 = v17;
      v58(v14, v19, v67);
      v22 = sub_100084AA8();
      (*v56)(v14, v20);
      v60 = isa;
      v24 = *(isa + 2);
      v23 = *(isa + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        sub_10003BDAC((v23 > 1), v24 + 1, 1);
        isa = v60;
      }

      *(isa + 2) = v25;
      *(isa + v24 + 4) = v22;
      v19 += v57;
      v15 = (v15 - 1);
      v17 = v21;
    }

    while (v15);
    a1 = v49;
    v7 = v51;
  }

  else
  {
    v25 = _swiftEmptyArrayStorage[2];
    if (!v25)
    {
      goto LABEL_24;
    }
  }

  v26 = 0;
  v27 = 32;
  while (1)
  {
    v28 = *(isa + v27);
    v29 = __OFADD__(v26, v28);
    v26 += v28;
    if (v29)
    {
      break;
    }

    v27 += 8;
    if (!--v25)
    {
      while (1)
      {

        if (qword_1000A5418 != -1)
        {
          swift_once();
        }

        v30 = sub_100084FB8();
        sub_10000B614(v30, qword_1000A6608);
        v31 = sub_100084FA8();
        v32 = sub_100085368();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 134217984;
          *(v33 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v31, v32, "Importing note… {attachmentCount: %ld}", v33, 0xCu);
        }

        result = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        isa = sub_100085338(result, 1).super.isa;
        v35 = v7 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
        swift_beginAccess();
        v36 = *(v35 + 1);
        v63[0] = *v35;
        v63[1] = v36;
        v64 = *(v35 + 16);
        v65 = v36;
        sub_100005888(&v65, v59, &qword_1000A6690, &qword_10008D120);
        v37 = v54;
        v38 = sub_10007AC84(v52, v53, v63);
        if (v37)
        {
          sub_10003EAB4(v63);
          v38 = [(objc_class *)isa completedUnitCount];
          v39 = &v38->isa + 1;
          if (!__OFADD__(v38, 1))
          {
            goto LABEL_26;
          }

          __break(1u);
        }

        v31 = v38;
        sub_10003EAB4(v63);
        v40 = v7;
        v7 = v31;
        v41 = sub_100049124(v50, v7, &off_10009E9E8, isa);
        if (!v37)
        {
          v51 = v40;
          v43 = v41;

          v44 = sub_10004A65C(v43, ICAttachment_ptr, sub_10003A7A8);

          v45 = *(v35 + 1);
          v61[0] = *v35;
          v61[1] = v45;
          v62 = *(v35 + 16);
          v66 = *(v35 + 1);
          sub_100005888(&v66, v59, &qword_1000A6690, &qword_10008D120);
          v46 = sub_10007BF04(v7, v44, v61);

          sub_10003EAB4(v61);
          sub_10007C34C(v7);

          v15 = &ICArchiveNotesPreviewer;
          sub_10004CB6C([v55 completedUnitCount]);
          goto LABEL_28;
        }

        v42 = [(objc_class *)isa completedUnitCount];
        v39 = v42 + 1;
        if (!__OFADD__(v42, 1))
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_24:
        v26 = 0;
      }

      __break(1u);
      __break(1u);
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_28:
  v31 = *(a1 + 8);
  v47 = *(a1 + 16);

  result = [isa v15[26].base_prots];
  v39 = &result->isa + 1;
  if (!__OFADD__(result, 1))
  {
LABEL_26:
    [(objc_class *)isa setCompletedUnitCount:v39];

    return v31;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10004A65C(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v37 = &_swiftEmptyDictionarySingleton;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);
        v18 = *a2;
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v35 = result;
      if (*(v37 + 3) <= *(v37 + 2))
      {
        v38 = *(v37 + 2);

        v22 = v17;
        a3(v38 + 1, 1);
        v21 = &_swiftEmptyDictionarySingleton;
      }

      else
      {

        v20 = v17;
        v21 = v37;
      }

      v37 = v21;
      v23 = *(v21 + 5);
      sub_100085A08();
      sub_100085118();
      result = sub_100085A38();
      v24 = v37 + 64;
      v25 = -1 << v37[32];
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*&v37[8 * (v26 >> 6) + 64]) == 0)
      {
        break;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*&v37[8 * (v26 >> 6) + 64])) | v26 & 0x7FFFFFFFFFFFFFC0;
      v29 = v35;
LABEL_24:
      *&v24[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
      v34 = (*(v37 + 6) + 16 * v28);
      *v34 = v15;
      v34[1] = v16;
      *(*(v37 + 7) + 8 * v28) = v29;
      ++*(v37 + 2);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v30 = 0;
    v31 = (63 - v25) >> 6;
    v29 = v35;
    while (++v27 != v31 || (v30 & 1) == 0)
    {
      v32 = v27 == v31;
      if (v27 == v31)
      {
        v27 = 0;
      }

      v30 |= v32;
      v33 = *&v24[8 * v27];
      if (v33 != -1)
      {
        v28 = __clz(__rbit64(~v33)) + (v27 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v19 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v19 >= v9)
      {

        return v37;
      }

      v8 = *(v5 + 8 * v19);
      ++v11;
      if (v8)
      {
        v11 = v19;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10004A8CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v110 = a2;
  v4 = sub_100084D78();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v98 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for NoteMetadata(0);
  v7 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100084918();
  v113 = *(v109 - 8);
  v10 = *(v113 + 64);
  __chkstk_darwin(v109);
  v108 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1000847C8();
  v117 = *(v119 - 8);
  v12 = *(v117 + 64);
  v13 = __chkstk_darwin(v119);
  v103 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v106 = &v89 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v89 - v18;
  v20 = __chkstk_darwin(v17);
  v114 = &v89 - v21;
  __chkstk_darwin(v20);
  v23 = &v89 - v22;
  v24 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v107 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v118 = &v89 - v28;
  if (qword_1000A5418 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v29 = sub_100084FB8();
    v112 = sub_10000B614(v29, qword_1000A6608);
    v30 = sub_100084FA8();
    v31 = sub_100085368();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "importing a markdown note", v32, 2u);
    }

    v33 = objc_opt_self();
    v34 = &ICArchiveNotesPreviewer;
    v35 = [v33 defaultManager];
    v36 = sub_100085358();
    if (v3)
    {

      return;
    }

    v37 = v36;
    v96 = v19;
    v95 = v9;

    v120 = _swiftEmptyArrayStorage;
    v38 = v117;
    (*(v117 + 56))(v118, 1, 1, v119);
    v39 = *(v37 + 16);
    if (!v39)
    {
      break;
    }

    v19 = 0;
    v116 = (v38 + 16);
    v9 = (v38 + 8);
    while (v19 < *(v37 + 16))
    {
      v40 = v34;
      v41 = v33;
      v42 = v119;
      (*(v117 + 16))(v23, v37 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v19, v119);
      sub_10004BD88(v23, &v120, v118);
      ++v19;
      (*v9)(v23, v42);
      v33 = v41;
      v34 = v40;
      v3 = 0;
      if (v39 == v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

LABEL_10:

  v43 = v120;
  v104 = v120[2];
  if (v104)
  {
    v91 = v33;
    v100 = v115 + OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration;
    swift_beginAccess();
    v19 = 0;
    v105 = v117 + 16;
    v102 = (v113 + 8);
    v101 = (v117 + 48);
    v93 = (v117 + 32);
    v9 = v114;
    v92 = v43;
    v112 = (v117 + 8);
    while (1)
    {
      if (v19 >= v43[2])
      {
        goto LABEL_49;
      }

      v44 = v43;
      (*(v117 + 16))(v9, v43 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v19, v119);
      v45 = sub_1000847D8();
      v47 = v46;
      v111 = v19;
      v48 = objc_opt_self();
      v115 = v47;
      v49 = v108;
      sub_100084908();
      isa = sub_1000848E8().super.isa;
      v51 = v49;
      v52 = v115;
      (*v102)(v51, v109);
      v53 = [v48 newEmptyNoteWithUUID:isa folder:v110];

      sub_100006464(v45, v52);
      sub_10004EA8C(v45, v52);
      v113 = v45;
      if (!v54)
      {
        v123 = v45;
        v124 = v52;
        sub_100006464(v45, v52);
        sub_100005740(&qword_1000A6720, &qword_10008D358);
        if (swift_dynamicCast())
        {
          sub_10001C024(v121, &v125);
          sub_10000626C(&v125, *(&v126 + 1));
          if (sub_100085768())
          {
            sub_10000650C(v113, v115);
            sub_10000626C(&v125, *(&v126 + 1));
            sub_100085758();
            sub_100006304(&v125);
            goto LABEL_21;
          }

          sub_100006304(&v125);
          v52 = v115;
          v45 = v113;
        }

        else
        {
          v122 = 0;
          memset(v121, 0, sizeof(v121));
          sub_1000058F0(v121, &qword_1000A6728, &qword_10008D360);
        }

        sub_10004E58C(v45, v52);
      }

      sub_10000650C(v45, v52);
LABEL_21:
      v55 = objc_allocWithZone(ICMarkdownRepresentation);
      v56 = sub_100085068();

      *&v125 = 0;
      v57 = [v55 initWithPlainMarkdown:v56 error:&v125];

      v43 = v44;
      if (!v57)
      {
        v88 = v125;
        sub_100084688();

        swift_willThrow();
        sub_10000650C(v113, v115);
        (*v112)(v114, v119);
        goto LABEL_47;
      }

      v58 = v125;
      v59 = [v57 createRenderableAttributedString];
      v60 = [v53 textStorage];
      v116 = v59;
      if (v60)
      {
        v61 = v60;
        v62 = [objc_allocWithZone(ICTextController) init];
        [v61 setStyler:v62];
        [v61 setConvertAttributes:1];
        [v61 replaceCharactersInRange:0 withAttributedString:{0, v116}];
        [v61 setConvertAttributes:0];
        [v61 setStyler:0];
      }

      v63 = v107;
      sub_100005888(v118, v107, &qword_1000A56E8, &qword_10008D350);
      if ((*v101)(v63, 1, v119) == 1)
      {
        sub_1000058F0(v63, &qword_1000A56E8, &qword_10008D350);
        v64 = v112;
      }

      else
      {
        v65 = v96;
        (*v93)(v96, v63, v119);
        sub_10004F2FC(v53, v65);
        v64 = v112;
        (*v112)(v65, v119);
      }

      if (*(v100 + 33) != 1)
      {
        goto LABEL_39;
      }

      v99 = v53;
      v66 = v114;
      if (sub_1000846E8() == 0x646D2E65746F6ELL && v67 == 0xE700000000000000)
      {

LABEL_32:
        v94 = v57;
        v69 = v103;
        sub_100084748();
        v70 = v106;
        sub_100084718();
        v71 = v112;
        v72 = *v112;
        v73 = v119;
        (*v112)(v69, v119);
        LOBYTE(v121[0]) = 0;
        v74 = [v91 *&v34[27].flags];
        sub_1000847A8();
        v75 = sub_100085068();

        v76 = [v74 fileExistsAtPath:v75 isDirectory:v121];

        if (v76)
        {
          v77 = v72;
          v78 = sub_1000847D8();
          v80 = v79;
          v127 = 0;
          v125 = 0u;
          v126 = 0u;
          sub_100006464(v78, v79);
          sub_100084D68();
          sub_10004F178(&qword_1000A5718, type metadata accessor for NoteMetadata);
          sub_100084E18();
          v53 = v99;
          v57 = v94;
          v90 = v80;
          v81 = [v99 managedObjectContext];
          v43 = v92;
          if (v81)
          {
            v82 = v81;
            v83 = __chkstk_darwin(v81);
            *(&v89 - 4) = v95;
            *(&v89 - 3) = v53;
            *(&v89 - 2) = v83;
            sub_100085488();
            v77(v106, v119);
            sub_10000650C(v78, v90);
          }

          else
          {
            v77(v106, v119);
            sub_10000650C(v78, v90);
          }

          sub_10004F27C(v95, type metadata accessor for NoteMetadata);
          v64 = v112;
LABEL_39:
          v84 = v113;
        }

        else
        {
          v72(v70, v73);
          v43 = v92;
          v64 = v71;
          v84 = v113;
          v53 = v99;
          v57 = v94;
        }

        v66 = v114;
        goto LABEL_41;
      }

      v68 = sub_100085948();

      if (v68)
      {
        goto LABEL_32;
      }

      v64 = v112;
      v84 = v113;
      v53 = v99;
LABEL_41:
      v23 = v111 + 1;
      [v53 save];

      v19 = v23;
      sub_10000650C(v84, v115);
      (*v64)(v66, v119);
      v9 = v66;
      if (v104 == v23)
      {
        goto LABEL_47;
      }
    }
  }

  v85 = sub_100084FA8();
  v86 = sub_100085378();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&_mh_execute_header, v85, v86, "could not find markdown file URLs", v87, 2u);
  }

LABEL_47:
  sub_1000058F0(v118, &qword_1000A56E8, &qword_10008D350);
}

void sub_10004BAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23[0] = a3;
  v23[7] = a2;
  v7 = sub_100084668();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A5418 != -1)
  {
    swift_once();
  }

  v12 = sub_100084FB8();
  sub_10000B614(v12, qword_1000A6608);
  v13 = sub_100084FA8();
  v14 = sub_100085368();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "found a folder", v15, 2u);
  }

  sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008B5D0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v17 = NSURLIsDirectoryKey;
  sub_100079F54(inited);
  swift_setDeallocating();
  sub_10004F27C(inited + 32, type metadata accessor for URLResourceKey);
  sub_1000846C8();

  if (!v4)
  {
    v18 = sub_100084638();
    (*(v8 + 8))(v11, v7);
    if (v18 != 2 && (v18 & 1) != 0)
    {
      v19 = *v23[0];
      v20 = *a4;
      v21 = *(a4 + 8);
      v22 = *v23[0];
      sub_100046D04(a1, v19, v20, v21);
    }
  }
}

uint64_t sub_10004BD88(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = sub_100084668();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000847C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100084698() == 25709 && v15 == 0xE200000000000000)
  {

LABEL_5:
    (*(v11 + 16))(v14, a1, v10);
    v17 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_10000F3B8(0, v17[2] + 1, 1, v17);
      *a2 = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_10000F3B8(v19 > 1, v20 + 1, 1, v17);
      *a2 = v17;
    }

    v17[2] = v20 + 1;
    return (*(v11 + 32))(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v14, v10);
  }

  v28 = a3;
  v16 = sub_100085948();

  if (v16)
  {
    goto LABEL_5;
  }

  sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008B5D0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v23 = NSURLIsDirectoryKey;
  sub_100079F54(inited);
  swift_setDeallocating();
  sub_10004F27C(inited + 32, type metadata accessor for URLResourceKey);
  v24 = v30;
  sub_1000846C8();

  if (!v24)
  {
    v25 = sub_100084638();
    result = (*(v29 + 8))(v9, v6);
    if (v25 != 2 && (v25 & 1) != 0)
    {
      v26 = v28;
      sub_1000058F0(v28, &qword_1000A56E8, &qword_10008D350);
      (*(v11 + 16))(v26, a1, v10);
      return (*(v11 + 56))(v26, 0, 1, v10);
    }
  }

  return result;
}

uint64_t sub_10004C120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v86 = a3;
  v87 = a8;
  v89 = a7;
  v93 = a5;
  v94 = a6;
  v85 = a2;
  v9 = sub_100005740(&qword_1000A6730, &qword_10008D368);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v84 - v11;
  v13 = sub_100084668();
  v14 = *(v13 - 8);
  v91 = v13;
  v92 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v90 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000847C8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v88 = &v84 - v24;
  __chkstk_darwin(v23);
  v26 = &v84 - v25;
  v27 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v84 - v32;
  sub_100005888(a1, v95, &qword_1000A5AD0, &unk_10008B5E0);
  if (v96)
  {
    v34 = swift_dynamicCast();
    v35 = *(v18 + 56);
    v35(v33, v34 ^ 1u, 1, v17);
    if ((*(v18 + 48))(v33, 1, v17) != 1)
    {
      v36 = sub_100084798(1);
      v38 = v37;
      result = (*(v18 + 8))(v33, v17);
      v97 = v36;
      if (!v38)
      {
        return result;
      }

LABEL_12:
      sub_100084748();
      v35(v31, 0, 1, v17);
      sub_1000846D8();

      sub_1000058F0(v31, &qword_1000A56E8, &qword_10008D350);
      v40 = sub_100084798(1);
      v42 = sub_10002A3E0(v40, v41, v94);

      if (v42)
      {
        sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10008B5D0;
        *(inited + 32) = NSURLTotalFileSizeKey;
        v44 = NSURLTotalFileSizeKey;
        sub_100079F54(inited);
        swift_setDeallocating();
        sub_10004F27C(inited + 32, type metadata accessor for URLResourceKey);
        sub_1000846C8();

        v46 = v91;
        v45 = v92;
        (*(v92 + 56))(v12, 0, 1, v91);
        v47 = v90;
        (*(v45 + 32))(v90, v12, v46);
        v48 = sub_100084648();
        if (v49)
        {
          (*(v45 + 8))(v47, v46);
          if (qword_1000A5418 != -1)
          {
            swift_once();
          }

          v50 = sub_100084FB8();
          sub_10000B614(v50, qword_1000A6608);
          (*(v18 + 16))(v22, v26, v17);
          v51 = sub_100084FA8();
          v52 = sub_100085378();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v94 = v26;
            v55 = v54;
            v95[0] = v54;
            *v53 = 136315138;
            v56 = sub_100084798(1);
            v58 = v57;
            v59 = *(v18 + 8);
            v59(v22, v17);
            v60 = sub_100038A4C(v56, v58, v95);

            *(v53 + 4) = v60;
            _os_log_impl(&_mh_execute_header, v51, v52, "Unable to import attachment at path %s because unable to get file size.", v53, 0xCu);
            sub_100006304(v55);

            return (v59)(v94, v17);
          }

          v61 = *(v18 + 8);
          v61(v22, v17);
          return (v61)(v26, v17);
        }

        v62 = v89;
        if ([v89 attachmentExceedsMaxSizeAllowed:v48])
        {
          if (qword_1000A5418 != -1)
          {
            swift_once();
          }

          v64 = sub_100084FB8();
          sub_10000B614(v64, qword_1000A6608);
          v65 = v88;
          (*(v18 + 16))(v88, v26, v17);
          v66 = sub_100084FA8();
          v67 = sub_100085378();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v94 = v26;
            v70 = v69;
            v95[0] = v69;
            *v68 = 136315138;
            v71 = sub_100084798(1);
            v72 = v65;
            v74 = v73;
            v75 = *(v18 + 8);
            v75(v72, v17);
            v76 = sub_100038A4C(v71, v74, v95);

            *(v68 + 4) = v76;
            _os_log_impl(&_mh_execute_header, v66, v67, "Unable to import attachment at path %s because it exceeds maximum allowed size in note.", v68, 0xCu);
            sub_100006304(v70);

            (*(v92 + 8))(v90, v46);
            return (v75)(v94, v17);
          }

          v61 = *(v18 + 8);
          v61(v65, v17);
          (*(v92 + 8))(v47, v46);
          return (v61)(v26, v17);
        }

        sub_1000846F8(v63);
        v78 = v77;
        v79 = [v62 addAttachmentWithFileURL:v77];

        if (v79)
        {
          v80 = [objc_allocWithZone(ICTextAttachment) initWithAttachment:v79];
          v81 = [objc_opt_self() attributedStringWithAttachment:v80];
          v82 = [v81 ic_range];
          [v87 ic_replaceCharactersInRange:v85 withAttributedSubstring:v86 fromRange:{v81, v82, v83}];

          v47 = v90;
        }

        [v62 save];
        (*(v45 + 8))(v47, v46);
      }

      return (*(v18 + 8))(v26, v17);
    }
  }

  else
  {
    sub_1000058F0(v95, &qword_1000A5AD0, &unk_10008B5E0);
    v35 = *(v18 + 56);
    v35(v33, 1, 1, v17);
  }

  sub_1000058F0(v33, &qword_1000A56E8, &qword_10008D350);
  sub_100005888(a1, v95, &qword_1000A5AD0, &unk_10008B5E0);
  if (!v96)
  {
    return sub_1000058F0(v95, &qword_1000A5AD0, &unk_10008B5E0);
  }

  result = swift_dynamicCast();
  if (!result)
  {
    v97 = 0;
    v98 = 0;
    return result;
  }

  if (v98)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10004CB6C(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning;
  if ((v1[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] & 1) != 0 || (result & 0x1F) == 0)
  {
    if (qword_1000A5418 == -1)
    {
      goto LABEL_4;
    }

    while (1)
    {
      swift_once();
LABEL_4:
      v4 = sub_100084FB8();
      sub_10000B614(v4, qword_1000A6608);
      v5 = sub_100084FA8();
      v6 = sub_100085368();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Saving batch of imported notes and resetting inserted objects…", v7, 2u);
      }

      v8 = *&v2[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context];
      v9 = [v8 insertedObjects];
      sub_100008250(0, &qword_1000A64B8, NSManagedObject_ptr);
      sub_10004F214();
      v10 = sub_100085298();

      v28[0] = 0;
      if (![v8 save:v28])
      {
        v15 = v28[0];

        sub_100084688();

        return swift_willThrow();
      }

      v26 = v3;
      v27 = v2;
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = v28[0];

        sub_100085578();
        sub_1000852C8();
        v10 = v28[1];
        v12 = v28[2];
        v13 = v28[3];
        v2 = v28[4];
        v14 = v28[5];
      }

      else
      {
        v16 = -1 << *(v10 + 32);
        v12 = (v10 + 56);
        v13 = ~v16;
        v17 = -v16;
        v18 = v17 < 64 ? ~(-1 << v17) : -1;
        v14 = (v18 & *(v10 + 56));
        v19 = v28[0];

        v2 = 0;
      }

      v25 = v13;
      v3 = (v13 + 64) >> 6;
      if (v10 < 0)
      {
        break;
      }

LABEL_15:
      v20 = v2;
      v21 = v14;
      v22 = v2;
      if (v14)
      {
LABEL_19:
        v23 = (v21 - 1) & v21;
        v24 = *(*(v10 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
        if (v24)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      while (1)
      {
        v22 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v3)
        {
          goto LABEL_25;
        }

        v21 = v12[v22];
        ++v20;
        if (v21)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    while (sub_1000855D8())
    {
      swift_dynamicCast();
      v24 = v28[0];
      v22 = v2;
      v23 = v14;
      if (!v28[0])
      {
        break;
      }

LABEL_23:
      [v8 refreshObject:v24 mergeChanges:{0, v25}];

      v2 = v22;
      v14 = v23;
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_25:
    sub_100010FF4();

    v27[v26] = 0;
  }

  return result;
}

void sub_10004CF00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 1;
  }
}

void *sub_10004CF5C(uint64_t a1, uint64_t a2)
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

  sub_100005740(&qword_1000A64C0, &qword_10008D370);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

Swift::Int sub_10004CFD0(void **a1)
{
  v2 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10004E8FC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10004D084(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10004D084(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000858F8(v2);
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
        sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
        v6 = sub_100085248();
        v6[2] = v5;
      }

      v7 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10004D464(v8, v9, a1, v4);
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
    return sub_10004D1C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10004D1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v41 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v45 = &v31 - v13;
  result = __chkstk_darwin(v12);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v15 + 16);
    v43 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v20 = v17 + v18 * (a3 - 1);
    v38 = -v18;
    v39 = (v15 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v22, v8);
      v25 = v45;
      v24(v45, v20, v8);
      sub_100011824();
      v26 = sub_100085048();
      v27 = *v19;
      (*v19)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v20, v29, v8);
      v20 += v38;
      v22 += v38;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004D464(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v126 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v134 = &v119 - v15;
  v16 = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  result = __chkstk_darwin(v16);
  v140 = &v119 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = &_swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_134;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_10004E488(a4);
    }

    v142 = result;
    v114 = *(result + 16);
    if (v114 >= 2)
    {
      while (*a3)
      {
        a4 = v114 - 1;
        v115 = *(result + 16 * v114);
        v116 = result;
        v117 = *(result + 16 * (v114 - 1) + 40);
        sub_10004DE60(*a3 + v10[9] * v115, *a3 + v10[9] * *(result + 16 * (v114 - 1) + 32), *a3 + v10[9] * v117, v5);
        if (v6)
        {
        }

        if (v117 < v115)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_10004E488(v116);
        }

        if (v114 - 2 >= *(v116 + 2))
        {
          goto LABEL_122;
        }

        v118 = &v116[16 * v114];
        *v118 = v115;
        *(v118 + 1) = v117;
        v142 = v116;
        sub_10004E3FC(a4);
        result = v142;
        v114 = *(v142 + 16);
        if (v114 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v21 = 0;
  v137 = (v10 + 1);
  v138 = v10 + 2;
  v136 = (v10 + 4);
  v22 = &_swiftEmptyArrayStorage;
  v124 = a3;
  v121 = a4;
  v141 = v9;
  v120 = v10;
  while (1)
  {
    v23 = v21;
    v127 = v22;
    if (v21 + 1 >= v20)
    {
      v37 = v21 + 1;
    }

    else
    {
      v132 = v20;
      v24 = v9;
      v25 = *a3;
      v26 = v10;
      v27 = v10[9];
      v5 = v25 + v27 * (v21 + 1);
      v128 = v25;
      v28 = v26[2];
      v28(v140, v5, v24);
      v29 = v25 + v27 * v23;
      v30 = v26;
      v123 = v23;
      v31 = v139;
      v131 = v28;
      v28(v139, v29, v24);
      v32 = sub_100011824();
      v33 = v140;
      v130 = v32;
      LODWORD(v133) = sub_100085048();
      v34 = v30[1];
      v34(v31, v24);
      v129 = v34;
      result = (v34)(v33, v24);
      v35 = v123 + 2;
      v135 = v27;
      v36 = v128 + v27 * (v123 + 2);
      while (1)
      {
        v37 = v132;
        if (v132 == v35)
        {
          break;
        }

        v39 = v140;
        v38 = v141;
        v40 = v131;
        (v131)(v140, v36, v141);
        v41 = v6;
        v42 = v139;
        v40(v139, v5, v38);
        v43 = sub_100085048() & 1;
        v44 = v42;
        v6 = v41;
        v45 = v129;
        v129(v44, v38);
        result = v45(v39, v38);
        ++v35;
        v36 += v135;
        v5 += v135;
        if ((v133 & 1) != v43)
        {
          v37 = v35 - 1;
          break;
        }
      }

      v23 = v123;
      a3 = v124;
      v10 = v120;
      v22 = v127;
      a4 = v121;
      v9 = v141;
      if (v133)
      {
        if (v37 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v37)
        {
          v46 = v135 * (v37 - 1);
          v5 = v37 * v135;
          v132 = v37;
          v47 = v37;
          v48 = v123;
          v49 = v123 * v135;
          do
          {
            if (v48 != --v47)
            {
              v51 = *a3;
              if (!v51)
              {
                goto LABEL_131;
              }

              v133 = *v136;
              (v133)(v126, v51 + v49, v141, v22);
              if (v49 < v46 || v51 + v49 >= v51 + v5)
              {
                v50 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v50 = v141;
                if (v49 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(v51 + v46, v126, v50);
              a3 = v124;
              v22 = v127;
            }

            ++v48;
            v46 -= v135;
            v5 -= v135;
            v49 += v135;
          }

          while (v48 < v47);
          v10 = v120;
          a4 = v121;
          v9 = v141;
          v23 = v123;
          v37 = v132;
        }
      }
    }

    v52 = a3[1];
    if (v37 < v52)
    {
      if (__OFSUB__(v37, v23))
      {
        goto LABEL_124;
      }

      if (v37 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if ((v23 + a4) >= v52)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v23 + a4;
        }

        if (v5 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v37 != v5)
        {
          break;
        }
      }
    }

    v5 = v37;
    if (v37 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v127;
    }

    else
    {
      result = sub_10000EC24(0, *(v127 + 2) + 1, 1, v127);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v53 = *(v22 + 3);
    v54 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_10000EC24((v53 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v54;
    v55 = &v22[16 * a4];
    *(v55 + 4) = v23;
    *(v55 + 5) = v5;
    v56 = *v122;
    if (!*v122)
    {
      goto LABEL_133;
    }

    v128 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v22 + 4);
          v58 = *(v22 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v22[16 * v5 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v5 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v22[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v22[16 * v5];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v54)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v94 = v22;
        v95 = *&v22[16 * a4 + 32];
        v96 = *&v22[16 * v5 + 40];
        sub_10004DE60(*a3 + v10[9] * v95, *a3 + v10[9] * *&v22[16 * v5 + 32], *a3 + v10[9] * v96, v56);
        if (v6)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_10004E488(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_109;
        }

        v97 = &v94[16 * a4];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v142 = v94;
        result = sub_10004E3FC(v5);
        v22 = v142;
        v54 = *(v142 + 16);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v22[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v22[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v22[16 * v5 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v5 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v128;
    a4 = v121;
    v9 = v141;
    if (v128 >= v20)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v98 = *a3;
  v99 = v10[9];
  v135 = v10[2];
  v100 = v98 + v99 * (v37 - 1);
  v101 = v23;
  v102 = -v99;
  v123 = v101;
  v103 = v101 - v37;
  v133 = v98;
  v125 = v99;
  a4 = v98 + v37 * v99;
  v128 = v5;
LABEL_85:
  v131 = v100;
  v132 = v37;
  v129 = a4;
  v130 = v103;
  v104 = v100;
  while (1)
  {
    v105 = v140;
    v106 = v135;
    (v135)(v140, a4, v9, v22);
    v107 = v139;
    v106(v139, v104, v141);
    sub_100011824();
    v108 = sub_100085048();
    v109 = *v137;
    v110 = v107;
    v9 = v141;
    (*v137)(v110, v141);
    result = v109(v105, v9);
    if ((v108 & 1) == 0)
    {
LABEL_84:
      v37 = v132 + 1;
      v100 = &v131[v125];
      v103 = v130 - 1;
      a4 = v129 + v125;
      v5 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v6 = v119;
      v23 = v123;
      a3 = v124;
      v10 = v120;
      if (v128 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v111 = *v136;
    v112 = v134;
    (*v136)(v134, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v111(v104, v112, v9);
    v104 += v102;
    a4 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_10004DE60(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v57);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v54 = &v45 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v56 = a3;
  v17 = (a2 - a1) / v15;
  v60 = a1;
  v59 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v19;
    if (v19 >= 1)
    {
      v30 = -v15;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v19;
      v32 = v56;
      v47 = a1;
      v48 = a4;
      v51 = v30;
      do
      {
        v45 = v29;
        v33 = a2 + v30;
        v34 = v29;
        v52 = a2;
        v53 = a2 + v30;
        while (1)
        {
          if (a2 <= a1)
          {
            v60 = a2;
            v29 = v45;
            goto LABEL_59;
          }

          v36 = v32;
          v46 = v34;
          v56 = v32 + v30;
          v37 = v31 + v30;
          v38 = *v50;
          v39 = v54;
          v40 = v31 + v30;
          v41 = v31;
          v42 = v57;
          (*v50)(v54, v40, v57);
          v43 = v55;
          (v38)(v55, v33, v42);
          sub_100011824();
          LOBYTE(v38) = sub_100085048();
          v44 = *v49;
          (*v49)(v43, v42);
          v44(v39, v42);
          if (v38)
          {
            break;
          }

          v34 = v37;
          v32 = v56;
          if (v36 < v41 || v56 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v53;
            a1 = v47;
          }

          else
          {
            v33 = v53;
            a1 = v47;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v37;
          v35 = v37 > v48;
          v30 = v51;
          a2 = v52;
          if (!v35)
          {
            v29 = v34;
            goto LABEL_58;
          }
        }

        v32 = v56;
        if (v36 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v47;
          v31 = v41;
        }

        else
        {
          a2 = v53;
          a1 = v47;
          v31 = v41;
          if (v36 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v46;
        v30 = v51;
      }

      while (v31 > v48);
    }

LABEL_58:
    v60 = a2;
LABEL_59:
    v58 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v18;
    v58 = a4 + v18;
    if (v18 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v15;
      v50 = (v8 + 8);
      do
      {
        v21 = v54;
        v22 = v57;
        v23 = v51;
        v51(v54, a2, v57);
        v24 = v55;
        v23(v55, a4, v22);
        sub_100011824();
        v25 = sub_100085048();
        v26 = *v50;
        (*v50)(v24, v22);
        v26(v21, v22);
        if (v25)
        {
          v27 = v49;
          if (a1 < a2 || a1 >= v49 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v27;
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

  sub_10004E49C(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_10004E3FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10004E488(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10004E49C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10004E58C(uint64_t a1, unint64_t a2)
{
  sub_100006464(a1, a2);
  v4 = sub_10004E910(a1, a2)[2];
  v5 = sub_100085108();

  return v5;
}

uint64_t sub_10004E5F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100085108();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_10004E634(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, Class a6, uint64_t a7, uint64_t a8)
{
  v15 = objc_allocWithZone(a6);

  return sub_10004E6BC(a1, a2, a3, a4, a5, v15, a7, a8);
}

id sub_10004E6BC(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v15 = a4;
  ObjectType = swift_getObjectType();
  a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting] = 0;
  v17 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  *&a6[v17] = sub_10003D4E0(_swiftEmptyArrayStorage);
  *&a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_saveBatchSize] = 32;
  a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v18 = &a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v18 = 0u;
  v18[1] = 0u;
  *&a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context] = a1;
  if (v15 == 2 || (a4 & 1) == 0)
  {
    v27 = &a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
    v28 = *(a2 + 16);
    *v27 = *a2;
    *(v27 + 1) = v28;
    *(v27 + 16) = *(a2 + 32);
    v29 = a1;
    sub_10003EA58(a2, v34);
  }

  else
  {
    v19 = a1;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v21 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v22 = &a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
    *v22 = IsAlexandriaDemoModeEnabled;
    v22[1] = v21;
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 1) = 0;
    v22[32] = 1;
    v22[33] = a5;
    if (qword_1000A5418 != -1)
    {
      swift_once();
    }

    v23 = sub_100084FB8();
    sub_10000B614(v23, qword_1000A6608);
    v24 = sub_100084FA8();
    v25 = sub_100085368();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "archiver init", v26, 2u);
    }
  }

  v30 = &a6[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  *v30 = a3;
  v30[1] = a8;
  v33.receiver = a6;
  v33.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v33, "init");
  sub_100044760();
  sub_10003EAB4(a2);

  return v31;
}

void *sub_10004E910(uint64_t a1, unint64_t a2)
{
  v4 = sub_100084818();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_10000650C(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_10004CF5C(v11, 0);
      v15 = sub_1000847E8();
      sub_10000650C(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10004EA8C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_100085108();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_100085108();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_100084598();
  if (a1)
  {
    a1 = sub_1000845B8();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_100084598() || !__OFSUB__(v5, sub_1000845B8()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1000845A8();
  return sub_100085108();
}

void sub_10004EC38(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(i) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = v9;
  v12 = sub_100039138(v8, v7);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v18) = v13;
  if (v10[3] < v17)
  {
    sub_10003A780(v17, i & 1);
    v19 = *a3;
    v12 = sub_100039138(v8, v7);
    if ((v18 & 1) == (v20 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = sub_100085978();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v21 = *a3;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21[(v12 >> 6) + 8] |= 1 << v12;
    v27 = (v21[6] + 16 * v12);
    *v27 = v8;
    v27[1] = v7;
    *(v21[7] + 8 * v12) = v11;
    v28 = v21[2];
    v16 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v21[2] = v29;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v26 = v12;
  sub_10002C49C();
  v12 = v26;
  v21 = *a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = v12;
  v23 = *(v21[7] + 8 * v12);

  v24 = v21[7];
  v25 = *(v24 + 8 * v22);
  *(v24 + 8 * v22) = v23;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 72); ; i += 3)
    {
      v11 = *(i - 2);
      v6 = *(i - 1);
      v34 = *i;
      v35 = *a3;

      v7 = v34;
      v36 = sub_100039138(v11, v6);
      v38 = v35[2];
      v39 = (v37 & 1) == 0;
      v16 = __OFADD__(v38, v39);
      v40 = v38 + v39;
      if (v16)
      {
        break;
      }

      v8 = v37;
      if (v35[3] < v40)
      {
        sub_10003A780(v40, 1);
        v41 = *a3;
        v36 = sub_100039138(v11, v6);
        if ((v8 & 1) != (v42 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v30 = v36;
        v31 = *(v3[7] + 8 * v36);

        v32 = v3[7];
        v33 = *(v32 + 8 * v30);
        *(v32 + 8 * v30) = v31;
      }

      else
      {
        v3[(v36 >> 6) + 8] |= 1 << v36;
        v43 = (v3[6] + 16 * v36);
        *v43 = v11;
        v43[1] = v6;
        *(v3[7] + 8 * v36) = v7;
        v44 = v3[2];
        v16 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v3[2] = v45;
      }

      if (!--v18)
      {
        return;
      }
    }

    goto LABEL_23;
  }
}

unint64_t sub_10004EED8(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10004EF0C()
{
  result = qword_1000A6698;
  if (!qword_1000A6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6698);
  }

  return result;
}

unint64_t sub_10004EF68()
{
  result = qword_1000A66A0;
  if (!qword_1000A66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A66A0);
  }

  return result;
}

unint64_t sub_10004EFC0()
{
  result = qword_1000A66A8;
  if (!qword_1000A66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A66A8);
  }

  return result;
}

unint64_t sub_10004F018()
{
  result = qword_1000A66B0;
  if (!qword_1000A66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A66B0);
  }

  return result;
}

__n128 sub_10004F090(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004F0A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10004F100(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10004F178(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004F1C0()
{
  result = qword_1000A66E0;
  if (!qword_1000A66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A66E0);
  }

  return result;
}

unint64_t sub_10004F214()
{
  result = qword_1000A6718;
  if (!qword_1000A6718)
  {
    sub_100008250(255, &qword_1000A64B8, NSManagedObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6718);
  }

  return result;
}

uint64_t sub_10004F27C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10004F2FC(void *a1, uint64_t a2)
{
  v62 = a1;
  v4 = sub_1000847C8();
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = &v59 - v8;
  __chkstk_darwin(v7);
  v11 = &v59 - v10;
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_100085358();

  if (!v2)
  {
    v66 = v9;
    v59 = a2;
    v60 = v5;
    v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v72 = v4;
    v61 = 0;
    v68 = *(v13 + 16);
    if (v68)
    {
      v14 = 0;
      v67 = (v70 + 16);
      v64 = (v70 + 32);
      v15 = (v70 + 8);
      v65 = _swiftEmptyArrayStorage;
      v16 = v72;
      while (1)
      {
        if (v14 >= *(v13 + 16))
        {
          __break(1u);
          return;
        }

        v17 = (*(v70 + 80) + 32) & ~*(v70 + 80);
        v18 = *(v70 + 72);
        (*(v70 + 16))(v11, v13 + v17 + v18 * v14, v16);
        if (sub_100084698() == 1852797802 && v19 == 0xE400000000000000)
        {
        }

        else
        {
          v20 = sub_100085948();

          if ((v20 & 1) == 0)
          {
            v21 = *v64;
            (*v64)(v66, v11, v16);
            v22 = v65;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v22;
            v63 = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10003BEAC(0, v22[2] + 1, 1);
              v22 = aBlock[0];
            }

            v25 = v22[2];
            v24 = v22[3];
            if (v25 >= v24 >> 1)
            {
              sub_10003BEAC(v24 > 1, v25 + 1, 1);
              v22 = aBlock[0];
            }

            v22[2] = v25 + 1;
            v65 = v22;
            v26 = v22 + v17 + v25 * v18;
            v16 = v72;
            v63(v26);
            goto LABEL_6;
          }
        }

        (*v15)(v11, v16);
LABEL_6:
        if (v68 == ++v14)
        {
          goto LABEL_17;
        }
      }
    }

    v65 = _swiftEmptyArrayStorage;
    v16 = v72;
LABEL_17:

    v27 = v65[2];
    if (v27)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      v28 = v65;
      sub_10003BCC0(0, v27, 0);
      v29 = aBlock[0];
      v30 = *(v70 + 16);
      v31 = v28 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v66 = *(v70 + 72);
      v67 = v30;
      v68 = (v70 + 16);
      v32 = (v70 + 8);
      do
      {
        v33 = v69;
        v34 = v72;
        v67(v69, v31, v72);
        v35 = sub_100084798(1);
        v37 = v36;
        (*v32)(v33, v34);
        aBlock[0] = v29;
        v39 = v29[2];
        v38 = v29[3];
        if (v39 >= v38 >> 1)
        {
          sub_10003BCC0((v38 > 1), v39 + 1, 1);
          v29 = aBlock[0];
        }

        v29[2] = v39 + 1;
        v40 = &v29[2 * v39];
        v40[4] = v35;
        v40[5] = v37;
        v31 = &v66[v31];
        --v27;
      }

      while (v27);

      v16 = v72;
    }

    else
    {

      v29 = _swiftEmptyArrayStorage;
    }

    v41 = sub_10007A9FC(v29);

    v42 = v62;
    v43 = [v62 textStorage];
    v44 = v60;
    if (v43)
    {
      v68 = NSLinkAttributeName;
      v65 = v43;
      v45 = [v43 ic_range];
      v66 = v46;
      v67 = v45;
      v47 = v69;
      v48 = v70;
      (*(v70 + 16))(v69, v59, v16);
      v49 = (*(v48 + 80) + 16) & ~*(v48 + 80);
      v50 = (v44 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      (*(v48 + 32))(v52 + v49, v47, v72);
      *(v52 + v50) = v41;
      *(v52 + v51) = v42;
      v53 = v65;
      *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_10004FA1C;
      *(v54 + 24) = v52;
      aBlock[4] = sub_10004FB08;
      aBlock[5] = v54;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002A6AC;
      aBlock[3] = &unk_1000A0298;
      v55 = _Block_copy(aBlock);
      v56 = v42;
      v57 = v53;

      [v57 enumerateAttribute:v68 inRange:v67 options:v66 usingBlock:{2, v55}];

      _Block_release(v55);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

uint64_t sub_10004F958()
{
  v1 = sub_1000847C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10004FA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1000847C8() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v11);
  v14 = *(v4 + v12);
  v15 = *(v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004C120(a1, a2, a3, a4, v4 + v10, v13, v14, v15);
}

uint64_t sub_10004FB10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004FB48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004FB88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A5AD0, &unk_10008B5E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004FC30()
{
  result = qword_1000A6738;
  if (!qword_1000A6738)
  {
    sub_100011888(&qword_1000A6740, qword_10008D390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6738);
  }

  return result;
}

Swift::Int sub_10004FCA0()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10004FD6C()
{
  *v0;
  *v0;
  *v0;
  sub_100085118();
}

Swift::Int sub_10004FE24()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10004FEEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000500F8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10004FF1C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = *v1;
  v4 = "ERRIDE";
  v5 = "com.apple.notes.account";
  v6 = 0xD000000000000016;
  v7 = "com.apple.notes.folder";
  v8 = 0xD000000000000014;
  if (v3 != 3)
  {
    v8 = 0xD00000000000001ALL;
    v7 = "com.apple.notes.note";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = "com.apple.notes.archive";
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v6;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

unint64_t sub_10005006C()
{
  result = qword_1000A6748;
  if (!qword_1000A6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6748);
  }

  return result;
}

uint64_t sub_1000500CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000500F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000500F8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009E090;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100050144()
{
  result = qword_1000A6750;
  if (!qword_1000A6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6750);
  }

  return result;
}

__int128 *ICArchiveCreator.default.unsafeMutableAddressor()
{
  if (qword_1000A5428 != -1)
  {
    swift_once();
  }

  return &static ICArchiveCreator.default;
}

uint64_t ICArchiveCreator.softwareIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ICArchiveCreator.softwareIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ICArchiveCreator.softwareVersionName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ICArchiveCreator.softwareVersionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ICArchiveCreator.softwareVersion.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ICArchiveCreator.softwareVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

double sub_100050360()
{
  sub_1000507A8(v1);
  static ICArchiveCreator.default = v1[0];
  *&qword_1000B17A0 = v1[1];
  result = *&v2;
  xmmword_1000B17B0 = v2;
  return result;
}

uint64_t static ICArchiveCreator.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000A5428 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(&xmmword_1000B17B0 + 1);
  *a1 = static ICArchiveCreator.default;
  *(a1 + 8) = *(&static ICArchiveCreator.default + 8);
  *(a1 + 24) = unk_1000B17A8;
  *(a1 + 40) = v1;
}

unint64_t sub_100050440()
{
  v1 = 0x6572617774666F73;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1000504AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100050A5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000504E0(uint64_t a1)
{
  v2 = sub_1000506F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005051C(uint64_t a1)
{
  v2 = sub_1000506F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ICArchiveCreator.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6758, &qword_10008D500);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_1000506F8();
  sub_100085A78();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_100085848();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_100085848();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_100085848();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000506F8()
{
  result = qword_1000A6760;
  if (!qword_1000A6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6760);
  }

  return result;
}

double ICArchiveCreator.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100050B8C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void sub_1000507A8(uint64_t *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v26 = sub_100085098();
    v6 = v5;
  }

  else
  {
    v26 = 0;
    v6 = 0;
  }

  v7 = [v2 mainBundle];
  v8 = [v7 infoDictionary];

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = sub_100085008();

  if (!*(v9 + 16) || (v10 = sub_100039138(0xD00000000000001ALL, 0x8000000100086640), (v11 & 1) == 0))
  {

LABEL_14:
    v13 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  sub_1000056E4(*(v9 + 56) + 32 * v10, v29);

  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = v27;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v28;
  }

  else
  {
    v14 = 0;
  }

LABEL_15:
  v15 = [v2 mainBundle];
  v16 = [v15 infoDictionary];

  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = sub_100085008();

  if (kCFBundleVersionKey)
  {
    v18 = sub_100085098();
    if (*(v17 + 16))
    {
      v20 = sub_100039138(v18, v19);
      v22 = v21;

      if (v22)
      {
        sub_1000056E4(*(v17 + 56) + 32 * v20, v29);

        v23 = swift_dynamicCast();
        v24 = v27;
        v25 = v28;
        if (!v23)
        {
          v24 = 0;
          v25 = 0;
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_23:
    v24 = 0;
    v25 = 0;
LABEL_24:
    *a1 = v26;
    a1[1] = v6;
    a1[2] = v13;
    a1[3] = v14;
    a1[4] = v24;
    a1[5] = v25;
    return;
  }

  __break(1u);
}

uint64_t sub_100050A5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000100087170 == a2 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100087190 == a2 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEF6E6F6973726556)
  {

    return 2;
  }

  else
  {
    v5 = sub_100085948();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100050B8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = sub_100005740(&qword_1000A6780, &qword_10008D6B8);
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];

  v9 = [v7 mainBundle];
  v10 = [v9 infoDictionary];

  if (v10)
  {
    v11 = sub_100085008();

    if (!*(v11 + 16) || (v12 = sub_100039138(0xD00000000000001ALL, 0x8000000100086640), (v13 & 1) == 0) || (sub_1000056E4(*(v11 + 56) + 32 * v12, v38), , (swift_dynamicCast() & 1) != 0))
    {
    }
  }

  v14 = [v7 mainBundle];
  v15 = [v14 infoDictionary];

  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = sub_100085008();

  result = kCFBundleVersionKey;
  if (!kCFBundleVersionKey)
  {
    __break(1u);
    return result;
  }

  v18 = sub_100085098();
  if (*(v16 + 16))
  {
    v20 = sub_100039138(v18, v19);
    v22 = v21;

    if (v22)
    {
      sub_1000056E4(*(v16 + 56) + 32 * v20, v38);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
  }

LABEL_14:
  v23 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_1000506F8();
  v24 = v39;
  sub_100085A68();
  if (v24)
  {
    return sub_100006304(a1);
  }

  v38[0] = 0;
  v25 = sub_100085798();
  v27 = v26;
  v28 = v25;
  v38[0] = 1;
  v29 = sub_100085798();
  v31 = v30;
  v39 = v29;
  v38[0] = 2;
  v32 = sub_100085798();
  v34 = v33;
  (*(v37 + 8))(v6, v3);
  result = sub_100006304(a1);
  v35 = v36;
  *v36 = v28;
  v35[1] = v27;
  v35[2] = v39;
  v35[3] = v31;
  v35[4] = v32;
  v35[5] = v34;
  return result;
}

__n128 sub_100050FA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100050FB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_100051014(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICMarkdownFlavor(unsigned __int8 *a1, unsigned int a2)
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