void sub_1005A0CF0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *&v1[OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground];
  if (!v4)
  {
    goto LABEL_4;
  }

  sub_100009F78(0, &qword_101181620);
  v5 = v4;
  if (static NSObject.== infix(_:_:)())
  {

LABEL_4:
    v7.receiver = v1;
    v7.super_class = ObjectType;
    objc_msgSendSuper2(&v7, "addSubview:", a1);
    return;
  }

  v6 = [v5 contentView];
  [v6 addSubview:a1];
}

void sub_1005A0E40(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SidebarActivityView.Activity();
  __chkstk_darwin(v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1005A4018(v2, v9, type metadata accessor for SidebarActivityView.Activity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v11 = *v9;
    if (EnumCaseMultiPayload == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    Hasher._combine(_:)(v12);
    NSObject.hash(into:)();
  }

  else
  {
    sub_1005A3F00(v9, v6);
    Hasher._combine(_:)(0);
    sub_10054CE38(a1);
    sub_1005A3FB8(v6, type metadata accessor for LibraryImport.ViewModel);
  }
}

Swift::Int sub_1005A0FA8()
{
  Hasher.init(_seed:)();
  sub_1005A0E40(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1005A0FEC()
{
  Hasher.init(_seed:)();
  sub_1005A0E40(v1);
  return Hasher._finalize()();
}

void sub_1005A102C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin(v4 - 8);
  v147 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for SidebarActivityView.Activity();
  v154 = *(v149 - 8);
  v6 = __chkstk_darwin(v149);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v156 = (&ObjectType - v10);
  __chkstk_darwin(v9);
  v12 = &ObjectType - v11;
  v13 = OBJC_IVAR____TtC5Music19SidebarActivityView_activities;

  LOBYTE(a1) = sub_10047D7CC(v14, a1);

  if (a1)
  {
    return;
  }

  v15 = *&v2[v13];
  v16 = &off_101196000;
  v17 = *(v15 + 16);
  v155 = v2;
  v153 = v17;
  if (!v17)
  {
    v20 = _swiftEmptyDictionarySingleton;
    goto LABEL_37;
  }

  v152 = OBJC_IVAR____TtC5Music19SidebarActivityView_activityViewsMap;
  v151 = v15 + ((*(v154 + 80) + 32) & ~*(v154 + 80));

  v19 = 0;
  v20 = _swiftEmptyDictionarySingleton;
  v150 = v18;
  do
  {
    if (v19 >= *(v18 + 16))
    {
      goto LABEL_105;
    }

    v23 = v154[9];
    sub_1005A4018(v151 + v23 * v19, v12, type metadata accessor for SidebarActivityView.Activity);
    v24 = v152;
    swift_beginAccess();
    v25 = *&v2[v24];
    v26 = *(v25 + 16);
    v157 = v23;
    if (v26)
    {
      v27 = sub_1006BEB14(v12);
      if (v28)
      {
        v29 = *(*(v25 + 56) + 8 * v27);
        swift_endAccess();
        v30 = v29;
        goto LABEL_25;
      }
    }

    swift_endAccess();
    sub_1005A4018(v12, v156, type metadata accessor for SidebarActivityView.Activity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v44 = v147;
      sub_1005A3F00(v156, v147);
      v45 = sub_10010FC20(&qword_101196BB8);
      __chkstk_darwin(v45);
      *(&ObjectType - 2) = v44;
      v30 = _UIHostingView.init(content:)(sub_1005A3F64);
      sub_1005A3FB8(v44, type metadata accessor for LibraryImport.ViewModel);
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v30 = *v156;
      goto LABEL_25;
    }

    v148 = *v156;
    v32 = type metadata accessor for AccountButtonWrapper();
    v33 = objc_allocWithZone(v32);
    *&v33[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button] = 0;
    v33[OBJC_IVAR____TtC5Music20AccountButtonWrapper_location] = 0;
    v158.receiver = v33;
    v158.super_class = v32;
    v30 = objc_msgSendSuper2(&v158, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v30 sizeToFit];
    v34 = AccessibilityIdentifier.accountButton.unsafeMutableAddressor();
    v35 = *v34;
    v36 = v34[1];

    v37 = v35;
    v38 = v148;
    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v37, v36);

    v39 = OBJC_IVAR____TtC5Music20AccountButtonWrapper_button;
    v40 = *&v30[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button];
    *&v30[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button] = v38;
    if (!v40)
    {
      v46 = v38;
      v42 = 0;
LABEL_18:
      v47 = [v42 superview];
      if (v47)
      {
        v48 = v47;
        sub_100009F78(0, &qword_101181620);
        v49 = v30;
        v50 = static NSObject.== infix(_:_:)();

        if (v50)
        {
          [v42 removeFromSuperview];
        }
      }

      if (*&v30[v39])
      {
        [v30 addSubview:?];
      }

      [v30 setNeedsLayout];

      v51 = v148;
      goto LABEL_24;
    }

    sub_100009F78(0, &qword_101181620);
    v41 = v38;
    v42 = v40;
    v43 = static NSObject.== infix(_:_:)();

    if ((v43 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v2 = v155;
LABEL_25:
    sub_1005A4018(v12, v8, type metadata accessor for SidebarActivityView.Activity);
    v52 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v20;
    v54 = sub_1006BEB14(v8);
    v56 = v20[2];
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(v56, v57);
    v59 = v56 + v57;
    if (v58)
    {
      goto LABEL_106;
    }

    v60 = v55;
    if (v20[3] < v59)
    {
      sub_1006C42BC(v59, isUniquelyReferenced_nonNull_native);
      v54 = sub_1006BEB14(v8);
      if ((v60 & 1) != (v61 & 1))
      {
        goto LABEL_114;
      }

LABEL_30:
      v20 = aBlock;
      if (v60)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v65 = v54;
    sub_1006CA4B8();
    v54 = v65;
    v20 = aBlock;
    if (v60)
    {
LABEL_4:
      v21 = v20[7];
      v22 = v21[v54];
      v21[v54] = v52;

      sub_1005A3FB8(v8, type metadata accessor for SidebarActivityView.Activity);
      sub_1005A3FB8(v12, type metadata accessor for SidebarActivityView.Activity);
      goto LABEL_5;
    }

LABEL_31:
    v20[(v54 >> 6) + 8] = (v20[(v54 >> 6) + 8] | (1 << v54));
    v62 = v54;
    sub_1005A4018(v8, v20[6] + v54 * v157, type metadata accessor for SidebarActivityView.Activity);
    *(v20[7] + v62) = v52;

    sub_1005A3FB8(v8, type metadata accessor for SidebarActivityView.Activity);
    sub_1005A3FB8(v12, type metadata accessor for SidebarActivityView.Activity);
    v63 = v20[2];
    v58 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (v58)
    {
      goto LABEL_108;
    }

    v20[2] = v64;
LABEL_5:
    ++v19;
    v18 = v150;
  }

  while (v153 != v19);

  v16 = &off_101196000;
LABEL_37:
  v66 = v16[347];
  swift_beginAccess();
  v67 = *&v66[v2];
  swift_bridgeObjectRetain_n();

  v152 = sub_1005A3D18(v68, v20);

  v69 = sub_1005A3D18(v20, v67);

  swift_bridgeObjectRelease_n();
  *&v66[v2] = v20;

  [v2 invalidateIntrinsicContentSize];
  [v2 setNeedsLayout];
  v70 = v2;
  v71 = v69;
  v72 = [v70 superview];
  [v72 setNeedsLayout];

  v73 = v69 + 64;
  v74 = 1 << *(v69 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & *(v69 + 64);
  v154 = OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground;
  v77 = OBJC_IVAR____TtC5Music19SidebarActivityView_viewObservers;
  v78 = (v74 + 63) >> 6;

  v79 = 0;
  v156 = v71;
  v157 = v77;
  v153 = v73;
LABEL_42:
  if (v76)
  {
    v82 = v155;
    goto LABEL_49;
  }

  v82 = v155;
  while (1)
  {
    v83 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (v83 >= v78)
    {
      break;
    }

    v76 = *(v73 + 8 * v83);
    ++v79;
    if (v76)
    {
      v79 = v83;
LABEL_49:
      v84 = *&v71[7][(v79 << 9) | (8 * __clz(__rbit64(v76)))];
      if (([v84 isHidden] & 1) == 0)
      {
        if ([objc_opt_self() areAnimationsEnabled])
        {
          v85 = 0.0;
        }

        else
        {
          v85 = 1.0;
        }

        [v84 setAlpha:{v85, ObjectType}];
      }

      v86 = *(v154 + v82);
      if (v86)
      {
        sub_100009F78(0, &qword_101181620);
        v87 = v86;
        if (static NSObject.== infix(_:_:)())
        {

          goto LABEL_57;
        }

        v88 = [v87 contentView];
        [v88 addSubview:v84];
      }

      else
      {
LABEL_57:
        v166.receiver = v82;
        v166.super_class = ObjectType;
        objc_msgSendSuper2(&v166, "addSubview:", v84, ObjectType);
      }

      aBlock = v84;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v89 = v84;
      v90 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      swift_beginAccess();
      v91 = *&v82[v77];
      if ((v91 & 0xC000000000000001) != 0)
      {
        if (v91 < 0)
        {
          v92 = *&v82[v77];
        }

        else
        {
          v92 = v91 & 0xFFFFFFFFFFFFFF8;
        }

        v93 = __CocoaDictionary.count.getter();
        if (__OFADD__(v93, 1))
        {
          goto LABEL_110;
        }

        v94 = sub_1005A32F4(v92, v93 + 1);
        v95 = v155;
        *&v155[v77] = v94;
      }

      else
      {
        v95 = v155;
      }

      v96 = v77;
      v97 = swift_isUniquelyReferenced_nonNull_native();
      v165 = *&v95[v96];
      v98 = v165;
      *&v95[v96] = 0x8000000000000000;
      v100 = sub_1006BEB80(v89);
      v101 = v98[2];
      v102 = (v99 & 1) == 0;
      v103 = v101 + v102;
      if (__OFADD__(v101, v102))
      {
        goto LABEL_109;
      }

      v104 = v99;
      if (v98[3] >= v103)
      {
        if ((v97 & 1) == 0)
        {
          sub_1006CA358();
        }
      }

      else
      {
        sub_1006C4054(v103, v97);
        v105 = sub_1006BEB80(v89);
        if ((v104 & 1) != (v106 & 1))
        {
          goto LABEL_115;
        }

        v100 = v105;
      }

      v77 = v157;
      v107 = v165;
      if (v104)
      {
        v80 = v165[7];
        v81 = *(v80 + 8 * v100);
        *(v80 + 8 * v100) = v90;
      }

      else
      {
        v165[(v100 >> 6) + 8] |= 1 << v100;
        *(v107[6] + 8 * v100) = v89;
        *(v107[7] + 8 * v100) = v90;
        v108 = v107[2];
        v58 = __OFADD__(v108, 1);
        v109 = v108 + 1;
        if (v58)
        {
          goto LABEL_111;
        }

        v107[2] = v109;
      }

      v76 &= v76 - 1;
      *&v155[v77] = v107;
      swift_endAccess();

      v71 = v156;
      v73 = v153;
      goto LABEL_42;
    }
  }

  v110 = objc_opt_self();
  if ([v110 areAnimationsEnabled])
  {
    v111 = v71[2];
    if (v111)
    {
      v112 = sub_1003ADFE0(v71[2], 0);
      v113 = sub_100197ED8(&aBlock, v112 + 4, v111, v71);

      sub_10005C9F8();
      if (v113 != v111)
      {
        goto LABEL_113;
      }

      v82 = v155;
      v71 = v156;
    }

    else
    {
      v112 = _swiftEmptyArrayStorage;
    }

    [v82 bounds];
    sub_1005A2130(v112);

    v139 = swift_allocObject();
    v140 = v152;
    v139[2] = v152;
    v139[3] = v82;
    v139[4] = v71;
    v163 = sub_1005A3EEC;
    v164 = v139;
    aBlock = _NSConcreteStackBlock;
    v160 = 1107296256;
    v161 = sub_10002BC98;
    v162 = &unk_1010B4810;
    v141 = _Block_copy(&aBlock);

    v142 = v82;

    v143 = swift_allocObject();
    *(v143 + 16) = v140;
    *(v143 + 24) = v142;
    v163 = sub_1005A3EF8;
    v164 = v143;
    aBlock = _NSConcreteStackBlock;
    v160 = 1107296256;
    v161 = sub_1005C3688;
    v162 = &unk_1010B4860;
    v144 = _Block_copy(&aBlock);

    v145 = v142;

    [v110 animateWithDuration:3 delay:v141 options:v144 animations:0.35 completion:0.0];

    _Block_release(v144);
    _Block_release(v141);
    return;
  }

  v114 = v152 + 64;
  v115 = 1 << *(v152 + 32);
  v116 = -1;
  if (v115 < 64)
  {
    v116 = ~(-1 << v115);
  }

  v117 = v116 & *(v152 + 64);
  v118 = (v115 + 63) >> 6;

  v119 = 0;
  while (2)
  {
    if (v117)
    {
LABEL_89:
      v121 = *(*(v152 + 56) + ((v119 << 9) | (8 * __clz(__rbit64(v117)))));
      [v121 removeFromSuperview];
      v122 = v155;
      swift_beginAccess();
      v123 = *&v122[v77];
      if ((v123 & 0xC000000000000001) != 0)
      {
        if (v123 < 0)
        {
          v124 = v123;
        }

        else
        {
          v124 = v123 & 0xFFFFFFFFFFFFFF8;
        }

        v125 = v121;
        if (__CocoaDictionary.lookup(_:)())
        {
          swift_unknownObjectRelease();

          v126 = __CocoaDictionary.count.getter();
          v127 = sub_1005A32F4(v124, v126);

          v128 = sub_1006BEB80(v125);
          v130 = v129;

          if ((v130 & 1) == 0)
          {
            goto LABEL_112;
          }

          v131 = *(*(v127 + 56) + 8 * v128);
          sub_100409DFC(v128, v127);

          v77 = v157;
          *&v155[v157] = v127;

          goto LABEL_83;
        }
      }

      else
      {
        v125 = v121;
        v132 = sub_1006BEB80(v125);
        if (v133)
        {
          v134 = v132;
          v135 = v155;
          v136 = v157;
          v137 = swift_isUniquelyReferenced_nonNull_native();
          v138 = *&v135[v136];
          v165 = v138;
          if ((v137 & 1) == 0)
          {
            sub_1006CA358();
            v138 = v165;
          }

          v154 = *(*(v138 + 56) + 8 * v134);
          sub_100409DFC(v134, v138);
          *&v135[v136] = v138;

          v77 = v136;
          goto LABEL_83;
        }
      }

      v77 = v157;
LABEL_83:
      v117 &= v117 - 1;
      swift_endAccess();

      continue;
    }

    break;
  }

  while (1)
  {
    v120 = v119 + 1;
    if (__OFADD__(v119, 1))
    {
      break;
    }

    if (v120 >= v118)
    {

      return;
    }

    v117 = *(v114 + 8 * v120);
    ++v119;
    if (v117)
    {
      v119 = v120;
      goto LABEL_89;
    }
  }

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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_115:
  sub_100009F78(0, &qword_101181620);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1005A2048()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidateIntrinsicContentSize];
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsLayout];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 superview];

    [v6 setNeedsLayout];
  }
}

uint64_t sub_1005A2130(unint64_t a1)
{
  v2 = v1;
  v38 = a1;
  ObjectType = swift_getObjectType();
  [v1 directionalLayoutMargins];
  [v1 effectiveUserInterfaceLayoutDirection];
  CGRect.inset(by:for:)();
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  v37 = CGRectGetWidth(v45);
  v7 = sub_1005A2B0C();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = 0;
    v34 = OBJC_IVAR____TtC5Music19SidebarActivityView_spacing;
    v39 = OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground;
    v36 = v8 & 0xC000000000000001;
    v35 = v8 & 0xFFFFFFFFFFFFFF8;
    v11 = y;
    while (1)
    {
      if (v36)
      {
        v12 = sub_100062D50(v10, v8);
      }

      else
      {
        if (v10 >= *(v35 + 16))
        {
          goto LABEL_27;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = i;
      [v12 sizeThatFits:{v37, 1.79769313e308}];
      v17 = v16;
      v19 = v18;
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      v21 = CGRectGetWidth(v46);
      if (v21 < v17)
      {
        v17 = v21;
      }

      v41 = v13;
      __chkstk_darwin(v20);
      v32[2] = &v41;
      if (sub_10044B140(sub_1005A410C, v32, v38))
      {
        CGRect.centeringAlong(axes:in:)();
        v42 = 0u;
        v43 = 0u;
        v44 = 1;
        CGRect.applyingLayoutDirection(in:bounds:)();
        [v13 setFrame:?];
      }

      v47.origin.x = x;
      v47.origin.y = v11;
      v47.size.width = v17;
      v47.size.height = v19;
      MaxY = CGRectGetMaxY(v47);
      v23 = *&v2[v34];
      v24 = [v13 superview];
      v25 = *&v2[v39];
      if (v25 && (v26 = [v25 contentView]) != 0)
      {
        if (v24)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v26 = v2;
        if (v24)
        {
LABEL_18:
          sub_100009F78(0, &qword_101181620);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_6;
          }

          goto LABEL_22;
        }
      }

LABEL_22:
      v28 = *&v2[v39];
      if (v28)
      {
        sub_100009F78(0, &qword_101181620);
        v29 = v28;
        if ((static NSObject.== infix(_:_:)() & 1) == 0)
        {
          v30 = [v29 contentView];
          [v30 addSubview:v13];

          goto LABEL_6;
        }
      }

      v40.receiver = v2;
      v40.super_class = ObjectType;
      objc_msgSendSuper2(&v40, "addSubview:", v13);
LABEL_6:
      v11 = MaxY + v23;

      ++v10;
      i = v15;
      if (v14 == v15)
      {
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }
}

void sub_1005A2540(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      [*(*(a1 + 56) + ((v12 << 9) | (8 * v13))) setAlpha:0.0];
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v14 = [a2 superview];
  [v14 layoutIfNeeded];

  [a2 layoutIfNeeded];
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  while (v17)
  {
LABEL_20:
    v21 = *(*(a3 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v17)))));
    if (([v21 isHidden] & 1) == 0)
    {
      [v21 setAlpha:1.0];
    }

    v17 &= v17 - 1;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      return;
    }

    v17 = *(a3 + 64 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_20;
    }
  }

LABEL_26:
  __break(1u);
}

void sub_1005A272C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = OBJC_IVAR____TtC5Music19SidebarActivityView_activityViewsMap;
  v19[4] = OBJC_IVAR____TtC5Music19SidebarActivityView_viewObservers;
  v21 = a2;

  v20 = v8;
  v9 = swift_beginAccess();
  v10 = 0;
  v11 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_10:
    v13 = *(a3 + v20);
    v22 = *(*(v21 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    __chkstk_darwin(v9);
    v19[2] = &v22;
    v15 = v14;

    sub_10044B170(sub_1005A4080, v19, v13);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      [v15 removeFromSuperview];
      [v15 setAlpha:1.0];
      swift_beginAccess();
      v18 = v15;
      v15 = sub_1004084EC(v18);
      swift_endAccess();
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1005A2988()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground];
  if (v9)
  {
    v10 = v9;
    [v10 frame];
    if (v6 != v12 || v8 != v11)
    {
      [v10 setFrame:{v2, v4, v6, v8}];
    }
  }

  v14 = *&v0[OBJC_IVAR____TtC5Music19SidebarActivityView_separatorView];
  if (v14)
  {
    v15 = v14;
    v23.origin.x = v2;
    v23.origin.y = v4;
    v23.size.width = v6;
    v23.size.height = v8;
    Width = CGRectGetWidth(v23);
    v17 = [v0 traitCollection];
    [v17 displayScale];
    v19 = v18;

    [v15 setFrame:{0.0, 0.0, Width, 1.0 / fmax(v19, 1.0)}];
  }

  v20 = sub_1005A2B0C();
  sub_1005A2130(v20);
}

void *sub_1005A2B0C()
{
  v1 = v0;
  v2 = type metadata accessor for SidebarActivityView.Activity() - 8;
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC5Music19SidebarActivityView_activities);
  v7 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC5Music19SidebarActivityView_activityViewsMap;
    v10 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    v18[1] = v6;

    do
    {
      sub_1005A4018(v10, v5, type metadata accessor for SidebarActivityView.Activity);
      swift_beginAccess();
      v12 = *(v1 + v9);
      if (*(v12 + 16) && (v13 = sub_1006BEB14(v5), (v14 & 1) != 0))
      {
        v15 = *(*(v12 + 56) + 8 * v13);
        swift_endAccess();
        v16 = v15;
        LOBYTE(v15) = [v16 isHidden];
        sub_1005A3FB8(v5, type metadata accessor for SidebarActivityView.Activity);
        if (v15)
        {
        }

        else
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v7 = v19;
        }
      }

      else
      {
        swift_endAccess();
        sub_1005A3FB8(v5, type metadata accessor for SidebarActivityView.Activity);
      }

      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v7;
}

uint64_t sub_1005A2DC0()
{
  v1 = sub_1005A2B0C();
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v2)
  {
    do
    {
      v4 = sub_1005A2B0C();
      v5 = v4;
      if (v4 >> 62)
      {
        v6 = _CocoaArrayWrapper.endIndex.getter();
        if (!v6)
        {
LABEL_20:

          v17 = sub_1005A2B0C();
          if (v17 >> 62)
          {
            v18 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (__OFSUB__(v18, 1))
          {
            __break(1u);
          }

          else
          {
            [v0 directionalLayoutMargins];
            return NSDirectionalEdgeInsets.vertical.getter();
          }

          return result;
        }
      }

      else
      {
        v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v6)
        {
          goto LABEL_20;
        }
      }

      v7 = 0;
      v8 = 0.0;
      v9 = 0.0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = sub_100062D50(v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v10 = *(v5 + 8 * v7 + 32);
        }

        v11 = v10;
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v10 intrinsicContentSize];
        if (v8 <= v13)
        {
          v8 = v13;
        }

        [v11 intrinsicContentSize];
        v15 = v14;

        v9 = v9 + v15;
        ++v7;
        if (v12 == v6)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    while (v16);
  }

  return result;
}

uint64_t sub_1005A2FB0(double a1)
{
  [v1 directionalLayoutMargins];
  NSDirectionalEdgeInsets.horizontal.getter();
  v4 = v3;
  v5 = sub_1005A2B0C();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v4 = a1 - v4;
    v9 = 0.0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_100062D50(v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v10 sizeThatFits:{v4, 1.79769313e308}];
      v14 = v13;

      v9 = v9 + v14;
      ++v8;
      if (v12 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v15 = sub_1005A2B0C();
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    [v1 directionalLayoutMargins];
    return NSDirectionalEdgeInsets.vertical.getter();
  }

  return result;
}

unint64_t sub_1005A329C()
{
  result = qword_101196BB0;
  if (!qword_101196BB0)
  {
    type metadata accessor for SidebarActivityView.Activity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196BB0);
  }

  return result;
}

Swift::Int sub_1005A32F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&unk_1011804D0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100009F78(0, &qword_101181620);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for NSKeyValueObservation();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1006C4054(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
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
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t *sub_1005A3528(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1005A3A2C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1005A3628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SidebarActivityView.Activity();
  __chkstk_darwin(v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v26 - v11);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  v16 = sub_10010FC20(&qword_101191950);
  __chkstk_darwin(v16 - 8);
  v18 = &v26 - v17;
  v20 = *(v19 + 56);
  sub_1005A4018(a1, &v26 - v17, type metadata accessor for SidebarActivityView.Activity);
  sub_1005A4018(a2, &v18[v20], type metadata accessor for SidebarActivityView.Activity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1005A4018(v18, v12, type metadata accessor for SidebarActivityView.Activity);
      v22 = *v12;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_4:
        v23 = *&v18[v20];
        sub_100009F78(0, &qword_101197A30);
        v24 = static NSObject.== infix(_:_:)();

LABEL_11:
        sub_1005A3FB8(v18, type metadata accessor for SidebarActivityView.Activity);
        return v24 & 1;
      }
    }

    else
    {
      sub_1005A4018(v18, v9, type metadata accessor for SidebarActivityView.Activity);
      v22 = *v9;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    sub_1005A4018(v18, v15, type metadata accessor for SidebarActivityView.Activity);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1005A3F00(&v18[v20], v6);
      v24 = sub_10054CE34(v15, v6);
      sub_1005A3FB8(v6, type metadata accessor for LibraryImport.ViewModel);
      sub_1005A3FB8(v15, type metadata accessor for LibraryImport.ViewModel);
      goto LABEL_11;
    }

    sub_1005A3FB8(v15, type metadata accessor for LibraryImport.ViewModel);
  }

  sub_1000095E8(v18, &qword_101191950);
  v24 = 0;
  return v24 & 1;
}

