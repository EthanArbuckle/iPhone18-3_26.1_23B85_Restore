uint64_t TUIWeak.__allocating_init(_:)()
{
  swift_allocObject();
  v0 = sub_194FC0();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t TUIWeak.init(_:)()
{
  v0 = sub_194FC0();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t TUIWeak.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t static TUIWeak<>.== infix(_:_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!v1)
    {
      v2 = 1;
      return v2 & 1;
    }

LABEL_6:
    swift_unknownObjectRelease();
    v2 = 0;
    return v2 & 1;
  }

  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_19C508();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t TUIWeak<>.hash(into:)()
{
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  sub_19C6A8();
  sub_19C6B8();
  return swift_unknownObjectRelease();
}

Swift::Int TUIWeak<>.hashValue.getter()
{
  sub_19C838();
  TUIWeak<>.hash(into:)();
  return sub_19C858();
}

Swift::Int sub_194F78()
{
  sub_19C838();
  TUIWeak<>.hash(into:)();
  return sub_19C858();
}

uint64_t sub_194FC0()
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t sub_195060@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

id TUIExtendBackgroundBox.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TUIExtendBackgroundBox();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1952CC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    result = [v0 children];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    sub_1958F0();
    v4 = sub_19C5C8();

    if (v4 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *(dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_19C778())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = sub_19C738();
        }

        else
        {
          if (v6 >= *(dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_17;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        Strong = v7;
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v9 = [v7 box];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 role];

          if (!v11)
          {
            goto LABEL_20;
          }
        }

        ++v6;
        if (v8 == i)
        {
          Strong = 0;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    Strong = 0;
LABEL_20:

    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectWeakLoadStrong();
}

void sub_1954D8()
{
  [v0 computeWidth];
  v2 = v1;
  v3 = sub_1952CC();
  if (v3)
  {
    v4 = v3;
    [v3 setContainingWidth:v2];
    [v0 containingHeight];
    [v4 setContainingHeight:?];
    [v4 validateLayout];
    [v4 computedTransformedSize];
    [v0 setComputedNaturalSize:v2];
  }

  else
  {

    [v0 setComputedNaturalSize:{v2, 0.0}];
  }
}

void sub_195610(unint64_t a1, void *a2)
{
  if (a1 >= 4 && a2)
  {
    v3 = a2;
    if ([v3 renderModelForContainerLayout:v2 kind:6])
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = [v2 box];
        v7 = [v6 identifier];

        v8 = objc_allocWithZone(TUIRenderModelView);
        v9 = sub_19C518();
        v10 = [v8 initWithReuseIdentifier:v9 identifier:v7 submodel:v5];

        if (v10)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

id sub_1958A8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1958F0()
{
  result = qword_2E5C58;
  if (!qword_2E5C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2E5C58);
  }

  return result;
}

uint64_t sub_19593C()
{
  v0 = sub_19C638();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19C628();
  __chkstk_darwin(v4);
  v5 = sub_19C4B8();
  __chkstk_darwin(v5 - 8);
  sub_1972A0();
  sub_19C4A8();
  v7[1] = _swiftEmptyArrayStorage;
  sub_1972EC();
  sub_18F3EC(&qword_2E5D08);
  sub_197344();
  sub_19C6C8();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_19C648();
  qword_2E5C60 = result;
  return result;
}

id sub_195B44()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setMaxConcurrentOperationCount:1];
  if (qword_2E5828 != -1)
  {
    swift_once();
  }

  result = [v0 setUnderlyingQueue:qword_2E5C60];
  qword_2E5C68 = v0;
  return result;
}

void sub_195C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_19C3B8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id MediaBackdropSnapshotRenderer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaBackdropSnapshotRenderer();
  return objc_msgSendSuper2(&v2, "init");
}

Swift::Int sub_195DA8()
{
  v1 = *v0;
  sub_19C838();
  sub_19C848(v1);
  return sub_19C858();
}

Swift::Int sub_195E1C()
{
  v1 = *v0;
  sub_19C838();
  sub_19C848(v1);
  return sub_19C858();
}

uint64_t sub_195E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_19C428();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_195F30, 0, 0);
}

