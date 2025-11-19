uint64_t sub_100C8B404(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  v6 = sub_100C973A8(&v31, a1, 0, 1, v5, sub_100C9E394, sub_100C9BC20);
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v31;
  if (v31 == v8)
  {
    sub_100C975D8(a1, sub_100C9BC20);
    return v6;
  }

  if (v31 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v7)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_52;
    }

    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 < v9)
  {
    goto LABEL_48;
  }

  v11 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v9)
  {
    _s4LineCMa();

    v12 = 0;
    do
    {
      v13 = v12 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v12);
      v12 = v13;
    }

    while (v9 != v13);
    if (!v7)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = _CocoaArrayWrapper.subscript.getter();
    i = v15;
    v3 = v16;
    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v7)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v14 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v9) | 1;
LABEL_23:
  v29 = v14;
  v30 = a1 & 0xC000000000000001;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = v18[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v19 != (v3 >> 1) - i)
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v11 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v17)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v32 = v6;
    v33 = i;
    if (v8 < v9)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v7)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20 < v8)
    {
      goto LABEL_50;
    }

    if (!v11)
    {

      goto LABEL_41;
    }

    if (v9 < v8)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v14 = v29;
    v11 = v30;
LABEL_22:
    sub_100C95FA8(v1, v14, i, v3, _s4LineCMa);
  }

  _s4LineCMa();

  v21 = v9;
  do
  {
    v22 = v21 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v21);
    v21 = v22;
  }

  while (v8 != v22);
LABEL_41:

  if (v7)
  {
    _CocoaArrayWrapper.subscript.getter();
    v23 = v25;
    v9 = v26;
    v24 = v27;
  }

  else
  {
    v23 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = (2 * v8) | 1;
  }

  sub_100C9DB18(v23, v9, v24);
  swift_unknownObjectRelease();

  return v32;
}

uint64_t sub_100C8B79C(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  v6 = sub_100C973A8(&v31, a1, 0, 1, v5, sub_100C9E738, sub_100C9BDB0);
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v31;
  if (v31 == v8)
  {
    sub_100C975D8(a1, sub_100C9BDB0);
    return v6;
  }

  if (v31 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v7)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_52;
    }

    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 < v9)
  {
    goto LABEL_48;
  }

  v11 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v9)
  {
    _s4WordCMa();

    v12 = 0;
    do
    {
      v13 = v12 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v12);
      v12 = v13;
    }

    while (v9 != v13);
    if (!v7)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = _CocoaArrayWrapper.subscript.getter();
    i = v15;
    v3 = v16;
    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v7)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v14 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v9) | 1;
LABEL_23:
  v29 = v14;
  v30 = a1 & 0xC000000000000001;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = v18[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v19 != (v3 >> 1) - i)
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v11 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v17)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v32 = v6;
    v33 = i;
    if (v8 < v9)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v7)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20 < v8)
    {
      goto LABEL_50;
    }

    if (!v11)
    {

      goto LABEL_41;
    }

    if (v9 < v8)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v14 = v29;
    v11 = v30;
LABEL_22:
    sub_100C95FA8(v1, v14, i, v3, _s4WordCMa);
  }

  _s4WordCMa();

  v21 = v9;
  do
  {
    v22 = v21 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v21);
    v21 = v22;
  }

  while (v8 != v22);
LABEL_41:

  if (v7)
  {
    _CocoaArrayWrapper.subscript.getter();
    v23 = v25;
    v9 = v26;
    v24 = v27;
  }

  else
  {
    v23 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = (2 * v8) | 1;
  }

  sub_100C9DB18(v23, v9, v24);
  swift_unknownObjectRelease();

  return v32;
}

