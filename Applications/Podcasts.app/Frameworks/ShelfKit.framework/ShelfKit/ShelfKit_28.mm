uint64_t sub_2FB550(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void LibraryTabGroupManager.tabBarController(_:didSelectTab:previousTab:)(int a1, id a2)
{
  v3 = [a2 managingTabGroup];
  if (v3)
  {
    v4 = v3;
    v5 = [a2 identifier];
    if (!v5)
    {
      sub_3ED244();
      v6 = sub_3ED204();

      v5 = v6;
    }

    v7 = v5;
    [v4 setDefaultChildIdentifier:?];
  }
}

uint64_t sub_2FB958(id *a1, uint64_t a2)
{
  v3 = [*a1 identifier];
  v4 = sub_3ED244();
  v6 = v5;

  v7 = type metadata accessor for TabMenu.Item(0);
  if (v4 == NavigationTab.stringValue.getter(*(a2 + *(v7 + 28))) && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_3EE804();
  }

  return v10 & 1;
}

uint64_t sub_2FBB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v37 = a3;
  v38 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for DeleteStationAction();
  v16 = __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a5 identifier];
  v20 = sub_3ED244();
  v22 = v21;

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  *v18 = v20;
  *(v18 + 1) = v22;
  v18[16] = 2;
  type metadata accessor for ActionRunnerOptions();

  sub_3EC464();
  v23 = sub_3E6434();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v43 = type metadata accessor for LibraryTabGroupManager();
  v42[0] = a7;
  v24 = a7;
  v25 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v14, v42, 0);

  sub_FCF8(v14, &qword_5005B0);
  sub_FCF8(v42, &unk_501090);
  v43 = v15;
  v44 = sub_301280(&qword_5010D0, type metadata accessor for DeleteStationAction);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v42);
  sub_301180(v18, boxed_opaque_existential_0Tm, type metadata accessor for DeleteStationAction);
  v45 = v25;
  sub_E69A0(v42, &v39);
  v27 = swift_allocObject();
  v28 = v40;
  v27[1] = v39;
  v27[2] = v28;
  v27[3] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v29 = sub_3ECE04();
  v30 = sub_3ED6F4();
  (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = &unk_4072F0;
  v31[5] = v27;
  v31[6] = v29;

  sub_E8ECC(0, 0, v11, &unk_407300, v31);

  v32 = swift_allocObject();
  v33 = v38;
  *(v32 + 16) = v37;
  *(v32 + 24) = v33;
  v34 = sub_36174(0, &qword_4F10B0);

  v35 = sub_3EDBC4();
  *(&v40 + 1) = v34;
  *&v41 = &protocol witness table for OS_dispatch_queue;
  *&v39 = v35;
  sub_3ECD44();

  sub_E91B8(v42);
  sub_3011F8(v18, type metadata accessor for DeleteStationAction);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v39);
}

uint64_t sub_2FBF9C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5010D8);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  sub_FBD0(a1, &v8 - v5, &qword_5010D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_FCF8(v6, &qword_5010D8);
    return a2(0);
  }

  else
  {
    a2(1);
    return sub_FCF8(v6, &qword_5010D8);
  }
}

void sub_2FC0B0(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_301168, v8);
}

uint64_t sub_2FC1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v6 = (a3 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 >= 0x13)
      {
        if (*(v7 + 16) == a1 && *(v7 + 24) == a2)
        {

          return v7;
        }

        if (sub_3EE804())
        {
          sub_29EA4(v7);
          return v7;
        }
      }

      --v3;
    }

    while (v3);
  }

  return 19;
}

Class sub_2FC368(uint64_t a1, uint64_t a2, void (*a3)(double), uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v25 = a5;
  v6 = type metadata accessor for ActionMenu(0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  a3(v8);
  sub_36174(0, &qword_4EB5D0);
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v15 = *(v7 + 36);

  v16 = _s8ShelfKit11SystemGlyphC4load7artworkSo7UIImageCSg18PodcastsFoundation12ArtworkModelVSg_tFZ_0(v10 + v15);
  v17 = sub_3ED204();
  v26 = v24;
  v21 = ActionMenuBuilder.buildMenuElements(for:asPartOf:)(*(v10 + *(v7 + 40)), v25);
  v28._countAndFlagsBits = v11;
  v28._object = v12;
  v29.value._countAndFlagsBits = v13;
  v29.value._object = v14;
  v27.value.super.isa = v16;
  v27.is_nil = v17;
  v18.value = 0;
  isa = sub_3EDE14(v28, v29, v27, v18, 0xFFFFFFFFFFFFFFFFLL, v21, v22).super.super.isa;
  sub_3011F8(v10, type metadata accessor for ActionMenu);
  return isa;
}

id sub_2FC4E0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t (*a6)(id))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1;
  v14 = a6(v12);

  return v14;
}

BOOL sub_2FC570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TabMenu.Item(0);
  v7 = NavigationTab.stringValue.getter(*(a1 + *(v6 + 28)));
  v9 = v8;
  v10 = NavigationTab.stringValue.getter(*(a2 + *(v6 + 28)));
  v12 = v11;
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = v10;
    v15 = 0;
    v16 = (a3 + 40);
    while (1)
    {
      v17 = *(v16 - 1) == v7 && *v16 == v9;
      if (v17 || (sub_3EE804() & 1) != 0)
      {
        break;
      }

      ++v15;
      v16 += 2;
      if (v13 == v15)
      {
        goto LABEL_9;
      }
    }

    v19 = 0;
    for (i = (a3 + 40); ; i += 2)
    {
      v21 = *(i - 1) == v14 && *i == v12;
      if (v21 || (sub_3EE804() & 1) != 0)
      {
        break;
      }

      if (v13 == ++v19)
      {

        return 1;
      }
    }

    return v15 < v19;
  }

  else
  {
LABEL_9:

    return 0;
  }
}

id sub_2FC6B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_36174(0, &unk_5010A0);
  v2 = sub_3ED584();

  v3 = v1(v2);

  return v3;
}

void sub_2FC744(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v61 = a5;
  v60 = type metadata accessor for TabMenu.Item(0);
  __chkstk_darwin(v60);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  __chkstk_darwin(v17);
  v20 = &v51 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_64;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_65;
  }

  v24 = (a2 - a1) / v22;
  v65 = a1;
  v64 = a4;
  v59 = v22;
  if (v24 >= v23 / v22)
  {
    v26 = v23 / v22 * v22;
    v58 = v18;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v26;
    if (v26 >= 1)
    {
      v37 = -v59;
      v38 = a4 + v26;
      v39 = v13;
      v55 = a4;
      v56 = a1;
      v54 = -v59;
      do
      {
        v40 = a1;
        v52 = v36;
        v41 = a2 + v37;
        v57 = a2;
        while (1)
        {
          if (a2 <= v40)
          {
            v65 = a2;
            v63 = v52;
            goto LABEL_62;
          }

          v43 = a3;
          v53 = v36;
          v59 = v38;
          v44 = v38 + v37;
          sub_301180(v38 + v37, v39, type metadata accessor for TabMenu.Item);
          v45 = v6;
          v46 = v39;
          v47 = v58;
          sub_301180(v41, v58, type metadata accessor for TabMenu.Item);
          v48 = sub_2FC570(v46, v47, v61);
          if (v45)
          {
            sub_3011F8(v47, type metadata accessor for TabMenu.Item);
            sub_3011F8(v46, type metadata accessor for TabMenu.Item);
            v65 = v57;
            v63 = v53;
            goto LABEL_62;
          }

          v49 = v48;
          v62 = 0;
          v50 = v43 + v37;
          sub_3011F8(v47, type metadata accessor for TabMenu.Item);
          sub_3011F8(v46, type metadata accessor for TabMenu.Item);
          v39 = v46;
          if (v49)
          {
            break;
          }

          v36 = v44;
          a3 = v43 + v37;
          if (v43 < v59 || v50 >= v59)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v44;
            v6 = v62;
          }

          else
          {
            v6 = v62;
            if (v43 != v59)
            {
              swift_arrayInitWithTakeBackToFront();
              v36 = v44;
            }
          }

          v38 = v36;
          v40 = v56;
          v42 = v44 > v55;
          v37 = v54;
          a2 = v57;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v43 + v37;
        if (v43 < v57 || v50 >= v57)
        {
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v62;
          v37 = v54;
        }

        else
        {
          a2 = v41;
          v6 = v62;
          v37 = v54;
          if (v43 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v56;
        v38 = v59;
        v36 = v53;
      }

      while (v59 > v55);
    }

LABEL_58:
    v65 = a2;
    v63 = v36;
  }

  else
  {
    v25 = v24 * v22;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = a4 + v25;
    v63 = a4 + v25;
    if (v25 >= 1 && a2 < a3)
    {
      v28 = v59;
      v57 = v20;
      while (1)
      {
        v29 = a3;
        sub_301180(a2, v20, type metadata accessor for TabMenu.Item);
        sub_301180(a4, v16, type metadata accessor for TabMenu.Item);
        v30 = sub_2FC570(v20, v16, v61);
        if (v6)
        {
          break;
        }

        v31 = v30;
        v62 = 0;
        v32 = v16;
        v33 = a4;
        v34 = v32;
        sub_3011F8(v32, type metadata accessor for TabMenu.Item);
        sub_3011F8(v20, type metadata accessor for TabMenu.Item);
        if (v31)
        {
          v35 = a2 + v28;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v28;
          if (a1 < v33 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = v33 + v28;
        }

        v16 = v34;
        v28 = v59;
        a1 += v59;
        v65 = a1;
        v20 = v57;
        v6 = v62;
        if (a4 >= v58 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_3011F8(v16, type metadata accessor for TabMenu.Item);
      sub_3011F8(v20, type metadata accessor for TabMenu.Item);
    }
  }

LABEL_62:
  sub_2A66D4(&v65, &v64, &v63);
}

id sub_2FCD88(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501128);
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500EB0);
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v34 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500F08);
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v31 = &v30 - v10;
  v30 = type metadata accessor for TabMenu.Item(0);
  __chkstk_darwin(v30);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v2[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_viewControllerProvider];
  *v13 = 0;
  *(v13 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_subscription] = 0;
  v14 = &v2[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_librarySection];
  *v14 = 1;
  *(v14 + 1) = _swiftEmptyArrayStorage;
  v15 = &v2[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsSection];
  *v15 = 2;
  *(v15 + 1) = _swiftEmptyArrayStorage;
  v16 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsTabGroup;
  v17 = objc_allocWithZone(UITabGroup);
  v18 = sub_3ED204();
  v19 = sub_3ED204();
  v20 = [v17 initWithTitle:v18 image:0 identifier:v19 viewControllerProvider:0];

  *&v2[v16] = v20;
  *&v2[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_objectGraph] = a1;
  sub_36174(0, &qword_501130);

  sub_3EC394();
  v21 = *&v39[0];
  swift_unknownObjectWeakAssign();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F10);
  sub_3EC394();
  *&v2[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_actionRunner] = v39[0];
  v22 = objc_opt_self();

  v23 = sub_30EC98(a1, [v22 standardUserDefaults], 1);

  *&v2[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabMenuProvider] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();
  sub_1FE90(v39, &v2[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_libraryActionController]);
  sub_36174(0, &unk_501080);
  if (qword_4E8AD8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v30, qword_5398C8);
  sub_301180(v24, v12, type metadata accessor for TabMenu.Item);
  *&v2[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup] = sub_30A674(v12, 0, 0);
  sub_36174(0, &qword_4EA748);
  v25 = v37;
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v37);
  v26 = v31;
  v27 = v34;
  sub_3ED704();
  (*(v4 + 8))(v6, v25);
  (*(v32 + 32))(&v2[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabs], v26, v33);
  (*(v35 + 32))(&v2[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabsContinuation], v27, v36);
  v28 = type metadata accessor for LibraryTabGroupManager();
  v38.receiver = v2;
  v38.super_class = v28;
  return objc_msgSendSuper2(&v38, "init");
}

uint64_t type metadata accessor for LibraryTabGroupManager()
{
  result = qword_500F80;
  if (!qword_500F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2FD358()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_2FD398()
{
  result = qword_500F10;
  if (!qword_500F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500F10);
  }

  return result;
}

uint64_t sub_2FD3EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v0 - 8);
  v40 = &v35 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v2 - 8);
  v38 = &v35 - v3;
  v4 = sub_3E5FC4();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_3EC1F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = UITab.navigationTab.getter();
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v35 = type metadata accessor for TabChangeAction();
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab) = v17;
  *(v18 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_actions) = _swiftEmptyArrayStorage;
  *(v18 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_popToRoot) = 0;
  *(v18 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_userInitiated) = 1;
  *(v18 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_suppressMetrics) = 0;
  (*(v11 + 16))(v13, v16, v10);
  v19 = sub_3EC634();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_29EA4(v17);
  sub_3E5FB4();
  v20 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v22 = v21;
  sub_29EB8(v17);
  (*(v36 + 8))(v6, v37);
  (*(v11 + 8))(v16, v10);
  *(v18 + 16) = v20;
  *(v18 + 24) = v22;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  *(v18 + 48) = 0;
  (*(v11 + 32))(v18 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v13, v10);
  sub_14A10(v9, v18 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  type metadata accessor for ActionRunnerOptions();
  v23 = v39;

  sub_3EC464();
  v24 = sub_3E6434();
  v25 = v38;
  (*(*(v24 - 8) + 56))(v38, 1, 1, v24);
  v43 = type metadata accessor for LibraryTabGroupManager();
  v42[0] = v23;
  v26 = v23;
  v27 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v25, v42, 0);

  sub_FCF8(v25, &qword_5005B0);
  sub_FCF8(v42, &unk_501090);
  v43 = v35;
  v44 = sub_301280(&unk_501110, type metadata accessor for TabChangeAction);
  v45 = v27;
  v42[0] = v18;
  sub_E69A0(v42, v41);
  v28 = swift_allocObject();
  v29 = v41[1];
  v28[1] = v41[0];
  v28[2] = v29;
  v28[3] = v41[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v30 = sub_3ECE04();
  v31 = sub_3ED6F4();
  v32 = v40;
  (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = &unk_418B88;
  v33[5] = v28;
  v33[6] = v30;

  sub_E8ECC(0, 0, v32, &unk_418B90, v33);

  sub_E91B8(v42);
  return 0;
}

void *_s8ShelfKit22LibraryTabGroupManagerC16tabBarController_27displayedViewControllersFor08proposedkL0SaySo06UIViewI0CGSo05UITabhI0C_So0P0CAItF_0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = [objc_opt_self() currentTraitCollection];
  v7 = [v6 horizontalSizeClass];

  v8 = UITab.navigationTab.getter();
  if (v8 == 7)
  {
LABEL_5:
    if (v7 == &dword_0 + 2)
    {
      goto LABEL_14;
    }

    v10 = sub_3EE804();

    if (v10)
    {
      return _swiftEmptyArrayStorage;
    }

    goto LABEL_13;
  }

  if (v8 != 17)
  {
    if (v8 != 12)
    {
      sub_29EB8(v8);
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (v7 != &dword_0 + 2)
  {
LABEL_14:

    return _swiftEmptyArrayStorage;
  }

  v9 = sub_3EE804();

  if (v9)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_13:

  return a3;
}

uint64_t sub_2FDB6C(unint64_t a1)
{
  v3 = type metadata accessor for TabMenu.Item(0);
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v43 = a1;
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010F0);
  sub_886BC(&qword_4EA750, &unk_5010F0);
  result = sub_3ED894();
  if (result)
  {
    v40 = v1;
    v11 = v1 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_librarySection;
    v12 = *(v1 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_librarySection + 8);
    v13 = *(v12 + 16);
    v14 = _swiftEmptyArrayStorage;
    if (v13)
    {
      v38 = v1 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_librarySection;
      v47 = _swiftEmptyArrayStorage;

      sub_41D74(0, v13, 0);
      v15 = 0;
      v14 = v47;
      v16 = *(v4 + 80);
      v39 = v12;
      v42 = (v16 + 32) & ~v16;
      v17 = v12 + v42;
      v41 = *(v4 + 72);
      do
      {
        v18 = sub_301180(v17, v6, type metadata accessor for TabMenu.Item);
        __chkstk_darwin(v18);
        *(&v37 - 2) = v6;
        v19 = sub_2B64C0(sub_301258, (&v37 - 4), v43);
        v46 = v15;
        if (v19)
        {
          v20 = v19;
          v21 = [v19 isHidden];

          v44 = v21 ^ 1;
          v22 = sub_3E6AE4();
          (*(*(v22 - 8) + 16))(v9, v6, v22);
          v23 = &v6[v3[6]];
          v25 = *v23;
          v24 = *(v23 + 1);
          v26 = *&v6[v3[7]];
          v27 = v6[v3[8]];
          sub_FBD0(&v6[v3[5]], &v9[v3[5]], &unk_501100);
          v28 = v6[v3[10]];
          v29 = v6[v3[11]];
          v30 = v3[13];
          v31 = v6[v3[12]];
          v45 = v14;
          v32 = *&v6[v30];
          v33 = &v9[v3[6]];
          *v33 = v25;
          *(v33 + 1) = v24;
          *&v9[v3[7]] = v26;
          v9[v3[8]] = v27;
          v9[v3[9]] = v44;
          v9[v3[10]] = v28;
          v9[v3[11]] = v29;
          v9[v3[12]] = v31;
          *&v9[v30] = v32;

          sub_29EA4(v26);
          v14 = v45;
        }

        else
        {
          sub_301180(v6, v9, type metadata accessor for TabMenu.Item);
        }

        sub_3011F8(v6, type metadata accessor for TabMenu.Item);
        v47 = v14;
        v35 = v14[2];
        v34 = v14[3];
        if (v35 >= v34 >> 1)
        {
          sub_41D74(v34 > 1, v35 + 1, 1);
          v14 = v47;
        }

        v14[2] = v35 + 1;
        v36 = v41;
        sub_300FB0(v9, v14 + v42 + v35 * v41);
        v17 += v36;
        --v13;
        v15 = v46;
      }

      while (v13);

      v11 = v38;
    }

    *v11 = 1;
    *(v11 + 8) = v14;

    sub_30D970(v14);
  }

  return result;
}

uint64_t sub_2FDF88(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v139 = a1;
  v144 = type metadata accessor for TabMenu.Item(0);
  v151 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v143 = &v131 - v12;
  __chkstk_darwin(v13);
  v15 = &v131 - v14;
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v137 = &v131 - v20;
  __chkstk_darwin(v21);
  v136 = &v131 - v25;
  v152 = a3;
  v153 = a5;
  v26 = a3[1];
  if (v26 < 1)
  {
    swift_bridgeObjectRetain_n();
    v28 = _swiftEmptyArrayStorage;
LABEL_96:
    v150 = *v139;
    if (v150)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_98;
    }

    goto LABEL_138;
  }

  v145 = v24;
  v146 = v23;
  v142 = v22;
  swift_bridgeObjectRetain_n();
  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  v138 = a4;
  v148 = v15;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v30 >= v26)
    {
      v39 = v30;
    }

    else
    {
      v149 = v26;
      v31 = *v152;
      v32 = *(v151 + 72);
      v33 = *v152 + v32 * v30;
      v34 = v136;
      sub_301180(v33, v136, type metadata accessor for TabMenu.Item);
      v35 = v137;
      sub_301180(v31 + v32 * v29, v137, type metadata accessor for TabMenu.Item);
      LODWORD(v147) = sub_2FC570(v34, v35, v153);
      if (v6)
      {
        sub_3011F8(v35, type metadata accessor for TabMenu.Item);
        v130 = v34;
LABEL_108:
        sub_3011F8(v130, type metadata accessor for TabMenu.Item);
LABEL_109:
        swift_bridgeObjectRelease_n();
      }

      sub_3011F8(v35, type metadata accessor for TabMenu.Item);
      sub_3011F8(v34, type metadata accessor for TabMenu.Item);
      v135 = v29;
      v36 = v29 + 2;
      v37 = v31 + v32 * (v29 + 2);
      v38 = v32;
      v150 = v32;
      while (1)
      {
        v39 = v149;
        if (v149 == v36)
        {
          break;
        }

        v40 = v145;
        sub_301180(v37, v145, type metadata accessor for TabMenu.Item);
        v41 = v146;
        sub_301180(v33, v146, type metadata accessor for TabMenu.Item);
        v42 = sub_2FC570(v40, v41, v153);
        sub_3011F8(v41, type metadata accessor for TabMenu.Item);
        sub_3011F8(v40, type metadata accessor for TabMenu.Item);
        ++v36;
        v38 = v150;
        v37 += v150;
        v33 += v150;
        if ((v147 ^ v42))
        {
          v39 = v36 - 1;
          break;
        }
      }

      a4 = v138;
      v15 = v148;
      v29 = v135;
      if (v147)
      {
        if (v39 < v135)
        {
          goto LABEL_132;
        }

        if (v135 < v39)
        {
          v43 = v38 * (v39 - 1);
          v44 = v39 * v38;
          v45 = v39;
          v46 = v135;
          v47 = v135 * v38;
          do
          {
            if (v46 != --v39)
            {
              v149 = v6;
              v48 = *v152;
              if (!*v152)
              {
                goto LABEL_136;
              }

              sub_300FB0(v48 + v47, v141);
              if (v47 < v43 || v48 + v47 >= v48 + v44)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_300FB0(v141, v48 + v43);
              v6 = v149;
              v38 = v150;
            }

            ++v46;
            v43 -= v38;
            v44 -= v38;
            v47 += v38;
          }

          while (v46 < v39);
          a4 = v138;
          v15 = v148;
          v29 = v135;
          v39 = v45;
        }
      }
    }

    v49 = v152[1];
    if (v39 >= v49)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v39, v29))
    {
      goto LABEL_128;
    }

    if (v39 - v29 >= a4)
    {
LABEL_33:
      v51 = v39;
      if (v39 < v29)
      {
        goto LABEL_127;
      }

      goto LABEL_34;
    }

    if (__OFADD__(v29, a4))
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_134:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_135;
    }

    if (v29 + a4 >= v49)
    {
      v50 = v152[1];
    }

    else
    {
      v50 = v29 + a4;
    }

    if (v50 < v29)
    {
      goto LABEL_131;
    }

    if (v39 == v50)
    {
      goto LABEL_33;
    }

    v108 = *v152;
    v109 = *(v151 + 72);
    v110 = *v152 + v109 * (v39 - 1);
    v147 = -v109;
    v135 = v29;
    v111 = v29 - v39;
    v150 = v108;
    v131 = v109;
    v112 = v108 + v39 * v109;
    v140 = v50;
    do
    {
      v149 = v39;
      v132 = v112;
      v133 = v111;
      v134 = v110;
      v113 = v111;
      do
      {
        v114 = v142;
        sub_301180(v112, v142, type metadata accessor for TabMenu.Item);
        sub_301180(v110, v15, type metadata accessor for TabMenu.Item);
        v115 = sub_2FC570(v114, v15, v153);
        if (v6)
        {
          sub_3011F8(v15, type metadata accessor for TabMenu.Item);
          v130 = v114;
          goto LABEL_108;
        }

        v116 = v115;
        sub_3011F8(v15, type metadata accessor for TabMenu.Item);
        sub_3011F8(v114, type metadata accessor for TabMenu.Item);
        if (!v116)
        {
          break;
        }

        if (!v150)
        {
          goto LABEL_134;
        }

        v117 = v143;
        sub_300FB0(v112, v143);
        swift_arrayInitWithTakeFrontToBack();
        sub_300FB0(v117, v110);
        v110 += v147;
        v112 += v147;
      }

      while (!__CFADD__(v113++, 1));
      v39 = v149 + 1;
      v110 = v134 + v131;
      v111 = v133 - 1;
      v112 = v132 + v131;
      v51 = v140;
    }

    while (v149 + 1 != v140);
    v29 = v135;
    if (v140 < v135)
    {
      goto LABEL_127;
    }

