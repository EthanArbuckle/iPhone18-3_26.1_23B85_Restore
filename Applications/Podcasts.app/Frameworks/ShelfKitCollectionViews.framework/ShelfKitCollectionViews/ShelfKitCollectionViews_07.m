void sub_C6AB4()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 refreshControl];

    if (v3)
    {
      if ([v3 isRefreshing])
      {
        [v3 endRefreshing];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_C6B68(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  ModernPageViewController.viewWillDisappear(_:)(a3);
}

Swift::Void __swiftcall ModernPageViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = *&v0[qword_4290E0];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [v3 setFrame:{v7, v9, v11, v13}];
LABEL_5:
      sub_BFFE0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_C6CAC(void *a1)
{
  v1 = a1;
  ModernPageViewController.viewWillLayoutSubviews()();
}

Swift::Void __swiftcall ModernPageViewController.viewSafeAreaInsetsDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "viewSafeAreaInsetsDidChange");
  sub_BFFE0();
}

void sub_C6D30(void *a1)
{
  v1 = a1;
  ModernPageViewController.viewSafeAreaInsetsDidChange()();
}

Swift::Void __swiftcall ModernPageViewController.didMove(toParent:)(UIViewController_optional toParent)
{
  v2 = v1;
  isa = toParent.value.super.super.isa;
  ObjectType = swift_getObjectType();
  v5 = swift_isaMask & *v2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "didMoveToParentViewController:", isa);
  sub_C6F9C();
  if ((*(v2 + qword_400E40) & 1) == 0)
  {
    *(v2 + qword_400E40) = 1;
    v6 = *(v5 + 80);
    v7 = *(v5 + 88);
    sub_3096A8();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v7;
    v9[4] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401980);
    sub_EC8C(&qword_400DF0, &unk_401980);
    sub_304F58();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
    sub_EC8C(&qword_4019A0, &unk_408F90);
    sub_304CF8();
    swift_endAccess();
  }
}

void sub_C6F9C()
{
  v1 = [v0 splitViewController];
  if (v1)
  {
    v4 = v1;
    v2 = [v1 isCollapsed];
    v3 = *(v0 + qword_400E98);
    *(v0 + qword_400E98) = v2;
    sub_BA3C8(v3);
  }
}

void sub_C701C(unsigned __int8 *a1)
{
  v2 = sub_302558();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v9)
    {
      v11 = Strong;
      sub_3093A8();

      sub_30B9B8();
      v12 = sub_302268();
      (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
      v18 = type metadata accessor for ModernPageViewController();
      v17[0] = v11;
      v13 = v11;
      v14 = [v13 view];
      sub_309388();

      sub_EB68(v8, &unk_4090C0);
      sub_EB68(v17, &unk_3FBB70);
      LOBYTE(v14) = sub_30AF68();
      sub_30AFB8();
      sub_30AFB8();
      if (sub_30AFB8() != v14)
      {
        sub_30AFB8();
      }

      v15 = sub_308078();
      swift_allocObject();
      v16 = sub_308068();
      v18 = v15;
      v19 = sub_CEB6C(&qword_401060, &type metadata accessor for DismissAction);
      v17[0] = v16;
      (*(v3 + 104))(v5, enum case for ActionMetricsBehavior.notProcessed(_:), v2);
      type metadata accessor for PageActionRunner();
      sub_CEB6C(&qword_401048, type metadata accessor for PageActionRunner);
      sub_307C38();

      (*(v3 + 8))(v5, v2);

      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
    }
  }
}

void sub_C73C4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  ModernPageViewController.didMove(toParent:)(v9);
}

Swift::Void __swiftcall ModernPageViewController.didReceiveMemoryWarning()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "didReceiveMemoryWarning");
  if (*&v0[qword_400D88])
  {
    sub_3024E8();
  }

  sub_30BCB8();
}

void sub_C74E0(void *a1)
{
  v1 = a1;
  ModernPageViewController.didReceiveMemoryWarning()();
}

uint64_t sub_C7528()
{

  sub_308EB8();

  return sub_C5814(0x6D61636542707061, 0xEF65766974634165, 0, 0);
}

void sub_C75A4(void *a1)
{
  v1 = a1;
  sub_C7528();
}

void sub_C75EC()
{

  sub_308EB8();

  sub_30A518();
}

void sub_C7640(void *a1)
{
  v1 = a1;
  sub_C75EC();
}

void sub_C7688()
{
  sub_309568();
  sub_304D58();

  sub_BBCD8(v0, v1, v2 | (v3 << 32));
  sub_BA7E8(v0, v1, v2 | (v3 << 32));
}

void sub_C7750(void *a1)
{
  v1 = a1;
  sub_C7688();
}

Swift::Void __swiftcall ModernPageViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v36.receiver = v1;
  v36.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v36, "traitCollectionDidChange:", isa);
  if (isa)
  {
    v4 = [(objc_class *)isa horizontalSizeClass];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (!isa || v4 != v6)
  {
    sub_BF764();
    sub_BF880();
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v7 = isa ? [(objc_class *)isa userInterfaceStyle]: 0;
    v8 = [v2 traitCollection];
    v9 = [v8 userInterfaceStyle];

    if (!isa || v7 != v9)
    {
      sub_C4B34();
    }
  }

  v10 = *&v2[qword_400D60];
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = qword_400D98;
    v13 = *&v2[qword_400D98];
    swift_unknownObjectRetain();
    v14 = [v2 traitCollection];
    v15 = [v14 horizontalSizeClass];

    if (v13 == v15)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      if (*&v2[v12])
      {
        swift_getObjectType();
        sub_30A4B8();
      }

      v16 = [v2 traitCollection];
      v17 = [v16 horizontalSizeClass];

      swift_unknownObjectRelease();
      *&v2[v12] = v17;
    }
  }

  v18 = qword_400E48;
  swift_beginAccess();
  v19 = *&v2[v18];
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + 32;
    v28 = *&v2[v18];

    v22 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_1DA1C(v21, v32);
      sub_1DA94(v32, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400E50);
      if (swift_dynamicCast())
      {
        if (*(&v30 + 1))
        {
          sub_12658(&v29, &v33);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_CB4B4(0, v22[2] + 1, 1, v22, &qword_401050, &unk_31E9C0, &qword_400E50);
          }

          v24 = v22[2];
          v23 = v22[3];
          if (v24 >= v23 >> 1)
          {
            v22 = sub_CB4B4((v23 > 1), v24 + 1, 1, v22, &qword_401050, &unk_31E9C0, &qword_400E50);
          }

          v22[2] = v24 + 1;
          sub_12658(&v33, &v22[5 * v24 + 4]);
          goto LABEL_27;
        }
      }

      else
      {
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
      }

      sub_EB68(&v29, &qword_400E58);
LABEL_27:
      v21 += 32;
      if (!--v20)
      {

        if (v22[2])
        {
          goto LABEL_36;
        }

LABEL_38:

        goto LABEL_39;
      }
    }
  }

  v22 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_38;
  }

LABEL_36:
  sub_12670((v22 + 4), &v33);

  v25 = v35;
  __swift_project_boxed_opaque_existential_1Tm(&v33, v34);
  v26 = [v2 traitCollection];
  (*(v25 + 24))();

  __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_39:
  v27 = [v2 traitCollection];
  sub_309668();
}

void sub_C7C3C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  ModernPageViewController.traitCollectionDidChange(_:)(v9);
}

void sub_C7CA8(void *a1, char a2)
{
  v3 = [a1 collectionView];
  if (v3)
  {
    v4 = v3;
    [v3 setEditing:a2 & 1];
  }

  else
  {
    __break(1u);
  }
}

void sub_C7D14(void *a1, uint64_t a2, Swift::Bool a3, Swift::Bool a4)
{
  v6 = a1;
  ModernPageViewController.setEditing(_:animated:)(a3, a4);
}

void sub_C7D70(void *a1)
{
  v1 = a1;
  sub_C6F9C();
}

uint64_t ModernPageViewController.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_3083C8();
  if (sub_301F58())
  {
    sub_C7F5C();
    if ((sub_3088E8() & 1) == 0)
    {
      return 1;
    }
  }

  sub_EB00(a2, v16, &unk_3FBB70);
  v6 = v17;
  if (v17)
  {
    v7 = __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_30D718();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "canPerformAction:withSender:", a1, v12);
  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_C7F5C()
{
  v1 = *(v0 + qword_400D60);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  swift_getObjectType();
  sub_309B78();
  sub_304D58();

  return v4;
}

uint64_t sub_C7FEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_30D448();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = ModernPageViewController.canPerformAction(_:withSender:)(a3, v10);

  sub_EB68(v10, &unk_3FBB70);
  return v8 & 1;
}

Swift::Void __swiftcall ModernPageViewController.validate(_:)(UICommand a1)
{
  ObjectType = swift_getObjectType();
  [(objc_class *)a1.super.super.isa action];
  sub_3083C8();
  if (sub_301F58() & 1) == 0 || (sub_C7F5C(), (sub_3088E8()))
  {
    v16.receiver = v1;
    v16.super_class = ObjectType;
    objc_msgSendSuper2(&v16, "validateCommand:", a1.super.super.isa);
    return;
  }

  sub_C7F5C();
  if (sub_3088E8())
  {
    v4 = objc_opt_self();
    v5 = [v4 mainBundle];
    v13._countAndFlagsBits = 0xAD0000A680E2676ELL;
    v18._object = 0x8000000000339830;
    v18._countAndFlagsBits = 0xD000000000000022;
    v20.value._countAndFlagsBits = 0;
    v20.value._object = 0;
    v6.super.isa = v5;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_301AB8(v18, v20, v6, v22, v13);

    v7 = sub_30C098();

    [(objc_class *)a1.super.super.isa setTitle:v7];

    v8 = [v4 mainBundle];
    v14._countAndFlagsBits = 0xAD0000A680E2676ELL;
    v19._object = 0x8000000000339830;
    v19._countAndFlagsBits = 0xD000000000000022;
    v21.value._countAndFlagsBits = 0;
    v21.value._object = 0;
    v9.super.isa = v8;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    sub_301AB8(v19, v21, v9, v23, v14);

    v15 = sub_30C098();
LABEL_12:

    [(objc_class *)a1.super.super.isa setDiscoverabilityTitle:v15];

    return;
  }

  v10 = *&v1[qword_400D60];
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    swift_getObjectType();
    sub_309B88();
    v12 = sub_30C098();
    [(objc_class *)a1.super.super.isa setTitle:v12];

    v15 = sub_30C098();
    goto LABEL_12;
  }
}

void sub_C8330(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  ModernPageViewController.validate(_:)(v4);
}

uint64_t sub_C839C()
{
  v1 = *(v0 + qword_400D60);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_309B78();
    sub_304D58();

    if (sub_3088E8())
    {
      sub_309B78();
      sub_304D48();

      sub_309BA8();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_C8490(void *a1)
{
  v1 = a1;
  sub_C8398();
}

uint64_t sub_C84D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v48 = a4;
  v46 = a3;
  v49 = a1;
  v45 = swift_isaMask & *v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_30BCF8();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_30BE68();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  v23 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v4 + v23, v15, &qword_401020);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_EB68(v15, &qword_401020);
    sub_30D568();
    (*(v17 + 56))(v12, 0, 1, v16);
    swift_beginAccess();
    sub_A32A0(v12, v4 + v23, &qword_401020);
    swift_endAccess();

    sub_30BF68();
    v24 = sub_30B858();
    (*(*(v24 - 8) + 56))(v7, 0, 1, v24);
    sub_308E98();
  }

  else
  {
    v40 = v7;
    v41 = v4;
    (*(v17 + 32))(v22, v15, v16);
    sub_30D568();
    sub_CEB6C(&qword_409020, &type metadata accessor for PageID);
    v26 = sub_30C018();
    v27 = *(v17 + 8);
    v27(v19, v16);
    if (v26)
    {
      return (v27)(v22, v16);
    }

    else
    {
      v37 = v17 + 8;
      v38 = v27;
      v39 = v22;
      v28 = v41;
      if (sub_BA1D4() == 2)
      {
        sub_30D568();
        v29 = *(v17 + 56);
        v36 = v16;
        v29(v12, 0, 1, v16);
        swift_beginAccess();
        sub_A32A0(v12, v28 + v23, &qword_401020);
        swift_endAccess();

        sub_308EB8();

        v30 = v42;
        sub_30BCE8();
        sub_30BCA8();
        (*(v43 + 8))(v30, v44);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_C8B94();

        v31 = v40;
        sub_30BF68();
        v32 = sub_30B858();
        (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v33 = v39;
        v34 = v36;
      }

      else
      {
        v33 = v39;
        v34 = v16;
      }

      return v38(v33, v34);
    }
  }
}

id sub_C8B94()
{
  v1 = v0;
  v15[1] = swift_isaMask & *v0;
  v17 = sub_30BC58();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_30BD28();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_400D90;
  sub_302448();
  swift_allocObject();

  v18 = sub_302438();
  sub_30B908();

  sub_30B948();

  sub_30BD18();
  sub_30B928();

  (*(v5 + 8))(v7, v16);
  sub_30BC48();
  sub_30B938();

  (*(v2 + 8))(v4, v17);
  sub_303958();
  v18 = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  v18 = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v9 = sub_30B8F8();

  *&v1[v8] = v9;

  sub_302818();
  sub_30B8E8();

  *&v1[qword_400E68] = v18;

  result = [v1 collectionView];
  if (result)
  {
    v11 = result;
    [result bounds];

    sub_3027C8();

    sub_30B8E8();

    *&v1[qword_400E00] = v18;

    v12 = qword_400D58;
    swift_beginAccess();
    if (*&v1[v12])
    {

      sub_9CA20(v13);
    }

    ShelvesDelegate.dependenciesDidChange(_:)(v14);

    *(*&v1[qword_400DA0] + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = *&v1[v8];

    sub_309628();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_C9124@<X0>(uint64_t *a1@<X8>)
{
  sub_308EE8();
  swift_allocObject();

  result = sub_308ED8();
  *a1 = result;
  return result;
}

id ModernPageViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout:a1];

  return v3;
}

void sub_C9204(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_CE3EC();
}

void sub_C92B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_CE41C();
}

void sub_C9320(uint64_t a1)
{

  swift_unknownObjectRelease();
  v2 = qword_4290C8;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  __swift_destroy_boxed_opaque_existential_1(a1 + qword_400E78);

  v4 = qword_4290D0;
  v5 = sub_30AA18();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_BA54C(*(a1 + qword_400D68));
  sub_EB68(a1 + qword_400DC0, &unk_4067B0);

  v6 = qword_400E88;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401018);
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  sub_EB68(a1 + qword_400E90, &qword_3FBDE0);

  sub_EB68(a1 + qword_400EA0, &qword_401020);
  sub_CEBB4(a1 + qword_400DB0, &type metadata accessor for PageContent);

  v8 = *(a1 + qword_400EB8 + 16);

  sub_EB68(a1 + qword_400DB8, &unk_408F50);

  v9 = *(a1 + qword_400EE0);
}

void (*sub_C96BC(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ModernPageViewController.pageHeaderHint.modify();
  return sub_A9A78;
}

void (*sub_C9738(uint64_t **a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ModernPageViewController.navigationTabIdentifier.modify(v2);
  return sub_A8F58;
}

uint64_t sub_C97A8()
{
  sub_CBC88();
}

uint64_t sub_C9800@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v7 = *a1;
  v11[6] = *a1;
  sub_308468();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010E0);
  if (swift_dynamicCast())
  {
    sub_12658(v9, v11);
    __swift_project_boxed_opaque_existential_1Tm(v11, v11[3]);
    sub_DC348(a2, a3, a4);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_EB68(v9, &qword_4010E8);
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_30D558(101);
    *&v9[0] = v7;
    sub_30D638();
    v12._object = 0x8000000000339D50;
    v12._countAndFlagsBits = 0xD000000000000063;
    sub_30C238(v12);
    result = sub_30D648();
    __break(1u);
  }

  return result;
}

void sub_C998C(unsigned __int8 *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a3 & 1) == 0 || (sub_303088())
    {
      if (v10)
      {
        swift_beginAccess();
        if (*(a6 + 40))
        {
          sub_12670(a6 + 16, v34);
          v13 = v35;
          v14 = v36;
          __swift_project_boxed_opaque_existential_1Tm(v34, v35);
          (*(v14 + 8))(v13, v14);
LABEL_9:

LABEL_10:
          __swift_destroy_boxed_opaque_existential_1(v34);
          return;
        }
      }

      else
      {
        swift_beginAccess();
        if (*(a6 + 40))
        {
          sub_12670(a6 + 16, v34);
          v15 = v35;
          v16 = v36;
          __swift_project_boxed_opaque_existential_1Tm(v34, v35);
          (*(v16 + 16))(v15, v16);
          goto LABEL_9;
        }
      }

      goto LABEL_20;
    }

    if ((sub_303098() & 1) != 0 || (v12 = v12, v17 = sub_BDC48(), v19 = v18, v12, !v17))
    {
LABEL_20:

      return;
    }

    if (v10)
    {
      v20 = a4[3];
      v21 = a4[4];
      __swift_project_boxed_opaque_existential_1Tm(a4, v20);
      (*(v21 + 24))(&v32, v17, v19, v12, a5, v20, v21);
      if (v33)
      {
        sub_12658(&v32, v34);
        v22 = v35;
        v23 = __swift_project_boxed_opaque_existential_1Tm(v34, v35);
        v33 = v22;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v32);
        (*(*(v22 - 8) + 16))(boxed_opaque_existential_0Tm, v23, v22);
        v25 = qword_400E48;
        swift_beginAccess();
        v26 = *&v12[v25];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v12[v25] = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = sub_CB35C(0, *(v26 + 2) + 1, 1, v26);
          *&v12[v25] = v26;
        }

        v29 = *(v26 + 2);
        v28 = *(v26 + 3);
        if (v29 >= v28 >> 1)
        {
          v26 = sub_CB35C((v28 > 1), v29 + 1, 1, v26);
        }

        *(v26 + 2) = v29 + 1;
        sub_1DA94(&v32, &v26[32 * v29 + 32]);
        *&v12[v25] = v26;
        swift_endAccess();

        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
      sub_EB68(&v32, &qword_400E58);
    }

    else
    {
      v30 = a4[3];
      v31 = a4[4];
      __swift_project_boxed_opaque_existential_1Tm(a4, v30);
      (*(v31 + 40))(v17, v19, v30, v31);

      swift_unknownObjectRelease();
    }
  }
}

id sub_C9CCC()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [v2 refreshControl];
    if (v3)
    {
      v4 = v3;

      return v4;
    }

    else
    {
      v5 = sub_C9D9C();
      [v2 setRefreshControl:?];

      v6 = [v2 refreshControl];
      if (v6)
      {
        v7 = v6;
        [v2 bringSubviewToFront:v6];
      }

      return v5;
    }
  }

  return result;
}

