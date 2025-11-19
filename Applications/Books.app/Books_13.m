uint64_t sub_100263E64()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD78D0);
  sub_100008B98(v0, qword_100AD78D0);
  return sub_10079ACD4();
}

uint64_t sub_100263EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_1007A1C54();
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1007A1CA4();
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007A1C64();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_10000A7C4(0, &qword_100AD1E10);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInitiated(_:), v11);

  v16 = sub_1007A2DB4();
  (*(v12 + 8))(v14, v11);
  v17 = swift_allocObject();
  v17[2] = sub_10026623C;
  v17[3] = v15;
  v17[4] = v20;
  aBlock[4] = sub_10026627C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A11308;
  v18 = _Block_copy(aBlock);
  sub_1007A1C74();
  v23 = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v18);

  (*(v22 + 8))(v7, v5);
  (*(v8 + 8))(v10, v21);
}

void sub_1002642A8(void (*a1)(void *, void *, uint64_t))
{
  v2 = [objc_opt_self() sharedProvider];
  v3 = [v2 activeStoreAccount];

  v4 = [objc_opt_self() bu_sharedAccountStore];
  v5 = [v4 ams_iTunesAccounts];

  sub_10000A7C4(0, &unk_100AECAA0);
  v6 = sub_1007A25E4();

  v16 = a1;
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_1007A3784();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v17 = v9;
      if (sub_100265C8C(&v17))
      {

        v12 = v10;
        v13 = 2 * (v3 != 0);
        v14 = v3;
        goto LABEL_20;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v14 = 0;
  v12 = 0;
  if (v3)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  v10 = v3;
LABEL_20:
  v15 = v3;
  v16(v10, v14, v13);
  sub_100266188(v10, v14, v13);

  sub_100266188(v10, v14, v13);
}

uint64_t sub_1002645C8()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 3;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = ObjectType;
  swift_retain_n();

  sub_1001F1160(&qword_100AD7920);
  sub_100005920(&qword_100AD7928, &qword_100AD7920);
  sub_10079BA84();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

void sub_100264780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v34[-v10];
  __chkstk_darwin(v9);
  v13 = &v34[-v12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  swift_beginAccess();
  v16 = *(a3 + 16);
  if (*(a3 + 32) <= 1u)
  {
    if (!*(a3 + 32))
    {
      v17 = *(a3 + 24);
      v18 = qword_100AD1338;
      v19 = v16;
      if (v18 != -1)
      {
        swift_once();
      }

      v20 = sub_100008B98(v4, qword_100AD78D0);
      (*(v5 + 16))(v11, v20, v4);
      v21 = sub_10079ACC4();
      v22 = sub_1007A29D4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Move legacy account to shared", v23, 2u);
      }

      (*(v5 + 8))(v11, v4);
      sub_1002661E8(v16, v17, 0);
      sub_100264C9C(v16, v16);

      sub_100266188(v16, v17, 0);
      sub_100266188(v16, v17, 0);
      return;
    }

    goto LABEL_15;
  }

  if (*(a3 + 32) != 2)
  {
LABEL_15:
    if (qword_100AD1338 != -1)
    {
      swift_once();
    }

    v30 = sub_100008B98(v4, qword_100AD78D0);
    (*(v5 + 16))(v13, v30, v4);
    v31 = sub_10079ACC4();
    v32 = sub_1007A29D4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Nothing to do", v33, 2u);
    }

    (*(v5 + 8))(v13, v4);
    return;
  }

  v24 = v16;
  if (qword_100AD1338 != -1)
  {
    swift_once();
  }

  v25 = sub_100008B98(v4, qword_100AD78D0);
  (*(v5 + 16))(v8, v25, v4);
  v26 = sub_10079ACC4();
  v27 = sub_1007A29D4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Both legacy and shared account, remove properties from legacy", v28, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v29 = v24;
  sub_100264C9C(v16, 0);
}

void sub_100264C10(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  v8 = *(a2 + 32);
  *(a2 + 32) = v5;
  sub_1002661E8(v3, v4, v5);
  sub_100266188(v6, v7, v8);
}

uint64_t sub_100264C9C(void *a1, void *a2)
{
  v24 = a2;
  ObjectType = swift_getObjectType();
  v3 = sub_1007A1C54();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007A1CA4();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007A1C64();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() bu_sharedAccountStore];
  sub_10000A7C4(0, &qword_100AD1E10);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.userInitiated(_:), v9);
  v14 = sub_1007A2DB4();
  (*(v10 + 8))(v12, v9);
  v15 = swift_allocObject();
  v16 = ObjectType;
  v17 = v24;
  v15[2] = v24;
  v15[3] = v13;
  v15[4] = a1;
  v15[5] = v16;
  aBlock[4] = sub_100265BC8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A111A0;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = v17;
  v21 = v13;
  sub_1007A1C74();
  v28 = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v18);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v8, v26);
}

void sub_100265060(void *a1, char *a2, void *a3)
{
  v6 = sub_10079ACE4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v62 - v11;
  if (a1)
  {
    v64 = a3;
    v13 = qword_100AD1338;
    v14 = a1;
    if (v13 != -1)
    {
LABEL_62:
      swift_once();
    }

    v15 = sub_100008B98(v6, qword_100AD78D0);
    (*(v7 + 16))(v12, v15, v6);
    v16 = v14;
    v17 = sub_10079ACC4();
    v18 = sub_1007A29A4();
    if (os_log_type_enabled(v17, v18))
    {
      v62 = v7;
      v63 = v10;
      v65 = a2;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&aBlock = v20;
      *v19 = 136315138;
      v21 = [v16 username];

      if (!v21)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v22 = sub_1007A2254();
      v24 = v23;

      v25 = sub_1000070F4(v22, v24, &aBlock);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "About to set shared account: %s", v19, 0xCu);
      sub_1000074E0(v20);

      v7 = v62;
      (*(v62 + 8))(v12, v6);
      a2 = v65;
      v10 = v63;
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    [v16 ams_setActive:1 forMediaType:AMSAccountMediaTypeProduction];
    v26 = [a2 ams_saveAccount:v16 verifyCredentials:0];
    v68 = sub_100265C34;
    v69 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v67 = sub_1002D63C0;
    *(&v67 + 1) = &unk_100A111F0;
    v27 = _Block_copy(&aBlock);

    [v26 addFinishBlock:v27];
    _Block_release(v27);

    a3 = v64;
  }

  if (!a3)
  {
    return;
  }

  v28 = qword_100AD1338;
  v29 = a3;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_100008B98(v6, qword_100AD78D0);
  (*(v7 + 16))(v10, v30, v6);
  v31 = v29;
  v32 = sub_10079ACC4();
  v33 = sub_1007A29A4();
  if (os_log_type_enabled(v32, v33))
  {
    v63 = v10;
    v34 = v7;
    v65 = a2;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&aBlock = v36;
    *v35 = 136315138;
    v37 = [v31 username];

    if (!v37)
    {
LABEL_71:
      __break(1u);
      return;
    }

    v38 = sub_1007A2254();
    v40 = v39;

    v41 = sub_1000070F4(v38, v40, &aBlock);

    *(v35 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "About to remove account property from legacy books account: %s", v35, 0xCu);
    sub_1000074E0(v36);

    v42 = *(v34 + 8);
    v10 = (v34 + 8);
    v42(v63, v6);
    a2 = v65;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v43 = [v31 accountProperties];
  if (!v43)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v44 = v43;
  v6 = 0xD000000000000033;
  *&v71 = 0xD000000000000010;
  *(&v71 + 1) = 0x80000001008C6AD0;
  v45 = [v43 __swift_objectForKeyedSubscript:sub_1007A3B04()];
  swift_unknownObjectRelease();

  if (v45)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
  }

  aBlock = v71;
  v67 = v72;
  if (!*(&v72 + 1))
  {

    sub_1000230BC(&aBlock);
    return;
  }

  sub_1001F1160(&unk_100AD61F0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v63 = 0xD000000000000010;
  v64 = 0x80000001008C6AD0;
  v46 = v70;
  v47 = *(v70 + 16);
  v65 = a2;
  if (v47)
  {
    v7 = 0;
    v48 = 0;
    v12 = 0x80000001008C6AF0;
    while (1)
    {
      v49 = *&v46[v7 + 32] == 0xD000000000000033 && 0x80000001008C6AF0 == *&v46[v7 + 40];
      if (v49 || (sub_1007A3AB4() & 1) != 0)
      {
        break;
      }

      ++v48;
      v7 += 16;
      if (v47 == v48)
      {
        goto LABEL_29;
      }
    }

    a2 = (v48 + 1);
    if (__OFADD__(v48, 1))
    {
      goto LABEL_68;
    }

    v14 = *(v46 + 2);
    while (a2 != v14)
    {
      if (a2 >= v14)
      {
        __break(1u);
        goto LABEL_62;
      }

      v57 = *&v46[v7 + 48];
      v10 = *&v46[v7 + 56];
      v58 = v57 == 0xD000000000000033 && 0x80000001008C6AF0 == v10;
      if (!v58 && (sub_1007A3AB4() & 1) == 0)
      {
        if (a2 != v48)
        {
          if (v48 >= v14)
          {
            goto LABEL_66;
          }

          v59 = &v46[16 * v48 + 32];
          v60 = *(v59 + 1);
          v62 = *v59;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_1002F4988(v46);
          }

          v61 = &v46[16 * v48];
          *(v61 + 4) = v57;
          *(v61 + 5) = v10;

          if (a2 >= *(v46 + 2))
          {
            goto LABEL_67;
          }

          v56 = &v46[v7];
          *(v56 + 6) = v62;
          *(v56 + 7) = v60;
        }

        ++v48;
      }

      ++a2;
      v14 = *(v46 + 2);
      v7 += 16;
    }
  }

  else
  {
LABEL_29:
    a2 = *(v46 + 2);
    v48 = v47;
  }

  if (v48 > a2)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (v48 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (__OFADD__(a2, v48 - a2))
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = v46;
  if (!isUniquelyReferenced_nonNull_native || v48 > *(v46 + 3) >> 1)
  {
    if (a2 <= v48)
    {
      v51 = v48;
    }

    else
    {
      v51 = a2;
    }

    v73 = sub_10000B3D8(isUniquelyReferenced_nonNull_native, v51, 1, v46);
  }

  sub_1002F90C0(v48, a2, 0);
  isa = sub_1007A25D4().super.isa;

  v53 = sub_1007A2214();
  [v31 setAccountProperty:isa forKey:v53];

  v54 = [v65 ams_saveAccount:v31 verifyCredentials:0];
  v68 = sub_100265C60;
  v69 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v67 = sub_1002D63C0;
  *(&v67 + 1) = &unk_100A111C8;
  v55 = _Block_copy(&aBlock);

  [v54 addFinishBlock:v55];

  _Block_release(v55);
}

id sub_100265980()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchAccountStorageController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100265A24(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100265A40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100265A88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100265ACC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100265AF4(void *a1, void *a2, char a3)
{
  if (a3 != 2)
  {
    return 0;
  }

  v4 = [a1 identifier];
  v5 = [a2 identifier];
  v6 = v5;
  if (!v4)
  {
    if (!v5)
    {
      v8 = 0;
      return v8 & 1;
    }

    goto LABEL_9;
  }

  if (!v5)
  {

LABEL_9:
    v8 = 1;
    return v8 & 1;
  }

  sub_10000A7C4(0, &unk_100AEB920);
  v7 = sub_1007A3184();

  v8 = v7 ^ 1;
  return v8 & 1;
}

unint64_t sub_100265BDC()
{
  result = qword_100ADA670;
  if (!qword_100ADA670)
  {
    sub_1007A1C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA670);
  }

  return result;
}

id sub_100265C8C(id *a1)
{
  result = [*a1 accountProperties];
  if (result)
  {
    v2 = result;
    *&v7 = 0xD000000000000010;
    *(&v7 + 1) = 0x80000001008C6AD0;
    v3 = [result __swift_objectForKeyedSubscript:sub_1007A3B04()];
    swift_unknownObjectRelease();

    if (v3)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9[0] = v7;
    v9[1] = v8;
    if (*(&v8 + 1))
    {
      sub_1001F1160(&unk_100AD61F0);
      v4 = swift_dynamicCast();
      if (v4)
      {
        *&v9[0] = 0xD000000000000033;
        *(&v9[0] + 1) = 0x80000001008C6AF0;
        __chkstk_darwin(v4);
        v6[2] = v9;
        v5 = sub_100580218(sub_100266288, v6, v10);

        return (v5 & 1);
      }
    }

    else
    {
      sub_1000230BC(v9);
    }

    v5 = 0;
    return (v5 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_100265E44(uint64_t a1, const char *a2, const char *a3)
{
  v6 = sub_10079ACE4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  if (a1)
  {
    swift_errorRetain();
    if (qword_100AD1338 != -1)
    {
      swift_once();
    }

    v13 = sub_100008B98(v6, qword_100AD78D0);
    (*(v7 + 16))(v10, v13, v6);
    swift_errorRetain();
    v14 = sub_10079ACC4();
    v15 = sub_1007A29B4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = a2;
      v18 = v17;
      v28 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v19 = sub_1007A3B84();
      v21 = sub_1000070F4(v19, v20, &v28);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, v27, v16, 0xCu);
      sub_1000074E0(v18);
    }

    else
    {
    }

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    if (qword_100AD1338 != -1)
    {
      swift_once();
    }

    v22 = sub_100008B98(v6, qword_100AD78D0);
    (*(v7 + 16))(v12, v22, v6);
    v23 = sub_10079ACC4();
    v24 = sub_1007A29A4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, a3, v25, 2u);
    }

    return (*(v7 + 8))(v12, v6);
  }
}

void sub_100266188(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

id sub_1002661E8(id result, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }

    v4 = result;
    result = a2;
  }

  return result;
}

uint64_t sub_10026623C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 0x1FF;
  return v4(v6);
}

