void sub_54AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t sub_5EFC()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_2FCD0;
  v5 = qword_2FCD0;
  if (!qword_2FCD0)
  {
    v6 = *off_28A50;
    v7 = *off_28A60;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_2FCD0 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_6010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_6028(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2FCD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_60C0()
{
  v0 = sub_5EFC();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id sub_611C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_2FCD8;
  v7 = qword_2FCD8;
  if (!qword_2FCD8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_61FC;
    v3[3] = &unk_28AA8;
    v3[4] = &v4;
    sub_61FC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_61E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_61FC(uint64_t a1)
{
  sub_60C0();
  result = objc_getClass("MTMaterialView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1EDDC();
  }

  qword_2FCD8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_6254()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_2FCE0;
  v7 = qword_2FCE0;
  if (!qword_2FCE0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_6334;
    v3[3] = &unk_28AA8;
    v3[4] = &v4;
    sub_6334(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_631C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_6334(uint64_t a1)
{
  sub_60C0();
  result = objc_getClass("MTVisualStylingProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1EE04();
  }

  qword_2FCE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_638C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_2FCE8;
  v7 = qword_2FCE8;
  if (!qword_2FCE8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_646C;
    v3[3] = &unk_28AA8;
    v3[4] = &v4;
    sub_646C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_6454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_646C(uint64_t a1)
{
  sub_60C0();
  result = objc_getClass("UIView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1EE2C();
  }

  qword_2FCE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_64CC()
{
  sub_6B2C();
  v1 = v0;
  oslog = sub_1F254();
  v2 = sub_1F094();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule31VideoEffectsControlCenterModule_contentModuleContext;
    swift_beginAccess();
    v6 = *&v1[v5];
    sub_7120(&qword_2F528, "(X");
    v7 = sub_1F014();
    v9 = sub_6B78(v7, v8, &v11);

    *(v3 + 4) = v9;
    _os_log_impl(&dword_0, oslog, v2, "set content module context: %s", v3, 0xCu);
    sub_7168(v4);
  }

  else
  {
  }
}

void *sub_6650()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule31VideoEffectsControlCenterModule_contentModuleContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_669C(void *a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule31VideoEffectsControlCenterModule_contentModuleContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_64CC();
}

void (*sub_6704(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6768;
}

void sub_6768(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_64CC();
  }
}

void sub_679C(void *a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule31VideoEffectsControlCenterModule_contentModuleContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_64CC();
}

void *sub_6878(void *a1)
{
  v2 = v1;
  type metadata accessor for VideoEffectsViewController();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = a1 && ![a1 environment];
  (*(&stru_108.flags + (swift_isaMask & *v4)))(v5);
  v6 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule31VideoEffectsControlCenterModule_contentModuleContext;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = *&stru_158.segname[(swift_isaMask & *v4) - 8];
  v9 = v7;
  v8(v7);
  return v4;
}

id sub_69FC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_6A30()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC34VideoConferenceControlCenterModule31VideoEffectsControlCenterModule_contentModuleContext] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id sub_6AC0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_6B2C()
{
  result = qword_2F520;
  if (!qword_2F520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2F520);
  }

  return result;
}

uint64_t sub_6B78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_6C44(v11, 0, 0, 1, a1, a2);
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
    sub_71B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_7168(v11);
  return v7;
}

unint64_t sub_6C44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_6D50(a5, a6);
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
    result = sub_1F2B4();
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

char *sub_6D50(uint64_t a1, unint64_t a2)
{
  v4 = sub_6D9C(a1, a2);
  sub_6ECC(&off_28AC8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_6D9C(uint64_t a1, unint64_t a2)
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

  v6 = sub_6FB8(v5, 0);
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

  result = sub_1F2B4();
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
        v10 = sub_1F024();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_6FB8(v10, 0);
        result = sub_1F294();
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

uint64_t sub_6ECC(uint64_t result)
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

  result = sub_702C(result, v12, 1, v3);
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

void *sub_6FB8(uint64_t a1, uint64_t a2)
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

  sub_7120(&unk_2F530, qword_20E48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_702C(char *result, int64_t a2, char a3, char *a4)
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
    sub_7120(&unk_2F530, qword_20E48);
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

uint64_t sub_7120(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_7168(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_71B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_7214()
{
  v0 = sub_1EEE4();
  sub_144E4(v0, qword_2FCF8);
  sub_13744(v0, qword_2FCF8);
  return sub_1EED4();
}

Swift::Int sub_72B4()
{
  v1 = *v0;
  sub_1F3D4();
  sub_1F3E4(v1);
  return sub_1F3F4();
}

Swift::Int sub_7328()
{
  v1 = *v0;
  sub_1F3D4();
  sub_1F3E4(v1);
  return sub_1F3F4();
}

unint64_t sub_736C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_13320(*a1);
  *a2 = result;
  return result;
}

CGFloat sub_73A4()
{
  result = CGSizeZero.width;
  height = CGSizeZero.height;
  return result;
}

double sub_73B4()
{
  v1 = v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule16VideoEffectsView_controlSize;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_73FC(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule16VideoEffectsView_controlSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

char *sub_74B8(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = [objc_opt_self() mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v5 initWithFrame:{v8, v10, v12, v14}];
  v16 = &v15[OBJC_IVAR____TtC34VideoConferenceControlCenterModule16VideoEffectsView_controlSize];
  swift_beginAccess();
  *v16 = a1;
  v16[1] = a2;
  return v15;
}

id sub_7648(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id sub_76AC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC34VideoConferenceControlCenterModule16VideoEffectsView_controlSize] = CGSizeZero;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for VideoEffectsView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_77B0(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_77F4(void *a1)
{
  *&v1[OBJC_IVAR____TtC34VideoConferenceControlCenterModule16VideoEffectsView_controlSize] = CGSizeZero;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VideoEffectsView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_79F4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_7A24(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_7A88()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_7AB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_7B10()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_7B40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_7B98()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_7BC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

id sub_7C20()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

uint64_t sub_7CB4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_7CE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_7D3C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_7D6C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t sub_7E2C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_7E5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_7EB8@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 8) = a5;
  *(a9 + 16) = a6;
  *(a9 + 24) = a7;
  *(a9 + 32) = a8;
  *(a9 + 40) = a12;
  *(a9 + 56) = a13;
  *(a9 + 72) = a14;
  *(a9 + 88) = a15;
  *(a9 + 104) = a16;
  *(a9 + 112) = a10;
  *(a9 + 120) = a11;
  *(a9 + 128) = a17;
  *(a9 + 136) = a18;
  return result;
}

uint64_t sub_7F00(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v11[8] = a1[8];
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v12[8] = a2[8];
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  return sub_13354(v11, v12) & 1;
}

double sub_7F90()
{
  result = *sub_1A518();
  qword_2FD18 = *&result;
  return result;
}

double sub_7FB4()
{
  if (qword_2FD10 != -1)
  {
    swift_once();
  }

  result = *&qword_2FD18 * 3.0 + 16.0;
  *&qword_2FD28 = result;
  return result;
}

id sub_801C()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id sub_8054()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_previewViewContainer;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_80A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_previewViewContainer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_8160()
{
  v0 = objc_allocWithZone(NSLayoutConstraint);

  return [v0 init];
}

id sub_8198()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_previewViewContainerHeightConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_81EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_previewViewContainerHeightConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_82A4()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_videoPreviewView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_82F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_videoPreviewView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_83BC()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleCallout];
  [v2 pointSize];
  v4 = v3;

  v5 = 18.0;
  if (v4 <= 18.0)
  {
    v5 = v4;
  }

  v6 = [v1 systemFontOfSize:v5];
  [v0 setFont:v6];

  [v0 setNumberOfLines:0];
  [v0 setLineBreakMode:0];
  [v0 setTextAlignment:1];
  v7 = v0;
  [v7 controlCenterApplyPrimaryContentShadow];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v7;
}

void sub_8518()
{
  if (qword_2FD30 != -1)
  {
    swift_once();
  }

  sub_85F4();
}

__int128 *sub_85A4()
{
  if (qword_2FD30 != -1)
  {
    swift_once();
  }

  return &xmmword_302D0;
}

void sub_85F4()
{
  v1 = v0;
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = sub_1EFF4();
  v5 = objc_opt_self();
  v6 = [v5 _systemImageNamed:v4];

  if (!v6)
  {
    v7 = sub_1EFF4();
    v6 = [v5 _systemImageNamed:v7];
  }

  v8 = *(v1 + 12);
  v9 = *(v1 + 13);
  v10 = sub_1EFF4();
  v11 = [v5 _systemImageNamed:v10];

  if (!v11)
  {
    v12 = sub_1EFF4();
    v11 = [v5 _systemImageNamed:v12];
  }

  if (v6)
  {
    if (v11)
    {
      type metadata accessor for EffectControl();
      v14 = *(v1 + 1);
      v13 = *(v1 + 2);
      v15 = *(v1 + 3);
      v16 = *(v1 + 4);
      v17 = v1[1];

      v18 = v6;

      v19 = [v11 imageWithRenderingMode:2];
      v21 = *(v1 + 16);
      v20 = *(v1 + 17);

      sub_1B518(v17, v18, v14, v13, v15, v16, v19, v21, v22);
      v23 = *v1;
      v25 = v24;
      [v25 setTag:v23];
      [*&v25[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonGlyph] setTag:v23];
      [*&v25[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_expandChevron] setTag:v23];
      [*&v25[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_continuousSlider] setTag:v23];
      [*&v25[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_imageBackgroundView] setTag:v23];
      v26 = sub_1EFF4();
      [v25 setAccessibilityIdentifier:v26];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_8888()
{
  if (qword_2FD38 != -1)
  {
    swift_once();
  }

  sub_85F4();
}

__int128 *sub_8914()
{
  if (qword_2FD38 != -1)
  {
    swift_once();
  }

  return &xmmword_30360;
}

void sub_8974()
{
  if (qword_2FD40 != -1)
  {
    swift_once();
  }

  sub_85F4();
}

__int128 *sub_8A00()
{
  if (qword_2FD40 != -1)
  {
    swift_once();
  }

  return &xmmword_303F0;
}

void sub_8A60()
{
  if (qword_2FD48 != -1)
  {
    swift_once();
  }

  sub_85F4();
}

__int128 *sub_8AEC()
{
  if (qword_2FD48 != -1)
  {
    swift_once();
  }

  return &xmmword_30480;
}

uint64_t sub_8B94()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_shouldLoadFromSensor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_8C2C(char a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_shouldLoadFromSensor;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_8D28()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_contentModuleContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_8DF0(void *a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_contentModuleContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_A2CC();
}

void (*sub_8E58(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_8EBC;
}

void sub_8EBC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_A2CC();
  }
}

id sub_8EF0()
{
  v0 = objc_allocWithZone(VideoEffectsManager);

  return [v0 init];
}

id sub_8F28()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_videoEffectsManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_8F7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_videoEffectsManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_9070()
{
  sub_7120(&qword_2F610, &qword_20F28);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20E60;
  v2 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_portraitButton);
  v3 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_studioLightButton);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_reactionsButton);
  v5 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_centerStageButton);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  return v1;
}

void *sub_9110()
{
  v1 = (*(&stru_158.offset + (swift_isaMask & *v0)))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1F354())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_1F2A4();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v6 isHidden])
      {
      }

      else
      {
        sub_1F2C4();
        v5 = _swiftEmptyArrayStorage[2];
        sub_1F2E4();
        sub_1F2F4();
        sub_1F2D4();
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

double sub_932C()
{
  v1 = v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_expandedButtonRect;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  return result;
}

uint64_t sub_9378(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_expandedButtonRect);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

double sub_9648()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_9750(double a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_compactContinuousCornerRadius;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = (*(&stru_B8.flags + (swift_isaMask & *v1)))(v4);
  [v5 _setContinuousCornerRadius:*(v1 + v3) + -10.0];
}

void (*sub_97FC(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_compactContinuousCornerRadius;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_9884;
}

void sub_9884(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = (*(&stru_B8.flags + (swift_isaMask & *v5)))(v4);
    [v7 _setContinuousCornerRadius:*(v5 + v6) + -10.0];
  }

  free(v3);
}

uint64_t sub_9940(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_9990(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_9A44()
{
  sub_7120(&qword_2F610, &qword_20F28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20E70;
  *(v0 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:2];
  *(v0 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  return v0;
}

uint64_t sub_9B74()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_requiredVisualStyleCategories;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_9C44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_requiredVisualStyleCategories;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_9CFC()
{
  v0 = objc_allocWithZone(MTVisualStylingProvider);

  return [v0 init];
}

id sub_9D34()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_platterStrokeVisualStylingProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_9D88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_platterStrokeVisualStylingProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_9F20()
{
  v1 = (*(&stru_248.offset + (swift_isaMask & *v0)))();
  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1EEE4();
  sub_13744(v2, qword_2FCF8);
  v3 = sub_1EEC4();
  v4 = sub_1F074();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    *(v5 + 4) = 0x4073000000000000;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_0, v3, v4, "video effects control size width=%f and height=%f", v5, 0x16u);
  }

  return 304.0;
}

double sub_A068()
{
  v1 = *&stru_158.segname[(swift_isaMask & *v0) + 8];
  v2 = v1();
  v3 = [v2 centerStage];

  LODWORD(v2) = [v3 isAvailable];
  if (v2)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = v1();
  v6 = [v5 backgroundBlur];

  LODWORD(v5) = [v6 isAvailable];
  if (v5)
  {
    v4 = v4 + 1.0;
  }

  v7 = v1();
  v8 = [v7 studioLighting];

  LODWORD(v7) = [v8 isAvailable];
  if (v7)
  {
    v4 = v4 + 1.0;
  }

  v9 = v1();
  v10 = [v9 reactions];

  LODWORD(v9) = [v10 isAvailable];
  if (v9)
  {
    v11 = v1();
    v12 = [v11 gestures];

    LODWORD(v11) = [v12 isAvailable];
    if (v11)
    {
      v4 = v4 + 1.0;
    }
  }

  if (qword_2FD10 != -1)
  {
    swift_once();
  }

  v13 = 3.0;
  if (v4 > 3.0)
  {
    v13 = v4;
  }

  return (v13 + -1.0) * 8.0 + v13 * *&qword_2FD18;
}

void sub_A2CC()
{
  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v1 = sub_1EEE4();
  sub_13744(v1, qword_2FCF8);
  v2 = v0;
  v3 = sub_1EEC4();
  v4 = sub_1F074();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = (*&stru_158.sectname[swift_isaMask & *v2])();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "refreshCurrentApplication, context=%@", v5, 0xCu);
    sub_14038(v6, &qword_2F660, &qword_20F30);
  }

  v8 = (*&stru_158.sectname[swift_isaMask & *v2])();
  if (v8)
  {
    v9 = v8;
    v26 = v8;
    v10 = sub_1EEC4();
    v11 = sub_1F074();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v26;
      *v13 = v9;
      v14 = v26;
      _os_log_impl(&dword_0, v10, v11, "setting module context on effects manager %@", v12, 0xCu);
      sub_14038(v13, &qword_2F660, &qword_20F30);
    }

    v15 = (*&stru_158.segname[(swift_isaMask & *v2) + 8])();
    [v15 updateCurrentApplicationWithContext:v26];

    sub_BF74();
    v16 = [v2 viewIfLoaded];
    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = v16;
    type metadata accessor for VideoEffectsView();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      sub_E604(1);
      sub_9F20();
      (*(&stru_20.nsects + (swift_isaMask & *v19)))(304.0);
      v20 = sub_A068();
      v21 = (*&stru_108.segname[(swift_isaMask & *v2) - 8])();
      [v21 setConstant:v20];

      v22 = [v2 view];
      if (v22)
      {
        v23 = v22;
        [v22 invalidateIntrinsicContentSize];

        v24 = [v2 view];
        if (v24)
        {
          v25 = v24;
          [v24 setNeedsLayout];

LABEL_15:
LABEL_16:

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v25 = v26;
    v26 = v17;
    goto LABEL_15;
  }
}

void sub_A76C(void *a1)
{
  v2 = v1;
  v4 = *(&stru_158.reloff + (swift_isaMask & *v1));
  v5 = (swift_isaMask & *v1) + 400;
  v6 = v4();
  v7 = v6;
  v27 = v5;
  v28 = v4;
  if (v6 >> 62)
  {
LABEL_15:
    v8 = sub_1F354();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
LABEL_3:
      v9 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_1F2A4();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            sub_1DF34(0);
            goto LABEL_23;
          }
        }

        else
        {
          if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          v10 = *(v7 + 8 * v9 + 32);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_12;
          }
        }

        v29 = v10;
        v12 = [v10 tag:v27];
        if (v12 == [a1 tag])
        {
          goto LABEL_13;
        }

        ++v9;
      }

      while (v11 != v8);
    }
  }

  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v13 = sub_1EEE4();
  sub_13744(v13, qword_2FCF8);
  v14 = a1;
  v15 = sub_1EEC4();
  v16 = sub_1F074();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_6B78(0xD000000000000013, 0x8000000000024520, &v30);
    *(v17 + 12) = 2048;
    *(v17 + 14) = [v14 tag];

    _os_log_impl(&dword_0, v15, v16, "VideoEffectsViewController %s Could not find corresponding button for tag %ld", v17, 0x16u);
    sub_7168(v18);
  }

  else
  {
  }

  v19 = v2;
  v29 = sub_1EEC4();
  v20 = sub_1F074();

  if (os_log_type_enabled(v29, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    v28();
    type metadata accessor for EffectControl();
    v23 = sub_1F054();
    v25 = v24;

    v26 = sub_6B78(v23, v25, &v30);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_0, v29, v20, "Supported buttons: %s", v21, 0xCu);
    sub_7168(v22);
  }

LABEL_23:
}

void sub_AB94(void *a1)
{
  v2 = *(&stru_158.reloff + (swift_isaMask & *v1));
  v3 = v2();
  v4 = v3;
  v40 = v1;
  v41 = v2;
  if (!(v3 >> 62))
  {
    v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v6 = a1;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_23:

    if (qword_2FCF0 != -1)
    {
      swift_once();
    }

    v26 = sub_1EEE4();
    sub_13744(v26, qword_2FCF8);
    v27 = a1;
    v28 = sub_1EEC4();
    v29 = sub_1F074();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_6B78(0xD000000000000015, 0x8000000000024540, &v45);
      *(v30 + 12) = 2048;
      *(v30 + 14) = [v27 tag];

      _os_log_impl(&dword_0, v28, v29, "%s Could not find corresponding button for tag %ld", v30, 0x16u);
      sub_7168(v31);
    }

    else
    {
    }

    v32 = v40;
    osloga = sub_1EEC4();
    v33 = sub_1F074();

    if (os_log_type_enabled(osloga, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      v41();
      type metadata accessor for EffectControl();
      v36 = sub_1F054();
      v38 = v37;

      v39 = sub_6B78(v36, v38, &v45);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_0, osloga, v33, "Supported buttons %s", v34, 0xCu);
      sub_7168(v35);
    }

    v25 = osloga;
    goto LABEL_31;
  }

LABEL_22:
  v5 = sub_1F354();
  v6 = a1;
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_3:
  v7 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = sub_1F2A4();
    }

    else
    {
      if (v7 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v11 = [v8 tag];
    if (v11 == [v6 tag])
    {
      break;
    }

    ++v7;
    if (v10 == v5)
    {
      goto LABEL_23;
    }
  }

  v42 = v9;
  [v42 setSelected:[v42 isSelected]^ 1];
  v12 = v6;
  v13 = [v42 isSelected];
  v14 = sub_7928();
  v15 = sub_9E40() & 1;
  sub_1D824(v13, v14 & 1, v15);
  v16 = [v12 tag];
  if (v16 >= 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v18 = sub_1EEE4();
  sub_13744(v18, qword_2FCF8);
  v19 = sub_1EEC4();
  v20 = sub_1F074();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_6B78(0xD000000000000015, 0x8000000000024540, &v45);
    *(v21 + 12) = 2048;
    *(v21 + 14) = v17;
    _os_log_impl(&dword_0, v19, v20, "%s toggling VideoEffect %ld", v21, 0x16u);
    sub_7168(v22);
  }

  v23 = (*&stru_158.segname[(swift_isaMask & *v40) + 8])();
  v24 = [v42 isSelected];

  [v23 setState:v24 forEffect:v17];
  sub_1E02C();
  v25 = v42;
LABEL_31:
}

void sub_B1D0(void *a1)
{
  v2 = v1;
  v4 = [a1 tag];
  if (v4 >= 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v6 = sub_1EEE4();
  sub_13744(v6, qword_2FCF8);
  v7 = sub_1EEC4();
  v8 = sub_1F074();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_6B78(0xD000000000000016, 0x8000000000024560, &v12);
    *(v9 + 12) = 2048;
    *(v9 + 14) = v5;
    _os_log_impl(&dword_0, v7, v8, "%s VideoEffect %ld slider changed.", v9, 0x16u);
    sub_7168(v10);
  }

  v11 = (*&stru_158.segname[(swift_isaMask & *v2) + 8])();
  [a1 value];
  [v11 setIntensity:v5 forEffect:?];
}

void sub_B428(void *a1)
{
  v2 = v1;
  sub_14548(0, &qword_2F520, OS_os_log_ptr);
  v4 = sub_1F254();
  sub_1F094();
  sub_1EEB4();

  if (qword_2FCF0 != -1)
  {
LABEL_37:
    swift_once();
  }

  v5 = sub_1EEE4();
  sub_13744(v5, qword_2FCF8);
  v6 = v2;
  v7 = sub_1EEC4();
  v8 = sub_1F074();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_6B78(0xD000000000000015, 0x8000000000024590, aBlock);
    *(v9 + 12) = 2080;
    v10 = (*(&stru_B8.flags + (swift_isaMask & *v6)))();
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v83.origin.x = v12;
    v83.origin.y = v14;
    v83.size.width = v16;
    v83.size.height = v18;
    v19 = NSStringFromCGRect(v83);
    v20 = sub_1F004();
    v22 = v21;

    v23 = sub_6B78(v20, v22, aBlock);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_0, v7, v8, "%s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v24 = *(&stru_158.reloff + (swift_isaMask & *v6));
  v25 = v24();
  v26 = v25;
  v75 = v24;
  v76 = v6;
  if (!(v25 >> 62))
  {
    v27 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
    if (v27)
    {
      goto LABEL_6;
    }

LABEL_39:

    v78 = a1;
    oslog = sub_1EEC4();
    v60 = sub_1F074();
    if (os_log_type_enabled(oslog, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = [v78 tag];

      _os_log_impl(&dword_0, oslog, v60, "Could not find corresponding button for tag %ld", v61, 0xCu);

LABEL_41:
      v62 = oslog;
    }

    else
    {

      v62 = v78;
    }

    return;
  }

  v27 = sub_1F354();
  if (!v27)
  {
    goto LABEL_39;
  }

LABEL_6:
  v28 = 0;
  v2 = (v26 & 0xC000000000000001);
  v29 = &stru_2E000;
  while (1)
  {
    if (v2)
    {
      v30 = sub_1F2A4();
    }

    else
    {
      if (v28 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_34;
      }

      v30 = *(v26 + 8 * v28 + 32);
    }

    v31 = v30;
    v32 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v33 = [v30 tag];
    if (v33 == [a1 tag])
    {
      break;
    }

    ++v28;
    if (v32 == v27)
    {
      goto LABEL_39;
    }
  }

  v35 = (v75)(v34);
  sub_BDD8(v31, v35);
  v37 = v36;

  if (v37)
  {
    v39 = v31;
    oslog = sub_1EEC4();
    v40 = sub_1F074();

    if (os_log_type_enabled(oslog, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v39;
      *v42 = v39;
      v39 = v39;
      _os_log_impl(&dword_0, oslog, v40, "Could not find index for %@", v41, 0xCu);
      sub_14038(v42, &qword_2F660, &qword_20F30);
    }

    goto LABEL_41;
  }

  (*&stru_158.segname[swift_isaMask & *v31])(v38);
  v43 = [v76 view];
  if (!v43)
  {
    __break(1u);
    return;
  }

  v44 = v43;
  [v43 bringSubviewToFront:v31];

  v45 = v75();
  v46 = v45;
  aBlock[0] = _swiftEmptyArrayStorage;
  if (v45 >> 62)
  {
    v2 = sub_1F354();
    if (v2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_22:
      v47 = 0;
      v48 = v46 & 0xC000000000000001;
      v77 = v31;
      osloga = (v46 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v48)
        {
          v55 = sub_1F2A4();
        }

        else
        {
          if (v47 >= osloga[2].isa)
          {
            goto LABEL_36;
          }

          v55 = *(v46 + 8 * v47 + 32);
        }

        v56 = v55;
        v57 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_35;
        }

        v58 = [v55 *&v29[15].align];
        if (v58 == [a1 *&v29[15].align])
        {
        }

        else
        {
          sub_1F2C4();
          v49 = v29;
          v50 = v48;
          v51 = v2;
          v52 = a1;
          v53 = v46;
          v54 = *(aBlock[0] + 16);
          sub_1F2E4();
          v46 = v53;
          a1 = v52;
          v2 = v51;
          v48 = v50;
          v29 = v49;
          v31 = v77;
          sub_1F2F4();
          sub_1F2D4();
        }

        v47 = (v47 + 1);
        if (v57 == v2)
        {
          v59 = aBlock[0];
          goto LABEL_48;
        }
      }
    }
  }

  v59 = _swiftEmptyArrayStorage;
LABEL_48:

  if (v59 < 0 || (v59 & 0x4000000000000000) != 0)
  {
    goto LABEL_62;
  }

  for (i = *(v59 + 16); i; i = sub_1F354())
  {
    v64 = 0;
    while (1)
    {
      if ((v59 & 0xC000000000000001) != 0)
      {
        v65 = sub_1F2A4();
      }

      else
      {
        if (v64 >= *(v59 + 16))
        {
          goto LABEL_61;
        }

        v65 = *(v59 + 8 * v64 + 32);
      }

      v66 = v65;
      v67 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if ((*&stru_108.sectname[swift_isaMask & *v65])())
      {
        (*&stru_158.segname[swift_isaMask & *v66])();
      }

      ++v64;
      if (v67 == i)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:
  sub_E604(1);
  v68 = *&stru_108.sectname[swift_isaMask & *v31];
  if (v68())
  {
    v69 = 0.1;
  }

  else
  {
    v69 = 0.3;
  }

  if (v68())
  {
    v70 = 0.0;
  }

  else
  {
    v70 = 0.2;
  }

  v71 = objc_opt_self();
  v72 = swift_allocObject();
  *(v72 + 16) = v59;
  *(v72 + 24) = v31;
  aBlock[4] = sub_137BC;
  aBlock[5] = v72;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_BEC8;
  aBlock[3] = &unk_28BF0;
  v73 = _Block_copy(aBlock);
  v74 = v31;

  [v71 animateWithDuration:0 delay:v73 options:0 animations:v69 completion:v70];

  _Block_release(v73);
}

unint64_t sub_BDD8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1F354();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_1F2A4();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for EffectControl();
    v8 = sub_1F0E4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_BEC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_BF74()
{
  v1 = v0;
  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1EEE4();
  sub_13744(v2, qword_2FCF8);
  v3 = sub_1EEC4();
  v4 = sub_1F074();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v67 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_6B78(0xD000000000000014, 0x8000000000024C50, &v67);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    sub_7168(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_centerStageButton);
  v8 = *&stru_158.segname[(swift_isaMask & *v1) + 8];
  v9 = v8();
  v10 = [v9 centerStage];

  LODWORD(v9) = [v10 isAvailable];
  v11 = (v8)([v7 setHidden:v9 ^ 1]);
  v12 = [v11 centerStage];

  v13 = [v12 enabled];
  v14 = (v8)([v7 setSelected:v13]);
  v15 = [v14 centerStage];

  LOBYTE(v14) = [v15 enabled];
  LOBYTE(v15) = sub_7928();
  v16 = sub_9E40();
  v17 = sub_1D824(v14, v15 & 1, v16 & 1);
  v18 = *(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_portraitButton);
  v19 = (v8)(v17);
  v20 = [v19 backgroundBlur];

  LODWORD(v19) = [v20 isAvailable];
  v21 = (v8)([v18 setHidden:v19 ^ 1]);
  v22 = [v21 backgroundBlur];

  v23 = [v22 enabled];
  v24 = (v8)([v18 setSelected:v23]);
  v25 = [v24 backgroundBlur];

  LOBYTE(v24) = [v25 enabled];
  LOBYTE(v25) = sub_7928();
  v26 = sub_9E40();
  sub_1D824(v24, v25 & 1, v26 & 1);
  v27 = *&v18[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_continuousSlider];
  v28 = v8();
  v29 = [v28 backgroundBlur];

  [v29 intensity];
  v31 = v30;

  LODWORD(v32) = v31;
  [v27 setValue:0 animated:v32];

  v33 = *(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_studioLightButton);
  v34 = v8();
  v35 = [v34 studioLighting];

  LODWORD(v34) = [v35 isAvailable];
  v36 = (v8)([v33 setHidden:v34 ^ 1]);
  v37 = [v36 studioLighting];

  v38 = [v37 enabled];
  v39 = (v8)([v33 setSelected:v38]);
  v40 = [v39 studioLighting];

  LOBYTE(v39) = [v40 enabled];
  LOBYTE(v40) = sub_7928();
  v41 = sub_9E40();
  sub_1D824(v39, v40 & 1, v41 & 1);
  v42 = *&v33[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_continuousSlider];
  v43 = v8();
  v44 = [v43 studioLighting];

  [v44 intensity];
  v46 = v45;

  LODWORD(v47) = v46;
  [v42 setValue:0 animated:v47];

  v48 = *(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_reactionsButton);
  v49 = v8();
  v50 = [v49 reactions];

  LODWORD(v49) = [v50 isAvailable];
  if (v49)
  {
    v51 = v8();
    v52 = [v51 gestures];

    LODWORD(v51) = [v52 isAvailable];
    v53 = v51 ^ 1;
  }

  else
  {
    v53 = 1;
  }

  v54 = (v8)([v48 setHidden:v53]);
  v55 = [v54 reactions];

  v56 = [v55 enabled];
  if (v56)
  {
    v57 = v8();
    v58 = [v57 gestures];

    v56 = [v58 enabled];
  }

  v59 = (v8)([v48 setSelected:v56]);
  v60 = [v59 reactions];

  LODWORD(v59) = [v60 enabled];
  if (v59)
  {
    v61 = v8();
    v62 = [v61 gestures];

    v63 = [v62 enabled];
  }

  else
  {
    v63 = 0;
  }

  v64 = sub_7928();
  v65 = sub_9E40();
  return sub_1D824(v63, v64 & 1, v65 & 1);
}

id sub_C738()
{
  v1 = v0;
  v2 = sub_A068();
  v3 = *(&stru_B8.flags + (swift_isaMask & *v0));
  v4 = v3();
  v5 = [v4 heightAnchor];

  v6 = [v5 constraintEqualToConstant:v2];
  (*&stru_108.segname[swift_isaMask & *v1])(v6);
  sub_7120(&qword_2F610, &qword_20F28);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20E80;
  v8 = *(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_containerView);
  v9 = [v8 trailingAnchor];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v11 = result;
  v12 = [result trailingAnchor];

  v13 = [v9 constraintEqualToAnchor:v12 constant:-10.0];
  *(v7 + 32) = v13;
  v14 = [v8 topAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = result;
  v16 = [result topAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:10.0];
  *(v7 + 40) = v17;
  v18 = [v8 leadingAnchor];
  v19 = v3();
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:10.0];
  *(v7 + 48) = v21;
  v22 = [v8 widthAnchor];
  v23 = [v22 constraintEqualToConstant:163.0];

  *(v7 + 56) = v23;
  v24 = [v8 heightAnchor];
  v25 = v3();
  v26 = [v25 heightAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  *(v7 + 64) = v27;
  v28 = v3();
  v29 = [v28 leadingAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = result;
  v31 = [result leadingAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:10.0];
  *(v7 + 72) = v32;
  v33 = v3();
  v34 = [v33 topAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v35 = result;
  v36 = objc_opt_self();
  v37 = [v35 topAnchor];

  v38 = [v34 constraintEqualToAnchor:v37 constant:10.0];
  *(v7 + 80) = v38;
  *(v7 + 88) = (*&stru_108.segname[(swift_isaMask & *v1) - 8])();
  sub_14548(0, &qword_2F850, NSLayoutConstraint_ptr);
  isa = sub_1F034().super.isa;

  [v36 activateConstraints:isa];

  v40 = *(&stru_158.offset + (swift_isaMask & *v1));
  v41 = v40();
  if (v41 >> 62)
  {
    goto LABEL_29;
  }

  v42 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));

  while (1)
  {
    v43 = (v40)(v43);
    if (!v42)
    {
      break;
    }

    v82 = v1;
    if (!(v43 >> 62))
    {
      v78 = v43 & 0xFFFFFFFFFFFFFF8;
      v83 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_10;
    }

    while (1)
    {
      v77 = v43;
      v78 = v43 & 0xFFFFFFFFFFFFFF8;
      v83 = sub_1F354();
      v43 = v77;
LABEL_10:
      v44 = 0;
      v81 = v43 & 0xC000000000000001;
      v79 = v43;
      v80 = v42;
      while (v44 < v42)
      {
        if (__OFADD__(v44, 1))
        {
          goto LABEL_27;
        }

        if (v83 == v44)
        {
        }

        v86 = v44 + 1;
        if (v81)
        {
          v1 = sub_1F2A4();
          v45 = v82;
          v46 = &stru_2E000;
        }

        else
        {
          v45 = v82;
          v46 = &stru_2E000;
          if (v44 >= *(v78 + 16))
          {
            goto LABEL_28;
          }

          v1 = *(v43 + 8 * v44 + 32);
        }

        [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
        v47 = [v1 v46[30].offs];
        v85 = *(v45 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_containerView);
        v48 = [v85 v46[30].offs];
        v49 = [v47 constraintEqualToAnchor:v48];

        v50 = [v1 heightAnchor];
        if (qword_2FD10 != -1)
        {
          swift_once();
        }

        v51 = [v50 constraintEqualToConstant:*&qword_2FD18];

        v52 = [v1 tag];
        v53 = *(&stru_1A8.offset + (swift_isaMask & *v45));
        v84 = v49;
        v54 = v53(v89);
        v56 = v55;
        v57 = *v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = *v56;
        *v56 = 0x8000000000000000;
        sub_12D90(v84, v52, isUniquelyReferenced_nonNull_native);
        *v56 = v87;
        v54(v89, 0);
        v59 = [v1 tag];
        v60 = *(&stru_1A8.reserved2 + (swift_isaMask & *v45));
        v61 = v51;
        v62 = v60(v89);
        v64 = v63;
        v65 = *v63;
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v88 = *v64;
        *v64 = 0x8000000000000000;
        sub_12D90(v61, v59, v66);
        *v64 = v88;
        v62(v89, 0);
        v67 = objc_opt_self();
        sub_7120(&qword_2F610, &qword_20F28);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_20E60;
        v69 = [v1 leadingAnchor];
        v70 = [v85 leadingAnchor];
        v71 = [v69 constraintEqualToAnchor:v70];

        *(v68 + 32) = v71;
        v72 = [v1 trailingAnchor];
        v73 = [v85 trailingAnchor];
        v74 = [v72 constraintEqualToAnchor:v73];

        *(v68 + 40) = v74;
        *(v68 + 48) = v84;
        *(v68 + 56) = v61;
        v75 = v84;
        v40 = v61;
        v76 = sub_1F034().super.isa;

        [v67 activateConstraints:v76];

        ++v44;
        v43 = v79;
        v42 = v80;
        if (v86 == v80)
        {
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v42 = sub_1F354();

      if ((v42 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
    }
  }
}

void sub_D224()
{
  v1 = (*&stru_108.segname[(swift_isaMask & *v0) + 16])();
  if (v1)
  {
    v2 = v1;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = objc_opt_self();
    sub_7120(&qword_2F610, &qword_20F28);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_20E60;
    v5 = [v2 centerXAnchor];
    v6 = *(&stru_B8.flags + (swift_isaMask & *v0));
    v7 = v6();
    v8 = [v7 centerXAnchor];

    v9 = [v5 constraintEqualToAnchor:v8];
    *(v4 + 32) = v9;
    v10 = [v2 centerYAnchor];
    v11 = v6();
    v12 = [v11 centerYAnchor];

    v13 = [v10 constraintEqualToAnchor:v12];
    *(v4 + 40) = v13;
    v14 = [v2 heightAnchor];
    v15 = v6();
    v16 = [v15 heightAnchor];

    v17 = [v14 constraintEqualToAnchor:v16];
    *(v4 + 48) = v17;
    v18 = [v2 widthAnchor];
    v19 = [v2 heightAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    *(v4 + 56) = v20;
    sub_14548(0, &qword_2F850, NSLayoutConstraint_ptr);
    oslog = sub_1F034().super.isa;

    [v3 activateConstraints:oslog];
  }

  else
  {
    if (qword_2FCF0 != -1)
    {
      swift_once();
    }

    v21 = sub_1EEE4();
    sub_13744(v21, qword_2FCF8);
    oslog = sub_1EEC4();
    v22 = sub_1F084();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_6B78(0xD000000000000020, 0x8000000000024C20, &v26);
      _os_log_impl(&dword_0, oslog, v22, "%s nil videoPreviewView", v23, 0xCu);
      sub_7168(v24);
    }
  }
}

void sub_D62C()
{
  v1 = v0;
  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1EEE4();
  sub_13744(v2, qword_2FCF8);
  v3 = sub_1EEC4();
  v4 = sub_1F074();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v39 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_6B78(0x7765695664616F6CLL, 0xEA00000000002928, &v39);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    sub_7168(v6);
  }

  v7 = *&stru_158.segname[(swift_isaMask & *v1) + 8];
  v8 = v7();
  v9 = *(&stru_108.reloff + (swift_isaMask & *v1));
  [v8 setShouldLoadFromSensor:v9() & 1];

  v10 = v7();
  [v10 setDelegate:v1];

  if (v9())
  {
    v11 = (*&stru_158.sectname[swift_isaMask & *v1])();
    if (v11)
    {
      v12 = v11;
      sub_A2CC();
    }

    else
    {
      v12 = sub_1EEC4();
      v37 = sub_1F084();
      if (os_log_type_enabled(v12, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_0, v12, v37, "could not unwrap module context", v38, 2u);
      }
    }
  }

  else
  {
    v12 = v7();
    [v12 setupWithoutSensorData];
  }

  v13 = v7();
  [v13 updateVideoEffectsStates];

  v14 = v7();
  [v14 setupVideoEffectsModeNotifications];

  sub_9F20();
  v16 = v15;
  v17 = objc_allocWithZone(type metadata accessor for VideoEffectsView());
  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [v17 initWithFrame:{v20, v22, v24, v26}];
  v28 = &v27[OBJC_IVAR____TtC34VideoConferenceControlCenterModule16VideoEffectsView_controlSize];
  swift_beginAccess();
  *v28 = 0x4073000000000000;
  *(v28 + 1) = v16;
  [v1 setView:v27];

  v29 = objc_opt_self();
  v30 = sub_1A458();
  v31 = *v30;
  v32 = v30[1];

  v33 = sub_1EFF4();

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v36 = [v29 _visualStylingProviderForStyleSetNamed:v33 inBundle:v35];

  if (v36)
  {
    (*&stru_248.segname[(swift_isaMask & *v1) - 8])(v36);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_DB84()
{
  v36 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for VideoEffectsViewController();
  objc_msgSendSuper2(&v38, "viewDidLoad");
  if (qword_2FCF0 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v1 = sub_1EEE4();
    sub_13744(v1, qword_2FCF8);
    v2 = sub_1EEC4();
    v3 = sub_1F074();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v37 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_6B78(0x4C64694477656976, 0xED0000292864616FLL, &v37);
      _os_log_impl(&dword_0, v2, v3, "%s", v4, 0xCu);
      sub_7168(v5);
    }

    v6 = *(&stru_B8.flags + (swift_isaMask & *v36));
    v7 = v6();
    v8 = [objc_opt_self() systemGrayTintColor];
    [v7 setBackgroundColor:v8];

    v9 = v6();
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = v6();
    [v10 _setContinuousCornerRadius:(*&stru_1F8.segname[(swift_isaMask & *v36) - 8])() + -10.0];

    v11 = v6();
    [v11 setClipsToBounds:1];

    result = [v36 view];
    if (!result)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v13 = result;
    v14 = v6();
    v15 = &stru_2E000;
    [v13 addSubview:v14];

    v16 = *(v36 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_containerView);
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    result = [v36 view];
    if (!result)
    {
      goto LABEL_28;
    }

    v17 = result;
    [result addSubview:v16];

    v18 = (*(&stru_158.offset + (swift_isaMask & *v36)))();
    v19 = v18;
    if (!(v18 >> 62))
    {
      v20 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
      if (!v20)
      {
        break;
      }

      goto LABEL_8;
    }

    v20 = sub_1F354();
    if (!v20)
    {
      break;
    }

LABEL_8:
    v21 = 0;
    v34 = v19 & 0xFFFFFFFFFFFFFF8;
    v35 = v19 & 0xC000000000000001;
    v32 = v20;
    v33 = v19;
    while (v35)
    {
      v26 = sub_1F2A4();
      v25 = &stru_2E000;
      v27 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_20;
      }

LABEL_14:
      if (qword_2FD10 != -1)
      {
        swift_once();
      }

      [v26 _setContinuousCornerRadius:{*&qword_2FD18 * 0.5, v32, v33}];
      v28 = v15;
      [*(v36 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_containerView) *&v15[20].align];
      v29 = sub_1A464(v26[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_controlType], 1);
      v30 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonGlyph;
      v31 = *&v26[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonGlyph];
      if (v29)
      {
        v23 = v25;
        [v31 addTarget:v36 action:"expandTappedWithSender:" forControlEvents:64];
        v22 = &stru_2E000;
      }

      else
      {
        [v31 addTarget:v36 action:v25[30].type forControlEvents:64];
        v22 = &stru_2E000;
        [*&v26[v30] addTarget:v36 action:"buttonDownWithSender:" forControlEvents:1];
        v23 = v25;
      }

      v24 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_imageBackgroundView;
      [*&v26[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_imageBackgroundView] addTarget:v36 action:v23[30].type forControlEvents:64];
      [*&v26[v24] addTarget:v36 action:v22[31].offs forControlEvents:1];
      [*&v26[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_expandChevron] addTarget:v36 action:"expandTappedWithSender:" forControlEvents:64];
      [*&v26[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_continuousSlider] addTarget:v36 action:"sliderChangedWithSender:" forControlEvents:4096];

      ++v21;
      v15 = v28;
      v19 = v33;
      if (v27 == v32)
      {
        goto LABEL_24;
      }
    }

    v25 = &stru_2E000;
    if (v21 >= *(v34 + 16))
    {
      goto LABEL_21;
    }

    v26 = *(v19 + 8 * v21 + 32);
    v27 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_14;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

LABEL_24:

  sub_E218();
  sub_C738();
  sub_BF74();
  sub_E604(0);
  result = (*(&stru_108.reloff + (swift_isaMask & *v36)))();
  if ((result & 1) == 0)
  {
    return [v36 viewWillAppear:1];
  }

  return result;
}

uint64_t sub_E218()
{
  if (qword_2FD10 != -1)
  {
    swift_once();
  }

  v2 = *&qword_2FD18;
  v3 = *((*(&stru_158.flags + (swift_isaMask & *v0)))() + 16);

  if (!v3)
  {
    type metadata accessor for CGRect(0);
    v4 = sub_1F064();
    *(v4 + 16) = 4;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    (*(&stru_158.reserved2 + (swift_isaMask & *v0)))();
  }

  v5 = *&stru_1A8.sectname[swift_isaMask & *v0];
  v6 = v5(v18);
  v8 = v7;
  v9 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v9;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (*(v9 + 2))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = sub_1330C(v9);
    *v8 = v9;
    if (*(v9 + 2))
    {
LABEL_7:
      *(v9 + 4) = 0;
      *(v9 + 5) = 0;
      *(v9 + 6) = 0x4064600000000000;
      *(v9 + 7) = v2;
      v6(v18, 0);
      v6 = v5(v18);
      v8 = v11;
      v9 = *v11;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      *v8 = v9;
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v9 = sub_1330C(v9);
  *v8 = v9;
LABEL_8:
  if (*(v9 + 2) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v1 = v2 + 8.0;
    *(v9 + 8) = 0;
    *(v9 + 9) = v2 + 8.0;
    *(v9 + 10) = 0x4064600000000000;
    *(v9 + 11) = v2;
    v6(v18, 0);
    v6 = v5(v18);
    v8 = v13;
    v9 = *v13;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v9;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  v9 = sub_1330C(v9);
  *v8 = v9;
LABEL_10:
  if (*(v9 + 2) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 12) = 0;
    *(v9 + 13) = v1 + v1;
    *(v9 + 14) = 0x4064600000000000;
    *(v9 + 15) = v2;
    v6(v18, 0);
    v6 = v5(v18);
    v8 = v15;
    v9 = *v15;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v9;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  v9 = sub_1330C(v9);
  *v8 = v9;
LABEL_12:
  if (*(v9 + 2) < 4uLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  *(v9 + 16) = 0;
  *(v9 + 17) = v1 * 3.0;
  *(v9 + 18) = 0x4064600000000000;
  *(v9 + 19) = v2;
  v6(v18, 0);
  if (qword_2FD20 != -1)
  {
LABEL_23:
    swift_once();
  }

  return (*&stru_1A8.segname[swift_isaMask & *v0])(0.0, 0.0, 163.0, *&qword_2FD28);
}

void sub_E604(char a1)
{
  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v3 = sub_1EEE4();
  sub_13744(v3, qword_2FCF8);
  v4 = sub_1EEC4();
  v5 = sub_1F074();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_6B78(0xD00000000000002ALL, 0x8000000000024C70, v18);
    _os_log_impl(&dword_0, v4, v5, "%s", v6, 0xCu);
    sub_7168(v7);
  }

  v8 = v1;
  v9 = sub_1EEC4();
  v10 = sub_1F074();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    v12 = (*(&stru_158.reloff + (swift_isaMask & v8->isa)))();
    if (v12 >> 62)
    {
      v13 = sub_1F354();
    }

    else
    {
      v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    }

    *(v11 + 4) = v13;

    _os_log_impl(&dword_0, v9, v10, "supportedCount=%ld", v11, 0xCu);
  }

  else
  {

    v9 = v8;
  }

  if (a1)
  {
    v14 = 0.3;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = objc_opt_self();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18[4] = sub_14098;
  v18[5] = v16;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_BEC8;
  v18[3] = &unk_28F68;
  v17 = _Block_copy(v18);

  [v15 animateWithDuration:v17 animations:v14];
  _Block_release(v17);
}

void *sub_E948(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1F324();

    if (v4)
    {
      sub_14548(0, &qword_2F668, MTVisualStylingProvider_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_12218(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_EA0C(char a1)
{
  v2 = v1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for VideoEffectsViewController();
  objc_msgSendSuper2(&v26, "viewWillAppear:", a1 & 1);
  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1EEE4();
  sub_13744(v4, qword_2FCF8);
  v5 = sub_1EEC4();
  v6 = sub_1F074();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_6B78(0xD000000000000012, 0x80000000000245B0, &v25);
    _os_log_impl(&dword_0, v5, v6, "%s", v7, 0xCu);
    sub_7168(v8);
  }

  sub_A2CC();
  v9 = *(v2 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_videoEffectsPreview);
  v10.n128_f64[0] = sub_13928();
  v11 = (*(*v9 + 536))(v10);
  v12 = (*(*v9 + 152))(v11);
  if (v12)
  {
    v13 = v12;
    v14 = v12;
    v15 = sub_1EEC4();
    v16 = sub_1F074();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_6B78(0xD000000000000012, 0x80000000000245B0, &v25);
      *(v17 + 12) = 2112;
      *(v17 + 14) = v14;
      *v18 = v13;
      v20 = v14;
      _os_log_impl(&dword_0, v15, v16, "%s adding videoView=%@ to previewView", v17, 0x16u);
      sub_14038(v18, &qword_2F660, &qword_20F30);

      sub_7168(v19);
    }

    v21 = *(&stru_108.size + (swift_isaMask & *v2));
    v22 = v14;
    v23 = v21(v13);
    v24 = (*(&stru_B8.flags + (swift_isaMask & *v2)))(v23);
    [v24 addSubview:v22];

    sub_D224();
    (*(*v9 + 520))();
  }
}

id sub_EE50(char a1)
{
  v2 = v1;
  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1EEE4();
  sub_13744(v4, qword_2FCF8);
  v5 = sub_1EEC4();
  v6 = sub_1F074();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_6B78(0xD000000000000015, 0x80000000000245D0, &v15);
    _os_log_impl(&dword_0, v5, v6, "%s", v7, 0xCu);
    sub_7168(v8);
  }

  v9 = *(v2 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_videoEffectsPreview);
  v10 = (*(*v9 + 528))();
  v11 = (*&stru_108.segname[(swift_isaMask & *v2) + 16])(v10);
  if (v11)
  {
    v12 = v11;
    [v11 removeFromSuperview];
    (*(&stru_108.size + (swift_isaMask & *v2)))(0);
  }

  (*(*v9 + 544))();
  v13 = type metadata accessor for VideoEffectsViewController();
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "viewWillDisappear:", a1 & 1);
}

id sub_F120(char a1)
{
  v2 = v1;
  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1EEE4();
  sub_13744(v4, qword_2FCF8);
  v5 = sub_1EEC4();
  v6 = sub_1F074();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_6B78(0xD000000000000011, 0x80000000000245F0, &v11);
    _os_log_impl(&dword_0, v5, v6, "%s", v7, 0xCu);
    sub_7168(v8);
  }

  v9 = type metadata accessor for VideoEffectsViewController();
  v12.receiver = v2;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
}

id sub_F2D8(char a1)
{
  v2 = v1;
  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1EEE4();
  sub_13744(v4, qword_2FCF8);
  v5 = sub_1EEC4();
  v6 = sub_1F074();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_6B78(0xD000000000000014, 0x8000000000024610, &v11);
    _os_log_impl(&dword_0, v5, v6, "%s", v7, 0xCu);
    sub_7168(v8);
  }

  v9 = type metadata accessor for VideoEffectsViewController();
  v12.receiver = v2;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "viewDidDisappear:", a1 & 1);
}

id sub_F490(char a1)
{
  v2 = v1;
  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1EEE4();
  sub_13744(v4, qword_2FCF8);
  v5 = sub_1EEC4();
  v6 = sub_1F074();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_6B78(0xD000000000000013, 0x8000000000024630, &v11);
    _os_log_impl(&dword_0, v5, v6, "%s", v7, 0xCu);
    sub_7168(v8);
  }

  v9 = type metadata accessor for VideoEffectsViewController();
  v12.receiver = v2;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "viewIsAppearing:", a1 & 1);
}

id sub_F648(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1EFF4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_F6C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_previewViewContainer;
  *&v4[v7] = [objc_allocWithZone(UIView) init];
  v8 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_previewViewContainerHeightConstraint;
  *&v4[v8] = [objc_allocWithZone(NSLayoutConstraint) init];
  *&v4[OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_videoPreviewView] = 0;
  v9 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_containerView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_unavailableLabel;
  *&v4[v10] = sub_83BC();
  v11 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_centerStageButton;
  if (qword_2FD30 != -1)
  {
    swift_once();
  }

  v31[34] = xmmword_30330;
  v31[35] = xmmword_30340;
  v31[36] = xmmword_30350;
  v31[30] = xmmword_302F0;
  v31[31] = unk_30300;
  v31[32] = xmmword_30310;
  v31[33] = unk_30320;
  v31[28] = xmmword_302D0;
  v31[29] = unk_302E0;
  sub_85F4();
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_portraitButton;
  if (qword_2FD38 != -1)
  {
    swift_once();
  }

  v31[25] = xmmword_303C0;
  v31[26] = xmmword_303D0;
  v31[27] = xmmword_303E0;
  v31[21] = xmmword_30380;
  v31[22] = unk_30390;
  v31[23] = xmmword_303A0;
  v31[24] = unk_303B0;
  v31[19] = xmmword_30360;
  v31[20] = unk_30370;
  sub_85F4();
  *&v4[v13] = v14;
  v15 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_studioLightButton;
  if (qword_2FD40 != -1)
  {
    swift_once();
  }

  v31[16] = xmmword_30450;
  v31[17] = xmmword_30460;
  v31[18] = xmmword_30470;
  v31[12] = xmmword_30410;
  v31[13] = unk_30420;
  v31[14] = xmmword_30430;
  v31[15] = *byte_30440;
  v31[10] = xmmword_303F0;
  v31[11] = unk_30400;
  sub_85F4();
  *&v4[v15] = v16;
  v17 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_reactionsButton;
  if (qword_2FD48 != -1)
  {
    swift_once();
  }

  v31[7] = xmmword_304E0;
  v31[8] = xmmword_304F0;
  v31[9] = xmmword_30500;
  v31[3] = xmmword_304A0;
  v31[4] = unk_304B0;
  v31[5] = xmmword_304C0;
  v31[6] = unk_304D0;
  v31[1] = xmmword_30480;
  v31[2] = unk_30490;
  sub_85F4();
  *&v4[v17] = v18;
  v4[OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_shouldLoadFromSensor] = 0;
  *&v4[OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_contentModuleContext] = 0;
  v19 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_videoEffectsManager;
  *&v4[v19] = [objc_allocWithZone(VideoEffectsManager) init];
  v20 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_videoEffectsPreview;
  type metadata accessor for VideoEffectsPreview();
  *&v4[v20] = sub_16D0C();
  *&v4[OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_buttonRects] = _swiftEmptyArrayStorage;
  v21 = &v4[OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_expandedButtonRect];
  *v21 = 0u;
  v21[1] = 0u;
  v22 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_buttonTopConstraints;
  *&v4[v22] = sub_13550(_swiftEmptyArrayStorage);
  v23 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_buttonHeightConstraints;
  *&v4[v23] = sub_13550(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_compactContinuousCornerRadius] = 0;
  v24 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_categoriesToVisualStylingProviders;
  *&v4[v24] = sub_1364C(_swiftEmptyArrayStorage);
  v25 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_requiredVisualStyleCategories;
  sub_7120(&qword_2F610, &qword_20F28);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20E70;
  *(v26 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:2];
  *(v26 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *&v4[v25] = v26;
  v27 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_platterStrokeVisualStylingProvider;
  *&v4[v27] = [objc_allocWithZone(MTVisualStylingProvider) init];
  if (a2)
  {
    v28 = sub_1EFF4();
  }

  else
  {
    v28 = 0;
  }

  v31[0].receiver = v4;
  v31[0].super_class = type metadata accessor for VideoEffectsViewController();
  v29 = [(objc_super *)v31 initWithNibName:v28 bundle:a3];

  return v29;
}

id sub_FB6C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_previewViewContainer;
  *&v2[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_previewViewContainerHeightConstraint;
  *&v2[v5] = [objc_allocWithZone(NSLayoutConstraint) init];
  *&v2[OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_videoPreviewView] = 0;
  v6 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_containerView;
  *&v2[v6] = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_unavailableLabel;
  *&v2[v7] = sub_83BC();
  v8 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_centerStageButton;
  if (qword_2FD30 != -1)
  {
    swift_once();
  }

  v27[34] = xmmword_30330;
  v27[35] = xmmword_30340;
  v27[36] = xmmword_30350;
  v27[30] = xmmword_302F0;
  v27[31] = unk_30300;
  v27[32] = xmmword_30310;
  v27[33] = unk_30320;
  v27[28] = xmmword_302D0;
  v27[29] = unk_302E0;
  sub_85F4();
  *&v2[v8] = v9;
  v10 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_portraitButton;
  if (qword_2FD38 != -1)
  {
    swift_once();
  }

  v27[25] = xmmword_303C0;
  v27[26] = xmmword_303D0;
  v27[27] = xmmword_303E0;
  v27[21] = xmmword_30380;
  v27[22] = unk_30390;
  v27[23] = xmmword_303A0;
  v27[24] = unk_303B0;
  v27[19] = xmmword_30360;
  v27[20] = unk_30370;
  sub_85F4();
  *&v2[v10] = v11;
  v12 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_studioLightButton;
  if (qword_2FD40 != -1)
  {
    swift_once();
  }

  v27[16] = xmmword_30450;
  v27[17] = xmmword_30460;
  v27[18] = xmmword_30470;
  v27[12] = xmmword_30410;
  v27[13] = unk_30420;
  v27[14] = xmmword_30430;
  v27[15] = *byte_30440;
  v27[10] = xmmword_303F0;
  v27[11] = unk_30400;
  sub_85F4();
  *&v2[v12] = v13;
  v14 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_reactionsButton;
  if (qword_2FD48 != -1)
  {
    swift_once();
  }

  v27[7] = xmmword_304E0;
  v27[8] = xmmword_304F0;
  v27[9] = xmmword_30500;
  v27[3] = xmmword_304A0;
  v27[4] = unk_304B0;
  v27[5] = xmmword_304C0;
  v27[6] = unk_304D0;
  v27[1] = xmmword_30480;
  v27[2] = unk_30490;
  sub_85F4();
  *&v2[v14] = v15;
  v2[OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_shouldLoadFromSensor] = 0;
  *&v2[OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_contentModuleContext] = 0;
  v16 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_videoEffectsManager;
  *&v2[v16] = [objc_allocWithZone(VideoEffectsManager) init];
  v17 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_videoEffectsPreview;
  type metadata accessor for VideoEffectsPreview();
  *&v2[v17] = sub_16D0C();
  *&v2[OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_buttonRects] = _swiftEmptyArrayStorage;
  v18 = &v2[OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_expandedButtonRect];
  *v18 = 0u;
  v18[1] = 0u;
  v19 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_buttonTopConstraints;
  *&v2[v19] = sub_13550(_swiftEmptyArrayStorage);
  v20 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_buttonHeightConstraints;
  *&v2[v20] = sub_13550(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_compactContinuousCornerRadius] = 0;
  v21 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_categoriesToVisualStylingProviders;
  *&v2[v21] = sub_1364C(_swiftEmptyArrayStorage);
  v22 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_requiredVisualStyleCategories;
  sub_7120(&qword_2F610, &qword_20F28);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E70;
  *(v23 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:2];
  *(v23 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *&v2[v22] = v23;
  v24 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_platterStrokeVisualStylingProvider;
  *&v2[v24] = [objc_allocWithZone(MTVisualStylingProvider) init];
  v27[0].receiver = v2;
  v27[0].super_class = type metadata accessor for VideoEffectsViewController();
  v25 = [(objc_super *)v27 initWithCoder:a1];

  if (v25)
  {
  }

  return v25;
}

id sub_FFCC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10150()
{
  v1 = v0;
  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1EEE4();
  sub_13744(v2, qword_2FCF8);
  v3 = sub_1EEC4();
  v4 = sub_1F074();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_6B78(0xD000000000000012, 0x8000000000024650, &v7);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    sub_7168(v6);
  }

  sub_BF74();
  if ([v1 isViewLoaded])
  {

    sub_E604(1);
  }
}

void *sub_10324(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v3 = (*&stru_1F8.segname[(swift_isaMask & *v1) + 16])();
  v4 = sub_E948(v2, v3);

  return v4;
}

void sub_103D8(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2FCF0 != -1)
  {
    swift_once();
  }

  v6 = sub_1EEE4();
  sub_13744(v6, qword_2FCF8);
  v7 = a1;
  v8 = sub_1EEC4();
  v9 = sub_1F074();

  v39 = v7;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_6B78(0xD000000000000020, 0x8000000000024670, v41);
    *(v10 + 12) = 2080;
    v11 = v7;
    sub_7120(&qword_2F670, &qword_20F38);
    v12 = sub_1F014();
    v14 = sub_6B78(v12, v13, v41);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2080;
    type metadata accessor for MTVisualStyleCategory(0);
    v15 = sub_1F014();
    v17 = sub_6B78(v15, v16, v41);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_0, v8, v9, "%s setting provider=%s for categor=%s", v10, 0x20u);
    swift_arrayDestroy();
  }

  v18 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
  v19 = (*&stru_1F8.segname[(swift_isaMask & *v3) + 16])();
  v20 = sub_E948(v18, v19);

  if (a1)
  {
    if (v20)
    {
      sub_14548(0, &qword_2F668, MTVisualStylingProvider_ptr);
      v21 = v7;
      v22 = v20;
      v23 = sub_1F0E4();

      if (v23)
      {

LABEL_21:
        return;
      }
    }
  }

  else if (!v20)
  {
    goto LABEL_21;
  }

  v24 = *(&stru_1F8.offset + (swift_isaMask & *v3));
  v25 = v18;
  v27 = v24(v41);
  v28 = v26;
  if (!a1)
  {
    v35 = sub_1239C(v25);

    v30 = a2;
LABEL_20:
    v27(v41, 0);
    sub_107EC(v30, a1, v20);

    v18 = v20;
    goto LABEL_21;
  }

  v29 = *v26;
  v30 = a2;
  if ((*v26 & 0xC000000000000001) == 0)
  {
    v36 = *v26;
    v32 = v39;
    v37 = v39;
    goto LABEL_19;
  }

  if (v29 < 0)
  {
    v31 = *v26;
  }

  else
  {
    v31 = v29 & 0xFFFFFFFFFFFFFF8;
  }

  v32 = v39;
  v33 = v39;
  v34 = sub_1F314();
  if (!__OFADD__(v34, 1))
  {
    *v28 = sub_124E8(v31, v34 + 1);
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v28;
    sub_12ED8(v32, v25, isUniquelyReferenced_nonNull_native);
    *v28 = v40;

    goto LABEL_20;
  }

  __break(1u);
}

void sub_107EC(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (a1 == 2)
  {
    if (qword_2FCF0 != -1)
    {
      swift_once();
    }

    v13 = sub_1EEE4();
    sub_13744(v13, qword_2FCF8);
    v14 = sub_1EEC4();
    v15 = sub_1F074();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_6B78(0xD000000000000045, 0x80000000000246A0, &v20);
      _os_log_impl(&dword_0, v14, v15, "%s updating provider views for fill", v16, 0xCu);
      sub_7168(v17);
    }

    if (a3)
    {
      [a3 stopAutomaticallyUpdatingView:*(v4 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_reactionsButton)];
    }

    if (a2)
    {
      v18 = *(v4 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_reactionsButton);

      [a2 automaticallyUpdateView:v18 withStyle:0];
    }
  }

  else if (a1 == 1)
  {
    if (qword_2FCF0 != -1)
    {
      swift_once();
    }

    v7 = sub_1EEE4();
    sub_13744(v7, qword_2FCF8);
    v8 = sub_1EEC4();
    v9 = sub_1F074();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_6B78(0xD000000000000045, 0x80000000000246A0, &v20);
      _os_log_impl(&dword_0, v8, v9, "%s updating provider views for stroke", v10, 0xCu);
      sub_7168(v11);
    }

    if (a3)
    {
      v12 = [*(*(v4 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_reactionsButton) + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonGlyph) titleLabel];
      [a3 stopAutomaticallyUpdatingView:v12];
    }

    if (a2)
    {
      v19 = [*(*(v4 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_reactionsButton) + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonGlyph) titleLabel];
      [a2 automaticallyUpdateView:v19 withStyle:0];
    }
  }
}

double sub_10BFC()
{
  v0 = objc_opt_self();
  v1 = sub_1EFF4();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_1F004();
  v5 = v4;

  v6 = [objc_opt_self() systemBlueColor];
  LODWORD(xmmword_302D0) = 0x10000;
  *(&xmmword_302D0 + 1) = v3;
  unk_302E0 = v5;
  qword_302E8 = 0;
  *&xmmword_302F0 = 0;
  *(&xmmword_302F0 + 1) = 0xD000000000000016;
  unk_30300 = 0x8000000000024E60;
  qword_30308 = 0xD000000000000016;
  *&xmmword_30310 = 0x8000000000024E60;
  *(&xmmword_30310 + 1) = v6;
  unk_30320 = 0xD000000000000016;
  qword_30328 = 0x8000000000024E60;
  *&xmmword_30330 = 0xD000000000000016;
  *(&xmmword_30330 + 1) = 0x8000000000024E60;
  result = 23.0;
  xmmword_30340 = xmmword_20E90;
  xmmword_30350 = 0uLL;
  return result;
}

double sub_10D1C()
{
  v0 = objc_opt_self();
  v1 = sub_1EFF4();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_1F004();
  v5 = v4;

  v6 = sub_1EFF4();
  v7 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v6];

  v8 = sub_1F004();
  v10 = v9;

  v11 = sub_1EFF4();
  v12 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v11];

  v13 = sub_1F004();
  v15 = v14;

  v16 = [objc_opt_self() systemBlueColor];
  LODWORD(xmmword_30360) = 65793;
  *(&xmmword_30360 + 1) = v3;
  unk_30370 = v5;
  qword_30378 = v8;
  *&xmmword_30380 = v10;
  *(&xmmword_30380 + 1) = 0x7669737275632E66;
  unk_30390 = 0xE900000000000065;
  qword_30398 = 0x7669737275632E66;
  *&xmmword_303A0 = 0xE900000000000065;
  *(&xmmword_303A0 + 1) = v16;
  unk_303B0 = 0x7669737275632E66;
  qword_303B8 = 0xE900000000000065;
  *&xmmword_303C0 = 0x7669737275632E66;
  *(&xmmword_303C0 + 1) = 0xE900000000000065;
  result = 27.0;
  xmmword_303D0 = xmmword_20EA0;
  *&xmmword_303E0 = v13;
  *(&xmmword_303E0 + 1) = v15;
  return result;
}

double sub_10F00()
{
  v0 = objc_opt_self();
  v1 = sub_1EFF4();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_1F004();
  v5 = v4;

  v6 = sub_1EFF4();
  v7 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v6];

  v8 = sub_1F004();
  v10 = v9;

  v11 = sub_1EFF4();
  v12 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v11];

  v13 = sub_1F004();
  v15 = v14;

  v16 = [objc_opt_self() systemBlueColor];
  LODWORD(xmmword_303F0) = 65794;
  *(&xmmword_303F0 + 1) = v3;
  unk_30400 = v5;
  qword_30408 = v8;
  *&xmmword_30410 = v10;
  *(&xmmword_30410 + 1) = 0x6C69662E65627563;
  unk_30420 = 0xE90000000000006CLL;
  qword_30428 = 1700951395;
  *&xmmword_30430 = 0xE400000000000000;
  *(&xmmword_30430 + 1) = v16;
  strcpy(byte_30440, "sun.max.fill");
  BYTE5(qword_30448) = 0;
  HIWORD(qword_30448) = -5120;
  strcpy(&xmmword_30450, "sun.max.fill");
  BYTE13(xmmword_30450) = 0;
  HIWORD(xmmword_30450) = -5120;
  result = 32.0;
  xmmword_30460 = xmmword_20EB0;
  *&xmmword_30470 = v13;
  *(&xmmword_30470 + 1) = v15;
  return result;
}