id sub_C9D9C()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + qword_400D60);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    if (sub_309B98())
    {
      v4 = [objc_allocWithZone(UIRefreshControl) init];
      sub_124C4(0, &qword_408080);
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      v7[2] = *(v1 + 80);
      v7[3] = *(v1 + 88);
      v7[4] = v5;
      v7[5] = v6;
      v8 = v4;
      v9 = sub_30D0C8();
      [v8 addAction:v9 forControlEvents:{4096, 0, 0, 0, sub_CEF64, v7}];
      swift_unknownObjectRelease();

      return v4;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_C9FAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong isRefreshing];

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        sub_C839C();
      }
    }
  }
}

uint64_t sub_CA074(uint64_t a1, void *a2)
{
  v3 = sub_301F38();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v17[-v8];
  sub_307C08();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = sub_30CE88();
  if (!v12)
  {
LABEL_9:

    return 0;
  }

  v13 = v12;
  v14 = [a2 indexPathForCell:v12];
  if (!v14)
  {

    goto LABEL_9;
  }

  v15 = v14;
  sub_301EB8();

  (*(v4 + 32))(v9, v6, v3);
  if (sub_301F18() > 1)
  {
    v16 = sub_301ED8();
    sub_301F08();

    (*(v4 + 8))(v9, v3);
    return v16;
  }

  else
  {
    if (sub_301F18() < 1)
    {
      (*(v4 + 8))(v9, v3);
    }

    else
    {
      sub_301F08();

      (*(v4 + 8))(v9, v3);
    }

    return 0;
  }
}

uint64_t sub_CA2B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_307B08();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_400DB0;
  swift_beginAccess();
  sub_CEC14(a1 + v9, v8, &type metadata accessor for PageContent);
  sub_CEC14(a1 + v9, v4, &type metadata accessor for PageContent);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_BCC0C(v8, v4);
  sub_EB68(v4, &qword_400D80);
  return sub_CEBB4(v8, &type metadata accessor for PageContent);
}

Swift::Void __swiftcall ModernPageViewController.handleNavigationPop(willScrollToTop:)(Swift::Bool willScrollToTop)
{
  v2 = v1;
  v4 = sub_301F38();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!willScrollToTop)
  {
    v9 = [v2 collectionView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 numberOfSections];

      if (v11 < 1)
      {
        return;
      }

      v12 = [v2 collectionView];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 numberOfItemsInSection:0];

        if (v14 < 1)
        {
          return;
        }

        v15 = [v2 collectionView];
        if (v15)
        {
          v16 = v15;
          sub_301EE8();
          isa = sub_301EA8().super.isa;
          (*(v5 + 8))(v8, v4);
          [v16 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:1];

          return;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_CA6B4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_CA860(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_CA96C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_CAA70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

size_t sub_CAB7C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401180);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF38) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF38) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_CAD6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401168);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_CAE78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_CAFC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401148);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_CB108(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400470);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_CB258(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_CB35C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC498);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_CB4B4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_CB5FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_CB718(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_CB81C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_CB978(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

size_t sub_CBAAC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_CBC88()
{
  v1 = qword_4290D8;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_CBCCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v144 = a2;
  ObjectType = swift_getObjectType();
  v5 = *v2;
  v6 = swift_isaMask;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010F0);
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v120 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  __chkstk_darwin(v8 - 8);
  v129 = &v120 - v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010F8);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v120 - v10;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401970);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v120 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401100);
  __chkstk_darwin(v12 - 8);
  v143 = &v120 - v13;
  v146 = *(&stru_20.maxprot + (v6 & v5));
  v141 = *(&stru_20.filesize + (v6 & v5));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v140 = *(AssociatedTypeWitness - 1);
  __chkstk_darwin(AssociatedTypeWitness);
  v139 = (&v120 - v14);
  v138 = sub_30BC58();
  v124 = *(v138 - 8);
  __chkstk_darwin(v138);
  v123 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_30BD28();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40);
  v137 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v120 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401018);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v120 - v22;
  *&v3[qword_400D58] = 0;
  *&v3[qword_400E48] = _swiftEmptyArrayStorage;
  *&v3[qword_400E20] = 0;
  v24 = qword_4290D0;
  v25 = enum case for FlowDestinationPageHeader.standard(_:);
  v26 = sub_30AA18();
  (*(*(v26 - 8) + 104))(&v3[v24], v25, v26);
  v27 = &v3[qword_400D70];
  *v27 = 0;
  v27[1] = 0;
  v28 = qword_400E80;
  type metadata accessor for PageNavigationItem();
  v29 = swift_allocObject();
  v29[3] = 0;
  v29[4] = 0;
  v29[2] = 0;
  *(v29 + 37) = 0;
  *&v3[v28] = v29;
  *&v3[qword_400D68] = 19;
  v30 = qword_400DC0;
  v31 = sub_301988();
  (*(*(v31 - 8) + 56))(&v3[v30], 1, 1, v31);
  v32 = qword_400E88;
  LOBYTE(v150[0]) = 0;
  sub_304DF8();
  (*(v21 + 32))(&v3[v32], v23, v20);
  v3[qword_400DF8] = 0;
  v33 = qword_400E90;
  v34 = sub_302218();
  (*(*(v34 - 8) + 56))(&v3[v33], 1, 1, v34);
  v3[qword_400E98] = 1;
  *&v3[qword_4290D8] = _swiftEmptyArrayStorage;
  *&v3[qword_400DE8] = _swiftEmptyArrayStorage;
  v35 = qword_400EA0;
  v36 = sub_30BE68();
  (*(*(v36 - 8) + 56))(&v3[v35], 1, 1, v36);
  v3[qword_400DB0] = 0;
  sub_307B08();
  swift_storeEnumTagMultiPayload();
  *&v3[qword_4290E0] = 0;
  *&v3[qword_400EA8] = 0x3FE0000000000000;
  *&v3[qword_400EB0] = 0;
  v37 = &v3[qword_400EB8];
  v37[1] = 0;
  v37[2] = 0;
  *v37 = 0;
  *&v3[qword_400EC0] = 0;
  v38 = &v3[qword_400EC8];
  *v38 = 0;
  *(v38 + 1) = 0;
  v38[16] = 0;
  v39 = &v3[qword_400DB8];
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F50) + 48);
  v41 = sub_30B0B8();
  (*(*(v41 - 8) + 56))(v39, 1, 1, v41);
  v39[v40] = 0;
  *&v3[qword_400ED0] = 0;
  v3[qword_400ED8] = 0;
  *&v3[qword_400EE0] = 0;
  v3[qword_400EE8] = 0;
  v3[qword_400EF0] = 1;
  v3[qword_400E40] = 0;
  *&v3[qword_400D98] = 0;
  sub_30B8E8();
  (*(v137 + 32))(&v3[qword_4290C8], v19, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401108);
  sub_30B8E8();
  *&v3[qword_400E28] = v150[0];
  sub_302528();
  sub_30B8C8();
  *&v3[qword_400D88] = *&v150[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E30);
  sub_30B8E8();
  sub_12658(v150, &v3[qword_400E78]);
  type metadata accessor for PageActionRunner();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *&v3[qword_400E70] = v42;
  sub_3098F8();
  swift_allocObject();

  v43 = sub_3098E8();
  *&v3[qword_400E30] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60);
  v44 = sub_CEB6C(&qword_401048, type metadata accessor for PageActionRunner);
  *&v150[0] = v42;
  *(&v150[0] + 1) = v44;

  v136 = a1;
  sub_30B908();
  v125 = v42;

  v137 = v43;
  *&v150[0] = v43;
  sub_30B908();

  sub_30A528();
  swift_allocObject();
  *&v150[0] = sub_30A4F8();
  sub_30B908();

  sub_302448();
  swift_allocObject();
  *&v150[0] = sub_302438();
  sub_30B908();

  sub_30B948();

  v45 = v120;
  sub_30BD18();
  sub_30B928();

  (*(v121 + 8))(v45, v122);
  v46 = v123;
  sub_30BC48();
  sub_30B938();

  (*(v124 + 8))(v46, v138);
  sub_303958();
  *&v150[0] = sub_303948();

  sub_30B908();

  sub_30B948();

  sub_302548();
  *&v150[0] = sub_302538();
  sub_30B908();

  sub_30B948();

  sub_308EE8();
  v47 = sub_30B8F8();

  sub_30B8E8();
  *&v3[qword_400E60] = *&v150[0];
  sub_302818();
  sub_30B8E8();
  *&v3[qword_400E68] = *&v150[0];
  sub_30B8E8();
  *&v3[qword_400E00] = *&v150[0];
  *&v3[qword_400D90] = v47;
  (*(v140 + 16))(v139, v144, AssociatedTypeWitness);
  swift_retain_n();
  v48 = v141;
  v49 = sub_3096B8();
  *&v3[qword_400D60] = v49;
  swift_unknownObjectRetain();
  v50 = v143;
  sub_3095E8();
  AssociatedTypeWitness = sub_309658();
  v140 = sub_3095A8();
  LOBYTE(v39) = sub_309648();
  type metadata accessor for ShelvesViewProvider(0);
  v51 = swift_allocObject();
  *(v51 + 16) = 0u;
  *(v51 + 32) = 0u;
  *(v51 + 48) = 0u;
  *(v51 + 64) = 0u;
  *(v51 + 80) = 0u;
  *(v51 + 96) = 0;
  v52 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_cachedShelfAttributes;
  v53 = sub_307178();
  (*(*(v53 - 8) + 56))(v51 + v52, 1, 1, v53);
  *(v51 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_collectionView) = 0;
  *(v51 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_registeredCellReuseIdentifiers) = &_swiftEmptySetSingleton;
  *(v51 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_registeredSupplementaryViewKinds) = &_swiftEmptySetSingleton;
  v54 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_visiblePageControls;
  v55 = sub_301F38();
  (*(*(v55 - 8) + 56))(v51 + v54, 1, 1, v55);
  *(v51 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_pageControlOffsets) = &_swiftEmptyDictionarySingleton;
  v56 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCacheTraitCollection;
  v57 = objc_allocWithZone(UITraitCollection);

  *(v51 + v56) = [v57 init];
  *(v51 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCache) = &_swiftEmptyDictionarySingleton;
  sub_EB00(v50, v51 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_deletableExtension, &qword_401100);
  *(v51 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_multiSelectableExtension) = AssociatedTypeWitness;
  *(v51 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_showsHeaders) = v140;
  *(v51 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_hideAllHeaderSeparators) = v39 & 1;
  *(v51 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640);

  sub_30B8E8();
  v58 = v47;

  sub_EB68(v50, &qword_401100);
  *&v3[qword_400DA0] = v51;
  v148 = v49;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401110);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v151 = 0;
    memset(v150, 0, sizeof(v150));
  }

  v59 = v48;
  v60 = v146;
  v61 = sub_309658();
  v62 = objc_allocWithZone(type metadata accessor for ShelvesDelegate());
  v124 = v58;

  v64 = sub_17F668(v63, v150, v61);

  *&v3[qword_400DA8] = v64;
  v65 = [objc_allocWithZone(UICollectionViewLayout) init];
  v149.receiver = v3;
  v149.super_class = ObjectType;
  v66 = objc_msgSendSuper2(&v149, "initWithCollectionViewLayout:", v65);

  v67 = qword_400E70;
  swift_unknownObjectWeakAssign();
  v68 = *&v66[v67];
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = swift_allocObject();
  v70[2] = v59;
  v70[3] = v60;
  v70[4] = v69;
  v71 = *(v68 + 24);
  *(v68 + 24) = sub_CF454;
  *(v68 + 32) = v70;
  v72 = v66;

  sub_1EBD0(v71);

  v73.super.super.isa = v72;
  sub_3098D8(v73);
  v74 = *(v72 + qword_400E80);

  v75 = [(objc_class *)v72 navigationItem];

  v76 = *(v74 + 16);
  *(v74 + 16) = v75;

  *&v150[0] = sub_309588();
  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = swift_allocObject();
  v78[2] = v59;
  v78[3] = v60;
  v78[4] = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F80);
  AssociatedTypeWitness = &protocol conformance descriptor for CurrentValueSubject<A, B>;
  sub_EC8C(&qword_401118, &unk_408F80);
  sub_304F58();

  v79 = qword_400DE8;
  swift_beginAccess();
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
  ObjectType = sub_EC8C(&qword_4019A0, &unk_408F90);
  sub_304CF8();
  swift_endAccess();

  v144 = v49;
  v80 = v146;
  v81 = sub_309578();
  swift_getObjectType();
  *&v150[0] = v81;
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = swift_allocObject();
  v83[2] = v59;
  v83[3] = v80;
  v83[4] = v82;
  v84 = v72;
  sub_304F58();
  swift_unknownObjectRelease();

  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v85 = [objc_opt_self() defaultCenter];
  [v85 addObserver:v84 selector:"splitControllerChanged" name:UIViewControllerShowDetailTargetDidChangeNotification object:0];

  v86 = v141;
  v87 = v146;
  *&v150[0] = sub_3095D8();
  v88 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = swift_allocObject();
  v89[2] = v86;
  v89[3] = v87;
  v89[4] = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408FA0);
  sub_EC8C(&qword_401120, &unk_408FA0);
  sub_304F58();

  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v90 = qword_400DA8;
  v91 = *(v84 + qword_400DA8);
  ShelvesDelegate.addDefaultScrollCoordinators()();

  v92 = *(v84 + v90);
  v140 = v84;
  v93 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_uberCellPublisher;
  swift_beginAccess();
  v148 = *(v92 + v93);
  v94 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v95 = swift_allocObject();
  v95[2] = v86;
  v96 = v146;
  v95[3] = v146;
  v95[4] = v94;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408FB0);
  sub_EC8C(&qword_401128, &unk_408FB0);
  sub_304F58();

  v138 = v79;
  v139 = v72;
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v97 = v141;
  v148 = sub_309568();
  v98 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v99 = swift_allocObject();
  v99[2] = v97;
  v99[3] = v96;
  v99[4] = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408FC0);
  sub_EC8C(&qword_401130, &unk_408FC0);
  sub_304F58();

  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v100 = v97;
  v101 = v146;
  v148 = sub_3095A8();
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401980);
  v122 = sub_EC8C(&qword_400DF0, &unk_401980);
  v102 = v126;
  sub_304F48();

  v103 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v104 = swift_allocObject();
  v104[2] = v100;
  v104[3] = v101;
  v104[4] = v103;
  sub_EC8C(&unk_401990, &unk_401970);
  v105 = v128;
  sub_304F58();

  (*(v127 + 8))(v102, v105);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v106 = v100;
  v148 = sub_3095F8();
  sub_124C4(0, &qword_3FBF20);
  v107 = sub_30C8F8();
  v147 = v107;
  v108 = sub_30C8E8();
  v109 = v129;
  (*(*(v108 - 8) + 56))(v129, 1, 1, v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401138);
  sub_EC8C(&unk_408FD0, &qword_401138);
  sub_CF4A8();
  v110 = v130;
  sub_304F28();
  sub_EB68(v109, &unk_408F30);

  v111 = swift_allocObject();
  v112 = v140;
  swift_unknownObjectWeakInit();
  v113 = swift_allocObject();
  v113[2] = v106;
  v113[3] = v101;
  v113[4] = v111;
  sub_EC8C(&unk_408FE0, &qword_4010F8);
  v114 = v132;
  sub_304F58();

  (*(v131 + 8))(v110, v114);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v148 = sub_309598();
  v115 = v133;
  sub_304F38();

  v116 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v117 = swift_allocObject();
  v117[2] = v106;
  v117[3] = v101;
  v117[4] = v116;
  sub_EC8C(&qword_401A10, &qword_4010F0);
  v118 = v135;
  sub_304F58();

  (*(v134 + 8))(v115, v118);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  swift_unknownObjectRelease();

  return v112;
}

uint64_t sub_CDB28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_CDB68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_CDBF0()
{
  result = qword_400DD8;
  if (!qword_400DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_400DD8);
  }

  return result;
}

uint64_t sub_CDC44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_CDC9C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_CDD08()
{
  v1 = sub_3026D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_CDDA4(uint64_t a1)
{
  v3 = *(sub_3026D8() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_C4F2C(a1, v1 + v4, v5);
}

uint64_t sub_CDE60()
{
  if (*(v0 + qword_400EB0))
  {

    sub_306EC8();
  }

  return result;
}

void sub_CDEB8(uint64_t a1)
{
  sub_CDE60();
  *(v1 + qword_400EB0) = a1;

  sub_BDE70();
}

void sub_CDF14()
{
  v1 = *(v0 + qword_4290E0);
  sub_302768();
}

void sub_CDF68(void *a1)
{
  sub_CDF14();
  v3 = *(v1 + qword_4290E0);
  *(v1 + qword_4290E0) = a1;
  v4 = a1;

  sub_BDB84();
}

void sub_CDFBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401018);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - v3;
  *(v0 + qword_400D58) = 0;
  *(v0 + qword_400E48) = _swiftEmptyArrayStorage;
  *(v0 + qword_400E20) = 0;
  v5 = qword_4290D0;
  v6 = enum case for FlowDestinationPageHeader.standard(_:);
  v7 = sub_30AA18();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  v8 = (v0 + qword_400D70);
  *v8 = 0;
  v8[1] = 0;
  v9 = qword_400E80;
  type metadata accessor for PageNavigationItem();
  v10 = swift_allocObject();
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = 0;
  *(v10 + 37) = 0;
  *(v0 + v9) = v10;
  *(v0 + qword_400D68) = 19;
  v11 = qword_400DC0;
  v12 = sub_301988();
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = qword_400E88;
  sub_BA1A4();
  (*(v2 + 32))(v0 + v13, v4, v1);
  *(v0 + qword_400DF8) = 0;
  v14 = qword_400E90;
  v15 = sub_302218();
  (*(*(v15 - 8) + 56))(v0 + v14, 1, 1, v15);
  *(v0 + qword_400E98) = 1;
  *(v0 + qword_4290D8) = _swiftEmptyArrayStorage;
  *(v0 + qword_400DE8) = _swiftEmptyArrayStorage;
  v16 = qword_400EA0;
  v17 = sub_30BE68();
  (*(*(v17 - 8) + 56))(v0 + v16, 1, 1, v17);
  *(v0 + qword_400DB0) = 0;
  sub_307B08();
  swift_storeEnumTagMultiPayload();
  *(v0 + qword_4290E0) = 0;
  *(v0 + qword_400EA8) = 0x3FE0000000000000;
  *(v0 + qword_400EB0) = 0;
  v18 = (v0 + qword_400EB8);
  v18[1] = 0;
  v18[2] = 0;
  *v18 = 0;
  *(v0 + qword_400EC0) = 0;
  v19 = v0 + qword_400EC8;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  v20 = v0 + qword_400DB8;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F50) + 48);
  v22 = sub_30B0B8();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  *(v20 + v21) = 0;
  *(v0 + qword_400ED0) = 0;
  *(v0 + qword_400ED8) = 0;
  *(v0 + qword_400EE0) = 0;
  *(v0 + qword_400EE8) = 0;
  *(v0 + qword_400EF0) = 1;
  *(v0 + qword_400E40) = 0;
  *(v0 + qword_400D98) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_CE44C()
{
  v1 = *(v0 + qword_400E70);
  sub_CEB6C(&qword_401048, type metadata accessor for PageActionRunner);
  return v1;
}

