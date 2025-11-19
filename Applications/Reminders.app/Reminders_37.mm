void sub_100406EE8()
{
  v1 = OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_tabStateByID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3 >= 2)
  {
    v39 = v1;
    v4 = sub_1003AC5C0(v3, 0);
    v5 = sub_1003B30DC(&v43, (v4 + 4), v3, v2);
    swift_bridgeObjectRetain_n();
    sub_10008BA48();
    if (v5 != v3)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v40 = v0;
    *&v43 = v4;
    sub_10040768C(&v43);

    v6 = v43;
    v7 = *(v43 + 16);
    if (v7)
    {
      v42 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      sub_100003540(0, &qword_10076BA60);
      v8 = (v6 + 40);
      do
      {
        v44 = *v8;
        v9 = *(v8 + 2);
        v10 = *(v8 + 3);
        v11 = *(v8 + 4);
        v43 = v44;
        v12 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = v44;
        *(v13 + 40) = v9;
        *(v13 + 48) = v10;
        *(v13 + 56) = v11;
        swift_bridgeObjectRetain_n();
        sub_100408AE8(&v43, v41);
        v14 = v11;
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = (v8 + 56);
        --v7;
      }

      while (v7);

      v15 = v42;
    }

    else
    {

      v15 = _swiftEmptyArrayStorage;
    }

    sub_1003E0B88(v15);

    v16 = objc_allocWithZone(UISegmentedControl);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v16 initWithItems:isa];

    v19 = v40;
    v20 = *(v40 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID + 8);
    if (!v20)
    {
      goto LABEL_16;
    }

    v21 = *(v40 + v39);
    if (*(v21 + 16))
    {
      v22 = *(v40 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID);

      v23 = sub_100009044(v22, v20);
      v25 = v24;

      if (v25)
      {
        v26 = (*(v21 + 56) + 56 * v23);
        v27 = *v26;
        v28 = v26[1];
        v30 = v26[2];
        v29 = v26[3];
        v32 = v26[4];
        v31 = v26[5];

        v33 = v31;

        if (v30)
        {
          sub_10016B1B8(v27, v28, v30, v29, v32, v31);
          [v18 setSelectedSegmentIndex:v27];
          v19 = v40;
LABEL_16:
          v38 = *(v19 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_segmentedControl);
          *(v19 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_segmentedControl) = v18;

          return;
        }

        v34 = v28;
        v35 = v29;
        v36 = v32;
        v37 = v31;
        v19 = v40;
LABEL_15:
        sub_10016B1B8(v27, v34, 0, v35, v36, v37);
        goto LABEL_16;
      }
    }

    v27 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_15;
  }
}

void sub_100407310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID];
  v7 = *&v2[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID + 8];
  if (!v7 || (*v6 == a1 ? (v8 = v7 == a2) : (v8 = 0), !v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    v9 = OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_tabStateByID;
    swift_beginAccess();
    v10 = *&v3[v9];
    if (*(v10 + 16))
    {

      v11 = sub_100009044(a1, a2);
      if (v12)
      {
        v13 = *(v10 + 56) + 56 * v11;
        v14 = *(v13 + 40);
        v15 = *(v13 + 48);

        v31 = v14;

        v16 = v6[1];
        if (v16)
        {
          v17 = *v6;

          v30 = sub_100406E88();
          v19 = sub_100167284(v32, v17, v16);
          if (*(v18 + 16))
          {
            v20 = v18;
            v29 = v19;
            v21 = [v3 viewControllers];
            sub_100003540(0, &qword_10076AD28);
            v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            *(v20 + 48) = v22;

            v29(v32, 0);
          }

          else
          {
            (v19)(v32, 0);
          }

          (v30)(v33, 0);
        }

        *v6 = a1;
        v6[1] = a2;

        if (!v15)
        {
          sub_100058000(&qword_10076B780);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_10062D420;
          *(v23 + 32) = v31;
          v24 = v31;
        }

        v25 = sub_100406E88();
        v27 = sub_100167284(v32, a1, a2);
        if (*(v26 + 16))
        {
          *(v26 + 48) = 0;
        }

        (v27)(v32, 0);
        (v25)(v33, 0);
        sub_100003540(0, &qword_10076AD28);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v3 setViewControllers:isa animated:0];
      }

      else
      {
      }
    }
  }
}

Swift::Int sub_10040768C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000EF320(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 80;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[56 * i + 32];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 6))
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 3);
          v16 = *(v13 + 4);
          result = *(v13 + 7);
          v17 = *(v13 - 2);
          *(v13 + 8) = *(v13 - 3);
          v18 = *(v13 + 40);
          *(v13 + 24) = v17;
          *(v13 + 40) = *(v13 - 1);
          *(v13 + 7) = *v13;
          *(v13 - 6) = v11;
          *(v13 - 5) = v14;
          *(v13 - 4) = v15;
          *(v13 - 3) = v16;
          *(v13 - 1) = v18;
          *v13 = result;
          v13 -= 56;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 56;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v20[0] = v7 + 4;
    v20[1] = v6;
    sub_10040815C(v20, v21, v22, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100407804@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_100407900()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for TTRISegmentedNavigationController();
  objc_msgSendSuper2(&v24, "viewDidLayoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_segmentedControl];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 layoutMargins];
      v7 = v6;
      v9 = v8;

      v10 = [v1 navigationBar];
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v25.origin.x = v12;
      v25.origin.y = v14;
      v25.size.width = v16;
      v25.size.height = v18;
      v19 = CGRectGetWidth(v25) - v7 - v9;
      v20 = [v1 traitCollection];
      v21 = [v20 horizontalSizeClass];

      if (v21 != 2 || v19 <= 366.0)
      {
        goto LABEL_7;
      }

      [v3 sizeThatFits:{v19, 0.0}];
      if (v19 >= 366.0)
      {
        sub_100408A88();
        Comparable.clamped(to:)();
LABEL_7:
        v22 = v3;
        [v22 bounds];
        CGRectGetHeight(v26);
        v23 = [v1 traitCollection];
        [v23 displayScale];

        UIRectRoundToScale();
        [v22 setFrame:?];

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_100407B94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100407310(*a3, a3[1]);
  }
}

id sub_100407BF0(char *a1, void *a2)
{
  result = [a1 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    Width = CGRectGetWidth(v20);
    [a2 sizeThatFits:{0.0, 0.0}];
    v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, Width, v15 + 12.0}];
    [v16 addSubview:a2];
    v17 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v16];

    v18 = *&a1[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_palette];
    *&a1[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_palette] = v17;
    v19 = v17;

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100407DB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRISegmentedNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t destroy for TTRISegmentedNavigationController.TabState(uint64_t a1)
{
}

uint64_t initializeWithCopy for TTRISegmentedNavigationController.TabState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);

  v5 = v4;

  return a1;
}

void *assignWithCopy for TTRISegmentedNavigationController.TabState(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];

  v4 = a2[5];
  v5 = a1[5];
  a1[5] = v4;
  v6 = v4;

  a1[6] = a2[6];

  return a1;
}

uint64_t assignWithTake for TTRISegmentedNavigationController.TabState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRISegmentedNavigationController.TabState(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRISegmentedNavigationController.TabState(uint64_t result, int a2, int a3)
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

uint64_t sub_10040815C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v105 = *v104;
    if (!*v104)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1000ED7BC(v8);
      v8 = result;
    }

    v96 = v8 + 2;
    v97 = v8[2];
    if (v97 >= 2)
    {
      while (*a3)
      {
        v98 = &v8[2 * v97];
        v99 = *v98;
        v100 = &v96[2 * v97];
        v101 = v100[1];
        sub_100408754((*a3 + 56 * *v98), (*a3 + 56 * *v100), *a3 + 56 * v101, v105);
        if (v5)
        {
        }

        if (v101 < v99)
        {
          goto LABEL_114;
        }

        if (v97 - 2 >= *v96)
        {
          goto LABEL_115;
        }

        *v98 = v99;
        v98[1] = v101;
        v102 = *v96 - v97;
        if (*v96 < v97)
        {
          goto LABEL_116;
        }

        v97 = *v96 - 1;
        result = memmove(v100, v100 + 2, 16 * v102);
        *v96 = v97;
        if (v97 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v103 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 56 * v7);
      v11 = 56 * v9;
      v12 = (*a3 + 56 * v9);
      v15 = *v12;
      v14 = v12 + 14;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 7;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 56 * v7 - 56;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v33 + v11);
            v24 = (v33 + v20);
            v25 = *(v23 + 2);
            v26 = *(v23 + 3);
            v27 = *(v23 + 6);
            v28 = *v23;
            v29 = v23[2];
            v31 = v24[1];
            v30 = v24[2];
            v32 = *v24;
            *(v23 + 6) = *(v24 + 6);
            v23[1] = v31;
            v23[2] = v30;
            *v23 = v32;
            *v24 = v28;
            *(v24 + 2) = v25;
            *(v24 + 3) = v26;
            v24[2] = v29;
            *(v24 + 6) = v27;
          }

          ++v22;
          v20 -= 56;
          v11 += 56;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100546DD8(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v49 = v8[2];
    v48 = v8[3];
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_100546DD8((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v50;
    v51 = v8 + 4;
    v52 = &v8[2 * v49 + 4];
    *v52 = v9;
    v52[1] = v7;
    v105 = *v104;
    if (!*v104)
    {
      goto LABEL_127;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = v8[4];
          v55 = v8[5];
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_57:
          if (v57)
          {
            goto LABEL_104;
          }

          v70 = &v8[2 * v50];
          v72 = *v70;
          v71 = v70[1];
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_106;
          }

          v76 = &v51[2 * v53];
          v78 = *v76;
          v77 = v76[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_111;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v50 < 2)
        {
          goto LABEL_112;
        }

        v80 = &v8[2 * v50];
        v82 = *v80;
        v81 = v80[1];
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_72:
        if (v75)
        {
          goto LABEL_108;
        }

        v83 = &v51[2 * v53];
        v85 = *v83;
        v84 = v83[1];
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_110;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v91 = &v51[2 * v53 - 2];
        v92 = *v91;
        v93 = &v51[2 * v53];
        v94 = v93[1];
        sub_100408754((*a3 + 56 * *v91), (*a3 + 56 * *v93), *a3 + 56 * v94, v105);
        if (v5)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_99;
        }

        if (v53 > v8[2])
        {
          goto LABEL_100;
        }

        *v91 = v92;
        v91[1] = v94;
        v95 = v8[2];
        if (v53 >= v95)
        {
          goto LABEL_101;
        }

        v50 = v95 - 1;
        result = memmove(&v51[2 * v53], v93 + 2, 16 * (v95 - 1 - v53));
        v8[2] = v95 - 1;
        if (v95 <= 2)
        {
          goto LABEL_3;
        }
      }

      v58 = &v51[2 * v50];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_102;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_103;
      }

      v65 = &v8[2 * v50];
      v67 = *v65;
      v66 = v65[1];
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_105;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_107;
      }

      if (v69 >= v61)
      {
        v87 = &v51[2 * v53];
        v89 = *v87;
        v88 = v87[1];
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_113;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v103;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v34 = *a3;
  v35 = *a3 + 56 * v7 - 56;
  v36 = v9 - v7;
LABEL_30:
  v37 = *(v34 + 56 * v7);
  v38 = v36;
  v39 = v35;
  while (1)
  {
    v40 = v39 + 56;
    if (v37 >= *v39)
    {
LABEL_29:
      ++v7;
      v35 += 56;
      --v36;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v34)
    {
      break;
    }

    v41 = *(v39 + 64);
    v42 = *(v39 + 80);
    v43 = *(v39 + 104);
    v44 = *(v39 + 88);
    v45 = *(v39 + 16);
    *v40 = *v39;
    *(v39 + 72) = v45;
    *(v39 + 88) = *(v39 + 32);
    v46 = *(v39 + 48);
    *v39 = v37;
    *(v39 + 8) = v41;
    *(v39 + 24) = v42;
    *(v39 + 32) = v44;
    *(v39 + 48) = v43;
    v39 -= 56;
    *(v40 + 48) = v46;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_100408754(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 56;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 56;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 56;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v17 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v16;
    *(v7 + 2) = v17;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[56 * v11] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v12 = &v4[56 * v11];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 56;
    v5 -= 56;
    v19 = v12;
    do
    {
      v20 = (v5 + 56);
      v21 = *(v19 - 56);
      v19 -= 56;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v25 = *v18;
          v26 = *(v6 - 40);
          v27 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v26;
          *(v5 + 32) = v27;
          *v5 = v25;
        }

        if (v12 <= v4 || (v6 -= 56, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v12)
      {
        v22 = *v19;
        v23 = *(v19 + 16);
        v24 = *(v19 + 32);
        *(v5 + 48) = *(v19 + 48);
        *(v5 + 16) = v23;
        *(v5 + 32) = v24;
        *v5 = v22;
      }

      v5 -= 56;
      v12 = v19;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_31:
  v28 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v29 = (v28 >> 4) + (v28 >> 63);
  if (v6 != v4 || v6 >= &v4[56 * v29])
  {
    memmove(v6, v4, 56 * v29);
  }

  return 1;
}

void sub_1004089B8(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_segmentedControl];
  if (v2)
  {
    v4 = *&v1[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_palette];
    if (v4)
    {
      v5 = v2;
      v6 = v4;
    }

    else
    {
      v6 = sub_100407BF0(v1, v2);
    }

    v7 = v4;
    v8 = [a1 navigationItem];
    [v8 _setBottomPalette:v6];
  }
}

unint64_t sub_100408A88()
{
  result = qword_1007825A8;
  if (!qword_1007825A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007825A8);
  }

  return result;
}

void destroy for TTRISegmentedNavigationTab(uint64_t a1)
{

  v2 = *(a1 + 32);
}

void *initializeWithCopy for TTRISegmentedNavigationTab(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[4];
  a1[4] = v5;

  v6 = v5;
  return a1;
}

void *assignWithCopy for TTRISegmentedNavigationTab(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for TTRISegmentedNavigationTab(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRISegmentedNavigationTab(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for TTRISegmentedNavigationTab(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100408D64(unint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(v2 + 32) == 1)
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return;
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = *(*v2 + 16);
  if (v5 == v6)
  {
    goto LABEL_9;
  }

  if (v5 >= v6)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v2[1] = v5 + 1;
    sub_10000B0D8(v4 + 40 * v5 + 32, v12);
    a1 = v2[2];
    if (!(a1 >> 62))
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  v11 = a1;
  v7 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v11;
LABEL_7:
  v8 = v2[3];
  if (v8 == v7)
  {
    sub_100004758(v12);
    a2 = v3;
LABEL_9:
    *(v2 + 32) = 1;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      __break(1u);
      return;
    }

    v9 = *(a1 + 8 * v8 + 32);
  }

  v10 = v9;
  if (__OFADD__(v8, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v2[3] = v8 + 1;
  sub_100005FD0(v12, v3);
  *(v3 + 40) = v10;
}

void *sub_100408EA4(unint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t, uint64_t), uint64_t ObjectType, void (*a5)(id *, void *), uint64_t a6)
{
  v7 = v6;
  v68 = a5;
  v69 = a6;
  v12 = sub_100058000(&unk_1007818F0);
  v66 = *(v12 - 8);
  v67 = v12;
  __chkstk_darwin(v12);
  v77 = &v54 - v13;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v70 = *(v14 - 8);
  __chkstk_darwin(v14);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v15;
  __chkstk_darwin(v16);
  v78 = &v54 - v17;
  v18 = sub_100113C88(a1, a2);
  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v20 = v18;
    v81 = a3;
    if (qword_100766F20 != -1)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v21 = type metadata accessor for Logger();
      sub_100003E30(v21, qword_10076C5F0);
      v22 = v20;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();

      v25 = os_log_type_enabled(v23, v24);
      v71 = v22;
      if (v25)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = [v71 objectID];
        *(v26 + 4) = v28;
        *v27 = v28;
        _os_log_impl(&_mh_execute_header, v23, v24, "performDrop: accepting drop {targetListID: %@}", v26, 0xCu);
        sub_1000079B4(v27, &unk_10076DF80);
        v22 = v71;
      }

      v20 = ObjectType;
      v29 = (v81)(v22);
      v30 = v29;
      if (v29 >> 62)
      {
        if (v29 < 0)
        {
          v20 = v29;
        }

        else
        {
          v20 = (v29 & 0xFFFFFFFFFFFFFF8);
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_33:

          goto LABEL_34;
        }

        v31 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v31)
        {
          goto LABEL_33;
        }
      }

      v32 = sub_100113DD0(a1, a2, v31, v7);
      if (!v32)
      {
        goto LABEL_33;
      }

      v33 = v32;
      v83 = v19;
      v63 = v32[2];
      if (!v63)
      {
        break;
      }

      a1 = 0;
      v61 = v32 + 4;
      v60 = v30 & 0xC000000000000001;
      v55 = v30 & 0xFFFFFFFFFFFFFF8;
      v81 = (v70 + 16);
      v57 = v70 + 32;
      v56 = (v70 + 8);
      v62 = v14;
      a2 = v78;
      v59 = v32;
      v58 = v30;
      while (a1 < v33[2])
      {
        v80 = *&v61[2 * a1];
        v7 = v80;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = v7;
        dispatch thunk of TTRRemindersListEditingSession.item.getter();
        if (v60)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 >= *(v55 + 16))
          {
            goto LABEL_26;
          }

          v34 = *(v30 + 8 * a1 + 32);
        }

        v35 = v34;
        v82 = v34;
        v36 = *(v67 + 48);
        v37 = v77;
        *v77 = v34;
        v38 = *v81;
        (*v81)(&v37[v36], a2, v14);
        v74 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100547474(0, v19[2] + 1, 1, v19);
        }

        v40 = v19[2];
        v39 = v19[3];
        v75 = a1;
        v79 = v7;
        if (v40 >= v39 >> 1)
        {
          v19 = sub_100547474(v39 > 1, v40 + 1, 1, v19);
        }

        v19[2] = v40 + 1;
        v41 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v76 = v19;
        sub_100016588(v77, v19 + v41 + *(v66 + 72) * v40, &unk_1007818F0);
        v68(&v82, v22);
        v42 = zalgoIfMain.getter();
        v7 = v64;
        v43 = v62;
        v38(v64, a2, v62);
        v44 = v70;
        v45 = (*(v70 + 80) + 16) & ~*(v70 + 80);
        v73 = v45 + v65;
        v46 = (v45 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
        v47 = swift_allocObject();
        v72 = v38;
        v48 = v47;
        v49 = *(v44 + 32);
        v49(v47 + v45, v7, v43);
        *(v48 + v46) = v80;
        type metadata accessor for TTRRemindersListImportedContent();
        swift_unknownObjectRetain();
        dispatch thunk of Promise.then<A>(on:closure:)();

        v72(v7, v78, v43);
        v14 = v43;
        ObjectType = swift_allocObject();
        v49(ObjectType + v45, v7, v43);
        v50 = zalgo.getter();
        dispatch thunk of Promise.error(on:closure:)();

        Promise.errorAsNil()();

        v20 = &v83;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v62;
        }

        a1 = v75 + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        swift_unknownObjectRelease();

        a2 = v78;
        (*v56)(v78, v14);
        v19 = v76;
        v22 = v71;
        v33 = v59;
        v30 = v58;
        if (v63 == a1)
        {
          v51 = v83;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      swift_once();
    }

    v51 = v19;
LABEL_24:

    sub_100058000(&qword_100782800);
    v82 = v51;
    sub_100058000(&qword_100782808);
    sub_10000E188(&qword_100782810, &qword_100782808);
    static Promise.all<A>(_:)();

    v52 = zalgoIfMain.getter();
    *(swift_allocObject() + 16) = v33;
    dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_34:
  }

  return v19;
}