void sub_1005A3964()
{
  *(v0 + OBJC_IVAR____TtC5Music19SidebarActivityView_activities) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC5Music19SidebarActivityView_spacing) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground) = 0;
  *(v0 + OBJC_IVAR____TtC5Music19SidebarActivityView_separatorView) = 0;
  v1 = OBJC_IVAR____TtC5Music19SidebarActivityView_viewObservers;
  *(v0 + v1) = sub_10010D754(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC5Music19SidebarActivityView_activityViewsMap;
  *(v0 + v2) = sub_10010D874(_swiftEmptyArrayStorage);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005A3A2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v33 = a1;
  v37 = sub_10010FC20(&unk_101196BC0);
  __chkstk_darwin(v37);
  v7 = &v32 - v6;
  v8 = type metadata accessor for SidebarActivityView.Activity();
  v36 = *(v8 - 8);
  result = __chkstk_darwin(v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v12 = 0;
  v38 = a3;
  v15 = *(a3 + 64);
  v14 = a3 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v39 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = v38;
    sub_1005A4018(*(v38 + 48) + *(v36 + 72) * v23, v11, type metadata accessor for SidebarActivityView.Activity);
    v25 = *(v24 + 56);
    v35 = v23;
    v26 = *(v25 + 8 * v23);
    sub_1005A4018(v11, v7, type metadata accessor for SidebarActivityView.Activity);
    *&v7[*(v37 + 48)] = v26;
    v27 = *(a4 + 16);
    v28 = v26;
    if (v27)
    {
      sub_1006BEB14(v7);
      v30 = v29;
      sub_1000095E8(v7, &unk_101196BC0);

      result = sub_1005A3FB8(v11, type metadata accessor for SidebarActivityView.Activity);
      v18 = v39;
      if ((v30 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1000095E8(v7, &unk_101196BC0);

      result = sub_1005A3FB8(v11, type metadata accessor for SidebarActivityView.Activity);
      v18 = v39;
LABEL_15:
      *(v33 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return sub_1003BA6E8(v33, v32, v34, v38);
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_1003BA6E8(v33, v32, v34, v38);
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v39 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005A3D18(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1005A3528(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1005A3A2C((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1005A3F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryImport.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A3F64@<X0>(uint64_t a1@<X8>)
{
  sub_1005A4018(*(v1 + 16), a1, type metadata accessor for LibraryImport.ViewModel);
  result = _s10ImportViewVMa(0);
  *(a1 + *(result + 20)) = 1;
  return result;
}

uint64_t sub_1005A3FB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005A4018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005A4128()
{
  v1 = OBJC_IVAR____TtC5Music24KeyboardShortcutsManager____lazy_storage____keyCommands;
  if (*(v0 + OBJC_IVAR____TtC5Music24KeyboardShortcutsManager____lazy_storage____keyCommands))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music24KeyboardShortcutsManager____lazy_storage____keyCommands);
  }

  else
  {
    sub_1005A418C();
    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

void sub_1005A418C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = objc_opt_self();
  v4 = [v3 keyCommandWithInput:v2 modifierFlags:0x100000 action:"volumeUpAction:" upAction:"volumeKeyUpAction:"];

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v24 = v4;
  [v4 setDiscoverabilityTitle:v5];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v3 keyCommandWithInput:v6 modifierFlags:0x100000 action:"volumeDownAction:" upAction:"volumeKeyUpAction:"];

  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  [v7 setDiscoverabilityTitle:v8];

  v9 = String._bridgeToObjectiveC()();
  v10 = [v3 keyCommandWithInput:v9 modifierFlags:0x100000 action:"newPlaylistAction:"];

  v11 = [v10 _nonRepeatableKeyCommand];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v12 = String._bridgeToObjectiveC()();

  [v11 setDiscoverabilityTitle:v12];

  v13 = String._bridgeToObjectiveC()();
  v14 = [v3 keyCommandWithInput:v13 modifierFlags:0 action:"playPauseAction:"];

  v15 = [v14 _nonRepeatableKeyCommand];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v16 = String._bridgeToObjectiveC()();

  [v15 setDiscoverabilityTitle:v16];

  v17 = [v3 keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0x100000 action:"nextTrackAction:"];
  v18 = [v17 _nonRepeatableKeyCommand];

  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v19 = String._bridgeToObjectiveC()();

  [v18 setDiscoverabilityTitle:v19];

  v20 = [v3 keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0x100000 action:"previousTrackAction:"];
  v21 = [v20 _nonRepeatableKeyCommand];

  if (v21)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v22 = String._bridgeToObjectiveC()();

    [v21 setDiscoverabilityTitle:v22];

    sub_10010FC20(&qword_101183990);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100EBEE70;
    *(v23 + 32) = v24;
    *(v23 + 40) = v7;
    *(v23 + 48) = v11;
    *(v23 + 56) = v15;
    *(v23 + 64) = v18;
    *(v23 + 72) = v21;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1005A4808(uint64_t a1, uint64_t a2)
{
  sub_1000189C0(a2, v29);
  if (v30)
  {
    sub_10043F470();
    if (swift_dynamicCast())
    {
      v5 = v27;
      v6 = [v2 keyCommands];
      if (v6)
      {
        v7 = v6;
        v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v29[0] = v27;
        __chkstk_darwin(v9);
        v25[2] = v29;
        v10 = sub_10044B2BC(sub_1005A5AFC, v25, v8);

        if (v10)
        {
          v11 = *(*&v2[OBJC_IVAR____TtC5Music24KeyboardShortcutsManager_interfaceContext] + 32);
          if (v11 >= 0)
          {
            v12 = *(*&v2[OBJC_IVAR____TtC5Music24KeyboardShortcutsManager_interfaceContext] + 32);
          }

          else
          {
            v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
          }

          v13 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
          v14 = [v12 firstResponder];

          if (!v14)
          {
            return 1;
          }

          v26[1] = &OBJC_PROTOCOL___UIKeyInput;
          v15 = swift_dynamicCastObjCProtocolConditional() == 0;

          return v15;
        }
      }
    }
  }

  else
  {
    sub_1000095E8(v29, &unk_101183F30);
  }

  sub_1000189C0(a2, v29);
  v16 = v30;
  if (v30)
  {
    v17 = sub_10000954C(v29, v30);
    v18 = *(v16 - 8);
    v19 = __chkstk_darwin(v17);
    v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v18 + 8))(v21, v16);
    sub_10000959C(v29);
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for KeyboardShortcutsManager();
  v28.receiver = v2;
  v28.super_class = v23;
  v15 = objc_msgSendSuper2(&v28, "canPerformAction:withSender:", a1, v22);
  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_1005A4B7C()
{
  v0 = type metadata accessor for AppInterfaceContext.Activity(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = *(sub_10010FC20(&unk_10118A290) + 48);
  v11 = type metadata accessor for SearchScope();
  *v9 = 0;
  *(v9 + 1) = 0;
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  swift_storeEnumTagMultiPayload();
  sub_100115B50(v9, v6);
  sub_100115B50(v6, v3);
  v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_100115BB4(v3, v13 + v12);

  sub_100706900(v6, sub_100139B24, v13);

  sub_100115C8C(v6);
  return sub_100115C8C(v9);
}

uint64_t sub_1005A4E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_1005A4F14, v6, v5);
}

uint64_t sub_1005A4F14()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v0[5] = &type metadata for Player.ChangeCommand;
  v0[6] = &protocol witness table for Player.ChangeCommand;
  v0[2] = 1;
  v0[12] = v1;
  v2 = v1;
  v3 = String.init<A>(reflecting:)();
  v0[10] = &type metadata for Player.CommandIssuerIdentity;
  v0[11] = &protocol witness table for Player.CommandIssuerIdentity;
  v0[7] = v3;
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_10016B618;

  return PlaybackController.perform(_:route:intent:issuer:)((v0 + 2), 0, 0, (v0 + 7));
}

void sub_1005A5098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = a1;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_1001F524C(0, 0, v9, a5, v13);
}

uint64_t sub_1005A51C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_1005A525C, v6, v5);
}

uint64_t sub_1005A525C()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  *(v0 + 40) = &type metadata for Player.PlaybackCommand;
  *(v0 + 48) = &protocol witness table for Player.PlaybackCommand;
  *(v0 + 16) = 3;
  *(v0 + 96) = v1;
  v2 = v1;
  v3 = String.init<A>(reflecting:)();
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_10016B304;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

id sub_1005A5430()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeyboardShortcutsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005A54D4()
{
  v0 = type metadata accessor for AppInterfaceContext.Activity(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for Playlist.Folder();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = type metadata accessor for PlaylistCreation.Context(0);
  v12 = &v9[v11[5]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = v11[6];
  v14 = sub_10010FC20(&unk_1011841D0);
  (*(*(v14 - 8) + 56))(&v9[v13], 1, 1, v14);
  v15 = &v9[v11[7]];
  *v15 = 0;
  *(v15 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  sub_100115B50(v9, v6);
  sub_100115B50(v6, v3);
  v16 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_100115BB4(v3, v17 + v16);

  sub_100706900(v6, sub_100137E88, v17);

  sub_100115C8C(v6);
  return sub_100115C8C(v9);
}

void sub_1005A5734()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v5 = (*(*qword_101218AC8 + 432))();
  if (!v5 || (v6 = v5, v7 = [v5 state], v6, v7 != 5))
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v1;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    sub_1001F524C(0, 0, v4, &unk_100ED5918, v11);
  }
}

uint64_t sub_1005A58E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1005A51C4(a1, v4, v5, v6);
}

uint64_t sub_1005A5994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100318168(a1, v4, v5, v6);
}

uint64_t sub_1005A5A48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1005A4E7C(a1, v4, v5, v6);
}

uint64_t sub_1005A5B7C@<X0>(char *a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v14, &unk_1011838D0);
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return sub_1005C29E8(v14, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v41 = v1;
  sub_1000095E8(v14, &unk_1011838D0);
  v18 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
  sub_10003C9B0(v18, v8, type metadata accessor for MetricsEvent.Page);
  v19 = type metadata accessor for MetricsEvent.Page(0);
  v20 = v5;
  v21 = *(*(v19 - 8) + 56);
  v21(v8, 0, 1, v19);
  v40 = v20;
  sub_1000089F8(v8, v20, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v22 = sub_10053771C();
  v38 = v23;
  v39 = v22;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v24 = qword_101218AD0;
  v37 = GroupActivitiesManager.hasJoined.getter();
  v36 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v8, &unk_1011838F0);
  v25 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v26 = *(v24 + v25);
  v27 = v16[5];
  v21(&a1[v27], 1, 1, v19);
  v28 = v16[7];
  v29 = &a1[v16[6]];
  v30 = v16[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v40, &a1[v27], &unk_1011838F0);
  v31 = v38;
  *v29 = v39;
  v29[1] = v31;
  *&a1[v28] = 0;
  *&a1[v30] = 0;
  v32 = &a1[v16[9]];
  *v32 = v37 & 1;
  *(v32 + 1) = v36;
  *(v32 + 2) = v26;
  sub_10003C9B0(a1, v11, type metadata accessor for Actions.MetricsReportingContext);
  (*(v17 + 56))(v11, 0, 1, v16);
  v33 = v41;
  swift_beginAccess();
  sub_10006B010(v11, v33 + v15, &unk_1011838D0);
  return swift_endAccess();
}

id sub_1005A5F8C()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView;
  v2 = *&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView];
LABEL_9:
    v39 = v2;
    return v3;
  }

  v4 = v0;
  v5 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  v6 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_10059913C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010B4E20;
  v7 = _Block_copy(aBlock);
  v8 = [v6 initWithSectionProvider:v7 configuration:v5];

  _Block_release(v7);

  v9 = type metadata accessor for HIMetricsCollectionView();
  v10 = objc_allocWithZone(v9);
  v11 = v8;
  v12 = sub_100188F30(v11, 1u, 0);
  result = [v4 view];
  if (result)
  {
    v14 = result;
    [result bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v41.receiver = v12;
    v41.super_class = v9;
    v23 = v12;
    objc_msgSendSuper2(&v41, "frame");
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v40.receiver = v23;
    v40.super_class = v9;
    objc_msgSendSuper2(&v40, "setFrame:", v16, v18, v20, v22);
    sub_1001891B4(v25, v27, v29, v31);
    [v23 setAutoresizingMask:18];

    result = [v4 view];
    if (result)
    {
      v32 = result;
      [result addSubview:v23];

      v33 = v23;
      [v33 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v33 setDataSource:v4];
      [v33 setDelegate:v4];
      [v33 setKeyboardDismissMode:1];
      [v33 setAllowsFocus:1];
      [v33 setRemembersLastFocusedIndexPath:1];

      if (sub_10049CB78())
      {
        v34 = AccessibilityIdentifier.libraryDownloadedView.unsafeMutableAddressor();
      }

      else
      {
        v34 = AccessibilityIdentifier.libraryView.unsafeMutableAddressor();
      }

      v35 = *v34;
      v36 = v34[1];

      v37 = UIView.withAccessibilityIdentifier(_:)(v35, v36);

      v38 = *&v4[v1];
      *&v4[v1] = v37;
      v3 = v37;

      v2 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1005A634C()
{
  sub_100217F14();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v1;
}

id sub_1005A63A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void sub_1005A6424()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v123 = sub_10010FC20(&qword_101196E60);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = v99 - v3;
  v107 = sub_10010FC20(&qword_10118BAF0);
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = v99 - v4;
  v5 = sub_10010FC20(&unk_101197210);
  __chkstk_darwin(v5 - 8);
  v108 = v99 - v6;
  v104 = sub_10010FC20(&qword_101196E80);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = v99 - v7;
  v115 = sub_10010FC20(&qword_10118DF68);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = v99 - v8;
  v118 = sub_10010FC20(&unk_101197220);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = v99 - v9;
  v10 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v10 - 8);
  v12 = v99 - v11;
  v110 = sub_10010FC20(&unk_101197230);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v14 = v99 - v13;
  v111 = sub_10010FC20(&qword_1011905E8);
  v112 = *(v111 - 8);
  *&v15 = __chkstk_darwin(v111).n128_u64[0];
  v17 = v99 - v16;
  v131.receiver = v1;
  v131.super_class = ObjectType;
  objc_msgSendSuper2(&v131, "viewDidLoad", v15);
  v18 = sub_1005A5F8C();
  v19 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController];
  [v18 setPrefetchDataSource:v19];

  v20 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView;
  v21 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView];
  v22 = sub_100189858();
  v24 = v23;

  v25 = (v19 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v26 = *(v19 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  *v25 = v22;
  v25[1] = v24;
  sub_100020438(v26);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = (v19 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v29 = *(v19 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  *v28 = sub_1005C3150;
  v28[1] = v27;

  sub_100020438(v29);

  [*&v1[v20] setAllowsSelectionDuringEditing:1];
  [*&v1[v20] setAllowsMultipleSelectionDuringEditing:1];
  v124 = v20;
  v30 = *&v1[v20];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = &v30[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v33 = *&v30[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  *v32 = sub_1005C3158;
  v32[1] = v31;
  v34 = v30;

  sub_100020438(v33);

  sub_1005A8B2C();

  sub_1005A8BAC(0);
  v35 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = *(*v35 + 128);
  v120 = v35;
  v38 = (v35 + v37);
  swift_beginAccess();
  v39 = *v38;
  *v38 = sub_1005C3160;
  v38[1] = v36;

  sub_100020438(v39);

  v40 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedResponseController];
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = *(v40 + 32);
  *(v40 + 32) = sub_1005C3168;
  *(v40 + 40) = v41;
  v119 = v40;

  sub_100020438(v42);

  if ((sub_10049CB78() & 1) == 0)
  {
    swift_beginAccess();
    sub_10010FC20(&unk_101197240);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_100009F78(0, &qword_101182960);
    v43 = static OS_dispatch_queue.main.getter();
    v129 = v43;
    v44 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v45 = *(v44 - 8);
    v100 = *(v45 + 56);
    v101 = v45 + 56;
    v100(v12, 1, 1, v44);
    v99[1] = &protocol conformance descriptor for Published<A>.Publisher;
    sub_100020674(&qword_10118DF80, &unk_101197230);
    v99[0] = sub_1000206BC();
    v46 = v110;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v12, &qword_101182140);

    (*(v109 + 8))(v14, v46);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&qword_1011905F0, &qword_1011905E8);
    v47 = v111;
    Publisher<>.sink(receiveValue:)();

    (*(v112 + 8))(v17, v47);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();
    sub_10010FC20(&unk_101197250);
    v48 = v113;
    Published.projectedValue.getter();
    swift_endAccess();
    v49 = static OS_dispatch_queue.main.getter();
    v129 = v49;
    v100(v12, 1, 1, v44);
    sub_100020674(&qword_10118DF98, &qword_10118DF68);
    v50 = v116;
    v51 = v115;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v12, &qword_101182140);

    (*(v114 + 8))(v48, v51);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&unk_101197260, &unk_101197220);
    v52 = v118;
    Publisher<>.sink(receiveValue:)();

    (*(v117 + 8))(v50, v52);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v53 = sub_10059B3FC();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v53))
    {
      v54 = v102;
      sub_1005AB368(v102);
      (*(v103 + 8))(v54, v104);
      sub_1005AADBC();
      v55 = [objc_opt_self() defaultCenter];
      type metadata accessor for LibraryPinsController();
      sub_10032E7E0();
      v56 = v105;
      NSNotificationCenter.BaseMessageIdentifier.init<A>()();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100020674(&qword_10118BAF8, &qword_10118BAF0);
      v57 = v108;
      v58 = v107;
      NSNotificationCenter.addObserver<A, B>(of:for:using:)();

      (*(v106 + 8))(v56, v58);
      v59 = type metadata accessor for NSNotificationCenter.ObservationToken();
      (*(*(v59 - 8) + 56))(v57, 0, 1, v59);
      v60 = OBJC_IVAR____TtC5Music25LibraryMainViewController_pinsControllerToken;
      swift_beginAccess();
      sub_10006B010(v57, &v1[v60], &unk_101197210);
      swift_endAccess();
    }
  }

  v61 = sub_1005AB840();
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = (v61 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
  v64 = *(v61 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
  *v63 = sub_1005C3180;
  v63[1] = v62;

  sub_100020438(v64);

  v125[3] = sub_10010FC20(&unk_10118A650);
  v65 = sub_10001C8B8(v125);
  sub_1005AC238(v65);
  v126[3] = sub_10010FC20(&qword_101196E70);
  v66 = sub_10001C8B8(v126);
  sub_1005AC4C0(v66);
  v127[3] = sub_10010FC20(&qword_101196E90);
  v67 = sub_10001C8B8(v127);
  sub_1005AC738(v67);
  v128[3] = sub_10010FC20(qword_101196EA0);
  v68 = sub_10001C8B8(v128);
  sub_1005AC9A8(v68);
  swift_arrayDestroy();
  v69 = v121;
  sub_1005ACC20(v121);
  (*(v122 + 8))(v69, v123);
  v70 = *&v1[v124];
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v75 = swift_allocObject();
  *(v75 + 24) = 0u;
  *(v75 + 40) = 0u;
  *(v75 + 56) = 0u;
  *(v75 + 72) = 0u;
  *(v75 + 88) = 1;
  *(v75 + 96) = 0;
  v76 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v77 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v77 - 8) + 56))(v75 + v76, 1, 1, v77);
  *(v75 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v75 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v75 + 16) = v70;
  *(v75 + 24) = sub_1005C3188;
  *(v75 + 32) = v71;
  *(v75 + 40) = sub_1005C3190;
  v78 = *(v75 + 56);
  *(v75 + 48) = v72;
  *(v75 + 56) = sub_1005C3198;
  *(v75 + 64) = v73;
  v79 = v70;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_100020438(v78);
  v80 = *(v75 + 72);
  *(v75 + 72) = sub_1005C31A0;
  *(v75 + 80) = v74;

  sub_100020438(v80);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_dragDropController] = v75;

  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = qword_10117F7C8;

  if (v82 != -1)
  {
    swift_once();
  }

  v83 = qword_1011921E8;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_1005C31A8;
  *(v84 + 24) = v81;
  v129 = sub_100031C94;
  v130 = v84;

  sub_10010FC20(&qword_1011921F8);
  v85 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v1, v83, v85, 3);
  swift_unknownObjectRelease();
  v86 = sub_10003169C();
  sub_100031928(v86);

  sub_1005AA3F8(2u);
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  v87 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_sharedLibrariesController];
  v88 = *(v87 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled);
  *(v87 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled) = 1;
  if (v88 != 1)
  {
    sub_10044D424();
  }

  v89 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___downloadsController];
  v90 = *(v89 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled);
  *(v89 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 1;
  if (v90 != 1)
  {

    sub_10016D6B8();
  }

  v91 = [v1 navigationItem];
  [v91 _manualScrollEdgeAppearanceProgress];
  v93 = v92;

  v94 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress];
  *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress] = v93;
  if (v93 != v94)
  {
    sub_1005AA3F8(2u);
  }

  v129 = *&v1[v124];
  v95 = v129;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v96 = v95;
  v97 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v98 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_contentOffsetObservation];
  *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_contentOffsetObservation] = v97;
}

uint64_t sub_1005A7840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-v8 - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v11 = Strong;
  v12 = sub_1005BF3BC(3u);
  if (v13)
  {
    goto LABEL_9;
  }

  if (IndexPath.section.getter() != v12)
  {
    goto LABEL_9;
  }

  v14 = IndexPath.item.getter();
  if (v14 == NSNotFound.getter())
  {
    goto LABEL_9;
  }

  sub_1000089F8(a1, v24, &unk_101183F30);
  if (!v25)
  {

    sub_1000095E8(v24, &unk_101183F30);
    goto LABEL_10;
  }

  sub_10010FC20(&qword_101196F80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
  }

  else
  {
    v15 = v23;

    sub_1005A7C20(v15, v6);

    v16 = type metadata accessor for RecentlyAddedMusicItem();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v6, 1, v16) == 1)
    {

      sub_1000095E8(v6, &unk_101197040);
    }

    else
    {
      RecentlyAddedMusicItem.artworkViewModel.getter(v9);

      (*(v17 + 8))(v6, v16);
      v20 = type metadata accessor for ArtworkImage.ViewModel(0);
      if ((*(*(v20 - 8) + 48))(v9, 1, v20) != 1)
      {
        v21 = type metadata accessor for Artwork();
        v22 = *(v21 - 8);
        (*(v22 + 16))(a2, v9, v21);
        sub_1005C3434(v9, type metadata accessor for ArtworkImage.ViewModel);
        return (*(v22 + 56))(a2, 0, 1, v21);
      }

      sub_1000095E8(v9, &unk_10118A5E0);
    }
  }

LABEL_10:
  v18 = type metadata accessor for Artwork();
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

