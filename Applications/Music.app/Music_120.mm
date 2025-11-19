uint64_t sub_100CA73B8()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_100CA7514, v4, v3);
}

uint64_t sub_100CA7514()
{
  v1 = v0[9];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100CA7580()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100CA7608()
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
    sub_1002AD8C8(__dst, v12);
    sub_1002AD8C8(__dst, v12);
    v4 = v2;
    sub_1002AD8C8(v13, v12);
    sub_100C9C2C4(v11);
    sub_100C82F2C(v13);
    sub_100C9C2C4(v13);
    sub_100C9C2C4(__dst);

    v5 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
    if (v5)
    {
      memcpy(v8, (v1 + v3), sizeof(v8));
      memcpy(v12, &v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v12));
      memcpy(v9, &v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v9));
      memmove(&v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], (v1 + v3), 0x2B0uLL);
      sub_1002AD8C8(v8, &v7);
      sub_1002AD8C8(v8, &v7);
      v6 = v5;
      sub_1002AD8C8(v12, &v7);
      sub_100C9C2C4(v9);
      sub_100C82F2C(v12);
      sub_100C9C2C4(v12);
      sub_100C9C2C4(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100CA77C8(uint64_t result)
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

uint64_t sub_100CA7824(uint64_t result, char a2)
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
      sub_100C82FD8(v7 & 1, a2 & 1);

      v9 = *(v4 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (v9)
      {
        v10 = v9;
        sub_100C82FD8(v7 & 1, a2 & 1);
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
          sub_100009F78(0, &qword_1011BD330);
          v13 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 0.2);
        }

        v15.super.isa = v13;
        sub_100009F78(0, &qword_1011BD500);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v15).super.isa;
        v18[4] = sub_100CA9EC4;
        v18[5] = v12;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 1107296256;
        v18[2] = sub_10002BC98;
        v18[3] = &unk_1010F6970;
        v17 = _Block_copy(v18);

        [(objc_class *)isa addAnimations:v17];
        _Block_release(v17);
        [(objc_class *)isa startAnimation];
      }

      else
      {

        sub_100CA7AA0(v14, v7 & 1);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100CA7AA0(uint64_t a1, char a2)
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
        v7 = xmmword_100EBEF30;
        v8 = xmmword_100EBEF40;
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

void sub_100CA7B90(char a1, double a2)
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
          sub_100C83C9C(v9 & 1, v8);

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
            sub_100C83C9C(v17 & 1, v16);
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

void *sub_100CA7D10()
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

void sub_100CA7DC8(char **a1@<X8>)
{
  sub_10010FC20(&qword_1011BD610);
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
  sub_10010FC20(&qword_1011BBA48);
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
  sub_1000089F8(v23 + v25, v22, &qword_1011BBA48);
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
  sub_1000089F8(&v1[v29], v13, &qword_1011BD610);
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
  sub_1000089F8(v23 + v32, v190, &qword_1011BBA48);
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

  sub_1002AD8C8(v205, &v202);

  sub_1002AD8C8(v205, &v202);

  v182 = v34;
  v40 = &v34[v36];
  v41 = v37;
  v42 = v196;
  sub_1002190E0(v196, v40, &qword_1011BD610);
  swift_endAccess();
  sub_1000089F8(v189, v194, &qword_1011BBA48);
  sub_1000089F8(v33, v186, &qword_1011BBA48);
  sub_1000089F8(v42, v11, &qword_1011BD610);
  v45 = *(v38 + 48);
  v44 = v38 + 48;
  v43 = v45;
  if (v45(v11, 1, v41) == 1)
  {
    sub_1000095E8(v11, &qword_1011BD610);
    v46 = type metadata accessor for Locale.Language();
    (*(*(v46 - 8) + 56))(v187, 1, 1, v46);
  }

  else
  {
    sub_1000089F8(&v11[v41[7]], v187, &qword_1011BBA48);
    sub_1003407A4(v11);
  }

  v47 = v181;
  v48 = v174;
  sub_1000089F8(v42, v174, &qword_1011BD610);
  v49 = v43(v48, 1, v41);
  v50 = v175;
  if (v49 == 1)
  {
    sub_1000095E8(v48, &qword_1011BD610);
    v51 = 2;
  }

  else
  {
    v52 = (*(v48 + v41[15]))();
    sub_1003407A4(v48);
    v51 = v52 & 1;
  }

  LODWORD(v174) = v51;
  sub_1000089F8(v42, v50, &qword_1011BD610);
  if (v43(v50, 1, v41) == 1)
  {
    sub_1000095E8(v50, &qword_1011BD610);
    v165 = 0;
    v166 = 0;
  }

  else
  {
    v53 = (*(v50 + v41[16]))();
    v165 = v54;
    v166 = v53;
    sub_1003407A4(v50);
  }

  sub_1000089F8(v42, v47, &qword_1011BD610);
  v55 = v43(v47, 1, v41);
  v150 = v44;
  v151 = v41;
  v149 = v43;
  if (v55 == 1)
  {
    sub_1000095E8(v47, &qword_1011BD610);
    v175 = 0;
  }

  else
  {
    v175 = (*(v47 + v41[17]))();
    sub_1003407A4(v47);
  }

  v181 = _s8TextViewCMa();
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
  v60 = type metadata accessor for Locale.Language();
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

  sub_1002AD8C8(v205, &v202);

  v70 = v192;

  *&v56[v68] = sub_100C76C78(_swiftEmptyArrayStorage);
  v71 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
  v72 = v184;
  *v71 = v184;
  v71[1] = v69;
  v73 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  *v73 = v72;
  v73[1] = v69;
  swift_beginAccess();

  sub_1002190E0(v194, &v56[v59], &qword_1011BBA48);
  swift_endAccess();
  swift_beginAccess();
  v74 = v186;
  sub_1002190E0(v186, &v56[v64], &qword_1011BBA48);
  swift_endAccess();
  swift_beginAccess();
  v75 = v187;
  sub_1002190E0(v187, &v56[v65], &qword_1011BBA48);
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
  sub_1000095E8(v75, &qword_1011BBA48);
  sub_1000095E8(v74, &qword_1011BBA48);
  sub_1000095E8(v194, &qword_1011BBA48);
  v79 = v182;
  v80 = *&v182[v167];
  *&v182[v167] = v78;

  v81 = v195;
  if (v195)
  {
    sub_1000089F8(v189, v176, &qword_1011BBA48);
    sub_1000089F8(v190, v177, &qword_1011BBA48);
    v82 = v196;
    v83 = v154;
    sub_1000089F8(v196, v154, &qword_1011BD610);
    v84 = v151;
    v85 = v149;
    v86 = v149(v83, 1, v151);
    v195 = v81;
    if (v86 == 1)
    {

      sub_1000095E8(v83, &qword_1011BD610);
      v159(v178, 1, 1, v160);
    }

    else
    {
      sub_1000089F8(v83 + v84[7], v178, &qword_1011BBA48);

      sub_1003407A4(v83);
    }

    v88 = v156;
    v87 = v157;
    sub_1000089F8(v82, v156, &qword_1011BD610);
    if (v85(v88, 1, v84) == 1)
    {
      sub_1000095E8(v88, &qword_1011BD610);
      v89 = 2;
    }

    else
    {
      v90 = (*(v88 + v84[15]))();
      sub_1003407A4(v88);
      v89 = v90 & 1;
    }

    LODWORD(v194) = v89;
    sub_1000089F8(v82, v87, &qword_1011BD610);
    if (v85(v87, 1, v84) == 1)
    {
      sub_1000095E8(v87, &qword_1011BD610);
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

        sub_1000095E8(v206, &qword_1011BBA40);
      }

      else
      {
        v186 = 0;
      }

      sub_1003407A4(v87);
    }

    v91 = v82;
    v92 = v155;
    sub_1000089F8(v91, v155, &qword_1011BD610);
    if (v85(v92, 1, v84) == 1)
    {
      sub_1000095E8(v92, &qword_1011BD610);
    }

    else
    {
      (*(v92 + v84[18]))(v208);
      sub_1003407A4(v92);
      if (v208[3])
      {
        v185 = v208[7];

        sub_1000095E8(v208, &qword_1011BBA40);
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
        sub_1002AD8C8(v205, &v202);
        v104 = v180;

        *(v93 + v103) = sub_100C76C78(_swiftEmptyArrayStorage);
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
        sub_1002190E0(v176, v109, &qword_1011BBA48);
        swift_endAccess();
        swift_beginAccess();
        v111 = v93 + v99;
        v112 = v177;
        sub_1002190E0(v177, v111, &qword_1011BBA48);
        swift_endAccess();
        swift_beginAccess();
        v113 = v93 + v100;
        v114 = v178;
        sub_1002190E0(v178, v113, &qword_1011BBA48);
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
        sub_1000095E8(v114, &qword_1011BBA48);
        sub_1000095E8(v112, &qword_1011BBA48);
        sub_1000095E8(v110, &qword_1011BBA48);
        v79 = v182;
        v118 = v179;
        v119 = *&v182[v179];
        *&v182[v179] = v117;

        v120 = *&v79[v118];
        if (v120)
        {
          v121 = sub_100CA9E50(v116);
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

    sub_100C9C2C4(v205);

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
    sub_100C9C2C4(v205);
    v133 = v196;
LABEL_48:
    v141 = v189;
    sub_1000095E8(v190, &qword_1011BBA48);
    sub_1000095E8(v133, &qword_1011BD610);
    sub_1000095E8(v141, &qword_1011BBA48);
    v142 = objc_opt_self();
    v143 = swift_allocObject();
    *(v143 + 16) = v135;
    *(v143 + 24) = v132;
    v144 = swift_allocObject();
    *(v144 + 16) = sub_100CA9ED0;
    *(v144 + 24) = v143;
    *&v204 = sub_100029B94;
    *(&v204 + 1) = v144;
    *&v202 = _NSConcreteStackBlock;
    *(&v202 + 1) = 1107296256;
    *&v203 = sub_100029B9C;
    *(&v203 + 1) = &unk_1010F69E8;
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

void sub_100CA95A8(void *a1, unsigned __int8 *a2)
{
  [a2 bounds];
  [a1 setFrame:?];
  [a1 layoutIfNeeded];
  sub_100CA7824(a2[OBJC_IVAR___MusicSBS_TextContentView_isSelected], 0);
  sub_100CA7B90(0, *&a2[OBJC_IVAR___MusicSBS_TextContentView_progress]);
}

id sub_100CA9684(char a1, double a2, double a3)
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

id sub_100CA9728(double a1, double a2)
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

void sub_100CA982C()
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

id sub_100CA9ADC()
{
  v2.receiver = v0;
  v2.super_class = _s19SBS_TextContentViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s19SBS_TextContentViewCMa()
{
  result = qword_1011BCDF0;
  if (!qword_1011BCDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100CA9C24()
{
  sub_100CA9D10();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100CA9D10()
{
  if (!qword_1011BCE00)
  {
    type metadata accessor for Lyrics.TextLine(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011BCE00);
    }
  }
}

uint64_t sub_100CA9D68(const void *a1)
{
  v3 = *v1;
  memcpy(__dst, (v3 + OBJC_IVAR___MusicSBS_TextContentView_specs), sizeof(__dst));
  memcpy((v3 + OBJC_IVAR___MusicSBS_TextContentView_specs), a1, 0x2B0uLL);
  sub_1002AD8C8(a1, &v5);
  sub_100C9C2C4(__dst);
  sub_100CA7608();
  return sub_100C9C2C4(a1);
}

double sub_100CA9E50(uint64_t a1)
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

void sub_100CA9ED8()
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
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

CGFloat sub_100CAA0A4(CGFloat a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
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

id sub_100CAA0FC(uint64_t a1, char a2, void *__src, double a4, double a5)
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

void sub_100CAA248()
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
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    sub_100CAC010();
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
    v24 = _CocoaArrayWrapper.endIndex.getter();
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
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

uint64_t sub_100CAA500()
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
    result = _CocoaArrayWrapper.endIndex.getter();
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
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

void sub_100CAA708(char a1, char a2)
{
  v2[OBJC_IVAR___MusicInstrumentalContentView_isSelected] = a1;
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v3 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
      v4 = swift_allocObject();
      *(v4 + 16) = v2;
      v7[4] = sub_100CAC450;
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_10002BC98;
      v7[3] = &unk_1010F6D20;
      v5 = _Block_copy(v7);
      v6 = v2;

      [v3 addAnimations:v5];
      _Block_release(v5);
      [v3 startAnimation];
    }

    else
    {

      sub_100CAA500();
    }
  }
}

void sub_100CAA86C(double a1)
{
  v2 = &v1[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn];
  if (v1[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn + 8] == 1)
  {
    v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v5 = *&v1[v4];
    if (v5 >> 62)
    {
      v6 = off_1011BC000;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = off_1011BC000;
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
      sub_100CAC010();
      goto LABEL_7;
    }

    while (1)
    {
LABEL_7:
      v8 = (v6[450] + v1);
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
        v14 = _CocoaArrayWrapper.endIndex.getter();
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
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
        v23 = *(v6[450] + v1 + 592);
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
              v42 = sub_100CAC3FC;
              v43 = v26;
              aBlock = _NSConcreteStackBlock;
              v39 = 1107296256;
              v40 = sub_10002BC98;
              v41 = &unk_1010F6C30;
              v27 = _Block_copy(&aBlock);
              v28 = v2;
              v29 = v2;

              [v25 addAnimations:v27];
              _Block_release(v27);
              v30 = swift_allocObject();
              *(v30 + 16) = v29;
              *(v30 + 24) = i;
              v42 = sub_100CAC408;
              v43 = v30;
              aBlock = _NSConcreteStackBlock;
              v39 = 1107296256;
              v40 = sub_100338AB8;
              v41 = &unk_1010F6C80;
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
          v42 = sub_100CAC448;
          v43 = v33;
          aBlock = _NSConcreteStackBlock;
          v39 = 1107296256;
          v40 = sub_10002BC98;
          v41 = &unk_1010F6CD0;
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
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_100CAAE60(int64_t a1, int64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  if (a2 >= a1)
  {
    swift_beginAccess();
    v7 = *(a3 + v5);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

    if (qword_1011BB890 == -1)
    {
LABEL_12:
      [v4 setAlpha:*&qword_10121C1C0];
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

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();

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

uint64_t sub_100CAAFE0(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
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
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (qword_1011BB8A0 != -1)
      {
        swift_once();
      }

      ++v6;
      v9[0] = xmmword_10121C200;
      v9[1] = *algn_10121C210;
      v9[2] = xmmword_10121C220;
      [v8 setTransform:v9];
    }

    while (v5 != v6);
  }

  return result;
}

void sub_100CAB134(double a1)
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
    sub_100CAA500();
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
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v15 = *(v1 + 8 * v14 + 32);
            }

            v16 = v15;
            v17 = [v15 layer];
            [v17 removeAllAnimations];

            if (qword_1011BB890 != -1)
            {
              swift_once();
            }

            ++v14;
            [v16 setAlpha:*&qword_10121C1C0];
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

          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v18 = &unk_100F0E000;
LABEL_36:
          v24 = *&v2[v6] + -0.1;
          v25 = swift_allocObject();
          *(v25 + 16) = v23;
          v26 = objc_allocWithZone(UIViewPropertyAnimator);
          v50 = sub_1001D2178;
          v51 = v25;
          aBlock = _NSConcreteStackBlock;
          v47 = 1107296256;
          v48 = sub_10002BC98;
          v49 = &unk_1010F6BE0;
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
          v50 = sub_100CAC3F4;
          v51 = v35;
          aBlock = _NSConcreteStackBlock;
          v47 = 1107296256;
          v48 = sub_10002BC98;
          v49 = &unk_1010F6B90;
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
      sub_100CAA86C(a1);
      return;
    }

LABEL_66:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

  v18 = &unk_100F0E000;
  if ((v2[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn + 8] & 1) != 0 || (v5 + 1.0 < a1 ? (v19 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn] == v8) : (v19 = 0), !v19 || v4[2] + -1.8 <= a1))
  {
LABEL_44:
    v41 = v4[2];
    v42 = v41 > a1 && v41 + v18[44] < a1;
    if (v42 && (v2[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] & 1) == 0)
    {
      sub_100CAB96C();
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

    v18 = &unk_100F0E000;
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

        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

uint64_t sub_100CAB7C0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
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
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v6 + 8 * i + 32);
      }

      v12 = v11;
      if (v8 == 1)
      {
        if (qword_1011BB8A0 != -1)
        {
          swift_once();
        }

        v13 = xmmword_10121C200;
        v14 = *algn_10121C210;
        v10 = xmmword_10121C220;
      }

      else
      {
        if (qword_1011BB898 != -1)
        {
          swift_once();
        }

        v13 = xmmword_10121C1D0;
        v14 = xmmword_10121C1E0;
        v10 = xmmword_10121C1F0;
      }

      v15 = v10;
      [v12 setTransform:&v13];
    }
  }

  return result;
}

void sub_100CAB96C()
{
  if ((v0[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] & 1) == 0)
  {
    v0[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] = 1;
    v1 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:1.0 controlPoint2:0.25 animations:{0.1, 0.25, 1.0}];
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v17 = sub_100CAC3DC;
    v18 = v2;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10002BC98;
    v16 = &unk_1010F6AA0;
    v3 = _Block_copy(&v13);
    v4 = v0;

    [v1 addAnimations:v3];
    _Block_release(v3);
    [v1 startAnimation];
    v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:1 curve:0 animations:0.3];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v17 = sub_100CAC3E4;
    v18 = v6;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10002BC98;
    v16 = &unk_1010F6AF0;
    v7 = _Block_copy(&v13);
    v8 = v4;

    [v5 addAnimations:v7];
    _Block_release(v7);
    [v5 startAnimationAfterDelay:1.0];
    v9 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:1 curve:0 animations:0.5];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v17 = sub_100CAC3EC;
    v18 = v10;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10002BC98;
    v16 = &unk_1010F6B40;
    v11 = _Block_copy(&v13);
    v12 = v8;

    [v9 addAnimations:v11];
    _Block_release(v11);
    [v9 startAnimationAfterDelay:1.0];
  }
}

uint64_t sub_100CABC74(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
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
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (qword_1011BB8A8 != -1)
      {
        swift_once();
      }

      ++v6;
      v9[0] = xmmword_10121C230;
      v9[1] = xmmword_10121C240;
      v9[2] = xmmword_10121C250;
      [v8 setTransform:v9];
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_100CABDC8(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
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
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

uint64_t sub_100CABEBC(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
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
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (qword_1011BB8B0 != -1)
      {
        swift_once();
      }

      ++v6;
      v9[0] = xmmword_10121C260;
      v9[1] = *algn_10121C270;
      v9[2] = xmmword_10121C280;
      [v8 setTransform:v9];
    }

    while (v5 != v6);
  }

  return result;
}

void sub_100CAC010()
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
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v4;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      [v3 addSubview:v15];
    }

    while (v2 != v4);
  }
}

