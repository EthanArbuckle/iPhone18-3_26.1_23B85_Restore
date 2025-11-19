uint64_t sub_10045D6B0(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  v6 = sub_100469654(&v31, a1, 0, 1, v5, sub_100470A2C, sub_10046DECC);
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    v8 = sub_1004BD6A4();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v31;
  if (v31 == v8)
  {
    sub_100469884(a1, sub_10046DECC);
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

    if (sub_1004BD6A4() < 0)
    {
      goto LABEL_52;
    }

    v10 = sub_1004BD6A4();
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
      sub_1004BD464(v12);
      v12 = v13;
    }

    while (v9 != v13);
    if (!v7)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = sub_1004BD6B4();
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
  sub_1004BD9F4();
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

  if (v19 != ((v3 >> 1) - i))
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
      v20 = sub_1004BD6A4();
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
    sub_100468254(v1, v14, i, v3, _s4LineCMa);
  }

  _s4LineCMa();

  v21 = v9;
  do
  {
    v22 = v21 + 1;
    sub_1004BD464(v21);
    v21 = v22;
  }

  while (v8 != v22);
LABEL_41:

  if (v7)
  {
    sub_1004BD6B4();
    v23 = v25;
    v9 = v26;
    v24 = v27;
  }

  else
  {
    v23 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = (2 * v8) | 1;
  }

  sub_10046FEA0(v23, v9, v24);
  swift_unknownObjectRelease();

  return v32;
}

uint64_t sub_10045DA48(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  v6 = sub_100469654(&v31, a1, 0, 1, v5, sub_100470EF0, sub_10046E05C);
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    v8 = sub_1004BD6A4();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v31;
  if (v31 == v8)
  {
    sub_100469884(a1, sub_10046E05C);
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

    if (sub_1004BD6A4() < 0)
    {
      goto LABEL_52;
    }

    v10 = sub_1004BD6A4();
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
      sub_1004BD464(v12);
      v12 = v13;
    }

    while (v9 != v13);
    if (!v7)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = sub_1004BD6B4();
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
  sub_1004BD9F4();
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

  if (v19 != ((v3 >> 1) - i))
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
      v20 = sub_1004BD6A4();
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
    sub_100468254(v1, v14, i, v3, _s4WordCMa);
  }

  _s4WordCMa();

  v21 = v9;
  do
  {
    v22 = v21 + 1;
    sub_1004BD464(v21);
    v21 = v22;
  }

  while (v8 != v22);
LABEL_41:

  if (v7)
  {
    sub_1004BD6B4();
    v23 = v25;
    v9 = v26;
    v24 = v27;
  }

  else
  {
    v23 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = (2 * v8) | 1;
  }

  sub_10046FEA0(v23, v9, v24);
  swift_unknownObjectRelease();

  return v32;
}

void sub_10045DDE0(uint64_t a1)
{
  v2 = static MPMediaLibraryFilteringOptions.none.getter();
  v3 = sub_1004697A0(&v17, a1, 0, 1, v2);
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
      sub_1004683DC(a1, a1 + 32, 0, (2 * v17) | 1);
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
            sub_100013D04(&v24, v16);
            sub_10000F778(&v25, v16, &qword_100615690);

            sub_100446724(&v20, v10 + 32, v11, (v9 + 16), v9 + 32);
            v13 = v12;

            if ((v13 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
            sub_10046889C(&v20, v19 + 32, v11);
            v15 = v14;
            sub_100013D04(&v24, v16);
            sub_10000F778(&v25, v16, &qword_100615690);
            if ((v15 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          sub_100446D44(&v20);
LABEL_7:
          ++v5;
          sub_1001B4A3C(&v24);
          sub_100007214(&v25, &qword_100615690);
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

uint64_t sub_10045DFF0(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, char a5, double *a6, unint64_t a7, uint64_t a8, double a9, double a10, double MaxX, double y, double a13, CGFloat a14, uint64_t a15, os_log_t *a16, unint64_t *a17, uint64_t *a18, double *a19, void *a20)
{
  rect = *&a17;
  swift_beginAccess();
  v208 = a6;
  width = *a6 + a10;
  v215 = a7;
  v211 = (a7 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);

  v32 = sub_1004BBE24();

  v212 = a1;
  v33 = [a1 characterRange];
  v35 = [v32 substringWithRange:{v33, v34}];

  v36 = sub_1004BBE64();
  v38 = v37;

  v223 = v36;
  v224 = v38;
  v221 = 10;
  v222 = 0xE100000000000000;
  v219 = 0;
  v220 = 0xE000000000000000;
  v185 = sub_10044CAE0();
  sub_1004BD224();

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
        if ((sub_1004BD9C4() & 1) == 0)
        {
          continue;
        }
      }
    }

    swift_beginAccess();

    v45 = swift_retain_n();
    sub_10045F9E8(v45);
    swift_endAccess();

    goto LABEL_11;
  }

  v43 = 0;
LABEL_11:
  [v212 boundsWithType:0 options:{0, &type metadata for String, v185, v185, v185}];
  MinX = v46;
  v49 = v48;
  v50 = v215;
  v51 = *(v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
  v53 = *v211;
  v52 = v211[1];
  swift_beginAccess();
  v54 = *a16;
  v210 = a5;
  v205 = a3;
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

  v57 = sub_10046E800(a9, width, MaxX, y, MinX, v49, a2, v51, v53, v52, v54, v55, v56);
  v59 = v58;

  swift_beginAccess();
  *a17 = v57;

  v60 = a16;
  swift_beginAccess();
  *a16 = v59;
  v218 = _swiftEmptyArrayStorage;
  v61 = sub_1004BBF24();
  v63 = v62;
  v64 = v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText;
  if (*(v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
  {
    if (v61 == sub_1004BBF24() && v63 == v65)
    {

LABEL_133:
      v67 = _swiftEmptyArrayStorage;
LABEL_134:
      if (*(v50 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) != 2)
      {
        goto LABEL_196;
      }

      v80 = *(v50 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager);
      if (*&v80 == 0.0)
      {
        goto LABEL_196;
      }

      v82 = width;
      v196 = y;
      v133 = *(v80 + 16);

      [v133 usageBoundsForTextContainer];
      x = v231.origin.x;
      y = v231.origin.y;
      width = v231.size.width;
      height = v231.size.height;
      MinX = CGRectGetWidth(v231);
      if ((v57 & 0x8000000000000000) != 0 || (v57 & 0x4000000000000000) != 0)
      {
LABEL_164:
        v134 = sub_1004BD6A4();
        if (!v134)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v134 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v134)
        {
LABEL_146:
          if (vabdd_f64(a13, MinX) < 1.0)
          {
            y = v196;
            width = v82;
            goto LABEL_195;
          }

          goto LABEL_180;
        }
      }

      v89 = __OFSUB__(v134, 1);
      v135 = v134 - 1;
      if (v89)
      {
        goto LABEL_169;
      }

      if ((v57 & 0xC000000000000001) != 0)
      {
        goto LABEL_170;
      }

      if ((v135 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v135 < *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v136 = *(v57 + 8 * v135 + 32);

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

    v66 = sub_1004BD9C4();

    if (v66)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  if (!*(v64 + 8))
  {
    goto LABEL_133;
  }

  swift_beginAccess();
  v67 = _swiftEmptyArrayStorage;
  v197 = a18[1];
  if (!v197)
  {
    goto LABEL_134;
  }

  v68 = *a18;
  v198 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v188 = *(v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection);
  if (v188 == 2)
  {

    sub_100301400(v68, v197);

    goto LABEL_133;
  }

  swift_beginAccess();
  v69 = v68;
  v70 = *a17;

  v186 = v69;
  sub_100301400(v69, v197);

  v71 = a3;
  v72 = a4;
  if (v210)
  {
    v71 = CTLineRef.stringRange.getter();
    v72 = v73;
  }

  swift_beginAccess();
  sub_100460C58(v186, v197, v70, v57, v71, v72, *a16, &v223, a13, a14);

  v74 = v224;
  if (!v224)
  {

    sub_10045CAA4(0, 1, a13, a14);

    return 0;
  }

  if (v224 == 1)
  {

    goto LABEL_133;
  }

  MinX = v226;
  v76 = v225;
  v77 = v223;
  swift_beginAccess();
  v67 = *a18;
  v78 = a18[1];
  *a18 = v77;
  a18[1] = v74;

  sub_1003013BC(v67, v78);
  v195 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment;
  if (!*(v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) || *(v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) == (v188 & 1))
  {
    MaxX = MinX + MaxX;
  }

  v79 = *(v76 + 16);
  if (!v79)
  {

    sub_100007214(&v223, &qword_100615B38);
    goto LABEL_133;
  }

  v190 = v79 != 1;
  v194 = v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v187 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
  v193 = v76 + 32;
  swift_beginAccess();
  v80 = a19;
  swift_beginAccess();
  swift_beginAccess();
  v81 = 0;
  v82 = a9;
  v189 = width;
  x = width;
  rect = MaxX;
  height = y;
  v191 = v79;
  v192 = v76;
  v196 = y;
  while (1)
  {
    if (v81 >= *(v76 + 16))
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

    v85 = (v193 + 16 * v81);
    v80 = *v85;
    v86 = v85[1];

    v204 = v86;
    v227.origin.x = CTLineRef.bounds.getter();
    width = CGRectGetHeight(v227) + *(v194 + 328);
    *v208 = *v208 + width;
    v87 = v80 >> 62;
    if (*(v50 + v195) != 2 || *(v50 + v187) == (v188 & 1))
    {
LABEL_52:
      v229.origin.x = a9;
      v229.origin.y = v189;
      v229.size.width = MaxX;
      v229.size.height = y;
      MinX = CGRectGetMinX(v229);
      v230.origin.x = v82;
      v230.origin.y = x;
      v230.size.width = rect;
      v230.size.height = height;
      x = CGRectGetMaxY(v230);
      height = MinX;
      rect = MaxX;
      goto LABEL_53;
    }

    if (v87)
    {
      v88 = sub_1004BD6A4();
      if (!v88)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v88 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v88)
      {
        goto LABEL_52;
      }
    }

    v89 = __OFSUB__(v88, 1);
    v90 = v88 - 1;
    if (v89)
    {
      goto LABEL_173;
    }

    if ((v80 & 0xC000000000000001) != 0)
    {
      v91 = sub_1004BD484();
    }

    else
    {
      if ((v90 & 0x8000000000000000) != 0)
      {
        goto LABEL_174;
      }

      if (v90 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_175;
      }

      v91 = *(v80 + 8 * v90 + 32);
    }

    MinX = CGRectGetMaxX(*(v91 + 176));
    v228.origin.x = v82;
    v228.origin.y = x;
    v228.size.width = rect;
    v228.size.height = height;
    x = CGRectGetMaxY(v228);

    if (*a19 < MinX)
    {
      *a19 = MinX;
    }

    height = a13 - MinX;
    rect = MinX;
    y = v196;
LABEL_53:
    v217 = v80;
    v92 = *(v50 + v198);
    v203 = v81;
    if (v92 == 2)
    {

      v93 = v80;
    }

    else
    {

      v93 = v80;
      if (v92)
      {
        sub_10045FA74();
        v93 = v217;
      }
    }

    if (v93 >> 62)
    {
      break;
    }

    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_59;
    }

LABEL_76:

    v97 = 0;
    v101 = 0;
LABEL_77:
    v102 = sub_1004BBE24();
    v201 = v97;
    v202 = v101;
    v67 = [v102 substringWithRange:{v101, v97}];

    v103 = sub_1004BBE64();
    v199 = v104;
    v200 = v103;

    _s4LineCMa();
    v50 = swift_allocObject();
    *(v50 + 112) = 0;
    *(v50 + 120) = 0;
    *(v50 + 128) = 0;
    *(v50 + 16) = *&v80;
    if (v87)
    {
      v105 = sub_1004BD6A4();
    }

    else
    {
      v105 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v106 = _swiftEmptyArrayStorage;
    v107 = v105 & ~(v105 >> 63);
    if (v105)
    {
      v216[0] = _swiftEmptyArrayStorage;

      sub_100442220(0, v105 & ~(v105 >> 63), 0);
      if (v105 < 0)
      {
        goto LABEL_162;
      }

      v106 = v216[0];
      if ((v80 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v105; ++i)
        {
          v109 = *(sub_1004BD484() + 48);
          if (*(v109 + 16))
          {
            v110 = *(v109 + 32);
          }

          else
          {
            v110 = 0;
          }

          swift_unknownObjectRelease();
          v216[0] = v106;
          v112 = v106[2];
          v111 = v106[3];
          if (v112 >= v111 >> 1)
          {
            sub_100442220((v111 > 1), v112 + 1, 1);
            v106 = v216[0];
          }

          v106[2] = (v112 + 1);
          v106[v112 + 4] = v110;
        }
      }

      else
      {
        v113 = v80 + 32;
        v114 = v105;
        do
        {
          v115 = *(*v113 + 48);
          if (*(v115 + 16))
          {
            v116 = *(v115 + 32);
          }

          else
          {
            v116 = 0;
          }

          v216[0] = v106;
          v118 = v106[2];
          v117 = v106[3];
          if (v118 >= v117 >> 1)
          {
            sub_100442220((v117 > 1), v118 + 1, 1);
            v106 = v216[0];
          }

          v106[2] = (v118 + 1);
          v106[v118 + 4] = v116;
          v113 += 8;
          --v114;
        }

        while (v114);
      }

      v60 = a16;
      v107 = v105 & ~(v105 >> 63);
    }

    else
    {
    }

    v216[0] = v106;

    v67 = 0;
    sub_10046CBA4(v216);

    if (v216[0][2])
    {
      MinX = *(v216[0] + 4);
    }

    else
    {
      MinX = 0.0;
    }

    *(v50 + 64) = MinX;
    if (v105)
    {
      v216[0] = _swiftEmptyArrayStorage;
      sub_100442220(0, v107, 0);
      if (v105 < 0)
      {
        goto LABEL_163;
      }

      v119 = v216[0];
      if ((v80 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != v105; ++j)
        {
          v121 = *(sub_1004BD484() + 48);
          v122 = *(v121 + 16);
          if (v122)
          {
            v123 = *(v121 + 56 * v122 - 16);
          }

          else
          {
            v123 = 0;
          }

          swift_unknownObjectRelease();
          v216[0] = v119;
          v125 = v119[2];
          v124 = v119[3];
          if (v125 >= v124 >> 1)
          {
            sub_100442220((v124 > 1), v125 + 1, 1);
            v119 = v216[0];
          }

          v119[2] = (v125 + 1);
          v119[v125 + 4] = v123;
        }
      }

      else
      {
        v126 = v80 + 32;
        do
        {
          v127 = *(*v126 + 48);
          v128 = *(v127 + 16);
          if (v128)
          {
            v129 = *(v127 + 56 * v128 - 16);
          }

          else
          {
            v129 = 0;
          }

          v216[0] = v119;
          v131 = v119[2];
          v130 = v119[3];
          if (v131 >= v130 >> 1)
          {
            sub_100442220((v130 > 1), v131 + 1, 1);
            v119 = v216[0];
          }

          v119[2] = (v131 + 1);
          v119[v131 + 4] = v129;
          v126 += 8;
          --v105;
        }

        while (v105);
      }

      v60 = a16;
    }

    else
    {
      v119 = _swiftEmptyArrayStorage;
    }

    v216[0] = v119;

    sub_10046CBA4(v216);
    v76 = v192;

    v132 = v216[0][2];
    if (v132)
    {
      MinX = *&v216[0][v132 + 3];
    }

    else
    {
      MinX = 0.0;
    }

    v67 = v200;

    *(v50 + 24) = v200;
    *(v50 + 32) = v199;
    *(v50 + 40) = v202;
    *(v50 + 48) = v201;
    *(v50 + 72) = MinX;
    *(v50 + 80) = height;
    v82 = height;
    *(v50 + 88) = x;
    *(v50 + 96) = rect;
    *(v50 + 104) = width;
    *(v50 + 56) = 1;
    *(v50 + 57) = v190;
    *(v50 + 58) = v188 & 1;
    sub_1004BC274();
    if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v67 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1004BC2E4();
    }

    v81 = v203 + 1;
    sub_1004BC334();

    height = width;
    v50 = v215;
    if (v203 + 1 == v191)
    {
      v67 = v218;

      sub_100007214(&v223, &qword_100615B38);
      width = v189;
      goto LABEL_134;
    }
  }

  if (!sub_1004BD6A4())
  {
    goto LABEL_76;
  }

LABEL_59:
  v67 = v93 & 0xC000000000000001;
  if ((v93 & 0xC000000000000001) != 0)
  {
    v94 = v60;

    v50 = sub_1004BD484();
  }

  else
  {
    if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_161;
    }

    v94 = v60;
    v50 = *(v93 + 32);
  }

  v60 = *(v50 + 88);
  if (!(v93 >> 62))
  {
    v95 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v95)
    {
      goto LABEL_64;
    }

LABEL_68:

    v97 = 0;
LABEL_74:
    v101 = v60;
    v60 = v94;
    v87 = v80 >> 62;
    goto LABEL_77;
  }

  v95 = sub_1004BD6A4();
  if (!v95)
  {
    goto LABEL_68;
  }

LABEL_64:
  v89 = __OFSUB__(v95, 1);
  v96 = v95 - 1;
  if (!v89)
  {
    if (v67)
    {
      v67 = sub_1004BD484();
    }

    else
    {
      if ((v96 & 0x8000000000000000) != 0)
      {
        goto LABEL_176;
      }

      if (v96 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_177;
      }

      v67 = *(v93 + 8 * v96 + 32);
    }

    v98 = *(v67 + 88);
    v99 = *(v67 + 96);

    v89 = __OFADD__(v98, v99);
    v100 = v98 + v99;
    if (v89)
    {
      goto LABEL_167;
    }

    v67 = *(v50 + 88);

    v97 = v100 - v67;
    if (__OFSUB__(v100, v67))
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
  v136 = sub_1004BD484();
LABEL_144:
  if (vabdd_f64(CGRectGetMaxX(*(v136 + 176)), MaxX) < 1.0)
  {

    goto LABEL_146;
  }

  MaxX = CGRectGetMaxX(*(v136 + 176));
  if (v67 >> 62)
  {
LABEL_178:
    v137 = sub_1004BD6A4();
    if (!v137)
    {
      goto LABEL_179;
    }

LABEL_150:
    rect = *&v80;
    if (v137 < 1)
    {
      goto LABEL_266;
    }

    v138 = 0;
    v139 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
    v140 = v67 & 0xC000000000000001;
    v141 = v67;
    do
    {
      if (v140)
      {
        v142 = sub_1004BD484();
      }

      else
      {
        v142 = *(v67 + 8 * v138 + 32);
      }

      if (*(v142 + 58) == *(v215 + v139))
      {
        v232.origin.x = *(v142 + 80);
        v232.origin.y = *(v142 + 88);
        v240.size.width = *(v142 + 96);
        v232.size.height = *(v142 + 104);
        *(v142 + 96) = MaxX;
        v232.size.width = MaxX;
        v240.origin.x = v232.origin.x;
        v240.origin.y = v232.origin.y;
        v240.size.height = v232.size.height;
        if (!CGRectEqualToRect(v232, v240))
        {
          *(v142 + 128) = 0;
        }
      }

      ++v138;
      v67 = v141;
    }

    while (v137 != v138);

    v60 = a16;
    v50 = v215;
    *&v80 = rect;
    goto LABEL_180;
  }

  v137 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v137)
  {
    goto LABEL_150;
  }

LABEL_179:

  v50 = v215;
LABEL_180:
  v233.origin.x = x;
  v233.origin.y = y;
  v233.size.width = width;
  v233.size.height = height;
  v143 = CGRectGetWidth(v233);
  v234.origin.x = a9;
  width = v82;
  v234.origin.y = v82;
  v234.size.width = MaxX;
  y = v196;
  v234.size.height = v196;
  v144 = CGRectGetWidth(v234);
  v235.origin.x = a9;
  v235.origin.y = v82;
  v235.size.width = MaxX;
  v235.size.height = v196;
  v145 = CGRectGetMaxX(v235) - a13;
  if (v145 > 0.0)
  {
    a9 = v145;
  }

  else
  {
    a9 = 0.0;
  }

  MinX = v143 - v144;
  if (v67 >> 62)
  {
    goto LABEL_263;
  }

  v146 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  a9 = MinX + a9;
  if (v146)
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
      v80 = v152;
      v153 = a20;
      swift_beginAccess();
      if (__OFADD__(*a20, v80))
      {
        __break(1u);
        goto LABEL_259;
      }

      *a20 += v80;
      if (!v43)
      {
        v212 = [v212 characterRange];
        rect = v156;
        v153 = *(v50 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction);
        _s4LineCMa();
        *&v80 = COERCE_DOUBLE(swift_allocObject());
        *(v80 + 112) = 0;
        *(v80 + 120) = 0;
        *(v80 + 128) = 0;
        *(v80 + 16) = v57;
        if (!(v57 >> 62))
        {
          v60 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_203;
        }

LABEL_259:
        v60 = sub_1004BD6A4();
LABEL_203:
        v214 = v153;
        v215 = v67;
        if (v60)
        {
          v216[0] = _swiftEmptyArrayStorage;

          sub_100442220(0, v60 & ~(v60 >> 63), 0);
          if (v60 < 0)
          {
            goto LABEL_261;
          }

          v157 = v216[0];
          if ((v57 & 0xC000000000000001) != 0)
          {
            for (k = 0; k != v60; ++k)
            {
              v159 = *(sub_1004BD484() + 48);
              if (*(v159 + 16))
              {
                v160 = *(v159 + 32);
              }

              else
              {
                v160 = 0;
              }

              swift_unknownObjectRelease();
              v216[0] = v157;
              v162 = v157[2];
              v161 = v157[3];
              if (v162 >= v161 >> 1)
              {
                sub_100442220((v161 > 1), v162 + 1, 1);
                v157 = v216[0];
              }

              v157[2] = (v162 + 1);
              v157[v162 + 4] = v160;
            }
          }

          else
          {
            v170 = v57 + 32;
            v50 = v60;
            do
            {
              v171 = *(*v170 + 48);
              if (*(v171 + 16))
              {
                v172 = *(v171 + 32);
              }

              else
              {
                v172 = 0;
              }

              v216[0] = v157;
              v174 = v157[2];
              v173 = v157[3];
              if (v174 >= v173 >> 1)
              {
                sub_100442220((v173 > 1), v174 + 1, 1);
                v157 = v216[0];
              }

              v157[2] = (v174 + 1);
              v157[v174 + 4] = v172;
              v170 += 8;
              --v50;
            }

            while (v50);
          }
        }

        else
        {

          v157 = _swiftEmptyArrayStorage;
        }

        v216[0] = v157;

        v67 = 0;
        sub_10046CBA4(v216);

        if (v216[0][2])
        {
          MinX = *(v216[0] + 4);
        }

        else
        {
          MinX = 0.0;
        }

        *(v80 + 64) = MinX;
        if (v60)
        {
          v216[0] = _swiftEmptyArrayStorage;
          sub_100442220(0, v60 & ~(v60 >> 63), 0);
          if (v60 < 0)
          {
            goto LABEL_262;
          }

          v163 = v216[0];
          if ((v57 & 0xC000000000000001) != 0)
          {
            v164 = 0;
            v50 = 56;
            do
            {
              v165 = *(sub_1004BD484() + 48);
              v166 = *(v165 + 16);
              if (v166)
              {
                v167 = *(v165 + 56 * v166 - 16);
              }

              else
              {
                v167 = 0;
              }

              swift_unknownObjectRelease();
              v216[0] = v163;
              v169 = v163[2];
              v168 = v163[3];
              if (v169 >= v168 >> 1)
              {
                sub_100442220((v168 > 1), v169 + 1, 1);
                v163 = v216[0];
              }

              ++v164;
              v163[2] = (v169 + 1);
              v163[v169 + 4] = v167;
            }

            while (v60 != v164);
          }

          else
          {
            v50 = 32;
            do
            {
              v175 = *(*(v57 + v50) + 48);
              v176 = *(v175 + 16);
              if (v176)
              {
                v177 = *(v175 + 56 * v176 - 16);
              }

              else
              {
                v177 = 0;
              }

              v216[0] = v163;
              v179 = v163[2];
              v178 = v163[3];
              if (v179 >= v178 >> 1)
              {
                sub_100442220((v178 > 1), v179 + 1, 1);
                v163 = v216[0];
              }

              v163[2] = (v179 + 1);
              v163[v179 + 4] = v177;
              v50 += 8;
              --v60;
            }

            while (v60);
          }
        }

        else
        {

          v163 = _swiftEmptyArrayStorage;
        }

        v216[0] = v163;

        sub_10046CBA4(v216);
        v60 = a16;
        v155 = a19;

        v180 = v216[0][2];
        if (v180)
        {
          v181 = v216[0][v180 + 3];
        }

        else
        {
          v181 = 0;
        }

        v67 = v215;

        *(v80 + 24) = v39;
        *(v80 + 40) = v212;
        *(v80 + 48) = rect;
        *(v80 + 72) = v181;
        *(v80 + 80) = a9;
        *(v80 + 88) = width;
        *(v80 + 96) = MaxX;
        *(v80 + 104) = y;
        *(v80 + 56) = 0;
        *(v80 + 58) = v214;
        swift_beginAccess();
        sub_1004684CC(v80);
        swift_endAccess();

        goto LABEL_250;
      }

      swift_beginAccess();
      *(v43 + 16) = v57;

      sub_1004724B8();
      *(v43 + 24) = v39;

      v242 = *(v43 + 80);
      *(v43 + 80) = a9;
      *(v43 + 88) = width;
      *(v43 + 96) = MaxX;
      *(v43 + 104) = y;
      v237.origin.x = a9;
      v237.origin.y = width;
      v237.size.width = MaxX;
      v237.size.height = y;
      if (!CGRectEqualToRect(v237, v242))
      {
        *(v43 + 128) = 0;
      }

      *(v43 + 40) = [v212 characterRange];
      *(v43 + 48) = v154;
      swift_beginAccess();
      sub_1004684CC(v43);
      swift_endAccess();
      swift_beginAccess();
      sub_1004684CC(v43);
      swift_endAccess();

      v155 = a19;
LABEL_250:
      v238.origin.x = a9;
      v238.origin.y = width;
      v238.size.width = MaxX;
      v238.size.height = y;
      MinX = CGRectGetWidth(v238);
      swift_beginAccess();
      if (*v155 < MinX)
      {
        v239.origin.x = a9;
        v239.origin.y = width;
        v239.size.width = MaxX;
        v239.size.height = y;
        MinX = CGRectGetWidth(v239);
        swift_beginAccess();
        *v155 = MinX;
      }

      swift_beginAccess();
      sub_10045FF44(v67);
      swift_endAccess();

      if (v210)
      {

        return 1;
      }

      v182 = sub_1004BBE24();

      v183 = [v182 substringWithRange:{v205, a4}];

      sub_1004BBE64();
      v67 = v184;

      *&v80 = COERCE_DOUBLE(sub_1004BD264());

      if ((v80 & 1) == 0)
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
      v146 = sub_1004BD6A4();
      a9 = MinX + a9;
      if (!v146)
      {
        continue;
      }

      break;
    }

LABEL_185:
    rect = *&v80;
    if (v146 >= 1)
    {
      v147 = 0;
      v148 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
      v149 = v67 & 0xC000000000000001;
      v150 = v67;
      do
      {
        if (v149)
        {
          v151 = sub_1004BD484();
        }

        else
        {
          v151 = *(v67 + 8 * v147 + 32);
        }

        if (*(v151 + 58) == *(v215 + v148))
        {
          v236.size.width = *(v151 + 96);
          v236.size.height = *(v151 + 104);
          v241.origin.x = *(v151 + 80);
          v236.origin.y = *(v151 + 88);
          *(v151 + 80) = a9;
          v236.origin.x = a9;
          v241.origin.y = v236.origin.y;
          v241.size.width = v236.size.width;
          v241.size.height = v236.size.height;
          if (!CGRectEqualToRect(v236, v241))
          {
            *(v151 + 128) = 0;
          }
        }

        ++v147;
        v67 = v150;
      }

      while (v146 != v147);
      v50 = v215;
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

int64_t sub_10045F9E8(uint64_t a1)
{
  v3 = v1[1];
  v4 = v3 + 32;
  v5 = *(v3 + 16);
  if (*v1)
  {
    result = sub_10044EC24(a1, v4, v5, *v1 + 16, *v1 + 32);
    if ((v8 & 1) == 0)
    {
      return sub_10046B75C(result, v7, sub_100470F84);
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
      return sub_10046B75C(result, v7, sub_100470F84);
    }
  }

  return result;
}

void sub_10045FA74()
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
          v8 = sub_1004BD484();
          v9 = sub_1004BD484();
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
          v1 = sub_10044EC2C(v1);
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
          v1 = sub_10044EC2C(v1);
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
      if (!sub_1004BD6A4())
      {
        return;
      }

      v2 = sub_1004BD6A4();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

uint64_t sub_10045FC28()
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
    result = sub_1004472D8(v4);
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

void sub_10045FD98()
{
  v1 = *v0;
  v2 = (*v0)[2];
  if (v2 >= 2)
  {
    v3 = v2 - 1;
    v4 = 56 * v2 - 24;
    v5 = 10;
    v6 = 1;
    while (1)
    {
      v7 = v1[2];
      if (v6 - 1 >= v7)
      {
        break;
      }

      if (v3 >= v7)
      {
        goto LABEL_12;
      }

      v21 = *&v1[v5 - 6];
      v8 = v1[v5 - 3];
      v9 = v1[v5 - 2];
      v19 = v1[v5 - 1];
      v20 = v1[v5 - 4];
      v18 = v1[v5];
      v10 = *(v1 + v4);
      v11 = *(v1 + v4 + 8);
      v12 = *(v1 + v4 + 24);
      v13 = *(v1 + v4 + 32);
      v23 = *(v1 + v4 + 40);
      v24 = *(v1 + v4 + 16);
      v22 = *(v1 + v4 + 48);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_10046CA2C(v1);
      }

      if (v6 - 1 >= v1[2])
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

      if (v3 >= v1[2])
      {
        goto LABEL_14;
      }

      v15 = v1 + v4;
      *v15 = v21;
      *(v15 + 2) = v20;
      *(v15 + 3) = v8;
      *(v15 + 4) = v9;
      *(v15 + 5) = v19;
      v15[48] = v18;

      *v17 = v1;
      --v3;
      v4 -= 56;
      v5 += 7;
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

unint64_t sub_10045FF44(unint64_t result)
{
  v2 = v1;
  v20 = result;
  if (result >> 62)
  {
LABEL_35:
    result = sub_1004BD6A4();
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
      v5 = sub_1004BD484();
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
      sub_10044EC24(v5, v9, v10, v8 + 16, v8 + 32);
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

    sub_1004BD4F4();
    sub_1004BD534();
    sub_1004BD544();
    sub_1004BD504();
    v12 = v2[1];
    v13 = *(v12 + 16);
    if (!v8)
    {
      if (v13 > 0xF)
      {
        v14 = 0;
LABEL_24:
        v15 = sub_1004B7ED4();
        if (v14 <= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        v17 = sub_100468C6C(v12, v16, 0, v14);

        *v2 = v17;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    swift_beginAccess();
    if (sub_1004B7EA4() >= v13)
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

    v19 = sub_1004B7EC4();

    *v2 = v19;
    v18 = v19;
  }

  if (v18)
  {
    sub_1004B7E64();
LABEL_6:

    goto LABEL_7;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id sub_1004601D8(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v54 = a1;
  v3 = sub_1004B6E44();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100615038);
  __chkstk_darwin();
  v7 = &v47 - v6;
  sub_100003ABC(&qword_100615040);
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
  sub_100003ABC(&unk_100616F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C5070;
  v51 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v53 = inited + 32;
  v18 = sub_100009130(0, &qword_100616F10);
  *(inited + 40) = v13;
  *(inited + 64) = v18;
  *(inited + 72) = NSForegroundColorAttributeName;
  v19 = sub_100003ABC(&qword_100615B28);
  *(inited + 80) = v14;
  *(inited + 104) = v19;
  *(inited + 112) = NSLanguageIdentifierAttributeName;
  v20 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  swift_beginAccess();
  sub_10000F778(v2 + v20, v7, &qword_100615038);
  if ((*(v4 + 48))(v7, 1, v3))
  {
    v21 = v14;
    v22 = NSLanguageIdentifierAttributeName;
    v23 = v13;
    v24 = v52;
    v25 = v51;
    v26 = NSForegroundColorAttributeName;
    sub_100007214(v7, &qword_100615038);
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
  sub_100007214(v7, &qword_100615038);
  v35 = v50;
  sub_1004B6E14();
  (*(v4 + 8))(v28, v3);
  v36 = sub_1004B6D64();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_100007214(v35, &qword_100615040);
    v27 = v30;
    v21 = v48;
    goto LABEL_14;
  }

  v45 = sub_1004B6D44();
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
  sub_100447ACC(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100615670);
  swift_arrayDestroy();
  v40 = objc_allocWithZone(NSAttributedString);
  v41 = sub_1004BBE24();
  _s3__C3KeyVMa_1(0);
  sub_1004701D0(&qword_100616F20, _s3__C3KeyVMa_1);
  isa = sub_1004BBC24().super.isa;

  v43 = [v40 initWithString:v41 attributes:isa];

  return v43;
}

void sub_1004607B8(char a1, double a2)
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
  v9 = sub_1004BBF24();
  v11 = v10;
  if (v9 == sub_1004BBF24() && v11 == v12)
  {

    goto LABEL_10;
  }

  v14 = sub_1004BD9C4();

  if (v14)
  {

LABEL_10:

LABEL_11:
    v15 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v16 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v15 = 1;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
LABEL_12:

    sub_100470218(v16);
    return;
  }

  v17 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
  v18 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel];
  if (!v18 || (v19 = [v18 attributedText]) == 0)
  {
    v25 = v4[1];
LABEL_24:
    if (v25)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v20 = v19;
  v21 = [v19 string];

  v22 = sub_1004BBE64();
  v24 = v23;

  v25 = v4[1];
  if (!v24)
  {
    goto LABEL_24;
  }

  if (!v25)
  {

    goto LABEL_30;
  }

  if (v22 == *v4 && v25 == v24)
  {

    if (a1)
    {
      goto LABEL_30;
    }

LABEL_26:

    return;
  }

  v44 = sub_1004BD9C4();

  if ((v44 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if ((a1 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_30:
  v26 = *&v2[v17];
  if (v26)
  {
    v27 = *&v2[v17];
  }

  else
  {
    v27 = [objc_allocWithZone(UILabel) init];
    [v27 setNumberOfLines:0];
    [v27 setClipsToBounds:0];
    [v2 addSubview:v27];
    v28 = *&v2[v17];
    *&v2[v17] = v27;

    v29 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v30 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v29 = 0u;
    *(v29 + 1) = 0u;
    *(v29 + 4) = 0;
    sub_100470218(v30);
    v26 = 0;
  }

  v31 = 264;
  if (!*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8])
  {
    v31 = 272;
  }

  v32 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + v31];
  v33 = v26;
  v45 = v32;
  v34 = sub_1004601D8(v8, v5);

  [v34 boundingRectWithSize:1 options:0 context:{a2, INFINITY}];
  v36 = v35;
  v38 = v37;
  Height = CGRectGetHeight(v3[2]);
  v40 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 296];
  Width = CGRectGetWidth(v3[2]);
  if (v36 <= Width)
  {
    v36 = Width;
  }

  v42 = Height + v40;
  [v27 setTextAlignment:*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment]];

  v43 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  if (*v43)
  {

    v16 = *v43;
    *v43 = v34;
    *(v43 + 1) = 0;
    *(v43 + 2) = v42;
    *(v43 + 3) = v36;
    *(v43 + 4) = v38;
    goto LABEL_12;
  }

  [v27 setAttributedText:v34];
  [v27 setFrame:{0.0, v42, v36, v38}];
}

void sub_100460C58(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, NSObject *a6@<X5>, os_log_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, CGFloat a10@<D1>)
{
  v734 = a6;
  v735 = a5;
  v732 = a3;
  v18 = sub_1004B6E44();
  v736 = *(v18 - 1);
  __chkstk_darwin();
  v20 = (&v690 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003ABC(&qword_100615038);
  __chkstk_darwin();
  v733 = &v690 - v21;
  sub_100003ABC(&qword_100615040);
  __chkstk_darwin();
  object = &v690 - v22;
  sub_100003ABC(&qword_100615068);
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

  v723 = sub_1004BBE24();

  v759 = a1;
  v760 = a2;
  v757 = a1;
  v758 = a2;
  swift_retain_n();
  swift_retain_n();

  v755 = sub_10045DA48(v31);
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

  sub_10045FD98();
  sub_100468B34(sub_100468EC4);

  v722 = 1;
  v18 = v758;
LABEL_10:
  v20 = &v766;
  a2 = _swiftEmptyArrayStorage;
  v754 = _swiftEmptyArrayStorage;
  v753 = sub_100447D2C(_swiftEmptyArrayStorage);
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
      sub_100013D04(&v816, v809);
      sub_10000F778(&v817, v809, &qword_100615690);
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
      sub_1004BC274();
      if (*((v805 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v805 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v725 = *((v805 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1004BC2E4();
      }

      sub_1004BC334();
      v51 = v756 + 4;
      v52 = v756[2].isa;
      if (v755)
      {
        v53 = sub_10044EC24(v40, v51, v52, v755 + 16, v755 + 32);
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

      sub_10046B75C(v53, v45, sub_100470F84);

LABEL_20:

      v10 = a7[2].isa;
      v744 = v40;
      goto LABEL_21;
    }

    sub_100013D04(&v816, v809);
    sub_10000F778(&v817, v809, &qword_100615690);
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
        a7 = sub_1004BD484();
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

      v56 = sub_1004BD6A4();
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
            v185 = sub_10044EC7C(v732);
            if (v185)
            {
              v186 = v185 - 1;
              if (__OFSUB__(v185, 1))
              {
                __break(1u);
              }

              else
              {
                sub_10044213C(v185 - 1, (v184 & 0xC000000000000001) == 0, v184);
                if ((v184 & 0xC000000000000001) == 0)
                {
                  v187 = *(v184 + 8 * v186 + 32);

                  goto LABEL_171;
                }
              }

              v187 = sub_1004BD484();
LABEL_171:
              v188 = sub_100448340(a7);

              a1 = v183;
              if (v188 > 0)
              {
                v741 = v187;
                if (qword_100614E70 != -1)
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
            if (qword_100614E70 != -1)
            {
              swift_once();
            }

            v159 = sub_1004B80B4();
            sub_100007084(v159, static Logger.lyrics);
            v160 = swift_allocObject();
            v161 = v737;
            *(v160 + 16) = v737;
            v162 = v161;
            v163 = sub_1004B8094();
            v164 = sub_1004BC9A4();
            v165 = swift_allocObject();
            *(v165 + 16) = 34;
            v166 = swift_allocObject();
            *(v166 + 16) = 8;
            v167 = swift_allocObject();
            *(v167 + 16) = sub_100470F88;
            *(v167 + 24) = v160;
            v168 = swift_allocObject();
            *(v168 + 16) = sub_100470F74;
            *(v168 + 24) = v167;
            sub_100003ABC(&qword_1006150C8);
            v169 = swift_allocObject();
            *(v169 + 16) = xmmword_1004C5070;
            *(v169 + 32) = sub_100471004;
            *(v169 + 40) = v165;
            *(v169 + 48) = sub_100471004;
            *(v169 + 56) = v166;
            *(v169 + 64) = sub_100470E54;
            *(v169 + 72) = v168;
            swift_setDeallocating();
            sub_100003ABC(&qword_1006156D0);
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
              sub_10044CAE0();
              v172 = sub_1004BD224();
              location = v162;
              v791._countAndFlagsBits = v172;
              v791._object = v173;
              v174 = String.nonBreakingSpace.unsafeMutableAddressor();
              v175 = v174[1];
              v784 = *v174;
              v785 = v175;
              *&v781[0] = 0x3B7073626E26;
              *(&v781[0] + 1) = 0xE600000000000000;
              v176 = sub_1004BD224();
              v178 = v177;

              v791._countAndFlagsBits = v176;
              v791._object = v178;
              v784 = 10;
              v785 = 0xE100000000000000;
              *&v781[0] = 28252;
              *(&v781[0] + 1) = 0xE200000000000000;
              v179 = sub_1004BD224();
              v181 = v180;

              v182 = sub_100441BE8(v179, v181, &v777);

              *(v170 + 4) = v182;
              _os_log_impl(&_mh_execute_header, v163, v164, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to make it fit with the previous line by forcing a line break after it. New text: %{public}s", v170, 0xCu);
              sub_100004C6C(v742);
            }

            a8 = v719;
            sub_100467AB8(*(a1 + 88), *(a1 + 96));

            goto LABEL_158;
          }

LABEL_152:

          goto LABEL_153;
        }

        if (v10)
        {
          sub_1004BD484();
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

          v61 = sub_100446724(&v812, v60 + 32, a1, (v59 + 16), v59 + 32);
          v63 = v62;
          a1 = v64;

          if (v63)
          {
            goto LABEL_69;
          }

LABEL_68:
          sub_10046B5B4(v61, a1, v761);
          v768 = v761[1];
          sub_1001B4A3C(&v768);
          v767 = v762;
          sub_100007214(&v767, &qword_100615690);
        }

        else
        {
          v65 = sub_10046889C(&v812, v760 + 32, *(v760 + 16));
          if ((v66 & 1) == 0)
          {
            v61 = v65;
            a1 = 0;
            goto LABEL_68;
          }
        }

LABEL_69:
        sub_100013D04(&v816, v809);
        sub_10000F778(&v817, v809, &qword_100615690);
        object = location;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          object = sub_100440D14(0, *(object + 16) + 1, 1, object);
        }

        v68 = *(object + 16);
        v67 = *(object + 24);
        v20 = &v766;
        if (v68 >= v67 >> 1)
        {
          object = sub_100440D14((v67 > 1), v68 + 1, 1, object);
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
        sub_100455098(a2, &v812);

        v18 = v740;
        goto LABEL_13;
      }

      goto LABEL_78;
    }

    v73 = sub_1004BD6A4();
    object = location;
    if (v73)
    {
      goto LABEL_54;
    }

LABEL_79:

    if (!v744)
    {
      sub_1001B4A3C(&v816);
      sub_100007214(&v817, &qword_100615690);
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
      v29 = sub_1004BD6A4();
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
      sub_1001B4A3C(&v816);
      sub_100007214(&v817, &qword_100615690);
      goto LABEL_14;
    }

    sub_100013D04(&v816, v809);
    sub_10000F778(&v817, v809, &qword_100615690);

    sub_100455098(_swiftEmptyArrayStorage, &v812);
    v76 = v759;
    v77 = v760;
    v78 = *(v760 + 16);
    if (v759)
    {

      v79 = sub_100446724(&v812, v77 + 32, v78, (v76 + 16), v76 + 32);
      v81 = v80;
      a1 = v82;

      if (v81)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

    v83 = sub_10046889C(&v812, v760 + 32, *(v760 + 16));
    if ((v84 & 1) == 0)
    {
      v79 = v83;
      a1 = 0;
LABEL_92:
      sub_10046B5B4(v79, a1, v763);
      v766 = v763[1];
      sub_1001B4A3C(&v766);
      v765 = v764;
      sub_100007214(&v765, &qword_100615690);
    }

LABEL_93:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      object = sub_100440D14(0, *(object + 16) + 1, 1, object);
    }

    v86 = *(object + 16);
    v85 = *(object + 24);
    if (v86 >= v85 >> 1)
    {
      object = sub_100440D14((v85 > 1), v86 + 1, 1, object);
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
  sub_10044211C((v91 - 1), 1, object);
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

  v102 = sub_100454FF0(&v769, a7);
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
    sub_10045FA74();
    v103 = *&v781[0];
  }

  if (!sub_10044EC7C(v103))
  {

    goto LABEL_139;
  }

  v104 = v103 & 0xC000000000000001;
  sub_10044213C(0, (v103 & 0xC000000000000001) == 0, v103);
  v36 = a7;
  if ((v103 & 0xC000000000000001) != 0)
  {
    v39 = sub_1004BD484();
  }

  else
  {
    v39 = *(v103 + 32);
  }

  v105 = sub_10044EC7C(v103);
  if (!v105)
  {
    goto LABEL_121;
  }

  if (__OFSUB__(v105, 1))
  {
    goto LABEL_544;
  }

  sub_10044213C(v105 - 1, v104 == 0, v103);
  if (v104)
  {
    goto LABEL_545;
  }

  while (2)
  {

    sub_10047768C();
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

    sub_10044211C(v113 - 1, 1, *&v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words]);
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
    sub_100013D04(&v818, &v805);
    sub_10000F778(&v819, &v805, &qword_100615690);

    sub_100455040(v809, v120);
    v122 = v121;

    sub_1001B4A3C(&v818);
    sub_100007214(&v819, &qword_100615690);
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
      sub_100445084(1, &v805, isUniquelyReferenced_nonNull_native);
      *&v119[v118] = v791._countAndFlagsBits;
      swift_endAccess();
      sub_100467940(v39);
      if (qword_100614E70 != -1)
      {
        swift_once();
      }

      v125 = sub_1004B80B4();
      sub_100007084(v125, static Logger.lyrics);
      v126 = swift_allocObject();
      *(v126 + 16) = v119;
      v127 = v119;
      v36 = sub_1004B8094();
      v128 = sub_1004BC9A4();
      v129 = swift_allocObject();
      *(v129 + 16) = 34;
      v130 = swift_allocObject();
      *(v130 + 16) = 8;
      v131 = swift_allocObject();
      *(v131 + 16) = sub_100470F88;
      *(v131 + 24) = v126;
      v132 = swift_allocObject();
      *(v132 + 16) = sub_100470F74;
      *(v132 + 24) = v131;
      sub_100003ABC(&qword_1006150C8);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_1004C5070;
      *(v133 + 32) = sub_100471004;
      *(v133 + 40) = v129;
      *(v133 + 48) = sub_100471004;
      *(v133 + 56) = v130;
      *(v133 + 64) = sub_100470E54;
      *(v133 + 72) = v132;
      swift_setDeallocating();
      sub_100003ABC(&qword_1006156D0);
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
        sub_10044CAE0();
        *&v801 = sub_1004BD224();
        *(&v801 + 1) = v136;
        v137 = String.nonBreakingSpace.unsafeMutableAddressor();
        v138 = v137[1];
        v791._countAndFlagsBits = *v137;
        v791._object = v138;
        v784 = 0x3B7073626E26;
        v785 = 0xE600000000000000;
        v139 = sub_1004BD224();
        LODWORD(v742) = v128;
        v141 = v140;

        *&v801 = v139;
        *(&v801 + 1) = v141;
        v791._countAndFlagsBits = 10;
        v791._object = 0xE100000000000000;
        v784 = 28252;
        v785 = 0xE200000000000000;
        v142 = sub_1004BD224();
        v144 = v143;

        v145 = sub_100441BE8(v142, v144, &v777);

        *(v134 + 4) = v145;
        _os_log_impl(&_mh_execute_header, v36, v742, "[Transliteration] Last transliterated word in this line has more original words to match in the next line, and the next line only contains words that match this transliteration. Insert a line break before this word to make sure they are all in the same line. New text: %{public}s", v134, 0xCu);
        sub_100004C6C(location);

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
    if (!sub_10044EC7C(v742))
    {
      goto LABEL_188;
    }

    v148 = v742;
    v149 = v742 & 0xC000000000000001;
    sub_10044213C(0, (v742 & 0xC000000000000001) == 0, v742);
    if (v149)
    {

      v214 = sub_1004BD484();
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
          sub_100013D04(&v820, &v801);
          sub_10000F778(&v821, &v801, &qword_100615690);

          sub_100455040(&v805, v153);
          v155 = v154;

          sub_1001B4A3C(&v820);
          sub_100007214(&v821, &qword_100615690);
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
            sub_100445084(1, &v801, v157);
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
                sub_10044213C(1uLL, v149 == 0, v742);
                if (!v149)
                {
                  goto LABEL_166;
                }

                v158 = sub_1004BD484();
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
    v215 = sub_100448340(v44);
    v217 = v216;
    v829.location = sub_100448340(v40);
    v829.length = v218;
    v828.location = v215;
    v828.length = v217;
    v219 = NSUnionRange(v828, v829);
    v220 = sub_1004BBE24();
    location = v219.location;
    v221 = [v220 substringWithRange:{v219.location, v219.length}];

    sub_1004BBE64();
    v721 = String.trim()();

    v44 = v734;
    v36 = v735;
    v222 = [v723 substringWithRange:{v735, v734}];
    v223 = sub_1004BBE64();
    v39 = v224;

    v225 = String.trim()();
    object = v225._object;
    *&v801 = v223;
    *(&v801 + 1) = v39;
    countAndFlagsBits = v225._countAndFlagsBits;
    v791 = v225;
    v226 = sub_1004B6E64();
    v227 = v729;
    (*(*(v226 - 8) + 56))(v729, 1, 1, v226);
    v228 = sub_10044CAE0();

    v702 = v228;
    sub_1004BD234();
    v40 = v229;
    sub_100007214(v227, &qword_100615068);
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
      sub_1004BD484();
      continue;
    }

    break;
  }

LABEL_192:
  if (qword_100614E78 != -1)
  {
    goto LABEL_530;
  }

  while (2)
  {
    v232 = sub_10043EA2C(3, *(static LyricsOptionsManager.shared + 40));
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
    sub_10000F778(&v234[v233], v733, &qword_100615038);
    v236 = v736;
    v237 = v728;
    if ((*(*&v736 + 48))(v235, 1, v728))
    {
      v238 = &qword_100615038;
      v239 = v235;
      goto LABEL_198;
    }

    v240 = v726;
    (*(*&v236 + 16))(v726, v235, v237);
    sub_100007214(v235, &qword_100615038);
    v241 = v727;
    sub_1004B6E14();
    (*(*&v236 + 8))(v240, v237);
    v242 = sub_1004B6D64();
    v243 = *(v242 - 8);
    if ((*(v243 + 48))(v241, 1, v242) == 1)
    {
      v238 = &qword_100615040;
      v239 = v241;
LABEL_198:
      sub_100007214(v239, v238);
LABEL_199:
      v244 = 0;
      v245 = 0xE000000000000000;
    }

    else
    {
      v244 = sub_1004B6D44();
      v245 = v309;
      (*(v243 + 8))(v241, v242);
    }

    sub_100003ABC(&unk_100616F00);
    v246 = swift_allocObject();
    *(v246 + 16) = xmmword_1004C50C0;
    *(v246 + 32) = NSFontAttributeName;
    v247 = v737;
    object = &v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs];
    v248 = *&v737[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 312];
    v249 = sub_100009130(0, &qword_100616F10);
    *(v246 + 40) = v248;
    *(v246 + 64) = v249;
    *(v246 + 72) = NSLanguageIdentifierAttributeName;
    *(v246 + 104) = &type metadata for String;
    *(v246 + 80) = v244;
    *(v246 + 88) = v245;
    v250 = NSFontAttributeName;
    v251 = v248;
    v252 = NSLanguageIdentifierAttributeName;

    sub_100447ACC(v246);
    swift_setDeallocating();
    sub_100003ABC(&qword_100615670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v253 = objc_allocWithZone(NSAttributedString);
    v254 = *&v721._object;
    v255 = sub_1004BBE24();
    _s3__C3KeyVMa_1(0);
    sub_1004701D0(&qword_100616F20, _s3__C3KeyVMa_1);
    v256 = sub_1004BBC24().super.isa;

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
          v297 = sub_100454FF0(&v769, v753);
          MaxX = v27;
          if (!v297)
          {
            goto LABEL_428;
          }

          v299 = v297;
          v300 = sub_10044EC7C(v297);
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
            sub_10044213C(v300 - 1, (v299 & 0xC000000000000001) == 0, v299);
            if ((v299 & 0xC000000000000001) == 0)
            {
              v302 = *(v299 + 8 * v301 + 32);

              goto LABEL_229;
            }
          }

          v302 = sub_1004BD484();
LABEL_229:

          MaxX = CGRectGetMaxX(*(v302 + 176));
          v303 = sub_100448340(*(v302 + 48));
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
                    v189 = sub_1004B80B4();
                    sub_100007084(v189, static Logger.lyrics);
                    v190 = swift_allocObject();
                    v191 = v737;
                    *(v190 + 16) = v737;
                    v742 = v191;
                    v192 = sub_1004B8094();
                    v193 = sub_1004BC9A4();
                    v194 = swift_allocObject();
                    *(v194 + 16) = 34;
                    v195 = swift_allocObject();
                    *(v195 + 16) = 8;
                    v196 = swift_allocObject();
                    *(v196 + 16) = sub_1004701B4;
                    *(v196 + 24) = v190;
                    v197 = swift_allocObject();
                    *(v197 + 16) = sub_100470F74;
                    *(v197 + 24) = v196;
                    sub_100003ABC(&qword_1006150C8);
                    v198 = swift_allocObject();
                    *(v198 + 16) = xmmword_1004C5070;
                    *(v198 + 32) = sub_100471004;
                    *(v198 + 40) = v194;
                    *(v198 + 48) = sub_100471004;
                    *(v198 + 56) = v195;
                    *(v198 + 64) = sub_100470E54;
                    *(v198 + 72) = v197;
                    swift_setDeallocating();
                    sub_100003ABC(&qword_1006156D0);
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
                      sub_10044CAE0();
                      v791._countAndFlagsBits = sub_1004BD224();
                      v791._object = v202;
                      v203 = String.nonBreakingSpace.unsafeMutableAddressor();
                      v204 = v203[1];
                      v784 = *v203;
                      v785 = v204;
                      *&v781[0] = 0x3B7073626E26;
                      *(&v781[0] + 1) = 0xE600000000000000;
                      v205 = sub_1004BD224();
                      v207 = v206;

                      v791._countAndFlagsBits = v205;
                      v791._object = v207;
                      v784 = 10;
                      v785 = 0xE100000000000000;
                      *&v781[0] = 28252;
                      *(&v781[0] + 1) = 0xE200000000000000;
                      v208 = sub_1004BD224();
                      v210 = v209;

                      v211 = sub_100441BE8(v208, v210, &v777);

                      *(v199 + 4) = v211;
                      v212 = location;
                      _os_log_impl(&_mh_execute_header, location, v740, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to bring the previous line's last word into this line by forcing a line break before it. New text: %{public}s", v199, 0xCu);
                      sub_100004C6C(v200);
                    }

                    else
                    {
                    }

                    sub_100467940(v741);

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

                  v552 = sub_10046E800(v538, v539, v540, v541, v550, v551, v544, v754, v721._countAndFlagsBits, v721._object, *&v736, v542, _swiftEmptyArrayStorage);
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
                    v109 = sub_10044194C(0, v109[2] + 1, 1, v109);
                  }

                  v555 = v109[2];
                  v554 = v109[3];
                  if (v555 >= v554 >> 1)
                  {
                    v109 = sub_10044194C((v554 > 1), v555 + 1, 1, v109);
                  }

                  ++v535;

                  v109[2] = (v555 + 1);
                  v556 = &v109[2 * v555];
                  v556[4] = v552;
                  v556[5] = v544;
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

              v557 = sub_100454FF0(&v769, v753);

              if (v557)
              {
                v558 = sub_10044EC7C(v557);
                if (v558)
                {
                  v559 = v558 - 1;
                  if (__OFSUB__(v558, 1))
                  {
                    __break(1u);
                  }

                  else
                  {
                    sub_10044213C(v558 - 1, (v557 & 0xC000000000000001) == 0, v557);
                    if ((v557 & 0xC000000000000001) == 0)
                    {
                      v560 = *(v557 + 8 * v559 + 32);

                      goto LABEL_460;
                    }
                  }

                  v560 = sub_1004BD484();
LABEL_460:

                  sub_1004774B4(v560[22], v560[23], v27 + v560[24], v560[25]);
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
            v509 = sub_1004B80B4();
            sub_100007084(v509, static Logger.lyrics);
            v510 = swift_allocObject();
            *(v510 + 16) = v245;
            v511 = v245;
            v512 = sub_1004B8094();
            v513 = sub_1004BC9A4();
            v514 = swift_allocObject();
            *(v514 + 16) = 34;
            v515 = swift_allocObject();
            *(v515 + 16) = 8;
            v516 = swift_allocObject();
            *(v516 + 16) = sub_100470F88;
            *(v516 + 24) = v510;
            v517 = swift_allocObject();
            *(v517 + 16) = sub_100470F74;
            *(v517 + 24) = v516;
            sub_100003ABC(&qword_1006150C8);
            v518 = swift_allocObject();
            *(v518 + 16) = xmmword_1004C5070;
            *(v518 + 32) = sub_100471004;
            *(v518 + 40) = v514;
            *(v518 + 48) = sub_100471004;
            *(v518 + 56) = v515;
            *(v518 + 64) = sub_100470E54;
            *(v518 + 72) = v517;
            swift_setDeallocating();
            sub_100003ABC(&qword_1006156D0);
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
              v748 = sub_1004BD224();
              v749 = v522;
              v523 = String.nonBreakingSpace.unsafeMutableAddressor();
              v524 = v523[1];
              v750 = *v523;
              v751 = v524;
              v745 = 0x3B7073626E26;
              v746 = 0xE600000000000000;
              v525 = sub_1004BD224();
              v527 = v526;

              v748 = v525;
              v749 = v527;
              v750 = 10;
              v751 = 0xE100000000000000;
              v745 = 28252;
              v746 = 0xE200000000000000;
              v528 = sub_1004BD224();
              v530 = v529;

              v531 = sub_100441BE8(v528, v530, &v747);

              *(v519 + 4) = v531;
              _os_log_impl(&_mh_execute_header, v512, v742, "[Transliteration][Last word timing check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v519, 0xCu);
              sub_100004C6C(v520);

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
    v265 = sub_100454FF0(&v795, v753);

    if (!v265)
    {
LABEL_238:

      goto LABEL_239;
    }

    if (!sub_10044EC7C(v265))
    {

      goto LABEL_238;
    }

    sub_10044213C(0, (v265 & 0xC000000000000001) == 0, v265);
    if ((v265 & 0xC000000000000001) != 0)
    {
      v39 = sub_1004BD484();
    }

    else
    {
      v39 = *(v265 + 32);
    }

    v266 = sub_100454FF0(&v769, v40);

    if (v266)
    {
      v267 = sub_10044EC7C(v266);
      if (v267)
      {
        v268 = v267;
        v694 = v44;

        v57 = __OFSUB__(v268, 1);
        v269 = v268 - 1;
        if (!v57)
        {
          sub_10044213C(v269, (v266 & 0xC000000000000001) == 0, v266);
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
            sub_100467940(v271);
            if (qword_100614E70 != -1)
            {
              swift_once();
            }

            v273 = sub_1004B80B4();
            sub_100007084(v273, static Logger.lyrics);
            v274 = swift_allocObject();
            *(v274 + 16) = v272;
            v275 = v272;
            v276 = sub_1004B8094();
            v277 = sub_1004BC9A4();
            v278 = swift_allocObject();
            *(v278 + 16) = 34;
            v279 = swift_allocObject();
            *(v279 + 16) = 8;
            v280 = swift_allocObject();
            *(v280 + 16) = sub_100470F88;
            *(v280 + 24) = v274;
            v281 = swift_allocObject();
            *(v281 + 16) = sub_100470F74;
            *(v281 + 24) = v280;
            sub_100003ABC(&qword_1006150C8);
            v282 = swift_allocObject();
            *(v282 + 16) = xmmword_1004C5070;
            *(v282 + 32) = sub_100471004;
            *(v282 + 40) = v278;
            *(v282 + 48) = sub_100471004;
            *(v282 + 56) = v279;
            *(v282 + 64) = sub_100470E54;
            *(v282 + 72) = v281;
            swift_setDeallocating();
            sub_100003ABC(&qword_1006156D0);
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
              *&v801 = sub_1004BD224();
              *(&v801 + 1) = v286;
              v287 = String.nonBreakingSpace.unsafeMutableAddressor();
              v288 = v287[1];
              v791._countAndFlagsBits = *v287;
              v791._object = v288;
              v784 = 0x3B7073626E26;
              v785 = 0xE600000000000000;
              v289 = sub_1004BD224();
              v291 = v290;

              *&v801 = v289;
              *(&v801 + 1) = v291;
              v791._countAndFlagsBits = 10;
              v791._object = 0xE100000000000000;
              v784 = 28252;
              v785 = 0xE200000000000000;
              v292 = sub_1004BD224();
              v294 = v293;

              v295 = sub_100441BE8(v292, v294, v781);

              *(v283 + 4) = v295;
              _os_log_impl(&_mh_execute_header, v276, v742, "[Transliteration] Directions don't match and transliterated line goes beyond view bounds. Inserting line break. New text: %{public}s", v283, 0xCu);
              sub_100004C6C(v284);

              goto LABEL_219;
            }

LABEL_410:

LABEL_411:

            goto LABEL_477;
          }

LABEL_552:
          v270 = sub_1004BD484();
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
      sub_10045FC28();
      v308 = v245;
    }

LABEL_242:
    if (__OFSUB__(0, location))
    {
      goto LABEL_533;
    }

    v310 = v754;
    v311 = sub_10046E800(v27, a10, v260, v262, v27, a10, v44, v754, v721._countAndFlagsBits, *&v254, -location, 0, _swiftEmptyArrayStorage);
    v752 = v311;
    v312 = sub_10044EC7C(v311);
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
      sub_100003ABC(&qword_100615688);
      v109 = swift_allocObject();
      *(v109 + 1) = xmmword_1004C50A0;
      v109[4] = v311;
      v109[5] = v44;

      goto LABEL_400;
    }

    if (v722)
    {
      sub_10045FA74();
    }

    v690 = v310;
    v39 = v752;
    v707 = sub_10044EC7C(v752);
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
      location = sub_1004BD484();
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
  sub_100013D04(&v822, &v777);
  v36 = &qword_100615690;
  sub_10000F778(&v823, &v777, &qword_100615690);
  v323 = sub_100442BFC(&v801);
  v39 = v324;
  sub_1001B4A3C(&v822);
  sub_100007214(&v823, &qword_100615690);
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
          sub_1004774B4(*(v338 + 176) + a10, *(v338 + 184), *(v338 + 192), *(v338 + 200));
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
            sub_1004774B4(*(*&v254 + 176), *(*&v254 + 184), v341 + v342, *(*&v254 + 200));
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
                v344 = sub_100442BFC(v775);
                if (v345)
                {
                  v346 = *(*(v40 + 56) + 8 * v344);
                  if (v346 >> 62)
                  {
                    if (sub_1004BD6A4())
                    {
LABEL_378:
                      v693 = v316;
                      v711 = v40;

                      swift_bridgeObjectRelease_n();
                      sub_10044213C(0, (v346 & 0xC000000000000001) == 0, v346);
                      if ((v346 & 0xC000000000000001) != 0)
                      {
                        v245 = sub_1004BD484();
                      }

                      else
                      {
                        v245 = *(v346 + 32);
                      }

                      if (v722)
                      {
                        sub_100467AB8(*(v245 + 88), *(v245 + 96));
                        goto LABEL_535;
                      }

LABEL_534:
                      sub_100467940(v245);
LABEL_535:
                      if (qword_100614E70 != -1)
                      {
                        swift_once();
                      }

                      v671 = sub_1004B80B4();
                      sub_100007084(v671, static Logger.lyrics);
                      v672 = v737;

                      v673 = sub_1004B8094();
                      v674 = sub_1004BC9A4();

                      if (os_log_type_enabled(v673, v674))
                      {
                        v675 = swift_slowAlloc();
                        v742 = swift_slowAlloc();
                        v745 = v742;
                        *v675 = v697;
                        v676 = *(*&v254 + 72);
                        v677 = *(*&v254 + 80);

                        v678 = sub_100441BE8(v676, v677, &v745);

                        *(v675 + 4) = v678;
                        *(v675 + 12) = 2082;
                        v679 = v716[1];
                        *&v777 = *v716;
                        *(&v777 + 1) = v679;
                        v748 = 10519010;
                        v749 = 0xA300000000000000;
                        v750 = 44226;
                        v751 = 0xA200000000000000;
                        *&v777 = sub_1004BD224();
                        *(&v777 + 1) = v680;
                        v681 = String.nonBreakingSpace.unsafeMutableAddressor();
                        v682 = v681[1];
                        v748 = *v681;
                        v749 = v682;
                        v750 = 0x3B7073626E26;
                        v751 = 0xE600000000000000;
                        v683 = sub_1004BD224();
                        v717 = v254;
                        v685 = v684;

                        *&v777 = v683;
                        *(&v777 + 1) = v685;
                        v748 = 10;
                        v749 = 0xE100000000000000;
                        v750 = 28252;
                        v751 = 0xE200000000000000;
                        v686 = sub_1004BD224();
                        v688 = v687;

                        v689 = sub_100441BE8(v686, v688, &v745);

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
                    v39 = sub_1004BD484();
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

                  sub_1004774B4(v313 + *(v39 + 176), *(v39 + 184), *(v39 + 192), *(v39 + 200));
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

                sub_100467AB8(*(v39 + 88), *(v39 + 96));
LABEL_516:
                if (qword_100614E70 != -1)
                {
                  swift_once();
                }

                v650 = sub_1004B80B4();
                sub_100007084(v650, static Logger.lyrics);
                v651 = v737;

                v652 = sub_1004B8094();
                v653 = sub_1004BC9A4();

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

                  v658 = sub_100441BE8(v656, v657, &v745);

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
                  *&v777 = sub_1004BD224();
                  *(&v777 + 1) = v660;
                  v661 = String.nonBreakingSpace.unsafeMutableAddressor();
                  v662 = v661[1];
                  v748 = *v661;
                  v749 = v662;
                  v750 = 0x3B7073626E26;
                  v751 = 0xE600000000000000;
                  v663 = sub_1004BD224();
                  v717 = v254;
                  v665 = v664;

                  *&v777 = v663;
                  *(&v777 + 1) = v665;
                  v748 = 10;
                  v749 = 0xE100000000000000;
                  v750 = 28252;
                  v751 = 0xE200000000000000;
                  v666 = sub_1004BD224();
                  v668 = v667;

                  v669 = sub_100441BE8(v666, v668, &v745);

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
          v442 = sub_10044EC7C(v438);
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
                v445 = sub_1004BD484();
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
          sub_100003ABC(&qword_100615688);
          v109 = swift_allocObject();
          *(v109 + 1) = xmmword_1004C50A0;

          *&v777 = sub_10046DE30(v447, sub_10046E05C);
          sub_10046CA54(&v777);

          v109[4] = v777;
          v109[5] = v44;

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

  object = sub_1004BD6A4();
  if (!object)
  {
    goto LABEL_269;
  }

LABEL_262:
  v36 = v39 & 0xC000000000000001;
  if ((v39 & 0xC000000000000001) != 0)
  {

    v325 = sub_1004BD484();
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
    sub_100013D04(&v824, &v777);
    sub_10000F778(&v825, &v777, &qword_100615690);
    sub_10046FD48(v36, v725, v730, 0);
    sub_10046FD48(v44, v350, v349, v39);
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
  sub_10046FD48(v327, v326, v39, object);
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
      v353 = sub_1004BD484();
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
        sub_100467940(v39);
        goto LABEL_516;
      }
    }

    v355 = CGRectGetWidth(*(v353 + 176));

    if (v352)
    {
      sub_1004BD484();
    }

    else
    {
    }

    v356 = sub_1004BDA64();

    v357 = *(v353 + 176);
    if (v356)
    {
      *(location + 144) = v357;
    }

    sub_1004774B4(v313 + v357, *(v353 + 184), *(v353 + 192), *(v353 + 200));
    v741 = v353;
    v738 = v354;
    if (*&v44 == 0.0)
    {
LABEL_322:
      swift_retain_n();
      if (v352)
      {
        sub_1004BD484();
      }

      else
      {
      }

      v378 = sub_1004BDA64();

      if (v378)
      {
        v379 = v741[22].isa;
        v254 = *&v379 - *(location + 176);
        sub_1004774B4(*&v379, *&v741[23].isa, *(location + 192), *(location + 200));
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
        sub_10044213C(v361 + 1, v709 == 0, v742);
        sub_10044213C(v36 - 1, v362 == 0, v363);

        v364 = (v361 + 1);
        if (v362)
        {
          do
          {
            v365 = v364 + 1;
            v366 = sub_1004BD484();
            sub_1004774B4(v313 + v366[22], v366[23], v366[24], v366[25]);
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

            sub_1004774B4(v372, v27, v370, v371);

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

      sub_1004774B4(v27, v375, v376, v377);
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
      sub_100013D04(&v826, &v777);
      sub_10000F778(v827, &v777, &qword_100615690);

      v383 = sub_100442BFC(v781);
      v385 = v384;
      sub_1001B4A3C(&v826);
      sub_100007214(v827, &qword_100615690);
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

        sub_1004BD484();
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
    v39 = sub_1004BDA64();

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
      sub_100445084(2, &v777, v451);
      *&v450[v448] = v750;
      swift_endAccess();
      if (v732)
      {
        v452 = sub_1004BD484();

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

        if (qword_100614E70 != -1)
        {
          goto LABEL_558;
        }

        goto LABEL_425;
      }

      v499 = sub_1004BBE24();

      v500 = sub_1004BBE24();
      v501 = sub_1004BBE24();
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

      v608 = sub_1004BBE64();
      v610 = v609;

      v611 = v716;
      *v716 = v608;
      v611[1] = v610;

      v612 = [v499 length];
      v456 = v611[1];

      v613 = sub_1004BBFB4();

      v57 = __OFSUB__(v612, v613);
      v463 = &v612[-v613];
      if (v57)
      {
        __break(1u);
      }

      else
      {
        v614 = sub_100448340(v386[6].isa);
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

              v619 = sub_1004BBFB4();

              if (v618 == v619)
              {

                goto LABEL_115;
              }

              v740 = v499;
              v717 = *&v44;
              v620 = v617;
              v621 = v737;
              sub_100467AB8(v463, v620);
              if (qword_100614E70 != -1)
              {
                swift_once();
              }

              v622 = sub_1004B80B4();
              sub_100007084(v622, static Logger.lyrics);
              v623 = swift_allocObject();
              *(v623 + 16) = v621;
              v624 = v621;

              v739 = sub_1004B8094();
              LODWORD(v742) = sub_1004BC9A4();
              v625 = swift_allocObject();
              *(v625 + 16) = 32;
              v626 = swift_allocObject();
              *(v626 + 16) = 8;
              v627 = swift_allocObject();
              *(v627 + 16) = sub_100470184;
              *(v627 + 24) = *&v386;
              v628 = swift_allocObject();
              *(v628 + 16) = sub_100470F74;
              *(v628 + 24) = v627;
              v629 = swift_allocObject();
              *(v629 + 16) = 34;
              v630 = swift_allocObject();
              *(v630 + 16) = 8;
              v631 = swift_allocObject();
              *(v631 + 16) = sub_100470F88;
              *(v631 + 24) = v623;
              v632 = swift_allocObject();
              *(v632 + 16) = sub_100470F74;
              *(v632 + 24) = v631;
              sub_100003ABC(&qword_1006150C8);
              v633 = swift_allocObject();
              *(v633 + 16) = xmmword_1004C5220;
              *(v633 + 32) = sub_100471004;
              *(v633 + 40) = v625;
              *(v633 + 48) = sub_100471004;
              *(v633 + 56) = v626;
              *(v633 + 64) = sub_100470E54;
              *(v633 + 72) = v628;
              *(v633 + 80) = sub_100471004;
              *(v633 + 88) = v629;
              *(v633 + 96) = sub_100471004;
              *(v633 + 104) = v630;
              *(v633 + 112) = sub_100470E54;
              *(v633 + 120) = v632;
              swift_setDeallocating();
              sub_100003ABC(&qword_1006156D0);
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

                v638 = sub_100441BE8(v636, v637, &v747);

                *(v635 + 4) = v638;
                *(v635 + 12) = 2082;
                v639 = v716[1];
                v748 = *v716;
                v749 = v639;
                v750 = 10519010;
                v751 = 0xA300000000000000;
                v745 = 44226;
                v746 = 0xA200000000000000;
                v748 = sub_1004BD224();
                v749 = v640;
                v641 = String.nonBreakingSpace.unsafeMutableAddressor();
                v642 = v641[1];
                v750 = *v641;
                v751 = v642;
                v745 = 0x3B7073626E26;
                v746 = 0xE600000000000000;
                v643 = sub_1004BD224();
                v645 = v644;

                v748 = v643;
                v749 = v645;
                v750 = 10;
                v751 = 0xE100000000000000;
                v745 = 28252;
                v746 = 0xE200000000000000;
                v646 = sub_1004BD224();
                v648 = v647;

                v649 = sub_100441BE8(v646, v648, &v747);

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
      if (qword_100614E70 != -1)
      {
        swift_once();
      }

      v407 = sub_1004B80B4();
      sub_100007084(v407, static Logger.lyrics);
      v408 = v715;

      v409 = v721._object;

      v400 = sub_1004B8094();
      v410 = sub_1004BC9A4();

      if (os_log_type_enabled(v400, v410))
      {
        v402 = swift_slowAlloc();
        v411 = swift_slowAlloc();
        v717 = *&v44;
        *&v777 = v411;
        *v402 = v696;
        *(v402 + 4) = sub_100441BE8(countAndFlagsBits, v408, &v777);
        *(v402 + 12) = 2082;
        *(v402 + 14) = sub_100441BE8(v721._countAndFlagsBits, v409, &v777);
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
        sub_100445084(v493 + 1, &v777, v497);
        *&v495[v496] = v750;
        swift_endAccess();
        if (v722)
        {
          sub_100467AB8(*(v396 + 88), *(v396 + 96));
        }

        else
        {
          sub_100467940(v396);
        }

        v27 = 0.0;
        v717 = *&v44;
        if (qword_100614E70 != -1)
        {
          swift_once();
        }

        v581 = sub_1004B80B4();
        sub_100007084(v581, static Logger.lyrics);
        v582 = swift_allocObject();
        v583 = v737;
        *(v582 + 16) = v737;
        v584 = v583;
        v585 = sub_1004B8094();
        v586 = sub_1004BC9A4();
        v587 = swift_allocObject();
        *(v587 + 16) = 34;
        v588 = swift_allocObject();
        *(v588 + 16) = 8;
        v589 = swift_allocObject();
        *(v589 + 16) = sub_100470F88;
        *(v589 + 24) = v582;
        v590 = swift_allocObject();
        *(v590 + 16) = sub_100470F74;
        *(v590 + 24) = v589;
        sub_100003ABC(&qword_1006150C8);
        v591 = swift_allocObject();
        *(v591 + 16) = xmmword_1004C5070;
        *(v591 + 32) = sub_100471004;
        *(v591 + 40) = v587;
        *(v591 + 48) = sub_100471004;
        *(v591 + 56) = v588;
        *(v591 + 64) = sub_100470E54;
        *(v591 + 72) = v590;
        swift_setDeallocating();
        sub_100003ABC(&qword_1006156D0);
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
          v748 = sub_1004BD224();
          v749 = v595;
          v596 = String.nonBreakingSpace.unsafeMutableAddressor();
          v597 = v596[1];
          v750 = *v596;
          v751 = v597;
          v745 = 0x3B7073626E26;
          v746 = 0xE600000000000000;
          v598 = sub_1004BD224();
          v600 = v599;

          v748 = v598;
          v749 = v600;
          v750 = 10;
          v751 = 0xE100000000000000;
          v745 = 28252;
          v746 = 0xE200000000000000;
          v601 = sub_1004BD224();
          v603 = v602;

          v604 = sub_100441BE8(v601, v603, &v747);

          *(v592 + 4) = v604;
          _os_log_impl(&_mh_execute_header, v585, v742, "[Transliteration] Word is incomplete in this line, adding line break. New text: %{public}s", v592, 0xCu);
          sub_100004C6C(v593);
        }

        else
        {
        }

        goto LABEL_411;
      }

      if (qword_100614E70 != -1)
      {
        swift_once();
      }

      v397 = sub_1004B80B4();
      sub_100007084(v397, static Logger.lyrics);
      v398 = v715;

      v399 = v721._object;

      v400 = sub_1004B8094();
      v401 = sub_1004BC9A4();

      if (os_log_type_enabled(v400, v401))
      {
        v402 = swift_slowAlloc();
        v403 = swift_slowAlloc();
        v717 = *&v44;
        *&v777 = v403;
        *v402 = v696;
        *(v402 + 4) = sub_100441BE8(countAndFlagsBits, v398, &v777);
        *(v402 + 12) = 2082;
        *(v402 + 14) = sub_100441BE8(v721._countAndFlagsBits, v399, &v777);
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
      sub_1004774B4(*&v386[22].isa, *&v386[23].isa, v414 + *&v386[24].isa, *&v386[25].isa);
    }

    v40 = v728;
    v352 = v732;
LABEL_362:
    v415 = CGRectGetMaxX(*&v386[22].isa);
    *&v777 = v415;
    v748 = *&a9;
    if ((sub_1004B70C4() & 1) != 0 || v415 <= a9)
    {

      goto LABEL_289;
    }

    if (v731 > 1)
    {
      v39 = v40;
      if (qword_100614E70 != -1)
      {
        swift_once();
      }

      v416 = sub_1004B80B4();
      sub_100007084(v416, static Logger.lyrics);
      v417 = v737;
      v418 = sub_1004B8094();
      v419 = sub_1004BC9A4();

      v706 = v419;
      if (os_log_type_enabled(v418, v419))
      {
        v420 = swift_slowAlloc();
        v745 = swift_slowAlloc();
        *v420 = v697;
        v421 = sub_1004BCE04();
        v39 = v418;
        v423 = sub_100441BE8(v421, v422, &v745);

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
        *&v777 = sub_1004BD224();
        *(&v777 + 1) = v425;
        v426 = String.nonBreakingSpace.unsafeMutableAddressor();
        v427 = v426[1];
        v748 = *v426;
        v749 = v427;
        v750 = 0x3B7073626E26;
        v751 = 0xE600000000000000;
        v428 = sub_1004BD224();
        v430 = v429;

        *&v777 = v428;
        *(&v777 + 1) = v430;
        v748 = 10;
        v749 = 0xE100000000000000;
        v750 = 28252;
        v751 = 0xE200000000000000;
        v254 = *&v731;
        v36 = v733;
        v431 = sub_1004BD224();
        v433 = v432;

        v434 = sub_100441BE8(v431, v433, &v745);

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
    v458 = sub_1004BD224();
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
    sub_100445084(2, &v777, v465);
    *&v463[v464] = v750;
    swift_endAccess();
    v27 = 0.0;
    if (qword_100614E70 == -1)
    {
LABEL_406:
      v466 = sub_1004B80B4();
      sub_100007084(v466, static Logger.lyrics);
      v467 = swift_allocObject();
      *(v467 + 16) = v463;
      v468 = v463;
      v469 = sub_1004B8094();
      v470 = sub_1004BC9A4();
      v471 = swift_allocObject();
      *(v471 + 16) = 34;
      v472 = swift_allocObject();
      *(v472 + 16) = 8;
      v473 = swift_allocObject();
      *(v473 + 16) = sub_100470F88;
      *(v473 + 24) = v467;
      v474 = swift_allocObject();
      *(v474 + 16) = sub_10046FE14;
      *(v474 + 24) = v473;
      sub_100003ABC(&qword_1006150C8);
      v475 = swift_allocObject();
      *(v475 + 16) = xmmword_1004C5070;
      *(v475 + 32) = sub_10046FDC4;
      *(v475 + 40) = v471;
      *(v475 + 48) = sub_100471004;
      *(v475 + 56) = v472;
      *(v475 + 64) = sub_10046FE1C;
      *(v475 + 72) = v474;
      swift_setDeallocating();
      sub_100003ABC(&qword_1006156D0);
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
        v748 = sub_1004BD224();
        v749 = v479;
        v480 = v456[1];
        v750 = *v456;
        v751 = v480;
        v745 = 0x3B7073626E26;
        v746 = 0xE600000000000000;
        v481 = sub_1004BD224();
        v483 = v482;

        v748 = v481;
        v749 = v483;
        v750 = 10;
        v751 = 0xE100000000000000;
        v745 = 28252;
        v746 = 0xE200000000000000;
        v484 = sub_1004BD224();
        v486 = v485;

        v487 = sub_100441BE8(v484, v486, &v747);

        *(v476 + 4) = v487;
        _os_log_impl(&_mh_execute_header, v469, v742, "[Transliteration][Width check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v476, 0xCu);
        sub_100004C6C(v477);
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
  sub_100445084(v491 + 1, &v777, v492);
  *&v489[v490] = v750;
  swift_endAccess();
  v27 = 0.0;
  if (v722)
  {
    sub_100467AB8(*(v40 + 88), *(v40 + 96));
  }

  else
  {
    sub_100467940(v40);
  }

  v561 = location;
  if (qword_100614E70 != -1)
  {
    swift_once();
  }

  v562 = sub_1004B80B4();
  sub_100007084(v562, static Logger.lyrics);
  v563 = v737;

  v564 = sub_1004B8094();
  v565 = sub_1004BC9A4();

  if (os_log_type_enabled(v564, v565))
  {
    v566 = swift_slowAlloc();
    v742 = swift_slowAlloc();
    location = v561;
    v747 = v742;
    *v566 = v697;
    v567 = v561[9];
    v568 = v561[10];

    v569 = sub_100441BE8(v567, v568, &v747);

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
    v748 = sub_1004BD224();
    v749 = v571;
    v572 = String.nonBreakingSpace.unsafeMutableAddressor();
    v573 = v572[1];
    v750 = *v572;
    v751 = v573;
    v745 = 0x3B7073626E26;
    v746 = 0xE600000000000000;
    v574 = sub_1004BD224();
    v576 = v575;

    v748 = v574;
    v749 = v576;
    v750 = 10;
    v751 = 0xE100000000000000;
    v745 = 28252;
    v746 = 0xE200000000000000;
    v577 = sub_1004BD224();
    v579 = v578;

    v580 = sub_100441BE8(v577, v579, &v747);

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

uint64_t sub_1004677D0()
{
  sub_10044CAE0();
  sub_1004BD224();
  String.nonBreakingSpace.unsafeMutableAddressor();
  sub_1004BD224();

  v0 = sub_1004BD224();

  return v0;
}

uint64_t sub_100467940(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v4 = objc_allocWithZone(NSMutableString);

  v5 = sub_1004BBE24();

  v6 = [v4 initWithString:v5];

  v7 = *(a1 + 88);
  v8 = v6;
  v9 = [v8 substringWithRange:{v7, 1}];
  v10 = sub_1004BBE64();
  v12 = v11;

  if (v10 == 32 && v12 == 0xE100000000000000)
  {
  }

  else
  {
    v14 = sub_1004BD9C4();

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
  v17 = sub_1004BBE24();
  [v8 insertString:v17 atIndex:v7];

  v18 = sub_1004BBE64();
  v20 = v19;

  *v3 = v18;
  v3[1] = v20;
}

void sub_100467AB8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v6 = objc_allocWithZone(NSMutableString);

  v7 = sub_1004BBE24();

  v8 = [v6 initWithString:v7];

  v9 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v8;
  v11 = [v10 substringWithRange:{v9, 1}];
  v12 = sub_1004BBE64();
  v14 = v13;

  if (v12 == 32 && v14 == 0xE100000000000000)
  {
  }

  else
  {
    v16 = sub_1004BD9C4();

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
  v18 = sub_1004BBE24();
  [v10 insertString:v18 atIndex:v9];

  v19 = sub_1004BBE64();
  v21 = v20;

  *v5 = v19;
  v5[1] = v21;
}

id sub_100467C74()
{
  v2.receiver = v0;
  v2.super_class = _s14descr1005A2689C8TextViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s14descr1005A2689C8TextViewCMa()
{
  result = qword_100615AF8;
  if (!qword_100615AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100467EB4()
{
  sub_100467FD8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100467FD8()
{
  if (!qword_1006151B0)
  {
    sub_1004B6E44();
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_1006151B0);
    }
  }
}

__n128 sub_100468030(uint64_t a1, uint64_t a2)
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

uint64_t sub_10046805C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100468074(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1004680C8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10046812C(uint64_t result, int a2)
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

unint64_t sub_100468178()
{
  result = qword_100615B08;
  if (!qword_100615B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100615B08);
  }

  return result;
}

id *sub_1004681CC(uint64_t a1, uint64_t a2)
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

  sub_100003ABC(&qword_100616B10);
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

void sub_100468254(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
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
      sub_100003ABC(&qword_100616B10);
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

id *sub_100468340(unint64_t a1)
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
    v2 = sub_1004681CC(v1, 0);

    sub_1004BD454();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = sub_1004BD6A4();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void sub_1004683DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_100003ABC(&qword_100615680);
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

uint64_t sub_1004684CC(uint64_t a1)
{
  v2 = v1[1];
  v3 = v2 + 32;
  v4 = *(v2 + 16);
  if (*v1)
  {
    sub_10044EC24(a1, v3, v4, *v1 + 16, *v1 + 32);
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
      sub_100446C0C();
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

uint64_t sub_100468560(uint64_t result, uint64_t a2)
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
    v38 = (sub_1004BD2F4() + 1) & ~v5;
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
      sub_1004BDBA4();
      if (v9 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v9;
      }

      sub_1004BDBE4(*&v12);
      if (v10 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      sub_1004BDBE4(*&v13);

      sub_1004BBF84();
      sub_1004BDBB4(*(v11 + 16));
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

          sub_1004BDBE4(*&v16);
          if (v17 == 0.0)
          {
            v22 = 0.0;
          }

          else
          {
            v22 = v17;
          }

          sub_1004BDBE4(*&v22);

          sub_1004BBF84();
          sub_1004BDBB4(v19);
          sub_1004BDBB4(v18);
          sub_1004BDBB4(v20);

          --v14;
        }

        while (v14);
      }

      if (v44)
      {
        sub_1004BDBB4(0);
      }

      else
      {
        sub_1004BDBB4(1uLL);
        if ((v42 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v23 = v42;
        }

        else
        {
          v23 = 0;
        }

        sub_1004BDBE4(v23);
      }

      v2 = a2;
      v3 = v45;
      v24 = sub_1004BDBF4();

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

uint64_t sub_10046889C(double *a1, uint64_t a2, uint64_t a3)
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
        if (v12 || (result = sub_1004BD9C4(), v5 = a1, v4 = a2, v3 = a3, (result & 1) != 0))
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
                  result = sub_1004BD9C4();
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

uint64_t sub_100468A7C()
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
    v5 = sub_1004B7ED4();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_100468C6C(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_100468B34(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
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
    v7 = sub_1004B7ED4();
    if (v4 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    v6 = sub_100468BE4(v5, v8, 0, v4, a1);
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100468BE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  v9 = sub_1004B7ED4();
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
    v11 = sub_1004B7EE4();
    sub_100468D3C(a1, v11 + 16, v11 + 32, a5);
    return v11;
  }

  return result;
}

uint64_t sub_100468C6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = sub_1004B7ED4();
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
    v9 = sub_1004B7EE4();
    sub_100468CEC(a1, (v9 + 16));
    return v9;
  }

  return result;
}

Swift::Int sub_100468D94(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        sub_1004BDBA4();

        sub_1004BBF84();
        result = sub_1004BDBF4();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v7 = sub_1004B7E44();

        if (v7)
        {
          while (1)
          {
            sub_1004B7E94();
          }
        }

        result = sub_1004B7E84();
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

Swift::Int sub_100468EC4(Swift::Int result, uint64_t a2, void *a3)
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
        sub_1004BDBA4();
        if (v5 == 0.0)
        {
          v8 = 0.0;
        }

        else
        {
          v8 = v5;
        }

        sub_1004BDBE4(*&v8);
        if (v6 == 0.0)
        {
          v9 = 0.0;
        }

        else
        {
          v9 = v6;
        }

        sub_1004BDBE4(*&v9);

        sub_1004BBF84();
        v10 = *(v7 + 16);
        sub_1004BDBB4(v10);
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

            sub_1004BDBE4(*&v12);
            if (v13 == 0.0)
            {
              v18 = 0.0;
            }

            else
            {
              v18 = v13;
            }

            sub_1004BDBE4(*&v18);

            sub_1004BBF84();
            sub_1004BDBB4(v14);
            sub_1004BDBB4(v15);
            sub_1004BDBB4(v16);

            --v10;
          }

          while (v10);
        }

        if (v25)
        {
          sub_1004BDBB4(0);
        }

        else
        {
          sub_1004BDBB4(1uLL);
          v19 = (v24 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v24 : 0;
          sub_1004BDBE4(v19);
        }

        result = sub_1004BDBF4();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v20 = sub_1004B7E44();

        if (v20)
        {
          while (1)
          {
            sub_1004B7E94();
          }
        }

        result = sub_1004B7E84();
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

Swift::Int sub_100469148(Swift::Int result, uint64_t a2, void *a3)
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
        sub_1004BDBA4();
        sub_1004BDBB4(v7);
        result = sub_1004BDBF4();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1004B7E44())
        {
          while (1)
          {
            sub_1004B7E94();
          }
        }

        result = sub_1004B7E84();
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

uint64_t sub_100469250(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100003ABC(&qword_100615710);
  result = sub_1004BD3E4();
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
    result = sub_1004BCF94(v16);
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

uint64_t sub_100469444(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100003ABC(&qword_100615A20);
  result = sub_1004BD3E4();
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
    sub_1004BDBA4();
    sub_1004BDBB4(v16);
    result = sub_1004BDBF4();
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

uint64_t sub_100469654(unint64_t *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, id *, id), void (*a7)(id *, uint64_t, unint64_t))
{
  v12 = a2 >> 62;
  if (a2 >> 62)
  {
    v22 = a3;
    v23 = a4;
    sub_1004BD6A4();
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

  v14 = sub_1004B7ED4();
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
      if (sub_1004BD6A4() >= 2)
      {
        v18 = sub_10046E1EC(a2, a7);
        goto LABEL_21;
      }

      v17 = sub_1004BD6A4();
    }

    else
    {
      v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= 2)
      {
        v18 = sub_100469920((a2 & 0xFFFFFFFFFFFFFF8) + 32, v17, a7);
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

  v19 = sub_1004B7EE4();
  sub_100469D98(&v24, a2, (v19 + 16), v19 + 32, a6);
  result = v19;
  v21 = v24;
LABEL_22:
  *a1 = v21;
  return result;
}

uint64_t sub_1004697A0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
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

  v10 = sub_1004B7ED4();
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
    v14 = sub_1004B7EE4();
    sub_100469F70(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_100469A34((a2 + 32), v8);
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

id *sub_100469884(unint64_t a1, void (*a2)(id *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_1004BD6A4();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_1004681CC(v5, 0);
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

uint64_t sub_100469920(uint64_t a1, uint64_t a2, void (*a3)(id *, uint64_t, unint64_t))
{
  v11 = sub_10046DE30(_swiftEmptyArrayStorage, a3);
  result = sub_1004BD524();
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
        v9 = (v11 + 4);
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
        sub_1004BD4F4();
        sub_1004BD534();
        sub_1004BD544();
        sub_1004BD504();

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

id *sub_100469A34(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v16 = _swiftEmptyArrayStorage;
  result = sub_1004421A0(0, a2 & ~(a2 >> 63), 0);
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
      if (sub_100469BD4(&v17, v5))
      {
        break;
      }

      v21 = v18;
      v22 = v19;
      sub_100013D04(&v21, v15);
      sub_10000F778(&v22, v15, &qword_100615690);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004421A0(0, v5[2] + 1, 1);
        v5 = v16;
      }

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        sub_1004421A0((v9 > 1), v10 + 1, 1);
        v5 = v16;
      }

      ++v6;
      v5[2] = (v10 + 1);
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

uint64_t sub_100469BD4(double *a1, uint64_t a2)
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
      result = sub_1004BD9C4();
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
      result = sub_1004BD9C4();
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

uint64_t sub_100469D98(void *a1, int64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, id *, id))
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v6 = sub_10046FE24(a2, a5);
  }

  else
  {
    v6 = sub_100469E08((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3);
  }

  *a1 = v7;
  return v6 & 1;
}

Swift::Int sub_100469E08(Swift::Int result, uint64_t a2, void *a3)
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
      sub_1004BDBA4();
      sub_1004BDBB4(v8);
      result = sub_1004BDBF4();
      if (__OFSUB__(1 << *a3, 1))
      {
        goto LABEL_15;
      }

      sub_1004B7E44();
      while (1)
      {
        v9 = sub_1004B7E74();
        if (v10)
        {
          break;
        }

        if (*(v5 + 8 * v9) == *(v5 + 8 * i))
        {
          return 0;
        }

        sub_1004B7E94();
      }

      result = sub_1004B7E84();
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

Swift::Int sub_100469F70(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
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
    sub_1004BDBA4();
    sub_100013D04(v60, v46);
    sub_10000F778(&v61, v46, &qword_100615690);
    Lyrics.Word.hash(into:)(v47);
    result = sub_1004BDBF4();
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
    v12 = sub_1004B7E44();
    v14 = v13;
    v16 = v15;
    sub_1001B4A3C(v60);
    sub_100007214(&v61, &qword_100615690);
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
      v17 = sub_1004B7E74();
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
        if (v25 || (result = sub_1004BD9C4(), (result & 1) != 0))
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
                  result = sub_1004BD9C4();
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
      sub_1004B7E94();
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v55 = v51;
    }

    result = sub_1004B7E84();
    v5 = v41;
    v4 = a3;
    if (v41 != a2)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_10046A2AC(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    result = sub_1004BD334();
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
    sub_1004BD324();
    _s4WordCMa();
    sub_1004701D0(&qword_100615B20, _s4WordCMa);
    result = sub_1004BC6A4();
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
      return sub_1001A43F8();
    }

    while (1)
    {
      sub_100453C70(v15);

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1004BD354())
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

      return sub_1001A43F8();
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
      return sub_1001A43F8();
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

void *sub_10046A4E4(uint64_t a1, unint64_t a2)
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
    sub_1004BD324();
    _s4WordCMa();
    sub_1004701D0(&qword_100615B20, _s4WordCMa);
    sub_1004BC6A4();
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
      v21 = sub_1004BD354();
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
        sub_1001A43F8();
        return v52;
      }
    }

    sub_1004BDBA4();
    sub_1004BDBB4(v2);
    v22 = sub_1004BDBF4();
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
        v31 = sub_1004BD354();
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
        v10 = sub_100469444(v49, v47, v50, v52);
        goto LABEL_63;
      }

LABEL_51:
      v35 = v52;
      sub_1004BDBA4();
      sub_1004BDBB4(v8);
      v36 = sub_1004BDBF4();
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
  v10 = sub_10046AB8C(v45, v47, v2, v9, &v55);

LABEL_63:
  sub_1001A43F8();
  return v10;
}

unint64_t *sub_10046AB8C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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
          if (!sub_1004BD354())
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

            return sub_100469444(v7, a2, v28, a3);
          }
        }

        sub_1004BDBA4();
        sub_1004BDBB4(v14);
        v19 = sub_1004BDBF4();
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

uint64_t sub_10046ADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    __chkstk_darwin();
    v10 = 0;
    v11 = 0;
    __chkstk_darwin();
    sub_1004B7EF4();
  }

  else
  {
    if (!(_swiftEmptyArrayStorage >> 62) || (v5 = sub_1004BD6A4()) == 0 || (v6 = v5, v7 = sub_1004681CC(v5, 0), sub_10046DECC((v7 + 4), v6, _swiftEmptyArrayStorage), v9 = v8, , v9 == v6))
    {

      return 0;
    }

    __break(1u);
  }

  __break(1u);

  result = sub_1003013BC(v10, v11);
  __break(1u);
  return result;
}

void *sub_10046AF90(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = a3(&v8);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return sub_1003013BC(v6, v7);
  }

  return result;
}

unint64_t sub_10046AFE4(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a6;
  if (a4)
  {
    if (result && a2)
    {
      a3 = 0;
      v11 = 8 * a2;
      v12 = result;
      while (1)
      {
        v13 = vcnt_s8(*v12);
        v13.i16[0] = vaddlv_u8(v13);
        v14 = __OFADD__(a3, v13.u32[0]);
        a3 += v13.u32[0];
        if (v14)
        {
          break;
        }

        ++v12;
        v11 -= 8;
        if (!v11)
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
  if (!a3)
  {
LABEL_14:
    sub_10046DE30(_swiftEmptyArrayStorage, sub_10046DECC);
    sub_10046B414(a5, 0);

    return 0;
  }

  if (a3 == *(a7 + 16))
  {
    if (a6)
    {
      v15 = a3;
      swift_beginAccess();
      v16 = sub_1004B7EA4();
      a3 = v15;
      v17 = v16 - v15;
      if (!__OFSUB__(v16, v15))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = 15 - a3;
      if (!__OFSUB__(15, a3))
      {
LABEL_11:
        if (v17 < a5)
        {
          result = a3 + a5;
          if (__OFADD__(a3, a5))
          {
            goto LABEL_55;
          }

          sub_10046B414(result, 0);
        }

        return v9;
      }
    }

    __break(1u);
LABEL_20:
    result = sub_1004B7F14();
    if ((v19 & 1) == 0)
    {
      while ((result & 0x8000000000000000) == 0)
      {
        if (result >= *(a7 + 16))
        {
          goto LABEL_52;
        }

        v25 = *(a7 + 32 + 8 * result);
        swift_retain_n();
        sub_1004BD4F4();
        sub_1004BD534();
        sub_1004BD544();
        sub_1004BD504();
        v26 = v32;
        v27 = v32[2];
        if (!v7)
        {
          while (1)
          {
            if (v27 > 0xF)
            {
              v20 = 0;
              goto LABEL_23;
            }

            result = sub_1004B7F14();
            if (v28)
            {
              break;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            if (result >= *(a7 + 16))
            {
              goto LABEL_52;
            }

            swift_retain_n();
            sub_1004BD4F4();
            sub_1004BD534();
            sub_1004BD544();
            sub_1004BD504();
            v26 = v32;
            v27 = v32[2];
          }

          v7 = 0;
          goto LABEL_48;
        }

        swift_beginAccess();
        if (sub_1004B7EA4() >= v27)
        {
          if ((swift_isUniquelyReferenced_native() & 1) == 0)
          {
            v29 = sub_1004B7EC4();

            v7 = v29;
            if (!v29)
            {
              goto LABEL_56;
            }
          }

          sub_1004BDBA4();
          sub_1004BDBB4(v25);
          result = sub_1004BDBF4();
          if (__OFSUB__(1 << *(v7 + 16), 1))
          {
            goto LABEL_53;
          }

          if (sub_1004B7E44())
          {
            while (1)
            {
              sub_1004B7E94();
            }
          }

          sub_1004B7E84();
        }

        else
        {
          v20 = *(v7 + 24) & 0x3FLL;
          if (v27 > 0xF || v20)
          {
LABEL_23:
            v21 = sub_1004B7ED4();
            if (v20 <= v21)
            {
              v22 = v21;
            }

            else
            {
              v22 = v20;
            }

            v23 = sub_100468C6C(v26, v22, 0, v20);

            v7 = v23;
          }

          else
          {

            v7 = 0;
          }
        }

        result = sub_1004B7F14();
        if (v24)
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

    return v7;
  }

  v18 = a3 + a5;
  if (!__OFADD__(a3, a5))
  {
    v30 = sub_10046DE30(_swiftEmptyArrayStorage, sub_10046DECC);
    sub_10046B414(v18, 0);
    v7 = 0;
    v32 = v30;
    goto LABEL_20;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_10046B414(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  sub_1004BD524();
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16) & 0x3FLL;
    v7 = sub_1004B7ED4();
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
    v7 = sub_1004B7ED4();
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
    v13 = sub_100468C6C(v9, v10, 0, v8);

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

  result = sub_1004B7ED4();
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

  v14 = sub_1004B7EC4();

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

unint64_t sub_10046B5B4@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    result = sub_10046B8A4(a1, &v17);
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

  else if (v7 <= sub_1004B7EB4())
  {
LABEL_16:
    sub_10046B8A4(a1, &v17);
    result = sub_100468B34(sub_100468EC4);
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

    v12 = sub_1004B7EC4();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {

    result = sub_10046BBE0(a2, (v11 + 16), v11 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_10046BF2C(a1, a1 + 1, v6, (v11 + 16));

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_10046B75C(int64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
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

    return sub_10046B96C(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= sub_1004B7EB4())
  {
LABEL_16:
    v14 = sub_10046B96C(a1, a3);
    sub_100468A7C();
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

    v12 = sub_1004B7EC4();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {
    result = sub_10046BA00(a2, (v11 + 16), v11 + 32, v3);
    v13 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v13 >= a1)
    {
      sub_10046C644(a1, v13, v6, (v11 + 16));
      return sub_10046B96C(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10046B8A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10046CA2C(v5);
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

uint64_t sub_10046B96C(unint64_t a1, uint64_t (*a2)(uint64_t))
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
    sub_1004BD504();
    return v10;
  }

  return result;
}

unint64_t sub_10046BA00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v15 = sub_1004B7E44();
  sub_1004B7E94();
  if (v15)
  {
    v7 = sub_1004B7E54();
    while (1)
    {
      result = sub_1004B7E74();
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
      sub_1004BDBA4();
      sub_1004BDBB4(v11);
      result = sub_1004BDBF4();
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
      sub_1004B7E74();
      v6 = a1;
      sub_1004B7E64();
LABEL_3:
      sub_1004B7E94();
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

  return sub_1004B7E64();
}

unint64_t sub_10046BBE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v34 = sub_1004B7E44();
  sub_1004B7E94();
  if (v34)
  {
    v28 = sub_1004B7E54();
    v29 = a2;
    while (1)
    {
      result = sub_1004B7E74();
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
      sub_1004BDBA4();
      if (v10 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      sub_1004BDBE4(*&v13);
      if (v11 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v11;
      }

      sub_1004BDBE4(*&v14);

      sub_1004BBF84();
      v15 = *(v12 + 16);
      sub_1004BDBB4(v15);
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

          sub_1004BDBE4(*&v17);
          if (v18 == 0.0)
          {
            v23 = 0.0;
          }

          else
          {
            v23 = v18;
          }

          sub_1004BDBE4(*&v23);

          sub_1004BBF84();
          sub_1004BDBB4(v20);
          sub_1004BDBB4(v19);
          sub_1004BDBB4(v21);

          --v15;
        }

        while (v15);
      }

      if (v32)
      {
        sub_1004BDBB4(0);
      }

      else
      {
        sub_1004BDBB4(1uLL);
        if ((v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v24 = v31;
        }

        else
        {
          v24 = 0;
        }

        sub_1004BDBE4(v24);
      }

      v25 = sub_1004BDBF4();

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
      sub_1004B7E74();
      v5 = a1;
      sub_1004B7E64();
LABEL_3:
      sub_1004B7E94();
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

  return sub_1004B7E64();
}

void sub_10046BF2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_98;
  }

  if (v5 >= 1)
  {
    v6 = a4;
    v9 = *(a3 + 16);
    v63 = a2 - a1;
    if (a1 < (v9 - v5) / 2)
    {
      if (sub_1004B7EA4() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        if (v9 < a1)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        if (a1)
        {
          v10 = 0;
          v57 = a1;
          while (1)
          {
            v11 = a3 + 32 + 56 * v10;
            v12 = *(v11 + 32);
            v58 = *(v11 + 40);
            v60 = *(v11 + 48);
            v14 = *v11;
            v13 = *(v11 + 8);
            sub_1004BDBA4();
            if (v14 == 0.0)
            {
              v15 = 0.0;
            }

            else
            {
              v15 = v14;
            }

            sub_1004BDBE4(*&v15);
            if (v13 == 0.0)
            {
              v16 = 0.0;
            }

            else
            {
              v16 = v13;
            }

            sub_1004BDBE4(*&v16);

            sub_1004BBF84();
            v17 = *(v12 + 16);
            sub_1004BDBB4(v17);
            if (v17)
            {
              v18 = (v12 + 80);
              do
              {
                v19 = *(v18 - 6);
                v20 = *(v18 - 5);
                v22 = *(v18 - 2);
                v21 = *(v18 - 1);
                v24 = *v18;
                v18 += 7;
                v23 = *&v24;
                if (v19 == 0.0)
                {
                  v19 = 0.0;
                }

                sub_1004BDBE4(*&v19);
                if (v20 == 0.0)
                {
                  v25 = 0.0;
                }

                else
                {
                  v25 = v20;
                }

                sub_1004BDBE4(*&v25);

                sub_1004BBF84();
                sub_1004BDBB4(v22);
                sub_1004BDBB4(v21);
                sub_1004BDBB4(v23);

                --v17;
              }

              while (v17);
            }

            if (v60)
            {
              sub_1004BDBB4(0);
            }

            else
            {
              sub_1004BDBB4(1uLL);
              v26 = (v58 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v58 : 0;
              sub_1004BDBE4(v26);
            }

            v6 = a4;
            v5 = v63;
            sub_1004BDBF4();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1004B7E44())
            {
              while (1)
              {
                v27 = sub_1004B7E74();
                if ((v28 & 1) == 0 && v27 == v10)
                {
                  break;
                }

                sub_1004B7E94();
              }
            }

            if (__OFADD__(v10, v63))
            {
              goto LABEL_95;
            }

            ++v10;
            sub_1004B7E84();

            if (v10 == v57)
            {
              goto LABEL_37;
            }
          }

          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_37:

        goto LABEL_38;
      }

      sub_1004B7E44();
      v34 = sub_1004B7E74();
      if ((v35 & 1) != 0 || v34 >= a1)
      {
LABEL_53:
        sub_1004B7E94();
LABEL_38:
        v29 = v6[1];
        if (__OFSUB__(v29 >> 6, v5))
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v30 = 1 << *v6;
        v31 = __OFSUB__(v30, 1);
        v32 = v30 - 1;
        if (v31)
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v33 = (v32 & (((v29 >> 6) - v5) >> 63)) + (v29 >> 6) - v5;
        if (v33 < v32)
        {
          v32 = 0;
        }

        v6[1] = v6[1] & 0x3FLL | ((v33 - v32) << 6);
        return;
      }

      if (!__OFADD__(v34, v5))
      {
        sub_1004B7E84();
        goto LABEL_53;
      }

      __break(1u);
LABEL_59:
      sub_1004B7E44();
      v36 = sub_1004B7E74();
      if ((v37 & 1) == 0 && v36 >= v4)
      {
        if (__OFSUB__(v36, v5))
        {
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        sub_1004B7E84();
      }

      sub_1004B7E94();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if ((v9 - a2) >= sub_1004B7EA4() / 3)
    {
      goto LABEL_59;
    }

    if (v9 < v4)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v4 < 0)
    {
LABEL_105:
      __break(1u);
      return;
    }

    if (v9 != v4)
    {
      v56 = v9;
      do
      {
        v38 = a3 + 32 + 56 * v4;
        v39 = *(v38 + 32);
        v59 = *(v38 + 40);
        v61 = *(v38 + 48);
        v41 = *v38;
        v40 = *(v38 + 8);
        sub_1004BDBA4();
        if (v41 == 0.0)
        {
          v42 = 0.0;
        }

        else
        {
          v42 = v41;
        }

        sub_1004BDBE4(*&v42);
        if (v40 == 0.0)
        {
          v43 = 0.0;
        }

        else
        {
          v43 = v40;
        }

        sub_1004BDBE4(*&v43);

        sub_1004BBF84();
        v44 = *(v39 + 16);
        sub_1004BDBB4(v44);
        if (v44)
        {
          v45 = (v39 + 80);
          do
          {
            v46 = *(v45 - 6);
            v47 = *(v45 - 5);
            v48 = *(v45 - 2);
            v49 = *(v45 - 1);
            v51 = *v45;
            v45 += 7;
            v50 = *&v51;
            if (v46 == 0.0)
            {
              v46 = 0.0;
            }

            sub_1004BDBE4(*&v46);
            if (v47 == 0.0)
            {
              v52 = 0.0;
            }

            else
            {
              v52 = v47;
            }

            sub_1004BDBE4(*&v52);

            sub_1004BBF84();
            sub_1004BDBB4(v48);
            sub_1004BDBB4(v49);
            sub_1004BDBB4(v50);

            --v44;
          }

          while (v44);
        }

        if (v61)
        {
          sub_1004BDBB4(0);
        }

        else
        {
          sub_1004BDBB4(1uLL);
          v53 = (v59 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v59 : 0;
          sub_1004BDBE4(v53);
        }

        sub_1004BDBF4();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_97;
        }

        if (sub_1004B7E44())
        {
          while (1)
          {
            v54 = sub_1004B7E74();
            if ((v55 & 1) == 0 && v54 == v4)
            {
              break;
            }

            sub_1004B7E94();
          }
        }

        sub_1004B7E84();
      }

      while (++v4 != v56);
    }
  }
}

void sub_10046C644(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_54;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if (a1 < (v9 - v5) / 2)
    {
      if (sub_1004B7EA4() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v9 < a1)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (a1)
        {
          v10 = 0;
          while (1)
          {
            v11 = *(a3 + 32 + 8 * v10);
            sub_1004BDBA4();
            sub_1004BDBB4(v11);
            sub_1004BDBF4();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1004B7E44())
            {
              while (1)
              {
                v12 = sub_1004B7E74();
                if ((v13 & 1) == 0 && v12 == v10)
                {
                  break;
                }

                sub_1004B7E94();
              }
            }

            if (__OFADD__(v10, v5))
            {
              goto LABEL_51;
            }

            ++v10;
            sub_1004B7E84();
            if (v10 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_1004B7E44();
      v19 = sub_1004B7E74();
      if ((v20 & 1) != 0 || v19 >= a1)
      {
LABEL_29:
        sub_1004B7E94();
LABEL_17:
        v14 = a4[1];
        if (__OFSUB__(v14 >> 6, v5))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v15 = 1 << *a4;
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v16)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v18 = (v17 & (((v14 >> 6) - v5) >> 63)) + (v14 >> 6) - v5;
        if (v18 < v17)
        {
          v17 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v18 - v17) << 6);
        return;
      }

      if (!__OFADD__(v19, v5))
      {
        sub_1004B7E84();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_1004B7E44();
      v21 = sub_1004B7E74();
      if ((v22 & 1) == 0 && v21 >= v4)
      {
        if (__OFSUB__(v21, v5))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_1004B7E84();
      }

      sub_1004B7E94();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ((v9 - a2) >= sub_1004B7EA4() / 3)
    {
      goto LABEL_35;
    }

    if (v9 < v4)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v4 < 0)
    {
LABEL_61:
      __break(1u);
      return;
    }

    if (v9 != v4)
    {
      while (1)
      {
        v23 = *(a3 + 32 + 8 * v4);
        sub_1004BDBA4();
        sub_1004BDBB4(v23);
        sub_1004BDBF4();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_1004B7E44())
        {
          while (1)
          {
            v24 = sub_1004B7E74();
            if ((v25 & 1) == 0 && v24 == v4)
            {
              break;
            }

            sub_1004B7E94();
          }
        }

        sub_1004B7E84();
        if (++v4 == v9)
        {
          return;
        }
      }

      goto LABEL_53;
    }
  }
}

uint64_t sub_10046CA54(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10024DBD0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = sub_1004BD8B4(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(v12 + 176) >= *(*v14 + 176))
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      _s4WordCMa();
      v8 = sub_1004BC314();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v18[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v18[1] = v7;
    sub_10046CCD8(v18, v19, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_1004BD504();
}

Swift::Int sub_10046CBA4(id **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10046CA40(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1004BD8B4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = *&v2[v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
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
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1004BC314();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10046D43C(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10046CCD8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_124:
    v4 = *v102;
    if (*v102)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 176);
    v10 = *(*(*a3 + 8 * v6) + 176);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v9 >= v10)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 176);
      v14 = v13 >= v12;
      ++v11;
      v12 = v13;
    }

    while ((((v9 < v10) ^ v14) & 1) != 0);
    v8 = v11 - 1;
    if (v9 >= v10)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_153;
    }

    if (v6 < v8)
    {
      v15 = 8 * v8 - 8;
      v16 = 8 * v6;
      v17 = v8;
      v18 = v6;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v20 = *(v19 + v16);
          *(v19 + v16) = *(v19 + v15);
          *(v19 + v15) = v20;
        }

        ++v18;
        v15 -= 8;
        v16 += 8;
      }

      while (v18 < v17);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_152;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
          goto LABEL_154;
        }

        if (v6 + a4 < v5)
        {
          v5 = v6 + a4;
        }

        if (v5 < v6)
        {
          goto LABEL_155;
        }

        if (v8 != v5)
        {
          v21 = *a3;
          v22 = *a3 + 8 * v8 - 8;
          v23 = v6 - v8;
          do
          {
            v24 = *(v21 + 8 * v8);
            v25 = v23;
            v26 = v22;
            do
            {
              v27 = *v26;
              if (*(v24 + 176) >= *(*v26 + 176))
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_156;
              }

              *v26 = v24;
              v26[1] = v27;
              --v26;
            }

            while (!__CFADD__(v25++, 1));
            ++v8;
            v22 += 8;
            --v23;
          }

          while (v8 != v5);
          v8 = v5;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100441848(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v30 = v7[2];
    v29 = v7[3];
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_100441848((v29 > 1), v30 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v31;
    v32 = &v7[2 * v30];
    v32[4] = v6;
    v32[5] = v8;
    v104 = v8;
    v33 = *v102;
    if (!*v102)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v6 = v104;
    v5 = a3[1];
    if (v104 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v34 = v31 - 1;
    if (v31 >= 4)
    {
      v39 = &v7[2 * v31 + 4];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_138;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_139;
      }

      v46 = &v7[2 * v31];
      v48 = *v46;
      v47 = v46[1];
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_141;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_144;
      }

      if (v50 >= v42)
      {
        v68 = &v7[2 * v34 + 4];
        v70 = *v68;
        v69 = v68[1];
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_148;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v31 == 3)
    {
      v35 = v7[4];
      v36 = v7[5];
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_56:
      if (v38)
      {
        goto LABEL_140;
      }

      v51 = &v7[2 * v31];
      v53 = *v51;
      v52 = v51[1];
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_143;
      }

      v57 = &v7[2 * v34 + 4];
      v59 = *v57;
      v58 = v57[1];
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_147;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v61 = &v7[2 * v31];
    v63 = *v61;
    v62 = v61[1];
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_70:
    if (v56)
    {
      goto LABEL_142;
    }

    v64 = &v7[2 * v34];
    v66 = v64[4];
    v65 = v64[5];
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_145;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v34 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v109 = v34;
    v110 = v7;
    v106 = v34 - 1;
    v73 = v7[2 * v34 + 4];
    v74 = v7[2 * v34 + 5];
    v107 = v7[2 * v34 + 2];
    v108 = v74;
    v7 = (8 * v107);
    v75 = (v72 + 8 * v107);
    v76 = 8 * v73;
    v77 = (v72 + 8 * v73);
    v78 = 8 * v74;
    v79 = (v72 + 8 * v74);
    v80 = 8 * v73 - 8 * v107;
    v81 = 8 * v74 - 8 * v73;
    if (v80 < v81)
    {
      if (v75 != v33 || v77 <= v33)
      {
        memmove(v33, (v72 + 8 * v107), 8 * v73 - 8 * v107);
      }

      v82 = (v33 + v80);
      v83 = v80 < 1;
      v4 = v110;
      v84 = v108;
      if (v83 || v78 <= v76)
      {
        v85 = v33;
        v90 = v75;
        v86 = v109;
        v87 = v107;
        goto LABEL_114;
      }

      v85 = v33;
      v86 = v109;
      v87 = v107;
      while (1)
      {
        v88 = *v77;
        if (*(*v77 + 22) >= *(*v85 + 22))
        {
          break;
        }

        v89 = v75 == v77++;
        if (!v89)
        {
          goto LABEL_91;
        }

LABEL_92:
        ++v75;
        if (v85 >= v82 || v77 >= v79)
        {
          v90 = v75;
          goto LABEL_114;
        }
      }

      v88 = *v85;
      v89 = v75 == v85++;
      if (v89)
      {
        goto LABEL_92;
      }

LABEL_91:
      *v75 = v88;
      goto LABEL_92;
    }

    if (v77 != v33 || v79 <= v33)
    {
      memmove(v33, (v72 + 8 * v73), 8 * v74 - 8 * v73);
    }

    v82 = (v33 + v81);
    v86 = v109;
    if (v81 < 1 || v76 <= v7)
    {
      v85 = v33;
      v90 = v77;
      v4 = v110;
      v87 = v107;
      v84 = v108;
    }

    else
    {
      v4 = v110;
      v87 = v107;
      v84 = v108;
      do
      {
        v90 = v77 - 1;
        --v79;
        v91 = v82;
        while (1)
        {
          v92 = v79 + 1;
          v94 = *(v91 - 8);
          v91 -= 8;
          v93 = v94;
          if (v94[22] < *(*v90 + 22))
          {
            break;
          }

          if (v92 != v82)
          {
            *v79 = v93;
          }

          --v79;
          v82 = v91;
          if (v91 <= v33)
          {
            v82 = v91;
            v85 = v33;
            v90 = v77;
            goto LABEL_114;
          }
        }

        if (v92 != v77)
        {
          *v79 = *v90;
        }

        v85 = v33;
        if (v82 <= v33)
        {
          break;
        }

        --v77;
      }

      while (v75 < v90);
    }

LABEL_114:
    v95 = v82 - v85 + (v82 - v85 < 0 ? 7uLL : 0);
    if (v90 != v85 || v90 >= (v85 + (v95 & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v90, v85, 8 * (v95 >> 3));
    }

    if (v84 < v87)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10046DE1C(v4);
    }

    if (v86 > v4[2])
    {
      goto LABEL_137;
    }

    v96 = &v4[2 * v106];
    v96[4] = v87;
    v96[5] = v84;
    result = sub_10046DD90(v86);
    v7 = v4;
    v31 = v4[2];
    if (v31 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  result = sub_10046DE1C(v7);
  v7 = result;
LABEL_126:
  v97 = v7[2];
  if (v97 < 2)
  {
  }

  while (*a3)
  {
    v98 = v7[2 * v97];
    v99 = v7[2 * v97 + 3];
    sub_10046D998((*a3 + 8 * v98), (*a3 + 8 * v7[2 * v97 + 2]), (*a3 + 8 * v99), v4);
    if (v103)
    {
    }

    if (v99 < v98)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10046DE1C(v7);
    }

    if (v97 - 2 >= v7[2])
    {
      goto LABEL_151;
    }

    v100 = &v7[2 * v97];
    *v100 = v98;
    v100[1] = v99;
    result = sub_10046DD90(v97 - 1);
    v97 = v7[2];
    if (v97 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_10046D43C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10046DE1C(v8);
      v8 = result;
    }

    v76 = v8 + 2;
    v77 = v8[2];
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_10046DB9C((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
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
      result = sub_100441848(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v30 = v8[3];
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_100441848((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v31;
    v32 = v8 + 4;
    v33 = &v8[2 * v5 + 4];
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = v8[4];
          v35 = v8[5];
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[2 * v31];
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[2 * v5];
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[2 * v31];
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[2 * v5];
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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

        v71 = &v32[2 * v5 - 2];
        v72 = *v71;
        v73 = &v32[2 * v5];
        v74 = v73[1];
        sub_10046DB9C((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = v8[2];
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove(&v32[2 * v5], v73 + 2, 16 * (v75 - 1 - v5));
        v8[2] = (v75 - 1);
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[2 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[2 * v31];
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[2 * v5];
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
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

uint64_t sub_10046D998(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 176) < *(*v4 + 176))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 176) < *(*v17 + 176))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_10046DB9C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_10046DD90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10046DE1C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

id *sub_10046DE30(unint64_t a1, void (*a2)(id *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_1004BD6A4();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_1004681CC(v5, 0);
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

uint64_t sub_10046DECC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004BD6A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004BD6A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000197E8(&qword_100615B48, &qword_100615B40);
          for (i = 0; i != v6; ++i)
          {
            sub_100003ABC(&qword_100615B40);
            v9 = sub_10024DEA4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        _s4LineCMa();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10046E05C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004BD6A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004BD6A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000197E8(&qword_100615B18, &qword_100615B10);
          for (i = 0; i != v6; ++i)
          {
            sub_100003ABC(&qword_100615B10);
            v9 = sub_10024DF2C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        _s4WordCMa();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10046E1EC(int64_t a1, void (*a2)(id *, uint64_t, unint64_t))
{
  v3 = sub_10046E23C(a1);
  v4 = v3[2];

  return sub_100469920((v3 + 4), v4, a2);
}

id *sub_10046E23C(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_100468340(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_10046E2F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1004BC684();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100450CC8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10046E390(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100470BCC();
  result = sub_1004BC684();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100451060(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10046E404(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_18:
    sub_1004BD6A4();
  }

  _s4WordCMa();
  sub_1004701D0(&qword_100615B20, _s4WordCMa);
  result = sub_1004BC684();
  v9 = result;
  if (!i)
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1004BD484();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_14:
          __break(1u);
          return v9;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * i + 32);

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }
      }

      sub_100451178(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }
  }

  v5 = result;
  v4 = sub_1004BD6A4();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_10046E620()
{
  v1 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection) = 2;
  v2 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v4 = sub_1004B6E44();
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = 1;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = 0;
  v6 = v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
  *v6 = 2;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer) = 0;
  v7 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v8 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  *(v0 + v8) = sub_100447BF4(_swiftEmptyArrayStorage);
  sub_1004BD624();
  __break(1u);
}

uint64_t sub_10046E800(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, CFIndex a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  *&v191[16] = a3;
  *&v191[24] = a4;
  *v191 = a1;
  *&v191[8] = a2;

  v19 = sub_10046E404(a13);

  v235 = v19;
  v20 = CTLineRef.stringRange.getter();
  if (__OFSUB__(a12, v20))
  {
    goto LABEL_252;
  }

  v208 = a12 - v20;
  v21 = CTLineRef.glyphRuns.getter();
  v194 = v21;
  if (v21 >> 62)
  {
LABEL_253:
    v22 = sub_1004BD6A4();
    v23 = a10;
    if (v22)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = a10;
    if (v22)
    {
LABEL_4:
      v198 = v22;
      v24 = Int.seconds.getter(0);
      v25 = 0;
      v230 = *(a8 + 16);
      v232 = a8 + 32;
      v185 = a6;
      do
      {
        if ((v194 & 0xC000000000000001) != 0)
        {
          v26 = sub_1004BD484();
        }

        else
        {
          if (v25 >= *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_249;
          }

          v26 = *(v194 + 32 + 8 * v25);
        }

        v216 = v26;
        v27 = __OFADD__(v25, 1);
        v28 = v25 + 1;
        if (v27)
        {
          goto LABEL_246;
        }

        v210 = v28;
        v29 = CTRunGetFont();
        CTFontGetLanguageAwareOutsets();

        if (String.containsExcessiveHeightCharacters.getter(a9, v23))
        {
          v30 = a6 - v24;
        }

        else
        {
          v30 = a6;
        }

        v215 = CTRunRef.positions.getter();
        a8 = CTRunRef.stringRange.getter();
        v32 = v31;
        v33 = CTRunRef.stringIndices.getter();
        if (v208)
        {
          v27 = __OFADD__(a8, v208);
          a8 += v208;
          if (v27)
          {
            goto LABEL_247;
          }

          v34 = *(v33 + 16);
          if (v34)
          {
            v35 = a11;
            v236[0] = _swiftEmptyArrayStorage;
            v36 = v33;
            sub_100442200(0, v34, 0);
            v37 = v36;
            v38 = _swiftEmptyArrayStorage;
            v39 = 32;
            v40 = v208;
            do
            {
              v41 = *(v37 + v39);
              a11 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_234;
              }

              v236[0] = v38;
              v43 = v38[2];
              v42 = v38[3];
              if (v43 >= v42 >> 1)
              {
                sub_100442200((v42 > 1), v43 + 1, 1);
                v37 = v36;
                v40 = v208;
                v38 = v236[0];
              }

              v38[2] = (v43 + 1);
              v38[v43 + 4] = a11;
              v39 += 8;
              --v34;
            }

            while (v34);

            v217 = v38;
            a11 = v35;
          }

          else
          {

            v217 = _swiftEmptyArrayStorage;
          }
        }

        else
        {
          v217 = v33;
        }

        v44 = v230;
        if (!v230)
        {
LABEL_5:
          v23 = a10;
          goto LABEL_6;
        }

        v45 = 0;
        v234 = a8 + v32;
        v46 = __OFADD__(a8, v32);
        v193 = v215 + 32;
        v23 = a10;
        v229 = v46;
        do
        {
          while (1)
          {
            if (v45 >= v44)
            {
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
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
              goto LABEL_238;
            }

            v47 = v232 + 56 * v45;
            v48 = *v47;
            v49 = *(v47 + 8);
            v50 = *(v47 + 16);
            v51 = *(v47 + 24);
            v53 = *(v47 + 32);
            v52 = *(v47 + 40);
            v54 = *(v47 + 48);
            v55 = *(v53 + 16);
            if (v55)
            {
              v56 = v53 + 56 * v55;
              v58 = *(v56 + 8);
              v57 = *(v56 + 16);
              v27 = __OFADD__(v58, v57);
              v59 = v58 + v57;
              if (v27)
              {
                goto LABEL_235;
              }

              v55 = *(v53 + 64);
              v27 = __OFSUB__(v59, v55);
              v60 = v59 - v55;
              if (v27)
              {
                goto LABEL_229;
              }
            }

            else
            {
              v60 = 0;
            }

            v61 = v55 + a11;
            if (__OFADD__(v55, a11))
            {
              goto LABEL_230;
            }

            if (v46)
            {
              goto LABEL_231;
            }

            v62 = v61 + v60;
            if (__OFADD__(v61, v60))
            {
              goto LABEL_232;
            }

            v63 = v234;
            if (v234 >= v62)
            {
              v63 = v61 + v60;
            }

            if (a8 >= v61 && a8 < v62)
            {
              v64 = v63 - a8;
              if (__OFSUB__(v63, a8))
              {
                goto LABEL_236;
              }

              v61 = a8;
              goto LABEL_53;
            }

            if (v61 >= a8 && v61 < v234)
            {
              break;
            }

LABEL_32:
            v27 = __OFADD__(v45++, 1);
            if (v27)
            {
              goto LABEL_233;
            }

            if (v45 >= v44)
            {
              goto LABEL_6;
            }
          }

          v64 = v63 - v61;
          if (__OFSUB__(v63, v61))
          {
            goto LABEL_237;
          }

LABEL_53:
          if (v64 < 1)
          {
            goto LABEL_32;
          }

          v224 = v54;
          v225 = v52;
          v227 = v50;

          sub_1004BC884();
          if (v65)
          {

            v44 = v230;
            v46 = v229;
            goto LABEL_32;
          }

          v222 = v51;
          v231 = a11;

          v66 = _NSRange.init(range:in:)();
          v218 = v67;
          v219 = v66;
          v68 = sub_1004BC114();
          a11 = v70;
          v71 = v68 >> 16;
          v73 = v72 >> 16;
          if (v69 == 32)
          {
            if (v70 == 0xE100000000000000 && !v71 && v73 == 1 || (v74 = sub_1004BD8C4(), v75 = 32, v76 = v73, v77 = v71, (v74 & 1) != 0))
            {
LABEL_62:

              v27 = __OFADD__(v45++, 1);
              if (!v27)
              {
                goto LABEL_63;
              }

              goto LABEL_239;
            }
          }

          else
          {
            v78 = v69;
            if (sub_1004BD8C4())
            {
              goto LABEL_62;
            }

            v75 = v78;
            v76 = v73;
            v77 = v71;
            if (v78 == 10 && a11 == 0xE100000000000000 && !v71 && v76 == 1)
            {
LABEL_75:

              a11 = v231 + 1;
              v23 = a10;
              if (!__OFADD__(v231, 1))
              {
                goto LABEL_76;
              }

              goto LABEL_244;
            }
          }

          range_8 = v76;
          v79 = v75;
          if ((sub_1004BD8C4() & 1) != 0 || v79 == 10519010 && a11 == 0xA300000000000000 && !v77 && range_8 == 3)
          {
            goto LABEL_75;
          }

          v209 = v79;
          if (sub_1004BD8C4())
          {
            goto LABEL_75;
          }

          v80.location = v61;
          v80.length = v64;
          v248 = CTRunRef.convertToGlyphRange(textRange:stringIndices:)(v80, v217);
          if (v248.is_nil)
          {

            v27 = __OFADD__(v45++, 1);
            if (!v27)
            {
LABEL_63:
              a11 = v231;
              v23 = a10;
LABEL_76:
              v44 = v230;
              goto LABEL_77;
            }

            __break(1u);
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            __break(1u);
LABEL_258:
            __break(1u);
LABEL_259:
            __break(1u);
LABEL_260:
            __break(1u);
LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
          }

          v81 = v248.value.location + v248.value.length;
          if (__OFADD__(v248.value.location, v248.value.length))
          {
            goto LABEL_255;
          }

          if (v81 < v248.value.location)
          {
            goto LABEL_256;
          }

          if (v248.value.location < 0)
          {
            goto LABEL_257;
          }

          v82 = *(v215 + 16);
          if (v82 < v248.value.location || v82 < v81)
          {
            goto LABEL_258;
          }

          range = v248.value.location;
          if (v248.value.location == v81)
          {
            length = v248.value.length;
            v84 = INFINITY;
          }

          else
          {
            if (v248.value.location >= v81)
            {
              goto LABEL_261;
            }

            v85 = (v193 + 16 * v248.value.location);
            v84 = INFINITY;
            length = v248.value.length;
            v86 = v248.value.length;
            do
            {
              v87 = *v85;
              v85 += 2;
              v88 = v87;
              if (v87 < v84)
              {
                v84 = v88;
              }

              --v86;
            }

            while (v86);
          }

          v245.location = range;
          v245.length = length;
          CTRunRef.drawingWidth(range:positions:)(v245, v215);
          v187 = v89;

          Height = CGRectGetHeight(*v191);
          if ((v235 & 0xC000000000000001) != 0)
          {

            sub_1004BD324();
            _s4WordCMa();
            sub_1004701D0(&qword_100615B20, _s4WordCMa);
            sub_1004BC6A4();
            v90 = v238;
            v91 = v239;
            v93 = v240;
            v92 = v241;
            v94 = v242;
          }

          else
          {
            v95 = -1 << *(v235 + 32);
            v93 = ~v95;
            v96 = -v95;
            if (v96 < 64)
            {
              v97 = ~(-1 << v96);
            }

            else
            {
              v97 = -1;
            }

            v94 = v97 & *(v235 + 56);

            v91 = v235 + 56;
            v92 = 0;
          }

          v202 = v91;
          v98 = (v93 + 64) >> 6;
          v204 = v90;
          while ((v90 & 0x8000000000000000) == 0)
          {
            v99 = v92;
            v100 = v94;
            if (!v94)
            {
              while (1)
              {
                v92 = v99 + 1;
                if (__OFADD__(v99, 1))
                {
                  break;
                }

                if (v92 >= v98)
                {
                  goto LABEL_141;
                }

                v100 = *(v91 + 8 * v92);
                ++v99;
                if (v100)
                {
                  goto LABEL_108;
                }
              }

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

LABEL_108:
            v101 = (v100 - 1) & v100;
            v102 = *(*(v90 + 48) + ((v92 << 9) | (8 * __clz(__rbit64(v100)))));

            if (!v102)
            {
              goto LABEL_141;
            }

LABEL_112:
            v103 = *(v102 + 72);
            v104 = *(v102 + 80);
            if ((v104 & 0x2000000000000000) != 0)
            {
              v105 = HIBYTE(v104) & 0xF;
            }

            else
            {
              v105 = v103 & 0xFFFFFFFFFFFFLL;
            }

            v108 = v103 == v209 && v104 == a11 && v77 == 0 && v105 == range_8;
            if (!v108 && (sub_1004BD8C4() & 1) == 0 || *(v102 + 88) != v219 || *(v102 + 96) != v218)
            {
              goto LABEL_102;
            }

            v109 = *(v102 + 104);
            if (v109 >> 62)
            {
              v199 = *(v102 + 104);
              v112 = sub_1004BD6A4();
              v109 = v199;
              if (!v112)
              {
                goto LABEL_102;
              }
            }

            else if (!*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_102;
            }

            if ((v109 & 0xC000000000000001) != 0)
            {

              v196 = sub_1004BD484();

              v113 = *(v196 + 120);
              a6 = *(v196 + 128);
              swift_unknownObjectRelease();
              if (v113 != a5)
              {
                goto LABEL_102;
              }
            }

            else
            {
              if (!*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_260;
              }

              v110 = *(v109 + 32);
              if (*(v110 + 120) != a5)
              {
                goto LABEL_102;
              }

              a6 = *(v110 + 128);
            }

            if (a6 == v30)
            {
              v111 = CGRectGetHeight(*v191);
              if (v111 == CGRectGetHeight(*(v102 + 176)))
              {

                v165 = *(v102 + 176);
                *(v102 + 176) = v84;
                *(v102 + 184) = 0;
                *(v102 + 192) = v187;
                *(v102 + 200) = Height;
                *(v102 + 216) = v84 - v165 + *(v102 + 216);
                v166 = *(v102 + 104);
                if (v166 >> 62)
                {
                  v167 = sub_1004BD6A4();
                }

                else
                {
                  v167 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                a11 = v231;
                v23 = a10;
                if (!v167)
                {
LABEL_217:
                  *(v102 + 144) = v84;
                  *(v102 + 152) = 0;
                  *(v102 + 160) = v187;
                  *(v102 + 168) = Height;
                  if (_swiftEmptyArrayStorage >> 62)
                  {
                    v176 = sub_1004BD6A4();
                  }

                  else
                  {
                    v176 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  a6 = v185;
                  *(v102 + 112) = v176;

                  sub_1004BC274();
                  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1004BC2E4();
                    v23 = a10;
                  }

                  sub_1004BC334();
                  sub_100453C70(v102);
                  sub_1001A43F8();

                  v27 = __OFADD__(v45++, 1);
                  if (!v27)
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_270;
                }

                v168 = 0;
                v226 = v167;
                v228 = v166 & 0xC000000000000001;
                v223 = v166 & 0xFFFFFFFFFFFFFF8;
                v220 = v166 + 32;
                while (2)
                {
                  if (v228)
                  {
                    v169 = sub_1004BD484();
                    v27 = __OFADD__(v168++, 1);
                    if (v27)
                    {
                      goto LABEL_266;
                    }
                  }

                  else
                  {
                    if (v168 >= *(v223 + 16))
                    {
                      goto LABEL_269;
                    }

                    v169 = *(v220 + 8 * v168);

                    v27 = __OFADD__(v168++, 1);
                    if (v27)
                    {
                      goto LABEL_266;
                    }
                  }

                  v170 = *(v102 + 216);
                  *(v169 + 192) = v170;
                  *(v169 + 152) = CGRectOffset(*(v169 + 200), v170, 0.0);
                  v171 = *(v169 + 88);
                  if (v171 >> 62)
                  {
                    v172 = sub_1004BD6A4();
                    if (v172)
                    {
LABEL_209:
                      if (v172 < 1)
                      {
                        goto LABEL_267;
                      }

                      v173 = 0;
                      do
                      {
                        if ((v171 & 0xC000000000000001) != 0)
                        {
                          v174 = sub_1004BD484();
                        }

                        else
                        {
                          v174 = *(v171 + 8 * v173 + 32);
                        }

                        ++v173;
                        v175 = *(v169 + 192);
                        *(v174 + 104) = v175;
                        *(v174 + 64) = CGRectOffset(*(v174 + 112), v175, 0.0);
                      }

                      while (v172 != v173);
                    }
                  }

                  else
                  {
                    v172 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v172)
                    {
                      goto LABEL_209;
                    }
                  }

                  a11 = v231;
                  v23 = a10;
                  if (v168 == v226)
                  {
                    goto LABEL_217;
                  }

                  continue;
                }
              }
            }

LABEL_102:

            v91 = v202;
            v90 = v204;
            v94 = v101;
          }

          v206 = v94;
          if (sub_1004BD354())
          {
            _s4WordCMa();
            swift_dynamicCast();
            v102 = v236[0];
            v101 = v206;
            if (v236[0])
            {
              goto LABEL_112;
            }
          }

LABEL_141:
          sub_1001A43F8();
          v114 = *(v53 + 16);

          v192 = v216;
          if (!v114)
          {
            goto LABEL_186;
          }

          a11 = 0;
          v115 = v53 + 80;
          v207 = v114;
          do
          {
            v116 = (v115 + 56 * a11);
            while (1)
            {
              if (a11 >= v114)
              {
                goto LABEL_240;
              }

              v117 = a11 + 1;
              if (__OFADD__(a11, 1))
              {
                goto LABEL_241;
              }

              v118 = *(v116 - 2);
              v119 = v118 + v231;
              if (__OFADD__(v118, v231))
              {
                goto LABEL_242;
              }

              v120 = *(v116 - 1);
              v121 = v119 + v120;
              if (__OFADD__(v119, v120))
              {
                goto LABEL_243;
              }

              a6 = *(v116 - 6);
              v122 = *(v116 - 5);
              v123 = v234;
              if (v234 >= v121)
              {
                v123 = v119 + v120;
              }

              if (a8 >= v119 && a8 < v121)
              {
                break;
              }

              if (v119 >= a8 && v119 < v234)
              {
                v125 = v123 - v119;
                if (__OFSUB__(v123, v119))
                {
                  goto LABEL_248;
                }

                if (v125 >= 1)
                {
                  goto LABEL_163;
                }
              }

LABEL_145:
              ++a11;
              v116 += 7;
              if (v117 == v114)
              {
                goto LABEL_186;
              }
            }

            v125 = v123 - a8;
            if (__OFSUB__(v123, a8))
            {
              goto LABEL_245;
            }

            v119 = a8;
            if (v125 < 1)
            {
              goto LABEL_145;
            }

LABEL_163:
            v200 = *(v116 - 4);
            v201 = *v116;
            v203 = *(v116 - 1);
            v205 = *(v116 - 2);
            rangea = *(v116 - 3);
            range_8a = a11 + 1;

            sub_1004BC884();
            if ((v126 & 1) != 0 || (, v127.location = v119, v127.length = v125, v249 = CTRunRef.convertToGlyphRange(textRange:stringIndices:)(v127, v217), location = v249.value.location, v129 = v249.value.length, is_nil = v249.is_nil, , is_nil))
            {

              v117 = a11 + 1;
              v114 = v207;
              goto LABEL_145;
            }

            sub_1004BC114();
            v131 = location + v129;
            if (__OFADD__(location, v129))
            {
              goto LABEL_262;
            }

            if (v131 < location)
            {
              goto LABEL_263;
            }

            if ((location & 0x8000000000000000) != 0)
            {
              goto LABEL_264;
            }

            v132 = *(v215 + 16);
            if (v132 < location || v132 < v131)
            {
              goto LABEL_265;
            }

            v190 = *(v215 + 16);
            if (location == v131)
            {
              v133 = INFINITY;
              goto LABEL_177;
            }

            if (location >= v131)
            {
              goto LABEL_268;
            }

            v134 = (v193 + 16 * location);
            v133 = INFINITY;
            v135 = v129;
            do
            {
              v136 = *v134;
              v134 += 2;
              v137 = v136;
              if (v136 < v133)
              {
                v133 = v137;
              }

              --v135;
            }

            while (v135);
LABEL_177:
            v181 = v133;
            v195 = v24;
            v246.location = location;
            v246.length = v129;
            a11 = location;
            CTRunRef.drawingWidth(range:positions:)(v246, v215);
            v180 = v138;
            v179 = CGRectGetHeight(*v191);

            v139 = v192;
            sub_1004BD524();
            v182 = v129;
            v183 = location;
            _NSRange.makeIterator()();
            v236[0] = v140;
            v236[1] = v141;
            v236[2] = v142;
            v237 = v143 & 1;
            v243 = _NSRange.NSRangeIterator.next()();
            if (!v243.is_nil)
            {
              value = v243.value;
              v114 = v207;
              v188 = v122;
              v189 = a6;
              v197 = v139;
              while (value < v190)
              {
                a6 = v30;
                v145 = a5;
                v146 = *(v193 + 16 * value);
                v247.location = value;
                v247.length = v215;
                CTRunRef.drawingWidth(forGlyphAtIndex:positions:)(v247);
                v148 = v147;
                v149 = CGRectGetHeight(*v191);
                if (value >= v217[2])
                {
                  goto LABEL_251;
                }

                v150 = v149;
                sub_10044CAE0();

                sub_1004BBF94();
                v151 = sub_1004BC0E4();
                v153 = v152;
                _s5GlyphCMa();
                a11 = swift_allocObject();
                *(a11 + 96) = 0;
                *(a11 + 48) = v151;
                *(a11 + 56) = v153;
                *(a11 + 64) = v146;
                *(a11 + 72) = 0;
                *(a11 + 80) = v148;
                *(a11 + 88) = v150;
                *(a11 + 104) = v195;
                *(a11 + 112) = v146;
                *(a11 + 120) = 0;
                *(a11 + 128) = v148;
                *(a11 + 136) = v150;
                *(a11 + 16) = value;
                *(a11 + 40) = v197;
                a5 = v145;
                *(a11 + 24) = v145;
                *(a11 + 32) = a6;
                v30 = a6;
                v154 = v197;
                sub_1004BD4F4();
                sub_1004BD534();
                v139 = v197;
                sub_1004BD544();
                sub_1004BD504();
                v244 = _NSRange.NSRangeIterator.next()();
                value = v244.value;
                v122 = v188;
                a6 = v189;
                if (v244.is_nil)
                {
                  goto LABEL_183;
                }
              }

LABEL_250:
              __break(1u);
LABEL_251:
              __break(1u);
LABEL_252:
              __break(1u);
              goto LABEL_253;
            }

            v114 = v207;
LABEL_183:

            v155 = sub_1004BBF64();
            v184 = v156;

            _s8SyllableCMa();
            v157 = swift_allocObject();
            *(v157 + 136) = 0;
            *(v157 + 144) = 2;
            *(v157 + 184) = 0;
            *(v157 + 16) = a6;
            *(v157 + 24) = v122;
            *(v157 + 32) = v200;
            *(v157 + 40) = rangea;
            *(v157 + 48) = v205;
            *(v157 + 56) = v203;
            *(v157 + 64) = v201;
            *(v157 + 72) = v155;
            *(v157 + 80) = v184;
            *(v157 + 88) = _swiftEmptyArrayStorage;
            v24 = v195;
            *(v157 + 192) = v195;
            *(v157 + 200) = v181;
            *(v157 + 208) = 0;
            *(v157 + 216) = v180;
            *(v157 + 224) = v179;
            *(v157 + 152) = v181;
            *(v157 + 160) = 0;
            *(v157 + 168) = v180;
            *(v157 + 176) = v179;
            *(v157 + 96) = v183;
            *(v157 + 104) = v182;
            *(v157 + 112) = v139;
            *(v157 + 120) = a5;
            *(v157 + 128) = v30;
            v158 = v139;

            sub_1004BC274();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1004BC2E4();
            }

            sub_1004BC334();
            a11 = range_8a;
            v115 = v53 + 80;
          }

          while (range_8a != v114);
LABEL_186:

          v159 = sub_1004BBF64();
          v161 = v160;

          if (_swiftEmptyArrayStorage >> 62)
          {
            v162 = sub_1004BD6A4();
          }

          else
          {
            v162 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          _s4WordCMa();
          v163 = swift_allocObject();
          *(v163 + 136) = 2;
          *(v163 + 208) = 0;
          *(v163 + 216) = v24;
          *(v163 + 224) = v24;
          *(v163 + 232) = 0;
          *(v163 + 16) = v48;
          *(v163 + 24) = v49;
          *(v163 + 32) = v227;
          *(v163 + 40) = v222;
          *(v163 + 48) = v53;
          *(v163 + 56) = v225;
          *(v163 + 64) = v224;
          *(v163 + 72) = v159;
          *(v163 + 80) = v161;
          *(v163 + 184) = 0;
          *(v163 + 192) = v187;
          *(v163 + 200) = Height;
          *(v163 + 144) = v84;
          *(v163 + 152) = 0;
          *(v163 + 160) = v187;
          *(v163 + 168) = Height;
          *(v163 + 176) = v84;
          *(v163 + 104) = _swiftEmptyArrayStorage;
          *(v163 + 112) = v162;
          *(v163 + 88) = v219;
          *(v163 + 96) = v218;
          *(v163 + 120) = v192;
          *(v163 + 128) = 0;
          v164 = v192;

          sub_1004BC274();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004BC2E4();
          }

          sub_1004BC334();

          a11 = v231;
          a6 = v185;
          if (v234 == v62)
          {
            goto LABEL_5;
          }

          v27 = __OFADD__(v45++, 1);
          v23 = a10;
          v44 = v230;
          if (v27)
          {
            goto LABEL_259;
          }

LABEL_77:
          v46 = v229;
        }

        while (v45 < v44);
LABEL_6:

        v25 = v210;
      }

      while (v210 != v198);
    }
  }

  v236[0] = sub_10046DE30(v177, sub_10046E05C);
  sub_10046CA54(v236);

  return v236[0];
}

uint64_t sub_10046FD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_10046FD8C()
{

  return swift_deallocObject();
}

uint64_t sub_10046FDDC()
{

  return swift_deallocObject();
}

uint64_t sub_10046FE24(int64_t a1, void (*a2)(uint64_t *__return_ptr, id *, id))
{
  v4 = sub_10046E23C(a1);
  v5 = v4[2];

  a2(&v8, v4 + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

Swift::Int sub_10046FEA0(Swift::Int result, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = v3;
  v6 = a2;
  v7 = result;
  while (v6 < v4)
  {
    v8 = *(v7 + 8 * v6);
    v10 = *v5;
    v9 = v5[1];
    v11 = (v9 + 32);
    if (*v5)
    {
      sub_1004BDBA4();
      sub_1004BDBB4(v8);
      result = sub_1004BDBF4();
      if (__OFSUB__(1 << *(v10 + 16), 1))
      {
        goto LABEL_33;
      }

      sub_1004B7E44();
      result = sub_1004B7E74();
      if ((v12 & 1) == 0)
      {
        while (v11[result] != v8)
        {
          sub_1004B7E94();
          result = sub_1004B7E74();
          if (v13)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }
    }

    else
    {
      v14 = *(v9 + 16);
      if (v14)
      {
        while (*v11 != v8)
        {
          ++v11;
          if (!--v14)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }
    }

LABEL_16:
    swift_retain_n();
    sub_1004BD4F4();
    sub_1004BD534();
    sub_1004BD544();
    sub_1004BD504();
    v15 = v5[1];
    v16 = *(v15 + 16);
    if (!v10)
    {
      if (v16 > 0xF)
      {
        v17 = 0;
LABEL_23:
        v18 = sub_1004B7ED4();
        if (v17 <= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }

        v20 = sub_100468C6C(v15, v19, 0, v17);

        *v5 = v20;
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    swift_beginAccess();
    if (sub_1004B7EA4() >= v16)
    {
      result = swift_isUniquelyReferenced_native();
      v21 = *v5;
      if ((result & 1) == 0)
      {
        if (!v21)
        {
          goto LABEL_35;
        }

        v22 = sub_1004B7EC4();

        *v5 = v22;
        v21 = v22;
      }

      if (!v21)
      {
        goto LABEL_34;
      }

      sub_1004B7E64();
LABEL_4:

      goto LABEL_5;
    }

    v17 = *(v10 + 24) & 0x3FLL;
    if (v16 > 0xF || v17)
    {
      goto LABEL_23;
    }

    *v5 = 0;
LABEL_5:
    if (++v6 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100470184()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1004701D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100470218(id a1)
{
  if (a1 != 2)
  {
    sub_10014FEE8(a1);
  }
}

uint64_t sub_100470244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10047025C()
{
  result = *(v0 + 112);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id sub_1004702A0()
{
  result = *(v0 + 112);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

id sub_1004702DC()
{
  result = *(v0 + 112);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_10047031C()
{

  return swift_deallocObject();
}

id sub_1004703A0()
{
  result = *(v0 + 208);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_1004703BC()
{

  return swift_deallocObject();
}

id sub_100470488()
{
  result = *(v0 + 208);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id sub_1004704CC()
{
  result = *(v0 + 208);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

void sub_1004704E8(unint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_100470540(a1, v2[2], v2[3], *(v2[4] + 8));
  if (!v3)
  {
    *a2 = v5;
    a2[1] = v6;
  }
}

void sub_100470540(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  sub_1004B7F24(v8);
  v9 = 0;
  v10 = *(a4 + 16);
  v11 = a4 + 32;
  v22 = a3;
  v12 = a3 + 32;
  v13 = v8;
  while (2)
  {
    if (v9 == v10)
    {
LABEL_19:
      v20 = *a1;
      v19 = a1[1];
      v21 = static MPMediaLibraryFilteringOptions.none.getter();

      sub_10046AFE4(v20, v19, v13, 0, v21, a2, v22);
      return;
    }

    while (1)
    {
      if (v9 >= v10)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      v15 = *(v11 + 8 * v9++);
      if (a2)
      {
        v16 = sub_10044EC24(v15, v12, v8, a2 + 16, a2 + 32);
        if (v17)
        {
          goto LABEL_5;
        }

        v18 = v16;
        if (v16 < 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (!v8)
        {
          goto LABEL_5;
        }

        v18 = 0;
        while (*(v12 + 8 * v18) != v15)
        {
          if (v8 == ++v18)
          {
            goto LABEL_5;
          }
        }
      }

      if (sub_1004B7F04(v18))
      {
        break;
      }

LABEL_5:
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    if (--v13)
    {
      continue;
    }

    break;
  }

  sub_10046DE30(_swiftEmptyArrayStorage, sub_10046DECC);
}

uint64_t sub_1004706B8()
{

  return swift_deallocObject();
}

uint64_t sub_100470770()
{

  return swift_deallocObject();
}

void sub_1004707B0()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];
  v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
  *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
}

id sub_100470804()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

uint64_t sub_100470858()
{

  return swift_deallocObject();
}

uint64_t sub_1004708A0()
{

  return swift_deallocObject();
}

id sub_1004708E8(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1004708F8()
{

  return swift_deallocObject();
}

__n128 sub_100470930()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 64) = result;
  *(v1 + 80) = v3;
  return result;
}

void sub_100470954(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_100470968()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_1004709A8(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_1004709E8()
{

  return swift_deallocObject();
}

Swift::Int sub_100470A44@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100469E08(a1, a2, *(v3 + 16));
  if (!v4)
  {
    *a3 = result & 1;
    *(a3 + 8) = v7;
  }

  return result;
}

uint64_t sub_100470A7C()
{

  return swift_deallocObject();
}

uint64_t sub_100470AB4()
{

  return swift_deallocObject();
}

id sub_100470B28(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_100470B3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100470BCC()
{
  result = qword_100615B70;
  if (!qword_100615B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100615B70);
  }

  return result;
}

uint64_t sub_100470C20(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 _s5SpecsV20SelectedLinePositionOwcp(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100470C4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100470C9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100470CF8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100470D30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100470D78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100471010(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10047103C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else
    {
      v4 = *a2;
      if (*a1)
      {
        if (v2 == 2 && v4 == 1)
        {
          return 1;
        }
      }

      else if (v2 == 2 && v4 == 0)
      {
        return 1;
      }
    }
  }

  else if (!*(a2 + 8))
  {
    return 1;
  }

  return 0;
}

char *sub_100471098()
{
  v1 = v0;
  v2 = *(v0 + 72);
  v3 = *(v0 + 104) - *(v0 + 64);
  MaxX = CGRectGetMaxX(*(v0 + 112));
  Height = CGRectGetHeight(*(v0 + 64));
  v6 = *(v0 + 96);
  if (v6)
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v11 = v6;
    [v11 setFrame:{v7, v8, v9, v10}];
    [*&v11[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_glyphView] setFrame:{v3, v2, MaxX, Height}];
  }

  else
  {
    v12 = *(v0 + 40);
    v13 = *(v0 + 16);
    v14 = v1[3];
    v15 = v1[4];
    v16 = objc_allocWithZone(_s5GlyphC9GlyphViewCMa());
    v17 = CTRunRef.PartialRunView.init(run:range:textPosition:)(v12, v13, 1, v14, v15);
    [v17 setFrame:{v3, v2, MaxX, Height}];
    v18 = v1[8];
    v19 = v1[9];
    v20 = v1[10];
    v21 = v1[11];
    v22 = _s5GlyphC18GlyphContainerViewCMa();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators] = _swiftEmptyArrayStorage;
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_glyphView] = v17;
    v37.receiver = v23;
    v37.super_class = v22;
    v24 = v17;
    v25 = objc_msgSendSuper2(&v37, "initWithFrame:", v18, v19, v20, v21);
    if (qword_100614E78 != -1)
    {
      swift_once();
    }

    v26 = static LyricsOptionsManager.shared;
    if (os_variant_has_internal_content() && sub_10043EA2C(9, *(v26 + 40)))
    {
      v27 = objc_opt_self();
      v28 = v25;
      v29 = [v27 greenColor];
      v30 = [v29 colorWithAlphaComponent:0.7];

      [v28 setBackgroundColor:v30];
      v31 = [v27 yellowColor];
      UIView.Border.init(thickness:color:)();
      UIView.border.setter(v33, v32 & 1, v34);
    }

    v11 = v25;
    [v11 addSubview:v24];

    v35 = *(v1 + 12);
    *(v1 + 12) = v11;
  }

  return v11;
}

id sub_10047144C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10[0] = 0x3FF0000000000000;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0x3FF0000000000000;
  v10[4] = 0;
  v10[5] = 0;
  [a1 setTransform:v10];
  return UIView.untransformedFrame.setter(a2, a3, a4, a5);
}

void sub_1004714C8()
{
  v1 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
  swift_beginAccess();
  v30 = v1;
  v2 = *(v0 + v1);
  v29 = v2 >> 62;
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_75;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      if (v29)
      {
        v5 = sub_1004BD6A4();
      }

      else
      {
        v5 = *(v3 + 16);
      }

      goto LABEL_26;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_1004BD484();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_66;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = [v6 state];

    v9 = __OFADD__(v5, 1);
    if (v8 == 2 || v8 == 0)
    {
      break;
    }

    ++v5;
    if (v9)
    {
      goto LABEL_67;
    }
  }

  if (!v9)
  {
    if (v29)
    {
      v11 = sub_1004BD6A4();
    }

    else
    {
      v11 = *(v3 + 16);
    }

    v12 = v0;
    if (v5 + 1 != v11)
    {
      v3 = v5 + 5;
      do
      {
        v14 = v3 - 4;
        v0 = (v2 & 0xC000000000000001);
        if ((v2 & 0xC000000000000001) != 0)
        {
          v15 = sub_1004BD484();
        }

        else
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          if (v14 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_69;
          }

          v15 = *(v2 + 8 * v3);
        }

        v16 = v15;
        v17 = [v15 state];

        if (v17 != 2 && v17 != 0)
        {
          if (v14 != v5)
          {
            if (v0)
            {
              v19 = sub_1004BD484();
              v20 = sub_1004BD484();
            }

            else
            {
              if ((v5 & 0x8000000000000000) != 0)
              {
                goto LABEL_78;
              }

              v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v5 >= v21)
              {
                goto LABEL_79;
              }

              if (v14 >= v21)
              {
                goto LABEL_80;
              }

              v0 = *(v2 + 8 * v3);
              v19 = *(v2 + 8 * v5 + 32);
              v20 = v0;
            }

            v22 = v20;
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *(v12 + v30) = v2;
            if (!isUniquelyReferenced_nonNull_bridgeObject || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
            {
              v2 = sub_10044EC2C(v2);
              *(v12 + v30) = v2;
            }

            if ((v5 & 0x8000000000000000) != 0)
            {
              goto LABEL_72;
            }

            v0 = (v2 & 0xFFFFFFFFFFFFFF8);
            if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_73;
            }

            v24 = &v0[v5];
            v25 = v24[4];
            v24[4] = v22;

            *(v12 + v30) = v2;
            if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
            {
              v2 = sub_10044EC2C(v2);
              *(v12 + v30) = v2;
              v0 = (v2 & 0xFFFFFFFFFFFFFF8);
              if ((v14 & 0x8000000000000000) != 0)
              {
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
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
                v4 = sub_1004BD6A4();
                goto LABEL_3;
              }
            }

            else if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_65;
            }

            if (v14 >= v0[2])
            {
              goto LABEL_74;
            }

            v26 = v0[v3];
            v0[v3] = v19;

            *(v12 + v30) = v2;
          }

          if (__OFADD__(v5++, 1))
          {
            goto LABEL_71;
          }
        }

        v0 = (v3 - 3);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_70;
        }

        if (v2 >> 62)
        {
          v28 = sub_1004BD6A4();
        }

        else
        {
          v28 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v3;
      }

      while (v0 != v28);
    }

LABEL_26:
    if (v2 >> 62)
    {
      v13 = sub_1004BD6A4();
      if (v13 >= v5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v5)
      {
LABEL_28:
        sub_1004AFDF4(v5, v13);
        swift_endAccess();
        return;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100471868(void *a1, double a2, double a3, CGFloat a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100472254;
  *(v10 + 24) = v9;
  *&v14.tx = sub_1000E639C;
  *&v14.ty = v10;
  *&v14.a = _NSConcreteStackBlock;
  *&v14.b = 1107296256;
  *&v14.c = sub_100008224;
  *&v14.d = &unk_1005D3C20;
  v11 = _Block_copy(&v14);
  v12 = a1;

  [v8 performWithoutAnimation:v11];
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    [v12 frame];
    [v12 setFrame:{a2, a3}];
    CGAffineTransformMakeScale(&v14, a4, a4);
    [v12 setTransform:&v14];
  }

  return result;
}

void sub_100471A4C(void *a1, double a2, double a3, double a4)
{
  v5 = v4;
  sub_1004720E0();
  isa = UIViewPropertyAnimator.init(springTimingParameters:)(a1).super.isa;
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  v22 = sub_100472164;
  v23 = v11;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1000D6C80;
  v21 = &unk_1005D3AE0;
  v12 = _Block_copy(&v18);
  v13 = v5;

  [(objc_class *)isa addAnimations:v12];
  _Block_release(v12);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_1004721C0;
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10013ABCC;
  v21 = &unk_1005D3B30;
  v15 = _Block_copy(&v18);

  [(objc_class *)isa addCompletion:v15];
  _Block_release(v15);
  [(objc_class *)isa startAnimationAfterDelay:a4];
  v16 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
  swift_beginAccess();
  v17 = isa;
  sub_1004BC274();
  if (*((*(v13 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v13 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  swift_endAccess();
}

uint64_t sub_100471C9C(void *a1, double a2, double a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100472214;
  *(v8 + 24) = v7;
  v16 = sub_1000E6038;
  v17 = v8;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100008224;
  v15 = &unk_1005D3BA8;
  v9 = _Block_copy(&v12);
  v10 = a1;

  [v6 performWithoutAnimation:v9];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v12 = 0x3FF0000000000000;
    v13 = 0;
    v14 = 0;
    v15 = 0x3FF0000000000000;
    v16 = 0;
    v17 = 0;
    [v10 setTransform:&v12];
    [v10 frame];
    [v10 setFrame:{a2, a3}];
  }

  return result;
}

id sub_100471E60(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  swift_beginAccess();
  return UIView.setAnchorPoint(_:preserveFrame:)(1, *v2, v2[1]);
}

void sub_100471EB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1004714C8();
  }
}

id sub_100471F34()
{
  v2.receiver = v0;
  v2.super_class = _s5GlyphC18GlyphContainerViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10047202C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1004720E0()
{
  result = qword_100616AF0;
  if (!qword_100616AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100616AF0);
  }

  return result;
}

uint64_t sub_10047212C()
{

  return swift_deallocObject();
}

uint64_t sub_100472170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100472188()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1004721DC()
{

  return swift_deallocObject();
}

void sub_1004722A4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_1004BD6A4();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_1004BD484();
    }

    else
    {
    }

    sub_100477250();
  }

LABEL_10:
  v4 = *(v0 + 112);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v0 + 112);
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 112) = 0;
}

id sub_1004723B4()
{
  result = *(v0 + 112);
  if (!result)
  {
    return result;
  }

  result = [result maskView];
  if (result)
  {
    return result;
  }

  result = *(v0 + 112);
  if (!result)
  {
    return result;
  }

  v2 = [result subviews];
  sub_100009130(0, &qword_100615B60);
  v3 = sub_1004BC2A4();

  if (v3 >> 62)
  {
    result = sub_1004BD6A4();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004BD484();
    goto LABEL_10;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_10:
    v5 = v4;

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004724B8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[2];
  if (v2 >> 62)
  {
    v3 = sub_1004BD6A4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v25 = _swiftEmptyArrayStorage;

    sub_100442220(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    v5 = 0;
    v4 = v25;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_1004BD484();
      }

      else
      {
      }

      v7 = *(v6 + 48);
      if (*(v7 + 16))
      {
        v8 = *(v7 + 32);
      }

      else
      {
        v8 = 0;
      }

      v25 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        sub_100442220((v9 > 1), v10 + 1, 1);
        v4 = v25;
      }

      ++v5;
      v4[2] = (v10 + 1);
      v4[v10 + 4] = v8;
    }

    while (v3 != v5);
  }

  v25 = v4;

  sub_10046CBA4(&v25);

  if (v25[2])
  {
    v11 = v25[4];
  }

  else
  {
    v11 = 0;
  }

  v1[8] = v11;
  v12 = v1[2];
  if (v12 >> 62)
  {
    v13 = sub_1004BD6A4();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v25 = _swiftEmptyArrayStorage;

    sub_100442220(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v14 = v25;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = sub_1004BD484();
        }

        else
        {
        }

        v17 = *(v16 + 48);
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = *(v17 + 56 * v18 - 16);
        }

        else
        {
          v19 = 0;
        }

        v25 = v14;
        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          sub_100442220((v20 > 1), v21 + 1, 1);
          v14 = v25;
        }

        ++v15;
        v14[2] = (v21 + 1);
        v14[v21 + 4] = v19;
      }

      while (v13 != v15);

      goto LABEL_34;
    }

LABEL_41:
    __break(1u);

    __break(1u);
    return result;
  }

LABEL_34:
  v25 = v14;

  sub_10046CBA4(&v25);

  v22 = v25[2];
  if (v22)
  {
    v23 = v25[v22 + 3];
  }

  else
  {
    v23 = 0;
  }

  v1[9] = v23;
  return result;
}

void sub_1004727CC(uint64_t a1)
{
  v3 = *(v1 + 112);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
    if (v4)
    {
      swift_beginAccess();
      v6 = *(v1 + 16);
      if (v6 >> 62)
      {
        v7 = sub_1004BD6A4();
        if (!v7)
        {
          return;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          return;
        }
      }

      v8 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
        __break(1u);
      }

      else if ((v6 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_23;
        }

        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 8 * v8 + 32);
        v10 = v4;

LABEL_10:
        v2 = *(v9 + 104);
        if (!(v2 >> 62))
        {
          v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            goto LABEL_12;
          }

          goto LABEL_24;
        }

LABEL_23:
        v11 = sub_1004BD6A4();
        if (v11)
        {
LABEL_12:
          v12 = v11 - 1;
          if (!__OFSUB__(v11, 1))
          {
            if ((v2 & 0xC000000000000001) == 0)
            {
              if ((v12 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v12 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v13 = *(v2 + 8 * v12 + 32);

                if (*(v1 + 120))
                {
LABEL_17:

                  return;
                }

                goto LABEL_28;
              }

              __break(1u);
              return;
            }

LABEL_27:

            v13 = sub_1004BD484();

            if (*(v1 + 120))
            {
              goto LABEL_17;
            }

LABEL_28:
            [*(a1 + 200) lineHeight];
            v16 = vabdd_f64(v15 * *(a1 + 256) + *(a1 + 464) + *(a1 + 464), CGRectGetHeight(*(v1 + 80))) * 0.5;
            *(v1 + 120) = 1;
            v17 = objc_opt_self();
            v18 = *(a1 + 648);
            v19 = swift_allocObject();
            *(v19 + 16) = v1;
            *(v19 + 24) = v4;
            *(v19 + 32) = v13;
            memcpy((v19 + 40), a1, 0x2B0uLL);
            *(v19 + 728) = v16;
            aBlock[4] = sub_100475B5C;
            aBlock[5] = v19;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1000D6C80;
            aBlock[3] = &unk_1005D3EE0;
            v20 = _Block_copy(aBlock);
            v21 = v4;

            sub_10046E570(a1, v24);

            [v17 animateWithDuration:196609 delay:v20 options:0 animations:v18 completion:0.0];
            _Block_release(v20);
            sub_100009130(0, &qword_100616B70);
            v22 = sub_1004BCB44();
            v23 = swift_allocObject();
            swift_weakInit();

            OS_dispatch_queue.asyncAfter(_:block:)(sub_100475BA8, v23);

            return;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_24:

        return;
      }

      v14 = v4;

      v9 = sub_1004BD484();

      goto LABEL_10;
    }
  }
}

id sub_100472B90(uint64_t a1, id a2, uint64_t a3, uint64_t a4, double a5)
{
  if (*(a1 + 58))
  {
    [a2 frame];
    v10 = v9;
    v12 = v11;
    v13 = *(a4 + 504);
    Width = CGRectGetWidth(*(a1 + 80));
    v15 = v12;
    v16 = v10;
    v17 = Width;
    v18 = -(v13 + a5);
    v19 = v13 + v17 + a5;
  }

  else
  {
    v19 = CGRectGetMaxX(*(a3 + 152)) + *(a4 + 504) + a5;
    [a2 frame];
  }

  return [a2 setFrame:{v18, v16, v19, v15}];
}

uint64_t sub_100472C78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 120) = 0;
  }

  return result;
}

void sub_100472CC8(unint64_t a1, double a2)
{
  swift_beginAccess();
  v14 = *(v3 + 16);
  if (v14 >> 62)
  {
    v2 = *(v3 + 16);
    v15 = sub_1004BD6A4();
    v14 = v2;
    if (!v15)
    {
      goto LABEL_53;
    }

    goto LABEL_3;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
LABEL_3:
    v111 = *(v3 + 56);
    v109 = *(v3 + 57);
    v113 = v14 & 0xC000000000000001;
    v108 = v14 & 0xFFFFFFFFFFFFFF8;
    v107 = v3;
    v117 = &v120;

    v5 = 0;
    v9 = 1107296256;
    v110 = v15;
    while (1)
    {
      if (v113)
      {
        v21 = sub_1004BD484();
        v22 = __OFADD__(v5++, 1);
        if (v22)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v23 = *(v108 + 16);
        if (v5 >= v23)
        {
          __break(1u);
          goto LABEL_100;
        }

        v22 = __OFADD__(v5++, 1);
        if (v22)
        {
LABEL_86:
          __break(1u);
LABEL_87:

LABEL_187:

          goto LABEL_188;
        }
      }

      v115 = v21;
      if (v111)
      {
        goto LABEL_39;
      }

      v15 = *(v21 + 104);
      if (v15 >> 62)
      {
        v4 = sub_1004BD6A4();
        if (!v4)
        {
          goto LABEL_39;
        }

LABEL_17:
        if (v4 >= 1)
        {
          v7 = 0;
          v2 = v15 & 0xC000000000000001;
          while (1)
          {
            if (v2)
            {
              v6 = sub_1004BD484();
            }

            else
            {
              v6 = *(v15 + 8 * v7 + 32);
            }

            v8 = *(v6 + 16);
            v30 = v8 <= a2;
            if (*(v6 + 144) >= 2u)
            {
              if (*(v6 + 136))
              {
                if (v8 <= a2)
                {
                  goto LABEL_21;
                }

                v30 = 0;
              }

              else if (v8 > a2)
              {
                goto LABEL_21;
              }
            }

            sub_100470954(v30, 2u);
            v24 = *(v6 + 136);
            v31 = *(v6 + 144);
            if (v31 == 1)
            {
              if (v24 && v8 <= a2)
              {
LABEL_37:
                sub_100470B28(*(v6 + 136), *(v6 + 144));
                sub_100470B28(v24, v31);
                [(objc_class *)v24 stopAnimation:1];
                goto LABEL_20;
              }
            }

            else if (!*(v6 + 144) && v24 && v8 > a2)
            {
              goto LABEL_37;
            }

            sub_100009130(0, &qword_100616AF0);
            v24 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}]).super.isa;
LABEL_20:
            v25 = swift_allocObject();
            *(v25 + 16) = v6;
            *(v25 + 24) = v8 > a2;
            memcpy((v25 + 32), a1, 0x2B0uLL);
            v124[4] = sub_1004758FC;
            v124[5] = v25;
            v124[0] = _NSConcreteStackBlock;
            v124[1] = 1107296256;
            v124[2] = sub_1000D6C80;
            v124[3] = &unk_1005D3DA0;
            v26 = _Block_copy(v124);

            sub_10046E570(a1, &aBlock);

            [(objc_class *)v24 addAnimations:v26];
            _Block_release(v26);
            v27 = swift_allocObject();
            *(v27 + 16) = v6;
            *(v27 + 24) = v8 > a2;
            v122 = sub_100475944;
            v123 = v27;
            aBlock = _NSConcreteStackBlock;
            v119 = 1107296256;
            v120 = sub_10013ABCC;
            v121 = &unk_1005D3DF0;
            v28 = _Block_copy(&aBlock);

            [(objc_class *)v24 addCompletion:v28];
            _Block_release(v28);

            v29 = *(v6 + 136);
            *(v6 + 136) = v24;
            LOBYTE(v26) = *(v6 + 144);
            *(v6 + 144) = v8 > a2;
            v3 = v24;
            sub_100470954(v29, v26);
            [v3 startAnimation];

LABEL_21:
            ++v7;

            if (v4 == v7)
            {
              goto LABEL_39;
            }
          }
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v23 = v15 & 0xFFFFFFFFFFFFFF8;
      v4 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_17;
      }

LABEL_39:
      if (!v109)
      {
        v3 = v115;
        sub_100477738(a1, a2);

        goto LABEL_7;
      }

      v32 = *(v115 + 208);
      if (v32)
      {
        v33 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
        if (v33)
        {
          v4 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
          v2 = *(v115 + 48);
          if (*(v2 + 16))
          {
            if (*(v2 + 32) > a2)
            {
              goto LABEL_44;
            }
          }

          else if (a2 < 0.0)
          {
LABEL_44:
            v2 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
            LOBYTE(v6) = v115;
            v3 = v32;
            sub_1004709A8(v33, v4);
            v34 = v2;
            [v34 setBackgroundColor:v33];

            goto LABEL_7;
          }

          v35 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
          v6 = v32;
          sub_1004709A8(v33, v4);
          v36 = [v35 backgroundColor];
          if (v36)
          {
            v7 = v36;
            sub_100009130(0, &unk_1006169D0);
            v37 = v4;
            v3 = sub_1004BCFA4();

            if (v3)
            {

              goto LABEL_7;
            }
          }

          v38 = *(v2 + 16);
          if (v38)
          {
            v16 = *(v2 + 32);
            v17 = *(v2 + 32 + 56 * v38 - 48);
          }

          else
          {
            v16 = 0.0;
            v17 = 0.0;
          }

          v2 = v115;
          v3 = objc_opt_self();
          v8 = v17 - v16;
          v18 = swift_allocObject();
          v18[2] = v6;
          v18[3] = v33;
          v18[4] = v4;
          v122 = sub_1004759FC;
          v123 = v18;
          aBlock = _NSConcreteStackBlock;
          v119 = 1107296256;
          v120 = sub_1000D6C80;
          v121 = &unk_1005D3E90;
          v19 = _Block_copy(&aBlock);
          v6 = v6;
          v4 = v4;
          v20 = v33;

          [v3 animateWithDuration:v19 animations:v8];

          _Block_release(v19);
        }
      }

LABEL_7:
      v15 = v110;
      if (v5 == v110)
      {

        v3 = v107;
        break;
      }
    }
  }

LABEL_53:
  if ((*(v3 + 120) & 1) == 0 && (*(v3 + 57) & 1) == 0)
  {
    v39 = *(v3 + 112);
    if (v39)
    {
      v40 = *(v39 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
      if (v40)
      {
        v41 = *(a1 + 200);
        v7 = v3;
        v15 = v40;
        [v41 lineHeight];
        v8 = vabdd_f64(v42 * *(a1 + 256) + *(a1 + 464) + *(a1 + 464), CGRectGetHeight(*(v3 + 80))) * 0.5;
        v11 = *(a1 + 504);
        if (*(v3 + 72) > a2)
        {
          if (*(v3 + 64) > a2)
          {
            *(v3 + 128) = 0;

            if (*(v3 + 58))
            {
              v43 = *(v3 + 80);
              v44 = *(v3 + 88);
              v45 = *(v3 + 96);
              v46 = *(v3 + 104);
              v47 = v15;
              v125.origin.x = v43;
              v125.origin.y = v44;
              v125.size.width = v45;
              v125.size.height = v46;
              v48 = v8 * 0.5 + CGRectGetWidth(v125);
              [v47 frame];
              [v47 setFrame:v48];
            }

            else
            {
              v47 = v15;
            }

            [v47 frame];
            [v47 setFrame:{v64, v65, v8, v66, v107}];
            goto LABEL_85;
          }

          v5 = sub_100473E00(a2);
          a1 = v51;
          v52 = sub_100473FF8(a2);
          v4 = v52;
          v3 = v53;
          if (v5 && v52)
          {
            v54 = *(v7 + 128);
            if (v54 && v52 == v54)
            {

              return;
            }

            LOBYTE(v6) = *(v7 + 58);
            v2 = *(v7 + 16);
            v23 = v2 >> 62;
            if (v6)
            {
              if (!v23)
              {
                if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_91:
                  if ((v2 & 0xC000000000000001) != 0)
                  {

                    v74 = sub_1004BD484();

                    v67 = *(v74 + 104);

                    swift_unknownObjectRelease();
                    if ((v67 & 0x8000000000000000) == 0 && (v67 & 0x4000000000000000) == 0)
                    {
LABEL_95:
                      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
LABEL_96:
                        if ((v67 & 0xC000000000000001) != 0)
                        {
                          goto LABEL_194;
                        }

                        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          v68 = *(v67 + 32);
                          goto LABEL_115;
                        }

                        __break(1u);
                        goto LABEL_196;
                      }

LABEL_144:

                      goto LABEL_145;
                    }

LABEL_137:
                    if (sub_1004BD6A4())
                    {
                      goto LABEL_96;
                    }

                    goto LABEL_144;
                  }

                  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v67 = *(*(v2 + 32) + 104);

                    if ((v67 & 0x8000000000000000) == 0 && (v67 & 0x4000000000000000) == 0)
                    {
                      goto LABEL_95;
                    }

                    goto LABEL_137;
                  }

                  goto LABEL_140;
                }

LABEL_134:

                goto LABEL_145;
              }

LABEL_131:
              if (sub_1004BD6A4())
              {
                goto LABEL_91;
              }

              goto LABEL_134;
            }

LABEL_101:
            if (v23)
            {
              v69 = sub_1004BD6A4();
              if (!v69)
              {
                goto LABEL_134;
              }
            }

            else
            {
              v69 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v69)
              {
                goto LABEL_134;
              }
            }

            v70 = v69 - 1;
            if (__OFSUB__(v69, 1))
            {
              __break(1u);
LABEL_140:
              __break(1u);
              goto LABEL_141;
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
LABEL_141:

              v75 = sub_1004BD484();

              v71 = *(v75 + 104);

              swift_unknownObjectRelease();
              if (v71 < 0 || (v71 & 0x4000000000000000) != 0)
              {
                goto LABEL_143;
              }

              goto LABEL_109;
            }

            if ((v70 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_175:
              __break(1u);
            }

            else if (v70 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v71 = *(*(v2 + 8 * v70 + 32) + 104);

              if (v71 < 0 || (v71 & 0x4000000000000000) != 0)
              {
LABEL_143:
                v72 = sub_1004BD6A4();
                if (!v72)
                {
                  goto LABEL_144;
                }

                goto LABEL_110;
              }

LABEL_109:
              v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v72)
              {
                goto LABEL_144;
              }

LABEL_110:
              v22 = __OFSUB__(v72, 1);
              v73 = v72 - 1;
              if (!v22)
              {
                if ((v71 & 0xC000000000000001) != 0)
                {
                  goto LABEL_194;
                }

                if ((v73 & 0x8000000000000000) == 0)
                {
                  if (v73 < *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v68 = *(v71 + 8 * v73 + 32);
                    while (1)
                    {
LABEL_115:

                      if (v68 == v4)
                      {
                        v10 = 1.0;
                      }

                      else
                      {
LABEL_145:
                        v76 = *(v4 + 64);
                        if (!v76 || (v10 = 0.5, v76 >= 3))
                        {
                          if (!v3 || (, v77 = sub_1004BBFB4(), , v10 = 0.25, v77 >= 3))
                          {
                            v10 = 0.12;
                          }
                        }
                      }

                      if (v6)
                      {
                        v78 = *(v4 + 152) - v11 * v10 - v8;
                        [v15 frame];
                        v80 = v79;
                        v81 = v7;
                        v82 = CGRectGetWidth(*(v7 + 80)) - v78;
                        goto LABEL_183;
                      }

                      v9 = *(v4 + 16);
                      a2 = *(v4 + 24);
                      v70 = *(v4 + 32);
                      v2 = *(v4 + 40);
                      v84 = *(v4 + 48);
                      v83 = *(v4 + 56);
                      v85 = *(v4 + 64);
                      v6 = *(v5 + 104);
                      if (v6 >> 62)
                      {
                        v115 = *(v4 + 56);
                        v117 = *(v4 + 48);
                        v86 = sub_1004BD6A4();
                        v84 = v117;
                        v83 = v115;
                        if (!v86)
                        {
LABEL_172:

                          if (!v2)
                          {
                            goto LABEL_190;
                          }

LABEL_179:

                          goto LABEL_180;
                        }
                      }

                      else
                      {
                        v86 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (!v86)
                        {
                          goto LABEL_172;
                        }
                      }

                      v113 = v85;
                      v87 = v86 - 1;
                      if (__OFSUB__(v86, 1))
                      {
                        goto LABEL_175;
                      }

                      v115 = v83;
                      v117 = v84;
                      if ((v6 & 0xC000000000000001) != 0)
                      {
                        goto LABEL_177;
                      }

                      if ((v87 & 0x8000000000000000) != 0)
                      {
                        __break(1u);
                      }

                      else if (v87 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        v88 = *(v6 + 8 * v87 + 32);
                        v90 = *(v88 + 16);
                        v89 = *(v88 + 24);
                        v92 = *(v88 + 32);
                        v91 = *(v88 + 40);
                        v116 = *(v88 + 48);
                        v114 = *(v88 + 56);
                        v112 = *(v88 + 64);

                        if (!v2)
                        {
                          goto LABEL_178;
                        }

                        goto LABEL_159;
                      }

                      __break(1u);
LABEL_194:
                      v68 = sub_1004BD484();
                      swift_unknownObjectRelease();
                    }
                  }

                  goto LABEL_198;
                }

LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
                return;
              }

LABEL_196:
              __break(1u);
              goto LABEL_197;
            }

            __break(1u);
LABEL_177:

            v94 = sub_1004BD484();

            v95 = v94;
            v90 = *(v94 + 16);
            v89 = *(v94 + 24);
            v92 = *(v94 + 32);
            v91 = v95[5];
            v116 = v95[6];
            v114 = v95[7];
            v112 = v95[8];

            swift_unknownObjectRelease();
            if (v2)
            {
LABEL_159:
              if (!v91 || *&v9 != v90 || a2 != v89)
              {
                goto LABEL_179;
              }

              if (v70 == v92 && v91 == v2)
              {
              }

              else
              {
                v93 = sub_1004BD9C4();

                if ((v93 & 1) == 0)
                {
                  goto LABEL_180;
                }
              }

              if (v117 == v116 && v115 == v114)
              {

                if (v113 == v112 && a1)
                {
LABEL_191:
                  MaxX = *(a1 + 176);
LABEL_182:
                  [v15 frame];
                  v78 = v97;
                  v80 = v98;
                  v82 = v8 + v11 * v10 + MaxX;
                  v81 = v7;
LABEL_183:
                  [v15 frame];
                  v100 = v99;

                  v101 = *(v81 + 112);
                  if (v101)
                  {
                    v102 = *(v4 + 24) - *(v4 + 16);
                    v103 = objc_opt_self();
                    v104 = swift_allocObject();
                    *(v104 + 16) = v101;
                    *(v104 + 24) = v78;
                    *(v104 + 32) = v80;
                    *(v104 + 40) = v82;
                    *(v104 + 48) = v100;
                    v122 = sub_100475988;
                    v123 = v104;
                    aBlock = _NSConcreteStackBlock;
                    v119 = 1107296256;
                    v120 = sub_1000D6C80;
                    v121 = &unk_1005D3E40;
                    v105 = _Block_copy(&aBlock);
                    v106 = v101;

                    [v103 animateWithDuration:196609 delay:v105 options:0 animations:v102 completion:0.0];
                    _Block_release(v105);
                  }

                  else
                  {
                  }

                  *(v7 + 128) = v4;
                  goto LABEL_187;
                }
              }

              else
              {
LABEL_180:
              }
            }

            else
            {
LABEL_178:
              if (v91)
              {
                goto LABEL_179;
              }

LABEL_190:

              if (a1)
              {
                goto LABEL_191;
              }
            }

            MaxX = CGRectGetMaxX(*(v4 + 152));
            goto LABEL_182;
          }

          goto LABEL_87;
        }

        if (*(v3 + 58))
        {
          v47 = v15;
          [v47 frame];
          [v47 setFrame:{-(v11 + v8), v49, v11 + v8 + CGRectGetWidth(*(v3 + 80)), v50, v107}];
LABEL_85:

          goto LABEL_188;
        }

        v55 = *(v3 + 16);
        if (v55 >> 62)
        {
          v56 = sub_1004BD6A4();
          if (!v56)
          {
            goto LABEL_188;
          }
        }

        else
        {
          v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v56)
          {
LABEL_188:
            [v15 setNeedsDisplay];

            return;
          }
        }

        v2 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        else if ((v55 & 0xC000000000000001) == 0)
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_124;
          }

          if (v2 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_127;
          }

          v2 = *(v55 + 8 * v2 + 32);

LABEL_75:
          a1 = *(v2 + 104);
          if (!(a1 >> 62))
          {
            v57 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v57)
            {
              goto LABEL_187;
            }

LABEL_77:
            v3 = v57 - 1;
            if (!__OFSUB__(v57, 1))
            {
              if ((a1 & 0xC000000000000001) == 0)
              {
                if ((v3 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v3 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v58 = *(a1 + 8 * v3 + 32);

LABEL_82:
                  v59 = v58[19];
                  v60 = v58[20];
                  v61 = v58[21];
                  v62 = v58[22];
                  v63 = v15;
                  v126.origin.x = v59;
                  v126.origin.y = v60;
                  v126.size.width = v61;
                  v126.size.height = v62;
                  CGRectGetMaxX(v126);
                  [v63 frame];
                  [v63 setFrame:?];

                  goto LABEL_188;
                }

                __break(1u);
                goto LABEL_131;
              }

LABEL_128:

              v58 = sub_1004BD484();

              goto LABEL_82;
            }

LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

LABEL_124:
          v57 = sub_1004BD6A4();
          if (!v57)
          {
            goto LABEL_187;
          }

          goto LABEL_77;
        }

        v2 = sub_1004BD484();

        goto LABEL_75;
      }
    }
  }
}

uint64_t sub_100473E00(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
LABEL_28:
    v4 = sub_1004BD6A4();
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return 0;
  }

LABEL_3:

  for (i = 4; ; ++i)
  {
    v6 = i - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = sub_1004BD484();
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }
    }

    v8 = *(v7 + 48);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v8 + 32);
      v11 = *(v8 + 32 + 56 * v9 - 48);

      if (v10 > v11)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {

      v10 = 0.0;
      v11 = 0.0;
    }

    if (v10 <= a1 && v11 > a1)
    {
      break;
    }

    v13 = i - 3;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_26;
    }

    if (v13 == v4)
    {

      return 0;
    }
  }

  result = swift_beginAccess();
  v15 = *(v1 + 16);
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = sub_1004BD484();
    goto LABEL_24;
  }

  if (v6 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 8 * i);

LABEL_24:
    result = swift_endAccess();
    if (!__OFADD__(v6, 1))
    {
      v17 = _s4WordCMa();

      Array.subscript.getter(v17, v18);

      return v16;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100473FF8(double a1)
{
  swift_beginAccess();

  v3 = sub_100474994(v2);

  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v5 = v3 & 0xC000000000000001;
    v6 = 4;
    while (1)
    {
      v7 = v6 - 4;
      if (v5)
      {
        v8 = sub_1004BD484();
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }
      }

      v9 = *(v8 + 16);
      v10 = *(v8 + 24);

      if (v9 > v10)
      {
        goto LABEL_23;
      }

      if (v9 <= a1 && v10 > a1)
      {
        break;
      }

      v12 = v6 - 3;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_24;
      }

      ++v6;
      if (v12 == i)
      {
        goto LABEL_16;
      }
    }

    if (v5)
    {
      v14 = sub_1004BD484();
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (!__OFADD__(v7, 1))
      {
LABEL_19:
        v15 = v14;
        v16 = _s8SyllableCMa();
        Array.subscript.getter(v16, &v17);

        return v15;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_16:

  return 0;
}

id sub_100474188(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = *(v3 + 112);
  if (v8)
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 88);
    v11 = *(v3 + 96);
    v12 = *(v3 + 104);
    v13 = v8;
    [v13 setFrame:{v9, v10, v11, v12}];
    v14 = sub_1004723B4();
    if (!v14)
    {
      v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, *(v3 + 96), *(v3 + 104)}];
    }

    v66 = v14;
    [v14 setFrame:{0.0, 0.0, *(v3 + 96), *(v3 + 104)}];
  }

  else
  {
    v15 = *(v3 + 80);
    v16 = *(v3 + 88);
    v17 = *(v3 + 96);
    v18 = *(v3 + 104);
    v19 = *(v3 + 58);
    v20 = *(v4 + 57);
    v21 = _s4LineC8LineViewCMa();
    v22 = v5;
    v23 = objc_allocWithZone(v21);
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer] = 0;
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView] = 0;
    v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind] = a2 & 1;
    memcpy(&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs], v22, 0x2B0uLL);
    v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_animationKind] = v20;
    v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_direction] = v19;
    sub_10046E570(v22, aBlock);
    v71.receiver = v23;
    v71.super_class = v21;
    v24 = objc_msgSendSuper2(&v71, "initWithFrame:", v15, v16, v17, v18);
    v25 = v24;
    if ((v20 & 1) == 0)
    {
      v26 = v24;
      v70 = a1;
      v27 = [a1 CGColor];
      v28 = [objc_allocWithZone(CALayer) init];
      [v28 setBackgroundColor:v27];
      if (qword_100614E78 != -1)
      {
        swift_once();
      }

      v29 = static LyricsOptionsManager.shared;
      if (!os_variant_has_internal_content() || !sub_10043EA2C(9, *(v29 + 40)))
      {
        v30 = [v26 layer];
        [v30 addSublayer:v28];

        v27 = v30;
      }

      v31 = *&v26[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer];
      *&v26[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer] = v28;

      v32 = sub_100474CD4(a2 & 1, a3, v19);
      v33 = *&v26[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
      *&v26[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView] = v32;

      a1 = v70;
    }

    v34 = *(v4 + 96);
    v35 = *(v4 + 104);
    v36 = objc_allocWithZone(UIView);
    v13 = v25;
    v66 = [v36 initWithFrame:{0.0, 0.0, v34, v35}];
    v37 = *(v4 + 112);
    *(v4 + 112) = v13;

    v5 = a3;
  }

  v64 = *(v4 + 57);
  if (v64 == 1)
  {
    v38 = 61;
    if (a2)
    {
      v38 = 62;
    }

    v39 = v5[v38];
    v40 = v39;
    v41 = a1;
  }

  else
  {
    a1 = 0;
    v39 = 0;
  }

  swift_beginAccess();
  v42 = *(v4 + 16);
  if (v42 >> 62)
  {
LABEL_34:
    v43 = sub_1004BD6A4();
    v44 = v66;
    if (v43)
    {
      goto LABEL_21;
    }

LABEL_35:
    v42 = 0;
    if ((v64 & 1) == 0)
    {
LABEL_36:
      if (qword_100614E78 != -1)
      {
        swift_once();
      }

      v54 = static LyricsOptionsManager.shared;
      if (!os_variant_has_internal_content() || !sub_10043EA2C(9, *(v54 + 40)))
      {
        [v13 setMaskView:{v44, v63}];
        goto LABEL_46;
      }
    }

    goto LABEL_40;
  }

  v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = v66;
  if (!v43)
  {
    goto LABEL_35;
  }

LABEL_21:
  if (v43 < 1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v63 = v13;

  v68 = 0;
  v13 = 0;
  v69 = v43;
  do
  {
    if ((v42 & 0xC000000000000001) != 0)
    {
      v48 = sub_1004BD484();
    }

    else
    {
      v48 = *(v42 + 8 * v13 + 32);
    }

    v49 = swift_allocObject();
    v49[2] = v48;
    memcpy(v49 + 3, v5, 0x2B0uLL);
    v49[89] = a1;
    v49[90] = v39;
    v49[91] = v44;
    if (*(v48 + 208))
    {
      sub_10046E570(v5, aBlock);

      v45 = v44;
      sub_1004709A8(a1, v39);
      sub_100478290(v5, a1, v39);
      v47 = v46;
      [v45 addSubview:v46];
    }

    else
    {
      v67 = objc_opt_self();
      v50 = swift_allocObject();
      *(v50 + 16) = sub_100475750;
      *(v50 + 24) = v49;
      sub_10046E570(v5, aBlock);

      v51 = v44;
      v52 = a1;
      sub_1004709A8(a1, v39);

      sub_10003CC4C(v68);
      v5 = swift_allocObject();
      v68 = sub_1000081FC;
      v5[2] = sub_1000081FC;
      v5[3] = v50;
      aBlock[4] = sub_1000E6038;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008224;
      aBlock[3] = &unk_1005D3D50;
      a1 = _Block_copy(aBlock);

      [v67 performWithoutAnimation:a1];

      _Block_release(a1);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        goto LABEL_34;
      }

      a1 = v52;
      v5 = a3;
      v44 = v66;
    }

    v13 = v13 + 1;
  }

  while (v69 != v13);

  v13 = v63;
  v42 = v68;
  if ((v64 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_40:
  [v13 addSubview:{v44, v63}];
  if (qword_100614E78 != -1)
  {
LABEL_49:
    swift_once();
  }

  v55 = static LyricsOptionsManager.shared;
  if ((os_variant_has_internal_content() & 1) != 0 && sub_10043EA2C(9, *(v55 + 40)))
  {
    v56 = objc_opt_self();
    v57 = [v56 grayColor];
    [v13 setBackgroundColor:v57];

    v58 = [v56 blackColor];
    UIView.Border.init(thickness:color:)();
    UIView.border.setter(v60, v59 & 1, v61);
LABEL_46:

    sub_1002AD70C(a1, v39);
    goto LABEL_47;
  }

  sub_1002AD70C(a1, v39);

LABEL_47:
  sub_10003CC4C(v42);
  return v13;
}

id *sub_100474994(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v25 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD484();
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v27 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + 104);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_1004BD6A4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_1004BD6A4();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD494();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD6A4();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_43;
          }

          v31 = v3;
          v16 = v11 + 8 * v12 + 32;
          v26 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_100475A08();
            for (i = 0; i != v14; ++i)
            {
              sub_100003ABC(&qword_100615E98);
              v18 = sub_10024DF2C(v30, i, v6);
              v20 = *v19;

              (v18)(v30, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            _s8SyllableCMa();
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v31;
          if (v8 >= 1)
          {
            v21 = *(v26 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v26 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD6A4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
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
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1004BD6A4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_100474CD4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  [*(a2 + 200) lineHeight];
  v9 = v8 * *(a2 + 256) + *(a2 + 464) + *(a2 + 464);
  [v4 frame];
  v10 = vabdd_f64(v9, CGRectGetHeight(v28)) * 0.5;
  if (a3)
  {
    [v4 frame];
    v11 = v10 * 0.5 + CGRectGetWidth(v29);
  }

  else
  {
    v11 = -v10;
  }

  [v4 frame];
  v12 = v10 + v10 + CGRectGetHeight(v30);
  v13 = 488;
  if (a1)
  {
    v13 = 496;
  }

  v14 = *(a2 + v13);
  v15 = *(a2 + 504);
  v16 = type metadata accessor for LineProgressGradientView();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView] = 0;
  v18 = &v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView();
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = v14;
  *&v17[v19] = [v20 init];
  v22 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  *&v17[v22] = [objc_allocWithZone(UIView) init];
  *&v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = v21;
  *&v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth] = v15;
  v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction] = a3 & 1;
  v27.receiver = v17;
  v27.super_class = v16;
  v23 = v21;
  v24 = objc_msgSendSuper2(&v27, "initWithFrame:", v11, -v10, v10, v12);
  [v24 setClipsToBounds:{1, v27.receiver, v27.super_class}];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView]];
  sub_1004B5B6C();
  sub_1004B5EA0();

  if (qword_100614E78 != -1)
  {
    swift_once();
  }

  v25 = static LyricsOptionsManager.shared;
  if (!os_variant_has_internal_content() || !sub_10043EA2C(9, *(v25 + 40)))
  {
    [v4 addSubview:v24];
  }

  return v24;
}

void sub_100475018()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [*&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 200] lineHeight];
  [v0 frame];
  CGRectGetHeight(v15);
  v1 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer];
  if (v1)
  {
    v2 = v1;
    [v0 frame];
    v3 = -CGRectGetWidth(v16);
    [v0 frame];
    v4 = -CGRectGetHeight(v17);
    [v0 frame];
    v5 = CGRectGetWidth(v18) * 3.0;
    [v0 frame];
    [v2 setFrame:{v3, v4, v5, CGRectGetHeight(v19) * 3.0}];
  }

  v6 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v6)
  {
    v7 = v6;
    [v0 frame];
    v8 = &v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
    v9 = *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
    v10 = *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 8];
    v11 = v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 16];
    *v8 = v12;
    *(v8 + 1) = v13;
    v8[16] = 0;
    sub_1004B5984(v9, v10, v11);
  }
}

void sub_1004751C4()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "tintColorDidChange");
  v1 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v1)
  {
    if (v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind])
    {
      v2 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 496];
    }

    else
    {
      v2 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 488];
    }

    v3 = *v2;
    v4 = *&v1[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color];
    *&v1[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = *v2;
    sub_100009130(0, &unk_1006169D0);
    v5 = v3;
    v6 = v1;
    if ((sub_1004BCFA4() & 1) == 0)
    {
      sub_1004B5EA0();
    }
  }
}

void sub_1004752F8(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v3)
  {
    if (v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind])
    {
      v4 = &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 496];
    }

    else
    {
      v4 = &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 488];
    }

    v5 = *v4;
    v6 = *&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color];
    *&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = *v4;
    sub_100009130(0, &unk_1006169D0);
    v7 = v5;
    v8 = v3;
    if ((sub_1004BCFA4() & 1) == 0)
    {
      sub_1004B5EA0();
    }
  }
}

uint64_t sub_1004754F0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10047559C()
{
  result = qword_100615E30;
  if (!qword_100615E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100615E30);
  }

  return result;
}

unint64_t sub_1004755F4()
{
  result = qword_100615E68;
  if (!qword_100615E68)
  {
    _s4LineCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100615E68);
  }

  return result;
}

uint64_t sub_100475654()
{

  v1 = *(v0 + 712);
  if (v1)
  {
  }

  return swift_deallocObject();
}

void sub_100475750()
{
  v1 = *(v0 + 728);
  sub_100478290(v0 + 24, *(v0 + 712), *(v0 + 720));
  v3 = v2;
  [v1 addSubview:v2];
}

uint64_t sub_1004757BC()
{

  return swift_deallocObject();
}

uint64_t sub_100475804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10047581C()
{

  return swift_deallocObject();
}

uint64_t sub_10047590C()
{

  return swift_deallocObject();
}

uint64_t sub_100475950()
{

  return swift_deallocObject();
}

id sub_100475988()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
  if (result)
  {
    return [result setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  }

  return result;
}

uint64_t sub_1004759B4()
{

  return swift_deallocObject();
}

unint64_t sub_100475A08()
{
  result = qword_100615EA0;
  if (!qword_100615EA0)
  {
    sub_100003B68(&qword_100615E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100615EA0);
  }

  return result;
}

uint64_t sub_100475A6C()
{

  return swift_deallocObject();
}

uint64_t sub_100475B70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_100475BEC(void *result, char a2, uint64_t a3)
{
  v3 = result[23];
  if (v3)
  {
    if (a2)
    {
      v4 = xmmword_1004D9D20;
      v5 = xmmword_1004D9B70;
      v6 = 0uLL;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v7, 0.0, -*(a3 + 624));
      v5 = *&v7.a;
      v4 = *&v7.c;
      v6 = *&v7.tx;
    }

    *&v7.a = v5;
    *&v7.c = v4;
    *&v7.tx = v6;
    return [v3 setTransform:&v7];
  }

  return result;
}

void sub_100475C6C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    v3 = *(a2 + 136);
    *(a2 + 136) = (a3 & 1) == 0;
    v4 = *(a2 + 144);
    *(a2 + 144) = 2;
    sub_100470954(v3, v4);
  }
}

id sub_100475C98(uint64_t a1)
{
  result = *(a1 + 184);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

void sub_100475CE0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v2 = *(a2 + 136);
    *(a2 + 136) = 0;
    v3 = *(a2 + 144);
    *(a2 + 144) = 2;
    sub_100470954(v2, v3);
  }
}

char *sub_100475DB8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 192) - *(v0 + 152);
  MaxX = CGRectGetMaxX(*(v0 + 200));
  Height = CGRectGetHeight(*(v0 + 152));
  v5 = *(v0 + 184);
  if (v5)
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = v5;
    [v10 setFrame:{v6, v7, v8, v9}];
    [*&v10[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView8Syllable21SyllableContainerView_syllableView] setFrame:{v2, v1, MaxX, Height}];
  }

  else
  {
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    v13 = *(v0 + 96);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    objc_allocWithZone(_s8SyllableC12SyllableViewCMa());
    v16 = v12;
    v17 = v0;
    v18 = CTRunRef.PartialRunView.init(run:range:textPosition:)(v16, v13, v11, v14, v15);
    [v18 setFrame:{v2, v1, MaxX, Height}];
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = *(v0 + 168);
    v22 = *(v0 + 176);
    v23 = _s8SyllableC21SyllableContainerViewCMa();
    v24 = objc_allocWithZone(v23);
    *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView8Syllable21SyllableContainerView_syllableView] = v18;
    v28.receiver = v24;
    v28.super_class = v23;
    v25 = v18;
    v10 = objc_msgSendSuper2(&v28, "initWithFrame:", v19, v20, v21, v22);
    [v10 addSubview:{v25, v28.receiver, v28.super_class}];

    v26 = *(v17 + 184);
    *(v17 + 184) = v10;
  }

  return v10;
}

id sub_100476000(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100476038()
{

  sub_100470954(*(v0 + 136), *(v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_100476114(void *a1, char a2, const void *a3)
{
  v6 = *(v3 + 96);
  v7 = &off_1004C4000;
  if (v6)
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v3;
    v10 = swift_allocObject();
    v39 = sub_100476E70;
    *(v10 + 16) = sub_100476E70;
    *(v10 + 24) = v9;
    v49 = sub_1000E639C;
    v50 = v10;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100008224;
    v48 = &unk_1005D4020;
    v11 = _Block_copy(&aBlock);
    v12 = v6;

    [v8 performWithoutAnimation:v11];
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
      return result;
    }

    v14 = v12;
    v7 = &off_1004C4000;
  }

  else
  {
    v15 = [objc_allocWithZone(_s13TextContainerC17TextContainerViewCMa()) initWithFrame:{*(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88)}];
    v16 = *(v3 + 96);
    *(v3 + 96) = v15;
    v14 = v15;

    v39 = 0;
  }

  v17 = *(v3 + 56);
  v44 = *(v17 + 16);
  if (v44)
  {
    v18 = a2 & 1;

    v42 = 0;
    v19 = 0;
    v20 = *(v7 + 493);
    v21 = a3;
    v43 = a2 & 1;
    while (v19 < *(v17 + 16))
    {
      v24 = *(v17 + 8 * v19 + 32);
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = a1;
      *(v25 + 32) = v18;
      memcpy((v25 + 40), v21, 0x2B0uLL);
      *(v25 + 728) = v14;
      if (*(v24 + 112))
      {
        swift_retain_n();
        sub_10046E570(v21, &aBlock);
        v22 = a1;
        v23 = v14;
        v7 = sub_100474188(v22, v18, v21);
        [v23 addSubview:v7];
      }

      else
      {
        v41 = objc_opt_self();
        v26 = swift_allocObject();
        *(v26 + 16) = sub_100476D68;
        *(v26 + 24) = v25;
        swift_retain_n();
        sub_10046E570(v21, &aBlock);
        v27 = a1;
        v28 = v14;
        v29 = v14;

        sub_10003CC4C(v42);
        v7 = swift_allocObject();
        v42 = sub_1000081FC;
        *(v7 + 2) = sub_1000081FC;
        *(v7 + 3) = v26;
        v49 = sub_1000E6038;
        v50 = v7;
        aBlock = _NSConcreteStackBlock;
        v46 = v20;
        v47 = sub_100008224;
        v48 = &unk_1005D3FA8;
        v30 = _Block_copy(&aBlock);
        v14 = v50;

        [v41 performWithoutAnimation:v30];

        _Block_release(v30);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_21;
        }

        v14 = v28;
        v21 = a3;
      }

      ++v19;
      v18 = v43;
      if (v44 == v19)
      {

        v7 = v42;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v7 = 0;
LABEL_15:
    if (qword_100614E78 == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  v32 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content())
  {
    if (sub_10043EA2C(9, *(v32 + 40)))
    {
      v33 = objc_opt_self();
      v34 = [v33 blackColor];
      [v14 setBackgroundColor:v34];

      v35 = [v33 yellowColor];
      UIView.Border.init(thickness:color:)();
      UIView.border.setter(v37, v36 & 1, v38);
    }
  }

  sub_10003CC4C(v39);
  sub_10003CC4C(v7);
  return v14;
}

void sub_1004766B4()
{
  v1 = *(v0 + 56);
  v38 = *(v1 + 16);
  if (v38)
  {
    v39 = v1 + 32;

    v40 = v1;

    v2 = 0;
    while (1)
    {
      if (v2 >= *(v40 + 16))
      {
        goto LABEL_59;
      }

      v41 = v2;
      v3 = *(v39 + 8 * v2);
      swift_beginAccess();
      v4 = v3;
      v5 = *(v3 + 16);
      if (!(v5 >> 62))
      {
        v0 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v0)
        {
          break;
        }

        goto LABEL_46;
      }

      v29 = *(v3 + 16);
      v30 = sub_1004BD6A4();
      v5 = v29;
      v0 = v30;
      v4 = v3;
      if (v0)
      {
        break;
      }

LABEL_46:
      v28 = v4;

LABEL_47:
      v31 = *(v28 + 112);
      v32 = v28;
      if (v31)
      {
        [v31 removeFromSuperview];
        v32 = v28;
        v33 = *(v28 + 112);
      }

      else
      {
        v33 = 0;
      }

      *(v32 + 112) = 0;

      v2 = v41 + 1;
      if (v41 + 1 == v38)
      {

        v0 = v36;
        goto LABEL_52;
      }
    }

    if (v0 >= 1)
    {
      v43 = v5 & 0xC000000000000001;
      v37 = v4;

      v6 = 0;
      v42 = v0;
      while (1)
      {
        if (v43)
        {
          v9 = sub_1004BD484();
        }

        else
        {
        }

        v44 = v9;
        v45 = v6;
        v10 = *(v9 + 104);
        v46 = v10;
        if (!(v10 >> 62))
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            break;
          }

          goto LABEL_39;
        }

        v11 = sub_1004BD6A4();
        if (v11)
        {
          break;
        }

LABEL_39:
        v0 = v44;
        v24 = *(v44 + 208);
        if (v24)
        {
          [v24 removeFromSuperview];
          v25 = *(v44 + 208);
        }

        else
        {
          v25 = 0;
        }

        *(v44 + 208) = 0;

        if (!*(v44 + 208))
        {
          v26 = *(v44 + 128);
          *(v44 + 128) = 0;
          v27 = *(v44 + 136);
          *(v44 + 136) = 2;
          sub_100470954(v26, v27);
        }

        v6 = v45 + 1;
        v7 = *(v44 + 128);
        *(v44 + 128) = 0;
        v8 = *(v44 + 136);
        *(v44 + 136) = 2;
        sub_100470954(v7, v8);

        if (v45 + 1 == v42)
        {

          v28 = v37;
          goto LABEL_47;
        }
      }

      v12 = 0;
      while (1)
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v17 = sub_1004BD484();
          v18 = __OFADD__(v12++, 1);
          if (v18)
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v12 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_59:
            __break(1u);
            break;
          }

          v17 = *(v46 + 32 + 8 * v12);

          v18 = __OFADD__(v12++, 1);
          if (v18)
          {
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }
        }

        v0 = *(v17 + 88);
        if (!(v0 >> 62))
        {
          v19 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
            goto LABEL_26;
          }

          goto LABEL_15;
        }

        v19 = sub_1004BD6A4();
        if (v19)
        {
LABEL_26:
          if (v19 >= 1)
          {
            v20 = 0;
            while (1)
            {
              if ((v0 & 0xC000000000000001) != 0)
              {
                v22 = sub_1004BD484();
                v23 = *(v22 + 96);
                if (!v23)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                v22 = *(v0 + 8 * v20 + 32);

                v23 = *(v22 + 96);
                if (!v23)
                {
LABEL_34:
                  v21 = 0;
                  goto LABEL_29;
                }
              }

              [v23 removeFromSuperview];
              v21 = *(v22 + 96);
LABEL_29:
              ++v20;
              *(v22 + 96) = 0;

              if (v19 == v20)
              {
                goto LABEL_15;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_15:
        v13 = *(v17 + 184);
        if (v13)
        {
          [v13 removeFromSuperview];
          v14 = *(v17 + 184);
        }

        else
        {
          v14 = 0;
        }

        *(v17 + 184) = 0;

        v15 = *(v17 + 136);
        *(v17 + 136) = 0;
        v16 = *(v17 + 144);
        *(v17 + 144) = 2;
        sub_100470954(v15, v16);

        if (v12 == v11)
        {
          goto LABEL_39;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_52:
    v34 = *(v0 + 96);
    if (v34)
    {
      [v34 removeFromSuperview];
      v35 = *(v0 + 96);
    }

    else
    {
LABEL_56:
      v35 = 0;
    }

    *(v0 + 96) = 0;
  }
}

uint64_t sub_100476BC4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100476C78()
{

  return swift_deallocObject();
}

void sub_100476D68()
{
  v1 = *(v0 + 728);
  v2 = sub_100474188(*(v0 + 24), *(v0 + 32), v0 + 40);
  [v1 addSubview:v2];
}

uint64_t sub_100476DD0()
{

  return swift_deallocObject();
}

uint64_t sub_100476E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100476E30()
{

  return swift_deallocObject();
}

void sub_100476E94()
{
  v1 = v0;
  v2 = *(v0 + 208);
  if (v2)
  {
    v3 = [v2 layer];
    [v3 removeAllAnimations];
  }

  if (*(v1 + 232))
  {

    sub_1004BC524();
  }

  *(v1 + 232) = 0;

  v4 = *(v1 + 208);
  if (v4)
  {
    v5 = v4;
    sub_1004792A8();
  }

  v6 = sub_10047879C(*(v1 + 104));
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v9 = 0;
    v28 = v7;
    v29 = v7 & 0xC000000000000001;
    v27 = v7 & 0xFFFFFFFFFFFFFF8;
    v25 = v1;
    v26 = (v7 + 32);
    while (1)
    {
      if (v29)
      {
        v10 = sub_1004BD484();
        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          break;
        }

        goto LABEL_17;
      }

      if (v9 >= *(v27 + 16))
      {
        goto LABEL_33;
      }

      v10 = v26[v9];

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        break;
      }

LABEL_17:
      v12 = *(v10 + 96);
      if (v12)
      {
        v30 = *(v10 + 80);
        v31 = *(v10 + 64);
        v1 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
        swift_beginAccess();
        v7 = *&v12[v1];
        if (v7 >> 62)
        {
          v13 = sub_1004BD6A4();
          if (!v13)
          {
LABEL_28:
            v18 = v12;
            goto LABEL_29;
          }
        }

        else
        {
          v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v13)
          {
            goto LABEL_28;
          }
        }

        if (v13 < 1)
        {
          goto LABEL_32;
        }

        v1 = v7 & 0xC000000000000001;
        v14 = v12;

        for (j = 0; j != v13; ++j)
        {
          if (v1)
          {
            v16 = sub_1004BD484();
          }

          else
          {
            v16 = *(v7 + 8 * j + 32);
          }

          v17 = v16;
          [v16 stopAnimation:0];
        }

LABEL_29:
        sub_1004714C8();
        v19 = CGPoint.center.unsafeMutableAddressor();
        swift_beginAccess();
        UIView.setAnchorPoint(_:preserveFrame:)(1, *v19, v19[1]);
        sub_100009130(0, &qword_100615B60);
        sub_100009130(0, &qword_100616920);
        v20 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
        v21 = swift_allocObject();
        *(v21 + 16) = v12;
        *(v21 + 40) = v30;
        *(v21 + 24) = v31;
        v22 = v12;
        static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v20, 0, sub_10047A640, v21, 0, 0, 0.0);

        [v22 sizeToFit];

        v7 = v28;
        if (v9 == i)
        {
LABEL_30:

          v1 = v25;
          goto LABEL_36;
        }
      }

      else
      {

        if (v9 == i)
        {
          goto LABEL_30;
        }
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

LABEL_36:
  v23 = *(v1 + 128);
  *(v1 + 128) = 0;
  v24 = *(v1 + 136);
  *(v1 + 136) = 2;
  sub_100470954(v23, v24);
}

void sub_100477250()
{
  v1 = *(v0 + 104);
  v23 = v1;
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v8 = sub_1004BD484();
          v9 = __OFADD__(v3++, 1);
          if (v9)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v3 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v8 = *(v23 + 32 + 8 * v3);

          v9 = __OFADD__(v3++, 1);
          if (v9)
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        v10 = *(v8 + 88);
        if (!(v10 >> 62))
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            break;
          }

          goto LABEL_4;
        }

        v11 = sub_1004BD6A4();
        if (v11)
        {
          break;
        }

LABEL_4:
        v4 = *(v8 + 184);
        if (v4)
        {
          [v4 removeFromSuperview];
          v5 = *(v8 + 184);
        }

        else
        {
          v5 = 0;
        }

        *(v8 + 184) = 0;

        v6 = *(v8 + 136);
        *(v8 + 136) = 0;
        v7 = *(v8 + 144);
        *(v8 + 144) = 2;
        sub_100470954(v6, v7);

        if (v3 == v2)
        {
          goto LABEL_31;
        }
      }

      if (v11 >= 1)
      {
        break;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v2 = sub_1004BD6A4();
      if (!v2)
      {
        goto LABEL_31;
      }
    }

    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = sub_1004BD484();
        v15 = *(v14 + 96);
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v14 = *(v10 + 8 * v12 + 32);

        v15 = *(v14 + 96);
        if (!v15)
        {
LABEL_23:
          v13 = 0;
          goto LABEL_18;
        }
      }

      [v15 removeFromSuperview];
      v13 = *(v14 + 96);
LABEL_18:
      ++v12;
      *(v14 + 96) = 0;

      if (v11 == v12)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_31:
  v16 = *(v22 + 208);
  if (v16)
  {
    [v16 removeFromSuperview];
    v17 = *(v22 + 208);
  }

  else
  {
    v17 = 0;
  }

  *(v22 + 208) = 0;

  if (!*(v22 + 208))
  {
    v18 = *(v22 + 128);
    *(v22 + 128) = 0;
    v19 = *(v22 + 136);
    *(v22 + 136) = 2;
    sub_100470954(v18, v19);
  }

  v20 = *(v22 + 128);
  *(v22 + 128) = 0;
  v21 = *(v22 + 136);
  *(v22 + 136) = 2;

  sub_100470954(v20, v21);
}

void sub_1004774B4(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 176);
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;
  *(v4 + 192) = a3;
  *(v4 + 200) = a4;
  *(v4 + 216) = a1 - v5 + *(v4 + 216);
  v6 = *(v4 + 104);
  v17 = v6;
  if (v6 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v8 = 0;
    while ((v17 & 0xC000000000000001) != 0)
    {
      v9 = sub_1004BD484();
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_21;
      }

LABEL_11:
      v11 = *(v4 + 216);
      *(v9 + 192) = v11;
      *(v9 + 152) = CGRectOffset(*(v9 + 200), v11, 0.0);
      v12 = *(v9 + 88);
      if (v12 >> 62)
      {
        v13 = sub_1004BD6A4();
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      if (v13 < 1)
      {
        goto LABEL_22;
      }

      v14 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = sub_1004BD484();
        }

        else
        {
          v15 = *(v12 + 8 * v14 + 32);
        }

        ++v14;
        v16 = *(v9 + 192);
        *(v15 + 104) = v16;
        *(v15 + 64) = CGRectOffset(*(v15 + 112), v16, 0.0);
      }

      while (v13 != v14);
LABEL_4:

      if (v8 == i)
      {
        return;
      }
    }

    if (v8 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v9 = *(v17 + 32 + 8 * v8);

    v10 = __OFADD__(v8++, 1);
    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }
}

unint64_t sub_10047768C()
{
  v1 = *(v0 + 104);
  if (v1 >> 62)
  {
    result = sub_1004BD6A4();
    if (result)
    {
LABEL_3:
      if (__OFSUB__(result--, 1))
      {
        __break(1u);
      }

      else if ((v1 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return result;
        }

        __break(1u);
        return result;
      }

      sub_1004BD484();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  return result;
}

void sub_100477738(uint64_t a1, double a2)
{
  v3 = v2;
  sub_100003ABC(&qword_100616B00);
  __chkstk_darwin();
  *&v7 = &v78 - v6;
  v8 = *(v2 + 6);
  v9 = *(*&v8 + 16);
  if (!v9)
  {
    if (a2 >= 0.0)
    {
      goto LABEL_46;
    }

    goto LABEL_5;
  }

  if (*(*&v8 + 32) > a2)
  {
LABEL_5:
    if (v2[136] < 2u || *(v2 + 16))
    {
      v10 = *(v2 + 26);
      if (v10)
      {
        v11 = [v10 layer];
        [v11 removeAllAnimations];
      }

      if (*(v2 + 29))
      {

        sub_1004BC524();
      }

      *(v2 + 29) = 0;

      v12 = *(v2 + 26);
      if (v12)
      {
        v13 = v12;
        sub_1004792A8();
      }

      v84 = v8;
      v14 = sub_10047879C(*(v2 + 13));
      v15 = v14;
      v85 = 0;
      if (v14 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
      {
        v81 = v7;
        v82 = a1;
        v83 = v3;
        a1 = 0;
        v89.super.isa = (v15 & 0xC000000000000001);
        v87 = v15 & 0xFFFFFFFFFFFFFF8;
        v86 = v15 + 32;
        v7 = COERCE_DOUBLE(&selRef_shuffleCommand);
        v88 = v15;
        while (1)
        {
          if (v89.super.isa)
          {
            v17 = sub_1004BD484();
            v18 = __OFADD__(a1++, 1);
            if (v18)
            {
              break;
            }

            goto LABEL_23;
          }

          if (a1 >= *(v87 + 16))
          {
            goto LABEL_39;
          }

          v17 = *(v86 + 8 * a1);

          v18 = __OFADD__(a1++, 1);
          if (v18)
          {
            break;
          }

LABEL_23:
          v19 = *(v17 + 96);
          if (v19)
          {
            v20 = *(v17 + 64);
            v90 = *(v17 + 80);
            v91 = v20;
            v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
            swift_beginAccess();
            v21 = *&v19[v15];
            if (v21 >> 62)
            {
              v22 = sub_1004BD6A4();
              if (!v22)
              {
LABEL_34:
                v27 = v19;
                goto LABEL_35;
              }
            }

            else
            {
              v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v22)
              {
                goto LABEL_34;
              }
            }

            if (v22 < 1)
            {
              goto LABEL_38;
            }

            v23 = v19;

            for (j = 0; j != v22; ++j)
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v25 = sub_1004BD484();
              }

              else
              {
                v25 = *(v21 + 8 * j + 32);
              }

              v26 = v25;
              [v25 stopAnimation:0];
            }

LABEL_35:
            sub_1004714C8();
            v28 = CGPoint.center.unsafeMutableAddressor();
            swift_beginAccess();
            UIView.setAnchorPoint(_:preserveFrame:)(1, *v28, v28[1]);
            sub_100009130(0, &qword_100615B60);
            sub_100009130(0, &qword_100616920);
            v3 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
            v29 = swift_allocObject();
            *(v29 + 16) = v19;
            *(v29 + 40) = v90;
            *(v29 + 24) = v91;
            v30 = v19;
            static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v3, 0, sub_100479CE8, v29, 0, 0, 0.0);

            [v30 sizeToFit];

            v15 = v88;
            if (a1 == i)
            {
LABEL_36:

              v3 = v83;
              a1 = v82;
              v7 = v81;
              goto LABEL_42;
            }
          }

          else
          {

            if (a1 == i)
            {
              goto LABEL_36;
            }
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }

LABEL_42:
      v31 = *(v3 + 16);
      *(v3 + 16) = 0;
      v32 = v3[136];
      v3[136] = 2;
      sub_100470954(v31, v32);
      v8 = v84;
      v9 = *(*&v84 + 16);
    }

    if (v9)
    {
      goto LABEL_44;
    }

LABEL_46:
    if (a2 < 0.0)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*(*&v8 + 32) > a2)
  {
    return;
  }

LABEL_47:
  if (v3[136] >= 2u && !*(v3 + 16) && (v3[64] & 1) == 0)
  {
    v33 = *(v3 + 7);
    v34 = sub_10047879C(*(v3 + 13));
    v35 = v34;
    v36 = *(*&v8 + 16);
    if (v36)
    {
      v37 = *(*&v8 + 32 + 56 * v36 - 48) - *(*&v8 + 32);
    }

    else
    {
      v37 = 0.0;
    }

    v38 = v34 >> 62;
    if (v34 >> 62)
    {
      goto LABEL_86;
    }

    for (k = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); k >= 1; k = sub_1004BD6A4())
    {
      if (v37 <= 0.0)
      {
        break;
      }

      v40 = *(v3 + 16);
      *(v3 + 16) = 0;
      v41 = v3[136];
      v3[136] = 0;
      sub_100470954(v40, v41);
      v42 = *(v3 + 26);
      if (v42)
      {
        v43 = v42;
        sub_1004794C0(a1, v33, v37);
      }

      v44 = sub_1004BC4B4();
      (*(*(v44 - 8) + 56))(COERCE_DOUBLE(*&v7), 1, 1, v44);
      v45 = swift_allocObject();
      swift_weakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      *(v46 + 24) = 0;
      *(v46 + 32) = v45;
      *(v46 + 40) = v37;
      *(v3 + 29) = sub_100496E74(0, 0, *&v7, &unk_1004EBF40, v46);

      v47 = v37 / k * 0.4;
      if (v47 > 0.4)
      {
        v47 = 0.4;
      }

      *&v87 = v47;
      v33 = *(a1 + 248) + v33 * (*(a1 + 256) - *(a1 + 248));
      if (v37 <= 3.0)
      {
        v48 = v37;
      }

      else
      {
        v48 = 3.0;
      }

      sub_100009130(0, &qword_100616920);
      v88 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, v48);
      v49 = *(v3 + 24);
      v50 = *(v3 + 25);
      sub_1004BCE24();
      v52 = v51;
      v54 = v53;
      if (v38)
      {
        v38 = sub_1004BD6A4();
      }

      else
      {
        v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v38)
      {
LABEL_81:

        break;
      }

      v55 = 0;
      v79 = v37 / vcvtd_n_f64_u64(k, 1uLL);
      *&v91 = v35 & 0xC000000000000001;
      *&v90 = v35 & 0xFFFFFFFFFFFFFF8;
      v84 = v50 - v54;
      v81 = (v49 - v52) * 0.5;
      v80 = &v94;
      v83 = v3;
      v82 = a1;
      v86 = v35;
      v85 = v38;
      while (v91)
      {
        v56 = sub_1004BD484();
        *&v7 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_84;
        }

LABEL_73:
        v57 = *(v56 + 96);
        if (!v57)
        {
          goto LABEL_68;
        }

        v58 = *(v3 + 22);
        v59 = *(v3 + 23);
        v60 = *(v56 + 64) - v58;
        v61 = *(v56 + 72) - v59;
        v62 = *(a1 + 624);
        v63 = v58 + (v60 + v81 + v33 * v60) * 0.5;
        v64 = v59 + (v61 + v84 + v33 * v61) * 0.25 - v62;
        v37 = *&v87 * *&v7;
        sub_100009130(0, &qword_100616AF0);
        v65 = v57;
        v89.super.isa = v88;
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v89).super.isa;
        v67 = swift_allocObject();
        *(v67 + 16) = v65;
        *(v67 + 24) = v63;
        *(v67 + 32) = v64;
        *(v67 + 40) = v33;
        v96 = sub_100479C48;
        v97 = v67;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v94 = sub_1000D6C80;
        v95 = &unk_1005D4140;
        v68 = _Block_copy(&aBlock);
        v69 = v65;

        [(objc_class *)isa addAnimations:v68];
        _Block_release(v68);
        v70 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v96 = sub_100479CA8;
        v97 = v70;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v94 = sub_10013ABCC;
        v95 = &unk_1005D4190;
        v71 = _Block_copy(&aBlock);

        [(objc_class *)isa addCompletion:v71];
        _Block_release(v71);
        [(objc_class *)isa startAnimationAfterDelay:v37];
        v72 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
        swift_beginAccess();
        v73 = isa;
        sub_1004BC274();
        if (*((*(v69 + v72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v69 + v72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1004BC2E4();
        }

        sub_1004BC334();
        swift_endAccess();

        v74 = *(v56 + 96);
        v3 = v83;
        a1 = v82;
        v35 = v86;
        v38 = v85;
        if (v74)
        {
          v75 = v60 + v83[22];
          v76 = v61 - v62 + v83[23];
          v37 = v79 + v37;
          v77 = v74;
          sub_100471A4C(v89.super.isa, v75, v76, v37);
        }

        else
        {
LABEL_68:
        }

        ++v55;
        if (*&v7 == v38)
        {
          goto LABEL_81;
        }
      }

      if (v55 >= *(v90 + 16))
      {
        goto LABEL_85;
      }

      v56 = *(v35 + 8 * v55 + 32);

      *&v7 = v55 + 1;
      if (!__OFADD__(v55, 1))
      {
        goto LABEL_73;
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      ;
    }
  }
}

void sub_100478290(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v55.origin.x = *(v4 + 176);
  v8 = *(v4 + 184);
  v9 = -v55.origin.x;
  v55.size.width = *(v4 + 192);
  v55.size.height = *(v4 + 200);
  v55.origin.y = v8;
  MaxX = CGRectGetMaxX(v55);
  Height = CGRectGetHeight(*(v4 + 176));
  v12 = *(v4 + 208);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_wordView];
    v14 = v12;
    v15 = v13;
    [v15 setFrame:{v9, v8, MaxX, Height}];
    [v14 setFrame:{*(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200)}];
  }

  else
  {
    v16 = [objc_allocWithZone(_s4WordC8WordViewCMa()) initWithFrame:{v9, v8, MaxX, Height}];
    v17 = *(a1 + 456);
    UIView.Shadow.init(color:opacity:radius:offset:)(v17, v54, 0.0, *(a1 + 464), 0.0, 0.0);
    v15 = v16;
    v18 = v17;
    v19 = [v15 layer];
    v20 = [v15 traitCollection];
    [v20 displayScale];
    v22 = v21;

    [v19 setRasterizationScale:v22];
    v23 = [v15 layer];
    [v23 setShouldRasterize:1];

    v24 = v54[0];
    UIView.shadow.setter(v54);

    v25 = *(v4 + 176);
    v26 = *(v4 + 184);
    v27 = *(v4 + 192);
    v28 = *(v4 + 200);
    v29 = objc_allocWithZone(_s4WordC17WordContainerViewCMa());
    sub_1004709A8(a2, a3);
    v30 = sub_10047902C(v15, a2, a3, v25, v26, v27, v28);
    sub_100479A1C(v54);
    v31 = *(v4 + 208);
    *(v4 + 208) = v30;
    v14 = v30;

    if (!*(v4 + 208))
    {
      v32 = *(v4 + 128);
      *(v4 + 128) = 0;
      v33 = *(v4 + 136);
      *(v4 + 136) = 2;
      sub_100470954(v32, v33);
    }
  }

  if (qword_100614E78 != -1)
  {
    swift_once();
  }

  v34 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && sub_10043EA2C(9, *(v34 + 40)))
  {
    v35 = objc_opt_self();
    v36 = [v35 blueColor];
    v37 = [v36 colorWithAlphaComponent:0.7];

    [v14 setBackgroundColor:v37];
    v38 = [v35 blackColor];
    UIView.Border.init(thickness:color:)();
    UIView.border.setter(v40, v39 & 1, v41);
  }

  v42 = *(v4 + 104);
  if (*(v4 + 64) == 1)
  {
    if (v42 >> 62)
    {
      v43 = sub_1004BD6A4();
      if (v43)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
LABEL_13:
        if (v43 >= 1)
        {
          v44 = 0;
          do
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              sub_1004BD484();
            }

            else
            {
            }

            ++v44;
            v45 = sub_100475DB8();
            [v15 addSubview:v45];
          }

          while (v43 != v44);
          goto LABEL_28;
        }

        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }
    }

LABEL_28:

    goto LABEL_31;
  }

  v46 = sub_10047879C(*(v4 + 104));
  v47 = v46;
  if (v46 >> 62)
  {
    v48 = sub_1004BD6A4();
    if (!v48)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v48)
    {
      goto LABEL_30;
    }
  }

  if (v48 < 1)
  {
    goto LABEL_35;
  }

  v49 = 0;
  do
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      sub_1004BD484();
    }

    else
    {
    }

    ++v49;
    v50 = sub_100471098();
    [v15 addSubview:v50];
  }

  while (v48 != v49);
LABEL_30:

LABEL_31:
  v51 = *(v4 + 208);
  *(v4 + 208) = v14;
  v14;

  if (!*(v4 + 208))
  {
    v52 = *(v4 + 128);
    *(v4 + 128) = 0;
    v53 = *(v4 + 136);
    *(v4 + 136) = 2;
    sub_100470954(v52, v53);
  }
}

id *sub_10047879C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v25 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD484();
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v27 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + 88);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_1004BD6A4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_1004BD6A4();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD494();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD6A4();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_43;
          }

          v31 = v3;
          v16 = v11 + 8 * v12 + 32;
          v26 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_100479A70();
            for (i = 0; i != v14; ++i)
            {
              sub_100003ABC(&qword_100616350);
              v18 = sub_10024DF2C(v30, i, v6);
              v20 = *v19;

              (v18)(v30, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            _s5GlyphCMa();
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v31;
          if (v8 >= 1)
          {
            v21 = *(v26 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v26 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD6A4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
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
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1004BD6A4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100478ADC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a1;
  *(v5 + 88) = a5;
  return _swift_task_switch(sub_100478B00, 0, 0);
}

uint64_t sub_100478B00()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 208);
    v0[13] = v2;
    if (v2)
    {
      v3 = v2;

      sub_1004BC474();
      v0[14] = sub_1004BC464();
      v5 = sub_1004BC3E4();
      v0[15] = v5;
      v0[16] = v4;

      return _swift_task_switch(sub_100478CC4, v5, v4);
    }
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *(v6 + 128);
  v8 = *(v6 + 136);
  sub_100470B28(v7, v8);

  if (v8 < 2)
  {
    sub_100470954(v7, v8);
    goto LABEL_11;
  }

  if (v7)
  {
LABEL_11:
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = *(v9 + 128);
      *(v9 + 128) = 1;
      v11 = *(v9 + 136);
      *(v9 + 136) = 2;
      sub_100470954(v10, v11);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100478CC4()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_100478D78;
  v2 = *(v0 + 96);

  return sub_100479CEC(v2);
}

uint64_t sub_100478D78()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_100478E98, v3, v2);
}

uint64_t sub_100478E98()
{
  v1 = *(v0 + 104);

  return _swift_task_switch(sub_100478F04, 0, 0);
}

uint64_t sub_100478F04()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 128);
    v3 = *(Strong + 136);
    sub_100470B28(v2, v3);

    if (v3 >= 2)
    {
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_100470954(v2, v3);
    }
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + 128);
    *(v4 + 128) = 1;
    v6 = *(v4 + 136);
    *(v4 + 136) = 2;
    sub_100470954(v5, v6);
  }

LABEL_7:
  v7 = *(v0 + 8);

  return v7();
}

char *sub_10047902C(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView;
  *&v7[v15] = [objc_allocWithZone(UIView) init];
  *&v7[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_wordView] = a1;
  v16 = &v7[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = a1;
  sub_1004709A8(a2, a3);
  v24.receiver = v7;
  v24.super_class = _s4WordC17WordContainerViewCMa();
  v18 = objc_msgSendSuper2(&v24, "initWithFrame:", a4, a5, a6, a7);
  if (qword_100614E78 != -1)
  {
    swift_once();
  }

  v19 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && sub_10043EA2C(9, *(v19 + 40)) || !a2)
  {
    [v18 addSubview:v17];
    sub_1002AD70C(a2, a3);
  }

  else
  {
    [v18 setMaskView:v17];
    v20 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView;
    v21 = *&v18[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
    [v18 bounds];
    [v21 setFrame:?];

    [*&v18[v20] setBackgroundColor:a2];
    v22 = *&v18[v20];
    [v18 addSubview:v22];
  }

  return v18;
}

void sub_1004792A8()
{
  v1 = v0;
  sub_100009130(0, &qword_100616920);
  v2 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
  v3 = sub_1004BBE24();
  v4 = [objc_opt_self() animationWithKeyPath:v3];

  v5 = v4;
  [v2 settlingDuration];
  [v5 setDuration:?];

  v6 = v2;
  CASpringAnimation.springParameters.setter(v6);
  v7 = v5;
  v8 = [v1 layer];
  [v8 shadowOpacity];

  isa = sub_1004BC5F4().super.super.isa;
  [v7 setFromValue:isa];

  v10 = sub_1004BC6E4().super.super.isa;
  [v7 setToValue:v10];

  v11 = [v1 layer];
  v12 = [v7 keyPath];
  [v11 addAnimation:v7 forKey:v12];

  v13 = [v1 layer];
  [v13 setShadowOpacity:0.0];
}

void sub_1004794C0(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = *(a1 + 472) + (*(a1 + 480) - *(a1 + 472)) * a2;
  if (a3 <= 3.0)
  {
    v6 = a3;
  }

  else
  {
    v6 = 3.0;
  }

  sub_100009130(0, &qword_100616920);
  v7 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, v6);
  v8 = sub_1004BBE24();
  v9 = [objc_opt_self() animationWithKeyPath:v8];

  v10 = v9;
  [v7 settlingDuration];
  [v10 setDuration:?];

  v11 = v7;
  CASpringAnimation.springParameters.setter(v11);
  v12 = v10;
  v13 = [v4 layer];
  [v13 shadowOpacity];

  isa = sub_1004BC5F4().super.super.isa;
  [v12 setFromValue:isa];

  v15 = sub_1004BC5F4().super.super.isa;
  [v12 setToValue:v15];

  v16 = [v4 layer];
  v17 = [v12 keyPath];
  [v16 addAnimation:v12 forKey:v17];

  v19 = [v4 layer];
  *&v18 = v5;
  [v19 setShadowOpacity:v18];
}

id sub_100479728()
{
  v2.receiver = v0;
  v2.super_class = _s4WordC17WordContainerViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004798A4()
{

  sub_100470954(*(v0 + 128), *(v0 + 136));

  return v0;
}

uint64_t sub_100479908()
{
  sub_1004798A4();

  return swift_deallocClassInstance();
}

unint64_t sub_1004799BC()
{
  result = qword_1006162F0;
  if (!qword_1006162F0)
  {
    _s4WordCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006162F0);
  }

  return result;
}

unint64_t sub_100479A70()
{
  result = qword_100616358;
  if (!qword_100616358)
  {
    sub_100003B68(&qword_100616350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616358);
  }

  return result;
}

uint64_t sub_100479AD4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100479B0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100479B4C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000136EC;

  return sub_100478ADC(v7, a1, v4, v5, v6);
}

uint64_t sub_100479C10()
{

  return swift_deallocObject();
}

uint64_t sub_100479C58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100479C70()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100479CB0()
{

  return swift_deallocObject();
}

uint64_t sub_100479CEC(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  sub_1004BC474();
  *(v2 + 32) = sub_1004BC464();
  v4 = sub_1004BC3E4();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_100479D88, v4, v3);
}

uint64_t sub_100479D88()
{
  if (v0[2] <= 0.0)
  {
    v4 = *(v0 + 3);
    v5 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
    *(v0 + 9) = v5;
    v6 = sub_1004BBE24();
    v7 = [objc_opt_self() animationWithKeyPath:v6];
    *(v0 + 10) = v7;

    v8 = v7;
    [v5 settlingDuration];
    [v8 setDuration:?];

    CASpringAnimation.springParameters.setter(v5);
    v9 = v8;
    v10 = [v4 layer];
    [v10 shadowOpacity];

    isa = sub_1004BC5F4().super.super.isa;
    [v9 setFromValue:isa];

    v12 = sub_1004BC6E4().super.super.isa;
    [v9 setToValue:v12];

    *(v0 + 11) = [v4 layer];
    v13 = [v9 keyPath];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1004BBE64();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    *(v0 + 12) = v17;
    v18 = swift_task_alloc();
    *(v0 + 13) = v18;
    *v18 = v0;
    v18[1] = sub_10047A3F4;

    return CALayer.addAsyncAnimation(_:forKey:)(v9, v15, v17);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 7) = v1;
    *v1 = v0;
    v1[1] = sub_10047A060;
    v2 = v0[2];

    return static Task<>.sleep(for:)(v2);
  }
}

uint64_t sub_10047A060()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_10047A5BC;
  }

  else
  {
    v5 = sub_10047A19C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10047A19C()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
  v0[9] = v2;
  v3 = sub_1004BBE24();
  v4 = [objc_opt_self() animationWithKeyPath:v3];
  v0[10] = v4;

  v5 = v4;
  [v2 settlingDuration];
  [v5 setDuration:?];

  CASpringAnimation.springParameters.setter(v2);
  v6 = v5;
  v7 = [v1 layer];
  [v7 shadowOpacity];

  isa = sub_1004BC5F4().super.super.isa;
  [v6 setFromValue:isa];

  v9 = sub_1004BC6E4().super.super.isa;
  [v6 setToValue:v9];

  v0[11] = [v1 layer];
  v10 = [v6 keyPath];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1004BBE64();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[12] = v14;
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_10047A3F4;

  return CALayer.addAsyncAnimation(_:forKey:)(v6, v12, v14);
}

uint64_t sub_10047A3F4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_10047A550, v4, v3);
}

uint64_t sub_10047A550()
{
  v1 = v0[9];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10047A5BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10047A648()
{
  __chkstk_darwin();
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (v2)
  {
    v3 = OBJC_IVAR___MusicSBS_TextContentView_specs;
    memcpy(__dst, (v1 + OBJC_IVAR___MusicSBS_TextContentView_specs), sizeof(__dst));
    memcpy(v13, &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v13));
    memcpy(v11, &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v11));
    memmove(&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], (v1 + OBJC_IVAR___MusicSBS_TextContentView_specs), 0x2B0uLL);
    sub_10046E570(__dst, v12);
    sub_10046E570(__dst, v12);
    v4 = v2;
    sub_10046E570(v13, v12);
    sub_10046E5CC(v11);
    sub_1004551D8(v13);
    sub_10046E5CC(v13);
    sub_10046E5CC(__dst);

    v5 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
    if (v5)
    {
      memcpy(v8, (v1 + v3), sizeof(v8));
      memcpy(v12, &v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v12));
      memcpy(v9, &v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v9));
      memmove(&v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], (v1 + v3), 0x2B0uLL);
      sub_10046E570(v8, &v7);
      sub_10046E570(v8, &v7);
      v6 = v5;
      sub_10046E570(v12, &v7);
      sub_10046E5CC(v9);
      sub_1004551D8(v12);
      sub_10046E5CC(v12);
      sub_10046E5CC(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10047A808(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling);
  v3 = result & 1;
  *(v1 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling) = result;
  if (v2 != (result & 1))
  {
    v4 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (v4)
    {
      *(v4 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = v3;
      v5 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (v5)
      {
        *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = v3;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10047A864(uint64_t result, char a2)
{
  v3 = result & 1;
  if (*(v2 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) != (result & 1))
  {
    v4 = v2;
    *(v2 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) = v3;
    v5 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (v5)
    {
      v7 = result;
      v8 = v5;
      sub_100455284(v7 & 1, a2 & 1);

      v9 = *(v4 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (v9)
      {
        v10 = v9;
        sub_100455284(v7 & 1, a2 & 1);
      }

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v3;
      if (a2)
      {
        if (v7)
        {
          v13 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:30.0 damping:9.0 initialVelocity:{0.0, 0.0}];
        }

        else
        {
          sub_100009130(0, &qword_100616920);
          v13 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 0.2);
        }

        v15.super.isa = v13;
        sub_100009130(0, &qword_100616AF0);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v15).super.isa;
        v18[4] = sub_10047CF74;
        v18[5] = v12;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 1107296256;
        v18[2] = sub_1000D6C80;
        v18[3] = &unk_1005D42C0;
        v17 = _Block_copy(v18);

        [(objc_class *)isa addAnimations:v17];
        _Block_release(v17);
        [(objc_class *)isa startAnimation];
      }

      else
      {

        sub_10047AAE0(v14, v7 & 1);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10047AAE0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
    v6 = *(Strong + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
    if (v6)
    {
      if (a2)
      {
        v7 = xmmword_1004D9D20;
        v8 = xmmword_1004D9B70;
        v9 = 0uLL;
      }

      else
      {
        v8 = *&v4[OBJC_IVAR___MusicSBS_TextContentView_specs + 128];
        v7 = *&v4[OBJC_IVAR___MusicSBS_TextContentView_specs + 144];
        v9 = *&v4[OBJC_IVAR___MusicSBS_TextContentView_specs + 160];
      }

      v13[0] = v8;
      v13[1] = v7;
      v13[2] = v9;
      [v6 setTransform:v13];
      v10 = *&v4[v5];
      if (v10)
      {
        if (a2)
        {
          v11 = 1.0;
        }

        else
        {
          v11 = 0.0;
        }

        v12 = v10;
        [v12 setAlpha:v11];
      }
    }
  }
}

void sub_10047ABD0(char a1, double a2)
{
  if (*(v2 + OBJC_IVAR___MusicSBS_TextContentView_progress) != a2)
  {
    *(v2 + OBJC_IVAR___MusicSBS_TextContentView_progress) = a2;
    v3 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (v3)
    {
      v4 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
      v5 = v4 <= a2;
      if (v4 != a2)
      {
        v6 = v4 - a2;
        if (v5 || v6 >= 0.5)
        {
          *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = a2;
          v8 = a2;
          v9 = a1;
          v10 = v3;
          sub_100455F48(v9 & 1, v8);

          a1 = v9;
          a2 = v8;
        }
      }

      v11 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (v11)
      {
        v12 = *&v11[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
        v13 = v12 <= a2;
        if (v12 != a2)
        {
          v14 = v12 - a2;
          if (v13 || v14 >= 0.5)
          {
            *&v11[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = a2;
            v16 = a2;
            v17 = a1;
            v18 = v11;
            sub_100455F48(v17 & 1, v16);
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_10047AD50()
{
  v1 = *(v0 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
    if (!v2)
    {
      return 0;
    }

    v3 = *(v2 + 96);
    if (v3)
    {
      v4 = v3;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10047AE08(char **a1@<X8>)
{
  sub_100003ABC(&qword_100616C00);
  __chkstk_darwin();
  v155 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v157 = &v149 - v4;
  __chkstk_darwin();
  v156 = &v149 - v5;
  __chkstk_darwin();
  v154 = &v149 - v6;
  __chkstk_darwin();
  v181 = (&v149 - v7);
  __chkstk_darwin();
  v175 = &v149 - v8;
  __chkstk_darwin();
  v174 = &v149 - v9;
  __chkstk_darwin();
  v11 = &v149 - v10;
  __chkstk_darwin();
  v13 = &v149 - v12;
  sub_100003ABC(&qword_100615038);
  __chkstk_darwin();
  v178 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v177 = &v149 - v15;
  __chkstk_darwin();
  v176 = &v149 - v16;
  __chkstk_darwin();
  v187 = &v149 - v17;
  __chkstk_darwin();
  v186 = &v149 - v18;
  __chkstk_darwin();
  v194 = &v149 - v19;
  __chkstk_darwin();
  v190 = &v149 - v20;
  __chkstk_darwin();
  v22 = &v149 - v21;
  v23 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_textView];
  if (!v23)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v24 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8);
  v184 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text);
  v193 = v24;
  v197 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
  v25 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  swift_beginAccess();
  sub_10000F778(v23 + v25, v22, &qword_100615038);
  v191 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_alignment];
  LODWORD(v185) = v1[OBJC_IVAR___MusicSBS_TextContentView_direction];
  v198 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_capabilities];
  v26 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  v189 = v22;
  if (v26)
  {
    v27 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8);
    v152 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text);
    v28 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
    v195 = v27;

    v188 = v28;
  }

  else
  {
    v152 = 0;
    v195 = 0;
    v188 = _swiftEmptyArrayStorage;
  }

  v183 = v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection];
  v171 = v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition];
  memcpy(v205, &v1[OBJC_IVAR___MusicSBS_TextContentView_specs], 0x2B0uLL);
  v29 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  swift_beginAccess();
  v173 = v1;
  sub_10000F778(&v1[v29], v13, &qword_100616C00);
  v30 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
  v168 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);
  v192 = v30;
  v196 = v13;
  v161 = a1;
  if (v26)
  {
    v31 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
    v153 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);
    v180 = v31;
  }

  else
  {
    v153 = 0;
    v180 = 0;
  }

  v32 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  swift_beginAccess();
  v33 = v190;
  sub_10000F778(v23 + v32, v190, &qword_100615038);
  v172 = _s19SBS_TextContentViewCMa();
  v34 = objc_allocWithZone(v172);
  v34[OBJC_IVAR___MusicSBS_TextContentView_isScrolling] = 1;
  v35 = &v34[OBJC_IVAR___MusicSBS_TextContentView_text];
  *v35 = 0;
  v35[1] = 0;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_attributedText] = 0;
  v34[OBJC_IVAR___MusicSBS_TextContentView_isSelected] = 0;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_progress] = 0;
  v170 = OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection;
  v34[OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection] = 2;
  v36 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  v37 = type metadata accessor for Lyrics.TextLine(0);
  v38 = *(v37 - 8);
  (*(v38 + 56))(&v34[v36], 1, 1, v37);
  v169 = OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition;
  v34[OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition] = 2;
  v167 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_textView] = 0;
  v179 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView] = 0;
  v39 = v193;
  *v35 = v184;
  v35[1] = v39;
  memcpy(&v34[OBJC_IVAR___MusicSBS_TextContentView_specs], v205, 0x2B0uLL);
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_alignment] = v191;
  v34[OBJC_IVAR___MusicSBS_TextContentView_direction] = v185;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_capabilities] = v198;
  swift_beginAccess();

  sub_10046E570(v205, &v202);

  sub_10046E570(v205, &v202);

  v182 = v34;
  v40 = &v34[v36];
  v41 = v37;
  v42 = v196;
  sub_10003F42C(v196, v40, &qword_100616C00);
  swift_endAccess();
  sub_10000F778(v189, v194, &qword_100615038);
  sub_10000F778(v33, v186, &qword_100615038);
  sub_10000F778(v42, v11, &qword_100616C00);
  v45 = *(v38 + 48);
  v44 = v38 + 48;
  v43 = v45;
  if (v45(v11, 1, v41) == 1)
  {
    sub_100007214(v11, &qword_100616C00);
    v46 = sub_1004B6E44();
    (*(*(v46 - 8) + 56))(v187, 1, 1, v46);
  }

  else
  {
    sub_10000F778(&v11[v41[7]], v187, &qword_100615038);
    sub_10047CFF0(v11);
  }

  v47 = v181;
  v48 = v174;
  sub_10000F778(v42, v174, &qword_100616C00);
  v49 = v43(v48, 1, v41);
  v50 = v175;
  if (v49 == 1)
  {
    sub_100007214(v48, &qword_100616C00);
    v51 = 2;
  }

  else
  {
    v52 = (*(v48 + v41[15]))();
    sub_10047CFF0(v48);
    v51 = v52 & 1;
  }

  LODWORD(v174) = v51;
  sub_10000F778(v42, v50, &qword_100616C00);
  if (v43(v50, 1, v41) == 1)
  {
    sub_100007214(v50, &qword_100616C00);
    v165 = 0;
    v166 = 0;
  }

  else
  {
    v53 = (*(v50 + v41[16]))();
    v165 = v54;
    v166 = v53;
    sub_10047CFF0(v50);
  }

  sub_10000F778(v42, v47, &qword_100616C00);
  v55 = v43(v47, 1, v41);
  v150 = v44;
  v151 = v41;
  v149 = v43;
  if (v55 == 1)
  {
    sub_100007214(v47, &qword_100616C00);
    v175 = 0;
  }

  else
  {
    v175 = (*(v47 + v41[17]))();
    sub_10047CFF0(v47);
  }

  v181 = _s14descr1005A2689C8TextViewCMa();
  v56 = objc_allocWithZone(v181);
  v57 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  *v57 = 0;
  v57[1] = 0;
  v164 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
  v163 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
  v58 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  *v58 = 0;
  v58[1] = 0;
  v59 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v60 = sub_1004B6E44();
  v61 = *(v60 - 8);
  v62 = *(v61 + 56);
  v63 = v61 + 56;
  v62(&v56[v59], 1, 1, v60);
  v64 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  v62(&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v60);
  v65 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
  v159 = v62;
  v160 = v60;
  v158 = v63;
  v62(&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v60);
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
  v162 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
  v66 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  *v66 = 2;
  *(v66 + 8) = 0u;
  *(v66 + 24) = 0u;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
  v67 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  v67[4] = 0u;
  v67[5] = 0u;
  v67[2] = 0u;
  v67[3] = 0u;
  *v67 = 0u;
  v67[1] = 0u;
  v68 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  v69 = v193;

  sub_10046E570(v205, &v202);

  v70 = v192;

  *&v56[v68] = sub_100447BF4(_swiftEmptyArrayStorage);
  v71 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
  v72 = v184;
  *v71 = v184;
  v71[1] = v69;
  v73 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  *v73 = v72;
  v73[1] = v69;
  swift_beginAccess();

  sub_10003F42C(v194, &v56[v59], &qword_100615038);
  swift_endAccess();
  swift_beginAccess();
  v74 = v186;
  sub_10003F42C(v186, &v56[v64], &qword_100615038);
  swift_endAccess();
  swift_beginAccess();
  v75 = v187;
  sub_10003F42C(v187, &v56[v65], &qword_100615038);
  swift_endAccess();
  v56[v163] = v174;
  v76 = v165;
  *v57 = v166;
  v57[1] = v76;

  *&v56[v164] = v175;

  *v58 = v168;
  v58[1] = v70;

  memcpy(&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v205, 0x2B0uLL);
  *&v56[v162] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v197;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v191;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v185;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v198;
  v77 = v181;
  v201.receiver = v56;
  v201.super_class = v181;
  v78 = objc_msgSendSuper2(&v201, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100007214(v75, &qword_100615038);
  sub_100007214(v74, &qword_100615038);
  sub_100007214(v194, &qword_100615038);
  v79 = v182;
  v80 = *&v182[v167];
  *&v182[v167] = v78;

  v81 = v195;
  if (v195)
  {
    sub_10000F778(v189, v176, &qword_100615038);
    sub_10000F778(v190, v177, &qword_100615038);
    v82 = v196;
    v83 = v154;
    sub_10000F778(v196, v154, &qword_100616C00);
    v84 = v151;
    v85 = v149;
    v86 = v149(v83, 1, v151);
    v195 = v81;
    if (v86 == 1)
    {

      sub_100007214(v83, &qword_100616C00);
      v159(v178, 1, 1, v160);
    }

    else
    {
      sub_10000F778(v83 + v84[7], v178, &qword_100615038);

      sub_10047CFF0(v83);
    }

    v88 = v156;
    v87 = v157;
    sub_10000F778(v82, v156, &qword_100616C00);
    if (v85(v88, 1, v84) == 1)
    {
      sub_100007214(v88, &qword_100616C00);
      v89 = 2;
    }

    else
    {
      v90 = (*(v88 + v84[15]))();
      sub_10047CFF0(v88);
      v89 = v90 & 1;
    }

    LODWORD(v194) = v89;
    sub_10000F778(v82, v87, &qword_100616C00);
    if (v85(v87, 1, v84) == 1)
    {
      sub_100007214(v87, &qword_100616C00);
      v186 = 0;
      v187 = 0;
    }

    else
    {
      (*(v87 + v84[18]))(v206);
      v187 = v207;
      if (v207)
      {
        v186 = v206[2];

        sub_100007214(v206, &qword_100615030);
      }

      else
      {
        v186 = 0;
      }

      sub_10047CFF0(v87);
    }

    v91 = v82;
    v92 = v155;
    sub_10000F778(v91, v155, &qword_100616C00);
    if (v85(v92, 1, v84) == 1)
    {
      sub_100007214(v92, &qword_100616C00);
    }

    else
    {
      (*(v92 + v84[18]))(v208);
      sub_10047CFF0(v92);
      if (v208[3])
      {
        v185 = v208[7];

        sub_100007214(v208, &qword_100615030);
LABEL_38:
        v93 = objc_allocWithZone(v77);
        v94 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText;
        *v94 = 0;
        v94[1] = 0;
        v184 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords) = 0;
        v175 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection) = 2;
        v95 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText;
        *v95 = 0;
        v95[1] = 0;
        v96 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
        v98 = v159;
        v97 = v160;
        v159(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language, 1, 1, v160);
        v99 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        v98(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage, 1, 1, v97);
        v100 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        v98(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage, 1, 1, v97);
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = 1;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = 0;
        v174 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = 0;
        v101 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
        *v101 = 2;
        *(v101 + 8) = 0u;
        *(v101 + 24) = 0u;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer) = 0;
        v102 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata;
        v102[4] = 0u;
        v102[5] = 0u;
        v102[2] = 0u;
        v102[3] = 0u;
        *v102 = 0u;
        v102[1] = 0u;
        v103 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
        sub_10046E570(v205, &v202);
        v104 = v180;

        *(v93 + v103) = sub_100447BF4(_swiftEmptyArrayStorage);
        v105 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text;
        v106 = v152;
        v107 = v195;
        *v105 = v152;
        v105[1] = v107;
        v108 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText;
        *v108 = v106;
        v108[1] = v107;
        swift_beginAccess();

        v109 = v93 + v96;
        v110 = v176;
        sub_10003F42C(v176, v109, &qword_100615038);
        swift_endAccess();
        swift_beginAccess();
        v111 = v93 + v99;
        v112 = v177;
        sub_10003F42C(v177, v111, &qword_100615038);
        swift_endAccess();
        swift_beginAccess();
        v113 = v93 + v100;
        v114 = v178;
        sub_10003F42C(v178, v113, &qword_100615038);
        swift_endAccess();
        v175[v93] = v194;
        v115 = v187;
        *v94 = v186;
        v94[1] = v115;

        *(v93 + v184) = v185;

        *v95 = v153;
        v95[1] = v104;

        memcpy(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs, v205, 0x2B0uLL);
        *(v93 + v174) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words) = v188;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind) = 1;
        v116 = v191;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) = v191;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) = v183 & 1;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities) = v198;
        v199.receiver = v93;
        v199.super_class = v181;
        v117 = objc_msgSendSuper2(&v199, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        sub_100007214(v114, &qword_100615038);
        sub_100007214(v112, &qword_100615038);
        sub_100007214(v110, &qword_100615038);
        v79 = v182;
        v118 = v179;
        v119 = *&v182[v179];
        *&v182[v179] = v117;

        v120 = *&v79[v118];
        if (v120)
        {
          v121 = sub_10047CE90(v116);
          v123 = v122;
          v124 = v120;
          UIView.setAnchorPoint(_:preserveFrame:)(1, v121, v123);

          v125 = *&v79[v179];
          if (v125)
          {
            [v125 setAlpha:0.0];
            v126 = *&v79[v179];
            if (v126)
            {
              v202 = v205[8];
              v203 = v205[9];
              v204 = v205[10];
              [v126 setTransform:&v202];
            }
          }
        }

        goto LABEL_42;
      }
    }

    v185 = 0;
    goto LABEL_38;
  }

LABEL_42:
  v127 = v169;
  v79[v170] = v183;
  v79[v127] = v171;
  v128 = v172;
  v200.receiver = v79;
  v200.super_class = v172;
  v129 = objc_msgSendSuper2(&v200, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v149, v150, v151);
  v130 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  v131 = *&v129[OBJC_IVAR___MusicSBS_TextContentView_textView];
  v132 = v173;
  v133 = v196;
  if (!v131)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v134 = v129;
  v135 = v129;
  [v135 addSubview:v131];
  v136 = *&v135[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  if (!v136)
  {

    sub_10046E5CC(v205);

    goto LABEL_48;
  }

  v137 = *&v134[v130];
  if (!v137)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v138 = v136;
  [v137 frame];
  v139 = *&v134[v130];
  if (v139)
  {
    v140 = v139;

    [v140 frame];

    [v138 frame];
    [v138 setFrame:?];

    [v135 addSubview:v138];
    sub_10046E5CC(v205);
    v133 = v196;
LABEL_48:
    v141 = v189;
    sub_100007214(v190, &qword_100615038);
    sub_100007214(v133, &qword_100616C00);
    sub_100007214(v141, &qword_100615038);
    v142 = objc_opt_self();
    v143 = swift_allocObject();
    *(v143 + 16) = v135;
    *(v143 + 24) = v132;
    v144 = swift_allocObject();
    *(v144 + 16) = sub_10047CFD8;
    *(v144 + 24) = v143;
    *&v204 = sub_1000E6038;
    *(&v204 + 1) = v144;
    *&v202 = _NSConcreteStackBlock;
    *(&v202 + 1) = 1107296256;
    *&v203 = sub_100008224;
    *(&v203 + 1) = &unk_1005D4338;
    v145 = _Block_copy(&v202);
    v146 = v135;
    v147 = v132;

    [v142 performWithoutAnimation:v145];
    _Block_release(v145);
    LOBYTE(v145) = swift_isEscapingClosureAtFileLocation();

    if ((v145 & 1) == 0)
    {
      v148 = v161;
      v161[3] = v128;

      *v148 = v146;
      return;
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_54:
  __break(1u);
}

void sub_10047C5E8(void *a1, unsigned __int8 *a2)
{
  [a2 bounds];
  [a1 setFrame:?];
  [a1 layoutIfNeeded];
  sub_10047A864(a2[OBJC_IVAR___MusicSBS_TextContentView_isSelected], 0);
  sub_10047ABD0(0, *&a2[OBJC_IVAR___MusicSBS_TextContentView_progress]);
}

id sub_10047C6C4(char a1, double a2, double a3)
{
  result = *(v3 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (result)
  {
    result = [result sizeThatFits:?];
    if (a1)
    {
      result = *(v3 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (result)
      {
        return [result sizeThatFits:{a2, a3}];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10047C768(double a1, double a2)
{
  result = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (result)
  {
    v6 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_isSelected);
    result = [result sizeThatFits:?];
    if (v6 == 1)
    {
      result = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (result)
      {
        return [result sizeThatFits:{a1, a2}];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10047C86C()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = _s19SBS_TextContentViewCMa();
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v2 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  v3 = *&v0[OBJC_IVAR___MusicSBS_TextContentView_textView];
  if (!v3)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v4 = v3;
  [v1 bounds];
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;
  v10 = v9;

  v11 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
  v12 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (v12)
  {
    v18 = v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition];
    if (v18 != 2)
    {
      v19 = v12;
      [v1 bounds];
      [v19 sizeThatFits:{v20, v21}];
      v14 = v22;
      v15 = v23;
      [v1 bounds];
      MaxY = CGRectGetMaxY(v33);

      v25 = MaxY - v10;
      if (v18)
      {
        v16 = MaxY - v15;
      }

      else
      {
        v16 = 0.0;
      }

      if (v18)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v25;
      }
    }
  }

  v26 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_alignment];
  if (v26 == 1)
  {
    [v1 bounds];
    v27 = (CGRectGetWidth(v36) - v8) * 0.5;
    [v1 bounds];
    v13 = (CGRectGetWidth(v37) - v14) * 0.5;
  }

  else
  {
    v27 = 0.0;
    if (v26 == 2)
    {
      [v1 bounds];
      v27 = CGRectGetWidth(v34) - v8;
      [v1 bounds];
      v13 = CGRectGetWidth(v35) - v14;
    }
  }

  v28 = *&v1[v2];
  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = v28;
  UIView.untransformedFrame.setter(v27, v17, v8, v10);

  v30 = *&v1[v11];
  if (v30)
  {
    v31 = v30;
    UIView.untransformedFrame.setter(v13, v16, v14, v15);
  }
}

id sub_10047CB1C()
{
  v2.receiver = v0;
  v2.super_class = _s19SBS_TextContentViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s19SBS_TextContentViewCMa()
{
  result = qword_1006163E0;
  if (!qword_1006163E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10047CC64()
{
  sub_10047CD50();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10047CD50()
{
  if (!qword_1006163F0)
  {
    type metadata accessor for Lyrics.TextLine(255);
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_1006163F0);
    }
  }
}

uint64_t sub_10047CDA8(const void *a1)
{
  v3 = *v1;
  memcpy(__dst, (v3 + OBJC_IVAR___MusicSBS_TextContentView_specs), sizeof(__dst));
  memcpy((v3 + OBJC_IVAR___MusicSBS_TextContentView_specs), a1, 0x2B0uLL);
  sub_10046E570(a1, &v5);
  sub_10046E5CC(__dst);
  sub_10047A648();
  return sub_10046E5CC(a1);
}

double sub_10047CE90(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = CGPoint.centerRight.unsafeMutableAddressor();
      goto LABEL_8;
    }

    if (a1 != 3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v1 = CGPoint.center.unsafeMutableAddressor();
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v1 = CGPoint.centerLeft.unsafeMutableAddressor();
LABEL_8:
  v2 = v1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_10047CF04()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10047CF3C()
{

  return swift_deallocObject();
}

uint64_t sub_10047CF80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10047CF98()
{

  return swift_deallocObject();
}

uint64_t sub_10047CFF0(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10047D04C()
{
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling) = 1;
  v1 = (v0 + OBJC_IVAR___MusicSBS_TextContentView_text);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_attributedText) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_progress) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = 2;
  v2 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = 2;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_textView) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView) = 0;
  sub_1004BD624();
  __break(1u);
}

CFIndex sub_10047D178(uint64_t a1, uint64_t a2)
{
  result = CFRange.init(_:)(*&a1).location;
  qword_100619AE0 = v3;
  return result;
}

CGFloat sub_10047D218(CGFloat a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  CGAffineTransformMakeScale(&v11, a1, a1);
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a3 = *&v11.a;
  *a4 = v9;
  *a5 = v10;
  return result;
}

id sub_10047D270(uint64_t a1, char a2, void *__src, double a4, double a5)
{
  v5[OBJC_IVAR___MusicInstrumentalContentView_isScrolling] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_alignment] = 0;
  v6 = &v5[OBJC_IVAR___MusicInstrumentalContentView_lastSeenBounds];
  *v6 = 0u;
  v6[1] = 0u;
  v5[OBJC_IVAR___MusicInstrumentalContentView_isSelected] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_dots] = _swiftEmptyArrayStorage;
  v5[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration] = 0;
  v7 = &v5[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn];
  *v7 = 0;
  v7[8] = 1;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_breathDuration] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted] = 0;
  v8 = &v5[OBJC_IVAR___MusicInstrumentalContentView_line];
  *v8 = a1;
  v8[1] = a4;
  v8[2] = a5;
  *(v8 + 24) = a2 & 1;
  memcpy(&v5[OBJC_IVAR___MusicInstrumentalContentView_specs], __src, 0x2B0uLL);
  v10.receiver = v5;
  v10.super_class = _s23InstrumentalContentViewCMa();
  return objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

void sub_10047D3BC()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = _s23InstrumentalContentViewCMa();
  objc_msgSendSuper2(&v29, "layoutSubviews");
  v2 = &v0[OBJC_IVAR___MusicInstrumentalContentView_lastSeenBounds];
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  [v1 bounds];
  v33.origin.x = v7;
  v33.origin.y = v8;
  v33.size.width = v9;
  v33.size.height = v10;
  v30.origin.x = v3;
  v30.origin.y = v4;
  v30.size.width = v5;
  v30.size.height = v6;
  if (CGRectEqualToRect(v30, v33))
  {
    return;
  }

  [v1 bounds];
  *v2 = v11;
  *(v2 + 1) = v12;
  *(v2 + 2) = v13;
  *(v2 + 3) = v14;
  v15 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  swift_beginAccess();
  v16 = *&v1[v15];
  if (v16 >> 62)
  {
    if (sub_1004BD6A4())
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    sub_10047F184();
  }

LABEL_5:
  v17 = &v1[OBJC_IVAR___MusicInstrumentalContentView_specs];
  v18 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_specs + 608];
  v19 = v18 * *&v1[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + (*&v1[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + -1.0) * *&v1[OBJC_IVAR___MusicInstrumentalContentView_specs + 616];
  v20 = Int.seconds.getter(0);
  v21 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_alignment];
  if (v21 == 1)
  {
    [v1 bounds];
    v22 = (CGRectGetWidth(v32) - v19) * 0.5;
  }

  else
  {
    v22 = v20;
    if (v21 == 2)
    {
      [v1 bounds];
      v22 = CGRectGetWidth(v31) - v19;
    }
  }

  v23 = *&v1[v15];
  if (v23 >> 62)
  {
    v24 = sub_1004BD6A4();
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      return;
    }
  }

  if (v24 < 1)
  {
    __break(1u);
  }

  else
  {

    v25 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = sub_1004BD484();
      }

      else
      {
        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      [v1 bounds];
      UIView.untransformedFrame.setter(v22, v28 * 0.5 - v18 * 0.5, v18, v18);

      v22 = v22 + v18 + v17[77];
    }

    while (v24 != v25);
  }
}

uint64_t sub_10047D674()
{
  v1 = *(v0 + OBJC_IVAR___MusicInstrumentalContentView_line + 8);
  v2 = *(v0 + OBJC_IVAR___MusicInstrumentalContentView_line + 16) + -1.8;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_breathDuration) = (v2 - v1) / floor((v2 - v1) * 0.25) * 0.5;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration) = (v2 - (v1 + 1.0)) / *(v0 + OBJC_IVAR___MusicInstrumentalContentView_specs + 592);
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted) = 0;
  v3 = v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued) = 0;
  v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v6 = *(v0 + v4);
  if (v6 >> 62)
  {
    result = sub_1004BD6A4();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {

    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_1004BD484();
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = [v9 layer];
      [v11 removeAllAnimations];

      [v10 setAlpha:0.0];
      v12[1] = 0;
      v12[2] = 0;
      v12[0] = 0x3FF0000000000000;
      v12[3] = 0x3FF0000000000000;
      v12[4] = 0;
      v12[5] = 0;
      [v10 setTransform:v12];
    }

    while (v7 != v8);
  }

  return result;
}

void sub_10047D87C(char a1, char a2)
{
  v2[OBJC_IVAR___MusicInstrumentalContentView_isSelected] = a1;
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v3 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
      v4 = swift_allocObject();
      *(v4 + 16) = v2;
      v7[4] = sub_10047F684;
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_1000D6C80;
      v7[3] = &unk_1005D4670;
      v5 = _Block_copy(v7);
      v6 = v2;

      [v3 addAnimations:v5];
      _Block_release(v5);
      [v3 startAnimation];
    }

    else
    {

      sub_10047D674();
    }
  }
}

void sub_10047D9E0(double a1)
{
  v2 = &v1[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn];
  if (v1[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn + 8] == 1)
  {
    v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v5 = *&v1[v4];
    if (v5 >> 62)
    {
      v6 = &off_100616000;
      if (sub_1004BD6A4())
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = &off_100616000;
      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }
    }

    v7 = *&v1[v4];
    if (v7 >> 62)
    {
      goto LABEL_43;
    }

    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      sub_10047F184();
      goto LABEL_7;
    }

    while (1)
    {
LABEL_7:
      v8 = (v6[128] + v1);
      v9 = v8[76];
      v10 = v9 * *(v8 + 74) + (*(v8 + 74) + -1.0) * v8[77];
      v11 = Int.seconds.getter(0);
      v12 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_alignment];
      if (v12 == 1)
      {
        [v1 bounds];
        v13 = (CGRectGetWidth(v45) - v10) * 0.5;
      }

      else
      {
        v13 = v11;
        if (v12 == 2)
        {
          [v1 bounds];
          v13 = CGRectGetWidth(v44) - v10;
        }
      }

      v4 = *&v1[v4];
      if (v4 >> 62)
      {
        v14 = sub_1004BD6A4();
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      if (v14 < 1)
      {
        __break(1u);
        return;
      }

      v15 = v1;

      v16 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v17 = sub_1004BD484();
        }

        else
        {
          v17 = *(v4 + 8 * v16 + 32);
        }

        v18 = v17;
        ++v16;
        [v15 bounds];
        UIView.untransformedFrame.setter(v13, v19 * 0.5 - v9 * 0.5, v9, v9);

        v13 = v13 + v9 + v8[77];
      }

      while (v14 != v16);

      v1 = v15;
LABEL_20:
      v20 = 0;
      *v2 = 0;
      v2[8] = 0;
      v21 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_line + 8] + 1.0;
      if (v21 > a1)
      {
        goto LABEL_28;
      }

      v22 = (a1 - v21) / *&v1[OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration];
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_39;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_40;
      }

      if (v22 < 9.22337204e18)
      {
        if (__OFADD__(v22, 1))
        {
          goto LABEL_42;
        }

        if (v22 + 1 >= 3)
        {
          v20 = 3;
        }

        else
        {
          v20 = v22 + 1;
        }

LABEL_28:
        v23 = *(v6[128] + v1 + 592);
        if (v23 < 0)
        {
          __break(1u);
        }

        else
        {
          v2 = v1;
          if (v23)
          {
            for (i = 0; i != v23; ++i)
            {
              v25 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:3 curve:0 animations:0.8];
              v26 = swift_allocObject();
              v26[2] = v20;
              v26[3] = i;
              v26[4] = v2;
              v42 = sub_10047F630;
              v43 = v26;
              aBlock = _NSConcreteStackBlock;
              v39 = 1107296256;
              v40 = sub_1000D6C80;
              v41 = &unk_1005D4580;
              v27 = _Block_copy(&aBlock);
              v28 = v2;
              v29 = v2;

              [v25 addAnimations:v27];
              _Block_release(v27);
              v30 = swift_allocObject();
              *(v30 + 16) = v29;
              *(v30 + 24) = i;
              v42 = sub_10047F63C;
              v43 = v30;
              aBlock = _NSConcreteStackBlock;
              v39 = 1107296256;
              v40 = sub_10013ABCC;
              v41 = &unk_1005D45D0;
              v31 = _Block_copy(&aBlock);
              v6 = v43;
              v32 = v29;
              v2 = v28;

              [v25 addCompletion:v31];
              _Block_release(v31);
              [v25 startAnimationAfterDelay:i * 0.06];
            }
          }

          v1 = objc_opt_self();
          a1 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_breathDuration] + -0.4;
          v33 = swift_allocObject();
          *(v33 + 16) = v2;
          v42 = sub_10047F67C;
          v43 = v33;
          aBlock = _NSConcreteStackBlock;
          v39 = 1107296256;
          v40 = sub_1000D6C80;
          v41 = &unk_1005D4620;
          v4 = _Block_copy(&aBlock);
          v34 = v2;

          [v1 animateWithDuration:0x20000 delay:v4 options:0 animations:a1 completion:0.2];
          _Block_release(v4);
          v35 = *&v34[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (!v36)
          {
            *&v34[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted] = v37;
            return;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!sub_1004BD6A4())
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_10047DFD4(int64_t a1, int64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  if (a2 >= a1)
  {
    swift_beginAccess();
    v7 = *(a3 + v5);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v4 = sub_1004BD484();
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v4)
      {
        goto LABEL_20;
      }

      v4 = *(v7 + 8 * v4 + 32);
    }

    if (qword_100614E80 == -1)
    {
LABEL_12:
      [v4 setAlpha:*&qword_100619AE0];
      goto LABEL_13;
    }

LABEL_18:
    swift_once();
    goto LABEL_12;
  }

  swift_beginAccess();
  v6 = *(a3 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v4 = sub_1004BD484();

    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > v4)
  {
    v4 = *(v6 + 8 * v4 + 32);
LABEL_6:
    [v4 setAlpha:1.0];
LABEL_13:

    return;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_10047E154(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = sub_1004BD6A4();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_1004BD484();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (qword_100614E90 != -1)
      {
        swift_once();
      }

      ++v6;
      v9[0] = xmmword_100619B20;
      v9[1] = *algn_100619B30;
      v9[2] = xmmword_100619B40;
      [v8 setTransform:v9];
    }

    while (v5 != v6);
  }

  return result;
}

void sub_10047E2A8(double a1)
{
  v4 = &v2[OBJC_IVAR___MusicInstrumentalContentView_line];
  v5 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_line + 8];
  v6 = OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration;
  v7 = (a1 - (v5 + 1.0)) / *&v2[OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration];
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (__OFADD__(v7, 1))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v8 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_specs + 592];
  if (v7 + 1 >= v8)
  {
    v9 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_specs + 592];
  }

  else
  {
    v9 = v7 + 1;
  }

  v10 = OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted;
  v11 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted];
  if (v9 < v11)
  {
    sub_10047D674();
    v12 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v1 = *&v2[v12];
    if (!(v1 >> 62))
    {
      v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_11:
        if (v13 >= 1)
        {

          v14 = 0;
          do
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v15 = sub_1004BD484();
            }

            else
            {
              v15 = *(v1 + 8 * v14 + 32);
            }

            v16 = v15;
            v17 = [v15 layer];
            [v17 removeAllAnimations];

            if (qword_100614E80 != -1)
            {
              swift_once();
            }

            ++v14;
            [v16 setAlpha:*&qword_100619AE0];
            v47 = 0;
            v48 = 0;
            aBlock = 0x3FF0000000000000;
            v49 = 0x3FF0000000000000;
            v50 = 0;
            v51 = 0;
            [v16 setTransform:&aBlock];
          }

          while (v13 != v14);

          goto LABEL_51;
        }

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
        do
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:

          v23 = sub_1004BD484();

          v18 = "KeyboardAvoidance";
LABEL_36:
          v24 = *&v2[v6] + -0.1;
          v25 = swift_allocObject();
          *(v25 + 16) = v23;
          v26 = objc_allocWithZone(UIViewPropertyAnimator);
          v50 = sub_100470844;
          v51 = v25;
          aBlock = _NSConcreteStackBlock;
          v47 = 1107296256;
          v48 = sub_1000D6C80;
          v49 = &unk_1005D4530;
          v27 = _Block_copy(&aBlock);
          v28 = v23;

          v29 = [v26 initWithDuration:3 curve:v27 animations:v24];
          _Block_release(v27);
          [v29 startAnimation];

          v5 = v4[1];
LABEL_37:
          v30 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_breathDuration];
          v31 = (a1 - v5) / v30;
          if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_71;
          }

          if (v31 <= -9.22337204e18)
          {
            goto LABEL_72;
          }

          if (v31 >= 9.22337204e18)
          {
            goto LABEL_73;
          }

          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_74;
          }

          v33 = OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted;
          if (*&v2[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted] >= v32)
          {
            goto LABEL_44;
          }

          v34 = objc_opt_self();
          v35 = swift_allocObject();
          *(v35 + 16) = v2;
          *(v35 + 24) = v32;
          v50 = sub_10047F5F0;
          v51 = v35;
          aBlock = _NSConcreteStackBlock;
          v47 = 1107296256;
          v48 = sub_1000D6C80;
          v49 = &unk_1005D44E0;
          v36 = _Block_copy(&aBlock);
          v37 = v2;

          [v34 animateWithDuration:0x20000 delay:v36 options:0 animations:v30 + -0.4 completion:0.2];
          _Block_release(v36);
          v38 = *&v2[v33];
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
        }

        while (v39);
        *&v2[v33] = v40;
        goto LABEL_44;
      }

LABEL_51:
      sub_10047D9E0(a1);
      return;
    }

LABEL_66:
    v13 = sub_1004BD6A4();
    if (v13)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

  v18 = "KeyboardAvoidance";
  if ((v2[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn + 8] & 1) != 0 || (v5 + 1.0 < a1 ? (v19 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn] == v8) : (v19 = 0), !v19 || v4[2] + -1.8 <= a1))
  {
LABEL_44:
    v41 = v4[2];
    v42 = v41 > a1 && v41 + *(v18 + 132) < a1;
    if (v42 && (v2[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] & 1) == 0)
    {
      sub_10047EAE0();
    }

    return;
  }

  if (v9 == v11 || v2[OBJC_IVAR___MusicInstrumentalContentView_isSelected] != 1)
  {
    goto LABEL_37;
  }

  v20 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    goto LABEL_76;
  }

  if (v20 < v11)
  {
    goto LABEL_77;
  }

  if (v11 == v20)
  {
LABEL_32:
    *&v2[v10] = v9;
    v21 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v22 = *&v2[v21];
    if ((v22 & 0xC000000000000001) != 0)
    {
      goto LABEL_78;
    }

    v18 = "KeyboardAvoidance";
    if (v20 < 0)
    {
      __break(1u);
    }

    else if (v20 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v22 + 8 * v20 + 32);
      goto LABEL_36;
    }

    __break(1u);
  }

  else if (v11 < v20)
  {
    v43 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    while (1)
    {
      v44 = *&v2[v43];
      if ((v44 & 0xC000000000000001) != 0)
      {

        v45 = sub_1004BD484();
      }

      else
      {
        if (v11 < 0)
        {
          goto LABEL_69;
        }

        if (v11 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v45 = *(v44 + 8 * v11 + 32);
      }

      ++v11;
      [v45 setAlpha:1.0];

      if (v20 == v11)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
}

uint64_t sub_10047E934(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6 >> 62)
  {
    result = sub_1004BD6A4();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = a2 & 0x8000000000000001;

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = sub_1004BD484();
      }

      else
      {
        v11 = *(v6 + 8 * i + 32);
      }

      v12 = v11;
      if (v8 == 1)
      {
        if (qword_100614E90 != -1)
        {
          swift_once();
        }

        v13 = xmmword_100619B20;
        v14 = *algn_100619B30;
        v10 = xmmword_100619B40;
      }

      else
      {
        if (qword_100614E88 != -1)
        {
          swift_once();
        }

        v13 = xmmword_100619AF0;
        v14 = xmmword_100619B00;
        v10 = xmmword_100619B10;
      }

      v15 = v10;
      [v12 setTransform:&v13];
    }
  }

  return result;
}

void sub_10047EAE0()
{
  if ((v0[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] & 1) == 0)
  {
    v0[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] = 1;
    v1 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:1.0 controlPoint2:0.25 animations:{0.1, 0.25, 1.0}];
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v17 = sub_10047F588;
    v18 = v2;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1000D6C80;
    v16 = &unk_1005D43F0;
    v3 = _Block_copy(&v13);
    v4 = v0;

    [v1 addAnimations:v3];
    _Block_release(v3);
    [v1 startAnimation];
    v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:1 curve:0 animations:0.3];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v17 = sub_10047F5A8;
    v18 = v6;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1000D6C80;
    v16 = &unk_1005D4440;
    v7 = _Block_copy(&v13);
    v8 = v4;

    [v5 addAnimations:v7];
    _Block_release(v7);
    [v5 startAnimationAfterDelay:1.0];
    v9 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:1 curve:0 animations:0.5];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v17 = sub_10047F5B0;
    v18 = v10;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1000D6C80;
    v16 = &unk_1005D4490;
    v11 = _Block_copy(&v13);
    v12 = v8;

    [v9 addAnimations:v11];
    _Block_release(v11);
    [v9 startAnimationAfterDelay:1.0];
  }
}

uint64_t sub_10047EDE8(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = sub_1004BD6A4();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_1004BD484();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (qword_100614E98 != -1)
      {
        swift_once();
      }

      ++v6;
      v9[0] = xmmword_100619B50;
      v9[1] = xmmword_100619B60;
      v9[2] = xmmword_100619B70;
      [v8 setTransform:v9];
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_10047EF3C(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = sub_1004BD6A4();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_1004BD484();
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 setAlpha:0.0];
    }
  }

  return result;
}

uint64_t sub_10047F030(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = sub_1004BD6A4();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_1004BD484();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (qword_100614EA0 != -1)
      {
        swift_once();
      }

      ++v6;
      v9[0] = xmmword_100619B80;
      v9[1] = *algn_100619B90;
      v9[2] = xmmword_100619BA0;
      [v8 setTransform:v9];
    }

    while (v5 != v6);
  }

  return result;
}

void sub_10047F184()
{
  v1 = &v0[OBJC_IVAR___MusicInstrumentalContentView_specs];
  v2 = *&v0[OBJC_IVAR___MusicInstrumentalContentView_specs + 592];
  if (v2 < 0)
  {
LABEL_13:
    __break(1u);
  }

  else if (v2)
  {
    v3 = v0;
    v4 = 0;
    v5 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    do
    {
      v6 = [objc_allocWithZone(UIView) init];
      v7 = v6;
      v8 = 1.3;
      if (!v4)
      {
        goto LABEL_7;
      }

      v9 = *(v1 + 74);
      v10 = __OFSUB__(v9, 1);
      v11 = v9 - 1;
      if (v10)
      {
        __break(1u);
        goto LABEL_13;
      }

      v8 = -1.3;
      if (v4 == v11)
      {
LABEL_7:
        v12 = [v6 layer];
        [v12 anchorPoint];
        [v12 setAnchorPoint:v13 + v8];
      }

      [v7 setBackgroundColor:{*(v1 + 44), v16}];
      [v7 setAlpha:0.0];
      [v7 setAutoresizingMask:40];
      v14 = [v7 layer];
      [v14 setCornerRadius:*(v1 + 76) * 0.5];

      swift_beginAccess();
      v15 = v7;
      sub_1004BC274();
      if (*((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1004BC2E4();
      }

      ++v4;
      sub_1004BC334();
      swift_endAccess();
      [v3 addSubview:v15];
    }

    while (v2 != v4);
  }
}

id sub_10047F3D0()
{
  v2.receiver = v0;
  v2.super_class = _s23InstrumentalContentViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10047F480(const void *a1)
{
  v3 = *v1;
  memcpy(v5, (v3 + OBJC_IVAR___MusicInstrumentalContentView_specs), sizeof(v5));
  memcpy((v3 + OBJC_IVAR___MusicInstrumentalContentView_specs), a1, 0x2B0uLL);
  return sub_10046E5CC(v5);
}

uint64_t sub_10047F550()
{

  return swift_deallocObject();
}

uint64_t sub_10047F590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10047F5B8()
{

  return swift_deallocObject();
}

uint64_t sub_10047F5F8()
{

  return swift_deallocObject();
}

void sub_10047F63C()
{
  v1 = *(v0 + 16) + OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn;
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = *(v0 + 24);
    if (*v1 <= v2)
    {
      v3 = __OFADD__(v2, 1);
      v4 = v2 + 1;
      if (v3)
      {
        __break(1u);
      }

      else
      {
        *v1 = v4;
        *(v1 + 8) = 0;
      }
    }
  }
}

void sub_10047F6A8()
{
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_isScrolling) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_alignment) = 0;
  v1 = (v0 + OBJC_IVAR___MusicInstrumentalContentView_lastSeenBounds);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_isSelected) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_dots) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration) = 0;
  v2 = v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_breathDuration) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted) = 0;
  sub_1004BD624();
  __break(1u);
}

void sub_10047F7FC(char a1, char a2)
{
  _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2[OBJC_IVAR___MusicTextContentView_isSelected] = a1;
  if (a1)
  {
    v7 = Int.seconds.getter(1);
    v8 = OBJC_IVAR___MusicTextContentView_selectedLabel;
    v9 = *&v2[OBJC_IVAR___MusicTextContentView_selectedLabel];
    if (v9 || ((v10 = [objc_allocWithZone(UILabel) init], objc_msgSend(v10, "setAdjustsFontForContentSizeCategory:", 1), objc_msgSend(v10, "setLineBreakStrategy:", 3), objc_msgSend(v10, "setNumberOfLines:", 0), objc_msgSend(v10, "setTextAlignment:", 4), objc_msgSend(v10, "setAutoresizingMask:", 18), objc_msgSend(v10, "setTextAlignment:", *&v2[OBJC_IVAR___MusicTextContentView_alignment]), v11 = OBJC_IVAR___MusicTextContentView_content, swift_beginAccess(), sub_100485354(&v2[v11], v6), swift_getEnumCaseMultiPayload() != 1) ? (sub_10048541C(v6), v12 = objc_msgSend(*&v2[OBJC_IVAR___MusicTextContentView_label], "attributedText")) : (v12 = *v6), (objc_msgSend(v10, "setAttributedText:", v12), v12, (v13 = *&v2[OBJC_IVAR___MusicTextContentView_textColorOverride]) == 0) ? (v14 = *&v2[OBJC_IVAR___MusicTextContentView_specs + 352], v13 = 0) : (v14 = *&v2[OBJC_IVAR___MusicTextContentView_textColorOverride]), v15 = v13, objc_msgSend(v10, "setTextColor:", v14), v14, objc_msgSend(v2, "addSubview:", v10), v16 = *&v2[v8], *&v2[v8] = v10, v16, (v9 = *&v2[v8]) != 0))
    {
      v17 = *&v2[OBJC_IVAR___MusicTextContentView_label];
      v18 = v9;
      [v17 frame];
      [v18 setFrame:?];

      v19 = *&v2[v8];
      if (v19)
      {
        [v19 setAlpha:0.0];
      }
    }
  }

  else
  {
    v7 = Int.seconds.getter(0);
  }

  if (a2)
  {
    v20 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    *(v21 + 24) = v7;
    v35 = sub_100486508;
    v36 = v21;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_1000D6C80;
    v34 = &unk_1005D4BE0;
    v22 = _Block_copy(&aBlock);
    v23 = v2;

    [v20 addAnimations:v22];
    _Block_release(v22);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v35 = sub_100486598;
    v36 = v24;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_10013ABCC;
    v34 = &unk_1005D4C30;
    v25 = _Block_copy(&aBlock);
    v26 = v23;

    [v20 addCompletion:v25];
    _Block_release(v25);
    [v20 startAnimation];
LABEL_22:

    return;
  }

  [*&v2[OBJC_IVAR___MusicTextContentView_label] setAlpha:1.0 - v7];
  v27 = OBJC_IVAR___MusicTextContentView_selectedLabel;
  v28 = *&v2[OBJC_IVAR___MusicTextContentView_selectedLabel];
  if (v28)
  {
    [v28 setAlpha:v7];
  }

  if ((a1 & 1) == 0)
  {
    v29 = *&v2[v27];
    if (v29)
    {
      [v29 removeFromSuperview];
      v20 = *&v2[v27];
    }

    else
    {
      v20 = 0;
    }

    *&v2[v27] = 0;
    goto LABEL_22;
  }
}

void sub_10047FCC4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + OBJC_IVAR___MusicTextContentView_isSelected) & 1) == 0)
  {
    v3 = OBJC_IVAR___MusicTextContentView_selectedLabel;
    v4 = *(a2 + OBJC_IVAR___MusicTextContentView_selectedLabel);
    if (v4)
    {
      v5 = a2;
      [v4 removeFromSuperview];
      a2 = v5;
      v4 = *(v5 + v3);
    }

    *(a2 + v3) = 0;
  }
}

void sub_10047FDD8(char **a1@<X8>)
{
  v2 = v1;
  sub_100003ABC(&qword_100616678);
  __chkstk_darwin();
  v5 = &v16[-v4];
  v6 = _s15TextContentViewC7ContentOMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___MusicTextContentView_content;
  swift_beginAccess();
  sub_100485354(&v2[v10], v9);
  memcpy(v17, &v2[OBJC_IVAR___MusicTextContentView_specs], 0x2B0uLL);
  v11 = _s15TextContentViewCMa(0);
  v12 = objc_allocWithZone(v11);
  sub_10046E570(v17, v16);
  v13 = sub_1004854D0(v9, v17, 0);
  sub_10046E5CC(v17);
  sub_10047F7FC(v2[OBJC_IVAR___MusicTextContentView_isSelected], 0);
  *&v13[OBJC_IVAR___MusicTextContentView_alignment] = *&v2[OBJC_IVAR___MusicTextContentView_alignment];
  v14 = sub_10044E090(&off_1005D0A70);
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_100480034(v14);

  sub_100007214(v5, &qword_100616678);
  v15 = v13;
  [v2 bounds];
  [v15 setFrame:?];

  a1[3] = v11;
  *a1 = v15;
}

uint64_t sub_100480034(uint64_t a1)
{
  v2 = v1;
  sub_100003ABC(&qword_100615040);
  __chkstk_darwin();
  v103 = &v95 - v4;
  sub_100003ABC(&qword_100615038);
  __chkstk_darwin();
  v107 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v95 - v6;
  v7 = _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = (&v95 - v10);
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v110 = OBJC_IVAR___MusicTextContentView_isScrolling;
  v120 = OBJC_IVAR___MusicTextContentView_textColorOverride;
  v121 = v2 + OBJC_IVAR___MusicTextContentView_specs;
  v119 = OBJC_IVAR___MusicTextContentView_alignment;
  v122 = OBJC_IVAR___MusicTextContentView_selectedLabel;
  v123 = OBJC_IVAR___MusicTextContentView_label;
  v15 = OBJC_IVAR___MusicTextContentView_content;
  v124 = a1;
  v16 = a1 + 56;

  v118 = v15;
  swift_beginAccess();
  v17 = 0;
  v18 = v12 + 63;
  v19 = v11;
  v20 = v18 >> 6;
  v115 = NSFontAttributeName;
  v114 = NSParagraphStyleAttributeName;
  v113 = NSForegroundColorAttributeName;
  v106 = NSLanguageIdentifierAttributeName;
  v105 = xmmword_1004C50B0;
  v116 = v2;
  v111 = v9;
  v112 = v7;
  while (v14)
  {
LABEL_9:
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v23 = *(*(v124 + 48) + (v22 | (v17 << 6)));
    v24 = v7;
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        v33 = *(v2 + v120);
        v34 = *(v2 + v123);
        if (!v33)
        {
          v35 = 368;
          if (*(v2 + v110))
          {
            v35 = 392;
          }

          v33 = *(v121 + v35);
        }

        goto LABEL_34;
      }

      [*(v2 + v123) setTextAlignment:*(v2 + v119)];
      v30 = *(v2 + v122);
      if (v30)
      {
        [v30 setTextAlignment:*(v2 + v119)];
        goto LABEL_35;
      }
    }

    else if (v23)
    {
      sub_100485354(v2 + v118, v9);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = v121;
      if (EnumCaseMultiPayload == 1)
      {
        sub_10048541C(v9);
      }

      else
      {

        v47 = sub_100003ABC(&qword_100616680);
        sub_100007214(&v9[*(v47 + 48)], &qword_100615038);
        [*(v2 + v123) setFont:*(v32 + 200)];
        v48 = *(v2 + v122);
        if (v48)
        {
          [v48 setFont:*(v32 + 200)];
        }
      }

      v49 = *(v2 + v120);
      if (!v49)
      {
        v50 = 368;
        if (*(v2 + v110))
        {
          v50 = 392;
        }

        v49 = *(v32 + v50);
      }

      [*(v2 + v123) setTextColor:v49];
      v34 = *(v2 + v122);
      v7 = v24;
      if (v34)
      {
        v33 = *(v121 + 352);
LABEL_34:
        [v34 setTextColor:v33];
LABEL_35:
        v7 = v24;
      }
    }

    else
    {
      sub_100485354(v2 + v118, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = *v19;
        v26 = v19;
        v27 = *(v2 + v123);
        v28 = v25;
        [v27 setAttributedText:v28];
        v29 = *(v2 + v122);
        [v29 setAttributedText:v28];

        v19 = v26;
        v9 = v111;
        v7 = v112;
      }

      else
      {
        v36 = *v19;
        v37 = v19[1];
        v38 = *(sub_100003ABC(&qword_100616680) + 48);
        v102 = v19;
        sub_100486498(v19 + v38, v117);
        v39 = [objc_allocWithZone(NSMutableParagraphStyle) init];
        [v39 setAlignment:*(v2 + v119)];
        v109 = v39;
        [v39 setLineBreakStrategy:3];
        v104 = v36;
        v108 = v37;
        v40 = String.containsExcessiveHeightCharacters.getter(v36, v37);
        v41 = v121;
        if (v40)
        {
          *&v127 = Int.seconds.getter(0);
          *&v126[0] = v127;
          CTFontGetLanguageAwareOutsets();
          v42 = *&v127 + *v126;
          v43 = v109;
          [v109 lineSpacing];
          [v43 setLineSpacing:v42 + v44];
        }

        v45 = *(v2 + v120);
        v99 = v45;
        if (v45)
        {
          v46 = v45;
        }

        else
        {
          v51 = 368;
          if (*(v2 + v110))
          {
            v51 = 392;
          }

          v46 = *(v41 + v51);
        }

        sub_100003ABC(&unk_100616F00);
        inited = swift_initStackObject();
        *(inited + 16) = v105;
        *(inited + 32) = v115;
        v97 = *(v41 + 200);
        v53 = v97;
        v98 = (inited + 32);
        v54 = sub_100009130(0, &qword_100616F10);
        *(inited + 40) = v53;
        v55 = v114;
        *(inited + 64) = v54;
        *(inited + 72) = v55;
        v56 = sub_100009130(0, &qword_100615B50);
        *(inited + 80) = v109;
        v57 = v113;
        *(inited + 104) = v56;
        *(inited + 112) = v57;
        v58 = sub_100009130(0, &unk_1006169D0);
        v100 = v58;
        v101 = v46;
        *(inited + 120) = v46;
        v60 = v106;
        v59 = v107;
        *(inited + 144) = v58;
        *(inited + 152) = v60;
        sub_1004852E4(v117, v59);
        v61 = sub_1004B6E44();
        v62 = *(v61 - 8);
        LODWORD(v96) = (*(v62 + 48))(v59, 1, v61);
        v63 = v99;
        v64 = v115;
        v65 = v97;
        v66 = v114;
        v109 = v109;
        v99 = v113;
        v67 = v60;
        if (v96 == 1)
        {
          v68 = v59;
          v69 = &qword_100615038;
LABEL_43:
          sub_100007214(v68, v69);
          v73 = v116;
          v74 = (inited + 160);
          *(inited + 184) = &type metadata for String;
LABEL_44:
          v75 = &swift_beginAccess_ptr;
          *v74 = 0;
          v76 = 0xE000000000000000;
          goto LABEL_45;
        }

        v70 = v103;
        sub_1004B6E14();
        (*(v62 + 8))(v59, v61);
        v71 = sub_1004B6D64();
        v72 = *(v71 - 8);
        if ((*(v72 + 48))(v70, 1, v71) == 1)
        {
          v68 = v70;
          v69 = &qword_100615040;
          goto LABEL_43;
        }

        v97 = sub_1004B6D44();
        v76 = v93;
        (*(v72 + 8))(v70, v71);
        v74 = (inited + 160);
        *(inited + 184) = &type metadata for String;
        v73 = v116;
        if (!v76)
        {
          goto LABEL_44;
        }

        *v74 = v97;
        v75 = &swift_beginAccess_ptr;
LABEL_45:
        *(inited + 168) = v76;
        v77 = sub_100447ACC(inited);
        swift_setDeallocating();
        sub_100003ABC(&qword_100615670);
        swift_arrayDestroy();
        v98 = *(v73 + v123);
        v78 = objc_allocWithZone(v75[399]);

        v79 = sub_1004BBE24();
        _s3__C3KeyVMa_1(0);
        v81 = v80;
        v96 = sub_100485478();
        v97 = v81;
        isa = sub_1004BBC24().super.isa;

        v83 = [v78 initWithString:v79 attributes:isa];

        [v98 setAttributedText:v83];
        v2 = v116;
        v84 = *(v121 + 352);
        v128 = v100;
        *&v127 = v84;
        sub_10003E13C(&v127, v126);
        v85 = v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125 = v77;
        sub_1004453A8(v126, v99, isUniquelyReferenced_nonNull_native);
        v87 = *(v2 + v122);
        if (v87)
        {
          v88 = objc_allocWithZone(NSAttributedString);
          v89 = v87;
          v90 = sub_1004BBE24();

          v91 = sub_1004BBC24().super.isa;

          v92 = [v88 initWithString:v90 attributes:v91];

          [v89 setAttributedText:v92];
          v2 = v116;

          sub_100007214(v117, &qword_100615038);
        }

        else
        {

          sub_100007214(v117, &qword_100615038);
        }

        v9 = v111;
        v7 = v112;
        v19 = v102;
      }
    }
  }

  while (1)
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
    }

    if (v21 >= v20)
    {
    }

    v14 = *(v16 + 8 * v21);
    ++v17;
    if (v14)
    {
      v17 = v21;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100480C44()
{
  result = _s15TextContentViewC7ContentOMa(319);
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

uint64_t sub_100480D30(const void *a1)
{
  sub_100003ABC(&qword_100616678);
  __chkstk_darwin();
  v4 = &v9[-v3];
  v5 = *v1;
  memcpy(v10, (v5 + OBJC_IVAR___MusicTextContentView_specs), sizeof(v10));
  memcpy((v5 + OBJC_IVAR___MusicTextContentView_specs), a1, 0x2B0uLL);
  sub_10046E570(a1, v9);
  sub_10046E5CC(v10);
  v6 = sub_10044E090(&off_1005D0A20);
  v7 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100480034(v6);

  sub_100007214(v4, &qword_100616678);
  return sub_10046E5CC(a1);
}

uint64_t sub_100480E80(char a1)
{
  sub_100003ABC(&qword_100616678);
  __chkstk_darwin();
  v4 = &v8 - v3;
  *(*v1 + OBJC_IVAR___MusicTextContentView_isScrolling) = a1;
  v5 = sub_10044E090(&off_1005D0A98);
  v6 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_100480034(v5);

  return sub_100007214(v4, &qword_100616678);
}

void sub_100480FCC()
{
  v1 = v0;
  sub_100003ABC(&qword_100616678);
  __chkstk_darwin();
  v3 = &v20[-v2 - 8];
  v4 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v5 = OBJC_IVAR___MusicDespacitoContentView_specs;
  memcpy(v23, (v1 + OBJC_IVAR___MusicDespacitoContentView_specs), sizeof(v23));
  memcpy(v24, &v4[OBJC_IVAR___MusicTextContentView_specs], 0x2B0uLL);
  memmove(&v4[OBJC_IVAR___MusicTextContentView_specs], (v1 + OBJC_IVAR___MusicDespacitoContentView_specs), 0x2B0uLL);
  sub_10046E570(v23, v22);
  sub_10046E570(v23, v22);
  v6 = v4;
  sub_10046E5CC(v24);
  v7 = sub_10044E090(&off_1005D0A20);
  v8 = _s15TextContentViewC7ContentOMa(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 1, 1, v8);
  sub_100480034(v7);

  sub_100007214(v3, &qword_100616678);
  sub_10046E5CC(v23);

  v10 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v10)
  {
    memcpy(v21, (v1 + v5), sizeof(v21));
    memcpy(v22, &v10[OBJC_IVAR___MusicTextContentView_specs], sizeof(v22));
    memmove(&v10[OBJC_IVAR___MusicTextContentView_specs], (v1 + v5), 0x2B0uLL);
    sub_10046E570(v21, v20);
    sub_10046E570(v21, v20);
    v11 = v10;
    sub_10046E5CC(v22);
    v12 = sub_10044E090(&off_1005D0A20);
    v9(v3, 1, 1, v8);
    sub_100480034(v12);

    sub_100007214(v3, &qword_100616678);
    sub_10046E5CC(v21);
  }

  v13 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v13)
  {
    memcpy(v21, (v1 + v5), sizeof(v21));
    memcpy(v22, &v13[OBJC_IVAR___MusicTextContentView_specs], sizeof(v22));
    memmove(&v13[OBJC_IVAR___MusicTextContentView_specs], (v1 + v5), 0x2B0uLL);
    sub_10046E570(v21, v20);
    sub_10046E570(v21, v20);
    v14 = v13;
    sub_10046E5CC(v22);
    v15 = sub_10044E090(&off_1005D0A20);
    v9(v3, 1, 1, v8);
    sub_100480034(v15);

    sub_100007214(v3, &qword_100616678);
    sub_10046E5CC(v21);
  }

  v16 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v16)
  {
    memcpy(v21, (v1 + v5), sizeof(v21));
    memcpy(v22, &v16[OBJC_IVAR___MusicDespacitoContentView_specs], sizeof(v22));
    memmove(&v16[OBJC_IVAR___MusicDespacitoContentView_specs], (v1 + v5), 0x2B0uLL);
    sub_10046E570(v21, v20);
    sub_10046E570(v21, v20);
    v17 = v16;
    v18 = sub_10046E5CC(v22);
    sub_100480FCC(v18);
    sub_10046E5CC(v21);
  }
}

void sub_10048137C()
{
  v1 = v0;
  sub_100003ABC(&qword_100616678);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v5 = OBJC_IVAR___MusicDespacitoContentView_isScrolling;
  v4[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + OBJC_IVAR___MusicDespacitoContentView_isScrolling);
  v6 = sub_10044E090(&off_1005D0AC0);
  v7 = _s15TextContentViewC7ContentOMa(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v3, 1, 1, v7);
  v9 = v4;
  sub_100480034(v6);

  sub_100007214(v3, &qword_100616678);
  v10 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v10)
  {
    v10[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + v5);
    v11 = sub_10044E090(&off_1005D0AE8);
    v8(v3, 1, 1, v7);
    v12 = v10;
    sub_100480034(v11);

    sub_100007214(v3, &qword_100616678);
  }

  v13 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v13)
  {
    v13[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + v5);
    v14 = sub_10044E090(&off_1005D0B10);
    v8(v3, 1, 1, v7);
    v15 = v13;
    sub_100480034(v14);

    sub_100007214(v3, &qword_100616678);
  }

  v16 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v16)
  {
    v16[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = *(v1 + v5);
    v17 = v16;
    sub_10048137C();
  }
}

uint64_t sub_1004815E0(uint64_t a1)
{
  v2 = v1;
  sub_100003ABC(&qword_100616678);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  *&v6[OBJC_IVAR___MusicTextContentView_alignment] = a1;
  v7 = sub_10044E090(&off_1005D0B38);
  v8 = _s15TextContentViewC7ContentOMa(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  v10 = v6;
  sub_100480034(v7);

  result = sub_100007214(v5, &qword_100616678);
  v12 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v12)
  {
    *&v12[OBJC_IVAR___MusicTextContentView_alignment] = a1;
    v13 = sub_10044E090(&off_1005D0B60);
    v9(v5, 1, 1, v8);
    v14 = v12;
    sub_100480034(v13);

    result = sub_100007214(v5, &qword_100616678);
  }

  v15 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v15)
  {
    *&v15[OBJC_IVAR___MusicTextContentView_alignment] = a1;
    v16 = sub_10044E090(&off_1005D0B88);
    v9(v5, 1, 1, v8);
    v17 = v15;
    sub_100480034(v16);

    return sub_100007214(v5, &qword_100616678);
  }

  return result;
}

id sub_100481804()
{
  result = [*(*(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView) + OBJC_IVAR___MusicTextContentView_label) setAlpha:1.0];
  v2 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v2)
  {
    result = [*(v2 + OBJC_IVAR___MusicTextContentView_label) setAlpha:1.0];
  }

  v3 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___MusicTextContentView_label);

    return [v4 setAlpha:1.0];
  }

  return result;
}

void sub_1004818B4(char a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  sub_10047F7FC(a1, a2);

  v7 = *(v3 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v7)
  {
    v8 = v7;
    sub_1004818B4(a1 & 1, a2 & 1);
  }

  v9 = *(v3 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v9)
  {
    v10 = v9;
    sub_10047F7FC(a1 & 1, a2 & 1);
  }
}

double sub_10048198C(char a1, double a2, double a3)
{
  v4 = v3;
  [*(v4 + OBJC_IVAR___MusicDespacitoContentView_mainLineView) sizeThatFits:?];
  v9 = v8;
  v10 = *(v4 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v10 && (*(v4 + OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate) & 1) == 0)
  {
    [v10 sizeThatFits:{a2, a3}];
  }

  v11 = *(v4 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v11 && (*(v4 + OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate) & 1) == 0)
  {
    [v11 sizeThatFits:{a2, a3}];
  }

  v12 = *(v4 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v12)
  {
    v13 = v12;
    sub_10048198C(a1 & 1, a2, a3);
  }

  return v9;
}

uint64_t sub_100481B88()
{
  sub_100003ABC(&qword_100616678);
  __chkstk_darwin();
  v2 = &v20 - v1;
  v20 = _s15TextContentViewC7ContentOMa(0);
  v3 = *(v20 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = (&v20 - v6);
  sub_100003ABC(&qword_100615038);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v12 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_text);
  v11 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_text + 8);
  v13 = OBJC_IVAR___MusicDespacitoContentView_language;
  swift_beginAccess();
  sub_1004852E4(v0 + v13, v9);
  v14 = *(sub_100003ABC(&qword_100616680) + 48);
  *v7 = v12;
  v7[1] = v11;
  sub_1004852E4(v9, v7 + v14);
  v15 = v20;
  swift_storeEnumTagMultiPayload();
  v16 = OBJC_IVAR___MusicTextContentView_content;
  swift_beginAccess();
  sub_100485354(v10 + v16, v5);
  swift_beginAccess();
  v17 = v10;

  sub_1004853B8(v7, v10 + v16);
  swift_endAccess();
  v18 = sub_10044E090(&off_1005D0BB0);
  sub_100485354(v5, v2);
  (*(v3 + 56))(v2, 0, 1, v15);
  sub_100480034(v18);

  sub_100007214(v2, &qword_100616678);

  sub_10048541C(v5);
  sub_10048541C(v7);
  return sub_100007214(v9, &qword_100615038);
}

void sub_100481E6C()
{
  _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v2 = (&v77 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003ABC(&qword_100615038);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v4 = &v77 - v3;
  __chkstk_darwin();
  v6 = &v77 - v5;
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v77 - v10;
  v12 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText + 8);
  if (v12)
  {
    v86 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText);
    v13 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
    if (v13)
    {
      v14 = OBJC_IVAR___MusicDespacitoContentView_language;
      swift_beginAccess();
      sub_1004852E4(v0 + v14, v11);
      v83 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
      v15 = v6;
      v16 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8);
      v17 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
      swift_beginAccess();
      v85 = v15;
      sub_1004852E4(v0 + v17, v15);
      sub_1004852E4(v11, v4);
      v18 = OBJC_IVAR___MusicDespacitoContentView_language;
      swift_beginAccess();

      v19 = v13;

      sub_1004858C4(v4, v13 + v18);
      swift_endAccess();
      v20 = &v19[OBJC_IVAR___MusicDespacitoContentView_text];
      *v20 = v86;
      v20[1] = v12;

      sub_100481B88();
      v21 = sub_1004B6E44();
      v84 = *(*(v21 - 8) + 56);
      v84(v4, 1, 1, v21);
      v22 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
      swift_beginAccess();
      sub_1004858C4(v4, &v19[v22]);
      swift_endAccess();
      v23 = &v19[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
      *v23 = 0;
      v23[1] = 0;

      sub_10048313C();
      if (v16)
      {
        v24 = sub_1004BBF24();
        v26 = v25;

        v86 = v16;
        if (v24 != sub_1004BBF24() || v26 != v27)
        {
          v69 = sub_1004BD9C4();

          v28 = v85;
          if ((v69 & 1) == 0)
          {
            sub_1004852E4(v85, v4);
            v71 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
            swift_beginAccess();
            sub_1004858C4(v4, &v19[v71]);
            swift_endAccess();
            v72 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
            v73 = v86;
            *v72 = v83;
            v72[1] = v73;
            goto LABEL_9;
          }

LABEL_8:
          v84(v4, 1, 1, v21);
          v29 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
          swift_beginAccess();
          sub_1004858C4(v4, &v19[v29]);
          swift_endAccess();
          v30 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v30 = 0;
          v30[1] = 0;
LABEL_9:

          sub_100482950();
          sub_1004828A4(0, 0);
          v31 = &v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
          *v31 = 0;
          v31[1] = 0;

          sub_100481E6C(v32);
          v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
          [v19 setNeedsLayout];

          sub_100007214(v28, &qword_100615038);
          sub_100007214(v11, &qword_100615038);
          return;
        }
      }

      v28 = v85;
      goto LABEL_8;
    }

    v83 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView;
    v35 = OBJC_IVAR___MusicDespacitoContentView_language;
    v36 = v7;
    v37 = v8;
    v78 = v8;
    swift_beginAccess();
    sub_1004852E4(v0 + v35, v37);
    v38 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8);
    v77 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
    v81 = v38;
    v39 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
    swift_beginAccess();
    v85 = v36;
    sub_1004852E4(v0 + v39, v36);
    v84 = v0;
    memcpy(v89, v0 + OBJC_IVAR___MusicDespacitoContentView_specs, 0x2B0uLL);
    v82 = _s20DespacitoContentViewCMa(0);
    v40 = objc_allocWithZone(v82);
    v40[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
    *&v40[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
    *&v40[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
    *&v40[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
    v41 = OBJC_IVAR___MusicDespacitoContentView_language;
    v79 = OBJC_IVAR___MusicDespacitoContentView_language;
    v42 = sub_1004B6E44();
    v43 = *(*(v42 - 8) + 56);
    v43(&v40[v41], 1, 1, v42);
    v80 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
    v40[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
    v44 = &v40[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
    *v44 = 0;
    v44[1] = 0;
    v45 = &v40[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
    *v45 = 0;
    v45[1] = 0;
    v40[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
    v43(&v40[OBJC_IVAR___MusicDespacitoContentView_translationLanguage], 1, 1, v42);
    v46 = &v40[OBJC_IVAR___MusicDespacitoContentView_translationText];
    *v46 = 0;
    v46[1] = 0;
    v40[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
    v43(&v40[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v42);
    v47 = &v40[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
    *v47 = 0;
    v47[1] = 0;
    v48 = v78;
    sub_1004852E4(v78, v4);
    v49 = *(sub_100003ABC(&qword_100616680) + 48);
    v50 = v86;
    *v2 = v86;
    v2[1] = v12;
    sub_1004852E4(v4, v2 + v49);
    v51 = v50;
    swift_storeEnumTagMultiPayload();
    v52 = objc_allocWithZone(_s15TextContentViewCMa(0));

    sub_10046E570(v89, v88);

    sub_10046E570(v89, v88);
    v53 = v81;

    v54 = sub_1004854D0(v2, v89, 0);
    sub_10046E5CC(v89);
    sub_100007214(v4, &qword_100615038);
    *&v40[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v54;
    memcpy(&v40[OBJC_IVAR___MusicDespacitoContentView_specs], v89, 0x2B0uLL);
    v55 = &v40[OBJC_IVAR___MusicDespacitoContentView_text];
    *v55 = v51;
    v55[1] = v12;
    v56 = v79;
    swift_beginAccess();

    sub_10046E570(v89, v88);
    sub_100485854(v48, &v40[v56]);
    swift_endAccess();
    v40[v80] = 2;
    v87.receiver = v40;
    v87.super_class = v82;
    v57 = objc_msgSendSuper2(&v87, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v58 = *&v57[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
    v59 = v57;
    [v59 addSubview:v58];
    if (v53)
    {
      v60 = sub_1004BBF24();
      v62 = v61;

      v63 = v77;
      if (v60 == sub_1004BBF24() && v62 == v64)
      {
      }

      else
      {
        v70 = sub_1004BD9C4();

        if ((v70 & 1) == 0)
        {
          sub_1004852E4(v85, v4);
          v74 = v53;
          v75 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
          swift_beginAccess();
          sub_1004858C4(v4, &v59[v75]);
          swift_endAccess();
          v76 = &v59[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v76 = v63;
          *(v76 + 1) = v74;

          sub_100482950();
          goto LABEL_20;
        }
      }
    }

LABEL_20:
    v65 = &v59[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
    *v65 = 0;
    *(v65 + 1) = 0;

    sub_100481E6C(v66);

    sub_10046E5CC(v89);
    sub_100007214(v85, &qword_100615038);
    sub_100007214(v48, &qword_100615038);
    v59[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 0;
    sub_10048137C();
    v67 = v84;
    [v84 addSubview:v59];
    v68 = *(v67 + v83);
    *(v67 + v83) = v59;

    return;
  }

  v33 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView;
  v34 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v34)
  {
    [v34 removeFromSuperview];
    v34 = *(v0 + v33);
  }

  *(v0 + v33) = 0;
}

void sub_1004828A4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v4)
  {
    v5 = *v3;
    v6 = v3[1];
    v7 = &v4[OBJC_IVAR___MusicDespacitoContentView_translationText];
    *v7 = v5;
    *(v7 + 1) = v6;
    v8 = v4;

    sub_100482950();
  }
}

void sub_100482950()
{
  sub_100003ABC(&qword_100616678);
  __chkstk_darwin();
  v2 = &v56 - v1;
  v67 = _s15TextContentViewC7ContentOMa(0);
  v65 = *(v67 - 8);
  __chkstk_darwin();
  v66 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v56 - v4;
  v6 = sub_1004B6E44();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100615038);
  __chkstk_darwin();
  v11 = &v56 - v10;
  sub_100003ABC(&qword_100615040);
  __chkstk_darwin();
  v13 = &v56 - v12;
  v14 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText + 8];
  if (!v14 || *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText] == *&v0[OBJC_IVAR___MusicDespacitoContentView_text] && v14 == *&v0[OBJC_IVAR___MusicDespacitoContentView_text + 8] || (v64 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText], (sub_1004BD9C4() & 1) != 0))
  {
    v0[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 1;
    return;
  }

  v58 = v2;
  v63 = v5;
  v15 = 264;
  if (!*&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationText + 8])
  {
    v15 = 272;
  }

  v16 = *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + v15];
  sub_100003ABC(&unk_100616F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50C0;
  v60 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v62 = inited + 32;
  v18 = sub_100009130(0, &qword_100616F10);
  v61 = v16;
  *(inited + 40) = v16;
  *(inited + 64) = v18;
  *(inited + 72) = NSLanguageIdentifierAttributeName;
  v59 = NSLanguageIdentifierAttributeName;
  v19 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  sub_1004852E4(&v0[v19], v11);
  if ((*(v7 + 48))(v11, 1, v6))
  {
    v20 = v61;
    v21 = v61;

    v22 = v60;
    v23 = v59;
    sub_100007214(v11, &qword_100615038);
LABEL_13:
    v30 = (inited + 80);
    *(inited + 104) = &type metadata for String;
LABEL_14:
    *v30 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_15;
  }

  v57 = v0;
  (*(v7 + 16))(v9, v11, v6);
  v24 = v61;
  v25 = v61;

  v26 = v60;
  v27 = v59;
  sub_100007214(v11, &qword_100615038);
  sub_1004B6E14();
  (*(v7 + 8))(v9, v6);
  v28 = sub_1004B6D64();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v13, 1, v28) == 1)
  {
    sub_100007214(v13, &qword_100615040);
    v0 = v57;
    v20 = v24;
    goto LABEL_13;
  }

  v54 = sub_1004B6D44();
  v31 = v55;
  (*(v29 + 8))(v13, v28);
  v30 = (inited + 80);
  *(inited + 104) = &type metadata for String;
  if (!v31)
  {
    v0 = v57;
    v20 = v24;
    goto LABEL_14;
  }

  *v30 = v54;
  v0 = v57;
  v20 = v24;
LABEL_15:
  *(inited + 88) = v31;
  sub_100447ACC(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100615670);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(NSAttributedString);
  v33 = sub_1004BBE24();

  _s3__C3KeyVMa_1(0);
  sub_100485478();
  isa = sub_1004BBC24().super.isa;

  v35 = [v32 initWithString:v33 attributes:isa];

  v36 = OBJC_IVAR___MusicDespacitoContentView_translationLineView;
  v37 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationLineView];
  if (v37)
  {
    v38 = v63;
    *v63 = v35;
    v39 = v67;
    swift_storeEnumTagMultiPayload();
    v40 = OBJC_IVAR___MusicTextContentView_content;
    swift_beginAccess();
    v41 = v66;
    sub_100485354(v37 + v40, v66);
    swift_beginAccess();
    v42 = v37;
    v43 = v35;
    sub_1004853B8(v38, v37 + v40);
    swift_endAccess();
    v44 = sub_10044E090(&off_1005D0C00);
    v45 = v58;
    sub_100485354(v41, v58);
    (*(v65 + 56))(v45, 0, 1, v39);
    sub_100480034(v44);

    sub_100007214(v45, &qword_100616678);

    sub_10048541C(v41);
    sub_10048541C(v38);
  }

  else
  {
    memcpy(v69, &v0[OBJC_IVAR___MusicDespacitoContentView_specs], 0x2B0uLL);
    v46 = v69[36];
    v47 = v63;
    *v63 = v35;
    swift_storeEnumTagMultiPayload();
    objc_allocWithZone(_s15TextContentViewCMa(0));
    v48 = v35;
    sub_10046E570(v69, &v68);
    v49 = v46;
    v50 = v47;
    v51 = v0;
    v52 = sub_1004854D0(v50, v69, v46);

    sub_10046E5CC(v69);
    [v51 addSubview:v52];

    v53 = *&v51[v36];
    *&v51[v36] = v52;

    v51[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 0;
  }
}

void sub_10048313C()
{
  sub_100003ABC(&qword_100616678);
  __chkstk_darwin();
  v2 = &v52 - v1;
  v3 = _s15TextContentViewC7ContentOMa(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v52 - v7;
  v9 = sub_1004B6E44();
  v62 = *(v9 - 8);
  __chkstk_darwin();
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100615038);
  __chkstk_darwin();
  v12 = &v52 - v11;
  sub_100003ABC(&qword_100615040);
  __chkstk_darwin();
  v14 = &v52 - v13;
  if (!*&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationText + 8])
  {
    v0[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 1;
    return;
  }

  v54 = v4;
  v55 = v6;
  v60 = v3;
  v61 = v8;
  v56 = v2;
  v59 = *&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  sub_100003ABC(&unk_100616F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50C0;
  *(inited + 32) = NSFontAttributeName;
  v58 = inited + 32;
  v53 = &v0[OBJC_IVAR___MusicDespacitoContentView_specs];
  v16 = *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + 312];
  v17 = sub_100009130(0, &qword_100616F10);
  *(inited + 40) = v16;
  *(inited + 64) = v17;
  *(inited + 72) = NSLanguageIdentifierAttributeName;
  v18 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
  swift_beginAccess();
  v19 = &v0[v18];
  v20 = v0;
  sub_1004852E4(v19, v12);
  if ((*(v62 + 48))(v12, 1, v9))
  {

    v21 = NSFontAttributeName;
    v22 = v16;
    v23 = NSLanguageIdentifierAttributeName;
    sub_100007214(v12, &qword_100615038);
    v24 = v61;
LABEL_7:
    v32 = (inited + 80);
    *(inited + 104) = &type metadata for String;
LABEL_8:
    *v32 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_9;
  }

  v52 = v0;
  v25 = v62;
  v26 = v57;
  (*(v62 + 16))(v57, v12, v9);

  v27 = NSFontAttributeName;
  v28 = v16;
  v29 = NSLanguageIdentifierAttributeName;
  sub_100007214(v12, &qword_100615038);
  sub_1004B6E14();
  (*(v25 + 8))(v26, v9);
  v30 = sub_1004B6D64();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v14, 1, v30) == 1)
  {
    sub_100007214(v14, &qword_100615040);
    v24 = v61;
    v20 = v52;
    goto LABEL_7;
  }

  v50 = sub_1004B6D44();
  v33 = v51;
  (*(v31 + 8))(v14, v30);
  v32 = (inited + 80);
  *(inited + 104) = &type metadata for String;
  v24 = v61;
  v20 = v52;
  if (!v33)
  {
    goto LABEL_8;
  }

  *v32 = v50;
LABEL_9:
  *(inited + 88) = v33;
  sub_100447ACC(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100615670);
  swift_arrayDestroy();
  v34 = objc_allocWithZone(NSAttributedString);
  v35 = sub_1004BBE24();

  _s3__C3KeyVMa_1(0);
  sub_100485478();
  isa = sub_1004BBC24().super.isa;

  v37 = [v34 initWithString:v35 attributes:isa];

  v38 = OBJC_IVAR___MusicDespacitoContentView_transliterationLineView;
  v39 = *&v20[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView];
  if (v39)
  {
    *v24 = v37;
    v40 = v60;
    swift_storeEnumTagMultiPayload();
    v41 = OBJC_IVAR___MusicTextContentView_content;
    swift_beginAccess();
    v42 = v55;
    sub_100485354(v39 + v41, v55);
    swift_beginAccess();
    v43 = v39;
    v44 = v37;
    sub_1004853B8(v24, v39 + v41);
    swift_endAccess();
    v45 = sub_10044E090(&off_1005D0BD8);
    v46 = v56;
    sub_100485354(v42, v56);
    (*(v54 + 56))(v46, 0, 1, v40);
    sub_100480034(v45);

    sub_100007214(v46, &qword_100616678);

    sub_10048541C(v42);
    sub_10048541C(v24);
  }

  else
  {
    memcpy(v65, v53, 0x2B0uLL);
    *v24 = v37;
    swift_storeEnumTagMultiPayload();
    objc_allocWithZone(_s15TextContentViewCMa(0));
    v47 = v37;
    sub_10046E570(v65, &v64);
    v48 = sub_1004854D0(v24, v65, 0);
    sub_10046E5CC(v65);
    [v20 addSubview:v48];

    v49 = *&v20[v38];
    *&v20[v38] = v48;

    v20[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 0;
  }
}

id sub_1004838C4(void *a1)
{
  [a1 setAlpha:0.0];
  CGAffineTransformMakeTranslation(&v3, 0.0, -20.0);
  return [a1 setTransform:&v3];
}

uint64_t sub_100483930()
{
  v81.receiver = v0;
  v81.super_class = _s20DespacitoContentViewCMa(0);
  objc_msgSendSuper2(&v81, "layoutSubviews");
  v80 = Int.seconds.getter(0);
  v73 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
  v1 = v0[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition];
  if (v1 != 2 && (v1 & 1) == 0)
  {
    sub_100484164(v0, &v80);
  }

  v3 = OBJC_IVAR___MusicDespacitoContentView_mainLineView;
  v4 = *&v0[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
  [v0 bounds];
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;

  v9 = *&v0[v3];
  swift_beginAccess();
  v10 = v80;
  v11 = v9;
  [v0 bounds];
  [v11 setFrame:{0.0, v10, CGRectGetWidth(v82), v8}];

  [*&v0[v3] frame];
  MaxY = CGRectGetMaxY(v83);
  v80 = MaxY;
  v13 = OBJC_IVAR___MusicDespacitoContentView_transliterationLineView;
  v14 = *&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView];
  if (!v14)
  {
    v27 = 0;
    goto LABEL_21;
  }

  v15 = v14;
  [v0 bounds];
  [v15 sizeThatFits:{v16, v17}];
  v19 = v18;
  [*&v0[v3] frame];
  v20 = CGRectGetMaxY(v84) + *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + 328];
  [v0 bounds];
  Width = CGRectGetWidth(v85);
  v22 = objc_opt_self();
  v23 = [v22 _isInAnimationBlockWithAnimationsEnabled];
  v24 = v0[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate];
  if (v23)
  {
    if (v24 != 2)
    {
      if (v24)
      {
        v25 = *&v0[v13];
        *&v0[v13] = 0;

        v26 = 0;
      }

      else
      {
        v38 = swift_allocObject();
        *(v38 + 16) = v15;
        *(v38 + 24) = 0;
        *(v38 + 32) = v20;
        *(v38 + 40) = Width;
        *(v38 + 48) = v19;
        v39 = swift_allocObject();
        *(v39 + 16) = sub_1004863F0;
        *(v39 + 24) = v38;
        v78 = sub_1000E639C;
        v79 = v39;
        aBlock = _NSConcreteStackBlock;
        v75 = 1107296256;
        v76 = sub_100008224;
        v77 = &unk_1005D4938;
        v40 = _Block_copy(&aBlock);
        v41 = v15;

        [v22 performWithoutAnimation:v40];
        _Block_release(v40);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          goto LABEL_40;
        }

        [v41 frame];
        MaxY = CGRectGetMaxY(v87);
        v80 = MaxY;
        v26 = sub_1004863F0;
      }

      swift_unknownObjectWeakInit();
      v44 = swift_allocObject();
      v45 = v24 & 1;
      *(v44 + 16) = v45;
      *(v44 + 24) = v15;
      v46 = v15;
      sub_100485C74(v46, v45, sub_1004863D0, v44);

      swift_unknownObjectWeakDestroy();
      v27 = v26;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v24 == 2 || (v24 & 1) == 0)
  {
LABEL_16:
    v29 = v15;
    [v29 setFrame:{0.0, v20, Width, v19}];
    [v29 frame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v86.origin.x = v31;
    v86.origin.y = v33;
    v86.size.width = v35;
    v86.size.height = v37;
    MaxY = CGRectGetMaxY(v86);

    v27 = 0;
    v80 = MaxY;
    goto LABEL_20;
  }

  [v15 removeFromSuperview];

  v28 = *&v0[v13];
  *&v0[v13] = 0;

  v27 = 0;
LABEL_20:
  v0[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
LABEL_21:
  v47 = OBJC_IVAR___MusicDespacitoContentView_translationLineView;
  v48 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationLineView];
  if (v48)
  {
    v72 = v27;
    v49 = v48;
    [v0 bounds];
    [v49 sizeThatFits:{v50, v51}];
    v53 = v52;
    v54 = MaxY + *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + 296];
    [v0 bounds];
    v55 = CGRectGetWidth(v88);
    v56 = objc_opt_self();
    v57 = [v56 _isInAnimationBlockWithAnimationsEnabled];
    v58 = v0[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate];
    if (v57)
    {
      v59 = v73;
      if (v58 != 2)
      {
        if (v58)
        {
          [v49 removeFromSuperview];
          v60 = 0;
LABEL_33:
          v68 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v69 = swift_allocObject();
          *(v69 + 16) = v58 & 1;
          *(v69 + 24) = v68;

          sub_100485C74(v49, v58 & 1, sub_1004859A4, v69);

          v59 = v73;
          goto LABEL_34;
        }

        v63 = swift_allocObject();
        *(v63 + 16) = v49;
        *(v63 + 24) = 0;
        *(v63 + 32) = v54;
        *(v63 + 40) = v55;
        *(v63 + 48) = v53;
        v64 = swift_allocObject();
        *(v64 + 16) = sub_100486650;
        *(v64 + 24) = v63;
        v78 = sub_1000E6038;
        v79 = v64;
        aBlock = _NSConcreteStackBlock;
        v75 = 1107296256;
        v76 = sub_100008224;
        v77 = &unk_1005D4898;
        v65 = _Block_copy(&aBlock);
        v66 = v49;

        [v56 performWithoutAnimation:v65];
        _Block_release(v65);
        v67 = swift_isEscapingClosureAtFileLocation();

        if ((v67 & 1) == 0)
        {
          v90.origin.x = 0.0;
          v90.origin.y = v54;
          v90.size.width = v55;
          v90.size.height = v53;
          v80 = CGRectGetMaxY(v90);
          v60 = sub_100486650;
          goto LABEL_33;
        }

LABEL_40:
        __break(1u);
        return result;
      }
    }

    else
    {
      v59 = v73;
      if (v58 != 2 && (v58 & 1) != 0)
      {
        [v49 removeFromSuperview];

        v61 = *&v0[v47];
        *&v0[v47] = 0;

        v60 = 0;
LABEL_34:
        v0[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
        v27 = v72;
        goto LABEL_35;
      }
    }

    [v49 setFrame:{0.0, v54, v55, v53, v72}];
    v89.origin.x = 0.0;
    v89.origin.y = v54;
    v89.size.width = v55;
    v89.size.height = v53;
    v62 = CGRectGetMaxY(v89);

    v60 = 0;
    v80 = v62;
    goto LABEL_34;
  }

  v60 = 0;
  v59 = v73;
LABEL_35:
  v70 = v0[v59];
  if (v70 != 2 && (v70 & 1) != 0)
  {
    v71 = v27;
    sub_100484164(v0, &v80);
    v27 = v71;
  }

  sub_10003CC4C(v27);
  return sub_10003CC4C(v60);
}

uint64_t sub_100484164(uint64_t result, double *a2)
{
  v2 = *(result + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v2)
  {
    v4 = result;
    v5 = v2;
    [v4 bounds];
    sub_10048198C(*(*&v4[OBJC_IVAR___MusicDespacitoContentView_mainLineView] + OBJC_IVAR___MusicTextContentView_isSelected), v6, v7);
    v9 = v8;
    swift_beginAccess();
    v10 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
    v11 = 0.0;
    if (v4[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition])
    {
      v11 = *&v4[OBJC_IVAR___MusicDespacitoContentView_specs + 112];
    }

    v12 = *a2 + v11;
    v13 = v5;
    [v4 bounds];
    [v13 setFrame:{0.0, v12, CGRectGetWidth(v25), v9}];
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v26.origin.x = v15;
    v26.origin.y = v17;
    v26.size.width = v19;
    v26.size.height = v21;
    MaxY = CGRectGetMaxY(v26);

    result = swift_beginAccess();
    *a2 = MaxY;
    v23 = v4[v10];
    if (v23 != 2 && (v23 & 1) == 0)
    {
      v24 = *&v4[OBJC_IVAR___MusicDespacitoContentView_specs + 112];
      result = swift_beginAccess();
      *a2 = MaxY + v24;
    }
  }

  return result;
}

void sub_100484310(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *&Strong[OBJC_IVAR___MusicDespacitoContentView_translationLineView];
      *&Strong[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
    }
  }
}

void sub_1004843C0(char **a1@<X8>)
{
  v84 = a1;
  v81 = _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v3 = (&v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003ABC(&qword_100615038);
  __chkstk_darwin();
  v86 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v72 - v5;
  __chkstk_darwin();
  v8 = &v72 - v7;
  __chkstk_darwin();
  v10 = &v72 - v9;
  v91 = &v72 - v9;
  v11 = *&v1[OBJC_IVAR___MusicDespacitoContentView_text + 8];
  v89 = *&v1[OBJC_IVAR___MusicDespacitoContentView_text];
  v77 = v11;
  v12 = OBJC_IVAR___MusicDespacitoContentView_language;
  swift_beginAccess();
  sub_1004852E4(&v1[v12], v10);
  v13 = *&v1[OBJC_IVAR___MusicDespacitoContentView_transliterationText + 8];
  v73 = *&v1[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  v79 = v13;
  v14 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
  swift_beginAccess();
  v85 = v8;
  sub_1004852E4(&v1[v14], v8);
  v15 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationText + 8];
  v74 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationText];
  v75 = v15;
  v16 = *&v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText + 8];
  v87 = *&v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
  v92 = v16;
  v80 = v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition];
  v17 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8];
  v72 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
  v90 = v17;
  v18 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  v83 = v6;
  sub_1004852E4(&v1[v18], v6);
  v82 = v1;
  memcpy(v95, &v1[OBJC_IVAR___MusicDespacitoContentView_specs], 0x2B0uLL);
  v88 = _s20DespacitoContentViewCMa(0);
  v19 = objc_allocWithZone(v88);
  v19[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
  v20 = OBJC_IVAR___MusicDespacitoContentView_language;
  v76 = OBJC_IVAR___MusicDespacitoContentView_language;
  v21 = sub_1004B6E44();
  v22 = *(*(v21 - 8) + 56);
  v22(&v19[v20], 1, 1, v21);
  v78 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
  v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
  v23 = &v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
  *v24 = 0;
  v24[1] = 0;
  v19[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
  v22(&v19[OBJC_IVAR___MusicDespacitoContentView_translationLanguage], 1, 1, v21);
  v25 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
  *v25 = 0;
  v25[1] = 0;
  v19[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
  v26 = v21;
  v27 = v75;
  v22(&v19[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v26);
  v28 = v77;
  v29 = &v19[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  *v29 = 0;
  v29[1] = 0;
  v30 = v86;
  sub_1004852E4(v91, v86);
  v31 = *(sub_100003ABC(&qword_100616680) + 48);
  v32 = v89;
  v33 = v3;
  *v3 = v89;
  v3[1] = v28;
  v34 = v3 + v31;
  v35 = v30;
  sub_1004852E4(v30, v34);
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(_s15TextContentViewCMa(0));
  swift_bridgeObjectRetain_n();
  sub_10046E570(v95, v94);

  v36 = v79;

  v37 = sub_1004854D0(v33, v95, 0);
  sub_100007214(v35, &qword_100615038);
  *&v19[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v37;
  memcpy(&v19[OBJC_IVAR___MusicDespacitoContentView_specs], v95, 0x2B0uLL);
  v38 = &v19[OBJC_IVAR___MusicDespacitoContentView_text];
  *v38 = v32;
  v38[1] = v28;
  v39 = v76;
  swift_beginAccess();

  sub_10046E570(v95, v94);
  sub_100485854(v91, &v19[v39]);
  swift_endAccess();
  v19[v78] = v80;
  v93.receiver = v19;
  v93.super_class = v88;
  v40 = objc_msgSendSuper2(&v93, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v41 = *&v40[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
  v42 = v40;
  [v42 addSubview:v41];
  if (v36)
  {
    v43 = v27;
    v44 = sub_1004BBF24();
    v46 = v45;
    if (v44 == sub_1004BBF24() && v46 == v47)
    {
    }

    else
    {
      v48 = sub_1004BD9C4();

      if (v48)
      {
      }

      else
      {
        v49 = v86;
        sub_1004852E4(v85, v86);
        v50 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
        swift_beginAccess();
        sub_1004858C4(v49, &v42[v50]);
        swift_endAccess();
        v51 = &v42[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
        *v51 = v73;
        *(v51 + 1) = v36;

        sub_10048313C();
      }
    }

    v27 = v43;
  }

  if (!v27)
  {

    v57 = v83;
    if (!v90)
    {
      goto LABEL_27;
    }

LABEL_19:
    if (v92)
    {
      v62 = sub_1004BBF24();
      v64 = v63;
      if (v62 == sub_1004BBF24() && v64 == v65)
      {

        goto LABEL_27;
      }

      v66 = sub_1004BD9C4();

      if ((v66 & 1) == 0)
      {
        sub_1004828A4(v72, v90);
        goto LABEL_27;
      }
    }

    goto LABEL_27;
  }

  v52 = sub_1004BBF24();
  v54 = v53;

  v56 = sub_1004BBF24();
  v57 = v83;
  if (v52 == v56 && v54 == v55)
  {

    goto LABEL_16;
  }

  v58 = sub_1004BD9C4();

  if (v58)
  {
LABEL_16:

    if (!v90)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v59 = v86;
  sub_1004852E4(v57, v86);
  v60 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  sub_1004858C4(v59, &v42[v60]);
  swift_endAccess();
  v61 = &v42[OBJC_IVAR___MusicDespacitoContentView_translationText];
  *v61 = v74;
  *(v61 + 1) = v27;

  sub_100482950();
  if (v90)
  {
    goto LABEL_19;
  }

LABEL_27:
  v67 = &v42[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
  v68 = v92;
  *v67 = v87;
  *(v67 + 1) = v68;

  sub_100481E6C();

  sub_10046E5CC(v95);
  sub_100007214(v57, &qword_100615038);
  sub_100007214(v85, &qword_100615038);
  sub_100007214(v91, &qword_100615038);
  v69 = OBJC_IVAR___MusicDespacitoContentView_mainLineView;
  v70 = v82;
  sub_1004818B4(*(*&v82[OBJC_IVAR___MusicDespacitoContentView_mainLineView] + OBJC_IVAR___MusicTextContentView_isSelected), 0);
  sub_1004815E0(*(*&v70[v69] + OBJC_IVAR___MusicTextContentView_alignment));
  [v70 bounds];
  [v42 setFrame:?];

  v71 = v84;
  v84[3] = v88;
  *v71 = v42;
}

uint64_t sub_100484CE8(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v7);

  sub_100009178(v7, v7[3]);
  v5 = sub_1004BD9A4();
  sub_100004C6C(v7);
  return v5;
}

id sub_100484D98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100484F84()
{
  sub_100467FD8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10048507C()
{
  sub_100485100();
  if (v0 <= 0x3F)
  {
    sub_100009130(319, &qword_100615B58);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100485100()
{
  if (!qword_100616640)
  {
    sub_100003B68(&qword_100615038);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100616640);
    }
  }
}

unint64_t sub_100485178()
{
  result = qword_100616670;
  if (!qword_100616670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616670);
  }

  return result;
}

uint64_t sub_1004851CC(const void *a1)
{
  v3 = *v1;
  memcpy(__dst, (v3 + OBJC_IVAR___MusicDespacitoContentView_specs), sizeof(__dst));
  memcpy((v3 + OBJC_IVAR___MusicDespacitoContentView_specs), a1, 0x2B0uLL);
  sub_10046E570(a1, &v5);
  sub_10046E5CC(__dst);
  sub_100480FCC();
  return sub_10046E5CC(a1);
}

uint64_t sub_1004852E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100615038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100485354(uint64_t a1, uint64_t a2)
{
  v4 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004853B8(uint64_t a1, uint64_t a2)
{
  v4 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10048541C(uint64_t a1)
{
  v2 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100485478()
{
  result = qword_100616F20;
  if (!qword_100616F20)
  {
    _s3__C3KeyVMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616F20);
  }

  return result;
}

char *sub_1004854D0(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a3;
  v6 = _s15TextContentViewC7ContentOMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100616678);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v3[OBJC_IVAR___MusicTextContentView_isSelected] = 0;
  *&v3[OBJC_IVAR___MusicTextContentView_alignment] = 0;
  v3[OBJC_IVAR___MusicTextContentView_isScrolling] = 1;
  v12 = OBJC_IVAR___MusicTextContentView_label;
  v13 = [objc_allocWithZone(UILabel) init];
  [v13 setAdjustsFontForContentSizeCategory:1];
  [v13 setLineBreakStrategy:3];
  [v13 setNumberOfLines:0];
  [v13 setTextAlignment:4];
  [v13 setAutoresizingMask:18];
  *&v3[v12] = v13;
  *&v3[OBJC_IVAR___MusicTextContentView_selectedLabel] = 0;
  v14 = OBJC_IVAR___MusicTextContentView_textColorOverride;
  *&v3[OBJC_IVAR___MusicTextContentView_textColorOverride] = 0;
  sub_100485354(a1, &v3[OBJC_IVAR___MusicTextContentView_content]);
  memcpy(&v3[OBJC_IVAR___MusicTextContentView_specs], a2, 0x2B0uLL);
  v15 = v27;
  *&v3[v14] = v27;
  sub_10046E570(a2, &v29);
  v16 = _s15TextContentViewCMa(0);
  v28.receiver = v3;
  v28.super_class = v16;
  v17 = v15;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = sub_10044E090(&off_1005D0A48);
  (*(v7 + 56))(v11, 1, 1, v6);
  v20 = v18;
  sub_100480034(v19);
  v21 = a1;

  sub_100007214(v11, &qword_100616678);
  sub_100485354(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10048541C(v9);
    v22 = &off_100616000;
  }

  else
  {

    v23 = *&v20[OBJC_IVAR___MusicTextContentView_label];
    if (*(a2 + 88))
    {
      v24 = 4;
    }

    else
    {
      v24 = *(a2 + 80);
    }

    v25 = *(sub_100003ABC(&qword_100616680) + 48);
    [v23 setTextAlignment:v24];
    sub_100007214(&v9[v25], &qword_100615038);
    v22 = &off_100616000;
  }

  [v20 addSubview:{*(v22[150] + v20), v27}];

  sub_10048541C(v21);
  return v20;
}

uint64_t sub_100485854(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100615038);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004858C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100615038);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100485934()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10048596C()
{

  return swift_deallocObject();
}

void sub_1004859B0()
{
  *(v0 + OBJC_IVAR___MusicTextContentView_isSelected) = 0;
  *(v0 + OBJC_IVAR___MusicTextContentView_alignment) = 0;
  *(v0 + OBJC_IVAR___MusicTextContentView_isScrolling) = 1;
  v1 = OBJC_IVAR___MusicTextContentView_label;
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setLineBreakStrategy:3];
  [v2 setNumberOfLines:0];
  [v2 setTextAlignment:4];
  [v2 setAutoresizingMask:18];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR___MusicTextContentView_selectedLabel) = 0;
  *(v0 + OBJC_IVAR___MusicTextContentView_textColorOverride) = 0;
  sub_1004BD624();
  __break(1u);
}

void sub_100485ADC()
{
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_isScrolling) = 1;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationLineView) = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView) = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView) = 0;
  v1 = OBJC_IVAR___MusicDespacitoContentView_language;
  v2 = sub_1004B6E44();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition) = 2;
  v4 = (v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate) = 2;
  v3(v0 + OBJC_IVAR___MusicDespacitoContentView_translationLanguage, 1, 1, v2);
  v6 = (v0 + OBJC_IVAR___MusicDespacitoContentView_translationText);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate) = 2;
  v3(v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage, 1, 1, v2);
  v7 = (v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationText);
  *v7 = 0;
  v7[1] = 0;
  sub_1004BD624();
  __break(1u);
}

void sub_100485C74(id a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_100009130(0, &qword_100616AF0);
    v7.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:130.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v36 = sub_100470754;
    v37 = v8;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1000D6C80;
    v35 = &unk_1005D4988;
    v9 = _Block_copy(&v32);
    v10 = a1;

    [(objc_class *)v7.super.isa addAnimations:v9];
    _Block_release(v9);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v36 = sub_100009350;
    v37 = v11;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10013ABCC;
    v35 = &unk_1005D49D8;
    v12 = _Block_copy(&v32);

    [(objc_class *)v7.super.isa addCompletion:v12];
    _Block_release(v12);
    v13 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.14 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    v36 = sub_10047075C;
    v37 = v14;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1000D6C80;
    v35 = &unk_1005D4A28;
    v15 = _Block_copy(&v32);
    v16 = v10;

    [v13 addAnimations:v15];
    _Block_release(v15);
    [(objc_class *)v7.super.isa startAnimation];
    [v13 startAnimation];
LABEL_5:

    return;
  }

  [a1 alpha];
  v18 = v17;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100486444;
  *(v21 + 24) = v20;
  v36 = sub_1000E639C;
  v37 = v21;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100008224;
  v35 = &unk_1005D4AA0;
  v22 = _Block_copy(&v32);
  v23 = a1;

  [v19 performWithoutAnimation:v22];
  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    sub_100009130(0, &qword_100616AF0);
    v7.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v36 = sub_100470804;
    v37 = v24;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1000D6C80;
    v35 = &unk_1005D4AF0;
    v25 = _Block_copy(&v32);
    v26 = v23;

    [(objc_class *)v7.super.isa addAnimations:v25];
    _Block_release(v25);
    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;
    v36 = sub_1000081FC;
    v37 = v27;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10013ABCC;
    v35 = &unk_1005D4B40;
    v28 = _Block_copy(&v32);

    [(objc_class *)v7.super.isa addCompletion:v28];
    _Block_release(v28);
    v13 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.4 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v18;
    v36 = sub_100486484;
    v37 = v29;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1000D6C80;
    v35 = &unk_1005D4B90;
    v30 = _Block_copy(&v32);
    v31 = v26;

    [v13 addAnimations:v30];
    _Block_release(v30);
    [(objc_class *)v7.super.isa startAnimation];
    [v13 startAnimation];

    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_100486338()
{

  return swift_deallocObject();
}

uint64_t sub_100486380(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100486398()
{

  return swift_deallocObject();
}

id sub_1004863D0()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) removeFromSuperview];
  }

  return result;
}

uint64_t sub_10048640C()
{

  return swift_deallocObject();
}

uint64_t sub_10048644C()
{

  return swift_deallocObject();
}

uint64_t sub_100486498(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100615038);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100486508()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [*(v1 + OBJC_IVAR___MusicTextContentView_label) setAlpha:1.0 - v2];
  result = *(v1 + OBJC_IVAR___MusicTextContentView_selectedLabel);
  if (result)
  {

    return [result setAlpha:v2];
  }

  return result;
}

unint64_t sub_1004865B4()
{
  result = qword_100616688;
  if (!qword_100616688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616688);
  }

  return result;
}

uint64_t sub_100486684@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  return sub_10001342C(v1 + v3, a1);
}

id sub_1004866DC()
{
  v1 = UIView.untransformedFrame.getter();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
  if (v8 == 2)
  {
    v9 = CGPoint.centerRight.unsafeMutableAddressor();
  }

  else if (v8)
  {
    v9 = CGPoint.center.unsafeMutableAddressor();
  }

  else
  {
    v9 = CGPoint.centerLeft.unsafeMutableAddressor();
  }

  v10 = v9;
  swift_beginAccess();
  [v0 setAnchorPoint:{*v10, v10[1]}];
  return UIView.untransformedFrame.setter(v1, v3, v5, v7);
}

void sub_10048678C(void *a1)
{
  v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
  v3 = *&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [a1 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3 == a1)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView] addSubview:v4];
  v5 = objc_opt_self();
  sub_100003ABC(&qword_100616B10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004C51F0;
  v7 = [v4 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [v4 trailingAnchor];
  v11 = [v1 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [v4 topAnchor];
  v14 = [v1 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [v4 bottomAnchor];
  v17 = [v1 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 56) = v18;
  sub_100009130(0, &qword_100616718);
  isa = sub_1004BC284().super.isa;

  [v5 activateConstraints:isa];
}

void (*sub_100486A6C(uint64_t a1))(__int128 *a1, char a2)
{
  v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_100486AC8;
}

void sub_100486AC8(__int128 *a1, char a2)
{
  v3 = (*(a1 + 2) + *(a1 + 3));
  v8 = *v3;
  v4 = *a1;
  *v3 = *a1;
  v5 = v4;
  v6 = v5;
  if (a2)
  {
    v7 = v5;
    sub_10048678C(v8);
  }

  else
  {
    sub_10048678C(v8);
  }
}

id sub_100486B60()
{
  v1 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView;
  v2 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView];
  }

  else
  {
    v4 = sub_100486BC4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100486BC4(char *a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = &a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs];
  [v2 setBackgroundColor:*&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 568]];
  [v2 setAlpha:0.0];
  v4 = [v2 layer];
  [v4 setCornerCurve:kCACornerCurveContinuous];

  v5 = [v2 layer];
  [v5 setCornerRadius:v3[72]];

  [a1 insertSubview:v2 atIndex:0];
  v6 = objc_opt_self();
  sub_100003ABC(&qword_100616B10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C51F0;
  v8 = [v2 leadingAnchor];
  v9 = [a1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-v3[73]];

  *(v7 + 32) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [a1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:v3[73]];

  *(v7 + 40) = v13;
  v14 = [v2 topAnchor];
  v15 = [a1 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-v3[73]];

  *(v7 + 48) = v16;
  v17 = [v2 bottomAnchor];
  v18 = [a1 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:v3[73]];

  *(v7 + 56) = v19;
  sub_100009130(0, &qword_100616718);
  isa = sub_1004BC284().super.isa;

  [v6 activateConstraints:isa];

  return v2;
}

id sub_100486FC4(char a1)
{
  v2 = a1 & 1;
  result = [v1 isHighlighted];
  if (result == v2)
  {
    return result;
  }

  v4 = sub_100486B60();
  if ([v1 isHighlighted])
  {
    v5 = &v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius];
    *v5 = *&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius];
    v5[8] = 0;
    v6 = 0.0;
LABEL_6:
    sub_100487C74(1, v6);
    goto LABEL_7;
  }

  if ((v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius + 8] & 1) == 0)
  {
    v6 = *&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius];
    goto LABEL_6;
  }

LABEL_7:
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v4;
  v9 = v4;
  v10 = v1;
  v11 = v9;
  v12 = [v10 isHighlighted];
  v13 = objc_allocWithZone(UISpringTimingParameters);
  if (v12)
  {
    v14 = 24.0;
  }

  else
  {
    v14 = 50.0;
  }

  v15 = 322.0;
  if (!v12)
  {
    v15 = 300.0;
  }

  v16 = 2.0;
  if (v12)
  {
    v16 = 1.0;
    v17 = 0.0;
  }

  else
  {
    v17 = 0.1;
  }

  if (v12)
  {
    v18 = 0.2;
  }

  else
  {
    v18 = 0.3;
  }

  v19 = [v13 initWithMass:v16 stiffness:v15 damping:v14 initialVelocity:{0.0, 0.0}];
  v20 = sub_1004969C0(v12);
  v21 = objc_opt_self();
  v36 = sub_10048F834;
  v37 = v7;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1000D6C80;
  v35 = &unk_1005D4F08;
  v22 = _Block_copy(&v32);
  swift_unknownObjectRetain();

  [v21 _animateWithDuration:0 delay:v20 options:v22 factory:0 animations:v18 completion:v17];
  _Block_release(v22);
  swift_unknownObjectRelease();
  [v19 settlingDuration];
  v24 = v23;
  [v19 mass];
  v26 = v25;
  [v19 stiffness];
  v28 = v27;
  [v19 damping];
  v30 = v29;
  v36 = sub_10048F83C;
  v37 = v8;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1000D6C80;
  v35 = &unk_1005D4F30;
  v31 = _Block_copy(&v32);

  [v21 _animateUsingSpringWithDuration:0 delay:v31 options:0 mass:v24 stiffness:v17 damping:v26 initialVelocity:v28 animations:v30 completion:0.0];

  swift_unknownObjectRelease();
  _Block_release(v31);
}

void sub_100487370(void *a1, char *a2)
{
  v4 = [a2 isHighlighted];
  v5 = 0.0;
  v6 = 1.0;
  if (v4)
  {
    v5 = 1.0;
  }

  [a1 setAlpha:v5];
  v7 = *&a2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView];
  if ([a2 isHighlighted])
  {
    v6 = *&a2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 560];
  }

  [v7 setAlpha:v6];
}

id sub_100487434(char *a1, void *a2)
{
  if ([a1 isHighlighted])
  {
    v4 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 512];
    v5 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 520];
    v6 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 528];
    v7 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 536];
    v8 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 544];
    v9 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 552];
  }

  else
  {
    v5 = 0;
    v4 = 1.0;
    v6 = 0;
    v7 = 1.0;
    v8 = 0;
    v9 = 0;
  }

  v10 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView];
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  [v10 setTransform:&v12];
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  return [a2 setTransform:&v12];
}

void sub_10048769C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
  v3 = *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v17[0] = v3;
    (*(v4 + 80))(ObjectType, v4);
  }

  v6 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
  *(v1 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling) = 1;
  v8 = sub_100486A6C(v17);
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v1 + v6);
    v11 = *(v7 + 8);
    v12 = v7;
    v13 = swift_getObjectType();
    v14 = *(v11 + 40);
    v15 = v9;
    v14(v10, v13, v11);
    v16 = *v12;
    *v12 = v9;
    *(v12 + 8) = v11;
  }

  v8(v17, 0);
  sub_1004877C8(0, 0);
}

void sub_1004877C8(char a1, void *a2)
{
  if ([v2 isSelected] != (a1 & 1))
  {
    if ((a1 & 1) != 0 && v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused] == 1)
    {
      sub_10048809C(0, a2 != 0);
    }

    v5 = a1 & 1;
    [v2 setSelected:a1 & 1];
    if ([v2 isHighlighted])
    {
      [v2 setHighlighted:0];
      [v2 cancelTrackingWithEvent:0];
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;
      v8 = sub_10048F85C;
      if (!a2)
      {
LABEL_7:
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v10 = Strong;
          if (a1)
          {
            v29 = xmmword_1004D9D20;
            v28 = xmmword_1004D9B70;
            v11 = 0;
            v12 = 0;
          }

          else
          {
            v28 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 400);
            v29 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 416);
            v11 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 432);
            v12 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 440);
          }

          v31 = v29;
          aBlock = v28;
          v32 = v11;
          v33 = v12;
          [v10 setTransform:&aBlock];
        }

        v22 = &v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
        v23 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
        if (v23)
        {
          v24 = *(v22 + 1);
          ObjectType = swift_getObjectType();
          *&aBlock = v23;
          v26 = *(v24 + 88);
          v27 = v23;
          v26(a1 & 1, 0, ObjectType, v24);
        }

LABEL_18:

        return;
      }
    }

    else
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v13;
      *(v7 + 24) = v5;
      v8 = sub_10048F660;
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    v32 = v8;
    v33 = v7;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v31 = sub_1000D6C80;
    *(&v31 + 1) = &unk_1005D4E68;
    v14 = _Block_copy(&aBlock);
    v15 = a2;

    [v15 addAnimations:v14];
    _Block_release(v14);
    v16 = &v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v17 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v17)
    {
      v18 = *(v16 + 1);
      v19 = swift_getObjectType();
      *&aBlock = v17;
      v20 = *(v18 + 88);
      v21 = v17;
      v20(a1 & 1, 1, v19, v18);

      return;
    }

    goto LABEL_18;
  }
}

void sub_100487B64(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v4 = xmmword_1004D9D20;
      v5 = xmmword_1004D9B70;
      v6 = 0uLL;
    }

    else
    {
      v5 = *&Strong[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 400];
      v4 = *&Strong[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 416];
      v6 = *&Strong[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 432];
    }

    v8[0] = v5;
    v8[1] = v4;
    v8[2] = v6;
    v7 = Strong;
    [Strong setTransform:v8];
  }
}

void sub_100487C74(char a1, double a2)
{
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
  v6 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius;
  if (*&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius] != a2)
  {
    v36 = v5;
    v7 = [v5 timingParameters];
    if (v7)
    {
      v8 = [v7 cubicTimingParameters];
      swift_unknownObjectRelease();
      if (v8)
      {
        v9 = sub_1004BBE24();
        v10 = [objc_opt_self() animationWithKeyPath:v9];

        v11 = v10;
        v12 = 0.0;
        if (a1)
        {
          [v36 duration];
        }

        [v11 setDuration:v12];
        [v11 setFillMode:kCAFillModeBoth];
        isa = sub_1004B7194().super.super.isa;
        [v11 setFromValue:isa];

        v14 = sub_1004B7194().super.super.isa;
        [v11 setToValue:v14];

        [v11 setRemovedOnCompletion:0];
        [v8 controlPoint1];
        v16 = v15;
        [v8 controlPoint1];
        v18 = v17;
        [v8 controlPoint2];
        v20 = v19;
        [v8 controlPoint2];
        v22 = v21;
        v23 = objc_allocWithZone(CAMediaTimingFunction);
        *&v24 = v16;
        *&v25 = v18;
        *&v26 = v20;
        *&v27 = v22;
        v28 = [v23 initWithControlPoints:v24 :v25 :v26 :v27];
        [v11 setTimingFunction:v28];

        v29 = [v2 layer];
        [v29 setShouldRasterize:0];

        v30 = objc_opt_self();
        [v30 begin];
        v31 = swift_allocObject();
        *(v31 + 16) = v2;
        aBlock[4] = sub_10048F860;
        aBlock[5] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000D6C80;
        aBlock[3] = &unk_1005D4DF0;
        v32 = _Block_copy(aBlock);
        v33 = v2;

        [v30 setCompletionBlock:v32];
        _Block_release(v32);
        v34 = [v33 layer];
        v35 = sub_1004BBE24();
        [v34 addAnimation:v11 forKey:v35];

        [v30 commit];
        *&v2[v6] = a2;
        return;
      }
    }

    v5 = v36;
  }
}

void sub_10048809C(char a1, char a2)
{
  if ([v2 isSelected])
  {
    return;
  }

  v5 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter;
  if (!*&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter])
  {
    v6 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorBrightness];
    isa = sub_1004BC6E4().super.super.isa;
    [v6 setValue:isa forKey:kCAFilterInputAmount];

    v8 = [v2 layer];
    sub_100003ABC(&qword_100615758);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1004C50C0;
    v10 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter];
    v11 = sub_100009130(0, &qword_100615B68);
    *(v9 + 32) = v10;
    *(v9 + 88) = v11;
    *(v9 + 56) = v11;
    *(v9 + 64) = v6;
    v12 = v10;
    v13 = v6;
    v14 = sub_1004BC284().super.isa;

    [v8 setFilters:v14];

    v15 = *&v2[v5];
    *&v2[v5] = v13;
  }

  v16 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
  v17 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused;
  if (v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused] != (a1 & 1))
  {
    v51 = v16;
    v18 = [v16 timingParameters];
    if (v18)
    {
      v19 = [v18 cubicTimingParameters];
      swift_unknownObjectRelease();
      if (v19)
      {
        v20 = sub_1004BBE24();
        v21 = [objc_opt_self() animationWithKeyPath:v20];

        v22 = v21;
        v23 = 0.0;
        if (a2)
        {
          [v51 duration];
        }

        [v22 setDuration:{v23, "previousBlurRadius"}];
        [v22 setFillMode:kCAFillModeBoth];
        v24 = v2[v17];
        v53 = &type metadata for Int;
        aBlock[0] = v24;
        sub_100009178(aBlock, &type metadata for Int);
        v25 = sub_1004BD9A4();
        sub_100004C6C(aBlock);
        [v22 setFromValue:v25];
        swift_unknownObjectRelease();
        v53 = &type metadata for Int;
        aBlock[0] = a1 & 1;
        sub_100009178(aBlock, &type metadata for Int);
        v26 = sub_1004BD9A4();
        sub_100004C6C(aBlock);
        [v22 setToValue:v26];
        swift_unknownObjectRelease();
        [v19 controlPoint1];
        v28 = v27;
        [v19 controlPoint1];
        v30 = v29;
        [v19 controlPoint2];
        v32 = v31;
        [v19 controlPoint2];
        v34 = v33;
        v35 = objc_allocWithZone(CAMediaTimingFunction);
        *&v36 = v28;
        *&v37 = v30;
        *&v38 = v32;
        *&v39 = v34;
        v40 = [v35 initWithControlPoints:v36 :v37 :v38 :v39];
        [v22 setTimingFunction:v40];

        v41 = [v2 layer];
        [v41 setShouldRasterize:0];

        v42 = objc_opt_self();
        [v42 begin];
        v43 = swift_allocObject();
        *(v43 + 16) = v2;
        v54 = sub_10048F5BC;
        v55 = v43;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000D6C80;
        v53 = &unk_1005D4DA0;
        v44 = _Block_copy(aBlock);
        v45 = v2;

        [v42 setCompletionBlock:v44];
        _Block_release(v44);
        v46 = [v45 layer];
        v47 = sub_1004BBE24();
        [v46 addAnimation:v22 forKey:v47];

        [v42 commit];
        v48 = [v45 layer];
        v49 = [v22 toValue];
        v50 = sub_1004BBE24();
        [v48 setValue:v49 forKeyPath:v50];

        swift_unknownObjectRelease();
        v2[v17] = a1 & 1;
        return;
      }
    }

    v16 = v51;
  }
}

void sub_1004886CC(void *a1)
{
  v1 = [a1 layer];
  [v1 setShouldRasterize:1];
}

void sub_100488724()
{
  sub_100003ABC(&qword_100616678);
  __chkstk_darwin();
  v693 = &v640 - v1;
  sub_1004B6E64();
  __chkstk_darwin();
  v691 = &v640 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v706 = sub_1004BBE14();
  v710 = *(v706 - 1);
  __chkstk_darwin();
  v705 = &v640 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v640 - v4;
  v703 = _s15TextContentViewC7ContentOMa(0);
  v692 = *(v703 - 1);
  __chkstk_darwin();
  v673 = (&v640 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v702 = (&v640 - v7);
  v708 = type metadata accessor for Lyrics.Translation.Line(0);
  v709 = *(v708 - 1);
  __chkstk_darwin();
  *&v704 = &v640 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100616EF0);
  __chkstk_darwin();
  v689 = &v640 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v674 = &v640 - v10;
  __chkstk_darwin();
  v688 = &v640 - v11;
  __chkstk_darwin();
  v680 = &v640 - v12;
  __chkstk_darwin();
  v652 = &v640 - v13;
  __chkstk_darwin();
  v679 = &v640 - v14;
  __chkstk_darwin();
  v668 = (&v640 - v15);
  __chkstk_darwin();
  v667 = &v640 - v16;
  __chkstk_darwin();
  v666 = &v640 - v17;
  __chkstk_darwin();
  v661 = &v640 - v18;
  __chkstk_darwin();
  v665 = &v640 - v19;
  __chkstk_darwin();
  v658 = &v640 - v20;
  sub_100003ABC(&qword_100616C00);
  __chkstk_darwin();
  v687 = &v640 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v640 - v22;
  __chkstk_darwin();
  v678 = &v640 - v24;
  __chkstk_darwin();
  v26 = &v640 - v25;
  __chkstk_darwin();
  v657 = &v640 - v27;
  __chkstk_darwin();
  v656 = &v640 - v28;
  __chkstk_darwin();
  v655 = &v640 - v29;
  __chkstk_darwin();
  v654 = &v640 - v30;
  __chkstk_darwin();
  v672 = &v640 - v31;
  __chkstk_darwin();
  v671 = (&v640 - v32);
  __chkstk_darwin();
  v670 = &v640 - v33;
  __chkstk_darwin();
  v669 = &v640 - v34;
  __chkstk_darwin();
  v698 = (&v640 - v35);
  __chkstk_darwin();
  v644 = &v640 - v36;
  __chkstk_darwin();
  v643 = &v640 - v37;
  __chkstk_darwin();
  v642 = &v640 - v38;
  __chkstk_darwin();
  v641 = &v640 - v39;
  __chkstk_darwin();
  v648 = &v640 - v40;
  __chkstk_darwin();
  v647 = &v640 - v41;
  __chkstk_darwin();
  v646 = &v640 - v42;
  __chkstk_darwin();
  v645 = &v640 - v43;
  __chkstk_darwin();
  v664 = &v640 - v44;
  __chkstk_darwin();
  v663 = &v640 - v45;
  __chkstk_darwin();
  v662 = &v640 - v46;
  __chkstk_darwin();
  v660 = &v640 - v47;
  __chkstk_darwin();
  v659 = &v640 - v48;
  __chkstk_darwin();
  v686 = &v640 - v49;
  sub_100003ABC(&qword_100615038);
  __chkstk_darwin();
  v701 = &v640 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v700 = (&v640 - v51);
  __chkstk_darwin();
  v707 = &v640 - v52;
  __chkstk_darwin();
  v696 = (&v640 - v53);
  __chkstk_darwin();
  v695 = &v640 - v54;
  __chkstk_darwin();
  v699 = (&v640 - v55);
  __chkstk_darwin();
  v676 = &v640 - v56;
  __chkstk_darwin();
  v675 = &v640 - v57;
  __chkstk_darwin();
  v682 = &v640 - v58;
  __chkstk_darwin();
  v684 = &v640 - v59;
  __chkstk_darwin();
  v683 = &v640 - v60;
  __chkstk_darwin();
  v694 = &v640 - v61;
  __chkstk_darwin();
  v690 = &v640 - v62;
  __chkstk_darwin();
  v697 = &v640 - v63;
  __chkstk_darwin();
  v649 = &v640 - v64;
  __chkstk_darwin();
  v651 = &v640 - v65;
  __chkstk_darwin();
  v650 = &v640 - v66;
  __chkstk_darwin();
  v653 = &v640 - v67;
  __chkstk_darwin();
  v711 = &v640 - v68;
  __chkstk_darwin();
  v677 = &v640 - v69;
  __chkstk_darwin();
  v685 = &v640 - v70;
  __chkstk_darwin();
  v681 = &v640 - v71;
  v72 = type metadata accessor for Lyrics.TextLine(0);
  v712 = *(v72 - 1);
  __chkstk_darwin();
  v74 = &v640 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v640 - v75;
  __chkstk_darwin();
  v78 = &v640 - v77;
  sub_1004866DC();
  v79 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  v713 = v0;
  sub_10001342C(&v0[v79], v722);
  sub_100003ABC(&qword_1006150F8);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v709 = v739;
      v712 = [objc_allocWithZone(NSMutableAttributedString) init];
      v89 = v5;
      sub_1004BBDA4();
      v90 = v710;
      v91 = v5;
      v92 = v706;
      v708 = v710[2];
      v708(v705, v91, v706);
      if (qword_100614E40 != -1)
      {
        swift_once();
      }

      v93 = qword_100619A00;
      v94 = qword_100619A00;
      v700 = v93;
      v95 = v94;
      sub_1004B6DF4();
      v96 = v95;
      v711 = sub_1004BBED4();
      v97 = *(v90 + 8);
      v710 = (v90 + 8);
      v699 = v97;
      (v97)(v89, v92);
      v707 = sub_100003ABC(&unk_100616F00);
      v98 = swift_allocObject();
      v704 = xmmword_1004C50A0;
      *(v98 + 16) = xmmword_1004C50A0;
      *(v98 + 32) = NSFontAttributeName;
      v99 = &v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs];
      v100 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 232];
      v701 = sub_100009130(0, &qword_100616F10);
      *(v98 + 64) = v701;
      *(v98 + 40) = v100;
      v698 = NSFontAttributeName;
      v101 = v100;
      sub_100447ACC(v98);
      swift_setDeallocating();
      sub_100007214(v98 + 32, &qword_100615670);
      swift_deallocClassInstance();
      v102 = objc_allocWithZone(NSAttributedString);
      v103 = sub_1004BBE24();

      _s3__C3KeyVMa_1(0);
      v697 = v104;
      v696 = sub_100485478();
      isa = sub_1004BBC24().super.isa;

      v106 = [v102 initWithString:v103 attributes:isa];

      v107 = v712;
      v711 = v106;
      [v712 appendAttributedString:v106];
      *&v741[0] = v709;
      sub_1004BBDA4();
      v108 = v706;
      v708(v705, v89, v706);
      sub_1004B6DF4();
      v109 = v99;
      sub_1004BBED4();
      (v699)(v89, v108);
      sub_100003ABC(&qword_1006157C8);
      sub_100454F4C();
      sub_1004BBD34();

      v110 = swift_allocObject();
      *(v110 + 16) = v704;
      *(v110 + 32) = v698;
      v111 = *(v99 + 30);
      *(v110 + 64) = v701;
      *(v110 + 40) = v111;
      v112 = v111;
      sub_100447ACC(v110);
      swift_setDeallocating();
      sub_100007214(v110 + 32, &qword_100615670);
      swift_deallocClassInstance();
      v113 = objc_allocWithZone(NSAttributedString);
      v114 = sub_1004BBE24();

      v115 = sub_1004BBC24().super.isa;

      v116 = [v113 initWithString:v114 attributes:v115];

      [v107 appendAttributedString:v116];
      v117 = &v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      v118 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      if (v118 && (_s15TextContentViewCMa(0), (v119 = swift_dynamicCastClass()) != 0))
      {
        v120 = v119;
        v121 = v702;
        *v702 = v107;
        v709 = v109;
        v122 = v703;
        swift_storeEnumTagMultiPayload();
        v123 = OBJC_IVAR___MusicTextContentView_content;
        swift_beginAccess();
        v710 = v116;
        v124 = v673;
        sub_10048F51C(v120 + v123, v673, _s15TextContentViewC7ContentOMa);
        swift_beginAccess();
        v125 = v107;
        v708 = v118;
        sub_1004853B8(v121, v120 + v123);
        swift_endAccess();
        v126 = sub_10044E090(&off_1005D0C28);
        v127 = v693;
        sub_10048F51C(v124, v693, _s15TextContentViewC7ContentOMa);
        v128 = v692[7];
        v128(v127, 0, 1, v122);
        sub_100480034(v126);

        sub_100007214(v127, &qword_100616678);
        v129 = v124;
        v116 = v710;
        sub_10048F4BC(v129, _s15TextContentViewC7ContentOMa);
        sub_10048F4BC(v121, _s15TextContentViewC7ContentOMa);
        v130 = *(v709 + 96);
        if (*(v709 + 104))
        {
          v130 = 4;
        }

        *(v120 + OBJC_IVAR___MusicTextContentView_alignment) = v130;
        v131 = sub_10044E090(&off_1005D0C50);
        v128(v127, 1, 1, v122);
        v107 = v712;
        sub_100480034(v131);

        sub_100007214(v127, &qword_100616678);
        v132 = v713;
      }

      else
      {
        memcpy(v741, v109, 0x2B0uLL);
        v138 = v702;
        v139 = v703;
        *v702 = v107;
        swift_storeEnumTagMultiPayload();
        v140 = objc_allocWithZone(_s15TextContentViewCMa(0));
        v141 = v107;
        sub_10046E570(v741, &v719);
        v142 = sub_1004854D0(v138, v741, 0);
        sub_10046E5CC(v741);
        v143 = v109[12];
        if (*(v109 + 104))
        {
          v143 = 4;
        }

        *&v142[OBJC_IVAR___MusicTextContentView_alignment] = v143;
        v144 = sub_10044E090(&off_1005D0C78);
        v145 = v693;
        (v692[7])(v693, 1, 1, v139);
        sub_100480034(v144);

        sub_100007214(v145, &qword_100616678);
        v146 = *v117;
        *v117 = v142;
        *(v117 + 1) = &off_1005D4790;
        v147 = v142;
        v132 = v713;
        sub_10048678C(v146);
      }

      [v132 setEnabled:0];

      goto LABEL_300;
    }

    if (!swift_dynamicCast())
    {
LABEL_300:
      sub_100004C6C(v722);
      return;
    }

    v133 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
    v134 = v713;
    v135 = &v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v136 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs])
    {
      *v135 = 0;
      v135[1] = 0;
      sub_10048678C(v136);
LABEL_271:

      [v134 setEnabled:1];
      goto LABEL_300;
    }

    v206 = v736[0];
    v207 = *&v736[1];
    v208 = v737;
    v209 = v738;
    if (v136)
    {
      _s23InstrumentalContentViewCMa();
      v210 = swift_dynamicCastClass();
      if (v210)
      {
        v211 = v210;
        v212 = v210 + OBJC_IVAR___MusicInstrumentalContentView_line;
        *v212 = v206;
        *(v212 + 8) = v207;
        *(v212 + 16) = v208;
        *(v212 + 24) = v209;
        *(v210 + OBJC_IVAR___MusicInstrumentalContentView_isSelected) = 0;
        v136 = v136;
        sub_10047D674();
        v134 = v713;
        v213 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
        v214 = OBJC_IVAR___MusicInstrumentalContentView_alignment;
        v215 = *&v211[OBJC_IVAR___MusicInstrumentalContentView_alignment];
        *&v211[OBJC_IVAR___MusicInstrumentalContentView_alignment] = v213;
        if (v213 == v215)
        {
          goto LABEL_271;
        }

        v216 = OBJC_IVAR___MusicInstrumentalContentView_dots;
        swift_beginAccess();
        v217 = *&v211[v216];
        if (v217 >> 62)
        {
          if (sub_1004BD6A4())
          {
LABEL_58:
            v218 = &v211[OBJC_IVAR___MusicInstrumentalContentView_specs];
            v219 = *&v211[OBJC_IVAR___MusicInstrumentalContentView_specs + 608];
            v220 = v219 * *&v211[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + (*&v211[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + -1.0) * *&v211[OBJC_IVAR___MusicInstrumentalContentView_specs + 616];
            v221 = Int.seconds.getter(0);
            v222 = *&v211[v214];
            if (v222 == 1)
            {
              [v211 bounds];
              v223 = (CGRectGetWidth(v745) - v220) * 0.5;
            }

            else
            {
              v223 = v221;
              if (v222 == 2)
              {
                [v211 bounds];
                v223 = CGRectGetWidth(v742) - v220;
              }
            }

            v605 = *&v211[v216];
            if (v605 >> 62)
            {
              v606 = sub_1004BD6A4();
              if (v606)
              {
LABEL_283:
                if (v606 >= 1)
                {

                  v607 = 0;
                  do
                  {
                    if ((v605 & 0xC000000000000001) != 0)
                    {
                      v608 = sub_1004BD484();
                    }

                    else
                    {
                      v608 = *(v605 + 8 * v607 + 32);
                    }

                    v609 = v608;
                    ++v607;
                    [v211 bounds];
                    UIView.untransformedFrame.setter(v223, v610 * 0.5 - v219 * 0.5, v219, v219);

                    v223 = v223 + v219 + v218[77];
                  }

                  while (v606 != v607);

                  v134 = v713;
                  goto LABEL_271;
                }

LABEL_310:
                __break(1u);
                goto LABEL_311;
              }
            }

            else
            {
              v606 = *((v605 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v606)
              {
                goto LABEL_283;
              }
            }

            v134 = v713;
            goto LABEL_271;
          }
        }

        else if (*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        sub_10047F184();
        goto LABEL_58;
      }
    }

    v274 = v713;
    memcpy(v741, &v713[v133], 0x2B0uLL);
    objc_allocWithZone(_s23InstrumentalContentViewCMa());
    sub_10046E570(v741, &v719);
    v275 = sub_10047D270(v206, v209, v741, v207, v208);
    v276 = *&v274[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
    v277 = OBJC_IVAR___MusicInstrumentalContentView_alignment;
    v278 = *&v275[OBJC_IVAR___MusicInstrumentalContentView_alignment];
    *&v275[OBJC_IVAR___MusicInstrumentalContentView_alignment] = v276;
    if (v276 == v278)
    {
      goto LABEL_270;
    }

    v279 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v280 = *&v275[v279];
    if (v280 >> 62)
    {
      if (sub_1004BD6A4())
      {
        goto LABEL_90;
      }
    }

    else if (*((v280 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_90:
      v281 = &v275[OBJC_IVAR___MusicInstrumentalContentView_specs];
      v282 = *&v275[OBJC_IVAR___MusicInstrumentalContentView_specs + 608];
      v283 = v282 * *&v275[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + (*&v275[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + -1.0) * *&v275[OBJC_IVAR___MusicInstrumentalContentView_specs + 616];
      v284 = Int.seconds.getter(0);
      v285 = *&v275[v277];
      if (v285 == 1)
      {
        [v275 bounds];
        v286 = (CGRectGetWidth(v744) - v283) * 0.5;
      }

      else
      {
        v286 = v284;
        if (v285 == 2)
        {
          [v275 bounds];
          v286 = CGRectGetWidth(v743) - v283;
        }
      }

      v585 = *&v275[v279];
      if (v585 >> 62)
      {
        v586 = sub_1004BD6A4();
        if (!v586)
        {
          goto LABEL_270;
        }
      }

      else
      {
        v586 = *((v585 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v586)
        {
          goto LABEL_270;
        }
      }

      if (v586 < 1)
      {
        __break(1u);
        goto LABEL_310;
      }

      v587 = 0;
      do
      {
        if ((v585 & 0xC000000000000001) != 0)
        {
          v588 = sub_1004BD484();
        }

        else
        {
          v588 = *(v585 + 8 * v587 + 32);
        }

        v589 = v588;
        ++v587;
        [v275 bounds];
        UIView.untransformedFrame.setter(v286, v590 * 0.5 - v282 * 0.5, v282, v282);

        v286 = v286 + v282 + v281[77];
      }

      while (v586 != v587);

LABEL_270:
      v136 = *v135;
      *v135 = v275;
      v135[1] = &off_1005D4360;
      v591 = v275;
      v134 = v713;
      sub_10048678C(v136);

      goto LABEL_271;
    }

    sub_10047F184();
    goto LABEL_90;
  }

  v80 = sub_10048F458(v78, v76);
  v81 = &v76[v72[18]];
  v82 = *v81;
  v693 = *(v81 + 1);
  v83 = (v82)(v723, v80);
  v692 = v82;
  if (!v723[3])
  {
    v137 = 2;
LABEL_26:
    LODWORD(v705) = v137;
    goto LABEL_27;
  }

  v84 = *v723;
  v85 = sub_100007214(v723, &qword_100615030);
  v86 = (*&v76[v72[17]])(v85);
  if (!*(v86 + 16))
  {

    v137 = 2;
    goto LABEL_26;
  }

  v87 = *(v86 + 64);

  if (!*(v87 + 16))
  {

    if (v84 < 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  v88 = *(v87 + 32);

  if (v84 >= v88)
  {
LABEL_25:
    v137 = 1;
    goto LABEL_26;
  }

LABEL_6:
  LODWORD(v705) = 0;
LABEL_27:
  v706 = v72;
  v148 = v72[17];
  v710 = v76;
  v149 = &v76[v148];
  v150 = *v149;
  v151 = *((*v149)(v83) + 16);

  if (!v151 || (v153 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs, (v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] & 1) != 0))
  {
    v154 = &v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v155 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v156 = v713;
    if (v155)
    {
      _s20DespacitoContentViewCMa(0);
      v152 = swift_dynamicCastClass();
      if (v152)
      {
        v157 = v152;
        v158 = v706;
        v159 = v710;
        v160 = *(v710 + v706[16]);
        v703 = v155;
        v707 = v160();
        v702 = v161;
        sub_10000F778(v159 + v158[7], v699, &qword_100615038);
        v162 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
        swift_beginAccess();
        sub_10000F778(&v156[v162], v26, &qword_100616C00);
        v163 = v712[6];
        if (v163(v26, 1, v158))
        {
          sub_100007214(v26, &qword_100616C00);
          v700 = 0;
          v164 = 0;
        }

        else
        {
          sub_10048F51C(v26, v74, type metadata accessor for Lyrics.TextLine);
          v224 = sub_100007214(v26, &qword_100616C00);
          v700 = (*&v74[v158[16]])(v224);
          v164 = v225;
          sub_10048F4BC(v74, type metadata accessor for Lyrics.TextLine);
        }

        v226 = v678;
        sub_10000F778(&v156[v162], v678, &qword_100616C00);
        v227 = v163(v226, 1, v158);
        v701 = v164;
        if (v227)
        {
          sub_100007214(v226, &qword_100616C00);
          v228 = sub_1004B6E44();
          (*(*(v228 - 8) + 56))(v695, 1, 1, v228);
        }

        else
        {
          sub_10000F778(v226 + v158[7], v695, &qword_100615038);
          sub_100007214(v226, &qword_100616C00);
        }

        v229 = v708;
        v230 = v679;
        v231 = v680;
        v232 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
        swift_beginAccess();
        sub_10000F778(&v156[v232], v230, &qword_100616EF0);
        v233 = *(v709 + 48);
        if (v233(v230, 1, v229))
        {
          v234 = sub_100007214(v230, &qword_100616EF0);
          v706 = 0;
          v235 = 0;
        }

        else
        {
          v236 = v704;
          sub_10048F51C(v230, v704, type metadata accessor for Lyrics.Translation.Line);
          sub_100007214(v230, &qword_100616EF0);
          v235 = *(v236 + 8);
          v706 = *v236;

          v234 = sub_10048F4BC(v236, type metadata accessor for Lyrics.Translation.Line);
        }

        v237 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
        if (v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] != 1)
        {
          v238 = 0;
          v712 = 0;
          v698 = 0;
          v709 = 0;
          v239 = v713;
          goto LABEL_153;
        }

        (v692)(v741, v234);
        v238 = *(&v741[1] + 1);
        if (*(&v741[1] + 1))
        {
          v712 = *&v741[1];

          sub_100007214(v741, &qword_100615030);
        }

        else
        {
          v712 = 0;
        }

        v239 = v713;
        if (v713[v237] == 1)
        {
          v385 = v652;
          sub_10000F778(&v713[v232], v652, &qword_100616EF0);
          if (!v233(v385, 1, v708))
          {
            v519 = v385;
            v520 = v704;
            sub_10048F51C(v519, v704, type metadata accessor for Lyrics.Translation.Line);
            sub_100007214(v652, &qword_100616EF0);
            v521 = *(v520 + 24);
            v698 = *(v520 + 16);
            v709 = v521;

            sub_10048F4BC(v520, type metadata accessor for Lyrics.Translation.Line);
LABEL_153:
            sub_10000F778(&v239[v232], v231, &qword_100616EF0);
            v386 = v708;
            if (v233(v231, 1, v708))
            {
              sub_100007214(v231, &qword_100616EF0);
              v387 = sub_1004B6E44();
              (*(*(v387 - 8) + 56))(v696, 1, 1, v387);
            }

            else
            {
              v388 = v704;
              sub_10048F51C(v231, v704, type metadata accessor for Lyrics.Translation.Line);
              sub_100007214(v231, &qword_100616EF0);
              v389 = *(v386 + 6);
              v390 = sub_1004B6E44();
              v391 = *(v390 - 8);
              v392 = v388 + v389;
              v393 = v696;
              (*(v391 + 16))(v696, v392, v390);
              sub_10048F4BC(v388, type metadata accessor for Lyrics.Translation.Line);
              (*(v391 + 56))(v393, 0, 1, v390);
            }

            v394 = v711;
            sub_10000F778(v699, v711, &qword_100615038);
            v395 = OBJC_IVAR___MusicDespacitoContentView_language;
            swift_beginAccess();
            sub_100047A5C(v394, &v157[v395], &qword_100615038);
            swift_endAccess();
            v396 = &v157[OBJC_IVAR___MusicDespacitoContentView_text];
            v397 = v702;
            *v396 = v707;
            v396[1] = v397;

            sub_100481B88();
            v398 = v701;
            if (v701)
            {
              v399 = sub_1004BBF24();
              v401 = v400;
              if (v399 == sub_1004BBF24() && v401 == v402)
              {
              }

              else
              {
                v403 = sub_1004BD9C4();

                if ((v403 & 1) == 0)
                {
                  v502 = v398;
                  v503 = v711;
                  sub_10000F778(v695, v711, &qword_100615038);
                  v504 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
                  swift_beginAccess();
                  sub_100047A5C(v503, &v157[v504], &qword_100615038);
                  swift_endAccess();
                  v505 = &v157[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
                  *v505 = v700;
                  v505[1] = v502;
LABEL_163:

                  sub_10048313C();
                  if (v235)
                  {
                    v408 = sub_1004BBF24();
                    v410 = v409;

                    if (v408 == sub_1004BBF24() && v410 == v411)
                    {
                    }

                    else
                    {
                      v412 = sub_1004BD9C4();

                      if ((v412 & 1) == 0)
                      {
                        v506 = v711;
                        sub_10000F778(v696, v711, &qword_100615038);
                        v507 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                        swift_beginAccess();
                        sub_100047A5C(v506, &v157[v507], &qword_100615038);
                        swift_endAccess();
                        v508 = &v157[OBJC_IVAR___MusicDespacitoContentView_translationText];
                        *v508 = v706;
                        v508[1] = v235;
                        v413 = v713;
LABEL_170:
                        v418 = v712;
                        v419 = v709;

                        sub_100482950();
                        if (v419)
                        {
                          if (v238)
                          {
                            v420 = sub_1004BBF24();
                            v422 = v421;
                            if (v420 == sub_1004BBF24() && v422 == v423)
                            {
                            }

                            else
                            {
                              v424 = sub_1004BD9C4();

                              if ((v424 & 1) == 0)
                              {
                                sub_1004828A4(v698, v419);
                                v413 = v713;
                                goto LABEL_179;
                              }
                            }

                            v413 = v713;
                          }

                          else
                          {
                          }
                        }

                        sub_1004828A4(0, 0);
LABEL_179:
                        v425 = &v157[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
                        *v425 = v418;
                        v425[1] = v238;

                        sub_100481E6C();
                        v157[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = v705;
                        [v157 setNeedsLayout];

                        sub_100007214(v696, &qword_100615038);
                        sub_100007214(v695, &qword_100615038);
                        sub_100007214(v699, &qword_100615038);
                        sub_1004815E0(*&v413[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment]);

LABEL_299:
                        [v413 setEnabled:1];
                        sub_10048F4BC(v710, type metadata accessor for Lyrics.TextLine);
                        goto LABEL_300;
                      }
                    }
                  }

                  v413 = v713;
                  v414 = sub_1004B6E44();
                  v415 = v711;
                  (*(*(v414 - 8) + 56))(v711, 1, 1, v414);
                  v416 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                  swift_beginAccess();
                  sub_100047A5C(v415, &v157[v416], &qword_100615038);
                  swift_endAccess();
                  v417 = &v157[OBJC_IVAR___MusicDespacitoContentView_translationText];
                  *v417 = 0;
                  v417[1] = 0;
                  goto LABEL_170;
                }
              }
            }

            v404 = sub_1004B6E44();
            v405 = v711;
            (*(*(v404 - 8) + 56))(v711, 1, 1, v404);
            v406 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
            swift_beginAccess();
            sub_100047A5C(v405, &v157[v406], &qword_100615038);
            swift_endAccess();
            v407 = &v157[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
            *v407 = 0;
            v407[1] = 0;
            goto LABEL_163;
          }

          sub_100007214(v385, &qword_100616EF0);
        }

        v698 = 0;
        v709 = 0;
        goto LABEL_153;
      }
    }

    v698 = v154;
    v165 = v706;
    v166 = v710;
    v699 = (*(v710 + v706[16]))(v152);
    v697 = v167;
    sub_10000F778(v166 + v165[7], v707, &qword_100615038);
    v168 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
    swift_beginAccess();
    sub_10000F778(&v156[v168], v23, &qword_100616C00);
    v169 = v712[6];
    if (v169(v23, 1, v165))
    {
      sub_100007214(v23, &qword_100616C00);
      v694 = 0;
      v696 = 0;
    }

    else
    {
      sub_10048F51C(v23, v74, type metadata accessor for Lyrics.TextLine);
      v191 = sub_100007214(v23, &qword_100616C00);
      v694 = (*&v74[v165[16]])(v191);
      v696 = v192;
      sub_10048F4BC(v74, type metadata accessor for Lyrics.TextLine);
    }

    v193 = v709;
    v194 = v689;
    v195 = v687;
    sub_10000F778(&v156[v168], v687, &qword_100616C00);
    if (v169(v195, 1, v165))
    {
      sub_100007214(v195, &qword_100616C00);
      v196 = sub_1004B6E44();
      (*(*(v196 - 8) + 56))(v700, 1, 1, v196);
    }

    else
    {
      sub_10000F778(v195 + v165[7], v700, &qword_100615038);
      sub_100007214(v195, &qword_100616C00);
    }

    v197 = v688;
    v198 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
    swift_beginAccess();
    sub_10000F778(&v156[v198], v197, &qword_100616EF0);
    v199 = *(v193 + 48);
    v200 = v708;
    if (v199(v197, 1, v708))
    {
      v201 = sub_100007214(v197, &qword_100616EF0);
      v693 = 0;
      v706 = 0;
    }

    else
    {
      v202 = v704;
      sub_10048F51C(v197, v704, type metadata accessor for Lyrics.Translation.Line);
      sub_100007214(v197, &qword_100616EF0);
      v203 = v202[1];
      v693 = *v202;
      v706 = v203;

      v201 = sub_10048F4BC(v202, type metadata accessor for Lyrics.Translation.Line);
    }

    v204 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
    if (v156[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] == 1)
    {
      (v692)(v736, v201);
      v205 = v738;
      if (v738)
      {
        v709 = *&v737;

        sub_100007214(v736, &qword_100615030);
      }

      else
      {
        v709 = 0;
      }

      v240 = v674;
      if (v156[v204] == 1)
      {
        sub_10000F778(&v156[v198], v674, &qword_100616EF0);
        if (!v199(v240, 1, v200))
        {
          v513 = v240;
          v712 = v205;
          v514 = v240;
          v515 = v704;
          sub_10048F51C(v513, v704, type metadata accessor for Lyrics.Translation.Line);
          v516 = v514;
          v205 = v712;
          sub_100007214(v516, &qword_100616EF0);
          v517 = *(v515 + 24);
          v692 = *(v515 + 16);
          v695 = v517;

          sub_10048F4BC(v515, type metadata accessor for Lyrics.Translation.Line);
LABEL_77:
          v712 = v205;
          sub_10000F778(&v156[v198], v194, &qword_100616EF0);
          if (v199(v194, 1, v200))
          {
            sub_100007214(v194, &qword_100616EF0);
            v241 = sub_1004B6E44();
            (*(*(v241 - 8) + 56))(v701, 1, 1, v241);
          }

          else
          {
            v242 = v704;
            sub_10048F51C(v194, v704, type metadata accessor for Lyrics.Translation.Line);
            sub_100007214(v194, &qword_100616EF0);
            v243 = *(v200 + 6);
            v241 = sub_1004B6E44();
            v244 = *(v241 - 8);
            v245 = v242 + v243;
            v156 = v713;
            v246 = v701;
            (*(v244 + 16))(v701, v245, v241);
            sub_10048F4BC(v242, type metadata accessor for Lyrics.Translation.Line);
            (*(v244 + 56))(v246, 0, 1, v241);
          }

          memcpy(v741, &v156[v204], 0x2B0uLL);
          v708 = _s20DespacitoContentViewCMa(0);
          v247 = objc_allocWithZone(v708);
          v247[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
          *&v247[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
          *&v247[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
          *&v247[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
          v248 = OBJC_IVAR___MusicDespacitoContentView_language;
          sub_1004B6E44();
          v249 = *(*(v241 - 8) + 56);
          v249(&v247[v248], 1, 1, v241);
          *&v704 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
          v247[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
          v250 = &v247[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
          *v250 = 0;
          v250[1] = 0;
          v251 = &v247[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
          *v251 = 0;
          v251[1] = 0;
          v247[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
          v249(&v247[OBJC_IVAR___MusicDespacitoContentView_translationLanguage], 1, 1, v241);
          v252 = &v247[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v252 = 0;
          v252[1] = 0;
          v247[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
          v249(&v247[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v241);
          v253 = &v247[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
          *v253 = 0;
          v253[1] = 0;
          v254 = v707;
          v255 = v711;
          sub_10000F778(v707, v711, &qword_100615038);
          v256 = *(sub_100003ABC(&qword_100616680) + 48);
          v257 = v702;
          v258 = v699;
          v259 = v697;
          *v702 = v699;
          *(v257 + 8) = v259;
          sub_10000F778(v255, v257 + v256, &qword_100615038);
          swift_storeEnumTagMultiPayload();
          v260 = objc_allocWithZone(_s15TextContentViewCMa(0));

          sub_10046E570(v741, &v719);
          v261 = sub_1004854D0(v257, v741, 0);
          sub_100007214(v255, &qword_100615038);
          *&v247[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v261;
          memcpy(&v247[OBJC_IVAR___MusicDespacitoContentView_specs], v741, 0x2B0uLL);
          v262 = &v247[OBJC_IVAR___MusicDespacitoContentView_text];
          *v262 = v258;
          v262[1] = v259;
          swift_beginAccess();

          sub_10046E570(v741, &v719);
          sub_10003F42C(v254, &v247[v248], &qword_100615038);
          swift_endAccess();
          v247[v704] = v705;
          v718.receiver = v247;
          v718.super_class = v708;
          v263 = objc_msgSendSuper2(&v718, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
          v264 = *&v263[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
          v265 = v263;
          [v265 addSubview:v264];
          v266 = v709;
          v267 = v696;
          if (v696)
          {
            v268 = sub_1004BBF24();
            v270 = v269;
            v271 = v694;
            if (v268 == sub_1004BBF24() && v270 == v272)
            {
            }

            else
            {
              v273 = sub_1004BD9C4();

              if (v273)
              {
              }

              else
              {
                v358 = v711;
                sub_10000F778(v700, v711, &qword_100615038);
                v359 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
                swift_beginAccess();
                sub_100047A5C(v358, &v265[v359], &qword_100615038);
                swift_endAccess();
                v360 = &v265[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
                *v360 = v271;
                v360[1] = v267;

                sub_10048313C();
              }
            }
          }

          v361 = v712;
          v362 = v706;
          if (v706)
          {
            v363 = sub_1004BBF24();
            v365 = v364;

            v366 = v693;
            v367 = sub_1004BBF24();
            v369 = v713;
            if (v363 == v367 && v365 == v368)
            {
            }

            else
            {
              v370 = sub_1004BD9C4();

              if (v370)
              {
              }

              else
              {
                v371 = v711;
                sub_10000F778(v701, v711, &qword_100615038);
                v372 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                swift_beginAccess();
                v373 = &v265[v372];
                v369 = v713;
                sub_100047A5C(v371, v373, &qword_100615038);
                swift_endAccess();
                v374 = &v265[OBJC_IVAR___MusicDespacitoContentView_translationText];
                *v374 = v366;
                v374[1] = v362;

                sub_100482950();
              }
            }
          }

          else
          {

            v369 = v713;
          }

          v375 = v695;
          if (!v695)
          {
            goto LABEL_219;
          }

          if (v361)
          {
            v376 = sub_1004BBF24();
            v378 = v377;
            if (v376 == sub_1004BBF24() && v378 == v379)
            {

LABEL_219:
              v509 = &v265[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
              *v509 = v266;
              *(v509 + 1) = v361;

              sub_100481E6C();

              sub_10046E5CC(v741);
              sub_100007214(v701, &qword_100615038);
              sub_100007214(v700, &qword_100615038);
              sub_100007214(v707, &qword_100615038);
              sub_1004815E0(*&v369[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment]);
              v510 = v698;
              v511 = *v698;
              *v698 = v265;
              v510[1] = &off_1005D4728;
              v512 = v265;
              sub_10048678C(v511);

              v413 = v713;
              goto LABEL_299;
            }

            v380 = sub_1004BD9C4();

            if ((v380 & 1) == 0)
            {
              sub_1004828A4(v692, v375);
              goto LABEL_219;
            }
          }

          goto LABEL_219;
        }

        sub_100007214(v240, &qword_100616EF0);
      }
    }

    else
    {
      v205 = 0;
      v709 = 0;
    }

    v692 = 0;
    v695 = 0;
    goto LABEL_77;
  }

  v170 = &v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  v171 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  if (v171)
  {
    _s19SBS_TextContentViewCMa();
    v152 = swift_dynamicCastClass();
    if (v152)
    {
      v707 = v152;
      v172 = v706;
      v173 = v710;
      v174 = *(v710 + v706[16]);
      v697 = v171;
      v694 = v174();
      v703 = v175;
      v702 = v150();
      v176 = sub_10000F778(v173 + v172[7], v681, &qword_100615038);
      v177 = v713;
      v699 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
      LODWORD(v691) = (*(v173 + v172[15]))(v176);
      v698 = *(v173 + v172[9]);
      v178 = v692;
      v179 = (v692)(v724);
      v180 = v726;
      if (v726)
      {
        v688 = v725;

        v179 = sub_100007214(v724, &qword_100615030);
      }

      else
      {
        v688 = 0;
      }

      v426 = v658;
      v427 = (v178)(v727, v179);
      if (v728)
      {
        v696 = v729;

        v427 = sub_100007214(v727, &qword_100615030);
      }

      else
      {
        v696 = _swiftEmptyArrayStorage;
      }

      (v178)(v730, v427);
      v700 = v180;
      if (v731)
      {
        LODWORD(v693) = v732;
        sub_100007214(v730, &qword_100615030);
      }

      else
      {
        LODWORD(v693) = 0;
      }

      v428 = v665;
      v429 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
      swift_beginAccess();
      v430 = v686;
      sub_10000F778(&v177[v429], v686, &qword_100616C00);
      v431 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
      swift_beginAccess();
      sub_10000F778(&v177[v431], v426, &qword_100616EF0);
      v432 = *(v709 + 48);
      v433 = v708;
      v709 += 48;
      if (v432(v426, 1, v708))
      {
        sub_100007214(v426, &qword_100616EF0);
        v692 = 0;
        v701 = 0;
      }

      else
      {
        v434 = v704;
        sub_10048F51C(v426, v704, type metadata accessor for Lyrics.Translation.Line);
        sub_100007214(v426, &qword_100616EF0);
        v435 = *(v434 + 8);
        v692 = *v434;
        v701 = v435;

        v436 = v434;
        v428 = v665;
        sub_10048F4BC(v436, type metadata accessor for Lyrics.Translation.Line);
      }

      v437 = v712;
      v438 = v685;
      sub_10000F778(&v177[v431], v428, &qword_100616EF0);
      if (v432(v428, 1, v433))
      {
        sub_100007214(v428, &qword_100616EF0);
        v687 = 0;
        v695 = 0;
      }

      else
      {
        v439 = v428;
        v440 = v437;
        v441 = v430;
        v442 = v438;
        v443 = v428;
        v444 = v704;
        sub_10048F51C(v439, v704, type metadata accessor for Lyrics.Translation.Line);
        v445 = v443;
        v438 = v442;
        v430 = v441;
        v437 = v440;
        sub_100007214(v445, &qword_100616EF0);
        v446 = *(v444 + 24);
        v687 = *(v444 + 16);
        v695 = v446;

        sub_10048F4BC(v444, type metadata accessor for Lyrics.Translation.Line);
      }

      v447 = &v177[v431];
      v448 = v661;
      sub_10000F778(v447, v661, &qword_100616EF0);
      if (v432(v448, 1, v433))
      {
        sub_100007214(v448, &qword_100616EF0);
        v449 = sub_1004B6E44();
        (*(*(v449 - 8) + 56))(v438, 1, 1, v449);
      }

      else
      {
        v450 = v704;
        sub_10048F51C(v448, v704, type metadata accessor for Lyrics.Translation.Line);
        sub_100007214(v448, &qword_100616EF0);
        v451 = *(v433 + 6);
        v452 = sub_1004B6E44();
        v453 = *(v452 - 8);
        (*(v453 + 16))(v438, v450 + v451, v452);
        sub_10048F4BC(v450, type metadata accessor for Lyrics.Translation.Line);
        (*(v453 + 56))(v438, 0, 1, v452);
      }

      v454 = v662;
      v455 = v659;
      sub_10000F778(v430, v659, &qword_100616C00);
      v456 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
      v457 = v707;
      swift_beginAccess();
      sub_100047A5C(v455, v457 + v456, &qword_100616C00);
      swift_endAccess();
      v458 = *(v457 + OBJC_IVAR___MusicSBS_TextContentView_textView);
      if (v458)
      {
        v459 = v660;
        sub_10000F778(v430, v660, &qword_100616C00);
        v462 = v437[6];
        v460 = v437 + 6;
        v461 = v462;
        v463 = v706;
        v464 = (v462)(v459, 1, v706);
        v466 = v663;
        v465 = v664;
        if (v464 == 1)
        {
          v467 = v458;
          sub_100007214(v459, &qword_100616C00);
          v468 = sub_1004B6E44();
          (*(*(v468 - 8) + 56))(v677, 1, 1, v468);
        }

        else
        {
          sub_10000F778(v459 + v463[7], v677, &qword_100615038);
          v469 = v458;
          sub_10048F4BC(v459, type metadata accessor for Lyrics.TextLine);
        }

        sub_10000F778(v430, v454, &qword_100616C00);
        if ((v461)(v454, 1, v463) == 1)
        {
          sub_100007214(v454, &qword_100616C00);
          v470 = 2;
        }

        else
        {
          v471 = (*(v454 + v463[15]))();
          sub_10048F4BC(v454, type metadata accessor for Lyrics.TextLine);
          v470 = v471 & 1;
        }

        LODWORD(v708) = v470;
        sub_10000F778(v430, v466, &qword_100616C00);
        v712 = v460;
        if ((v461)(v466, 1, v463) == 1)
        {
          sub_100007214(v466, &qword_100616C00);
          *&v704 = 0;
          v690 = 0;
        }

        else
        {
          *&v704 = (*(v466 + v463[16]))();
          v690 = v472;
          sub_10048F4BC(v466, type metadata accessor for Lyrics.TextLine);
        }

        sub_10000F778(v430, v465, &qword_100616C00);
        v473 = (v461)(v465, 1, v463);
        v709 = v461;
        if (v473 == 1)
        {
          sub_100007214(v465, &qword_100616C00);
          v689 = 0;
        }

        else
        {
          v689 = (*(v465 + v463[17]))();
          sub_10048F4BC(v465, type metadata accessor for Lyrics.TextLine);
        }

        v474 = &v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v475 = v694;
        v476 = v703;
        *v474 = v694;
        *(v474 + 1) = v476;

        v477 = &v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
        *v477 = v475;
        v477[1] = v476;

        *&v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v702;

        v478 = v711;
        sub_10000F778(v685, v711, &qword_100615038);
        v479 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        swift_beginAccess();

        sub_100047A5C(v478, &v458[v479], &qword_100615038);
        swift_endAccess();
        v480 = v677;
        sub_10000F778(v677, v478, &qword_100615038);
        v481 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        swift_beginAccess();
        sub_100047A5C(v478, &v458[v481], &qword_100615038);
        swift_endAccess();
        v482 = &v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
        v483 = v701;
        *v482 = v692;
        *(v482 + 1) = v483;

        v484 = &v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
        v485 = v690;
        *v484 = v704;
        *(v484 + 1) = v485;

        *&v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = v689;

        v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = v708;
        v487 = v698;
        v486 = v699;
        *&v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v699;
        LOBYTE(v481) = v691 & 1;
        v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v691 & 1;
        *&v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v487;

        [v458 setNeedsLayout];

        sub_100007214(v480, &qword_100615038);
        v488 = v707;
        v489 = &v707[OBJC_IVAR___MusicSBS_TextContentView_text];
        *v489 = v475;
        v489[1] = v476;

        *(v488 + OBJC_IVAR___MusicSBS_TextContentView_alignment) = v486;
        *(v488 + OBJC_IVAR___MusicSBS_TextContentView_direction) = v481;
        *(v488 + OBJC_IVAR___MusicSBS_TextContentView_capabilities) = v487;

        v490 = v693 & 1;
        *(v488 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = v490;
        *(v488 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = v705;
        v491 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
        v492 = *(v488 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
        if (v492)
        {
          v413 = v713;
          v493 = v686;
          v494 = v700;
          if (v700)
          {
            LODWORD(v708) = v490;
            v495 = v645;
            sub_10000F778(v686, v645, &qword_100616C00);
            v496 = v706;
            if ((v709)(v495, 1, v706) == 1)
            {
              v497 = v492;
              sub_100007214(v495, &qword_100616C00);
              v498 = sub_1004B6E44();
              (*(*(v498 - 8) + 56))(v653, 1, 1, v498);
            }

            else
            {
              sub_10000F778(v495 + v496[7], v653, &qword_100615038);
              v522 = v492;
              sub_10048F4BC(v495, type metadata accessor for Lyrics.TextLine);
            }

            v523 = v493;
            v525 = v646;
            v524 = v647;
            sub_10000F778(v523, v646, &qword_100616C00);
            if ((v709)(v525, 1, v496) == 1)
            {
              sub_100007214(v525, &qword_100616C00);
              v526 = 2;
            }

            else
            {
              v527 = (*(v525 + v496[15]))();
              sub_10048F4BC(v525, type metadata accessor for Lyrics.TextLine);
              v526 = v527 & 1;
            }

            LODWORD(v705) = v526;
            sub_10000F778(v686, v524, &qword_100616C00);
            if ((v709)(v524, 1, v496) == 1)
            {
              sub_100007214(v524, &qword_100616C00);
              v694 = 0;
              *&v704 = 0;
              v528 = v648;
            }

            else
            {
              (*(v524 + v496[18]))(&v719);
              *&v704 = *(&v720 + 1);
              if (*(&v720 + 1))
              {
                v694 = v720;

                sub_100007214(&v719, &qword_100615030);
              }

              else
              {
                v694 = 0;
              }

              v528 = v648;
              sub_10048F4BC(v524, type metadata accessor for Lyrics.TextLine);
            }

            sub_10000F778(v686, v528, &qword_100616C00);
            v592 = v706;
            if ((v709)(v528, 1, v706) == 1)
            {
              sub_100007214(v528, &qword_100616C00);
            }

            else
            {
              (*(v528 + v592[18]))(v741);
              sub_10048F4BC(v528, type metadata accessor for Lyrics.TextLine);
              if (*(&v741[1] + 1))
              {
                v712 = *(&v741[3] + 1);

                sub_100007214(v741, &qword_100615030);
LABEL_279:
                v593 = &v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
                v594 = v688;
                *v593 = v688;
                *(v593 + 1) = v494;

                v595 = &v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
                *v595 = v594;
                *(v595 + 1) = v494;

                *&v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v696;

                v577 = v685;
                v596 = v711;
                sub_10000F778(v685, v711, &qword_100615038);
                v597 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
                swift_beginAccess();

                sub_100047A5C(v596, &v492[v597], &qword_100615038);
                swift_endAccess();
                v598 = v653;
                sub_10000F778(v653, v596, &qword_100615038);
                v599 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
                swift_beginAccess();
                sub_100047A5C(v596, &v492[v599], &qword_100615038);
                swift_endAccess();
                v600 = &v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
                v601 = v695;
                *v600 = v687;
                *(v600 + 1) = v601;

                v602 = &v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
                v603 = v704;
                *v602 = v694;
                *(v602 + 1) = v603;

                *&v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = v712;

                v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = v705;
                v604 = v698;
                *&v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v699;
                v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v708;
                *&v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v604;

                [v492 setNeedsLayout];

                sub_100007214(v598, &qword_100615038);
                v413 = v713;
                v493 = v686;
                v488 = v707;
                goto LABEL_298;
              }
            }

            v712 = 0;
            goto LABEL_279;
          }

          [v492 removeFromSuperview];
          v488 = v707;
          v518 = *&v707[v491];
LABEL_251:
          v577 = v685;
          *(v488 + v491) = 0;

LABEL_298:
          [v488 setNeedsLayout];

          sub_100007214(v577, &qword_100615038);
          sub_100007214(v493, &qword_100616C00);
          sub_100007214(v681, &qword_100615038);
          goto LABEL_299;
        }

        v413 = v713;
        v493 = v686;
        if (!v700)
        {
          v518 = 0;
          goto LABEL_251;
        }

        v705 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
        LODWORD(v708) = v490;
        sub_10000F778(v681, v650, &qword_100615038);
        sub_10000F778(v685, v651, &qword_100615038);
        v499 = v641;
        sub_10000F778(v493, v641, &qword_100616C00);
        v500 = v706;
        if ((v709)(v499, 1, v706) == 1)
        {

          sub_100007214(v499, &qword_100616C00);
          v501 = sub_1004B6E44();
          (*(*(v501 - 8) + 56))(v649, 1, 1, v501);
        }

        else
        {
          sub_10000F778(v499 + v500[7], v649, &qword_100615038);

          sub_10048F4BC(v499, type metadata accessor for Lyrics.TextLine);
        }

        v578 = v644;
        v579 = v642;
        sub_10000F778(v493, v642, &qword_100616C00);
        v580 = (v709)(v579, 1, v500);
        v581 = v643;
        if (v580 == 1)
        {
          sub_100007214(v579, &qword_100616C00);
          v582 = 2;
        }

        else
        {
          v583 = (*(v579 + v500[15]))();
          sub_10048F4BC(v579, type metadata accessor for Lyrics.TextLine);
          v582 = v583 & 1;
        }

        LODWORD(v704) = v582;
        sub_10000F778(v493, v581, &qword_100616C00);
        v584 = v709;
        if ((v709)(v581, 1, v500) == 1)
        {
          sub_100007214(v581, &qword_100616C00);
          v711 = 0;
          v694 = 0;
        }

        else
        {
          (*(v581 + v500[18]))(v733);
          v694 = v735;
          if (v735)
          {
            v711 = v734;

            sub_100007214(v733, &qword_100615030);
          }

          else
          {
            v711 = 0;
          }

          sub_10048F4BC(v581, type metadata accessor for Lyrics.TextLine);
        }

        sub_10000F778(v493, v578, &qword_100616C00);
        if (v584(v578, 1, v500) == 1)
        {
          sub_100007214(v578, &qword_100616C00);
        }

        else
        {
          (*(v578 + v500[18]))(v736);
          sub_10048F4BC(v578, type metadata accessor for Lyrics.TextLine);
          if (v738)
          {
            v712 = v740;

            sub_100007214(v736, &qword_100615030);
LABEL_297:
            v709 = v488 + OBJC_IVAR___MusicSBS_TextContentView_specs;
            memcpy(v741, v488 + OBJC_IVAR___MusicSBS_TextContentView_specs, 0x2B0uLL);
            v706 = _s14descr1005A2689C8TextViewCMa();
            v611 = objc_allocWithZone(v706);
            v612 = &v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
            *v612 = 0;
            v612[1] = 0;
            v693 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
            v692 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
            v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
            v613 = &v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
            *v613 = 0;
            v613[1] = 0;
            v614 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
            v615 = sub_1004B6E44();
            v616 = *(*(v615 - 8) + 56);
            v616(&v611[v614], 1, 1, v615);
            v617 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
            v616(&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v615);
            v618 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
            v616(&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v615);
            v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
            v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
            v691 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
            v619 = &v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
            *v619 = 2;
            *(v619 + 8) = 0u;
            *(v619 + 24) = 0u;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
            v620 = &v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
            v620[4] = 0u;
            v620[5] = 0u;
            v620[2] = 0u;
            v620[3] = 0u;
            *v620 = 0u;
            v620[1] = 0u;
            v621 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
            sub_10046E570(v741, &v719);
            *&v611[v621] = sub_100447BF4(_swiftEmptyArrayStorage);
            v622 = &v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
            v623 = v688;
            v624 = v700;
            *v622 = v688;
            v622[1] = v624;
            v625 = &v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
            *v625 = v623;
            v625[1] = v624;
            swift_beginAccess();

            v626 = &v611[v614];
            v488 = v707;
            sub_10003F42C(v650, v626, &qword_100615038);
            swift_endAccess();
            swift_beginAccess();
            sub_10003F42C(v651, &v611[v617], &qword_100615038);
            swift_endAccess();
            swift_beginAccess();
            v627 = v649;
            sub_10003F42C(v649, &v611[v618], &qword_100615038);
            swift_endAccess();
            *(v692 + v611) = v704;
            v628 = v694;
            *v612 = v711;
            v612[1] = v628;

            *&v611[v693] = v712;

            v629 = v695;
            *v613 = v687;
            v613[1] = v629;

            memcpy(&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v741, 0x2B0uLL);
            *&v611[v691] = 0;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v696;
            v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 1;
            v630 = v698;
            v631 = v699;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v699;
            v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v708;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v630;
            v714.receiver = v611;
            v714.super_class = v706;

            v632 = objc_msgSendSuper2(&v714, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
            sub_100007214(v627, &qword_100615038);
            sub_100007214(v651, &qword_100615038);
            sub_100007214(v650, &qword_100615038);
            v633 = sub_10047CE90(v631);
            v635 = v634;
            v636 = v632;
            UIView.setAnchorPoint(_:preserveFrame:)(1, v633, v635);
            [v636 setAlpha:0.0];
            v637 = *(v709 + 144);
            v638 = *(v709 + 160);
            v719 = *(v709 + 128);
            v720 = v637;
            v721 = v638;
            [v636 setTransform:&v719];

            [v488 addSubview:v636];
            v639 = *&v705[v488];
            *&v705[v488] = v636;

            v413 = v713;
            v577 = v685;
            v493 = v686;
            goto LABEL_298;
          }
        }

        v712 = 0;
        goto LABEL_297;
      }

      goto LABEL_312;
    }
  }

  v673 = v170;
  v181 = v706;
  v182 = v710;
  v699 = (*(v710 + v706[16]))(v152);
  v707 = v183;
  v703 = v150();
  v184 = sub_10000F778(v182 + v181[7], v697, &qword_100615038);
  v185 = v713;
  v701 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
  v186 = (*(v182 + v181[15]))(v184);
  v711 = *(v182 + v181[9]);

  v188 = v692;
  v189 = (v692)(v724, v187);
  v190 = v726;
  if (v726)
  {
    v665 = v725;

    v189 = sub_100007214(v724, &qword_100615030);
  }

  else
  {
    v665 = 0;
  }

  v287 = v666;
  v288 = (v188)(v727, v189);
  if (v728)
  {
    v700 = v729;

    v288 = sub_100007214(v727, &qword_100615030);
  }

  else
  {
    v700 = _swiftEmptyArrayStorage;
  }

  v702 = v190;
  (v188)(v730, v288);
  if (v731)
  {
    LODWORD(v696) = v732;
    sub_100007214(v730, &qword_100615030);
  }

  else
  {
    LODWORD(v696) = 0;
  }

  v289 = v667;
  memcpy(v741, &v185[v153], 0x2B0uLL);
  v290 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
  swift_beginAccess();
  sub_10000F778(&v185[v290], v698, &qword_100616C00);
  v291 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
  swift_beginAccess();
  sub_10000F778(&v185[v291], v287, &qword_100616EF0);
  v292 = *(v709 + 48);
  v293 = v708;
  if (v292(v287, 1, v708))
  {
    sub_10046E570(v741, &v719);
    sub_100007214(v287, &qword_100616EF0);
    v688 = 0;
    v709 = 0;
  }

  else
  {
    v294 = v704;
    sub_10048F51C(v287, v704, type metadata accessor for Lyrics.Translation.Line);
    sub_10046E570(v741, &v719);
    sub_100007214(v287, &qword_100616EF0);
    v295 = v294[1];
    v688 = *v294;
    v709 = v295;

    sub_10048F4BC(v294, type metadata accessor for Lyrics.Translation.Line);
  }

  v296 = v712;
  sub_10000F778(&v185[v291], v289, &qword_100616EF0);
  if (v292(v289, 1, v293))
  {
    sub_100007214(v289, &qword_100616EF0);
    v667 = 0;
    v695 = 0;
  }

  else
  {
    v297 = v704;
    sub_10048F51C(v289, v704, type metadata accessor for Lyrics.Translation.Line);
    sub_100007214(v289, &qword_100616EF0);
    v298 = *(v297 + 24);
    v667 = *(v297 + 16);
    v695 = v298;

    sub_10048F4BC(v297, type metadata accessor for Lyrics.Translation.Line);
  }

  v299 = &v185[v291];
  v300 = v668;
  sub_10000F778(v299, v668, &qword_100616EF0);
  if (v292(v300, 1, v293))
  {
    sub_100007214(v300, &qword_100616EF0);
    v301 = sub_1004B6E44();
    v302 = v690;
    (*(*(v301 - 8) + 56))(v690, 1, 1, v301);
  }

  else
  {
    v303 = v704;
    sub_10048F51C(v300, v704, type metadata accessor for Lyrics.Translation.Line);
    sub_100007214(v300, &qword_100616EF0);
    v304 = *(v293 + 6);
    v305 = sub_1004B6E44();
    v306 = *(v305 - 8);
    v302 = v690;
    (*(v306 + 16))(v690, v303 + v304, v305);
    sub_10048F4BC(v303, type metadata accessor for Lyrics.Translation.Line);
    (*(v306 + 56))(v302, 0, 1, v305);
  }

  v307 = v706;
  v308 = v711;
  v692 = _s19SBS_TextContentViewCMa();
  v309 = objc_allocWithZone(v692);
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling) = 1;
  v310 = (v309 + OBJC_IVAR___MusicSBS_TextContentView_text);
  *v310 = 0;
  v310[1] = 0;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_attributedText) = 0;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) = 0;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_progress) = 0;
  v691 = OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = 2;
  v311 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  v296[7](v309 + OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine, 1, 1, v307);
  v689 = OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = 2;
  v687 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_textView) = 0;
  v693 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView) = 0;
  v312 = v707;
  *v310 = v699;
  v310[1] = v312;
  memcpy(v309 + OBJC_IVAR___MusicSBS_TextContentView_specs, v741, 0x2B0uLL);
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_alignment) = v701;
  LODWORD(v686) = v186 & 1;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_direction) = v186 & 1;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_capabilities) = v308;
  swift_beginAccess();

  sub_10046E570(v741, &v719);

  v708 = v309;
  v313 = v698;
  sub_10003F42C(v698, v309 + v311, &qword_100616C00);
  swift_endAccess();
  sub_10000F778(v697, v694, &qword_100615038);
  v314 = v706;
  sub_10000F778(v302, v683, &qword_100615038);
  v315 = v669;
  sub_10000F778(v313, v669, &qword_100616C00);
  v318 = v296[6];
  v316 = v296 + 6;
  v317 = v318;
  if ((v318)(v315, 1, v314) == 1)
  {
    sub_100007214(v315, &qword_100616C00);
    v319 = sub_1004B6E44();
    (*(*(v319 - 8) + 56))(v684, 1, 1, v319);
  }

  else
  {
    sub_10000F778(v315 + v314[7], v684, &qword_100615038);
    sub_10048F4BC(v315, type metadata accessor for Lyrics.TextLine);
  }

  v321 = v671;
  v320 = v672;
  v322 = v670;
  sub_10000F778(v313, v670, &qword_100616C00);
  if ((v317)(v322, 1, v314) == 1)
  {
    sub_100007214(v322, &qword_100616C00);
    v323 = 2;
  }

  else
  {
    v324 = (*(v322 + v314[15]))();
    sub_10048F4BC(v322, type metadata accessor for Lyrics.TextLine);
    v323 = v324 & 1;
  }

  LODWORD(v685) = v323;
  sub_10000F778(v313, v321, &qword_100616C00);
  if ((v317)(v321, 1, v314) == 1)
  {
    sub_100007214(v321, &qword_100616C00);
    v680 = 0;
    v681 = 0;
  }

  else
  {
    v325 = (*(v321 + v314[16]))();
    v680 = v326;
    v681 = v325;
    sub_10048F4BC(v321, type metadata accessor for Lyrics.TextLine);
  }

  LODWORD(v704) = v696 & 1;
  sub_10000F778(v313, v320, &qword_100616C00);
  v327 = (v317)(v320, 1, v314);
  v712 = v316;
  v668 = v317;
  if (v327 == 1)
  {
    sub_100007214(v320, &qword_100616C00);
    v679 = 0;
  }

  else
  {
    v679 = (*(v320 + v314[17]))();
    sub_10048F4BC(v320, type metadata accessor for Lyrics.TextLine);
  }

  v696 = _s14descr1005A2689C8TextViewCMa();
  v328 = objc_allocWithZone(v696);
  v329 = &v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  *v329 = 0;
  v329[1] = 0;
  v678 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
  v677 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
  v330 = &v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  *v330 = 0;
  v330[1] = 0;
  v331 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v332 = sub_1004B6E44();
  v333 = *(v332 - 8);
  v334 = *(v333 + 56);
  v335 = v333 + 56;
  (v334)(&v328[v331], 1, 1, v332);
  v336 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  (v334)(&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v332);
  v337 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
  v671 = v334;
  v672 = v332;
  v670 = v335;
  (v334)(&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v332);
  v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
  v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
  v674 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
  v338 = &v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  *v338 = 2;
  *(v338 + 8) = 0u;
  *(v338 + 24) = 0u;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
  v339 = &v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  v339[4] = 0u;
  v339[5] = 0u;
  v339[2] = 0u;
  v339[3] = 0u;
  *v339 = 0u;
  v339[1] = 0u;
  v340 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;

  sub_10046E570(v741, &v719);
  v341 = v709;

  v342 = v707;

  *&v328[v340] = sub_100447BF4(_swiftEmptyArrayStorage);
  v343 = &v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
  v344 = v699;
  *v343 = v699;
  v343[1] = v342;
  v345 = &v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  *v345 = v344;
  v345[1] = v342;
  swift_beginAccess();

  sub_10003F42C(v694, &v328[v331], &qword_100615038);
  swift_endAccess();
  swift_beginAccess();
  v346 = &v328[v336];
  v347 = v683;
  sub_10003F42C(v683, v346, &qword_100615038);
  swift_endAccess();
  swift_beginAccess();
  v348 = v684;
  sub_10003F42C(v684, &v328[v337], &qword_100615038);
  swift_endAccess();
  v328[v677] = v685;
  v349 = v680;
  *v329 = v681;
  v329[1] = v349;

  *&v328[v678] = v679;

  *v330 = v688;
  v330[1] = v341;

  memcpy(&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v741, 0x2B0uLL);
  *&v328[v674] = 0;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v703;
  v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 0;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v701;
  v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v686;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v711;
  v717.receiver = v328;
  v350 = v696;
  v717.super_class = v696;
  v351 = objc_msgSendSuper2(&v717, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100007214(v348, &qword_100615038);
  sub_100007214(v347, &qword_100615038);
  sub_100007214(v694, &qword_100615038);
  v352 = v708;
  v353 = *(v708 + v687);
  *(v708 + v687) = v351;

  if (v702)
  {
    sub_10000F778(v697, v682, &qword_100615038);
    sub_10000F778(v690, v675, &qword_100615038);
    v354 = v698;
    v355 = v654;
    sub_10000F778(v698, v654, &qword_100616C00);
    v356 = v706;
    v357 = v668;
    if ((v668)(v355, 1, v706) == 1)
    {

      sub_100007214(v355, &qword_100616C00);
      v671(v676, 1, 1, v672);
    }

    else
    {
      sub_10000F778(v355 + v356[7], v676, &qword_100615038);

      sub_10048F4BC(v355, type metadata accessor for Lyrics.TextLine);
    }

    v382 = v655;
    v381 = v656;
    sub_10000F778(v354, v655, &qword_100616C00);
    if ((v357)(v382, 1, v356) == 1)
    {
      sub_100007214(v382, &qword_100616C00);
      v383 = 2;
    }

    else
    {
      v384 = (*(v382 + v356[15]))();
      sub_10048F4BC(v382, type metadata accessor for Lyrics.TextLine);
      v383 = v384 & 1;
    }

    LODWORD(v699) = v383;
    sub_10000F778(v354, v381, &qword_100616C00);
    if ((v357)(v381, 1, v356) == 1)
    {
      sub_100007214(v381, &qword_100616C00);
      v688 = 0;
      v694 = 0;
    }

    else
    {
      (*(v381 + v356[18]))(v733);
      v694 = v735;
      if (v735)
      {
        v688 = v734;

        sub_100007214(v733, &qword_100615030);
      }

      else
      {
        v688 = 0;
      }

      sub_10048F4BC(v381, type metadata accessor for Lyrics.TextLine);
    }

    v529 = v354;
    v530 = v657;
    sub_10000F778(v529, v657, &qword_100616C00);
    if ((v357)(v530, 1, v356) == 1)
    {
      sub_100007214(v530, &qword_100616C00);
    }

    else
    {
      (*(v530 + v356[18]))(v736);
      sub_10048F4BC(v530, type metadata accessor for Lyrics.TextLine);
      if (v738)
      {
        v712 = v740;

        sub_100007214(v736, &qword_100615030);
LABEL_239:
        v531 = objc_allocWithZone(v350);
        v532 = &v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
        *v532 = 0;
        v532[1] = 0;
        v706 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
        v687 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
        v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
        v533 = &v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
        *v533 = 0;
        v533[1] = 0;
        v534 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
        v536 = v671;
        v535 = v672;
        v671(&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language], 1, 1, v672);
        v537 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        v536(&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v535);
        v538 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        v536(&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v535);
        v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
        v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
        v686 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
        v539 = &v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
        *v539 = 2;
        *(v539 + 8) = 0u;
        *(v539 + 24) = 0u;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
        v540 = &v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
        v540[4] = 0u;
        v540[5] = 0u;
        v540[2] = 0u;
        v540[3] = 0u;
        *v540 = 0u;
        v540[1] = 0u;
        v541 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;

        sub_10046E570(v741, &v719);
        v542 = v695;

        *&v531[v541] = sub_100447BF4(_swiftEmptyArrayStorage);
        v543 = &v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v544 = v665;
        v545 = v702;
        *v543 = v665;
        v543[1] = v545;
        v546 = &v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
        *v546 = v544;
        v546[1] = v545;
        swift_beginAccess();

        sub_10003F42C(v682, &v531[v534], &qword_100615038);
        swift_endAccess();
        swift_beginAccess();
        v547 = &v531[v537];
        v548 = v675;
        sub_10003F42C(v675, v547, &qword_100615038);
        swift_endAccess();
        swift_beginAccess();
        v549 = v676;
        sub_10003F42C(v676, &v531[v538], &qword_100615038);
        swift_endAccess();
        v531[v687] = v699;
        v550 = v694;
        *v532 = v688;
        v532[1] = v550;

        *(v706 + v531) = v712;

        *v533 = v667;
        v533[1] = v542;

        memcpy(&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v741, 0x2B0uLL);
        *&v531[v686] = 0;
        v551 = v701;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v700;
        v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 1;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v551;
        v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v704;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v711;
        v715.receiver = v531;
        v715.super_class = v696;
        v552 = objc_msgSendSuper2(&v715, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        sub_100007214(v549, &qword_100615038);
        sub_100007214(v548, &qword_100615038);
        sub_100007214(v682, &qword_100615038);
        v352 = v708;
        v553 = v693;
        v554 = *(v708 + v693);
        *(v708 + v693) = v552;

        v555 = *(v352 + v553);
        if (v555)
        {
          v556 = sub_10047CE90(v551);
          v558 = v557;
          v559 = v555;
          UIView.setAnchorPoint(_:preserveFrame:)(1, v556, v558);

          v560 = *(v352 + v693);
          if (v560)
          {
            [v560 setAlpha:0.0];
            v561 = *(v352 + v693);
            if (v561)
            {
              v719 = v741[8];
              v720 = v741[9];
              v721 = v741[10];
              [v561 setTransform:&v719];
            }
          }
        }

        goto LABEL_243;
      }
    }

    v712 = 0;
    goto LABEL_239;
  }

LABEL_243:
  *(v352 + v691) = v704;
  v689[v352] = v705;
  v716.receiver = v352;
  v716.super_class = v692;
  v562 = objc_msgSendSuper2(&v716, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v563 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  v564 = *&v562[OBJC_IVAR___MusicSBS_TextContentView_textView];
  v565 = v690;
  if (!v564)
  {
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v566 = v562;
  v567 = v562;
  [v567 addSubview:v564];
  v568 = *&v567[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  if (!v568)
  {

    sub_10046E5CC(v741);

    goto LABEL_249;
  }

  v569 = *&v566[v563];
  if (!v569)
  {
LABEL_313:
    __break(1u);
    goto LABEL_314;
  }

  v570 = v568;
  [v569 frame];
  v571 = *&v566[v563];
  if (v571)
  {
    v572 = v571;

    [v572 frame];

    [v570 frame];
    [v570 setFrame:?];

    [v567 addSubview:v570];
    sub_10046E5CC(v741);
LABEL_249:
    sub_100007214(v565, &qword_100615038);
    sub_100007214(v698, &qword_100616C00);
    sub_100007214(v697, &qword_100615038);
    v573 = v673;
    v574 = *v673;
    *v673 = v567;
    v573[1] = &off_1005D4208;
    v575 = v567;
    v576 = v713;
    sub_10048678C(v574);

    v413 = v576;
    goto LABEL_299;
  }

LABEL_314:
  __break(1u);
}

id sub_10048EB3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsLineView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SyncedLyricsLineView()
{
  result = qword_100616700;
  if (!qword_100616700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10048ECB0()
{
  sub_10048EE10(319, &qword_1006163F0, type metadata accessor for Lyrics.TextLine);
  if (v0 <= 0x3F)
  {
    sub_10048EE10(319, &unk_100617000, type metadata accessor for Lyrics.Translation.Line);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10048EE10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004BD174();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10048EE78()
{
  result = qword_100616710;
  if (!qword_100616710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616710);
  }

  return result;
}

char *sub_10048EECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v10 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
  v11 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
  v13 = type metadata accessor for Lyrics.Translation.Line(0);
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment] = 0;
  v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 1;
  v15 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView;
  *&v5[v15] = [objc_allocWithZone(UIView) init];
  v16 = a1;
  v17 = a2;
  v18 = &v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  *v18 = 0;
  v18[1] = 0;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView] = 0;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius] = 0;
  v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused] = 0;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter] = 0;
  v19 = &v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius];
  *v19 = 0;
  v19[8] = 1;
  sub_10001342C(v16, &v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line]);
  swift_beginAccess();
  v44 = a3;
  sub_10003F42C(a3, &v5[v12], &qword_100616EF0);
  swift_endAccess();
  *&v5[v14] = a4;
  memcpy(&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs], a5, 0x2B0uLL);
  swift_beginAccess();
  sub_10046E570(a5, v46);
  sub_10003F42C(a2, &v5[v10], &qword_100616C00);
  swift_endAccess();
  v20 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter] = v20;
  v45.receiver = v5;
  v45.super_class = type metadata accessor for SyncedLyricsLineView();
  v21 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView;
  [*&v21[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView] setUserInteractionEnabled:0];
  v23 = *&v21[v22];
  v24 = v21;
  [v24 addSubview:v23];
  [v24 setExclusiveTouch:1];
  v25 = *&v24[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 416];
  v26 = *&v24[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 432];
  v46[0] = *&v24[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 400];
  v46[1] = v25;
  v46[2] = v26;
  [v24 setTransform:v46];
  v27 = [v24 layer];
  [v27 setShouldRasterize:1];

  v28 = [v24 layer];
  v29 = [objc_opt_self() mainScreen];
  [v29 scale];
  v31 = v30;

  [v28 setRasterizationScale:v31];
  v32 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter;
  v33 = *&v24[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter];
  isa = sub_1004BC6E4().super.super.isa;
  [v33 setValue:isa forKey:kCAFilterInputRadius];

  v35 = [v24 layer];
  sub_100003ABC(&qword_100615758);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1004C50A0;
  v37 = *&v24[v32];
  *(v36 + 56) = sub_100009130(0, &qword_100615B68);
  *(v36 + 32) = v37;
  v38 = v37;
  v39 = sub_1004BC284().super.isa;

  [v35 setFilters:v39];

  if (qword_100614E78 != -1)
  {
    swift_once();
  }

  v40 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && sub_10043EA2C(9, *(v40 + 40)))
  {
    v41 = [objc_opt_self() redColor];
    [v24 setBackgroundColor:v41];
  }

  sub_100488724();
  sub_10048769C();
  sub_100007214(v44, &qword_100616EF0);
  sub_100007214(v17, &qword_100616C00);
  sub_100004C6C(v16);
  return v24;
}

uint64_t sub_10048F458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10048F4BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10048F51C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10048F584()
{

  return swift_deallocObject();
}

uint64_t sub_10048F5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10048F5F0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10048F628()
{

  return swift_deallocObject();
}

void sub_10048F66C()
{
  v1 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
  v2 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
  v4 = type metadata accessor for Lyrics.Translation.Line(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling) = 1;
  v5 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = (v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter) = 0;
  v7 = v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius;
  *v7 = 0;
  *(v7 + 8) = 1;
  sub_1004BD624();
  __break(1u);
}

uint64_t sub_10048F7F4()
{

  return swift_deallocObject();
}

uint64_t SyncedLyricsManager.Configuration.init(animationDuration:finishLineAnimationDuration:maxEndTimeOffset:maxSelectedLines:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a3;
  return result;
}

uint64_t SyncedLyricsManager.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 32) = v4;
}

uint64_t SyncedLyricsManager.configuration.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = *(a1 + 32);
}

uint64_t SyncedLyricsManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SyncedLyricsManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10048FA68;
}

void sub_10048FA68(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10048FAEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

uint64_t SyncedLyricsManager.isPlayingSpatial.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

double SyncedLyricsManager.spatialOffset.getter()
{
  swift_beginAccess();
  result = 0.0;
  if (*(v0 + 88) == 1)
  {
    return Lyrics.spatialOffset.getter();
  }

  return result;
}

uint64_t SyncedLyricsManager.adjustedElapsedTime.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  if (v1)
  {

    v3 = v1(v2);
    swift_beginAccess();
    v4 = 0.0;
    if (*(v0 + 88) == 1)
    {
      v4 = Lyrics.spatialOffset.getter();
    }

    sub_10003CC4C(v1);
    *&result = v3 - v4;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void sub_10048FD5C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 96);
  if (v2)
  {

    v4 = v2(v3);
    swift_beginAccess();
    v5 = 0.0;
    if (*(v0 + 88) == 1)
    {
      v5 = Lyrics.spatialOffset.getter();
    }

    sub_10003CC4C(v2);
    v6 = v4 - v5;
    v7 = *(v0 + 16);
    Lyrics.line(before:useOriginalLines:)(0, &v20, v6 + 0.1);
    if (v21)
    {
      sub_100013414(&v20, &v22);
    }

    else
    {
      v19 = *(v7 + 40);
      if (*(v19 + 16))
      {
        sub_10001342C(v19 + 32, &v22);
        if (v21)
        {
          sub_100007214(&v20, &qword_100615100);
        }
      }

      else
      {
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
      }
    }

    if (*(&v23 + 1))
    {
      sub_100013414(&v22, v25);
      v9 = v26;
      v8 = v27;
      sub_100009178(v25, v26);
      if ((*(*(v8 + 8) + 8))(v9) < v6 || (v11 = v26, v10 = v27, sub_100009178(v25, v26), vabdd_f64(v6, (*(*(v10 + 8) + 8))(v11)) <= 0.1))
      {
        Lyrics.line(after:)(v25, &v22);
        swift_beginAccess();
        sub_100491900(&v22, v1 + 112);
        swift_endAccess();
        sub_100007214(&v22, &qword_100615100);
        sub_100003ABC(&qword_100615700);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1004C50A0;
        sub_10001342C(v25, v16 + 32);
        swift_beginAccess();
        *(v1 + 80) = v16;

        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
LABEL_16:
          sub_100004C6C(v25);
          return;
        }

        v17 = *(v1 + 72);
        ObjectType = swift_getObjectType();
        (*(v17 + 16))(v1, v25, 1, ObjectType, v17, v6);
      }

      else
      {
        sub_10001342C(v25, &v22);
        swift_beginAccess();
        sub_100491900(&v22, v1 + 112);
        swift_endAccess();
        sub_100007214(&v22, &qword_100615100);
        swift_beginAccess();
        *(v1 + 80) = _swiftEmptyArrayStorage;

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v1 + 72);
          v13 = swift_getObjectType();
          (*(v12 + 48))(v1, v13, v12);
          swift_unknownObjectRelease();
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_16;
        }

        v14 = *(v1 + 72);
        v15 = swift_getObjectType();
        (*(v14 + 16))(v1, v25, 0, v15, v14, v6);
      }

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    sub_100007214(&v22, &qword_100615100);
  }

  SyncedLyricsManager.update()();
}

uint64_t SyncedLyricsManager.elapsedTimeProvider.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  sub_10002F518(v1);
  return v1;
}

uint64_t SyncedLyricsManager.elapsedTimeProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  sub_10002F518(a1);
  sub_10003CC4C(v5);
  sub_10048FD5C();
  return sub_10003CC4C(a1);
}

void (*SyncedLyricsManager.elapsedTimeProvider.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10049026C;
}

void sub_10049026C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10048FD5C();
  }
}

uint64_t SyncedLyricsManager.__allocating_init(lyrics:configuration:delegate:isPlayingSpatial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = swift_allocObject();
  *(v9 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 80) = _swiftEmptyArrayStorage;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0;
  *(v9 + 16) = a1;
  v10 = *(a2 + 16);
  *(v9 + 24) = *a2;
  *(v9 + 40) = v10;
  *(v9 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v9 + 72) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v9 + 88) = a5;
  return v9;
}

uint64_t SyncedLyricsManager.init(lyrics:configuration:delegate:isPlayingSpatial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 80) = _swiftEmptyArrayStorage;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0;
  *(v5 + 16) = a1;
  v10 = *(a2 + 16);
  *(v5 + 24) = *a2;
  *(v5 + 40) = v10;
  *(v5 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v5 + 72) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v5 + 88) = a5;
  return v5;
}

Swift::Void __swiftcall SyncedLyricsManager.update()()
{
  v1 = v0;
  sub_100003ABC(&qword_100616C00);
  __chkstk_darwin();
  v3 = &ObjectType - v2;
  v4 = type metadata accessor for Lyrics.TextLine(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004913E8();
  swift_beginAccess();
  sub_10049169C(v0 + 112, &v68);
  if (!v69)
  {
    sub_100007214(&v68, &qword_100615100);
    return;
  }

  sub_100013414(&v68, v71);
  swift_beginAccess();
  v8 = *(v0 + 96);
  if (v8)
  {

    v10 = v8(v9);
    swift_beginAccess();
    v11 = 0.0;
    if (*(v0 + 88) == 1)
    {
      v11 = Lyrics.spatialOffset.getter();
    }

    sub_10003CC4C(v8);
    swift_beginAccess();
    v12 = *(v0 + 80);
    v13 = *(v12 + 16);
    if (v13)
    {
      sub_10001342C(v12 + 40 * v13 - 8, &v68);
      v15 = v72;
      v14 = v73;
      sub_100009178(v71, v72);
      v16 = (*(*(v14 + 8) + 8))(v15);
      v18 = v69;
      v17 = v70;
      sub_100009178(&v68, v69);
      v19 = v16 - (*(v17[1] + 2))(v18);
      swift_beginAccess();
      v20 = *(v1 + 24);

      v22 = v20(v21, v19);

      sub_100004C6C(&v68);
    }

    else
    {
      swift_beginAccess();
      v23 = *(v0 + 24);

      v22 = v23(v24, 0.0);
    }

    v25 = v10 - v11;
    v26 = *(v1 + 80);
    v27 = *(v26 + 16);
    v65 = v5;
    if (v27)
    {
      sub_10001342C(v26 + 40 * v27 - 8, &v68);
      sub_100003ABC(&qword_1006150F8);
      if (swift_dynamicCast())
      {
        v28 = v66[0];
        v29 = v66[1];
        v30 = v66[2];
        v31 = v67;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v32 = *(v1 + 72);
          ObjectType = swift_getObjectType();
          v69 = &type metadata for Lyrics.InstrumentalLine;
          v70 = &protocol witness table for Lyrics.InstrumentalLine;
          v33 = swift_allocObject();
          *&v68 = v33;
          *(v33 + 16) = v28;
          *(v33 + 24) = v29;
          *(v33 + 32) = v30;
          *(v33 + 40) = v31;
          (*(v32 + 24))(v1, &v68, ObjectType, v32, v25);
          swift_unknownObjectRelease();
          sub_100004C6C(&v68);
        }
      }
    }

    swift_beginAccess();
    if (sub_100490C58(v71, v1, v25 + *(v1 + 40), v22) == 1)
    {
      v34 = *(v1 + 80);
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = v34 + 32;

        swift_beginAccess();
        do
        {
          sub_10001342C(v36, &v68);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v37 = *(v1 + 72);
            v38 = swift_getObjectType();
            (*(v37 + 40))(v1, &v68, v38, v37);
            swift_unknownObjectRelease();
          }

          sub_100004C6C(&v68);
          v36 += 40;
          --v35;
        }

        while (v35);
      }
    }

    v40 = v72;
    v39 = v73;
    sub_100009178(v71, v72);
    if ((*(*(v39 + 8) + 8))(v40) <= v25 + v22)
    {
      v41 = *(v1 + 80);
      v42 = *(v41 + 16);
      if (v42)
      {
        sub_10001342C(v41 + 40 * v42 - 8, &v68);
        v44 = v72;
        v43 = v73;
        sub_100009178(v71, v72);
        v45 = (*(*(v43 + 8) + 8))(v44);
        v47 = v69;
        v46 = v70;
        sub_100009178(&v68, v69);
        v48 = (*(v46[1] + 2))(v47);
        v50 = v69;
        v49 = v70;
        sub_100009178(&v68, v69);
        v51 = (*(v49[1] + 2))(v50) - *(v1 + 48);
        sub_10001342C(v71, v66);
        sub_100003ABC(&qword_1006150F8);
        if (swift_dynamicCast())
        {
          v52 = v65;
          if (v51 < v25)
          {
            goto LABEL_34;
          }
        }

        else
        {
          sub_10001342C(&v68, v66);
          v53 = swift_dynamicCast();
          v52 = v65;
          if (!v53 && *(*(v1 + 80) + 16) < *(v1 + 56))
          {
            v54 = v72;
            v55 = v73;
            sub_100009178(v71, v72);
            ObjectType = (*(v55 + 16))(v54, v55);
            v57 = v69;
            v56 = v70;
            sub_100009178(&v68, v69);
            v58 = (v56[2])(v57, v56);
            if (v58 < ObjectType)
            {
              v60 = v72;
              v59 = v73;
              sub_100009178(v71, v72);
              if ((*(*(v59 + 8) + 8))(v60) < v25)
              {
                sub_1004911AC(v71);
                goto LABEL_36;
              }
            }
          }

          if (v51 < v25)
          {
LABEL_34:
            sub_10049104C(v71, COERCE__INT64(v45 - v48), 0, v25);
            goto LABEL_36;
          }
        }

        sub_10001342C(&v68, v66);
        v61 = swift_dynamicCast();
        v62 = *(v52 + 56);
        if ((v61 & 1) == 0)
        {
          v62(v3, 1, 1, v4);
          sub_100007214(v3, &qword_100616C00);
          goto LABEL_36;
        }

        v62(v3, 0, 1, v4);
        sub_10048F458(v3, v7);
        v63 = *&v7[*(v4 + 44)];
        sub_10047CFF0(v7);
        if (v63 - *(v1 + 48) < v25)
        {
          goto LABEL_34;
        }

LABEL_36:
        sub_100004C6C(&v68);
        goto LABEL_37;
      }

      sub_10049104C(v71, 0, 1, v25);
    }
  }

LABEL_37:
  sub_100004C6C(v71);
}

uint64_t sub_100490C58(void *a1, uint64_t a2, double a3, double a4)
{
  sub_100003ABC(&qword_100616C00);
  __chkstk_darwin();
  v9 = v34 - v8 + 24;
  v10 = type metadata accessor for Lyrics.TextLine(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v15 = a1[3];
  v14 = a1[4];
  sub_100009178(a1, v15);
  if ((*(*(v14 + 8) + 8))(v15) <= a3 + a4)
  {
    swift_beginAccess();
    v16 = *(a2 + 80);
    v17 = *(v16 + 16);
    if (v17)
    {
      sub_10001342C(v16 + 40 * v17 - 8, v35);
      v19 = v36;
      v18 = v37;
      sub_100009178(v35, v36);
      v20 = (*(*(v18 + 8) + 16))(v19);
      swift_beginAccess();
      v21 = v20 - *(a2 + 48);
      sub_10001342C(a1, v34);
      sub_100003ABC(&qword_1006150F8);
      if (!swift_dynamicCast())
      {
        sub_10001342C(v35, v34);
        if (!swift_dynamicCast() && *(*(a2 + 80) + 16) < *(a2 + 56))
        {
          v22 = a1[3];
          v23 = a1[4];
          sub_100009178(a1, v22);
          v33 = (*(v23 + 16))(v22, v23);
          v25 = v36;
          v24 = v37;
          sub_100009178(v35, v36);
          v26 = (*(v24 + 16))(v25, v24);
          if (v26 < v33)
          {
            v28 = a1[3];
            v27 = a1[4];
            sub_100009178(a1, v28);
            if ((*(*(v27 + 8) + 8))(v28) < a3)
            {
              sub_100004C6C(v35);
              return 2;
            }
          }
        }
      }

      if (v21 < a3)
      {
        goto LABEL_10;
      }

      sub_10001342C(v35, v34);
      v30 = swift_dynamicCast();
      v31 = *(v11 + 56);
      if (v30)
      {
        v31(v9, 0, 1, v10);
        sub_10048F458(v9, v13);
        v32 = *&v13[*(v10 + 44)];
        sub_10047CFF0(v13);
        if (v32 - *(a2 + 48) < a3)
        {
LABEL_10:
          sub_100004C6C(v35);
          return 1;
        }
      }

      else
      {
        v31(v9, 1, 1, v10);
        sub_100007214(v9, &qword_100616C00);
      }

      sub_100004C6C(v35);
    }
  }

  return 0;
}

uint64_t sub_10049104C(void *a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  sub_100003ABC(&qword_100615700);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1004C50A0;
  sub_10001342C(a1, v10 + 32);
  swift_beginAccess();
  *(v5 + 80) = v10;

  Lyrics.line(after:)(a1, v14);
  swift_beginAccess();
  sub_100491900(v14, v5 + 112);
  swift_endAccess();
  sub_100007214(v14, &qword_100615100);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v5 + 72);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v5, a1, a2, a3 & 1, ObjectType, v12, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004911AC(void *a1)
{
  v2 = v1;
  sub_10001342C(a1, v18);
  swift_beginAccess();
  v4 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 80) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1004413F0(0, v4[2] + 1, 1, v4);
    *(v2 + 80) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1004413F0((v6 > 1), v7 + 1, 1, v4);
    *(v2 + 80) = v4;
  }

  v8 = v19;
  v9 = v20;
  sub_1001F4C68(v18, v19);
  v10 = __chkstk_darwin();
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  (*(v13 + 16))(v12, v10);
  sub_100491868(v7, v12, (v2 + 80), v8, v9);
  sub_100004C6C(v18);
  *(v2 + 80) = v4;
  swift_endAccess();
  Lyrics.line(after:)(a1, v18);
  swift_beginAccess();
  sub_100491900(v18, v2 + 112);
  swift_endAccess();
  sub_100007214(v18, &qword_100615100);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v2 + 72);
    ObjectType = swift_getObjectType();
    (*(v15 + 32))(v2, a1, ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004913E8()
{
  v1 = v0;
  swift_beginAccess();
  sub_10049169C(v0 + 112, &v19);
  v2 = *(&v20 + 1);
  result = sub_100007214(&v19, &qword_100615100);
  if (!v2)
  {
    result = swift_beginAccess();
    v4 = *(v1 + 96);
    if (v4)
    {

      v6 = v4(v5);
      swift_beginAccess();
      v7 = 0.0;
      if (*(v1 + 88) == 1)
      {
        v7 = Lyrics.spatialOffset.getter();
      }

      result = sub_10003CC4C(v4);
      v8 = *(v1 + 16);
      v9 = *(v8 + 40);
      if (*(v9 + 16))
      {
        v10 = v6 - v7;
        sub_10001342C(v9 + 32, &v19);
        v12 = *(&v20 + 1);
        v11 = v21;
        sub_100009178(&v19, *(&v20 + 1));
        v13 = (*(*(v11 + 8) + 8))(v12);
        sub_100004C6C(&v19);
        if (v10 <= v13)
        {
          v16 = *(v8 + 40);
          if (*(v16 + 16))
          {
            sub_10001342C(v16 + 32, &v19);
          }

          else
          {
            v21 = 0;
            v19 = 0u;
            v20 = 0u;
          }

          swift_beginAccess();
          sub_100491900(&v19, v1 + 112);
          swift_endAccess();
          return sub_100007214(&v19, &qword_100615100);
        }

        else
        {
          Lyrics.line(before:useOriginalLines:)(0, &v17, v10);
          if (v18)
          {
            sub_100013414(&v17, &v19);
            v15 = *(&v20 + 1);
            v14 = v21;
            sub_100009178(&v19, *(&v20 + 1));
            if (v10 >= (*(*(v14 + 8) + 16))(v15))
            {
              Lyrics.line(after:)(&v19, &v17);
            }

            else
            {
              sub_10001342C(&v19, &v17);
            }

            swift_beginAccess();
            sub_100491900(&v17, v1 + 112);
            swift_endAccess();
            sub_100007214(&v17, &qword_100615100);
            return sub_100004C6C(&v19);
          }

          else
          {
            return sub_100007214(&v17, &qword_100615100);
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10049169C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100615100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SyncedLyricsManager.deinit()
{

  sub_1001898C4(v0 + 64);

  sub_10003CC4C(*(v0 + 96));
  sub_100007214(v0 + 112, &qword_100615100);
  return v0;
}

uint64_t SyncedLyricsManager.__deallocating_deinit()
{

  sub_1001898C4(v0 + 64);

  sub_10003CC4C(*(v0 + 96));
  sub_100007214(v0 + 112, &qword_100615100);

  return swift_deallocClassInstance();
}

uint64_t sub_1004917E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_100491868(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1000133B0(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100013414(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_100491900(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100615100);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

CFIndex sub_1004919DC(uint64_t a1, uint64_t a2)
{
  result = CFRange.init(_:)(*&a1).location;
  qword_100619BF0 = v3;
  return result;
}

void sub_100491A04()
{
  v1 = v0;
  sub_100003ABC(&qword_100616910);
  __chkstk_darwin();
  v3 = &v26 - v2;
  sub_100003ABC(&qword_100616918);
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = sub_1004B67C4();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  swift_beginAccess();
  sub_10049169C(v1 + v10, &v27);
  if (!v28)
  {
    sub_100492DF8(&v27);
    [*(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label) setText:0];
    return;
  }

  sub_100013414(&v27, v29);
  v12 = v30;
  v11 = v31;
  sub_100009178(v29, v30);
  v13 = (*(*(v11 + 8) + 8))(v12);
  v14 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label);
  if (v13 >= 60.0)
  {
    v23 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_minutesFormatter);
    v25 = v30;
    v24 = v31;
    sub_100009178(v29, v30);
    (*(*(v24 + 8) + 8))(v25);
    v22 = [v23 stringFromTimeInterval:?];
    goto LABEL_9;
  }

  v15 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_secondsFormatter);
  v16 = sub_1004B6F34();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = sub_1004B6FC4();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  v19 = v30;
  v18 = v31;
  sub_100009178(v29, v30);
  v20 = (*(*(v18 + 8) + 8))(v19);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1004B67B4();
  isa = sub_1004B6774().super.isa;
  (*(v7 + 8))(v9, v6);
  v22 = [v15 stringFromDateComponents:isa];

LABEL_9:
  [v14 setText:v22];

  sub_100004C6C(v29);
}

char *sub_100491E60(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView;
  *&v5[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label;
  v12 = [objc_allocWithZone(UILabel) init];
  v13 = UIView.forAutolayout.getter();

  *&v5[v11] = v13;
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_secondsFormatter;
  v15 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v15 setZeroFormattingBehavior:0x10000];
  [v15 setAllowedUnits:192];
  *&v5[v14] = v15;
  v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_minutesFormatter;
  *&v5[v16] = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v17 = &v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] = 1;
  v70.receiver = v5;
  v70.super_class = type metadata accessor for SyncedLyricsTimestampLabel();
  v18 = objc_msgSendSuper2(&v70, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView;
  v20 = *&v18[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView];
  v21 = v18;
  [v21 addSubview:v20];
  v22 = sub_1004BBE24();
  v23 = [objc_opt_self() systemImageNamed:v22];

  if (v23)
  {
    v24 = UIFontTextStyleCaption2;
    v25 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
    v26 = [objc_opt_self() configurationWithFont:v25 scale:1];

    v27 = [v23 imageWithSymbolConfiguration:v26];
  }

  else
  {
    v27 = 0;
    v24 = UIFontTextStyleCaption2;
  }

  v69 = v27;
  v28 = [objc_allocWithZone(UIImageView) initWithImage:v27];
  v29 = UIView.forAutolayout.getter();

  v30 = *&v18[v19];
  v31 = v29;
  [v30 addSubview:v31];
  v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label;
  v33 = *&v21[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 preferredFontForTextStyle:v24];
  [v35 setFont:v36];

  [*&v21[v32] _setTextColorFollowsTintColor:1];
  [*&v18[v19] addSubview:*&v21[v32]];
  v37 = [v21 layer];

  v38 = objc_opt_self();
  v39 = [v38 blackColor];
  v40 = [v39 CGColor];

  [v37 setShadowColor:v40];
  v41 = [v21 layer];

  if (qword_100614EC0 != -1)
  {
    swift_once();
  }

  HIDWORD(v42) = HIDWORD(qword_100619BF0);
  *&v42 = *&qword_100619BF0;
  [v41 setShadowOpacity:v42];

  v43 = [v21 layer];
  [v43 setShadowOffset:{2.0, 8.0}];

  v44 = [v38 blackColor];
  [v21 setTintColor:v44];

  sub_1004928CC();
  v45 = objc_opt_self();
  sub_100003ABC(&qword_100616B10);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1004C5210;
  v47 = [v31 centerYAnchor];

  v48 = [v21 centerYAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v46 + 32) = v49;
  v50 = [v31 leadingAnchor];

  v51 = [v21 leadingAnchor];
  if (qword_100614EA8 != -1)
  {
    swift_once();
  }

  v52 = *&qword_100619BD8;
  v53 = [v50 constraintEqualToAnchor:v51 constant:*&qword_100619BD8];

  *(v46 + 40) = v53;
  v54 = [*&v21[v32] topAnchor];
  v55 = [v21 topAnchor];

  if (qword_100614EB0 != -1)
  {
    swift_once();
  }

  v56 = *&qword_100619BE0;
  v57 = [v54 constraintEqualToAnchor:v55 constant:*&qword_100619BE0];

  *(v46 + 48) = v57;
  v58 = [*&v21[v32] bottomAnchor];
  v59 = [v21 bottomAnchor];

  v60 = [v58 constraintEqualToAnchor:v59 constant:-v56];
  *(v46 + 56) = v60;
  v61 = [*&v21[v32] leadingAnchor];
  v62 = [v31 trailingAnchor];

  if (qword_100614EB8 != -1)
  {
    swift_once();
  }

  v63 = [v61 constraintEqualToAnchor:v62 constant:*&qword_100619BE8];

  *(v46 + 64) = v63;
  v64 = [*&v21[v32] trailingAnchor];
  v65 = [v21 trailingAnchor];

  v66 = [v64 constraintEqualToAnchor:v65 constant:-v52];
  *(v46 + 72) = v66;
  sub_100492DAC();
  isa = sub_1004BC284().super.isa;

  [v45 activateConstraints:isa];

  return v21;
}

void sub_1004926FC()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SyncedLyricsTimestampLabel();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 frame];
  v1 = CGRectGetHeight(v11) * 0.5;
  v2 = *&v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView];
  [v2 _setContinuousCornerRadius:v1];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = [v0 layer];
  [v0 bounds];
  v8 = [objc_opt_self() bezierPathWithRoundedRect:v4 cornerRadius:{v5, v6, v7, v1}];
  v9 = [v8 CGPath];

  [v3 setShadowPath:v9];
}

void sub_1004928CC()
{
  v1 = v0;
  sub_1004B8414();
  __chkstk_darwin();
  v2 = sub_1004B8434();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v6 = *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView];
    v7 = v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState];
    v8 = objc_opt_self();
    v9 = &selRef_whiteColor;
    if (!v7)
    {
      v9 = &selRef_grayColor;
    }

    v10 = [v8 *v9];
    [v6 setBackgroundColor:v10];
  }

  else
  {
    if (v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] == 1)
    {
      sub_1004B8404();
      sub_1004B8444();
      v11 = [objc_opt_self() whiteColor];
      v16 = v2;
      v17 = &protocol witness table for _Glass;
      sub_1000133B0(v15);
      sub_1004B8424();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      sub_1004B8404();
      v16 = v2;
      v17 = &protocol witness table for _Glass;
      sub_1000133B0(v15);
      sub_1004B8444();
    }

    sub_1004BCF04();
  }

  v12 = [v1 layer];
  v13 = 0.0;
  if (v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] == 1)
  {
    if (qword_100614EC0 != -1)
    {
      swift_once();
    }

    HIDWORD(v13) = HIDWORD(qword_100619BF0);
    *&v13 = *&qword_100619BF0;
  }

  [v12 setShadowOpacity:v13];
}

id sub_100492B8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsTimestampLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100492C60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView;
  *(v1 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label;
  v4 = [objc_allocWithZone(UILabel) init];
  v5 = UIView.forAutolayout.getter();

  *(v1 + v3) = v5;
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_secondsFormatter;
  v7 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v7 setZeroFormattingBehavior:0x10000];
  [v7 setAllowedUnits:192];
  *(v1 + v6) = v7;
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_minutesFormatter;
  *(v1 + v8) = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v9 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState) = 1;
  sub_1004BD624();
  __break(1u);
}

unint64_t sub_100492DAC()
{
  result = qword_100616718;
  if (!qword_100616718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100616718);
  }

  return result;
}

uint64_t sub_100492DF8(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100615100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SyncedLyricsViewController.Specs.lineChangeSpringTimingParameters.getter()
{
  v1 = v0[83];
  v2 = v0[84];
  v3 = v0[85];
  v4 = objc_allocWithZone(UISpringTimingParameters);

  return [v4 initWithMass:v1 stiffness:v2 damping:v3 initialVelocity:{0.0, 0.0}];
}

id static SyncedLyricsViewController.Specs.liftSpringTimingParameters()()
{
  v0 = objc_allocWithZone(UISpringTimingParameters);

  return [v0 initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
}

id static SyncedLyricsViewController.Specs.backgroundVocalsSpringTimingParameters(showing:)(char a1)
{
  if (a1)
  {
    v1 = objc_allocWithZone(UISpringTimingParameters);

    return [v1 initWithMass:1.0 stiffness:30.0 damping:9.0 initialVelocity:{0.0, 0.0}];
  }

  else
  {
    sub_100009130(0, &qword_100616920);
    return UISpringTimingParameters.init(dampingRatio:response:)(1.0, 0.2);
  }
}

id static SyncedLyricsViewController.Specs.opacityAnimator()()
{
  v0 = objc_allocWithZone(UIViewPropertyAnimator);

  return [v0 initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
}

void static SyncedLyricsViewController.Specs.animateWithHighlightAnimationCurves(highlighted:fadeAnimations:transformAnimations:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(UISpringTimingParameters);
  if (a1)
  {
    v11 = 24.0;
  }

  else
  {
    v11 = 50.0;
  }

  v12 = 322.0;
  if ((a1 & 1) == 0)
  {
    v12 = 300.0;
  }

  v13 = 2.0;
  if (a1)
  {
    v13 = 1.0;
    v14 = 0.0;
  }

  else
  {
    v14 = 0.1;
  }

  if (a1)
  {
    v15 = 0.2;
  }

  else
  {
    v15 = 0.3;
  }

  v16 = [v10 initWithMass:v13 stiffness:v12 damping:v11 initialVelocity:{0.0, 0.0}];
  v17 = sub_1004969C0(a1);
  v18 = objc_opt_self();
  v33 = a2;
  v34 = a3;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_1000D6C80;
  v32 = &unk_1005D5018;
  v19 = _Block_copy(&v29);
  swift_unknownObjectRetain();

  [v18 _animateWithDuration:0 delay:v17 options:v19 factory:0 animations:v15 completion:v14];
  _Block_release(v19);
  swift_unknownObjectRelease();
  [v16 settlingDuration];
  v21 = v20;
  [v16 mass];
  v23 = v22;
  [v16 stiffness];
  v25 = v24;
  [v16 damping];
  v27 = v26;
  v33 = a4;
  v34 = a5;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_1000D6C80;
  v32 = &unk_1005D5040;
  v28 = _Block_copy(&v29);

  [v18 _animateUsingSpringWithDuration:0 delay:v28 options:0 mass:v21 stiffness:v14 damping:v23 initialVelocity:v25 animations:v27 completion:0.0];

  swift_unknownObjectRelease();
  _Block_release(v28);
}

BOOL static SyncedLyricsViewController.Specs.SelectedLinePosition.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if ((v2 & 0x80000000) == 0)
  {
    if ((*(a2 + 32) & 0x80000000) == 0)
    {
      return *a2 == *a1;
    }

    return 0;
  }

  v4 = *(a2 + 32);
  if ((v4 & 0x80000000) == 0)
  {
    return 0;
  }

  if (v2)
  {
    return (v4 & 1) != 0;
  }

  else
  {
    return (v4 & 1) == 0 && CGRectEqualToRect(*a1, *a2);
  }
}

BOOL sub_1004933C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if ((v2 & 0x80000000) == 0)
  {
    return (v3 & 0x80000000) == 0 && *a1 == *a2;
  }

  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  if (v2)
  {
    return (v3 & 1) != 0;
  }

  else
  {
    return (v3 & 1) == 0 && CGRectEqualToRect(*a1, *a2);
  }
}

__n128 SyncedLyricsViewController.Specs.selectedLinePosition.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 SyncedLyricsViewController.Specs.selectedLinePosition.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

uint64_t SyncedLyricsViewController.Specs.lineTextAlignment.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t SyncedLyricsViewController.Specs.songwritersTextAlignment.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

__n128 SyncedLyricsViewController.Specs.backgroundVocalsDeselectedTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 16) = v2;
  result = *(v1 + 160);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.backgroundVocalsDeselectedTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v2;
  result = *(a1 + 32);
  *(v1 + 160) = result;
  return result;
}

uint64_t SyncedLyricsViewController.Specs.fontLeading.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

void *SyncedLyricsViewController.Specs.translationTextColor.getter()
{
  v1 = *(v0 + 288);
  v2 = v1;
  return v1;
}

__n128 SyncedLyricsViewController.Specs.deselectedTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 416);
  *a1 = *(v1 + 400);
  *(a1 + 16) = v2;
  result = *(v1 + 432);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.deselectedTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 400) = *a1;
  *(v1 + 416) = v2;
  result = *(a1 + 32);
  *(v1 + 432) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.touchDownTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 528);
  *a1 = *(v1 + 512);
  *(a1 + 16) = v2;
  result = *(v1 + 544);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.touchDownTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 512) = *a1;
  *(v1 + 528) = v2;
  result = *(a1 + 32);
  *(v1 + 544) = result;
  return result;
}

void *SyncedLyricsViewController.Specs.with(_:)@<X0>(void (*a1)(_BYTE *)@<X0>, void *a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  sub_10046E570(v2, &v6);
  a1(__dst);
  return memcpy(a2, __dst, 0x2B0uLL);
}

void *SyncedLyricsViewController.Specs.default.unsafeMutableAddressor()
{
  if (qword_100614EC8 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.default;
}

void sub_100494338(uint64_t a1)
{
  *(a1 + 16) = 0x4034000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = xmmword_1004EA350;
  *(a1 + 184) = 0x3FE0000000000000;
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:48.0 weight:UIFontWeightBold];

  *(a1 + 200) = v3;
  v4 = [v2 systemFontOfSize:32.0 weight:UIFontWeightBold];

  *(a1 + 224) = v4;
  sub_100009130(0, &qword_100616F10);
  v5 = sub_1004BCE34();

  *(a1 + 264) = v5;
  v6 = sub_1004BCE34();

  *(a1 + 272) = v6;
  v7 = sub_1004BCE34();

  *(a1 + 280) = v7;
  v8 = sub_1004BCE34();

  *(a1 + 312) = v8;
  v9 = sub_1004BCE34();

  *(a1 + 320) = v9;
  *(a1 + 208) = 0x404A000000000000;
  *(a1 + 216) = 0;
  v10 = [v2 preferredFontForTextStyle:UIFontTextStyleBody];

  *(a1 + 344) = v10;
}

void *SyncedLyricsViewController.Specs.iPad.unsafeMutableAddressor()
{
  if (qword_100614ED0 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.iPad;
}

void sub_1004945E8(uint64_t a1)
{
  *(a1 + 16) = 0x4042000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = xmmword_1004EA350;
  *(a1 + 184) = 0x3FE0000000000000;
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:56.0 weight:UIFontWeightBold];

  *(a1 + 200) = v3;
  v4 = [v2 systemFontOfSize:34.0 weight:UIFontWeightBold];

  *(a1 + 224) = v4;
  v5 = [v2 systemFontOfSize:26.0 weight:UIFontWeightBold];

  *(a1 + 264) = v5;
  v6 = [v2 systemFontOfSize:33.0 weight:UIFontWeightBold];

  *(a1 + 272) = v6;
  sub_100009130(0, &qword_100616F10);
  v7 = sub_1004BCE34();

  *(a1 + 280) = v7;
  v8 = [v2 systemFontOfSize:33.0 weight:UIFontWeightBold];

  *(a1 + 312) = v8;
  v9 = sub_1004BCE34();

  *(a1 + 320) = v9;
  *(a1 + 656) = 0;
  *(a1 + 208) = 0x404C000000000000;
  *(a1 + 216) = 0;
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  v12 = [v11 colorWithAlphaComponent:0.175];

  *(a1 + 496) = v12;
  v13 = [v10 whiteColor];

  *(a1 + 488) = v13;
  v14 = [v10 whiteColor];
  v15 = [v14 colorWithAlphaComponent:0.35];

  v16 = [v10 labelColor];
  v17 = [v16 colorWithAlphaComponent:0.55];

  v18 = objc_allocWithZone(UIColor);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v15;
  v25[4] = sub_100496DB0;
  v25[5] = v19;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_100399BF8;
  v25[3] = &unk_1005D53B0;
  v20 = _Block_copy(v25);
  v21 = v17;
  v22 = v15;

  v23 = [v18 initWithDynamicProvider:v20];

  _Block_release(v20);
  *(a1 + 360) = v23;
  v24 = [v2 systemFontOfSize:20.0];

  *(a1 + 344) = v24;
}

void *SyncedLyricsViewController.Specs.vision.unsafeMutableAddressor()
{
  if (qword_100614ED8 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.vision;
}

double sub_100494A98(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:76.0 weight:UIFontWeightBold];

  *(a1 + 200) = v3;
  *(a1 + 112) = 0x4059000000000000;
  *(a1 + 624) = 0x4008000000000000;
  *(a1 + 400) = 0x3FF0000000000000;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0x3FF0000000000000;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  v4 = [v2 systemFontOfSize:48.0 weight:UIFontWeightBold];

  *(a1 + 224) = v4;
  v5 = [v2 systemFontOfSize:35.0 weight:UIFontWeightBold];

  *(a1 + 264) = v5;
  v6 = [v2 systemFontOfSize:44.0 weight:UIFontWeightBold];

  *(a1 + 272) = v6;
  v7 = [v2 systemFontOfSize:28.0 weight:UIFontWeightBold];

  *(a1 + 280) = v7;
  v8 = [v2 systemFontOfSize:44.0 weight:UIFontWeightBold];

  *(a1 + 312) = v8;
  v9 = [v2 systemFontOfSize:21.0 weight:UIFontWeightBold];

  *(a1 + 320) = v9;
  objc_storeStrong((a1 + 392), *(a1 + 368));
  v10 = [v2 preferredFontForTextStyle:UIFontTextStyleHeadline];

  *(a1 + 232) = v10;
  v11 = [v2 preferredFontForTextStyle:UIFontTextStyleHeadline];

  *(a1 + 240) = v11;
  *(a1 + 608) = xmmword_1004EA360;
  *(a1 + 656) = 16842752;
  *(a1 + 664) = 0x3FF0000000000000;
  result = 68.0;
  *(a1 + 672) = xmmword_1004EA370;
  return result;
}

void *SyncedLyricsViewController.Specs.tv.unsafeMutableAddressor()
{
  if (qword_100614EE0 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.tv;
}

void sub_100494DB8(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = -127;
  *(a1 + 192) = 1;
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:28.0 weight:UIFontWeightBold];

  *(a1 + 200) = v3;
  v4 = [v2 systemFontOfSize:24.0 weight:UIFontWeightBold];

  *(a1 + 224) = v4;
}

void *SyncedLyricsViewController.Specs.alternative.unsafeMutableAddressor()
{
  if (qword_100614EE8 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.alternative;
}

void sub_100494F40(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  __asm { FMOV            V0.2D, #3.0 }

  *(a1 + 112) = _Q0;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x3FF0000000000000;
  sub_100009130(0, &qword_100616F10);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v7 = sub_1004BCE34();

  *(a1 + 200) = v7;
  v8 = sub_1004BCE34();

  *(a1 + 224) = v8;
  v9 = sub_1004BCE34();

  *(a1 + 232) = v9;
  v10 = sub_1004BCE34();

  *(a1 + 240) = v10;
  v11 = sub_1004BCE34();

  *(a1 + 264) = v11;
  v12 = sub_1004BCE34();

  *(a1 + 272) = v12;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x4010000000000000;
  v13 = objc_opt_self();
  v14 = [v13 labelColor];

  *(a1 + 352) = v14;
  v15 = [v13 labelColor];

  *(a1 + 360) = v15;
  v16 = [v13 labelColor];

  *(a1 + 368) = v16;
  v17 = [v13 labelColor];

  *(a1 + 376) = v17;
  v18 = [v13 labelColor];

  *(a1 + 384) = v18;
  v19 = [v13 labelColor];

  *(a1 + 392) = v19;
  v20 = [v13 secondaryLabelColor];

  *(a1 + 288) = v20;
  *(a1 + 400) = 0x3FF0000000000000;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0x3FF0000000000000;
  *(a1 + 657) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
}

void *SyncedLyricsViewController.Specs.static.unsafeMutableAddressor()
{
  if (qword_100614EF0 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.static;
}

uint64_t sub_100495228@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_10046E570(a2, v4);
}

UISpringTimingParameters __swiftcall SyncedLyricsViewController.Specs.syllableBySyllableLineChangeSpringTimingParameters(gap:)(Swift::Double_optional gap)
{
  if (v1)
  {
    v3 = v2[83];
    v4 = v2[84];
    v5 = v2[85];
    v6 = objc_allocWithZone(UISpringTimingParameters);

    return [v6 initWithMass:v3 stiffness:v4 damping:v5 initialVelocity:{0.0, 0.0}];
  }

  else
  {
    v8 = 0.75;
    if (*&gap.is_nil <= 0.75)
    {
      v8 = *&gap.is_nil;
    }

    v9 = (v8 + -0.2) / 0.55;
    v10 = 0.0;
    if (*&gap.is_nil >= 0.2)
    {
      v10 = v9;
    }

    v11 = (1.0 - v10) * 0.12 + 0.78;
    v12 = v10 * 0.27 + 0.48;
    sub_100009130(0, &qword_100616920);
    return UISpringTimingParameters.init(dampingRatio:response:)(v11, v12);
  }
}

id static SyncedLyricsViewController.Specs.tapSpringTimingParameters()()
{
  v0 = objc_allocWithZone(UISpringTimingParameters);

  return [v0 initWithMass:2.0 stiffness:260.0 damping:50.0 initialVelocity:{0.0, 0.0}];
}

id sub_1004954C0()
{
  v2.receiver = v0;
  v2.super_class = _s5SpecsV27CustomCurveAnimationFactoryCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_1004954FC(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s7LyricsX06SyncedA14ViewControllerC5SpecsV23__derived_struct_equalsySbAE_AEtFZ_0(v4, __dst);
}

id sub_100495554(void *a1, void *a2, void *a3)
{
  v4 = [a1 accessibilityContrast];
  if (v4 == -1)
  {
    v6 = a3;
  }

  else
  {
    v5 = v4 == 1;
    v6 = a3;
    if (v5)
    {
      v6 = a2;
    }
  }

  return v6;
}

BOOL _s7LyricsX06SyncedA14ViewControllerC5SpecsV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v2 = a1[48];
  v3 = a2[48];
  if (v2 < 0)
  {
    if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v3)
      {
        return 0;
      }

      v6 = a1;
      v7 = a2;
      v8 = CGRectEqualToRect(*(a1 + 16), *(a2 + 16));
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (!v9)
      {
        return 0;
      }
    }
  }

  else if (v3 < 0 || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  if (*(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v4 = a2[88];
  if (a1[88])
  {
    if (!a2[88])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 10) != *(a2 + 10))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v10 = a2[104];
  if (a1[104])
  {
    if (!a2[104])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 12) != *(a2 + 12))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (*(a1 + 14) != *(a2 + 14))
  {
    return 0;
  }

  if (*(a1 + 15) != *(a2 + 15))
  {
    return 0;
  }

  v11 = a1;
  v12 = a2;
  if ((sub_1004BCA84() & 1) == 0)
  {
    return 0;
  }

  if (v11[22] != v12[22])
  {
    return 0;
  }

  if (v11[23] != v12[23])
  {
    return 0;
  }

  if (*(v11 + 24) != *(v12 + 24))
  {
    return 0;
  }

  sub_100009130(0, &qword_100616BF0);
  if ((sub_1004BCFA4() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v12 + 216);
  if (v11[27])
  {
    if (!*(v12 + 216))
    {
      return 0;
    }
  }

  else
  {
    if (v11[26] != v12[26])
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if ((sub_1004BCFA4() & 1) == 0 || (sub_1004BCFA4() & 1) == 0 || (sub_1004BCFA4() & 1) == 0 || v11[31] != v12[31] || v11[32] != v12[32] || (sub_1004BCFA4() & 1) == 0 || (sub_1004BCFA4() & 1) == 0 || (sub_1004BCFA4() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v11 + 36);
  v15 = *(v12 + 36);
  if (!v14)
  {
    if (!v15)
    {
      return v11[37] == v12[37] && v11[38] == v12[38] && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && v11[41] == v12[41] && v11[42] == v12[42] && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCA84() & 1) != 0 && v11[56] == v12[56] && (sub_1004BCFA4() & 1) != 0 && v11[58] == v12[58] && v11[59] == v12[59] && v11[60] == v12[60] && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && v11[63] == v12[63] && (sub_1004BCA84() & 1) != 0 && v11[70] == v12[70] && (sub_1004BCFA4() & 1) != 0 && v11[72] == v12[72] && v11[73] == v12[73] && *(v11 + 74) == *(v12 + 74) && v11[75] == v12[75] && v11[76] == v12[76] && v11[77] == v12[77] && v11[78] == v12[78] && v11[79] == v12[79] && v11[80] == v12[80] && v11[81] == v12[81] && ((*(v11 + 656) ^ *(v12 + 656)) & 1) == 0 && ((*(v11 + 657) ^ *(v12 + 657)) & 1) == 0 && ((*(v11 + 658) ^ *(v12 + 658)) & 1) == 0 && ((*(v11 + 659) ^ *(v12 + 659)) & 1) == 0 && v11[83] == v12[83] && v11[84] == v12[84] && v11[85] == v12[85];
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  sub_100009130(0, &unk_1006169D0);
  v16 = v15;
  v17 = v14;
  v18 = sub_1004BCFA4();

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  return v11[37] == v12[37] && v11[38] == v12[38] && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && v11[41] == v12[41] && v11[42] == v12[42] && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCA84() & 1) != 0 && v11[56] == v12[56] && (sub_1004BCFA4() & 1) != 0 && v11[58] == v12[58] && v11[59] == v12[59] && v11[60] == v12[60] && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && v11[63] == v12[63] && (sub_1004BCA84() & 1) != 0 && v11[70] == v12[70] && (sub_1004BCFA4() & 1) != 0 && v11[72] == v12[72] && v11[73] == v12[73] && *(v11 + 74) == *(v12 + 74) && v11[75] == v12[75] && v11[76] == v12[76] && v11[77] == v12[77] && v11[78] == v12[78] && v11[79] == v12[79] && v11[80] == v12[80] && v11[81] == v12[81] && ((*(v11 + 656) ^ *(v12 + 656)) & 1) == 0 && ((*(v11 + 657) ^ *(v12 + 657)) & 1) == 0 && ((*(v11 + 658) ^ *(v12 + 658)) & 1) == 0 && ((*(v11 + 659) ^ *(v12 + 659)) & 1) == 0 && v11[83] == v12[83] && v11[84] == v12[84] && v11[85] == v12[85];
}

void *sub_100495C14@<X0>(void (*a1)(_BYTE *)@<X0>, void *a2@<X8>)
{
  __src[0] = 0;
  *&__src[8] = 0x404E000000000000;
  *&__src[16] = 0x4028000000000000uLL;
  memset(&__src[32], 0, 17);
  *&__src[56] = xmmword_1004EA380;
  *&__src[72] = 0x4043800000000000;
  *&__src[80] = 0;
  __src[88] = 1;
  *&__src[96] = 0;
  __src[104] = 1;
  *&__src[112] = xmmword_1004EA390;
  CGAffineTransformMakeScale(&aBlock, 0.9, 0.9);
  *&__src[128] = aBlock;
  *&__src[176] = xmmword_1004EA3A0;
  *&__src[192] = 2;
  sub_100009130(0, &qword_100616F10);
  *&__src[200] = sub_1004BCE34();
  *&__src[208] = 0;
  __src[216] = 1;
  *&__src[224] = sub_1004BCE44();
  v2 = objc_opt_self();
  *&__src[232] = [v2 systemFontOfSize:22.0 weight:UIFontWeightBold];
  *&__src[240] = [v2 systemFontOfSize:22.0 weight:UIFontWeightSemibold];
  *&__src[248] = xmmword_1004EA3B0;
  *&__src[264] = sub_1004BCE34();
  *&__src[272] = sub_1004BCE34();
  *&__src[280] = [v2 systemFontOfSize:14.0 weight:UIFontWeightBold];
  *&__src[288] = 0;
  *&__src[296] = Int.seconds.getter(7);
  *&__src[304] = Int.seconds.getter(4);
  *&__src[312] = sub_1004BCE34();
  *&__src[320] = sub_1004BCE34();
  *&__src[328] = Int.seconds.getter(5);
  *&__src[336] = *&__src[328];
  *&__src[344] = [v2 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  v5 = [v3 labelColor];
  v6 = objc_allocWithZone(UIColor);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v7;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D5400;
  v8 = _Block_copy(&aBlock);
  v9 = v5;
  v10 = v4;

  v11 = [v6 initWithDynamicProvider:v8];

  _Block_release(v8);
  *&__src[352] = v11;
  v12 = [v3 whiteColor];
  v13 = [v12 colorWithAlphaComponent:0.35];

  v14 = [v3 labelColor];
  v15 = [v14 colorWithAlphaComponent:0.85];

  v16 = objc_allocWithZone(UIColor);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v13;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v17;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D5450;
  v18 = _Block_copy(&aBlock);
  v19 = v15;
  v20 = v13;

  v21 = [v16 initWithDynamicProvider:v18];

  _Block_release(v18);
  *&__src[360] = v21;
  v22 = [v3 whiteColor];
  v23 = [v22 colorWithAlphaComponent:0.175];

  v24 = [v3 labelColor];
  v25 = [v24 colorWithAlphaComponent:0.4];

  v26 = objc_allocWithZone(UIColor);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v23;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v27;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D54A0;
  v28 = _Block_copy(&aBlock);
  v29 = v25;
  v30 = v23;

  v31 = [v26 initWithDynamicProvider:v28];

  _Block_release(v28);
  *&__src[368] = v31;
  v32 = [v3 whiteColor];
  v33 = [v32 colorWithAlphaComponent:0.35];

  v34 = [v3 labelColor];
  v35 = [v34 colorWithAlphaComponent:0.85];

  v36 = objc_allocWithZone(UIColor);
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 24) = v33;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v37;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D54F0;
  v38 = _Block_copy(&aBlock);
  v39 = v35;
  v40 = v33;

  v41 = [v36 initWithDynamicProvider:v38];

  _Block_release(v38);
  *&__src[376] = v41;
  v42 = [v3 whiteColor];
  v43 = [v42 colorWithAlphaComponent:0.175];

  v44 = [v3 labelColor];
  v45 = [v44 colorWithAlphaComponent:0.65];

  v46 = objc_allocWithZone(UIColor);
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = v43;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v47;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D5540;
  v48 = _Block_copy(&aBlock);
  v49 = v45;
  v50 = v43;

  v51 = [v46 initWithDynamicProvider:v48];

  _Block_release(v48);
  *&__src[384] = v51;
  v52 = [v3 whiteColor];
  v53 = [v52 colorWithAlphaComponent:0.4];

  v54 = [v3 labelColor];
  v55 = [v54 colorWithAlphaComponent:0.4];

  v56 = objc_allocWithZone(UIColor);
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  *(v57 + 24) = v53;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v57;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D5590;
  v58 = _Block_copy(&aBlock);
  v59 = v55;
  v60 = v53;

  v61 = [v56 initWithDynamicProvider:v58];

  _Block_release(v58);
  *&__src[392] = v61;
  CGAffineTransformMakeScale(&aBlock, 0.98, 0.98);
  *&__src[400] = aBlock;
  *&__src[448] = 0x3FB999999999999ALL;
  *&__src[456] = [v3 whiteColor];
  *&__src[464] = xmmword_1004EA3C0;
  *&__src[480] = 0x3FD999999999999ALL;
  v62 = [v3 whiteColor];
  v63 = [v3 tintColor];
  v64 = objc_allocWithZone(UIColor);
  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  *(v65 + 24) = v62;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v65;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D55E0;
  v66 = _Block_copy(&aBlock);
  v67 = v63;
  v68 = v62;

  v69 = [v64 initWithDynamicProvider:v66];

  _Block_release(v66);
  *&__src[488] = v69;
  v70 = [v3 whiteColor];
  v71 = [v70 colorWithAlphaComponent:0.175];

  v72 = [v3 tintColor];
  v73 = [v72 colorWithAlphaComponent:0.175];

  v74 = objc_allocWithZone(UIColor);
  v75 = swift_allocObject();
  *(v75 + 16) = v73;
  *(v75 + 24) = v71;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v75;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D5630;
  v76 = _Block_copy(&aBlock);
  v77 = v73;
  v78 = v71;

  v79 = [v74 initWithDynamicProvider:v76];

  _Block_release(v76);
  *&__src[496] = v79;
  *&__src[504] = 0x403E000000000000;
  CGAffineTransformMakeScale(&aBlock, 0.95, 0.95);
  *&__src[512] = aBlock;
  *&__src[560] = 0x3FEB333333333333;
  *&__src[568] = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.08];
  __asm { FMOV            V0.2D, #16.0 }

  *&__src[576] = _Q0;
  *&__src[592] = 3;
  *&__src[600] = 0x4044000000000000;
  *&__src[608] = xmmword_1004EA3D0;
  *&__src[624] = xmmword_1004EA3E0;
  *&__src[640] = xmmword_1004EA3F0;
  *&__src[656] = 257;
  v85 = Int.seconds.getter(1);
  v86 = Int.seconds.getter(100);
  v87 = Int.seconds.getter(18);
  *&__src[664] = v85;
  *&__src[672] = v86;
  *&__src[680] = v87;
  if (a1)
  {

    a1(__src);
    sub_10003CC4C(a1);
    sub_10003CC4C(a1);
  }

  return memcpy(a2, __src, 0x2B0uLL);
}

id sub_1004969C0(char a1)
{
  if (a1)
  {
    v1 = 1.0;
    v2 = 0.0;
    v3 = 0.55;
    v4 = 0;
  }

  else
  {
    v2 = 0.25;
    v4 = 0x3FB999999999999ALL;
    v1 = 0.1;
    v3 = 0.25;
  }

  v5 = _s5SpecsV27CustomCurveAnimationFactoryCMa();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory_controlPoint1];
  *v7 = v2;
  *(v7 + 1) = v4;
  v8 = &v6[OBJC_IVAR____TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory_controlPoint2];
  *v8 = v3;
  v8[1] = v1;
  v10.receiver = v6;
  v10.super_class = v5;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_100496A68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100496A84()
{
  result = qword_100616928;
  if (!qword_100616928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616928);
  }

  return result;
}

uint64_t sub_100496AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 688))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 200);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100496B28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 680) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 688) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 688) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s5SpecsV20SelectedLinePositionOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s5SpecsV20SelectedLinePositionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

__n128 _s5SpecsV22SpringTimingParametersVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100496D70()
{

  return swift_deallocObject();
}

id sub_100496DB4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [a1 accessibilityContrast];
  if (v4 == 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  if (v4 == -1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

uint64_t sub_100496E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003ABC(&qword_100616B00);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000F778(a3, v24 - v9, &qword_100616B00);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_100616B00);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004BBF54() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100007214(a3, &qword_100616B00);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007214(a3, &qword_100616B00);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1004971B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id SyncedLyricsSharingTransitionInfo.initialView.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 20));

  return v1;
}

void SyncedLyricsSharingTransitionInfo.initialView.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t SyncedLyricsSharingTransitionInfo.alignment.setter(uint64_t a1)
{
  result = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.frame.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  v10 = (v4 + *(result + 28));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.isSelected.setter(char a1)
{
  result = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

__n128 SyncedLyricsSharingTransitionInfo.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 36);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsSharingTransitionInfo.transform.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 36);
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionWillBeginHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 40));

  return v1;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionWillBeginHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionCompletionHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 44));

  return v1;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionCompletionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SyncedLyricsViewController.isPlayingSpatial.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SyncedLyricsViewController.isPlayingSpatial.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  if (v5)
  {
    result = swift_beginAccess();
    *(v5 + 88) = a1 & 1;
  }

  return result;
}

void (*SyncedLyricsViewController.isPlayingSpatial.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_100497A08;
}

void sub_100497A08(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
    if (v5)
    {
      v6 = *(v4 + v3[4]);
      swift_beginAccess();
      *(v5 + 88) = v6;
    }
  }

  free(v3);
}

uint64_t SyncedLyricsViewController.isFullScreen.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SyncedLyricsViewController.isFullScreen.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SyncedLyricsViewController.bottomTapAreaHeight.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SyncedLyricsViewController.bottomTapAreaHeight.setter(double a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SyncedLyricsViewController.containerHeight.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

void SyncedLyricsViewController.containerHeight.setter(double a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    sub_1004A01CC();
  }
}

void (*SyncedLyricsViewController.containerHeight.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_100497DA8;
}

void sub_100497DA8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    sub_1004A01CC();
  }

  free(v1);
}

void sub_100497E00(unsigned __int8 *a1)
{
  v2 = v1;
  if (![v1 isViewLoaded])
  {
    return;
  }

  v4 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  memcpy(__dst, v4, 0x2B0uLL);
  sub_10046E570(__dst, v34);
  v5 = _s7LyricsX06SyncedA14ViewControllerC5SpecsV23__derived_struct_equalsySbAE_AEtFZ_0(__dst, a1);
  sub_10046E5CC(__dst);
  if (v5)
  {
    return;
  }

  sub_1004A01CC();
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v2[v6] setShowsVerticalScrollIndicator:v4[656]];
  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v8 = *&v2[v7];
  if (v8 >> 62)
  {
    v9 = sub_1004BD6A4();
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_5:
      v25 = a1;
      v28 = v9 - 1;
      if (v9 < 1)
      {
        __break(1u);
        return;
      }

      v27 = v8 & 0xC000000000000001;

      v10 = 0;
      v26 = v4;
      if ((v8 & 0xC000000000000001) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      for (i = sub_1004BD484(); ; i = *(v8 + 8 * v10 + 32))
      {
        v12 = i;
        memcpy(v32, v4, sizeof(v32));
        v13 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
        memcpy(v33, &v12[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs], sizeof(v33));
        memmove(&v12[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs], v4, 0x2B0uLL);
        sub_10046E570(v32, v31);
        sub_10046E570(v32, v31);
        sub_10046E5CC(v33);
        v15 = sub_100486A6C(v30);
        if (*v14)
        {
          v16 = v14;
          memcpy(v34, &v12[v13], sizeof(v34));
          v29 = v10;
          v17 = v8;
          v19 = *v16;
          v18 = v16[1];
          ObjectType = swift_getObjectType();
          v21 = v2;
          v22 = v18[2];
          sub_10046E570(v34, v31);
          v23 = v19;
          v22(v34, ObjectType, v18);
          v2 = v21;
          v24 = *v16;
          *v16 = v19;
          v16[1] = v18;
          v8 = v17;
          v10 = v29;
        }

        v15(v30, 0);
        sub_10046E5CC(v32);
        sub_1004A302C(v12);

        if (v28 == v10)
        {
          break;
        }

        ++v10;
        v4 = v26;
        if (v27)
        {
          goto LABEL_7;
        }

LABEL_8:
        ;
      }

      a1 = v25;
      v4 = v26;
    }
  }

  if (v4[657] != (a1[657] & 1))
  {
    if (v4[657])
    {
      sub_1004A7128(0);
    }

    else
    {
      sub_1004A84A4();
    }
  }
}

void *SyncedLyricsViewController.specs.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_10046E570(__dst, v5);
  return memcpy(a1, __dst, 0x2B0uLL);
}

uint64_t SyncedLyricsViewController.specs.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v7, (v1 + v3), sizeof(v7));
  memcpy((v1 + v3), a1, 0x2B0uLL);
  sub_10046E570(__dst, v5);
  sub_10046E570(a1, v5);
  sub_10046E5CC(v7);
  sub_100497E00(__dst);
  sub_10046E5CC(__dst);
  return sub_10046E5CC(a1);
}

void (*SyncedLyricsViewController.specs.modify(uint64_t *a1))(unsigned __int8 **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x15A8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 5528) = v1;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  *(v3 + 5536) = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  memcpy(v4, (v1 + v5), 0x2B0uLL);
  memcpy((v4 + 2064), (v1 + v5), 0x2B0uLL);
  sub_10046E570(v4, v4 + 2752);
  return sub_100498300;
}

void sub_100498300(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 692);
    v4 = *(v2 + 691);
    memcpy(v2 + 4128, v2 + 2064, 0x2B0uLL);
    memcpy(v2 + 688, (v4 + v3), 0x2B0uLL);
    memcpy(v2 + 3440, (v4 + v3), 0x2B0uLL);
    memcpy((v4 + v3), v2 + 2064, 0x2B0uLL);
    sub_10046E570((v2 + 4128), (v2 + 4816));
    sub_10046E570((v2 + 4128), (v2 + 4816));
    sub_10046E570((v2 + 688), (v2 + 4816));
    sub_10046E5CC((v2 + 3440));
    sub_100497E00(v2 + 688);
    sub_10046E5CC((v2 + 688));
    sub_10046E5CC((v2 + 4128));
    memcpy(v2 + 2752, v2 + 2064, 0x2B0uLL);
    v5 = (v2 + 2752);
  }

  else
  {
    v6 = *(v2 + 692);
    v7 = *(v2 + 691);
    memcpy(v2 + 3440, v2 + 2064, 0x2B0uLL);
    memcpy(v2 + 1376, (v7 + v6), 0x2B0uLL);
    memcpy(v2 + 2752, (v7 + v6), 0x2B0uLL);
    memcpy((v7 + v6), v2 + 2064, 0x2B0uLL);
    sub_10046E570((v2 + 1376), (v2 + 4128));
    sub_10046E570((v2 + 3440), (v2 + 4128));
    sub_10046E5CC((v2 + 2752));
    sub_100497E00(v2 + 1376);
    sub_10046E5CC((v2 + 1376));
    v5 = (v2 + 3440);
  }

  sub_10046E5CC(v5);

  free(v2);
}

uint64_t SyncedLyricsViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SyncedLyricsViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1004985D0;
}

void sub_1004985D0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t SyncedLyricsViewController.mode.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10049869C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  sub_10049870C(v5);
}

id sub_10049870C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == a1)
    {
      return sub_1004A4CDC(0);
    }
  }

  else if (!a1)
  {
    return sub_1004A4CDC(0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel) = 0;
  if (v6)
  {
    [v6 removeFromSuperview];
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  *(v1 + v7) = _swiftEmptyArrayStorage;

  if (_swiftEmptyArrayStorage >> 62 && sub_1004BD6A4())
  {
    sub_10044E5F0(_swiftEmptyArrayStorage);
    v8 = v27;
  }

  else
  {
    v8 = &_swiftEmptySetSingleton;
  }

  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
  swift_beginAccess();
  *(v1 + v9) = v8;

  v10 = *(v1 + v3);
  if (v10)
  {
    v11 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
    swift_beginAccess();
    if (*v11)
    {
    }

    else
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = *(v11 + 648);
      v15 = *(v11 + 184);
      v16 = *(v11 + 192);
      v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
      swift_beginAccess();
      v18 = *(v1 + v17);
      type metadata accessor for SyncedLyricsManager();
      v19 = swift_allocObject();
      *(v19 + 72) = 0;
      swift_unknownObjectWeakInit();
      *(v19 + 80) = _swiftEmptyArrayStorage;
      *(v19 + 96) = 0u;
      *(v19 + 112) = 0u;
      *(v19 + 128) = 0u;
      *(v19 + 144) = 0;
      *(v19 + 16) = v10;
      *(v19 + 24) = sub_1004B4D2C;
      *(v19 + 32) = v13;
      *(v19 + 40) = v14;
      *(v19 + 48) = v15;
      *(v19 + 56) = v16;
      swift_beginAccess();
      *(v19 + 72) = &protocol witness table for SyncedLyricsViewController;
      swift_unknownObjectWeakAssign();
      *(v19 + 88) = v18;
      *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager) = v19;
      swift_retain_n();
    }

    v20 = v1;
    sub_1004AC910();
    sub_1004A3DE8(v10);
    v21 = v1;
    v22 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
    if (v22)
    {
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      v24 = *(v22 + 96);
      *(v22 + 96) = sub_1004B5578;
      *(v22 + 104) = v23;

      swift_retain_n();
      sub_10003CC4C(v24);
      sub_10048FD5C();
      v21 = v20;
    }

    v25 = *(v21 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    if (v25)
    {
      v26 = v25;
      [v26 setPaused:sub_1004A6098() & 1];
    }
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    if (v12)
    {
      [v12 setPaused:1];
    }

    *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager) = 0;
  }
}

double sub_100498AA8(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v3 = Strong;
  v4 = sub_1004A6EE0(*&a1, 0);

  [v4 settlingDuration];
  v6 = v5;

  return v6;
}

void sub_100498B80(uint64_t a1)
{
  v2 = v1;
  sub_100003ABC(&qword_100616F28);
  __chkstk_darwin();
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v52 - v6;
  v8 = sub_1004B6CD4();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_10000F778(v2 + v14, &v55, &qword_100616AA8);
  v15 = &off_100616000;
  if (v56)
  {
    sub_100013414(&v55, v58);
    sub_10001342C(v58, &v55);
    sub_100003ABC(&qword_100616F40);
    type metadata accessor for SyncedLyricsViewController.StaticTimingProvider();
    if (swift_dynamicCast())
    {

      goto LABEL_26;
    }

    v18 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
    swift_beginAccess();
    if (*(v2 + v18) == 2)
    {
LABEL_26:
      __chkstk_darwin();
      *(&v52 - 2) = v58;
      sub_1004AFE30(sub_1004B5080);
      v45 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
      if (v45)
      {
        v46 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_beginAccess();
        v47 = *(v45 + 96);
        *(v45 + 96) = sub_1004B5578;
        *(v45 + 104) = v46;

        swift_retain_n();
        sub_10003CC4C(v47);
        sub_10048FD5C();
      }

LABEL_28:
      sub_100004C6C(v58);
      goto LABEL_29;
    }

    sub_10000F778(a1, &v55, &qword_100616AA8);
    v19 = v56;
    if (v56)
    {
      v20 = v57;
      sub_100009178(&v55, v56);
      v21 = (*(v20 + 8))(v19, v20);
      v22 = v21();

      sub_100004C6C(&v55);
      v23 = v59;
      v24 = v60;
      sub_100009178(v58, v59);
      v25 = (*(v24 + 8))(v23, v24);
      v26 = v25();

      if (vabdd_f64(v22, v26) <= 0.5)
      {
        if (qword_100614EF8 != -1)
        {
          swift_once();
        }

        v27 = sub_1004B80B4();
        sub_100007084(v27, qword_100616A40);
        v28 = sub_1004B8094();
        v29 = sub_1004BC9A4();
        if (os_log_type_enabled(v28, v29))
        {
          v53 = "ince last tap, ignoring.";
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v52 = v28;
          v32 = v31;
          *&v55 = v31;
          *v30 = 136315138;
          *(v30 + 4) = sub_100441BE8(0xD00000000000005FLL, v53 | 0x8000000000000000, &v55);
          v33 = v29;
          v34 = v52;
          _os_log_impl(&_mh_execute_header, v52, v33, "%s", v30, 0xCu);
          sub_100004C6C(v32);
        }

        else
        {
        }

        v35 = 0;
LABEL_16:
        v36 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
        swift_beginAccess();
        sub_10000F778(v2 + v36, v7, &qword_100616F28);
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {
          sub_100007214(v7, &qword_100616F28);
        }

        else
        {
          LODWORD(v53) = v35;
          (*(v9 + 32))(v13, v7, v8);
          sub_1004B6CC4();
          sub_1004B6C04();
          v38 = v37;
          v39 = *(v9 + 8);
          v39(v11, v8);
          if (v38 < 1.0)
          {
            if (qword_100614EF8 != -1)
            {
              swift_once();
            }

            v40 = sub_1004B80B4();
            sub_100007084(v40, qword_100616A40);
            v41 = sub_1004B8094();
            v42 = sub_1004BC9A4();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              v54[0] = v44;
              *v43 = 136315138;
              *(v43 + 4) = sub_100441BE8(0xD000000000000058, 0x800000010050F0D0, v54);
              _os_log_impl(&_mh_execute_header, v41, v42, "%s", v43, 0xCu);
              sub_100004C6C(v44);
            }

            v39(v13, v8);
            v15 = &off_100616000;
            goto LABEL_32;
          }

          v39(v13, v8);
          v35 = v53;
        }

        (*(v9 + 56))(v5, 1, 1, v8);
        swift_beginAccess();
        sub_100047A5C(v5, v2 + v36, &qword_100616F28);
        swift_endAccess();
        v15 = &off_100616000;
        if (v35)
        {
          goto LABEL_26;
        }

LABEL_32:
        v50 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
        if (v50)
        {
          v51 = v50;
          [v51 setPaused:sub_1004A6098() & 1];
        }

        goto LABEL_28;
      }
    }

    else
    {
      sub_100007214(&v55, &qword_100616AA8);
    }

    v35 = 1;
    goto LABEL_16;
  }

  sub_100007214(&v55, &qword_100616AA8);
  v16 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  if (v16)
  {
    swift_beginAccess();
    v17 = *(v16 + 96);
    *(v16 + 96) = 0;
    *(v16 + 104) = 0;

    sub_10003CC4C(v17);
    sub_10048FD5C();
  }

LABEL_29:
  v48 = *(v15[357] + v2);
  if (v48)
  {
    v49 = v48;
    [v49 setPaused:sub_1004A6098() & 1];
  }
}

uint64_t sub_100499418(void *a1)
{
  sub_1004BD404(56);
  v6._object = 0x800000010050F190;
  v6._countAndFlagsBits = 0xD000000000000036;
  sub_1004BC024(v6);
  v2 = a1[3];
  v3 = a1[4];
  sub_100009178(a1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v4();

  sub_1004BC5D4();
  return 0;
}

double sub_1004994F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = 0.0;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
    v3 = Strong;
    swift_beginAccess();
    sub_10000F778(v3 + v2, v14, &qword_100616AA8);

    v4 = v15;
    if (v15)
    {
      v5 = v16;
      sub_100009178(v14, v15);
      v6 = *(v4 - 8);
      v7 = __chkstk_darwin();
      v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
      (*(v6 + 16))(v9, v7);
      sub_100007214(v14, &qword_100616AA8);
      v10 = (*(v5 + 8))(v4, v5);
      v11 = (*(v6 + 8))(v9, v4);
      v1 = v10(v11);
    }

    else
    {
      sub_100007214(v14, &qword_100616AA8);
    }
  }

  return v1;
}

uint64_t SyncedLyricsViewController.timingProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  return sub_10000F778(v1 + v3, a1, &qword_100616AA8);
}

uint64_t SyncedLyricsViewController.timingProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_10000F778(v1 + v3, v5, &qword_100616AA8);
  swift_beginAccess();
  sub_10003F42C(a1, v1 + v3, &qword_100616AA8);
  swift_endAccess();
  sub_100498B80(v5);
  sub_100007214(a1, &qword_100616AA8);
  return sub_100007214(v5, &qword_100616AA8);
}

void (*SyncedLyricsViewController.timingProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_10000F778(v1 + v5, v4, &qword_100616AA8);
  return sub_1004998B0;
}

void sub_1004998B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_10000F778(*a1, v2 + 40, &qword_100616AA8);
    sub_10000F778(v3 + v4, v2 + 80, &qword_100616AA8);
    swift_beginAccess();
    sub_10003F42C(v2 + 40, v3 + v4, &qword_100616AA8);
    swift_endAccess();
    sub_100498B80(v2 + 80);
    sub_100007214(v2 + 80, &qword_100616AA8);
  }

  else
  {
    sub_10000F778(v3 + v4, v2 + 40, &qword_100616AA8);
    swift_beginAccess();
    sub_10003F42C(v2, v3 + v4, &qword_100616AA8);
    swift_endAccess();
    sub_100498B80(v2 + 40);
  }

  sub_100007214(v2 + 40, &qword_100616AA8);
  sub_100007214(v2, &qword_100616AA8);

  free(v2);
}

id SyncedLyricsViewController.bottomViewMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  v6 = *v3;
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;

  return v6;
}

void SyncedLyricsViewController.bottomViewMetadata.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  sub_10000F778(a1, &v11, &qword_100616AB8);
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_12:

    sub_100007214(a1, &qword_100616AB8);

    return;
  }

  v8 = sub_1004BD6A4();
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_5:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v10 = sub_1004BD484();

    goto LABEL_10;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v9 + 32);
LABEL_10:
    sub_1004A302C(v10);

    sub_100007214(a1, &qword_100616AB8);
    return;
  }

  __break(1u);
}

void (*SyncedLyricsViewController.bottomViewMetadata.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 184) = v1;
  v5 = (v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata);
  swift_beginAccess();
  v6 = *(v5 + 4);
  v7 = *v5;
  v8 = v5[1];
  *(v4 + 80) = *v5;
  *(v4 + 96) = v8;
  *(v4 + 112) = v6;
  v9 = v7;
  return sub_100499CC0;
}

void sub_100499CC0(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  if (a2)
  {
    *v2 = *(v2 + 5);
    *(v2 + 1) = v3;
    *(v2 + 4) = *(v2 + 14);
    sub_10000F778(v2, (v2 + 120), &qword_100616AB8);
    SyncedLyricsViewController.bottomViewMetadata.setter(v2);
  }

  else
  {
    *(v2 + 40) = *(v2 + 5);
    *(v2 + 56) = v3;
    *(v2 + 9) = *(v2 + 14);
    SyncedLyricsViewController.bottomViewMetadata.setter((v2 + 40));
  }

  free(v2);
}

uint64_t SyncedLyricsViewController.shareHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_10002F518(*v1);
  return v2;
}

uint64_t SyncedLyricsViewController.shareHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10003CC4C(v6);
}

id SyncedLyricsViewController.contentView.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SyncedLyricsViewController.contentView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SyncedLyricsViewController.scrollView.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SyncedLyricsViewController.scrollView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void (*SyncedLyricsViewController.currentTranslation.modify(uint64_t *a1))(void *a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100616AE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  return sub_10049A1A8;
}

uint64_t sub_10049A21C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  sub_100003ABC(a2);
  __chkstk_darwin();
  v11 = &v17 - v10;
  v12 = *a4;
  swift_beginAccess();
  sub_10003F42C(a1, v5 + v12, a2);
  swift_endAccess();
  if ((*(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics) & 1) == 0)
  {
    sub_10000F778(v5 + v12, v11, a2);
    v13 = a5(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
    {
      v14 = 150.0;
    }

    else
    {
      v14 = 130.0;
    }

    sub_100009130(0, &qword_100616AF0);
    sub_100007214(v11, a2);
    isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:v14 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    sub_1004A4CDC(isa);
  }

  return sub_100007214(a1, a2);
}

void (*SyncedLyricsViewController.currentTransliteration.modify(uint64_t *a1))(void *a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100615048) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  return sub_10049A4C0;
}

void sub_10049A4E8(void *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v9 = v8[3];
    if ((*(v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics) & 1) == 0)
    {
      v10 = v8[4];
      sub_10000F778(v9 + v8[5], v10, a3);
      v11 = a5(0);
      if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
      {
        v12 = 150.0;
      }

      else
      {
        v12 = 130.0;
      }

      sub_100009130(0, &qword_100616AF0);
      sub_100007214(v10, a3);
      isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:v12 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
      sub_1004A4CDC(isa);
    }
  }

  free(v8[4]);

  free(v8);
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidLoad()()
{
  v1 = v0;
  swift_getObjectType();
  sub_100003ABC(&qword_100616B00);
  __chkstk_darwin();
  v3 = &v62 - v2;
  v4 = type metadata accessor for SyncedLyricsViewController(0);
  v66.receiver = v0;
  v66.super_class = v4;
  objc_msgSendSuper2(&v66, "viewDidLoad");
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 setPreservesSuperviewLayoutMargins:1];

  [v1 setViewRespectsSystemMinimumLayoutMargins:0];
  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  v64 = v3;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame:{v12, v14, v16, v18}];
  [*&v1[v7] setAutoresizingMask:18];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 addSubview:*&v1[v7]];

  v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v65 = v21;
  v22 = *&v1[v21];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = v23;
  [v23 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [v22 setFrame:{v26, v28, v30, v32}];
  v33 = v65;
  [*&v1[v65] setClipsToBounds:0];
  [*&v1[v33] setIndicatorStyle:2];
  [*&v1[v33] setShowsHorizontalScrollIndicator:0];
  [*&v1[v33] setAutoresizingMask:18];
  [*&v1[v33] setDelegate:v1];
  [*&v1[v33] setMultipleTouchEnabled:0];
  v34 = *&v1[v33];
  v35 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  [v34 setShowsVerticalScrollIndicator:v35[656]];
  [*&v1[v33] _setHiddenPocketEdges:15];
  [*&v1[v7] addSubview:*&v1[v33]];
  sub_100003ABC(&qword_100616B08);
  v36 = swift_allocObject();
  v62 = xmmword_1004C50A0;
  *(v36 + 16) = xmmword_1004C50A0;
  *(v36 + 32) = sub_1004B83D4();
  *(v36 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_1004BCA74();
  swift_unknownObjectRelease();

  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  v39 = sub_1004BCC64();

  v40 = [v37 defaultCenter];
  v63 = sub_1004BCC64();

  v41 = swift_allocObject();
  *(v41 + 16) = v62;
  *(v41 + 32) = sub_1004B83C4();
  *(v41 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  sub_1004BCA74();
  swift_unknownObjectRelease();

  v42 = sub_1004BC4B4();
  v43 = *(*(v42 - 8) + 56);
  v44 = v64;
  v43(v64, 1, 1, v42);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1004BC474();

  v46 = sub_1004BC464();
  v47 = swift_allocObject();
  v47[2] = v46;
  v47[3] = &protocol witness table for MainActor;
  *&v62 = v39;
  v47[4] = v39;
  v47[5] = v45;

  sub_100496E74(0, 0, v44, &unk_1004EC738, v47);

  v43(v44, 1, 1, v42);
  v48 = v63;
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v50 = sub_1004BC464();
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = &protocol witness table for MainActor;
  v51[4] = v48;
  v51[5] = v49;

  sub_100496E74(0, 0, v44, &unk_1004EC748, v51);

  v52 = [v1 traitCollection];
  v53 = [v52 userInterfaceIdiom];

  v54 = [objc_allocWithZone(UITapGestureRecognizer) init];
  v55 = v54;
  if (v53 == 2)
  {
    sub_100003ABC(&qword_100616B10);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1004C4D40;
    *(v56 + 32) = sub_1004BC6E4();
    sub_100009130(0, &qword_100616B18);
    isa = sub_1004BC284().super.isa;

    [v55 setAllowedPressTypes:isa];

    [v55 setDelegate:v1];
    [v55 addTarget:v1 action:"menuHandler:"];
    v58 = *&v1[v65];
    [v58 addGestureRecognizer:v55];

    v59 = *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer];
    *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer] = v55;

    return;
  }

  [v54 setDelegate:v1];
  [v55 addTarget:v1 action:"tapHandler:"];
  v60 = [v1 view];
  if (v60)
  {
    v61 = v60;
    [v60 addGestureRecognizer:v55];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_10049AE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_1004BA8F4();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = sub_1004BA924();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  sub_1004BCC44();
  v5[22] = swift_task_alloc();
  v8 = sub_100003ABC(&qword_100616F48);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v9 = sub_100003ABC(&qword_100616F50);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = sub_1004BC474();
  v5[30] = sub_1004BC464();
  v11 = sub_1004BC3E4();
  v5[31] = v11;
  v5[32] = v10;

  return _swift_task_switch(sub_10049B0C4, v11, v10);
}

uint64_t sub_10049B0C4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v0[11] = v0[14];
  sub_1004BCC54();
  v0[33] = sub_100009130(0, &qword_100616F58);
  sub_1004B4DA0(&qword_100616F60, &type metadata accessor for NSNotificationCenter.Notifications);

  sub_1004BD924();
  sub_1004BD8D4();
  sub_1004BC594();
  sub_1004BD914();
  (*(v1 + 8))(v2, v3);
  sub_1004BD904();
  swift_beginAccess();
  v4 = sub_1004BC464();
  v0[34] = v4;
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_10049B2E4;

  return sub_10049B97C(v4, &protocol witness table for MainActor);
}

uint64_t sub_10049B2E4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 288) = a1;

  if (!v1)
  {

    v5 = *(v3 + 248);
    v6 = *(v3 + 256);

    return _swift_task_switch(sub_10049B3FC, v5, v6);
  }

  return result;
}

void sub_10049B3FC()
{
  v1 = v0[36];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }

    v3 = Strong;
    v4 = [Strong view];

    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = [v4 window];

    v6 = [v5 windowScene];
    if (v6)
    {
      v7 = v1;
      v8 = sub_1004BCFA4();

      if (v8)
      {
        if (qword_100614E70 != -1)
        {
          swift_once();
        }

        v9 = sub_1004B80B4();
        sub_100007084(v9, static Logger.lyrics);
        v10 = sub_1004B8094();
        v11 = sub_1004BC9A4();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
        }

        v13 = v0[21];
        v14 = v0[18];
        v23 = v0[20];
        v24 = v0[19];
        v15 = v0[16];
        v22 = v0[17];
        v16 = v0[15];

        sub_100009130(0, &qword_100616B70);
        v21 = sub_1004BCB44();
        v0[6] = sub_1004B4F58;
        v0[7] = v16;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_1000D6C80;
        v0[5] = &unk_1005D62F0;
        v17 = _Block_copy(v0 + 2);

        sub_1004BA914();
        v0[13] = _swiftEmptyArrayStorage;
        sub_1004B4DA0(&qword_100616B78, &type metadata accessor for DispatchWorkItemFlags);
        sub_100003ABC(&qword_100616B80);
        sub_1000F96D4(&qword_100616B88, &qword_100616B80);
        sub_1004BD2D4();
        sub_1004BCB54();
        _Block_release(v17);

        (*(v22 + 8))(v14, v15);
        (*(v23 + 8))(v13, v24);
      }

      else
      {
      }
    }

    else
    {
LABEL_11:
    }

    v19 = sub_1004BC464();
    v0[34] = v19;
    v20 = swift_task_alloc();
    v0[35] = v20;
    *v20 = v0;
    v20[1] = sub_10049B2E4;

    sub_10049B97C(v19, &protocol witness table for MainActor);
  }

  else
  {
    (*(v0[27] + 8))(v0[28], v0[26]);

    v18 = v0[1];

    v18();
  }
}

uint64_t sub_10049B88C(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_10049B8AC, 0, 0);
}

uint64_t sub_10049B8AC()
{
  sub_1004B65D4();
  v1 = v0[6];
  if (v0[5])
  {
    sub_100009130(0, &qword_100616F58);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *v0[6] = 0;
    }
  }

  else
  {
    sub_100007214((v0 + 2), &qword_100616F80);
    *v1 = 0;
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_10049B97C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_100003ABC(&qword_100616F70);
  v3[10] = swift_task_alloc();
  v5 = sub_1004B65F4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_1004BC3E4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[14] = v6;
  v3[15] = v8;

  return _swift_task_switch(sub_10049BAB4, v6, v8);
}

uint64_t sub_10049BAB4()
{
  v0[16] = sub_100003ABC(&qword_100616F50);
  v0[17] = sub_1004BD8E4();
  sub_1004BCC44();
  sub_1004B4DA0(&qword_100616F78, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_10049BBD4;
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v2, v3, v4);
}

uint64_t sub_10049BBD4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_10049BECC;
  }

  else
  {
    (*(v2 + 136))();
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_10049BCFC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10049BCFC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(v3, &qword_100616F70);

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    v6 = sub_1004BD8F4();
    v0[19] = v7;
    v10 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = sub_10049BF58;
    v9 = v0[13];

    return (v10)(v0 + 6, v9);
  }
}

uint64_t sub_10049BECC()
{
  (*(v0 + 136))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10049BF58()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return _swift_task_switch(sub_10049C0F8, v6, v5);
}

uint64_t sub_10049C0F8()
{
  v1 = v0[6];
  if (v1)
  {

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    v0[16] = sub_100003ABC(&qword_100616F50);
    v0[17] = sub_1004BD8E4();
    sub_1004BCC44();
    sub_1004B4DA0(&qword_100616F78, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_10049BBD4;
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, v6, v7);
  }
}

void sub_10049C274()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 1;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    v3 = v1;
    v4 = v2;

    if (v2)
    {
      [v4 setPaused:1];
    }
  }
}

uint64_t sub_10049C330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_1004BA8F4();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = sub_1004BA924();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  sub_1004BCC44();
  v5[22] = swift_task_alloc();
  v8 = sub_100003ABC(&qword_100616F48);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v9 = sub_100003ABC(&qword_100616F50);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = sub_1004BC474();
  v5[30] = sub_1004BC464();
  v11 = sub_1004BC3E4();
  v5[31] = v11;
  v5[32] = v10;

  return _swift_task_switch(sub_10049C580, v11, v10);
}

uint64_t sub_10049C580()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v0[11] = v0[14];
  sub_1004BCC54();
  v0[33] = sub_100009130(0, &qword_100616F58);
  sub_1004B4DA0(&qword_100616F60, &type metadata accessor for NSNotificationCenter.Notifications);

  sub_1004BD924();
  sub_1004BD8D4();
  sub_1004BC594();
  sub_1004BD914();
  (*(v1 + 8))(v2, v3);
  sub_1004BD904();
  swift_beginAccess();
  v4 = sub_1004BC464();
  v0[34] = v4;
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_10049C7A0;

  return sub_10049B97C(v4, &protocol witness table for MainActor);
}

uint64_t sub_10049C7A0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 288) = a1;

  if (!v1)
  {

    v5 = *(v3 + 248);
    v6 = *(v3 + 256);

    return _swift_task_switch(sub_10049C8B8, v5, v6);
  }

  return result;
}

void sub_10049C8B8()
{
  v1 = v0[36];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v3 = Strong;
    v4 = [Strong view];

    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = [v4 window];

    v6 = [v5 windowScene];
    if (v6)
    {
      v7 = v1;
      v8 = sub_1004BCFA4();

      if (v8)
      {
        v9 = v0[21];
        v10 = v0[18];
        v19 = v0[20];
        v20 = v0[19];
        v11 = v0[16];
        v18 = v0[17];
        v12 = v0[15];
        sub_100009130(0, &qword_100616B70);
        v17 = sub_1004BCB44();
        v0[6] = sub_1004B4D7C;
        v0[7] = v12;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_1000D6C80;
        v0[5] = &unk_1005D6278;
        v13 = _Block_copy(v0 + 2);

        sub_1004BA914();
        v0[13] = _swiftEmptyArrayStorage;
        sub_1004B4DA0(&qword_100616B78, &type metadata accessor for DispatchWorkItemFlags);
        sub_100003ABC(&qword_100616B80);
        sub_1000F96D4(&qword_100616B88, &qword_100616B80);
        sub_1004BD2D4();
        sub_1004BCB54();
        _Block_release(v13);

        (*(v18 + 8))(v10, v11);
        (*(v19 + 8))(v9, v20);
      }

      else
      {
      }
    }

    else
    {
LABEL_7:
    }

    v15 = sub_1004BC464();
    v0[34] = v15;
    v16 = swift_task_alloc();
    v0[35] = v16;
    *v16 = v0;
    v16[1] = sub_10049C7A0;

    sub_10049B97C(v15, &protocol witness table for MainActor);
  }

  else
  {
    (*(v0[27] + 8))(v0[28], v0[26]);

    v14 = v0[1];

    v14();
  }
}

uint64_t sub_10049CC94(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_1004B5588, 0, 0);
}

void sub_10049CCB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
    v2 = Strong;

    if (v1)
    {
      v3 = swift_allocObject();
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      swift_beginAccess();
      v5 = *(v1 + 96);
      *(v1 + 96) = sub_1004B4D84;
      *(v1 + 104) = v3;
      swift_retain_n();
      sub_10003CC4C(v5);
      sub_10048FD5C();
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v6[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 0;
  }

  if (qword_100614E70 != -1)
  {
    swift_once();
  }

  v7 = sub_1004B80B4();
  sub_100007084(v7, static Logger.lyrics);

  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 136315138;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      sub_1004A6098();
    }

    sub_100003ABC(&qword_100616F68);
    v14 = sub_1004BBF04();
    v16 = sub_100441BE8(v14, v15, v24);

    *(v10 + 4) = v16;
    sub_100004C6C(v11);
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    v19 = v17;
    v20 = v18;

    if (v18)
    {
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        v23 = sub_1004A6098();
      }

      else
      {
        v23 = 1;
      }

      [v20 setPaused:v23 & 1];
    }
  }
}

void sub_10049D054(void *a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  swift_beginAccess();
  if (v1[v3] == 1)
  {
    v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
    swift_beginAccess();
    if (!v1[v4])
    {
      v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
      swift_beginAccess();
      if (*&v1[v5] > 0.0)
      {
        v6 = [v1 view];
        [a1 locationInView:v6];
        v8 = v7;

        v9 = [v1 view];
        if (v9)
        {
          v10 = v9;
          [v9 frame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;

          v22.origin.x = v12;
          v22.origin.y = v14;
          v22.size.width = v16;
          v22.size.height = v18;
          if (CGRectGetHeight(v22) - *&v1[v5] < v8)
          {
            v19 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v20 = *(v19 + 1);
              ObjectType = swift_getObjectType();
              (*(v20 + 40))(v1, ObjectType, v20);
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_10049D280(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a6 + v10, v12);
  sub_1004A88B0(v12, 0, 0, 1, 0, a1, a2, a3);
  return sub_100004C6C(v12);
}

uint64_t sub_10049D388(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004BA8F4();
  v97 = *(v4 - 8);
  v98 = v4;
  __chkstk_darwin();
  v95 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1004BA924();
  v94 = *(v96 - 8);
  __chkstk_darwin();
  v93 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1004BA954();
  v92 = *(v102 - 8);
  __chkstk_darwin();
  v90 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = v82 - v8;
  sub_100003ABC(&qword_100616F28);
  __chkstk_darwin();
  v89 = v82 - v9;
  sub_100003ABC(&qword_100616C00);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = v82 - v11;
  [*(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_tapFeedbackGenerator) selectionChanged];
  v13 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
  if (v13)
  {
    [v13 setPaused:1];
  }

  *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling) = 1;
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer;
  [*(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer) invalidate];
  v15 = *(v2 + v14);
  *(v2 + v14) = 0;

  *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll) = 1;
  v16 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a1 + v16, v105);
  sub_100003ABC(&qword_1006150F8);
  v17 = type metadata accessor for Lyrics.TextLine(0);
  v18 = swift_dynamicCast();
  v19 = *(*(v17 - 8) + 56);
  if ((v18 & 1) == 0)
  {
LABEL_37:
    (v19)(v12, 1, 1, v17);
    sub_100007214(v12, &qword_100616C00);
    goto LABEL_38;
  }

  (v19)(v12, 0, 1, v17);
  sub_100007214(v12, &qword_100616C00);
  v12 = *(a1 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v12)
  {
    _s19SBS_TextContentViewCMa();
    result = swift_dynamicCastClass();
    if (result)
    {
      v21 = *(result + OBJC_IVAR___MusicSBS_TextContentView_textView);
      if (!v21)
      {
LABEL_49:
        __break(1u);
        return result;
      }

      v17 = *(v21 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
      if (v17)
      {
        v22 = *(v17 + 56);
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = *(v17 + 48);
          v101 = sub_100009130(0, &qword_100616B70);
          v25 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
          v82[1] = v24;

          v82[0] = v12;
          v82[2] = v17;

          v100 = v25;
          swift_beginAccess();
          v19 = *(v22 + 16);
          if (v19)
          {
            v26 = 0;
            v99 = v22 + 32;
            v84 = a1;
            v85 = v2;
            v83 = v16;
            v86 = v23;
            v87 = v22;
            while (1)
            {
              v17 = *(v99 + 8 * v26);
              v103 = v26 + 1;
              memcpy(v105, &v100[v2], 0x2B0uLL);
              *(v17 + 120) = 1;

              sub_10046E570(v105, v104);
              v12 = sub_1004BCB44();
              v27 = swift_allocObject();
              swift_weakInit();

              OS_dispatch_queue.asyncAfter(_:block:)(sub_1004709A0, v27);

              if ((*(v17 + 57) & 1) == 0)
              {
                v37 = *(v17 + 112);
                if (v37 && (v38 = *(v37 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
                {
                  v39 = v105[25];
                  v40 = v38;
                  [v39 lineHeight];
                  v42 = vabdd_f64(v41 * *&v105[32] + *&v105[58] + *&v105[58], CGRectGetHeight(*(v17 + 80))) * 0.5;
                  if (*(v17 + 58))
                  {
                    v43 = v42 + CGRectGetWidth(*(v17 + 80));
                    v44 = -v42;
                  }

                  else
                  {
                    v44 = -v42;
                    v43 = -v42;
                  }

                  v45 = *(v17 + 80);
                  v46 = *(v17 + 88);
                  v47 = *(v17 + 96);
                  v48 = *(v17 + 104);
                  v12 = v40;
                  v108.origin.x = v45;
                  v108.origin.y = v46;
                  v108.size.width = v47;
                  v108.size.height = v48;
                  [v12 setFrame:{v43, v44, v42, v42 + v42 + CGRectGetHeight(v108)}];
                  sub_10046E5CC(v105);
                }

                else
                {
                  sub_10046E5CC(v105);
                }

                goto LABEL_34;
              }

              result = swift_beginAccess();
              v12 = *(v17 + 16);
              if (!(v12 >> 62))
              {
                v28 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v28)
                {
                  break;
                }

                goto LABEL_32;
              }

              result = sub_1004BD6A4();
              v28 = result;
              if (result)
              {
                break;
              }

LABEL_32:
              sub_10046E5CC(v105);

LABEL_33:
              v23 = v86;
              v22 = v87;
LABEL_34:
              v26 = v103;
              if (v103 == v23)
              {

                goto LABEL_38;
              }

              v19 = *(v22 + 16);
              if (v103 >= v19)
              {
                goto LABEL_36;
              }
            }

            if (v28 >= 1)
            {
              v88 = v17;

              v29 = 0;
              while (1)
              {
                if ((v12 & 0xC000000000000001) != 0)
                {
                  v30 = *(sub_1004BD484() + 208);
                  if (v30)
                  {
                    goto LABEL_21;
                  }
                }

                else
                {
                  v31 = *(v12 + 8 * v29 + 32);

                  v30 = *(v31 + 208);
                  if (v30)
                  {
LABEL_21:
                    v32 = *&v30[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
                    if (v32)
                    {
                      v17 = *&v30[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
                      v33 = *&v30[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
                      v34 = v30;
                      sub_1004709A8(v32, v17);
                      v35 = v33;
                      v36 = v32;
                      [v35 setBackgroundColor:v36];
                    }
                  }
                }

                ++v29;

                if (v28 == v29)
                {

                  sub_10046E5CC(v105);

                  a1 = v84;
                  v2 = v85;
                  v16 = v83;
                  goto LABEL_33;
                }
              }
            }

            __break(1u);
            goto LABEL_49;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }
    }
  }

LABEL_38:
  v49 = [objc_allocWithZone(MSVLyricsLine) init];
  sub_10001342C(a1 + v16, v105);
  v50 = v105[3];
  v51 = v105[4];
  sub_100009178(v105, v105[3]);
  v52 = (*(*(v51 + 8) + 8))(v50);
  v53 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  v54 = 0.0;
  if (v53)
  {
    swift_beginAccess();
    if (*(v53 + 88) == 1)
    {

      v54 = Lyrics.spatialOffset.getter();
    }
  }

  sub_100004C6C(v105);
  [v49 setStartTime:v52 + v54];
  sub_10001342C(a1 + v16, v105);
  v55 = v105[3];
  v56 = v105[4];
  sub_100009178(v105, v105[3]);
  (*(*(v56 + 8) + 16))(v55);
  [v49 setEndTime:?];
  sub_100004C6C(v105);
  v57 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_10000F778(v2 + v57, v104, &qword_100616AA8);
  [v49 startTime];
  v59 = v58;
  sub_10000F778(v104, v105, &qword_100616AA8);
  v60 = v105[3];
  if (v105[3])
  {
    v61 = v105[4];
    sub_100009178(v105, v105[3]);
    v62 = (*(v61 + 16))(v60, v61);
    sub_100004C6C(v105);
  }

  else
  {
    sub_100007214(v105, &qword_100616AA8);
    v62 = 1;
  }

  v63 = type metadata accessor for SyncedLyricsViewController.StaticTimingProvider();
  v64 = swift_allocObject();
  *(v64 + 24) = v59;
  *(v64 + 16) = v62 & 1;
  v105[4] = &off_1005D5950;
  v105[3] = v63;
  v105[0] = v64;
  sub_10000F778(v2 + v57, v106, &qword_100616AA8);
  swift_beginAccess();

  sub_10003F42C(v105, v2 + v57, &qword_100616AA8);
  swift_endAccess();
  sub_100498B80(v106);
  sub_100007214(v106, &qword_100616AA8);
  sub_100007214(v105, &qword_100616AA8);
  v65 = v89;
  sub_1004B6CC4();
  v66 = sub_1004B6CD4();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  v67 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
  swift_beginAccess();
  sub_100047A5C(v65, v2 + v67, &qword_100616F28);
  swift_endAccess();
  v68 = v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v69 = *(v68 + 1);
    ObjectType = swift_getObjectType();
    (*(v69 + 8))(v2, v49, ObjectType, v69);
    swift_unknownObjectRelease();
  }

  sub_100009130(0, &qword_100616B70);
  v101 = sub_1004BCB44();
  v71 = v90;
  sub_1004BA944();
  v72 = v91;
  sub_1004BA9B4();
  v103 = *(v92 + 8);
  (v103)(v71, v102);
  sub_10000F778(v104, v106, &qword_100616AA8);
  v73 = swift_allocObject();
  *(v73 + 16) = v2;
  *(v73 + 24) = v64;
  v74 = v106[1];
  *(v73 + 32) = v106[0];
  *(v73 + 48) = v74;
  *(v73 + 64) = v107;
  v105[4] = sub_1004B4CE8;
  v105[5] = v73;
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 1107296256;
  v105[2] = sub_1000D6C80;
  v105[3] = &unk_1005D60C0;
  v75 = _Block_copy(v105);
  v100 = v49;
  v76 = v75;

  v77 = v2;

  v78 = v93;
  sub_1004BA914();
  v105[0] = _swiftEmptyArrayStorage;
  sub_1004B4DA0(&qword_100616B78, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003ABC(&qword_100616B80);
  sub_1000F96D4(&qword_100616B88, &qword_100616B80);
  v79 = v95;
  v80 = v98;
  sub_1004BD2D4();
  v81 = v101;
  sub_1004BCB04();
  _Block_release(v76);

  (*(v97 + 8))(v79, v80);
  (*(v94 + 8))(v78, v96);
  (v103)(v72, v102);
  return sub_100007214(v104, &qword_100616AA8);
}

uint64_t sub_10049E1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_10000F778(a1 + v6, v14, &qword_100616AA8);
  if (v14[3])
  {
    sub_100003ABC(&qword_100616F40);
    type metadata accessor for SyncedLyricsViewController.StaticTimingProvider();
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    if (v13[0] != a2)
    {
    }

    if (qword_100614EF8 != -1)
    {
      swift_once();
    }

    v8 = sub_1004B80B4();
    sub_100007084(v8, qword_100616A40);
    v9 = sub_1004B8094();
    v10 = sub_1004BC9A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100441BE8(0xD00000000000004DLL, 0x800000010050F050, v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s", v11, 0xCu);
      sub_100004C6C(v12);
    }

    sub_10000F778(a3, v14, &qword_100616AA8);
    sub_10000F778(a1 + v6, v13, &qword_100616AA8);
    swift_beginAccess();
    sub_10003F42C(v14, a1 + v6, &qword_100616AA8);
    swift_endAccess();
    sub_100498B80(v13);

    sub_100007214(v13, &qword_100616AA8);
  }

  return sub_100007214(v14, &qword_100616AA8);
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v37, "viewDidAppear:", a1);
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink;
  if (!*&v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink])
  {
    v5 = [v2 view];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = [v5 window];

    if (v7)
    {
      v8 = [v7 screen];

      v7 = [v8 displayLinkWithTarget:v2 selector:"displayLinkFired:"];
    }

    v9 = *&v2[v4];
    *&v2[v4] = v7;
    v10 = v7;

    if (v7)
    {
      [v10 setPreferredFramesPerSecond:30];
    }

    v11 = *&v2[v4];
    if (v11)
    {
      v12 = objc_opt_self();
      v13 = v11;
      v14 = [v12 mainRunLoop];
      [v13 addToRunLoop:v14 forMode:NSRunLoopCommonModes];
    }

    if (qword_100614E70 != -1)
    {
      swift_once();
    }

    v15 = sub_1004B80B4();
    sub_100007084(v15, static Logger.lyrics);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[SyncedLyricsViewController] Creating new display link", v18, 2u);
    }
  }

  v19 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded;
  if (v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] == 1)
  {
    v20 = *&v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager];
    if (v20)
    {
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      v22 = *(v20 + 96);
      *(v20 + 96) = sub_1004B5578;
      *(v20 + 104) = v21;

      swift_retain_n();
      sub_10003CC4C(v22);
      sub_10048FD5C();
    }

    v2[v19] = 0;
  }

  v23 = *&v2[v4];
  if (v23)
  {
    v24 = v23;
    [v24 setPaused:sub_1004A6098() & 1];
  }

  if (qword_100614E70 != -1)
  {
    swift_once();
  }

  v25 = sub_1004B80B4();
  sub_100007084(v25, static Logger.lyrics);
  v26 = v2;
  v27 = sub_1004B8094();
  v28 = sub_1004BC9A4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v29 = 136315138;
    v31 = sub_1004A6098();
    v32 = (v31 & 1) == 0;
    if (v31)
    {
      v33 = 1702195828;
    }

    else
    {
      v33 = 0x65736C6166;
    }

    if (v32)
    {
      v34 = 0xE500000000000000;
    }

    else
    {
      v34 = 0xE400000000000000;
    }

    v35 = sub_100441BE8(v33, v34, &v36);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "[SyncedLyricsViewController] viewDidAppear (displayLinkShouldPause: %s", v29, 0xCu);
    sub_100004C6C(v30);
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v11, "viewDidDisappear:", a1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (!v5)
    {
      v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink;
      [*&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink] invalidate];
      v7 = *&v1[v6];
      *&v1[v6] = 0;

      v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 1;
      if (qword_100614E70 != -1)
      {
        swift_once();
      }

      v8 = sub_1004B80B4();
      sub_100007084(v8, static Logger.lyrics);
      v5 = sub_1004B8094();
      v9 = sub_1004BC9A4();
      if (os_log_type_enabled(v5, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v5, v9, "[SyncedLyricsViewController] viewDidDisappear, nil window, invalidating display link", v10, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v35, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v3 = v2;
  _s3__C6CGRectVMa_2(0);
  [v3 bounds];

  v4 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_previousBounds];
  if ((sub_1004B70D4() & 1) == 0)
  {
    return;
  }

  v5 = [v1 view];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v36.origin.x = v8;
  v36.origin.y = v10;
  v36.size.width = v12;
  v36.size.height = v14;
  CGRectGetWidth(v36);
  CGRectGetWidth(*v4);
  if (sub_1004B70D4())
  {
    sub_1004A07AC();
  }

  v15 = [v1 view];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v37.origin.x = v18;
  v37.origin.y = v20;
  v37.size.width = v22;
  v37.size.height = v24;
  CGRectGetHeight(v37);
  CGRectGetHeight(*v4);
  if (sub_1004B70D4())
  {
    sub_1004A7128(0);
    swift_beginAccess();
    sub_1004AFC48();
    if (sub_1004B70E4())
    {
      sub_1004A01CC();
    }
  }

  v25 = [v1 view];
  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = v25;
  [v25 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  *v4 = v28;
  *(v4 + 1) = v30;
  *(v4 + 2) = v32;
  *(v4 + 3) = v34;
}

Swift::Void __swiftcall SyncedLyricsViewController.viewLayoutMarginsDidChange()()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v22, "viewLayoutMarginsDidChange");
  v1 = &v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins];
  v2 = *&v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins + 8];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 layoutMargins];
  v6 = v5;

  if (v2 != v6)
  {
LABEL_5:
    sub_1004A07AC();
LABEL_6:
    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      [v12 layoutMargins];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      *v1 = v15;
      *(v1 + 1) = v17;
      *(v1 + 2) = v19;
      *(v1 + 3) = v21;
      return;
    }

    goto LABEL_9;
  }

  v7 = v1[3];
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 layoutMargins];
    v11 = v10;

    if (v7 == v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  __break(1u);
}

uint64_t SyncedLyricsViewController.set(lyrics:translation:transliteration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003ABC(&qword_100615048);
  __chkstk_darwin();
  v8 = &v15 - v7;
  sub_100003ABC(&qword_100616AE0);
  __chkstk_darwin();
  v10 = &v15 - v9;
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics;
  *(v3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics) = 1;
  sub_10000F778(a2, &v15 - v9, &qword_100616AE0);
  SyncedLyricsViewController.currentTranslation.setter(v10);
  sub_10000F778(a3, v8, &qword_100615048);
  SyncedLyricsViewController.currentTransliteration.setter(v8);
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v13 = *(v3 + v12);
  *(v3 + v12) = a1;

  sub_10049870C(v13);

  *(v3 + v11) = 0;
  return result;
}

Swift::Bool __swiftcall SyncedLyricsViewController.handleSelectGesture()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v0 + v1) != 1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (!v2)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  swift_beginAccess();
  sub_10000F778(v2 + v3, &v13, &qword_100615100);
  if (!v14)
  {
    sub_100007214(&v13, &qword_100615100);
    return 0;
  }

  sub_100013414(&v13, v15);
  v4 = v16;
  v5 = v17;
  sub_100009178(v15, v16);
  v6 = *(v5 + 16);
  v7 = v2;
  v8 = v6(v4, v5);
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  result = swift_beginAccess();
  v11 = *(v0 + v9);
  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = sub_1004BD484();

    goto LABEL_8;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 8 * v8 + 32);
LABEL_8:
    sub_10049D388(v12);

    sub_100004C6C(v15);
    return 1;
  }

  __break(1u);
  return result;
}

void sub_10049F2E4(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v3)
  {
    _s19SBS_TextContentViewCMa();
    if (swift_dynamicCastClass())
    {
      v5 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
      if (v5)
      {
        swift_beginAccess();
        v6 = *(v5 + 96);
        if (v6)
        {
          v7 = v3;

          v8 = sub_10002F518(v6);
          v9 = v6(v8);
          swift_beginAccess();
          if (*(v5 + 88) == 1)
          {
            v10 = Lyrics.spatialOffset.getter();
            sub_10003CC4C(v6);
          }

          else
          {

            sub_10003CC4C(v6);
            v10 = 0.0;
          }

          sub_10047ABD0(a2 & 1, v9 - v10);
        }
      }
    }
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.presentSharing()()
{
  v3 = v0;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v5 = *&v3[v4];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_19:
    v18 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager];
    if (!v18)
    {
      return;
    }

    swift_beginAccess();
    v19 = *(v18 + 96);
    if (!v19)
    {
      return;
    }

    v20 = sub_10002F518(v19);
    v21 = v19(v20);
    swift_beginAccess();
    if (*(v18 + 88) == 1)
    {
      v22 = Lyrics.spatialOffset.getter();
      sub_10003CC4C(v19);
    }

    else
    {

      sub_10003CC4C(v19);
      v22 = 0.0;
    }

    v23 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    if (*&v3[v23])
    {

      Lyrics.line(before:useOriginalLines:)(0, &v47, v21 - v22);

      if (*(&v48 + 1))
      {
        sub_100013414(&v47, v50);
        v24 = v51;
        v25 = v52;
        sub_100009178(v50, v51);
        v26 = (*(v25 + 16))(v24, v25);
        v27 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
        swift_beginAccess();
        v28 = *&v3[v27];
        if ((v28 & 0xC000000000000001) != 0)
        {
          goto LABEL_58;
        }

        if ((v26 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v26 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v29 = *(v28 + 8 * v26 + 32);
          goto LABEL_30;
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }

    sub_100007214(&v47, &qword_100615100);
    return;
  }

  v6 = sub_1004BD6A4();
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_3:
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_34:

    v30 = sub_1004BD484();

    v8 = v30;
    goto LABEL_8;
  }

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = *(v5 + 8 * v7 + 32);
LABEL_8:
  v7 = v8;
  while (1)
  {
    v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v7 + v2, v50);

    sub_100003ABC(&qword_1006150F8);
    if (!swift_dynamicCast())
    {
      goto LABEL_39;
    }

    sub_10001342C(v7 + v2, v50);
    v9 = v51;
    v1 = v52;
    sub_100009178(v50, v51);
    v10 = (*(v1 + 16))(v9, v1);
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    sub_100004C6C(v50);
    v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v11 = *&v3[v1];
    if (v11 >> 62)
    {
      goto LABEL_38;
    }

    if (v5 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_39:
    sub_10001342C(v7 + v2, v50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_48;
    }

    sub_10001342C(v7 + v2, v50);
    v31 = v51;
    v32 = v52;
    sub_100009178(v50, v51);
    v33 = (*(v32 + 16))(v31, v32);
    sub_100004C6C(v50);
    if (v33 < 1)
    {
      goto LABEL_48;
    }

    sub_10001342C(v7 + v2, v50);
    v34 = v51;
    v35 = v52;
    sub_100009178(v50, v51);
    v36 = (*(v35 + 16))(v34, v35);
    v37 = v36 - 1;
    if (__OFSUB__(v36, 1))
    {
      goto LABEL_54;
    }

    sub_100004C6C(v50);
    v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v39 = *&v3[v38];
    if ((v39 & 0xC000000000000001) != 0)
    {
      goto LABEL_55;
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v37 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = v39 + 8 * v37;
LABEL_46:
      v40 = *(v17 + 32);
      goto LABEL_47;
    }

    __break(1u);
LABEL_58:

    v46 = sub_1004BD484();

    v29 = v46;
LABEL_30:
    v7 = v29;
    sub_100004C6C(v50);
  }

LABEL_37:
  __break(1u);
LABEL_38:
  if (v5 >= sub_1004BD6A4())
  {
    goto LABEL_39;
  }

LABEL_13:
  sub_10001342C(v7 + v2, v50);
  v12 = v51;
  v13 = v52;
  sub_100009178(v50, v51);
  v14 = (*(v13 + 16))(v12, v13);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    sub_100004C6C(v50);
    v16 = *&v3[v1];
    if ((v16 & 0xC000000000000001) == 0)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = v16 + 8 * v15;
        goto LABEL_46;
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:

      v40 = sub_1004BD484();

LABEL_47:

      v7 = v40;
      goto LABEL_48;
    }
  }

  v45 = sub_1004BD484();

  v7 = v45;
LABEL_48:
  v41 = v7;
  [v41 setHighlighted:1];
  sub_100009130(0, &qword_100616B70);
  v42 = sub_1004BCB44();
  v43 = swift_allocObject();
  *(v43 + 16) = v3;
  *(v43 + 24) = v41;
  v44 = v3;
  OS_dispatch_queue.asyncAfter(_:block:)(sub_1004AFC9C, v43);
}

id sub_10049FBDC(char *a1)
{
  v3 = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  __chkstk_darwin();
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100616C00);
  __chkstk_darwin();
  v7 = &v55 - v6;
  v8 = type metadata accessor for Lyrics.TextLine(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v55 - v12;
  v14 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(&a1[v14], v58);
  sub_100003ABC(&qword_1006150F8);
  v15 = swift_dynamicCast();
  v16 = *(v9 + 56);
  if ((v15 & 1) == 0)
  {
    v16(v7, 1, 1, v8);
    return sub_100007214(v7, &qword_100616C00);
  }

  v16(v7, 0, 1, v8);
  sub_1004B492C(v7, v13, type metadata accessor for Lyrics.TextLine);
  v17 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  if (!v17)
  {
    return sub_1004B3CFC(v13, type metadata accessor for Lyrics.TextLine);
  }

  [v17 copy];
  sub_1004BD284();
  swift_unknownObjectRelease();
  sub_100009130(0, &qword_100615B60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1004B3CFC(v13, type metadata accessor for Lyrics.TextLine);
  }

  v57 = v61;
  [a1 cancelTrackingWithEvent:0];
  v18 = sub_1004B4994(v13, v11, type metadata accessor for Lyrics.TextLine);
  v19 = *&v13[*(v8 + 60)];
  v20 = v1;
  v21 = v19(v18);
  v22 = v20;
  result = [v20 view];
  if (result)
  {
    v24 = result;
    if (v21)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    v26 = UIView.untransformedFrame.getter();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [v24 convertRect:*&v22[v33] fromCoordinateSpace:{v26, v28, v30, v32}];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    LOBYTE(v33) = [a1 isSelected];
    [a1 transform];
    v42 = v59;
    v43 = v60;
    v56 = v58[0];
    v55 = v58[1];
    v44 = swift_allocObject();
    *(v44 + 16) = a1;
    v45 = swift_allocObject();
    *(v45 + 16) = a1;
    sub_1004B492C(v11, v5, type metadata accessor for Lyrics.TextLine);
    *&v5[v3[5]] = v57;
    *&v5[v3[6]] = v25;
    v46 = &v5[v3[7]];
    *v46 = v35;
    *(v46 + 1) = v37;
    *(v46 + 2) = v39;
    *(v46 + 3) = v41;
    v5[v3[8]] = v33;
    v47 = &v5[v3[9]];
    v48 = v55;
    *v47 = v56;
    *(v47 + 1) = v48;
    *(v47 + 4) = v42;
    *(v47 + 5) = v43;
    v49 = &v5[v3[10]];
    *v49 = sub_1004B4A4C;
    v49[1] = v44;
    v50 = &v5[v3[11]];
    *v50 = sub_1004B4A60;
    v50[1] = v45;
    v51 = &v22[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler];
    swift_beginAccess();
    v52 = *v51;
    if (*v51)
    {
      v53 = a1;
      sub_10002F518(v52);
      v52(v5);
      sub_10003CC4C(v52);
    }

    else
    {
      v54 = a1;
    }

    sub_1004B3CFC(v5, type metadata accessor for SyncedLyricsSharingTransitionInfo);
    return sub_1004B3CFC(v13, type metadata accessor for Lyrics.TextLine);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SyncedLyricsViewController.displayLinkResumeIfNeeded()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
  if (v1)
  {
    v2 = v1;
    [v2 setPaused:sub_1004A6098() & 1];
  }
}

void sub_1004A01CC()
{
  v1 = v0;
  sub_1004AC910();
  v2 = &v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (*v2)
  {
    v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v4 = *(v2 + 7);
    v5 = *&v1[v3];
    [v5 contentInset];
    [v5 setContentInset:v4];
LABEL_23:

    goto LABEL_24;
  }

  if ((v2[48] & 0x80000000) == 0)
  {
    v6 = *(v2 + 2);
    v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [*&v1[v7] contentOffset];
    v9 = v8;
    v11 = v10;
    v12 = [v1 view];
    if (v12)
    {
      v13 = v12;
      [v12 frame];
      v15 = v14;

      v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
      swift_beginAccess();
      v17 = *&v1[v16];
      if (v17 > 0.0)
      {
LABEL_8:
        v22 = v9;
        v23 = v11;
        v24 = v15;
        v25 = v6 * (CGRectGetHeight(*(&v17 - 3)) / 100.0);
        [*(v2 + 25) ascender];
        v27 = v25 - v26;
        goto LABEL_21;
      }

      v18 = [v1 view];
      if (v18)
      {
        v19 = v18;
        [v18 frame];
        v21 = v20;

        v17 = v21;
        goto LABEL_8;
      }

LABEL_36:
      __break(1u);
      return;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v29 = *&v1[v28];
  if (v29 >> 62)
  {
    if (sub_1004BD6A4())
    {
LABEL_11:
      if ((v29 & 0xC000000000000001) != 0)
      {

        v30 = sub_1004BD484();
      }

      else
      {
        if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v30 = *(v29 + 32);
      }

      v31 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      sub_10001342C(v30 + v31, v62);

      sub_100013414(v62, v63);
      v32 = v64;
      v33 = v65;
      sub_100009178(v63, v64);
      v34 = (*(v33 + 16))(v32, v33);
      v35 = *&v1[v28];
      if ((v35 & 0xC000000000000001) != 0)
      {

        v61 = sub_1004BD484();

        v36 = v61;
        goto LABEL_18;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        if (v34 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v36 = *(v35 + 8 * v34 + 32);
LABEL_18:
          v37 = v36;
          v38 = UIView.untransformedFrame.getter();
          v40 = v39;
          v42 = v41;
          v44 = v43;

          sub_1004A688C(v38, v40, v42, v44);
          v46 = v45;

          v27 = fabs(v46);
          sub_100004C6C(v63);
          goto LABEL_21;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  [*(v2 + 25) _bodyLeading];
  v27 = v47;
LABEL_21:
  v48 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v49 = *&v1[v48];
  [v49 contentInset];
  [v49 setContentInset:v27];

  [*&v1[v48] contentOffset];
  if (v50 <= 0.0)
  {
    v5 = *&v1[v48];
    [v5 contentOffset];
    [v5 setContentOffset:?];
    goto LABEL_23;
  }

LABEL_24:
  *&v62[0] = 0;
  *(&v62[0] + 1) = 0xE000000000000000;
  sub_1004BD404(49);
  v68 = v62[0];
  v69._object = 0x800000010050F1D0;
  v69._countAndFlagsBits = 0xD00000000000002FLL;
  sub_1004BC024(v69);
  v51 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v1[v51] contentOffset];
  v66 = v52;
  v67 = v53;
  _s3__C7CGPointVMa_3(0);
  sub_1004BD5C4();
  v54 = v68;
  if (qword_100614EF8 != -1)
  {
    swift_once();
  }

  v55 = sub_1004B80B4();
  sub_100007084(v55, qword_100616A40);

  v56 = sub_1004B8094();
  v57 = sub_1004BC9A4();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v68 = v59;
    *v58 = 136315138;
    v60 = sub_100441BE8(v54, *(&v54 + 1), &v68);

    *(v58 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v56, v57, "%s", v58, 0xCu);
    sub_100004C6C(v59);
  }

  else
  {
  }
}

void sub_1004A07AC()
{
  v1 = swift_allocObject();
  *(v1 + 16) = isEscapingClosureAtFileLocation;
  if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating))
  {
    v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
    swift_beginAccess();
    v3 = *(isEscapingClosureAtFileLocation + v2);
    if (!(v3 >> 62))
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_13:
      v15 = isEscapingClosureAtFileLocation;

      return;
    }
  }

  else
  {
    v11 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1004B4D3C;
    *(v12 + 24) = v3;
    v21 = sub_100009350;
    v22 = v12;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_100008224;
    v20 = &unk_1005D6188;
    v13 = _Block_copy(&aBlock);
    v14 = isEscapingClosureAtFileLocation;

    [v11 performWithoutAnimation:v13];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v4 = sub_1004BD6A4();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_4:
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v16 = isEscapingClosureAtFileLocation;

    v8 = sub_1004BD484();

    goto LABEL_9;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);
    v7 = isEscapingClosureAtFileLocation;
    v8 = v6;
LABEL_9:
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1004B4D34;
    *(v9 + 24) = v1;
    v21 = sub_1000081FC;
    v22 = v9;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_10013ABCC;
    v20 = &unk_1005D61D8;
    v10 = _Block_copy(&aBlock);

    [v8 addCompletion:v10];

    _Block_release(v10);

    return;
  }

  __break(1u);
}

uint64_t sub_1004A0AD8(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1004B55F0;
  *(v4 + 24) = v3;
  v8[4] = sub_100009350;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100008224;
  v8[3] = &unk_1005D6250;
  v5 = _Block_copy(v8);
  v6 = a1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_1004A0C3C(unint64_t a1)
{
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (v9 >> 62)
  {
    v10 = sub_1004BD6A4();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    goto LABEL_9;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {

    v11 = sub_1004BD484();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v11 = *(v9 + 4);
  }

  v9 = v11;
  v3 = UIView.untransformedFrame.getter();
  v4 = v12;
  v5 = v13;
  v6 = v14;

LABEL_9:
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v15 = *(a1 + v2);
  if (v15 >> 62)
  {
    v16 = sub_1004BD6A4();
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    goto LABEL_40;
  }

  for (i = 0; i != v16; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = sub_1004BD484();
    }

    else
    {
      v17 = *(v15 + 8 * i + 32);
    }

    v18 = v17;
    sub_1004A302C(v17);
  }

LABEL_18:
  if (!v10)
  {
    return;
  }

  v9 = *(a1 + v8);
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_21:
    if ((v9 & 0xC000000000000001) != 0)
    {

      v10 = sub_1004BD484();
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_45;
      }

      v10 = *(v9 + 4);
    }

    [v10 frame];
    v51.origin.x = v3;
    v51.origin.y = v4;
    v51.size.width = v5;
    v51.size.height = v6;
    if (CGRectEqualToRect(v50, v51))
    {
LABEL_34:

      return;
    }

    i = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v10 + i, &v44);
    v19 = v46;
    v20 = v47;
    sub_100009178(&v44, v46);
    v21 = (*(v20 + 16))(v19, v20);
    v22 = *(a1 + v2);
    if ((v22 & 0xC000000000000001) == 0)
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v23 = *(v22 + 8 * v21 + 32);
LABEL_29:
      v24 = v23;
      v25 = UIView.untransformedFrame.getter();
      v27 = v26;
      v29 = v28;
      v31 = v30;

      sub_1004A688C(v25, v27, v29, v31);
      v33 = v32;

      sub_100004C6C(&v44);
      v34 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      [*(a1 + v34) setContentOffset:{0.0, v33}];
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1004BD404(55);
      v42 = v44;
      v43 = v45;
      v48._object = 0x800000010050F0A0;
      v48._countAndFlagsBits = 0xD00000000000002ELL;
      sub_1004BC024(v48);
      v44 = 0;
      v45 = *&v33;
      _s3__C7CGPointVMa_3(0);
      sub_1004BD5C4();
      v49._countAndFlagsBits = 0x20726F6620;
      v49._object = 0xE500000000000000;
      sub_1004BC024(v49);
      sub_10001342C(v10 + i, &v44);
      sub_100003ABC(&qword_1006150F8);
      sub_1004BD5C4();
      sub_100004C6C(&v44);
      v19 = v42;
      a1 = v43;
      if (qword_100614EF8 == -1)
      {
LABEL_30:
        v35 = sub_1004B80B4();
        sub_100007084(v35, qword_100616A40);

        v36 = sub_1004B8094();
        v37 = sub_1004BC9A4();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v44 = v39;
          *v38 = 136315138;
          v40 = sub_100441BE8(v19, a1, &v44);

          *(v38 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v36, v37, "%s", v38, 0xCu);
          sub_100004C6C(v39);
        }

        else
        {
        }

        goto LABEL_34;
      }

LABEL_47:
      swift_once();
      goto LABEL_30;
    }

LABEL_45:

    v41 = sub_1004BD484();

    v23 = v41;
    goto LABEL_29;
  }

LABEL_41:
  if (sub_1004BD6A4())
  {
    goto LABEL_21;
  }
}

void sub_1004A11E4(char *a1, char a2, double *a3)
{
  v4 = v3;
  v87 = a3;
  sub_100003ABC(&qword_100616C00);
  __chkstk_darwin();
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v82 - v8;
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v85 = *(v9 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v82 - v11;
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v4[v13] frame];
  Width = CGRectGetWidth(v95);
  v15 = [v4 view];
  if (!v15)
  {
    goto LABEL_58;
  }

  v16 = v15;
  v17 = &selRef_shuffleCommand;
  [v15 layoutMargins];

  sub_1004BC914();
  v19 = Width - v18;
  v20 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(&a1[v20], v92);
  v21 = sub_100003ABC(&qword_1006150F8);
  v88 = v9;
  if (swift_dynamicCast())
  {
    v22 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    v23 = *&v4[v22];
    v24 = &selRef_shuffleCommand;
    if (v23 && !*(v23 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType))
    {
      v27 = 1.0;
    }

    else
    {
      v25 = v21;
      v26 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
      swift_beginAccess();
      v27 = v26[79];
      v21 = v25;
    }

    sub_1004B3CFC(v12, type metadata accessor for Lyrics.TextLine);
    v17 = &selRef_shuffleCommand;
  }

  else
  {
    v27 = 1.0;
    v24 = &selRef_shuffleCommand;
    if ((swift_dynamicCast() & 1) == 0 && swift_dynamicCast())
    {
    }
  }

  sub_100004C6C(v92);
  if (a2 == 2)
  {
    [a1 sizeThatFits:{v19 * v27, INFINITY}];
  }

  else
  {
    v28 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v28)
    {
      v29 = v21;
      v30 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView + 8];
      ObjectType = swift_getObjectType();
      v92[0] = v28;
      v32 = *(v30 + 96);
      v33 = v30;
      v21 = v29;
      v32(a2 & 1, ObjectType, v33, v19 * v27, INFINITY);
    }
  }

  sub_10001342C(&a1[v20], v92);
  if (swift_dynamicCast())
  {
    v34 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    swift_beginAccess();
    if ((*v34 & 1) == 0)
    {
      v82 = v21;
      v35 = *&v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView];
      if (v35)
      {
        v36 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        sub_10001342C(v35 + v36, v89);
        v38 = v90;
        v37 = v91;
        sub_100009178(v89, v90);
        (*(v37 + 16))(v38, v37);
        sub_100004C6C(v89);
      }

      sub_10001342C(&a1[v20], v89);
      v39 = v90;
      v40 = v91;
      sub_100009178(v89, v90);
      (*(v40 + 16))(v39, v40);
      sub_100004C6C(v89);
      if (v35)
      {
        v24 = &selRef_shuffleCommand;
        v17 = &selRef_shuffleCommand;
      }

      else
      {
        v24 = &selRef_shuffleCommand;
        v17 = &selRef_shuffleCommand;
      }

      v21 = v82;
    }
  }

  sub_100004C6C(v92);
  sub_10001342C(&a1[v20], v92);
  v41 = v93;
  v42 = v94;
  sub_100009178(v92, v93);
  v43 = (*(v42 + 16))(v41, v42);
  sub_100004C6C(v92);
  if (!v43)
  {
    swift_beginAccess();
    goto LABEL_50;
  }

  if (v87[4])
  {
    sub_10001342C(&a1[v20], v92);
    v44 = v93;
    v45 = v94;
    sub_100009178(v92, v93);
    v46 = (*(v45 + 16))(v44, v45);
    v47 = v46 - 1;
    if (__OFSUB__(v46, 1))
    {
      __break(1u);
    }

    else
    {
      sub_100004C6C(v92);
      v48 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
      swift_beginAccess();
      v49 = *&v4[v48];
      if ((v49 & 0xC000000000000001) == 0)
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v47 < *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v50 = *(v49 + 8 * v47 + 32);
          goto LABEL_31;
        }

        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    v81 = sub_1004BD484();

    v50 = v81;
LABEL_31:
    v51 = v50;
    [v51 frame];
    Height = CGRectGetHeight(v96);
    v53 = UIView.untransformedFrame.getter();
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v97.origin.x = v53;
    v97.origin.y = v55;
    v97.size.width = v57;
    v97.size.height = v59;
    CGRectGetMaxY(v97);

    v60 = v88;
    v61 = v86;
    if (Height > 0.0)
    {
      swift_beginAccess();
    }

    goto LABEL_38;
  }

  v63 = v87[2];
  v62 = v87[3];
  v65 = *v87;
  v64 = v87[1];
  v98.origin.x = *v87;
  v98.origin.y = v64;
  v98.size.width = v63;
  v98.size.height = v62;
  v66 = CGRectGetHeight(v98);
  v99.origin.x = v65;
  v99.origin.y = v64;
  v99.size.width = v63;
  v99.size.height = v62;
  CGRectGetMaxY(v99);
  if (v66 > 0.0)
  {
    swift_beginAccess();
  }

  v60 = v88;
  v61 = v86;
LABEL_38:
  v67 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (*v67 != 1)
  {
    goto LABEL_50;
  }

  sub_10001342C(&a1[v20], v92);
  v68 = swift_dynamicCast();
  v69 = *(v85 + 56);
  if ((v68 & 1) == 0)
  {
    v69(v61, 1, 1, v60);
    sub_100007214(v61, &qword_100616C00);
    goto LABEL_48;
  }

  v69(v61, 0, 1, v60);
  v70 = v61;
  v71 = v84;
  sub_1004B492C(v70, v84, type metadata accessor for Lyrics.TextLine);
  if (*(v71 + *(v60 + 48)) != 1)
  {
    v77 = v71;
LABEL_47:
    sub_1004B3CFC(v77, type metadata accessor for Lyrics.TextLine);
    goto LABEL_48;
  }

  v72 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v73 = *&v4[v72];
  if (!v73)
  {
    v77 = v84;
    goto LABEL_47;
  }

  v82 = v21;
  v87 = &v82;
  v74 = *(v73 + 48);
  __chkstk_darwin();
  v75 = v84;
  *(&v82 - 2) = v84;

  v76 = v83;
  sub_100437198(sub_1004483E0, v74, v83);

  sub_1004B3CFC(v75, type metadata accessor for Lyrics.TextLine);
  if ((*(v85 + 48))(v76, 1, v88) == 1)
  {
    sub_100007214(v76, &qword_100616C00);
    v17 = &selRef_shuffleCommand;
    v24 = &selRef_shuffleCommand;
  }

  else
  {
    v80 = *(v76 + 16);
    sub_1004B3CFC(v76, type metadata accessor for Lyrics.TextLine);
    v17 = &selRef_shuffleCommand;
    v24 = &selRef_shuffleCommand;
    if (v80 > 0)
    {
      goto LABEL_50;
    }
  }

LABEL_48:
  sub_10001342C(&a1[v20], v92);
  if (swift_dynamicCast())
  {
  }

LABEL_50:
  v78 = [v4 v24[87]];
  if (v78)
  {
    v79 = v78;
    [v78 v17[278]];

    return;
  }

LABEL_59:
  __break(1u);
}

id sub_1004A1CB0()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v72 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004BBE14();
  v73 = *(v2 - 8);
  v74 = v2;
  __chkstk_darwin();
  v78 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79 = &v70 - v4;
  v5 = type metadata accessor for Lyrics.Translation(0);
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin();
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100616AE0);
  __chkstk_darwin();
  v70 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v70 - v8;
  v9 = type metadata accessor for Lyrics.Transliteration(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100615048);
  __chkstk_darwin();
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v70 - v15;
  v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  swift_beginAccess();
  v18 = v0 + v17;
  v19 = v0;
  sub_10000F778(v18, v16, &qword_100615048);
  v20 = *(v10 + 48);
  if (v20(v16, 1, v9))
  {
    sub_100007214(v16, &qword_100615048);
  }

  else
  {
    sub_1004B4994(v16, v12, type metadata accessor for Lyrics.Transliteration);
    sub_100007214(v16, &qword_100615048);
    v21 = v12[*(v9 + 24)];
    sub_1004B3CFC(v12, type metadata accessor for Lyrics.Transliteration);
    if (v21)
    {
      v22 = 1;
      goto LABEL_11;
    }
  }

  v23 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v24 = *(v0 + v23);
  if (v24)
  {
    v25 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
    swift_beginAccess();
    sub_10000F778(v24 + v25, v14, &qword_100615048);
    if (v20(v14, 1, v9))
    {
      sub_100007214(v14, &qword_100615048);
      v22 = 0;
    }

    else
    {
      sub_1004B4994(v14, v12, type metadata accessor for Lyrics.Transliteration);
      sub_100007214(v14, &qword_100615048);
      v22 = v12[*(v9 + 24)];
      sub_1004B3CFC(v12, type metadata accessor for Lyrics.Transliteration);
    }

    v19 = v0;
  }

  else
  {
    v22 = 0;
  }

LABEL_11:
  v27 = v76;
  v26 = v77;
  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  swift_beginAccess();
  v29 = v75;
  sub_10000F778(v19 + v28, v75, &qword_100616AE0);
  v30 = *(v27 + 48);
  v31 = v30(v29, 1, v26);
  v32 = v78;
  if (v31)
  {
    sub_100007214(v29, &qword_100616AE0);
    goto LABEL_15;
  }

  v33 = v71;
  sub_1004B4994(v29, v71, type metadata accessor for Lyrics.Translation);
  sub_100007214(v29, &qword_100616AE0);
  v34 = *(v33 + *(v26 + 28));
  sub_1004B3CFC(v33, type metadata accessor for Lyrics.Translation);
  if (v34 != 1)
  {
LABEL_15:
    v36 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    v37 = *(v19 + v36);
    v35 = v79;
    if (v37)
    {
      v38 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
      swift_beginAccess();
      v39 = v37 + v38;
      v40 = v70;
      sub_10000F778(v39, v70, &qword_100616AE0);
      if (!v30(v40, 1, v26))
      {
        v41 = v71;
        sub_1004B4994(v40, v71, type metadata accessor for Lyrics.Translation);
        sub_100007214(v40, &qword_100616AE0);
        v42 = *(v41 + *(v26 + 28));
        sub_1004B3CFC(v41, type metadata accessor for Lyrics.Translation);
        if (v22 & 1) != 0 || (v42)
        {
          goto LABEL_22;
        }

        return 0;
      }

      sub_100007214(v40, &qword_100616AE0);
    }

    if (v22)
    {
      goto LABEL_22;
    }

    return 0;
  }

  v35 = v79;
LABEL_22:
  sub_1004BBDA4();
  v44 = v73;
  v43 = v74;
  (*(v73 + 16))(v32, v35, v74);
  if (qword_100614E40 != -1)
  {
    swift_once();
  }

  v45 = qword_100619A00;
  sub_1004B6DF4();
  v46 = sub_1004BBED4();
  v48 = v47;
  (*(v44 + 8))(v35, v43);
  sub_100003ABC(&unk_100616F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50C0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v50 = v19 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  v51 = *(v50 + 368);
  v52 = sub_100009130(0, &unk_1006169D0);
  *(inited + 40) = v51;
  *(inited + 64) = v52;
  *(inited + 72) = NSFontAttributeName;
  v53 = *(v50 + 344);
  *(inited + 104) = sub_100009130(0, &qword_100616F10);
  *(inited + 80) = v53;
  v54 = NSForegroundColorAttributeName;
  v55 = v51;
  v56 = NSFontAttributeName;
  v57 = v53;
  sub_100447ACC(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100615670);
  swift_arrayDestroy();
  v58 = [objc_allocWithZone(NSTextAttachment) init];
  v59 = sub_1004BBE24();
  v60 = [objc_opt_self() systemImageNamed:v59];

  if (v60)
  {
    v61 = [v60 imageWithTintColor:*(v50 + 368)];
  }

  else
  {
    v61 = 0;
  }

  [v58 setImage:v61];

  _s3__C3KeyVMa_1(0);
  sub_1004B4DA0(&qword_100616F20, _s3__C3KeyVMa_1);
  v63 = v58;
  isa = sub_1004BBC24().super.isa;
  v62 = [objc_opt_self() attributedStringWithAttachment:v63 attributes:isa];

  v80 = 32;
  v81 = 0xE100000000000000;
  v82._countAndFlagsBits = v46;
  v82._object = v48;
  sub_1004BC024(v82);

  v65 = objc_allocWithZone(NSAttributedString);
  v66 = sub_1004BBE24();

  v67 = sub_1004BBC24().super.isa;

  v68 = [v65 initWithString:v66 attributes:v67];

  [v62 appendAttributedString:v68];
  return v62;
}

char *sub_1004A27B0(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = a1;
    goto LABEL_10;
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v8 = *&v3[v7];
  if (v8 >> 62)
  {
    result = sub_1004BD6A4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v10 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v8 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v8 + 8 * v10 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v6 = sub_1004BD484();

LABEL_10:
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v12 = *&v3[v11];
  v13 = a1;
  [v12 frame];
  Width = CGRectGetWidth(v99);
  result = [v3 view];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v15 = result;
  [result layoutMargins];

  sub_1004BC914();
  v17 = Width - v16;
  v18 = v6;
  v19 = UIView.untransformedFrame.getter();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = sub_1004A1CB0();
  v27 = &selRef_values;
  if (!v26)
  {
    v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel;
    v33 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel];
    if (v33)
    {
      [v33 removeFromSuperview];
      v34 = *&v3[v32];
    }

    else
    {
      v34 = 0;
    }

    v39 = &off_100616000;
    *&v3[v32] = 0;

    v51 = 0;
    goto LABEL_26;
  }

  v28 = v26;
  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel;
  v30 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel];
  if (v30)
  {
    v95 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel];
    v31 = v30;
  }

  else
  {
    v35 = [objc_allocWithZone(UILabel) init];
    v95 = v35;
    [v35 setNumberOfLines:0];
    v36 = *&v3[v29];
    *&v3[v29] = v35;
    v31 = v35;

    v27 = &selRef_values;
    v30 = 0;
  }

  v37 = v30;
  [v31 setAttributedText:v28];
  [v31 v27[438]];
  result = [v3 view];
  if (!result)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v38 = result;
  [result layoutMargins];

  v100.origin.x = v19;
  v100.origin.y = v21;
  v100.size.width = v23;
  v100.size.height = v25;
  CGRectGetMaxY(v100);
  v39 = &off_100616000;
  swift_beginAccess();
  v40 = *&v3[v11];
  v96 = 0u;
  v97 = 0u;
  v98 = 1;
  v41 = v40;
  sub_1004BCDA4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v50 = objc_opt_self();
  if ([v50 _isInAnimationBlockWithAnimationsEnabled] && (*(a2 + 32) & 1) == 0)
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v43;
    *(v52 + 24) = v45;
    *(v52 + 32) = v47;
    *(v52 + 40) = v49;
    v53 = *(a2 + 16);
    *(v52 + 48) = *a2;
    *(v52 + 64) = v53;
    *(v52 + 80) = v3;
    *(v52 + 88) = &v95;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1004B4A34;
    *(v54 + 24) = v52;
    aBlock[4] = sub_1000081FC;
    aBlock[5] = v54;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008224;
    aBlock[3] = &unk_1005D5DC8;
    v55 = _Block_copy(aBlock);
    v56 = v3;

    [v50 performWithoutAnimation:v55];
    _Block_release(v55);
    LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

    if ((v55 & 1) == 0)
    {
      v51 = sub_1004B4A34;
      v31 = v95;
      v39 = &off_100616000;
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  v51 = 0;
LABEL_23:
  [v31 setAlpha:1.0];
  [v95 setFrame:{v43, v45, v47, v49}];
  [*&v3[v11] addSubview:v95];
  v57 = v95;
  [v57 frame];
  v19 = v58;
  v21 = v59;
  v23 = v60;
  v25 = v61;

LABEL_26:
  v62 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata];
  swift_beginAccess();
  if (*v62)
  {
    v93 = v62[3];
    v63 = v62[1];
    v64 = *v62;
    [v64 sizeThatFits:{v17, INFINITY}];
    v66 = v65;
    v68 = v67;
    v69 = *&v3[v11];
    v70 = v64;
    [v69 frame];
    v71 = (CGRectGetWidth(v101) - v66) * 0.5;
    v102.origin.x = v19;
    v102.origin.y = v21;
    v102.size.width = v23;
    v102.size.height = v25;
    [v70 setFrame:{v71, v63 + CGRectGetMaxY(v102), v66, v68}];

    [*&v3[v11] addSubview:v70];
    [v70 frame];
    v19 = v72;
    v21 = v73;
    v23 = v74;
    v76 = v75;

    v25 = v93 + v76;
  }

  v77 = *&v3[v11];
  [v77 frame];
  v78 = CGRectGetWidth(v103);
  v104.origin.x = v19;
  v104.origin.y = v21;
  v104.size.width = v23;
  v104.size.height = v25;
  [v77 setContentSize:{v78, CGRectGetMaxY(v104)}];

  v79 = v39[336] + v3;
  swift_beginAccess();
  if (*v79)
  {

    v80 = *&v3[v11];
  }

  else
  {
    [*&v3[v11] frame];
    Height = CGRectGetHeight(v105);
    [*&v3[v11] contentInset];
    v83 = v82;
    v84 = UIView.untransformedFrame.getter();
    v86 = v85;
    v88 = v87;
    v90 = v89;

    v106.origin.x = v84;
    v106.origin.y = v86;
    v106.size.width = v88;
    v106.size.height = v90;
    v91 = Height - (v83 + CGRectGetHeight(v106));
    v92 = *&v3[v11];
    v80 = v92;
    if (v91 <= 0.0)
    {
      [v92 contentInset];
    }
  }

  [v80 contentInset];
  [v80 setContentInset:?];

  return sub_10003CC4C(v51);
}

id sub_1004A2F74(uint64_t a1, id *a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v18.origin.y = a8;
  v18.origin.x = a7;
  v18.size.width = a9;
  v18.size.height = a10;
  MaxY = CGRectGetMaxY(v18);
  v16 = a1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  [*a2 setFrame:{a3, MaxY + *(v16 + 112), a5, a6}];
  return [*a2 setAlpha:0.0];
}

char *sub_1004A302C(char *a1)
{
  v2 = v1;
  memset(v34, 0, sizeof(v34));
  v4 = 1;
  v35 = 1;
  sub_1004A11E4(a1, 2, v34);
  UIView.untransformedFrame.setter(v5, v6, v7, v8);
  v9 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_10000F778(v9 + v10, v31, &qword_100615100);
    v11 = v32;
    if (v32)
    {
      v12 = v33;
      sub_100009178(v31, v32);
      v13 = *(v11 - 8);
      v14 = __chkstk_darwin();
      v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v13 + 16))(v16, v14);
      sub_100007214(v31, &qword_100615100);
      v17 = (*(v12 + 16))(v11, v12);
      (*(v13 + 8))(v16, v11);
      v4 = 0;
      goto LABEL_6;
    }

    sub_100007214(v31, &qword_100615100);
  }

  v17 = 0;
LABEL_6:
  v18 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(&a1[v18], v31);
  v19 = v32;
  v20 = v33;
  sub_100009178(v31, v32);
  v21 = (*(v20 + 16))(v19, v20);
  if (v4)
  {
    sub_100004C6C(v31);
  }

  else
  {
    v22 = v21;
    sub_100004C6C(v31);
    if (v17 == v22)
    {
      sub_1004A3320();
    }
  }

  sub_10001342C(&a1[v18], v31);
  v23 = v32;
  v24 = v33;
  sub_100009178(v31, v32);
  v25 = (*(v24 + 16))(v23, v24);
  v26 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v27 = *(v2 + v26);
  if (v27)
  {
    v28 = *(*(v27 + 40) + 16) - 1;
  }

  else
  {
    v28 = -1;
  }

  result = sub_100004C6C(v31);
  if (v25 == v28)
  {
    return sub_1004A27B0(a1, v34);
  }

  return result;
}

void sub_1004A3320()
{
  v1 = *&v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel];
  if (v1)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_10000F778(v1 + v3, &v36, &qword_100615100);
    if (v37)
    {
      sub_100013414(&v36, v38);
      v4 = v39;
      v5 = v40;
      sub_100009178(v38, v39);
      v6 = *(v5 + 16);
      v7 = v1;
      v8 = v6(v4, v5);
      v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
      swift_beginAccess();
      v10 = *&v2[v9];
      if ((v10 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v11 = *(v10 + 8 * v8 + 32);
          goto LABEL_7;
        }

        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v11 = sub_1004BD484();

LABEL_7:
      v12 = v7;
      [v12 systemLayoutSizeFittingSize:{INFINITY, INFINITY}];
      v14 = v13;
      v16 = v15;
      v17 = *&v11[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
      v18 = v11;
      v19 = UIView.untransformedFrame.getter();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      if (v17 == 2)
      {
        v41.origin.x = v19;
        v41.origin.y = v21;
        v41.size.width = v23;
        v41.size.height = v25;
        v19 = CGRectGetMaxX(v41) - v14;
      }

      v26 = v18;
      UIView.untransformedFrame.getter();
      v28 = v27;

      v29 = [v2 view];
      if (v29)
      {
        v30 = v29;
        v31 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
        swift_beginAccess();
        [v30 convertPoint:*&v2[v31] fromCoordinateSpace:{v19, v28 - v16}];
        v33 = v32;
        v35 = v34;

        [v12 setFrame:{v33, v35, v14, v16}];
        sub_100004C6C(v38);
        return;
      }

      goto LABEL_16;
    }

    sub_100007214(&v36, &qword_100615100);
  }
}

uint64_t sub_1004A35D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Lyrics.Transliteration(0);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin();
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100615048);
  __chkstk_darwin();
  v52 = &v42 - v6;
  v48 = type metadata accessor for Lyrics.Translation(0);
  v45 = *(v48 - 8);
  __chkstk_darwin();
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100616AE0);
  __chkstk_darwin();
  v47 = &v42 - v8;
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003ABC(&qword_100616EF0);
  __chkstk_darwin();
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v42 - v14;
  sub_100003ABC(&qword_100616C00);
  __chkstk_darwin();
  v49 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v18 = &v42 - v17;
  __chkstk_darwin();
  v20 = &v42 - v19;
  sub_10001342C(a1, v57);
  v21 = *(v10 + 56);
  v53 = v20;
  v21(v20, 1, 1, v9);
  v22 = type metadata accessor for Lyrics.Translation.Line(0);
  v23 = *(*(v22 - 8) + 56);
  v54 = v15;
  v23(v15, 1, 1, v22);
  sub_10001342C(v57, v56);
  sub_100003ABC(&qword_1006150F8);
  if (swift_dynamicCast())
  {
    v42 = a2;
    v21(v18, 0, 1, v9);
    sub_1004B492C(v18, v12, type metadata accessor for Lyrics.TextLine);
    v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
    v25 = v55;
    swift_beginAccess();
    v26 = v25 + v24;
    v27 = v47;
    sub_10000F778(v26, v47, &qword_100616AE0);
    v28 = v21;
    if ((*(v45 + 48))(v27, 1, v48))
    {
      v29 = v54;
      sub_100007214(v54, &qword_100616EF0);
      sub_100007214(v27, &qword_100616AE0);
      v30 = v46;
      v23(v46, 1, 1, v22);
    }

    else
    {
      v32 = v43;
      sub_1004B4994(v27, v43, type metadata accessor for Lyrics.Translation);
      sub_100007214(v27, &qword_100616AE0);
      v30 = v46;
      sub_1004355D8(v12, v46);
      sub_1004B3CFC(v32, type metadata accessor for Lyrics.Translation);
      v29 = v54;
      sub_100007214(v54, &qword_100616EF0);
    }

    sub_100025B04(v30, v29, &qword_100616EF0);
    v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
    v34 = v55;
    swift_beginAccess();
    v35 = v34 + v33;
    v36 = v52;
    sub_10000F778(v35, v52, &qword_100615048);
    v37 = (*(v50 + 48))(v36, 1, v51);
    a2 = v42;
    if (v37)
    {
      sub_1004B3CFC(v12, type metadata accessor for Lyrics.TextLine);
      v31 = v53;
      sub_100007214(v53, &qword_100616C00);
      sub_100007214(v36, &qword_100615048);
      v38 = v49;
      v28(v49, 1, 1, v9);
    }

    else
    {
      v39 = v44;
      sub_1004B4994(v36, v44, type metadata accessor for Lyrics.Transliteration);
      sub_100007214(v36, &qword_100615048);
      v38 = v49;
      sub_100435878(v12, v49);
      sub_1004B3CFC(v39, type metadata accessor for Lyrics.Transliteration);
      sub_1004B3CFC(v12, type metadata accessor for Lyrics.TextLine);
      v31 = v53;
      sub_100007214(v53, &qword_100616C00);
    }

    sub_100025B04(v38, v31, &qword_100616C00);
  }

  else
  {
    v21(v18, 1, 1, v9);
    sub_100007214(v18, &qword_100616C00);
    v31 = v53;
    v29 = v54;
  }

  sub_100013414(v57, a2);
  v40 = type metadata accessor for SyncedLyricsViewController.LineData(0);
  sub_100025B04(v31, a2 + *(v40 + 20), &qword_100616C00);
  return sub_100025B04(v29, a2 + *(v40 + 24), &qword_100616EF0);
}

void sub_1004A3DE8(uint64_t a1)
{
  sub_100003ABC(&qword_100616EF0);
  __chkstk_darwin();
  v110 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v100 - v4;
  __chkstk_darwin();
  v6 = &v100 - v5;
  sub_100003ABC(&qword_100616C00);
  __chkstk_darwin();
  v111 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v100 - v8;
  __chkstk_darwin();
  v108 = &v100 - v9;
  v109 = type metadata accessor for SyncedLyricsViewController.LineData(0);
  __chkstk_darwin();
  v11 = (&v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  v113 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v115 = v1;
  v13 = *&v1[v12];
  if (v13 >> 62)
  {
LABEL_64:
    v14 = sub_1004BD6A4();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = *(a1 + 40);
  v16 = *(v15 + 16);
  v103 = v6;
  v104 = v11;
  if (v16 >= v14)
  {
    goto LABEL_8;
  }

  v17 = *&v115[v113];
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 >= v16)
    {
      goto LABEL_6;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  v18 = sub_1004BD6A4();
  if (v18 < v16)
  {
    goto LABEL_66;
  }

LABEL_6:
  if (v16 != v18)
  {
    if (v16 < v18)
    {
      v11 = &selRef_shuffleCommand;
      v98 = v16;
      while (1)
      {
        v6 = *&v115[v113];
        if ((v6 & 0xC000000000000001) != 0)
        {

          v99 = sub_1004BD484();
        }

        else
        {
          if ((v98 & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          if (v98 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v99 = *(v6 + 8 * v98 + 32);
        }

        ++v98;
        [v99 removeFromSuperview];

        if (v18 == v98)
        {
          goto LABEL_7;
        }
      }
    }

    goto LABEL_67;
  }

LABEL_7:
  swift_beginAccess();
  sub_1004B00AC(v16, v18, sub_1004AFFAC);
  swift_endAccess();
  v11 = v104;
LABEL_8:
  v19 = *&v115[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView];
  *&v115[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = 0;

  v20 = *(v15 + 16);
  v6 = v113;
  if (v20)
  {
    v21 = &v115[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    v22 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    v23 = v15 + 32;
    v107 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    v112 = v21;
    swift_beginAccess();
    v100 = v22;
    swift_beginAccess();
    do
    {
      v114 = v20;
      sub_10001342C(v23, &v122);
      v25 = v115;
      sub_1004A35D4(&v122, v11);
      v26 = v124;
      v27 = v125;
      sub_100009178(&v122, v124);
      v28 = (*(v27 + 16))(v26, v27);
      v29 = *&v25[v6];
      if (v29 >> 62)
      {
        if (v28 >= sub_1004BD6A4())
        {
LABEL_30:
          sub_10001342C(v11, v121);
          v64 = v109;
          sub_10000F778(v11 + *(v109 + 20), v111, &qword_100616C00);
          sub_10000F778(v11 + *(v64 + 24), v110, &qword_100616EF0);
          v65 = *&v115[v107];
          v66 = v112;
          if (v65)
          {
            if (*(v65 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) || *(v112 + 88) == 1)
            {
              v67 = v11[3];
              v68 = v11[4];
              sub_100009178(v11, v67);
              v6 = v113;
              v69 = (*(v68 + 3))(v67, v68);
            }

            else
            {
              v69 = v112[10];
            }
          }

          else
          {
            v69 = 4;
          }

          memcpy(v126, v66, 0x2B0uLL);
          v70 = objc_allocWithZone(type metadata accessor for SyncedLyricsLineView());
          sub_10046E570(v126, v120);
          v71 = sub_10048EECC(v121, v111, v110, v69, v126);
          sub_10046E5CC(v126);
          v72 = [v115 traitCollection];
          v73 = [v72 userInterfaceIdiom];

          if (v73 != 2)
          {
            sub_100009130(0, &qword_100616EF8);
            v74 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v75 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v76 = swift_allocObject();
            *(v76 + 16) = v74;
            *(v76 + 24) = v75;
            v6 = v113;
            v77 = v71;
            v78 = sub_1004BCFD4();
            [v77 addAction:v78 forControlEvents:64];
          }

          v79 = v115;
          v80 = *&v115[v100];
          v34 = v71;
          [v80 addSubview:v34];
          swift_beginAccess();
          sub_1004BC274();
          if (*((*&v79[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v79[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004BC2E4();
          }

          sub_1004BC334();
          swift_endAccess();
          if (*v112 == 1)
          {
            [v34 setUserInteractionEnabled:0];
          }

          else
          {
            v24 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
            [v24 setCancelsTouchesInView:0];
            [v24 addTarget:v115 action:"shareGestureHandler:"];
            [v34 addGestureRecognizer:v24];
          }

          goto LABEL_11;
        }
      }

      else if (v28 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v30 = v124;
      v31 = v125;
      sub_100009178(&v122, v124);
      v32 = (*(v31 + 16))(v30, v31);
      v33 = *&v115[v6];
      if ((v33 & 0xC000000000000001) != 0)
      {

        v34 = sub_1004BD484();

        a1 = v103;
      }

      else
      {
        a1 = v103;
        if ((v32 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v32 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v34 = *(v33 + 8 * v32 + 32);
      }

      sub_10001342C(v11, v120);
      v35 = v109;
      sub_10000F778(v11 + *(v109 + 20), v108, &qword_100616C00);
      sub_10000F778(v11 + *(v35 + 24), a1, &qword_100616EF0);
      v36 = *&v115[v107];
      v106 = v23;
      if (v36)
      {
        if (*(v36 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) || (v112[11] & 1) != 0)
        {
          v37 = v11;
          v38 = v11[3];
          v39 = v11[4];
          sub_100009178(v37, v38);
          v40 = *(v39 + 3);
          v41 = v34;
          v42 = v40(v38, v39);
        }

        else
        {
          v42 = v112[10];
          v44 = v34;
        }
      }

      else
      {
        v43 = v34;
        v42 = 4;
      }

      sub_10001342C(v120, v121);
      v45 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      sub_100004C6C(&v34[v45]);
      sub_100013414(v121, &v34[v45]);
      swift_endAccess();
      v46 = v108;
      v47 = v101;
      sub_10000F778(v108, v101, &qword_100616C00);
      v48 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
      swift_beginAccess();
      sub_100047A5C(v47, &v34[v48], &qword_100616C00);
      swift_endAccess();
      v49 = v102;
      sub_10000F778(a1, v102, &qword_100616EF0);
      v50 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
      swift_beginAccess();
      sub_100047A5C(v49, &v34[v50], &qword_100616EF0);
      swift_endAccess();
      *&v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment] = v42;
      sub_100488724();
      sub_100007214(a1, &qword_100616EF0);
      sub_100007214(v46, &qword_100616C00);
      sub_100004C6C(v120);
      v51 = *&v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      if (v51)
      {
        v52 = *&v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView + 8];
        ObjectType = swift_getObjectType();
        v120[0] = v51;
        (*(v52 + 80))(ObjectType, v52);
      }

      v54 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
      v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 1;
      v56 = sub_100486A6C(v120);
      v57 = *v55;
      if (*v55)
      {
        v58 = v55;
        v105 = v34[v54];
        v59 = *(v55 + 8);
        v60 = swift_getObjectType();
        *&v121[0] = v57;
        v61 = *(v59 + 40);
        v62 = v57;
        v61(v105, v60, v59);
        v63 = *v58;
        *v58 = *&v121[0];
        *(v58 + 8) = v59;
      }

      v56(v120, 0);
      v11 = v104;
      v6 = v113;
      v23 = v106;
      sub_1004877C8(0, 0);
LABEL_11:
      sub_1004A302C(v34);

      sub_1004B3CFC(v11, type metadata accessor for SyncedLyricsViewController.LineData);
      sub_100004C6C(&v122);
      v23 += 40;
      v20 = v114 - 1;
    }

    while (v114 != 1);
  }

  v81 = v115;
  sub_1004A7128(0);
  sub_1004A01CC();
  v82 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if (v81[v82] == 1)
  {
    v83 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    v84 = v115;
    swift_beginAccess();
    v85 = *&v84[v83];
    [v85 contentInset];
    [v85 contentOffset];
    [v85 setContentOffset:?];
  }

  v122 = 0;
  v123 = 0xE000000000000000;
  sub_1004BD404(44);
  v116 = v122;
  v117 = v123;
  v127._object = 0x800000010050EE10;
  v127._countAndFlagsBits = 0xD00000000000002ALL;
  sub_1004BC024(v127);
  v86 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  v87 = v115;
  swift_beginAccess();
  [*&v87[v86] contentOffset];
  v118 = v88;
  v119 = v89;
  _s3__C7CGPointVMa_3(0);
  sub_1004BD5C4();
  v91 = v116;
  v90 = v117;
  if (qword_100614EF8 != -1)
  {
    swift_once();
  }

  v92 = sub_1004B80B4();
  sub_100007084(v92, qword_100616A40);

  v93 = sub_1004B8094();
  v94 = sub_1004BC9A4();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v116 = v96;
    *v95 = 136315138;
    v97 = sub_100441BE8(v91, v90, &v116);

    *(v95 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v93, v94, "%s", v95, 0xCu);
    sub_100004C6C(v96);
  }

  else
  {
  }
}

void sub_1004A4C58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_10049D388(v2);

      v1 = v3;
    }
  }
}

id sub_1004A4CDC(void *a1)
{
  v125 = a1;
  sub_100003ABC(&qword_100616EF0);
  __chkstk_darwin();
  v124 = &v105 - v2;
  sub_100003ABC(&qword_100616C00);
  __chkstk_darwin();
  v123 = &v105 - v3;
  v122 = type metadata accessor for SyncedLyricsViewController.LineData(0);
  __chkstk_darwin();
  v5 = (&v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (!v8)
  {
    return result;
  }

  sub_1004AC910();
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(v1 + v9) contentOffset];
  v11 = v10;
  v111 = v9;
  [*(v1 + v9) contentOffset];
  v127 = v12;
  v14 = v13;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_81;
  }

  v15 = result;
  [result frame];
  v17 = v16;

  v18 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (v19 > 0.0)
  {
    goto LABEL_6;
  }

  result = [v1 view];
  if (!result)
  {
LABEL_81:
    __break(1u);
    return result;
  }

  v20 = result;
  [result frame];
  v19 = v21;

LABEL_6:
  v22 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v23 = *(v1 + v22);
  v24 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
    goto LABEL_72;
  }

  v126 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  v25 = 0;
  do
  {
    v26 = v25;
    if (v126 == v25)
    {
      break;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v27 = sub_1004BD484();
    }

    else
    {
      if (v25 >= *(v24 + 16))
      {
        goto LABEL_70;
      }

      v27 = *(v23 + 8 * v25 + 32);
    }

    v28 = v27;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_69;
    }

    [v27 frame];
    v145.x = v29;
    v145.y = v30;
    v147.origin.x = v127;
    v147.origin.y = v14;
    v147.size.width = v17;
    v147.size.height = v19;
    v31 = CGRectContainsPoint(v147, v145);

    v25 = v26 + 1;
  }

  while (!v31);

  [*(v1 + v111) contentOffset];
  v113 = v32;
  v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v23 = *(v1 + v33);
  if (v23 >> 62)
  {
    v24 = sub_1004BD6A4();
    if (v24)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_19:
      v34 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
      v118 = OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType;
      v121 = v23 & 0xC000000000000001;

      v116 = v34;
      swift_beginAccess();
      v107 = 0;
      v132 = 0;
      v35 = 0;
      v114 = v23 & 0xFFFFFFFFFFFFFF8;
      v36 = 0uLL;
      v37 = 1;
      v112 = v14;
      v109 = _swiftEmptyArrayStorage;
      v110 = _swiftEmptyArrayStorage;
      v38 = 0uLL;
      v115 = v26;
      v119 = v24;
      v120 = v23;
      v117 = v8;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v143[0] = v36;
            v143[1] = v38;
            v144 = v37 & 1;
            if (v121)
            {
              v39 = sub_1004BD484();
            }

            else
            {
              if (v35 >= *(v114 + 16))
              {
                goto LABEL_71;
              }

              v39 = *(v23 + 8 * v35 + 32);
            }

            v40 = v39;
            if (__OFADD__(v35, 1))
            {
              __break(1u);
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
              v126 = sub_1004BD6A4();
              goto LABEL_8;
            }

            v128 = v35;
            v131 = (v35 + 1);
            v23 = v1;
            v41 = v8;
            v8 = *(v8 + 40);
            v24 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            sub_10001342C(&v40[v24], &v137);
            v42 = v139;
            v43 = v140;
            v1 = sub_100009178(&v137, v139);
            v44 = v43[2](v42, v43);
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_67;
            }

            if (v44 >= *(v8 + 16))
            {
              goto LABEL_68;
            }

            sub_10001342C(v8 + 40 * v44 + 32, v142);
            sub_1004A35D4(v142, v5);
            sub_100004C6C(v142);
            sub_100004C6C(&v137);
            if (*(v41 + v118) || v116[88] == 1)
            {
              v45 = v5[3];
              v46 = v5[4];
              sub_100009178(v5, v45);
              v47 = (*(v46 + 24))(v45, v46);
            }

            else
            {
              v47 = *(v116 + 10);
            }

            v48 = *(v122 + 20);
            v49 = *(v122 + 24);
            sub_10001342C(v5, &v137);
            swift_beginAccess();
            sub_100004C6C(&v40[v24]);
            sub_100013414(&v137, &v40[v24]);
            swift_endAccess();
            v50 = v5 + v48;
            v51 = v123;
            sub_10000F778(v50, v123, &qword_100616C00);
            v52 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
            swift_beginAccess();
            sub_100047A5C(v51, &v40[v52], &qword_100616C00);
            swift_endAccess();
            v53 = v124;
            sub_10000F778(v5 + v49, v124, &qword_100616EF0);
            v54 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
            swift_beginAccess();
            sub_100047A5C(v53, &v40[v54], &qword_100616EF0);
            swift_endAccess();
            *&v40[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment] = v47;
            sub_100488724();
            v55 = v40;
            [v55 frame];
            v57 = v56;
            v59 = v58;
            v61 = v60;
            v63 = v62;
            v1 = v23;
            sub_1004A11E4(v55, 2, v143);
            v135 = v66;
            v136 = v67;
            v133 = v64;
            v134 = v65;
            if (v132)
            {
              v132 = 1;
              v23 = v120;
              v8 = v117;
            }

            else
            {
              v148.origin.x = v127;
              v148.origin.y = v14;
              v148.size.width = v17;
              v148.size.height = v19;
              v146.x = v57;
              v146.y = v59;
              v68 = CGRectContainsPoint(v148, v146);
              v23 = v120;
              v8 = v117;
              if (v68 && (v126 == v115 || [v55 isSelected]))
              {
                *&v149.origin.x = v133;
                *&v149.origin.y = v134;
                *&v149.size.width = v135;
                *&v149.size.height = v136;
                MinY = CGRectGetMinY(v149);
                v150.origin.x = v57;
                v150.origin.y = v59;
                v150.size.width = v61;
                v150.size.height = v63;
                *&v64 = CGRectGetMinY(v150);
                *&v66 = v135;
                *&v67 = v136;
                v11 = MinY - (*&v64 - v113);
                *&v64 = v133;
                *&v65 = v134;
                v132 = 1;
                v112 = v11;
              }

              else
              {
                v132 = 0;
                *&v66 = v135;
                *&v67 = v136;
                *&v64 = v133;
                *&v65 = v134;
              }
            }

            *(&v64 + 1) = v65;
            v130 = v64;
            *&v70 = v66;
            *(&v70 + 1) = v67;
            v129 = v70;
            v71 = swift_allocObject();
            *(v71 + 2) = v55;
            v72 = v134;
            *(v71 + 3) = v133;
            *(v71 + 4) = v72;
            v73 = v136;
            *(v71 + 5) = v135;
            *(v71 + 6) = v73;
            *(v71 + 7) = v1;
            v71[8] = v57;
            v71[9] = v59;
            v71[10] = v61;
            v71[11] = v63;
            if (v125)
            {
              break;
            }

            v74 = v1;
            sub_1004A5B44(v55, v74, *&v133, *&v134, *&v135, *&v136, v57, v59, v61, v63);

            sub_1004B3CFC(v5, type metadata accessor for SyncedLyricsViewController.LineData);
            v37 = 0;
            v35 = (v128 + 1);
            v24 = v119;
            v38 = v129;
            v36 = v130;
            if (v131 == v119)
            {
              goto LABEL_62;
            }
          }

          v75 = v55;
          v106 = v1;
          v128 = v125;
          v151.origin.x = v57;
          v151.origin.y = v59;
          v151.size.width = v61;
          v151.size.height = v63;
          v153.origin.x = v127;
          v153.origin.y = v14;
          v153.size.width = v17;
          v153.size.height = v19;
          if (!CGRectIntersectsRect(v151, v153))
          {
            *&v152.origin.x = v133;
            *&v152.origin.y = v134;
            *&v152.size.width = v135;
            *&v152.size.height = v136;
            v154.origin.x = v127;
            v154.origin.y = v112;
            v154.size.width = v17;
            v154.size.height = v19;
            if (!CGRectIntersectsRect(v152, v154))
            {
              [v75 setHidden:1];

              v82 = swift_allocObject();
              v82[2] = v75;
              v82[3] = sub_1004B4FC4;
              v82[4] = v71;
              *&v136 = v75;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v109 = sub_100441A58(0, v109[2] + 1, 1, v109);
              }

              v84 = v109[2];
              v83 = v109[3];
              if (v84 >= v83 >> 1)
              {
                v109 = sub_100441A58((v83 > 1), v84 + 1, 1, v109);
              }

              v85 = v109;
              v109[2] = (v84 + 1);
              v86 = &v85[2 * v84];
              v86[4] = sub_1004B5044;
              v86[5] = v82;
              sub_1004B3CFC(v5, type metadata accessor for SyncedLyricsViewController.LineData);
              goto LABEL_54;
            }
          }

          v76 = swift_allocObject();
          *(v76 + 16) = sub_1004B4FC4;
          *(v76 + 24) = v71;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = v75;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v110 = sub_100441A58(0, v110[2] + 1, 1, v110);
          }

          v79 = v110[2];
          v78 = v110[3];
          if (v79 >= v78 >> 1)
          {
            v110 = sub_100441A58((v78 > 1), v79 + 1, 1, v110);
          }

          v80 = v110;
          v110[2] = (v79 + 1);
          v81 = &v80[2 * v79];
          v81[4] = sub_1000081FC;
          v81[5] = v76;
          if (v132)
          {
            break;
          }

          sub_1004B3CFC(v5, type metadata accessor for SyncedLyricsViewController.LineData);

LABEL_54:
          v37 = 0;
          v24 = v119;
          v35 = v131;
          v38 = v129;
          v36 = v130;
          if (v131 == v119)
          {

            if ((v107 & 1) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_65;
          }
        }

        v87 = v108;
        if (v107)
        {
          sub_1004B3CFC(v5, type metadata accessor for SyncedLyricsViewController.LineData);

LABEL_59:
          v37 = 0;
          v107 = 1;
          v132 = 1;
          v24 = v119;
          v35 = v131;
          v38 = v129;
          v36 = v130;
          if (v131 == v119)
          {

LABEL_65:
            v91 = v106;
            v92 = *(v106 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator);
            *(v106 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator) = v125;
            v93 = v128;

            v94 = swift_allocObject();
            *(v94 + 16) = v110;
            *(v94 + 24) = v91;
            *(v94 + 32) = v11;
            v140 = sub_1004B4FE8;
            v141 = v94;
            *&v137 = _NSConcreteStackBlock;
            *(&v137 + 1) = 1107296256;
            v138 = sub_1000D6C80;
            v139 = &unk_1005D63B8;
            v95 = _Block_copy(&v137);
            v96 = v91;

            [v93 addAnimations:v95];
            _Block_release(v95);
            v97 = swift_allocObject();
            *(v97 + 16) = v109;
            *(v97 + 24) = v96;
            v140 = sub_1004B4FFC;
            v141 = v97;
            *&v137 = _NSConcreteStackBlock;
            *(&v137 + 1) = 1107296256;
            v138 = sub_10013ABCC;
            v139 = &unk_1005D6408;
            v98 = _Block_copy(&v137);
            v99 = v96;

            [v93 addCompletion:v98];
            _Block_release(v98);
            [v93 startAnimation];
          }
        }

        else
        {

          v88 = vabdd_f64(v63, *&v136);
          sub_1004B3CFC(v5, type metadata accessor for SyncedLyricsViewController.LineData);
          if (v88 > 1.0)
          {
            goto LABEL_59;
          }

          v107 = 0;
          v37 = 0;
          v132 = 1;
          v24 = v119;
          v35 = v131;
          v38 = v129;
          v36 = v130;
          if (v131 == v119)
          {
LABEL_62:

LABEL_63:
            v89 = v109;
            v90 = v110;
            goto LABEL_75;
          }
        }
      }
    }
  }

  v90 = _swiftEmptyArrayStorage;
  v89 = _swiftEmptyArrayStorage;
LABEL_75:
  v100 = *(v1 + v111);
  [v100 contentOffset];
  [v100 setContentOffset:?];

  *&v137 = v90;
  sub_10043E4B8(v89);
  v101 = *(v137 + 16);
  if (v101)
  {
    v102 = v137 + 40;
    do
    {
      v103 = *(v102 - 8);

      v103(v104);

      v102 += 16;
      --v101;
    }

    while (v101);
  }
}

void sub_1004A5B44(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10)
{
  UIView.untransformedFrame.setter(a3, a4, a5, a6);
  v16 = *(a2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v16)
  {
    v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_10000F778(v16 + v17, v39, &qword_100615100);
    v18 = v40;
    if (v40)
    {
      v19 = v41;
      sub_100009178(v39, v40);
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin();
      v23 = &v38[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v20 + 16))(v23, v21);
      sub_100007214(v39, &qword_100615100);
      v24 = (*(v19 + 16))(v18, v19);
      (*(v20 + 8))(v23, v18);
      v25 = 0;
      goto LABEL_6;
    }

    sub_100007214(v39, &qword_100615100);
  }

  v24 = 0;
  v25 = 1;
LABEL_6:
  v26 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a1 + v26, v39);
  v27 = v40;
  v28 = v41;
  sub_100009178(v39, v40);
  v29 = (*(v28 + 16))(v27, v28);
  if (v25)
  {
    sub_100004C6C(v39);
  }

  else
  {
    v30 = v29;
    sub_100004C6C(v39);
    if (v24 == v30)
    {
      sub_1004A3320();
    }
  }

  v31 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v32 = *(a2 + v31);
  if (v32 >> 62)
  {
    v33 = sub_1004BD6A4();
    if (!v33)
    {
      return;
    }
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      return;
    }
  }

  v34 = v33 - 1;
  if (__OFSUB__(v33, 1))
  {
    __break(1u);
  }

  else if ((v32 & 0xC000000000000001) == 0)
  {
    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v34 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v35 = *(v32 + 8 * v34 + 32);
      goto LABEL_17;
    }

    __break(1u);
    return;
  }

  v35 = sub_1004BD484();

LABEL_17:
  type metadata accessor for SyncedLyricsLineView();
  v36 = a1;
  v37 = sub_1004BCFA4();

  if (v37)
  {
    *v39 = a7;
    *&v39[1] = a8;
    *&v39[2] = a9;
    v40 = *&a10;
    LOBYTE(v41) = 0;
    sub_1004A27B0(v36, v39);
  }
}

void sub_1004A5EA0(uint64_t a1, uint64_t a2)
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

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v8 = *(a2 + v7);
  [v8 contentOffset];
  [v8 setContentOffset:?];
}

void sub_1004A5F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a2 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  v8 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator);
  *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator) = 0;
}

Swift::Void __swiftcall SyncedLyricsViewController.enterTrackingMode()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v0 + v1) != 2)
  {
    sub_1004A84A4();
    *(v0 + v1) = 2;
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.leaveTrackingMode()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v0 + v1) == 2)
  {
    sub_1004A7128(0);
    *(v0 + v1) = 0;
  }
}

uint64_t sub_1004A6098()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  if (!*(v0 + v1) || (*(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded) & 1) != 0)
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_10000F778(v0 + v3, &v8, &qword_100616AA8);
  if (v9)
  {
    sub_100013414(&v8, v10);
    v4 = v11;
    v5 = v12;
    sub_100009178(v10, v11);
    if ((*(v5 + 16))(v4, v5))
    {
      v6 = 1;
    }

    else
    {
      v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
      swift_beginAccess();
      v6 = *(v0 + v7) == 2;
    }

    sub_100004C6C(v10);
    return v6;
  }

  else
  {
    sub_100007214(&v8, &qword_100616AA8);
    return 1;
  }
}

id *sub_1004A61E0()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v0[v1] contentOffset];
  v3 = v2;
  v5 = v4;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = result;
  [result frame];
  v9 = v8;

  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v11 = *&v0[v10];
  if (v11 <= 0.0)
  {
    result = [v0 view];
    if (result)
    {
      v12 = result;
      [result frame];
      v11 = v13;

      goto LABEL_5;
    }

LABEL_23:
    __break(1u);
    return result;
  }

LABEL_5:
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v15 = *&v0[v14];
  if (v15 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1004BD6A4())
  {

    if (!i)
    {
      break;
    }

    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = sub_1004BD484();
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 frame];
      v22.origin.x = v3;
      v22.origin.y = v5;
      v22.size.width = v9;
      v22.size.height = v11;
      if (CGRectIntersectsRect(v21, v22))
      {
        sub_1004BD4F4();
        sub_1004BD534();
        sub_1004BD544();
        sub_1004BD504();
      }

      else
      {
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_18:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1004A6430(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = a1[3];
  v12 = a1[4];
  sub_100009178(a1, v11);
  v35 = v11;
  v34 = *(v12 + 16);
  v13 = v34(v11, v12);
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v15 = 0;
  v16 = v13 == 0;
  if (v13 <= 0)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = v13 - 1; ; i = 0)
  {
    v19 = *(v6 + v14);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = sub_1004BD484();
    }

    else
    {
      if (v13 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_41;
      }

      v20 = *(v19 + 8 * v13 + 32);
    }

    [v20 frame];
    v38.origin.x = a2;
    v38.origin.y = a3;
    v38.size.width = a4;
    v38.size.height = a5;
    if (!CGRectIntersectsRect(v36, v38))
    {
      break;
    }

    v21 = v20;
    sub_1004BC274();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004BC2E4();
    }

    sub_1004BC334();

    v13 = i;
    v16 = i == 0;
    if (i > 0)
    {
      goto LABEL_2;
    }

LABEL_3:
    v18 = !v16;
    if ((v18 | v15))
    {
      goto LABEL_18;
    }

    v15 = 1;
  }

LABEL_18:
  v22 = v34(v35, v12);
  v13 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    goto LABEL_43;
  }

  v23 = *(v6 + v14);
  if (v23 >> 62)
  {
    goto LABEL_44;
  }

  result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v25 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_46;
  }

  while (2)
  {
    v26 = 0;
    v27 = v13 == v25;
    if (v13 < v25)
    {
LABEL_22:
      v28 = v13 + 1;
      goto LABEL_28;
    }

    while (1)
    {
      v29 = !v27;
      if ((v29 | v26))
      {
        goto LABEL_39;
      }

      v26 = 1;
      v28 = v25;
LABEL_28:
      v30 = *(v6 + v14);
      if ((v30 & 0xC000000000000001) != 0)
      {

        v31 = sub_1004BD484();

        goto LABEL_32;
      }

      if (v13 < 0)
      {
        break;
      }

      if (v13 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v31 = *(v30 + 8 * v13 + 32);
LABEL_32:
      [v31 frame];
      v39.origin.x = a2;
      v39.origin.y = a3;
      v39.size.width = a4;
      v39.size.height = a5;
      if (!CGRectIntersectsRect(v37, v39))
      {

LABEL_39:
        swift_getKeyPath();
        sub_100003ABC(&qword_100616EE0);
        sub_1000F96D4(&qword_100616EE8, &qword_100616EE0);
        v33 = Sequence.sorted<A>(by:comparator:)();

        return v33;
      }

      v32 = v31;
      sub_1004BC274();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004BC2E4();
      }

      sub_1004BC334();

      v13 = v28;
      v27 = v28 == v25;
      if (v28 < v25)
      {
        goto LABEL_22;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    result = sub_1004BD6A4();
    v25 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      continue;
    }

    break;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1004A681C(uint64_t a1, uint64_t *a2)
{
  sub_10001342C(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_100004C6C(v3 + v4);
  sub_100013414(v6, v3 + v4);
  return swift_endAccess();
}

double sub_1004A688C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = v4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  v10 = *(v9 + 48);
  if (v10 < 0)
  {
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v15 = *(v9 + 32);
    v14 = *(v9 + 40);
    if (v10)
    {
      v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      [*(v4 + v16) frame];
    }

    else
    {
      v17 = v12;
      v18 = v13;
      v19 = v15;
      v20 = v14;
    }

    CGRectGetHeight(*&v17);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    CGRectGetHeight(v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetMinY(v24);
    if ((v10 & 1) == 0)
    {
      v25.origin.x = v12;
      v25.origin.y = v13;
      v25.size.width = v15;
      v25.size.height = v14;
      CGRectGetMinY(v25);
    }
  }

  else
  {
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    CGRectGetMinY(v22);
    v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [*(v4 + v11) contentInset];
  }

  return 0.0;
}

void sub_1004A6A18(void *a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v9 = a1[3];
  v10 = a1[4];
  sub_100009178(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v13 = *(v5 + v12);
  if ((v13 & 0xC000000000000001) != 0)
  {

    v14 = sub_1004BD484();

    v15 = &off_100616000;
    if ((a3 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    sub_1004BC2E4();
LABEL_29:
    sub_1004BC334();
    swift_endAccess();
    __chkstk_darwin();
    sub_1004AFE30(sub_1004B4BD8);

    return;
  }

  v14 = *(v13 + 8 * v11 + 32);
  v15 = &off_100616000;
  if ((a3 & 1) == 0)
  {
LABEL_17:
    sub_1004877C8(1, a2);
    sub_10049F2E4(v14, a2 != 0);
    v22 = *&v14[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v22)
    {
      _s23InstrumentalContentViewCMa();
      if (swift_dynamicCastClass())
      {
        v23 = *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView) = v14;
        v24 = v22;
        v25 = v14;

        if (a4)
        {
          v26 = *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
          v27 = 0.0;
          if (v26)
          {
            swift_beginAccess();
            v28 = *(v26 + 96);
            if (v28)
            {

              v29 = sub_10002F518(v28);
              v30 = v28(v29);
              swift_beginAccess();
              if (*(v26 + 88) == 1)
              {
                v31 = Lyrics.spatialOffset.getter();
                sub_10003CC4C(v28);
              }

              else
              {

                sub_10003CC4C(v28);
                v31 = 0.0;
              }

              v27 = v30 - v31;
            }
          }

          sub_10047D9E0(v27);
        }
      }
    }

    sub_1004A8360(v14, 1, 0.0);
    v32 = v15[364];
    swift_beginAccess();
    v9 = v14;
    sub_1004BC274();
    if (*((*(v32 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v32 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_5:
  v33 = a4;
  v16 = v15[364];
  swift_beginAccess();
  v17 = *&v16[v5];
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_16:
    *&v16[v5] = _swiftEmptyArrayStorage;

    a4 = v33;
    goto LABEL_17;
  }

  v18 = sub_1004BD6A4();
  if (!v18)
  {
    goto LABEL_16;
  }

LABEL_7:
  type metadata accessor for SyncedLyricsLineView();
  if (v18 >= 1)
  {

    for (i = 0; i != v18; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = sub_1004BD484();
      }

      else
      {
        v20 = *(v17 + 8 * i + 32);
      }

      v21 = v20;
      if ((sub_1004BCFA4() & 1) == 0)
      {
        sub_1004877C8(0, a2);
      }
    }

    v15 = &off_100616000;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1004A6E44()
{
  sub_1004BD404(37);
  v1._object = 0x800000010050EF10;
  v1._countAndFlagsBits = 0xD000000000000023;
  sub_1004BC024(v1);
  sub_100003ABC(&qword_1006150F8);
  sub_1004BD5C4();
  return 0;
}

id sub_1004A6EE0(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 && *(v6 + 56) == 2)
  {
    v7 = (v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
    swift_beginAccess();
    if (a2)
    {
      return [objc_allocWithZone(UISpringTimingParameters) initWithMass:v7[83] stiffness:v7[84] damping:v7[85] initialVelocity:{0.0, 0.0}];
    }

    else
    {
      v10 = 0.75;
      if (*&a1 <= 0.75)
      {
        v10 = *&a1;
      }

      v11 = (v10 + -0.2) / 0.55;
      v12 = 0.0;
      if (*&a1 >= 0.2)
      {
        v12 = v11;
      }

      v13 = (1.0 - v12) * 0.12 + 0.78;
      v14 = v12 * 0.27 + 0.48;
      sub_100009130(0, &qword_100616920);
      return UISpringTimingParameters.init(dampingRatio:response:)(v13, v14);
    }
  }

  else
  {
    v9 = (v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
    swift_beginAccess();
    return [objc_allocWithZone(UISpringTimingParameters) initWithMass:v9[83] stiffness:v9[84] damping:v9[85] initialVelocity:{0.0, 0.0}];
  }
}

uint64_t sub_1004A70A8()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_100616A40);
  sub_100007084(v0, qword_100616A40);
  return sub_1004B80A4();
}

void sub_1004A7128(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 accessibilityContrast];

  v140 = v2;
  if (v5 == 1)
  {
    v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if ((v7 & 0xC000000000000001) != 0)
    {

      sub_1004BD324();
      type metadata accessor for SyncedLyricsLineView();
      sub_1004B4DA0(&unk_100616F30, type metadata accessor for SyncedLyricsLineView);
      sub_1004BC6A4();
      v7 = v152;
      v8 = v153;
      v9 = v154;
      v2 = v155;
      v10 = v156;
    }

    else
    {
      v54 = -1 << *(v7 + 32);
      v8 = v7 + 56;
      v9 = ~v54;
      v55 = -v54;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v10 = v56 & *(v7 + 56);

      v2 = 0;
    }

    v57 = (v9 + 64) >> 6;
    while (1)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        v62 = sub_1004BD354();
        if (!v62)
        {
          goto LABEL_75;
        }

        v151 = v62;
        type metadata accessor for SyncedLyricsLineView();
        swift_dynamicCast();
        v61 = v142;
        v11 = v2;
        v9 = v10;
        if (!v142)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v59 = v2;
        v60 = v10;
        v11 = v2;
        if (!v10)
        {
          while (1)
          {
            v11 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }

            if (v11 >= v57)
            {
              break;
            }

            v60 = *(v8 + 8 * v11);
            ++v59;
            if (v60)
            {
              goto LABEL_69;
            }
          }

LABEL_75:
          sub_1001A43F8();
          return;
        }

LABEL_69:
        v9 = (v60 - 1) & v60;
        v61 = *(*(v7 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v60)))));
        if (!v61)
        {
          goto LABEL_75;
        }
      }

      v63 = &v140[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
      swift_beginAccess();
      if (v63[657] == 1)
      {
        v64 = [v140 traitCollection];
        [v64 accessibilityContrast];
      }

      sub_100487C74(0, 0.0);
      swift_beginAccess();
      v58 = sub_100453DE0(v61);
      swift_endAccess();

      v2 = v11;
      v10 = v9;
    }
  }

  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v2 + v9) == 1)
  {
    return;
  }

  if (a1)
  {
    v150 = a1;
    v7 = a1;
    goto LABEL_7;
  }

  v65 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  if (!v65 || (swift_beginAccess(), v66 = *(v65 + 80), !*(v66 + 16)))
  {
    v82 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v83 = *(v2 + v82);
    if (v83 >> 62)
    {
      goto LABEL_142;
    }

    if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

    goto LABEL_87;
  }

  sub_10001342C(v66 + 32, &v152);
  v67 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(v2 + v67) contentOffset];
  v69 = v68;
  v71 = v70;
  v9 = &selRef_shuffleCommand;
  v72 = [v2 view];
  if (!v72)
  {
    goto LABEL_148;
  }

  v73 = v72;
  [v72 frame];
  v75 = v74;

  v76 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v77 = *(v2 + v76);
  if (v77 <= 0.0)
  {
    v78 = [v2 view];
    if (!v78)
    {
      goto LABEL_150;
    }

    v79 = v78;
    [v78 frame];
    v81 = v80;

    v77 = v81;
  }

  v7 = sub_1004A6430(&v152, v69, v71, v75, v77);
  sub_100004C6C(&v152);
  v150 = v7;
  while (1)
  {
LABEL_7:
    v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
    swift_beginAccess();
    v11 = *(v2 + v8);
    v149 = v11;
    if (!(v7 >> 62))
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_9;
      }

      goto LABEL_102;
    }

LABEL_101:
    v12 = sub_1004BD6A4();
    if (v12)
    {
LABEL_9:
      if (v12 < 1)
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager;
      v14 = v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;

      v137 = v14;
      swift_beginAccess();
      v15 = 0;
      v134 = v13;
      v135 = v12;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v18 = sub_1004BD484();
        }

        else
        {
          v18 = *(v7 + 8 * v15 + 32);
        }

        v19 = v18;
        v20 = *(v2 + v13);
        if (v20)
        {
          swift_beginAccess();
          v9 = *(v20 + 80);
          if (*(v9 + 16))
          {
            sub_10001342C(v9 + 32, &v152);
            v21 = *(v9 + 16);
            if (v21)
            {
              sub_10001342C(v9 + 32 + 40 * v21 - 40, &v146);
              v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
              swift_beginAccess();
              sub_10001342C(v19 + v2, v143);
              sub_100003ABC(&qword_1006150F8);
              if (swift_dynamicCast())
              {

                v22 = v147;
                v23 = v148;
                sub_100009178(&v146, v147);
                v11 = (*(v23 + 16))(v22, v23);
                sub_10001342C(v19 + v2, v143);
                v24 = v144;
                v25 = v145;
                sub_100009178(v143, v144);
                v26 = (*(v25 + 16))(v24, v25);
                v9 = v26 - 1;
                if (__OFSUB__(v26, 1))
                {
                  goto LABEL_99;
                }

                sub_100004C6C(v143);
                if (v11 == v9)
                {
                  v2 = v140;
                  if (*(v137 + 657) == 1)
                  {
                    v27 = [v140 traitCollection];
                    [v27 accessibilityContrast];
                  }

                  sub_100487C74(1, 0.0);
                  swift_beginAccess();
                  v16 = sub_100453DE0(v19);
                  swift_endAccess();

                  v13 = v134;
                  v12 = v135;
                  goto LABEL_12;
                }
              }

              sub_10001342C(v19 + v2, v143);
              v28 = v144;
              v29 = v145;
              sub_100009178(v143, v144);
              v30 = (*(v29 + 16))(v28, v29);
              v31 = v147;
              v32 = v148;
              sub_100009178(&v146, v147);
              v33 = (*(v32 + 16))(v31, v32);
              sub_100004C6C(v143);
              v34 = v19 + v2;
              if (v33 >= v30)
              {
                sub_10001342C(v34, v143);
                v45 = v144;
                v46 = v145;
                sub_100009178(v143, v144);
                v11 = (*(v46 + 16))(v45, v46);
                v47 = v155;
                v48 = v156;
                sub_100009178(&v152, v155);
                v49 = (*(v48 + 16))(v47, v48);
                sub_100004C6C(v143);
                if (v11 >= v49)
                {
                  v2 = v140;
                  v13 = v134;
                  v12 = v135;
                  if (*(v137 + 657))
                  {
                    v51 = [v140 traitCollection];
                    [v51 accessibilityContrast];
                  }

                  sub_100487C74(1, 0.0);
                  goto LABEL_56;
                }

                v2 = v140;
                v13 = v134;
                v12 = v135;
                if (!*(v137 + 657))
                {
                  goto LABEL_12;
                }

                v50 = [v140 traitCollection];
                v11 = [v50 accessibilityContrast];

                if (v11 == 1)
                {
                  goto LABEL_12;
                }

                sub_100487C74(1, 3.0);
              }

              else
              {
                sub_10001342C(v34, v143);
                v35 = v144;
                v36 = v145;
                sub_100009178(v143, v144);
                v11 = (*(v36 + 16))(v35, v36);
                v37 = v147;
                v38 = v148;
                sub_100009178(&v146, v147);
                v39 = (*(v38 + 16))(v37, v38);
                v9 = v11 - v39;
                if (__OFSUB__(v11, v39))
                {
                  goto LABEL_100;
                }

                sub_100004C6C(v143);
                v40 = v9 + 1.0;
                if (*(v137 + 657) == 1)
                {
                  v2 = v140;
                  v41 = [v140 traitCollection];
                  v11 = [v41 accessibilityContrast];

                  v13 = v134;
                  v12 = v135;
                  if (v11 != 1 || v40 <= 0.0)
                  {
                    goto LABEL_52;
                  }

LABEL_12:
                  sub_100004C6C(&v146);
                  sub_100004C6C(&v152);
                  goto LABEL_13;
                }

                v2 = v140;
                v13 = v134;
                v12 = v135;
                if (v40 > 0.0)
                {
                  goto LABEL_12;
                }

LABEL_52:
                if (v40 <= 4.0)
                {
                  v52 = v9 + 1.0;
                }

                else
                {
                  v52 = 4.0;
                }

                sub_100487C74(1, v52);
                if (v40 == 0.0)
                {
LABEL_56:
                  swift_beginAccess();
                  v53 = sub_100453DE0(v19);
                  swift_endAccess();

                  goto LABEL_12;
                }
              }

              swift_beginAccess();
              sub_10045137C(&v142, v19);
              v9 = v142;
              swift_endAccess();

              goto LABEL_12;
            }

            sub_100004C6C(&v152);
          }
        }

        v9 = v15 + 3;
        if (__OFADD__(v15, 3))
        {
          goto LABEL_98;
        }

        if (*(v137 + 657) == 1)
        {
          v42 = [v2 traitCollection];
          v11 = [v42 accessibilityContrast];

          if (v11 != 1 || v9 <= 0)
          {
LABEL_41:
            v44 = v9;
            if (v9 > 4.0)
            {
              v44 = 4.0;
            }

            sub_100487C74(1, v44);
            swift_beginAccess();
            sub_10045137C(&v146, v19);
            v9 = v146;
            swift_endAccess();
          }
        }

        else if (v9 <= 0)
        {
          goto LABEL_41;
        }

LABEL_13:
        ++v15;
        v17 = sub_100453DE0(v19);

        if (v12 == v15)
        {

          v11 = v149;
          goto LABEL_103;
        }
      }
    }

LABEL_102:

LABEL_103:
    v136 = v8;
    if ((v11 & 0xC000000000000001) != 0)
    {
      sub_1004BD324();
      type metadata accessor for SyncedLyricsLineView();
      sub_1004B4DA0(&unk_100616F30, type metadata accessor for SyncedLyricsLineView);
      sub_1004BC6A4();
      v11 = v152;
      v101 = v153;
      v102 = v154;
      v103 = v155;
      v104 = v156;
    }

    else
    {
      v103 = 0;
      v105 = -1 << *(v11 + 32);
      v101 = v11 + 56;
      v102 = ~v105;
      v106 = -v105;
      v107 = v106 < 64 ? ~(-1 << v106) : -1;
      v104 = v107 & *(v11 + 56);
    }

    v108 = (v102 + 64) >> 6;
    while (v11 < 0)
    {
      v114 = sub_1004BD354();
      if (!v114)
      {
        goto LABEL_122;
      }

      v143[0] = v114;
      type metadata accessor for SyncedLyricsLineView();
      swift_dynamicCast();
      v113 = v146;
      v2 = v103;
      v112 = v104;
      if (!v146)
      {
        goto LABEL_122;
      }

LABEL_120:
      v9 = v140;
      v115 = &v140[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
      swift_beginAccess();
      if (v115[657] == 1)
      {
        v116 = [v140 traitCollection];
        [v116 accessibilityContrast];
      }

      sub_100487C74(0, 0.0);
      swift_beginAccess();
      v109 = sub_100453DE0(v113);
      swift_endAccess();

      v103 = v2;
      v104 = v112;
    }

    v110 = v103;
    v111 = v104;
    v2 = v103;
    if (!v104)
    {
      while (1)
      {
        v2 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          break;
        }

        if (v2 >= v108)
        {
          goto LABEL_122;
        }

        v111 = *(v101 + 8 * v2);
        ++v110;
        if (v111)
        {
          goto LABEL_116;
        }
      }

      __break(1u);
      goto LABEL_138;
    }

LABEL_116:
    v112 = (v111 - 1) & v111;
    v113 = *(*(v11 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v111)))));
    if (v113)
    {
      goto LABEL_120;
    }

LABEL_122:
    sub_1001A43F8();
    v117 = *&v140[v136];
    if ((v117 & 0xC000000000000001) != 0)
    {

      v118 = sub_1004BD334();

      if (v118 < 1)
      {
        return;
      }
    }

    else if (*(v117 + 16) < 1)
    {
      return;
    }

    v119 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v9 = *&v140[v119];
    if (!(v9 >> 62))
    {
      v82 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v82)
      {
        return;
      }

      goto LABEL_128;
    }

LABEL_139:
    v82 = sub_1004BD6A4();
    if (!v82)
    {
      return;
    }

LABEL_128:
    if (v82 >= 1)
    {
      v141 = (v9 & 0xC000000000000001);

      v120 = 0;
      v138 = v82;
      v139 = v9;
      do
      {
        if (v141)
        {
          v121 = sub_1004BD484();
        }

        else
        {
          v121 = *(v9 + 8 * v120 + 32);
        }

        v122 = v121;
        v123 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
        v121[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 0;
        v125 = sub_100486A6C(&v146);
        v126 = *v124;
        if (*v124)
        {
          v127 = v122[v123];
          v128 = *(v124 + 8);
          v129 = v124;
          ObjectType = swift_getObjectType();
          v131 = *(v128 + 40);
          v132 = v126;
          v131(v127, ObjectType, v128);
          v133 = *v129;
          *v129 = v126;
          *(v129 + 8) = v128;
          v82 = v138;
          v9 = v139;
        }

        v125(&v146, 0);
        ++v120;
      }

      while (v82 != v120);

      return;
    }

    __break(1u);
LABEL_142:
    if (sub_1004BD6A4() < 1)
    {
      break;
    }

LABEL_87:
    v84 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [*(v2 + v84) contentOffset];
    v86 = v85;
    v88 = v87;
    v89 = [v2 view];
    if (!v89)
    {
      goto LABEL_149;
    }

    v90 = v89;
    [v89 frame];
    v92 = v91;

    v93 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
    swift_beginAccess();
    v94 = *(v2 + v93);
    if (v94 <= 0.0)
    {
      v95 = [v2 view];
      if (!v95)
      {
        goto LABEL_151;
      }

      v96 = v95;
      [v95 frame];
      v94 = v97;
    }

    v98 = *(v2 + v82);
    if ((v98 & 0xC000000000000001) != 0)
    {

      v99 = sub_1004BD484();

      goto LABEL_94;
    }

    if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      return;
    }

    v99 = *(v98 + 32);
LABEL_94:
    v9 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v99 + v9, &v152);

    v7 = sub_1004A6430(&v152, v86, v88, v92, v94);
    sub_100004C6C(&v152);
    v150 = v7;
    if (v7 >> 62)
    {
      if (sub_1004BD6A4() >= 1)
      {
LABEL_96:
        sub_1004A8274();

        v7 = v150;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_96;
    }
  }
}

void sub_1004A8274()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_1004BD6A4())
  {
    if (sub_1004BD6A4())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      sub_1004BD484();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_1004BD6A4();
LABEL_13:
      if (v3)
      {
        sub_1004B00AC(0, 1, sub_1004AFFAC);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_1004A8360(void *a1, char a2, double a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (v8[657] == 1 && (v9 = [v4 traitCollection], v10 = objc_msgSend(v9, "accessibilityContrast"), v9, v10 != 1) || a3 <= 0.0)
  {
    v11 = 4.0;
    if (a3 <= 4.0)
    {
      v11 = a3;
    }

    sub_100487C74(a2 & 1, v11);
    swift_beginAccess();
    if (a3 == 0.0)
    {
      v12 = sub_100453DE0(a1);
    }

    else
    {
      sub_10045137C(&v13, a1);
      v12 = v13;
    }

    swift_endAccess();
  }
}

uint64_t sub_1004A84A4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_1004BD324();
    type metadata accessor for SyncedLyricsLineView();
    sub_1004B4DA0(&unk_100616F30, type metadata accessor for SyncedLyricsLineView);
    sub_1004BC6A4();
    v3 = v41[10];
    v4 = v41[11];
    v5 = v41[12];
    v6 = v41[13];
    v7 = v41[14];
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
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

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    v18 = sub_1004BD354();
    if (!v18)
    {
      goto LABEL_20;
    }

    v41[4] = v18;
    type metadata accessor for SyncedLyricsLineView();
    swift_dynamicCast();
    v17 = v41[0];
    v15 = v6;
    v16 = v7;
    if (!v41[0])
    {
      goto LABEL_20;
    }

LABEL_18:
    v19 = (v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
    swift_beginAccess();
    if (v19[657] == 1)
    {
      v20 = [v1 traitCollection];
      [v20 accessibilityContrast];
    }

    sub_100487C74(1, 0.0);
    swift_beginAccess();
    v12 = sub_100453DE0(v17);
    swift_endAccess();

    v6 = v15;
    v7 = v16;
  }

  v13 = v6;
  v14 = v7;
  v15 = v6;
  if (!v7)
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
        goto LABEL_20;
      }

      v14 = *(v4 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_14:
  v16 = (v14 - 1) & v14;
  v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
  if (v17)
  {
    goto LABEL_18;
  }

LABEL_20:
  sub_1001A43F8();
  v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  result = swift_beginAccess();
  v1 = *(v1 + v21);
  if (!(v1 >> 62))
  {
    v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_33:
  result = sub_1004BD6A4();
  v23 = result;
  if (!result)
  {
    return result;
  }

LABEL_22:
  if (v23 < 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v1 & 0xC000000000000001;

    v24 = 0;
    v38 = v23;
    v39 = v1;
    do
    {
      if (v40)
      {
        v25 = sub_1004BD484();
      }

      else
      {
        v25 = *(v1 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
      v25[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 1;
      v29 = sub_100486A6C(v41);
      v30 = *v28;
      if (*v28)
      {
        v31 = v26[v27];
        v32 = *(v28 + 8);
        v33 = v28;
        ObjectType = swift_getObjectType();
        v35 = *(v32 + 40);
        v36 = v30;
        v35(v31, ObjectType, v32);
        v37 = *v33;
        *v33 = v30;
        *(v33 + 8) = v32;
        v23 = v38;
        v1 = v39;
      }

      v29(v41, 0);
      ++v24;
    }

    while (v23 != v24);
  }

  return result;
}

void sub_1004A88B0(void *a1, char a2, uint64_t a3, int a4, char a5, double a6, double a7, double a8)
{
  v9 = v8;
  LODWORD(v10) = a4;
  if (*(v8 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator))
  {
    sub_1004AC910();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  v224 = v16;
  v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(v8 + v17) contentOffset];
  v19 = v18;
  [*(v8 + v17) contentOffset];
  v21 = v20;
  v23 = v22;
  v24 = [v8 view];
  if (!v24)
  {
    goto LABEL_188;
  }

  v25 = v24;
  [v24 frame];
  v27 = v26;

  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v29 = *(v9 + v28);
  if (v29 <= 0.0)
  {
    v30 = [v9 view];
    if (!v30)
    {
      goto LABEL_189;
    }

    v31 = v30;
    [v30 frame];
    v29 = v32;
  }

  v216 = a2;
  v33 = a7 - v19;
  v252.origin.x = v21;
  v252.origin.y = v23;
  v252.size.width = v27;
  v252.size.height = v29;
  v256 = CGRectOffset(v252, 0.0, v33);
  v253.origin.x = v21;
  v253.origin.y = v23;
  v253.size.width = v27;
  v253.size.height = v29;
  v254 = CGRectUnion(v253, v256);
  v34 = sub_1004A6430(a1, v254.origin.x, v254.origin.y, v254.size.width, v254.size.height);
  v35 = a1[3];
  v36 = a1[4];
  sub_100009178(a1, v35);
  v37 = (*(v36 + 16))(v35, v36);
  v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v39 = *(v38 + v9);
  if ((v39 & 0xC000000000000001) != 0)
  {

    v226 = sub_1004BD484();

    v40 = v216;
    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = v216;
    if ((v37 & 0x8000000000000000) != 0)
    {
      goto LABEL_164;
    }

    if (v37 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_165;
    }

    v226 = *(v39 + 8 * v37 + 32);
    if (v10)
    {
      goto LABEL_15;
    }
  }

  v41 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v42 = *(v9 + v41);
  if (v42 && *(v42 + 56) == 2)
  {
    v43 = a3;
    v44 = 0;
    goto LABEL_18;
  }

LABEL_15:
  if (v40)
  {
    v45 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:2.0 stiffness:260.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    goto LABEL_19;
  }

  v44 = v10 & 1;
  v43 = a3;
LABEL_18:
  v45 = sub_1004A6EE0(v43, v44);
LABEL_19:
  v238 = v45;
  v47 = a1[3];
  v46 = a1[4];
  sub_100009178(a1, v47);
  v48 = (*(*(v46 + 8) + 16))(v47);
  v237 = (v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
  swift_beginAccess();
  v38 = &off_100616000;
  v239 = v9;
  v240 = v34;
  if ((v40 & 1) == 0)
  {
    a7 = v48 - v237[23];
    [v238 settlingDuration];
    if (a7 < v49 + a8)
    {
      if (qword_100614EF8 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_170;
    }
  }

  [v238 settlingDuration];
  a7 = v54;
  *(v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = 1;
  if ((v40 & 1) == 0 || (*(v237 + 659) & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_34:
  v68 = 0;
LABEL_35:
  if (fabs(v33) >= 1.0)
  {
    v29 = v33;
  }

  else
  {
    v29 = 0.0;
  }

  sub_10001342C(a1, &aBlock);
  sub_100003ABC(&qword_1006150F8);
  v70 = swift_dynamicCast();
  if (v70)
  {
    v33 = *(v224 + 16);
    v21 = *(v224 + 24);
    v38 = (v34 >> 62);
    if (v34 >> 62)
    {
      goto LABEL_166;
    }

    v71 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v71)
    {
      goto LABEL_41;
    }

    goto LABEL_182;
  }

  if (!v68)
  {
    v74 = v34 >> 62;
    v214 = a3;
    v212 = v10;
    if (v34 >> 62)
    {
      v75 = sub_1004BD6A4();
    }

    else
    {
      v75 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = _swiftEmptyArrayStorage;
    if (v75)
    {
      aBlock = _swiftEmptyArrayStorage;
      v70 = sub_100442240(0, v75 & ~(v75 >> 63), 0);
      if (v75 < 0)
      {
        goto LABEL_177;
      }

      v76 = 0;
      v10 = aBlock;
      v77 = v34 & 0xC000000000000001;
      do
      {
        if (v77)
        {
          v78 = sub_1004BD484();
        }

        else
        {
          v78 = *(v34 + 8 * v76 + 32);
        }

        v79 = v78;
        v33 = UIView.untransformedFrame.getter();
        v21 = v80;
        v82 = v81;
        v84 = v83;

        aBlock = v10;
        v86 = v10[2];
        v85 = v10[3];
        if (v86 >= v85 >> 1)
        {
          sub_100442240((v85 > 1), v86 + 1, 1);
          v10 = aBlock;
        }

        ++v76;
        v10[2] = (v86 + 1);
        v87 = &v10[4 * v86];
        *(v87 + 4) = v33;
        *(v87 + 5) = v21;
        v87[6] = v82;
        v87[7] = v84;
        v34 = v240;
      }

      while (v75 != v76);
    }

    v217 = swift_allocObject();
    *(v217 + 16) = 0;
    v221 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.28 controlPoint2:0.17 animations:{0.0, 0.83, 1.0}];
    if (v74)
    {
      v88 = sub_1004BD6A4();
    }

    else
    {
      v88 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
    a3 = 1;
    swift_beginAccess();
    v249 = 0u;
    v250 = 0u;
    v251 = 1;
    v225 = v38;
    if (!v88)
    {
LABEL_124:

      swift_beginAccess();
      v47 = v221;
      sub_1004BC274();
      if (*((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_125;
      }

      goto LABEL_175;
    }

    v120 = 0;
    v231 = 0;
    v223 = v34 & 0xC000000000000001;
    v220 = v34 & 0xFFFFFFFFFFFFFF8;
    v228 = v75 - 1;
    v121 = __OFSUB__(v75, 1);
    v219 = v121;
    v236 = 7;
    v218 = v88;
    v215 = v10;
    while (1)
    {
      if (v223)
      {
        v122 = sub_1004BD484();
      }

      else
      {
        if (v120 >= *(v220 + 16))
        {
          goto LABEL_160;
        }

        v122 = *(v34 + 8 * v120 + 32);
      }

      v34 = v122;
      v123 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v238 timingParameters:a7];
      v124 = swift_allocObject();
      sub_100009130(0, &qword_100616BF0);
      v125 = sub_1004BCFA4();
      sub_1004A11E4(v34, v125 & 1, &v249);
      *(v124 + 16) = v128;
      v9 = (v124 + 16);
      *(v124 + 24) = v126;
      *(v124 + 32) = v129;
      *(v124 + 40) = v127;
      if (!v120)
      {
        v33 = v127;
        v21 = v126;
        swift_beginAccess();
        v127 = v33;
        *(v124 + 24) = v21 - v29;
      }

      if (v120 >= v10[2])
      {
        while (1)
        {
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
LABEL_165:
          __break(1u);
LABEL_166:
          v71 = sub_1004BD6A4();
          if (!v71)
          {
            goto LABEL_182;
          }

LABEL_41:
          if (v71 < 1)
          {
            break;
          }

          if (v38)
          {
            v72 = sub_1004BD6A4();
          }

          else
          {
            v72 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v233 = v72 - 1;
          if (__OFSUB__(v72, 1))
          {
            goto LABEL_169;
          }

          v89 = 0;
          v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
          v230 = v34 & 0xC000000000000001;
          v227 = v71;
          while (1)
          {
            if (v230)
            {
              v90 = sub_1004BD484();
            }

            else
            {
              v90 = *(v34 + 8 * v89 + 32);
            }

            v91 = v90;
            v10 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v238 timingParameters:a7];
            a3 = a1;
            sub_10001342C(a1, v248);
            v92 = swift_allocObject();
            *(v92 + 16) = v91;
            sub_100013414(v248, v92 + 24);
            *(v92 + 64) = v9;
            *(v92 + 72) = v29;
            v246 = sub_1004B46BC;
            v247 = v92;
            aBlock = _NSConcreteStackBlock;
            v243 = 1107296256;
            v244 = sub_1000D6C80;
            v245 = &unk_1005D5C10;
            v93 = _Block_copy(&aBlock);
            v94 = v91;
            v95 = v9;

            [v10 addAnimations:v93];
            _Block_release(v93);
            v96 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            sub_10001342C(&v94[v96], &aBlock);
            v97 = v245;
            v98 = v246;
            sub_100009178(&aBlock, v245);
            v99 = (*(v98 + 2))(v97, v98);
            v101 = a1[3];
            v100 = a1[4];
            sub_100009178(a3, *(a3 + 24));
            v102 = (*(v100 + 16))(v101, v100);
            sub_100004C6C(&aBlock);
            if (v99 == v102)
            {
              v103 = v10;
              sub_1004A6A18(a1, v10, 1, 0);

              v104 = *&v94[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
              if (v104)
              {
                _s23InstrumentalContentViewCMa();
                v105 = swift_dynamicCastClass();
                if (v105)
                {
                  v106 = v105;
                  v107 = swift_allocObject();
                  *(v107 + 16) = v95;
                  *(v107 + 24) = v94;
                  *(v107 + 32) = v29;
                  v246 = sub_1004B4778;
                  v247 = v107;
                  aBlock = _NSConcreteStackBlock;
                  v243 = 1107296256;
                  v244 = sub_1000D6C80;
                  v245 = &unk_1005D5CB0;
                  v108 = _Block_copy(&aBlock);
                  v109 = v94;
                  v110 = v95;
                  v111 = v104;

                  [v103 addAnimations:v108];
                  _Block_release(v108);
                  v112 = swift_allocObject();
                  *(v112 + 16) = v106;
                  *(v112 + 24) = a8;
                  v246 = sub_1004B47BC;
                  v247 = v112;
                  aBlock = _NSConcreteStackBlock;
                  v243 = 1107296256;
                  v244 = sub_10013ABCC;
                  v245 = &unk_1005D5D00;
                  v113 = _Block_copy(&aBlock);
                  a3 = v111;

                  [v103 addCompletion:v113];
                  _Block_release(v113);
                }
              }
            }

            v34 = v240;
            if (v233 == v89)
            {
              sub_10001342C(a1, v248);
              v114 = swift_allocObject();
              *(v114 + 16) = v240;
              *(v114 + 24) = v29;
              *(v114 + 32) = v94;
              *(v114 + 40) = v95;
              *(v114 + 48) = v33;
              *(v114 + 56) = v21;
              sub_100013414(v248, v114 + 64);
              v246 = sub_1004B4720;
              v247 = v114;
              aBlock = _NSConcreteStackBlock;
              v243 = 1107296256;
              v244 = sub_10013ABCC;
              v245 = &unk_1005D5C60;
              v115 = _Block_copy(&aBlock);
              v116 = v94;
              v117 = v95;

              [v10 addCompletion:v115];
              _Block_release(v115);
            }

            v9 = v239;
            swift_beginAccess();
            v118 = v10;
            sub_1004BC274();
            if (*((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1004BC2E4();
            }

            sub_1004BC334();
            swift_endAccess();
            if (v89 == 0x8000000000000000)
            {
              break;
            }

            if (v89 <= 1)
            {
              v119 = 1;
            }

            else
            {
              v119 = v89;
            }

            ++v89;
            [v118 startAnimationAfterDelay:v237[22] * (v119 - 1)];

            if (v227 == v89)
            {
              goto LABEL_182;
            }
          }

          __break(1u);
LABEL_158:
          __break(1u);
        }

        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        swift_once();
LABEL_22:
        v50 = sub_1004B80B4();
        sub_100007084(v50, qword_100616A40);
        v51 = sub_1004B8094();
        v47 = sub_1004BC9A4();
        if (os_log_type_enabled(v51, v47))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          aBlock = v53;
          *v52 = 136315138;
          v34 = v240;
          *(v52 + 4) = sub_100441BE8(0x100000000000003ELL, 0x800000010050ECF0, &aBlock);
          _os_log_impl(&_mh_execute_header, v51, v47, "%s", v52, 0xCu);
          sub_100004C6C(v53);
        }

        a7 = a7 - a8;
        [v238 setImplicitDuration:0];
        *(v38[377] + v9) = 1;
LABEL_27:
        v55 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView;
        v56 = *(v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        if (!v56)
        {
          goto LABEL_34;
        }

        v57 = *&v56[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
        if (!v57)
        {
          goto LABEL_34;
        }

        _s23InstrumentalContentViewCMa();
        v58 = swift_dynamicCastClass();
        if (!v58)
        {
          goto LABEL_34;
        }

        v47 = v58;
        v211 = v10;
        v213 = a3;
        v59 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        sub_10001342C(&v56[v59], &aBlock);
        v60 = v245;
        v9 = v246;
        sub_100009178(&aBlock, v245);
        v61 = *(v9 + 2);
        v62 = v56;
        v34 = v57;
        v63 = v61(v60, v9);
        v64 = v63 + 1;
        if (!__OFADD__(v63, 1))
        {
          sub_100004C6C(&aBlock);
          v65 = a1[3];
          v66 = a1[4];
          sub_100009178(a1, v65);
          v67 = (*(v66 + 16))(v65, v66);
          v68 = v64 == v67;
          v9 = v239;
          if (v64 == v67)
          {
            v69 = *(v239 + v55);
            *(v239 + v55) = 0;

            [v62 frame];
            *(v224 + 24) = *(v224 + 24) - (CGRectGetHeight(v255) + v237[14]);
            sub_10047D674();
          }

          v34 = v240;
          a3 = v213;
          LODWORD(v10) = v211;
          goto LABEL_35;
        }

        __break(1u);
LABEL_175:
        sub_1004BC2E4();
        v38 = v225;
LABEL_125:
        sub_1004BC334();
        swift_endAccess();
        v174 = swift_allocObject();
        *(v174 + 16) = v9;
        v246 = sub_1004B5574;
        v247 = v174;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = sub_1000D6C80;
        v245 = &unk_1005D5B20;
        v175 = _Block_copy(&aBlock);
        v176 = v9;

        [v47 addAnimations:v175];
        _Block_release(v175);
        [v47 startAnimation];
        v70 = sub_1004AB4B4(v226, v34);
        if (v177)
        {
          goto LABEL_180;
        }

        v178 = *(v38 + v9);
        if (!(v178 >> 62))
        {
          if (v70 < *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_128;
          }

LABEL_180:
          sub_1004A6A18(a1, 0, 1, 1);

LABEL_181:

          goto LABEL_182;
        }

LABEL_179:
        if (v70 >= sub_1004BD6A4())
        {
          goto LABEL_180;
        }

LABEL_128:
        v179 = v47;
        sub_1004A6A18(a1, v47, 1, 1);

        goto LABEL_181;
      }

      v130 = *&v10[v236];
      v234 = v120;
      if (v130 == v127)
      {
        if (a5)
        {
          goto LABEL_108;
        }
      }

      else
      {
        *(v217 + 16) = 1;
        if (a5)
        {
          goto LABEL_108;
        }

        v131 = a1[3];
        v132 = a1[4];
        sub_100009178(a1, v131);
        v133 = (*(v132 + 16))(v131, v132);
        v134 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        sub_10001342C(v34 + v134, &aBlock);
        v135 = v123;
        v136 = v245;
        v137 = v246;
        sub_100009178(&aBlock, v245);
        v138 = *(v137 + 2);
        v139 = v137;
        v123 = v135;
        LOBYTE(v135) = v138(v136, v139) < v133;
        sub_100004C6C(&aBlock);
        v231 |= v135;
        v130 = *&v10[v236];
      }

      swift_beginAccess();
      if (v130 == *(v124 + 40) || (v140 = a1[3], v141 = a1[4], sub_100009178(a1, v140), v142 = (*(v141 + 16))(v140, v141), v143 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line, swift_beginAccess(), sub_10001342C(v34 + v143, &aBlock), v144 = v123, v145 = v245, v146 = v246, sub_100009178(&aBlock, v245), v147 = *(v146 + 2), v148 = v146, v123 = v144, v149 = v147(v145, v148), sub_100004C6C(&aBlock), v149 >= v142))
      {
        v144 = v123;
        v150 = v231;
      }

      else
      {
        v150 = 1;
      }

      v151 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      sub_10001342C(v34 + v151, &aBlock);
      v152 = v245;
      v153 = v246;
      sub_100009178(&aBlock, v245);
      v154 = (*(v153 + 2))(v152, v153);
      v155 = a1[3];
      v156 = a1[4];
      sub_100009178(a1, v155);
      v157 = (*(v156 + 16))(v155, v156);
      sub_100004C6C(&aBlock);
      v231 = (v154 != v157) & v150;
      if (v154 == v157)
      {
        v123 = v144;
        if (v150)
        {
          sub_1004AC910();
          swift_beginAccess();
          v199 = *(v124 + 16);
          v200 = v29 + *(v124 + 24);
          *(v124 + 24) = v200;
          sub_1004A688C(v199, v200, *(v124 + 32), *(v124 + 40));
          v202 = v201;
          if (!v234)
          {
LABEL_156:

            sub_1004A88B0(a1, v216 & 1, v214, v212 & 1, 1, 0.0, v202, a8);

            return;
          }

          if (v223 || v234 <= *(v220 + 16))
          {
            if (v234 <= v10[2])
            {
              v203 = 0;
              v204 = (v10 + 7);
              do
              {
                if (v223)
                {
                  v205 = sub_1004BD484();
                }

                else
                {
                  v205 = *(v240 + 8 * v203 + 32);
                }

                v206 = v205;
                ++v203;
                UIView.untransformedFrame.setter(*(v204 - 3), *(v204 - 2), *(v204 - 1), *v204);

                v204 += 4;
              }

              while (v234 != v203);
              goto LABEL_156;
            }

            __break(1u);
          }

          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
          return;
        }
      }

      else
      {
        v123 = v144;
      }

LABEL_108:
      swift_beginAccess();
      v33 = *(v124 + 16);
      v21 = *(v124 + 24);
      v158 = *(v124 + 32);
      v159 = *(v124 + 40);
      if (v231)
      {
        v160 = v34;
        UIView.untransformedFrame.setter(v33, v21, v158, v159);

        v9 = v239;
      }

      else
      {
        v161 = swift_allocObject();
        *(v161 + 16) = v34;
        *(v161 + 24) = v124;
        v9 = v239;
        *(v161 + 32) = v239;
        *(v161 + 40) = v29;
        v162 = v239;
        v163 = v34;

        UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(2, sub_1004B44B4, v161);
      }

      v38 = v225;
      sub_10001342C(a1, v248);
      v164 = swift_allocObject();
      *(v164 + 16) = v9;
      *(v164 + 24) = v34;
      sub_100013414(v248, v164 + 32);
      v246 = sub_1004B450C;
      v247 = v164;
      aBlock = _NSConcreteStackBlock;
      v243 = 1107296256;
      v244 = sub_1000D6C80;
      v245 = &unk_1005D5A80;
      a3 = _Block_copy(&aBlock);
      v165 = v9;
      v34 = v34;

      [v221 addAnimations:a3];
      _Block_release(a3);
      if (v219)
      {
        goto LABEL_161;
      }

      v166 = v234;
      if (v228 == v234)
      {
        sub_10001342C(a1, v248);
        v167 = swift_allocObject();
        *(v167 + 16) = v240;
        *(v167 + 24) = v29;
        *(v167 + 32) = v165;
        *(v167 + 40) = v217;
        *(v167 + 48) = v228;
        *(v167 + 56) = v224;
        sub_100013414(v248, v167 + 64);
        v246 = sub_1004B4570;
        v247 = v167;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = sub_10013ABCC;
        v245 = &unk_1005D5AD0;
        a3 = _Block_copy(&aBlock);
        v168 = v165;

        v10 = v215;

        v38 = v225;

        v166 = v234;

        [v123 addCompletion:a3];
        _Block_release(a3);
      }

      swift_beginAccess();
      v169 = v123;
      sub_1004BC274();
      if (*((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004BC2E4();
        v38 = v225;
      }

      sub_1004BC334();
      swift_endAccess();
      v170 = v237[22];
      if (v29 >= 0.0)
      {
        v171 = v166;
      }

      else
      {
        v171 = v228 - v166;
        if (__OFSUB__(v228, v166))
        {
          goto LABEL_163;
        }

        v170 = v170 * 0.5;
      }

      v172 = __OFSUB__(v171, 1);
      v173 = v171 - 1;
      if (v172)
      {
        goto LABEL_162;
      }

      v120 = v166 + 1;
      [v169 startAnimationAfterDelay:v170 * (v173 & ~(v173 >> 63))];

      *&v249 = v33;
      *(&v249 + 1) = v21;
      *&v250 = v158;
      *(&v250 + 1) = v159;
      v236 += 4;
      v251 = 0;
      v34 = v240;
      if (v218 == v120)
      {
        goto LABEL_124;
      }
    }
  }

  a8 = *(v224 + 16);
  v33 = *(v224 + 24);
  if (v34 >> 62)
  {
    v70 = sub_1004BD6A4();
    v73 = v70;
    if (!v70)
    {
      goto LABEL_182;
    }
  }

  else
  {
    v73 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v73)
    {
      goto LABEL_182;
    }
  }

  if (v73 < 1)
  {
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (v34 >> 62)
  {
    v70 = sub_1004BD6A4();
  }

  else
  {
    v70 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v235 = v70 - 1;
  if (__OFSUB__(v70, 1))
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v180 = 0;
  v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
  v232 = v34 & 0xC000000000000001;
  *&v21 = 1107296256;
  v229 = v73;
  do
  {
    if (v232)
    {
      v181 = sub_1004BD484();
    }

    else
    {
      v181 = *(v34 + 8 * v180 + 32);
    }

    v182 = v181;
    v183 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v238 timingParameters:a7];
    sub_10001342C(a1, v248);
    v184 = swift_allocObject();
    *(v184 + 16) = v182;
    sub_100013414(v248, v184 + 24);
    *(v184 + 64) = v29;
    *(v184 + 72) = v9;
    v246 = sub_1004B4608;
    v247 = v184;
    aBlock = _NSConcreteStackBlock;
    v243 = 1107296256;
    v244 = sub_1000D6C80;
    v245 = &unk_1005D5B70;
    v185 = _Block_copy(&aBlock);
    v186 = v9;
    v9 = v182;

    [v183 addAnimations:v185];
    _Block_release(v185);
    v187 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v9 + v187, &aBlock);
    v188 = v245;
    v189 = v246;
    sub_100009178(&aBlock, v245);
    v190 = (*(v189 + 2))(v188, v189);
    v191 = a1[3];
    v192 = a1[4];
    sub_100009178(a1, v191);
    v193 = (*(v192 + 16))(v191, v192);
    sub_100004C6C(&aBlock);
    if (v190 == v193)
    {
      v194 = v183;
      sub_1004A6A18(a1, v183, 1, 1);
    }

    v34 = v240;
    if (v235 == v180)
    {
      sub_10001342C(a1, v248);
      v195 = swift_allocObject();
      *(v195 + 16) = v240;
      *(v195 + 24) = v186;
      *(v195 + 32) = a8;
      *(v195 + 40) = v33;
      sub_100013414(v248, v195 + 48);
      v246 = sub_1004B4664;
      v247 = v195;
      aBlock = _NSConcreteStackBlock;
      v243 = 1107296256;
      v244 = sub_10013ABCC;
      v245 = &unk_1005D5BC0;
      v196 = _Block_copy(&aBlock);
      v197 = v186;

      [v183 addCompletion:v196];
      _Block_release(v196);
    }

    swift_beginAccess();
    v10 = v183;
    sub_1004BC274();
    if (*((*(v38 + v239) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v38 + v239) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004BC2E4();
    }

    a3 = v180 + 0x8000000000000000;
    sub_1004BC334();
    swift_endAccess();
    if (v180 == 0x8000000000000000)
    {
      goto LABEL_158;
    }

    if (v180 <= 1)
    {
      v198 = 1;
    }

    else
    {
      v198 = v180;
    }

    ++v180;
    [v10 startAnimationAfterDelay:v237[22] * (v198 - 1)];

    v9 = v239;
  }

  while (v229 != v180);
LABEL_182:
  v207 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v9 + v207) == 1)
  {
    *(v9 + v207) = 0;
    v208 = v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v209 = *(v208 + 1);
      ObjectType = swift_getObjectType();
      (*(v209 + 24))(v9, ObjectType, v209);
      swift_unknownObjectRelease();
    }
  }

  sub_1004A7128(v34);
}

void sub_1004AA690(uint64_t a1, CGFloat *a2, uint64_t a3)
{
  swift_beginAccess();
  UIView.untransformedFrame.setter(a2[2], a2[3], a2[4], a2[5]);
  v6 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_10000F778(v6 + v7, v37, &qword_100615100);
    v8 = v38;
    if (v38)
    {
      v9 = v39;
      sub_100009178(v37, v38);
      v10 = *(v8 - 8);
      v11 = __chkstk_darwin();
      v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v10 + 16))(v13, v11);
      v14 = v6;
      sub_100007214(v37, &qword_100615100);
      v15 = (*(v9 + 16))(v8, v9);
      (*(v10 + 8))(v13, v8);
    }

    else
    {
      v16 = v6;
      sub_100007214(v37, &qword_100615100);
      v15 = 0;
    }

    v17 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(a1 + v17, v37);
    v18 = v38;
    v19 = v39;
    sub_100009178(v37, v38);
    v20 = (*(v19 + 16))(v18, v19);
    if (v8)
    {
      v21 = v20;
      sub_100004C6C(v37);
      if (v15 == v21)
      {
        v22 = v6;
        [v22 frame];
        [v22 setFrame:?];
      }

      else
      {
      }
    }

    else
    {

      sub_100004C6C(v37);
    }
  }

  v23 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel);
  if (v23)
  {
    v24 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(a1 + v24, v37);
    v25 = v38;
    v26 = v39;
    sub_100009178(v37, v38);
    v27 = *(v26 + 16);
    v28 = v23;
    v29 = v27(v25, v26);
    v30 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v31 = *(a3 + v30);
    if (v31 >> 62)
    {
      v35 = sub_1004BD6A4();
      v33 = v35 - 1;
      if (!__OFSUB__(v35, 1))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v32 - 1;
      if (!__OFSUB__(v32, 1))
      {
LABEL_13:
        sub_100004C6C(v37);
        if (v29 == v33)
        {
          v34 = v28;
          [v34 frame];
          [v34 setFrame:?];
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_1004AAA40(uint64_t a1, void *a2, void *a3)
{
  v5 = a1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if (*(v5 + 658) == 1)
  {
    v6 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(a2 + v6, v15);
    v7 = v16;
    v8 = v17;
    sub_100009178(v15, v16);
    v9 = (*(v8 + 16))(v7, v8);
    v10 = a3[3];
    v11 = a3[4];
    sub_100009178(a3, v10);
    v12 = (*(v11 + 16))(v10, v11);
    sub_100004C6C(v15);
    if (v9 < v12)
    {
      [a2 setAlpha:0.0];
      swift_beginAccess();
      sub_10045137C(&v14, a2);
      v13 = v14;
      swift_endAccess();
    }
  }
}

void sub_1004AABAC(double a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (!(a3 >> 62))
  {
    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

    goto LABEL_19;
  }

LABEL_18:
  v14 = sub_1004BD6A4();
  if (!v14)
  {
LABEL_19:
    v32 = a5;
    swift_beginAccess();
    v33 = a8;
    if ((*(a5 + 16) & 1) == 0)
    {
      goto LABEL_49;
    }

    v34 = a6 + 1;
    if (__OFADD__(a6, 1))
    {
      goto LABEL_62;
    }

    v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v68 = a4;
    v35 = *(a4 + v32);
    if (v35 >> 62)
    {
      goto LABEL_63;
    }

    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36 < v34)
    {
      goto LABEL_64;
    }

LABEL_23:
    v8 = *(v68 + v32);
    v32 = v8 >> 62;
    if (v8 >> 62)
    {
      while (sub_1004BD6A4() < v34)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        swift_once();
LABEL_41:
        v43 = sub_1004B80B4();
        sub_100007084(v43, qword_100616A40);

        v44 = sub_1004B8094();
        v45 = sub_1004BC9A4();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = v14;
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v73 = v48;
          *v47 = 136315138;
          v10 = sub_100441BE8(v10, v9, &v73);

          *(v47 + 4) = v10;
          _os_log_impl(&_mh_execute_header, v44, v45, "%s", v47, 0xCu);
          sub_100004C6C(v48);
          v33 = a8;

          v14 = v46;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v51 = v36 - v34;
        v49 = v36 == v34;
        v50 = v36 <= v34;
        a4 = v68;
        if (!v49)
        {
          if (v50)
          {
            goto LABEL_72;
          }

          v52 = (v14 + 8 * v34);
          do
          {
            v53 = *v52++;
            v54 = v53;
            sub_1004A302C(v54);

            --v51;
          }

          while (v51);
        }

        swift_unknownObjectRelease();
LABEL_49:
        v55 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
        swift_beginAccess();
        v56 = *(a4 + v55);
        swift_beginAccess();
        [v56 setContentOffset:{*(a7 + 16), *(a7 + 24)}];
        __chkstk_darwin();
        sub_1004AFE30(sub_1004B4800);
        *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = 0;
        v57 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
        swift_beginAccess();
        *(a4 + v57) = _swiftEmptyArrayStorage;

        v58 = *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
        *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel) = 0;
        if (v58)
        {
          [v58 removeFromSuperview];
        }

        v14 = *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        if (!v14)
        {
          return;
        }

        *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView) = 0;
        v59 = v33[3];
        v34 = v33[4];
        sub_100009178(v33, v59);
        v8 = (*(v34 + 16))(v59, v34);
        v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
        swift_beginAccess();
        v60 = *(a4 + v32);
        if ((v60 & 0xC000000000000001) != 0)
        {
          goto LABEL_59;
        }

        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v61 = *(v60 + 8 * v8 + 32);
          goto LABEL_56;
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v36 = sub_1004BD6A4();
        if (v36 >= v34)
        {
          goto LABEL_23;
        }

LABEL_64:
        __break(1u);
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < v34)
    {
      goto LABEL_66;
    }

    if (v34 < 0)
    {
      goto LABEL_67;
    }

    if (v32)
    {
      v37 = sub_1004BD6A4();
    }

    else
    {
      v37 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v37 < v36)
    {
      goto LABEL_68;
    }

    if ((v8 & 0xC000000000000001) == 0 || v34 == v36)
    {
      swift_bridgeObjectRetain_n();
      if (!v32)
      {
LABEL_36:
        v14 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_39;
      }
    }

    else
    {
      if (v34 >= v36)
      {
        __break(1u);
LABEL_72:
        __break(1u);
        return;
      }

      type metadata accessor for SyncedLyricsLineView();
      swift_bridgeObjectRetain_n();
      v38 = v34;
      do
      {
        v39 = v38 + 1;
        sub_1004BD464(v38);
        v38 = v39;
      }

      while (v36 != v39);
      if (!v32)
      {
        goto LABEL_36;
      }
    }

    sub_1004BD6B4();
    v14 = v40;
    v34 = v41;
    v36 = v42 >> 1;
LABEL_39:
    swift_unknownObjectRetain();

    v73 = 0;
    v74 = 0xE000000000000000;
    sub_1004BD404(52);
    v75._object = 0x800000010050EDB0;
    v75._countAndFlagsBits = 0xD00000000000002CLL;
    sub_1004BC024(v75);
    if (!__OFSUB__(v36, v34))
    {
      v72 = v36 - v34;
      v76._countAndFlagsBits = sub_1004BD934();
      sub_1004BC024(v76);

      v77._countAndFlagsBits = 0x73656E696C20;
      v77._object = 0xE600000000000000;
      sub_1004BC024(v77);
      v10 = v73;
      v9 = v74;
      if (qword_100614EF8 != -1)
      {
        goto LABEL_70;
      }

      goto LABEL_41;
    }

    goto LABEL_69;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v68 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel;
    v67 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v9 = 0;
    v66 = v14;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v15 = sub_1004BD484();
      }

      else
      {
        v15 = *(a3 + 8 * v9 + 32);
      }

      v10 = v15;
      v8 = v15;
      v16 = UIView.untransformedFrame.getter();
      UIView.untransformedFrame.setter(v16, v17 + a1, v18, v19);
      v20 = *(a4 + v68);
      if (v20)
      {
        v21 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        sub_10001342C(v10 + v21, v69);
        v22 = v70;
        v23 = a4;
        v24 = v71;
        sub_100009178(v69, v70);
        v25 = *(v24 + 16);
        v26 = v20;
        v27 = v24;
        a4 = v23;
        v8 = v25(v22, v27);
        v28 = *(v23 + v67);
        if (v28 >> 62)
        {
          v31 = sub_1004BD6A4();
          v30 = v31 - 1;
          if (__OFSUB__(v31, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v30 = v29 - 1;
          if (__OFSUB__(v29, 1))
          {
            goto LABEL_17;
          }
        }

        sub_100004C6C(v69);
        if (v8 == v30)
        {
          v8 = v26;
          [v8 frame];
          [v8 setFrame:?];
        }

        v14 = v66;
      }

      ++v9;

      if (v14 == v9)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
LABEL_59:

  v61 = sub_1004BD484();

LABEL_56:
  sub_1004AC0B4(v14, v61);
}

uint64_t sub_1004AB3B0()
{
  sub_1004BD404(56);
  v1._object = 0x800000010050EDE0;
  v1._countAndFlagsBits = 0xD00000000000002FLL;
  sub_1004BC024(v1);
  swift_beginAccess();
  _s3__C7CGPointVMa_3(0);
  sub_1004BD5C4();
  v2._countAndFlagsBits = 0x20726F6620;
  v2._object = 0xE500000000000000;
  sub_1004BC024(v2);
  sub_100003ABC(&qword_1006150F8);
  sub_1004BD5C4();
  return 0;
}

unint64_t sub_1004AB4B4(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1004BD6A4();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      v6 = sub_1004BD484();
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
    type metadata accessor for SyncedLyricsLineView();
    v8 = sub_1004BCFA4();

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

id sub_1004AB5A4(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a1 + v4, v12);
  v5 = v13;
  v6 = v14;
  sub_100009178(v12, v13);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = a2[3];
  v9 = a2[4];
  sub_100009178(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  sub_100004C6C(v12);
  if (v10 < v7)
  {
    swift_beginAccess();
  }

  [a1 frame];
  return [a1 setFrame:?];
}

id sub_1004AB708(uint64_t a1, char *a2)
{
  sub_1004A302C(a2);
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(&a2[v3], v8);
  v4 = v9;
  v5 = v10;
  sub_100009178(v8, v9);
  v6 = (*(v5 + 16))(v4, v5);
  result = sub_100004C6C(v8);
  if (!v6)
  {
    [a2 frame];
    return [a2 setFrame:?];
  }

  return result;
}

void sub_1004AB7E0(double a1, double a2, double a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 >> 62)
  {
    v12 = sub_1004BD6A4();
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  if (v12 < 1)
  {
    goto LABEL_26;
  }

  v13 = 0;
  do
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      v14 = sub_1004BD484();
    }

    else
    {
      v14 = *(a5 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    [v14 frame];
    [v15 setFrame:?];
  }

  while (v12 != v13);
LABEL_10:
  v16 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a6 + v16, v27);
  v17 = v28;
  v18 = v29;
  sub_100009178(v27, v28);
  v19 = (*(v18 + 16))(v17, v18);
  v20 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v21 = *(a7 + v20);
  if (v21 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i >= v19; i = sub_1004BD6A4())
  {
    sub_100004C6C(v27);
    if (v19 == i)
    {
LABEL_13:
      v23 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      [*(a7 + v23) setContentOffset:{a2, a3}];
      __chkstk_darwin();
      sub_1004AFE30(sub_1004B47E8);
      *(a7 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = 0;
      v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
      swift_beginAccess();
      *(a7 + v24) = _swiftEmptyArrayStorage;

      return;
    }

    if (v19 >= i)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v25 = *(a7 + v20);
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = sub_1004BD484();

        goto LABEL_19;
      }

      if (v19 < 0)
      {
        break;
      }

      if (v19 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v26 = *(v25 + 8 * v19 + 32);
LABEL_19:
      ++v19;
      sub_1004A302C(v26);

      if (i == v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1004ABAEC()
{
  sub_1004BD404(68);
  v1._object = 0x800000010050ED30;
  v1._countAndFlagsBits = 0xD00000000000003BLL;
  sub_1004BC024(v1);
  _s3__C7CGPointVMa_3(0);
  sub_1004BD5C4();
  v2._countAndFlagsBits = 0x20726F6620;
  v2._object = 0xE500000000000000;
  sub_1004BC024(v2);
  sub_100003ABC(&qword_1006150F8);
  sub_1004BD5C4();
  return 0;
}

id sub_1004ABBE4(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a1 + v4, v12);
  v5 = v13;
  v6 = v14;
  sub_100009178(v12, v13);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = a2[3];
  v9 = a2[4];
  sub_100009178(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  sub_100004C6C(v12);
  if (v7 < v10)
  {
    swift_beginAccess();
  }

  [a1 frame];
  return [a1 setFrame:?];
}

void sub_1004ABD30(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(a4 + 32); ; i = sub_1004BD484())
    {
      v9 = i;
      v10 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      sub_10001342C(v9 + v10, v21);

      v11 = v22;
      v12 = v23;
      sub_100009178(v21, v22);
      v13 = (*(v12 + 16))(v11, v12);
      v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
      swift_beginAccess();
      v15 = *(a5 + v14);
      if (v15 >> 62)
      {
        v16 = sub_1004BD6A4();
        if (v16 < v13)
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16 < v13)
        {
          goto LABEL_20;
        }
      }

      sub_100004C6C(v21);
      if (v13 == v16)
      {
LABEL_7:
        v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
        swift_beginAccess();
        [*(a5 + v17) setContentOffset:{a1, a2}];
        __chkstk_darwin();
        sub_1004AFE30(sub_1004B47F4);
        *(a5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = 0;
        v18 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
        swift_beginAccess();
        *(a5 + v18) = _swiftEmptyArrayStorage;

        return;
      }

      if (v13 >= v16)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v19 = *(a5 + v14);
        if ((v19 & 0xC000000000000001) != 0)
        {

          v20 = sub_1004BD484();

          goto LABEL_13;
        }

        if (v13 < 0)
        {
          break;
        }

        if (v13 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v20 = *(v19 + 8 * v13 + 32);
LABEL_13:
        ++v13;
        sub_1004A302C(v20);

        if (v16 == v13)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1004ABFBC()
{
  sub_1004BD404(66);
  v1._object = 0x800000010050ED70;
  v1._countAndFlagsBits = 0xD000000000000039;
  sub_1004BC024(v1);
  _s3__C7CGPointVMa_3(0);
  sub_1004BD5C4();
  v2._countAndFlagsBits = 0x20726F6620;
  v2._object = 0xE500000000000000;
  sub_1004BC024(v2);
  sub_100003ABC(&qword_1006150F8);
  sub_1004BD5C4();
  return 0;
}

void sub_1004AC0B4(objc_class *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v2[v6] contentOffset];
  v8 = v7;
  v10 = v9;
  v11 = [v2 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_38;
  }

  v12 = v11;
  [v11 frame];
  v14 = v13;

  v15 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v16 = *&v3[v15];
  if (v16 > 0.0)
  {
    goto LABEL_5;
  }

  v17 = [v3 view];
  if (!v17)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 frame];
  v16 = v19;

LABEL_5:
  v20 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a2 + v20, &v66);
  v65 = sub_1004A6430(&v66, v8, v10, v14, v16);
  sub_100004C6C(&v66);
  v21 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a1 + v21, &v66);
  v22 = v69;
  v23 = v70;
  sub_100009178(&v66, v69);
  v64 = (*(v23 + 2))(v22, v23);
  sub_10001342C(a2 + v20, v74);
  v24 = v75;
  v25 = v76;
  sub_100009178(v74, v75);
  v63 = (*(v25 + 16))(v24, v25);
  sub_100004C6C(v74);
  sub_100004C6C(&v66);
  v57 = v21;
  sub_10001342C(a1 + v21, &v66);
  v26 = v69;
  v27 = v70;
  sub_100009178(&v66, v69);
  v28 = (*(v27 + 16))(v26, v27);
  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v30 = *&v3[v29];
  v58 = v6;
  if (v30 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i >= v28; i = sub_1004BD6A4())
  {
    v56 = a1;
    sub_100004C6C(&v66);
    if (v28 == i)
    {
LABEL_8:

      if (v63 >= v64)
      {
        v32 = v58;
        v33 = *&v3[v58];
        swift_beginAccess();
        v34 = v33;
        [v34 contentOffset];
        [v34 setContentOffset:?];

        v66 = 0;
        v67 = 0xE000000000000000;
        sub_1004BD404(67);
        v72 = v66;
        v73 = v67;
        v77._object = 0x800000010050ECB0;
        v77._countAndFlagsBits = 0xD00000000000003ALL;
        sub_1004BC024(v77);
        [*&v3[v32] contentOffset];
        v66 = v35;
        v67 = v36;
        _s3__C7CGPointVMa_3(0);
        sub_1004BD5C4();
        v78._countAndFlagsBits = 0x20726F6620;
        v78._object = 0xE500000000000000;
        sub_1004BC024(v78);
        sub_10001342C(v56 + v57, &v66);
        sub_100003ABC(&qword_1006150F8);
        sub_1004BD5C4();
        sub_100004C6C(&v66);
        v27 = v72;
        v26 = v73;
        if (qword_100614EF8 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_36;
      }

      return;
    }

    if (v28 >= i)
    {
      goto LABEL_35;
    }

    a1 = i;
    v27 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    v62 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
    swift_beginAccess();
    swift_beginAccess();
    v43 = 0;
    v26 = 0;
    v61 = &v68;
    v59 = i;
    v60 = v29;
    while (1)
    {
      v44 = *&v3[v29];
      if ((v44 & 0xC000000000000001) != 0)
      {

        v45 = sub_1004BD484();

        goto LABEL_20;
      }

      if (v28 < 0)
      {
        break;
      }

      if (v28 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v45 = *(v44 + 8 * v28 + 32);
LABEL_20:
      v66 = v45;
      __chkstk_darwin();
      v55[2] = &v66;
      if ((sub_10042BA44(sub_1004B43B8, v55, v65) & 1) != 0 && v63 < v64)
      {
        v46 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:*(v27 + 664) stiffness:*(v27 + 672) damping:*(v27 + 680) initialVelocity:{0.0, 0.0}];
        sub_100009130(0, &qword_100616AF0);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v46).super.isa;
        v48 = swift_allocObject();
        *(v48 + 16) = v3;
        *(v48 + 24) = v45;
        v70 = sub_1004B4414;
        v71 = v48;
        v66 = _NSConcreteStackBlock;
        v67 = 1107296256;
        v68 = sub_1000D6C80;
        v69 = &unk_1005D5990;
        v49 = _Block_copy(&v66);
        v50 = v3;
        v51 = v45;

        [(objc_class *)isa addAnimations:v49];
        _Block_release(v49);
        v52 = v62;
        swift_beginAccess();
        a1 = isa;
        sub_1004BC274();
        v53 = *&v3[v52] & 0xFFFFFFFFFFFFFF8;
        v29 = *(v53 + 0x10);
        if (v29 >= *(v53 + 24) >> 1)
        {
          sub_1004BC2E4();
        }

        sub_1004BC334();
        swift_endAccess();
        [(objc_class *)a1 startAnimationAfterDelay:*(v27 + 176) * v43];

        if (__OFADD__(v43++, 1))
        {
          goto LABEL_32;
        }

        a1 = v59;
        v29 = v60;
      }

      else
      {
        sub_1004A302C(v45);
      }

      if (a1 == ++v28)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  swift_once();
LABEL_10:
  v37 = sub_1004B80B4();
  sub_100007084(v37, qword_100616A40);

  v38 = sub_1004B8094();
  v39 = sub_1004BC9A4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v66 = v41;
    *v40 = 136315138;
    v42 = sub_100441BE8(v27, v26, &v66);

    *(v40 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v38, v39, "%s", v40, 0xCu);
    sub_100004C6C(v41);
  }

  else
  {
  }
}

void sub_1004AC910()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v10 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator);
  if (v3)
  {
    v4 = v3;

    v5 = v4;
    sub_1004BC274();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004BC2E4();
    }

    sub_1004BC334();

    v2 = v10;
    if (!(v10 >> 62))
    {
LABEL_5:
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_6;
      }

LABEL_16:

      return;
    }
  }

  else
  {

    if (!(v2 >> 62))
    {
      goto LABEL_5;
    }
  }

  v6 = sub_1004BD6A4();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = sub_1004BD484();
      }

      else
      {
        v8 = *(v2 + 8 * i + 32);
      }

      v9 = v8;
      if ([v8 state] == 1)
      {
        [v9 stopAnimation:0];
        [v9 finishAnimationAtPosition:0];
      }
    }

    goto LABEL_16;
  }

  __break(1u);
}

Swift::Void __swiftcall SyncedLyricsViewController.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v3 = v2;
  v6 = sub_1004BA8F4();
  v58 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004BA924();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin();
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BA954();
  v59 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v50 - v15;
  v17 = type metadata accessor for SyncedLyricsViewController(0);
  v61.receiver = v3;
  v61.super_class = v17;
  objc_msgSendSuper2(&v61, "didUpdateFocusInContext:withAnimationCoordinator:", in.super.isa, with.super.isa);
  v18 = [v3 traitCollection];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 2)
  {
    v54 = v8;
    v55 = v6;
    v20 = [(objc_class *)in.super.isa nextFocusedItem];
    v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v22 = &selRef_values;
    if (!v20 || (v23 = *&v3[v21], swift_unknownObjectRelease(), v24 = v20 == v23, v22 = &selRef_values, !v24))
    {
      v25 = [(objc_class *)in.super.isa previouslyFocusedItem];
      if (v25)
      {
        v26 = *&v3[v21];
        v27 = v25;
        swift_unknownObjectRelease();
        v24 = v27 == v26;
        v22 = &selRef_values;
        if (v24)
        {
          if ([*&v3[v21] isTracking])
          {
            v28 = [*&v3[v21] panGestureRecognizer];
            [v28 setEnabled:0];

            sub_100009130(0, &qword_100616B70);
            v52 = sub_1004BCB44();
            sub_1004BA944();
            sub_1004BA9B4();
            v29 = *(v59 + 8);
            v59 += 8;
            v53 = v29;
            v29(v14, v12);
            v30 = swift_allocObject();
            *(v30 + 16) = v3;
            aBlock[4] = sub_1004AFCC4;
            aBlock[5] = v30;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1000D6C80;
            aBlock[3] = &unk_1005D5720;
            v51 = _Block_copy(aBlock);
            v31 = v3;

            sub_1004BA914();
            aBlock[0] = _swiftEmptyArrayStorage;
            v50 = sub_1004B4DA0(&qword_100616B78, &type metadata accessor for DispatchWorkItemFlags);
            sub_100003ABC(&qword_100616B80);
            sub_1000F96D4(&qword_100616B88, &qword_100616B80);
            v33 = v54;
            v32 = v55;
            sub_1004BD2D4();
            v35 = v51;
            v34 = v52;
            sub_1004BCB04();
            _Block_release(v35);

            v36 = v32;
            v22 = &selRef_values;
            (*(v58 + 8))(v33, v36);
            (*(v56 + 8))(v11, v57);
            v53(v16, v12);
          }
        }
      }
    }

    v37 = [(objc_class *)in.super.isa nextFocusedItem];
    v38 = [in.super.isa v22[292]];
    if (v37)
    {
      if (v38)
      {
        v39 = v38;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37 == v39)
        {
          return;
        }

LABEL_15:
        v40 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel];
        if (!v40)
        {
          return;
        }

        v41 = v40;
        v42 = [(objc_class *)in.super.isa nextFocusedItem];
        if (v42)
        {
          v43 = v42;
          v44 = *&v3[v21];
          swift_unknownObjectRelease();
          v45 = v43 == v44;
          v46 = v41[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState];
          v41[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] = v45;
          if (v45 != v46)
          {
            if (v43 == v44)
            {
              v47 = &selRef_blackColor;
LABEL_22:
              v49 = [objc_opt_self() *v47];
              [v41 setTintColor:v49];

              sub_1004928CC();
              goto LABEL_23;
            }

LABEL_21:
            v47 = &selRef_whiteColor;
            goto LABEL_22;
          }
        }

        else
        {
          v48 = v41[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState];
          v41[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] = 0;
          if (v48)
          {
            goto LABEL_21;
          }
        }

LABEL_23:

        return;
      }
    }

    else if (!v38)
    {
      return;
    }

    swift_unknownObjectRelease();
    goto LABEL_15;
  }
}

void sub_1004AD108(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v3 = [*(a1 + v2) panGestureRecognizer];
  [v3 setEnabled:1];
}

id SyncedLyricsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial] = 0;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen] = 0;
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  v7 = Int.seconds.getter(0);
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight] = v7;
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  sub_100495C14(0, __src);
  memcpy(&v3[v8], __src, 0x2B0uLL);
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics] = 0;
  v9 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  *&v3[v12] = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  type metadata accessor for SyncedLyricsViewController.ScrollView();
  *&v3[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_hiddenLineViews] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = 0;
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_tapFeedbackGenerator;
  *&v3[v14] = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer] = 0;
  v15 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  v16 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v16 - 8) + 56))(&v3[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  v18 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v18 - 8) + 56))(&v3[v17], 1, 1, v18);
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator] = 0;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = 0;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling] = 0;
  v19 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
  v20 = sub_1004B6CD4();
  (*(*(v20 - 8) + 56))(&v3[v19], 1, 1, v20);
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 0;
  v21 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_previousBounds];
  *v21 = 0u;
  v21[1] = 0u;
  v22 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins];
  v23 = *&UIEdgeInsetsZero.bottom;
  *v22 = *&UIEdgeInsetsZero.top;
  v22[1] = v23;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer] = 0;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
  if (a2)
  {
    v24 = sub_1004BBE24();
  }

  else
  {
    v24 = 0;
  }

  v27.receiver = v3;
  v27.super_class = type metadata accessor for SyncedLyricsViewController(0);
  v25 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", v24, a3);

  return v25;
}

id SyncedLyricsViewController.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial] = 0;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen] = 0;
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  v4 = Int.seconds.getter(0);
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight] = v4;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  sub_100495C14(0, __src);
  memcpy(&v1[v5], __src, 0x2B0uLL);
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics] = 0;
  v6 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  *&v1[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  type metadata accessor for SyncedLyricsViewController.ScrollView();
  *&v1[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_hiddenLineViews] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = 0;
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_tapFeedbackGenerator;
  *&v1[v11] = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer] = 0;
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  v13 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator] = 0;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = 0;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling] = 0;
  v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
  v17 = sub_1004B6CD4();
  (*(*(v17 - 8) + 56))(&v1[v16], 1, 1, v17);
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 0;
  v18 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_previousBounds];
  *v18 = 0u;
  v18[1] = 0u;
  v19 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins];
  v20 = *&UIEdgeInsetsZero.bottom;
  *v19 = *&UIEdgeInsetsZero.top;
  v19[1] = v20;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer] = 0;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for SyncedLyricsViewController(0);
  v21 = objc_msgSendSuper2(&v23, "initWithCoder:", a1);

  if (v21)
  {
  }

  return v21;
}

id sub_1004AD9FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004ADC5C()
{
  sub_1004BD404(35);
  v1._object = 0x800000010050F020;
  v1._countAndFlagsBits = 0xD000000000000021;
  sub_1004BC024(v1);
  sub_100003ABC(&qword_1006150F8);
  sub_1004BD5C4();
  return 0;
}

uint64_t sub_1004ADD04()
{
  sub_1004BD404(33);
  v1._object = 0x800000010050F000;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  sub_1004BC024(v1);
  sub_100003ABC(&qword_1006150F8);
  sub_1004BD5C4();
  return 0;
}

void sub_1004ADDA0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(a1 + v8) setContentOffset:{a3, a4}];
  sub_1004BD404(65);
  v19 = 0;
  v20 = 0xE000000000000000;
  v21._object = 0x800000010050EFC0;
  v21._countAndFlagsBits = 0xD000000000000038;
  sub_1004BC024(v21);
  *v18 = a3;
  *&v18[1] = a4;
  _s3__C7CGPointVMa_3(0);
  sub_1004BD5C4();
  v22._countAndFlagsBits = 0x20726F6620;
  v22._object = 0xE500000000000000;
  sub_1004BC024(v22);
  v9 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a2 + v9, v18);
  sub_100003ABC(&qword_1006150F8);
  sub_1004BD5C4();
  sub_100004C6C(v18);
  v11 = v19;
  v10 = v20;
  if (qword_100614EF8 != -1)
  {
    swift_once();
  }

  v12 = sub_1004B80B4();
  sub_100007084(v12, qword_100616A40);

  v13 = sub_1004B8094();
  v14 = sub_1004BC9A4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315138;
    v17 = sub_100441BE8(v11, v10, v18);

    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
  }
}

void SyncedLyricsViewController.syncedLyrics(_:select:)(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_1004AFE30(sub_1004B1E84);
  v6 = a2[3];
  v7 = a2[4];
  sub_100009178(a2, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v10 = *&v3[v9];
  if ((v10 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v10 + 8 * v8 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_24;
  }

  v8 = sub_1004BD484();

LABEL_5:
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v3[v11] contentOffset];
  v13 = v12;
  v15 = v14;
  v16 = [v3 view];
  if (v16)
  {
    v17 = v16;
    [v16 frame];
    v19 = v18;

    v20 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
    swift_beginAccess();
    v21 = *&v3[v20];
    if (v21 > 0.0)
    {
      goto LABEL_9;
    }

    v22 = [v3 view];
    if (v22)
    {
      v23 = v22;
      [v22 frame];
      v21 = v24;

LABEL_9:
      [v8 frame];
      v55.origin.x = v25;
      v55.origin.y = v26;
      v55.size.width = v27;
      v55.size.height = v28;
      v54.origin.x = v13;
      v54.origin.y = v15;
      v54.size.width = v19;
      v54.size.height = v21;
      if (CGRectContainsRect(v54, v55))
      {
        sub_100009130(0, &qword_100616AF0);
        v29 = sub_1004A6EE0(0, 1);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v29).super.isa;
        sub_1004A6A18(a2, isa, 0, 1);
        v31 = swift_allocObject();
        *(v31 + 16) = v3;
        v52 = sub_1004B1E8C;
        v53 = v31;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_1000D6C80;
        v51 = &unk_1005D5770;
        v32 = _Block_copy(&aBlock);
        v33 = v3;

        [(objc_class *)isa addAnimations:v32];
        _Block_release(v32);
        v34 = [(objc_class *)isa state]== 3;
        v33[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = v34;
        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        v52 = sub_1004B1EA8;
        v53 = v35;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_10013ABCC;
        v51 = &unk_1005D57C0;
        v36 = _Block_copy(&aBlock);
        v37 = v33;

        [(objc_class *)isa addCompletion:v36];
        _Block_release(v36);
        [(objc_class *)isa startAnimation];

        v8 = isa;
LABEL_20:

        return;
      }

      if (qword_100614EF8 == -1)
      {
LABEL_12:
        v38 = sub_1004B80B4();
        sub_100007084(v38, qword_100616A40);
        v39 = sub_1004B8094();
        v40 = sub_1004BC9A4();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_100441BE8(0xD000000000000056, 0x800000010050E890, &aBlock);
          _os_log_impl(&_mh_execute_header, v39, v40, "%s", v41, 0xCu);
          sub_100004C6C(v42);
        }

        swift_beginAccess();
        v43 = *(a1 + 96);
        if (v43)
        {

          v45 = v43(v44);
          swift_beginAccess();
          v46 = 0.0;
          if (*(a1 + 88) == 1)
          {
            v46 = Lyrics.spatialOffset.getter();
          }

          sub_10003CC4C(v43);
          v47 = v45 - v46;
        }

        else
        {
          v47 = 0.0;
        }

        sub_1004B0198(a2, 0, 1, v47);
        goto LABEL_20;
      }

LABEL_24:
      swift_once();
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1004AE5D4()
{
  sub_1004BD404(32);
  v1._object = 0x800000010050EF40;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  sub_1004BC024(v1);
  sub_100003ABC(&qword_1006150F8);
  sub_1004BD5C4();
  return 0;
}

unint64_t sub_1004AE670()
{
  result = sub_1004A61E0();
  v1 = result;
  if (result >> 62)
  {
    result = sub_1004BD6A4();
    v2 = result;
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return result;
  }

  v23 = 0u;
  v24 = 0u;
  v25 = 1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1004BD484();
  }

  else
  {
    v3 = *(v1 + 32);
  }

  v4 = v3;
  sub_1004A11E4(v3, 2, &v23);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v4;
  UIView.untransformedFrame.setter(v6, v8, v10, v12);

  v14 = v2 - 1;
  if (v2 != 1)
  {
    v15 = 5;
    do
    {
      *&v23 = v6;
      *(&v23 + 1) = v8;
      *&v24 = v10;
      *(&v24 + 1) = v12;
      v25 = 0;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v16 = sub_1004BD484();
      }

      else
      {
        v16 = *(v1 + 8 * v15);
      }

      v17 = v16;
      sub_1004A11E4(v16, 2, &v23);
      v6 = v18;
      v8 = v19;
      v10 = v20;
      v12 = v21;
      v22 = v17;
      UIView.untransformedFrame.setter(v6, v8, v10, v12);

      ++v15;
      --v14;
    }

    while (v14);
  }

LABEL_8:
}

uint64_t sub_1004AE820(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
  swift_beginAccess();
  v4 = *(a2 + v3);
  if (v4 >> 62)
  {
    result = sub_1004BD6A4();
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(a2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = result > 0;
  return result;
}

Swift::Bool __swiftcall SyncedLyricsViewController.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer _, UIGestureRecognizer shouldRecognizeSimultaneouslyWith)
{
  v3 = v2;
  v5 = [v3 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 2)
  {
    v7 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer];
    if (v7 && (sub_100009130(0, &qword_100616BF8), v8 = _.super.isa, v9 = v7, v10 = sub_1004BCFA4(), v9, v8, (v10 & 1) != 0))
    {
      v11 = 0;
    }

    else
    {
      sub_100009130(0, &qword_100616BF0);
      v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      v13 = [*&v3[v12] panGestureRecognizer];
      v14 = sub_1004BCFA4();

      v11 = v14 ^ 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

Swift::Bool __swiftcall SyncedLyricsViewController.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = v1;
  v4 = [v2 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 2)
  {
    return 1;
  }

  v6 = *&v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer];
  if (!v6)
  {
    return 1;
  }

  sub_100009130(0, &qword_100616BF8);
  v7 = a1.super.isa;
  v8 = v6;
  v9 = sub_1004BCFA4();

  if ((v9 & 1) == 0)
  {
    return 1;
  }

  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  return v2[v10] == 1;
}

Swift::Void __swiftcall SyncedLyricsViewController.scrollViewDidScroll(_:)(UIScrollView a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v2)
  {
    v3 = v2;
    sub_1004A3320();
  }
}

void sub_1004AED54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
  }
}

uint64_t SyncedLyricsViewController.reportConcernData.getter@<X0>(void *a1@<X8>)
{
  sub_100003ABC(&qword_100616C00);
  __chkstk_darwin();
  v4 = &v46 - v3;
  sub_100003ABC(&qword_100615048);
  __chkstk_darwin();
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v46 - v7;
  sub_100003ABC(&qword_100616AE0);
  __chkstk_darwin();
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v46 - v11;
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  result = swift_beginAccess();
  v15 = *(v1 + v13);
  if (!v15)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
LABEL_29:
    *a1 = v21;
    a1[1] = v26;
    a1[2] = v22;
    a1[3] = v23;
    a1[4] = v24;
    a1[5] = v25;
    return result;
  }

  v47 = v4;
  v48 = a1;
  v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  swift_beginAccess();
  sub_10000F778(v1 + v16, v10, &qword_100616AE0);
  v17 = type metadata accessor for Lyrics.Translation(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v10, 1, v17) == 1)
  {
    v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
    swift_beginAccess();
    sub_10000F778(v15 + v20, v12, &qword_100616AE0);
    LODWORD(v20) = v19(v10, 1, v17);

    if (v20 != 1)
    {
      sub_100007214(v10, &qword_100616AE0);
    }
  }

  else
  {
    sub_1004B492C(v10, v12, type metadata accessor for Lyrics.Translation);
    (*(v18 + 56))(v12, 0, 1, v17);
  }

  if (v19(v12, 1, v17) == 1)
  {
    sub_100007214(v12, &qword_100616AE0);
    v21 = 0;
    v26 = 0;
  }

  else
  {
    v27 = &v12[*(v17 + 20)];
    v21 = *v27;
    v26 = *(v27 + 1);

    sub_1004B3CFC(v12, type metadata accessor for Lyrics.Translation);
  }

  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  swift_beginAccess();
  sub_10000F778(v1 + v28, v6, &qword_100615048);
  v29 = type metadata accessor for Lyrics.Transliteration(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (v31(v6, 1, v29) == 1)
  {
    v32 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
    swift_beginAccess();
    sub_10000F778(v15 + v32, v8, &qword_100615048);
    if (v31(v6, 1, v29) != 1)
    {
      sub_100007214(v6, &qword_100615048);
    }
  }

  else
  {
    sub_1004B492C(v6, v8, type metadata accessor for Lyrics.Transliteration);
    (*(v30 + 56))(v8, 0, 1, v29);
  }

  v33 = v31(v8, 1, v29);
  v34 = v47;
  if (v33 == 1)
  {
    sub_100007214(v8, &qword_100615048);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v35 = &v8[*(v29 + 20)];
    v22 = *v35;
    v23 = *(v35 + 1);

    sub_1004B3CFC(v8, type metadata accessor for Lyrics.Transliteration);
  }

  a1 = v48;
  v36 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v37 = *(v1 + v36);
  if (!(v37 >> 62))
  {
    result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_19;
    }

LABEL_27:

    v45 = type metadata accessor for Lyrics.TextLine(0);
    (*(*(v45 - 8) + 56))(v34, 1, 1, v45);
    goto LABEL_28;
  }

  result = sub_1004BD6A4();
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_19:
  v38 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
LABEL_31:

    v39 = sub_1004BD484();

LABEL_24:

    v40 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v39 + v40, v49);

    sub_100003ABC(&qword_1006150F8);
    v41 = type metadata accessor for Lyrics.TextLine(0);
    v42 = swift_dynamicCast();
    v43 = *(v41 - 8);
    (*(v43 + 56))(v34, v42 ^ 1u, 1, v41);
    if ((*(v43 + 48))(v34, 1, v41) != 1)
    {
      v44 = (v34 + *(v41 + 52));
      v24 = *v44;
      v25 = v44[1];

      result = sub_1004B3CFC(v34, type metadata accessor for Lyrics.TextLine);
      goto LABEL_29;
    }

LABEL_28:
    result = sub_100007214(v34, &qword_100616C00);
    v24 = 0;
    v25 = 0;
    goto LABEL_29;
  }

  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v38 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v37 + 8 * v38 + 32);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004AF63C(void *a1, void *a2)
{
  v4 = sub_1004BA8F4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BA924();
  v27 = *(v8 - 8);
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  v14 = [a2 preferredContentSizeCategory];
  v15 = sub_1004BBE64();
  v17 = v16;
  if (v15 == sub_1004BBE64() && v17 == v18)
  {
  }

  else
  {
    v26 = v5;
    v20 = sub_1004BD9C4();

    if ((v20 & 1) == 0)
    {
      sub_100009130(0, &qword_100616B70);
      v22 = sub_1004BCB44();
      v23 = swift_allocObject();
      *(v23 + 16) = a1;
      aBlock[4] = sub_1004B4F60;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D6C80;
      aBlock[3] = &unk_1005D6340;
      v24 = _Block_copy(aBlock);
      v25 = a1;

      sub_1004BA914();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1004B4DA0(&qword_100616B78, &type metadata accessor for DispatchWorkItemFlags);
      sub_100003ABC(&qword_100616B80);
      sub_1000F96D4(&qword_100616B88, &qword_100616B80);
      sub_1004BD2D4();
      sub_1004BCB54();
      _Block_release(v24);

      (*(v26 + 8))(v7, v4);
      return (*(v27 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t sub_1004AFA44()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1004AFA7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000136EC;

  return sub_10049AE74(a1, v4, v5, v7, v6);
}

uint64_t sub_1004AFB40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1004AFB88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001384C;

  return sub_10049C330(a1, v4, v5, v7, v6);
}

unint64_t sub_1004AFC48()
{
  result = qword_100616B40;
  if (!qword_100616B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616B40);
  }

  return result;
}

uint64_t sub_1004AFCCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004AFCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100009130(0, &qword_100616AF0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1004BD6A4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1004BD6A4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1004AFE30(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  if (qword_100614EF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1004B80B4();
  sub_100007084(v4, qword_100616A40);

  oslog = sub_1004B8094();
  v5 = sub_1004BC9A4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    v8 = sub_100441BE8(v1, v3, &v10);

    *(v6 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v5, "%s", v6, 0xCu);
    sub_100004C6C(v7);
  }

  else
  {
  }
}

uint64_t sub_1004AFFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for SyncedLyricsLineView();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1004BD6A4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1004BD6A4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004B00AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    v12 = a3;
    if (!v7)
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1004BD6A4();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1004BD6A4();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_10013232C(result);

  return v12(v5, v3, 0);
}

void sub_1004B0198(_BOOL8 a1, uint64_t a2, char a3, CGFloat a4)
{
  v5 = v4;
  LOBYTE(v6) = a3;
  sub_1004AFE30(sub_1004B4C90);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  sub_100009178(a1, v10);
  v12 = (*(v11 + 16))(v10, v11);
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v14 = *&v4[v13];
  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_42;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v15 = *(v14 + 8 * v12 + 32);
  while (1)
  {
    v94 = a4;
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v97 = v24;
    [*&v5[v24] contentOffset];
    v26 = v25;
    v28 = v27;
    v29 = [v5 view];
    if (!v29)
    {
      goto LABEL_51;
    }

    v30 = v29;
    [v29 frame];
    v32 = v31;

    v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
    swift_beginAccess();
    v96 = v33;
    a4 = *&v5[v33];
    if (a4 <= 0.0)
    {
      v34 = [v5 view];
      if (!v34)
      {
        goto LABEL_52;
      }

      v35 = v34;
      [v34 frame];
      a4 = v36;
    }

    v104.origin.x = v17;
    v104.origin.y = v19;
    v104.size.width = v21;
    v104.size.height = v23;
    v106.origin.x = v26;
    v106.origin.y = v28;
    v106.size.width = v32;
    v106.size.height = a4;
    v95 = v13;
    if (CGRectIntersectsRect(v104, v106))
    {
      break;
    }

    v92 = a2;
    v37 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
    swift_beginAccess();
    v14 = *&v5[v37];
    v93 = v15;
    v91 = v6;
    v90 = a1;
    a2 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v14 >> 62)
    {
LABEL_45:
      v38 = sub_1004BD6A4();
    }

    else
    {
      v38 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = 0;
    while (1)
    {
      v13 = v38 == v39;
      if (v38 == v39)
      {
LABEL_25:

        a2 = v92;
        v15 = v93;
        LOBYTE(v6) = v91;
        a1 = v90;
        goto LABEL_26;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v40 = sub_1004BD484();
      }

      else
      {
        if (v39 >= *(a2 + 16))
        {
          goto LABEL_41;
        }

        v40 = *(v14 + 8 * v39 + 32);
      }

      v6 = v40;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      [v40 frame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      [*&v5[v97] contentOffset];
      v50 = v49;
      v52 = v51;
      v53 = [v5 view];
      if (!v53)
      {
        goto LABEL_49;
      }

      v54 = v53;
      [v53 frame];
      v56 = v55;

      a4 = *&v5[v96];
      if (a4 <= 0.0)
      {
        v57 = [v5 view];
        if (!v57)
        {
          goto LABEL_50;
        }

        v58 = v57;
        [v57 frame];
        a4 = v59;
      }

      v105.origin.x = v42;
      v105.origin.y = v44;
      v105.size.width = v46;
      v105.size.height = v48;
      v107.origin.x = v50;
      v107.origin.y = v52;
      v107.size.width = v56;
      v107.size.height = a4;
      a1 = CGRectIntersectsRect(v105, v107);

      ++v39;
      if (a1)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:

    v15 = sub_1004BD484();
  }

  LODWORD(v13) = 0;
LABEL_26:
  v60 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling;
  if (v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling] == 1)
  {
    v61 = &v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    swift_beginAccess();
    v62 = v61[659];
  }

  else
  {
    v62 = 0;
  }

  v63 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (v5[v63] == 2 || ((v13 | [*&v5[v97] isDragging] & (v62 ^ 1)) & 1) != 0 || v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] != 1)
  {
    sub_100009130(0, &qword_100616AF0);
    v80 = sub_1004A6EE0(a2, v6 & 1);
    isa = UIViewPropertyAnimator.init(springTimingParameters:)(v80).super.isa;
    sub_1004A6A18(a1, isa, 1, 1);
    v82 = swift_allocObject();
    *(v82 + 16) = v5;
    v102 = sub_1004B55D8;
    v103 = v82;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_1000D6C80;
    v101 = &unk_1005D6020;
    v83 = _Block_copy(&aBlock);
    v84 = v5;

    [(objc_class *)isa addAnimations:v83];
    _Block_release(v83);
    v85 = [(objc_class *)isa state]== 3;
    v84[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = v85;
    v86 = swift_allocObject();
    *(v86 + 16) = v84;
    v102 = sub_1004B562C;
    v103 = v86;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_10013ABCC;
    v101 = &unk_1005D6070;
    v87 = _Block_copy(&aBlock);
    v88 = v84;

    [(objc_class *)isa addCompletion:v87];
    _Block_release(v87);
    [(objc_class *)isa startAnimation];
  }

  else
  {
    if (v62)
    {
      sub_1004AC910();
    }

    v64 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v15 + v64, &aBlock);
    v65 = v101;
    v66 = v102;
    sub_100009178(&aBlock, v101);
    v67 = (*(v66 + 2))(v65, v66);
    v68 = *&v5[v95];
    if ((v68 & 0xC000000000000001) != 0)
    {

      v89 = sub_1004BD484();

      v69 = v89;
      goto LABEL_38;
    }

    if ((v67 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v67 < *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v69 = *(v68 + 8 * v67 + 32);
LABEL_38:
      v70 = v69;
      v71 = UIView.untransformedFrame.getter();
      v73 = v72;
      v75 = v74;
      v77 = v76;

      sub_1004A688C(v71, v73, v75, v77);
      v79 = v78;

      sub_100004C6C(&aBlock);
      sub_10001342C(v15 + v64, &aBlock);
      sub_1004A88B0(&aBlock, v5[v60], a2, v6 & 1, 0, 0.0, v79, v94);

      sub_100004C6C(&aBlock);
      v5[v60] = 0;
      return;
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }
}

void sub_1004B0984(void *a1, uint64_t a2, double a3)
{
  v5 = v3;
  v143 = a1;
  sub_1004AFE30(sub_1004B4BE0);
  v9 = a1[3];
  v10 = a1[4];
  v141 = a1;
  sub_100009178(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v13 = *&v12[v5];
  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_93;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_95;
  }

  if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_97;
  }

  v4 = *(v13 + 8 * v11 + 32);
  while (1)
  {
    v14 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    v139 = v14;
    sub_10001342C(v4 + v14, &v144);
    v13 = v147;
    v15 = v148;
    sub_100009178(&v144, v147);
    v16 = (*(v15 + 2))(v13, v15);
    v17 = *&v12[v5];
    if ((v17 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
LABEL_97:
      __break(1u);
    }

    else if (v16 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v17 + 8 * v16 + 32);
      goto LABEL_9;
    }

    __break(1u);
LABEL_99:
    swift_once();
LABEL_43:
    v80 = sub_1004B80B4();
    sub_100007084(v80, qword_100616A40);

    v81 = sub_1004B8094();
    v82 = sub_1004BC9A4();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v144 = v84;
      *v83 = 136315138;
      v85 = sub_100441BE8(a2, v13, &v144);

      *(v83 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v81, v82, "%s", v83, 0xCu);
      sub_100004C6C(v84);
    }

    else
    {
    }

    v86 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_hiddenLineViews;
    swift_beginAccess();
    v140 = v86;
    a2 = *(v5 + v86);
    v133 = v4;
    if ((a2 & 0xC000000000000001) != 0)
    {

      sub_1004BD324();
      type metadata accessor for SyncedLyricsLineView();
      sub_1004B4DA0(&unk_100616F30, type metadata accessor for SyncedLyricsLineView);
      sub_1004BC6A4();
      a2 = v144;
      v87 = v145;
      v88 = v146;
      v12 = v147;
      v5 = v148;
    }

    else
    {
      v89 = -1 << *(a2 + 32);
      v87 = a2 + 56;
      v88 = ~v89;
      v90 = -v89;
      if (v90 < 64)
      {
        v91 = ~(-1 << v90);
      }

      else
      {
        v91 = -1;
      }

      v5 = v91 & *(a2 + 56);

      v12 = 0;
    }

    v135 = v88;
    v92 = (v88 + 64) >> 6;
    if (a2 < 0)
    {
      while (1)
      {
        v98 = sub_1004BD354();
        if (!v98)
        {
          break;
        }

        v150[4] = v98;
        type metadata accessor for SyncedLyricsLineView();
        swift_dynamicCast();
        v97 = v151[0];
        v95 = v12;
        v96 = v5;
        if (!v151[0])
        {
          break;
        }

LABEL_61:
        [v97 setAlpha:{1.0, v133}];
        swift_beginAccess();
        v99 = sub_100453DE0(v97);
        swift_endAccess();

        v12 = v95;
        v5 = v96;
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }
      }

LABEL_63:
      sub_1001A43F8();
      v100 = v142;
      if (v142[v136])
      {
LABEL_64:

        return;
      }

      [*&v142[v137] contentOffset];
      v102 = v101;
      v104 = v103;
      v105 = [v100 view];
      if (!v105)
      {
        goto LABEL_111;
      }

      v106 = v105;
      [v105 frame];
      v108 = v107;

      v109 = v133;
      v110 = *&v100[v134];
      if (v110 > 0.0)
      {
        goto LABEL_69;
      }

      v111 = [v100 view];
      if (v111)
      {
        v112 = v111;
        [v111 frame];
        v110 = v113;

LABEL_69:
        sub_10001342C(v109 + v139, v151);
        v64 = sub_1004A6430(v151, v102, v104, v108, v110);
        sub_100004C6C(v151);

        sub_1004A7128(v114);

        v115 = &v100[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
        swift_beginAccess();
        if (v115[658] != 1)
        {
          goto LABEL_107;
        }

        if (!(v64 >> 62))
        {
          v116 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v116)
          {
            goto LABEL_72;
          }

LABEL_107:

          return;
        }

LABEL_106:
        v116 = sub_1004BD6A4();
        if (!v116)
        {
          goto LABEL_107;
        }

LABEL_72:
        if (v116 >= 1)
        {
          v117 = 0;
          v139 = v64 & 0xC000000000000001;
          do
          {
            if (v139)
            {
              v120 = sub_1004BD484();
            }

            else
            {
              v120 = *(v64 + 8 * v117 + 32);
            }

            v121 = v120;
            v122 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            sub_10001342C(v121 + v122, v151);
            v123 = v152;
            v124 = v153;
            sub_100009178(v151, v152);
            v125 = (*(v124 + 16))(v123, v124);
            v127 = v141[3];
            v126 = v141[4];
            sub_100009178(v141, v127);
            v128 = (*(v126 + 16))(v127, v126);
            sub_100004C6C(v151);
            if (v125 < v128)
            {
              [v121 setAlpha:0.0];
              swift_beginAccess();
              v118 = v121;
              sub_10045137C(v150, v118);
              v119 = v150[0];
              swift_endAccess();
            }

            else
            {
            }

            ++v117;
          }

          while (v116 != v117);
          goto LABEL_107;
        }

        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_53:
    v93 = v12;
    v94 = v5;
    v95 = v12;
    if (v5)
    {
LABEL_57:
      v96 = (v94 - 1) & v94;
      v97 = *(*(a2 + 48) + ((v95 << 9) | (8 * __clz(__rbit64(v94)))));
      if (v97)
      {
        goto LABEL_61;
      }

      goto LABEL_63;
    }

    while (1)
    {
      v95 = (v93 + 1);
      if (__OFADD__(v93, 1))
      {
        break;
      }

      if (v95 >= v92)
      {
        goto LABEL_63;
      }

      v94 = *(v87 + 8 * v95);
      ++v93;
      if (v94)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:

    v4 = sub_1004BD484();
  }

LABEL_95:

  v131 = sub_1004BD484();

  v18 = v131;
LABEL_9:
  v19 = v18;
  v20 = UIView.untransformedFrame.getter();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_1004A688C(v20, v22, v24, v26);
  v28 = v27;

  v142 = v5;
  sub_100004C6C(&v144);
  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v30 = *&v142[v29];
  v144 = v4;
  __chkstk_darwin();
  v132[2] = &v144;
  v5 = v142;

  v31 = sub_10042BA44(sub_1004B5610, v132, v30);

  v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v5 + v32) != 2 || (v31 & 1) != 0)
  {
    v136 = v32;
    v40 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v137 = v40;
    [*(v5 + v40) contentOffset];
    v42 = v41;
    v44 = v43;
    v45 = [v5 view];
    if (!v45)
    {
      goto LABEL_109;
    }

    v46 = v45;
    [v45 frame];
    v48 = v47;

    v49 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
    swift_beginAccess();
    v134 = v49;
    v50 = *(v5 + v49);
    if (v50 <= 0.0)
    {
      v51 = [v5 view];
      if (!v51)
      {
        goto LABEL_110;
      }

      v52 = v51;
      [v51 frame];
      v50 = v53;
    }

    v138 = v4;
    [v138 frame];
    v158.origin.x = v54;
    v158.origin.y = v55;
    v158.size.width = v56;
    v158.size.height = v57;
    v157.origin.x = v42;
    v157.origin.y = v44;
    v157.size.width = v48;
    v157.size.height = v50;
    if (CGRectIntersectsRect(v157, v158))
    {
      sub_10001342C(v141, &v144);
      sub_100003ABC(&qword_1006150F8);
      if (swift_dynamicCast() & 1) == 0 && (a2)
      {

        if (qword_100614EF8 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_105;
      }
    }

    sub_10001342C(v141, &v144);
    sub_100003ABC(&qword_1006150F8);
    if (!swift_dynamicCast())
    {
      goto LABEL_36;
    }

    v63 = v141[3];
    v64 = v141[4];
    sub_100009178(v141, v63);
    v65 = (*(v64 + 16))(v63, v64);
    v66 = *&v12[v5];
    if ((v66 & 0xC000000000000001) == 0)
    {
      if ((v65 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v65 < *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v67 = *(v66 + 8 * v65 + 32);
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_103;
    }

    v67 = sub_1004BD484();

LABEL_30:
    v68 = *&v67[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v69 = v68;

    if (v68)
    {
      _s23InstrumentalContentViewCMa();
      if (swift_dynamicCastClass())
      {
        v70 = v5;
        v71 = *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        v72 = v138;
        *&v70[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = v138;
        v73 = v72;

        if (v31)
        {
          sub_10047E2A8(a3);

          v5 = v142;
          goto LABEL_38;
        }

        sub_10047D9E0(a3);
        v5 = v142;
      }
    }

LABEL_36:
    if (!(v31 & 1 | ((a2 & 1) == 0)))
    {
      sub_10001342C(v4 + v139, &v144);
      sub_1004A6A18(&v144, 0, 1, 0);
      sub_100004C6C(&v144);
    }

LABEL_38:
    v74 = v138;
    UIView.untransformedFrame.getter();
    a3 = v75;

    memset(v154, 0, sizeof(v154));
    v155 = 1;
    sub_1004A11E4(v74, 2, v154);
    if (v76 == a3)
    {
      goto LABEL_42;
    }

    sub_10001342C(v4 + v139, &v144);
    v77 = v147;
    v64 = v148;
    sub_100009178(&v144, v147);
    v78 = (*(v64 + 16))(v77, v64);
    v63 = v78;
    v79 = *&v12[v5];
    if (!(v79 >> 62))
    {
      a2 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a2 < v78)
      {
        goto LABEL_104;
      }

      goto LABEL_41;
    }

LABEL_103:
    a2 = sub_1004BD6A4();
    if (a2 < v63)
    {
LABEL_104:
      __break(1u);
LABEL_105:
      swift_once();
LABEL_22:
      v58 = sub_1004B80B4();
      sub_100007084(v58, qword_100616A40);
      v59 = sub_1004B8094();
      v60 = sub_1004BC9A4();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v144 = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_100441BE8(0xD00000000000002BLL, 0x800000010050EF90, &v144);
        _os_log_impl(&_mh_execute_header, v59, v60, "%s", v61, 0xCu);
        sub_100004C6C(v62);
      }

      sub_1004AC910();
      sub_1004B0198(v141, 0, 1, a3);
      goto LABEL_64;
    }

LABEL_41:
    sub_100004C6C(&v144);
    if (v63 != a2)
    {
      if (v63 < a2)
      {
        while (1)
        {
          v129 = *&v12[v5];
          if ((v129 & 0xC000000000000001) != 0)
          {

            v130 = sub_1004BD484();
          }

          else
          {
            if (v63 < 0)
            {
              goto LABEL_91;
            }

            if (v63 >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_92;
            }

            v130 = *(v129 + 8 * v63 + 32);
          }

          ++v63;
          sub_1004A302C(v130);

          if (a2 == v63)
          {
            goto LABEL_42;
          }
        }
      }

      __break(1u);
      goto LABEL_106;
    }

LABEL_42:
    sub_1004AC910();
    [*(v5 + v137) setContentOffset:{0.0, v28}];
    v144 = 0;
    v145 = 0xE000000000000000;
    sub_1004BD404(41);
    v156._object = 0x800000010050EF60;
    v156._countAndFlagsBits = 0xD000000000000027;
    sub_1004BC024(v156);
    v151[0] = 0;
    *&v151[1] = v28;
    _s3__C7CGPointVMa_3(0);
    sub_1004BD5C4();
    a2 = v144;
    v13 = v145;
    if (qword_100614EF8 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_99;
  }

  sub_1004AC910();
  v33 = swift_allocObject();
  *(v33 + 2) = v5;
  v33[3] = 0.0;
  v33[4] = v28;
  *(v33 + 5) = v4;
  v34 = objc_allocWithZone(UIViewPropertyAnimator);
  v148 = sub_1004B4C80;
  v149 = v33;
  v144 = _NSConcreteStackBlock;
  v145 = 1107296256;
  v146 = sub_1000D6C80;
  v147 = &unk_1005D5FD0;
  v35 = _Block_copy(&v144);
  v36 = v5;
  v37 = v4;

  v38 = [v34 initWithDuration:3 curve:v35 animations:0.25];
  _Block_release(v35);
  if (a2)
  {
    sub_10001342C(v4 + v139, &v144);
    v39 = v38;
    sub_1004A6A18(&v144, v38, 1, 1);

    sub_100004C6C(&v144);
  }

  [v38 startAnimation];
}

uint64_t _s7LyricsX06SyncedA14ViewControllerC06syncedA14DesectAllLinesyyAA0bA7ManagerCF_0()
{
  v1 = v0;
  if (qword_100614EF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();
  sub_100007084(v2, qword_100616A40);
  v3 = sub_1004B8094();
  v4 = sub_1004BC9A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100441BE8(0xD000000000000023, 0x800000010050EEE0, v25);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100004C6C(v6);
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  result = swift_beginAccess();
  if (!v1[v7])
  {
    v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    result = [*&v1[v9] isDragging];
    if ((result & 1) == 0)
    {
      sub_100009130(0, &qword_100616AF0);
      v10 = sub_1004A6EE0(0, 1);
      v11.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)(v10).super.isa;
      v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
      result = swift_beginAccess();
      v13 = *&v1[v12];
      if (v13 >> 62)
      {
        result = sub_1004BD6A4();
        v14 = result;
        if (result)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_9:
          v23 = v12;
          if (v14 < 1)
          {
            __break(1u);
            return result;
          }

          v15 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];

          swift_beginAccess();
          for (i = 0; i != v14; ++i)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v17 = sub_1004BD484();
            }

            else
            {
              v17 = *(v13 + 8 * i + 32);
            }

            v18 = v17;
            v19 = v11.super.isa;
            sub_1004877C8(0, v11.super.isa);

            if (v15[657] != 1 || (v20 = [v1 traitCollection], v21 = objc_msgSend(v20, "accessibilityContrast"), v20, v21 == 1))
            {
            }

            else
            {
              sub_100487C74(1, 3.0);
              swift_beginAccess();
              sub_10045137C(&v24, v18);
              v22 = v24;
              swift_endAccess();
            }
          }

          v12 = v23;
        }
      }

      *&v1[v12] = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void sub_1004B1D4C(void *a1, double a2)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  sub_100009178(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if ((v9 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 8 * v7 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v10 = sub_1004BD484();

LABEL_5:
  v11 = *&v10[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  v12 = v11;

  if (v11)
  {
    _s23InstrumentalContentViewCMa();
    if (swift_dynamicCastClass())
    {
      v13 = v12;
      sub_10047E2A8(a2);
    }
  }
}

void sub_1004B1EC4(uint64_t a1)
{
  v2 = v1;
  sub_100003ABC(&qword_100616C00);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001342C(a1, v26);
  sub_100003ABC(&qword_1006150F8);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if ((v10 & 1) == 0)
  {
    v11(v5, 1, 1, v6);
    sub_100007214(v5, &qword_100616C00);
    return;
  }

  v11(v5, 0, 1, v6);
  sub_1004B492C(v5, v9, type metadata accessor for Lyrics.TextLine);
  swift_beginAccess();
  v12 = type metadata accessor for SyncedLyricsLineView();

  Array.subscript.getter(v12, v26);

  v13 = v26[0];
  if (!v26[0])
  {
    goto LABEL_15;
  }

  v14 = *(v26[0] + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (!v14)
  {
    goto LABEL_13;
  }

  _s19SBS_TextContentViewCMa();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = *(v15 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (!v16)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v17 = *(v16 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
    if (v17)
    {
      v18 = *(v17 + 56);
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
        v24 = *(v17 + 48);

        v23 = v14;

        swift_beginAccess();
        v21 = 0;
        while (v21 < *(v18 + 16))
        {
          ++v21;
          memcpy(v26, (v2 + v20), 0x2B0uLL);

          sub_10046E570(v26, &v25);
          sub_1004727CC(v26);
          sub_10046E5CC(v26);

          if (v19 == v21)
          {

            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_18;
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_1004B3CFC(v9, type metadata accessor for Lyrics.TextLine);

    return;
  }

LABEL_14:

LABEL_15:
  sub_1004B3CFC(v9, type metadata accessor for Lyrics.TextLine);
}

void sub_1004B225C()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
    swift_beginAccess();
    v3 = *&v0[v2];
    if (v3 >> 62)
    {
      if (!sub_1004BD6A4())
      {
        return;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {

      v4 = sub_1004BD484();
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

    v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
    swift_beginAccess();
    sub_10000F778(&v0[v5], &aBlock, &qword_100616AA8);
    v6 = v38;
    if (v38)
    {
      v7 = v39;
      sub_100009178(&aBlock, v38);
      v8 = *(v6 - 1);
      v9 = __chkstk_darwin();
      v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      sub_100007214(&aBlock, &qword_100616AA8);
      v12 = v0;
      v13 = v7[1](v6, v7);
      v14 = (*(v8 + 8))(v11, v6);
      v15 = v13(v14);

      sub_1004AC910();
      v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
      v16 = v4;
      v17 = UIView.untransformedFrame.getter();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      sub_1004A688C(v17, v19, v21, v23);
      v25 = v24;
      v26 = objc_opt_self();
      v27 = swift_allocObject();
      *(v27 + 2) = v12;
      v27[3] = 0.0;
      *(v27 + 4) = v25;
      v39 = sub_1004B4AEC;
      v40 = v27;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_1000D6C80;
      v38 = &unk_1005D5E68;
      v28 = _Block_copy(&aBlock);
      v29 = v12;

      v30 = swift_allocObject();
      *(v30 + 2) = v29;
      *(v30 + 3) = v16;
      v30[4] = 0.0;
      *(v30 + 5) = v25;
      v30[6] = v15;
      v39 = sub_1004B4B94;
      v40 = v30;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_100398C10;
      v38 = &unk_1005D5EB8;
      v31 = _Block_copy(&aBlock);
      v32 = v16;
      v33 = v29;

      [v26 animateWithDuration:v28 animations:v31 completion:0.25];
      _Block_release(v31);
      _Block_release(v28);
    }

    else
    {

      sub_100007214(&aBlock, &qword_100616AA8);
    }
  }
}

void sub_1004B26A0()
{
  v3 = v1;
  v4 = sub_1004A61E0();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_1004BD6A4();
    v7 = &off_100616000;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = &off_100616000;
    if (v6)
    {
LABEL_3:
      if (v6 >= 1)
      {
        v8 = 0;
        v9 = v7[332];
        v10 = v5 & 0xC000000000000001;
        v11 = &OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
        v45 = v9;
        v46 = v5;
        while (1)
        {
          if (v10)
          {
            v12 = sub_1004BD484();
          }

          else
          {
            v12 = *(v5 + 8 * v8 + 32);
          }

          v13 = v12;
          v14 = *&v12[*v11];
          if (!v14)
          {
            goto LABEL_6;
          }

          _s19SBS_TextContentViewCMa();
          v15 = swift_dynamicCastClass();
          if (!v15)
          {
            goto LABEL_6;
          }

          v16 = *&v9[v3];
          if (!v16)
          {
            goto LABEL_6;
          }

          v17 = v6;
          v18 = v10;
          v19 = v11;
          v48 = v15;
          swift_beginAccess();
          v20 = *(v16 + 96);
          if (v20)
          {
            break;
          }

          v11 = v19;
          v10 = v18;
          v6 = v17;
          v5 = v46;
LABEL_6:
          ++v8;

          if (v6 == v8)
          {
            goto LABEL_36;
          }
        }

        v47 = v14;

        v21 = sub_10002F518(v20);
        v22 = v20(v21);
        swift_beginAccess();
        if (*(v16 + 88) == 1)
        {
          v23 = Lyrics.spatialOffset.getter();
          sub_10003CC4C(v20);
        }

        else
        {

          sub_10003CC4C(v20);
          v23 = 0.0;
        }

        v24 = v22 - v23;
        v25 = v48;
        v11 = v19;
        if (v24 == *(v48 + OBJC_IVAR___MusicSBS_TextContentView_progress))
        {
          v10 = v18;
          v6 = v17;
          v9 = v45;
          v5 = v46;
        }

        else
        {
          *(v48 + OBJC_IVAR___MusicSBS_TextContentView_progress) = v24;
          v27 = *(v25 + OBJC_IVAR___MusicSBS_TextContentView_textView);
          v9 = v45;
          if (!v27)
          {
            goto LABEL_58;
          }

          v10 = v18;
          v28 = *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
          v6 = v17;
          if (v28 != v24 && (v24 >= v28 || v28 - v24 >= 0.5))
          {
            *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = v24;
            v30 = v27;
            sub_100455F48(1, v24);

            v25 = v48;
          }

          v31 = *(v25 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
          v5 = v46;
          if (v31)
          {
            v32 = *&v31[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
            if (v32 != v24 && (v24 >= v32 || v32 - v24 >= 0.5))
            {
              *&v31[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = v24;
              v34 = v31;
              sub_100455F48(1, v24);

              v26 = v13;
              v13 = v34;
              goto LABEL_20;
            }
          }
        }

        v26 = v47;
LABEL_20:

        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_52;
    }
  }

LABEL_36:

  if (*(v3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating))
  {
    return;
  }

  v0 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView;
  v6 = *(v3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
  if (!v6)
  {
    goto LABEL_48;
  }

  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v1 = *(v3 + v2);
  if (!(v1 >> 62))
  {
    v35 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

LABEL_52:
  v35 = sub_1004BD6A4();
  if (!v35)
  {
LABEL_48:
    if (*(v3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager))
    {

      SyncedLyricsManager.update()();
    }

    return;
  }

LABEL_40:
  v36 = v35 - 1;
  if (__OFSUB__(v35, 1))
  {
    __break(1u);
    goto LABEL_55;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_55:
    v43 = v6;

    v39 = sub_1004BD484();

    goto LABEL_45;
  }

  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v36 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v1 + 8 * v36 + 32);
    v38 = v6;
    v39 = v37;
LABEL_45:
    v40 = *(v3 + v2);
    v49 = v6;
    __chkstk_darwin();
    v44[2] = &v49;

    v41 = sub_10042BA44(sub_1004B5610, v44, v40);

    if ((v41 & 1) == 0)
    {
      v42 = *(v3 + v0);
      *(v3 + v0) = 0;

      sub_1004AC0B4(v6, v39);
      sub_10048769C();
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_1004B2B40(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 2)
  {
    return 1;
  }

  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  swift_beginAccess();
  if (v1[v6] != 1)
  {
    return 0;
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (v1[v7])
  {
    return 0;
  }

  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  swift_beginAccess();
  if (*&v1[v8] <= 0.0)
  {
    return 0;
  }

  v9 = [v1 view];
  [a1 locationInView:v9];
  v11 = v10;

  result = [v1 view];
  if (result)
  {
    v12 = result;
    [result frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21.origin.x = v14;
    v21.origin.y = v16;
    v21.size.width = v18;
    v21.size.height = v20;
    return CGRectGetHeight(v21) - *&v1[v8] < v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s7LyricsX06SyncedA14ViewControllerC06scrollC17WillBeginDraggingyySo08UIScrollC0CF_0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if (v1[v2])
  {
    return;
  }

  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (v1[v3] != 1)
  {
    v4 = [v1 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 2)
    {
      v1[v3] = 1;
      v6 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 1);
        ObjectType = swift_getObjectType();
        (*(v7 + 16))(v1, ObjectType, v7);
        swift_unknownObjectRelease();
      }
    }
  }

  sub_1004A84A4();
  sub_1004AC910();
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 0;
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer;
  [*&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer] invalidate];
  v10 = *&v1[v9];
  *&v1[v9] = 0;

  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_hiddenLineViews;
  swift_beginAccess();
  v12 = *&v1[v11];
  if ((v12 & 0xC000000000000001) != 0)
  {

    sub_1004BD324();
    type metadata accessor for SyncedLyricsLineView();
    sub_1004B4DA0(&unk_100616F30, type metadata accessor for SyncedLyricsLineView);
    sub_1004BC6A4();
    v12 = v48;
    v13 = v49;
    v14 = v50;
    v15 = v51;
    v16 = v52;
  }

  else
  {
    v17 = -1 << *(v12 + 32);
    v13 = v12 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v12 + 56);

    v15 = 0;
  }

  v40 = v14;
  v20 = (v14 + 64) >> 6;
  if (v12 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v21 = v15;
    v22 = v16;
    v23 = v15;
    if (!v16)
    {
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          goto LABEL_23;
        }

        v22 = *(v13 + 8 * v23);
        ++v21;
        if (v22)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_35:

      v35 = sub_1004BD484();

LABEL_29:
      sub_10048809C(0, 1);

      sub_100004C6C(aBlock);
LABEL_32:
      v36 = objc_opt_self();
      v37 = swift_allocObject();
      *(v37 + 16) = v1;
      v43 = sub_1004B4BAC;
      v44 = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D6C80;
      v42 = &unk_1005D5F80;
      v38 = _Block_copy(aBlock);
      v39 = v1;

      [v36 animateWithDuration:v38 animations:0.2];
      _Block_release(v38);
      return;
    }

LABEL_17:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v12 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      break;
    }

    while (1)
    {
      [v25 setAlpha:{1.0, v40}];
      swift_beginAccess();
      v27 = sub_100453DE0(v25);
      swift_endAccess();

      v15 = v23;
      v16 = v24;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      v26 = sub_1004BD354();
      if (v26)
      {
        *&v45 = v26;
        type metadata accessor for SyncedLyricsLineView();
        swift_dynamicCast();
        v25 = aBlock[0];
        v23 = v15;
        v24 = v16;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

LABEL_23:
  sub_1001A43F8();
  v28 = *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel];
  if (!v28)
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    goto LABEL_31;
  }

  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  swift_beginAccess();
  sub_10000F778(v28 + v29, &v45, &qword_100615100);
  if (!*(&v46 + 1))
  {
LABEL_31:
    sub_100007214(&v45, &qword_100615100);
    goto LABEL_32;
  }

  sub_100013414(&v45, aBlock);
  v30 = v42;
  v31 = v43;
  sub_100009178(aBlock, v42);
  v32 = (*(v31 + 2))(v30, v31);
  v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v34 = *&v1[v33];
  if ((v34 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v32 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v34 + 8 * v32 + 32);
    goto LABEL_29;
  }

  __break(1u);
}

void _s7LyricsX06SyncedA14ViewControllerC06scrollC14DidEndDragging_14willDecelerateySo08UIScrollC0C_SbtF_0()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1004B4BA4;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000C81CC;
    aBlock[3] = &unk_1005D5F30;
    v4 = _Block_copy(aBlock);

    v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:3.0];
    _Block_release(v4);
    v6 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer);
    *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer) = v5;
  }
}

void sub_1004B33B0(unint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (*v7)
  {
    return;
  }

  v8 = [v3 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 2)
  {
    if (a3 <= 0.0)
    {
      if (a3 < 0.0)
      {
        v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
        swift_beginAccess();
        if (v4[v14] == 1)
        {
          v4[v14] = 0;
          v15 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v16 = *(v15 + 1);
            ObjectType = swift_getObjectType();
            (*(v16 + 24))(v4, ObjectType, v16);
            swift_unknownObjectRelease();
          }
        }

        v18 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v18 + 1);
          v20 = swift_getObjectType();
          (*(v19 + 32))(v4, v20, v19);
          goto LABEL_13;
        }
      }
    }

    else
    {
      v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
      swift_beginAccess();
      if (v4[v10] != 1)
      {
        v4[v10] = 1;
        v11 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v11 + 1);
          v13 = swift_getObjectType();
          (*(v12 + 16))(v4, v13, v12);
LABEL_13:
          swift_unknownObjectRelease();
        }
      }
    }
  }

  if (*(v7 + 659) != 1)
  {
    return;
  }

  v21 = *(v7 + 48);
  if (v21 & 0x80000000) == 0 || (v21)
  {
    return;
  }

  v22 = v7[3];
  v86 = v7[4];
  v87 = v7[2];
  rect = v7[5];
  v23 = *(a1 + 8);
  v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v4[v24] frame];
  Width = CGRectGetWidth(v96);
  [*&v4[v24] frame];
  Height = CGRectGetHeight(v97);
  v27 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v83 = v27;
  v28 = *(v27 + v4);
  aBlock[0] = _swiftEmptyArrayStorage;
  if (v28 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1004BD6A4())
  {

    v84 = a1;
    if (!i)
    {
      break;
    }

    a1 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v30 = sub_1004BD484();
      }

      else
      {
        if (a1 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v30 = *(v28 + 8 * a1 + 32);
      }

      v31 = v30;
      v27 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      [v30 frame];
      v101.origin.x = 0.0;
      v101.origin.y = v23;
      v101.size.width = Width;
      v101.size.height = Height;
      if (CGRectIntersectsRect(v98, v101))
      {
        sub_1004BD4F4();
        sub_1004BD534();
        sub_1004BD544();
        sub_1004BD504();
      }

      else
      {
      }

      ++a1;
      if (v27 == i)
      {
        v32 = aBlock[0];
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_32:

  if ((v32 & 0x8000000000000000) != 0 || (v32 & 0x4000000000000000) != 0)
  {
    v33 = sub_1004BD6A4();
    if (!v33)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v33 = *(v32 + 16);
    if (!v33)
    {
      goto LABEL_67;
    }
  }

  if (v33 < 1)
  {
    __break(1u);
    goto LABEL_70;
  }

  v88 = 0;
  v34 = 0;
  v35 = v22 + v23;
  v36 = INFINITY;
  do
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v37 = sub_1004BD484();
    }

    else
    {
      v37 = *(v32 + 8 * v34 + 32);
    }

    v38 = v37;
    v39 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v38 + v39, aBlock);
    sub_100003ABC(&qword_1006150F8);
    if (swift_dynamicCast())
    {
    }

    else
    {
      v40 = v38;
      [v40 frame];
      v42 = v41;
      [v40 frame];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v99.origin.x = v44;
      v99.origin.y = v46;
      v99.size.width = v48;
      v99.size.height = v50;
      v51 = v42 + CGRectGetHeight(v99) * 0.5;
      v100.size.width = v86;
      v100.origin.x = v87;
      v100.origin.y = v35;
      v100.size.height = rect;
      v52 = vabdd_f64(v51, CGRectGetMidY(v100));
      if (v52 >= v36)
      {
      }

      else
      {

        v36 = v52;
        v88 = v40;
      }
    }

    ++v34;
  }

  while (v33 != v34);
  if (!v88)
  {
LABEL_67:

    return;
  }

  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel;
  v53 = *&v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel];
  v27 = &OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  if (v53)
  {
    v54 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_10000F778(v53 + v54, &v93, &qword_100615100);
    if (*(&v94 + 1))
    {
      sub_100013414(&v93, aBlock);
      v55 = v90;
      v56 = v91;
      sub_100009178(aBlock, v90);
      v57 = (*(v56 + 2))(v55, v56);
      v58 = *(v83 + v4);
      if ((v58 & 0xC000000000000001) == 0)
      {
        if ((v57 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v57 < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v59 = *(v58 + 8 * v57 + 32);
LABEL_53:
          sub_100004C6C(aBlock);
          goto LABEL_56;
        }

        __break(1u);
LABEL_73:
        __break(1u);
        return;
      }

LABEL_70:

      v59 = sub_1004BD484();

      goto LABEL_53;
    }
  }

  else
  {
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
  }

  sub_100007214(&v93, &qword_100615100);
  v59 = 0;
LABEL_56:
  type metadata accessor for SyncedLyricsTimestampLabel();
  v60 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v61 = v60;
  v62 = *&v4[v28];
  *&v4[v28] = v60;
  if (v62)
  {
    v63 = v60;
    [v62 removeFromSuperview];
  }

  else
  {
    v64 = v60;
  }

  v65 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(v88 + v65, aBlock);
  v66 = *v27;
  swift_beginAccess();
  sub_10003F42C(aBlock, v61 + v66, &qword_100615100);
  swift_endAccess();
  sub_100491A04();
  sub_100007214(aBlock, &qword_100615100);
  [v61 setAlpha:0.0];
  sub_1004A3320();
  v67 = [v4 view];
  if (!v67)
  {
    goto LABEL_73;
  }

  v68 = v67;

  [v68 addSubview:v61];

  if (v59)
  {
    v69 = v59;
    sub_10048809C(0, 1);
  }

  sub_10048809C(1, 1);
  v70 = objc_opt_self();
  v71 = swift_allocObject();
  *(v71 + 16) = v61;
  v91 = sub_100470844;
  v92 = v71;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  v90 = &unk_1005D5F08;
  v72 = _Block_copy(aBlock);
  v73 = v61;

  [v70 animateWithDuration:v72 animations:0.2];
  _Block_release(v72);
  v74 = v88;
  v75 = UIView.untransformedFrame.getter();
  v77 = v76;
  v79 = v78;
  v81 = v80;

  sub_1004A688C(v75, v77, v79, v81);
  *v84 = 0;
  v84[1] = v82;
}

uint64_t sub_1004B3CFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1004B3D60()
{
  result = qword_100616C08;
  if (!qword_100616C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616C08);
  }

  return result;
}

uint64_t sub_1004B3DB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1004B3E0C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1004B3E60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1004B3ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1004B3FA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Lyrics.TextLine(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1004B405C()
{
  type metadata accessor for Lyrics.TextLine(319);
  if (v0 <= 0x3F)
  {
    sub_100009130(319, &qword_100615B60);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSTextAlignment(319);
      if (v2 <= 0x3F)
      {
        _s3__C6CGRectVMa_2(319);
        if (v3 <= 0x3F)
        {
          _s3__C17CGAffineTransformVMa_1(319);
          if (v4 <= 0x3F)
          {
            sub_10044D6E8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1004B4160()
{
  sub_1004B5460(319, &unk_100616D00, type metadata accessor for Lyrics.Translation);
  if (v0 <= 0x3F)
  {
    sub_1004B5460(319, &unk_1006151B8, type metadata accessor for Lyrics.Transliteration);
    if (v1 <= 0x3F)
    {
      sub_1004B5460(319, &qword_100616D10, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1004B43D4()
{

  return swift_deallocObject();
}

uint64_t sub_1004B446C()
{

  return swift_deallocObject();
}

uint64_t sub_1004B44C4()
{
  sub_100004C6C(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1004B4518()
{

  sub_100004C6C(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1004B4588()
{

  return swift_deallocObject();
}

uint64_t sub_1004B45C0()
{
  sub_100004C6C(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1004B461C()
{

  sub_100004C6C(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1004B4674()
{
  sub_100004C6C(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1004B46D0()
{

  sub_100004C6C(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1004B4738()
{

  return swift_deallocObject();
}

uint64_t sub_1004B4784()
{

  return swift_deallocObject();
}

uint64_t sub_1004B4808@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  return sub_10001342C(v3 + v4, a2);
}

uint64_t sub_1004B486C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100009178(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1004B48E4()
{

  return swift_deallocObject();
}

uint64_t sub_1004B492C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004B4994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004B49FC()
{

  return swift_deallocObject();
}

id sub_1004B4A60()
{
  v1 = *(v0 + 16);
  [v1 setHidden:0];

  return [v1 setHighlighted:0];
}

uint64_t sub_1004B4AB4()
{

  return swift_deallocObject();
}

id sub_1004B4AEC()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  return [*(v1 + v4) setContentOffset:{v2, v3}];
}

uint64_t sub_1004B4B54()
{

  return swift_deallocObject();
}

id sub_1004B4BB0()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_1004B4C40()
{

  return swift_deallocObject();
}

uint64_t sub_1004B4C98()
{

  if (*(v0 + 56))
  {
    sub_100004C6C(v0 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_1004B4CF4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1004B4D44()
{

  return swift_deallocObject();
}

uint64_t sub_1004B4DA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004B4DE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_100109480(a1, v4);
}

uint64_t sub_1004B4EA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000136EC;

  return sub_100109480(a1, v4);
}

uint64_t sub_1004B4F84()
{

  return swift_deallocObject();
}

uint64_t sub_1004B5004()
{

  return swift_deallocObject();
}

uint64_t sub_1004B509C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_100616C00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100003ABC(&qword_100616EF0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1004B51EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_100616C00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100003ABC(&qword_100616EF0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1004B5328()
{
  sub_1004B53FC();
  if (v0 <= 0x3F)
  {
    sub_1004B5460(319, &qword_1006163F0, type metadata accessor for Lyrics.TextLine);
    if (v1 <= 0x3F)
    {
      sub_1004B5460(319, &unk_100617000, type metadata accessor for Lyrics.Translation.Line);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1004B53FC()
{
  result = qword_100616FF0;
  if (!qword_100616FF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100616FF0);
  }

  return result;
}

void sub_1004B5460(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004BD174();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *LineProgressGradientView.__allocating_init(color:featherWidth:direction:frame:)(void *a1, char a2, double a3, double a4, double a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView] = 0;
  v16 = &v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView();
  *&v15[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  *&v15[v18] = [objc_allocWithZone(UIView) init];
  *&v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = a1;
  *&v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth] = a3;
  v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction] = a2 & 1;
  v22.receiver = v15;
  v22.super_class = v7;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v22, "initWithFrame:", a4, a5, a6, a7);
  [v20 setClipsToBounds:{1, v22.receiver, v22.super_class}];
  [v20 addSubview:*&v20[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView]];
  [v20 addSubview:*&v20[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView]];
  sub_1004B5B6C();
  sub_1004B5EA0();

  return v20;
}

char *LineProgressGradientView.init(color:featherWidth:direction:frame:)(void *a1, char a2, double a3, double a4, double a5, double a6, double a7)
{
  *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView] = 0;
  v15 = &v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView();
  *&v7[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  *&v7[v17] = [objc_allocWithZone(UIView) init];
  *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = a1;
  *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth] = a3;
  v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction] = a2 & 1;
  v21.receiver = v7;
  v21.super_class = type metadata accessor for LineProgressGradientView();
  v18 = a1;
  v19 = objc_msgSendSuper2(&v21, "initWithFrame:", a4, a5, a6, a7);
  [v19 setClipsToBounds:{1, v21.receiver, v21.super_class}];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView]];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView]];
  sub_1004B5B6C();
  sub_1004B5EA0();

  return v19;
}

uint64_t sub_1004B5984(uint64_t result, uint64_t a2, char a3)
{
  v4 = &v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  if (v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 16])
  {
    if (a3)
    {
      return result;
    }
  }

  else if ((a3 & 1) == 0 && *v4 == *&result && v4[1] == *&a2)
  {
    return result;
  }

  [v3 setClipsToBounds:?];
  v6 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView;
  v7 = *&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView];
  if (v4[2])
  {
    [v7 removeFromSuperview];
    v8 = *&v3[v6];
    *&v3[v6] = 0;
  }

  else
  {
    if (!v7)
    {
      v9 = [objc_allocWithZone(UIView) init];
      [v9 setBackgroundColor:*&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color]];
      [v3 addSubview:v9];
      v10 = *&v3[v6];
      *&v3[v6] = v9;
    }

    [v3 setNeedsLayout];
  }

  *&result = COERCE_DOUBLE([v3 setNeedsLayout]);
  return result;
}

Swift::Void __swiftcall LineProgressGradientView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for LineProgressGradientView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  sub_1004B5C78();
}

void sub_1004B5B6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction);
  v2 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  v3 = [*(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView) layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  if (v1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (v1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [v4 setStartPoint:v5];

  v7 = [*(v0 + v2) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v6, 0.0}];

  sub_1004B5C78();
}

void sub_1004B5C78()
{
  v1 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction;
  if (v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction])
  {
    v2 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth;
    v3 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth];
    v4 = 0.0;
    v5 = v3;
  }

  else
  {
    [v0 bounds];
    Width = CGRectGetWidth(v26);
    v2 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth;
    v5 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth];
    v4 = Width - v5;
    if (Width - v5 <= 0.0)
    {
      v3 = Width - v5;
    }

    else
    {
      v3 = 0.0;
    }
  }

  v7 = &v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  if (v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 16])
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 8];
  }

  v9 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView];
  [v0 bounds];
  [v9 setFrame:{v4, -v8, v5, v8 + v8 + CGRectGetHeight(v27)}];

  v10 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  v11 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView];
  [v0 bounds];
  v12 = CGRectGetWidth(v28) - *&v0[v2];
  if (v12 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  [v0 bounds];
  [v11 setFrame:{v3, 0.0, v13, CGRectGetHeight(v29)}];

  if ((v7[2] & 1) == 0)
  {
    v14 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView];
    if (v14)
    {
      v15 = *v7;
      v16 = v7[1];
      v17 = v0[v1];
      v18 = *&v0[v10];
      v24 = v14;
      [v18 frame];
      if (v17 == 1)
      {
        MaxX = CGRectGetMaxX(*&v19);
      }

      else
      {
        MaxX = CGRectGetMinX(*&v19) - v15;
      }

      [v24 setFrame:{MaxX, -v16, v15, v16 + v16}];
    }
  }
}

id sub_1004B5EA0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView) layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  sub_100003ABC(&qword_100615758);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1004C50C0;
  v4 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color;
  v5 = [*(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color) CGColor];
  _s3__C7CGColorCMa_1(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = [*(v0 + v4) colorWithAlphaComponent:0.0];
  v9 = [v8 CGColor];

  *(v3 + 88) = v7;
  *(v3 + 64) = v9;
  isa = sub_1004BC284().super.isa;

  [v2 setColors:isa];

  v11 = *(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView);
  v12 = *(v0 + v4);

  return [v11 setBackgroundColor:v12];
}

id sub_1004B620C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1004B6248()
{
  result = qword_100617078;
  if (!qword_100617078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100617078);
  }

  return result;
}

unint64_t sub_1004B6318()
{
  result = qword_1006170D0;
  if (!qword_1006170D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006170D0);
  }

  return result;
}

void sub_1004B6364()
{
  *(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView) = 0;
  v1 = v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  sub_1004BD624();
  __break(1u);
  sub_1004B6434();
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  v4 = _CGPointApplyAffineTransform(point, t);
  y = v4.y;
  x = v4.x;
  result.y = y;
  result.x = x;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  v7 = _CTFramesetterSuggestFrameSizeWithConstraints(framesetter, stringRange, frameAttributes, constraints, fitRange);
  height = v7.height;
  width = v7.width;
  result.height = height;
  result.width = width;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  StringRange = _CTLineGetStringRange(line);
  length = StringRange.length;
  location = StringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  StringRange = _CTRunGetStringRange(run);
  length = StringRange.length;
  location = StringRange.location;
  result.length = length;
  result.location = location;
  return result;
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