double sub_1110C()
{
  v0 = objc_opt_self();
  v1 = sub_1EFF4();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = sub_1F004();
  v5 = v4;

  v6 = [objc_opt_self() systemBlueColor];
  LODWORD(xmmword_30480) = 65539;
  *(&xmmword_30480 + 1) = v3;
  unk_30490 = v5;
  qword_30498 = 0;
  *&xmmword_304A0 = 0;
  *(&xmmword_304A0 + 1) = 0xD000000000000013;
  unk_304B0 = 0x8000000000024CF0;
  qword_304B8 = 0xD000000000000018;
  *&xmmword_304C0 = 0x8000000000024D10;
  *(&xmmword_304C0 + 1) = v6;
  unk_304D0 = 0xD000000000000013;
  qword_304D8 = 0x8000000000024CF0;
  *&xmmword_304E0 = 0xD000000000000018;
  *(&xmmword_304E0 + 1) = 0x8000000000024D10;
  result = 23.0;
  xmmword_304F0 = xmmword_20E90;
  xmmword_30500 = 0uLL;
  return result;
}

uint64_t sub_11250@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_13958(a2, v4);
}

id sub_112A8(int a1)
{
  v2 = v1;
  v77 = a1;
  v3 = sub_7120(&qword_2F678, &qword_20F40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v76 = &v67 - v5;
  v6 = sub_7120(&qword_2F680, &qword_20F48);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v74 = &v67 - v8;
  v9 = sub_7120(&qword_2F688, &qword_20F50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v71 = &v67 - v11;
  v68 = sub_1F104();
  v12 = *(v68 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v68);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1F134();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1F214();
  v69 = *(v70 - 8);
  v21 = *(v69 + 64);
  v22 = __chkstk_darwin(v70);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v67 - v25;
  v75 = sub_1EE94();
  v73 = *(v75 - 8);
  v27 = *(v73 + 64);
  __chkstk_darwin(v75);
  v72 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EE84();
  v78[0] = [objc_opt_self() systemFontOfSize:17.0];
  sub_13990();
  sub_1EEA4();
  sub_1F204();
  v29 = *(v1 + 1);
  v30 = *(v2 + 2);

  sub_1F1F4();
  v31 = *(v2 + 7);
  v32 = *(v2 + 8);
  v33 = sub_1EFF4();
  v34 = [objc_opt_self() _systemImageNamed:v33];

  sub_1F1D4();
  (*(v17 + 104))(v20, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v16);
  sub_1F154();
  sub_1F144();
  (*(v12 + 104))(v15, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v68);
  sub_1F114();
  sub_1F164();
  sub_1F124();
  v35 = [objc_opt_self() configurationWithPointSize:13.0];
  sub_1F0F4();
  sub_14548(0, &qword_2F698, UIButton_ptr);
  v36 = v69;
  v37 = *(v69 + 16);
  v38 = v70;
  v37(v24, v26, v70);
  v39 = sub_1F224();
  v40 = swift_allocObject();
  v41 = *(v2 + 7);
  v40[7] = *(v2 + 6);
  v40[8] = v41;
  v40[9] = *(v2 + 8);
  v42 = *(v2 + 3);
  v40[3] = *(v2 + 2);
  v40[4] = v42;
  v43 = *(v2 + 5);
  v40[5] = *(v2 + 4);
  v40[6] = v43;
  v44 = *(v2 + 1);
  v40[1] = *v2;
  v40[2] = v44;
  aBlock[4] = sub_13A54;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11E64;
  aBlock[3] = &unk_28C40;
  v45 = _Block_copy(aBlock);
  sub_13958(v2, v78);

  [v39 setConfigurationUpdateHandler:v45];
  _Block_release(v45);
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = swift_allocObject();
  v48 = *(v2 + 4);
  *(v47 + 104) = *(v2 + 5);
  v49 = *(v2 + 7);
  *(v47 + 120) = *(v2 + 6);
  *(v47 + 136) = v49;
  *(v47 + 152) = *(v2 + 8);
  v50 = *v2;
  *(v47 + 40) = *(v2 + 1);
  v51 = *(v2 + 3);
  *(v47 + 56) = *(v2 + 2);
  *(v47 + 72) = v51;
  *(v47 + 88) = v48;
  *(v47 + 16) = v46;
  *(v47 + 24) = v50;
  sub_13958(v2, v78);
  v52 = v39;
  v53 = v71;
  sub_1EF24();
  v54 = sub_1EF14();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  sub_1F1B4();
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v56 = swift_allocObject();
  v57 = *(v2 + 4);
  *(v56 + 104) = *(v2 + 5);
  v58 = *(v2 + 7);
  *(v56 + 120) = *(v2 + 6);
  *(v56 + 136) = v58;
  *(v56 + 152) = *(v2 + 8);
  v59 = *v2;
  *(v56 + 40) = *(v2 + 1);
  v60 = *(v2 + 3);
  *(v56 + 56) = *(v2 + 2);
  *(v56 + 72) = v60;
  *(v56 + 88) = v57;
  *(v56 + 16) = v55;
  *(v56 + 24) = v59;
  sub_13958(v2, v78);
  v61 = v74;
  sub_1EF04();
  v62 = sub_1EEF4();
  (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
  sub_1F1A4();
  v63 = v76;
  v37(v76, v26, v38);
  (*(v36 + 56))(v63, 0, 1, v38);
  sub_1F244();
  v64 = v52;
  [v64 setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = v64;
  [v65 setContentHorizontalAlignment:4];
  [v65 setSelected:v77 & 1];

  [v65 setTag:*v2];
  (*(v36 + 8))(v26, v38);
  (*(v73 + 8))(v72, v75);
  return v65;
}

uint64_t sub_11B90(void *a1, uint64_t a2)
{
  v4 = sub_7120(&qword_2F678, &qword_20F40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = sub_1F214();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F234();
  v16 = *(v12 + 48);
  if (v16(v10, 1, v11) == 1)
  {
    sub_1F204();
    if (v16(v10, 1, v11) != 1)
    {
      sub_14038(v10, &qword_2F678, &qword_20F40);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  if (([a1 isHighlighted] & 1) != 0 || objc_msgSend(a1, "isSelected"))
  {
    v17 = *(a2 + 72);
    sub_1F194();
    v18 = objc_opt_self();
    v19 = &selRef_systemWhiteColor;
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 systemWhiteColor];
    sub_1F194();
    v18 = v20;
    v19 = &selRef_clearColor;
  }

  v22 = [v18 *v19];
  sub_1F184();
  (*(v12 + 16))(v8, v15, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  sub_1F244();
  return (*(v12 + 8))(v15, v11);
}

void sub_11E64(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_11ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1EE94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = *(v7 + 16);
  if (!Strong)
  {
    return v12(a3, a1, v6);
  }

  v13 = Strong;
  v12(v10, a1, v6);
  v16 = [objc_opt_self() systemFontOfSize:17.0];
  sub_13990();
  sub_1EEA4();
  if ([v13 isSelected])
  {
    v14 = *(a2 + 72);
  }

  else
  {
    v14 = [objc_opt_self() systemWhiteColor];
  }

  v16 = v14;
  sub_13FE4();
  sub_1EEA4();

  return (*(v7 + 32))(a3, v10, v6);
}

void *sub_120B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

char *sub_120D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_7120(&unk_2F860, &unk_211E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

unint64_t sub_121D4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1F3C4();

  return sub_1225C(a1, v4);
}

unint64_t sub_12218(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1F0D4(*(v2 + 40));

  return sub_122C8(a1, v4);
}

unint64_t sub_1225C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_122C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_14548(0, &qword_2F838, NSNumber_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1F0E4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1239C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_12218(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_12C04(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_131AC();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1F324();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1F314();
  v8 = sub_124E8(v4, v7);

  v9 = sub_12218(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_12C04(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_124E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_7120(&qword_2F848, &qword_211D0);
    v2 = sub_1F384();
    v19 = v2;
    sub_1F304();
    v3 = sub_1F334();
    if (v3)
    {
      v4 = v3;
      sub_14548(0, &qword_2F838, NSNumber_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_14548(0, &qword_2F668, MTVisualStylingProvider_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1299C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1F0D4(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1F334();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_12734(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_7120(&qword_2F858, &qword_211D8);
  result = sub_1F374();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      result = sub_1F3C4();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1299C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_7120(&qword_2F848, &qword_211D0);
  result = sub_1F374();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_1F0D4(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void sub_12C04(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1F284() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1F0D4(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_12D90(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_121D4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return _objc_release_x1();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_13050();
    result = v17;
    goto LABEL_8;
  }

  sub_12734(v14, a3 & 1);
  v18 = *v4;
  result = sub_121D4(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1F3B4();
  __break(1u);
  return _objc_release_x1();
}

uint64_t sub_12ED8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_12218(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1299C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_12218(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_14548(0, &qword_2F838, NSNumber_ptr);
        sub_1F3B4();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_131AC();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return _objc_retain_x1();
}

id sub_13050()
{
  v1 = v0;
  sub_7120(&qword_2F858, &qword_211D8);
  v2 = *v0;
  v3 = sub_1F364();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

id sub_131AC()
{
  v1 = v0;
  sub_7120(&qword_2F848, &qword_211D0);
  v2 = *v0;
  v3 = sub_1F364();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

unint64_t sub_13320(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_13354(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (!sub_1A464(a1[1], a2[1]) || ((a1[2] ^ a2[2]) & 1) != 0 || ((a1[3] ^ a2[3]) & 1) != 0 || (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (sub_1F3A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 4);
  v6 = *(a2 + 4);
  if (v5)
  {
    if (!v6 || (*(a1 + 3) != *(a2 + 3) || v5 != v6) && (sub_1F3A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (*(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6) || (sub_1F3A4()) && (*(a1 + 7) == *(a2 + 7) && *(a1 + 8) == *(a2 + 8) || (sub_1F3A4()))
  {
    sub_14548(0, &qword_2F870, NSObject_ptr);
    v7 = *(a1 + 9);
    v8 = *(a2 + 9);
    if (sub_1F0E4() & 1) != 0 && (*(a1 + 10) == *(a2 + 10) && *(a1 + 11) == *(a2 + 11) || (sub_1F3A4()) && (*(a1 + 12) == *(a2 + 12) && *(a1 + 13) == *(a2 + 13) || (sub_1F3A4()) && *(a1 + 14) == *(a2 + 14) && *(a1 + 15) == *(a2 + 15))
    {
      v9 = *(a1 + 17);
      v10 = *(a2 + 17);
      if (v9)
      {
        if (v10 && (*(a1 + 16) == *(a2 + 16) && v9 == v10 || (sub_1F3A4() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v10)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_13550(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_7120(&qword_2F858, &qword_211D8);
  v3 = sub_1F394();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_121D4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_121D4(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1364C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7120(&qword_2F848, &qword_211D0);
    v3 = sub_1F394();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_12218(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_13744(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1377C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_137BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1F354())
  {
    for (j = 4; ; ++j)
    {
      v5 = j - 4;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1F2A4();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v6 = *(v1 + 8 * j);
      }

      v7 = v6;
      v8 = __OFADD__(v5, 1);
      v9 = j - 3;
      if (v8)
      {
        break;
      }

      if ((*&stru_108.sectname[swift_isaMask & *v2])())
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      [v7 setAlpha:v10];

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

uint64_t sub_138EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_13990()
{
  result = qword_2F690;
  if (!qword_2F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F690);
  }

  return result;
}

uint64_t sub_139E4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  v7 = *(v0 + 152);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_13A5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_13AA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 112);

  v7 = *(v0 + 128);

  v8 = *(v0 + 160);

  return _swift_deallocObject(v0, 168, 7);
}

id sub_13B1C()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong isSelected])
    {

      v4 = *(v0 + 96);

      return v4;
    }

    else
    {
      v7 = [objc_opt_self() systemWhiteColor];

      return v7;
    }
  }

  else
  {
    v6 = [objc_opt_self() labelColor];

    return v6;
  }
}

unint64_t sub_13C0C()
{
  result = qword_2F6A0;
  if (!qword_2F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F6A0);
  }

  return result;
}

unint64_t sub_13C64()
{
  result = qword_2F6A8;
  if (!qword_2F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F6A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_13E28(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_13E54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_13E9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_13F10(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_13F1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_13F3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_13F7C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_13F88(uint64_t a1, int a2)
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

uint64_t sub_13FA8(uint64_t result, int a2, int a3)
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

unint64_t sub_13FE4()
{
  result = qword_2F840;
  if (!qword_2F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F840);
  }

  return result;
}

uint64_t sub_14038(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_7120(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_14098()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*(&stru_158.reloff + (swift_isaMask & *Strong)))();
    v3 = v2;
    if (v2 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1F354())
    {
      v40 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule26VideoEffectsViewController_containerView;
      if (!i)
      {
        break;
      }

      v5 = 0;
      v38 = v3 & 0xFFFFFFFFFFFFFF8;
      v39 = v3 & 0xC000000000000001;
      v6 = 4;
      v37 = v3;
      while (1)
      {
        v12 = v6 - 4;
        if (v39)
        {
          v13 = sub_1F2A4();
        }

        else
        {
          if (v12 >= *(v38 + 16))
          {
            goto LABEL_32;
          }

          v13 = *(v3 + 8 * v6);
        }

        v14 = v13;
        v15 = v6 - 3;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v16 = *&stru_108.sectname[swift_isaMask & *v13];
        v17 = v16();
        v18 = swift_isaMask & *v1;
        if (v17)
        {
          (*&stru_1A8.segname[(swift_isaMask & *v1) - 8])();
          v20 = v19;
          v22 = v21;
        }

        else
        {
          v3 = v1;
          v23 = (*(&stru_158.flags + (swift_isaMask & *v1)))();
          if (v12 >= *(v23 + 16))
          {
            goto LABEL_33;
          }

          v20 = *(v23 + v5 + 40);
          v22 = *(v23 + v5 + 56);
        }

        v24 = v14;
        v25 = [v24 tag];
        v26 = (*&stru_1A8.segname[(swift_isaMask & *v1) + 16])();
        if (*(v26 + 16) && (v27 = sub_121D4(v25), (v28 & 1) != 0))
        {
          v36 = *(*(v26 + 56) + 8 * v27);

          v29 = [v24 tag];

          v30 = (*(&stru_1A8.reloff + (swift_isaMask & *v1)))();
          if (*(v30 + 16) && (v31 = sub_121D4(v29), (v32 & 1) != 0))
          {
            v33 = *(*(v30 + 56) + 8 * v31);

            [v36 constant];
            if (v34 != v20)
            {
              [v36 setConstant:v20];
            }

            [v33 constant];
            if (v35 != v22)
            {
              [v33 setConstant:v22];
            }
          }

          else
          {
          }
        }

        else
        {
        }

        v8 = (v16)(v7);
        v9 = &selRef_bringSubviewToFront_;
        if ((v8 & 1) == 0)
        {
          v9 = &selRef_sendSubviewToBack_;
        }

        v10 = *v9;
        v11 = *(v1 + v40);
        [v11 v10];

        ++v6;
        v5 += 32;
        v3 = v37;
        if (v15 == i)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

LABEL_29:

    [*(v1 + v40) layoutIfNeeded];
  }
}

uint64_t *sub_144E4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_14548(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_145A4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_14638()
{
  v0 = sub_1EEE4();
  sub_144E4(v0, qword_30058);
  sub_13744(v0, qword_30058);
  return sub_1EED4();
}

uint64_t sub_146E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_1472C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*sub_14798(uint64_t *a1))()
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
  *(v3 + 48) = sub_1EF74();
  return sub_1A3A8;
}

uint64_t sub_14858(uint64_t a1)
{
  v2 = sub_7120(&qword_2F890, &qword_21268);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_7120(&qword_2F888, &qword_21260);
  sub_1EF64();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_14990(uint64_t *a1))()
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
  v5 = sub_7120(&qword_2F890, &qword_21268);
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

  v9 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__videoView;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_7120(&qword_2F888, &qword_21260);
  sub_1EF54();
  swift_endAccess();
  return sub_14B00;
}

uint64_t sub_14B74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1EF84();

  return v1;
}

uint64_t sub_14BE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_14C2C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_14C98()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1EF94();
}

uint64_t (*sub_14D04(uint64_t *a1))()
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
  *(v3 + 48) = sub_1EF74();
  return sub_1A3A8;
}

uint64_t sub_14DC4(uint64_t a1)
{
  v2 = sub_7120(&qword_2F8A8, &qword_212C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_7120(&qword_2F8A0, &qword_212C0);
  sub_1EF64();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_14EFC(uint64_t *a1))()
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
  v5 = sub_7120(&qword_2F8A8, &qword_212C8);
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

  v9 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__frameReceiver;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_7120(&qword_2F8A0, &qword_212C0);
  sub_1EF54();
  swift_endAccess();
  return sub_1A3AC;
}

id sub_1506C()
{
  v0 = objc_allocWithZone(type metadata accessor for CaptureFrameReceiverObserver());

  return [v0 init];
}

uint64_t (*sub_15198(uint64_t *a1))()
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
  *(v3 + 48) = sub_1EF74();
  return sub_1A3A8;
}

uint64_t sub_15264(uint64_t a1)
{
  v2 = sub_7120(&qword_2F8B8, &qword_21320);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_7120(&qword_2F8B0, &qword_21318);
  sub_1EF64();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1539C(uint64_t *a1))()
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
  v5 = sub_7120(&qword_2F8B8, &qword_21320);
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

  v9 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__width;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_7120(&qword_2F8B0, &qword_21318);
  sub_1EF54();
  swift_endAccess();
  return sub_1A3AC;
}

uint64_t (*sub_155D8(uint64_t *a1))()
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
  *(v3 + 48) = sub_1EF74();
  return sub_1A3A8;
}

uint64_t sub_156A8(uint64_t a1)
{
  v2 = sub_7120(&qword_2F8B8, &qword_21320);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_7120(&qword_2F8B0, &qword_21318);
  sub_1EF64();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_157E0(uint64_t *a1))()
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
  v5 = sub_7120(&qword_2F8B8, &qword_21320);
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

  v9 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__height;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_7120(&qword_2F8B0, &qword_21318);
  sub_1EF54();
  swift_endAccess();
  return sub_1A3AC;
}

double sub_15994()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1EF84();

  return v1;
}

uint64_t sub_15AB8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1EF94();
}

uint64_t (*sub_15B28(uint64_t *a1))()
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
  *(v3 + 48) = sub_1EF74();
  return sub_15BCC;
}

uint64_t sub_15BF8(uint64_t a1)
{
  v2 = sub_7120(&qword_2F8B8, &qword_21320);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_7120(&qword_2F8B0, &qword_21318);
  sub_1EF64();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_15D30(uint64_t *a1))()
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
  v5 = sub_7120(&qword_2F8B8, &qword_21320);
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

  v9 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__aspectRatio;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_7120(&qword_2F8B0, &qword_21318);
  sub_1EF54();
  swift_endAccess();
  return sub_1A3AC;
}

uint64_t sub_15EA0(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  type metadata accessor for CGAffineTransform(0);
  return sub_1EF44();
}

double sub_15F18@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1EF84();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double sub_15F9C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 392))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_16008(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return (*(**a2 + 400))(v4);
}

uint64_t sub_16070(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  return sub_1EF94();
}

uint64_t (*sub_160EC(uint64_t *a1))()
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
  *(v3 + 48) = sub_1EF74();
  return sub_1A3A8;
}

void sub_16190(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

uint64_t sub_161C0(uint64_t a1)
{
  v2 = sub_7120(&qword_2F8C8, &qword_21408);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_7120(&qword_2F8C0, &qword_21400);
  sub_1EF64();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_162F8(uint64_t *a1))()
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
  v5 = sub_7120(&qword_2F8C8, &qword_21408);
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

  v9 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__currentAffineTransform;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_7120(&qword_2F8C0, &qword_21400);
  sub_1EF54();
  swift_endAccess();
  return sub_1A3AC;
}

uint64_t sub_16498()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1EF84();

  return v1;
}

uint64_t sub_1650C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_165B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1EF94();
}

uint64_t (*sub_16624(uint64_t *a1))()
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
  *(v3 + 48) = sub_1EF74();
  return sub_1A3A8;
}

void sub_166C8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1674C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_7120(a2, a3);
  sub_1EF54();
  return swift_endAccess();
}

uint64_t sub_167C4(uint64_t a1)
{
  v2 = sub_7120(&qword_2F8D8, &qword_21460);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_7120(&qword_2F8D0, &qword_21458);
  sub_1EF64();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_168FC(uint64_t *a1))()
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
  v5 = sub_7120(&qword_2F8D8, &qword_21460);
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

  v9 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__isLandscape;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_7120(&qword_2F8D0, &qword_21458);
  sub_1EF54();
  swift_endAccess();
  return sub_1A3AC;
}

void sub_16A6C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_1EF64();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_1EF64();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

id sub_16BD4()
{
  v0 = objc_opt_self();

  return [v0 defaultSize];
}

double sub_16C0C()
{
  v1 = v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview_maxDimensions;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_16C54(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview_maxDimensions);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_16D0C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_16D44();
  return v3;
}

uint64_t sub_16D44()
{
  v1 = v0;
  v2 = sub_7120(&qword_2F8D0, &qword_21458);
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  __chkstk_darwin(v2);
  v51 = &v46 - v4;
  v5 = sub_7120(&qword_2F8C0, &qword_21400);
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  __chkstk_darwin(v5);
  v48 = &v46 - v7;
  v47 = sub_7120(&qword_2F8B0, &qword_21318);
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v47);
  v11 = &v46 - v10;
  v12 = sub_7120(&qword_2F8A0, &qword_212C0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = sub_7120(&qword_2F888, &qword_21260);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v46 - v20;
  v22 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__videoView;
  v54[0] = 0;
  sub_7120(&qword_2F880, &qword_21210);
  sub_1EF44();
  (*(v18 + 32))(v1 + v22, v21, v17);
  v23 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__frameReceiver;
  v54[0] = 0;
  sub_7120(&qword_2F898, &qword_21270);
  sub_1EF44();
  (*(v13 + 32))(v1 + v23, v16, v12);
  v24 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview_captureFrameReceiverObserver;
  *(v1 + v24) = [objc_allocWithZone(type metadata accessor for CaptureFrameReceiverObserver()) init];
  v25 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__width;
  v54[0] = 0x409E000000000000;
  sub_1EF44();
  v26 = *(v8 + 32);
  v27 = v47;
  v26(v1 + v25, v11, v47);
  v28 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__height;
  v54[0] = 0x4090E00000000000;
  sub_1EF44();
  v26(v1 + v28, v11, v27);
  v29 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__aspectRatio;
  v54[0] = 0x3FFC71C71C71C71CLL;
  sub_1EF44();
  v26(v1 + v29, v11, v27);
  v30 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__currentAffineTransform;
  v54[0] = 0x3FF0000000000000;
  v54[1] = 0;
  v54[2] = 0;
  v54[3] = 0x3FF0000000000000;
  type metadata accessor for CGAffineTransform(0);
  v54[4] = 0;
  v54[5] = 0;
  v31 = v48;
  sub_1EF44();
  (*(v49 + 32))(v1 + v30, v31, v50);
  v32 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__isLandscape;
  LOBYTE(v54[0]) = 1;
  v33 = v51;
  sub_1EF44();
  (*(v52 + 32))(v1 + v32, v33, v53);
  v34 = (v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview_maxDimensions);
  [objc_opt_self() defaultSize];
  *v34 = v35;
  v34[1] = v36;
  if (qword_30050 != -1)
  {
    swift_once();
  }

  v37 = sub_1EEE4();
  sub_13744(v37, qword_30058);
  v38 = sub_1EEC4();
  v39 = sub_1F094();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v40 = 136315394;
    *(v40 + 4) = sub_6B78(0xD000000000000074, 0x8000000000024E80, v54);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_6B78(0x292874696E69, 0xE600000000000000, v54);
    _os_log_impl(&dword_0, v38, v39, "%s%s", v40, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v54[0] = 0;

  sub_1EF94();
  swift_getKeyPath();
  swift_getKeyPath();
  v54[0] = 0;

  sub_1EF94();
  v41 = *(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview_captureFrameReceiverObserver);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = (v41 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  v44 = v43[1];
  *v43 = sub_174AC;
  v43[1] = v42;

  return v1;
}

uint64_t sub_17474()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_174AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*(*Strong + 152))();
    if (v2)
    {

      (*(*v1 + 520))();
    }

    else
    {
      if (qword_30050 != -1)
      {
        swift_once();
      }

      v8 = sub_1EEE4();
      sub_13744(v8, qword_30058);
      v9 = sub_1EEC4();
      v10 = sub_1F094();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_6B78(0x292874696E69, 0xE600000000000000, &v13);
        _os_log_impl(&dword_0, v9, v10, "%s captureFrameReceiverDidChange no videoView, skipping start", v11, 0xCu);
        sub_7168(v12);
      }
    }
  }

  else
  {
    if (qword_30050 != -1)
    {
      swift_once();
    }

    v3 = sub_1EEE4();
    sub_13744(v3, qword_30058);
    v4 = sub_1EEC4();
    v5 = sub_1F094();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_6B78(0x292874696E69, 0xE600000000000000, &v13);
      _os_log_impl(&dword_0, v4, v5, "%s captureFrameReceiverDidChange nil", v6, 0xCu);
      sub_7168(v7);
    }
  }
}

void sub_17784()
{
  v1 = v0;
  if (qword_30050 != -1)
  {
LABEL_45:
    swift_once();
  }

  v2 = sub_1EEE4();
  sub_13744(v2, qword_30058);
  v3 = sub_1EEC4();
  v4 = sub_1F094();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_6B78(0xD000000000000014, 0x8000000000024F30, aBlock);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    sub_7168(v6);
  }

  v7 = [objc_opt_self() availableFrameSenderEndpointsByPID];
  sub_14548(0, &qword_2F838, NSNumber_ptr);
  sub_7120(&qword_2F8E8, qword_21468);
  sub_19D84();
  v8 = sub_1EFE4();

  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v41 = 0;
  v13 = 0;
  while (1)
  {
    v14 = v13;
    if (!v11)
    {
      break;
    }

LABEL_11:
    if (!*(v8 + 16))
    {

      goto LABEL_40;
    }

    v15 = *(*(v8 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
    v16 = sub_12218(v15);
    if ((v17 & 1) == 0)
    {

LABEL_40:
      v31 = v41;
LABEL_41:

      return;
    }

    v18 = *(*(v8 + 56) + 8 * v16);
    if (v18 >> 62)
    {
      if (v18 < 0)
      {
        v21 = *(*(v8 + 56) + 8 * v16);
      }

      v19 = sub_1F354();
    }

    else
    {
      v19 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    }

    v11 &= v11 - 1;
    if (v19)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {

        v20 = sub_1F2A4();
      }

      else
      {
        if (!*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return;
        }

        v20 = *(v18 + 32);
      }

      v41 = v20;
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v13);
    ++v14;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  if (v41)
  {
    v40 = v41;
    v22 = sub_1EEC4();
    v23 = sub_1F094();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v40;
      *v25 = v41;
      v26 = v40;
      _os_log_impl(&dword_0, v22, v23, "Creating frame receiver for endpoint=%@", v24, 0xCu);
      sub_14038(v25, &qword_2F660, &qword_20F30);
    }

    v27 = (*(*v1 + 200))();
    if (!v27)
    {
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = objc_allocWithZone(CMCaptureFrameReceiver);
      aBlock[4] = sub_19DEC;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19D0C;
      aBlock[3] = &unk_29060;
      v38 = _Block_copy(aBlock);

      v39 = [v37 initWithFrameSenderServerEndpoint:v40 frameReceiverHandler:v38];
      _Block_release(v38);

      (*(*v1 + 208))(v39);

      return;
    }

    v28 = sub_1EEC4();
    v29 = sub_1F094();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Frame receiver already exists - returning", v30, 2u);
    }

    v31 = v40;
    goto LABEL_41;
  }

  v32 = sub_1EEC4();
  v33 = sub_1F094();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "first endpoint not found", v34, 2u);
  }

  v35 = *(*v1 + 208);

  v35(0);
}

uint64_t sub_17E50(void *a1, char a2)
{
  v4 = sub_1EFB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1EFD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1 && (a2 & 1) != 0)
    {
      v15 = result;
      sub_14548(0, &qword_2FBE0, OS_dispatch_queue_ptr);
      v16 = a1;
      v24 = v5;
      v17 = v16;
      v23 = sub_1F0A4();
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v17;
      aBlock[4] = sub_1A218;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_BEC8;
      aBlock[3] = &unk_29140;
      v19 = _Block_copy(aBlock);
      v20 = v17;

      sub_1EFC4();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1A268();
      sub_7120(&qword_2FBF0, &unk_21590);
      sub_1A2C0();
      sub_1F274();
      v21 = v23;
      sub_1F0B4();
      _Block_release(v19);

      (*(v24 + 8))(v8, v4);
      return (*(v10 + 8))(v13, v9);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1814C()
{
  v1 = v0;
  if (qword_30050 != -1)
  {
    swift_once();
  }

  v2 = sub_1EEE4();
  sub_13744(v2, qword_30058);
  v3 = sub_1EEC4();
  v4 = sub_1F094();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_6B78(0xD000000000000013, 0x8000000000024F50, &v14);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    sub_7168(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview_captureFrameReceiverObserver);
  v8 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if (*(v7 + v8) == 1)
  {
    sub_14548(0, &qword_2F900, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = *(v7 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_keyPath);
    v11 = *(v7 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_keyPath + 8);
    v12 = sub_1EFF4();
    [ObjCClassFromMetadata removeObserver:v7 forKeyPath:v12];

    *(v7 + v8) = 0;
  }

  return (*(*v1 + 208))(0);
}

void sub_18348()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    sub_14548(0, &qword_2F900, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_keyPath);
    v4 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_keyPath + 8);
    v5 = sub_1EFF4();
    [ObjCClassFromMetadata removeObserver:v0 forKeyPath:v5];

    *(v0 + v1) = 0;
  }
}

void sub_183F4()
{
  v1 = v0;
  if (qword_30050 != -1)
  {
    swift_once();
  }

  v2 = sub_1EEE4();
  sub_13744(v2, qword_30058);
  v3 = sub_1EEC4();
  v4 = sub_1F094();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_6B78(0xD000000000000015, 0x8000000000024F70, &v14);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    sub_7168(v6);
  }

  v7 = (*(*v1 + 152))();
  if (v7)
  {
  }

  else
  {
    (*(*v1 + 160))([objc_allocWithZone(RPCCUIVideoView) init]);
  }

  v8 = *(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview_captureFrameReceiverObserver);
  v9 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if ((*(v8 + v9) & 1) == 0)
  {
    sub_14548(0, &qword_2F900, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = *(v8 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_keyPath);
    v12 = *(v8 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_keyPath + 8);
    v13 = sub_1EFF4();
    [ObjCClassFromMetadata addObserver:v8 forKeyPath:v13 options:0 context:0];

    *(v8 + v9) = 1;
  }
}

void sub_18640()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    sub_14548(0, &qword_2F900, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_keyPath);
    v4 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_keyPath + 8);
    v5 = sub_1EFF4();
    [ObjCClassFromMetadata addObserver:v0 forKeyPath:v5 options:0 context:0];

    *(v0 + v1) = 1;
  }
}

uint64_t sub_186FC()
{
  v1 = v0;
  if (qword_30050 != -1)
  {
    swift_once();
  }

  v2 = sub_1EEE4();
  sub_13744(v2, qword_30058);
  v3 = sub_1EEC4();
  v4 = sub_1F094();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_6B78(0xD000000000000012, 0x8000000000024F90, &v10);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    sub_7168(v6);
  }

  v7 = (*(*v1 + 152))();
  [v7 flushVideoView];

  v8 = *(*v1 + 160);

  return v8(0);
}

void sub_188B0(opaqueCMSampleBuffer *a1)
{
  v2 = v1;
  v4 = (*(*v1 + 152))();
  if (!v4)
  {
    return;
  }

  v67 = v4;
  v5 = [v67 layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 sampleBufferRenderer];
    v9 = [v8 status];

    if (v9 == &dword_0 + 2)
    {
      v10 = [v7 sampleBufferRenderer];
      [v10 flush];
    }
  }

  v11 = CMSampleBufferGetFormatDescription(a1);
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  Dimensions = CMVideoFormatDescriptionGetDimensions(v11);
  v14 = Dimensions;
  v15 = (Dimensions >> 32);
  if (([v67 enqueueSampleBuffer:a1] & 1) == 0 && (*(*v2 + 248))() == v14 && (*(*v2 + 296))() == v15)
  {

LABEL_10:

    return;
  }

  if (qword_30050 != -1)
  {
    swift_once();
  }

  v16 = sub_1EEE4();
  sub_13744(v16, qword_30058);
  v17 = sub_1EEC4();
  v18 = sub_1F094();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "updating the transform, width and height", v19, 2u);
  }

  v20 = (*(*v2 + 448))([v67 isLandscape]);
  v21 = (*(*v2 + 256))(v20, v14);
  (*(*v2 + 304))(v21, v15);
  v22 = [v67 layer];

  [v22 affineTransform];
  v65 = *&transform.c;
  v66 = *&transform.a;
  v70 = transform;
  v64 = *&transform.tx;

  *&transform.a = v66;
  *&transform.c = v65;
  *&transform.tx = v64;
  CGAffineTransformDecompose(&v68, &transform);
  rotation = v68.rotation;
  v24 = sub_1EEC4();
  v25 = sub_1F094();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = rotation;
    _os_log_impl(&dword_0, v24, v25, "transform rotation component %f", v26, 0xCu);
  }

  v27 = fabs(rotation);
  if (v27 >= 0.0001 && vabdd_f64(3.14159265, v27) >= 0.0001)
  {
    v37 = sub_1EEC4();
    v38 = sub_1F094();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "NOT isZeroOr180", v39, 2u);
    }

    v40 = *(*v2 + 248);
    v41 = v40();
    v35.n128_u64[0] = 1.0;
    if (v41 <= 0.0)
    {
      goto LABEL_30;
    }

    v36 = (*(*v2 + 296))(1.0);
    v35.n128_f64[0] = v40();
  }

  else
  {
    v28 = sub_1EEC4();
    v29 = sub_1F094();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "YES isZeroOr180", v30, 2u);
    }

    v31 = (*v2 + 296);
    v32 = *v31;
    v34 = (*v31)();
    v35.n128_u64[0] = 1.0;
    if (v34 <= 0.0)
    {
      goto LABEL_30;
    }

    v36 = (*(*v2 + 248))(1.0);
    v33 = v32();
  }

  v35.n128_f64[0] = v36 / v35.n128_f64[0];