id sub_100CAC25C()
{
  v2.receiver = v0;
  v2.super_class = _s23InstrumentalContentViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100CAC30C(const void *a1)
{
  v3 = *v1;
  memcpy(v5, (v3 + OBJC_IVAR___MusicInstrumentalContentView_specs), sizeof(v5));
  memcpy((v3 + OBJC_IVAR___MusicInstrumentalContentView_specs), a1, 0x2B0uLL);
  return sub_100C9C2C4(v5);
}

void sub_100CAC408()
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

void sub_100CAC474()
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
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100CAC5B0(char a1, char a2)
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
    if (v9 || ((v10 = [objc_allocWithZone(UILabel) init], objc_msgSend(v10, "setAdjustsFontForContentSizeCategory:", 1), objc_msgSend(v10, "setLineBreakStrategy:", 3), objc_msgSend(v10, "setNumberOfLines:", 0), objc_msgSend(v10, "setTextAlignment:", 4), objc_msgSend(v10, "setAutoresizingMask:", 18), objc_msgSend(v10, "setTextAlignment:", *&v2[OBJC_IVAR___MusicTextContentView_alignment]), v11 = OBJC_IVAR___MusicTextContentView_content, swift_beginAccess(), sub_100CB2108(&v2[v11], v6), swift_getEnumCaseMultiPayload() != 1) ? (sub_100CB21D0(v6), v12 = objc_msgSend(*&v2[OBJC_IVAR___MusicTextContentView_label], "attributedText")) : (v12 = *v6), (objc_msgSend(v10, "setAttributedText:", v12), v12, (v13 = *&v2[OBJC_IVAR___MusicTextContentView_textColorOverride]) == 0) ? (v14 = *&v2[OBJC_IVAR___MusicTextContentView_specs + 352], v13 = 0) : (v14 = *&v2[OBJC_IVAR___MusicTextContentView_textColorOverride]), v15 = v13, objc_msgSend(v10, "setTextColor:", v14), v14, objc_msgSend(v2, "addSubview:", v10), v16 = *&v2[v8], *&v2[v8] = v10, v16, (v9 = *&v2[v8]) != 0))
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
    v35 = sub_100CB3144;
    v36 = v21;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_10002BC98;
    v34 = &unk_1010F7290;
    v22 = _Block_copy(&aBlock);
    v23 = v2;

    [v20 addAnimations:v22];
    _Block_release(v22);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v35 = sub_100CB31D4;
    v36 = v24;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100338AB8;
    v34 = &unk_1010F72E0;
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

void sub_100CACA78(uint64_t a1, uint64_t a2)
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

void sub_100CACB8C(char **a1@<X8>)
{
  v2 = v1;
  sub_10010FC20(&qword_1011BD088);
  __chkstk_darwin();
  v5 = &v16[-v4];
  v6 = _s15TextContentViewC7ContentOMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___MusicTextContentView_content;
  swift_beginAccess();
  sub_100CB2108(&v2[v10], v9);
  memcpy(v17, &v2[OBJC_IVAR___MusicTextContentView_specs], 0x2B0uLL);
  v11 = _s15TextContentViewCMa(0);
  v12 = objc_allocWithZone(v11);
  sub_1002AD8C8(v17, v16);
  v13 = sub_100CB2284(v9, v17, 0);
  sub_100C9C2C4(v17);
  sub_100CAC5B0(v2[OBJC_IVAR___MusicTextContentView_isSelected], 0);
  *&v13[OBJC_IVAR___MusicTextContentView_alignment] = *&v2[OBJC_IVAR___MusicTextContentView_alignment];
  v14 = sub_100C7CAC8(&off_1010F3120);
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_100CACDE8(v14);

  sub_1000095E8(v5, &qword_1011BD088);
  v15 = v13;
  [v2 bounds];
  [v15 setFrame:?];

  a1[3] = v11;
  *a1 = v15;
}

uint64_t sub_100CACDE8(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011BBA50);
  __chkstk_darwin();
  v103 = &v95 - v4;
  sub_10010FC20(&qword_1011BBA48);
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
  v105 = xmmword_100EBEF50;
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
      sub_100CB2108(v2 + v118, v9);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = v121;
      if (EnumCaseMultiPayload == 1)
      {
        sub_100CB21D0(v9);
      }

      else
      {

        v47 = sub_10010FC20(&qword_1011BD090);
        sub_1000095E8(&v9[*(v47 + 48)], &qword_1011BBA48);
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
      sub_100CB2108(v2 + v118, v19);
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
        v38 = *(sub_10010FC20(&qword_1011BD090) + 48);
        v102 = v19;
        sub_100CB30D4(v19 + v38, v117);
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

        sub_10010FC20(&unk_1011BD910);
        inited = swift_initStackObject();
        *(inited + 16) = v105;
        *(inited + 32) = v115;
        v97 = *(v41 + 200);
        v53 = v97;
        v98 = (inited + 32);
        v54 = sub_100009F78(0, &qword_1011BD920);
        *(inited + 40) = v53;
        v55 = v114;
        *(inited + 64) = v54;
        *(inited + 72) = v55;
        v56 = sub_100009F78(0, &qword_1011BC560);
        *(inited + 80) = v109;
        v57 = v113;
        *(inited + 104) = v56;
        *(inited + 112) = v57;
        v58 = sub_100009F78(0, &unk_1011BD3E0);
        v100 = v58;
        v101 = v46;
        *(inited + 120) = v46;
        v60 = v106;
        v59 = v107;
        *(inited + 144) = v58;
        *(inited + 152) = v60;
        sub_100CB2098(v117, v59);
        v61 = type metadata accessor for Locale.Language();
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
          v69 = &qword_1011BBA48;
LABEL_43:
          sub_1000095E8(v68, v69);
          v73 = v116;
          v74 = (inited + 160);
          *(inited + 184) = &type metadata for String;
LABEL_44:
          v75 = &_s8MusicKit5GenreVSeAAMc_ptr;
          *v74 = 0;
          v76 = 0xE000000000000000;
          goto LABEL_45;
        }

        v70 = v103;
        Locale.Language.languageCode.getter();
        (*(v62 + 8))(v59, v61);
        v71 = type metadata accessor for Locale.LanguageCode();
        v72 = *(v71 - 8);
        if ((*(v72 + 48))(v70, 1, v71) == 1)
        {
          v68 = v70;
          v69 = &qword_1011BBA50;
          goto LABEL_43;
        }

        v97 = Locale.LanguageCode.identifier.getter();
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
        v75 = &_s8MusicKit5GenreVSeAAMc_ptr;
LABEL_45:
        *(inited + 168) = v76;
        v77 = sub_100C76B50(inited);
        swift_setDeallocating();
        sub_10010FC20(&qword_1011BC080);
        swift_arrayDestroy();
        v98 = *(v73 + v123);
        v78 = objc_allocWithZone(v75[193]);

        v79 = String._bridgeToObjectiveC()();
        _s3__C3KeyVMa_2(0);
        v81 = v80;
        v96 = sub_100CB222C();
        v97 = v81;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v83 = [v78 initWithString:v79 attributes:isa];

        [v98 setAttributedText:v83];
        v2 = v116;
        v84 = *(v121 + 352);
        v128 = v100;
        *&v127 = v84;
        sub_100016270(&v127, v126);
        v85 = v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125 = v77;
        sub_100C7449C(v126, v99, isUniquelyReferenced_nonNull_native);
        v87 = *(v2 + v122);
        if (v87)
        {
          v88 = objc_allocWithZone(NSAttributedString);
          v89 = v87;
          v90 = String._bridgeToObjectiveC()();

          v91 = Dictionary._bridgeToObjectiveC()().super.isa;

          v92 = [v88 initWithString:v90 attributes:v91];

          [v89 setAttributedText:v92];
          v2 = v116;

          sub_1000095E8(v117, &qword_1011BBA48);
        }

        else
        {

          sub_1000095E8(v117, &qword_1011BBA48);
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

uint64_t sub_100CAD9F8()
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

uint64_t sub_100CADAE4(const void *a1)
{
  sub_10010FC20(&qword_1011BD088);
  __chkstk_darwin();
  v4 = &v9[-v3];
  v5 = *v1;
  memcpy(v10, (v5 + OBJC_IVAR___MusicTextContentView_specs), sizeof(v10));
  memcpy((v5 + OBJC_IVAR___MusicTextContentView_specs), a1, 0x2B0uLL);
  sub_1002AD8C8(a1, v9);
  sub_100C9C2C4(v10);
  v6 = sub_100C7CAC8(&off_1010F30D0);
  v7 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100CACDE8(v6);

  sub_1000095E8(v4, &qword_1011BD088);
  return sub_100C9C2C4(a1);
}

uint64_t sub_100CADC34(char a1)
{
  sub_10010FC20(&qword_1011BD088);
  __chkstk_darwin();
  v4 = &v8 - v3;
  *(*v1 + OBJC_IVAR___MusicTextContentView_isScrolling) = a1;
  v5 = sub_100C7CAC8(&off_1010F3148);
  v6 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_100CACDE8(v5);

  return sub_1000095E8(v4, &qword_1011BD088);
}

void sub_100CADD80()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BD088);
  __chkstk_darwin();
  v3 = &v20[-v2 - 8];
  v4 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v5 = OBJC_IVAR___MusicDespacitoContentView_specs;
  memcpy(v23, (v1 + OBJC_IVAR___MusicDespacitoContentView_specs), sizeof(v23));
  memcpy(v24, &v4[OBJC_IVAR___MusicTextContentView_specs], 0x2B0uLL);
  memmove(&v4[OBJC_IVAR___MusicTextContentView_specs], (v1 + OBJC_IVAR___MusicDespacitoContentView_specs), 0x2B0uLL);
  sub_1002AD8C8(v23, v22);
  sub_1002AD8C8(v23, v22);
  v6 = v4;
  sub_100C9C2C4(v24);
  v7 = sub_100C7CAC8(&off_1010F30D0);
  v8 = _s15TextContentViewC7ContentOMa(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 1, 1, v8);
  sub_100CACDE8(v7);

  sub_1000095E8(v3, &qword_1011BD088);
  sub_100C9C2C4(v23);

  v10 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v10)
  {
    memcpy(v21, (v1 + v5), sizeof(v21));
    memcpy(v22, &v10[OBJC_IVAR___MusicTextContentView_specs], sizeof(v22));
    memmove(&v10[OBJC_IVAR___MusicTextContentView_specs], (v1 + v5), 0x2B0uLL);
    sub_1002AD8C8(v21, v20);
    sub_1002AD8C8(v21, v20);
    v11 = v10;
    sub_100C9C2C4(v22);
    v12 = sub_100C7CAC8(&off_1010F30D0);
    v9(v3, 1, 1, v8);
    sub_100CACDE8(v12);

    sub_1000095E8(v3, &qword_1011BD088);
    sub_100C9C2C4(v21);
  }

  v13 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v13)
  {
    memcpy(v21, (v1 + v5), sizeof(v21));
    memcpy(v22, &v13[OBJC_IVAR___MusicTextContentView_specs], sizeof(v22));
    memmove(&v13[OBJC_IVAR___MusicTextContentView_specs], (v1 + v5), 0x2B0uLL);
    sub_1002AD8C8(v21, v20);
    sub_1002AD8C8(v21, v20);
    v14 = v13;
    sub_100C9C2C4(v22);
    v15 = sub_100C7CAC8(&off_1010F30D0);
    v9(v3, 1, 1, v8);
    sub_100CACDE8(v15);

    sub_1000095E8(v3, &qword_1011BD088);
    sub_100C9C2C4(v21);
  }

  v16 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v16)
  {
    memcpy(v21, (v1 + v5), sizeof(v21));
    memcpy(v22, &v16[OBJC_IVAR___MusicDespacitoContentView_specs], sizeof(v22));
    memmove(&v16[OBJC_IVAR___MusicDespacitoContentView_specs], (v1 + v5), 0x2B0uLL);
    sub_1002AD8C8(v21, v20);
    sub_1002AD8C8(v21, v20);
    v17 = v16;
    v18 = sub_100C9C2C4(v22);
    sub_100CADD80(v18);
    sub_100C9C2C4(v21);
  }
}

void sub_100CAE130()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BD088);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v5 = OBJC_IVAR___MusicDespacitoContentView_isScrolling;
  v4[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + OBJC_IVAR___MusicDespacitoContentView_isScrolling);
  v6 = sub_100C7CAC8(&off_1010F3170);
  v7 = _s15TextContentViewC7ContentOMa(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v3, 1, 1, v7);
  v9 = v4;
  sub_100CACDE8(v6);

  sub_1000095E8(v3, &qword_1011BD088);
  v10 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v10)
  {
    v10[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + v5);
    v11 = sub_100C7CAC8(&off_1010F3198);
    v8(v3, 1, 1, v7);
    v12 = v10;
    sub_100CACDE8(v11);

    sub_1000095E8(v3, &qword_1011BD088);
  }

  v13 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v13)
  {
    v13[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + v5);
    v14 = sub_100C7CAC8(&off_1010F31C0);
    v8(v3, 1, 1, v7);
    v15 = v13;
    sub_100CACDE8(v14);

    sub_1000095E8(v3, &qword_1011BD088);
  }

  v16 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v16)
  {
    v16[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = *(v1 + v5);
    v17 = v16;
    sub_100CAE130();
  }
}

uint64_t sub_100CAE394(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011BD088);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  *&v6[OBJC_IVAR___MusicTextContentView_alignment] = a1;
  v7 = sub_100C7CAC8(&off_1010F31E8);
  v8 = _s15TextContentViewC7ContentOMa(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  v10 = v6;
  sub_100CACDE8(v7);

  result = sub_1000095E8(v5, &qword_1011BD088);
  v12 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v12)
  {
    *&v12[OBJC_IVAR___MusicTextContentView_alignment] = a1;
    v13 = sub_100C7CAC8(&off_1010F3210);
    v9(v5, 1, 1, v8);
    v14 = v12;
    sub_100CACDE8(v13);

    result = sub_1000095E8(v5, &qword_1011BD088);
  }

  v15 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v15)
  {
    *&v15[OBJC_IVAR___MusicTextContentView_alignment] = a1;
    v16 = sub_100C7CAC8(&off_1010F3238);
    v9(v5, 1, 1, v8);
    v17 = v15;
    sub_100CACDE8(v16);

    return sub_1000095E8(v5, &qword_1011BD088);
  }

  return result;
}

id sub_100CAE5B8()
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

void sub_100CAE668(char a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  sub_100CAC5B0(a1, a2);

  v7 = *(v3 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v7)
  {
    v8 = v7;
    sub_100CAE668(a1 & 1, a2 & 1);
  }

  v9 = *(v3 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v9)
  {
    v10 = v9;
    sub_100CAC5B0(a1 & 1, a2 & 1);
  }
}

double sub_100CAE740(char a1, double a2, double a3)
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
    sub_100CAE740(a1 & 1, a2, a3);
  }

  return v9;
}

uint64_t sub_100CAE93C()
{
  sub_10010FC20(&qword_1011BD088);
  __chkstk_darwin();
  v2 = &v20 - v1;
  v20 = _s15TextContentViewC7ContentOMa(0);
  v3 = *(v20 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = (&v20 - v6);
  sub_10010FC20(&qword_1011BBA48);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v12 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_text);
  v11 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_text + 8);
  v13 = OBJC_IVAR___MusicDespacitoContentView_language;
  swift_beginAccess();
  sub_100CB2098(v0 + v13, v9);
  v14 = *(sub_10010FC20(&qword_1011BD090) + 48);
  *v7 = v12;
  v7[1] = v11;
  sub_100CB2098(v9, v7 + v14);
  v15 = v20;
  swift_storeEnumTagMultiPayload();
  v16 = OBJC_IVAR___MusicTextContentView_content;
  swift_beginAccess();
  sub_100CB2108(v10 + v16, v5);
  swift_beginAccess();
  v17 = v10;

  sub_100CB216C(v7, v10 + v16);
  swift_endAccess();
  v18 = sub_100C7CAC8(&off_1010F3260);
  sub_100CB2108(v5, v2);
  (*(v3 + 56))(v2, 0, 1, v15);
  sub_100CACDE8(v18);

  sub_1000095E8(v2, &qword_1011BD088);

  sub_100CB21D0(v5);
  sub_100CB21D0(v7);
  return sub_1000095E8(v9, &qword_1011BBA48);
}