uint64_t sub_CE4B0@<X0>(uint64_t *a1@<X8>)
{
  result = ModernPageViewController.navigationTabIdentifier.getter();
  *a1 = result;
  return result;
}

uint64_t sub_CE4DC(uint64_t *a1)
{
  v1 = *a1;
  sub_BA528(*a1);
  return ModernPageViewController.navigationTabIdentifier.setter(v1);
}

__n128 sub_CE51C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_CE52C()
{
  v16 = &value witness table for Builtin.NativeObject + 64;
  v17 = "\b";
  sub_CE9BC(319, &qword_400F78, &type metadata accessor for BaseObjectGraph, &type metadata accessor for ActionDispatcher);
  if (v1 <= 0x3F)
  {
    v18 = *(v0 - 8) + 64;
    v19 = &value witness table for Builtin.NativeObject + 64;
    v20 = &value witness table for Builtin.NativeObject + 64;
    v21 = &value witness table for Builtin.NativeObject + 64;
    v22 = &value witness table for Builtin.NativeObject + 64;
    v23 = &value witness table for Builtin.NativeObject + 64;
    v24 = &value witness table for Builtin.NativeObject + 64;
    v25 = &value witness table for Builtin.UnknownObject + 64;
    v26 = &unk_31E718;
    v27 = &unk_31E730;
    v28 = &value witness table for Builtin.BridgeObject + 64;
    v29 = &unk_31E730;
    v2 = sub_30AA18();
    if (v3 <= 0x3F)
    {
      v30 = *(v2 - 8) + 64;
      v31 = &unk_31E748;
      v32 = &value witness table for Builtin.NativeObject + 64;
      v33 = &unk_31E760;
      v34 = &unk_31E778;
      sub_CE9BC(319, &qword_400F80, &type metadata accessor for EntityIdentifier, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v35 = *(v4 - 8) + 64;
        v36 = &unk_31E730;
        sub_CE96C();
        if (v7 <= 0x3F)
        {
          v37 = *(v6 - 8) + 64;
          v38 = &unk_31E790;
          sub_CE9BC(319, &qword_400F90, &type metadata accessor for InteractionContext.Page, &type metadata accessor for Optional);
          if (v9 <= 0x3F)
          {
            v39 = *(v8 - 8) + 64;
            v40 = &unk_31E790;
            v41 = &value witness table for Builtin.BridgeObject + 64;
            v42 = &value witness table for Builtin.BridgeObject + 64;
            sub_CE9BC(319, &qword_400F98, &type metadata accessor for PageID, &type metadata accessor for Optional);
            if (v11 <= 0x3F)
            {
              v43 = *(v10 - 8) + 64;
              v12 = sub_307B08();
              if (v13 <= 0x3F)
              {
                v44 = *(v12 - 8) + 64;
                v45 = &unk_31E730;
                v46 = &value witness table for Builtin.Int64 + 64;
                v47 = &unk_31E730;
                v48 = &unk_31E7A8;
                v49 = &value witness table for Builtin.Int64 + 64;
                v50 = &unk_31E7C0;
                sub_CE9BC(319, &unk_4002A8, &type metadata accessor for Header, &type metadata accessor for Optional);
                if (v14 <= 0x3F)
                {
                  swift_getTupleTypeLayout2();
                  v51 = &v15;
                  v52 = &unk_31E730;
                  v53 = &unk_31E790;
                  v54 = &unk_31E730;
                  v55 = &unk_31E790;
                  v56 = &unk_31E790;
                  v57 = &unk_31E790;
                  v58 = &value witness table for Builtin.Int64 + 64;
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_CE96C()
{
  if (!qword_400F88)
  {
    v0 = sub_304E38();
    if (!v1)
    {
      atomic_store(v0, &qword_400F88);
    }
  }
}

void sub_CE9BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_CEA84()
{
  result = qword_400FA0;
  if (!qword_400FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_400FA0);
  }

  return result;
}

uint64_t sub_CEAD8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_CEB6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_CEBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_CEC14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_CEC7C()
{
  v1 = sub_3026D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_302478();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_CEDC4()
{
  sub_3026D8();
  sub_302478();

  return sub_C573C();
}

uint64_t sub_CEE90()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_CEEC8()
{
  v1 = *(v0 + 16);
  result = [v1 isRefreshing];
  if (result)
  {

    return [v1 endRefreshing];
  }

  return result;
}

uint64_t sub_CEF24()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_CEF88()
{
  v1 = *(sub_307B08() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v7 = sub_30BE68();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
      v8 = *(sub_307788() + 20);
      v9 = sub_30B858();
      (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

      break;
    case 2:
      v6 = sub_30A078();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      break;
    case 1:

      break;
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_CF154()
{
  v1 = *(sub_307B08() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_BE0A0(v2, v3);
}

uint64_t sub_CF1E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_CF24C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_CF29C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_CF2EC(char a1, unsigned __int8 a2)
{
  if (*(v2 + 16) == 1)
  {
    v4 = a2;
    if ((sub_303088() & 1) == 0)
    {
      a1 &= (v4 - 1) < 2;
    }
  }

  return a1 & 1;
}

uint64_t sub_CF33C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_CF374@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

uint64_t sub_CF3B4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_CF41C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_CF4A8()
{
  result = qword_3FCF68;
  if (!qword_3FCF68)
  {
    sub_124C4(255, &qword_3FBF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCF68);
  }

  return result;
}

uint64_t sub_CF528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4067B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_CF598(uint64_t a1, uint64_t a2)
{
  v4 = sub_307B08();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_CF698()
{
  v1 = [objc_allocWithZone(UINavigationBarAppearance) init];
  if ((*(v0 + 44) & 1) != 0 || (*(v0 + 43) & 1) != 0 || *(v0 + 41) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_315430;
    *(inited + 32) = NSForegroundColorAttributeName;
    v3 = objc_opt_self();
    v4 = NSForegroundColorAttributeName;
    v5 = [v3 clearColor];
    *(inited + 64) = sub_A803C();
    *(inited + 40) = v5;
    sub_2D6CB0(inited);
    swift_setDeallocating();
    sub_CFA98(inited + 32);
    v6 = 1;
  }

  else
  {
    sub_2D6CB0(_swiftEmptyArrayStorage);
    v6 = 0;
  }

  [v1 _setTitleControlHidden:v6];
  type metadata accessor for Key(0);
  sub_CFA40();
  isa = sub_30BF88().super.isa;
  [v1 setTitleTextAttributes:isa];

  v8 = *(v0 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_28;
  }

  v9 = v1;
  [v8 setScrollEdgeAppearance:v9];
  v10 = *(v0 + 16);
  if (!v10)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = v10;
  [v11 setStandardAppearance:v9];

  v12 = *(v0 + 16);
  if (!v12)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  if (*(v0 + 40))
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  [v12 setBackButtonDisplayMode:v13];
  v14 = *(v0 + 16);
  if (!v14)
  {
    goto LABEL_30;
  }

  if (*(v0 + 40) == 1 && *(v0 + 32))
  {
    v15 = v14;

    v16 = sub_30C098();
  }

  else
  {
    v17 = v14;
    v16 = 0;
  }

  [v14 setBackButtonTitle:v16];

  v18 = *(v0 + 16);
  if (!v18)
  {
    goto LABEL_31;
  }

  if ((*(v0 + 40) & 1) != 0 || !*(v0 + 32))
  {
    v21 = v18;
    v20 = 0;
  }

  else
  {
    v19 = v18;

    v20 = sub_30C098();
  }

  [v18 setTitle:v20];

  v22 = *(v0 + 16);
  if (!v22)
  {
    goto LABEL_32;
  }

  v23 = v22;

  if (*(v0 + 32))
  {

    v24 = sub_30C098();
  }

  else
  {
    v24 = 0;
  }

  [v23 setAccessibilityIdentifier:v24];
}

uint64_t sub_CF9DC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_CFA40()
{
  result = qword_3FB410;
  if (!qword_3FB410)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FB410);
  }

  return result;
}

uint64_t sub_CFA98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EpisodeUpsellBannerDataProvider.__allocating_init(asPartOf:)()
{
  swift_allocObject();
  v0 = sub_D3784();

  return v0;
}

uint64_t EpisodeUpsellBannerDataProvider.init(asPartOf:)()
{
  v0 = sub_D3784();

  return v0;
}

uint64_t EpisodeUpsellBannerDataProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_EB68(v0 + 64, &qword_401320);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  return v0;
}

uint64_t EpisodeUpsellBannerDataProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_EB68(v0 + 64, &qword_401320);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t NowPlayingEpisodeUpsellBannerModel.subscriptionTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NowPlayingEpisodeUpsellBannerModel.showSpecificUpsellCopy.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NowPlayingEpisodeUpsellBannerModel.genericUpsellCopy.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *NowPlayingEpisodeUpsellBannerModel.channelImage.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t NowPlayingEpisodeUpsellBannerModel.onBannerAppearBlock.getter()
{
  v1 = *(v0 + 80);
  sub_A0EF8(v1, *(v0 + 88));
  return v1;
}

uint64_t sub_CFD9C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 96) = sub_D40F4;
  *(a2 + 104) = v5;
  return result;
}

uint64_t NowPlayingEpisodeUpsellBannerModel.primaryActionBlock.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t NowPlayingEpisodeUpsellBannerModel.primaryActionBlock.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t sub_CFE94(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 112) = sub_D3DE8;
  *(a2 + 120) = v5;
  return result;
}

uint64_t NowPlayingEpisodeUpsellBannerModel.tapCloseButtonBlock.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t NowPlayingEpisodeUpsellBannerModel.tapCloseButtonBlock.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_CFF98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_401328;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_D0048(uint64_t a1)
{
  v3 = qword_401328;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t NowPlayingEpisodeUpsellBannerProvider.__allocating_init(dataProvider:metricsController:episodeAdamId:presentationType:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + qword_401328) = _swiftEmptyArrayStorage;
  *(v4 + qword_401330) = a1;
  *(v4 + qword_401338) = a2;
  sub_12670(a1 + 16, v8);
  sub_EB00(a1 + 64, v7, &qword_401320);

  sub_303D68();

  v5 = sub_30ABB8();

  return v5;
}

uint64_t NowPlayingEpisodeUpsellBannerProvider.init(dataProvider:metricsController:episodeAdamId:presentationType:)(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_401328) = _swiftEmptyArrayStorage;
  *(v2 + qword_401330) = a1;
  *(v2 + qword_401338) = a2;
  sub_12670(a1 + 16, v7);
  sub_EB00(a1 + 64, v6, &qword_401320);

  sub_303D68();

  v4 = sub_30ABB8();

  return v4;
}

uint64_t sub_D035C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30);
  __chkstk_darwin(v5 - 8);
  v35 = &v26 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401340);
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = &v26 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401348);
  v38 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401350);
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  __chkstk_darwin(v9);
  v32 = &v26 - v11;
  sub_30ABC8();
  v12 = sub_30ABD8();
  v27 = v2;
  v39 = v12(a1, a2);
  swift_allocObject();
  swift_weakInit();
  sub_304CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401360);
  sub_EC8C(&qword_401368, &qword_401358);
  sub_EC8C(&qword_401370, &qword_401360);
  v13 = v29;
  sub_304F68();

  v14 = swift_allocObject();
  v15 = v28;
  *(v14 + 16) = v27;
  *(v14 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401378);
  sub_EC8C(&qword_401380, &qword_401340);
  v17 = v30;
  v16 = v31;
  sub_304ED8();

  (*(v33 + 8))(v13, v16);
  sub_124C4(0, &qword_3FBF20);
  v18 = sub_30C8F8();
  v39 = v18;
  v19 = sub_30C8E8();
  v20 = v35;
  (*(*(v19 - 8) + 56))(v35, 1, 1, v19);
  sub_EC8C(&qword_401388, &qword_401348);
  sub_CF4A8();
  v21 = v32;
  v22 = v34;
  sub_304F28();
  sub_EB68(v20, &unk_408F30);

  (*(v38 + 8))(v17, v22);
  sub_EC8C(&qword_401390, &qword_401350);
  v23 = v36;
  v24 = sub_304E88();
  (*(v37 + 8))(v21, v23);
  return v24;
}

uint64_t sub_D08F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E0);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = v36 - v3;
  v43 = sub_3041E8();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v5 - 8);
  v44 = v36 - v6;
  v48 = sub_303398();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3030F8();
  __chkstk_darwin(v8 - 8);
  v38 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_3031C8();
  __chkstk_darwin(v39);
  v40 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v45 = v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014F8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401500);
  v52 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v36 - v18;
  v20 = sub_30A4E8();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  if (!v24)
  {

LABEL_10:
    v56 = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401508);
    sub_304DB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD88);
    sub_304DA8();
    (*(v14 + 8))(v16, v13);
    sub_EC8C(&qword_401530, &qword_401500);
    v34 = sub_304E88();
LABEL_11:
    result = (*(v52 + 8))(v19, v17);
    goto LABEL_12;
  }

  v37 = Strong;

  v36[1] = v24;
  if (sub_30A6B8())
  {
    sub_3076F8();
    if (swift_dynamicCastClass())
    {
      (*(v21 + 104))(v23, enum case for FlowPresentationContext.presentSheetOverNowPlaying(_:), v20);
      sub_3076D8();
    }
  }

  sub_30A698();
  if (!v26)
  {
    v56 = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401508);
    sub_304DB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD88);
    sub_304DA8();
    (*(v14 + 8))(v16, v13);
    sub_EC8C(&qword_401530, &qword_401500);
    v34 = sub_304E88();

    goto LABEL_11;
  }

  v56 = xmmword_31EB70;
  v57 = 0u;
  memset(v58, 0, sizeof(v58));
  sub_3030B8();
  sub_303258();
  v27 = v45;
  sub_3031B8();
  sub_6D8C0(v27, v40);
  sub_3030C8();
  sub_303118();
  v28 = sub_303DF8();
  (*(*(v28 - 8) + 56))(v44, 1, 1, v28);
  v29 = v41;
  sub_304198();
  sub_30C778();
  sub_303A08();
  (*(v42 + 8))(v29, v43);
  v30 = [objc_opt_self() mainScreen];
  [v30 scale];

  v31 = v46;
  sub_303358();
  sub_12670(*(v37 + qword_401330) + 104, v55);
  __swift_project_boxed_opaque_existential_1Tm(v55, v55[3]);
  v54 = sub_302128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401508);
  sub_EC8C(&qword_401520, &qword_401518);
  v32 = v49;
  sub_304ED8();

  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_EC8C(&qword_401528, &qword_4014E0);
  v33 = v51;
  v34 = sub_304E88();

  (*(v50 + 8))(v32, v33);
  (*(v47 + 8))(v31, v48);
  result = sub_6D924(v27);
LABEL_12:
  *v53 = v34;
  return result;
}

__n128 sub_D1378@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    sub_308D58();

    v28 = v6;
    v7 = v6;
    sub_30A6A8();
    sub_308D18();

    if (sub_30A678())
    {
      v27 = sub_308018();
    }

    else
    {
      v27 = 0;
    }

    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = v8;
    v9[4] = v4;
    sub_30AF48();

    sub_30AF38();
    v10 = sub_30AF28();

    v26 = sub_184500(a2, v10);

    v25 = sub_30A6D8();
    v12 = v11;
    v13 = sub_30A668();
    v15 = v14;
    v16 = sub_30A688();
    v18 = v17;
    v19 = sub_30A6B8();
    v20 = sub_30A678();

    *&v29 = v25;
    *(&v29 + 1) = v12;
    v30.n128_u64[0] = v13;
    v30.n128_u64[1] = v15;
    *&v31 = v16;
    *(&v31 + 1) = v18;
    *&v32 = v28;
    *(&v32 + 1) = v19;
    *&v33 = v20;
    *(&v33 + 1) = v27;
    *&v34 = sub_D4058;
    *(&v34 + 1) = v9;
    *&v35 = UINavigationBar.overrideBackButtonStyle.setter;
    *(&v35 + 1) = 0;
    *&v36 = UINavigationBar.overrideBackButtonStyle.setter;
    *(&v36 + 1) = 0;
    v37 = !v26;
    UINavigationBar.overrideBackButtonStyle.setter(&v29);
  }

  else
  {
    sub_D3EE8(&v29);
  }

  v21 = v36;
  *(a3 + 96) = v35;
  *(a3 + 112) = v21;
  *(a3 + 128) = v37;
  v22 = v32;
  *(a3 + 32) = v31;
  *(a3 + 48) = v22;
  v23 = v34;
  *(a3 + 64) = v33;
  *(a3 + 80) = v23;
  result = v30;
  *a3 = v29;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_D15F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_D1A24(a1, a2, sub_D38E8, v8);
}

uint64_t sub_D1688(__int128 *a1, uint64_t (*a2)(_OWORD *), uint64_t a3)
{
  v6 = sub_306E68();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_306E88();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[7];
  v43 = a1[6];
  v44 = v14;
  v45 = *(a1 + 128);
  v15 = a1[3];
  v39 = a1[2];
  v40 = v15;
  v16 = a1[5];
  v41 = a1[4];
  v42 = v16;
  v17 = a1[1];
  v37 = *a1;
  v38 = v17;
  if ([objc_opt_self() isMainThread])
  {
    v18 = a1[7];
    v34[6] = a1[6];
    v34[7] = v18;
    v35 = *(a1 + 128);
    v19 = a1[3];
    v34[2] = a1[2];
    v34[3] = v19;
    v20 = a1[5];
    v34[4] = a1[4];
    v34[5] = v20;
    v21 = a1[1];
    v34[0] = *a1;
    v34[1] = v21;
    return a2(v34);
  }

  else
  {
    sub_124C4(0, &qword_3FBF20);
    v33 = sub_30C8F8();
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    v24 = v44;
    *(v23 + 128) = v43;
    *(v23 + 144) = v24;
    *(v23 + 160) = v45;
    v25 = v40;
    *(v23 + 64) = v39;
    *(v23 + 80) = v25;
    v26 = v42;
    *(v23 + 96) = v41;
    *(v23 + 112) = v26;
    v27 = v38;
    *(v23 + 32) = v37;
    *(v23 + 48) = v27;
    v36[4] = sub_D3FA0;
    v36[5] = v23;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 1107296256;
    v36[2] = sub_914CC;
    v36[3] = &block_descriptor_19;
    v32 = _Block_copy(v36);

    sub_EB00(&v37, v34, &qword_401378);

    sub_306E78();
    *&v34[0] = _swiftEmptyArrayStorage;
    sub_943D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860);
    v31 = v10;
    sub_EC8C(&qword_40D770, &qword_408860);
    sub_30D488();
    v29 = v32;
    v28 = v33;
    sub_30C908();
    _Block_release(v29);

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v31);
  }
}