LABEL_34:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v51;
    v53 = v29;
    v54 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_DFED0(0, *(v28 + 2) + 1, 1, v28);
    }

    v6 = *(v28 + 2);
    v55 = *(v28 + 3);
    v56 = v6 + 1;
    if (v6 >= v55 >> 1)
    {
      v28 = sub_DFED0((v55 > 1), v6 + 1, 1, v28);
    }

    *(v28 + 2) = v56;
    v57 = &v28[16 * v6];
    v58 = v140;
    *(v57 + 4) = v53;
    *(v57 + 5) = v58;
    v150 = *v139;
    if (!v150)
    {
      goto LABEL_137;
    }

    if (v6)
    {
      break;
    }

LABEL_3:
    v26 = v152[1];
    v27 = v140;
    v6 = v54;
    a4 = v138;
    if (v140 >= v26)
    {
      goto LABEL_96;
    }
  }

  while (2)
  {
    v59 = v56 - 1;
    if (v56 >= 4)
    {
      v64 = &v28[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_114;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_115;
      }

      v71 = &v28[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_117;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_120;
      }

      if (v75 >= v67)
      {
        v94 = &v28[16 * v59 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v70 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v70)
        {
          goto LABEL_126;
        }

        v76 = v54;
        if (v62 < v97)
        {
          v59 = v56 - 2;
        }
      }

      else
      {
LABEL_53:
        v76 = v54;
        if (v63)
        {
          goto LABEL_116;
        }

        v77 = &v28[16 * v56];
        v79 = *v77;
        v78 = *(v77 + 1);
        v80 = __OFSUB__(v78, v79);
        v81 = v78 - v79;
        v82 = v80;
        if (v80)
        {
          goto LABEL_119;
        }

        v83 = &v28[16 * v59 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v70 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v70)
        {
          goto LABEL_122;
        }

        if (__OFADD__(v81, v86))
        {
          goto LABEL_123;
        }

        if (v81 + v86 < v62)
        {
          goto LABEL_68;
        }

        if (v62 < v86)
        {
          v59 = v56 - 2;
        }
      }
    }

    else
    {
      if (v56 == 3)
      {
        v60 = *(v28 + 4);
        v61 = *(v28 + 5);
        v70 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        v63 = v70;
        goto LABEL_53;
      }

      v87 = &v28[16 * v56];
      v89 = *v87;
      v88 = *(v87 + 1);
      v70 = __OFSUB__(v88, v89);
      v81 = v88 - v89;
      v82 = v70;
      v76 = v54;
LABEL_68:
      if (v82)
      {
        goto LABEL_118;
      }

      v90 = &v28[16 * v59];
      v92 = *(v90 + 4);
      v91 = *(v90 + 5);
      v70 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v70)
      {
        goto LABEL_121;
      }

      if (v93 < v81)
      {
        goto LABEL_3;
      }
    }

    v98 = v59 - 1;
    if (v59 - 1 < v56)
    {
      v99 = *v152;
      if (!*v152)
      {
        goto LABEL_133;
      }

      v100 = *&v28[16 * v98 + 32];
      v101 = *&v28[16 * v59 + 40];
      v102 = *(v151 + 72);
      v103 = v99 + v102 * v100;
      v104 = v99 + v102 * *&v28[16 * v59 + 32];
      v105 = v99 + v102 * v101;
      v106 = v153;

      sub_2FC744(v103, v104, v105, v150, v106);
      v6 = v76;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v101 < v100)
      {
        goto LABEL_112;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_2A66A8(v28);
      }

      if (v98 >= *(v28 + 2))
      {
        goto LABEL_113;
      }

      v54 = 0;
      v107 = &v28[16 * v98];
      *(v107 + 4) = v100;
      *(v107 + 5) = v101;
      v154 = v28;
      sub_2A661C(v59);
      v28 = v154;
      v56 = *(v154 + 2);
      v15 = v148;
      if (v56 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  v28 = sub_2A66A8(v28);
LABEL_98:
  v154 = v28;
  v119 = *(v28 + 2);
  if (v119 < 2)
  {
LABEL_106:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v120 = *v152;
      if (!*v152)
      {
        break;
      }

      v121 = *&v28[16 * v119];
      v122 = *&v28[16 * v119 + 24];
      v123 = *(v151 + 72);
      v124 = v120 + v123 * v121;
      v125 = v120 + v123 * *&v28[16 * v119 + 16];
      v126 = v120 + v123 * v122;
      v127 = v153;

      sub_2FC744(v124, v125, v126, v150, v127);
      if (v6)
      {
        goto LABEL_106;
      }

      if (v122 < v121)
      {
        goto LABEL_124;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_2A66A8(v28);
      }

      if (v119 - 2 >= *(v28 + 2))
      {
        goto LABEL_125;
      }

      v128 = &v28[16 * v119];
      *v128 = v121;
      *(v128 + 1) = v122;
      v154 = v28;
      sub_2A661C(v119 - 1);
      v28 = v154;
      v119 = *(v154 + 2);
      if (v119 <= 1)
      {
        goto LABEL_106;
      }
    }

LABEL_135:

    __break(1u);
LABEL_136:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_137:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_138:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

void sub_2FEAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v37 = a5;
  v36 = type metadata accessor for TabMenu.Item(0);
  __chkstk_darwin(v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = *a4;
    v28 = v18;
    v22 = v34 + v18 * a3;
LABEL_4:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v19;
    while (1)
    {
      sub_301180(v22, v17, type metadata accessor for TabMenu.Item);
      sub_301180(v23, v13, type metadata accessor for TabMenu.Item);
      v24 = sub_2FC570(v17, v13, v37);
      sub_3011F8(v13, type metadata accessor for TabMenu.Item);
      sub_3011F8(v17, type metadata accessor for TabMenu.Item);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return;
        }

        v25 = v35;
        sub_300FB0(v22, v35);
        swift_arrayInitWithTakeFrontToBack();
        sub_300FB0(v25, v23);
        v23 += v20;
        v22 += v20;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v19 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

Swift::Int sub_2FECF4(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_3EE794(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for TabMenu.Item(0);
        v8 = sub_3ED5E4();
        v8[2] = v7;
      }

      v9 = *(type metadata accessor for TabMenu.Item(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_2FDF88(v10, v11, a1, v6, a2);

      v8[2] = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_2FEAA4(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2FEE78(void **a1, uint64_t a2)
{
  v4 = *(type metadata accessor for TabMenu.Item(0) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2A6870(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_2FECF4(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2FEF60(void *a1)
{
  v1 = a1;
  v2 = [a1 children];
  sub_36174(0, &qword_4EA748);
  v3 = sub_3ED584();

  if (v3 >> 62)
  {
    v4 = sub_3EE5A4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v42 = _swiftEmptyArrayStorage;
  sub_41BA8(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
LABEL_44:
    __break(1u);

    __break(1u);
    return result;
  }

  v40 = v1;
  v5 = 0;
  v6 = v42;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = sub_3EE3F4();
    }

    else
    {
      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = [v7 identifier];
    v10 = sub_3ED244();
    v12 = v11;

    v42 = v6;
    v14 = v6[2];
    v13 = v6[3];
    if (v14 >= v13 >> 1)
    {
      sub_41BA8((v13 > 1), v14 + 1, 1);
      v6 = v42;
    }

    ++v5;
    v6[2] = v14 + 1;
    v15 = &v6[2 * v14];
    v15[4] = v10;
    v15[5] = v12;
  }

  while (v4 != v5);

  v1 = v40;
LABEL_14:
  v42 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_886BC(&qword_4F1270, &unk_5010E0);
  if (sub_3ED894())
  {
    v16 = [v1 identifier];
    v17 = sub_3ED244();
    v19 = v18;

    if (v17 == 0x7972617262696CLL && v19 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
    {

      v20 = v41 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_librarySection;
      v42 = *(v41 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_librarySection + 8);
      swift_bridgeObjectRetain_n();

      sub_2FEE78(&v42, v6);

      swift_bridgeObjectRelease_n();
      v21 = v42;
      *v20 = 1;
      *(v20 + 8) = v21;

      sub_30D970(v21);
    }

    if (v17 == 0xD000000000000020 && 0x8000000000425980 == v19)
    {

LABEL_24:
      v24 = v6[2];
      if (v24)
      {
        v25 = 0;
        v26 = v6 + 5;
        v27 = _swiftEmptyArrayStorage;
        do
        {
          v28 = &v26[2 * v25];
          v29 = v25;
          while (1)
          {
            if (v29 >= v6[2])
            {
              __break(1u);
              goto LABEL_44;
            }

            v30 = *(v28 - 1);
            v31 = *v28;
            v32 = v30 == 0xD00000000000002BLL && 0x800000000042D320 == v31;
            if (!v32 && (sub_3EE804() & 1) == 0)
            {
              break;
            }

            ++v29;
            v28 += 2;
            if (v24 == v29)
            {
              goto LABEL_42;
            }
          }

          v42 = v27;
          v39 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_41BA8(0, v27[2] + 1, 1);
            v27 = v42;
          }

          v34 = v27[2];
          v33 = v27[3];
          v35 = v34 + 1;
          if (v34 >= v33 >> 1)
          {
            sub_41BA8((v33 > 1), v34 + 1, 1);
            v35 = v34 + 1;
            v27 = v42;
          }

          v25 = v29 + 1;
          v27[2] = v35;
          v36 = &v27[2 * v34];
          v36[4] = v30;
          v36[5] = v31;
          v26 = v39;
        }

        while (v24 - 1 != v29);
      }

      else
      {
        v27 = _swiftEmptyArrayStorage;
      }

LABEL_42:

      v37 = *(v41 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_libraryActionController + 24);
      v38 = *(v41 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_libraryActionController + 32);
      __swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_libraryActionController), v37);
      (*(v38 + 208))(v27, v37, v38);
    }

    v23 = sub_3EE804();

    if (v23)
    {
      goto LABEL_24;
    }
  }
}

id sub_2FF46C(void *a1)
{
  result = [a1 parent];
  if (result)
  {
    v4 = result;
    v5 = [result identifier];

    v6 = sub_3ED244();
    v8 = v7;

    if (v6 == 0xD000000000000020 && 0x8000000000425980 == v8)
    {
    }

    else
    {
      v10 = sub_3EE804();

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    v11 = [objc_opt_self() mainBundle];
    v26._countAndFlagsBits = 0xD00000000000001DLL;
    v24._countAndFlagsBits = 0xE000000000000000;
    v26._object = 0x800000000042D2C0;
    v27.value._countAndFlagsBits = 0;
    v27.value._object = 0;
    v12.super.isa = v11;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_3E5A74(v26, v27, v12, v28, v24);

    v13 = *&v1[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_objectGraph];
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = v13;
    v14[4] = v1;
    v15 = a1;

    v16 = v1;
    v17 = sub_3ED204();

    aBlock[4] = sub_301124;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2FC0B0;
    aBlock[3] = &block_descriptor_42;
    v18 = _Block_copy(aBlock);
    v19 = [objc_opt_self() contextualActionWithStyle:1 title:v17 handler:v18];

    _Block_release(v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_3F7950;
    *(v20 + 32) = v19;
    sub_36174(0, &qword_5010C8);
    v21 = v19;
    isa = sub_3ED574().super.isa;

    v23 = [objc_opt_self() configurationWithActions:isa];

    return v23;
  }

  return result;
}

void *sub_2FF754(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5010B0);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = sub_3E9AB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E9AC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0x13 || *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v18[1] = *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount);
  v14 = v11;
  sub_301088();
  v18[0] = sub_3EE1D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5010C0);
  sub_3E9AF4();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_3F5630;
  (*(v10 + 104))(v13, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v14);
  v16 = sub_3E9AD4();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_3E9AA4();
  sub_3E9AE4();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v13, v14);
  return v15;
}

id sub_2FFA8C(uint64_t a1)
{
  v2 = v1;
  v43 = sub_3E9B14();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3E9B34();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TabMenu.Item(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EDAE4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = [objc_opt_self() itemFromRequest:a1];
  sub_3EDAF4();
  if ((*(v12 + 88))(v14, v11) == enum case for UITabSidebarItem.Content.tab(_:))
  {
    (*(v12 + 96))(v14, v11);
    v16 = *v14;
    v17 = UITab.navigationTab.getter();
    v18 = v17;
    if ((v17 - 1) < 0x12)
    {
      goto LABEL_12;
    }

    if (!v17)
    {

      return v15;
    }

    v19 = *(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsSection + 8);
    v20 = *(v19 + 16);
    v21 = _swiftEmptyArrayStorage;
    if (v20)
    {
      v37 = v16;
      v38 = v17;
      v39 = v5;
      v45[0] = _swiftEmptyArrayStorage;

      sub_41F74(0, v20, 0);
      v21 = v45[0];
      v22 = *(v8 + 80);
      v36 = v19;
      v23 = v19 + ((v22 + 32) & ~v22);
      v24 = *(v8 + 72);
      do
      {
        sub_301180(v23, v10, type metadata accessor for TabMenu.Item);
        v25 = *&v10[*(v7 + 28)];
        sub_29EA4(v25);
        sub_3011F8(v10, type metadata accessor for TabMenu.Item);
        v45[0] = v21;
        v27 = v21[2];
        v26 = v21[3];
        if (v27 >= v26 >> 1)
        {
          sub_41F74((v26 > 1), v27 + 1, 1);
          v21 = v45[0];
        }

        v21[2] = v27 + 1;
        v21[v27 + 4] = v25;
        v23 += v24;
        --v20;
      }

      while (v20);

      v18 = v38;
      v5 = v39;
      v16 = v37;
    }

    v28 = sub_2FC1A4(*(v18 + 16), *(v18 + 24), v21);

    if (v28 == 19)
    {
LABEL_12:

      sub_29EB8(v18);
    }

    else
    {
      sub_3EDAD4();
      v29 = v16;
      v30 = v18;
      if (v28 >= 0x13)
      {
      }

      v31 = v44;
      sub_3E9B24();
      v45[3] = v5;
      v45[4] = &protocol witness table for UIListContentConfiguration;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v45);
      v33 = v42;
      (*(v42 + 16))(boxed_opaque_existential_0Tm, v31, v5);
      sub_3EDAC4();
      v34 = v40;
      sub_3EDAB4();
      sub_3E9B04();
      (*(v41 + 8))(v34, v43);
      sub_2FF754(v28);
      sub_3EDAA4();

      sub_300F80(v28);
      sub_29EB8(v30);
      (*(v33 + 8))(v31, v5);
    }
  }

  else
  {
    (*(v12 + 8))(v14, v11);
  }

  return v15;
}

void sub_2FFFB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3E9B14();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TabMenu.Item(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EDAE4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_3EDAF4();
  if ((*(v11 + 88))(v13, v10) == enum case for UITabSidebarItem.Content.tab(_:))
  {
    (*(v11 + 96))(v13, v10);
    v14 = *v13;
    v15 = UITab.navigationTab.getter();
    v16 = v15;
    if ((v15 - 1) >= 0x12)
    {
      if (v15)
      {
        v31 = v14;
        v17 = *(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsSection + 8);
        v18 = *(v17 + 16);
        v19 = _swiftEmptyArrayStorage;
        if (v18)
        {
          v29 = v4;
          v30 = a1;
          v34 = _swiftEmptyArrayStorage;

          sub_41F74(0, v18, 0);
          v19 = v34;
          v20 = *(v7 + 80);
          v28[1] = v17;
          v21 = v17 + ((v20 + 32) & ~v20);
          v22 = *(v7 + 72);
          do
          {
            sub_301180(v21, v9, type metadata accessor for TabMenu.Item);
            v23 = *&v9[*(v6 + 28)];
            sub_29EA4(v23);
            sub_3011F8(v9, type metadata accessor for TabMenu.Item);
            v34 = v19;
            v25 = v19[2];
            v24 = v19[3];
            if (v25 >= v24 >> 1)
            {
              sub_41F74((v24 > 1), v25 + 1, 1);
              v19 = v34;
            }

            v19[2] = v25 + 1;
            v19[v25 + 4] = v23;
            v21 += v22;
            --v18;
          }

          while (v18);

          v4 = v29;
        }

        v26 = sub_2FC1A4(*(v16 + 16), *(v16 + 24), v19);

        if (v26 != 19)
        {
          v27 = v32;
          sub_3EDAB4();
          sub_3E9B04();
          (*(v33 + 8))(v27, v4);
          sub_2FF754(v26);
          sub_3EDAA4();
          sub_300F80(v26);
        }

        sub_29EB8(v16);
      }

      else
      {
      }
    }

    else
    {

      sub_29EB8(v16);
    }
  }

  else
  {
    (*(v11 + 8))(v13, v10);
  }
}

id sub_30039C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501070);
  __chkstk_darwin(v3 - 8);
  v5 = aBlock - v4;
  v6 = sub_625AC(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E18);
  v27 = type metadata accessor for LibraryTabGroupManager();
  v28 = &protocol witness table for LibraryTabGroupManager;
  aBlock[0] = v1;
  v7 = v1;
  v8 = sub_3EC3A4();
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v9 = [a1 identifier];
  v10 = sub_3ED244();
  v12 = v11;

  if (v10 == 0xD000000000000020 && 0x8000000000425980 == v12)
  {
  }

  else
  {
    v13 = sub_3EE804();

    if ((v13 & 1) == 0)
    {
      v14 = *&v7[OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_stationsSection + 8];

      v15 = [a1 identifier];
      v16 = sub_3ED244();
      v18 = v17;

      sub_2FB258(v16, v18, v14, v5);

      v19 = type metadata accessor for TabMenu.Item(0);
      if ((*(*(v19 - 8) + 48))(v5, 1, v19) == 1)
      {

        sub_FCF8(v5, &qword_501070);
        return 0;
      }

      v20 = *&v5[*(v19 + 28)];
      sub_29EA4(v20);
      sub_3011F8(v5, type metadata accessor for TabMenu.Item);
      if ((v20 - 1) <= 0x11)
      {

        sub_29EB8(v20);
        return 0;
      }

      if (v20)
      {
        v22 = swift_allocObject();
        v22[2] = v6;
        v22[3] = sub_301014;
        v22[4] = v20;
        v22[5] = v8;
        v23 = objc_opt_self();
        v28 = sub_301064;
        v29 = v22;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2FC6B4;
        v27 = &block_descriptor_21;
        v24 = _Block_copy(aBlock);

        v25 = [v23 configurationWithIdentifier:0 previewProvider:0 actionProvider:v24];

        _Block_release(v24);
        return v25;
      }
    }
  }

  return 0;
}

unint64_t sub_30077C()
{
  result = qword_500F18;
  if (!qword_500F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500F18);
  }

  return result;
}

id sub_3007D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabGroup;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t dispatch thunk of TabGroupManager.tab(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_300980;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_300980(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_300A84()
{
  sub_300E38(319, &unk_500F90, &type metadata accessor for AsyncStream);
  if (v0 <= 0x3F)
  {
    sub_300E38(319, &qword_500FA0, &type metadata accessor for AsyncStream.Continuation);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of LibraryTabGroupManager.tab(matching:)(uint64_t a1, uint64_t a2)
{
  v8 = (*&stru_158.sectname[swift_isaMask & *v2] + **&stru_158.sectname[swift_isaMask & *v2]);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_3012E4;

  return v8(a1, a2);
}

void sub_300E38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_36174(255, &qword_4EA748);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_300EB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_300F80(uint64_t result)
{
  if (result != 19)
  {
    return sub_29EB8(result);
  }

  return result;
}

uint64_t sub_300FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabMenu.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_30101C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_301088()
{
  result = qword_5010B8;
  if (!qword_5010B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5010B8);
  }

  return result;
}

uint64_t sub_3010DC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_301130()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_301180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3011F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_301280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TabMenu.Item.shelfUniqueID.getter()
{
  v1 = sub_304A84();
  v11 = v1;
  v12 = v2;
  v3 = *(v0 + *(type metadata accessor for TabMenu.Item(0) + 28));
  if ((v3 - 1) >= 0x12)
  {
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount);
      v5 = &type metadata for Int;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v10[1] = 0;
      v10[2] = 0;
    }

    v10[0] = v4;
    v10[3] = v5;
    sub_FBD0(v10, &v7, &unk_501090);
    if (v8)
    {
      sub_1FB90(&v7, v9);
      sub_2F4AC(v9, &v7);

      v13._countAndFlagsBits = sub_3ED2B4();
      sub_3ED3D4(v13);

      sub_29EB8(v3);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      v1 = v11;
    }

    else
    {
      sub_FCF8(&v7, &unk_501090);
    }

    sub_FCF8(v10, &unk_501090);
  }

  return v1;
}

uint64_t TabMenu.Item.makingEnabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_3E6AE4();
  (*(*(v6 - 8) + 16))(a2, v3, v6);
  v7 = type metadata accessor for TabMenu.Item(0);
  v8 = (v3 + v7[6]);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(v3 + v7[7]);
  v12 = *(v3 + v7[8]);
  sub_FBD0(v3 + v7[5], a2 + v7[5], &unk_501100);
  v13 = *(v3 + v7[10]);
  v14 = *(v3 + v7[11]);
  v15 = v7[13];
  v16 = *(v3 + v7[12]);
  v17 = *(v3 + v15);
  v18 = (a2 + v7[6]);
  *v18 = v10;
  v18[1] = v9;
  *(a2 + v7[7]) = v11;
  *(a2 + v7[8]) = v12;
  *(a2 + v7[9]) = a1;
  *(a2 + v7[10]) = v13;
  *(a2 + v7[11]) = v14;
  *(a2 + v7[12]) = v16;
  *(a2 + v15) = v17;

  sub_29EA4(v11);
}

ShelfKit::TabMenu::Section __swiftcall TabMenu.Section.init(group:items:)(ShelfKit::TabMenu::Group group, Swift::OpaquePointer items)
{
  *v2 = group;
  *(v2 + 8) = items;
  result.items = items;
  result.group = group;
  return result;
}

uint64_t TabMenu.Group.title.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v1._countAndFlagsBits = 0x534E4F4954415453;
      v1._object = 0xE800000000000000;
    }

    else
    {
      v1._countAndFlagsBits = 0x45535F454C544954;
      v1._object = 0xEC00000048435241;
    }

    goto LABEL_9;
  }

  if (a1)
  {
    v1._countAndFlagsBits = 0x494C5F454C544954;
    v1._object = 0xED00005952415242;
LABEL_9:
    v2._countAndFlagsBits = 0;
    v2._object = 0xE000000000000000;
    return sub_3E8614(v1, v2);
  }

  v1._countAndFlagsBits = 0x6F5020656C707041;
  v1._object = 0xEE00737473616364;
  v2._object = 0x800000000042D370;
  v2._countAndFlagsBits = 0xD000000000000016;
  return sub_3E8614(v1, v2);
}

