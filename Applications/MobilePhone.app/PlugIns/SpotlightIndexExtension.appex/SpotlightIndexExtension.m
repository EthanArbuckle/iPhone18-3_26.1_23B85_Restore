void sub_1000015B8(unint64_t a1)
{
  v86 = a1;
  v2 = (*(*(sub_100003000(&qword_10000C1F8, &qword_100003AD8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v4 = &v62 - v3;
  v5 = (*(*(sub_100003000(&qword_10000C200, &qword_100003AE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v74 = &v62 - v6;
  v7 = (*(*(sub_100003000(&qword_10000C208, &qword_100003AE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v73 = &v62 - v8;
  v9 = (*(*(sub_100003000(&qword_10000C210, &qword_100003AF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v72 = &v62 - v10;
  v11 = *(*(sub_100003000(&qword_10000C218, &qword_100003AF8) - 8) + 64);
  v12 = (__chkstk_darwin)();
  v71 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v70 = &v62 - v15;
  v16 = __chkstk_darwin(v14);
  v81 = &v62 - v17;
  __chkstk_darwin(v16);
  v19 = (&v62 - v18);
  v20 = sub_10000358C();
  v21 = *(v20 - 8);
  isa = v21[8].isa;
  v23 = __chkstk_darwin(v20);
  v80 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v62 - v25;
  v87 = v1;
  if ([*(v1 + OBJC_IVAR___MPSpotlightIndexExtensionHandler_featureFlags) voicemailSearchEnabled])
  {
    v89 = &_swiftEmptyArrayStorage;
    v28 = v86 >> 62;
    v64 = v4;
    if (v86 >> 62)
    {
      v29 = sub_10000375C();
    }

    else
    {
      v29 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = v28;
    if (v29)
    {
      if (v29 < 1)
      {
        __break(1u);
        goto LABEL_34;
      }

      v30 = 0;
      v84 = v86 & 0xC000000000000001;
      v85 = OBJC_IVAR___MPSpotlightIndexExtensionHandler_logger;
      v79 = "SpotlightReIndexManager";
      v83 = &v21[6];
      v76 = &v21[4];
      v67 = v21 + 2;
      v66 = &v21[7];
      v75 = v21 + 1;
      v77 = &_swiftEmptyArrayStorage;
      *&v27 = 136446466;
      v78 = v27;
      v69 = v19;
      v68 = v20;
      v82 = v29;
      v65 = v26;
      do
      {
        if (v84)
        {
          v31 = sub_10000373C();
        }

        else
        {
          v31 = *(v86 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = sub_10000364C();
        v34 = sub_10000371C();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v88 = v37;
          *v35 = v78;
          *(v35 + 4) = sub_100002A58(0xD00000000000001CLL, v79 | 0x8000000000000000, &v88);
          *(v35 + 12) = 2112;
          *(v35 + 14) = v32;
          *v36 = v32;
          v38 = v32;
          _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: item: %@", v35, 0x16u);
          sub_10000332C(v36, &qword_10000C220, &qword_100003B10);

          sub_100003210(v37);
          v29 = v82;
        }

        v39 = [v32 uniqueIdentifier];
        sub_10000367C();

        sub_10000357C();

        if ((*v83)(v19, 1, v20) == 1)
        {

          sub_10000332C(v19, &qword_10000C218, &qword_100003AF8);
        }

        else
        {
          (*v76)(v26, v19, v20);
          v40 = [v32 attributeSet];
          v41 = [v40 textContentSummary];

          if (v41)
          {
            v42 = sub_10000367C();
            v44 = v43;

            v45 = sub_10000364C();
            v46 = sub_10000371C();

            v47 = os_log_type_enabled(v45, v46);
            v77 = v42;
            if (v47)
            {
              v48 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              *v48 = v78;
              *(v48 + 4) = sub_100002A58(0xD00000000000001CLL, v79 | 0x8000000000000000, &v88);
              *(v48 + 12) = 2080;
              *(v48 + 14) = sub_100002A58(v42, v44, &v88);
              _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s: got summary: %s", v48, 0x16u);
              swift_arrayDestroy();
            }

            v20 = v68;
            (v67->isa)(v80, v26, v68);
            v49 = *v66;
            (*v66)(v81, 1, 1, v20);
            v49(v70, 1, 1, v20);
            v50 = sub_10000355C();
            (*(*(v50 - 8) + 56))(v72, 1, 1, v50);
            v51 = sub_10000356C();
            (*(*(v51 - 8) + 56))(v73, 1, 1, v51);
            v52 = v74;
            sub_10000362C();
            v53 = sub_10000363C();
            (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
            v49(v71, 1, 1, v20);
            v54 = objc_allocWithZone(sub_1000035AC());
            LOBYTE(v88) = 1;
            sub_10000359C();
            sub_1000036AC();
            if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v55 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1000036CC();
            }

            sub_1000036DC();

            v26 = v65;
            (v75->isa)(v65, v20);
            v77 = v89;
            v19 = v69;
            v29 = v82;
          }

          else
          {
            (v75->isa)(v26, v20);
          }
        }

        ++v30;
      }

      while (v29 != v30);
    }

    else
    {
      v77 = &_swiftEmptyArrayStorage;
    }

    v56 = sub_10000370C();
    v57 = v64;
    (*(*(v56 - 8) + 56))(v64, 1, 1, v56);
    v58 = swift_allocObject();
    v58[2] = 0;
    v58[3] = 0;
    v59 = v77;
    v58[4] = v77;

    sub_1000024B8(0, 0, v57, &unk_100003B08, v58);

    [objc_opt_self() sleepForTimeInterval:5000000.0];

    v21 = sub_10000364C();
    LOBYTE(v28) = sub_10000371C();
    if (!os_log_type_enabled(v21, v28))
    {

      swift_bridgeObjectRelease_n();
      return;
    }

    v1 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v88 = v19;
    *v1 = 136446722;
    *(v1 + 4) = sub_100002A58(0xD00000000000001CLL, 0x8000000100003D10, &v88);
    *(v1 + 12) = 2050;
    if (v63)
    {
      v60 = sub_10000375C();
    }

    else
    {
      v60 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v1 + 14) = v60;

    *(v1 + 22) = 2048;
    if (!(v59 >> 62))
    {
      v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_30:

      *(v1 + 24) = v61;

      _os_log_impl(&_mh_execute_header, v21, v28, "%{public}s: Asked to handle %{public}ld updated items and found %ld updated messages", v1, 0x20u);
      sub_100003210(v19);

      return;
    }

LABEL_34:
    v61 = sub_10000375C();
    goto LABEL_30;
  }
}

uint64_t sub_10000222C()
{
  sub_1000035DC();
  v0[3] = sub_1000035CC();
  v1 = async function pointer to MessageStoreController.updateMessages(_:)[1];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1000022DC;
  v3 = v0[2];

  return MessageStoreController.updateMessages(_:)(v3);
}

uint64_t sub_1000022DC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_100002454;
  }

  else
  {
    v3 = sub_1000023F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000023F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100002454()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1000024B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_100003000(&qword_10000C1F8, &qword_100003AD8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_1000032BC(a3, v23 - v9);
  v11 = sub_10000370C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000332C(v10, &qword_10000C1F8, &qword_100003AD8);
  }

  else
  {
    sub_1000036FC();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000036EC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10000368C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10000332C(a3, &qword_10000C1F8, &qword_100003AD8);

      return v21;
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

  sub_10000332C(a3, &qword_10000C1F8, &qword_100003AD8);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

id sub_100002868()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MPSpotlightIndexExtensionHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MPSpotlightIndexExtensionHandler()
{
  result = qword_10000C240;
  if (!qword_10000C240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002970()
{
  result = sub_10000366C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100002A0C()
{
  result = qword_10000C1F0;
  if (!qword_10000C1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C1F0);
  }

  return result;
}

uint64_t sub_100002A58(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002B24(v11, 0, 0, 1, a1, a2);
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
    sub_10000325C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003210(v11);
  return v7;
}

unint64_t sub_100002B24(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002C30(a5, a6);
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
    result = sub_10000374C();
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

char *sub_100002C30(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002C7C(a1, a2);
  sub_100002DAC(&off_1000083B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002C7C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002E98(v5, 0);
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

  result = sub_10000374C();
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
        v10 = sub_10000369C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002E98(v10, 0);
        result = sub_10000372C();
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

uint64_t sub_100002DAC(uint64_t result)
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

  result = sub_100002F0C(result, v12, 1, v3);
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

void *sub_100002E98(uint64_t a1, uint64_t a2)
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

  sub_100003000(&qword_10000C228, &qword_100003B18);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002F0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003000(&qword_10000C228, &qword_100003B18);
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

uint64_t sub_100003000(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003048()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003088()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000311C;

  return sub_10000220C(v3, v4, v5, v2);
}

uint64_t sub_10000311C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003210(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000325C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000032BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003000(&qword_10000C1F8, &qword_100003AD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000332C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003000(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_10000338C(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = sub_1000035FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR___MPSpotlightIndexExtensionHandler_featureFlags);
  result = [v11 callHistorySearchEnabled];
  if (result)
  {
    v13 = sub_10000364C();
    v14 = sub_10000371C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, a3, v15, 2u);
    }

    [objc_opt_self() setCallsNeedsDeferredReindexingForReason:4];
    if ([v11 voicemailSearchEnabled])
    {
      sub_10000361C();
      sub_1000035EC();
      sub_10000360C();
      (*(v7 + 8))(v10, v6);
    }

    return (*(a2 + 16))(a2);
  }

  return result;
}