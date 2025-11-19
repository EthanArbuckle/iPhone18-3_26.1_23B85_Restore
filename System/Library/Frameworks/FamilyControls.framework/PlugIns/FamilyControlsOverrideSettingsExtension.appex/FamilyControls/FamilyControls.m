uint64_t sub_100001208@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = qword_100008118;
  swift_beginAccess();
  sub_1000012E8(v1 + v4, &v8);
  if (v9)
  {
    return sub_100001474(&v8, a1);
  }

  sub_1000022E0(&v8, &qword_100008120, &qword_100003430);
  v6 = sub_100003084();
  v7 = sub_100003074();
  a1[3] = v6;
  a1[4] = &off_100004278;
  *a1 = v7;
  sub_1000013A0(a1, &v8);
  swift_beginAccess();
  sub_100001404(&v8, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_1000012E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001358(&qword_100008120, &qword_100003430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001358(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000013A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100001404(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001358(&qword_100008120, &qword_100003430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001474(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000148C(__int128 *a1)
{
  sub_100001474(a1, v4);
  v2 = qword_100008118;
  swift_beginAccess();
  sub_100001404(v4, v1 + v2);
  return swift_endAccess();
}

void (*sub_1000014E8(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  sub_100001208(v3);
  return sub_100001560;
}

void sub_100001560(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    sub_1000013A0(*a1, (v2 + 5));
    v4 = qword_100008118;
    swift_beginAccess();
    sub_100001404((v2 + 5), v3 + v4);
    swift_endAccess();
    sub_100002EE0(v2);
  }

  else
  {
    sub_100001474(*a1, (v2 + 5));
    v5 = qword_100008118;
    swift_beginAccess();
    sub_100001404((v2 + 5), v3 + v5);
    swift_endAccess();
  }

  free(v2);
}

double sub_100001628@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100001638(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v99 = a6;
  v102 = a3;
  v103 = a2;
  v104 = a1;
  v9 = sub_100003044();
  v92 = *(v9 - 8);
  v93 = v9;
  v10 = *(v92 + 64);
  __chkstk_darwin(v9);
  v91 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000030D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v96 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003104();
  v94 = *(v16 - 8);
  v95 = v16;
  v17 = *(v94 + 64);
  v18 = __chkstk_darwin(v16);
  v88 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v85 - v20;
  v22 = sub_100001358(&qword_100008128, &qword_100003438);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v89 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v101 = &v85 - v26;
  v27 = sub_1000030C4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v35 = &v85 - v34;
  __chkstk_darwin(v33);
  v90 = &v85 - v36;
  v37 = os_variant_allows_internal_security_policies();
  v98 = v6;
  if (!v37)
  {
    v100 = a4;
    (*((swift_isaMask & *v6) + qword_100008180 + 8))(v105);
    v51 = v106;
    v52 = v107;
    sub_10000229C(v105, v106);
    result = (*(v52 + 8))(v51, v52);
    v53 = result;
    v54 = *(result + 16);
    if (!v54)
    {
      v61 = a5;

      v62 = 1;
LABEL_24:
      v47 = v98;
      v60 = v100;
      v63 = v89;
LABEL_34:
      (*(v28 + 56))(v63, v62, 1, v27);
      sub_100002EE0(v105);
      if ((*(v28 + 48))(v63, 1, v27) == 1)
      {
        sub_1000022E0(v63, &qword_100008128, &qword_100003438);
        v72 = v88;
        sub_1000030E4();
        v73 = v103;

        v74 = sub_1000030F4();
        v75 = sub_100003124();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v105[0] = swift_slowAlloc();
          *v76 = 136446467;
          *(v76 + 4) = sub_1000028E8(v104, v73, v105);
          *(v76 + 12) = 2081;
          *(v76 + 14) = sub_1000028E8(v102, v60, v105);
          _os_log_impl(&_mh_execute_header, v74, v75, "Couldn't locate existing authorization record for app with bundle identifier “%{public}s” and team identifier “%{private}s”.", v76, 0x16u);
          swift_arrayDestroy();

          (*(v94 + 8))(v88, v95);
        }

        else
        {

          (*(v94 + 8))(v72, v95);
        }

        v84 = v96;
        (*(v13 + 104))(v96, enum case for OverrideSettingsResponse.approved(_:), v12);
        v61(v84);
        return (*(v13 + 8))(v84, v12);
      }

      v48 = v61;
LABEL_38:
      v77 = v90;
      v78 = (*(v28 + 32))(v90, v63, v27);
      (*((swift_isaMask & *v47) + qword_100008180 + 8))(v105, v78);
      v79 = v106;
      v80 = v107;
      v102 = sub_10000229C(v105, v106);
      v81 = v91;
      sub_1000030B4();
      v82 = swift_allocObject();
      v82[2] = v104;
      v82[3] = v103;
      v82[4] = v48;
      v82[5] = v99;
      v83 = *(v80 + 16);

      v83(v81, sub_100002ED0, v82, v79, v80);

      (*(v92 + 8))(v81, v93);
      (*(v28 + 8))(v77, v27);
      return sub_100002EE0(v105);
    }

    v86 = v13;
    v87 = v12;
    v97 = a5;
    v55 = 0;
    v101 = (result + ((*(v28 + 80) + 32) & ~*(v28 + 80)));
    while (1)
    {
      if (v55 >= *(v53 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      (*(v28 + 16))(v32, &v101[*(v28 + 72) * v55], v27);
      if (sub_1000030A4() == v104 && v57 == v103)
      {
      }

      else
      {
        v58 = sub_100003164();

        if ((v58 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      if (sub_100003094() == v102 && v59 == v100)
      {
        v60 = v100;

LABEL_33:
        v63 = v89;
        (*(v28 + 32))(v89, v32, v27);
        v62 = 0;
        v61 = v97;
        v47 = v98;
        v12 = v87;
        v13 = v86;
        goto LABEL_34;
      }

      v56 = sub_100003164();

      if (v56)
      {

        v60 = v100;
        goto LABEL_33;
      }

LABEL_13:
      ++v55;
      result = (*(v28 + 8))(v32, v27);
      if (v54 == v55)
      {

        v62 = 1;
        v61 = v97;
        v12 = v87;
        v13 = v86;
        goto LABEL_24;
      }
    }
  }

  v102 = v21;
  v86 = v13;
  v87 = v12;
  v97 = a5;
  (*((swift_isaMask & *v6) + qword_100008180 + 8))(v105);
  v38 = v106;
  v39 = v107;
  sub_10000229C(v105, v106);
  result = (*(v39 + 8))(v38, v39);
  v41 = result;
  v42 = *(result + 16);
  if (!v42)
  {
LABEL_9:

    v46 = 1;
    v48 = v97;
    v47 = v98;
    v49 = v101;
    v50 = v102;
LABEL_27:
    (*(v28 + 56))(v49, v46, 1, v27);
    sub_100002EE0(v105);
    if ((*(v28 + 48))(v49, 1, v27) == 1)
    {
      sub_1000022E0(v49, &qword_100008128, &qword_100003438);
      sub_1000030E4();
      v64 = v103;

      v65 = sub_1000030F4();
      v66 = sub_100003124();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v105[0] = v68;
        *v67 = 136446210;
        *(v67 + 4) = sub_1000028E8(v104, v64, v105);
        _os_log_impl(&_mh_execute_header, v65, v66, "Couldn't locate existing authorization record for app with bundle identifier “%{public}s”.", v67, 0xCu);
        sub_100002EE0(v68);
      }

      (*(v94 + 8))(v50, v95);
      v69 = v87;
      v70 = v86;
      v71 = v96;
      (*(v86 + 104))(v96, enum case for OverrideSettingsResponse.approved(_:), v87);
      v48(v71);
      return (*(v70 + 8))(v71, v69);
    }

    v63 = v49;
    goto LABEL_38;
  }

  v43 = 0;
  while (v43 < *(v41 + 16))
  {
    (*(v28 + 16))(v35, v41 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v43, v27);
    if (sub_1000030A4() == v104 && v44 == v103)
    {

LABEL_26:

      v49 = v101;
      (*(v28 + 32))(v101, v35, v27);
      v46 = 0;
      v48 = v97;
      v47 = v98;
      v50 = v102;
      goto LABEL_27;
    }

    v45 = sub_100003164();

    if (v45)
    {
      goto LABEL_26;
    }

    ++v43;
    result = (*(v28 + 8))(v35, v27);
    if (v42 == v43)
    {
      goto LABEL_9;
    }
  }

LABEL_43:
  __break(1u);
  return result;
}

void *sub_10000229C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000022E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001358(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002340(uint64_t a1, char a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6)
{
  v40 = a3;
  v43 = sub_1000030D4();
  v11 = *(v43 - 8);
  v12 = *(v11 + 64);
  (__chkstk_darwin)();
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003104();
  v41 = *(v15 - 8);
  v42 = v15;
  v16 = *(v41 + 64);
  v17 = (__chkstk_darwin)();
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v38 - v20;
  if (a2)
  {
    sub_1000030E4();

    sub_100002FCC(a1, 1);
    v22 = sub_1000030F4();
    v23 = sub_100003124();

    sub_100002FD8(a1, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38[1] = a6;
      v25 = v24;
      v26 = swift_slowAlloc();
      v39 = a5;
      v44 = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_1000028E8(v40, a4, &v44);
      *(v25 + 12) = 2082;
      swift_getErrorValue();
      v27 = sub_100003174();
      v29 = sub_1000028E8(v27, v28, &v44);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to revoke authorization for app with bundle identifier “%{public}s”. Error: %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      a5 = v39;
    }

    (*(v41 + 8))(v19, v42);
    v30 = &enum case for OverrideSettingsResponse.denied(_:);
  }

  else
  {
    sub_1000030E4();

    v31 = sub_1000030F4();
    v32 = sub_100003134();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = a5;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_1000028E8(v40, a4, &v44);
      _os_log_impl(&_mh_execute_header, v31, v32, "Successfully revoked authorization for app with bundle identifier “%{public}s”.", v34, 0xCu);
      sub_100002EE0(v35);

      a5 = v33;
    }

    (*(v41 + 8))(v21, v42);
    v30 = &enum case for OverrideSettingsResponse.approved(_:);
  }

  v36 = v43;
  (*(v11 + 104))(v14, *v30, v43);
  a5(v14);
  return (*(v11 + 8))(v14, v36);
}

id sub_100002760()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100002794()
{
  v1 = &v0[qword_100008118];
  v2 = type metadata accessor for FamilyControlsOverrideSettingsHandler();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1000027EC(char *a1)
{
  v2 = &a1[qword_100008118];
  v3 = type metadata accessor for FamilyControlsOverrideSettingsHandler();
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v5.receiver = a1;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10000287C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyControlsOverrideSettingsHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000028E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000029B4(v11, 0, 0, 1, a1, a2);
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
    sub_100002FE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002EE0(v11);
  return v7;
}

unint64_t sub_1000029B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002AC0(a5, a6);
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
    result = sub_100003154();
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

char *sub_100002AC0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002B0C(a1, a2);
  sub_100002C3C(&off_100004228);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002B0C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002D28(v5, 0);
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

  result = sub_100003154();
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
        v10 = sub_100003114();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002D28(v10, 0);
        result = sub_100003144();
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

uint64_t sub_100002C3C(uint64_t result)
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

  result = sub_100002D9C(result, v12, 1, v3);
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

void *sub_100002D28(uint64_t a1, uint64_t a2)
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

  sub_100001358(&qword_100008170, &qword_1000034E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002D9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001358(&qword_100008170, &qword_1000034E0);
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

uint64_t sub_100002E90()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002EE0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t type metadata accessor for FamilyControlsOverrideSettingsHandler()
{
  result = qword_100008190;
  if (!qword_100008190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002FCC(uint64_t a1, char a2)
{
  if (a2)
  {
    return _swift_errorRetain();
  }

  return result;
}

uint64_t sub_100002FD8(uint64_t a1, char a2)
{
  if (a2)
  {
    return _swift_errorRelease();
  }

  return result;
}

uint64_t sub_100002FE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}