LABEL_30:
  v42 = (*(*v2 + 352))(v33, v35);
  v43 = *(*v2 + 440);
  v44 = (v43)(v42);
  v45 = *(*v2 + 488);
  v46 = v45();
  if (v44)
  {
    v49 = v47;
    v50 = (v45)(v46);
    v51 = v50 / (*(*v2 + 344))();
  }

  else
  {
    v49 = v48 * (*(*v2 + 344))(v46);
    v45();
  }

  [v67 updateIntrinsicContentSize:{v49, v51, v64, v65, v66}];
  (*(*v2 + 400))(&v70);
  v52 = v67;

  v53 = sub_1EEC4();
  v54 = sub_1F094();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *&v68.scale.width = swift_slowAlloc();
    *v55 = 134219266;
    *(v55 + 4) = (*(*v2 + 344))();
    *(v55 + 12) = 2048;
    *(v55 + 14) = (*(*v2 + 248))();
    *(v55 + 22) = 2048;
    *(v55 + 24) = (*(*v2 + 296))();
    *(v55 + 32) = 1024;
    *(v55 + 34) = v43() & 1;

    *(v55 + 38) = 2080;
    transform = v70;
    type metadata accessor for CGAffineTransform(0);
    v56 = sub_1F014();
    v58 = sub_6B78(v56, v57, &v68);

    *(v55 + 40) = v58;
    *(v55 + 48) = 2080;
    [v52 intrinsicContentSize];
    transform.a = v59;
    transform.b = v60;
    type metadata accessor for CGSize(0);
    v61 = sub_1F014();
    v63 = sub_6B78(v61, v62, &v68);

    *(v55 + 50) = v63;
    _os_log_impl(&dword_0, v53, v54, "set aspect ratio %f (w:%f, h:%f), isLandscape:%{BOOL}d, transform %s, videoView intrinsicContentSize %s", v55, 0x3Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_1933C()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__videoView;
  v2 = sub_7120(&qword_2F888, &qword_21260);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__frameReceiver;
  v4 = sub_7120(&qword_2F8A0, &qword_212C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__width;
  v6 = sub_7120(&qword_2F8B0, &qword_21318);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__height, v6);
  v7(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__aspectRatio, v6);
  v8 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__currentAffineTransform;
  v9 = sub_7120(&qword_2F8C0, &qword_21400);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__isLandscape;
  v11 = sub_7120(&qword_2F8D0, &qword_21458);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_19534()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__videoView;
  v2 = sub_7120(&qword_2F888, &qword_21260);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__frameReceiver;
  v4 = sub_7120(&qword_2F8A0, &qword_212C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__width;
  v6 = sub_7120(&qword_2F8B0, &qword_21318);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__height, v6);
  v7(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__aspectRatio, v6);
  v8 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__currentAffineTransform;
  v9 = sub_7120(&qword_2F8C0, &qword_21400);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule19VideoEffectsPreview__isLandscape;
  v11 = sub_7120(&qword_2F8D0, &qword_21458);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v12, v13);
}

