void *sub_100017E6C(SEL *a1)
{
  result = (*((swift_isaMask & *v1) + 0x128))();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100017EF8()
{
  v1 = v0;
  v2 = sub_100033294();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100033274();
  v7 = sub_100033284();
  v8 = sub_100033EA4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "ActivityPickerServiceViewController cleanupViewAndExtension", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  if (*&v1[OBJC_IVAR___ActivityPickerServiceViewController_currentConnection])
  {
    v10 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController_currentConnection + 8];
    v11 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController_currentConnection];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_100033044();
    swift_unknownObjectRelease();
  }

  v12 = [v1 extensionContext];
  if (v12)
  {
    v13 = v12;
    isa = sub_100033DE4().super.isa;
    [v13 completeRequestReturningItems:isa completionHandler:0];
  }

  v15 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController_hostingViewController];
  if (v15)
  {
    [v15 dismissViewControllerAnimated:0 completion:0];
  }

  return [v1 dismissViewControllerAnimated:0 completion:0];
}

id sub_100018154(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100033D04();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_10001822C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

char *sub_100018274(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A68(&qword_100045758, &unk_100035890);
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

char *sub_100018380(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A68(&qword_100045718, &qword_100035858);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10001848C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1000185E4()
{
  v1 = v0;
  v2 = OBJC_IVAR___ActivityPickerServiceViewController_viewConfiguration;
  type metadata accessor for ActivityPickerViewConfiguration();
  *(v0 + v2) = sub_100012708();
  *(v0 + OBJC_IVAR___ActivityPickerServiceViewController_hostingViewController) = 0;
  *(v0 + OBJC_IVAR___ActivityPickerServiceViewController_tokenDecoder) = 0;
  *(v0 + OBJC_IVAR___ActivityPickerServiceViewController_tokenEncoder) = 0;
  v3 = v0 + OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client;
  *v3 = 0u;
  *(v3 + 16) = 1;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0u;
  v4 = (v0 + OBJC_IVAR___ActivityPickerServiceViewController_currentConnection);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR___ActivityPickerServiceViewController_connectionLock;
  *(v1 + v5) = [objc_allocWithZone(NSLock) init];
  sub_100034044();
  __break(1u);
}

uint64_t sub_1000186E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_1000186FC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100018760(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000187B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100018808(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100033E64();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100005AEC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000188A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000188D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_1000189D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000189E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_100018A34()
{
  result = qword_100045730;
  if (!qword_100045730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100045730);
  }

  return result;
}

uint64_t sub_100018A80()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_100018B04()
{
  result = qword_100045738;
  if (!qword_100045738)
  {
    sub_100033CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045738);
  }

  return result;
}

unint64_t sub_100018B5C()
{
  result = qword_100045748;
  if (!qword_100045748)
  {
    sub_100006924(&qword_100045740, &qword_100035878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045748);
  }

  return result;
}

uint64_t sub_100018BC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_100018CCC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

double sub_100018D04@<D0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v17 = a3;
  v5 = sub_100033294();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 processIdentifier];
  [a1 auditToken];
  v11 = v18;
  v12 = v19[0];
  (*(v6 + 16))(v9, a2, v5);
  sub_100018EE8(v10, v11, *(&v11 + 1), v12, *(&v12 + 1), a1, v9, &v18);
  (*(v6 + 8))(a2, v5);
  v13 = v19[0];
  v14 = v17;
  *v17 = v18;
  v14[1] = v13;
  result = *(v19 + 9);
  *(v14 + 25) = *(v19 + 9);
  return result;
}

double sub_100018E6C@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  sub_100018EE8(a1, a2, a3, a4, a5, a6, a7, &v11);
  v9 = v12[0];
  *a8 = v11;
  a8[1] = v9;
  result = *(v12 + 9);
  *(a8 + 25) = *(v12 + 9);
  return result;
}

unint64_t sub_100018EAC(uint64_t a1)
{
  v2 = sub_10001939C();

  return sub_1000115BC(a1, v2);
}

void sub_100018EE8(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *token.val = a2;
  *&token.val[2] = a3;
  *&token.val[4] = a4;
  *&token.val[6] = a5;
  v16 = SecTaskCreateWithAuditToken(0, &token);
  if (v16)
  {
    v17 = v16;
    v18 = sub_100006BA0();
    v31 = v19;
    v32 = v18;
    v33 = sub_100006D7C();
    *token.val = a2;
    *&token.val[2] = a3;
    *&token.val[4] = a4;
    *&token.val[6] = a5;
    v35 = 0;
    v24 = sub_100033254();
    v26 = v25;
    v27 = sub_100033294();
    (*(*(v27 - 8) + 8))(a7, v27);

    v28 = v33;
    v30 = v31;
    v29 = v32;
  }

  else
  {
    v20 = sub_100033284();
    v21 = sub_100033EB4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create SecTask from audit token", v22, 2u);
    }

    v23 = sub_100033294();
    (*(*(v23 - 8) + 8))(a7, v23);
    v28 = 0;
    v24 = 0;
    v26 = 0;
    v29 = 0;
    v30 = 0;
  }

  *a8 = a1;
  *(a8 + 8) = v29;
  *(a8 + 16) = v30;
  *(a8 + 24) = v24;
  *(a8 + 32) = v26;
  *(a8 + 40) = v28 & 1;
}

unint64_t sub_100019240(uint64_t a1)
{
  result = sub_100019268();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100019268()
{
  result = qword_100045760;
  if (!qword_100045760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045760);
  }

  return result;
}

__n128 sub_1000192BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000192D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_10001932C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_10001939C()
{
  result = qword_100045768;
  if (!qword_100045768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045768);
  }

  return result;
}

uint64_t sub_100019440()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_1000194B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_100019500(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);

  return v3(v4);
}

uint64_t sub_100019554()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

void (*sub_1000195C4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100002518;
}

uint64_t sub_100019674()
{
  swift_beginAccess();
  sub_100001A68(&qword_100045778, &qword_100035990);
  sub_1000332D4();
  return swift_endAccess();
}

uint64_t sub_1000196E8(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045780, &qword_100035998);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045778, &qword_100035990);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_100019820(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045780, &qword_100035998);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider__groups;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045778, &qword_100035990);
  sub_1000332D4();
  swift_endAccess();
  return sub_1000028CC;
}

uint64_t sub_100019990()
{
  v1 = v0 + OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider_selectionsDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1000199E0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider_selectionsDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100019A4C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider_selectionsDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100019AEC;
}