uint64_t sub_195F30()
{
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtC10TemplateUI38MediaBackdropSnapshotRendererOperation_size) <= 0.0 || *(v1 + OBJC_IVAR____TtC10TemplateUI38MediaBackdropSnapshotRendererOperation_size + 8) <= 0.0)
  {
    v8 = 0;
  }

  else
  {
    v2 = [*(v1 + OBJC_IVAR____TtC10TemplateUI38MediaBackdropSnapshotRendererOperation_content) image];
    if (!v2)
    {
      __break(1u);
      return static Backdrop.CompositeRenderer.snapshot(configuration:)(v2);
    }

    v3 = [v2 newImage];
    v0[6] = v3;
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = v3;
      v6 = [v4 traitCollectionWithUserInterfaceStyle:2];
      sub_19C418();
      sub_19C408();
      v7 = swift_task_alloc();
      v0[7] = v7;
      *v7 = v0;
      v7[1] = sub_196178;
      v2 = v0[5];

      return static Backdrop.CompositeRenderer.snapshot(configuration:)(v2);
    }

    v8 = 1;
  }

  sub_19720C();
  v9 = swift_allocError();
  *v10 = v8;
  swift_willThrow();
  v11 = *(v0[2] + OBJC_IVAR____TtC10TemplateUI38MediaBackdropSnapshotRendererOperation_completion);
  swift_errorRetain();
  v11(0, v9);

  sub_19C688();

  v12 = v0[1];

  return v12();
}

uint64_t sub_196178(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_196498;
  }

  else
  {
    v4 = sub_19628C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_19628C()
{
  v1 = v0[8];
  v2 = [objc_allocWithZone(CIContext) init];
  v3 = [v1 CIImage];
  if (v3)
  {
    v4 = v3;
    [v3 extent];
    v5 = [v2 createCGImage:v4 fromRect:?];
    if (v5)
    {
      v6 = v0[8];
      v7 = v0[6];
      v8 = v0[4];
      v22 = v0[3];
      v23 = v0[5];
      v9 = *(v0[2] + OBJC_IVAR____TtC10TemplateUI38MediaBackdropSnapshotRendererOperation_completion);
      v10 = v5;
      v11 = v5;
      v9(v10, 0);

      (*(v8 + 8))(v23, v22);
      goto LABEL_6;
    }
  }

  v12 = v0[8];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[3];
  v16 = v0[4];
  sub_19720C();
  v17 = swift_allocError();
  *v18 = 2;
  swift_willThrow();

  (*(v16 + 8))(v13, v15);
  v19 = *(v0[2] + OBJC_IVAR____TtC10TemplateUI38MediaBackdropSnapshotRendererOperation_completion);
  swift_errorRetain();
  v19(0, v17);

LABEL_6:
  sub_19C688();

  v20 = v0[1];

  return v20();
}

uint64_t sub_196498()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 72);
  v5 = *(*(v0 + 16) + OBJC_IVAR____TtC10TemplateUI38MediaBackdropSnapshotRendererOperation_completion);
  swift_errorRetain();
  v5(0, v4);

  sub_19C688();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_19657C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_18F3EC(&qword_2E5CE8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_196F8C(a3, v25 - v10);
  v12 = sub_19C5F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_196FFC(v11);
  }

  else
  {
    sub_19C5E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19C5D8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19C558() + 32;
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

      sub_196FFC(a3);

      return v23;
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

  sub_196FFC(a3);
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

id sub_1969A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_196A40(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_196B38;

  return v6(a1);
}

uint64_t sub_196B38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void _s10TemplateUI29MediaBackdropSnapshotRendererC6render7content4size0H5Scale10completionySo15TUIImageContentC_So6CGSizeV12CoreGraphics7CGFloatVySo10CGImageRefaSg_s5Error_pSgtctFZ_0(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = type metadata accessor for MediaBackdropSnapshotRendererOperation();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtC10TemplateUI38MediaBackdropSnapshotRendererOperation_semaphore;
  *&v13[v14] = dispatch_semaphore_create(0);
  *&v13[OBJC_IVAR____TtC10TemplateUI38MediaBackdropSnapshotRendererOperation_content] = a1;
  v15 = &v13[OBJC_IVAR____TtC10TemplateUI38MediaBackdropSnapshotRendererOperation_size];
  *v15 = a4;
  v15[1] = a5;
  *&v13[OBJC_IVAR____TtC10TemplateUI38MediaBackdropSnapshotRendererOperation_contentScale] = a6;
  v16 = &v13[OBJC_IVAR____TtC10TemplateUI38MediaBackdropSnapshotRendererOperation_completion];
  *v16 = a2;
  *(v16 + 1) = a3;
  v19.receiver = v13;
  v19.super_class = v12;
  v17 = a1;

  v18 = objc_msgSendSuper2(&v19, "init");
  if (qword_2E5830 != -1)
  {
    swift_once();
  }

  [qword_2E5C68 addOperation:{v18, v19.receiver, v19.super_class}];
}

uint64_t sub_196DA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_196DE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_196E98;

  return sub_195E70(a1, v4, v5, v6);
}