uint64_t sub_1005A7C20@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v91 = sub_10010FC20(&unk_1011A3E20);
  v97 = *(v91 - 8);
  __chkstk_darwin(v91);
  v93 = &v80 - v5;
  v92 = sub_10010FC20(&unk_101196FB0);
  v96 = *(v92 - 8);
  __chkstk_darwin(v92);
  v7 = &v80 - v6;
  v8 = type metadata accessor for IndexPath();
  v89 = *(v8 - 8);
  v90 = v8;
  __chkstk_darwin(v8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v11 - 8);
  v13 = &v80 - v12;
  v14 = sub_10010FC20(&unk_101196F90);
  v94 = *(v14 - 8);
  v95 = v14;
  __chkstk_darwin(v14);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v80 - v18;
  v20 = sub_10059B3FC();
  v21 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v20);
  v22 = &unk_10109BAE0;
  if ((v21 & 1) == 0)
  {
    v22 = &unk_10109BB08;
  }

  v23 = *v22;
  if (!v23)
  {
LABEL_11:

    goto LABEL_12;
  }

  v24 = 0;
  if (v21)
  {
    v25 = &off_10109BAD0;
  }

  else
  {
    v25 = &off_10109BAF8;
  }

  v26 = v25 + 4;
  while (1)
  {
    if ((v23 & ~(v23 >> 63)) == v24)
    {
      __break(1u);
      goto LABEL_31;
    }

    if (*(v26 + v24) == 3)
    {
      break;
    }

    if (v23 == ++v24)
    {
      goto LABEL_11;
    }
  }

  v88 = v2;

  if (IndexPath.section.getter() >= v24)
  {
    v30 = IndexPath.item.getter();
    if (v30 != NSNotFound.getter())
    {
      if (a1)
      {
        v31 = a1;
        goto LABEL_20;
      }

      v31 = *(v88 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision);
      if (v31)
      {

LABEL_20:

        RequestResponse.Revision.content.getter(v13);
        v32 = sub_10010FC20(&unk_10118D0A0);
        if ((*(*(v32 - 8) + 48))(v13, 1, v32) == 1)
        {

          sub_1000095E8(v13, &unk_10118D090);
          goto LABEL_12;
        }

        v87 = v31;
        v34 = v94;
        v33 = v95;
        (*(v94 + 16))(v16, v13, v95);
        sub_1000095E8(v13, &unk_10118D0A0);
        v35 = v16;
        v36 = v33;
        (*(v34 + 32))(v19, v35, v33);
        IndexPath.item.getter();
        if (!__OFSUB__(IndexPath.section.getter(), v24))
        {
          IndexPath.init(item:section:)();
          v37 = IndexPath.section.getter();
          v38 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

          v39 = v91;
          if (v37 >= v38)
          {
            goto LABEL_40;
          }

          v40 = IndexPath.item.getter();
          v41 = MusicLibrarySectionedResponse.sections.getter();
          v42 = IndexPath.section.getter();
          if ((v42 & 0x8000000000000000) == 0)
          {
            v86 = v40;
            if (v42 < *(v41 + 16))
            {
              v43 = v96;
              v82 = (*(v43 + 80) + 32) & ~*(v43 + 80);
              v81 = *(v96 + 72);
              v44 = v92;
              v83 = *(v96 + 16);
              v84 = v96 + 16;
              v83(v7, v41 + v82 + v81 * v42, v92);

              v45 = v93;
              MusicLibrarySection.items.getter();
              v46 = *(v43 + 8);
              v96 = v43 + 8;
              v85 = v46;
              v46(v7, v44);
              sub_100020674(&unk_101197060, &unk_1011A3E20);
              dispatch thunk of Collection.startIndex.getter();
              dispatch thunk of Collection.endIndex.getter();
              v47 = dispatch thunk of Collection.distance(from:to:)();
              v48 = v45;
              v13 = *(v97 + 8);
              v97 += 8;
              (v13)(v48, v39);
              if (v86 >= v47)
              {
                goto LABEL_36;
              }

              v49 = v95;
              v50 = MusicLibrarySectionedResponse.sections.getter();
              v51 = IndexPath.section.getter();
              if ((v51 & 0x8000000000000000) == 0)
              {
                if (v51 < *(v50 + 16))
                {
                  v52 = v92;
                  v83(v7, v50 + v82 + v51 * v81, v92);

                  v53 = v93;
                  MusicLibrarySection.items.getter();
                  v85(v7, v52);
                  IndexPath.item.getter();
                  MusicItemCollection.subscript.getter();

                  (v13)(v53, v39);
                  (*(v89 + 8))(v10, v90);
                  (*(v94 + 8))(v19, v49);
                  v27 = 0;
                  goto LABEL_13;
                }

LABEL_35:
                __break(1u);
LABEL_36:
                a2 = v13;
                v36 = 0xD000000000000011;
                v100 = 0;
                v101 = 0xE000000000000000;
                _StringGuts.grow(_:)(154);
                v54._countAndFlagsBits = 0xD00000000000004ALL;
                v54._object = 0x8000000100E515E0;
                String.append(_:)(v54);
                v98 = IndexPath.section.getter();
                v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v55);

                v56._countAndFlagsBits = 0x207865646E49202ELL;
                v56._object = 0xEE00203A68746170;
                String.append(_:)(v56);
                sub_100029710(&unk_101197050, &type metadata accessor for IndexPath);
                v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v57);

                v58._countAndFlagsBits = 0xD000000000000013;
                v58._object = 0x8000000100E51630;
                String.append(_:)(v58);
                v59 = MusicLibrarySectionedResponse.sections.getter();
                v60 = IndexPath.section.getter();
                if ((v60 & 0x8000000000000000) == 0)
                {
                  if (v60 < v59[2])
                  {
                    goto LABEL_44;
                  }

                  __break(1u);
                }

                __break(1u);
LABEL_40:
                v100 = 0;
                v101 = 0xE000000000000000;
                _StringGuts.grow(_:)(146);
                v61._countAndFlagsBits = 0xD00000000000004FLL;
                v61._object = 0x8000000100E51530;
                String.append(_:)(v61);
                sub_100029710(&unk_101197050, &type metadata accessor for IndexPath);
                v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v62);

                v63._countAndFlagsBits = 0xD000000000000016;
                v63._object = 0x8000000100E51580;
                String.append(_:)(v63);
                v64 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

                v98 = v64;
                v59 = &protocol witness table for Int;
                v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v65);

                v66._object = 0x8000000100E515A0;
                v66._countAndFlagsBits = 0xD000000000000011;
                String.append(_:)(v66);
                v98 = *(v87 + *(*v87 + 112));
                v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v67);

                v68._countAndFlagsBits = 0xD000000000000014;
                v68._object = 0x8000000100E515C0;
                String.append(_:)(v68);
                v69 = *(v88 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision);
                if (v69)
                {
                  v70 = *(v69 + *(*v69 + 112));
                }

                else
                {
                  v70 = 0;
                }

                while (1)
                {
                  v98 = v70;
                  v99 = v69 == 0;
                  sub_10010FC20(&qword_101184A70);
                  v71._countAndFlagsBits = String.init<A>(describing:)();
                  String.append(_:)(v71);

                  v60 = _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
LABEL_44:
                  v72 = v92;
                  v83(v7, v59 + v82 + v60 * v81, v92);

                  v73 = v93;
                  MusicLibrarySection.items.getter();
                  v85(v7, v72);
                  v74 = v91;
                  dispatch thunk of Collection.startIndex.getter();
                  dispatch thunk of Collection.endIndex.getter();
                  v75 = dispatch thunk of Collection.distance(from:to:)();
                  (a2)(v73, v74);
                  v98 = v75;
                  v59 = &protocol witness table for Int;
                  v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                  String.append(_:)(v76);

                  v77._object = 0x8000000100E515A0;
                  v77._countAndFlagsBits = 0xD000000000000011;
                  String.append(_:)(v77);
                  v98 = *(v87 + *(*v87 + 112));
                  v78._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                  String.append(_:)(v78);

                  v79._countAndFlagsBits = v36 + 3;
                  v79._object = 0x8000000100E515C0;
                  String.append(_:)(v79);
                  v69 = *(v88 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision);
                  if (v69)
                  {
                    v70 = *(v69 + *(*v69 + 112));
                  }

                  else
                  {
                    v70 = 0;
                  }
                }
              }

LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }
  }

LABEL_12:
  v27 = 1;
LABEL_13:
  v28 = type metadata accessor for RecentlyAddedMusicItem();
  return (*(*(v28 - 8) + 56))(a2, v27, 1, v28);
}

void sub_1005A88FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1005BF3BC(3u);
    if (v11 & 1) == 0 && ((*(a1 + 56) ^ *(a2 + 56)))
    {
      v12 = v10;
      v13 = sub_1005A5F8C();
      sub_10010FC20(&unk_101191400);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_100EBC6B0;
      *(v14 + 32) = v12;
      v18 = v14;
      sub_100029710(&unk_10118A630, &type metadata accessor for IndexSet);
      sub_10010FC20(&unk_101191410);
      sub_100020674(&unk_10118A640, &unk_101191410);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      IndexSet._bridgeToObjectiveC()(v15);
      v17 = v16;
      (*(v5 + 8))(v7, v4);
      [v13 reloadSections:v17];
    }
  }
}

uint64_t sub_1005A8B2C()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportObserver;
  if (*&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportObserver])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportObserver];
  }

  else
  {
    type metadata accessor for LibraryImport.Observer(0);
    v3 = swift_allocObject();
    v2 = sub_1006CB13C(v0, v3);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1005A8BAC(char a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController];
  swift_beginAccess();
  v5 = *(v4 + 32);
  v6 = *(v4 + 48);
  v7 = *(v4 + 80);
  v35 = *(v4 + 64);
  v36 = v7;
  v34[1] = v5;
  v34[2] = v6;
  v8 = *(v4 + 16);
  v33 = *(v4 + 32);
  v34[0] = v8;
  v32 = *(v4 + 16);
  v9 = *(v4 + 57);
  *(v31 + 3) = *(v4 + 60);
  v31[0] = v9;
  sub_1003E1510(v34, &v25);
  v30 = sub_10010F828(&off_10109BB98);
  if ((a1 & 1) != 0 || (sub_10049CB78() & 1) == 0)
  {
    sub_1003B4C48(&v25, 12);
  }

  v19 = a1;
  if ((sub_10049CB78() & 1) == 0)
  {
    v10 = [v1 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    type metadata accessor for MusicLibrary();
    *&v21[0] = static MusicLibrary.shared.getter();
    sub_100029710(&qword_10118CE20, &type metadata accessor for MusicLibrary);
    LOBYTE(v10) = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v10)
    {

      goto LABEL_8;
    }

    if ((a1 & 1) == 0)
    {

      v11 = v35;
      v18 = v30;
LABEL_13:
      sub_1005BF344(v11);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_14;
    }
  }

  sub_1003B4C48(&v25, 11);

LABEL_8:
  v11 = v35;
  v18 = v30;
  if ((a1 & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = &v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu];
  swift_beginAccess();
  if (!*v12)
  {
    goto LABEL_13;
  }

  v13 = *(v12 + 2);
  v14 = *(v12 + 3);
  v15 = *(v12 + 4);
  v16 = *(v12 + 5);

  sub_1005BF344(v11);
LABEL_14:
  *&v22 = v18;
  BYTE8(v22) = (v19 & 1) == 0;
  HIDWORD(v22) = *(v31 + 3);
  *(&v22 + 9) = v31[0];
  *&v23 = v13;
  *(&v23 + 1) = v14;
  *&v24 = v15;
  *(&v24 + 1) = v16;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v21[0] = v32;
  v21[1] = v33;
  v25 = v32;
  v26 = v33;
  sub_1003E1510(v21, v20);
  RequestResponse.Controller.request.setter(&v25);
  v25 = v32;
  v26 = v33;
  *&v27 = v18;
  BYTE8(v27) = (v19 & 1) == 0;
  *(&v27 + 9) = v31[0];
  HIDWORD(v27) = *(v31 + 3);
  *&v28 = v13;
  *(&v28 + 1) = v14;
  *&v29 = v15;
  *(&v29 + 1) = v16;
  return sub_100400A60(&v25);
}

uint64_t sub_1005A8EE0()
{
  v0 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v0 - 8);
  v2 = &aBlock[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &aBlock[-v4];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC5Music25LibraryMainViewController_viewModels;
    swift_beginAccess();
    sub_1000089F8(v7 + v8, aBlock, &unk_101196F60);
    sub_1005A9268(aBlock, v5);
    sub_1000095E8(aBlock, &unk_101196F60);
    sub_1005A9A58();
    sub_1000089F8(v5, v2, &unk_1011A4B90);
    v9 = type metadata accessor for LibraryImport.ViewModel(0);
    if ((*(*(v9 - 8) + 48))(v2, 1, v9) == 1)
    {
      sub_1000095E8(v2, &unk_1011A4B90);
      memset(aBlock, 0, 32);
    }

    else
    {
      *&aBlock[24] = v9;
      v10 = sub_10001C8B8(aBlock);
      sub_1005C29E8(v2, v10, type metadata accessor for LibraryImport.ViewModel);
    }

    sub_1005BDE8C(aBlock, 0);

    RequestResponse.Revision.content.getter(aBlock);
    v11 = *aBlock;
    if (*aBlock)
    {
      v12 = v20;
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = *&aBlock[8];
      *(v13 + 40) = *&aBlock[24];
      *(v13 + 56) = v12;
      v14 = &type metadata for Library.Menu;
    }

    else
    {
      memset(aBlock, 0, 24);
      v13 = 0;
      v14 = 0;
    }

    *aBlock = v13;
    *&aBlock[24] = v14;
    sub_1005BDE8C(aBlock, 2);

    v15 = [objc_opt_self() sharedApplication];
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *&aBlock[32] = sub_1005C3410;
    v20 = v16;
    *aBlock = _NSConcreteStackBlock;
    *&aBlock[8] = 1107296256;
    *&aBlock[16] = sub_10002BC98;
    *&aBlock[24] = &unk_1010B5118;
    v17 = _Block_copy(aBlock);
    v18 = v7;

    [v15 _performBlockAfterCATransactionCommits:v17];
    _Block_release(v17);

    return sub_1000095E8(v5, &unk_1011A4B90);
  }

  return result;
}

uint64_t sub_1005A9268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  v5 = type metadata accessor for LibraryImport.ViewModel(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = &v53 - v9;
  __chkstk_darwin(v10);
  v59 = &v53 - v11;
  v12 = sub_10010FC20(&unk_1011A4B90);
  v60 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v57 = &v53 - v15;
  __chkstk_darwin(v16);
  v56 = &v53 - v17;
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  __chkstk_darwin(v24);
  v26 = &v53 - v25;
  __chkstk_darwin(v27);
  v29 = &v53 - v28;
  sub_1000089F8(a1, &v62, &unk_101196F60);
  if (v62 || v63 != 1)
  {
    sub_1005C277C(&v62, v65);
  }

  else
  {
    v30 = OBJC_IVAR____TtC5Music25LibraryMainViewController_viewModels;
    swift_beginAccess();
    sub_1000089F8(v3 + v30, v65, &unk_101196F60);
    if (v62 || v63 != 1)
    {
      sub_1000095E8(&v62, &unk_101196F60);
    }
  }

  v31 = OBJC_IVAR____TtC5Music25LibraryMainViewController_viewModels;
  swift_beginAccess();
  sub_10006B010(v65, v3 + v31, &unk_101196F60);
  swift_endAccess();
  sub_1000089F8(v3 + v31, v65, &unk_101196F60);
  if (!*&v65[0] && *(&v65[0] + 1) == 1)
  {
    sub_1000095E8(v65, &unk_101196F60);
    return (*(v6 + 56))(v61, 1, 1, v5);
  }

  sub_1005C277C(v65, &v62);
  v33 = v5;
  v34 = *(v6 + 56);
  v34(v29, 1, 1, v33);
  if (sub_1005B93DC())
  {
    v35 = v64;
    if (*(v64 + 16) && (v36 = sub_1006CCC5C(0), (v37 & 1) != 0))
    {
      sub_1000089F8(*(v35 + 56) + *(v60 + 72) * v36, v23, &unk_1011A4B90);
      sub_10003D17C(v23, v26, &unk_1011A4B90);
    }

    else
    {
      v34(v26, 1, 1, v33);
    }

    if ((*(v6 + 48))(v26, 1, v33) != 1)
    {
      sub_1000095E8(v29, &unk_1011A4B90);
      sub_10054F178(&v62);
      v48 = v59;
      sub_1005C29E8(v26, v59, type metadata accessor for LibraryImport.ViewModel);
      sub_1005C29E8(v48, v29, type metadata accessor for LibraryImport.ViewModel);
      v34(v29, 0, 1, v33);
      return sub_10003D17C(v29, v61, &unk_1011A4B90);
    }

    sub_1000095E8(v26, &unk_1011A4B90);
  }

  if (sub_1005B93DC())
  {
    v38 = v64;
    if (*(v64 + 16) && (v39 = sub_1006CCC5C(1), (v40 & 1) != 0))
    {
      v41 = v56;
      sub_1000089F8(*(v38 + 56) + *(v60 + 72) * v39, v56, &unk_1011A4B90);
      sub_10003D17C(v41, v20, &unk_1011A4B90);
    }

    else
    {
      v34(v20, 1, 1, v33);
    }

    if ((*(v6 + 48))(v20, 1, v33) != 1)
    {
      sub_1000095E8(v29, &unk_1011A4B90);
      sub_10054F178(&v62);
      v49 = v34;
      v50 = v20;
      v51 = &v67;
      goto LABEL_36;
    }

    sub_1000095E8(v20, &unk_1011A4B90);
  }

  if (([v3 isEditing] & 1) == 0)
  {
    static ApplicationCapabilities.shared.getter(v65);
    sub_100014984(v65);
    if (BYTE1(v65[0]))
    {
      v42 = v64;
      if (*(v64 + 16) && (v43 = sub_1006CCC5C(2), (v44 & 1) != 0))
      {
        v45 = v54;
        sub_1000089F8(*(v42 + 56) + *(v60 + 72) * v43, v54, &unk_1011A4B90);
        v46 = v45;
        v47 = v57;
        sub_10003D17C(v46, v57, &unk_1011A4B90);
      }

      else
      {
        v47 = v57;
        v34(v57, 1, 1, v33);
      }

      sub_10054F178(&v62);
      if ((*(v6 + 48))(v47, 1, v33) == 1)
      {
        sub_1000095E8(v47, &unk_1011A4B90);
        return sub_10003D17C(v29, v61, &unk_1011A4B90);
      }

      sub_1000095E8(v29, &unk_1011A4B90);
      v49 = v34;
      v50 = v47;
      v51 = &v66;
LABEL_36:
      v52 = *(v51 - 32);
      sub_1005C29E8(v50, v52, type metadata accessor for LibraryImport.ViewModel);
      sub_1005C29E8(v52, v29, type metadata accessor for LibraryImport.ViewModel);
      v49(v29, 0, 1, v33);
      return sub_10003D17C(v29, v61, &unk_1011A4B90);
    }
  }

  sub_10054F178(&v62);
  return sub_10003D17C(v29, v61, &unk_1011A4B90);
}

uint64_t sub_1005A9A58()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___updateCoalescer;
  if (*&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___updateCoalescer])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___updateCoalescer];
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10010FC20(&qword_101196F78);
    swift_allocObject();
    v5 = v0;
    v2 = sub_1005BDBEC(sub_1005BEEFC, v3, sub_1005BEF04, v4, 1.0);
    *&v0[v1] = v2;
  }

  return v2;
}

void sub_1005A9B68()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1005BF3BC(2u);
  if (v6)
  {
    return;
  }

  v7 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext);
  if (v7 != 2 && (v7 & 1) == 0)
  {
    v22 = (v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu);
    swift_beginAccess();
    v23 = *v22;
    if (*v22)
    {
      v24 = v22[1];
      v25 = v22[2];
      v26 = v22[3];
      v27 = v22[4];
      v28 = v22[5];
      v54 = *v22;
      v55 = v24;
      v56 = v25;
      v57 = v26;
      v58 = v27;
      v59 = v28;
      v29 = *(v23 + 16);
      if (v29)
      {
        v51 = v25;
        v52 = v24;
        v49 = v27;
        v50 = v26;
        v48 = v28;
        sub_100400AB4(v23, v24);

        for (i = 0; i != v29; ++i)
        {
          if (!Library.Menu.selectionState(for:)(*(v23 + i + 32)))
          {
            v31 = sub_1005A5F8C();
            IndexPath.init(item:section:)();
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            (*(v3 + 8))(v5, v2);
            [v31 selectItemAtIndexPath:isa animated:0 scrollPosition:0];
          }
        }

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v33 = v24;
        sub_100400AB4(v23, v24);
      }
    }

    return;
  }

  v9 = OBJC_IVAR____TtC5Music25LibraryMainViewController_pendingSelectedIdentifier;
  v52 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_pendingSelectedIdentifier);
  v10 = v52;
  v11 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (!v12)
  {
    return;
  }

  v51 = *(v12 + 16);
  if (!v51)
  {
    return;
  }

  v41[0] = v9;

  v13 = 0;
  v49 = "LibraryView.Playlists";
  v50 = "LibraryView.RecentlyAdded";
  v47 = "LibraryView.Albums";
  v48 = "LibraryView.Artists";
  v45 = "LibraryView.MadeForYou";
  v46 = "LibraryView.Songs";
  v43 = "LibraryView.Genres";
  v44 = "LibraryView.MusicVideos";
  v42 = "LibraryView.Compilations";
  v41[3] = "LibraryView.Composers";
  v41[2] = "LibraryView.Shows";
  v41[1] = "LibraryView.Downloaded";
  while (2)
  {
    if (v13 >= *(v12 + 16))
    {
      __break(1u);
      return;
    }

    v14 = 0xD000000000000029;
    v15 = "nt";
    switch(*(v12 + v13 + 32))
    {
      case 1:
        v14 = 0xD000000000000025;
        v15 = v50;
        break;
      case 2:
        v14 = 0xD000000000000023;
        v15 = v49;
        break;
      case 3:
        v14 = 0xD000000000000022;
        v15 = v48;
        break;
      case 4:
        v14 = 0xD000000000000021;
        v15 = v47;
        break;
      case 5:
        v14 = 0xD000000000000026;
        v15 = v46;
        break;
      case 6:
        v14 = 0xD000000000000027;
        v15 = v45;
        break;
      case 7:
        v14 = 0xD000000000000022;
        v15 = v44;
        break;
      case 8:
        v14 = 0xD000000000000028;
        v15 = v43;
        break;
      case 9:
        v14 = 0xD000000000000025;
        v15 = v42;
        break;
      case 0xA:
        v14 = 0xD000000000000021;
        v16 = &v62;
        goto LABEL_23;
      case 0xB:
        v14 = 0xD000000000000026;
        v16 = &v61;
        goto LABEL_23;
      case 0xC:
        v14 = 0xD000000000000027;
        v16 = &v60;
LABEL_23:
        v15 = *(v16 - 32);
        break;
      default:
        break;
    }

    v17 = v15 | 0x8000000000000000;
    v18 = 0xD000000000000029;
    v19 = "nt";
    switch(v10)
    {
      case 0:
        goto LABEL_39;
      case 1:
        v18 = 0xD000000000000025;
        v19 = v50;
        goto LABEL_39;
      case 2:
        v18 = 0xD000000000000023;
        v19 = v49;
        goto LABEL_39;
      case 3:
        v18 = 0xD000000000000022;
        v19 = v48;
        goto LABEL_39;
      case 4:
        v18 = 0xD000000000000021;
        v19 = v47;
        goto LABEL_39;
      case 5:
        v18 = 0xD000000000000026;
        v19 = v46;
        goto LABEL_39;
      case 6:
        v18 = 0xD000000000000027;
        v19 = v45;
        goto LABEL_39;
      case 7:
        v18 = 0xD000000000000022;
        v19 = v44;
        goto LABEL_39;
      case 8:
        v18 = 0xD000000000000028;
        v19 = v43;
        goto LABEL_39;
      case 9:
        v18 = 0xD000000000000025;
        v19 = v42;
        goto LABEL_39;
      case 10:
        v18 = 0xD000000000000021;
        v20 = &v62;
        goto LABEL_37;
      case 11:
        v18 = 0xD000000000000026;
        v20 = &v61;
        goto LABEL_37;
      case 12:
        v18 = 0xD000000000000027;
        v20 = &v60;
LABEL_37:
        v19 = *(v20 - 32);
LABEL_39:
        if (v14 != v18 || v17 != (v19 | 0x8000000000000000))
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v21)
          {
            goto LABEL_53;
          }

          if (v51 == ++v13)
          {

            return;
          }

          continue;
        }

LABEL_53:

        v34 = sub_1005A5F8C();
        v35 = [v34 indexPathsForSelectedItems];

        if (v35)
        {
          v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          IndexPath.init(item:section:)();
          v37 = sub_100503B90(v5, v36);

          v38 = *(v3 + 8);
          v38(v5, v2);
          if (!v37)
          {
            v39 = *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView);
            IndexPath.init(item:section:)();
            v40 = IndexPath._bridgeToObjectiveC()().super.isa;
            v38(v5, v2);
            [v39 selectItemAtIndexPath:v40 animated:0 scrollPosition:0];
          }
        }

        *(v1 + v41[0]) = 13;
        return;
      default:
        return;
    }
  }
}

void sub_1005AA224(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext];
    if (v3 != 2 && (v3 & 1) == 0)
    {
    }

    else
    {
      v5 = Strong;
      sub_1005A9A58();
      v6[3] = sub_10010FC20(&qword_101196F80);
      v6[0] = a1;

      sub_1005BDE8C(v6, 3);
    }
  }
}

void sub_1005AA2E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005AA3F8(2u);
    v2 = sub_1005AA634();
    sub_100009F78(0, &unk_1011845F0);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v4.value = 0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v4, 0, sub_1005C3510, v3).super.super.isa;

    [v2 setMenu:isa];
  }
}

uint64_t sub_1005AA3F8(unsigned __int8 a1)
{
  v2 = v1;
  v12 = _swiftEmptyArrayStorage;
  if (sub_10049CB78())
  {
    goto LABEL_15;
  }

  sub_10010FC20(&qword_101183990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE270;
  *(inited + 32) = sub_1005B3C58();
  *(inited + 40) = [v1 editButtonItem];
  *(inited + 48) = sub_1005AA634();
  sub_1001240B4(inited);
  if (a1 == 2)
  {
    a1 = [v1 isEditing];
  }

  v5 = sub_10003169C();
  if (v5)
  {
    if (v5[2])
    {

      MusicPageProvider.accountButtonCoordinator.getter();
      v6 = dispatch thunk of AccountButtonCoordinator.isAccountButtonAvailable.getter();

      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v7 = *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___accountBarButtonItem];
  if (a1)
  {
    [v7 setHidden:1];
    v8 = [v2 editButtonItem];
    [v8 setHidden:0];

    [*&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___contextBarButtonItem] setHidden:1];
  }

  else
  {
    v9 = (v6 & 1) == 0 || *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress] >= 1.0;
    [v7 setHidden:v9];
    v10 = [v2 editButtonItem];
    [v10 setHidden:1];

    [*&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___contextBarButtonItem] setHidden:*&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress] >= 1.0];
  }

LABEL_15:
  sub_1005BD4A8(&v12, v2);
}