unint64_t TabMenu.Group.accessibilityIdentifier.getter(unsigned __int8 a1)
{
  v1 = 0x696C2E70756F7267;
  v2 = 0x74732E70756F7267;
  if (a1 != 2)
  {
    v2 = 0x65732E70756F7267;
  }

  if (!a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

ShelfKit::InterfaceMode_optional __swiftcall InterfaceMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_4B2A88;
  v6._object = object;
  v3 = sub_3EE624(v2, v6);

  if (v3 == 1)
  {
    v4.value = ShelfKit_InterfaceMode_sidebar;
  }

  else
  {
    v4.value = ShelfKit_InterfaceMode_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t InterfaceMode.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x72616265646973;
  }

  else
  {
    return 0x726142626174;
  }
}

uint64_t sub_301768(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72616265646973;
  }

  else
  {
    v3 = 0x726142626174;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x72616265646973;
  }

  else
  {
    v5 = 0x726142626174;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_30180C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_30188C()
{
  sub_3ED394();
}

Swift::Int sub_3018F8()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_301974@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B2A88;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

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

void sub_3019D4(uint64_t *a1@<X8>)
{
  v2 = 0x726142626174;
  if (*v1)
  {
    v2 = 0x72616265646973;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t TabMenu.Section.debugDescription.getter()
{
  v2._countAndFlagsBits = TabMenu.Group.title.getter(*v0);
  sub_3ED3D4(v2);

  v3._countAndFlagsBits = 539828317;
  v3._object = 0xE400000000000000;
  sub_3ED3D4(v3);
  type metadata accessor for TabMenu.Item(0);
  v4._countAndFlagsBits = sub_3ED594();
  sub_3ED3D4(v4);

  return 91;
}

uint64_t sub_301AB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501100);
  __chkstk_darwin(v6 - 8);
  v8 = &v43[-v7];
  v53 = type metadata accessor for TabMenu.Item(0);
  v9 = *(v53 - 1);
  __chkstk_darwin(v53);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v15 = &v43[-v14];
  v16 = *v2;
  v17 = *(v2 + 1);
  v18 = v17[2];
  if (!v18)
  {

    goto LABEL_69;
  }

  v48 = v12;
  v49 = v8;
  v52 = v16;
  v46 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v47 = v13;
  v19 = v17 + v46;
  v50 = a1 - 1;
  v51 = a2;

  v20 = 0;
  while (2)
  {
    if (v20 >= v17[2])
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v3 = *(v9 + 72) * v20;
    v21 = &v19[v3];
    sub_307518(&v19[v3], v15);
    v22 = *&v15[v53[7]];
    switch(v22)
    {
      case 1uLL:
        if (a1 != (&dword_0 + 1))
        {
          goto LABEL_56;
        }

        goto LABEL_60;
      case 2uLL:
        if (a1 == (&dword_0 + 2))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 3uLL:
        if (a1 == (&dword_0 + 3))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 4uLL:
        if (a1 == &dword_4)
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 5uLL:
        if (a1 == (&dword_4 + 1))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 6uLL:
        if (a1 == (&dword_4 + 2))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 7uLL:
        if (a1 == (&dword_4 + 3))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 8uLL:
        if (a1 == &dword_8)
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 9uLL:
        if (a1 != (&dword_8 + 1))
        {
          goto LABEL_56;
        }

        goto LABEL_60;
      case 0xAuLL:
        if (a1 == (&dword_8 + 2))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 0xBuLL:
        if (a1 == (&dword_8 + 3))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 0xCuLL:
        if (a1 == &dword_C)
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 0xDuLL:
        if (a1 == (&dword_C + 1))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 0xEuLL:
        if (a1 == (&dword_C + 2))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 0xFuLL:
        if (a1 == (&dword_C + 3))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 0x10uLL:
        if (a1 == &dword_10)
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 0x11uLL:
        if (a1 == (&dword_10 + 1))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      case 0x12uLL:
        if (a1 == (&dword_10 + 2))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      default:
        if (v50 < 0x12)
        {
          goto LABEL_56;
        }

        if (v22)
        {
          if (a1)
          {
            v23 = v22[2] == *(a1 + 2) && v22[3] == *(a1 + 3);
            if (v23 || (sub_3EE804() & 1) != 0)
            {
              v24 = v22[4] == *(a1 + 4) && v22[5] == *(a1 + 5);
              if (v24 || (sub_3EE804()) && *(v22 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) == *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount))
              {
                v45 = *(v22 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);
                v25 = *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);
                result = sub_30757C(v15);
                if (v45 == v25)
                {
                  goto LABEL_61;
                }

                goto LABEL_57;
              }
            }
          }

LABEL_56:
          result = sub_30757C(v15);
LABEL_57:
          if (v18 == ++v20)
          {
            goto LABEL_63;
          }

          continue;
        }

        if (a1)
        {
          goto LABEL_56;
        }

LABEL_60:
        sub_30757C(v15);
LABEL_61:
        if (v20 >= v17[2])
        {
          goto LABEL_71;
        }

        v27 = v49;
        sub_FBD0(v21 + v53[5], v49, &unk_501100);
        v28 = sub_3E6AE4();
        v29 = *(v28 - 8);
        v30 = (*(v29 + 48))(v27, 1, v28);
        result = sub_FCF8(v27, &unk_501100);
        if (v30 == 1)
        {
LABEL_63:
          a2 = v51;
          LOBYTE(v16) = v52;
          goto LABEL_69;
        }

        if (v20 >= v17[2])
        {
          goto LABEL_72;
        }

        v31 = v47;
        sub_307518(v21, v47);
        v32 = v48;
        (*(v29 + 16))(v48, v31, v28);
        v33 = v53;
        v34 = v53[5];
        v35 = (v31 + v53[6]);
        v36 = v53[8];
        v37 = *(v31 + v53[7]);
        v38 = v35[1];
        v45 = *v35;
        LODWORD(v50) = *(v31 + v36);
        LODWORD(v49) = *(v31 + v53[9]);
        sub_FBD0(v31 + v34, v32 + v34, &unk_501100);
        v39 = *(v31 + v33[11]);
        v44 = *(v31 + v33[12]);
        v40 = *(v31 + v33[13]);

        sub_29EA4(v37);

        sub_30757C(v31);
        v41 = v33[13];
        v42 = (v32 + v33[6]);
        *v42 = v45;
        v42[1] = v38;
        *(v32 + v33[7]) = v37;
        *(v32 + v33[8]) = v50;
        *(v32 + v33[9]) = v49;
        *(v32 + v33[10]) = 1;
        *(v32 + v33[11]) = v39;
        *(v32 + v33[12]) = v44;
        *(v32 + v41) = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_73:
          v17 = sub_2A51FC(v17);
        }

        LOBYTE(v16) = v52;
        if (v20 >= v17[2])
        {
          __break(1u);
          JUMPOUT(0x302074);
        }

        result = sub_308354(v48, v17 + v46 + v3);
        a2 = v51;
LABEL_69:
        *a2 = v16;
        *(a2 + 8) = v17;
        return result;
    }
  }
}

uint64_t TabMenu.Item.usingAlternateGlyph()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3E6AE4();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = type metadata accessor for TabMenu.Item(0);
  v5 = (v1 + v4[6]);
  v6 = *(v1 + v4[7]);
  v8 = *v5;
  v7 = v5[1];
  v9 = *(v1 + v4[8]);
  v10 = *(v1 + v4[9]);
  sub_FBD0(v1 + v4[5], a1 + v4[5], &unk_501100);
  v11 = *(v1 + v4[11]);
  v12 = *(v1 + v4[12]);
  v13 = v4[13];
  v14 = *(v1 + v13);
  v15 = (a1 + v4[6]);
  *v15 = v8;
  v15[1] = v7;
  *(a1 + v4[7]) = v6;
  *(a1 + v4[8]) = v9;
  *(a1 + v4[9]) = v10;
  *(a1 + v4[10]) = 1;
  *(a1 + v4[11]) = v11;
  *(a1 + v4[12]) = v12;
  *(a1 + v13) = v14;

  sub_29EA4(v6);
}

uint64_t static TabMenu.Section.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_114E40(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

void TabMenu.Section.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 1);
  sub_3EE964(*v1);

  sub_125CC(a1, v3);
}

Swift::Int TabMenu.Section.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_3EE954();
  sub_3EE964(v1);
  sub_125CC(v4, v2);
  return sub_3EE9A4();
}

Swift::Int sub_3022C8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_3EE954();
  sub_3EE964(v1);
  sub_125CC(v4, v2);
  return sub_3EE9A4();
}

uint64_t TabMenu.Item.navigationTab.getter()
{
  v1 = *(v0 + *(type metadata accessor for TabMenu.Item(0) + 28));
  sub_29EA4(v1);
  return v1;
}

uint64_t TabMenu.Item.children.getter()
{
  type metadata accessor for TabMenu.Item(0);
}

uint64_t TabMenu.Item.init(glyph:title:navigationTab:glyphTint:enabled:alternateGlyph:useAlternateGlyph:removableFromFavorites:movable:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12)
{
  v19 = type metadata accessor for TabMenu.Item(0);
  v20 = v19[13];
  v21 = sub_3E6AE4();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = (a9 + v19[6]);
  *v22 = a2;
  v22[1] = a3;
  *(a9 + v19[7]) = a4;
  *(a9 + v19[8]) = a5 & 1;
  *(a9 + v19[9]) = a6;
  result = sub_307284(a7, a9 + v19[5]);
  *(a9 + v19[10]) = a8;
  *(a9 + v19[11]) = a10;
  *(a9 + v19[12]) = a11;
  *(a9 + v20) = a12;
  return result;
}

uint64_t sub_3025BC()
{
  v1 = *(v0 + *(type metadata accessor for TabMenu.Item(0) + 24));

  return v1;
}

void TabMenu.Item.hash(into:)(uint64_t a1)
{
  v3 = sub_3E6AE4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501100);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  sub_307BC0(&qword_4E94A8, &type metadata accessor for Glyph);
  sub_3ED124();
  v10 = type metadata accessor for TabMenu.Item(0);
  sub_FBD0(v1 + v10[5], v9, &unk_501100);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_3EE974(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_3EE974(1u);
    sub_3ED124();
    (*(v4 + 8))(v6, v3);
  }

  sub_3ED394();
  NavigationTab.hash(into:)(a1, *(v1 + v10[7]));
  sub_3EE964(*(v1 + v10[8]));
  sub_3EE974(*(v1 + v10[9]));
  sub_3EE974(*(v1 + v10[10]));
  sub_3EE974(*(v1 + v10[11]));
  sub_3EE974(*(v1 + v10[12]));
  v11 = *(v1 + v10[13]);
  if (v11)
  {
    sub_3EE974(1u);
    sub_125CC(a1, v11);
  }

  else
  {
    sub_3EE974(0);
  }
}

Swift::Int TabMenu.Item.hashValue.getter()
{
  sub_3EE954();
  TabMenu.Item.hash(into:)(v1);
  return sub_3EE9A4();
}

Swift::Int sub_3028E8()
{
  sub_3EE954();
  TabMenu.Item.hash(into:)(v1);
  return sub_3EE9A4();
}

uint64_t sub_302924(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_302960@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3E6AE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TabMenu.ActionItem.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for TabMenu.ActionItem(0) + 20));

  return v1;
}

uint64_t TabMenu.ActionItem.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TabMenu.ActionItem(0) + 24);

  return sub_1F958(v3, a1);
}

uint64_t TabMenu.ActionItem.accessibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for TabMenu.ActionItem(0) + 28));

  return v1;
}

uint64_t TabMenu.ActionItem.init(glyph:title:action:accessibilityIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_3E6AE4();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for TabMenu.ActionItem(0);
  v16 = (a7 + v15[5]);
  *v16 = a2;
  v16[1] = a3;
  result = sub_1D4F0(a4, a7 + v15[6]);
  v18 = (a7 + v15[7]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

void TabMenu.ActionItem.hash(into:)()
{
  sub_3E6AE4();
  sub_307BC0(&qword_4E94A8, &type metadata accessor for Glyph);
  sub_3ED124();
  v1 = type metadata accessor for TabMenu.ActionItem(0);
  sub_3ED394();
  if (*(v0 + *(v1 + 28) + 8))
  {
    sub_3EE974(1u);

    sub_3ED394();
  }

  else
  {
    sub_3EE974(0);
  }
}

Swift::Int TabMenu.ActionItem.hashValue.getter()
{
  sub_3EE954();
  sub_3E6AE4();
  sub_307BC0(&qword_4E94A8, &type metadata accessor for Glyph);
  sub_3ED124();
  v1 = type metadata accessor for TabMenu.ActionItem(0);
  sub_3ED394();
  if (*(v0 + *(v1 + 28) + 8))
  {
    sub_3EE974(1u);
    sub_3ED394();
  }

  else
  {
    sub_3EE974(0);
  }

  return sub_3EE9A4();
}

Swift::Int sub_302D30(uint64_t a1)
{
  sub_3EE954();
  sub_3E6AE4();
  sub_307BC0(&qword_4E94A8, &type metadata accessor for Glyph);
  sub_3ED124();
  sub_3ED394();
  if (*(v1 + *(a1 + 28) + 8))
  {
    sub_3EE974(1u);
    sub_3ED394();
  }

  else
  {
    sub_3EE974(0);
  }

  return sub_3EE9A4();
}

void sub_302E18(uint64_t a1, uint64_t a2)
{
  sub_3E6AE4();
  sub_307BC0(&qword_4E94A8, &type metadata accessor for Glyph);
  sub_3ED124();
  sub_3ED394();
  if (*(v2 + *(a2 + 28) + 8))
  {
    sub_3EE974(1u);

    sub_3ED394();
  }

  else
  {
    sub_3EE974(0);
  }
}

Swift::Int sub_302F00(uint64_t a1, uint64_t a2)
{
  sub_3EE954();
  sub_3E6AE4();
  sub_307BC0(&qword_4E94A8, &type metadata accessor for Glyph);
  sub_3ED124();
  sub_3ED394();
  if (*(v2 + *(a2 + 28) + 8))
  {
    sub_3EE974(1u);
    sub_3ED394();
  }

  else
  {
    sub_3EE974(0);
  }

  return sub_3EE9A4();
}

void *TabMenu.Group.items(for:)(char a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA790);
      v3 = type metadata accessor for TabMenu.Item(0);
      v20 = *(*(v3 - 1) + 72);
      v21 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
      if (a1)
      {
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_4056C0;
        v22 = v6 + v21;
        if (qword_4E8AE0 != -1)
        {
          swift_once();
        }

        v23 = __swift_project_value_buffer(v3, qword_5398E0);
        sub_307518(v23, v22);
        if (qword_4E8AE8 != -1)
        {
          swift_once();
        }

        v24 = __swift_project_value_buffer(v3, qword_5398F8);
        sub_307518(v24, v22 + v20);
        if (qword_4E8AF0 != -1)
        {
          swift_once();
        }

        v25 = __swift_project_value_buffer(v3, qword_539910);
        sub_307518(v25, v22 + 2 * v20);
        if (qword_4E8AF8 != -1)
        {
          swift_once();
        }

        v26 = __swift_project_value_buffer(v3, qword_539928);
        sub_307518(v26, v22 + 3 * v20);
        if (qword_4E8B00 != -1)
        {
          swift_once();
        }

        v27 = __swift_project_value_buffer(v3, qword_539940);
        sub_307518(v27, v22 + 4 * v20);
        if (qword_4E8B08 != -1)
        {
          swift_once();
        }

        v28 = __swift_project_value_buffer(v3, qword_539958);
        sub_307518(v28, v22 + 5 * v20);
        v29 = v22 + 6 * v20;
        if (qword_4E8B10 != -1)
        {
          swift_once();
        }

        v30 = __swift_project_value_buffer(v3, qword_539970);
        v31 = v29;
        goto LABEL_54;
      }

      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_418BB0;
      v7 = v6 + v21;
      if (qword_4E8AE8 != -1)
      {
        swift_once();
      }

      v43 = __swift_project_value_buffer(v3, qword_5398F8);
      sub_307518(v43, v7);
      if (qword_4E8AF0 != -1)
      {
        swift_once();
      }

      v44 = __swift_project_value_buffer(v3, qword_539910);
      sub_307518(v44, v7 + v20);
      if (qword_4E8AF8 != -1)
      {
        swift_once();
      }

      v45 = __swift_project_value_buffer(v3, qword_539928);
      sub_307518(v45, v7 + 2 * v20);
      if (qword_4E8B00 != -1)
      {
        swift_once();
      }

      v46 = __swift_project_value_buffer(v3, qword_539940);
      sub_307518(v46, v7 + 3 * v20);
      if (qword_4E8B08 != -1)
      {
        swift_once();
      }

      v47 = __swift_project_value_buffer(v3, qword_539958);
      sub_307518(v47, v7 + 4 * v20);
      v18 = 5 * v20;
      if (qword_4E8B10 != -1)
      {
        swift_once();
      }

      v19 = qword_539970;
LABEL_53:
      v30 = __swift_project_value_buffer(v3, v19);
      v31 = v7 + v18;
LABEL_54:
      sub_307518(v30, v31);
      return v6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA790);
    v3 = type metadata accessor for TabMenu.Item(0);
    v4 = *(*(v3 - 1) + 72);
    v5 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_3F52F0;
    v7 = v6 + v5;
    if (a1)
    {
      if (qword_4E8AC0 != -1)
      {
        swift_once();
      }

      v8 = __swift_project_value_buffer(v3, qword_539880);
      sub_307518(v8, v7);
      v9 = v7 + v4;
      sub_3E6A44();
      v49._countAndFlagsBits = 0x4F485F454C544954;
      v49._object = 0xEA0000000000454DLL;
      v51._countAndFlagsBits = 1701670728;
      v51._object = 0xE400000000000000;
      v10 = sub_3E8614(v49, v51);
      v12 = v11;
      v13 = v3[5];
      sub_3E69B4();
      v14 = sub_3E6AE4();
      (*(*(v14 - 8) + 56))(v7 + v4 + v13, 0, 1, v14);
      v15 = v3[13];
      v16 = (v7 + v4 + v3[6]);
      *v16 = v10;
      v16[1] = v12;
      *(v9 + v3[7]) = 8;
      *(v9 + v3[8]) = 0;
      *(v9 + v3[9]) = 1;
      *(v9 + v3[10]) = 0;
      *(v9 + v3[11]) = 0;
      *(v9 + v3[12]) = 0;
      *(v9 + v15) = 0;
      if (qword_4E8AC8 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v3, qword_539898);
      sub_307518(v17, v7 + 2 * v4);
      v18 = 3 * v4;
      if (qword_4E8AD8 != -1)
      {
        swift_once();
      }

      v19 = qword_5398C8;
      goto LABEL_53;
    }

    sub_3E6A44();
    v50._countAndFlagsBits = 0x4F485F454C544954;
    v50._object = 0xEA0000000000454DLL;
    v52._countAndFlagsBits = 1701670728;
    v52._object = 0xE400000000000000;
    v34 = sub_3E8614(v50, v52);
    v36 = v35;
    v37 = v3[5];
    sub_3E69B4();
    v38 = sub_3E6AE4();
    (*(*(v38 - 8) + 56))(v7 + v37, 0, 1, v38);
    v39 = v3[13];
    v40 = (v7 + v3[6]);
    *v40 = v34;
    v40[1] = v36;
    *(v7 + v3[7]) = 8;
    *(v7 + v3[8]) = 0;
    *(v7 + v3[9]) = 1;
    *(v7 + v3[10]) = 0;
    *(v7 + v3[11]) = 0;
    *(v7 + v3[12]) = 0;
    *(v7 + v39) = 0;
    if (qword_4E8AC8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v3, qword_539898);
    sub_307518(v41, v7 + v4);
    if (qword_4E8AD8 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v3, qword_5398C8);
    sub_307518(v42, v7 + 2 * v4);
    v18 = 3 * v4;
LABEL_37:
    if (qword_4E8AC0 != -1)
    {
      swift_once();
    }

    v19 = qword_539880;
    goto LABEL_53;
  }

  if (a2 != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA790);
    v3 = type metadata accessor for TabMenu.Item(0);
    v18 = *(*(v3 - 1) + 72);
    v32 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_3F5310;
    v7 = v6 + v32;
    if (qword_4E8AD0 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v3, qword_5398B0);
    sub_307518(v33, v7);
    goto LABEL_37;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t TabMenu.Group.sidebarContains(_:)(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for TabMenu.Item(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501070);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = TabMenu.Group.items(for:)(1, a2);
  v12 = v11;
  v13 = v11[2];
  if (!v13)
  {
LABEL_58:

    v19 = 0;
    v18 = 1;
    goto LABEL_59;
  }

  v14 = 0;
  v15 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v16 = a1 - 1;
  while (2)
  {
    if (v14 >= v12[2])
    {
      __break(1u);
      JUMPOUT(0x303D38);
    }

    sub_307518(&v15[*(v5 + 72) * v14], v7);
    v17 = 1;
    switch(*&v7[*(v4 + 28)])
    {
      case 1:
        v17 = 7;
        break;
      case 2:
        v17 = 8;
        break;
      case 3:
        v17 = 9;
        break;
      case 4:
        v17 = 10;
        break;
      case 5:
        v17 = 11;
        break;
      case 6:
        v17 = 12;
        break;
      case 7:
        v17 = 5;
        break;
      case 8:
        v17 = 4;
        break;
      case 9:
        v17 = 6;
        break;
      case 0xALL:
        v17 = 2;
        break;
      case 0xBLL:
        break;
      case 0xCLL:
        v17 = 3;
        break;
      case 0xDLL:
        v17 = sub_3E5774();
        break;
      case 0xELL:
      case 0xFLL:
      case 0x10:
      case 0x11:
      case 0x12:
        v17 = *&v7[*(v4 + 28)];
        break;
      default:
        v17 = 13;
        break;
    }

    switch(v16)
    {
      case 0:
        if (v17 == 7)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 1:
        if (v17 == 8)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 2:
        if (v17 == 9)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 3:
        if (v17 == 10)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 4:
        if (v17 == 11)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 5:
        if (v17 == 12)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 6:
        if (v17 == 5)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 7:
        if (v17 == 4)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 8:
        if (v17 == 6)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 9:
        if (v17 == 2)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 10:
        if (v17 == 1)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 11:
        if (v17 == 3)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 12:
        if (v17 == sub_3E5774())
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 13:
        if (v17 == 14)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 14:
        if (v17 == 15)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 15:
        if (v17 == 16)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      case 16:
        if (v17 != 17)
        {
          goto LABEL_4;
        }

        goto LABEL_57;
      case 17:
        if (v17 == 18)
        {
          goto LABEL_57;
        }

        goto LABEL_4;
      default:
        if (v17 != 13)
        {
LABEL_4:
          ++v14;
          sub_30757C(v7);
          if (v13 == v14)
          {
            goto LABEL_58;
          }

          continue;
        }

LABEL_57:

        sub_300FB0(v7, v10);
        v18 = 0;
        v19 = 1;
LABEL_59:
        (*(v5 + 56))(v10, v18, 1, v4);
        sub_FCF8(v10, &qword_501070);
        return v19;
    }
  }
}