uint64_t sub_196E98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_196F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F3EC(&qword_2E5CE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_196FFC(uint64_t a1)
{
  v2 = sub_18F3EC(&qword_2E5CE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_197064(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_197570;

  return sub_196A40(a1, v4);
}

uint64_t sub_19711C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_197154(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_196E98;

  return sub_196A40(a1, v4);
}

unint64_t sub_19720C()
{
  result = qword_2E5CF0;
  if (!qword_2E5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2E5CF0);
  }

  return result;
}

uint64_t sub_197260()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1972A0()
{
  result = qword_2E5CF8;
  if (!qword_2E5CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2E5CF8);
  }

  return result;
}

unint64_t sub_1972EC()
{
  result = qword_2E5D00;
  if (!qword_2E5D00)
  {
    sub_19C628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2E5D00);
  }

  return result;
}

unint64_t sub_197344()
{
  result = qword_2E5D10;
  if (!qword_2E5D10)
  {
    sub_192AFC(&qword_2E5D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2E5D10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaBackdropSnapshotRendererOperation.BackdropRenderOperationError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaBackdropSnapshotRendererOperation.BackdropRenderOperationError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_197518()
{
  result = qword_2E5D18;
  if (!qword_2E5D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2E5D18);
  }

  return result;
}

void sub_197720(void *a1)
{
  sub_198584();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1977E8();
}

void sub_197784()
{
  sub_198584();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1977E8();
}

void sub_1977E8()
{
  sub_198578();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v33 = sub_198F2C(_swiftEmptyArrayStorage);
  v3 = *(v0 + OBJC_IVAR____TtC10TemplateUI30TUILayerOpacityTriggerObserver_opacityTriggers);
  v4 = *(v3 + 16);
  sub_18F3EC(&qword_2E5DD0);
  sub_19C4E8(v4);
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = v33;
  v9 = (v5 + 63) >> 6;

  v10 = 0;
LABEL_5:
  v11 = v10;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
    v10 = v11;
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(v3 + 48) + ((v10 << 9) | (8 * v12)));
    v14 = [v2 valueForTriggerWithName:v13];
    if (v14)
    {
      v31 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v8;
      v15 = sub_19873C(v13);
      v17 = v8[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_27;
      }

      if (v8[3] >= v20)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v16)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v30 = v15;
          v24 = v16;
          sub_198DCC();
          v25 = v24;
          v15 = v30;
          v8 = v32;
          if (v25)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v28 = v16;
        sub_198A04(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_19873C(v13);
        if ((v28 & 1) != (v21 & 1))
        {
          goto LABEL_29;
        }

        if (v28)
        {
LABEL_20:
          v22 = v8[7];
          v23 = *(v22 + 8 * v15);
          *(v22 + 8 * v15) = v31;

          goto LABEL_5;
        }
      }

      v8[(v15 >> 6) + 8] |= 1 << v15;
      *(v8[6] + 8 * v15) = v13;
      *(v8[7] + 8 * v15) = v31;

      v26 = v8[2];
      v19 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v19)
      {
        goto LABEL_28;
      }

      v8[2] = v27;
      goto LABEL_5;
    }

    v11 = v10;
  }

  while (v7);
LABEL_7:
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      sub_197EDC(v2, v8);

      return;
    }

    v7 = *(v3 + 64 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  type metadata accessor for TUITriggerName(0);
  sub_19C7E8();
  __break(1u);
}

