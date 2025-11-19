void sub_100271914()
{
  v1 = v0;
  v2 = type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel();
  __chkstk_darwin(v2 - 8);
  v4 = (&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRSmartListFilterEditorViewModel(0);
  __chkstk_darwin(v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_presenter];
  v9 = *(v8 + 104);
  v10 = *(v8 + 112);
  sub_10000C36C((v8 + 80), v9);
  v11 = (*(v10 + 8))(v9, v10);
  TTRSmartListFilterEditorViewModel.init(filter:doneAlwaysEnabled:)(v11, (*(v8 + 65) & 1) == 0, v7);
  sub_1003E1994(v7);
  sub_1003E20F8(v7);
  sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___filterOperatorCell, sub_10026E668);
  v12 = TTRITableCell.content.getter();

  v13 = *v7;
  v14 = TTRITableCellContent.state.modify();
  *(v15 + 24) = v13;
  v14(v63, 0);

  sub_100267908(v7);
  v58 = v7;
  v59 = v5;
  v16 = v7[*(v5 + 24)];
  if (v16)
  {
    sub_100266B50(2);
  }

  else
  {
    sub_1002673E0(2u);
  }

  sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___timeOptionsCell, sub_10026A94C);
  v17 = TTRITableCell.content.getter();

  v62 = v16;
  v18 = TTRITableCellContent.state.modify();
  sub_100058000(&qword_100776808);
  TTRIOptionMenuCellContentState.selectedItem.setter();
  v18(v63, 0);

  v19 = v58;
  sub_10026EBB4(v58);
  sub_10026F938(v19);
  v20 = v19;
  sub_1003E1084(v4);
  sub_10026F258(v4);
  sub_100275ECC(v4, type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel);
  v21 = *(v19 + v59[10]);
  if (v21)
  {
    sub_100266B50(4);
  }

  else
  {
    sub_1002673E0(4u);
  }

  sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedOptionsCell, sub_10026B894);
  v22 = TTRITableCell.content.getter();

  v62 = v21;
  v23 = TTRITableCellContent.state.modify();
  sub_100058000(&qword_100776810);
  TTRIOptionMenuCellContentState.selectedItem.setter();
  v23(v63, 0);

  v24 = *(v20 + v59[9]);
  if (v24)
  {
    sub_100266B50(5);
  }

  else
  {
    sub_1002673E0(5u);
  }

  sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___priorityOptionsCell, sub_10026B13C);
  v25 = TTRITableCell.content.getter();

  v62 = v24;
  v26 = TTRITableCellContent.state.modify();
  sub_100058000(&qword_100776818);
  TTRIOptionMenuCellContentState.selectedItem.setter();
  v26(v63, 0);

  sub_10026FF84();
  v27 = [v0 view];
  if (!v27)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v28 = v27;
  objc_opt_self();
  v29 = [swift_dynamicCastObjCClassUnconditional() numberOfSections];

  if ((v29 & 0x8000000000000000) != 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v29)
  {
    v30 = 0;
    v57 = UIAccessibilityTraitHeader;
    v60 = v1;
    v61 = v29;
    do
    {
      v31 = [v1 view];
      if (!v31)
      {
        goto LABEL_60;
      }

      v32 = v31;
      objc_opt_self();
      v33 = [swift_dynamicCastObjCClassUnconditional() headerViewForSection:v30];

      if (v33)
      {
        v34 = [v33 subviews];

        sub_100003540(0, &qword_10076B020);
        v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v35 >> 62)
        {
          v36 = _CocoaArrayWrapper.endIndex.getter();
          if (v36)
          {
LABEL_20:
            v37 = 0;
            while (1)
            {
              if ((v35 & 0xC000000000000001) != 0)
              {
                v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_56;
                }

                v38 = *(v35 + 8 * v37 + 32);
              }

              v39 = v38;
              v40 = v37 + 1;
              if (__OFADD__(v37, 1))
              {
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

              sub_100003540(0, &qword_100785420);
              if ([v39 isKindOfClass:swift_getObjCClassFromMetadata()])
              {
                break;
              }

              ++v37;
              if (v40 == v36)
              {
                goto LABEL_14;
              }
            }

            objc_opt_self();
            v41 = swift_dynamicCastObjCClass();
            v29 = v61;
            if (v41)
            {
              v42 = [v41 subviews];
              v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v43 >> 62)
              {
                v44 = _CocoaArrayWrapper.endIndex.getter();
                if (v44)
                {
                  goto LABEL_32;
                }
              }

              else
              {
                v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v44)
                {
LABEL_32:
                  v45 = 0;
                  do
                  {
                    if ((v43 & 0xC000000000000001) != 0)
                    {
                      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_58;
                      }

                      v46 = *(v43 + 8 * v45 + 32);
                    }

                    v47 = v46;
                    v48 = v45 + 1;
                    if (__OFADD__(v45, 1))
                    {
                      goto LABEL_57;
                    }

                    sub_100003540(0, &qword_100776820);
                    if ([v47 isKindOfClass:swift_getObjCClassFromMetadata()])
                    {

                      objc_opt_self();
                      v49 = swift_dynamicCastObjCClass();
                      v29 = v61;
                      if (!v49)
                      {

                        goto LABEL_46;
                      }

                      v50 = v49;
                      v51 = v47;
                      v52 = [v50 accessibilityTraits];
                      v53 = v57;
                      if ((v57 & ~v52) == 0)
                      {
                        v53 = 0;
                      }

                      [v50 setAccessibilityTraits:v53 | v52];

                      goto LABEL_45;
                    }

                    ++v45;
                  }

                  while (v48 != v44);
                }
              }

              goto LABEL_14;
            }

LABEL_45:

LABEL_46:
            v1 = v60;
            goto LABEL_15;
          }
        }

        else
        {
          v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v36)
          {
            goto LABEL_20;
          }
        }

LABEL_14:

        v1 = v60;
        v29 = v61;
      }

LABEL_15:
      ++v30;
    }

    while (v30 != v29);
  }

  v54 = [v1 navigationItem];
  v55 = [v54 rightBarButtonItem];

  v56 = v58;
  if (v55)
  {
    [v55 setEnabled:v58[v59[12]]];
  }

  sub_100275ECC(v56, type metadata accessor for TTRSmartListFilterEditorViewModel);
}

void sub_100272198()
{
  v1 = type metadata accessor for TTRIPopoverAnchor();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 navigationItem];
  v6 = [v5 leftBarButtonItem];

  if (v6)
  {
    static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)();
    sub_1003EBA50();

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    if (qword_100767030 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003E30(v7, qword_100776660);
    v12 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v12, v8, "Missing cancel button", v9, 2u);
    }

    v10 = v12;
  }
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.CenterItemID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.CenterItemID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002729D0()
{
  result = qword_100776800;
  if (!qword_100776800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100776800);
  }

  return result;
}

id sub_100272A24()
{
  result = [v0 view];
  if (result)
  {
    objc_opt_self();

    return swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100272A94(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return TTRKeyboardAvoidance<>.shouldAvoidKeyboard.getter(ObjectType, a2);
}

uint64_t sub_100272AD0()
{
  swift_getObjectType();

  return TTRKeyboardAvoidance<>.startAvoidingKeyboard()();
}

uint64_t sub_100272B0C()
{
  swift_getObjectType();

  return TTRKeyboardAvoidance<>.stopAvoidingKeyboard()();
}

uint64_t sub_100272B48(double a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6.n128_f64[0] = a1;

  return TTRKeyboardAvoidance<>.keyboardWillShow(duration:)(ObjectType, a3, v6);
}

uint64_t sub_100272B94(double a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6.n128_f64[0] = a1;

  return TTRKeyboardAvoidance<>.keyboardWillHide(duration:)(ObjectType, a3, v6);
}

uint64_t sub_100272BE0(double a1, double a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8.n128_f64[0] = a1;
  v9.n128_f64[0] = a2;

  return TTRKeyboardAvoidance<>.setKeyboardAvoidanceBottomInset(_:duration:)(ObjectType, a4, v8, v9);
}

Swift::Int sub_100272C34(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000EF348(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
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

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100272D6C(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100272D6C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1000ED7BC(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_1002732A8((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100546DD8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_100546DD8((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_1002732A8((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000ED7BC(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_1000ED730(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1002732A8(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

void sub_100273494()
{
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_tableDataController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_ttrAccessibilityShouldAnnounceOptionChanges) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateGroup) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationGroup) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedGroup) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___prioritySection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___priorityGroup) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listsSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listsGroup) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagsSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagsGroup) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___disabledFiltersSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___disabledFiltersGroup) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___documentationSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___filterOperatorSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___enabledFilters) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateOptionsCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell1) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDatePickerCell1) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___relativeRangeCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell2) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDatePickerCell2) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___regularWidthDatePickerCell1) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___regularWidthDatePickerCell2) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___includePastDueRemindersCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___timeOptionsCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___priorityOptionsCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedOptionsCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationOptionsCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationQuickPicksCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationDetailCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagOptionsCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagCollectionCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagToggleShowMoreCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listsOptionsCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listPopoverCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___filterOperatorCell) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002736DC(uint64_t a1)
{
  v23 = a1;
  v1 = sub_100058000(&qword_100777BC0);
  __chkstk_darwin(v1 - 8);
  v26 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v21 - v4;
  v5 = type metadata accessor for TTRITableSectionHeaderFooter();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIListContentConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  sub_100265D7C();
  static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
  UIListContentConfiguration.usingRoundedSystemFont()();
  v25 = *(v9 + 8);
  v25(v11, v8);
  UIListContentConfiguration.text.setter();
  (*(v9 + 16))(v11, v14, v8);
  v15 = v22;
  TTRITableSectionHeaderFooter.init(listContentConfiguration:height:)();
  v16 = v24;
  (*(v6 + 16))(v24, v15, v5);
  v17 = *(v6 + 56);
  v17(v16, 0, 1, v5);
  v17(v26, 1, 1, v5);
  sub_100058000(&qword_1007768B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10062D400;
  *(v18 + 32) = sub_100265E58();
  *(v18 + 40) = &protocol witness table for TTRITableGroup;
  type metadata accessor for TTRITableSection();
  swift_allocObject();
  v19 = TTRITableSection.init(header:footer:items:)();
  (*(v6 + 8))(v15, v5);
  v25(v14, v8);
  return v19;
}

uint64_t sub_100273A48()
{
  v20 = type metadata accessor for TTRITableGroup.CellEditingOption();
  v0 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRITableGroup.CellReorderingOption();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100265960();
  v7 = sub_1000AAA9C(0, v6);

  if (v7)
  {
    v8 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagOptionsCell, sub_10026C658);
    sub_100058000(&qword_100776830);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10062F800;
    v10 = sub_10000E188(&qword_100776870, &qword_100776878);
    *(v9 + 32) = v8;
    v11 = (v9 + 32);
    *(v9 + 40) = v10;
  }

  else
  {
    sub_100058000(&qword_100776830);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10062F800;
    *(v9 + 32) = 0;
    v11 = (v9 + 32);
    *(v9 + 40) = 0;
  }

  v12 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagCollectionCell, sub_10026CDC0);
  v13 = sub_10000E188(&qword_100776838, &qword_100776840);
  v11[2] = v12;
  v11[3] = v13;
  v14 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagToggleShowMoreCell, sub_10026D3E8);
  v15 = sub_10000E188(&qword_100776848, &qword_100776850);
  v11[4] = v14;
  v11[5] = v15;
  v21 = v9;
  sub_100058000(&qword_100776858);
  sub_100058000(&qword_100776860);
  sub_10000E188(&qword_100776868, &qword_100776858);
  Sequence.removingNils<A>()();

  type metadata accessor for TTRITableGroup();
  swift_allocObject();
  v16 = TTRITableGroup.init(cells:)();
  (*(v3 + 104))(v5, enum case for TTRITableGroup.CellReorderingOption.disabled(_:), v19);
  TTRITableGroup.cellReording.setter();
  (*(v0 + 104))(v2, enum case for TTRITableGroup.CellEditingOption.none(_:), v20);
  TTRITableGroup.cellEditing.setter();

  return v16;
}

unint64_t sub_100273E34()
{
  result = qword_1007768A0;
  if (!qword_1007768A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007768A0);
  }

  return result;
}

uint64_t sub_100273EE8()
{
  v0 = sub_100058000(&qword_100777BC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v22 - v4;
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13._countAndFlagsBits = 0x6E207265746C6946;
  v13._object = 0xEB00000000656D61;
  v14._object = 0x800000010067A5C0;
  v14._countAndFlagsBits = 0xD00000000000001BLL;
  v15._countAndFlagsBits = 1936154964;
  v15._object = 0xE400000000000000;
  TTRLocalizedString(_:value:comment:)(v14, v15, v13);
  static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
  UIListContentConfiguration.usingRoundedSystemFont()();
  v16 = *(v7 + 8);
  v16(v9, v6);
  UIListContentConfiguration.text.setter();
  v17 = type metadata accessor for TTRITableSectionHeaderFooter();
  v18 = *(*(v17 - 8) + 56);
  v18(v5, 1, 1, v17);
  v18(v2, 1, 1, v17);
  sub_100058000(&qword_1007768B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10062D400;
  *(v19 + 32) = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___hashtagsGroup, sub_100273A48);
  *(v19 + 40) = &protocol witness table for TTRITableGroup;
  type metadata accessor for TTRITableSection();
  swift_allocObject();
  v20 = TTRITableSection.init(header:footer:items:)();
  v16(v12, v6);
  return v20;
}

uint64_t sub_1002741BC()
{
  v20 = type metadata accessor for TTRITableGroup.CellEditingOption();
  v0 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRITableGroup.CellReorderingOption();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100265960();
  v7 = sub_1000AAA9C(3u, v6);

  if (v7)
  {
    v8 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationOptionsCell, sub_10026BE08);
    sub_100058000(&qword_100776830);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10062F800;
    v10 = sub_10000E188(&qword_100776970, &qword_100776978);
    *(v9 + 32) = v8;
    v11 = (v9 + 32);
    *(v9 + 40) = v10;
  }

  else
  {
    sub_100058000(&qword_100776830);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10062F800;
    *(v9 + 32) = 0;
    v11 = (v9 + 32);
    *(v9 + 40) = 0;
  }

  v12 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___locationQuickPicksCell, sub_10026C3A0);
  v13 = sub_10000E188(&qword_100776950, &qword_100776958);
  v11[2] = v12;
  v11[3] = v13;
  v14 = sub_100265A10();
  v15 = sub_10000E188(&qword_100776960, &qword_100776968);
  v11[4] = v14;
  v11[5] = v15;
  v21 = v9;
  sub_100058000(&qword_100776858);
  sub_100058000(&qword_100776860);
  sub_10000E188(&qword_100776868, &qword_100776858);
  Sequence.removingNils<A>()();

  type metadata accessor for TTRITableGroup();
  swift_allocObject();
  v16 = TTRITableGroup.init(cells:)();
  (*(v3 + 104))(v5, enum case for TTRITableGroup.CellReorderingOption.disabled(_:), v19);
  TTRITableGroup.cellReording.setter();
  (*(v0 + 104))(v2, enum case for TTRITableGroup.CellEditingOption.none(_:), v20);
  TTRITableGroup.cellEditing.setter();

  return v16;
}

uint64_t sub_10027458C()
{
  v15 = type metadata accessor for TTRITableGroup.CellEditingOption();
  v0 = *(v15 - 8);
  __chkstk_darwin(v15);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRITableGroup.CellReorderingOption();
  v3 = *(v14 - 8);
  __chkstk_darwin(v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100265960();
  v7 = sub_1000AAA9C(5u, v6);

  if (v7)
  {
    v8 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___priorityOptionsCell, sub_10026B13C);
    sub_100058000(&qword_100776830);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10062D400;
    v10 = sub_10000E188(&qword_1007769B0, &qword_1007769B8);
    *(v9 + 32) = v8;
    *(v9 + 40) = v10;
  }

  else
  {
    sub_100058000(&qword_100776830);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10062D400;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
  }

  v16 = v9;
  sub_100058000(&qword_100776858);
  sub_100058000(&qword_100776860);
  sub_10000E188(&qword_100776868, &qword_100776858);
  Sequence.removingNils<A>()();

  type metadata accessor for TTRITableGroup();
  swift_allocObject();
  v11 = TTRITableGroup.init(cells:)();
  (*(v3 + 104))(v5, enum case for TTRITableGroup.CellReorderingOption.disabled(_:), v14);
  TTRITableGroup.cellReording.setter();
  (*(v0 + 104))(v2, enum case for TTRITableGroup.CellEditingOption.none(_:), v15);
  TTRITableGroup.cellEditing.setter();

  return v11;
}

uint64_t sub_1002748C4()
{
  v15 = type metadata accessor for TTRITableGroup.CellEditingOption();
  v0 = *(v15 - 8);
  __chkstk_darwin(v15);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRITableGroup.CellReorderingOption();
  v3 = *(v14 - 8);
  __chkstk_darwin(v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100265960();
  v7 = sub_1000AAA9C(4u, v6);

  if (v7)
  {
    v8 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___flaggedOptionsCell, sub_10026B894);
    sub_100058000(&qword_100776830);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10062D400;
    v10 = sub_10000E188(&qword_1007769C0, &qword_1007769C8);
    *(v9 + 32) = v8;
    *(v9 + 40) = v10;
  }

  else
  {
    sub_100058000(&qword_100776830);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10062D400;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
  }

  v16 = v9;
  sub_100058000(&qword_100776858);
  sub_100058000(&qword_100776860);
  sub_10000E188(&qword_100776868, &qword_100776858);
  Sequence.removingNils<A>()();

  type metadata accessor for TTRITableGroup();
  swift_allocObject();
  v11 = TTRITableGroup.init(cells:)();
  (*(v3 + 104))(v5, enum case for TTRITableGroup.CellReorderingOption.disabled(_:), v14);
  TTRITableGroup.cellReording.setter();
  (*(v0 + 104))(v2, enum case for TTRITableGroup.CellEditingOption.none(_:), v15);
  TTRITableGroup.cellEditing.setter();

  return v11;
}

uint64_t sub_100274BFC()
{
  v18 = type metadata accessor for TTRITableGroup.CellEditingOption();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRITableGroup.CellReorderingOption();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100265960();
  v7 = sub_1000AAA9C(6u, v6);

  if (v7)
  {
    v8 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listsOptionsCell, sub_10026D6D0);
    sub_100058000(&qword_100776830);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10062F800;
    v10 = sub_10000E188(&qword_1007769D0, &qword_1007769D8);
    *(v9 + 32) = v8;
    v11 = (v9 + 32);
    *(v9 + 40) = v10;
  }

  else
  {
    sub_100058000(&qword_100776830);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10062F800;
    *(v9 + 32) = 0;
    v11 = (v9 + 32);
    *(v9 + 40) = 0;
  }

  v12 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listCell, sub_10026DE54);
  v13 = sub_10000E188(&qword_100776A18, &qword_100776A20);
  v11[2] = v12;
  v11[3] = v13;
  v11[4] = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___listPopoverCell, sub_10026E134);
  v11[5] = v13;
  v19 = v9;
  sub_100058000(&qword_100776858);
  sub_100058000(&qword_100776860);
  sub_10000E188(&qword_100776868, &qword_100776858);
  Sequence.removingNils<A>()();

  type metadata accessor for TTRITableGroup();
  swift_allocObject();
  v14 = TTRITableGroup.init(cells:)();
  (*(v3 + 104))(v5, enum case for TTRITableGroup.CellReorderingOption.disabled(_:), v17);
  TTRITableGroup.cellReording.setter();
  (*(v0 + 104))(v2, enum case for TTRITableGroup.CellEditingOption.none(_:), v18);
  TTRITableGroup.cellEditing.setter();

  return v14;
}

uint64_t sub_100274FC4(uint64_t a1)
{
  v2 = type metadata accessor for TTRITableGroup.CellEditingOption();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRITableGroup.CellReorderingOption();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100265960();
  v7 = sub_1000AAA9C(1u, v6);

  v8 = 0;
  if (v7)
  {
    v8 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateOptionsCell, sub_100269054);
  }

  if (sub_1000AAA9C(2u, *(a1 + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___enabledFilters)))
  {
    v9 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___timeOptionsCell, sub_10026A94C);
  }

  else
  {
    v9 = 0;
  }

  sub_100058000(&qword_100776830);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100636B00;
  if (v8)
  {
    v11 = sub_10000E188(&qword_100776918, &qword_100776920);
  }

  else
  {
    v11 = 0;
  }

  *(v10 + 32) = v8;
  *(v10 + 40) = v11;

  v12 = sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell1, sub_100275754, sub_100269E0C);
  v13 = sub_10000E188(&qword_1007768B8, &qword_1007768C0);
  *(v10 + 48) = v12;
  *(v10 + 56) = v13;
  v14 = sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDatePickerCell1, sub_100275720, sub_10026A11C);
  v15 = sub_10000E188(&qword_1007768C8, &qword_1007768D0);
  *(v10 + 64) = v14;
  *(v10 + 72) = v15;
  v16 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___relativeRangeCell, sub_10026992C);
  v17 = sub_10000E188(&qword_1007768D8, &qword_1007768E0);
  *(v10 + 80) = v16;
  *(v10 + 88) = v17;
  *(v10 + 96) = sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDateDetailCell2, sub_1002756E8, sub_100269E0C);
  *(v10 + 104) = v13;
  *(v10 + 112) = sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___compactDatePickerCell2, sub_1002756B4, sub_10026A11C);
  *(v10 + 120) = v15;
  v18 = sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___regularWidthDatePickerCell1, sub_100275680, sub_10026A3E8);
  v19 = sub_10000E188(&qword_1007768E8, &qword_1007768F0);
  *(v10 + 128) = v18;
  *(v10 + 136) = v19;
  *(v10 + 144) = sub_1002659A8(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___regularWidthDatePickerCell2, sub_10027564C, sub_10026A3E8);
  *(v10 + 152) = v19;
  v20 = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___includePastDueRemindersCell, sub_10026A62C);
  v21 = sub_10000E188(&qword_1007768F8, &qword_100776900);
  *(v10 + 160) = v20;
  *(v10 + 168) = v21;
  if (v9)
  {
    v22 = sub_10000E188(&qword_100776908, &qword_100776910);
  }

  else
  {
    v22 = 0;
  }

  *(v10 + 176) = v9;
  *(v10 + 184) = v22;
  v32 = v10;

  sub_100058000(&qword_100776858);
  sub_100058000(&qword_100776860);
  sub_10000E188(&qword_100776868, &qword_100776858);
  Sequence.removingNils<A>()();

  type metadata accessor for TTRITableGroup();
  swift_allocObject();
  v23 = TTRITableGroup.init(cells:)();
  (*(v27 + 104))(v26, enum case for TTRITableGroup.CellReorderingOption.disabled(_:), v28);
  TTRITableGroup.cellReording.setter();
  (*(v30 + 104))(v29, enum case for TTRITableGroup.CellEditingOption.none(_:), v31);
  TTRITableGroup.cellEditing.setter();

  return v23;
}