void sub_100CAEC20()
{
  _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v2 = (&v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011BBA48);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v4 = &v73 - v3;
  __chkstk_darwin();
  v6 = &v73 - v5;
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v73 - v10;
  v12 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText + 8);
  if (v12)
  {
    v82 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText);
    v13 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
    if (v13)
    {
      v14 = OBJC_IVAR___MusicDespacitoContentView_language;
      swift_beginAccess();
      sub_100CB2098(v0 + v14, v11);
      v79 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
      v15 = v6;
      v16 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8);
      v17 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
      swift_beginAccess();
      v81 = v15;
      sub_100CB2098(v0 + v17, v15);
      sub_100CB2098(v11, v4);
      v18 = OBJC_IVAR___MusicDespacitoContentView_language;
      swift_beginAccess();

      v19 = v13;

      sub_100CB2678(v4, v13 + v18);
      swift_endAccess();
      v20 = &v19[OBJC_IVAR___MusicDespacitoContentView_text];
      *v20 = v82;
      v20[1] = v12;

      sub_100CAE93C();
      v21 = type metadata accessor for Locale.Language();
      v80 = *(*(v21 - 8) + 56);
      v80(v4, 1, 1, v21);
      v22 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
      swift_beginAccess();
      sub_100CB2678(v4, &v19[v22]);
      swift_endAccess();
      v23 = &v19[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
      *v23 = 0;
      v23[1] = 0;

      sub_100CAFEF0();
      if (v16)
      {
        v24 = String.lowercased()();

        v82 = v16;
        v25 = String.lowercased()();
        if (v24._countAndFlagsBits != v25._countAndFlagsBits || v24._object != v25._object)
        {
          v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v26 = v81;
          if ((v65 & 1) == 0)
          {
            sub_100CB2098(v81, v4);
            v67 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
            swift_beginAccess();
            sub_100CB2678(v4, &v19[v67]);
            swift_endAccess();
            v68 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
            v69 = v82;
            *v68 = v79;
            v68[1] = v69;
            goto LABEL_9;
          }

LABEL_8:
          v80(v4, 1, 1, v21);
          v27 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
          swift_beginAccess();
          sub_100CB2678(v4, &v19[v27]);
          swift_endAccess();
          v28 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v28 = 0;
          v28[1] = 0;
LABEL_9:

          sub_100CAF704();
          sub_100CAF658(0, 0);
          v29 = &v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
          *v29 = 0;
          v29[1] = 0;

          sub_100CAEC20(v30);
          v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
          [v19 setNeedsLayout];

          sub_1000095E8(v26, &qword_1011BBA48);
          sub_1000095E8(v11, &qword_1011BBA48);
          return;
        }
      }

      v26 = v81;
      goto LABEL_8;
    }

    v79 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView;
    v33 = OBJC_IVAR___MusicDespacitoContentView_language;
    v34 = v7;
    v35 = v8;
    v74 = v8;
    swift_beginAccess();
    sub_100CB2098(v0 + v33, v35);
    v36 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8);
    v73 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
    v77 = v36;
    v37 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
    swift_beginAccess();
    v81 = v34;
    sub_100CB2098(v0 + v37, v34);
    v80 = v0;
    memcpy(v85, v0 + OBJC_IVAR___MusicDespacitoContentView_specs, 0x2B0uLL);
    v78 = _s20DespacitoContentViewCMa(0);
    v38 = objc_allocWithZone(v78);
    v38[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
    *&v38[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
    *&v38[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
    *&v38[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
    v39 = OBJC_IVAR___MusicDespacitoContentView_language;
    v75 = OBJC_IVAR___MusicDespacitoContentView_language;
    v40 = type metadata accessor for Locale.Language();
    v41 = *(*(v40 - 8) + 56);
    v41(&v38[v39], 1, 1, v40);
    v76 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
    v38[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
    v42 = &v38[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
    *v42 = 0;
    v42[1] = 0;
    v43 = &v38[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
    *v43 = 0;
    v43[1] = 0;
    v38[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
    v41(&v38[OBJC_IVAR___MusicDespacitoContentView_translationLanguage], 1, 1, v40);
    v44 = &v38[OBJC_IVAR___MusicDespacitoContentView_translationText];
    *v44 = 0;
    v44[1] = 0;
    v38[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
    v41(&v38[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v40);
    v45 = &v38[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
    *v45 = 0;
    v45[1] = 0;
    v46 = v74;
    sub_100CB2098(v74, v4);
    v47 = *(sub_10010FC20(&qword_1011BD090) + 48);
    v48 = v82;
    *v2 = v82;
    v2[1] = v12;
    sub_100CB2098(v4, v2 + v47);
    v49 = v48;
    swift_storeEnumTagMultiPayload();
    v50 = objc_allocWithZone(_s15TextContentViewCMa(0));

    sub_1002AD8C8(v85, v84);

    sub_1002AD8C8(v85, v84);
    v51 = v77;

    v52 = sub_100CB2284(v2, v85, 0);
    sub_100C9C2C4(v85);
    sub_1000095E8(v4, &qword_1011BBA48);
    *&v38[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v52;
    memcpy(&v38[OBJC_IVAR___MusicDespacitoContentView_specs], v85, 0x2B0uLL);
    v53 = &v38[OBJC_IVAR___MusicDespacitoContentView_text];
    *v53 = v49;
    v53[1] = v12;
    v54 = v75;
    swift_beginAccess();

    sub_1002AD8C8(v85, v84);
    sub_100CB2608(v46, &v38[v54]);
    swift_endAccess();
    v38[v76] = 2;
    v83.receiver = v38;
    v83.super_class = v78;
    v55 = objc_msgSendSuper2(&v83, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v56 = *&v55[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
    v57 = v55;
    [v57 addSubview:v56];
    if (v51)
    {
      v58 = String.lowercased()();

      v59 = v73;
      v60 = String.lowercased()();
      if (v58._countAndFlagsBits == v60._countAndFlagsBits && v58._object == v60._object)
      {
      }

      else
      {
        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v66 & 1) == 0)
        {
          sub_100CB2098(v81, v4);
          v70 = v51;
          v71 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
          swift_beginAccess();
          sub_100CB2678(v4, &v57[v71]);
          swift_endAccess();
          v72 = &v57[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v72 = v59;
          *(v72 + 1) = v70;

          sub_100CAF704();
          goto LABEL_20;
        }
      }
    }

LABEL_20:
    v61 = &v57[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
    *v61 = 0;
    *(v61 + 1) = 0;

    sub_100CAEC20(v62);

    sub_100C9C2C4(v85);
    sub_1000095E8(v81, &qword_1011BBA48);
    sub_1000095E8(v46, &qword_1011BBA48);
    v57[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 0;
    sub_100CAE130();
    v63 = v80;
    [v80 addSubview:v57];
    v64 = *(v63 + v79);
    *(v63 + v79) = v57;

    return;
  }

  v31 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView;
  v32 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v32)
  {
    [v32 removeFromSuperview];
    v32 = *(v0 + v31);
  }

  *(v0 + v31) = 0;
}

void sub_100CAF658(uint64_t a1, uint64_t a2)
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

    sub_100CAF704();
  }
}

void sub_100CAF704()
{
  sub_10010FC20(&qword_1011BD088);
  __chkstk_darwin();
  v2 = &v56 - v1;
  v67 = _s15TextContentViewC7ContentOMa(0);
  v65 = *(v67 - 8);
  __chkstk_darwin();
  v66 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v56 - v4;
  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BBA48);
  __chkstk_darwin();
  v11 = &v56 - v10;
  sub_10010FC20(&qword_1011BBA50);
  __chkstk_darwin();
  v13 = &v56 - v12;
  v14 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText + 8];
  if (!v14 || *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText] == *&v0[OBJC_IVAR___MusicDespacitoContentView_text] && v14 == *&v0[OBJC_IVAR___MusicDespacitoContentView_text + 8] || (v64 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
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
  sub_10010FC20(&unk_1011BD910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  v60 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v62 = inited + 32;
  v18 = sub_100009F78(0, &qword_1011BD920);
  v61 = v16;
  *(inited + 40) = v16;
  *(inited + 64) = v18;
  *(inited + 72) = NSLanguageIdentifierAttributeName;
  v59 = NSLanguageIdentifierAttributeName;
  v19 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  sub_100CB2098(&v0[v19], v11);
  if ((*(v7 + 48))(v11, 1, v6))
  {
    v20 = v61;
    v21 = v61;

    v22 = v60;
    v23 = v59;
    sub_1000095E8(v11, &qword_1011BBA48);
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
  sub_1000095E8(v11, &qword_1011BBA48);
  Locale.Language.languageCode.getter();
  (*(v7 + 8))(v9, v6);
  v28 = type metadata accessor for Locale.LanguageCode();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v13, 1, v28) == 1)
  {
    sub_1000095E8(v13, &qword_1011BBA50);
    v0 = v57;
    v20 = v24;
    goto LABEL_13;
  }

  v54 = Locale.LanguageCode.identifier.getter();
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
  sub_100C76B50(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011BC080);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(NSAttributedString);
  v33 = String._bridgeToObjectiveC()();

  _s3__C3KeyVMa_2(0);
  sub_100CB222C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

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
    sub_100CB2108(v37 + v40, v66);
    swift_beginAccess();
    v42 = v37;
    v43 = v35;
    sub_100CB216C(v38, v37 + v40);
    swift_endAccess();
    v44 = sub_100C7CAC8(&off_1010F32B0);
    v45 = v58;
    sub_100CB2108(v41, v58);
    (*(v65 + 56))(v45, 0, 1, v39);
    sub_100CACDE8(v44);

    sub_1000095E8(v45, &qword_1011BD088);

    sub_100CB21D0(v41);
    sub_100CB21D0(v38);
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
    sub_1002AD8C8(v69, &v68);
    v49 = v46;
    v50 = v47;
    v51 = v0;
    v52 = sub_100CB2284(v50, v69, v46);

    sub_100C9C2C4(v69);
    [v51 addSubview:v52];

    v53 = *&v51[v36];
    *&v51[v36] = v52;

    v51[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 0;
  }
}

void sub_100CAFEF0()
{
  sub_10010FC20(&qword_1011BD088);
  __chkstk_darwin();
  v2 = &v52 - v1;
  v3 = _s15TextContentViewC7ContentOMa(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v52 - v7;
  v9 = type metadata accessor for Locale.Language();
  v62 = *(v9 - 8);
  __chkstk_darwin();
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BBA48);
  __chkstk_darwin();
  v12 = &v52 - v11;
  sub_10010FC20(&qword_1011BBA50);
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
  sub_10010FC20(&unk_1011BD910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = NSFontAttributeName;
  v58 = inited + 32;
  v53 = &v0[OBJC_IVAR___MusicDespacitoContentView_specs];
  v16 = *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + 312];
  v17 = sub_100009F78(0, &qword_1011BD920);
  *(inited + 40) = v16;
  *(inited + 64) = v17;
  *(inited + 72) = NSLanguageIdentifierAttributeName;
  v18 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
  swift_beginAccess();
  v19 = &v0[v18];
  v20 = v0;
  sub_100CB2098(v19, v12);
  if ((*(v62 + 48))(v12, 1, v9))
  {

    v21 = NSFontAttributeName;
    v22 = v16;
    v23 = NSLanguageIdentifierAttributeName;
    sub_1000095E8(v12, &qword_1011BBA48);
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
  sub_1000095E8(v12, &qword_1011BBA48);
  Locale.Language.languageCode.getter();
  (*(v25 + 8))(v26, v9);
  v30 = type metadata accessor for Locale.LanguageCode();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v14, 1, v30) == 1)
  {
    sub_1000095E8(v14, &qword_1011BBA50);
    v24 = v61;
    v20 = v52;
    goto LABEL_7;
  }

  v50 = Locale.LanguageCode.identifier.getter();
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
  sub_100C76B50(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011BC080);
  swift_arrayDestroy();
  v34 = objc_allocWithZone(NSAttributedString);
  v35 = String._bridgeToObjectiveC()();

  _s3__C3KeyVMa_2(0);
  sub_100CB222C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

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
    sub_100CB2108(v39 + v41, v55);
    swift_beginAccess();
    v43 = v39;
    v44 = v37;
    sub_100CB216C(v24, v39 + v41);
    swift_endAccess();
    v45 = sub_100C7CAC8(&off_1010F3288);
    v46 = v56;
    sub_100CB2108(v42, v56);
    (*(v54 + 56))(v46, 0, 1, v40);
    sub_100CACDE8(v45);

    sub_1000095E8(v46, &qword_1011BD088);

    sub_100CB21D0(v42);
    sub_100CB21D0(v24);
  }

  else
  {
    memcpy(v65, v53, 0x2B0uLL);
    *v24 = v37;
    swift_storeEnumTagMultiPayload();
    objc_allocWithZone(_s15TextContentViewCMa(0));
    v47 = v37;
    sub_1002AD8C8(v65, &v64);
    v48 = sub_100CB2284(v24, v65, 0);
    sub_100C9C2C4(v65);
    [v20 addSubview:v48];

    v49 = *&v20[v38];
    *&v20[v38] = v48;

    v20[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 0;
  }
}

id sub_100CB0678(void *a1)
{
  [a1 setAlpha:0.0];
  CGAffineTransformMakeTranslation(&v3, 0.0, -20.0);
  return [a1 setTransform:&v3];
}

uint64_t sub_100CB06E4()
{
  v81.receiver = v0;
  v81.super_class = _s20DespacitoContentViewCMa(0);
  objc_msgSendSuper2(&v81, "layoutSubviews");
  v80 = Int.seconds.getter(0);
  v73 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
  v1 = v0[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition];
  if (v1 != 2 && (v1 & 1) == 0)
  {
    sub_100CB0F18(v0, &v80);
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
        *(v39 + 16) = sub_100CB309C;
        *(v39 + 24) = v38;
        v78 = sub_10018A020;
        v79 = v39;
        aBlock = _NSConcreteStackBlock;
        v75 = 1107296256;
        v76 = sub_100029B9C;
        v77 = &unk_1010F6FE8;
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
        v26 = sub_100CB309C;
      }

      swift_unknownObjectWeakInit();
      v44 = swift_allocObject();
      v45 = v24 & 1;
      *(v44 + 16) = v45;
      *(v44 + 24) = v15;
      v46 = v15;
      sub_100CB29B8(v46, v45, sub_100CB307C, v44);

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

          sub_100CB29B8(v49, v58 & 1, sub_100CB26E8, v69);

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
        *(v64 + 16) = sub_100CB326C;
        *(v64 + 24) = v63;
        v78 = sub_100029B94;
        v79 = v64;
        aBlock = _NSConcreteStackBlock;
        v75 = 1107296256;
        v76 = sub_100029B9C;
        v77 = &unk_1010F6F48;
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
          v60 = sub_100CB326C;
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
    sub_100CB0F18(v0, &v80);
    v27 = v71;
  }

  sub_100020438(v27);
  return sub_100020438(v60);
}

uint64_t sub_100CB0F18(uint64_t result, double *a2)
{
  v2 = *(result + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v2)
  {
    v4 = result;
    v5 = v2;
    [v4 bounds];
    sub_100CAE740(*(*&v4[OBJC_IVAR___MusicDespacitoContentView_mainLineView] + OBJC_IVAR___MusicTextContentView_isSelected), v6, v7);
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

void sub_100CB10C4(char a1)
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

void sub_100CB1174(char **a1@<X8>)
{
  v77 = a1;
  v74 = _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v3 = (&v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011BBA48);
  __chkstk_darwin();
  v79 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v65 - v5;
  __chkstk_darwin();
  v8 = &v65 - v7;
  __chkstk_darwin();
  v10 = &v65 - v9;
  v84 = &v65 - v9;
  v11 = *&v1[OBJC_IVAR___MusicDespacitoContentView_text + 8];
  v82 = *&v1[OBJC_IVAR___MusicDespacitoContentView_text];
  v70 = v11;
  v12 = OBJC_IVAR___MusicDespacitoContentView_language;
  swift_beginAccess();
  sub_100CB2098(&v1[v12], v10);
  v13 = *&v1[OBJC_IVAR___MusicDespacitoContentView_transliterationText + 8];
  v66 = *&v1[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  v72 = v13;
  v14 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
  swift_beginAccess();
  v78 = v8;
  sub_100CB2098(&v1[v14], v8);
  v15 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationText + 8];
  v67 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationText];
  v68 = v15;
  v16 = *&v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText + 8];
  v80 = *&v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
  v85 = v16;
  v73 = v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition];
  v17 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8];
  v65 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
  v83 = v17;
  v18 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  v76 = v6;
  sub_100CB2098(&v1[v18], v6);
  v75 = v1;
  memcpy(v88, &v1[OBJC_IVAR___MusicDespacitoContentView_specs], 0x2B0uLL);
  v81 = _s20DespacitoContentViewCMa(0);
  v19 = objc_allocWithZone(v81);
  v19[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
  v20 = OBJC_IVAR___MusicDespacitoContentView_language;
  v69 = OBJC_IVAR___MusicDespacitoContentView_language;
  v21 = type metadata accessor for Locale.Language();
  v22 = *(*(v21 - 8) + 56);
  v22(&v19[v20], 1, 1, v21);
  v71 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
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
  v27 = v68;
  v22(&v19[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v26);
  v28 = v70;
  v29 = &v19[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  *v29 = 0;
  v29[1] = 0;
  v30 = v79;
  sub_100CB2098(v84, v79);
  v31 = *(sub_10010FC20(&qword_1011BD090) + 48);
  v32 = v82;
  v33 = v3;
  *v3 = v82;
  v3[1] = v28;
  v34 = v3 + v31;
  v35 = v30;
  sub_100CB2098(v30, v34);
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(_s15TextContentViewCMa(0));
  swift_bridgeObjectRetain_n();
  sub_1002AD8C8(v88, v87);

  v36 = v72;

  v37 = sub_100CB2284(v33, v88, 0);
  sub_1000095E8(v35, &qword_1011BBA48);
  *&v19[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v37;
  memcpy(&v19[OBJC_IVAR___MusicDespacitoContentView_specs], v88, 0x2B0uLL);
  v38 = &v19[OBJC_IVAR___MusicDespacitoContentView_text];
  *v38 = v32;
  v38[1] = v28;
  v39 = v69;
  swift_beginAccess();

  sub_1002AD8C8(v88, v87);
  sub_100CB2608(v84, &v19[v39]);
  swift_endAccess();
  v19[v71] = v73;
  v86.receiver = v19;
  v86.super_class = v81;
  v40 = objc_msgSendSuper2(&v86, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v41 = *&v40[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
  v42 = v40;
  [v42 addSubview:v41];
  if (v36)
  {
    v43 = v27;
    v44 = String.lowercased()();
    v45 = String.lowercased()();
    if (v44._countAndFlagsBits == v45._countAndFlagsBits && v44._object == v45._object)
    {
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v46)
      {
      }

      else
      {
        v47 = v79;
        sub_100CB2098(v78, v79);
        v48 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
        swift_beginAccess();
        sub_100CB2678(v47, &v42[v48]);
        swift_endAccess();
        v49 = &v42[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
        *v49 = v66;
        *(v49 + 1) = v36;

        sub_100CAFEF0();
      }
    }

    v27 = v43;
  }

  if (!v27)
  {

    v52 = v76;
    if (!v83)
    {
      goto LABEL_27;
    }

LABEL_19:
    if (v85)
    {
      v57 = String.lowercased()();
      v58 = String.lowercased()();
      if (v57._countAndFlagsBits == v58._countAndFlagsBits && v57._object == v58._object)
      {

        goto LABEL_27;
      }

      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v59 & 1) == 0)
      {
        sub_100CAF658(v65, v83);
        goto LABEL_27;
      }
    }

    goto LABEL_27;
  }

  v50 = String.lowercased()();

  v51 = String.lowercased()();
  v52 = v76;
  if (v50._countAndFlagsBits == v51._countAndFlagsBits && v50._object == v51._object)
  {

    goto LABEL_16;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
LABEL_16:

    if (!v83)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v54 = v79;
  sub_100CB2098(v52, v79);
  v55 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  sub_100CB2678(v54, &v42[v55]);
  swift_endAccess();
  v56 = &v42[OBJC_IVAR___MusicDespacitoContentView_translationText];
  *v56 = v67;
  *(v56 + 1) = v27;

  sub_100CAF704();
  if (v83)
  {
    goto LABEL_19;
  }

LABEL_27:
  v60 = &v42[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
  v61 = v85;
  *v60 = v80;
  *(v60 + 1) = v61;

  sub_100CAEC20();

  sub_100C9C2C4(v88);
  sub_1000095E8(v52, &qword_1011BBA48);
  sub_1000095E8(v78, &qword_1011BBA48);
  sub_1000095E8(v84, &qword_1011BBA48);
  v62 = OBJC_IVAR___MusicDespacitoContentView_mainLineView;
  v63 = v75;
  sub_100CAE668(*(*&v75[OBJC_IVAR___MusicDespacitoContentView_mainLineView] + OBJC_IVAR___MusicTextContentView_isSelected), 0);
  sub_100CAE394(*(*&v63[v62] + OBJC_IVAR___MusicTextContentView_alignment));
  [v63 bounds];
  [v42 setFrame:?];

  v64 = v77;
  v77[3] = v81;
  *v64 = v42;
}

uint64_t sub_100CB1A9C(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v7);

  sub_10000954C(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000959C(v7);
  return v5;
}

id sub_100CB1B4C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100CB1D38()
{
  sub_100C95D2C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100CB1E30()
{
  sub_100CB1EB4();
  if (v0 <= 0x3F)
  {
    sub_100009F78(319, &qword_1011BC568);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100CB1EB4()
{
  if (!qword_1011BD050)
  {
    sub_1001109D0(&qword_1011BBA48);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1011BD050);
    }
  }
}

unint64_t sub_100CB1F2C()
{
  result = qword_1011BD080;
  if (!qword_1011BD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BD080);
  }

  return result;
}

uint64_t sub_100CB1F80(const void *a1)
{
  v3 = *v1;
  memcpy(__dst, (v3 + OBJC_IVAR___MusicDespacitoContentView_specs), sizeof(__dst));
  memcpy((v3 + OBJC_IVAR___MusicDespacitoContentView_specs), a1, 0x2B0uLL);
  sub_1002AD8C8(a1, &v5);
  sub_100C9C2C4(__dst);
  sub_100CADD80();
  return sub_100C9C2C4(a1);
}

uint64_t sub_100CB2098(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BBA48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100CB2108(uint64_t a1, uint64_t a2)
{
  v4 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100CB216C(uint64_t a1, uint64_t a2)
{
  v4 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100CB21D0(uint64_t a1)
{
  v2 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100CB222C()
{
  result = qword_1011BD930;
  if (!qword_1011BD930)
  {
    _s3__C3KeyVMa_2(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BD930);
  }

  return result;
}

char *sub_100CB2284(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a3;
  v6 = _s15TextContentViewC7ContentOMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BD088);
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
  sub_100CB2108(a1, &v3[OBJC_IVAR___MusicTextContentView_content]);
  memcpy(&v3[OBJC_IVAR___MusicTextContentView_specs], a2, 0x2B0uLL);
  v15 = v27;
  *&v3[v14] = v27;
  sub_1002AD8C8(a2, &v29);
  v16 = _s15TextContentViewCMa(0);
  v28.receiver = v3;
  v28.super_class = v16;
  v17 = v15;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = sub_100C7CAC8(&off_1010F30F8);
  (*(v7 + 56))(v11, 1, 1, v6);
  v20 = v18;
  sub_100CACDE8(v19);
  v21 = a1;

  sub_1000095E8(v11, &qword_1011BD088);
  sub_100CB2108(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100CB21D0(v9);
    v22 = off_1011BC000;
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

    v25 = *(sub_10010FC20(&qword_1011BD090) + 48);
    [v23 setTextAlignment:v24];
    sub_1000095E8(&v9[v25], &qword_1011BBA48);
    v22 = off_1011BC000;
  }

  [v20 addSubview:{*(v22[472] + v20), v27}];

  sub_100CB21D0(v21);
  return v20;
}

uint64_t sub_100CB2608(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BBA48);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100CB2678(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BBA48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100CB26F4()
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
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100CB2820()
{
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_isScrolling) = 1;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationLineView) = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView) = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView) = 0;
  v1 = OBJC_IVAR___MusicDespacitoContentView_language;
  v2 = type metadata accessor for Locale.Language();
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
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100CB29B8(id a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_100009F78(0, &qword_1011BD500);
    v7.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:130.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v36 = sub_100C9E28C;
    v37 = v8;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10002BC98;
    v35 = &unk_1010F7038;
    v9 = _Block_copy(&v32);
    v10 = a1;

    [(objc_class *)v7.super.isa addAnimations:v9];
    _Block_release(v9);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v36 = sub_1001D3174;
    v37 = v11;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_100338AB8;
    v35 = &unk_1010F7088;
    v12 = _Block_copy(&v32);

    [(objc_class *)v7.super.isa addCompletion:v12];
    _Block_release(v12);
    v13 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.14 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    v36 = sub_1001D2724;
    v37 = v14;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10002BC98;
    v35 = &unk_1010F70D8;
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
  *(v21 + 16) = sub_100CB30B8;
  *(v21 + 24) = v20;
  v36 = sub_10018A020;
  v37 = v21;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100029B9C;
  v35 = &unk_1010F7150;
  v22 = _Block_copy(&v32);
  v23 = a1;

  [v19 performWithoutAnimation:v22];
  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    sub_100009F78(0, &qword_1011BD500);
    v7.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v36 = sub_1005EB424;
    v37 = v24;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10002BC98;
    v35 = &unk_1010F71A0;
    v25 = _Block_copy(&v32);
    v26 = v23;

    [(objc_class *)v7.super.isa addAnimations:v25];
    _Block_release(v25);
    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;
    v36 = sub_100029B6C;
    v37 = v27;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_100338AB8;
    v35 = &unk_1010F71F0;
    v28 = _Block_copy(&v32);

    [(objc_class *)v7.super.isa addCompletion:v28];
    _Block_release(v28);
    v13 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.4 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v18;
    v36 = sub_100CB30C0;
    v37 = v29;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10002BC98;
    v35 = &unk_1010F7240;
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

id sub_100CB307C()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) removeFromSuperview];
  }

  return result;
}

uint64_t sub_100CB30D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BBA48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100CB3144()
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

unint64_t sub_100CB31F0()
{
  result = qword_1011BD098;
  if (!qword_1011BD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BD098);
  }

  return result;
}

uint64_t sub_100CB3298@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  return sub_100008FE4(v1 + v3, a1);
}

id sub_100CB32F0()
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

void sub_100CB33A0(void *a1)
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
  sub_10010FC20(&qword_1011BD520);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100EBDC10;
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
  sub_100009F78(0, &qword_1011BD128);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];
}

void (*sub_100CB3680(uint64_t a1))(__int128 *a1, char a2)
{
  v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_100CB36DC;
}

void sub_100CB36DC(__int128 *a1, char a2)
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
    sub_100CB33A0(v8);
  }

  else
  {
    sub_100CB33A0(v8);
  }
}

id sub_100CB3774()
{
  v1 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView;
  v2 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView];
  }

  else
  {
    v4 = sub_100CB37D8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100CB37D8(char *a1)
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
  sub_10010FC20(&qword_1011BD520);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBDC10;
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
  sub_100009F78(0, &qword_1011BD128);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:isa];

  return v2;
}

id sub_100CB3BD8(char a1)
{
  v2 = a1 & 1;
  result = [v1 isHighlighted];
  if (result == v2)
  {
    return result;
  }

  v4 = sub_100CB3774();
  if ([v1 isHighlighted])
  {
    v5 = &v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius];
    *v5 = *&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius];
    v5[8] = 0;
    v6 = 0.0;
LABEL_6:
    sub_100CB4888(1, v6);
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
  v20 = sub_100CC3404(v12);
  v21 = objc_opt_self();
  v36 = sub_100CBC2E4;
  v37 = v7;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10002BC98;
  v35 = &unk_1010F75B8;
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
  v36 = sub_100CBC2EC;
  v37 = v8;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10002BC98;
  v35 = &unk_1010F75E0;
  v31 = _Block_copy(&v32);

  [v21 _animateUsingSpringWithDuration:0 delay:v31 options:0 mass:v24 stiffness:v17 damping:v26 initialVelocity:v28 animations:v30 completion:0.0];

  swift_unknownObjectRelease();
  _Block_release(v31);
}