void sub_100C8BB34(uint64_t a1)
{
  v2 = static MPMediaLibraryFilteringOptions.none.getter();
  v3 = sub_100C974F4(&v17, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v17;
  if (v17 != v4)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    if (v4 < v17)
    {
LABEL_18:
      __break(1u);
    }

    else
    {
      sub_100C96130(a1, a1 + 32, 0, (2 * v17) | 1);
      v18 = v3;
      v19 = v6;
      if (*(a1 + 16) >= v4)
      {

        for (i = a1 + 56 * v5 + 48; ; i += 56)
        {
          if (v5 >= v4)
          {
            __break(1u);
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

          v8 = *(i + 16);
          v21 = *i;
          v22 = v8;
          v20 = *(i - 16);
          v23 = *(i + 32);
          v24 = v21;
          v25 = v8;
          v9 = v18;
          v10 = v19;
          v11 = *(v19 + 16);
          if (v18)
          {
            sub_100118E9C(&v24, v16);
            sub_1000089F8(&v25, v16, &qword_1011BC0A0);

            sub_100C75814(&v20, v10 + 32, v11, (v9 + 16), v9 + 32);
            v13 = v12;

            if ((v13 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
            sub_100C965F0(&v20, v19 + 32, v11);
            v15 = v14;
            sub_100118E9C(&v24, v16);
            sub_1000089F8(&v25, v16, &qword_1011BC0A0);
            if ((v15 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          sub_100C75E34(&v20);
LABEL_7:
          ++v5;
          sub_100015BB0(&v24);
          sub_1000095E8(&v25, &qword_1011BC0A0);
          if (v4 == v5)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

uint64_t sub_100C8BD44(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, char a5, double *a6, unint64_t a7, uint64_t a8, double a9, double a10, double MaxX, double y, double a13, CGFloat a14, uint64_t a15, os_log_t *a16, unint64_t *a17, uint64_t *a18, double *a19, void *a20)
{
  rect = *&a17;
  swift_beginAccess();
  v206 = a6;
  width = *a6 + a10;
  v213 = a7;
  v209 = (a7 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);

  v32 = String._bridgeToObjectiveC()();

  v210 = a1;
  v33 = [a1 characterRange];
  v35 = [v32 substringWithRange:{v33, v34}];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v221 = v36;
  v222 = v38;
  v219 = 10;
  v220 = 0xE100000000000000;
  v217 = 0;
  v218 = 0xE000000000000000;
  v183 = sub_100009988();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v39 = String.trim()();

  swift_beginAccess();
  v40 = *(a8 + 8);
  v41 = *(v40 + 16);
  swift_beginAccess();
  v42 = 32;
  while (v41)
  {
    v43 = *(v40 + v42);
    if (*(*(a15 + 8) + 16))
    {
      if (*(v43 + 24) != v39._countAndFlagsBits || *(v43 + 32) != v39._object)
      {
        v42 += 8;
        --v41;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }
    }

    swift_beginAccess();

    v45 = swift_retain_n();
    sub_100C8D73C(v45);
    swift_endAccess();

    goto LABEL_11;
  }

  v43 = 0;
LABEL_11:
  [v210 boundsWithType:0 options:{0, &type metadata for String, v183, v183, v183}];
  MinX = v46;
  v49 = v48;
  v50 = v213;
  v51 = *(v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
  v53 = *v209;
  v52 = v209[1];
  swift_beginAccess();
  v54 = *a16;
  v208 = a5;
  v203 = a3;
  if (a5)
  {
    v55 = 0;
  }

  else
  {
    v55 = a3;
  }

  if (v43)
  {
    swift_beginAccess();
    v56 = *(v43 + 16);
  }

  else
  {
    v56 = _swiftEmptyArrayStorage;
  }

  v57 = sub_100C9C4F8(a9, width, MaxX, y, MinX, v49, a2, v51, v53, v52, v54, v55, v56);
  v59 = v58;

  swift_beginAccess();
  *a17 = v57;

  v60 = a16;
  swift_beginAccess();
  *a16 = v59;
  v216 = _swiftEmptyArrayStorage;
  v61 = String.lowercased()();
  v62 = v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText;
  if (*(v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
  {
    v63 = String.lowercased()();
    if (v61._countAndFlagsBits == v63._countAndFlagsBits && v61._object == v63._object)
    {

LABEL_133:
      v65 = _swiftEmptyArrayStorage;
LABEL_134:
      if (*(v50 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) != 2)
      {
        goto LABEL_196;
      }

      v78 = *(v50 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager);
      if (*&v78 == 0.0)
      {
        goto LABEL_196;
      }

      v80 = width;
      v194 = y;
      v131 = *(v78 + 16);

      [v131 usageBoundsForTextContainer];
      x = v229.origin.x;
      y = v229.origin.y;
      width = v229.size.width;
      height = v229.size.height;
      MinX = CGRectGetWidth(v229);
      if ((v57 & 0x8000000000000000) != 0 || (v57 & 0x4000000000000000) != 0)
      {
LABEL_164:
        v132 = _CocoaArrayWrapper.endIndex.getter();
        if (!v132)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v132 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v132)
        {
LABEL_146:
          if (vabdd_f64(a13, MinX) < 1.0)
          {
            y = v194;
            width = v80;
            goto LABEL_195;
          }

          goto LABEL_180;
        }
      }

      v87 = __OFSUB__(v132, 1);
      v133 = v132 - 1;
      if (v87)
      {
        goto LABEL_169;
      }

      if ((v57 & 0xC000000000000001) != 0)
      {
        goto LABEL_170;
      }

      if ((v133 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v133 < *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v134 = *(v57 + 8 * v133 + 32);

        goto LABEL_144;
      }

      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v64)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  if (!*(v62 + 8))
  {
    goto LABEL_133;
  }

  swift_beginAccess();
  v65 = _swiftEmptyArrayStorage;
  v195 = a18[1];
  if (!v195)
  {
    goto LABEL_134;
  }

  v66 = *a18;
  v196 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v186 = *(v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection);
  if (v186 == 2)
  {

    sub_100B46188(v66, v195);

    goto LABEL_133;
  }

  swift_beginAccess();
  v67 = v66;
  v68 = *a17;

  v184 = v67;
  sub_100B46188(v67, v195);

  v69 = a3;
  v70 = a4;
  if (v208)
  {
    v69 = CTLineRef.stringRange.getter();
    v70 = v71;
  }

  swift_beginAccess();
  sub_100C8E9AC(v184, v195, v68, v57, v69, v70, *a16, &v221, a13, a14);

  v72 = v222;
  if (!v222)
  {

    sub_100C8A7F8(0, 1, a13, a14);

    return 0;
  }

  if (v222 == 1)
  {

    goto LABEL_133;
  }

  MinX = v224;
  v74 = v223;
  v75 = v221;
  swift_beginAccess();
  v65 = *a18;
  v76 = a18[1];
  *a18 = v75;
  a18[1] = v72;

  sub_100B46144(v65, v76);
  v193 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment;
  if (!*(v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) || *(v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) == (v186 & 1))
  {
    MaxX = MinX + MaxX;
  }

  v77 = *(v74 + 16);
  if (!v77)
  {

    sub_1000095E8(&v221, &qword_1011BC548);
    goto LABEL_133;
  }

  v188 = v77 != 1;
  v192 = v213 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v185 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
  v191 = v74 + 32;
  swift_beginAccess();
  v78 = a19;
  swift_beginAccess();
  swift_beginAccess();
  v79 = 0;
  v80 = a9;
  v187 = width;
  x = width;
  rect = MaxX;
  height = y;
  v189 = v77;
  v190 = v74;
  v194 = y;
  while (1)
  {
    if (v79 >= *(v74 + 16))
    {
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    v83 = (v191 + 16 * v79);
    v78 = *v83;
    v84 = v83[1];

    v202 = v84;
    v225.origin.x = CTLineRef.bounds.getter();
    width = CGRectGetHeight(v225) + *(v192 + 328);
    *v206 = *v206 + width;
    v85 = v78 >> 62;
    if (*(v50 + v193) != 2 || *(v50 + v185) == (v186 & 1))
    {
LABEL_52:
      v227.origin.x = a9;
      v227.origin.y = v187;
      v227.size.width = MaxX;
      v227.size.height = y;
      MinX = CGRectGetMinX(v227);
      v228.origin.x = v80;
      v228.origin.y = x;
      v228.size.width = rect;
      v228.size.height = height;
      x = CGRectGetMaxY(v228);
      height = MinX;
      rect = MaxX;
      goto LABEL_53;
    }

    if (v85)
    {
      v86 = _CocoaArrayWrapper.endIndex.getter();
      if (!v86)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v86 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v86)
      {
        goto LABEL_52;
      }
    }

    v87 = __OFSUB__(v86, 1);
    v88 = v86 - 1;
    if (v87)
    {
      goto LABEL_173;
    }

    if ((v78 & 0xC000000000000001) != 0)
    {
      v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v88 & 0x8000000000000000) != 0)
      {
        goto LABEL_174;
      }

      if (v88 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_175;
      }

      v89 = *(v78 + 8 * v88 + 32);
    }

    MinX = CGRectGetMaxX(*(v89 + 176));
    v226.origin.x = v80;
    v226.origin.y = x;
    v226.size.width = rect;
    v226.size.height = height;
    x = CGRectGetMaxY(v226);

    if (*a19 < MinX)
    {
      *a19 = MinX;
    }

    height = a13 - MinX;
    rect = MinX;
    y = v194;
LABEL_53:
    v215 = v78;
    v90 = *(v50 + v196);
    v201 = v79;
    if (v90 == 2)
    {

      v91 = v78;
    }

    else
    {

      v91 = v78;
      if (v90)
      {
        sub_100C8D7C8();
        v91 = v215;
      }
    }

    if (v91 >> 62)
    {
      break;
    }

    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_59;
    }

LABEL_76:

    v95 = 0;
    v99 = 0;
LABEL_77:
    v100 = String._bridgeToObjectiveC()();
    v199 = v95;
    v200 = v99;
    v65 = [v100 substringWithRange:{v99, v95}];

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v197 = v102;
    v198 = v101;

    _s4LineCMa();
    v50 = swift_allocObject();
    *(v50 + 112) = 0;
    *(v50 + 120) = 0;
    *(v50 + 128) = 0;
    *(v50 + 16) = *&v78;
    if (v85)
    {
      v103 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v103 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v104 = _swiftEmptyArrayStorage;
    v105 = v103 & ~(v103 >> 63);
    if (v103)
    {
      v214[0] = _swiftEmptyArrayStorage;

      sub_100C71420(0, v103 & ~(v103 >> 63), 0);
      if (v103 < 0)
      {
        goto LABEL_162;
      }

      v104 = v214[0];
      if ((v78 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v103; ++i)
        {
          v107 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
          if (*(v107 + 16))
          {
            v108 = *(v107 + 32);
          }

          else
          {
            v108 = 0;
          }

          swift_unknownObjectRelease();
          v214[0] = v104;
          v110 = *(v104 + 2);
          v109 = *(v104 + 3);
          if (v110 >= v109 >> 1)
          {
            sub_100C71420((v109 > 1), v110 + 1, 1);
            v104 = v214[0];
          }

          *(v104 + 2) = v110 + 1;
          *&v104[8 * v110 + 32] = v108;
        }
      }

      else
      {
        v111 = v78 + 32;
        v112 = v103;
        do
        {
          v113 = *(*v111 + 48);
          if (*(v113 + 16))
          {
            v114 = *(v113 + 32);
          }

          else
          {
            v114 = 0;
          }

          v214[0] = v104;
          v116 = *(v104 + 2);
          v115 = *(v104 + 3);
          if (v116 >= v115 >> 1)
          {
            sub_100C71420((v115 > 1), v116 + 1, 1);
            v104 = v214[0];
          }

          *(v104 + 2) = v116 + 1;
          *&v104[8 * v116 + 32] = v114;
          v111 += 8;
          --v112;
        }

        while (v112);
      }

      v60 = a16;
      v105 = v103 & ~(v103 >> 63);
    }

    else
    {
    }

    v214[0] = v104;

    v65 = 0;
    sub_100C9A8F8(v214);

    if (*(v214[0] + 2))
    {
      MinX = *(v214[0] + 4);
    }

    else
    {
      MinX = 0.0;
    }

    *(v50 + 64) = MinX;
    if (v103)
    {
      v214[0] = _swiftEmptyArrayStorage;
      sub_100C71420(0, v105, 0);
      if (v103 < 0)
      {
        goto LABEL_163;
      }

      v117 = v214[0];
      if ((v78 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != v103; ++j)
        {
          v119 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
          v120 = *(v119 + 16);
          if (v120)
          {
            v121 = *(v119 + 56 * v120 - 16);
          }

          else
          {
            v121 = 0;
          }

          swift_unknownObjectRelease();
          v214[0] = v117;
          v123 = *(v117 + 2);
          v122 = *(v117 + 3);
          if (v123 >= v122 >> 1)
          {
            sub_100C71420((v122 > 1), v123 + 1, 1);
            v117 = v214[0];
          }

          *(v117 + 2) = v123 + 1;
          *&v117[8 * v123 + 32] = v121;
        }
      }

      else
      {
        v124 = v78 + 32;
        do
        {
          v125 = *(*v124 + 48);
          v126 = *(v125 + 16);
          if (v126)
          {
            v127 = *(v125 + 56 * v126 - 16);
          }

          else
          {
            v127 = 0;
          }

          v214[0] = v117;
          v129 = *(v117 + 2);
          v128 = *(v117 + 3);
          if (v129 >= v128 >> 1)
          {
            sub_100C71420((v128 > 1), v129 + 1, 1);
            v117 = v214[0];
          }

          *(v117 + 2) = v129 + 1;
          *&v117[8 * v129 + 32] = v127;
          v124 += 8;
          --v103;
        }

        while (v103);
      }

      v60 = a16;
    }

    else
    {
      v117 = _swiftEmptyArrayStorage;
    }

    v214[0] = v117;

    sub_100C9A8F8(v214);
    v74 = v190;

    v130 = *(v214[0] + 2);
    if (v130)
    {
      MinX = *&v214[0][8 * v130 + 24];
    }

    else
    {
      MinX = 0.0;
    }

    v65 = v198;

    *(v50 + 24) = v198;
    *(v50 + 32) = v197;
    *(v50 + 40) = v200;
    *(v50 + 48) = v199;
    *(v50 + 72) = MinX;
    *(v50 + 80) = height;
    v80 = height;
    *(v50 + 88) = x;
    *(v50 + 96) = rect;
    *(v50 + 104) = width;
    *(v50 + 56) = 1;
    *(v50 + 57) = v188;
    *(v50 + 58) = v186 & 1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v216 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v216 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v65 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v79 = v201 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    height = width;
    v50 = v213;
    if (v201 + 1 == v189)
    {
      v65 = v216;

      sub_1000095E8(&v221, &qword_1011BC548);
      width = v187;
      goto LABEL_134;
    }
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_76;
  }

LABEL_59:
  v65 = v91 & 0xC000000000000001;
  if ((v91 & 0xC000000000000001) != 0)
  {
    v92 = v60;

    v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_161;
    }

    v92 = v60;
    v50 = *(v91 + 32);
  }

  v60 = *(v50 + 88);
  if (!(v91 >> 62))
  {
    v93 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v93)
    {
      goto LABEL_64;
    }

LABEL_68:

    v95 = 0;
LABEL_74:
    v99 = v60;
    v60 = v92;
    v85 = v78 >> 62;
    goto LABEL_77;
  }

  v93 = _CocoaArrayWrapper.endIndex.getter();
  if (!v93)
  {
    goto LABEL_68;
  }

LABEL_64:
  v87 = __OFSUB__(v93, 1);
  v94 = v93 - 1;
  if (!v87)
  {
    if (v65)
    {
      v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v94 & 0x8000000000000000) != 0)
      {
        goto LABEL_176;
      }

      if (v94 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_177;
      }

      v65 = *(v91 + 8 * v94 + 32);
    }

    v96 = *(v65 + 88);
    v97 = *(v65 + 96);

    v87 = __OFADD__(v96, v97);
    v98 = v96 + v97;
    if (v87)
    {
      goto LABEL_167;
    }

    v65 = *(v50 + 88);

    v95 = v98 - v65;
    if (__OFSUB__(v98, v65))
    {
      goto LABEL_168;
    }

    goto LABEL_74;
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_144:
  if (vabdd_f64(CGRectGetMaxX(*(v134 + 176)), MaxX) < 1.0)
  {

    goto LABEL_146;
  }

  MaxX = CGRectGetMaxX(*(v134 + 176));
  if (v65 >> 62)
  {
LABEL_178:
    v135 = _CocoaArrayWrapper.endIndex.getter();
    if (!v135)
    {
      goto LABEL_179;
    }

LABEL_150:
    rect = *&v78;
    if (v135 < 1)
    {
      goto LABEL_266;
    }

    v136 = 0;
    v137 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
    v138 = v65 & 0xC000000000000001;
    v139 = v65;
    do
    {
      if (v138)
      {
        v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v140 = *(v65 + 8 * v136 + 32);
      }

      if (*(v140 + 58) == *(v213 + v137))
      {
        v230.origin.x = *(v140 + 80);
        v230.origin.y = *(v140 + 88);
        v238.size.width = *(v140 + 96);
        v230.size.height = *(v140 + 104);
        *(v140 + 96) = MaxX;
        v230.size.width = MaxX;
        v238.origin.x = v230.origin.x;
        v238.origin.y = v230.origin.y;
        v238.size.height = v230.size.height;
        if (!CGRectEqualToRect(v230, v238))
        {
          *(v140 + 128) = 0;
        }
      }

      ++v136;
      v65 = v139;
    }

    while (v135 != v136);

    v60 = a16;
    v50 = v213;
    *&v78 = rect;
    goto LABEL_180;
  }

  v135 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v135)
  {
    goto LABEL_150;
  }

LABEL_179:

  v50 = v213;
LABEL_180:
  v231.origin.x = x;
  v231.origin.y = y;
  v231.size.width = width;
  v231.size.height = height;
  v141 = CGRectGetWidth(v231);
  v232.origin.x = a9;
  width = v80;
  v232.origin.y = v80;
  v232.size.width = MaxX;
  y = v194;
  v232.size.height = v194;
  v142 = CGRectGetWidth(v232);
  v233.origin.x = a9;
  v233.origin.y = v80;
  v233.size.width = MaxX;
  v233.size.height = v194;
  v143 = CGRectGetMaxX(v233) - a13;
  if (v143 > 0.0)
  {
    a9 = v143;
  }

  else
  {
    a9 = 0.0;
  }

  MinX = v141 - v142;
  if (v65 >> 62)
  {
    goto LABEL_263;
  }

  v144 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  a9 = MinX + a9;
  if (v144)
  {
    goto LABEL_185;
  }

LABEL_195:
  while (2)
  {
    while (2)
    {

LABEL_196:
      CTLineRef.stringRange.getter();
      v78 = v150;
      v151 = a20;
      swift_beginAccess();
      if (__OFADD__(*a20, v78))
      {
        __break(1u);
        goto LABEL_259;
      }

      *a20 += v78;
      if (!v43)
      {
        v210 = [v210 characterRange];
        rect = v154;
        v151 = *(v50 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction);
        _s4LineCMa();
        *&v78 = COERCE_DOUBLE(swift_allocObject());
        *(v78 + 112) = 0;
        *(v78 + 120) = 0;
        *(v78 + 128) = 0;
        *(v78 + 16) = v57;
        if (!(v57 >> 62))
        {
          v60 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_203;
        }

LABEL_259:
        v60 = _CocoaArrayWrapper.endIndex.getter();
LABEL_203:
        v212 = v151;
        v213 = v65;
        if (v60)
        {
          v214[0] = _swiftEmptyArrayStorage;

          sub_100C71420(0, v60 & ~(v60 >> 63), 0);
          if (v60 < 0)
          {
            goto LABEL_261;
          }

          v155 = v214[0];
          if ((v57 & 0xC000000000000001) != 0)
          {
            for (k = 0; k != v60; ++k)
            {
              v157 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
              if (*(v157 + 16))
              {
                v158 = *(v157 + 32);
              }

              else
              {
                v158 = 0;
              }

              swift_unknownObjectRelease();
              v214[0] = v155;
              v160 = *(v155 + 2);
              v159 = *(v155 + 3);
              if (v160 >= v159 >> 1)
              {
                sub_100C71420((v159 > 1), v160 + 1, 1);
                v155 = v214[0];
              }

              *(v155 + 2) = v160 + 1;
              *&v155[8 * v160 + 32] = v158;
            }
          }

          else
          {
            v168 = v57 + 32;
            v50 = v60;
            do
            {
              v169 = *(*v168 + 48);
              if (*(v169 + 16))
              {
                v170 = *(v169 + 32);
              }

              else
              {
                v170 = 0;
              }

              v214[0] = v155;
              v172 = *(v155 + 2);
              v171 = *(v155 + 3);
              if (v172 >= v171 >> 1)
              {
                sub_100C71420((v171 > 1), v172 + 1, 1);
                v155 = v214[0];
              }

              *(v155 + 2) = v172 + 1;
              *&v155[8 * v172 + 32] = v170;
              v168 += 8;
              --v50;
            }

            while (v50);
          }
        }

        else
        {

          v155 = _swiftEmptyArrayStorage;
        }

        v214[0] = v155;

        v65 = 0;
        sub_100C9A8F8(v214);

        if (*(v214[0] + 2))
        {
          MinX = *(v214[0] + 4);
        }

        else
        {
          MinX = 0.0;
        }

        *(v78 + 64) = MinX;
        if (v60)
        {
          v214[0] = _swiftEmptyArrayStorage;
          sub_100C71420(0, v60 & ~(v60 >> 63), 0);
          if (v60 < 0)
          {
            goto LABEL_262;
          }

          v161 = v214[0];
          if ((v57 & 0xC000000000000001) != 0)
          {
            v162 = 0;
            v50 = 56;
            do
            {
              v163 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
              v164 = *(v163 + 16);
              if (v164)
              {
                v165 = *(v163 + 56 * v164 - 16);
              }

              else
              {
                v165 = 0;
              }

              swift_unknownObjectRelease();
              v214[0] = v161;
              v167 = *(v161 + 2);
              v166 = *(v161 + 3);
              if (v167 >= v166 >> 1)
              {
                sub_100C71420((v166 > 1), v167 + 1, 1);
                v161 = v214[0];
              }

              ++v162;
              *(v161 + 2) = v167 + 1;
              *&v161[8 * v167 + 32] = v165;
            }

            while (v60 != v162);
          }

          else
          {
            v50 = 32;
            do
            {
              v173 = *(*(v57 + v50) + 48);
              v174 = *(v173 + 16);
              if (v174)
              {
                v175 = *(v173 + 56 * v174 - 16);
              }

              else
              {
                v175 = 0;
              }

              v214[0] = v161;
              v177 = *(v161 + 2);
              v176 = *(v161 + 3);
              if (v177 >= v176 >> 1)
              {
                sub_100C71420((v176 > 1), v177 + 1, 1);
                v161 = v214[0];
              }

              *(v161 + 2) = v177 + 1;
              *&v161[8 * v177 + 32] = v175;
              v50 += 8;
              --v60;
            }

            while (v60);
          }
        }

        else
        {

          v161 = _swiftEmptyArrayStorage;
        }

        v214[0] = v161;

        sub_100C9A8F8(v214);
        v60 = a16;
        v153 = a19;

        v178 = *(v214[0] + 2);
        if (v178)
        {
          v179 = *&v214[0][8 * v178 + 24];
        }

        else
        {
          v179 = 0;
        }

        v65 = v213;

        *(v78 + 24) = v39;
        *(v78 + 40) = v210;
        *(v78 + 48) = rect;
        *(v78 + 72) = v179;
        *(v78 + 80) = a9;
        *(v78 + 88) = width;
        *(v78 + 96) = MaxX;
        *(v78 + 104) = y;
        *(v78 + 56) = 0;
        *(v78 + 58) = v212;
        swift_beginAccess();
        sub_100C96220(v78);
        swift_endAccess();

        goto LABEL_250;
      }

      swift_beginAccess();
      *(v43 + 16) = v57;

      sub_100C9FBB8();
      *(v43 + 24) = v39;

      v240 = *(v43 + 80);
      *(v43 + 80) = a9;
      *(v43 + 88) = width;
      *(v43 + 96) = MaxX;
      *(v43 + 104) = y;
      v235.origin.x = a9;
      v235.origin.y = width;
      v235.size.width = MaxX;
      v235.size.height = y;
      if (!CGRectEqualToRect(v235, v240))
      {
        *(v43 + 128) = 0;
      }

      *(v43 + 40) = [v210 characterRange];
      *(v43 + 48) = v152;
      swift_beginAccess();
      sub_100C96220(v43);
      swift_endAccess();
      swift_beginAccess();
      sub_100C96220(v43);
      swift_endAccess();

      v153 = a19;
LABEL_250:
      v236.origin.x = a9;
      v236.origin.y = width;
      v236.size.width = MaxX;
      v236.size.height = y;
      MinX = CGRectGetWidth(v236);
      swift_beginAccess();
      if (*v153 < MinX)
      {
        v237.origin.x = a9;
        v237.origin.y = width;
        v237.size.width = MaxX;
        v237.size.height = y;
        MinX = CGRectGetWidth(v237);
        swift_beginAccess();
        *v153 = MinX;
      }

      swift_beginAccess();
      sub_100C8DC98(v65);
      swift_endAccess();

      if (v208)
      {

        return 1;
      }

      v180 = String._bridgeToObjectiveC()();

      v181 = [v180 substringWithRange:{v203, a4}];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v182;

      *&v78 = COERCE_DOUBLE(StringProtocol.contains<A>(_:)());

      if ((v78 & 1) == 0)
      {
        return 1;
      }

      swift_beginAccess();
      if (!__OFADD__(*v60, 1))
      {
        ++*v60;
        return 1;
      }

      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      v144 = _CocoaArrayWrapper.endIndex.getter();
      a9 = MinX + a9;
      if (!v144)
      {
        continue;
      }

      break;
    }

LABEL_185:
    rect = *&v78;
    if (v144 >= 1)
    {
      v145 = 0;
      v146 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
      v147 = v65 & 0xC000000000000001;
      v148 = v65;
      do
      {
        if (v147)
        {
          v149 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v149 = *(v65 + 8 * v145 + 32);
        }

        if (*(v149 + 58) == *(v213 + v146))
        {
          v234.size.width = *(v149 + 96);
          v234.size.height = *(v149 + 104);
          v239.origin.x = *(v149 + 80);
          v234.origin.y = *(v149 + 88);
          *(v149 + 80) = a9;
          v234.origin.x = a9;
          v239.origin.y = v234.origin.y;
          v239.size.width = v234.size.width;
          v239.size.height = v234.size.height;
          if (!CGRectEqualToRect(v234, v239))
          {
            *(v149 + 128) = 0;
          }
        }

        ++v145;
        v65 = v148;
      }

      while (v144 != v145);
      v50 = v213;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_266:
  __break(1u);

  __break(1u);
  return result;
}

int64_t sub_100C8D73C(uint64_t a1)
{
  v3 = v1[1];
  v4 = v3 + 32;
  v5 = *(v3 + 16);
  if (*v1)
  {
    result = sub_100C7D238(a1, v4, v5, *v1 + 16, *v1 + 32);
    if ((v8 & 1) == 0)
    {
      return sub_100C994B0(result, v7, sub_100C9E75C);
    }

    return 0;
  }

  else
  {
    result = 0;
    if (v5)
    {
      while (*(v4 + 8 * result) != a1)
      {
        if (v5 == ++result)
        {
          return 0;
        }
      }

      v7 = 0;
      return sub_100C994B0(result, v7, sub_100C9E75C);
    }
  }

  return result;
}

void sub_100C8D7C8()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v4 + 32);
        v9 = *(v1 + 8 * v2 + 24);

LABEL_10:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_100C7D240(v1);
          v10 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v10) = 0;
        }

        v11 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v9;

        if ((v1 & 0x8000000000000000) != 0 || v10)
        {
          v1 = sub_100C7D240(v1);
          v11 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v11 + 16))
        {
          goto LABEL_24;
        }

        *(v11 + 8 * v2 + 24) = v8;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v12 = v2 - 2;
        --v2;
        if (v4 >= v12)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }

      v2 = _CocoaArrayWrapper.endIndex.getter();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

uint64_t sub_100C8D97C()
{
  result = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return result;
  }

  v4 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  v21 = v0;
  if (result)
  {
    v5 = v4;
  }

  else
  {
LABEL_18:
    result = sub_100C76360(v4);
    v5 = result;
  }

  v6 = 0;
  v7 = 56 * v2;
  v8 = 1;
  while (1)
  {
    if (v8 - 1 == v3)
    {
      goto LABEL_7;
    }

    v10 = *(v5 + 16);
    if (v8 - 1 >= v10)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v3 >= v10)
    {
      goto LABEL_17;
    }

    v11 = v5 + v6;
    v12 = *(v5 + v6 + 48);
    v22 = *(v5 + v6 + 56);
    v23 = *(v5 + v6 + 32);
    v13 = *(v5 + v6 + 72);
    v14 = *(v5 + v6 + 80);
    v2 = v5 + v7;
    v16 = *(v5 + v7 - 8);
    v15 = *(v5 + v7);
    v18 = *(v5 + v7 + 8);
    v17 = *(v5 + v7 + 16);
    v19 = *(v5 + v7 + 24);
    *(v11 + 32) = *(v5 + v7 - 24);
    *(v11 + 48) = v16;
    *(v11 + 56) = v15;
    *(v11 + 64) = v18;
    *(v11 + 72) = v17;
    *(v11 + 80) = v19;
    v20 = v5;
    v24 = *(v5 + 16);

    if (v3 >= v24)
    {
      break;
    }

    v4 = *v2;
    *(v2 - 24) = v23;
    *(v2 - 8) = v12;
    *v2 = v22;
    *(v2 + 16) = v13;
    *(v2 + 24) = v14;

    v5 = v20;
LABEL_7:
    --v3;
    v7 -= 56;
    v6 += 56;
    if (v8++ >= v3)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  *v21 = v5;
  return result;
}

void sub_100C8DAEC()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2 >= 2)
  {
    v3 = v2 - 1;
    v4 = 56 * v2 - 24;
    v5 = 80;
    v6 = 1;
    while (1)
    {
      v7 = *(v1 + 2);
      if (v6 - 1 >= v7)
      {
        break;
      }

      if (v3 >= v7)
      {
        goto LABEL_12;
      }

      v21 = *&v1[v5 - 48];
      v8 = *&v1[v5 - 24];
      v9 = *&v1[v5 - 16];
      v19 = *&v1[v5 - 8];
      v20 = *&v1[v5 - 32];
      v18 = v1[v5];
      v10 = *&v1[v4];
      v11 = *&v1[v4 + 8];
      v12 = *&v1[v4 + 24];
      v13 = *&v1[v4 + 32];
      v23 = *&v1[v4 + 40];
      v24 = *&v1[v4 + 16];
      v22 = v1[v4 + 48];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_100C9A780(v1);
      }

      if ((v6 - 1) >= *(v1 + 2))
      {
        goto LABEL_13;
      }

      v14 = &v1[v5];
      *(v14 - 6) = v10;
      *(v14 - 5) = v11;
      *(v14 - 4) = v24;
      *(v14 - 3) = v12;
      *(v14 - 2) = v13;
      *(v14 - 1) = v23;
      *v14 = v22;

      if (v3 >= *(v1 + 2))
      {
        goto LABEL_14;
      }

      v15 = &v1[v4];
      *v15 = v21;
      *(v15 + 2) = v20;
      *(v15 + 3) = v8;
      *(v15 + 4) = v9;
      *(v15 + 5) = v19;
      v15[48] = v18;

      *v17 = v1;
      --v3;
      v4 -= 56;
      v5 += 56;
      if (v6++ >= v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

unint64_t sub_100C8DC98(unint64_t result)
{
  v2 = v1;
  v20 = result;
  if (result >> 62)
  {
LABEL_35:
    result = _CocoaArrayWrapper.endIndex.getter();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  v4 = 0;
  while (1)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v4 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v5 = *(v20 + 32 + 8 * v4);

      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    v8 = *v2;
    v7 = v2[1];
    v9 = (v7 + 32);
    v10 = *(v7 + 16);
    if (*v2)
    {
      sub_100C7D238(v5, v9, v10, v8 + 16, v8 + 32);
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (v10)
    {
      while (*v9 != v5)
      {
        ++v9;
        if (!--v10)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_6;
    }

LABEL_17:

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v12 = v2[1];
    v13 = *(v12 + 16);
    if (!v8)
    {
      if (v13 > 0xF)
      {
        v14 = 0;
LABEL_24:
        v15 = static _HashTable.scale(forCapacity:)();
        if (v14 <= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        v17 = sub_100C969C0(v12, v16, 0, v14);

        *v2 = v17;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() >= v13)
    {
      break;
    }

    v14 = *(v8 + 24) & 0x3FLL;
    if (v13 > 0xF || v14)
    {
      goto LABEL_24;
    }

    *v2 = 0;
LABEL_7:
    if (v4 == v3)
    {
      return result;
    }
  }

  result = swift_isUniquelyReferenced_native();
  v18 = *v2;
  if ((result & 1) == 0)
  {
    if (!v18)
    {
      goto LABEL_38;
    }

    v19 = _HashTable.copy()();

    *v2 = v19;
    v18 = v19;
  }

  if (v18)
  {
    _HashTable.UnsafeHandle.subscript.setter();
LABEL_6:

    goto LABEL_7;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id sub_100C8DF2C(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v54 = a1;
  v3 = type metadata accessor for Locale.Language();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BBA48);
  __chkstk_darwin();
  v7 = &v47 - v6;
  sub_10010FC20(&qword_1011BBA50);
  __chkstk_darwin();
  v9 = &v47 - v8;
  v10 = v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v11 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 288);
  v12 = 264;
  if (!*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
  {
    v12 = 272;
  }

  v13 = *(v10 + v12);
  v14 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 288);
  v52 = v14;
  if (!v11)
  {
    if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) == 1)
    {
      v15 = 360;
      if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind))
      {
        v15 = 384;
      }
    }

    else
    {
      v15 = 368;
    }

    v14 = *(v10 + v15);
    v16 = v14;
  }

  v50 = v9;
  sub_10010FC20(&unk_1011BD910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  v51 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v53 = inited + 32;
  v18 = sub_100009F78(0, &qword_1011BD920);
  *(inited + 40) = v13;
  *(inited + 64) = v18;
  *(inited + 72) = NSForegroundColorAttributeName;
  v19 = sub_10010FC20(&qword_1011BC538);
  *(inited + 80) = v14;
  *(inited + 104) = v19;
  *(inited + 112) = NSLanguageIdentifierAttributeName;
  v20 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  swift_beginAccess();
  sub_1000089F8(v2 + v20, v7, &qword_1011BBA48);
  if ((*(v4 + 48))(v7, 1, v3))
  {
    v21 = v14;
    v22 = NSLanguageIdentifierAttributeName;
    v23 = v13;
    v24 = v52;
    v25 = v51;
    v26 = NSForegroundColorAttributeName;
    sub_1000095E8(v7, &qword_1011BBA48);
    v27 = v13;
LABEL_14:
    v38 = (inited + 120);
    *(inited + 144) = &type metadata for String;
    goto LABEL_15;
  }

  v28 = v49;
  (*(v4 + 16))(v49, v7, v3);
  v48 = v14;
  v29 = NSLanguageIdentifierAttributeName;
  v30 = v13;
  v31 = v13;
  v32 = v52;
  v33 = v51;
  v34 = NSForegroundColorAttributeName;
  sub_1000095E8(v7, &qword_1011BBA48);
  v35 = v50;
  Locale.Language.languageCode.getter();
  (*(v4 + 8))(v28, v3);
  v36 = type metadata accessor for Locale.LanguageCode();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_1000095E8(v35, &qword_1011BBA50);
    v27 = v30;
    v21 = v48;
    goto LABEL_14;
  }

  v45 = Locale.LanguageCode.identifier.getter();
  v39 = v46;
  (*(v37 + 8))(v35, v36);
  v38 = (inited + 120);
  *(inited + 144) = &type metadata for String;
  if (v39)
  {
    *v38 = v45;
    v27 = v30;
    v21 = v48;
    goto LABEL_16;
  }

  v27 = v30;
  v21 = v48;
LABEL_15:
  *v38 = 0;
  v39 = 0xE000000000000000;
LABEL_16:
  *(inited + 128) = v39;
  sub_100C76B50(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011BC080);
  swift_arrayDestroy();
  v40 = objc_allocWithZone(NSAttributedString);
  v41 = String._bridgeToObjectiveC()();
  _s3__C3KeyVMa_2(0);
  sub_100C9DE48(&qword_1011BD930, _s3__C3KeyVMa_2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v43 = [v40 initWithString:v41 attributes:isa];

  return v43;
}

void sub_100C8E50C(char a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  v5 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8];
  if (!v5)
  {
    goto LABEL_11;
  }

  v8 = *v4;
  v9 = String.lowercased()();
  v10 = String.lowercased()();
  if (v9._countAndFlagsBits == v10._countAndFlagsBits && v9._object == v10._object)
  {

    goto LABEL_10;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {

LABEL_10:

LABEL_11:
    v13 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v14 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v13 = 1;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
LABEL_12:

    sub_100C9DE90(v14);
    return;
  }

  v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
  v16 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel];
  if (!v16 || (v17 = [v16 attributedText]) == 0)
  {
    v23 = v4[1];
LABEL_24:
    if (v23)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v18 = v17;
  v19 = [v17 string];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = v4[1];
  if (!v22)
  {
    goto LABEL_24;
  }

  if (!v23)
  {

    goto LABEL_30;
  }

  if (v20 == *v4 && v23 == v22)
  {

    if (a1)
    {
      goto LABEL_30;
    }

LABEL_26:

    return;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v42 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if ((a1 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_30:
  v24 = *&v2[v15];
  if (v24)
  {
    v25 = *&v2[v15];
  }

  else
  {
    v25 = [objc_allocWithZone(UILabel) init];
    [v25 setNumberOfLines:0];
    [v25 setClipsToBounds:0];
    [v2 addSubview:v25];
    v26 = *&v2[v15];
    *&v2[v15] = v25;

    v27 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v28 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v27 = 0u;
    *(v27 + 1) = 0u;
    *(v27 + 4) = 0;
    sub_100C9DE90(v28);
    v24 = 0;
  }

  v29 = 264;
  if (!*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8])
  {
    v29 = 272;
  }

  v30 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + v29];
  v31 = v24;
  v43 = v30;
  v32 = sub_100C8DF2C(v8, v5);

  [v32 boundingRectWithSize:1 options:0 context:{a2, INFINITY}];
  v34 = v33;
  v36 = v35;
  Height = CGRectGetHeight(v3[2]);
  v38 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 296];
  Width = CGRectGetWidth(v3[2]);
  if (v34 <= Width)
  {
    v34 = Width;
  }

  v40 = Height + v38;
  [v25 setTextAlignment:*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment]];

  v41 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  if (*v41)
  {

    v14 = *v41;
    *v41 = v32;
    *(v41 + 1) = 0;
    *(v41 + 2) = v40;
    *(v41 + 3) = v34;
    *(v41 + 4) = v36;
    goto LABEL_12;
  }

  [v25 setAttributedText:v32];
  [v25 setFrame:{0.0, v40, v34, v36}];
}

void sub_100C8E9AC(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, NSObject *a6@<X5>, os_log_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, CGFloat a10@<D1>)
{
  v734 = a6;
  v735 = a5;
  v732 = a3;
  v18 = type metadata accessor for Locale.Language();
  v736 = *(v18 - 1);
  __chkstk_darwin();
  v20 = (&v690 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011BBA48);
  __chkstk_darwin();
  v733 = &v690 - v21;
  sub_10010FC20(&qword_1011BBA50);
  __chkstk_darwin();
  object = &v690 - v22;
  sub_10010FC20(&qword_1011BBA78);
  __chkstk_darwin();
  v25 = &v690 - v24;
  v26 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8);
  v27 = 0.0;
  if (*&v26 == 0.0)
  {
    goto LABEL_178;
  }

  v28 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
  v742 = a4;
  if (a4 >> 62)
  {
    goto LABEL_177;
  }

  v29 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = v29 - 1;
  if (v29 < 1)
  {
LABEL_178:
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 1;
    goto LABEL_179;
  }

LABEL_4:
  v729 = v25;
  v730 = v28;
  v712 = v30;
  v713 = v29;
  v724 = a7;
  v719 = a8;
  v737 = v10;
  v716 = (v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v731 = v26;

  v723 = String._bridgeToObjectiveC()();

  v759 = a1;
  v760 = a2;
  v757 = a1;
  v758 = a2;
  swift_retain_n();
  swift_retain_n();

  v755 = sub_100C8B79C(v31);
  v756 = v32;
  isa = v32[2].isa;
  v727 = object;
  v728 = v18;
  v726 = v20;
  if (!isa)
  {
    goto LABEL_9;
  }

  v34 = v32[4].isa;
  v35 = v32[isa + 3].isa;

  if (!v35)
  {
    goto LABEL_9;
  }

  if (*(v35 + 11) >= *(v34 + 11))
  {

LABEL_9:
    v722 = 0;
    v18 = a2;
    goto LABEL_10;
  }

  sub_100C8DAEC();
  sub_100C96888(sub_100C96C18);

  v722 = 1;
  v18 = v758;
LABEL_10:
  v20 = &v766;
  a2 = _swiftEmptyArrayStorage;
  v754 = _swiftEmptyArrayStorage;
  v753 = sub_100C76DB0(_swiftEmptyArrayStorage);
  v739 = *(v18 + 2);
  v740 = v18;
  if (!v739)
  {
    v744 = 0;
    object = _swiftEmptyArrayStorage;
    v91 = _swiftEmptyArrayStorage[2];
    if (!v91)
    {
      goto LABEL_114;
    }

    goto LABEL_100;
  }

  v744 = 0;
  v36 = 0;
  v738 = (v18 + 4);
  object = _swiftEmptyArrayStorage;
  do
  {
    if (v36 >= *(v18 + 2))
    {
      __break(1u);
      goto LABEL_160;
    }

    location = object;
    v10 = 56;
    v37 = &v738[7 * v36];
    v38 = *&v37[4].isa;
    v813 = *&v37[2].isa;
    v814 = v38;
    v812 = *&v37->isa;
    v815 = v37[6].isa;
    v816 = v813;
    v39 = v38;
    v817 = v38;
    *&v805 = _swiftEmptyArrayStorage;
    a7 = v756;
    if (v756[2].isa)
    {
      v40 = v755;
      a1 = &v756[4];
      v41 = *&v812;
      v42 = *(v814 + 16);
      sub_100118E9C(&v816, v809);
      sub_1000089F8(&v817, v809, &qword_1011BC0A0);
      object = v39 + 56 * v42 - 16;
      v10 = a7[2].isa;
      v741 = v40;

      *&v44 = 0.0;
      while (1)
      {
        if (v44 >= v10)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:

          a7 = v36;
          goto LABEL_139;
        }

        v40 = *(a1 + 8 * v44);
        if (v42)
        {
          if (v42 > *(v39 + 16))
          {
            __break(1u);
            goto LABEL_123;
          }

          v43 = *object;
          if (v41 > *object)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v43 = 0.0;
          if (v41 > 0.0)
          {
            goto LABEL_119;
          }
        }

        v46 = *(v40 + 16);
        v47 = *(v40 + 24);
        if (v46 > v47)
        {
          goto LABEL_120;
        }

        v48 = v46 == v47 || v41 == v43;
        v49 = !v48 && v43 > v46;
        if (v49 && v47 > v41)
        {
          break;
        }

LABEL_21:
        if (++v44 == v10)
        {

          a2 = v805;
          v18 = v740;
          v20 = &v766;
          goto LABEL_52;
        }
      }

      swift_retain_n();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v805 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v805 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v725 = *((v805 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v51 = v756 + 4;
      v52 = v756[2].isa;
      if (v755)
      {
        v53 = sub_100C7D238(v40, v51, v52, v755 + 16, v755 + 32);
        if (v54)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (!v52)
        {
          goto LABEL_20;
        }

        v53 = 0;
        while (v51[v53].isa != v40)
        {
          if (v52 == ++v53)
          {
            goto LABEL_20;
          }
        }

        v45 = 0;
      }

      sub_100C994B0(v53, v45, sub_100C9E75C);

LABEL_20:

      v10 = a7[2].isa;
      v744 = v40;
      goto LABEL_21;
    }

    sub_100118E9C(&v816, v809);
    sub_1000089F8(&v817, v809, &qword_1011BC0A0);
LABEL_52:
    a8 = a2 >> 62;
    if (!(a2 >> 62))
    {
      object = location;
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

LABEL_54:
      v10 = a2 & 0xC000000000000001;
      if ((a2 & 0xC000000000000001) != 0)
      {
        a7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v55 = a2 & 0xFFFFFFFFFFFFFF8;
        if (!a8)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_162;
        }

        a7 = *(a2 + 32);

        v55 = a2 & 0xFFFFFFFFFFFFFF8;
        if (!a8)
        {
LABEL_57:
          v56 = *(v55 + 16);
          if (v56)
          {
            goto LABEL_58;
          }

LABEL_78:

          goto LABEL_79;
        }
      }

      v56 = _CocoaArrayWrapper.endIndex.getter();
      if (v56)
      {
LABEL_58:
        v57 = __OFSUB__(v56, 1);
        v58 = v56 - 1;
        if (v57)
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          if (v10 == *(a8 + 40))
          {
LABEL_167:
            v183 = a1;
            v184 = v732;
            v185 = sub_100C7D24C(v732);
            if (v185)
            {
              v186 = v185 - 1;
              if (__OFSUB__(v185, 1))
              {
                __break(1u);
              }

              else
              {
                sub_100C7135C(v185 - 1, (v184 & 0xC000000000000001) == 0, v184);
                if ((v184 & 0xC000000000000001) == 0)
                {
                  v187 = *(v184 + 8 * v186 + 32);

                  goto LABEL_171;
                }
              }

              v187 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_171:
              v188 = sub_100C773C4(a7);

              a1 = v183;
              if (v188 > 0)
              {
                v741 = v187;
                if (qword_1011BB880 != -1)
                {
                  goto LABEL_569;
                }

                goto LABEL_173;
              }
            }

            else
            {

              a1 = v183;
            }

LABEL_153:
            if (qword_1011BB880 != -1)
            {
              swift_once();
            }

            v159 = type metadata accessor for Logger();
            sub_1000060E4(v159, static Logger.lyrics);
            v160 = swift_allocObject();
            v161 = v737;
            *(v160 + 16) = v737;
            v162 = v161;
            v163 = Logger.logObject.getter();
            v164 = static os_log_type_t.default.getter();
            v165 = swift_allocObject();
            *(v165 + 16) = 34;
            v166 = swift_allocObject();
            *(v166 + 16) = 8;
            v167 = swift_allocObject();
            *(v167 + 16) = sub_100C9E760;
            *(v167 + 24) = v160;
            v168 = swift_allocObject();
            *(v168 + 16) = sub_100C9E754;
            *(v168 + 24) = v167;
            sub_10010FC20(&qword_1011BBAD8);
            v169 = swift_allocObject();
            *(v169 + 16) = xmmword_100EBE260;
            *(v169 + 32) = sub_100C9E7DC;
            *(v169 + 40) = v165;
            *(v169 + 48) = sub_100C9E7DC;
            *(v169 + 56) = v166;
            *(v169 + 64) = sub_100C9E734;
            *(v169 + 72) = v168;
            swift_setDeallocating();
            sub_10010FC20(&qword_1011BC0E0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v163, v164))
            {
              v170 = swift_slowAlloc();
              v742 = swift_slowAlloc();
              *&v777 = v742;
              *v170 = 136446210;
              v171 = v716[1];
              v791._countAndFlagsBits = *v716;
              v791._object = v171;
              v784 = 10519010;
              v785 = 0xA300000000000000;
              *&v781[0] = 44226;
              *(&v781[0] + 1) = 0xA200000000000000;
              sub_100009988();
              v172 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              location = v162;
              v791._countAndFlagsBits = v172;
              v791._object = v173;
              v174 = String.nonBreakingSpace.unsafeMutableAddressor();
              v175 = v174[1];
              v784 = *v174;
              v785 = v175;
              *&v781[0] = 0x3B7073626E26;
              *(&v781[0] + 1) = 0xE600000000000000;
              v176 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v178 = v177;

              v791._countAndFlagsBits = v176;
              v791._object = v178;
              v784 = 10;
              v785 = 0xE100000000000000;
              *&v781[0] = 28252;
              *(&v781[0] + 1) = 0xE200000000000000;
              v179 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v181 = v180;

              v182 = sub_1000109A8(v179, v181, &v777);

              *(v170 + 4) = v182;
              _os_log_impl(&_mh_execute_header, v163, v164, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to make it fit with the previous line by forcing a line break after it. New text: %{public}s", v170, 0xCu);
              sub_10000959C(v742);
            }

            a8 = v719;
            sub_100C9580C(*(a1 + 88), *(a1 + 96));

            goto LABEL_158;
          }

LABEL_152:

          goto LABEL_153;
        }

        if (v10)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_164;
          }

          if (v58 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_165;
          }
        }

        v59 = v759;
        v60 = v760;
        a1 = *(v760 + 16);
        if (v759)
        {

          v61 = sub_100C75814(&v812, v60 + 32, a1, (v59 + 16), v59 + 32);
          v63 = v62;
          a1 = v64;

          if (v63)
          {
            goto LABEL_69;
          }

LABEL_68:
          sub_100C99308(v61, a1, v761);
          v768 = v761[1];
          sub_100015BB0(&v768);
          v767 = v762;
          sub_1000095E8(&v767, &qword_1011BC0A0);
        }

        else
        {
          v65 = sub_100C965F0(&v812, v760 + 32, *(v760 + 16));
          if ((v66 & 1) == 0)
          {
            v61 = v65;
            a1 = 0;
            goto LABEL_68;
          }
        }

LABEL_69:
        sub_100118E9C(&v816, v809);
        sub_1000089F8(&v817, v809, &qword_1011BC0A0);
        object = location;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          object = sub_100C70470(0, *(object + 16) + 1, 1, object);
        }

        v68 = *(object + 16);
        v67 = *(object + 24);
        v20 = &v766;
        if (v68 >= v67 >> 1)
        {
          object = sub_100C70470((v67 > 1), v68 + 1, 1, object);
        }

        *(object + 16) = v68 + 1;
        v69 = object + 56 * v68;
        v70 = v812;
        v71 = v813;
        v72 = v814;
        *(v69 + 80) = v815;
        *(v69 + 48) = v71;
        *(v69 + 64) = v72;
        *(v69 + 32) = v70;
        sub_100C82DEC(a2, &v812);

        v18 = v740;
        goto LABEL_13;
      }

      goto LABEL_78;
    }

    v73 = _CocoaArrayWrapper.endIndex.getter();
    object = location;
    if (v73)
    {
      goto LABEL_54;
    }

LABEL_79:

    if (!v744)
    {
      sub_100015BB0(&v816);
      sub_1000095E8(&v817, &qword_1011BC0A0);
LABEL_13:
      a2 = _swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    a2 = _swiftEmptyArrayStorage;
    if (*&v812 > *(&v812 + 1))
    {
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      v730 = v28;
      v731 = v26;
      v213 = v25;
      v29 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v730;
      v26 = v731;
      v25 = v213;
      v30 = v29 - 1;
      if (v29 < 1)
      {
        goto LABEL_178;
      }

      goto LABEL_4;
    }

    v75 = *(v744 + 16);
    v74 = *(v744 + 24);
    if (v75 > v74)
    {
      goto LABEL_176;
    }

    if (v75 == v74 || *&v812 == *(&v812 + 1) || *(&v812 + 1) <= v75 || v74 <= *&v812)
    {
      sub_100015BB0(&v816);
      sub_1000095E8(&v817, &qword_1011BC0A0);
      goto LABEL_14;
    }

    sub_100118E9C(&v816, v809);
    sub_1000089F8(&v817, v809, &qword_1011BC0A0);

    sub_100C82DEC(_swiftEmptyArrayStorage, &v812);
    v76 = v759;
    v77 = v760;
    v78 = *(v760 + 16);
    if (v759)
    {

      v79 = sub_100C75814(&v812, v77 + 32, v78, (v76 + 16), v76 + 32);
      v81 = v80;
      a1 = v82;

      if (v81)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

    v83 = sub_100C965F0(&v812, v760 + 32, *(v760 + 16));
    if ((v84 & 1) == 0)
    {
      v79 = v83;
      a1 = 0;
LABEL_92:
      sub_100C99308(v79, a1, v763);
      v766 = v763[1];
      sub_100015BB0(&v766);
      v765 = v764;
      sub_1000095E8(&v765, &qword_1011BC0A0);
    }

LABEL_93:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      object = sub_100C70470(0, *(object + 16) + 1, 1, object);
    }

    v86 = *(object + 16);
    v85 = *(object + 24);
    if (v86 >= v85 >> 1)
    {
      object = sub_100C70470((v85 > 1), v86 + 1, 1, object);
    }

    *(object + 16) = v86 + 1;
    v87 = object + 56 * v86;
    v88 = v812;
    v89 = v813;
    v90 = v814;
    *(v87 + 80) = v815;
    *(v87 + 48) = v89;
    *(v87 + 64) = v90;
    *(v87 + 32) = v88;
LABEL_14:
    ++v36;
  }

  while (v36 != v739);
  v754 = object;
  v91 = *(object + 16);
  if (!v91)
  {
LABEL_114:

LABEL_115:

    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 1;
    goto LABEL_116;
  }

LABEL_100:
  v92 = *(object + 48);
  v93 = *(object + 56);
  v44 = *(object + 64);
  v94 = *(object + 72);
  v95 = *(object + 80);
  v795 = *(object + 32);
  v796 = v92;
  v797 = v93;
  v798 = v44;
  v799 = v94;
  v800 = v95;
  v96 = v91 - 1;
  sub_100C7133C(v91 - 1, 1, object);
  v97 = object + 32 + 56 * v96;
  v98 = *(v97 + 16);
  v99 = *(v97 + 24);
  v40 = *(v97 + 32);
  v100 = *(v97 + 40);
  v101 = *(v97 + 48);
  v769 = *v97;
  v770 = v98;
  v771 = v99;
  v772 = v40;
  v773 = v100;
  v774 = v101;
  a7 = v753;
  v738 = v93;

  v725 = v99;

  v102 = sub_100C82D44(&v769, a7);
  v739 = v40;
  v741 = v44;
  if (!v102)
  {
    goto LABEL_139;
  }

  v103 = v102;
  *&v781[0] = v102;
  if (v722)
  {
    sub_100C8D7C8();
    v103 = *&v781[0];
  }

  if (!sub_100C7D24C(v103))
  {

    goto LABEL_139;
  }

  v104 = v103 & 0xC000000000000001;
  sub_100C7135C(0, (v103 & 0xC000000000000001) == 0, v103);
  v36 = a7;
  if ((v103 & 0xC000000000000001) != 0)
  {
    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v39 = *(v103 + 32);
  }

  v105 = sub_100C7D24C(v103);
  if (!v105)
  {
    goto LABEL_121;
  }

  if (__OFSUB__(v105, 1))
  {
    goto LABEL_544;
  }

  sub_100C7135C(v105 - 1, v104 == 0, v103);
  if (v104)
  {
    goto LABEL_545;
  }

  while (2)
  {

    sub_100CA47DC();
    v106 = *(v40 + 16);
    a7 = v36;
    if (!v106)
    {
LABEL_123:
      if (v43 != 0.0)
      {
        v107 = 0.0;
        goto LABEL_125;
      }

      goto LABEL_138;
    }

    v107 = *(v40 + 56 * v106 - 16);
    if (v43 == v107)
    {
LABEL_138:

      goto LABEL_139;
    }

LABEL_125:
    v20 = a7;
    v112 = *&v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words];
    v113 = *(v112 + 16);
    if (!v113)
    {

      a7 = v20;
      goto LABEL_139;
    }

    sub_100C7133C(v113 - 1, 1, *&v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words]);
    v114 = *(v112 + 56 * v113 + 8);
    v115 = *(v114 + 16);
    if (v115)
    {
      v116 = v107 == *(v114 + 56 * v115 - 16);
    }

    else
    {
      v116 = v107 == 0.0;
    }

    a7 = v20;
    if (!v116 || *(v39 + 88) < 1)
    {
      goto LABEL_138;
    }

    location = object;
    v810 = *(v39 + 48);
    v117 = *(v39 + 32);
    v809[0] = *(v39 + 16);
    v809[1] = v117;
    v811 = *(v39 + 64);
    v818 = v117;
    v819 = v810;
    v118 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v119 = v737;
    swift_beginAccess();
    v120 = *&v119[v118];
    sub_100118E9C(&v818, &v805);
    sub_1000089F8(&v819, &v805, &qword_1011BC0A0);

    sub_100C82D94(v809, v120);
    v122 = v121;

    sub_100015BB0(&v818);
    sub_1000095E8(&v819, &qword_1011BC0A0);
    if (v122)
    {

      v123 = *(v39 + 32);
      v805 = *(v39 + 16);
      v806 = v123;
      v807 = *(v39 + 48);
      v808 = *(v39 + 64);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v791._countAndFlagsBits = *&v119[v118];
      *&v119[v118] = 0x8000000000000000;
      sub_100C74178(1, &v805, isUniquelyReferenced_nonNull_native);
      *&v119[v118] = v791._countAndFlagsBits;
      swift_endAccess();
      sub_100C95694(v39);
      if (qword_1011BB880 != -1)
      {
        swift_once();
      }

      v125 = type metadata accessor for Logger();
      sub_1000060E4(v125, static Logger.lyrics);
      v126 = swift_allocObject();
      *(v126 + 16) = v119;
      v127 = v119;
      v36 = Logger.logObject.getter();
      v128 = static os_log_type_t.default.getter();
      v129 = swift_allocObject();
      *(v129 + 16) = 34;
      v130 = swift_allocObject();
      *(v130 + 16) = 8;
      v131 = swift_allocObject();
      *(v131 + 16) = sub_100C9E760;
      *(v131 + 24) = v126;
      v132 = swift_allocObject();
      *(v132 + 16) = sub_100C9E754;
      *(v132 + 24) = v131;
      sub_10010FC20(&qword_1011BBAD8);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_100EBE260;
      *(v133 + 32) = sub_100C9E7DC;
      *(v133 + 40) = v129;
      *(v133 + 48) = sub_100C9E7DC;
      *(v133 + 56) = v130;
      *(v133 + 64) = sub_100C9E734;
      *(v133 + 72) = v132;
      swift_setDeallocating();
      sub_10010FC20(&qword_1011BC0E0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (os_log_type_enabled(v36, v128))
      {
        v134 = swift_slowAlloc();
        location = swift_slowAlloc();
        *&v777 = location;
        *v134 = 136446210;
        v135 = v716[1];
        *&v801 = *v716;
        *(&v801 + 1) = v135;
        v791._countAndFlagsBits = 10519010;
        v791._object = 0xA300000000000000;
        v784 = 44226;
        v785 = 0xA200000000000000;
        sub_100009988();
        *&v801 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        *(&v801 + 1) = v136;
        v137 = String.nonBreakingSpace.unsafeMutableAddressor();
        v138 = v137[1];
        v791._countAndFlagsBits = *v137;
        v791._object = v138;
        v784 = 0x3B7073626E26;
        v785 = 0xE600000000000000;
        v139 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        LODWORD(v742) = v128;
        v141 = v140;

        *&v801 = v139;
        *(&v801 + 1) = v141;
        v791._countAndFlagsBits = 10;
        v791._object = 0xE100000000000000;
        v784 = 28252;
        v785 = 0xE200000000000000;
        v142 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v144 = v143;

        v145 = sub_1000109A8(v142, v144, &v777);

        *(v134 + 4) = v145;
        _os_log_impl(&_mh_execute_header, v36, v742, "[Transliteration] Last transliterated word in this line has more original words to match in the next line, and the next line only contains words that match this transliteration. Insert a line break before this word to make sure they are all in the same line. New text: %{public}s", v134, 0xCu);
        sub_10000959C(location);

        goto LABEL_220;
      }

LABEL_162:

LABEL_219:

LABEL_220:

      goto LABEL_410;
    }

LABEL_160:

    a7 = v20;
    v40 = v739;
    v44 = v741;
LABEL_139:
    v146 = v756[2].isa;
    v703 = v755;
    v704 = v756;
    v711 = a7;
    if (!v146)
    {
      goto LABEL_188;
    }

    v147 = v756[4].isa;
    if (!sub_100C7D24C(v742))
    {
      goto LABEL_188;
    }

    v148 = v742;
    v149 = v742 & 0xC000000000000001;
    sub_100C7135C(0, (v742 & 0xC000000000000001) == 0, v742);
    if (v149)
    {

      v214 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      if (v147 == v214)
      {
LABEL_144:
        v150 = v737;
        if (v735 >= 1)
        {
          v807 = *(v147 + 48);
          v151 = *(v147 + 32);
          v805 = *(v147 + 16);
          v806 = v151;
          v808 = *(v147 + 64);
          v820 = v151;
          v821 = v807;
          v152 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
          swift_beginAccess();
          v153 = *&v150[v152];
          sub_100118E9C(&v820, &v801);
          sub_1000089F8(&v821, &v801, &qword_1011BC0A0);

          sub_100C82D94(&v805, v153);
          v155 = v154;

          sub_100015BB0(&v820);
          sub_1000095E8(&v821, &qword_1011BC0A0);
          if (v155)
          {

            v156 = *(v147 + 32);
            v801 = *(v147 + 16);
            v802 = v156;
            v803 = *(v147 + 48);
            v804 = *(v147 + 64);
            swift_beginAccess();
            v157 = swift_isUniquelyReferenced_nonNull_native();
            v784 = *&v150[v152];
            *&v150[v152] = 0x8000000000000000;
            sub_100C74178(1, &v801, v157);
            *&v150[v152] = v784;
            swift_endAccess();
            a1 = v147;
            if (v704[2].isa >= 2)
            {
              a7 = v739;
              if (v713 != 1)
              {
                v10 = v704[5].isa;
                a8 = v742;
                sub_100C7135C(1uLL, v149 == 0, v742);
                if (!v149)
                {
                  goto LABEL_166;
                }

                v158 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                swift_unknownObjectRelease();

                if (v10 == v158)
                {
                  goto LABEL_167;
                }
              }
            }

            goto LABEL_152;
          }

          v40 = v739;
          goto LABEL_187;
        }
      }

LABEL_187:
      v44 = v741;
      goto LABEL_188;
    }

    if (v147 == *(v148 + 32))
    {

      goto LABEL_144;
    }

LABEL_188:
    v215 = sub_100C773C4(v44);
    v217 = v216;
    v829.location = sub_100C773C4(v40);
    v829.length = v218;
    v828.location = v215;
    v828.length = v217;
    v219 = NSUnionRange(v828, v829);
    v220 = String._bridgeToObjectiveC()();
    location = v219.location;
    v221 = [v220 substringWithRange:{v219.location, v219.length}];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v721 = String.trim()();

    v44 = v734;
    v36 = v735;
    v222 = [v723 substringWithRange:{v735, v734}];
    v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v224;

    v225 = String.trim()();
    object = v225._object;
    *&v801 = v223;
    *(&v801 + 1) = v39;
    countAndFlagsBits = v225._countAndFlagsBits;
    v791 = v225;
    v226 = type metadata accessor for Locale();
    v227 = v729;
    (*(*(v226 - 8) + 56))(v729, 1, 1, v226);
    v228 = sub_100009988();

    v702 = v228;
    StringProtocol.range<A>(of:options:range:locale:)();
    v40 = v229;
    sub_1000095E8(v227, &qword_1011BBA78);
    v715 = v225._object;

    if ((v40 & 1) == 0)
    {
      v230 = _NSRange.init(range:in:)();
      v57 = __OFADD__(v36, v230);
      v36 += v230;
      if (!v57)
      {
        v44 = v231;
        goto LABEL_192;
      }

LABEL_541:
      __break(1u);
LABEL_542:
      __break(1u);
LABEL_543:
      __break(1u);
LABEL_544:
      __break(1u);
LABEL_545:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      continue;
    }

    break;
  }

LABEL_192:
  if (qword_1011BB888 != -1)
  {
    goto LABEL_530;
  }

  while (2)
  {
    v232 = sub_100C6E398(3, *(static LyricsOptionsManager.shared + 40));
    v701 = a10;
    v732 = v44;
    v730 = v36;
    if (!v232)
    {
      goto LABEL_199;
    }

    v233 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
    v234 = v737;
    swift_beginAccess();
    v235 = v733;
    sub_1000089F8(&v234[v233], v733, &qword_1011BBA48);
    v236 = v736;
    v237 = v728;
    if ((*(*&v736 + 48))(v235, 1, v728))
    {
      v238 = &qword_1011BBA48;
      v239 = v235;
      goto LABEL_198;
    }

    v240 = v726;
    (*(*&v236 + 16))(v726, v235, v237);
    sub_1000095E8(v235, &qword_1011BBA48);
    v241 = v727;
    Locale.Language.languageCode.getter();
    (*(*&v236 + 8))(v240, v237);
    v242 = type metadata accessor for Locale.LanguageCode();
    v243 = *(v242 - 8);
    if ((*(v243 + 48))(v241, 1, v242) == 1)
    {
      v238 = &qword_1011BBA50;
      v239 = v241;
LABEL_198:
      sub_1000095E8(v239, v238);
LABEL_199:
      v244 = 0;
      v245 = 0xE000000000000000;
    }

    else
    {
      v244 = Locale.LanguageCode.identifier.getter();
      v245 = v309;
      (*(v243 + 8))(v241, v242);
    }

    sub_10010FC20(&unk_1011BD910);
    v246 = swift_allocObject();
    *(v246 + 16) = xmmword_100EBDC20;
    *(v246 + 32) = NSFontAttributeName;
    v247 = v737;
    object = &v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs];
    v248 = *&v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 312];
    v249 = sub_100009F78(0, &qword_1011BD920);
    *(v246 + 40) = v248;
    *(v246 + 64) = v249;
    *(v246 + 72) = NSLanguageIdentifierAttributeName;
    *(v246 + 104) = &type metadata for String;
    *(v246 + 80) = v244;
    *(v246 + 88) = v245;
    v250 = NSFontAttributeName;
    v251 = v248;
    v252 = NSLanguageIdentifierAttributeName;

    sub_100C76B50(v246);
    swift_setDeallocating();
    sub_10010FC20(&qword_1011BC080);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v253 = objc_allocWithZone(NSAttributedString);
    v254 = *&v721._object;
    v255 = String._bridgeToObjectiveC()();
    _s3__C3KeyVMa_2(0);
    sub_100C9DE48(&qword_1011BD930, _s3__C3KeyVMa_2);
    v256 = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v257 = COERCE_DOUBLE([v253 initWithString:v255 attributes:v256]);

    *&v44 = COERCE_DOUBLE(CTLineCreateWithAttributedString(v257));
    v27 = CTLineRef.bounds.getter();
    a10 = v258;
    v260 = v259;
    v262 = v261;
    v263 = v247[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection];
    v705 = v257;
    if (v263 != 2 && v247[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] == (v263 & 1))
    {
      v296 = _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(&v795, &v769);
      v40 = v711;
      if (v296)
      {
        v831.origin.x = v27;
        v831.origin.y = a10;
        v831.size.width = v260;
        v831.size.height = v262;
        if (CGRectGetWidth(v831) > a9)
        {
          v27 = Int.seconds.getter(0);
          v297 = sub_100C82D44(&v769, v753);
          MaxX = v27;
          if (!v297)
          {
            goto LABEL_428;
          }

          v299 = v297;
          v300 = sub_100C7D24C(v297);
          if (!v300)
          {

            MaxX = v27;
            goto LABEL_428;
          }

          v301 = v300 - 1;
          if (__OFSUB__(v300, 1))
          {
            __break(1u);
          }

          else
          {
            v254 = *&v257;
            sub_100C7135C(v300 - 1, (v299 & 0xC000000000000001) == 0, v299);
            if ((v299 & 0xC000000000000001) == 0)
            {
              v302 = *(v299 + 8 * v301 + 32);

              goto LABEL_229;
            }
          }

          v302 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_229:

          MaxX = CGRectGetMaxX(*(v302 + 176));
          v303 = sub_100C773C4(*(v302 + 48));
          v305 = v304;

          v306 = v724 + v303;
          if (__OFADD__(v303, v724))
          {
            __break(1u);
          }

          else if (!__OFADD__(v730, v732))
          {
            v57 = __OFADD__(v306, v305);
            v307 = &v306[v305];
            if (!v57)
            {
              *&v257 = v254;
              if ((v730 + v732) != v307)
              {

LABEL_383:
                v108 = 0;
                v109 = 0;
                v110 = 0;
                v111 = 1;
                a8 = v719;
                v27 = 0.0;
                goto LABEL_179;
              }

LABEL_428:
              v694 = v44;
              type metadata accessor for TextKitManager();
              swift_allocObject();
              v734 = v257;
              v532 = TextKitManager.init(text:size:)(v734, a9);
              v533 = *(*v532 + 192);
              v735 = v532;
              v534 = v533();
              v742 = v534[2];
              if (v742)
              {
                v535 = 0;
                v740 = (v534 + 4);
                *&v736 = -location;
                v737 = v534;
                v536 = __OFSUB__(0, location);
                LODWORD(location) = v536;
                v109 = _swiftEmptyArrayStorage;
                while (v535 < v534[2])
                {
                  v537 = &v740[7 * v535];
                  v538 = *(v537 + 1);
                  v539 = *(v537 + 2);
                  v540 = *(v537 + 3);
                  v541 = *(v537 + 4);
                  v542 = *(v537 + 5);
                  v254 = COERCE_DOUBLE(*v537);
                  v543 = [*&v254 lineRef];
                  if (!v543)
                  {
                    __break(1u);
LABEL_569:
                    swift_once();
LABEL_173:
                    v189 = type metadata accessor for Logger();
                    sub_1000060E4(v189, static Logger.lyrics);
                    v190 = swift_allocObject();
                    v191 = v737;
                    *(v190 + 16) = v737;
                    v742 = v191;
                    v192 = Logger.logObject.getter();
                    v193 = static os_log_type_t.default.getter();
                    v194 = swift_allocObject();
                    *(v194 + 16) = 34;
                    v195 = swift_allocObject();
                    *(v195 + 16) = 8;
                    v196 = swift_allocObject();
                    *(v196 + 16) = sub_100C9DE2C;
                    *(v196 + 24) = v190;
                    v197 = swift_allocObject();
                    *(v197 + 16) = sub_100C9E754;
                    *(v197 + 24) = v196;
                    sub_10010FC20(&qword_1011BBAD8);
                    v198 = swift_allocObject();
                    *(v198 + 16) = xmmword_100EBE260;
                    *(v198 + 32) = sub_100C9E7DC;
                    *(v198 + 40) = v194;
                    *(v198 + 48) = sub_100C9E7DC;
                    *(v198 + 56) = v195;
                    *(v198 + 64) = sub_100C9E734;
                    *(v198 + 72) = v197;
                    swift_setDeallocating();
                    sub_10010FC20(&qword_1011BC0E0);
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    LODWORD(v740) = v193;
                    location = v192;
                    if (os_log_type_enabled(v192, v193))
                    {
                      v199 = swift_slowAlloc();
                      v200 = swift_slowAlloc();
                      *&v777 = v200;
                      *v199 = 136446210;
                      v201 = v716[1];
                      v791._countAndFlagsBits = *v716;
                      v791._object = v201;
                      v784 = 10519010;
                      v785 = 0xA300000000000000;
                      *&v781[0] = 44226;
                      *(&v781[0] + 1) = 0xA200000000000000;
                      sub_100009988();
                      v791._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                      v791._object = v202;
                      v203 = String.nonBreakingSpace.unsafeMutableAddressor();
                      v204 = v203[1];
                      v784 = *v203;
                      v785 = v204;
                      *&v781[0] = 0x3B7073626E26;
                      *(&v781[0] + 1) = 0xE600000000000000;
                      v205 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                      v207 = v206;

                      v791._countAndFlagsBits = v205;
                      v791._object = v207;
                      v784 = 10;
                      v785 = 0xE100000000000000;
                      *&v781[0] = 28252;
                      *(&v781[0] + 1) = 0xE200000000000000;
                      v208 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                      v210 = v209;

                      v211 = sub_1000109A8(v208, v210, &v777);

                      *(v199 + 4) = v211;
                      v212 = location;
                      _os_log_impl(&_mh_execute_header, location, v740, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to bring the previous line's last word into this line by forcing a line break before it. New text: %{public}s", v199, 0xCu);
                      sub_10000959C(v200);
                    }

                    else
                    {
                    }

                    sub_100C95694(v741);

                    a8 = v719;
LABEL_158:

LABEL_511:

                    v108 = 0;
                    v111 = 0;
                    v109 = 0;
                    v110 = 0;
                    goto LABEL_179;
                  }

                  v544 = v543;
                  v545 = _swiftEmptyArrayStorage[2];
                  if (v545)
                  {
                    v546 = 0;
                    v547 = &_swiftEmptyArrayStorage[4];
                    do
                    {
                      v549 = *v547++;
                      v548 = v549;
                      if ((v549 & ~v546) == 0)
                      {
                        v548 = 0;
                      }

                      v546 |= v548;
                      --v545;
                    }

                    while (v545);
                  }

                  else
                  {
                    v546 = 0;
                  }

                  [*&v254 boundsWithType:0 options:v546];
                  if (location)
                  {
                    goto LABEL_532;
                  }

                  v552 = sub_100C9C4F8(v538, v539, v540, v541, v550, v551, v544, v754, v721._countAndFlagsBits, v721._object, *&v736, v542, _swiftEmptyArrayStorage);
                  v833.origin.x = v538;
                  v833.origin.y = v539;
                  v833.size.width = v540;
                  v833.size.height = v541;
                  Width = CGRectGetWidth(v833);
                  if (Width > v27)
                  {
                    v27 = Width;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v109 = sub_100C710A8(0, *(v109 + 2) + 1, 1, v109);
                  }

                  v555 = *(v109 + 2);
                  v554 = *(v109 + 3);
                  if (v555 >= v554 >> 1)
                  {
                    v109 = sub_100C710A8((v554 > 1), v555 + 1, 1, v109);
                  }

                  ++v535;

                  *(v109 + 2) = v555 + 1;
                  v556 = &v109[16 * v555];
                  *(v556 + 4) = v552;
                  *(v556 + 5) = v544;
                  v534 = v737;
                  if (v535 == v742)
                  {
                    goto LABEL_452;
                  }
                }

                __break(1u);
LABEL_532:
                __break(1u);
LABEL_533:
                __break(1u);
                goto LABEL_534;
              }

              v109 = _swiftEmptyArrayStorage;
LABEL_452:

              if (v27 - MaxX > 0.0)
              {
                v27 = v27 - MaxX;
              }

              else
              {
                v27 = 0.0;
              }

              v557 = sub_100C82D44(&v769, v753);

              if (v557)
              {
                v558 = sub_100C7D24C(v557);
                if (v558)
                {
                  v559 = v558 - 1;
                  if (__OFSUB__(v558, 1))
                  {
                    __break(1u);
                  }

                  else
                  {
                    sub_100C7135C(v558 - 1, (v557 & 0xC000000000000001) == 0, v557);
                    if ((v557 & 0xC000000000000001) == 0)
                    {
                      v560 = *(v557 + 8 * v559 + 32);

                      goto LABEL_460;
                    }
                  }

                  v560 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_460:

                  sub_100CA4604(v560[22], v560[23], v27 + v560[24], v560[25]);
                }

                else
                {
                }
              }

              else
              {
              }

              v108 = v759;
              v111 = v760;

LABEL_401:
              a8 = v719;
              v110 = v722;
              goto LABEL_179;
            }

LABEL_557:
            __break(1u);
LABEL_558:
            swift_once();
LABEL_425:
            v509 = type metadata accessor for Logger();
            sub_1000060E4(v509, static Logger.lyrics);
            v510 = swift_allocObject();
            *(v510 + 16) = v245;
            v511 = v245;
            v512 = Logger.logObject.getter();
            v513 = static os_log_type_t.default.getter();
            v514 = swift_allocObject();
            *(v514 + 16) = 34;
            v515 = swift_allocObject();
            *(v515 + 16) = 8;
            v516 = swift_allocObject();
            *(v516 + 16) = sub_100C9E760;
            *(v516 + 24) = v510;
            v517 = swift_allocObject();
            *(v517 + 16) = sub_100C9E754;
            *(v517 + 24) = v516;
            sub_10010FC20(&qword_1011BBAD8);
            v518 = swift_allocObject();
            *(v518 + 16) = xmmword_100EBE260;
            *(v518 + 32) = sub_100C9E7DC;
            *(v518 + 40) = v514;
            *(v518 + 48) = sub_100C9E7DC;
            *(v518 + 56) = v515;
            *(v518 + 64) = sub_100C9E734;
            *(v518 + 72) = v517;
            swift_setDeallocating();
            sub_10010FC20(&qword_1011BC0E0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v512, v513))
            {
              v519 = swift_slowAlloc();
              v520 = swift_slowAlloc();
              v747 = v520;
              *v519 = 136446210;
              v521 = v716[1];
              v748 = *v716;
              v749 = v521;
              v750 = 10519010;
              v751 = 0xA300000000000000;
              v745 = 44226;
              v746 = 0xA200000000000000;
              LODWORD(v742) = v513;
              v748 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v749 = v522;
              v523 = String.nonBreakingSpace.unsafeMutableAddressor();
              v524 = v523[1];
              v750 = *v523;
              v751 = v524;
              v745 = 0x3B7073626E26;
              v746 = 0xE600000000000000;
              v525 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v527 = v526;

              v748 = v525;
              v749 = v527;
              v750 = 10;
              v751 = 0xE100000000000000;
              v745 = 28252;
              v746 = 0xE200000000000000;
              v528 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v530 = v529;

              v531 = sub_1000109A8(v528, v530, &v747);

              *(v519 + 4) = v531;
              _os_log_impl(&_mh_execute_header, v512, v742, "[Transliteration][Last word timing check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v519, 0xCu);
              sub_10000959C(v520);

LABEL_507:

              goto LABEL_510;
            }

LABEL_509:

LABEL_510:

            a8 = v719;
            goto LABEL_511;
          }

          __break(1u);
          goto LABEL_557;
        }
      }

      v245 = 1;
      v308 = 1;
      if (v722)
      {
        goto LABEL_241;
      }

      goto LABEL_242;
    }

    v830.origin.x = v27;
    v830.origin.y = a10;
    v830.size.width = v260;
    v830.size.height = v262;
    v264 = CGRectGetWidth(v830);
    v40 = v711;
    if (v264 <= a9)
    {

      goto LABEL_239;
    }

    v40 = v753;
    v265 = sub_100C82D44(&v795, v753);

    if (!v265)
    {
LABEL_238:

      goto LABEL_239;
    }

    if (!sub_100C7D24C(v265))
    {

      goto LABEL_238;
    }

    sub_100C7135C(0, (v265 & 0xC000000000000001) == 0, v265);
    if ((v265 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v39 = *(v265 + 32);
    }

    v266 = sub_100C82D44(&v769, v40);

    if (v266)
    {
      v267 = sub_100C7D24C(v266);
      if (v267)
      {
        v268 = v267;
        v694 = v44;

        v57 = __OFSUB__(v268, 1);
        v269 = v268 - 1;
        if (!v57)
        {
          sub_100C7135C(v269, (v266 & 0xC000000000000001) == 0, v266);
          v27 = 0.0;
          if ((v266 & 0xC000000000000001) == 0)
          {
            v270 = *(v266 + 8 * v269 + 32);

LABEL_212:

            if (v722)
            {
              v271 = v39;
            }

            else
            {
              v271 = v270;
            }

            v272 = v737;
            sub_100C95694(v271);
            if (qword_1011BB880 != -1)
            {
              swift_once();
            }

            v273 = type metadata accessor for Logger();
            sub_1000060E4(v273, static Logger.lyrics);
            v274 = swift_allocObject();
            *(v274 + 16) = v272;
            v275 = v272;
            v276 = Logger.logObject.getter();
            v277 = static os_log_type_t.default.getter();
            v278 = swift_allocObject();
            *(v278 + 16) = 34;
            v279 = swift_allocObject();
            *(v279 + 16) = 8;
            v280 = swift_allocObject();
            *(v280 + 16) = sub_100C9E760;
            *(v280 + 24) = v274;
            v281 = swift_allocObject();
            *(v281 + 16) = sub_100C9E754;
            *(v281 + 24) = v280;
            sub_10010FC20(&qword_1011BBAD8);
            v282 = swift_allocObject();
            *(v282 + 16) = xmmword_100EBE260;
            *(v282 + 32) = sub_100C9E7DC;
            *(v282 + 40) = v278;
            *(v282 + 48) = sub_100C9E7DC;
            *(v282 + 56) = v279;
            *(v282 + 64) = sub_100C9E734;
            *(v282 + 72) = v281;
            swift_setDeallocating();
            sub_10010FC20(&qword_1011BC0E0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v276, v277))
            {
              v283 = swift_slowAlloc();
              v284 = swift_slowAlloc();
              *&v781[0] = v284;
              *v283 = 136446210;
              v285 = v716[1];
              *&v801 = *v716;
              *(&v801 + 1) = v285;
              v791._countAndFlagsBits = 10519010;
              v791._object = 0xA300000000000000;
              v784 = 44226;
              v785 = 0xA200000000000000;
              location = v270;
              LODWORD(v742) = v277;
              *&v801 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              *(&v801 + 1) = v286;
              v287 = String.nonBreakingSpace.unsafeMutableAddressor();
              v288 = v287[1];
              v791._countAndFlagsBits = *v287;
              v791._object = v288;
              v784 = 0x3B7073626E26;
              v785 = 0xE600000000000000;
              v289 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v291 = v290;

              *&v801 = v289;
              *(&v801 + 1) = v291;
              v791._countAndFlagsBits = 10;
              v791._object = 0xE100000000000000;
              v784 = 28252;
              v785 = 0xE200000000000000;
              v292 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v294 = v293;

              v295 = sub_1000109A8(v292, v294, v781);

              *(v283 + 4) = v295;
              _os_log_impl(&_mh_execute_header, v276, v742, "[Transliteration] Directions don't match and transliterated line goes beyond view bounds. Inserting line break. New text: %{public}s", v283, 0xCu);
              sub_10000959C(v284);

              goto LABEL_219;
            }

LABEL_410:

LABEL_411:

            goto LABEL_477;
          }

LABEL_552:
          v270 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_212;
        }

LABEL_551:
        __break(1u);
        goto LABEL_552;
      }

LABEL_239:
    }

    else
    {
    }

    v245 = 0;
    v308 = 0;
    if (v722)
    {
LABEL_241:
      sub_100C8D97C();
      v308 = v245;
    }

LABEL_242:
    if (__OFSUB__(0, location))
    {
      goto LABEL_533;
    }

    v310 = v754;
    v311 = sub_100C9C4F8(v27, a10, v260, v262, v27, a10, v44, v754, v721._countAndFlagsBits, *&v254, -location, 0, _swiftEmptyArrayStorage);
    v752 = v311;
    v312 = sub_100C7D24C(v311);
    v36 = v740;
    if (v312 < 1)
    {

      goto LABEL_383;
    }

    v313 = Int.seconds.getter(0);
    v27 = 0.0;
    if (!v308)
    {

      v108 = v759;
      v111 = v760;
      sub_10010FC20(&qword_1011BC098);
      v109 = swift_allocObject();
      *(v109 + 1) = xmmword_100EBC6B0;
      *(v109 + 4) = v311;
      *(v109 + 5) = *&v44;

      goto LABEL_400;
    }

    if (v722)
    {
      sub_100C8D7C8();
    }

    v690 = v310;
    v39 = v752;
    v707 = sub_100C7D24C(v752);
    if (!v707)
    {

      location = 0;
      v437 = v313;
      v438 = v39;
      goto LABEL_392;
    }

    v727 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v698 = v39 + 32;
    v699 = v39 & 0xFFFFFFFFFFFFFF8;
    v314 = v742;
    v708 = v39 & 0xC000000000000001;
    v709 = v742 & 0xC000000000000001;
    v710 = v39;

    v736 = 0.0;
    *&v731 = 0.0;
    v254 = 0.0;
    v315 = 0;
    v316 = 0;
    v695 = v314 + 40;
    LODWORD(v739) = 1;
    *&v317 = 136446466;
    v696 = v317;
    *&v317 = 136315394;
    v697 = v317;
    v691 = v313;
    v692 = v313;
    LODWORD(v729) = 1;
    v694 = v44;
    v714 = object;
LABEL_252:
    if (v708)
    {
      v318 = object;
      v319 = v315;
      location = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v57 = __OFADD__(v319, 1);
      v320 = v319 + 1;
      if (v57)
      {
        goto LABEL_528;
      }

      break;
    }

    if (v315 >= *(v699 + 16))
    {
      __break(1u);
      goto LABEL_541;
    }

    v318 = object;
    location = *(v698 + 8 * v315);
    v321 = v315;

    v57 = __OFADD__(v321, 1);
    v320 = v321 + 1;
    if (v57)
    {
LABEL_528:
      __break(1u);
LABEL_529:
      __break(1u);
LABEL_530:
      swift_once();
      continue;
    }

    break;
  }

  v718 = v320;
  v322 = *(location + 32);
  v801 = *(location + 16);
  v802 = v322;
  v803 = *(location + 48);
  v804 = *(location + 64);
  v40 = v753;
  if (!*(v753 + 16))
  {
    goto LABEL_269;
  }

  v822 = *(location + 32);
  v823 = v803;
  sub_100118E9C(&v822, &v777);
  v36 = &qword_1011BC0A0;
  sub_1000089F8(&v823, &v777, &qword_1011BC0A0);
  v323 = sub_100C71CF0(&v801);
  v39 = v324;
  sub_100015BB0(&v822);
  sub_1000095E8(&v823, &qword_1011BC0A0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_269;
  }

  v39 = *(*(v40 + 56) + 8 * v323);
  if (!(v39 >> 62))
  {
    object = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (object)
    {
      goto LABEL_262;
    }

LABEL_269:
    if (v739)
    {

      LODWORD(v739) = 1;
    }

    else
    {
      if (v254 != 0.0)
      {
        object = v318;
        if (v316)
        {
          a10 = v736;
          v333 = *(v316 + 144);
          v334 = *(v316 + 152);
          v335 = *(v316 + 160);
          v336 = *(v316 + 168);

          v832.origin.x = v333;
          v832.origin.y = v334;
          v832.size.width = v335;
          v832.size.height = v336;
          v337 = CGRectGetMaxX(v832);
          v338 = location;
          *(location + 144) = v337 + *(v318 + 336);
          sub_100CA4604(*(v338 + 176) + a10, *(v338 + 184), *(v338 + 192), *(v338 + 200));
          v339 = CGRectGetMaxX(*(v338 + 176));
          v340 = v339 - CGRectGetMinX(*(*&v254 + 176));
          if (CGRectGetWidth(*(*&v254 + 176)) >= v340)
          {

            LODWORD(v739) = 0;
            v27 = 0.0;
          }

          else
          {
            v341 = *(*&v254 + 192);
            v342 = v340 - v341 + *(v318 + 336);
            sub_100CA4604(*(*&v254 + 176), *(*&v254 + 184), v341 + v342, *(*&v254 + 200));
            v313 = v313 + v342;
            v27 = 0.0;
            if (CGRectGetMaxX(*(*&v254 + 176)) > a9)
            {
              v343 = *(v316 + 32);
              v775[0] = *(v316 + 16);
              v775[1] = v343;
              v775[2] = *(v316 + 48);
              v776 = *(v316 + 64);
              if (*(v40 + 16))
              {
                v344 = sub_100C71CF0(v775);
                if (v345)
                {
                  v346 = *(*(v40 + 56) + 8 * v344);
                  if (v346 >> 62)
                  {
                    if (_CocoaArrayWrapper.endIndex.getter())
                    {
LABEL_378:
                      v693 = v316;
                      v711 = v40;

                      swift_bridgeObjectRelease_n();
                      sub_100C7135C(0, (v346 & 0xC000000000000001) == 0, v346);
                      if ((v346 & 0xC000000000000001) != 0)
                      {
                        v245 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        v245 = *(v346 + 32);
                      }

                      if (v722)
                      {
                        sub_100C9580C(*(v245 + 88), *(v245 + 96));
                        goto LABEL_535;
                      }

LABEL_534:
                      sub_100C95694(v245);
LABEL_535:
                      if (qword_1011BB880 != -1)
                      {
                        swift_once();
                      }

                      v671 = type metadata accessor for Logger();
                      sub_1000060E4(v671, static Logger.lyrics);
                      v672 = v737;

                      v673 = Logger.logObject.getter();
                      v674 = static os_log_type_t.default.getter();

                      if (os_log_type_enabled(v673, v674))
                      {
                        v675 = swift_slowAlloc();
                        v742 = swift_slowAlloc();
                        v745 = v742;
                        *v675 = v697;
                        v676 = *(*&v254 + 72);
                        v677 = *(*&v254 + 80);

                        v678 = sub_1000109A8(v676, v677, &v745);

                        *(v675 + 4) = v678;
                        *(v675 + 12) = 2082;
                        v679 = v716[1];
                        *&v777 = *v716;
                        *(&v777 + 1) = v679;
                        v748 = 10519010;
                        v749 = 0xA300000000000000;
                        v750 = 44226;
                        v751 = 0xA200000000000000;
                        *&v777 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                        *(&v777 + 1) = v680;
                        v681 = String.nonBreakingSpace.unsafeMutableAddressor();
                        v682 = v681[1];
                        v748 = *v681;
                        v749 = v682;
                        v750 = 0x3B7073626E26;
                        v751 = 0xE600000000000000;
                        v683 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                        v717 = v254;
                        v685 = v684;

                        *&v777 = v683;
                        *(&v777 + 1) = v685;
                        v748 = 10;
                        v749 = 0xE100000000000000;
                        v750 = 28252;
                        v751 = 0xE200000000000000;
                        v686 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                        v688 = v687;

                        v689 = sub_1000109A8(v686, v688, &v745);

                        *(v675 + 14) = v689;
                        _os_log_impl(&_mh_execute_header, v673, v674, "[Transliteration][Empty Map Entry] Word %s crossed view bounds after final adjustment, adding line break. New text: %{public}s", v675, 0x16u);
                        swift_arrayDestroy();
                      }

                      else
                      {
                      }

LABEL_521:

                      goto LABEL_475;
                    }
                  }

                  else if (*((v346 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_378;
                  }
                }
              }
            }

            LODWORD(v739) = 0;
          }
        }

        else
        {
          LODWORD(v739) = 0;
        }

LABEL_251:
        v316 = location;
        v315 = v718;
        if (v718 == v707)
        {

          v438 = v710;

          if (v254 != 0.0)
          {
            v439 = *(*&v254 + 112);
            if (v439 < v712)
            {

              v440 = v713;
              v441 = v742;
              if (v439 + 1 != v713)
              {
                v605 = v742 & 0xFFFFFFFFFFFFFF8;
                v606 = v439;
                while (1)
                {
                  if (v606 < v439 || v606 + 1 >= v440)
                  {
                    __break(1u);
LABEL_548:
                    __break(1u);
LABEL_549:
                    __break(1u);
                    goto LABEL_550;
                  }

                  if (v709)
                  {
                    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v606 < -1)
                    {
                      goto LABEL_548;
                    }

                    if ((v606 + 1) >= *(v605 + 16))
                    {
                      goto LABEL_549;
                    }

                    v39 = *(v441 + 8 * v606 + 40);
                  }

                  sub_100CA4604(v313 + *(v39 + 176), *(v39 + 184), *(v39 + 192), *(v39 + 200));
                  if (CGRectGetMaxX(*(v39 + 176)) > a9)
                  {
                    break;
                  }

                  ++v606;
                  v440 = v713;
                  v441 = v742;
                  if (v712 == v606)
                  {
                    goto LABEL_390;
                  }
                }

                if (!v722)
                {
                  goto LABEL_515;
                }

                sub_100C9580C(*(v39 + 88), *(v39 + 96));
LABEL_516:
                if (qword_1011BB880 != -1)
                {
                  swift_once();
                }

                v650 = type metadata accessor for Logger();
                sub_1000060E4(v650, static Logger.lyrics);
                v651 = v737;

                v652 = Logger.logObject.getter();
                v653 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v652, v653))
                {
                  v654 = swift_slowAlloc();
                  v655 = swift_slowAlloc();
                  v741 = v652;
                  v742 = v655;
                  v745 = v655;
                  *v654 = v697;
                  v656 = *(v39 + 72);
                  v657 = *(v39 + 80);

                  v658 = sub_1000109A8(v656, v657, &v745);

                  *(v654 + 4) = v658;
                  *(v654 + 12) = 2082;
                  v659 = v716[1];
                  *&v777 = *v716;
                  *(&v777 + 1) = v659;
                  v748 = 10519010;
                  v749 = 0xA300000000000000;
                  v750 = 44226;
                  v751 = 0xA200000000000000;
                  LODWORD(v739) = v653;
                  *&v777 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  *(&v777 + 1) = v660;
                  v661 = String.nonBreakingSpace.unsafeMutableAddressor();
                  v662 = v661[1];
                  v748 = *v661;
                  v749 = v662;
                  v750 = 0x3B7073626E26;
                  v751 = 0xE600000000000000;
                  v663 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  v717 = v254;
                  v665 = v664;

                  *&v777 = v663;
                  *(&v777 + 1) = v665;
                  v748 = 10;
                  v749 = 0xE100000000000000;
                  v750 = 28252;
                  v751 = 0xE200000000000000;
                  v666 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  v668 = v667;

                  v669 = sub_1000109A8(v666, v668, &v745);

                  *(v654 + 14) = v669;
                  v670 = v741;
                  _os_log_impl(&_mh_execute_header, v741, v739, "[Transliteration] Word %s crossed view bounds after final adjustment, adding line break. New text: %{public}s", v654, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {
                }

                goto LABEL_521;
              }

LABEL_390:
            }
          }

          v437 = v692;
LABEL_392:
          v442 = sub_100C7D24C(v438);
          if (v442)
          {
            v443 = v442;
            if (v442 < 1)
            {
LABEL_550:
              __break(1u);
              goto LABEL_551;
            }

            for (i = 0; i != v443; ++i)
            {
              if ((v438 & 0xC000000000000001) != 0)
              {
                v445 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
              }

              *(v445 + 224) = v437 + *(v445 + 224);
            }
          }

          v446 = v705;
          v108 = v759;
          v111 = v760;
          sub_10010FC20(&qword_1011BC098);
          v109 = swift_allocObject();
          *(v109 + 1) = xmmword_100EBC6B0;

          *&v777 = sub_100C9BB84(v447, sub_100C9BDB0);
          sub_100C9A7A8(&v777);

          *(v109 + 4) = v777;
          *(v109 + 5) = *&v44;

LABEL_400:

          v27 = v313;
          goto LABEL_401;
        }

        goto LABEL_252;
      }

      LODWORD(v739) = 0;
    }

    object = v318;
    goto LABEL_251;
  }

  object = _CocoaArrayWrapper.endIndex.getter();
  if (!object)
  {
    goto LABEL_269;
  }

LABEL_262:
  v36 = v39 & 0xC000000000000001;
  if ((v39 & 0xC000000000000001) != 0)
  {

    v325 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_542;
    }

    v325 = *(v39 + 32);
  }

  v726 = object;
  v732 = v39 & 0xC000000000000001;
  v733 = v39;
  v728 = v325;
  v711 = v40;
  v693 = v316;
  v717 = v254;
  if (!v316)
  {
    LODWORD(v741) = 0;
    v738 = 0;
    v730 = 0;
    v725 = 0;
    v36 = 0;
    v347 = location;
    v348 = *(location + 32);
    v791 = *(location + 16);
    v792 = v348;
    v793 = *(location + 48);
    v794 = *(location + 64);
LABEL_285:
    object = *(v347 + 64);
    v349 = *(v347 + 32);
    v39 = *(v347 + 40);
    v44 = *(v347 + 16);
    v350 = *(v347 + 24);
    v824 = v792;
    v825 = v793;
    sub_100118E9C(&v824, &v777);
    sub_1000089F8(&v825, &v777, &qword_1011BC0A0);
    sub_100C9DA40(v36, v725, v730, 0);
    sub_100C9DA40(v44, v350, v349, v39);
    goto LABEL_286;
  }

  v327 = *(v316 + 16);
  v326 = *(v316 + 24);
  v39 = *(v316 + 32);
  object = *(v316 + 40);
  v328 = v316;
  v329 = *(v316 + 48);
  v330 = *(v328 + 56);
  v36 = *(v328 + 64);
  v331 = *(location + 32);
  v791 = *(location + 16);
  v792 = v331;
  v793 = *(location + 48);
  v794 = *(location + 64);

  if (!object)
  {
    v347 = location;
    LODWORD(v741) = v36;
    v738 = v330;
    v730 = v39;
    v725 = v326;
    v36 = v327;
    goto LABEL_285;
  }

  v784 = v327;
  v785 = v326;
  v786 = v39;
  v787 = object;
  v788 = v329;
  v789 = v330;
  v790 = v36;
  v332 = _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(&v784, &v791);
  sub_100C9DA40(v327, v326, v39, object);
  if (v332)
  {

    v316 = v693;
    v44 = v694;
    v254 = v717;
    v40 = v711;
    v318 = v714;
    goto LABEL_269;
  }

LABEL_286:
  v725 = &v726[-1].isa + 7;
  v40 = v728;
  if (__OFSUB__(v726, 1))
  {
    goto LABEL_543;
  }

  swift_beginAccess();
  v351 = 0;
  v352 = v732;
  v36 = v733;
  v720 = v733 & 0xFFFFFFFFFFFFFF8;
  v730 = v733 + 32;
  a10 = v691;
  *&v44 = v717;
  v254 = *&v731;
  while (2)
  {
    if (v352)
    {
      v353 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v57 = __OFADD__(v351, 1);
      v354 = (&v351->isa + 1);
      if (v57)
      {
        goto LABEL_514;
      }
    }

    else
    {
      if (v351 >= *(v720 + 16))
      {
        goto LABEL_525;
      }

      v353 = *(v730 + 8 * v351);

      v57 = __OFADD__(v351, 1);
      v354 = (&v351->isa + 1);
      if (v57)
      {
LABEL_514:
        __break(1u);
LABEL_515:
        sub_100C95694(v39);
        goto LABEL_516;
      }
    }

    v355 = CGRectGetWidth(*(v353 + 176));

    if (v352)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v356 = === infix(_:_:)();

    v357 = *(v353 + 176);
    if (v356)
    {
      *(location + 144) = v357;
    }

    sub_100CA4604(v313 + v357, *(v353 + 184), *(v353 + 192), *(v353 + 200));
    v741 = v353;
    v738 = v354;
    if (*&v44 == 0.0)
    {
LABEL_322:
      swift_retain_n();
      if (v352)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v378 = === infix(_:_:)();

      if (v378)
      {
        v379 = v741[22].isa;
        v254 = *&v379 - *(location + 176);
        sub_100CA4604(*&v379, *&v741[23].isa, *(location + 192), *(location + 200));
        LODWORD(v739) = 0;
        LODWORD(v729) = 0;
        v736 = v254;
      }
    }

    else
    {
      v358 = v40;
      v359 = *(v44 + 112);
      v360 = *(v353 + 112);
      if (v360 <= v359)
      {
        v36 = *(v44 + 112);
      }

      else
      {
        v36 = *(v353 + 112);
      }

      if (v360 >= v359)
      {
        v361 = *(v44 + 112);
      }

      else
      {
        v361 = *(v353 + 112);
      }

      if (__OFADD__(v361, 1))
      {
        __break(1u);
LABEL_523:
        __break(1u);
LABEL_524:
        __break(1u);
LABEL_525:
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
        goto LABEL_528;
      }

      if (v361 + 1 < v36)
      {
        *&v731 = v254;
        v362 = v709;
        v363 = v742;
        sub_100C7135C(v361 + 1, v709 == 0, v742);
        sub_100C7135C(v36 - 1, v362 == 0, v363);

        v364 = (v361 + 1);
        if (v362)
        {
          do
          {
            v365 = v364 + 1;
            v366 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            sub_100CA4604(v313 + v366[22], v366[23], v366[24], v366[25]);
            swift_unknownObjectRelease();
            v364 = v365;
          }

          while (v36 != v365);
        }

        else
        {
          v367 = ~v361 + v36;
          v368 = (v695 + 8 * v361);
          do
          {
            v369 = *v368++;
            v27 = v369[23];
            v370 = v369[24];
            v371 = v369[25];
            v372 = v313 + v369[22];

            sub_100CA4604(v372, v27, v370, v371);

            --v367;
          }

          while (v367);
        }

        v358 = v728;
        v254 = *&v731;
        v352 = v732;
      }

      v373 = v736;
      if (v353 == v44)
      {
        v373 = v254;
      }

      v736 = v373;
      v374 = v739;
      if (v353 == v44)
      {
        v374 = v729;
      }

      if ((v353 != v44) | v729 & 1)
      {
        LODWORD(v739) = v374;
        v36 = v733;
        v40 = v358;
        goto LABEL_322;
      }

      v375 = *(location + 184);
      v376 = *(location + 192);
      v377 = *(location + 200);
      v27 = *(location + 176) + v254;

      sub_100CA4604(v27, v375, v376, v377);
      LODWORD(v739) = 0;
      LODWORD(v729) = 0;
      v736 = v254;
      v36 = v733;
      v40 = v358;
    }

    v380 = *(v40 + 32);
    v781[0] = *(v40 + 16);
    v781[1] = v380;
    v782 = *(v40 + 48);
    v783 = *(v40 + 64);
    v381 = *&v737[v727];
    if (*(v381 + 16))
    {
      v382 = v40;
      v826 = *(v40 + 32);
      v827[0] = v782;
      sub_100118E9C(&v826, &v777);
      sub_1000089F8(v827, &v777, &qword_1011BC0A0);

      v383 = sub_100C71CF0(v781);
      v385 = v384;
      sub_100015BB0(&v826);
      sub_1000095E8(v827, &qword_1011BC0A0);
      if (v385)
      {
        v731 = *(*(v381 + 56) + 8 * v383);
      }

      else
      {

        *&v731 = 0.0;
      }

      v352 = v732;
      v36 = v733;
      v40 = v382;
      if (v732)
      {
LABEL_337:
        v386 = v741;

        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v351 = v738;
        goto LABEL_338;
      }
    }

    else
    {
      *&v731 = 0.0;
      if (v352)
      {
        goto LABEL_337;
      }
    }

    v351 = v738;
    if ((v725 & 0x8000000000000000) != 0)
    {
      goto LABEL_526;
    }

    if (v725 >= *(v720 + 16))
    {
      goto LABEL_527;
    }

    v386 = v741;

LABEL_338:
    a10 = a10 + v355;
    v39 = === infix(_:_:)();

    if ((v39 & 1) == 0)
    {
      goto LABEL_362;
    }

    v387 = v386[6].isa;
    v388 = *(v387 + 2);
    if (v388)
    {
      v389 = v387 + 56 * v388;
      v391 = *(v389 + 1);
      v390 = *(v389 + 2);
      v57 = __OFADD__(v391, v390);
      v388 = v391 + v390;
      if (v57)
      {
        goto LABEL_529;
      }

      v392 = *(v387 + 8);
    }

    else
    {
      v392 = 0;
    }

    v393 = v388 - v392;
    if (__OFSUB__(v388, v392))
    {
      goto LABEL_523;
    }

    v394 = v724 + v392;
    if (__OFADD__(v392, v724))
    {
      goto LABEL_524;
    }

    v395.location = v724 + v392;
    v395.length = v388 - v392;
    if (_NSRange.contains(_:)(v395))
    {
      goto LABEL_359;
    }

    if (v731 == 1)
    {

      v448 = v727;
      v449 = *(v728 + 2);
      v777 = *(v728 + 1);
      v778 = v449;
      v779 = *(v728 + 3);
      v780 = *(v728 + 64);
      v450 = v737;
      swift_beginAccess();
      v451 = swift_isUniquelyReferenced_nonNull_native();
      v750 = *&v450[v448];
      *&v450[v448] = 0x8000000000000000;
      sub_100C74178(2, &v777, v451);
      *&v450[v448] = v750;
      swift_endAccess();
      if (v732)
      {
        v452 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        v453 = *(v452 + 88);
        swift_unknownObjectRelease();
      }

      else
      {
        v498 = *(v733 + 32);

        v453 = *(v498 + 88);
      }

      v27 = 0.0;
      if (v453 != v735)
      {
        v717 = *&v44;
        v245 = v737;
        v507 = *&v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8];
        v508 = v716;
        *v716 = *&v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v508[1] = v507;

        if (qword_1011BB880 != -1)
        {
          goto LABEL_558;
        }

        goto LABEL_425;
      }

      v499 = String._bridgeToObjectiveC()();

      v500 = String._bridgeToObjectiveC()();
      v501 = String._bridgeToObjectiveC()();
      v502 = _swiftEmptyArrayStorage[2];
      if (v502)
      {
        v503 = 0;
        v504 = &_swiftEmptyArrayStorage[4];
        do
        {
          v506 = *v504++;
          v505 = v506;
          if ((v506 & ~v503) == 0)
          {
            v505 = 0;
          }

          v503 |= v505;
          --v502;
        }

        while (v502);
      }

      else
      {
        v503 = 0;
      }

      v607 = [v499 stringByReplacingOccurrencesOfString:v500 withString:v501 options:v503 range:{v394, v393}];

      v608 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v610 = v609;

      v611 = v716;
      *v716 = v608;
      v611[1] = v610;

      v612 = [v499 length];
      v456 = v611[1];

      v613 = String.count.getter();

      v57 = __OFSUB__(v612, v613);
      v463 = &v612[-v613];
      if (v57)
      {
        __break(1u);
      }

      else
      {
        v614 = sub_100C773C4(v386[6].isa);
        if (!__OFSUB__(v724, v463))
        {
          v616 = (v724 - v463) & ~((v724 - v463) >> 63);
          v463 = (v614 + v616);
          if (!__OFADD__(v614, v616))
          {
            v617 = v615;
            v618 = &v463[v615];
            if (!__OFADD__(v463, v615))
            {

              v619 = String.count.getter();

              if (v618 == v619)
              {

                goto LABEL_115;
              }

              v740 = v499;
              v717 = *&v44;
              v620 = v617;
              v621 = v737;
              sub_100C9580C(v463, v620);
              if (qword_1011BB880 != -1)
              {
                swift_once();
              }

              v622 = type metadata accessor for Logger();
              sub_1000060E4(v622, static Logger.lyrics);
              v623 = swift_allocObject();
              *(v623 + 16) = v621;
              v624 = v621;

              v739 = Logger.logObject.getter();
              LODWORD(v742) = static os_log_type_t.default.getter();
              v625 = swift_allocObject();
              *(v625 + 16) = 32;
              v626 = swift_allocObject();
              *(v626 + 16) = 8;
              v627 = swift_allocObject();
              *(v627 + 16) = sub_100C9DDFC;
              *(v627 + 24) = *&v386;
              v628 = swift_allocObject();
              *(v628 + 16) = sub_100C9E754;
              *(v628 + 24) = v627;
              v629 = swift_allocObject();
              *(v629 + 16) = 34;
              v630 = swift_allocObject();
              *(v630 + 16) = 8;
              v631 = swift_allocObject();
              *(v631 + 16) = sub_100C9E760;
              *(v631 + 24) = v623;
              v632 = swift_allocObject();
              *(v632 + 16) = sub_100C9E754;
              *(v632 + 24) = v631;
              sub_10010FC20(&qword_1011BBAD8);
              v633 = swift_allocObject();
              *(v633 + 16) = xmmword_100EBCED0;
              *(v633 + 32) = sub_100C9E7DC;
              *(v633 + 40) = v625;
              *(v633 + 48) = sub_100C9E7DC;
              *(v633 + 56) = v626;
              *(v633 + 64) = sub_100C9E734;
              *(v633 + 72) = v628;
              *(v633 + 80) = sub_100C9E7DC;
              *(v633 + 88) = v629;
              *(v633 + 96) = sub_100C9E7DC;
              *(v633 + 104) = v630;
              *(v633 + 112) = sub_100C9E734;
              *(v633 + 120) = v632;
              swift_setDeallocating();
              sub_10010FC20(&qword_1011BC0E0);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v634 = v739;
              if (os_log_type_enabled(v739, v742))
              {
                v635 = swift_slowAlloc();
                v747 = swift_slowAlloc();
                *v635 = v697;
                v636 = v386[9].isa;
                v637 = v386[10].isa;

                v638 = sub_1000109A8(v636, v637, &v747);

                *(v635 + 4) = v638;
                *(v635 + 12) = 2082;
                v639 = v716[1];
                v748 = *v716;
                v749 = v639;
                v750 = 10519010;
                v751 = 0xA300000000000000;
                v745 = 44226;
                v746 = 0xA200000000000000;
                v748 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                v749 = v640;
                v641 = String.nonBreakingSpace.unsafeMutableAddressor();
                v642 = v641[1];
                v750 = *v641;
                v751 = v642;
                v745 = 0x3B7073626E26;
                v746 = 0xE600000000000000;
                v643 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                v645 = v644;

                v748 = v643;
                v749 = v645;
                v750 = 10;
                v751 = 0xE100000000000000;
                v745 = 28252;
                v746 = 0xE200000000000000;
                v646 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                v648 = v647;

                v649 = sub_1000109A8(v646, v648, &v747);

                *(v635 + 14) = v649;
                _os_log_impl(&_mh_execute_header, v634, v742, "[Transliteration] Word %s is not fully contained in this line, and it's the only word in this line. Adding line break after it and trying again. New text: %{public}s", v635, 0x16u);
                swift_arrayDestroy();

                goto LABEL_507;
              }

              goto LABEL_509;
            }

LABEL_562:
            __break(1u);
            goto LABEL_563;
          }

LABEL_561:
          __break(1u);
          goto LABEL_562;
        }
      }

      __break(1u);
      goto LABEL_561;
    }

    if (v731 >= 2)
    {
      if (qword_1011BB880 != -1)
      {
        swift_once();
      }

      v407 = type metadata accessor for Logger();
      sub_1000060E4(v407, static Logger.lyrics);
      v408 = v715;

      v409 = v721._object;

      v400 = Logger.logObject.getter();
      v410 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v400, v410))
      {
        v402 = swift_slowAlloc();
        v411 = swift_slowAlloc();
        v717 = *&v44;
        *&v777 = v411;
        *v402 = v696;
        *(v402 + 4) = sub_1000109A8(countAndFlagsBits, v408, &v777);
        *(v402 + 12) = 2082;
        *(v402 + 14) = sub_1000109A8(v721._countAndFlagsBits, v409, &v777);
        v404 = v410;
        v405 = v400;
        v406 = "[Transliteration] Trying to insert a line break for the third time. The view might be too small to fulfill the layout requirements. Not doing any more adjustments. Line: %{public}s transliterated line: %{public}s";
LABEL_357:
        _os_log_impl(&_mh_execute_header, v405, v404, v406, v402, 0x16u);
        swift_arrayDestroy();
        *&v44 = v717;
      }
    }

    else
    {
      v396 = v728;
      if (v728[14])
      {
        v493 = v731;

        v494 = *(v396 + 32);
        v777 = *(v396 + 16);
        v778 = v494;
        v779 = *(v396 + 48);
        v780 = *(v396 + 64);
        v495 = v737;
        v496 = v727;
        swift_beginAccess();
        v497 = swift_isUniquelyReferenced_nonNull_native();
        v750 = *&v495[v496];
        *&v495[v496] = 0x8000000000000000;
        sub_100C74178(v493 + 1, &v777, v497);
        *&v495[v496] = v750;
        swift_endAccess();
        if (v722)
        {
          sub_100C9580C(*(v396 + 88), *(v396 + 96));
        }

        else
        {
          sub_100C95694(v396);
        }

        v27 = 0.0;
        v717 = *&v44;
        if (qword_1011BB880 != -1)
        {
          swift_once();
        }

        v581 = type metadata accessor for Logger();
        sub_1000060E4(v581, static Logger.lyrics);
        v582 = swift_allocObject();
        v583 = v737;
        *(v582 + 16) = v737;
        v584 = v583;
        v585 = Logger.logObject.getter();
        v586 = static os_log_type_t.default.getter();
        v587 = swift_allocObject();
        *(v587 + 16) = 34;
        v588 = swift_allocObject();
        *(v588 + 16) = 8;
        v589 = swift_allocObject();
        *(v589 + 16) = sub_100C9E760;
        *(v589 + 24) = v582;
        v590 = swift_allocObject();
        *(v590 + 16) = sub_100C9E754;
        *(v590 + 24) = v589;
        sub_10010FC20(&qword_1011BBAD8);
        v591 = swift_allocObject();
        *(v591 + 16) = xmmword_100EBE260;
        *(v591 + 32) = sub_100C9E7DC;
        *(v591 + 40) = v587;
        *(v591 + 48) = sub_100C9E7DC;
        *(v591 + 56) = v588;
        *(v591 + 64) = sub_100C9E734;
        *(v591 + 72) = v590;
        swift_setDeallocating();
        sub_10010FC20(&qword_1011BC0E0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (os_log_type_enabled(v585, v586))
        {
          v592 = swift_slowAlloc();
          v593 = swift_slowAlloc();
          v747 = v593;
          *v592 = 136446210;
          v594 = v716[1];
          v748 = *v716;
          v749 = v594;
          v750 = 10519010;
          v751 = 0xA300000000000000;
          v745 = 44226;
          v746 = 0xA200000000000000;
          LODWORD(v742) = v586;
          v748 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v749 = v595;
          v596 = String.nonBreakingSpace.unsafeMutableAddressor();
          v597 = v596[1];
          v750 = *v596;
          v751 = v597;
          v745 = 0x3B7073626E26;
          v746 = 0xE600000000000000;
          v598 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v600 = v599;

          v748 = v598;
          v749 = v600;
          v750 = 10;
          v751 = 0xE100000000000000;
          v745 = 28252;
          v746 = 0xE200000000000000;
          v601 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v603 = v602;

          v604 = sub_1000109A8(v601, v603, &v747);

          *(v592 + 4) = v604;
          _os_log_impl(&_mh_execute_header, v585, v742, "[Transliteration] Word is incomplete in this line, adding line break. New text: %{public}s", v592, 0xCu);
          sub_10000959C(v593);
        }

        else
        {
        }

        goto LABEL_411;
      }

      if (qword_1011BB880 != -1)
      {
        swift_once();
      }

      v397 = type metadata accessor for Logger();
      sub_1000060E4(v397, static Logger.lyrics);
      v398 = v715;

      v399 = v721._object;

      v400 = Logger.logObject.getter();
      v401 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v400, v401))
      {
        v402 = swift_slowAlloc();
        v403 = swift_slowAlloc();
        v717 = *&v44;
        *&v777 = v403;
        *v402 = v696;
        *(v402 + 4) = sub_1000109A8(countAndFlagsBits, v398, &v777);
        *(v402 + 12) = 2082;
        *(v402 + 14) = sub_1000109A8(v721._countAndFlagsBits, v399, &v777);
        v404 = v401;
        v405 = v400;
        v406 = "[Transliteration] Word is incomplete in this line, but the current view size will not accomodate all of it. Not doing any adjustments. Line: %{public}s transliterated line: %{public}s";
        goto LABEL_357;
      }
    }

    v36 = v733;