unint64_t sub_303DE0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8ShelfKit7TabMenuV5GroupO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t static TabMenu.item(for:interfaceMode:)@<X0>(int *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = type metadata accessor for TabMenu.Item(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_3075D8(a2 & 1);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = a1;
    v14 = 0;
    v31 = v13;
    v27 = v13 - 1;
    v15 = _swiftEmptyArrayStorage;
    v29 = v5;
    while (2)
    {
      if (v14 >= *(v11 + 16))
      {
        __break(1u);
        JUMPOUT(0x304278);
      }

      v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v20 = *(v6 + 72);
      sub_307518(v11 + v19 + v20 * v14, v10);
      v21 = *&v10[*(v5 + 28)];
      switch(v21)
      {
        case 1uLL:
          if (v31 != (&dword_0 + 1))
          {
            goto LABEL_9;
          }

          goto LABEL_64;
        case 2uLL:
          if (v31 == (&dword_0 + 2))
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 3uLL:
          if (v31 == (&dword_0 + 3))
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 4uLL:
          if (v31 == &dword_4)
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 5uLL:
          if (v31 == (&dword_4 + 1))
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 6uLL:
          if (v31 == (&dword_4 + 2))
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 7uLL:
          if (v31 == (&dword_4 + 3))
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 8uLL:
          if (v31 == &dword_8)
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 9uLL:
          if (v31 == (&dword_8 + 1))
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 0xAuLL:
          if (v31 == (&dword_8 + 2))
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 0xBuLL:
          if (v31 == (&dword_8 + 3))
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 0xCuLL:
          if (v31 == &dword_C)
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 0xDuLL:
          if (v31 == (&dword_C + 1))
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 0xEuLL:
          if (v31 == (&dword_C + 2))
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 0xFuLL:
          if (v31 == (&dword_C + 3))
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 0x10uLL:
          if (v31 == &dword_10)
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 0x11uLL:
          if (v31 == (&dword_10 + 1))
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        case 0x12uLL:
          if (v31 == (&dword_10 + 2))
          {
            goto LABEL_64;
          }

          goto LABEL_9;
        default:
          if (v27 < 0x12)
          {
            goto LABEL_9;
          }

          if (v21)
          {
            if (!v31 || (v21[2] == *(v31 + 2) ? (v22 = v21[3] == *(v31 + 3)) : (v22 = 0), !v22 && (sub_3EE804() & 1) == 0 || (v21[4] == *(v31 + 4) ? (v23 = v21[5] == *(v31 + 5)) : (v23 = 0), !v23 && (sub_3EE804() & 1) == 0 || *(v21 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) != *(v31 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) || *(v21 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount) != *(v31 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount))))
            {
LABEL_9:
              sub_30757C(v10);
              goto LABEL_10;
            }
          }

          else if (v31)
          {
            goto LABEL_9;
          }

LABEL_64:
          sub_300FB0(v10, v30);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_41D74(0, v15[2] + 1, 1);
            v15 = v32;
          }

          v26 = v15[2];
          v25 = v15[3];
          if (v26 >= v25 >> 1)
          {
            sub_41D74(v25 > 1, v26 + 1, 1);
            v15 = v32;
          }

          v15[2] = v26 + 1;
          sub_300FB0(v30, v15 + v19 + v26 * v20);
          v5 = v29;
LABEL_10:
          if (v12 != ++v14)
          {
            continue;
          }

          goto LABEL_4;
      }
    }
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_4:

  if (v15[2])
  {
    v16 = v28;
    sub_307518(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v28);
    v17 = 0;
  }

  else
  {
    v17 = 1;
    v16 = v28;
  }

  return (*(v6 + 56))(v16, v17, 1, v5);
}

uint64_t static TabMenu.item(for:preferredInterfaceMode:)@<X0>(int *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501070);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v17 = &off_4B2010;
  sub_3064D8(&v17, a2 & 1);
  v9 = v17;
  v10 = *(v17 + 2);
  if (v10)
  {
    v11 = 0;
    while (v11 < *(v9 + 2))
    {
      static TabMenu.item(for:interfaceMode:)(a1, v9[v11 + 32], v8);
      v12 = type metadata accessor for TabMenu.Item(0);
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v8, 1, v12) != 1)
      {

        sub_300FB0(v8, a3);
        return (*(v13 + 56))(a3, 0, 1, v12);
      }

      ++v11;
      sub_FCF8(v8, &qword_501070);
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_6:

    v14 = type metadata accessor for TabMenu.Item(0);
    return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  return result;
}

void *static TabMenu.allItems(group:)(int a1)
{
  v30 = a1;
  v32 = type metadata accessor for TabMenu.Item(0);
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v39 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v28 - v3;
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = 0;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v40 = &v28 - v6;
  while (1)
  {
    v11 = v8;
    v12 = TabMenu.Group.items(for:)(*(&off_4B2B78 + v9 + 32), v30);
    v13 = v12;
    v36 = v12[2];
    if (v36)
    {
      break;
    }

LABEL_3:
    v8 = 1;
    v9 = 1;
    if (v11)
    {
      return v10;
    }
  }

  v31 = v11;
  v14 = 0;
  v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v33 = v12;
  v34 = v12 + v38;
  while (1)
  {
    if (v14 >= v13[2])
    {
      __break(1u);
      JUMPOUT(0x304944);
    }

    v15 = *(v35 + 72);
    sub_307518(&v34[v15 * v14], v7);
    v16 = v10[2];
    if (!v16)
    {
LABEL_70:
      v7 = v40;
      sub_307518(v40, v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_E0888(0, v10[2] + 1, 1, v10);
      }

      v26 = v10[2];
      v25 = v10[3];
      if (v26 >= v25 >> 1)
      {
        v10 = sub_E0888(v25 > 1, v26 + 1, 1, v10);
      }

      v13 = v33;
      v10[2] = v26 + 1;
      sub_300FB0(v39, v10 + v38 + v26 * v15);
      goto LABEL_8;
    }

    v17 = 0;
    v18 = *(v32 + 28);
    v19 = *&v40[v18];
    v20 = v10 + v38;
    v37 = v19 - 1;
LABEL_12:
    if (v17 >= v10[2])
    {
      break;
    }

    sub_307518(v20, v4);
    v21 = *&v4[v18];
    switch(v21)
    {
      case 1uLL:
        if (v19 == (&dword_0 + 1))
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 2uLL:
        if (v19 == (&dword_0 + 2))
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 3uLL:
        if (v19 == (&dword_0 + 3))
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 4uLL:
        if (v19 == &dword_4)
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 5uLL:
        if (v19 == (&dword_4 + 1))
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 6uLL:
        if (v19 == (&dword_4 + 2))
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 7uLL:
        if (v19 == (&dword_4 + 3))
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 8uLL:
        if (v19 == &dword_8)
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 9uLL:
        if (v19 != (&dword_8 + 1))
        {
          goto LABEL_65;
        }

        goto LABEL_6;
      case 0xAuLL:
        if (v19 == (&dword_8 + 2))
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 0xBuLL:
        if (v19 == (&dword_8 + 3))
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 0xCuLL:
        if (v19 == &dword_C)
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 0xDuLL:
        if (v19 == (&dword_C + 1))
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 0xEuLL:
        if (v19 == (&dword_C + 2))
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 0xFuLL:
        if (v19 == (&dword_C + 3))
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 0x10uLL:
        if (v19 == &dword_10)
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 0x11uLL:
        if (v19 == (&dword_10 + 1))
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      case 0x12uLL:
        if (v19 == (&dword_10 + 2))
        {
          goto LABEL_6;
        }

        goto LABEL_65;
      default:
        if (v37 < 0x12)
        {
          goto LABEL_65;
        }

        if (v21)
        {
          if (v19 && (v21[2] == *(v19 + 2) ? (v22 = v21[3] == *(v19 + 3)) : (v22 = 0), (v22 || (sub_3EE804() & 1) != 0) && (v21[4] == *(v19 + 4) ? (v23 = v21[5] == *(v19 + 5)) : (v23 = 0), (v23 || (sub_3EE804() & 1) != 0) && *(v21 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) == *(v19 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount))))
          {
            v29 = *(v21 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);
            v24 = *(v19 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);
            sub_30757C(v4);
            if (v29 == v24)
            {
              goto LABEL_7;
            }
          }

          else
          {
LABEL_65:
            sub_30757C(v4);
          }

          ++v17;
          v20 += v15;
          if (v16 == v17)
          {
            goto LABEL_70;
          }

          goto LABEL_12;
        }

        if (v19)
        {
          goto LABEL_65;
        }

LABEL_6:
        sub_30757C(v4);
LABEL_7:
        v7 = v40;
        v13 = v33;
LABEL_8:
        ++v14;
        sub_30757C(v7);
        if (v14 == v36)
        {

          LOBYTE(v11) = v31;
          goto LABEL_3;
        }

        break;
    }
  }

  __break(1u);
  return v10;
}

uint64_t TabMenu.Item.init(station:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_3E6A74();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = type metadata accessor for TabMenu.Item(0);
  v7 = v6[5];
  v8 = sub_3E6AE4();
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = v6[13];
  v10 = (a2 + v6[6]);
  *v10 = v5;
  v10[1] = v4;
  *(a2 + v6[7]) = a1;
  *(a2 + v6[8]) = 1;
  *(a2 + v6[9]) = 1;
  *(a2 + v6[10]) = 0;
  *(a2 + v6[11]) = 1;
  *(a2 + v6[12]) = 1;
  *(a2 + v9) = 0;
}

uint64_t sub_304A84()
{
  v1 = type metadata accessor for TabMenu.Item(0);
  v2 = *(v0 + *(v1 + 28));
  v16 = NavigationTab.stringValue.getter(v2);
  v17 = v3;
  v4 = *(v0 + *(v1 + 40));
  v15 = &type metadata for Bool;
  LOBYTE(v13) = v4;
  sub_FBD0(&v13, &v10, &unk_501090);
  if (v11)
  {
    sub_1FB90(&v10, v12);
    sub_2F4AC(v12, &v10);
    v18._countAndFlagsBits = sub_3ED2B4();
    sub_3ED3D4(v18);

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    sub_FCF8(&v10, &unk_501090);
  }

  sub_FCF8(&v13, &unk_501090);
  if (v2 >= 0x13)
  {
    v5 = v2[2];
    v6 = v2[3];
    v15 = &type metadata for String;
    v13 = v5;
    v14 = v6;
    sub_FBD0(&v13, &v10, &unk_501090);
    if (v11)
    {
      sub_1FB90(&v10, v12);
      sub_2F4AC(v12, &v10);
      sub_29EA4(v2);

      v19._countAndFlagsBits = sub_3ED2B4();
      sub_3ED3D4(v19);

      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    else
    {
      sub_29EA4(v2);

      sub_FCF8(&v10, &unk_501090);
    }

    sub_FCF8(&v13, &unk_501090);
    v7 = v2[4];
    v8 = v2[5];
    v15 = &type metadata for String;
    v13 = v7;
    v14 = v8;
    sub_FBD0(&v13, &v10, &unk_501090);
    if (v11)
    {
      sub_1FB90(&v10, v12);
      sub_2F4AC(v12, &v10);

      v20._countAndFlagsBits = sub_3ED2B4();
      sub_3ED3D4(v20);

      sub_29EB8(v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    else
    {

      sub_29EB8(v2);
      sub_FCF8(&v10, &unk_501090);
    }

    sub_FCF8(&v13, &unk_501090);
  }

  return v16;
}

uint64_t sub_304D5C()
{
  v0 = sub_3E6AE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TabMenu.Item(0);
  __swift_allocate_value_buffer(v4, qword_539880);
  v5 = __swift_project_value_buffer(v4, qword_539880);
  sub_3E69C4();
  v13._countAndFlagsBits = 0x45535F454C544954;
  v13._object = 0xEC00000048435241;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v6 = sub_3E8614(v13, v14);
  v8 = v7;
  (*(v1 + 56))(v5 + v4[5], 1, 1, v0);
  v9 = v4[13];
  result = (*(v1 + 32))(v5, v3, v0);
  v11 = (v5 + v4[6]);
  *v11 = v6;
  v11[1] = v8;
  *(v5 + v4[7]) = 12;
  *(v5 + v4[8]) = 0;
  *(v5 + v4[9]) = 1;
  *(v5 + v4[10]) = 0;
  *(v5 + v4[11]) = 0;
  *(v5 + v4[12]) = 1;
  *(v5 + v9) = 0;
  return result;
}

uint64_t sub_304F08()
{
  v0 = sub_3E6AE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TabMenu.Item(0);
  __swift_allocate_value_buffer(v4, qword_539898);
  v5 = __swift_project_value_buffer(v4, qword_539898);
  sub_3E6A64();
  v13._countAndFlagsBits = 0x41435F454C544954;
  v13._object = 0xED0000474F4C4154;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v6 = sub_3E8614(v13, v14);
  v8 = v7;
  (*(v1 + 56))(v5 + v4[5], 1, 1, v0);
  v9 = v4[13];
  result = (*(v1 + 32))(v5, v3, v0);
  v11 = (v5 + v4[6]);
  *v11 = v6;
  v11[1] = v8;
  *(v5 + v4[7]) = 9;
  *(v5 + v4[8]) = 0;
  *(v5 + v4[9]) = 1;
  *(v5 + v4[10]) = 0;
  *(v5 + v4[11]) = 1;
  *(v5 + v4[12]) = 1;
  *(v5 + v9) = 0;
  return result;
}

uint64_t sub_3050B8()
{
  v0 = sub_3E6AE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TabMenu.Item(0);
  __swift_allocate_value_buffer(v4, qword_5398B0);
  v5 = __swift_project_value_buffer(v4, qword_5398B0);
  sub_3E6AA4();
  v13._object = 0x800000000042D390;
  v13._countAndFlagsBits = 0xD000000000000010;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v6 = sub_3E8614(v13, v14);
  v8 = v7;
  (*(v1 + 56))(v5 + v4[5], 1, 1, v0);
  v9 = v4[13];
  result = (*(v1 + 32))(v5, v3, v0);
  v11 = (v5 + v4[6]);
  *v11 = v6;
  v11[1] = v8;
  *(v5 + v4[7]) = 6;
  *(v5 + v4[8]) = 0;
  *(v5 + v4[9]) = 1;
  *(v5 + v4[10]) = 0;
  *(v5 + v4[11]) = 1;
  *(v5 + v4[12]) = 1;
  *(v5 + v9) = 0;
  return result;
}

uint64_t sub_305260()
{
  v0 = sub_3E6AE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TabMenu.Item(0);
  __swift_allocate_value_buffer(v4, qword_5398C8);
  v5 = __swift_project_value_buffer(v4, qword_5398C8);
  sub_3E69D4();
  v13._countAndFlagsBits = 0x494C5F454C544954;
  v13._object = 0xED00005952415242;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v6 = sub_3E8614(v13, v14);
  v8 = v7;
  (*(v1 + 56))(v5 + v4[5], 1, 1, v0);
  v9 = v4[13];
  result = (*(v1 + 32))(v5, v3, v0);
  v11 = (v5 + v4[6]);
  *v11 = v6;
  v11[1] = v8;
  *(v5 + v4[7]) = 7;
  *(v5 + v4[8]) = 0;
  *(v5 + v4[9]) = 1;
  *(v5 + v4[10]) = 0;
  *(v5 + v4[11]) = 0;
  *(v5 + v4[12]) = 1;
  *(v5 + v9) = 0;
  return result;
}

uint64_t sub_305410()
{
  v0 = sub_3E6AE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TabMenu.Item(0);
  __swift_allocate_value_buffer(v4, qword_5398E0);
  v5 = __swift_project_value_buffer(v4, qword_5398E0);
  sub_3E6A24();
  v13._object = 0x800000000042AE10;
  v13._countAndFlagsBits = 0xD000000000000010;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v6 = sub_3E8614(v13, v14);
  v8 = v7;
  (*(v1 + 56))(v5 + v4[5], 1, 1, v0);
  v9 = v4[13];
  result = (*(v1 + 32))(v5, v3, v0);
  v11 = (v5 + v4[6]);
  *v11 = v6;
  v11[1] = v8;
  *(v5 + v4[7]) = 17;
  *(v5 + v4[8]) = 0;
  *(v5 + v4[9]) = 1;
  *(v5 + v4[10]) = 0;
  *(v5 + v4[11]) = 1;
  *(v5 + v4[12]) = 1;
  *(v5 + v9) = 0;
  return result;
}

uint64_t sub_3055B8()
{
  v0 = sub_3E6AE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TabMenu.Item(0);
  __swift_allocate_value_buffer(v4, qword_5398F8);
  v5 = __swift_project_value_buffer(v4, qword_5398F8);
  sub_3E6A54();
  v13._countAndFlagsBits = 0x48535F454C544954;
  v13._object = 0xEB0000000053574FLL;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v6 = sub_3E8614(v13, v14);
  v8 = v7;
  (*(v1 + 56))(v5 + v4[5], 1, 1, v0);
  v9 = v4[13];
  result = (*(v1 + 32))(v5, v3, v0);
  v11 = (v5 + v4[6]);
  *v11 = v6;
  v11[1] = v8;
  *(v5 + v4[7]) = 1;
  *(v5 + v4[8]) = 0;
  *(v5 + v4[9]) = 1;
  *(v5 + v4[10]) = 0;
  *(v5 + v4[11]) = 1;
  *(v5 + v4[12]) = 1;
  *(v5 + v9) = 0;
  return result;
}

uint64_t sub_305760()
{
  v0 = sub_3E6AE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TabMenu.Item(0);
  __swift_allocate_value_buffer(v4, qword_539910);
  v5 = __swift_project_value_buffer(v4, qword_539910);
  sub_3E6A84();
  v13._countAndFlagsBits = 0x48435F454C544954;
  v13._object = 0xEE00534C454E4E41;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v6 = sub_3E8614(v13, v14);
  v8 = v7;
  (*(v1 + 56))(v5 + v4[5], 1, 1, v0);
  v9 = v4[13];
  result = (*(v1 + 32))(v5, v3, v0);
  v11 = (v5 + v4[6]);
  *v11 = v6;
  v11[1] = v8;
  *(v5 + v4[7]) = 2;
  *(v5 + v4[8]) = 0;
  *(v5 + v4[9]) = 1;
  *(v5 + v4[10]) = 0;
  *(v5 + v4[11]) = 1;
  *(v5 + v4[12]) = 1;
  *(v5 + v9) = 0;
  return result;
}

uint64_t sub_305910()
{
  v0 = sub_3E6AE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TabMenu.Item(0);
  __swift_allocate_value_buffer(v4, qword_539928);
  v5 = __swift_project_value_buffer(v4, qword_539928);
  sub_3E69E4();
  v13._object = 0x800000000042A850;
  v13._countAndFlagsBits = 0xD000000000000010;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v6 = sub_3E8614(v13, v14);
  v8 = v7;
  (*(v1 + 56))(v5 + v4[5], 1, 1, v0);
  v9 = v4[13];
  result = (*(v1 + 32))(v5, v3, v0);
  v11 = (v5 + v4[6]);
  *v11 = v6;
  v11[1] = v8;
  *(v5 + v4[7]) = 3;
  *(v5 + v4[8]) = 0;
  *(v5 + v4[9]) = 1;
  *(v5 + v4[10]) = 0;
  *(v5 + v4[11]) = 1;
  *(v5 + v4[12]) = 1;
  *(v5 + v9) = 0;
  return result;
}

uint64_t sub_305AB8()
{
  v0 = sub_3E6AE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TabMenu.Item(0);
  __swift_allocate_value_buffer(v4, qword_539940);
  v5 = __swift_project_value_buffer(v4, qword_539940);
  sub_3E6A94();
  v13._countAndFlagsBits = 0x41535F454C544954;
  v13._object = 0xEB00000000444556;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v6 = sub_3E8614(v13, v14);
  v8 = v7;
  (*(v1 + 56))(v5 + v4[5], 1, 1, v0);
  v9 = v4[13];
  result = (*(v1 + 32))(v5, v3, v0);
  v11 = (v5 + v4[6]);
  *v11 = v6;
  v11[1] = v8;
  *(v5 + v4[7]) = 15;
  *(v5 + v4[8]) = 0;
  *(v5 + v4[9]) = 1;
  *(v5 + v4[10]) = 0;
  *(v5 + v4[11]) = 1;
  *(v5 + v4[12]) = 1;
  *(v5 + v9) = 0;
  return result;
}

uint64_t sub_305C64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501100);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_3E6AE4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TabMenu.Item(0);
  __swift_allocate_value_buffer(v7, qword_539958);
  v8 = __swift_project_value_buffer(v7, qword_539958);
  sub_3E69F4();
  v16._object = 0x800000000042D3D0;
  v16._countAndFlagsBits = 0xD000000000000010;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v9 = sub_3E8614(v16, v17);
  v11 = v10;
  sub_3E6A34();
  (*(v4 + 56))(v2, 0, 1, v3);
  v12 = v7[13];
  (*(v4 + 32))(v8, v6, v3);
  v13 = (v8 + v7[6]);
  *v13 = v9;
  v13[1] = v11;
  *(v8 + v7[7]) = 4;
  *(v8 + v7[8]) = 0;
  *(v8 + v7[9]) = 1;
  result = sub_307284(v2, v8 + v7[5]);
  *(v8 + v7[10]) = 0;
  *(v8 + v7[11]) = 1;
  *(v8 + v7[12]) = 1;
  *(v8 + v12) = 0;
  return result;
}

uint64_t sub_305E6C()
{
  v0 = sub_3E6AE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TabMenu.Item(0);
  __swift_allocate_value_buffer(v4, qword_539970);
  v5 = __swift_project_value_buffer(v4, qword_539970);
  sub_3E6A14();
  v13._object = 0x800000000042D3B0;
  v13._countAndFlagsBits = 0xD000000000000015;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v6 = sub_3E8614(v13, v14);
  v8 = v7;
  (*(v1 + 56))(v5 + v4[5], 1, 1, v0);
  v9 = v4[13];
  result = (*(v1 + 32))(v5, v3, v0);
  v11 = (v5 + v4[6]);
  *v11 = v6;
  v11[1] = v8;
  *(v5 + v4[7]) = 16;
  *(v5 + v4[8]) = 0;
  *(v5 + v4[9]) = 1;
  *(v5 + v4[10]) = 0;
  *(v5 + v4[11]) = 1;
  *(v5 + v4[12]) = 1;
  *(v5 + v9) = 0;
  return result;
}

uint64_t TabMenu.Item.withChildren(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_307518(v2, a2);
  v5 = *(type metadata accessor for TabMenu.Item(0) + 52);

  *(a2 + v5) = a1;
  return result;
}

UIImage __swiftcall TabMenu.Item.tabImage(for:)(ShelfKit::InterfaceMode a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501100);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  if ((a1 & 1) == 0)
  {

LABEL_7:
    v8 = type metadata accessor for TabMenu.Item(0);
    sub_FBD0(v1 + *(v8 + 20), v5, &unk_501100);
    v9 = sub_3E6AE4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      sub_FCF8(v5, &unk_501100);
      return sub_3E69A4();
    }

    else
    {
      v11 = sub_3E69A4();
      (*(v10 + 8))(v5, v9);
      return v11;
    }
  }

  v6 = sub_3EE804();

  if (v6)
  {
    goto LABEL_7;
  }

  return sub_3E69A4();
}

