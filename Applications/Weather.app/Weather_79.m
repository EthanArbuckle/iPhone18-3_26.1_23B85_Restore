void sub_100863DD4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v7[0] = v1;

    sub_100863990(v7);
    *&v3[OBJC_IVAR____TtC7Weather27DebugLocationViewController_locations] = v7[0];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + OBJC_IVAR____TtC7Weather27DebugLocationViewController_tableView);

    [v6 reloadData];
  }
}

unint64_t sub_100864010()
{
  v1 = v0;
  v2 = type metadata accessor for DebugLocationManager.DebugLocation();
  sub_1000037C4();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v8 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &aBlock - v10;
  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = *&v0[OBJC_IVAR____TtC7Weather27DebugLocationViewController_locations];
  if (result >= *(v13 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v14 = *(v4 + 80);
  sub_1008649E4(v13 + ((v14 + 32) & ~v14) + *(v4 + 72) * result, v11);
  sub_100090A8C(&v11[*(v2 + 20)], 0, v15, v16, v17, v18, v19, v20, aBlock, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  v21 = [v0 navigationController];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 presentingViewController];

    if (v23)
    {
      sub_1008649E4(v11, v8);
      v24 = swift_allocObject();
      *(v24 + 16) = v1;
      sub_10068EFE8(v8, v24 + ((v14 + 24) & ~v14));
      v32 = sub_100865A44;
      v33 = v24;
      aBlock = _NSConcreteStackBlock;
      v29 = 1107296256;
      v30 = sub_1000742F0;
      v31 = &unk_100C717A8;
      v25 = _Block_copy(&aBlock);
      v26 = v1;

      [v23 dismissViewControllerAnimated:1 completion:v25];
      _Block_release(v25);
    }
  }

  sub_10001FA88();
  return sub_100865AA8(v11, v27);
}

uint64_t sub_100864268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainAction();
  __chkstk_darwin(v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC7Weather27DebugLocationViewController_dispatcher);
  v8 = *(type metadata accessor for DebugLocationManager.DebugLocation() + 20);
  v9 = type metadata accessor for Location();
  (*(*(v9 - 8) + 16))(v6, a2 + v8, v9);
  type metadata accessor for DebugAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_10004F034(v6, v11, v7);
  sub_1000E17D8(v11);
  return sub_100865AA8(v6, type metadata accessor for MainAction);
}

unint64_t sub_1008644EC(void *a1)
{
  type metadata accessor for DebugLocationManager.DebugLocation();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC7Weather27DebugLocationViewController_locations);
  if (result >= *(v9 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1008649E4(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * result, v7);
  v10 = sub_10001CF60();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = [a1 dequeueReusableCellWithIdentifier:v10 forIndexPath:isa];

  type metadata accessor for DebugLocationViewCell();
  v13 = swift_dynamicCastClassUnconditional();
  v14 = v12;
  [v13 setAccessoryType:0];
  v15 = [v13 textLabel];
  if (v15)
  {
    v16 = v15;
    v17 = Location.name.getter();
    sub_10030F7D8(v17, v18, v16);
  }

  v19 = [v13 detailTextLabel];
  if (v19)
  {
    v20 = v19;
    sub_10022C350(&qword_100CA40C8);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100A2C3F0;
    v22 = *v7;
    *(v21 + 56) = &type metadata for Double;
    *(v21 + 64) = &protocol witness table for Double;
    *(v21 + 32) = v22;
    v23 = String.init(format:_:)();
    sub_10030F7D8(v23, v24, v20);
  }

  sub_10001FA88();
  sub_100865AA8(v7, v25);
  return v13;
}

id sub_100864854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithStyle:reuseIdentifier:", 1, v6);

  return v7;
}

uint64_t sub_1008649E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugLocationManager.DebugLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100864A48(uint64_t *a1)
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
        type metadata accessor for DebugLocationManager.DebugLocation();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for DebugLocationManager.DebugLocation() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100864D84(v8, v9, a1, v4);
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
    sub_100864B78(0, v2, 1, a1);
  }
}

void sub_100864B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for DebugLocationManager.DebugLocation();
  __chkstk_darwin(v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v26 - v11);
  __chkstk_darwin(v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      do
      {
        sub_1008649E4(v22, v16);
        sub_1008649E4(v19, v12);
        v23 = *v16;
        v24 = *v12;
        sub_100865AA8(v12, type metadata accessor for DebugLocationManager.DebugLocation);
        sub_100865AA8(v16, type metadata accessor for DebugLocationManager.DebugLocation);
        if (v24 >= v23)
        {
          break;
        }

        if (!v17)
        {
          __break(1u);
          return;
        }

        sub_10068EFE8(v22, v9);
        swift_arrayInitWithTakeFrontToBack();
        sub_10068EFE8(v9, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_100864D84(int64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = v4;
  v106 = a1;
  v118 = type metadata accessor for DebugLocationManager.DebugLocation();
  v112 = *(v118 - 8);
  __chkstk_darwin(v118);
  v109 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v117 = &v102 - v10;
  __chkstk_darwin(v11);
  v13 = (&v102 - v12);
  __chkstk_darwin(v14);
  v16 = (&v102 - v15);
  v114 = a3;
  v17 = *(a3 + 8);
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_100:
    a3 = *v106;
    if (!*v106)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v96 = v19 + 16;
      v95 = *(v19 + 2);
      for (i = v19; v95 >= 2; v19 = i)
      {
        if (!*v114)
        {
          goto LABEL_138;
        }

        v97 = &v19[16 * v95];
        v98 = *v97;
        v99 = &v96[2 * v95];
        v100 = *(v99 + 1);
        sub_100865604(*v114 + *(v112 + 72) * *v97, *v114 + *(v112 + 72) * *v99, *v114 + *(v112 + 72) * v100, a3);
        if (v5)
        {
          break;
        }

        if (v100 < v98)
        {
          goto LABEL_126;
        }

        if (v95 - 2 >= *v96)
        {
          goto LABEL_127;
        }

        *v97 = v98;
        *(v97 + 1) = v100;
        v101 = *v96 - v95;
        if (*v96 < v95)
        {
          goto LABEL_128;
        }

        v95 = *v96 - 1;
        sub_1003090FC(v99 + 16, v101, v99);
        *v96 = v95;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v19 = sub_100308E24();
    goto LABEL_102;
  }

  v104 = a4;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v110 = (&v102 - v15);
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    if (v18 + 1 < v17)
    {
      v22 = *v114;
      a3 = *(v112 + 72);
      i = v17;
      v116 = v18 + 1;
      v23 = v22 + a3 * v21;
      sub_1008649E4(v23, v16);
      sub_1008649E4(v22 + a3 * v20, v13);
      v24 = *v16;
      v25 = *v13;
      sub_100865AA8(v13, type metadata accessor for DebugLocationManager.DebugLocation);
      sub_100865AA8(v16, type metadata accessor for DebugLocationManager.DebugLocation);
      v26 = i;
      v105 = v20;
      v27 = v20 + 2;
      v113 = a3;
      v28 = v22 + a3 * (v20 + 2);
      while (1)
      {
        v29 = v27;
        if (++v116 >= v26)
        {
          break;
        }

        a3 = v25 < v24;
        sub_1008649E4(v28, v16);
        sub_1008649E4(v23, v13);
        v30 = *v16;
        v31 = *v13;
        sub_100865AA8(v13, type metadata accessor for DebugLocationManager.DebugLocation);
        sub_100865AA8(v16, type metadata accessor for DebugLocationManager.DebugLocation);
        v26 = i;
        v28 += v113;
        v23 += v113;
        v27 = v29 + 1;
        if (v25 < v24 == v31 >= v30)
        {
          goto LABEL_9;
        }
      }

      v116 = v26;
LABEL_9:
      if (v25 < v24)
      {
        v21 = v116;
        if (v116 < v105)
        {
          goto LABEL_132;
        }

        if (v105 >= v116)
        {
          v20 = v105;
          goto LABEL_31;
        }

        i = v19;
        v103 = v5;
        if (v26 >= v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v26;
        }

        v33 = v113 * (v32 - 1);
        v34 = v113 * v32;
        v35 = v105 * v113;
        v36 = v105;
        do
        {
          if (v36 != --v21)
          {
            a3 = *v114;
            if (!*v114)
            {
              goto LABEL_139;
            }

            sub_10068EFE8(a3 + v35, v109);
            v37 = v35 < v33 || a3 + v35 >= a3 + v34;
            if (v37)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_10068EFE8(v109, a3 + v33);
          }

          ++v36;
          v33 -= v113;
          v34 -= v113;
          v35 += v113;
        }

        while (v36 < v21);
        v5 = v103;
        v19 = i;
      }

      v21 = v116;
      v20 = v105;
    }

LABEL_31:
    v38 = v114[1];
    if (v21 < v38)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_131;
      }

      if (v21 - v20 < v104)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_130;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10011E564();
      v19 = v93;
    }

    a3 = *(v19 + 2);
    v52 = a3 + 1;
    if (a3 >= *(v19 + 3) >> 1)
    {
      sub_10011E564();
      v19 = v94;
    }

    *(v19 + 2) = v52;
    v53 = v19 + 32;
    v54 = &v19[16 * a3 + 32];
    v55 = v116;
    *v54 = v20;
    *(v54 + 1) = v55;
    v113 = *v106;
    if (!v113)
    {
      goto LABEL_140;
    }

    if (a3)
    {
      i = v19;
      while (1)
      {
        v56 = v52 - 1;
        v57 = &v53[16 * v52 - 16];
        v58 = &v19[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v59 = *(v19 + 4);
          v60 = *(v19 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_68:
          if (v62)
          {
            goto LABEL_117;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_120;
          }

          v78 = *(v57 + 1);
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_125;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v52 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v52 < 2)
        {
          goto LABEL_119;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_83:
        if (v77)
        {
          goto LABEL_122;
        }

        v83 = *v57;
        v82 = *(v57 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_124;
        }

        if (v84 < v76)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v56 - 1 >= v52)
        {
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
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v114)
        {
          goto LABEL_137;
        }

        v88 = &v53[16 * v56 - 16];
        v89 = *v88;
        a3 = v56;
        v90 = &v53[16 * v56];
        v91 = *(v90 + 1);
        sub_100865604(*v114 + *(v112 + 72) * *v88, *v114 + *(v112 + 72) * *v90, *v114 + *(v112 + 72) * v91, v113);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v91 < v89)
        {
          goto LABEL_112;
        }

        v5 = *(i + 16);
        if (a3 > v5)
        {
          goto LABEL_113;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        if (a3 >= v5)
        {
          goto LABEL_114;
        }

        v52 = v5 - 1;
        sub_1003090FC(v90 + 16, v5 - 1 - a3, v90);
        v19 = i;
        *(i + 16) = v5 - 1;
        v92 = v5 > 2;
        v5 = 0;
        v16 = v110;
        if (!v92)
        {
          goto LABEL_97;
        }
      }

      v63 = &v53[16 * v52];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_115;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_116;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_118;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_121;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = *(v57 + 1);
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_129;
        }

        if (v61 < v87)
        {
          v56 = v52 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v17 = v114[1];
    v18 = v116;
    if (v116 >= v17)
    {
      goto LABEL_100;
    }
  }

  v39 = v20 + v104;
  if (__OFADD__(v20, v104))
  {
    goto LABEL_133;
  }

  if (v39 >= v38)
  {
    v39 = v114[1];
  }

  if (v39 < v20)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v21 == v39)
  {
    goto LABEL_47;
  }

  i = v19;
  v103 = v5;
  a3 = *v114;
  v40 = *(v112 + 72);
  v41 = *v114 + v40 * (v21 - 1);
  v42 = v20;
  v43 = -v40;
  v105 = v42;
  v44 = v42 - v21;
  v107 = v40;
  v108 = v39;
  v45 = a3 + v21 * v40;
LABEL_40:
  v116 = v21;
  v46 = v45;
  v111 = v44;
  v113 = v41;
  v47 = v41;
  while (1)
  {
    sub_1008649E4(v46, v16);
    sub_1008649E4(v47, v13);
    v48 = *v16;
    v49 = *v13;
    sub_100865AA8(v13, type metadata accessor for DebugLocationManager.DebugLocation);
    sub_100865AA8(v16, type metadata accessor for DebugLocationManager.DebugLocation);
    if (v49 >= v48)
    {
LABEL_45:
      v21 = v116 + 1;
      v41 = v113 + v107;
      v44 = v111 - 1;
      v45 += v107;
      if (v116 + 1 == v108)
      {
        v21 = v108;
        v5 = v103;
        v19 = i;
        v20 = v105;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!a3)
    {
      break;
    }

    v50 = v117;
    sub_10068EFE8(v46, v117);
    swift_arrayInitWithTakeFrontToBack();
    sub_10068EFE8(v50, v47);
    v47 += v43;
    v46 += v43;
    v37 = __CFADD__(v44++, 1);
    if (v37)
    {
      goto LABEL_45;
    }
  }

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
}

void sub_100865604(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for DebugLocationManager.DebugLocation();
  __chkstk_darwin(v52);
  v10 = (v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (v46 - v12);
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v16 = a2 - a1;
  v17 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v46[1] = v4;
  v20 = v16 / v15;
  v55 = a1;
  v54 = a4;
  v21 = v18 / v15;
  if (v16 / v15 >= v18 / v15)
  {
    v50 = a1;
    v48 = v10;
    sub_1006A087C(a2, v18 / v15, a4);
    v28 = a4 + v21 * v15;
    v29 = -v15;
    v30 = v28;
    v31 = a3;
    v49 = v29;
LABEL_37:
    v51 = a2 + v29;
    v32 = v31;
    v46[0] = v30;
    while (1)
    {
      if (v28 <= a4)
      {
        v55 = a2;
        v53 = v30;
        goto LABEL_59;
      }

      if (a2 <= v50)
      {
        break;
      }

      v47 = v30;
      v33 = a2;
      v34 = a4;
      v31 = v32 + v49;
      v35 = v28 + v49;
      v36 = v28;
      sub_1008649E4(v28 + v49, v13);
      v37 = v13;
      v38 = v48;
      sub_1008649E4(v51, v48);
      v39 = *v37;
      v40 = *v38;
      v41 = v38;
      v13 = v37;
      sub_100865AA8(v41, type metadata accessor for DebugLocationManager.DebugLocation);
      sub_100865AA8(v37, type metadata accessor for DebugLocationManager.DebugLocation);
      if (v40 < v39)
      {
        v43 = v32 < v33 || v31 >= v33;
        a4 = v34;
        if (v43)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v47;
          v29 = v49;
          v28 = v36;
        }

        else
        {
          v30 = v47;
          v17 = v32 == v33;
          v44 = v51;
          a2 = v51;
          v29 = v49;
          v28 = v36;
          if (!v17)
          {
            v45 = v47;
            swift_arrayInitWithTakeBackToFront();
            v28 = v36;
            a2 = v44;
            v30 = v45;
          }
        }

        goto LABEL_37;
      }

      v42 = v32 < v36 || v31 >= v36;
      a4 = v34;
      if (v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        v32 = v31;
        v28 = v35;
        v30 = v35;
        a2 = v33;
      }

      else
      {
        v30 = v35;
        v17 = v36 == v32;
        v32 = v31;
        v28 = v35;
        a2 = v33;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v32 = v31;
          v28 = v35;
          v30 = v35;
        }
      }
    }

    v55 = a2;
    v53 = v46[0];
  }

  else
  {
    sub_1006A087C(a1, v16 / v15, a4);
    v22 = a4 + v20 * v15;
    v53 = v22;
    while (a4 < v22 && a2 < a3)
    {
      sub_1008649E4(a2, v13);
      sub_1008649E4(a4, v10);
      v24 = *v13;
      v25 = *v10;
      sub_100865AA8(v10, type metadata accessor for DebugLocationManager.DebugLocation);
      sub_100865AA8(v13, type metadata accessor for DebugLocationManager.DebugLocation);
      if (v25 >= v24)
      {
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v54 = a4 + v15;
        a4 += v15;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      a1 += v15;
      v55 = a1;
    }
  }

LABEL_59:
  sub_10030901C(&v55, &v54, &v53);
}

uint64_t sub_100865A44()
{
  v1 = *(type metadata accessor for DebugLocationManager.DebugLocation() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100864268(v2, v3);
}

uint64_t sub_100865AA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100865B04(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2928 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2938 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2930 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2920 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2918 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_100865C70(char a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v79 = &v74 - v10;
  v11 = sub_10022C350(&qword_100CA5008);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v74 - v13;
  v15 = type metadata accessor for LocationComponentViewModel();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  __chkstk_darwin(v24);
  v26 = &v74 - v25;
  v27 = sub_10022C350(&qword_100CAC7F8);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  v32 = &v74 - v31;
  __chkstk_darwin(v33);
  v35 = &v74 - v34;
  v36 = sub_100865B04(a1, a2);
  v37 = OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v37, v14, &qword_100CA5008);
  v38 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v14, 1, v38) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v39], v23, v40);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v23, v26, v41);
    sub_100566A5C(v36, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v26, v32, v43);
      v42 = 0;
      v44 = &v32[*(v6 + 20)];
      v45 = v82[1];
      *v44 = v82[0];
      *(v44 + 1) = v45;
      goto LABEL_7;
    }

    sub_1003169AC(v26, type metadata accessor for LocationComponentViewModel);
  }

  v42 = 1;
LABEL_7:
  v46 = v76;
  sub_10001B350(v32, v42, 1, v6);
  sub_1003168DC(v32, v35);
  sub_10001B350(v46, 1, 1, v6);
  sub_10001BD64();
  sub_10031694C(v47 + v48, v20, v49);
  sub_100566A94(v36, v84);
  v50 = v77;
  if (v85 & 1) != 0 || (sub_100011474(), v51 = v79, sub_1001B6FB0(v20, v79, v52), v53 = (v51 + *(v6 + 20)), v54 = v84[1], *v53 = v84[0], v53[1] = v54, sub_100035AD0(v35, v50, &qword_100CAC7F8), sub_10001BD64(), v57 = v75, sub_10031694C(v55 + v56, v75, v58), sub_100566AB0(v36, v86), v59 = v80, (v87))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v57, v59, v60);
    v61 = (v59 + *(v6 + 20));
    v62 = v86[1];
    *v61 = v86[0];
    v61[1] = v62;
    sub_10001BD64();
    v65 = v78;
    sub_10031694C(v63 + v64, v78, v66);
    sub_100566AE8(v36, v88);
    if ((v89 & 1) == 0)
    {

      sub_100011474();
      v67 = v65;
      v68 = v81;
      sub_1001B6FB0(v67, v81, v69);
      v70 = (v68 + *(v6 + 20));
      v71 = v88[1];
      *v70 = v88[0];
      v70[1] = v71;
      v72 = sub_100924C14(v46, v51, v50, v59, v68);
      sub_1000180EC(v35, &qword_100CAC7F8);
      return v72;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100866280(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v116 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v121 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v16 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_nextHourPrecipitation, v21 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v24 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v118 = v13 + 2 * v14;
    v119 = v14;
    v30 = v14;
    v31 = swift_allocObject();
    v122 = xmmword_100A2D320;
    *(v31 + 16) = xmmword_100A2D320;
    v32 = a1;
    v33 = *(a1 + 16);
    v34 = v32;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v31 + v13 + v30, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v35;
    *(v12 + 144) = v36;
    v120 = v15;
    v37 = swift_allocObject();
    sub_1000056EC(v37);
    v39 = v38 + v13;
    v40 = *(v34 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v39 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v41;
    *(v12 + 168) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v13;
    v46 = v121;
    v47 = *(v121 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v48 = v119;
    sub_10031694C(v47 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v49;
    *(v12 + 192) = v50;
    v51 = sub_10000C998();
    sub_1000056EC(v51);
    v53 = v52 + v13;
    v54 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v53 + v48;
    v56 = v48;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 200) = sub_1001B38A0(v31);
    *(v12 + 208) = v57;
    *(v12 + 216) = v58;
    v59 = sub_10000C998();
    sub_100003E18(v59);
    v61 = v60 + v13;
    v62 = *(v46 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v13, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 224) = sub_1001B38A0(v59);
    *(v12 + 232) = v63;
    *(v12 + 240) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v65 = sub_10022C350(&qword_100CAC7F0);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v70 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v71, v70 + v66, v72);
    *(v12 + 32) = sub_1001B38A0(v70);
    *(v12 + 40) = v73;
    *(v12 + 48) = v74;
    sub_100016B54();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_nextHourPrecipitation, v70 + v66, v7);
    *(v12 + 56) = sub_1001B38A0(v70);
    *(v12 + 64) = v76;
    *(v12 + 72) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v70 + v66, v7);
    *(v12 + 80) = sub_1001B38A0(v70);
    *(v12 + 88) = v79;
    *(v12 + 96) = v80;
    sub_100016B54();
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v70 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v82;
    *(v12 + 120) = v83;
    sub_100016B54();
    v120 = v69;
    v84 = swift_allocObject();
    sub_1000056EC(v84);
    sub_10031694C(v9, v85 + v66, v7);
    *(v12 + 128) = sub_1001B38A0(v70);
    *(v12 + 136) = v86;
    *(v12 + 144) = v87;
    v88 = v67;
    v119 = v68;
    v89 = v66 + 2 * v67;
    v90 = swift_allocObject();
    v116 = xmmword_100A2D320;
    *(v90 + 16) = xmmword_100A2D320;
    *&v122 = v9;
    v91 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v117 = v88;
    sub_10031694C(v91 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v90 + v66 + v88, v7);
    *(v12 + 152) = sub_1001B38A0(v90);
    *(v12 + 160) = v92;
    *(v12 + 168) = v93;
    v118 = v89;
    v94 = swift_allocObject();
    *(v94 + 16) = v116;
    v95 = v121;
    v96 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v94 + v66 + v88, v7);
    *(v12 + 176) = sub_1001B38A0(v94);
    *(v12 + 184) = v97;
    *(v12 + 192) = v98;
    v99 = swift_allocObject();
    *(v99 + 16) = 2;
    *(v99 + 24) = 4;
    v100 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v101 = v117;
    sub_10031694C(v100 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v99 + v66 + v117, v7);
    *(v12 + 200) = sub_1001B38A0(v99);
    *(v12 + 208) = v102;
    *(v12 + 216) = v103;
    v104 = swift_allocObject();
    v105 = sub_100017A70(v104) + v66;
    v106 = v121;
    v107 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v105 + v101, v7);
    *(v12 + 224) = sub_1001B38A0(v104);
    *(v12 + 232) = v108;
    *(v12 + 240) = v109;
    v110 = swift_allocObject();
    v111 = sub_100017A70(v110) + v66;
    v112 = *(v106 + 16);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v111, v7);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v111 + v101, v7);
    *(v12 + 248) = sub_1001B38A0(v110);
    *(v12 + 256) = v113;
    *(v12 + 264) = v114;
    sub_1003169AC(v122, v7);
  }

  return v12;
}