uint64_t sub_19768@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VideoEffectsPreview();
  result = sub_1EF34();
  *a1 = result;
  return result;
}

uint64_t sub_197C4()
{
  v1 = (v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1981C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_198F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_keyPath);
  v2 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_keyPath + 8);

  return v1;
}

uint64_t sub_19934()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19978(char a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_observing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *sub_19A28()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_captureFrameReceiverDidChange];
  *v2 = nullsub_1;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_keyPath];
  *v3 = 0xD000000000000022;
  v3[1] = 0x8000000000024FB0;
  v0[OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_observing] = 0;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v12, "init");
  sub_14548(0, &qword_2F900, CMCaptureFrameReceiver_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = *&v4[OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_keyPath];
  v7 = *&v4[OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_keyPath + 8];
  v8 = v4;

  v9 = sub_1EFF4();

  [ObjCClassFromMetadata addObserver:v8 forKeyPath:v9 options:0 context:0];

  v10 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  v8[v10] = 1;

  return v8;
}

uint64_t sub_19B94()
{
  v1 = v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule28CaptureFrameReceiverObserver_captureFrameReceiverDidChange;
  swift_beginAccess();
  v3 = *v1;
  v2 = *(v1 + 8);

  v3(v4);
}

void sub_19D0C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

unint64_t sub_19D84()
{
  result = qword_2F8F0;
  if (!qword_2F8F0)
  {
    sub_14548(255, &qword_2F838, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2F8F0);
  }

  return result;
}