uint64_t TabMenu.Item.accessibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for TabMenu.Item(0) + 28));
  result = 0x73776F6873;
  switch(v1)
  {
    case 1:
      return result;
    case 2:
      result = 0x736C656E6E616863;
      break;
    case 3:
      result = 0x69726F6765746163;
      break;
    case 4:
      result = 0x64616F6C6E776F64;
      break;
    case 5:
      result = 0x7472616843706F74;
      break;
    case 6:
      result = 0x6F546E7265646F6DLL;
      break;
    case 7:
      result = 0x7972617262696CLL;
      break;
    case 8:
      result = 0x6E657473696CLL;
      break;
    case 9:
      v3 = 0x6F6C61746163;
      goto LABEL_21;
    case 10:
      result = 0x7265666E69;
      break;
    case 11:
      result = 0x64657463656C6573;
      break;
    case 12:
      result = 0x686372616573;
      break;
    case 13:
      v3 = 0x6E6964616F6CLL;
LABEL_21:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x67000000000000;
      break;
    case 14:
      result = 0x79616C50696E696DLL;
      break;
    case 15:
      result = 0x6B72616D6B6F6F62;
      break;
    case 16:
      result = 0x704574736574616CLL;
      break;
    case 17:
      result = 0x796C746E65636572;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    default:
      result = 0x6E6F6974617473;
      break;
  }

  return result;
}

Swift::Int sub_3064D8(char **a1, char a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_2A6884(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = v4 + 32;
  v7[1] = v5;
  result = sub_30654C(v7, a2 & 1);
  *a1 = v4;
  return result;
}

Swift::Int sub_30654C(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  result = sub_3EE794(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        v7 = sub_3ED5E4();
        v7[2] = v4 / 2;
      }

      v9[0] = v7 + 4;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_3067B0(v9, v10, a1, v6, a2 & 1);
      v8[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_306650(0, v4, 1, a1, a2 & 1);
  }

  return result;
}

uint64_t sub_306650(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    if (a5)
    {
      v6 = 0x72616265646973;
    }

    else
    {
      v6 = 0x726142626174;
    }

    if (a5)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    v8 = result - a3;
    v9 = (v5 + a3);
LABEL_11:
    v19 = a3;
    v10 = *(v5 + a3);
    v17 = v9;
    v18 = v8;
    while (1)
    {
      v11 = (v10 & 1) != 0 ? 0x72616265646973 : 0x726142626174;
      v12 = (v10 & 1) != 0 ? 0xE700000000000000 : 0xE600000000000000;
      if (v11 == v6 && v12 == v7)
      {
      }

      else
      {
        v14 = sub_3EE804();

        if ((v14 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      if (!v5)
      {
        break;
      }

      v10 = *v9;
      *v9 = *(v9 - 1);
      *--v9 = v10;
      if (__CFADD__(v8++, 1))
      {
LABEL_10:
        a3 = v19 + 1;
        v8 = v18 - 1;
        v9 = v17 + 1;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_3067B0(uint64_t result, uint64_t a2, char *a3, int64_t a4, char a5)
{
  v7 = v5;
  v8 = a3;
  v97 = result;
  if (*(a3 + 1) < 1)
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_135:
    v6 = *v97;
    if (!*v97)
    {
      goto LABEL_173;
    }

    v10 = v13;
    result = swift_isUniquelyReferenced_nonNull_native();
    LOBYTE(v13) = a5;
    if (result)
    {
LABEL_137:
      v88 = *(v10 + 16);
      if (v88 >= 2)
      {
        while (1)
        {
          v89 = *v8;
          if (!*v8)
          {
            goto LABEL_171;
          }

          v90 = *(v10 + 16 * v88);
          v8 = *(v10 + 16 * (v88 - 1) + 40);
          sub_306F40(&v89[v90], &v89[*(v10 + 16 * (v88 - 1) + 32)], &v8[v89], v6, v13 & 1);
          if (v7)
          {
          }

          if (v8 < v90)
          {
            goto LABEL_160;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_2A66A8(v10);
          }

          if (v88 - 2 >= *(v10 + 16))
          {
            goto LABEL_161;
          }

          v91 = (v10 + 16 * v88);
          *v91 = v90;
          v91[1] = v8;
          result = sub_2A661C(v88 - 1);
          v88 = *(v10 + 16);
          v8 = a3;
          if (v88 <= 1)
          {
          }
        }
      }
    }

LABEL_167:
    result = sub_2A66A8(v10);
    v10 = result;
    goto LABEL_137;
  }

  v9 = 0;
  v101 = a5 & 1;
  if (a5)
  {
    v10 = 0x72616265646973;
  }

  else
  {
    v10 = 0x726142626174;
  }

  if (a5)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  v12 = *(a3 + 1);
  v13 = _swiftEmptyArrayStorage;
LABEL_10:
  v14 = v9;
  v15 = v9 + 1;
  if (v9 + 1 < v12)
  {
    v16 = v12;
    v98 = v9;
    v17 = *v8;
    v18 = v9 + 1;
    if (v17[v15])
    {
      v19 = 0x72616265646973;
    }

    else
    {
      v19 = 0x726142626174;
    }

    if (v17[v15])
    {
      v20 = 0xE700000000000000;
    }

    else
    {
      v20 = 0xE600000000000000;
    }

    v21 = v19 == v10 && v20 == v11;
    v95 = v13;
    if (v21)
    {
      v102 = 1;
    }

    else
    {
      v102 = sub_3EE804();
    }

    v22 = v98 + 2;
    v6 = v98 + 2;
    v23 = v16;
    if (v98 + 2 < v16)
    {
      while (1)
      {
        v6 = v22;
        if (v17[v22])
        {
          v26 = 0x72616265646973;
        }

        else
        {
          v26 = 0x726142626174;
        }

        if (v17[v22])
        {
          v27 = 0xE700000000000000;
        }

        else
        {
          v27 = 0xE600000000000000;
        }

        if (v26 == v10 && v27 == v11)
        {

          if ((v102 & 1) == 0)
          {
            v15 = v6;
            v8 = a3;
            v13 = v95;
            goto LABEL_47;
          }
        }

        else
        {
          v24 = sub_3EE804();

          v25 = v102 ^ v24;
          v23 = v16;
          if (v25)
          {
            v18 = v6 - 1;
            break;
          }
        }

        v22 = v6 + 1;
        if (v23 == v6 + 1)
        {
          v18 = v6;
          v6 = v23;
          break;
        }
      }
    }

    v8 = a3;
    v13 = v95;
    if (v102)
    {
      if (v6 < v98)
      {
        goto LABEL_166;
      }

      v29 = v98 <= v18;
      v14 = v98;
      if (v29)
      {
        v84 = v6 - 1;
        v85 = v98;
        do
        {
          if (v85 != v84)
          {
            v86 = *a3;
            if (!*a3)
            {
              goto LABEL_170;
            }

            v87 = *(v86 + v85);
            *(v86 + v85) = *(v86 + v84);
            *(v86 + v84) = v87;
          }

          v29 = ++v85 < v84--;
        }

        while (v29);
      }

      v15 = v6;
    }

    else
    {
      v15 = v6;
LABEL_47:
      v14 = v98;
    }
  }

  v30 = *(v8 + 1);
  if (v15 >= v30)
  {
    goto LABEL_77;
  }

  if (__OFSUB__(v15, v14))
  {
    goto LABEL_163;
  }

  if (v15 - v14 >= a4)
  {
    goto LABEL_77;
  }

  if (__OFADD__(v14, a4))
  {
    goto LABEL_164;
  }

  if (v14 + a4 < v30)
  {
    v30 = v14 + a4;
  }

  if (v30 < v14)
  {
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (v15 == v30)
  {
    goto LABEL_77;
  }

  v96 = v13;
  v92 = v7;
  v8 = *v8;
  v99 = v14;
  v100 = v30;
  v31 = v14 - v15;
  v32 = &v8[v15];
LABEL_58:
  v103 = v15;
  v33 = v8[v15];
  v34 = v32;
  v35 = v31;
  while (1)
  {
    v36 = (v33 & 1) != 0 ? 0x72616265646973 : 0x726142626174;
    v6 = (v33 & 1) != 0 ? 0xE700000000000000 : 0xE600000000000000;
    if (v36 == v10 && v6 == v11)
    {
    }

    else
    {
      v38 = sub_3EE804();

      if ((v38 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    if (!v8)
    {
      break;
    }

    v33 = *v34;
    *v34 = *(v34 - 1);
    *--v34 = v33;
    if (__CFADD__(v35++, 1))
    {
LABEL_57:
      v15 = v103 + 1;
      --v31;
      ++v32;
      if (v103 + 1 != v100)
      {
        goto LABEL_58;
      }

      v15 = v100;
      v7 = v92;
      v13 = v96;
      v14 = v99;
LABEL_77:
      if (v15 < v14)
      {
        goto LABEL_162;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_DFED0(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v41 = *(v13 + 16);
      v40 = *(v13 + 24);
      v6 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        result = sub_DFED0((v40 > 1), v41 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 16) = v6;
      v42 = v13 + 16 * v41;
      *(v42 + 32) = v14;
      *(v42 + 40) = v15;
      if (!*v97)
      {
        goto LABEL_172;
      }

      v104 = v15;
      if (v41)
      {
        v8 = *v97;
        while (1)
        {
          v43 = v6 - 1;
          if (v6 >= 4)
          {
            break;
          }

          if (v6 == 3)
          {
            v44 = *(v13 + 32);
            v45 = *(v13 + 40);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_98:
            if (v47)
            {
              goto LABEL_151;
            }

            v60 = (v13 + 16 * v6);
            v62 = *v60;
            v61 = v60[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_154;
            }

            v66 = (v13 + 32 + 16 * v43);
            v68 = *v66;
            v67 = v66[1];
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_157;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_158;
            }

            if (v64 + v69 >= v46)
            {
              if (v46 < v69)
              {
                v43 = v6 - 2;
              }

              goto LABEL_119;
            }

            goto LABEL_112;
          }

          v70 = (v13 + 16 * v6);
          v72 = *v70;
          v71 = v70[1];
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_112:
          if (v65)
          {
            goto LABEL_153;
          }

          v73 = v13 + 16 * v43;
          v75 = *(v73 + 32);
          v74 = *(v73 + 40);
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_156;
          }

          if (v76 < v64)
          {
            goto LABEL_9;
          }

LABEL_119:
          v81 = v43 - 1;
          if (v43 - 1 >= v6)
          {
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
            goto LABEL_165;
          }

          if (!*a3)
          {
            goto LABEL_169;
          }

          v82 = *(v13 + 32 + 16 * v81);
          v6 = *(v13 + 32 + 16 * v43 + 8);
          sub_306F40((*a3 + v82), (*a3 + *(v13 + 32 + 16 * v43)), *a3 + v6, v8, v101);
          if (v7)
          {
          }

          if (v6 < v82)
          {
            goto LABEL_147;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_2A66A8(v13);
          }

          if (v81 >= *(v13 + 16))
          {
            goto LABEL_148;
          }

          v83 = v13 + 16 * v81;
          *(v83 + 32) = v82;
          *(v83 + 40) = v6;
          result = sub_2A661C(v43);
          v6 = *(v13 + 16);
          if (v6 <= 1)
          {
            goto LABEL_9;
          }
        }

        v48 = v13 + 32 + 16 * v6;
        v49 = *(v48 - 64);
        v50 = *(v48 - 56);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_149;
        }

        v53 = *(v48 - 48);
        v52 = *(v48 - 40);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_150;
        }

        v55 = (v13 + 16 * v6);
        v57 = *v55;
        v56 = v55[1];
        v54 = __OFSUB__(v56, v57);
        v58 = v56 - v57;
        if (v54)
        {
          goto LABEL_152;
        }

        v54 = __OFADD__(v46, v58);
        v59 = v46 + v58;
        if (v54)
        {
          goto LABEL_155;
        }

        if (v59 >= v51)
        {
          v77 = (v13 + 32 + 16 * v43);
          v79 = *v77;
          v78 = v77[1];
          v54 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v54)
          {
            goto LABEL_159;
          }

          if (v46 < v80)
          {
            v43 = v6 - 2;
          }

          goto LABEL_119;
        }

        goto LABEL_98;
      }

LABEL_9:
      v9 = v104;
      v8 = a3;
      v12 = *(a3 + 1);
      if (v104 >= v12)
      {
        goto LABEL_135;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
  return result;
}

uint64_t sub_306F40(char *__dst, char *__src, unint64_t a3, char *a4, char a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v12 = &v6[v11];
    if (v11 >= 1 && v8 > v9)
    {
      v23 = (a5 & 1) == 0;
      if (a5)
      {
        v24 = 0x72616265646973;
      }

      else
      {
        v24 = 0x726142626174;
      }

      if (v23)
      {
        v25 = 0xE600000000000000;
      }

      else
      {
        v25 = 0xE700000000000000;
      }

      do
      {
        --v7;
        while (1)
        {
          v26 = *(v12 - 1) ? 0x72616265646973 : 0x726142626174;
          v27 = *(v12 - 1) ? 0xE700000000000000 : 0xE600000000000000;
          if (v26 == v24 && v27 == v25)
          {
            break;
          }

          v29 = sub_3EE804();

          if (v29)
          {
            goto LABEL_66;
          }

          v30 = (v12 - 1);
          if ((v7 + 1) < v12 || v7 >= v12)
          {
            *v7 = *v30;
          }

          --v7;
          --v12;
          if (v30 <= v6)
          {
            v12 = v30;
            goto LABEL_74;
          }
        }

LABEL_66:
        v31 = v8 - 1;
        if (v7 + 1 < v8 || v7 >= v8)
        {
          *v7 = *v31;
        }

        if (v12 <= v6)
        {
          break;
        }

        --v8;
      }

      while (v31 > v9);
      v8 = v31;
      if (v31 == v6)
      {
        goto LABEL_75;
      }

      goto LABEL_76;
    }

LABEL_74:
    if (v8 != v6)
    {
LABEL_76:
      memmove(v8, v6, v12 - v6);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v10);
    }

    v12 = &v6[v10];
    if (v10 >= 1 && v8 < v7)
    {
      v13 = (a5 & 1) == 0;
      if (a5)
      {
        v14 = 0x72616265646973;
      }

      else
      {
        v14 = 0x726142626174;
      }

      if (v13)
      {
        v15 = 0xE600000000000000;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      while (1)
      {
        v16 = *v8 ? 0x72616265646973 : 0x726142626174;
        v17 = *v8 ? 0xE700000000000000 : 0xE600000000000000;
        if (v16 == v14 && v17 == v15)
        {
          break;
        }

        v19 = sub_3EE804();

        if (v19)
        {
          goto LABEL_28;
        }

        v20 = v6 + 1;
        v21 = v6;
        v22 = v8;
        if (v9 < v6)
        {
          ++v6;
        }

        else
        {
          ++v6;
          if (v9 < v20)
          {
            goto LABEL_33;
          }
        }

LABEL_32:
        *v9 = *v21;
LABEL_33:
        ++v9;
        if (v6 < v12)
        {
          v8 = v22;
          if (v22 < v7)
          {
            continue;
          }
        }

        goto LABEL_35;
      }

LABEL_28:
      v22 = v8 + 1;
      v21 = v8;
      if (v9 >= v8 && v9 < v22)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_35:
    v8 = v9;
    if (v9 != v6)
    {
      goto LABEL_76;
    }
  }

LABEL_75:
  if (v8 >= v12)
  {
    goto LABEL_76;
  }

  return 1;
}

uint64_t sub_307284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s8ShelfKit7TabMenuV10ActionItemV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_3E6994() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TabMenu.ActionItem(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_3EE804() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 28);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  result = (v12 | v14) == 0;
  if (v12)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    if (*v11 == *v13 && v12 == v14)
    {
      return 1;
    }

    else
    {

      return sub_3EE804();
    }
  }

  return result;
}

BOOL _s8ShelfKit7TabMenuV4ItemV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabMenu.Item(0);
  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_3EE804() & 1) == 0 || !_s8ShelfKit13NavigationTabO2eeoiySbAC_ACtFZ_0(*(a1 + v4[7]), *(a2 + v4[7])) || *(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]) || *(a1 + v4[11]) != *(a2 + v4[11]) || *(a1 + v4[12]) != *(a2 + v4[12]))
  {
    return 0;
  }

  v11 = v4[13];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  result = (v12 | v13) == 0;
  if (v12)
  {
    if (v13)
    {

      v14 = sub_114E40(v12, v13);

      return v14 & 1;
    }
  }

  return result;
}

uint64_t sub_307518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabMenu.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_30757C(uint64_t a1)
{
  v2 = type metadata accessor for TabMenu.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3075D8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA790);
  v2 = type metadata accessor for TabMenu.Item(0);
  v3 = *(*(v2 - 1) + 72);
  v4 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_3F52F0;
  v6 = v5 + v4;
  if (a1)
  {
    if (qword_4E8AC0 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_539880);
    sub_307518(v7, v6);
    v8 = v6 + v3;
    sub_3E6A44();
    v31._countAndFlagsBits = 0x4F485F454C544954;
    v31._object = 0xEA0000000000454DLL;
    v33._countAndFlagsBits = 1701670728;
    v33._object = 0xE400000000000000;
    v9 = sub_3E8614(v31, v33);
    v11 = v10;
    v12 = v2[5];
    sub_3E69B4();
    v13 = sub_3E6AE4();
    (*(*(v13 - 8) + 56))(v6 + v3 + v12, 0, 1, v13);
    v14 = v2[13];
    v15 = (v6 + v3 + v2[6]);
    *v15 = v9;
    v15[1] = v11;
    *(v8 + v2[7]) = 8;
    *(v8 + v2[8]) = 0;
    *(v8 + v2[9]) = 1;
    *(v8 + v2[10]) = 0;
    *(v8 + v2[11]) = 0;
    *(v8 + v2[12]) = 0;
    *(v8 + v14) = 0;
    if (qword_4E8AC8 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v2, qword_539898);
    sub_307518(v16, v6 + 2 * v3);
    v17 = v6 + 3 * v3;
    if (qword_4E8AD8 != -1)
    {
      swift_once();
    }

    v18 = qword_5398C8;
  }

  else
  {
    sub_3E6A44();
    v32._countAndFlagsBits = 0x4F485F454C544954;
    v32._object = 0xEA0000000000454DLL;
    v34._countAndFlagsBits = 1701670728;
    v34._object = 0xE400000000000000;
    v19 = sub_3E8614(v32, v34);
    v21 = v20;
    v22 = v2[5];
    sub_3E69B4();
    v23 = sub_3E6AE4();
    (*(*(v23 - 8) + 56))(v6 + v22, 0, 1, v23);
    v24 = v2[13];
    v25 = (v6 + v2[6]);
    *v25 = v19;
    v25[1] = v21;
    *(v6 + v2[7]) = 8;
    *(v6 + v2[8]) = 0;
    *(v6 + v2[9]) = 1;
    *(v6 + v2[10]) = 0;
    *(v6 + v2[11]) = 0;
    *(v6 + v2[12]) = 0;
    *(v6 + v24) = 0;
    if (qword_4E8AC8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v2, qword_539898);
    sub_307518(v26, v6 + v3);
    if (qword_4E8AD8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v2, qword_5398C8);
    sub_307518(v27, v6 + 2 * v3);
    v17 = v6 + 3 * v3;
    if (qword_4E8AC0 != -1)
    {
      swift_once();
    }

    v18 = qword_539880;
  }

  v28 = __swift_project_value_buffer(v2, v18);
  sub_307518(v28, v17);
  v29 = TabMenu.Group.items(for:)(a1 & 1, 1u);
  sub_4174C(v29);
  return v5;
}

unint64_t _s8ShelfKit7TabMenuV5GroupO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_307A44()
{
  result = qword_501138;
  if (!qword_501138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501138);
  }

  return result;
}

unint64_t sub_307ACC()
{
  result = qword_501150;
  if (!qword_501150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501150);
  }

  return result;
}

unint64_t sub_307B24()
{
  result = qword_501158;
  if (!qword_501158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501158);
  }

  return result;
}