uint64_t sub_100409748(uint64_t a1, void (*a2)(uint64_t *, uint64_t, double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v20 = a1;
  a2(&v20, a4, v12);
  (*(v10 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v15 = zalgo.getter();
  type metadata accessor for TTRRemindersListImportedContent();
  dispatch thunk of Promise.then<A>(on:closure:)();

  v16 = zalgo.getter();
  dispatch thunk of Promise.error(on:closure:)();

  v17 = Promise.errorAsNil()();

  return v17;
}

void sub_100409944(uint64_t a1, uint64_t a2, uint64_t (*a3)(id), uint64_t a4, void (*a5)(id *, id), uint64_t a6)
{
  v7 = v6;
  v119 = a5;
  v120 = a6;
  v115 = a4;
  v116 = a3;
  v10 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v109 = *(v10 - 8);
  v110 = v10;
  __chkstk_darwin(v10);
  v108 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v112 = type metadata accessor for TTRRemindersListBatchReminderCreationParams();
  v107 = *(v112 - 8);
  __chkstk_darwin(v112);
  v106 = (&v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100058000(&qword_10076C6F0);
  __chkstk_darwin(v13 - 8);
  v111 = &v100 - v14;
  v15 = type metadata accessor for TTRRemindersListTargetContainer();
  v114 = *(v15 - 8);
  __chkstk_darwin(v15);
  v122 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v17 - 8);
  v19 = (&v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v113 = &v100 - v21;
  v22 = sub_100058000(&qword_10076C700);
  __chkstk_darwin(v22 - 8);
  v24 = &v100 - v23;
  v121 = sub_100058000(&unk_100775620);
  v123 = *(v121 - 8);
  __chkstk_darwin(v121);
  v105 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v124 = &v100 - v27;
  v28 = sub_100058000(&qword_10076E910);
  __chkstk_darwin(v28 - 8);
  v30 = &v100 - v29;
  v31 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  v127 = *(v31 - 8);
  __chkstk_darwin(v31);
  v117 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v32;
  __chkstk_darwin(v33);
  v125 = &v100 - v34;
  v35 = sub_10011667C(a1, a2);
  if (!v35)
  {
    return;
  }

  v126 = v35;
  v104 = v15;
  v36 = v6[2];
  v37 = v7[3];
  ObjectType = swift_getObjectType();
  v39 = *(v37 + 512);
  v102 = ObjectType;
  v103 = v36;
  v39(&v135, a1, a2);
  if (!v137)
  {

    sub_1000079B4(&v135, &qword_10076C6C8);
    return;
  }

  sub_100005FD0(&v135, v150);
  v40 = v151;
  v41 = v152;
  sub_10000C36C(v150, v151);
  (*(v41 + 32))(v40, v41);
  if ((*(v127 + 48))(v30, 1, v31) == 1)
  {

    v42 = &qword_10076E910;
    v43 = v30;
LABEL_13:
    sub_1000079B4(v43, v42);
LABEL_14:
    sub_100004758(v150);
    return;
  }

  v44 = v30;
  v45 = v125;
  sub_10040FBF8(v44, v125);
  v46 = v151;
  v47 = v152;
  sub_10000C36C(v150, v151);
  (*(v47 + 24))(v46, v47);
  v48 = v123;
  v49 = v121;
  if ((*(v123 + 48))(v24, 1, v121) == 1)
  {
    sub_10040FDB4(v45, type metadata accessor for TTRRemindersListMatchedAttributeValue);

    v42 = &qword_10076C700;
LABEL_12:
    v43 = v24;
    goto LABEL_13;
  }

  (*(v48 + 32))(v124, v24, v49);
  v50 = v116(v126);
  v51 = v50;
  v52 = v50 >> 62;
  if (!(v50 >> 62))
  {
    v53 = v122;
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_33:

    (*(v123 + 8))(v124, v49);
    sub_10040FDB4(v125, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    goto LABEL_14;
  }

  v78 = _CocoaArrayWrapper.endIndex.getter();
  v53 = v122;
  if (!v78)
  {
    goto LABEL_33;
  }

LABEL_10:
  v100 = v52;
  v101 = v51;
  v54 = v151;
  v55 = v152;
  sub_10000C36C(v150, v151);
  v56 = *(v55 + 16);
  v57 = v55;
  v58 = v113;
  v56(v54, v57);
  sub_100117584(v58, v19, type metadata accessor for TTRRemindersListReminderActionTarget);
  v24 = v111;
  sub_10057DDC0(v19, v111);
  v59 = v114;
  v60 = v104;
  if ((*(v114 + 48))(v24, 1, v104) == 1)
  {

    sub_10040FDB4(v58, type metadata accessor for TTRRemindersListReminderActionTarget);
    (*(v123 + 8))(v124, v121);
    sub_10040FDB4(v125, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    v42 = &qword_10076C6F0;
    goto LABEL_12;
  }

  (*(v59 + 32))(v53, v24, v60);
  v61 = v7[4];
  v115 = v7[5];
  v116 = v61;
  v62 = v121;
  if (v100)
  {
    v63 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v63 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_getObjectType();
  v64 = v106;
  v65 = v107;
  *v106 = v63;
  (*(v65 + 104))(v64, enum case for TTRRemindersListBatchReminderCreationParams.count(_:), v112);
  (*(v123 + 16))(v105, v124, v62);
  v66 = v108;
  TTRRemindersListReminderInsertionPosition.init(relativePosition:)();
  (*(v37 + 408))(v102, v37);
  dispatch thunk of TTRRemindersListInteractorType.newReminderChangeItems(params:targetContainer:position:remindersBeingSaved:)();

  (*(v109 + 8))(v66, v110);
  (*(v65 + 8))(v64, v112);
  if (!v137)
  {

    (*(v114 + 8))(v53, v104);
    sub_10040FDB4(v113, type metadata accessor for TTRRemindersListReminderActionTarget);
    (*(v123 + 8))(v124, v62);
    sub_10040FDB4(v125, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    v42 = &qword_10076C710;
    v43 = &v135;
    goto LABEL_13;
  }

  sub_100005FD0(&v135, v148);
  sub_10000C36C(v148, v149);
  v67 = dispatch thunk of TTRRemindersListChangeItemGroup.reminderChangeItems.getter();
  v68 = v67;
  if (v67 >> 62)
  {
    v69 = _CocoaArrayWrapper.endIndex.getter();
    if (v69)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v69 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v69)
    {
LABEL_22:
      v139 = _swiftEmptyArrayStorage;
      sub_1004A1EBC(0, v69 & ~(v69 >> 63), 0);
      if (v69 < 0)
      {
        goto LABEL_57;
      }

      v70 = 0;
      v71 = v139;
      v112 = xmmword_10062D420;
      do
      {
        if ((v68 & 0xC000000000000001) != 0)
        {
          v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v72 = *(v68 + 8 * v70 + 32);
        }

        v73 = v72;
        sub_100058000(&qword_10076B780);
        v74 = swift_allocObject();
        *(v74 + 16) = v112;
        *(v74 + 32) = v73;
        v75 = v73;
        dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)();

        v139 = v71;
        v77 = v71[2];
        v76 = v71[3];
        if (v77 >= v76 >> 1)
        {
          sub_1004A1EBC((v76 > 1), v77 + 1, 1);
          v71 = v139;
        }

        ++v70;
        v71[2] = v77 + 1;
        sub_100005FD0(&v135, &v71[5 * v77 + 4]);
      }

      while (v69 != v70);

      v53 = v122;
      goto LABEL_36;
    }
  }

  v71 = _swiftEmptyArrayStorage;
LABEL_36:
  v147 = _swiftEmptyArrayStorage;
  sub_10000C36C(v148, v149);
  v79 = dispatch thunk of TTRRemindersListChangeItemGroup.reminderChangeItems.getter();
  v80 = v101;
  v139 = v101;
  v141 = v71;
  v142 = 0;
  v143 = v79;
  v144 = 0;
  v145 = 0;
  v81 = v125;
  if (v100)
  {
    v82 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v82 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = v124;
  if (!v82)
  {
    v85 = _swiftEmptyArrayStorage;
LABEL_54:
    v146 = 1;

    sub_100058000(&qword_100782800);
    v135 = v85;
    sub_100058000(&qword_100782808);
    sub_10000E188(&qword_100782810, &qword_100782808);
    static Promise.all<A>(_:)();

    v98 = zalgoIfMain.getter();
    sub_10000B0D8(v148, &v135);
    v99 = swift_allocObject();
    sub_100005FD0(&v135, v99 + 16);
    dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v114 + 8))(v53, v104);
    sub_10040FDB4(v113, type metadata accessor for TTRRemindersListReminderActionTarget);
    (*(v123 + 8))(v83, v121);
    sub_10040FDB4(v81, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    sub_100004758(v148);
    sub_100004758(v150);
    return;
  }

  v84 = 0;
  v115 = v80 & 0xFFFFFFFFFFFFFF8;
  v116 = (v80 & 0xC000000000000001);
  v85 = _swiftEmptyArrayStorage;
  *&v112 = v82;
  while (v116)
  {
    v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v88 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_55;
    }

LABEL_44:
    v140 = v88;
    sub_100408D64(v86, &v132);
    if (!*(&v133 + 1))
    {

      sub_1000079B4(&v132, &qword_1007827F8);
      v53 = v122;
      goto LABEL_54;
    }

    v138 = v134;
    v136 = v132;
    v137 = v133;
    v89 = *(&v134 + 1);
    v131 = v87;
    sub_100005FD0(&v136, &v132);
    *(&v134 + 1) = v89;
    sub_10000794C(&v132, v128, &qword_100782818);
    v90 = v129;
    sub_100005FD0(v128, v130);
    v119(&v131, v126);
    v91 = zalgoIfMain.getter();
    sub_10000B0D8(v130, v128);
    v92 = v81;
    v93 = v117;
    sub_100117584(v92, v117, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    v94 = (*(v127 + 80) + 56) & ~*(v127 + 80);
    v95 = swift_allocObject();
    sub_100005FD0(v128, v95 + 16);
    sub_10040FBF8(v93, v95 + v94);
    type metadata accessor for TTRRemindersListImportedContent();
    dispatch thunk of Promise.then<A>(on:closure:)();

    *(swift_allocObject() + 16) = v90;
    v96 = v90;
    v97 = zalgo.getter();
    dispatch thunk of Promise.error(on:closure:)();

    Promise.errorAsNil()();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    sub_100004758(v130);
    sub_1000079B4(&v132, &qword_100782818);

    v85 = v147;
    ++v84;
    v53 = v122;
    v83 = v124;
    v81 = v125;
    v80 = v101;
    if (v88 == v112)
    {
      goto LABEL_54;
    }
  }

  if (v84 >= *(v115 + 16))
  {
    goto LABEL_56;
  }

  v87 = *(v80 + 8 * v84 + 32);
  v88 = v84 + 1;
  if (!__OFADD__(v84, 1))
  {
    goto LABEL_44;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t sub_10040A9D0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007825B0);
  v1 = sub_100003E30(v0, qword_1007825B0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10040AABC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v4 += 2;
      v6 = v5;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10040AB64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  (*(v9 + 496))(&v21, v8, a2, ObjectType, v9);
  sub_1000079B4(v8, &qword_100772140);
  if (v22)
  {
    sub_100005FD0(&v21, v24);
    v13 = v25;
    v14 = v26;
    sub_10000C36C(v24, v25);
    v15 = sub_10040AABC(*(v3 + 16));
    v16 = sub_1003E03D0(v15);

    (*(v14 + 32))(&v21, v16, v13, v14);

    v17 = v22;
    v18 = v23;
    sub_10000C36C(&v21, v22);
    v19 = (*(v18 + 16))(v17, v18) ^ 1;
    sub_100004758(&v21);
    sub_100004758(v24);
  }

  else
  {
    sub_1000079B4(&v21, &qword_100775A10);
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_10040ADA0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  (*(v4 + 504))(&v14, a1, ObjectType, v4);
  if (v15)
  {
    sub_100005FD0(&v14, v17);
    v6 = v18;
    v7 = v19;
    sub_10000C36C(v17, v18);
    v8 = sub_10040AABC(*(v2 + 16));
    v9 = sub_1003E03D0(v8);

    (*(v7 + 32))(&v14, v9, v6, v7);

    v10 = v15;
    v11 = v16;
    sub_10000C36C(&v14, v15);
    v12 = (*(v11 + 16))(v10, v11) ^ 1;
    sub_100004758(&v14);
    sub_100004758(v17);
  }

  else
  {
    sub_1000079B4(&v14, &qword_100775A10);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_10040AEE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-v7];
  v9 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  (*(v9 + 512))(&v17, v8, a2, ObjectType, v9);
  sub_1000079B4(v8, &qword_100772140);
  if (v18)
  {
    sub_100005FD0(&v17, v19);
    v13 = sub_10040AABC(*(v3 + 16));
    __chkstk_darwin(v13);
    *&v16[-16] = v19;
    v14 = sub_10000C108(sub_10040FE68, &v16[-32], v13);

    sub_100004758(v19);
  }

  else
  {
    sub_1000079B4(&v17, &qword_10076C6C8);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t *sub_10040B0F4(unint64_t a1, unint64_t a2)
{
  v133 = a2;
  v132 = a1;
  v121 = sub_100058000(&unk_1007818F0);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = (&v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v130 = &v101 - v5;
  v112 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076C6F0);
  __chkstk_darwin(v7 - 8);
  v113 = &v101 - v8;
  v116 = type metadata accessor for TTRRemindersListTargetContainer();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v122 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v10 - 8);
  v117 = (&v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v101 - v13;
  v15 = sub_100058000(&qword_10076C700);
  __chkstk_darwin(v15 - 8);
  v128 = &v101 - v16;
  v17 = sub_100058000(&unk_100775620);
  v131 = *(v17 - 8);
  __chkstk_darwin(v17);
  v109 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v127 = &v101 - v20;
  v21 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v21 - 8);
  v23 = &v101 - v22;
  v25 = v2[3];
  v24 = v2[4];
  v129 = v2;
  ObjectType = swift_getObjectType();
  v27 = type metadata accessor for TTRRemindersListViewModel.Item();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v125 = v28 + 16;
  v124 = v29;
  v29(v23, v132, v27);
  v118 = v28;
  v30 = *(v28 + 56);
  v126 = v27;
  v105 = v28 + 56;
  v104 = v30;
  v30(v23, 0, 1, v27);
  v31 = *(v24 + 496);
  v107 = v25;
  v106 = ObjectType;
  v108 = v24;
  v31(&v139, v23, v133, ObjectType, v24);
  v103 = v23;
  sub_1000079B4(v23, &qword_100772140);
  if (!v140)
  {
    sub_1000079B4(&v139, &qword_100775A10);
    return _swiftEmptyArrayStorage;
  }

  v123 = v17;
  v102 = v14;
  sub_100005FD0(&v139, &v142);
  v32 = v143;
  v33 = v144;
  sub_10000C36C(&v142, v143);
  v34 = v129[2];
  v35 = sub_10040AABC(v34);
  v36 = sub_1003E03D0(v35);

  (*(v33 + 32))(&v139, v36, v32, v33);

  v114 = v34;
  v37 = sub_10040AABC(v34);
  __chkstk_darwin(v37);
  *(&v101 - 2) = &v139;
  v38 = 0;
  v39 = sub_10007D6E8(sub_10040FD98, (&v101 - 4), v37);

  v40 = v39;
  v41 = v39 & 0xFFFFFFFFFFFFFF8;
  v42 = v39 >> 62;
  if (v42)
  {
    goto LABEL_76;
  }

  for (i = *(v41 + 16); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v44 = v128;
    if (!i)
    {

      goto LABEL_30;
    }

    v128 = v40;
    v45 = v140;
    v46 = v141;
    sub_10000C36C(&v139, v140);
    (*(v46 + 24))(v45, v46);
    v47 = v131;
    v48 = v123;
    if ((*(v131 + 48))(v44, 1, v123) == 1)
    {

      sub_1000079B4(v44, &qword_10076C700);
      goto LABEL_30;
    }

    (*(v47 + 32))(v127, v44, v48);
    v40 = v128;
    if (v42)
    {
      v49 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v49 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v49)
    {
      v137 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v49 < 0)
      {
        __break(1u);
        goto LABEL_78;
      }

      v50 = 0;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v51 = *(v40 + 8 * v50 + 32);
        }

        v52 = v51;
        ++v50;
        v53 = *&v51[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v49 != v50);
    }

    v54 = v143;
    v55 = v144;
    sub_10000C36C(&v142, v143);
    v56 = v102;
    (*(v55 + 8))(v54, v55);
    v57 = v117;
    sub_100117584(v56, v117, type metadata accessor for TTRRemindersListReminderActionTarget);
    v58 = v113;
    sub_10057DDC0(v57, v113);
    v59 = v115;
    v60 = v116;
    if ((*(v115 + 48))(v58, 1, v116) == 1)
    {

      sub_1000079B4(v58, &qword_10076C6F0);
LABEL_29:
      sub_10040FDB4(v56, type metadata accessor for TTRRemindersListReminderActionTarget);
      (*(v131 + 8))(v127, v123);
      goto LABEL_30;
    }

    v117 = v38;
    v61 = v122;
    (*(v59 + 32))(v122, v58, v60);
    swift_getObjectType();
    v40 = v109;
    (*(v131 + 16))(v109, v127, v123);
    v62 = v110;
    TTRRemindersListReminderInsertionPosition.init(relativePosition:)();
    dispatch thunk of TTRRemindersListInteractorType.reminderChangeItems(forMoving:to:insertingAt:)();

    (*(v111 + 8))(v62, v112);
    if (!v136)
    {
      (*(v59 + 8))(v61, v60);

      sub_1000079B4(&v135, &qword_10076C710);
      v56 = v102;
      goto LABEL_29;
    }

    sub_100005FD0(&v135, &v137);
    sub_10000C36C(&v137, v138);
    v63 = dispatch thunk of TTRRemindersListChangeItemGroup.reminderChangeItems.getter();
    v23 = v63;
    v113 = v63 >> 62;
    if (!(v63 >> 62))
    {
      v42 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_24;
    }

LABEL_78:
    v42 = _CocoaArrayWrapper.endIndex.getter();
LABEL_24:
    v64 = v102;
    v65 = v123;
    v66 = v131;
    v67 = _swiftEmptyArrayStorage;
    if (!v42)
    {
      break;
    }

    *&v135 = _swiftEmptyArrayStorage;
    v64 = v42 & ~(v42 >> 63);

    sub_1004A1E7C(0, v64, 0);
    if (v42 < 0)
    {
      __break(1u);
LABEL_80:
      swift_once();
LABEL_64:
      v94 = type metadata accessor for Logger();
      sub_100003E30(v94, qword_1007825B0);

      v95 = v129;

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 134218240;
        v99 = v95[2];

        *(v98 + 4) = v99;

        *(v98 + 12) = 2048;
        if (v113)
        {
          v100 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v100 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v98 + 14) = v100;

        _os_log_impl(&_mh_execute_header, v96, v97, "items count not matching reminderChangeItems count {items: %ld, reminderChangeItems: %ld}", v98, 0x16u);

        v65 = v123;
        v66 = v131;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      (*(v115 + 8))(v122, v116);
      sub_10040FDB4(v64, type metadata accessor for TTRRemindersListReminderActionTarget);
      (*(v66 + 8))(v127, v65);
      sub_100004758(&v137);
LABEL_30:
      sub_100004758(&v139);
      sub_100004758(&v142);
      return _swiftEmptyArrayStorage;
    }

    v67 = v135;
    if (v113)
    {
      v68 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v68 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v71 = 0;
    v38 = v68 & ~(v68 >> 63);
    while (v38 != v71)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v72 = *(v23 + 8 * v71 + 32);
      }

      v73 = v133 + v71;
      if (__OFADD__(v133, v71))
      {
        goto LABEL_75;
      }

      *&v135 = v67;
      v40 = v67[2];
      v74 = v67[3];
      if (v40 >= v74 >> 1)
      {
        v129 = v72;
        sub_1004A1E7C((v74 > 1), v40 + 1, 1);
        v72 = v129;
        v67 = v135;
      }

      ++v71;
      v67[2] = v40 + 1;
      v75 = &v67[2 * v40];
      v75[4] = v72;
      v75[5] = v73;
      if (v42 == v71)
      {

        v64 = v102;
        v65 = v123;
        v66 = v131;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    ;
  }

LABEL_44:
  v76 = v103;
  v77 = v126;
  v124(v103, v132, v126);
  v104(v76, 0, 1, v77);
  v78 = sub_1003E0588(v67);

  v79 = (*(v108 + 392))(v76, v78, v106);

  sub_1000079B4(v76, &qword_100772140);
  v129 = v79;
  v80 = *(v79 + 16);
  if (v113)
  {
    v81 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v81 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v80 != v81 || v80 != v49)
  {

    if (qword_1007672A8 != -1)
    {
      goto LABEL_80;
    }

    goto LABEL_64;
  }

  sub_10000C36C(&v137, v138);
  dispatch thunk of TTRRemindersListChangeItemGroup.save()();
  result = v129;
  v133 = v129[2];
  if (!v133)
  {

    v69 = _swiftEmptyArrayStorage;
    v82 = v122;
    goto LABEL_70;
  }

  v132 = v128 & 0xC000000000000001;
  v82 = v122;
  if ((v128 & 0xC000000000000001) != 0 || v133 <= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v83 = 0;
    v69 = _swiftEmptyArrayStorage;
    v84 = v114;
    do
    {
      if (v132)
      {

        v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v86 = *(v128 + 8 * v83 + 32);

        v85 = v86;
        v82 = v122;
      }

      v87 = v85;
      v134 = v84;
      __chkstk_darwin(v85);
      *(&v101 - 2) = v88;
      sub_100058000(&qword_1007827E8);
      sub_100003540(0, &qword_10076BAC0);
      sub_10000E188(&qword_1007827F0, &qword_1007827E8);
      v84 = v114;
      v89 = v117;
      Sequence.firstMap<A>(_:)();
      v117 = v89;

      if (v135)
      {
        v90 = *(v121 + 48);
        v91 = v119;
        *v119 = v135;
        v124(v91 + v90, v129 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v83, v126);
        sub_100016588(v91, v130, &unk_1007818F0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_100547474(0, v69[2] + 1, 1, v69);
        }

        v93 = v69[2];
        v92 = v69[3];
        if (v93 >= v92 >> 1)
        {
          v69 = sub_100547474(v92 > 1, v93 + 1, 1, v69);
        }

        v69[2] = v93 + 1;
        sub_100016588(v130, v69 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v93, &unk_1007818F0);
      }

      ++v83;
    }

    while (v133 != v83);

    v64 = v102;
LABEL_70:

    (*(v115 + 8))(v82, v116);
    sub_10040FDB4(v64, type metadata accessor for TTRRemindersListReminderActionTarget);
    (*(v131 + 8))(v127, v123);
    sub_100004758(&v137);
    sub_100004758(&v139);
    sub_100004758(&v142);
    return v69;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10040C410(unint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[3];
  v7 = a2[4];
  sub_10000C36C(a2, v6);
  v8 = *(v7 + 8);
  v9 = v4;
  v10 = v8(v6, v7);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5 >= *(v10 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_10000794C(v10 + 48 * v5 + 32, v12, &qword_100773348);

  v11 = v12[40];
  sub_100004758(v12);
  if (v11 != 1)
  {

    v9 = 0;
  }

  *a3 = v9;
}

uint64_t sub_10040C504(uint64_t a1, void *a2)
{
  v98 = a2;
  v90 = type metadata accessor for REMHashtagLabelSpecifier();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v92 = v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v89 = v83 - v5;
  v6 = type metadata accessor for DateComponents();
  v86 = *(v6 - 8);
  v87 = v6;
  __chkstk_darwin(v6);
  v83[1] = v7;
  v84 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = v83 - v9;
  v10 = sub_100058000(&qword_10076E910);
  __chkstk_darwin(v10 - 8);
  v94 = v83 - v11;
  v96 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  v93 = *(v96 - 8);
  __chkstk_darwin(v96);
  v91 = (v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v95 = v83 - v14;
  v15 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v15 - 8);
  v17 = v83 - v16;
  if (qword_1007672A8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003E30(v18, qword_1007825B0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 48;
  *(inited + 40) = 0xE100000000000000;
  v20 = type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10040FBA0();
  *(inited + 48) = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 56) = v21;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 49;
  *(inited + 120) = &type metadata for Int;
  v22 = v98;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = v22;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  v23 = v97;
  v24 = *(v97 + 32);
  ObjectType = swift_getObjectType();
  v26 = *(v20 - 8);
  (*(v26 + 16))(v17, a1, v20);
  (*(v26 + 56))(v17, 0, 1, v20);
  (*(v24 + 512))(&v99, v17, v22, ObjectType, v24);
  sub_1000079B4(v17, &qword_100772140);
  if (!v101)
  {
    sub_1000079B4(&v99, &qword_10076C6C8);
    goto LABEL_7;
  }

  v27 = v23;
  sub_100005FD0(&v99, v106);
  v28 = v107;
  v29 = v108;
  sub_10000C36C(v106, v107);
  v30 = v94;
  (*(v29 + 32))(v28, v29);
  if ((*(v93 + 48))(v30, 1, v96) == 1)
  {
    sub_1000079B4(v30, &qword_10076E910);
    sub_100004758(v106);
LABEL_7:
    v31 = 0;
    v32 = 0;
LABEL_37:
    sub_1000301AC(v32);
    return v31;
  }

  sub_10040FBF8(v30, v95);
  v33 = sub_10040AABC(*(v27 + 16));
  __chkstk_darwin(v33);
  v83[-2] = v106;
  v35 = sub_1004B6818(sub_1004105C8, &v83[-4], v34);
  v36 = v35;
  if (v35 >> 62)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v37)
  {
    *&v99 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v37 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    v38 = 0;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v36 + 8 * v38 + 32);
      }

      v40 = v39;
      ++v38;
      v41 = *&v39[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v37 != v38);
  }

  swift_getObjectType();
  dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)();
  v42 = v91;
  sub_100117584(v95, v91, type metadata accessor for TTRRemindersListMatchedAttributeValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = v92;
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {

      v59 = v85;
      v60 = v86;
      v61 = *(v86 + 32);
      v62 = v87;
      v61(v85, v42, v87);
      v98 = objc_opt_self();
      static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
      v63 = String._bridgeToObjectiveC()();

      sub_10000B0D8(v105, v104);
      v64 = v84;
      (*(v60 + 16))(v84, v59, v62);
      v65 = (*(v60 + 80) + 56) & ~*(v60 + 80);
      v42 = swift_allocObject();
      sub_100005FD0(v104, (v42 + 2));
      v61(v42 + v65, v64, v62);
      v66 = swift_allocObject();
      *(v66 + 16) = sub_10040FD34;
      *(v66 + 24) = v42;
      v102 = sub_100068444;
      v103 = v66;
      *&v99 = _NSConcreteStackBlock;
      *(&v99 + 1) = 1107296256;
      v100 = sub_100026440;
      v101 = &unk_100726D10;
      v67 = _Block_copy(&v99);

      [v98 withActionName:v63 block:v67];
      _Block_release(v67);

      (*(v60 + 8))(v59, v62);
      sub_100004758(v105);
      sub_10040FDB4(v95, type metadata accessor for TTRRemindersListMatchedAttributeValue);
      LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

      if ((v63 & 1) == 0)
      {
        goto LABEL_30;
      }

      __break(1u);
LABEL_26:

      v68 = *v42;
      v69 = objc_opt_self();
      static TTRLocalizableStrings.UndoAction.customSmartListFilterChange.getter();
      v70 = String._bridgeToObjectiveC()();

      sub_10000B0D8(v105, v104);
      v71 = swift_allocObject();
      sub_100005FD0(v104, v71 + 16);
      *(v71 + 56) = v68;
      v72 = swift_allocObject();
      *(v72 + 16) = sub_10040FC74;
      *(v72 + 24) = v71;
      v102 = sub_100068444;
      v103 = v72;
      *&v99 = _NSConcreteStackBlock;
      *(&v99 + 1) = 1107296256;
      v100 = sub_100026440;
      v101 = &unk_100726C20;
      v73 = _Block_copy(&v99);
      v74 = v68;

      [v69 withActionName:v70 block:v73];

      _Block_release(v73);
      sub_100004758(v105);
      sub_10040FDB4(v95, type metadata accessor for TTRRemindersListMatchedAttributeValue);
      LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

      if (v69)
      {
        __break(1u);
        goto LABEL_28;
      }

LABEL_30:
      sub_100004758(v106);

      v32 = 0;
      v31 = 1;
      goto LABEL_37;
    }

    v75 = *v42;
    v76 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.flaggedChange.getter();
    v77 = String._bridgeToObjectiveC()();

    sub_10000B0D8(v105, v104);
    v78 = swift_allocObject();
    sub_100005FD0(v104, v78 + 16);
    *(v78 + 56) = v75;
    v79 = swift_allocObject();
    *(v79 + 16) = sub_10040FCE8;
    *(v79 + 24) = v78;
    v102 = sub_100068444;
    v103 = v79;
    *&v99 = _NSConcreteStackBlock;
    *(&v99 + 1) = 1107296256;
    v100 = sub_100026440;
    v101 = &unk_100726C98;
    v80 = _Block_copy(&v99);

    [v76 withActionName:v77 block:v80];

    _Block_release(v80);
    sub_100004758(v105);
    sub_10040FDB4(v95, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

    if ((v76 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 3)
  {
LABEL_28:

LABEL_35:
    sub_100004758(v105);
    sub_10040FDB4(v95, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    v58 = 0;
    goto LABEL_36;
  }

  v45 = v88;
  v46 = v89;
  v47 = v42;
  v48 = v90;
  (*(v88 + 32))(v89, v47, v90);
  (*(v45 + 16))(v44, v46, v48);
  v49 = (*(v45 + 88))(v44, v48);
  if (v49 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {

    (*(v45 + 96))(v44, v48);
    v50 = *v44;

    v51 = *(sub_100058000(&qword_10076B830) + 64);
    v52 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.hashtagChange.getter();
    v53 = String._bridgeToObjectiveC()();

    sub_10000B0D8(v105, v104);
    v54 = swift_allocObject();
    sub_100005FD0(v104, v54 + 16);
    *(v54 + 56) = v50;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_10040FC5C;
    *(v55 + 24) = v54;
    v102 = sub_100026410;
    v103 = v55;
    *&v99 = _NSConcreteStackBlock;
    *(&v99 + 1) = 1107296256;
    v100 = sub_100026440;
    v101 = &unk_100726BA8;
    v56 = _Block_copy(&v99);

    [v52 withActionName:v53 block:v56];
    _Block_release(v56);

    (*(v45 + 8))(v46, v90);
    sub_100004758(v105);
    sub_10040FDB4(v95, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

    if ((v53 & 1) == 0)
    {
      v57 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
      (*(*(v57 - 8) + 8))(&v92[v51], v57);
      v58 = sub_10040FC5C;
LABEL_36:
      sub_100004758(v106);
      v31 = 1;
      v32 = v58;
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (v49 == enum case for REMHashtagLabelSpecifier.allLabels(_:))
  {

    (*(v45 + 8))(v89, v48);
    goto LABEL_35;
  }

  v81 = v89;
  if (v49 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {

    (*(v45 + 8))(v81, v48);
    goto LABEL_35;
  }

LABEL_42:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10040D518(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2[3];
  v4 = a2[4];
  sub_10000C36C(a2, v3);
  v9[3] = type metadata accessor for TTRIRemindersListDragReminder();
  v9[4] = &off_10072B5C0;
  v9[0] = v2;
  v5 = *(v4 + 8);
  v6 = v2;
  v7 = v5(v9, v3, v4);
  sub_100004758(v9);
  return v7 & 1;
}

uint64_t sub_10040D5C0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRDateChangeType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C36C(a1, a1[3]);
  v8 = type metadata accessor for DateComponents();
  (*(*(v8 - 8) + 16))(v7, a2, v8);
  (*(v5 + 104))(v7, enum case for TTRDateChangeType.changeDateOnly(_:), v4);
  dispatch thunk of TTRRemindersListAttributeEditing.setDueDate(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10040D71C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

BOOL sub_10040D880(uint64_t (*a1)(char *, uint64_t))
{
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10040F7A8(v8);
  v16 = sub_100058000(&qword_10076C708);
  if ((*(*(v16 - 8) + 48))(v8, 1, v16) == 1)
  {
    sub_1000079B4(v8, &qword_10076C6F8);
    return 0;
  }

  else
  {
    v18 = *(v16 + 48);
    v29 = a1;
    v30 = v15;
    v28 = *&v8[v18];
    v19 = *(v9 + 48);
    v31 = v1;
    v20 = *(v13 + 32);
    v20(v11, v8, v12);
    *&v11[v19] = v28;
    v21 = v30;
    v22 = *&v11[*(v9 + 48)];
    v20(v30, v11, v12);
    v23 = v31;
    (*(v13 + 16))(v5, v21, v12);
    (*(v13 + 56))(v5, 0, 1, v12);
    v24 = v29(v5, v22);
    sub_1000079B4(v5, &qword_100772140);
    if (v24)
    {
      v25 = sub_10040FF1C(*(v23 + 16), v24);
      if (v25 >> 62)
      {
        v26 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v26 != 0;
    }

    else
    {
      v17 = 0;
    }

    (*(v13 + 8))(v21, v12);
  }

  return v17;
}

void *sub_10040DC4C()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10040F7A8(v6);
  v14 = sub_100058000(&qword_10076C708);
  if ((*(*(v14 - 8) + 48))(v6, 1, v14) == 1)
  {
    sub_1000079B4(v6, &qword_10076C6F8);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v24 = *&v6[*(v14 + 48)];
    v25 = v0;
    v16 = *(v7 + 48);
    v17 = v11;
    v18 = v13;
    v19 = *(v11 + 32);
    v19(v9, v6, v10);
    *&v9[v16] = v24;
    v20 = *&v9[*(v7 + 48)];
    v21 = v18;
    v19(v18, v9, v10);
    v22 = v25;
    (*(v17 + 16))(v3, v21, v10);
    (*(v17 + 56))(v3, 0, 1, v10);
    v23 = sub_100408EA4(v3, v20, sub_1004102A0, v22, sub_10041060C, 0);
    sub_1000079B4(v3, &qword_100772140);
    (*(v17 + 8))(v21, v10);
    return v23;
  }
}

uint64_t *sub_10040DFA0()
{
  v0 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10040F7A8(v2);
  v10 = sub_100058000(&qword_10076C708);
  if ((*(*(v10 - 8) + 48))(v2, 1, v10) == 1)
  {
    sub_1000079B4(v2, &qword_10076C6F8);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v17 = *&v2[*(v10 + 48)];
    v12 = *(v3 + 48);
    v13 = *(v7 + 32);
    v13(v5, v2, v6);
    *&v5[v12] = v17;
    v14 = *&v5[*(v3 + 48)];
    v13(v9, v5, v6);
    v15 = sub_10040B0F4(v9, v14);
    (*(v7 + 8))(v9, v6);
    return v15;
  }
}

uint64_t sub_10040E26C(uint64_t (*a1)(char *, uint64_t))
{
  v2 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10040F7A8(v4);
  v12 = sub_100058000(&qword_10076C708);
  if ((*(*(v12 - 8) + 48))(v4, 1, v12) == 1)
  {
    sub_1000079B4(v4, &qword_10076C6F8);
    v13 = 0;
  }

  else
  {
    v18 = *&v4[*(v12 + 48)];
    v19 = a1;
    v14 = *(v5 + 48);
    v15 = *(v9 + 32);
    v15(v7, v4, v8);
    *&v7[v14] = v18;
    v16 = *&v7[*(v5 + 48)];
    v15(v11, v7, v8);
    v13 = v19(v11, v16);
    (*(v9 + 8))(v11, v8);
  }

  return v13 & 1;
}

BOOL sub_10040E4DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_100782820);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-v5];
  v7 = sub_100058000(&qword_100782828);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-v9];
  v11 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  (*(v11 + 304))(a1, ObjectType, v11);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100782820);
    return 0;
  }

  else
  {
    v14 = (*(v8 + 32))(v10, v6, v7);
    v15 = *(v2 + 16);
    __chkstk_darwin(v14);
    *&v19[-16] = v10;

    v16 = sub_1004B6818(sub_1004105E4, &v19[-32], v15);
    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v17 != 0;
    (*(v8 + 8))(v10, v7);
  }

  return v13;
}

BOOL sub_10040E740(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t))
{
  v5 = v3;
  v8 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = a3(v10, a2);
  sub_1000079B4(v10, &qword_100772140);
  if (!v13)
  {
    return 0;
  }

  v14 = sub_10040FF1C(*(v5 + 16), v13);
  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v15 != 0;
}

void *sub_10040E8DC(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100782820);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_100058000(&qword_100782828);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v13 = *(v1 + 56);
  v14 = *(v13 + 24);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 304);
  v38 = a1;
  v16(a1, ObjectType, v14);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v17 = (*(v10 + 32))(v12, v8, v9);
    v18 = *(v1 + 16);
    __chkstk_darwin(v17);
    *(&v31 - 2) = v12;

    v19 = sub_1004B6818(sub_1004103E8, &v31 - 4, v18);
    if (v19 >> 62)
    {
      v29 = v19;
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v29;
      if (v30)
      {
        goto LABEL_5;
      }
    }

    else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      v34 = v19;
      __chkstk_darwin(v19);
      *(&v31 - 4) = sub_10040ED88;
      *(&v31 - 3) = 0;
      v20 = v38;
      *(&v31 - 2) = v12;
      *(&v31 - 1) = v20;
      v21 = sub_100398D20(sub_100410408, (&v31 - 6), v34);
      sub_100058000(&qword_100782800);
      v39 = v21;
      sub_100058000(&qword_100782808);
      sub_10000E188(&qword_100782810, &qword_100782808);
      v33 = static Promise.all<A>(_:)();

      v32 = zalgoIfMain.getter();
      v22 = v37;
      v23 = v35;
      v24 = v36;
      (*(v37 + 16))(v35, v38, v36);
      v25 = (*(v22 + 80) + 24) & ~*(v22 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = v13;
      (*(v22 + 32))(v26 + v25, v23, v24);

      v27 = v32;
      dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v10 + 8))(v12, v9);
      return v34;
    }

    (*(v10 + 8))(v12, v9);
    return _swiftEmptyArrayStorage;
  }

  sub_1000079B4(v8, &qword_100782820);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10040ED88(void **a1)
{
  v1 = *a1;
  type metadata accessor for TTRRemindersListImportedContent();
  v2 = [v1 itemProvider];
  sub_100058000(&qword_100782828);
  Either.left.getter();
  v3 = [v10 attachmentContext];

  if (v3 || (Either.right.getter(), v3 = [v10 attachmentContext], v10, v3))
  {

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  Either.left.getter();
  if (v10 && (v5 = REMReminder.canAddURL.getter(), v10, (v5 & 1) != 0))
  {
    if (!v4)
    {
LABEL_14:
      v7 = 2;
      goto LABEL_18;
    }
  }

  else
  {
    Either.right.getter();
    if (!v10)
    {
      v7 = v4;
      goto LABEL_18;
    }

    v6 = REMReminderChangeItem.canAddURL.getter();

    if ((v4 & 1) == 0)
    {
      if ((v6 & 1) == 0)
      {
        v7 = 0;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    if ((v6 & 1) == 0)
    {
      v7 = 1;
      goto LABEL_18;
    }
  }

  v7 = 3;
LABEL_18:
  v8 = sub_1005D8B40(v2, v7);

  return v8;
}

uint64_t sub_10040EF20(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = &v16[-v6];
  if (qword_1007672A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_1007825B0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 48;
  *(inited + 40) = 0xE100000000000000;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10040FBA0();
  *(inited + 48) = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 56) = v11;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 49;
  *(inited + 120) = &type metadata for Int;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = a2;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  v12 = *(v10 - 8);
  (*(v12 + 16))(v7, a1, v10);
  (*(v12 + 56))(v7, 0, 1, v10);
  sub_100409944(v7, a2, sub_100410610, v2, sub_10041060C, 0);
  v14 = v13;
  sub_1000079B4(v7, &qword_100772140);
  return v14 & 1;
}

uint64_t sub_10040F1AC(void **a1, void *a2)
{
  v3 = *a1;
  type metadata accessor for TTRRemindersListImportedContent();
  v4 = [v3 itemProvider];
  v5 = [a2 account];
  v6 = [v5 capabilities];

  LODWORD(v5) = [v6 supportsAttachments];
  if (v5)
  {
    v7 = 15;
  }

  else
  {
    v7 = 14;
  }

  v8 = sub_1005D8B40(v4, v7);

  return v8;
}

uint64_t sub_10040F270(id *a1)
{
  v1 = [*a1 itemProvider];
  sub_100058000(&qword_100782828);
  Either.left.getter();
  v2 = [v9 attachmentContext];

  if (v2 || (Either.right.getter(), v2 = [v9 attachmentContext], v9, v2))
  {

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  Either.left.getter();
  if (v9 && (v4 = REMReminder.canAddURL.getter(), v9, (v4 & 1) != 0))
  {
    if (!v3)
    {
LABEL_14:
      v6 = 2;
      goto LABEL_18;
    }
  }

  else
  {
    Either.right.getter();
    if (!v9)
    {
      v6 = v3;
      goto LABEL_18;
    }

    v5 = REMReminderChangeItem.canAddURL.getter();

    if ((v3 & 1) == 0)
    {
      if ((v5 & 1) == 0)
      {
        v6 = 0;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    if ((v5 & 1) == 0)
    {
      v6 = 1;
      goto LABEL_18;
    }
  }

  v6 = 3;
LABEL_18:
  v7 = sub_1005DB830(v1, v6);

  return v7 & 1;
}

uint64_t sub_10040F3F4()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_10040F590(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = *v2;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a1, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = sub_100408EA4(v7, a2, sub_100410610, v8, sub_10041060C, 0);
  sub_1000079B4(v7, &qword_100772140);
  return v11;
}

uint64_t sub_10040F7A8@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_1007827D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_100058000(&qword_1007827D8);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v17 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  (*(v17 + 336))(ObjectType, v17);
  v19 = sub_100058000(&qword_1007827E0);
  if ((*(*(v19 - 8) + 48))(v7, 1, v19) == 1)
  {
    sub_1000079B4(v7, &qword_1007827D0);
LABEL_5:
    v24 = sub_100058000(&qword_10076C708);
    return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  }

  v32 = a1;
  v20 = *&v7[*(v19 + 48)];
  v21 = *(v8 + 48);
  sub_100016588(v7, v10, &qword_100772140);
  *&v10[v21] = v20;
  v22 = *&v10[*(v8 + 48)];
  sub_100016588(v10, v16, &qword_100772140);
  sub_100016588(v16, v13, &qword_100772140);
  v23 = v34;
  if ((*(v34 + 48))(v13, 1, v3) == 1)
  {
    sub_1000079B4(v13, &qword_100772140);
    a1 = v32;
    goto LABEL_5;
  }

  v26 = *(v23 + 32);
  v27 = v33;
  v26(v33, v13, v3);
  v28 = sub_100058000(&qword_10076C708);
  v29 = *(v28 + 48);
  v30 = v32;
  v26(v32, v27, v3);
  *&v30[v29] = v22;
  return (*(*(v28 - 8) + 56))(v30, 0, 1, v28);
}

unint64_t sub_10040FBA0()
{
  result = qword_100775630;
  if (!qword_100775630)
  {
    type metadata accessor for TTRRemindersListViewModel.Item();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100775630);
  }

  return result;
}

uint64_t sub_10040FBF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040FC8C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[5];
  sub_10000C36C(v1 + 2, v5);
  return a1(v3, v5, v4);
}

uint64_t sub_10040FD34()
{
  v1 = *(type metadata accessor for DateComponents() - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_10040D5C0((v0 + 16), v2);
}

uint64_t sub_10040FDB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_10040FE14@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result == *(v2 + 16))
  {
    v4 = result[1];
    result = v4;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_10040FF1C(unint64_t a1, void *a2)
{
  v21 = a2;
  v20 = type metadata accessor for UTType();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v19 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_23:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v18 = (v3 + 1);
      v7 = &selRef_layoutIfNeeded;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_20:
            __break(1u);
            return v23;
          }
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_23;
          }

          v8 = *(a1 + 8 * v6 + 32);
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_20;
          }
        }

        v10 = v7[343];
        v22 = v8;
        v11 = [v8 v10];
        v12 = [v21 account];
        v13 = [v12 capabilities];

        LODWORD(v12) = [v13 supportsAttachments];
        if (v12 && ((sub_100003540(0, &qword_10076FCB0), ([v11 canLoadObjectOfClass:swift_getObjCClassFromMetadata()] & 1) != 0) || (v14 = v19, static UTType.image.getter(), UTType.identifier.getter(), (*v18)(v14, v20), v7 = &selRef_layoutIfNeeded, v15 = String._bridgeToObjectiveC()(), , v16 = objc_msgSend(v11, "hasItemConformingToTypeIdentifier:", v15), v15, (v16 & 1) != 0)) || (sub_100003540(0, &unk_1007755E0), (objc_msgSend(v11, "canLoadObjectOfClass:", swift_getObjCClassFromMetadata()) & 1) != 0) || (sub_100003540(0, &qword_1007865E0), (objc_msgSend(v11, "canLoadObjectOfClass:", swift_getObjCClassFromMetadata()) & 1) != 0))
        {
        }

        else
        {
          sub_100003540(0, &qword_1007755F0);
          v3 = [v11 canLoadObjectOfClass:swift_getObjCClassFromMetadata()];

          if ((v3 & 1) == 0)
          {

            goto LABEL_14;
          }
        }

        v3 = &v23;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_14:
        ++v6;
        if (v9 == v5)
        {
          return v23;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1004102C0(void **a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1001154CC(a1, v1 + v4, *v5, v5[1]);
}

void sub_10041035C(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1001159C0(a1, v4);
}

uint64_t sub_100410408@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100409748(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1004104C8()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100410614()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100782830);
  v1 = sub_100003E30(v0, qword_100782830);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100410724()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100410784();
  }

  return result;
}

size_t sub_100410784()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100782900);
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v33 = (&v27 - v3);
  v34 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = TTRRemindersListEditingSessionProviderCapability.EditingSessionStatesConclusion.toBeDeleted.getter();
  v8 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v9 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
    goto LABEL_44;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    sub_1004138C4(v11);
  }

LABEL_10:

  v12 = swift_allocObject();
  *(v12 + 16) = &_swiftEmptyArrayStorage;
  v30 = (v12 + 16);
  result = TTRRemindersListEditingSessionProviderCapability.EditingSessionStatesConclusion.toBeSaved.getter();
  v13 = result;
  if (result >> 62)
  {
    goto LABEL_40;
  }

  v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v28 = v0;
  v29 = v12;
  if (v14)
  {
    goto LABEL_12;
  }

  while (2)
  {

    v1 = &_swiftEmptyArrayStorage;
    if (&_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_42;
    }

LABEL_23:
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_24:
    v17 = &_swiftEmptyArrayStorage;
    if (!v6)
    {
LABEL_36:
      v22 = objc_opt_self();
      static TTRLocalizableStrings.UndoAction.addReminder.getter();
      v23 = String._bridgeToObjectiveC()();

      v24 = swift_allocObject();
      v24[2] = v28;
      v24[3] = v17;
      v24[4] = v29;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_100415FCC;
      *(v25 + 24) = v24;
      aBlock[4] = sub_100026410;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026440;
      aBlock[3] = &unk_100726EF0;
      v26 = _Block_copy(aBlock);

      [v22 withActionName:v23 block:v26];

      _Block_release(v26);
      LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

      if ((v26 & 1) == 0)
      {
        return result;
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    aBlock[0] = &_swiftEmptyArrayStorage;
    v12 = v6 & ~(v6 >> 63);

    result = sub_1004A2570(0, v12, 0);
    if (v6 < 0)
    {
      goto LABEL_46;
    }

    v18 = 0;
    v17 = aBlock[0];
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v13 = &unk_10063E658;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_32;
      }

      if ((v18 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v18 >= *(v34 + 16))
      {
        goto LABEL_39;
      }

LABEL_32:
      v19 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
      v4 = v33;
      TTRRemindersListEditingSessionState.reminderSaveOptions.getter();

      *v4 = v19;
      aBlock[0] = v17;
      v21 = v17[2];
      v20 = v17[3];
      v12 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        sub_1004A2570(v20 > 1, v21 + 1, 1);
        v4 = v33;
        v17 = aBlock[0];
      }

      ++v18;
      v17[2] = v12;
      sub_100016588(v4, v17 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21, &qword_100782900);
      if (v6 == v18)
      {

        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = _CocoaArrayWrapper.endIndex.getter();
    v14 = result;
    v28 = v1;
    v29 = v12;
    if (!result)
    {
      continue;
    }

    break;
  }

LABEL_12:
  if (v14 >= 1)
  {
    v15 = 0;
    ++v4;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      sub_100413F3C(v6);
      (*v4)(v6, v34);
      if ((TTRRemindersListEditingSessionState.doNotSave.getter() & 1) == 0)
      {

        v16 = v30;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v15;
    }

    while (v14 != v15);

    v1 = *v30;
    if (!(*v30 >> 62))
    {
      goto LABEL_23;
    }

LABEL_42:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_24;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_100410DCC@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v6 = sub_100415FE8(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
      (*(v4 + 48))(v3, v6, ObjectType, v4);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v8 = type metadata accessor for TTRRemindersListUndoContext();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, 1, 1, v8);
}

uint64_t sub_100410F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v191 = a3;
  v186 = a2;
  v194 = a4;
  v170 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListTargetContainer();
  v175 = *(v8 - 8);
  v176 = v8;
  __chkstk_darwin(v8);
  v171 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_1007761F8);
  __chkstk_darwin(v10 - 8);
  v180 = &v161 - v11;
  v12 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  v178 = *(v12 - 8);
  v179 = v12;
  __chkstk_darwin(v12);
  v177 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v187 = *(v14 - 8);
  v188 = v14;
  __chkstk_darwin(v14);
  v181 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v182 = &v161 - v17;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v184 = *(v18 - 8);
  v185 = v18;
  __chkstk_darwin(v18);
  v183 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRRemindersListViewModel.Item();
  v21 = *(v20 - 8);
  v192 = v20;
  v193 = v21;
  __chkstk_darwin(v20);
  v23 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v161 - v25;
  __chkstk_darwin(v27);
  v29 = &v161 - v28;
  __chkstk_darwin(v30);
  v32 = &v161 - v31;
  __chkstk_darwin(v33);
  v189 = &v161 - v34;
  v36 = *(v4 + 48);
  v35 = *(v4 + 56);
  ObjectType = swift_getObjectType();
  if ((*(v35 + 440))(a1, ObjectType, v35))
  {
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100003E30(v38, qword_100782830);
    v39 = v192;
    v40 = v193;
    v41 = v189;
    (*(v193 + 16))(v189, a1, v192);
    v42 = v191;

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      *v45 = 136315394;
      *(v45 + 4) = sub_100004060(v186, v42, &v195);
      *(v45 + 12) = 2080;
      sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      v46 = TTRTreeStorageItem.treeItemDescription.getter();
      v48 = v47;
      (*(v40 + 8))(v41, v39);
      v49 = sub_100004060(v46, v48, &v195);

      *(v45 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "Reminder Editing Session: Reusing existing session {acquirer: %s, item: %s}", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v40 + 8))(v41, v39);
    }

    goto LABEL_12;
  }

  v163 = v32;
  v164 = v26;
  v167 = ObjectType;
  v189 = v36;
  v166 = v35;
  v165 = v4;
  v50 = v183;
  v51 = a1;
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v53 = v184;
  v52 = v185;
  v54 = (*(v184 + 88))(v50, v185);
  v55 = v52;
  if (v54 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v53 + 96))(v50, v52);
    v56 = v182;
    (*(v187 + 32))(v182, v50, v188);
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    v58 = sub_100003E30(v57, qword_100782830);
    v59 = v192;
    v60 = v193;
    v61 = v29;
    v62 = v51;
    v184 = *(v193 + 16);
    v185 = v193 + 16;
    (v184)(v29, v51, v192);
    v63 = v191;

    v183 = v58;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v195 = v181;
      *v66 = 136315394;
      *(v66 + 4) = sub_100004060(v186, v63, &v195);
      *(v66 + 12) = 2080;
      sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      v67 = TTRTreeStorageItem.treeItemDescription.getter();
      v68 = v62;
      v70 = v69;
      (*(v60 + 8))(v61, v59);
      v71 = sub_100004060(v67, v70, &v195);

      *(v66 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v64, v65, "Reminder Editing Session: Creating a session for existing reminder {acquirer: %s, item: %s}", v66, 0x16u);
      swift_arrayDestroy();

      v56 = v182;
    }

    else
    {
      v68 = v51;

      (*(v60 + 8))(v61, v59);
    }

    v82 = v59;
    v83 = v56;
    v84 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v85 = v166;
    v86 = (*(v166 + 256))(v84, v167, v166);

    if (v86)
    {
      swift_getObjectType();
      v87 = dispatch thunk of TTRRemindersListInteractorType.reminderChangeItem(forEditing:)();
      (v184)(v164, v68, v82);
      type metadata accessor for TTRRemindersListEditingSessionState();
      swift_allocObject();
      v88 = v87;
      TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)();
      (*(v85 + 432))();

      (*(v187 + 8))(v83, v188);

LABEL_12:

      v72 = v194;
      TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult.init(sessionState:isExisting:)();

      v73 = type metadata accessor for TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult();
      return (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
    }

    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "Reminder Editing Session: Failed to create session; no REMReminder", v107, 2u);
    }

    (*(v187 + 8))(v182, v188);
    goto LABEL_45;
  }

  v75 = v188;
  if (v54 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:))
  {
    if (v54 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      (*(v53 + 96))(v50, v55);
      (*(v187 + 32))(v181, v50, v75);
      v89 = v192;
      if (qword_1007672B0 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      v91 = sub_100003E30(v90, qword_100782830);
      v92 = v193;
      v93 = v23;
      v94 = v23;
      v95 = a1;
      v183 = *(v193 + 16);
      v184 = v193 + 16;
      (v183)(v94, a1, v89);
      v96 = v191;

      v185 = v91;
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *v99 = 136315394;
        *(v99 + 4) = sub_100004060(v186, v96, &v195);
        *(v99 + 12) = 2080;
        sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
        v100 = TTRTreeStorageItem.treeItemDescription.getter();
        v101 = v95;
        v103 = v102;
        v191 = *(v193 + 8);
        v191(v93, v89);
        v104 = sub_100004060(v100, v103, &v195);
        v95 = v101;

        *(v99 + 14) = v104;
        _os_log_impl(&_mh_execute_header, v97, v98, "Reminder Editing Session: Creating a session for placeholderReminder {acquirer: %s, item: %s}", v99, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v191 = *(v92 + 8);
        v191(v93, v89);
      }

      v121 = v165;
      v122 = v177;
      v123 = v175;
      v124 = v166;
      v125 = *(v166 + 320);
      v162 = v95;
      v125(v95, v167, v166);
      v127 = v179;
      v126 = v180;
      v128 = v178;
      v129 = (*(v178 + 48))(v180, 1, v179);
      v130 = v176;
      if (v129 == 1)
      {
        sub_1000079B4(v126, &qword_1007761F8);
        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.fault.getter();
        v133 = os_log_type_enabled(v131, v132);
        v134 = v187;
        if (v133)
        {
          v135 = swift_slowAlloc();
          *v135 = 0;
          _os_log_impl(&_mh_execute_header, v131, v132, "Reminder Editing Session: Cannot create a session for placeholderReminder, no target list.", v135, 2u);
        }

        (*(v134 + 8))(v181, v188);
      }

      else
      {
        (*(v128 + 32))(v122, v126, v127);
        v186 = *(v121 + 40);
        v182 = swift_getObjectType();
        v136 = TTRRemindersListViewModel.ReminderID.objectID.getter();
        v137 = v122;
        v138 = v136;
        v139 = *(v128 + 16);
        v140 = v171;
        v139(v171, v137, v127);
        (*(v123 + 104))(v140, enum case for TTRRemindersListTargetContainer.targetList(_:), v130);
        v141 = v173;
        v142 = v172;
        v143 = v174;
        (*(v173 + 104))(v172, enum case for TTRRemindersListReminderInsertionPosition.afterAll(_:), v174);
        (*(v124 + 408))(v167, v124);
        v144 = TTRRemindersListInteractorType.newReminderChangeItem(objectID:title:targetContainer:position:remindersBeingSaved:)();

        (*(v141 + 8))(v142, v143);
        (*(v123 + 8))(v140, v176);
        if (v144)
        {
          v145 = v162;
          (v183)(v164, v162, v192);
          type metadata accessor for TTRRemindersListEditingSessionState();
          swift_allocObject();
          v146 = v144;
          TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)();
          v147 = v166;
          v148 = v167;
          (*(v166 + 432))();
          type metadata accessor for TTRReminderEditor();
          sub_100415FE8(&unk_1007756A0, &type metadata accessor for TTRReminderEditor);
          v149 = v146;

          TTRUndoableEditing.init(changeItem:undoManager:)();
          (*(v147 + 424))(v145, v195, v148, v147);

          (*(v178 + 8))(v177, v179);
          (*(v187 + 8))(v181, v188);
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_100058000(&qword_10076C6E0);
            v150 = v169;
            v151 = swift_allocObject();
            *(v151 + 16) = xmmword_10062D3F0;
            static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
            static TTRRemindersListEditingSessionDisplayTargets.reminderEditingComponents.getter();
            v195 = v151;
            sub_100415FE8(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
            sub_100058000(&qword_10076C6E8);
            sub_10000E188(&unk_1007756C0, &qword_10076C6E8);
            v152 = v192;
            v153 = v168;
            v154 = v170;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            sub_100058000(&qword_100772150);
            v155 = (*(v193 + 80) + 32) & ~*(v193 + 80);
            v156 = swift_allocObject();
            *(v156 + 16) = xmmword_10062D400;
            (v183)(v156 + v155, v162, v152);
            sub_1004F1000(v153, v156);
            swift_unknownObjectRelease();
            swift_setDeallocating();
            v191((v156 + v155), v152);
            swift_deallocClassInstance();
            (*(v150 + 8))(v153, v154);
          }

          goto LABEL_12;
        }

        v158 = Logger.logObject.getter();
        v159 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          *v160 = 0;
          _os_log_impl(&_mh_execute_header, v158, v159, "Reminder Editing Session: failed to create REMReminderChangeItem for placeholderReminder", v160, 2u);
        }

        (*(v178 + 8))(v177, v179);
        (*(v187 + 8))(v181, v188);
      }
    }

    else
    {
      v108 = v192;
      if (v54 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v109 = v191;
      v110 = v163;
      if (qword_1007672B0 != -1)
      {
        swift_once();
      }

      v111 = type metadata accessor for Logger();
      sub_100003E30(v111, qword_100782830);
      v112 = v193;
      (*(v193 + 16))(v110, a1, v108);

      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *v115 = 136315394;
        *(v115 + 4) = sub_100004060(v186, v109, &v195);
        *(v115 + 12) = 2080;
        sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
        v116 = TTRTreeStorageItem.treeItemDescription.getter();
        v117 = v108;
        v119 = v118;
        (*(v112 + 8))(v110, v117);
        v120 = sub_100004060(v116, v119, &v195);

        *(v115 + 14) = v120;
        _os_log_impl(&_mh_execute_header, v113, v114, "Reminder Editing Session: Attempting to create a session for invalid item {acquirer: %s, item: %s}", v115, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v112 + 8))(v110, v108);
      }
    }