unint64_t sub_1002755B0()
{
  result = qword_100776940;
  if (!qword_100776940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100776940);
  }

  return result;
}

uint64_t sub_100275784()
{
  v0 = sub_100058000(&qword_100777BC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v22 - v4;
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13._countAndFlagsBits = 0x694620726568744FLL;
  v13._object = 0xED0000737265746CLL;
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  v14._object = 0x8000000100673830;
  v15._object = 0x8000000100673850;
  v15._countAndFlagsBits = 0xD000000000000019;
  TTRLocalizedString(_:value:comment:)(v14, v13, v15);
  static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
  UIListContentConfiguration.usingRoundedSystemFont()();
  v16 = *(v7 + 8);
  v16(v9, v6);
  UIListContentConfiguration.text.setter();
  v17 = type metadata accessor for TTRITableSectionHeaderFooter();
  v18 = *(*(v17 - 8) + 56);
  v18(v5, 1, 1, v17);
  v18(v2, 1, 1, v17);
  sub_100058000(&qword_1007768B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10062D400;
  *(v19 + 32) = sub_100266794(&OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController____lazy_storage___dateGroup, sub_100274FC4);
  *(v19 + 40) = &protocol witness table for TTRITableGroup;
  type metadata accessor for TTRITableSection();
  swift_allocObject();
  v20 = TTRITableSection.init(header:footer:items:)();
  v16(v12, v6);
  return v20;
}

unint64_t sub_100275A6C()
{
  result = qword_100776998;
  if (!qword_100776998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100776998);
  }

  return result;
}

unint64_t sub_100275B10()
{
  result = qword_1007769F8;
  if (!qword_1007769F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007769F8);
  }

  return result;
}

unint64_t sub_100275B6C()
{
  result = qword_100776A10;
  if (!qword_100776A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100776A10);
  }

  return result;
}

uint64_t sub_100275BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076FCD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV11TimeOptionsO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_100275C58()
{
  result = qword_100776A68;
  if (!qword_100776A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100776A68);
  }

  return result;
}

unint64_t sub_100275CEC()
{
  result = qword_100776A88;
  if (!qword_100776A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100776A88);
  }

  return result;
}

uint64_t sub_100275D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_100275DE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }

  else
  {

    return a3;
  }
}

unint64_t sub_100275E38()
{
  result = qword_100776AC8;
  if (!qword_100776AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100776AC8);
  }

  return result;
}

uint64_t sub_100275ECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100275F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100275F94()
{
  result = qword_100776B00;
  if (!qword_100776B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100776B00);
  }

  return result;
}

uint64_t sub_10027602C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002760A4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100776B40);
  v1 = sub_100003E30(v0, qword_100776B40);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100276240(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_nameTextView);
  *(v1 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_nameTextView) = a1;
  v4 = a1;
  v5 = dispatch thunk of TTRIExpandingTextView.lineIndexWhereClippingBegins.getter();
  v6 = v2 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousLineIndexWhereClippingBegins;
  *v6 = v5;
  *(v6 + 8) = v7 & 1;
  [v4 setDelegate:v2];
  if (!v3 || (v3, v3 != v4))
  {
    *(v2 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_needsLayoutEmptyTextView) = 1;
  }
}

void sub_1002762D0(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListLayout();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_nameTextView);
  if (!v17)
  {
    return;
  }

  v55 = v17;
  if ([v55 isEditing])
  {

    v18 = v55;

    return;
  }

  v49 = v3;
  v51 = v4;
  v53 = a1;
  sub_100277260(a1, v16);
  v19 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v20 = *(v19 - 8);
  v52 = *(v20 + 48);
  v21 = v52(v16, 1, v19);
  v54 = v1;
  v50 = v20;
  if (v21 == 1)
  {
    sub_1002772D0(v16);
    v22 = 0;
  }

  else
  {
    TTRRemindersListEditableSectionNameViewModel.sectionHeaderTitle.getter();
    (*(v20 + 8))(v16, v19);
    TTRRemindersListViewModel.SectionHeaderTitle.text.getter();
    (*(v8 + 8))(v10, v7);
    v22 = String._bridgeToObjectiveC()();
  }

  [v55 setText:v22];

  sub_100277260(v53, v13);
  if (v52(v13, 1, v19) == 1)
  {
    sub_1002772D0(v13);
    v23 = v54;
  }

  else
  {
    v24 = v51;
    v25 = v49;
    (*(v51 + 104))(v6, enum case for TTRRemindersListLayout.list(_:), v49);
    TTRRemindersListEditableSectionNameViewModel.placeholderTitle(listLayout:)();
    v27 = v26;
    (*(v24 + 8))(v6, v25);
    (*(v50 + 8))(v13, v19);
    v23 = v54;
    if (v27)
    {
      v28 = [v55 font];
      if (!v28)
      {
        sub_100003540(0, &qword_100771DF0);
        v29 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
        v23 = v54;
        v28 = v29;
      }

      sub_100058000(&unk_100776BD0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D3F0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v31 = objc_opt_self();
      v32 = NSForegroundColorAttributeName;
      v33 = [v31 placeholderTextColor];
      v34 = sub_100003540(0, &qword_100772610);
      *(inited + 40) = v33;
      *(inited + 64) = v34;
      *(inited + 72) = NSFontAttributeName;
      *(inited + 104) = sub_100003540(0, &qword_100771DF0);
      *(inited + 80) = v28;
      v35 = NSFontAttributeName;
      v36 = v28;
      sub_100460A28(inited);
      swift_setDeallocating();
      sub_100058000(&unk_100776BE0);
      swift_arrayDestroy();
      v37 = objc_allocWithZone(NSAttributedString);
      v38 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100277338(&qword_100778A60, 255, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v40 = [v37 initWithString:v38 attributes:isa];

      [v55 setAttributedPlaceholder:v40];
      goto LABEL_16;
    }
  }

  [v55 setAttributedPlaceholder:0];
LABEL_16:
  if (*(v23 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_needsLayoutEmptyTextView) == 1)
  {
    *(v23 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_needsLayoutEmptyTextView) = 0;
    v41 = [v55 text];
    if (!v41)
    {
      __break(1u);
      return;
    }

    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v46 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {
      v47 = String._bridgeToObjectiveC()();
      [v55 setText:v47];

      [v55 layoutIfNeeded];
      v48 = String._bridgeToObjectiveC()();
      [v55 setText:v48];
    }
  }
}

void sub_1002769C4(uint64_t a1, char a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_nameTextView);
  if (v4)
  {
    v5 = v3;
    v8 = v4;
    if ((a3 & 1) == 0)
    {
      TTRIExpandingTextView.forceContentOffset(_:)();
    }

    v9 = v8;
    [v9 setScrollEnabled:a3 & 1];
    if (a2)
    {
      dispatch thunk of TTRIExpandingTextView.lineIndexWhereClippingBegins.getter();
      if ((v10 & 1) == 0)
      {
        v11 = dispatch thunk of TTRIExpandingTextView.lineIndexWhereClippingBegins.getter();
        v12 = v5 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousLineIndexWhereClippingBegins;
        *v12 = v11;
        *(v12 + 8) = v13 & 1;
      }
    }

    dispatch thunk of TTRIExpandingTextView.lineIndexWhereClippingBegins.setter();

    if (qword_100767038 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100776B40);
    v15 = v9;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v17 = 136315650;
      *(v17 + 4) = sub_100004060(0xD000000000000049, 0x800000010067B8A0, &v27);
      *(v17 + 12) = 2080;
      v18 = [v15 isScrollEnabled];
      v19 = v18 == 0;
      if (v18)
      {
        v20 = 1702195828;
      }

      else
      {
        v20 = 0x65736C6166;
      }

      if (v19)
      {
        v21 = 0xE500000000000000;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      v22 = sub_100004060(v20, v21, &v27);

      *(v17 + 14) = v22;
      *(v17 + 22) = 2080;
      dispatch thunk of TTRIExpandingTextView.lineIndexWhereClippingBegins.getter();
      sub_100058000(&unk_100776BF0);
      v23 = Optional.descriptionOrNil.getter();
      v25 = sub_100004060(v23, v24, &v27);

      *(v17 + 24) = v25;
      _os_log_impl(&_mh_execute_header, oslog, v16, "%s {isScrollEnabled: %s, lineIndexWhereClippingBegins: %s}", v17, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

id sub_100276C9C()
{
  result = *(v0 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_nameTextView);
  if (result)
  {
    result = [result text];
    if (result)
    {
      v2 = result;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }
  }

  return result;
}

void sub_100276D10()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_nameTextView);
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    [v2 setText:v3];
  }
}

id sub_100276DB4()
{
  result = *(v0 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_nameTextView);
  if (result)
  {
    return [result resignFirstResponder];
  }

  return result;
}

void sub_100276E20(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  dispatch thunk of TTRRemindersListEditableSectionNamePresenterType.requestHandleBeginEditingDisplayName()();
  v4 = [a1 textColor];
  v5 = *(v1 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousTextColor);
  *(v1 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousTextColor) = v4;

  v6 = [objc_opt_self() labelColor];
  [a1 setTextColor:v6];

  if (sub_1004E4D04())
  {
    v7 = [a1 text];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = (v2 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousText);
    *v12 = v9;
    v12[1] = v11;

    v13 = String._bridgeToObjectiveC()();
    [a1 setText:v13];
  }
}

void sub_1002770D8(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousTextColor;
  [a1 setTextColor:*(v2 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousTextColor)];
  v4 = *(v2 + v3);
  *(v2 + v3) = 0;

  swift_getObjectType();
  dispatch thunk of TTRRemindersListEditableSectionNamePresenterType.requestHandleEditingDisplayNameDidEnd()();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, Strong);
  }
}

uint64_t sub_100277208(uint64_t a1, uint64_t a2)
{
  result = sub_100277338(&qword_100776BB8, a2, type metadata accessor for TTRIRemindersListEditableSectionNameViewController);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100277260(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100776BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002772D0(uint64_t a1)
{
  v2 = sub_100058000(&unk_100776BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100277338(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100277380()
{
  v1 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_presenter);
  v5 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
  swift_beginAccess();
  sub_100277260(v4 + v5, v3);
  v6 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v3, 1, v6);
  sub_1002772D0(v3);
  if (v5 == 1 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    v13 = 0;
  }

  else
  {
    v8 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
    v9 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 88);
    v12 = v8;
    v13 = v11(ObjectType, v9);
    swift_unknownObjectRelease();
  }

  return v13 & 1;
}

uint64_t sub_1002774FC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);

      if (v3)
      {
        v10 = 0;
        return v10 & 1;
      }

      if ((v10 & (v9 != i)) == 0)
      {
        return v10 & 1;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v10 = 1;
  return v10 & 1;
}

uint64_t sub_100277620()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100776C00);
  v1 = sub_100003E30(v0, qword_100776C00);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002776E8(void *a1)
{
  v2 = type metadata accessor for Calendar();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  sub_10000C36C(a1, a1[3]);
  v13 = dispatch thunk of TTRReminderProtocol.displayDate.getter();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 dateByAdjustingFloatingDateForDefaultTimeZone];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v7 + 32))(v12, v9, v6);
    static Calendar.current.getter();
    v16 = Calendar.isDateInToday(_:)();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100277908()
{
  v1 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &unk_10078A380);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000079B4(v3, &unk_10078A380);
    return 0;
  }

  else
  {
    v8 = TTRRemindersListViewModel.ListInfo.color.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }
}

uint64_t sub_100277A64()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.today(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_100277B74()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.today(_:), v0);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100277C84()
{
  sub_100058000(&qword_1007693A8);
  v0 = type metadata accessor for TTRRemindersListViewModel.LeadingActionConfiguration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10062D3F0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for TTRRemindersListViewModel.LeadingActionConfiguration.postpone(_:), v0);
  v6(v5 + v2, enum case for TTRRemindersListViewModel.LeadingActionConfiguration.customDueDate(_:), v0);
  return v4;
}

uint64_t sub_100277DA8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*(v2 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_groupDataModelSource))
  {
    v7 = 0;
LABEL_8:
    v13 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
    v14 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v14 - 8) + 104))(a2, v13, v14);
    type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    swift_storeEnumTagMultiPayload();
    v15 = swift_allocObject();
    *(v15 + 16) = v7 & 1;
    *(v15 + 24) = v4;
    result = type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0);
    v16 = (a2 + *(result + 20));
    *v16 = sub_1002832E0;
    v16[1] = v15;
    return result;
  }

  v5 = v2;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = dispatch thunk of TTRShowTodayGroupsDataModelSourceType.grouped.getter();
  swift_unknownObjectRelease();
  if ((a1 & 1) == 0 || (v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
  v9 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v9 - 8) + 104))(a2, v8, v9);
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  v11 = (a2 + *(type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0) + 20));
  *v11 = sub_1002832EC;
  v11[1] = v10;
}

uint64_t sub_100277FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v4 = *(v46 - 8);
  __chkstk_darwin(v46);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = __chkstk_darwin(v13);
  v17 = *(a1 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_lastSectionsSnapshot);
  if (v17)
  {
    v39 = v6;
    v34 = &v33 - v15;
    v35 = v4;
    v36 = a2;
    v18 = *(v17 + 16);
    v42 = (v7 + 8);
    v43 = v14;
    v38 = (v4 + 8);
    v40 = v10 + 16;
    v41 = (v10 + 8);

    v20 = v39;
    while (1)
    {
      if (!v18)
      {

        v32 = 1;
        a2 = v36;
        goto LABEL_11;
      }

      if (v18 > *(v17 + 16))
      {
        break;
      }

      --v18;
      v21 = v17;
      v22 = v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18;
      v23 = *(v10 + 16);
      v24 = v43;
      v23(v12, v22, v43);
      v25 = v44;
      TTRRemindersListTreeViewModel.Section.header.getter();
      TTRRemindersListViewModel.SectionHeader.id.getter();
      v37 = *v42;
      v37(v25, v45);
      if (qword_100767078 != -1)
      {
        swift_once();
      }

      v26 = v46;
      sub_100003E30(v46, qword_100776CA8);
      sub_1002829F0(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v38)(v20, v26);
      v28 = *v41;
      result = (*v41)(v12, v24);
      v17 = v21;
      if ((v27 & 1) == 0)
      {
        v29 = v34;
        v30 = v43;
        v23(v34, v22, v43);

        v31 = v44;
        TTRRemindersListTreeViewModel.Section.header.getter();
        v28(v29, v30);
        a2 = v36;
        TTRRemindersListViewModel.SectionHeader.id.getter();
        v37(v31, v45);
        v32 = 0;
LABEL_11:
        v4 = v35;
        return (*(v4 + 56))(a2, v32, 1, v46, v16);
      }
    }

    __break(1u);
  }

  else
  {
    v32 = 1;
    return (*(v4 + 56))(a2, v32, 1, v46, v16);
  }

  return result;
}

uint64_t sub_100278420@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (qword_100767058 != -1)
    {
      swift_once();
    }

    v3 = qword_100776C48;
  }

  else
  {
    if (qword_100767048 != -1)
    {
      swift_once();
    }

    v3 = qword_100776C18;
  }

  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v5 = sub_100003E30(v4, v3);
  v8 = *(v4 - 8);
  (*(v8 + 16))(a2, v5, v4);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v4);
}

double sub_10027856C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10027B470();
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = *(v5 + 88);
  v11 = (v5 + 8);
  if (v10(v7, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v11)(v7, v4);
    v12 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 24) = v12;
    *(a2 + 32) = &off_10071A5E0;
    v13 = sub_1000317B8(a2);
    v9(v13, a1, v4);
    *(v13 + *(v12 + 20)) = v8;
    *(v13 + *(v12 + 24)) = 0;
  }

  else
  {

    (*v11)(v7, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10027870C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_10027B470();
  sub_10000794C(a1, v8, &qword_100772140);
  v10 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.AttributeMatchingRequest(0);
  v11 = swift_allocObject();
  result = sub_100016588(v8, v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_parent, &qword_100772140);
  *(v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_childIndex) = a2;
  *(v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_dragAndDropCapability) = v9;
  a3[3] = v10;
  a3[4] = &off_10071A4F0;
  *a3 = v11;
  return result;
}

void sub_100278840(void (*a1)(char *, uint64_t), void *a2)
{
  v76 = a1;
  v3 = sub_100058000(&qword_10076C6B8);
  __chkstk_darwin(v3 - 8);
  v77 = &v57 - v4;
  v5 = sub_100058000(&qword_1007775B0);
  __chkstk_darwin(v5 - 8);
  v65 = &v57 - v6;
  v7 = sub_100058000(&qword_1007775B8);
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v59 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v57 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v61 = *(v11 - 8);
  v62 = v11;
  __chkstk_darwin(v11);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v13 - 8);
  v75 = &v57 - v14;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v73 = *(v15 - 8);
  v74 = v15;
  __chkstk_darwin(v15);
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  v20 = type metadata accessor for Date();
  v71 = *(v20 - 8);
  v72 = v20;
  __chkstk_darwin(v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for TimeZone();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Calendar();
  v67 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DateComponents();
  v69 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v57 - v32;
  v34 = a2;
  v35 = TTRReminderEditor.changeItem.getter();
  v78 = [v35 displayDate];

  v36 = v78;
  if (!v78)
  {
    v57 = v19;
    v78 = v34;
    type metadata accessor for TTRReminderEditor();
    static Calendar.current.getter();
    static TimeZone.ttr_default.getter();
    Date.init()();
    Calendar.dateComponents(in:from:)();
    (*(v71 + 8))(v22, v72);
    (*(v68 + 8))(v24, v70);
    (*(v67 + 8))(v27, v25);
    static TTRReminderEditor.todayDueDateComponents(now:)();
    v37 = v69;
    v38 = *(v69 + 8);
    v38(v30, v28);

    v39 = v75;
    TTRRemindersListTreeViewModel.parent(of:)();

    v40 = v73;
    v41 = v74;
    v42 = v28;
    v43 = v37;
    if ((*(v73 + 48))(v39, 1, v74) == 1)
    {
      sub_1000079B4(v39, &qword_100772140);
    }

    else
    {
      v44 = v57;
      (*(v40 + 32))(v57, v39, v41);
      v45 = v66;
      (*(v40 + 16))(v66, v44, v41);
      v46 = (*(v40 + 88))(v45, v41);
      if (v46 != enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
      {
        if (v46 == enum case for TTRRemindersListViewModel.Item.section(_:))
        {
          v76 = v38;
          (*(v40 + 96))(v45, v41);
          v50 = v60;
          v49 = v61;
          v51 = v45;
          v52 = v62;
          (*(v61 + 32))(v60, v51, v62);
          v53 = v65;
          sub_10027BB94(v50, v65);
          (*(v49 + 8))(v50, v52);
          (*(v40 + 8))(v57, v41);
          if ((*(v63 + 48))(v53, 1, v64) == 1)
          {
            sub_1000079B4(v53, &qword_1007775B0);
            v48 = v77;
            v38 = v76;
            goto LABEL_10;
          }

          v38 = v76;
          v76(v33, v42);
          v54 = v58;
          sub_100016588(v53, v58, &qword_1007775B8);
          v55 = v54;
          v56 = v59;
          sub_100016588(v55, v59, &qword_1007775B8);
          (*(v43 + 32))(v33, v56, v42);
          goto LABEL_9;
        }

        if (v46 != enum case for TTRRemindersListViewModel.Item.reminder(_:) && v46 != enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) && v46 != enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) && v46 != enum case for TTRRemindersListViewModel.Item.completed(_:) && v46 != enum case for TTRRemindersListViewModel.Item.hashtags(_:) && v46 != enum case for TTRRemindersListViewModel.Item.templateStatus(_:) && v46 != enum case for TTRRemindersListViewModel.Item.tip(_:))
        {
          v48 = v77;
          if (v46 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v46 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
          {
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return;
          }

          (*(v40 + 8))(v44, v41);
LABEL_10:
          (*(v43 + 16))(v48, v33, v42);
          (*(v43 + 56))(v48, 0, 1, v42);
          TTRReminderEditor.edit(dueDateComponents:)();
          sub_1000079B4(v48, &qword_10076C6B8);
          v38(v33, v42);
          return;
        }
      }

      v47 = *(v40 + 8);
      v47(v44, v41);
      v47(v45, v41);
    }

LABEL_9:
    v48 = v77;
    goto LABEL_10;
  }
}

BOOL sub_100279244(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    v11 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)();
    swift_unknownObjectRelease();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_10000C36C(a1, a1[3]);
  v12 = dispatch thunk of TTRReminderProtocol.displayDate.getter();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    static Date.rem_startOfTomorrow.getter();
    LOBYTE(v14) = static Date.< infix(_:_:)();

    v15 = *(v5 + 8);
    v15(v7, v4);
    v15(v10, v4);
    if (v14)
    {
      return 1;
    }
  }

  sub_10000C36C(a1, a1[3]);
  v17 = TTRReminderProtocol.mostRelevantAlarmLocationTrigger()();
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v19 = [v17 structuredLocation];
  v20 = REMStructuredLocation.clCircularRegion.getter();

  v21 = *(v2 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_currentLocation);
  if (v21)
  {
    v22 = v21;
    v23 = REMStructuredLocation.clCircularRegion.getter();

    v16 = CLCircularRegion.overlaps(_:)(v20);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t sub_1002794B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10027B470();
  sub_1001D6AC0(a1, a2, a3);
}

uint64_t sub_100279514()
{
  v0 = type metadata accessor for TTRUserActivityListPayload.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = enum case for TTRListType.PredefinedSmartListType.today(_:);
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  (*(v1 + 104))(v3, enum case for TTRUserActivityListPayload.State.predefinedSmartListType(_:), v0);
  v8[3] = type metadata accessor for TTRUserActivityListPayload();
  v8[4] = &protocol witness table for TTRUserActivityListPayload;
  sub_1000317B8(v8);
  TTRUserActivityListPayload.init(state:)();
  NSUserActivity.setPayload(_:)();
  return sub_100004758(v8);
}

uint64_t sub_100279668()
{
  v29 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  sub_100003540(0, &qword_1007865E0);
  v28 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v14 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_10056FD04(ObjectType, v15);
    swift_unknownObjectRelease();
    v17 = type metadata accessor for TTRRemindersListViewModel.Item();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) != 1)
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*(v18 + 8))(v10, v17);
      v19 = 0;
      goto LABEL_6;
    }

    sub_1000079B4(v10, &qword_100772140);
  }

  v19 = 1;