void sub_100866B40()
{
  v34[0] = xmmword_100A2C3F0;
  v34[1] = xmmword_100A3BBF0;
  v33[0] = xmmword_100A3BB70;
  v33[1] = xmmword_100A3BBA0;
  v35 = v34;
  v36 = v33;
  v32[0] = xmmword_100A3BBB0;
  v32[1] = xmmword_100A3BC00;
  v31[0] = xmmword_100A3BB70;
  v31[1] = xmmword_100A3BBD0;
  v37 = v32;
  v38 = v31;
  v30[0] = xmmword_100A2C3F0;
  v30[1] = xmmword_100A3BC00;
  v29[0] = xmmword_100A3BB70;
  v29[1] = xmmword_100A41B80;
  v39 = v30;
  v40 = v29;
  v28[0] = xmmword_100A3BBB0;
  v28[1] = xmmword_100A3BBF0;
  v27[0] = xmmword_100A3BB70;
  v27[1] = xmmword_100A2C3F0;
  v41 = v28;
  v42 = v27;
  v26[0] = xmmword_100A2C3F0;
  v26[1] = xmmword_100A3BBC0;
  v25[0] = xmmword_100A2C3F0;
  v25[1] = xmmword_100A3BC10;
  v43 = v26;
  v44 = v25;
  v24[0] = xmmword_100A3BB70;
  v24[1] = xmmword_100A3BBB0;
  *(&v22 + 1) = 2;
  v23 = xmmword_100A3BC20;
  sub_10003C6E4(v24, v12, v13, v14, v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19, v20, v21, 1);
  v16 = v0;
  v17 = v1;
  v45 = v2;
  v46 = &v16;
  sub_10004EBF0(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  qword_100D91188 = v11;
}

void sub_100866C4C()
{
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC00;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBA0;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC20;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3BBD0;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BC00;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A2C3F0;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC10;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC30;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BB80;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BB80;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC10;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC30;
  v27 = v2;
  v28 = v1;
  sub_100559E60();
  qword_100D91190 = v0;
}

void sub_100866D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BB80;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBA0;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BB80;
  v19[0] = 0;
  v19[1] = 4;
  v20 = xmmword_100A3BBD0;
  v26 = v21;
  v27 = v19;
  v18[0] = xmmword_100A3BBD0;
  v18[1] = xmmword_100A3BC50;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BB70;
  v28 = v18;
  v29 = v17;
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BC50;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v30 = v16;
  v31 = v15;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BB80;
  v13[0] = xmmword_100A3BBB0;
  v13[1] = xmmword_100A3BB80;
  v32 = v14;
  v33 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC60;
  v34 = v12;
  v35 = v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC40;
  v36 = v10;
  v37 = v9;
  sub_10004EBF0(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D91198 = v8;
}

void sub_100866E74()
{
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BC50;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v17 = v16;
  v18 = v15;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC50;
  v11 = 0;
  v12 = xmmword_100A3BC70;
  v13 = 2;
  v19 = v14;
  v20 = &v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v21 = v10;
  v22 = v9;
  v8[0] = xmmword_100A2D320;
  v8[1] = xmmword_100A3BBB0;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BC50;
  v23 = v8;
  v24 = v7;
  v6[0] = xmmword_100A3BBB0;
  v6[1] = xmmword_100A3BC50;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v25 = v6;
  v26 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v27 = v4;
  v28 = v3;
  v2[0] = xmmword_100A3BC40;
  v2[1] = xmmword_100A3BBD0;
  v1[0] = xmmword_100A3BBD0;
  v1[1] = xmmword_100A3BBD0;
  v29 = v2;
  v30 = v1;
  sub_100559E60();
  qword_100D911A0 = v0;
}

void sub_100866F90()
{
  v37[0] = xmmword_100A3BC50;
  v37[1] = xmmword_100A3BC60;
  v35 = 1;
  v36 = 4;
  v38 = v37;
  v39 = &v34;
  v33[0] = xmmword_100A3BC60;
  v33[1] = xmmword_100A3BC40;
  v34 = xmmword_100A3BB70;
  v32[0] = xmmword_100A41B90;
  v32[1] = xmmword_100A3BBB0;
  v40 = v33;
  v41 = v32;
  v31[0] = xmmword_100A3BBD0;
  v31[1] = xmmword_100A3BC60;
  v30[0] = xmmword_100A3BC90;
  v30[1] = xmmword_100A3BD20;
  v42 = v31;
  v43 = v30;
  v29[0] = xmmword_100A3BB70;
  v29[1] = xmmword_100A3BC60;
  v28[0] = xmmword_100A2D320;
  v28[1] = xmmword_100A2C3F0;
  v44 = v29;
  v45 = v28;
  v27[0] = xmmword_100A3BC60;
  v27[1] = xmmword_100A3BC60;
  v26[0] = xmmword_100A3BC40;
  v26[1] = xmmword_100A3BC40;
  v46 = v27;
  v47 = v26;
  v25[0] = xmmword_100A3BB70;
  v25[1] = xmmword_100A3BBB0;
  *(&v23 + 1) = 3;
  v24 = xmmword_100A3BC40;
  sub_10003C6E4(v25, v13, v14, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20, v21, v22, 2);
  v17 = v1;
  v18 = v0;
  v48 = v2;
  v49 = &v17;
  sub_10004EBF0(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  qword_100D911A8 = v12;
}

uint64_t sub_1008670A8(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v33 = v6;
  __chkstk_darwin(v7);
  sub_100003878();
  v32 = v8;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = type metadata accessor for LocationViewComponent();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CA5008);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v30 - v24;

  sub_1005D71C4(v26, a2);
  v31 = v27;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather35LocationNoAqiSevereNhpConfiguration8_Storage_map, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10001B350(v25, 0, 1, v4);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather35LocationNoAqiSevereNhpConfiguration8_Storage_nextHourPrecipitation, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather35LocationNoAqiSevereNhpConfiguration8_Storage_severeAlert, v18, type metadata accessor for LocationViewComponent);
  a2(v18);
  sub_1003169AC(v18, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v25, v22, &qword_100CA5008);
  sub_10031694C(v14, v32, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v11, v33, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for NoAqiSevereNhpContent._Storage(0);
  swift_allocObject();
  v28 = sub_1002D44DC(v31);
  sub_1003169AC(v11, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v25, &qword_100CA5008);
  return v28;
}

uint64_t sub_1008673F0(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_10068A650(a2, a3);
  }

  v7 = v3[5];
  v8 = v3[6];
  sub_1000161C0(v3 + 2, v7);
  return (*(v8 + 16))(a2, a3, v7, v8);
}

uint64_t sub_10086749C()
{
  result = type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10086750C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
  __chkstk_darwin(v4);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CDF490);
  sub_1000037C4();
  v17 = v7;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for FeelsLikeComponent();
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_100867964();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v18;
    sub_1008679B8(&qword_100CDF4A0);
    v15 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v10, v6);
    sub_10012A688(v15, v13, type metadata accessor for FeelsLikeComponentPreprocessedDataModel);
    sub_10012A688(v13, v14, type metadata accessor for FeelsLikeComponent);
  }

  return sub_100006F14(a1);
}

uint64_t sub_100867760(void *a1)
{
  v2 = sub_10022C350(&qword_100CDF4A8);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_100867964();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
  sub_1008679B8(&qword_100CDF4B0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1008678B8(uint64_t a1)
{
  v2 = sub_100867964();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008678F4(uint64_t a1)
{
  v2 = sub_100867964();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100867964()
{
  result = qword_100CDF498;
  if (!qword_100CDF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDF498);
  }

  return result;
}

uint64_t sub_1008679B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeelsLikeComponent.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100867AAC()
{
  result = qword_100CDF4B8;
  if (!qword_100CDF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDF4B8);
  }

  return result;
}

unint64_t sub_100867B04()
{
  result = qword_100CDF4C0;
  if (!qword_100CDF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDF4C0);
  }

  return result;
}

unint64_t sub_100867B5C()
{
  result = qword_100CDF4C8;
  if (!qword_100CDF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDF4C8);
  }

  return result;
}

uint64_t sub_100867BB0()
{
  v1 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  if (*(v0 + 32))
  {
    v8 = *(v0 + 32);
  }

  else
  {
    (*(v3 + 104))(v7, enum case for Font.TextStyle.largeTitle(_:), v1);
    static Font.Weight.medium.getter();
    v8 = static Font.system(_:weight:)();
    (*(v3 + 8))(v7, v1);
    *(v0 + 32) = v8;
  }

  return v8;
}

uint64_t sub_100867CC8()
{
  v1 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  if (*(v0 + 48))
  {
    v15 = *(v0 + 48);
  }

  else
  {
    (*(v10 + 104))(v14, enum case for Font.TextStyle.largeTitle(_:), v8);
    static Font.Weight.medium.getter();
    static Font.system(_:weight:)();
    (*(v10 + 8))(v14, v8);
    (*(v3 + 104))(v7, enum case for Font.Leading.tight(_:), v1);
    v15 = Font.leading(_:)();

    (*(v3 + 8))(v7, v1);
    *(v0 + 48) = v15;
  }

  return v15;
}

uint64_t sub_100867EA4()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_100867BB0();
    *(v0 + 80) = v1;
  }

  return v1;
}

double sub_100867F00()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = 0x3FF0000000000000;
  *(v0 + 104) = 0;
  return 1.0;
}

void sub_100867FB4()
{
  type metadata accessor for VisibilityChartHeaderStyle();
  v0 = swift_allocObject();
  sub_1004669B4();
  qword_100D911B8 = v0;
}

uint64_t sub_100868040(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NextHourPrecipitationComponentViewModel();

  return static NextHourPrecipitationChartViewModel.== infix(_:_:)();
}