LABEL_359:
    v39 = location;
    v412 = CGRectGetWidth(*(location + 176));
    v413 = v714;
    if (a10 < v412 + *(v714 + 336))
    {
      v414 = CGRectGetWidth(*(v39 + 176)) - a10 + *(v413 + 336);
      v313 = v313 + v414;
      sub_100CA4604(*&v386[22].isa, *&v386[23].isa, v414 + *&v386[24].isa, *&v386[25].isa);
    }

    v40 = v728;
    v352 = v732;
LABEL_362:
    v415 = CGRectGetMaxX(*&v386[22].isa);
    *&v777 = v415;
    v748 = *&a9;
    if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) != 0 || v415 <= a9)
    {

      goto LABEL_289;
    }

    if (v731 > 1)
    {
      v39 = v40;
      if (qword_1011BB880 != -1)
      {
        swift_once();
      }

      v416 = type metadata accessor for Logger();
      sub_1000060E4(v416, static Logger.lyrics);
      v417 = v737;
      v418 = Logger.logObject.getter();
      v419 = static os_log_type_t.default.getter();

      v706 = v419;
      if (os_log_type_enabled(v418, v419))
      {
        v420 = swift_slowAlloc();
        v745 = swift_slowAlloc();
        *v420 = v697;
        v421 = CGSize.description.getter();
        v39 = v418;
        v423 = sub_1000109A8(v421, v422, &v745);

        *(v420 + 4) = v423;
        *(v420 + 12) = 2082;
        v424 = v716[1];
        *&v777 = *v716;
        *(&v777 + 1) = v424;
        v748 = 10519010;
        v749 = 0xA300000000000000;
        v750 = 44226;
        v751 = 0xA200000000000000;
        v717 = *&v44;
        *&v731 = v254;
        *&v777 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        *(&v777 + 1) = v425;
        v426 = String.nonBreakingSpace.unsafeMutableAddressor();
        v427 = v426[1];
        v748 = *v426;
        v749 = v427;
        v750 = 0x3B7073626E26;
        v751 = 0xE600000000000000;
        v428 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v430 = v429;

        *&v777 = v428;
        *(&v777 + 1) = v430;
        v748 = 10;
        v749 = 0xE100000000000000;
        v750 = 28252;
        v751 = 0xE200000000000000;
        v254 = *&v731;
        v36 = v733;
        v431 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v433 = v432;

        v434 = sub_1000109A8(v431, v433, &v745);

        *(v420 + 14) = v434;
        _os_log_impl(&_mh_execute_header, v39, v706, "[Transliteration][Width check] Tried too many times to add a line break before the same word. This layout might be impossible, usually when the width is too narrow. Give up on adjustments. Size: %s Text: %{public}s", v420, 0x16u);
        swift_arrayDestroy();

        v352 = v732;
        v40 = v728;
      }

      else
      {

        v40 = v39;
      }

      v386 = v741;
LABEL_289:
      v44 = v386;
      if (v351 == v726)
      {
        v39 = v40;
        *&v731 = v254;

        v435 = location;
        v436 = CGRectGetMaxX(*(location + 176));
        v40 = v711;
        if (v692 < v436)
        {
          v692 = CGRectGetMaxX(*(v435 + 176));
        }

        v254 = *&v386;
        v27 = 0.0;
        v44 = v694;
        object = v714;
        goto LABEL_251;
      }

      continue;
    }

    break;
  }

  if (v731 == 1)
  {
    v717 = *&v44;
    v454 = v716;
    v455 = v716[1];
    *&v777 = *v716;
    *(&v777 + 1) = v455;

    v456 = String.nonBreakingSpace.unsafeMutableAddressor();
    v457 = v456[1];
    v748 = *v456;
    v749 = v457;
    v750 = 0;
    v751 = 0xE000000000000000;
    v458 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v459 = v40;
    v461 = v460;

    *v454 = v458;
    v454[1] = v461;

    v462 = *(v459 + 32);
    v777 = *(v459 + 16);
    v778 = v462;
    v779 = *(v459 + 48);
    v780 = *(v459 + 64);
    v463 = v737;
    v464 = v727;
    swift_beginAccess();
    v465 = swift_isUniquelyReferenced_nonNull_native();
    v750 = *&v463[v464];
    *&v463[v464] = 0x8000000000000000;
    sub_100C74178(2, &v777, v465);
    *&v463[v464] = v750;
    swift_endAccess();
    v27 = 0.0;
    if (qword_1011BB880 == -1)
    {
LABEL_406:
      v466 = type metadata accessor for Logger();
      sub_1000060E4(v466, static Logger.lyrics);
      v467 = swift_allocObject();
      *(v467 + 16) = v463;
      v468 = v463;
      v469 = Logger.logObject.getter();
      v470 = static os_log_type_t.default.getter();
      v471 = swift_allocObject();
      *(v471 + 16) = 34;
      v472 = swift_allocObject();
      *(v472 + 16) = 8;
      v473 = swift_allocObject();
      *(v473 + 16) = sub_100C9E760;
      *(v473 + 24) = v467;
      v474 = swift_allocObject();
      *(v474 + 16) = sub_100C9DA8C;
      *(v474 + 24) = v473;
      sub_10010FC20(&qword_1011BBAD8);
      v475 = swift_allocObject();
      *(v475 + 16) = xmmword_100EBE260;
      *(v475 + 32) = sub_100C9DA84;
      *(v475 + 40) = v471;
      *(v475 + 48) = sub_100C9E7DC;
      *(v475 + 56) = v472;
      *(v475 + 64) = sub_100C9DA94;
      *(v475 + 72) = v474;
      swift_setDeallocating();
      sub_10010FC20(&qword_1011BC0E0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (os_log_type_enabled(v469, v470))
      {
        v476 = swift_slowAlloc();
        v477 = swift_slowAlloc();
        v747 = v477;
        *v476 = 136446210;
        v478 = v716[1];
        v748 = *v716;
        v749 = v478;
        v750 = 10519010;
        v751 = 0xA300000000000000;
        v745 = 44226;
        v746 = 0xA200000000000000;
        LODWORD(v742) = v470;
        v748 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v749 = v479;
        v480 = v456[1];
        v750 = *v456;
        v751 = v480;
        v745 = 0x3B7073626E26;
        v746 = 0xE600000000000000;
        v481 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v483 = v482;

        v748 = v481;
        v749 = v483;
        v750 = 10;
        v751 = 0xE100000000000000;
        v745 = 28252;
        v746 = 0xE200000000000000;
        v484 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v486 = v485;

        v487 = sub_1000109A8(v484, v486, &v747);

        *(v476 + 4) = v487;
        _os_log_impl(&_mh_execute_header, v469, v742, "[Transliteration][Width check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v476, 0xCu);
        sub_10000959C(v477);
      }

      else
      {
      }

      goto LABEL_476;
    }

LABEL_563:
    swift_once();
    goto LABEL_406;
  }

  v488 = *(v40 + 32);
  v777 = *(v40 + 16);
  v778 = v488;
  v779 = *(v40 + 48);
  v780 = *(v40 + 64);
  v489 = v737;
  v490 = v727;
  v491 = v731;
  swift_beginAccess();
  v492 = swift_isUniquelyReferenced_nonNull_native();
  v750 = *&v489[v490];
  *&v489[v490] = 0x8000000000000000;
  sub_100C74178(v491 + 1, &v777, v492);
  *&v489[v490] = v750;
  swift_endAccess();
  v27 = 0.0;
  if (v722)
  {
    sub_100C9580C(*(v40 + 88), *(v40 + 96));
  }

  else
  {
    sub_100C95694(v40);
  }

  v561 = location;
  if (qword_1011BB880 != -1)
  {
    swift_once();
  }

  v562 = type metadata accessor for Logger();
  sub_1000060E4(v562, static Logger.lyrics);
  v563 = v737;

  v564 = Logger.logObject.getter();
  v565 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v564, v565))
  {
    v566 = swift_slowAlloc();
    v742 = swift_slowAlloc();
    location = v561;
    v747 = v742;
    *v566 = v697;
    v567 = v561[9];
    v568 = v561[10];

    v569 = sub_1000109A8(v567, v568, &v747);

    *(v566 + 4) = v569;
    *(v566 + 12) = 2082;
    v570 = v716[1];
    v748 = *v716;
    v749 = v570;
    v750 = 10519010;
    v751 = 0xA300000000000000;
    v745 = 44226;
    v746 = 0xA200000000000000;
    v717 = *&v44;
    v748 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v749 = v571;
    v572 = String.nonBreakingSpace.unsafeMutableAddressor();
    v573 = v572[1];
    v750 = *v572;
    v751 = v573;
    v745 = 0x3B7073626E26;
    v746 = 0xE600000000000000;
    v574 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v576 = v575;

    v748 = v574;
    v749 = v576;
    v750 = 10;
    v751 = 0xE100000000000000;
    v745 = 28252;
    v746 = 0xE200000000000000;
    v577 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v579 = v578;

    v580 = sub_1000109A8(v577, v579, &v747);

    *(v566 + 14) = v580;
    _os_log_impl(&_mh_execute_header, v564, v565, "[Transliteration] Word %s crossed view bounds after adjustment, adding line break. New text: %{public}s", v566, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_475:

LABEL_476:

LABEL_477:
  v108 = 0;
  v111 = 0;
  v109 = 0;
  v110 = 0;
LABEL_116:
  a8 = v719;
LABEL_179:
  *a8 = v108;
  *(a8 + 8) = v111;
  *(a8 + 16) = v109;
  *(a8 + 24) = v27;
  *(a8 + 32) = v110;
}

uint64_t sub_100C95524()
{
  sub_100009988();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  String.nonBreakingSpace.unsafeMutableAddressor();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v0;
}

uint64_t sub_100C95694(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v4 = objc_allocWithZone(NSMutableString);

  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithString:v5];

  v7 = *(a1 + 88);
  v8 = v6;
  v9 = [v8 substringWithRange:{v7, 1}];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == 32 && v12 == 0xE100000000000000)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (__OFADD__(v7++, 1))
  {
    __break(1u);
    return result;
  }