uint64_t sub_D1A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v39 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401340);
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  __chkstk_darwin(v9);
  v42 = &v38 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014A0);
  v51 = *(v48 - 8);
  __chkstk_darwin(v48);
  v43 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014A8);
  v14 = *(v13 - 8);
  v49 = v13;
  v50 = v14;
  __chkstk_darwin(v13);
  v44 = &v38 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014B0);
  v17 = *(v16 - 8);
  v52 = v16;
  v53 = v17;
  __chkstk_darwin(v16);
  v47 = &v38 - v18;
  sub_30ABC8();
  v19 = sub_30ABD8();
  v38 = v4;
  v54 = v19(a1, a2);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a3;
  v40 = a4;
  v21[4] = a4;

  sub_304CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401360);
  sub_EC8C(&qword_401368, &qword_401358);
  sub_EC8C(&qword_401370, &qword_401360);
  v22 = v42;
  sub_304F68();

  v23 = swift_allocObject();
  v24 = v39;
  *(v23 + 16) = v38;
  *(v23 + 24) = v24;
  sub_EC8C(&qword_401380, &qword_401340);

  v25 = v43;
  v26 = v45;
  sub_304ED8();

  (*(v46 + 8))(v22, v26);
  v27 = swift_allocObject();
  v28 = v40;
  v29 = v41;
  *(v27 + 16) = v41;
  *(v27 + 24) = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014B8);
  sub_EC8C(&qword_4014C0, &qword_4014A0);
  sub_EC8C(&qword_4014C8, &qword_4014B8);
  v30 = v44;
  v31 = v48;
  sub_304EF8();

  (*(v51 + 8))(v25, v31);
  sub_EC8C(&qword_4014D0, &qword_4014A8);
  v32 = v47;
  v33 = v49;
  sub_304F08();
  (*(v50 + 8))(v30, v33);
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  *(v34 + 24) = v28;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_D3E4C;
  *(v35 + 24) = v34;
  sub_EC8C(&qword_4014D8, &qword_4014B0);

  v36 = v52;
  sub_304F58();

  (*(v53 + 8))(v32, v36);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
  sub_EC8C(&qword_4019A0, &unk_408F90);
  sub_304CF8();
  swift_endAccess();
}

uint64_t sub_D217C@<X0>(uint64_t *a1@<X0>, void (*a2)(__int128 *)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v72 = a3;
  v73 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E0);
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v64 = &v49 - v7;
  v8 = sub_3041E8();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v10 - 8);
  v59 = &v49 - v11;
  v12 = sub_303398();
  v62 = *(v12 - 8);
  v63 = v12;
  __chkstk_darwin(v12);
  v61 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3030F8();
  __chkstk_darwin(v14 - 8);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_3031C8();
  __chkstk_darwin(v54);
  v55 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v60 = &v49 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014F0);
  v70 = *(v19 - 8);
  v71 = v19;
  __chkstk_darwin(v19);
  v69 = &v49 - v20;
  v21 = sub_30A4E8();
  v52 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014F8);
  v67 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v49 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401500);
  v68 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v49 - v28;
  v30 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  if (!v30)
  {

LABEL_6:
    sub_D3EE8(&v84);
    v81 = v89;
    v82 = v90;
    v83 = v91;
    v77 = v86[0];
    v78 = v86[1];
    v79 = v87;
    v80 = v88;
    v75 = v84;
    v76 = v85;
    v73(&v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401508);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD88);
    v36 = v69;
    sub_304DC8();
    sub_EC8C(&qword_401510, &qword_4014F0);
    v37 = v71;
    v38 = sub_304E88();
    result = (*(v70 + 8))(v36, v37);
    *a4 = v38;
    return result;
  }

  v50 = a4;
  v32 = Strong;

  v33 = sub_30ABA8();
  v51 = v32;

  if (v33 == 1)
  {
    v84 = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401508);
    sub_304DB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD88);
    sub_304DA8();
    (*(v67 + 8))(v26, v24);
    sub_EC8C(&qword_401530, &qword_401500);
    v34 = sub_304E88();

    result = (*(v68 + 8))(v29, v27);
  }

  else
  {
    if (sub_30A6B8())
    {
      sub_3076F8();
      if (swift_dynamicCastClass())
      {
        (*(v52 + 104))(v23, enum case for FlowPresentationContext.presentSheetOverNowPlaying(_:), v21);
        sub_3076D8();
      }
    }

    sub_30A698();
    if (v39)
    {
      v84 = xmmword_31EB70;
      v85 = 0u;
      memset(v86, 0, 25);
      sub_3030B8();
      sub_303258();
      v40 = v60;
      sub_3031B8();
      sub_6D8C0(v40, v55);
      sub_3030C8();
      sub_303118();
      v41 = sub_303DF8();
      (*(*(v41 - 8) + 56))(v59, 1, 1, v41);
      v42 = v56;
      sub_304198();
      sub_30C778();
      sub_303A08();
      (*(v57 + 8))(v42, v58);
      v43 = [objc_opt_self() mainScreen];
      [v43 scale];

      v44 = v61;
      sub_303358();
      sub_12670(*(v51 + qword_401330) + 104, &v75);
      __swift_project_boxed_opaque_existential_1Tm(&v75, *(&v76 + 1));
      v74 = sub_302128();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401518);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401508);
      sub_EC8C(&qword_401520, &qword_401518);
      v45 = v64;
      sub_304ED8();

      __swift_destroy_boxed_opaque_existential_1(&v75);
      sub_EC8C(&qword_401528, &qword_4014E0);
      v46 = v66;
      v34 = sub_304E88();

      (*(v65 + 8))(v45, v46);
      (*(v62 + 8))(v44, v63);
      result = sub_6D924(v40);
    }

    else
    {
      sub_D3EE8(&v84);
      v81 = v89;
      v82 = v90;
      v83 = v91;
      v77 = v86[0];
      v78 = v86[1];
      v79 = v87;
      v80 = v88;
      v75 = v84;
      v76 = v85;
      v73(&v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401508);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD88);
      v47 = v69;
      sub_304DC8();
      sub_EC8C(&qword_401510, &qword_4014F0);
      v48 = v71;
      v34 = sub_304E88();

      result = (*(v70 + 8))(v47, v48);
    }
  }

  *v50 = v34;
  return result;
}

uint64_t *sub_D2D48@<X0>(uint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    v6 = result[1];
    sub_308D58();

    v25 = v6;
    v7 = v6;
    sub_30A6A8();
    sub_308D18();

    if (sub_30A678())
    {
      v24 = sub_308018();
    }

    else
    {
      v24 = 0;
    }

    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = v9;
    v10[4] = v4;
    sub_30AF48();

    sub_30AF38();
    v11 = sub_30AF28();

    v23 = sub_184500(a2, v11);

    v22 = sub_30A6D8();
    v13 = v12;
    v14 = sub_30A668();
    v16 = v15;
    v17 = sub_30A688();
    v19 = v18;
    v20 = sub_30A6B8();
    v21 = sub_30A678();

    *a3 = v22;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
    *(a3 + 24) = v16;
    *(a3 + 32) = v17;
    *(a3 + 40) = v19;
    *(a3 + 48) = v25;
    *(a3 + 56) = v20;
    *(a3 + 64) = v21;
    *(a3 + 72) = v24;
    *(a3 + 80) = sub_D410C;
    *(a3 + 88) = v10;
    *(a3 + 96) = UINavigationBar.overrideBackButtonStyle.setter;
    *(a3 + 104) = 0;
    *(a3 + 112) = UINavigationBar.overrideBackButtonStyle.setter;
    *(a3 + 120) = 0;
    v8 = !v23;
  }

  else
  {
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 96) = UINavigationBar.overrideBackButtonStyle.setter;
    *(a3 + 104) = 0;
    *(a3 + 112) = UINavigationBar.overrideBackButtonStyle.setter;
    *(a3 + 120) = 0;
    v8 = 1;
  }

  *(a3 + 128) = v8;
  return result;
}

uint64_t sub_D2FC4(uint64_t a1)
{
  v2 = sub_3025D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_30AF48();
  sub_30AF38();
  v6 = sub_30AF18();
  sub_193260(v18, a1);
  v6(v19, 0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = sub_30A6D8();
    v9 = v8;
    v10 = sub_30A6A8();
    v11 = v2;
    v13 = v12;
    v14 = sub_30A6C8();
    *v5 = v7;
    v5[1] = v9;
    v5[2] = v10;
    v5[3] = v13;
    v5[4] = v14;
    v5[5] = v15;
    (*(v3 + 104))(v5, enum case for MetricsAdHocImpression.nowPlayingUpsellBanner(_:), v11);
    memset(v19, 0, sizeof(v19));
    v20 = 1;
    sub_308EA8();

    (*(v3 + 8))(v5, v11);
  }
}

uint64_t sub_D31B0(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3)
{
  v5 = sub_3041E8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_304198();
  v9 = sub_3041D8();
  v10 = sub_30C798();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v13[1] = a3;
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "Failed to load upsell artwork", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  sub_D3EE8(v16);
  v14[6] = v16[6];
  v14[7] = v16[7];
  v15 = v17;
  v14[2] = v16[2];
  v14[3] = v16[3];
  v14[4] = v16[4];
  v14[5] = v16[5];
  v14[0] = v16[0];
  v14[1] = v16[1];
  a2(v14);
  return sub_304DC8();
}

uint64_t sub_D3388(uint64_t a1, void (*a2)(__int128 *))
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 112);
  v26 = *(a1 + 96);
  v27 = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 48);
  v22 = *(a1 + 32);
  v23 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  v24 = *(a1 + 64);
  v25 = v8;
  v9 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v9;
  v10 = *(a1 + 112);
  v35 = v26;
  v36 = v10;
  v31 = v22;
  v32 = v7;
  v33 = v24;
  v34 = v3;
  v28 = *(a1 + 128);
  v37 = *(a1 + 128);
  v29 = v21[0];
  v30 = v5;
  UINavigationBar.overrideBackButtonStyle.setter(&v29);
  v18 = v35;
  v19 = v36;
  v20 = v37;
  v14 = v31;
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v12 = v29;
  v13 = v30;
  sub_D3EB0(v21, v38);
  a2(&v12);
  v38[6] = v18;
  v38[7] = v19;
  v39 = v20;
  v38[2] = v14;
  v38[3] = v15;
  v38[4] = v16;
  v38[5] = v17;
  v38[0] = v12;
  v38[1] = v13;
  return sub_EB68(v38, &qword_401378);
}

uint64_t sub_D34F8()
{
}

uint64_t NowPlayingEpisodeUpsellBannerProvider.deinit()
{
  v0 = sub_30ABE8();

  return v0;
}

uint64_t NowPlayingEpisodeUpsellBannerProvider.__deallocating_deinit()
{
  sub_30ABE8();

  return swift_deallocClassInstance();
}

BOOL _s23ShelfKitCollectionViews34NowPlayingEpisodeUpsellBannerModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v12 = a2[3];
  v11 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_30D728() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v12 || (v4 != v10 || v6 != v12) && (sub_30D728() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v7)
  {
    if (v13 && (v5 == v11 && v7 == v13 || (sub_30D728() & 1) != 0))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v13)
  {
    return 0;
  }

LABEL_20:
  result = (v8 | v14) == 0;
  if (v8)
  {
    if (v14)
    {
      sub_124C4(0, &qword_401538);
      v16 = v14;
      v17 = v8;
      v18 = sub_30D098();

      return v18 & 1;
    }
  }

  return result;
}

uint64_t sub_D3784()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC190);
  sub_30B8E8();
  sub_12658(v3, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);
  sub_30B8E8();
  *(v0 + 56) = *&v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E20);
  sub_30B8E8();
  v1 = v3[1];
  *(v0 + 64) = v3[0];
  *(v0 + 80) = v1;
  *(v0 + 96) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E30);
  sub_30B8E8();
  sub_12658(v3, v0 + 104);
  return v0;
}

uint64_t sub_D3868()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D38A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D38F0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_74D04;
  a2[1] = v5;
}

uint64_t sub_D3960@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 112);
  v3 = *(a1 + 120);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_293C0;
  a2[1] = v5;
}

uint64_t sub_D39D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_401328;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_D3ACC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_D3B14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for NowPlayingEpisodeUpsellBannerProvider()
{
  result = qword_401450;
  if (!qword_401450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D3DB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D3DF0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_D3E4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v9 = *(a1 + 128);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return v2(v8);
}

double sub_D3EE8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_D3F08()
{

  if (*(v0 + 128))
  {

    if (*(v0 + 112))
    {
    }
  }

  return _swift_deallocObject(v0, 161, 7);
}

uint64_t sub_D3FA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 144);
  v7[6] = *(v0 + 128);
  v7[7] = v2;
  v8 = *(v0 + 160);
  v3 = *(v0 + 80);
  v7[2] = *(v0 + 64);
  v7[3] = v3;
  v4 = *(v0 + 112);
  v7[4] = *(v0 + 96);
  v7[5] = v4;
  v5 = *(v0 + 48);
  v7[0] = *(v0 + 32);
  v7[1] = v5;
  return v1(v7);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_47Tm()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_D407C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  *a2 = v2;
  a2[1] = v4;

  return v4;
}

uint64_t sub_D41B0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_30C5B8();
  if (!v19)
  {
    return sub_30C3A8();
  }

  v41 = v19;
  v45 = sub_30D618();
  v32 = sub_30D628();
  sub_30D5C8(v41);
  result = sub_30C598();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_30C5F8();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_30D608();
      result = sub_30C5E8();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_D45D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FilterablePresenterRedirectContainer();
  v10 = __chkstk_darwin(v9);
  v12 = &v14 - v11;
  (*(v6 + 16))(v8, a1, a2, v10);
  (*(v6 + 32))(v12, v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_401748);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_D4798@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  swift_unknownObjectRetain();
  v11 = a1;
  v12 = a2;
  v13 = sub_D6F30(v5, v12, a3, a4);
  swift_unknownObjectRelease();

  result = type metadata accessor for NavigationItemFilterablePresenterHelper();
  a5[3] = result;
  a5[4] = &off_3B9810;
  *a5 = v13;
  return result;
}

uint64_t sub_D485C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v8 = v7;
  sub_3093D8();
  sub_304D58();

  if (v21 == 1)
  {
    v17 = type metadata accessor for FadableNavigationBarFilterablePresenterHelper();

    v18 = a3;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19 = sub_D7324(a4, v18, v8, a1, a2, a5, a6);

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v20 = &off_3B9830;
  }

  else
  {
    v17 = 0;
    v20 = 0;
    v19 = 0;
    a7[1] = 0;
    a7[2] = 0;
  }

  a7[3] = v17;
  a7[4] = v20;
  *a7 = v19;
  return result;
}

uint64_t sub_D49BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v16[-v13];
  sub_3093D8();
  sub_304D58();

  if (v16[8] == 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_3093C8();
      sub_304D58();

      sub_D7850(a3, a1, v14, a6, a7);

      return (*(v12 + 8))(v14, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t sub_D4B54(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  sub_30C3D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_D4BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a2;
  v34 = a3;
  v40 = a6;
  v9 = sub_30B898();
  __chkstk_darwin(v9 - 8);
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v15 - 8);
  v38 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  swift_getAssociatedConformanceWitness();
  v20 = sub_30AA08();
  v35 = v21;
  v36 = v20;
  v22 = sub_3031C8();
  v23 = *(*(v22 - 8) + 56);
  v37 = v19;
  v23(v19, 1, 1, v22);
  LODWORD(v33) = sub_30C018();
  (*(v12 + 16))(v14, a1, AssociatedTypeWitness);
  v24 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 2) = a4;
  *(v25 + 3) = v26;
  *(v25 + 4) = v34;
  (*(v12 + 32))(&v25[v24], v14, AssociatedTypeWitness);
  swift_unknownObjectRetain();
  LOBYTE(a4) = sub_30AF68();
  sub_30AFB8();
  sub_30AFB8();
  if (sub_30AFB8() != a4)
  {
    sub_30AFB8();
  }

  sub_30B868();
  v27 = sub_308048();
  swift_allocObject();
  v28 = sub_308028();
  v42[3] = v27;
  v42[4] = sub_D7FC0();
  v42[0] = v28;
  sub_307608();
  v29 = v37;
  sub_EB00(v37, v38, &unk_402FF0);
  sub_EB00(v42, v41, &unk_3FBB40);
  sub_307628();
  sub_EB68(v29, &unk_402FF0);
  sub_307648();
  swift_storeEnumTagMultiPayload();
  return sub_EB68(v42, &unk_3FBB40);
}

uint64_t sub_D5034(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v8 - v5;
  sub_3093C8();
  (*(v4 + 16))(v6, a2, AssociatedTypeWitness);
  sub_304D68();
}

uint64_t sub_D5140@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18 = a1;
  v19 = a2;
  v2 = sub_301B18();
  __chkstk_darwin(v2 - 8);
  v3 = sub_301A78();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = [objc_opt_self() mainBundle];
  v17._countAndFlagsBits = 0x800000000033A160;
  v22._object = 0x800000000033A130;
  v22._countAndFlagsBits = 0xD000000000000020;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v11.super.isa = v10;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v12 = sub_301AB8(v22, v24, v11, v25, v17);
  v14 = v13;

  v20 = v12;
  v21 = v14;

  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  sub_30C238(v23);

  sub_301B08();
  sub_301A88();
  v20 = sub_306168();
  sub_D8130();
  sub_301A98();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_30AA08();
  sub_301B08();
  sub_301A88();
  sub_D8184();
  v20 = sub_30CDD8();
  sub_D81D0();
  sub_301A98();
  sub_301A48();
  v15 = *(v4 + 8);
  v15(v6, v3);
  return (v15)(v9, v3);
}

uint64_t sub_D5444()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_D54B0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_30C9A8();
  v4 = 6.0;
  if (v3)
  {
    v5 = sub_30C9B8();
    v4 = 10.0;
    if (v5)
    {
      v4 = 12.0;
    }
  }

  v12 = 0x4042000000000000;
  *v13 = v4;
  *&v13[8] = xmmword_31EDD0;
  *&v13[24] = 0;
  v14 = 0;
  v6 = sub_30D0B8();
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MultiViewHostingPalette_configurations;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  *(v2 + v7) = 0x8000000000000000;
  sub_296070(&v12, v6, isUniquelyReferenced_nonNull_native);
  *(v2 + v7) = v9;
  swift_endAccess();
  v10[0] = *v13;
  v10[1] = *&v13[16];
  v11 = 0;
  sub_2312A8(v1, v10, v14, 0);
}