LABEL_6:
  v20 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v20 - 8) + 56))(v13, v19, 1, v20);
  v21 = *(sub_100058000(&qword_1007693A0) + 48);
  v22 = enum case for TTRListType.PredefinedSmartListType.today(_:);
  v23 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v23 - 8) + 104))(v3, v22, v23);
  sub_10000794C(v13, &v3[v21], &unk_10076BB50);
  (*(v1 + 104))(v3, enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:), v29);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v30[3] = v4;
  v30[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v24 = sub_1000317B8(v30);
  (*(v5 + 16))(v24, v7, v4);
  v25 = v28;
  NSUserActivity.setPayload(_:)();
  (*(v5 + 8))(v7, v4);
  sub_1000079B4(v13, &unk_10076BB50);
  sub_100004758(v30);
  return v25;
}

id sub_100279AA8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_smartList);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListSortingStyleSaveTarget.smartList(_:);
    v10 = v3;
    v5 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v7 = v10;
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100279BE0()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_sectionHeadersNeedingPlaceholderReminderItems);

  TTRRemindersListViewModel.SectionHeader.id.getter();
  v6 = sub_1000A9D10(v4, v5);

  v7 = *(v2 + 8);
  v7(v4, v1);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v9 = OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_tappedSectionHeaders;
    swift_beginAccess();
    v10 = *(v0 + v9);

    TTRRemindersListViewModel.SectionHeader.id.getter();
    v8 = sub_1000A9D10(v4, v10);

    v7(v4, v1);
  }

  return v8 & 1;
}

uint64_t sub_100279D54(uint64_t a1)
{
  v56 = type metadata accessor for REMRemindersListDataView.Diff();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v4 - 8);
  v57 = &v52 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v61 = *(v6 - 8);
  v62 = v6;
  __chkstk_darwin(v6);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v8 - 8);
  v59 = &v52 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v64 = *(v10 - 8);
  v65 = v10;
  __chkstk_darwin(v10);
  v63 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v12 - 8);
  v53 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v66 = &v52 - v15;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for TTRRemindersListViewModel.Item();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1;
  sub_100576F6C(a1);
  v24 = *(v20 + 16);
  v67 = a1;
  v24(v22, a1, v19);
  v25 = *(v20 + 88);
  v26 = v25(v22, v19);
  v27 = enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:);
  v58 = *(v20 + 8);
  result = v58(v22, v19);
  if (v26 == v27)
  {
    v29 = v23;

    v30 = TTRRemindersListTreeViewModel.sectionItems.getter();

    __chkstk_darwin(v31);
    v32 = v67;
    *(&v52 - 2) = v23;
    *(&v52 - 1) = v32;
    sub_1002EC8C4(sub_1002832C0, v30, v18);

    v33 = v66;
    sub_10000794C(v18, v66, &qword_100772140);
    v34 = v18;
    if ((*(v20 + 48))(v33, 1, v19) == 1)
    {
      sub_1000079B4(v18, &qword_100772140);
      v35 = v33;
      return sub_1000079B4(v35, &qword_100772140);
    }

    if (v25(v33, v19) == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      v67 = v20;
      v36 = v19;
      (*(v20 + 96))(v33, v19);
      v38 = v64;
      v37 = v65;
      v39 = v33;
      v40 = v63;
      (*(v64 + 32))(v63, v39, v65);
      v41 = v60;
      TTRRemindersListViewModel.SectionHeader.id.getter();
      swift_beginAccess();
      v42 = v59;
      sub_1000EA510(v41, v59);
      (*(v61 + 8))(v41, v62);
      sub_1000079B4(v42, &qword_10076B070);
      swift_endAccess();
      v43 = *(v29 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_lastSectionsSnapshot);
      if (!v43)
      {
        (*(v38 + 8))(v40, v37);
        v35 = v34;
        return sub_1000079B4(v35, &qword_100772140);
      }

      v44 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
      v45 = v57;
      (*(*(v44 - 8) + 56))(v57, 1, 1, v44);
      v52 = v34;
      if (_swiftEmptyArrayStorage >> 62)
      {
        v51 = _CocoaArrayWrapper.endIndex.getter();

        if (v51)
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        v45 = v57;
        v40 = v63;
        v38 = v64;
      }

      else
      {
      }

      v46 = v54;
      REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
      v47 = type metadata accessor for TodayViewReminderIDProvider();
      v48 = swift_allocObject();
      v49 = v53;
      (*(v67 + 56))(v53, 1, 1, v36);
      v69[3] = v47;
      v69[4] = sub_1002829F0(&qword_1007775A8, type metadata accessor for TodayViewReminderIDProvider);
      v69[0] = v48;
      sub_10000B0D8(v69, v68);
      v50 = swift_allocObject();
      *(v50 + 16) = v43;
      sub_100005FD0(v68, v50 + 24);
      *(v50 + 64) = v29;

      sub_100586238(1, v45, sub_100283360, v50, v46, 0, v49);
      sub_1000079B4(v49, &qword_100772140);
      (*(v55 + 8))(v46, v56);
      sub_1000079B4(v45, &unk_10078A380);
      (*(v38 + 8))(v40, v65);
      sub_1000079B4(v52, &qword_100772140);

      return sub_100004758(v69);
    }

    else
    {
      sub_1000079B4(v18, &qword_100772140);
      return v58(v33, v19);
    }
  }

  return result;
}

uint64_t sub_10027A6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100768B60);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v28 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  __chkstk_darwin(v15);
  v17 = &v25 - v16;

  TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(atTheEndOfSection:)();

  (*(v4 + 16))(v14, v27, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_10000794C(v17, v9, &qword_100772140);
  sub_10000794C(v14, &v9[v18], &qword_100772140);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    sub_10000794C(v9, v28, &qword_100772140);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v21 = &v9[v18];
      v22 = v26;
      (*(v4 + 32))(v26, v21, v3);
      sub_1002829F0(&qword_100768B68, &type metadata accessor for TTRRemindersListViewModel.Item);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v4 + 8);
      v23(v22, v3);
      sub_1000079B4(v14, &qword_100772140);
      sub_1000079B4(v17, &qword_100772140);
      v23(v28, v3);
      sub_1000079B4(v9, &qword_100772140);
      return v20 & 1;
    }

    sub_1000079B4(v14, &qword_100772140);
    sub_1000079B4(v17, &qword_100772140);
    (*(v4 + 8))(v28, v3);
    goto LABEL_6;
  }

  sub_1000079B4(v14, &qword_100772140);
  sub_1000079B4(v17, &qword_100772140);
  if (v19(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_1000079B4(v9, &qword_100768B60);
    v20 = 0;
    return v20 & 1;
  }

  sub_1000079B4(v9, &qword_100772140);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_10027AB3C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMRemindersListDataView.Diff();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v6 - 8);
  v42 = &v37 - v7;
  v8 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v8 - 8);
  v37 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v43 = *(v13 - 8);
  v44 = v13;
  __chkstk_darwin(v13);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v37 - v20;
  v22 = OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_tappedSectionHeaders;
  swift_beginAccess();
  v23 = *(v1 + v22);

  v24 = sub_1000A9D10(a1, v23);

  if ((v24 & 1) == 0)
  {
    (*(v16 + 16))(v18, a1, v15);
    swift_beginAccess();
    sub_10058D0CC(v21, v18);
    (*(v16 + 8))(v21, v15);
    result = swift_endAccess();
    v26 = *(v2 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_lastSectionsSnapshot);
    if (v26)
    {

      TTRRemindersListTreeViewModel.sectionItem(with:)();

      v28 = v43;
      v27 = v44;
      if ((*(v43 + 48))(v12, 1, v44) == 1)
      {

        return sub_1000079B4(v12, &qword_100772140);
      }

      else
      {
        v29 = v41;
        (*(v28 + 32))(v41, v12, v27);
        v30 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
        v31 = v42;
        (*(*(v30 - 8) + 56))(v42, 1, 1, v30);
        if (_swiftEmptyArrayStorage >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100599F5C(_swiftEmptyArrayStorage);
          }

          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100599F5C(_swiftEmptyArrayStorage);
          }

          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100599F5C(_swiftEmptyArrayStorage);
          }

          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100599F5C(_swiftEmptyArrayStorage);
          }

          v31 = v42;
          v28 = v43;
          v27 = v44;
          v29 = v41;
        }

        v32 = v38;
        REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
        v33 = type metadata accessor for TodayViewReminderIDProvider();
        v34 = swift_allocObject();
        v35 = v37;
        (*(v28 + 16))(v37, v29, v27);
        (*(v28 + 56))(v35, 0, 1, v27);
        v46[3] = v33;
        v46[4] = sub_1002829F0(&qword_1007775A8, type metadata accessor for TodayViewReminderIDProvider);
        v46[0] = v34;
        sub_10000B0D8(v46, v45);
        v36 = swift_allocObject();
        *(v36 + 16) = v26;
        sub_100005FD0(v45, v36 + 24);
        *(v36 + 64) = v2;

        sub_100586238(1, v31, sub_100283360, v36, v32, 0, v35);
        sub_1000079B4(v35, &qword_100772140);
        (*(v39 + 8))(v32, v40);
        sub_1000079B4(v31, &unk_10078A380);
        (*(v28 + 8))(v29, v27);

        return sub_100004758(v46);
      }
    }
  }

  return result;
}

uint64_t sub_10027B224@<X0>(unsigned int *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v8 = *(v5 - 8);
  (*(v8 + 104))(a3, v4, v5);
  v6 = *(v8 + 56);

  return v6(a3, 0, 1, v5);
}

uint64_t sub_10027B398(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  sub_100003E68(v5, a2);
  v6 = sub_100003E30(v5, a2);
  v7 = *a3;
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  v9 = enum case for TTRRemindersListViewModel.SectionID.named(_:);
  v10 = *(*(v5 - 8) + 104);

  return v10(v6, v9, v5);
}

uint64_t sub_10027B470()
{
  v1 = OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    _s9Reminders30DragAndDropPresenterCapabilityCMa_1();
    v2 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3 = REMSmartListTypeToday;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 40) = 1;
    *(v2 + 24) = &off_10071D5A0;
    *(v2 + 32) = v3;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
    v4 = v3;
  }

  return v2;
}

uint64_t sub_10027B544@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v1 - 8);
  v43 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v3 - 8);
  v42 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v5 - 8);
  v41 = &v34 - v6;
  v7 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v7 - 8);
  v40 = &v34 - v8;
  v37 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v9 = *(v37 - 8);
  __chkstk_darwin(v37);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v15 - 8);
  v17 = &v34 - v16;
  v18 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v18 - 8);
  v20 = &v34 - v19;
  v21 = enum case for TTRListType.PredefinedSmartListType.today(_:);
  v22 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = enum case for TTRListType.predefinedSmartList(_:);
  v24 = type metadata accessor for TTRListType();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v20, v23, v24);
  (*(v25 + 56))(v20, 0, 1, v24);
  REMSmartListType.title.getter();
  v27 = v26;
  v36 = static TTRListColors.SmartList.today.getter();
  v28 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  v29 = *(*(v28 - 8) + 56);
  v38 = v17;
  v29(v17, 1, 1, v28);
  TTRRemindersListSectionMenuCapabilities.init()();
  v35 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v12 + 8))(v14, v11);
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter())
  {
    swift_unknownObjectRelease();
  }

  v30 = 0xE000000000000000;
  if (v27)
  {
    v30 = v27;
  }

  v34 = v30;
  (*(v9 + 104))(v39, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v37);
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
  sub_1000079B4(v45, &qword_1007693C0);
  v31 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  v32 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v32 - 8) + 56))(v41, 1, 1, v32);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  return TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
}

uint64_t sub_10027BB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v45 = a2;
  v2 = sub_100058000(&qword_1007775C0);
  __chkstk_darwin(v2 - 8);
  v37 = &v36 - v3;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  __chkstk_darwin(v4);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Date();
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TimeZone();
  v46 = *(v39 - 8);
  __chkstk_darwin(v39);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Calendar();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DateComponents();
  v38 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  type metadata accessor for TTRReminderEditor();
  static Calendar.current.getter();
  static TimeZone.ttr_default.getter();
  Date.init()();
  Calendar.dateComponents(in:from:)();
  (*(v7 + 8))(v9, v40);
  v22 = v39;
  (*(v46 + 8))(v11, v39);
  (*(v13 + 8))(v15, v12);
  v23 = v16;
  v24 = v38;
  static TTRReminderEditor.todayDueDateComponents(now:)();
  v25 = *(v24 + 8);
  v26 = v18;
  v27 = v41;
  v25(v26, v23);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (qword_100767048 != -1)
  {
    swift_once();
  }

  v28 = v43;
  sub_100003E30(v43, qword_100776C18);
  sub_1002829F0(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    (*(v44 + 8))(v27, v28);
    v29 = 1;
LABEL_23:
    v31 = sub_100058000(&qword_1007775B8);
    v32 = *(v31 + 48);
    swift_beginAccess();
    v33 = v45;
    (*(v24 + 16))(v45, v21, v23);
    v25(v21, v23);
    *(v33 + v32) = v29;
    return (*(*(v31 - 8) + 56))(v33, 0, 1, v31);
  }

  if (qword_100767050 != -1)
  {
    swift_once();
  }

  sub_100003E30(v28, qword_100776C30);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    goto LABEL_11;
  }

  if (qword_100767058 != -1)
  {
    swift_once();
  }

  sub_100003E30(v28, qword_100776C48);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
LABEL_11:
    (*(v44 + 8))(v27, v28);
    v29 = 0;
    goto LABEL_23;
  }

  if (qword_100767060 != -1)
  {
    swift_once();
  }

  sub_100003E30(v28, qword_100776C60);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    goto LABEL_22;
  }

  if (qword_100767068 != -1)
  {
    swift_once();
  }

  sub_100003E30(v28, qword_100776C78);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    goto LABEL_22;
  }

  if (qword_100767070 != -1)
  {
    swift_once();
  }

  sub_100003E30(v28, qword_100776C90);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
LABEL_22:
    (*(v44 + 8))(v27, v28);
    REMLocalizedTimeOfDay.creationHour.getter();
    v30 = v37;
    static TimeZone.ttr_default.getter();
    v29 = 1;
    (*(v46 + 56))(v30, 0, 1, v22);
    swift_beginAccess();
    DateComponents.timeZone.setter();
    DateComponents.hour.setter();
    DateComponents.minute.setter();
    DateComponents.second.setter();
    swift_endAccess();
    goto LABEL_23;
  }

  if (qword_100767078 != -1)
  {
    swift_once();
  }

  sub_100003E30(v28, qword_100776CA8);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    if (qword_100767080 != -1)
    {
      swift_once();
    }

    sub_100003E30(v28, qword_100776CC0);
    dispatch thunk of static Equatable.== infix(_:_:)();
  }

  (*(v44 + 8))(v27, v28);
  v25(v21, v23);
  v35 = sub_100058000(&qword_1007775B8);
  return (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
}

uint64_t sub_10027C49C()
{
  swift_unknownObjectRelease();
}

uint64_t sub_10027C52C()
{
  v0 = sub_10056FD38();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10027C5C4()
{
  sub_10027C52C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowTodayViewModelSource()
{
  result = qword_100776D40;
  if (!qword_100776D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10027C6D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v121 = *v3;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v127 = &v99 - v7;
  v8 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v8 - 8);
  v126 = &v99 - v9;
  v120 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v117 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v114 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v111 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v14 - 8);
  v109 = &v99 - v15;
  v125 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v130 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v129 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100058000(&qword_10076F6E8);
  __chkstk_darwin(v19 - 8);
  v105 = &v99 - v20;
  v21 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v106 = *(v21 - 8);
  __chkstk_darwin(v21);
  v104 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100058000(&qword_100769378);
  __chkstk_darwin(v23 - 8);
  v25 = &v99 - v24;
  v26 = type metadata accessor for TTRListType.SortingCapability();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v102 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v29);
  v32 = &v99 - v31;
  v33 = OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_smartList;
  v34 = *&v3[OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_smartList];
  v131 = a1;
  v107 = v21;
  if (!v34)
  {
    v36 = REMRemindersListDataView.TodayGroupModel.todaySmartList.getter();
    if (!v36)
    {
      goto LABEL_15;
    }

    v35 = 0;
LABEL_7:
    v37 = v36;
    v38 = [v36 sortingStyle];

    if (v35)
    {
      if (v38)
      {
        v103 = a2;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
        if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
        {
          LODWORD(v128) = 1;
        }

        else
        {
          LODWORD(v128) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a2 = v103;
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    if (v38)
    {
      LODWORD(v128) = 0;
      goto LABEL_18;
    }

LABEL_15:
    LODWORD(v128) = 1;
    goto LABEL_19;
  }

  v35 = [v34 sortingStyle];
  v36 = REMRemindersListDataView.TodayGroupModel.todaySmartList.getter();
  if (v36)
  {
    goto LABEL_7;
  }

  if (!v35)
  {
    goto LABEL_15;
  }

LABEL_12:
  LODWORD(v128) = 0;
  v38 = v35;
LABEL_18:

LABEL_19:
  v43 = *&v3[v33];
  v44 = REMRemindersListDataView.TodayGroupModel.todaySmartList.getter();
  v45 = v44;
  if (v44)
  {
  }

  v46 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v27 + 16))(v32, &v3[v46], v26);
  v47 = (*(v27 + 88))(v32, v26);
  if (v47 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    if ((v43 == 0) == (v45 != 0))
    {
      v48 = v47;
      v49 = REMRemindersListDataView.TodayGroupModel.todaySmartList.getter();
      v50 = v49;
      if (v49)
      {
      }

      v51 = v50 != 0;
      v52 = v102;
      *v102 = v51;
      (*(v27 + 104))(v52, v48, v26);
      swift_beginAccess();
      (*(v27 + 40))(&v3[v46], v52, v26);
      swift_endAccess();
    }
  }

  else
  {
    (*(v27 + 8))(v32, v26);
  }

  v53 = REMRemindersListDataView.TodayGroupModel.todaySmartList.getter();
  v54 = *&v3[v33];
  *&v3[v33] = v53;

  REMRemindersListDataView.TodayGroupModel.remindersCount.getter();
  v55 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v56 = *(v55 - 8);
  v57 = (*(v56 + 48))(v25, 1, v55);
  if (v57 == 1)
  {
    sub_1000079B4(v25, &qword_100769378);
    v58 = 0;
  }

  else
  {
    v58 = REMRemindersListDataView.CountByCompleted.completed.getter();
    (*(v56 + 8))(v25, v55);
  }

  v59 = &v3[OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_completedRemindersCount];
  *v59 = v58;
  v59[8] = v57 == 1;
  v60 = REMRemindersListDataView.TodayGroupModel.currentLocation.getter();
  v61 = *&v3[OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_currentLocation];
  *&v3[OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_currentLocation] = v60;

  if (v128)
  {
    sub_10027B544(v129);
    v62 = swift_allocObject();
    v128 = v62;
    *(v62 + 16) = &_swiftEmptySetSingleton;
    v107 = v62 + 16;
    v63 = v3[OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions + 2] == 1;
    v103 = a2;
    if (v63)
    {
      if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        sub_1004054A4(_swiftEmptyArrayStorage);
        v71 = v96;
      }

      else
      {
        v71 = &_swiftEmptySetSingleton;
      }
    }

    else
    {
      v70 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_recurrentReminderReplacements;
      swift_beginAccess();
      v133[0] = *&v3[v70];

      sub_100058000(&qword_100777590);
      sub_100003540(0, &qword_10076BA50);
      sub_10011763C(&qword_100777598, &qword_100777590);
      sub_1001288B4();
      v71 = Sequence.compactMapToSet<A>(_:)();
    }

    sub_100058000(&qword_1007775A0);
    v72 = swift_allocBox();
    v106 = v72;
    v74 = v73;
    v75 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
    (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
    v76 = type metadata accessor for TTRListColors.Color();
    (*(*(v76 - 8) + 56))(v109, 1, 1, v76);
    (*(v108 + 104))(v111, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:), v110);
    (*(v112 + 104))(v114, enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:), v113);
    (*(v115 + 104))(v117, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:), v116);
    (*(v118 + 104))(v119, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:), v120);
    v98 = 0;
    v77 = v130;
    TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
    v78 = REMRemindersListDataView.TodayGroupModel.groups.getter();
    __chkstk_darwin(v78);
    *(&v99 - 6) = v72;
    *(&v99 - 5) = v77;
    v79 = v128;
    *(&v99 - 4) = v71;
    *(&v99 - 3) = v79;
    v97 = v121;
    v80 = sub_100399908(sub_1002829C8, (&v99 - 8), v78);

    *&v3[OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_lastSectionsSnapshot] = v80;

    swift_beginAccess();
    *&v3[OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_sectionHeadersNeedingPlaceholderReminderItems] = *(v79 + 16);

    swift_beginAccess();

    sub_1000EC0CC(v81);
    swift_endAccess();

    v82 = v122;
    v83 = v126;
    v84 = v129;
    v85 = v123;
    (*(v122 + 16))(v126, v129, v123);
    (*(v82 + 56))(v83, 0, 1, v85);
    v86 = type metadata accessor for TodayViewReminderIDProvider();
    v87 = swift_allocObject();
    v88 = type metadata accessor for TTRRemindersListViewModel.Item();
    v89 = v127;
    (*(*(v88 - 8) + 56))(v127, 1, 1, v88);
    v133[3] = v86;
    v133[4] = sub_1002829F0(&qword_1007775A8, type metadata accessor for TodayViewReminderIDProvider);
    v133[0] = v87;
    sub_10000B0D8(v133, &v132);
    v90 = swift_allocObject();
    *(v90 + 16) = v80;
    sub_100005FD0(&v132, v90 + 24);
    *(v90 + 64) = v3;

    sub_100586238(1, v83, sub_100070528, v90, v103, 0, v89);
    sub_1000079B4(v89, &qword_100772140);
    sub_1000079B4(v83, &unk_10078A380);
    (*(v82 + 8))(v84, v85);

    sub_100004758(v133);
    (*(v124 + 8))(v130, v125);
  }

  else
  {
    v64 = *&v3[v33];
    if (v64)
    {
      v65 = [v64 sortingStyle];
      v66 = v105;
      REMSortingStyle.dataViewSortingStyle.getter();

      v67 = v106;
      v68 = v107;
      (*(v106 + 56))(v66, 0, 1, v107);
      v69 = v104;
      (*(v67 + 32))(v104, v66, v68);
    }

    else
    {
      v67 = v106;
      v92 = v105;
      v68 = v107;
      (*(v106 + 56))(v105, 1, 1, v107);
      v93 = v100;
      v94 = v99;
      v95 = v101;
      (*(v100 + 104))(v99, enum case for TTRListType.PredefinedSmartListType.today(_:), v101);
      v69 = v104;
      TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
      (*(v93 + 8))(v94, v95);
      if ((*(v67 + 48))(v92, 1, v68) != 1)
      {
        sub_1000079B4(v92, &qword_10076F6E8);
      }
    }

    sub_10057A85C();
    return (*(v67 + 8))(v69, v68);
  }
}