void (*sub_197AD4(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10TemplateUI30TUILayerOpacityTriggerObserver_manager;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_197B6C;
}

void sub_197B6C(void **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_198584();
    swift_unknownObjectWeakAssign();
    sub_1977E8();

    v3 = *v4;
  }

  else
  {
    sub_198584();
    swift_unknownObjectWeakAssign();
    sub_1977E8();
  }

  free(v2);
}

id TUILayerOpacityTriggerObserver.__allocating_init(layer:opacityTriggers:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC10TemplateUI30TUILayerOpacityTriggerObserver_opacityTriggers] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, "init");

  return v6;
}

id TUILayerOpacityTriggerObserver.init(layer:opacityTriggers:)(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC10TemplateUI30TUILayerOpacityTriggerObserver_opacityTriggers] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TUILayerOpacityTriggerObserver();
  v5 = objc_msgSendSuper2(&v7, "init");

  return v5;
}

id TUILayerOpacityTriggerObserver.__deallocating_deinit()
{
  sub_198584();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TUILayerOpacityTriggerObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_197EDC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;

  if (v6 != a1)
  {
    return;
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
    return;
  }

  v78 = a1;
  v74 = v7;
  v8 = *(v2 + OBJC_IVAR____TtC10TemplateUI30TUILayerOpacityTriggerObserver_opacityTriggers);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;

  v75 = 0;
  v76 = v8;
  v14 = 0;
  v15 = 0;
  v16 = 0.0;
  v17 = 0.0;
  v77 = a2;
  while (v12)
  {
LABEL_13:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = *(a2 + 16);
    v21 = *(*(v8 + 48) + ((v15 << 9) | (8 * v19)));
    v22 = v21;
    if (v20 && (v23 = sub_19873C(v21), (v24 & 1) != 0))
    {
      v25 = *(*(a2 + 56) + 8 * v23);
LABEL_17:
      [v25 doubleValue];
      if (v26 >= 0.0)
      {
        if (!v75)
        {
          v35 = v26;
          goto LABEL_49;
        }

        if (v26 < v16)
        {
          v35 = v26;

          v25 = v75;
          goto LABEL_49;
        }

        if (v26 != v16)
        {
          goto LABEL_33;
        }

        v35 = v26;
        v36 = sub_19C548();
        v38 = v37;
        if (v36 == sub_19C548() && v38 == v39)
        {

LABEL_43:
          a2 = v77;
        }

        else
        {
          v41 = v14;
          v42 = sub_19C7C8();

          if ((v42 & 1) == 0)
          {
            v25 = v22;
            v14 = v41;
            v8 = v76;
            goto LABEL_43;
          }

          v14 = v41;
          v25 = v75;
          v8 = v76;
          a2 = v77;
LABEL_49:

          v75 = v22;
          v16 = v35;
        }
      }

      else
      {
        if (!v14)
        {
          v27 = v26;
          goto LABEL_45;
        }

        if (v17 < v26)
        {
          v27 = v26;

          v25 = v14;
          goto LABEL_45;
        }

        if (v26 == v17)
        {
          v27 = v26;
          v28 = sub_19C548();
          v30 = v29;
          v31 = v14;
          if (sub_19C548() == v28 && v32 == v30)
          {

LABEL_29:
            v14 = v31;
            v8 = v76;
            a2 = v77;
          }

          else
          {
            v34 = sub_19C7C8();

            if ((v34 & 1) == 0)
            {
              v25 = v22;
              goto LABEL_29;
            }

            v25 = v31;
            v8 = v76;
            a2 = v77;
LABEL_45:

            v14 = v22;
            v17 = v27;
          }
        }

        else
        {
LABEL_33:
        }
      }
    }

    else
    {
      v25 = [v78 valueForTriggerWithName:{v22, v74}];
      if (v25)
      {
        goto LABEL_17;
      }
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      if (v14)
      {
        v43 = v75;
        if (v75)
        {
          v44 = *(v8 + 16);
          v45 = v14;
          v46 = v75;
          v47 = 1.0;
          v48 = 1.0;
          if (v44)
          {
            v49 = sub_19873C(v45);
            if (v50)
            {
              v47 = *(*(v8 + 56) + 8 * v49);
            }

            if (*(v8 + 16))
            {
              v51 = v46;
              v52 = sub_19873C(v51);
              if (v53)
              {
                v48 = *(*(v8 + 56) + 8 * v52);
              }
            }
          }

          v54 = fmax(fmin(-v17 / (v16 - v17), 1.0), 0.0);
          v55 = v74;
          goto LABEL_83;
        }

        v48 = 1.0;
        v54 = 0.0;
        if (!*(v8 + 16))
        {
          v47 = 1.0;
          v55 = v74;
          goto LABEL_83;
        }

        v60 = v14;
        v61 = sub_19873C(v60);
        v55 = v74;
        if ((v62 & 1) == 0)
        {

LABEL_82:
          v47 = 1.0;
          goto LABEL_83;
        }

LABEL_77:
        v48 = *(*(v8 + 56) + 8 * v61);

        v47 = v48;
        goto LABEL_83;
      }

      v43 = v75;
      if (v75)
      {
        v56 = *(v8 + 16);
        v54 = 1.0;
        v55 = v74;
        if (v56)
        {
          if (v56 == 1)
          {
            v57 = v75;
            v58 = sub_19873C(v57);
            v47 = 0.0;
            v48 = 1.0;
            if (v59)
            {
              v48 = *(*(v8 + 56) + 8 * v58);
              v47 = 1.0;
              if (v48 >= 1.0)
              {
                v47 = 0.0;
              }
            }

            v54 = fmax(fmin(v16, 1.0), 0.0);
LABEL_83:
            v73 = v47 + v54 * (v48 - v47);
            *&v73 = v73;
            [v55 setOpacity:{v73, v74}];

            v65 = v14;
LABEL_84:

            return;
          }

          v60 = v75;
          v61 = sub_19873C(v60);
          if (v72)
          {
            goto LABEL_77;
          }
        }

        v48 = 1.0;
        goto LABEL_82;
      }

      v63 = sub_19C518();
      v64 = v63;
      v65 = v74;
      if (*(v8 + 16) && (v66 = sub_19873C(v63), (v67 & 1) != 0) || (v64, v68 = sub_19C518(), v64 = v68, *(v8 + 16)) && (v66 = sub_19873C(v68), (v69 & 1) != 0))
      {
        v70 = *(*(v8 + 56) + 8 * v66);

        *&v71 = v70;
      }

      else
      {

        LODWORD(v71) = 1.0;
      }

      [v74 setOpacity:{v71, v74}];
      goto LABEL_84;
    }

    v12 = *(v9 + 8 * v18);
    ++v15;
    if (v12)
    {
      v15 = v18;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_198590(SEL *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v1 + OBJC_IVAR____TtC10TemplateUI30TUILayerOpacityTriggerObserver_opacityTriggers);
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    while (v8)
    {
      v11 = v10;
LABEL_10:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      [v4 *a1];
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        return;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

unint64_t sub_19873C(uint64_t a1)
{
  sub_19C548();
  sub_19C838();
  sub_19C568();
  v2 = sub_19C858();

  return sub_198CC8(a1, v2);
}

uint64_t sub_1987D0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

unint64_t sub_198960()
{
  result = qword_2E5DC0;
  if (!qword_2E5DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2E5DC0);
  }

  return result;
}

unint64_t sub_1989AC()
{
  result = qword_2E5978;
  if (!qword_2E5978)
  {
    type metadata accessor for TUITriggerName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2E5978);
  }

  return result;
}

uint64_t sub_198A04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_18F3EC(&qword_2E5DD8);
  v36 = a2;
  result = sub_19C798();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_19C548();
      sub_19C838();
      sub_19C568();
      v25 = sub_19C858();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_198CC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_19C548();
      v8 = v7;
      if (v6 == sub_19C548() && v8 == v9)
      {
        break;
      }

      v11 = sub_19C7C8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id sub_198DCC()
{
  v1 = v0;
  sub_18F3EC(&qword_2E5DD8);
  v2 = *v0;
  v3 = sub_19C788();
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

unint64_t sub_198F2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_18F3EC(&qword_2E5DD8);
    v3 = sub_19C7A8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_19873C(v6);
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

id static TUIElementExtendBackground.configureObject(_:withBuilder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v5 = result;
    type metadata accessor for TUIExtendBackgroundBox();
    return [v5 finalizeModelsWithParent:swift_dynamicCastClass() context:a3];
  }

  return result;
}

id TUIElementExtendBackground.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TUIElementExtendBackground();
  return objc_msgSendSuper2(&v2, "init");
}

id TUIElementExtendBackground.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TUIElementExtendBackground();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_199254()
{
  result = qword_2E5DE0;
  if (!qword_2E5DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2E5DE0);
  }

  return result;
}

