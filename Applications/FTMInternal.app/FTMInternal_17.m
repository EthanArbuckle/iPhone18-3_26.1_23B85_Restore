uint64_t sub_100219620(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v78 = (&v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v79 = (&v72 - v13);
  v14 = __chkstk_darwin(v12);
  v77 = &v72 - v15;
  __chkstk_darwin(v14);
  v76 = (&v72 - v16);
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v20 = __chkstk_darwin(v19);
  v82 = &v72 - v21;
  v22 = __chkstk_darwin(v20);
  v75 = (&v72 - v23);
  __chkstk_darwin(v22);
  v81 = &v72 - v26;
  v27 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v27 = a2 - a1;
  }

  v28 = v27 >> 3;
  v29 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v29 = a3 - a2;
  }

  v30 = v29 >> 3;
  if (v28 >= v29 >> 3)
  {
    v81 = v24;
    if (a4 != a2 || &a2[8 * v30] <= a4)
    {
      v50 = v25;
      memmove(a4, a2, 8 * v30);
      v25 = v50;
    }

    v85 = &a4[8 * v30];
    v51 = v79;
    if (a3 - a2 < 8)
    {
      v49 = a2;
    }

    else
    {
      v49 = a2;
      if (a2 > a1)
      {
        v52 = (v25 + 48);
        v74 = (v25 + 8);
        v75 = (v25 + 32);
        v76 = (v25 + 48);
        v84 = a4;
        v73 = a1;
LABEL_34:
        v80 = v49;
        v53 = v49 - 8;
        v54 = a3 - 8;
        v55 = v85;
        v77 = v49 - 8;
        do
        {
          v56 = *(v55 - 1);
          v55 -= 8;
          v57 = *v53;
          v58 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          sub_1001C2E78(v56 + v58, v51);
          v59 = *v52;
          v60 = (*v52)(v51, 1, v17);
          v83 = v54;
          if (v60 == 1)
          {

            Date.init()();
            if (v59(v51, 1, v17) != 1)
            {
              sub_1001AC99C(v51, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            (*v75)(v82, v51, v17);
          }

          v61 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          v62 = v57 + v61;
          v63 = v78;
          sub_1001C2E78(v62, v78);
          if (v59(v63, 1, v17) == 1)
          {
            v64 = v81;
            Date.init()();
            if (v59(v63, 1, v17) != 1)
            {
              sub_1001AC99C(v63, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            v64 = v81;
            (*v75)(v81, v63, v17);
          }

          v65 = v82;
          v66 = static Date.> infix(_:_:)();
          v67 = *v74;
          (*v74)(v64, v17);
          v67(v65, v17);

          if (v66)
          {
            a3 = v83;
            a4 = v84;
            v51 = v79;
            v69 = v73;
            v70 = v77;
            if (v83 + 8 != v80)
            {
              *v83 = *v77;
            }

            v52 = v76;
            if (v85 <= a4 || (v49 = v70, v70 <= v69))
            {
              v49 = v70;
              goto LABEL_54;
            }

            goto LABEL_34;
          }

          v68 = v83;
          a4 = v84;
          v51 = v79;
          if (v83 + 8 != v85)
          {
            *v83 = *v55;
          }

          v54 = v68 - 8;
          v85 = v55;
          v52 = v76;
          v53 = v77;
        }

        while (v55 > a4);
        v85 = v55;
        v49 = v80;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v28] <= a4)
    {
      v31 = v25;
      memmove(a4, a1, 8 * v28);
      v25 = v31;
    }

    v85 = &a4[8 * v28];
    if (a2 - a1 >= 8)
    {
      v32 = a2;
      if (a2 < a3)
      {
        v33 = (v25 + 48);
        v78 = (v25 + 8);
        v79 = (v25 + 32);
        v82 = (v25 + 48);
        v83 = a3;
        while (1)
        {
          v80 = v32;
          v34 = *v32;
          v35 = *a4;
          v36 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          v37 = v76;
          sub_1001C2E78(v34 + v36, v76);
          v38 = *v33;
          v39 = (*v33)(v37, 1, v17);
          v84 = a4;
          if (v39 == 1)
          {

            Date.init()();
            if (v38(v37, 1, v17) != 1)
            {
              sub_1001AC99C(v37, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            (*v79)(v81, v37, v17);
          }

          v40 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          v41 = v35 + v40;
          v42 = v77;
          sub_1001C2E78(v41, v77);
          v43 = v38(v42, 1, v17);
          v44 = v75;
          if (v43 == 1)
          {
            Date.init()();
            if (v38(v42, 1, v17) != 1)
            {
              sub_1001AC99C(v42, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            (*v79)(v75, v42, v17);
          }

          v45 = v81;
          v46 = static Date.> infix(_:_:)();
          v47 = *v78;
          (*v78)(v44, v17);
          v47(v45, v17);

          if ((v46 & 1) == 0)
          {
            break;
          }

          v48 = v80;
          v32 = v80 + 8;
          a4 = v84;
          if (a1 != v80)
          {
            goto LABEL_24;
          }

LABEL_25:
          a1 += 8;
          v33 = v82;
          if (a4 >= v85 || v32 >= v83)
          {
            goto LABEL_27;
          }
        }

        v48 = v84;
        a4 = v84 + 8;
        v32 = v80;
        if (a1 == v84)
        {
          goto LABEL_25;
        }

LABEL_24:
        *a1 = *v48;
        goto LABEL_25;
      }
    }

LABEL_27:
    v49 = a1;
  }

LABEL_54:
  if (v49 != a4 || v49 >= &a4[(v85 - a4 + (v85 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v49, a4, 8 * ((v85 - a4) / 8));
  }

  return 1;
}

uint64_t sub_100219E58(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *a1;
  v41 = *a1 >> 62;
  object = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v41)
  {
    goto LABEL_82;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  v9 = v5 & 0xC000000000000001;
  v44 = a2;
  v43 = v5;
  while (v7 != v8)
  {
    if (v9)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(object + 16))
      {
        goto LABEL_72;
      }

      v11 = *(v5 + 8 * v8 + 32);
    }

    if (*(v11 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2 && (v11[4] == *a3 ? (v12 = v11[5] == a3[1]) : (v12 = 0), v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v13 = v9;
      v9 = v7;
      v14 = object;
      v15 = v11[8];
      v16 = v11[9];
      v17 = objc_opt_self();

      v18 = [v17 mainBundle];
      v47._object = v16;
      v19._countAndFlagsBits = v15;
      v19._object = v16;
      v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v20.value._object = 0xEB00000000656C62;
      v21._countAndFlagsBits = v15;
      v21._object = v16;
      v47._countAndFlagsBits = v15;
      v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v47);
      object = v22._object;

      if (v22._countAndFlagsBits == *a4 && v22._object == *(a4 + 8))
      {

        a2 = v44;
        v5 = v43;
LABEL_28:
        v26 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_31;
        }

        while (2)
        {
          if (v5 >> 62)
          {
            if (v26 == _CocoaArrayWrapper.endIndex.getter())
            {
              return v8;
            }
          }

          else if (v26 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v8;
          }

          if ((v5 & 0xC000000000000001) != 0)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v26 & 0x8000000000000000) != 0)
            {
              goto LABEL_74;
            }

            if (v26 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            v29 = *(v5 + 8 * v26 + 32);
          }

          if (*(v29 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2 && (v29[4] == *a3 && v29[5] == a3[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            v30 = v29[8];
            v31 = v29[9];

            v32 = [v17 mainBundle];
            v48._object = v31;
            v33._countAndFlagsBits = v30;
            v33._object = v31;
            v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v34.value._object = 0xEB00000000656C62;
            v35._countAndFlagsBits = v30;
            v35._object = v31;
            v48._countAndFlagsBits = v30;
            v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v48);
            object = v36._object;

            if (v36._countAndFlagsBits == *a4 && v36._object == *(a4 + 8))
            {

              a2 = v44;
              goto LABEL_33;
            }

            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

            a2 = v44;
            if (v37)
            {
LABEL_33:
              v10 = __OFADD__(v26++, 1);
              if (v10)
              {
                goto LABEL_76;
              }

              continue;
            }
          }

          else
          {
          }

          break;
        }

        if (v8 != v26)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            object = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_79;
            }

            v38 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v38)
            {
              goto LABEL_80;
            }

            if (v26 >= v38)
            {
              goto LABEL_81;
            }

            v11 = *(v5 + 32 + 8 * v8);
            object = *(v5 + 32 + 8 * v26);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
          {
            v5 = sub_1001FA690(v5);
            v39 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v39) = 0;
          }

          v9 = v5 & 0xFFFFFFFFFFFFFF8;
          v40 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = object;

          if ((v5 & 0x8000000000000000) != 0 || v39)
          {
            v5 = sub_1001FA690(v5);
            v9 = v5 & 0xFFFFFFFFFFFFFF8;
            if ((v26 & 0x8000000000000000) != 0)
            {
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
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              v7 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_3;
            }
          }

          else if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          if (v26 >= *(v9 + 16))
          {
            goto LABEL_78;
          }

LABEL_31:
          v27 = v9 + 8 * v26;
          v28 = *(v27 + 32);
          *(v27 + 32) = v11;

          *a1 = v5;
        }

        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_77;
        }

        goto LABEL_33;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v44;
      object = v14;
      v7 = v9;
      v9 = v13;
      v5 = v43;
      if (v24)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v10 = __OFADD__(v8++, 1);
    if (v10)
    {
      goto LABEL_73;
    }
  }

  if (v41)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  return *(object + 16);
}

uint64_t sub_10021A384(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = sub_10020C9B0(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v22 = v12;
    v13 = a1(&v22);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1001FA690(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1001FA690(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    v20 = v18 + 8 * v10;
    v21 = *(v20 + 32);
    *(v20 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

void *sub_10021A608(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100227334(v3, 0);
  sub_1001FBC64(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10021A69C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 8 * a2);
    v9 = type metadata accessor for STransferMetrics();
    sub_10021C448(v7 + *(*(v9 - 8) + 72) * a2, v6, type metadata accessor for STransferMetrics);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_10021A754(uint64_t a1)
{
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);

  v2._countAndFlagsBits = 126;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v22 = a1;
  v23 = *(a1 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v5 = v24;
  v4 = v25;
  if (qword_100375020 != -1)
  {
LABEL_30:
    swift_once();
  }

  v6 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsGraphArray);
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v21 = v7;
    do
    {
      if (v9)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_23:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v11 = *(v6 + 8 * v8 + 32);

        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }
      }

      v13 = v11[2] == v5 && v11[3] == v4;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(v11 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible) & 1) != 0 && (v11[6] == *(v22 + 48) && v11[7] == *(v22 + 56) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = v5;
        v15 = v4;
        v16 = v6;
        v17 = v10;
        v18 = v9;
        v19 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v9 = v18;
        v10 = v17;
        v6 = v16;
        v4 = v15;
        v5 = v14;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v7 = v21;
      }

      else
      {
      }

      ++v8;
    }

    while (v12 != v7);
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return _swiftEmptyArrayStorage;
    }

    goto LABEL_27;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
LABEL_27:
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10021AA10(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v29 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v27 = *(v12 - 8);
  v28 = v12;
  v13 = *(v27 + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1002181D0();
  static DispatchQoS.background.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_100377BD0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001A551C(&qword_100377BD8, &unk_1002F3710);
  sub_1001AD0C8(&qword_100377BE0, &qword_100377BD8, &unk_1002F3710);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = swift_allocObject();
  v18 = v26;
  *(v17 + 16) = v25;
  *(v17 + 24) = v18;
  aBlock[4] = sub_10021C3D8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_10031F3E0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  v21 = v29;
  v20 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v31 + 8))(v21, v20);
  (*(v27 + 8))(v15, v28);
}

unint64_t sub_10021AEA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

_UNKNOWN **sub_10021AF50()
{
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 24) == 1)
  {
    v0 = [objc_opt_self() standardUserDefaults];
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 objectForKey:v1];

    if (v2)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v4 == 1)
      {

        return &off_10031A168;
      }
    }

    else
    {
      sub_1001AC99C(v7, &qword_100375D68, &unk_1002F2370);
    }

    return &off_10031A190;
  }

  else if (*(qword_100382500 + 25))
  {
    return &off_10031A1B8;
  }

  else
  {
    return &off_10031A1E0;
  }
}