uint64_t sub_307BC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_307C54()
{
  result = qword_501170;
  if (!qword_501170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501170);
  }

  return result;
}

uint64_t sub_307D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3E6AE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501100);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_307E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3E6AE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501100);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_307F64()
{
  sub_3E6AE4();
  if (v0 <= 0x3F)
  {
    sub_308030();
    if (v1 <= 0x3F)
    {
      sub_308088();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_308030()
{
  if (!qword_5011F0)
  {
    sub_3E6AE4();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_5011F0);
    }
  }
}

void sub_308088()
{
  if (!qword_5011F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_501200);
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_5011F8);
    }
  }
}

uint64_t sub_308110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3E6AE4();
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

    return (v10 + 1);
  }
}

uint64_t sub_3081E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3E6AE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_3082A0()
{
  sub_3E6AE4();
  if (v0 <= 0x3F)
  {
    sub_83E10();
    if (v1 <= 0x3F)
    {
      sub_1972C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_308354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabMenu.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_3083C8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_63;
  }

  v3 = *(&dword_10 + (isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8));
  while (v3)
  {
    v4 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v30 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = _swiftEmptyArrayStorage;
    v29 = v3;
    while (1)
    {
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_3EE3F4();
      }

      else
      {
        if (v4 >= *(v31 + 16))
        {
          goto LABEL_58;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v30 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4, 1);
      v8 = v4 + 1;
      if (v7)
      {
        goto LABEL_57;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_3F7950;
        *(v14 + 32) = v6;
        goto LABEL_14;
      }

      v10 = v9;
      v11 = v6;
      v12 = [v10 children];
      sub_36174(0, &qword_4EA748);
      v13 = sub_3ED584();

      v14 = sub_3083C8(v13);

      if (v14 >> 62)
      {
        break;
      }

      v3 = v29;
LABEL_14:
      v35 = 0;
      v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
      if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
      {
        goto LABEL_52;
      }

LABEL_16:
      isUniquelyReferenced_nonNull_bridgeObject = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      v16 = isUniquelyReferenced_nonNull_bridgeObject + v15;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
      {
        goto LABEL_54;
      }

LABEL_17:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v34 = v8;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
        {
          goto LABEL_26;
        }

LABEL_25:
        sub_3EE5A4();
        goto LABEL_26;
      }

      if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v17 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *(&dword_18 + (v5 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v18 = v15;
        goto LABEL_27;
      }

LABEL_26:
      v18 = v15;
      isUniquelyReferenced_nonNull_bridgeObject = sub_3EE404();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_3EE5A4();
        v21 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v21 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
        if (!v21)
        {
LABEL_4:

          if (v18 > 0)
          {
            goto LABEL_59;
          }

          goto LABEL_5;
        }
      }

      if (((v20 >> 1) - v19) < v18)
      {
        goto LABEL_60;
      }

      v22 = v18;
      v33 = v2;
      v2 = (v17 + 8 * v19 + 32);
      if ((v35 & 1) == 0)
      {
        sub_36174(0, &qword_4EA748);
        swift_arrayInitWithCopy();

        goto LABEL_44;
      }

      if (v21 < 1)
      {
        goto LABEL_62;
      }

      v23 = 0;
      if ((v14 & 0xC000000000000001) == 0)
      {
        goto LABEL_37;
      }

      while (1)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_3EE3F4();
        ++v23;
        *v2 = isUniquelyReferenced_nonNull_bridgeObject;
        if (v23 == v21)
        {
          break;
        }

        while (1)
        {
          ++v2;
          if ((v14 & 0xC000000000000001) != 0)
          {
            break;
          }

LABEL_37:
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_55;
          }

          if (v23 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_56;
          }

          v24 = *(v14 + 32 + 8 * v23++);
          *v2 = v24;
          isUniquelyReferenced_nonNull_bridgeObject = v24;
          if (v23 == v21)
          {
            goto LABEL_43;
          }
        }
      }

LABEL_43:

      v3 = v29;
      v22 = v18;
LABEL_44:
      v2 = v33;
      if (v22 >= 1)
      {
        v25 = *(v17 + 16);
        v7 = __OFADD__(v25, v22);
        v26 = v25 + v22;
        if (v7)
        {
          goto LABEL_61;
        }

        *(v17 + 16) = v26;
      }

LABEL_5:
      v4 = v34;
      if (v34 == v3)
      {
        return v5;
      }
    }

    v15 = sub_3EE5A4();
    v35 = 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v3 = v29;
      if ((v5 & 0x4000000000000000) != 0)
      {
        goto LABEL_52;
      }

      goto LABEL_16;
    }

    v3 = v29;
LABEL_52:
    isUniquelyReferenced_nonNull_bridgeObject = sub_3EE5A4();
    v16 = isUniquelyReferenced_nonNull_bridgeObject + v15;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
    {
      goto LABEL_17;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_3EE5A4();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return _swiftEmptyArrayStorage;
}

id UITab.init(tabItem:viewControllerProvider:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_30A674(a1, a2, a3);
  sub_16AC0(a2);
  return v4;
}

uint64_t UITab.allChildren.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    v4 = [v2 children];
    sub_36174(0, &qword_4EA748);
    v5 = sub_3ED584();

    v6 = sub_3083C8(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_3F7950;
    *(v6 + 32) = v0;
    v7 = v0;
  }

  return v6;
}

id TabMenu.Item.tab(asPartOf:viewControllerProvider:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TabMenu.Item(0);
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v74 - v11;
  __chkstk_darwin(v13);
  v15 = &v74 - v14;
  __chkstk_darwin(v16);
  v18 = &v74 - v17;
  v19 = sub_3EC6A4();
  __chkstk_darwin(v19);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v3 + v6[7]);
  if (v24 != 12)
  {
    if (v24 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E18);
      sub_3EC394();
      v25 = v86;
      v26 = v87;
      __swift_project_boxed_opaque_existential_1(aBlock, v86);
      v27 = (*(v26 + 1))(v25, v26);
      __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    }

    else if (*(v3 + v6[13]))
    {
      sub_36174(0, &unk_501080);
      sub_307518(v3, v9);
      sub_7A6C8(a2);
      return UITabGroup.init(tabItem:viewControllerProvider:displayInline:)(v9, a2, a3, 1);
    }

    else
    {
      sub_36174(0, &qword_4EA748);
      sub_307518(v3, v9);
      sub_7A6C8(a2);
      v27 = sub_30A674(v9, a2, a3);
      sub_16AC0(a2);
    }

    return v27;
  }

  v83 = v12;
  v76 = v18;
  v77 = v23;
  v78 = v21;
  v79 = v20;
  if (a2)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    *(v28 + 24) = a3;
    v29 = objc_allocWithZone(UISearchTab);
    v87 = sub_30AA54;
    v88 = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_30A368;
    v86 = &block_descriptor_22;
    v30 = _Block_copy(aBlock);
    sub_7A6C8(a2);

    v31 = [v29 initWithViewControllerProvider:v30];
    _Block_release(v30);
    sub_16AC0(a2);
  }

  else
  {
    v31 = [objc_allocWithZone(UISearchTab) initWithViewControllerProvider:0];
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA790);
  v33 = *(v7 + 72);
  v34 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v81 = 4 * v33;
  v82 = v32;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_3F52F0;
  v84 = v34;
  v80 = v35;
  v36 = v35 + v34;
  v37 = qword_4E8AC0;
  v75 = v31;
  if (v37 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v38 = __swift_project_value_buffer(v6, qword_539880);
    sub_307518(v38, v36);
    v39 = v36 + v33;
    sub_3E6A44();
    v90._countAndFlagsBits = 0x4F485F454C544954;
    v90._object = 0xEA0000000000454DLL;
    v91._countAndFlagsBits = 1701670728;
    v91._object = 0xE400000000000000;
    v40 = sub_3E8614(v90, v91);
    v42 = v41;
    v43 = v6[5];
    sub_3E69B4();
    v44 = sub_3E6AE4();
    (*(*(v44 - 8) + 56))(v36 + v33 + v43, 0, 1, v44);
    v45 = v6[13];
    v46 = (v36 + v33 + v6[6]);
    *v46 = v40;
    v46[1] = v42;
    *(v39 + v6[7]) = 8;
    *(v39 + v6[8]) = 0;
    *(v39 + v6[9]) = 1;
    *(v39 + v6[10]) = 0;
    *(v39 + v6[11]) = 0;
    *(v39 + v6[12]) = 0;
    *(v39 + v45) = 0;
    v47 = 2 * v33;
    if (qword_4E8AC8 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v6, qword_539898);
    sub_307518(v48, v36 + v47);
    v49 = 3 * v33;
    v50 = v83;
    if (qword_4E8AD8 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v6, qword_5398C8);
    sub_307518(v51, v36 + v49);
    aBlock[0] = v80;
    v52 = v84;
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_4056C0;
    v54 = v53 + v52;
    if (qword_4E8AE0 != -1)
    {
      swift_once();
    }

    v55 = __swift_project_value_buffer(v6, qword_5398E0);
    sub_307518(v55, v54);
    if (qword_4E8AE8 != -1)
    {
      swift_once();
    }

    v56 = __swift_project_value_buffer(v6, qword_5398F8);
    sub_307518(v56, v54 + v33);
    if (qword_4E8AF0 != -1)
    {
      swift_once();
    }

    v57 = __swift_project_value_buffer(v6, qword_539910);
    sub_307518(v57, v54 + v47);
    if (qword_4E8AF8 != -1)
    {
      swift_once();
    }

    v58 = __swift_project_value_buffer(v6, qword_539928);
    sub_307518(v58, v54 + v49);
    if (qword_4E8B00 != -1)
    {
      swift_once();
    }

    v59 = __swift_project_value_buffer(v6, qword_539940);
    sub_307518(v59, v54 + v81);
    if (qword_4E8B08 != -1)
    {
      swift_once();
    }

    v60 = __swift_project_value_buffer(v6, qword_539958);
    sub_307518(v60, v54 + 5 * v33);
    v61 = v54 + 6 * v33;
    if (qword_4E8B10 != -1)
    {
      swift_once();
    }

    v62 = __swift_project_value_buffer(v6, qword_539970);
    sub_307518(v62, v61);
    sub_4174C(v53);
    v63 = aBlock[0];
    v64 = *(aBlock[0] + 16);
    if (!v64)
    {
      break;
    }

    v65 = 0;
    v36 = aBlock[0] + v84;
    v66 = _swiftEmptyArrayStorage;
    while (v65 < *(v63 + 16))
    {
      sub_307518(v36, v15);
      if (*&v15[v6[7]] == 12)
      {
        sub_300FB0(v15, v50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_41D74(0, v66[2] + 1, 1);
          v66 = v89;
        }

        v69 = v66[2];
        v68 = v66[3];
        if (v69 >= v68 >> 1)
        {
          sub_41D74(v68 > 1, v69 + 1, 1);
          v66 = v89;
        }

        v66[2] = v69 + 1;
        v50 = v83;
        sub_300FB0(v83, v66 + v84 + v69 * v33);
      }

      else
      {
        sub_30757C(v15);
      }

      ++v65;
      v36 += v33;
      if (v64 == v65)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

  v66 = _swiftEmptyArrayStorage;
LABEL_40:

  if (v66[2])
  {
    v70 = v76;
    sub_307518(v66 + v84, v76);

    v86 = v6;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(aBlock);
    sub_300FB0(v70, boxed_opaque_existential_0Tm);
    v72 = v77;
    sub_3EC684();
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    sub_36174(0, &qword_5012E8);
    v27 = v75;
    sub_3EDDD4();

    (*(v78 + 8))(v72, v79);
    return v27;
  }

  __break(1u);
  return result;
}

void *UITab.tab(matching:)(unint64_t a1)
{
  v3 = UITab.navigationTab.getter();
  v4 = _s8ShelfKit13NavigationTabO2eeoiySbAC_ACtFZ_0(v3, a1);
  sub_29EB8(v3);
  if (v4)
  {
    goto LABEL_2;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = v1;
    v9 = [v7 children];
    sub_36174(0, &qword_4EA748);
    v10 = sub_3ED584();

    if (v10 >> 62)
    {
LABEL_32:
      v11 = sub_3EE5A4();
    }

    else
    {
      v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    }

    for (i = 0; v11 != i; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_3EE3F4();
      }

      else
      {
        if (i >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_31;
        }

        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v1 = UITab.tab(matching:)(a1);

      if (v1)
      {

        return v1;
      }
    }

    return 0;
  }

  if (a1 >= 0x13)
  {
    v22 = *(a1 + 16);
    v21 = *(a1 + 24);
    sub_29EA4(a1);

    v23 = [v1 identifier];
    v24 = sub_3ED244();
    v26 = v25;

    if (v22 == v24 && v21 == v26)
    {
      sub_29EB8(a1);

      goto LABEL_25;
    }

    v28 = sub_3EE804();
    sub_29EB8(a1);

    if (v28)
    {
      goto LABEL_2;
    }
  }

  v15 = [v1 identifier];
  v16 = sub_3ED244();
  v18 = v17;

  if (v16 == NavigationTab.stringValue.getter(a1) && v18 == v19)
  {

LABEL_25:

    goto LABEL_2;
  }

  v27 = sub_3EE804();

  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_2:
  v5 = v1;
  return v1;
}

uint64_t UITab.navigationTab.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501070);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for TabMenu.Item(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 userInfo])
  {
    sub_3EE204();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    v9 = swift_dynamicCast();
    (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_300FB0(v3, v8);
      v10 = *&v8[*(v4 + 28)];
      sub_29EA4(v10);
      sub_30757C(v8);
      return v10;
    }
  }

  else
  {
    sub_FCF8(v18, &unk_501090);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_FCF8(v3, &qword_501070);
  v12 = [v0 identifier];
  v13 = sub_3ED244();
  v15 = v14;

  return _s8ShelfKit13NavigationTabO11stringValueACSS_tcfC_0(v13, v15);
}

uint64_t TabMenu.Item.identifier.getter()
{
  v1 = sub_3E5FC4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for TabMenu.Item(0) + 28));
  v6 = 0x73776F6873;
  switch(v5)
  {
    case 1:
      return v6;
    case 2:
      v6 = 0x736C656E6E616863;
      break;
    case 3:
      v6 = 0x69726F6765746163;
      break;
    case 4:
      v6 = 0x64616F6C6E776F64;
      break;
    case 5:
      v6 = 0x7472616843706F74;
      break;
    case 6:
      v6 = 0x6F546E7265646F6DLL;
      break;
    case 7:
      v6 = 0x7972617262696CLL;
      break;
    case 8:
      v6 = 0x6E657473696CLL;
      break;
    case 9:
      v6 = 0x676F6C61746163;
      break;
    case 10:
      v6 = 0x7265666E69;
      break;
    case 11:
      v6 = 0x64657463656C6573;
      break;
    case 12:
      v6 = 0x686372616573;
      break;
    case 13:
      v6 = 0x676E6964616F6CLL;
      break;
    case 14:
      v6 = 0x79616C50696E696DLL;
      break;
    case 15:
      v6 = 0x6B72616D6B6F6F62;
      break;
    case 16:
      v6 = 0x704574736574616CLL;
      break;
    case 17:
      v6 = 0x796C746E65636572;
      break;
    case 18:
      v6 = 0xD000000000000014;
      break;
    default:
      if (v5)
      {
        v6 = *(v5 + 16);
      }

      else
      {
        sub_3E5FB4();
        v6 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
        (*(v2 + 8))(v4, v1);
      }

      break;
  }

  return v6;
}

id UITabGroup.init(tabItem:viewControllerProvider:displayInline:)(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v38 = a4;
  v7 = type metadata accessor for TabMenu.Item(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  if (a2)
  {
    sub_307518(a1, &v37 - v12);
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v40 = v15;
    sub_300FB0(v13, v15 + v14);
    v41 = sub_30AA98;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v16 = *(a1 + *(v7 + 52));
  v42 = a3;
  if (!v16)
  {
    v24 = a2;
LABEL_19:
    sub_7A6C8(v24);
    goto LABEL_20;
  }

  v17 = *(v16 + 16);
  if (!v17)
  {
    v24 = a2;
    goto LABEL_19;
  }

  v37 = a1;
  v43 = _swiftEmptyArrayStorage;
  sub_7A6C8(a2);
  sub_3EE4C4();
  v18 = v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v19 = *(v8 + 72);
  v39 = &v46;
  do
  {
    sub_307518(v18, v10);
    if (*&v10[*(v7 + 28)] == 12)
    {
      if (a2)
      {
        v48 = v41;
        v49 = v40;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_30A368;
        v47 = &block_descriptor_6;
        v22 = _Block_copy(&aBlock);
      }

      else
      {
        v22 = 0;
      }

      v23 = [objc_allocWithZone(UISearchTab) initWithViewControllerProvider:v22];
      _Block_release(v22);
      if ((sub_3E7414() & 1) == 0)
      {
        [v23 setHidden:1];
      }
    }

    else
    {
      sub_36174(0, &qword_4EA748);
      sub_307518(v10, v13);
      v20 = v42;
      sub_7A6C8(a2);
      v21 = sub_30A674(v13, a2, v20);
      sub_16AC0(a2);
      if (![v21 preferredPlacement])
      {
        [v21 setPreferredPlacement:1];
      }
    }

    sub_30757C(v10);
    sub_3EE494();
    sub_3EE4D4();
    sub_3EE4E4();
    sub_3EE4A4();
    v18 += v19;
    --v17;
  }

  while (v17);
  a1 = v37;
LABEL_20:
  v25 = sub_3ED204();
  v26 = sub_3E69A4();
  TabMenu.Item.identifier.getter();
  v27 = sub_3ED204();

  sub_36174(0, &qword_4EA748);
  v28.super.isa = sub_3ED574().super.isa;

  if (a2)
  {
    v48 = v41;
    v49 = v40;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_30A368;
    v47 = &block_descriptor_3_0;
    v29 = _Block_copy(&aBlock);
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v25 image:v26 identifier:v27 children:v28.super.isa viewControllerProvider:v29];
  _Block_release(v29);

  [v30 setAllowsReordering:0];
  if (v38)
  {
    [v30 setSidebarAppearance:1];
    [v30 setPreferredPlacement:6];
    v31 = v41;
    sub_30A190(a1, v41, v40, a2, v42);
    v32 = [v30 children];
    v33 = sub_3ED584();

    aBlock = v33;
    sub_3ED564();
    if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_3ED5A4();
    }

    sub_3ED604();
    isa = sub_3ED574().super.isa;

    [v30 setChildren:isa];
    sub_16AC0(v31);

    v35 = a2;
  }

  else
  {
    sub_16AC0(v41);
    v35 = a2;
  }

  sub_16AC0(v35);
  sub_30757C(a1);
  return v30;
}

id sub_30A190(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for TabMenu.Item(0);
  __chkstk_darwin(v10 - 8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v13 + 36)) == 12)
  {
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_30A368;
      aBlock[3] = &block_descriptor_12;
      v14 = _Block_copy(aBlock);
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_allocWithZone(UISearchTab) initWithViewControllerProvider:v14];
    _Block_release(v14);
    if ((sub_3E7414() & 1) == 0)
    {
      [v15 setHidden:1];
    }
  }

  else
  {
    sub_36174(0, &qword_4EA748);
    sub_307518(a1, v12);
    sub_7A6C8(a4);
    v15 = sub_30A674(v12, a4, a5);
    sub_16AC0(a4);
    if (![v15 preferredPlacement])
    {
      [v15 setPreferredPlacement:1];
    }
  }

  return v15;
}