id sub_1005AA634()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v6 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_1005BF474, v4);

    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1005AA718(void ***a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v50 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v8);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = v5;
    v11 = Strong;
    v12 = [v11 traitCollection];
    v47 = sub_100137E8C();
    UITraitCollection.subscript.getter();

    *&v56[0] = v9;
    type metadata accessor for MusicLibrary();
    sub_100029710(&qword_10118CE20, &type metadata accessor for MusicLibrary);
    LOBYTE(v12) = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v12)
    {
    }

    else
    {
      v45 = v2;
      v46 = v3;
      v13 = *(*&v11[OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedResponseController] + 48);
      swift_beginAccess();
      v14 = *(v13 + 16);
      v15 = *(v13 + 32);
      v16 = *(v13 + 48);
      v17 = *(v13 + 64);
      v18 = *(v13 + 96);
      v56[4] = *(v13 + 80);
      v56[5] = v18;
      v57 = *(v13 + 112);
      v56[2] = v16;
      v56[3] = v17;
      v56[0] = v14;
      v56[1] = v15;
      v44 = v6;
      v19 = v14;
      v20 = *(v13 + 48);
      v59 = *(v13 + 32);
      v60 = v20;
      v21 = *(v13 + 64);
      v22 = *(v13 + 80);
      v23 = *(v13 + 96);
      v64 = *(v13 + 112);
      v62 = v22;
      v63 = v23;
      v61 = v21;

      sub_10003D868(v56, v55);

      v58[0] = v19;
      v58[1] = v9;
      sub_100379FBC(v58);
      v24 = *&v11[OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController];
      Library.Menu.Request.MediaLibrarySource.init(_:)();
      v26 = v25;
      v28 = v27;
      swift_beginAccess();
      v29 = v24[2];
      *v55 = v24[1];
      *&v55[16] = v29;
      v30 = v24[4];
      *&v55[32] = v24[3];
      *&v55[48] = v30;
      *&v55[64] = v24[5];
      v31 = *v55;
      LOBYTE(v19) = v55[8];

      sub_1003E1510(v55, &v51);
      sub_1003E156C(v31, v19);
      v54 = v28 & 1;
      v51 = v26;
      v52[0] = v28 & 1;
      *&v52[17] = *&v55[25];
      *&v52[33] = *&v55[41];
      v53[0] = *&v55[57];
      *(v53 + 15) = *&v55[72];
      *&v52[1] = *&v55[9];
      RequestResponse.Controller.request.setter(&v51);
      v32 = sub_1005AA634();
      sub_100009F78(0, &unk_1011845F0);
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v34.value = 0;
      isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v34, 0, sub_1005C3510, v33).super.super.isa;

      [v32 setMenu:isa];

      UIViewController.traitOverrides.getter();
      v51 = v9;

      dispatch thunk of UIMutableTraits.subscript.setter();
      UIViewController.traitOverrides.setter();

      sub_1005AADBC();
      sub_100009F78(0, &qword_101182960);
      v36 = static OS_dispatch_queue.main.getter();
      v37 = swift_allocObject();
      *(v37 + 16) = v11;
      *&v52[24] = sub_1005C3408;
      *&v52[32] = v37;
      v51 = _NSConcreteStackBlock;
      *v52 = 1107296256;
      *&v52[8] = sub_10002BC98;
      *&v52[16] = &unk_1010B50C8;
      v38 = _Block_copy(&v51);
      v39 = v11;

      v40 = v49;
      static DispatchQoS.unspecified.getter();
      v51 = _swiftEmptyArrayStorage;
      sub_100029710(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
      sub_10010FC20(&qword_101182970);
      sub_100020674(&qword_101183F70, &qword_101182970);
      v41 = v48;
      v42 = v45;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v38);

      (*(v46 + 8))(v41, v42);
      (*(v50 + 8))(v40, v44);
    }
  }
}

uint64_t sub_1005AADBC()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_10010FC20(&unk_101197280);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = sub_10049CB78();
  v10 = v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_pinsObserver;
  if (v9)
  {
    swift_beginAccess();
    if (*(v10 + 24))
    {
      sub_100008FE4(v10, &v21);
      sub_10000954C(&v21, *(&v22 + 1));
      dispatch thunk of Cancellable.cancel()();
      sub_10000959C(&v21);
    }

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    v18 = v6;
    v19 = v5;
    swift_beginAccess();
    if (*(v10 + 24))
    {
      sub_100008FE4(v10, &v21);
      sub_10000954C(&v21, *(&v22 + 1));
      dispatch thunk of Cancellable.cancel()();
      sub_10000959C(&v21);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    MusicLibrary.pinsObserver.getter();

    v11 = dispatch thunk of MusicLibraryPinsObserver.pinsPublisher.getter();

    *&v21 = v11;
    sub_100009F78(0, &qword_101182960);
    v12 = static OS_dispatch_queue.main.getter();
    v20 = v12;
    v13 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    sub_10010FC20(&qword_10118BFE8);
    sub_100020674(&unk_101197290, &qword_10118BFE8);
    sub_1000206BC();
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v4, &qword_101182140);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&qword_10118BFF0, &unk_101197280);
    v14 = v19;
    v15 = Publisher<>.sink(receiveValue:)();

    (*(v18 + 8))(v8, v14);
    *(&v22 + 1) = type metadata accessor for AnyCancellable();
    v23 = &protocol witness table for AnyCancellable;
    *&v21 = v15;
  }

  swift_beginAccess();
  sub_10006B010(&v21, v10, &qword_10118D380);
  return swift_endAccess();
}

void sub_1005AB21C()
{
  sub_1005BF3BC(2u);
  if ((v0 & 1) == 0)
  {
    v1 = sub_1005A5F8C();
    sub_10010FC20(&qword_10118AC80);
    type metadata accessor for IndexPath();
    *(swift_allocObject() + 16) = xmmword_100EBC6B0;
    IndexPath.init(index:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 reloadItemsAtIndexPaths:isa];
  }
}

uint64_t sub_1005AB368@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011970C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___pinCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011970C8);
  v10 = sub_10010FC20(&qword_101196E80);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_1011970C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s22PinsCollectionViewCellCMa();
  type metadata accessor for MusicPin();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_1011970C8);
  return swift_endAccess();
}

void sub_1005AB5D0()
{
  v0 = type metadata accessor for IndexSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_10117F678 != -1)
    {
      swift_once();
    }

    v6 = sub_10010BA00(&off_10109BBC0);
    sub_1003C6340(v6);

    v7 = sub_1005BF3BC(1u);
    if ((v8 & 1) == 0)
    {
      v9 = v7;
      v10 = sub_1005A5F8C();
      sub_10010FC20(&unk_101191400);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100EBC6B0;
      *(v11 + 32) = v9;
      v15 = v11;
      sub_100029710(&unk_10118A630, &type metadata accessor for IndexSet);
      sub_10010FC20(&unk_101191410);
      sub_100020674(&unk_10118A640, &unk_101191410);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      IndexSet._bridgeToObjectiveC()(v12);
      v14 = v13;
      (*(v1 + 8))(v3, v0);
      [v10 reloadSections:v14];

      v5 = v14;
    }
  }
}

uint64_t sub_1005AB840()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___downloadsController;
  if (*(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___downloadsController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___downloadsController);
  }

  else
  {
    type metadata accessor for LibraryDownloadsController();
    v2 = swift_allocObject();
    type metadata accessor for Track();
    MusicItemCollection.init(arrayLiteral:)();
    v3 = (v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
    *v3 = 0;
    v3[1] = 0;
    *(v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 0;
    *(v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_viewModel) = 0;
    v4 = v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueueSubscription;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
    *(v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_itemStateCache) = _swiftEmptyDictionarySingleton;
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1005AB940()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v39 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v56 = v1;
    v9 = sub_10010FC20(&unk_1011841D0);
    sub_100020674(&qword_1011913B0, &unk_1011841D0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v10 = dispatch thunk of Collection.distance(from:to:)();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v10 == dispatch thunk of Collection.distance(from:to:)() || (v54 = v3, v11 = (v8 + OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu), swift_beginAccess(), (v12 = *v11) == 0))
    {
    }

    else
    {
      v52 = v6;
      v53 = v0;
      v14 = v11[4];
      v13 = v11[5];
      v15 = v11[2];
      v16 = v11[3];
      v17 = v11[1];
      v55 = v12;

      v18 = v17;

      v19 = sub_1005BF3BC(2u);
      if (v20)
      {
      }

      else
      {
        v49 = v13;
        v50 = v14;
        v51 = v16;
        v46 = v18;
        v47 = v8;
        v48 = v15;
        v21 = *(v55 + 16);
        v22 = v55;
        if (v21)
        {
          v39[1] = v19;
          v57 = 0x8000000100E3C2C0;
          v45 = 0x8000000100E3C260;
          v44 = 0x8000000100E3C230;
          v43 = 0x8000000100E3C200;
          v42 = 0x8000000100E3C1D0;
          v41 = 0x8000000100E3C1A0;
          v40 = 0x8000000100E3C170;
          v39[5] = 0x8000000100E3C140;
          v39[4] = 0x8000000100E3C110;
          v39[3] = 0x8000000100E3C0E0;
          v39[2] = 0x8000000100E3C0B0;
          v58 = 0x8000000100E3C080;

          v23 = v22;
          v24 = 0;
          while (2)
          {
            if (v24 >= *(v23 + 16))
            {
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              v9 = sub_100499724(0, v9[2] + 1, 1, v9);
LABEL_48:
              v36 = v9[2];
              v35 = v9[3];
              if (v36 >= v35 >> 1)
              {
                v9 = sub_100499724(v35 > 1, v36 + 1, 1, v9);
              }

              v9[2] = v36 + 1;
              (*(v8 + 32))(v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v36, v54, v53);
            }

            else
            {
              v18 = v58;
              v25 = 0x8000000100E3C290;
              switch(v24[v23 + 32])
              {
                case 1:
                  v26 = &v61;
                  goto LABEL_26;
                case 2:
                  v26 = &v62;
                  goto LABEL_26;
                case 3:
                  v26 = &v63;
                  goto LABEL_26;
                case 4:
                  v27 = &v64;
                  goto LABEL_15;
                case 5:
                  v25 = v40;
                  goto LABEL_22;
                case 6:
                  v26 = &v65;
                  goto LABEL_26;
                case 7:
                  v26 = &v66;
                  goto LABEL_26;
                case 8:
                  v26 = &v67;
                  goto LABEL_26;
                case 9:
                  v26 = &v68;
LABEL_26:
                  v18 = *(v26 - 32);
                  goto LABEL_27;
                case 10:
                  v27 = &v69;
LABEL_15:
                  v18 = *(v27 - 32);
                  goto LABEL_27;
                case 11:
LABEL_22:
                  if (0x8000000100E3C290 == v25)
                  {

LABEL_32:

                    dispatch thunk of Collection.startIndex.getter();
                    dispatch thunk of Collection.endIndex.getter();
                    v8 = v60 == v59;
                    dispatch thunk of Collection.startIndex.getter();
                    dispatch thunk of Collection.endIndex.getter();
                    v28 = v52;
                    if ((v8 ^ (v60 != v59)))
                    {
                      v9 = _swiftEmptyArrayStorage;
                    }

                    else
                    {
                      IndexPath.init(item:section:)();
                      v9 = sub_100499724(0, 1, 1, _swiftEmptyArrayStorage);
                      v30 = v9[2];
                      v29 = v9[3];
                      v8 = v56;
                      if (v30 >= v29 >> 1)
                      {
                        v9 = sub_100499724(v29 > 1, v30 + 1, 1, v9);
                      }

                      v31 = v53;
                      v9[2] = v30 + 1;
                      (*(v8 + 32))(v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v30, v28, v31);
                    }

                    v21 = *(v22 + 16);
                    if (v21)
                    {
                      goto LABEL_38;
                    }

                    goto LABEL_46;
                  }

                  v18 = v25;
LABEL_27:
                  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v8)
                  {
                    goto LABEL_32;
                  }

                  ++v24;
                  v23 = v22;
                  if (v21 != v24)
                  {
                    continue;
                  }

                  v9 = _swiftEmptyArrayStorage;
                  v21 = *(v22 + 16);
                  if (!v21)
                  {
                    goto LABEL_46;
                  }

LABEL_38:

                  v32 = v22;
                  v18 = 0;
                  while (2)
                  {
                    if (v18 >= *(v32 + 16))
                    {
                      goto LABEL_55;
                    }

                    v33 = v57;
                    switch(v18[v32 + 32])
                    {
                      case 6:
                        v33 = v41;
                        goto LABEL_42;
                      case 12:
LABEL_42:
                        if (v57 != v33)
                        {
                          goto LABEL_43;
                        }

                        goto LABEL_47;
                      default:
LABEL_43:
                        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v8)
                        {
LABEL_47:

                          IndexPath.init(item:section:)();
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v21 = v46;
                          v18 = v47;
                          v8 = v56;
                          if (isUniquelyReferenced_nonNull_native)
                          {
                            goto LABEL_48;
                          }

                          goto LABEL_56;
                        }

                        ++v18;
                        v32 = v22;
                        if (v21 != v18)
                        {
                          continue;
                        }

                        break;
                    }

                    break;
                  }

LABEL_46:
                  v21 = v46;
                  v18 = v47;
                  break;
                case 12:
                  v18 = v57;
                  goto LABEL_27;
                default:
                  goto LABEL_27;
              }
            }

            break;
          }
        }

        else
        {
          v21 = v46;
          v18 = v47;
        }

        v37 = sub_1005A5F8C();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v37 reconfigureItemsAtIndexPaths:isa];
      }
    }
  }
}

uint64_t sub_1005AC238@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_1005AC4C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011970A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_1011970A0);
  v10 = sub_10010FC20(&qword_101196E70);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_1011970A0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for LibraryImport.ViewModel(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_1011970A0);
  return swift_endAccess();
}

uint64_t sub_1005AC738@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_101197108);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___menuCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_101197108);
  v10 = sub_10010FC20(&qword_101196E90);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_101197108);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_101197108);
  return swift_endAccess();
}

uint64_t sub_1005AC9A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101197170);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___recentCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_101197170);
  v10 = sub_10010FC20(qword_101196EA0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_101197170);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for RecentlyAddedMusicItem();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_101197170);
  return swift_endAccess();
}

uint64_t sub_1005ACC20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101197098);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___inlineBubbleTipRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_101197098);
  v10 = sub_10010FC20(&qword_101196E60);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_101197098);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InlineBubbleTipCell();
  type metadata accessor for InlineBubbleTipProvider.InlineBubbleTip();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_101197098);
  return swift_endAccess();
}

char *sub_1005ACE88(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v2 - 8);
  v4 = &v57 - v3;
  v5 = type metadata accessor for RecentlyAddedMusicItem();
  v67 = *(v5 - 8);
  v68 = v5;
  __chkstk_darwin(v5);
  v66 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPin.Action();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v60 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = &v57 - v10;
  v63 = type metadata accessor for MusicPin.Item();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v62 = &v57 - v17;
  v18 = type metadata accessor for MusicPin();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v57 - v23;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v69 = result;
  if (result)
  {
    v58 = v24;
    v26 = IndexPath.section.getter();
    v27 = sub_1005BF47C(v26);
    if (v27 > 1)
    {
      if (v27 != 2)
      {
        v43 = v69;
        sub_1005A7C20(0, v4);
        v45 = v67;
        v44 = v68;
        if ((*(v67 + 48))(v4, 1, v68) != 1)
        {
          v46 = v66;
          (*(v45 + 32))(v66, v4, v44);
          v47 = *(*&v43[OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedResponseController] + 48);
          swift_beginAccess();
          v48 = *(v47 + 80);
          v71[3] = *(v47 + 64);
          v71[4] = v48;
          v71[5] = *(v47 + 96);
          v72 = *(v47 + 112);
          v49 = *(v47 + 32);
          v71[0] = *(v47 + 16);
          v71[1] = v49;
          v71[2] = *(v47 + 48);
          sub_10003D868(v71, &v70);
          sub_100455348(v46, v15);
          sub_10003D90C(v71);
          v50 = type metadata accessor for MusicPlaybackIntentDescriptor();
          v51 = *(v50 - 8);
          if ((*(v51 + 48))(v15, 1, v50) == 1)
          {
            sub_1000095E8(v15, &unk_10118CDB0);
            v52 = 0;
          }

          else
          {
            v52 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
            (*(v51 + 8))(v15, v50);
          }

          v56 = v66;
          v55 = sub_1007989EC(v52, &off_10109BBE8);

          (*(v45 + 8))(v56, v44);
          return v55;
        }

        sub_1000095E8(v4, &unk_101197040);
        return 0;
      }
    }

    else if (v27)
    {
      v28 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
      v29 = v69;
      swift_beginAccess();
      v30 = *&v29[v28];
      if (v30)
      {
        v31 = IndexPath.item.getter();
        if ((v31 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v32 = v58;
          if (v31 < *(v30 + 16))
          {
            a1 = v18;
            v18 = v19;
            (*(v19 + 16))(v21, v30 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v31, a1);
            swift_endAccess();
            (*(v19 + 32))(v32, v21, a1);
            if (qword_10117F6D8 == -1)
            {
LABEL_8:
              v68 = qword_101218C40;
              MusicPin.item.getter();
              v33 = v59;
              MusicPin.action.getter();
              v35 = v64;
              v34 = v65;
              v36 = v60;
              (*(v64 + 104))(v60, enum case for MusicPin.Action.shuffle(_:), v65);
              v37 = static MusicPin.Action.== infix(_:_:)();
              v38 = *(v35 + 8);
              v38(v36, v34);
              v38(v33, v34);
              v39 = v62;
              sub_10042BAAC(v12, v37 & 1, v62);
              (*(v61 + 8))(v12, v63);
              v40 = type metadata accessor for MusicPlaybackIntentDescriptor();
              v41 = *(v40 - 8);
              if ((*(v41 + 48))(v39, 1, v40) == 1)
              {
                sub_1000095E8(v39, &unk_10118CDB0);
                v42 = 0;
              }

              else
              {
                v42 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
                (*(v41 + 8))(v39, v40);
              }

              v53 = v69;
              v54 = v58;
              v55 = sub_100798374(v42, _swiftEmptyArrayStorage);

              (*(v18 + 8))(v54, a1);
              return v55;
            }

LABEL_26:
            swift_once();
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

      swift_endAccess();

      return 0;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1005AD678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MusicPin();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  __chkstk_darwin(v4);
  v53 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = v47 - v7;
  __chkstk_darwin(v8);
  v52 = v47 - v9;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v55 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v13 - 8);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v47 - v17;
  __chkstk_darwin(v19);
  v21 = v47 - v20;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_13;
  }

  v23 = result;
  v48 = v4;
  v50 = a1;
  sub_1000089F8(a1, v21, &unk_10118BCE0);
  v24 = *(v11 + 48);
  if (v24(v21, 1, v10) == 1)
  {
    sub_1000095E8(v21, &unk_10118BCE0);
LABEL_7:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v28 = v56;
    (*(v11 + 56))(v15, 1, 1, v10);
    a2[3] = &type metadata for DragDropToLibrary.Destination;
    a2[4] = sub_1005C31E4();
    v29 = swift_allocObject();
    *a2 = v29;
    sub_100376BCC(v15, v29 + 24);

    result = sub_1000095E8(v15, &unk_10118BCE0);
    *(v29 + 16) = v28;
    return result;
  }

  v25 = IndexPath.section.getter();
  v49 = a2;
  v26 = v25;
  v47[0] = *(v11 + 8);
  v47[1] = v11 + 8;
  (v47[0])(v21, v10);
  v27 = v26;
  a2 = v49;
  if (sub_1005BF47C(v27) != 1)
  {
    goto LABEL_7;
  }

  sub_1000089F8(v50, v18, &unk_10118BCE0);
  if (v24(v18, 1, v10) == 1)
  {

    result = sub_1000095E8(v18, &unk_10118BCE0);
LABEL_13:
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    return result;
  }

  v30 = v55;
  (*(v11 + 32))(v55, v18, v10);
  v31 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
  swift_beginAccess();
  v32 = *&v23[v31];
  if (!v32)
  {
    swift_endAccess();

    result = (v47[0])(v30, v10);
    goto LABEL_13;
  }

  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v33 = v54;
    if (result < *(v32 + 16))
    {
      v34 = *(v54 + 80);
      v35 = v32 + ((v34 + 32) & ~v34) + *(v54 + 72) * result;
      v36 = *(v54 + 16);
      v37 = v51;
      v38 = v48;
      v36(v51, v35, v48);
      swift_endAccess();
      (v47[0])(v55, v10);
      v39 = *(v33 + 32);
      v40 = v52;
      v39(v52, v37, v38);
      v55 = type metadata accessor for DragDropPins.Destination(0);
      v41 = v49;
      v49[3] = v55;
      v41[4] = sub_100029710(&qword_101189638, type metadata accessor for DragDropPins.Destination);
      v42 = sub_10001C8B8(v41);
      v36(v42, v40, v38);
      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v44 = v53;
      v39(v53, v40, v38);
      v45 = swift_allocObject();
      *(v45 + 16) = v43;
      result = (v39)(v45 + ((v34 + 24) & ~v34), v44, v38);
      v46 = (v42 + *(v55 + 5));
      *v46 = &unk_100ED5EE8;
      v46[1] = v45;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005ADCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  type metadata accessor for MainActor();
  v3[17] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005ADD5C, v5, v4);
}

uint64_t sub_1005ADD5C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (!v4 || (v5 = v0[14], v6 = swift_task_alloc(), *(v6 + 16) = v5, , v7 = sub_1007356C4(sub_1005C3514, v6, v4), v9 = v8, , , (v9 & 1) != 0) || (v10 = *&v2[v3]) == 0 || (v11 = v0[16], v12 = swift_task_alloc(), *(v12 + 16) = v11, , v13 = sub_1007356C4(sub_1005C33DC, v12, v10), v15 = v14, , , (v15 & 1) != 0) || (v16 = sub_1005BF3BC(1u), (v17 & 1) != 0))
    {
    }

    else
    {
      v20 = v16;
      v21 = sub_1005A5F8C();
      v22 = swift_allocObject();
      v22[2] = v2;
      v22[3] = v7;
      v22[4] = v13;
      v22[5] = v20;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_1005C33FC;
      *(v23 + 24) = v22;
      v0[6] = sub_100029B94;
      v0[7] = v23;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100029B9C;
      v0[5] = &unk_1010B5078;
      v24 = _Block_copy(v0 + 2);
      v25 = v2;

      [v21 performBatchUpdates:v24 completion:0];
      _Block_release(v24);
    }
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1005ADFEC()
{
  type metadata accessor for MusicPin();
  sub_100029710(&qword_101197100, &type metadata accessor for MusicPin);
  sub_100029710(qword_1011972F0, &type metadata accessor for MusicPin);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

void sub_1005AE0B4(uint64_t a1, unint64_t a2, int64_t a3, uint64_t a4)
{
  v26 = a4;
  v7 = sub_10010FC20(&unk_1011972E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for MusicPin();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005AE3F0(v27);
  v16 = *v14;
  v25 = a3;
  if (!v16)
  {
    v15(v27, 0);
    goto LABEL_6;
  }

  v17 = v14;
  sub_1004F41FC(a2, v13);
  if (*(*v17 + 16) < a3)
  {
    __break(1u);
  }

  else if ((a3 & 0x8000000000000000) == 0)
  {
    (*(v11 + 16))(v9, v13, v10);
    sub_1003AE2DC(a3, a3, v9);
    (*(v11 + 8))(v13, v10);
    v15(v27, 0);
LABEL_6:
    v18 = sub_1005A5F8C();
    sub_10010FC20(&qword_10118AC80);
    type metadata accessor for IndexPath();
    v19 = swift_allocObject();
    v24 = xmmword_100EBC6B0;
    *(v19 + 16) = xmmword_100EBC6B0;
    IndexPath.init(item:section:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 deleteItemsAtIndexPaths:isa];

    v21 = *(a1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView);
    *(swift_allocObject() + 16) = v24;
    v22 = v21;
    IndexPath.init(item:section:)();
    v23 = Array._bridgeToObjectiveC()().super.isa;

    [v22 insertItemsAtIndexPaths:v23];

    return;
  }

  __break(1u);
}

void (*sub_1005AE3F0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1005AE454;
}

void sub_1005AE454(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1005B4E14();
  }
}

void sub_1005AE488(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong editButtonItem];
    [v4 setEnabled:a1 == 0];

    v5 = sub_1005AA634();
    sub_100009F78(0, &unk_1011845F0);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v7.value = 0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v7, 0, sub_1005C3510, v6).super.super.isa;

    [v5 setMenu:isa];
  }
}

uint64_t sub_1005AE5C4(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10118B910);
  __chkstk_darwin(v2 - 8);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v21[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v9 = Strong;
  sub_1000089F8(a1, v7, &unk_10118B910);
  v10 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v7, 1, v10);
  sub_1000095E8(v7, &unk_10118B910);
  if (v12 != 1)
  {
    sub_1000089F8(a1, v4, &unk_10118B910);
    if (v11(v4, 1, v10) != 1)
    {
      v14 = v4[1];
      sub_1005C3434(v4, type metadata accessor for CollectionViewDragDropController.DropContext);
      v15 = [v14 operation];

      v13 = v15 == 2;
      goto LABEL_7;
    }

    sub_1000095E8(v4, &unk_10118B910);
  }

  v13 = 0;
LABEL_7:
  v16 = v9[OBJC_IVAR____TtC5Music25LibraryMainViewController_isActiveDropSessionInsideView];
  v9[OBJC_IVAR____TtC5Music25LibraryMainViewController_isActiveDropSessionInsideView] = v13;
  sub_1005B9B9C(v16);

LABEL_8:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;

    v19 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
    v20 = (*(*(v19 - 8) + 48))(a1, 1, v19) != 1;
    RequestResponse.Controller.isPaused.setter(v20);
  }

  return result;
}