uint64_t sub_1002662C0()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SnapshotImageView()
{
  result = qword_100AD7A28;
  if (!qword_100AD7A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100266390()
{
  sub_10026644C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChromeStyle();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_10079ACE4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10026644C()
{
  if (!qword_100AD7A38)
  {
    sub_1001F1234(&qword_100AD4F20);
    v0 = sub_10079E224();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD7A38);
    }
  }
}

uint64_t sub_1002664CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SnapshotImageView();
  v5 = __chkstk_darwin(v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v12 = *(v1 + 2);
  v43 = *v1;
  v44 = v11;
  v37 = v12;
  v45 = v12;
  v38 = sub_1001F1160(&qword_100AD7A78);
  sub_10079E1C4();
  v13 = v40;
  if (v40)
  {
  }

  sub_100266E5C(v1, v9);
  sub_100266E5C(v1, v7);
  v14 = sub_10079ACC4();
  v15 = sub_1007A29A4();
  if (!os_log_type_enabled(v14, v15))
  {
    sub_100266EC0(v9);

    sub_100266EC0(v7);
LABEL_11:
    *a1 = sub_10079E474();
    a1[1] = v26;
    v27 = sub_1001F1160(&qword_100AD7A80);
    sub_10026687C(v2, v13 != 0, a1 + *(v27 + 44));
    sub_10079DDD4();

    v43 = v10;
    v44 = v11;
    v45 = v37;
    sub_10079E1C4();
    v28 = v40;
    result = sub_1001F1160(&qword_100AD7A88);
    v29 = (a1 + *(result + 36));
    *v29 = 0;
    v29[1] = v28;
    return result;
  }

  v36 = v11;
  v16 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v42 = v35;
  *v16 = 134218242;
  v17 = *(v9 + 3);
  sub_100266EC0(v9);
  *(v16 + 4) = v17;
  *(v16 + 12) = 2080;
  if (!v13)
  {
    v23 = 0xEA00000000006465;
    v24 = 0x64616F6C20746F4ELL;
    goto LABEL_10;
  }

  v40 = 0;
  v41 = 0xE000000000000000;
  v18 = *v7;
  v19 = v7[2];
  v33 = v7[1];
  v34 = v18;
  v43 = v18;
  v44 = v33;
  v31 = v10;
  v32 = v19;
  v45 = v19;
  result = sub_10079E1C4();
  v21 = v39;
  if (v39)
  {
    [v39 size];

    v46._countAndFlagsBits = sub_1007A27C4();
    sub_1007A23D4(v46);

    v47._countAndFlagsBits = 2127904;
    v47._object = 0xE300000000000000;
    sub_1007A23D4(v47);
    v43 = v34;
    v44 = v33;
    v45 = v32;
    result = sub_10079E1C4();
    v22 = v39;
    if (v39)
    {
      [v39 size];

      v48._countAndFlagsBits = sub_1007A27C4();
      sub_1007A23D4(v48);

      v24 = v40;
      v23 = v41;
      v10 = v31;
LABEL_10:
      sub_100266EC0(v7);
      v25 = sub_1000070F4(v24, v23, &v42);

      *(v16 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "ImageView refreshed for page %ld %s", v16, 0x16u);
      sub_1000074E0(v35);

      v11 = v36;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10026687C@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v35 = sub_1001F1160(&qword_100AD7A90);
  __chkstk_darwin(v35);
  v34 = &v31 - v5;
  v33 = sub_1001F1160(&qword_100AD7A98);
  v6 = __chkstk_darwin(v33);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - v9;
  __chkstk_darwin(v8);
  v36 = &v31 - v11;
  v12 = sub_10079DF34();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079DD94();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *(&v38 + 1) = v44;
  *&v38 = swift_getKeyPath();
  sub_10079E474();
  sub_10079BE54();
  v16 = *(a1 + 2);
  v44 = *a1;
  v45 = v16;
  sub_1001F1160(&qword_100AD7A78);
  sub_10079E1C4();
  if (!v41)
  {
    [objc_allocWithZone(UIImage) init];
  }

  sub_10079DF04();
  (*(v13 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v12);
  v17 = 0.0;
  v31 = sub_10079DF94();

  (*(v13 + 8))(v15, v12);
  if (v32)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 1.0;
  }

  if (v32)
  {
    v17 = 1.0;
  }

  sub_10079E474();
  sub_10079BE54();
  v54 = 1;
  *&v53[6] = v58;
  *&v53[22] = v59;
  *&v53[38] = v60;
  v19 = v34;
  sub_10079BDC4();
  sub_10079E474();
  sub_10079BE54();
  v20 = (v19 + *(v35 + 36));
  v21 = v62;
  *v20 = v61;
  v20[1] = v21;
  v20[2] = v63;
  sub_10020B3C8(v19, v10, &qword_100AD7A90);
  *&v10[*(v33 + 36)] = v18;
  v22 = v36;
  sub_10020B3C8(v10, v36, &qword_100AD7A98);
  v23 = v37;
  sub_1000077D8(v22, v37, &qword_100AD7A98);
  v39[0] = v38;
  v24 = v55;
  v39[1] = v55;
  v39[2] = v56;
  v25 = v57;
  v39[3] = v57;
  v40 = v18;
  *(a3 + 32) = v56;
  *(a3 + 48) = v25;
  *(a3 + 64) = v40;
  *a3 = v39[0];
  *(a3 + 16) = v24;
  v26 = v31;
  *&v41 = v31;
  *(&v41 + 1) = v17;
  *&v42[0] = 0;
  WORD4(v42[0]) = 1;
  *(v42 + 10) = *v53;
  *(&v42[1] + 10) = *&v53[16];
  *(&v42[2] + 10) = *&v53[32];
  *(&v42[3] + 1) = *&v53[46];
  v43 = 257;
  v27 = v42[0];
  *(a3 + 72) = v41;
  *(a3 + 152) = 257;
  *(a3 + 88) = v27;
  v28 = v42[2];
  *(a3 + 104) = v42[1];
  *(a3 + 120) = v28;
  *(a3 + 136) = v42[3];
  v29 = sub_1001F1160(&qword_100AD7AA0);
  sub_1000077D8(v23, a3 + *(v29 + 64), &qword_100AD7A98);
  sub_1000077D8(v39, &v44, &qword_100AD7AA8);
  sub_1000077D8(&v41, &v44, &qword_100AD7AB0);
  sub_100007840(v22, &qword_100AD7A98);
  sub_100007840(v23, &qword_100AD7A98);
  *&v44 = v26;
  *(&v44 + 1) = v17;
  v45 = 0;
  v46 = 1;
  v47 = *v53;
  v48 = *&v53[16];
  *v49 = *&v53[32];
  *&v49[14] = *&v53[46];
  v50 = 257;
  sub_100007840(&v44, &qword_100AD7AB0);
  v51[0] = v38;
  v51[1] = v55;
  v51[2] = v56;
  v51[3] = v57;
  v52 = v18;
  return sub_100007840(v51, &qword_100AD7AA8);
}

uint64_t sub_100266E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotImageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100266EC0(uint64_t a1)
{
  v2 = type metadata accessor for SnapshotImageView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100266F1C()
{
  result = qword_100AD7AB8;
  if (!qword_100AD7AB8)
  {
    sub_1001F1234(&qword_100AD7A88);
    sub_100005920(&qword_100AD7AC0, &qword_100AD7AC8);
    sub_100005920(&qword_100AD7AD0, &qword_100AD7AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7AB8);
  }

  return result;
}

id sub_10026701C()
{
  v1 = [objc_opt_self() effectWithStyle:*v0];
  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];

  return v2;
}

void sub_10026708C(void *a1)
{
  v3 = [objc_opt_self() effectWithStyle:*v1];
  [a1 setEffect:v3];
}

uint64_t sub_10026715C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002672A4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002671C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002672A4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100267224()
{
  sub_1002672A4();
  sub_10079CC64();
  __break(1u);
}

unint64_t sub_100267250()
{
  result = qword_100AD7AE0;
  if (!qword_100AD7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7AE0);
  }

  return result;
}

unint64_t sub_1002672A4()
{
  result = qword_100AD7AE8;
  if (!qword_100AD7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7AE8);
  }

  return result;
}

uint64_t sub_1002672F8()
{
  result = sub_10079E504();
  qword_100AD7AF0 = result;
  return result;
}

BOOL sub_100267328(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = sub_1007A3454();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1, v3);
  v7 = (*(*(v2 - 8) + 48))(v6, 1, v2) != 1;
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_10026744C()
{
  sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  return v1;
}

uint64_t sub_100267510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v126 = *(a1 - 8);
  v125 = *(v126 + 64);
  __chkstk_darwin(a1);
  v121 = v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10079CD04();
  __chkstk_darwin(v123);
  v117 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10079BCC4();
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1001F1160(&qword_100AD7B78);
  v113 = *(v111 - 8);
  __chkstk_darwin(v111);
  v107 = v86 - v6;
  v7 = sub_1001F1160(&qword_100AD7B80);
  v112 = *(v7 - 8);
  __chkstk_darwin(v7);
  v108 = v86 - v8;
  sub_1001F1234(&qword_100AD7B88);
  *&v128 = a1 + 24;
  *&v127 = a1 + 40;
  v122 = *(a1 + 16);
  v120 = a1;
  sub_10079C2A4();
  sub_10079D1C4();
  v9 = sub_10079C2A4();
  v10 = sub_10079CAC4();
  v116 = *(a1 + 32);
  v141 = v116;
  v142 = &protocol witness table for _OpacityEffect;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_10026DB50(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
  v139 = WitnessTable;
  v140 = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_10026DB50(&qword_100AD7B90, &type metadata accessor for ConcentricRectangle);
  v135 = v9;
  v136 = v10;
  v137 = v13;
  v138 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_1001F1234(&qword_100AD7B98);
  sub_10079C2A4();
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E184();
  sub_1007A3454();
  sub_10079DEF4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_1007A3454();
  swift_getTupleTypeMetadata2();
  v86[1] = sub_10079E5C4();
  v86[0] = swift_getWitnessTable();
  v15 = sub_10079E1A4();
  v115 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v86 - v16;
  v18 = sub_10079C2A4();
  v105 = *(v18 - 8);
  __chkstk_darwin(v18);
  v118 = v86 - v19;
  v133 = swift_getWitnessTable();
  v134 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v20 = swift_getWitnessTable();
  v21 = sub_100005920(&qword_100AD7BA0, &qword_100AD7B80);
  v135 = v18;
  v136 = v7;
  v22 = v18;
  v89 = v18;
  v90 = v7;
  v137 = v20;
  v138 = v21;
  v92 = v20;
  v23 = v21;
  v91 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v100 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v88 = v86 - v25;
  v135 = v22;
  v136 = v7;
  v137 = v20;
  v138 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = OpaqueTypeMetadata2;
  v93 = OpaqueTypeMetadata2;
  v135 = OpaqueTypeMetadata2;
  v136 = OpaqueTypeConformance2;
  v28 = OpaqueTypeConformance2;
  v94 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeMetadata2();
  v99 = v29;
  v102 = *(v29 - 8);
  __chkstk_darwin(v29);
  v119 = v86 - v30;
  v135 = v27;
  v136 = v28;
  v98 = swift_getOpaqueTypeConformance2();
  v135 = v29;
  v136 = &type metadata for Bool;
  v137 = v98;
  v138 = &protocol witness table for Bool;
  v101 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v103 = swift_getOpaqueTypeMetadata2();
  v104 = *(v103 - 8);
  __chkstk_darwin(v103);
  v95 = v86 - v31;
  v32 = sub_1001F1160(&qword_100AD7BA8);
  __chkstk_darwin(v32 - 8);
  v34 = v86 - v33;
  v35 = sub_10079D334();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v97 = swift_checkMetadataState();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v38 = v86 - v37;
  sub_10079D324();
  (*(v36 + 56))(v34, 0, 1, v35);
  sub_10079D314();
  sub_100007840(v34, &qword_100AD7BA8);
  v87 = v38;
  sub_10079CAB4();
  *&v39 = v122;
  *(&v39 + 1) = *v128;
  v128 = v39;
  *&v40 = v116;
  *(&v40 + 1) = *v127;
  v127 = v40;
  v129 = v39;
  v130 = v40;
  v41 = v124;
  v131 = v124;
  v132 = v38;
  sub_10079E474();
  sub_10079E194();
  sub_10079D294();
  sub_10079C2C4();
  sub_10079D804();
  (*(v115 + 8))(v17, v15);
  sub_10079CF74();
  v42 = v106;
  sub_10079BC64();
  v43 = v126;
  v44 = (v126 + 16);
  v123 = *(v126 + 16);
  v45 = v121;
  v46 = v120;
  v123(v121, v41, v120);
  v117 = v44;
  v115 = *(v43 + 80);
  v47 = (v115 + 48) & ~v115;
  v48 = swift_allocObject();
  v49 = v127;
  *(v48 + 16) = v128;
  *(v48 + 32) = v49;
  v122 = *(v43 + 32);
  v122(v48 + v47, v45, v46);
  v126 = v43 + 32;
  sub_10026DB50(&qword_100AD7BB0, &type metadata accessor for DragGesture);
  sub_10026DB50(&qword_100AD7BB8, &type metadata accessor for DragGesture.Value);
  v50 = v107;
  v51 = v109;
  sub_10079E2A4();

  (*(v110 + 8))(v42, v51);
  v52 = v121;
  v53 = v120;
  v123(v121, v41, v120);
  v116 = v47;
  v54 = swift_allocObject();
  v55 = v127;
  *(v54 + 16) = v128;
  *(v54 + 32) = v55;
  v56 = v54 + v47;
  v57 = v52;
  v58 = v53;
  v122(v56, v52, v53);
  sub_100005920(&qword_100AD7BC0, &qword_100AD7B78);
  v59 = v108;
  v60 = v111;
  sub_10079E294();

  (*(v113 + 8))(v50, v60);
  sub_10079BCE4();
  v61 = v88;
  v62 = v59;
  v63 = v89;
  v64 = v90;
  v65 = v118;
  sub_10079DB94();
  (*(v112 + 8))(v62, v64);
  (*(v105 + 8))(v65, v63);
  v66 = v58;
  v67 = v123;
  v123(v57, v41, v58);
  v68 = v116;
  v69 = swift_allocObject();
  v70 = v127;
  *(v69 + 16) = v128;
  *(v69 + 32) = v70;
  v122(v69 + v68, v57, v58);
  v71 = v93;
  sub_10079DA74();

  (*(v100 + 8))(v61, v71);
  v72 = v124;
  LOBYTE(v135) = sub_100267328(v58);
  v67(v57, v72, v58);
  v73 = v116;
  v74 = swift_allocObject();
  v75 = v127;
  *(v74 + 16) = v128;
  *(v74 + 32) = v75;
  v76 = v73;
  v77 = v122;
  v122(v74 + v73, v57, v66);
  v78 = v95;
  v79 = v99;
  v80 = v98;
  v81 = v119;
  sub_10079DC24();

  (*(v102 + 8))(v81, v79);
  v123(v57, v124, v66);
  v82 = swift_allocObject();
  v83 = v127;
  *(v82 + 16) = v128;
  *(v82 + 32) = v83;
  v77(v82 + v76, v57, v66);
  v135 = v79;
  v136 = &type metadata for Bool;
  v137 = v80;
  v138 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v84 = v103;
  sub_10079DC14();

  (*(v104 + 8))(v78, v84);
  return (*(v96 + 8))(v87, v97);
}

uint64_t sub_100268798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v106 = a2;
  v126 = a1;
  v120 = a7;
  sub_10079C2A4();
  sub_10079D1C4();
  v11 = sub_10079C2A4();
  v12 = sub_10079CAC4();
  v166 = a5;
  v167 = &protocol witness table for _OpacityEffect;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_10026DB50(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
  v164 = WitnessTable;
  v165 = v14;
  v15 = swift_getWitnessTable();
  v16 = sub_10026DB50(&qword_100AD7B90, &type metadata accessor for ConcentricRectangle);
  *&v135 = v11;
  *(&v135 + 1) = v12;
  *&v136 = v15;
  *(&v136 + 1) = v16;
  swift_getOpaqueTypeMetadata2();
  sub_1001F1234(&qword_100AD7B98);
  sub_10079C2A4();
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  v122 = sub_10079E184();
  v119 = sub_1007A3454();
  v17 = sub_10079DEF4();
  v18 = sub_10079C2A4();
  v103 = *(v18 - 8);
  __chkstk_darwin(v18);
  v102 = &v91 - v19;
  v125 = v20;
  v21 = sub_10079C2A4();
  v110 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v105 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v104 = &v91 - v25;
  v124 = v17;
  v101 = *(v17 - 8);
  __chkstk_darwin(v24);
  v108 = &v91 - v26;
  v123 = v27;
  v28 = sub_1007A3454();
  v29 = *(v28 - 8);
  v117 = v28;
  v118 = v29;
  v30 = __chkstk_darwin(v28);
  v115 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v116 = &v91 - v32;
  v33 = sub_10079C894();
  v100 = *(v33 - 8);
  v34 = __chkstk_darwin(v33);
  v98 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v99 = &v91 - v36;
  v112 = a3;
  v113 = a4;
  *&v135 = a3;
  *(&v135 + 1) = a4;
  v114 = a5;
  *&v136 = a5;
  *(&v136 + 1) = a6;
  v37 = type metadata accessor for HalfSheet();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v91 - v39;
  v41 = sub_1001F1160(&qword_100AD7BC8);
  v96 = *(v41 - 8);
  v97 = v41;
  __chkstk_darwin(v41);
  v95 = &v91 - v42;
  v107 = sub_1001F1160(&qword_100AD7BD0);
  v43 = *(v107 - 8);
  v44 = __chkstk_darwin(v107);
  v94 = &v91 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v93 = &v91 - v46;
  v109 = sub_1001F1160(&qword_100AD7B88);
  v47 = __chkstk_darwin(v109);
  v111 = &v91 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v50 = &v91 - v49;
  v51 = (v126 + *(v37 + 68));
  v52 = *v51;
  v53 = *(v51 + 1);
  LOBYTE(v135) = v52;
  *(&v135 + 1) = v53;
  sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  if (v127 == 1)
  {
    v54 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    v55 = *(v37 + 60);
    v92 = v33;
    v56 = a6;
    v57 = v126;
    if (*(v126 + v55))
    {
      v58 = 0.4;
    }

    else
    {
      v58 = 0.01;
    }

    sub_10079E474();
    sub_10079C414();
    *&v127 = v54;
    WORD4(v127) = 256;
    *&v128 = v58;
    BYTE8(v134[1]) = 0;
    (*(v38 + 16))(v40, v57, v37);
    v59 = (*(v38 + 80) + 48) & ~*(v38 + 80);
    v60 = swift_allocObject();
    v61 = v113;
    *(v60 + 2) = v112;
    *(v60 + 3) = v61;
    *(v60 + 4) = v114;
    *(v60 + 5) = v56;
    (*(v38 + 32))(&v60[v59], v40, v37);
    sub_1001F1160(&qword_100AD7BE8);
    sub_10026D578();
    v62 = v95;
    sub_10079D764();

    v141 = v133;
    v142[0] = v134[0];
    *(v142 + 9) = *(v134 + 9);
    v137 = v129;
    v138 = v130;
    v139 = v131;
    v140 = v132;
    v135 = v127;
    v136 = v128;
    sub_100007840(&v135, &qword_100AD7BE8);
    v63 = v99;
    sub_10079C884();
    v64 = v100;
    v65 = v92;
    (*(v100 + 16))(v98, v63, v92);
    sub_10026DB50(&qword_100AD7C28, &type metadata accessor for OpacityTransition);
    v66 = sub_10079BE84();
    (*(v64 + 8))(v63, v65);
    v67 = v94;
    (*(v96 + 32))(v94, v62, v97);
    v68 = v107;
    *(v67 + *(v107 + 36)) = v66;
    v69 = v93;
    sub_10002DA04(v67, v93);
    sub_10002DA04(v69, v50);
    (*(v43 + 56))(v50, 0, 1, v68);
  }

  else
  {
    (*(v43 + 56))(v50, 1, 1, v107);
  }

  v121 = v50;
  v70 = sub_100267328(v37);
  v71 = v123;
  if (v70)
  {
    __chkstk_darwin(v70);
    v148 = swift_getWitnessTable();
    v72 = swift_getWitnessTable();
    sub_10079DEE4();
    sub_10079D284();
    v147 = v72;
    v73 = v124;
    v74 = swift_getWitnessTable();
    v75 = v102;
    sub_10079DBE4();
    sub_10079D2B4();
    v145 = v74;
    v146 = &protocol witness table for _PaddingLayout;
    v76 = v125;
    v77 = swift_getWitnessTable();
    v78 = v105;
    sub_10079DBE4();
    (*(v103 + 8))(v75, v76);
    (*(v101 + 8))(v108, v73);
    v143 = v77;
    v144 = &protocol witness table for _PaddingLayout;
    v79 = swift_getWitnessTable();
    v80 = v104;
    sub_10039232C(v78, v71, v79);
    v81 = v110;
    v82 = *(v110 + 8);
    v82(v78, v71);
    sub_10039232C(v80, v71, v79);
    v82(v80, v71);
    v83 = v115;
    (*(v81 + 32))(v115, v78, v71);
    (*(v81 + 56))(v83, 0, 1, v71);
  }

  else
  {
    v83 = v115;
    (*(v110 + 56))(v115, 1, 1, v123);
    v163 = swift_getWitnessTable();
    v162 = swift_getWitnessTable();
    v160 = swift_getWitnessTable();
    v161 = &protocol witness table for _PaddingLayout;
    v158 = swift_getWitnessTable();
    v159 = &protocol witness table for _PaddingLayout;
    swift_getWitnessTable();
  }

  v85 = v117;
  v84 = v118;
  v86 = *(v118 + 16);
  v87 = v116;
  v86(v116, v83, v117);
  v88 = *(v84 + 8);
  v88(v83, v85);
  v89 = v111;
  sub_10002D92C(v121, v111);
  *&v135 = v89;
  v86(v83, v87, v85);
  *(&v135 + 1) = v83;
  *&v127 = v109;
  *(&v127 + 1) = v85;
  v156 = sub_10026D400();
  v155 = swift_getWitnessTable();
  v154 = swift_getWitnessTable();
  v152 = swift_getWitnessTable();
  v153 = &protocol witness table for _PaddingLayout;
  v150 = swift_getWitnessTable();
  v151 = &protocol witness table for _PaddingLayout;
  v149 = swift_getWitnessTable();
  v157 = swift_getWitnessTable();
  sub_10038FA94(&v135, 2uLL, &v127);
  v88(v87, v85);
  sub_10002D99C(v121);
  v88(v83, v85);
  return sub_10002D99C(v89);
}

uint64_t sub_1002696E8(void *a1)
{
  v3 = sub_10079D0E4();
  v18 = *(v3 - 8);
  v19 = v3;
  v4 = __chkstk_darwin(v3);
  v17 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v16 = sub_10079E524();
  v8 = a1[3];
  v20 = a1[2];
  v9 = v20;
  v21 = v8;
  v10 = a1[5];
  v22 = a1[4];
  v11 = v22;
  v23 = v10;
  v24 = v1;
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v12 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v9;
  *(v13 + 3) = v8;
  *(v13 + 4) = v11;
  *(v13 + 5) = v10;
  (*(v6 + 32))(&v13[v12], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v14 = v17;
  sub_10079D0D4();
  sub_10079BF84();

  return (*(v18 + 8))(v14, v19);
}

uint64_t sub_100269928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a2;
  v53 = a6;
  v57 = a7;
  v58 = a1;
  v50 = a3;
  sub_10079C2A4();
  sub_10079D1C4();
  v9 = sub_10079C2A4();
  v10 = sub_10079CAC4();
  v51 = a5;
  v66 = a5;
  v67 = &protocol witness table for _OpacityEffect;
  WitnessTable = swift_getWitnessTable();
  v65 = sub_10026DB50(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
  v60 = v9;
  v61 = v10;
  v62 = swift_getWitnessTable();
  v63 = sub_10026DB50(&qword_100AD7B90, &type metadata accessor for ConcentricRectangle);
  swift_getOpaqueTypeMetadata2();
  sub_1001F1234(&qword_100AD7B98);
  sub_10079C2A4();
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  v48 = sub_10079E5C4();
  v46 = swift_getWitnessTable();
  v11 = sub_10079E184();
  v55 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v49 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v43 - v14;
  v15 = a4;
  v16 = sub_1007A3454();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v43 - v19;
  v21 = *(a4 - 8);
  __chkstk_darwin(v18);
  v54 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1007A3454();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v56 = &v43 - v28;
  (*(v17 + 16))(v20, v58, v16);
  if ((*(v21 + 48))(v20, 1, v15) == 1)
  {
    (*(v17 + 8))(v20, v16);
    (*(v55 + 56))(v27, 1, 1, v11);
    swift_getWitnessTable();
    v29 = v56;
    (*(v24 + 16))(v56, v27, v23);
    v30 = *(v24 + 8);
    v30(v27, v23);
  }

  else
  {
    v45 = v21;
    v31 = *(v21 + 32);
    v32 = v54;
    v44 = v15;
    v33 = v31();
    __chkstk_darwin(v33);
    v34 = v51;
    *(&v43 - 8) = v50;
    *(&v43 - 7) = v15;
    v35 = v53;
    *(&v43 - 6) = v34;
    *(&v43 - 5) = v35;
    *(&v43 - 4) = v58;
    *(&v43 - 3) = v32;
    *(&v43 - 2) = v52;
    sub_10079CB24();
    v36 = v49;
    sub_10079E174();
    v37 = swift_getWitnessTable();
    v38 = v47;
    sub_10039232C(v36, v11, v37);
    v39 = v55;
    v40 = *(v55 + 8);
    v40(v36, v11);
    sub_10039232C(v38, v11, v37);
    v40(v38, v11);
    (*(v39 + 32))(v27, v36, v11);
    (*(v39 + 56))(v27, 0, 1, v11);
    v29 = v56;
    (*(v24 + 16))(v56, v27, v23);
    v30 = *(v24 + 8);
    v30(v27, v23);
    (*(v45 + 8))(v54, v44);
  }

  v59 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  sub_10039232C(v29, v23, v41);
  return (v30)(v29, v23);
}

uint64_t sub_10026A098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v112 = a7;
  v111 = a5;
  v109 = a3;
  v98 = a2;
  v113 = a8;
  v129 = a4;
  v130 = a5;
  v115 = a4;
  v131 = a6;
  v132 = a7;
  v86 = a6;
  v11 = type metadata accessor for HalfSheet();
  v108 = *(v11 - 8);
  v110 = *(v108 + 64);
  __chkstk_darwin(v11);
  v106 = &v79 - v12;
  v102 = sub_10079DED4();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v97 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10079CA64();
  v95 = *(v96 - 8);
  v14 = __chkstk_darwin(v96);
  v94 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(a4 - 1);
  __chkstk_darwin(v14);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10079C2A4();
  v90 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v79 - v19;
  sub_10079D1C4();
  v21 = sub_10079C2A4();
  v85 = v21;
  v93 = *(v21 - 8);
  __chkstk_darwin(v21);
  v81 = &v79 - v22;
  v23 = sub_10079CAC4();
  v127 = a6;
  v128 = &protocol witness table for _OpacityEffect;
  WitnessTable = swift_getWitnessTable();
  v25 = sub_10026DB50(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
  v125 = WitnessTable;
  v126 = v25;
  v26 = swift_getWitnessTable();
  v84 = v26;
  v83 = sub_10026DB50(&qword_100AD7B90, &type metadata accessor for ConcentricRectangle);
  v129 = v21;
  v130 = v23;
  v131 = v26;
  v132 = v83;
  v88 = &opaque type descriptor for <<opaque return type of View.glassEffect<A>(_:in:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v91 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v114 = &v79 - v27;
  sub_1001F1234(&qword_100AD7B98);
  v28 = sub_10079C2A4();
  v101 = *(v28 - 8);
  __chkstk_darwin(v28);
  v82 = &v79 - v29;
  v103 = v30;
  v89 = sub_10079C2A4();
  v105 = *(v89 - 8);
  v31 = __chkstk_darwin(v89);
  v107 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v99 = &v79 - v34;
  __chkstk_darwin(v33);
  v104 = &v79 - v35;
  v79 = v11;
  (*(a1 + *(v11 + 64)))(v98);
  v80 = a1;
  sub_10026744C();
  v36 = v115;
  v37 = v86;
  sub_10079DBB4();
  (*(v92 + 8))(v17, v36);
  v38 = v94;
  sub_10079CA34();
  v39 = v81;
  sub_10079D9D4();
  (*(v95 + 8))(v38, v96);
  (*(v90 + 8))(v20, v18);
  v40 = v97;
  sub_10079DEC4();
  v41 = swift_checkMetadataState();
  v42 = v85;
  v43 = v84;
  v44 = v83;
  sub_10079D6E4();
  (*(v100 + 8))(v40, v102);
  v45 = v39;
  v46 = v42;
  (*(v93 + 8))(v45, v42);
  v47 = v108;
  v48 = v106;
  v49 = v79;
  (*(v108 + 16))(v106, a1, v79);
  v50 = v47;
  v51 = (*(v47 + 80) + 48) & ~*(v47 + 80);
  v52 = swift_allocObject();
  v53 = v111;
  *(v52 + 2) = v115;
  *(v52 + 3) = v53;
  v54 = v112;
  *(v52 + 4) = v37;
  *(v52 + 5) = v54;
  (*(v50 + 32))(&v52[v51], v48, v49);
  type metadata accessor for CGSize(0);
  v129 = v46;
  v130 = v41;
  v55 = v82;
  v131 = v43;
  v132 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10026DB50(&unk_100AE40C0, type metadata accessor for CGSize);
  v57 = OpaqueTypeMetadata2;
  v58 = v114;
  sub_10079D874();

  v59 = v57;
  v60 = v80;
  (*(v91 + 8))(v58, v59);
  v61 = (v60 + v49[17]);
  v62 = *v61;
  v63 = *(v61 + 1);
  LOBYTE(v129) = v62;
  v130 = v63;
  sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  if (LOBYTE(v118[0]) == 1)
  {
    v64 = v49[18];
  }

  else
  {
    v64 = v49[20];
  }

  v65 = (v60 + v64);
  v66 = *v65;
  v67 = v65[1];
  v129 = v66;
  v130 = v67;
  sub_1001F1160(&qword_100AD7168);
  sub_10079DFF4();
  v68 = sub_100005920(&unk_100AD7C30, &qword_100AD7B98);
  v123 = OpaqueTypeConformance2;
  v124 = v68;
  v69 = v103;
  v70 = swift_getWitnessTable();
  v71 = v99;
  sub_10079DB64();
  (*(v101 + 8))(v55, v69);
  v121 = v70;
  v122 = &protocol witness table for _OffsetEffect;
  v72 = v89;
  v73 = swift_getWitnessTable();
  v74 = v104;
  sub_10039232C(v71, v72, v73);
  v75 = v105;
  v76 = *(v105 + 8);
  v76(v71, v72);
  v119 = 0;
  v120 = 1;
  v129 = &v119;
  v77 = v107;
  (*(v75 + 16))(v107, v74, v72);
  v130 = v77;
  v118[0] = &type metadata for Spacer;
  v118[1] = v72;
  v116 = &protocol witness table for Spacer;
  v117 = v73;
  sub_10038FA94(&v129, 2uLL, v118);
  v76(v74, v72);
  return (v76)(v77, v72);
}

uint64_t sub_10026ACC4@<X0>(void *a1@<X8>)
{
  result = sub_10079BEB4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10026ACF0()
{
  type metadata accessor for HalfSheet();
  sub_1001F1160(&qword_100AD7168);
  return sub_10079E004();
}

uint64_t sub_10026AD74()
{
  result = sub_10079BC74();
  if (v1 > 0.0)
  {
    sub_10079BC74();
    type metadata accessor for HalfSheet();
    sub_1001F1160(&qword_100AD7168);
    return sub_10079E004();
  }

  return result;
}

uint64_t sub_10026AE2C()
{
  sub_10079BC74();
  if (v0 <= 100.0 && (sub_10079BC94(), v1 <= 200.0))
  {
    sub_10079E4C4();
    sub_10079BD74();
    v4 = sub_10079BD44();
    __chkstk_darwin(v4);
    sub_10079C2D4();
  }

  else
  {
    v2 = type metadata accessor for HalfSheet();
    return sub_1002696E8(v2);
  }
}

uint64_t sub_10026AF68()
{
  type metadata accessor for HalfSheet();
  sub_1001F1160(&qword_100AD7168);
  return sub_10079E004();
}

uint64_t sub_10026AFEC(char a1, uint64_t a2, void **a3, uint64_t a4, uint64_t (*a5)(uint64_t a1), void *a6)
{
  v11 = a1 & 1;
  v12 = sub_1007A1C54();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v46 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1007A1CA4();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a3;
  v40 = a4;
  aBlock = a3;
  v52 = a4;
  v41 = a5;
  v42 = a6;
  v53 = a5;
  v54 = a6;
  v15 = type metadata accessor for HalfSheet();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  v50 = sub_1007A1CC4();
  v38 = *(v50 - 8);
  v20 = __chkstk_darwin(v50);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v36 - v23;
  result = sub_10026744C();
  v43 = v11;
  if ((result & 1) != v11)
  {
    sub_100017E74();
    v37 = sub_1007A2D74();
    sub_1007A1CB4();
    v36 = v24;
    sub_1007A1D24();
    v38 = *(v38 + 8);
    (v38)(v22, v50);
    (*(v16 + 16))(v19, a2, v15);
    v26 = (*(v16 + 80) + 48) & ~*(v16 + 80);
    v27 = swift_allocObject();
    v28 = v40;
    *(v27 + 2) = v39;
    *(v27 + 3) = v28;
    v29 = v42;
    *(v27 + 4) = v41;
    *(v27 + 5) = v29;
    (*(v16 + 32))(&v27[v26], v19, v15);
    v27[v26 + v17] = v43;
    v55 = sub_10026D310;
    v56 = v27;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_1003323D0;
    v54 = &unk_100A11568;
    v30 = _Block_copy(&aBlock);

    v31 = v44;
    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    sub_10026DB50(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    v32 = v46;
    v33 = v49;
    sub_1007A3594();
    v35 = v36;
    v34 = v37;
    sub_1007A2D04();
    _Block_release(v30);

    (*(v48 + 8))(v32, v33);
    (*(v45 + 8))(v31, v47);
    return (v38)(v35, v50);
  }

  return result;
}

uint64_t sub_10026B4F4(uint64_t a1, _BYTE *a2, uint64_t a3, void **a4, uint64_t a5, uint64_t (*a6)(uint64_t a1), void *a7)
{
  v47 = a3;
  v12 = sub_1007A1C54();
  v45 = *(v12 - 8);
  v46 = v12;
  __chkstk_darwin(v12);
  v43 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1007A1CA4();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a4;
  v39 = a5;
  aBlock = a4;
  v49 = a5;
  v40 = a6;
  v41 = a7;
  v50 = a6;
  v51 = a7;
  v16 = type metadata accessor for HalfSheet();
  v17 = *(v16 - 1);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v20 = sub_1007A1CC4();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v36 - v25;
  if (*a2 != 1)
  {
    return sub_1002696E8(v16);
  }

  sub_100017E74();
  v36 = sub_1007A2D74();
  sub_1007A1CB4();
  sub_1007A1D24();
  v37 = *(v21 + 8);
  v37(v24, v20);
  (*(v17 + 16))(v19, v47, v16);
  v27 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v28 = swift_allocObject();
  v29 = v39;
  *(v28 + 2) = v38;
  *(v28 + 3) = v29;
  v30 = v41;
  *(v28 + 4) = v40;
  *(v28 + 5) = v30;
  (*(v17 + 32))(&v28[v27], v19, v16);
  v52 = sub_10026D19C;
  v53 = v28;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_1003323D0;
  v51 = &unk_100A114F0;
  v31 = _Block_copy(&aBlock);

  sub_1007A1C74();
  aBlock = _swiftEmptyArrayStorage;
  sub_10026DB50(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  v32 = v43;
  v33 = v46;
  sub_1007A3594();
  v34 = v36;
  sub_1007A2D04();
  _Block_release(v31);

  (*(v45 + 8))(v32, v33);
  (*(v42 + 8))(v15, v44);
  return (v37)(v26, v20);
}

uint64_t sub_10026B9D8(uint64_t a1, void **a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), void *a5)
{
  v10 = sub_1007A1C54();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v48 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1007A1CA4();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v45 = a5;
  v46 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  v43 = a3;
  aBlock = a2;
  v53 = a3;
  v44 = a4;
  v54 = a4;
  v55 = a5;
  v13 = type metadata accessor for HalfSheet();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - v15;
  v17 = sub_1007A1CC4();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v38 - v22;
  result = sub_100267328(v13);
  if (result)
  {
    v25 = (a1 + *(v13 + 68));
    v26 = *v25;
    v27 = *(v25 + 1);
    LOBYTE(aBlock) = v26;
    v53 = v27;
    sub_1001F1160(&qword_100ADB850);
    result = sub_10079DFF4();
    if ((v58 & 1) == 0)
    {
      sub_100017E74();
      v39 = sub_1007A2D74();
      sub_1007A1CB4();
      sub_1007A1D24();
      v28 = *(v18 + 8);
      v40 = v17;
      v41 = v28;
      v28(v21, v17);
      (*(v14 + 16))(v16, a1, v13);
      v29 = (*(v14 + 80) + 48) & ~*(v14 + 80);
      v30 = swift_allocObject();
      v31 = v43;
      *(v30 + 2) = v42;
      *(v30 + 3) = v31;
      v32 = v45;
      *(v30 + 4) = v44;
      *(v30 + 5) = v32;
      (*(v14 + 32))(&v30[v29], v16, v13);
      v56 = sub_10026D0DC;
      v57 = v30;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1003323D0;
      v55 = &unk_100A114A0;
      v33 = _Block_copy(&aBlock);

      v34 = v46;
      sub_1007A1C74();
      aBlock = _swiftEmptyArrayStorage;
      sub_10026DB50(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001F1160(&unk_100AD7CA0);
      sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
      v35 = v48;
      v36 = v51;
      sub_1007A3594();
      v37 = v39;
      sub_1007A2D04();
      _Block_release(v33);

      (*(v50 + 8))(v35, v36);
      (*(v47 + 8))(v34, v49);
      return v41(v23, v40);
    }
  }

  return result;
}

uint64_t sub_10026BEF4(uint64_t a1)
{
  if (qword_100AD1340 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  __chkstk_darwin(a1);
  return sub_10079BF94();
}

uint64_t sub_10026BFDC()
{
  type metadata accessor for HalfSheet();
  sub_1001F1160(&qword_100ADB850);
  return sub_10079E004();
}

uint64_t sub_10026C064()
{
  type metadata accessor for HalfSheet();
  sub_1001F1160(&qword_100ADB850);
  sub_10079DFF4();
  if (v1 == 1)
  {
    sub_10079E004();
  }

  sub_1001F1160(&qword_100AD7168);
  return sub_10079E004();
}

uint64_t sub_10026C168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1007A3454();
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v13 = sub_10079E224();
  v14 = sub_1007A3454();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v21 - v16;
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v18 = type metadata accessor for HalfSheet();
  (*(v15 + 16))(v17, a1 + *(v18 + 52), v14);
  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v17, 1, v13) != 1)
  {
    (*(*(a3 - 8) + 56))(v12, 1, 1, a3);
    sub_10079E1D4();
    v15 = v19;
    v14 = v13;
  }

  return (*(v15 + 8))(v17, v14);
}

double sub_10026C380@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v15 = sub_1007A3454();
  (*(*(v15 - 8) + 32))(a8, a1, v15);
  v27 = a7;
  v16 = type metadata accessor for HalfSheet();
  v17 = v16[13];
  sub_10079E224();
  v18 = sub_1007A3454();
  (*(*(v18 - 8) + 32))(a8 + v17, a2, v18);
  *(a8 + v16[14]) = a3;
  *(a8 + v16[15]) = a4;
  v19 = (a8 + v16[16]);
  *v19 = a5;
  v19[1] = a6;
  v20 = a8 + v16[17];
  sub_10079DFE4();
  *v20 = LOBYTE(v27);
  *(v20 + 8) = a9;
  v21 = (a8 + v16[18]);
  sub_10079DFE4();
  *v21 = v27;
  *(v21 + 1) = a9;
  v22 = a8 + v16[19];
  sub_10079DFE4();
  *v22 = LOBYTE(v27);
  *(v22 + 8) = a9;
  v23 = (a8 + v16[20]);
  sub_10079DFE4();
  result = v27;
  *v23 = v27;
  *(v23 + 1) = a9;
  return result;
}

uint64_t sub_10026C588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v23 = a3;
  sub_1007A3454();
  v12 = sub_10079E224();
  v13 = sub_1007A3454();
  __chkstk_darwin(v13 - 8);
  v15 = &v22[-v14];
  __chkstk_darwin(v16);
  v18 = &v22[-v17];
  sub_10079E1C4();
  v19 = *(v12 - 8);
  (*(v19 + 16))(v15, a1, v12);
  (*(v19 + 56))(v15, 0, 1, v12);
  v20 = sub_10026C380(v18, v15, a2, v23, v24, v25, v26, a8, a7);
  return (*(v19 + 8))(a1, v12, v20);
}

void sub_10026C770()
{
  sub_1007A3454();
  if (v0 <= 0x3F)
  {
    sub_10079E224();
    sub_1007A3454();
    if (v1 <= 0x3F)
    {
      sub_100247D20();
      if (v2 <= 0x3F)
      {
        sub_10024BB84(319, &qword_100AE3F00);
        if (v3 <= 0x3F)
        {
          sub_10024BB84(319, &qword_100AD6F30);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10026C894(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 - 1;
  if (v7 < v7 - 1)
  {
    --v7;
  }

  if (v5)
  {
    v9 = *(*(*(a3 + 24) - 8) + 64);
  }

  else
  {
    v9 = *(*(*(a3 + 24) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v4 + 80);
  v11 = v10 | 7;
  v12 = (v10 | 7) + v9;
  v13 = ((v10 + 16) & ~v10) + v9;
  if (v7 < a2)
  {
    v14 = ((((((((((v13 + (v12 & ~v11) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v15 = a2 - v7;
    v16 = v14 & 0xFFFFFFF8;
    if ((v14 & 0xFFFFFFF8) != 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = v15 + 1;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *(a1 + v14);
        if (v20)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v20 = *(a1 + v14);
        if (v20)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v19)
    {
      v20 = *(a1 + v14);
      if (v20)
      {
LABEL_28:
        v21 = v20 - 1;
        if (v16)
        {
          v21 = 0;
          LODWORD(v16) = *a1;
        }

        return v7 + (v16 | v21) + 1;
      }
    }
  }

  if (v6 == v7)
  {
    if (v5 >= 2)
    {
      v27 = (*(v4 + 48))();
      if (v27 >= 2)
      {
        return v27 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v23 = (a1 + v12) & ~v11;
  if (v8 == v7)
  {
    v24 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v29 = (*(v4 + 48))((v24 + v10 + 8) & ~v10);
      v26 = v29 - 1;
      if (v29 < 2)
      {
        v26 = 0;
      }
    }

    else
    {
      v25 = *v24;
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      v26 = v25 + 1;
    }

    if (v26 >= 2)
    {
      return v26 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v28 = *((v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    return (v28 + 1);
  }
}

void sub_10026CAD4(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (v9 < v9 - 1)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = *(v6 + 80);
  v13 = (v12 | 7) + v11;
  v14 = ((v12 + 16) & ~v12) + v11;
  v15 = ((((((((((v14 + (v13 & ~(v12 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 < a3)
  {
    v16 = a3 - v10;
    if (((((((((((v14 + (v13 & ~(v12 | 7)) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v5 = v18;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v10)
  {
    if (((((((((((v14 + (v13 & ~(v12 | 7)) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = a2 - v10;
    }

    else
    {
      v19 = 1;
    }

    if (((((((((((v14 + (v13 & ~(v12 | 7)) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v20 = ~v10 + a2;
      v21 = a1;
      bzero(a1, v15);
      a1 = v21;
      *v21 = v20;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v15) = v19;
      }

      else
      {
        *(a1 + v15) = v19;
      }
    }

    else if (v5)
    {
      *(a1 + v15) = v19;
    }

    return;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

LABEL_40:
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (v5 == 2)
  {
    *(a1 + v15) = 0;
    goto LABEL_40;
  }

  *(a1 + v15) = 0;
  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v8 != v10)
  {
    v23 = ((a1 + v13) & ~(v12 | 7));
    if (v9 - 1 != v10)
    {
      v25 = (&v23[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        v26 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v26 = a2 - 1;
      }

      *v25 = v26;
      return;
    }

    if (a2 >= v9)
    {
      if (v14 <= 3)
      {
        v27 = ~(-1 << (8 * v14));
      }

      else
      {
        v27 = -1;
      }

      if (!v14)
      {
        return;
      }

      v28 = v27 & (a2 - v9);
      if (v14 <= 3)
      {
        v29 = v14;
      }

      else
      {
        v29 = 4;
      }

      bzero(((a1 + v13) & ~(v12 | 7)), v14);
      if (v29 <= 2)
      {
        if (v29 != 1)
        {
LABEL_80:
          *v23 = v28;
          return;
        }

LABEL_66:
        *v23 = v28;
        return;
      }
    }

    else
    {
      v24 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v8 & 0x80000000) == 0)
      {
        if (((a2 + 1) & 0x80000000) != 0)
        {
          *v24 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v24 = a2;
        }

        return;
      }

      v23 = ((v24 + v12 + 8) & ~v12);
      if (a2 < v8)
      {
        v22 = *(v6 + 56);
        goto LABEL_43;
      }

      if (v11 <= 3)
      {
        v30 = ~(-1 << (8 * v11));
      }

      else
      {
        v30 = -1;
      }

      if (!v11)
      {
        return;
      }

      v28 = v30 & (a2 - v8);
      if (v11 <= 3)
      {
        v29 = v11;
      }

      else
      {
        v29 = 4;
      }

      bzero(v23, v11);
      if (v29 <= 2)
      {
        if (v29 != 1)
        {
          goto LABEL_80;
        }

        goto LABEL_66;
      }
    }

    if (v29 == 3)
    {
      *v23 = v28;
      v23[2] = BYTE2(v28);
    }

    else
    {
      *v23 = v28;
    }

    return;
  }

  v22 = *(v6 + 56);
LABEL_43:

  v22();
}

uint64_t sub_10026CEA4(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(type metadata accessor for HalfSheet() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

uint64_t sub_10026CF5C(char a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for HalfSheet() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_10026AFEC(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_10026D008(uint64_t a1, _BYTE *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for HalfSheet() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_10026B4F4(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_10026D260(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for HalfSheet() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_10026D310()
{
  type metadata accessor for HalfSheet();
  type metadata accessor for HalfSheet();
  return sub_1002674AC();
}

unint64_t sub_10026D400()
{
  result = qword_100AD7BD8;
  if (!qword_100AD7BD8)
  {
    sub_1001F1234(&qword_100AD7B88);
    sub_10026D484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7BD8);
  }

  return result;
}

unint64_t sub_10026D484()
{
  result = qword_100AD7BE0;
  if (!qword_100AD7BE0)
  {
    sub_1001F1234(&qword_100AD7BD0);
    sub_1001F1234(&qword_100AD7BE8);
    sub_10026D578();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD7220, &qword_100AD7228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7BE0);
  }

  return result;
}

unint64_t sub_10026D578()
{
  result = qword_100AD7BF0;
  if (!qword_100AD7BF0)
  {
    sub_1001F1234(&qword_100AD7BE8);
    sub_10026D630();
    sub_100005920(&qword_100AD5558, &qword_100AD5560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7BF0);
  }

  return result;
}

unint64_t sub_10026D630()
{
  result = qword_100AD7BF8;
  if (!qword_100AD7BF8)
  {
    sub_1001F1234(&qword_100AD7C00);
    sub_10026D6BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7BF8);
  }

  return result;
}

unint64_t sub_10026D6BC()
{
  result = qword_100AD7C08;
  if (!qword_100AD7C08)
  {
    sub_1001F1234(&qword_100AD7C10);
    sub_100005920(&qword_100AD7C18, &qword_100AD7C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7C08);
  }

  return result;
}

uint64_t sub_10026D7A4()
{
  type metadata accessor for HalfSheet();
  v0 = type metadata accessor for HalfSheet();
  return sub_1002696E8(v0);
}

uint64_t sub_10026D854()
{
  v9 = *(v0 + 24);
  v1 = type metadata accessor for HalfSheet();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));
  v3 = *(v9 - 8);
  v4 = *(v3 + 48);
  if (!v4(v2, 1, v9))
  {
    (*(v3 + 8))(v2, v9);
  }

  v5 = v2 + *(v1 + 52);
  sub_1007A3454();
  v6 = sub_10079E224();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v6 + 32);
    if (!v4(v5 + v7, 1, v9))
    {
      (*(v3 + 8))(v5 + v7, v9);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10026DAA4()
{
  type metadata accessor for HalfSheet();

  return sub_10026ACF0();
}

uint64_t sub_10026DB50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10026DBC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = a1;
}

uint64_t sub_10026DC10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  a2[3] = a1;
  *a2 = v3;
}

uint64_t sub_10026DC28()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD7C40);
  sub_100008B98(v0, qword_100AD7C40);
  return sub_10079ACD4();
}

uint64_t AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.getter()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.setter()
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

uint64_t (*AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC5Books36AudiobookNowPlayingNavigationHandler_delegate;
  a1[1] = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_navigationHandler);
  a1[2] = v3;
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  *a1 = Strong;
  return sub_10026DF18;
}

uint64_t sub_10026DF18(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a2)
  {
    if (!Strong)
    {
      goto LABEL_7;
    }

    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectWeakAssign();
  }

LABEL_7:

  return swift_unknownObjectRelease();
}

uint64_t sub_10026E030()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_10026E114()
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

id sub_10026E374()
{
  swift_beginAccess();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_10026E428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_10026E498(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_10026E54C()
{
  v1 = (*((swift_isaMask & *v0) + 0x240))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007A3784();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v0];
      [v6 addInteraction:v8];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cachedPointerInteractionViews) = v2;
}

id AudiobookNowPlayingTouchViewController.__deallocating_deinit()
{
  (*((swift_isaMask & *v0) + 0x1E0))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:"onAppWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
  sub_10026E9A4();
}

uint64_t sub_10026E9A4()
{
  v0 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v3 = sub_1001F1160(&qword_100AD7EB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - v5;
  v7 = sub_1001F1160(&unk_100AD7EC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  swift_beginAccess();
  sub_1001F1160(&qword_100AD50A8);
  sub_10079B974();
  swift_endAccess();
  sub_10000A7C4(0, &qword_100AD1E10);
  v11 = sub_1007A2D74();
  v14[1] = v11;
  v12 = sub_1007A2D24();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  sub_100005920(&unk_100AD7ED0, &qword_100AD7EB8);
  sub_100017E1C();
  sub_10079BAB4();
  sub_100007840(v2, &qword_100AD7EB0);

  (*(v4 + 8))(v6, v3);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AD7EE0, &unk_100AD7EC0);
  sub_10079BB04();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.viewDidLayoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  objc_msgSendSuper2(&v3, "viewDidLayoutSubviews");
  v1 = OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_contentOpenAnimator;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    [v2 bookContentDidLoad];
  }

  *&v0[v1] = 0;
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  objc_msgSendSuper2(&v3, "viewWillAppear:", a1);
  [v1 setNeedsStatusBarAppearanceUpdate];
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  objc_msgSendSuper2(&v5, "viewDidAppear:", a1);
  v3 = [v1 ba_effectiveAnalyticsTracker];
  v4 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker];
  *&v1[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker] = v3;

  sub_10026F058();
}

void sub_10026F058()
{
  v1 = sub_100270FB4();
  if (*(v1 + 16))
  {
    v2 = OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_amsEngagement;
    v3 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_amsEngagement];
    if (v3 || (v4 = [objc_opt_self() defaultBag], v5 = objc_msgSend(objc_allocWithZone(AMSEngagement), "initWithBag:", v4), v4, v6 = *&v0[v2], *&v0[v2] = v5, v6, (v3 = *&v0[v2]) != 0))
    {
      v7 = 1 << *(v1 + 32);
      v8 = -1;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      v9 = v8 & *(v1 + 56);
      v10 = (v7 + 63) >> 6;
      v27 = v3;

      v11 = 0;
      if (v9)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {

          v15 = [v0 bc_effectiveEngagementProvider];
          if (v15)
          {
            v16 = v15;
            sub_100271130();
            isa = sub_1007A2824().super.isa;

            v18 = swift_allocObject();
            swift_unknownObjectWeakInit();
            aBlock[4] = sub_10027352C;
            aBlock[5] = v18;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100271678;
            aBlock[3] = &unk_100A116A8;
            v19 = _Block_copy(aBlock);

            [v16 fetchDialogRequestsFor:isa completion:v19];
            _Block_release(v19);

            swift_unknownObjectRelease();
            return;
          }

          if (qword_100AD1348 == -1)
          {
LABEL_20:
            v20 = sub_10079ACE4();
            sub_100008B98(v20, qword_100AD7C40);
            v21 = sub_10079ACC4();
            v22 = sub_1007A29B4();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&_mh_execute_header, v21, v22, "No Engagement provider found", v23, 2u);
            }

            goto LABEL_23;
          }

LABEL_31:
          swift_once();
          goto LABEL_20;
        }

        v9 = *(v1 + 56 + 8 * v12);
        ++v11;
        if (v9)
        {
          v11 = v12;
          do
          {
LABEL_12:
            v9 &= v9 - 1;

            v13 = sub_1007A2214();
            v14 = sub_1007A2214();
            [v27 addObserver:v0 placement:v13 serviceType:v14];
          }

          while (v9);
          continue;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    if (qword_100AD1348 != -1)
    {
      swift_once();
    }

    v24 = sub_10079ACE4();
    sub_100008B98(v24, qword_100AD7C40);
    v27 = sub_10079ACC4();
    v25 = sub_1007A29B4();
    if (os_log_type_enabled(v27, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v27, v25, "AMSEngagement is nil.", v26, 2u);
    }

LABEL_23:
  }

  else
  {
  }
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  objc_msgSendSuper2(&v4, "viewWillDisappear:", a1);
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong audiobookNowPlayingViewControllerWillDisappear:v1];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10026F79C()
{
  sub_100797C64();
  result = sub_100797C44();
  if (result)
  {
    v2 = result;
    result = swift_unknownObjectRelease();
    if (v2 == v0)
    {
      return sub_100797C54();
    }
  }

  return result;
}

id sub_10026F8C4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v8)
  {
    if (v7 == a1 && v8 == a2)
    {
    }

    else
    {
      v6 = sub_1007A3AB4();

      if ((v6 & 1) == 0)
      {
        return result;
      }
    }

    return [*(v2 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) togglePlayPause];
  }

  return result;
}

id AudiobookNowPlayingTouchViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1007A2214();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_10026FD60()
{

  v0 = sub_1007A2214();

  return v0;
}

id sub_10026FDEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiobookAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id AudiobookNowPlayingTouchViewController.asset.getter()
{
  v0 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v3 = sub_1007969B4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v10 = v25;
  if (!v25)
  {
    return 0;
  }

  v11 = v24;
  sub_1007969A4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {

    sub_100007840(v2, &unk_100AD5AC0);
    return 0;
  }

  (*(v4 + 32))(v9, v2, v3);
  v22 = *(v4 + 16);
  v22(v7, v9, v3);
  swift_getKeyPath();
  v21 = v11;
  swift_getKeyPath();
  sub_10079B9A4();

  v13 = v24;
  v14 = v25;
  v15 = type metadata accessor for AudiobookAsset();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR___BKAudiobookAsset_audiobookAssetID];
  *v17 = v21;
  *(v17 + 1) = v10;
  v22(&v16[OBJC_IVAR___BKAudiobookAsset_audiobookURL], v7, v3);
  v18 = &v16[OBJC_IVAR___BKAudiobookAsset_audiobookDisplayTitle];
  *v18 = v13;
  *(v18 + 1) = v14;
  v23.receiver = v16;
  v23.super_class = v15;
  v19 = objc_msgSendSuper2(&v23, "init");
  v20 = *(v4 + 8);
  v20(v7, v3);
  v20(v9, v3);
  return v19;
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.open(_:)(Swift::Bool a1)
{
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002D650C(0, a1);

    swift_unknownObjectRelease();
  }
}

uint64_t AudiobookNowPlayingTouchViewController.open(toLocation:animated:)(uint64_t a1, char a2)
{
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1002D650C(a1, a2 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.close(_:)(Swift::Bool a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = (Strong + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
    swift_beginAccess();
    v4 = [*(*sub_10000E3E8(v3 v3[3]) + OBJC:"state" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)] - 4 < 0xFFFFFFFFFFFFFFFELL;
    sub_1002D31C8(a1, v4, 0);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.saveStateClosing(_:suspending:)(Swift::Bool _, Swift::Bool suspending)
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.requestClose(_:)(Swift::Bool a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002D6C60(a1);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.assetViewControllerDidOpen(animated:)(Swift::Bool animated)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002D7578();

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.assetViewControllerWillUnload()()
{
  (*((swift_isaMask & *v0) + 0x1E0))();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = (Strong + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
    swift_beginAccess();
    [*(*sub_10000E3E8(v2 v2[3]) + OBJC:"removeObserver:" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    swift_unknownObjectRelease();
  }
}

void AudiobookNowPlayingTouchViewController.didPurchase(withProductProfile:completion:)(uint64_t a1, void (*a2)(uint64_t))
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRetain();
      v3 = swift_unknownObjectRelease();
      a2(v3);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100AD1348 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100AD7C40);
    oslog = sub_10079ACC4();
    v5 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Wrong type of user publishing product profile", v6, 2u);
    }
  }
}

uint64_t AudiobookNowPlayingTouchViewController.setDownloadState(_:assetState:progressValue:)(uint64_t a1, unsigned __int16 a2, float a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1002CE464(a1, a2, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall AudiobookNowPlayingTouchViewController.shouldCloseDueToAssetDeletion()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = sub_1002D6D08();
    swift_unknownObjectRelease();
    LOBYTE(Strong) = v1 & 1;
  }

  return Strong;
}

UIView_optional __swiftcall AudiobookNowPlayingTouchViewController.transitionContentView()()
{
  v1 = [v0 view];

  v2 = v1;
  result.value.super.super.isa = v2;
  result.is_nil = v3;
  return result;
}

UIViewContentMode __swiftcall AudiobookNowPlayingTouchViewController.coverContentMode()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 verticalSizeClass];

  if (v2 == 1)
  {
    return 2;
  }

  v4 = [v0 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id AudiobookNowPlayingTouchViewController.trackerForAudiobookAnalytics.getter()
{
  v1 = [v0 ba_effectiveAnalyticsTracker];

  return v1;
}

id AudiobookNowPlayingTouchViewController.analyticsData()()
{
  v1 = [*(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) analyticsData];

  return v1;
}

uint64_t sub_100270FB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_1001F1160(&qword_100AD7EA0);
  sub_100005920(&qword_100AD7EA8, &qword_100AD7EA0);
  v0 = sub_1007A28A4();

  if (v0)
  {
    v1 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_10000B3D8((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0xD00000000000001FLL;
    *(v4 + 5) = 0x80000001008BF9F0;
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v5 = sub_10040E374(v1);

  return v5;
}

void sub_100271130()
{
  v1 = OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider;
  v2 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider);
  if (v2)
  {
    v12 = v2;
    v3 = sub_100270FB4();
    v4 = [v12 placement];
    v5 = sub_1007A2254();
    v7 = v6;

    LOBYTE(v4) = sub_100368400(v5, v7, v3);

    if ((v4 & 1) != 0 || (v8 = *(v0 + v1)) == 0)
    {
      v11 = v12;
    }

    else
    {
      v9 = v8;
      v10 = [v9 viewController];
      [v10 dismissViewControllerAnimated:1 completion:0];

      v11 = *(v0 + v1);
      *(v0 + v1) = 0;
    }
  }
}

void sub_10027125C(uint64_t a1)
{
  v34 = sub_1007A1C54();
  v2 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1007A1CA4();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = a1 + 64;
    v7 = 1 << *(a1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a1 + 64);
    v10 = (v7 + 63) >> 6;
    v29 = (v2 + 8);
    v30 = v40;
    v28 = (v4 + 8);
    v35 = a1;

    v11 = 0;
    while (v9)
    {
      v12 = v11;
LABEL_10:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v12 << 6);
      v15 = (*(v35 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v35 + 56) + 8 * v14);
      sub_10000A7C4(0, &qword_100AD1E10);

      v19 = v18;
      v38 = sub_1007A2D74();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = v19;
      v21[4] = v16;
      v21[5] = v17;
      v40[2] = sub_1002735EC;
      v40[3] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v40[0] = sub_1003323D0;
      v40[1] = &unk_100A116F8;
      v22 = _Block_copy(aBlock);
      v37 = v19;

      v23 = v31;
      sub_1007A1C74();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100265BDC();
      sub_1001F1160(&unk_100AD7CA0);
      sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
      v25 = v33;
      v24 = v34;
      sub_1007A3594();
      v26 = v38;
      sub_1007A2D94();
      _Block_release(v22);

      (*v29)(v25, v24);
      (*v28)(v23, v32);
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_100271678(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_10000A7C4(0, &qword_100AD7E98);
  v5 = sub_1007A2044();

  v6 = a3;
  v4(v5, a3);
}

void sub_100271738(uint64_t a1)
{
  v3 = objc_allocWithZone(BCMessageViewControllerProvider);
  v4 = sub_1007A2214();
  v5 = [v3 initWithRequest:a1 placement:v4];

  v6 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider);
  *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider) = v5;
  v7 = v5;

  [v7 setDelegate:v1];
  v12 = [v7 viewController];
  [v12 setModalPresentationStyle:7];
  v8 = [v12 popoverPresentationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 setDelegate:v1];
    v11 = (*((swift_isaMask & *v1) + 0x230))(v10);
    [v9 setSourceView:v11];

    [v9 setPermittedArrowDirections:15];
    [v1 presentViewController:v12 animated:1 completion:0];

    v7 = v12;
    v12 = v9;
  }
}

void sub_1002718F8(uint64_t a1)
{
  v3 = objc_allocWithZone(BCMessageViewControllerProvider);
  v4 = sub_1007A2214();
  v5 = [v3 initWithRequest:a1 placement:v4];

  v6 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider);
  *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider) = v5;
  v7 = v5;

  [v7 setDelegate:v1];
  v8 = [v7 viewController];
  [v8 setModalPresentationStyle:7];
  v10 = [v8 popoverPresentationController];
  if (v10)
  {
    [v10 setDelegate:v1];
    v9 = [v1 view];
    [v10 setSourceView:v9];

    (*((swift_isaMask & *v1) + 0x238))(v12);
    if ((v13 & 1) == 0)
    {
      [v10 setSourceRect:{v12[0], v12[1], v12[2], v12[3]}];
    }

    [v10 setPermittedArrowDirections:{15, v10}];
    [v1 presentViewController:v8 animated:1 completion:0];

    v7 = v8;
  }

  else
  {
    v11 = v8;
  }
}

void sub_100271B0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a2 style] - 3 <= 1 && !*&v8[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider])
    {
      if (a3 == 0xD00000000000001FLL && 0x80000001008BF9F0 == a4 || (sub_1007A3AB4() & 1) != 0)
      {
        sub_100271738(a2);
      }

      else if (a3 == 0xD000000000000024 && 0x80000001008BFB90 == a4 || (sub_1007A3AB4() & 1) != 0)
      {
        sub_1002718F8(a2);
      }
    }
  }
}

void AudiobookNowPlayingTouchViewController.messageViewControllerDidSelectCancel(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_1007A1C54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v2 presentedViewController];
  v12 = [a1 viewController];
  if (v18)
  {
    if (v12)
    {
      v17 = v12;
      sub_10000A7C4(0, &qword_100AD7CB0);
      v13 = sub_1007A3184();

      if ((v13 & 1) == 0)
      {
        return;
      }

      goto LABEL_6;
    }

    v12 = v18;
  }

  else if (!v12)
  {
LABEL_6:
    sub_10000A7C4(0, &qword_100AD1E10);
    v18 = sub_1007A2D74();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100272ED0;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A11608;
    v15 = _Block_copy(aBlock);

    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100265BDC();
    v17 = v8;
    sub_1001F1160(&unk_100AD7CA0);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    sub_1007A3594();
    v16 = v18;
    sub_1007A2D94();
    _Block_release(v15);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v17);
    return;
  }
}

void sub_10027205C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider;
    v3 = *(Strong + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider);
    if (v3)
    {
      v4 = v3;
      v5 = [v4 viewController];
      [v5 dismissViewControllerAnimated:1 completion:0];

      v6 = *&v1[v2];
      *&v1[v2] = 0;

      v1 = v6;
    }
  }
}

void sub_100272248()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10026F058();
  }
}

UIModalPresentationStyle __swiftcall AudiobookNowPlayingTouchViewController.adaptivePresentationStyle(for:)(UIPresentationController a1)
{
  v3 = [v1 traitCollection];
  v4 = [v1 adaptivePresentationStyleForPresentationController:a1.super.isa traitCollection:v3];

  return v4;
}

UIModalPresentationStyle __swiftcall AudiobookNowPlayingTouchViewController.adaptivePresentationStyle(for:traitCollection:)(UIPresentationController a1, UITraitCollection traitCollection)
{
  v2 = [(objc_class *)a1.super.isa presentedViewController];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();

  if (v3)
  {
    return -1;
  }

  else
  {
    return 5;
  }
}

UIPointerRegion_optional __swiftcall AudiobookNowPlayingTouchViewController.pointerInteraction(_:regionFor:defaultRegion:)(UIPointerInteraction _, UIPointerRegionRequest regionFor, UIPointerRegion defaultRegion)
{
  v3 = sub_100272FDC(_.super.isa);
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t sub_10027254C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002725CC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_10079B9B4();
}

double sub_10027264C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002726CC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_10079B9B4();
}

uint64_t type metadata accessor for AudiobookAsset()
{
  result = qword_100AD7DA8;
  if (!qword_100AD7DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100272798()
{
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cancellables) = &_swiftEmptySetSingleton;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_contentOpenAnimator) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_bookPositionProcessor) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_amsEngagement) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cachedPointerInteractionViews) = 0;
  sub_1007A38A4();
  __break(1u);
}

void sub_100272878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      (*(a3 + 16))(a3);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100AD1348 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100AD7C40);
    oslog = sub_10079ACC4();
    v5 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Wrong type of user publishing product profile", v6, 2u);
    }
  }
}

uint64_t sub_100272A14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007A1C54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A1CA4();
  v24 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v11;
  v26 = v7;
  if (a2 != 0xD00000000000001FLL || 0x80000001008BF9F0 != a3)
  {
    result = sub_1007A3AB4();
    if ((result & 1) == 0)
    {
      if (!a1)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  if (a1)
  {
LABEL_7:
    sub_10000A7C4(0, &qword_100AD1E10);
    v18 = a1;
    v15 = sub_1007A2D74();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v18;
    v20[4] = a2;
    v20[5] = a3;
    v31 = sub_10027350C;
    v32 = v20;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1003323D0;
    v30 = &unk_100A11658;
    v21 = _Block_copy(&aBlock);
    v22 = v18;

    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    sub_100265BDC();
    sub_1001F1160(&unk_100AD7CA0);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v21);

    goto LABEL_8;
  }

  sub_10000A7C4(0, &qword_100AD1E10);
  v15 = sub_1007A2D74();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = sub_100273594;
  v32 = v16;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1003323D0;
  v30 = &unk_100A11680;
  v17 = _Block_copy(&aBlock);

  sub_1007A1C74();
  aBlock = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v17);
LABEL_8:

  (*(v26 + 8))(v9, v6);
  return (*(v24 + 8))(v13, v25);
}

void _s5Books38AudiobookNowPlayingTouchViewControllerC07messagefG0_16didFailWithErrorySo09BCMessagefG8ProviderC_s0L0_pSgtF_0()
{
  if (qword_100AD1348 != -1)
  {
    swift_once();
  }

  v0 = sub_10079ACE4();
  sub_100008B98(v0, qword_100AD7C40);
  oslog = sub_10079ACC4();
  v1 = sub_1007A29B4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Message View Controller did fail to load", v2, 2u);
  }
}

id sub_100272FDC(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cachedPointerInteractionViews);
    if (v4 && (v8 = result, __chkstk_darwin(result), v7[2] = &v8, , v5 = sub_10058D090(sub_1002735C8, v7, v4), , (v5 & 1) != 0) && ([v3 bounds], UIRectInset(), v10.origin.x = 0.0, v10.origin.y = 0.0, v10.size.width = 0.0, v10.size.height = 0.0, !CGRectEqualToRect(v9, v10)))
    {
      sub_10000A7C4(0, &qword_100AD7E90);
      sub_1007A2B84();
      v6 = sub_1007A2B94();

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id _s5Books38AudiobookNowPlayingTouchViewControllerC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0lI0C_So0L6RegionCtF_0(void *a1)
{
  v3 = sub_1001F1160(&unk_100AE7EA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_10079B1D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [a1 view];
  if (result)
  {
    v11 = result;
    v12 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cachedPointerInteractionViews);
    if (v12 && (v19 = result, __chkstk_darwin(result), *(&v18 - 2) = &v19, , v13 = sub_10058D090(sub_100273488, (&v18 - 4), v12), , (v13 & 1) != 0))
    {
      v14 = [objc_allocWithZone(UITargetedPreview) initWithView:v11];
      sub_10000A7C4(0, &unk_100AD7E80);
      *v9 = v14;
      (*(v7 + 104))(v9, enum case for UIPointerEffect.automatic(_:), v6);
      v15 = sub_10079B0F4();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      v16 = v14;
      v17 = sub_1007A2AE4();

      return v17;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1002733EC()
{
  result = sub_1007969B4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100273534()
{

  return swift_deallocObject();
}

uint64_t sub_1002735F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100273638(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_100273694(uint64_t a1)
{
  result = sub_100258B14();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002736D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v86 = sub_100796CF4();
  v90 = *(v86 - 8);
  v3 = __chkstk_darwin(v86);
  v83 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v85 = v71 - v5;
  v84 = sub_1007A21D4();
  v89 = *(v84 - 8);
  v6 = __chkstk_darwin(v84);
  v81 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v82 = v71 - v8;
  v77 = sub_10079CF24();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100ADB860);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v71 - v12;
  v72 = sub_1001F1160(&qword_100AD7F50);
  v14 = *(v72 - 8);
  __chkstk_darwin(v72);
  v16 = v71 - v15;
  v74 = sub_1001F1160(&qword_100AD7F58);
  __chkstk_darwin(v74);
  v18 = v71 - v17;
  v79 = sub_1001F1160(&qword_100AD7F60);
  v19 = __chkstk_darwin(v79);
  v80 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v91 = v71 - v21;
  v22 = *(v1 + 16);
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *&v96[0] = v22;
  v24 = sub_1002747B0(&qword_100ADB430, type metadata accessor for REActionMenuState);
  v73 = v23;
  v71[1] = v24;
  sub_100797A14();

  swift_beginAccess();
  v25 = *(v22 + 297);
  sub_1002743DC(v2, v96);
  v26 = swift_allocObject();
  sub_100274414(v96, v26 + 16);
  *v93 = 0;
  *&v93[8] = 0xE000000000000000;
  v78 = sub_100206ECC();
  sub_10079E084();
  v27 = *v2;
  if (*v2)
  {
    v88 = *(v2 + 24);
    v28 = v27;
    if (v25)
    {
      v29 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
      v30 = sub_10079DD74();
    }

    else
    {
      v29 = sub_10079DE34();
      v30 = 0;
    }

    *v93 = v28;
    *&v93[8] = v88;
    *&v93[24] = 0xD000000000000011;
    *&v94 = 0x80000001008C6380;
    BYTE8(v94) = 1;
    *&v95 = v29;
    *(&v95 + 1) = v30;
    sub_10027444C();
    sub_1002744B0();
    sub_10079D6B4();
    v96[0] = *v93;
    v96[1] = *&v93[16];
    v96[2] = v94;
    v96[3] = v95;
    sub_100274504(v96);
    (*(v11 + 8))(v13, v10);
    v92 = 0;
    sub_10079DFE4();
    v31 = v93[0];
    v32 = *&v93[8];
    (*(v14 + 32))(v18, v16, v72);
    v33 = &v18[*(v74 + 36)];
    *v33 = v88;
    v33[8] = v31;
    *(v33 + 2) = v32;
    sub_1002743DC(v2, v93);
    v34 = swift_allocObject();
    sub_100274414(v93, v34 + 16);
    v35 = v75;
    sub_10079CF14();
    sub_1002745BC();
    sub_10079D934();

    (*(v76 + 8))(v35, v77);
    sub_100007840(v18, &qword_100AD7F58);
    swift_getKeyPath();
    *v93 = v22;
    sub_100797A14();

    v36 = (v89 + 16);
    v37 = (v90 + 16);
    v38 = v82;
    sub_1007A2154();
    v39 = v85;
    sub_100796C94();
    v40 = *v36;
    v77 = v36 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41 = v81;
    v42 = v38;
    v43 = v84;
    *&v88 = v40;
    v40(v81, v38);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v45 = objc_opt_self();
    v76 = ObjCClassFromMetadata;
    v46 = [v45 bundleForClass:ObjCClassFromMetadata];
    v47 = *v37;
    v72 = v37 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v48 = v83;
    v49 = v39;
    v50 = v39;
    v51 = v86;
    v73 = v47;
    v47(v83, v50, v86);
    v52 = v48;
    v75 = sub_1007A22D4();
    v74 = v53;
    v90 = *(v90 + 8);
    v54 = v49;
    (v90)(v49, v51);
    v55 = *(v89 + 8);
    v55(v42, v43);
    sub_1007A2154();
    sub_100796C94();
    (v88)(v41, v42, v43);
    type metadata accessor for BundleFinder();
    v56 = [objc_opt_self() bundleForClass:v76];
    v73(v52, v49, v51);
    v57 = sub_1007A22D4();
    v59 = v58;
    (v90)(v54, v51);
    v55(v42, v43);
    *v93 = v57;
    *&v93[8] = v59;
    v60 = sub_10079D5D4();
    v62 = v61;
    v64 = v63;
    v65 = v80;
    sub_10079C144();
    sub_10020B430(v60, v62, v64 & 1);

    *v93 = v75;
    *&v93[8] = v74;
    v66 = sub_10079D5D4();
    v68 = v67;
    LOBYTE(v60) = v69;
    sub_10079C154();
    sub_10020B430(v66, v68, v60 & 1);

    sub_100007840(v65, &qword_100AD7F60);
    return sub_100007840(v91, &qword_100AD7F60);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1002747B0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100274368(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 48);
    ObjectType = swift_getObjectType();
    (*(v3 + 96))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10027444C()
{
  result = qword_100AEE360;
  if (!qword_100AEE360)
  {
    sub_1001F1234(&qword_100ADB860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE360);
  }

  return result;
}

unint64_t sub_1002744B0()
{
  result = qword_100AD7F68;
  if (!qword_100AD7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7F68);
  }

  return result;
}

uint64_t sub_100274558()
{

  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

unint64_t sub_1002745BC()
{
  result = qword_100AD7F70;
  if (!qword_100AD7F70)
  {
    sub_1001F1234(&qword_100AD7F58);
    sub_1001F1234(&qword_100ADB860);
    sub_10027444C();
    sub_1002744B0();
    swift_getOpaqueTypeConformance2();
    sub_1002746A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7F70);
  }

  return result;
}

unint64_t sub_1002746A0()
{
  result = qword_100AD7F78;
  if (!qword_100AD7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7F78);
  }

  return result;
}

unint64_t sub_1002746F4()
{
  result = qword_100AD7F80;
  if (!qword_100AD7F80)
  {
    sub_1001F1234(&qword_100AD7F60);
    sub_1002745BC();
    sub_1002747B0(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7F80);
  }

  return result;
}

uint64_t sub_1002747B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100274800()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD7F90);
  sub_100008B98(v0, qword_100AD7F90);
  return sub_10079ACD4();
}

char *sub_100274880()
{
  v1 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
  v2 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_viewModel);
    v5 = objc_allocWithZone(type metadata accessor for AudiobookNowPlayingFullscreenTouchView());
    v6 = v4;
    v7 = v0;
    v8 = sub_100395F40(v6, 0.0, 0.0, 0.0, 0.0);
    *&v8[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_delegate + 8] = &off_100A11838;
    swift_unknownObjectWeakAssign();
    [*&v8[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider] setDelegate:v0];
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_100274964()
{
  v1 = (v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___languageSuffix);
  if (*(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___languageSuffix + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_1002749DC();
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_1002749DC()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() systemLocale];
  sub_100796C84();

  v5 = sub_100796C44();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = objc_opt_self();
  sub_1001F1160(&unk_100AD5090);
  v11 = swift_allocObject();
  v18 = xmmword_10080B690;
  *(v11 + 16) = xmmword_10080B690;
  *(v11 + 56) = &type metadata for String;
  v12 = sub_10000E4C4();
  *(v11 + 64) = v12;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;

  sub_1007A2284();
  v13 = sub_1007A2214();

  v14 = [v10 __systemImageNamedSwift:v13];

  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v18;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = v12;
    *(v15 + 32) = v8;
    *(v15 + 40) = v9;
    v16 = sub_1007A2284();
  }

  else
  {

    return 0;
  }

  return v16;
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.loadView()()
{
  v1 = sub_100274880();
  [v0 setView:v1];
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_viewModel];
  sub_100274D68();
  sub_100275384(v1);
  sub_100278F14();
}

void sub_100274D68()
{
  v1 = sub_100274880();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (LOBYTE(v14))
  {
    v2 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_pauseImage;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage;
  }

  [*&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause] setBackgroundImage:*&v1[*v2] forState:0];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_10027AD7C(*&v14, v15, &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel);

  sub_10027A084();
  v3 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
  v4 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  sub_10079B9A4();

  [*&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView] setImage:*&v14];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v6 = *(*(v0 + v3) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  sub_10079B9A4();

  v8 = 1;
  [v7 setEnabled:(LOBYTE(v14) & 1) == 0];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_10027A268(v14, 0x61776B6361626F67, 0xEC00000040256472, sub_10039969C);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_10027A268(v14, 0x726177726F666F67, 0xEB00000000402564, sub_1003996A8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_10027A3E4(*&v14);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v9 = *(*(v0 + v3) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  sub_100201F60(*&v14);
  v10 = sub_1007A2214();

  [v9 setTitle:v10 forState:0];

  v11 = *(*(v0 + v3) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  sub_100202090(*&v14);
  v12 = sub_1007A2214();

  [v11 setAccessibilityValue:v12];

  v13 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"resetPlaybackSpeed"];
  [*(*(v0 + v3) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed) addGestureRecognizer:v13];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if ((LOBYTE(v14) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v8 = LOBYTE(v14);
  }

  sub_10027AC7C(v8);
}

uint64_t sub_100275384(void *a1)
{
  v261 = sub_1001F1160(&qword_100AD8178);
  __chkstk_darwin(v261);
  v258 = v208 - v2;
  v259 = sub_1001F1160(&qword_100AD8180);
  __chkstk_darwin(v259);
  v255 = v208 - v3;
  v260 = sub_1001F1160(&qword_100AD8188);
  v262 = *(v260 - 8);
  __chkstk_darwin(v260);
  v256 = v208 - v4;
  v263 = sub_1001F1160(&qword_100AD8190);
  v264 = *(v263 - 8);
  __chkstk_darwin(v263);
  v257 = v208 - v5;
  v272 = sub_1001F1160(&qword_100AD8198);
  __chkstk_darwin(v272);
  v269 = v208 - v6;
  v270 = sub_1001F1160(&qword_100AD81A0);
  v281 = *(v270 - 8);
  __chkstk_darwin(v270);
  v253 = v208 - v7;
  v271 = sub_1001F1160(&qword_100AD81A8);
  v282 = *(v271 - 8);
  __chkstk_darwin(v271);
  v254 = v208 - v8;
  v249 = sub_1001F1160(&qword_100AD81B0);
  v9 = __chkstk_darwin(v249);
  v245 = v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v244 = v208 - v12;
  __chkstk_darwin(v11);
  v243 = v208 - v13;
  v248 = sub_1001F1160(&qword_100AD81B8);
  v250 = *(v248 - 8);
  __chkstk_darwin(v248);
  v246 = v208 - v14;
  v251 = sub_1001F1160(&qword_100AD81C0);
  v252 = *(v251 - 8);
  __chkstk_darwin(v251);
  v247 = v208 - v15;
  v239 = sub_1001F1160(&qword_100AD81C8);
  v240 = *(v239 - 8);
  __chkstk_darwin(v239);
  v237 = v208 - v16;
  v241 = sub_1001F1160(&unk_100AD81D0);
  v242 = *(v241 - 8);
  __chkstk_darwin(v241);
  v238 = v208 - v17;
  v232 = sub_1001F1160(&unk_100AE1510);
  v234 = *(v232 - 8);
  __chkstk_darwin(v232);
  v230 = v208 - v18;
  v235 = sub_1001F1160(&qword_100AD81E0);
  v236 = *(v235 - 8);
  __chkstk_darwin(v235);
  v231 = v208 - v19;
  v225 = sub_1001F1160(&qword_100AD7EB8);
  v226 = *(v225 - 8);
  __chkstk_darwin(v225);
  v223 = v208 - v20;
  v227 = sub_1001F1160(&unk_100AD7EC0);
  v228 = *(v227 - 8);
  __chkstk_darwin(v227);
  v224 = v208 - v21;
  v219 = sub_1001F1160(&qword_100AD81E8);
  v220 = *(v219 - 8);
  __chkstk_darwin(v219);
  v217 = v208 - v22;
  v221 = sub_1001F1160(&unk_100AD81F0);
  v222 = *(v221 - 8);
  __chkstk_darwin(v221);
  v218 = v208 - v23;
  v287 = sub_1001F1160(&unk_100AE1530);
  v279 = *(v287 - 8);
  v24 = __chkstk_darwin(v287);
  v233 = v208 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v286 = v208 - v26;
  v216 = sub_1001F1160(&qword_100AD8200);
  v280 = *(v216 - 8);
  __chkstk_darwin(v216);
  v215 = v208 - v27;
  v267 = sub_1001F1160(&qword_100AD8208);
  v275 = *(v267 - 8);
  __chkstk_darwin(v267);
  v265 = v208 - v28;
  v268 = sub_1001F1160(&unk_100AD8210);
  v276 = *(v268 - 8);
  __chkstk_darwin(v268);
  v266 = v208 - v29;
  v294 = sub_1001F1160(&unk_100AE1520);
  v292 = *(v294 - 8);
  v30 = __chkstk_darwin(v294);
  v229 = v208 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v290 = v208 - v32;
  v33 = sub_1001F1160(&qword_100AD8220);
  v34 = *(v33 - 8);
  v288 = v33;
  v289 = v34;
  __chkstk_darwin(v33);
  v273 = v208 - v35;
  v284 = sub_1001F1160(&qword_100AD8228);
  v285 = *(v284 - 8);
  __chkstk_darwin(v284);
  v277 = v208 - v36;
  v291 = sub_1001F1160(&qword_100AD8230);
  v293 = *(v291 - 8);
  __chkstk_darwin(v291);
  v278 = v208 - v37;
  v212 = sub_1001F1160(&qword_100AD8238);
  v213 = *(v212 - 1);
  __chkstk_darwin(v212);
  v210 = v208 - v38;
  v214 = sub_1001F1160(&unk_100AD8240);
  v274 = *(v214 - 8);
  __chkstk_darwin(v214);
  v211 = v208 - v39;
  v40 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v40 - 8);
  v42 = v208 - v41;
  v43 = sub_1001F1160(&unk_100AD8250);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = v208 - v45;
  v303 = sub_1001F1160(&qword_100AE1560);
  v47 = *(v303 - 8);
  __chkstk_darwin(v303);
  v49 = v208 - v48;
  v283 = a1;
  swift_beginAccess();
  sub_1001F1160(&unk_100AD8260);
  sub_10079B974();
  swift_endAccess();
  v50 = sub_10000A7C4(0, &qword_100AD1E10);
  v51 = sub_1007A2D74();
  v304 = v51;
  v300 = sub_1007A2D24();
  v52 = *(v300 - 8);
  v298 = *(v52 + 56);
  v302 = v52 + 56;
  v298(v42, 1, 1, v300);
  v296 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100005920(&unk_100AD8270, &unk_100AD8250);
  v299 = sub_100017E1C();
  sub_10079BAB4();
  sub_100007840(v42, &qword_100AD7EB0);

  (*(v44 + 8))(v46, v43);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v295 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100005920(&unk_100AD8280, &qword_100AE1560);
  v53 = v303;
  sub_10079BB04();

  (*(v47 + 8))(v49, v53);
  v303 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_cancellables;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100AD5100);
  v54 = v210;
  sub_10079B974();
  swift_endAccess();
  v301 = v50;
  v55 = sub_1007A2D74();
  v304 = v55;
  v56 = v42;
  v297 = v42;
  v57 = v300;
  v58 = v298;
  v298(v42, 1, 1, v300);
  sub_100005920(&qword_100AD8290, &qword_100AD8238);
  v59 = v211;
  v60 = v212;
  sub_10079BAB4();
  sub_100007840(v56, &qword_100AD7EB0);

  (*(v213 + 8))(v54, v60);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AD8298, &unk_100AD8240);
  v61 = v214;
  sub_10079BB04();

  (*(v274 + 8))(v59, v61);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100AD5110);
  v62 = v277;
  sub_10079B974();
  swift_endAccess();
  v63 = sub_1007A2D74();
  v304 = v63;
  v64 = v297;
  v58(v297, 1, 1, v57);
  sub_100005920(&unk_100ADF110, &qword_100AD8228);
  v65 = v278;
  v66 = v284;
  sub_10079BAB4();
  sub_100007840(v64, &qword_100AD7EB0);

  (*(v285 + 8))(v62, v66);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AD82A0, &qword_100AD8230);
  v67 = v291;
  sub_10079BB04();

  (*(v293 + 8))(v65, v67);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v291 = sub_1001F1160(&unk_100AD5120);
  v68 = v290;
  sub_10079B974();
  swift_endAccess();
  v69 = sub_1007A2D74();
  v304 = v69;
  v70 = v64;
  v71 = v300;
  v72 = v298;
  v298(v64, 1, 1, v300);
  v293 = sub_100005920(&qword_100AD82B0, &unk_100AE1520);
  v73 = v273;
  v74 = v294;
  sub_10079BAB4();
  sub_100007840(v70, &qword_100AD7EB0);

  v75 = v292[1];
  ++v292;
  v285 = v75;
  v75(v68, v74);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v284 = sub_100005920(&unk_100AE1590, &qword_100AD8220);
  v76 = v288;
  sub_10079BB04();

  v274 = *(v289 + 8);
  v289 += 8;
  v77 = v73;
  (v274)(v73, v76);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v78 = v290;
  sub_10079B974();
  swift_endAccess();
  v79 = sub_1007A2D74();
  v304 = v79;
  v80 = v297;
  v72(v297, 1, 1, v71);
  v81 = v80;
  v82 = v294;
  sub_10079BAB4();
  sub_100007840(v81, &qword_100AD7EB0);

  (v285)(v78, v82);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = v288;
  sub_10079BB04();

  (v274)(v77, v83);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v214 = sub_1001F1160(&unk_100AD50F0);
  v84 = v265;
  sub_10079B974();
  swift_endAccess();
  v85 = sub_1007A2D74();
  v304 = v85;
  v86 = v81;
  v87 = v298;
  v298(v81, 1, 1, v300);
  v213 = sub_100005920(&qword_100AD82B8, &qword_100AD8208);
  v88 = v266;
  v89 = v267;
  sub_10079BAB4();
  sub_100007840(v86, &qword_100AD7EB0);

  v90 = *(v275 + 8);
  v275 += 8;
  v212 = v90;
  (v90)(v84, v89);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v211 = sub_100005920(&unk_100AD82C0, &unk_100AD8210);
  v91 = v268;
  sub_10079BB04();

  v92 = *(v276 + 8);
  v276 += 8;
  v210 = v92;
  (v92)(v88, v91);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v93 = v283;
  swift_beginAccess();
  v278 = sub_1001F1160(&qword_100AD50E0);
  v94 = v286;
  sub_10079B974();
  swift_endAccess();
  v95 = sub_1007A2D74();
  v304 = v95;
  v96 = v297;
  v87(v297, 1, 1, v300);
  v277 = sub_100005920(&qword_100AD82D0, &unk_100AE1530);
  v97 = v215;
  v98 = v287;
  sub_10079BAB4();
  sub_100007840(v96, &qword_100AD7EB0);

  v99 = *(v279 + 8);
  v279 += 8;
  v209 = v99;
  v99(v94, v98);
  v100 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v101 = swift_allocObject();
  *(v101 + 16) = v100;
  *(v101 + 24) = v93;
  v208[1] = sub_100005920(&qword_100AD82D8, &qword_100AD8200);
  v102 = v93;
  v103 = v216;
  sub_10079BB04();

  v104 = *(v280 + 8);
  v280 += 8;
  v208[0] = v104;
  v104(v97, v103);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v105 = v286;
  sub_10079B974();
  swift_endAccess();
  v106 = sub_1007A2D74();
  v304 = v106;
  v298(v96, 1, 1, v300);
  v107 = v96;
  v108 = v287;
  sub_10079BAB4();
  sub_100007840(v107, &qword_100AD7EB0);

  v209(v105, v108);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10079BB04();

  (v208[0])(v97, v103);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v283 = v102;
  swift_beginAccess();
  v109 = v265;
  sub_10079B974();
  swift_endAccess();
  v110 = sub_1007A2D74();
  v304 = v110;
  v111 = v300;
  v112 = v298;
  v298(v107, 1, 1, v300);
  v113 = v266;
  v114 = v267;
  sub_10079BAB4();
  sub_100007840(v107, &qword_100AD7EB0);

  (v212)(v109, v114);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v115 = v268;
  sub_10079BB04();

  (v210)(v113, v115);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AD82E0);
  v116 = v217;
  sub_10079B974();
  swift_endAccess();
  v117 = sub_1007A2D74();
  v304 = v117;
  v112(v107, 1, 1, v111);
  v118 = v112;
  sub_100005920(&qword_100AD82E8, &qword_100AD81E8);
  v119 = v218;
  v120 = v219;
  sub_10079BAB4();
  sub_100007840(v107, &qword_100AD7EB0);

  (*(v220 + 8))(v116, v120);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AD82F0, &unk_100AD81F0);
  v121 = v221;
  sub_10079BB04();

  (*(v222 + 8))(v119, v121);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v122 = v290;
  sub_10079B974();
  swift_endAccess();
  v123 = sub_1007A2D74();
  v304 = v123;
  v118(v107, 1, 1, v300);
  v124 = v273;
  v125 = v294;
  sub_10079BAB4();
  sub_100007840(v107, &qword_100AD7EB0);

  (v285)(v122, v125);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v126 = v288;
  sub_10079BB04();

  v127 = v274;
  (v274)(v124, v126);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  v128 = sub_1007A2D74();
  v304 = v128;
  v129 = v300;
  v130 = v298;
  v298(v107, 1, 1, v300);
  v131 = v124;
  v132 = v107;
  v133 = v294;
  sub_10079BAB4();
  sub_100007840(v132, &qword_100AD7EB0);

  (v285)(v122, v133);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v134 = v288;
  sub_10079BB04();

  v127(v131, v134);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v135 = v283;
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  v136 = sub_1007A2D74();
  v304 = v136;
  v137 = v297;
  v130(v297, 1, 1, v129);
  v138 = v273;
  v139 = v137;
  v140 = v294;
  v141 = v122;
  sub_10079BAB4();
  v142 = v139;
  sub_100007840(v139, &qword_100AD7EB0);

  (v285)(v141, v140);
  v143 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v135;
  v145 = v135;
  v146 = v288;
  sub_10079BB04();

  (v274)(v138, v146);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v292 = v145;
  swift_beginAccess();
  sub_1001F1160(&qword_100AD50A8);
  v147 = v223;
  sub_10079B974();
  swift_endAccess();
  v148 = sub_1007A2D74();
  v304 = v148;
  v149 = v300;
  v150 = v298;
  v298(v142, 1, 1, v300);
  sub_100005920(&unk_100AD7ED0, &qword_100AD7EB8);
  v151 = v224;
  v152 = v225;
  sub_10079BAB4();
  sub_100007840(v142, &qword_100AD7EB0);

  (*(v226 + 8))(v147, v152);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AD7EE0, &unk_100AD7EC0);
  v153 = v227;
  sub_10079BB04();

  (*(v228 + 8))(v151, v153);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v154 = v292;
  swift_beginAccess();
  sub_1001F1160(&unk_100AD50D0);
  v155 = v230;
  sub_10079B974();
  swift_endAccess();
  v156 = sub_1007A2D74();
  v304 = v156;
  v157 = v297;
  v150(v297, 1, 1, v149);
  sub_100005920(&unk_100AE15A0, &unk_100AE1510);
  v158 = v231;
  v159 = v232;
  sub_10079BAB4();
  sub_100007840(v157, &qword_100AD7EB0);

  (*(v234 + 8))(v155, v159);
  v160 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v161 = swift_allocObject();
  *(v161 + 16) = v160;
  *(v161 + 24) = v154;
  sub_100005920(&qword_100AD8300, &qword_100AD81E0);
  v162 = v154;
  v163 = v235;
  sub_10079BB04();

  (*(v236 + 8))(v158, v163);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  v164 = v237;
  sub_10079B7C4();
  v165 = sub_1007A2D74();
  v304 = v165;
  v166 = v297;
  v167 = v298;
  v298(v297, 1, 1, v300);
  v292 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  sub_100005920(&qword_100AD8308, &qword_100AD81C8);
  v168 = v238;
  v169 = v239;
  sub_10079BAB4();
  sub_100007840(v166, &qword_100AD7EB0);

  (*(v240 + 8))(v164, v169);
  v170 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v171 = swift_allocObject();
  *(v171 + 16) = v170;
  *(v171 + 24) = v162;
  v172 = swift_allocObject();
  *(v172 + 16) = sub_100282970;
  *(v172 + 24) = v171;
  sub_100005920(&unk_100AD8310, &unk_100AD81D0);
  v173 = v162;
  v174 = v241;
  sub_10079BB04();

  (*(v242 + 8))(v168, v174);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100ADF120);
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  sub_100005920(&unk_100AD8320, &qword_100AD81B0);
  v175 = v246;
  sub_10079B7C4();
  v176 = sub_1007A2D74();
  v304 = v176;
  v177 = v297;
  v167(v297, 1, 1, v300);
  sub_100005920(&unk_100ADF130, &qword_100AD81B8);
  v178 = v247;
  v179 = v248;
  sub_10079BAB4();
  sub_100007840(v177, &qword_100AD7EB0);

  (*(v250 + 8))(v175, v179);
  v180 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v181 = swift_allocObject();
  *(v181 + 16) = sub_1002829B0;
  *(v181 + 24) = v180;
  sub_100005920(&unk_100AD8330, &qword_100AD81C0);
  v182 = v251;
  sub_10079BB04();

  (*(v252 + 8))(v178, v182);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  v289 = sub_1001F1160(&qword_100AD50B8);
  sub_10079B974();
  swift_endAccess();
  v288 = sub_100005920(&qword_100AD8340, &qword_100AD8198);
  v183 = v253;
  sub_10079B7A4();
  v184 = sub_1007A2D74();
  v304 = v184;
  v185 = v297;
  v298(v297, 1, 1, v300);
  v292 = &protocol conformance descriptor for Publishers.CombineLatest<A, B>;
  v287 = sub_100005920(&qword_100AD8348, &qword_100AD81A0);
  v186 = v254;
  v187 = v270;
  sub_10079BAB4();
  sub_100007840(v185, &qword_100AD7EB0);

  v188 = *(v281 + 8);
  v281 += 8;
  v286 = v188;
  v189 = v183;
  (v188)(v183, v187);
  v190 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v191 = swift_allocObject();
  *(v191 + 16) = sub_1002829C0;
  *(v191 + 24) = v190;
  v285 = sub_100005920(&qword_100AD8350, &qword_100AD81A8);
  v192 = v271;
  sub_10079BB04();

  v193 = *(v282 + 8);
  v282 += 8;
  v193(v186, v192);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  sub_10079B7A4();
  v194 = sub_1007A2D74();
  v304 = v194;
  v195 = v297;
  v298(v297, 1, 1, v300);
  v196 = v270;
  sub_10079BAB4();
  sub_100007840(v195, &qword_100AD7EB0);

  (v286)(v189, v196);
  v197 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v198 = swift_allocObject();
  *(v198 + 16) = sub_1002829F8;
  *(v198 + 24) = v197;
  v199 = v271;
  sub_10079BB04();

  v193(v186, v199);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AD50E8);
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_1001F1160(&qword_100AD50C0);
  sub_10079B974();
  swift_endAccess();
  sub_100005920(&qword_100AD8358, &qword_100AD8180);
  sub_100005920(&qword_100AD8360, &qword_100AD8178);
  v200 = v256;
  sub_10079B7A4();
  v201 = sub_1007A2D74();
  v304 = v201;
  v298(v195, 1, 1, v300);
  sub_100005920(&qword_100AD8368, &qword_100AD8188);
  v202 = v257;
  v203 = v260;
  sub_10079BAB4();
  sub_100007840(v195, &qword_100AD7EB0);

  (*(v262 + 8))(v200, v203);
  v204 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v205 = swift_allocObject();
  *(v205 + 16) = sub_100282A00;
  *(v205 + 24) = v204;
  sub_100005920(&qword_100AD8370, &qword_100AD8190);
  v206 = v263;
  sub_10079BB04();

  (*(v264 + 8))(v202, v206);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

void sub_100278F14()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_100282828;
  v14[5] = v2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100388B6C;
  v14[3] = &unk_100A11A60;
  v3 = _Block_copy(v14);

  v4 = [v1 elementWithUncachedProvider:v3];
  _Block_release(v3);
  v5 = sub_100274880();
  v6 = *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton];

  [v6 setShowsMenuAsPrimaryAction:1];
  v7 = *(*(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton);
  v8 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100811390;
  *(v9 + 32) = v4;
  sub_10000A7C4(0, &qword_100AE8DB0);
  v10 = v7;
  v11 = v4;
  isa = sub_1007A25D4().super.isa;

  v13 = [v8 bk_menuWithChildren:isa];

  [v10 setMenu:v13];
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1);
  v3 = sub_100274880();
  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];

  [v4 setContentMode:{objc_msgSend(v1, "coverContentMode")}];
  v5 = *(*&v1[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_10079B9A4();

  [v6 setImage:v7];
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1);
  v3 = sub_100274880();
  [*&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView] setMarqueeEnabled:1 withOptions:0];
  [*&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView] setMarqueeEnabled:1 withOptions:0];
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewDidDisappear:", a1);
  v3 = sub_100411508();
  if (v3)
  {
    v4 = v3;
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v3);
  }
}

void sub_10027955C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F1160(&unk_100AD83B0);
  __chkstk_darwin(v5 - 8);
  v7 = v12 - v6;
  v8 = [v2 view];
  v9 = v8;
  if (a2)
  {
    if (v8)
    {
      v12[0] = a1;
      v12[1] = a2;
      sub_100282BC4();

      sub_100795ED4();
      v10 = sub_100795EE4();
      (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
LABEL_6:
      sub_1007A30D4();

      return;
    }

    __break(1u);
  }

  else if (v8)
  {
    v11 = sub_100795EE4();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    goto LABEL_6;
  }

  __break(1u);
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.viewSafeAreaInsetsDidChange()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "viewSafeAreaInsetsDidChange");
  v1 = sub_100274880();
  [v1 setNeedsLayout];
}

uint64_t AudiobookNowPlayingFullscreenTouchViewController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

id sub_1002798B8()
{
  sub_100797C64();
  v1 = sub_100797C44();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRelease();
    if (v2 == v0)
    {
      sub_100797C54();
    }
  }

  result = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudDisappearTimer);
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

uint64_t sub_10027994C()
{
  v0 = sub_100274880();
  v1 = sub_1003955BC();

  return v1;
}

uint64_t sub_100279980(void (*a1)(uint64_t))
{
  v2 = sub_1007971A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *(result + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler);
    swift_unknownObjectRetain();
    v9 = sub_100274880();
    v10 = *&v9[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton];

    (*(v3 + 104))(v5, enum case for ContextActionSource.unknown(_:), v2);
    sub_100797194();
    (*(v3 + 8))(v5, v2);
    v11 = sub_1007A2214();

    v12 = [v8 contextMenuItemsFor:v7 from:v10 actionSource:v11];

    swift_unknownObjectRelease();
    sub_10000A7C4(0, &qword_100AD8170);
    v13 = sub_1007A25E4();

    if (v13 >> 62)
    {
      sub_10000A7C4(0, &qword_100AE8DB0);

      v14 = sub_1007A38C4();
    }

    else
    {

      sub_1007A3AD4();
      sub_10000A7C4(0, &qword_100AE8DB0);
      v14 = v13;
    }

    a1(v14);
  }

  return result;
}

id AudiobookNowPlayingFullscreenTouchViewController.ba_analyticsTracker.getter()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "ba_analyticsTracker");

  return v1;
}

void AudiobookNowPlayingFullscreenTouchViewController.ba_analyticsTracker.setter(void *a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "ba_setAnalyticsTracker:", a1);
  sub_100279D80();
}

void sub_100279D80()
{
  v1 = v0;
  v2 = sub_1007971A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 ba_effectiveAnalyticsTracker];
  if (v6)
  {
    v7 = v6;
    v8 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler];
    v9 = sub_100274880();
    (*(v3 + 104))(v5, enum case for ContextActionSource.unknown(_:), v2);
    sub_100797194();
    (*(v3 + 8))(v5, v2);
    v10 = sub_1007A2214();

    v11 = [v8 analyticsAssetPropertyProviderFor:v9 actionSource:v10];

    if (v11)
    {
      [*(*&v1[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton) setupAppAnalyticsReportingUsingTracker:v7 withPropertyProvider:v11];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void (*AudiobookNowPlayingFullscreenTouchViewController.ba_analyticsTracker.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  ObjectType = swift_getObjectType();
  v4[4].receiver = ObjectType;
  v4->receiver = v1;
  v4->super_class = ObjectType;
  v4[3].receiver = [(objc_super *)v4 ba_analyticsTracker];
  return sub_100279FF0;
}

void sub_100279FF0(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v4 = (*a1)[4].receiver;
  if (a2)
  {
    v2[1].receiver = super_class;
    v2[1].super_class = v4;
    objc_msgSendSuper2(v2 + 1, "ba_setAnalyticsTracker:", receiver);
  }

  else
  {
    v2[2].receiver = super_class;
    v2[2].super_class = v4;
    objc_msgSendSuper2(v2 + 2, "ba_setAnalyticsTracker:", receiver);

    sub_100279D80();
  }

  free(v2);
}

void sub_10027A084()
{
  v1 = v0;
  v2 = sub_100274880();
  v3 = *&v2[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v10 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    sub_10027AD7C(v10, v11, &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);
  }

  else if ([*(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) audiobookTimeRemainingMode])
  {
    v4 = sub_1004C1DB0(1);
    sub_10027AD7C(v4, v5, &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);

    v6 = v3;
    sub_1004C1DB0(0);
    v7 = sub_1007A2214();

    [v6 setAccessibilityLabel:v7];
  }

  else
  {
    v8 = sub_1002034C8();
    sub_10027AD7C(v8, v9, &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);

    [v3 setAccessibilityLabel:0];
  }
}

void sub_10027A268(long double a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  v5 = lround(a1);
  sub_1001F1160(&unk_100AD5090);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10080B690;
  v7 = sub_10027B878(v5);
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10000E4C4();
  v10 = 0x73756C702ELL;
  if (v9)
  {
    v10 = v7;
  }

  v11 = 0xE500000000000000;
  if (v9)
  {
    v11 = v9;
  }

  *(v6 + 32) = v10;
  *(v6 + 40) = v11;
  sub_1007A2284();
  v12 = objc_opt_self();
  v13 = sub_1007A2214();

  v14 = [v12 __systemImageNamedSwift:v13];

  if (v14)
  {
    v15 = sub_100274880();
    a4(v14);
  }
}

void sub_10027A3E4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100796CF4();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = __chkstk_darwin(v4);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v50 - v7;
  v55 = sub_1007A21D4();
  v53 = *(v55 - 8);
  v8 = __chkstk_darwin(v55);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v50 - v10;
  v62 = v1;
  v11 = sub_100274880();
  v59 = *&v11[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton];

  v12 = &stru_100000020;
  v64 = _swiftEmptyArrayStorage;
  v61 = UIAccessibilityTraitSelected;
  *&v13 = 134217984;
  v60 = v13;
  do
  {
    v15 = *(&off_100A0C1C0 + v12);
    if (v15 < 8)
    {
      sub_10064EF74(*(&off_100A0C1C0 + v12));
      sub_10000A7C4(0, &qword_100AD8390);
      sub_1007A2214();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = v15;
      v17[4] = ObjectType;
      v18 = sub_1007A31D4();
      [v18 setState:v15 == a1];
      if (v15 == a1)
      {
        v19 = v18;
        v20 = [v19 accessibilityTraits];
        v21 = v61;
        if ((v61 & ~v20) == 0)
        {
          v21 = 0;
        }

        [v19 setAccessibilityTraits:v21 | v20];
      }

      v14 = v18;
      sub_1007A25C4();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
LABEL_5:

      goto LABEL_6;
    }

    if (v15 != 8)
    {
      if (qword_100AD1350 != -1)
      {
        swift_once();
      }

      v22 = sub_10079ACE4();
      sub_100008B98(v22, qword_100AD7F90);
      v14 = sub_10079ACC4();
      v23 = sub_1007A29B4();
      if (os_log_type_enabled(v14, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = v60;
        *(v24 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v14, v23, "Unexpected sleep option tag %ld", v24, 0xCu);
      }

      goto LABEL_5;
    }

LABEL_6:
    v12 += 8;
  }

  while (v12 != 104);
  v25 = v52;
  sub_1007A2154();
  v26 = v56;
  sub_100796C94();
  v27 = v53;
  v28 = v55;
  (*(v53 + 16))(v51, v25, v55);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v32 = v57;
  v31 = v58;
  (*(v57 + 16))(v54, v26, v58);
  sub_1007A22D4();
  (*(v32 + 8))(v26, v31);
  (*(v27 + 8))(v25, v28);
  if (a1 == 8)
  {
    v33 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    [v33 setUnitsStyle:3];
    [v33 setAllowedUnits:96];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v34 = [v33 stringFromTimeInterval:v63];
    if (v34)
    {
      v35 = v34;

      sub_1007A2254();
    }
  }

  sub_10000A7C4(0, &qword_100AD8390);
  sub_1007A2214();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = sub_1007A31D4();
  v37 = v36;
  if (a1 == 8)
  {
    [v36 setState:1];
    v38 = v37;
    v39 = [v38 accessibilityTraits];
    v40 = v61;
    if ((v61 & ~v39) == 0)
    {
      v40 = 0;
    }

    [v38 setAccessibilityTraits:v40 | v39];
  }

  v41 = v37;
  sub_1007A25C4();
  v42 = v59;
  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  v43 = v64;
  if (v64 >> 62)
  {
    sub_10000A7C4(0, &qword_100AE8DB0);
    v48 = v42;

    v45 = sub_1007A38C4();
  }

  else
  {
    v44 = v42;

    sub_1007A3AD4();
    sub_10000A7C4(0, &qword_100AE8DB0);
    v45 = v43;
  }

  sub_10000A7C4(0, &qword_100AD8170);
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v67.value._countAndFlagsBits = 0;
  v67.value._object = 0;
  v65.value.super.isa = 0;
  v65.is_nil = 0;
  v46.value = 0;
  isa = sub_1007A30C4(v66, v67, v65, v46, 0xFFFFFFFFFFFFFFFFLL, v45, v49).super.super.isa;
  [v42 setMenu:isa];

  [v42 setShowsMenuAsPrimaryAction:1];
}

void sub_10027AC7C(int a1)
{
  v3 = sub_100274880();
  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_loadingSpinner];

  v6 = *(*(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played);
  if ((([v6 isHidden] ^ a1) & 1) != 0 || ((objc_msgSend(v4, "isHidden") ^ a1) & 1) == 0)
  {
    if (a1)
    {
      v5 = &selRef_startAnimating;
    }

    else
    {
      v5 = &selRef_stopAnimating;
    }

    [v6 setHidden:a1 & 1];
    [v4 setHidden:(a1 & 1) == 0];
    [v4 *v5];
  }
}

id sub_10027AD7C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_100274880();
  v8 = *&v7[*a3];

  v9 = [v8 text];
  if (!v9)
  {
LABEL_7:
    v16 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
    v17 = *(*(v3 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + *a3);
    v18 = sub_1007A2214();
    [v17 setText:v18];

    v19 = *(v3 + v16);

    return [v19 setNeedsLayout];
  }

  v10 = sub_1007A2254();
  v12 = v11;

  if (v10 != a1 || v12 != a2)
  {
    v14 = sub_1007A3AB4();

    if (v14)
    {
      return result;
    }

    goto LABEL_7;
  }
}

void sub_10027AEEC(char a1, char a2)
{
  v43[0] = sub_100796CF4();
  v5 = *(v43[0] - 8);
  v6 = __chkstk_darwin(v43[0]);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v43 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v43 - v16;
  if (a2)
  {
    v18 = sub_100274880();
    sub_1007A2154();
    sub_100796C94();
    (*(v12 + 16))(v15, v17, v11);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v21 = v43[0];
    (*(v5 + 16))(v8, v10, v43[0]);
    v22 = sub_1007A22D4();
    v24 = v23;
    (*(v5 + 8))(v10, v21);
    (*(v12 + 8))(v17, v11);
    v25 = &v18[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong];
    *v25 = v22;
    v25[1] = v24;

    sub_1003997F8();
  }

  else
  {
    v26 = v2;
    if (a1)
    {
      v27 = sub_10027B324();
      v29 = v28;
      v30 = sub_100274880();
      v31 = &v30[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong];
      *v31 = v27;
      v31[1] = v29;

      sub_1003997F8();

      sub_10027C554(v27, v29, &OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_lastAccessibilityAnnouncedScrubbingSpeed, &enum case for UIAccessibility.BooksAccessibilityAnnouncementIdentifier.scrubbingSpeedChanged(_:));

      v32 = *(v26 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
      v33 = *&v32[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong + 8];
      v34 = &v32[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextShort];
      *v34 = *&v32[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong];
      *(v34 + 1) = v33;
      v43[0] = v32;
    }

    else
    {
      v35 = sub_100274880();
      v36 = sub_1004C1DB0(0);
      v37 = &v35[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong];
      *v37 = v36;
      v37[1] = v38;

      sub_1003997F8();

      v43[0] = *(v2 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
      v39 = sub_1004C1DB0(1);
      v40 = (v43[0] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextShort);
      *v40 = v39;
      v40[1] = v41;
    }

    sub_1003997F8();
    v42 = v43[0];
  }
}

uint64_t sub_10027B324()
{
  v20[0] = sub_100796CF4();
  v0 = *(v20[0] - 8);
  v1 = __chkstk_darwin(v20[0]);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = v20 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v20 - v11;
  v13 = sub_100274880();
  v14 = *&v13[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];

  v15 = [v14 speed];
  v16 = 0;
  if (v15 > 1)
  {
    if (v15 == 2 || v15 == 3)
    {
      goto LABEL_6;
    }
  }

  else if (v15 <= 1)
  {
LABEL_6:
    sub_1007A2154();
    sub_100796C94();
    (*(v7 + 16))(v10, v12, v6);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v18 = v20[0];
    (*(v0 + 16))(v3, v5, v20[0]);
    v16 = sub_1007A22D4();
    (*(v0 + 8))(v5, v18);
    (*(v7 + 8))(v12, v6);
  }

  return v16;
}

uint64_t sub_10027B878(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_supportedSkipAmounts);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = sub_1007A3BF4();
  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v2 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1001F1160(&unk_100AD5090);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10080EFF0;
  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  *(v9 + 32) = a1;
  v10 = sub_100274964();
  v12 = v11;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = sub_10000E4C4();
  *(v9 + 72) = v10;
  *(v9 + 80) = v12;
  return sub_1007A2284();
}

void sub_10027B9A8(unsigned __int8 a1, int a2)
{
  v5 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_downloadState;
  v6 = v2[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_downloadState];
  v7 = sub_100274880();
  v8 = *&v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton];
  v9 = v8;

  if (v8)
  {
  }

  v10 = a1;
  if (v6 == 3)
  {
    v11 = v8 != 0;
    if (a1 != 3)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (((v11 ^ a2) & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

  v11 = v8 != 0;
  if (a1 != 3 && v6 == a1)
  {
    goto LABEL_8;
  }

LABEL_9:
  v2[v5] = a1;
  *(*&v2[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadState) = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 17) = a2 & 1;
  *(v12 + 24) = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v2;
  v14 = objc_opt_self();
  if (v10 == 3)
  {
    v27 = sub_100282AA8;
    v28 = v12;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1003323D0;
    v26 = &unk_100A11C40;
    v15 = _Block_copy(&v23);
    v16 = v2;

    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_100282AB8;
    v17[4] = v13;
    v27 = sub_100282AC4;
    v28 = v17;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10021B6B0;
    v26 = &unk_100A11C90;
    v18 = _Block_copy(&v23);
    v19 = v16;
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    v27 = sub_100282C7C;
    v28 = v20;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1003323D0;
    v26 = &unk_100A11CE0;
    v15 = _Block_copy(&v23);
    v21 = v2;

    v22 = swift_allocObject();
    v22[2] = sub_100282AA8;
    v22[3] = v12;
    v22[4] = sub_100282AB8;
    v22[5] = v13;
    v27 = sub_100282AD0;
    v28 = v22;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10021B6B0;
    v26 = &unk_100A11D30;
    v18 = _Block_copy(&v23);
  }

  [v14 animateWithDuration:4 delay:v15 options:v18 animations:0.2 completion:0.0];

  _Block_release(v18);
  _Block_release(v15);
}

id sub_10027BD98(unsigned __int8 a1, char a2, uint64_t a3)
{
  v6 = a1;
  v7 = sub_100274880();
  v8 = *&v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator];

  if (v6 == 3 || (a2 & 1) != 0)
  {
    v13 = 0.0;
LABEL_8:
    [v8 setAlpha:v13];

    v14 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
    [*(*(a3 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner) setAlpha:0.0];
    v10 = *(*(a3 + v14) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton);
    v11 = "setAlpha:";
    v12 = 0.0;
LABEL_9:

    return [v10 v11];
  }

  if (!a1)
  {
    v13 = 1.0;
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    [v8 setAlpha:0.0];

    v9 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
    [*(*(a3 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner) setAlpha:0.0];
    v10 = *(*(a3 + v9) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton);
    v11 = "setAlpha:";
    v12 = 1.0;
    goto LABEL_9;
  }

  [v8 setAlpha:0.0];

  v16 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
  [*(*(a3 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton) setAlpha:0.0];
  [*(*(a3 + v16) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner) setAlpha:1.0];
  v10 = *(*(a3 + v16) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner);
  v11 = "startAnimating";

  return [v10 v11];
}

void sub_10027BF68(unsigned __int8 a1)
{
  v1 = UIAccessibilityLayoutChangedNotification;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = sub_100274880();
      v3 = v2;
      v4 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton;
    }

    else
    {
      v2 = sub_100274880();
      v3 = v2;
      v4 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator;
    }

LABEL_7:
    argument = *&v2[*v4];

    UIAccessibilityPostNotification(v1, argument);

    return;
  }

  if (a1 == 2)
  {
    v2 = sub_100274880();
    v3 = v2;
    v4 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner;
    goto LABEL_7;
  }

  v5 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v5, 0);
}

void sub_10027C04C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v17 = sub_100282ADC;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1003323D0;
  v16 = &unk_100A11DF8;
  v9 = _Block_copy(&v13);
  v10 = a2;

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v17 = sub_10025D774;
  v18 = v11;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10021B6B0;
  v16 = &unk_100A11E48;
  v12 = _Block_copy(&v13);

  [v7 animateWithDuration:4 delay:v9 options:v12 animations:0.2 completion:0.0];
  _Block_release(v12);
  _Block_release(v9);
}

void sub_10027C1F0()
{
  v3 = sub_100274880();
  sub_1003980E0();
  v0 = v3;
  v1 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 8];
  if (v1)
  {
    if (v1 != 5 && v1 != 1)
    {
      goto LABEL_9;
    }

    sub_100398C90();
    goto LABEL_8;
  }

  if (v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 393] == 1)
  {
    sub_100398FDC();
LABEL_8:
    v0 = v3;
  }

LABEL_9:
}

void sub_10027C280(uint64_t a1, uint64_t (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_self();
  v17 = a2;
  v18 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1003323D0;
  v16 = &unk_100A11D58;
  v10 = _Block_copy(&v13);

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v17 = sub_100282C90;
  v18 = v11;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10021B6B0;
  v16 = &unk_100A11DA8;
  v12 = _Block_copy(&v13);

  [v9 animateWithDuration:4 delay:v10 options:v12 animations:0.2 completion:0.0];
  _Block_release(v12);
  _Block_release(v10);
}

id sub_10027C404()
{
  v0 = sub_100274880();
  v1 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton];

  return v1;
}

void sub_10027C448(uint64_t a1@<X8>)
{
  v3 = sub_100274880();
  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton];

  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = *(*&v1[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer);
  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    [v14 convertRect:v13 toCoordinateSpace:{v6, v8, v10, v12}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    *a1 = v17;
    *(a1 + 8) = v19;
    *(a1 + 16) = v21;
    *(a1 + 24) = v23;
    *(a1 + 32) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10027C554(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v9 = sub_1007A2B44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v4 + *a3);
  v14 = v13[1];
  if (!v14 || ((result = *v13, *v13 == a1) ? (v16 = v14 == a2) : (v16 = 0), !v16 && (result = sub_1007A3AB4(), (result & 1) == 0)))
  {
    *v13 = a1;
    v13[1] = a2;

    (*(v10 + 104))(v12, *a4, v9);

    sub_1007A2B04();
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_10027C6B8()
{
  sub_100007840(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonProvider, &qword_100AD4FA0);
}

void sub_10027C904(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100274880();

    [*&v4[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView] setImage:v1];
  }
}

void sub_10027C98C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = sub_1002060AC;
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000260E8(v2);
  if (!Strong)
  {
    goto LABEL_7;
  }

  v6 = sub_100274880();

  if (v2)
  {

    v8 = (v4)(v7);
    sub_100399320(v8);

    sub_100007020(v4);
LABEL_7:
    sub_100007020(v4);
    return;
  }

  sub_100399320(0);
}

void sub_10027CAA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10027CB0C(v1, v2);
  }
}

void sub_10027CB0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100279D80();
  v6 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_attributionView;
  v7 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_attributionView];
  if (v7)
  {
    [v7 removeFromSuperview];
    v8 = *&v2[v6];
  }

  else
  {
    v8 = 0;
  }

  *&v2[v6] = 0;

  sub_10027955C(a1, a2);
  if (a2)
  {
    sub_100797894();
    v9 = sub_100797874();
    sub_100797834();
    v11 = v10;

    if (v11)
    {
      v12 = sub_100797874();
      v13 = sub_100797854();

      if (v13)
      {
        v14 = v13;
        v15 = [v3 view];
        if (!v15)
        {
          __break(1u);
          return;
        }

        v16 = v15;
        [v15 addSubview:v14];

        [v14 setFrame:{0.0, 0.0, 0.0, 0.0}];
      }

      v17 = *&v3[v6];
      *&v3[v6] = v13;
    }
  }
}

void sub_10027CC84(double *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100274880();

    v5 = *&v4[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];
    [v5 setBufferedValue:v1];
  }
}

void sub_10027CD1C(double *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*(Strong + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_settingPositionViaScrubber) & 1) == 0)
    {
      v4 = sub_100274880();
      v5 = *&v4[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];

      *&v6 = v1;
      [v5 setValue:v6];
    }
  }
}

void sub_10027CDCC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100274880();

    v6 = *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator];
    *&v7 = v1;
    if (v2)
    {
      *&v7 = 1.0;
    }

    [v6 setProgress:v7];
  }
}

void sub_10027CE7C(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10027CFB4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    sub_10027AEEC(v1, v8);
    if (v1)
    {
      v4 = sub_100274880();
      v5 = *&v4[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

      [v5 setVerticalOffset:-14.0];
    }

    else
    {
      v6 = &v3[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_lastAccessibilityAnnouncedScrubbingSpeed];
      *v6 = 0;
      *(v6 + 1) = 0;

      v7 = &v3[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_lastAccessibilityAnnouncedScrubbingPosition];
      *v7 = 0;
      *(v7 + 1) = 0;
    }
  }
}

void sub_10027CFB4()
{
  v1 = v0;
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setDisableActions:1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (LOBYTE(v22) == 1)
  {
    v3 = [objc_opt_self() stringWithDuration:1 explicitPositive:*(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_skipCumulativeDelta)];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1007A2254();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = (v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText);
    *v8 = v5;
    v8[1] = v7;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();
  }

  v9 = v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText;
  if (*(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText + 8))
  {
    v22 = *v9;
    v24 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText + 8);
    sub_1002060B4();

    if (sub_1007A28A4())
    {
      v10 = sub_100274880();
      v11 = *&v10[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

      v12 = sub_1007A2214();

      [v11 setTitle:v12];
    }

    else
    {
    }
  }

  v13 = sub_100274880();
  v14 = *&v13[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v14 sizeToFit];
  v15 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
  v16 = *(*(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack);
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v16;
  sub_10079B9A4();

  HIDWORD(v18) = HIDWORD(v22);
  *&v18 = v22;
  [v17 setValue:v18];

  [v2 commit];
  if (*(v9 + 8))
  {
    v22 = *v9;
    v24 = *(v9 + 8);
    sub_1002060B4();
    v19 = sub_1007A28A4();
  }

  else
  {
    v19 = 0;
  }

  [*(*(v1 + v15) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack) alpha];
  if (((v19 ^ (v20 == 0.0)) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    *(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudAppearanceTime) = v23;
    v21 = 0.0;
    if (v19)
    {
      v21 = 1.0;
    }

    sub_10027F494(v21);
  }
}

void sub_10027D568(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10027CFB4();
    if (v1)
    {
      v4 = sub_100274880();
      v5 = *&v4[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

      [v5 setVerticalOffset:0.0];
    }
  }
}

void sub_10027D608(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = 0;
    }

    else
    {
      v5 = [objc_allocWithZone(NSNumber) initWithDouble:v1];
    }

    v6 = sub_100274880();
    v7 = *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];

    [v7 setSessionIndicatorValue:v5];
  }
}

void sub_10027D6DC(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100274880();

    v5 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_pauseImage;
    if (!v1)
    {
      v5 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage;
    }

    [*&v4[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause] setBackgroundImage:*&v4[*v5] forState:0];
  }
}

void sub_10027D780(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id))
{
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_10027A268(v8, a3, a4, a5);
  }
}

void sub_10027D804()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v2 = v3 - *&v1[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudAppearanceTime];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    if (LOBYTE(v3) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4();

      if (v3 != 0.0)
      {
        v2 = v3 * round(v2 / v3);
      }
    }

    *&v1[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_skipCumulativeDelta] = v2;
    sub_10027CFB4();
    sub_10027D9A4();
  }
}

void sub_10027D9A4()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText + 8))
  {
    v8 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText);
    sub_1002060B4();
    v2 = sub_1007A28A4();
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_100274880();
  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v4 alpha];
  v6 = v5;

  if (((v2 ^ (v6 == 0.0)) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    *(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudAppearanceTime) = v8;
    v7 = 0.0;
    if (v2)
    {
      v7 = 1.0;
    }

    sub_10027F494(v7);
  }

  sub_10027EBF0();
}

void sub_10027DAF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100274880();

    v3 = *&v2[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton];
    sub_1001F1160(&qword_100AD7EA0);
    sub_100005920(&qword_100AD7EA8, &qword_100AD7EA0);
    v4 = sub_1007A28A4();
    v5 = v3[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent];
    v3[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent] = v4 & 1;
    if ((v4 & 1) != v5)
    {
      sub_1002AD1E0();
    }
  }
}