id sub_30A368(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t UITab.tabMenuItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501070);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  if ([v1 userInfo])
  {
    sub_3EE204();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    v7 = type metadata accessor for TabMenu.Item(0);
    v8 = swift_dynamicCast();
    v9 = *(v7 - 8);
    v10 = *(v9 + 56);
    v10(v6, v8 ^ 1u, 1, v7);
    if ((*(v9 + 48))(v6, 1, v7) != 1)
    {
      sub_300FB0(v6, a1);
      return (v10)(a1, 0, 1, v7);
    }
  }

  else
  {
    sub_FCF8(v18, &unk_501090);
    v12 = type metadata accessor for TabMenu.Item(0);
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_FCF8(v6, &qword_501070);
  v13 = UITab.navigationTab.getter();
  if (v13 > 0x12)
  {
LABEL_14:
    sub_29EB8(v13);
    goto LABEL_10;
  }

  if (((1 << v13) & 0x7F7FE) == 0)
  {
    if (v13 == 11)
    {
      v15 = type metadata accessor for TabMenu.Item(0);
      return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    }

    goto LABEL_14;
  }

LABEL_10:
  v14 = UITab.navigationTab.getter();
  static TabMenu.item(for:interfaceMode:)(v14, 1, a1);
  return sub_29EB8(v14);
}

id sub_30A674(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_3EC6A4();
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TabMenu.Item(0);
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_307518(a1, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    sub_300FB0(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);

    v26 = sub_30ACC0;
  }

  else
  {
    v26 = 0;
    v14 = 0;
  }

  sub_7A6C8(a2);
  v15 = sub_3ED204();
  v16 = sub_3E69A4();
  TabMenu.Item.identifier.getter();
  v17 = sub_3ED204();

  if (a2)
  {
    v31 = v26;
    v32 = v14;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_30A368;
    v30 = &block_descriptor_15_1;
    a2 = _Block_copy(&aBlock);
  }

  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v15 image:v16 identifier:v17 viewControllerProvider:a2];
  _Block_release(a2);

  sub_307518(a1, v12);
  v19 = v18;
  [v19 setUserInfo:sub_3EE874()];
  swift_unknownObjectRelease();
  [v19 setHidden:(*(a1 + v9[9]) & 1) == 0];
  if (*(a1 + v9[11]))
  {
    v20 = 0;
  }

  else if (*(a1 + v9[12]))
  {
    v20 = 3;
  }

  else
  {
    v20 = 5;
  }

  [v19 setPreferredPlacement:{v20, v24, v25}];
  v21 = TabMenu.Item.accessibilityIdentifier.getter();
  v30 = &type metadata for String;
  aBlock = v21;
  v28 = v22;
  sub_3EC684();
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  sub_3EDDD4();

  sub_16AC0(v26);
  (*(v24 + 8))(v8, v25);
  sub_30757C(a1);
  return v19;
}

uint64_t sub_30AA1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for TabMenu.Item(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v10 = *(*(v1 - 8) + 64);

  v4 = v0 + v3;
  v5 = sub_3E6AE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v8 = *(v1 + 20);
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v4 + v8, v5);
  }

  if ((*(v4 + *(v1 + 28)) - 1) >= 0x12)
  {
  }

  return _swift_deallocObject(v0, v3 + v10, v2 | 7);
}

uint64_t TabMenuProvider.__allocating_init(asPartOf:userDefaults:interfaceMode:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = sub_30EC98(a1, a2, a3 & 1);

  return v3;
}

uint64_t sub_30ACFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_3E7274();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  (*(v5 + 104))(v8, enum case for TipGroup.downloads(_:), v4, v6);
  if (*(v9 + 16) && (v10 = sub_557FC(v8), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  result = (*(v5 + 8))(v8, v4);
  *a2 = v12;
  return result;
}

uint64_t sub_30AE24@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5014F0);
  sub_886BC(&qword_501508, &qword_5014F0);
  result = sub_3ED894();
  *a1 = result & 1;
  return result;
}

uint64_t TabMenuProvider.__allocating_init(userDefaults:libraryDataProvider:libraryObserverProvider:categoryObserverProvider:storageTipPublisher:interfaceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, char a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  sub_1D4F0(a4, v14 + 32);
  sub_1D4F0(a5, v14 + 72);
  *(v14 + 112) = a1;
  *(v14 + 120) = a7 & 1;
  *(v14 + 128) = a6;
  return v14;
}

uint64_t TabMenuProvider.init(userDefaults:libraryDataProvider:libraryObserverProvider:categoryObserverProvider:storageTipPublisher:interfaceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, char a7)
{
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_1D4F0(a4, v7 + 32);
  sub_1D4F0(a5, v7 + 72);
  *(v7 + 112) = a1;
  *(v7 + 120) = a7 & 1;
  *(v7 + 128) = a6;
  return v7;
}

uint64_t sub_30AFBC()
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5012F0);
  v31 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v21 - v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5012F8);
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  __chkstk_darwin(v1);
  v27 = &v21 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501300);
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  sub_30D530(v33);
  v25 = LOBYTE(v33[0]);
  v24 = v33[1];
  v33[0] = sub_30CE0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_500EE0);
  sub_886BC(&qword_4F9A28, &unk_500EE0);
  v10 = sub_3E9EF4();

  v32 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501308);
  sub_886BC(&qword_501310, &qword_501308);
  sub_3EA104();

  v33[0] = sub_30B588();
  v12 = v22;
  v11 = v23;
  (*(v22 + 16))(v6, v9, v23);
  sub_886BC(&qword_501318, &qword_501300);
  v13 = v26;
  sub_3E9B54();
  v14 = swift_allocObject();
  *(v14 + 16) = v25;
  *(v14 + 24) = v24;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_30F15C;
  *(v15 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501320);
  sub_886BC(&qword_501328, &qword_5012F0);
  v17 = v27;
  v16 = v28;
  sub_3EA024();

  (*(v31 + 8))(v13, v16);
  sub_886BC(&qword_501330, &qword_5012F8);
  v18 = v29;
  v19 = sub_3E9F94();
  (*(v30 + 8))(v17, v18);
  (*(v12 + 8))(v9, v11);
  return v19;
}

uint64_t sub_30B490(char *a1, uint64_t *a2, char a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = a2[1];
  if (v8)
  {
    v9 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5014D0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_3F5300;
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
    *(v10 + 48) = v6;
    *(v10 + 56) = v7;
    *(v10 + 64) = v9;
    *(v10 + 72) = v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5014D0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_3F5310;
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
    *(v10 + 48) = v6;
    *(v10 + 56) = v7;
  }

  return v10;
}

uint64_t sub_30B588()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v2 - 8);
  v42 = v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501338);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v36 = v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501340);
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  __chkstk_darwin(v7);
  v37 = v32 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501348);
  v48 = *(v45 - 8);
  __chkstk_darwin(v45);
  v40 = v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501350);
  v12 = *(v11 - 8);
  v46 = v11;
  v47 = v12;
  __chkstk_darwin(v11);
  v41 = v32 - v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501200);
  sub_30F1FC();
  v14 = sub_3EDA14();
  v35 = v14;

  v51 = v1[16];
  v52 = v14;
  v15 = v1[7];
  v16 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v15);
  v17 = *(v16 + 8);

  v34 = v17(v15, v16);
  v50 = v34;
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  v33 = sub_3E93E4();
  v49 = v33;
  v32[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501360);
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A10);
  sub_886BC(&qword_501368, &qword_501360);
  sub_886BC(&qword_4F5DC8, &qword_4F5DC0);
  sub_886BC(&qword_4F62B0, &qword_4F6A10);
  v18 = v36;
  sub_3E9FD4();

  sub_886BC(&qword_501370, &qword_501338);
  v20 = v37;
  v19 = v38;
  sub_3EA004();
  (*(v39 + 8))(v18, v19);
  sub_801B4();
  v21 = sub_3EDBC4();
  v52 = v21;
  v22 = sub_3EDB64();
  v23 = v42;
  (*(*(v22 - 8) + 56))(v42, 1, 1, v22);
  sub_886BC(&qword_501378, &qword_501340);
  sub_30F2B0(&qword_4F1D30, sub_801B4);
  v24 = v40;
  v25 = v43;
  sub_3EA114();
  sub_FCF8(v23, &qword_4F69E0);

  (*(v44 + 8))(v20, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_30F2F8;
  *(v26 + 24) = v1;
  sub_886BC(&qword_501380, &qword_501348);

  v27 = v41;
  v28 = v45;
  sub_3EA024();

  (*(v48 + 8))(v24, v28);
  sub_886BC(&qword_501388, &qword_501350);
  v29 = v46;
  v30 = sub_3E9F94();
  (*(v47 + 8))(v27, v29);
  return v30;
}

BOOL sub_30BCF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_114E40(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v8 = v4 == v7;
  if (v3 != v6)
  {
    v8 = 0;
  }

  return ((v2 ^ v5) & 1) == 0 && v8;
}

unint64_t sub_30BD6C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v68 = a2;
  v72 = a6;
  v10 = type metadata accessor for TabMenu.Item(0);
  v75 = *(v10 - 8);
  __chkstk_darwin(v10);
  v65 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v65 - v13;
  __chkstk_darwin(v14);
  v73 = &v65 - v15;
  __chkstk_darwin(v16);
  v18 = &v65 - v17;
  __chkstk_darwin(v19);
  v70 = &v65 - v20;
  __chkstk_darwin(v21);
  v71 = &v65 - v22;
  __chkstk_darwin(v23);
  v25 = &v65 - v24;
  __chkstk_darwin(v26);
  v28 = &v65 - v27;
  result = TabMenu.Group.items(for:)(*(a5 + 120), 1u);
  v30 = result;
  if (*(a1 + 16))
  {
    v31 = sub_30F4C4(a1);

    v30 = v31;
  }

  if (a3 > 0)
  {
    if (a4 > 0)
    {
      goto LABEL_71;
    }

    goto LABEL_39;
  }

  v66 = a4;
  v32 = v30[2];
  if (v32)
  {
    v74 = v10;
    v33 = 0;
    v67 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v34 = v30 + v67;
    while (1)
    {
      if (v33 >= v30[2])
      {
        __break(1u);
        goto LABEL_78;
      }

      v35 = *(v75 + 72);
      sub_307518(&v34[v35 * v33], v28);
      v36 = *&v28[*(v74 + 28)];
      result = sub_30F338(v28, type metadata accessor for TabMenu.Item);
      v37 = v33 + 1;
      if (v36 == 2)
      {
        break;
      }

      ++v33;
      if (v32 == v37)
      {
        v37 = v30[2];
        v33 = v37;
        v10 = v74;
        v38 = v66;
        goto LABEL_31;
      }
    }

    v39 = v30[2];
    v38 = v66;
    if (v39 - 1 == v33)
    {
      v10 = v74;
      goto LABEL_31;
    }

    v40 = v67 + v35 * v37;
    v10 = v74;
    while (v37 < v39)
    {
      sub_307518(v30 + v40, v25);
      v41 = *&v25[*(v10 + 28)];
      result = sub_30F338(v25, type metadata accessor for TabMenu.Item);
      if (v41 != 2)
      {
        if (v37 != v33)
        {
          if (v33 < 0)
          {
            goto LABEL_81;
          }

          v42 = v30[2];
          if (v33 >= v42)
          {
            goto LABEL_82;
          }

          result = sub_307518(v30 + v67 + v33 * v35, v71);
          if (v37 >= v42)
          {
            goto LABEL_83;
          }

          sub_307518(v30 + v40, v70);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_2A51FC(v30);
          }

          v10 = v74;
          result = sub_308354(v70, v30 + v67 + v33 * v35);
          if (v37 >= v30[2])
          {
            goto LABEL_84;
          }

          result = sub_308354(v71, v30 + v40);
          v38 = v66;
        }

        ++v33;
      }

      ++v37;
      v39 = v30[2];
      v40 += v35;
      if (v37 == v39)
      {
        if (v37 < v33)
        {
          goto LABEL_89;
        }

        if (v33 < 0)
        {
          goto LABEL_90;
        }

        goto LABEL_31;
      }
    }

    goto LABEL_79;
  }

  v37 = 0;
  v33 = 0;
  v38 = v66;
LABEL_31:
  if (__OFADD__(v37, v33 - v37))
  {
    goto LABEL_91;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v30;
  if (!isUniquelyReferenced_nonNull_native || v33 > v30[3] >> 1)
  {
    if (v37 <= v33)
    {
      v44 = v33;
    }

    else
    {
      v44 = v37;
    }

    v30 = sub_E0888(isUniquelyReferenced_nonNull_native, v44, 1, v30);
    v80 = v30;
  }

  result = sub_17CF3C(v33, v37, 0);
  if (v38 <= 0)
  {
LABEL_39:
    v45 = v30[2];
    if (v45)
    {
      v46 = 0;
      v47 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      while (v46 < v30[2])
      {
        v48 = *(v75 + 72);
        sub_307518(v30 + v47 + v48 * v46, v18);
        v49 = *&v18[*(v10 + 28)];
        result = sub_30F338(v18, type metadata accessor for TabMenu.Item);
        v50 = v46 + 1;
        if (v49 == 3)
        {
          v51 = v30[2];
          if (v51 - 1 == v46)
          {
            goto LABEL_63;
          }

          v52 = v47 + v48 * v50;
          v53 = v65;
          while (v50 < v51)
          {
            v54 = v73;
            sub_307518(v30 + v52, v73);
            v55 = *(v54 + *(v10 + 28));
            result = sub_30F338(v54, type metadata accessor for TabMenu.Item);
            if (v55 != 3)
            {
              if (v50 != v46)
              {
                if (v46 < 0)
                {
                  goto LABEL_85;
                }

                v56 = v10;
                v57 = v30[2];
                if (v46 >= v57)
                {
                  goto LABEL_86;
                }

                result = sub_307518(v30 + v47 + v46 * v48, v69);
                if (v50 >= v57)
                {
                  goto LABEL_87;
                }

                sub_307518(v30 + v52, v53);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v30 = sub_2A51FC(v30);
                }

                v10 = v56;
                result = sub_308354(v53, v30 + v47 + v46 * v48);
                if (v50 >= v30[2])
                {
                  goto LABEL_88;
                }

                result = sub_308354(v69, v30 + v52);
              }

              ++v46;
            }

            ++v50;
            v51 = v30[2];
            v52 += v48;
            if (v50 == v51)
            {
              if (v50 < v46)
              {
                goto LABEL_92;
              }

              if (v46 < 0)
              {
                goto LABEL_93;
              }

              goto LABEL_63;
            }
          }

          goto LABEL_80;
        }

        ++v46;
        if (v45 == v50)
        {
          v50 = v30[2];
          v46 = v50;
          goto LABEL_63;
        }
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      return result;
    }

    v50 = 0;
    v46 = 0;
LABEL_63:
    if (__OFADD__(v50, v46 - v50))
    {
      goto LABEL_94;
    }

    v58 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v30;
    if (!v58 || v46 > v30[3] >> 1)
    {
      if (v50 <= v46)
      {
        v59 = v46;
      }

      else
      {
        v59 = v50;
      }

      v30 = sub_E0888(v58, v59, 1, v30);
      v80 = v30;
    }

    sub_17CF3C(v46, v50, 0);
  }

LABEL_71:
  v60 = [objc_opt_self() currentTraitCollection];
  v61 = [v60 horizontalSizeClass];

  if (v61 == &dword_0 + 2)
  {
    v62 = sub_3EE804();

    v63 = 1;
    if (v62 & 1) == 0 && (v68)
    {
      v76 = 1;
      v77 = v30;
      sub_301AB8(&dword_4, v78);

      v63 = v78[0];
      v30 = v79;
    }
  }

  else
  {

    v63 = 1;
  }

  v64 = v72;
  *v72 = v63;
  *(v64 + 1) = v30;
  return result;
}

void *sub_30C4C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501070);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for TabMenu.Item(0);
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 112);
  v7 = sub_3ED204();
  v8 = [v6 arrayForKey:v7];

  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = sub_3ED584();

  v10 = sub_373E84(v9);

  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = v10[2];
  if (!v12)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_16:

    return v15;
  }

  v13 = 0;
  v14 = (v22 + 48);
  v15 = _swiftEmptyArrayStorage;
  v20 = v4;
  v21 = v0;
  while (v13 < v10[2])
  {
    v16 = *(v0 + 120);

    sub_30C79C(v17, v16, v3);
    if ((*v14)(v3, 1, v4) == 1)
    {
      result = sub_FCF8(v3, &qword_501070);
    }

    else
    {
      sub_300FB0(v3, v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_E0888(0, v15[2] + 1, 1, v15);
      }

      v19 = v15[2];
      v18 = v15[3];
      if (v19 >= v18 >> 1)
      {
        v15 = sub_E0888(v18 > 1, v19 + 1, 1, v15);
      }

      v15[2] = v19 + 1;
      result = sub_300FB0(v23, v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19);
      v4 = v20;
      v0 = v21;
    }

    if (v12 == ++v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_30C79C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501070);
  __chkstk_darwin(v6 - 8);
  v8 = &v41[-v7];
  v9 = type metadata accessor for TabMenu.Item(0);
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v41[-v14];
  __chkstk_darwin(v16);
  v18 = &v41[-v17];
  *&v41[*(v19 + 52) - v17] = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v20 = sub_552A8(1701869940, 0xE400000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_2F4AC(*(a1 + 56) + 32 * v20, v47);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v44 = v46;
  if (!*(a1 + 16) || (v43 = v45, v22 = sub_552A8(0x64656C62616E65, 0xE700000000000000), (v23 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_2F4AC(*(a1 + 56) + 32 * v22, v47);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 56))(a3, 1, 1, v9);
  }

  v42 = v45;
  v25 = v43;
  v24 = v44;
  if (v43 == 0x73776F6873 && v44 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    v26 = &dword_0 + 1;
  }

  else if (v25 == 0x736C656E6E616863 && v24 == 0xE800000000000000 || (sub_3EE804() & 1) != 0)
  {

    v26 = &dword_0 + 2;
  }

  else if (v25 == 0x69726F6765746163 && v24 == 0xEA00000000007365 || (sub_3EE804() & 1) != 0)
  {

    v26 = &dword_0 + 3;
  }

  else if (v25 == 0x6B72616D6B6F6F62 && v24 == 0xE900000000000073 || (sub_3EE804() & 1) != 0)
  {

    v26 = &dword_C + 3;
  }

  else if (v25 == 0x64616F6C6E776F64 && v44 == 0xEA00000000006465 || (sub_3EE804() & 1) != 0)
  {

    v26 = &dword_4;
  }

  else if (v43 == 0x796C746E65636572 && v44 == 0xED00006465646441 || (sub_3EE804() & 1) != 0)
  {

    v26 = &dword_10;
  }

  else
  {
    if (v43 == 0x796C746E65636572 && v44 == 0xEF64657461647055)
    {
    }

    else
    {
      v40 = sub_3EE804();

      if ((v40 & 1) == 0)
      {
        return (*(v10 + 56))(a3, 1, 1, v9);
      }
    }

    v26 = &dword_10 + 1;
  }

  static TabMenu.item(for:preferredInterfaceMode:)(v26, a2 & 1, v8);
  sub_29EB8(v26);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_FCF8(v8, &qword_501070);
    return (*(v10 + 56))(a3, 1, 1, v9);
  }

  v28 = sub_3E6AE4();
  (*(*(v28 - 8) + 16))(v12, v8, v28);
  v29 = v9[5];
  v30 = &v8[v9[6]];
  v31 = v30[1];
  v44 = *v30;
  v32 = *&v8[v9[7]];
  LODWORD(v43) = v8[v9[8]];
  sub_FBD0(&v8[v29], &v12[v29], &unk_501100);
  v33 = v8[v9[10]];
  v34 = v8[v9[11]];
  v35 = v9[13];
  v36 = v8[v9[12]];
  v37 = *&v8[v35];
  v38 = &v12[v9[6]];
  *v38 = v44;
  v38[1] = v31;
  *&v12[v9[7]] = v32;
  v39 = v42;
  v12[v9[8]] = v43;
  v12[v9[9]] = v39;
  v12[v9[10]] = v33;
  v12[v9[11]] = v34;
  v12[v9[12]] = v36;
  *&v12[v35] = v37;

  sub_29EA4(v32);

  sub_30F338(v8, type metadata accessor for TabMenu.Item);
  sub_300FB0(v12, v15);
  sub_300FB0(v15, v18);
  sub_307518(v18, a3);
  (*(v10 + 56))(a3, 0, 1, v9);
  return sub_30F338(v18, type metadata accessor for TabMenu.Item);
}