void sub_199334(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_16AF4(&dword_0, a2, a3, "cyclic dependency %{public}@ <--> %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_1993AC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2114;
  *&v3[14] = a1;
  sub_16AF4(&dword_0, a2, a3, "[%lu] tx=%{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_199424(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 callstack];
  v6 = 134218242;
  v7 = a2;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "[%lu] callstack=%{public}@", &v6, 0x16u);
}

void sub_19972C(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = [v6 mutableCopy];
  [v7 minusSet:a3];
  v8 = [v7 count];
  if (v8)
  {
    v8 = [v7 copy];
  }

  *a4 = v8;
}

void sub_199878(uint64_t a1, uint64_t a2)
{
  v2 = [sub_2A3B8(a1 a2)];
  sub_2A3EC([v2 feedId], 3.852e-34);
  sub_2A3CC(&dword_0, v3, v4, "[fid:%lu] found multiple 'more' children");
}

void sub_1998D4(uint64_t a1, uint64_t a2)
{
  v2 = [sub_2A3B8(a1 a2)];
  sub_2A3EC([v2 feedId], 3.852e-34);
  sub_2A3CC(&dword_0, v3, v4, "[fid:%lu] found multiple expanded-content children");
}

void sub_199930(uint64_t a1, uint64_t a2)
{
  v2 = [sub_2A3B8(a1 a2)];
  sub_2A3EC([v2 feedId], 3.852e-34);
  sub_2A3CC(&dword_0, v3, v4, "[fid:%lu] found multiple expandable children");
}

void sub_19998C(uint64_t a1, uint64_t a2)
{
  v2 = [sub_2A3B8(a1 a2)];
  sub_2A3EC([v2 feedId], 3.852e-34);
  sub_2A3CC(&dword_0, v3, v4, "[fid:%lu] expandable content should conform to <TUIExpandableContentLayout>.");
}

void sub_199CAC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "No URL found for template %@", &v2, 0xCu);
}