void sub_10027DC00(float *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100274880();
    v5 = *&v4[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed];

    sub_100201F60(v1);
    v6 = sub_1007A2214();

    [v5 setTitle:v6 forState:0];

    v7 = *(*&v3[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
    sub_100202090(v1);
    v8 = sub_1007A2214();

    [v7 setAccessibilityValue:v8];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    sub_10027AEEC(v9, v9);
  }
}

void sub_10027DDBC(unsigned __int8 a1, unsigned __int8 a2, double a3, double a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_100274880();
    v11 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
    v12 = *(*&v9[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played);
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 stringWithDuration:0 explicitPositive:a3];
    if (v15)
    {
      v16 = v15;
      [v14 setText:v15];

      if (qword_100AD13F0 != -1)
      {
        swift_once();
      }

      v17 = [qword_100B22FF0 stringFromTimeInterval:fabs(round(a3))];
      [v14 setAccessibilityValue:v17];

      v18 = *&v9[v11];
      v19 = *&v18[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay];
      v20 = v18;
      v21 = [v13 stringWithDuration:0 explicitPositive:a4];
      if (v21)
      {
        v22 = v21;
        [v19 setText:v21];

        v23 = [qword_100B22FF0 stringFromTimeInterval:fabs(round(a4))];
        [v19 setAccessibilityValue:v23];

        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4();

        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4();

        sub_10027AEEC(v24, v24);
        sub_10027AC7C((a1 | a2) & 1);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10027E090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a7)
    {
    }

    else
    {
      if ([*(Strong + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) audiobookTimeRemainingMode])
      {
LABEL_7:
        v17 = sub_100274880();
        v18 = *&v17[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton];

        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4();

        [v18 setEnabled:(v19 & 1) == 0];

        return;
      }

      a3 = sub_1002034C8();
      a4 = v16;
      a1 = a5;
      a2 = a6;
    }

    sub_10027AD7C(a1, a2, &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel);
    sub_10027AD7C(a3, a4, &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);

    goto LABEL_7;
  }
}

void sub_10027E250(uint64_t a1, double a2)
{
  if (a1 == 7 || !a1)
  {
    a2 = 0.0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100274880();

    v6 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton;
    [*&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton] intrinsicContentSize];
    v8 = v7;
    v10 = v9;
    sub_1003AA458(a2);
    [*&v5[v6] intrinsicContentSize];
    v14.width = v11;
    v14.height = v12;
    v13.width = v8;
    v13.height = v10;
    if (!CGSizeEqualToSize(v13, v14))
    {
      [v5 setNeedsLayout];
    }
  }
}