uint64_t sub_19DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for VideoEffectsPreview()
{
  result = qword_301A0;
  if (!qword_301A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19E6C()
{
  sub_1A0C0(319, &qword_2F938, &qword_2F880, &qword_21210);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1A0C0(319, &qword_2F940, &qword_2F898, &qword_21270);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1A34C(319, &qword_2F948, &type metadata for CGFloat, &type metadata accessor for Published);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1A114();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1A34C(319, &unk_2F958, &type metadata for Bool, &type metadata accessor for Published);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1A078(uint64_t *a1, uint64_t *a2)
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

void sub_1A0C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1A078(a3, a4);
    v5 = sub_1EFA4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A114()
{
  if (!qword_2F950)
  {
    type metadata accessor for CGAffineTransform(255);
    v0 = sub_1EFA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2F950);
    }
  }
}

__n128 sub_1A16C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A180(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A1A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1A1D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1A268()
{
  result = qword_2FBE8;
  if (!qword_2FBE8)
  {
    sub_1EFB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2FBE8);
  }

  return result;
}

unint64_t sub_1A2C0()
{
  result = qword_2FBF8;
  if (!qword_2FBF8)
  {
    sub_1A078(&qword_2FBF0, &unk_21590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2FBF8);
  }

  return result;
}

void sub_1A34C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3B0()
{
  v0 = sub_1EEE4();
  sub_144E4(v0, qword_301B8);
  sub_13744(v0, qword_301B8);
  return sub_1EED4();
}

Swift::Int sub_1A49C(unsigned __int8 a1)
{
  sub_1F3D4();
  sub_1F3E4(a1);
  return sub_1F3F4();
}

id sub_1A6A0()
{
  v0 = sub_1F134();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  (__chkstk_darwin)();
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1F214();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = sub_1EFF4();
  v14 = [objc_opt_self() _systemImageNamed:v13];

  sub_1F1E4();
  v15 = v14;
  sub_1F1D4();
  (*(v1 + 104))(v4, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v0);
  sub_1F154();
  sub_1F174();
  sub_1F144();
  sub_1F164();
  sub_1F124();
  v16 = [objc_opt_self() configurationWithPointSize:13.0];
  sub_1F0F4();
  sub_14548(0, &qword_2F698, UIButton_ptr);
  (*(v6 + 16))(v10, v12, v5);
  v17 = sub_1F224();
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = v17;
  LODWORD(v19) = 1144750080;
  [v18 setContentHuggingPriority:0 forAxis:v19];
  [v18 setContentHorizontalAlignment:1];

  v20 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor:v20];

  [v18 setContentMode:7];
  [v18 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];

  (*(v6 + 8))(v12, v5);
  return v18;
}