LABEL_45:
    v157 = type metadata accessor for TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult();
    return (*(*(v157 - 8) + 56))(v194, 1, 1, v157);
  }

  v76 = v55;
  if (qword_1007672B0 != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  sub_100003E30(v77, qword_100782830);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&_mh_execute_header, v78, v79, "Reminder Editing Session: A session should always be available for uncommittedReminder", v80, 2u);
  }

  v81 = type metadata accessor for TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult();
  (*(*(v81 - 8) + 56))(v194, 1, 1, v81);
  return (*(v53 + 8))(v50, v76);
}

uint64_t sub_100412768()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1004127DC()
{
  result = TTRRemindersListEditingSessionProviderCapability.scheduleConclusionForFinishedEditingSession(_:options:)();
  if (result)
  {
    TTRRemindersListConcreteEditingSession.editingSessionState.getter();
    if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
    {
      type metadata accessor for RDIDispatchQueue();
      static RDIDispatchQueue.utilityQueue.getter();
      type metadata accessor for TTRRemindersInteraction();
      swift_allocObject();
      TTRRemindersInteraction.init(queue:)();
      v1 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
      v14 = sub_100003540(0, &qword_1007756E0);
      v15 = &protocol witness table for REMReminderChangeItem;
      v13[0] = v1;
      TTRRemindersInteraction.donateReminderCreation(_:)();

      sub_100004758(v13);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        v4 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v5 = *(v3 + 24);
          ObjectType = swift_getObjectType();
          v7 = sub_100415FE8(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
          (*(v5 + 56))(v3, v7, v4, ObjectType, v5);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (qword_1007672B0 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100003E30(v8, qword_100782830);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Reminder Editing Session: about to donate reminder update", v11, 2u);
      }

      type metadata accessor for RDIDispatchQueue();
      static RDIDispatchQueue.utilityQueue.getter();
      type metadata accessor for TTRRemindersInteraction();
      swift_allocObject();
      TTRRemindersInteraction.init(queue:)();
      v12 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
      v14 = sub_100003540(0, &qword_1007756E0);
      v15 = &protocol witness table for REMReminderChangeItem;
      v13[0] = v12;
      TTRRemindersInteraction.donateReminderUpdate(_:)();

      return sub_100004758(v13);
    }
  }

  return result;
}

uint64_t sub_100412AC4(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672B0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100782830);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25 = a2;
    v11 = v10;
    v27 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = TTRRemindersListConcreteEditingSession.acquirerName.getter();
    v14 = sub_100004060(v12, v13, &v27);
    v24 = v2;
    v15 = v14;

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    TTRRemindersListConcreteEditingSession.item.getter();
    sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v16 = v26;
    v17 = TTRTreeStorageItem.treeItemDescription.getter();
    v19 = v18;
    (*(v4 + 8))(v6, v16);
    v20 = sub_100004060(v17, v19, &v27);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Reminder Editing Session: update item {acquirer: %s, item: %s}", v11, 0x16u);
    swift_arrayDestroy();

    a2 = v25;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100058000(&qword_100772150);
    v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10062D400;
    TTRRemindersListConcreteEditingSession.item.getter();
    sub_1004F1000(a2, v23);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    (*(v4 + 8))(v23 + v22, v26);
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_100412E0C(uint64_t a1)
{
  v2 = sub_100058000(&qword_100782918);
  __chkstk_darwin(v2);
  v4 = &v24[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v24[-1] - v6);
  __chkstk_darwin(v8);
  v10 = (&v24[-1] - v9);
  if (TTRRemindersListEditingSessionProviderCapability.prepareToForceSave(_:isAsynchronous:)())
  {
    v11 = TTRRemindersListConcreteEditingSession.editingSessionState.getter();
    *v10 = sub_100413124(v10 + *(v2 + 48), v11);
    if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
    {
      sub_10000794C(v10, v7, &qword_100782918);
      v12 = *v7;
      v13 = *(v2 + 48);
      if (*v7)
      {
        v14 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
        (*(*(v14 - 8) + 8))(v7 + v13, v14);
        type metadata accessor for RDIDispatchQueue();
        static RDIDispatchQueue.utilityQueue.getter();
        type metadata accessor for TTRRemindersInteraction();
        swift_allocObject();
        TTRRemindersInteraction.init(queue:)();
        v24[3] = sub_100003540(0, &qword_10076BB00);
        v24[4] = &protocol witness table for REMReminder;
        v24[0] = v12;
        v15 = v12;
        TTRRemindersInteraction.donateReminderCreation(_:)();

        sub_100004758(v24);
      }

      else
      {

        v19 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
        (*(*(v19 - 8) + 8))(v7 + v13, v19);
      }
    }

    else
    {
    }

    sub_100016588(v10, v4, &qword_100782918);
    v18 = *v4;
    v20 = *(v2 + 48);
    v21 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
    (*(*(v21 - 8) + 32))(a1, &v4[v20], v21);
  }

  else
  {
    v16 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
    v17 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
    (*(*(v17 - 8) + 104))(a1, v16, v17);
    return 0;
  }

  return v18;
}

uint64_t sub_100413124(uint64_t a1, uint64_t a2)
{
  sub_100413F3C(a1);
  v12 = 0;
  v4 = objc_opt_self();
  static TTRLocalizableStrings.UndoAction.addReminder.getter();
  v5 = String._bridgeToObjectiveC()();

  v6 = swift_allocObject();
  v6[2] = &v12;
  v6[3] = v2;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1004161BC;
  *(v7 + 24) = v6;
  aBlock[4] = sub_100068444;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100727120;
  v8 = _Block_copy(aBlock);

  [v4 withActionName:v5 block:v8];

  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_100415190();
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_1004132E4(uint64_t a1)
{
  v2 = sub_100058000(&qword_100782908);
  __chkstk_darwin(v2);
  v4 = &v23[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23[-1] - v6;
  __chkstk_darwin(v8);
  v10 = &v23[-1] - v9;
  if (TTRRemindersListEditingSessionProviderCapability.prepareToForceSave(_:isAsynchronous:)())
  {
    v11 = TTRRemindersListConcreteEditingSession.editingSessionState.getter();
    v12 = &v10[*(v2 + 48)];
    *v12 = sub_100413620(v10, v11);
    v12[1] = v13;
    if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
    {
      sub_10000794C(v10, v7, &qword_100782908);
      v14 = *&v7[*(v2 + 48)];

      v15 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
      (*(*(v15 - 8) + 8))(v7, v15);
      if (v14)
      {
        type metadata accessor for RDIDispatchQueue();
        static RDIDispatchQueue.utilityQueue.getter();
        type metadata accessor for TTRRemindersInteraction();
        swift_allocObject();
        TTRRemindersInteraction.init(queue:)();
        v23[3] = sub_100003540(0, &qword_1007756E0);
        v23[4] = &protocol witness table for REMReminderChangeItem;
        v23[0] = v14;
        v16 = v14;
        TTRRemindersInteraction.donateReminderCreation(_:)();

        sub_100004758(v23);
      }
    }

    else
    {
    }

    sub_100016588(v10, v4, &qword_100782908);
    v19 = *&v4[*(v2 + 48)];
    v20 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
    (*(*(v20 - 8) + 32))(a1, v4, v20);
  }

  else
  {
    v17 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
    v18 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
    (*(*(v18 - 8) + 104))(a1, v17, v18);
    return 0;
  }

  return v19;
}

id sub_100413620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListReminderSaveOptions();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v21 = &v20 - v11;
  sub_100413F3C(a1);
  v13 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
  TTRRemindersListEditingSessionState.reminderSaveOptions.getter();
  v14 = *(v7 + 16);
  v22 = *(v3 + 32);
  v14(v9, v12, v6);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v22;
  (*(v7 + 32))(v17 + v15, v9, v6);
  *(v17 + v16) = v3;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_100058000(&qword_100775980);
  swift_allocObject();
  v18 = v13;
  swift_unknownObjectRetain();

  v23 = Future.init(_:)();
  sub_10000E188(&qword_100775990, &qword_100775980);
  Publisher<>.sinkNextOutput(_:)();
  (*(v7 + 8))(v21, v6);
  return v18;
}

void sub_1004138C4(void *a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  isEscapingClosureAtFileLocation = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 1);
  v12 = __chkstk_darwin(v10);
  v39 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v16 = v1;
  TTRRemindersListEditingSessionProviderCapability.prepareToDelete(_:)();
  v40 = a1;
  TTRRemindersListEditingSessionState.item.getter();
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v17 = *(v11 + 8);
  v17(v15, v10);
  v18 = (*(isEscapingClosureAtFileLocation + 88))(v9, v6);
  if (v18 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
LABEL_5:
    if (v18 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v18 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      (*(isEscapingClosureAtFileLocation + 8))(v9, v6);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = v39;
        TTRRemindersListEditingSessionState.item.getter();
        v30 = TTRRemindersListEditingSessionState.registeredUndoForAddingReminder.getter();
        sub_1004EFB24(v29, v30 & 1);
        swift_unknownObjectRelease();
        v17(v29, v10);
      }
    }

    else if (v18 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      if (qword_1007672B0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100003E30(v31, qword_100782830);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Reminder Editing Session: handleDeletion: invalid item type", v34, 2u);
      }
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    return;
  }

  (*(isEscapingClosureAtFileLocation + 96))(v9, v6);
  v20 = v41;
  v19 = v42;
  (*(v41 + 32))(v5, v9, v42);
  v21 = *(v1 + 56);
  ObjectType = swift_getObjectType();
  v23 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v10 = (*(v21 + 256))(v23, ObjectType, v21);

  if (v10)
  {
    v40 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.deleteReminder.getter();
    v17 = String._bridgeToObjectiveC()();

    v24 = swift_allocObject();
    *(v24 + 16) = v16;
    *(v24 + 24) = v10;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100415FE0;
    *(v6 + 24) = v24;
    aBlock[4] = sub_100068444;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_100726FB8;
    v9 = v19;
    v25 = v5;
    v26 = _Block_copy(aBlock);

    v27 = v10;

    [v40 withActionName:v17 block:v26];
    _Block_release(v26);

    (*(v20 + 8))(v25, v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_5;
  }

  if (qword_1007672B0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100003E30(v35, qword_100782830);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Reminder Editing Session: handleDeletion: missing REMReminder", v38, 2u);
  }

  (*(v20 + 8))(v5, v19);
}

void sub_100413F3C(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
  v66 = *(v3 - 8);
  __chkstk_darwin(v3);
  v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListEditingSessionProviderCapability.prepareToCommit(_:)();
  v7 = TTRRemindersListEditingSessionState.pendingMoveTargetList.getter();
  v63 = v3;
  if (v7)
  {
    v8 = v7;
    v62 = v2;
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003E30(v9, qword_100782830);

    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v69[0] = v61;
      *v13 = 136315394;
      v14 = v67;
      TTRRemindersListEditingSessionState.item.getter();
      sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      v15 = v5;
      v16 = v68;
      v17 = TTRTreeStorageItem.treeItemDescription.getter();
      v19 = v18;
      v20 = v16;
      v5 = v15;
      (*(v15 + 8))(v14, v20);
      v21 = sub_100004060(v17, v19, v69);

      *(v13 + 4) = v21;
      *(v13 + 12) = 2112;
      v22 = [v10 objectID];
      *(v13 + 14) = v22;
      v23 = v60;
      *v60 = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "Reminder Editing Session: moving to target list {item: %s, targetList: %@}", v13, 0x16u);
      sub_1000079B4(v23, &unk_10076DF80);

      sub_100004758(v61);
    }

    v2 = v62;
    v3 = v63;
    v69[0] = _typeName(_:qualified:)();
    v69[1] = v24;
    v25._countAndFlagsBits = 0x73694C65766F6D2DLL;
    v25._object = 0xE900000000000074;
    String.append(_:)(v25);
    type metadata accessor for TTRRemindersListConcreteEditingSession();
    swift_allocObject();

    TTRRemindersListConcreteEditingSession.init(acquirerName:editingSessionState:isFormallyAcquired:)();
    TTRRemindersListConcreteEditingSession.attributeEditor.getter();
    sub_10000C36C(v69, v70);
    dispatch thunk of TTRRemindersListAttributeEditing.setList(_:)();

    sub_100004758(v69);
  }

  v26 = 0xD000000000000019;
  v27 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
  v28 = [v27 listID];

  if (v28)
  {

    v29 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    v31 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
    v70 = sub_100003540(0, &qword_1007756E0);
    v71 = &protocol witness table for REMReminderChangeItem;
    v69[0] = v31;
    v32 = v67;
    TTRRemindersListEditingSessionState.item.getter();
    LOBYTE(v31) = (*(v29 + 360))(v69, v32, ObjectType, v29);
    (*(v5 + 8))(v32, v68);
    sub_100004758(v69);
    if (v31)
    {
      v33 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
      v34 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
      (*(*(v34 - 8) + 104))(v64, v33, v34);
      goto LABEL_21;
    }

    v35 = "reminder has been deleted";
    v26 = 0xD000000000000026;
  }

  else
  {
    v35 = "ovider";
  }

  v36 = enum case for TTRRemindersListReminderPostSaveMovement.removedFromList(_:);
  v37 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
  (*(*(v37 - 8) + 104))(v64, v36, v37);
  if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
  {
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v64 = v5;
    v38 = type metadata accessor for Logger();
    sub_100003E30(v38, qword_100782830);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v62 = v2;
      v42 = v41;
      v61 = swift_slowAlloc();
      v69[0] = v61;
      *v42 = 136315394;
      v43 = v67;
      TTRRemindersListEditingSessionState.item.getter();
      sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      v44 = v68;
      v45 = TTRTreeStorageItem.treeItemDescription.getter();
      v47 = v46;
      (*(v64 + 8))(v43, v44);
      v48 = sub_100004060(v45, v47, v69);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      v49 = sub_100004060(v26, v35 | 0x8000000000000000, v69);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v39, v40, "Discarding uncommitted reminder {item: %s, reason: %s}", v42, 0x16u);
      swift_arrayDestroy();

      v2 = v62;
    }

    else
    {
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = v63;
    if (Strong)
    {
      v51 = Strong;
      v52 = v67;
      TTRRemindersListEditingSessionState.item.getter();
      v53 = *(v51 + 40);
      v54 = swift_getObjectType();
      (*(v53 + 440))(v52, v54, v53);
      v55 = *(v51 + 40);
      v56 = swift_getObjectType();
      (*(v55 + 400))(v52, v56, v55);

      (*(v64 + 8))(v52, v68);
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

LABEL_21:
  (*(v66 + 104))(v65, enum case for TTRRemindersListEditingSessionState.SaveState.saving(_:), v3);
  TTRRemindersListEditingSessionState.saveState.setter();
  if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
  {
    v57 = *(v2 + 56);
    v58 = swift_getObjectType();
    (*(v57 + 416))(v58, v57);
    swift_getObjectType();
    v59 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
    dispatch thunk of TTRRemindersListInteractorType.optimisticallyUpdateUpdateReminderIDOrdering(in:forReminderBeingSaved:)();
  }
}

uint64_t sub_10041488C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a3;

  dispatch thunk of TTRRemindersListInteractorType.save(_:completion:)();
}