void sub_10027E33C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10027A3E4(a1);
  }
}

void sub_10027E398(unsigned __int8 a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10027B9A8(a1, *(a2 + 24) != 0);
    sub_10027E414(a2);
  }
}

id sub_10027E414(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD8378);
  v5 = __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v47 - v8);
  v10 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonViewController;
  v11 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonViewController];
  if (v11)
  {
    v12 = v11;
    [v12 willMoveToParentViewController:0];
    [v12 removeFromParentViewController];
    result = [v12 view];
    if (!result)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return result;
    }

    v14 = result;
    [result removeFromSuperview];

    [v12 didMoveToParentViewController:0];
  }

  v15 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonProvider;
  swift_beginAccess();
  sub_100282A38(a1, &v2[v15]);
  swift_endAccess();
  sub_1000077D8(a1, &v53, &qword_100AD4FA0);
  if (v54)
  {
    sub_1000077C0(&v53, v55);
    v16 = sub_10000E3E8(v55, v56);
    sub_100281D84(*v16);
    sub_10000E3E8(v55, v56);
    v52 = sub_100221B70();
    KeyPath = swift_getKeyPath();
    v47 = objc_opt_self();
    v17 = [v47 bc_nowPlayingVibrantQuaternary];
    v48 = sub_10079DEA4();
    v18 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    v19 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    v49 = v7;
    v20 = v19;
    v21 = (v9 + *(v4 + 36));
    v22 = *(sub_1001F1160(&qword_100AD8380) + 28);
    v51 = v10;
    v23 = v21 + v22;
    v24 = *(type metadata accessor for BuyButtonView.Style(0) + 44);
    v25 = enum case for BlendMode.plusLighter(_:);
    v26 = sub_10079E534();
    v27 = v2;
    v28 = v9;
    v29 = *(v26 - 8);
    (*(v29 + 104))(&v23[v24], v25, v26);
    (*(v29 + 56))(&v23[v24], 0, 1, v26);
    *v23 = v20;
    __asm { FMOV            V0.2D, #1.0 }

    *(v23 + 8) = _Q0;
    *(v23 + 3) = v20;
    *(v23 + 2) = xmmword_100815050;
    v35 = v48;
    v36 = v49;
    *(v23 + 6) = v18;
    *(v23 + 7) = v35;
    *(v23 + 8) = v18;
    *(v23 + 9) = v35;
    *(v23 + 5) = 0u;
    *(v23 + 6) = 0u;
    *(v23 + 7) = 0u;
    *v21 = KeyPath;
    *v28 = v52;
    sub_1000077D8(v28, v36, &qword_100AD8378);
    v37 = objc_allocWithZone(sub_1001F1160(&qword_100AD8388));

    v38 = sub_10079CBC4();
    sub_10079CB94();
    v39 = v51;
    v40 = *&v27[v51];
    *&v27[v51] = v38;
    v41 = v38;

    sub_10000E3E8(v55, v56);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_100392FC4();
    swift_unknownObjectRelease();
    sub_1005353C0();
    sub_100535160();
    swift_unknownObjectRelease();
    [v41 willMoveToParentViewController:v27];
    [v27 addChildViewController:v41];
    v42 = *&v27[v39];
    *&v27[v39] = v38;

    result = [v41 view];
    if (result)
    {
      v43 = result;
      v44 = [v47 clearColor];
      [v43 setBackgroundColor:v44];

      v45 = sub_100274880();
      v46 = [v41 view];

      sub_10039FA54(v46);
      [v41 didMoveToParentViewController:v27];

      sub_100007840(v28, &qword_100AD8378);
      return sub_1000074E0(v55);
    }

    goto LABEL_10;
  }

  return sub_100007840(&v53, &qword_100AD4FA0);
}