void sub_1AA08()
{
  v0 = sub_1F214();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = sub_1EFF4();
  v9 = [objc_opt_self() _systemImageNamed:v8];

  if (v9)
  {
    v10 = [v9 imageWithRenderingMode:2];

    v11 = v10;
    sub_1F1E4();
    sub_1F1D4();
    sub_14548(0, &qword_2F698, UIButton_ptr);
    (*(v1 + 16))(v5, v7, v0);
    v12 = sub_1F224();
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v13) = 1144750080;
    [v12 setContentHuggingPriority:0 forAxis:v13];
    v14 = [objc_opt_self() systemLightGrayColor];
    [v12 setTintColor:v14];

    [v12 setHidden:1];
    [v12 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    v15 = [v12 imageView];
    if (v15)
    {
      v16 = v15;
      [v15 setMaximumContentSizeCategory:UIContentSizeCategoryMedium];
    }

    v17 = [v12 _shouldReverseLayoutDirection];
    v18 = -1.57079633;
    if (v17)
    {
      v18 = 1.57079633;
    }

    v19 = *&CGAffineTransformIdentity.c;
    *&v26.a = *&CGAffineTransformIdentity.a;
    *&v26.c = v19;
    *&v26.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v25, &v26, v18);
    tx = v25.tx;
    ty = v25.ty;
    v23 = *&v25.c;
    v24 = *&v25.a;
    v22 = [v12 layer];

    *&v26.a = v24;
    *&v26.c = v23;
    v26.tx = tx;
    v26.ty = ty;
    [v22 setAffineTransform:&v26];

    (*(v1 + 8))(v7, v0);
  }

  else
  {
    __break(1u);
  }
}