uint64_t type metadata accessor for ConditionDetailChartFooterView()
{
  result = qword_100CDF768;
  if (!qword_100CDF768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100868134()
{
  result = type metadata accessor for ConditionDetailChartFooterViewModel();
  if (v1 <= 0x3F)
  {
    result = sub_1004DCED0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008681D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v49[1] = sub_10022C350(&qword_100CDF7A0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v49 - v7;
  v50 = type metadata accessor for TemperatureChartPickerView(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = type metadata accessor for TemperatureChartKind();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_1000037D8();
  v17 = v16 - v15;
  v49[2] = sub_10022C350(&qword_100CDF7A8);
  sub_1000037E8();
  __chkstk_darwin(v18);
  v20 = v49 - v19;
  type metadata accessor for ConditionDetailChartFooterViewModel();
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = (v23 - v22);
  sub_100868768(v2, v23 - v22, type metadata accessor for ConditionDetailChartFooterViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v17, v24, v13);
    (*(v14 + 16))(v12, v17, v13);
    v25 = type metadata accessor for ConditionDetailChartFooterView();
    sub_100035B30(v2 + *(v25 + 20), v12 + *(v50 + 20));
    sub_10001B350(v8, 1, 1, v13);
    sub_100868690(v8, v5);
    State.init(wrappedValue:)();
    sub_100868700(v8);
    sub_100868768(v12, v20, type metadata accessor for TemperatureChartPickerView);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA6438);
    sub_100287740();
    sub_1008687C8();
    _ConditionalContent<>.init(storage:)();
    sub_100868820(v12);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    v27 = v24[1];
    v52 = *v24;
    v53 = v27;
    sub_10002D5A4();
    v28 = Text.init<A>(_:)();
    v30 = v29;
    v32 = v31;
    static Font.footnote.getter();
    v33 = Text.font(_:)();
    v35 = v34;
    v37 = v36;

    sub_10010CD64(v28, v30, v32 & 1);

    v52 = static Color.secondary.getter();
    v38 = Text.foregroundStyle<A>(_:)();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_10010CD64(v33, v35, v37 & 1);

    LOBYTE(v28) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v52) = v42 & 1;
    v54 = 0;
    *v20 = v38;
    *(v20 + 1) = v40;
    v20[16] = v42 & 1;
    *(v20 + 3) = v44;
    v20[32] = v28;
    *(v20 + 5) = v45;
    *(v20 + 6) = v46;
    *(v20 + 7) = v47;
    *(v20 + 8) = v48;
    v20[72] = 0;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA6438);
    sub_100287740();
    sub_1008687C8();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100868690(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CDF7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100868700(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CDF7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100868768(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1008687C8()
{
  result = qword_100CDF7B0;
  if (!qword_100CDF7B0)
  {
    type metadata accessor for TemperatureChartPickerView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDF7B0);
  }

  return result;
}

uint64_t sub_100868820(uint64_t a1)
{
  v2 = type metadata accessor for TemperatureChartPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10086887C()
{
  result = qword_100CDF7B8;
  if (!qword_100CDF7B8)
  {
    sub_10022E824(&qword_100CDF7C0);
    sub_100287740();
    sub_1008687C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDF7B8);
  }

  return result;
}

uint64_t sub_100868930@<X0>(uint64_t a1@<X8>)
{
  v1 = type metadata accessor for WindComponentViewModel();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000038E4();
  v62 = v3;
  sub_1000038CC();
  v4 = type metadata accessor for UVIndexComponentViewModel();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000038E4();
  v61 = v6;
  sub_1000038CC();
  type metadata accessor for SunriseSunsetViewModel();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for PressureComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  type metadata accessor for MoonComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for AttributeContainer();
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_1000038E4();
  v18 = sub_1000038CC();
  type metadata accessor for FeelsLikeComponentViewModel(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  v23 = type metadata accessor for AirQualityComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  v27 = v26 - v25;
  type metadata accessor for LocationComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = (v30 - v29);
  sub_1001B4294(v64, v30 - v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 3u:
    case 5u:
    case 7u:
    case 8u:
    case 9u:
    case 0xDu:
      sub_1001B42FC(v31, type metadata accessor for LocationComponentViewModel);
      goto LABEL_3;
    case 2u:
      v35 = sub_100024B38();
      sub_10086A570(v35, v22, v36);

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      sub_100013DB0();
      sub_1001B42FC(v22, v37);
      v32 = type metadata accessor for AttributedString();
      v33 = a1;
      goto LABEL_18;
    case 4u:
      sub_100386FA4(v31[1], v31[2]);

      sub_100017F3C();
      AttributedString.init(_:attributes:)();
      v32 = type metadata accessor for AttributedString();
      v33 = a1;
      goto LABEL_18;
    case 6u:
      v58 = sub_100024B38();
      sub_10086A570(v58, v15, v59);

      sub_100017F3C();
      sub_100015024();
      v54 = type metadata accessor for MoonComponentViewModel;
      v55 = v15;
      goto LABEL_16;
    case 0xAu:

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();

      v32 = type metadata accessor for AttributedString();
      v33 = a1;
      goto LABEL_18;
    case 0xBu:
      v52 = sub_100024B38();
      sub_10086A570(v52, v11, v53);

      sub_100017F3C();
      sub_100015024();
      v54 = type metadata accessor for PressureComponentViewModel;
      v55 = v11;
      goto LABEL_16;
    case 0xCu:
    case 0x13u:
LABEL_3:
      v32 = type metadata accessor for AttributedString();
      v33 = a1;
      v34 = 1;
      return sub_10001B350(v33, v34, 1, v32);
    case 0xEu:
      v38 = sub_100020B1C();
      v39(v38);
      SunriseSunsetViewModel.accessibilityDescription.getter();
      sub_100017F3C();
      sub_100015024();
      v40 = sub_100020B1C();
      v41(v40);
      goto LABEL_17;
    case 0xFu:
      memcpy(__dst, v31, 0xB0uLL);

      sub_100017F3C();
      sub_100015024();
      sub_100470A18(__dst);
      goto LABEL_17;
    case 0x10u:
      v42 = sub_100024B38();
      v43 = v61;
      sub_10086A570(v42, v61, v44);
      sub_1009A0F10();
      sub_100017F3C();
      sub_100015024();
      v45 = type metadata accessor for UVIndexComponentViewModel;
      goto LABEL_13;
    case 0x11u:

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();

      v32 = type metadata accessor for AttributedString();
      v33 = a1;
      goto LABEL_18;
    case 0x12u:
      v56 = sub_100024B38();
      v43 = v62;
      sub_10086A570(v56, v62, v57);

      sub_100017F3C();
      sub_100015024();
      v45 = type metadata accessor for WindComponentViewModel;
LABEL_13:
      v54 = v45;
      v55 = v43;
LABEL_16:
      sub_1001B42FC(v55, v54);
LABEL_17:
      v32 = type metadata accessor for AttributedString();
      v33 = v22;
LABEL_18:
      v34 = 0;
      break;
    default:
      v46 = sub_100024B38();
      sub_10086A570(v46, v27, v47);
      v48 = *(v23 + 60);
      v49 = type metadata accessor for AttributedString();
      sub_1000037E8();
      (*(v50 + 16))(a1, v27 + v48, v49);
      sub_10004EC0C();
      sub_1001B42FC(v27, v51);
      v33 = a1;
      v34 = 0;
      v32 = v49;
      break;
  }

  return sub_10001B350(v33, v34, 1, v32);
}

uint64_t sub_100869090(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  type metadata accessor for LocationComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  sub_1001B4294(v4, &v18 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10001FAA0();
  sub_1001B42FC(v13, v15);
  if (EnumCaseMultiPayload == 5 && (a3 & 1) != 0)
  {
    return 0;
  }

  if (a1 == 3 || *(a2 + 8) == 1)
  {
    return 1;
  }

  if (qword_100CA24D0 != -1)
  {
    swift_once();
  }

  if (byte_100D90788 != 1)
  {
    return 1;
  }

  type metadata accessor for DisplayMetrics();
  if (DynamicTypeSize.isAccessibilitySize.getter())
  {
    return 1;
  }

  if ((byte_100D90788 != 1 || (DynamicTypeSize.isAccessibilitySize.getter() & 1) != 0 || !sub_10029C3DC(*a2) || *(a2 + 17) != 1) && (sub_1004B5750() & 1) == 0)
  {
    return 1;
  }

  sub_1001B4294(v4, v10);
  sub_100003984();
  v16 = swift_getEnumCaseMultiPayload() != 5;
  sub_1001B42FC(v10, type metadata accessor for LocationComponentViewModel);
  return v16;
}

uint64_t sub_100869268(uint64_t a1, uint64_t a2)
{
  v268 = a1;
  v269 = a2;
  v2 = type metadata accessor for WindComponentViewModel();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000038E4();
  v252 = v4;
  sub_1000038CC();
  v5 = type metadata accessor for UVIndexComponentViewModel();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000038E4();
  v250 = v7;
  sub_1000038CC();
  type metadata accessor for SunriseSunsetViewModel();
  sub_1000037C4();
  v266 = v9;
  v267 = v8;
  __chkstk_darwin(v8);
  sub_1000038E4();
  v249 = v10;
  sub_1000038CC();
  v11 = type metadata accessor for SevereAlertComponentViewModel();
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_1000038E4();
  v248 = v13;
  sub_1000038CC();
  v14 = type metadata accessor for PressureComponentViewModel();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_1000038E4();
  v247 = v16;
  sub_1000038CC();
  v237 = type metadata accessor for NotificationsOptInComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v251 = v18;
  sub_1000038CC();
  HourPrecipitationComponentViewModel = type metadata accessor for NextHourPrecipitationComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v246 = v20;
  v21 = sub_1000038CC();
  v22 = type metadata accessor for NewsArticleComponentViewModel(v21);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_1000038E4();
  v245 = v24;
  sub_1000038CC();
  v25 = type metadata accessor for MoonComponentViewModel();
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_1000038E4();
  v244 = v27;
  sub_1000038CC();
  v28 = type metadata accessor for MapComponentViewModel();
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_1000038E4();
  v243 = v30;
  v31 = sub_1000038CC();
  v32 = type metadata accessor for HourlyForecastComponentViewModel(v31);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_1000038E4();
  v242 = v34;
  v35 = sub_1000038CC();
  v36 = type metadata accessor for FeelsLikeComponentViewModel(v35);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  sub_1000038E4();
  v241 = v38;
  v39 = sub_1000038CC();
  v40 = type metadata accessor for DailyForecastComponentViewModel(v39);
  v41 = sub_100003810(v40);
  __chkstk_darwin(v41);
  sub_1000038E4();
  v240 = v42;
  sub_1000038CC();
  v43 = type metadata accessor for AirQualityComponentViewModel();
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_1000038E4();
  v238 = v45;
  sub_1000038CC();
  type metadata accessor for LocationComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v46);
  v264 = (&v237 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v259 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v263 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v257 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v262 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v261 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v256 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v258 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v253 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v265 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v260 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  sub_100003878();
  v255 = v69;
  sub_10000386C();
  __chkstk_darwin(v70);
  sub_100003878();
  v254 = v71;
  sub_10000386C();
  __chkstk_darwin(v72);
  v74 = &v237 - v73;
  __chkstk_darwin(v75);
  v77 = &v237 - v76;
  __chkstk_darwin(v78);
  v80 = &v237 - v79;
  __chkstk_darwin(v81);
  v83 = &v237 - v82;
  __chkstk_darwin(v84);
  v86 = &v237 - v85;
  __chkstk_darwin(v87);
  v89 = &v237 - v88;
  v90 = sub_10022C350(&qword_100CDF908);
  v91 = sub_100003810(v90);
  __chkstk_darwin(v91);
  v93 = &v237 - v92;
  v95 = &v237 + *(v94 + 56) - v92;
  sub_1001B4294(v268, &v237 - v92);
  v268 = v95;
  sub_1001B4294(v269, v95);
  v269 = v93;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v157 = sub_1000233C0();
      sub_1001B4294(v157, v86);
      if (sub_100004CA0() == 1)
      {
        v158 = sub_1000167A4();
        v159 = v240;
        sub_10086A570(v158, v240, v160);
        v106 = sub_1006967BC(v86, v159);
        v143 = type metadata accessor for DailyForecastComponentViewModel;
        sub_1001B42FC(v159, type metadata accessor for DailyForecastComponentViewModel);
        v144 = v86;
        goto LABEL_62;
      }

      v214 = type metadata accessor for DailyForecastComponentViewModel;
      v215 = v86;
      goto LABEL_97;
    case 2u:
      v139 = sub_1000233C0();
      sub_1001B4294(v139, v83);
      if (sub_100004CA0() == 2)
      {
        v140 = sub_1000167A4();
        v141 = v241;
        sub_10086A570(v140, v241, v142);
        v106 = sub_1003CE238();
        v143 = type metadata accessor for FeelsLikeComponentViewModel;
        sub_1001B42FC(v141, type metadata accessor for FeelsLikeComponentViewModel);
        v144 = v83;
        goto LABEL_62;
      }

      sub_100013DB0();
      v215 = v83;
      goto LABEL_97;
    case 3u:
      v147 = sub_1000233C0();
      sub_1001B4294(v147, v80);
      v148 = v268;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v149 = v242;
        sub_10086A570(v148, v242, type metadata accessor for HourlyForecastComponentViewModel);
        sub_1005FEA54();
        v106 = v150;
        sub_1001B42FC(v149, type metadata accessor for HourlyForecastComponentViewModel);
        v144 = v80;
        v151 = type metadata accessor for HourlyForecastComponentViewModel;
        goto LABEL_63;
      }

      v214 = type metadata accessor for HourlyForecastComponentViewModel;
      v215 = v80;
      goto LABEL_97;
    case 4u:
      v119 = sub_1000233C0();
      sub_1001B4294(v119, v77);
      v121 = *(v77 + 1);
      v120 = *(v77 + 2);
      v122 = v268;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_89;
      }

      if (*v77 != *v122)
      {

        goto LABEL_126;
      }

      if (v121 == *(v122 + 8) && v120 == *(v122 + 16))
      {

        goto LABEL_112;
      }

      v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v124)
      {
        goto LABEL_112;
      }

      goto LABEL_126;
    case 5u:
      v181 = sub_1000233C0();
      sub_1001B4294(v181, v74);
      if (sub_100004CA0() == 5)
      {
        v182 = sub_1000167A4();
        v183 = v243;
        sub_10086A570(v182, v243, v184);
        v106 = sub_1003C7DB4(v74, v183);
        v143 = type metadata accessor for MapComponentViewModel;
        sub_1001B42FC(v183, type metadata accessor for MapComponentViewModel);
        v144 = v74;
        goto LABEL_62;
      }

      v214 = type metadata accessor for MapComponentViewModel;
      v215 = v74;
      goto LABEL_97;
    case 6u:
      v190 = sub_1000233C0();
      v99 = v254;
      sub_1001B4294(v190, v254);
      if (sub_100004CA0() == 6)
      {
        v191 = sub_1000167A4();
        v101 = v244;
        sub_10086A570(v191, v244, v192);
        v193 = sub_100003984();
        v106 = sub_1003B3618(v193, v194);
        v107 = type metadata accessor for MoonComponentViewModel;
        goto LABEL_61;
      }

      v213 = type metadata accessor for MoonComponentViewModel;
      goto LABEL_96;
    case 7u:
      v152 = sub_1000233C0();
      v99 = v255;
      sub_1001B4294(v152, v255);
      if (sub_100004CA0() == 7)
      {
        v153 = sub_1000167A4();
        v101 = v245;
        sub_10086A570(v153, v245, v154);
        v155 = sub_100003984();
        v106 = sub_1003545AC(v155, v156);
        v107 = type metadata accessor for NewsArticleComponentViewModel;
        goto LABEL_61;
      }

      v213 = type metadata accessor for NewsArticleComponentViewModel;
      goto LABEL_96;
    case 8u:
      v204 = sub_1000233C0();
      v99 = v260;
      sub_1001B4294(v204, v260);
      if (sub_100004CA0() != 8)
      {
        v213 = type metadata accessor for NextHourPrecipitationComponentViewModel;
        goto LABEL_96;
      }

      v205 = sub_1000167A4();
      v206 = v246;
      sub_10086A570(v205, v246, v207);
      v208 = *v99 == *v206 && v99[1] == v206[1];
      if (v208 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static NextHourPrecipitationChartViewModel.== infix(_:_:)())
      {
        sub_100069B7C();
        sub_1001B42FC(v206, v209);
        v210 = v99;
        v211 = v80;
        goto LABEL_111;
      }

      sub_100069B7C();
      sub_1001B42FC(v206, v220);
      v221 = v99;
      v222 = v80;
      goto LABEL_125;
    case 9u:
      v129 = sub_1000233C0();
      v130 = v265;
      sub_1001B4294(v129, v265);
      if (sub_100004CA0() != 9)
      {
        sub_10001CF84();
        v215 = v130;
        goto LABEL_97;
      }

      v131 = sub_1000167A4();
      v132 = v251;
      sub_10086A570(v131, v251, v133);
      sub_100020B1C();
      if ((static Location.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_123;
      }

      v134 = *(v237 + 20);
      v135 = *(v130 + v134) | (*(v130 + v134 + 2) << 16);
      v136 = *(v132 + v134) | (*(v132 + v134 + 2) << 16);
      v137 = *(v130 + v134);
      if (v137 == 2)
      {
        sub_10001CF84();
        sub_1001B42FC(v132, v227);
        if (v136 == 2)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (v137 == 3)
        {
          sub_10001CF84();
          sub_1001B42FC(v132, v138);
          if (v136 != 3)
          {
            goto LABEL_124;
          }

LABEL_110:
          sub_10001CF84();
          v210 = v130;
LABEL_111:
          sub_1001B42FC(v210, v211);
LABEL_112:
          sub_10001FAA0();
          v226 = v89;
          goto LABEL_113;
        }

        if ((v136 & 0xFE) != 2 && ((v136 ^ v135) & 1) == 0 && ((v136 & 0x100) == 0) != (v135 & 0x100) >> 8)
        {
          v228 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE2(v135));
          v230 = v229;
          if (v228 == PredictedLocationsAuthorizationState.rawValue.getter(SBYTE2(v136)) && v230 == v231)
          {

            sub_10001CF84();
            sub_1001B42FC(v132, v236);
          }

          else
          {
            sub_100003984();
            v233 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_10001CF84();
            sub_1001B42FC(v132, v234);
            if ((v233 & 1) == 0)
            {
              goto LABEL_124;
            }
          }

          goto LABEL_110;
        }

LABEL_123:
        sub_10001CF84();
        sub_1001B42FC(v132, v235);
      }

LABEL_124:
      sub_10001CF84();
      v221 = v130;
LABEL_125:
      sub_1001B42FC(v221, v222);
LABEL_126:
      sub_10001FAA0();
      v224 = v89;
LABEL_127:
      sub_1001B42FC(v224, v223);
LABEL_99:
      v106 = 0;
      return v106 & 1;
    case 0xAu:
      v202 = sub_1000233C0();
      v203 = v253;
      sub_1001B4294(v202, v253);
      memcpy(v270, v203, 0x70uLL);
      if (sub_100004CA0() == 10)
      {
        memcpy(v271, v203, 0x70uLL);
        v106 = sub_10051B804(v270, v271);
        sub_100428500(v270);
        sub_100428500(v271);
        goto LABEL_64;
      }

      sub_100428500(v270);
      goto LABEL_98;
    case 0xBu:
      v114 = sub_1000233C0();
      v99 = v258;
      sub_1001B4294(v114, v258);
      if (sub_100004CA0() == 11)
      {
        v115 = sub_1000167A4();
        v101 = v247;
        sub_10086A570(v115, v247, v116);
        v117 = sub_100003984();
        v106 = sub_1008B51D4(v117, v118);
        v107 = type metadata accessor for PressureComponentViewModel;
        goto LABEL_61;
      }

      v213 = type metadata accessor for PressureComponentViewModel;
      goto LABEL_96;
    case 0xCu:
      v125 = sub_1000233C0();
      v126 = v256;
      sub_1001B4294(v125, v256);
      if (sub_100004CA0() != 12)
      {
        goto LABEL_98;
      }

      v127 = *v126 ^ *v80;
      sub_10001FAA0();
      sub_1001B42FC(v89, v128);
      v106 = v127 ^ 1;
      return v106 & 1;
    case 0xDu:
      v185 = sub_1000233C0();
      v99 = v261;
      sub_1001B4294(v185, v261);
      if (sub_100004CA0() == 13)
      {
        v186 = sub_1000167A4();
        v101 = v248;
        sub_10086A570(v186, v248, v187);
        v188 = sub_100003984();
        v106 = sub_100502988(v188, v189);
        v107 = type metadata accessor for SevereAlertComponentViewModel;
        goto LABEL_61;
      }

      v213 = type metadata accessor for SevereAlertComponentViewModel;
      goto LABEL_96;
    case 0xEu:
      v108 = sub_1000233C0();
      v109 = v262;
      sub_1001B4294(v108, v262);
      if (sub_100004CA0() == 14)
      {
        v111 = v266;
        v110 = v267;
        v112 = v249;
        (*(v266 + 32))(v249, v80, v267);
        sub_100020B1C();
        v106 = static SunriseSunsetViewModel.== infix(_:_:)();
        v113 = *(v111 + 8);
        v113(v112, v110);
        v113(v109, v110);
        goto LABEL_64;
      }

      (*(v266 + 8))(v109, v267);
      goto LABEL_98;
    case 0xFu:
      v145 = sub_1000233C0();
      v146 = v257;
      sub_1001B4294(v145, v257);
      memcpy(v270, v146, sizeof(v270));
      if (sub_100004CA0() == 15)
      {
        memcpy(v271, v146, 0xB0uLL);
        v106 = sub_1004B7548(v270, v271);
        sub_100470A18(v270);
        sub_100470A18(v271);
        goto LABEL_64;
      }

      sub_100470A18(v270);
      goto LABEL_98;
    case 0x10u:
      v98 = sub_1000233C0();
      v99 = v263;
      sub_1001B4294(v98, v263);
      if (sub_100004CA0() == 16)
      {
        v100 = sub_1000167A4();
        v101 = v250;
        sub_10086A570(v100, v250, v102);
        v103 = sub_100003984();
        sub_1009A1130(v103, v104);
        v106 = v105;
        v107 = type metadata accessor for UVIndexComponentViewModel;
        goto LABEL_61;
      }

      v213 = type metadata accessor for UVIndexComponentViewModel;
      goto LABEL_96;
    case 0x11u:
      v161 = sub_1000233C0();
      v162 = v259;
      sub_1001B4294(v161, v259);
      v164 = *v162;
      v163 = v162[1];
      v166 = v162[2];
      v165 = v162[3];
      v168 = v162[4];
      v167 = v162[5];
      v169 = v268;
      if (swift_getEnumCaseMultiPayload() != 17)
      {

LABEL_89:

LABEL_98:
        sub_10086A508(v89);
        goto LABEL_99;
      }

      v170 = *v169;
      v171 = v169[1];
      v173 = v169[2];
      v172 = v169[3];
      v174 = v169[5];
      v267 = v169[4];
      v268 = v171;
      v175 = v164 == v170 && v163 == v171;
      v176 = v172;
      if (!v175 && (sub_100003984(), v177 = _stringCompareWithSmolCheck(_:_:expecting:)(), v172 = v176, (v177 & 1) == 0) || (v166 == v173 ? (v178 = v165 == v172) : (v178 = 0), !v178 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {

        goto LABEL_104;
      }

      if (v168 == v267 && v167 == v174)
      {

        goto LABEL_108;
      }

      v180 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v180 & 1) == 0)
      {
LABEL_104:
        sub_10001FAA0();
        v224 = v269;
        goto LABEL_127;
      }

LABEL_108:
      sub_10001FAA0();
      v226 = v269;
LABEL_113:
      sub_1001B42FC(v226, v225);
      v106 = 1;
      return v106 & 1;
    case 0x12u:
      v195 = sub_1000233C0();
      v99 = v264;
      sub_1001B4294(v195, v264);
      if (sub_100004CA0() == 18)
      {
        v196 = sub_1000167A4();
        v101 = v252;
        sub_10086A570(v196, v252, v197);
        v198 = sub_100003984();
        v106 = sub_1004B9FA8(v198, v199);
        v107 = type metadata accessor for WindComponentViewModel;
LABEL_61:
        v143 = v107;
        sub_1001B42FC(v101, v107);
        v144 = v99;
LABEL_62:
        v151 = v143;
LABEL_63:
        sub_1001B42FC(v144, v151);
LABEL_64:
        sub_10001FAA0();
        v201 = v89;
        goto LABEL_65;
      }

      v213 = type metadata accessor for WindComponentViewModel;
LABEL_96:
      v214 = v213;
      v215 = v99;
LABEL_97:
      sub_1001B42FC(v215, v214);
      goto LABEL_98;
    case 0x13u:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v89 = v269;
      if (EnumCaseMultiPayload == 19)
      {
        goto LABEL_112;
      }

      goto LABEL_98;
    default:
      v96 = v269;
      sub_1001B4294(v269, v89);
      if (sub_100004CA0())
      {
        sub_10004EC0C();
        sub_1001B42FC(v89, v97);
        v89 = v96;
        goto LABEL_98;
      }

      v217 = sub_1000167A4();
      v218 = v238;
      sub_10086A570(v217, v238, v219);
      v106 = sub_10065C008(v89, v218);
      sub_1001B42FC(v218, type metadata accessor for AirQualityComponentViewModel);
      sub_1001B42FC(v89, type metadata accessor for AirQualityComponentViewModel);
      sub_10001FAA0();
      v201 = v96;
LABEL_65:
      sub_1001B42FC(v201, v200);
      return v106 & 1;
  }
}

uint64_t sub_10086A4E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001B3DAC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10086A508(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CDF908);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10086A570(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

double sub_10086A5D0(uint64_t a1)
{
  v3 = *a1;
  if (sub_1004CF4D0(*a1))
  {
    return dbl_100A679A0[*(a1 + 18) < 2u];
  }

  if (sub_10029C3DC(v3) && *(a1 + 16))
  {
    return 385.0;
  }

  return sub_10014B28C() * 2.5 + *(v1 + 40);
}

void sub_10086A658(double a1, double a2, double a3, double a4)
{
  Width = CGRectGetWidth(*&a1);
  v10.origin.x = sub_10001E728();
  Height = CGRectGetHeight(v10);
  if (Width > Height)
  {
    v6 = Width;
  }

  else
  {
    v6 = Height;
  }

  if (v6 != 1024.0)
  {
    v11.origin.x = sub_10001E728();
    v7 = CGRectGetWidth(v11);
    v12.origin.x = sub_10001E728();
    v8 = CGRectGetHeight(v12);
    if (v7 > v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    if (v9 != 1112.0)
    {
      v13.origin.x = sub_10001E728();
      CGRectGetWidth(v13);
      v14.origin.x = sub_10001E728();
      CGRectGetHeight(v14);
    }
  }
}

uint64_t sub_10086A71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HistoricalFactsCategory();
  __chkstk_darwin(v4);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  __chkstk_darwin(v32);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CDF910);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_10022C350(&qword_100CDF918);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v34 = a1;

  sub_10022C350(&qword_100CDF920);
  sub_100006F64(&qword_100CDF928, &qword_100CDF920);
  NonEmpty.init(_:)();
  if (sub_100024D10(v10, 1, v11) == 1)
  {
    sub_10086AB5C(v10);
    v15 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    v16 = a2;
    v17 = 1;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if (NonEmpty.count.getter() < 2)
    {
      NonEmpty.first.getter();
      countAndFlagsBits = *v6;
      object = v6[1];
      v25 = *(v4 + 20);

      v26 = v6 + v25;
      v24 = v33;
      sub_10086AC38(v26, 0, v33);
      sub_10086B0AC(v6);
    }

    else
    {
      v18 = [objc_opt_self() mainBundle];
      v35._object = 0x8000000100AE1EB0;
      v19._countAndFlagsBits = 0x6369726F74736948;
      v19._object = 0xEA00000000006C61;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      v35._countAndFlagsBits = 0xD00000000000003DLL;
      v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v35);
      countAndFlagsBits = v21._countAndFlagsBits;
      object = v21._object;

      type metadata accessor for ConditionDetailPlatterViewModel.TextSection(0);
      v24 = v33;
      NonEmpty.map<A>(_:)();
    }

    (*(v12 + 8))(v14, v11);
    v27 = v32;
    swift_storeEnumTagMultiPayload();
    v28 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    v29 = v28[6];
    v30 = type metadata accessor for WeatherDescription();
    sub_10001B350(a2 + v29, 1, 1, v30);
    sub_10001B350(a2 + v28[8], 1, 1, v27);
    *a2 = xmmword_100A8F080;
    *(a2 + 16) = 2;
    *(a2 + 24) = countAndFlagsBits;
    *(a2 + 32) = object;
    sub_10046104C(v24, a2 + v28[7]);
    *(a2 + v28[9]) = 0;
    *(a2 + v28[10]) = 0;
    v16 = a2;
    v17 = 0;
    v15 = v28;
  }

  return sub_10001B350(v16, v17, 1, v15);
}

uint64_t sub_10086AB5C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CDF910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10086ABC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(type metadata accessor for HistoricalFactsCategory() + 20);
  v7 = *(type metadata accessor for ConditionDetailPlatterViewModel.TextSection(0) + 20);

  result = sub_10086AC38(a1 + v6, 1, a2 + v7);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_10086AC38@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributedString();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v39 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = v33 - v9;
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v42 = type metadata accessor for WeatherDescription();
  v13 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CBC548);
  if (NonEmpty.count.getter() == 1 && (a2 & 1) == 0)
  {
    v16 = v41;
    NonEmpty.first.getter();
    static Font.body.getter();
    WeatherDescription.formatted(font:color:)();

    return (*(v13 + 8))(v16, v42);
  }

  v18 = sub_100006F64(&qword_100CDF930, &qword_100CBC548);
  v19 = v15;
  v20 = dispatch thunk of Collection.count.getter();
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = v20;
  v44 = _swiftEmptyArrayStorage;
  sub_1006A7EB4();
  v22 = v44;
  v37 = v18;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v33[0] = a3;
    v33[1] = v19;
    v35 = v40 + 8;
    v36 = (v13 + 16);
    v33[3] = v40 + 32;
    v34 = (v13 + 8);
    v23 = v12;
    v33[2] = a1;
    v24 = (v40 + 8);
    do
    {
      v25 = dispatch thunk of Collection.subscript.read();
      v26 = v41;
      v27 = v42;
      (*v36)(v41);
      v25(v43, 0);
      static Font.body.getter();
      v28 = v38;
      WeatherDescription.formatted(font:color:)();

      v29 = v39;
      AttributedString.init(stringLiteral:)();
      static AttributedString.+ infix(_:_:)();
      v30 = *v24;
      (*v24)(v29, v6);
      v30(v28, v6);
      (*v34)(v26, v27);
      v44 = v22;
      v31 = v6;
      v32 = v22[2];
      if (v32 >= v22[3] >> 1)
      {
        sub_1006A7EB4();
        v22 = v44;
      }

      v22[2] = v32 + 1;
      (*(v40 + 32))(v22 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32, v23, v31);
      dispatch thunk of Collection.formIndex(after:)();
      --v21;
      v6 = v31;
    }

    while (v21);
LABEL_10:
    Array<A>.joined(separator:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_10086B0AC(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalFactsCategory();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *WeatherLocation.currentLocationID.unsafeMutableAddressor()
{
  if (qword_100CA2950 != -1)
  {
    sub_10001FAB8();
  }

  return &static WeatherLocation.currentLocationID;
}

uint64_t sub_10086B17C()
{
  result = static Location.currentLocationIntentID.getter();
  static WeatherLocation.currentLocationID = result;
  *algn_100D911C8 = v1;
  return result;
}

uint64_t static WeatherLocation.currentLocationID.getter()
{
  if (qword_100CA2950 != -1)
  {
    sub_10001FAB8();
  }

  v0 = static WeatherLocation.currentLocationID;

  return v0;
}

uint64_t sub_10086B218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v686 = a3;
  v694 = a2;
  v683 = a1;
  v675 = type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v4);
  sub_10000E70C();
  v6 = sub_100003918(v5);
  v644 = type metadata accessor for WeatherMapPresentationState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  sub_100003918(v8);
  v615 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003990(v10);
  v11 = sub_10022C350(&qword_100CA65F0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_10000E70C();
  sub_100003990(v14);
  v15 = sub_10022C350(&qword_100CA65F8);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  sub_100003990(v18);
  v19 = sub_10022C350(&qword_100CA6600);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_10000E70C();
  sub_100003918(v23);
  active = type metadata accessor for LocationViewerActiveLocationState();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000038E4();
  sub_100003990(v25);
  v26 = sub_10022C350(&qword_100CA65B8);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_10000E70C();
  sub_100003918(v29);
  v587 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v586 = v30;
  __chkstk_darwin(v31);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_10000E70C();
  v34 = sub_100003918(v33);
  v642 = type metadata accessor for ViewState.SecondaryViewState(v34);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_10000E70C();
  sub_100003990(v37);
  v38 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v38);
  sub_100003828();
  __chkstk_darwin(v39);
  sub_1000039BC();
  sub_100003918(v40);
  v599 = type metadata accessor for WeatherCoalescedLocationResult();
  sub_1000037C4();
  v598 = v41;
  __chkstk_darwin(v42);
  sub_1000038E4();
  sub_100003918(v43);
  v596 = type metadata accessor for LocationDisplayContext();
  sub_1000037C4();
  *(&v594 + 1) = v44;
  __chkstk_darwin(v45);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_10000E70C();
  sub_100003990(v47);
  v48 = sub_10022C350(&qword_100CA6608);
  v49 = sub_100003810(v48);
  __chkstk_darwin(v49);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_10000E70C();
  sub_100003990(v51);
  v52 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v52);
  sub_100003828();
  __chkstk_darwin(v53);
  sub_1000039BC();
  sub_100003918(v54);
  type metadata accessor for Location();
  sub_1000037C4();
  v681 = v56;
  v682 = v55;
  __chkstk_darwin(v55);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_10000E70C();
  v59 = sub_100003918(v58);
  v693 = type metadata accessor for ViewState(v59);
  sub_1000037E8();
  __chkstk_darwin(v60);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_10000E70C();
  sub_100003918(v65);
  v692 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v66);
  sub_100003848();
  v680 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_10000E70C();
  v678 = v71;
  v691 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v72);
  sub_100003848();
  v679 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_10000E70C();
  sub_100003918(v77);
  v689 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v78);
  sub_100003848();
  v677 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_10000E70C();
  sub_100003918(v83);
  v690 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v84);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_10000E70C();
  sub_100003918(v89);
  v688 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v90);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_10000E70C();
  sub_100003918(v94);
  v687 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v95);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_10000E70C();
  v100 = sub_100003918(v99);
  v684 = type metadata accessor for ModalViewState(v100);
  sub_1000037E8();
  __chkstk_darwin(v101);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  v685 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_10000E70C();
  sub_100003990(v111);
  v112 = sub_10022C350(&qword_100CA65C0);
  sub_100003810(v112);
  sub_100003828();
  __chkstk_darwin(v113);
  sub_1000039BC();
  sub_100003990(v114);
  v115 = sub_10022C350(&qword_100CA65D0);
  sub_100003810(v115);
  sub_100003828();
  __chkstk_darwin(v116);
  sub_1000039BC();
  sub_100003990(v117);
  v118 = sub_10022C350(&qword_100CA65C8);
  sub_100003810(v118);
  sub_100003828();
  __chkstk_darwin(v119);
  sub_1000039BC();
  sub_100003990(v120);
  v121 = sub_10022C350(&qword_100CA65E8);
  v122 = sub_100003810(v121);
  __chkstk_darwin(v122);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_10000E70C();
  sub_100003990(v130);
  v131 = sub_10022C350(&qword_100CA6610);
  v132 = sub_100003810(v131);
  __chkstk_darwin(v132);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_10000E70C();
  sub_100003990(v140);
  v141 = sub_10022C350(&qword_100CA6618);
  v142 = sub_100003810(v141);
  __chkstk_darwin(v142);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_10000E70C();
  sub_100003990(v150);
  v151 = sub_10022C350(&qword_100CA6620);
  v152 = sub_100003810(v151);
  __chkstk_darwin(v152);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_10000E70C();
  sub_100003990(v160);
  v161 = sub_10022C350(&qword_100CA6628);
  v162 = sub_100003810(v161);
  __chkstk_darwin(v162);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_10000E70C();
  sub_100003990(v170);
  v171 = sub_10022C350(&qword_100CA6630);
  v172 = sub_100003810(v171);
  __chkstk_darwin(v172);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_10000E70C();
  sub_100003990(v180);
  v181 = sub_10022C350(&qword_100CA6638);
  v182 = sub_100003810(v181);
  __chkstk_darwin(v182);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  v185 = __chkstk_darwin(v184);
  v187 = &v584 - v186;
  v188 = __chkstk_darwin(v185);
  __chkstk_darwin(v188);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v189);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v191);
  sub_10000E70C();
  sub_100003990(v192);
  v193 = sub_10022C350(&qword_100CA6640);
  v194 = sub_100003810(v193);
  v195 = __chkstk_darwin(v194);
  v197 = &v584 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __chkstk_darwin(v195);
  v199 = __chkstk_darwin(v198);
  v201 = &v584 - v200;
  v202 = __chkstk_darwin(v199);
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  v205 = __chkstk_darwin(v204);
  v207 = &v584 - v206;
  __chkstk_darwin(v205);
  type metadata accessor for LocationPreviewViewAction();
  sub_1000037E8();
  __chkstk_darwin(v208);
  v210 = &v584 - ((v209 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10086FD8C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v289 = v210[*(sub_10022C350(&unk_100CE2F60) + 48)];
      v291 = v681;
      v290 = v682;
      v292 = v659;
      (*(v681 + 32))(v659, v210, v682);
      (*(v291 + 16))(v640, v292, v290);
      sub_1000113EC();
      swift_storeEnumTagMultiPayload();
      sub_100020FE8();
      sub_100187704();
      sub_100003934();
      sub_10001B350(v293, v294, v295, v687);
      v296 = sub_100003BCC(&v670);
      sub_10001B350(v296, v297, v298, v688);
      v299 = sub_100003BCC(&v674);
      sub_10001B350(v299, v300, v301, v690);
      v302 = sub_100003BCC(&v677);
      sub_10001B350(v302, v303, v304, v689);
      v305 = sub_100003BCC(&v680);
      sub_10001B350(v305, v306, v307, v691);
      v308 = sub_100003BCC(&v686);
      sub_10001B350(v308, v309, v310, v692);
      v311 = sub_100003BCC(&v688);
      sub_10001B350(v311, v312, v313, v693);
      v314 = v654;
      sub_10086FD8C();
      sub_10000E7B0();
      sub_10001B350(v315, v316, v317, v292);
      type metadata accessor for LocationPreviewModalViewState(0);
      v318 = v655;
      sub_100003934();
      sub_10001B350(v319, v320, v321, v322);
      type metadata accessor for SelectedSearchResult();
      v323 = v656;
      sub_100003934();
      sub_10001B350(v324, v325, v326, v327);
      v328 = v683;
      sub_10043DB64(v314, v318, v323, v626);
      sub_1000180EC(v323, &qword_100CA65C0);
      sub_1000180EC(v318, &qword_100CA65D0);
      sub_1000180EC(v314, &qword_100CA65C8);
      sub_100141BEC(v289, type metadata accessor for PreviewLocation);
      (*(v291 + 8))(v659, v290);
      v329 = v684;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v330, v331, v332, v329);
      sub_100028C78();
      sub_1000113EC();
      sub_10086FD8C();
      sub_10003778C();
      sub_100051BBC();
      sub_10000554C(v290);
      if (v213)
      {
        sub_1000180EC(v290, &qword_100CA65E8);
      }

      else
      {
        sub_100024B44();
        sub_100141BEC(v328, v416);
        sub_10001FAD8();
        sub_100021CEC();
        sub_100187704();
      }

      v417 = v632;
      v418 = v628;
      v419 = v621;
      v420 = v618;
      sub_10001FAD8();
      sub_100187704();
      v421 = *(v694 + 16);
      LODWORD(v686) = *(v694 + 24);
      sub_100051BBC();
      v422 = v687;
      sub_1000113D0(v197, 1);
      if (v213)
      {
        sub_10003C9AC();
        sub_10086FD8C();
        v423 = sub_100024D10(v197, 1, v422);

        v424 = v635;
        if (v423 != 1)
        {
          sub_1000180EC(v197, &qword_100CA6640);
        }
      }

      else
      {
        sub_100017F58();
        sub_100187704();

        v424 = v635;
      }

      v687 = v421;
      sub_100051BBC();
      v425 = sub_100007FC4();
      sub_1000113D0(v425, v426);
      if (v213)
      {
        sub_10002014C();
        sub_100069B94();
        sub_10086FD8C();
        sub_100003A40(v420);
        if (!v213)
        {
          sub_1000180EC(v420, &qword_100CA6638);
        }
      }

      else
      {
        sub_100013DC8();
        sub_100187704();
      }

      sub_100051BBC();
      sub_100005404(v419);
      if (v213)
      {
        sub_10001CF9C();
        sub_10086FD8C();
        sub_100005404(v419);
        v427 = v638;
        if (!v213)
        {
          sub_1000180EC(v419, &qword_100CA6630);
        }
      }

      else
      {
        sub_10004EC24();
        sub_100187704();
        v427 = v638;
      }

      sub_1000B0318();
      sub_100003A40(v418);
      if (v213)
      {
        sub_100017020();
        sub_10086FD8C();
        sub_100003A40(v418);
        v428 = v692;
        if (!v213)
        {
          sub_1000180EC(v418, &qword_100CA6628);
        }
      }

      else
      {
        sub_100049E08();
        sub_100187704();
        v428 = v692;
      }

      sub_100051BBC();
      v429 = sub_1000162B0();
      v430 = v691;
      sub_1000038B4(v429, v431, v691);
      if (v213)
      {
        sub_100075144();
        sub_10086FD8C();
        v432 = sub_1000162B0();
        sub_1000038B4(v432, v433, v430);
        v434 = v693;
        if (!v213)
        {
          sub_1000180EC(v417, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000233CC();
        sub_100187704();
        v434 = v693;
      }

      sub_100051BBC();
      v435 = sub_1000182B8();
      sub_1000038B4(v435, v436, v428);
      if (v213)
      {
        sub_10001A068();
        sub_10086FD8C();
        v437 = sub_1000182B8();
        sub_1000038B4(v437, v438, v428);
        if (!v213)
        {
          sub_1000180EC(v424, &qword_100CA6618);
        }
      }

      else
      {
        sub_100004CBC();
        sub_100187704();
      }

      sub_100051BBC();
      v439 = sub_1000131C4();
      sub_1000038B4(v439, v440, v434);
      if (v213)
      {
        sub_100006934();
        sub_10086FD8C();
        v441 = sub_1000131C4();
        sub_1000038B4(v441, v442, v434);
        if (!v213)
        {
          sub_1000180EC(v427, &qword_100CA6610);
        }
      }

      else
      {
        sub_10001504C();
        sub_100021CEC();
        sub_100187704();
      }

      sub_10001FAD8();
      sub_100071830();
      sub_100044DA4();
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      sub_10000E80C();
      v362 = v687;
      v363 = v686;
      v364 = v666;
      v365 = v669;
      v366 = v673;
      v367 = v677;
      v368 = v679;
      v369 = v680;
      goto LABEL_163;
    case 2u:
      sub_100003934();
      v215 = v687;
      sub_10001B350(v216, v217, v218, v687);
      v219 = sub_100003BCC(&v669);
      v220 = v688;
      sub_10001B350(v219, v221, v222, v688);
      v223 = sub_100003BCC(&v672);
      v224 = v690;
      sub_10001B350(v223, v225, v226, v690);
      v227 = sub_100003BCC(&v675);
      sub_10001B350(v227, v228, v229, v689);
      v230 = sub_100003BCC(&v678);
      sub_10001B350(v230, v231, v232, v691);
      v233 = sub_100003BCC(&v684);
      sub_10001B350(v233, v234, v235, v692);
      v236 = sub_100003BCC(&v687);
      sub_10001B350(v236, v237, v238, v693);
      v239 = v654;
      sub_100003934();
      sub_10001B350(v240, v241, v242, v675);
      v243 = type metadata accessor for LocationPreviewModalViewState(0);
      v244 = v655;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v245, v246, v247, v243);
      type metadata accessor for SelectedSearchResult();
      v248 = v656;
      sub_100003934();
      sub_10001B350(v249, v250, v251, v252);
      v253 = v683;
      sub_10043DB64(v239, v244, v248, v622);
      sub_1000180EC(v248, &qword_100CA65C0);
      sub_1000180EC(v244, &qword_100CA65D0);
      sub_1000180EC(v239, &qword_100CA65C8);
      v254 = v684;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v255, v256, v257, v254);
      sub_100028C78();
      v258 = v694;
      sub_1000113EC();
      sub_10086FD8C();
      v259 = v625;
      sub_100051BBC();
      sub_10000554C(v259);
      if (v213)
      {
        sub_1000180EC(v259, &qword_100CA65E8);
      }

      else
      {
        sub_100024B44();
        sub_100141BEC(v253, v333);
        sub_10001FAD8();
        sub_100187704();
      }

      v334 = v633;
      v335 = v619;
      sub_10001FAD8();
      sub_100187704();
      v336 = *(v258 + 16);
      LODWORD(v686) = *(v258 + 24);
      sub_100051BBC();
      sub_100005404(v207);
      v337 = v616;
      if (v213)
      {
        sub_10003C9AC();
        sub_10086FD8C();
        v338 = sub_100007FC4();
        v340 = sub_100024D10(v338, v339, v215);

        if (v340 != 1)
        {
          sub_1000180EC(v207, &qword_100CA6640);
        }
      }

      else
      {
        sub_100017F58();
        sub_100187704();
      }

      v687 = v336;
      sub_100051BBC();
      v341 = sub_1000162B0();
      sub_1000038B4(v341, v342, v220);
      if (v213)
      {
        sub_10002014C();
        sub_100069B94();
        sub_10086FD8C();
        v343 = sub_1000162B0();
        sub_1000038B4(v343, v344, v220);
        v345 = v691;
        if (!v213)
        {
          sub_1000180EC(v337, &qword_100CA6638);
        }
      }

      else
      {
        sub_100013DC8();
        sub_100187704();
        v345 = v691;
      }

      sub_100051BBC();
      v346 = sub_1000182B8();
      sub_1000038B4(v346, v347, v224);
      if (v213)
      {
        sub_10001CF9C();
        sub_10086FD8C();
        v348 = sub_1000182B8();
        sub_1000038B4(v348, v349, v224);
        if (!v213)
        {
          sub_1000180EC(v335, &qword_100CA6630);
        }
      }

      else
      {
        sub_10004EC24();
        sub_100187704();
      }

      v350 = v624;
      sub_100051BBC();
      v351 = sub_1000175DC();
      v352 = v689;
      sub_1000038B4(v351, v353, v689);
      if (v213)
      {
        sub_100017020();
        sub_10086FD8C();
        v354 = sub_1000175DC();
        sub_1000038B4(v354, v355, v352);
        if (!v213)
        {
          sub_1000180EC(v350, &qword_100CA6628);
        }
      }

      else
      {
        sub_100049E08();
        sub_100187704();
      }

      v356 = v629;
      sub_100051BBC();
      v357 = sub_1000182B8();
      sub_1000038B4(v357, v358, v345);
      if (v213)
      {
        sub_100075144();
        sub_10086FD8C();
        v359 = sub_1000182B8();
        sub_1000038B4(v359, v360, v345);
        v361 = v636;
        if (!v213)
        {
          sub_1000180EC(v356, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000233CC();
        sub_100187704();
        v361 = v636;
      }

      sub_100051BBC();
      sub_100003A40(v334);
      if (v213)
      {
        sub_10001A068();
        sub_10086FD8C();
        sub_100003A40(v334);
        if (!v213)
        {
          sub_1000180EC(v334, &qword_100CA6618);
        }
      }

      else
      {
        sub_100004CBC();
        sub_100187704();
      }

      sub_1000B0318();
      sub_100005404(v361);
      if (v213)
      {
        sub_100006934();
        sub_10086FD8C();
        sub_100005404(v361);
        if (!v213)
        {
          sub_1000180EC(v361, &qword_100CA6610);
        }
      }

      else
      {
        sub_10001504C();
        sub_100187704();
      }

      sub_10001FAD8();
      sub_100071830();
      sub_100044DA4();
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      sub_10000E80C();
      v362 = v687;
      v363 = v686;
      v364 = v663;
      v365 = v665;
      v366 = v668;
      v367 = v671;
      v368 = v674;
      v369 = v678;
      goto LABEL_163;
    case 3u:
      sub_100003934();
      sub_10001B350(v260, v261, v262, v687);
      sub_100003934();
      sub_10001B350(v263, v264, v265, v688);
      v266 = sub_100003BCC(&v671);
      sub_10001B350(v266, v267, v268, v690);
      v269 = sub_100003BCC(&v673);
      v270 = v689;
      sub_10001B350(v269, v271, v272, v689);
      v273 = sub_100003BCC(&v676);
      sub_10001B350(v273, v274, v275, v691);
      v276 = sub_100003BCC(&v679);
      sub_10001B350(v276, v277, v278, v692);
      v279 = sub_100003BCC(&v685);
      sub_10001B350(v279, v280, v281, v693);
      v282 = v684;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v283, v284, v285, v282);
      sub_100028C78();
      v286 = v694;
      v287 = v630;
      sub_10086FD8C();
      v288 = v623;
      sub_100051BBC();
      sub_1000038B4(v288, 1, v282);
      if (v213)
      {
        sub_1000180EC(v288, &qword_100CA65E8);
      }

      else
      {
        sub_100024B44();
        sub_100141BEC(v287, v370);
        sub_10001FAD8();
        sub_100187704();
      }

      sub_10001FAD8();
      sub_100187704();
      v371 = *(v286 + 16);
      LODWORD(v684) = *(v286 + 24);
      sub_100051BBC();
      v372 = sub_100016298();
      v373 = v687;
      sub_1000038B4(v372, v374, v687);
      v375 = v620;
      v376 = v617;
      v686 = v371;
      if (v213)
      {
        sub_10003C9AC();
        sub_10086FD8C();
        v377 = sub_100016298();
        v379 = sub_100024D10(v377, v378, v373);

        if (v379 != 1)
        {
          sub_1000180EC(v201, &qword_100CA6640);
        }
      }

      else
      {
        sub_100017F58();
        sub_100187704();
      }

      sub_100021CEC();
      sub_100051BBC();
      sub_1000038B4(v187, 1, v688);
      if (v213)
      {
        sub_10002014C();
        sub_100069B94();
        sub_10086FD8C();
        sub_100005404(v187);
        v380 = v631;
        v381 = v627;
        if (!v213)
        {
          sub_1000180EC(v187, &qword_100CA6638);
        }
      }

      else
      {
        sub_100013DC8();
        sub_100187704();
        v380 = v631;
        v381 = v627;
      }

      sub_100051BBC();
      v382 = sub_1000175DC();
      sub_1000038B4(v382, v383, v690);
      if (v213)
      {
        sub_10001CF9C();
        sub_10086FD8C();
        sub_10000554C(v376);
        v384 = v634;
        if (!v213)
        {
          sub_1000180EC(v376, &qword_100CA6630);
        }
      }

      else
      {
        sub_10004EC24();
        sub_100187704();
        v384 = v634;
      }

      sub_1000B0318();
      sub_1000038B4(v375, 1, v270);
      if (v213)
      {
        sub_100017020();
        sub_10086FD8C();
        sub_1000038B4(v375, 1, v270);
        if (!v213)
        {
          sub_1000180EC(v375, &qword_100CA6628);
        }
      }

      else
      {
        sub_100049E08();
        sub_100187704();
      }

      sub_100051BBC();
      v385 = sub_100016298();
      v386 = v691;
      sub_1000038B4(v385, v387, v691);
      if (v213)
      {
        sub_100075144();
        sub_10086FD8C();
        v388 = sub_100016298();
        sub_1000038B4(v388, v389, v386);
        if (!v213)
        {
          sub_1000180EC(v381, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000233CC();
        sub_100187704();
      }

      sub_100051BBC();
      v390 = sub_1000131C4();
      v391 = v692;
      sub_1000038B4(v390, v392, v692);
      if (v213)
      {
        sub_10001A068();
        sub_10086FD8C();
        v393 = sub_1000131C4();
        sub_1000038B4(v393, v394, v391);
        if (!v213)
        {
          sub_1000180EC(v380, &qword_100CA6618);
        }
      }

      else
      {
        sub_100004CBC();
        sub_100187704();
      }

      sub_100051BBC();
      sub_1000038B4(v384, 1, v693);
      if (v213)
      {
        sub_100006934();
        sub_10086FD8C();
        sub_100005404(v384);
        if (!v213)
        {
          sub_1000180EC(v384, &qword_100CA6610);
        }
      }

      else
      {
        sub_10001504C();
        sub_100187704();
      }

      sub_10001FAD8();
      v395 = v685;
      sub_100187704();
      v396 = v286;
      v398 = *(v286 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v397 = *(v286 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v400 = *(v286 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v399 = *(v286 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v401 = v286 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v402 = *(v286 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v404 = *(v401 + 8);
      v403 = *(v401 + 16);
      v405 = *(v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      LOBYTE(v583) = v402;
      sub_10003E038(v686, v684, v661, v662, v664, v667, v670, v672, v676, v395, v398, v397, v400, v399, v583, v404, v403, v405, v584, v585, v586, v587, v588, v589, active, v591, v592, v593, v594, v595, v596, v597, v598, v599, v600);
      v214 = v406;

      goto LABEL_164;
    default:
      v211 = v637;
      sub_1006E6234(v637);
      v212 = v682;
      sub_1000038B4(v211, 1, v682);
      if (v213)
      {
        sub_1000180EC(v211, &qword_100CA65D8);
        v214 = v694;
      }

      else
      {
        v407 = v681;
        v408 = v650;
        (*(v681 + 32))(v650, v211, v212);
        v409 = v694 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
        sub_10001CF9C();
        sub_100020FE8();
        sub_10086FD8C();
        sub_1007BDCF4();
        v411 = v410;
        sub_10003BFC8();
        sub_100141BEC(v211, v412);
        v413 = v690[5];
        v686 = v409;
        v414 = *(v409 + v413);
        if (v411)
        {

          v415 = v414;
        }

        else
        {
          sub_10022C350(&qword_100CCF258);
          v443 = *(type metadata accessor for SavedLocation() - 8);
          v444 = (*(v443 + 80) + 32) & ~*(v443 + 80);
          v445 = swift_allocObject();
          *(v445 + 16) = xmmword_100A2C3F0;
          (*(v407 + 16))(v445 + v444, v408, v212);
          swift_storeEnumTagMultiPayload();
          v695 = v414;

          sub_10035DC18(v445);
          v415 = v695;
        }

        v446 = *(v686 + v690[13]);

        v447 = Location.id.getter();
        v449 = v448;
        LocationDisplayContext.init(canActAsLocationOfInterest:)();
        v450 = v595;
        v451 = sub_100003940();
        v452(v451);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v695 = v446;
        sub_100239940(v450, v447, v449, isUniquelyReferenced_nonNull_native);

        v454 = v695;
        sub_1000161C0((v605 + 16), *(v605 + 40));
        sub_100020FE8();
        sub_100095588();

        v455 = v597;
        v679 = v454;
        v680 = v415;
        dispatch thunk of WeatherLocationCoalescenceManagerType.coalesceLocations(currentLocation:locationList:locationsOfInterest:displayContextByLocation:)();

        sub_1000180EC(v450, &unk_100CE49F0);
        v456 = WeatherCoalescedLocationResult.coalescedLocations.getter();
        (*(v598 + 8))(v455, v599);
        sub_10001655C();
        v683 = v457;
        sub_100020FE8();
        sub_10086FD8C();
        v458 = v642;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_100141BEC(v450, type metadata accessor for ViewState.SecondaryViewState);
          v459 = 1;
          v460 = v610;
          v461 = v641;
        }

        else
        {
          v462 = *v450;
          v463 = v585;
          Location.identifier.getter();
          v464 = v584;
          sub_10086EE80(v463, v456, v584);
          v465 = v586;
          v466 = v463;
          v467 = v587;
          (*(v586 + 8))(v466, v587);
          v469 = *(v465 + 32);
          v468 = v465 + 32;
          v470 = v588;
          v469(v588, v464, v467);
          sub_10000E7B0();
          sub_10001B350(v471, v472, v473, v467);
          sub_10000E7B0();
          sub_10001B350(v474, v475, v476, active);
          sub_1000113EC();
          sub_100051BBC();
          sub_10000554C(v470);
          if (v213)
          {
            sub_10003778C();
            sub_10086FD8C();
            sub_10000554C(v470);
            if (!v213)
            {
              sub_1000180EC(v470, &qword_100CA65B8);
            }
          }

          else
          {
            sub_10003778C();
            sub_100187704();
          }

          v477 = *(v462 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
          v478 = *(v462 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
          v479 = *(v462 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
          v480 = *(v462 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
          v481 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v462);

          type metadata accessor for LocationViewerViewState._Storage(0);
          sub_100003B6C();
          v482 = sub_10003DDB8(v468, v481, v477, v480, v478, v479);
          v461 = v641;
          *v641 = v482;
          swift_storeEnumTagMultiPayload();
          v459 = 0;
          v460 = v610;
        }

        sub_10001B350(v461, v459, 1, v458);
        v483 = sub_100003BCC(v651);
        sub_10001B350(v483, v484, v485, v687);
        v486 = sub_100003BCC(v652);
        sub_10001B350(v486, v487, v488, v688);
        sub_10001CF9C();
        v489 = v639;
        sub_10086FD8C();
        sub_100020FE8();
        sub_100095588();
        v490 = v690;
        v491 = v489 + v690[12];
        v492 = *v491;
        v493 = *(v491 + 8);
        v494 = *(v491 + 16);

        sub_1000DC3D4(v492, v493, v494);
        v495 = v641;
        sub_10003A500();
        sub_10003BFC8();
        sub_100141BEC(v489, v496);
        sub_10000E7B0();
        v497 = v642;
        sub_10001B350(v498, v499, v500, v490);
        v501 = sub_100003BCC(v653);
        sub_10001B350(v501, v502, v503, v689);
        v504 = sub_100003BCC(&v654);
        sub_10001B350(v504, v505, v506, v691);
        v507 = sub_100003BCC(v657);
        sub_10001B350(v507, v508, v509, v692);
        sub_100006934();
        sub_10086FD8C();
        type metadata accessor for ListViewState._Storage();
        swift_allocObject();
        sub_10000E7B0();
        v513 = sub_100042DA8(v510, v511, v512, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0, 0, 1, 0);
        v514 = type metadata accessor for SearchViewState(0);
        v515 = sub_100003BCC(v658);
        sub_10001B350(v515, v516, v517, v514);
        sub_100003934();
        v518 = v615;
        sub_10001B350(v519, v520, v521, v615);
        v522 = sub_100003BCC(v660);
        sub_10001B350(v522, v523, v524, v644);
        v525 = v607;
        sub_100095588();
        sub_100005404(v525);
        if (v213)
        {
          v529 = v693;
          sub_10001655C();
          sub_10086FD8C();
          v526 = sub_100016298();
          v528 = sub_100024D10(v526, v527, v497);

          if (v528 != 1)
          {
            sub_1000180EC(v525, &qword_100CA6608);
          }
        }

        else
        {
          sub_100071E80();
          sub_100187704();

          v529 = v693;
        }

        LODWORD(v693) = *(v460 + v529[6]);
        v530 = [objc_opt_self() currentDevice];
        v531 = [v530 userInterfaceIdiom];

        sub_1000180EC(v495, &qword_100CA6608);
        (*(v681 + 8))(v650, v682);
        if (v531 && *(v460 + v529[9] + 8) == 2)
        {
          v532 = 1;
        }

        else
        {
          v532 = *(v460 + v529[7]);
        }

        v533 = v612;
        sub_1000B0318();
        sub_100003A40(v533);
        if (v213)
        {
          sub_100095588();
          sub_100003A40(v533);
          if (!v213)
          {
            sub_1000180EC(v533, &qword_100CA6600);
          }
        }

        else
        {
          sub_100187704();
          v518 = v615;
          sub_10000E7B0();
          sub_10001B350(v534, v535, v536, v514);
        }

        v537 = v613;
        sub_100051BBC();
        v538 = sub_100007FC4();
        sub_1000038B4(v538, v539, v518);
        if (v213)
        {
          sub_10086FD8C();
          v540 = sub_100007FC4();
          sub_1000038B4(v540, v541, v518);
          v542 = v609;
          if (!v213)
          {
            sub_1000180EC(v537, &qword_100CA65F8);
          }
        }

        else
        {
          sub_1000B9A98();
          sub_100187704();
          v542 = v609;
        }

        v543 = v614;
        sub_100051BBC();
        sub_100003A40(v543);
        if (v213)
        {
          sub_10086FD8C();
          sub_100003A40(v543);
          v544 = v600;
          if (!v213)
          {
            sub_1000180EC(v543, &qword_100CA65F0);
          }
        }

        else
        {
          sub_1000211C4();
          sub_100187704();
          v544 = v600;
        }

        v545 = *(v460 + v529[11]);
        sub_100141BEC(v460, type metadata accessor for ViewState);
        *v542 = v513;
        sub_100071E80();
        sub_100187704();
        *(v542 + v529[6]) = v693;
        *(v542 + v529[7]) = v532;
        sub_100051BBC();
        sub_1000B9A98();
        sub_100187704();
        sub_1000211C4();
        sub_100187704();

        *(v542 + v529[11]) = v545;
        sub_10000E7B0();
        sub_10001B350(v546, v547, v548, v529);
        v549 = v602;
        v550 = v684;
        swift_storeEnumTagMultiPayload();
        sub_10000E7B0();
        sub_10001B350(v551, v552, v553, v550);
        sub_100028C78();
        v554 = v694;
        sub_1000113EC();
        sub_10086FD8C();
        sub_10003778C();
        sub_100051BBC();
        sub_10000554C(v549);
        if (v213)
        {
          sub_1000180EC(v549, &qword_100CA65E8);
        }

        else
        {
          sub_100024B44();
          sub_100141BEC(v545, v555);
          sub_10001FAD8();
          sub_100021CEC();
          sub_100187704();
        }

        v556 = v687;
        v557 = v604;
        v558 = v603;
        sub_10001FAD8();
        sub_100187704();
        v559 = *(v554 + 16);
        LODWORD(v687) = *(v554 + 24);
        sub_1000113EC();
        sub_100051BBC();
        sub_10000554C(v545);
        if (v213)
        {
          sub_10003C9AC();
          sub_10086FD8C();
          v560 = sub_100024D10(v545, 1, v556);

          v213 = v560 == 1;
          v561 = v608;
          v562 = v594;
          if (!v213)
          {
            sub_1000180EC(v545, &qword_100CA6640);
          }
        }

        else
        {
          sub_100017F58();
          sub_100187704();

          v561 = v608;
          v562 = v594;
        }

        v693 = v559;
        sub_100051BBC();
        v563 = sub_1000131C4();
        sub_1000113D0(v563, v564);
        if (v213)
        {
          v565 = v562;
          sub_10002014C();
          sub_100069B94();
          sub_10086FD8C();
          sub_100003A40(v562);
          v566 = v611;
          if (!v213)
          {
            sub_1000180EC(v565, &qword_100CA6638);
          }
        }

        else
        {
          sub_100013DC8();
          sub_100187704();
          v566 = v611;
        }

        sub_100051BBC();
        v567 = sub_100007FC4();
        sub_1000113D0(v567, v568);
        if (v213)
        {
          sub_10001CF9C();
          sub_10086FD8C();
          sub_100003A40(v544);
          v569 = v692;
          if (!v213)
          {
            sub_1000180EC(v544, &qword_100CA6630);
          }
        }

        else
        {
          sub_10004EC24();
          sub_100187704();
          v569 = v692;
        }

        sub_100051BBC();
        v570 = sub_1000162B0();
        sub_1000113D0(v570, v571);
        if (v213)
        {
          sub_100017020();
          sub_10086FD8C();
          sub_100003A40(v558);
          if (!v213)
          {
            sub_1000180EC(v558, &qword_100CA6628);
          }
        }

        else
        {
          sub_100049E08();
          sub_100187704();
        }

        sub_100051BBC();
        v572 = sub_1000175DC();
        v573 = v691;
        sub_1000038B4(v572, v574, v691);
        if (v213)
        {
          sub_100075144();
          sub_10086FD8C();
          v575 = sub_1000175DC();
          sub_1000038B4(v575, v576, v573);
          if (!v213)
          {
            sub_1000180EC(v557, &qword_100CA6620);
          }
        }

        else
        {
          sub_1000233CC();
          sub_100187704();
        }

        sub_100051BBC();
        sub_1000038B4(v561, 1, v569);
        if (v213)
        {
          sub_10001A068();
          sub_10086FD8C();
          sub_1000038B4(v561, 1, v569);
          if (!v213)
          {
            sub_1000180EC(v561, &qword_100CA6618);
          }
        }

        else
        {
          sub_100004CBC();
          sub_100187704();
        }

        sub_100051BBC();
        v577 = sub_1000131C4();
        sub_1000038B4(v577, v578, v529);
        if (v213)
        {
          sub_100006934();
          sub_10086FD8C();
          v579 = sub_1000131C4();
          sub_1000038B4(v579, v580, v529);
          if (!v213)
          {
            sub_1000180EC(v566, &qword_100CA6610);
          }
        }

        else
        {
          sub_10001504C();
          sub_100021CEC();
          sub_100187704();
        }

        sub_10001FAD8();
        sub_100071830();
        type metadata accessor for MainState._Storage(0);
        sub_100003B6C();
        sub_10000E80C();
        v362 = v693;
        v363 = v687;
        v364 = v643;
        v365 = v645;
        v366 = v646;
        v367 = v647;
        v368 = v648;
        v369 = v649;
LABEL_163:
        sub_10003E038(v362, v363, v364, v365, v366, v367, v368, v369, v584, v585, v586, v587, v588, v589, active, v591, v592, v593, v594, *(&v594 + 1), v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609);
        v214 = v581;

LABEL_164:
      }

      return v214;
  }
}

uint64_t sub_10086EE80@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a1;
  v82 = a3;
  v4 = sub_10022C350(&unk_100CE2F20);
  v5 = __chkstk_darwin(v4 - 8);
  v77 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v72 - v7;
  v8 = sub_10022C350(&qword_100CA65D8);
  v9 = __chkstk_darwin(v8 - 8);
  v75 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v72 - v11;
  v13 = type metadata accessor for Location.Identifier();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v73 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v76 = &v72 - v18;
  v19 = __chkstk_darwin(v17);
  v72 = &v72 - v20;
  v21 = __chkstk_darwin(v19);
  v84 = &v72 - v22;
  __chkstk_darwin(v21);
  v92 = &v72 - v23;
  v24 = type metadata accessor for LocationModel();
  v25 = __chkstk_darwin(v24);
  v74 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v30 = &v72 - v29;
  v31 = *(a2 + 16);
  v86 = v14;
  v87 = v13;
  v80 = a2;
  v78 = v28;
  if (v31)
  {
    v32 = *(v28 + 16);
    v33 = a2 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v90 = *(v28 + 72);
    v91 = v32;
    v88 = (v14 + 32);
    v89 = (v28 + 8);
    v34 = _swiftEmptyArrayStorage;
    v85 = v24;
    v83 = v28 + 16;
    do
    {
      v91(v30, v33, v24);
      LocationModel.location.getter();
      v35 = v24;
      v36 = type metadata accessor for Location();
      if (sub_100024D10(v12, 1, v36) == 1)
      {
        (*v89)(v30, v35);
        v27 = sub_1000180EC(v12, &qword_100CA65D8);
        v24 = v35;
      }

      else
      {
        v37 = v13;
        v38 = v84;
        Location.identifier.getter();
        (*v89)(v30, v35);
        (*(*(v36 - 8) + 8))(v12, v36);
        v39 = *v88;
        (*v88)(v92, v38, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100030858();
          v34 = v41;
        }

        v40 = *(v34 + 2);
        if (v40 >= *(v34 + 3) >> 1)
        {
          sub_100030858();
          v34 = v42;
        }

        *(v34 + 2) = v40 + 1;
        v13 = v87;
        v27 = v39(&v34[((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v40], v92, v87);
        v24 = v85;
      }

      v33 += v90;
      --v31;
    }

    while (v31);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v27);
  v43 = v81;
  *(&v72 - 2) = v81;
  v44 = sub_1000E0FA0(sub_1000E1030, (&v72 - 4), v34);

  if (v44)
  {
    return (*(v86 + 16))(v82, v43, v87);
  }

  __chkstk_darwin(v45);
  *(&v72 - 2) = v43;
  v47 = v79;
  v48 = v80;
  sub_100030C98();
  v49 = sub_100024D10(v47, 1, v24);
  v50 = v86;
  if (v49 == 1)
  {
    v51 = &unk_100CE2F20;
    v52 = v47;
  }

  else
  {
    v53 = v78;
    v54 = v74;
    (*(v78 + 32))(v74, v47, v24);
    v55 = v75;
    LocationModel.location.getter();
    v56 = type metadata accessor for Location();
    if (sub_100024D10(v55, 1, v56) != 1)
    {
      v71 = v72;
      Location.identifier.getter();
      (*(v53 + 8))(v54, v24);
      (*(*(v56 - 8) + 8))(v55, v56);
      return (*(v50 + 32))(v82, v71, v87);
    }

    (*(v53 + 8))(v54, v24);
    v51 = &qword_100CA65D8;
    v52 = v55;
  }

  sub_1000180EC(v52, v51);
  v57 = v76;
  if (qword_100CA26C0 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_10000703C(v58, qword_100D90AA8);
  v59 = v87;
  v92 = *(v50 + 16);
  (v92)(v57, v43, v87);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = v57;
    v63 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v93[0] = v91;
    *v63 = 141558275;
    *(v63 + 4) = 1752392040;
    *(v63 + 12) = 2081;
    sub_10086FE04(&qword_100CA38C8);
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v85 = v24;
    v65 = v48;
    v67 = v66;
    (*(v86 + 8))(v62, v59);
    v68 = sub_100078694(v64, v67, v93);
    v48 = v65;
    v24 = v85;

    *(v63 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v60, v61, "Failed to find location identifier %{private,mask.hash}s from list", v63, 0x16u);
    sub_100006F14(v91);
    v50 = v86;
  }

  else
  {

    (*(v50 + 8))(v57, v59);
  }

  v69 = v77;
  sub_100169AC0(v48, v77);
  if (sub_100024D10(v69, 1, v24) == 1)
  {
    sub_1000180EC(v69, &unk_100CE2F20);
    return (v92)(v82, v43, v87);
  }

  else
  {
    v70 = v73;
    LocationModel.identifier.getter();
    (*(v78 + 8))(v69, v24);
    return (*(v50 + 32))(v82, v70, v87);
  }
}

uint64_t sub_10086F800(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v2 = type metadata accessor for Location.Identifier();
  v35 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10022C350(&qword_100CADD58);
  __chkstk_darwin(v33);
  v5 = &v30 - v4;
  v31 = type metadata accessor for Location();
  v6 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_10022C350(&qword_100CADBA0);
  v13 = __chkstk_darwin(v12 - 8);
  v32 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - v16;
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  LocationModel.locationOfInterest.getter();
  v20 = type metadata accessor for LocationOfInterest();
  if (sub_100024D10(v11, 1, v20) == 1)
  {
    sub_1000180EC(v11, &qword_100CA3588);
    v21 = 1;
  }

  else
  {
    LocationOfInterest.location.getter();
    (*(*(v20 - 8) + 8))(v11, v20);
    Location.identifier.getter();
    (*(v6 + 8))(v8, v31);
    v21 = 0;
  }

  sub_10001B350(v19, v21, 1, v2);
  v22 = v35;
  (*(v35 + 16))(v17, v34, v2);
  sub_10001B350(v17, 0, 1, v2);
  v23 = *(v33 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v5, 1, v2) != 1)
  {
    v25 = v32;
    sub_100095588();
    if (sub_100024D10(&v5[v23], 1, v2) != 1)
    {
      v26 = &v5[v23];
      v27 = v30;
      (*(v22 + 32))(v30, v26, v2);
      sub_10086FE04(&qword_100CA3A48);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v22 + 8);
      v28(v27, v2);
      sub_1000180EC(v17, &qword_100CADBA0);
      sub_1000180EC(v19, &qword_100CADBA0);
      v28(v32, v2);
      sub_1000180EC(v5, &qword_100CADBA0);
      return v24 & 1;
    }

    sub_1000180EC(v17, &qword_100CADBA0);
    sub_1000180EC(v19, &qword_100CADBA0);
    (*(v22 + 8))(v25, v2);
    goto LABEL_9;
  }

  sub_1000180EC(v17, &qword_100CADBA0);
  sub_1000180EC(v19, &qword_100CADBA0);
  if (sub_100024D10(&v5[v23], 1, v2) != 1)
  {
LABEL_9:
    sub_1000180EC(v5, &qword_100CADD58);
    v24 = 0;
    return v24 & 1;
  }

  sub_1000180EC(v5, &qword_100CADBA0);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_10086FD8C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10086FE04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Location.Identifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for LearnMoreAttributorView()
{
  result = qword_100CDFA30;
  if (!qword_100CDFA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10086FEBC()
{
  type metadata accessor for LearnMoreAttributorViewModel();
  if (v0 <= 0x3F)
  {
    sub_1000077F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10086FF78@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_10022C350(&qword_100CDFB30);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100003848();
  v68 = v4;
  __chkstk_darwin(v5);
  v67 = &v63 - v6;
  v66 = sub_10022C350(&qword_100CB8BD0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v65 = &v63 - v8;
  v9 = sub_10022C350(&qword_100CB3AB0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  v79 = &v63 - v11;
  sub_1000038CC();
  v81 = type metadata accessor for AttributeContainer();
  sub_1000037C4();
  v75 = v12;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v78 = v15 - v14;
  sub_1000038CC();
  type metadata accessor for AttributedString.Runs.Index();
  sub_1000037C4();
  v82 = v17;
  v83 = v16;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v20 = v19 - v18;
  v70 = type metadata accessor for AttributedString.Runs.Run();
  sub_1000037C4();
  v74 = v21;
  __chkstk_darwin(v22);
  sub_100003848();
  v69 = v23;
  __chkstk_darwin(v24);
  v80 = &v63 - v25;
  sub_1000038CC();
  v26 = type metadata accessor for AttributedString.Runs();
  sub_1000037C4();
  v63 = v27;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v76 = (v30 - v29);
  v77 = sub_10022C350(&qword_100CC26F8);
  sub_1000037E8();
  __chkstk_darwin(v31);
  v33 = &v63 - v32;
  v64 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_1000037D8();
  v39 = v38 - v37;
  sub_1000038CC();
  v40 = type metadata accessor for String.LocalizationValue();
  v41 = sub_100003810(v40);
  __chkstk_darwin(v41);
  sub_1000037D8();
  String.LocalizationValue.init(stringLiteral:)();
  if (*(v1 + *(type metadata accessor for LearnMoreAttributorViewModel() + 32)))
  {

    dispatch thunk of Lazy.value.getter();
  }

  else
  {
  }

  AttributedString.init(localized:bundle:linkA:linkB:)();
  v42 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v42 setAlignment:1];
  v43 = (v1 + *(type metadata accessor for LearnMoreAttributorView() + 28));
  v44 = *v43;
  if (*(v43 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v47 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v44, 0);
    (*(v35 + 8))(v39, v64);
    v45 = v69;
    if (v84 != 1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v46 = [objc_opt_self() blackColor];
    goto LABEL_9;
  }

  v45 = v69;
  if (v44)
  {
    goto LABEL_8;
  }

LABEL_6:
  v46 = sub_10068CE44();
LABEL_9:
  v84 = v46;
  sub_100504088();
  AttributedString.subscript.setter();
  v84 = v42;
  sub_1008723B8();
  v64 = v42;
  AttributedString.subscript.setter();
  v84 = sub_10068CF44();
  sub_100513F58();
  AttributedString.subscript.setter();
  v48 = v76;
  AttributedString.runs.getter();
  v49 = v63;
  (*(v63 + 16))(v33, v48, v26);
  sub_10087240C(&qword_100CC2708, &type metadata accessor for AttributedString.Runs);
  dispatch thunk of Collection.startIndex.getter();
  (*(v49 + 8))(v48, v26);
  ++v82;
  v76 = (v74 + 4);
  v77 = (v74 + 2);
  ++v74;
  ++v75;
  v50 = v70;
  v72 = v26;
  for (i = v33; ; v33 = i)
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_10087240C(&qword_100CC2710, &type metadata accessor for AttributedString.Runs.Index);
    v51 = v83;
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v82)(v20, v51);
    if (v52)
    {
      break;
    }

    v53 = dispatch thunk of Collection.subscript.read();
    v54 = v80;
    (*v77)(v80);
    v53(&v84, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v76)(v45, v54, v50);
    v55 = v78;
    AttributedString.Runs.Run.attributes.getter();
    sub_100504124();
    v56 = v79;
    AttributeContainer.subscript.getter();
    (*v75)(v55, v81);
    v57 = type metadata accessor for URL();
    LODWORD(v53) = sub_100024D10(v56, 1, v57);
    sub_1000180EC(v56, &qword_100CB3AB0);
    if (v53 != 1)
    {
      v58 = v65;
      AttributedString.Runs.Run.range.getter();
      v59 = v67;
      static Text.LineStyle.single.getter();
      v60 = type metadata accessor for Text.LineStyle();
      sub_10001B350(v59, 0, 1, v60);
      sub_100006F64(&qword_100CB8C08, &qword_100CB8BD0);
      v61 = AttributedString.subscript.modify();
      sub_100035AD0(v59, v68, &qword_100CDFB30);
      sub_100872454();
      v50 = v70;
      AttributedSubstring.subscript.setter();
      sub_1000180EC(v59, &qword_100CDFB30);
      v61(&v84, 0);
      v45 = v69;
      sub_1000180EC(v58, &qword_100CB8BD0);
    }

    (*v74)(v45, v50);
  }

  return sub_1000180EC(v33, &qword_100CC26F8);
}

uint64_t sub_10087096C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_10022C350(&qword_100CDFA70);
  sub_100870A00(v1, a1 + *(v3 + 44));
  sub_10068CE44();
  v4 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  result = sub_10022C350(&qword_100CDFA78);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  return result;
}

uint64_t sub_100870A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v27 = sub_10022C350(&qword_100CDFA80);
  __chkstk_darwin(v27);
  v4 = &v27 - v3;
  v5 = sub_10022C350(&qword_100CDFA88);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for AttributedString();
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v15 != 5)
  {
    sub_10086FF78(v13);
    v16 = Text.init(_:)();
    v17 = v20;
    v19 = v21;
    v18 = v22 & 1;
    sub_10010CD54(v16, v20, v22 & 1);
  }

  v23 = v28;
  if (*(*(v28 + 8) + 16))
  {
    *v4 = static VerticalAlignment.center.getter();
    *(v4 + 1) = 0x4034000000000000;
    v4[16] = 0;
    sub_10022C350(&qword_100CDFA90);
    sub_100870CF4(v23);
    sub_100218BC8(v4, v10);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  sub_10001B350(v10, v24, 1, v27);
  sub_100218C30(v10, v7);
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = 0x4030000000000000;
  *(a2 + 40) = 0;
  v25 = sub_10022C350(&qword_100CDFA98);
  sub_100218C30(v7, a2 + *(v25 + 64));
  sub_100148118(v16, v17, v18, v19);
  sub_10014A53C(v16, v17, v18, v19);
  sub_1000180EC(v10, &qword_100CDFA88);
  sub_1000180EC(v7, &qword_100CDFA88);
  return sub_10014A53C(v16, v17, v18, v19);
}

uint64_t sub_100870CF4(uint64_t a1)
{
  v2 = type metadata accessor for LearnMoreAttributorView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = *(a1 + 8);
  swift_getKeyPath();
  sub_100871D70(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100871DD4(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  sub_10022C350(&qword_100CDFAA0);
  sub_10022C350(&qword_100CDFAA8);
  sub_100006F64(&qword_100CDFAB0, &qword_100CDFAA0);
  sub_10087240C(&qword_100CDFAB8, &type metadata accessor for WeatherProviderAttribution);
  sub_100871E50();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100870EE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v56 = a1;
  v53 = a2;
  v2 = type metadata accessor for LearnMoreAttributorView();
  v3 = *(v2 - 8);
  v51 = v2 - 8;
  v55 = v3;
  v54 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v52 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityTraits();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PlainButtonStyle();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10022C350(&qword_100CDFAD8);
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v39 - v8;
  v43 = sub_10022C350(&qword_100CDFAE8);
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v11 = &v39 - v10;
  v44 = sub_10022C350(&qword_100CDFAD0);
  __chkstk_darwin(v44);
  v40 = &v39 - v12;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CDFAF0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  WeatherProviderAttribution.logoURL.getter();
  v20 = WeatherProviderAttribution.name.getter();
  sub_100871600(v16, v20, v21, v19);

  (*(v14 + 8))(v16, v13);
  WeatherProviderAttribution.source.getter();
  v57 = v19;
  v22 = v19;
  sub_1008720B4();
  Link.init(destination:label:)();
  v23 = v39;
  PlainButtonStyle.init()();
  v24 = sub_100006F64(&qword_100CDFAE0, &qword_100CDFAD8);
  v25 = sub_10087240C(&qword_100CB0848, &type metadata accessor for PlainButtonStyle);
  v26 = v41;
  v27 = v45;
  View.buttonStyle<A>(_:)();
  (*(v47 + 8))(v23, v27);
  (*(v42 + 8))(v9, v26);
  v28 = v48;
  static AccessibilityTraits.isButton.getter();
  v58 = v26;
  v59 = v27;
  v60 = v24;
  v61 = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v40;
  v30 = v43;
  View.accessibility(removeTraits:)();
  (*(v49 + 8))(v28, v50);
  (*(v46 + 8))(v11, v30);
  v31 = v56;
  v32 = v53;
  ModifiedContent<>.accessibilityHint(_:)();
  sub_1000180EC(v29, &qword_100CDFAD0);
  KeyPath = swift_getKeyPath();
  v34 = v52;
  sub_100871D70(v31, v52);
  v35 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v36 = swift_allocObject();
  sub_100871DD4(v34, v36 + v35);
  v37 = (v32 + *(sub_10022C350(&qword_100CDFAA8) + 36));
  sub_10022C350(&qword_100CA5500);
  OpenURLAction.init(handler:)();
  *v37 = KeyPath;
  return sub_1000180EC(v22, &qword_100CDFAF0);
}

uint64_t sub_100871600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v29._countAndFlagsBits = a2;
  v29._object = a3;
  v30 = a4;
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for LearnMoreAttributorView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_10022C350(&qword_100CDFB08);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 16))(v12, a1, v16);
  sub_10001B350(v12, 0, 1, v16);
  sub_100871D70(v4, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_100871DD4(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_10022C350(&qword_100CDFB20);
  sub_10087232C();
  AsyncImage.init(url:scale:transaction:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = &v15[*(v13 + 36)];
  v20 = v32;
  *v19 = v31;
  *(v19 + 1) = v20;
  *(v19 + 2) = v33;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v29);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
  LocalizedStringKey.init(stringInterpolation:)();
  v23 = Text.init(_:tableName:bundle:comment:)();
  v25 = v24;
  v27 = v26;
  sub_100872170();
  View.accessibilityLabel(_:)();
  sub_10010CD64(v23, v25, v27 & 1);

  return sub_1000180EC(v15, &qword_100CDFB08);
}

uint64_t sub_100871998(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for LearnMoreAttributorView() + 20);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);
    Strong = swift_unknownObjectRelease();
  }

  return static OpenURLAction.Result.systemAction.getter(Strong);
}

double sub_100871A30@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CBB908);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  if (AsyncImagePhase.image.getter())
  {
    v9 = enum case for Image.TemplateRenderingMode.template(_:);
    v10 = type metadata accessor for Image.TemplateRenderingMode();
    (*(*(v10 - 8) + 104))(v8, v9, v10);
    sub_10001B350(v8, 0, 1, v10);
    Image.renderingMode(_:)();
    sub_1000180EC(v8, &qword_100CBB908);
    (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
    v11 = Image.resizable(capInsets:resizingMode:)();

    (*(v3 + 8))(v5, v2);
    sub_10068CE44();
    v12 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    v18 = v11;
    v19 = KeyPath;
    v20 = v12;
    v21 = 0;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    sub_10022C350(&qword_100CAD9C8);
    sub_1003325F0();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v14 = static Color.clear.getter();
    v19 = 0;
    v20 = 0;
    v18 = v14;
    v21 = 1;
    sub_10022C350(&qword_100CAD9C8);
    sub_1003325F0();
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v22;
  v16 = v23;
  v17 = v24;
  *a1 = v22;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_100871D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreAttributorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100871DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreAttributorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100871E50()
{
  result = qword_100CDFAC0;
  if (!qword_100CDFAC0)
  {
    sub_10022E824(&qword_100CDFAA8);
    sub_100871F08();
    sub_100006F64(&qword_100CA54F8, &qword_100CA5500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDFAC0);
  }

  return result;
}

unint64_t sub_100871F08()
{
  result = qword_100CDFAC8;
  if (!qword_100CDFAC8)
  {
    sub_10022E824(&qword_100CDFAD0);
    sub_10022E824(&qword_100CDFAD8);
    type metadata accessor for PlainButtonStyle();
    sub_100006F64(&qword_100CDFAE0, &qword_100CDFAD8);
    sub_10087240C(&qword_100CB0848, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10087240C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDFAC8);
  }

  return result;
}

unint64_t sub_1008720B4()
{
  result = qword_100CDFAF8;
  if (!qword_100CDFAF8)
  {
    sub_10022E824(&qword_100CDFAF0);
    sub_100872170();
    sub_10087240C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDFAF8);
  }

  return result;
}

unint64_t sub_100872170()
{
  result = qword_100CDFB00;
  if (!qword_100CDFB00)
  {
    sub_10022E824(&qword_100CDFB08);
    sub_100006F64(&qword_100CDFB10, &qword_100CDFB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDFB00);
  }

  return result;
}

uint64_t sub_100872240(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = type metadata accessor for LearnMoreAttributorView();
  sub_100003810(v2);
  v3 = sub_100005614();

  return a2(v3);
}

double sub_1008722C0()
{
  v0 = type metadata accessor for LearnMoreAttributorView();
  sub_100003810(v0);
  sub_100005614();

  return sub_100871A30(v1);
}

unint64_t sub_10087232C()
{
  result = qword_100CDFB28;
  if (!qword_100CDFB28)
  {
    sub_10022E824(&qword_100CDFB20);
    sub_1003325F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDFB28);
  }

  return result;
}

unint64_t sub_1008723B8()
{
  result = qword_100CDFB38;
  if (!qword_100CDFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDFB38);
  }

  return result;
}

uint64_t sub_10087240C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100872454()
{
  result = qword_100CDFB40;
  if (!qword_100CDFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDFB40);
  }

  return result;
}

unint64_t sub_1008724A8()
{
  result = qword_100CDFB48;
  if (!qword_100CDFB48)
  {
    sub_10022E824(&qword_100CDFA78);
    sub_100006F64(&qword_100CDFB50, &qword_100CDFB58);
    sub_100006F64(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDFB48);
  }

  return result;
}

uint64_t sub_10087258C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v40 = a8;
  v38 = a4;
  v39 = a7;
  v34 = a2;
  v35 = a6;
  v36 = a5;
  v37 = a3;
  v13 = sub_10022C350(&qword_100CB4B98);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = objc_opt_self();
  v17 = [v16 currentDevice];
  v18 = [v17 userInterfaceIdiom];

  v19 = [v16 currentDevice];
  v20 = [v19 userInterfaceIdiom];

  v21 = sub_100872C50(v20 != 0);
  sub_100872CC4(a11, v20 != 0, a1, v15);
  v22 = a10;
  if (!a10)
  {
    v40 = sub_10043D444();
    v22 = v23;
  }

  if (v18)
  {
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = sub_10043CD34();
    v25 = v26;
  }

  v27 = v20 != 0;
  v28 = v34 & v35 & (v18 == 0);
  v29 = type metadata accessor for LocationFooterViewModel();
  sub_10011145C(v36, a9 + v29[9], type metadata accessor for LearnMoreAttributorViewModel);
  sub_1000302D8(a11, a9 + v29[11], &qword_100CA3588);
  *a9 = v28;
  *(a9 + 1) = v37 & 1;
  v30 = v39;
  *(a9 + 2) = v38 & 1;
  *(a9 + 8) = v40;
  *(a9 + 16) = v22;
  *(a9 + 24) = v24;
  *(a9 + 32) = v25;
  v31 = a9 + v29[10];
  *(v31 + 2) = BYTE2(v30);
  *v31 = v30;
  *(a9 + v29[12]) = v27;
  *(a9 + v29[13]) = v21;
  return sub_10011C0F0(v15, a9 + v29[14], &qword_100CB4B98);
}

uint64_t sub_1008727D8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = static Image.locationIntelligenceSymbol.getter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  return v2;
}

uint64_t sub_10087291C(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v2 = sub_10022C350(&qword_100CA53F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TemperatureDifferenceThresholdDetector();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TemperatureDifferenceThresholdDetector.init()();
  CurrentWeather.apparentTemperature.getter();
  CurrentWeather.temperature.getter();
  v13 = [objc_opt_self() fahrenheit];
  v14 = TemperatureDifferenceThresholdDetector.areTemperaturesSignificantlyDifferent(_:_:threshold:thresholdUnit:)();

  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  (*(v10 + 8))(v12, v9);
  v16 = 0;
  if (v14)
  {
    v17 = [objc_opt_self() mainBundle];
    v26._object = 0x8000000100AE21F0;
    v18._countAndFlagsBits = 0x694C20736C656546;
    v18._object = 0xEE004025203A656BLL;
    v19._object = 0x8000000100AE21D0;
    v19._countAndFlagsBits = 0xD00000000000001ALL;
    v26._countAndFlagsBits = 0x1000000000000351;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v17, v18, v26);

    sub_10022C350(&qword_100CA40C8);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100A2C3F0;
    v22 = *(v25 + 32);
    v21 = *(v25 + 40);
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100035744();
    *(v20 + 32) = v22;
    *(v20 + 40) = v21;

    v16 = static String.localizedStringWithFormat(_:_:)();
  }

  return v16;
}

uint64_t sub_100872C50(unsigned __int8 a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (((v3 == 0) & a1) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100872CC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for LocationOfInterest();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000302D8(a1, v10, &qword_100CA3588);
  if (sub_100024D10(v10, 1, v11) == 1)
  {
    sub_1000180EC(v10, &qword_100CA3588);
    v15 = type metadata accessor for HomeAndWorkRefinementRowViewModel();
    v16 = a4;
    v17 = 1;
  }

  else
  {
    v18 = *(v12 + 32);
    v18(v14, v10, v11);
    v19 = sub_100872EF4();
    v20 = type metadata accessor for HomeAndWorkRefinementRowViewModel();
    v21 = v20[5];
    v22 = type metadata accessor for Location();
    (*(*(v22 - 8) + 16))(&a4[v21], a3, v22);
    v18(&a4[v20[6]], v14, v11);
    *a4 = a2 & 1;
    a4[v20[7]] = v19;
    v16 = a4;
    v17 = 0;
    v15 = v20;
  }

  return sub_10001B350(v16, v17, 1, v15);
}

BOOL sub_100872EF4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 0;
}

uint64_t sub_100872F50()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);
  sub_100006F14(v0 + 96);
  sub_100006F14(v0 + 136);
  sub_100006F14(v0 + 176);
  sub_100006F14(v0 + 216);
  sub_100006F14(v0 + 256);
  sub_100006F14(v0 + 296);
  sub_100006F14(v0 + 336);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastWeatherData, &qword_100CA3898);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastNewsData, &qword_100CA74F8);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastViewModel, &qword_100CA4B78);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastPreprocessedDataUuid, &qword_100CC2B20);

  return v0;
}