void sub_100019AEC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_100019B74(int a1)
{
  v3 = sub_100001A68(&qword_100045778, &qword_100035990);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v13 - v6;
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider__groups;
  v13[1] = _swiftEmptyArrayStorage;
  sub_100001A68(&qword_100045770, &qword_100035940);
  sub_1000332C4();
  (*(v4 + 32))(v10 + v11, v7, v3);
  *(v10 + OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider_selectionsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_10001A084(a1);
  return v10;
}

uint64_t sub_100019CB8(int a1)
{
  v3 = sub_100001A68(&qword_100045778, &qword_100035990);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v10 - v6;
  v8 = OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider__groups;
  v10[1] = _swiftEmptyArrayStorage;
  sub_100001A68(&qword_100045770, &qword_100035940);
  sub_1000332C4();
  (*(v4 + 32))(v1 + v8, v7, v3);
  *(v1 + OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider_selectionsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_10001A084(a1);
  return v1;
}

uint64_t sub_100019DE8()
{
  v1 = v0;
  v2 = sub_100033294();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100033274();
  v7 = sub_100033284();
  v8 = sub_100033EA4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "ActivityProvider deinit", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider__groups;
  v11 = sub_100001A68(&qword_100045778, &qword_100035990);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  sub_10001BC8C(v1 + OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider_selectionsDelegate);
  return v1;
}

uint64_t sub_100019F88()
{
  sub_100019DE8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100019FE0(int a1)
{
  v3 = (*(*v1 + 192))();
  v5 = v4;
  v7 = v6;
  sub_10001A084(a1);
  v8 = *(*v1 + 200);

  return v8(v3, v5, v7);
}

uint64_t sub_10001A084(int a1)
{
  LODWORD(v188) = a1;
  v1 = sub_100033294();
  v186 = *(v1 - 8);
  v187 = v1;
  v2 = *(v186 + 64);
  __chkstk_darwin(v1);
  v185 = &v173 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001A68(&qword_1000458D0, &unk_100035A68);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v173 - v6;
  v8 = sub_100032F84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100033144();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100032FE4();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_100032FD4();
  sub_100033124();
  sub_100033134();
  (*(v14 + 8))(v17, v13);
  v174 = v21;
  sub_100032FC4();
  v22 = 0;
  (*(v9 + 8))(v12, v8);
  v198[0] = &_swiftEmptyDictionarySingleton;
  v191 = v174;
  sub_100020170(&qword_1000458D8, &type metadata accessor for UsageStore);

  v23 = &v194;
  sub_100033DB4();
  v24 = sub_100020170(&qword_1000458E0, &type metadata accessor for UsageStore);
  sub_100033E74();
  if ((v197 & 1) == 0)
  {
    v25 = v192;
    v26 = v195;
    while ((v193 & 1) == 0)
    {
      if (v196 != v25)
      {
        goto LABEL_221;
      }

      if (v26 == v191)
      {
        goto LABEL_8;
      }

      v27 = sub_100033E94();
      sub_10001FF88(v28, v7);
      v27(&v191, 0);
      sub_100033E84();
      sub_10001BCB4(v198, v7);
      sub_10001FFF8(v7);
      sub_100033E74();
      v26 = v195;
      v25 = v192;
      if (v197)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_8:
  v187 = 0;

  v183 = v198[0];
  v29 = [objc_opt_self() sharedCategories];
  v30 = sub_10000AFB8();

  v31 = v30[2];
  if (v31)
  {
    v32 = 0;
    v23 = (v30 + 4);
    do
    {
      if (v32 >= v30[2])
      {
        goto LABEL_222;
      }

      v35 = *(v23 + 8 * v32);
      v36 = sub_100033D34();
      v38 = v37;
      v39 = v183;
      v22 = v183[2];
      v24 = v35;
      if (v22)
      {
        sub_10001E180(v36, v38);
        if (v40)
        {

          goto LABEL_11;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v191 = v39;
      v42 = sub_10001E180(v36, v38);
      v44 = *(v39 + 16);
      v45 = (v43 & 1) == 0;
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
        goto LABEL_229;
      }

      v22 = v43;
      if (*(v39 + 24) >= v47)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v53 = v42;
          sub_10001F8E0();
          v42 = v53;
          if ((v22 & 1) == 0)
          {
LABEL_22:
            v49 = v191;
            *(v191 + 8 * (v42 >> 6) + 64) |= 1 << v42;
            v50 = (v49[6] + 16 * v42);
            *v50 = v36;
            v50[1] = v38;
            *(v49[7] + 8 * v42) = _swiftEmptyArrayStorage;

            v51 = v49[2];
            v46 = __OFADD__(v51, 1);
            v52 = v51 + 1;
            if (v46)
            {
              goto LABEL_231;
            }

            v183 = v49;
            v49[2] = v52;
            goto LABEL_11;
          }

          goto LABEL_10;
        }
      }

      else
      {
        sub_10001F580(v47, isUniquelyReferenced_nonNull_native);
        v42 = sub_10001E180(v36, v38);
        if ((v22 & 1) != (v48 & 1))
        {
LABEL_237:
          sub_1000340F4();
          __break(1u);
          goto LABEL_238;
        }
      }

      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_10:
      v22 = v42;

      v183 = v191;
      v33 = *(v191 + 56);
      v34 = *(v33 + 8 * v22);
      *(v33 + 8 * v22) = _swiftEmptyArrayStorage;

LABEL_11:
      ++v32;
    }

    while (v31 != v32);
  }

  v23 = v187;
  v54 = sub_10001C390(v183, v188 & 1);
  v22 = v54;
  v24 = _swiftEmptyArrayStorage;
  v198[0] = _swiftEmptyArrayStorage;
  if (v54 >> 62)
  {
    goto LABEL_234;
  }

  v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
  v184 = v23;
  v187 = v55;
  v188 = v22;
  if (!v55)
  {
    v82 = _swiftEmptyArrayStorage;
    v81 = _swiftEmptyArrayStorage;
    goto LABEL_73;
  }

  v56 = 0;
  v185 = (v22 & 0xFFFFFFFFFFFFFF8);
  v186 = v22 & 0xC000000000000001;
  while (v186)
  {
    v59 = sub_100033FC4();
    v23 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_49;
    }

LABEL_35:
    v60 = sub_100009FE4();
    v55 = *(*v59 + 112);
    v24 = *v60;
    v61 = *(v55(v24) + 16);

    v190 = v61;
    v189 = 1;
    sub_100006698();
    sub_100033DC4();
    sub_100033DC4();
    if (v191 == v194 && v192 == v195)
    {
    }

    else
    {
      v63 = sub_1000340D4();

      if ((v63 & 1) == 0)
      {

        v57 = v187;
        v22 = v188;
        goto LABEL_31;
      }
    }

    v64 = v55(v62);
    v66 = *(v64 + 24);
    v65 = *(v64 + 32);

    if (v66 == sub_100033D34() && v65 == v67)
    {

      v57 = v187;
      v22 = v188;
LABEL_46:
      sub_100033FF4();
      v24 = *(v198[0] + 16);
      sub_100034024();
      sub_100034034();
      sub_100034004();
      goto LABEL_31;
    }

    v69 = sub_1000340D4();

    v57 = v187;
    v22 = v188;
    if (v69)
    {
      goto LABEL_46;
    }

LABEL_31:
    ++v56;
    v58 = _swiftEmptyArrayStorage;
    if (v23 == v57)
    {
      goto LABEL_50;
    }
  }

  if (v56 >= *(v185 + 2))
  {
    goto LABEL_223;
  }

  v59 = *(v22 + 8 * v56 + 32);

  v23 = v56 + 1;
  if (!__OFADD__(v56, 1))
  {
    goto LABEL_35;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  v70 = 0;
  v180 = v198[0];
  v198[0] = v58;
  v181 = CTCategoryIdentifierSocialNetworking;
  while (2)
  {
    if (v186)
    {
      v71 = sub_100033FC4();
      v24 = v71;
      v72 = (v70 + 1);
      if (__OFADD__(v70, 1))
      {
        goto LABEL_70;
      }

LABEL_56:
      v73 = *(*v24 + 112);
      v74 = *(v73(v71) + 16);

      v190 = v74;
      v189 = 1;
      sub_100033DC4();
      sub_100033DC4();
      if (v191 == v194 && v192 == v195)
      {
      }

      else
      {
        v23 = sub_1000340D4();

        if ((v23 & 1) == 0)
        {

          v55 = v187;
          v22 = v188;
          goto LABEL_52;
        }
      }

      v76 = v73(v75);
      v78 = *(v76 + 24);
      v77 = *(v76 + 32);

      if (v78 == sub_100033D34() && v77 == v79)
      {

        v55 = v187;
        v22 = v188;
      }

      else
      {
        v23 = sub_1000340D4();

        v55 = v187;
        v22 = v188;
        if ((v23 & 1) == 0)
        {

          goto LABEL_52;
        }
      }

      sub_100033FF4();
      v23 = *(v198[0] + 16);
      sub_100034024();
      sub_100034034();
      sub_100034004();
LABEL_52:
      ++v70;
      v24 = _swiftEmptyArrayStorage;
      if (v72 == v55)
      {
        goto LABEL_71;
      }

      continue;
    }

    break;
  }

  if (v70 >= *(v185 + 2))
  {
    goto LABEL_224;
  }

  v24 = *(v22 + 8 * v70 + 32);

  v72 = (v70 + 1);
  if (!__OFADD__(v70, 1))
  {
    goto LABEL_56;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  v81 = v198[0];
  v23 = v184;
  v82 = v180;
LABEL_73:
  v191 = v82;
  sub_10001E1F8(v81);
  v83 = v191;
  v198[0] = v24;
  if (!v55)
  {
    v97 = v24;
    goto LABEL_97;
  }

  v181 = v191;
  v84 = 0;
  v186 = v22 & 0xC000000000000001;
  v85 = v22 & 0xFFFFFFFFFFFFFF8;
  v185 = CTCategoryIdentifierGames;
  while (2)
  {
    if (v186)
    {
      v87 = sub_100033FC4();
      v86 = v87;
      v88 = (v84 + 1);
      if (__OFADD__(v84, 1))
      {
        goto LABEL_94;
      }

LABEL_80:
      v89 = *(*v86 + 112);
      v90 = *(v89(v87) + 16);

      v190 = v90;
      v189 = 1;
      sub_100006698();
      sub_100033DC4();
      sub_100033DC4();
      if (v191 == v194 && v192 == v195)
      {
      }

      else
      {
        v23 = sub_1000340D4();

        if ((v23 & 1) == 0)
        {

          v55 = v187;
          v22 = v188;
          goto LABEL_76;
        }
      }

      v92 = v89(v91);
      v23 = *(v92 + 24);
      v93 = *(v92 + 32);

      if (v23 == sub_100033D34() && v93 == v94)
      {

        v55 = v187;
        v22 = v188;
      }

      else
      {
        v23 = sub_1000340D4();

        v55 = v187;
        v22 = v188;
        if ((v23 & 1) == 0)
        {

          goto LABEL_76;
        }
      }

      sub_100033FF4();
      v96 = *(v198[0] + 16);
      sub_100034024();
      sub_100034034();
      sub_100034004();
LABEL_76:
      ++v84;
      v24 = _swiftEmptyArrayStorage;
      if (v88 == v55)
      {
        goto LABEL_95;
      }

      continue;
    }

    break;
  }

  if (v84 >= *(v85 + 16))
  {
    goto LABEL_225;
  }

  v86 = *(v22 + 8 * v84 + 32);

  v88 = (v84 + 1);
  if (!__OFADD__(v84, 1))
  {
    goto LABEL_80;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  v97 = v198[0];
  v23 = v184;
  v83 = v181;
LABEL_97:
  v191 = v83;
  sub_10001E1F8(v97);
  v98 = v191;
  v198[0] = v24;
  if (!v55)
  {
    v112 = v24;
    goto LABEL_121;
  }

  v181 = v191;
  v99 = 0;
  v186 = v22 & 0xC000000000000001;
  v100 = v22 & 0xFFFFFFFFFFFFFF8;
  v185 = CTCategoryIdentifierEntertainment;
  while (2)
  {
    if (v186)
    {
      v102 = sub_100033FC4();
      v101 = v102;
      v103 = (v99 + 1);
      if (__OFADD__(v99, 1))
      {
        goto LABEL_118;
      }

LABEL_104:
      v104 = *(*v101 + 112);
      v105 = *(v104(v102) + 16);

      v190 = v105;
      v189 = 1;
      sub_100006698();
      sub_100033DC4();
      sub_100033DC4();
      if (v191 == v194 && v192 == v195)
      {
      }

      else
      {
        v23 = sub_1000340D4();

        if ((v23 & 1) == 0)
        {

          v55 = v187;
          v22 = v188;
          goto LABEL_100;
        }
      }

      v107 = v104(v106);
      v23 = *(v107 + 24);
      v108 = *(v107 + 32);

      if (v23 == sub_100033D34() && v108 == v109)
      {

        v55 = v187;
        v22 = v188;
      }

      else
      {
        v23 = sub_1000340D4();

        v55 = v187;
        v22 = v188;
        if ((v23 & 1) == 0)
        {

          goto LABEL_100;
        }
      }

      sub_100033FF4();
      v111 = *(v198[0] + 16);
      sub_100034024();
      sub_100034034();
      sub_100034004();
LABEL_100:
      ++v99;
      v24 = _swiftEmptyArrayStorage;
      if (v103 == v55)
      {
        goto LABEL_119;
      }

      continue;
    }

    break;
  }

  if (v99 >= *(v100 + 16))
  {
    goto LABEL_226;
  }

  v101 = *(v22 + 8 * v99 + 32);

  v103 = (v99 + 1);
  if (!__OFADD__(v99, 1))
  {
    goto LABEL_104;
  }

LABEL_118:
  __break(1u);
LABEL_119:
  v112 = v198[0];
  v23 = v184;
  v98 = v181;
LABEL_121:
  v191 = v98;
  sub_10001E1F8(v112);
  v186 = v191;
  v198[0] = v24;
  if (!v55)
  {
    v188 = v24;
    goto LABEL_158;
  }

  v113 = 0;
  v114 = v22 & 0xC000000000000001;
  v115 = v22 & 0xFFFFFFFFFFFFFF8;
  v185 = CTCategoryIdentifierOther;
  while (2)
  {
    if (v114)
    {
      v117 = sub_100033FC4();
      v24 = v117;
      v118 = (v113 + 1);
      if (__OFADD__(v113, 1))
      {
        goto LABEL_142;
      }

LABEL_128:
      v119 = *(*v24 + 112);
      v120 = *(v119(v117) + 16);

      v190 = v120;
      v189 = 1;
      sub_100006698();
      sub_100033DC4();
      sub_100033DC4();
      if (v191 == v194 && v192 == v195)
      {
      }

      else
      {
        v23 = sub_1000340D4();

        if ((v23 & 1) == 0)
        {

          v55 = v187;
          v22 = v188;
          goto LABEL_124;
        }
      }

      v122 = v119(v121);
      v124 = *(v122 + 24);
      v123 = *(v122 + 32);

      if (v124 == sub_100033D34() && v123 == v125)
      {

        v55 = v187;
        v22 = v188;
      }

      else
      {
        v23 = sub_1000340D4();

        v55 = v187;
        v22 = v188;
        if ((v23 & 1) == 0)
        {

          goto LABEL_124;
        }
      }

      sub_100033FF4();
      v23 = *(v198[0] + 16);
      sub_100034024();
      sub_100034034();
      sub_100034004();
LABEL_124:
      ++v113;
      v116 = _swiftEmptyArrayStorage;
      if (v118 == v55)
      {
        goto LABEL_143;
      }

      continue;
    }

    break;
  }

  if (v113 >= *(v115 + 16))
  {
    goto LABEL_227;
  }

  v24 = *(v22 + 8 * v113 + 32);

  v118 = (v113 + 1);
  if (!__OFADD__(v113, 1))
  {
    goto LABEL_128;
  }

LABEL_142:
  __break(1u);
LABEL_143:
  v24 = 0;
  v188 = v198[0];
  v191 = v116;
  while (2)
  {
    if (v114)
    {
      v128 = sub_100033FC4();
      v127 = v128;
      v129 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_155;
      }

LABEL_149:
      v194 = v127;
      __chkstk_darwin(v128);
      *(&v173 - 2) = &v194;
      v23 = v184;
      v130 = sub_10001FA50(sub_1000200FC, (&v173 - 4), v186);
      if (v130)
      {
        v184 = v23;
      }

      else
      {
        v194 = v127;
        __chkstk_darwin(v130);
        *(&v173 - 2) = &v194;
        v131 = sub_10001FA50(sub_1000201B8, (&v173 - 4), v188);
        v184 = v23;
        if ((v131 & 1) == 0)
        {
          sub_100033FF4();
          v23 = *(v191 + 16);
          sub_100034024();
          sub_100034034();
          sub_100034004();
          goto LABEL_145;
        }
      }

LABEL_145:
      ++v24;
      if (v129 == v55)
      {
        goto LABEL_156;
      }

      continue;
    }

    break;
  }

  if (v24 >= *(v115 + 16))
  {
    goto LABEL_228;
  }

  v127 = *(v22 + 8 * v24 + 32);

  v129 = (v24 + 1);
  if (!__OFADD__(v24, 1))
  {
    goto LABEL_149;
  }

LABEL_155:
  __break(1u);
LABEL_156:
  v23 = v184;
LABEL_158:

  v191 = sub_10001FB8C(v132, sub_10001FC28);
  sub_10001E2E8(&v191, sub_1000201D8, type metadata accessor for ActivityGroup, sub_10001E6B0, sub_10001E4B8);
  v133 = &v199;
  v180 = v23;
  if (v23)
  {
LABEL_238:
    v172 = *(v133 - 32);

    __break(1u);
    return result;
  }

  v134 = v191;
  v191 = v186;
  sub_10001E1F8(v134);
  sub_10001E1F8(v188);
  v135 = v191;
  v191 = _swiftEmptyArrayStorage;
  v23 = v182;
  if (v135 >> 62)
  {
    v136 = sub_100034054();
  }

  else
  {
    v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v173 = v23 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  if (v136)
  {
    v24 = 0;
    v137 = (*v23 + 96);
    v184 = *v137;
    v181 = v137;
    v179 = v135 & 0xC000000000000001;
    v176 = v135 & 0xFFFFFFFFFFFFFF8;
    v175 = v135 + 32;
    v177 = v136;
    v178 = v135;
    while (2)
    {
      if (v179)
      {
        v138 = sub_100033FC4();
        v139 = v138;
        v46 = __OFADD__(v24++, 1);
        if (v46)
        {
          goto LABEL_230;
        }
      }

      else
      {
        if (v24 >= *(v176 + 16))
        {
          goto LABEL_233;
        }

        v139 = *(v175 + 8 * v24);

        v46 = __OFADD__(v24++, 1);
        if (v46)
        {
          goto LABEL_230;
        }
      }

      v185 = v24;
      v140 = v184(v138);
      v23 = v140;
      v186 = v140 & 0xFFFFFFFFFFFFFF8;
      if (v140 >> 62)
      {
        v141 = sub_100034054();
      }

      else
      {
        v141 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v187 = v23 & 0xC000000000000001;
      v188 = -v141;
      v142 = 4;
      while (1)
      {
        if (v188 + v142 == 4)
        {

          sub_100033DD4();
          if (*((v191 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v191 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v169 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_100033E14();
          }

          sub_100033E34();

          v23 = v182;
          v24 = v185;
          goto LABEL_164;
        }

        v143 = v142 - 4;
        if (v187)
        {
          v144 = sub_100033FC4();
          v22 = v144;
        }

        else
        {
          if (v143 >= *(v186 + 16))
          {
            goto LABEL_219;
          }

          v22 = *(v23 + 8 * v142);
        }

        v145 = (*(*v22 + 112))(v144);
        v146 = *(v145 + 24);
        v147 = *(v145 + 32);

        v24 = v139;
        v149 = (*(*v139 + 112))(v148);
        v151 = *(v149 + 24);
        v150 = *(v149 + 32);

        if (v146 == v151 && v147 == v150)
        {
          break;
        }

        v153 = sub_1000340D4();

        if (v153)
        {
          goto LABEL_191;
        }

        ++v142;
        v139 = v24;
        if (__OFADD__(v143, 1))
        {
          goto LABEL_220;
        }
      }

LABEL_191:

      v155 = v184(v154);
      v23 = _swiftEmptyArrayStorage;
      if ((v155 & 0xC000000000000001) != 0)
      {
        v22 = sub_100033FC4();
      }

      else
      {
        if (v143 >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_232;
        }

        v22 = *(v155 + 8 * v142);
      }

      v157 = (*(*v24 + 160))(v156);
      v158 = v157;
      v194 = _swiftEmptyArrayStorage;
      if (v157 >> 62)
      {
        v159 = sub_100034054();
        if (v159)
        {
          goto LABEL_196;
        }
      }

      else
      {
        v159 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v159)
        {
LABEL_196:
          v187 = v22;
          v22 = 0;
          v188 = v158 & 0xC000000000000001;
          while (1)
          {
            if (v188)
            {
              v160 = sub_100033FC4();
              v161 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                goto LABEL_217;
              }
            }

            else
            {
              if (v22 >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_218;
              }

              v160 = *(v158 + 8 * v22 + 32);

              v161 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
LABEL_221:
                __break(1u);
LABEL_222:
                __break(1u);
LABEL_223:
                __break(1u);
LABEL_224:
                __break(1u);
LABEL_225:
                __break(1u);
LABEL_226:
                __break(1u);
LABEL_227:
                __break(1u);
LABEL_228:
                __break(1u);
LABEL_229:
                __break(1u);
LABEL_230:
                __break(1u);
LABEL_231:
                __break(1u);
LABEL_232:
                __break(1u);
LABEL_233:
                __break(1u);
LABEL_234:
                v55 = sub_100034054();
                goto LABEL_28;
              }
            }

            v23 = v159;
            v162 = *(*v160 + 240);

            v164 = v162(v163);

            if (v164)
            {
              sub_100033FF4();
              v165 = v194[2];
              sub_100034024();
              sub_100034034();
              sub_100034004();
            }

            else
            {
            }

            v159 = v23;
            ++v22;
            if (v161 == v23)
            {
              v22 = v187;
              break;
            }
          }
        }
      }

      v194 = sub_10001FB8C(v166, sub_100006444);
      v167 = v180;
      sub_10001E2E8(&v194, sub_100006B84, type metadata accessor for ActivityItem, sub_100004E54, sub_100004CC8);
      v180 = v167;
      if (v167)
      {

        __break(1u);
        goto LABEL_237;
      }

      (*(*v22 + 168))(v194);

      sub_100033DD4();
      v23 = v182;
      v24 = v185;
      if (*((v191 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v191 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v168 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100033E14();
        v24 = v185;
      }

      sub_100033E34();

LABEL_164:
      if (v24 != v177)
      {
        continue;
      }

      break;
    }

    v170 = v191;
  }

  else
  {

    v170 = _swiftEmptyArrayStorage;
  }

  (*(*v23 + 104))(v170);
}

unint64_t sub_10001BCB4(uint64_t *a1, uint64_t a2)
{
  v80 = a1;
  v3 = sub_100033294();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  __chkstk_darwin(v3);
  v77 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000330A4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v76 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v73 - v12;
  __chkstk_darwin(v11);
  v15 = &v73 - v14;
  v16 = sub_100001A68(&qword_1000458D0, &unk_100035A68);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v73 - v19;
  v21 = sub_1000330E4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001FF88(a2, v20);
  v26 = *(v20 + 1);

  v27 = *(v17 + 56);
  v81 = v22;
  v82 = v21;
  v28 = v22;
  v29 = v15;
  (*(v28 + 32))(v25, &v20[v27], v21);
  sub_1000330C4();
  v30 = sub_1000330B4();
  v32 = v31;
  v33 = v7[2];
  v33(v13, v15, v6);
  v34 = v7[11];
  v83 = v6;
  v35 = v34(v13, v6);
  if (v35 == enum case for UsageItemRecord.UsageType.application(_:))
  {
    v36 = 0;
  }

  else
  {
    if (v35 != enum case for UsageItemRecord.UsageType.webDomain(_:))
    {

      v59 = v77;
      sub_100033274();
      v60 = v76;
      v33(v76, v29, v83);
      v61 = sub_100033284();
      v62 = sub_100033EB4();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v84 = v80;
        *v63 = 136446210;
        v75 = v61;
        v73 = sub_100033094();
        v65 = v64;
        v66 = v7[1];
        v74 = v62;
        v66(v60, v83);
        v67 = sub_1000045A0(v73, v65, &v84);

        v68 = v63;
        *(v63 + 4) = v67;
        v69 = v75;
        _os_log_impl(&_mh_execute_header, v75, v74, "Unknown usage item type: %{public}s", v68, 0xCu);
        sub_100006A74(v80);

        (*(v78 + 8))(v59, v79);
        v70 = v29;
        v71 = v83;
      }

      else
      {

        v66 = v7[1];
        v71 = v83;
        v66(v60, v83);
        (*(v78 + 8))(v59, v79);
        v70 = v29;
      }

      v66(v70, v71);
      (*(v81 + 8))(v25, v82);
      return (v66)(v13, v71);
    }

    v36 = 2;
  }

  v37 = type metadata accessor for ActivityItem();
  (*(v37 + 448))(v36, v30, v32);

  v38 = sub_1000330D4();
  v40 = v39;
  v41 = v80;
  v42 = *v80;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v41;
  v44 = v84;
  result = sub_10001E180(v38, v40);
  v47 = *(v44 + 16);
  v48 = (v46 & 1) == 0;
  v49 = __OFADD__(v47, v48);
  v50 = v47 + v48;
  if (v49)
  {
    __break(1u);
    goto LABEL_22;
  }

  v51 = v46;
  if (*(v44 + 24) >= v50)
  {
    goto LABEL_9;
  }

  sub_10001F580(v50, isUniquelyReferenced_nonNull_native);
  result = sub_10001E180(v38, v40);
  if ((v51 & 1) != (v52 & 1))
  {
    result = sub_1000340F4();
    __break(1u);
LABEL_9:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v72 = result;
      sub_10001F8E0();
      result = v72;
    }
  }

  v53 = v84;
  *v41 = v84;
  if (v51)
  {
    v54 = result;

    result = v54;
    goto LABEL_15;
  }

  v53[(result >> 6) + 8] |= 1 << result;
  v55 = (v53[6] + 16 * result);
  *v55 = v38;
  v55[1] = v40;
  *(v53[7] + 8 * result) = &_swiftEmptyArrayStorage;
  v56 = v53[2];
  v49 = __OFADD__(v56, 1);
  v57 = v56 + 1;
  if (!v49)
  {
    v53[2] = v57;
LABEL_15:
    v58 = (v53[7] + 8 * result);

    sub_100033DD4();
    v40 = v83;
    if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_16:
      sub_100033E34();

      (v7[1])(v29, v40);
      return (*(v81 + 8))(v25, v82);
    }

LABEL_22:
    sub_100033E14();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_10001C390(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v29 = a1;
    sub_100034014();
    v5 = v29;
    v6 = v29 + 64;
    v7 = -1 << *(v29 + 32);
    v8 = sub_100033F74();
    v9 = *(v29 + 36);
    result = type metadata accessor for ActivityGroup();
    v27 = v3;
    v10 = 0;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      if (v9 != *(v5 + 36))
      {
        goto LABEL_23;
      }

      v13 = v6;
      v14 = *(v5 + 56);
      v15 = (*(v5 + 48) + 16 * v8);
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v14 + 8 * v8);

      sub_100002A44(v17, v16, v18, a2 & 1);
      sub_100033FF4();
      v19 = *(&_swiftEmptyArrayStorage + 2);
      sub_100034024();
      sub_100034034();
      result = sub_100034004();
      v5 = v29;
      v11 = 1 << *(v29 + 32);
      if (v8 >= v11)
      {
        goto LABEL_24;
      }

      v20 = *(v13 + 8 * v12);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      if (v9 != *(v29 + 36))
      {
        goto LABEL_26;
      }

      v6 = v13;
      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v11 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v12 << 6;
        v23 = v12 + 1;
        v24 = (v29 + 72 + 8 * v12);
        while (v23 < (v11 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_100020060(v8, v9, 0);
            v11 = __clz(__rbit64(v25)) + v22;
            goto LABEL_18;
          }
        }

        result = sub_100020060(v8, v9, 0);
LABEL_18:
        v5 = v29;
      }

      ++v10;
      v8 = v11;
      if (v10 == v27)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001C5F4(uint64_t a1)
{
  v1 = *(*a1 + 112);
  v2 = *(v1() + 16);

  sub_100006698();
  sub_100033DC4();
  sub_100033DC4();
  if (v14 == v12 && v15 == v13)
  {
  }

  else
  {
    v4 = sub_1000340D4();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  v6 = (v1)(v3);
  v8 = *(v6 + 24);
  v7 = *(v6 + 32);

  if (v8 == sub_100033D34() && v7 == v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000340D4();
  }

  return v5 & 1;
}

void *sub_10001C77C()
{
  v1 = (*(*v0 + 96))();
  sub_10001C908(v1);

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10001C804(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100005AEC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

unint64_t sub_10001C908(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100033FC4();
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        (*(*v4 + 272))();
        v7 = v6;
        v9 = v8;

        sub_10001C804(v10);
        sub_10001C804(v7);

        sub_10001C804(v9);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_100034054();
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10001CA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*v3 + 96))();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100034054())
  {
    v10 = 0;
    while ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_100033FC4();
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v13 = *(*v11 + 280);

      v13(a1, a2, a3);

      ++v10;
      if (v12 == i)
      {
        goto LABEL_14;
      }
    }

    if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v11 = *(v8 + 8 * v10 + 32);

    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  result = (*(*v19 + 144))(v14);
  if (result)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(ObjectType, v17);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_10001CC7C(void *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = (*(*v1 + 96))();
  sub_10001C908(v3);

  *a1 = &_swiftEmptySetSingleton;
  a1[1] = &_swiftEmptySetSingleton;
  a1[2] = &_swiftEmptySetSingleton;
  return sub_10001CD30;
}

uint64_t sub_10001CD30(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if ((a2 & 1) == 0)
  {
    return sub_10001CA68(*a1, v2, v4);
  }

  v6 = *a1;

  sub_10001CA68(v3, v2, v4);
}

uint64_t sub_10001CDCC()
{
  v1 = (*(*v0 + 96))();
  v2 = v1;
  if (v1 >> 62)
  {
LABEL_15:
    v3 = sub_100034054();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = sub_100033FC4();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return v5;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(v2 + 8 * v4 + 32);

          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        v7 = (*(*v5 + 112))();
        v8 = (*(*v7 + 488))(v7);

        if (v8)
        {
          goto LABEL_13;
        }

        ++v4;
      }

      while (v6 != v3);
    }
  }

  result = sub_100034044();
  __break(1u);
  return result;
}

uint64_t sub_10001CF98(char a1)
{
  v3 = (*(*v1 + 96))();
  v26 = v3;
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = 0;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v6 = sub_100033FC4();
          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v5 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v6 = *(v26 + 32 + 8 * v5);

          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
            goto LABEL_25;
          }
        }

        v8 = *(*v6 + 112);
        v9 = v8();
        v10 = (*(*v9 + 488))(v9);

        if ((v10 & 1) == 0)
        {
          break;
        }

LABEL_4:

        if (v5 == v4)
        {
          goto LABEL_28;
        }
      }

      v12 = (v8)(v11);
      (*(*v12 + 392))(a1 & 1);

      v13 = (*(*v6 + 216))(a1 & 1, 1);
      v14 = *(*v6 + 160);
      v15 = v14(v13);
      if (!(v15 >> 62))
      {
        break;
      }

      v16 = sub_100034054();

      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v4 = sub_100034054();
      if (!v4)
      {
        goto LABEL_28;
      }
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_14:
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = v14(v17);
        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = sub_100033FC4();
        }

        else
        {
          if (v18 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v20 = *(v19 + 8 * v18 + 32);
        }

        ++v18;

        (*(*v20 + 392))(a1 & 1);
      }

      while (v16 != v18);
    }

    goto LABEL_4;
  }