uint64_t sub_10027D950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v56 = a3;
  v64 = a4;
  v65 = a2;
  v62 = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v63 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100058000(&qword_100768B50);
  __chkstk_darwin(v54);
  v55 = &v47 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v66 = *(v10 - 8);
  __chkstk_darwin(v10);
  v59 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v19 - 8);
  v58 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v53 = &v47 - v22;
  __chkstk_darwin(v23);
  v25 = &v47 - v24;
  __chkstk_darwin(v26);
  v28 = &v47 - v27;
  v29 = swift_projectBox();
  swift_beginAccess();
  if ((*(v16 + 48))(v29, 1, v15))
  {
    v30 = v14;
    (*(v7 + 56))(v28, 1, 1, v6);
    v31 = v66;
  }

  else
  {
    (*(v16 + 16))(v18, v29, v15);
    TTRRemindersListTreeViewModel.Section.header.getter();
    (*(v16 + 8))(v18, v15);
    TTRRemindersListViewModel.SectionHeader.title.getter();
    v31 = v66;
    v30 = v14;
    (*(v66 + 8))(v14, v10);
  }

  v57 = v30;
  v32 = *(v7 + 48);
  if (v32(v28, 1, v6) == 1)
  {
    goto LABEL_5;
  }

  v51 = v10;
  v33 = *(v7 + 16);
  v49 = v7 + 16;
  v47 = v33;
  v33(v25, v56, v6);
  v34 = *(v7 + 56);
  v50 = v7 + 56;
  v48 = v34;
  v34(v25, 0, 1, v6);
  v35 = v55;
  v36 = *(v54 + 48);
  sub_10000794C(v28, v55, &unk_10076B050);
  sub_10000794C(v25, v35 + v36, &unk_10076B050);
  if (v32(v35, 1, v6) != 1)
  {
    v38 = v53;
    sub_10000794C(v35, v53, &unk_10076B050);
    if (v32((v35 + v36), 1, v6) != 1)
    {
      v42 = v52;
      (*(v7 + 32))(v52, v35 + v36, v6);
      sub_1002829F0(&qword_100768B58, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle);
      v43 = v38;
      v44 = v35;
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v7 + 8);
      v46(v42, v6);
      sub_1000079B4(v25, &unk_10076B050);
      v46(v43, v6);
      sub_1000079B4(v44, &unk_10076B050);
      v10 = v51;
      v31 = v66;
      if (v45)
      {
        goto LABEL_5;
      }

LABEL_12:
      (*(v60 + 16))(v63, v62, v61);
      v39 = v58;
      v47(v58, v56, v6);
      v48(v39, 0, 1, v6);
      goto LABEL_13;
    }

    sub_1000079B4(v25, &unk_10076B050);
    (*(v7 + 8))(v38, v6);
    v10 = v51;
    v31 = v66;
LABEL_11:
    sub_1000079B4(v35, &qword_100768B50);
    goto LABEL_12;
  }

  sub_1000079B4(v25, &unk_10076B050);
  v37 = v32((v35 + v36), 1, v6);
  v10 = v51;
  v31 = v66;
  if (v37 != 1)
  {
    goto LABEL_11;
  }

  sub_1000079B4(v35, &unk_10076B050);
LABEL_5:
  (*(v60 + 16))(v63, v62, v61);
  (*(v7 + 56))(v58, 1, 1, v6);
LABEL_13:
  v40 = v59;
  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
  (*(v31 + 16))(v57, v40, v10);

  TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
  (*(v31 + 8))(v40, v10);
  return sub_1000079B4(v28, &unk_10076B050);
}

uint64_t sub_10027E1B4@<X0>(void (**a1)(char *, uint64_t)@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v223 = a3;
  v257 = a2;
  v251 = a1;
  v254 = a4;
  v4 = sub_100058000(&qword_1007775A0);
  __chkstk_darwin(v4 - 8);
  v253 = &v211 - v5;
  v6 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v6 - 8);
  v239 = &v211 - v7;
  v255 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v247 = *(v255 - 1);
  __chkstk_darwin(v255);
  v222 = &v211 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v241 = &v211 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v243 = *(v11 - 8);
  v244 = v11;
  __chkstk_darwin(v11);
  object = &v211 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v218 = &v211 - v14;
  __chkstk_darwin(v15);
  v227 = &v211 - v16;
  __chkstk_darwin(v17);
  v242 = &v211 - v18;
  __chkstk_darwin(v19);
  v246 = &v211 - v20;
  v237 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v238 = &v211 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v22 - 8);
  v234 = &v211 - v23;
  v233 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v232 = *(v233 - 8);
  __chkstk_darwin(v233);
  v235 = &v211 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v214 = &v211 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v217 = &v211 - v27;
  __chkstk_darwin(v28);
  v220 = &v211 - v29;
  __chkstk_darwin(v30);
  v225 = &v211 - v31;
  v229 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v228 = *(v229 - 8);
  __chkstk_darwin(v229);
  v212 = &v211 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  countAndFlagsBits = &v211 - v34;
  __chkstk_darwin(v35);
  v219 = &v211 - v36;
  __chkstk_darwin(v37);
  v224 = &v211 - v38;
  v240 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v248 = *(v240 - 8);
  __chkstk_darwin(v240);
  v213 = &v211 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v221 = &v211 - v41;
  __chkstk_darwin(v42);
  v226 = &v211 - v43;
  __chkstk_darwin(v44);
  v245 = &v211 - v45;
  v46 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v47 = *(v46 - 8);
  v249 = v46;
  v250 = v47;
  __chkstk_darwin(v46);
  v49 = &v211 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v211 - v51;
  __chkstk_darwin(v53);
  v55 = &v211 - v54;
  __chkstk_darwin(v56);
  v58 = &v211 - v57;
  v59 = type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group.GroupType();
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v62 = &v211 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = swift_projectBox();
  REMRemindersListDataView.TodayGroupModel.Group.groupType.getter();
  v63 = (*(v60 + 88))(v62, v59);
  if (v63 == enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.today(_:))
  {
    if (qword_100767048 != -1)
    {
      swift_once();
    }

    v64 = qword_100776C18;
    goto LABEL_12;
  }

  if (v63 == enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.beforeToday(_:))
  {
    if (qword_100767050 != -1)
    {
      swift_once();
    }

    v64 = qword_100776C30;
    goto LABEL_12;
  }

  if (v63 == enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.todayAllDay(_:))
  {
    if (qword_100767058 == -1)
    {
LABEL_11:
      v64 = qword_100776C48;
LABEL_12:
      v65 = sub_100003E30(v255, v64);
      v66 = REMRemindersListDataView.TodayGroupModel.Group.reminders.getter();
      v55 = v254;
LABEL_13:
      sub_10027D950(v65, v66, v251, v55);

LABEL_14:
      v67 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
      v68 = *(v67 - 8);
      v69 = v253;
      (*(v68 + 16))(v253, v55, v67);
      (*(v68 + 56))(v69, 0, 1, v67);
      v70 = v252;
      swift_beginAccess();
      return sub_100283230(v69, v70);
    }

LABEL_128:
    swift_once();
    goto LABEL_11;
  }

  if (v63 == enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.morning(_:))
  {
    if (qword_100767060 == -1)
    {
LABEL_17:
      v72 = v255;
      v73 = sub_100003E30(v255, qword_100776C60);
      v74._countAndFlagsBits = 0x676E696E726F4DLL;
      v75._object = 0x800000010067BB00;
      v74._object = 0xE700000000000000;
      v75._countAndFlagsBits = 0xD000000000000022;
      v76 = TTRLocalizedString(_:comment:)(v74, v75);
      countAndFlagsBits = v76._countAndFlagsBits;
      object = v76._object;
      v77 = REMRemindersListDataView.TodayGroupModel.Group.reminders.getter();
      v78 = *(v77 + 16);
      v218 = v77;
      v219 = v78;
      if (!v78)
      {
        v93 = 0;
LABEL_75:
        (*(v228 + 104))(v224, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:), v229);
        v133 = &enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.secondary(_:);
        if (!v93)
        {
          v133 = &enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.disabled(_:);
        }

        (*(v230 + 104))(v225, *v133, v231);
        (*(v232 + 104))(v235, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.medium(_:), v233);
        v134 = type metadata accessor for TTRListColors.Color();
        (*(*(v134 - 8) + 56))(v234, 1, 1, v134);
        (*(v236 + 104))(v238, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:), v237);
        v135 = v245;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v136 = v247;
        v137 = *(v247 + 16);
        v138 = v241;
        v137(v241, v73, v72);
        v139 = v248;
        v140 = v239;
        v141 = v135;
        v142 = v240;
        (*(v248 + 16))(v239, v141, v240);
        (*(v139 + 56))(v140, 0, 1, v142);
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        v55 = v254;
        if (((v93 ^ 1) & 1) == 0)
        {
          v143 = v222;
          v144 = v73;
          v145 = v255;
          v137(v222, v144, v255);
          swift_beginAccess();
          sub_10058D0CC(v138, v143);
          swift_endAccess();
          (*(v136 + 8))(v138, v145);
        }

        v146 = v243;
        v147 = v246;
        v148 = v244;
        (*(v243 + 16))(v242, v246, v244);
        TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
        (*(v146 + 8))(v147, v148);
        (*(v248 + 8))(v245, v142);
        goto LABEL_14;
      }

      v79 = v77;
      sub_100003540(0, &qword_10076BA50);
      v80 = 0;
      v226 = (v257 & 0xC000000000000001);
      v221 = &v79[(*(v250 + 80) + 32) & ~*(v250 + 80)];
      v220 = (v250 + 16);
      v81 = v257 & 0xFFFFFFFFFFFFFF8;
      if (v257 < 0)
      {
        v81 = v257;
      }

      v217 = v81;
      v251 = (v250 + 8);
      v82 = v257 + 56;
      v83 = v249;
      v227 = v73;
      while (v80 < *(v79 + 2))
      {
        (*(v250 + 16))(v58, &v221[*(v250 + 72) * v80], v83);
        v84 = REMRemindersListDataView.ReminderLite.objectID.getter();
        if (v226)
        {
          v85 = __CocoaSet.contains(_:)();

          (*v251)(v58, v83);
          if ((v85 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (!*(v257 + 16) || (v86 = v257, v87 = NSObject._rawHashValue(seed:)(*(v257 + 40)), v88 = -1 << *(v86 + 32), v89 = v87 & ~v88, ((*(v82 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0))
          {
LABEL_53:
            (*v251)(v58, v249);

LABEL_54:
            v93 = 1;
            v72 = v255;
            v73 = v227;
            goto LABEL_75;
          }

          v90 = ~v88;
          while (1)
          {
            v91 = *(*(v257 + 48) + 8 * v89);
            v92 = static NSObject.== infix(_:_:)();

            if (v92)
            {
              break;
            }

            v89 = (v89 + 1) & v90;
            if (((*(v82 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
            {
              goto LABEL_53;
            }
          }

          v83 = v249;
          (*v251)(v58, v249);

          v79 = v218;
        }

        ++v80;
        v73 = v227;
        if (v80 == v219)
        {
          v93 = 0;
          v72 = v255;
          goto LABEL_75;
        }
      }

      __break(1u);
      goto LABEL_128;
    }

LABEL_130:
    swift_once();
    goto LABEL_17;
  }

  if (v63 == enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.afternoon(_:))
  {
    v94 = v249;
    if (qword_100767068 == -1)
    {
LABEL_36:
      v58 = v255;
      v95 = sub_100003E30(v255, qword_100776C78);
      v96._countAndFlagsBits = 0x6F6F6E7265746641;
      v97._countAndFlagsBits = 0xD000000000000024;
      v97._object = 0x800000010067BAD0;
      v96._object = 0xE90000000000006ELL;
      v98 = TTRLocalizedString(_:comment:)(v96, v97);
      v218 = v98._countAndFlagsBits;
      v217 = v98._object;
      v99 = REMRemindersListDataView.TodayGroupModel.Group.reminders.getter();
      v100 = *(v99 + 16);
      v224 = v99;
      if (v100)
      {
        v101 = v99;
        countAndFlagsBits = v95;
        sub_100003540(0, &qword_10076BA50);
        v102 = 0;
        v246 = (v257 & 0xC000000000000001);
        v245 = &v101[(*(v250 + 80) + 32) & ~*(v250 + 80)];
        v225 = (v250 + 16);
        v103 = v257 & 0xFFFFFFFFFFFFFF8;
        if (v257 < 0)
        {
          v103 = v257;
        }

        v221 = v103;
        v251 = (v250 + 8);
        v104 = v257 + 56;
        object = v100;
        while (v102 < *(v101 + 2))
        {
          (*(v250 + 16))(v55, &v245[*(v250 + 72) * v102], v94);
          v58 = REMRemindersListDataView.ReminderLite.objectID.getter();
          if (v246)
          {
            v105 = __CocoaSet.contains(_:)();

            (*v251)(v55, v94);
            if ((v105 & 1) == 0)
            {
              goto LABEL_81;
            }
          }

          else
          {
            if (!*(v257 + 16) || (v106 = v257, v107 = NSObject._rawHashValue(seed:)(*(v257 + 40)), v108 = -1 << *(v106 + 32), v109 = v107 & ~v108, ((*(v104 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0))
            {
LABEL_80:
              (*v251)(v55, v249);

LABEL_81:
              v113 = 1;
LABEL_82:
              v58 = v255;
              v95 = countAndFlagsBits;
              goto LABEL_104;
            }

            v110 = ~v108;
            while (1)
            {
              v111 = *(*(v257 + 48) + 8 * v109);
              v112 = static NSObject.== infix(_:_:)();

              if (v112)
              {
                break;
              }

              v109 = (v109 + 1) & v110;
              if (((*(v104 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
              {
                goto LABEL_80;
              }
            }

            v94 = v249;
            (*v251)(v55, v249);

            v101 = v224;
            v100 = object;
          }

          if (++v102 == v100)
          {
            v113 = 0;
            goto LABEL_82;
          }
        }

        __break(1u);
        goto LABEL_130;
      }

      v113 = 0;
LABEL_104:
      (*(v228 + 104))(v219, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:), v229);
      v168 = &enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.secondary(_:);
      if (!v113)
      {
        v168 = &enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.disabled(_:);
      }

      (*(v230 + 104))(v220, *v168, v231);
      (*(v232 + 104))(v235, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.medium(_:), v233);
      v169 = type metadata accessor for TTRListColors.Color();
      (*(*(v169 - 8) + 56))(v234, 1, 1, v169);
      (*(v236 + 104))(v238, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:), v237);
      v170 = v226;
      TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
      v171 = v247;
      v172 = *(v247 + 16);
      v173 = v241;
      v172(v241, v95, v58);
      v174 = v248;
      v175 = v95;
      v176 = v239;
      v177 = v170;
      v178 = v240;
      (*(v248 + 16))(v239, v177, v240);
      (*(v174 + 56))(v176, 0, 1, v178);
      TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
      v55 = v254;
      if (((v113 ^ 1) & 1) == 0)
      {
        v179 = v222;
        v180 = v175;
        v181 = v255;
        v172(v222, v180, v255);
        swift_beginAccess();
        sub_10058D0CC(v173, v179);
        swift_endAccess();
        (*(v171 + 8))(v173, v181);
      }

      v182 = v243;
      v183 = v227;
      v184 = v244;
      (*(v243 + 16))(v242, v227, v244);
      TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
      (*(v182 + 8))(v183, v184);
      v185 = *(v248 + 8);
      v186 = &v256;
LABEL_116:
      v185(*(v186 - 32), v178);
      goto LABEL_14;
    }

LABEL_132:
    swift_once();
    goto LABEL_36;
  }

  if (v63 == enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.tonight(_:))
  {
    v55 = v254;
    if (qword_100767070 == -1)
    {
LABEL_57:
      v114 = sub_100003E30(v255, qword_100776C90);
      v115._countAndFlagsBits = 0x746867696E6F54;
      v116._object = 0x800000010067BAA0;
      v115._object = 0xE700000000000000;
      v116._countAndFlagsBits = 0xD000000000000022;
      v117 = TTRLocalizedString(_:comment:)(v115, v116);
      v219 = v117._countAndFlagsBits;
      object = v117._object;
      v118 = REMRemindersListDataView.TodayGroupModel.Group.reminders.getter();
      v119 = *(v118 + 16);
      v224 = v118;
      v225 = v119;
      v251 = v114;
      if (!v119)
      {
LABEL_73:
        v209 = 0;
LABEL_111:
        (*(v228 + 104))(countAndFlagsBits, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:), v229);
        v187 = &enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.secondary(_:);
        if (!v209)
        {
          v187 = &enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.disabled(_:);
        }

        (*(v230 + 104))(v217, *v187, v231);
        (*(v232 + 104))(v235, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.medium(_:), v233);
        v188 = type metadata accessor for TTRListColors.Color();
        (*(*(v188 - 8) + 56))(v234, 1, 1, v188);
        (*(v236 + 104))(v238, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:), v237);
        v189 = v221;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v190 = v247;
        v191 = *(v247 + 16);
        v192 = v241;
        v191(v241, v114, v255);
        v193 = v248;
        v194 = v239;
        v195 = v189;
        v178 = v240;
        (*(v248 + 16))(v239, v195, v240);
        (*(v193 + 56))(v194, 0, 1, v178);
        v196 = v218;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        if (((v209 ^ 1) & 1) == 0)
        {
          v197 = v222;
          v191(v222, v251, v255);
          swift_beginAccess();
          sub_10058D0CC(v192, v197);
          swift_endAccess();
          (*(v190 + 8))(v192, v255);
        }

        v198 = v243;
        v199 = v244;
        (*(v243 + 16))(v242, v196, v244);
        TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
        (*(v198 + 8))(v196, v199);
        v185 = *(v248 + 8);
        v186 = &v253;
        goto LABEL_116;
      }

      v120 = v118;
      sub_100003540(0, &qword_10076BA50);
      v94 = 0;
      v245 = (v257 & 0xC000000000000001);
      v227 = &v120[(*(v250 + 80) + 32) & ~*(v250 + 80)];
      v226 = (v250 + 16);
      v121 = v257 & 0xFFFFFFFFFFFFFF8;
      if (v257 < 0)
      {
        v121 = v257;
      }

      v220 = v121;
      v246 = (v250 + 8);
      v122 = v257 + 56;
      while (v94 < *(v120 + 2))
      {
        v123 = v249;
        (*(v250 + 16))(v52, &v227[*(v250 + 72) * v94], v249);
        v124 = REMRemindersListDataView.ReminderLite.objectID.getter();
        if (v245)
        {
          v125 = __CocoaSet.contains(_:)();

          (*v246)(v52, v123);
          if ((v125 & 1) == 0)
          {
            v209 = 1;
LABEL_110:
            v114 = v251;
            goto LABEL_111;
          }
        }

        else
        {
          if (!*(v257 + 16) || (v126 = v257, v127 = NSObject._rawHashValue(seed:)(*(v257 + 40)), v128 = -1 << *(v126 + 32), v129 = v127 & ~v128, ((*(v122 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0))
          {
LABEL_109:
            (*v246)(v52, v249);

            v209 = 1;
            v55 = v254;
            goto LABEL_110;
          }

          v130 = ~v128;
          while (1)
          {
            v131 = *(*(v257 + 48) + 8 * v129);
            v132 = static NSObject.== infix(_:_:)();

            if (v132)
            {
              break;
            }

            v129 = (v129 + 1) & v130;
            if (((*(v122 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0)
            {
              goto LABEL_109;
            }
          }

          (*v246)(v52, v249);

          v55 = v254;
          v120 = v224;
        }

        ++v94;
        v114 = v251;
        if (v94 == v225)
        {
          goto LABEL_73;
        }
      }

      __break(1u);
      goto LABEL_132;
    }

LABEL_134:
    swift_once();
    goto LABEL_57;
  }

  v55 = v254;
  v149 = v255;
  v150 = v247;
  if (v63 == enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.nearby(_:))
  {
    if (qword_100767078 != -1)
    {
      swift_once();
    }

    v223 = sub_100003E30(v149, qword_100776CA8);
    v222 = static TTRLocalizableStrings.TodayList.nearbySectionName.getter();
    v221 = v151;
    v152 = REMRemindersListDataView.TodayGroupModel.Group.reminders.getter();
    v153 = *(v152 + 16);
    v225 = v152;
    v226 = v153;
    if (!v153)
    {
      v210 = 0;
LABEL_124:
      (*(v228 + 104))(v212, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:), v229);
      v200 = &enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.secondary(_:);
      if (!v210)
      {
        v200 = &enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.disabled(_:);
      }

      (*(v230 + 104))(v214, *v200, v231);
      (*(v232 + 104))(v235, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.medium(_:), v233);
      v201 = type metadata accessor for TTRListColors.Color();
      (*(*(v201 - 8) + 56))(v234, 1, 1, v201);
      (*(v236 + 104))(v238, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:), v237);
      v202 = v213;
      TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
      (*(v150 + 16))(v241, v223, v149);
      v203 = v248;
      v204 = v239;
      v205 = v240;
      (*(v248 + 16))(v239, v202, v240);
      (*(v203 + 56))(v204, 0, 1, v205);
      v206 = v242;
      TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
      v208 = v243;
      v207 = v244;
      (*(v243 + 16))(object, v206, v244);
      TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
      (*(v208 + 8))(v206, v207);
      (*(v203 + 8))(v202, v205);
      goto LABEL_14;
    }

    v154 = v152;
    sub_100003540(0, &qword_10076BA50);
    v155 = 0;
    v246 = (v257 & 0xC000000000000001);
    v245 = (v154 + ((*(v250 + 80) + 32) & ~*(v250 + 80)));
    v227 = (v250 + 16);
    v156 = v257 & 0xFFFFFFFFFFFFFF8;
    if (v257 < 0)
    {
      v156 = v257;
    }

    v224 = v156;
    v251 = (v250 + 8);
    v52 = (v257 + 56);
    v157 = v154;
    while (v155 < *(v157 + 2))
    {
      v158 = v249;
      (*(v250 + 16))(v49, &v245[*(v250 + 72) * v155], v249);
      v159 = REMRemindersListDataView.ReminderLite.objectID.getter();
      if (v246)
      {
        v160 = __CocoaSet.contains(_:)();

        (*v251)(v49, v158);
        if ((v160 & 1) == 0)
        {
          v210 = 1;
LABEL_122:
          v149 = v255;
          v150 = v247;
          goto LABEL_124;
        }
      }

      else
      {
        if (!*(v257 + 16) || (v161 = v257, v162 = NSObject._rawHashValue(seed:)(*(v257 + 40)), v163 = -1 << *(v161 + 32), v164 = v162 & ~v163, ((*&v52[(v164 >> 3) & 0xFFFFFFFFFFFFFF8] >> v164) & 1) == 0))
        {
LABEL_121:
          (*v251)(v49, v249);

          v210 = 1;
          v55 = v254;
          goto LABEL_122;
        }

        v165 = ~v163;
        while (1)
        {
          v166 = *(*(v257 + 48) + 8 * v164);
          v167 = static NSObject.== infix(_:_:)();

          if (v167)
          {
            break;
          }

          v164 = (v164 + 1) & v165;
          if (((*&v52[(v164 >> 3) & 0xFFFFFFFFFFFFFF8] >> v164) & 1) == 0)
          {
            goto LABEL_121;
          }
        }

        (*v251)(v49, v249);

        v55 = v254;
        v157 = v225;
      }

      if (++v155 == v226)
      {
        v210 = 0;
        goto LABEL_122;
      }
    }

    __break(1u);
    goto LABEL_134;
  }

  if (v63 == enum case for REMRemindersListDataView.TodayGroupModel.Group.GroupType.empty(_:))
  {
    if (qword_100767080 != -1)
    {
      swift_once();
    }

    v65 = sub_100003E30(v149, qword_100776CC0);
    v66 = REMRemindersListDataView.TodayGroupModel.Group.reminders.getter();
    goto LABEL_13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002803BC(void *a1, uint64_t a2)
{
  v3 = v2;
  v62 = a2;
  v5 = sub_100058000(&qword_10076E910);
  __chkstk_darwin(v5 - 8);
  v59 = &v53 - v6;
  v7 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = &v53 - v10;
  v11 = type metadata accessor for TTRListType.SortingCapability();
  v57 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v60 = *(v14 - 8);
  v61 = v14;
  __chkstk_darwin(v14);
  v58 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v21 = a1[4];
  sub_10000C36C(a1, v20);
  v22 = (*(v21 + 8))(v20, v21);
  if (!v22)
  {
    goto LABEL_27;
  }

  v23 = v22;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v25 = Strong;
  v26 = v3;
  (*(v17 + 16))(v19, v62, v16);
  v27 = (*(v17 + 88))(v19, v16);
  if (v27 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
LABEL_4:

    (*(v17 + 8))(v19, v16);
    goto LABEL_27;
  }

  if (v27 != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    if (v27 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v27 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v27 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v27 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v27 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v27 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v27 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      goto LABEL_4;
    }

    if (v27 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v27 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
    {
      goto LABEL_31;
    }

LABEL_18:

    goto LABEL_27;
  }

  (*(v17 + 96))(v19, v16);
  v28 = v25;
  v29 = v60;
  v30 = v58;
  (*(v60 + 32))(v58, v19, v61);
  v31 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  v32 = v57;
  v33 = *(v57 + 16);
  v62 = v28;
  v33(v13, v28 + v31, v11);
  v34 = (*(v32 + 88))(v13, v11);
  if (v34 == enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    (*(v32 + 96))(v13, v11);
    v36 = v55;
    v35 = v56;
    v37 = v53;
    (*(v55 + 32))(v53, v13, v56);
    v38 = v54;
    (*(v36 + 104))(v54, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v35);
    v39 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v40 = *(v36 + 8);
    v40(v38, v35);
    v40(v37, v35);
LABEL_21:
    v41 = sub_1001D6FFC();
    v43 = v59;
    if (v41)
    {
      v44 = v42;
      ObjectType = swift_getObjectType();
      (*(v44 + 16))(v26, v30, ObjectType, v44);
      swift_unknownObjectRelease();
      v46 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
      if ((*(*(v46 - 8) + 48))(v43, 1, v46) != 1)
      {
        sub_1000079B4(v43, &qword_10076E910);
        if (v39)
        {
          (*(v29 + 8))(v30, v61);

          v47 = 1;
        }

        else
        {
          sub_100058000(&qword_10076B780);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10062D420;
          *(inited + 32) = v23;
          v51 = v23;
          v52 = sub_100280BA4(inited, v30);

          swift_setDeallocating();
          swift_arrayDestroy();
          (*(v29 + 8))(v30, v61);
          v47 = v52 ^ 1;
        }

        return v47 & 1;
      }
    }

    else
    {
      v48 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
      (*(*(v48 - 8) + 56))(v43, 1, 1, v48);
    }

    (*(v29 + 8))(v30, v61);
    sub_1000079B4(v43, &qword_10076E910);
LABEL_27:
    v47 = 0;
    return v47 & 1;
  }

  if (v34 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    (*(v32 + 96))(v13, v11);
    v39 = *v13;
    goto LABEL_21;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_31:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100280BA4(unint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong && (v5 = *(Strong + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_lastSectionsSnapshot), , v6 = , v5))
  {
    __chkstk_darwin(v6);
    v9[2] = v5;
    v9[3] = a2;
    v7 = sub_1002774FC(sub_1002832A0, v9, a1);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unsigned int (**sub_100280C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>))(char *, uint64_t, uint64_t)
{
  v62 = a3;
  v63 = a2;
  v64 = a4;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v58 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = v57 - v9;
  v10 = sub_100058000(&qword_1007775B0);
  __chkstk_darwin(v10 - 8);
  v12 = v57 - v11;
  v13 = sub_100058000(&qword_1007775B8);
  v61 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v57 - v17;
  v19 = sub_100058000(&qword_10076E900);
  __chkstk_darwin(v19 - 8);
  v21 = v57 - v20;
  v22 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  sub_100281504(a1, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1000079B4(v21, &qword_10076E900);
LABEL_19:
    v56 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
    return (*(*(v56 - 8) + 56))(v64, 1, 1, v56);
  }

  (*(v23 + 32))(v25, v21, v22);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_18:
    (*(v23 + 8))(v25, v22);
    goto LABEL_19;
  }

  v57[1] = Strong;
  v27 = v63;
  if ((sub_100280BA4(v63, v25) & 1) == 0)
  {
    sub_10027BB94(v25, v12);
    if (v61[6](v12, 1, v13) != 1)
    {
      (*(v23 + 8))(v25, v22);

      sub_100016588(v12, v18, &qword_1007775B8);
      v47 = *(sub_100058000(&qword_100776350) + 48);
      v48 = v27;
      v49 = v64;
      *v64 = v48;
      sub_100016588(v18, v15, &qword_1007775B8);
      v50 = type metadata accessor for DateComponents();
      (*(*(v50 - 8) + 32))(v49 + v47, v15, v50);
      v51 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v51 - 8) + 56))(v49, 0, 1, v51);
    }

    sub_1000079B4(v12, &qword_1007775B0);
    if (qword_100767040 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100003E30(v37, qword_100776C00);
    v38 = v60;
    sub_10000794C(v59, v60, &qword_100772140);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v65 = v63;
      *v41 = 136315138;
      v42 = v58;
      sub_10000794C(v38, v58, &qword_100772140);
      v43 = type metadata accessor for TTRRemindersListViewModel.Item();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v42, 1, v43) == 1)
      {
        sub_1000079B4(v42, &qword_100772140);
        v45 = 0xEA0000000000746ELL;
        v46 = 0x65726170206C696ELL;
      }

      else
      {
        sub_1002829F0(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
        v62 = v41;
        v52 = v42;
        v46 = TTRTreeStorageItem.treeItemDescription.getter();
        v45 = v53;
        v54 = v52;
        v41 = v62;
        (*(v44 + 8))(v54, v43);
      }

      sub_1000079B4(v60, &qword_100772140);
      v55 = sub_100004060(v46, v45, &v65);

      *(v41 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unable to fetch group due date components for %s", v41, 0xCu);
      sub_100004758(v63);
    }

    else
    {

      sub_1000079B4(v38, &qword_100772140);
    }

    goto LABEL_18;
  }

  (*(v23 + 8))(v25, v22);

  v28 = sub_100058000(&qword_100773398);
  v29 = *(v28 + 64);
  v30 = *(v28 + 80);
  v61 = *(v4 + 32);
  v31 = v61;
  v32 = v64;
  *v64 = v27;
  v32[1] = v31;
  v33 = sub_100058000(&unk_100775620);
  (*(*(v33 - 8) + 16))(v32 + v29, v62, v33);
  *(v32 + v30) = 0;
  v34 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v34 - 8) + 56))(v32, 0, 1, v34);

  v35 = v61;

  return v35;
}

uint64_t sub_100281504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  sub_10000794C(a1, v6, &qword_100772140);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v16, v6, v7);
    v21 = *(v8 + 16);
    v21(v13, v16, v7);
    v22 = (*(v8 + 88))(v13, v7);
    if (v22 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
    {
      goto LABEL_7;
    }

    if (v22 == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v8 + 8))(v16, v7);
      (*(v8 + 96))(v13, v7);
      v32 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
      v33 = *(v32 - 8);
      (*(v33 + 32))(a2, v13, v32);
      return (*(v33 + 56))(a2, 0, 1, v32);
    }

    v37 = v22 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v22 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:);
    v38 = v37 || v22 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:);
    v39 = v38 || v22 == enum case for TTRRemindersListViewModel.Item.completed(_:);
    v40 = v39 || v22 == enum case for TTRRemindersListViewModel.Item.hashtags(_:);
    v41 = v40 || v22 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:);
    if (v41 || v22 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
LABEL_7:
      (*(v8 + 8))(v13, v7);
    }

    else if (v22 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v22 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_38;
    }

    if (qword_100767040 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003E30(v23, qword_100776C00);
    v21(v10, v16, v7);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = v45;
      *v26 = 136315138;
      sub_1002829F0(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      v27 = TTRTreeStorageItem.treeItemDescription.getter();
      v44 = a2;
      v29 = v28;
      v30 = *(v8 + 8);
      v30(v10, v7);
      v31 = sub_100004060(v27, v29, &v46);
      a2 = v44;

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to fetch group due date components from %s", v26, 0xCu);
      sub_100004758(v45);

      v30(v16, v7);
    }

    else
    {

      v35 = *(v8 + 8);
      v35(v10, v7);
      v35(v16, v7);
    }

    goto LABEL_15;
  }

  sub_1000079B4(v6, &qword_100772140);
  if (qword_100767040 != -1)
  {
LABEL_38:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003E30(v17, qword_100776C00);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Unable to fetch group due date components from nil parent", v20, 2u);
  }

LABEL_15:
  v36 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  return (*(*(v36 - 8) + 56))(a2, 1, 1, v36);
}

uint64_t sub_100281B74(id *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v67 = *(v7 - 8);
  __chkstk_darwin(v7);
  v66 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v52 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v63 = *(v11 - 8);
  v64 = v11;
  __chkstk_darwin(v11);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v13 = *(v78 - 8);
  __chkstk_darwin(v78);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v16 = *(v74 - 8);
  __chkstk_darwin(v74);
  v61 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v73 = &v52 - v19;
  v20 = sub_100058000(&qword_1007775A0);
  __chkstk_darwin(v20 - 8);
  v71 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.n128_f64[0] = __chkstk_darwin(v22);
  v70 = &v52 - v24;
  v68 = *(a2 + 16);
  v72 = v3;
  if (v68)
  {
    v54 = a3;
    v55 = v7;
    v25 = 0;
    v77 = *a1;
    v53 = v16;
    v28 = *(v16 + 16);
    v27 = v16 + 16;
    v26 = v28;
    v29 = a2 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v76 = v13 + 16;
    v75 = v13 + 8;
    v57 = (v27 - 8);
    v30 = *(v27 + 56);
    v31 = v73;
    v32 = v74;
    v59 = v28;
    v60 = v27;
    v58 = v29;
    v56 = v30;
    while (2)
    {
      v69 = v25 + 1;
      v26(v31, v29 + v30 * v25, v32, v23);
      result = TTRRemindersListTreeViewModel.Section.reminders.getter();
      v34 = result;
      v35 = 0;
      v79 = *(result + 16);
      while (v79 != v35)
      {
        if (v35 >= *(v34 + 16))
        {
          __break(1u);
          return result;
        }

        v36 = v78;
        (*(v13 + 16))(v15, v34 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v35++, v78);
        sub_100003540(0, &qword_100775690);
        v37 = REMRemindersListDataView.ReminderLite.objectID.getter();
        v38 = [v77 objectID];
        v39 = static NSObject.== infix(_:_:)();

        result = (*(v13 + 8))(v15, v36);
        if (v39)
        {

          v40 = v53;
          v41 = v70;
          v32 = v74;
          (*(v53 + 32))(v70, v73, v74);
          v42 = 0;
          v7 = v55;
          goto LABEL_12;
        }
      }

      v31 = v73;
      v32 = v74;
      (*v57)(v73, v74);
      v25 = v69;
      v26 = v59;
      v29 = v58;
      v30 = v56;
      if (v69 != v68)
      {
        continue;
      }

      break;
    }

    v42 = 1;
    v7 = v55;
    v40 = v53;
  }

  else
  {
    v42 = 1;
    v32 = v74;
    v40 = v16;
  }

  v41 = v70;
LABEL_12:
  (*(v40 + 56))(v41, v42, 1, v32);
  v43 = v71;
  sub_10000794C(v41, v71, &qword_1007775A0);
  if ((*(v40 + 48))(v43, 1, v32) == 1)
  {
    sub_1000079B4(v41, &qword_1007775A0);
    v44 = 0;
    v45 = v43;
  }

  else
  {
    v46 = v61;
    (*(v40 + 32))(v61, v43, v32);
    v47 = v40;
    v48 = v62;
    TTRRemindersListTreeViewModel.Section.header.getter();
    v49 = v65;
    TTRRemindersListViewModel.SectionHeader.id.getter();
    (*(v63 + 8))(v48, v64);
    v50 = v66;
    TTRRemindersListViewModel.SectionHeader.id.getter();
    v44 = static TTRRemindersListViewModel.SectionID.== infix(_:_:)();
    v51 = *(v67 + 8);
    v51(v50, v7);
    v51(v49, v7);
    (*(v47 + 8))(v46, v74);
    v45 = v41;
  }

  sub_1000079B4(v45, &qword_1007775A0);
  return v44 & 1;
}

uint64_t sub_100282268()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for TTRListType.SortingCapability();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v9 + 16))(v11, v0 + v12, v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v2 + 32))(v7, v11, v1);
    (*(v2 + 104))(v4, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v1);
    v14 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v15 = *(v2 + 8);
    v15(v4, v1);
    v15(v7, v1);
  }

  else
  {
    if (v13 != enum case for TTRListType.SortingCapability.supported(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v9 + 96))(v11, v8);
    v14 = *v11;
  }

  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_groupDataModelSource))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of TTRShowTodayGroupsDataModelSourceType.grouped.getter();
    swift_unknownObjectRelease();
    v14 |= v16;
  }

  return v14 & 1;
}