void sub_199D74(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 96) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 72) = v6;

    operator delete(v6);
  }
}

void sub_199E5C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "begin waiting for sync assertions", buf, 2u);
}

void sub_199E9C(void *a1, NSObject *a2, double a3)
{
  v5 = 134218240;
  v6 = [a1 count];
  v7 = 2048;
  v8 = a3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%lu sync transactions didn't finish; aborting runloop wait after %f seconds", &v5, 0x16u);
}

void sub_199F84(uint64_t a1, NSObject *a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_impl(&dword_0, a2, OS_LOG_TYPE_INFO, "removed sync-assertion for tx=%{public}@", &v3, 0xCu);
}

void sub_19A070(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 96);
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[fid:%lu] package doesn't support prebuiltTemplates", &v3, 0xCu);
}

void sub_19A0EC(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 feedControllerHost];
  v7 = [v6 feedId];
  v8 = [a2 to];
  v9 = [v8 sections];
  v10 = [v9 count];
  v11 = [a2 to];
  [v11 size];
  v12 = NSStringFromCGSize(v24);
  +[UIView inheritedAnimationDuration];
  v14 = 134219010;
  v15 = v7;
  v16 = 2048;
  v17 = a1;
  v18 = 2048;
  v19 = v10;
  v20 = 2112;
  v21 = v12;
  v22 = 2048;
  v23 = v13;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "[fid:%lu] applyUpdate(embedded) %p to.sections.count=%lu size=%@ duration=%f", &v14, 0x34u);
}

void sub_19A23C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Potential failure to load image resource: %@, blocking may occur if timeout is forever!!", &v2, 0xCu);
}