void sub_1005AE870(uint64_t a1)
{
  v2 = type metadata accessor for PlacementID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SocialProfileButtonDisplayStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  if (!a1)
  {
    goto LABEL_8;
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    goto LABEL_8;
  }

  v49 = v2;

  v13 = v12;

  v14 = sub_100674BE4(0);

  v50 = v14;
  if (v14)
  {
    if (sub_10049CB78())
    {

      goto LABEL_7;
    }

    v48 = v3;
    v23 = *&v11[OBJC_IVAR____TtC5Music25LibraryMainViewController_accountButton];
    (*(v7 + 104))(v9, enum case for SocialProfileButtonDisplayStyle.iconOnly(_:), v6);
    v24 = v23;
    v47[1] = v13;
    v25 = MusicPageProvider.accountButton(displayStyle:stackAuthority:)();
    (*(v7 + 8))(v9, v6);
    v26 = *&v24[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button];
    v27 = OBJC_IVAR____TtC5Music20AccountButtonWrapper_button;
    *&v24[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button] = v25;
    if (v26)
    {
      sub_100009F78(0, &qword_101181620);
      v28 = v25;
      v29 = v26;
      v30 = static NSObject.== infix(_:_:)();

      if (v30)
      {
LABEL_27:

        v36 = MusicPageProvider.accountButtonCoordinator.getter();
        v37 = swift_allocObject();
        v38 = swift_unknownObjectWeakInit();
        __chkstk_darwin(v38);
        v47[-4] = v36;
        v47[-3] = sub_1005C31D4;
        v47[-2] = v37;

        withObservationTracking<A>(_:onChange:)();
        dispatch thunk of AccountButtonCoordinator.isAccountButtonAvailable.getter();
        swift_beginAccess();
        v39 = swift_unknownObjectWeakLoadStrong();
        if (v39)
        {
          v40 = v39;
          sub_1005AA3F8(2u);
        }

        else
        {
        }

        static PlacementID.InlineBubbleTip.libraryPage.getter();
        sub_10010FC20(&unk_1011972C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100EBC6B0;
        *(inited + 32) = 0x6C65694665676170;
        *(inited + 40) = 0xEA00000000007364;
        v42 = OBJC_IVAR____TtC5Music25LibraryMainViewController_bubbleTipPageFields;
        v43 = type metadata accessor for MusicMetrics.PageFields();
        *(inited + 72) = v43;
        v44 = sub_10001C8B8((inited + 48));
        (*(*(v43 - 8) + 16))(v44, &v11[v42], v43);
        sub_10010BC60(inited);
        swift_setDeallocating();
        sub_1000095E8(inited + 32, &unk_1011927D0);
        v45 = MusicPageProvider.inlineBubbleTipProvider(for:context:)();

        (*(v48 + 8))(v5, v49);
        v46 = OBJC_IVAR____TtC5Music25LibraryMainViewController_inlineBubbleTipProvider;
        *&v11[OBJC_IVAR____TtC5Music25LibraryMainViewController_inlineBubbleTipProvider] = v45;

        *(sub_1005A8B2C() + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipProvider) = *&v11[v46];
        swift_retain_n();

        sub_10054E11C();

        return;
      }
    }

    else
    {
      v31 = v25;
      v29 = 0;
    }

    v32 = [v29 superview];
    if (v32)
    {
      v33 = v32;
      sub_100009F78(0, &qword_101181620);
      v34 = v24;
      v35 = static NSObject.== infix(_:_:)();

      if (v35)
      {
        [v29 removeFromSuperview];
      }
    }

    if (*&v24[v27])
    {
      [v24 addSubview:?];
    }

    [v24 setNeedsLayout];
    v28 = v25;
    goto LABEL_27;
  }

LABEL_7:

LABEL_8:
  v15 = *&v11[OBJC_IVAR____TtC5Music25LibraryMainViewController_accountButton];
  v16 = OBJC_IVAR____TtC5Music20AccountButtonWrapper_button;
  v17 = *&v15[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button];
  *&v15[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button] = 0;
  if (v17)
  {
    v18 = v15;
    v19 = [v17 superview];
    if (v19)
    {
      v20 = v19;
      sub_100009F78(0, &qword_101181620);
      v21 = v18;
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {
        [v17 removeFromSuperview];
      }
    }

    if (*&v15[v16])
    {
      [v18 addSubview:?];
    }

    [v18 setNeedsLayout];
  }

  *&v11[OBJC_IVAR____TtC5Music25LibraryMainViewController_inlineBubbleTipProvider] = 0;

  *(sub_1005A8B2C() + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipProvider) = 0;

  sub_10054E11C();
}

void sub_1005AEF88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005AA3F8(2u);
  }
}

uint64_t sub_1005AEFE0(char a1)
{
  v3 = a1 & 1;
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(a1);
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(a1);
  v4 = *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_sharedLibrariesController);
  v5 = *(v4 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled);
  *(v4 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled) = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      sub_10044D424();
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      v6 = OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponseSubscription;
      swift_beginAccess();
      sub_10006B010(v8, v4 + v6, &qword_10118D380);
      swift_endAccess();
    }
  }

  sub_1005AB840();
  sub_10016DB90(v3);
}

void sub_1005AF0DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationItem];
    [v2 _manualScrollEdgeAppearanceProgress];
    v4 = v3;

    v5 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress];
    *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress] = v4;
    if (v4 != v5)
    {
      sub_1005AA3F8(2u);
    }
  }
}

uint64_t sub_1005AF1C8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for MusicMetrics.PageFields();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillAppear:", a1 & 1, v7);
  v10 = sub_1005A5F8C();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_pendingSelectedIdentifier] = 13;
  sub_1005A9B68();
  v11 = [v2 transitionCoordinator];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1005C3148;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1007E9F28;
    aBlock[3] = &unk_1010B4F88;
    v14 = _Block_copy(aBlock);

    [v12 animateAlongsideTransition:0 completion:v14];
    _Block_release(v14);
    result = swift_unknownObjectRelease();
  }

  else
  {
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    v16 = *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_sharedLibrariesController];
    v17 = *(v16 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled);
    *(v16 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled) = 1;
    if (v17 != 1)
    {
      sub_10044D424();
    }

    v18 = sub_1005AB840();
    v19 = *(v18 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled);
    *(v18 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 1;
    if (v19 != 1)
    {
      sub_10016D6B8();
    }
  }

  if (*&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_inlineBubbleTipProvider])
  {
    (*(v6 + 16))(v9, &v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_bubbleTipPageFields], v5);

    dispatch thunk of InlineBubbleTipProvider.onAppear(pageFields:)();

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_1005AF4CC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    v2 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_sharedLibrariesController];
    v3 = *(v2 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled);
    *(v2 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled) = 1;
    if (v3 != 1)
    {
      sub_10044D424();
    }

    v4 = sub_1005AB840();
    v5 = *(v4 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled);
    *(v4 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 1;
    if ((v5 & 1) == 0)
    {
      sub_10016D6B8();
    }
  }

  return result;
}

uint64_t sub_1005AF604(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for MetricsEvent.Page(0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19.receiver = v1;
  v19.super_class = ObjectType;
  result = objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v5);
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_allowsAnimatedChanges) = 1;
  if (qword_10117F630 != -1)
  {
    result = swift_once();
  }

  if ((*(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_shouldSkipRecordingPageMetrics) & 1) == 0)
  {
    v9 = *(qword_101218B28 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8) != 0;
    v10 = *MetricsReportingController.shared.unsafeMutableAddressor();
    sub_10003CD38(v9, v7);
    v11 = sub_10053771C();
    v13 = v12;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v14 = qword_101218AD0;
    v15 = GroupActivitiesManager.hasJoined.getter();
    v16 = GroupActivitiesManager.participantsCount.getter();
    v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v10) + 0xA0))(v7, v11, v13, v15 & 1, v16, *(v14 + v17));

    return sub_1005C3434(v7, type metadata accessor for MetricsEvent.Page);
  }

  return result;
}

void sub_1005AF87C(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a1 & 1);
  v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_allowsAnimatedChanges] = 0;
  v3 = OBJC_IVAR____TtC5Music25LibraryMainViewController_shouldSkipRecordingPageMetrics;
  v4 = v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_shouldSkipRecordingPageMetrics];
  v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_shouldSkipRecordingPageMetrics] = 1;
  sub_1005AF920(0, 0);
  v1[v3] = v4;
  if (*&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_inlineBubbleTipProvider])
  {

    dispatch thunk of InlineBubbleTipProvider.onDisappear()();
  }
}

void sub_1005AF920(char a1, char a2)
{
  v3 = v2;
  v6 = a1 & 1;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v8 - 8);
  v68 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v13 - 8);
  v15 = (&v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v16 - 8);
  v18 = &v65 - v17;
  v19 = type metadata accessor for MetricsEvent.Click(0);
  *&v20 = __chkstk_darwin(v19 - 8).n128_u64[0];
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v3 isEditing] == v6)
  {
    return;
  }

  v65 = v11;
  v66 = v10;
  v23 = sub_1005A5F8C();
  [v23 cancelInteractiveMovement];

  v70.receiver = v3;
  v70.super_class = ObjectType;
  objc_msgSendSuper2(&v70, "setEditing:animated:", v6, a2 & 1);
  sub_1005AA3F8(v6);
  v24 = OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext;
  v25 = v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext];
  if (v25 == 2)
  {
    if (a1)
    {
      v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext] = 0;
      sub_1005AF920(1, 1);
LABEL_16:
      if (*&v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_dragDropController])
      {

        sub_10032234C((a1 & 1) == 0);
      }

      [*&v3[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView] setEditing:a1 & 1];
      sub_1005A8BAC(a1 & 1);
      if (a1)
      {
        v55 = 2;
      }

      else
      {
        if (qword_10117F630 != -1)
        {
          swift_once();
        }

        v55 = *(qword_101218B28 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8) != 0;
      }

      if ((v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_shouldSkipRecordingPageMetrics] & 1) == 0)
      {
        v56 = *MetricsReportingController.shared.unsafeMutableAddressor();
        v57 = v68;
        sub_10003CD38(v55, v68);
        v58 = sub_10053771C();
        v60 = v59;
        if (qword_10117F600 != -1)
        {
          swift_once();
        }

        v61 = qword_101218AD0;
        v62 = GroupActivitiesManager.hasJoined.getter();
        v63 = GroupActivitiesManager.participantsCount.getter();
        v64 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
        swift_beginAccess();
        (*((swift_isaMask & *v56) + 0xA0))(v57, v58, v60, v62 & 1, v63, *(v61 + v64));

        sub_1005C3434(v57, type metadata accessor for MetricsEvent.Page);
      }

      return;
    }

LABEL_13:
    v47 = &v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu];
    swift_beginAccess();
    v48 = *v47;
    if (*v47)
    {
      v50 = *(v47 + 4);
      v49 = *(v47 + 5);
      v52 = *(v47 + 2);
      v51 = *(v47 + 3);
      v53 = *(v47 + 1);
      v71 = v48;
      v72 = v53;
      v73 = v52;
      v74 = v51;
      v75 = v50;
      v76 = v49;

      v54 = v53;

      Library.Menu.persist()();
    }

    v3[v24] = 2;
    goto LABEL_16;
  }

  if ((v25 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if ((a1 & 1) == 0)
  {
    v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext] = 2;
    v26 = type metadata accessor for URL();
    (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
    sub_10003C9B0(&v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_metricsPageProperties], v15, type metadata accessor for MetricsPageProperties);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(1701736260, 0xE400000000000000, 5, 19, v18, 0, 0, 12, v22, 0, 0, 0xFF00u, v15, 0);
    v27 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v28 = sub_10053771C();
    v30 = v29;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v31 = qword_101218AD0;
    v32 = GroupActivitiesManager.hasJoined.getter();
    v33 = GroupActivitiesManager.participantsCount.getter();
    v34 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v27) + 0xB8))(v22, v28, v30, v32 & 1, v33, *(v31 + v34));

    sub_1005C3434(v22, type metadata accessor for MetricsEvent.Click);
  }

  v35 = sub_1005BF3BC(1u);
  v36 = v65;
  v37 = v66;
  if ((v38 & 1) == 0)
  {
    v39 = v35;
    v40 = *&v3[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView];
    sub_10010FC20(&unk_101191400);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100EBC6B0;
    *(v41 + 32) = v39;
    v69 = v41;
    sub_100029710(&unk_10118A630, &type metadata accessor for IndexSet);
    v42 = v40;
    sub_10010FC20(&unk_101191410);
    sub_100020674(&unk_10118A640, &unk_101191410);
    v43 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    IndexSet._bridgeToObjectiveC()(v44);
    v46 = v45;
    (*(v36 + 8))(v43, v37);
    [v42 reloadSections:v46];
  }
}

void sub_1005B0240(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011971C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v28 - v7;
  __chkstk_darwin(v9);
  v11 = v28 - v10;
  __chkstk_darwin(v12);
  v14 = v28 - v13;
  __chkstk_darwin(v15);
  v17 = v28 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = IndexPath.section.getter();
    v21 = sub_1005BF47C(v20);
    if (v21 > 1u)
    {
      v28[0] = a1;
      if (v21 == 2)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v22 = v29[0];
        sub_10010FC20(&qword_1011971C8);
        sub_1005C2FD4();
        UIHostingConfiguration<>.init(content:)();
        static Edge.Set.horizontal.getter();
        UIHostingConfiguration.margins(_:_:)();
        v23 = *(v3 + 8);
        v23(v11, v2);
        static Edge.Set.top.getter();
        UIHostingConfiguration.margins(_:_:)();
        v23(v14, v2);
        static Edge.Set.bottom.getter();
        v29[0] = v22;
        type metadata accessor for MusicLibrary();
        v28[1] = static MusicLibrary.shared.getter();
        sub_100029710(&qword_10118CE20, &type metadata accessor for MusicLibrary);
        dispatch thunk of static Equatable.== infix(_:_:)();

        v30 = v2;
        v31 = sub_100020674(&unk_101197200, &qword_1011971C0);
        sub_10001C8B8(v29);
        UIHostingConfiguration.margins(_:_:)();
        v23(v17, v2);
        UICollectionViewCell.contentConfiguration.setter();

        return;
      }

      v24 = v19[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext];
      if (v24 != 2 && (v24 & 1) == 0)
      {
        v26 = 0;
      }

      else
      {
        v21 = sub_1005B0C28();
        v26 = v21;
      }

      __chkstk_darwin(v21);
      LOBYTE(v28[-2]) = v26 & 1;
      v28[-1] = v19;
      sub_10010FC20(&qword_1011971C8);
      sub_1005C2FD4();
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.horizontal.getter();
      UIHostingConfiguration.margins(_:_:)();
      v27 = *(v3 + 8);
      v27(v14, v2);
      static Edge.Set.top.getter();
      swift_beginAccess();
      UIHostingConfiguration.margins(_:_:)();
      v27(v5, v2);
      static Edge.Set.bottom.getter();
      v30 = v2;
      v31 = sub_100020674(&unk_101197200, &qword_1011971C0);
      sub_10001C8B8(v29);
      UIHostingConfiguration.margins(_:_:)();
      v27(v8, v2);
      UICollectionViewCell.contentConfiguration.setter();
    }
  }
}

uint64_t sub_1005B07C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityTraits();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011971E0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v23 = a1;
  type metadata accessor for MusicLibrary();
  v34 = static MusicLibrary.shared.getter();
  sub_100029710(&qword_10118CE20, &type metadata accessor for MusicLibrary);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v12)
  {
    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  v14 = static VerticalAlignment.center.getter();
  sub_1005B0AC0(&v23);
  v15 = v24;
  v20 = v23;
  v21 = v4;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  LOBYTE(v34) = 1;
  v33 = v25;
  v32 = v28;
  v23 = v14;
  v24 = 0;
  v25 = 1;
  v26 = v20;
  v27 = v15;
  v28 = v33;
  v29 = v17;
  v30 = v18;
  v31 = v32;
  static AccessibilityTraits.isHeader.getter();
  sub_10010FC20(&unk_1011971F0);
  v22 = v8;
  sub_100020674(&qword_1011971E8, &unk_1011971F0);
  View.accessibilityAddTraits(_:)();
  (*(v5 + 8))(v7, v21);
  sub_10011895C(v20, v15, v16);

  sub_10003D17C(v11, a2, &qword_1011971E0);
  return (*(v9 + 56))(a2, 0, 1, v22);
}