uint64_t sub_100282558@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_1007775B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_100058000(&qword_1007775B8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  sub_10027BB94(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_1007775B0);
    v14 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  else
  {
    sub_100016588(v6, v13, &qword_1007775B8);
    sub_100016588(v13, v10, &qword_1007775B8);
    v16 = type metadata accessor for DateComponents();
    (*(*(v16 - 8) + 32))(a2, v10, v16);
    v17 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
  }
}

uint64_t sub_100282818(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  if (qword_100767078 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  sub_100003E30(v7, qword_100776CA8);
  v8 = static TTRRemindersListViewModel.SectionID.== infix(_:_:)();
  v9 = *(v7 - 8);
  v10 = v9;
  if (v8)
  {
    (*(v9 + 16))(v6, a2, v7);
    (*(v10 + 56))(v6, 0, 1, v7);
  }

  else
  {
    (*(v9 + 56))(v6, 1, 1, v7);
  }

  v11 = a1;
  return TTRRemindersListViewModel.ReminderID.init(objectID:groupID:)();
}

uint64_t sub_1002829F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100282A38()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v1 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_100282CB8(void *a1, void *a2)
{
  v4 = sub_100058000(&qword_10076C6B8);
  __chkstk_darwin(v4 - 8);
  v42 = &v34 - v5;
  v6 = type metadata accessor for TimeZone();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Calendar();
  v35 = *(v37 - 1);
  __chkstk_darwin(v37);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_1007775C0);
  __chkstk_darwin(v10 - 8);
  v34 = &v34 - v11;
  v12 = type metadata accessor for Date();
  v38 = *(v12 - 8);
  v39 = v12;
  __chkstk_darwin(v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DateComponents();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v34 - v20;
  type metadata accessor for TTRReminderEditor();
  sub_1002829F0(&unk_1007756A0, &type metadata accessor for TTRReminderEditor);
  v22 = a1;
  TTRUndoableEditing.init(changeItem:undoManager:)();
  if (!a2)
  {
    goto LABEL_5;
  }

  v23 = a2;
  v24 = [v23 displayDate];
  if (!v24)
  {

LABEL_5:
    static Calendar.current.getter();
    v29 = v36;
    static TimeZone.ttr_default.getter();
    Date.init()();
    Calendar.dateComponents(in:from:)();
    (*(v38 + 8))(v14, v39);
    (*(v40 + 8))(v29, v41);
    (*(v35 + 8))(v9, v37);
    static TTRReminderEditor.todayDueDateComponents(now:)();
    goto LABEL_6;
  }

  v25 = v24;
  v26 = [v24 date];
  v37 = v23;
  v27 = v26;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  [v25 isAllDay];
  v28 = v34;
  (*(v40 + 56))(v34, 1, 1, v41);
  static TTRReminderEditor.dueDateComponents(from:isAllDay:timeZone:)();
  sub_1000079B4(v28, &qword_1007775C0);
  (*(v38 + 8))(v14, v39);
  DateComponents.rem_allDayDateComponents()();

LABEL_6:
  v30 = *(v16 + 8);
  v30(v18, v15);
  v31 = v42;
  (*(v16 + 16))(v42, v21, v15);
  (*(v16 + 56))(v31, 0, 1, v15);
  TTRReminderEditor.edit(dueDateComponents:)();
  sub_1000079B4(v31, &qword_10076C6B8);
  v43.value._rawValue = 0;
  v43.is_nil = 0;
  TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(v43, v32);

  return (v30)(v21, v15);
}

uint64_t sub_100283230(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007775A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100283308()
{
  result = qword_1007775C8;
  if (!qword_1007775C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007775C8);
  }

  return result;
}

uint64_t sub_100283364()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007775D0);
  v1 = sub_100003E30(v0, qword_1007775D0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10028345C(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v75 = a6;
  v73 = type metadata accessor for TTRPublicTemplateFallbackProperties();
  v76 = *(v73 - 8);
  __chkstk_darwin(v73);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v16);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    *(Strong + 80) = 0;
    if (a2)
    {
      if (qword_100767088 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100003E30(v20, qword_1007775D0);
      v21 = a4;
      sub_100284F7C(a1, 1);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      sub_100284F88(a1, 1);

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v72 = a1;
        v25 = v24;
        v26 = swift_slowAlloc();
        v77[0] = swift_slowAlloc();
        *v25 = 136315650;
        v78[0] = a8;
        swift_getMetatypeMetadata();
        v27 = String.init<A>(describing:)();
        v29 = sub_100004060(v27, v28, v77);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        swift_getErrorValue();
        v30 = Error.rem_errorDescription.getter();
        v32 = sub_100004060(v30, v31, v77);

        *(v25 + 14) = v32;
        *(v25 + 22) = 2112;
        v33 = [v21 objectID];
        *(v25 + 24) = v33;
        *v26 = v33;
        _os_log_impl(&_mh_execute_header, v22, v23, "%s Failed to created public template preview. {error: %s, templateID: %@}", v25, 0x20u);
        sub_1000079B4(v26, &unk_10076DF80);

        swift_arrayDestroy();
      }
    }

    else
    {
      v71 = a5;
      if (qword_100767088 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100003E30(v34, qword_1007775D0);
      v35 = a4;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      v38 = os_log_type_enabled(v36, v37);
      v70 = v15;
      if (v38)
      {
        v39 = swift_slowAlloc();
        v69 = a7;
        v40 = v39;
        v41 = swift_slowAlloc();
        v72 = a1;
        v42 = v41;
        v68 = swift_slowAlloc();
        v77[0] = v68;
        *v40 = 136315394;
        v78[0] = a8;
        swift_getMetatypeMetadata();
        v43 = String.init<A>(describing:)();
        v45 = sub_100004060(v43, v44, v77);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2112;
        v46 = [v35 objectID];
        *(v40 + 14) = v46;
        *v42 = v46;
        _os_log_impl(&_mh_execute_header, v36, v37, "%s Created public template preview. Will show preview. {templateID: %@}", v40, 0x16u);
        sub_1000079B4(v42, &unk_10076DF80);
        a1 = v72;

        sub_100004758(v68);
      }

      v47 = swift_unknownObjectWeakLoadStrong();
      if (v47)
      {
        v48 = v47;
        v49 = [v47 presentingViewController];
        if (v49)
        {

          v50 = type metadata accessor for TTRAttachmentThumbnailSizeProvider();
          v51 = static TTRAttachmentThumbnailSizeProviding<>.remindersList.getter();
          v78[3] = v50;
          v78[4] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
          v78[0] = v51;
          sub_100003540(0, &qword_100777780);
          static OS_dispatch_queue.main.getter();
          v52 = v35;
          type metadata accessor for RDIDispatchQueue();
          static RDIDispatchQueue.utilityQueue.getter();
          v53 = type metadata accessor for TTRThumbnailGenerator();
          swift_allocObject();
          v54 = TTRThumbnailGenerator.init(queue:backgroundQueue:)();
          v77[3] = v53;
          v77[4] = &protocol witness table for TTRThumbnailGenerator;
          v77[0] = v54;
          type metadata accessor for TTRAttachmentThumbnailsManager();
          swift_allocObject();
          v55 = TTRAttachmentThumbnailsManager.init(thumbnailSizeProvider:thumbnailGenerator:)();
          v56 = *(v19 + 16);
          v57 = v16[5];
          v58 = type metadata accessor for TTRRemindersListViewModel.ItemID();
          v59 = v74;
          (*(*(v58 - 8) + 56))(&v74[v57], 1, 1, v58);
          type metadata accessor for TTRIHashtagAssociationNoOpModuleInterface();
          v60 = swift_allocObject();
          *v59 = v56;
          *(v59 + v16[6]) = v55;
          v61 = (v59 + v16[7]);
          *v61 = v60;
          v61[1] = &off_10071ECD0;
          *(v59 + v16[8]) = 0;
          v62 = v56;
          v63 = [v52 name];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v64 = [v52 color];
          v65 = v70;
          TTRPublicTemplateFallbackProperties.init(listName:listColor:)();
          v66 = sub_10048E16C(v78, v59, v71, a1, v65, v75);
          (*(v76 + 8))(v65, v73);
          sub_100004758(v78);
          [v48 pushViewController:v66 animated:1];

          sub_100079664(v59);
          return;
        }
      }
    }
  }
}