LABEL_28:

  result = (*(*v1 + 144))(v21);
  if (result)
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    (*(v24 + 8))(ObjectType, v24);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001D340(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(*v3 + 96);
  v8 = v7();
  v9 = v8;
  v53 = v7;
  if (v8 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100034054())
  {
    v11 = 0;
    v59 = i;
    v61 = v9 & 0xC000000000000001;
    v56 = v9 + 32;
    v57 = v9 & 0xFFFFFFFFFFFFFF8;
    v54 = v9;
    v55 = a1;
    while (1)
    {
      if (v61)
      {
        v14 = sub_100033FC4();
        v15 = __OFADD__(v11++, 1);
        if (v15)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v11 >= *(v57 + 16))
        {
          goto LABEL_34;
        }

        v14 = *(v56 + 8 * v11);

        v15 = __OFADD__(v11++, 1);
        if (v15)
        {
          goto LABEL_33;
        }
      }

      v16 = *(*v14 + 112);
      v17 = v16();
      v18 = (*(*v17 + 488))(v17);

      if (v18)
      {
        goto LABEL_5;
      }

      v20 = (v16)(v19);
      v22 = *(v20 + 24);
      v21 = *(v20 + 32);

      if (v22 == a1 && v21 == a2)
      {
        break;
      }

      v24 = sub_1000340D4();

      if (v24)
      {
        goto LABEL_20;
      }

LABEL_5:

      if (v11 == v59)
      {
        goto LABEL_36;
      }
    }

LABEL_20:
    a1 = a2;
    v26 = *(*v14 + 160);
    a2 = *v14 + 160;
    v27 = v26(v25);
    if (!(v27 >> 62))
    {
      v9 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_22:
      if (v9)
      {
        v29 = 0;
        do
        {
          v30 = v26(v28);
          if ((v30 & 0xC000000000000001) != 0)
          {
            v31 = sub_100033FC4();
          }

          else
          {
            if (v29 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v31 = *(v30 + 8 * v29 + 32);
          }

          ++v29;

          (*(*v31 + 392))(a3 & 1);
        }

        while (v9 != v29);
      }

      v12 = (*(*v58 + 248))(v14);
      (*(*v14 + 216))(v12, v13 & 1);
      a2 = a1;
      v9 = v54;
      a1 = v55;
      goto LABEL_5;
    }

    v9 = sub_100034054();

    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:

  v33 = (*(*v58 + 216))(v32);
  v34 = (*(*v33 + 112))(v33);

  v36 = (v53)(v35);
  v37 = v36;
  if (v36 >> 62)
  {
    goto LABEL_54;
  }

  v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v38)
  {
LABEL_38:
    v39 = 0;
    v60 = v34;
    while (1)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = sub_100033FC4();
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          v47 = 1;
LABEL_52:
          v34 = v60;
          goto LABEL_56;
        }
      }

      else
      {
        if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_54:
          v38 = sub_100034054();
          if (!v38)
          {
            break;
          }

          goto LABEL_38;
        }

        v40 = *(v37 + 8 * v39 + 32);

        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_50;
        }
      }

      v34 = *(*v40 + 112);
      v42 = v34();
      v43 = (*(*v42 + 488))(v42);

      if ((v43 & 1) != 0 || ((*(*v40 + 264))(v44) & 1) == 0)
      {
      }

      else
      {
        v45 = v34();
        v46 = (*(*v45 + 384))(v45);

        if ((v46 & 1) == 0)
        {
          v47 = 0;
          goto LABEL_52;
        }
      }

      ++v39;
      if (v41 == v38)
      {
        goto LABEL_51;
      }
    }
  }

  v47 = 1;
LABEL_56:

  (*(*v34 + 392))(v47);

  result = (*(*v58 + 144))(v48);
  if (result)
  {
    v51 = v50;
    ObjectType = swift_getObjectType();
    (*(v51 + 8))(ObjectType, v51);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001D9B4()
{
  v1 = *(*v0 + 96);
  v2 = v1();
  v3 = v2;
  v48 = v1;
  if (v2 >> 62)
  {
    goto LABEL_34;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
LABEL_3:
    v5 = 0;
    v55 = v3 & 0xC000000000000001;
    v51 = v3 + 32;
    v52 = v3 & 0xFFFFFFFFFFFFFF8;
    v49 = v4;
    v50 = v3;
    while (1)
    {
      if (v55)
      {
        v8 = sub_100033FC4();
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v5 >= *(v52 + 16))
        {
          goto LABEL_33;
        }

        v8 = *(v51 + 8 * v5);

        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_32;
        }
      }

      v10 = *(*v8 + 112);
      v11 = v10();
      v12 = (*(*v11 + 488))(v11);

      if (v12)
      {
        goto LABEL_5;
      }

      v14 = *(*v8 + 160);
      v15 = (v14)(v13);
      if (v15 >> 62)
      {
        break;
      }

      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v16)
      {
        goto LABEL_15;
      }

LABEL_5:

      if (v5 == v4)
      {
        goto LABEL_35;
      }
    }

    v26 = sub_100034054();

    if (!v26)
    {
      goto LABEL_5;
    }

LABEL_15:
    v18 = (v10)(v17);
    v19 = v14();
    v20 = v19;
    v21 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 >> 62)
    {
      v3 = sub_100034054();
    }

    else
    {
      v3 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = 0;
    while (1)
    {
      v23 = v22;
      if (v3 == v22)
      {
LABEL_4:

        (*(*v18 + 392))(v3 == v23);

        v6 = (*(*v54 + 248))(v8);
        (*(*v8 + 216))(v6, v7 & 1);
        v4 = v49;
        v3 = v50;
        goto LABEL_5;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = sub_100033FC4();
        if (__OFADD__(v23, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v22 >= *(v21 + 16))
        {
          goto LABEL_31;
        }

        v24 = *(v20 + 8 * v22 + 32);

        if (__OFADD__(v23, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v4 = sub_100034054();
          if (!v4)
          {
            break;
          }

          goto LABEL_3;
        }
      }

      v25 = (*(*v24 + 384))();

      v22 = v23 + 1;
      if ((v25 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_35:

  v28 = (*(*v54 + 216))(v27);
  v29 = (*(*v28 + 112))(v28);

  v31 = (v48)(v30);
  v32 = v31;
  if (v31 >> 62)
  {
    goto LABEL_53;
  }

  v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v33)
  {
LABEL_37:
    v53 = v29;
    v34 = 0;
    while (1)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = sub_100033FC4();
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          v42 = 1;
LABEL_51:
          v29 = v53;
          goto LABEL_55;
        }
      }

      else
      {
        if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_53:
          v33 = sub_100034054();
          if (!v33)
          {
            break;
          }

          goto LABEL_37;
        }

        v35 = *(v32 + 8 * v34 + 32);

        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_49;
        }
      }

      v29 = *(*v35 + 112);
      v37 = v29();
      v38 = (*(*v37 + 488))(v37);

      if ((v38 & 1) != 0 || ((*(*v35 + 264))(v39) & 1) == 0)
      {
      }

      else
      {
        v40 = v29();
        v41 = (*(*v40 + 384))(v40);

        if ((v41 & 1) == 0)
        {
          v42 = 0;
          goto LABEL_51;
        }
      }

      ++v34;
      if (v36 == v33)
      {
        goto LABEL_50;
      }
    }
  }

  v42 = 1;