uint64_t sub_100873068()
{
  sub_100872F50();

  return swift_deallocClassInstance();
}

BOOL sub_1008730C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  result = (v2 | v3) == 0;
  if (v2)
  {
    if (v3)
    {

      v5 = static Image.== infix(_:_:)();

      return v5 & 1;
    }
  }

  return result;
}

uint64_t sub_100873228()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_1000037D8();
  v4 = v3 - v2;
  Tips.Action.init(id:perform:_:)();
  sub_10022C350(&qword_100CA55B0);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  (*(v1 + 32))(v6 + v5, v4, v0);
  v7 = static Tips.ActionBuilder.buildFinalResult(_:)();
  swift_setDeallocating();
  sub_1005C1E40();
  return v7;
}

uint64_t sub_1008733A8()
{
  v0 = type metadata accessor for Font.TextStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  (*(v1 + 104))(v3, enum case for Font.TextStyle.body(_:), v0);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v1 + 8))(v3, v0);
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10010CD64(v4, v6, v8 & 1);

  swift_beginAccess();
  sub_100496768();
  swift_endAccess();
  v14 = Text.foregroundColor(_:)();

  sub_10010CD64(v9, v11, v13 & 1);

  return v14;
}

uint64_t sub_1008735E0()
{
  sub_10022C350(&qword_100CA5570);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_100873A94()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_100007074(v0, qword_100D911D0);
  sub_10000703C(v0, qword_100D911D0);
  sub_10022C350(&qword_100CA55A8);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100873BE4()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA2958 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D911D0);
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_100873E40@<X0>(uint64_t *a1@<X8>)
{
  sub_1002358F8();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100873E84()
{
  result = qword_100CDFD88;
  if (!qword_100CDFD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDFD88);
  }

  return result;
}