void sub_100414974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v59 = *(a3 + 16);
  if (!(v59 >> 62))
  {
    v13 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_30:

    v31 = *(a1 + 16);
    if (v31)
    {
LABEL_20:
      v66 = &_swiftEmptyArrayStorage;
      sub_1004A1CD0(0, v31, 0);
      v32 = v66;
      v33 = a1 + 32;
      do
      {
        swift_getErrorValue();
        swift_errorRetain();
        v34 = Error.localizedDescription.getter();
        v36 = v35;

        v66 = v32;
        v38 = v32[2];
        v37 = v32[3];
        if (v38 >= v37 >> 1)
        {
          sub_1004A1CD0((v37 > 1), v38 + 1, 1);
          v32 = v66;
        }

        v32[2] = v38 + 1;
        v39 = &v32[2 * v38];
        v39[4] = v34;
        v39[5] = v36;
        v33 += 8;
        --v31;
      }

      while (v31);
      v66 = v32;
      sub_100058000(&unk_100781F20);
      sub_10000E188(&qword_100771E20, &unk_100781F20);
      v40 = BidirectionalCollection<>.joined(separator:)();
      v42 = v41;

      if (qword_1007672B0 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100003E30(v43, qword_100782830);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v66 = v47;
        *v46 = 136315138;
        v48 = sub_100004060(v40, v42, &v66);

        *(v46 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v44, v45, "Reminder Editing Session: failed to save reminder(s) {errors: %s}", v46, 0xCu);
        sub_100004758(v47);

LABEL_34:

        goto LABEL_35;
      }

      goto LABEL_35;
    }

LABEL_31:
    if (qword_1007672B0 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_30;
  }

LABEL_4:
  if (v13 >= 1)
  {
    v53 = a1;
    v64 = v59 & 0xC000000000000001;
    v63 = enum case for TTRRemindersListEditingSessionState.SaveState.saved(_:);
    v62 = (v10 + 104);
    v56 = (v6 + 8);

    v14 = 0;
    v15 = &selRef_layoutIfNeeded;
    *&v16 = 136315138;
    v54 = v16;
    v65 = v13;
    v57 = v12;
    v58 = v9;
    do
    {
      if (v64)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      (*v62)(v12, v63, v9);
      TTRRemindersListEditingSessionState.saveState.setter();
      v17 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
      v18 = [v17 v15[422]];

      if ([v18 isSaved])
      {
      }

      else
      {
        v61 = v18;
        if (qword_1007672B0 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_100003E30(v19, qword_100782830);

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v66 = v55;
          *v22 = v54;
          TTRRemindersListEditingSessionState.item.getter();
          sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
          v23 = TTRTreeStorageItem.treeItemDescription.getter();
          v24 = v5;
          v26 = v25;
          v27 = v56;
          (*v56)(v8, v24);
          v28 = sub_100004060(v23, v26, &v66);

          *(v22 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v20, v21, "Reminder Editing Session: remove editing session state due to no-op'ed save {item: %s}", v22, 0xCu);
          sub_100004758(v55);
        }

        else
        {

          v24 = v5;
          v27 = v56;
        }

        v29 = *(Strong + 56);
        ObjectType = swift_getObjectType();
        TTRRemindersListEditingSessionState.item.getter();
        (*(v29 + 448))(v8, ObjectType, v29);

        (*v27)(v8, v24);

        v5 = v24;
        v12 = v57;
        v9 = v58;
        v15 = &selRef_layoutIfNeeded;
      }

      ++v14;
    }

    while (v65 != v14);

    a1 = v53;
LABEL_19:
    v31 = *(a1 + 16);
    if (v31)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_32:
  v49 = type metadata accessor for Logger();
  sub_100003E30(v49, qword_100782830);
  v44 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v44, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v44, v50, "Reminder Editing Session: reminder(s) saved", v51, 2u);
    goto LABEL_34;
  }