void sub_100CB3F84(void *a1, char *a2)
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

id sub_100CB4048(char *a1, void *a2)
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

void sub_100CB42B0()
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
  v8 = sub_100CB3680(v17);
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
  sub_100CB43DC(0, 0);
}

void sub_100CB43DC(char a1, void *a2)
{
  if ([v2 isSelected] != (a1 & 1))
  {
    if ((a1 & 1) != 0 && v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused] == 1)
    {
      sub_100CB4CB0(0, a2 != 0);
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
      v8 = sub_100CBC304;
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
            v29 = xmmword_100EBEF30;
            v28 = xmmword_100EBEF40;
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
      v8 = sub_100CBC150;
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    v32 = v8;
    v33 = v7;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v31 = sub_10002BC98;
    *(&v31 + 1) = &unk_1010F7518;
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

void sub_100CB4778(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v4 = xmmword_100EBEF30;
      v5 = xmmword_100EBEF40;
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

void sub_100CB4888(char a1, double a2)
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
        v9 = String._bridgeToObjectiveC()();
        v10 = [objc_opt_self() animationWithKeyPath:v9];

        v11 = v10;
        v12 = 0.0;
        if (a1)
        {
          [v36 duration];
        }

        [v11 setDuration:v12];
        [v11 setFillMode:kCAFillModeBoth];
        isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v11 setFromValue:isa];

        v14 = CGFloat._bridgeToObjectiveC()().super.super.isa;
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
        aBlock[4] = sub_100CBC308;
        aBlock[5] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002BC98;
        aBlock[3] = &unk_1010F74A0;
        v32 = _Block_copy(aBlock);
        v33 = v2;

        [v30 setCompletionBlock:v32];
        _Block_release(v32);
        v34 = [v33 layer];
        v35 = String._bridgeToObjectiveC()();
        [v34 addAnimation:v11 forKey:v35];

        [v30 commit];
        *&v2[v6] = a2;
        return;
      }
    }

    v5 = v36;
  }
}

void sub_100CB4CB0(char a1, char a2)
{
  if ([v2 isSelected])
  {
    return;
  }

  v5 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter;
  if (!*&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter])
  {
    v6 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorBrightness];
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v6 setValue:isa forKey:kCAFilterInputAmount];

    v8 = [v2 layer];
    sub_10010FC20(&qword_1011BC168);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100EBDC20;
    v10 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter];
    v11 = sub_100009F78(0, &qword_1011BC578);
    *(v9 + 32) = v10;
    *(v9 + 88) = v11;
    *(v9 + 56) = v11;
    *(v9 + 64) = v6;
    v12 = v10;
    v13 = v6;
    v14 = Array._bridgeToObjectiveC()().super.isa;

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
        v20 = String._bridgeToObjectiveC()();
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
        sub_10000954C(aBlock, &type metadata for Int);
        v25 = _bridgeAnythingToObjectiveC<A>(_:)();
        sub_10000959C(aBlock);
        [v22 setFromValue:v25];
        swift_unknownObjectRelease();
        v53 = &type metadata for Int;
        aBlock[0] = a1 & 1;
        sub_10000954C(aBlock, &type metadata for Int);
        v26 = _bridgeAnythingToObjectiveC<A>(_:)();
        sub_10000959C(aBlock);
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
        v54 = sub_100CBC134;
        v55 = v43;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002BC98;
        v53 = &unk_1010F7450;
        v44 = _Block_copy(aBlock);
        v45 = v2;

        [v42 setCompletionBlock:v44];
        _Block_release(v44);
        v46 = [v45 layer];
        v47 = String._bridgeToObjectiveC()();
        [v46 addAnimation:v22 forKey:v47];

        [v42 commit];
        v48 = [v45 layer];
        v49 = [v22 toValue];
        v50 = String._bridgeToObjectiveC()();
        [v48 setValue:v49 forKeyPath:v50];

        swift_unknownObjectRelease();
        v2[v17] = a1 & 1;
        return;
      }
    }

    v16 = v51;
  }
}

void sub_100CB52E0(void *a1)
{
  v1 = [a1 layer];
  [v1 setShouldRasterize:1];
}