void *sub_100283BE4(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for TTRIPopoverAnchor();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = result;
    (*(v2 + 32))();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      return sub_1000079B4(v11, &unk_10076FCD0);
    }

    else
    {
      v17 = *(v13 + 32);
      v36 = v15;
      v17(v15, v11, v12);
      v18 = v13;
      v19 = *(v6 + 16);
      v19(v8, a1, v5);
      v20 = type metadata accessor for TTRITemplateSharingRouter.ShareSheetItem(0);
      v21 = objc_allocWithZone(v20);
      v19(&v21[OBJC_IVAR____TtCC9Reminders25TTRITemplateSharingRouterP33_B88B83D8B282D69A84EFFB48896895C814ShareSheetItem_url], v8, v5);
      *&v21[OBJC_IVAR____TtCC9Reminders25TTRITemplateSharingRouterP33_B88B83D8B282D69A84EFFB48896895C814ShareSheetItem_linkMetadata] = a2;
      v38.receiver = v21;
      v38.super_class = v20;
      v22 = a2;
      v23 = objc_msgSendSuper2(&v38, "init");
      (*(v6 + 8))(v8, v5);
      sub_100058000(&unk_100777760);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_10062D400;
      *(v24 + 56) = v20;
      *(v24 + 32) = v23;
      sub_100058000(&qword_10076B780);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10062D420;
      v26 = objc_allocWithZone(type metadata accessor for TTRITemplateSharingRouter.CopyiCloudLinkActivity(0));
      v27 = v23;
      *(v25 + 32) = [v26 init];
      v28 = objc_allocWithZone(UIActivityViewController);
      isa = Array._bridgeToObjectiveC()().super.isa;

      sub_100003540(0, &unk_100777770);
      v30 = Array._bridgeToObjectiveC()().super.isa;

      v31 = [v28 initWithActivityItems:isa applicationActivities:v30];

      if (qword_100766F80 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      type metadata accessor for ActivityType(0);

      v32 = Array._bridgeToObjectiveC()().super.isa;

      [v31 setExcludedActivityTypes:v32];

      v33 = v36;
      UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
      v34 = v37;
      [v37 presentViewController:v31 animated:1 completion:0];

      return (*(v18 + 8))(v33, v12);
    }
  }

  return result;
}

uint64_t sub_100284090()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100284128, v3, v2);
}

uint64_t sub_100284150()
{
  v1 = *(v0[6] + 16);
  v0[7] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_100284238;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {
    v3 = v0[4];
    v4 = v0[5];

    return _swift_task_switch(sub_10001E828, v3, v4);
  }
}

uint64_t sub_100284238()
{

  return _swift_task_switch(sub_100284334, 0, 0);
}

uint64_t sub_100284334()
{
  v1 = *(v0 + 48);

  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  return _swift_task_switch(sub_10001E828, v3, v4);
}

uint64_t sub_100284790(uint64_t a1)
{
  v3 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4];
  if (*(a1 + 16))
  {
    sub_1000046FC(a1 + 32, v11);
    v6 = type metadata accessor for URL();
    v7 = swift_dynamicCast();
    (*(*(v6 - 8) + 56))(v5, v7 ^ 1u, 1, v6);
  }

  else
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  v9 = OBJC_IVAR____TtCC9Reminders25TTRITemplateSharingRouterP33_B88B83D8B282D69A84EFFB48896895C822CopyiCloudLinkActivity_urlToBeCopiedToPasteboard;
  swift_beginAccess();
  sub_10028505C(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_100284954()
{
  v1 = v0;
  v2 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtCC9Reminders25TTRITemplateSharingRouterP33_B88B83D8B282D69A84EFFB48896895C822CopyiCloudLinkActivity_urlToBeCopiedToPasteboard;
  swift_beginAccess();
  sub_100284F94(v1 + v12, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000079B4(v7, &unk_100775660);
  }

  (*(v9 + 32))(v11, v7, v8);
  v14 = [objc_opt_self() generalPasteboard];
  sub_100058000(&qword_100777790);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10062D400;
  (*(v9 + 16))(v16 + v15, v11, v8);
  sub_100285004();
  UIPasteboard.setObjects<A>(_:)();

  (*(v9 + 56))(v4, 1, 1, v8);
  swift_beginAccess();
  sub_10028505C(v4, v1 + v12);
  swift_endAccess();
  [v1 activityDidFinish:1];
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100284D3C()
{
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100284DF0()
{
  result = type metadata accessor for URL();
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

void sub_100284EB4()
{
  sub_100261264();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

NSString sub_100284F44()
{
  result = String._bridgeToObjectiveC()();
  qword_1007775E8 = result;
  return result;
}

id sub_100284F7C(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_100284F88(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100284F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100775660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100285004()
{
  result = qword_100775850;
  if (!qword_100775850)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100775850);
  }

  return result;
}

uint64_t sub_10028505C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100775660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1002850CC(uint64_t a1)
{
  v2 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-v3];
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  sub_1000046FC(a1 + 32, v10);
  v5 = type metadata accessor for URL();
  v6 = swift_dynamicCast();
  v7 = *(v5 - 8);
  (*(v7 + 56))(v4, v6 ^ 1u, 1, v5);
  v8 = (*(v7 + 48))(v4, 1, v5) == 0;
  sub_1000079B4(v4, &unk_100775660);
  return v8;
}

uint64_t sub_100285220()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100777798);
  v1 = sub_100003E30(v0, qword_100777798);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002852E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100285388, v5, v4);
}

uint64_t sub_100285388()
{
  if (qword_100767098 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100777798);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  swift_getObjectType();
  v2 = TTRTemplatesListInteractorType.template(with:)();
  v0[9] = v2;
  if (v2)
  {
    v3 = v0[4];
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for TTRPotentiallyLongOperationPerformer();
    swift_allocObject();
    v0[10] = TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)();
    v0[11] = *(v3 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_removeTemplateCapability);
    v0[12] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[13] = v5;
    v0[14] = v4;

    return _swift_task_switch(sub_1002855C0, v5, v4);
  }

  else
  {

    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_1002855C0()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_task_alloc();
  v0[15] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = &unk_100637478;
  v4[5] = v2;
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1002856A8;
  v6 = v0[10];

  return TTRRemoveTemplatePresenterCapability.deleteTemplate(_:potentiallyLongOperationPerformer:presentAlert:)(v1, v6, &unk_100637480, v4);
}

uint64_t sub_1002856A8(char a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return _swift_task_switch(sub_1002857F4, v4, v3);
}

uint64_t sub_1002857F4()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_100285858, v1, v2);
}

uint64_t sub_100285858()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 136);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002858CC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000B0D8(result + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router, v7);

    sub_10000C36C(v7, v7[3]);
    v1 = static TTRLocalizableStrings.Templates.publicTemplateDeleting.getter();
    v3 = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = Strong;
      sub_10048DE3C(v1, v3, v5);
    }

    return sub_100004758(v7);
  }

  return result;
}

uint64_t sub_1002859A8(uint64_t a1)
{
  v1[10] = a1;
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v3;
  v1[13] = v2;

  return _swift_task_switch(sub_100285A40, v3, v2);
}

uint64_t sub_100285A40()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10000B0D8(Strong + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router, (v0 + 2));

    sub_10000C36C(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_1000A75F0;

    return sub_1005F6B68();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100285B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100285BF8, v5, v4);
}

uint64_t sub_100285BF8()
{
  sub_10000C36C((v0[4] + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router), *(v0[4] + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router + 24));
  v0[9] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_100285CD4;
  v3 = v0[2];
  v2 = v0[3];

  return (sub_10028982C)(v3, v2, 0, 0);
}

uint64_t sub_100285CD4(char a1)
{
  *(*v1 + 88) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100285E18, v3, v2);
}

uint64_t sub_100285E18()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_100285E7C, v1, v2);
}

uint64_t sub_100285E7C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

void sub_100285EE0()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (qword_100767098 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100777798);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v6 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList;
  if ((*(v0 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) & 1) == 0)
  {
    swift_getObjectType();
    v7 = TTRTemplatesListInteractorType.template(with:)();
    if (v7)
    {
      v8 = v7;
      *(v1 + v6) = 1;
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      type metadata accessor for MainActor();

      v10 = v8;
      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = &protocol witness table for MainActor;
      v12[4] = v1;
      v12[5] = v10;
      sub_10009E31C(0, 0, v4, &unk_1006374B0, v12);
    }
  }
}

uint64_t sub_1002860E0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v4;
  v2[12] = v3;

  return _swift_task_switch(sub_100286178, v4, v3);
}

uint64_t sub_100286178()
{
  v1 = v0[8];
  v2 = v0[9];
  v3._countAndFlagsBits = 0x73694C20656D614ELL;
  v4._object = 0x800000010067BEC0;
  v3._object = 0xE900000000000074;
  v4._countAndFlagsBits = 0xD000000000000059;
  TTRLocalizedString(_:comment:)(v3, v4);
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() alertControllerWithTitle:v5 message:0 preferredStyle:1];
  v0[13] = v6;

  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v0[6] = sub_10028A220;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1001762CC;
  v0[5] = &unk_10071D9B8;
  v8 = _Block_copy(v0 + 2);
  v9 = v2;

  [v6 addTextFieldWithConfigurationHandler:v8];
  _Block_release(v8);
  sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router), *(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router + 24));
  sub_100058000(&qword_10076B260);
  sub_100058000(&unk_100775890);
  v10 = swift_allocObject();
  v0[14] = v10;
  *(v10 + 16) = xmmword_10062D3F0;
  static TTRLocalizableStrings.Common.createButton.getter();
  *(v0 + 152) = 1;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  *(v0 + 153) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  v11 = swift_allocObject();
  v0[15] = v11;
  *(v11 + 16) = v6;
  v12 = v6;
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_1002864A8;

  return sub_10028982C(v12, v10, sub_10028A228, v11);
}

uint64_t sub_1002864A8(char a1)
{
  v2 = *v1;
  *(*v1 + 154) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return _swift_task_switch(sub_100286610, v4, v3);
}

uint64_t sub_100286610()
{
  v1 = *(v0 + 154);
  if (v1 != 2 && (v1 & 1) != 0)
  {
    v2 = [*(v0 + 104) textFields];
    if (v2)
    {
      v3 = v2;
      sub_100003540(0, &qword_100771E60);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v4 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_6:
          if ((v4 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v6 = *(v4 + 32);
          }

          v7 = v6;

          v8 = [v7 text];

          if (v8)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          goto LABEL_16;
        }
      }
    }

LABEL_16:
    v18 = String.validatedListName()();
    countAndFlagsBits = v18.name._countAndFlagsBits;
    object = v18.name._object;
    isValid = v18.isValid;

    if (!isValid)
    {

      v13 = _REMGetLocalizedString();
      countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      object = v14;
    }

    *(v0 + 136) = object;
    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v15[1] = sub_100286878;
    v16 = *(v0 + 72);

    return sub_100286C90(v16, countAndFlagsBits, object);
  }

  *(*(v0 + 64) + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) = 0;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100286878()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_1002869BC, v3, v2);
}

uint64_t sub_1002869BC()
{
  v1 = v0[13];

  *(v0[8] + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) = 0;
  v2 = v0[1];

  return v2();
}

void sub_100286A34(void *a1, void *a2)
{
  [a1 setClearButtonMode:1];
  v4._countAndFlagsBits = 0x6D614E207473694CLL;
  v5._object = 0x800000010067BF70;
  v4._object = 0xE900000000000065;
  v5._countAndFlagsBits = 0xD00000000000004FLL;
  TTRLocalizedString(_:comment:)(v4, v5);
  v6 = String._bridgeToObjectiveC()();

  [a1 setPlaceholder:v6];

  [a1 setReturnKeyType:9];
  [a1 setEnablesReturnKeyAutomatically:1];
  v7 = [a2 name];
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();

    v7 = v8;
  }

  v9 = v7;
  [a1 setText:?];
}

void sub_100286B64(void *a1)
{
  v1 = [a1 textFields];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_100003540(0, &qword_100771E60);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  [v5 selectAll:0];
}

uint64_t sub_100286C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_100286D3C, v6, v5);
}

uint64_t sub_100286D3C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[12] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[13] = v3;
    v0[14] = v2;

    return _swift_task_switch(sub_100286E5C, v3, v2);
  }

  else
  {
    sub_10000C36C((v0[5] + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router), *(v0[5] + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router + 24));
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_10028710C;

    return sub_1005F65E4();
  }
}

uint64_t sub_100286E5C()
{
  sub_10000C36C((*(v0 + 88) + 48), *(*(v0 + 88) + 72));
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_100286EFC;

  return sub_1000929B8();
}

uint64_t sub_100286EFC()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10028701C, v3, v2);
}

uint64_t sub_10028701C()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_100287080, v1, v2);
}

uint64_t sub_100287080()
{
  swift_unknownObjectRelease();

  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;

  return _swift_task_switch(sub_1002872B0, v2, v1);
}

uint64_t sub_10028710C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_10028722C, v3, v2);
}

uint64_t sub_10028722C()
{

  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;

  return _swift_task_switch(sub_1002872B0, v2, v1);
}

uint64_t sub_1002872B0()
{
  v1 = v0[5];
  v2 = objc_allocWithZone(TTRUndoManager);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithDebugIdentifier:v3];
  v0[19] = v4;

  v5 = *(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1002873D4;
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return dispatch thunk of TTRTemplatesListInteractorType.createList(from:name:storingUndoStepsIn:)(v10, v8, v9, v4, ObjectType, v5);
}

uint64_t sub_1002873D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_1002875F0;
  }

  else
  {
    v7 = sub_100287518;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100287518()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[21];
  v3 = v0[19];
  if (Strong)
  {
    v4 = v0[5];
    v5 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v4, &off_10071D840, v2, v3, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002875F0()
{
  v1 = v0[19];

  if (qword_100767098 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100777798);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = [v7 objectID];
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "TTRMTemplatesListPresenter: failed to create list using template {templateID: %@}", v8, 0xCu);
    sub_1000079B4(v9, &unk_10076DF80);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10028779C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_10001EFA4;

  return sub_1002860E0(a4, a5);
}

uint64_t sub_100287858()
{
  v31 = type metadata accessor for TTRTemplatesListViewModel.OptimisticApply();
  v1 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for TTRTemplatesListViewModel();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v33 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = v26 - v5;
  v6 = sub_100058000(&qword_100775FD8);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  v9 = sub_100058000(&qword_100775FE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  sub_100003540(0, &qword_10076BA50);
  sub_1001288B4();

  OrderedSet.init(_:)();
  (*(v10 + 16))(v8, v12, v9);
  v13 = *(v10 + 56);
  v27 = v9;
  v13(v8, 0, 1, v9);
  v14 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_optimisticApply;
  swift_beginAccess();
  TTRTemplatesListViewModel.OptimisticApply.templateOrdering.setter();
  swift_endAccess();
  v15 = *(v0 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_interactor + 8);
  v26[0] = swift_getObjectType();
  v26[1] = v15;
  if (dispatch thunk of TTRTemplatesListInteractorType.lastFetchedTemplates.getter())
  {
    TTRTemplatesListViewModel.init(templates:)();
  }

  else
  {
    TTRTemplatesListViewModel.init(isPlaceholder:)();
  }

  v16 = v0;
  v17 = v0 + v14;
  v18 = v29;
  v19 = v31;
  (*(v1 + 16))(v29, v17, v31);
  v20 = v28;
  v21 = v33;
  TTRTemplatesListViewModel.applying(_:)();
  (*(v1 + 8))(v18, v19);
  v22 = v30;
  v23 = v32;
  (*(v30 + 8))(v21, v32);
  v24 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
  swift_beginAccess();
  (*(v22 + 40))(v16 + v24, v20, v23);
  swift_endAccess();
  dispatch thunk of TTRTemplatesListInteractorType.setTemplateOrdering(_:)();
  return (*(v10 + 8))(v12, v27);
}

id sub_100287C6C(void *a1)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for TTRTemplatePublicLinkData.Capabilities();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v50 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v49 = &v46[-v6];
  v7 = type metadata accessor for TTRTemplatePublicLinkData();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for TTRTemplatesListViewModel();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100058000(&unk_10077FBB0);
  __chkstk_darwin(v14 - 8);
  v16 = &v46[-v15];
  v17 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v46[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
  swift_beginAccess();
  v22 = *(v11 + 16);
  v48 = v2;
  v22(v13, v2 + v21, v10);
  TTRTemplatesListViewModel.template(with:)();
  (*(v11 + 8))(v13, v10);
  v23 = *(v18 + 48);
  v55 = v17;
  if (v23(v16, 1, v17) == 1)
  {
    sub_1000079B4(v16, &unk_10077FBB0);
    return 0;
  }

  (*(v18 + 32))(v20, v16, v55);
  TTRTemplatesListViewModel.Template.publicLinkData.getter();
  v25 = v49;
  TTRTemplatePublicLinkData.capabilities.getter();
  v26 = v52;
  v51 = *(v51 + 8);
  (v51)(v9, v52);
  v27 = v50;
  static TTRTemplatePublicLinkData.Capabilities.createLink.getter();
  sub_10028A230(&qword_10076EEC8, &type metadata accessor for TTRTemplatePublicLinkData.Capabilities);
  v28 = v54;
  v47 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v29 = *(v53 + 8);
  v29(v27, v28);
  v29(v25, v28);
  TTRTemplatesListViewModel.Template.publicLinkData.getter();
  v30 = TTRTemplatePublicLinkData.hasPublicLink.getter();
  (v51)(v9, v26);
  if ((v47 & 1) == 0)
  {
    if ((v30 & 1) == 0)
    {
      (*(v18 + 8))(v20, v55);
      return 0;
    }

    goto LABEL_8;
  }

  if (v30)
  {
LABEL_8:
    v31 = v18;
    static TTRLocalizableStrings.Templates.sendLink.getter();
    goto LABEL_9;
  }

  v31 = v18;
  static TTRLocalizableStrings.Templates.shareTemplate.getter();
LABEL_9:
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v30 & 1;
  v34 = v56;
  *(v33 + 32) = v56;

  v35 = v34;
  v36 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10028A278;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100422764;
  aBlock[3] = &unk_10071DA30;
  v37 = _Block_copy(aBlock);
  v38 = [objc_opt_self() contextualActionWithStyle:0 title:v36 handler:v37];

  _Block_release(v37);

  v39 = [objc_opt_self() ttr_systemBlueColor];
  [v38 setBackgroundColor:v39];

  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    v40 = String._bridgeToObjectiveC()();
    v41 = [objc_opt_self() _systemImageNamed:v40];

    [v38 setImage:v41];
  }

  sub_100058000(&qword_10076B780);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10062D420;
  *(v42 + 32) = v38;
  sub_100003540(0, &qword_10076BC40);
  v43 = v38;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v45 = [objc_opt_self() configurationWithActions:isa];

  (*(v31 + 8))(v20, v55);
  return v45;
}

uint64_t sub_100288394(uint64_t a1, uint64_t a2, uint64_t (*a3)(BOOL), uint64_t a4, uint64_t a5, char a6)
{
  v8 = type metadata accessor for TTRTemplateSharingAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = &enum case for TTRTemplateSharingAction.sendLink(_:);
    if ((a6 & 1) == 0)
    {
      v13 = &enum case for TTRTemplateSharingAction.createLink(_:);
    }

    (*(v9 + 104))(v11, *v13, v8);
    sub_1002884FC(v11);

    (*(v9 + 8))(v11, v8);
  }

  return a3(Strong != 0);
}

void sub_1002884FC(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRTemplateSharingAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  if ((*(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) & 1) == 0)
  {
    swift_getObjectType();
    v10 = TTRTemplatesListInteractorType.template(with:)();
    if (v10)
    {
      v32 = a1;
      v33 = v10;
      if (qword_100767098 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100003E30(v11, qword_100777798);
      sub_100058000(&unk_100775610);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = 0x6E6F69746361;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 72) = v4;
      v13 = sub_1000317B8((inited + 48));
      v30 = *(v5 + 16);
      v30(v13, v32, v4);
      sub_100008E04(inited);
      v31 = v5;
      swift_setDeallocating();
      sub_1000079B4(inited + 32, &unk_10076BA70);
      sub_10000FD44();

      v14 = [v33 objectID];
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router), *(v2 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router + 24));
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v14;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;

        v29 = v14;
        v19 = sub_10016D29C(v33, v18, sub_10028A054, v16);
        v28 = v20;
        v21 = type metadata accessor for TaskPriority();
        (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
        v30((&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0)), v32, v4);
        type metadata accessor for MainActor();
        v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = v19;
        swift_unknownObjectRetain();
        v23 = static MainActor.shared.getter();
        v24 = v31;
        v25 = (*(v31 + 80) + 48) & ~*(v31 + 80);
        v26 = swift_allocObject();
        *(v26 + 2) = v23;
        *(v26 + 3) = &protocol witness table for MainActor;
        v27 = v28;
        *(v26 + 4) = v22;
        *(v26 + 5) = v27;
        (*(v24 + 32))(&v26[v25], v32, v4);
        sub_10009E31C(0, 0, v9, &unk_100637498, v26);

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_10028895C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (Strong = swift_unknownObjectWeakLoadStrong(), result = , !Strong))
  {
    v15 = type metadata accessor for TTRIPopoverAnchor();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  v13 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource);
  if (!v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = a1;
  v14 = v13;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &unk_100771B10);
LABEL_11:
    v21 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
    return swift_unknownObjectRelease();
  }

  result = (*(v8 + 32))(v10, v6, v7);
  v16 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_collectionView);
  if (!v16)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v17 = v16;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [v17 cellForItemAtIndexPath:isa];

  if (!v19)
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_11;
  }

  static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();

  (*(v8 + 8))(v10, v7);
  v20 = type metadata accessor for TTRIPopoverAnchor();
  (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
  return swift_unknownObjectRelease();
}

uint64_t sub_100288C94()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(v0 + 40);
    sub_100003540(0, &qword_100777780);
    v12 = static OS_dispatch_queue.main.getter();
    v16[0] = v5;
    v13 = v12;
    v14 = swift_allocObject();
    v14[2] = v10;
    v14[3] = v11;
    v14[4] = v0;
    aBlock[4] = sub_100289B74;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001047C;
    aBlock[3] = &unk_10071D8C8;
    v15 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    v16[1] = _swiftEmptyArrayStorage;
    sub_10028A230(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100058000(&qword_100780A50);
    sub_10001A524();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    swift_unknownObjectRelease();

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v16[0]);
  }

  return result;
}