id sub_1AD64()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = sub_1EFF4();
  [v0 setText:v1];

  v2 = v0;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setHidden:1];

  LODWORD(v3) = 1144750080;
  [v2 setContentHuggingPriority:1 forAxis:v3];
  v4 = [objc_opt_self() systemFontOfSize:10.0];
  [v2 setFont:v4];

  return v2;
}

id sub_1AE7C()
{
  v0 = [objc_allocWithZone(UISlider) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setHidden:1];

  [v0 _setSliderStyle:110];
  v1 = [objc_allocWithZone(_UISliderFluidConfiguration) init];
  [v1 setStretchLimit:13.0];
  [v1 setExpansionFactor:1.5];
  [v0 _setSliderConfiguration:v1];

  return v0;
}

id sub_1AF78()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = sub_1EFF4();
  [v0 setText:v1];

  v2 = v0;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setHidden:1];

  LODWORD(v3) = 1144750080;
  [v2 setContentHuggingPriority:1 forAxis:v3];
  [v2 setNumberOfLines:0];
  [v2 setLineBreakMode:0];
  v4 = [objc_opt_self() systemFontOfSize:13.0];
  [v2 setFont:v4];

  return v2;
}

id sub_1B0C8()
{
  result = [objc_opt_self() materialViewWithRecipe:0];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B118()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_categoriesToVisualStylingProviders;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1B160(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_categoriesToVisualStylingProviders;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B218()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_requiredVisualStyleCategories;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1B260(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_requiredVisualStyleCategories;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B348()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B38C(char a1)
{
  v3 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_isExpanded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B43C()
{
  v1 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonTitle);
  v2 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonTitle + 8);

  return v1;
}

id sub_1B488()
{
  v0 = objc_allocWithZone(UIControl);

  return [v0 init];
}

id sub_1B4D0()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

void sub_1B5B4(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v72[1] = a5;
  v72[2] = a8;
  v80 = a6;
  v77 = a2;
  v78 = a3;
  v14 = sub_7120(&qword_2F678, &qword_20F40);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v76 = v72 - v16;
  v17 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonGlyph;
  v18 = sub_1A6A0();
  v75 = v17;
  *&v10[v17] = v18;
  v19 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_expandChevron;
  sub_1AA08();
  *&v10[v19] = v20;
  v21 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_intensityRow;
  *&v10[v21] = sub_1AD64();
  v22 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_continuousSlider;
  *&v10[v22] = sub_1AE7C();
  v23 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_descriptionLabel;
  v24 = sub_1AF78();
  v79 = v23;
  *&v10[v23] = v24;
  v25 = [objc_opt_self() materialViewWithRecipe:0];
  if (!v25)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v81 = a9;
  *&v10[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView] = v25;
  v26 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_categoriesToVisualStylingProviders;
  *&v10[v26] = sub_1364C(&_swiftEmptyArrayStorage);
  v27 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_requiredVisualStyleCategories;
  sub_7120(&qword_2F610, &qword_20F28);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20E70;
  *(v28 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:2];
  *(v28 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *&v10[v27] = v28;
  v10[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_isExpanded] = 0;
  v29 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_imageBackgroundView;
  *&v10[v29] = [objc_allocWithZone(UIControl) init];
  v30 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectTitleLabel;
  v31 = [objc_allocWithZone(UILabel) init];
  v73 = v30;
  *&v10[v30] = v31;
  v10[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_controlType] = a1;
  v32 = &v10[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonTitle];
  *v32 = v78;
  v32[1] = a4;
  v33 = *&v10[v22];

  v78 = a7;
  [v33 setMaximumValueImage:a7];
  v34 = *&v10[v21];
  v74 = a4;
  if (v80)
  {
    v35 = v34;

    v36 = sub_1EFF4();
  }

  else
  {
    v37 = v34;
    v36 = 0;
  }

  [v34 setText:v36];

  v38 = *&v10[v79];
  if (v81)
  {
    v39 = v38;

    v40 = sub_1EFF4();
  }

  else
  {
    v41 = v38;
    v40 = 0;
  }

  [v38 setText:v40];

  v42 = objc_opt_self();
  v43 = sub_1EFF4();
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v45 = objc_opt_self();
  v46 = [v45 bundleForClass:ObjCClassFromMetadata];
  v47 = [v42 _visualStylingProviderForStyleSetNamed:v43 inBundle:v46];

  if (!v47)
  {
    goto LABEL_17;
  }

  *&v10[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider] = v47;
  v48 = sub_1EFF4();
  v49 = [v45 bundleForClass:ObjCClassFromMetadata];
  v50 = [v42 _visualStylingProviderForStyleSetNamed:v48 inBundle:v49];

  if (!v50)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *&v10[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider] = v50;
  v51 = [v42 _visualStylingProviderForRecipe:101 andCategory:1];
  if (!v51)
  {
LABEL_19:
    __break(1u);
    return;
  }

  *&v10[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_sliderStylingProvider] = v51;
  v52 = objc_allocWithZone(UIImageView);
  v53 = v77;
  v54 = [v52 initWithImage:v77];
  v55 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectImageView;
  *&v10[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectImageView] = v54;
  v56 = *&v10[v75];
  v57 = v54;
  v58 = v56;
  v59 = v76;
  sub_1F234();

  v60 = sub_1F214();
  if ((*(*(v60 - 8) + 48))(v59, 1, v60) || (v62 = sub_1F1C4()) == 0)
  {
    sub_1E1BC(v59);
    v61 = 0;
  }

  else
  {
    v63 = v62;
    sub_1E1BC(v59);
    v61 = [v63 symbolConfiguration];
  }

  v64 = v78;
  [v57 setSymbolConfiguration:v61];

  [*&v10[v55] setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = v73;
  [*&v10[v73] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v10[v65] setLineBreakMode:4];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v69 = type metadata accessor for EffectControl();
  v82.receiver = v10;
  v82.super_class = v69;
  v70 = objc_msgSendSuper2(&v82, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v71 = [v70 layer];
  [v71 setMasksToBounds:1];

  sub_1BD34();
  sub_1C244();
  sub_1BE44();
}

id sub_1BC50()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for EffectControl();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView];
  [v0 _continuousCornerRadius];
  return [v1 _setContinuousCornerRadius:?];
}

id sub_1BD34()
{
  if (v0[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_controlType] != 2)
  {
    v1 = *&v0[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView];
    v2 = [v1 layer];
    [v2 setShadowPathIsBounds:1];

    v3 = [v1 layer];
    LODWORD(v4) = 1036831949;
    [v3 setShadowOpacity:v4];

    v5 = [v1 layer];
    [v5 setShadowRadius:15.0];
  }

  v6 = *&v0[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView];
  [v0 _continuousCornerRadius];

  return [v6 _setContinuousCornerRadius:?];
}

void sub_1BE44()
{
  v1 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider);
  [v1 automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_expandChevron) withStyle:2];
  if (*(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_controlType) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 5;
  }

  [*(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider) automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView) withStyle:v2];
  [v1 automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_intensityRow) withStyle:0];
  [v1 automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_descriptionLabel) withStyle:0];
  [v1 automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectTitleLabel) withStyle:0];
  [v1 automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectImageView) withStyle:0];
  [v1 automaticallyUpdateView:*(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_imageBackgroundView) withStyle:2];

  sub_1BF6C();
}