void sub_10027E93C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong presentViewController:a2 animated:1 completion:0];
  }
}

double AudiobookNowPlayingFullscreenTouchViewController.durationOfCurrentChapter.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return fabs(v1) + v1;
}

void sub_10027EA84(uint64_t a1, void *a2)
{
  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AD7F90);
  v4 = a2;
  v5 = sub_10079ACC4();
  v6 = sub_1007A29D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    *(v7 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v5, v6, "current media time: %f", v7, 0xCu);
  }

  sub_10027CFB4();
}

void sub_10027EBF0()
{
  v1 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudDisappearTimer;
  v2 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudDisappearTimer);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:"fadeOutHUD:" selector:0 userInfo:0 repeats:1.0];
  v4 = *(v0 + v1);
  *(v0 + v1) = v3;
}

UIImage_optional __swiftcall AudiobookNowPlayingFullscreenTouchViewController.transitionCurrentCoverImage()()
{
  v0 = sub_100274880();
  v1 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];

  v2 = [v1 image];
  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

double AudiobookNowPlayingFullscreenTouchViewController.transitionCoverFrame()()
{
  v1 = sub_100274880();
  v2 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];

  v3 = v2;
  v4 = [v3 superview];
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
    [v3 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = v5;
    [v6 convertRect:v15 fromCoordinateSpace:{v8, v10, v12, v14}];
    v17 = v16;
  }

  else
  {

    if (qword_100AD1350 != -1)
    {
      swift_once();
    }

    v18 = sub_10079ACE4();
    sub_100008B98(v18, qword_100AD7F90);
    v19 = sub_10079ACC4();
    v20 = sub_1007A29B4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "artworkImageView not set up correctly, can't calculate transition cover frame", v21, 2u);
    }

    return 0.0;
  }

  return v17;
}