void sub_19A444(void *a1, NSObject *a2)
{
  v3 = [a1 absoluteString];
  sub_91C9C();
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Resource not found in offline cache: %{public}@", v4, 0xCu);
}

void sub_19A500(void *a1, NSObject *a2)
{
  v4 = [a1 url];
  v5 = 134218242;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "ImageResouce %p did load image (%@), but image content has no CGImageRef.", &v5, 0x16u);
}

void sub_19A5B0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Got all %ld images, pass to BCU for creating series cover. <%p>", &v3, 0x16u);
}

void sub_19A638(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 debugDescription];
  v6 = *(a2 + 32);
  v7 = 138412546;
  v8 = v5;
  v9 = 2048;
  v10 = v6;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "Received final series cover image %@ from BCU. <%p>", &v7, 0x16u);
}

void sub_19A6EC(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = [*(a1 + 32) imageResource];
  v7 = [*(a1 + 32) imageResource];
  v8 = [v7 debugFunctionalDescription];
  v9 = [a2 description];
  v10 = 134218498;
  v11 = v6;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Failed to load backdrop snapshot for %p: %@, error: %@", &v10, 0x20u);
}

void sub_19AA08(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 8);
  v4 = 134218242;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[fid:%lu] failed to lookup action %@", &v4, 0x16u);
}

void sub_19AA94(uint64_t a1, void *a2, NSObject *a3)
{
  v4 = *(a1 + 8);
  v5 = [a2 valueForKey:@"tui_identifierToString"];
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "[fid:%lu] failed to lookup path %@", &v6, 0x16u);
}

void sub_19AB50(void *a1)
{
  v1 = [a1 feedControllerHost];
  [v1 feedId];
  sub_B8DEC(&dword_0, v2, v3, "[fid:%lu] requesting hosting update identifier=%{public}@ view=%p", v4, v5, v6, v7, 2u);
}

void sub_19AC0C(void *a1, NSObject *a2)
{
  v4 = [a1 feedControllerHost];
  v5 = [v4 feedId];
  v6 = a1[3];
  v7 = [a1 layoutAttributes];
  v8 = [v7 renderModel];

  v9 = 134218754;
  v10 = v5;
  v11 = 2112;
  v12 = a1;
  v13 = 2112;
  v14 = v6;
  v15 = 2112;
  v16 = v8;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[fid:%lu] applyLayoutAttributes view=%@ identifier=%@ renderModel=%@", &v9, 0x2Au);
}

void sub_19AD14(void *a1)
{
  v1 = [a1 feedControllerHost];
  [v1 feedId];
  sub_B8DEC(&dword_0, v2, v3, "[fid:%lu] updating hosting view=%p identifier=%{public}@", v4, v5, v6, v7, 2u);
}

void sub_19ADC8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 24);
  v3 = 134218242;
  v4 = a1;
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "layoutSubviews view=%p identifier=%@", &v3, 0x16u);
}

void sub_19AE58(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(a2 + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "Encountered view without hosting controller: identifier %@, viewState %@", &v5, 0x16u);
}

void sub_19AEF0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%@: NAN cetner.x", &v2, 0xCu);
}

void sub_19AF68(uint64_t a1, id *a2, NSObject *a3)
{
  v4 = *(a1 + 8);
  v5 = [*a2 templateURL];
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "[fid:%lu] failed to instantiate template with url=%@", &v6, 0x16u);
}

void sub_19B01C(uint64_t a1, void *a2, os_log_t log)
{
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 80);
  if (v5)
  {
    v6 = [*(*a1 + 80) _printDiffFromSelfToEnvironment:*a2];
  }

  else
  {
    v6 = @"Previous environment is nil";
  }

  v7 = 134218242;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "[fid:%lu] [EnvironmentChange] FeedLayoutController: updateWithEnvironment:state:withTransaction: - environment changed:\n%@", &v7, 0x16u);
  if (v5)
  {
  }
}

void sub_19B118()
{
  sub_CC9C8(__stack_chk_guard);
  sub_CC9D4();
  sub_CC9AC(&dword_0, v0, v1, "[fid:%lu] notify geometry update (after view updates)", v2, v3, v4, v5, v6);
}

