uint64_t getEnumTagSinglePayload for AskToFeatures(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AskToFeatures(_WORD *result, int a2, int a3)
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

unint64_t sub_100001654()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

Swift::Int sub_1000016B0()
{
  sub_100004064();
  sub_100004074(0);
  return sub_100004084();
}

Swift::Int sub_10000171C()
{
  sub_100004064();
  sub_100004074(0);
  return sub_100004084();
}

uint64_t sub_100001784()
{
  v0 = sub_100003EA4();
  sub_100001814(v0, qword_10000C4D0);
  sub_100001878(v0, qword_10000C4D0);
  return sub_100003E94();
}

uint64_t *sub_100001814(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100001878(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

Swift::Int sub_1000018C8()
{
  v1 = *v0;
  sub_100004064();
  sub_100004074(v1);
  return sub_100004084();
}

Swift::Int sub_10000193C()
{
  v1 = *v0;
  sub_100004064();
  sub_100004074(v1);
  return sub_100004084();
}

uint64_t sub_1000019C0(uint64_t a1)
{
  v2 = sub_100001B24();

  return AskToExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001A68();
  sub_100003E74();
  return 0;
}

unint64_t sub_100001A68()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_100001B24()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

uint64_t sub_100001B78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001C44(v11, 0, 0, 1, a1, a2);
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
    sub_100002DBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002D70(v11);
  return v7;
}

unint64_t sub_100001C44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001D50(a5, a6);
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
    result = sub_100004004();
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

char *sub_100001D50(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001D9C(a1, a2);
  sub_100001ECC(&off_1000084B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100001D9C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100001FB8(v5, 0);
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

  result = sub_100004004();
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
        v10 = sub_100003FB4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100001FB8(v10, 0);
        result = sub_100003FF4();
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

uint64_t sub_100001ECC(uint64_t result)
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

  result = sub_10000202C(result, v12, 1, v3);
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

void *sub_100001FB8(uint64_t a1, uint64_t a2)
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

  sub_100002C14(&qword_10000C0B0, &qword_1000044A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000202C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002C14(&qword_10000C0B0, &qword_1000044A8);
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

void sub_100002120(void *a1, uint64_t a2)
{
  v108 = a2;
  v3 = sub_100002C14(&qword_10000C098, &qword_1000044A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v93[-v5];
  v7 = sub_100003E54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v10 = __chkstk_darwin(v7);
  v100 = &v93[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v93[-v13];
  __chkstk_darwin(v12);
  v102 = &v93[-v15];
  v16 = sub_100003F74();
  v106 = *(v16 - 8);
  v107 = v16;
  v17 = *(v106 + 64);
  __chkstk_darwin(v16);
  v112 = &v93[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_100003F54();
  v104 = *(v19 - 8);
  v105 = v19;
  v20 = *(v104 + 64);
  __chkstk_darwin(v19);
  v110 = &v93[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10000C078 != -1)
  {
    swift_once();
  }

  v101 = v14;
  v22 = sub_100003EA4();
  v23 = sub_100001878(v22, qword_10000C4D0);
  v24 = sub_100003E84();
  v25 = sub_100003FE4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Creating Messages payload", v26, 2u);
  }

  v27 = sub_100003F94();
  v28 = sub_100003ED4();
  v30 = v29;

  v109 = v23;
  if (v30)
  {
    v31 = v28;
  }

  else
  {
    v32 = sub_100003F94();
    v31 = sub_100003EC4();
    v34 = v33;

    if (!v34)
    {
      v35 = sub_100003F94();
      v31 = sub_100003EE4();
    }
  }

  v36 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  sub_100003F44();
  sub_100003F24();
  v37 = sub_100003F64();
  v38 = [objc_allocWithZone(UIImage) initWithCGImage:v37];

  [v36 setImage:v38];
  v39 = sub_100003FA4();
  [v36 setCaption:v39];

  v40 = objc_allocWithZone(MSMessageLiveLayout);
  v103 = v36;
  v41 = [v40 initWithAlternateLayout:v36];
  v42 = sub_100003F94();
  sub_100003EB4();

  if ((*(v8 + 6))(v6, 1, v7) == 1)
  {
    sub_100003B78(v6, &qword_10000C098, &qword_1000044A0);
    v43 = sub_100003E84();
    v44 = sub_100003FD4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "AskTo question ID was not a valid UUID. Will not breadcrumb.", v45, 2u);
    }

    v46 = [objc_allocWithZone(MSSession) init];
  }

  else
  {
    v99 = v31;
    v47 = v102;
    (*(v8 + 4))(v102, v6, v7);
    v111[3] = &type metadata for AskToFeatures;
    v111[4] = sub_100002CC4();
    v48 = sub_100003E64();
    sub_100002D70(v111);
    if (v48)
    {
      (*(v8 + 2))(v101, v47, v7);
      v49 = a1;
      v50 = sub_100003E84();
      v51 = sub_100003FE4();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v98 = v52;
        v96 = swift_slowAlloc();
        v111[0] = v96;
        *v52 = 136315394;
        v95 = v50;
        v53 = sub_100003F94();
        v97 = v41;
        v54 = v100;
        sub_100003F04();

        sub_100002D18();
        v55 = sub_100004014();
        v57 = v56;
        v94 = v51;
        v58 = *(v8 + 1);
        v59 = v54;
        v41 = v97;
        v58(v59, v7);
        v60 = sub_100001B78(v55, v57, v111);
        v47 = v102;

        v61 = v98;
        *(v98 + 1) = v60;
        *(v61 + 6) = 2080;
        v62 = v101;
        v63 = sub_100004014();
        v100 = v8;
        v65 = v64;
        v58(v62, v7);
        v66 = sub_100001B78(v63, v65, v111);
        v8 = v100;

        v67 = v98;
        *(v98 + 14) = v66;
        v68 = v95;
        _os_log_impl(&_mh_execute_header, v95, v94, "Breadcrumbing question with system ID %s using content hash %s", v67, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v8 + 1))(v101, v7);
      }

      v73 = objc_allocWithZone(MSSession);
      isa = sub_100003E44().super.isa;
      v72 = [v73 initWithIdentifier:isa];

      if (!v72)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v69 = sub_100003E84();
      v70 = sub_100003FE4();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "AskTo breadcrumbing is not enabled", v71, 2u);
      }

      v72 = [objc_allocWithZone(MSSession) init];
      v47 = v102;
    }

    v75 = *(v8 + 1);
    v46 = v72;
    v75(v47, v7);
  }

  v76 = [objc_allocWithZone(MSMessage) initWithSession:v46];

  sub_100003E04(v77);
  v79 = v78;
  [v76 setURL:v78];

  [v76 setLayout:v41];
  v80 = sub_100003FA4();
  [v76 setSummaryText:v80];

  if ([v41 respondsToSelector:"setRequiredCapabilities:"])
  {
    v81.super.isa = sub_100003FC4().super.isa;
    [v41 setRequiredCapabilities:v81.super.isa];
  }

  else
  {
    v81.super.isa = sub_100003E84();
    v82 = sub_100003FD4();
    if (os_log_type_enabled(v81.super.isa, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81.super.isa, v82, "MSMessage does not respond to #selector(setter: MSMessage.requiredCapabilities)!", v83, 2u);
    }
  }

  v84 = sub_100003F34();
  if (v85 >> 60 == 15)
  {
    v86 = 0;
  }

  else
  {
    v87 = v84;
    v88 = v85;
    v86 = sub_100003E24().super.isa;
    sub_100002C5C(v87, v88);
  }

  v89 = sub_100003FA4();
  v90 = [v76 _pluginPayloadWithAppIconData:v86 appName:v89 allowDataPayloads:0];

  v91 = [v90 data];
  if (v91)
  {
    v92 = v91;

    sub_100003E34();

    (*(v106 + 8))(v112, v107);
    (*(v104 + 8))(v110, v105);
    return;
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_100002C14(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002C5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100002C70(a1, a2);
  }

  return a1;
}

uint64_t sub_100002C70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100002CC4()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_100002D18()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    sub_100003E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_100002D70(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002DBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_100002E1C(void *a1)
{
  v2 = (*(*(sub_100002C14(&qword_10000C0B8, &unk_1000044B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v118 = &v106 - v3;
  v4 = sub_100003E14();
  v119 = *(v4 - 8);
  v5 = *(v119 + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v115 = &v106 - v9;
  v10 = sub_100002C14(&qword_10000C098, &qword_1000044A0);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v106 - v12;
  v14 = sub_100003E54();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v112 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v114 = &v106 - v20;
  __chkstk_darwin(v19);
  v121 = (&v106 - v21);
  if (qword_10000C078 != -1)
  {
    swift_once();
  }

  v113 = v8;
  v22 = v4;
  v23 = sub_100003EA4();
  v123 = sub_100001878(v23, qword_10000C4D0);
  v24 = sub_100003E84();
  v25 = sub_100003FE4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Creating Messages payload", v26, 2u);
  }

  v27 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  v28 = sub_100003F94();
  sub_100003EE4();

  v29 = sub_100003FA4();

  [v27 setCaption:v29];

  v30 = sub_100003F94();
  sub_100003EF4();

  v31 = sub_100003FA4();

  [v27 setSubcaption:v31];

  v32 = objc_allocWithZone(MSMessageLiveLayout);
  v117 = v27;
  v33 = [v32 initWithAlternateLayout:v27];
  if ([v33 respondsToSelector:"setRequiredCapabilities:"])
  {
    v34.super.isa = sub_100003FC4().super.isa;
    [v33 setRequiredCapabilities:v34.super.isa];
  }

  else
  {
    v34.super.isa = sub_100003E84();
    v35 = sub_100003FD4();
    if (os_log_type_enabled(v34.super.isa, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34.super.isa, v35, "MSMessage does not respond to #selector(setter: MSMessage.requiredCapabilities)!", v36, 2u);
    }
  }

  v37 = v22;

  v38 = sub_100003F94();
  sub_100003EB4();

  v39 = (*(v15 + 48))(v13, 1, v14);
  v40 = v121;
  v120 = a1;
  if (v39 == 1)
  {
    sub_100003B78(v13, &qword_10000C098, &qword_1000044A0);
    v41 = sub_100003E84();
    v42 = sub_100003FD4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "AskTo question ID was not a valid UUID. Will not breadcrumb.", v43, 2u);
    }

    v44 = [objc_allocWithZone(MSSession) init];
    v45 = v118;
    v46 = v119;
  }

  else
  {
    v111 = v37;
    (*(v15 + 32))(v121, v13, v14);
    v122[3] = &type metadata for AskToFeatures;
    v122[4] = sub_100002CC4();
    v47 = sub_100003E64();
    sub_100002D70(v122);
    if (v47)
    {
      v48 = v114;
      (*(v15 + 16))(v114, v40, v14);
      v49 = a1;
      v50 = sub_100003E84();
      v51 = sub_100003FE4();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v110 = v33;
        v53 = v52;
        v106 = v52;
        v109 = swift_slowAlloc();
        v122[0] = v109;
        *v53 = 136315394;
        v108 = v50;
        v54 = sub_100003F94();
        v55 = v112;
        sub_100003F04();

        sub_100002D18();
        v56 = sub_100004014();
        v107 = v51;
        v58 = v57;
        v59 = *(v15 + 8);
        v59(v55, v14);
        v60 = sub_100001B78(v56, v58, v122);

        v61 = v106;
        *(v106 + 4) = v60;
        *(v61 + 12) = 2080;
        v62 = sub_100004014();
        v64 = v63;
        v59(v48, v14);
        v65 = sub_100001B78(v62, v64, v122);

        *(v61 + 14) = v65;
        v66 = v108;
        _os_log_impl(&_mh_execute_header, v108, v107, "Breadcrumbing question with system ID %s using content hash %s", v61, 0x16u);
        swift_arrayDestroy();

        v33 = v110;
        v40 = v121;
      }

      else
      {

        (*(v15 + 8))(v48, v14);
      }

      v45 = v118;
      v72 = objc_allocWithZone(MSSession);
      isa = sub_100003E44().super.isa;
      v74 = [v72 initWithIdentifier:isa];

      result = v74;
      v37 = v111;
      if (!result)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      v67 = sub_100003E84();
      v68 = sub_100003FE4();
      v69 = os_log_type_enabled(v67, v68);
      v45 = v118;
      if (v69)
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "AskTo breadcrumbing is not enabled", v70, 2u);
        v40 = v121;
      }

      result = [objc_allocWithZone(MSSession) init];
      v37 = v111;
    }

    v42 = *(v15 + 8);
    v44 = result;
    (v42)(v40, v14);
    v46 = v119;
  }

  v75 = [objc_allocWithZone(MSMessage) initWithSession:v44];

  [v75 setLayout:v33];
  v76 = v116;
  sub_100003F84();
  if (v76)
  {
LABEL_25:

    return v42;
  }

  v42 = 1;
  if ((*(v46 + 48))(v45, 1, v37) == 1)
  {
    sub_100003B78(v45, &qword_10000C0B8, &unk_1000044B0);
    sub_100003BD8();
    swift_allocError();
    *v77 = 1;
    swift_willThrow();
    goto LABEL_25;
  }

  v78 = v115;
  (*(v46 + 32))(v115, v45, v37);
  v79 = v113;
  (*(v46 + 16))(v113, v78, v37);
  v80 = sub_100003E84();
  v81 = sub_100003FE4();
  v82 = os_log_type_enabled(v80, v81);
  v110 = v33;
  if (v82)
  {
    v83 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v122[0] = v121;
    *v83 = 136315138;
    LODWORD(v118) = v81;
    v116 = sub_100003DF4();
    v85 = v84;
    v86 = v79;
    v87 = v37;
    v123 = *(v46 + 8);
    v123(v86, v37);
    v88 = sub_100001B78(v116, v85, v122);

    *(v83 + 4) = v88;
    _os_log_impl(&_mh_execute_header, v80, v118, "Generated AskTo URL: %s", v83, 0xCu);
    sub_100002D70(v121);
  }

  else
  {

    v90 = v79;
    v87 = v37;
    v123 = *(v46 + 8);
    v123(v90, v37);
  }

  sub_100003E04(v89);
  v92 = v91;
  [v75 setURL:v91];

  v93 = sub_100003F94();
  sub_100003ED4();
  v42 = v94;

  if (!v42)
  {
    v95 = sub_100003F94();
    sub_100003EC4();
    v42 = v96;

    if (!v42)
    {
      v97 = v87;
      v98 = sub_100003F94();
      sub_100003EE4();
      v42 = v99;

      v87 = v97;
    }
  }

  v100 = sub_100003FA4();

  [v75 setSummaryText:v100];

  if (![v75 respondsToSelector:"_pluginPayloadWithAppIconData:appName:allowDataPayloads:"])
  {
    sub_100003BD8();
    swift_allocError();
    *v105 = 0;
    swift_willThrow();

    v123(v115, v87);
    return v42;
  }

  v101 = v87;
  v102 = sub_100003FA4();
  v103 = [v75 _pluginPayloadWithAppIconData:0 appName:v102 allowDataPayloads:0];

  result = [v103 data];
  if (result)
  {
    v104 = result;
    v42 = sub_100003E34();

    v123(v115, v101);
    return v42;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100003B78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002C14(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100003BD8()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AskToExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AskToExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100003DA0()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}