UIImageView_optional __swiftcall AudiobookNowPlayingFullscreenTouchViewController.transitionBackgroundImageView()()
{
  v0 = sub_100274880();
  v1 = sub_100395DD8();

  v3 = v1;
  result.value.super.super.super.isa = v3;
  result.is_nil = v2;
  return result;
}

uint64_t AudiobookNowPlayingFullscreenTouchViewController.transitionControlsViews()()
{
  sub_1001F1160(&qword_100AD7FB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100815060;
  v2 = sub_100274880();
  v3 = *&v2[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];

  *(v1 + 56) = sub_10000A7C4(0, &unk_100AD7FC0);
  v4 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
  *(v1 + 32) = v3;
  v5 = *(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer);
  *(v1 + 88) = type metadata accessor for ConstraintsDisabledView();
  *(v1 + 64) = v5;
  v6 = *(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_transportContainer);
  *(v1 + 120) = type metadata accessor for TransportContainer();
  *(v1 + 96) = v6;
  v7 = *(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer);
  *(v1 + 152) = sub_10000A7C4(0, &qword_100AD7620);
  *(v1 + 128) = v7;
  v8 = v5;
  v9 = v6;
  v10 = v7;
  return v1;
}

uint64_t sub_10027F210(void *a1, unint64_t *a2)
{
  sub_1001F1160(&qword_100AD7FB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10080B690;
  v5 = sub_100274880();
  v6 = *&v5[*a1];

  *(v4 + 56) = sub_10000A7C4(0, a2);
  *(v4 + 32) = v6;
  return v4;
}

Class sub_10027F2CC(void *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  sub_1001F1160(&qword_100AD7FB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080B690;
  v8 = a1;
  v9 = sub_100274880();
  v10 = *&v9[*a3];

  *(v7 + 56) = sub_10000A7C4(0, a4);
  *(v7 + 32) = v10;

  v11.super.isa = sub_1007A25D4().super.isa;

  return v11.super.isa;
}

UIView_optional __swiftcall AudiobookNowPlayingFullscreenTouchViewController.transitionCoverImagePlayControl()()
{
  v0 = sub_100274880();
  v1 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];

  v3 = v1;
  result.value.super.super.isa = v3;
  result.is_nil = v2;
  return result;
}

void sub_10027F494(double a1)
{
  v3 = sub_100274880();
  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v4 alpha];
  v6 = v5;

  if (v6 != a1)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = a1;
    v18 = sub_100282810;
    v19 = v8;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_1003323D0;
    v17 = &unk_100A119E8;
    v9 = _Block_copy(&v14);
    v10 = v1;

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v11;
    v18 = sub_10028281C;
    v19 = v12;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_10021B6B0;
    v17 = &unk_100A11A38;
    v13 = _Block_copy(&v14);

    [v7 animateWithDuration:4 delay:v9 options:v13 animations:0.2 completion:0.0];
    _Block_release(v13);
    _Block_release(v9);
  }
}

