uint64_t AXTeachableLongFormViewController.TeachableLogger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AXTeachableLongFormViewController_TeachableLogger;
  swift_beginAccess();
  v4 = sub_100003088();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t AXTeachableLongFormViewController.TeachableLogger.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXTeachableLongFormViewController_TeachableLogger;
  swift_beginAccess();
  v4 = sub_100003088();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t AXTeachableLongFormViewController.longFormTitle.getter()
{
  v1 = (v0 + OBJC_IVAR___AXTeachableLongFormViewController_longFormTitle);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t AXTeachableLongFormViewController.longFormTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AXTeachableLongFormViewController_longFormTitle);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t AXTeachableLongFormViewController.items.getter()
{
  v1 = OBJC_IVAR___AXTeachableLongFormViewController_items;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t AXTeachableLongFormViewController.items.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXTeachableLongFormViewController_items;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall AXTeachableLongFormViewController.didReceive(_:)(UNNotification a1)
{
  v2 = v1;
  v59 = sub_100003088();
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [(objc_class *)a1.super.isa request];
  v9 = [v8 content];

  v10 = [v9 userInfo];
  v11 = sub_100003098();

  v62 = 0x656C746974;
  v63 = 0xE500000000000000;
  sub_100003118();
  v12 = *(v11 + 16);
  v58 = v4;
  if (!v12 || (v13 = sub_100002BA8(v64), (v14 & 1) == 0))
  {

    sub_100002BEC(v64);
    goto LABEL_6;
  }

  sub_100002C8C(*(v11 + 56) + 32 * v13, &v65);
  sub_100002BEC(v64);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v15 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_7;
  }

  v15 = v62;
  v16 = v63;
LABEL_7:
  v17 = &v2[OBJC_IVAR___AXTeachableLongFormViewController_longFormTitle];
  swift_beginAccess();
  v18 = v17[1];
  *v17 = v15;
  v17[1] = v16;

  v19 = [(objc_class *)a1.super.isa request];
  v20 = [v19 content];

  v21 = [v20 userInfo];
  v22 = sub_100003098();

  strcpy(v60, "teachableItems");
  HIBYTE(v60[1]) = -18;
  sub_100003118();
  if (!*(v22 + 16) || (v23 = sub_100002BA8(v64), (v24 & 1) == 0))
  {

    sub_100002BEC(v64);
LABEL_14:
    if (!v17[1])
    {
      return;
    }

LABEL_15:
    v28 = *v17;
    v29 = OBJC_IVAR___AXTeachableLongFormViewController_items;
    swift_beginAccess();
    v30 = *&v2[v29];
    if (!v30)
    {
      return;
    }

    v31 = OBJC_IVAR___AXTeachableLongFormViewController_TeachableLogger;
    swift_beginAccess();
    v32 = v58;
    v33 = &v2[v31];
    v34 = v59;
    (*(v58 + 16))(v7, v33, v59);

    v35 = v2;
    v36 = sub_100003068();
    v37 = sub_1000030D8();
    v57 = v35;

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v61 = v39;
      *v38 = 136315138;
      if (v17[1])
      {
        v40 = *v17;
        v41 = v17[1];
      }

      else
      {
        v40 = 0;
        v41 = 0xE000000000000000;
      }

      v42 = sub_100002600(v40, v41, &v61);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Received %s", v38, 0xCu);
      sub_100002C40(v39);

      (*(v58 + 8))(v7, v59);
    }

    else
    {

      (*(v32 + 8))(v7, v34);
    }

    v43 = objc_allocWithZone(OBTextWelcomeController);
    v44 = sub_1000030A8();

    v45 = [v43 initWithTitle:v44 detailText:0 symbolName:0];

    if (v30 >> 62)
    {
      v59 = sub_100003158();
      if (v59)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v59 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v59)
      {
LABEL_24:
        if (v59 < 1)
        {
          __break(1u);
          return;
        }

        v46 = 0;
        v47 = v30 & 0xC000000000000001;
        v58 = v30 & 0xC000000000000001;
        do
        {
          if (v47)
          {
            v48 = sub_100003138();
          }

          else
          {
            v48 = *(v30 + 8 * v46 + 32);
          }

          v49 = v48;
          v50 = [v48 itemTitle];
          if (!v50)
          {
            sub_1000030B8();
            v50 = sub_1000030A8();
          }

          v51 = [v49 itemDescription];
          if (!v51)
          {
            sub_1000030B8();
            v51 = sub_1000030A8();
            v47 = v58;
          }

          ++v46;
          [v45 addBulletedListItemWithTitle:v50 description:v51];
        }

        while (v59 != v46);
      }
    }

    v55 = sub_1000030A8();
    v56 = sub_1000030A8();
    [v45 addSectionWithHeader:v55 content:v56];

    [v57 presentViewController:v45 animated:0 completion:0];
    return;
  }

  sub_100002C8C(*(v22 + 56) + 32 * v23, &v65);
  sub_100002BEC(v64);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v25 = v60[0];
  v26 = v60[1];
  sub_100002D30(0, &qword_1000084D0, NSKeyedUnarchiver_ptr);
  sub_100002CE8(&qword_1000084D8, &qword_1000035D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000035B0;
  *(v27 + 32) = sub_100002D30(0, &qword_1000084E0, NSArray_ptr);
  *(v27 + 40) = sub_100002D30(0, &qword_1000084E8, AXTeachableItem_ptr);
  sub_1000030E8();
  sub_100002D78(v25, v26);

  if (!*(&v66 + 1))
  {
    sub_100002DCC(&v65);
    if (!v17[1])
    {
      return;
    }

    goto LABEL_15;
  }

  sub_100002E34(&v65, v64);
  sub_100002E34(v64, &v65);
  sub_100002CE8(&qword_1000084F8, &qword_1000035E0);
  if (swift_dynamicCast())
  {
    v52 = v60[0];
  }

  else
  {
    v52 = 0;
  }

  v53 = OBJC_IVAR___AXTeachableLongFormViewController_items;
  swift_beginAccess();
  v54 = *&v2[v53];
  *&v2[v53] = v52;

  if (v17[1])
  {
    goto LABEL_15;
  }
}

id AXTeachableLongFormViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1000030A8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AXTeachableLongFormViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100003078();
  v6 = &v3[OBJC_IVAR___AXTeachableLongFormViewController_longFormTitle];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR___AXTeachableLongFormViewController_items] = 0;
  if (a2)
  {
    v7 = sub_1000030A8();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for AXTeachableLongFormViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id AXTeachableLongFormViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id AXTeachableLongFormViewController.init(coder:)(void *a1)
{
  sub_100003078();
  v3 = &v1[OBJC_IVAR___AXTeachableLongFormViewController_longFormTitle];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR___AXTeachableLongFormViewController_items] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AXTeachableLongFormViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id AXTeachableLongFormViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXTeachableLongFormViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002600(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000026CC(v11, 0, 0, 1, a1, a2);
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
    sub_100002C8C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002C40(v11);
  return v7;
}

unint64_t sub_1000026CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000027D8(a5, a6);
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
    result = sub_100003148();
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

char *sub_1000027D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002824(a1, a2);
  sub_100002954(&off_1000042F8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002824(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002A40(v5, 0);
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

  result = sub_100003148();
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
        v10 = sub_1000030C8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002A40(v10, 0);
        result = sub_100003128();
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

uint64_t sub_100002954(uint64_t result)
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

  result = sub_100002AB4(result, v12, 1, v3);
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

void *sub_100002A40(uint64_t a1, uint64_t a2)
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

  sub_100002CE8(&qword_100008588, &unk_100003680);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002AB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002CE8(&qword_100008588, &unk_100003680);
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

unint64_t sub_100002BA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000030F8(*(v2 + 40));

  return sub_100002F40(a1, v4);
}

uint64_t sub_100002C40(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002C8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002CE8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002D30(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100002D78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100002DCC(uint64_t a1)
{
  v2 = sub_100002CE8(&qword_1000084F0, &qword_1000035D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_100002E34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for AXTeachableLongFormViewController()
{
  result = qword_100008608;
  if (!qword_100008608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002E98()
{
  result = sub_100003088();
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

unint64_t sub_100002F40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100003008(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100003108();
      sub_100002BEC(v8);
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