uint64_t sub_1005B0AC0@<X0>(uint64_t a1@<X8>)
{
  MusicLibrary.name.getter();
  sub_100009838();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10011895C(v2, v4, v6 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v12 = Text.foregroundStyle<A>(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10011895C(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  v16 &= 1u;
  *(a1 + 16) = v16;
  *(a1 + 24) = v18;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_10021D0C0(v12, v14, v16);

  sub_10011895C(v12, v14, v16);
}

BOOL sub_1005B0C28()
{
  v1 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_10010FC20(&unk_101196F90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  if (!*(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision))
  {
    return 0;
  }

  RequestResponse.Revision.content.getter(v3);

  v8 = sub_10010FC20(&unk_10118D0A0);
  if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
  {
    sub_1000095E8(v3, &unk_10118D090);
    return 0;
  }

  (*(v5 + 16))(v7, v3, v4);
  sub_1000095E8(v3, &unk_10118D0A0);
  v10 = MusicLibrarySectionedResponse.totalItemCount.getter();
  (*(v5 + 8))(v7, v4);
  return v10 > 0;
}

uint64_t sub_1005B0E24@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityTraits();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011971E0);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - v11;
  if (a1)
  {
    v22 = v9;
    v13 = static VerticalAlignment.center.getter();
    sub_1005B10EC(&v23);
    v20 = v24;
    v21 = v23;
    v14 = v25;
    v15 = v26;
    v16 = v27;
    v34 = 1;
    v33 = v25;
    v32 = v28;
    v23 = v13;
    v24 = 0;
    v25 = 1;
    v26 = v21;
    v27 = v20;
    v28 = v33;
    v29 = v15;
    v30 = v16;
    v31 = v32;
    static AccessibilityTraits.isHeader.getter();
    sub_10010FC20(&unk_1011971F0);
    sub_100020674(&qword_1011971E8, &unk_1011971F0);
    View.accessibilityAddTraits(_:)();
    (*(v5 + 8))(v7, v4);
    sub_10011895C(v21, v20, v14);

    sub_10003D17C(v12, a2, &qword_1011971E0);
    return (*(v22 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v18 = *(v9 + 56);

    return v18(a2, 1, 1, v8, v10);
  }
}

uint64_t sub_1005B10EC@<X0>(uint64_t a1@<X8>)
{

  sub_1005B12BC();

  sub_100009838();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.title2.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10011895C(v2, v4, v6 & 1);

  static Font.Weight.semibold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  sub_10011895C(v7, v9, v11 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v17 = Text.foregroundStyle<A>(_:)();
  v19 = v18;
  LOBYTE(v9) = v20;
  v22 = v21;
  sub_10011895C(v12, v14, v16 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_10021D0C0(v17, v19, v9 & 1);

  sub_10011895C(v17, v19, v9 & 1);
}

uint64_t sub_1005B12BC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  sub_10049CB78();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

void sub_1005B13F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    dispatch thunk of InlineBubbleTipCell.configure(with:)();
  }
}

void sub_1005B1460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_1011970B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    __chkstk_darwin(Strong);
    v10[-2] = a3;
    _s10ImportViewVMa(0);
    sub_100029710(&qword_1011970B8, _s10ImportViewVMa);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v10[3] = v4;
    v10[4] = sub_100020674(&qword_1011970C0, &qword_1011970B0);
    sub_10001C8B8(v10);
    UIHostingConfiguration.margins(_:_:)();
    (*(v5 + 8))(v7, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

void sub_1005B1664(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MusicPin();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1005A5F8C();
    v11 = type metadata accessor for HIMetricsCollectionView();
    v27.receiver = v10;
    v27.super_class = v11;
    objc_msgSendSuper2(&v27, "frame");
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v28.origin.x = v13;
    v28.origin.y = v15;
    v28.size.width = v17;
    v28.size.height = v19;
    Width = CGRectGetWidth(v28);
    v21 = *(*&v9[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView] + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16);
    v22 = (Width - (v21 + v21) + -24.0) / 3.0;
    (*(v6 + 16))(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
    v23 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v9;
    (*(v6 + 32))(v24 + v23, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    *(v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
    v25 = v9;
    UICollectionViewCell.configurationUpdateHandler.setter();
    [a1 setZPosition:10.0];
  }
}

uint64_t sub_1005B1890(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&qword_1011970D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14[-v11];
  v15 = a4;
  v16 = a3;
  v17 = a5;
  v18 = a1;
  _s7PinCellVMa();
  sub_100029710(&qword_1011970D8, _s7PinCellVMa);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v19[3] = v9;
  v19[4] = sub_100020674(&unk_1011970E0, &qword_1011970D0);
  sub_10001C8B8(v19);
  UIHostingConfiguration.margins(_:_:)();
  (*(v10 + 8))(v12, v9);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_1005B1A64@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v41 = a2;
  v42 = type metadata accessor for MusicPin();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v42);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v40 - v10;
  v11 = type metadata accessor for UICellConfigurationState.DragState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v18 = a1;
  if (*(a1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext) & 1) != 0 && (UICellConfigurationState.cellDragState.getter(), (*(v12 + 104))(v14, enum case for UICellConfigurationState.DragState.none(_:), v11), v19 = static UICellConfigurationState.DragState.== infix(_:_:)(), v20 = *(v12 + 8), v20(v14, v11), v20(v17, v11), (v19))
  {
    v21 = swift_allocObject();
    v22 = a1;
    swift_unknownObjectWeakInit();
    v24 = v40;
    v23 = v41;
    v25 = v42;
    (*(v7 + 16))(v40, v41, v42);
    v26 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    (*(v7 + 32))(v27 + v26, v24, v25);
    v28 = v23;
    v29 = &unk_100ED5DD8;
    v30 = v43;
  }

  else
  {
    v29 = 0;
    v27 = 0;
    v25 = v42;
    v30 = v43;
    v22 = v18;
    v28 = v41;
  }

  (*(v7 + 16))(v30, v28, v25);
  v31 = sub_1005A5F8C();
  v32 = v31[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 24];

  if (v32)
  {
    v33 = 1;
  }

  else
  {
    v34 = [v22 traitCollection];
    v35 = [v34 userInterfaceIdiom];

    v33 = v35 == 6;
  }

  (*(v7 + 32))(a3, v30, v25);
  v36 = _s7PinCellVMa();
  *(a3 + v36[5]) = a4;
  *(a3 + v36[6]) = v33;
  v37 = (a3 + v36[7]);
  *v37 = v29;
  v37[1] = v27;
  v38 = v36[8];
  *(a3 + v38) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1005B1E40(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = type metadata accessor for MusicPin();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  type metadata accessor for Actions.MetricsReportingContext();
  v2[19] = swift_task_alloc();
  sub_10010FC20(&qword_101183A20);
  v2[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[22] = v5;
  v2[23] = v4;

  return _swift_task_switch(sub_1005B1F98, v5, v4);
}

uint64_t sub_1005B1F98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [v2 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v0[25] = v0[12];
    v4 = swift_task_alloc();
    v0[26] = v4;
    v5 = sub_100029710(&unk_1011970F0, &type metadata accessor for MusicPin);
    *v4 = v0;
    v4[1] = sub_1005B2130;
    v6 = v0[15];
    v7 = v0[16];

    return MusicLibrary.unpin<A>(_:)(v6, v7, v5);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1005B2130()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_1005B2470;
  }

  else
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_1005B224C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005B224C()
{
  v20 = v0[24];
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[16];

  sub_100029710(&qword_101197100, &type metadata accessor for MusicPin);
  v19 = MusicItem.metricsTargetIdentifier.getter(v3);
  v5 = v4;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_10010FC20(&qword_10118BE78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = MusicItem.metricsContentType.getter(v3);
  *(inited + 40) = v8;
  *(inited + 48) = 0;
  v9 = MetricsEvent.Click.ActionDetails.init(_:)(inited);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = BYTE1(v14);
  sub_1005A5B7C(v2);
  static Actions.reportClickEvent(targetIdentifier:targetType:actionType:actionURL:actionDetails:reportingContext:)(v19, v5, 16, 30, v1, v9, v11, v13, v15, v2);
  sub_100344B1C(v9, v11, v13, v15, v16);

  sub_1005C3434(v2, type metadata accessor for Actions.MetricsReportingContext);
  sub_1000095E8(v1, &qword_101183A20);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1005B2470()
{
  v25 = v0;
  v1 = v0[24];

  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, static Logger.libraryView);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[27];
  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[16];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v14 = 136315394;
    sub_100029710(&qword_10118BB00, &type metadata accessor for MusicPin);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000105AC(v15, v17, &v24);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[13] = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000105AC(v19, v20, &v24);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "Could not unpin item=%s error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[1];

  return v22();
}

void sub_1005B275C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_10010FC20(&qword_101197118);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v18 - v9;
  __chkstk_darwin(v11);
  v13 = v18 - v12;
  v14 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    __chkstk_darwin(Strong);
    LOBYTE(v18[-2]) = v14;
    sub_10010FC20(&qword_101197120);
    sub_1005C2CBC();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.leading.getter();

    UIHostingConfiguration.margins(_:_:)();
    v17 = *(v5 + 8);
    v17(v7, v4);
    static Edge.Set.trailing.getter();
    UIHostingConfiguration.margins(_:_:)();
    v17(v10, v4);
    static Edge.Set.vertical.getter();
    v18[3] = v4;
    v18[4] = sub_100020674(&qword_101197150, &qword_101197118);
    sub_10001C8B8(v18);
    UIHostingConfiguration.margins(_:_:)();
    v17(v13, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1005B2A1C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = sub_10010FC20(&unk_101197158);
  __chkstk_darwin(v49);
  v50 = &v39 - v3;
  v4 = type metadata accessor for SymbolEffectOptions();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PulseSymbolEffect();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v39 - v9;
  v53 = sub_10010FC20(&unk_101197138);
  __chkstk_darwin(v53);
  v52 = &v39 - v10;
  v48 = type metadata accessor for Font.TextStyle();
  v11 = *(v48 - 8);
  __chkstk_darwin(v48);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s8TextCellVMa(0);
  __chkstk_darwin(v14);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v47) = a1;
  v17 = Library.Menu.Identifier.symbolName(for:)(2, a1);
  v19 = v18;
  v20 = Library.Menu.Identifier.name(for:)();
  v22 = v21;
  v23 = UIFontTextStyleBody;
  static SymbolRenderingMode.monochrome.getter();
  *v16 = v17;
  v16[1] = v19;
  v16[2] = v20;
  v16[3] = v22;
  v16[4] = v23;
  v54 = 0x4040000000000000;
  v24 = *(v11 + 104);
  v25 = v48;
  v24(v13, enum case for Font.TextStyle.title(_:), v48);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v54 = 0x402E000000000000;
  v24(v13, enum case for Font.TextStyle.body(_:), v25);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v48 = v14;
  v26 = *(v14 + 40);
  *(v16 + v26) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  if (Library.Menu.Identifier.rawValue.getter(v47) == 0xD000000000000027 && 0x8000000100E3C2C0 == v27)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      sub_10003C9B0(v16, v50, _s8TextCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_1005C2D78();
      sub_100029710(&qword_10118DE90, _s8TextCellVMa);
      _ConditionalContent<>.init(storage:)();
      return sub_1005C3434(v16, _s8TextCellVMa);
    }
  }

  v29 = v40;
  PulseSymbolEffect.init()();
  v30 = v41;
  PulseSymbolEffect.wholeSymbol.getter();
  v31 = v43;
  v47 = *(v42 + 8);
  v47(v29, v43);
  v32 = v44;
  static SymbolEffectOptions.default.getter();
  v33 = v52 + *(v53 + 36);
  v34 = type metadata accessor for _IndefiniteSymbolEffectModifier();
  v36 = v45;
  v35 = v46;
  (*(v45 + 16))(v33 + *(v34 + 20), v32, v46);
  sub_100029710(&qword_101197168, &type metadata accessor for PulseSymbolEffect);
  dispatch thunk of SymbolEffect.configuration.getter();
  (*(v36 + 8))(v32, v35);
  v47(v30, v31);
  *(v33 + *(v34 + 24)) = 1;
  v37 = v52;
  sub_10003C9B0(v16, v52, _s8TextCellVMa);
  sub_1000089F8(v37, v50, &unk_101197138);
  swift_storeEnumTagMultiPayload();
  sub_1005C2D78();
  sub_100029710(&qword_10118DE90, _s8TextCellVMa);
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v37, &unk_101197138);
  return sub_1005C3434(v16, _s8TextCellVMa);
}

void sub_1005B30FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10010FC20(&qword_101197178);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v18[1] = a1;
    v14 = sub_1005A5F8C();
    v15 = v14[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    __chkstk_darwin(v16);
    LOBYTE(v18[-4]) = v15;
    v18[-3] = a3;
    v18[-2] = v13;
    sub_10010FC20(&qword_101197180);
    sub_1005C2E78();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();
    UIHostingConfiguration.margins(_:_:)();
    v17 = *(v6 + 8);
    v17(v8, v5);
    static Edge.Set.vertical.getter();
    v19[3] = v5;
    v19[4] = sub_100020674(&unk_1011971A0, &qword_101197178);
    sub_10001C8B8(v19);
    UIHostingConfiguration.margins(_:_:)();
    v17(v11, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1005B3390@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v33 = _s21RecentlyAddedGridCellVMa(0);
  __chkstk_darwin(v33);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10010FC20(&unk_1011A3DE0);
  v30 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v30 - v7;
  v31 = sub_10010FC20(&qword_1011971B0);
  __chkstk_darwin(v31);
  v10 = &v30 - v9;
  v11 = _s21RecentlyAddedListCellVMa(0);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10010FC20(&qword_1011971B8);
  v14 = *(v32 - 8);
  __chkstk_darwin(v32);
  v16 = &v30 - v15;
  v17 = type metadata accessor for RecentlyAddedMusicItem();
  v18 = *(*(v17 - 8) + 16);
  if (a1)
  {
    v18(v13, a2, v17);
    *&v13[*(v11 + 20)] = vdupq_n_s64(0x4050000000000000uLL);
    sub_100029710(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
    v19 = sub_100029710(&qword_101197190, _s21RecentlyAddedListCellVMa);

    View.artworkCaching(owner:)();

    sub_1005C3434(v13, _s21RecentlyAddedListCellVMa);
    v20 = v32;
    (*(v14 + 16))(v10, v16, v32);
    swift_storeEnumTagMultiPayload();
    v36 = v11;
    v37 = v19;
    swift_getOpaqueTypeConformance2();
    v21 = sub_100029710(&qword_101197198, _s21RecentlyAddedGridCellVMa);
    v36 = v33;
    v37 = v21;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v14 + 8))(v16, v20);
  }

  else
  {
    v18(v6, a2, v17);
    v23 = sub_1005A5F8C();
    v24 = *&v23[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

    v25 = v33;
    *&v6[*(v33 + 20)] = v24;
    sub_100029710(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
    v26 = sub_100029710(&qword_101197198, _s21RecentlyAddedGridCellVMa);

    View.artworkCaching(owner:)();

    sub_1005C3434(v6, _s21RecentlyAddedGridCellVMa);
    v27 = v30;
    v28 = v34;
    (*(v30 + 16))(v10, v8, v34);
    swift_storeEnumTagMultiPayload();
    v29 = sub_100029710(&qword_101197190, _s21RecentlyAddedListCellVMa);
    v36 = v11;
    v37 = v29;
    swift_getOpaqueTypeConformance2();
    v36 = v25;
    v37 = v26;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v27 + 8))(v8, v28);
  }
}

Swift::Int sub_1005B39C4(Swift::Int a1)
{
  v3 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryFilter;
  result = sub_100190474(a1, *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryFilter]);
  if ((result & 1) == 0)
  {
    sub_10049CB78(*&v1[v6]);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v8 = String._bridgeToObjectiveC()();

    [v1 setTitle:v8];

    v9 = String._bridgeToObjectiveC()();

    [v1 setPlayActivityFeatureName:v9];

    UIViewController.traitOverrides.getter();
    sub_100217F14();
    dispatch thunk of UIMutableTraits.subscript.setter();
    return UIViewController.traitOverrides.setter();
  }

  return result;
}

id sub_1005B3C58()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___accountBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___accountBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___accountBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_accountButton)];
    v5 = v0;
    v6 = UIBarButtonItem.plastify()();

    v7 = *(v5 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void *sub_1005B3CFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = Strong;
  sub_100009F78(0, &unk_1011845F0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v3.value = 0;
  isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v3, 0, sub_1005C3510, v2).super.super.isa;

  v5 = [(objc_class *)isa children];

  sub_100009F78(0, &qword_10118CDE0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void *sub_1005B3E38()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v2 = v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v6 - 8);
  v8 = (v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v9 - 8);
  v11 = v43 - v10;
  v12 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v12 - 8);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v17 = Strong;
    v43[1] = v5;
    v43[2] = v2;
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    sub_10003C9B0(&v17[OBJC_IVAR____TtC5Music25LibraryMainViewController_metricsPageProperties], v8, type metadata accessor for MetricsPageProperties);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(0x4D7972617262694CLL, 0xEB00000000756E65, 5, 44, v11, 0, 0, 12, v14, 0, 0, 0xFF00u, v8, 0);
    v19 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v20 = sub_10053771C();
    v22 = v21;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v23 = qword_101218AD0;
    v24 = GroupActivitiesManager.hasJoined.getter();
    v25 = GroupActivitiesManager.participantsCount.getter();
    v26 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v19) + 0xB8))(v14, v20, v22, v24 & 1, v25, *(v23 + v26));

    v44 = _swiftEmptyArrayStorage;
    v27 = sub_10044D0C4();
    if (v27)
    {
      v28 = v27;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v16 = v44;
    }

    v29 = sub_10059B3FC();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v29))
    {
      v30 = OBJC_IVAR____TtC5Music25LibraryMainViewController_availableEditingContexts;
      swift_beginAccess();
      if (sub_100042A50(1, *&v17[v30]))
      {
        sub_100009F78(0, &qword_1011839A0);
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v31 = String._bridgeToObjectiveC()();
        v32 = [objc_opt_self() systemImageNamed:v31];

        swift_allocObject();
        swift_unknownObjectWeakInit();
        v33 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v34 = String._bridgeToObjectiveC()();
        [v33 setAccessibilityIdentifier:v34];

        v35 = v33;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v16 = v44;
      }
    }

    v36 = OBJC_IVAR____TtC5Music25LibraryMainViewController_availableEditingContexts;
    swift_beginAccess();
    if (sub_100042A50(0, *&v17[v36]))
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v37 = String._bridgeToObjectiveC()();
      v38 = [objc_opt_self() systemImageNamed:v37];

      sub_100009F78(0, &qword_1011839A0);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v40 = String._bridgeToObjectiveC()();
      [v39 setAccessibilityIdentifier:v40];

      v41 = v39;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      sub_1005C3434(v14, type metadata accessor for MetricsEvent.Click);
      return v44;
    }

    else
    {
      sub_1005C3434(v14, type metadata accessor for MetricsEvent.Click);
    }
  }

  return v16;
}

uint64_t sub_1005B4690()
{
  v0 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v0 - 8);
  v2 = &v23[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v3 - 8);
  v5 = &v23[-v4];
  v6 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext);
    *(result + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext) = 1;
    if ((v11 & 1) == 0)
    {
      sub_1005AF920(1, 1);
    }

    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    sub_10003C9B0(v10 + OBJC_IVAR____TtC5Music25LibraryMainViewController_metricsPageProperties, v2, type metadata accessor for MetricsPageProperties);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(0x7262694C74696445, 0xEF736E6950797261, 5, 20, v5, 0, 0, 12, v8, 0, 0, 0xFF00u, v2, 0);
    v13 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v14 = sub_10053771C();
    v16 = v15;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v17 = qword_101218AD0;
    v18 = GroupActivitiesManager.hasJoined.getter();
    v19 = GroupActivitiesManager.participantsCount.getter();
    v20 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v13) + 0xB8))(v8, v14, v16, v18 & 1, v19, *(v17 + v20));

    if (([v10 isEditing] & 1) != 0 && UIAccessibilityIsVoiceOverRunning())
    {
      v21 = UIAccessibilityLayoutChangedNotification;
      v22 = [v10 editButtonItem];
      UIAccessibilityPostNotification(v21, v22);

      v10 = v22;
    }

    return sub_1005C3434(v8, type metadata accessor for MetricsEvent.Click);
  }

  return result;
}

void sub_1005B4A10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext);
    *(Strong + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext) = 0;
    if (v2 == 2 || (v2 & 1) != 0)
    {
      sub_1005AF920(1, 1);
    }
  }
}

uint64_t sub_1005B4A8C(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v6;
  *(v3 + 32) = a1[2];
  sub_1000089F8(a1, &v23, &qword_101196FA8);
  sub_100400B30(v4, v5);
  v7 = *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext);
  if (v7 != 2 && (v7 & 1) == 0)
  {
    v8 = *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController);
    if (*v3)
    {
      v9 = *(v3 + 16);
      v10 = *(v3 + 24);
      v11 = *(v3 + 32);
      v12 = *(v3 + 40);
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }

    swift_beginAccess();
    v14 = v8[2];
    v13 = v8[3];
    v15 = v8[5];
    v26 = v8[4];
    v27 = v15;
    v24 = v14;
    v25 = v13;
    v23 = v8[1];
    v16 = v26;
    sub_1003E1510(&v23, v18);
    sub_1005BF344(v16);
    v18[0] = v23;
    v18[1] = v24;
    v18[2] = v25;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    RequestResponse.Controller.request.setter(v18);
  }

  return sub_1000095E8(a1, &qword_101196FA8);
}

void (*sub_1005B4C3C(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC8uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
  *(v3 + 184) = v1;
  *(v3 + 192) = v4;
  swift_beginAccess();
  return sub_1005B4CC4;
}

void sub_1005B4CC4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[23];
    v5 = *(v4 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext);
    if (v5 != 2 && (v5 & 1) == 0)
    {
      v7 = (v4 + v3[24]);
      v8 = *(v4 + OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController);
      if (*v7)
      {
        v9 = v7[2];
        v10 = v7[3];
        v11 = v7[4];
        v12 = v7[5];
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
      }

      swift_beginAccess();
      v13 = v8[2];
      v14 = v8[3];
      v15 = v8[5];
      *(v3 + 3) = v8[4];
      *(v3 + 4) = v15;
      v16 = v8[1];
      *(v3 + 1) = v13;
      *(v3 + 2) = v14;
      *v3 = v16;
      v17 = v3[6];
      sub_1003E1510(v3, (v3 + 10));
      sub_1005BF344(v17);
      v18 = *(v3 + 1);
      *(v3 + 5) = *v3;
      *(v3 + 6) = v18;
      *(v3 + 7) = *(v3 + 2);
      v3[16] = v9;
      v3[17] = v10;
      v3[18] = v11;
      v3[19] = v12;
      RequestResponse.Controller.request.setter((v3 + 10));
    }
  }

  free(v3);
}

void sub_1005B4E14()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && *(v3 + 16))
  {
    v4 = OBJC_IVAR____TtC5Music25LibraryMainViewController_availableEditingContexts;
    swift_beginAccess();
    v13 = *(v1 + v4);

    sub_10003E5E0(&v15, 1);
    v5 = *(v1 + v4);
    *(v1 + v4) = v13;
    LOBYTE(v4) = sub_100190588(v13, v5);

    if (v4)
    {
      return;
    }

    v6 = sub_1005AA634();
    sub_100009F78(0, &unk_1011845F0);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v8 = sub_1005BF3A4;
  }

  else
  {
    v9 = OBJC_IVAR____TtC5Music25LibraryMainViewController_availableEditingContexts;
    swift_beginAccess();
    v14 = *(v1 + v9);

    sub_100195EF0(1);
    v10 = *(v1 + v9);
    *(v1 + v9) = v14;
    LOBYTE(v9) = sub_100190588(v14, v10);

    if (v9)
    {
      return;
    }

    v6 = sub_1005AA634();
    sub_100009F78(0, &unk_1011845F0);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v8 = sub_1005C3510;
  }

  v11.value = 0;
  isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v11, 0, v8, v7).super.super.isa;

  [v6 setMenu:isa];
}

void sub_1005B503C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011972A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-1] - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, a1, v2);
    sub_100020674(&qword_10118BF98, &unk_1011972A0);
    v8 = dispatch thunk of Sequence._copyToContiguousArray()();
    *&v7[OBJC_IVAR____TtC5Music25LibraryMainViewController_pinnedItems] = v8;

    sub_1005A9A58();
    v12[3] = sub_10010FC20(&qword_101196F88);
    v12[0] = v8;
    sub_1005BDE8C(v12, 1);

    if (qword_10117F678 != -1)
    {
      swift_once();
    }

    v9 = sub_10010BA00(&off_10109BC10);
    sub_1003C6340(v9);

    sub_100020674(&qword_1011972B0, &unk_1011972A0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v12[0] == v11)
    {
      v10 = v7[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext];
      if (v10 != 2 && (v10 & 1) != 0)
      {
        sub_1005AF920(0, 1);
      }
    }
  }
}

void sub_1005B52B4(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void (*a6)(uint64_t), uint64_t a7)
{
  LODWORD(v10) = a5;
  v299 = a4;
  v287 = a2;
  v293 = a1;
  v11 = a3[1];
  v267 = *a3;
  v266 = v11;
  v12 = a3[3];
  v265 = a3[2];
  v264 = v12;
  v263 = a3[4];
  v294 = a3;
  v262 = a3[5];
  v285 = sub_10010FC20(&unk_101196F90);
  v13 = *(v285 - 8);
  __chkstk_darwin(v285);
  v300 = (&v236 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v236 - v16;
  __chkstk_darwin(v18);
  v20 = &v236 - v19;
  __chkstk_darwin(v21);
  v23 = (&v236 - v22);
  __chkstk_darwin(v24);
  v248 = &v236 - v25;
  v26 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v26 - 8);
  v28 = &v236 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v244 = &v236 - v30;
  __chkstk_darwin(v31);
  v252 = &v236 - v32;
  __chkstk_darwin(v33);
  v261 = &v236 - v34;
  v35 = sub_10010FC20(&qword_101196FA0);
  v284 = *(v35 - 8);
  v36 = *(v284 + 64);
  __chkstk_darwin(v35 - 8);
  v245 = &v236 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v246 = &v236 - v38;
  __chkstk_darwin(v39);
  v275 = &v236 - v40;
  __chkstk_darwin(v41);
  v283 = &v236 - v42;
  __chkstk_darwin(v43);
  v295 = &v236 - v44;
  v45 = type metadata accessor for AIDiffingUpdate();
  v288 = *(v45 - 8);
  __chkstk_darwin(v45 - 8);
  v250 = &v236 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v249 = &v236 - v48;
  __chkstk_darwin(v49);
  v292 = &v236 - v50;
  __chkstk_darwin(v51);
  v291 = &v236 - v52;
  __chkstk_darwin(v53);
  v255 = &v236 - v54;
  __chkstk_darwin(v55);
  v254 = &v236 - v56;
  __chkstk_darwin(v57);
  v273 = &v236 - v58;
  __chkstk_darwin(v59);
  v272 = &v236 - v60;
  v61 = sub_10010FC20(&unk_1011A4B90);
  v282 = *(v61 - 8);
  __chkstk_darwin(v61 - 8);
  v258 = &v236 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v260 = &v236 - v64;
  __chkstk_darwin(v65);
  v281 = &v236 - v66;
  v259 = v67;
  __chkstk_darwin(v68);
  v280 = &v236 - v69;
  v290 = type metadata accessor for LibraryImport.ViewModel(0);
  v286 = *(v290 - 8);
  __chkstk_darwin(v290);
  v279 = &v236 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v278 = &v236 - v72;
  __chkstk_darwin(v73);
  v277 = &v236 - v74;
  __chkstk_darwin(v75);
  v276 = &v236 - v76;
  v301 = v7;
  if (v7[OBJC_IVAR____TtC5Music25LibraryMainViewController_allowsAnimatedChanges] != 1)
  {
    if (qword_10117F750 != -1)
    {
      swift_once();
    }

    v203 = type metadata accessor for Logger();
    sub_1000060E4(v203, static Logger.libraryView);
    v204 = Logger.logObject.getter();
    v205 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v204, v205))
    {
      v206 = swift_slowAlloc();
      *v206 = 0;
      _os_log_impl(&_mh_execute_header, v204, v205, "[LibraryMainViewController] [non-animated] Applying updates", v206, 2u);
    }

    v207 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
    v208 = v301;
    swift_beginAccess();
    sub_10054EB04(v293, &v208[v207]);
    swift_endAccess();
    v209 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
    swift_beginAccess();
    *&v208[v209] = v287;

    sub_1005B4E14();
    v210 = v294;
    sub_1000089F8(v294, v304, &qword_101196FA8);
    sub_1005B4A8C(v210);
    v211 = v299;
    if (v299)
    {

      RequestResponse.Revision.content.getter(v28);
      v212 = sub_10010FC20(&unk_10118D0A0);
      if ((*(*(v212 - 8) + 48))(v28, 1, v212) == 1)
      {

        sub_1000095E8(v28, &unk_10118D090);
      }

      else
      {
        v217 = v13[2];
        v218 = v20;
        v219 = v285;
        v217(v17, v28, v285);
        sub_1000095E8(v28, &unk_10118D0A0);
        (v13[4])(v218, v17, v219);
        v220 = v300;
        v221 = v218;
        v217(v300, v218, v219);

        v222 = Logger.logObject.getter();
        v223 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v222, v223))
        {
          v224 = swift_slowAlloc();
          *v224 = 134218240;
          *(v224 + 4) = *(v211 + *(*v211 + 112));

          *(v224 + 12) = 2048;
          v225 = MusicLibrarySectionedResponse.totalItemCount.getter();
          v226 = v13[1];
          v226(v220, v219);
          *(v224 + 14) = v225;
          _os_log_impl(&_mh_execute_header, v222, v223, "[LibraryMainViewController] [non-animated path] applying new revision with ID %ld and count %ld", v224, 0x16u);

          v226(v221, v219);
        }

        else
        {
          v227 = v13[1];
          v227(v220, v219);

          v227(v218, v219);
        }
      }
    }

    v228 = v301;
    *&v301[OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision] = v211;

    v229 = *&v228[OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController];
    if (v211)
    {
      v230 = sub_10010FC20(&qword_101196F80);
      v231 = v211;
    }

    else
    {
      v231 = 0;
      v230 = 0;
      v304[1] = 0;
      v304[2] = 0;
    }

    v304[0] = v231;
    v304[3] = v230;
    v232 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
    swift_beginAccess();

    sub_10006B010(v304, v229 + v232, &unk_101183F30);
    swift_endAccess();
    v233 = sub_1005A5F8C();
    [v233 reloadData];

    return;
  }

  v242 = a6;
  v243 = a7;
  if (qword_10117F750 != -1)
  {
    goto LABEL_120;
  }