void sub_10027F690(double a1)
{
  v2 = sub_100274880();
  v3 = *&v2[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v3 setAlpha:a1];
}

void sub_10027F710(char a1, double a2)
{
  if (fabs(a2) < 0.00999999978)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      if ((a1 & 1) != 0 && (v5 = sub_100274880(), v6 = *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack], v5, [v6 alpha], v8 = v7, v6, fabs(v8) < 0.00999999978) && (swift_getKeyPath(), swift_getKeyPath(), sub_10079B9A4(), , , (v9 & 1) == 0))
      {
        [*(*&v4[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack) setVerticalOffset:0.0];
        *&v4[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText] = xmmword_100815070;
      }

      else
      {
      }
    }
  }
}

id AudiobookNowPlayingFullscreenTouchViewController.beginTracking(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100AD7F90);
  v5 = sub_10079ACC4();
  v6 = sub_1007A29D4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "begin scrubbing", v7, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *(v2 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_wasPlaying) = v15;
  [*(v2 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) setIsScrubbing:1];
  v8 = sub_100274880();
  v9 = *&v8[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v9 setVerticalOffset:-14.0];
  v10 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_scrubberImpactBehavior;
  v11 = *(v2 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_scrubberImpactBehavior);
  if (v11)
  {
    [v11 deactivate];
  }

  v12 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1 coordinateSpace:a1];
  v13 = *(v2 + v10);
  *(v2 + v10) = v12;

  result = *(v2 + v10);
  if (result)
  {
    return [result activateWithCompletionBlock:0];
  }

  return result;
}

id AudiobookNowPlayingFullscreenTouchViewController.fineScrubSpeedChanged(_:)(void *a1)
{
  v2 = v1;
  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100AD7F90);
  v5 = sub_10079ACC4();
  v6 = sub_1007A29D4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "scrubber moved", v7, 2u);
  }

  v8 = [a1 speed];
  v9 = sub_100274880();
  v10 = *&v9[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v10 alpha];
  v12 = v11;

  if (v8)
  {
    if (v12 == 0.0)
    {
      goto LABEL_11;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v13 = v16;
    v14 = 0.0;
  }

  else
  {
    if (v12 != 0.0)
    {
      goto LABEL_11;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v13 = v16;
    v14 = 1.0;
  }

  *(v2 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudAppearanceTime) = v13;
  sub_10027F494(v14);
LABEL_11:
  result = *(v2 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_scrubberImpactBehavior);
  if (result)
  {
    return [result _impactOccurredWithIntensity:1.0];
  }

  return result;
}

BOOL AudiobookNowPlayingFullscreenTouchViewController.sliderIsProgressSlider(_:)(uint64_t a1)
{
  v2 = sub_100274880();
  v3 = *&v2[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];

  return v3 == a1;
}

double AudiobookNowPlayingFullscreenTouchViewController.playedInterval.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

Swift::Void (__swiftcall *AudiobookNowPlayingFullscreenTouchViewController.playedInterval.modify(void *a1))()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = a1[1];
  return BKAppDelegate.enableMetricsInspectorOnDebugMode();
}