void sub_1BF6C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_continuousSlider);
  [v2 _setDrawsAsBackdropOverlayWithBlendMode:2];
  v3 = [*(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_sliderStylingProvider) _visualStylingForStyle:1];
  v4 = [v3 color];
  v5 = [objc_opt_self() quaternaryLabelColor];
  if (qword_301B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1EEE4();
  sub_13744(v6, qword_301B8);
  v7 = v4;
  v8 = v5;
  v9 = sub_1EEC4();
  v10 = sub_1F074();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v4;
    v12[1] = v8;
    v13 = v7;
    v14 = v8;
    _os_log_impl(&dword_0, v9, v10, "min color = %@, max color = %@", v11, 0x16u);
    sub_7120(&qword_2F660, &qword_20F30);
    swift_arrayDestroy();
  }

  [v2 setMinimumTrackTintColor:v7];
  [v2 setMaximumTrackTintColor:v8];
  v15 = [v2 _maxValueView];
  if (!v15)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v16 = v15;
  if ([*(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView) isHighlighted])
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  [v16 _setDrawsAsBackdropOverlayWithBlendMode:v17];

  v18 = [v2 _maxValueView];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  [v18 setTintColor:v7];
}

uint64_t sub_1C244()
{
  v1 = v0;
  v2 = sub_7120(&qword_2F678, &qword_20F40);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v35 = sub_1F214();
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v35);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1EE94();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1EE54();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v33 - v20;
  (*(&stru_108.reserved2 + (swift_isaMask & *v0)))(v19);
  v22 = v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonTitle;
  v24 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonTitle);
  v23 = *(v22 + 1);

  sub_1EE84();
  v25 = v13;
  sub_1EE64();
  v36 = [objc_opt_self() systemFontOfSize:15.0];
  sub_13990();
  sub_1EE74();
  v26 = *(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectTitleLabel);
  sub_14548(0, &unk_2FCC0, NSAttributedString_ptr);
  (*(v14 + 16))(v18, v21, v13);
  v27 = sub_1F0C4();
  [v26 setAttributedText:v27];

  if (*(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_controlType) == 1)
  {
    [*(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_expandChevron) setHidden:0];
  }

  v28 = *(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonGlyph);
  sub_1F234();
  v29 = v35;
  if ((*(v8 + 48))(v7, 1, v35) == 1)
  {
    (*(v14 + 8))(v21, v25);
    return sub_1E1BC(v7);
  }

  else
  {
    v31 = v33;
    (*(v8 + 32))(v33, v7, v29);
    sub_1F1D4();
    v32 = v34;
    (*(v8 + 16))(v34, v31, v29);
    (*(v8 + 56))(v32, 0, 1, v29);
    sub_1F244();
    (*(v8 + 8))(v31, v29);
    return (*(v14 + 8))(v21, v25);
  }
}

void sub_1C6D8(void *a1, char a2)
{
  v5 = objc_opt_self();
  sub_7120(&qword_2F610, &qword_20F28);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20E70;
  v7 = [a1 leadingAnchor];
  v8 = [v2 leadingAnchor];
  v9 = 0.0;
  if (a2)
  {
    v9 = 15.0;
    v10 = -10.0;
  }

  else
  {
    v10 = -0.0;
  }

  v11 = [v7 constraintEqualToAnchor:v8 constant:v9];

  *(v6 + 32) = v11;
  v12 = [a1 trailingAnchor];
  v13 = [v2 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:v10];

  *(v6 + 40) = v14;
  sub_14548(0, &qword_2F850, NSLayoutConstraint_ptr);
  isa = sub_1F034().super.isa;

  [v5 activateConstraints:isa];
}

void sub_1C8A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView);
  [v0 addSubview:v1];
  v2 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonGlyph);
  [v0 addSubview:v2];
  v68 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectImageView);
  [v0 addSubview:?];
  v63 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectTitleLabel);
  [v0 addSubview:?];
  v67 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_expandChevron);
  [v0 addSubview:?];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  (*(&stru_108.flags + (swift_isaMask & *v0)))(v1, 0);
  v3 = objc_opt_self();
  sub_7120(&qword_2F610, &qword_20F28);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E70;
  v5 = [v1 topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v1 bottomAnchor];
  v9 = [v0 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  sub_14548(0, &qword_2F850, NSLayoutConstraint_ptr);
  isa = sub_1F034().super.isa;

  v66 = v3;
  [v3 activateConstraints:isa];

  LODWORD(isa) = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_controlType);
  v12 = [v2 trailingAnchor];
  v64 = isa;
  if (isa == 1)
  {
    v13 = [v67 leadingAnchor];
  }

  else
  {
    v13 = [v0 trailingAnchor];
  }

  v14 = v13;
  v15 = [v12 constraintEqualToAnchor:v14];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_215E0;
  v17 = [v2 topAnchor];
  v18 = [v0 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v16 + 32) = v19;
  v20 = [v2 leadingAnchor];
  v21 = [v0 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v16 + 40) = v22;
  v23 = [v2 heightAnchor];
  v24 = [v23 constraintEqualToConstant:40.0];

  *(v16 + 48) = v24;
  *(v16 + 56) = v15;
  v65 = v15;
  v25 = [v68 centerXAnchor];
  v26 = [v0 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:20.0];

  *(v16 + 64) = v27;
  v28 = [v68 centerYAnchor];
  v29 = [v2 centerYAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v16 + 72) = v30;
  v31 = [v63 leadingAnchor];
  v32 = [v68 centerXAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:18.0];

  *(v16 + 80) = v33;
  v34 = [v63 centerYAnchor];
  v35 = [v2 centerYAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v16 + 88) = v36;
  v37 = [v67 centerYAnchor];
  v38 = [v2 centerYAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v16 + 96) = v39;
  v40 = [v67 trailingAnchor];
  v41 = [v0 trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:-10.0];

  *(v16 + 104) = v42;
  v43 = [v67 widthAnchor];
  v44 = [v43 constraintEqualToConstant:26.0];

  *(v16 + 112) = v44;
  v45 = [v67 heightAnchor];
  v46 = [v67 widthAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v16 + 120) = v47;
  v48 = sub_1F034().super.isa;

  [v66 activateConstraints:v48];

  if (v64 != 2)
  {
    v49 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_imageBackgroundView);
    [v0 insertSubview:v49 belowSubview:v68];
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v49 _setContinuousCornerRadius:15.0];
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_20E60;
    v51 = [v49 centerXAnchor];
    v52 = [v68 centerXAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(v50 + 32) = v53;
    v54 = [v49 centerYAnchor];
    v55 = [v68 centerYAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    *(v50 + 40) = v56;
    v57 = [v49 widthAnchor];
    v58 = [v57 constraintEqualToConstant:30.0];

    *(v50 + 48) = v58;
    v59 = [v49 heightAnchor];
    v60 = [v49 widthAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v50 + 56) = v61;
    v62 = sub_1F034().super.isa;

    [v66 activateConstraints:v62];
  }
}

id sub_1D208()
{
  v1 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_intensityRow);
  [v0 addSubview:v1];
  v2 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_continuousSlider);
  [v0 addSubview:?];
  v21 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_descriptionLabel);
  [v0 addSubview:?];
  v20 = *(&stru_108.flags + (swift_isaMask & *v0));
  v20(v1, 1);
  v3 = objc_opt_self();
  sub_7120(&qword_2F610, &qword_20F28);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_215F0;
  v5 = [v1 topAnchor];
  v6 = [*(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonGlyph) bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  sub_14548(0, &qword_2F850, NSLayoutConstraint_ptr);
  isa = sub_1F034().super.isa;

  [v3 activateConstraints:isa];

  v20(v2, 1);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_215F0;
  v10 = [v2 topAnchor];
  v11 = [v1 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];

  *(v9 + 32) = v12;
  v13 = sub_1F034().super.isa;

  [v3 activateConstraints:v13];

  v20(v21, 1);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_215F0;
  v15 = [v21 topAnchor];
  v16 = [v2 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:8.0];

  *(v14 + 32) = v17;
  v18 = sub_1F034().super.isa;

  [v3 activateConstraints:v18];

  [v0 setNeedsLayout];

  return [v0 layoutIfNeeded];
}

void sub_1D5C4()
{
  v1 = v0;
  if (qword_301B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1EEE4();
  sub_13744(v2, qword_301B8);
  v3 = sub_1EEC4();
  v4 = sub_1F074();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Chevron Tapped", v5, 2u);
  }

  v6 = (*&stru_108.segname[swift_isaMask & *v1])(v13);
  *v7 = !*v7;
  v8 = v6(v13, 0);
  if ((*&stru_108.sectname[swift_isaMask & *v1])(v8))
  {
    sub_1D208();
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v13[4] = sub_1E44C;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_BEC8;
  v13[3] = &unk_29218;
  v11 = _Block_copy(v13);
  v12 = v1;

  [v9 animateWithDuration:v11 animations:0.3];
  _Block_release(v11);
}

id sub_1D824(char a1, char a2, char a3)
{
  if (qword_301B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1EEE4();
  sub_13744(v7, qword_301B8);
  v8 = v3;
  v9 = sub_1EEC4();
  v10 = sub_1F074();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136316162;
    *(v11 + 4) = sub_6B78(0xD000000000000041, 0x80000000000251D0, &v24);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_6B78(*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonTitle], *&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonTitle + 8], &v24);
    *(v11 + 22) = 1024;
    *(v11 + 24) = a1 & 1;
    *(v11 + 28) = 1024;
    *(v11 + 30) = a2 & 1;
    *(v11 + 34) = 1024;
    *(v11 + 36) = a3 & 1;
    _os_log_impl(&dword_0, v9, v10, "%s setting %s highlighted=%{BOOL}d, isAlternateHighlight=%{BOOL}d, isSupported=%{BOOL}d", v11, 0x28u);
    swift_arrayDestroy();
  }

  [*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView] setHighlighted:a1 & 1];
  if ((a3 & 1) == 0)
  {
    v15 = *&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider];
    [v15 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_expandChevron] withStyle:5];
    if (v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_controlType] == 2)
    {
      v16 = 3;
    }

    else
    {
      v16 = 5;
    }

    [*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider] automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView] withStyle:v16];
    [v15 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectTitleLabel] withStyle:5];
    [v15 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectImageView] withStyle:5];
    [v15 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_intensityRow] withStyle:5];
    [v15 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_descriptionLabel] withStyle:5];
    goto LABEL_25;
  }

  if (v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_controlType] == 2)
  {
    if (a1)
    {
      if (a2)
      {
        v12 = 5;
      }

      else
      {
        v12 = 4;
      }

      [*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider] automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView] withStyle:v12];
      v13 = *&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectImageView];
      if (a2)
      {
        [*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider] automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectImageView] withStyle:0];
        v14 = 0;
      }

      else
      {
        [*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectImageView] mt_removeAllVisualStyling];
        v22 = [objc_opt_self() systemBlueColor];
        [v13 setTintColor:v22];

        v14 = 1;
      }

      [*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider] automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectTitleLabel] withStyle:v14];
      goto LABEL_25;
    }

    [*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider] automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView] withStyle:3];
    v19 = *&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider];
    [v19 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectImageView] withStyle:0];
    v20 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectTitleLabel;
  }

  else
  {
    v17 = *&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectImageView];
    if (a1)
    {
      [*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectImageView] mt_removeAllVisualStyling];
      v18 = [objc_opt_self() systemBlueColor];
      [v17 setTintColor:v18];

      [*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider] automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_imageBackgroundView] withStyle:4];
    }

    else
    {
      v21 = *&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider];
      [v21 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectImageView] withStyle:0];
      [v21 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_imageBackgroundView] withStyle:2];
    }

    v19 = *&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider];
    [v19 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_expandChevron] withStyle:2];
    [v19 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectTitleLabel] withStyle:0];
    [v19 automaticallyUpdateView:*&v8[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_intensityRow] withStyle:0];
    v20 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_descriptionLabel;
  }

  [v19 automaticallyUpdateView:*&v8[v20] withStyle:0];
LABEL_25:
  sub_1BF6C();

  return [v8 setNeedsDisplay];
}

id sub_1DDE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EffectControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1DF34(char a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v7[4] = sub_1E6C0;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_BEC8;
  v7[3] = &unk_29268;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v3 animateWithDuration:v5 animations:0.3];
  _Block_release(v5);
}

void sub_1E02C()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1E7CC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_BEC8;
  v5[3] = &unk_292B8;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.3];
  _Block_release(v3);
}

id sub_1E11C(void *a1)
{
  if ([*(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView) isHighlighted])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return [a1 _setDrawsAsBackdropOverlayWithBlendMode:v3];
}

void *sub_1E17C()
{
  v1 = *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider);
  v2 = v1;
  return v1;
}

uint64_t sub_1E1BC(uint64_t a1)
{
  v2 = sub_7120(&qword_2F678, &qword_20F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E248()
{
  v1 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_buttonGlyph;
  *(v0 + v1) = sub_1A6A0();
  v2 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_expandChevron;
  sub_1AA08();
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_intensityRow;
  *(v0 + v4) = sub_1AD64();
  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_continuousSlider;
  *(v0 + v5) = sub_1AE7C();
  v6 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_descriptionLabel;
  *(v0 + v6) = sub_1AF78();
  v7 = [objc_opt_self() materialViewWithRecipe:0];
  if (!v7)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView) = v7;
  v8 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_categoriesToVisualStylingProviders;
  *(v0 + v8) = sub_1364C(_swiftEmptyArrayStorage);
  v9 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_requiredVisualStyleCategories;
  sub_7120(&qword_2F610, &qword_20F28);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20E70;
  *(v10 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:2];
  *(v10 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *(v0 + v9) = v10;
  *(v0 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_isExpanded) = 0;
  v11 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_imageBackgroundView;
  *(v0 + v11) = [objc_allocWithZone(UIControl) init];
  v12 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectTitleLabel;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  sub_1F344();
  __break(1u);
}

uint64_t sub_1E414()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1E44C()
{
  v1 = *(v0 + 16);
  v2 = *&stru_108.sectname[swift_isaMask & *v1];
  v3 = v2();
  v4 = *(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_intensityRow);
  if (v3)
  {
    [*(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_intensityRow) setHidden:0];
    [*(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_continuousSlider) setHidden:0];
    v5 = [*(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_descriptionLabel) setHidden:0];
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_intensityRow) setHidden:1];
    v6 = *(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_continuousSlider);
    [v6 setHidden:1];
    v7 = *(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_descriptionLabel);
    [v7 setHidden:1];
    [v4 removeFromSuperview];
    [v6 removeFromSuperview];
    v5 = [v7 removeFromSuperview];
  }

  if ((v2)(v5))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = -1.57079633;
  }

  v9 = [v1 _shouldReverseLayoutDirection];
  v10 = -v8;
  if (!v9)
  {
    v10 = v8;
  }

  v11 = *&CGAffineTransformIdentity.c;
  *&v19.a = *&CGAffineTransformIdentity.a;
  *&v19.c = v11;
  *&v19.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformRotate(&v18, &v19, v10);
  tx = v18.tx;
  ty = v18.ty;
  v16 = *&v18.c;
  v17 = *&v18.a;
  v14 = [*(v1 + OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_expandChevron) layer];
  *&v19.a = v17;
  *&v19.c = v16;
  v19.tx = tx;
  v19.ty = ty;
  [v14 setAffineTransform:&v19];

  sub_1D824([v1 isSelected], 0, 1);
  return [v1 layoutIfNeeded];
}

uint64_t sub_1E670(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E688()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_1E6C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  CGAffineTransformMakeScale(&v6, 0.9, 0.9);
  result = [v1 setTransform:&v6];
  if (v2 == 1)
  {
    v4 = *&v1[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView];
    result = [v4 isHighlighted];
    if ((result & 1) == 0)
    {
      if (v1[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_controlType] == 2)
      {
        [*&v1[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterFillVisualStylingProvider] automaticallyUpdateView:v4 withStyle:2];
      }

      v5 = *&v1[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_platterStrokeVisualStylingProvider];
      [v5 automaticallyUpdateView:*&v1[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectTitleLabel] withStyle:0];
      return [v5 automaticallyUpdateView:*&v1[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_effectImageView] withStyle:0];
    }
  }

  return result;
}

id sub_1E7CC()
{
  v1 = *(v0 + 16);
  CGAffineTransformMakeScale(&v3, 1.0, 1.0);
  return [v1 setTransform:&v3];
}

unint64_t sub_1E82C()
{
  result = qword_2FC90;
  if (!qword_2FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2FC90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EffectControl.ControlType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EffectControl.ControlType(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1EAF4(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedInt:a1];
  v2 = 136446722;
  v3 = "[VideoEffectsManager setState:forEffect:]";
  v4 = 1024;
  v5 = 195;
  v6 = 2112;
  v7 = v1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Unhandled effect %@", &v2, 0x1Cu);
}

void sub_1EC3C(int a1)
{
  v1 = 136446722;
  v2 = "[VideoEffectsManager setIntensity:forEffect:]";
  v3 = 1024;
  v4 = 219;
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d cannot set intensity for unsupported effect=%d", &v1, 0x18u);
}