uint64_t sub_100288F84()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_10003B788(v0 + 48);
  v1 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
  v2 = type metadata accessor for TTRTemplatesListViewModel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  sub_100004758(v0 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router);

  v3 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_optimisticApply;
  v4 = type metadata accessor for TTRTemplatesListViewModel.OptimisticApply();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_10028909C()
{
  sub_100288F84();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRITemplatesListPresenter()
{
  result = qword_100777818;
  if (!qword_100777818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100289148()
{
  result = type metadata accessor for TTRTemplatesListViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRTemplatesListViewModel.OptimisticApply();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_10028925C()
{
  v1 = sub_100058000(&qword_100775FD8);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TTRTemplatesListViewModel.OptimisticApply();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100775FE0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1004D03E8(_swiftEmptyArrayStorage);
  }

  TTRTemplatesListViewModel.OptimisticApply.init(templateOrdering:deletedTemplateIDs:)();
  v9 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_optimisticApply;
  swift_beginAccess();
  (*(v5 + 40))(v0 + v9, v7, v4);
  swift_endAccess();
  v10._object = 0x8000000100679110;
  v10._countAndFlagsBits = 0xD000000000000019;
  TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v10);
}

uint64_t sub_100289454(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100289498@<X0>(uint64_t a1@<X8>)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10033F4A8(a1);

    return swift_unknownObjectRelease();
  }

  else
  {
    v3 = type metadata accessor for TTRIPopoverAnchor();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }
}

uint64_t sub_100289540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v5[5] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_100289610;

  return sub_100286C90(a5, 0, 0);
}

uint64_t sub_100289610()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10028974C, v1, v0);
}

uint64_t sub_10028974C()
{
  v1 = *(v0 + 16);

  *(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) = 0;
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100223F40, v3, v2);
}

uint64_t sub_10028982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1002898CC, v7, v6);
}

uint64_t sub_1002898CC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1002899CC;
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[2];
    v6 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 12, v5, v6, v3, v4, 1, &type metadata for Bool);
  }

  else
  {

    v7 = v0[1];

    return v7(2);
  }
}

uint64_t sub_1002899CC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  *(v1 + 97) = *(v1 + 96);
  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100289B10, v4, v3);
}

uint64_t sub_100289B10()
{

  v1 = *(v0 + 97);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100289B74()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(v2, &off_10071D840, ObjectType, v1);
}

void *sub_100289BD4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRTemplatesListViewModel.OptimisticApply();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for TTRTemplatesListViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v16[-v11];
  swift_getObjectType();
  if (dispatch thunk of TTRTemplatesListInteractorType.lastFetchedTemplates.getter())
  {
    TTRTemplatesListViewModel.init(templates:)();
  }

  else
  {
    TTRTemplatesListViewModel.init(isPlaceholder:)();
  }

  v13 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_optimisticApply;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v13, v2);
  TTRTemplatesListViewModel.applying(_:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v14 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
  swift_beginAccess();
  (*(v7 + 40))(v1 + v14, v12, v6);
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([result isViewLoaded])
    {
      sub_10033D6A0();
      sub_10033D258(1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100289E60()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001AA38;

  return sub_1002859A8(v0);
}

uint64_t sub_100289EF0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1001E4BC8;

  return sub_100285B58(a1, a2, v2);
}

uint64_t sub_100289F98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001E4BC8;

  return sub_10028A5CC(a1, v4, v5, v7, v6);
}

uint64_t sub_10028A05C(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRTemplateSharingAction() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001AA3C;

  return sub_1005F6A0C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10028A160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_10028779C(a1, v4, v5, v7, v6);
}

uint64_t sub_10028A230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TTRRemoveTemplatePresenterCapability.deleteTemplate(_:potentiallyLongOperationPerformer:popoverAnchor:presentUIAlert:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v8;
  v6[10] = v7;

  return _swift_task_switch(sub_10028A338, v8, v7);
}

uint64_t sub_10028A338()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_10028A41C;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return TTRRemoveTemplatePresenterCapability.deleteTemplate(_:potentiallyLongOperationPerformer:presentAlert:)(v7, v6, &unk_100637480, v3);
}

uint64_t sub_10028A41C(char a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_10028A568, v4, v3);
}

uint64_t sub_10028A568()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_10028A5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100058000(&unk_10076FCD0);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for TTRRemoveTemplatePresenterCapability.TemplateDeletionAlert();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v8;
  v5[14] = v7;

  return _swift_task_switch(sub_10028A70C, v8, v7);
}

uint64_t sub_10028A70C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  (*(v3 + 16))(v1, *(v0 + 16), v2);
  v4 = (*(v3 + 88))(v1, v2);
  v5 = enum case for TTRRemoveTemplatePresenterCapability.TemplateDeletionAlert.deleteTemplateWithPublicLink(_:);
  if (v4 == enum case for TTRRemoveTemplatePresenterCapability.TemplateDeletionAlert.deleteTemplate(_:) || v4 == enum case for TTRRemoveTemplatePresenterCapability.TemplateDeletionAlert.deleteTemplateWithPublicLink(_:))
  {
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 64);
    v10 = [*(v0 + 24) name];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static TTRLocalizableStrings.Templates.deleteTemplateAlertTitle(templateName:)();

    (*(v8 + 104))(v7, v5, v9);
    v11 = static TTRRemoveTemplatePresenterCapability.TemplateDeletionAlert.== infix(_:_:)();
    (*(v8 + 8))(v7, v9);
    if (v11)
    {
      static TTRLocalizableStrings.Templates.deleteTemplateWithPublicLinkAlertMessage.getter();
    }

    v19 = *(v0 + 56);
    v21 = *(v0 + 32);
    v20 = *(v0 + 40);
    sub_10028B044();
    sub_1001626EC(v21, v19);
    v22 = UIAlertController.init(actionSheetOrAlertWithTitle:message:popoverAnchor:canCancel:)();
    *(v0 + 120) = v22;
    sub_100058000(&qword_10076B260);
    sub_100058000(&unk_100775890);
    v16 = swift_allocObject();
    *(v0 + 128) = v16;
    *(v16 + 16) = xmmword_10062D3F0;
    static TTRLocalizableStrings.Common.alertDeleteButton.getter();
    *(v0 + 169) = 1;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    *(v0 + 170) = 0;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    v25 = (v20 + *v20);
    v23 = swift_task_alloc();
    *(v0 + 136) = v23;
    *v23 = v0;
    v23[1] = sub_10028AC90;
    v18 = v22;
    goto LABEL_11;
  }

  if (v4 == enum case for TTRRemoveTemplatePresenterCapability.TemplateDeletionAlert.failedToRevokePublicLink(_:))
  {
    v12 = *(v0 + 40);
    static TTRLocalizableStrings.Templates.failedToDeleteTemplateAlertTitle.getter();
    static TTRLocalizableStrings.Templates.failedToDeleteTemplateAlertMessage.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = String._bridgeToObjectiveC()();

    v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];
    *(v0 + 144) = v15;

    sub_100058000(&qword_10076B260);
    sub_100058000(&unk_100775890);
    v16 = swift_allocObject();
    *(v0 + 152) = v16;
    *(v16 + 16) = xmmword_10062D400;
    static TTRLocalizableStrings.Common.alertOKButton.getter();
    *(v0 + 168) = 1;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    v25 = (v12 + *v12);
    v17 = swift_task_alloc();
    *(v0 + 160) = v17;
    *v17 = v0;
    v17[1] = sub_10028AE74;
    v18 = v15;
LABEL_11:

    return v25(v18, v16);
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_10028AC90(char a1)
{
  v2 = *v1;
  *(*v1 + 171) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return _swift_task_switch(sub_10028ADDC, v4, v3);
}

uint64_t sub_10028ADDC()
{
  v1 = *(v0 + 171);

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_10028AE74()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10028AFB8, v3, v2);
}

uint64_t sub_10028AFB8()
{

  v1 = *(v0 + 8);

  return v1(1);
}

unint64_t sub_10028B044()
{
  result = qword_1007778F8;
  if (!qword_1007778F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1007778F8);
  }

  return result;
}

void sub_10028B090()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListLayout();
  v90 = *(v2 - 8);
  v91 = v2;
  __chkstk_darwin(v2);
  v87 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_emptyListMessaging;
  swift_beginAccess();
  v13 = *(v9 + 16);
  v92 = v1;
  v86 = v13;
  v13(v11, (v1 + v12), v8);
  (*(v5 + 104))(v7, enum case for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat.standard(_:), v4);
  v88 = TTRRemindersListViewModel.EmptyListMessagingType.localizedTitle(withTextFormat:)();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v16 = *(v9 + 8);
  v16(v11, v8);
  v17 = off_100777000;
  v18 = off_100777000;
  v89 = v15;
  if (v15)
  {
    v19 = v92;
    v86(v11, &v92[v12], v8);
    v20 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_listLayout;
    swift_beginAccess();
    v21 = v90;
    v22 = v19 + v20;
    v23 = v87;
    v24 = v91;
    (*(v90 + 2))(v87, v22, v91);
    v25 = TTRRemindersListViewModel.EmptyListMessagingType.localizedSubtitle(currentLayout:)();
    (v21)[1](v23, v24);
    v16(v11, v8);
    v26 = objc_opt_self();
    v27 = &selRef_secondaryLabelColor;
    if (!v25)
    {
      v27 = &selRef_tertiaryLabelColor;
    }

    v28 = [v26 *v27];
    v29 = *(v19 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_titleLabel);
    v30 = v29;
    v31 = v19;
    if (!v29)
    {
      v30 = [objc_allocWithZone(UILabel) init];
      [v30 setNumberOfLines:0];
      [v30 setTextAlignment:1];
    }

    v32 = v29;
    v33 = String._bridgeToObjectiveC()();

    [v30 setText:v33];

    v34 = [v31 traitCollection];
    v35 = sub_10028C9C4(v34, v25 != 0);

    [v30 setFont:v35];
    [v30 setTextColor:v28];
    if (v25)
    {
      v36 = objc_allocWithZone(NSMutableAttributedString);
      v91 = v25;
      v90 = [v36 initWithAttributedString:v25];
      v37 = [objc_opt_self() defaultParagraphStyle];
      v38 = NSParagraphStyle.withMutations(_:)();

      sub_100058000(&unk_100776BD0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062F800;
      *(inited + 32) = NSFontAttributeName;
      v40 = NSFontAttributeName;
      v41 = [v31 traitCollection];
      v42 = [v41 horizontalSizeClass];

      if (v42 == 1)
      {
        v89 = v28;
        v43 = [v31 traitCollection];
        v44 = [v43 preferredContentSizeCategory];

        v45 = objc_opt_self();
        v46 = UIContentSizeCategoryAccessibilityExtraLarge;
        v47 = [v45 mainScreen];
        [v47 bounds];
        v49 = v48;

        if (v49 == 568.0)
        {
          v50 = UIContentSizeCategoryAccessibilityMedium;

          v46 = v50;
        }

        v51 = sub_100003540(0, &qword_100771DF0);
        v52 = static UIFont.roundedBodyFont(contentSizeCategory:maximumContentSizeCategory:weight:)();

        v28 = v89;
      }

      else
      {
        v51 = sub_100003540(0, &qword_100771DF0);
        v52 = static UIFont.roundedBodyFont.getter();
      }

      sub_100003540(0, &qword_100771DF0);
      *(inited + 40) = v52;
      *(inited + 64) = v51;
      *(inited + 72) = NSForegroundColorAttributeName;
      v55 = sub_100003540(0, &qword_100772610);
      *(inited + 80) = v28;
      *(inited + 104) = v55;
      *(inited + 112) = NSParagraphStyleAttributeName;
      *(inited + 144) = sub_100003540(0, &qword_100777958);
      v56 = v38;
      *(inited + 120) = v38;
      v57 = NSForegroundColorAttributeName;
      v54 = v28;
      v58 = NSParagraphStyleAttributeName;
      v59 = v56;
      sub_100460A28(inited);
      swift_setDeallocating();
      sub_100058000(&unk_100776BE0);
      swift_arrayDestroy();
      type metadata accessor for Key(0);
      sub_10028CD54(&qword_100778A60, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v61 = v90;
      v62 = [v61 string];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = String.fullNSRange.getter();
      v65 = v64;

      [v61 addAttributes:isa range:{v63, v65}];

      v18 = off_100777000;
      v31 = v92;
      v66 = *&v92[OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_subtitleTextView];
      v53 = v66;
      if (v66 || (v53 = sub_10028C358(v92)) != 0)
      {
        v67 = v66;
        [v53 setAttributedText:v61];
        v68 = v61;
        v69 = v61;
        v61 = v91;
      }

      else
      {
        v68 = v59;
        v69 = v91;
        v59 = v54;
        v54 = v61;
      }
    }

    else
    {
      v54 = v28;
      v53 = 0;
      v18 = off_100777000;
    }

    v17 = off_100777000;
  }

  else
  {
    v53 = 0;
    v30 = 0;
    v31 = v92;
  }

  v70 = v17[288];
  v71 = *(v70 + v31);
  *(v70 + v31) = v30;
  v72 = v30;

  v73 = v18[289];
  v74 = *(v73 + v31);
  *(v73 + v31) = v53;
  v75 = v53;

  v94[4] = v30;
  v94[5] = v53;
  v76 = _swiftEmptyArrayStorage;
  v93 = _swiftEmptyArrayStorage;
  v77 = v72;
  v78 = v75;
  for (i = 0; i != 2; ++i)
  {
    v80 = v94[i + 4];
    if (v80)
    {
      v81 = v80;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v76 = v93;
    }
  }

  sub_100058000(&qword_100777950);
  swift_arrayDestroy();
  v82 = [v31 arrangedSubviews];
  if (v82 && (v83 = v82, sub_100003540(0, &qword_10076B020), v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v83, , LOBYTE(v83) = sub_10012671C(v84, v76), , , (v83 & 1) != 0))
  {
  }

  else
  {
    sub_100003540(0, &qword_10076B020);
    v85 = Array._bridgeToObjectiveC()().super.isa;

    [v31 setArrangedSubviews:v85];
  }
}

uint64_t sub_10028BAD8(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_emptyListMessaging;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v8, v2 + v11, v4);
  sub_10028CD54(&qword_100777948, &type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  if ((v11 & 1) == 0)
  {
    sub_10028B090();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

id sub_10028BCE8(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListMessagingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [a1 addSubview:v2];
  v3 = objc_opt_self();
  sub_100058000(&qword_10076B780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006322B0;
  v5 = [a1 layoutMarginsGuide];
  v6 = [v5 leadingAnchor];

  v7 = [v2 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v4 + 32) = v8;
  v9 = [a1 layoutMarginsGuide];
  v10 = [v9 trailingAnchor];

  v11 = [v2 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v4 + 40) = v12;
  v13 = [a1 centerYAnchor];
  v14 = [v2 centerYAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  *(v4 + 48) = v15;
  sub_100003540(0, &qword_10076BAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];

  return v2;
}

id sub_10028BF5C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_listLayout;
  v11 = enum case for TTRRemindersListLayout.list(_:);
  v12 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v12 - 8) + 104))(&v4[v10], v11, v12);
  v13 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_emptyListMessaging;
  v14 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v15 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  *&v4[OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_messagingViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_subtitleTextView] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  [v16 setAxis:1];
  [v16 setAlignment:3];
  [v16 setDistribution:0];
  [v16 setSpacing:2.0];
  [v16 setAccessibilityContainerType:4];
  sub_100058000(&unk_10076BD70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10062D3F0;
  *(v17 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v17 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v17 + 48) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v17 + 56) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v16;
}

id sub_10028C308(void *a1)
{
  [a1 setLineBreakMode:0];

  return [a1 setAlignment:1];
}

id sub_10028C358(uint64_t a1)
{
  v2 = [objc_allocWithZone(UITextView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setEditable:0];
  [v4 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v6 = [v4 textContainer];
  [v6 setLineFragmentPadding:0.0];

  [v4 _setInteractiveTextSelectionDisabled:1];
  sub_100058000(&unk_100776BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = NSForegroundColorAttributeName;
  v8 = NSForegroundColorAttributeName;
  v9 = [v3 linkColor];
  *(inited + 64) = sub_100003540(0, &qword_100772610);
  *(inited + 40) = v9;
  sub_100460A28(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_100776BE0);
  type metadata accessor for Key(0);
  sub_10028CD54(&qword_100778A60, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 setLinkTextAttributes:isa];

  [v4 setScrollEnabled:0];
  [v4 setDelegate:a1];
  return v4;
}

uint64_t type metadata accessor for TTRIRemindersListMessagingView()
{
  result = qword_100777938;
  if (!qword_100777938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10028C7C0()
{
  result = type metadata accessor for TTRRemindersListLayout();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10028C9C4(void *a1, char a2)
{
  v4 = [a1 horizontalSizeClass];
  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v14 = &UIFontTextStyleTitle3;
      if ((a2 & 1) == 0)
      {
        v14 = &UIFontTextStyleLargeTitle;
      }

      v15 = *v14;
      sub_100003540(0, &qword_100771DF0);
      v16 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();

      return v16;
    }

    else
    {
      sub_100003540(0, &qword_100771DF0);
      return static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
    }
  }

  else
  {
    v5 = [a1 preferredContentSizeCategory];
    v6 = objc_opt_self();
    v7 = UIContentSizeCategoryAccessibilityExtraLarge;
    v8 = [v6 mainScreen];
    [v8 bounds];
    v10 = v9;

    if (v10 == 568.0)
    {
      v11 = UIContentSizeCategoryAccessibilityMedium;

      v7 = v11;
    }

    sub_100003540(0, &qword_100771DF0);
    v12 = static UIFont.roundedCustomFont(textStyle:contentSizeCategory:maximumContentSizeCategory:weight:)();

    return v12;
  }
}

id sub_10028CBA0(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = *(v7 + 16);
  v13(&v17 - v11, a1, v6);
  if ((*(v7 + 88))(v12, v6) == enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:))
  {
    if (a2)
    {
      [a2 removeFromSuperview];
    }

    return 0;
  }

  else
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = sub_10028BCE8(a3);
    }

    v13(v10, a1, v6);
    v15 = a2;
    sub_10028BAD8(v10);
    (*(v7 + 8))(v12, v6);
  }

  return v14;
}

uint64_t sub_10028CD54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10028CD9C()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100777960);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRHelpAnchor();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_emptyListMessaging;
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v13, v5);
  TTRRemindersListViewModel.EmptyListMessagingType.helpAnchor.getter();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1000079B4(v4, &qword_100777960);
  }

  else
  {
    (*(v10 + 32))(v12, v4, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
      v16 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
      sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v15);
      (*(v16 + 976))(v12, v15, v16);
      swift_unknownObjectRelease();
    }

    (*(v10 + 8))(v12, v9);
  }

  return 0;
}

id sub_10028D05C(uint64_t *a1, id *a2, uint64_t a3)
{
  v116 = a3;
  v123 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v120 = *(v4 - 8);
  v121 = v4;
  v5 = __chkstk_darwin(v4);
  v98 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v122 = &v96 - v8;
  v9 = __chkstk_darwin(v7);
  v97 = &v96 - v10;
  __chkstk_darwin(v9);
  v117 = &v96 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v114 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0);
  __chkstk_darwin(v113);
  v130 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRListType.SortingCapability();
  v128 = *(v15 - 8);
  v129 = v15;
  v16 = __chkstk_darwin(v15);
  v112 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v127 = &v96 - v18;
  v115 = type metadata accessor for TTRRemindersListDefaultListType();
  v110 = *(v115 - 8);
  __chkstk_darwin(v115);
  v109 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v107);
  v108 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v21 - 8);
  v111 = (&v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v103 = *(Subtasks - 8);
  v104 = Subtasks;
  __chkstk_darwin(Subtasks);
  v105 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v106 = *(v126 - 8);
  v25 = __chkstk_darwin(v126);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v125 = &v96 - v28;
  v29 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = enum case for TTRListType.PredefinedSmartListType.flagged(_:);
  v34 = *(v30 + 104);
  v34(v32, enum case for TTRListType.PredefinedSmartListType.flagged(_:), v29);
  v124 = a2;
  v99 = *a2;
  v35 = TTRListType.PredefinedSmartListType.smartList(in:)();
  v36 = *(v30 + 8);
  v36(v32, v29);
  if (v35)
  {
    v37 = sub_100174F2C();
    v38 = &protocol witness table for REMSmartList;
    v39 = v35;
  }

  else
  {
    v39 = 0;
    v37 = 0;
    v38 = 0;
    v136[2] = 0;
    v136[1] = 0;
  }

  v102 = v39;
  v136[4] = v38;
  v100 = v39 != 0;
  v136[3] = v37;
  v136[0] = v39;
  v34(v32, v33, v29);
  v101 = v35;
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  v36(v32, v29);
  v40 = v125;
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v41 = v106;
  v42 = v126;
  v118 = *(v106 + 8);
  v119 = v106 + 8;
  v118(v27, v126);
  sub_1000079B4(v136, &unk_100775680);
  v106 = *(v41 + 16);
  (v106)(v27, v40, v42);
  (*(v103 + 104))(v105, enum case for REMRemindersListDataView.FetchSubtasks.count(_:), v104);
  type metadata accessor for TTRShowFlaggedDataModelSource();
  swift_allocObject();
  v43 = v99;
  v44 = TTRShowFlaggedDataModelSource.init(store:countCompleted:sortingStyle:canChangeSortingStyle:fetchSubtasks:)();
  v45 = v111;
  sub_1001749C4(v124, v111);
  v136[0] = &_swiftEmptyArrayStorage;
  sub_10028E41C(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218);
  sub_10010BA44();
  v46 = v108;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v47 = v109;
  (*(v110 + 104))(v109, enum case for TTRRemindersListDefaultListType.cloudKitOnly(_:), v115);
  sub_10007786C(v45, v46, v47, v136);
  (v106)(v27, v40, v42);
  v48 = v127;
  TTRListType.SortingCapability.init(canChangeSortingStyle:canSortByManual:initialSortingStyle:)();
  v49 = v136[0];
  v50 = v112;
  (*(v128 + 16))(v112, v48, v129);
  type metadata accessor for TTRShowFlaggedViewModelSource();
  v51 = swift_allocObject();
  v52 = v101;

  v53 = v49;
  v115 = v44;
  v109 = v53;
  v54 = sub_10028DFEC(v102, v44, v53, v50, v51);
  v112 = v52;

  sub_1001749C4(v124, v45);
  sub_10010BCAC(v136, v133);
  v55 = sub_10028E41C(&qword_100777990, type metadata accessor for TTRShowFlaggedViewModelSource);
  v56 = v130;
  sub_1001749C4(v45, v130);
  v57 = v113;
  sub_10010BCAC(v133, v56 + *(v113 + 20));
  v58 = (v56 + *(v57 + 24));
  *v58 = v54;
  v58[1] = v55;
  v59 = v133[0];
  sub_100058000(&qword_10076C230);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v135, v132, &qword_100769608);
  v61 = *(v132[5] + 8);
  *(v60 + 32) = v132[4];
  *(v60 + 40) = v61;
  sub_10000794C(&v134, v131, &qword_100769600);
  swift_retain_n();
  v62 = v59;
  swift_unknownObjectRelease();
  *(v60 + 48) = v131[3];
  sub_100004758(v131);
  sub_100004758(v132);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v63 = swift_allocObject();
  v64 = sub_1003A8868(v62, v54, v60, v63);
  v110 = v54;

  sub_10010BD08(v133);
  sub_100174ECC(v45, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v65 = *(v57 + 28);
  v111 = v64;
  *(v56 + v65) = v64;
  v66 = v114;
  sub_100078BBC(v114);
  v113 = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v67 = swift_allocObject();
  v68 = v116;
  swift_unknownObjectRetain();
  v69 = sub_1003A56E4(v66, v68, v67);
  v70 = *(v69 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v70 + 112))(ObjectType, v70))
  {
    swift_getObjectType();
    v72 = v97;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v73 = v120;
    v74 = v121;
    v75 = v117;
    (*(v120 + 32))(v117, v72, v121);
  }

  else
  {
    v73 = v120;
    v74 = v121;
    v75 = v117;
    (*(v120 + 104))(v117, enum case for TTRRemindersListLayout.list(_:), v121);
  }

  v117 = sub_1003A4A1C(v75, v69);
  v120 = v76;
  v78 = v77;
  v80 = v79;
  (*(v73 + 8))(v75, v74);
  v121 = swift_getObjectType();
  *(v69 + 24) = *(v80 + 8);
  v124 = v78;
  swift_unknownObjectWeakAssign();
  v81 = *(v69 + 144);
  v82 = swift_getObjectType();
  v83 = *(v81 + 112);

  if (v83(v82, v81))
  {
    swift_getObjectType();
    v84 = v98;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v85 = v122;
    (*(v73 + 32))(v122, v84, v74);
  }

  else
  {
    v85 = v122;
    (*(v73 + 104))(v122, enum case for TTRRemindersListLayout.list(_:), v74);
  }

  v86 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v87 = v117;
  v88 = sub_1003A7DE0(v69, v87, v120, v85, 0, 1, 0, v86);

  v89 = *(v80 + 32);
  v90 = v88;
  v89(v88, &off_100723D78, v121, v80);
  sub_10028E41C(&qword_100770960, type metadata accessor for TTRIRemindersCommonPresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10028E41C(&qword_100777998, type metadata accessor for TTRShowFlaggedViewModelSource);

  v91 = v90;
  dispatch thunk of TTRShowFlaggedDataModelSource.delegate.setter();

  sub_10056FEB0(v92, &off_10071A9B0);

  v111[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v137, v133, &qword_100769600);
  v93 = v133[4];
  swift_unknownObjectRelease();
  *(v93 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v133);
  sub_10000794C(&v138, v133, &qword_100769608);
  swift_getObjectType();
  sub_10028E41C(&qword_100770970, type metadata accessor for TTRIRemindersCommonPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v133);
  v94 = v123;
  v123[3] = v113;
  v94[4] = &off_10071DA58;

  swift_unknownObjectRelease();
  *v94 = v69;
  (*(v128 + 8))(v127, v129);
  v118(v125, v126);
  sub_100174ECC(v130, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v136);
  return v91;
}

id TTRIShowFlaggedAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowFlaggedAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowFlaggedAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowFlaggedAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10028DFEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *a5;
  v38 = a4;
  v39 = v10;
  v40 = type metadata accessor for REMAnalyticsEvent();
  v11 = *(v40 - 8);
  __chkstk_darwin(v40);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v14 - 8);
  v16 = &v37 - v15;
  v37 = type metadata accessor for TTRListType.SortingCapability();
  v17 = *(v37 - 8);
  __chkstk_darwin(v37);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_smartList;
  *(a5 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_smartList) = 0;
  v21 = a5 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_completedRemindersCount;
  *v21 = 0;
  v21[8] = 1;
  *(a5 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_hasIncompleteOrCompletedReminders) = 2;
  *(a5 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  *(a5 + v20) = a1;
  (*(v17 + 16))(v19, a4);
  v22 = a1;
  v23 = sub_1003A649C(a2, a3, v19, a5);

  sub_10031C6C8(v16);
  v24 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
  sub_10056F540(v16);
  sub_1000079B4(v16, &unk_10078A380);
  type metadata accessor for TTRUserDefaults();
  v25 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v26 = sub_100058000(&qword_100770980);
  v27 = &v13[*(v26 + 48)];
  v28 = &v13[*(v26 + 80)];
  v29 = enum case for REMRemindersOpenUserOperation.SmartListType.flagged(_:);
  v30 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v30 - 8) + 104))(v13, v29, v30);
  v31 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v32 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v32 - 8) + 104))(v13, v31, v32);
  *v27 = TTRUserDefaults.activitySessionId.getter();
  v27[1] = v33;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v28 = _typeName(_:qualified:)();
  v28[1] = v34;
  v35 = v40;
  (*(v11 + 104))(v13, enum case for REMAnalyticsEvent.openListUserOperation(_:), v40);
  REMAnalyticsManager.post(event:)();

  (*(v17 + 8))(v38, v37);
  (*(v11 + 8))(v13, v35);
  return v23;
}

uint64_t sub_10028E41C(unint64_t *a1, void (*a2)(uint64_t))
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

NSString sub_10028E464()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779A0 = result;
  return result;
}

NSString sub_10028E49C()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779A8 = result;
  return result;
}

NSString sub_10028E4D4()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779B0 = result;
  return result;
}

NSString sub_10028E50C()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779B8 = result;
  return result;
}

NSString sub_10028E544()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779C0 = result;
  return result;
}

NSString sub_10028E57C()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779C8 = result;
  return result;
}

NSString sub_10028E5B4()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779D0 = result;
  return result;
}

NSString sub_10028E5EC()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779D8 = result;
  return result;
}

NSString sub_10028E624()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779E0 = result;
  return result;
}

UIMenu sub_10028E65C()
{
  v0._countAndFlagsBits = 0x696D65522077654ELL;
  v0._object = 0xEC0000007265646ELL;
  v1._countAndFlagsBits = 0xD00000000000002CLL;
  v1._object = 0x800000010067C520;
  v2 = TTRLocalizedString(_:comment:)(v0, v1);
  sub_100003540(0, &unk_10076BAB0);
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 _systemImageNamed:v3];

  v6 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v7._countAndFlagsBits = 0x7473694C2077654ELL;
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x800000010067C550;
  v7._object = 0xE800000000000000;
  v9 = TTRLocalizedString(_:comment:)(v7, v8);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v4 _systemImageNamed:{v10, _swiftEmptyArrayStorage, v2._countAndFlagsBits, v2._object, 0, 0}];

  v12 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v13._countAndFlagsBits = 0x756F72472077654ELL;
  v14._countAndFlagsBits = 0xD000000000000029;
  v14._object = 0x800000010067C5A0;
  v13._object = 0xE900000000000070;
  TTRLocalizedString(_:comment:)(v13, v14);
  sub_100003540(0, &unk_10076BD00);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v4 _systemImageNamed:{v15, _swiftEmptyArrayStorage, v9._countAndFlagsBits, v9._object, 0, 0}];

  v17 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100003540(0, &unk_10076B890);
  if (qword_1007670A0 != -1)
  {
    swift_once();
  }

  v18 = qword_1007779A0;
  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1006322B0;
  *(preferredElementSize + 32) = v6;
  *(preferredElementSize + 40) = v12;
  *(preferredElementSize + 48) = v17;
  v20 = v18;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v23.value.super.isa = 0;
  v23.is_nil = v18;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v21, 0, v23, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

Class sub_10028E9FC()
{
  sub_100003540(0, &unk_10076BAB0);
  static TTRCommonAsset.Image.addSectionIcon.getter();
  v0 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  static TTRCommonAsset.Image.addSectionIcon.getter();
  v1 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v2._object = 0x800000010067C490;
  v3._object = 0x800000010067C4B0;
  v2._countAndFlagsBits = 0x1000000000000010;
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  TTRLocalizedString(_:comment:)(v2, v3);
  sub_100003540(0, &unk_10076BD00);
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() _systemImageNamed:{v4, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  v6 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v7._countAndFlagsBits = 0x206F742065766F4DLL;
  v7._object = 0xEF6E6F6974636553;
  v8._countAndFlagsBits = 0xD000000000000030;
  v8._object = 0x800000010067C4E0;
  v9 = TTRLocalizedString(_:comment:)(v7, v8);
  v10 = static UIDeferredMenuElementIdentifier.moveToSectionIdentifier.getter();
  sub_100003540(0, &unk_10076B890);
  v11 = static TTRCommonAsset.Image.moveToSectionIcon.getter();
  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = [objc_opt_self() elementUsingFocusWithIdentifier:v10 shouldCacheItems:{0, _swiftEmptyArrayStorage}];
  v24.value.super.isa = v11;
  v24.is_nil = 0;
  v13.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, 0, v24, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  if (qword_1007670A8 != -1)
  {
    swift_once();
  }

  v14 = qword_1007779A8;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D450;
  *(v15 + 32) = v0;
  *(v15 + 40) = v1;
  *(v15 + 48) = v6;
  *(v15 + 56) = v13;
  v16 = v14;
  v17 = v0;
  v18 = v1;
  v19 = v6;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v25.value.super.isa = 0;
  v25.is_nil = v14;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v20, 0, v25, 1, 0xFFFFFFFFFFFFFFFFLL, v15, v23.super.super.isa).super.super.isa;

  return isa;
}

void sub_10028ED88(void *a1)
{
  [a1 removeMenuForIdentifier:UIMenuOpen];
  isa = sub_10028E65C().super.super.isa;
  [a1 insertChildMenu:isa atStartOfMenuForIdentifier:UIMenuFile];

  v3 = sub_10028E9FC();
  if (qword_1007670A0 != -1)
  {
    swift_once();
  }

  [a1 insertSiblingMenu:v3 afterMenuForIdentifier:qword_1007779A0];

  sub_100003540(0, &unk_10076BD00);
  static TTRLocalizableStrings.RemindersList.autoCategorizationTitle.getter();
  static TTRCommonAsset.Image.autoCategorizationIcon.getter();
  v4 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100003540(0, &unk_10076B890);
  if (qword_1007670B0 != -1)
  {
    swift_once();
  }

  v5 = qword_1007779B0;
  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v4;
  v80 = v5;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v83.value.super.isa = 0;
  v83.is_nil = v5;
  v8.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v7, 0, v83, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  if (qword_1007670A8 != -1)
  {
    swift_once();
  }

  [a1 insertSiblingMenu:v8.super.super.isa afterMenuForIdentifier:qword_1007779A8];

  v9._countAndFlagsBits = 0x7473694C206E6950;
  v10._countAndFlagsBits = 0xD000000000000028;
  v10._object = 0x8000000100671590;
  v9._object = 0xE800000000000000;
  TTRLocalizedString(_:comment:)(v9, v10);
  v11 = String._bridgeToObjectiveC()();
  v12 = objc_opt_self();
  v13 = [v12 _systemImageNamed:v11];

  v14 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1007670B8 != -1)
  {
    swift_once();
  }

  v15 = qword_1007779B8;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10062D420;
  *(v16 + 32) = v14;
  v17 = v15;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v84.value.super.isa = 0;
  v84.is_nil = v15;
  v19 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v18, 0, v84, 1, 0xFFFFFFFFFFFFFFFFLL, v16, 0).super.super.isa;
  [a1 insertSiblingMenu:v19 afterMenuForIdentifier:v80];

  v20._countAndFlagsBits = 0x694C206572616853;
  v21._countAndFlagsBits = 0xD00000000000002ALL;
  v21._object = 0x800000010067C140;
  v20._object = 0xEA00000000007473;
  TTRLocalizedString(_:comment:)(v20, v21);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v12 _systemImageNamed:v22];

  v24 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1007670C0 != -1)
  {
    swift_once();
  }

  v25 = qword_1007779C0;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10062D420;
  *(v26 + 32) = v24;
  v79 = v25;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v85.value.super.isa = 0;
  v85.is_nil = v25;
  v28 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v27, 0, v85, 1, 0xFFFFFFFFFFFFFFFFLL, v26, 0).super.super.isa;
  [a1 insertSiblingMenu:v28 afterMenuForIdentifier:v17];

  v29._object = 0x800000010067C170;
  v30._countAndFlagsBits = 0xD000000000000035;
  v30._object = 0x800000010067C190;
  v29._countAndFlagsBits = 0xD000000000000015;
  TTRLocalizedString(_:comment:)(v29, v30);
  v31 = String._bridgeToObjectiveC()();
  v32 = [v12 _systemImageNamed:v31];

  v33 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v34._countAndFlagsBits = 0xD000000000000011;
  v34._object = 0x800000010067C1D0;
  v35._countAndFlagsBits = 0xD000000000000031;
  v35._object = 0x800000010067C1F0;
  TTRLocalizedString(_:comment:)(v34, v35);
  v36 = String._bridgeToObjectiveC()();
  v37 = [v12 _systemImageNamed:{v36, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  v38 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1007670C8 != -1)
  {
    swift_once();
  }

  v39 = qword_1007779C8;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10062D410;
  *(v40 + 32) = v33;
  *(v40 + 40) = v38;
  v77 = v39;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v86.value.super.isa = 0;
  v86.is_nil = v39;
  v42 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v41, 0, v86, 1, 0xFFFFFFFFFFFFFFFFLL, v40, 0).super.super.isa;
  [a1 insertSiblingMenu:v42 afterMenuForIdentifier:v79];

  v43._countAndFlagsBits = 0x666E4920776F6853;
  v43._object = 0xE90000000000006FLL;
  v44._countAndFlagsBits = 0xD00000000000001BLL;
  v44._object = 0x800000010067C230;
  children = TTRLocalizedString(_:comment:)(v43, v44)._countAndFlagsBits;
  sub_100003540(0, &unk_10076BAB0);
  v46 = String._bridgeToObjectiveC()();
  v47 = [v12 _systemImageNamed:v46];

  v48 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1007670D0 != -1)
  {
    swift_once();
  }

  v49 = qword_1007779D0;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10062D420;
  *(v50 + 32) = v48;
  v78 = v49;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v87.value.super.isa = 0;
  v87.is_nil = v49;
  v52 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v51, 0, v87, 1, 0xFFFFFFFFFFFFFFFFLL, v50, children).super.super.isa;
  [a1 insertSiblingMenu:v52 afterMenuForIdentifier:v77];

  v53._countAndFlagsBits = 0x6D65542077656956;
  v53._object = 0xEE00736574616C70;
  v54._countAndFlagsBits = 0xD00000000000002BLL;
  v54._object = 0x800000010067C250;
  TTRLocalizedString(_:comment:)(v53, v54);
  v55 = String._bridgeToObjectiveC()();
  v56 = [v12 _systemImageNamed:v55];

  v57 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v58._object = 0x800000010067C280;
  v59._countAndFlagsBits = 0xD00000000000002BLL;
  v59._object = 0x800000010067C250;
  v58._countAndFlagsBits = 0x1000000000000013;
  TTRLocalizedString(_:comment:)(v58, v59);
  v60 = String._bridgeToObjectiveC()();
  v61 = [v12 _systemImageNamed:{v60, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  v62 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1007670D8 != -1)
  {
    swift_once();
  }

  v63 = qword_1007779D8;
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_10062D410;
  *(v64 + 32) = v57;
  *(v64 + 40) = v62;
  v65 = v63;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v88.value.super.isa = 0;
  v88.is_nil = v63;
  v67 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v66, 0, v88, 1, 0xFFFFFFFFFFFFFFFFLL, v64, 0).super.super.isa;
  [a1 insertSiblingMenu:v67 afterMenuForIdentifier:v78];

  v68._countAndFlagsBits = 0xA680E2746E697250;
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = 0x800000010067C2A0;
  v68._object = 0xA800000000000000;
  TTRLocalizedString(_:comment:)(v68, v69);
  v70 = String._bridgeToObjectiveC()();
  v71 = [v12 _systemImageNamed:v70];

  v72 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1007670E0 != -1)
  {
    swift_once();
  }

  v73 = qword_1007779E0;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_10062D420;
  *(v74 + 32) = v72;
  v75 = v73;
  v76._countAndFlagsBits = 0;
  v76._object = 0xE000000000000000;
  v89.value.super.isa = 0;
  v89.is_nil = v73;
  v81.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v76, 0, v89, 1, 0xFFFFFFFFFFFFFFFFLL, v74, 0).super.super.isa;
  [a1 insertSiblingMenu:v81.super.super.isa afterMenuForIdentifier:v65];
}

void *sub_10028FAC0()
{
  v1 = OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView____lazy_storage___insetsUpdater;
  if (*(v0 + OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView____lazy_storage___insetsUpdater))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView____lazy_storage___insetsUpdater);
  }

  else
  {
    type metadata accessor for TTRIShowRemindersScrollViewInsetsUpdater();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2[5] = 2;
    v2[6] = 0;
    v2[7] = 0;
    v2[8] = 0;
    swift_unknownObjectWeakAssign();
    v2[3] = sub_100290088;
    v2[4] = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_10028FC0C(double a1, double a2)
{
  isEscapingClosureAtFileLocation = v2;
  ObjectType = swift_getObjectType();
  v7 = objc_opt_self();
  if ([v7 areAnimationsEnabled])
  {
    v8 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView_ownerViewControllerFor52010514);
    if (v8)
    {

      v10 = v8(v9);
      sub_1000301AC(v8);
      if (v10)
      {
        if ([v10 _appearState] == 1)
        {
          ObjectType = swift_allocObject();
          *(ObjectType + 16) = isEscapingClosureAtFileLocation;
          *(ObjectType + 24) = a1;
          *(ObjectType + 32) = a2;
          v11 = swift_allocObject();
          *(v11 + 16) = sub_100290190;
          *(v11 + 24) = ObjectType;
          v15[4] = sub_100026410;
          v15[5] = v11;
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 1107296256;
          v15[2] = sub_100026440;
          v15[3] = &unk_10071DAB8;
          v12 = _Block_copy(v15);
          v13 = isEscapingClosureAtFileLocation;

          [v7 performWithoutAnimation:v12];

          _Block_release(v12);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return result;
          }

          __break(1u);
        }
      }
    }
  }

  v16.receiver = isEscapingClosureAtFileLocation;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "setContentOffset:", a1, a2);
}

id sub_10028FF28(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView_ownerViewControllerFor52010514];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView____lazy_storage___insetsUpdater] = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 systemBackgroundColor];
    [v7 setBackgroundColor:v8];

    a1 = v8;
  }

  return v5;
}

id sub_100290088(void *a1)
{
  [a1 contentInset];
  [a1 setContentInset:?];
  [a1 verticalScrollIndicatorInsets];

  return [a1 setVerticalScrollIndicatorInsets:?];
}

id sub_100290190()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4.receiver = *(v0 + 16);
  v4.super_class = type metadata accessor for TTRIRemindersListCollectionView();
  return objc_msgSendSuper2(&v4, "setContentOffset:", v1, v2);
}

uint64_t AnyListEntityID.hash(into:)()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SmartListType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyListEntityID();
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002923BC(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v4, v11, v1);
      v13 = 1;
    }

    else
    {
      (*(v2 + 32))(v4, v11, v1);
      v13 = 2;
    }

    Hasher._combine(_:)(v13);
    sub_100292B14(&qword_10076BB40, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    Hasher._combine(_:)(0);
    sub_100292B14(&qword_100777A20, &type metadata accessor for SmartListType);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v6 + 8))(v8, v5);
  }
}

Swift::Int AnyListEntityID.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnyListEntityID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10029050C()
{
  Hasher.init(_seed:)();
  AnyListEntityID.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AnyListEntityID.entityIdentifierString.getter()
{
  v1 = type metadata accessor for URL();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  v6 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMNavigationSpecifier();
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SmartListType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AnyListEntityID();
  __chkstk_darwin(v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002923BC(v0, v18);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100292420(v18);
    v19 = v27;
    (*(v6 + 104))(v8, enum case for REMNavigationSpecifier.SmartListPathSpecifier.showInAccountsList(_:), v27);
    v21 = v28;
    v20 = v29;
    (*(v28 + 104))(v5, enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:), v29);
    sub_100290988(v8, v5, v11);
    (*(v21 + 8))(v5, v20);
    (*(v6 + 8))(v8, v19);
    v22 = v30;
    REMNavigationSpecifier.url.getter();
    (*(v25 + 8))(v11, v26);
    v23 = URL.absoluteString.getter();
    (*(v31 + 8))(v22, v32);
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    v23 = SmartListType.id.getter();
    (*(v13 + 8))(v15, v12);
  }

  return v23;
}

uint64_t sub_100290988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v39 = a2;
  v40 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SmartListType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AnyListEntityID();
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002923BC(v4, v16);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v7 + 32))(v9, v16, v6);
    v17 = *(sub_100058000(&unk_100793000) + 48);
    v18 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v22 = [v18 objectIDWithUUID:isa];

    (*(v7 + 8))(v9, v6);
    v23 = v40;
    *v40 = v22;
    v24 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
    (*(*(v24 - 8) + 16))(&v23[v17], v39, v24);
    v25 = &enum case for REMNavigationSpecifier.list(_:);
LABEL_5:
    v26 = *v25;
    v27 = type metadata accessor for REMNavigationSpecifier();
    return (*(*(v27 - 8) + 104))(v23, v26, v27);
  }

  (*(v11 + 32))(v13, v16, v10);
  v20 = (*(v11 + 88))(v13, v10);
  if (v20 == enum case for SmartListType.today(_:))
  {
    v21 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
    v23 = v40;
    (*(*(v21 - 8) + 16))(v40, a1, v21);
    v25 = &enum case for REMNavigationSpecifier.today(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for SmartListType.scheduled(_:))
  {
    v29 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
    v23 = v40;
    (*(*(v29 - 8) + 16))(v40, a1, v29);
    v25 = &enum case for REMNavigationSpecifier.scheduled(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for SmartListType.all(_:))
  {
    v30 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
    v23 = v40;
    (*(*(v30 - 8) + 16))(v40, a1, v30);
    v25 = &enum case for REMNavigationSpecifier.allReminders(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for SmartListType.flagged(_:))
  {
    v31 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
    v23 = v40;
    (*(*(v31 - 8) + 16))(v40, a1, v31);
    v25 = &enum case for REMNavigationSpecifier.flagged(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for SmartListType.assigned(_:))
  {
    v32 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
    v23 = v40;
    (*(*(v32 - 8) + 16))(v40, a1, v32);
    v25 = &enum case for REMNavigationSpecifier.assigned(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for SmartListType.completed(_:))
  {
    v33 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
    v23 = v40;
    (*(*(v33 - 8) + 16))(v40, a1, v33);
    v25 = &enum case for REMNavigationSpecifier.completed(_:);
    goto LABEL_5;
  }

  v34 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
  v35 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
  v36 = v40;
  (*(*(v35 - 8) + 104))(v40, v34, v35);
  v37 = enum case for REMNavigationSpecifier.root(_:);
  v38 = type metadata accessor for REMNavigationSpecifier();
  (*(*(v38 - 8) + 104))(v36, v37, v38);
  return (*(v11 + 8))(v13, v10);
}