Swift::Void (__swiftcall *AudiobookNowPlayingFullscreenTouchViewController.durationOfCurrentChapter.modify(double *a1))()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v2 = fabs(a1[1]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v2 + a1[1];
  return BKAppDelegate.enableMetricsInspectorOnDebugMode();
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.didTapSessionIndicator(_:)(BKScrubberSlider *a1)
{
  v2 = v1;
  v3 = [(BKScrubberSlider *)a1 sessionIndicatorValue];
  if (v3)
  {
    v4 = v3;
    [(NSNumber *)v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v7 = sub_10079ACE4();
  sub_100008B98(v7, qword_100AD7F90);
  v8 = sub_10079ACC4();
  v9 = sub_1007A29D4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "Audiobook bookmark tapped value: %f", v10, 0xCu);
  }

  v11 = *(v2 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler);
  *&v12 = v6;

  [v11 scrubTo:0 completion:v12];
}

Swift::String_optional __swiftcall AudiobookNowPlayingFullscreenTouchViewController.accessibleDescriptionOfSessionIndicatorPosition()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (v10)
  {
    goto LABEL_6;
  }

  if (qword_100AD13F0 != -1)
  {
    swift_once();
  }

  v0 = qword_100B22FF0;
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v2 = [v1 stringFromTimeInterval:v9 * (fabs(v9) + v9)];

  if (!v2)
  {
LABEL_6:
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v3 = sub_1007A2254();
    v5 = v4;

    v6 = v5;
    v7 = v3;
  }

  result.value._object = v6;
  result.value._countAndFlagsBits = v7;
  return result;
}

double AudiobookNowPlayingFullscreenTouchViewController.alternateAccessibilityFrame(for:)(void *a1)
{
  [a1 bkaxDefaultAccessibilityFrame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100274880();
  v10 = *&v9[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView];

  [v10 accessibilityFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v21.origin.x = v12;
  v21.origin.y = v14;
  v21.size.width = v16;
  v21.size.height = v18;
  CGRectGetMaxY(v21);
  v22.origin.x = v2;
  v22.origin.y = v4;
  v22.size.width = v6;
  v22.size.height = v8;
  CGRectGetMinY(v22);
  v23.origin.x = v2;
  v23.origin.y = v4;
  v23.size.width = v6;
  v23.size.height = v8;
  CGRectGetHeight(v23);
  v24.origin.x = v2;
  v24.origin.y = v4;
  v24.size.width = v6;
  v24.size.height = v8;
  CGRectGetMinY(v24);
  v25.origin.x = v2;
  v25.origin.y = v4;
  v25.size.width = v6;
  v25.size.height = v8;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = v2;
  v26.origin.y = v4;
  v26.size.width = v6;
  v26.size.height = v8;
  CGRectGetWidth(v26);
  return MinX;
}

void sub_10028088C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v85 = a3;
  v84 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_100796CF4();
  v94 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v73 - v10;
  v89 = sub_1007A21D4();
  v11 = *(v89 - 8);
  v12 = __chkstk_darwin(v89);
  v90 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v73 - v14;
  v16 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
  [v16 setOverrideUserInterfaceStyle:2];
  v93 = v16;
  v17 = [v16 view];
  if (v17)
  {
    v18 = v17;
    v91 = v9;
    v92 = v11;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = _UISolariumEnabled();
    v20 = &selRef_assetReviewForAssetID_completion_;
    v82 = v4;
    v73 = a1;
    v86 = v6;
    if (v19)
    {
      v21 = sub_10069D3B8(UIFontTextStyleTitle3, UIContentSizeCategoryAccessibilityExtraExtraExtraLarge);
      sub_1001F1160(&qword_100AD8398);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080EFF0;
      *(inited + 32) = NSFontAttributeName;
      *(inited + 40) = v21;
      *(inited + 48) = NSForegroundColorAttributeName;
      v23 = objc_opt_self();
      v87 = v15;
      v24 = v23;
      v25 = NSFontAttributeName;
      v81 = v21;
      v26 = NSForegroundColorAttributeName;
      v27 = v94;
      v28 = v88;
      v29 = v89;
      *(inited + 56) = [v24 bc_booksLabelColor];
      v30 = sub_1001ED840(inited);
      swift_setDeallocating();
      sub_1001F1160(&unk_100AD83A0);
      swift_arrayDestroy();
      sub_1007A2154();
      sub_100796C94();
      v31 = v92;
      v32 = v90;
      (*(v92 + 16))(v90, v87, v29);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v34 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v35 = v86;
      (*(v27 + 16))(v91, v28, v86);
      sub_1007A22D4();
      (*(v27 + 8))(v28, v35);
      (*(v31 + 8))(v87, v29);
      sub_100580C34(v30);

      v36 = objc_allocWithZone(NSAttributedString);
      v37 = sub_1007A2214();

      type metadata accessor for Key(0);
      sub_100282B6C();
      isa = sub_1007A2024().super.isa;
      v15 = v87;

      v39 = [v36 initWithString:v37 attributes:isa];

      v40 = &selRef_hasTooManyAuthors;
      v20 = &selRef_assetReviewForAssetID_completion_;
      v41 = v93;
      [v93 _setAttributedTitle:v39];
    }

    else
    {
      type metadata accessor for AudiobookSleepTimerCustomHeaderViewController();
      v40 = &selRef_hasTooManyAuthors;
      v42 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v41 = v93;
      [v93 _setHeaderContentViewController:v42];

      v31 = v92;
      v32 = v90;
    }

    type metadata accessor for AudiobookSleepTimerCustomDateViewController();
    v43 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) v40[200]];
    [v41 setContentViewController:v43];
    sub_1007A2154();
    v44 = v88;
    sub_100796C94();
    v45 = v31;
    v46 = *(v31 + 16);
    v80 = v31 + 16;
    v81 = v46;
    v47 = v89;
    (v46)(v32, v15, v89);
    type metadata accessor for BundleFinder();
    v48 = swift_getObjCClassFromMetadata();
    v79 = v48;
    v78 = objc_opt_self();
    v49 = [v78 v20[381]];
    v50 = v94;
    v76 = *(v94 + 16);
    v77 = v94 + 16;
    v51 = v86;
    v76(v91, v44, v86);
    sub_1007A22D4();
    v52 = *(v50 + 8);
    v94 = v50 + 8;
    v75 = v52;
    v52(v44, v51);
    v53 = *(v45 + 8);
    v92 = v45 + 8;
    v74 = v53;
    v53(v15, v47);
    v54 = swift_allocObject();
    v55 = v84;
    v54[2] = v43;
    v54[3] = v55;
    v56 = v51;
    v57 = ObjectType;
    v54[4] = v85;
    v54[5] = v57;
    v87 = v43;

    v58 = sub_1007A2214();

    aBlock[4] = sub_100282B60;
    aBlock[5] = v54;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100201C54;
    aBlock[3] = &unk_100A11EC0;
    v59 = _Block_copy(aBlock);

    v60 = objc_opt_self();
    v61 = [v60 actionWithTitle:v58 style:0 handler:v59];
    _Block_release(v59);

    v62 = objc_opt_self();
    v63 = [v62 bc_booksLabelColor];
    [v61 _setTitleTextColor:v63];

    [v93 addAction:v61];
    sub_1007A2154();
    sub_100796C94();
    (v81)(v90, v15, v47);
    v64 = [v78 bundleForClass:v79];
    v76(v91, v44, v56);
    sub_1007A22D4();
    v75(v44, v56);
    v74(v15, v47);
    v65 = sub_1007A2214();

    v66 = [v60 actionWithTitle:v65 style:1 handler:0];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v67 = [v62 bc_booksLabelColor];
      [v66 _setTitleTextColor:v67];
    }

    v68 = v93;
    [v93 addAction:{v66, v73}];
    v69 = [v68 popoverPresentationController];

    v70 = v82;
    if (v69)
    {
      v71 = v73;
      [v69 setSourceView:v73];
      [v71 bounds];
      [v69 setSourceRect:{v72 * 0.5, 0.0, 1.0, 1.0}];
      [v69 setPermittedArrowDirections:3];
    }

    [v70 presentViewController:v68 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002813B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  [*(a2 + OBJC_IVAR____TtC5Books43AudiobookSleepTimerCustomDateViewController_datePicker) countDownDuration];
  v5 = v4;
  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100AD7F90);
  v7 = sub_10079ACC4();
  v8 = sub_1007A29D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = lround(v5 / 60.0);
    _os_log_impl(&_mh_execute_header, v7, v8, "Setting custom sleep timer %ld minutes", v9, 0xCu);
  }

  v10 = [objc_opt_self() defaultTimer];
  [v10 setFixedTimerWithDuration:v5];

  return a3();
}

void sub_100281524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_100AD1350 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100AD7F90);
    v7 = sub_10079ACC4();
    v8 = sub_1007A29D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v7, v8, "Setting sleep timer, option numeric index %ld", v9, 0xCu);
    }

    [*&v5[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler] setSleepTimerOption:a3];
    sub_10027A3E4(a3);
  }
}

uint64_t sub_100281674()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_100274880();
    v3 = *&v2[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton];

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10028088C(v3, sub_100282B0C, v4);
  }

  return result;
}

void sub_10028174C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10027A3E4(8);
  }
}

uint64_t sub_1002817AC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10028182C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_10028189C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10028191C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_10079B9B4();
}

double sub_1002819F4@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100281A84(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_100281AF8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100281B80(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

void sub_100281C00()
{
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) = 0;
  v1 = v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonProvider;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonViewController) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_datePicker) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudAppearanceTime) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudDisappearTimer) = 0;
  v2 = (v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_scrubberImpactBehavior) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_settingPositionViaScrubber) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_settingPositionViaPlayer) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_settingVolumeViaSlider) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_skipCumulativeDelta) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_wasPlaying) = 0;
  v3 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_supportedSkipAmounts;
  *(v0 + v3) = sub_1001F1048(&off_100A0C3D8);
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_downloadState) = 3;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_attributionView) = 0;
  v4 = (v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___languageSuffix);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_lastAccessibilityAnnouncedScrubbingPosition);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_lastAccessibilityAnnouncedScrubbingSpeed);
  *v6 = 0;
  v6[1] = 0;
  sub_1007A38A4();
  __break(1u);
}

uint64_t sub_100281D84(void *a1)
{
  ObjectType = swift_getObjectType();
  v9 = &off_100A0F178;
  v7[0] = a1;
  v2 = *(*sub_10000E3E8(v7, ObjectType) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style);
  v3 = objc_opt_self();
  v4 = a1;

  v5 = [v3 bc_nowPlayingVibrantQuaternary];
  v2[4] = sub_10079DEA4();

  v2[6] = sub_10079DDC4();

  v2[28] = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();

  return sub_1000074E0(v7);
}

void sub_100281E68(void *a1)
{
  v2 = v1;
  v4 = [v1 presentedViewController];
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = a1;
    v15 = sub_100282808;
    v16 = v7;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_1003323D0;
    v14 = &unk_100A11998;
    v8 = _Block_copy(&v11);
    v9 = a1;

    [v5 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }

  else
  {
    v15 = BKAppDelegate.enableMetricsInspectorOnDebugMode();
    v16 = 0;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_1003323D0;
    v14 = &unk_100A11920;
    v10 = _Block_copy(&v11);
    [v2 presentViewController:a1 animated:1 completion:v10];
    _Block_release(v10);
  }
}

void sub_10028201C()
{
  v1 = v0;
  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AD7F90);
  v3 = sub_10079ACC4();
  v4 = sub_1007A29D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "openTOC()", v5, 2u);
  }

  v6 = [objc_allocWithZone(UINavigationController) initWithRootViewController:*(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_tocVC)];
  [v6 setModalPresentationStyle:1];
  [v6 setOverrideUserInterfaceStyle:2];
  sub_100281E68(v6);
}

void sub_100282170()
{
  v1 = v0;
  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AD7F90);
  v3 = sub_10079ACC4();
  v4 = sub_1007A29D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "openNarrationSpeedPicker()", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler);
  swift_unknownObjectRetain();
  v7 = sub_100274880();
  v8 = *&v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed];

  v9 = objc_allocWithZone(type metadata accessor for NarrationSpeedPopoverController(0));
  v10 = sub_1003E52F4(v6, v8);
  sub_100281E68(v10);
}

void sub_1002822D0(float a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v5 = fabs(v17[0]) + v17[0];
  if (v5 > 0.0)
  {
    if (v5 * a1 >= v5 + -0.4)
    {
      v6 = v5 + -0.4;
    }

    else
    {
      v6 = v5 * a1;
    }

    if (qword_100AD1350 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AD7F90);
    v8 = sub_10079ACC4();
    v9 = sub_1007A29D4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v8, v9, "Audiobook setting chapter progress time: %f", v10, 0xCu);
    }

    v12 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler];
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = ObjectType;
    *&v17[4] = sub_1002827F8;
    *&v17[5] = v13;
    *&v17[0] = _NSConcreteStackBlock;
    *&v17[1] = 1107296256;
    *&v17[2] = sub_10021B6B0;
    *&v17[3] = &unk_100A118F8;
    v14 = _Block_copy(v17);
    v15 = v2;

    v11 = v6 / v5;
    *&v16 = v11;
    [v12 scrubTo:v14 completion:v16];
    _Block_release(v14);
  }
}

void sub_100282570()
{
  v1 = sub_100274880();
  v2 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v2 alpha];
  v4 = v3;

  if (v4 != 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudAppearanceTime) = v5;
    sub_10027F494(0.0);
  }
}

void _s5Books48AudiobookNowPlayingFullscreenTouchViewControllerC11endTrackingyySo14IMCustomSliderCF_0()
{
  [*(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) setIsScrubbing:0];
  sub_10027EBF0();
  v1 = sub_100274880();
  v2 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];

  [v2 setSpeed:0];
  v3 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_scrubberImpactBehavior;
  v4 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_scrubberImpactBehavior);
  if (v4)
  {
    [v4 deactivate];
    v5 = *(v0 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v0 + v3) = 0;

  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100AD7F90);
  oslog = sub_10079ACC4();
  v7 = sub_1007A29D4();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "end scrubbing", v8, 2u);
  }
}

uint64_t sub_100282930()
{

  return swift_deallocObject();
}

uint64_t sub_100282A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD4FA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100282B14()
{

  return swift_deallocObject();
}

unint64_t sub_100282B6C()
{
  result = qword_100AEDDB0;
  if (!qword_100AEDDB0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDDB0);
  }

  return result;
}

unint64_t sub_100282BC4()
{
  result = qword_100ADF150;
  if (!qword_100ADF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF150);
  }

  return result;
}

id sub_100282C94()
{
  result = [objc_opt_self() effectWithStyle:10];
  qword_100B22F78 = result;
  return result;
}

char *sub_100282CD4(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView_defaultHeight] = 0x4050000000000000;
  v3 = &v1[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v3 = UIEdgeInsetsZero.top;
  v3[1] = left;
  v3[2] = bottom;
  v3[3] = right;
  v7 = &v1[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration];
  *v7 = 4;
  *(v7 + 1) = *&UIEdgeInsetsZero.top;
  *(v7 + 2) = left;
  *(v7 + 3) = bottom;
  *(v7 + 4) = right;
  v8 = OBJC_IVAR____TtC5Books20PaletteContainerView_containerView;
  type metadata accessor for PaletteContainerView.ContainerView();
  *&v1[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView____lazy_storage___separator] = 0;
  v9 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:a1];
  *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView] = v9;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for PaletteContainerView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setClipsToBounds:1];
  v11 = OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView;
  v12 = [*&v10[OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView] contentView];
  v13 = OBJC_IVAR____TtC5Books20PaletteContainerView_containerView;
  [v12 addSubview:*&v10[OBJC_IVAR____TtC5Books20PaletteContainerView_containerView]];

  v14 = *&v10[v11];
  [v10 addSubview:v14];

  v15 = *&v10[v13];
  swift_unknownObjectWeakAssign();

  return v10;
}

void (*sub_100282EB4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView);
  a1[2] = v3;
  v4 = [v3 _groupName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1007A2254();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_100282F44;
}

void sub_100282F44(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_1007A2214();
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 16) _setGroupName:v4];
  }

  else if (v3)
  {
    v4 = sub_1007A2214();

    [*(a1 + 16) _setGroupName:v4];
  }

  else
  {
    v4 = 0;
    [*(a1 + 16) _setGroupName:0];
  }
}

id sub_100283018(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets];
  v6 = *&v4[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets];
  v7 = *&v4[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets + 16];
  *v5 = a1.f64[0];
  v5[1] = a2;
  v5[2] = a3.f64[0];
  v5[3] = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, a1), vceqq_f64(v7, a3)))) & 1) == 0)
  {
    return [v4 setNeedsLayout];
  }

  return result;
}

void (*sub_100283068(uint64_t *a1))(id **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  *v3 = *v5;
  *(v3 + 16) = v6;
  return sub_1002830E0;
}

void sub_1002830E0(id **a1)
{
  v1 = *a1;
  v2 = ((*a1)[5] + (*a1)[4]);
  v4 = **a1;
  v3 = *(*a1 + 1);
  v5 = *v2;
  v6 = v2[1];
  *v2 = v4;
  v2[1] = v3;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, v5), vceqq_f64(v3, v6)))) & 1) == 0)
  {
    [v1[4] setNeedsLayout];
  }

  free(v1);
}

BOOL sub_100283154(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100284084(v5, v7);
}

void sub_1002831A0(double *a1)
{
  v2 = v1[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration];
  v4 = *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration + 8];
  v3 = *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration + 16];
  v5 = *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration + 24];
  v6 = *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration + 32];
  v7 = *a1;
  if (v2 == 4)
  {
    if (v7 != 4)
    {
      goto LABEL_14;
    }
  }

  else if (v2 != v7)
  {
    goto LABEL_17;
  }

  if (v4 == a1[1])
  {
    v4 = a1[4];
    v8 = v3 == a1[2] && v5 == a1[3];
    if (v8 && v6 == v4)
    {
      return;
    }
  }

  if (v2 == 4)
  {
LABEL_14:
    v10 = sub_10028372C();
    [v10 removeFromSuperview];

    return;
  }

LABEL_17:

  [v1 setNeedsLayout];
}

void sub_100283370()
{
  v44.receiver = v0;
  v44.super_class = type metadata accessor for PaletteContainerView();
  objc_msgSendSuper2(&v44, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC5Books20PaletteContainerView_containerView];
  v3 = [v1 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{sub_1002840F0(v5, v7, v9, v11, *&v0[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets], *&v0[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets + 8])}];
  v12 = &v0[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration];
  v13 = v0[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration];
  if (v13 == 4)
  {
    return;
  }

  v14 = [v1 contentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [v0 traitCollection];
  [v23 displayScale];
  v25 = v24;

  Width = 1.0 / v25;
  v27 = v16;
  v28 = v18;
  v29 = v20;
  v30 = v22;
  if (v13 <= 1)
  {
    if (v13)
    {
      Height = CGRectGetHeight(*&v27);
      v32 = v16;
    }

    else
    {
      Height = Width;
      v32 = v16;
      Width = CGRectGetWidth(*&v27);
    }

    goto LABEL_9;
  }

  if (v13 != 2)
  {
    v32 = CGRectGetMaxX(*&v27) - Width;
    v46.origin.x = v16;
    v46.origin.y = v18;
    v46.size.width = v20;
    v46.size.height = v22;
    Height = CGRectGetHeight(v46);
LABEL_9:
    v33 = v18;
    goto LABEL_10;
  }

  v33 = CGRectGetMaxY(*&v27) - Width;
  v45.origin.x = v16;
  v45.origin.y = v18;
  v45.size.width = v20;
  v45.size.height = v22;
  Height = Width;
  v32 = v16;
  Width = CGRectGetWidth(v45);
LABEL_10:
  v34 = sub_10028372C();
  v35 = sub_1002840F0(v32, v33, Width, Height, v12[1], v12[2]);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v47.origin.x = v16;
    v47.origin.y = v18;
    v47.size.width = v20;
    v47.size.height = v22;
    MaxX = CGRectGetMaxX(v47);
    v48.origin.x = v35;
    v48.origin.y = v37;
    v48.size.width = v39;
    v48.size.height = v41;
    v43 = MaxX - CGRectGetMinX(v48);
    v49.origin.x = v35;
    v49.origin.y = v37;
    v49.size.width = v39;
    v49.size.height = v41;
    v35 = v43 - CGRectGetWidth(v49);
  }

  [v34 setFrame:{v35, v37, v39, v41}];
}

CGFloat CGRect.applyingLayoutDirection(_:inBounds:)(uint64_t a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 == 1)
  {
    MaxX = CGRectGetMaxX(*&a2);
    v16.origin.x = a6;
    v16.origin.y = a7;
    v16.size.width = a8;
    v16.size.height = a9;
    v14 = MaxX - CGRectGetMinX(v16);
    v17.origin.x = a6;
    v17.origin.y = a7;
    v17.size.width = a8;
    v17.size.height = a9;
    return v14 - CGRectGetWidth(v17);
  }

  return a6;
}

id sub_10028372C()
{
  v1 = OBJC_IVAR____TtC5Books20PaletteContainerView____lazy_storage___separator;
  v2 = *(v0 + OBJC_IVAR____TtC5Books20PaletteContainerView____lazy_storage___separator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Books20PaletteContainerView____lazy_storage___separator);
  }

  else
  {
    v4 = sub_100283790(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}