uint64_t sub_10021B134(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10021B17C()
{
  v1 = (type metadata accessor for Metric(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[13];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = *(v5 + v1[18] + 8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

id sub_10021B30C()
{
  v1 = *(type metadata accessor for Metric(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100215A1C(v0 + v2, v3);
}

unint64_t sub_10021B398(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_10021B49C(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_10021B398(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    if (v19 != a2)
    {
      if (v10 != v11)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1001FA690(v7);
          v17 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v17)
        {
          v7 = sub_1001FA690(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10021B6C4()
{
  sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
  result = swift_allocObject();
  *(result + 16) = xmmword_1002F2BC0;
  *(result + 32) = 0xD000000000000016;
  *(result + 40) = 0x80000001002B95F0;
  if (qword_100375018 != -1)
  {
    v3 = result;
    swift_once();
    result = v3;
  }

  v1 = 0x80000001002B96C0;
  if (*(qword_100382500 + 26))
  {
    v2 = 0;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*(qword_100382500 + 26))
  {
    v1 = 0xE000000000000000;
  }

  *(result + 48) = v2;
  *(result + 56) = v1;
  *(result + 64) = 0xD000000000000011;
  *(result + 72) = 0x80000001002BCE00;
  *(result + 80) = 0xD000000000000013;
  *(result + 88) = 0x80000001002BCE20;
  *(result + 96) = 0xD000000000000011;
  *(result + 104) = 0x80000001002BCEA0;
  *(result + 112) = 0x74635F70637372;
  *(result + 120) = 0xE700000000000000;
  *(result + 128) = 0x74635F306E6365;
  *(result + 136) = 0xE700000000000000;
  return result;
}

_UNKNOWN **sub_10021B808()
{
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v0 = qword_100382500;
  if (*(qword_100382500 + 153) == 1)
  {
    if (*(qword_100382500 + 26))
    {
      return &off_10031A6A8;
    }

    else
    {
      return &off_10031A5A8;
    }
  }

  else
  {
    sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
    result = swift_allocObject();
    *(result + 1) = xmmword_1002F2BD0;
    result[4] = 0xD000000000000017;
    result[5] = 0x80000001002B92F0;
    result[6] = 0xD000000000000016;
    result[7] = 0x80000001002B9620;
    result[8] = 0xD000000000000011;
    result[9] = 0x80000001002B9640;
    result[10] = 0xD000000000000011;
    result[11] = 0x80000001002B9660;
    strcpy(result + 96, "freq_band_ind");
    *(result + 55) = -4864;
    result[14] = 4801360;
    result[15] = 0xE300000000000000;
    result[16] = 1684955490;
    result[17] = 0xE400000000000000;
    result[18] = 0xD000000000000010;
    result[19] = 0x80000001002B9680;
    result[20] = 0xD000000000000016;
    result[21] = 0x80000001002B96A0;
    result[22] = 0x756C61765F677661;
    result[23] = 0xEF707273725F7365;
    result[24] = 0x756C61765F677661;
    result[25] = 0xEF717273725F7365;
    result[26] = 0xD000000000000010;
    result[27] = 0x80000001002BCE60;
    result[28] = 0xD000000000000010;
    result[29] = 0x80000001002BCE80;
    result[30] = 1886548850;
    result[31] = 0xE400000000000000;
    result[32] = 1903326066;
    result[33] = 0xE400000000000000;
    if (*(v0 + 26))
    {
      v2 = 0;
      v3 = 0;
      v4 = 0xE000000000000000;
      v5 = 0xE000000000000000;
    }

    else
    {
      v4 = 0x80000001002B96C0;
      v2 = 0xD000000000000014;
      v5 = 0xE700000000000000;
      v3 = 0x64695F6C6C6563;
    }

    result[34] = v2;
    result[35] = v4;
    result[36] = v3;
    result[37] = v5;
  }

  return result;
}

_UNKNOWN **sub_10021BA8C()
{
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v0 = qword_100382500;
  if (*(qword_100382500 + 153) == 1)
  {
    if (*(qword_100382500 + 26))
    {
      return &off_10031A8E8;
    }

    else
    {
      return &off_10031A7A8;
    }
  }

  else
  {
    sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
    result = swift_allocObject();
    *(result + 1) = xmmword_1002F2BE0;
    result[4] = 0xD000000000000017;
    result[5] = 0x80000001002B92F0;
    result[6] = 0xD000000000000016;
    result[7] = 0x80000001002B9620;
    result[8] = 0xD000000000000011;
    result[9] = 0x80000001002B9640;
    result[10] = 0xD000000000000011;
    result[11] = 0x80000001002B9660;
    result[12] = 1684955490;
    result[13] = 0xE400000000000000;
    result[14] = 0xD000000000000010;
    result[15] = 0x80000001002B9680;
    result[16] = 0x6963705F6C6C6563;
    result[17] = 0xE800000000000000;
    result[18] = 0x7273725F6C6C6563;
    result[19] = 0xE900000000000070;
    result[20] = 0x7273725F6C6C6563;
    result[21] = 0xE900000000000071;
    result[22] = 7499379;
    result[23] = 0xE300000000000000;
    result[24] = 0x74635F70727372;
    result[25] = 0xE700000000000000;
    result[26] = 0x74635F726E73;
    result[27] = 0xE600000000000000;
    if (*(v0 + 26))
    {
      v2 = 0;
      v3 = 0;
      v4 = 0xE000000000000000;
      v5 = 0xE000000000000000;
    }

    else
    {
      v4 = 0x80000001002B96C0;
      v2 = 0xD000000000000014;
      v5 = 0xE700000000000000;
      v3 = 0x64695F6C6C6563;
    }

    result[28] = v2;
    result[29] = v4;
    result[30] = v3;
    result[31] = v5;
  }

  return result;
}

uint64_t sub_10021BCA4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021BCF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  LOBYTE(v56) = a5;
  object = a1;
  v6 = &unk_10031AA48;
  if ((a1 & 1) == 0)
  {
    v6 = &unk_10031AAA8;
  }

  v7 = *v6;
  v8 = &unk_10031AAB8;
  if (a1)
  {
    v8 = &unk_10031AA58;
  }

  v9 = (v7 & ~(v7 >> 63)) + 1;
  v10 = (v8 + 8);
  while (1)
  {
    if (!v7)
    {

      if (object)
      {
        v17 = sub_10021BA8C();
        v18 = (v17 + 5);
        v9 = -v17[2];
        v19 = -1;
        while (v9 + v19 != -1)
        {
          if (++v19 >= v17[2])
          {
            goto LABEL_75;
          }

          v20 = *(v18 - 1);
          v21 = *v18;
          v22 = String.lowercased()();
          object = v22._object;
          v23 = String.lowercased()();
          if (v22._countAndFlagsBits == v23._countAndFlagsBits && v22._object == v23._object)
          {

LABEL_70:

            object = 18229;
            goto LABEL_26;
          }

          v18 += 2;
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        v37 = sub_10021B808();
        v38 = (v37 + 5);
        v9 = -v37[2];
        v39 = -1;
        while (v9 + v39 != -1)
        {
          if (++v39 >= v37[2])
          {
            goto LABEL_76;
          }

          v40 = *(v38 - 1);
          v41 = *v38;
          v42 = String.lowercased()();
          object = v42._object;
          v43 = String.lowercased()();
          if (v42._countAndFlagsBits == v43._countAndFlagsBits && v42._object == v43._object)
          {

LABEL_72:

            object = 4543564;
            goto LABEL_26;
          }

          v38 += 2;
          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v45)
          {
            goto LABEL_72;
          }
        }
      }

      object = 5521746;

      goto LABEL_26;
    }

    if (!--v9)
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v11 = *(v10 - 1);
    v12 = *v10;
    v13 = String.lowercased()();
    v14 = String.lowercased()();
    if (v13._countAndFlagsBits == v14._countAndFlagsBits && v13._object == v14._object)
    {
      break;
    }

    v10 += 2;
    --v7;
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_25;
    }
  }

LABEL_25:

  object = 5521746;
LABEL_26:
  if ((a4 & 1) == 0)
  {
LABEL_51:
    if ((v56 & 1) == 0)
    {
      return object;
    }

    goto LABEL_55;
  }

  v9 = 0xD000000000000011;
  v58 = 0xD000000000000016;
  v59 = 0x80000001002B95F0;
  if (qword_100375018 != -1)
  {
LABEL_77:
    swift_once();
  }

  v26 = 0;
  v27 = 0x80000001002B96C0;
  if (*(qword_100382500 + 26))
  {
    v28 = 0;
  }

  else
  {
    v28 = v9 + 3;
  }

  if (*(qword_100382500 + 26))
  {
    v27 = 0xE000000000000000;
  }

  v60 = v28;
  v61 = v27;
  v62 = v9;
  v63 = 0x80000001002BCE00;
  v64 = v9 + 2;
  v65 = 0x80000001002BCE20;
  v66 = 0x74635F70637372;
  v67 = 0xE700000000000000;
  v68 = 0x74635F306E6365;
  v69 = 0xE700000000000000;
  while (1)
  {
    v29 = v26 + 16;
    if (v26 == 96)
    {
      swift_arrayDestroy();
      goto LABEL_51;
    }

    v30 = &v57[v26];
    v31 = *(v30 + 4);
    v32 = *(v30 + 5);
    v33 = String.lowercased()();
    v34 = String.lowercased()();
    if (v33._countAndFlagsBits == v34._countAndFlagsBits && v33._object == v34._object)
    {
      break;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v26 = v29;
    if (v36)
    {
      goto LABEL_54;
    }
  }

LABEL_54:

  swift_arrayDestroy();
  object = 5067591;
  if (v56)
  {
LABEL_55:
    v56 = object;
    v9 = sub_10021B6C4();
    v46 = (v9 + 40);
    object = -*(v9 + 16);
    v47 = -1;
    while (1)
    {
      if (object + v47 == -1)
      {

        return v56;
      }

      if (++v47 >= *(v9 + 16))
      {
        goto LABEL_74;
      }

      v48 = *(v46 - 1);
      v49 = *v46;
      v50 = String.lowercased()();
      v51 = String.lowercased()();
      if (v50._countAndFlagsBits == v51._countAndFlagsBits && v50._object == v51._object)
      {
        break;
      }

      v46 += 2;
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v53)
      {
        object = 1398033749;

        goto LABEL_66;
      }
    }

    object = 1398033749;

LABEL_66:
  }

  return object;
}

uint64_t sub_10021C2E0(uint64_t a1)
{
  v2 = type metadata accessor for FTMNetworkInfoDataModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10021C33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMNetworkInfoDataModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021C3A0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10021C3E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10021C448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_10021C528()
{
  v1 = OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal____lazy_storage___tableView;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal____lazy_storage___tableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal____lazy_storage___tableView);
  }

  else
  {
    v4 = sub_10021C58C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10021C58C(uint64_t a1)
{
  v2 = [objc_allocWithZone(UITableView) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() colorNamed:v3];

  [v2 setBackgroundColor:v4];
  type metadata accessor for MultiSelectionModalCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v6 = String._bridgeToObjectiveC()();

  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];

  [v2 setDelegate:a1];
  [v2 setDataSource:a1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

id sub_10021C6F4()
{
  v0 = [objc_allocWithZone(UIButton) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  [v0 setImage:v2 forState:0];
  v3 = [v0 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemFontOfSize:50.0 weight:UIFontWeightBold];
    [v4 setFont:v5];
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() colorNamed:v6];

  [v0 setTintColor:v7];
  sub_1001A551C(&qword_100377C38, &qword_1002F2E90);
  [v0 addTarget:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() action:"didTapDismiss:" forControlEvents:{64, sub_10021C8F4, 0}];
  swift_unknownObjectRelease();
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_10021C8F4@<X0>(id *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v6 = *a1;
  v3 = swift_allocObject();
  *(v3 + 16) = v6;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10021D79C;
  *(v4 + 24) = v3;
  *a2 = sub_10021D80C;
  a2[1] = v4;

  return v6;
}

void sub_10021CA84()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  v3 = sub_10021C528();
  [v2 addSubview:v3];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_dismissButton];
  [v4 addSubview:v6];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() colorNamed:v9];

  [v8 setBackgroundColor:v10];
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002F1540;
  v12 = OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal____lazy_storage___tableView;
  v13 = [*&v0[OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal____lazy_storage___tableView] leftAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v16 leftAnchor];
  v18 = [v13 constraintEqualToSystemSpacingAfterAnchor:v17 multiplier:0.7];

  *(v11 + 32) = v18;
  v19 = [*&v0[v12] rightAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = v20;
  v22 = [v20 safeAreaLayoutGuide];

  v23 = [v22 rightAnchor];
  v24 = [v19 constraintEqualToSystemSpacingAfterAnchor:v23 multiplier:0.7];

  *(v11 + 40) = v24;
  v25 = [*&v0[v12] bottomAnchor];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = v26;
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 bottomAnchor];
  v30 = [v25 constraintEqualToAnchor:v29];

  *(v11 + 48) = v30;
  v31 = [*&v0[v12] topAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = v32;
  v34 = [v32 safeAreaLayoutGuide];

  v35 = [v34 topAnchor];
  v36 = [v31 constraintEqualToAnchor:v35];

  *(v11 + 56) = v36;
  v37 = [v6 topAnchor];
  v38 = [v0 view];
  if (!v38)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = v38;
  v40 = [v38 safeAreaLayoutGuide];

  v41 = [v40 topAnchor];
  v42 = [v37 constraintEqualToAnchor:v41];

  *(v11 + 64) = v42;
  v43 = [v6 rightAnchor];
  v44 = [v0 view];
  if (!v44)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v45 = v44;
  v46 = objc_opt_self();
  v47 = [v45 safeAreaLayoutGuide];

  v48 = [v47 rightAnchor];
  v49 = [v43 constraintEqualToAnchor:v48 constant:-15.0];

  *(v11 + 72) = v49;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v46 activateConstraints:isa];
}

id sub_10021D0EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiChoiceSelectionModal();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10021D284(void *a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [a1 cellForRowAtIndexPath:isa];

  if (v10)
  {
    type metadata accessor for MultiSelectionModalCell();
    if (swift_dynamicCastClass())
    {
      v5 = sub_1001D1570();
      v6 = [v5 text];

      if (v6)
      {
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1002826D0(v7, v9);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

unint64_t sub_10021D4DC(void *a1)
{
  v2 = v1;

  v4 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  type metadata accessor for MultiSelectionModalCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1001D1570();
    result = IndexPath.row.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v11 = *(v2 + OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_tableViewData);
      if (result < *(v11 + 16))
      {
        v12 = v11 + 16 * result;
        v13 = *(v12 + 32);
        v14 = *(v12 + 40);

        v15 = String._bridgeToObjectiveC()();

        [v9 setText:v15];

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = objc_allocWithZone(UITableViewCell);

    return [v16 init];
  }

  return result;
}

uint64_t sub_10021D764()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10021D79C()
{
  v1 = [*(v0 + 16) self];

  return v1;
}

uint64_t sub_10021D7D4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10021D80C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

id sub_10021DAE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10021DB64()
{
  v0 = objc_allocWithZone(type metadata accessor for SPCarrierBundleViewModel());

  return [v0 init];
}

uint64_t sub_10021DB9C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001A551C(&qword_100377DB0, &qword_1002F2F38);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for FTMInternal_4();
  sub_10021F72C(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ScenePhase();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

char *sub_10021DD8C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10021DB64;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = type metadata accessor for FTMInternal_4();
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  sub_1001A551C(&qword_100377DB0, &qword_1002F2F38);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  type metadata accessor for AppDelegate();
  UIApplicationDelegateAdaptor.init(_:)();
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v5 = qword_100382500;
  *(a1 + v2[7]) = qword_100382500;
  v6 = objc_opt_self();
  swift_retain_n();
  result = [v6 sharedInstance];
  if (result)
  {
    v8 = result;
    v9 = objc_allocWithZone(type metadata accessor for PersistanceStore());
    result = sub_10025C2CC(v5, v8);
    *(a1 + v2[8]) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10021DECC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FTMInternal_4();
  v5 = *(a1 + *(v4 + 32));
  v6 = *(a1 + *(v4 + 28));
  type metadata accessor for MainWindowViewModel();
  swift_allocObject();
  v7 = v5;

  v8 = sub_1001D5808(v7, v6);

  type metadata accessor for SPCarrierBundleViewModel();
  sub_10021FE34(&qword_100377D60, type metadata accessor for SPCarrierBundleViewModel);
  v9 = EnvironmentObject.init()();
  v24 = v10;
  v25 = v9;
  sub_1001E1BB4(0, &qword_100377E10, UIPageControl_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [ObjCClassFromMetadata appearance];
  sub_1001E1BB4(0, &qword_100377E18, UIColor_ptr);
  static Color.primary.getter();
  v13 = UIColor.init(_:)();
  [v12 setCurrentPageIndicatorTintColor:v13];

  v14 = [ObjCClassFromMetadata appearance];
  static Color.secondary.getter();
  v15 = UIColor.init(_:)();
  [v14 setPageIndicatorTintColor:v15];

  v16 = *(v8 + 16);
  type metadata accessor for AllMetricsViewModel();
  swift_allocObject();
  v17 = v16;
  v18 = sub_1002327C4(v17);

  v19 = *a1;
  v20 = a1[1];
  v21 = *(a1 + 16);
  v22 = StateObject.wrappedValue.getter();
  result = static ObservableObject.environmentStore.getter();
  *a2 = v25;
  *(a2 + 8) = v24;
  *(a2 + 16) = sub_1001D3A60;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v18;
  *(a2 + 48) = v8;
  *(a2 + 56) = result;
  *(a2 + 64) = v22;
  return result;
}

void sub_10021E104(uint64_t a1)
{
  v3 = type metadata accessor for ScenePhase();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3, v6);
  v9 = (*(v4 + 88))(v8, v3);
  if (v9 == enum case for ScenePhase.background(_:))
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v10 = [objc_opt_self() sharedInstance];
    if (v10)
    {
LABEL_10:
      v11 = v10;
      v12 = String._bridgeToObjectiveC()();
      [v11 removeAWDConfigForAppid:v12];

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      return;
    }

    goto LABEL_30;
  }

  if (v9 == enum case for ScenePhase.inactive(_:))
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v10 = [objc_opt_self() sharedInstance];
    if (v10)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  if (v9 == enum case for ScenePhase.active(_:))
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    if (qword_100375018 != -1)
    {
      swift_once();
    }

    v13 = qword_100382500;
    if (*(qword_100382500 + 24) == 1)
    {
      sub_10020B25C();
    }

    v14 = *v1;
    v15 = v1[1];
    v16 = *(v1 + 16);
    type metadata accessor for SPCarrierBundleViewModel();
    sub_10021FE34(&qword_100377D60, type metadata accessor for SPCarrierBundleViewModel);
    v17 = StateObject.wrappedValue.getter();
    sub_1002224F0();

    v18 = [objc_opt_self() sharedInstance];
    if (!v18)
    {
LABEL_30:
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      return;
    }

    v19 = v18;
    v20 = [objc_opt_self() mainBundle];
    v21 = *(v13 + 176);
    v22 = *(v13 + 184);

    v23 = String._bridgeToObjectiveC()();

    v24 = String._bridgeToObjectiveC()();
    v25 = [v20 pathForResource:v23 ofType:v24];

    if (v25)
    {
      v26 = String._bridgeToObjectiveC()();
      v27 = [v19 addAWDConfigForAppId:v26 andProtofFilePath:v25];

      if (!v27)
      {
LABEL_35:

        return;
      }

      [v19 listen];
      v28 = String._bridgeToObjectiveC()();
      [v19 querySpecificMetric:v28 triggerRef:9999 triggerType:0 triggerID:*(v13 + 192) profileID:0 metricID:0];

      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
    }

    else
    {
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
    }

    os_log(_:dso:log:type:_:)();
    goto LABEL_35;
  }

  if (qword_100375040 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10021F6F4(v29, qword_100382540);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Unknown ScenePhase. Ignoring", v32, 2u);
  }

  (*(v4 + 8))(v8, v3);
}

uint64_t sub_10021E8D0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  v4 = sub_1001A551C(&qword_100377DB8, &qword_1002F2F40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  sub_10021F170(v1, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  sub_10021F1D8(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_1001A551C(&qword_100377DC0, &qword_1002F2F48);
  sub_10021F2AC();
  WindowGroup.init(id:title:lazyContent:)();
  v10 = &v7[*(v4 + 36)];
  sub_10021DB9C(v10);
  sub_10021F170(v1, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  sub_10021F1D8(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v8);
  v12 = (v10 + *(sub_1001A551C(&qword_100377DE8, &qword_1002F2F58) + 36));
  *v12 = sub_10021F544;
  v12[1] = v11;
  sub_10021F5A8();
  static SceneBuilder.buildBlock<A>(_:)();
  return sub_10021F68C(v7);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for FTMInternal_4();
  sub_10021FE34(&qword_100377C40, type metadata accessor for FTMInternal_4);
  static App.main()();
  return 0;
}

uint64_t type metadata accessor for FTMInternal_4()
{
  result = qword_100377D48;
  if (!qword_100377D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10021EBEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1001A551C(&qword_100377CE0, &qword_1002F2EA8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1001A551C(&qword_100377CE8, &qword_1002F2EB0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10021ED20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1001A551C(&qword_100377CE0, &qword_1002F2EA8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_1001A551C(&qword_100377CE8, &qword_1002F2EB0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_10021EE3C()
{
  sub_10021EF6C();
  if (v0 <= 0x3F)
  {
    sub_10021F000(319, &qword_100377D68, 255, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10021F000(319, &unk_100377D70, v1, type metadata accessor for AppDelegate, &type metadata accessor for UIApplicationDelegateAdaptor);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HardwareManager();
        if (v4 <= 0x3F)
        {
          type metadata accessor for PersistanceStore();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10021EF6C()
{
  if (!qword_100377D58)
  {
    type metadata accessor for SPCarrierBundleViewModel();
    sub_10021FE34(&qword_100377D60, type metadata accessor for SPCarrierBundleViewModel);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100377D58);
    }
  }
}

void sub_10021F000(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10021F0A4(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t sub_10021F170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMInternal_4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021F1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMInternal_4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021F23C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FTMInternal_4() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_10021DECC(v4, a1);
}

unint64_t sub_10021F2AC()
{
  result = qword_100377DC8;
  if (!qword_100377DC8)
  {
    sub_1001A55C8(&qword_100377DC0, &qword_1002F2F48);
    sub_10021F364();
    sub_1001AD0C8(&qword_100377DD8, &qword_100377DE0, &qword_1002F2F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377DC8);
  }

  return result;
}

unint64_t sub_10021F364()
{
  result = qword_100377DD0;
  if (!qword_100377DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377DD0);
  }

  return result;
}

uint64_t sub_10021F3B8()
{
  v1 = type metadata accessor for FTMInternal_4();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1001D4A08(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v6 = v1[5];
  sub_1001A551C(&qword_100377DB0, &qword_1002F2F38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ScenePhase();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v1[6];
  v10 = sub_1001A551C(&qword_100377CE8, &qword_1002F2EB0);
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = *(v5 + v1[7]);

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

void sub_10021F544(uint64_t a1)
{
  v3 = *(type metadata accessor for FTMInternal_4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_10021E104(a1);
}

unint64_t sub_10021F5A8()
{
  result = qword_100377DF0;
  if (!qword_100377DF0)
  {
    sub_1001A55C8(&qword_100377DB8, &qword_1002F2F40);
    sub_1001AD0C8(&qword_100377DF8, &qword_100377E00, &unk_1002F2F60);
    sub_1001AD0C8(&qword_100377E08, &qword_100377DE8, &qword_1002F2F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377DF0);
  }

  return result;
}

uint64_t sub_10021F68C(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_100377DB8, &qword_1002F2F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10021F6F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10021F72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100377DB0, &qword_1002F2F38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021F79C()
{
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  sub_1001FD260(_swiftEmptyArrayStorage);
  v0 = String._bridgeToObjectiveC()();
  sub_1001E1BB4(0, &qword_100376D68, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();

  return 1;
}

uint64_t sub_10021FE34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10021FE84(double a1, double a2, double a3, double a4)
{
  v33.receiver = v4;
  v33.super_class = type metadata accessor for TopHeaderCustomFlowLayout();
  v9 = objc_msgSendSuper2(&v33, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (v9)
  {
    v10 = v9;
    sub_100220304();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 frame];
    Width = CGRectGetWidth(v34);
    if ([v13 presentationSectionIndexForDataSourceSectionIndex:0] && v11)
    {
      v15 = v11 & 0xFFFFFFFFFFFFFF8;
      v32 = v13;
      if (v11 >> 62)
      {
        goto LABEL_36;
      }

      v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

      if (v16)
      {
        v17 = 0;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *(v15 + 16))
            {
              goto LABEL_35;
            }

            v18 = *(v11 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v16 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_9;
          }

          v21 = [v18 representedElementKind];
          if (!v21)
          {
            break;
          }

          v22 = v15;
          v23 = v21;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!v26)
          {
            v15 = v22;
            goto LABEL_12;
          }

          if (v24 == v27 && v26 == v28)
          {

            v15 = v22;
LABEL_28:
            [v19 frame];
            [v19 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v35)}];
            goto LABEL_13;
          }

          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v15 = v22;
          if (v30)
          {
            goto LABEL_28;
          }

LABEL_13:

          ++v17;
          if (v20 == v16)
          {
            goto LABEL_32;
          }
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_12:

        goto LABEL_13;
      }

LABEL_32:
    }

    else
    {
    }
  }

  else
  {

    return 0;
  }

  return v11;
}

id sub_1002202AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TopHeaderCustomFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100220304()
{
  result = qword_100377E50;
  if (!qword_100377E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100377E50);
  }

  return result;
}

uint64_t sub_100220350()
{
  v0 = sub_1001FCF0C(&off_10031A380);
  sub_1001A551C(&qword_100377E58, &qword_1002F2FE8);
  result = swift_arrayDestroy();
  qword_100382510 = v0;
  return result;
}

uint64_t MetricGroupV2.tech.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MetricGroupV2.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MetricGroupV2.className.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t MetricGroupV2.deviceType.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t MetricGroupV2.deviceType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

__n128 sub_1002204D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002204FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100220544(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002205A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v6._countAndFlagsBits = 58;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  v7._countAndFlagsBits = a3;
  v7._object = a4;
  String.append(_:)(v7);

  v8 = a1;
  if (qword_100375028 != -1)
  {
    swift_once();
    v8 = a1;
  }

  v9 = qword_100382510;
  if (!*(qword_100382510 + 16))
  {

    return 0;
  }

  v10 = sub_1001F66B8(v8, a2);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = (*(v9 + 56) + 16 * v10);
  if (*v13 == a3 && v13[1] == a4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

__n128 sub_1002206F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100220704(uint64_t a1, int a2)
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

uint64_t sub_10022074C(uint64_t result, int a2, int a3)
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

uint64_t sub_1002207C0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = sub_1001A551C(&qword_100377E78, &unk_1002F30A0);
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  __chkstk_darwin(v3);
  v59 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v52 - v7;
  v54 = sub_1001A551C(&qword_1003755A0, &qword_1002EF750);
  v55 = *(v54 - 8);
  v8 = *(v55 + 64);
  __chkstk_darwin(v54);
  v53 = &v52 - v9;
  v10 = sub_1001A551C(&qword_100377E80, &unk_1002F30B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v64 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = &v52 - v14;
  v69 = *a1;
  v70 = v69;
  sub_1001A56A0();

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Font.subheadline.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;

  sub_1001ACFEC(v15, v17, v19 & 1);

  static Color.secondary.getter();
  v57 = Text.foregroundColor(_:)();
  v62 = v25;
  v63 = v26;
  v56 = v27;

  v28 = v22;
  v29 = v54;
  sub_1001ACFEC(v20, v28, v24 & 1);

  v69 = *(a1 + 24);
  v68[0] = *(a1 + 24);
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.getter();
  v30 = v55;
  v31 = 1;
  if (v67 == 1)
  {
    v32 = v53;
    ProgressView<>.init<>()();
    (*(v30 + 32))(v66, v32, v29);
    v31 = 0;
  }

  v33 = v66;
  (*(v30 + 56))(v66, v31, 1, v29);
  v34 = *(a1 + 2);
  v35 = swift_allocObject();
  v36 = a1[1];
  *(v35 + 16) = *a1;
  *(v35 + 32) = v36;
  *(v35 + 48) = *(a1 + 4);
  __chkstk_darwin(v35);
  *(&v52 - 2) = a1;
  sub_1001ACE9C(&v70, v68);

  sub_1001AC934(&v69, v68, &qword_100375298, &qword_1002EF0A0);
  sub_1001A551C(&qword_100377E88, &qword_1002F30C0);
  sub_100221D60();
  v37 = v65;
  Button.init(action:label:)();
  v38 = v64;
  sub_1001AC934(v33, v64, &qword_100377E80, &unk_1002F30B0);
  v39 = v59;
  v40 = v60;
  v41 = *(v60 + 16);
  v42 = v37;
  v43 = v61;
  v41(v59, v42, v61);
  v44 = v57;
  v45 = v58;
  v46 = v62;
  *v58 = v57;
  v45[1] = v46;
  v47 = v56 & 1;
  *(v45 + 16) = v56 & 1;
  v45[3] = v63;
  v45[4] = 0;
  *(v45 + 40) = 1;
  v48 = sub_1001A551C(&qword_100377EA8, &qword_1002F30D0);
  sub_1001AC934(v38, v45 + *(v48 + 64), &qword_100377E80, &unk_1002F30B0);
  v41(v45 + *(v48 + 80), v39, v43);
  v49 = v62;
  sub_1001A5174(v44, v62, v47);
  v50 = *(v40 + 8);

  v50(v65, v43);
  sub_1001AC99C(v66, &qword_100377E80, &unk_1002F30B0);
  v50(v39, v43);
  sub_1001AC99C(v64, &qword_100377E80, &unk_1002F30B0);
  sub_1001ACFEC(v44, v49, v47);
}

void sub_100220D78(__int128 *a1)
{
  v2 = sub_1001A551C(&qword_100377EB0, &unk_1002F3108);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12[-v4];
  v15 = *(a1 + 24);
  v16 = v15;
  v17 = *(&v15 + 1);
  sub_1001AC934(&v17, &v13, &qword_1003752E0, &qword_1002EF150);
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.getter();
  v13 = v16;
  v12[15] = (v14 & 1) == 0;
  State.wrappedValue.setter();
  sub_1001AC99C(&v16, &qword_100375298, &qword_1002EF0A0);
  v15 = v16;
  State.wrappedValue.getter();
  if (v13 == 1)
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v15 = *a1;
    v7 = *(a1 + 2);
    type metadata accessor for MainActor();
    sub_1001AC934(&v16, &v13, &qword_100375298, &qword_1002EF0A0);
    sub_1001ACE9C(&v15, &v13);

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = &protocol witness table for MainActor;
    v10 = a1[1];
    *(v9 + 32) = *a1;
    *(v9 + 48) = v10;
    *(v9 + 64) = *(a1 + 4);
    sub_100221998(0, 0, v5, &unk_1002F3120, v9);
  }

  else
  {
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v11 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_urlSessionObj);
    sub_100269AC0();
  }
}

uint64_t sub_100221000@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(a1 + 24);
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.getter();
  v3 = Image.init(systemName:)();
  v4 = static Color.blue.getter();
  result = swift_getKeyPath();
  *a2 = v3;
  a2[1] = result;
  a2[2] = v4;
  return result;
}

uint64_t sub_1002210B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v4[26] = v8;
  v9 = *(v8 - 8);
  v4[27] = v9;
  v10 = *(v9 + 64) + 15;
  v4[28] = swift_task_alloc();
  v11 = type metadata accessor for DispatchTime();
  v4[29] = v11;
  v12 = *(v11 - 8);
  v4[30] = v12;
  v13 = *(v12 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[33] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[34] = v15;
  v4[35] = v14;

  return _swift_task_switch(sub_10022126C, v15, v14);
}

uint64_t sub_10022126C()
{
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_urlSessionObj);
  v2 = *(v0 + 176);
  *(v0 + 288) = v1;
  *(v0 + 88) = *(v2 + 24);
  *(v0 + 120) = *(v2 + 24);
  v1;
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.projectedValue.getter();
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  *(v0 + 296) = v3;
  *(v0 + 304) = v4;
  v5 = *(v0 + 80);
  v6 = swift_task_alloc();
  *(v0 + 312) = v6;
  *v6 = v0;
  v6[1] = sub_1002213A4;

  return sub_100268B94(v3, v4, v5);
}

uint64_t sub_1002213A4()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v11 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = v2[34];
    v5 = v2[35];
    v6 = sub_100221804;
  }

  else
  {
    v8 = v2[37];
    v7 = v2[38];
    v9 = v2[36];

    v4 = v2[34];
    v5 = v2[35];
    v6 = sub_1002214D8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1002214D8()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[22];

  sub_1002181D0();
  *(v0 + 13) = *v5;
  v26 = *(v5 + 16);
  v24 = (v3 + 8);
  v25 = (v4 + 8);
  v6 = 4;
  v7 = (v2 + 8);
  do
  {
    v8 = v0[31];
    v27 = v0[32];
    v9 = v0[28];
    v10 = v0[29];
    v31 = v0[26];
    v28 = v0[25];
    v11 = v0[22];
    v12 = v0[23];
    v29 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v30 = *v7;
    (*v7)(v8, v10);
    v13 = swift_allocObject();
    v14 = *(v11 + 32);
    v15 = *(v11 + 16);
    *(v13 + 16) = *v11;
    *(v13 + 32) = v15;
    *(v13 + 48) = v14;
    v0[6] = sub_100222010;
    v0[7] = v13;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10020C96C;
    v0[5] = &unk_10031F638;
    v16 = _Block_copy(v0 + 2);
    sub_1001ACE9C((v0 + 13), (v0 + 17));

    sub_1001AC934((v0 + 11), (v0 + 19), &qword_100375298, &qword_1002EF0A0);
    static DispatchQoS.unspecified.getter();
    v0[21] = _swiftEmptyArrayStorage;
    sub_100222030();
    sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
    sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v16);

    (*v25)(v28, v12);
    (*v24)(v9, v31);
    v30(v27, v10);
    v17 = v0[7];

    v6 += 4;
  }

  while (v6 != 16);
  v19 = v0[31];
  v18 = v0[32];
  v20 = v0[28];
  v21 = v0[25];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100221804()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v7 = v0[28];
  v8 = v0[25];

  v9 = v0[1];
  v10 = v0[40];

  return v9();
}

void sub_1002218C8(uint64_t a1)
{
  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002EED40;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD00000000000002CLL;
  *(v2 + 40) = 0x80000001002BD590;
  print(_:separator:terminator:)();

  v3 = *(*(a1 + 16) + 16);
  sub_10025D620(0);
}

uint64_t sub_100221998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001A551C(&qword_100377EB0, &unk_1002F3108);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1001AC934(a3, v24 - v10, &qword_100377EB0, &unk_1002F3108);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1001AC99C(v11, &qword_100377EB0, &unk_1002F3108);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1001AC99C(a3, &qword_100377EB0, &unk_1002F3108);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1001AC99C(a3, &qword_100377EB0, &unk_1002F3108);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

double sub_100221C44@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v3;
  v19 = *(v1 + 32);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_1001A551C(&qword_100377E60, &qword_1002F3088);
  sub_1002207C0(v18, (a1 + *(v4 + 44)));
  v5 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a1 + *(sub_1001A551C(&qword_100377E68, &qword_1002F3090) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = static Edge.Set.horizontal.getter();
  v16 = a1 + *(sub_1001A551C(&qword_100377E70, &qword_1002F3098) + 36);
  *v16 = v15;
  result = 0.0;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 1;
  return result;
}

unint64_t sub_100221D60()
{
  result = qword_100377E90;
  if (!qword_100377E90)
  {
    sub_1001A55C8(&qword_100377E88, &qword_1002F30C0);
    sub_1001AD0C8(&qword_100377E98, &qword_100377EA0, &qword_1002F30C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377E90);
  }

  return result;
}

uint64_t sub_100221E18@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100221E44@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100221E70(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_100221E9C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_100221EC8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100221F18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001DD5F4;

  return sub_1002210B4(a1, v4, v5, v1 + 32);
}

uint64_t sub_100221FC8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100222018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100222030()
{
  result = qword_1003784A0;
  if (!qword_1003784A0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003784A0);
  }

  return result;
}

unint64_t sub_10022208C()
{
  result = qword_100377EB8;
  if (!qword_100377EB8)
  {
    sub_1001A55C8(&qword_100377E70, &qword_1002F3098);
    sub_100222118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377EB8);
  }

  return result;
}

unint64_t sub_100222118()
{
  result = qword_100377EC0;
  if (!qword_100377EC0)
  {
    sub_1001A55C8(&qword_100377E68, &qword_1002F3090);
    sub_1001AD0C8(&qword_100377EC8, &qword_100377ED0, &qword_1002F3128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377EC0);
  }

  return result;
}

void sub_1002221D4()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RootViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100382500 + 32) == 1684099177 && *(qword_100382500 + 40) == 0xE400000000000000;
  if (!v1 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      v4 = String._bridgeToObjectiveC()();
      v5 = [objc_opt_self() colorNamed:v4];

      [v3 setBackgroundColor:v5];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100222470()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002224F0()
{
  v1 = *&v0[OBJC_IVAR____TtC11FTMInternal24SPCarrierBundleViewModel_service];
  [v1 isDualSimON];
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  static Published.subscript.setter();
  [v1 isSlicingSetup];
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
  v4 = [v1 isLLPHSApplicationEnabled];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v33) = v4;
  v5 = v3;
  static Published.subscript.setter();
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v6 = qword_100382500;
  if (*(qword_100382500 + 24) == 1)
  {
    v7 = [v1 getCarrierBundleIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v10 = *(v6 + 136);
    *(v6 + 136) = v9;

    v11 = [v1 getCarrierBundleVersion];
    if (v11)
    {
      v12 = v11;
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v14 = *(v6 + 128);
    *(v6 + 128) = v13;
  }

  if (qword_100375048 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10021F6F4(v15, qword_100382558);
  v16 = v5;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32)
    {
      v21 = 0x64656C62616E45;
    }

    else
    {
      v21 = 0x64656C6261736944;
    }

    if (v32)
    {
      v22 = 0xE700000000000000;
    }

    else
    {
      v22 = 0xE800000000000000;
    }

    v23 = sub_100223114(v21, v22, &v33);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "DSDS state: %s", v19, 0xCu);
    sub_1001A5654(v20);
  }

  v24 = v16;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v27 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32)
    {
      v29 = 0x64656C62616E45;
    }

    else
    {
      v29 = 0x64656C6261736944;
    }

    if (v32)
    {
      v30 = 0xE700000000000000;
    }

    else
    {
      v30 = 0xE800000000000000;
    }

    v31 = sub_100223114(v29, v30, &v33);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "NRSlicing state: %s", v27, 0xCu);
    sub_1001A5654(v28);
  }
}

uint64_t sub_1002229EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_100222AA8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1001A551C(&qword_100376320, &qword_1002F4310);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC11FTMInternal24SPCarrierBundleViewModel_service;
  *&v0[v7] = [objc_allocWithZone(SPCarrierBundleAdapter) init];
  v8 = OBJC_IVAR____TtC11FTMInternal24SPCarrierBundleViewModel__dualSim;
  v18 = 0;
  Published.init(initialValue:)();
  v9 = *(v3 + 32);
  v9(&v0[v8], v6, v2);
  v10 = OBJC_IVAR____TtC11FTMInternal24SPCarrierBundleViewModel__slicingSetup;
  v18 = 0;
  Published.init(initialValue:)();
  v9(&v0[v10], v6, v2);
  v11 = OBJC_IVAR____TtC11FTMInternal24SPCarrierBundleViewModel__llphsTestApp;
  v18 = 0;
  Published.init(initialValue:)();
  v9(&v0[v11], v6, v2);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v17, "init");
  v13 = *&v12[OBJC_IVAR____TtC11FTMInternal24SPCarrierBundleViewModel_service];
  v14 = v12;
  [v13 setDelegate:v14];
  sub_1002224F0();

  return v14;
}

uint64_t type metadata accessor for SPCarrierBundleViewModel()
{
  result = qword_100377F48;
  if (!qword_100377F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100222DE0()
{
  sub_1001CCEDC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100222E84()
{
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10021F6F4(v0, qword_100382528);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "delegate callback received", v3, 2u);
  }

  sub_1002224F0();
}

uint64_t sub_100222FB8(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_100223114(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1002231E0(v11, 0, 0, 1, a1, a2);
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
    sub_1001A773C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1001A5654(v11);
  return v7;
}

unint64_t sub_1002231E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1002232EC(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_1002232EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100223338(a1, a2);
  sub_100223468(&off_100319ED8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100223338(uint64_t a1, unint64_t a2)
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

  v6 = sub_1001A5A04(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1001A5A04(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100223468(uint64_t result)
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

  result = sub_100223554(result, v12, 1, v3);
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

char *sub_100223554(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377290, &qword_1002F2470);
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

void sub_100223648()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    v2 = [objc_opt_self() processInfo];
    v1 = [v2 processName];
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_100382518 = v3;
  unk_100382520 = v5;
}

uint64_t sub_100223740(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100223820(v3, a2);
  sub_10021F6F4(v3, a2);
  if (qword_100375030 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100223820(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100223884()
{
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  result = *(qword_100382500 + 32);
  v1 = result == 1684099177 && *(qword_100382500 + 40) == 0xE400000000000000;
  if (v1 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v2 = 16.0, (result & 1) != 0))
  {
    v2 = 20.0;
  }

  qword_100382570 = *&v2;
  return result;
}

uint64_t sub_100223914()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  String.lowercased()();
  sub_1001A56A0();
  v4 = StringProtocol.contains<A>(_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *(v1 + 64);
  v19 = *(v1 + 72);
  v5 = StringProtocol.components<A>(separatedBy:)();
  if (!v5[2])
  {

LABEL_5:
    v10 = *(v1 + 64);
    v11 = *(v1 + 72);
    v12 = objc_opt_self();

    v13 = [v12 mainBundle];
    v20._object = v11;
    v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v14.value._object = 0xEB00000000656C62;
    v15._countAndFlagsBits = v10;
    v15._object = v11;
    v16._countAndFlagsBits = v10;
    v16._object = v11;
    v20._countAndFlagsBits = v10;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v20)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v6 = v5[4];
  v7 = v5[5];

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  return 0x20646E6142;
}

void *sub_1002243A0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  sub_1001C2EE8(v0 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp);
  return v0;
}

uint64_t sub_100224408()
{
  sub_1002243A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FTMAllMetricsModel()
{
  result = qword_100378090;
  if (!qword_100378090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002244B4()
{
  sub_1001C1F1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100224580@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FTMAllMetricsModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002245C0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

_BYTE *sub_1002245D0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

BOOL sub_10022464C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_100224744(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 4543564;
      }

      if (a1 != 1)
      {
        return dispatch thunk of CustomStringConvertible.description.getter();
      }

      return 0x41534E204735;
    }

    if (a1 == 2)
    {
      return 16723;
    }

    return 0x41534E2B4153;
  }

  if (a1 <= 5)
  {
    return 0x41534E204735;
  }

  if (a1 == 6 || a1 == 7)
  {
    return 0x41534E2B4153;
  }

  return dispatch thunk of CustomStringConvertible.description.getter();
}

_BYTE *sub_100224828@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

char *sub_1002248CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377110, &qword_1002F22D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1002249D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100378358, &qword_1002F33E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100224AFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100224C0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100378320, &qword_1002F33B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100224D30(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
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

char *sub_100224E64(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377128, &qword_1002F22E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[224 * v8])
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100224F8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100377278, &qword_1002F2458);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002250D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100378328, &qword_1002F33B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100225204(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_1003771A8, &qword_1002F2350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100225320(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001A551C(&qword_1003771E0, &qword_1002F2388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A551C(&qword_1003771E8, &qword_1002F2390);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100225470(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001A551C(&qword_100377130, &qword_1002F22F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002255A4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001A551C(&qword_100378338, &qword_1002F33C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A551C(&qword_1003771F8, &qword_1002F23A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100225764(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1001A551C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

char *sub_100225940(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A551C(&qword_100378330, &qword_1002F33C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_100225A48(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100225ACC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1001A551C(&qword_100377128, &qword_1002F22E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 6) + (v7 >> 63));
  return result;
}

void *sub_100225B64(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1001A551C(&qword_100377298, &unk_1002F2478);
  v4 = *(sub_1001A551C(&qword_1003772A0, &qword_1002F11B0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100225C6C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_100225D18(uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *a2;

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  if (v6)
  {
    while (1)
    {
LABEL_10:
      v13 = __clz(__rbit64(v6)) | (v10 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      result = sub_1001A773C(*(a1 + 56) + 32 * v13, v27);
      v26[0] = v16;
      v26[1] = v15;
      if (!v8)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v17)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_18;
      }

      v23 = 0u;
      v24 = 0u;
LABEL_19:
      v6 &= v6 - 1;
      sub_1001AC99C(v26, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v24 + 1))
      {
        sub_100201570(&v23, v25);
        sub_100201570(v25, &v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100224AFC(0, *(v11 + 2) + 1, 1, v11);
        }

        v21 = *(v11 + 2);
        v20 = *(v11 + 3);
        if (v21 >= v20 >> 1)
        {
          v11 = sub_100224AFC((v20 > 1), v21 + 1, 1, v11);
        }

        *(v11 + 2) = v21 + 1;
        result = sub_100201570(&v23, &v11[32 * v21 + 32]);
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_1001AC99C(&v23, &qword_100375D68, &unk_1002F2370);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v27, &v23);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v12 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  if (*(v11 + 2))
  {
    sub_1001A773C((v11 + 32), v26);

    if (swift_dynamicCast())
    {
      v22 = *&v25[0];
      goto LABEL_31;
    }
  }

  else
  {
  }

  v22 = -1;
LABEL_31:
  if (v22 == -1)
  {
    return 0;
  }

  else
  {
    return v22;
  }
}

uint64_t sub_100225FE8(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = kCTCellMonitorDeploymentType;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  if (v5)
  {
    while (1)
    {
LABEL_10:
      v12 = __clz(__rbit64(v5)) | (v9 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      result = sub_1001A773C(*(a1 + 56) + 32 * v12, v31);
      v30[0] = v15;
      v30[1] = v14;
      if (!v7)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return result;
      }

      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v16)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_18;
      }

      v27 = 0u;
      v28 = 0u;
LABEL_19:
      v5 &= v5 - 1;
      sub_1001AC99C(v30, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v28 + 1))
      {
        sub_100201570(&v27, v29);
        sub_100201570(v29, &v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100224AFC(0, *(v10 + 2) + 1, 1, v10);
        }

        v20 = *(v10 + 2);
        v19 = *(v10 + 3);
        if (v20 >= v19 >> 1)
        {
          v10 = sub_100224AFC((v19 > 1), v20 + 1, 1, v10);
        }

        *(v10 + 2) = v20 + 1;
        result = sub_100201570(&v27, &v10[32 * v20 + 32]);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_1001AC99C(&v27, &qword_100375D68, &unk_1002F2370);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v31, &v27);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  if (*(v10 + 2))
  {
    sub_1001A773C((v10 + 32), v32);

    if (swift_dynamicCast())
    {
      result = v30[0];
      if (v30[0] != -1)
      {
        return result;
      }
    }
  }

  else
  {
  }

  v22 = sub_100226320(a1, &kCTCellMonitorCellRadioAccessTechnology);
  result = kCTCellMonitorRadioAccessTechnologyNR;
  if (!kCTCellMonitorRadioAccessTechnologyNR)
  {
    goto LABEL_43;
  }

  v23 = v21;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      return -1;
    }
  }

  return 2;
}

uint64_t sub_100226320(uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *a2;

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  if (v6)
  {
    while (1)
    {
LABEL_10:
      v13 = __clz(__rbit64(v6)) | (v10 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      result = sub_1001A773C(*(a1 + 56) + 32 * v13, v26);
      v25[0] = v16;
      v25[1] = v15;
      if (!v8)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v17)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_18;
      }

      v22 = 0u;
      v23 = 0u;
LABEL_19:
      v6 &= v6 - 1;
      sub_1001AC99C(v25, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v23 + 1))
      {
        sub_100201570(&v22, v24);
        sub_100201570(v24, &v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100224AFC(0, *(v11 + 2) + 1, 1, v11);
        }

        v21 = *(v11 + 2);
        v20 = *(v11 + 3);
        if (v21 >= v20 >> 1)
        {
          v11 = sub_100224AFC((v20 > 1), v21 + 1, 1, v11);
        }

        *(v11 + 2) = v21 + 1;
        result = sub_100201570(&v22, &v11[32 * v21 + 32]);
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_1001AC99C(&v22, &qword_100375D68, &unk_1002F2370);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v26, &v22);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v12 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  if (*(v11 + 2))
  {
    sub_1001A773C((v11 + 32), v27);

    if (swift_dynamicCast())
    {
      return v25[0];
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1002265B8(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = kCTCellMonitorNeighborType;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  if (v5)
  {
    while (1)
    {
LABEL_10:
      v12 = __clz(__rbit64(v5)) | (v9 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      result = sub_1001A773C(*(a1 + 56) + 32 * v12, v25);
      v24[0] = v15;
      v24[1] = v14;
      if (!v7)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v16)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_18;
      }

      v21 = 0u;
      v22 = 0u;
LABEL_19:
      v5 &= v5 - 1;
      sub_1001AC99C(v24, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v22 + 1))
      {
        sub_100201570(&v21, v23);
        sub_100201570(v23, &v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100224AFC(0, *(v10 + 2) + 1, 1, v10);
        }

        v20 = *(v10 + 2);
        v19 = *(v10 + 3);
        if (v20 >= v19 >> 1)
        {
          v10 = sub_100224AFC((v19 > 1), v20 + 1, 1, v10);
        }

        *(v10 + 2) = v20 + 1;
        result = sub_100201570(&v21, &v10[32 * v20 + 32]);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_1001AC99C(&v21, &qword_100375D68, &unk_1002F2370);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v25, &v21);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  if (*(v10 + 2))
  {
    sub_1001A773C((v10 + 32), v24);

    if (swift_dynamicCast())
    {
      return *&v23[0];
    }
  }

  else
  {
  }

  return 4;
}

uint64_t sub_100226854(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = kCTCellMonitorBandwidth;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  if (v5)
  {
    while (1)
    {
LABEL_10:
      v12 = __clz(__rbit64(v5)) | (v9 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      result = sub_1001A773C(*(a1 + 56) + 32 * v12, v26);
      v25[0] = v15;
      v25[1] = v14;
      if (!v7)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v16)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_18;
      }

      v22 = 0u;
      v23 = 0u;
LABEL_19:
      v5 &= v5 - 1;
      sub_1001AC99C(v25, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v23 + 1))
      {
        sub_100201570(&v22, v24);
        sub_100201570(v24, &v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100224AFC(0, *(v10 + 2) + 1, 1, v10);
        }

        v20 = *(v10 + 2);
        v19 = *(v10 + 3);
        if (v20 >= v19 >> 1)
        {
          v10 = sub_100224AFC((v19 > 1), v20 + 1, 1, v10);
        }

        *(v10 + 2) = v20 + 1;
        result = sub_100201570(&v22, &v10[32 * v20 + 32]);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_1001AC99C(&v22, &qword_100375D68, &unk_1002F2370);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v26, &v22);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  if (*(v10 + 2))
  {
    sub_1001A773C((v10 + 32), v25);

    if (swift_dynamicCast())
    {
      v21 = *v24;
      goto LABEL_31;
    }
  }

  else
  {
  }

  v21 = -1.0;
LABEL_31:
  if (v21 == -1.0)
  {
    return 0;
  }

  else
  {
    return *&v21;
  }
}

uint64_t sub_100226B28(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = kCTCellMonitorRSRP;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  if (v5)
  {
    while (1)
    {
LABEL_10:
      v12 = __clz(__rbit64(v5)) | (v9 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      result = sub_1001A773C(*(a1 + 56) + 32 * v12, v26);
      v25[0] = v15;
      v25[1] = v14;
      if (!v7)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v16)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_18;
      }

      v22 = 0u;
      v23 = 0u;
LABEL_19:
      v5 &= v5 - 1;
      sub_1001AC99C(v25, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v23 + 1))
      {
        sub_100201570(&v22, v24);
        sub_100201570(v24, &v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100224AFC(0, *(v10 + 2) + 1, 1, v10);
        }

        v20 = *(v10 + 2);
        v19 = *(v10 + 3);
        if (v20 >= v19 >> 1)
        {
          v10 = sub_100224AFC((v19 > 1), v20 + 1, 1, v10);
        }

        *(v10 + 2) = v20 + 1;
        result = sub_100201570(&v22, &v10[32 * v20 + 32]);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_1001AC99C(&v22, &qword_100375D68, &unk_1002F2370);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v26, &v22);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  if (*(v10 + 2))
  {
    sub_1001A773C((v10 + 32), v25);

    if (swift_dynamicCast())
    {
      v21 = *&v24[0];
      goto LABEL_31;
    }
  }

  else
  {
  }

  v21 = -1;
LABEL_31:
  if ((v21 + 35) >= 0xFFFFFFFFFFFFFF8ELL)
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100226DD4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = kCTCellMonitorRSRQ;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  if (v5)
  {
    while (1)
    {
LABEL_10:
      v12 = __clz(__rbit64(v5)) | (v9 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      result = sub_1001A773C(*(a1 + 56) + 32 * v12, v26);
      v25[0] = v15;
      v25[1] = v14;
      if (!v7)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v16)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_18;
      }

      v22 = 0u;
      v23 = 0u;
LABEL_19:
      v5 &= v5 - 1;
      sub_1001AC99C(v25, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v23 + 1))
      {
        sub_100201570(&v22, v24);
        sub_100201570(v24, &v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100224AFC(0, *(v10 + 2) + 1, 1, v10);
        }

        v20 = *(v10 + 2);
        v19 = *(v10 + 3);
        if (v20 >= v19 >> 1)
        {
          v10 = sub_100224AFC((v19 > 1), v20 + 1, 1, v10);
        }

        *(v10 + 2) = v20 + 1;
        result = sub_100201570(&v22, &v10[32 * v20 + 32]);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_1001AC99C(&v22, &qword_100375D68, &unk_1002F2370);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v26, &v22);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  if (*(v10 + 2))
  {
    sub_1001A773C((v10 + 32), v25);

    if (swift_dynamicCast())
    {
      v21 = *&v24[0];
      goto LABEL_31;
    }
  }

  else
  {
  }

  v21 = -1;
LABEL_31:
  if (v21 >= 0xFFFFFFFFFFFFFFE8)
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100227088(uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *a2;

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  if (v6)
  {
    while (1)
    {
LABEL_10:
      v13 = __clz(__rbit64(v6)) | (v10 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      result = sub_1001A773C(*(a1 + 56) + 32 * v13, v26);
      v25[0] = v16;
      v25[1] = v15;
      if (!v8)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v17)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_18;
      }

      v22 = 0u;
      v23 = 0u;
LABEL_19:
      v6 &= v6 - 1;
      sub_1001AC99C(v25, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v23 + 1))
      {
        sub_100201570(&v22, v24);
        sub_100201570(v24, &v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100224AFC(0, *(v11 + 2) + 1, 1, v11);
        }

        v21 = *(v11 + 2);
        v20 = *(v11 + 3);
        if (v21 >= v20 >> 1)
        {
          v11 = sub_100224AFC((v20 > 1), v21 + 1, 1, v11);
        }

        *(v11 + 2) = v21 + 1;
        result = sub_100201570(&v22, &v11[32 * v21 + 32]);
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_1001AC99C(&v22, &qword_100375D68, &unk_1002F2370);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v26, &v22);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v12 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  if (*(v11 + 2))
  {
    sub_1001A773C((v11 + 32), v25);

    if (swift_dynamicCast())
    {
      return *&v24[0];
    }
  }

  else
  {
  }

  return 0;
}

double sub_100227368@<D0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v22 = 1;
  a1(&v12);
  v29 = v18;
  v30 = v19;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v23 = v12;
  v24 = v13;
  v32[6] = v18;
  v32[7] = v19;
  v32[2] = v14;
  v32[3] = v15;
  v32[4] = v16;
  v32[5] = v17;
  v31 = v20;
  v33 = v20;
  v32[0] = v12;
  v32[1] = v13;
  sub_1001AC934(&v23, &v11, &qword_1003769F0, &qword_1002F1A88);
  sub_1001AC99C(v32, &qword_1003769F0, &qword_1002F1A88);
  *&v21[103] = v29;
  *&v21[87] = v28;
  *&v21[39] = v25;
  *&v21[23] = v24;
  *&v21[119] = v30;
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[7] = v23;
  v5 = *&v21[64];
  *(a2 + 97) = *&v21[80];
  v6 = *&v21[112];
  *(a2 + 113) = *&v21[96];
  *(a2 + 129) = v6;
  v7 = *v21;
  *(a2 + 33) = *&v21[16];
  result = *&v21[32];
  v9 = *&v21[48];
  *(a2 + 49) = *&v21[32];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v21[135] = v31;
  v10 = v22;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 145) = *&v21[128];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_1002274C8@<X0>(uint64_t a1@<X8>)
{
  Image.init(systemName:)();
  v2 = Text.init(_:)();
  v4 = v3;
  v6 = v5;
  static Color.blue.getter();
  v7 = Text.foregroundColor(_:)();
  v9 = v8;
  v11 = v10;

  sub_1001ACFEC(v2, v4, v6 & 1);

  static Font.headline.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  LOBYTE(v4) = v15;

  sub_1001ACFEC(v7, v9, v11 & 1);

  v16 = Text.bold()();
  v37 = v17;
  v38 = v16;
  LOBYTE(v7) = v18;
  v41 = v19;
  sub_1001ACFEC(v12, v14, v4 & 1);

  v39 = v7 & 1;
  v40 = static Edge.Set.vertical.getter();
  LOBYTE(v51[0]) = 1;
  LocalizedStringKey.init(stringLiteral:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  static Font.subheadline.getter();
  v25 = Text.font(_:)();
  v27 = v26;
  LOBYTE(v12) = v28;
  v30 = v29;

  sub_1001ACFEC(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  *&v44 = v38;
  *(&v44 + 1) = v37;
  LOBYTE(v45) = v39;
  *(&v45 + 1) = v41;
  v46[0] = v40;
  memset(&v46[8], 0, 32);
  v46[40] = 1;
  v49 = *v46;
  v50[0] = *&v46[16];
  *(v50 + 9) = *&v46[25];
  v47 = v44;
  v48 = v45;
  v32 = v44;
  v33 = v45;
  v34 = v50[1];
  *(a1 + 48) = v50[0];
  *(a1 + 64) = v34;
  v35 = v49;
  *(a1 + 16) = v33;
  *(a1 + 32) = v35;
  *a1 = v32;
  *(a1 + 80) = v25;
  *(a1 + 88) = v27;
  *(a1 + 96) = v12 & 1;
  *(a1 + 104) = v30;
  *(a1 + 112) = KeyPath;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  sub_1001AC934(&v44, v51, &qword_1003755C0, &qword_1002F1E70);
  sub_1001A5174(v25, v27, v12 & 1);

  sub_1001ACFEC(v25, v27, v12 & 1);

  v51[0] = v38;
  v51[1] = v37;
  v52 = v39;
  *v53 = *v43;
  *&v53[3] = *&v43[3];
  v54 = v41;
  v55 = v40;
  *v56 = *v42;
  *&v56[3] = *&v42[3];
  v57 = 0u;
  v58 = 0u;
  v59 = 1;
  return sub_1001AC99C(v51, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_100227820@<X0>(uint64_t a1@<X8>)
{
  Image.init(systemName:)();
  v2 = Text.init(_:)();
  v4 = v3;
  v6 = v5;
  static Color.blue.getter();
  v7 = Text.foregroundColor(_:)();
  v9 = v8;
  v11 = v10;

  sub_1001ACFEC(v2, v4, v6 & 1);

  static Font.headline.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  LOBYTE(v4) = v15;

  sub_1001ACFEC(v7, v9, v11 & 1);

  v16 = Text.bold()();
  v37 = v17;
  v38 = v16;
  LOBYTE(v7) = v18;
  v41 = v19;
  sub_1001ACFEC(v12, v14, v4 & 1);

  v39 = v7 & 1;
  v40 = static Edge.Set.vertical.getter();
  LOBYTE(v51[0]) = 1;
  LocalizedStringKey.init(stringLiteral:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  static Font.subheadline.getter();
  v25 = Text.font(_:)();
  v27 = v26;
  LOBYTE(v12) = v28;
  v30 = v29;

  sub_1001ACFEC(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  *&v44 = v38;
  *(&v44 + 1) = v37;
  LOBYTE(v45) = v39;
  *(&v45 + 1) = v41;
  v46[0] = v40;
  memset(&v46[8], 0, 32);
  v46[40] = 1;
  v49 = *v46;
  v50[0] = *&v46[16];
  *(v50 + 9) = *&v46[25];
  v47 = v44;
  v48 = v45;
  v32 = v44;
  v33 = v45;
  v34 = v50[1];
  *(a1 + 48) = v50[0];
  *(a1 + 64) = v34;
  v35 = v49;
  *(a1 + 16) = v33;
  *(a1 + 32) = v35;
  *a1 = v32;
  *(a1 + 80) = v25;
  *(a1 + 88) = v27;
  *(a1 + 96) = v12 & 1;
  *(a1 + 104) = v30;
  *(a1 + 112) = KeyPath;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  sub_1001AC934(&v44, v51, &qword_1003755C0, &qword_1002F1E70);
  sub_1001A5174(v25, v27, v12 & 1);

  sub_1001ACFEC(v25, v27, v12 & 1);

  v51[0] = v38;
  v51[1] = v37;
  v52 = v39;
  *v53 = *v43;
  *&v53[3] = *&v43[3];
  v54 = v41;
  v55 = v40;
  *v56 = *v42;
  *&v56[3] = *&v42[3];
  v57 = 0u;
  v58 = 0u;
  v59 = 1;
  return sub_1001AC99C(v51, &qword_1003755C0, &qword_1002F1E70);
}

unint64_t sub_100227B7C()
{
  result = qword_100376A00;
  if (!qword_100376A00)
  {
    sub_1001A55C8(&qword_1003769F8, &qword_1002F1A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376A00);
  }

  return result;
}

uint64_t sub_100227BE0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100227C14@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100227C48(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_100227C78(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_100227CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33[1] = a2;
  v33[2] = a4;
  v33[0] = a1;
  v33[3] = a5;
  v6 = sub_1001A551C(&qword_100378398, &qword_1002F3538);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v33 - v8;
  v10 = sub_1001A551C(&qword_100378388, &qword_1002F3530);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v33 - v15;
  v17 = sub_1001A551C(&qword_1003783A0, &qword_1002F3540);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v33 - v19;
  v21 = sub_1001A551C(&qword_100378378, &qword_1002F3528);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v33 - v24;
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 32) == 1684099177 && *(qword_100382500 + 40) == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v9 = static HorizontalAlignment.center.getter();
    *(v9 + 1) = 0;
    v9[16] = 0;
    v26 = sub_1001A551C(&qword_1003783A8, &qword_1002F3548);
    sub_100228314(a3, &v9[*(v26 + 44)]);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1001B603C(v9, v13, &qword_100378398, &qword_1002F3538);
    v27 = &v13[*(v10 + 36)];
    v28 = v39;
    *(v27 + 4) = v38;
    *(v27 + 5) = v28;
    *(v27 + 6) = v40;
    v29 = v35;
    *v27 = v34;
    *(v27 + 1) = v29;
    v30 = v37;
    *(v27 + 2) = v36;
    *(v27 + 3) = v30;
    sub_1001B603C(v13, v16, &qword_100378388, &qword_1002F3530);
    sub_1001AC934(v16, v20, &qword_100378388, &qword_1002F3530);
    swift_storeEnumTagMultiPayload();
    sub_1001AD0C8(&qword_100378370, &qword_100378378, &qword_1002F3528);
    sub_10022F5DC();
    _ConditionalContent<>.init(storage:)();
    return sub_1001AC99C(v16, &qword_100378388, &qword_1002F3530);
  }

  else
  {
    v32 = static Axis.Set.horizontal.getter();
    __chkstk_darwin(v32);
    sub_10022F5DC();
    ScrollView.init(_:showsIndicators:content:)();
    (*(v22 + 16))(v20, v25, v21);
    swift_storeEnumTagMultiPayload();
    sub_1001AD0C8(&qword_100378370, &qword_100378378, &qword_1002F3528);
    _ConditionalContent<>.init(storage:)();
    return (*(v22 + 8))(v25, v21);
  }
}

__n128 sub_1002281B0@<Q0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_1001A551C(&qword_100378398, &qword_1002F3538);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v13 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_1001A551C(&qword_1003783A8, &qword_1002F3548);
  sub_100228314(a1, &v7[*(v8 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1001B603C(v7, a2, &qword_100378398, &qword_1002F3538);
  v9 = a2 + *(sub_1001A551C(&qword_100378388, &qword_1002F3530) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_100228314@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v65 = a1;
  v64 = a2;
  v58 = sub_1001A551C(&qword_1003783B0, &qword_1002F3550);
  v2 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v61 = v52 - v3;
  v59 = sub_1001A551C(&qword_1003783B8, &qword_1002F3558);
  v4 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v63 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = v52 - v7;
  __chkstk_darwin(v8);
  v62 = v52 - v9;
  v10 = type metadata accessor for PinnedScrollableViews();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v53 = sub_1001A551C(&qword_1003783C0, &qword_1002F3560);
  v12 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v14 = v52 - v13;
  v54 = sub_1001A551C(&qword_1003783C8, &qword_1002F3568);
  v15 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v17 = v52 - v16;
  v55 = sub_1001A551C(&qword_1003783D0, &qword_1002F3570);
  v18 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v57 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v52 - v21;
  __chkstk_darwin(v23);
  v56 = v52 - v24;
  v25 = qword_100375050;

  if (v25 != -1)
  {
    v26 = swift_once();
  }

  v52[1] = qword_100382570;
  __chkstk_darwin(v26);
  static HorizontalAlignment.center.getter();
  LODWORD(v73) = 0;
  v52[0] = sub_10022F7BC(&qword_1003783D8, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10022F6AC();
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  v27 = static Edge.Set.all.getter();
  v28 = &v14[*(v53 + 36)];
  *v28 = v27;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1001B603C(v14, v17, &qword_1003783C0, &qword_1002F3560);
  v29 = &v17[*(v54 + 36)];
  v30 = v71;
  *(v29 + 4) = v70;
  *(v29 + 5) = v30;
  *(v29 + 6) = v72;
  v31 = v67;
  *v29 = v66;
  *(v29 + 1) = v31;
  v32 = v69;
  *(v29 + 2) = v68;
  *(v29 + 3) = v32;
  static Color.gray.getter();
  v33 = Color.opacity(_:)();

  v34 = static Edge.Set.all.getter();
  sub_1001B603C(v17, v22, &qword_1003783C8, &qword_1002F3568);
  v35 = &v22[*(v55 + 36)];
  *v35 = v33;
  v35[8] = v34;
  v36 = v56;
  v37 = sub_1001B603C(v22, v56, &qword_1003783D0, &qword_1002F3570);
  __chkstk_darwin(v37);

  static HorizontalAlignment.center.getter();
  LODWORD(v73) = 0;
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_1001A551C(&qword_1003783E8, &qword_1002F3578);
  sub_10022F708();
  v38 = v61;
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  v39 = static Edge.Set.all.getter();
  v40 = v38 + *(v58 + 36);
  *v40 = v39;
  *(v40 + 8) = 0u;
  *(v40 + 24) = 0u;
  *(v40 + 40) = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v41 = v60;
  sub_1001B603C(v38, v60, &qword_1003783B0, &qword_1002F3550);
  v42 = (v41 + *(v59 + 36));
  v43 = v78;
  v42[4] = v77;
  v42[5] = v43;
  v42[6] = v79;
  v44 = v74;
  *v42 = v73;
  v42[1] = v44;
  v45 = v76;
  v42[2] = v75;
  v42[3] = v45;
  v46 = v62;
  sub_1001B603C(v41, v62, &qword_1003783B8, &qword_1002F3558);
  v47 = v57;
  sub_1001AC934(v36, v57, &qword_1003783D0, &qword_1002F3570);
  v48 = v63;
  sub_1001AC934(v46, v63, &qword_1003783B8, &qword_1002F3558);
  v49 = v64;
  sub_1001AC934(v47, v64, &qword_1003783D0, &qword_1002F3570);
  v50 = sub_1001A551C(&qword_100378400, &unk_1002F3580);
  sub_1001AC934(v48, v49 + *(v50 + 48), &qword_1003783B8, &qword_1002F3558);
  sub_1001AC99C(v46, &qword_1003783B8, &qword_1002F3558);
  sub_1001AC99C(v36, &qword_1003783D0, &qword_1002F3570);
  sub_1001AC99C(v48, &qword_1003783B8, &qword_1002F3558);
  return sub_1001AC99C(v47, &qword_1003783D0, &qword_1002F3570);
}

uint64_t sub_100228B38(uint64_t a1)
{
  v3 = *(a1 + 16);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  sub_1001A551C(&qword_100376B30, &qword_1002F1E50);
  type metadata accessor for FTMBandDataView();
  sub_1001DBBC0();
  sub_10022F7BC(&qword_1003783F8, type metadata accessor for FTMBandDataView);
  return ForEach<>.init(_:id:content:)();
}

unint64_t *sub_100228C50@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = type metadata accessor for FTMBandInfoDataModel(0);
  v7 = *(v6 - 8);
  sub_1001BB760(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3, a3);
  (*(v7 + 56))(a3, 0, 1, v6);
  *(a3 + *(type metadata accessor for FTMBandDataView() + 20)) = a2;
}

uint64_t sub_100228D50(uint64_t a1, uint64_t a2)
{
  v2 = 0x41534E20524ELL;
  v3 = *(a1 + 25);
  if (v3 > 3)
  {
    if (*(a1 + 25) <= 5u)
    {
      if (v3 == 4)
      {
        v5 = 0xE500000000000000;
        v4 = 0x4E41525455;
      }

      else
      {
        v5 = 0xE300000000000000;
        v4 = 5067591;
      }

      goto LABEL_18;
    }

    if (v3 == 6)
    {
      v5 = 0xE700000000000000;
      v4 = 0x6E776F6E6B6E55;
      goto LABEL_18;
    }

LABEL_16:
    v5 = 0xE300000000000000;
    v4 = 4543564;
    goto LABEL_18;
  }

  if (*(a1 + 25) > 1u)
  {
    if (v3 != 2)
    {
      v5 = 0xE400000000000000;
      v4 = 1398033749;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (*(a1 + 25))
  {
    v4 = 21070;
  }

  else
  {
    v4 = 0x41534E20524ELL;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

LABEL_18:
  v6 = 0xE600000000000000;
  v7 = *(a2 + 25);
  v8 = 0xE700000000000000;
  v9 = 0x6E776F6E6B6E55;
  if (v7 != 6)
  {
    v9 = 4543564;
    v8 = 0xE300000000000000;
  }

  v10 = 0xE500000000000000;
  v11 = 0x4E41525455;
  if (v7 != 4)
  {
    v11 = 5067591;
    v10 = 0xE300000000000000;
  }

  if (*(a2 + 25) <= 5u)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = 0xE300000000000000;
  v13 = 4543564;
  if (v7 != 2)
  {
    v13 = 1398033749;
    v12 = 0xE400000000000000;
  }

  if (*(a2 + 25))
  {
    v2 = 21070;
    v6 = 0xE200000000000000;
  }

  if (*(a2 + 25) > 1u)
  {
    v2 = v13;
    v6 = v12;
  }

  if (*(a2 + 25) <= 3u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v9;
  }

  if (*(a2 + 25) <= 3u)
  {
    v15 = v6;
  }

  else
  {
    v15 = v8;
  }

  if (v4 == v14 && v5 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

uint64_t sub_100228F28()
{
  v2 = *v0;
  v1 = v0[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = sub_10022BC34(v5);

  sub_10022C460(v3);
  static Axis.Set.vertical.getter();
  sub_1001A551C(&qword_100378360, &qword_1002F3520);
  sub_10022F524();
  ScrollView.init(_:showsIndicators:content:)();
}

void sub_100229038(void **a1)
{
  v2 = *(type metadata accessor for FTMBandInfoDataModel(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001FC854(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100229190(v5);
  *a1 = v3;
}

void sub_1002290E0(void **a1)
{
  v2 = *(type metadata accessor for FTMBandInfoDataModel(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001FC854(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1002292BC(v5);
  *a1 = v3;
}

void sub_100229190(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FTMBandInfoDataModel(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FTMBandInfoDataModel(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1002299B0(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1002293E8(0, v2, 1, a1);
  }
}

void sub_1002292BC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FTMBandInfoDataModel(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FTMBandInfoDataModel(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10022A5F8(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1002297A0(0, v2, 1, a1);
  }
}

void sub_1002293E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = type metadata accessor for FTMBandInfoDataModel(0);
  v8 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  __chkstk_darwin(v13);
  v16 = &v43 - v15;
  v45 = a2;
  if (a3 != a2)
  {
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v50 = *a4;
    v44 = v17;
    v21 = v50 + v17 * a3;
LABEL_6:
    v48 = v18;
    v49 = a3;
    v46 = v21;
    v47 = v20;
    while (1)
    {
      sub_1001BB760(v21, v16);
      sub_1001BB760(v18, v12);
      v22 = v16[25];
      v23 = 0xE300000000000000;
      if (v22 > 3)
      {
        if (v16[25] > 5u)
        {
          v28 = 4543564;
          if (v22 == 6)
          {
            v23 = 0xE700000000000000;
            v28 = 0x6E776F6E6B6E55;
          }
        }

        else
        {
          if (v22 == 4)
          {
            v28 = 0x4E41525455;
          }

          else
          {
            v28 = 5067591;
          }

          if (v22 == 4)
          {
            v23 = 0xE500000000000000;
          }

          else
          {
            v23 = 0xE300000000000000;
          }
        }
      }

      else
      {
        v24 = 1398033749;
        if (v22 == 2)
        {
          v24 = 4543564;
        }

        v25 = 0xE400000000000000;
        if (v22 == 2)
        {
          v25 = 0xE300000000000000;
        }

        v26 = 0x41534E20524ELL;
        if (v16[25])
        {
          v26 = 21070;
        }

        v27 = 0xE600000000000000;
        if (v16[25])
        {
          v27 = 0xE200000000000000;
        }

        if (v16[25] <= 1u)
        {
          v28 = v26;
        }

        else
        {
          v28 = v24;
        }

        if (v16[25] <= 1u)
        {
          v23 = v27;
        }

        else
        {
          v23 = v25;
        }
      }

      v29 = v12[25];
      v30 = 0x6E776F6E6B6E55;
      if (v29 != 6)
      {
        v30 = 4543564;
      }

      v31 = 0xE700000000000000;
      if (v29 != 6)
      {
        v31 = 0xE300000000000000;
      }

      v32 = 0x4E41525455;
      if (v29 != 4)
      {
        v32 = 5067591;
      }

      v33 = 0xE500000000000000;
      if (v29 != 4)
      {
        v33 = 0xE300000000000000;
      }

      if (v12[25] <= 5u)
      {
        v30 = v32;
        v31 = v33;
      }

      v34 = 1398033749;
      if (v29 == 2)
      {
        v34 = 4543564;
      }

      v35 = 0xE400000000000000;
      if (v29 == 2)
      {
        v35 = 0xE300000000000000;
      }

      v36 = 0x41534E20524ELL;
      if (v12[25])
      {
        v36 = 21070;
      }

      v37 = 0xE600000000000000;
      if (v12[25])
      {
        v37 = 0xE200000000000000;
      }

      if (v12[25] <= 1u)
      {
        v34 = v36;
        v35 = v37;
      }

      if (v12[25] <= 3u)
      {
        v38 = v34;
      }

      else
      {
        v38 = v30;
      }

      if (v12[25] <= 3u)
      {
        v39 = v35;
      }

      else
      {
        v39 = v31;
      }

      if (v28 == v38 && v23 == v39)
      {

        sub_1001BB7C4(v12);
        sub_1001BB7C4(v16);
LABEL_5:
        a3 = v49 + 1;
        v18 = v48 + v44;
        v20 = v47 - 1;
        v21 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return;
        }

        goto LABEL_6;
      }

      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1001BB7C4(v12);
      sub_1001BB7C4(v16);
      if ((v40 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v41 = v51;
      sub_1001BB4B8(v21, v51);
      swift_arrayInitWithTakeFrontToBack();
      sub_1001BB4B8(v41, v18);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1002297A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for FTMBandInfoDataModel(0);
  v8 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      sub_1001BB760(v23, v17);
      sub_1001BB760(v20, v13);
      if (v17[24])
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v17 + 2);
      }

      v25 = *(v13 + 2);
      if (v13[24])
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v13 + 2);
      }

      sub_1001BB7C4(v13);
      sub_1001BB7C4(v17);
      if (v24 >= v26)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_1001BB4B8(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_1001BB4B8(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1002299B0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v147 = a1;
  v161 = type metadata accessor for FTMBandInfoDataModel(0);
  v157 = *(v161 - 8);
  v9 = *(v157 + 64);
  __chkstk_darwin(v161);
  v150 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v160 = &v142 - v12;
  __chkstk_darwin(v13);
  v162 = &v142 - v14;
  __chkstk_darwin(v15);
  v17 = &v142 - v16;
  __chkstk_darwin(v18);
  v155 = &v142 - v19;
  __chkstk_darwin(v20);
  v158 = &v142 - v21;
  __chkstk_darwin(v22);
  v144 = &v142 - v23;
  __chkstk_darwin(v24);
  v143 = &v142 - v25;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_216:
    v5 = *v147;
    if (!*v147)
    {
      goto LABEL_258;
    }

    a4 = v28;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v136 = a4;
    }

    else
    {
LABEL_252:
      v136 = sub_1001FA564(a4);
    }

    v163 = v136;
    v137 = *(v136 + 2);
    if (v137 >= 2)
    {
      while (*a3)
      {
        a4 = v137 - 1;
        v138 = *&v136[16 * v137];
        v139 = v136;
        v140 = *&v136[16 * v137 + 24];
        sub_10022AF2C(*a3 + *(v157 + 72) * v138, *a3 + *(v157 + 72) * *&v136[16 * v137 + 16], *a3 + *(v157 + 72) * v140, v5);
        if (v6)
        {
          goto LABEL_230;
        }

        if (v140 < v138)
        {
          goto LABEL_245;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_1001FA564(v139);
        }

        if (v137 - 2 >= *(v139 + 2))
        {
          goto LABEL_246;
        }

        v141 = &v139[16 * v137];
        *v141 = v138;
        *(v141 + 1) = v140;
        v163 = v139;
        sub_1001FA4D8(a4);
        v136 = v163;
        v137 = *(v163 + 2);
        if (v137 <= 1)
        {
          goto LABEL_230;
        }
      }

      goto LABEL_256;
    }

    goto LABEL_230;
  }

  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  v146 = a4;
  v148 = a3;
  while (1)
  {
    v151 = v28;
    if (v27 + 1 < v26)
    {
      v159 = v26;
      v29 = *a3;
      v30 = *(v157 + 72);
      v5 = *a3 + v30 * (v27 + 1);
      v31 = v143;
      sub_1001BB760(v5, v143);
      v32 = v29 + v30 * v27;
      v33 = v27;
      v34 = v144;
      sub_1001BB760(v32, v144);
      LODWORD(v156) = sub_100228D50(v31, v34);
      if (!v6)
      {
        sub_1001BB7C4(v34);
        sub_1001BB7C4(v31);
        v145 = v33;
        v35 = v33 + 2;
        v36 = v29 + v30 * (v33 + 2);
        a3 = v155;
        while (1)
        {
          v38 = v159;
          if (v159 == v35)
          {
            break;
          }

          v39 = v158;
          sub_1001BB760(v36, v158);
          sub_1001BB760(v5, a3);
          v40 = *(v39 + 25);
          if (v40 > 3)
          {
            v43 = 0x41534E20524ELL;
            if (*(v39 + 25) > 5u)
            {
              if (v40 == 6)
              {
                v46 = 0x6E776F6E6B6E55;
              }

              else
              {
                v46 = 4543564;
              }

              if (v40 == 6)
              {
                v47 = 0xE700000000000000;
              }

              else
              {
                v47 = 0xE300000000000000;
              }
            }

            else if (v40 == 4)
            {
              v47 = 0xE500000000000000;
              v46 = 0x4E41525455;
            }

            else
            {
              v47 = 0xE300000000000000;
              v46 = 5067591;
            }
          }

          else
          {
            if (v40 == 2)
            {
              v41 = 4543564;
            }

            else
            {
              v41 = 1398033749;
            }

            if (v40 == 2)
            {
              v42 = 0xE300000000000000;
            }

            else
            {
              v42 = 0xE400000000000000;
            }

            v43 = 0x41534E20524ELL;
            if (*(v39 + 25))
            {
              v44 = 21070;
            }

            else
            {
              v44 = 0x41534E20524ELL;
            }

            if (*(v39 + 25))
            {
              v45 = 0xE200000000000000;
            }

            else
            {
              v45 = 0xE600000000000000;
            }

            if (*(v39 + 25) <= 1u)
            {
              v46 = v44;
            }

            else
            {
              v46 = v41;
            }

            if (*(v39 + 25) <= 1u)
            {
              v47 = v45;
            }

            else
            {
              v47 = v42;
            }
          }

          v48 = *(a3 + 25);
          v49 = 0x6E776F6E6B6E55;
          if (v48 != 6)
          {
            v49 = 4543564;
          }

          v50 = 0xE700000000000000;
          if (v48 != 6)
          {
            v50 = 0xE300000000000000;
          }

          v51 = 0x4E41525455;
          if (v48 != 4)
          {
            v51 = 5067591;
          }

          v52 = 0xE500000000000000;
          if (v48 != 4)
          {
            v52 = 0xE300000000000000;
          }

          if (*(a3 + 25) <= 5u)
          {
            v49 = v51;
            v50 = v52;
          }

          if (v48 == 2)
          {
            v53 = 4543564;
          }

          else
          {
            v53 = 1398033749;
          }

          if (v48 == 2)
          {
            v54 = 0xE300000000000000;
          }

          else
          {
            v54 = 0xE400000000000000;
          }

          if (*(a3 + 25))
          {
            v43 = 21070;
            v55 = 0xE200000000000000;
          }

          else
          {
            v55 = 0xE600000000000000;
          }

          if (*(a3 + 25) <= 1u)
          {
            v53 = v43;
            v54 = v55;
          }

          if (*(a3 + 25) <= 3u)
          {
            v56 = v53;
          }

          else
          {
            v56 = v49;
          }

          if (*(a3 + 25) <= 3u)
          {
            v57 = v54;
          }

          else
          {
            v57 = v50;
          }

          if (v46 == v56 && v47 == v57)
          {
            v37 = 0;
          }

          else
          {
            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          a3 = v155;
          sub_1001BB7C4(v155);
          sub_1001BB7C4(v158);
          ++v35;
          v36 += v30;
          v5 += v30;
          if ((v156 ^ v37))
          {
            v38 = v35 - 1;
            break;
          }
        }

        v27 = v145;
        a4 = v146;
        if ((v156 & 1) == 0)
        {
          goto LABEL_84;
        }

        if (v38 < v145)
        {
          goto LABEL_251;
        }

        if (v145 < v38)
        {
          v142 = 0;
          v58 = v30 * (v38 - 1);
          v5 = v38 * v30;
          v159 = v38;
          v59 = v145;
          v60 = v145 * v30;
          do
          {
            if (v59 != --v38)
            {
              v61 = *v148;
              if (!*v148)
              {
                goto LABEL_255;
              }

              sub_1001BB4B8(v61 + v60, v150);
              if (v60 < v58 || v61 + v60 >= (v61 + v5))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v60 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1001BB4B8(v150, v61 + v58);
            }

            ++v59;
            v58 -= v30;
            v5 -= v30;
            v60 += v30;
          }

          while (v59 < v38);
          v6 = v142;
          a3 = v148;
          v27 = v145;
          a4 = v146;
          v38 = v159;
        }

        else
        {
LABEL_84:
          a3 = v148;
        }

        goto LABEL_86;
      }

      sub_1001BB7C4(v34);
      sub_1001BB7C4(v31);
LABEL_230:

      return;
    }

    v38 = v27 + 1;
LABEL_86:
    v62 = *(a3 + 8);
    if (v38 >= v62)
    {
      goto LABEL_95;
    }

    if (__OFSUB__(v38, v27))
    {
      goto LABEL_248;
    }

    if (v38 - v27 >= a4)
    {
LABEL_95:
      v5 = v38;
      if (v38 < v27)
      {
        goto LABEL_247;
      }

      goto LABEL_96;
    }

    if (__OFADD__(v27, a4))
    {
      goto LABEL_249;
    }

    if ((v27 + a4) >= v62)
    {
      v5 = *(a3 + 8);
    }

    else
    {
      v5 = v27 + a4;
    }

    if (v5 < v27)
    {
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
      goto LABEL_252;
    }

    if (v38 == v5)
    {
      goto LABEL_95;
    }

    v142 = v6;
    v108 = *a3;
    v109 = *(v157 + 72);
    v110 = *a3 + v109 * (v38 - 1);
    v111 = v27;
    v112 = -v109;
    v145 = v111;
    v113 = v111 - v38;
    v149 = v109;
    v114 = v108 + v38 * v109;
    v152 = v5;
LABEL_148:
    v159 = v38;
    v153 = v114;
    v154 = v113;
    v115 = v114;
    v156 = v110;
    v116 = v110;
LABEL_149:
    sub_1001BB760(v115, v17);
    sub_1001BB760(v116, v162);
    v117 = v17[25];
    v118 = 0xE300000000000000;
    if (v117 > 3)
    {
      v121 = 0x41534E20524ELL;
      if (v17[25] > 5u)
      {
        v124 = 4543564;
        if (v117 == 6)
        {
          v118 = 0xE700000000000000;
          v124 = 0x6E776F6E6B6E55;
        }
      }

      else
      {
        v124 = v117 == 4 ? 0x4E41525455 : 5067591;
        v118 = v117 == 4 ? 0xE500000000000000 : 0xE300000000000000;
      }
    }

    else
    {
      v119 = v117 == 2 ? 4543564 : 1398033749;
      v120 = v117 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v121 = 0x41534E20524ELL;
      v122 = v17[25] ? 21070 : 0x41534E20524ELL;
      v123 = v17[25] ? 0xE200000000000000 : 0xE600000000000000;
      v124 = v17[25] <= 1u ? v122 : v119;
      v118 = v17[25] <= 1u ? v123 : v120;
    }

    v125 = *(v162 + 25);
    v126 = 0x6E776F6E6B6E55;
    if (v125 != 6)
    {
      v126 = 4543564;
    }

    v127 = 0xE700000000000000;
    if (v125 != 6)
    {
      v127 = 0xE300000000000000;
    }

    v128 = 0x4E41525455;
    if (v125 != 4)
    {
      v128 = 5067591;
    }

    v129 = 0xE500000000000000;
    if (v125 != 4)
    {
      v129 = 0xE300000000000000;
    }

    if (*(v162 + 25) <= 5u)
    {
      v126 = v128;
      v127 = v129;
    }

    if (v125 == 2)
    {
      v130 = 4543564;
    }

    else
    {
      v130 = 1398033749;
    }

    if (v125 == 2)
    {
      v131 = 0xE300000000000000;
    }

    else
    {
      v131 = 0xE400000000000000;
    }

    if (*(v162 + 25))
    {
      v121 = 21070;
      v132 = 0xE200000000000000;
    }

    else
    {
      v132 = 0xE600000000000000;
    }

    if (*(v162 + 25) <= 1u)
    {
      v130 = v121;
      v131 = v132;
    }

    v133 = *(v162 + 25) <= 3u ? v130 : v126;
    a4 = *(v162 + 25) <= 3u ? v131 : v127;
    if (v124 != v133 || v118 != a4)
    {
      break;
    }

    sub_1001BB7C4(v162);
    sub_1001BB7C4(v17);
LABEL_147:
    v38 = v159 + 1;
    v110 = v156 + v149;
    v113 = v154 - 1;
    v114 = v153 + v149;
    v5 = v152;
    if (v159 + 1 != v152)
    {
      goto LABEL_148;
    }

    v6 = v142;
    a3 = v148;
    v27 = v145;
    if (v152 < v145)
    {
      goto LABEL_247;
    }

LABEL_96:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v28 = v151;
    }

    else
    {
      v28 = sub_1001FA578(0, *(v151 + 2) + 1, 1, v151);
    }

    a4 = *(v28 + 2);
    v63 = *(v28 + 3);
    v64 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v28 = sub_1001FA578((v63 > 1), a4 + 1, 1, v28);
    }

    *(v28 + 2) = v64;
    v65 = &v28[16 * a4];
    *(v65 + 4) = v27;
    *(v65 + 5) = v5;
    v152 = v5;
    v5 = *v147;
    if (!*v147)
    {
      goto LABEL_257;
    }

    if (a4)
    {
      while (2)
      {
        v66 = v64 - 1;
        if (v64 >= 4)
        {
          v71 = &v28[16 * v64 + 32];
          v72 = *(v71 - 64);
          v73 = *(v71 - 56);
          v77 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          if (v77)
          {
            goto LABEL_234;
          }

          v76 = *(v71 - 48);
          v75 = *(v71 - 40);
          v77 = __OFSUB__(v75, v76);
          v69 = v75 - v76;
          v70 = v77;
          if (v77)
          {
            goto LABEL_235;
          }

          v78 = &v28[16 * v64];
          v80 = *v78;
          v79 = *(v78 + 1);
          v77 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v77)
          {
            goto LABEL_237;
          }

          v77 = __OFADD__(v69, v81);
          v82 = v69 + v81;
          if (v77)
          {
            goto LABEL_240;
          }

          if (v82 >= v74)
          {
            v100 = &v28[16 * v66 + 32];
            v102 = *v100;
            v101 = *(v100 + 1);
            v77 = __OFSUB__(v101, v102);
            v103 = v101 - v102;
            if (v77)
            {
              goto LABEL_244;
            }

            if (v69 < v103)
            {
              v66 = v64 - 2;
            }
          }

          else
          {
LABEL_115:
            if (v70)
            {
              goto LABEL_236;
            }

            v83 = &v28[16 * v64];
            v85 = *v83;
            v84 = *(v83 + 1);
            v86 = __OFSUB__(v84, v85);
            v87 = v84 - v85;
            v88 = v86;
            if (v86)
            {
              goto LABEL_239;
            }

            v89 = &v28[16 * v66 + 32];
            v91 = *v89;
            v90 = *(v89 + 1);
            v77 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v77)
            {
              goto LABEL_242;
            }

            if (__OFADD__(v87, v92))
            {
              goto LABEL_243;
            }

            if (v87 + v92 < v69)
            {
              goto LABEL_129;
            }

            if (v69 < v92)
            {
              v66 = v64 - 2;
            }
          }
        }

        else
        {
          if (v64 == 3)
          {
            v67 = *(v28 + 4);
            v68 = *(v28 + 5);
            v77 = __OFSUB__(v68, v67);
            v69 = v68 - v67;
            v70 = v77;
            goto LABEL_115;
          }

          v93 = &v28[16 * v64];
          v95 = *v93;
          v94 = *(v93 + 1);
          v77 = __OFSUB__(v94, v95);
          v87 = v94 - v95;
          v88 = v77;
LABEL_129:
          if (v88)
          {
            goto LABEL_238;
          }

          v96 = &v28[16 * v66];
          v98 = *(v96 + 4);
          v97 = *(v96 + 5);
          v77 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v77)
          {
            goto LABEL_241;
          }

          if (v99 < v87)
          {
            break;
          }
        }

        a4 = v66 - 1;
        if (v66 - 1 >= v64)
        {
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
          goto LABEL_250;
        }

        if (!*a3)
        {
          goto LABEL_254;
        }

        v104 = v28;
        v105 = *&v28[16 * a4 + 32];
        v106 = *&v28[16 * v66 + 40];
        sub_10022AF2C(*a3 + *(v157 + 72) * v105, *a3 + *(v157 + 72) * *&v28[16 * v66 + 32], *a3 + *(v157 + 72) * v106, v5);
        if (v6)
        {
          goto LABEL_230;
        }

        if (v106 < v105)
        {
          goto LABEL_232;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1001FA564(v104);
        }

        if (a4 >= *(v104 + 2))
        {
          goto LABEL_233;
        }

        v107 = &v104[16 * a4];
        *(v107 + 4) = v105;
        *(v107 + 5) = v106;
        v163 = v104;
        sub_1001FA4D8(v66);
        v28 = v163;
        v64 = *(v163 + 2);
        if (v64 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v26 = *(a3 + 8);
    v27 = v152;
    a4 = v146;
    if (v152 >= v26)
    {
      goto LABEL_216;
    }
  }

  v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_1001BB7C4(v162);
  sub_1001BB7C4(v17);
  if ((v134 & 1) == 0)
  {
    goto LABEL_147;
  }

  if (v108)
  {
    a4 = v160;
    sub_1001BB4B8(v115, v160);
    swift_arrayInitWithTakeFrontToBack();
    sub_1001BB4B8(a4, v116);
    v116 += v112;
    v115 += v112;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_147;
    }

    goto LABEL_149;
  }

  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
}

void sub_10022A5F8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v125 = a1;
  v139 = type metadata accessor for FTMBandInfoDataModel(0);
  v133 = *(v139 - 8);
  v9 = *(v133 + 64);
  __chkstk_darwin(v139);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v138 = &v119 - v12;
  __chkstk_darwin(v13);
  v15 = &v119 - v14;
  __chkstk_darwin(v16);
  v18 = &v119 - v17;
  __chkstk_darwin(v19);
  v130 = &v119 - v20;
  __chkstk_darwin(v21);
  v129 = &v119 - v22;
  __chkstk_darwin(v23);
  v122 = &v119 - v24;
  __chkstk_darwin(v25);
  v121 = &v119 - v26;
  v135 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_116:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_154;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_148:
      v29 = sub_1001FA564(v29);
    }

    v140 = v29;
    v115 = *(v29 + 2);
    if (v115 >= 2)
    {
      while (*v135)
      {
        v116 = *&v29[16 * v115];
        v117 = *&v29[16 * v115 + 24];
        sub_10022B740(*v135 + *(v133 + 72) * v116, *v135 + *(v133 + 72) * *&v29[16 * v115 + 16], *v135 + *(v133 + 72) * v117, v5);
        if (v6)
        {
          goto LABEL_126;
        }

        if (v117 < v116)
        {
          goto LABEL_141;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1001FA564(v29);
        }

        if (v115 - 2 >= *(v29 + 2))
        {
          goto LABEL_142;
        }

        v118 = &v29[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v140 = v29;
        sub_1001FA4D8(v115 - 1);
        v29 = v140;
        v115 = *(v140 + 2);
        if (v115 <= 1)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_152;
    }

LABEL_126:

    return;
  }

  v120 = a4;
  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  v128 = v18;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v31 >= v27)
    {
      v48 = v31;
    }

    else
    {
      v137 = v27;
      v123 = v6;
      v32 = *v135;
      v6 = *(v133 + 72);
      v5 = *v135 + v6 * v31;
      v33 = v121;
      sub_1001BB760(v5, v121);
      v34 = v122;
      sub_1001BB760(v32 + v6 * v30, v122);
      if (*(v33 + 24))
      {
        v35 = 0;
      }

      else
      {
        v35 = *(v33 + 16);
      }

      v36 = *(v34 + 16);
      if (*(v34 + 24))
      {
        v36 = 0;
      }

      v131 = v36;
      v132 = v35;
      sub_1001BB7C4(v34);
      sub_1001BB7C4(v33);
      v124 = v30;
      v37 = v30 + 2;
      v134 = v6;
      v38 = v32 + v6 * v37;
      while (v137 != v37)
      {
        LODWORD(v136) = v132 < v131;
        v39 = v15;
        v40 = v129;
        sub_1001BB760(v38, v129);
        v41 = v130;
        sub_1001BB760(v5, v130);
        v6 = v29;
        if (*(v40 + 24))
        {
          v42 = 0;
        }

        else
        {
          v42 = *(v40 + 16);
        }

        v43 = *(v41 + 16);
        if (*(v41 + 24))
        {
          v44 = 0;
        }

        else
        {
          v44 = *(v41 + 16);
        }

        sub_1001BB7C4(v41);
        v45 = v40;
        v15 = v39;
        v18 = v128;
        sub_1001BB7C4(v45);
        v46 = v42 < v44;
        v29 = v6;
        v47 = !v46;
        ++v37;
        v38 += v134;
        v5 += v134;
        if (((v136 ^ v47) & 1) == 0)
        {
          v48 = v37 - 1;
          goto LABEL_25;
        }
      }

      v48 = v137;
LABEL_25:
      v30 = v124;
      if (v132 >= v131)
      {
        goto LABEL_38;
      }

      if (v48 < v124)
      {
        goto LABEL_145;
      }

      if (v124 >= v48)
      {
LABEL_38:
        v6 = v123;
      }

      else
      {
        v119 = v29;
        v49 = v134 * (v48 - 1);
        v50 = v48;
        v51 = v48 * v134;
        v137 = v48;
        v52 = v124 * v134;
        do
        {
          if (v30 != --v50)
          {
            v53 = *v135;
            if (!*v135)
            {
              goto LABEL_151;
            }

            v5 = v53 + v52;
            sub_1001BB4B8(v53 + v52, v127);
            if (v52 < v49 || v5 >= v53 + v51)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != v49)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1001BB4B8(v127, v53 + v49);
          }

          ++v30;
          v49 -= v134;
          v51 -= v134;
          v52 += v134;
        }

        while (v30 < v50);
        v6 = v123;
        v30 = v124;
        v29 = v119;
        v48 = v137;
      }
    }

    v54 = v135[1];
    if (v48 < v54)
    {
      if (__OFSUB__(v48, v30))
      {
        goto LABEL_144;
      }

      if (v48 - v30 < v120)
      {
        if (__OFADD__(v30, v120))
        {
          goto LABEL_146;
        }

        if (v30 + v120 >= v54)
        {
          v55 = v135[1];
        }

        else
        {
          v55 = v30 + v120;
        }

        if (v55 < v30)
        {
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (v48 != v55)
        {
          break;
        }
      }
    }

    v56 = v48;
    if (v48 < v30)
    {
      goto LABEL_143;
    }

LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1001FA578(0, *(v29 + 2) + 1, 1, v29);
    }

    v58 = *(v29 + 2);
    v57 = *(v29 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v29 = sub_1001FA578((v57 > 1), v58 + 1, 1, v29);
    }

    *(v29 + 2) = v59;
    v60 = &v29[16 * v58];
    *(v60 + 4) = v30;
    *(v60 + 5) = v56;
    v131 = v56;
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_153;
    }

    if (v58)
    {
      while (1)
      {
        v61 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v29 + 4);
          v63 = *(v29 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_69:
          if (v65)
          {
            goto LABEL_132;
          }

          v78 = &v29[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_135;
          }

          v84 = &v29[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_138;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_139;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v59 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v88 = &v29[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_83:
        if (v83)
        {
          goto LABEL_134;
        }

        v91 = &v29[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_137;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_90:
        v99 = v61 - 1;
        if (v61 - 1 >= v59)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v135)
        {
          goto LABEL_150;
        }

        v100 = *&v29[16 * v99 + 32];
        v101 = *&v29[16 * v61 + 40];
        sub_10022B740(*v135 + *(v133 + 72) * v100, *v135 + *(v133 + 72) * *&v29[16 * v61 + 32], *v135 + *(v133 + 72) * v101, v5);
        if (v6)
        {
          goto LABEL_126;
        }

        if (v101 < v100)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1001FA564(v29);
        }

        if (v99 >= *(v29 + 2))
        {
          goto LABEL_129;
        }

        v102 = &v29[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v140 = v29;
        sub_1001FA4D8(v61);
        v29 = v140;
        v59 = *(v140 + 2);
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v29[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_130;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_131;
      }

      v73 = &v29[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_133;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_136;
      }

      if (v77 >= v69)
      {
        v95 = &v29[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_140;
        }

        if (v64 < v98)
        {
          v61 = v59 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v27 = v135[1];
    v28 = v131;
    if (v131 >= v27)
    {
      goto LABEL_116;
    }
  }

  v119 = v29;
  v103 = *v135;
  v104 = *(v133 + 72);
  v105 = *v135 + v104 * (v48 - 1);
  v106 = v30;
  v107 = -v104;
  v123 = v6;
  v124 = v106;
  v108 = (v106 - v48);
  v126 = v104;
  v5 = v103 + v48 * v104;
  v131 = v55;
LABEL_101:
  v136 = v105;
  v137 = v48;
  v132 = v5;
  v134 = v108;
  v109 = v108;
  while (1)
  {
    sub_1001BB760(v5, v18);
    sub_1001BB760(v105, v15);
    if (v18[24])
    {
      v110 = 0;
    }

    else
    {
      v110 = *(v18 + 2);
    }

    v111 = *(v15 + 2);
    if (v15[24])
    {
      v112 = 0;
    }

    else
    {
      v112 = *(v15 + 2);
    }

    sub_1001BB7C4(v15);
    sub_1001BB7C4(v18);
    if (v110 >= v112)
    {
LABEL_100:
      v48 = v137 + 1;
      v105 = v136 + v126;
      v108 = v134 - 1;
      v56 = v131;
      v5 = v132 + v126;
      if (v137 + 1 != v131)
      {
        goto LABEL_101;
      }

      v6 = v123;
      v30 = v124;
      v29 = v119;
      if (v131 < v124)
      {
        goto LABEL_143;
      }

      goto LABEL_50;
    }

    if (!v103)
    {
      break;
    }

    v113 = v138;
    sub_1001BB4B8(v5, v138);
    swift_arrayInitWithTakeFrontToBack();
    sub_1001BB4B8(v113, v105);
    v105 += v107;
    v5 += v107;
    if (__CFADD__(v109++, 1))
    {
      goto LABEL_100;
    }
  }

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
}