LABEL_3:
  v241 = v10;
  v77 = type metadata accessor for Logger();
  sub_1000060E4(v77, static Logger.libraryView);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  v80 = os_log_type_enabled(v78, v79);
  v240 = v23;
  if (v80)
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&_mh_execute_header, v78, v79, "[LibraryMainViewController] [animated] Applying updates", v81, 2u);
  }

  v298 = sub_10059B3FC();
  v82 = (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v298) & 1) == 0;
  v83 = &unk_10109BB08;
  if (!v82)
  {
    v83 = &unk_10109BAE0;
  }

  v84 = *v83;

  v297 = v84;
  if (v84)
  {
    v247 = OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision;
    v85 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
    v86 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
    v270 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
    swift_beginAccess();
    v253 = v86;
    swift_beginAccess();
    v271 = v85;
    swift_beginAccess();
    v87 = 0;
    v251 = (v13 + 2);
    v269 = (v13 + 7);
    v274 = (v13 + 6);
    v257 = (v13 + 1);
    v268 = v36 + 7;
    v289 = (v286 + 48);
    v256 = v259 + 7;
    v13 = &off_10109BC60;
    v300 = _swiftEmptyArrayStorage;
    v23 = _swiftEmptyArrayStorage;
    v36 = v299;
    while (1)
    {
      v90 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v298);
      if (v90)
      {
        v91 = &off_10109BC38;
      }

      else
      {
        v91 = &off_10109BC60;
      }

      if (v87 >= v91[2])
      {
        __break(1u);
LABEL_120:
        swift_once();
        goto LABEL_3;
      }

      v92 = &unk_10109BC80;
      if (v90)
      {
        v92 = &unk_10109BC58;
      }

      v93 = *(v87 + v92);

      if (v93 > 1)
      {
        v296 = v23;
        if (v93 == 2)
        {
          v97 = *&v301[v271];
          if (v97)
          {
          }

          else
          {
            v97 = _swiftEmptyArrayStorage;
          }

          v146 = v294;
          v147 = *v294;
          if (*v294)
          {
            v149 = v294[4];
            v148 = v294[5];
            v151 = v294[2];
            v150 = v294[3];
            v152 = v294[1];

            v153 = v266;

            v146 = v294;
            v308 = v151;
            sub_1000095E8(&v308, &qword_10118DFB8);
            v307 = v150;
            sub_1000095E8(&v307, &qword_101196FE0);
            v306 = v149;
            sub_1000095E8(&v306, &qword_10118DFB8);
            v305 = v148;
            sub_1000095E8(&v305, &qword_101196FE0);
          }

          else
          {
            v147 = _swiftEmptyArrayStorage;
          }

          v155 = v301;
          v156 = sub_1005A5F8C();
          v302 = v147;
          v303 = v97;
          v157 = swift_allocObject();
          *(v157 + 16) = v155;
          v158 = v146[1];
          *(v157 + 24) = *v146;
          *(v157 + 40) = v158;
          *(v157 + 56) = v146[2];
          v159 = v155;
          sub_1000089F8(v146, v304, &qword_101196FA8);
          v10 = sub_10010FC20(&qword_10118DFB8);
          sub_100020674(&qword_101196FD0, &qword_10118DFB8);
          sub_1005BF174();
          v160 = v291;
          UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(&v303, &v302, v87, sub_1005BF124, v157, 0, 0, 0, v291, 0, v10);

          sub_10003C9B0(v160, v292, type metadata accessor for AIDiffingUpdate);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v300 = sub_10049A5D0(0, v300[2] + 1, 1, v300);
          }

          v36 = v299;
          v13 = &off_10109BC60;
          v162 = v300[2];
          v161 = v300[3];
          v23 = v296;
          if (v162 >= v161 >> 1)
          {
            v300 = sub_10049A5D0(v161 > 1, v162 + 1, 1, v300);
          }

          sub_1005C3434(v291, type metadata accessor for AIDiffingUpdate);
          v163 = v300;
          v300[2] = v162 + 1;
          v110 = v163 + ((*(v288 + 80) + 32) & ~*(v288 + 80)) + *(v288 + 72) * v162;
          v111 = &v309;
          goto LABEL_76;
        }

        if (v36)
        {
          v112 = v261;
          RequestResponse.Revision.content.getter(v261);
          v113 = sub_10010FC20(&unk_10118D0A0);
          if ((*(*(v113 - 8) + 48))(v112, 1, v113) == 1)
          {
            sub_1000095E8(v112, &unk_10118D090);
            v114 = 1;
            v115 = v285;
          }

          else
          {
            v115 = v285;
            (*v251)(v295, v112, v285);
            sub_1000095E8(v112, &unk_10118D0A0);
            v114 = 0;
          }

          v154 = v283;
        }

        else
        {
          v114 = 1;
          v115 = v285;
          v154 = v283;
        }

        v164 = v295;
        (*v269)(v295, v114, 1, v115);
        sub_1000089F8(v164, v154, &qword_101196FA0);
        v165 = *v274;
        v166 = (*v274)(v154, 1, v115);
        v23 = v296;
        if (v166 == 1)
        {
          sub_1000095E8(v154, &qword_101196FA0);
        }

        else
        {
          v167 = v154;
          v168 = MusicLibrarySectionedResponse.totalItemCount.getter();
          v169 = *v257;
          (*v257)(v167, v115);
          if (v168 && *&v301[v247])
          {

            v170 = v252;
            RequestResponse.Revision.content.getter(v252);
            v171 = v170;

            v172 = sub_10010FC20(&unk_10118D0A0);
            v173 = *(*(v172 - 8) + 48);
            if (v173(v171, 1, v172) == 1)
            {
              sub_1000095E8(v171, &unk_10118D090);
              v23 = v296;
            }

            else
            {
              v239 = v173;
              v174 = v171;
              v175 = v248;
              v237 = *v251;
              v237(v248, v174, v115);
              sub_1000095E8(v174, &unk_10118D0A0);
              v176 = MusicLibrarySectionedResponse.totalItemCount.getter();
              v169(v175, v115);
              v23 = v296;
              if (v176)
              {
                v177 = v301;
                v238 = sub_1005A5F8C();
                if (!*&v177[v247])
                {
                  goto LABEL_89;
                }

                v178 = v244;
                RequestResponse.Revision.content.getter(v244);

                if (v239(v178, 1, v172) == 1)
                {
                  sub_1000095E8(v178, &unk_10118D090);
LABEL_89:
                  v179 = _swiftEmptyArrayStorage;
                  v180 = _swiftEmptyArrayStorage;
                  v181 = v246;
                }

                else
                {
                  v189 = v240;
                  v237(v240, v178, v115);
                  sub_1000095E8(v178, &unk_10118D0A0);
                  v180 = MusicLibrarySectionedResponse.sections.getter();
                  v169(v189, v115);
                  v181 = v246;
                  v179 = _swiftEmptyArrayStorage;
                }

                sub_1000089F8(v295, v181, &qword_101196FA0);
                if (v165(v181, 1, v115) == 1)
                {
                  sub_1000095E8(v181, &qword_101196FA0);
                }

                else
                {
                  v179 = MusicLibrarySectionedResponse.sections.getter();
                  v169(v181, v115);
                }

                v190 = v245;
                sub_1000089F8(v295, v245, &qword_101196FA0);
                v191 = (*(v284 + 80) + 24) & ~*(v284 + 80);
                v192 = (v268 + v191) & 0xFFFFFFFFFFFFFFF8;
                v193 = swift_allocObject();
                v194 = v299;
                *(v193 + 16) = v299;
                sub_10003D17C(v190, v193 + v191, &qword_101196FA0);
                v195 = v301;
                *(v193 + v192) = v301;
                v36 = v194;
                v196 = v195;

                v197 = sub_10010FC20(&unk_101196FB0);
                v198 = sub_1005BF070();
                v235 = v197;
                v10 = v249;
                v199 = v238;
                UICollectionView.calculateAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v180, v179, v87, 0, 1, sub_1005BEFD4, v193, sub_1005B929C, v249, 0, sub_10011F028, 0, v235, v198);

                sub_10003C9B0(v10, v250, type metadata accessor for AIDiffingUpdate);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v300 = sub_10049A5D0(0, v300[2] + 1, 1, v300);
                }

                v13 = &off_10109BC60;
                v201 = v300[2];
                v200 = v300[3];
                if (v201 >= v200 >> 1)
                {
                  v300 = sub_10049A5D0(v200 > 1, v201 + 1, 1, v300);
                }

                sub_1005C3434(v249, type metadata accessor for AIDiffingUpdate);
                sub_1000095E8(v295, &qword_101196FA0);
                v202 = v300;
                v300[2] = v201 + 1;
                v110 = v202 + ((*(v288 + 80) + 32) & ~*(v288 + 80)) + *(v288 + 72) * v201;
                v111 = &v282;
                goto LABEL_76;
              }
            }
          }
        }

        v182 = v275;
        sub_1000089F8(v295, v275, &qword_101196FA0);
        v183 = (*(v284 + 80) + 24) & ~*(v284 + 80);
        v184 = (v268 + v183) & 0xFFFFFFFFFFFFFFF8;
        v185 = (v184 + 15) & 0xFFFFFFFFFFFFFFF8;
        v116 = swift_allocObject();
        v116[2] = v299;
        sub_10003D17C(v182, v116 + v183, &qword_101196FA0);
        v186 = v301;
        *(v116 + v184) = v301;
        v36 = v299;
        *(v116 + v185) = v87;
        v187 = v186;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_10006429C(0, v23[2] + 1, 1, v23);
        }

        v13 = &off_10109BC60;
        v10 = v23[2];
        v188 = v23[3];
        if (v10 >= v188 >> 1)
        {
          v23 = sub_10006429C((v188 > 1), v10 + 1, 1, v23);
        }

        sub_1000095E8(v295, &qword_101196FA0);
        v23[2] = v10 + 1;
        v88 = &v23[2 * v10];
        v89 = sub_1005BEF14;
      }

      else
      {
        if (!v93)
        {
          v94 = v280;
          sub_1000089F8(&v301[v270], v280, &unk_1011A4B90);
          v95 = *v289;
          if ((*v289)(v94, 1, v290) == 1)
          {
            sub_1000095E8(v94, &unk_1011A4B90);
            v96 = _swiftEmptyArrayStorage;
          }

          else
          {
            v120 = v94;
            v121 = v276;
            sub_1005C29E8(v120, v276, type metadata accessor for LibraryImport.ViewModel);
            sub_10003C9B0(v121, v277, type metadata accessor for LibraryImport.ViewModel);
            v96 = sub_10049A9EC(0, 1, 1, _swiftEmptyArrayStorage);
            v123 = v96[2];
            v122 = v96[3];
            if (v123 >= v122 >> 1)
            {
              v96 = sub_10049A9EC(v122 > 1, v123 + 1, 1, v96);
            }

            sub_1005C3434(v276, type metadata accessor for LibraryImport.ViewModel);
            v96[2] = v123 + 1;
            sub_1005C29E8(v277, v96 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v123, type metadata accessor for LibraryImport.ViewModel);
          }

          v124 = v281;
          sub_1000089F8(v293, v281, &unk_1011A4B90);
          if (v95(v124, 1, v290) == 1)
          {
            sub_1000095E8(v124, &unk_1011A4B90);
            v125 = _swiftEmptyArrayStorage;
            if (!v96[2])
            {
              goto LABEL_60;
            }

LABEL_54:
            if (!v125[2])
            {
              goto LABEL_60;
            }

            v130 = sub_1005A5F8C();
            v304[0] = v96;
            v303 = v125;
            v131 = v258;
            sub_1000089F8(v293, v258, &unk_1011A4B90);
            v132 = (*(v282 + 80) + 24) & ~*(v282 + 80);
            v133 = swift_allocObject();
            *(v133 + 16) = v301;
            sub_10003D17C(v131, v133 + v132, &unk_1011A4B90);
            v134 = v301;

            v135 = sub_10010FC20(&qword_101196FF8);
            sub_100020674(&qword_101197000, &qword_101196FF8);
            sub_100029710(&qword_101197008, type metadata accessor for LibraryImport.ViewModel);
            v10 = v272;
            UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v304, &v303, v87, sub_1005BF228, v133, sub_1005B7B00, 0, sub_10054CE34, v272, 0, v135);

            sub_10003C9B0(v10, v273, type metadata accessor for AIDiffingUpdate);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v300 = sub_10049A5D0(0, v300[2] + 1, 1, v300);
            }

            v36 = v299;
            v137 = v300[2];
            v136 = v300[3];
            if (v137 >= v136 >> 1)
            {
              v300 = sub_10049A5D0(v136 > 1, v137 + 1, 1, v300);
            }

            sub_1005C3434(v272, type metadata accessor for AIDiffingUpdate);
            v138 = v300;
            v300[2] = v137 + 1;
            sub_1005C29E8(v273, v138 + ((*(v288 + 80) + 32) & ~*(v288 + 80)) + *(v288 + 72) * v137, type metadata accessor for AIDiffingUpdate);
          }

          else
          {
            v126 = v124;
            v127 = v278;
            sub_1005C29E8(v126, v278, type metadata accessor for LibraryImport.ViewModel);
            sub_10003C9B0(v127, v279, type metadata accessor for LibraryImport.ViewModel);
            v125 = sub_10049A9EC(0, 1, 1, _swiftEmptyArrayStorage);
            v129 = v125[2];
            v128 = v125[3];
            if (v129 >= v128 >> 1)
            {
              v125 = sub_10049A9EC(v128 > 1, v129 + 1, 1, v125);
            }

            sub_1005C3434(v278, type metadata accessor for LibraryImport.ViewModel);
            v125[2] = v129 + 1;
            sub_1005C29E8(v279, v125 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v129, type metadata accessor for LibraryImport.ViewModel);
            if (v96[2])
            {
              goto LABEL_54;
            }

LABEL_60:

            v139 = v260;
            sub_1000089F8(v293, v260, &unk_1011A4B90);
            v140 = (*(v282 + 80) + 24) & ~*(v282 + 80);
            v141 = (v256 + v140) & 0xFFFFFFFFFFFFFFF8;
            v142 = swift_allocObject();
            *(v142 + 16) = v301;
            sub_10003D17C(v139, v142 + v140, &unk_1011A4B90);
            *(v142 + v141) = v87;
            v143 = v301;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_10006429C(0, v23[2] + 1, 1, v23);
            }

            v36 = v299;
            v10 = v23[2];
            v144 = v23[3];
            if (v10 >= v144 >> 1)
            {
              v23 = sub_10006429C((v144 > 1), v10 + 1, 1, v23);
            }

            v23[2] = v10 + 1;
            v145 = &v23[2 * v10];
            v145[4] = sub_1005BF298;
            v145[5] = v142;
          }

          v13 = &off_10109BC60;
          goto LABEL_11;
        }

        v98 = v287;
        if (v287)
        {
          if (v287[2])
          {
            v99 = *&v301[v253];
            if (v99)
            {
              if (*(v99 + 16))
              {
                v100 = v301;
                v101 = v287;
                v102 = sub_1005A5F8C();
                if (*&v100[v253])
                {
                  v103 = *&v100[v253];
                }

                else
                {
                  v103 = _swiftEmptyArrayStorage;
                }

                v304[0] = v103;
                v303 = v98;
                v104 = swift_allocObject();
                *(v104 + 16) = v100;
                *(v104 + 24) = v101;
                swift_bridgeObjectRetain_n();
                v105 = v100;

                v106 = sub_10010FC20(&qword_101196F88);
                sub_100020674(&qword_101196FE8, &qword_101196F88);
                sub_100029710(&qword_101196FF0, &type metadata accessor for MusicPin);
                v234 = v106;
                v10 = v254;
                UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v304, &v303, v87, sub_1005BF220, v104, sub_1002940EC, 0, sub_1005B7F38, v254, 0, v234);

                sub_10003C9B0(v10, v255, type metadata accessor for AIDiffingUpdate);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v300 = sub_10049A5D0(0, v300[2] + 1, 1, v300);
                }

                v108 = v300[2];
                v107 = v300[3];
                v13 = &off_10109BC60;
                v36 = v299;
                if (v108 >= v107 >> 1)
                {
                  v300 = sub_10049A5D0(v107 > 1, v108 + 1, 1, v300);
                }

                sub_1005C3434(v254, type metadata accessor for AIDiffingUpdate);
                v109 = v300;
                v300[2] = v108 + 1;
                v110 = v109 + ((*(v288 + 80) + 32) & ~*(v288 + 80)) + *(v288 + 72) * v108;
                v111 = &v287;
LABEL_76:
                sub_1005C29E8(*(v111 - 32), v110, type metadata accessor for AIDiffingUpdate);
                goto LABEL_11;
              }
            }
          }
        }

        v116 = swift_allocObject();
        v117 = v301;
        v116[2] = v301;
        v116[3] = v98;
        v116[4] = v87;
        v118 = v117;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_10006429C(0, v23[2] + 1, 1, v23);
        }

        v10 = v23[2];
        v119 = v23[3];
        if (v10 >= v119 >> 1)
        {
          v23 = sub_10006429C((v119 > 1), v10 + 1, 1, v23);
        }

        v23[2] = v10 + 1;
        v88 = &v23[2 * v10];
        v89 = sub_1005BF1C8;
      }

      v88[4] = v89;
      v88[5] = v116;
LABEL_11:
      v87 = (v87 + 1);
      if (v297 == v87)
      {
        goto LABEL_111;
      }
    }
  }

  v300 = _swiftEmptyArrayStorage;
  v23 = _swiftEmptyArrayStorage;
LABEL_111:
  v213 = v301;
  v214 = sub_1005A5F8C();
  v215 = swift_allocObject();
  *(v215 + 16) = v23;
  *(v215 + 24) = v213;
  v216 = v213;
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v300, v241 & 1, sub_1005BEFCC, v215, v242, v243);
}

void sub_1005B788C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
  swift_beginAccess();
  sub_10054EB04(a2, a1 + v10);
  swift_endAccess();
  v11 = sub_1005A5F8C();
  sub_10010FC20(&unk_101191400);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100EBC6B0;
  *(v12 + 32) = a3;
  v16[1] = v12;
  sub_100029710(&unk_10118A630, &type metadata accessor for IndexSet);
  sub_10010FC20(&unk_101191410);
  sub_100020674(&unk_10118A640, &unk_101191410);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v13);
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  [v11 reloadSections:v15];
}

uint64_t sub_1005B7A9C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
  swift_beginAccess();
  sub_10054EB04(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1005B7B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  sub_10003C9B0(a1, &v19 - v8, type metadata accessor for LibraryImport.ViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1005C3434(v9, type metadata accessor for LibraryImport.ViewModel);
  sub_10003C9B0(a2, v6, type metadata accessor for LibraryImport.ViewModel);
  v11 = swift_getEnumCaseMultiPayload();
  sub_1005C3434(v6, type metadata accessor for LibraryImport.ViewModel);
  if (EnumCaseMultiPayload >= 2)
  {
    v12 = 0x7542656E696C6E69;
  }

  else
  {
    v12 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload >= 2)
  {
    v13 = 0xEF706954656C6262;
  }

  else
  {
    v13 = 0x8000000100E51400;
  }

  if (v11 >= 2)
  {
    v14 = 0x7542656E696C6E69;
  }

  else
  {
    v14 = 0xD000000000000011;
  }

  if (v11 >= 2)
  {
    v15 = 0xEF706954656C6262;
  }

  else
  {
    v15 = 0x8000000100E51400;
  }

  if (v12 == v14 && v13 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

void sub_1005B7CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
  swift_beginAccess();
  *(a1 + v10) = a2;

  sub_1005B4E14();
  v11 = sub_1005A5F8C();
  sub_10010FC20(&unk_101191400);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100EBC6B0;
  *(v12 + 32) = a3;
  v16 = v12;
  sub_100029710(&unk_10118A630, &type metadata accessor for IndexSet);
  sub_10010FC20(&unk_101191410);
  sub_100020674(&unk_10118A640, &unk_101191410);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v13);
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  [v11 reloadSections:v15];
}

void sub_1005B7ECC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
  swift_beginAccess();
  *(a1 + v4) = a2;

  sub_1005B4E14();
}

uint64_t sub_1005B7F38(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v3 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v3 - 8);
  v76 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v74 = &v72 - v6;
  v7 = type metadata accessor for MusicPin.Item();
  v87 = *(v7 - 8);
  v88 = v7;
  __chkstk_darwin(v7);
  v80 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v77 = &v72 - v10;
  v11 = type metadata accessor for Artist();
  v78 = *(v11 - 8);
  v79 = v11;
  __chkstk_darwin(v11);
  v75 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v73 = &v72 - v14;
  v15 = type metadata accessor for MusicPin.Action();
  v84 = *(v15 - 8);
  v85 = v15;
  __chkstk_darwin(v15);
  v83 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v82 = &v72 - v18;
  v19 = type metadata accessor for Artwork();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v81 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&unk_101191420);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v72 - v24;
  v26 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v26 - 8);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v72 - v30;
  __chkstk_darwin(v32);
  v34 = &v72 - v33;
  v86 = a1;
  MusicPin.artwork.getter();
  MusicPin.artwork.getter();
  v35 = *(v23 + 56);
  sub_1000089F8(v34, v25, &unk_101188920);
  sub_1000089F8(v31, &v25[v35], &unk_101188920);
  v36 = *(v20 + 48);
  if (v36(v25, 1, v19) == 1)
  {
    sub_1000095E8(v31, &unk_101188920);
    sub_1000095E8(v34, &unk_101188920);
    if (v36(&v25[v35], 1, v19) == 1)
    {
      sub_1000095E8(v25, &unk_101188920);
      goto LABEL_8;
    }

LABEL_6:
    sub_1000095E8(v25, &unk_101191420);
    return 0;
  }

  sub_1000089F8(v25, v28, &unk_101188920);
  if (v36(&v25[v35], 1, v19) == 1)
  {
    sub_1000095E8(v31, &unk_101188920);
    sub_1000095E8(v34, &unk_101188920);
    (*(v20 + 8))(v28, v19);
    goto LABEL_6;
  }

  v38 = v81;
  (*(v20 + 32))(v81, &v25[v35], v19);
  sub_100029710(&unk_10118D3D0, &type metadata accessor for Artwork);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v20 + 8);
  v40(v38, v19);
  sub_1000095E8(v31, &unk_101188920);
  sub_1000095E8(v34, &unk_101188920);
  v40(v28, v19);
  sub_1000095E8(v25, &unk_101188920);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v41 = MusicPin.title.getter();
  v43 = v42;
  if (v41 == MusicPin.title.getter() && v43 == v44)
  {

    v46 = v87;
    v45 = v88;
    goto LABEL_12;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v46 = v87;
  v45 = v88;
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v48 = v82;
  MusicPin.action.getter();
  v49 = v83;
  MusicPin.action.getter();
  v50 = static MusicPin.Action.== infix(_:_:)();
  v51 = *(v84 + 8);
  v52 = v49;
  v53 = v85;
  v51(v52, v85);
  v51(v48, v53);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

  v54 = v77;
  MusicPin.item.getter();
  v55 = *(v46 + 88);
  v56 = v55(v54, v45);
  v57 = enum case for MusicPin.Item.artist(_:);
  if (v56 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v46 + 96))(v54, v45);
    v58 = v78;
    v59 = v73;
    v60 = v54;
    v61 = v79;
    (*(v78 + 32))(v73, v60, v79);
    v62 = v74;
    Artist.libraryAddedDate.getter();
    (*(v58 + 8))(v59, v61);
    v63 = type metadata accessor for Date();
    v64 = (*(*(v63 - 8) + 48))(v62, 1, v63) == 1;
    sub_1000095E8(v62, &qword_101188C20);
  }

  else
  {
    (*(v46 + 8))(v54, v45);
    v64 = 0;
  }

  v65 = v80;
  MusicPin.item.getter();
  if (v55(v65, v45) == v57)
  {
    (*(v46 + 96))(v65, v45);
    v67 = v78;
    v66 = v79;
    v68 = v75;
    (*(v78 + 32))(v75, v65, v79);
    v69 = v76;
    Artist.libraryAddedDate.getter();
    (*(v67 + 8))(v68, v66);
    v70 = type metadata accessor for Date();
    v71 = (*(*(v70 - 8) + 48))(v69, 1, v70) == 1;
    sub_1000095E8(v69, &qword_101188C20);
  }

  else
  {
    (*(v46 + 8))(v65, v45);
    v71 = 0;
  }

  return v64 ^ v71 ^ 1u;
}

void sub_1005B88C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v7 = type metadata accessor for IndexSet();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_101196FA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_10010FC20(&unk_101196F90);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  if (a1)
  {
    sub_1000089F8(a2, v12, &qword_101196FA0);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1000095E8(v12, &qword_101196FA0);
    }

    else
    {
      (*(v14 + 32))(v19, v12, v13);
      v20 = qword_10117F750;

      if (v20 != -1)
      {
        swift_once();
      }

      v43 = v7;
      v21 = type metadata accessor for Logger();
      sub_1000060E4(v21, static Logger.libraryView);
      (*(v14 + 16))(v16, v19, v13);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v42 = v22;
        v25 = v24;
        *v24 = 134218240;
        *(v24 + 4) = *(a1 + *(*a1 + 112));

        *(v25 + 12) = 2048;
        v40 = MusicLibrarySectionedResponse.totalItemCount.getter();
        v41 = v23;
        v26 = *(v14 + 8);
        v26(v16, v13);
        v27 = v26;
        *(v25 + 14) = v40;
        v28 = v42;
        _os_log_impl(&_mh_execute_header, v42, v41, "[LibraryMainViewController] applying new revision with ID %ld and count %ld", v25, 0x16u);
      }

      else
      {
        v29 = *(v14 + 8);
        v29(v16, v13);
        v27 = v29;
      }

      v27(v19, v13);
      v7 = v43;
    }
  }

  *(a3 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision) = a1;

  v30 = *(a3 + OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController);
  if (a1)
  {
    v31 = sub_10010FC20(&qword_101196F80);
    v32 = a1;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v46[1] = 0;
    v46[2] = 0;
  }

  v46[0] = v32;
  v46[3] = v31;
  v33 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();

  sub_10006B010(v46, v30 + v33, &unk_101183F30);
  swift_endAccess();
  v34 = sub_1005A5F8C();
  sub_10010FC20(&unk_101191400);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100EBC6B0;
  *(v35 + 32) = v44;
  v46[0] = v35;
  sub_100029710(&unk_10118A630, &type metadata accessor for IndexSet);
  sub_10010FC20(&unk_101191410);
  sub_100020674(&unk_10118A640, &unk_101191410);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v36);
  v38 = v37;
  (*(v45 + 8))(v9, v7);
  [v34 reloadSections:v38];
}

uint64_t sub_1005B8E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_101196FA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_10010FC20(&unk_101196F90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  if (a1)
  {
    sub_1000089F8(a2, v8, &qword_101196FA0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1000095E8(v8, &qword_101196FA0);
    }

    else
    {
      (*(v10 + 32))(v15, v8, v9);
      v16 = qword_10117F750;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000060E4(v17, static Logger.libraryView);
      (*(v10 + 16))(v12, v15, v9);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v31 = v18;
        v21 = v20;
        *v20 = 134218240;
        *(v20 + 4) = *(a1 + *(*a1 + 112));

        *(v21 + 12) = 2048;
        v30 = MusicLibrarySectionedResponse.totalItemCount.getter();
        v22 = *(v10 + 8);
        v22(v12, v9);
        v23 = v31;
        *(v21 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v23, v19, "[LibraryMainViewController] applying new revision with ID %ld and count %ld", v21, 0x16u);
      }

      else
      {
        v22 = *(v10 + 8);
        v22(v12, v9);
      }

      v22(v15, v9);
    }
  }

  *(a3 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision) = a1;

  v24 = *(a3 + OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController);
  if (a1)
  {
    v25 = sub_10010FC20(&qword_101196F80);
    v26 = a1;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v32[1] = 0;
    v32[2] = 0;
  }

  v32[0] = v26;
  v32[3] = v25;
  v27 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();

  sub_10006B010(v32, v24 + v27, &unk_101183F30);
  return swift_endAccess();
}