uint64_t sub_D55C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_3093F8();
  v8 = sub_3093C8();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = v8;
  sub_30C3D8();
  sub_304D78();
  v10 = a1;
  swift_getWitnessTable();
  sub_304F58();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
  sub_EC8C(&qword_4019A0, &unk_408F90);
  sub_304CF8();
  swift_endAccess();

  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  swift_unknownObjectRetain();
  sub_302D28();
  sub_3093C8();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v10;
  sub_304D78();
  v13 = v10;
  swift_getWitnessTable();
  sub_304F58();

  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  sub_3093E8();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401728);
  sub_EC8C(&qword_401730, &qword_401728);
  sub_304F58();

  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();
}

uint64_t sub_D59D8(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = a1;
  v8 = swift_isaMask & *a2;
  v83 = a3;
  v9 = *(v8 + class metadata base offset for ScopeBar);
  v87 = *(v9 - 8);
  __chkstk_darwin(a1);
  v75 = v69 - v10;
  v12 = *(v11 + class metadata base offset for CurrentValueSubject);
  v13 = sub_30D3A8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v81 = v69 - v14;
  v15 = sub_30D3A8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v74 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v69 - v19;
  v80 = v13;
  v85 = *(v13 - 8);
  __chkstk_darwin(v21);
  v70 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v84 = v69 - v24;
  __chkstk_darwin(v25);
  v89 = v69 - v26;
  v27 = *(v12 - 8);
  __chkstk_darwin(v28);
  v79 = v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = v69 - v31;
  v93 = *v88;
  v69[1] = a4;
  v91 = a4;
  v92 = a5;
  v69[0] = a5;
  v33 = sub_30C3D8();
  WitnessTable = swift_getWitnessTable();
  sub_D41B0(sub_D8110, v90, v33, v9, &type metadata for Never, WitnessTable, &protocol witness table for Never, v35);
  sub_302D58();
  v88 = v32;
  sub_304D58();
  v77 = a2;
  sub_302D18();
  v36 = v87;
  v37 = (*(v87 + 48))(v20, 1, v9);
  v76 = v9;
  v78 = v15;
  v82 = v16;
  if (v37 == 1)
  {
    (*(v16 + 8))(v20, v15);
    v38 = *(v27 + 56);
    v38(v89, 1, 1, v12);
    v39 = *(v27 + 16);
    v40 = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    v39 = *(v27 + 16);
    v40 = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41 = v89;
    v39(v89, v20, v12);
    (*(v36 + 8))(v20, v9);
    v38 = *(v27 + 56);
    v38(v41, 0, 1, v12);
  }

  v42 = v27;
  v43 = v84;
  v73 = v39;
  v72 = v40;
  v39(v84, v88, v12);
  v38(v43, 0, 1, v12);
  v44 = v85;
  v45 = *(TupleTypeMetadata2 + 48);
  v46 = *(v85 + 16);
  v48 = v80;
  v47 = v81;
  v46(v81, v89, v80);
  v46(&v47[v45], v43, v48);
  v83 = v42;
  v49 = *(v42 + 48);
  if (v49(v47, 1, v12) == 1)
  {
    v50 = *(v44 + 8);
    v50(v43, v48);
    v50(v89, v48);
    v51 = v49(&v47[v45], 1, v12);
    v52 = v82;
    if (v51 == 1)
    {
      v50(v47, v48);
      return (*(v83 + 8))(v88, v12);
    }

    goto LABEL_9;
  }

  v54 = v70;
  v46(v70, v47, v48);
  if (v49(&v47[v45], 1, v12) == 1)
  {
    v55 = *(v85 + 8);
    v55(v84, v48);
    v55(v89, v48);
    (*(v83 + 8))(v54, v12);
    v52 = v82;
LABEL_9:
    (*(v71 + 8))(v47, TupleTypeMetadata2);
    v56 = v87;
    v57 = v78;
LABEL_10:
    v58 = v79;
    v59 = v88;
    v73(v79, v88, v12);
    v60 = v83;
    v61 = v75;
    (*(v83 + 32))(v75, v58, v12);
    v62 = v74;
    v63 = v76;
    (*(v56 + 16))(v74, v61, v76);
    (*(v56 + 56))(v62, 0, 1, v63);
    sub_302D08();
    (*(v52 + 8))(v62, v57);
    (*(v56 + 8))(v61, v63);
    return (*(v60 + 8))(v59, v12);
  }

  v64 = v83;
  v65 = v79;
  (*(v83 + 32))(v79, &v47[v45], v12);
  swift_getAssociatedConformanceWitness();
  v66 = sub_30C018();
  v67 = *(v64 + 8);
  v67(v65, v12);
  v68 = *(v85 + 8);
  v68(v84, v48);
  v68(v89, v48);
  v67(v54, v12);
  v68(v47, v48);
  v56 = v87;
  v57 = v78;
  v52 = v82;
  if ((v66 & 1) == 0)
  {
    goto LABEL_10;
  }

  return (v67)(v88, v12);
}

uint64_t sub_D6330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, a1, AssociatedTypeWitness, v6);
  return (*(v5 + 32))(a2, v8, AssociatedTypeWitness);
}

uint64_t sub_D643C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = v16 - v11;
  v13 = *(v6 + 16);
  (v13)(v16 - v11, a2, AssociatedTypeWitness, v10);
  v16[1] = a3;
  sub_3093C8();
  sub_304D58();

  swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = sub_30C018();
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  if ((a2 & 1) == 0)
  {
    sub_3093C8();
    v13(v8, v12, AssociatedTypeWitness);
    sub_304D68();
  }

  return (v14)(v12, AssociatedTypeWitness);
}

uint64_t sub_D6634(uint64_t a1, void *a2)
{
  v19 = a1;
  v2 = *((swift_isaMask & *a2) + class metadata base offset for ScopeBar);
  v3 = sub_30D3A8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = *(v2 + 16);
  v8 = *(v7 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = *(v2 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v18 - v15;
  (*(v8 + 16))(v11, v19, v7, v14);
  (*(v8 + 32))(v16, v11, v7);
  (*(v12 + 16))(v6, v16, v2);
  (*(v12 + 56))(v6, 0, 1, v2);
  sub_302D08();
  (*(v4 + 8))(v6, v3);
  return (*(v12 + 8))(v16, v2);
}

uint64_t sub_D68CC(uint64_t a1)
{
  swift_getWitnessTable();
  v2 = sub_302D38();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = sub_30A6E8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for FilterablePresenterStyle.scopeBar(_:))
  {
    v12 = &enum case for ScopeBar.ContentLayoutMode.leading<A>(_:);
LABEL_5:
    (*(v3 + 104))(v5, *v12, v2);
    return sub_302D48();
  }

  if (v11 == enum case for FilterablePresenterStyle.centeredScopeBar(_:))
  {
    v12 = &enum case for ScopeBar.ContentLayoutMode.centered<A>(_:);
    goto LABEL_5;
  }

  return (*(v7 + 8))(v10, v6);
}

Swift::Int sub_D6B70()
{
  sub_30D7F8();
  sub_30BFD8();
  return sub_30D858();
}

Swift::Int sub_D6BCC()
{
  sub_30D7F8();
  sub_D6B60();
  return sub_30D858();
}

uint64_t sub_D6C1C()
{

  return swift_deallocClassInstance();
}

id sub_D6CFC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for NavigationItemFilterablePresenterHelper.FilterWrapper();
  swift_getWitnessTable();
  sub_302D78();
  v0 = sub_302D68();
  [v0 setContentInsetAdjustmentBehavior:2];
  [v0 setContentOffset:{0.0, 0.0}];

  [v0 layoutSubviews];
  return v0;
}

void *sub_D6DFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = _swiftEmptyArrayStorage;
  v10 = sub_D6CFC();
  v5[4] = v10;
  v5[5] = &off_3B9808;
  v5[3] = a2;
  v11 = objc_opt_self();
  v12 = v10;
  a2;
  v13 = [v11 currentTraitCollection];
  if (sub_30C9A8())
  {
    v14 = sub_30C9B8();

    v15 = 10.0;
    if (v14)
    {
      v15 = 12.0;
    }
  }

  else
  {

    v15 = 6.0;
  }

  *&v17[0] = 0x4042000000000000;
  *(v17 + 1) = v15;
  v17[1] = xmmword_31EDD0;
  v18 = 0;
  v19 = 0;
  sub_291FA8(v12, v17);
  sub_D55C4(v12, a1, a3, a4);

  return v5;
}

void *sub_D6F30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NavigationItemFilterablePresenterHelper();
  swift_allocObject();
  return sub_D6DFC(a1, a2, a3, a4);
}

void *sub_D6F94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a5;
  v28 = a2;
  v29 = a3;
  swift_getAssociatedTypeWitness();
  sub_30C3D8();
  v31 = sub_304D78();
  v32 = sub_304D78();
  WitnessTable = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v25 = sub_304CB8();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v23 - v12;
  v23 = v7;
  v7[3] = _swiftEmptyArrayStorage;
  v26 = v7 + 3;
  v7[2] = a1;
  v14 = v24;
  v7[4] = a4;
  v7[5] = v14;

  swift_unknownObjectRetain();
  v31 = sub_3093F8();
  v30 = sub_3093C8();
  sub_304EB8();

  v15 = swift_allocObject();
  v16 = v23;
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v18 = v28;
  v17[4] = v29;
  v17[5] = v15;
  v17[6] = v18;
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = sub_D77FC;
  v19[5] = v17;
  swift_unknownObjectRetain();
  v20 = v18;
  v21 = v25;
  swift_getWitnessTable();
  sub_304F58();

  (*(v27 + 8))(v13, v21);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
  sub_EC8C(&qword_4019A0, &unk_408F90);
  sub_304CF8();
  swift_endAccess();

  return v16;
}

void *sub_D7324(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for FadableNavigationBarFilterablePresenterHelper();
  swift_allocObject();
  return sub_D6F94(a1, a2, a3, a4, a5, a6, a7);
}

void sub_D73B0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = (*(a2 + 144))(v34, ObjectType, a2);
  v6 = v4;
  v7 = *v4;
  v8 = *v4 & 0xFFFFFFFFFFFFFF8;
  if (*v4 >> 62)
  {
LABEL_25:
    v9 = sub_30D668();
  }

  else
  {
    v9 = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
  }

  i = 0;
  while (1)
  {
    if (v9 == i)
    {
      if (*v6 >> 62)
      {
        goto LABEL_28;
      }

      for (i = *(&dword_10 + (*v6 & 0xFFFFFFFFFFFFFF8)); ; i = sub_30D668())
      {
LABEL_20:
        if (*v6 >> 62)
        {
          v16 = sub_30D668();
          if (v16 >= i)
          {
LABEL_22:
            sub_17FCF0(i, v16);
            v5(v34, 0);
            return;
          }
        }

        else
        {
          v16 = *(&dword_10 + (*v6 & 0xFFFFFFFFFFFFFF8));
          if (v16 >= i)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_28:
        ;
      }
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = sub_30D578();
    }

    else
    {
      if (i >= *(v8 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v11 = *(v7 + 8 * i + 32);
    }

    v12 = v11;
    type metadata accessor for FilterButton();
    v13 = swift_dynamicCastClass();

    v14 = i + 1;
    v15 = __OFADD__(i, 1);
    if (v13)
    {
      break;
    }

    ++i;
    if (v15)
    {
      goto LABEL_24;
    }
  }

  if (v15)
  {
    __break(1u);
LABEL_30:
    if (v14 == sub_30D668())
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  if (*v6 >> 62)
  {
    goto LABEL_30;
  }

  if (v14 == *(&dword_10 + (*v6 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_20;
  }

LABEL_31:
  v17 = i + 5;
  while (1)
  {
    v18 = v17 - 4;
    v19 = *v6;
    if ((*v6 & 0xC000000000000001) != 0)
    {
      v20 = sub_30D578();
    }

    else
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      if (v18 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_69;
      }

      v20 = *(v19 + 8 * v17);
    }

    v21 = v20;
    v22 = swift_dynamicCastClass();

    if (!v22)
    {
      break;
    }

LABEL_57:
    v31 = __OFADD__(v18, 1);
    v32 = v17 - 3;
    if (v31)
    {
      goto LABEL_70;
    }

    if (*v6 >> 62)
    {
      v33 = sub_30D668();
    }

    else
    {
      v33 = *(&dword_10 + (*v6 & 0xFFFFFFFFFFFFFF8));
    }

    ++v17;
    if (v32 == v33)
    {
      goto LABEL_20;
    }
  }

  if (v18 == i)
  {
LABEL_56:
    v31 = __OFADD__(i++, 1);
    if (v31)
    {
      goto LABEL_71;
    }

    goto LABEL_57;
  }

  v23 = *v6;
  if ((*v6 & 0xC000000000000001) == 0)
  {
    if ((i & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }

    if (i >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_73;
    }

    v24 = *(v23 + 8 * i + 32);
    if ((v23 & 0xC000000000000001) == 0)
    {
      goto LABEL_42;
    }

LABEL_65:
    v25 = sub_30D578();
    v23 = *v6;
    goto LABEL_45;
  }

  v24 = sub_30D578();
  v23 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_65;
  }

LABEL_42:
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_74;
  }

  if (v18 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_76;
  }

  v25 = *(v23 + 8 * v17);
LABEL_45:
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v6 = v23;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v23 < 0 || (v23 & 0x4000000000000000) != 0)
  {
    v23 = sub_182DEC(v23);
    *v6 = v23;
  }

  if ((i & 0x8000000000000000) != 0)
  {
    goto LABEL_75;
  }

  if (i >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_77;
  }

  v27 = *(&stru_20.cmd + 8 * i + (v23 & 0xFFFFFFFFFFFFFF8));
  *(&stru_20.cmd + 8 * i + (v23 & 0xFFFFFFFFFFFFFF8)) = v25;

  v28 = *v6;
  if ((*v6 & 0x8000000000000000) == 0 && (v28 & 0x4000000000000000) == 0)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_54;
  }

  v28 = sub_182DEC(v28);
  *v6 = v28;
  if ((v18 & 0x8000000000000000) == 0)
  {
LABEL_54:
    v29 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v18 >= *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_78;
    }

    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = v24;

    goto LABEL_56;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
}

uint64_t sub_D777C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D77B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_D780C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_D7850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401718);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_30D278();
  v59 = *(v13 - 8);
  v60 = v13;
  __chkstk_darwin(v13);
  v51 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v56 = &v49 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v20 - 8);
  v22 = &v49 - v21;
  v23 = sub_307678();
  v54 = *(v23 - 8);
  v55 = v23;
  __chkstk_darwin(v23);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3031C8();
  (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
  v66 = a2;
  v62 = a4;
  v63 = a5;
  v64 = a3;
  v65 = a1;
  v53 = AssociatedTypeWitness;
  v27 = sub_30C3D8();
  v28 = sub_307648();
  WitnessTable = swift_getWitnessTable();
  v30 = v28;
  v31 = v19;
  sub_D41B0(sub_D7E2C, v61, v27, v30, &type metadata for Never, WitnessTable, &protocol witness table for Never, v32);
  sub_307608();
  v52 = v25;
  sub_307618();
  sub_3093C8();
  sub_304D58();

  if (qword_3FABF8 != -1)
  {
    swift_once();
  }

  v33 = v60;
  v34 = __swift_project_value_buffer(v60, qword_429520);
  v35 = *(v59 + 16);
  v36 = v56;
  v35(v56, v34, v33);
  v37 = v31;
  v50 = v31;
  v38 = v58;
  sub_D5140(v37, v12);
  v39 = sub_301A78();
  (*(*(v39 - 8) + 56))(v12, 0, 1, v39);
  sub_30D1E8();
  type metadata accessor for FilterButton();
  v35(v51, v36, v33);
  v40 = sub_30D288();
  v41 = v53;
  swift_getAssociatedConformanceWitness();
  [v40 setSelected:(sub_30A9E8() & 1) == 0];
  v42 = v52;
  sub_30D2D8();
  v43 = *(v38 + 40);
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_31BF90;
  *(v45 + 32) = v40;
  v46 = *(v43 + 136);
  v47 = v40;
  v46(v45, ObjectType, v43);

  (*(v59 + 8))(v36, v60);
  (*(v57 + 8))(v50, v41);
  return (*(v54 + 8))(v42, v55);
}

uint64_t sub_D7E50()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_D7F28()
{
  v1 = *(swift_getAssociatedTypeWitness() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_D5034(v2, v3);
}

unint64_t sub_D7FC0()
{
  result = qword_401720;
  if (!qword_401720)
  {
    sub_308048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401720);
  }

  return result;
}

uint64_t sub_D8030()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_D807C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_D80C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_D8130()
{
  result = qword_401738;
  if (!qword_401738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401738);
  }

  return result;
}

unint64_t sub_D8184()
{
  result = qword_408100;
  if (!qword_408100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_408100);
  }

  return result;
}

unint64_t sub_D81D0()
{
  result = qword_401740;
  if (!qword_401740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401740);
  }

  return result;
}

uint64_t sub_D8244()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_D82B4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_D8328(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_D846C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

char *sub_D86CC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v68 = a4;
  v64 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401968);
  v8 = *(v7 - 8);
  v66 = v7;
  v67 = v8;
  __chkstk_darwin(v7);
  v65 = v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401970);
  v11 = *(v10 - 8);
  v70 = v10;
  v71 = v11;
  __chkstk_darwin(v10);
  v69 = v58 - v12;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_subscriptions] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCancel] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCommit] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_isScopeBarInBottomPalette] = 0;
  v13 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_searchController] = v13;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_searchExtension] = a1;
  v14 = objc_allocWithZone(UISegmentedControl);

  v15 = [v14 init];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_scopeBar] = v15;
  v16 = [v15 heightAnchor];
  v17 = [v16 constraintEqualToConstant:44.0];

  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_scopeBarHeightConstraint] = v17;
  v18 = type metadata accessor for SearchExtensionHelper();
  v73.receiver = v4;
  v73.super_class = v18;
  v19 = objc_msgSendSuper2(&v73, "init");
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_searchController;
  v21 = *&v19[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_searchController];
  v22 = v19;
  v23 = v19;
  v24 = [v21 searchBar];
  [v24 setDelegate:v23];

  v25 = [*&v19[v20] searchBar];
  v26 = [v25 searchTextField];

  [v26 setDelegate:v23];
  [*&v22[v20] setObscuresBackgroundDuringPresentation:0];
  [*&v22[v20] setScopeBarActivation:1];
  v27 = v20;
  v28 = [*&v22[v20] searchBar];
  v29 = [v28 searchTextField];

  v30 = sub_30C098();
  [v29 setAccessibilityIdentifier:v30];

  v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_scopeBar;
  v32 = *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_scopeBar];
  sub_124C4(0, &qword_408080);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = *&v23[v31];
  v35 = swift_allocObject();
  v35[2] = a1;
  v35[3] = v34;
  v35[4] = v33;

  v36 = v32;
  v37 = v34;
  v38 = sub_30D0C8();
  [v36 addAction:v38 forControlEvents:4096];

  v59 = v27;
  v60 = v22;
  [a2 setSearchController:*&v22[v27]];
  v58[3] = a1;
  [a2 setHidesSearchBarWhenScrolling:sub_308908() & 1];
  v39 = v64;
  sub_D91B8(a2, v64);
  v72 = sub_308988();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401980);
  v58[1] = &protocol conformance descriptor for CurrentValueSubject<A, B>;
  v61 = sub_EC8C(&qword_400DF0, &unk_401980);
  v40 = v69;
  sub_304F48();

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = *&v22[v27];
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = v41;
  v43[4] = a2;
  v43[5] = v39;
  v58[2] = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  v58[4] = sub_EC8C(&unk_401990, &unk_401970);
  v44 = v42;
  v63 = a2;
  v45 = v39;
  v46 = v70;
  sub_304F58();

  v47 = *(v71 + 8);
  v71 += 8;
  v64 = v47;
  (v47)(v40, v46);
  swift_beginAccess();
  v58[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
  sub_EC8C(&qword_4019A0, &unk_408F90);
  sub_304CF8();
  swift_endAccess();

  v72 = sub_308978();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4019A8);
  sub_EC8C(&qword_4019B0, &qword_4019A8);
  sub_DCCE8();
  v48 = v65;
  sub_304F48();

  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  *(v50 + 24) = v45;
  sub_EC8C(&qword_4019C8, &qword_401968);
  v51 = v45;
  v52 = v66;
  sub_304F58();

  (*(v67 + 8))(v48, v52);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  v72 = sub_3088F8();
  v53 = v69;
  sub_304F48();

  v54 = *&v60[v59];
  *(swift_allocObject() + 16) = v54;
  v55 = v54;
  v56 = v70;
  sub_304F58();

  (v64)(v53, v56);
  swift_beginAccess();
  sub_304CF8();
  swift_endAccess();

  return v23;
}