LABEL_35:
}

void sub_100415190()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for TTRRemindersListEditingSessionState.SaveState.saved(_:), v7);
  TTRRemindersListEditingSessionState.saveState.setter();
  v10 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
  v11 = [v10 saveRequest];

  if ([v11 isSaved])
  {
  }

  else
  {
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_100782830);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = v3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v26 = v1;
      v18 = v17;
      v28 = v17;
      *v16 = 136315138;
      TTRRemindersListEditingSessionState.item.getter();
      sub_100415FE8(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      v19 = TTRTreeStorageItem.treeItemDescription.getter();
      v21 = v20;
      (*(v27 + 8))(v5, v2);
      v22 = sub_100004060(v19, v21, &v28);

      *(v16 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "Reminder Editing Session: remove editing session state due to no-op'ed save {item: %s}", v16, 0xCu);
      sub_100004758(v18);
      v1 = v26;

      v3 = v27;
    }

    v23 = *(v1 + 56);
    ObjectType = swift_getObjectType();
    TTRRemindersListEditingSessionState.item.getter();
    (*(v23 + 448))(v5, ObjectType, v23);

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100415530(uint64_t a1, void *a2)
{
  swift_getObjectType();
  sub_100058000(&qword_10076B780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10062D420;
  *(v3 + 32) = a2;
  v4 = a2;
  dispatch thunk of TTRDeleteRemindersInteractorCapability.delete(_:)();
}

void sub_1004155D0(void **a1)
{
  v2 = type metadata accessor for TTRRemindersListReminderSaveOptions();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v6 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
  TTRRemindersListEditingSessionState.reminderSaveOptions.getter();
  v7 = dispatch thunk of TTRRemindersListInteractorType.saveAndFetchSynchronously(_:options:)();

  (*(v3 + 8))(v5, v2);
  v8 = *a1;
  *a1 = v7;
}

uint64_t sub_1004156F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v32 = a5;
  v33 = a7;
  v37 = a4;
  v38 = a3;
  v12 = type metadata accessor for TTRRemindersListReminderSaveOptions();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  v31 = [a3 objectID];
  v36 = objc_opt_self();
  static TTRLocalizableStrings.UndoAction.addReminder.getter();
  v34 = String._bridgeToObjectiveC()();

  (*(v13 + 16))(v15, a6, v12);
  v17 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v32;
  *(v21 + 2) = v37;
  *(v21 + 3) = v22;
  *(v21 + 4) = v38;
  (*(v13 + 32))(&v21[v17], v15, v12);
  *&v21[v18] = v33;
  *&v21[v19] = v35;
  v23 = v31;
  *&v21[v20] = v31;
  v24 = &v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v24 = sub_10012EC9C;
  v24[1] = v16;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1004160F0;
  *(v25 + 24) = v21;
  aBlock[4] = sub_100068444;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100727080;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v27 = v38;

  v28 = v23;

  v29 = v34;
  [v36 withActionName:v34 block:v26];

  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100415A34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  swift_getObjectType();
  sub_100058000(&qword_100782910);
  v13 = (sub_100058000(&qword_100782900) - 8);
  v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D400;
  v16 = (v15 + v14);
  v17 = v13[14];
  *v16 = a3;
  v18 = type metadata accessor for TTRRemindersListReminderSaveOptions();
  (*(*(v18 - 8) + 16))(&v16[v17], a4, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a6;
  v20[4] = a7;
  v20[5] = a8;
  v20[6] = a9;
  v21 = a3;

  v22 = a7;

  dispatch thunk of TTRRemindersListInteractorType.save(_:completion:)();
}

uint64_t sub_100415C3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100415190();
  }

  if (*(a1 + 16))
  {
    v8 = *(a1 + 32);
    swift_errorRetain();
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003E30(v9, qword_100782830);
    swift_errorRetain();
    v10 = a4;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = a5;
      v16 = swift_slowAlloc();
      v29 = v16;
      *v13 = 136315394;
      swift_getErrorValue();
      v17 = Error.rem_errorDescription.getter();
      v19 = sub_100004060(v17, v18, &v29);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v10;
      *v14 = v10;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "Reminder Editing Session: error saving reminder async {error: %s, objectID: %@}", v13, 0x16u);
      sub_1000079B4(v14, &unk_10076DF80);

      sub_100004758(v16);
      a5 = v15;
    }

    swift_errorRetain();
    a5(v8, 1);
  }

  else
  {
    if (qword_1007672B0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_100782830);
    v23 = a4;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Reminder Editing Session: reminder saved async {objectID: %@}", v26, 0xCu);
      sub_1000079B4(v27, &unk_10076DF80);
    }

    return (a5)(v23, 0);
  }
}