uint64_t sub_100873ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 88);
  v10 = *(v2 + 16);
  sub_100035B30(v2 + 48, a2 + 56);
  v9 = *(v2 + 96);
  sub_100035B30(v2 + 112, a2 + 112);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_10022C350(&qword_100CA4C50);
  sub_1008742CC();
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v10;
  *(a2 + 48) = a1;
  *(a2 + 96) = v9;
  State.init(wrappedValue:)();
  *(a2 + 152) = v11;
  *(a2 + 168) = v12;
  result = State.init(wrappedValue:)();
  *(a2 + 176) = v11;
  *(a2 + 184) = *(&v11 + 1);
  return result;
}

uint64_t sub_100874018()
{
  swift_unknownObjectRelease();

  sub_100006F14(v0 + 48);

  swift_unknownObjectRelease();
  sub_100006F14(v0 + 112);
  return v0;
}

uint64_t sub_100874068()
{
  sub_100874018();

  return swift_deallocClassInstance();
}

void *sub_1008740C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v32 = a11;
  v33 = a13;
  v21 = sub_100042FB0(v31);
  (*(*(a11 - 8) + 32))(v21, a5, a11);
  v22 = swift_allocObject();
  sub_10002D7F8(v31, v32);
  v29 = &type metadata for ContentStatusBannerViewFactory;
  v30 = &off_100C78818;
  if (qword_100CA26A0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000703C(v23, qword_100D90A48);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Initializing List module", v26, 2u);
  }

  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = a4;
  sub_100013188(&v28, (v22 + 6));
  v22[11] = a6;
  v22[12] = a7;
  v22[13] = a12;
  sub_100013188(a8, (v22 + 14));
  sub_100006F14(v31);
  return v22;
}