uint64_t sub_D9024(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_3089A8();
  result = [a3 selectedSegmentIndex];
  if (result >= *(v4 + 16))
  {

    v6 = 2;
  }

  else
  {
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + result + 32);
  }

  sub_308948();
  sub_304D58();

  if (v13 == 2)
  {
    if (v6 == 2)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v6 == 2)
  {
    goto LABEL_9;
  }

  v8 = sub_301FE8();
  v10 = v9;
  if (v8 == sub_301FE8() && v10 == v11)
  {
  }

  v12 = sub_30D728();

  if ((v12 & 1) == 0)
  {
LABEL_9:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      Strong[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCommit] = 0;
    }

    sub_308948();
    sub_304D68();
  }

  return result;
}

void sub_D91B8(void *a1, void *a2)
{
  v67 = a2;
  v68 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401970);
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v64 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4019E0);
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin(v5);
  v61 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010F0);
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v55 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4019F0);
  v59 = *(v9 - 8);
  v60 = v9;
  __chkstk_darwin(v9);
  v58 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4019F8);
  v54 = *(v11 - 8);
  __chkstk_darwin(v11);
  v53 = &v50 - v12;
  v69 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_searchExtension);
  v13 = sub_3089A8();
  v14 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_searchController);
  v15 = [v14 searchBar];
  v16 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_scopeBar);
  [v16 _setUseGlass:_UISolariumEnabled()];
  v17 = *(v13 + 16);
  if (v17 < 2)
  {

LABEL_14:
    v28 = v69;
    v70 = sub_308998();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = v15;
    v30[3] = v29;
    v30[4] = v14;
    v54 = v15;
    v31 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401A00);
    sub_EC8C(&qword_401A08, &qword_401A00);
    sub_304F58();

    swift_beginAccess();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
    v50 = sub_EC8C(&qword_4019A0, &unk_408F90);
    sub_304CF8();
    swift_endAccess();

    v70 = sub_308938();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401980);
    v52 = sub_EC8C(&qword_400DF0, &unk_401980);
    v32 = v55;
    sub_304F38();

    sub_EC8C(&qword_401A10, &qword_4010F0);
    v33 = v57;
    v34 = v58;
    sub_304F48();
    (*(v56 + 8))(v32, v33);
    v35 = swift_allocObject();
    v36 = v67;
    v35[2] = v28;
    v35[3] = v36;
    v35[4] = v16;
    v57 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
    sub_EC8C(&qword_401A18, &qword_4019F0);
    swift_retain_n();
    v37 = v16;
    v38 = v36;
    v39 = v60;
    sub_304F58();

    (*(v59 + 8))(v34, v39);
    swift_beginAccess();
    sub_304CF8();
    swift_endAccess();

    v70 = sub_308928();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401A20);
    sub_EC8C(&qword_401A28, &qword_401A20);
    sub_DCA70(&qword_401A30, &type metadata accessor for SearchExtension.SearchBarPlacement);
    v40 = v61;
    sub_304F48();

    v41 = swift_allocObject();
    v42 = v68;
    *(v41 + 16) = v68;
    sub_EC8C(&qword_401A38, &unk_4019E0);
    v43 = v42;
    v44 = v63;
    sub_304F58();

    (*(v62 + 8))(v40, v44);
    swift_beginAccess();
    sub_304CF8();
    swift_endAccess();

    v70 = sub_308958();
    v45 = v64;
    sub_304F48();

    v46 = swift_allocObject();
    v47 = v54;
    *(v46 + 16) = v54;
    *(v46 + 24) = v28;
    sub_EC8C(&unk_401990, &unk_401970);
    v48 = v47;
    v49 = v66;
    sub_304F58();

    (*(v65 + 8))(v45, v49);
    swift_beginAccess();
    sub_304CF8();
    swift_endAccess();

    return;
  }

  v51 = v11;
  v52 = v15;
  v50 = v14;

  for (i = 0; i != v17; ++i)
  {
    if (i >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    sub_301FC8();
    v19 = sub_30C098();

    [v16 insertSegmentWithTitle:v19 atIndex:i animated:0];
  }

  sub_308988();
  sub_304D58();

  sub_D9EB4(v70, v68);
  sub_308948();
  sub_304D58();

  v15 = v52;
  v20 = v51;
  if (v70 != 2)
  {
LABEL_13:
    v70 = sub_308948();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401A40);
    sub_EC8C(&qword_401A48, &qword_401A40);
    sub_DCED0();
    v23 = v53;
    sub_304F48();

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = v13;
    v25[3] = v16;
    v25[4] = v15;
    v25[5] = v24;
    sub_EC8C(&qword_401A68, &qword_4019F8);
    v26 = v16;
    v27 = v15;
    sub_304F58();

    (*(v54 + 1))(v23, v20);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90);
    sub_EC8C(&qword_4019A0, &unk_408F90);
    sub_304CF8();
    swift_endAccess();

    v14 = v50;
    goto LABEL_14;
  }

  sub_308948();
  v21 = [v15 selectedScopeButtonIndex];
  if (v21 >= v17)
  {
    v22 = 2;
LABEL_12:
    LOBYTE(v70) = v22;
    sub_304D68();

    goto LABEL_13;
  }

  if (v21 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v21 < *(v13 + 16))
  {
    v22 = *(v13 + 32 + v21);
    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
}

void sub_D9E24(unsigned __int8 *a1, id a2, uint64_t a3, void *a4)
{
  v5 = *a1;
  [a2 setAutomaticallyShowsCancelButton:v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_D9EB4(v5, a4);
  }
}

void sub_D9EB4(char a1, id a2)
{
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_isScopeBarInBottomPalette) = a1;
  if (a1)
  {
    [a2 setPinnedTrailingGroup:0];
    [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_scopeBarHeightConstraint) setActive:0];
    v4 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_scopeBar);
    sub_308978();
    sub_304D58();

    v5 = sub_30C9A8();

    v6 = 3.0;
    if (v5)
    {
      v6 = 9.0;
    }

    *&v12[0] = 0x4042000000000000;
    *(v12 + 1) = v6;
    v12[1] = xmmword_31F0B0;
    v13 = 0;
    v14 = 10;
    sub_291FA8(v4, v12);
  }

  else
  {
    v7 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_scopeBar);
    sub_292464(v7, 0);
    [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_scopeBarHeightConstraint) setActive:1];
    v8 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v7];
    [v8 _setPrefersNoPlatter:1];
    sub_124C4(0, &unk_4019D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_31BF90;
    *(v9 + 32) = v8;
    v10 = v8;
    v11 = sub_30CA68();

    [a2 setPinnedTrailingGroup:v11];
  }
}

void sub_DA0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_isScopeBarInBottomPalette] == 1)
    {
      v5 = *&Strong[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_scopeBar];
      v6 = Strong;
      v7 = sub_30C9A8();
      v8 = 3.0;
      if (v7)
      {
        v8 = 9.0;
      }

      v15 = 0x4042000000000000;
      *v16 = v8;
      *&v16[8] = xmmword_31F0B0;
      *&v16[24] = 0;
      v17 = 10;
      v9 = sub_30D0B8();
      v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews23MultiViewHostingPalette_configurations;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(a3 + v10);
      *(a3 + v10) = 0x8000000000000000;
      sub_296070(&v15, v9, isUniquelyReferenced_nonNull_native);
      *(a3 + v10) = v12;
      swift_endAccess();
      v13[0] = *v16;
      v13[1] = *&v16[16];
      v14 = 0;
      sub_2312A8(v5, v13, v17, 0);
      Strong = v6;
    }
  }
}

void sub_DA22C(unsigned __int8 *a1, id a2)
{
  v2 = *a1;
  v3 = [a2 searchBar];
  v5 = v3;
  v4 = &selRef_becomeFirstResponder;
  if (!v2)
  {
    v4 = &selRef_resignFirstResponder;
  }

  [v3 *v4];
}

uint64_t sub_DA2A8(uint64_t a1)
{
  v3 = sub_309988();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401958);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401918);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  __chkstk_darwin(v17);
  v19 = &v25 - v18;
  v25 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_searchExtension);
  sub_308998();
  sub_304D58();

  v20 = *(v8 + 56);
  sub_DCA00(v19, v10);
  v26 = a1;
  sub_DCA00(a1, &v10[v20]);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) == 1)
  {
    sub_EB68(v19, &qword_401918);
    if (v21(&v10[v20], 1, v3) == 1)
    {
      return sub_EB68(v10, &qword_401918);
    }

    goto LABEL_6;
  }

  sub_DCA00(v10, v16);
  if (v21(&v10[v20], 1, v3) == 1)
  {
    sub_EB68(v19, &qword_401918);
    (*(v4 + 8))(v16, v3);
LABEL_6:
    sub_EB68(v10, &qword_401958);
LABEL_7:
    sub_308998();
    sub_DCA00(v26, v13);
    sub_304D68();
  }

  (*(v4 + 32))(v6, &v10[v20], v3);
  sub_DCA70(&qword_401960, &type metadata accessor for SearchExtensionTerm);
  v23 = sub_30C018();
  v24 = *(v4 + 8);
  v24(v6, v3);
  sub_EB68(v19, &qword_401918);
  v24(v16, v3);
  result = sub_EB68(v10, &qword_401918);
  if ((v23 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_DA67C(void *a1)
{
  v3 = sub_309988();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401918);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v18[-v11];
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCancel) = 0;
  sub_3088F8();
  v18[15] = 1;
  sub_304D68();

  v13 = [a1 searchTextField];
  sub_308998();
  sub_304D58();

  if ((*(v4 + 48))(v12, 1, v3))
  {
    sub_EB68(v12, &qword_401918);
    v14 = 0;
  }

  else
  {
    (*(v4 + 16))(v6, v12, v3);
    sub_EB68(v12, &qword_401918);
    sub_309958();
    (*(v4 + 8))(v6, v3);
    v14 = sub_30C098();
  }

  [v13 setText:v14];

  v15 = [a1 text];
  if (v15)
  {
    v16 = v15;
    sub_30C0D8();
  }

  sub_309948();
  sub_DA2A8(v9);
  sub_EB68(v9, &qword_401918);
  return 1;
}

uint64_t sub_DA9C8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401918);
  __chkstk_darwin(v4 - 8);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v33[-v8];
  __chkstk_darwin(v10);
  v12 = &v33[-v11];
  v13 = sub_3089A8();
  result = [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_scopeBar) selectedSegmentIndex];
  if (result >= *(v13 + 16))
  {

    v34 = sub_301FD8();
LABEL_5:
    v15 = [a1 text];
    if (v15)
    {
      v16 = v15;
      v17 = sub_30C0D8();
      v19 = v18;

      v35 = v17;
      v36 = v19;
      sub_120F0();
      v20 = sub_30C5A8();
    }

    else
    {
      v20 = 0;
    }

    if ((*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCancel) & 1) != 0 || (sub_308968(), sub_304D58(), , v35 == 1))
    {
      v21 = [a1 text];
      if (v21)
      {
        v22 = v21;
        sub_30C0D8();
      }

      sub_309948();
      sub_DA2A8(v12);
      [*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_searchController) setActive:0];
LABEL_13:
      sub_EB68(v12, &qword_401918);
      sub_3088F8();
      LOBYTE(v35) = 0;
      sub_304D68();
    }

    if (*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCommit))
    {
LABEL_15:
      v23 = [a1 text];
      if (v23)
      {
        v24 = v23;
        sub_30C0D8();
      }

      sub_309948();
      sub_DA2A8(v9);
      v29 = [a1 searchTextField];
      sub_DC45C(v34 & 1, v29);

      v12 = v9;
      goto LABEL_13;
    }

    v25 = sub_301FE8();
    v27 = v26;
    if (v25 == sub_301FE8() && v27 == v28)
    {

      if (v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v30 = sub_30D728();

      if (v30 & v20)
      {
        goto LABEL_15;
      }
    }

    v31 = [a1 text];
    if (v31)
    {
      v32 = v31;
      sub_30C0D8();
    }

    sub_309948();
    sub_DA2A8(v6);
    v12 = v6;
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v34 = *(v13 + result + 32);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_DAE54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401918);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  if ((*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCancel) & 1) == 0)
  {
    v7 = [a1 searchField];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 hasMarkedText];

      if ((v9 & 1) == 0)
      {
        *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCommit) = 0;

        sub_309948();
        sub_DA2A8(v6);
        sub_EB68(v6, &qword_401918);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_DB074(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401918);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCommit) = 1;
  v7 = [a1 text];
  if (v7)
  {
    v8 = v7;
    sub_30C0D8();
  }

  sub_309948();
  sub_DA2A8(v6);
  return sub_EB68(v6, &qword_401918);
}

void sub_DB394(int a1, void *a2)
{
  v21 = a2;
  v3 = sub_309988();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401918);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  sub_308998();
  sub_304D58();

  v13 = v4[6];
  if (v13(v12, 1, v3))
  {
    sub_EB68(v12, &qword_401918);
  }

  else
  {
    v20 = a1;
    v19 = v4[2];
    v19(v6, v12, v3);
    sub_EB68(v12, &qword_401918);
    sub_309978();
    v14 = v4[1];
    v14(v6, v3);
    if (sub_309968())
    {
      sub_308998();
      sub_304D58();

      if (v13(v9, 1, v3))
      {
        sub_EB68(v9, &qword_401918);
        v15 = 0;
      }

      else
      {
        v19(v6, v9, v3);
        sub_EB68(v9, &qword_401918);
        sub_309958();
        v14(v6, v3);
        v15 = sub_30C098();
      }

      v16 = v20;
      v17 = v21;
      [v21 setText:v15];

      sub_DC45C(v16 & 1, v17);
    }
  }
}

id sub_DB6C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchExtensionHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_DB79C(unsigned __int8 *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *a1;
  if (v6 == 2 || (v7 = *(a2 + 16)) == 0)
  {
LABEL_10:
    v8 = 0;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = sub_301FE8();
      v11 = v10;
      if (v9 == sub_301FE8() && v11 == v12)
      {
        break;
      }

      v14 = sub_30D728();

      if (v14)
      {
        goto LABEL_11;
      }

      if (v7 == ++v8)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  if (v8 != [a3 selectedSegmentIndex])
  {
    [a3 setSelectedSegmentIndex:v8];
  }

  if (v6 == 2)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = sub_301FB8();
    v16 = v17;
  }

  v18 = [a4 placeholder];
  if (v18)
  {
    v19 = v18;
    v20 = sub_30C0D8();
    v22 = v21;

    if (!v16)
    {
      v23 = 0;
LABEL_27:

      [a4 setPlaceholder:v23];

      goto LABEL_28;
    }

    if (v20 == v15 && v16 == v22)
    {

      goto LABEL_28;
    }

    v24 = sub_30D728();

    if (v24)
    {

      goto LABEL_28;
    }

LABEL_26:
    v23 = sub_30C098();
    goto LABEL_27;
  }

  if (v16)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v6 != 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      v27 = [a4 searchTextField];
      sub_DB394(v6 & 1, v27);
    }
  }
}

void sub_DBA00(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v47 = a4;
  v48 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401918);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v45 - v10;
  __chkstk_darwin(v11);
  v49 = &v45 - v12;
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  sub_DCA00(a1, &v45 - v17);
  v19 = sub_309988();
  v20 = *(v19 - 8);
  v52 = *(v20 + 48);
  v21 = v52(v18, 1, v19);
  v51 = v20 + 48;
  if (v21 == 1)
  {
    sub_EB68(v18, &qword_401918);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = sub_309958();
    v23 = v24;
    (*(v20 + 8))(v18, v19);
  }

  v25 = a2;
  v26 = [a2 text];
  if (!v26)
  {
    if (!v23)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v27 = v26;
  v45 = a1;
  v46 = v20;
  v28 = sub_30C0D8();
  v30 = v29;

  if (!v23)
  {
    v33 = 0;
    a1 = v45;
    v20 = v46;
    goto LABEL_15;
  }

  if (v28 == v22 && v23 == v30)
  {

    a1 = v45;
    v20 = v46;
    goto LABEL_17;
  }

  v32 = sub_30D728();

  a1 = v45;
  v20 = v46;
  if ((v32 & 1) == 0)
  {
LABEL_13:
    v33 = sub_30C098();
LABEL_15:
    a2 = v25;

    [v25 setText:v33];

    goto LABEL_18;
  }

LABEL_17:
  a2 = v25;
LABEL_18:
  sub_DCA00(a1, v15);
  v34 = v52;
  if (v52(v15, 1, v19) == 1)
  {
    sub_EB68(v15, &qword_401918);
    v35 = v49;
    v36 = v50;
  }

  else
  {
    sub_309978();
    (*(v20 + 8))(v15, v19);
    v37 = sub_309968();
    v35 = v49;
    v36 = v50;
    if (v37)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        Strong[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCommit] = 1;
      }

      [a2 resignFirstResponder];
    }
  }

  sub_DCA00(a1, v35);
  if (v34(v35, 1, v19) == 1)
  {
    sub_EB68(v35, &qword_401918);
  }

  else
  {
    sub_309978();
    (*(v20 + 8))(v35, v19);
    if (sub_309968())
    {
      v39 = [a2 searchTextField];
      [v39 becomeFirstResponder];
    }
  }

  sub_DCA00(a1, v36);
  if (v34(v36, 1, v19) == 1)
  {
    sub_EB68(v36, &qword_401918);
  }

  else
  {
    sub_309978();
    (*(v20 + 8))(v36, v19);
    if (sub_309968())
    {
      v40 = [a2 searchTextField];
      [v40 becomeFirstResponder];

      v41 = [a2 searchTextField];
      v42 = [a2 searchTextField];
      v43 = [v42 textualRange];

      [v41 setSelectedTextRange:v43];
      v34 = v52;
    }
  }

  sub_DCA00(a1, v8);
  if (v34(v8, 1, v19) == 1)
  {
    sub_EB68(v8, &qword_401918);
  }

  else
  {
    sub_309978();
    (*(v20 + 8))(v8, v19);
    if (sub_309968())
    {
      [v47 setActive:0];
      swift_beginAccess();
      v44 = swift_unknownObjectWeakLoadStrong();
      if (v44)
      {
        v44[OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchExtensionHelper_didCancel] = 1;
      }
    }
  }
}