uint64_t sub_30CE0C()
{
  v1 = type metadata accessor for ObserverQueue();
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501390);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501398);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v18 = 7;
  (*(v12 + 208))(&v18, ObjectType, v12);
  swift_storeEnumTagMultiPayload();
  v14 = sub_1892F8(v3);

  sub_30F338(v3, type metadata accessor for ObserverQueue);
  v18 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6160);
  sub_886BC(&qword_4F6170, &qword_4F6160);
  sub_3EA004();

  sub_886BC(&qword_5013A0, &qword_501390);
  sub_3EA024();
  (*(v5 + 8))(v7, v4);
  sub_886BC(&qword_5013A8, &qword_501398);
  v15 = sub_3E9F94();
  (*(v9 + 8))(v11, v8);
  return v15;
}

void sub_30D184(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TabMenu.Item(0);
  v40 = *(v4 - 1);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = *a1;
  if (*a1 >> 62)
  {
    v36 = *a1;
    v37 = sub_3EE5A4();
    v10 = v36;
    v11 = v37;
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
  }

  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
LABEL_16:
    *a2 = 2;
    *(a2 + 8) = v12;
    return;
  }

  v13 = v10;
  v41 = _swiftEmptyArrayStorage;
  sub_41D74(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v39 = a2;
    v12 = v41;
    v14 = v13;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      do
      {
        v16 = v14;
        v17 = sub_3EE3F4();
        sub_3E6A74();
        v18 = *(v17 + 32);
        v19 = *(v17 + 40);
        v20 = v4[5];
        v21 = sub_3E6AE4();
        (*(*(v21 - 8) + 56))(&v9[v20], 1, 1, v21);
        v22 = v4[13];
        v23 = &v9[v4[6]];
        *v23 = v18;
        *(v23 + 1) = v19;
        *&v9[v4[7]] = v17;
        v9[v4[8]] = 1;
        v9[v4[9]] = 1;
        v9[v4[10]] = 0;
        v9[v4[11]] = 1;
        v9[v4[12]] = 1;
        *&v9[v22] = 0;
        v41 = v12;
        v25 = v12[2];
        v24 = v12[3];

        if (v25 >= v24 >> 1)
        {
          sub_41D74(v24 > 1, v25 + 1, 1);
          v12 = v41;
        }

        ++v15;
        v12[2] = v25 + 1;
        sub_300FB0(v9, v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v25);
        v14 = v16;
      }

      while (v11 != v15);
    }

    else
    {
      v26 = (v13 + 32);
      do
      {
        v27 = *v26;

        sub_3E6A74();
        v28 = *(v27 + 32);
        v29 = *(v27 + 40);
        v30 = v4[5];
        v31 = sub_3E6AE4();
        (*(*(v31 - 8) + 56))(&v6[v30], 1, 1, v31);
        v32 = v4[13];
        v33 = &v6[v4[6]];
        *v33 = v28;
        *(v33 + 1) = v29;
        *&v6[v4[7]] = v27;
        v6[v4[8]] = 1;
        v6[v4[9]] = 1;
        v6[v4[10]] = 0;
        v6[v4[11]] = 1;
        v6[v4[12]] = 1;
        *&v6[v32] = 0;
        v41 = v12;
        v35 = v12[2];
        v34 = v12[3];

        if (v35 >= v34 >> 1)
        {
          sub_41D74(v34 > 1, v35 + 1, 1);
          v12 = v41;
        }

        v12[2] = v35 + 1;
        sub_300FB0(v6, v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v35);
        ++v26;
        --v11;
      }

      while (v11);
    }

    a2 = v39;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_30D530@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA790);
  v4 = type metadata accessor for TabMenu.Item(0);
  v5 = *(*(v4 - 1) + 72);
  v6 = (*(*(v4 - 1) + 80) + 32) & ~*(*(v4 - 1) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_3F52F0;
  v8 = v7 + v6;
  if (v3)
  {
    if (qword_4E8AC0 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v4, qword_539880);
    sub_307518(v9, v8);
    v10 = v8 + v5;
    sub_3E6A44();
    v32._countAndFlagsBits = 0x4F485F454C544954;
    v32._object = 0xEA0000000000454DLL;
    v34._countAndFlagsBits = 1701670728;
    v34._object = 0xE400000000000000;
    v11 = sub_3E8614(v32, v34);
    v13 = v12;
    v14 = v4[5];
    sub_3E69B4();
    v15 = sub_3E6AE4();
    (*(*(v15 - 8) + 56))(v8 + v5 + v14, 0, 1, v15);
    v16 = v4[13];
    v17 = (v8 + v5 + v4[6]);
    *v17 = v11;
    v17[1] = v13;
    *(v10 + v4[7]) = 8;
    *(v10 + v4[8]) = 0;
    *(v10 + v4[9]) = 1;
    *(v10 + v4[10]) = 0;
    *(v10 + v4[11]) = 0;
    *(v10 + v4[12]) = 0;
    *(v10 + v16) = 0;
    if (qword_4E8AC8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v4, qword_539898);
    sub_307518(v18, v8 + 2 * v5);
    v19 = v8 + 3 * v5;
    if (qword_4E8AD8 != -1)
    {
      swift_once();
    }

    v20 = qword_5398C8;
  }

  else
  {
    sub_3E6A44();
    v33._countAndFlagsBits = 0x4F485F454C544954;
    v33._object = 0xEA0000000000454DLL;
    v35._countAndFlagsBits = 1701670728;
    v35._object = 0xE400000000000000;
    v21 = sub_3E8614(v33, v35);
    v23 = v22;
    v24 = v4[5];
    sub_3E69B4();
    v25 = sub_3E6AE4();
    (*(*(v25 - 8) + 56))(v8 + v24, 0, 1, v25);
    v26 = v4[13];
    v27 = (v8 + v4[6]);
    *v27 = v21;
    v27[1] = v23;
    *(v8 + v4[7]) = 8;
    *(v8 + v4[8]) = 0;
    *(v8 + v4[9]) = 1;
    *(v8 + v4[10]) = 0;
    *(v8 + v4[11]) = 0;
    *(v8 + v4[12]) = 0;
    *(v8 + v26) = 0;
    if (qword_4E8AC8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v4, qword_539898);
    sub_307518(v28, v8 + v5);
    if (qword_4E8AD8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v4, qword_5398C8);
    sub_307518(v29, v8 + 2 * v5);
    v19 = v8 + 3 * v5;
    if (qword_4E8AC0 != -1)
    {
      swift_once();
    }

    v20 = qword_539880;
  }

  v30 = __swift_project_value_buffer(v4, v20);
  result = sub_307518(v30, v19);
  *a1 = 0;
  *(a1 + 8) = v7;
  return result;
}

void sub_30D970(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5013B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v68 - v4;
  v6 = type metadata accessor for TabMenu.Item(0);
  v78 = *(v6 - 8);
  __chkstk_darwin(v6);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  __chkstk_darwin(v11);
  v13 = &v68 - v12;
  __chkstk_darwin(v14);
  v72 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5013B8);
  __chkstk_darwin(v16 - 8);
  v76 = &v68 - v17;

  v69 = v1;
  v18 = sub_30C4C4();
  v19 = v18;
  v20 = v18[2];
  v81 = v6;
  if (v20)
  {
    v21 = 0;
    v75 = v20;
    v22 = v72;
    v71 = v5;
    v70 = v13;
    v74 = v18;
    while (1)
    {
      if (v21 >= v20)
      {
        goto LABEL_111;
      }

      v23 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v24 = *(v78 + 72);
      v80 = v24 * v21;
      sub_307518(v19 + v23 + v24 * v21, v22);
      if (v21 == v75)
      {
        sub_30F338(v22, type metadata accessor for TabMenu.Item);
        goto LABEL_81;
      }

      v25 = v76;
      sub_300FB0(v22, v76);
      sub_300FB0(v25, v13);
      v26 = a1[2];
      if (v26)
      {
        v27 = 0;
        v28 = v13;
        v29 = *(v6 + 28);
        v30 = *&v28[v29];
        v73 = v23;
        v31 = a1 + v23;
        v77 = v30 - 1;
        while (2)
        {
          if (v27 >= a1[2])
          {
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            JUMPOUT(0x30E680);
          }

          sub_307518(v31, v10);
          v32 = *&v10[v29];
          switch(v32)
          {
            case 1uLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_0 + 1))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 2uLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_0 + 2))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 3uLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_0 + 3))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 4uLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == &dword_4)
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 5uLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_4 + 1))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 6uLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_4 + 2))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 7uLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_4 + 3))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 8uLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == &dword_8)
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 9uLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_8 + 1))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 0xAuLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_8 + 2))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 0xBuLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_8 + 3))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 0xCuLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == &dword_C)
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 0xDuLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_C + 1))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 0xEuLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_C + 2))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 0xFuLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_C + 3))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 0x10uLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == &dword_10)
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 0x11uLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_10 + 1))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            case 0x12uLL:
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v30 == (&dword_10 + 2))
              {
                goto LABEL_4;
              }

              goto LABEL_12;
            default:
              if (v77 < 0x12)
              {
                goto LABEL_11;
              }

              if (!v32)
              {
                if (!v30)
                {
                  sub_30F338(v10, type metadata accessor for TabMenu.Item);
LABEL_4:
                  v6 = v81;
                  v5 = v71;
                  v13 = v70;
                  v22 = v72;
                  v19 = v74;
                  goto LABEL_5;
                }

LABEL_11:
                sub_30F338(v10, type metadata accessor for TabMenu.Item);
                goto LABEL_12;
              }

              if (!v30)
              {
                goto LABEL_11;
              }

              v33 = v32[2] == *(v30 + 2) && v32[3] == *(v30 + 3);
              if (!v33 && (sub_3EE804() & 1) == 0)
              {
                goto LABEL_11;
              }

              v34 = v32[4] == *(v30 + 4) && v32[5] == *(v30 + 5);
              if (!v34 && (sub_3EE804() & 1) == 0 || *(v32 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) != *(v30 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount))
              {
                goto LABEL_11;
              }

              v68 = *(v32 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);
              v35 = *(v30 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount);
              sub_30F338(v10, type metadata accessor for TabMenu.Item);
              if (v68 == v35)
              {
                goto LABEL_4;
              }

LABEL_12:
              ++v27;
              v31 += v24;
              if (v26 != v27)
              {
                continue;
              }

              v26 = a1[2];
              v6 = v81;
              v5 = v71;
              v13 = v70;
              v22 = v72;
              v23 = v73;
              break;
          }

          break;
        }
      }

      if (v26 < v21)
      {
        goto LABEL_112;
      }

      sub_307518(v13, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v26 >= a1[3] >> 1)
      {
        a1 = sub_E0888(isUniquelyReferenced_nonNull_native, v26 + 1, 1, a1);
      }

      v19 = v74;
      v37 = a1 + v23 + v80;
      swift_arrayDestroy();
      v38 = a1[2];
      if ((v24 & 0x8000000000000000) == 0 && v24 < ((v38 - v21) * v24))
      {
        break;
      }

      swift_arrayInitWithTakeFrontToBack();
      ++a1[2];
      if (v24 > 0)
      {
        goto LABEL_77;
      }

LABEL_79:
      sub_FCF8(v5, &qword_5013B0);
LABEL_5:
      ++v21;
      sub_30F338(v13, type metadata accessor for TabMenu.Item);
      v20 = v19[2];
      if (v21 == v20)
      {
        goto LABEL_81;
      }
    }

    if (!v24)
    {
      a1[2] = v38 + 1;
      goto LABEL_79;
    }

    swift_arrayInitWithTakeBackToFront();
    ++a1[2];
LABEL_77:
    sub_307518(v5, v37);
    goto LABEL_79;
  }

LABEL_81:

  v39 = a1[2];
  if (v39)
  {
    v89 = _swiftEmptyArrayStorage;
    sub_41DB8(0, v39, 0);
    v40 = a1 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v41 = v89;
    v80 = *(v78 + 72);
    v42 = v79;
    do
    {
      sub_307518(v40, v42);
      v43 = 0;
      v44 = *(v42 + *(v6 + 28));
      if (v44 <= 3)
      {
        switch(v44)
        {
          case 1:
            v45 = 0xE500000000000000;
            v46 = 0x73776F6873;
            break;
          case 2:
            v45 = 0xE800000000000000;
            v46 = 0x736C656E6E616863;
            break;
          case 3:
            v45 = 0xEA00000000007365;
            v46 = 0x69726F6765746163;
            break;
          default:
            goto LABEL_104;
        }
      }

      else if (v44 > 15)
      {
        if (v44 == 16)
        {
          v46 = 0x796C746E65636572;
          v45 = 0xED00006465646441;
        }

        else
        {
          if (v44 != 17)
          {
            goto LABEL_104;
          }

          v46 = 0x796C746E65636572;
          v45 = 0xEF64657461647055;
        }
      }

      else if (v44 == 4)
      {
        v46 = 0x64616F6C6E776F64;
        v45 = 0xEA00000000006465;
      }

      else
      {
        if (v44 != 15)
        {
          goto LABEL_104;
        }

        v45 = 0xE900000000000073;
        v46 = 0x6B72616D6B6F6F62;
      }

      v85[0] = 1701869940;
      v85[1] = 0xE400000000000000;
      v85[2] = v46;
      v85[3] = v45;
      v85[5] = &type metadata for String;
      v86[0] = 0x64656C62616E65;
      v86[1] = 0xE700000000000000;
      v47 = *(v42 + *(v6 + 36));
      v88 = &type metadata for Bool;
      v87 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA1B8);
      v43 = sub_3EE5F4();

      sub_FBD0(v85, &v82, &qword_4EC480);
      v48 = v82;
      v49 = v83;
      v50 = sub_552A8(v82, v83);
      if (v51)
      {
        goto LABEL_109;
      }

      *(v43 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v50;
      v52 = (v43[6] + 16 * v50);
      *v52 = v48;
      v52[1] = v49;
      sub_1FB90(v84, (v43[7] + 32 * v50));
      v53 = v43[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_110;
      }

      v43[2] = v55;
      sub_FBD0(v86, &v82, &qword_4EC480);
      v56 = v82;
      v57 = v83;
      v58 = sub_552A8(v82, v83);
      if (v59)
      {
        goto LABEL_109;
      }

      *(v43 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v58;
      v60 = (v43[6] + 16 * v58);
      *v60 = v56;
      v60[1] = v57;
      sub_1FB90(v84, (v43[7] + 32 * v58));
      v61 = v43[2];
      v54 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v54)
      {
        goto LABEL_110;
      }

      v43[2] = v62;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC480);
      swift_arrayDestroy();
      v6 = v81;
      v42 = v79;
LABEL_104:
      sub_30F338(v42, type metadata accessor for TabMenu.Item);
      v89 = v41;
      v64 = v41[2];
      v63 = v41[3];
      if (v64 >= v63 >> 1)
      {
        sub_41DB8((v63 > 1), v64 + 1, 1);
        v42 = v79;
        v41 = v89;
      }

      v41[2] = v64 + 1;
      v41[v64 + 4] = v43;
      v40 += v80;
      --v39;
    }

    while (v39);
  }

  v65 = *(v69 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA778);
  isa = sub_3ED574().super.isa;

  v67 = sub_3ED204();
  [v65 setObject:isa forKey:v67];
}

uint64_t sub_30E6C8(int *a1)
{
  v3 = type metadata accessor for TabMenu.Item(0);
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v33 - v8;
  v10 = sub_30C4C4();
  v11 = v10[2];
  if (v11)
  {
    v33[1] = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_41D74(0, v11, 0);
    v12 = v39;
    v13 = *(v4 + 80);
    v33[0] = v10;
    v38 = (v13 + 32) & ~v13;
    v14 = v10 + v38;
    v37 = *(v4 + 72);
    v34 = a1 - 1;
    v35 = a1;
    while (2)
    {
      sub_307518(v14, v6);
      v15 = *&v6[v3[7]];
      switch(v15)
      {
        case 1uLL:
          if (a1 == (&dword_0 + 1))
          {
            goto LABEL_55;
          }

          goto LABEL_56;
        case 2uLL:
          if (a1 != (&dword_0 + 2))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 3uLL:
          if (a1 != (&dword_0 + 3))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 4uLL:
          if (a1 != &dword_4)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 5uLL:
          if (a1 != (&dword_4 + 1))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 6uLL:
          if (a1 != (&dword_4 + 2))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 7uLL:
          if (a1 != (&dword_4 + 3))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 8uLL:
          if (a1 != &dword_8)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 9uLL:
          if (a1 == (&dword_8 + 1))
          {
            goto LABEL_55;
          }

          goto LABEL_56;
        case 0xAuLL:
          if (a1 != (&dword_8 + 2))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 0xBuLL:
          if (a1 != (&dword_8 + 3))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 0xCuLL:
          if (a1 != &dword_C)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 0xDuLL:
          if (a1 != (&dword_C + 1))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 0xEuLL:
          if (a1 != (&dword_C + 2))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 0xFuLL:
          if (a1 != (&dword_C + 3))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 0x10uLL:
          if (a1 != &dword_10)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 0x11uLL:
          if (a1 != (&dword_10 + 1))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        case 0x12uLL:
          if (a1 != (&dword_10 + 2))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        default:
          if (v34 < 0x12)
          {
            goto LABEL_56;
          }

          if (v15)
          {
            if (!a1 || (v15[2] == *(a1 + 2) ? (v16 = v15[3] == *(a1 + 3)) : (v16 = 0), !v16 && (sub_3EE804() & 1) == 0 || (v15[4] == *(a1 + 4) ? (v17 = v15[5] == *(a1 + 5)) : (v17 = 0), !v17 && (sub_3EE804() & 1) == 0 || *(v15 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) != *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) || *(v15 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount) != *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount))))
            {
LABEL_56:
              sub_307518(v6, v9);
              goto LABEL_58;
            }
          }

          else if (a1)
          {
            goto LABEL_56;
          }

LABEL_55:
          if (v6[v3[9]])
          {
            goto LABEL_56;
          }

          v18 = sub_3E6AE4();
          (*(*(v18 - 8) + 16))(v9, v6, v18);
          v19 = v3[5];
          v20 = &v6[v3[6]];
          v22 = *v20;
          v21 = *(v20 + 1);
          v36 = v6[v3[8]];
          sub_FBD0(&v6[v19], &v9[v19], &unk_501100);
          v23 = v6[v3[10]];
          v24 = v6[v3[11]];
          v25 = v3[13];
          v26 = v6[v3[12]];
          v27 = *&v6[v25];
          v28 = &v9[v3[6]];
          *v28 = v22;
          *(v28 + 1) = v21;
          a1 = v35;
          *&v9[v3[7]] = v15;
          v9[v3[8]] = v36;
          v9[v3[9]] = 1;
          v9[v3[10]] = v23;
          v9[v3[11]] = v24;
          v9[v3[12]] = v26;
          *&v9[v25] = v27;

          sub_29EA4(v15);

LABEL_58:
          sub_30F338(v6, type metadata accessor for TabMenu.Item);
          v39 = v12;
          v30 = v12[2];
          v29 = v12[3];
          if (v30 >= v29 >> 1)
          {
            sub_41D74(v29 > 1, v30 + 1, 1);
            v12 = v39;
          }

          v12[2] = v30 + 1;
          v31 = v37;
          sub_300FB0(v9, v12 + v38 + v30 * v37);
          v14 += v31;
          if (--v11)
          {
            continue;
          }

          break;
      }

      break;
    }
  }

  else
  {

    v12 = _swiftEmptyArrayStorage;
  }

  sub_30D970(v12);
}

uint64_t TabMenuProvider.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);

  return v0;
}

uint64_t TabMenuProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t TabMenu.Item.libraryTypeKey.getter()
{
  v1 = type metadata accessor for TabMenu.Item(0);
  result = 0;
  v3 = *(v0 + *(v1 + 28)) - 1;
  if (v3 <= 0x10)
  {
    return *&aShows_5[8 * v3];
  }

  return result;
}

uint64_t sub_30EC98(uint64_t a1, uint64_t a2, int a3)
{
  v25 = a3;
  v24 = a2;
  v19 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5014D8);
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5014E0);
  v7 = *(v6 - 8);
  v22 = v6;
  *&v23 = v7;
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5014E8);
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v19 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1230);
  sub_3EC394();
  __swift_project_boxed_opaque_existential_1(&v27, v28);
  v26[0] = sub_3E6DB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5014F0);
  sub_886BC(&qword_4F8060, &qword_4F8058);
  sub_3EA024();

  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  v13 = v20;
  sub_3E9BF4();
  (*(v3 + 8))(v5, v13);
  sub_886BC(&qword_5014F8, &qword_5014E0);
  v14 = v22;
  sub_3EA174();
  (*(v23 + 8))(v9, v14);
  sub_886BC(&qword_501500, &qword_5014E8);
  v15 = v21;
  v16 = sub_3E9F94();
  (*(v10 + 8))(v12, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);
  sub_3EC394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB40);
  v23 = *&v26[5];
  sub_3EC394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB48);
  sub_3EC394();
  type metadata accessor for TabMenuProvider();
  v17 = swift_allocObject();
  *(v17 + 16) = v23;
  sub_1D4F0(&v27, v17 + 32);
  sub_1D4F0(v26, v17 + 72);
  *(v17 + 112) = v24;
  *(v17 + 120) = v25 & 1;
  *(v17 + 128) = v16;
  return v17;
}