unint64_t sub_1008742CC()
{
  result = qword_100CA4C58;
  if (!qword_100CA4C58)
  {
    sub_10022E824(&qword_100CA4C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4C58);
  }

  return result;
}

uint64_t sub_100874330()
{
  type metadata accessor for Measurement();
  v0 = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    v2 = sub_10013DB50();
    if (v3 > 0x3F)
    {
      return v2;
    }

    swift_getTupleTypeMetadata2();
    v2 = type metadata accessor for Array();
    if (v4 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_1008744B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Measurement();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v26 - v5;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v26 - v12;
  v14 = *(a1 + 28);
  v15 = *(a1 + 40);
  v17 = *(v16 + 48);
  v28 = v7;
  v18 = *(v7 + 16);
  v18(v13, v2 + v14, v6, v11);
  (v18)(&v13[v17], v2 + v15, v6);
  if (sub_100024D10(v13, 1, v4) == 1)
  {
    if (sub_100024D10(&v13[v17], 1, v4) == 1)
    {
      (*(v28 + 8))(v13, v6);
LABEL_9:
      countAndFlagsBits = v2->_countAndFlagsBits;

      return countAndFlagsBits;
    }

    goto LABEL_6;
  }

  (v18)(v9, v13, v6);
  if (sub_100024D10(&v13[v17], 1, v4) == 1)
  {
    (*(v29 + 8))(v9, v4);
LABEL_6:
    (*(v27 + 8))(v13, TupleTypeMetadata2);
    goto LABEL_7;
  }

  v20 = v29;
  v21 = &v13[v17];
  v22 = v26;
  (*(v29 + 32))(v26, v21, v4);
  swift_getWitnessTable();
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v20 + 8);
  v24(v22, v4);
  v24(v9, v4);
  (*(v28 + 8))(v13, v6);
  if (v23)
  {
    goto LABEL_9;
  }

LABEL_7:
  v30 = 42;
  v31 = 0xE100000000000000;
  String.append(_:)(*v2);
  return v30;
}

uint64_t sub_100874850(uint64_t a1)
{
  v3 = type metadata accessor for Measurement();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - v6;
  v8 = *(v3 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = v24 - v11;
  (*(v5 + 16))(v7, v1 + *(a1 + 40), v4, v10);
  if (sub_100024D10(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return 63;
  }

  else
  {
    (*(v8 + 32))(v12, v7, v3);
    Measurement.value.getter();
    v24[0] = Double.description.getter();
    v24[1] = v14;
    v15._countAndFlagsBits = 10272;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    v16 = Measurement.unit.getter();
    v17 = [v16 symbol];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v13 = v24[0];
    (*(v8 + 8))(v12, v3);
  }

  return v13;
}

void sub_100874AAC()
{
  sub_10000C778();
  v2 = v1;
  v35 = *(v1 + 16);
  v36 = v3;
  type metadata accessor for Measurement();
  sub_100013B04();
  v4 = type metadata accessor for Optional();
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = type metadata accessor for MeasurementEditorView();
  v32 = v10;
  sub_100003B20();
  sub_100003828();
  __chkstk_darwin(v11);
  v33 = v28 - v12;
  v13 = sub_10022E824(&qword_100CD0638);
  v31 = v13;
  sub_100008B1C();
  v15 = sub_100006F64(v14, &qword_100CD0638);
  v30 = v15;
  sub_10001A098();
  WitnessTable = swift_getWitnessTable();
  v39 = v13;
  v40 = v10;
  v41 = v15;
  v42 = WitnessTable;
  v16 = type metadata accessor for NavigationLink();
  sub_1000037C4();
  v34 = v17;
  __chkstk_darwin(v18);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = v28 - v23;
  v28[1] = *v0;
  (*(v6 + 16))(v9, &v0[*(v2 + 40)], v4, v22);

  v25 = v35;
  sub_100874DAC();
  v37 = v25;
  v38 = v0;
  NavigationLink.init(destination:label:)();
  sub_1000233FC();
  v26 = swift_getWitnessTable();
  sub_1000833D8(v20, v16, v26);
  v27 = *(v34 + 8);
  v27(v20, v16);
  sub_1000833D8(v24, v16, v26);
  v27(v24, v16);
  sub_10000536C();
}

void sub_100874DAC()
{
  sub_10000C778();
  v31 = v0;
  v32 = v1;
  v29 = v2;
  v30 = v3;
  v5 = v4;
  v28 = v6;
  v8 = v7;
  v9 = type metadata accessor for Measurement();
  v10 = type metadata accessor for Optional();
  sub_1000037C4();
  v12 = v11;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  *v8 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for MeasurementEditorView();
  v17 = v16[8];
  sub_10001B350(v8 + v17, 1, 1, v9);
  v18 = v16[11];
  sub_10001B350(v15, 1, 1, v9);
  v19 = sub_10000EB30();
  sub_1008753BC(v19);
  v20 = (v8 + v16[7]);
  v21 = v29;
  *v20 = v28;
  v20[1] = v21;
  (*(v12 + 24))(v8 + v17, v5, v10);
  (*(v12 + 16))(v15, v5, v10);
  type metadata accessor for State();
  sub_1000037E8();
  (*(v22 + 8))(v8 + v18);
  v23 = sub_10000EB30();
  sub_1008753BC(v23);
  (*(v12 + 8))(v5, v10);
  v24 = v31;
  *(v8 + v16[9]) = v30;
  v25 = (v8 + v16[10]);
  v26 = v32;
  *v25 = v24;
  v25[1] = v26;
  sub_10000536C();
}

void *sub_100874FB4@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v8 = 1;
  sub_100875098(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v10, __src, sizeof(v10));
  sub_100035AD0(__dst, &v5, &qword_100CD0628);
  sub_1000180EC(v10, &qword_100CD0628);
  memcpy(&v7[7], __dst, 0x50uLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  return memcpy((a1 + 17), v7, 0x57uLL);
}

uint64_t sub_100875098@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MeasurementEditorRowView();
  sub_1008744B4(v2);
  sub_10002D5A4();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_100874850(v2);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13 & 1;
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v13 & 1;
  *(a1 + 72) = v15;
  sub_10010CD54(v3, v5, v7 & 1);

  sub_10010CD54(v10, v12, v14);

  sub_10010CD64(v10, v12, v14);

  sub_10010CD64(v3, v5, v7 & 1);
}

void sub_1008751F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA54B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  sub_100035AD0(v23, &a9 - v33, &qword_100CA54B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100463960(v34, v25);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v28 + 8))(v31, v26);
  }

  sub_10000536C();
}