void sub_19B180()
{
  sub_CC9C8(__stack_chk_guard);
  sub_CC9D4();
  sub_CC9AC(&dword_0, v0, v1, "[fid:%lu] defer notify geometry update (until after view updates)", v2, v3, v4, v5, v6);
}

void sub_19B1E8()
{
  sub_CC9C8(__stack_chk_guard);
  sub_CC9D4();
  sub_CC9AC(&dword_0, v0, v1, "[fid:%lu] notify geometry update", v2, v3, v4, v5, v6);
}

void sub_19B250()
{
  sub_CC9C8(__stack_chk_guard);
  sub_CC9D4();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "[fid:%lu] updated geometry map = %@", v2, 0x16u);
}

void sub_19B2D4(uint64_t a1, NSObject *a2)
{
  v4 = *(*(a1 + 32) + 112);
  v5 = [*(a1 + 40) identifier];
  v6 = *(a1 + 48);
  v7 = 134218498;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  v11 = 2048;
  v12 = v6;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[fid:%lu] add hidden view for identifier=%@ view=%p", &v7, 0x20u);
}

void sub_19B444(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  *a1 = 138543362;
  *a3 = v8;
  _os_log_error_impl(&dword_0, a4, OS_LOG_TYPE_ERROR, "subview doesn't have reuse identifier: %{public}@", a1, 0xCu);
}

void sub_19B54C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 112);
  v4 = 134218242;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[fid:%lu] invalidating disconnected model %@", &v4, 0x16u);
}

void sub_19B5D8(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[fid:%lu] %lu layout(s) still with invalid children", buf, 0x16u);
}

void sub_19B630(unsigned __int16 *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "ns index:%lu already exists", &v3, 0xCu);
}

void sub_19B6FC(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 layoutAttributes];
  v6 = [v5 renderModel];
  v7 = [v6 identifier];
  v8 = [v7 tui_identifierToString];
  v9 = 138543618;
  v10 = a1;
  v11 = 2114;
  v12 = v8;
  _os_log_fault_impl(&dword_0, a3, OS_LOG_TYPE_FAULT, "invoke: preventing recursive invoke refId=%{public}@ view.id=%{public}@", &v9, 0x16u);
}

void sub_19B87C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 160);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[fid:%lu] flushPendingTransaction: sync transaction not created", &v3, 0xCu);
}

void sub_19B900(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = *(a1 + 160);
  v6 = [a2 to];
  v7 = [v6 sections];
  v8 = [v7 count];
  v9 = [a2 to];
  [v9 size];
  v10 = NSStringFromCGSize(v20);
  +[UIView inheritedAnimationDuration];
  v12 = 134218754;
  v13 = v5;
  v14 = 2048;
  v15 = v8;
  v16 = 2112;
  v17 = v10;
  v18 = 2048;
  v19 = v11;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "[fid:%lu] applyUpdate(feed) to.sections.count=%lu size=%@ animationDuration=%f", &v12, 0x2Au);
}

void sub_19BA30(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 160);
  v4 = 134218242;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[fid:%lu] handle action failed to find a handler! (%@)", &v4, 0x16u);
}

void sub_19BB14(uint64_t a1, NSObject *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "unsupported model for producing <TUIMenuItemModel>: %{public}@", &v5, 0xCu);
}

void sub_19BBB0(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  *a1 = 138543362;
  *a3 = v8;
  _os_log_error_impl(&dword_0, a4, OS_LOG_TYPE_ERROR, "unsupported model for producing <TUIImageModel>: %{public}@", a1, 0xCu);
}

void sub_19C008(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Avoiding marking visible image as volatile in background. Frame in feed: %@", buf, 0xCu);
}

void sub_19C074(void *a1)
{
  v2 = [a1 renderModel];
  v3 = [a1 renderModel];
  v10 = [v3 reuseIdentifier];
  sub_187898(&dword_0, v4, v5, "TUIControlView expects renderModel.focus to work - %@ (%@)", v6, v7, v8, v9, 2u);
}

void sub_19C138(void *a1)
{
  v7 = [a1 renderModel];
  sub_187898(&dword_0, v1, v2, "feedView: %@, renderModel=%@", v3, v4, v5, v6, 2u);
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}