void sub_100CB5338()
{
  sub_10010FC20(&qword_1011BD088);
  __chkstk_darwin();
  v680 = &v627 - v1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v678 = &v627 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v693 = type metadata accessor for String.LocalizationValue();
  v697 = *(v693 - 1);
  __chkstk_darwin();
  v692 = &v627 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v627 - v4;
  v690 = _s15TextContentViewC7ContentOMa(0);
  v679 = *(v690 - 1);
  __chkstk_darwin();
  v660 = (&v627 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v689 = (&v627 - v7);
  v695 = type metadata accessor for Lyrics.Translation.Line(0);
  v696 = *(v695 - 1);
  __chkstk_darwin();
  *&v691 = &v627 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BD900);
  __chkstk_darwin();
  v676 = &v627 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v661 = &v627 - v10;
  __chkstk_darwin();
  v675 = &v627 - v11;
  __chkstk_darwin();
  v667 = &v627 - v12;
  __chkstk_darwin();
  v639 = &v627 - v13;
  __chkstk_darwin();
  v666 = &v627 - v14;
  __chkstk_darwin();
  v655 = (&v627 - v15);
  __chkstk_darwin();
  v654 = &v627 - v16;
  __chkstk_darwin();
  v653 = &v627 - v17;
  __chkstk_darwin();
  v648 = &v627 - v18;
  __chkstk_darwin();
  v652 = &v627 - v19;
  __chkstk_darwin();
  v645 = &v627 - v20;
  sub_10010FC20(&qword_1011BD610);
  __chkstk_darwin();
  v674 = &v627 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v627 - v22;
  __chkstk_darwin();
  v665 = &v627 - v24;
  __chkstk_darwin();
  v26 = &v627 - v25;
  __chkstk_darwin();
  v644 = &v627 - v27;
  __chkstk_darwin();
  v643 = &v627 - v28;
  __chkstk_darwin();
  v642 = &v627 - v29;
  __chkstk_darwin();
  v641 = &v627 - v30;
  __chkstk_darwin();
  v659 = &v627 - v31;
  __chkstk_darwin();
  v658 = (&v627 - v32);
  __chkstk_darwin();
  v657 = &v627 - v33;
  __chkstk_darwin();
  v656 = &v627 - v34;
  __chkstk_darwin();
  v685 = (&v627 - v35);
  __chkstk_darwin();
  v631 = &v627 - v36;
  __chkstk_darwin();
  v630 = &v627 - v37;
  __chkstk_darwin();
  v629 = &v627 - v38;
  __chkstk_darwin();
  v628 = &v627 - v39;
  __chkstk_darwin();
  v635 = &v627 - v40;
  __chkstk_darwin();
  v634 = &v627 - v41;
  __chkstk_darwin();
  v633 = &v627 - v42;
  __chkstk_darwin();
  v632 = &v627 - v43;
  __chkstk_darwin();
  v651 = &v627 - v44;
  __chkstk_darwin();
  v650 = &v627 - v45;
  __chkstk_darwin();
  v649 = &v627 - v46;
  __chkstk_darwin();
  v647 = &v627 - v47;
  __chkstk_darwin();
  v646 = &v627 - v48;
  __chkstk_darwin();
  v673 = &v627 - v49;
  sub_10010FC20(&qword_1011BBA48);
  __chkstk_darwin();
  v688 = &v627 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v687 = (&v627 - v51);
  __chkstk_darwin();
  v694 = &v627 - v52;
  __chkstk_darwin();
  v683 = (&v627 - v53);
  __chkstk_darwin();
  v682 = &v627 - v54;
  __chkstk_darwin();
  v686 = (&v627 - v55);
  __chkstk_darwin();
  v663 = &v627 - v56;
  __chkstk_darwin();
  v662 = &v627 - v57;
  __chkstk_darwin();
  v669 = &v627 - v58;
  __chkstk_darwin();
  v671 = &v627 - v59;
  __chkstk_darwin();
  v670 = &v627 - v60;
  __chkstk_darwin();
  v681 = &v627 - v61;
  __chkstk_darwin();
  v677 = &v627 - v62;
  __chkstk_darwin();
  v684 = &v627 - v63;
  __chkstk_darwin();
  v636 = &v627 - v64;
  __chkstk_darwin();
  v638 = &v627 - v65;
  __chkstk_darwin();
  v637 = &v627 - v66;
  __chkstk_darwin();
  v640 = &v627 - v67;
  __chkstk_darwin();
  v698 = &v627 - v68;
  __chkstk_darwin();
  v664 = &v627 - v69;
  __chkstk_darwin();
  v672 = &v627 - v70;
  __chkstk_darwin();
  v668 = &v627 - v71;
  v72 = type metadata accessor for Lyrics.TextLine(0);
  v699 = *(v72 - 1);
  __chkstk_darwin();
  v74 = &v627 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v627 - v75;
  __chkstk_darwin();
  v78 = &v627 - v77;
  sub_100CB32F0();
  v79 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  v700 = v0;
  sub_100008FE4(&v0[v79], v709);
  sub_10010FC20(&qword_1011BBB08);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v696 = v726;
      v699 = [objc_allocWithZone(NSMutableAttributedString) init];
      v89 = v5;
      String.LocalizationValue.init(stringLiteral:)();
      v90 = v697;
      v91 = v5;
      v92 = v693;
      v695 = v697[2];
      v695(v692, v91, v693);
      if (qword_1011BB850 != -1)
      {
        swift_once();
      }

      v93 = qword_10121C0E0;
      v94 = qword_10121C0E0;
      v687 = v93;
      v95 = v94;
      static Locale.current.getter();
      v96 = v95;
      v698 = String.init(localized:table:bundle:locale:comment:)();
      v97 = *(v90 + 8);
      v697 = (v90 + 8);
      v686 = v97;
      (v97)(v89, v92);
      v694 = sub_10010FC20(&unk_1011BD910);
      v98 = swift_allocObject();
      v691 = xmmword_100EBC6B0;
      *(v98 + 16) = xmmword_100EBC6B0;
      *(v98 + 32) = NSFontAttributeName;
      v99 = &v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs];
      v100 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 232];
      v688 = sub_100009F78(0, &qword_1011BD920);
      *(v98 + 64) = v688;
      *(v98 + 40) = v100;
      v685 = NSFontAttributeName;
      v101 = v100;
      sub_100C76B50(v98);
      swift_setDeallocating();
      sub_1000095E8(v98 + 32, &qword_1011BC080);
      swift_deallocClassInstance();
      v102 = objc_allocWithZone(NSAttributedString);
      v103 = String._bridgeToObjectiveC()();

      _s3__C3KeyVMa_2(0);
      v684 = v104;
      v683 = sub_100CB222C();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v106 = [v102 initWithString:v103 attributes:isa];

      v107 = v699;
      v698 = v106;
      [v699 appendAttributedString:v106];
      *&v728[0] = v696;
      String.LocalizationValue.init(stringLiteral:)();
      v108 = v693;
      v695(v692, v89, v693);
      static Locale.current.getter();
      v109 = v99;
      String.init(localized:table:bundle:locale:comment:)();
      (v686)(v89, v108);
      sub_10010FC20(&qword_1011BC1D8);
      sub_100C82CD8();
      BidirectionalCollection<>.joined(separator:)();

      v110 = swift_allocObject();
      *(v110 + 16) = v691;
      *(v110 + 32) = v685;
      v111 = *(v99 + 30);
      *(v110 + 64) = v688;
      *(v110 + 40) = v111;
      v112 = v111;
      sub_100C76B50(v110);
      swift_setDeallocating();
      sub_1000095E8(v110 + 32, &qword_1011BC080);
      swift_deallocClassInstance();
      v113 = objc_allocWithZone(NSAttributedString);
      v114 = String._bridgeToObjectiveC()();

      v115 = Dictionary._bridgeToObjectiveC()().super.isa;

      v116 = [v113 initWithString:v114 attributes:v115];

      [v107 appendAttributedString:v116];
      v117 = &v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      v118 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      if (v118 && (_s15TextContentViewCMa(0), (v119 = swift_dynamicCastClass()) != 0))
      {
        v120 = v119;
        v121 = v689;
        *v689 = v107;
        v696 = v109;
        v122 = v690;
        swift_storeEnumTagMultiPayload();
        v123 = OBJC_IVAR___MusicTextContentView_content;
        swift_beginAccess();
        v697 = v116;
        v124 = v660;
        sub_100CBC0CC(v120 + v123, v660, _s15TextContentViewC7ContentOMa);
        swift_beginAccess();
        v125 = v107;
        v695 = v118;
        sub_100CB216C(v121, v120 + v123);
        swift_endAccess();
        v126 = sub_100C7CAC8(&off_1010F32D8);
        v127 = v680;
        sub_100CBC0CC(v124, v680, _s15TextContentViewC7ContentOMa);
        v128 = v679[7];
        v128(v127, 0, 1, v122);
        sub_100CACDE8(v126);

        sub_1000095E8(v127, &qword_1011BD088);
        v129 = v124;
        v116 = v697;
        sub_100CBC06C(v129, _s15TextContentViewC7ContentOMa);
        sub_100CBC06C(v121, _s15TextContentViewC7ContentOMa);
        v130 = *(v696 + 96);
        if (*(v696 + 104))
        {
          v130 = 4;
        }

        *(v120 + OBJC_IVAR___MusicTextContentView_alignment) = v130;
        v131 = sub_100C7CAC8(&off_1010F3300);
        v128(v127, 1, 1, v122);
        v107 = v699;
        sub_100CACDE8(v131);

        sub_1000095E8(v127, &qword_1011BD088);
        v132 = v700;
      }

      else
      {
        memcpy(v728, v109, 0x2B0uLL);
        v138 = v689;
        v139 = v690;
        *v689 = v107;
        swift_storeEnumTagMultiPayload();
        v140 = objc_allocWithZone(_s15TextContentViewCMa(0));
        v141 = v107;
        sub_1002AD8C8(v728, &v706);
        v142 = sub_100CB2284(v138, v728, 0);
        sub_100C9C2C4(v728);
        v143 = v109[12];
        if (*(v109 + 104))
        {
          v143 = 4;
        }

        *&v142[OBJC_IVAR___MusicTextContentView_alignment] = v143;
        v144 = sub_100C7CAC8(&off_1010F3328);
        v145 = v680;
        (v679[7])(v680, 1, 1, v139);
        sub_100CACDE8(v144);

        sub_1000095E8(v145, &qword_1011BD088);
        v146 = *v117;
        *v117 = v142;
        *(v117 + 1) = &off_1010F6E40;
        v147 = v142;
        v132 = v700;
        sub_100CB33A0(v146);
      }

      [v132 setEnabled:0];

      goto LABEL_300;
    }

    if (!swift_dynamicCast())
    {
LABEL_300:
      sub_10000959C(v709);
      return;
    }

    v133 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
    v134 = v700;
    v135 = &v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v136 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs])
    {
      *v135 = 0;
      v135[1] = 0;
      sub_100CB33A0(v136);
LABEL_271:

      [v134 setEnabled:1];
      goto LABEL_300;
    }

    v206 = v723[0];
    v207 = *&v723[1];
    v208 = v724;
    v209 = v725;
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
        sub_100CAA500();
        v134 = v700;
        v213 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
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
          if (_CocoaArrayWrapper.endIndex.getter())
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
              v223 = (CGRectGetWidth(v732) - v220) * 0.5;
            }

            else
            {
              v223 = v221;
              if (v222 == 2)
              {
                [v211 bounds];
                v223 = CGRectGetWidth(v729) - v220;
              }
            }

            v592 = *&v211[v216];
            if (v592 >> 62)
            {
              v593 = _CocoaArrayWrapper.endIndex.getter();
              if (v593)
              {
LABEL_283:
                if (v593 >= 1)
                {

                  v594 = 0;
                  do
                  {
                    if ((v592 & 0xC000000000000001) != 0)
                    {
                      v595 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      v595 = *(v592 + 8 * v594 + 32);
                    }

                    v596 = v595;
                    ++v594;
                    [v211 bounds];
                    UIView.untransformedFrame.setter(v223, v597 * 0.5 - v219 * 0.5, v219, v219);

                    v223 = v223 + v219 + v218[77];
                  }

                  while (v593 != v594);

                  v134 = v700;
                  goto LABEL_271;
                }

LABEL_310:
                __break(1u);
                goto LABEL_311;
              }
            }

            else
            {
              v593 = *((v592 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v593)
              {
                goto LABEL_283;
              }
            }

            v134 = v700;
            goto LABEL_271;
          }
        }

        else if (*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        sub_100CAC010();
        goto LABEL_58;
      }
    }

    v272 = v700;
    memcpy(v728, &v700[v133], 0x2B0uLL);
    objc_allocWithZone(_s23InstrumentalContentViewCMa());
    sub_1002AD8C8(v728, &v706);
    v273 = sub_100CAA0FC(v206, v209, v728, v207, v208);
    v274 = *&v272[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
    v275 = OBJC_IVAR___MusicInstrumentalContentView_alignment;
    v276 = *&v273[OBJC_IVAR___MusicInstrumentalContentView_alignment];
    *&v273[OBJC_IVAR___MusicInstrumentalContentView_alignment] = v274;
    if (v274 == v276)
    {
      goto LABEL_270;
    }

    v277 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v278 = *&v273[v277];
    if (v278 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_90;
      }
    }

    else if (*((v278 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_90:
      v279 = &v273[OBJC_IVAR___MusicInstrumentalContentView_specs];
      v280 = *&v273[OBJC_IVAR___MusicInstrumentalContentView_specs + 608];
      v281 = v280 * *&v273[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + (*&v273[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + -1.0) * *&v273[OBJC_IVAR___MusicInstrumentalContentView_specs + 616];
      v282 = Int.seconds.getter(0);
      v283 = *&v273[v275];
      if (v283 == 1)
      {
        [v273 bounds];
        v284 = (CGRectGetWidth(v731) - v281) * 0.5;
      }

      else
      {
        v284 = v282;
        if (v283 == 2)
        {
          [v273 bounds];
          v284 = CGRectGetWidth(v730) - v281;
        }
      }

      v572 = *&v273[v277];
      if (v572 >> 62)
      {
        v573 = _CocoaArrayWrapper.endIndex.getter();
        if (!v573)
        {
          goto LABEL_270;
        }
      }

      else
      {
        v573 = *((v572 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v573)
        {
          goto LABEL_270;
        }
      }

      if (v573 < 1)
      {
        __break(1u);
        goto LABEL_310;
      }

      v574 = 0;
      do
      {
        if ((v572 & 0xC000000000000001) != 0)
        {
          v575 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v575 = *(v572 + 8 * v574 + 32);
        }

        v576 = v575;
        ++v574;
        [v273 bounds];
        UIView.untransformedFrame.setter(v284, v577 * 0.5 - v280 * 0.5, v280, v280);

        v284 = v284 + v280 + v279[77];
      }

      while (v573 != v574);

LABEL_270:
      v136 = *v135;
      *v135 = v273;
      v135[1] = &off_1010F6A10;
      v578 = v273;
      v134 = v700;
      sub_100CB33A0(v136);

      goto LABEL_271;
    }

    sub_100CAC010();
    goto LABEL_90;
  }

  v80 = sub_1001EC250(v78, v76);
  v81 = &v76[v72[18]];
  v82 = *v81;
  v680 = *(v81 + 1);
  v83 = (v82)(v710, v80);
  v679 = v82;
  if (!v710[3])
  {
    v137 = 2;
LABEL_26:
    LODWORD(v692) = v137;
    goto LABEL_27;
  }

  v84 = *v710;
  v85 = sub_1000095E8(v710, &qword_1011BBA40);
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
  LODWORD(v692) = 0;
LABEL_27:
  v693 = v72;
  v148 = v72[17];
  v697 = v76;
  v149 = &v76[v148];
  v150 = *v149;
  v151 = *((*v149)(v83) + 16);

  if (!v151 || (v153 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs, (v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] & 1) != 0))
  {
    v154 = &v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v155 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v156 = v700;
    if (v155)
    {
      _s20DespacitoContentViewCMa(0);
      v152 = swift_dynamicCastClass();
      if (v152)
      {
        v157 = v152;
        v158 = v693;
        v159 = v697;
        v160 = *(v697 + v693[16]);
        v690 = v155;
        v694 = v160();
        v689 = v161;
        sub_1000089F8(v159 + v158[7], v686, &qword_1011BBA48);
        v162 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
        swift_beginAccess();
        sub_1000089F8(&v156[v162], v26, &qword_1011BD610);
        v163 = *(v699 + 6);
        if (v163(v26, 1, v158))
        {
          sub_1000095E8(v26, &qword_1011BD610);
          v687 = 0;
          v164 = 0;
        }

        else
        {
          sub_100CBC0CC(v26, v74, type metadata accessor for Lyrics.TextLine);
          v224 = sub_1000095E8(v26, &qword_1011BD610);
          v687 = (*&v74[v158[16]])(v224);
          v164 = v225;
          sub_100CBC06C(v74, type metadata accessor for Lyrics.TextLine);
        }

        v226 = v665;
        sub_1000089F8(&v156[v162], v665, &qword_1011BD610);
        v227 = v163(v226, 1, v158);
        v688 = v164;
        if (v227)
        {
          sub_1000095E8(v226, &qword_1011BD610);
          v228 = type metadata accessor for Locale.Language();
          (*(*(v228 - 8) + 56))(v682, 1, 1, v228);
        }

        else
        {
          sub_1000089F8(v226 + v158[7], v682, &qword_1011BBA48);
          sub_1000095E8(v226, &qword_1011BD610);
        }

        v229 = v695;
        v230 = v666;
        v231 = v667;
        v232 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
        swift_beginAccess();
        sub_1000089F8(&v156[v232], v230, &qword_1011BD900);
        v233 = *(v696 + 48);
        if (v233(v230, 1, v229))
        {
          v234 = sub_1000095E8(v230, &qword_1011BD900);
          v693 = 0;
          v235 = 0;
        }

        else
        {
          v236 = v691;
          sub_100CBC0CC(v230, v691, type metadata accessor for Lyrics.Translation.Line);
          sub_1000095E8(v230, &qword_1011BD900);
          v235 = *(v236 + 8);
          v693 = *v236;

          v234 = sub_100CBC06C(v236, type metadata accessor for Lyrics.Translation.Line);
        }

        v237 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
        if (v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] != 1)
        {
          v238 = 0;
          v699 = 0;
          v685 = 0;
          v696 = 0;
          v239 = v700;
          goto LABEL_153;
        }

        (v679)(v728, v234);
        v238 = *(&v728[1] + 1);
        if (*(&v728[1] + 1))
        {
          v699 = *&v728[1];

          sub_1000095E8(v728, &qword_1011BBA40);
        }

        else
        {
          v699 = 0;
        }

        v239 = v700;
        if (v700[v237] == 1)
        {
          v378 = v639;
          sub_1000089F8(&v700[v232], v639, &qword_1011BD900);
          if (!v233(v378, 1, v695))
          {
            v506 = v378;
            v507 = v691;
            sub_100CBC0CC(v506, v691, type metadata accessor for Lyrics.Translation.Line);
            sub_1000095E8(v639, &qword_1011BD900);
            v508 = *(v507 + 24);
            v685 = *(v507 + 16);
            v696 = v508;

            sub_100CBC06C(v507, type metadata accessor for Lyrics.Translation.Line);
LABEL_153:
            sub_1000089F8(&v239[v232], v231, &qword_1011BD900);
            v379 = v695;
            if (v233(v231, 1, v695))
            {
              sub_1000095E8(v231, &qword_1011BD900);
              v380 = type metadata accessor for Locale.Language();
              (*(*(v380 - 8) + 56))(v683, 1, 1, v380);
            }

            else
            {
              v381 = v691;
              sub_100CBC0CC(v231, v691, type metadata accessor for Lyrics.Translation.Line);
              sub_1000095E8(v231, &qword_1011BD900);
              v382 = *(v379 + 6);
              v383 = type metadata accessor for Locale.Language();
              v384 = *(v383 - 8);
              v385 = v381 + v382;
              v386 = v683;
              (*(v384 + 16))(v683, v385, v383);
              sub_100CBC06C(v381, type metadata accessor for Lyrics.Translation.Line);
              (*(v384 + 56))(v386, 0, 1, v383);
            }

            v387 = v698;
            sub_1000089F8(v686, v698, &qword_1011BBA48);
            v388 = OBJC_IVAR___MusicDespacitoContentView_language;
            swift_beginAccess();
            sub_10006B010(v387, &v157[v388], &qword_1011BBA48);
            swift_endAccess();
            v389 = &v157[OBJC_IVAR___MusicDespacitoContentView_text];
            v390 = v689;
            *v389 = v694;
            v389[1] = v390;

            sub_100CAE93C();
            v391 = v688;
            if (v688)
            {
              v392 = String.lowercased()();
              v393 = String.lowercased()();
              if (v392._countAndFlagsBits == v393._countAndFlagsBits && v392._object == v393._object)
              {
              }

              else
              {
                v394 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v394 & 1) == 0)
                {
                  v489 = v391;
                  v490 = v698;
                  sub_1000089F8(v682, v698, &qword_1011BBA48);
                  v491 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
                  swift_beginAccess();
                  sub_10006B010(v490, &v157[v491], &qword_1011BBA48);
                  swift_endAccess();
                  v492 = &v157[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
                  *v492 = v687;
                  v492[1] = v489;
LABEL_163:

                  sub_100CAFEF0();
                  if (v235)
                  {
                    v399 = String.lowercased()();

                    v400 = String.lowercased()();
                    if (v399._countAndFlagsBits == v400._countAndFlagsBits && v399._object == v400._object)
                    {
                    }

                    else
                    {
                      v401 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v401 & 1) == 0)
                      {
                        v493 = v698;
                        sub_1000089F8(v683, v698, &qword_1011BBA48);
                        v494 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                        swift_beginAccess();
                        sub_10006B010(v493, &v157[v494], &qword_1011BBA48);
                        swift_endAccess();
                        v495 = &v157[OBJC_IVAR___MusicDespacitoContentView_translationText];
                        *v495 = v693;
                        v495[1] = v235;
                        v402 = v700;
LABEL_170:
                        v407 = v699;
                        v408 = v696;

                        sub_100CAF704();
                        if (v408)
                        {
                          if (v238)
                          {
                            v409 = String.lowercased()();
                            v410 = String.lowercased()();
                            if (v409._countAndFlagsBits == v410._countAndFlagsBits && v409._object == v410._object)
                            {
                            }

                            else
                            {
                              v411 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if ((v411 & 1) == 0)
                              {
                                sub_100CAF658(v685, v408);
                                v402 = v700;
                                goto LABEL_179;
                              }
                            }

                            v402 = v700;
                          }

                          else
                          {
                          }
                        }

                        sub_100CAF658(0, 0);
LABEL_179:
                        v412 = &v157[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
                        *v412 = v407;
                        v412[1] = v238;

                        sub_100CAEC20();
                        v157[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = v692;
                        [v157 setNeedsLayout];

                        sub_1000095E8(v683, &qword_1011BBA48);
                        sub_1000095E8(v682, &qword_1011BBA48);
                        sub_1000095E8(v686, &qword_1011BBA48);
                        sub_100CAE394(*&v402[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment]);

LABEL_299:
                        [v402 setEnabled:1];
                        sub_100CBC06C(v697, type metadata accessor for Lyrics.TextLine);
                        goto LABEL_300;
                      }
                    }
                  }

                  v402 = v700;
                  v403 = type metadata accessor for Locale.Language();
                  v404 = v698;
                  (*(*(v403 - 8) + 56))(v698, 1, 1, v403);
                  v405 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                  swift_beginAccess();
                  sub_10006B010(v404, &v157[v405], &qword_1011BBA48);
                  swift_endAccess();
                  v406 = &v157[OBJC_IVAR___MusicDespacitoContentView_translationText];
                  *v406 = 0;
                  v406[1] = 0;
                  goto LABEL_170;
                }
              }
            }

            v395 = type metadata accessor for Locale.Language();
            v396 = v698;
            (*(*(v395 - 8) + 56))(v698, 1, 1, v395);
            v397 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
            swift_beginAccess();
            sub_10006B010(v396, &v157[v397], &qword_1011BBA48);
            swift_endAccess();
            v398 = &v157[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
            *v398 = 0;
            v398[1] = 0;
            goto LABEL_163;
          }

          sub_1000095E8(v378, &qword_1011BD900);
        }

        v685 = 0;
        v696 = 0;
        goto LABEL_153;
      }
    }

    v685 = v154;
    v165 = v693;
    v166 = v697;
    v686 = (*(v697 + v693[16]))(v152);
    v684 = v167;
    sub_1000089F8(v166 + v165[7], v694, &qword_1011BBA48);
    v168 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
    swift_beginAccess();
    sub_1000089F8(&v156[v168], v23, &qword_1011BD610);
    v169 = *(v699 + 6);
    if (v169(v23, 1, v165))
    {
      sub_1000095E8(v23, &qword_1011BD610);
      v681 = 0;
      v683 = 0;
    }

    else
    {
      sub_100CBC0CC(v23, v74, type metadata accessor for Lyrics.TextLine);
      v191 = sub_1000095E8(v23, &qword_1011BD610);
      v681 = (*&v74[v165[16]])(v191);
      v683 = v192;
      sub_100CBC06C(v74, type metadata accessor for Lyrics.TextLine);
    }

    v193 = v696;
    v194 = v676;
    v195 = v674;
    sub_1000089F8(&v156[v168], v674, &qword_1011BD610);
    if (v169(v195, 1, v165))
    {
      sub_1000095E8(v195, &qword_1011BD610);
      v196 = type metadata accessor for Locale.Language();
      (*(*(v196 - 8) + 56))(v687, 1, 1, v196);
    }

    else
    {
      sub_1000089F8(v195 + v165[7], v687, &qword_1011BBA48);
      sub_1000095E8(v195, &qword_1011BD610);
    }

    v197 = v675;
    v198 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
    swift_beginAccess();
    sub_1000089F8(&v156[v198], v197, &qword_1011BD900);
    v199 = *(v193 + 48);
    v200 = v695;
    if (v199(v197, 1, v695))
    {
      v201 = sub_1000095E8(v197, &qword_1011BD900);
      v680 = 0;
      v693 = 0;
    }

    else
    {
      v202 = v691;
      sub_100CBC0CC(v197, v691, type metadata accessor for Lyrics.Translation.Line);
      sub_1000095E8(v197, &qword_1011BD900);
      v203 = v202[1];
      v680 = *v202;
      v693 = v203;

      v201 = sub_100CBC06C(v202, type metadata accessor for Lyrics.Translation.Line);
    }

    v204 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
    if (v156[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] == 1)
    {
      (v679)(v723, v201);
      v205 = v725;
      if (v725)
      {
        v696 = *&v724;

        sub_1000095E8(v723, &qword_1011BBA40);
      }

      else
      {
        v696 = 0;
      }

      v240 = v661;
      if (v156[v204] == 1)
      {
        sub_1000089F8(&v156[v198], v661, &qword_1011BD900);
        if (!v199(v240, 1, v200))
        {
          v500 = v240;
          v699 = v205;
          v501 = v240;
          v502 = v691;
          sub_100CBC0CC(v500, v691, type metadata accessor for Lyrics.Translation.Line);
          v503 = v501;
          v205 = v699;
          sub_1000095E8(v503, &qword_1011BD900);
          v504 = *(v502 + 24);
          v679 = *(v502 + 16);
          v682 = v504;

          sub_100CBC06C(v502, type metadata accessor for Lyrics.Translation.Line);
LABEL_77:
          v699 = v205;
          sub_1000089F8(&v156[v198], v194, &qword_1011BD900);
          if (v199(v194, 1, v200))
          {
            sub_1000095E8(v194, &qword_1011BD900);
            v241 = type metadata accessor for Locale.Language();
            (*(*(v241 - 8) + 56))(v688, 1, 1, v241);
          }

          else
          {
            v242 = v691;
            sub_100CBC0CC(v194, v691, type metadata accessor for Lyrics.Translation.Line);
            sub_1000095E8(v194, &qword_1011BD900);
            v243 = *(v200 + 6);
            v241 = type metadata accessor for Locale.Language();
            v244 = *(v241 - 8);
            v245 = v242 + v243;
            v156 = v700;
            v246 = v688;
            (*(v244 + 16))(v688, v245, v241);
            sub_100CBC06C(v242, type metadata accessor for Lyrics.Translation.Line);
            (*(v244 + 56))(v246, 0, 1, v241);
          }

          memcpy(v728, &v156[v204], 0x2B0uLL);
          v695 = _s20DespacitoContentViewCMa(0);
          v247 = objc_allocWithZone(v695);
          v247[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
          *&v247[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
          *&v247[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
          *&v247[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
          v248 = OBJC_IVAR___MusicDespacitoContentView_language;
          type metadata accessor for Locale.Language();
          v249 = *(*(v241 - 8) + 56);
          v249(&v247[v248], 1, 1, v241);
          *&v691 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
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
          v254 = v694;
          v255 = v698;
          sub_1000089F8(v694, v698, &qword_1011BBA48);
          v256 = *(sub_10010FC20(&qword_1011BD090) + 48);
          v257 = v689;
          v258 = v686;
          v259 = v684;
          *v689 = v686;
          *(v257 + 8) = v259;
          sub_1000089F8(v255, v257 + v256, &qword_1011BBA48);
          swift_storeEnumTagMultiPayload();
          v260 = objc_allocWithZone(_s15TextContentViewCMa(0));

          sub_1002AD8C8(v728, &v706);
          v261 = sub_100CB2284(v257, v728, 0);
          sub_1000095E8(v255, &qword_1011BBA48);
          *&v247[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v261;
          memcpy(&v247[OBJC_IVAR___MusicDespacitoContentView_specs], v728, 0x2B0uLL);
          v262 = &v247[OBJC_IVAR___MusicDespacitoContentView_text];
          *v262 = v258;
          v262[1] = v259;
          swift_beginAccess();

          sub_1002AD8C8(v728, &v706);
          sub_1002190E0(v254, &v247[v248], &qword_1011BBA48);
          swift_endAccess();
          v247[v691] = v692;
          v705.receiver = v247;
          v705.super_class = v695;
          v263 = objc_msgSendSuper2(&v705, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
          v264 = *&v263[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
          v265 = v263;
          [v265 addSubview:v264];
          v266 = v696;
          v267 = v683;
          if (v683)
          {
            v268 = String.lowercased()();
            v269 = v681;
            v270 = String.lowercased()();
            if (v268._countAndFlagsBits == v270._countAndFlagsBits && v268._object == v270._object)
            {
            }

            else
            {
              v271 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v271)
              {
              }

              else
              {
                v356 = v698;
                sub_1000089F8(v687, v698, &qword_1011BBA48);
                v357 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
                swift_beginAccess();
                sub_10006B010(v356, &v265[v357], &qword_1011BBA48);
                swift_endAccess();
                v358 = &v265[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
                *v358 = v269;
                v358[1] = v267;

                sub_100CAFEF0();
              }
            }
          }

          v359 = v699;
          v360 = v693;
          if (v693)
          {
            v361 = String.lowercased()();

            v362 = v680;
            v363 = String.lowercased()();
            v364 = v700;
            if (v361._countAndFlagsBits == v363._countAndFlagsBits && v361._object == v363._object)
            {
            }

            else
            {
              v365 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v365)
              {
              }

              else
              {
                v366 = v698;
                sub_1000089F8(v688, v698, &qword_1011BBA48);
                v367 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                swift_beginAccess();
                v368 = &v265[v367];
                v364 = v700;
                sub_10006B010(v366, v368, &qword_1011BBA48);
                swift_endAccess();
                v369 = &v265[OBJC_IVAR___MusicDespacitoContentView_translationText];
                *v369 = v362;
                v369[1] = v360;

                sub_100CAF704();
              }
            }
          }

          else
          {

            v364 = v700;
          }

          v370 = v682;
          if (!v682)
          {
            goto LABEL_219;
          }

          if (v359)
          {
            v371 = String.lowercased()();
            v372 = String.lowercased()();
            if (v371._countAndFlagsBits == v372._countAndFlagsBits && v371._object == v372._object)
            {

LABEL_219:
              v496 = &v265[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
              *v496 = v266;
              *(v496 + 1) = v359;

              sub_100CAEC20();

              sub_100C9C2C4(v728);
              sub_1000095E8(v688, &qword_1011BBA48);
              sub_1000095E8(v687, &qword_1011BBA48);
              sub_1000095E8(v694, &qword_1011BBA48);
              sub_100CAE394(*&v364[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment]);
              v497 = v685;
              v498 = *v685;
              *v685 = v265;
              v497[1] = &off_1010F6DD8;
              v499 = v265;
              sub_100CB33A0(v498);

              v402 = v700;
              goto LABEL_299;
            }

            v373 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v373 & 1) == 0)
            {
              sub_100CAF658(v679, v370);
              goto LABEL_219;
            }
          }

          goto LABEL_219;
        }

        sub_1000095E8(v240, &qword_1011BD900);
      }
    }

    else
    {
      v205 = 0;
      v696 = 0;
    }

    v679 = 0;
    v682 = 0;
    goto LABEL_77;
  }

  v170 = &v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  v171 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  if (v171)
  {
    _s19SBS_TextContentViewCMa();
    v152 = swift_dynamicCastClass();
    if (v152)
    {
      v694 = v152;
      v172 = v693;
      v173 = v697;
      v174 = *(v697 + v693[16]);
      v684 = v171;
      v681 = v174();
      v690 = v175;
      v689 = v150();
      v176 = sub_1000089F8(v173 + v172[7], v668, &qword_1011BBA48);
      v177 = v700;
      v686 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
      LODWORD(v678) = (*(v173 + v172[15]))(v176);
      v685 = *(v173 + v172[9]);
      v178 = v679;
      v179 = (v679)(v711);
      v180 = v713;
      if (v713)
      {
        v675 = v712;

        v179 = sub_1000095E8(v711, &qword_1011BBA40);
      }

      else
      {
        v675 = 0;
      }

      v413 = v645;
      v414 = (v178)(v714, v179);
      if (v715)
      {
        v683 = v716;

        v414 = sub_1000095E8(v714, &qword_1011BBA40);
      }

      else
      {
        v683 = _swiftEmptyArrayStorage;
      }

      (v178)(v717, v414);
      v687 = v180;
      if (v718)
      {
        LODWORD(v680) = v719;
        sub_1000095E8(v717, &qword_1011BBA40);
      }

      else
      {
        LODWORD(v680) = 0;
      }

      v415 = v652;
      v416 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
      swift_beginAccess();
      v417 = v673;
      sub_1000089F8(&v177[v416], v673, &qword_1011BD610);
      v418 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
      swift_beginAccess();
      sub_1000089F8(&v177[v418], v413, &qword_1011BD900);
      v419 = *(v696 + 48);
      v420 = v695;
      v696 += 48;
      if (v419(v413, 1, v695))
      {
        sub_1000095E8(v413, &qword_1011BD900);
        v679 = 0;
        v688 = 0;
      }

      else
      {
        v421 = v691;
        sub_100CBC0CC(v413, v691, type metadata accessor for Lyrics.Translation.Line);
        sub_1000095E8(v413, &qword_1011BD900);
        v422 = *(v421 + 8);
        v679 = *v421;
        v688 = v422;

        v423 = v421;
        v415 = v652;
        sub_100CBC06C(v423, type metadata accessor for Lyrics.Translation.Line);
      }

      v424 = v699;
      v425 = v672;
      sub_1000089F8(&v177[v418], v415, &qword_1011BD900);
      if (v419(v415, 1, v420))
      {
        sub_1000095E8(v415, &qword_1011BD900);
        v674 = 0;
        v682 = 0;
      }

      else
      {
        v426 = v415;
        v427 = v424;
        v428 = v417;
        v429 = v425;
        v430 = v415;
        v431 = v691;
        sub_100CBC0CC(v426, v691, type metadata accessor for Lyrics.Translation.Line);
        v432 = v430;
        v425 = v429;
        v417 = v428;
        v424 = v427;
        sub_1000095E8(v432, &qword_1011BD900);
        v433 = *(v431 + 24);
        v674 = *(v431 + 16);
        v682 = v433;

        sub_100CBC06C(v431, type metadata accessor for Lyrics.Translation.Line);
      }

      v434 = &v177[v418];
      v435 = v648;
      sub_1000089F8(v434, v648, &qword_1011BD900);
      if (v419(v435, 1, v420))
      {
        sub_1000095E8(v435, &qword_1011BD900);
        v436 = type metadata accessor for Locale.Language();
        (*(*(v436 - 8) + 56))(v425, 1, 1, v436);
      }

      else
      {
        v437 = v691;
        sub_100CBC0CC(v435, v691, type metadata accessor for Lyrics.Translation.Line);
        sub_1000095E8(v435, &qword_1011BD900);
        v438 = *(v420 + 6);
        v439 = type metadata accessor for Locale.Language();
        v440 = *(v439 - 8);
        (*(v440 + 16))(v425, v437 + v438, v439);
        sub_100CBC06C(v437, type metadata accessor for Lyrics.Translation.Line);
        (*(v440 + 56))(v425, 0, 1, v439);
      }

      v441 = v649;
      v442 = v646;
      sub_1000089F8(v417, v646, &qword_1011BD610);
      v443 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
      v444 = v694;
      swift_beginAccess();
      sub_10006B010(v442, v444 + v443, &qword_1011BD610);
      swift_endAccess();
      v445 = *(v444 + OBJC_IVAR___MusicSBS_TextContentView_textView);
      if (v445)
      {
        v446 = v647;
        sub_1000089F8(v417, v647, &qword_1011BD610);
        v449 = v424[6];
        v447 = v424 + 6;
        v448 = v449;
        v450 = v693;
        v451 = (v449)(v446, 1, v693);
        v453 = v650;
        v452 = v651;
        if (v451 == 1)
        {
          v454 = v445;
          sub_1000095E8(v446, &qword_1011BD610);
          v455 = type metadata accessor for Locale.Language();
          (*(*(v455 - 8) + 56))(v664, 1, 1, v455);
        }

        else
        {
          sub_1000089F8(v446 + v450[7], v664, &qword_1011BBA48);
          v456 = v445;
          sub_100CBC06C(v446, type metadata accessor for Lyrics.TextLine);
        }

        sub_1000089F8(v417, v441, &qword_1011BD610);
        if ((v448)(v441, 1, v450) == 1)
        {
          sub_1000095E8(v441, &qword_1011BD610);
          v457 = 2;
        }

        else
        {
          v458 = (*(v441 + v450[15]))();
          sub_100CBC06C(v441, type metadata accessor for Lyrics.TextLine);
          v457 = v458 & 1;
        }

        LODWORD(v695) = v457;
        sub_1000089F8(v417, v453, &qword_1011BD610);
        v699 = v447;
        if ((v448)(v453, 1, v450) == 1)
        {
          sub_1000095E8(v453, &qword_1011BD610);
          *&v691 = 0;
          v677 = 0;
        }

        else
        {
          *&v691 = (*(v453 + v450[16]))();
          v677 = v459;
          sub_100CBC06C(v453, type metadata accessor for Lyrics.TextLine);
        }

        sub_1000089F8(v417, v452, &qword_1011BD610);
        v460 = (v448)(v452, 1, v450);
        v696 = v448;
        if (v460 == 1)
        {
          sub_1000095E8(v452, &qword_1011BD610);
          v676 = 0;
        }

        else
        {
          v676 = (*(v452 + v450[17]))();
          sub_100CBC06C(v452, type metadata accessor for Lyrics.TextLine);
        }

        v461 = &v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v462 = v681;
        v463 = v690;
        *v461 = v681;
        *(v461 + 1) = v463;

        v464 = &v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
        *v464 = v462;
        v464[1] = v463;

        *&v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v689;

        v465 = v698;
        sub_1000089F8(v672, v698, &qword_1011BBA48);
        v466 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        swift_beginAccess();

        sub_10006B010(v465, &v445[v466], &qword_1011BBA48);
        swift_endAccess();
        v467 = v664;
        sub_1000089F8(v664, v465, &qword_1011BBA48);
        v468 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        swift_beginAccess();
        sub_10006B010(v465, &v445[v468], &qword_1011BBA48);
        swift_endAccess();
        v469 = &v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
        v470 = v688;
        *v469 = v679;
        *(v469 + 1) = v470;

        v471 = &v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
        v472 = v677;
        *v471 = v691;
        *(v471 + 1) = v472;

        *&v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = v676;

        v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = v695;
        v474 = v685;
        v473 = v686;
        *&v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v686;
        LOBYTE(v468) = v678 & 1;
        v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v678 & 1;
        *&v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v474;

        [v445 setNeedsLayout];

        sub_1000095E8(v467, &qword_1011BBA48);
        v475 = v694;
        v476 = &v694[OBJC_IVAR___MusicSBS_TextContentView_text];
        *v476 = v462;
        v476[1] = v463;

        *(v475 + OBJC_IVAR___MusicSBS_TextContentView_alignment) = v473;
        *(v475 + OBJC_IVAR___MusicSBS_TextContentView_direction) = v468;
        *(v475 + OBJC_IVAR___MusicSBS_TextContentView_capabilities) = v474;

        v477 = v680 & 1;
        *(v475 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = v477;
        *(v475 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = v692;
        v478 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
        v479 = *(v475 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
        if (v479)
        {
          v402 = v700;
          v480 = v673;
          v481 = v687;
          if (v687)
          {
            LODWORD(v695) = v477;
            v482 = v632;
            sub_1000089F8(v673, v632, &qword_1011BD610);
            v483 = v693;
            if ((v696)(v482, 1, v693) == 1)
            {
              v484 = v479;
              sub_1000095E8(v482, &qword_1011BD610);
              v485 = type metadata accessor for Locale.Language();
              (*(*(v485 - 8) + 56))(v640, 1, 1, v485);
            }

            else
            {
              sub_1000089F8(v482 + v483[7], v640, &qword_1011BBA48);
              v509 = v479;
              sub_100CBC06C(v482, type metadata accessor for Lyrics.TextLine);
            }

            v510 = v480;
            v512 = v633;
            v511 = v634;
            sub_1000089F8(v510, v633, &qword_1011BD610);
            if ((v696)(v512, 1, v483) == 1)
            {
              sub_1000095E8(v512, &qword_1011BD610);
              v513 = 2;
            }

            else
            {
              v514 = (*(v512 + v483[15]))();
              sub_100CBC06C(v512, type metadata accessor for Lyrics.TextLine);
              v513 = v514 & 1;
            }

            LODWORD(v692) = v513;
            sub_1000089F8(v673, v511, &qword_1011BD610);
            if ((v696)(v511, 1, v483) == 1)
            {
              sub_1000095E8(v511, &qword_1011BD610);
              v681 = 0;
              *&v691 = 0;
              v515 = v635;
            }

            else
            {
              (*(v511 + v483[18]))(&v706);
              *&v691 = *(&v707 + 1);
              if (*(&v707 + 1))
              {
                v681 = v707;

                sub_1000095E8(&v706, &qword_1011BBA40);
              }

              else
              {
                v681 = 0;
              }

              v515 = v635;
              sub_100CBC06C(v511, type metadata accessor for Lyrics.TextLine);
            }

            sub_1000089F8(v673, v515, &qword_1011BD610);
            v579 = v693;
            if ((v696)(v515, 1, v693) == 1)
            {
              sub_1000095E8(v515, &qword_1011BD610);
            }

            else
            {
              (*(v515 + v579[18]))(v728);
              sub_100CBC06C(v515, type metadata accessor for Lyrics.TextLine);
              if (*(&v728[1] + 1))
              {
                v699 = *(&v728[3] + 1);

                sub_1000095E8(v728, &qword_1011BBA40);
LABEL_279:
                v580 = &v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
                v581 = v675;
                *v580 = v675;
                *(v580 + 1) = v481;

                v582 = &v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
                *v582 = v581;
                *(v582 + 1) = v481;

                *&v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v683;

                v564 = v672;
                v583 = v698;
                sub_1000089F8(v672, v698, &qword_1011BBA48);
                v584 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
                swift_beginAccess();

                sub_10006B010(v583, &v479[v584], &qword_1011BBA48);
                swift_endAccess();
                v585 = v640;
                sub_1000089F8(v640, v583, &qword_1011BBA48);
                v586 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
                swift_beginAccess();
                sub_10006B010(v583, &v479[v586], &qword_1011BBA48);
                swift_endAccess();
                v587 = &v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
                v588 = v682;
                *v587 = v674;
                *(v587 + 1) = v588;

                v589 = &v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
                v590 = v691;
                *v589 = v681;
                *(v589 + 1) = v590;

                *&v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = v699;

                v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = v692;
                v591 = v685;
                *&v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v686;
                v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v695;
                *&v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v591;

                [v479 setNeedsLayout];

                sub_1000095E8(v585, &qword_1011BBA48);
                v402 = v700;
                v480 = v673;
                v475 = v694;
                goto LABEL_298;
              }
            }

            v699 = 0;
            goto LABEL_279;
          }

          [v479 removeFromSuperview];
          v475 = v694;
          v505 = *&v694[v478];
LABEL_251:
          v564 = v672;
          *(v475 + v478) = 0;

LABEL_298:
          [v475 setNeedsLayout];

          sub_1000095E8(v564, &qword_1011BBA48);
          sub_1000095E8(v480, &qword_1011BD610);
          sub_1000095E8(v668, &qword_1011BBA48);
          goto LABEL_299;
        }

        v402 = v700;
        v480 = v673;
        if (!v687)
        {
          v505 = 0;
          goto LABEL_251;
        }

        v692 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
        LODWORD(v695) = v477;
        sub_1000089F8(v668, v637, &qword_1011BBA48);
        sub_1000089F8(v672, v638, &qword_1011BBA48);
        v486 = v628;
        sub_1000089F8(v480, v628, &qword_1011BD610);
        v487 = v693;
        if ((v696)(v486, 1, v693) == 1)
        {

          sub_1000095E8(v486, &qword_1011BD610);
          v488 = type metadata accessor for Locale.Language();
          (*(*(v488 - 8) + 56))(v636, 1, 1, v488);
        }

        else
        {
          sub_1000089F8(v486 + v487[7], v636, &qword_1011BBA48);

          sub_100CBC06C(v486, type metadata accessor for Lyrics.TextLine);
        }

        v565 = v631;
        v566 = v629;
        sub_1000089F8(v480, v629, &qword_1011BD610);
        v567 = (v696)(v566, 1, v487);
        v568 = v630;
        if (v567 == 1)
        {
          sub_1000095E8(v566, &qword_1011BD610);
          v569 = 2;
        }

        else
        {
          v570 = (*(v566 + v487[15]))();
          sub_100CBC06C(v566, type metadata accessor for Lyrics.TextLine);
          v569 = v570 & 1;
        }

        LODWORD(v691) = v569;
        sub_1000089F8(v480, v568, &qword_1011BD610);
        v571 = v696;
        if ((v696)(v568, 1, v487) == 1)
        {
          sub_1000095E8(v568, &qword_1011BD610);
          v698 = 0;
          v681 = 0;
        }

        else
        {
          (*(v568 + v487[18]))(v720);
          v681 = v722;
          if (v722)
          {
            v698 = v721;

            sub_1000095E8(v720, &qword_1011BBA40);
          }

          else
          {
            v698 = 0;
          }

          sub_100CBC06C(v568, type metadata accessor for Lyrics.TextLine);
        }

        sub_1000089F8(v480, v565, &qword_1011BD610);
        if (v571(v565, 1, v487) == 1)
        {
          sub_1000095E8(v565, &qword_1011BD610);
        }

        else
        {
          (*(v565 + v487[18]))(v723);
          sub_100CBC06C(v565, type metadata accessor for Lyrics.TextLine);
          if (v725)
          {
            v699 = v727;

            sub_1000095E8(v723, &qword_1011BBA40);
LABEL_297:
            v696 = v475 + OBJC_IVAR___MusicSBS_TextContentView_specs;
            memcpy(v728, v475 + OBJC_IVAR___MusicSBS_TextContentView_specs, 0x2B0uLL);
            v693 = _s8TextViewCMa();
            v598 = objc_allocWithZone(v693);
            v599 = &v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
            *v599 = 0;
            v599[1] = 0;
            v680 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
            v679 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
            v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
            v600 = &v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
            *v600 = 0;
            v600[1] = 0;
            v601 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
            v602 = type metadata accessor for Locale.Language();
            v603 = *(*(v602 - 8) + 56);
            v603(&v598[v601], 1, 1, v602);
            v604 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
            v603(&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v602);
            v605 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
            v603(&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v602);
            v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
            v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
            v678 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
            v606 = &v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
            *v606 = 2;
            *(v606 + 8) = 0u;
            *(v606 + 24) = 0u;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
            v607 = &v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
            v607[4] = 0u;
            v607[5] = 0u;
            v607[2] = 0u;
            v607[3] = 0u;
            *v607 = 0u;
            v607[1] = 0u;
            v608 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
            sub_1002AD8C8(v728, &v706);
            *&v598[v608] = sub_100C76C78(_swiftEmptyArrayStorage);
            v609 = &v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
            v610 = v675;
            v611 = v687;
            *v609 = v675;
            v609[1] = v611;
            v612 = &v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
            *v612 = v610;
            v612[1] = v611;
            swift_beginAccess();

            v613 = &v598[v601];
            v475 = v694;
            sub_1002190E0(v637, v613, &qword_1011BBA48);
            swift_endAccess();
            swift_beginAccess();
            sub_1002190E0(v638, &v598[v604], &qword_1011BBA48);
            swift_endAccess();
            swift_beginAccess();
            v614 = v636;
            sub_1002190E0(v636, &v598[v605], &qword_1011BBA48);
            swift_endAccess();
            *(v679 + v598) = v691;
            v615 = v681;
            *v599 = v698;
            v599[1] = v615;

            *&v598[v680] = v699;

            v616 = v682;
            *v600 = v674;
            v600[1] = v616;

            memcpy(&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v728, 0x2B0uLL);
            *&v598[v678] = 0;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v683;
            v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 1;
            v617 = v685;
            v618 = v686;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v686;
            v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v695;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v617;
            v701.receiver = v598;
            v701.super_class = v693;

            v619 = objc_msgSendSuper2(&v701, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
            sub_1000095E8(v614, &qword_1011BBA48);
            sub_1000095E8(v638, &qword_1011BBA48);
            sub_1000095E8(v637, &qword_1011BBA48);
            v620 = sub_100CA9E50(v618);
            v622 = v621;
            v623 = v619;
            UIView.setAnchorPoint(_:preserveFrame:)(1, v620, v622);
            [v623 setAlpha:0.0];
            v624 = *(v696 + 144);
            v625 = *(v696 + 160);
            v706 = *(v696 + 128);
            v707 = v624;
            v708 = v625;
            [v623 setTransform:&v706];

            [v475 addSubview:v623];
            v626 = *&v692[v475];
            *&v692[v475] = v623;

            v402 = v700;
            v564 = v672;
            v480 = v673;
            goto LABEL_298;
          }
        }

        v699 = 0;
        goto LABEL_297;
      }

      goto LABEL_312;
    }
  }

  v660 = v170;
  v181 = v693;
  v182 = v697;
  v686 = (*(v697 + v693[16]))(v152);
  v694 = v183;
  v690 = v150();
  v184 = sub_1000089F8(v182 + v181[7], v684, &qword_1011BBA48);
  v185 = v700;
  v688 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
  v186 = (*(v182 + v181[15]))(v184);
  v698 = *(v182 + v181[9]);

  v188 = v679;
  v189 = (v679)(v711, v187);
  v190 = v713;
  if (v713)
  {
    v652 = v712;

    v189 = sub_1000095E8(v711, &qword_1011BBA40);
  }

  else
  {
    v652 = 0;
  }

  v285 = v653;
  v286 = (v188)(v714, v189);
  if (v715)
  {
    v687 = v716;

    v286 = sub_1000095E8(v714, &qword_1011BBA40);
  }

  else
  {
    v687 = _swiftEmptyArrayStorage;
  }

  v689 = v190;
  (v188)(v717, v286);
  if (v718)
  {
    LODWORD(v683) = v719;
    sub_1000095E8(v717, &qword_1011BBA40);
  }

  else
  {
    LODWORD(v683) = 0;
  }

  v287 = v654;
  memcpy(v728, &v185[v153], 0x2B0uLL);
  v288 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
  swift_beginAccess();
  sub_1000089F8(&v185[v288], v685, &qword_1011BD610);
  v289 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
  swift_beginAccess();
  sub_1000089F8(&v185[v289], v285, &qword_1011BD900);
  v290 = *(v696 + 48);
  v291 = v695;
  if (v290(v285, 1, v695))
  {
    sub_1002AD8C8(v728, &v706);
    sub_1000095E8(v285, &qword_1011BD900);
    v675 = 0;
    v696 = 0;
  }

  else
  {
    v292 = v691;
    sub_100CBC0CC(v285, v691, type metadata accessor for Lyrics.Translation.Line);
    sub_1002AD8C8(v728, &v706);
    sub_1000095E8(v285, &qword_1011BD900);
    v293 = v292[1];
    v675 = *v292;
    v696 = v293;

    sub_100CBC06C(v292, type metadata accessor for Lyrics.Translation.Line);
  }

  v294 = v699;
  sub_1000089F8(&v185[v289], v287, &qword_1011BD900);
  if (v290(v287, 1, v291))
  {
    sub_1000095E8(v287, &qword_1011BD900);
    v654 = 0;
    v682 = 0;
  }

  else
  {
    v295 = v691;
    sub_100CBC0CC(v287, v691, type metadata accessor for Lyrics.Translation.Line);
    sub_1000095E8(v287, &qword_1011BD900);
    v296 = *(v295 + 24);
    v654 = *(v295 + 16);
    v682 = v296;

    sub_100CBC06C(v295, type metadata accessor for Lyrics.Translation.Line);
  }

  v297 = &v185[v289];
  v298 = v655;
  sub_1000089F8(v297, v655, &qword_1011BD900);
  if (v290(v298, 1, v291))
  {
    sub_1000095E8(v298, &qword_1011BD900);
    v299 = type metadata accessor for Locale.Language();
    v300 = v677;
    (*(*(v299 - 8) + 56))(v677, 1, 1, v299);
  }

  else
  {
    v301 = v691;
    sub_100CBC0CC(v298, v691, type metadata accessor for Lyrics.Translation.Line);
    sub_1000095E8(v298, &qword_1011BD900);
    v302 = *(v291 + 6);
    v303 = type metadata accessor for Locale.Language();
    v304 = *(v303 - 8);
    v300 = v677;
    (*(v304 + 16))(v677, v301 + v302, v303);
    sub_100CBC06C(v301, type metadata accessor for Lyrics.Translation.Line);
    (*(v304 + 56))(v300, 0, 1, v303);
  }

  v305 = v693;
  v306 = v698;
  v679 = _s19SBS_TextContentViewCMa();
  v307 = objc_allocWithZone(v679);
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling) = 1;
  v308 = (v307 + OBJC_IVAR___MusicSBS_TextContentView_text);
  *v308 = 0;
  v308[1] = 0;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_attributedText) = 0;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) = 0;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_progress) = 0;
  v678 = OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = 2;
  v309 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  v294[7](v307 + OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine, 1, 1, v305);
  v676 = OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = 2;
  v674 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_textView) = 0;
  v680 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView) = 0;
  v310 = v694;
  *v308 = v686;
  v308[1] = v310;
  memcpy(v307 + OBJC_IVAR___MusicSBS_TextContentView_specs, v728, 0x2B0uLL);
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_alignment) = v688;
  LODWORD(v673) = v186 & 1;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_direction) = v186 & 1;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_capabilities) = v306;
  swift_beginAccess();

  sub_1002AD8C8(v728, &v706);

  v695 = v307;
  v311 = v685;
  sub_1002190E0(v685, v307 + v309, &qword_1011BD610);
  swift_endAccess();
  sub_1000089F8(v684, v681, &qword_1011BBA48);
  v312 = v693;
  sub_1000089F8(v300, v670, &qword_1011BBA48);
  v313 = v656;
  sub_1000089F8(v311, v656, &qword_1011BD610);
  v316 = v294[6];
  v314 = v294 + 6;
  v315 = v316;
  if ((v316)(v313, 1, v312) == 1)
  {
    sub_1000095E8(v313, &qword_1011BD610);
    v317 = type metadata accessor for Locale.Language();
    (*(*(v317 - 8) + 56))(v671, 1, 1, v317);
  }

  else
  {
    sub_1000089F8(v313 + v312[7], v671, &qword_1011BBA48);
    sub_100CBC06C(v313, type metadata accessor for Lyrics.TextLine);
  }

  v319 = v658;
  v318 = v659;
  v320 = v657;
  sub_1000089F8(v311, v657, &qword_1011BD610);
  if ((v315)(v320, 1, v312) == 1)
  {
    sub_1000095E8(v320, &qword_1011BD610);
    v321 = 2;
  }

  else
  {
    v322 = (*(v320 + v312[15]))();
    sub_100CBC06C(v320, type metadata accessor for Lyrics.TextLine);
    v321 = v322 & 1;
  }

  LODWORD(v672) = v321;
  sub_1000089F8(v311, v319, &qword_1011BD610);
  if ((v315)(v319, 1, v312) == 1)
  {
    sub_1000095E8(v319, &qword_1011BD610);
    v667 = 0;
    v668 = 0;
  }

  else
  {
    v323 = (*(v319 + v312[16]))();
    v667 = v324;
    v668 = v323;
    sub_100CBC06C(v319, type metadata accessor for Lyrics.TextLine);
  }

  LODWORD(v691) = v683 & 1;
  sub_1000089F8(v311, v318, &qword_1011BD610);
  v325 = (v315)(v318, 1, v312);
  v699 = v314;
  v655 = v315;
  if (v325 == 1)
  {
    sub_1000095E8(v318, &qword_1011BD610);
    v666 = 0;
  }

  else
  {
    v666 = (*(v318 + v312[17]))();
    sub_100CBC06C(v318, type metadata accessor for Lyrics.TextLine);
  }

  v683 = _s8TextViewCMa();
  v326 = objc_allocWithZone(v683);
  v327 = &v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  *v327 = 0;
  v327[1] = 0;
  v665 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
  v664 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
  v328 = &v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  *v328 = 0;
  v328[1] = 0;
  v329 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v330 = type metadata accessor for Locale.Language();
  v331 = *(v330 - 8);
  v332 = *(v331 + 56);
  v333 = v331 + 56;
  (v332)(&v326[v329], 1, 1, v330);
  v334 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  (v332)(&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v330);
  v335 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
  v658 = v332;
  v659 = v330;
  v657 = v333;
  (v332)(&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v330);
  v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
  v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
  v661 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
  v336 = &v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  *v336 = 2;
  *(v336 + 8) = 0u;
  *(v336 + 24) = 0u;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
  v337 = &v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  v337[4] = 0u;
  v337[5] = 0u;
  v337[2] = 0u;
  v337[3] = 0u;
  *v337 = 0u;
  v337[1] = 0u;
  v338 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;

  sub_1002AD8C8(v728, &v706);
  v339 = v696;

  v340 = v694;

  *&v326[v338] = sub_100C76C78(_swiftEmptyArrayStorage);
  v341 = &v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
  v342 = v686;
  *v341 = v686;
  v341[1] = v340;
  v343 = &v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  *v343 = v342;
  v343[1] = v340;
  swift_beginAccess();

  sub_1002190E0(v681, &v326[v329], &qword_1011BBA48);
  swift_endAccess();
  swift_beginAccess();
  v344 = &v326[v334];
  v345 = v670;
  sub_1002190E0(v670, v344, &qword_1011BBA48);
  swift_endAccess();
  swift_beginAccess();
  v346 = v671;
  sub_1002190E0(v671, &v326[v335], &qword_1011BBA48);
  swift_endAccess();
  v326[v664] = v672;
  v347 = v667;
  *v327 = v668;
  v327[1] = v347;

  *&v326[v665] = v666;

  *v328 = v675;
  v328[1] = v339;

  memcpy(&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v728, 0x2B0uLL);
  *&v326[v661] = 0;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v690;
  v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 0;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v688;
  v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v673;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v698;
  v704.receiver = v326;
  v348 = v683;
  v704.super_class = v683;
  v349 = objc_msgSendSuper2(&v704, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000095E8(v346, &qword_1011BBA48);
  sub_1000095E8(v345, &qword_1011BBA48);
  sub_1000095E8(v681, &qword_1011BBA48);
  v350 = v695;
  v351 = *(v695 + v674);
  *(v695 + v674) = v349;

  if (v689)
  {
    sub_1000089F8(v684, v669, &qword_1011BBA48);
    sub_1000089F8(v677, v662, &qword_1011BBA48);
    v352 = v685;
    v353 = v641;
    sub_1000089F8(v685, v641, &qword_1011BD610);
    v354 = v693;
    v355 = v655;
    if ((v655)(v353, 1, v693) == 1)
    {

      sub_1000095E8(v353, &qword_1011BD610);
      v658(v663, 1, 1, v659);
    }

    else
    {
      sub_1000089F8(v353 + v354[7], v663, &qword_1011BBA48);

      sub_100CBC06C(v353, type metadata accessor for Lyrics.TextLine);
    }

    v375 = v642;
    v374 = v643;
    sub_1000089F8(v352, v642, &qword_1011BD610);
    if ((v355)(v375, 1, v354) == 1)
    {
      sub_1000095E8(v375, &qword_1011BD610);
      v376 = 2;
    }

    else
    {
      v377 = (*(v375 + v354[15]))();
      sub_100CBC06C(v375, type metadata accessor for Lyrics.TextLine);
      v376 = v377 & 1;
    }

    LODWORD(v686) = v376;
    sub_1000089F8(v352, v374, &qword_1011BD610);
    if ((v355)(v374, 1, v354) == 1)
    {
      sub_1000095E8(v374, &qword_1011BD610);
      v675 = 0;
      v681 = 0;
    }

    else
    {
      (*(v374 + v354[18]))(v720);
      v681 = v722;
      if (v722)
      {
        v675 = v721;

        sub_1000095E8(v720, &qword_1011BBA40);
      }

      else
      {
        v675 = 0;
      }

      sub_100CBC06C(v374, type metadata accessor for Lyrics.TextLine);
    }

    v516 = v352;
    v517 = v644;
    sub_1000089F8(v516, v644, &qword_1011BD610);
    if ((v355)(v517, 1, v354) == 1)
    {
      sub_1000095E8(v517, &qword_1011BD610);
    }

    else
    {
      (*(v517 + v354[18]))(v723);
      sub_100CBC06C(v517, type metadata accessor for Lyrics.TextLine);
      if (v725)
      {
        v699 = v727;

        sub_1000095E8(v723, &qword_1011BBA40);
LABEL_239:
        v518 = objc_allocWithZone(v348);
        v519 = &v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
        *v519 = 0;
        v519[1] = 0;
        v693 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
        v674 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
        v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
        v520 = &v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
        *v520 = 0;
        v520[1] = 0;
        v521 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
        v523 = v658;
        v522 = v659;
        v658(&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language], 1, 1, v659);
        v524 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        v523(&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v522);
        v525 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        v523(&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v522);
        v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
        v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
        v673 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
        v526 = &v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
        *v526 = 2;
        *(v526 + 8) = 0u;
        *(v526 + 24) = 0u;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
        v527 = &v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
        v527[4] = 0u;
        v527[5] = 0u;
        v527[2] = 0u;
        v527[3] = 0u;
        *v527 = 0u;
        v527[1] = 0u;
        v528 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;

        sub_1002AD8C8(v728, &v706);
        v529 = v682;

        *&v518[v528] = sub_100C76C78(_swiftEmptyArrayStorage);
        v530 = &v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v531 = v652;
        v532 = v689;
        *v530 = v652;
        v530[1] = v532;
        v533 = &v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
        *v533 = v531;
        v533[1] = v532;
        swift_beginAccess();

        sub_1002190E0(v669, &v518[v521], &qword_1011BBA48);
        swift_endAccess();
        swift_beginAccess();
        v534 = &v518[v524];
        v535 = v662;
        sub_1002190E0(v662, v534, &qword_1011BBA48);
        swift_endAccess();
        swift_beginAccess();
        v536 = v663;
        sub_1002190E0(v663, &v518[v525], &qword_1011BBA48);
        swift_endAccess();
        v518[v674] = v686;
        v537 = v681;
        *v519 = v675;
        v519[1] = v537;

        *(v693 + v518) = v699;

        *v520 = v654;
        v520[1] = v529;

        memcpy(&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v728, 0x2B0uLL);
        *&v518[v673] = 0;
        v538 = v688;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v687;
        v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 1;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v538;
        v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v691;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v698;
        v702.receiver = v518;
        v702.super_class = v683;
        v539 = objc_msgSendSuper2(&v702, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        sub_1000095E8(v536, &qword_1011BBA48);
        sub_1000095E8(v535, &qword_1011BBA48);
        sub_1000095E8(v669, &qword_1011BBA48);
        v350 = v695;
        v540 = v680;
        v541 = *(v695 + v680);
        *(v695 + v680) = v539;

        v542 = *(v350 + v540);
        if (v542)
        {
          v543 = sub_100CA9E50(v538);
          v545 = v544;
          v546 = v542;
          UIView.setAnchorPoint(_:preserveFrame:)(1, v543, v545);

          v547 = *(v350 + v680);
          if (v547)
          {
            [v547 setAlpha:0.0];
            v548 = *(v350 + v680);
            if (v548)
            {
              v706 = v728[8];
              v707 = v728[9];
              v708 = v728[10];
              [v548 setTransform:&v706];
            }
          }
        }

        goto LABEL_243;
      }
    }

    v699 = 0;
    goto LABEL_239;
  }

LABEL_243:
  *(v350 + v678) = v691;
  v676[v350] = v692;
  v703.receiver = v350;
  v703.super_class = v679;
  v549 = objc_msgSendSuper2(&v703, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v550 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  v551 = *&v549[OBJC_IVAR___MusicSBS_TextContentView_textView];
  v552 = v677;
  if (!v551)
  {
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v553 = v549;
  v554 = v549;
  [v554 addSubview:v551];
  v555 = *&v554[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  if (!v555)
  {

    sub_100C9C2C4(v728);

    goto LABEL_249;
  }

  v556 = *&v553[v550];
  if (!v556)
  {
LABEL_313:
    __break(1u);
    goto LABEL_314;
  }

  v557 = v555;
  [v556 frame];
  v558 = *&v553[v550];
  if (v558)
  {
    v559 = v558;

    [v559 frame];

    [v557 frame];
    [v557 setFrame:?];

    [v554 addSubview:v557];
    sub_100C9C2C4(v728);
LABEL_249:
    sub_1000095E8(v552, &qword_1011BBA48);
    sub_1000095E8(v685, &qword_1011BD610);
    sub_1000095E8(v684, &qword_1011BBA48);
    v560 = v660;
    v561 = *v660;
    *v660 = v554;
    v560[1] = &off_1010F68B8;
    v562 = v554;
    v563 = v700;
    sub_100CB33A0(v561);

    v402 = v563;
    goto LABEL_299;
  }

LABEL_314:
  __break(1u);
}

id sub_100CBB750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsLineView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SyncedLyricsLineView()
{
  result = qword_1011BD110;
  if (!qword_1011BD110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100CBB8C4()
{
  sub_100CBBA24(319, &qword_1011BCE00, type metadata accessor for Lyrics.TextLine);
  if (v0 <= 0x3F)
  {
    sub_100CBBA24(319, &unk_1011BDA10, type metadata accessor for Lyrics.Translation.Line);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100CBBA24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100CBBA8C()
{
  result = qword_1011BD120;
  if (!qword_1011BD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BD120);
  }

  return result;
}

char *sub_100CBBAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
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
  sub_100008FE4(v16, &v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line]);
  swift_beginAccess();
  v44 = a3;
  sub_1002190E0(a3, &v5[v12], &qword_1011BD900);
  swift_endAccess();
  *&v5[v14] = a4;
  memcpy(&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs], a5, 0x2B0uLL);
  swift_beginAccess();
  sub_1002AD8C8(a5, v46);
  sub_1002190E0(a2, &v5[v10], &qword_1011BD610);
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
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v33 setValue:isa forKey:kCAFilterInputRadius];

  v35 = [v24 layer];
  sub_10010FC20(&qword_1011BC168);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100EBC6B0;
  v37 = *&v24[v32];
  *(v36 + 56) = sub_100009F78(0, &qword_1011BC578);
  *(v36 + 32) = v37;
  v38 = v37;
  v39 = Array._bridgeToObjectiveC()().super.isa;

  [v35 setFilters:v39];

  if (qword_1011BB888 != -1)
  {
    swift_once();
  }

  v40 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && sub_100C6E398(9, *(v40 + 40)))
  {
    v41 = [objc_opt_self() redColor];
    [v24 setBackgroundColor:v41];
  }

  sub_100CB5338();
  sub_100CB42B0();
  sub_1000095E8(v44, &qword_1011BD900);
  sub_1000095E8(v17, &qword_1011BD610);
  sub_10000959C(v16);
  return v24;
}

uint64_t sub_100CBC06C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100CBC0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100CBC15C()
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
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
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
  return sub_100CBC50C;
}

void sub_100CBC50C(uint64_t a1, char a2)
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

uint64_t sub_100CBC590(uint64_t *a1, uint64_t *a2)
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

    sub_100020438(v1);
    *&result = v3 - v4;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void sub_100CBC800()
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

    sub_100020438(v2);
    v6 = v4 - v5;
    v7 = *(v0 + 16);
    Lyrics.line(before:useOriginalLines:)(0, &v20, v6 + 0.1);
    if (v21)
    {
      sub_100059A8C(&v20, &v22);
    }

    else
    {
      v19 = *(v7 + 40);
      if (*(v19 + 16))
      {
        sub_100008FE4(v19 + 32, &v22);
        if (v21)
        {
          sub_1000095E8(&v20, &qword_1011BBB10);
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
      sub_100059A8C(&v22, v25);
      v9 = v26;
      v8 = v27;
      sub_10000954C(v25, v26);
      if ((*(*(v8 + 8) + 8))(v9) < v6 || (v11 = v26, v10 = v27, sub_10000954C(v25, v26), vabdd_f64(v6, (*(*(v10 + 8) + 8))(v11)) <= 0.1))
      {
        Lyrics.line(after:)(v25, &v22);
        swift_beginAccess();
        sub_100CBE344(&v22, v1 + 112);
        swift_endAccess();
        sub_1000095E8(&v22, &qword_1011BBB10);
        sub_10010FC20(&qword_1011BC110);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_100EBC6B0;
        sub_100008FE4(v25, v16 + 32);
        swift_beginAccess();
        *(v1 + 80) = v16;

        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
LABEL_16:
          sub_10000959C(v25);
          return;
        }

        v17 = *(v1 + 72);
        ObjectType = swift_getObjectType();
        (*(v17 + 16))(v1, v25, 1, ObjectType, v17, v6);
      }

      else
      {
        sub_100008FE4(v25, &v22);
        swift_beginAccess();
        sub_100CBE344(&v22, v1 + 112);
        swift_endAccess();
        sub_1000095E8(&v22, &qword_1011BBB10);
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

    sub_1000095E8(&v22, &qword_1011BBB10);
  }

  SyncedLyricsManager.update()();
}

uint64_t SyncedLyricsManager.elapsedTimeProvider.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  sub_100030444(v1);
  return v1;
}

uint64_t SyncedLyricsManager.elapsedTimeProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  sub_100030444(a1);
  sub_100020438(v5);
  sub_100CBC800();
  return sub_100020438(a1);
}

void (*SyncedLyricsManager.elapsedTimeProvider.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100CBCD10;
}

void sub_100CBCD10(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100CBC800();
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
  sub_10010FC20(&qword_1011BD610);
  __chkstk_darwin();
  v3 = &ObjectType - v2;
  v4 = type metadata accessor for Lyrics.TextLine(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100CBDE8C();
  swift_beginAccess();
  sub_100CBE140(v0 + 112, &v68);
  if (!v69)
  {
    sub_1000095E8(&v68, &qword_1011BBB10);
    return;
  }

  sub_100059A8C(&v68, v71);
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

    sub_100020438(v8);
    swift_beginAccess();
    v12 = *(v0 + 80);
    v13 = *(v12 + 16);
    if (v13)
    {
      sub_100008FE4(v12 + 40 * v13 - 8, &v68);
      v15 = v72;
      v14 = v73;
      sub_10000954C(v71, v72);
      v16 = (*(*(v14 + 8) + 8))(v15);
      v18 = v69;
      v17 = v70;
      sub_10000954C(&v68, v69);
      v19 = v16 - (*(v17[1] + 2))(v18);
      swift_beginAccess();
      v20 = *(v1 + 24);

      v22 = v20(v21, v19);

      sub_10000959C(&v68);
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
      sub_100008FE4(v26 + 40 * v27 - 8, &v68);
      sub_10010FC20(&qword_1011BBB08);
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
          sub_10000959C(&v68);
        }
      }
    }

    swift_beginAccess();
    if (sub_100CBD6FC(v71, v1, v25 + *(v1 + 40), v22) == 1)
    {
      v34 = *(v1 + 80);
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = v34 + 32;

        swift_beginAccess();
        do
        {
          sub_100008FE4(v36, &v68);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v37 = *(v1 + 72);
            v38 = swift_getObjectType();
            (*(v37 + 40))(v1, &v68, v38, v37);
            swift_unknownObjectRelease();
          }

          sub_10000959C(&v68);
          v36 += 40;
          --v35;
        }

        while (v35);
      }
    }

    v40 = v72;
    v39 = v73;
    sub_10000954C(v71, v72);
    if ((*(*(v39 + 8) + 8))(v40) <= v25 + v22)
    {
      v41 = *(v1 + 80);
      v42 = *(v41 + 16);
      if (v42)
      {
        sub_100008FE4(v41 + 40 * v42 - 8, &v68);
        v44 = v72;
        v43 = v73;
        sub_10000954C(v71, v72);
        v45 = (*(*(v43 + 8) + 8))(v44);
        v47 = v69;
        v46 = v70;
        sub_10000954C(&v68, v69);
        v48 = (*(v46[1] + 2))(v47);
        v50 = v69;
        v49 = v70;
        sub_10000954C(&v68, v69);
        v51 = (*(v49[1] + 2))(v50) - *(v1 + 48);
        sub_100008FE4(v71, v66);
        sub_10010FC20(&qword_1011BBB08);
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
          sub_100008FE4(&v68, v66);
          v53 = swift_dynamicCast();
          v52 = v65;
          if (!v53 && *(*(v1 + 80) + 16) < *(v1 + 56))
          {
            v54 = v72;
            v55 = v73;
            sub_10000954C(v71, v72);
            ObjectType = (*(v55 + 16))(v54, v55);
            v57 = v69;
            v56 = v70;
            sub_10000954C(&v68, v69);
            v58 = (v56[2])(v57, v56);
            if (v58 < ObjectType)
            {
              v60 = v72;
              v59 = v73;
              sub_10000954C(v71, v72);
              if ((*(*(v59 + 8) + 8))(v60) < v25)
              {
                sub_100CBDC50(v71);
                goto LABEL_36;
              }
            }
          }

          if (v51 < v25)
          {
LABEL_34:
            sub_100CBDAF0(v71, COERCE__INT64(v45 - v48), 0, v25);
            goto LABEL_36;
          }
        }

        sub_100008FE4(&v68, v66);
        v61 = swift_dynamicCast();
        v62 = *(v52 + 56);
        if ((v61 & 1) == 0)
        {
          v62(v3, 1, 1, v4);
          sub_1000095E8(v3, &qword_1011BD610);
          goto LABEL_36;
        }

        v62(v3, 0, 1, v4);
        sub_1001EC250(v3, v7);
        v63 = *&v7[*(v4 + 44)];
        sub_1003407A4(v7);
        if (v63 - *(v1 + 48) < v25)
        {
          goto LABEL_34;
        }

LABEL_36:
        sub_10000959C(&v68);
        goto LABEL_37;
      }

      sub_100CBDAF0(v71, 0, 1, v25);
    }
  }