uint64_t sub_100415FE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100416030(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TTRRemindersListReminderSaveOptions() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + v7);
  v12 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004156F8(a1, a2, v8, v9, v10, v2 + v6, v11, v12);
}

uint64_t sub_1004160F0()
{
  v1 = *(type metadata accessor for TTRRemindersListReminderSaveOptions() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100415A34(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1004161E0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100782920);
  v1 = sub_100003E30(v0, qword_100782920);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004162A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = swift_getObjectType();
  sub_100058000(&qword_10076BE10);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v4[12] = *(v6 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v8;
  v4[18] = v7;

  return _swift_task_switch(sub_1004163FC, v8, v7);
}

uint64_t sub_1004163FC()
{
  v49 = v0;
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100782920);
  v46 = *(v3 + 16);
  v46(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v10 = v0[10];
  v11 = v0[11];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v12 = 136315650;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100004060(v13, v14, &v48);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100004060(0xD00000000000002CLL, 0x80000001006862F0, &v48);
    *(v12 + 22) = 2080;
    sub_10041B7A8(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v11 + 8))(v9, v10);
    v19 = sub_100004060(v16, v18, &v48);

    *(v12 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: %s {itemID: %s}", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v20 = v0[7];
  v21 = OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_pendingStartEditingTask;
  if (*(v20 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_pendingStartEditingTask))
  {

    sub_100058000(&qword_10076B280);
    Task.cancel()();
  }

  v41 = v0[7];
  v22 = v0[13];
  v24 = v0[10];
  v23 = v0[11];
  v39 = v24;
  v40 = v22;
  v25 = v0[9];
  v42 = v0[12];
  v43 = v25;
  v38 = v0[6];
  v44 = v0[5];
  v45 = v0[8];
  v26 = v0[4];
  *(v20 + v21) = 0;

  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  v46(v22, v26, v24);
  v47 = v41;

  v28 = static MainActor.shared.getter();
  v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v30 = (v42 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  *(v32 + 24) = &protocol witness table for MainActor;
  (*(v23 + 32))(v32 + v29, v40, v39);
  *(v32 + v30) = v47;
  v33 = (v32 + v31);
  *v33 = v44;
  v33[1] = v38;
  *(v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) = v45;
  v34 = sub_10009EC28(0, 0, v43, &unk_10063E6F8, v32);
  v0[19] = v34;
  *(v20 + v21) = v34;

  v35 = swift_task_alloc();
  v0[20] = v35;
  v36 = sub_100058000(&qword_10076B280);
  *v35 = v0;
  v35[1] = sub_1004168DC;

  return Task<>.value.getter(v0 + 2, v34, v36);
}

uint64_t sub_1004168DC()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_1004169FC, v3, v2);
}

uint64_t sub_1004169FC()
{

  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_100416AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a1;
  v8[5] = a4;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[13] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[14] = v11;
  v8[15] = v10;

  return _swift_task_switch(sub_100416BA0, v11, v10);
}

uint64_t sub_100416BA0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[5], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for TTRRemindersListViewModel.ItemID.sectionID(_:))
  {
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_100416D88;
    v6 = v0[5];

    return sub_1004175C4(v6, 0, 1);
  }

  else if (v4 == enum case for TTRRemindersListViewModel.ItemID.reminderID(_:) || v4 == enum case for TTRRemindersListViewModel.ItemID.objectID(_:) || v4 == enum case for TTRRemindersListViewModel.ItemID.named(_:))
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_1004171C4;
    v11 = v0[5];

    return sub_100418040(v11, 0, 1);
  }

  else
  {

    return _diagnoseUnexpectedEnumCase<A>(type:)();
  }
}

uint64_t sub_100416D88(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(sub_100416EB0, v4, v3);
}

uint64_t sub_100416EB0()
{
  v26 = v0;
  v1 = *(v0 + 136);

  if (v1)
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = *(v0 + 80);
    v6 = sub_10041B7A8(&qword_1007829B0, type metadata accessor for TTRIBoardEditableColumnHeader);
    v7 = *(v3 + 8);
    v8 = v2;
    v7(v4, v5);
    v9 = *(v0 + 136);
    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      v22 = *(v0 + 32);
      (*(v0 + 56))(v8, v6);

      *v22 = v2;
      v22[1] = v6;
      goto LABEL_12;
    }
  }

  else
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    v9 = 0;
    v6 = 0;
  }

  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003E30(v10, qword_100782920);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v14 = 136315906;
    v15 = _typeName(_:qualified:)();
    v17 = sub_100004060(v15, v16, &v25);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_100004060(0xD00000000000002CLL, 0x80000001006862F0, &v25);
    *(v14 + 22) = 2080;
    *(v0 + 16) = v9;
    *(v0 + 24) = v6;
    sub_100058000(&qword_10076B280);
    v18 = Optional.descriptionOrNil.getter();
    v20 = sub_100004060(v18, v19, &v25);

    *(v14 + 24) = v20;
    *(v14 + 32) = 1024;
    *(v14 + 34) = static Task<>.isCancelled.getter() & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: %s - Unable to scroll to item {cell: %s, taskIsCancelled: %{BOOL}d", v14, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v21 = *(v0 + 32);
  *v21 = 0;
  v21[1] = 0;
LABEL_12:

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1004171C4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 152) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(sub_1004172EC, v4, v3);
}

uint64_t sub_1004172EC()
{
  v21 = v0;
  v1 = *(v0 + 152);

  if (v1)
  {
    v2 = *(v0 + 152);
    v3 = sub_10041B7A8(&qword_100778EC0, type metadata accessor for TTRIBoardReminderCell);
    v4 = v2;
    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      v17 = *(v0 + 32);
      (*(v0 + 56))(v4, v3);

      *v17 = v2;
      v17[1] = v3;
      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100782920);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136315906;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100004060(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100004060(0xD00000000000002CLL, 0x80000001006862F0, &v20);
    *(v9 + 22) = 2080;
    *(v0 + 16) = v2;
    *(v0 + 24) = v3;
    sub_100058000(&qword_10076B280);
    v13 = Optional.descriptionOrNil.getter();
    v15 = sub_100004060(v13, v14, &v20);

    *(v9 + 24) = v15;
    *(v9 + 32) = 1024;
    *(v9 + 34) = static Task<>.isCancelled.getter() & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: %s - Unable to scroll to item {cell: %s, taskIsCancelled: %{BOOL}d", v9, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = *(v0 + 32);
  *v16 = 0;
  v16[1] = 0;
LABEL_12:

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1004175C4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 160) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = swift_getObjectType();
  v5 = type metadata accessor for IndexPath();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  sub_100058000(&unk_100771B10);
  *(v4 + 72) = swift_task_alloc();
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 112) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 120) = v8;
  *(v4 + 128) = v7;

  return _swift_task_switch(sub_10041776C, v8, v7);
}

uint64_t sub_10041776C()
{
  v40 = v0;
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 136) = sub_100003E30(v1, qword_100782920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100004060(v5, v6, &v39);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100004060(0xD000000000000037, 0x8000000100686320, &v39);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v10 + 16);
  v11(v8, *(v0 + 16), v9);
  if ((*(v10 + 88))(v8, v9) != enum case for TTRRemindersListViewModel.ItemID.sectionID(_:))
  {
    v17 = *(v0 + 104);
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);

    v15 = *(v19 + 8);
    v15(v17, v18);
    goto LABEL_9;
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 48);
  v14 = *(v0 + 56);
  v15 = *(*(v0 + 88) + 8);
  v15(*(v0 + 104), *(v0 + 80));
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v16 = *(v0 + 72);

    sub_1000079B4(v16, &unk_100771B10);
LABEL_9:
    v11(*(v0 + 96), *(v0 + 16), *(v0 + 80));
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 96);
    v24 = *(v0 + 80);
    if (v22)
    {
      v25 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = _typeName(_:qualified:)();
      v28 = sub_100004060(v26, v27, &v39);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      sub_10041B7A8(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v15(v23, v24);
      v32 = sub_100004060(v29, v31, &v39);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s: columnID/indexPath not found {itemID: %s}", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v15(v23, v24);
    }

    v33 = *(v0 + 8);

    return v33(0);
  }

  sub_1000079B4(*(v0 + 72), &unk_100771B10);
  v35 = swift_task_alloc();
  *(v0 + 144) = v35;
  *v35 = v0;
  v35[1] = sub_100417CAC;
  v36 = *(v0 + 24);
  v37 = *(v0 + 160);
  v38 = *(v0 + 16);

  return sub_100419210(v38, v36, v37);
}

uint64_t sub_100417CAC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 152) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return _swift_task_switch(sub_100417DD4, v4, v3);
}

uint64_t sub_100417DD4()
{
  v22 = v0;
  v1 = *(v0 + 152);

  if (v1)
  {
    v2 = *(v0 + 152);
    result = IndexPath.init(item:section:)();
    v4 = *&v2[OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView];
    if (!v4)
    {
      __break(1u);
      return result;
    }

    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = UICollectionElementKindSectionHeader;
    v9 = v4;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v11 = [v9 supplementaryViewForElementKind:v8 atIndexPath:isa];

    (*(v6 + 8))(v5, v7);
    if (v11)
    {
      type metadata accessor for TTRIBoardEditableColumnHeader(0);
      v12 = swift_dynamicCastClass();

      if (!v12)
      {
      }

      goto LABEL_11;
    }
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = _typeName(_:qualified:)();
      v19 = sub_100004060(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s: unable to find column cell", v15, 0xCu);
      sub_100004758(v16);
    }
  }

  v12 = 0;
LABEL_11:

  v20 = *(v0 + 8);

  return v20(v12);
}