LABEL_55:

  (*(*v29 + 392))(v42);

  result = (*(*v54 + 144))(v43);
  if (result)
  {
    v46 = v45;
    ObjectType = swift_getObjectType();
    (*(v46 + 8))(ObjectType, v46);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001E03C(uint64_t a1)
{
  v2 = (*(*a1 + 112))();
  v3 = (*(*v2 + 384))(v2);

  if (v3)
  {
    return 1;
  }

  v6 = (*(*a1 + 272))(v4);
  v8 = v7;
  v9 = *(v6 + 16);

  v10 = *(v8 + 16);

  result = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E140@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityProvider();
  result = sub_1000332B4();
  *a1 = result;
  return result;
}

unint64_t sub_10001E180(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100034154();
  sub_100033D74();
  v6 = sub_100034164();

  return sub_10001F828(a1, a2, v6);
}

uint64_t sub_10001E1F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_100034054();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_100034054();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10001F4E0(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10001FC28(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10001E2E8(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_10001E394(v14, a3, a4, a5);
  return sub_100034004();
}

Swift::Int sub_10001E394(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1000340B4(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = sub_100033E24();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_10001E4B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = result - a3;
LABEL_6:
    v25 = v4;
    v26 = a3;
    v6 = *(v27 + 8 * a3);
    v24 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = *(*v6 + 112);

      v10 = v8(v9);
      v11 = (*(*v10 + 192))(v10);
      v13 = v12;

      v15 = (*(*v7 + 112))(v14);
      v16 = (*(*v15 + 192))(v15);
      v18 = v17;

      if (v11 == v16 && v13 == v18)
      {

LABEL_5:
        a3 = v26 + 1;
        v4 = v25 + 1;
        v5 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v20 = sub_1000340D4();

      if ((v20 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v27)
      {
        break;
      }

      v21 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v21;
      --v4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001E6B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v122 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_104:
    v7 = *v122;
    if (!*v122)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v115 = *(v8 + 2);
      if (v115 >= 2)
      {
        while (*a3)
        {
          v116 = *&v8[16 * v115];
          v117 = *&v8[16 * v115 + 24];
          sub_10001F00C((*a3 + 8 * v116), (*a3 + 8 * *&v8[16 * v115 + 16]), (*a3 + 8 * v117), v7);
          if (v5)
          {
          }

          if (v117 < v116)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_100005AD8(v8);
          }

          if (v115 - 2 >= *(v8 + 2))
          {
            goto LABEL_130;
          }

          v118 = &v8[16 * v115];
          *v118 = v116;
          *(v118 + 1) = v117;
          result = sub_100005A4C(v115 - 1);
          v115 = *(v8 + 2);
          if (v115 <= 1)
          {
          }
        }

        goto LABEL_140;
      }
    }

LABEL_136:
    result = sub_100005AD8(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    v129 = v8;
    if (v7 < v6)
    {
      v127 = v6;
      v10 = *a3;
      v131 = v7;
      v123 = v9;
      v11 = *(*a3 + 8 * v9);
      v12 = *(**(*a3 + 8 * v7) + 112);

      v14 = v12(v13);
      v15 = (*(*v14 + 192))(v14);
      v17 = v16;

      v19 = (*(*v11 + 112))(v18);
      v20 = (*(*v19 + 192))();
      v22 = v21;

      v23 = v15 == v20 && v17 == v22;
      v120 = v5;
      if (v23)
      {
        v134 = 0;
      }

      else
      {
        v134 = sub_1000340D4();
      }

      v24 = v10 + 8 * v123 + 16;
      v25 = 8 * v123 + 8;
      v7 = v131;
      do
      {
        v5 = v25;
        v125 = v7++;
        if (v7 >= v127)
        {
          break;
        }

        v132 = v7;
        v28 = *(v24 - 8);
        v29 = *(**v24 + 112);

        v31 = v29(v30);
        v32 = (*(*v31 + 192))(v31);
        v34 = v33;

        v36 = (*(*v28 + 112))(v35);
        v37 = (*(*v36 + 192))(v36);
        v39 = v38;

        v40 = v32 == v37 && v34 == v39;
        v26 = v40 ? 0 : sub_1000340D4();

        v27 = v134 ^ v26;
        v24 += 8;
        v25 = v5 + 8;
        v8 = v129;
        v7 = v132;
      }

      while ((v27 & 1) == 0);
      if (v134)
      {
        v9 = v123;
        if (v7 < v123)
        {
          goto LABEL_133;
        }

        if (v123 < v7)
        {
          v41 = v123;
          v42 = 8 * v123;
          v43 = v125;
          do
          {
            if (v41 != v43)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v46 = *(v45 + v42);
              *(v45 + v42) = *(v45 + v5);
              *(v45 + v5) = v46;
            }

            ++v41;
            v5 -= 8;
            v42 += 8;
          }

          while (v41 < v43--);
        }

        v5 = v120;
      }

      else
      {
        v5 = v120;
        v9 = v123;
      }
    }

    v47 = a3[1];
    if (v7 < v47)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_132;
      }

      if (&v7[-v9] < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100004414(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v69 = *(v8 + 2);
    v68 = *(v8 + 3);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      result = sub_100004414((v68 > 1), v69 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v70;
    v71 = &v8[16 * v69];
    *(v71 + 4) = v9;
    *(v71 + 5) = v7;
    v72 = *v122;
    if (!*v122)
    {
      goto LABEL_141;
    }

    if (v69)
    {
      while (1)
      {
        v73 = v70 - 1;
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v74 = *(v8 + 4);
          v75 = *(v8 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_73:
          if (v77)
          {
            goto LABEL_120;
          }

          v90 = &v8[16 * v70];
          v92 = *v90;
          v91 = *(v90 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_123;
          }

          v96 = &v8[16 * v73 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_127;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v70 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v100 = &v8[16 * v70];
        v102 = *v100;
        v101 = *(v100 + 1);
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_87:
        if (v95)
        {
          goto LABEL_122;
        }

        v103 = &v8[16 * v73];
        v105 = *(v103 + 4);
        v104 = *(v103 + 5);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_125;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_94:
        v111 = v73 - 1;
        if (v73 - 1 >= v70)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v112 = *&v8[16 * v111 + 32];
        v113 = *&v8[16 * v73 + 40];
        sub_10001F00C((*a3 + 8 * v112), (*a3 + 8 * *&v8[16 * v73 + 32]), (*a3 + 8 * v113), v72);
        if (v5)
        {
        }

        if (v113 < v112)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100005AD8(v8);
        }

        if (v111 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v114 = &v8[16 * v111];
        *(v114 + 4) = v112;
        *(v114 + 5) = v113;
        result = sub_100005A4C(v73);
        v70 = *(v8 + 2);
        if (v70 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = &v8[16 * v70 + 32];
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_118;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_119;
      }

      v85 = &v8[16 * v70];
      v87 = *v85;
      v86 = *(v85 + 1);
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_121;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_124;
      }

      if (v89 >= v81)
      {
        v107 = &v8[16 * v73 + 32];
        v109 = *v107;
        v108 = *(v107 + 1);
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_128;
        }

        if (v76 < v110)
        {
          v73 = v70 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v48 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_134;
  }

  if (v48 >= v47)
  {
    v48 = a3[1];
  }

  if (v48 < v9)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v7 == v48)
  {
    goto LABEL_53;
  }

  v121 = v5;
  v135 = *a3;
  v49 = (*a3 + 8 * v7 - 8);
  v124 = v48;
  v50 = v9 - v7;
LABEL_42:
  v133 = v7;
  v51 = *(v135 + 8 * v7);
  v126 = v50;
  v128 = v49;
  while (1)
  {
    v52 = *v49;
    v53 = *(*v51 + 112);

    v55 = v53(v54);
    v56 = (*(*v55 + 192))(v55);
    v58 = v57;

    v60 = (*(*v52 + 112))(v59);
    v61 = (*(*v60 + 192))();
    v63 = v62;

    if (v56 == v61 && v58 == v63)
    {

LABEL_41:
      v7 = v133 + 1;
      v49 = v128 + 1;
      v50 = v126 - 1;
      if (v133 + 1 == v124)
      {
        v7 = v124;
        v5 = v121;
        v8 = v129;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v65 = sub_1000340D4();

    if ((v65 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v135)
    {
      break;
    }

    v66 = *v49;
    v51 = v49[1];
    *v49 = v51;
    v49[1] = v66;
    --v49;
    if (__CFADD__(v50++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_10001F00C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v55 = &v4[8 * v12];
    if (v10 >= 8 && v6 > __dst)
    {
      v50 = v4;
LABEL_32:
      v54 = v6;
      v31 = v6 - 8;
      v5 -= 8;
      v32 = v55;
      v51 = v31;
      do
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v34 = *v31;
        v35 = *(*v33 + 112);

        v37 = v35(v36);
        v38 = (*(*v37 + 192))(v37);
        v40 = v39;

        v42 = (*(*v34 + 112))(v41);
        v43 = (*(*v42 + 192))();
        v45 = v44;

        if (v38 == v43 && v40 == v45)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_1000340D4();
        }

        v48 = v5 + 8;
        if (v47)
        {
          v4 = v50;
          if (v48 != v54)
          {
            *v5 = *v51;
          }

          if (v55 <= v50 || (v6 = v51, v51 <= __dst))
          {
            v6 = v51;
            goto LABEL_49;
          }

          goto LABEL_32;
        }

        v4 = v50;
        if (v48 != v55)
        {
          *v5 = *v32;
        }

        v5 -= 8;
        v55 = v32;
        v31 = v51;
      }

      while (v32 > v50);
      v55 = v32;
      v6 = v54;
    }
  }

  else
  {
    v13 = __dst;
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v55 = &v4[8 * v9];
    if (v7 >= 8 && v6 < v5)
    {
      while (1)
      {
        v53 = v6;
        v14 = *v6;
        v15 = v4;
        v16 = *v4;
        v17 = *(*v14 + 112);

        v19 = v17(v18);
        v20 = (*(*v19 + 192))(v19);
        v22 = v21;

        v24 = (*(*v16 + 112))(v23);
        v25 = (*(*v24 + 192))(v24);
        v27 = v26;

        v28 = v20 == v25 && v22 == v27;
        if (v28)
        {
          break;
        }

        v29 = sub_1000340D4();

        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }

        v30 = v53;
        v28 = v13 == v53;
        v53 += 8;
        v4 = v15;
        if (!v28)
        {
          goto LABEL_21;
        }

LABEL_22:
        v13 += 8;
        if (v4 < v55)
        {
          v6 = v53;
          if (v53 < v5)
          {
            continue;
          }
        }

        goto LABEL_24;
      }

LABEL_20:
      v30 = v15;
      v4 = v15 + 8;
      if (v13 == v15)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v13 = *v30;
      goto LABEL_22;
    }

LABEL_24:
    v6 = v13;
  }

LABEL_49:
  if (v6 != v4 || v6 >= &v4[(v55 - v4 + (v55 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v55 - v4) / 8));
  }

  return 1;
}

uint64_t sub_10001F4E0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_100034054();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_100033FD4();
  *v1 = result;
  return result;
}

uint64_t sub_10001F580(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001A68(&qword_1000458E8, &qword_100035A78);
  v38 = a2;
  result = sub_100034074();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_100034154();
      sub_100033D74();
      result = sub_100034164();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_10001F828(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000340D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10001F8E0()
{
  v1 = v0;
  sub_100001A68(&qword_1000458E8, &qword_100035A78);
  v2 = *v0;
  v3 = sub_100034064();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10001FA50(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = sub_100033FC4();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_100034054();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

void *sub_10001FB8C(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_100034054();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_100004518(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10001FC28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100034054();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100034054();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10002011C(&qword_1000458F0, &qword_100045770, &qword_100035940);
          for (i = 0; i != v6; ++i)
          {
            sub_100001A68(&qword_100045770, &qword_100035940);
            v9 = sub_10001FDB8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ActivityGroup();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10001FDB8(uint64_t (*result)(uint64_t *), unint64_t a2, uint64_t a3))(uint64_t *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_100033FC4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1000201D4;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ActivityProvider()
{
  result = qword_100046FB0;
  if (!qword_100046FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001FE8C()
{
  sub_10001FF24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10001FF24()
{
  if (!qword_1000457B0)
  {
    sub_100006924(&qword_100045770, &qword_100035940);
    v0 = sub_100033324();
    if (!v1)
    {
      atomic_store(v0, &qword_1000457B0);
    }
  }
}

uint64_t sub_10001FF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A68(&qword_1000458D0, &unk_100035A68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001FFF8(uint64_t a1)
{
  v2 = sub_100001A68(&qword_1000458D0, &unk_100035A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020060(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10002006C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  type metadata accessor for ActivityGroup();
  sub_100020170(&qword_100044E38, type metadata accessor for ActivityGroup);
  return sub_100033CF4() & 1;
}

uint64_t sub_10002011C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006924(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100020170(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000201E0(char a1)
{
  result = 0xD000000000000023;
  if (a1 == 1)
  {
    return 0xD000000000000027;
  }

  return result;
}

uint64_t sub_100020238(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "per.team-identifier";
  v4 = 0xD000000000000027;
  if (v2 == 1)
  {
    v5 = 0xD000000000000027;
  }

  else
  {
    v5 = 0xD000000000000023;
  }

  if (v2 == 1)
  {
    v6 = "per.team-identifier";
  }

  else
  {
    v6 = "Controls.private-client";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000023;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "selectionsDelegate";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000023;
    v3 = "Controls.private-client";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000023;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "selectionsDelegate";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000340D4();
  }

  return v11 & 1;
}

Swift::Int sub_10002030C()
{
  v1 = *v0;
  sub_100034154();
  sub_100033D74();

  return sub_100034164();
}

uint64_t sub_1000203A4()
{
  *v0;
  *v0;
  sub_100033D74();
}

Swift::Int sub_100020428()
{
  v1 = *v0;
  sub_100034154();
  sub_100033D74();

  return sub_100034164();
}

uint64_t sub_1000204BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100020544(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000204EC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000023;
  v3 = "per.team-identifier";
  v4 = 0xD000000000000027;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000023;
    v3 = "Controls.private-client";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "selectionsDelegate";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_100020544(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100041ED0;
  v6._object = a2;
  v4 = sub_100034094(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100020594()
{
  result = qword_1000458F8;
  if (!qword_1000458F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000458F8);
  }

  return result;
}

uint64_t sub_100020660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v33 = sub_100001A68(&qword_100045900, &qword_100035B70);
  v9 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v31 = &v27 - v10;
  v32 = sub_100001A68(&qword_100045908, &qword_100035B78);
  v30 = *(v32 - 8);
  v11 = *(v30 + 64);
  __chkstk_darwin(v32);
  v29 = &v27 - v12;
  v13 = sub_1000337E4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v28 = sub_100001A68(&qword_100045910, &qword_100035B80);
  v15 = *(v28 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v28);
  v18 = &v27 - v17;
  sub_1000337D4();
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  sub_100001A68(&qword_100045918, &qword_100035B88);
  sub_1000114F8(&qword_100045920, &qword_100045918, &qword_100035B88);
  sub_1000333D4();
  sub_1000337C4();
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  sub_100001A68(&qword_100045928, &qword_100035B90);
  sub_100020C30();
  v19 = v29;
  sub_1000333D4();
  v20 = *(v33 + 48);
  v21 = v31;
  v22 = v28;
  (*(v15 + 16))(v31, v18, v28);
  v23 = v30;
  v24 = &v21[v20];
  v25 = v32;
  (*(v30 + 16))(v24, v19, v32);
  sub_100033754();
  (*(v23 + 8))(v19, v25);
  return (*(v15 + 8))(v18, v22);
}

uint64_t sub_1000209DC()
{
  v0 = sub_100033364();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_100033354();

  return sub_100033BE4();
}

uint64_t sub_100020A78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000209DC();
}

uint64_t sub_100020A80()
{
  v0 = sub_100033364();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100001A68(&qword_100045918, &qword_100035B88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - v5;
  sub_100033344();

  sub_100033BE4();
  sub_1000114F8(&qword_100045920, &qword_100045918, &qword_100035B88);
  sub_100033A54();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100020C28()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_100020A80();
}

unint64_t sub_100020C30()
{
  result = qword_100045930;
  if (!qword_100045930)
  {
    sub_100006924(&qword_100045928, &qword_100035B90);
    sub_1000114F8(&qword_100045920, &qword_100045918, &qword_100035B88);
    sub_100020CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045930);
  }

  return result;
}

unint64_t sub_100020CE8()
{
  result = qword_100045938;
  if (!qword_100045938)
  {
    sub_100033874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045938);
  }

  return result;
}

__n128 sub_100020D70(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100020D7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100020DC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100020E58()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100020E64(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100020E94()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    v2 = *(v0 + 24);
    type metadata accessor for ActivityProvider();
    sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider);
    result = sub_100033574();
    __break(1u);
  }

  return result;
}

uint64_t sub_100020F20()
{
  type metadata accessor for ActivityProvider();
  sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider);

  return sub_100033594();
}

uint64_t sub_100020F94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for ActivityProvider();
  sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider);

  return sub_100033564();
}

uint64_t sub_10002101C()
{
  type metadata accessor for ActivityItem();
  sub_100021098(&qword_100045950, type metadata accessor for ActivityItem);

  return sub_100033464();
}

uint64_t sub_100021098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000210E8(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_100021134()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for ActivityItem();
  v4 = sub_100021098(&qword_100045950, type metadata accessor for ActivityItem);

  return ObservedObject.projectedValue.getter(v1, v2, v3, v4);
}

uint64_t sub_1000211BC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return v1;
}

uint64_t sub_100021204(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 48);

  v8 = *(v3 + 56);

  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return result;
}

uint64_t sub_10002130C()
{
  v1 = (v0 + *(type metadata accessor for ActivitySelectableRow(0) + 44));
  v4 = *v1;
  v5 = *(v1 + 2);
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BA4();
  return v3;
}

uint64_t sub_100021394()
{
  v1 = (v0 + *(type metadata accessor for ActivitySelectableRow(0) + 44));
  v3 = *v1;
  v4 = *(v1 + 2);
  sub_100001A68(&qword_100045958, &qword_100035C88);
  return sub_100033BB4();
}

void (*sub_100021410(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for ActivitySelectableRow(0) + 44));
  v6 = *v5;
  v7 = v5[1];
  v4[10] = *v5;
  v4[11] = v7;
  v8 = v5[2];
  v4[12] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[13] = sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BA4();
  return sub_1000214D4;
}

void sub_1000214D4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v2[3] = *(*a1 + 80);
  v2[8] = v2[6];
  v4 = v2[7];
  v5 = v2[12];
  v6 = v2[13];
  v2[4] = v3;
  v2[5] = v5;
  v2[9] = v4;
  if (a2)
  {

    sub_100033BB4();

    v7 = v2[7];
  }

  else
  {
    sub_100033BB4();
  }

  free(v2);
}

uint64_t sub_100021590()
{
  v0 = [objc_opt_self() shortLocalizedNameForIdentifier:CTCategoryIdentifierOther];
  v1 = sub_100033D34();

  return v1;
}

uint64_t sub_1000215FC()
{
  v1 = (v0 + *(type metadata accessor for ActivitySelectableRow(0) + 44));
  v4 = *v1;
  v5 = *(v1 + 2);
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BC4();
  return v3;
}

uint64_t sub_100021668@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, uint64_t a8@<X8>)
{
  type metadata accessor for ActivityProvider();
  sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider);
  *(a8 + 16) = sub_100033594();
  *(a8 + 24) = v13;
  v14 = type metadata accessor for ActivitySelectableRow(0);
  v15 = *(v14 + 40);
  *(a8 + v15) = swift_getKeyPath();
  sub_100001A68(&qword_1000453A0, &qword_100035C80);
  swift_storeEnumTagMultiPayload();
  v16 = a8 + *(v14 + 44);
  v17 = [objc_opt_self() shortLocalizedNameForIdentifier:CTCategoryIdentifierOther];
  sub_100033D34();

  sub_100033B94();
  *v16 = v23;
  *(v16 + 16) = v24;
  type metadata accessor for ActivityItem();
  sub_100021098(&qword_100045950, type metadata accessor for ActivityItem);
  result = sub_100033464();
  *(a8 + 32) = result;
  *(a8 + 40) = v19;
  *(a8 + 48) = a1;
  *(a8 + 56) = a2;
  *(a8 + 64) = a3;
  *a8 = a4;
  *(a8 + 8) = a5 & 1;
  *(a8 + 65) = a6;
  *(a8 + 66) = a7;
  return result;
}

uint64_t sub_100021848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v75 = sub_100001A68(&qword_100045960, &qword_100035C90);
  v3 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v76 = (&v69 - v4);
  v5 = sub_100032F84();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  __chkstk_darwin(v5);
  v72 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100001A68(&qword_100045968, &qword_100035C98);
  v8 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v77 = &v69 - v9;
  v80 = sub_100001A68(&qword_100045970, &qword_100035CA0);
  v10 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v81 = (&v69 - v11);
  v12 = sub_100033B54();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = *(v78 + 64);
  __chkstk_darwin(v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100001A68(&qword_100045978, &qword_100035CA8);
  v16 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v82 = &v69 - v17;
  v18 = sub_100001A68(&qword_100045980, &unk_100035CB0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v69 - v20;
  v22 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v69 - v28;
  __chkstk_darwin(v27);
  v31 = &v69 - v30;
  v32 = sub_100001A68(&qword_100045988, &qword_100035CC0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v37 = &v69 - v36;
  if ((*(*a1 + 336))(v35))
  {
    (*(*a1 + 144))();
    sub_10000DBBC(v31, v29, &qword_100045018, &qword_100034C60);
    sub_100001A68(&qword_1000459C8, &qword_100035CD8);
    sub_100026ECC();
    sub_100033334();
    sub_10000DC24(v31, &qword_100045018, &qword_100034C60);
    (*(v33 + 16))(v21, v37, v32);
    swift_storeEnumTagMultiPayload();
    sub_1000114F8(&qword_100045998, &qword_100045988, &qword_100035CC0);
    sub_1000225FC();
    sub_100033784();
    return (*(v33 + 8))(v37, v32);
  }

  v70 = v21;
  v71 = v32;
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      type metadata accessor for ActivityItem();
      v39 = *(a1 + 24);
      v40 = *(a1 + 32);
      v41 = sub_100033D04();
      sub_10000A0D0(v41);

      sub_100033B24();
      v43 = v78;
      v42 = v79;
      (*(v78 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v79);
      v44 = sub_100033B74();

      (*(v43 + 8))(v15, v42);
      v86 = v44;
      v87 = 0;
    }

    else
    {
      sub_100033B84();
      v60 = v78;
      v59 = v79;
      (*(v78 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v79);
      v61 = sub_100033B74();

      (*(v60 + 8))(v15, v59);
      v86 = v61;
      v87 = 1;
    }

    sub_100033784();
    v62 = v89;
    v63 = v81;
    *v81 = v88;
    *(v63 + 8) = v62;
    swift_storeEnumTagMultiPayload();
    sub_100001A68(&qword_1000459A8, &qword_100035CD0);
    sub_10002249C();
    sub_100022518();
    v64 = v82;
    sub_100033784();

    v65 = v70;
    goto LABEL_14;
  }

  v45 = (*(*a1 + 288))();
  v69 = v18;
  if (v45)
  {
    (*(*a1 + 144))(v45);
    v46 = v73;
    v47 = v74;
    if ((*(v73 + 48))(v26, 1, v74) != 1)
    {
      v66 = v72;
      (*(v46 + 32))(v72, v26, v47);
      (*(v46 + 16))(v31, v66, v47);
      (*(v46 + 56))(v31, 0, 1, v47);
      sub_10000DBBC(v31, v29, &qword_100045018, &qword_100034C60);
      sub_100001A68(&qword_1000459C8, &qword_100035CD8);
      sub_100026ECC();
      sub_100033334();
      sub_10000DC24(v31, &qword_100045018, &qword_100034C60);
      v67 = v71;
      (*(v33 + 16))(v76, v37, v71);
      swift_storeEnumTagMultiPayload();
      sub_100001A68(&qword_100045990, &qword_100035CC8);
      sub_1000114F8(&qword_100045998, &qword_100045988, &qword_100035CC0);
      sub_1000114F8(&qword_1000459A0, &qword_100045990, &qword_100035CC8);
      v58 = v77;
      sub_100033784();
      (*(v33 + 8))(v37, v67);
      (*(v46 + 8))(v72, v47);
      goto LABEL_13;
    }

    sub_10000DC24(v26, &qword_100045018, &qword_100034C60);
  }

  v48 = *(a1 + 24);
  v49 = *(a1 + 32);
  v50 = objc_allocWithZone(ISIcon);
  v51 = sub_100033D04();
  v52 = [v50 initWithBundleIdentifier:{v51, v69}];

  v53 = ApplicationIcon.init<>(icon:descriptor:)(v52, 0);
  v54 = v76;
  *v76 = v55;
  v54[1] = v53;
  v54[2] = v56;
  v54[3] = v57;
  swift_storeEnumTagMultiPayload();
  sub_100001A68(&qword_100045990, &qword_100035CC8);
  sub_1000114F8(&qword_100045998, &qword_100045988, &qword_100035CC0);
  sub_1000114F8(&qword_1000459A0, &qword_100045990, &qword_100035CC8);
  v58 = v77;
  sub_100033784();
LABEL_13:
  sub_10000DBBC(v58, v81, &qword_100045968, &qword_100035C98);
  swift_storeEnumTagMultiPayload();
  sub_100001A68(&qword_1000459A8, &qword_100035CD0);
  sub_10002249C();
  sub_100022518();
  v68 = v58;
  v64 = v82;
  sub_100033784();
  sub_10000DC24(v68, &qword_100045968, &qword_100035C98);
  v65 = v70;
LABEL_14:
  sub_10000DBBC(v64, v65, &qword_100045978, &qword_100035CA8);
  swift_storeEnumTagMultiPayload();
  sub_1000114F8(&qword_100045998, &qword_100045988, &qword_100035CC0);
  sub_1000225FC();
  sub_100033784();
  return sub_10000DC24(v64, &qword_100045978, &qword_100035CA8);
}

unint64_t sub_10002249C()
{
  result = qword_1000459B0;
  if (!qword_1000459B0)
  {
    sub_100006924(&qword_1000459A8, &qword_100035CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000459B0);
  }

  return result;
}

unint64_t sub_100022518()
{
  result = qword_1000459B8;
  if (!qword_1000459B8)
  {
    sub_100006924(&qword_100045968, &qword_100035C98);
    sub_1000114F8(&qword_100045998, &qword_100045988, &qword_100035CC0);
    sub_1000114F8(&qword_1000459A0, &qword_100045990, &qword_100035CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000459B8);
  }

  return result;
}

unint64_t sub_1000225FC()
{
  result = qword_1000459C0;
  if (!qword_1000459C0)
  {
    sub_100006924(&qword_100045978, &qword_100035CA8);
    sub_10002249C();
    sub_100022518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000459C0);
  }

  return result;
}

uint64_t sub_100022688@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v3 = sub_100001A68(&qword_100045A08, &qword_100035CF8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v61 - v5;
  v7 = type metadata accessor for ActivitySelectableRow(0);
  v80 = *(v7 - 8);
  v8 = *(v80 + 64);
  __chkstk_darwin(v7 - 8);
  v79 = type metadata accessor for ToggleableStyle(0);
  v9 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v69 = (v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100001A68(&qword_100045A10, &qword_100035D00);
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  __chkstk_darwin(v11);
  v14 = v61 - v13;
  v68 = sub_100001A68(&qword_100045A18, &qword_100035D08);
  v15 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v17 = v61 - v16;
  v72 = sub_100001A68(&qword_100045A20, &qword_100035D10);
  v18 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v73 = v61 - v19;
  v20 = sub_100001A68(&qword_100045A28, &qword_100035D18);
  v76 = *(v20 - 8);
  v77 = v20;
  v21 = *(v76 + 64);
  __chkstk_darwin(v20);
  v75 = v61 - v22;
  v23 = sub_100001A68(&qword_100045A30, &qword_100035D20);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v74 = v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v78 = v61 - v28;
  v29 = v1[5];
  v30 = (*(*v29 + 240))(v27);
  if (v30)
  {
    v62 = v23;
    v63 = v8;
    v64 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = v3;
    v67 = v6;
    v61[1] = v61;
    v31 = v1[6];
    v32 = v1[7];
    v33 = *(v2 + 64);
    __chkstk_darwin(v30);
    v65 = v2;
    v61[-2] = v2;

    sub_100001A68(&qword_100045A60, &qword_100035D28);
    sub_1000114F8(&qword_100045A68, &qword_100045A60, &qword_100035D28);
    sub_100033BF4();
    v34 = sub_100033904();
    v87 = v29[16];
    v86 = 1;
    sub_100006698();
    sub_100033DC4();
    sub_100033DC4();
    if (v84 == v82 && v85 == v83)
    {
    }

    else
    {
      sub_1000340D4();
    }

    v36 = v72;
    v37 = v73;
    sub_100033374();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    (*(v70 + 32))(v17, v14, v71);
    v46 = &v17[*(v68 + 36)];
    *v46 = v34;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    v47 = sub_100033914();
    sub_100011540(v17, v37, &qword_100045A18, &qword_100035D08);
    v48 = v37 + *(v36 + 36);
    *v48 = v47;
    *(v48 + 8) = 0u;
    *(v48 + 24) = 0u;
    *(v48 + 40) = 1;
    v49 = v65;
    v50 = *(v65 + 16);
    v51 = v64;
    if (v50)
    {
      v52 = v69;
      *v69 = v29;
      *(v52 + 8) = v50;
      v53 = *(v79 + 24);
      *(v52 + v53) = swift_getKeyPath();
      sub_100001A68(&qword_1000453A0, &qword_100035C80);
      swift_storeEnumTagMultiPayload();
      sub_1000271AC();
      sub_100021098(&qword_100045A58, type metadata accessor for ToggleableStyle);

      v54 = v75;
      sub_1000339E4();
      sub_100028B64(v52, type metadata accessor for ToggleableStyle);
      sub_10000DC24(v37, &qword_100045A20, &qword_100035D10);
      sub_1000273CC(v49, v51, type metadata accessor for ActivitySelectableRow);
      v55 = (*(v80 + 80) + 16) & ~*(v80 + 80);
      v56 = swift_allocObject();
      sub_100027434(v51, v56 + v55, type metadata accessor for ActivitySelectableRow);
      v57 = v74;
      (*(v76 + 32))(v74, v54, v77);
      v58 = (v57 + *(v62 + 36));
      *v58 = sub_1000272FC;
      v58[1] = v56;
      v58[2] = 0;
      v58[3] = 0;
      v59 = v78;
      sub_10002735C(v57, v78);
      sub_10000DBBC(v59, v67, &qword_100045A30, &qword_100035D20);
      swift_storeEnumTagMultiPayload();
      sub_100027094();
      sub_100033784();
      return sub_10000DC24(v59, &qword_100045A30, &qword_100035D20);
    }

    else
    {
      v60 = *(v65 + 24);
      type metadata accessor for ActivityProvider();
      sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider);

      result = sub_100033574();
      __break(1u);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100027094();
    return sub_100033784();
  }

  return result;
}

uint64_t sub_100022F94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = sub_1000333A4();
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = *(v101 + 64);
  v5 = __chkstk_darwin(v3);
  v100 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v99 - v7;
  v9 = sub_100033534();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001A68(&qword_100045D30, &qword_100036078);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v99 - v17;
  v108 = sub_100001A68(&qword_100045D38, &qword_100036080);
  v19 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v107 = &v99 - v20;
  v21 = sub_100001A68(&qword_100045D40, &qword_100036088);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v99 - v24;
  v104 = sub_100001A68(&qword_100045D48, &qword_100036090);
  v26 = *(*(v104 - 8) + 64);
  v27 = __chkstk_darwin(v104);
  v109 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v99 - v30;
  __chkstk_darwin(v29);
  v111 = &v99 - v32;
  v105 = a1[5];
  sub_100021848(v105, v25);
  sub_100033C74();
  sub_100033414();
  v33 = *(v22 + 44);
  v106 = v25;
  v34 = &v25[v33];
  v35 = v134;
  *v34 = v133;
  *(v34 + 1) = v35;
  *(v34 + 2) = v135;
  v36 = *(v10 + 28);
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  v38 = sub_100033734();
  (*(*(v38 - 8) + 104))(&v13[v36], v37, v38);
  __asm { FMOV            V0.2D, #5.0 }

  *v13 = _Q0;
  v44 = 0.0;
  sub_1000333C4();
  sub_1000273CC(v13, v18, &type metadata accessor for RoundedRectangle);
  v45 = &v18[*(sub_100001A68(&qword_100045D50, &qword_100036098) + 36)];
  v46 = v137;
  *v45 = v136;
  *(v45 + 1) = v46;
  *(v45 + 4) = v138;
  v47 = sub_100001A68(&qword_100045D58, &qword_1000360A0);
  *&v18[*(v47 + 52)] = 1048576000;
  *&v18[*(v47 + 56)] = 256;
  v48 = sub_100033C74();
  v50 = v49;
  sub_100028B64(v13, &type metadata accessor for RoundedRectangle);
  v51 = &v18[*(sub_100001A68(&qword_100045D60, &qword_1000360A8) + 36)];
  *v51 = v48;
  v51[1] = v50;
  sub_100033C74();
  sub_100033414();
  v52 = &v18[*(v15 + 44)];
  v53 = v140;
  *v52 = v139;
  *(v52 + 1) = v53;
  *(v52 + 2) = v141;
  v54 = a1;
  v103 = *(a1 + 66);
  if (v103 == 1)
  {
    v55 = a1 + *(type metadata accessor for ActivitySelectableRow(0) + 40);
    sub_100010E90(v8);
    v57 = v100;
    v56 = v101;
    v58 = v102;
    (*(v101 + 104))(v100, enum case for ColorScheme.light(_:), v102);
    LOBYTE(v55) = sub_100033394();
    v59 = *(v56 + 8);
    v59(v57, v58);
    v59(v8, v58);
    if (v55)
    {
      v44 = 1.0;
    }

    else
    {
      v44 = 0.0;
    }
  }

  v60 = v107;
  sub_100011540(v18, v107, &qword_100045D30, &qword_100036078);
  *(v60 + *(v108 + 36)) = v44;
  v61 = sub_100033C74();
  v63 = v62;
  v64 = &v31[*(v104 + 36)];
  sub_100011540(v60, v64, &qword_100045D38, &qword_100036080);
  v65 = (v64 + *(sub_100001A68(&qword_100045D68, &qword_1000360B0) + 36));
  *v65 = v61;
  v65[1] = v63;
  sub_100011540(v106, v31, &qword_100045D40, &qword_100036088);
  v66 = v111;
  v67 = sub_100011540(v31, v111, &qword_100045D48, &qword_100036090);
  v68 = *v54;
  v69 = *(v54 + 8);
  v70 = (*(*v105 + 192))(v67);
  v108 = v71;
  LODWORD(v107) = *(v54 + 65);
  v72 = (v54 + *(type metadata accessor for ActivitySelectableRow(0) + 44));
  v73 = *v72;
  v74 = *(v72 + 2);
  v120 = v73;
  v121 = v74;
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BA4();
  v105 = *(&v113 + 1);
  v106 = v113;
  v112 = v69;
  v75 = sub_100033904();
  v76 = v75;
  LODWORD(v102) = v75;
  sub_100033374();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = v112;
  LODWORD(v104) = v112;
  LOBYTE(v120) = 0;
  v86 = v109;
  sub_10000DBBC(v66, v109, &qword_100045D48, &qword_100036090);
  v87 = v110;
  sub_10000DBBC(v86, v110, &qword_100045D48, &qword_100036090);
  v88 = v87 + *(sub_100001A68(&qword_100045D70, &qword_1000360B8) + 48);
  v89 = v68;
  *&v113 = v68;
  BYTE8(v113) = v85;
  v90 = v70;
  *&v114 = v70;
  v91 = v108;
  *(&v114 + 1) = v108;
  LOBYTE(v61) = v107;
  LOBYTE(v115) = v107;
  v92 = v103;
  BYTE1(v115) = v103;
  v94 = v105;
  v93 = v106;
  *(&v115 + 1) = v106;
  *&v116 = v105;
  BYTE8(v116) = v76;
  *&v117 = v78;
  *(&v117 + 1) = v80;
  *&v118 = v82;
  *(&v118 + 1) = v84;
  v119 = 0;
  *(v88 + 96) = 0;
  v95 = v114;
  *v88 = v113;
  *(v88 + 16) = v95;
  v96 = v116;
  *(v88 + 32) = v115;
  *(v88 + 48) = v96;
  v97 = v118;
  *(v88 + 64) = v117;
  *(v88 + 80) = v97;
  sub_10000DBBC(&v113, &v120, &qword_100045D78, &qword_1000360C0);
  sub_10000DC24(v111, &qword_100045D48, &qword_100036090);
  *&v120 = v89;
  BYTE8(v120) = v104;
  v121 = v90;
  v122 = v91;
  v123 = v61;
  v124 = v92;
  v125 = v93;
  v126 = v94;
  v127 = v102;
  v128 = v78;
  v129 = v80;
  v130 = v82;
  v131 = v84;
  v132 = 0;
  sub_10000DC24(&v120, &qword_100045D78, &qword_1000360C0);
  return sub_10000DC24(v86, &qword_100045D48, &qword_100036090);
}

uint64_t sub_1000237BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = *(type metadata accessor for ToggleableStyle(0) + 24);
  *(a3 + v4) = swift_getKeyPath();
  sub_100001A68(&qword_1000453A0, &qword_100035C80);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10002382C(void *a1)
{
  v2 = type metadata accessor for ActivitySelectableRow(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[2];
  if (v6)
  {
    v7 = *(*v6 + 96);
    v8 = a1[2];

    v10 = v7(v9);

    __chkstk_darwin(v11);
    v33[-2] = a1;
    v12 = sub_100023C1C(sub_1000288F0, &v33[-4], v10);

    if (v12)
    {
      v14 = (*(*v12 + 112))(v13);
      v33[1] = v4;
      v15 = v3;
      v16 = *(v14 + 24);
      v17 = *(v14 + 32);

      v18 = sub_100033D04();

      v19 = [objc_opt_self() shortLocalizedNameForIdentifier:v18];
      v20 = sub_100033D34();
      v22 = v21;

      v23 = (a1 + *(v2 + 44));
      v24 = v23[1];
      v25 = v23[2];
      v33[4] = *v23;
      v33[5] = v24;
      v33[6] = v25;
      v33[2] = v20;
      v33[3] = v22;
      v3 = v15;
      v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

      sub_100001A68(&qword_100045958, &qword_100035C88);
      sub_100033BB4();
    }

    v26 = a1[5];
    result = (*(*v26 + 336))(v13);
    if (result)
    {
      (*(*v26 + 248))(0);
      sub_100033024();
      sub_100033014();
      v29 = v26[3];
      v28 = v26[4];
      sub_1000273CC(a1, v5, type metadata accessor for ActivitySelectableRow);
      v30 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v31 = swift_allocObject();
      sub_100027434(v5, v31 + v30, type metadata accessor for ActivitySelectableRow);

      sub_100033004();
    }
  }

  else
  {
    v32 = a1[3];
    type metadata accessor for ActivityProvider();
    sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider);
    result = sub_100033574();
    __break(1u);
  }

  return result;
}

uint64_t sub_100023C1C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_100034054();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = sub_100033FC4();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_100023D40(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for ActivitySelectableRow(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100033294();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = sub_100032F84();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = sub_100033104();
    if (v24)
    {
      v25 = v23;
      v26 = v24;
      sub_1000330F4();
      if ((*(v19 + 48))(v17, 1, v18) != 1)
      {
        (*(v19 + 32))(v22, v17, v18);
        v37 = v41;
        v38 = *(v41 + 40);
        (*(*v38 + 200))(v25, v26);
        (*(v19 + 16))(v15, v22, v18);
        (*(v19 + 56))(v15, 0, 1, v18);
        (*(*v38 + 152))(v15);
        (*(v19 + 8))(v22, v18);
        v27 = v37;
        return (*(**(v27 + 40) + 248))(1);
      }

      sub_10000DC24(v17, &qword_100045018, &qword_100034C60);
    }
  }

  sub_100033274();
  v27 = v41;
  sub_1000273CC(v41, v6, type metadata accessor for ActivitySelectableRow);
  v28 = sub_100033284();
  v29 = sub_100033EB4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v31;
    *v30 = 136315138;
    v32 = *(v6 + 5);

    sub_100028B64(v6, type metadata accessor for ActivitySelectableRow);
    v33 = *(v32 + 24);
    v34 = *(v32 + 32);

    v35 = sub_1000045A0(v33, v34, &v42);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Failed to resolve localized name and/or artwork URL for bundle identifier: %s", v30, 0xCu);
    sub_100006A74(v31);
  }

  else
  {

    sub_100028B64(v6, type metadata accessor for ActivitySelectableRow);
  }

  (*(v39 + 8))(v10, v40);
  return (*(**(v27 + 40) + 248))(1);
}

uint64_t sub_100024210(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_100024244(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_100024290@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100001A68(&qword_1000453A0, &qword_100035C80);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000242F0(char a1)
{
  v3 = *v1;
  if ((*(**v1 + 488))())
  {
    return (*(*v1[1] + 224))(a1 & 1);
  }

  v14 = *(v3 + 16);
  sub_100006698();
  sub_100033DC4();
  sub_100033DC4();
  if (v12 == v10 && v13 == v11)
  {

LABEL_7:
    v7 = *(v3 + 24);
    v8 = *(v3 + 32);
    v9 = *(*v1[1] + 232);

    v9(v7, v8, a1 & 1);
  }

  v5 = sub_1000340D4();

  if (v5)
  {
    goto LABEL_7;
  }

  return (*(*v1[1] + 240))(v6);
}

uint64_t sub_1000244A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v48 = a2;
  v47 = sub_100001A68(&qword_100045A70, &qword_100035D30);
  v3 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v37 = (&v36 - v4);
  v45 = sub_100001A68(&qword_100045A78, &qword_100035D38);
  v5 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v46 = &v36 - v6;
  v7 = type metadata accessor for ToggleableStyle(0);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v7 - 8);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100033864();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v43 = sub_100001A68(&qword_100045A80, &qword_100035D40);
  v12 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v14 = &v36 - v13;
  v44 = sub_100001A68(&qword_100045A88, &qword_100035D48);
  v41 = *(v44 - 8);
  v15 = *(v41 + 64);
  __chkstk_darwin(v44);
  v39 = &v36 - v16;
  v17 = v2;
  v18 = *v2;
  LOBYTE(v49) = *(*v2 + 16);
  v51 = 1;
  sub_10000D610();
  if ((sub_100033CF4() & 1) != 0 && ((*(*v18 + 488))() & 1) == 0)
  {
    v32 = sub_1000336C4();
    v33 = v37;
    *v37 = v32;
    *(v33 + 8) = 0;
    *(v33 + 16) = 1;
    v34 = sub_100001A68(&qword_100045AB8, &qword_100035D68);
    sub_100025034(v42, v2, (v33 + *(v34 + 44)));
    sub_10000DBBC(v33, v46, &qword_100045A70, &qword_100035D30);
    swift_storeEnumTagMultiPayload();
    v35 = sub_10002749C();
    v49 = v43;
    v50 = v35;
    swift_getOpaqueTypeConformance2();
    sub_1000114F8(&qword_100045AB0, &qword_100045A70, &qword_100035D30);
    sub_100033784();
    return sub_10000DC24(v33, &qword_100045A70, &qword_100035D30);
  }

  else
  {
    *v14 = sub_1000336C4();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v19 = sub_100001A68(&qword_100045A90, &qword_100035D50);
    v20 = v42;
    sub_100024AEC(v17, &v14[*(v19 + 44)]);
    v21 = v43;
    v14[*(v43 + 36)] = 0;
    (*(v10 + 16))(&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v9);
    v22 = v17;
    v23 = v40;
    sub_1000273CC(v22, v40, type metadata accessor for ToggleableStyle);
    v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v25 = (v11 + *(v38 + 80) + v24) & ~*(v38 + 80);
    v26 = swift_allocObject();
    (*(v10 + 32))(v26 + v24, &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    sub_100027434(v23, v26 + v25, type metadata accessor for ToggleableStyle);
    v27 = sub_10002749C();
    v28 = v39;
    sub_1000339F4();

    sub_10000DC24(v14, &qword_100045A80, &qword_100035D40);
    v29 = v41;
    v30 = v44;
    (*(v41 + 16))(v46, v28, v44);
    swift_storeEnumTagMultiPayload();
    v49 = v21;
    v50 = v27;
    swift_getOpaqueTypeConformance2();
    sub_1000114F8(&qword_100045AB0, &qword_100045A70, &qword_100035D30);
    sub_100033784();
    return (*(v29 + 8))(v28, v30);
  }
}

uint64_t sub_100024AEC@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v42 = a1;
  v44 = a2;
  v2 = sub_100033844();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  v4 = __chkstk_darwin(v2);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v42 - v6;
  v7 = sub_1000333A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v15 = sub_100033B54();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100033834();
  sub_100033B44();
  (*(v16 + 104))(v19, enum case for Image.ResizingMode.stretch(_:), v15);
  v48 = sub_100033B74();

  (*(v16 + 8))(v19, v15);
  sub_100033C74();
  sub_100033414();
  v61 = 1;
  *&v60[6] = v62;
  *&v60[22] = v63;
  *&v60[38] = v64;
  if (sub_100033834())
  {
    v20 = sub_100033AE4();
  }

  else
  {
    v21 = v42 + *(type metadata accessor for ToggleableStyle(0) + 24);
    sub_100010E90(v14);
    (*(v8 + 104))(v12, enum case for ColorScheme.dark(_:), v7);
    LOBYTE(v21) = sub_100033394();
    v22 = *(v8 + 8);
    v22(v12, v7);
    v22(v14, v7);
    v23 = objc_opt_self();
    if (v21)
    {
      v24 = [v23 systemGray2Color];
    }

    else
    {
      v24 = [v23 systemGray4Color];
    }

    v25 = v24;
    v20 = sub_100033AC4();
  }

  v26 = v20;
  KeyPath = swift_getKeyPath();
  v42 = KeyPath;
  v28 = v43;
  sub_100033854();
  v29 = v45;
  v30 = v46;
  v31 = *(v46 + 16);
  v32 = v47;
  v31(v45, v28, v47);
  v49[0] = v48;
  v49[1] = 0;
  LOWORD(v50[0]) = 257;
  *(v50 + 2) = *v60;
  *(&v50[2] + 2) = *&v60[32];
  *(&v50[1] + 2) = *&v60[16];
  *&v50[3] = *&v60[46];
  *(&v50[3] + 1) = KeyPath;
  v33 = v26;
  v51 = v26;
  v34 = v50[0];
  v35 = v44;
  *v44 = v48;
  v35[1] = v34;
  v36 = v50[1];
  v37 = v50[2];
  v38 = v50[3];
  *(v35 + 10) = v33;
  v35[3] = v37;
  v35[4] = v38;
  v35[2] = v36;
  v39 = sub_100001A68(&qword_100045D28, &unk_100036068);
  v31(v35 + *(v39 + 48), v29, v32);
  sub_10000DBBC(v49, v52, &qword_100045CE0, &qword_100036040);
  v40 = *(v30 + 8);
  v40(v28, v32);
  v40(v29, v32);
  v52[0] = v48;
  v52[1] = 0;
  v53 = 1;
  v54 = 1;
  v55 = *v60;
  v56 = *&v60[16];
  *v57 = *&v60[32];
  *&v57[14] = *&v60[46];
  v58 = v42;
  v59 = v33;
  return sub_10000DC24(v52, &qword_100045CE0, &qword_100036040);
}

uint64_t sub_100025034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v64 = a2;
  v74 = a3;
  v4 = sub_100033844();
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  v6 = __chkstk_darwin(v4);
  v79 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v78 = &v61 - v8;
  v62 = type metadata accessor for ToggleableStyle(0);
  v68 = *(v62 - 8);
  v9 = *(v68 + 64);
  __chkstk_darwin(v62);
  v69 = v10;
  v70 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_100033864();
  v11 = *(v67 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v67);
  v65 = v13;
  v66 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000333A4();
  v14 = *(v61 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v61);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v61 - v19;
  v21 = sub_100033B54();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100001A68(&qword_100045CD8, &qword_100036038);
  v72 = *(v26 - 8);
  v73 = v26;
  v27 = *(v72 + 64);
  v28 = __chkstk_darwin(v26);
  v71 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v77 = &v61 - v30;
  sub_100033834();
  sub_100033B44();
  (*(v22 + 104))(v25, enum case for Image.ResizingMode.stretch(_:), v21);
  v63 = sub_100033B74();

  (*(v22 + 8))(v25, v21);
  sub_100033C74();
  sub_100033414();
  v86 = 1;
  *&v85[6] = v87;
  *&v85[22] = v88;
  *&v85[38] = v89;
  if (sub_100033834())
  {
    v31 = v64;
    v32 = sub_100033AE4();
  }

  else
  {
    v31 = v64;
    v33 = v64 + *(v62 + 24);
    sub_100010E90(v20);
    v34 = v61;
    (*(v14 + 104))(v18, enum case for ColorScheme.dark(_:), v61);
    LOBYTE(v33) = sub_100033394();
    v35 = *(v14 + 8);
    v35(v18, v34);
    v35(v20, v34);
    v36 = objc_opt_self();
    if (v33)
    {
      v37 = [v36 systemGray2Color];
    }

    else
    {
      v37 = [v36 systemGray4Color];
    }

    v38 = v37;
    v32 = sub_100033AC4();
  }

  KeyPath = swift_getKeyPath();
  v80 = v63;
  LOWORD(v81[0]) = 257;
  *(v81 + 2) = *v85;
  *(&v81[1] + 2) = *&v85[16];
  *(&v81[2] + 2) = *&v85[32];
  *&v81[3] = *&v85[46];
  *(&v81[3] + 1) = KeyPath;
  v82 = v32;
  v41 = v66;
  v40 = v67;
  (*(v11 + 16))(v66, a1, v67);
  v42 = v70;
  sub_1000273CC(v31, v70, type metadata accessor for ToggleableStyle);
  v43 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v44 = (v65 + *(v68 + 80) + v43) & ~*(v68 + 80);
  v45 = swift_allocObject();
  (*(v11 + 32))(v45 + v43, v41, v40);
  sub_100027434(v42, v45 + v44, type metadata accessor for ToggleableStyle);
  sub_100001A68(&qword_100045CE0, &qword_100036040);
  sub_100028728();
  v46 = v77;
  sub_1000339F4();

  v83[3] = v81[2];
  v83[4] = v81[3];
  v84 = v82;
  v83[0] = v80;
  v83[1] = v81[0];
  v83[2] = v81[1];
  sub_10000DC24(v83, &qword_100045CE0, &qword_100036040);
  v47 = v78;
  sub_100033854();
  v49 = v71;
  v48 = v72;
  v50 = *(v72 + 16);
  v51 = v73;
  v50(v71, v46, v73);
  v52 = v75;
  v70 = *(v75 + 16);
  v53 = v47;
  v54 = v76;
  (v70)(v79, v53, v76);
  v55 = v74;
  v50(v74, v49, v51);
  v56 = &v55[*(sub_100001A68(&qword_100045D20, &qword_100036060) + 48)];
  v57 = v79;
  (v70)(v56, v79, v54);
  v58 = *(v52 + 8);
  v58(v78, v54);
  v59 = *(v48 + 8);
  v59(v77, v51);
  v58(v57, v54);
  return (v59)(v49, v51);
}

uint64_t sub_100025864@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v43 = a2;
  v41 = sub_100001A68(&qword_100045C38, &qword_100035EE8);
  v3 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v5 = &v35 - v4;
  v36 = sub_100001A68(&qword_100045C40, &qword_100035EF0);
  v6 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v8 = &v35 - v7;
  v39 = sub_100001A68(&qword_100045C48, &qword_100035EF8);
  v9 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v11 = &v35 - v10;
  v12 = sub_100001A68(&qword_100045C50, &qword_100035F00);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v42 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v44 = &v35 - v16;
  v45 = sub_1000336C4();
  v61 = 1;
  sub_100025F7C(a1, &v47);
  v72 = *&v48[144];
  v73 = *&v48[160];
  v68 = *&v48[80];
  v69 = *&v48[96];
  v70 = *&v48[112];
  v71 = *&v48[128];
  v64 = *&v48[16];
  v65 = *&v48[32];
  v66 = *&v48[48];
  v67 = *&v48[64];
  v62 = v47;
  v63 = *v48;
  v75[10] = *&v48[144];
  v75[11] = *&v48[160];
  v75[6] = *&v48[80];
  v75[7] = *&v48[96];
  v75[8] = *&v48[112];
  v75[9] = *&v48[128];
  v75[2] = *&v48[16];
  v75[3] = *&v48[32];
  v75[4] = *&v48[48];
  v75[5] = *&v48[64];
  v74 = *&v48[176];
  v76 = *&v48[176];
  v75[0] = v47;
  v75[1] = *v48;
  sub_10000DBBC(&v62, v46, &qword_100045C58, &qword_100035F08);
  sub_10000DC24(v75, &qword_100045C58, &qword_100035F08);
  *(&v60[9] + 7) = v71;
  *(&v60[10] + 7) = v72;
  *(&v60[11] + 7) = v73;
  *(&v60[5] + 7) = v67;
  *(&v60[6] + 7) = v68;
  *(&v60[7] + 7) = v69;
  *(&v60[8] + 7) = v70;
  *(&v60[1] + 7) = v63;
  *(&v60[2] + 7) = v64;
  *(&v60[3] + 7) = v65;
  *(&v60[4] + 7) = v66;
  *(&v60[12] + 7) = v74;
  *(v60 + 7) = v62;
  v17 = v61;
  KeyPath = swift_getKeyPath();
  LOBYTE(v47) = 0;
  v38 = swift_getKeyPath();
  v37 = swift_getKeyPath();
  if (*(a1 + 32))
  {
    sub_100033C44();
    v18 = sub_100033904();
    sub_100033374();
    v19 = &v11[*(v39 + 36)];
    *v19 = v18;
    *(v19 + 1) = v20;
    *(v19 + 2) = v21;
    *(v19 + 3) = v22;
    *(v19 + 4) = v23;
    v19[40] = 0;
    sub_10000DBBC(v11, v8, &qword_100045C48, &qword_100035EF8);
    swift_storeEnumTagMultiPayload();
    sub_100028038();
    sub_1000280F4();
    sub_100033784();
    v24 = v11;
    v25 = &qword_100045C48;
    v26 = &qword_100035EF8;
  }

  else
  {
    sub_100033C44();
    sub_10000DBBC(v5, v8, &qword_100045C38, &qword_100035EE8);
    swift_storeEnumTagMultiPayload();
    sub_100028038();
    sub_1000280F4();
    sub_100033784();
    v24 = v5;
    v25 = &qword_100045C38;
    v26 = &qword_100035EE8;
  }

  sub_10000DC24(v24, v25, v26);
  v27 = v44;
  v28 = v42;
  sub_10000DBBC(v44, v42, &qword_100045C50, &qword_100035F00);
  *(&v46[20] + 1) = v60[9];
  *(&v46[22] + 1) = v60[10];
  *(&v46[24] + 1) = v60[11];
  *(&v46[25] + 2) = *(&v60[11] + 9);
  *(&v46[12] + 1) = v60[5];
  *(&v46[14] + 1) = v60[6];
  *(&v46[16] + 1) = v60[7];
  *(&v46[18] + 1) = v60[8];
  *(&v46[4] + 1) = v60[1];
  *(&v46[6] + 1) = v60[2];
  *(&v46[8] + 1) = v60[3];
  *(&v46[10] + 1) = v60[4];
  v46[0] = v45;
  v46[1] = 0;
  LOBYTE(v46[2]) = v17;
  *(&v46[2] + 1) = v60[0];
  LODWORD(v41) = v17;
  *(&v46[27] + 2) = v79;
  HIWORD(v46[27]) = v80;
  v29 = KeyPath;
  v46[28] = KeyPath;
  v46[29] = 1;
  LOBYTE(v46[30]) = 0;
  *(&v46[30] + 1) = *v78;
  HIDWORD(v46[30]) = *&v78[3];
  v31 = v37;
  v30 = v38;
  v46[31] = v38;
  LOBYTE(v46[32]) = 1;
  *(&v46[32] + 1) = *v77;
  HIDWORD(v46[32]) = *&v77[3];
  v46[33] = v37;
  v46[34] = 0x3FE0000000000000;
  v32 = v43;
  memcpy(v43, v46, 0x118uLL);
  v33 = sub_100001A68(&qword_100045C80, &qword_100035FA0);
  sub_10000DBBC(v28, v32 + *(v33 + 48), &qword_100045C50, &qword_100035F00);
  sub_10000DBBC(v46, &v47, &qword_100045C88, &qword_100035FA8);
  sub_10000DC24(v27, &qword_100045C50, &qword_100035F00);
  sub_10000DC24(v28, &qword_100045C50, &qword_100035F00);
  *&v48[145] = v60[9];
  *&v48[161] = v60[10];
  *&v48[177] = v60[11];
  *&v48[186] = *(&v60[11] + 9);
  *&v48[81] = v60[5];
  *&v48[97] = v60[6];
  *&v48[113] = v60[7];
  *&v48[129] = v60[8];
  *&v48[17] = v60[1];
  *&v48[33] = v60[2];
  *&v48[49] = v60[3];
  *&v48[65] = v60[4];
  v47 = v45;
  v48[0] = v41;
  *&v48[1] = v60[0];
  v49 = v79;
  v50 = v80;
  v51 = v29;
  v52 = 1;
  v53 = 0;
  *v54 = *v78;
  *&v54[3] = *&v78[3];
  v55 = v30;
  v56 = 1;
  *v57 = *v77;
  *&v57[3] = *&v77[3];
  v58 = v31;
  v59 = 0x3FE0000000000000;
  return sub_10000DC24(&v47, &qword_100045C88, &qword_100035FA8);
}

uint64_t sub_100025F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_100033704();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = *(a1 + 24);
  *&v127 = *(a1 + 16);
  *(&v127 + 1) = v5;
  sub_100028204();

  v6 = sub_1000339A4();
  v79 = v7;
  v80 = v6;
  v72 = v8;
  v75 = v9;
  v74 = sub_100033B14();
  KeyPath = swift_getKeyPath();
  v77 = 0;
  v78 = 0;
  v10 = 0;
  v76 = 0;
  if (*(a1 + 33))
  {
    sub_1000336F4();
    v135._countAndFlagsBits = 546603234;
    v135._object = 0xA400000000000000;
    sub_1000336E4(v135);
    sub_1000336D4(*(a1 + 40));
    v136._countAndFlagsBits = 0;
    v136._object = 0xE000000000000000;
    sub_1000336E4(v136);
    sub_100033724();
    v11 = sub_100033994();
    v13 = v12;
    v15 = v14;
    v16 = [objc_opt_self() systemGray2Color];
    sub_100033AC4();
    v17 = sub_100033974();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_1000283F8(v11, v13, v15 & 1);

    v10 = v21 & 1;
    v77 = v19;
    v78 = v17;
    sub_100028360(v17, v19, v21 & 1);
    v76 = v23;
  }

  v70 = v10;
  if (*(a1 + 8))
  {
    if (*a1)
    {
      sub_100033714();
      v24 = sub_100033994();
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = sub_100033924();
      sub_100033374();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v40 = v28 & 1;
      LOBYTE(v127) = v28 & 1;
      LOBYTE(v119) = 0;
      v41 = [objc_opt_self() systemGray2Color];
      v42 = sub_100033AC4();
      v43 = swift_getKeyPath();
      *&v82 = v24;
      *(&v82 + 1) = v26;
      LOBYTE(v83) = v40;
      *(&v83 + 1) = v30;
      LOBYTE(v84) = v31;
      *(&v84 + 1) = v33;
      *&v85 = v35;
      *(&v85 + 1) = v37;
      *&v86 = v39;
      BYTE8(v86) = 0;
      HIDWORD(v86) = *(&v127 + 3);
      *(&v86 + 9) = v127;
      *&v87 = v43;
      *(&v87 + 1) = v42;
      v95 = v82;
      v96 = v83;
      v99 = v86;
      v100 = v87;
      v97 = v84;
      v98 = v85;
      v88 = v82;
      v89 = v83;
      v92 = v86;
      v93 = v87;
      v90 = v84;
      v91 = v85;
      *&v81[7] = v82;
      *&v81[23] = v83;
      *&v81[87] = v87;
      *&v81[71] = v86;
      *&v81[55] = v85;
      *&v81[39] = v84;
      *&v94[0] = 0;
      BYTE8(v94[0]) = 1;
      *(v94 + 9) = *v81;
      *(&v94[2] + 9) = *&v81[32];
      *(&v94[1] + 9) = *&v81[16];
      *(&v94[6] + 1) = v42;
      *(&v94[5] + 9) = *&v81[80];
      *(&v94[4] + 9) = *&v81[64];
      *(&v94[3] + 9) = *&v81[48];
      v103 = v94[0];
      v104 = v94[1];
      v108 = v94[5];
      v109 = v94[6];
      v106 = v94[3];
      v107 = v94[4];
      v105 = v94[2];
      sub_10000DBBC(&v82, &v127, &qword_100045CC0, &qword_100036028);
      sub_10000DBBC(&v88, &v127, &qword_100045CC0, &qword_100036028);
      sub_10000DC24(&v95, &qword_100045CC0, &qword_100036028);
      v101 = 1;
      v131 = v107;
      v132 = v108;
      v133 = v109;
      v127 = v103;
      v128 = v104;
      v129 = v105;
      v130 = v106;
      LOBYTE(v134) = 1;
      sub_10000DBBC(v94, &v119, &qword_100045CC8, &qword_100036030);
      sub_100001A68(&qword_100045CB0, &qword_100035FE8);
      sub_1000114F8(&qword_100045CA8, &qword_100045CB0, &qword_100035FE8);
      sub_100033784();
      v131 = v115;
      v132 = v116;
      v133 = v117;
      v134 = v118;
      v127 = v111;
      v128 = v112;
      v129 = v113;
      v130 = v114;
      v102 = 0;
      sub_100001A68(&qword_100045C98, &qword_100035FE0);
      sub_1000282B0();
      sub_100033784();
      sub_10000DC24(v94, &qword_100045CC8, &qword_100036030);
      sub_10000DC24(&v82, &qword_100045CC0, &qword_100036028);
      v131 = v123;
      v132 = v124;
      v133 = v125;
      v134 = v126;
      v127 = v119;
      v128 = v120;
      v129 = v121;
      v130 = v122;
    }

    else
    {
      LOBYTE(v111) = 1;
      HIBYTE(v126) = 1;
      sub_100001A68(&qword_100045C98, &qword_100035FE0);
      sub_1000282B0();
      sub_100033784();
    }
  }

  else
  {
    *&v119 = *a1;
    sub_100028408();
    *&v127 = sub_100033F44();
    *(&v127 + 1) = v44;
    v45 = sub_1000339A4();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = sub_100033924();
    sub_100033374();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v61 = v49 & 1;
    LOBYTE(v127) = v49 & 1;
    LOBYTE(v119) = 0;
    v62 = [objc_opt_self() systemGray2Color];
    v63 = sub_100033AC4();
    v64 = swift_getKeyPath();
    *&v82 = v45;
    *(&v82 + 1) = v47;
    LOBYTE(v83) = v61;
    *(&v83 + 1) = v51;
    LOBYTE(v84) = v52;
    *(&v84 + 1) = v54;
    *&v85 = v56;
    *(&v85 + 1) = v58;
    *&v86 = v60;
    BYTE8(v86) = 0;
    *&v87 = v64;
    *(&v87 + 1) = v63;
    v95 = v82;
    v96 = v83;
    v99 = v86;
    v100 = v87;
    v97 = v84;
    v98 = v85;
    v88 = v82;
    v89 = v83;
    v92 = v86;
    v93 = v87;
    v90 = v84;
    v91 = v85;
    *&v81[7] = v82;
    *&v81[23] = v83;
    *&v81[87] = v87;
    *&v81[71] = v86;
    *&v81[55] = v85;
    *&v81[39] = v84;
    *&v94[0] = 0;
    BYTE8(v94[0]) = 1;
    *(v94 + 9) = *v81;
    *(&v94[2] + 9) = *&v81[32];
    *(&v94[1] + 9) = *&v81[16];
    *(&v94[6] + 1) = v63;
    *(&v94[5] + 9) = *&v81[80];
    *(&v94[4] + 9) = *&v81[64];
    *(&v94[3] + 9) = *&v81[48];
    v103 = v94[0];
    v104 = v94[1];
    v108 = v94[5];
    v109 = v94[6];
    v106 = v94[3];
    v107 = v94[4];
    v105 = v94[2];
    sub_10000DBBC(&v82, &v127, &qword_100045CC0, &qword_100036028);
    sub_10000DBBC(&v88, &v127, &qword_100045CC0, &qword_100036028);
    sub_10000DC24(&v95, &qword_100045CC0, &qword_100036028);
    v101 = 0;
    v131 = v107;
    v132 = v108;
    v133 = v109;
    v127 = v103;
    v128 = v104;
    v129 = v105;
    v130 = v106;
    LOBYTE(v134) = 0;
    sub_10000DBBC(v94, &v119, &qword_100045CC8, &qword_100036030);
    sub_100001A68(&qword_100045CB0, &qword_100035FE8);
    sub_1000114F8(&qword_100045CA8, &qword_100045CB0, &qword_100035FE8);
    sub_100033784();
    v131 = v115;
    v132 = v116;
    v133 = v117;
    v134 = v118;
    v127 = v111;
    v128 = v112;
    v129 = v113;
    v130 = v114;
    v102 = 0;
    sub_100001A68(&qword_100045C98, &qword_100035FE0);
    sub_1000282B0();
    sub_100033784();
    sub_10000DC24(v94, &qword_100045CC8, &qword_100036030);
    sub_10000DC24(&v82, &qword_100045CC0, &qword_100036028);
    v131 = v123;
    v132 = v124;
    v133 = v125;
    v134 = v126;
    v127 = v119;
    v128 = v120;
    v129 = v121;
    v130 = v122;
  }

  v107 = v131;
  v108 = v132;
  v109 = v133;
  v103 = v127;
  v104 = v128;
  v105 = v129;
  v106 = v130;
  v113 = v129;
  v114 = v130;
  v110 = v134;
  LOBYTE(v94[0]) = v72 & 1;
  v111 = v127;
  v112 = v128;
  v118 = v134;
  v116 = v132;
  v117 = v133;
  v115 = v131;
  sub_100028360(v80, v79, v72 & 1);

  sub_100028370(v78, v77, v70, v76);
  sub_10000DBBC(&v111, &v119, &qword_100045CB8, &qword_100035FF0);
  sub_1000283B4(v78, v77, v70, v76);
  v65 = v94[0];
  *a2 = v80;
  *(a2 + 8) = v79;
  *(a2 + 16) = v65;
  *(a2 + 24) = v75;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v74;
  *(a2 + 48) = v78;
  *(a2 + 56) = v77;
  *(a2 + 64) = v70;
  *(a2 + 72) = v76;
  v66 = v116;
  *(a2 + 144) = v115;
  *(a2 + 160) = v66;
  *(a2 + 176) = v117;
  *(a2 + 192) = v118;
  v67 = v112;
  *(a2 + 80) = v111;
  *(a2 + 96) = v67;
  v68 = v114;
  *(a2 + 112) = v113;
  *(a2 + 128) = v68;
  v123 = v107;
  v124 = v108;
  v125 = v109;
  v126 = v110;
  v119 = v103;
  v120 = v104;
  v121 = v105;
  v122 = v106;
  sub_10000DC24(&v119, &qword_100045CB8, &qword_100035FF0);
  sub_1000283B4(v78, v77, v70, v76);
  sub_1000283F8(v80, v79, v72 & 1);
}

uint64_t sub_100026A4C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100033744();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100001A68(&qword_100045C30, &qword_100035EE0);
  return sub_100025864(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_100026AA4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v31 = sub_100001A68(&qword_100045A00, &qword_100035CF0);
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v31);
  v4 = &v30 - v3;
  v5 = sub_100001A68(&qword_100045D80, &qword_1000360C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = sub_100033B54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001A68(&qword_1000459E0, &qword_100035CE0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v30 - v16);
  if (sub_1000334B4())
  {
    (*(v10 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v9);
    v18 = sub_100033B74();
    (*(v10 + 8))(v13, v9);
    v19 = v17 + *(v14 + 36);
    v20 = *(sub_100033534() + 20);
    v21 = enum case for RoundedCornerStyle.continuous(_:);
    v22 = sub_100033734();
    (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
    __asm { FMOV            V0.2D, #5.0 }

    *v19 = _Q0;
    *&v19[*(sub_100001A68(&qword_1000459F0, &qword_100035CE8) + 36)] = 256;
    *v17 = v18;
    sub_10000DBBC(v17, v8, &qword_1000459E0, &qword_100035CE0);
    swift_storeEnumTagMultiPayload();
    sub_100026F84();
    sub_1000114F8(&qword_1000459F8, &qword_100045A00, &qword_100035CF0);
    sub_100033784();

    return sub_10000DC24(v17, &qword_1000459E0, &qword_100035CE0);
  }

  else
  {
    sub_1000333F4();
    v29 = v31;
    (*(v1 + 16))(v8, v4, v31);
    swift_storeEnumTagMultiPayload();
    sub_100026F84();
    sub_1000114F8(&qword_1000459F8, &qword_100045A00, &qword_100035CF0);
    sub_100033784();
    return (*(v1 + 8))(v4, v29);
  }
}

unint64_t sub_100026ECC()
{
  result = qword_1000459D0;
  if (!qword_1000459D0)
  {
    sub_100006924(&qword_1000459C8, &qword_100035CD8);
    sub_100026F84();
    sub_1000114F8(&qword_1000459F8, &qword_100045A00, &qword_100035CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000459D0);
  }

  return result;
}

unint64_t sub_100026F84()
{
  result = qword_1000459D8;
  if (!qword_1000459D8)
  {
    sub_100006924(&qword_1000459E0, &qword_100035CE0);
    sub_1000114F8(&qword_1000459E8, &qword_1000459F0, &qword_100035CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000459D8);
  }

  return result;
}

uint64_t sub_10002705C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100027094()
{
  result = qword_100045A38;
  if (!qword_100045A38)
  {
    sub_100006924(&qword_100045A30, &qword_100035D20);
    sub_100006924(&qword_100045A20, &qword_100035D10);
    type metadata accessor for ToggleableStyle(255);
    sub_1000271AC();
    sub_100021098(&qword_100045A58, type metadata accessor for ToggleableStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A38);
  }

  return result;
}

unint64_t sub_1000271AC()
{
  result = qword_100045A40;
  if (!qword_100045A40)
  {
    sub_100006924(&qword_100045A20, &qword_100035D10);
    sub_100027238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A40);
  }

  return result;
}

unint64_t sub_100027238()
{
  result = qword_100045A48;
  if (!qword_100045A48)
  {
    sub_100006924(&qword_100045A18, &qword_100035D08);
    sub_1000114F8(&qword_100045A50, &qword_100045A10, &qword_100035D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A48);
  }

  return result;
}

uint64_t sub_1000272FC()
{
  v1 = *(type metadata accessor for ActivitySelectableRow(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_10002382C(v2);
}

uint64_t sub_10002735C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A68(&qword_100045A30, &qword_100035D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000273CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100027434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002749C()
{
  result = qword_100045A98;
  if (!qword_100045A98)
  {
    sub_100006924(&qword_100045A80, &qword_100035D40);
    sub_1000114F8(&qword_100045AA0, &qword_100045AA8, &qword_100035D58);
    sub_1000114F8(&qword_1000453F0, &qword_1000453F8, &qword_100035D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A98);
  }

  return result;
}

uint64_t sub_1000275CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001A68(&qword_100045408, &qword_1000353E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002769C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_100001A68(&qword_100045408, &qword_1000353E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10002774C()
{
  sub_10002787C();
  if (v0 <= 0x3F)
  {
    sub_100027910();
    if (v1 <= 0x3F)
    {
      sub_1000279A4(319, &qword_100045B28, &type metadata for Bool, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_100010C38();
        if (v3 <= 0x3F)
        {
          sub_1000279A4(319, &unk_100045B30, &type metadata for String, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10002787C()
{
  if (!qword_100045B18)
  {
    type metadata accessor for ActivityProvider();
    sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider);
    v0 = sub_1000335A4();
    if (!v1)
    {
      atomic_store(v0, &qword_100045B18);
    }
  }
}

void sub_100027910()
{
  if (!qword_100045B20)
  {
    type metadata accessor for ActivityItem();
    sub_100021098(&qword_100045950, type metadata accessor for ActivityItem);
    v0 = sub_100033484();
    if (!v1)
    {
      atomic_store(v0, &qword_100045B20);
    }
  }
}

void sub_1000279A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100027A08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001A68(&qword_100045408, &qword_1000353E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100027AD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001A68(&qword_100045408, &qword_1000353E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100027B88()
{
  type metadata accessor for ActivityItem();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActivityProvider();
    if (v1 <= 0x3F)
    {
      sub_100010C38();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100027C28()
{
  result = qword_100045C00;
  if (!qword_100045C00)
  {
    sub_100006924(&qword_100045C08, &qword_100035E48);
    sub_1000114F8(&qword_100045998, &qword_100045988, &qword_100035CC0);
    sub_1000225FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C00);
  }

  return result;
}

unint64_t sub_100027CE4()
{
  result = qword_100045C10;
  if (!qword_100045C10)
  {
    sub_100006924(&qword_100045C18, &qword_100035E50);
    sub_100027094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C10);
  }

  return result;
}

unint64_t sub_100027D74()
{
  result = qword_100045C20;
  if (!qword_100045C20)
  {
    sub_100006924(&qword_100045C28, &qword_100035E58);
    sub_100006924(&qword_100045A80, &qword_100035D40);
    sub_10002749C();
    swift_getOpaqueTypeConformance2();
    sub_1000114F8(&qword_100045AB0, &qword_100045A70, &qword_100035D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C20);
  }

  return result;
}

uint64_t sub_100027E68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100027EB0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100027F28@<X0>(uint64_t a1@<X8>)
{
  result = sub_100033674();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100027F5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100033684();
}

uint64_t sub_100027F8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100033614();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100027FE4@<X0>(void *a1@<X8>)
{
  result = sub_100033634();
  *a1 = v3;
  return result;
}

unint64_t sub_100028038()
{
  result = qword_100045C60;
  if (!qword_100045C60)
  {
    sub_100006924(&qword_100045C48, &qword_100035EF8);
    sub_100021098(&qword_100045C68, &type metadata accessor for Divider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C60);
  }

  return result;
}

unint64_t sub_1000280F4()
{
  result = qword_100045C70;
  if (!qword_100045C70)
  {
    sub_100006924(&qword_100045C38, &qword_100035EE8);
    sub_100021098(&qword_100045C68, &type metadata accessor for Divider);
    sub_1000281B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C70);
  }

  return result;
}

unint64_t sub_1000281B0()
{
  result = qword_100045C78;
  if (!qword_100045C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C78);
  }

  return result;
}

unint64_t sub_100028204()
{
  result = qword_100045C90;
  if (!qword_100045C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C90);
  }

  return result;
}

uint64_t sub_100028258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000335C4();
  *a1 = result;
  return result;
}

uint64_t sub_100028284(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000335D4();
}

unint64_t sub_1000282B0()
{
  result = qword_100045CA0;
  if (!qword_100045CA0)
  {
    sub_100006924(&qword_100045C98, &qword_100035FE0);
    sub_1000114F8(&qword_100045CA8, &qword_100045CB0, &qword_100035FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045CA0);
  }

  return result;
}

uint64_t sub_100028360(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100028370(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100028360(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000283B4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000283F8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000283F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100028408()
{
  result = qword_100045CD0;
  if (!qword_100045CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045CD0);
  }

  return result;
}

uint64_t sub_100028460()
{
  v1 = sub_100033864();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for ToggleableStyle(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = *(v0 + v8);

  v12 = *(v0 + v8 + 8);

  v13 = v6[8];
  sub_100001A68(&qword_1000453A0, &qword_100035C80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1000333A4();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
    v15 = *(v10 + v13);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_100028614()
{
  v0 = *(sub_100033864() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(type metadata accessor for ToggleableStyle(0) - 8);
  v4 = (v1 + v2 + *(v3 + 80)) & ~*(v3 + 80);
  v5 = sub_100033824();
  *v6 = !*v6;
  v5(&v9, 0);
  v7 = sub_100033834();
  return sub_1000242F0(v7 & 1);
}

unint64_t sub_100028728()
{
  result = qword_100045CE8;
  if (!qword_100045CE8)
  {
    sub_100006924(&qword_100045CE0, &qword_100036040);
    sub_1000287E0();
    sub_1000114F8(&qword_100045D10, &qword_100045D18, &qword_100036058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045CE8);
  }

  return result;
}

unint64_t sub_1000287E0()
{
  result = qword_100045CF0;
  if (!qword_100045CF0)
  {
    sub_100006924(&qword_100045CF8, &qword_100036048);
    sub_10002886C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045CF0);
  }

  return result;
}

unint64_t sub_10002886C()
{
  result = qword_100045D00;
  if (!qword_100045D00)
  {
    sub_100006924(&qword_100045D08, &qword_100036050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045D00);
  }

  return result;
}

uint64_t sub_1000288F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = (*(**a1 + 160))();
  v7 = *(v2 + 40);
  v6[2] = &v7;
  v4 = sub_10001FA50(sub_100028C54, v6, v3);

  return v4 & 1;
}

uint64_t sub_10002899C()
{
  v1 = type metadata accessor for ActivitySelectableRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 56);

  v10 = *(v1 + 40);
  sub_100001A68(&qword_1000453A0, &qword_100035C80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000333A4();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = v5 + *(v1 + 44);
  v14 = *(v13 + 8);

  v15 = *(v13 + 16);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100028AF4(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivitySelectableRow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100023D40(a1, v4);
}

uint64_t sub_100028B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100028BC4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  type metadata accessor for ActivityItem();
  sub_100021098(&qword_100045060, type metadata accessor for ActivityItem);
  return sub_100033CF4() & 1;
}

uint64_t sub_100028D20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for ActivityPickerViewConfiguration();
  v4 = sub_10002CD04(&qword_100045D98, type metadata accessor for ActivityPickerViewConfiguration);

  return ObservedObject.projectedValue.getter(v1, v2, v3, v4);
}

uint64_t sub_100028DF0(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(0);
  sub_10002CD04(a3, a4);

  return sub_100033464();
}

uint64_t sub_100028E70(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_100028EBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ActivityProvider();
  v4 = sub_10002CD04(&qword_100045318, type metadata accessor for ActivityProvider);

  return ObservedObject.projectedValue.getter(v1, v2, v3, v4);
}

void sub_100028F4C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*sub_100028F8C(uint64_t *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100028FD8;
}

void sub_100028FD8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100029034()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void *sub_100029070(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v22 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_100034054();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
      v20 = v5 & 0xC000000000000001;
      v18 = v5;
      while (1)
      {
        if (v20)
        {
          v10 = sub_100033FC4();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v21 = v10;
        v3 = a2;
        v12 = a1(&v21);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_100033FF4();
          v13 = v8;
          v14 = a1;
          v15 = a2;
          v16 = v22[2];
          sub_100034024();
          a2 = v15;
          a1 = v14;
          v8 = v13;
          v5 = v18;
          sub_100034034();
          v3 = &v22;
          sub_100034004();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v22;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_20:

  return v3;
}

void sub_10002922C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a4 + 48) = 0xD000000000000011;
  *(a4 + 56) = 0x800000010003AF50;
  sub_100033B94();
  *(a4 + 64) = v14;
  *(a4 + 80) = v15;
  type metadata accessor for ActivityPickerViewConfiguration();
  sub_10002CD04(&qword_100045D98, type metadata accessor for ActivityPickerViewConfiguration);

  *a4 = sub_100033464();
  *(a4 + 8) = v8;
  type metadata accessor for ActivityProvider();
  sub_10002CD04(&qword_100045318, type metadata accessor for ActivityProvider);

  *(a4 + 16) = sub_100033464();
  *(a4 + 24) = v9;
  v10 = swift_unknownObjectWeakAssign();
  if ((*(*a1 + 104))(v10))
  {
    type metadata accessor for ActivityPickerServiceView.ActivityPickerServiceSelectionsObserver();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v11 + 16) = a2;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v12 = *(**(v11 + 16) + 152);

    v12(v13, &off_1000421C8);
  }

  else
  {

    v11 = 0;
  }

  *(a4 + 40) = v11;
}

uint64_t sub_100029484(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + 16) = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = *(**(v4 + 16) + 152);

  v5(v6, &off_1000421C8);

  return v4;
}

uint64_t sub_100029588@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100001A68(&qword_100045DA0, &qword_1000360F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  v31 = sub_100001A68(&qword_100045DA8, &qword_1000360F8);
  v8 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v10 = &v30 - v9;
  v11 = sub_100001A68(&qword_100045DB0, &qword_100036100);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = (*(**(v1 + 8) + 104))(v13);
  v32 = v1;
  if (v16)
  {
    sub_100001A68(&qword_100045E40, &unk_100036150);
    v17 = sub_100006924(&qword_100045DE0, &qword_100036128);
    v18 = sub_10002B4A4();
    v33 = v17;
    v34 = v18;
    swift_getOpaqueTypeConformance2();
    sub_1000334E4();
    sub_10001891C(v1, &v33);
    v19 = swift_allocObject();
    sub_10002B740(&v33, v19 + 16);
    v20 = &v15[*(v11 + 36)];
    *v20 = 0;
    *(v20 + 1) = 0;
    *(v20 + 2) = sub_10002B778;
    *(v20 + 3) = v19;
    sub_10002B810(v15, v10);
    swift_storeEnumTagMultiPayload();
    sub_10002B67C();
    sub_1000114F8(&qword_100045E38, &qword_100045DA0, &qword_1000360F0);
    sub_100033784();
    return sub_10000DC24(v15, &qword_100045DB0, &qword_100036100);
  }

  else
  {
    sub_100001A68(&qword_100045DB8, &qword_100036108);
    v22 = sub_100006924(&qword_100045DC0, &qword_100036110);
    v23 = sub_100006924(&qword_100045DC8, &qword_100036118);
    v24 = sub_100006924(&qword_100045DD0, &qword_100036120);
    v30 = a1;
    v25 = v24;
    v26 = sub_10002B390();
    v33 = v25;
    v34 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = sub_10002B628();
    v33 = &type metadata for ActivityPickerToolbar;
    v34 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v33 = v22;
    v34 = v23;
    v35 = OpaqueTypeConformance2;
    v36 = v29;
    swift_getOpaqueTypeConformance2();
    sub_1000334E4();
    (*(v4 + 16))(v10, v7, v3);
    swift_storeEnumTagMultiPayload();
    sub_10002B67C();
    sub_1000114F8(&qword_100045E38, &qword_100045DA0, &qword_1000360F0);
    sub_100033784();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100029A40()
{
  v0 = sub_100001A68(&qword_100045DE0, &qword_100036128);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_100029BB0(&v8 - v2);
  sub_100001A68(&qword_100045F20, &qword_100036298);
  v4 = *(sub_100033554() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000360E0;
  sub_100033544();
  sub_10002B4A4();
  sub_100033A84();

  return sub_10000DC24(v3, &qword_100045DE0, &qword_100036128);
}

uint64_t sub_100029BB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_1000337B4();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  __chkstk_darwin(v3);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100033804();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001A68(&qword_100045DF8, &qword_100036138);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = sub_100001A68(&qword_100045DF0, &qword_100036130);
  v17 = *(v16 - 8);
  v32 = v16;
  v33 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  v38 = v1;
  sub_100001A68(&qword_100045F28, &qword_1000362A0);
  sub_10002BF74();
  sub_100033964();
  sub_1000337F4();
  v21 = sub_1000114F8(&qword_100045E00, &qword_100045DF8, &qword_100036138);
  sub_100033AB4();
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  v22 = *(v1 + 80);
  v43 = *(v1 + 64);
  v44 = v22;
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BC4();
  v23 = v34;
  sub_1000337A4();
  v39 = v11;
  v40 = v6;
  v41 = v21;
  v42 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v24 = v32;
  v25 = v35;
  sub_1000339D4();

  (*(v36 + 8))(v23, v37);
  (*(v33 + 8))(v20, v24);
  v26 = sub_100033C74();
  v28 = v27;
  v29 = v25 + *(sub_100001A68(&qword_100045DE0, &qword_100036128) + 36);
  sub_10002AACC(v2, v29);
  result = sub_100001A68(&qword_100045E10, &qword_100036140);
  v31 = (v29 + *(result + 36));
  *v31 = v26;
  v31[1] = v28;
  return result;
}

uint64_t sub_10002A01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1000336B4();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  __chkstk_darwin(v3);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001A68(&qword_100045DE0, &qword_100036128);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = sub_100001A68(&qword_100045FF8, &qword_100036368);
  v11 = *(v10 - 8);
  v38 = v10;
  v39 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v40 = sub_100001A68(&qword_100045DD0, &qword_100036120);
  v15 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v17 = &v35 - v16;
  v18 = sub_100001A68(&qword_100045DC0, &qword_100036110);
  v19 = *(v18 - 8);
  v42 = v18;
  v43 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v36 = &v35 - v21;
  sub_100029BB0(v9);
  v37 = a1;
  v22 = *(a1 + 56);
  v48 = *(a1 + 48);
  v49 = v22;
  v23 = sub_10002B4A4();
  v24 = sub_100028204();
  sub_100033A14();
  sub_10000DC24(v9, &qword_100045DE0, &qword_100036128);
  v48 = v6;
  v49 = &type metadata for String;
  v50 = v23;
  v51 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v38;
  sub_100033A54();
  (*(v39 + 8))(v14, v25);
  v27 = v44;
  v26 = v45;
  v28 = v41;
  (*(v44 + 104))(v41, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v45);
  v29 = sub_10002B390();
  v30 = v36;
  v31 = v40;
  sub_100033A64();
  (*(v27 + 8))(v28, v26);
  sub_10000DC24(v17, &qword_100045DD0, &qword_100036120);
  v47 = v37;
  sub_100001A68(&qword_100045DC8, &qword_100036118);
  v48 = v31;
  v49 = v29;
  swift_getOpaqueTypeConformance2();
  v32 = sub_10002B628();
  v48 = &type metadata for ActivityPickerToolbar;
  v49 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v42;
  sub_100033A74();
  return (*(v43 + 8))(v30, v33);
}

uint64_t sub_10002A4A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  (*(*v1 + 152))();
  if (v2)
  {
    sub_100028204();
    sub_1000339A4();
  }

  (*(*v1 + 200))();
  if (v3)
  {
    sub_100028204();
    v4 = sub_1000339A4();
  }

  else
  {
    v4 = 0;
  }

  __chkstk_darwin(v4);
  sub_100001A68(&qword_100045F40, &qword_1000362A8);
  sub_100001A68(&qword_100045F50, &qword_1000362B0);
  sub_10002C004();
  sub_10002C080();
  return sub_100033C64();
}

uint64_t sub_10002A64C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_100028204();
  return sub_1000339A4();
}

unint64_t sub_10002A6A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001A68(&qword_100045F58, &qword_1000362B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *a1;
  v12 = *(a2 + 24);
  v13 = *(*v12 + 96);

  result = v13(v14);
  if (!(result >> 62))
  {
    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = a3;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_11:

    v42 = v11;
    goto LABEL_12;
  }

  v22 = result;
  v16 = sub_100034054();
  result = v22;
  v33 = a3;
  if (!v16)
  {
    goto LABEL_11;
  }

LABEL_3:
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_15:
    v19 = sub_100033FC4();
LABEL_8:

    v42 = v11;
    if (v19)
    {
      *&v40[0] = v19;
      type metadata accessor for ActivityGroup();
      sub_10002CD04(&qword_100044E38, type metadata accessor for ActivityGroup);
      v20 = sub_100033CF4();

      v21 = v20 ^ 1;
LABEL_13:
      v23 = sub_10000F43C();
      v25 = v24;
      v26 = sub_1000115AC();
      sub_10000F484(v23, v25, v26, v27, v21 & 1, v44);
      type metadata accessor for ActivityProvider();
      sub_10002CD04(&qword_100045318, type metadata accessor for ActivityProvider);
      v28 = sub_1000332A4();
      type metadata accessor for ActivityGroup();
      sub_10002CD04(&qword_100045320, type metadata accessor for ActivityGroup);

      v29 = sub_1000332A4();
      v43 = 0;
      v34 = v44[0];
      v35 = v44[1];
      v36 = v44[2];
      *&v37 = v45;
      *(&v37 + 1) = v28;
      *&v38 = v12;
      *(&v38 + 1) = v29;
      *&v39[0] = v11;
      *(v39 + 8) = 0u;
      *(&v39[1] + 8) = 0u;
      BYTE8(v39[2]) = 0;

      sub_100033404();
      v30 = sub_100001A68(&qword_100045F60, &qword_1000362C0);
      v31 = sub_10002C184();
      sub_100033A24();
      v40[4] = v38;
      v40[5] = v39[0];
      v41[0] = v39[1];
      *(v41 + 9) = *(&v39[1] + 9);
      v40[0] = v34;
      v40[1] = v35;
      v40[2] = v36;
      v40[3] = v37;
      sub_10002CC9C(v40);
      sub_100033404();
      *&v34 = v30;
      *(&v34 + 1) = v31;
      swift_getOpaqueTypeConformance2();
      sub_100033A44();
      return (*(v7 + 8))(v10, v6);
    }

LABEL_12:

    v21 = 1;
    goto LABEL_13;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v18 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(result + 8 * v18 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002AACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001A68(&qword_100045FB8, &qword_1000362F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - v7;
  v9 = *(a1 + 80);
  v17 = *(a1 + 64);
  v18 = v9;
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BA4();
  v11 = v16[1];
  v10 = v16[2];

  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    __chkstk_darwin(v12);
    v16[-2] = a1;
    sub_100001A68(&qword_100045FC0, &qword_1000362F8);
    sub_10002C538();
    sub_100033964();
    (*(v5 + 32))(a2, v8, v4);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return (*(v5 + 56))(a2, v14, 1, v4);
}

void *sub_10002AC98()
{
  v1 = v0;
  v2 = *(v0 + 80);
  v29 = *(v0 + 64);
  v30 = v2;
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BA4();

  v3 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v3 = v27 & 0xFFFFFFFFFFFFLL;
  }

  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    v27 = _swiftEmptyArrayStorage;
    v5 = (*(**(v0 + 24) + 96))();
    v6 = v5;
    *&v29 = _swiftEmptyArrayStorage;
    if (v5 >> 62)
    {
      goto LABEL_25;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v25 = v1;
        v26 = CTCategoryIdentifierSystemBlockable;
        v8 = 4;
        while (1)
        {
          v10 = v8 - 4;
          if ((v6 & 0xC000000000000001) == 0)
          {
            break;
          }

          v11 = sub_100033FC4();
          v1 = v8 - 3;
          if (__OFADD__(v10, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v22 = v29;
            v1 = v25;
            goto LABEL_27;
          }

LABEL_13:
          if (((*(*v11 + 264))() & 1) == 0)
          {
            v12 = (*(*v11 + 112))();
            v13 = *(v12 + 24);
            v14 = *(v12 + 32);

            v15 = sub_100033D04();

            v16 = sub_100033D34();
            v18 = v17;

            if (v16 == sub_100033D34() && v18 == v19)
            {
            }

            else
            {
              v21 = sub_1000340D4();

              if ((v21 & 1) == 0)
              {

                goto LABEL_9;
              }
            }
          }

          sub_100033FF4();
          v9 = *(v29 + 16);
          sub_100034024();
          sub_100034034();
          sub_100034004();
LABEL_9:
          ++v8;
          if (v1 == v7)
          {
            goto LABEL_23;
          }
        }

        if (v10 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_25:
        v7 = sub_100034054();
        if (!v7)
        {
          goto LABEL_26;
        }
      }

      v11 = *(v6 + 8 * v8);

      v1 = v8 - 3;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

LABEL_26:
    v22 = _swiftEmptyArrayStorage;
LABEL_27:

    __chkstk_darwin(v23);
    v24[2] = &v27;
    v24[3] = v1;
    sub_10002B00C(sub_10002B880, v24, v22);

    return v27;
  }

  return result;
}

uint64_t sub_10002AFB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result;
  return result;
}

uint64_t sub_10002B00C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_100033FC4();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_100034054();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_10002B160(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_10002B1AC(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10002B23C;
}

void sub_10002B23C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_10002B2B8(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 16) = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = *(**(v2 + 16) + 152);

  v5(v6, &off_1000421C8);

  return v2;
}

unint64_t sub_10002B390()
{
  result = qword_100045DD8;
  if (!qword_100045DD8)
  {
    sub_100006924(&qword_100045DD0, &qword_100036120);
    sub_100006924(&qword_100045DE0, &qword_100036128);
    sub_10002B4A4();
    sub_100028204();
    swift_getOpaqueTypeConformance2();
    sub_10002CD04(&qword_100045938, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045DD8);
  }

  return result;
}

unint64_t sub_10002B4A4()
{
  result = qword_100045DE8;
  if (!qword_100045DE8)
  {
    sub_100006924(&qword_100045DE0, &qword_100036128);
    sub_100006924(&qword_100045DF0, &qword_100036130);
    sub_100006924(&qword_100045DF8, &qword_100036138);
    sub_100033804();
    sub_1000114F8(&qword_100045E00, &qword_100045DF8, &qword_100036138);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000114F8(&qword_100045E08, &qword_100045E10, &qword_100036140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045DE8);
  }

  return result;
}

unint64_t sub_10002B628()
{
  result = qword_100045E18;
  if (!qword_100045E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045E18);
  }

  return result;
}

unint64_t sub_10002B67C()
{
  result = qword_100045E20;
  if (!qword_100045E20)
  {
    sub_100006924(&qword_100045DB0, &qword_100036100);
    sub_1000114F8(&qword_100045E28, &qword_100045E30, &qword_100036148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045E20);
  }

  return result;
}

void sub_10002B778()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x150))();
  }
}

uint64_t sub_10002B810(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A68(&qword_100045DB0, &qword_100036100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B880(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = (*(**a1 + 112))();
  v6 = (*(*v5 + 192))(v5);
  v8 = v7;

  v10 = (*(*v4 + 160))(v9);
  v13[2] = v3;
  v13[3] = v6;
  v13[4] = v8;
  v11 = sub_100029070(sub_10002BCB4, v13, v10);

  return sub_10002BE7C(v11);
}

uint64_t sub_10002B99C()
{
  v1 = (*(*v0[2] + 192))();
  v3 = v2;
  v5 = v4;
  v6 = ((*v0)[12])();
  if (v6)
  {
    v7 = v6;
    (*((swift_isaMask & *v6) + 0x140))(v1, v3, v5);
  }
}

uint64_t sub_10002BAA0()
{
  v1 = *(v0 + 16);

  swift_unknownObjectWeakDestroy();
  return v0;
}

uint64_t sub_10002BAC8()
{
  v1 = *(v0 + 16);

  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10002BB4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002BB94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002BBFC()
{
  result = qword_100045F10;
  if (!qword_100045F10)
  {
    sub_100006924(&qword_100045F18, "D3");
    sub_10002B67C();
    sub_1000114F8(&qword_100045E38, &qword_100045DA0, &qword_1000360F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F10);
  }

  return result;
}

uint64_t sub_10002BCB4(uint64_t a1)
{
  v2 = v1[2];
  v11 = v1[4];
  v12 = v1[3];
  v3 = *a1;
  (*(**a1 + 192))();
  v4 = v2[8];
  v5 = v2[9];
  v6 = v2[10];
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BA4();
  sub_100028204();
  v7 = sub_100033F34();

  if ((v7 & 1) != 0 || (sub_100033BA4(), v8 = sub_100033F34(), , (v8)) && (v13 = v3[16], sub_10000D610(), (sub_100033CF4() & 1) == 0))
  {
    v9 = (*(*v3 + 240))();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10002BE7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_100034054();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_100034054();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10001F4E0(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100006444(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_10002BF74()
{
  result = qword_100045F30;
  if (!qword_100045F30)
  {
    sub_100006924(&qword_100045F28, &qword_1000362A0);
    sub_10002C004();
    sub_10002C080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F30);
  }

  return result;
}

unint64_t sub_10002C004()
{
  result = qword_100045F38;
  if (!qword_100045F38)
  {
    sub_100006924(&qword_100045F40, &qword_1000362A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F38);
  }

  return result;
}

unint64_t sub_10002C080()
{
  result = qword_100045F48;
  if (!qword_100045F48)
  {
    sub_100006924(&qword_100045F50, &qword_1000362B0);
    sub_100006924(&qword_100045F58, &qword_1000362B8);
    sub_100006924(&qword_100045F60, &qword_1000362C0);
    sub_10002C184();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F48);
  }

  return result;
}

unint64_t sub_10002C184()
{
  result = qword_100045F68;
  if (!qword_100045F68)
  {
    sub_100006924(&qword_100045F60, &qword_1000362C0);
    sub_10002C23C();
    sub_1000114F8(&qword_100045FA8, &qword_100045FB0, &qword_1000362E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F68);
  }

  return result;
}

unint64_t sub_10002C23C()
{
  result = qword_100045F70;
  if (!qword_100045F70)
  {
    sub_100006924(&qword_100045F78, &qword_1000362C8);
    sub_10002C2F4();
    sub_1000114F8(&qword_100045F98, &qword_100045FA0, &qword_1000362E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F70);
  }

  return result;
}

unint64_t sub_10002C2F4()
{
  result = qword_100045F80;
  if (!qword_100045F80)
  {
    sub_100006924(&qword_100045F88, &unk_1000362D0);
    sub_10002C3AC();
    sub_1000114F8(&qword_100045368, &qword_100045370, &qword_100035270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F80);
  }

  return result;
}

unint64_t sub_10002C3AC()
{
  result = qword_100045F90;
  if (!qword_100045F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F90);
  }

  return result;
}

uint64_t sub_10002C400()
{
  v1 = *(v0 + 16);
  v5 = sub_10002AC98();
  swift_getKeyPath();
  sub_10001891C(v1, v4);
  v2 = swift_allocObject();
  sub_10002B740(v4, v2 + 16);
  sub_100001A68(&qword_100044E08, &unk_100035A80);
  sub_100001A68(&qword_100045FD8, &unk_100036300);
  sub_1000114F8(&qword_100045510, &qword_100044E08, &unk_100035A80);
  sub_10002C5BC();
  return sub_100033C54();
}

unint64_t sub_10002C538()
{
  result = qword_100045FC8;
  if (!qword_100045FC8)
  {
    sub_100006924(&qword_100045FC0, &qword_1000362F8);
    sub_10002C5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045FC8);
  }

  return result;
}

unint64_t sub_10002C5BC()
{
  result = qword_100045FD0;
  if (!qword_100045FD0)
  {
    sub_100006924(&qword_100045FD8, &unk_100036300);
    sub_10000F218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045FD0);
  }

  return result;
}

uint64_t sub_10002C648@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  sub_100033E54();

  v6 = sub_100033E44();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;

  v8 = sub_100033E44();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v5;
  sub_100033C24();

  sub_100021668(v23, v24, v25, 0, 1, 0, 1, a2);
  v10 = *(v3 + 40);
  type metadata accessor for ActivityProvider();
  sub_10002CD04(&qword_100045318, type metadata accessor for ActivityProvider);
  v11 = sub_1000332A4();
  v12 = (a2 + *(sub_100001A68(&qword_100045348, &qword_100035260) + 36));
  *v12 = v11;
  v12[1] = v10;

  LOBYTE(v11) = sub_100033904();
  sub_100033374();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  result = sub_100001A68(&qword_100045FD8, &unk_100036300);
  v22 = a2 + *(result + 36);
  *v22 = v11;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_10002C870@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**(v1 + 32) + 384))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002C8C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C958()
{
  v1 = *(v0 + 16);
  v2 = (*(**(v1 + 24) + 96))();
  v3 = v2;
  v17 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
LABEL_16:
    v4 = sub_100034054();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 4;
      while (1)
      {
        v6 = v5 - 4;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = sub_100033FC4();
          v8 = v5 - 3;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v10 = v17;
            goto LABEL_18;
          }
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(v3 + 8 * v5);

          v8 = v5 - 3;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        if ((*(*v7 + 264))())
        {
          sub_100033FF4();
          v9 = v17[2];
          sub_100034024();
          sub_100034034();
          sub_100034004();
        }

        else
        {
        }

        ++v5;
        if (v8 == v4)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_18:

  v19 = v10;
  swift_getKeyPath();
  sub_10001891C(v1, &v17);
  v11 = swift_allocObject();
  sub_10002B740(&v17, v11 + 16);
  sub_100001A68(&qword_100045770, &qword_100035940);
  sub_100001A68(&qword_100045FE0, &qword_100036360);
  sub_1000114F8(&qword_100045FE8, &qword_100045770, &qword_100035940);
  sub_10002CD04(&qword_100045FF0, type metadata accessor for ActivityGroup);
  v12 = sub_100006924(&qword_100045F58, &qword_1000362B8);
  v13 = sub_100006924(&qword_100045F60, &qword_1000362C0);
  v14 = sub_10002C184();
  v17 = v13;
  v18 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v12;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_100033C54();
}