uint64_t sub_1008753BC(uint64_t a1)
{
  type metadata accessor for Measurement();
  sub_100013B04();
  v2 = type metadata accessor for Optional();
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  v6 = __chkstk_darwin(v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  State.init(wrappedValue:)();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1008754A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Measurement();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = *(v2 - 8);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  type metadata accessor for MeasurementEditorView();
  type metadata accessor for State();
  State.wrappedValue.getter();
  if (sub_100024D10(v6, 1, v2) == 1)
  {
    result = (*(v4 + 8))(v6, v3);
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  else
  {
    (*(v7 + 32))(v10, v6, v2);
    Measurement.value.getter();
    v12 = Double.description.getter();
    v13 = v14;
    result = (*(v7 + 8))(v10, v2);
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t sub_10087569C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Measurement();
  v41 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v38 - v9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v18 = v38 - v17;
  __chkstk_darwin(v19);
  v22 = *a1;
  v23 = a1[1];
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    v33 = v38 - v20;
    sub_10001B350(v38 - v20, 1, 1, v8);
    type metadata accessor for MeasurementEditorView();
    (*(v12 + 16))(v18, v33, v11);
    type metadata accessor for State();
    State.wrappedValue.setter();
    return (*(v12 + 8))(v33, v11);
  }

  v39 = v21;
  v40 = v38 - v20;

  result = sub_10022F9A0(v22, v23);
  if ((v26 & 1) == 0)
  {
    v38[1] = result;
    v38[4] = a5;
    v27 = type metadata accessor for MeasurementEditorView();
    v28 = *(v27 + 44);
    v29 = v11;
    v38[2] = type metadata accessor for State();
    v38[3] = v28;
    State.wrappedValue.getter();
    if (sub_100024D10(v14, 1, v8))
    {
      v30 = v12;
      v31 = *(v12 + 8);
      v31(v14, v11);
      v43 = *(a4 + *(v27 + 36));
      swift_getTupleTypeMetadata2();
      type metadata accessor for Array();
      swift_getWitnessTable();
      result = Collection.first.getter();
      if (!v42)
      {
        __break(1u);
        return result;
      }

      v32 = v11;
    }

    else
    {
      v34 = v41;
      (*(v41 + 16))(v10, v14, v8);
      v35 = v12;
      v31 = *(v12 + 8);
      v31(v14, v29);
      Measurement.unit.getter();
      v36 = v10;
      v30 = v35;
      (*(v34 + 8))(v36, v8);
      v32 = v29;
    }

    v37 = v39;
    Measurement.init(value:unit:)();
    sub_10001B350(v37, 0, 1, v8);
    (*(v30 + 16))(v40, v37, v32);
    State.wrappedValue.setter();
    return (v31)(v37, v32);
  }

  return result;
}

void sub_100875AEC()
{
  sub_10000C778();
  v25 = v1;
  v26 = v2;
  v23 = v0;
  v24 = v3;
  v5 = v4;
  sub_1000037C4();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v10);
  v22 = *(v7 + 16);
  v22(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  v21 = *(v5 + 16);
  *(v14 + 4) = v21;
  v20 = *(v7 + 32);
  v20(&v14[v13], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  (v22)(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v5);
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  *(v16 + 2) = v15;
  v17 = v20;
  v18 = v21;
  *(v16 + 3) = &protocol witness table for MainActor;
  *(v16 + 4) = v18;
  v17(&v16[v13], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  Binding.init(get:set:)();
  sub_10000536C();
}

uint64_t sub_100875CA4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v21[0] = a3;
  v5 = type metadata accessor for Measurement();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v10 = *(v5 - 8);
  __chkstk_darwin(v11);
  v13 = v21 - v12;
  v14 = type metadata accessor for MeasurementEditorView();
  type metadata accessor for State();
  State.wrappedValue.getter();
  if (sub_100024D10(v9, 1, v5) == 1)
  {
    result = (*(v7 + 8))(v9, v6);
  }

  else
  {
    v16 = (*(v10 + 32))(v13, v9, v5);
    v21[2] = *(a1 + *(v14 + 36));
    __chkstk_darwin(v16);
    v21[-2] = a2;
    v21[-1] = v13;

    swift_getTupleTypeMetadata2();
    type metadata accessor for Array();
    swift_getWitnessTable();
    Sequence.first(where:)();

    if (v22)
    {
      v18 = v23;
      v17 = v24;

      v19 = v21[0];
      *v21[0] = v18;
      *(v19 + 8) = v17;
      return (*(v10 + 8))(v13, v5);
    }

    result = (*(v10 + 8))(v13, v5);
  }

  v20 = v21[0];
  *v21[0] = 0x6E776F6E6B6E55;
  *(v20 + 8) = 0xE700000000000000;
  return result;
}

uint64_t sub_100875F90()
{
  sub_1004CF8E0();
  type metadata accessor for Measurement();
  v0 = Measurement.unit.getter();
  v1 = static NSObject.== infix(_:_:)();

  return v1 & 1;
}

uint64_t sub_100876010(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Measurement();
  v9 = type metadata accessor for Optional();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v29 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v28 - v12;
  __chkstk_darwin(v14);
  v16 = v28 - v15;
  v18 = *a1;
  v17 = a1[1];
  v19 = type metadata accessor for MeasurementEditorView();
  v34 = *(a4 + *(v19 + 36));
  v31 = a5;
  v32 = v18;
  v33 = v17;

  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.first(where:)();

  v21 = v35;
  if (v35)
  {

    v22 = *(v19 + 44);
    type metadata accessor for State();
    v28[1] = v22;
    State.wrappedValue.getter();
    v23 = sub_100024D10(v13, 1, v8);
    v28[0] = a4;
    if (!v23)
    {
      Measurement.value.getter();
    }

    v24 = v8;
    v25 = v30;
    v26 = *(v30 + 8);
    v26(v13, v9);
    v27 = v21;
    Measurement.init(value:unit:)();
    sub_10001B350(v16, 0, 1, v24);
    (*(v25 + 16))(v29, v16, v9);
    State.wrappedValue.setter();

    return (v26)(v16, v9);
  }

  return result;
}

uint64_t sub_1008762E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == a2 && *(a1 + 16) == a3)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_100876340()
{
  sub_10000C778();
  v75 = v1;
  v76 = v0;
  v82 = v2;
  v3 = v1;
  sub_100007FD0();
  v78 = v4;
  v80 = *(v5 + 64);
  __chkstk_darwin(v6);
  v77 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA5528);
  v69 = v8;
  sub_100007FD0();
  v81 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  v79 = &v62 - v11;
  sub_10022E824(&qword_100CDFF60);
  v83 = *(v3 + 16);
  swift_getTupleTypeMetadata2();
  sub_10000E9D0();
  v12 = type metadata accessor for Array();
  v13 = sub_10022E824(&qword_100CDFF68);
  sub_100016D5C();
  WitnessTable = swift_getWitnessTable();
  v86 = v12;
  v87 = &type metadata for String;
  v88 = v13;
  v89 = WitnessTable;
  v90 = &protocol witness table for String;
  v15 = type metadata accessor for ForEach();
  v86 = &type metadata for Text;
  v87 = &type metadata for String;
  v88 = &protocol witness table for Text;
  v89 = &protocol witness table for String;
  sub_100004CD4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100008C6C();
  v16 = swift_getWitnessTable();
  v86 = &type metadata for Text;
  v87 = &type metadata for String;
  v88 = v15;
  v89 = &protocol witness table for Text;
  v90 = &protocol witness table for String;
  v91 = v16;
  type metadata accessor for Picker();
  swift_getTupleTypeMetadata2();
  sub_10000E9D0();
  v17 = type metadata accessor for TupleView();
  sub_1000065AC();
  v18 = swift_getWitnessTable();
  v86 = &type metadata for Never;
  v87 = v17;
  v88 = &protocol witness table for Never;
  v89 = v18;
  v19 = type metadata accessor for List();
  v20 = type metadata accessor for InlinePickerStyle();
  sub_10000694C();
  v21 = swift_getWitnessTable();
  v86 = v19;
  v87 = v20;
  v88 = v21;
  v89 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = v19;
  v87 = v20;
  v88 = v21;
  v89 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v22 = type metadata accessor for VStack();
  sub_1000037C4();
  v73 = v23;
  sub_100003828();
  __chkstk_darwin(v24);
  v26 = &v62 - v25;
  sub_100008CF4();
  v27 = swift_getWitnessTable();
  v28 = sub_10002D5A4();
  v86 = v22;
  v87 = &type metadata for String;
  v88 = v27;
  v89 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v70 = v29;
  sub_100007FD0();
  v74 = v30;
  sub_100003828();
  __chkstk_darwin(v31);
  v63 = &v62 - v32;
  v86 = v22;
  v87 = &type metadata for String;
  v88 = v27;
  v89 = v28;
  v33 = swift_getOpaqueTypeConformance2();
  v68 = v33;
  sub_100005DCC();
  v67 = sub_100006F64(v34, &qword_100CA5528);
  v86 = v29;
  v87 = v8;
  v88 = v33;
  v89 = v67;
  v71 = &opaque type descriptor for <<opaque return type of View.navigationBarItems<A>(trailing:)>>;
  v35 = swift_getOpaqueTypeMetadata2();
  sub_1000037C4();
  v72 = v36;
  __chkstk_darwin(v37);
  v64 = &v62 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v66 = &v62 - v40;
  v41 = v76;
  v84 = v83;
  v85 = v76;
  j___s7SwiftUI19HorizontalAlignmentV6centerACvgZ();
  VStack.init(alignment:spacing:content:)();
  v42 = v75;
  v43 = (v41 + *(v75 + 28));
  v45 = *v43;
  v44 = v43[1];
  v86 = v45;
  v87 = v44;
  View.navigationTitle<A>(_:)();
  (*(v73 + 8))(v26, v22);
  LocalizedStringKey.init(stringLiteral:)();
  v46 = v77;
  v47 = v78;
  (*(v78 + 16))(v77, v41, v42);
  v48 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v83;
  (*(v47 + 32))(v49 + v48, v46, v42);
  v50 = v79;
  Button<>.init(_:action:)();
  v51 = v70;
  v52 = v69;
  v53 = v68;
  v54 = v67;
  v55 = v63;
  View.navigationBarItems<A>(trailing:)();
  (*(v81 + 8))(v50, v52);
  (*(v74 + 8))(v55, v51);
  v86 = v51;
  v87 = v52;
  v88 = v53;
  v89 = v54;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v66;
  v58 = sub_10000EB30();
  sub_1000833D8(v58, v59, v56);
  v60 = *(v72 + 8);
  v61 = sub_10000EB30();
  v60(v61);
  sub_1000833D8(v57, v35, v56);
  (v60)(v57, v35);
  sub_10000536C();
}

uint64_t sub_100876AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v33 = a1;
  v35 = a3;
  v3 = type metadata accessor for InlinePickerStyle();
  v29 = v3;
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022E824(&qword_100CDFF60);
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for Array();
  v7 = sub_10022E824(&qword_100CDFF68);
  WitnessTable = swift_getWitnessTable();
  v38 = v6;
  v39 = &type metadata for String;
  v40 = v7;
  v41 = WitnessTable;
  v42 = &protocol witness table for String;
  v9 = type metadata accessor for ForEach();
  v38 = &type metadata for Text;
  v39 = &type metadata for String;
  v40 = &protocol witness table for Text;
  v41 = &protocol witness table for String;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = swift_getWitnessTable();
  v38 = &type metadata for Text;
  v39 = &type metadata for String;
  v40 = v9;
  v41 = &protocol witness table for Text;
  v42 = &protocol witness table for String;
  v43 = v10;
  type metadata accessor for Picker();
  swift_getTupleTypeMetadata2();
  v11 = type metadata accessor for TupleView();
  v12 = swift_getWitnessTable();
  v38 = &type metadata for Never;
  v39 = v11;
  v40 = &protocol witness table for Never;
  v41 = v12;
  v13 = type metadata accessor for List();
  v31 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v16 = swift_getWitnessTable();
  v38 = v13;
  v39 = v3;
  v40 = v16;
  v41 = &protocol witness table for InlinePickerStyle;
  v30 = &opaque type descriptor for <<opaque return type of View.pickerStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v28 - v22;
  v36 = v32;
  v37 = v33;
  List<>.init(content:)();
  InlinePickerStyle.init()();
  v24 = v29;
  View.pickerStyle<A>(_:)();
  (*(v34 + 8))(v5, v24);
  (*(v31 + 8))(v15, v13);
  v38 = v13;
  v39 = v24;
  v40 = v16;
  v41 = &protocol witness table for InlinePickerStyle;
  v25 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v20, OpaqueTypeMetadata2, v25);
  v26 = *(v18 + 8);
  v26(v20, OpaqueTypeMetadata2);
  sub_1000833D8(v23, OpaqueTypeMetadata2, v25);
  return (v26)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_100876F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v40 = a3;
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  sub_10022E824(&qword_100CDFF68);
  swift_getWitnessTable();
  v38 = type metadata accessor for ForEach();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v50 = &type metadata for Text;
  v51 = &type metadata for String;
  v52 = v38;
  v53 = &protocol witness table for Text;
  v54 = &protocol witness table for String;
  v55 = WitnessTable;
  v5 = type metadata accessor for Picker();
  v36 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v34 - v9;
  v39 = sub_10022C350(&qword_100CDFF60);
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  LocalizedStringKey.init(stringLiteral:)();
  v50 = Text.init(_:tableName:bundle:comment:)();
  v51 = v15;
  LOBYTE(v52) = v16 & 1;
  v53 = v17;
  v44 = a2;
  v45 = a1;
  sub_10022C350(&qword_100CDFF70);
  v18 = sub_10022E824(&qword_100CDFF78);
  v19 = sub_100006F64(&qword_100CDFF80, &qword_100CDFF78);
  v48 = v18;
  v49 = v19;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for MeasurementEditorView();
  v20 = v34;
  sub_100875AEC();
  v50 = v21;
  v51 = v22;
  v52 = v23;
  v53 = v24;
  v42 = a2;
  v43 = v20;
  Picker<>.init(_:selection:content:)();
  v25 = swift_getWitnessTable();
  v26 = v37;
  sub_1000833D8(v7, v5, v25);
  v27 = v36;
  v28 = *(v36 + 8);
  v28(v7, v5);
  v29 = v11;
  v30 = v11;
  v31 = v39;
  (*(v41 + 16))(v30, v14, v39);
  v50 = v29;
  (*(v27 + 16))(v7, v26, v5);
  v51 = v7;
  v48 = v31;
  v49 = v5;
  v46 = sub_100877F90();
  v47 = v25;
  sub_10012E24C(&v50, 2, &v48);
  v28(v26, v5);
  v32 = *(v41 + 8);
  v32(v14, v31);
  v28(v7, v5);
  return (v32)(v29, v31);
}

uint64_t sub_10087757C()
{
  v0 = sub_10022C350(&qword_100CDFF78);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for MeasurementEditorView();
  sub_100875AEC();
  TextField<>.init(_:text:onEditingChanged:onCommit:)();
  sub_100006F64(&qword_100CDFF80, &qword_100CDFF78);
  View.keyboardType(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100877770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for Array();
  v17[0] = sub_10022E824(&qword_100CDFF68);
  v18 = v5;
  v19 = &type metadata for String;
  v20 = v17[0];
  WitnessTable = swift_getWitnessTable();
  v22 = &protocol witness table for String;
  v6 = type metadata accessor for ForEach();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  v17[4] = *(a1 + *(type metadata accessor for MeasurementEditorView() + 36));
  v17[2] = a2;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a2;

  v18 = &type metadata for Text;
  v19 = &type metadata for String;
  v20 = &protocol witness table for Text;
  WitnessTable = &protocol witness table for String;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  v17[3] = OpaqueTypeConformance2;
  v13 = swift_getWitnessTable();
  sub_1000833D8(v9, v6, v13);
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_1000833D8(v12, v6, v13);
  return (v14)(v12, v6);
}

uint64_t sub_100877A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
  v8._countAndFlagsBits = v6;
  v8._object = v5;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v8);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  LocalizedStringKey.init(stringInterpolation:)();
  *a2 = Text.init(_:tableName:bundle:comment:)();
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 1;
}

uint64_t sub_100877B50(uint64_t a1)
{
  v2 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CA6D28);
  __chkstk_darwin(v3);
  v5 = var50 - v4;
  type metadata accessor for Measurement();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = var50 - v8;
  v10 = *(a1 + *(type metadata accessor for MeasurementEditorView() + 40));
  type metadata accessor for State();
  State.wrappedValue.getter();
  v10(v9);
  v11 = (*(v7 + 8))(v9, v6);
  sub_1008751F0(v11, v12, v13, v14, v15, v16, v17, v18, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  Binding.wrappedValue.getter();
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  return sub_1000180EC(v5, &qword_100CA6D28);
}

uint64_t sub_100877D5C()
{
  sub_100081BC8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for Measurement();
    v1 = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeMetadata2();
      v4 = type metadata accessor for Array();
      if (v5 > 0x3F)
      {
        return v4;
      }

      v4 = sub_10013DB50();
      if (v6 > 0x3F)
      {
        return v4;
      }

      else
      {
        v1 = type metadata accessor for State();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_100877F04()
{
  v1 = *(type metadata accessor for MeasurementEditorView() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100877B50(v2);
}

unint64_t sub_100877F90()
{
  result = qword_100CDFF88;
  if (!qword_100CDFF88)
  {
    sub_10022E824(&qword_100CDFF60);
    sub_10022E824(&qword_100CDFF78);
    sub_100006F64(&qword_100CDFF80, &qword_100CDFF78);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDFF88);
  }

  return result;
}

uint64_t sub_10087812C(uint64_t (*a1)(uint64_t, uint64_t, char *, uint64_t))
{
  v2 = v1[4];
  v3 = *(type metadata accessor for MeasurementEditorView() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return a1(v4, v5, v6, v2);
}

uint64_t sub_1008781C8()
{
  v2 = *(v1 + 32);
  sub_10003C9C4();
  type metadata accessor for MeasurementEditorView();
  sub_100003A0C();
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + v4;
  sub_10022C350(&qword_100CA54B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(sub_10022C350(&qword_100CA6D28) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v8 + 8))(v5 + v7);
  }

  sub_10001673C(v0[7]);

  v9 = v0[8];
  sub_10003C9C4();
  v10 = type metadata accessor for Measurement();
  if (!sub_1000187E0(v10))
  {
    sub_100003B20();
    (*(v11 + 8))(v5 + v9, v2);
  }

  sub_10001673C(v0[10]);

  if (!sub_100024B74())
  {
    sub_100003B20();
    (*(v12 + 8))(v0, v2);
  }

  type metadata accessor for Optional();
  sub_100013B04();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t sub_1008783C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  v4 = v2[4];
  v5 = *(type metadata accessor for MeasurementEditorView() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return a2(a1, v6, v7, v8, v4);
}

uint64_t sub_100878464(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0xD000000000000011;
  }

  else
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

uint64_t sub_1008784C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v93 = a5;
  *&v94 = a1;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_100003848();
  v90 = v12;
  __chkstk_darwin(v13);
  v87 = &v82 - v14;
  v15 = type metadata accessor for SevereMessage();
  __chkstk_darwin(v15);
  sub_100003848();
  v89 = v16;
  __chkstk_darwin(v17);
  if (!a4)
  {

    if (qword_100CA26F0 != -1)
    {
      sub_10001F570();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90B38);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v10;
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Attempted to parse APSMessage without channel identifier";
LABEL_44:
      _os_log_impl(&_mh_execute_header, v22, v23, v26, v25, 2u);
      sub_100003884();

      (*(v11 + 8))(v93, v24);
LABEL_46:
      v73 = 1;
      return sub_10001B350(a6, v73, 1, v15);
    }

LABEL_45:

    v70 = sub_100006964();
    v72(v70, v71);
    goto LABEL_46;
  }

  v86 = &v82 - v18;
  v95 = 0x6E6F6973726576;
  v96 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  sub_10001CFCC();
  sub_100166478(&v97);
  v91 = v11;
  v92 = v15;
  if (!v102)
  {
    sub_1003C1574(v101);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v20 = 0;
    LOBYTE(v15) = 1;
    goto LABEL_12;
  }

  v19 = v95;
  if ((v95 - 1) > 1)
  {
    v57 = v11;

    if (qword_100CA26F0 != -1)
    {
      sub_10001F570();
    }

    v58 = type metadata accessor for Logger();
    sub_10000703C(v58, qword_100D90B38);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v10;
      v62 = swift_slowAlloc();
      v63 = a6;
      v64 = swift_slowAlloc();
      v97 = v64;
      *v62 = 136446210;
      v101[0] = v19;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = sub_100078694(v65, v66, &v97);

      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v59, v60, "Attempted to parse APSMessage with unsupported version %{public}s", v62, 0xCu);
      sub_100006F14(v64);
      a6 = v63;
      sub_100003884();
      sub_100003884();

      (*(v57 + 8))(v93, v61);
    }

    else
    {

      v79 = sub_100006964();
      v81(v79, v80);
    }

    v73 = 1;
    v15 = v92;
    return sub_10001B350(a6, v73, 1, v15);
  }

  LOBYTE(v15) = 0;
  v20 = v95;
LABEL_12:
  v88 = v10;
  if (qword_100CA26F0 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v27 = type metadata accessor for Logger();
    v85 = sub_10000703C(v27, qword_100D90B38);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v84 = a2;
      v31 = v30;
      v32 = swift_slowAlloc();
      v83 = a3;
      v33 = v32;
      v97 = v32;
      *v31 = 136446210;
      v34 = sub_100878464(v20, v15);
      v82 = v20;
      v36 = v15;
      v15 = a6;
      v37 = sub_100078694(v34, v35, &v97);
      v20 = v82;

      *(v31 + 4) = v37;
      a6 = v15;
      LOBYTE(v15) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Parse APSMessage with version %{public}s", v31, 0xCu);
      sub_100006F14(v33);
      a3 = v83;
      sub_100003884();
      a2 = v84;
      sub_100003884();
    }

    v38 = v20 == 2 ? v15 : 1;
    v39 = v88;
    if ((v38 & 1) == 0)
    {
      break;
    }

    v95 = 0x73746E657665;
    v96 = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    sub_10001CFCC();

    sub_100166478(&v97);
    v40 = v91;
    v15 = v92;
    if (!v102)
    {
      v55 = sub_100006964();
      v56(v55);

      sub_1003C1574(v101);
      goto LABEL_46;
    }

    sub_10022C350(&qword_100CDFF90);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v68 = sub_100006964();
      v69(v68);

      goto LABEL_46;
    }

    v87 = a6;
    v41 = v95;
    (*(v40 + 16))(v90, v93, v39);
    v20 = 0;
    v42 = v89;
    *v89 = v94;
    v42[1] = a2;
    v42[2] = a3;
    v42[3] = a4;
    a6 = *(v41 + 16);
    v43 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (a6 == v20)
      {

        v75 = v91;
        v76 = v88;
        (*(v91 + 8))(v93, v88);
        v78 = v89;
        v77 = v90;
        v89[4] = v43;
        v15 = v92;
        (*(v75 + 32))(&v78[*(v92 + 28)], v77, v76);
        v53 = v86;
        sub_1003B3344(v78, v86);
        a6 = v87;
        goto LABEL_49;
      }

      if (v20 >= *(v41 + 16))
      {
        break;
      }

      v101[0] = *(v41 + 8 * v20 + 32);
      sub_1008796C0(v101, &v97);
      v44 = v98;
      if (v98)
      {
        a4 = v97;
        a3 = v99;
        v94 = v100;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10069F2BC();
          v43 = v46;
        }

        a2 = v43[2];
        v15 = a2 + 1;
        if (a2 >= v43[3] >> 1)
        {
          sub_10069F2BC();
          v43 = v47;
        }

        v43[2] = v15;
        v45 = &v43[5 * a2];
        v45[4] = a4;
        v45[5] = v44;
        v45[6] = a3;
        *(v45 + 7) = v94;
      }

      ++v20;
    }

    __break(1u);
LABEL_53:
    sub_10001F570();
  }

  v95 = 0x737472656C61;
  v96 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  sub_10001CFCC();

  sub_100166478(&v97);
  v11 = v91;
  v15 = v92;
  if (!v102)
  {

    sub_1003C1574(v101);
    goto LABEL_42;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_42:
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v39;
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Attempted to parse APSMessage with version 2, without binary alert payload";
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  v89 = v96;
  v90 = v95;
  v48 = v87;
  v49 = a6;
  v50 = a3;
  v51 = a2;
  v52 = v93;
  (*(v11 + 16))(v87, v93, v39);
  v53 = v86;
  v54 = v50;
  a6 = v49;
  sub_100878E68(v94, v51, v54, a4, v90, v89, v48, v86);
  (*(v11 + 8))(v52, v39);
LABEL_49:
  sub_1003B3344(v53, a6);
  v73 = 0;
  return sub_10001B350(a6, v73, 1, v15);
}

uint64_t sub_100878E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v55 = a8;
  v56 = a7;
  v53 = a3;
  v54 = a4;
  v65 = a2;
  v62 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v61 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a5;
  v68 = a6;
  sub_1006DE088(a5, a6);
  v13 = 0;
  v60 = (v11 + 8);
  v14 = _swiftEmptyArrayStorage;
  *(&v15 + 1) = 8;
  v59 = xmmword_100A3B020;
  *&v15 = 136315394;
  v57 = v15;
  v52 = a6;
  v51 = a5;
  v58 = v10;
  while (2)
  {
    v16 = v61;
    switch(a6 >> 62)
    {
      case 1uLL:
        v17 = a5;
        v18 = a5 >> 32;
        goto LABEL_7;
      case 2uLL:
        v17 = *(a5 + 16);
        v18 = *(a5 + 24);
LABEL_7:
        if (v17 != v18)
        {
          goto LABEL_8;
        }

        goto LABEL_19;
      case 3uLL:
        goto LABEL_19;
      default:
        if ((a6 & 0xFF000000000000) == 0)
        {
LABEL_19:
          sub_10030F778(v51, v52);
          v39 = v55;
          v38 = v56;
          v41 = v53;
          v40 = v54;
          goto LABEL_20;
        }

LABEL_8:
        if (v13 != 500)
        {
          static FixedSizeTypeBinaryCodable.read(from:)();
          v19 = UUID.uuidString.getter();
          v21 = v20;
          (*v60)(v16, v10);
          sub_10022C350(&qword_100CAB9C0);
          v22 = swift_allocObject();
          *(v22 + 16) = v59;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v22 + 32) = (bswap32(LOWORD(v66[0])) >> 16) / 100.0;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v22 + 40) = (bswap32(LOWORD(v66[0])) >> 16) / 100.0;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v22 + 48) = (bswap32(LOWORD(v66[0])) >> 16) / 100.0;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v22 + 56) = (bswap32(LOWORD(v66[0])) >> 16) / 100.0;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10069F2BC();
            v14 = v36;
          }

          v24 = v14[2];
          if (v24 >= v14[3] >> 1)
          {
            sub_10069F2BC();
            v14 = v37;
          }

          v14[2] = v24 + 1;
          v64 = v14;
          v25 = &v14[5 * v24];
          v25[4] = v19;
          v25[5] = v21;
          v26 = v65;
          v25[6] = v62;
          v25[7] = v26;
          v25[8] = v22;
          if (qword_100CA26F0 != -1)
          {
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          sub_10000703C(v27, qword_100D90B38);

          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.default.getter();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v66[0] = swift_slowAlloc();
            *v30 = v57;
            v31 = sub_100078694(v19, v21, v66);

            *(v30 + 4) = v31;
            *(v30 + 12) = 2080;
            v32 = Array.description.getter();
            v34 = v33;

            v35 = sub_100078694(v32, v34, v66);

            *(v30 + 14) = v35;
            _os_log_impl(&_mh_execute_header, v28, v29, "Received weather alert: %s - %s", v30, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v14 = v64;
          v13 = v63 + 1;
          a5 = v67;
          a6 = v68;
          v10 = v58;
          continue;
        }

        if (qword_100CA26F0 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_10000703C(v46, qword_100D90B38);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        v49 = os_log_type_enabled(v47, v48);
        v41 = v53;
        v40 = v54;
        if (v49)
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "Breaking out of SevereMessage parsing", v50, 2u);
        }

        sub_10030F778(v51, v52);

        v39 = v55;
        v38 = v56;
LABEL_20:
        sub_10030F778(v67, v68);
        v42 = v65;
        *v39 = v62;
        *(v39 + 1) = v42;
        *(v39 + 2) = v41;
        *(v39 + 3) = v40;
        *(v39 + 4) = v14;
        v43 = *(type metadata accessor for SevereMessage() + 28);
        v44 = type metadata accessor for Date();
        return (*(*(v44 - 8) + 32))(&v39[v43], v38, v44);
    }
  }
}