uint64_t sub_100418040(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 248) = a3;
  *(v4 + 48) = a1;
  *(v4 + 72) = swift_getObjectType();
  sub_100058000(&unk_100771B10);
  *(v4 + 80) = swift_task_alloc();
  v5 = type metadata accessor for IndexPath();
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  sub_100058000(&unk_10076BB50);
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = type metadata accessor for MainActor();
  *(v4 + 160) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 168) = v8;
  *(v4 + 176) = v7;

  return _swift_task_switch(sub_100418224, v8, v7);
}

uint64_t sub_100418224()
{
  v42 = v0;
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 184) = sub_100003E30(v1, qword_100782920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100004060(v5, v6, &v41);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100004060(0xD000000000000032, 0x80000001006862B0, &v41);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = *(v0 + 112);
  TTRRemindersBoardMainDiffableDataSource.columnID(containingItemID:)();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = *(v0 + 112);

    v12 = &unk_10076BB50;
    v13 = v11;
LABEL_9:
    sub_1000079B4(v13, v12);
    (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 48), *(v0 + 120));
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    v23 = *(v0 + 120);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = sub_100004060(v25, v26, &v41);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      sub_10041B7A8(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v22 + 8))(v21, v23);
      v31 = sub_100004060(v28, v30, &v41);

      *(v24 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s: columnID/indexPath not found {itemID: %s}", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }

    v32 = *(v0 + 8);

    return v32(0);
  }

  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  v16 = *(v0 + 80);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 112), *(v0 + 120));
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v17 = *(v0 + 80);
    (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));

    v12 = &unk_100771B10;
    v13 = v17;
    goto LABEL_9;
  }

  v34 = *(v0 + 104);
  v35 = *(v0 + 64);
  (*(*(v0 + 96) + 32))(v34, *(v0 + 80), *(v0 + 88));
  v36 = [*(v35 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainCollectionView) indexPathsForVisibleItems];
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + 249) = sub_10010D158(v34, v37);

  v38 = swift_task_alloc();
  *(v0 + 192) = v38;
  *v38 = v0;
  v38[1] = sub_1004187D4;
  v39 = *(v0 + 144);
  v40 = *(v0 + 248);

  return sub_100419210(v39, 0, v40);
}

uint64_t sub_1004187D4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 200) = a1;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);

  return _swift_task_switch(sub_1004188FC, v4, v3);
}

void sub_1004188FC()
{
  v31 = v0;
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollingController);
    *(v0 + 208) = v2;
    if (v2)
    {
      v3 = *(v0 + 249);
      v4 = *(v0 + 248);
      v2;
      *(v0 + 216) = static MainActor.shared.getter();
      if (v3 != 1 || v4 == 0)
      {
        v6 = swift_task_alloc();
        *(v0 + 232) = v6;
        *v6 = v0;
        v6[1] = sub_100418DF4;
        v8 = *(v0 + 48);
        v7 = *(v0 + 56);

        sub_1005E04D8(v8, v7);
      }

      else
      {
        v23 = swift_task_alloc();
        *(v0 + 224) = v23;
        *v23 = v0;
        v23[1] = sub_100418C44;
        v25 = *(v0 + 48);
        v24 = *(v0 + 56);

        sub_1005DF518(v25, v24);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 144);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    v17 = *(v0 + 88);
    if (v11)
    {
      v28 = *(v0 + 104);
      v29 = *(v0 + 120);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      v20 = _typeName(_:qualified:)();
      v27 = v12;
      v22 = sub_100004060(v20, v21, &v30);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s: unable to find column cell", v18, 0xCu);
      sub_100004758(v19);

      (*(v15 + 8))(v28, v17);
      (*(v13 + 8))(v27, v29);
    }

    else
    {

      (*(v15 + 8))(v16, v17);
      (*(v13 + 8))(v12, v14);
    }

    v26 = *(v0 + 8);

    v26(0);
  }
}

uint64_t sub_100418C44(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100418D84, v4, v3);
}

uint64_t sub_100418D84()
{
  v1 = v0[3];
  v2 = v0[26];

  v0[30] = v1;
  v3 = v0[21];
  v4 = v0[22];

  return _swift_task_switch(sub_100418FA4, v3, v4);
}

uint64_t sub_100418DF4(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100418F34, v4, v3);
}

uint64_t sub_100418F34()
{
  v1 = v0[5];
  v2 = v0[26];

  v0[30] = v1;
  v3 = v0[21];
  v4 = v0[22];

  return _swift_task_switch(sub_100418FA4, v3, v4);
}

uint64_t sub_100418FA4()
{
  v31 = v0;
  v1 = *(v0 + 240);

  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);

    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v2, v3);
    v8 = *(v0 + 240);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 200);
    v13 = *(v0 + 144);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 96);
    v17 = *(v0 + 104);
    v18 = *(v0 + 88);
    if (v11)
    {
      v28 = *(v0 + 104);
      v29 = *(v0 + 120);
      v19 = swift_slowAlloc();
      v27 = v12;
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136315138;
      v21 = _typeName(_:qualified:)();
      v26 = v13;
      v23 = sub_100004060(v21, v22, &v30);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s: unable to find reminder cell", v19, 0xCu);
      sub_100004758(v20);

      (*(v16 + 8))(v28, v18);
      (*(v14 + 8))(v26, v29);
    }

    else
    {

      (*(v16 + 8))(v17, v18);
      (*(v14 + 8))(v13, v15);
    }

    v8 = 0;
  }

  v24 = *(v0 + 8);

  return v24(v8);
}

uint64_t sub_100419210(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 192) = a3;
  *(v4 + 24) = a1;
  *(v4 + 48) = swift_getObjectType();
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  v6 = sub_100058000(&qword_100782980);
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();
  sub_100058000(&unk_100771B10);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v7 = type metadata accessor for IndexPath();
  *(v4 + 120) = v7;
  *(v4 + 128) = *(v7 - 8);
  *(v4 + 136) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 144) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 152) = v9;
  *(v4 + 160) = v8;

  return _swift_task_switch(sub_100419420, v9, v8);
}

uint64_t sub_100419420()
{
  v68 = v0;
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100782920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100004060(v5, v6, &v67);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100004060(0xD000000000000030, 0x8000000100686270, &v67);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = *(v0 + 112);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = *(v0 + 112);
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 56);
    v15 = *(v0 + 24);

    sub_1000079B4(v11, &unk_100771B10);
    (*(v13 + 16))(v12, v15, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    v21 = *(v0 + 56);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v22 = 136315394;
      v23 = _typeName(_:qualified:)();
      v25 = sub_100004060(v23, v24, &v67);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      sub_10041B7A8(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v20 + 8))(v19, v21);
      v29 = sub_100004060(v26, v28, &v67);

      *(v22 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: indexPath not found {columnID: %s}", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    v52 = 0;
    goto LABEL_20;
  }

  v30 = *(v0 + 40);
  (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 112), *(v0 + 120));
  v31 = *(v30 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainCollectionView);
  *(v0 + 168) = v31;
  v32 = UICollectionView.visibleCellForItem(at:)();
  if (v32)
  {
    v33 = v32;
    v34 = v32;
    [v31 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    [v34 bounds];
    [v31 convertRect:v34 fromCoordinateSpace:?];
    v44 = v43;
    v46 = v45;
    v70.origin.x = v36;
    v70.origin.y = v38;
    v70.size.width = v40;
    v70.size.height = v42;
    MinY = CGRectGetMinY(v70);
    v71.origin.x = v36;
    v71.origin.y = v38;
    v71.size.width = v40;
    v71.size.height = v42;
    v73.size.height = CGRectGetHeight(v71);
    v72.origin.x = v36;
    v72.origin.y = v38;
    v72.size.width = v40;
    v72.size.height = v42;
    v73.origin.x = v44;
    v73.origin.y = MinY;
    v73.size.width = v46;
    if (!CGRectContainsRect(v72, v73))
    {
      v48 = *(v0 + 192);
      v49 = *(v0 + 32);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v31 scrollToItemAtIndexPath:isa atScrollPosition:v49 animated:v48];
    }

    v51 = v33;
    goto LABEL_19;
  }

  v53 = *(v0 + 192);
  v54 = *(v0 + 32);
  v55 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v31 scrollToItemAtIndexPath:v55 atScrollPosition:v54 animated:v53];

  if ((v53 & 1) == 0)
  {

    [v31 layoutIfNeeded];
    v61 = *(v0 + 168);
    v62 = IndexPath._bridgeToObjectiveC()().super.isa;
    v34 = [v61 cellForItemAtIndexPath:v62];

    v51 = v34;
LABEL_19:
    v64 = *(v0 + 128);
    v63 = *(v0 + 136);
    v65 = *(v0 + 120);
    v52 = sub_10041B398(v51);

    (*(v64 + 8))(v63, v65);
LABEL_20:

    v66 = *(v0 + 8);

    return v66(v52);
  }

  v56 = *(v0 + 136);
  *(v0 + 16) = *(*(v0 + 40) + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_willDisplayCell);
  sub_100058000(&qword_100782988);
  sub_10000E188(&qword_100782990, &qword_100782988);
  Publisher<>.rem_bufferedValues.getter();
  v57 = swift_task_alloc();
  *(v0 + 176) = v57;
  *(v57 + 16) = v56;
  v58 = swift_task_alloc();
  *(v0 + 184) = v58;
  *v58 = v0;
  v58[1] = sub_100419B9C;
  v59 = *(v0 + 104);

  return sub_100419F30(v59, &unk_10063E6C0, v57);
}

uint64_t sub_100419B9C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[10];
    v7 = v2[11];

    (*(v7 + 8))(v5, v6);
    sub_1000079B4(v4, &unk_100771B10);
    v8 = v2[19];
    v9 = v2[20];

    return _swift_task_switch(sub_100419D14, v8, v9);
  }
}

uint64_t sub_100419D14()
{

  v1 = v0[21];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [v1 cellForItemAtIndexPath:isa];

  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v7 = sub_10041B398(v3);

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_100419E20(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100419EB8, v4, v3);
}

uint64_t sub_100419EB8()
{

  v1 = static IndexPath.== infix(_:_:)();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100419F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for IndexPath();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_100058000(&unk_100771B10);
  v4[9] = swift_task_alloc();
  v6 = sub_100058000(&qword_100782980);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_100058000(&qword_100782998);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10041A0FC, 0, 0);
}

uint64_t sub_10041A0FC()
{
  (*(v0[11] + 16))(v0[12], v0[5], v0[10]);
  sub_10000E188(&qword_1007829A0, &qword_100782980);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000E188(&qword_1007829A8, &qword_100782998);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_10041A248;
  v3 = v0[13];
  v4 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v3, v1);
}

uint64_t sub_10041A248()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v3 = sub_10041A56C;
  }

  else
  {
    v3 = sub_10041A374;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10041A374()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v0[7] + 56))(v0[2], 1, 1, v0[6]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[8];
    v7 = v0[3];
    v8 = *(v3 + 32);
    v0[18] = v8;
    v0[19] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v8(v6, v1, v2);
    v11 = (v7 + *v7);
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_10041A5F8;
    v10 = v0[8];

    return v11(v10);
  }
}

uint64_t sub_10041A56C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10041A5F8(char a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v6 = *(v4 + 112);
    v5 = *(v4 + 120);
    v7 = *(v4 + 104);
    (*(*(v4 + 56) + 8))(*(v4 + 64), *(v4 + 48));
    (*(v6 + 8))(v5, v7);
    v8 = sub_10041A924;
  }

  else
  {
    *(v4 + 176) = a1 & 1;
    v8 = sub_10041A758;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10041A758()
{
  if (*(v0 + 176) == 1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 64);
    v3 = *(v0 + 48);
    v4 = *(v0 + 16);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    v1(v4, v2, v3);
    (*(*(v0 + 56) + 56))(*(v0 + 16), 0, 1, *(v0 + 48));

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    v7 = sub_10000E188(&qword_1007829A8, &qword_100782998);
    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    *v8 = v0;
    v8[1] = sub_10041A248;
    v9 = *(v0 + 104);
    v10 = *(v0 + 72);

    return dispatch thunk of AsyncIteratorProtocol.next()(v10, v9, v7);
  }
}

uint64_t sub_10041A924()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10041A9B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v36 = a1;
  swift_getObjectType();
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = &v32 - v11;
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_100782920);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39[0] = v34;
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100004060(v16, v17, v39);
    v33 = v13;
    v19 = a2;
    v20 = v18;

    *(v15 + 4) = v20;
    a2 = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_100004060(0xD00000000000002ALL, 0x8000000100674E00, v39);
    v21 = v33;
    _os_log_impl(&_mh_execute_header, v33, v14, "%s: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10000B0D8(a2, v39);
  sub_100058000(&qword_1007829B8);
  type metadata accessor for TTRIBoardEditableColumnHeader(0);
  if (swift_dynamicCast())
  {
    v22 = v38;
    type metadata accessor for TTRIBoardColumnCollectionViewCell();
    UIView.ancestorView<A>(ofType:)();
    v23 = v39[0];
    if (v39[0])
    {
      v24 = [*(v4 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainCollectionView) indexPathForCell:v39[0]];
      if (v24)
      {
        v25 = v37;
        v26 = v24;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10041AE10(v23, v25, v4, a3 & 1);
        (*(v8 + 8))(v25, v7);
        return;
      }
    }

    else
    {
    }
  }

  sub_10000B0D8(a2, v39);
  type metadata accessor for TTRIBoardReminderCell();
  if (swift_dynamicCast())
  {
    v27 = v38;
    type metadata accessor for TTRIBoardColumnCollectionViewCell();
    UIView.ancestorView<A>(ofType:)();
    v28 = v39[0];
    if (v39[0])
    {
      v29 = [*(v4 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainCollectionView) indexPathForCell:v39[0]];
      if (v29)
      {
        v30 = v35;
        v31 = v29;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10041AE10(v28, v30, v4, a3 & 1);
        sub_10041B0E8(v27, v28, v36, a3 & 1);

        (*(v8 + 8))(v30, v7);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_10041AE10(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100782920);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100004060(v11, v12, &v29);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100004060(0xD000000000000018, 0x8000000100686390, &v29);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(a3 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainCollectionView);
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [a1 bounds];
  [v14 convertRect:a1 fromCoordinateSpace:?];
  v24 = v23;
  v26 = v25;
  v31.origin.x = v16;
  v31.origin.y = v18;
  v31.size.width = v20;
  v31.size.height = v22;
  MinY = CGRectGetMinY(v31);
  v32.origin.x = v16;
  v32.origin.y = v18;
  v32.size.width = v20;
  v32.size.height = v22;
  v34.size.height = CGRectGetHeight(v32);
  v33.origin.x = v16;
  v33.origin.y = v18;
  v33.size.width = v20;
  v33.size.height = v22;
  v34.origin.x = v24;
  v34.origin.y = MinY;
  v34.size.width = v26;
  if (!CGRectContainsRect(v33, v34))
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v14 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:a4 & 1];
  }
}

void sub_10041B0E8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100782920);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100004060(v12, v13, &v17);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100004060(0xD000000000000020, 0x8000000100686360, &v17);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(a2 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollingController);
  if (v15)
  {
    v16 = v15;
    sub_1005DF210(a3, a1, a4 & 1);
  }

  else
  {
    __break(1u);
  }
}

void *sub_10041B398(void *result)
{
  if (result)
  {
    v1 = result;
    type metadata accessor for TTRIBoardColumnCollectionViewCell();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      return v3;
    }

    else
    {
      v5 = qword_1007672B8;
      v6 = v1;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100003E30(v7, qword_100782920);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "TTRIRemindersBoardScrollingController: unexpected cell type", v10, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10041B4B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10041B550;

  return sub_100419E20(a1, v4);
}

uint64_t sub_10041B550(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10041B64C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRRemindersListViewModel.ItemID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10001AA3C;

  return sub_100416AA4(a1, v9, v10, v1 + v6, v11, v12, v13, v14);
}

uint64_t sub_10041B7A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10041B7F0(uint64_t a1)
{
  v15 = a1;
  v2 = *((swift_isaMask & *v1) + 0x50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v6 = &v13 - v5;
  if (sub_10052A9A8())
  {
    result = sub_10052A99C();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = sub_10052A990();
    if (result)
    {
      return result;
    }
  }

  sub_10052A8CC();
  v9 = v8;
  if (Array.endIndex.getter())
  {
    v13 = v4;
    v10 = 0;
    v14 = *((swift_isaMask & *v1) + 0x2F0);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v3 + 16))(v6, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v2);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v13 != 8)
        {
          __break(1u);
          return result;
        }

        v16 = result;
        (*(v3 + 16))(v6, &v16, v2);
        swift_unknownObjectRelease();
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_14:
          __break(1u);
        }
      }

      v14(v6, v15 & 1);
      (*(v3 + 8))(v6, v2);
      ++v10;
      if (v12 == Array.endIndex.getter())
      {
      }
    }
  }
}

uint64_t sub_10041BA9C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007829C0);
  v1 = sub_100003E30(v0, qword_1007829C0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10041BB64(void *a1, void *a2)
{
  v3 = v2;
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[4] = a1;
  v3[5] = 0;
  v6 = _swiftEmptyArrayStorage;
  v3[6] = 0;
  v3[7] = _swiftEmptyArrayStorage;
  v7 = a1;
  v8 = [v7 shareeContext];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 sharees];

    sub_100003540(0, &qword_10076BC70);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3[7] = v6;

  v11 = NSUndoManager.observeChanges<A>(target:handler:)();

  v3[5] = v11;

  return v3;
}

uint64_t sub_10041BC9C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100406610();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10041BCEC()
{
  if (*(v0 + 40))
  {
    sub_100003540(0, &qword_100788D40);

    static NSUndoManager.removeObserver(with:)();

    sub_10003B788(v0 + 16);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10041BDB8(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
LABEL_52:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_53;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_53:
    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100003E30(v50, qword_1007829C0);

    osloga = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(osloga, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      v54 = [*(v2 + 32) objectID];
      *(v52 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&_mh_execute_header, osloga, v51, "Requested to add sharees but no sharees are provided {list.objectID: %@}", v52, 0xCu);
      sub_100094164(v53);
    }

    return;
  }

  v3 = sub_10041D460();
  if (!v3)
  {
    goto LABEL_53;
  }

  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  v5 = v3;

  v6 = [*(v2 + 32) shareeContext];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 sharees];

    sub_100003540(0, &qword_10076BC70);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  *(v2 + 56) = v9;

  v10 = *(v2 + 56);
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = v2;
  if (v11)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    do
    {
      v14 = v12;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v15 = *(v10 + 8 * v14 + 32);
        }

        v16 = v15;
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v17 = [v15 address];
        if (v17)
        {
          break;
        }

        ++v14;
        if (v12 == v11)
        {
          goto LABEL_27;
        }
      }

      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100546970(0, *(v13 + 2) + 1, 1, v13);
      }

      v22 = *(v13 + 2);
      v21 = *(v13 + 3);
      if (v22 >= v21 >> 1)
      {
        v13 = sub_100546970((v21 > 1), v22 + 1, 1, v13);
      }

      *(v13 + 2) = v22 + 1;
      v23 = &v13[16 * v22];
      v2 = v63;
      *(v23 + 4) = v19;
      *(v23 + 5) = v61;
    }

    while (v12 != v11);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