uint64_t sub_1005B929C()
{
  type metadata accessor for RecentlyAddedMusicItem();
  sub_100029710(&qword_101197010, &type metadata accessor for RecentlyAddedMusicItem);
  sub_100029710(&qword_101197018, &type metadata accessor for RecentlyAddedMusicItem);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

id sub_1005B935C(uint64_t a1, id a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return [a2 setNeedsUpdateContentUnavailableConfiguration];
}

uint64_t sub_1005B93DC()
{
  v1 = v0;
  if ([v0 isEditing] & 1) != 0 || (type metadata accessor for MusicLibrary(), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , static MusicLibrary.shared.getter(), v2 = static MusicLibrary.== infix(_:_:)(), , , (v2 & 1) == 0) || (v3 = objc_msgSend(v1, "traitCollection"), sub_100217F14(), UITraitCollection.subscript.getter(), v3, v4 = sub_10049CB78(), , (v4))
  {
    v5 = 0;
  }

  else
  {
    UIViewController.contentUnavailableConfiguration.getter();
    v7 = sub_1005B954C();
    sub_1000095E8(v8, &unk_10119E410);
    v5 = v7 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1005B954C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101197020);
  __chkstk_darwin(v2 - 8);
  v4 = &v13[-v3 - 8];
  v5 = type metadata accessor for UIContentUnavailableConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1000089F8(v1, v13, &unk_10119E410);
  if (!v14)
  {
    sub_1000095E8(v13, &unk_10119E410);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_8;
  }

  sub_10010FC20(&qword_101197028);
  v9 = swift_dynamicCast();
  (*(v6 + 56))(v4, v9 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_8:
    sub_1000095E8(v4, &qword_101197020);
    v10 = 0;
    return v10 & 1;
  }

  (*(v6 + 32))(v8, v4, v5);
  if (qword_10117F730 != -1)
  {
    swift_once();
  }

  sub_1000060E4(v5, qword_101218D08);
  if (static UIContentUnavailableConfiguration.== infix(_:_:)())
  {
    v10 = 1;
  }

  else
  {
    if (qword_10117F738 != -1)
    {
      swift_once();
    }

    sub_1000060E4(v5, qword_101218D20);
    v10 = static UIContentUnavailableConfiguration.== infix(_:_:)();
  }

  (*(v6 + 8))(v8, v5);
  return v10 & 1;
}

uint64_t sub_1005B9820(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_1005BED74(a1, &v11);
  sub_1005A9268(&v11, v7);
  sub_1000095E8(&v11, &unk_101196F60);
  sub_1005A9A58();
  sub_1000089F8(v7, v4, &unk_1011A4B90);
  v8 = type metadata accessor for LibraryImport.ViewModel(0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_1000095E8(v4, &unk_1011A4B90);
    v11 = 0u;
    v12 = 0u;
  }

  else
  {
    *(&v12 + 1) = v8;
    v9 = sub_10001C8B8(&v11);
    sub_1005C29E8(v4, v9, type metadata accessor for LibraryImport.ViewModel);
  }

  sub_1005BDE8C(&v11, 0);

  return sub_1000095E8(v7, &unk_1011A4B90);
}

id sub_1005B99E0()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___dropIndicationView;
  v2 = *&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___dropIndicationView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___dropIndicationView];
  }

  else
  {
    sub_1005B9A44(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1005B9A44(void *a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setUserInteractionEnabled:0];
  v3 = [v2 layer];
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 tintColor];

    if (v6)
    {
      v7 = [v6 CGColor];

      [v3 setBorderColor:v7];
      v8 = [v2 layer];
      [v8 setBorderWidth:3.0];

      v9 = [v2 layer];
      [v9 setCornerRadius:12.0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1005B9B9C(char a1)
{
  if (v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_isActiveDropSessionInsideView] == (a1 & 1))
  {
    return;
  }

  if (!v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_isActiveDropSessionInsideView])
  {
    isa = sub_1005B99E0();
    [isa removeFromSuperview];
    goto LABEL_12;
  }

  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = v1;
  v5 = sub_1005B99E0();
  v6 = UIView.forAutolayout.getter();

  [v3 addSubview:v6];
  v7 = [v4 view];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___dropIndicationView;
  [v7 bringSubviewToFront:*&v4[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___dropIndicationView]];

  sub_10010FC20(&qword_101183990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBDC10;
  v11 = [*&v4[v9] topAnchor];
  v12 = [v4 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  v14 = [v12 safeAreaLayoutGuide];

  v15 = [v14 topAnchor];
  v16 = [v11 constraintEqualToAnchor:v15];

  *(v10 + 32) = v16;
  v17 = [*&v4[v9] leadingAnchor];
  v18 = [v4 view];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [v18 safeAreaLayoutGuide];

  v21 = [v20 leadingAnchor];
  v22 = [v17 constraintEqualToAnchor:v21 constant:8.0];

  *(v10 + 40) = v22;
  v23 = [*&v4[v9] bottomAnchor];
  v24 = [v4 view];
  if (!v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  v26 = [v24 safeAreaLayoutGuide];

  v27 = [v26 bottomAnchor];
  v28 = [v23 constraintEqualToAnchor:v27];

  *(v10 + 48) = v28;
  v29 = [v4 view];
  if (!v29)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v30 = v29;
  v31 = objc_opt_self();
  v32 = [v30 safeAreaLayoutGuide];

  v33 = [v32 trailingAnchor];
  v34 = [*&v4[v9] trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:8.0];

  *(v10 + 56) = v35;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints:isa];
LABEL_12:
}

uint64_t sub_1005BA07C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10010FC20(&unk_10118A650);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v9 == a3)
  {
    goto LABEL_7;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
    strcpy(v15, "Unknown kind=");
    v15[7] = -4864;
    v12._countAndFlagsBits = a2;
    v12._object = a3;
    String.append(_:)(v12);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
  }

  sub_1005AC238(v8);
  sub_100009F78(0, &unk_101184750);
  v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v6 + 8))(v8, v5);
  return v13;
}

id sub_1005BA3A0(uint64_t a1, void (*a2)(void, void, void, void))
{
  v166 = a1;
  v158 = sub_10010FC20(qword_101196EA0);
  v157 = *(v158 - 1);
  __chkstk_darwin(v158);
  v156 = (&v126 - v3);
  v4 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v4 - 8);
  v159 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v160 = &v126 - v7;
  v136 = type metadata accessor for UICellAccessory.LabelOptions();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for UICellAccessory.Placement();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v131 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v128 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for UICellAccessory();
  v164 = *(v138 - 8);
  __chkstk_darwin(v138);
  v126 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v130 = &v126 - v13;
  v155 = sub_10010FC20(&unk_1011841D0);
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v126 - v14;
  v152 = type metadata accessor for UICellAccessory.ReorderOptions();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v150 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_10118ABC0);
  __chkstk_darwin(v17 - 8);
  v163 = &v126 - v18;
  v146 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for UICellAccessory.DisplayedState();
  v165 = *(v162 - 8);
  __chkstk_darwin(v162);
  v161 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10010FC20(&qword_101196E90);
  v140 = *(v142 - 8);
  __chkstk_darwin(v142);
  v22 = &v126 - v21;
  v23 = sub_10010FC20(&unk_101197070);
  __chkstk_darwin(v23 - 8);
  v25 = &v126 - v24;
  v143 = sub_10010FC20(&qword_101196E80);
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v27 = &v126 - v26;
  v28 = sub_10010FC20(&qword_101196E70);
  v139 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v126 - v29;
  v31 = sub_10010FC20(&qword_101196E60);
  v137 = *(v31 - 1);
  __chkstk_darwin(v31);
  v33 = &v126 - v32;
  v34 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v34 - 8);
  v36 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = (&v126 - v38);
  v167 = a2;
  v40 = IndexPath.section.getter();
  v41 = sub_1005BF47C(v40);
  if (v41 > 1)
  {
    if (v41 != 2)
    {
      v58 = v160;
      v59 = v167;
      sub_1005A7C20(0, v160);
      v60 = v156;
      sub_1005AC9A8(v156);
      v61 = sub_1007FD1B8(v60, v59, v58);
      (*(v157 + 8))(v60, v158);
      v62 = Corner.medium.unsafeMutableAddressor();
      v63 = *v62;
      v64 = v62[1];
      v65 = *(v62 + 16);
      v66 = swift_allocObject();
      *(v66 + 16) = v63;
      *(v66 + 24) = v64;
      *(v66 + 32) = v65;
      UICollectionViewCell.configurationUpdateHandler.setter();
      v67 = v159;
      sub_1000089F8(v58, v159, &unk_101197040);
      v68 = type metadata accessor for RecentlyAddedMusicItem();
      v69 = *(v68 - 8);
      if ((*(v69 + 48))(v67, 1, v68) == 1)
      {
        sub_1000095E8(v67, &unk_101197040);
        v171 = 0u;
        v172 = 0u;
        v173 = 0;
      }

      else
      {
        *(&v172 + 1) = v68;
        v173 = sub_100029710(&qword_101197080, &type metadata accessor for RecentlyAddedMusicItem);
        v72 = sub_10001C8B8(&v171);
        (*(v69 + 32))(v72, v67, v68);
      }

      v71 = sub_1004F24B0(&v171);

      sub_1000095E8(v58, &unk_101197040);
      sub_1000095E8(&v171, &qword_1011A3DD0);
      return v71;
    }

    v45 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
    v46 = v168;
    swift_beginAccess();
    v27 = *(v46 + v45);
    v47 = v167;
    if (v27)
    {

      v48 = v47;
      v49 = IndexPath.item.getter();
      if ((v49 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v50 = *(v27 + 2);
      if (v49 >= v50)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v31 = sub_10049AA14(v50 > 1, v48, 1, v31);
LABEL_37:
        v121 = v138;
        v102 = v159;
        v122 = v160;
        v123 = v142;

        *(v31 + 2) = v48;
        (*(v164 + 32))(&v31[v123 + v22 * v122], v27, v121);
        goto LABEL_38;
      }

      v51 = v27[v49 + 32];
    }

    else
    {
      v51 = 13;
    }

    sub_1005AC738(v22);
    LODWORD(v141) = v51;
    v159 = sub_1007FCE50(v22, v47, v51);
    (*(v140 + 8))(v22, v142);
    sub_10010FC20(&unk_101184740);
    v160 = *(v164 + 72);
    v73 = (*(v164 + 80) + 32) & ~*(v164 + 80);
    v157 = 2 * v160;
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_100EBE260;
    v158 = v74;
    v142 = v73;
    v143 = v74 + v73;
    v75 = v165;
    v76 = v165 + 104;
    v156 = *(v165 + 104);
    v78 = v161;
    v77 = v162;
    (v156)(v161, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v162);
    v79 = type metadata accessor for UICellAccessory.LayoutDimension();
    v80 = *(v79 - 8);
    v167 = *(v80 + 56);
    v81 = v80 + 56;
    v82 = v163;
    v167(v163, 1, 1, v79);
    v166 = v81;
    v83 = v144;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v145 + 8))(v83, v146);
    v84 = *(v75 + 8);
    v84(v78, v77);
    LODWORD(v165) = enum case for UICellAccessory.DisplayedState.whenEditing(_:);
    v85 = v156;
    (v156)(v78);
    v167(v82, 1, 1, v79);
    v86 = v147;
    UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
    static UICellAccessory.multiselect(displayed:options:)();
    v87 = v86;
    v88 = v85;
    (*(v148 + 8))(v87, v149);
    v84(v78, v77);
    v148 = v76;
    v85(v78, v165, v77);
    v149 = v79;
    v167(v82, 1, 1, v79);
    v89 = v150;
    UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
    v90 = v168;
    static UICellAccessory.reorder(displayed:options:)();
    (*(v151 + 8))(v89, v152);
    v165 = v75 + 8;
    v84(v78, v77);
    v91 = v90;
    v92 = sub_1005AB840();
    v93 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueue;
    swift_beginAccess();
    v94 = v154;
    v95 = v92 + v93;
    v96 = v153;
    v97 = v155;
    (*(v154 + 16))(v153, v95, v155);

    sub_100020674(&qword_1011913B0, &unk_1011841D0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v98 = dispatch thunk of Collection.distance(from:to:)();
    (*(v94 + 8))(v96, v97);
    if (v98 < 1)
    {
      v101 = *(v91 + OBJC_IVAR____TtC5Music25LibraryMainViewController_downloadSpinner);
      *(v91 + OBJC_IVAR____TtC5Music25LibraryMainViewController_downloadSpinner) = 0;
    }

    else
    {
      if (v141 == 12)
      {
        v169 = v98;
        sub_1005C2A58();
        BinaryInteger.formatted()();
        v167(v163, 1, 1, v149);
        v104 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
        UIFont.monospacedDigits()();

        v105 = v134;
        UICellAccessory.LabelOptions.init(isHidden:reservedLayoutWidth:tintColor:font:adjustsFontForContentSizeCategory:)();
        v107 = v161;
        v106 = v162;
        v88(v161, enum case for UICellAccessory.DisplayedState.always(_:), v162);
        v108 = v126;
        static UICellAccessory.label(text:displayed:options:)();

        v84(v107, v106);
        (*(v135 + 8))(v105, v136);
        v109 = v158;
        v111 = *(v158 + 2);
        v110 = *(v158 + 3);
        if (v111 >= v110 >> 1)
        {
          v109 = sub_10049AA14(v110 > 1, v111 + 1, 1, v158);
        }

        v112 = v138;
        v102 = v159;
        v113 = v160;
        v114 = v142;
        *(v109 + 2) = v111 + 1;
        (*(v164 + 32))(&v109[v114 + v111 * v113], v108, v112);
        goto LABEL_38;
      }

      if (v141 == 11)
      {
        v99 = *(v91 + OBJC_IVAR____TtC5Music25LibraryMainViewController_downloadSpinner);
        v31 = v158;
        if (v99)
        {
          v36 = *(v91 + OBJC_IVAR____TtC5Music25LibraryMainViewController_downloadSpinner);
        }

        else
        {
          v36 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
          [v36 startAnimating];
        }

        v115 = v149;
        v116 = sub_10010FC20(&qword_101197090);
        v117 = v131;
        v118 = &v131[*(v116 + 48)];
        v88(v131, enum case for UICellAccessory.DisplayedState.always(_:), v162);
        *v118 = static MPMediaLibraryFilteringOptions.none.getter;
        v118[1] = 0;
        (*(v127 + 104))(v117, enum case for UICellAccessory.Placement.trailing(_:), v129);
        v167(v163, 1, 1, v115);
        v119 = v99;
        v120 = v128;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        v27 = v130;
        static UICellAccessory.customView(configuration:)();
        (*(v132 + 8))(v120, v133);
        v22 = *(v31 + 2);
        v50 = *(v31 + 3);
        v48 = v22 + 1;
        if (v22 < v50 >> 1)
        {
          goto LABEL_37;
        }

        goto LABEL_44;
      }
    }

    v102 = v159;
LABEL_38:
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v124 = v102;

    UICollectionViewCell.configurationUpdateHandler.setter();

    UICollectionViewListCell.accessories.setter();
    v71 = v124;

    [v71 directionalLayoutMargins];
    [v71 setDirectionalLayoutMargins:?];
    [v71 directionalLayoutMargins];
    [v71 setDirectionalLayoutMargins:?];

    return v71;
  }

  if (v41)
  {
    v52 = v168;
    sub_1005AB368(v27);
    v53 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
    swift_beginAccess();
    v54 = *(v52 + v53);
    if (!v54)
    {
      swift_endAccess();
      v100 = type metadata accessor for MusicPin();
      (*(*(v100 - 8) + 56))(v25, 1, 1, v100);
      v31 = v167;
      goto LABEL_27;
    }

    v31 = v167;
    v48 = v167;
    v55 = IndexPath.item.getter();
    if ((v55 & 0x8000000000000000) == 0)
    {
      v48 = v55;
      v50 = *(v54 + 16);
      if (v55 < v50)
      {
        v56 = type metadata accessor for MusicPin();
        v57 = *(v56 - 8);
        (*(v57 + 16))(v25, v54 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v48, v56);
        swift_endAccess();
        (*(v57 + 56))(v25, 0, 1, v56);
LABEL_27:
        v71 = sub_1007FC8FC(v27, v31, v25);
        sub_1000095E8(v25, &unk_101197070);
        (*(v141 + 8))(v27, v143);
        *(v71 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell_shouldAnimateJiggle) = *(v52 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext) & 1;
        sub_1006B52D8();
        return v71;
      }

      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v42 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
  v43 = v168;
  swift_beginAccess();
  sub_1000089F8(v43 + v42, v39, &unk_1011A4B90);
  v44 = type metadata accessor for LibraryImport.ViewModel(0);
  if ((*(*(v44 - 8) + 48))(v39, 1, v44) == 1)
  {
    sub_1000095E8(v39, &unk_1011A4B90);
LABEL_31:
    v103 = v168;
    sub_1005AC4C0(v30);
    sub_1000089F8(v103 + v42, v36, &unk_1011A4B90);
    v71 = sub_1007FC3C0(v30, v167, v36);
    sub_1000095E8(v36, &unk_1011A4B90);
    (*(v139 + 8))(v30, v28);
    return v71;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1005C3434(v39, type metadata accessor for LibraryImport.ViewModel);
    goto LABEL_31;
  }

  v70 = *v39;
  sub_1005ACC20(v33);
  v170 = v70;
  type metadata accessor for InlineBubbleTipCell();
  type metadata accessor for InlineBubbleTipProvider.InlineBubbleTip();

  v71 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  (*(v137 + 8))(v33, v31);
  return v71;
}

uint64_t sub_1005BBC30(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&qword_1011888C0);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    static UIBackgroundConfiguration.listCell()();
    v15 = type metadata accessor for UICellConfigurationState();
    v21[3] = v15;
    v21[4] = &protocol witness table for UICellConfigurationState;
    v16 = sub_10001C8B8(v21);
    (*(*(v15 - 8) + 16))(v16, a2, v15);
    UIBackgroundConfiguration.updated(for:)();
    sub_10000959C(v21);
    if (UICellConfigurationState.isEditing.getter())
    {
      v17 = UIBackgroundConfiguration.backgroundColor.getter();
      if (v17)
      {
        v18 = v17;
        [v17 colorWithAlphaComponent:0.8];
      }
    }

    else
    {
      if (*(v14 + OBJC_IVAR____TtC5Music25LibraryMainViewController_isActiveDropSessionInsideView) != 1)
      {
LABEL_8:
        (*(v7 + 16))(v5, v9, v6);
        (*(v7 + 56))(v5, 0, 1, v6);
        UICollectionViewCell.backgroundConfiguration.setter();

        v20 = *(v7 + 8);
        v20(v9, v6);
        return (v20)(v12, v6);
      }

      v19 = [objc_opt_self() tableCellPlainBackgroundColor];
    }

    UIBackgroundConfiguration.backgroundColor.setter();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1005BC20C(void *a1)
{
  v3 = IndexPath.section.getter();
  if (sub_1005BF47C(v3) != 1)
  {
    if ((UICollectionView.isDraggingCell(at:)() & 1) == 0)
    {
      v5 = [a1 isEditing] ^ 1;
      return v5 & 1;
    }

    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_dragDropController);
  if (v4 && *(v4 + 96))
  {
LABEL_6:
    v5 = 0;
    return v5 & 1;
  }

  v5 = *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext) ^ 1;
  return v5 & 1;
}

void sub_1005BC4B8(void *a1, uint64_t a2, char a3, const char *a4)
{
  if (![a1 isEditing])
  {
    return;
  }

  v7 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
  swift_beginAccess();
  v8 = *(v4 + v7);
  if (!v8)
  {
    return;
  }

  v9 = IndexPath.item.getter();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v8 + 16))
  {
    v7 = *(v8 + v9 + 32);

    v10 = sub_1005B4C3C(v20);
    if (*v11)
    {
      Library.Menu.setSelectionState(_:for:)(a3, v7);
    }

    v10(v20, 0);
    if (qword_10117F750 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_14:
  swift_once();
LABEL_8:
  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, static Logger.libraryView);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v15 = 136446210;
    v17 = Library.Menu.Identifier.description.getter(v7);
    v19 = sub_1000105AC(v17, v18, v20);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, a4, v15, 0xCu);
    sub_10000959C(v16);
  }
}

uint64_t sub_1005BC6C4(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, const char *a6)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  sub_1005BC4B8(v14, v13, a5, a6);

  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1005BC8C4(void *a1)
{
  v3 = type metadata accessor for Logger();
  result = [a1 isEditing];
  if (result)
  {
    v5 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
    result = swift_beginAccess();
    v6 = *(v1 + v5);
    if (v6)
    {

      result = IndexPath.item.getter();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v6 + 16))
      {
        v7 = *(v6 + result + 32);

        v8 = sub_1005B4C3C(v10);
        v9 = IndexPath.item.getter();
        Library.Menu.move(_:to:)(v7, v9);
        return (v8)(v10, 0);
      }

      __break(1u);
    }
  }

  return result;
}

id sub_1005BCED4(uint64_t a1)
{
  v2 = IndexPath.section.getter();
  v3 = sub_1005BF47C(v2);
  result = 0;
  if (v3 > 1u)
  {
    if (v3 == 2)
    {
      return result;
    }

    v7 = sub_1005A5F8C();
    v8 = sub_10023D4E4(a1, 0, 1);
    goto LABEL_8;
  }

  if (v3)
  {
    v5 = sub_1005A5F8C();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v7 = [v5 cellForItemAtIndexPath:isa];

    result = 0;
    if (v7)
    {
      _s22PinsCollectionViewCellCMa();
      if (!swift_dynamicCastClass())
      {
        v9 = 0;
        goto LABEL_9;
      }

      v8 = sub_1006B0F58();
LABEL_8:
      v9 = v8;
LABEL_9:

      return v9;
    }
  }

  return result;
}

id sub_1005BCFC8(void *a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  v7 = sub_1005BCED4(v5);

  (*(v3 + 8))(v5, v2);

  return v7;
}

uint64_t sub_1005BD120()
{
  v1 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_10010FC20(&unk_101196F90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  if (*(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision))
  {

    RequestResponse.Revision.content.getter(v3);

    v8 = sub_10010FC20(&unk_10118D0A0);
    if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
    {
      sub_1000095E8(v3, &unk_10118D090);
    }

    else
    {
      (*(v5 + 16))(v7, v3, v4);
      sub_1000095E8(v3, &unk_10118D0A0);
      v9 = MusicLibrarySectionedResponse.totalItemCount.getter();
      (*(v5 + 8))(v7, v4);
      if (!v9)
      {
        v11 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
        swift_beginAccess();
        v12 = *(v0 + v11);
        if (v12)
        {
          if (!*(v12 + 16))
          {
            *(&v16 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
            v17 = &protocol witness table for UIContentUnavailableConfiguration;
            v13 = sub_10001C8B8(&v15);
            sub_1007DBC1C(v13);
            return UIViewController.contentUnavailableConfiguration.setter();
          }
        }
      }
    }
  }

  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

void sub_1005BD4A8(unint64_t *a1, void *a2)
{
  v3 = *a1;

  v4 = [a2 navigationItem];
  v5 = [v4 rightBarButtonItems];

  if (v5)
  {
    sub_100009F78(0, &qword_101181580);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_10047C934(v3, v6);

    if (v7)
    {
      return;
    }
  }

  else
  {
  }

  v8 = [a2 navigationItem];
  sub_100009F78(0, &qword_101181580);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setRightBarButtonItems:isa animated:1];
}

uint64_t sub_1005BD648(uint64_t a1)
{
  v2 = sub_100110298(&off_10109BCD8);
  v16 = v2;
  v3 = sub_10059B3FC();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v3) & 1) != 0 && (sub_10049CB78() & 1) == 0)
  {
    sub_1003B48A8(v15, 1);
    v2 = v16;
  }

  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 56);
  result = swift_beginAccess();
  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_12:
      v10 = *(a1 + 56);
      if (!*(v10 + 16))
      {
        break;
      }

      v11 = *(*(v2 + 48) + (__clz(__rbit64(v6)) | (v9 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = -1 << *(v10 + 32);
      v13 = result & ~v12;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      v14 = ~v12;
      while (*(*(v10 + 48) + v13) != v11)
      {
        v13 = (v13 + 1) & v14;
        if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v8 = v9;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

LABEL_20:

    return 0;
  }

  else
  {
LABEL_9:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= ((v4 + 63) >> 6))
      {

        return 1;
      }

      v6 = *(v2 + 56 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}