LABEL_37:
  sub_10000959C(v71);
}

uint64_t sub_100CBD6FC(void *a1, uint64_t a2, double a3, double a4)
{
  sub_10010FC20(&qword_1011BD610);
  __chkstk_darwin();
  v9 = v34 - v8 + 24;
  v10 = type metadata accessor for Lyrics.TextLine(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v15 = a1[3];
  v14 = a1[4];
  sub_10000954C(a1, v15);
  if ((*(*(v14 + 8) + 8))(v15) <= a3 + a4)
  {
    swift_beginAccess();
    v16 = *(a2 + 80);
    v17 = *(v16 + 16);
    if (v17)
    {
      sub_100008FE4(v16 + 40 * v17 - 8, v35);
      v19 = v36;
      v18 = v37;
      sub_10000954C(v35, v36);
      v20 = (*(*(v18 + 8) + 16))(v19);
      swift_beginAccess();
      v21 = v20 - *(a2 + 48);
      sub_100008FE4(a1, v34);
      sub_10010FC20(&qword_1011BBB08);
      if (!swift_dynamicCast())
      {
        sub_100008FE4(v35, v34);
        if (!swift_dynamicCast() && *(*(a2 + 80) + 16) < *(a2 + 56))
        {
          v22 = a1[3];
          v23 = a1[4];
          sub_10000954C(a1, v22);
          v33 = (*(v23 + 16))(v22, v23);
          v25 = v36;
          v24 = v37;
          sub_10000954C(v35, v36);
          v26 = (*(v24 + 16))(v25, v24);
          if (v26 < v33)
          {
            v28 = a1[3];
            v27 = a1[4];
            sub_10000954C(a1, v28);
            if ((*(*(v27 + 8) + 8))(v28) < a3)
            {
              sub_10000959C(v35);
              return 2;
            }
          }
        }
      }

      if (v21 < a3)
      {
        goto LABEL_10;
      }

      sub_100008FE4(v35, v34);
      v30 = swift_dynamicCast();
      v31 = *(v11 + 56);
      if (v30)
      {
        v31(v9, 0, 1, v10);
        sub_1001EC250(v9, v13);
        v32 = *&v13[*(v10 + 44)];
        sub_1003407A4(v13);
        if (v32 - *(a2 + 48) < a3)
        {
LABEL_10:
          sub_10000959C(v35);
          return 1;
        }
      }

      else
      {
        v31(v9, 1, 1, v10);
        sub_1000095E8(v9, &qword_1011BD610);
      }

      sub_10000959C(v35);
    }
  }

  return 0;
}

uint64_t sub_100CBDAF0(void *a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  sub_10010FC20(&qword_1011BC110);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBC6B0;
  sub_100008FE4(a1, v10 + 32);
  swift_beginAccess();
  *(v5 + 80) = v10;

  Lyrics.line(after:)(a1, v14);
  swift_beginAccess();
  sub_100CBE344(v14, v5 + 112);
  swift_endAccess();
  sub_1000095E8(v14, &qword_1011BBB10);
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

uint64_t sub_100CBDC50(void *a1)
{
  v2 = v1;
  sub_100008FE4(a1, v18);
  swift_beginAccess();
  v4 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 80) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100C70B4C(0, v4[2] + 1, 1, v4);
    *(v2 + 80) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_100C70B4C((v6 > 1), v7 + 1, 1, v4);
    *(v2 + 80) = v4;
  }

  v8 = v19;
  v9 = v20;
  sub_100309A88(v18, v19);
  v10 = __chkstk_darwin();
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  (*(v13 + 16))(v12, v10);
  sub_100CBE2AC(v7, v12, (v2 + 80), v8, v9);
  sub_10000959C(v18);
  *(v2 + 80) = v4;
  swift_endAccess();
  Lyrics.line(after:)(a1, v18);
  swift_beginAccess();
  sub_100CBE344(v18, v2 + 112);
  swift_endAccess();
  sub_1000095E8(v18, &qword_1011BBB10);
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

uint64_t sub_100CBDE8C()
{
  v1 = v0;
  swift_beginAccess();
  sub_100CBE140(v0 + 112, &v19);
  v2 = *(&v20 + 1);
  result = sub_1000095E8(&v19, &qword_1011BBB10);
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

      result = sub_100020438(v4);
      v8 = *(v1 + 16);
      v9 = *(v8 + 40);
      if (*(v9 + 16))
      {
        v10 = v6 - v7;
        sub_100008FE4(v9 + 32, &v19);
        v12 = *(&v20 + 1);
        v11 = v21;
        sub_10000954C(&v19, *(&v20 + 1));
        v13 = (*(*(v11 + 8) + 8))(v12);
        sub_10000959C(&v19);
        if (v10 <= v13)
        {
          v16 = *(v8 + 40);
          if (*(v16 + 16))
          {
            sub_100008FE4(v16 + 32, &v19);
          }

          else
          {
            v21 = 0;
            v19 = 0u;
            v20 = 0u;
          }

          swift_beginAccess();
          sub_100CBE344(&v19, v1 + 112);
          swift_endAccess();
          return sub_1000095E8(&v19, &qword_1011BBB10);
        }

        else
        {
          Lyrics.line(before:useOriginalLines:)(0, &v17, v10);
          if (v18)
          {
            sub_100059A8C(&v17, &v19);
            v15 = *(&v20 + 1);
            v14 = v21;
            sub_10000954C(&v19, *(&v20 + 1));
            if (v10 >= (*(*(v14 + 8) + 16))(v15))
            {
              Lyrics.line(after:)(&v19, &v17);
            }

            else
            {
              sub_100008FE4(&v19, &v17);
            }

            swift_beginAccess();
            sub_100CBE344(&v17, v1 + 112);
            swift_endAccess();
            sub_1000095E8(&v17, &qword_1011BBB10);
            return sub_10000959C(&v19);
          }

          else
          {
            return sub_1000095E8(&v17, &qword_1011BBB10);
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

uint64_t sub_100CBE140(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BBB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SyncedLyricsManager.deinit()
{

  sub_1000D8F2C(v0 + 64);

  sub_100020438(*(v0 + 96));
  sub_1000095E8(v0 + 112, &qword_1011BBB10);
  return v0;
}

uint64_t SyncedLyricsManager.__deallocating_deinit()
{

  sub_1000D8F2C(v0 + 64);

  sub_100020438(*(v0 + 96));
  sub_1000095E8(v0 + 112, &qword_1011BBB10);

  return swift_deallocClassInstance();
}

uint64_t sub_100CBE2AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10001C8B8(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100059A8C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_100CBE344(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BBB10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100CBE448()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BD320);
  __chkstk_darwin();
  v3 = &v26 - v2;
  sub_10010FC20(&qword_1011BD328);
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  swift_beginAccess();
  sub_100CBE140(v1 + v10, &v27);
  if (!v28)
  {
    sub_100CBF83C(&v27);
    [*(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label) setText:0];
    return;
  }

  sub_100059A8C(&v27, v29);
  v12 = v30;
  v11 = v31;
  sub_10000954C(v29, v30);
  v13 = (*(*(v11 + 8) + 8))(v12);
  v14 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label);
  if (v13 >= 60.0)
  {
    v23 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_minutesFormatter);
    v25 = v30;
    v24 = v31;
    sub_10000954C(v29, v30);
    (*(*(v24 + 8) + 8))(v25);
    v22 = [v23 stringFromTimeInterval:?];
    goto LABEL_9;
  }

  v15 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_secondsFormatter);
  v16 = type metadata accessor for Calendar();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = type metadata accessor for TimeZone();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  v19 = v30;
  v18 = v31;
  sub_10000954C(v29, v30);
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

  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v6);
  v22 = [v15 stringFromDateComponents:isa];

LABEL_9:
  [v14 setText:v22];

  sub_10000959C(v29);
}

char *sub_100CBE8A4(double a1, double a2, double a3, double a4)
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
  v22 = String._bridgeToObjectiveC()();
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

  if (qword_1011BB8D0 != -1)
  {
    swift_once();
  }

  HIDWORD(v42) = HIDWORD(qword_10121C2D0);
  *&v42 = *&qword_10121C2D0;
  [v41 setShadowOpacity:v42];

  v43 = [v21 layer];
  [v43 setShadowOffset:{2.0, 8.0}];

  v44 = [v38 blackColor];
  [v21 setTintColor:v44];

  sub_100CBF310();
  v45 = objc_opt_self();
  sub_10010FC20(&qword_1011BD520);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100EBEE70;
  v47 = [v31 centerYAnchor];

  v48 = [v21 centerYAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v46 + 32) = v49;
  v50 = [v31 leadingAnchor];

  v51 = [v21 leadingAnchor];
  if (qword_1011BB8B8 != -1)
  {
    swift_once();
  }

  v52 = *&qword_10121C2B8;
  v53 = [v50 constraintEqualToAnchor:v51 constant:*&qword_10121C2B8];

  *(v46 + 40) = v53;
  v54 = [*&v21[v32] topAnchor];
  v55 = [v21 topAnchor];

  if (qword_1011BB8C0 != -1)
  {
    swift_once();
  }

  v56 = *&qword_10121C2C0;
  v57 = [v54 constraintEqualToAnchor:v55 constant:*&qword_10121C2C0];

  *(v46 + 48) = v57;
  v58 = [*&v21[v32] bottomAnchor];
  v59 = [v21 bottomAnchor];

  v60 = [v58 constraintEqualToAnchor:v59 constant:-v56];
  *(v46 + 56) = v60;
  v61 = [*&v21[v32] leadingAnchor];
  v62 = [v31 trailingAnchor];

  if (qword_1011BB8C8 != -1)
  {
    swift_once();
  }

  v63 = [v61 constraintEqualToAnchor:v62 constant:*&qword_10121C2C8];

  *(v46 + 64) = v63;
  v64 = [*&v21[v32] trailingAnchor];
  v65 = [v21 trailingAnchor];

  v66 = [v64 constraintEqualToAnchor:v65 constant:-v52];
  *(v46 + 72) = v66;
  sub_100CBF7F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints:isa];

  return v21;
}

void sub_100CBF140()
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

void sub_100CBF310()
{
  v1 = v0;
  type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin();
  v2 = type metadata accessor for _Glass();
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
      static _Glass._GlassVariant.regular.getter();
      _Glass.init(_:smoothness:)();
      v11 = [objc_opt_self() whiteColor];
      v16 = v2;
      v17 = &protocol witness table for _Glass;
      sub_10001C8B8(v15);
      _Glass.tint(_:)();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      static _Glass._GlassVariant.regular.getter();
      v16 = v2;
      v17 = &protocol witness table for _Glass;
      sub_10001C8B8(v15);
      _Glass.init(_:smoothness:)();
    }

    UIView._background.setter();
  }

  v12 = [v1 layer];
  v13 = 0.0;
  if (v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] == 1)
  {
    if (qword_1011BB8D0 != -1)
    {
      swift_once();
    }

    HIDWORD(v13) = HIDWORD(qword_10121C2D0);
    *&v13 = *&qword_10121C2D0;
  }

  [v12 setShadowOpacity:v13];
}