LABEL_27:

  v24 = sub_1004B61FC(v13);

  v67 = v24;
  v25 = [*(v2 + 32) sharedOwnerAddress];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    sub_10058CBA4(v66, v27, v29);
  }

  v31 = sub_10041DBC0(v30, &v67);

  v32 = v31 >> 62;
  if (v31 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_31;
    }

LABEL_62:

    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100003E30(v55, qword_1007829C0);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      v60 = [*(v2 + 32) objectID];
      *(v58 + 4) = v60;
      *v59 = v60;
      _os_log_impl(&_mh_execute_header, v56, v57, "All sharees requested to add are already existing {list.objectID: %@}", v58, 0xCu);
      sub_100094164(v59);
    }

    goto LABEL_67;
  }

  if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_62;
  }

LABEL_31:
  if (qword_1007672C0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100003E30(v33, qword_1007829C0);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v34, v35))
  {

LABEL_49:
    v66[0] = *(v2 + 56);

    sub_1000816AC(v31);
    sub_10041C644(v66[0]);

LABEL_67:

    return;
  }

  v36 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  *v36 = 134218498;
  oslog = v38;
  v66[0] = v38;
  if (v32)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v36 + 4) = v39;

  *(v36 + 12) = 2112;
  v40 = [*(v2 + 32) objectID];
  *(v36 + 14) = v40;
  *v37 = v40;
  *(v36 + 22) = 2080;
  v62 = v37;
  if (v32)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v41 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v41)
  {
LABEL_48:
    sub_100003540(0, &qword_10076BA50);
    v46 = Array.description.getter();
    v48 = v47;

    v49 = sub_100004060(v46, v48, v66);

    *(v36 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v34, v35, "Going to add %ld new sharees to list {list.objectID: %@, newShareeIDs: %s}", v36, 0x20u);
    sub_100094164(v62);

    sub_100004758(oslog);

    v2 = v63;
    goto LABEL_49;
  }

  v66[2] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v42 = 0;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v43 = *(v31 + 8 * v42 + 32);
      }

      v44 = v43;
      ++v42;
      v45 = [v43 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v41 != v42);
    goto LABEL_48;
  }

  __break(1u);
}

void sub_10041C644(unint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = [v3 store];
  v5 = [objc_allocWithZone(REMSaveRequest) initWithStore:v4];

  v6 = [v5 updateList:v3];
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v6 setSharingStatus:v7 != 0];
  sub_100003540(0, &qword_10076BC70);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v6 setSharees:isa];

  sub_100003540(0, &qword_100777780);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = v10;
  v14[4] = sub_10041DE1C;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100009DE4;
  v14[3] = &unk_1007271E8;
  v12 = _Block_copy(v14);
  v13 = v3;

  [v5 saveWithQueue:v9 completion:v12];
  _Block_release(v12);
}

void sub_10041C880(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 56);
  if (v5 >> 62)
  {
    goto LABEL_63;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_64:
    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100003E30(v45, qword_1007829C0);

    v46 = a1;
    osloga = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(osloga, v39))
    {
      goto LABEL_69;
    }

    v40 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v40 = 138412546;
    v48 = [*(v4 + 32) objectID];
    *(v40 + 4) = v48;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v46;
    *v47 = v48;
    v47[1] = v46;
    v49 = v46;
    v44 = "Requested to delete a sharee but the list is not shared to anyone {list.objectID: %@, shareeID: %@}";
    goto LABEL_68;
  }

  while (1)
  {
    v6 = sub_10041D460();
    if (!v6)
    {
      goto LABEL_64;
    }

    v7 = *(v4 + 32);
    *(v4 + 32) = v6;
    v8 = v6;

    v9 = [*(v4 + 32) shareeContext];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 sharees];

      sub_100003540(0, &qword_10076BC70);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    *(v4 + 56) = v12;

    v13 = *(v4 + 56);
    v14 = v13 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v58 = v4;
    if (!v14)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v15 = *(v13 + 8 * v4 + 32);
      }

      v16 = v15;
      v17 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v18 = [v15 objectID];
      sub_100003540(0, &qword_10076BA50);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v4;
      if (v17 == v14)
      {
        v4 = v58;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_64;
    }
  }

LABEL_21:

  v20 = _swiftEmptyArrayStorage < 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0;
  if (v20)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = _swiftEmptyArrayStorage[2];
  }

  v22 = *(v4 + 56);
  if (v22 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 == v23 && a3)
  {
    if (v20)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (v24)
      {
LABEL_32:
        v4 = 0;
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v4 >= _swiftEmptyArrayStorage[2])
            {
              goto LABEL_62;
            }

            v25 = _swiftEmptyArrayStorage[v4 + 4];
          }

          v26 = v25;
          v27 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_61;
          }

          v28 = [v25 address];
          if (!v28)
          {
            goto LABEL_33;
          }

          v29 = v28;
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          if (v30 == a2 && v32 == a3)
          {

            goto LABEL_34;
          }

          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v34)
          {
          }

          else
          {
LABEL_33:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

LABEL_34:
          ++v4;
          if (v27 == v24)
          {
            v4 = v58;
            break;
          }
        }
      }
    }

    else
    {
      v24 = _swiftEmptyArrayStorage[2];
      if (v24)
      {
        goto LABEL_32;
      }
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = *(v4 + 56);
  if (v36 >> 62)
  {
    if (v35 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_55;
    }
  }

  else if (v35 == *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_55:

    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100003E30(v37, qword_1007829C0);

    v38 = a1;
    osloga = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(osloga, v39))
    {
      goto LABEL_69;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412546;
    v42 = [*(v4 + 32) objectID];
    *(v40 + 4) = v42;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v38;
    *v41 = v42;
    v41[1] = v38;
    v43 = v38;
    v44 = "The sharee requested to delete does not exist {list.objectID: %@, shareeID: %@}";
LABEL_68:
    _os_log_impl(&_mh_execute_header, osloga, v39, v44, v40, 0x16u);
    sub_100058000(&unk_10076DF80);
    swift_arrayDestroy();

LABEL_69:

    return;
  }

  if (qword_1007672C0 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100003E30(v50, qword_1007829C0);

  v51 = a1;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412546;
    v56 = [*(v4 + 32) objectID];
    *(v54 + 4) = v56;
    *(v54 + 12) = 2112;
    *(v54 + 14) = v51;
    *v55 = v56;
    v55[1] = v51;
    v57 = v51;
    _os_log_impl(&_mh_execute_header, v52, v53, "Going to delete sharee from list {list.objectID: %@, shareeID: %@}", v54, 0x16u);
    sub_100058000(&unk_10076DF80);
    swift_arrayDestroy();
  }

  sub_10041C644(_swiftEmptyArrayStorage);
}

void sub_10041D0EC()
{
  v1 = v0;
  v2 = *(v0 + 56);
  if (v2 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_15;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  v3 = sub_10041D460();
  if (v3)
  {
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v5 = v3;

    v6 = [*(v1 + 32) shareeContext];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 sharees];

      sub_100003540(0, &qword_10076BC70);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    *(v1 + 56) = v9;

    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003E30(v10, qword_1007829C0);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = [*(v1 + 32) objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Going to remove stop sharing list, i.e. remove all sharees {list.objectID: %@}", v13, 0xCu);
      sub_100094164(v14);
    }

    sub_10041C644(_swiftEmptyArrayStorage);
    return;
  }

LABEL_15:
  if (qword_1007672C0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_1007829C0);

  oslog = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = [*(v1 + 32) objectID];
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&_mh_execute_header, oslog, v17, "Requested to stop sharing the list but the list is not shared to anyone {list.objectID: %@}", v18, 0xCu);
    sub_100094164(v19);
  }
}

id sub_10041D460()
{
  v1 = v0;
  v2 = [*(v0 + 32) store];
  v3 = [*(v1 + 32) objectID];
  v18 = 0;
  v4 = [v2 fetchListWithObjectID:v3 error:&v18];

  v5 = v18;
  if (!v4)
  {
    v6 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003E30(v7, qword_1007829C0);
    swift_errorRetain();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v10 = 136315394;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_100004060(v13, v14, &v18);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2112;
      v16 = [*(v1 + 32) objectID];
      *(v10 + 14) = v16;
      *v11 = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "TTRListSharingInteractor failed to fetch updated list {error: %s, list.objectID: %@}", v10, 0x16u);
      sub_100094164(v11);

      sub_100004758(v12);
    }

    else
    {
    }

    return 0;
  }

  return v4;
}

uint64_t sub_10041D70C(uint64_t a1, void *a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_1007829C0);
    swift_errorRetain();
    v5 = a2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36[0] = v10;
      *v8 = 136315394;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = sub_100004060(v11, v12, v36);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      v14 = [v5 objectID];
      *(v8 + 14) = v14;
      *v9 = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update sharees for list {error: %s, list.objectID: %@}", v8, 0x16u);
      sub_100094164(v9);

      sub_100004758(v10);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_1007829C0);
    v17 = a2;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412546;
      v22 = [v17 objectID];
      *(v20 + 4) = v22;
      *v21 = v22;
      *(v20 + 12) = 2048;
      if (a3 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v20 + 14) = v23;

      _os_log_impl(&_mh_execute_header, v18, v19, "Updated sharees to list {list.objectID: %@, sharees.count: %ld}", v20, 0x16u);
      sub_100094164(v21);
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    v26 = *(result + 56);

    v27 = sub_10041D460();
    if (v27)
    {
      v28 = *(v25 + 32);
      *(v25 + 32) = v27;
      v29 = v27;

      v30 = [*(v25 + 32) shareeContext];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 sharees];

        sub_100003540(0, &qword_10076BC70);
        v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v33 = _swiftEmptyArrayStorage;
      }

      *(v25 + 56) = v33;

      v35 = sub_100126964(v34, v26);

      if ((v35 & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
      {
      }

      else
      {
        sub_100406610();

        return swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return result;
}

void *sub_10041DBC0(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v4 = a1 & 0xC000000000000001;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = a1 + 32;
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = v2;
    while (1)
    {
      if (v4)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_26;
        }

        a1 = *(v26 + 8 * v3);
      }

      v6 = a1;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v8 = [a1 address];
      if (v8)
      {
        v9 = v8;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = *a2;
        if (*(*a2 + 16))
        {
          v14 = v4;
          Hasher.init(_seed:)();

          String.hash(into:)();
          v15 = Hasher._finalize()();
          v16 = -1 << *(v13 + 32);
          v17 = v15 & ~v16;
          if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v18 = ~v16;
            while (1)
            {
              v19 = (*(v13 + 48) + 16 * v17);
              v20 = *v19 == v10 && v19[1] == v12;
              if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v4 = v14;
            v5 = v23;
            v2 = v24;
            goto LABEL_6;
          }

LABEL_21:

          v4 = v14;
          v5 = v23;
          v2 = v24;
        }

        else
        {
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a1 = specialized ContiguousArray._endMutation()();
LABEL_6:
      if (v3 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v22 = a1;
    v2 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v22;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10041DE28()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10041DE8C()
{
  swift_beginAccess();
  *(v0 + 24) = &_swiftEmptySetSingleton;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListPresentationTreeConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListPresentationTreeConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10041E054()
{
  result = qword_100782B40;
  if (!qword_100782B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782B40);
  }

  return result;
}

unint64_t sub_10041E0BC()
{
  result = qword_100782B48;
  if (!qword_100782B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782B48);
  }

  return result;
}

uint64_t *sub_10041E110(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_10041E278(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *sub_10041E348(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_10041E474(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_10041E608(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_10041E734(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_10041E8F0(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_10041E958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t type metadata accessor for TTRIRemindersListNavigationBarEditingTarget()
{
  result = qword_100782BC0;
  if (!qword_100782BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10041EA14()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_10041EA8C()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_100004758(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_10041EAF8@<X0>(uint64_t (**a1)(char *, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:))
  {
    goto LABEL_2;
  }

  if (v18 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
  {
    if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:))
    {
      v26 = v39[9];
      v27 = v39[10];
      sub_10000C36C(v39 + 6, v26);
      (*(v27 + 16))(v26, v27);
      v29 = v28;
      ObjectType = swift_getObjectType();
      v31 = (*(v29 + 144))(ObjectType, v29);
      swift_unknownObjectRelease();
      v32 = type metadata accessor for TTRICollectionViewCellSelectionOption();
      v33 = *(*(v32 - 8) + 104);
      if (v43)
      {
        v33(v44, enum case for TTRICollectionViewCellSelectionOption.selectItem(_:), v32);
        return (*(v15 + 8))(v17, v14);
      }

      a1 = (v15 + 8);
      if (v31)
      {
        v38 = &enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:);
LABEL_39:
        v33(v44, *v38, v32);
        return (*a1)(v17, v14);
      }
    }

    else
    {
      if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
      {
        (*(v15 + 8))(v17, v14);
        goto LABEL_21;
      }

      if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
      {
LABEL_2:
        (*(v15 + 8))(v17, v14);
        goto LABEL_3;
      }

      if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
      {
        goto LABEL_3;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    v38 = &enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:);
    goto LABEL_39;
  }

  (*(v15 + 96))(v17, v14);
  (*(v11 + 32))(v13, v17, v10);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
  (*(v40 + 8))(v9, v7);
  v24 = v41;
  v23 = v42;
  v25 = (*(v41 + 88))(v6, v42);
  if (v25 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
  {
    if (v25 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
    {
      (*(v24 + 8))(v6, v23);
      if ((v43 & 1) == 0)
      {
        v34 = TTRRemindersListViewModel.SectionHeader.isTitleEditable.getter();
        (*(v11 + 8))(v13, v10);
        if (v34)
        {
          v19 = &enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:);
          goto LABEL_4;
        }

LABEL_3:
        v19 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
LABEL_4:
        v20 = *v19;
        v21 = type metadata accessor for TTRICollectionViewCellSelectionOption();
        return (*(*(v21 - 8) + 104))(v44, v20, v21);
      }
    }

    else
    {
      if (v25 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {
        goto LABEL_7;
      }

      if (v25 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }

    (*(v11 + 8))(v13, v10);
    goto LABEL_3;
  }

LABEL_7:
  (*(v11 + 8))(v13, v10);
  (*(v24 + 8))(v6, v23);
LABEL_21:
  v36 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  if (v43)
  {
    v37 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
  }

  else
  {
    v37 = &enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:);
  }

  return (*(*(v36 - 8) + 104))(v44, *v37, v36);
}

void *sub_10041F1C4(int a1, uint64_t a2)
{
  LODWORD(v3) = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  __chkstk_darwin(v8);
  v50 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = *(a2 + 16);
  if (v15)
  {
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v55 = *(v16 + 56);
    v43 = v18;
    v19 = a2 + v18;
    v52 = (v5 + 88);
    v53 = v17;
    v51 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:);
    v46 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:);
    v42 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:);
    v41 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:);
    v40 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:);
    v39 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:);
    v38 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:);
    v37 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:);
    v36 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:);
    v35 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:);
    v34 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:);
    v33 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:);
    v47 = (v16 - 8);
    v48 = (v16 + 16);
    v49 = (v5 + 8);
    v20 = _swiftEmptyArrayStorage;
    v45 = v3;
    v44 = v4;
    v54 = v16;
    v17(v14, v19, v8, v12);
    while (1)
    {
      TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
      v23 = (*v52)(v7, v4);
      if (v23 == v51)
      {
        goto LABEL_8;
      }

      if (v23 == v46)
      {
        (*v49)(v7, v4);
        v21 = v55;
        if (v3)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }

      if (v23 != v42)
      {
        break;
      }

      (*v49)(v7, v4);
      v21 = v55;
      if (v3 != 1)
      {
LABEL_4:
        (*v47)(v14, v8);
        goto LABEL_5;
      }

LABEL_10:
      v24 = *v48;
      (*v48)(v50, v14, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004A1C48(0, v20[2] + 1, 1);
        v21 = v55;
        v20 = v56;
      }

      v3 = v20[2];
      v26 = v20[3];
      if (v3 >= v26 >> 1)
      {
        sub_1004A1C48(v26 > 1, v3 + 1, 1);
        v21 = v55;
        v20 = v56;
      }

      v20[2] = v3 + 1;
      v24(v20 + v43 + v3 * v21, v50, v8);
      LOBYTE(v3) = v45;
      v4 = v44;
LABEL_5:
      v19 += v21;
      if (!--v15)
      {
        return v20;
      }

      v53(v14, v19, v8, v22);
    }

    if (v23 == v41 || v23 == v40 || v23 == v39 || v23 == v38 || v23 == v37 || v23 == v36)
    {
LABEL_8:
      (*v49)(v7, v4);
    }

    else if (v23 != v35 && v23 != v34 && v23 != v33)
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v21 = v55;
    if (v3 != 2)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10041F674@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_100058000(&qword_10076E8D0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = v1[9];
  v10 = v1[10];
  sub_10000C36C(v1 + 6, v9);
  (*(v10 + 16))(v9, v10);
  v12 = v11;
  ObjectType = swift_getObjectType();
  (*(v12 + 152))(ObjectType, v12);
  swift_unknownObjectRelease();
  v14 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {
    sub_1000079B4(v5, &unk_10078A380);
    v16 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    goto LABEL_7;
  }

  TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
  (*(v15 + 8))(v5, v14);
  v17 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v8, 0, 1, v17);
  v19 = (*(v18 + 88))(v8, v17);
  if (v19 == enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:))
  {
    goto LABEL_7;
  }

  if (v19 == enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:))
  {
    v20 = type metadata accessor for TTRIEditableSectionsPresentationTreeMaker();
    v21 = &off_1007168A0;
LABEL_8:
    result = swift_allocObject();
    a1[3] = v20;
    a1[4] = v21;
    *a1 = result;
    return result;
  }

  if (v19 == enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:))
  {
LABEL_7:
    v20 = type metadata accessor for TTRIDefaultPresentationTreeMaker();
    v21 = &off_1007168C8;
    goto LABEL_8;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}