void sub_DC028(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v5 = *a1;
  sub_308988();
  sub_304D58();

  if (v6 == 1)
  {
    if (v5)
    {
      sub_2922BC(a4);
    }

    else
    {
      sub_2920D8(a4);
    }
  }
}

id sub_DC0A0(uint64_t a1, void *a2)
{
  v4 = sub_308918();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  v10 = 0;
  if (v9 != enum case for SearchExtension.SearchBarPlacement.automatic(_:))
  {
    if (v9 == enum case for SearchExtension.SearchBarPlacement.stacked(_:))
    {
      v10 = 2;
    }

    else if (v9 == enum case for SearchExtension.SearchBarPlacement.inline(_:))
    {
      v10 = 1;
    }

    else if (v9 == enum case for SearchExtension.SearchBarPlacement.inlineCenter(_:))
    {
      v10 = 3;
    }

    else
    {
      (*(v5 + 8))(v8, v4, 0);
      v10 = 0;
    }
  }

  return [a2 setPreferredSearchBarPlacement:v10];
}

void sub_DC224(_BYTE *a1, void *a2)
{
  if (*a1 != 1)
  {
    v4 = [objc_opt_self() mainBundle];
    v6._countAndFlagsBits = 0xE700000000000000;
    v7._object = 0x800000000033A310;
    v7._countAndFlagsBits = 0xD000000000000015;
    v8.value._countAndFlagsBits = 0;
    v8.value._object = 0;
    v5.super.isa = v4;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    sub_301AB8(v7, v8, v5, v9, v6);

LABEL_6:
    v3 = sub_30C098();

    goto LABEL_7;
  }

  sub_308948();
  sub_304D58();

  if (HIBYTE(v6._object) != 2)
  {
    sub_301FB8();
    goto LABEL_6;
  }

  v3 = 0;
LABEL_7:
  [a2 setPlaceholder:v3];
}

void sub_DC348(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v4 = v3;
  v7 = [a1 navigationItem];
  v8 = [v7 _bottomPalette];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  type metadata accessor for MultiViewHostingPalette();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

LABEL_4:
    v10 = [objc_allocWithZone(type metadata accessor for MultiViewHostingPalette()) init];
    [v7 _setBottomPalette:v10];
  }

  v11 = type metadata accessor for SearchExtensionHelper();
  v12 = objc_allocWithZone(v11);
  v13 = v7;

  v14 = sub_D86CC(v4, v13, v10, a2);
  a3[3] = v11;

  *a3 = v14;
}

void sub_DC45C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401920);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v44 - v5;
  v7 = [a2 text];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = sub_30C0D8();
  v11 = v10;

  v12 = sub_301FE8();
  v14 = v13;
  if (v12 == sub_301FE8() && v14 == v15)
  {

LABEL_6:
    v17 = 0x800000000033A2A0;
    v18 = 0xD000000000000014;
    goto LABEL_8;
  }

  v16 = sub_30D728();

  if (v16)
  {
    goto LABEL_6;
  }

  v17 = 0xED00007972617262;
  v18 = 0x694C206E69204025;
LABEL_8:
  v19 = [objc_opt_self() mainBundle];
  v43._countAndFlagsBits = 0xE000000000000000;
  v49._countAndFlagsBits = v18;
  v49._object = v17;
  v50.value._countAndFlagsBits = 0;
  v50.value._object = 0;
  v20.super.isa = v19;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  sub_301AB8(v49, v50, v20, v51, v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
  v21 = swift_allocObject();
  v44 = xmmword_315430;
  *(v21 + 16) = xmmword_315430;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_DC9AC();
  *(v21 + 32) = v9;
  *(v21 + 40) = v11;

  v22 = sub_30C108();
  v24 = v23;

  v25 = objc_allocWithZone(NSMutableAttributedString);
  v26 = sub_30C098();
  v27 = [v25 initWithString:v26];

  v47 = v22;
  v48 = v24;
  v45 = v9;
  v46 = v11;
  v28 = sub_301E48();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  sub_E504();
  sub_30D418();
  v30 = v29;
  v32 = v31;
  sub_EB68(v6, &unk_401920);

  if (v32)
  {
    goto LABEL_15;
  }

  v33 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v33 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v30 >> 14 >= 4 * v33)
  {
LABEL_15:
  }

  else
  {
    v34 = 7;
    if (((v24 >> 60) & ((v22 & 0x800000000000000) == 0)) != 0)
    {
      v34 = 11;
    }

    v47 = v30;
    v48 = v34 | (v33 << 16);
    v45 = v22;
    v46 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401940);
    sub_EC8C(&qword_401948, &qword_401940);
    v35 = sub_30D2F8();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
    inited = swift_initStackObject();
    *(inited + 16) = v44;
    *(inited + 32) = NSForegroundColorAttributeName;
    v39 = objc_opt_self();
    v40 = NSForegroundColorAttributeName;
    v41 = [v39 secondaryLabelColor];
    *(inited + 64) = sub_124C4(0, &qword_3FFD48);
    *(inited + 40) = v41;
    sub_2D6CB0(inited);
    swift_setDeallocating();
    sub_EB68(inited + 32, &unk_3FFD50);
    type metadata accessor for Key(0);
    sub_DCA70(&qword_3FB410, type metadata accessor for Key);
    isa = sub_30BF88().super.isa;

    [v27 setAttributes:isa range:{v35, v37}];

    [a2 setAttributedText:v27];
  }
}

unint64_t sub_DC9AC()
{
  result = qword_401930;
  if (!qword_401930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401930);
  }

  return result;
}

uint64_t sub_DCA00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DCA70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_DCAB8(uint64_t a1)
{
  result = sub_3089A8();
  if (*(result + 16) <= a1)
  {

    v3 = 2;
  }

  else
  {
    if (a1 < 0)
    {
      __break(1u);
      return result;
    }

    v3 = *(result + a1 + 32);
  }

  sub_308948();
  sub_304D58();

  if (v9 == 2)
  {
    if (v3 == 2)
    {
      return result;
    }

LABEL_9:
    sub_308948();
    sub_304D68();
  }

  if (v3 == 2)
  {
    goto LABEL_9;
  }

  v4 = sub_301FE8();
  v6 = v5;
  if (v4 == sub_301FE8() && v6 == v7)
  {
  }

  v8 = sub_30D728();

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_DCC00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DCC38()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_DCC8C()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_DCCE8()
{
  result = qword_4019B8;
  if (!qword_4019B8)
  {
    sub_124C4(255, &qword_4019C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4019B8);
  }

  return result;
}

uint64_t sub_DCD50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_DCD98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DCDD8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_DCE2C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_DCE88()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_DCED0()
{
  result = qword_401A50;
  if (!qword_401A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401A58);
    sub_DCF54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401A50);
  }

  return result;
}

unint64_t sub_DCF54()
{
  result = qword_401A60;
  if (!qword_401A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401A60);
  }

  return result;
}

uint64_t sub_DCFA8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_DD01C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for BrickListContentView.Model(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_DD0DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BrickListContentView.Model(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for BrickContentView()
{
  result = qword_401B30;
  if (!qword_401B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DD1CC()
{
  result = sub_30B9A8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BrickListContentView.Model(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_DD2C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v30 = sub_305BA8();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_306008();
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401B78);
  __chkstk_darwin(v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401B80);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401B88);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  *v10 = sub_306C58();
  v10[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401B90);
  sub_DD6BC(v2, v10 + *(v19 + 44));
  sub_306C58();
  sub_305638();
  sub_34804(v10, v13, &qword_401B78);
  v20 = &v13[*(v11 + 36)];
  v21 = v38;
  *(v20 + 4) = v37;
  *(v20 + 5) = v21;
  *(v20 + 6) = v39;
  v22 = v34;
  *v20 = v33;
  *(v20 + 1) = v22;
  v23 = v36;
  *(v20 + 2) = v35;
  *(v20 + 3) = v23;
  sub_305FE8();
  v24 = sub_DDEB8();
  sub_306738();
  (*(v5 + 8))(v7, v27);
  sub_EB68(v13, &qword_401B80);
  sub_305B88();
  v31 = v11;
  v32 = v24;
  swift_getOpaqueTypeConformance2();
  sub_306758();
  (*(v28 + 8))(v4, v30);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_DD6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v31 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401BA8);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401BB0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v30 - v13);
  v15 = [objc_opt_self() systemGray6Color];
  v16 = sub_3068C8();
  v17 = v14 + *(v9 + 44);
  v18 = *(sub_3055F8() + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = sub_305B68();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #14.0 }

  *v17 = _Q0;
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC4B8) + 36)] = 256;
  *v14 = v16;
  *v7 = sub_305AA8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401BB8);
  sub_DD990(v30, &v7[*(v26 + 44)]);
  sub_EB00(v14, v11, &qword_401BB0);
  sub_EB00(v7, v4, &qword_401BA8);
  v27 = v31;
  sub_EB00(v11, v31, &qword_401BB0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401BC0);
  sub_EB00(v4, v27 + *(v28 + 48), &qword_401BA8);
  sub_EB68(v7, &qword_401BA8);
  sub_EB68(v14, &qword_401BB0);
  sub_EB68(v4, &qword_401BA8);
  return sub_EB68(v11, &qword_401BB0);
}

uint64_t sub_DD990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v45 = type metadata accessor for BrickListContentView(0);
  __chkstk_darwin(v45);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = &v44 - v5;
  v54 = sub_30B268();
  v6 = *(v54 - 8);
  __chkstk_darwin(v54);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = &v44 - v9;
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401BC8);
  __chkstk_darwin(v13);
  v53 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  __chkstk_darwin(v18);
  v52 = &v44 - v19;
  if (qword_3FAA10 != -1)
  {
    swift_once();
  }

  sub_30B278();
  sub_303BA8();
  sub_30B8E8();
  sub_303B98();
  sub_303A98();
  sub_DE170(&unk_3FC918, &type metadata accessor for InterestStateMachine);
  v20 = sub_3053C8();
  v22 = v21;

  v23 = type metadata accessor for BrickContentView();
  if (*(a1 + v23[7]))
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = sub_306C58();
  v27 = v26;
  v51 = v6;
  (*(v6 + 32))(v17, v12, v54);
  v28 = &v17[*(v13 + 36)];
  *v28 = v20;
  *(v28 + 1) = v22;
  *(v28 + 2) = v24;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v29 = v17;
  v30 = v52;
  sub_34804(v29, v52, &qword_401BC8);
  v31 = v45;
  v32 = v47;
  sub_DDFB0(a1 + v23[6], &v47[*(v45 + 20)], type metadata accessor for BrickListContentView.Model);
  LOBYTE(v27) = *(a1 + v23[8]);
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  *(v32 + *(v31 + 24)) = v27;
  v33 = v46;
  sub_30B278();
  v34 = v53;
  sub_EB00(v30, v53, &qword_401BC8);
  v35 = v50;
  sub_DDFB0(v32, v50, type metadata accessor for BrickListContentView);
  v36 = *(v51 + 16);
  v37 = v48;
  v38 = v54;
  v36(v48, v33, v54);
  v39 = v34;
  v40 = v49;
  sub_EB00(v39, v49, &qword_401BC8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401BD0);
  sub_DDFB0(v35, v40 + *(v41 + 48), type metadata accessor for BrickListContentView);
  v36((v40 + *(v41 + 64)), v37, v38);
  v42 = *(v51 + 8);
  v42(v33, v38);
  sub_DE018(v32);
  sub_EB68(v52, &qword_401BC8);
  v42(v37, v38);
  sub_DE018(v35);
  return sub_EB68(v53, &qword_401BC8);
}

unint64_t sub_DDEB8()
{
  result = qword_401B98;
  if (!qword_401B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401B80);
    sub_DDF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401B98);
  }

  return result;
}

unint64_t sub_DDF44()
{
  result = qword_401BA0;
  if (!qword_401BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401BA0);
  }

  return result;
}

uint64_t sub_DDFB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_DE018(uint64_t a1)
{
  v2 = type metadata accessor for BrickListContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_DE078()
{
  result = qword_401BD8;
  if (!qword_401BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_401B80);
    sub_DDEB8();
    swift_getOpaqueTypeConformance2();
    sub_DE170(&qword_3FC7C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_401BD8);
  }

  return result;
}

uint64_t sub_DE170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_DE1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_DE2B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_DE3A0()
{
  sub_DE7CC(319, &qword_401C50, &type metadata accessor for ArtworkModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_DE4D4(319, &qword_3FD228);
    if (v1 <= 0x3F)
    {
      sub_DE4D4(319, &qword_401C58);
      if (v2 <= 0x3F)
      {
        sub_DE4D4(319, &qword_401C60);
        if (v3 <= 0x3F)
        {
          sub_DE520();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_DE4D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_30D3A8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_DE520()
{
  if (!qword_401C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_3FBB60);
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_401C68);
    }
  }
}

uint64_t sub_DE598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for BrickListContentView.Model(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_DE650(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for BrickListContentView.Model(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_DE710()
{
  sub_DE7CC(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BrickListContentView.Model(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_DE7CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_DE84C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401E30);
  __chkstk_darwin(v18);
  v2 = &v17 - v1;
  v3 = sub_306928();
  sub_306C58();
  sub_3051F8();
  v4 = v27;
  v5 = v28;
  v6 = v29;
  v7 = v30;
  v9 = v31;
  v8 = v32;
  sub_306168();
  v10 = sub_306178();

  KeyPath = swift_getKeyPath();
  v26 = v5;
  v25 = v7;
  *&v20 = v3;
  *(&v20 + 1) = v4;
  LOBYTE(v21) = v5;
  *(&v21 + 1) = v6;
  LOBYTE(v22) = v7;
  *(&v22 + 1) = v9;
  *&v23 = v8;
  *(&v23 + 1) = KeyPath;
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401E48);
  sub_E1A44();
  sub_3064C8();
  v33[2] = v22;
  v33[3] = v23;
  v34 = v24;
  v33[0] = v20;
  v33[1] = v21;
  sub_EB68(v33, &qword_401E48);
  LODWORD(v3) = sub_305E88();
  *&v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_401E40) + 36)] = v3;
  v12 = &v2[*(v18 + 36)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798) + 28);
  v14 = enum case for Image.Scale.small(_:);
  v15 = sub_306958();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  sub_E1898();
  sub_3066F8();
  return sub_EB68(v2, &qword_401E30);
}

uint64_t sub_DEB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v269 = a2;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401D50);
  __chkstk_darwin(v248);
  v215 = &v205 - v3;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401D58);
  __chkstk_darwin(v246);
  v247 = &v205 - v4;
  v5 = sub_305A08();
  v227 = *(v5 - 8);
  v228 = v5;
  __chkstk_darwin(v5);
  v226 = &v205 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_309778();
  v264 = *(v271 - 8);
  __chkstk_darwin(v271);
  v270 = &v205 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v240 = &v205 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401D60);
  __chkstk_darwin(v10 - 8);
  v268 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v275 = &v205 - v13;
  v14 = sub_306008();
  v261 = *(v14 - 8);
  v262 = v14;
  __chkstk_darwin(v14);
  v260 = &v205 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401D68);
  v266 = *(v16 - 8);
  v267 = v16;
  __chkstk_darwin(v16);
  v265 = &v205 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v274 = &v205 - v19;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401D70);
  __chkstk_darwin(v256);
  v213 = &v205 - v20;
  v208 = sub_306838();
  v206 = *(v208 - 8);
  __chkstk_darwin(v208);
  v207 = &v205 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401D78);
  v210 = *(v22 - 8);
  v211 = v22;
  __chkstk_darwin(v22);
  v209 = &v205 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401D80);
  __chkstk_darwin(v24 - 8);
  v212 = &v205 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v214 = &v205 - v27;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401D88);
  __chkstk_darwin(v245);
  v225 = &v205 - v28;
  v29 = sub_306938();
  v217 = *(v29 - 8);
  v218 = v29;
  __chkstk_darwin(v29);
  v216 = &v205 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401D90);
  v222 = *(v31 - 8);
  v223 = v31;
  __chkstk_darwin(v31);
  v219 = &v205 - v32;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401D98);
  __chkstk_darwin(v221);
  v220 = &v205 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DA0);
  __chkstk_darwin(v34 - 8);
  v224 = &v205 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v239 = &v205 - v37;
  v231 = sub_3055F8();
  __chkstk_darwin(v231);
  v230 = &v205 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DA8);
  __chkstk_darwin(v251);
  v255 = &v205 - v39;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DB0);
  __chkstk_darwin(v241);
  v243 = &v205 - v40;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DB8);
  __chkstk_darwin(v252);
  v244 = &v205 - v41;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DC0);
  __chkstk_darwin(v242);
  v238 = &v205 - v42;
  v43 = sub_30B268();
  v253 = *(v43 - 8);
  v254 = v43;
  __chkstk_darwin(v43);
  v250 = &v205 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v272 = &v205 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DC8);
  __chkstk_darwin(v47 - 8);
  v249 = &v205 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v49 - 8);
  v258 = &v205 - v50;
  v235 = sub_30B198();
  v233 = *(v235 - 8);
  __chkstk_darwin(v235);
  v52 = &v205 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DD0);
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v232 = &v205 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DD8);
  __chkstk_darwin(v54 - 8);
  v237 = &v205 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v257 = (&v205 - v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v58 - 8);
  v60 = &v205 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v63 = &v205 - v62;
  v64 = sub_3031C8();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v205 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DE0);
  __chkstk_darwin(v68 - 8);
  v273 = &v205 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v276 = &v205 - v71;
  v229 = type metadata accessor for BrickListContentView(0);
  v72 = *(v229 + 20);
  v263 = a1;
  v73 = a1 + v72;
  sub_EB00(v73, v63, &unk_402FF0);
  v74 = (*(v65 + 48))(v63, 1, v64);
  v259 = v73;
  if (v74 != 1)
  {
    sub_6D85C(v63, v67);
    sub_6D8C0(v67, v60);
    (*(v65 + 56))(v60, 0, 1, v64);
    v83 = sub_303DF8();
    (*(*(v83 - 8) + 56))(v258, 1, 1, v83);
    *&v299 = 0;
    v298 = 0u;
    v297 = 0u;
    sub_306C38();
    sub_30B178();
    v84 = type metadata accessor for BrickListContentView.Model(0);
    v85 = *(v73 + *(v84 + 24));
    v86 = v52;
    v258 = v84;
    v205 = v67;
    if (v85 == 1)
    {
      sub_E1EC0();
    }

    else
    {
      v87 = *(v231 + 20);
      v88 = enum case for RoundedCornerStyle.continuous(_:);
      v89 = sub_305B68();
      v90 = v230;
      (*(*(v89 - 8) + 104))(&v230[v87], v88, v89);
      __asm { FMOV            V0.2D, #4.0 }

      *v90 = _Q0;
      sub_E2088(&qword_401E78, &type metadata accessor for RoundedRectangle);
    }

    *&v297 = sub_306B98();
    v96 = v249;
    sub_307F28();
    v97 = sub_307F38();
    (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
    v98 = sub_E2088(&qword_401F00, &type metadata accessor for Artwork);
    v99 = sub_E1D8C();
    v100 = v232;
    v101 = v235;
    sub_306458();
    sub_EB68(v96, &qword_401DC8);

    (*(v233 + 8))(v86, v101);
    *&v297 = v101;
    *(&v297 + 1) = &type metadata for AnyShape;
    *&v298 = v98;
    *(&v298 + 1) = v99;
    swift_getOpaqueTypeConformance2();
    v102 = v257;
    v103 = v236;
    sub_3066F8();
    (*(v234 + 8))(v100, v103);
    v104 = v272;
    sub_30B278();
    v105 = v237;
    sub_EB00(v102, v237, &qword_401DD8);
    v106 = v253;
    v107 = *(v253 + 16);
    v108 = v250;
    v109 = v104;
    v110 = v254;
    v107(v250, v109, v254);
    v111 = v238;
    sub_EB00(v105, v238, &qword_401DD8);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401F08);
    v107((v111 + *(v112 + 48)), v108, v110);
    v253 = *(v106 + 8);
    (v253)(v108, v110);
    sub_EB68(v105, &qword_401DD8);
    sub_EB00(v111, v243, &qword_401DC0);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_401EC0, &qword_401DC0);
    sub_EC8C(&qword_401EC8, &qword_401D88);
    v113 = v244;
    sub_305D48();
    sub_EB00(v113, v255, &qword_401DB8);
    swift_storeEnumTagMultiPayload();
    sub_E1DE0();
    sub_EC8C(&qword_401ED0, &qword_401D70);
    v114 = v276;
    sub_305D48();
    sub_EB68(v113, &qword_401DB8);
    sub_EB68(v111, &qword_401DC0);
    (v253)(v272, v110);
    v115 = v114;
    sub_EB68(v257, &qword_401DD8);
    sub_6D924(v205);
    goto LABEL_13;
  }

  sub_EB68(v63, &unk_402FF0);
  v75 = type metadata accessor for BrickListContentView.Model(0);
  v76 = v75;
  v77 = *(v73 + *(v75 + 20) + 8);
  v78 = v73;
  v258 = v75;
  if (v77)
  {

    sub_306978();
    v80 = v216;
    v79 = v217;
    v81 = v218;
    (*(v217 + 104))(v216, enum case for Image.ResizingMode.stretch(_:), v218);
    v82 = sub_306968();

    (*(v79 + 8))(v80, v81);
    v297 = v82;
    LOWORD(v298) = 1;
    if (*(v78 + *(v76 + 24)) == 1)
    {
      sub_E1EC0();
    }

    else
    {
      v118 = *(v231 + 20);
      v119 = enum case for RoundedCornerStyle.continuous(_:);
      v120 = sub_305B68();
      v121 = v230;
      (*(*(v120 - 8) + 104))(&v230[v118], v119, v120);
      __asm { FMOV            V0.2D, #4.0 }

      *v121 = _Q0;
      sub_E2088(&qword_401E78, &type metadata accessor for RoundedRectangle);
    }

    *&v281 = sub_306B98();
    v123 = v249;
    sub_307F28();
    v124 = sub_307F38();
    (*(*(v124 - 8) + 56))(v123, 0, 1, v124);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401EE0);
    sub_E1F14(&qword_401EE8, &qword_401EE0);
    sub_E1D8C();
    v125 = v219;
    sub_306458();
    sub_EB68(v123, &qword_401DC8);

    sub_306C58();
    sub_3051F8();
    v126 = v220;
    (*(v222 + 32))(v220, v125, v223);
    v127 = (v126 + *(v221 + 36));
    v128 = v309;
    *v127 = v308;
    v127[1] = v128;
    v127[2] = v310;
    sub_E1F84();
    v129 = v239;
    sub_3066F8();
    sub_EB68(v126, &qword_401D98);
    v130 = v272;
    sub_30B278();
    v131 = v224;
    sub_EB00(v129, v224, &qword_401DA0);
    v132 = v253;
    v133 = *(v253 + 16);
    v134 = v250;
    v135 = v130;
    v136 = v254;
    v133(v250, v135, v254);
    v137 = v225;
    sub_EB00(v131, v225, &qword_401DA0);
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401EF8);
    v133((v137 + *(v138 + 48)), v134, v136);
    v257 = *(v132 + 8);
    (v257)(v134, v136);
    sub_EB68(v131, &qword_401DA0);
    sub_EB00(v137, v243, &qword_401D88);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_401EC0, &qword_401DC0);
    sub_EC8C(&qword_401EC8, &qword_401D88);
    v139 = v244;
    sub_305D48();
    sub_EB00(v139, v255, &qword_401DB8);
    swift_storeEnumTagMultiPayload();
    sub_E1DE0();
    sub_EC8C(&qword_401ED0, &qword_401D70);
    v140 = v276;
    sub_305D48();
    sub_EB68(v139, &qword_401DB8);
    sub_EB68(v137, &qword_401D88);
    (v257)(v272, v136);
    v115 = v140;
    sub_EB68(v239, &qword_401DA0);