LABEL_9:
  v17 = String._bridgeToObjectiveC()();
  [v8 insertString:v17 atIndex:v7];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *v3 = v18;
  v3[1] = v20;
}

void sub_100C9580C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v6 = objc_allocWithZone(NSMutableString);

  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithString:v7];

  v9 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v8;
  v11 = [v10 substringWithRange:{v9, 1}];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == 32 && v14 == 0xE100000000000000)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (__OFADD__(v9++, 1))
  {
LABEL_14:
    __break(1u);
    return;
  }

LABEL_10:
  v18 = String._bridgeToObjectiveC()();
  [v10 insertString:v18 atIndex:v9];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *v5 = v19;
  v5[1] = v21;
}

id sub_100C959C8()
{
  v2.receiver = v0;
  v2.super_class = _s8TextViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s8TextViewCMa()
{
  result = qword_1011BC508;
  if (!qword_1011BC508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C95C08()
{
  sub_100C95D2C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100C95D2C()
{
  if (!qword_1011BBBC0)
  {
    type metadata accessor for Locale.Language();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011BBBC0);
    }
  }
}

__n128 sub_100C95D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100C95DB0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100C95DC8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C95E1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100C95E80(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    v2 = a2 & 0x7FFFFFFF;
    *(result + 24) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_100C95ECC()
{
  result = qword_1011BC518;
  if (!qword_1011BC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BC518);
  }

  return result;
}

void *sub_100C95F20(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_1011BD520);
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

void sub_100C95FA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10010FC20(&qword_1011BD520);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_100C96094(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_100C95F20(v1, 0);

    specialized _ArrayBuffer._copyContents(initializing:)();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void sub_100C96130(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10010FC20(&qword_1011BC090);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_100C96220(uint64_t a1)
{
  v2 = v1[1];
  v3 = v2 + 32;
  v4 = *(v2 + 16);
  if (*v1)
  {
    sub_100C7D238(a1, v3, v4, *v1 + 16, *v1 + 32);
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v4)
    {
LABEL_8:
      sub_100C75CFC();
      return 1;
    }

    v6 = 0;
    while (*(v3 + 8 * v6) != a1)
    {
      if (v4 == ++v6)
      {
        goto LABEL_8;
      }
    }
  }

  return 0;
}

uint64_t sub_100C962B4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v40 = a2 + 64;
    v38 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v39 = v7;
    do
    {
      v45 = v3;
      v43 = 56 * v6;
      v8 = *(v2 + 48) + 56 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 32);
      v42 = *(v8 + 40);
      v44 = *(v8 + 48);
      Hasher.init(_seed:)();
      if (v9 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v9;
      }

      Hasher._combine(_:)(*&v12);
      if (v10 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      Hasher._combine(_:)(*&v13);

      String.hash(into:)();
      Hasher._combine(_:)(*(v11 + 16));
      v14 = *(v11 + 16);
      if (v14)
      {
        v15 = (v11 + 80);
        do
        {
          v16 = *(v15 - 6);
          v17 = *(v15 - 5);
          v19 = *(v15 - 2);
          v18 = *(v15 - 1);
          v21 = *v15;
          v15 += 7;
          v20 = *&v21;
          if (v16 == 0.0)
          {
            v16 = 0.0;
          }

          Hasher._combine(_:)(*&v16);
          if (v17 == 0.0)
          {
            v22 = 0.0;
          }

          else
          {
            v22 = v17;
          }

          Hasher._combine(_:)(*&v22);

          String.hash(into:)();
          Hasher._combine(_:)(v19);
          Hasher._combine(_:)(v18);
          Hasher._combine(_:)(v20);

          --v14;
        }

        while (v14);
      }

      if (v44)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        if ((v42 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v23 = v42;
        }

        else
        {
          v23 = 0;
        }

        Hasher._combine(_:)(v23);
      }

      v2 = a2;
      v3 = v45;
      v24 = Hasher._finalize()();

      v25 = v24 & v39;
      if (v45 >= v38)
      {
        v4 = v40;
        if (v25 < v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v40;
        if (v25 >= v38)
        {
          goto LABEL_30;
        }
      }

      if (v45 >= v25)
      {
LABEL_30:
        v26 = *(a2 + 48);
        v27 = v26 + 56 * v45;
        v28 = (v26 + v43);
        if (56 * v45 < v43 || v27 >= v28 + 56 || v45 != v6)
        {
          v29 = *v28;
          v30 = v28[1];
          v31 = v28[2];
          *(v27 + 48) = *(v28 + 6);
          *(v27 + 16) = v30;
          *(v27 + 32) = v31;
          *v27 = v29;
        }

        v32 = *(a2 + 56);
        v33 = (v32 + 8 * v45);
        v34 = (v32 + 8 * v6);
        if (v45 != v6 || v33 >= v34 + 1)
        {
          *v33 = *v34;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v39;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v35 = *(v2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v37;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_100C965F0(double *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    v6 = 0;
    v7 = *a1;
    do
    {
      v8 = v4 + 56 * v6;
      if (*v8 == v7 && *(v8 + 8) == v5[1])
      {
        result = *(v8 + 16);
        v10 = *(v8 + 32);
        v11 = *(v8 + 40);
        v25 = *(v8 + 48);
        v12 = result == *(v5 + 2) && *(v8 + 24) == *(v5 + 3);
        if (v12 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 = a1, v4 = a2, v3 = a3, (result & 1) != 0))
        {
          v13 = *(v5 + 4);
          v14 = *(v10 + 16);
          if (v14 == *(v13 + 16))
          {
            if (v14)
            {
              v15 = v10 == v13;
            }

            else
            {
              v15 = 1;
            }

            if (!v15)
            {
              v16 = (v10 + 80);
              v17 = v13 + 40;
              while (v14)
              {
                if (*(v16 - 6) != *(v17 - 8) || *(v16 - 5) != *v17)
                {
                  goto LABEL_4;
                }

                result = *(v16 - 4);
                v19 = *(v16 - 2);
                v20 = *(v16 - 1);
                v21 = *v16;
                v23 = *(v17 + 24);
                v22 = *(v17 + 32);
                v24 = *(v17 + 40);
                if (result != *(v17 + 8) || *(v16 - 3) != *(v17 + 16))
                {
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v5 = a1;
                  v4 = a2;
                  v3 = a3;
                  if ((result & 1) == 0)
                  {
                    goto LABEL_4;
                  }
                }

                if (v19 != v23 || v20 != v22 || *&v21 != v24)
                {
                  goto LABEL_4;
                }

                v16 += 7;
                v17 += 56;
                if (!--v14)
                {
                  goto LABEL_18;
                }
              }

              __break(1u);
              return result;
            }

LABEL_18:
            if (v25)
            {
              if (v5[6])
              {
                return v6;
              }
            }

            else if ((v5[6] & 1) == 0 && v11 == v5[5])
            {
              return v6;
            }
          }
        }
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v3);
  }

  return 0;
}

uint64_t sub_100C967D0()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = static _HashTable.scale(forCapacity:)();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_100C969C0(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_100C96888(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  if (v4 || *(v5 + 16) >= 0x10uLL)
  {
    v7 = static _HashTable.scale(forCapacity:)();
    if (v4 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    v6 = sub_100C96938(v5, v8, 0, v4, a1);
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100C96938(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  v9 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v9 <= v8)
  {
    v9 = v8;
  }

  if (v9 <= a4)
  {
    v9 = a4;
  }

  if (v9 >= 5)
  {
    v11 = _HashTable.init(scale:reservedScale:)();
    sub_100C96A90(a1, v11 + 16, v11 + 32, a5);
    return v11;
  }

  return result;
}

uint64_t sub_100C969C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = _HashTable.init(scale:reservedScale:)();
    sub_100C96A40(a1, (v9 + 16));
    return v9;
  }

  return result;
}

Swift::Int sub_100C96AE8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v7 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v7)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100C96C18(Swift::Int result, uint64_t a2, void *a3)
{
  v22 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v3 = 0;
      while (1)
      {
        v4 = v22 + 56 * v3;
        v5 = *v4;
        v6 = *(v4 + 8);
        v7 = *(v4 + 32);
        v24 = *(v4 + 40);
        v25 = *(v4 + 48);
        Hasher.init(_seed:)();
        if (v5 == 0.0)
        {
          v8 = 0.0;
        }

        else
        {
          v8 = v5;
        }

        Hasher._combine(_:)(*&v8);
        if (v6 == 0.0)
        {
          v9 = 0.0;
        }

        else
        {
          v9 = v6;
        }

        Hasher._combine(_:)(*&v9);

        String.hash(into:)();
        v10 = *(v7 + 16);
        Hasher._combine(_:)(v10);
        if (v10)
        {
          v11 = (v7 + 80);
          do
          {
            v12 = *(v11 - 6);
            v13 = *(v11 - 5);
            v14 = *(v11 - 2);
            v15 = *(v11 - 1);
            v17 = *v11;
            v11 += 7;
            v16 = *&v17;
            if (v12 == 0.0)
            {
              v12 = 0.0;
            }

            Hasher._combine(_:)(*&v12);
            if (v13 == 0.0)
            {
              v18 = 0.0;
            }

            else
            {
              v18 = v13;
            }

            Hasher._combine(_:)(*&v18);

            String.hash(into:)();
            Hasher._combine(_:)(v14);
            Hasher._combine(_:)(v15);
            Hasher._combine(_:)(v16);

            --v10;
          }

          while (v10);
        }

        if (v25)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1uLL);
          v19 = (v24 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v24 : 0;
          Hasher._combine(_:)(v19);
        }

        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v20 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v20)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v3 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100C96E9C(Swift::Int result, uint64_t a2, void *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v7);
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100C96FA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10010FC20(&qword_1011BC120);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100C97198(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10010FC20(&qword_1011BC430);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v16);
    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100C973A8(unint64_t *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, void *, uint64_t), void (*a7)(void *, uint64_t, unint64_t))
{
  v12 = a2 >> 62;
  if (a2 >> 62)
  {
    v22 = a3;
    v23 = a4;
    _CocoaArrayWrapper.endIndex.getter();
    a4 = v23;
    a3 = v22;
  }

  if (a4)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  v14 = static _HashTable.scale(forCapacity:)();
  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 4)
  {
    if (v12)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 2)
      {
        v18 = sub_100C9BF40(a2, a7);
        goto LABEL_21;
      }

      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= 2)
      {
        v18 = sub_100C97674((a2 & 0xFFFFFFFFFFFFFF8) + 32, v17, a7);
LABEL_21:
        v21 = v18;
        result = 0;
        goto LABEL_22;
      }
    }

    result = 0;
    *a1 = v17;
    return result;
  }

  v19 = _HashTable.init(scale:reservedScale:)();
  sub_100C97AEC(&v24, a2, (v19 + 16), v19 + 32, a6);
  result = v19;
  v21 = v24;
LABEL_22:
  *a1 = v21;
  return result;
}

uint64_t sub_100C974F4(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = static _HashTable.scale(forCapacity:)();
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = _HashTable.init(scale:reservedScale:)();
    sub_100C97CC4(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_100C97788((a2 + 32), v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

void *sub_100C975D8(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_100C95F20(v5, 0);
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

uint64_t sub_100C97674(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, unint64_t))
{
  v11 = sub_100C9BB84(_swiftEmptyArrayStorage, a3);
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v8 = v11[2];
        v9 = v11 + 4;
        while (v8)
        {
          v10 = *v9++;
          --v8;
          if (*(a1 + 8 * v6) == v10)
          {
            goto LABEL_12;
          }
        }

        swift_retain_n();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();

        ++v6;
        if (v7 == a2)
        {
          v6 = a2;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
LABEL_12:

    return v6;
  }

  return result;
}

char *sub_100C97788(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v16 = _swiftEmptyArrayStorage;
  result = sub_100C713A0(0, a2 & ~(a2 >> 63), 0);
  v5 = _swiftEmptyArrayStorage;
  if (!v2)
  {
LABEL_12:

    return v2;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    while (1)
    {
      v7 = a1[1];
      v17 = *a1;
      v18 = v7;
      v19 = a1[2];
      v20 = *(a1 + 48);
      if (sub_100C97928(&v17, v5))
      {
        break;
      }

      v21 = v18;
      v22 = v19;
      sub_100118E9C(&v21, v15);
      sub_1000089F8(&v22, v15, &qword_1011BC0A0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100C713A0(0, v5[2] + 1, 1);
        v5 = v16;
      }

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        sub_100C713A0((v9 > 1), v10 + 1, 1);
        v5 = v16;
      }

      ++v6;
      v5[2] = v10 + 1;
      v11 = &v5[7 * v10];
      v12 = v17;
      v13 = v18;
      v14 = v19;
      *(v11 + 80) = v20;
      *(v11 + 3) = v13;
      *(v11 + 4) = v14;
      *(v11 + 2) = v12;
      a1 = (a1 + 56);
      if (v2 == v6)
      {
        goto LABEL_12;
      }
    }

    v2 = v6;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100C97928(double *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = a1;
  v4 = 0;
  v5 = a2 + 32;
  v6 = *a1;
  v27 = *(a2 + 16);
  v26 = a2 + 32;
  while (1)
  {
    v8 = v5 + 56 * v4;
    if (v6 != *v8 || v3[1] != *(v8 + 8))
    {
      goto LABEL_6;
    }

    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v25 = *(v8 + 48);
    result = *(v3 + 2);
    if (result != *(v8 + 16) || *(v3 + 3) != *(v8 + 24))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v26;
      v2 = v27;
      v3 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v13 = *(v3 + 4);
    v14 = *(v13 + 16);
    if (v14 != *(v9 + 16))
    {
      goto LABEL_6;
    }

    if (v14 && v13 != v9)
    {
      break;
    }

LABEL_20:
    if (v3[6])
    {
      if (v25)
      {
        return 1;
      }
    }

    else
    {
      v7 = v25;
      if (v3[5] != v10)
      {
        v7 = 1;
      }

      if (v7 != 1)
      {
        return 1;
      }
    }

LABEL_6:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v16 = (v13 + 80);
  v17 = v9 + 40;
  while (v14)
  {
    if (*(v16 - 6) != *(v17 - 8) || *(v16 - 5) != *v17)
    {
      goto LABEL_6;
    }

    result = *(v16 - 4);
    v19 = *(v16 - 2);
    v20 = *(v16 - 1);
    v21 = *v16;
    v22 = *(v17 + 24);
    v23 = *(v17 + 32);
    v24 = *(v17 + 40);
    if (result != *(v17 + 8) || *(v16 - 3) != *(v17 + 16))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v26;
      v2 = v27;
      v3 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v19 != v22 || v20 != v23 || *&v21 != v24)
    {
      goto LABEL_6;
    }

    v16 += 7;
    v17 += 56;
    if (!--v14)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100C97AEC(void *a1, int64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v6 = sub_100C9DA9C(a2, a5);
  }

  else
  {
    v6 = sub_100C97B5C((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3);
  }

  *a1 = v7;
  return v6 & 1;
}

Swift::Int sub_100C97B5C(Swift::Int result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = result;
    for (i = 0; ; ++i)
    {
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v8 = *(v5 + 8 * i);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v8);
      result = Hasher._finalize()();
      if (__OFSUB__(1 << *a3, 1))
      {
        goto LABEL_15;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      while (1)
      {
        v9 = _HashTable.BucketIterator.currentValue.getter();
        if (v10)
        {
          break;
        }

        if (*(v5 + 8 * v9) == *(v5 + 8 * i))
        {
          return 0;
        }

        _HashTable.BucketIterator.advance()();
      }

      result = _HashTable.BucketIterator.currentValue.setter();
      if (v7 == a2)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_100C97CC4(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  v44 = result;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_52;
  }

  v4 = a3;
  v5 = 0;
  while (2)
  {
    if (__OFADD__(v5, 1))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v6 = v44 + 56 * v5;
    v7 = *(v6 + 32);
    v57 = *(v6 + 16);
    v58 = v7;
    v56 = *v6;
    v45 = v6;
    v59 = *(v6 + 48);
    v60[0] = v57;
    v61 = v7;
    Hasher.init(_seed:)();
    sub_100118E9C(v60, v46);
    sub_1000089F8(&v61, v46, &qword_1011BC0A0);
    Lyrics.Word.hash(into:)(v47);
    result = Hasher._finalize()();
    v8 = 1 << *v4;
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

    v41 = v5 + 1;
    v11 = v10 & result;
    v12 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    v14 = v13;
    v16 = v15;
    sub_100015BB0(v60);
    sub_1000095E8(&v61, &qword_1011BC0A0);
    *&v48 = v4;
    *(&v48 + 1) = a4;
    *&v49 = v11;
    *(&v49 + 1) = v12;
    *&v50 = v14;
    *(&v50 + 1) = v16;
    v51 = 0;
    v55 = 0;
    v52 = v48;
    v53 = v49;
    v54 = v50;
    while (1)
    {
      v17 = _HashTable.BucketIterator.currentValue.getter();
      if (v18)
      {
        break;
      }

      v19 = v44 + 56 * v17;
      if (*v19 == *v45 && *(v19 + 8) == *(v45 + 8))
      {
        result = *(v19 + 16);
        v21 = *(v19 + 32);
        v22 = *(v19 + 40);
        v23 = *(v45 + 32);
        v24 = *(v45 + 40);
        v42 = *(v45 + 48);
        v43 = *(v19 + 48);
        v25 = result == *(v45 + 16) && *(v19 + 24) == *(v45 + 24);
        if (v25 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          v26 = *(v21 + 16);
          if (v26 == *(v23 + 16))
          {
            if (v26)
            {
              v27 = v21 == v23;
            }

            else
            {
              v27 = 1;
            }

            if (!v27)
            {
              v29 = (v21 + 80);
              v30 = v23 + 40;
              while (v26)
              {
                if (*(v29 - 6) != *(v30 - 8) || *(v29 - 5) != *v30)
                {
                  goto LABEL_9;
                }

                result = *(v29 - 4);
                v32 = *(v29 - 2);
                v33 = *(v29 - 1);
                v34 = *v29;
                v36 = *(v30 + 24);
                v35 = *(v30 + 32);
                v37 = *(v30 + 40);
                if (result != *(v30 + 8) || *(v29 - 3) != *(v30 + 16))
                {
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_9;
                  }
                }

                if (v32 != v36 || v33 != v35 || *&v34 != v37)
                {
                  goto LABEL_9;
                }

                v29 += 7;
                v30 += 56;
                if (!--v26)
                {
                  goto LABEL_27;
                }
              }

              __break(1u);
              goto LABEL_50;
            }

LABEL_27:
            if (v43)
            {
              if (v42)
              {
                return 0;
              }
            }

            else
            {
              v28 = v42;
              if (v22 != v24)
              {
                v28 = 1;
              }

              if ((v28 & 1) == 0)
              {
                return 0;
              }
            }
          }
        }
      }

LABEL_9:
      _HashTable.BucketIterator.advance()();
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v55 = v51;
    }

    result = _HashTable.BucketIterator.currentValue.setter();
    v5 = v41;
    v4 = a3;
    if (v41 != a2)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_100C98000(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(*v1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    _s4WordCMa();
    sub_100C9DE48(&qword_1011BC530, _s4WordCMa);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      return sub_10005C9F8();
    }

    while (1)
    {
      sub_100C81B9C(v15);

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        _s4WordCMa();
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      return sub_10005C9F8();
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      return sub_10005C9F8();
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void *sub_100C98238(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    _s4WordCMa();
    sub_100C9DE48(&qword_1011BC530, _s4WordCMa);
    Set.Iterator.init(_cocoa:)();
    v4 = v60;
    v6 = v61;
    v7 = v62;
    v8 = v63;
    v9 = v64;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 56);

    v8 = 0;
  }

  v55 = v4;
  v56 = v6;
  v57 = v7;
  v58 = v8;
  v51 = v7;
  v14 = (v7 + 64) >> 6;
  v15 = (v3 + 56);
  v59 = v9;
  v52 = v3;
  while (1)
  {
    if (v4 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_65;
      }

      v53 = v21;
      _s4WordCMa();
      swift_dynamicCast();
      v2 = v54;
      v19 = v8;
      v3 = v9;
      if (!v54)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v16 = v9;
      v17 = v8;
      if (v9)
      {
LABEL_20:
        v3 = (v16 - 1) & v16;
        v2 = *(*(v4 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

        v19 = v17;
      }

      else
      {
        if (v14 <= (v8 + 1))
        {
          v18 = v8 + 1;
        }

        else
        {
          v18 = v14;
        }

        v19 = v18 - 1;
        v20 = v8;
        while (1)
        {
          v17 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_67;
          }

          if (v17 >= v14)
          {
            break;
          }

          v16 = *(v6 + 8 * v17);
          ++v20;
          if (v16)
          {
            goto LABEL_20;
          }
        }

        v2 = 0;
        v3 = 0;
      }

      v55 = v4;
      v56 = v6;
      v57 = v51;
      v58 = v19;
      v59 = v3;
      if (!v2)
      {
LABEL_65:
        sub_10005C9F8();
        return v52;
      }
    }

    Hasher.init(_seed:)();
    Hasher._combine(_:)(v2);
    v22 = Hasher._finalize()();
    v23 = -1 << *(v52 + 32);
    v9 = v22 & ~v23;
    v8 = v9 >> 6;
    v17 = 1 << v9;
    if (((1 << v9) & v15[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v19;
    v9 = v3;
  }

  v24 = *(v52 + 48);
  if (*(v24 + 8 * v9) != v2)
  {
    v25 = ~v23;
    do
    {
      v9 = (v9 + 1) & v25;
      v8 = v9 >> 6;
      v17 = 1 << v9;
      if (((1 << v9) & v15[v9 >> 6]) == 0)
      {
        goto LABEL_10;
      }
    }

    while (*(v24 + 8 * v9) != v2);
  }

  v2 = v52;
  v26 = *(v52 + 32);
  v47 = ((1 << v26) + 63) >> 6;
  v5 = 8 * v47;
  if ((v26 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v48 = &v46;
    __chkstk_darwin();
    v9 = &v46 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v9, v15, v27);
    v28 = *(v9 + 8 * v8) & ~v17;
    v29 = *(v2 + 16);
    v49 = v9;
    *(v9 + 8 * v8) = v28;
    v30 = v29 - 1;
    v2 = 1;
LABEL_34:
    v50 = v30;
    while (1)
    {
      if (v4 < 0)
      {
        v31 = __CocoaSet.Iterator.next()();
        if (!v31)
        {
          goto LABEL_62;
        }

        v53 = v31;
        _s4WordCMa();
        swift_dynamicCast();
        v8 = v54;
        if (!v54)
        {
          goto LABEL_62;
        }

        goto LABEL_51;
      }

      if (!v3)
      {
        break;
      }

      v17 = v19;
LABEL_49:
      v34 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v8 = *(*(v4 + 48) + ((v17 << 9) | (8 * v34)));

      v33 = v17;
LABEL_50:
      v55 = v4;
      v56 = v6;
      v57 = v51;
      v58 = v33;
      v19 = v33;
      v59 = v3;
      if (!v8)
      {
LABEL_62:
        v10 = sub_100C97198(v49, v47, v50, v52);
        goto LABEL_63;
      }

LABEL_51:
      v35 = v52;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v8);
      v36 = Hasher._finalize()();
      v37 = -1 << *(v35 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      v9 = 1 << v38;
      if (((1 << v38) & v15[v38 >> 6]) == 0)
      {
        goto LABEL_35;
      }

      v40 = *(v52 + 48);
      if (*(v40 + 8 * v38) != v8)
      {
        v41 = ~v37;
        while (1)
        {
          v38 = (v38 + 1) & v41;
          v39 = v38 >> 6;
          v9 = 1 << v38;
          if (((1 << v38) & v15[v38 >> 6]) == 0)
          {
            break;
          }

          if (*(v40 + 8 * v38) == v8)
          {
            goto LABEL_56;
          }
        }

LABEL_35:

        continue;
      }

LABEL_56:

      v42 = v49[v39];
      v49[v39] = v42 & ~v9;
      if ((v42 & v9) != 0)
      {
        v30 = v50 - 1;
        if (__OFSUB__(v50, 1))
        {
          __break(1u);
        }

        if (v50 == 1)
        {

          v10 = &_swiftEmptySetSingleton;
          goto LABEL_63;
        }

        goto LABEL_34;
      }
    }

    if (v14 <= (v19 + 1))
    {
      v32 = v19 + 1;
    }

    else
    {
      v32 = v14;
    }

    v33 = v32 - 1;
    while (1)
    {
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v8 = 0;
        v3 = 0;
        goto LABEL_50;
      }

      v3 = *(v6 + 8 * v17);
      ++v19;
      if (v3)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v50 = v5;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v44 = v50;
  v45 = swift_slowAlloc();
  memcpy(v45, v15, v44);
  v10 = sub_100C988E0(v45, v47, v2, v9, &v55);

LABEL_63:
  sub_10005C9F8();
  return v10;
}

unint64_t *sub_100C988E0(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v28 = v9;
    do
    {
      while (1)
      {
        if ((*a5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_29;
          }

          _s4WordCMa();
          swift_dynamicCast();
          v14 = v29;
          if (!v29)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v11 = a5[3];
          v12 = a5[4];
          if (!v12)
          {
            v15 = (a5[2] + 64) >> 6;
            if (v15 <= v11 + 1)
            {
              v16 = v11 + 1;
            }

            else
            {
              v16 = (a5[2] + 64) >> 6;
            }

            v17 = v16 - 1;
            while (1)
            {
              v13 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                break;
              }

              if (v13 >= v15)
              {
                a5[3] = v17;
                a5[4] = 0;
                goto LABEL_29;
              }

              v12 = *(a5[1] + 8 * v13);
              ++v11;
              if (v12)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v13 = a5[3];
LABEL_17:
          v18 = (v12 - 1) & v12;
          v14 = *(*(*a5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

          a5[3] = v13;
          a5[4] = v18;
          if (!v14)
          {
LABEL_29:

            return sub_100C97198(v7, a2, v28, a3);
          }
        }

        Hasher.init(_seed:)();
        Hasher._combine(_:)(v14);
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        v24 = *(a3 + 48);
        if (*(v24 + 8 * v21) == v14)
        {
          break;
        }

        v25 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          if (*(v24 + 8 * v21) == v14)
          {
            goto LABEL_23;
          }
        }

LABEL_3:
      }

LABEL_23:

      v26 = v7[v22];
      v7[v22] = v26 & ~v23;
    }

    while ((v26 & v23) == 0);
    v9 = v28 - 1;
    if (__OFSUB__(v28, 1))
    {
LABEL_31:
      __break(1u);
      return result;
    }

    if (v28 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_100C98B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    __chkstk_darwin();
    v10 = 0;
    v11 = 0;
    __chkstk_darwin();
    static _UnsafeBitSet._withTemporaryBitSet(wordCount:run:)();
  }

  else
  {
    if (!(_swiftEmptyArrayStorage >> 62) || (v5 = _CocoaArrayWrapper.endIndex.getter()) == 0 || (v6 = v5, v7 = sub_100C95F20(v5, 0), sub_100C9BC20((v7 + 4), v6, _swiftEmptyArrayStorage), v9 = v8, , v9 == v6))
    {

      return 0;
    }

    __break(1u);
  }

  __break(1u);

  result = sub_100B46144(v10, v11);
  __break(1u);
  return result;
}

void *sub_100C98CE4(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = a3(&v8);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return sub_100B46144(v6, v7);
  }

  return result;
}

uint64_t sub_100C98D38(__int128 a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a5;
  if (a3)
  {
    if (a1 && *(&a1 + 1))
    {
      a2 = 0;
      v10 = 8 * *(&a1 + 1);
      v11 = a1;
      while (1)
      {
        v12 = vcnt_s8(*v11);
        v12.i16[0] = vaddlv_u8(v12);
        v13 = __OFADD__(a2, v12.u32[0]);
        a2 += v12.u32[0];
        if (v13)
        {
          break;
        }

        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

    goto LABEL_14;
  }

LABEL_7:
  if (!a2)
  {
LABEL_14:
    sub_100C9BB84(_swiftEmptyArrayStorage, sub_100C9BC20);
    sub_100C99168(a4, 0);

    v8 = 0;
    goto LABEL_49;
  }

  if (a2 == *(a6 + 16))
  {
    if (a5)
    {
      v14 = a2;
      swift_beginAccess();
      v15 = static _HashTable.maximumCapacity(forScale:)();
      a2 = v14;
      v16 = v15 - v14;
      if (!__OFSUB__(v15, v14))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = 15 - a2;
      if (!__OFSUB__(15, a2))
      {
LABEL_11:
        if (v16 < a4)
        {
          *&a1 = a2 + a4;
          if (__OFADD__(a2, a4))
          {
            goto LABEL_55;
          }

          sub_100C99168(a1, 0);
        }

        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_20:
    *&a1 = _UnsafeBitSet.Iterator.next()();
    if ((BYTE8(a1) & 1) == 0)
    {
      while ((a1 & 0x8000000000000000) == 0)
      {
        if (a1 >= *(a6 + 16))
        {
          goto LABEL_52;
        }

        v22 = *(a6 + 32 + 8 * a1);
        swift_retain_n();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v23 = v29;
        v24 = v29[2];
        if (!v6)
        {
          while (1)
          {
            if (v24 > 0xF)
            {
              v18 = 0;
              goto LABEL_23;
            }

            *&a1 = _UnsafeBitSet.Iterator.next()();
            if (BYTE8(a1))
            {
              break;
            }

            if ((a1 & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            if (a1 >= *(a6 + 16))
            {
              goto LABEL_52;
            }

            swift_retain_n();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v23 = v29;
            v24 = v29[2];
          }

          v6 = 0;
          goto LABEL_48;
        }

        swift_beginAccess();
        if (static _HashTable.maximumCapacity(forScale:)() >= v24)
        {
          if ((swift_isUniquelyReferenced_native() & 1) == 0)
          {
            v25 = _HashTable.copy()();

            v6 = v25;
            if (!v25)
            {
              goto LABEL_56;
            }
          }

          Hasher.init(_seed:)();
          Hasher._combine(_:)(v22);
          *&a1 = Hasher._finalize()();
          if (__OFSUB__(1 << *(v6 + 16), 1))
          {
            goto LABEL_53;
          }

          if (_HashTable.UnsafeHandle._startIterator(bucket:)())
          {
            while (1)
            {
              _HashTable.BucketIterator.advance()();
            }
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        else
        {
          v18 = *(v6 + 24) & 0x3FLL;
          if (v24 > 0xF || v18)
          {
LABEL_23:
            v19 = static _HashTable.scale(forCapacity:)();
            if (v18 <= v19)
            {
              v20 = v19;
            }

            else
            {
              v20 = v18;
            }

            v21 = sub_100C969C0(v23, v20, 0, v18);

            v6 = v21;
          }

          else
          {

            v6 = 0;
          }
        }

        *&a1 = _UnsafeBitSet.Iterator.next()();
        if (BYTE8(a1))
        {
          goto LABEL_48;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_48:

    v8 = v6;
LABEL_49:
    *&a1 = v8;
    return a1;
  }

  v17 = a2 + a4;
  if (!__OFADD__(a2, a4))
  {
    v27 = sub_100C9BB84(_swiftEmptyArrayStorage, sub_100C9BC20);
    sub_100C99168(v17, 0);
    v6 = 0;
    v29 = v27;
    goto LABEL_20;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return a1;
}

uint64_t sub_100C99168(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16) & 0x3FLL;
    v7 = static _HashTable.scale(forCapacity:)();
    v8 = v7;
    if ((a2 & 1) == 0)
    {
      swift_beginAccess();
      v7 = v8;
      v8 = *(v5 + 24) & 0x3FLL;
    }
  }

  else
  {
    v7 = static _HashTable.scale(forCapacity:)();
    v6 = 0;
    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = v3[1];
  if (v6 < v7)
  {
    if (v8 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

LABEL_23:
    v13 = sub_100C969C0(v9, v10, 0, v8);

    *v3 = v13;
    return result;
  }

  if (v8 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  result = static _HashTable.scale(forCapacity:)();
  if (result <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = result;
  }

  if (v12 < v6)
  {
    if (v8 <= v12)
    {
      v10 = v12;
    }

    else
    {
      v10 = v8;
    }

    goto LABEL_23;
  }

  if (!v5 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v14 = *v3;
    if (*v3)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v8)
    {
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!*v3)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v14 = _HashTable.copy()();

  *v3 = v14;
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_28:
  result = swift_beginAccess();
  if ((*(v14 + 24) & 0x3FLL) != v8)
  {
    *(v14 + 24) = *(v14 + 24) & 0xFFFFFFFFFFFFFFC0 | v8 & 0x3F;
  }

  return result;
}

unint64_t sub_100C99308@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

LABEL_15:
    result = sub_100C995F8(a1, &v17);
LABEL_17:
    v13 = v20;
    v14 = v21;
    v15 = v18;
    v16 = v19;
    *a3 = v17;
    *(a3 + 16) = v15;
    *(a3 + 24) = v16;
    *(a3 + 40) = v13;
    *(a3 + 48) = v14;
    return result;
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_16:
    sub_100C995F8(a1, &v17);
    result = sub_100C96888(sub_100C96C18);
    goto LABEL_17;
  }

  result = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((result & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = _HashTable.copy()();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {

    result = sub_100C99934(a2, (v11 + 16), v11 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_100C99C80(a1, a1 + 1, v6, (v11 + 16));

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_100C994B0(int64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return sub_100C996C0(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_16:
    v14 = sub_100C996C0(a1, a3);
    sub_100C967D0();
    return v14;
  }

  result = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((result & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = _HashTable.copy()();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {
    result = sub_100C99754(a2, (v11 + 16), v11 + 32, v3);
    v13 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v13 >= a1)
    {
      sub_100C9A398(a1, v13, v6, (v11 + 16));
      return sub_100C996C0(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100C995F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100C9A780(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    v12 = *(v9 + 40);
    v13 = *(v9 + 48);
    v14 = *(v9 + 24);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v14;
    *(a2 + 40) = v12;
    *(a2 + 48) = v13;
  }

  return result;
}

uint64_t sub_100C996C0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
    *v2 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    specialized ContiguousArray._endMutation()();
    return v10;
  }

  return result;
}

unint64_t sub_100C99754(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v15 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v15)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    while (1)
    {
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(a4 + 8);
      if (result >= *(v10 + 16))
      {
        goto LABEL_18;
      }

      v11 = *(v10 + 8 * result + 32);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_19;
      }

      v13 = (v12 - 1) & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v13 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      _HashTable.BucketIterator.currentValue.getter();
      v6 = a1;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_3:
      _HashTable.BucketIterator.advance()();
    }

    if (v13 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v13)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

unint64_t sub_100C99934(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v34 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v34)
  {
    v28 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v29 = a2;
    while (1)
    {
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v7)
      {
LABEL_40:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = *(a4 + 8);
      if (result >= *(v8 + 16))
      {
        goto LABEL_38;
      }

      v9 = v8 + 56 * result;
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      v12 = *(v9 + 64);
      v31 = *(v9 + 72);
      v32 = *(v9 + 80);
      Hasher.init(_seed:)();
      if (v10 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      Hasher._combine(_:)(*&v13);
      if (v11 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v11;
      }

      Hasher._combine(_:)(*&v14);

      String.hash(into:)();
      v15 = *(v12 + 16);
      Hasher._combine(_:)(v15);
      if (v15)
      {
        v16 = (v12 + 80);
        do
        {
          v17 = *(v16 - 6);
          v18 = *(v16 - 5);
          v20 = *(v16 - 2);
          v19 = *(v16 - 1);
          v22 = *v16;
          v16 += 7;
          v21 = *&v22;
          if (v17 == 0.0)
          {
            v17 = 0.0;
          }

          Hasher._combine(_:)(*&v17);
          if (v18 == 0.0)
          {
            v23 = 0.0;
          }

          else
          {
            v23 = v18;
          }

          Hasher._combine(_:)(*&v23);

          String.hash(into:)();
          Hasher._combine(_:)(v20);
          Hasher._combine(_:)(v19);
          Hasher._combine(_:)(v21);

          --v15;
        }

        while (v15);
      }

      if (v32)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        if ((v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v24 = v31;
        }

        else
        {
          v24 = 0;
        }

        Hasher._combine(_:)(v24);
      }

      v25 = Hasher._finalize()();

      v26 = 1 << *v29;
      if (__OFSUB__(v26, 1))
      {
        goto LABEL_39;
      }

      v27 = (v26 - 1) & v25;
      if (v5 >= v28)
      {
        break;
      }

      if (v27 < v28)
      {
        goto LABEL_32;
      }

LABEL_33:
      _HashTable.BucketIterator.currentValue.getter();
      v5 = a1;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_3:
      _HashTable.BucketIterator.advance()();
    }

    if (v27 < v28)
    {
      goto LABEL_3;
    }

LABEL_32:
    if (v5 < v27)
    {
      goto LABEL_3;
    }

    goto LABEL_33;
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}