double sub_1008796C0@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_10087A800(0x696669746E656469, 0xEA00000000007265, *a1);
  if (!v4 || (v14 = v4, (swift_dynamicCast() & 1) == 0))
  {
    if (qword_100CA26F0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000703C(v6, qword_100D90B38);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_15;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Message event payload did not include identifier";
    goto LABEL_14;
  }

  if (sub_10087A800(2020565602, 0xE400000000000000, v3))
  {
    sub_10022C350(&qword_100CCF578);
    if (swift_dynamicCast())
    {
      *a2 = v12;
      a2[1] = v13;
      a2[2] = v12;
      a2[3] = v13;
      a2[4] = v14;

      return result;
    }
  }

  if (qword_100CA26F0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000703C(v11, qword_100D90B38);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Message event payload did not include bounding box";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);
  }

LABEL_15:

  a2[4] = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

uint64_t sub_100879918()
{
  _StringGuts.grow(_:)(25);

  strcpy(v15, "Identifier: ");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x3A737472656C410ALL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  v3 = *(countAndFlagsBits + 16);
  if (v3)
  {
    sub_10000369C(0, v3, 0);
    v4 = (countAndFlagsBits + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v8 >= v7 >> 1)
      {
        sub_10000369C((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v6;
      v9[5] = v5;
      v4 += 5;
      --v3;
    }

    while (v3);
  }

  sub_10022C350(&qword_100CCC930);
  sub_1001141C8();
  v10 = BidirectionalCollection<>.joined(separator:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  return v15[0];
}

uint64_t type metadata accessor for SevereMessage()
{
  result = qword_100CDFFF0;
  if (!qword_100CDFFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100879B2C()
{
  sub_100879BC0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100879BC0()
{
  if (!qword_100CE0000)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE0000);
    }
  }
}

uint64_t sub_100879C58()
{
  sub_100049E20();
  if (v3 && (v4 = v2, v5 = sub_10023819C(v1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for Tips.Status();
    sub_1000037E8();
    (*(v10 + 16))(v0, v8 + *(v10 + 72) * v7, v9);
    v11 = sub_10000FEF4();
    v14 = v9;
  }

  else
  {
    type metadata accessor for Tips.Status();
    v11 = sub_100007E1C();
  }

  return sub_10001B350(v11, v12, v13, v14);
}

double sub_100879D00()
{
  sub_100075174();
  if (v2 && (v3 = v1, v4 = sub_100031B34(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 32 * v4;

    sub_100109514(v6, v0);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

uint64_t sub_100879D60()
{
  sub_100049E20();
  if (v2 && (v3 = v1, sub_100237FB4(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for CalendarMoonPhaseData(0);
    sub_1000037E8();
    sub_1001AF774(v7 + *(v9 + 72) * v6, v0, type metadata accessor for CalendarMoonPhaseData);
    v10 = sub_10000FEF4();
    v13 = v8;
  }

  else
  {
    type metadata accessor for CalendarMoonPhaseData(0);
    v10 = sub_100007E1C();
  }

  return sub_10001B350(v10, v11, v12, v13);
}

uint64_t sub_100879E04(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_100238288();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 56) + 16 * v2);

  return v4;
}

uint64_t sub_100879E5C()
{
  sub_100049E20();
  if (v3 && (v4 = v2, v5 = sub_1000D5F5C(v1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for HourTemperatureStatistics();
    sub_1000037E8();
    (*(v10 + 16))(v0, v8 + *(v10 + 72) * v7, v9);
    v11 = sub_10000FEF4();
    v14 = v9;
  }

  else
  {
    type metadata accessor for HourTemperatureStatistics();
    v11 = sub_100007E1C();
  }

  return sub_10001B350(v11, v12, v13, v14);
}

double sub_100879F04()
{
  sub_100049E20();
  if (v3 && (v4 = v2, v5 = sub_100166298(v1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 32 * v5;

    sub_100109514(v7, v0);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

uint64_t sub_100879F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100031B34();
  if (v4)
  {
    return sub_100015064(v3);
  }

  else
  {
    return 0;
  }
}

void sub_100879FFC()
{
  sub_100075174();
  v2 = 0uLL;
  if (v3)
  {
    v4 = v1;
    v5 = sub_100031B34();
    if (v6)
    {
      v7 = 0;
      v8 = (*(v4 + 56) + 32 * v5);
      v2 = *v8;
      v9 = v8[1];
    }

    else
    {
      v7 = 1;
      v9 = 0uLL;
      v2 = 0uLL;
    }
  }

  else
  {
    v7 = 1;
    v9 = 0uLL;
  }

  *v0 = v2;
  *(v0 + 16) = v9;
  *(v0 + 32) = v7;
}

uint64_t sub_10087A064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_100075174();
  if (v7 && (v8 = v6, v9 = sub_100031B34(), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = a4(0);
    sub_1000037E8();
    (*(v14 + 16))(v4, v12 + *(v14 + 72) * v11, v13);
    v15 = sub_10000FEF4();
    v18 = v13;
  }

  else
  {
    a4(0);
    v15 = sub_100007E1C();
  }

  return sub_10001B350(v15, v16, v17, v18);
}

uint64_t sub_10087A11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100031B34();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_100015064(v3);
  return swift_unknownObjectRetain();
}

uint64_t sub_10087A168(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1002382E8();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100015064(v2);
}

uint64_t sub_10087A1B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1000D5F5C(a1);
  if (v3)
  {
    return sub_100015064(v2);
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_10087A208()
{
  Hasher.init(_seed:)();
  StubLocalSearchRequestService.Errors.hash(into:)();
  return Hasher._finalize()();
}

uint64_t StubLocalSearchRequestService.__allocating_init(locations:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t StubLocalSearchRequestService.performLocalSearch(with:)()
{
  v2 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v2 - 8);
  sub_100017038();
  sub_10000548C();
  __chkstk_darwin(v3);
  sub_1000088C0();
  __chkstk_darwin(v4);
  sub_100006970();
  if (sub_100024D10(v1, 1, v0) == 1)
  {
    sub_10087A430(v1);
    sub_10087A498();
    swift_allocError();
    sub_10022C350(&qword_100CD04C0);
    sub_100003B6C();
    return Promise.init(error:)();
  }

  else
  {
    v6 = sub_10001A0B0();
    v7(v6);
    v8 = sub_100004CEC();
    v9(v8);
    sub_10022C350(&qword_100CD04C0);
    v5 = sub_100003B6C();
    Promise.init(value:)();
    v10 = sub_100028CA8();
    v11(v10);
  }

  return v5;
}

uint64_t sub_10087A430(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA65D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10087A498()
{
  result = qword_100CE0038;
  if (!qword_100CE0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0038);
  }

  return result;
}

uint64_t StubLocalSearchRequestService.performLocalSearch(with:calloutTitle:)()
{
  v2 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v2 - 8);
  sub_100017038();
  sub_10000548C();
  __chkstk_darwin(v3);
  sub_1000088C0();
  __chkstk_darwin(v4);
  sub_100006970();
  if (sub_100024D10(v1, 1, v0) == 1)
  {
    sub_10087A430(v1);
    sub_10087A498();
    swift_allocError();
    sub_10022C350(&qword_100CD04C0);
    sub_100003B6C();
    return Promise.init(error:)();
  }

  else
  {
    v6 = sub_10001A0B0();
    v7(v6);
    v8 = sub_100004CEC();
    v9(v8);
    sub_10022C350(&qword_100CD04C0);
    v5 = sub_100003B6C();
    Promise.init(value:)();
    v10 = sub_100028CA8();
    v11(v10);
  }

  return v5;
}

uint64_t StubLocalSearchRequestService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10087A6D4()
{
  result = qword_100CE0040;
  if (!qword_100CE0040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0040);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StubLocalSearchRequestService.Errors(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_10087A804(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10087A844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10087A8A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6D614E68746E6F6DLL && a2 == 0xED0000676E6F4C65;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E68746E6F6DLL && a2 == 0xEE0074726F685365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x54657369726E7573 && a2 == 0xEB00000000656D69;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x69547465736E7573 && a2 == 0xEA0000000000656DLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6874646957726162 && a2 == 0xE800000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x8000000100AE2920 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10087AAB4(char a1)
{
  result = 0x6D614E68746E6F6DLL;
  switch(a1)
  {
    case 2:
      result = 0x54657369726E7573;
      break;
    case 3:
      result = 0x69547465736E7573;
      break;
    case 4:
      result = 0x6874646957726162;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10087AB80(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 32) == *(a2 + 32) ? (v6 = *(a1 + 40) == *(a2 + 40)) : (v6 = 0), (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 48) == *(a2 + 48) ? (v7 = *(a1 + 56) == *(a2 + 56)) : (v7 = 0), (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 64) == *(a2 + 64)))))
  {
    return *(a1 + 72) == *(a2 + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10087AC50(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CE00F8);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_10087B2D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  sub_10001CFE8();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_10001CFE8();
    LOBYTE(v13) = 2;
    sub_10001CFE8();
    LOBYTE(v13) = 3;
    sub_10001CFE8();
    v13 = *(v3 + 64);
    HIBYTE(v12) = 4;
    sub_10048F96C();
    sub_1000069B0();
    v13 = *(v3 + 72);
    HIBYTE(v12) = 5;
    sub_1000069B0();
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_10087AE08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10022C350(&qword_100CE00E8);
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000161C0(a1, a1[3]);
  sub_10087B2D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v6 = sub_100010DEC();
  v8 = v7;
  v20 = sub_100010DEC();
  v23 = v9;
  v10 = sub_100010DEC();
  v21 = v11;
  v19 = v10;
  LOBYTE(v25[0]) = 3;
  v18 = sub_100010DEC();
  v22 = v12;
  LOBYTE(__src[0]) = 4;
  sub_10048F8C0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v25[0];
  v26 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = sub_1000102B8();
  v15(v14);
  v16 = v27;
  __src[0] = v6;
  __src[1] = v8;
  __src[2] = v20;
  __src[3] = v23;
  __src[4] = v19;
  __src[5] = v21;
  __src[6] = v18;
  __src[7] = v22;
  __src[8] = v13;
  __src[9] = v27;
  sub_1007C12F4(__src, v25);
  sub_100006F14(a1);
  v25[0] = v6;
  v25[1] = v8;
  v25[2] = v20;
  v25[3] = v23;
  v25[4] = v19;
  v25[5] = v21;
  v25[6] = v18;
  v25[7] = v22;
  v25[8] = v13;
  v25[9] = v16;
  sub_100688F50(v25);
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t sub_10087B1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10087A8A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10087B1F0(uint64_t a1)
{
  v2 = sub_10087B2D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10087B22C(uint64_t a1)
{
  v2 = sub_10087B2D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10087B26C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10087AE08(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

unint64_t sub_10087B2D0()
{
  result = qword_100CE00F0;
  if (!qword_100CE00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE00F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetMonthlyAverageRowViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10087B404()
{
  result = qword_100CE0100;
  if (!qword_100CE0100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0100);
  }

  return result;
}

unint64_t sub_10087B45C()
{
  result = qword_100CE0108;
  if (!qword_100CE0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0108);
  }

  return result;
}

unint64_t sub_10087B4B4()
{
  result = qword_100CE0110;
  if (!qword_100CE0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0110);
  }

  return result;
}

uint64_t sub_10087B508(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_10087B54C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_10087B590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v11 = &v20 - v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v9, v13, v4, v10);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      (v12)(v7, v13 + *(v5 + 72) * i, v4);
      sub_1000FE8B0();
      v16 = dispatch thunk of static Comparable.< infix(_:_:)();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v7, v4);
      }

      else
      {
        v17(v7, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return sub_10001B350(v18, 0, 1, v4);
  }

  else
  {

    return sub_10001B350(a2, 1, 1, v4);
  }
}

uint64_t sub_10087B7CC()
{
  v1 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = type metadata accessor for LocationComponentAction(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for LocationViewAction();
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050FF0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_100053318(v12, type metadata accessor for LocationViewAction);
  }

  sub_100073140();
  sub_100050FF0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for BannerStateComputer();
    if (*(v0 + *(v13 + 28)) == 1)
    {
      v14 = *(v0 + *(v13 + 20));
      v15 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      if ((*(v14 + v15 + *(type metadata accessor for ViewState(0) + 40) + 1) & 0xC0) == 0x40)
      {
        v16 = v14 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        if (*(v16 + *(type metadata accessor for EnvironmentState() + 68)))
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        v18 = type metadata accessor for ContentStatusBanner();
        v19 = *(v18 + 24);
        v20 = type metadata accessor for Date();
        sub_10001B350(&v3[v19], 1, 1, v20);
        *v3 = v17;
        *(v3 + 8) = xmmword_100A3BBB0;
        sub_10001B350(v3, 0, 1, v18);
        sub_1000B8080();
      }
    }

    sub_100053318(v9, type metadata accessor for LocationComponentAction);
    v21 = type metadata accessor for WeatherMapOverlayKind();
    (*(*(v21 - 8) + 8))(v6, v21);
  }

  else
  {
    sub_100053318(v9, type metadata accessor for LocationComponentAction);
    sub_100053318(v6, type metadata accessor for LocationComponentAction);
  }

  v23 = sub_10022C350(&qword_100CA6658);
  return sub_1000180EC(&v12[*(v23 + 64)], &unk_100CB2CF0);
}

uint64_t sub_10087BB70(uint64_t a1, unint64_t a2)
{
  v5 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v5 - 8);
  v50 = &v49 - v6;
  v7 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v7 - 8);
  v9 = &v49 - v8;
  v10 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v13 - 8);
  v15 = &v49 - v14;
  v16 = sub_10022C350(&qword_100CE0118);
  __chkstk_darwin(v16 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = *(type metadata accessor for BannerStateComputer() + 20);
  v51 = v2;
  v23 = *(*(v2 + v22) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  sub_1000864C0(a1, a2, v23);

  v24 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v12, 1, v24) == 1)
  {
    v25 = &qword_100CA37B0;
    v26 = v12;
LABEL_5:
    sub_1000180EC(v26, v25);
    v28 = type metadata accessor for CurrentWeather();
    sub_10001B350(v21, 1, 1, v28);
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000703C(v29, qword_100D90D08);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = v33;
      *v32 = 141558275;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      *(v32 + 14) = sub_100078694(a1, a2, &v52);
      _os_log_impl(&_mh_execute_header, v30, v31, "Not displaying slow connection banner - location has no data. ID=%{private,mask.hash}s", v32, 0x16u);
      sub_100006F14(v33);
    }

    return sub_1000180EC(v21, &qword_100CE0118);
  }

  sub_1001A0D3C();
  sub_100053318(v12, type metadata accessor for LocationWeatherDataState);
  v27 = type metadata accessor for WeatherData(0);
  if (sub_100024D10(v15, 1, v27) == 1)
  {
    v25 = &qword_100CA3898;
    v26 = v15;
    goto LABEL_5;
  }

  WeatherDataModel.currentWeather.getter();
  sub_100053318(v15, type metadata accessor for WeatherData);
  v34 = type metadata accessor for CurrentWeather();
  sub_10001B350(v21, 0, 1, v34);
  if (qword_100CA2790 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000703C(v35, qword_100D90D08);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();

  v38 = os_log_type_enabled(v36, v37);
  v49 = a1;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = a1;
    v42 = v40;
    v52 = v40;
    *v39 = 141558275;
    *(v39 + 4) = 1752392040;
    *(v39 + 12) = 2081;
    *(v39 + 14) = sub_100078694(v41, a2, &v52);
    _os_log_impl(&_mh_execute_header, v36, v37, "Displaying slow connection banner. ID=%{private,mask.hash}s", v39, 0x16u);
    sub_100006F14(v42);
  }

  v43 = v50;
  sub_100095588();
  if (sub_100024D10(v18, 1, v34) == 1)
  {
    sub_1000180EC(v18, &qword_100CE0118);
    v44 = 1;
  }

  else
  {
    CurrentWeather.date.getter();
    (*(*(v34 - 8) + 8))(v18, v34);
    v44 = 0;
  }

  v45 = v49;
  v46 = type metadata accessor for Date();
  sub_10001B350(v43, v44, 1, v46);
  *v9 = 3;
  *(v9 + 1) = v45;
  *(v9 + 2) = a2;
  v47 = type metadata accessor for ContentStatusBanner();
  sub_100051BBC();
  sub_10001B350(v9, 0, 1, v47);
  swift_bridgeObjectRetain_n();
  sub_1000B8080();
  return sub_1000180EC(v21, &qword_100CE0118);
}

void sub_10087C244(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v6 - 8);
  v119 = &v108[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v120 = &v108[-v9];
  __chkstk_darwin(v10);
  v113 = &v108[-v11];
  __chkstk_darwin(v12);
  v14 = &v108[-v13];
  v15 = type metadata accessor for CurrentWeather();
  v116 = *(v15 - 8);
  v117 = v15;
  __chkstk_darwin(v15);
  v115 = &v108[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v17 - 8);
  v111 = &v108[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v108[-v20];
  __chkstk_darwin(v22);
  v24 = &v108[-v23];
  v25 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v25 - 8);
  v27 = &v108[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v30 = &v108[-v29];
  __chkstk_darwin(v31);
  v33 = &v108[-v32];
  v34 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v34 - 8);
  v112 = &v108[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v38 = &v108[-v37];
  if (static Location.currentLocationID.getter() == a1 && v39 == a2)
  {

    goto LABEL_12;
  }

  v114 = a1;
  v118 = a2;
  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
LABEL_12:
    v52 = a3;
    v44 = v121;
    sub_10087DAC0(v52);
    goto LABEL_13;
  }

  v42 = type metadata accessor for BannerStateComputer();
  v43 = v42;
  v44 = v121;
  if (*(v121 + *(v42 + 28)) == 1)
  {
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_10000703C(v45, qword_100D90D08);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();

    v48 = os_log_type_enabled(v46, v47);
    v110 = v43;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v122[0] = v50;
      *v49 = 141558275;
      *(v49 + 4) = 1752392040;
      *(v49 + 12) = 2081;
      v51 = v114;
      *(v49 + 14) = sub_100078694(v114, v118, v122);
      _os_log_impl(&_mh_execute_header, v46, v47, "Showing no connection banner (loaded from cache). ID=%{private,mask.hash}s", v49, 0x16u);
      sub_100006F14(v50);
      v43 = v110;
    }

    else
    {

      v51 = v114;
    }

    v67 = *(v44 + *(v43 + 20));
    v68 = *(v67 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    sub_1000864C0(v51, v118, v68);

    v69 = type metadata accessor for LocationWeatherDataState(0);
    if (sub_100024D10(v24, 1, v69) == 1)
    {
      v70 = &qword_100CA37B0;
      v71 = v24;
    }

    else
    {
      sub_1001A0D3C();
      sub_100053318(v24, type metadata accessor for LocationWeatherDataState);
      v81 = type metadata accessor for WeatherData(0);
      if (sub_100024D10(v33, 1, v81) != 1)
      {
        v95 = v115;
        WeatherDataModel.currentWeather.getter();
        sub_100053318(v33, type metadata accessor for WeatherData);
        CurrentWeather.date.getter();
        (*(v116 + 8))(v95, v117);
        v82 = 0;
        goto LABEL_45;
      }

      v70 = &qword_100CA3898;
      v71 = v33;
    }

    sub_1000180EC(v71, v70);
    v82 = 1;
LABEL_45:
    v96 = type metadata accessor for Date();
    sub_10001B350(v38, v82, 1, v96);
    v97 = v67 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    if (*(v97 + *(type metadata accessor for EnvironmentState() + 68)))
    {
      v98 = 2;
    }

    else
    {
      v98 = 1;
    }

    v99 = type metadata accessor for ContentStatusBanner();
LABEL_49:
    sub_100095588();
    *v14 = v98;
    v100 = v118;
    *(v14 + 1) = v114;
    *(v14 + 2) = v100;
    sub_10001B350(v14, 0, 1, v99);
    swift_bridgeObjectRetain_n();
    sub_1000B8080();
    sub_1000180EC(v38, &unk_100CB2CF0);
    goto LABEL_13;
  }

  v62 = *(v121 + *(v42 + 20)) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
  v63 = *(v62 + 16);

  sub_1000864C0(v114, v118, v63);

  v64 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v21, 1, v64) != 1)
  {
    sub_1001A0D3C();
    sub_100053318(v21, type metadata accessor for LocationWeatherDataState);
    v72 = type metadata accessor for WeatherData(0);
    if (sub_100024D10(v30, 1, v72) == 1)
    {
      v65 = &qword_100CA3898;
      v66 = v30;
      goto LABEL_30;
    }

    sub_1001A5104();
    v85 = v84;
    v87 = v86;
    sub_100053318(v30, type metadata accessor for WeatherData);
    v73 = v118;
    if (!v85)
    {
      goto LABEL_31;
    }

    v109 = v87;
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_10000703C(v88, qword_100D90D08);

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();

    v91 = os_log_type_enabled(v89, v90);
    v110 = v43;
    if (v91)
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v122[0] = v93;
      *v92 = 141558275;
      *(v92 + 4) = 1752392040;
      *(v92 + 12) = 2081;
      v94 = v114;
      *(v92 + 14) = sub_100078694(v114, v118, v122);
      _os_log_impl(&_mh_execute_header, v89, v90, "Showing weather unavailable banner (showing dynamic lookup data). ID=%{private,mask.hash}s", v92, 0x16u);
      sub_100006F14(v93);

      v73 = v118;
    }

    else
    {

      v94 = v114;
    }

    v101 = *(v62 + 16);

    v102 = v111;
    sub_1000864C0(v94, v73, v101);

    if (sub_100024D10(v102, 1, v64) == 1)
    {
      sub_1000180EC(v102, &qword_100CA37B0);
      v103 = 1;
      v44 = v121;
    }

    else
    {
      sub_1001A0D3C();
      sub_100053318(v102, type metadata accessor for LocationWeatherDataState);
      v104 = sub_100024D10(v27, 1, v72);
      v44 = v121;
      if (v104 != 1)
      {
        v105 = v115;
        WeatherDataModel.currentWeather.getter();
        sub_100053318(v27, type metadata accessor for WeatherData);
        v38 = v112;
        CurrentWeather.date.getter();
        (*(v116 + 8))(v105, v117);
        v103 = 0;
        goto LABEL_57;
      }

      sub_1000180EC(v27, &qword_100CA3898);
      v103 = 1;
    }

    v38 = v112;
LABEL_57:
    v106 = v109;
    v107 = type metadata accessor for Date();
    sub_10001B350(v38, v103, 1, v107);

    if (v106)
    {
      v98 = 0;
    }

    else
    {
      v98 = 6;
    }

    v99 = type metadata accessor for ContentStatusBanner();
    v14 = v113;
    goto LABEL_49;
  }

  v65 = &qword_100CA37B0;
  v66 = v21;
LABEL_30:
  sub_1000180EC(v66, v65);
  v73 = v118;
LABEL_31:
  if (qword_100CA2790 != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  sub_10000703C(v74, qword_100D90D08);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.info.getter();

  v77 = os_log_type_enabled(v75, v76);
  v44 = v121;
  v78 = v73;
  if (v77)
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v122[0] = v80;
    *v79 = 141558275;
    *(v79 + 4) = 1752392040;
    *(v79 + 12) = 2081;
    *(v79 + 14) = sub_100078694(v114, v78, v122);
    _os_log_impl(&_mh_execute_header, v75, v76, "Removing banner (successfully loaded new data). ID=%{private,mask.hash}s", v79, 0x16u);
    sub_100006F14(v80);
  }

  v83 = type metadata accessor for ContentStatusBanner();
  sub_10001B350(v120, 1, 1, v83);

  sub_1000B8080();
LABEL_13:
  v53 = type metadata accessor for BannerStateComputer();
  if (*(v44 + *(v53 + 28)) == 1)
  {
    v54 = *(v44 + *(v53 + 20));
    v55 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
    if (*(v54 + v55 + *(type metadata accessor for ViewState(0) + 36) + 8) != 1)
    {
      return;
    }

    v56 = v54 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    if (*(v56 + *(type metadata accessor for EnvironmentState() + 68)))
    {
      v57 = 2;
    }

    else
    {
      v57 = 1;
    }

    v58 = type metadata accessor for ContentStatusBanner();
    v59 = v119;
    sub_10087ECB4(&v119[*(v58 + 24)]);
    *v59 = v57;
    *(v59 + 8) = 0;
    *(v59 + 16) = 0;
    sub_10001B350(v59, 0, 1, v58);
  }

  else
  {
    if (sub_100183848())
    {
      return;
    }

    v60 = type metadata accessor for ContentStatusBanner();
    v61 = v120;
    sub_10001B350(v120, 1, 1, v60);
    sub_1000B8080();
    sub_10001B350(v61, 1, 1, v60);
  }

  sub_1000B8080();
}