LABEL_13:
    v117 = 0;
    goto LABEL_14;
  }

  v116 = v73 + *(v75 + 28);
  v115 = v276;
  if (*(v116 + 4))
  {
    v117 = 1;
LABEL_14:
    v141 = v275;
    goto LABEL_15;
  }

  LODWORD(v257) = HIBYTE(*v116);
  sub_306C58();
  sub_3051F8();
  v245 = v308;
  LODWORD(v244) = BYTE8(v308);
  v177 = v309;
  v178 = BYTE8(v309);
  v179 = v310;
  (*(v206 + 104))(v207, enum case for Color.RGBColorSpace.sRGB(_:), v208);
  v180 = sub_3068B8();
  *&v297 = v245;
  BYTE8(v297) = v244;
  *&v298 = v177;
  BYTE8(v298) = v178;
  v299 = v179;
  v257 = v180;
  *&v300 = v180;
  if (*(v73 + *(v76 + 24)) == 1)
  {
    sub_E1EC0();
  }

  else
  {
    v181 = *(v231 + 20);
    v182 = enum case for RoundedCornerStyle.continuous(_:);
    v183 = sub_305B68();
    v184 = v230;
    (*(*(v183 - 8) + 104))(&v230[v181], v182, v183);
    __asm { FMOV            V0.2D, #4.0 }

    *v184 = _Q0;
    sub_E2088(&qword_401E78, &type metadata accessor for RoundedRectangle);
  }

  v186 = sub_306B98();
  v141 = v275;
  v245 = v186;
  *&v281 = v186;
  v187 = v249;
  sub_307F28();
  v188 = sub_307F38();
  (*(*(v188 - 8) + 56))(v187, 0, 1, v188);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401E80);
  v190 = sub_E1BF4();
  v191 = sub_E1D8C();
  v192 = v209;
  sub_306458();
  sub_EB68(v187, &qword_401DC8);

  *&v297 = v189;
  *(&v297 + 1) = &type metadata for AnyShape;
  *&v298 = v190;
  *(&v298 + 1) = v191;
  swift_getOpaqueTypeConformance2();
  v193 = v214;
  v194 = v211;
  sub_3066F8();
  (*(v210 + 8))(v192, v194);
  v195 = v272;
  sub_30B278();
  v196 = v212;
  sub_EB00(v193, v212, &qword_401D80);
  v197 = v253;
  v198 = *(v253 + 16);
  v199 = v250;
  v200 = v195;
  v201 = v254;
  v198(v250, v200, v254);
  v202 = v213;
  sub_EB00(v196, v213, &qword_401D80);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401EB0);
  v198((v202 + *(v203 + 48)), v199, v201);
  v204 = *(v197 + 8);
  v204(v199, v201);
  sub_EB68(v196, &qword_401D80);
  sub_EB00(v202, v255, &qword_401D70);
  swift_storeEnumTagMultiPayload();
  sub_E1DE0();
  sub_EC8C(&qword_401ED0, &qword_401D70);
  sub_305D48();
  sub_EB68(v202, &qword_401D70);
  v204(v272, v201);
  sub_EB68(v214, &qword_401D80);
  v117 = 0;
LABEL_15:
  v142 = v263;
  v143 = v264;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DE8);
  (*(*(v144 - 8) + 56))(v115, v117, 1, v144);
  v145 = sub_305BE8();
  LOBYTE(v277[0]) = 1;
  sub_E113C(v142, &v297);
  v292 = v305;
  v293 = v306;
  v288 = v301;
  v289 = v302;
  v291 = v304;
  v290 = v303;
  v284 = v297;
  v285 = v298;
  v287 = v300;
  v286 = v299;
  v295[8] = v305;
  v295[9] = v306;
  v295[4] = v301;
  v295[5] = v302;
  v295[7] = v304;
  v295[6] = v303;
  v295[0] = v297;
  v295[1] = v298;
  v294 = v307[0];
  v296 = v307[0];
  v295[3] = v300;
  v295[2] = v299;
  sub_EB00(&v284, &v281, &qword_401DF0);
  sub_EB68(v295, &qword_401DF0);
  *&v283[119] = v291;
  *&v283[135] = v292;
  *&v283[151] = v293;
  v283[167] = v294;
  *&v283[55] = v287;
  *&v283[71] = v288;
  *&v283[87] = v289;
  *&v283[103] = v290;
  *&v283[7] = v284;
  *&v283[23] = v285;
  *&v283[39] = v286;
  *(&v282[7] + 1) = *&v283[112];
  *(&v282[8] + 1) = *&v283[128];
  *(&v282[9] + 1) = *&v283[144];
  *(&v282[3] + 1) = *&v283[48];
  *(&v282[4] + 1) = *&v283[64];
  *(&v282[5] + 1) = *&v283[80];
  *(&v282[6] + 1) = *&v283[96];
  *(v282 + 1) = *v283;
  *(&v282[1] + 1) = *&v283[16];
  v281 = v145;
  LOBYTE(v282[0]) = v277[0];
  *(&v282[10] + 1) = *&v283[160];
  *(&v282[2] + 1) = *&v283[32];
  v146 = v260;
  sub_305FE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401DF8);
  sub_EC8C(&qword_401E00, &qword_401DF8);
  sub_306738();
  (*(v261 + 8))(v146, v262);
  v305 = v282[7];
  v306 = v282[8];
  v307[0] = v282[9];
  *(v307 + 9) = *(&v282[9] + 9);
  v301 = v282[3];
  v302 = v282[4];
  v303 = v282[5];
  v304 = v282[6];
  v297 = v281;
  v298 = v282[0];
  v299 = v282[1];
  v300 = v282[2];
  sub_EB68(&v297, &qword_401DF8);
  type metadata accessor for BrickListContentView.Model(0);
  sub_EB00(v259 + *(v258 + 11), &v281, &unk_3FBB40);
  if (*(&v282[0] + 1))
  {
    sub_12658(&v281, v280);
    sub_12670(v280, &v281);
    v147 = v240;
    sub_309748();
    v148 = *v142;
    v149 = *(v142 + 8);

    if ((v149 & 1) == 0)
    {
      sub_30C7A8();
      v150 = sub_306088();
      sub_304108();

      v151 = v226;
      sub_3059F8();
      swift_getAtKeyPath();

      (*(v227 + 8))(v151, v228);
      v148 = v281;
    }

    (*(v143 + 16))(v270, v147, v271);
    *&v278 = 0;
    *&v277[0] = v148;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60);

    sub_30B8E8();
    *(v277 + 8) = v281;
    sub_309728();
    *(&v278 + 1) = 0;
    v279 = 1;
    v152 = sub_309738();
    v155 = v276;
    if (v154 == -1)
    {
    }

    else
    {
      v156 = v152;
      v157 = v153;
      v158 = v154;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);
      sub_30B9A8();
      sub_30BE78();

      *&v278 = sub_303AF8();
      sub_303AE8();

      sub_E1BCC(v156, v157, v158);
    }

    v161 = *(v143 + 8);
    v162 = v271;
    v161(v270, v271);
    v282[1] = v277[2];
    v282[2] = v277[3];
    v282[3] = v278;
    LOBYTE(v282[4]) = v279;
    v281 = v277[0];
    v282[0] = v277[1];
    sub_E1B1C(&v281, v247);
    swift_storeEnumTagMultiPayload();
    sub_E1788();
    sub_E17DC();
    sub_305D48();
    sub_E1B78(&v281);
    v161(v147, v162);
    __swift_destroy_boxed_opaque_existential_1(v280);
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401E08);
    (*(*(v163 - 8) + 56))(v141, 0, 1, v163);
  }

  else
  {
    sub_EB68(&v281, &unk_3FBB40);
    if (*(v142 + *(v229 + 24)))
    {
      v159 = v215;
      sub_DE84C(v215);
      sub_EB00(v159, v247, &qword_401D50);
      swift_storeEnumTagMultiPayload();
      sub_E1788();
      sub_E17DC();
      sub_305D48();
      sub_EB68(v159, &qword_401D50);
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401E08);
      (*(*(v160 - 8) + 56))(v141, 0, 1, v160);
    }

    else
    {
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401E08);
      (*(*(v164 - 8) + 56))(v141, 1, 1, v164);
    }

    v155 = v276;
  }

  v165 = v273;
  sub_EB00(v155, v273, &qword_401DE0);
  v167 = v265;
  v166 = v266;
  v168 = *(v266 + 16);
  v169 = v274;
  v170 = v267;
  v168(v265, v274, v267);
  v171 = v268;
  sub_EB00(v141, v268, &qword_401D60);
  v172 = v269;
  sub_EB00(v165, v269, &qword_401DE0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401E10);
  v168((v172 + v173[12]), v167, v170);
  v174 = v172 + v173[16];
  *v174 = 0;
  *(v174 + 8) = 1;
  sub_EB00(v171, v172 + v173[20], &qword_401D60);
  sub_EB68(v275, &qword_401D60);
  v175 = *(v166 + 8);
  v175(v169, v170);
  sub_EB68(v276, &qword_401DE0);
  sub_EB68(v171, &qword_401D60);
  v175(v167, v170);
  return sub_EB68(v273, &qword_401DE0);
}

uint64_t sub_E113C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 + *(type metadata accessor for BrickListContentView(0) + 20);
  v3 = type metadata accessor for BrickListContentView.Model(0);
  v64 = v3;
  v66 = v2;
  if (*(v2 + v3[8] + 8))
  {
    sub_E504();

    v4 = sub_3063C8();
    v6 = v5;
    v8 = v7;
    sub_306248();
    sub_306178();

    v9 = sub_306388();
    v11 = v10;
    v13 = v12;

    sub_EBC8(v4, v6, v8 & 1);

    sub_3068A8();
    v14 = sub_306338();
    v16 = v15;
    LOBYTE(v6) = v17;
    v19 = v18;

    sub_EBC8(v9, v11, v13 & 1);

    KeyPath = swift_getKeyPath();
    v21 = v6 & 1;
    v2 = v66;
    v78 = v16;
    v79 = v14;
    v75 = v21;
    sub_EBD8(v14, v16, v21);
    v77 = v19;

    v76 = KeyPath;

    v3 = v64;
    v74 = 1;
  }

  else
  {
    v78 = 0;
    v79 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v74 = 0;
  }

  if (*(v2 + v3[9] + 8))
  {
    sub_E504();

    v22 = sub_3063C8();
    v24 = v23;
    v26 = v25;
    sub_306228();
    v27 = sub_306388();
    v29 = v28;
    v31 = v30;

    sub_EBC8(v22, v24, v26 & 1);

    sub_305E78();
    v32 = sub_306348();
    v34 = v33;
    LOBYTE(v24) = v35;
    v37 = v36;
    sub_EBC8(v27, v29, v31 & 1);

    v38 = swift_getKeyPath();
    v39 = v24 & 1;
    v2 = v66;
    v72 = v34;
    v73 = v32;
    v69 = v39;
    sub_EBD8(v32, v34, v39);
    v71 = v37;

    v70 = v38;

    v3 = v64;
    v68 = 1;
  }

  else
  {
    v72 = 0;
    v73 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
  }

  if (*(v2 + v3[10] + 8))
  {
    sub_E504();

    v40 = sub_3063C8();
    v42 = v41;
    v44 = v43;
    sub_306158();
    v45 = sub_306388();
    v47 = v46;
    v49 = v48;

    sub_EBC8(v40, v42, v44 & 1);

    sub_305E98();
    v50 = sub_306348();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    sub_EBC8(v45, v47, v49 & 1);

    v57 = swift_getKeyPath();
    v58 = v50;
    v65 = v54 & 1;
    v67 = v52;
    sub_EBD8(v50, v52, v54 & 1);
    v61 = v56;

    v59 = v57;

    v63 = 1;
  }

  else
  {
    v58 = 0;
    v65 = 0;
    v67 = 0;
    v61 = 0;
    v59 = 0;
    v63 = 0;
  }

  sub_E20E0(v79, v78, v75, v77);
  sub_E20E0(v73, v72, v69, v71);
  sub_E20E0(v58, v67, v65, v61);
  sub_E2130(v73, v72, v69, v71);
  sub_E2130(v79, v78, v75, v77);
  sub_E2130(v58, v67, v65, v61);
  *a2 = v79;
  *(a2 + 8) = v78;
  *(a2 + 16) = v75;
  *(a2 + 24) = v77;
  *(a2 + 32) = v76;
  *(a2 + 40) = v74;
  *(a2 + 48) = 0;
  *(a2 + 56) = v73;
  *(a2 + 64) = v72;
  *(a2 + 72) = v69;
  *(a2 + 80) = v71;
  *(a2 + 88) = v70;
  *(a2 + 96) = v68;
  *(a2 + 104) = 0;
  *(a2 + 112) = v58;
  *(a2 + 120) = v67;
  *(a2 + 128) = v65;
  *(a2 + 136) = v61;
  *(a2 + 144) = v59;
  *(a2 + 152) = v63;
  *(a2 + 160) = 0;
  sub_E2130(v58, v67, v65, v61);
  sub_E2130(v73, v72, v69, v71);
  return sub_E2130(v79, v78, v75, v77);
}