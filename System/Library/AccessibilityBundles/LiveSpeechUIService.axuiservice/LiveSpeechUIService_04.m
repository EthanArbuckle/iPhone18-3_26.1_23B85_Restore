Swift::Int sub_6D3F0()
{
  sub_BB790();
  sub_BB030();

  return sub_BB7D0();
}

uint64_t sub_6D4AC()
{
  sub_BB030();
}

Swift::Int sub_6D554()
{
  sub_BB790();
  sub_BB030();

  return sub_BB7D0();
}

uint64_t sub_6D60C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s19LiveSpeechUIService0aB5StoreC0B5StateO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_6D63C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701602409;
  v4 = 0xE800000000000000;
  v5 = 0x676E696B61657073;
  if (*v1 != 2)
  {
    v5 = 0x646573756170;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x616570536C6C6977;
    v2 = 0xE90000000000006BLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_6D720(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAEC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_2E50(&qword_FAB38);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_6D904(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAEB8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_2E50(&qword_FAB40);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_6DAF4(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAEB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_2E50(&qword_FAB48);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t _s19LiveSpeechUIService0aB5StoreC16selectedCategorySo0abF0Cvs_0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_B9B20();
}

void (*LiveSpeechStore.category.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t LiveSpeechStore.$category.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAB58);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAB50);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LiveSpeechStore.$category.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAB58);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__category;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAB50);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

uint64_t sub_6E110()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1;
}

uint64_t sub_6E17C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  *a1 = v3;
  return result;
}

uint64_t sub_6E1F8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_B9B20();
}

void (*LiveSpeechStore.phrases.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_80E7C;
}

uint64_t LiveSpeechStore.$phrases.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAB70);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FAB68);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LiveSpeechStore.$phrases.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAB70);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__phrases;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FAB68);
  sub_B9AE0();
  swift_endAccess();
  return sub_80E80;
}

uint64_t sub_6E618()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1;
}

uint64_t sub_6E734(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_B9B20();
}

id sub_6E7A8()
{
  v1 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___callManager;
  v2 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___callManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___callManager);
  }

  else
  {
    if (qword_F8360 == -1)
    {
      v4 = 0;
    }

    else
    {
      swift_once();
      v4 = *(v0 + v1);
    }

    v5 = static LiveSpeechCaptionsCallManager.shared;
    *(v0 + v1) = static LiveSpeechCaptionsCallManager.shared;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_6E848()
{
  v1 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___accessManager;
  v2 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___accessManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___accessManager);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_B9A50()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *LiveSpeechStore.init(identifier:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v179 = a1;
  v180 = a2;
  v130[0] = swift_getObjectType();
  v4 = sub_2E50(&qword_FAB78);
  v177 = *(v4 - 8);
  v178 = v4;
  __chkstk_darwin(v4);
  v176 = v130 - v5;
  v6 = sub_2E50(&qword_FAB80);
  v174 = *(v6 - 8);
  v175 = v6;
  __chkstk_darwin(v6);
  v173 = v130 - v7;
  v172 = type metadata accessor for LiveSpeechTextInputSupportedLocales(0);
  __chkstk_darwin(v172);
  v171 = v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v170 = v130 - v10;
  v169 = sub_2E50(&qword_FAB88);
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v167 = v130 - v11;
  v166 = sub_B99C0();
  v163 = *(v166 - 8);
  __chkstk_darwin(v166);
  v165 = v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v164 = v130 - v14;
  v162 = sub_2E50(&qword_FAB90);
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v160 = v130 - v15;
  v159 = sub_2E50(&qword_F9A10);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = v130 - v16;
  v156 = sub_B9210();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v153 = v130 - v19;
  v152 = sub_2E50(&qword_FAB98);
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v150 = v130 - v20;
  v149 = sub_2E50(&qword_F91F0);
  __chkstk_darwin(v149);
  v148 = v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v147 = v130 - v23;
  v146 = sub_2E50(&qword_FABA0);
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = v130 - v24;
  v143 = sub_2E50(&qword_FABA8);
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = v130 - v25;
  v140 = sub_2E50(&qword_FABB0);
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v27 = v130 - v26;
  v138 = sub_2E50(&qword_FAB68);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = v130 - v28;
  v29 = sub_2E50(&qword_FAB48);
  v181 = *(v29 - 8);
  v182 = v29;
  __chkstk_darwin(v29);
  v31 = v130 - v30;
  v32 = sub_2E50(&qword_FAB40);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = v130 - v34;
  v36 = sub_2E50(&qword_FAB38);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = v130 - v38;
  v40 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__favoritePhrases;
  *&v186[0] = _swiftEmptyArrayStorage;
  sub_2E50(&qword_FAB18);
  sub_B9AD0();
  (*(v37 + 32))(&v3[v40], v39, v36);
  v41 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__favoritePhraseInfo;
  *&v186[0] = _swiftEmptyArrayStorage;
  v130[1] = sub_2E50(&qword_F8AB8);
  sub_B9AD0();
  v134 = v33;
  v42 = *(v33 + 32);
  v131 = v41;
  v135 = v32;
  v43 = v32;
  v44 = v3;
  v42(&v3[v41], v35, v43);
  v45 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__categories;
  *&v186[0] = _swiftEmptyArrayStorage;
  v132 = sub_2E50(&unk_FA5D0);
  sub_B9AD0();
  v46 = *(v181 + 32);
  v133 = v45;
  v46(&v3[v45], v31, v182);
  v47 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__phrases;
  *&v186[0] = _swiftEmptyArrayStorage;
  sub_2E50(&qword_FA5E0);
  v48 = v136;
  sub_B9AD0();
  (*(v137 + 32))(&v3[v47], v48, v138);
  v49 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__presentTextField;
  LOBYTE(v186[0]) = 0;
  sub_B9AD0();
  v50 = *(v139 + 32);
  v51 = v140;
  v50(&v3[v49], v27, v140);
  v52 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__isEditingPhrase;
  LOBYTE(v186[0]) = 0;
  sub_B9AD0();
  v50(&v3[v52], v27, v51);
  v53 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__isFillInPhrase;
  LOBYTE(v186[0]) = 0;
  sub_B9AD0();
  v50(&v3[v53], v27, v51);
  *&v3[OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___callManager] = 0;
  *&v3[OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore_favoritePhraseObserverToken] = 0;
  *&v3[OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___accessManager] = 0;
  v54 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__isHUDVisible;
  LOBYTE(v186[0]) = 0;
  sub_B9AD0();
  v50(&v3[v54], v27, v51);
  v55 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__speechState;
  LOBYTE(v186[0]) = 0;
  v56 = v141;
  sub_B9AD0();
  (*(v142 + 32))(&v3[v55], v56, v143);
  *&v3[OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___synth] = 0;
  v57 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__currentSpeechContext;
  memset(v186, 0, sizeof(v186));
  sub_2E50(&qword_FABE8);
  v58 = v144;
  sub_B9AD0();
  (*(v145 + 32))(&v3[v57], v58, v146);
  v59 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__lastSpokenContext;
  SpokenContext = type metadata accessor for LiveSpeechStore.LastSpokenContext(0);
  v61 = v147;
  (*(*(SpokenContext - 8) + 56))(v147, 1, 1, SpokenContext);
  sub_57A0(v61, v148, &qword_F91F0);
  v62 = v150;
  sub_B9AD0();
  sub_C5E8(v61, &qword_F91F0);
  (*(v151 + 32))(&v3[v59], v62, v152);
  v63 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__lastWillReplaySpeechDate;
  v64 = v153;
  _s19LiveSpeechUIService0aB5StoreC015_lastWillReplayB4Date33_4A0AB17BFF9235D7F87EB31E9A8C21857Combine9PublishedVy10Foundation0H0VGvpfi_0();
  v65 = v155;
  v66 = v156;
  (*(v155 + 16))(v154, v64, v156);
  v67 = v157;
  sub_B9AD0();
  (*(v65 + 8))(v64, v66);
  (*(v158 + 32))(&v3[v63], v67, v159);
  v68 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__queuedText;
  *&v186[0] = 0;
  *(&v186[0] + 1) = 0xE000000000000000;
  v69 = v160;
  sub_B9AD0();
  (*(v161 + 32))(&v3[v68], v69, v162);
  v70 = sub_B9980();
  v71 = sub_B9950();
  v72 = sub_B9940();

  v73 = *(v72 + 16);

  if (v73)
  {
    v74 = sub_B9950();
    v75 = v164;
    sub_B9960();

    v76 = v166;
    v77 = v163;
  }

  else
  {
    v77 = v163;
    v75 = v164;
    v76 = v166;
    (*(v163 + 104))(v164, enum case for LiveSpeechInputMode.keyboard(_:), v166);
  }

  v78 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__inputMode;
  (*(v77 + 16))(v165, v75, v76);
  v79 = v167;
  sub_B9AD0();
  (*(v77 + 8))(v75, v76);
  (*(v168 + 32))(&v44[v78], v79, v169);
  v80 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__currentTextInputSupportedLocales;
  v81 = v170;
  swift_storeEnumTagMultiPayload();
  sub_7E5F4(v81, v171);
  v82 = v173;
  sub_B9AD0();
  sub_35D14(v81);
  (*(v174 + 32))(&v44[v80], v82, v175);
  v83 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__currentInputModeID;
  v186[0] = 0uLL;
  sub_2E50(&qword_F86B0);
  v84 = v176;
  sub_B9AD0();
  (*(v177 + 4))(&v44[v83], v84, v178);
  v85 = &v44[OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore_identifier];
  v86 = v180;
  *v85 = v179;
  v85[1] = v86;
  v179 = v70;
  v87 = sub_B9950();
  v88 = sub_B9940();

  v89 = v88[2];
  if (!v89)
  {
    v180 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v90 = 0;
  v178 = v89 - 1;
  v180 = _swiftEmptyArrayStorage;
  do
  {
    v91 = v90;
    while (1)
    {
      if (v91 >= v88[2])
      {
        __break(1u);
        goto LABEL_43;
      }

      v92 = v88[v91 + 4];

      v93 = sub_B9A20();
      if (*(v92 + 16))
      {
        break;
      }

LABEL_8:

      if (v89 == ++v91)
      {
        goto LABEL_30;
      }
    }

    v95 = sub_7CF4C(v93, v94);
    v97 = v96;

    if ((v97 & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_3ADF4(*(v92 + 56) + 32 * v95, v186);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_8;
    }

    v176 = v185;
    v177 = v184;
    v98 = sub_B9A30();
    if (!*(v92 + 16))
    {

LABEL_22:

      v104 = 0;
      v105 = 0;
      goto LABEL_23;
    }

    v100 = sub_7CF4C(v98, v99);
    v102 = v101;

    if ((v102 & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_3ADF4(*(v92 + 56) + 32 * v100, v186);

    v103 = swift_dynamicCast();
    if (v103)
    {
      v104 = v184;
    }

    else
    {
      v104 = 0;
    }

    if (v103)
    {
      v105 = v185;
    }

    else
    {
      v105 = 0;
    }

LABEL_23:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v180 = sub_79D68(0, *(v180 + 2) + 1, 1, v180);
    }

    v107 = *(v180 + 2);
    v106 = *(v180 + 3);
    if (v107 >= v106 >> 1)
    {
      v180 = sub_79D68((v106 > 1), v107 + 1, 1, v180);
    }

    v90 = v91 + 1;
    v108 = v180;
    *(v180 + 2) = v107 + 1;
    v109 = &v108[32 * v107];
    v110 = v176;
    *(v109 + 4) = v177;
    *(v109 + 5) = v110;
    *(v109 + 6) = v104;
    *(v109 + 7) = v105;
  }

  while (v178 != v91);
LABEL_30:

  v111 = v131;
  swift_beginAccess();
  (*(v134 + 8))(&v44[v111], v135);
  v184 = v180;
  sub_B9AD0();
  swift_endAccess();
  v88 = objc_opt_self();
  v112 = [v88 categories];
  v113 = sub_BB3E0();
  v114 = sub_BB0F0();

  v115 = v133;
  swift_beginAccess();
  (*(v181 + 8))(&v44[v115], v182);
  v184 = v114;
  sub_B9AD0();
  swift_endAccess();
  v116 = [v88 categories];
  v91 = sub_BB0F0();

  v180 = v113;
  if (v91 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *(&dword_10 + (v91 & 0xFFFFFFFFFFFFFF8)); i; i = sub_BB650())
  {
    v118 = 0;
    while (1)
    {
      if ((v91 & 0xC000000000000001) != 0)
      {
        v119 = sub_BB590();
      }

      else
      {
        if (v118 >= *(&dword_10 + (v91 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_44;
        }

        v119 = *(v91 + 8 * v118 + 32);
      }

      v120 = v119;
      v121 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        break;
      }

      if ([v119 isRecents])
      {

        goto LABEL_47;
      }

      ++v118;
      if (v121 == i)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

LABEL_46:

  v120 = [v88 makeEmptyCategory];
LABEL_47:
  swift_beginAccess();
  v184 = v120;
  sub_B9AD0();
  swift_endAccess();
  v122 = objc_opt_self();
  v123 = [v122 maxPreferredPhraseCount];
  v124 = 0;
  if (v123 > 49)
  {
    if (v123 == &stru_20.segname[10])
    {
      v124 = 1;
    }

    else if (v123 == &stru_20.flags)
    {
      v124 = 2;
    }
  }

  else if (v123 == (&dword_0 + 1))
  {
    v124 = 3;
  }

  else if (v123 == (&dword_8 + 2))
  {
    v124 = 0;
  }

  swift_beginAccess();
  LOBYTE(v184) = v124;
  sub_B9AD0();
  swift_endAccess();
  v125 = [v122 makeEmptyPhrase];
  swift_beginAccess();
  v184 = v125;
  sub_BB340();
  sub_B9AD0();
  swift_endAccess();
  v183.receiver = v44;
  v183.super_class = v130[0];
  v126 = objc_msgSendSuper2(&v183, "init");
  LiveSpeechStore.sortCategories()();
  v127 = sub_B9950();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v128 = sub_B9930();

  *&v126[OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore_favoritePhraseObserverToken] = v128;

  swift_unknownObjectRelease();
  return v126;
}

uint64_t property wrapper backing initializer of LiveSpeechStore.lastSpokenContext(uint64_t a1)
{
  v2 = sub_2E50(&qword_F91F0);
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_57A0(a1, &v9 - v6, &qword_F91F0);
  sub_57A0(v7, v4, &qword_F91F0);
  sub_B9AD0();
  sub_C5E8(a1, &qword_F91F0);
  return sub_C5E8(v7, &qword_F91F0);
}

uint64_t sub_701D8(char *a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v11 = *(v4 + 16);
  (v11)(&v14 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  sub_B9AD0();
  v12 = *(v4 + 8);
  v12(a1, v3);
  return v12(v10, v3);
}

uint64_t property wrapper backing initializer of LiveSpeechStore.currentTextInputSupportedLocales(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechTextInputSupportedLocales(0);
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_7E5F4(a1, &v9 - v6);
  sub_7E5F4(v7, v4);
  sub_B9AD0();
  sub_35D14(a1);
  return sub_35D14(v7);
}

void sub_70454()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_B9980();
    v0 = sub_B9950();
    v1 = sub_B9940();

    v2 = *(v1 + 16);
    if (!v2)
    {
      v22 = _swiftEmptyArrayStorage;
      goto LABEL_29;
    }

    v3 = 0;
    v22 = _swiftEmptyArrayStorage;
    while (1)
    {
      v4 = v3;
      while (1)
      {
        if (v4 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v5 = *(v1 + 32 + 8 * v4);

        v6 = sub_B9A20();
        if (*(v5 + 16))
        {
          break;
        }

LABEL_6:

        if (v2 == ++v4)
        {
          goto LABEL_29;
        }
      }

      v8 = sub_7CF4C(v6, v7);
      v10 = v9;

      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }

      sub_3ADF4(*(v5 + 56) + 32 * v8, v25);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_6;
      }

      v11 = sub_B9A30();
      if (!*(v5 + 16))
      {

LABEL_20:

        v17 = 0;
        v18 = 0;
        goto LABEL_21;
      }

      v13 = sub_7CF4C(v11, v12);
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_3ADF4(*(v5 + 56) + 32 * v13, v25);

      v16 = swift_dynamicCast();
      if (v16)
      {
        v17 = v23;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = v24;
      }

      else
      {
        v18 = 0;
      }

LABEL_21:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_79D68(0, *(v22 + 2) + 1, 1, v22);
      }

      v20 = *(v22 + 2);
      v19 = *(v22 + 3);
      if (v20 >= v19 >> 1)
      {
        v22 = sub_79D68((v19 > 1), v20 + 1, 1, v22);
      }

      v3 = v4 + 1;
      *(v22 + 2) = v20 + 1;
      v21 = &v22[32 * v20];
      *(v21 + 4) = v23;
      *(v21 + 5) = v24;
      *(v21 + 6) = v17;
      *(v21 + 7) = v18;
      if (v2 - 1 == v4)
      {
LABEL_29:

        swift_getKeyPath();
        swift_getKeyPath();
        v25[0] = v22;
        sub_B9B20();
        return;
      }
    }
  }
}

id LiveSpeechStore.getRecentOrSavedCategory()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v0 = v16;
  if (v16 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)); i; i = sub_BB650())
  {
    v2 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v3 = sub_BB590();
      }

      else
      {
        if (v2 >= *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        v3 = *(v0 + 8 * v2 + 32);
      }

      v4 = v3;
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if ([v3 isRecents])
      {

        swift_getKeyPath();
        swift_getKeyPath();
        sub_B9B10();

        if (v16 <= 2u)
        {
          v6 = [v4 phrases];
          sub_BB340();
          v7 = sub_BB0F0();

          v8 = v7 >> 62 ? sub_BB650() : *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));

          if (v8)
          {
            return v4;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_B9B10();

        if (v16 >> 62)
        {
          v0 = sub_BB650();
          if (v0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v0 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
          if (v0)
          {
LABEL_19:
            v10 = 0;
            do
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v11 = sub_BB590();
              }

              else
              {
                if (v10 >= *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_32;
                }

                v11 = *(v16 + 8 * v10 + 32);
              }

              v12 = v11;
              v13 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                goto LABEL_31;
              }

              if ([v11 isSaved])
              {

                return v12;
              }

              ++v10;
            }

            while (v13 != v0);
          }
        }

        v15 = [objc_opt_self() makeEmptyCategory];

        return v15;
      }

      ++v2;
      if (v5 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_34:

  v14 = [objc_opt_self() makeEmptyCategory];

  return v14;
}

Swift::Int sub_70AA4(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_7A784(v2);
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_7A8CC(v5);
  *a1 = v2;
  return result;
}

void sub_70B1C(void **a1)
{
  v2 = *(sub_B9250() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_7DFCC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_7A9D0(v5);
  *a1 = v3;
}

uint64_t sub_70BC4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  *a1 = v3;
  return result;
}

uint64_t sub_70C44(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_B9B20();
}

uint64_t sub_70CD0(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAEA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_2E50(&qword_FABB0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_70E54(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_B9B20();
}

void (*LiveSpeechStore.selectedCategory.modify(id *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = LiveSpeechStore.selectedCategory.getter();
  return sub_70F14;
}

void sub_70F14(uint64_t a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 8) = v4;
  *(a1 + 16);
  if (a2)
  {
    v5 = v4;
    sub_B9B20();
    v6 = *a1;
  }

  else
  {

    sub_B9B20();
  }
}

unint64_t sub_70FF0(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_BB650();
    if (v19)
    {
      v20 = v19;
      v1 = sub_7A150(v19, 0);
      sub_59BE8(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = &_swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_BB650();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = sub_BB590();
          v11 = sub_BB590();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_7A784(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_7A784(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_71204()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_B9B20();
}

uint64_t (*LiveSpeechStore.selectedCategoryPhrases.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = LiveSpeechStore.selectedCategoryPhrases.getter();
  return sub_712B8;
}

uint64_t sub_712B8(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  a1[2];
  if (a2)
  {

    sub_B9B20();
  }

  else
  {

    return sub_B9B20();
  }
}

void (*LiveSpeechStore.speechState.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_B9B00();
  return sub_71464;
}

uint64_t LiveSpeechStore.$speechState.setter(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAC00);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_2E50(&qword_FABA8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LiveSpeechStore.$speechState.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_2E50(&qword_FAC00);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore__speechState;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_2E50(&qword_FABA8);
  sub_B9AE0();
  swift_endAccess();
  return sub_7172C;
}

id sub_71730()
{
  v1 = OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___synth;
  v2 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___synth);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___synth);
  }

  else
  {
    v4 = sub_71790();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_71790()
{
  v0 = sub_B9A10();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BB2C0();
  v4 = sub_BB2B0();
  v5 = direct field offset for AXSettings.liveSpeech;
  swift_beginAccess();
  v6 = *&v4[v5];

  sub_BB2A0();
  v7 = objc_allocWithZone(sub_B9520());
  v8 = sub_B93E0();
  v9 = [objc_opt_self() auxiliarySession];
  v26 = 0;
  v10 = [v9 setCategory:AVAudioSessionCategoryVoiceOver error:&v26];
  v11 = v26;
  if (v10 && (v26 = 0, v12 = v11, v13 = [v9 setCategoryOptions:3 error:&v26], v11 = v26, v13) && (v26 = 0, v14 = v11, v15 = objc_msgSend(v9, "setParticipatesInNowPlayingAppPolicy:error:", 0, &v26), v11 = v26, v15))
  {
    v16 = v26;
  }

  else
  {
    v17 = v11;
    sub_B9170();

    swift_willThrow();
    sub_B95C0();
    swift_errorRetain();
    v18 = sub_B9A00();
    v19 = sub_BB300();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&dword_0, v18, v19, "Failed to set audio session properties: %@", v20, 0xCu);
      sub_C5E8(v21, &qword_FA570);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
  }

  v23 = v9;
  sub_B93D0();
  sub_B93F0();

  return v8;
}

uint64_t LiveSpeechStore.SpeechContext.description.getter()
{
  sub_BB040();
  v1._countAndFlagsBits = sub_BB6D0();
  sub_BB060(v1);

  v2._countAndFlagsBits = 0x3D65676E617220;
  v2._object = 0xE700000000000000;
  sub_BB060(v2);
  sub_BB630();
  v3._countAndFlagsBits = 3943982;
  v3._object = 0xE300000000000000;
  sub_BB060(v3);
  sub_BB630();
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_BB060(v4);

  return 1030645100;
}

BOOL static LiveSpeechStore.SpeechContext.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6)
  {
    return (a7 ^ a3) < 0x4000 && (a8 ^ a4) < 0x4000;
  }

  v12 = sub_BB700();
  result = 0;
  if (v12)
  {
    return (a7 ^ a3) < 0x4000 && (a8 ^ a4) < 0x4000;
  }

  return result;
}

void LiveSpeechStore.SpeechContext.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  sub_BB030();
  sub_BB7C0(a4 >> 14);
  sub_BB7C0(a5 >> 14);
}

Swift::Int LiveSpeechStore.SpeechContext.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_BB790();
  sub_BB030();
  sub_BB7C0(a3 >> 14);
  sub_BB7C0(a4 >> 14);
  return sub_BB7D0();
}

Swift::Int sub_71D70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_BB790();
  sub_BB030();
  sub_BB7C0(v1 >> 14);
  sub_BB7C0(v2 >> 14);
  return sub_BB7D0();
}

void sub_71DE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_BB030();
  sub_BB7C0(v1 >> 14);
  sub_BB7C0(v2 >> 14);
}

Swift::Int sub_71E30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_BB790();
  sub_BB030();
  sub_BB7C0(v1 >> 14);
  sub_BB7C0(v2 >> 14);
  return sub_BB7D0();
}

uint64_t sub_71EB0(int8x16_t *a1, int8x16_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = a1->i64[0] == a2->i64[0] && a1->i64[1] == a2->i64[1];
  if (v4 || (v9 = a2[1], v10 = a1[1], v5 = sub_BB700(), v3 = v9, v2 = v10, v6 = 0, (v5 & 1) != 0))
  {
    v7 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0x4000uLL), veorq_s8(v3, v2)));
    v6 = v7.i8[0] & v7.i8[4];
  }

  return v6 & 1;
}

double sub_71F34@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_71FB8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_B9B20();
}

uint64_t sub_72054(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAEA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_2E50(&qword_FABA0);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_721EC(uint64_t a1, void **a2)
{
  v4 = sub_2E50(&qword_F91F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_57A0(a1, &v13 - v8, &qword_F91F0);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_57A0(v9, v6, &qword_F91F0);
  v11 = v10;
  sub_B9B20();
  return sub_C5E8(v9, &qword_F91F0);
}

uint64_t sub_72334(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAE98);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_2E50(&qword_FAB98);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_724CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();
}

uint64_t sub_72578(uint64_t a1)
{
  v2 = sub_2E50(&qword_F9A08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_2E50(&qword_F9A10);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

void LiveSpeechStore.LastSpokenContext.hash(into:)()
{
  sub_BB030();
  SpokenContext = type metadata accessor for LiveSpeechStore.LastSpokenContext(0);
  sub_B99C0();
  sub_7EC68(&qword_FAC08, &type metadata accessor for LiveSpeechInputMode);
  sub_BAF60();
  sub_BB7B0(*(v0 + *(SpokenContext + 24)));
  if (*(v0 + *(SpokenContext + 28) + 8))
  {
    sub_BB7B0(1u);

    sub_BB030();
  }

  else
  {
    sub_BB7B0(0);
  }
}

Swift::Int LiveSpeechStore.LastSpokenContext.hashValue.getter()
{
  sub_BB790();
  sub_BB030();
  SpokenContext = type metadata accessor for LiveSpeechStore.LastSpokenContext(0);
  sub_B99C0();
  sub_7EC68(&qword_FAC08, &type metadata accessor for LiveSpeechInputMode);
  sub_BAF60();
  sub_BB7B0(*(v0 + *(SpokenContext + 24)));
  if (*(v0 + *(SpokenContext + 28) + 8))
  {
    sub_BB7B0(1u);
    sub_BB030();
  }

  else
  {
    sub_BB7B0(0);
  }

  return sub_BB7D0();
}

void sub_72914(uint64_t a1, uint64_t a2)
{
  sub_BB030();
  sub_B99C0();
  sub_7EC68(&qword_FAC08, &type metadata accessor for LiveSpeechInputMode);
  sub_BAF60();
  sub_BB7B0(*(v2 + *(a2 + 24)));
  if (*(v2 + *(a2 + 28) + 8))
  {
    sub_BB7B0(1u);

    sub_BB030();
  }

  else
  {
    sub_BB7B0(0);
  }
}

Swift::Int sub_72A18(uint64_t a1, uint64_t a2)
{
  sub_BB790();
  sub_BB030();
  sub_B99C0();
  sub_7EC68(&qword_FAC08, &type metadata accessor for LiveSpeechInputMode);
  sub_BAF60();
  sub_BB7B0(*(v2 + *(a2 + 24)));
  if (*(v2 + *(a2 + 28) + 8))
  {
    sub_BB7B0(1u);
    sub_BB030();
  }

  else
  {
    sub_BB7B0(0);
  }

  return sub_BB7D0();
}

BOOL LiveSpeechStore.shouldSendSpeechToCall.getter()
{
  v1 = sub_6E7A8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v5 > 0)
  {
    return 1;
  }

  v3 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___callManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_B9B10();

  return v5 > 0;
}

uint64_t sub_72C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[2] = sub_BB170();
  v8[3] = sub_BB160();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_72D08;

  return sub_72E44(a5, a6, a7, a8, v16, v17, v18);
}

uint64_t sub_72D08()
{

  v1 = sub_BB140();

  return _swift_task_switch(sub_80E9C, v1, v0);
}

uint64_t sub_72E44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 748) = a7;
  *(v8 + 168) = a6;
  *(v8 + 176) = v7;
  *(v8 + 747) = a4;
  *(v8 + 152) = a3;
  *(v8 + 160) = a5;
  *(v8 + 136) = a1;
  *(v8 + 144) = a2;
  v9 = sub_B9400();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();
  sub_2E50(&qword_F9878);
  *(v8 + 208) = swift_task_alloc();
  v10 = sub_2E50(&qword_F9838);
  *(v8 + 216) = v10;
  *(v8 + 224) = *(v10 - 8);
  *(v8 + 232) = swift_task_alloc();
  v11 = sub_2E50(&unk_F9880);
  *(v8 + 240) = v11;
  *(v8 + 248) = *(v11 - 8);
  *(v8 + 256) = swift_task_alloc();
  v12 = sub_B9460();
  *(v8 + 264) = v12;
  *(v8 + 272) = *(v12 - 8);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v13 = sub_B94E0();
  *(v8 + 296) = v13;
  *(v8 + 304) = *(v13 - 8);
  *(v8 + 312) = swift_task_alloc();
  v14 = sub_B9390();
  *(v8 + 320) = v14;
  *(v8 + 328) = *(v14 - 8);
  *(v8 + 336) = swift_task_alloc();
  v15 = sub_B93A0();
  *(v8 + 344) = v15;
  *(v8 + 352) = *(v15 - 8);
  *(v8 + 360) = swift_task_alloc();
  v16 = sub_B9500();
  *(v8 + 368) = v16;
  *(v8 + 376) = *(v16 - 8);
  *(v8 + 384) = swift_task_alloc();
  sub_2E50(&qword_F9840);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  v17 = sub_B9480();
  *(v8 + 408) = v17;
  *(v8 + 416) = *(v17 - 8);
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  sub_2E50(&qword_FAEE8);
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = sub_2E50(&qword_FAEF0);
  *(v8 + 456) = swift_task_alloc();
  v18 = sub_B9590();
  *(v8 + 464) = v18;
  *(v8 + 472) = *(v18 - 8);
  *(v8 + 480) = swift_task_alloc();
  v19 = sub_B92F0();
  *(v8 + 488) = v19;
  *(v8 + 496) = *(v19 - 8);
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  sub_2E50(&qword_F91F0);
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  v20 = sub_B99C0();
  *(v8 + 544) = v20;
  *(v8 + 552) = *(v20 - 8);
  *(v8 + 560) = swift_task_alloc();
  v21 = sub_B9A10();
  *(v8 + 568) = v21;
  *(v8 + 576) = *(v21 - 8);
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = sub_BB170();
  *(v8 + 640) = sub_BB160();
  v22 = sub_BB140();
  *(v8 + 648) = v22;
  *(v8 + 656) = v23;

  return _swift_task_switch(sub_7358C, v22, v23);
}

uint64_t sub_7358C()
{
  v50 = v0;
  v1 = *(v0 + 144);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 136) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = *(v0 + 168);
    sub_B95C0();

    v4 = sub_B9A00();
    v5 = sub_BB2E0();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 624);
    v8 = *(v0 + 576);
    v9 = *(v0 + 568);
    if (v6)
    {
      v48 = *(v0 + 624);
      v10 = v3;
      v12 = *(v0 + 160);
      v11 = *(v0 + 168);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v49 = v14;
      *v13 = 136315138;
      v15 = v11 == 0;
      if (v11)
      {
        v16 = v12;
      }

      else
      {
        v16 = 7104878;
      }

      if (v15)
      {
        v17 = 0xE300000000000000;
      }

      else
      {
        v17 = v10;
      }

      v18 = sub_7A1D8(v16, v17, &v49);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_0, v4, v5, "_speak(): input preferredSpeechLanguage: %s", v13, 0xCu);
      sub_28020(v14);

      v19 = *(v8 + 8);
      v19(v48, v9);
    }

    else
    {

      v19 = *(v8 + 8);
      v19(v7, v9);
    }

    *(v0 + 664) = v19;
    (*(*(v0 + 552) + 104))(*(v0 + 560), enum case for LiveSpeechInputMode.keyboard(_:), *(v0 + 544));
    sub_7EC68(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
    sub_BB0C0();
    sub_BB0C0();
    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    v24 = *(v0 + 544);
    if (*(v0 + 80) == *(v0 + 96) && *(v0 + 88) == *(v0 + 104))
    {
      (*(v23 + 8))(*(v0 + 560), *(v0 + 544));
    }

    else
    {
      v25 = sub_BB700();
      (*(v23 + 8))(v22, v24);

      if ((v25 & 1) == 0)
      {
LABEL_22:
        v37 = *(v0 + 168);
        sub_BB2C0();
        v38 = sub_BB2B0();
        v39 = direct field offset for AXSettings.liveSpeech;
        swift_beginAccess();
        v40 = *&v38[v39];
        *(v0 + 672) = v40;
        v40;

        if (!v37)
        {
          v41 = [objc_opt_self() currentLanguageCode];
          sub_BAFD0();
        }

        sub_B9290();
        v42 = swift_task_alloc();
        *(v0 + 680) = v42;
        *v42 = v0;
        v42[1] = sub_73CA0;
        v43 = *(v0 + 520);
        v44 = *(v0 + 440);

        return AXSettings.LiveSpeech.voiceSelection(preferringSpeechLocale:)(v44, v43);
      }
    }

    v26 = *(v0 + 552);
    v27 = *(v0 + 544);
    v28 = *(v0 + 536);
    v46 = *(v0 + 528);
    v47 = *(v0 + 176);
    v45 = *(v0 + 168);
    v29 = *(v0 + 747);
    v31 = *(v0 + 152);
    v30 = *(v0 + 160);
    v33 = *(v0 + 136);
    v32 = *(v0 + 144);
    SpokenContext = type metadata accessor for LiveSpeechStore.LastSpokenContext(0);
    (*(v26 + 16))(&v28[SpokenContext[5]], v31, v27);
    *v28 = v33;
    *(v28 + 1) = v32;
    v28[SpokenContext[6]] = v29;
    v35 = &v28[SpokenContext[7]];
    *v35 = v30;
    *(v35 + 1) = v45;
    (*(*(SpokenContext - 1) + 56))(v28, 0, 1, SpokenContext);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_57A0(v28, v46, &qword_F91F0);

    v36 = v47;
    sub_B9B20();
    sub_C5E8(v28, &qword_F91F0);
    goto LABEL_22;
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_73CA0()
{
  v1 = *v0;

  v2 = *(v1 + 656);
  v3 = *(v1 + 648);

  return _swift_task_switch(sub_73DF4, v3, v2);
}

uint64_t sub_73DF4()
{
  v47 = v0;
  v1 = *(v0 + 440);
  v2 = sub_2E50(&qword_FAEF8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 520);
    v5 = *(v0 + 496);
    v4 = *(v0 + 504);
    v6 = *(v0 + 488);

    sub_C5E8(v1, &qword_FAEE8);
    sub_B95C0();
    (*(v5 + 16))(v4, v3, v6);
    v7 = sub_B9A00();
    v8 = sub_BB300();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 664);
    v11 = *(v0 + 600);
    v44 = *(v0 + 568);
    v12 = *(v0 + 520);
    v14 = *(v0 + 496);
    v13 = *(v0 + 504);
    v15 = *(v0 + 488);
    if (v9)
    {
      v42 = *(v0 + 672);
      v43 = *(v0 + 520);
      v16 = swift_slowAlloc();
      v41 = v11;
      v17 = swift_slowAlloc();
      v46 = v17;
      *v16 = 136315138;
      v18 = sub_B9280();
      v40 = v10;
      v20 = v19;
      v21 = *(v14 + 8);
      v21(v13, v15);
      v22 = sub_7A1D8(v18, v20, &v46);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_0, v7, v8, "_speak(): Failed to get AXSettings selection/voiceID for preferredSpeechLanguage=%s", v16, 0xCu);
      sub_28020(v17);

      v40(v41, v44);
      v21(v43, v15);
    }

    else
    {

      v37 = *(v14 + 8);
      v37(v13, v15);
      v10(v11, v44);
      v37(v12, v15);
    }

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v24 = *(v0 + 472);
    v23 = *(v0 + 480);
    v26 = *(v0 + 456);
    v25 = *(v0 + 464);
    v27 = *(v0 + 448);
    v28 = *(v0 + 176);
    v29 = v1[1];
    v30 = *(v2 + 48);
    v31 = *(v27 + 48);
    *v26 = *v1;
    v26[1] = v29;
    v32 = *(v24 + 32);
    v32(v26 + v31, v1 + v30, v25);
    v33 = v26[1];
    v45 = *v26;
    *(v0 + 688) = v33;
    v32(v23, v26 + *(v27 + 48), v25);
    v34 = swift_task_alloc();
    *(v0 + 696) = v34;
    *(v34 + 16) = v28;
    v35 = swift_task_alloc();
    *(v0 + 704) = v35;
    *v35 = v0;
    v35[1] = sub_74384;
    v36 = *(v0 + 400);

    return AXSettings.LiveSpeech.resolvedVoice(preferringVoiceID:proposedVoiceFilter:)(v36, v45, v33, sub_80020, v34);
  }
}

uint64_t sub_74384()
{
  v1 = *v0;

  v2 = *(v1 + 656);
  v3 = *(v1 + 648);

  return _swift_task_switch(sub_74518, v3, v2);
}

uint64_t sub_74518()
{
  v110 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 400);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_C5E8(v3, &qword_F9840);
    sub_B95C0();
    v4 = sub_B9A00();
    v5 = sub_BB300();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "_speak(): Failed to find any voice for speaking. Returning", v6, 2u);
    }

    v7 = *(v0 + 664);
    v8 = *(v0 + 608);
    v9 = *(v0 + 568);
    v10 = *(v0 + 520);
    v11 = *(v0 + 488);
    v12 = *(v0 + 496);
    v13 = *(v0 + 472);
    v103 = *(v0 + 464);
    v105 = *(v0 + 480);

    v7(v8, v9);
    (*(v12 + 8))(v10, v11);
    (*(v13 + 8))(v105, v103);

    v14 = *(v0 + 8);

    return v14();
  }

  v16 = *(v0 + 520);
  v101 = *(v0 + 512);
  v17 = *(v0 + 488);
  v18 = *(v0 + 496);
  v19 = *(v0 + 432);
  v106 = *(v0 + 424);
  (*(v2 + 32))(v19, v3, v1);
  v20 = sub_B9280();
  v104 = sub_80028(v20, v21, v19);
  v23 = v22;

  sub_B95C0();
  (*(v18 + 16))(v101, v16, v17);
  v24 = v23;
  v100 = *(v2 + 16);
  v100(v106, v19, v1);

  v25 = sub_B9A00();
  v26 = sub_BB320();
  v102 = v24;

  v99 = v26;
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 664);
  v29 = *(v0 + 616);
  v107 = *(v0 + 568);
  v30 = *(v0 + 512);
  v31 = *(v0 + 488);
  v32 = *(v0 + 496);
  v33 = *(v0 + 416);
  v34 = *(v0 + 424);
  v35 = *(v0 + 408);
  if (v27)
  {
    v96 = *(v0 + 747);
    v98 = *(v0 + 664);
    v36 = swift_slowAlloc();
    v109[0] = swift_slowAlloc();
    *v36 = 136315906;
    v92 = v35;
    loga = v25;
    v37 = sub_B9280();
    v97 = v29;
    v39 = v38;
    v40 = *(v32 + 8);
    v40(v30, v31);
    v41 = sub_7A1D8(v37, v39, v109);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_7A1D8(v104, v102, v109);
    *(v36 + 22) = 2080;
    v42 = sub_B9410();
    v44 = v43;
    v45 = *(v33 + 8);
    v45(v34, v92);
    v46 = sub_7A1D8(v42, v44, v109);

    *(v36 + 24) = v46;
    *(v36 + 32) = 1024;
    *(v36 + 34) = v96;
    _os_log_impl(&dword_0, loga, v99, "_speak(): Will speak with preferredSpeechLanguage=%s resolvedSpeechLanguage=%s voice=[%s] mixToTelephonyUplink=%{BOOL}d", v36, 0x26u);
    swift_arrayDestroy();

    v98(v97, v107);
  }

  else
  {

    v45 = *(v33 + 8);
    v45(v34, v35);
    v40 = *(v32 + 8);
    v40(v30, v31);
    v28(v29, v107);
  }

  *(v0 + 720) = v45;
  *(v0 + 712) = v40;
  v47 = *(v0 + 408);
  v48 = *(v0 + 416);
  v49 = *(v0 + 392);
  v50 = *(v0 + 352);
  v51 = *(v0 + 360);
  v52 = *(v0 + 336);
  v90 = *(v0 + 344);
  log = *(v0 + 480);
  v53 = *(v0 + 328);
  v93 = *(v0 + 320);
  v108 = *(v0 + 176);
  v54 = *(v0 + 748);
  v91 = *(v0 + 144);
  v89 = *(v0 + 136);
  v100(v49, *(v0 + 432), v47);
  (*(v48 + 56))(v49, 0, 1, v47);
  v55 = &enum case for TTSSpeechQueue.IsoPrioritizedBehavior.replace(_:);
  if (!v54)
  {
    v55 = &enum case for TTSSpeechQueue.IsoPrioritizedBehavior.queueBehind(_:);
  }

  (*(v50 + 104))(v51, *v55, v90);
  v56 = swift_task_alloc();
  v56[2] = v89;
  v56[3] = v91;
  v56[4] = v108;
  v56[5] = v104;
  v56[6] = v102;
  v56[7] = log;
  (*(v53 + 104))(v52, enum case for TTSSpeechQueue.QueuingBehavior.stop(_:), v93);
  sub_2E50(&qword_F9848);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_BE370;
  sub_B94D0();
  sub_B94C0();
  sub_B94B0();
  *(v0 + 112) = v57;
  sub_7EC68(&qword_F9850, &type metadata accessor for CoreSynthesizer.Utterance.ReplacementOptions);
  sub_2E50(&qword_F9858);
  sub_D150(&qword_F9860, &qword_F9858);
  sub_BB510();
  v88 = v56;
  sub_B94F0();

  sub_B9580();
  sub_B94A0();
  *(v0 + 40) = &type metadata for LiveSpeechFeatureFlags;
  *(v0 + 48) = sub_80C5C();
  v58 = sub_B9350();
  sub_28020(v0 + 16);
  v59 = sub_71730();
  v60 = *(v0 + 747);
  if (v58)
  {
    v61 = sub_B93C0();

    *(v0 + 128) = 0;
    v62 = [v61 setPreferredMicrophoneInjectionMode:v60 error:{v0 + 128, v88}];

    v63 = *(v0 + 128);
    if (v62)
    {
      v64 = v63;
    }

    else
    {
      v65 = v63;
      sub_B9170();

      swift_willThrow();
      sub_B95C0();
      swift_errorRetain();
      v66 = sub_B9A00();
      v67 = sub_BB300();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v68 = 138412290;
        swift_errorRetain();
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v68 + 4) = v70;
        *v69 = v70;
        _os_log_impl(&dword_0, v66, v67, "_speak(): Failed to set microphone injection mode: %@", v68, 0xCu);
        sub_C5E8(v69, &qword_FA570);
      }

      else
      {
      }

      (*(v0 + 664))(*(v0 + 592), *(v0 + 568));
    }
  }

  else
  {
    sub_B93B0();
  }

  v72 = *(v0 + 280);
  v71 = *(v0 + 288);
  v73 = *(v0 + 264);
  v74 = *(v0 + 272);
  sub_B9470();
  sub_B9450();
  sub_7EC68(&qword_FAF08, &type metadata accessor for CoreSynthesizer.Voice.Trait);
  v75 = sub_BB500();
  v76 = *(v74 + 8);
  v76(v72, v73);
  v76(v71, v73);
  if ((v75 & 1) == 0)
  {
    sub_B9440();
  }

  sub_B9280();
  sub_B9990();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (*(v0 + 744) <= 1u && !*(v0 + 744))
  {

LABEL_26:
    v78 = *(v0 + 176);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 746) = 1;
    v79 = v78;
    sub_B9B20();
    goto LABEL_27;
  }

  v77 = sub_BB700();

  if (v77)
  {
    goto LABEL_26;
  }

LABEL_27:
  v81 = *(v0 + 224);
  v80 = *(v0 + 232);
  v82 = *(v0 + 216);
  v83 = sub_71730();
  sub_B9490();

  sub_BB1B0();
  (*(v81 + 8))(v80, v82);
  v84 = sub_BB160();
  *(v0 + 728) = v84;
  v85 = swift_task_alloc();
  *(v0 + 736) = v85;
  *v85 = v0;
  v85[1] = sub_752C4;
  v86 = *(v0 + 240);
  v87 = *(v0 + 208);

  return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v87, v84, &protocol witness table for MainActor, v86, v0 + 120);
}

uint64_t sub_752C4()
{
  v2 = *v1;

  v3 = *(v2 + 656);
  v4 = *(v2 + 648);
  if (v0)
  {
    v5 = sub_75844;
  }

  else
  {
    v5 = sub_75420;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_75420()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v23 = *(v0 + 720);
    v24 = *(v0 + 712);
    v22 = *(v0 + 520);
    v21 = *(v0 + 488);
    v20 = *(v0 + 432);
    v4 = *(v0 + 408);
    v5 = *(v0 + 376);
    v6 = *(v0 + 384);
    v7 = *(v0 + 368);
    v8 = *(v0 + 248);
    v9 = *(v0 + 256);
    v10 = *(v0 + 240);

    (*(v8 + 8))(v9, v10);
    (*(v5 + 8))(v6, v7);
    v23(v20, v4);
    v24(v22, v21);
    (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 200);
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    (*(v3 + 32))(v13, v1, v2);
    sub_761C4(v13, v15, v14);
    (*(v3 + 8))(v13, v2);
    v16 = sub_BB160();
    *(v0 + 728) = v16;
    v17 = swift_task_alloc();
    *(v0 + 736) = v17;
    *v17 = v0;
    v17[1] = sub_752C4;
    v18 = *(v0 + 240);
    v19 = *(v0 + 208);

    return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v19, v16, &protocol witness table for MainActor, v18, v0 + 120);
  }
}

uint64_t sub_75844()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);

  (*(v2 + 8))(v1, v3);
  sub_B95C0();
  swift_errorRetain();
  v4 = sub_B9A00();
  v5 = sub_BB300();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v5, "_speak(): Speech error: %@", v6, 0xCu);
    sub_C5E8(v7, &qword_FA570);
  }

  v24 = *(v0 + 720);
  v25 = *(v0 + 712);
  v19 = *(v0 + 672);
  v9 = *(v0 + 664);
  v10 = *(v0 + 584);
  v11 = *(v0 + 568);
  v23 = *(v0 + 520);
  v22 = *(v0 + 488);
  v20 = *(v0 + 408);
  v21 = *(v0 + 432);
  v12 = *(v0 + 376);
  v18 = *(v0 + 384);
  v13 = *(v0 + 368);
  v14 = *(v0 + 176);

  v9(v10, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 745) = 0;
  v15 = v14;
  sub_B9B20();

  (*(v12 + 8))(v18, v13);
  v24(v21, v20);
  v25(v23, v22);
  (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_75C84()
{
  v0 = sub_B9A10();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_B9460();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  sub_B9470();
  sub_B9450();
  sub_7EC68(&qword_FAF08, &type metadata accessor for CoreSynthesizer.Voice.Trait);
  v11 = sub_BB500();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if ((v11 & 1) == 0)
  {
    return 1;
  }

  v13 = sub_6E848();
  v14 = sub_B9A40();

  if ((v14 & 1) == 0)
  {
    return 1;
  }

  sub_B95C0();
  v15 = sub_B9A00();
  v16 = sub_BB320();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "_speak(): Preferred voice was Personal Voice, but cannot use because device is locked. Falling back to system voice", v17, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_75F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v19[1] = a4;
  v19[2] = a5;
  v8 = sub_B9560();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v19 - v13;

  sub_B9570();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a1;
  v15[4] = a2;

  v16 = a3;
  sub_B9550();

  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_B9380();
  v17(v14, v8);
  sub_45F6C(v21, v21[3]);
  sub_B9370();
  sub_B9540();
  sub_28020(v20);
  sub_28020(v21);
  sub_B9530();
  return sub_28020(v22);
}

uint64_t sub_7612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v6 = a5;
  return sub_B9B20();
}

uint64_t sub_761C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v45 = a2;
  *(&v45 + 1) = a3;
  v5 = sub_B9A10();
  v46 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  v17 = sub_B9400();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for CoreSynthesizer.Event.preempted(_:) || v22 == enum case for CoreSynthesizer.Event.buffer(_:))
  {
    return (*(v18 + 8))(v21, v17);
  }

  if (v22 == enum case for CoreSynthesizer.Event.finished(_:))
  {
    v24 = v3;
    sub_B95C0();
    v25 = sub_B9A00();
    v26 = sub_BB320();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "speech did finish.", v27, 2u);
    }

    (*(v46 + 8))(v7, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v47) = 0;
    v28 = v24;
    sub_B9B20();
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = 0u;
    v48 = 0u;
    v29 = v28;
    return sub_B9B20();
  }

  if (v22 == enum case for CoreSynthesizer.Event.started(_:))
  {
    v30 = v3;
    sub_B95C0();
    v31 = sub_B9A00();
    v32 = sub_BB320();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "speech did start.", v33, 2u);
    }

    (*(v46 + 8))(v16, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v47) = 2;
    v34 = v30;
    sub_B9B20();
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = v45;
    v48 = vdupq_n_s64(0xFuLL);
    v34;

    return sub_B9B20();
  }

  if (v22 != enum case for CoreSynthesizer.Event.paused(_:))
  {
    if (v22 != enum case for CoreSynthesizer.Event.resumed(_:))
    {
      return (*(v18 + 8))(v21, v17);
    }

    v40 = v3;
    sub_B95C0();
    v41 = sub_B9A00();
    v42 = sub_BB320();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "speech did continue.", v43, 2u);
    }

    (*(v46 + 8))(v10, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v47) = 2;
    v44 = v40;
    return sub_B9B20();
  }

  v35 = v3;
  sub_B95C0();
  v36 = sub_B9A00();
  v37 = sub_BB320();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "speech did pause.", v38, 2u);
  }

  v39 = (*(v46 + 8))(v13, v5);
  __chkstk_darwin(v39);
  *(&v45 - 2) = v35;
  sub_BAE30();
  sub_B9D80();
}

uint64_t sub_76840(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_B9B20();
}

uint64_t sub_768B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_BB170();
  v4[19] = sub_BB160();
  v6 = sub_BB140();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_76950, v6, v5);
}

uint64_t sub_76950()
{
  v1 = sub_71730();
  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_76A7C;
  v2 = swift_continuation_init();
  v0[17] = sub_2E50(&qword_F9FC0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_44744;
  v0[13] = &unk_F1CF0;
  v0[14] = v2;
  [v1 pauseSpeakingAt:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_76A7C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return _swift_task_switch(sub_76B84, v2, v1);
}

uint64_t sub_76B84()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_76BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_BB170();
  v4[3] = sub_BB160();
  v6 = sub_BB140();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_76C84, v6, v5);
}

uint64_t sub_76C84()
{
  *(v0 + 48) = sub_71730();
  v3 = (&async function pointer to dispatch thunk of CoreSynthesizer.stop() + async function pointer to dispatch thunk of CoreSynthesizer.stop());
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_76D34;

  return v3();
}

uint64_t sub_76D34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_76E74, v4, v3);
}

uint64_t sub_76E74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_76EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_BB1A0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_BB170();
  v8 = v2;
  v9 = sub_BB160();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_6A2B8(0, 0, v6, a2, v10);
}

uint64_t sub_77014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_BB170();
  v4[3] = sub_BB160();
  v6 = sub_BB140();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_770AC, v6, v5);
}

uint64_t sub_770AC()
{
  *(v0 + 48) = sub_71730();
  v3 = (&async function pointer to dispatch thunk of CoreSynthesizer.stop() + async function pointer to dispatch thunk of CoreSynthesizer.stop());
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_7715C;

  return v3();
}

uint64_t sub_7715C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_80E9C, v4, v3);
}

uint64_t sub_7729C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_7731C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_B9B20();
}

uint64_t sub_773D8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v19 - v13;
  v15 = *(v8 + 16);
  v15(&v19 - v13, a1, v7, v12);
  v16 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  (v15)(v10, v14, v7);
  v17 = v16;
  sub_B9B20();
  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_77564(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAE90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_2E50(&qword_FAB88);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t LiveSpeechStore.nextInputMode.getter@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v1 = sub_B99C0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v8 = enum case for LiveSpeechInputMode.keyboard(_:);
  v13 = *(v2 + 104);
  v13(v5, enum case for LiveSpeechInputMode.keyboard(_:), v1);
  sub_7EC68(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
  sub_BB0C0();
  sub_BB0C0();
  if (v17 == v15 && v18 == v16)
  {
    v9 = *(v2 + 8);
    v9(v5, v1);
    v9(v7, v1);

LABEL_5:
    v8 = enum case for LiveSpeechInputMode.favoritePhrases(_:);
    return v13(v14, v8, v1);
  }

  v10 = sub_BB700();
  v11 = *(v2 + 8);
  v11(v5, v1);
  v11(v7, v1);

  if (v10)
  {
    goto LABEL_5;
  }

  return v13(v14, v8, v1);
}

uint64_t sub_7796C(void *a1)
{
  v17 = a1;
  v1 = sub_B99C0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v16 - v7;
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  LiveSpeechStore.nextInputMode.getter(&v16 - v9);
  v11 = *(v2 + 16);
  v11(v8, v10, v1);
  swift_getKeyPath();
  swift_getKeyPath();
  v11(v5, v8, v1);
  v12 = v17;
  sub_B9B20();
  v13 = *(v2 + 8);
  v13(v8, v1);
  sub_B9980();
  v14 = sub_B9950();
  v11(v8, v10, v1);
  sub_B9970();

  return (v13)(v10, v1);
}

uint64_t LiveSpeechStore.audioDestinationText.getter()
{
  v1 = 1819042115;
  v2 = sub_6E7A8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v6 <= 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___callManager);
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    sub_B9B10();

    return 0x656369766544;
  }

  return v1;
}

uint64_t LiveSpeechStore.audioDestinationIcon.getter()
{
  v1 = sub_6E7A8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v5 > 0)
  {
    return 0x656E6F6870;
  }

  v3 = *(v0 + OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___callManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_B9B10();

  return 0x2E72656B61657073;
}

uint64_t sub_77DBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();
}

uint64_t sub_77E34(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for LiveSpeechTextInputSupportedLocales(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_7E5F4(a1, &v13 - v8);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_7E5F4(v9, v6);
  v11 = v10;
  sub_B9B20();
  return sub_35D14(v9);
}

uint64_t sub_77F48(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAE88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_2E50(&qword_FAB80);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t LiveSpeechStore.currentInputModeID.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1;
}

double sub_78140@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_781C0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_B9B20();
}

uint64_t sub_7825C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_2E50(a2);
  sub_B9AE0();
  return swift_endAccess();
}

uint64_t sub_782D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_2E50(a5);
  sub_B9AE0();
  return swift_endAccess();
}

uint64_t sub_78350(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAE80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_2E50(&qword_FAB78);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

BOOL sub_784D4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_B9250();
    ++v2;
    sub_7EC68(&qword_FAEE0, &type metadata accessor for Locale.LanguageCode);
  }

  while ((sub_BAF90() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_785E0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2E50(&qword_FAB08);
  __chkstk_darwin(v4 - 8);
  v42 = v37 - v5;
  v6 = sub_B9250();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_B9A10();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B95E0();
  v13 = *(v7 + 16);
  v43 = a1;
  v38 = v13;
  v39 = v7 + 16;
  v13(v9, a1, v6);
  v14 = v1;
  v15 = sub_B9A00();
  v16 = sub_BB320();

  v17 = os_log_type_enabled(v15, v16);
  v40 = v6;
  v41 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v37[1] = ObjectType;
    v19 = v18;
    v37[0] = swift_slowAlloc();
    v47[0] = v37[0];
    *v19 = 136315650;
    *(v19 + 4) = sub_7A1D8(0xD00000000000002ELL, 0x80000000000C6490, v47);
    *(v19 + 12) = 2080;
    v20 = sub_B9240();
    v21 = v7;
    v23 = v22;
    (*(v21 + 8))(v9, v6);
    v24 = sub_7A1D8(v20, v23, v47);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v46)
    {
      v25 = v45;
    }

    else
    {
      v25 = 0x3E6C696E3CLL;
    }

    if (v46)
    {
      v26 = v46;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = sub_7A1D8(v25, v26, v47);

    *(v19 + 24) = v27;
    _os_log_impl(&dword_0, v15, v16, "%s - language=%s currentInputModeID=%s", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  (*(v10 + 8))(v12, v44);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v29 = v46;
  if (v46)
  {
    v30 = v45;
    sub_BB2C0();
    v31 = sub_BB2B0();
    v32 = direct field offset for AXSettings.liveSpeech;
    swift_beginAccess();
    v33 = *&v31[v32];

    v34 = v42;
    v35 = v40;
    v38(v42, v43, v40);
    (*(v41 + 56))(v34, 0, 1, v35);
    v36 = sub_BB280();
    sub_6C120(v34, v30, v29);
    v36(&v45, 0);

    sub_7EC68(&qword_F8390, type metadata accessor for LiveSpeechStore);
    sub_B9AA0();
    sub_B9AC0();
  }

  return result;
}

void *sub_78B20()
{
  v0 = sub_B9250();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v66 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v57 - v4;
  v6 = sub_2E50(&qword_FAB08);
  v61 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v67 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v64 = (&v57 - v9);
  __chkstk_darwin(v10);
  v63 = &v57 - v11;
  v69 = sub_B92D0();
  v62 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_B92F0();
  v70 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  v19 = type metadata accessor for LiveSpeechTextInputSupportedLocales(0);
  __chkstk_darwin(v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v60 = v1;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = *v21;
      v24 = *(*v21 + 16);
      if (v24)
      {
        v25 = *(v70 + 16);
        v26 = (*(v70 + 80) + 32) & ~*(v70 + 80);
        v57 = *v21;
        v27 = v23 + v26;
        v63 = *(v70 + 72);
        v64 = v25;
        v70 += 16;
        v28 = (v70 - 8);
        v29 = v1;
        v30 = (v1 + 48);
        v61 = v29 + 32;
        ++v62;
        v65 = _swiftEmptyArrayStorage;
        v31 = v0;
        v58 = v13;
        v59 = v0;
        v25(v15, v27, v13);
        while (1)
        {
          v32 = v68;
          sub_B92E0();
          v33 = v13;
          v34 = v67;
          sub_B92C0();
          v35 = v32;
          v36 = v34;
          v13 = v33;
          (*v62)(v35, v69);
          (*v28)(v15, v33);
          if ((*v30)(v36, 1, v31) == 1)
          {
            sub_C5E8(v36, &qword_FAB08);
          }

          else
          {
            v37 = *v61;
            (*v61)(v66, v36, v31);
            v38 = v65;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = sub_79E74(0, v38[2] + 1, 1, v38);
            }

            v40 = v38[2];
            v39 = v38[3];
            if (v40 >= v39 >> 1)
            {
              v38 = sub_79E74(v39 > 1, v40 + 1, 1, v38);
            }

            v38[2] = v40 + 1;
            v41 = (*(v60 + 80) + 32) & ~*(v60 + 80);
            v65 = v38;
            v31 = v59;
            (v37)(v38 + v41 + *(v60 + 72) * v40, v66);
            v13 = v58;
          }

          v27 += v63;
          if (!--v24)
          {
            break;
          }

          v64(v15, v27, v13);
        }

        v50 = v65;
      }

      else
      {

        v50 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v50 = sub_B9360();
    }
  }

  else
  {
    v42 = v5;
    (*(v70 + 32))(v18, v21, v13);
    sub_2E50(&qword_FAE50);
    v43 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v44 = swift_allocObject();
    v45 = v68;
    sub_B92E0();
    sub_B92C0();
    v62[1](v45, v69);
    v46 = v63;
    sub_57A0(v44 + v43, v63, &qword_FAB08);
    v47 = v46;
    v48 = v64;
    sub_7FDE0(v47, v64);
    v49 = v18;
    if ((*(v1 + 48))(v48, 1, v0) == 1)
    {
      sub_C5E8(v48, &qword_FAB08);
      v50 = _swiftEmptyArrayStorage;
    }

    else
    {
      v51 = *(v1 + 32);
      v51(v42, v48, v0);
      v52 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_79E74(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v54 = v52[2];
      v53 = v52[3];
      v55 = v52;
      if (v54 >= v53 >> 1)
      {
        v55 = sub_79E74(v53 > 1, v54 + 1, 1, v52);
      }

      *(v55 + 16) = v54 + 1;
      v50 = v55;
      v51((v55 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v54), v42, v0);
      v49 = v18;
    }

    (*(v70 + 8))(v49, v13);
    swift_setDeallocating();
    sub_C5E8(v44 + v43, &qword_FAB08);
    swift_deallocClassInstance();
  }

  v71 = v50;

  sub_70B1C(&v71);

  return v71;
}

uint64_t sub_79918@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_B9AA0();
  *a1 = result;
  return result;
}

uint64_t sub_799D0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_B9B20();
}

uint64_t sub_79B08(uint64_t a1)
{
  v3 = *(sub_B99C0() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v11 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(v1 + v4 + *(v3 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B84;

  return sub_72C04(a1, v12, v11, v5, v6, v7, v1 + v4, v8);
}

char *sub_79C64(char *result, int64_t a2, char a3, char *a4)
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
    sub_2E50(&qword_FAE58);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_79D68(char *result, int64_t a2, char a3, char *a4)
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
    sub_2E50(&qword_FAEC8);
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

size_t sub_79E74(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2E50(&qword_FAE60);
  v10 = *(sub_B9250() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_B9250() - 8);
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

char *sub_7A04C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2E50(&qword_FAE78);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_7A150(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_2E50(&unk_FA5C0);
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

unint64_t sub_7A1D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_7A2A4(v11, 0, 0, 1, a1, a2);
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
    sub_3ADF4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_28020(v11);
  return v7;
}

unint64_t sub_7A2A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_7A3B0(a5, a6);
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
    result = sub_BB5B0();
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

char *sub_7A3B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_7A3FC(a1, a2);
  sub_7A52C(&off_EF630);
  return v3;
}

char *sub_7A3FC(uint64_t a1, unint64_t a2)
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

  v6 = sub_7A618(v5, 0);
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

  result = sub_BB5B0();
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
        v10 = sub_BB070();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_7A618(v10, 0);
        result = sub_BB560();
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

uint64_t sub_7A52C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_7A68C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_7A618(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_2E50(&qword_FAED8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_7A68C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2E50(&qword_FAED8);
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

uint64_t sub_7A784(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_BB650();
  }

  return sub_BB5A0();
}

void sub_7A7E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_BB340();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2E50(&unk_FA5C0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

Swift::Int sub_7A8CC(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_BB6C0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_BB3E0();
        v6 = sub_BB120();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_7AF84(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_7AAFC(0, v2, 1, a1);
  }

  return result;
}

void sub_7A9D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_BB6C0(v2);
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
        sub_B9250();
        v6 = sub_BB120();
        v6[2] = v5;
      }

      v7 = *(sub_B9250() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_7B784(v8, v9, a1, v4);
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
    sub_7AC78(0, v2, 1, a1);
  }
}

uint64_t sub_7AAFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 name];
      v11 = sub_BAFD0();
      v13 = v12;

      v14 = [v9 name];
      v15 = sub_BAFD0();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_BB700();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_7AC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_B9250();
  __chkstk_darwin(v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v34 - v11;
  v14 = __chkstk_darwin(v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_B9240();
      v27 = v26;
      if (v25 == sub_B9240() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_BB700();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_7AF84(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_7C340((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_7CE54(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_7CDC8(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_7CE54(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 name];
      v16 = sub_BAFD0();
      v18 = v17;

      v19 = [v14 name];
      v20 = sub_BAFD0();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_BB700();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 name];
          v5 = sub_BAFD0();
          v29 = v28;

          v30 = [v26 name];
          v31 = sub_BAFD0();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_BB700();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_79C64(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_79C64((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
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
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_7C340((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_7CE54(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_7CDC8(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 name];
    v5 = sub_BAFD0();
    v51 = v50;

    v52 = [v48 name];
    v53 = sub_BAFD0();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_BB700();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

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
}

void sub_7B784(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_B9250();
  __chkstk_darwin(v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v150 = &v129 - v12;
  __chkstk_darwin(v13);
  v155 = &v129 - v14;
  __chkstk_darwin(v15);
  v154 = &v129 - v16;
  __chkstk_darwin(v17);
  v147 = &v129 - v18;
  __chkstk_darwin(v19);
  v146 = &v129 - v20;
  __chkstk_darwin(v21);
  v134 = &v129 - v22;
  v25 = __chkstk_darwin(v23);
  v133 = &v129 - v26;
  v27 = *(a3 + 1);
  v144 = v24;
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_7C72C(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v29], v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_7CE54(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v29;
          v156 = a3;
          sub_7CDC8(v123 - 1);
          v29 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_7CE54(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = _swiftEmptyArrayStorage;
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = &v32[v33 * v31];
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, &v32[v33 * v30], v9);
      v31 = sub_B9240();
      v37 = v36;
      v38 = sub_B9240();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_BB700();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = &v32[v42];
      v44 = v145 * v5;
      v45 = &v32[v145 * v5];
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_B9240();
        v52 = v51;
        if (v50 == sub_B9240() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_BB700();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = a3 + 1;
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              (v149)(v139, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v149)(v57 + v6, v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_79C64(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_79C64((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_7C72C(&v118[*(v144 + 72) * v119], &v118[*(v144 + 72) * v120], &v118[*(v144 + 72) * v29], v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_7CE54(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v156 = a3;
        sub_7CDC8(v31);
        v29 = v156;
        v77 = *(v156 + 16);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = &v60[v31 * v61];
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_B9240();
    v69 = v68;
    if (v5 == sub_B9240() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_BB700();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
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

uint64_t sub_7C340(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 name];
        v38 = sub_BAFD0();
        v40 = v39;

        v41 = [v36 name];
        v42 = sub_BAFD0();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = sub_BB700();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 name];
        v18 = sub_BAFD0();
        v20 = v19;

        v21 = [v16 name];
        v22 = sub_BAFD0();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_BB700();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

void sub_7C72C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v70 = sub_B9250();
  v8 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v58 - v11;
  __chkstk_darwin(v12);
  v69 = &v58 - v13;
  __chkstk_darwin(v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = (a2 - a1) / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v21;
    if (v21 < 1)
    {
      v43 = a4 + v21;
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = a4 + v21;
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = (a2 + v41);
          v68 = (a2 + v41);
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_B9240();
            v51 = v50;
            if (v49 == sub_B9240() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_BB700();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = (a4 + v20);
    v71 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_B9240();
        v31 = v30;
        if (v29 == sub_B9240() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_BB700();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = v25 + v65;
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 += v65;
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_7CE68(&v73, &v72, &v71);
}

uint64_t sub_7CDC8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_7CE54(v3);
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

uint64_t sub_7CE68(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_B9250();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_7CF4C(uint64_t a1, uint64_t a2)
{
  sub_BB790();
  sub_BB030();
  v4 = sub_BB7D0();

  return sub_7D0E0(a1, a2, v4);
}

unint64_t sub_7CFC8(uint64_t a1)
{
  sub_BAFD0();
  sub_BB790();
  sub_BB030();
  v2 = sub_BB7D0();

  return sub_7D198(a1, v2);
}

unint64_t sub_7D058(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BB530(*(v2 + 40));

  return sub_7D29C(a1, v4);
}

unint64_t sub_7D09C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BB480(*(v2 + 40));

  return sub_7D364(a1, v4);
}

unint64_t sub_7D0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_BB700())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_7D198(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_BAFD0();
      v8 = v7;
      if (v6 == sub_BAFD0() && v8 == v9)
      {
        break;
      }

      v11 = sub_BB700();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_7D29C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_7FD84(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_BB540();
      sub_3ADA0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_7D364(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_7FEB0();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_BB490();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_7D428(char *a1, int64_t a2, char a3)
{
  result = sub_7D4AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_7D448(size_t a1, int64_t a2, char a3)
{
  result = sub_7D5B8(a1, a2, a3, *v3, &qword_FAB28, &unk_C1360, &type metadata accessor for Locale);
  *v3 = result;
  return result;
}

char *sub_7D48C(char *a1, int64_t a2, char a3)
{
  result = sub_7D794(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_7D4AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2E50(&qword_FAED0);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_7D5B8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2E50(a5);
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

char *sub_7D794(char *result, int64_t a2, char a3, char *a4)
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
    sub_2E50(&qword_FAE48);
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

uint64_t sub_7D898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_7CF4C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_44FA8();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_B9250();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_7DA08(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_B9250();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_7DA08(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_BB520() + 1) & ~v5;
    while (1)
    {
      sub_BB790();

      sub_BB030();
      v9 = sub_BB7D0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_B9250() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_7DBF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_7CF4C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_44FA8();
      goto LABEL_7;
    }

    sub_449B4(v15, a4 & 1);
    v26 = sub_7CF4C(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_BB730();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_B9250();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_7DD74(v12, a2, a3, a1, v18);
}

uint64_t sub_7DD74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_B9250();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t (*sub_7DEC4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_BB590();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_80E70;
  }

  __break(1u);
  return result;
}

void (*sub_7DF44(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_BB590();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_7DFC4;
  }

  __break(1u);
  return result;
}

id sub_7E01C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers;
  result = [*(a2 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers) containsObject:a1];
  if (result)
  {
    if (*(a2 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_callCenter))
    {
      return result;
    }
  }

  else
  {
    [*(a2 + v4) addObject:a1];
    [*(a2 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_newObservers) addObject:a1];
    if (*(a2 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_callCenter))
    {
      return sub_B6A10(0x100000000);
    }
  }

  return sub_B67FC();
}

uint64_t sub_7E0DC(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v10 = result;
    v4 = sub_BB650();
    result = v10;
    v5 = -v4;
    if (!__OFSUB__(0, v4))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_32;
  }

LABEL_4:
  v6 = -result;
  if (v5 > 0 || v5 <= v6)
  {
    v7 = v4 - result;
    if (__OFADD__(v4, v6))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v4 < v7)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = 0;
    if (!v3)
    {
LABEL_8:
      result = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_13;
    }
  }

  result = sub_BB650();
LABEL_13:
  if (result < v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v3)
  {
    result = sub_BB650();
  }

  else
  {
    result = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  if (result < v4)
  {
    goto LABEL_35;
  }

  if (v4 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v2 & 0xC000000000000001) == 0 || v7 == v4)
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v7 < v4)
  {
    sub_BB340();

    v8 = v7;
    do
    {
      v9 = v8 + 1;
      sub_BB580(v8);
      v8 = v9;
    }

    while (v4 != v9);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return sub_BB660();
  }

LABEL_40:
  __break(1u);
  return result;
}

char *sub_7E29C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_BB3E0();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_BB650();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_BB650();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_7E3B8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_BB650();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_BB650();
  }

  else
  {
    v12 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_5B428(result, 1);

  return sub_7E29C(v6, v5, 1, v3);
}

uint64_t sub_7E4EC()
{
  v1 = sub_B99C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 25, v3 | 7);
}

uint64_t sub_7E5F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechTextInputSupportedLocales(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s19LiveSpeechUIService0aB5StoreC17LastSpokenContextV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_BB700() & 1) == 0)
  {
    return 0;
  }

  SpokenContext = type metadata accessor for LiveSpeechStore.LastSpokenContext(0);
  sub_B99C0();
  sub_7EC68(&qword_F99E0, &type metadata accessor for LiveSpeechInputMode);
  sub_BB0C0();
  sub_BB0C0();
  if (v15 == v13 && v16 == v14)
  {
  }

  else
  {
    v6 = sub_BB700();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + *(SpokenContext + 24)) == *(a2 + *(SpokenContext + 24)))
  {
    v8 = *(SpokenContext + 28);
    v9 = (a1 + v8);
    v10 = *(a1 + v8 + 8);
    v11 = (a2 + v8);
    v12 = v11[1];
    if (v10)
    {
      if (!v12 || (*v9 != *v11 || v10 != v12) && (sub_BB700() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t _s19LiveSpeechUIService0aB8FavoriteV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_BB700(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (sub_BB700() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_7E8A4(uint64_t a1)
{
  if (a1 > 49)
  {
    if (a1 != 50)
    {
      if (a1 == 100)
      {
        return 2;
      }

      return 4;
    }

    return 1;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 10)
      {
        return 0;
      }

      return 4;
    }

    return 3;
  }
}

uint64_t sub_7E8F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_7FEB0();
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
  result = sub_BB650();
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
    result = sub_BB650();
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

uint64_t sub_7E9F4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *(&dword_10 + (*v3 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_BB650();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_BB650();
  }

  else
  {
    v9 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_5B428(result, 1);

  return sub_7E8F4(v4, v2, 0);
}

uint64_t _s19LiveSpeechUIService0aB5StoreC0B5StateO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_EF6D0;
  v6._object = a2;
  v4 = sub_BB6B0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_7EB70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7EBB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B84;

  return sub_77014(a1, v4, v5, v6);
}

uint64_t sub_7EC68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_7ECC0()
{
  result = qword_FAC10;
  if (!qword_FAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FAC10);
  }

  return result;
}

unint64_t sub_7ED18()
{
  result = qword_FAC18;
  if (!qword_FAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FAC18);
  }

  return result;
}

unint64_t sub_7ED70()
{
  result = qword_FAC20;
  if (!qword_FAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FAC20);
  }

  return result;
}

void sub_7F074()
{
  sub_B92F0();
  if (v0 <= 0x3F)
  {
    sub_7F79C(319, &unk_FACB0, &type metadata accessor for Locale, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_7F140()
{
  sub_7F800(319, &qword_FAD18, &qword_FAB18);
  if (v0 <= 0x3F)
  {
    sub_7F800(319, &qword_FAD20, &qword_F8AB8);
    if (v1 <= 0x3F)
    {
      sub_7F800(319, &qword_FAD28, &unk_FA5D0);
      if (v2 <= 0x3F)
      {
        sub_7F79C(319, &qword_FAD30, &type metadata accessor for LiveSpeechCategory, &type metadata accessor for Published);
        if (v3 <= 0x3F)
        {
          sub_7F800(319, &qword_FAD38, &qword_FA5E0);
          if (v4 <= 0x3F)
          {
            sub_7FB3C(319, &qword_FAD40, &type metadata for LiveSpeechMaxRecentsOption, &type metadata accessor for Published);
            if (v5 <= 0x3F)
            {
              sub_7FB3C(319, &qword_FAD48, &type metadata for Bool, &type metadata accessor for Published);
              if (v6 <= 0x3F)
              {
                sub_7F79C(319, &qword_FAD50, &type metadata accessor for LiveSpeechPhrase, &type metadata accessor for Published);
                if (v7 <= 0x3F)
                {
                  sub_7FB3C(319, &qword_FAD58, &type metadata for LiveSpeechStore.SpeechState, &type metadata accessor for Published);
                  if (v8 <= 0x3F)
                  {
                    sub_7F800(319, &qword_FAD60, &qword_FABE8);
                    if (v9 <= 0x3F)
                    {
                      sub_7F800(319, &qword_FAD68, &qword_F91F0);
                      if (v10 <= 0x3F)
                      {
                        sub_7F79C(319, &qword_FAD70, &type metadata accessor for Date, &type metadata accessor for Published);
                        if (v11 <= 0x3F)
                        {
                          sub_7FB3C(319, &qword_FAD78, &type metadata for String, &type metadata accessor for Published);
                          if (v12 <= 0x3F)
                          {
                            sub_7F79C(319, &qword_FAD80, &type metadata accessor for LiveSpeechInputMode, &type metadata accessor for Published);
                            if (v13 <= 0x3F)
                            {
                              sub_7F79C(319, &qword_FAD88, type metadata accessor for LiveSpeechTextInputSupportedLocales, &type metadata accessor for Published);
                              if (v14 <= 0x3F)
                              {
                                sub_7F800(319, &qword_FAD90, &qword_F86B0);
                                if (v15 <= 0x3F)
                                {
                                  swift_updateClassMetadata2();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_7F79C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_7F800(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_5520(a3);
    v4 = sub_B9B30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_7F868(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_7F8B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7F918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_B99C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_7F9D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_B99C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_7FA7C()
{
  sub_B99C0();
  if (v0 <= 0x3F)
  {
    sub_7FB3C(319, &qword_F8CD8, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_7FB3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_7FB90(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_7FC24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_7FD2C()
{
  result = qword_FAE40;
  if (!qword_FAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FAE40);
  }

  return result;
}

uint64_t sub_7FDE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E50(&qword_FAB08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_7FEB0()
{
  result = qword_FA008;
  if (!qword_FA008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_FA008);
  }

  return result;
}

uint64_t sub_7FF30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7FF68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_CA7C;

  return sub_2F5F8(a1, v4);
}

uint64_t sub_80028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = sub_B92D0();
  v88 = *(v104 - 8);
  __chkstk_darwin(v104);
  v86 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v101 = &v83 - v6;
  __chkstk_darwin(v7);
  v100 = &v83 - v8;
  v9 = sub_2E50(&qword_FAB08);
  __chkstk_darwin(v9 - 8);
  v87 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = &v83 - v12;
  __chkstk_darwin(v13);
  v98 = &v83 - v14;
  v15 = sub_2E50(&qword_FA5A0);
  __chkstk_darwin(v15 - 8);
  v102 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v83 - v18;
  v20 = sub_B92F0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v84 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v85 = &v83 - v24;
  __chkstk_darwin(v25);
  v105 = &v83 - v26;
  __chkstk_darwin(v27);
  v29 = &v83 - v28;
  __chkstk_darwin(v30);
  v32 = &v83 - v31;
  __chkstk_darwin(v33);
  v35 = &v83 - v34;

  sub_B9290();
  v90 = v35;
  sub_B9270();
  v89 = a3;
  sub_B9430();
  v36 = sub_45F6C(v106, v107);
  v37 = __chkstk_darwin(v36);
  (*(v39 + 16))(&v83 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2FFC0(v108);
  sub_BB0B0();
  sub_28020(v106);
  v40 = (v21 + 32);
  v41 = (v21 + 8);
  v42 = (v21 + 48);
  while (1)
  {
    sub_67E6C(v108, AssociatedTypeWitness);
    sub_BB4E0();
    v43 = *v42;
    if ((*v42)(v19, 1, v20) == 1)
    {
      break;
    }

    (*v40)(v29, v19, v20);
    v44 = sub_B9230();
    v46 = v45;
    if (v44 == sub_B9230() && v46 == v47)
    {

LABEL_11:
      v63 = sub_B9230();
      v64 = *v41;
      (*v41)(v29, v20);
      goto LABEL_12;
    }

    v48 = sub_BB700();

    if (v48)
    {
      goto LABEL_11;
    }

    (*v41)(v29, v20);
  }

  sub_28020(v108);
  sub_B9430();
  v49 = sub_45F6C(v106, v107);
  v97 = v40;
  v50 = __chkstk_darwin(v49);
  (*(v52 + 16))(&v83 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0), v50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2FFC0(v108);
  sub_BB0B0();
  v53 = v97;
  sub_28020(v106);
  sub_67E6C(v108, AssociatedTypeWitness);
  v54 = v102;
  sub_BB4E0();
  v95 = v42;
  if (v43(v54, 1, v20) == 1)
  {
LABEL_8:
    sub_28020(v108);
    v55 = v85;
    sub_B9420();
    v56 = v86;
    sub_B92E0();
    v57 = *v41;
    (*v41)(v55, v20);
    v58 = v87;
    sub_B92C0();
    (*(v88 + 8))(v56, v104);
    v59 = sub_B9250();
    v60 = v20;
    v61 = *(v59 - 8);
    if ((*(v61 + 48))(v58, 1, v59) == 1)
    {
      sub_C5E8(v58, &qword_FAB08);
      v62 = v84;
      sub_B9420();
      v63 = sub_B9230();
      v57(v62, v60);
    }

    else
    {
      v63 = sub_B9240();
      (*(v61 + 8))(v58, v59);
    }

    v57(v32, v60);
    v57(v90, v60);
    return v63;
  }

  v91 = *v53;
  v103 = (v88 + 8);
  v93 = v20;
  v94 = v32;
  v92 = v41;
  v91(v105, v54, v20);
  while (1)
  {
    v67 = v100;
    sub_B92E0();
    v68 = v98;
    sub_B92C0();
    v69 = *v103;
    (*v103)(v67, v104);
    v70 = sub_B9250();
    v71 = *(v70 - 8);
    v72 = *(v71 + 48);
    if (v72(v68, 1, v70) == 1)
    {
      sub_C5E8(v68, &qword_FAB08);
      v96 = 0;
      v73 = 0;
    }

    else
    {
      v96 = sub_B9240();
      v73 = v74;
      (*(v71 + 8))(v68, v70);
    }

    v75 = v101;
    sub_B92E0();
    v76 = v99;
    sub_B92C0();
    v69(v75, v104);
    if (v72(v76, 1, v70) == 1)
    {
      sub_C5E8(v76, &qword_FAB08);
      v32 = v94;
      v20 = v93;
      v41 = v92;
      if (!v73)
      {
        goto LABEL_34;
      }

      goto LABEL_15;
    }

    v77 = sub_B9240();
    v79 = v78;
    (*(v71 + 8))(v76, v70);
    v32 = v94;
    if (!v73)
    {
      v20 = v93;
      v41 = v92;
      if (!v79)
      {
        goto LABEL_34;
      }

LABEL_15:

      goto LABEL_16;
    }

    v20 = v93;
    v41 = v92;
    if (!v79)
    {
      goto LABEL_15;
    }

    if (v96 == v77 && v73 == v79)
    {
      break;
    }

    v80 = sub_BB700();

    if (v80)
    {
      goto LABEL_34;
    }

LABEL_16:
    v65 = v105;
    (*v41)(v105, v20);
    sub_67E6C(v108, AssociatedTypeWitness);
    v66 = v102;
    sub_BB4E0();
    if (v43(v66, 1, v20) == 1)
    {
      goto LABEL_8;
    }

    v91(v65, v66, v20);
  }

LABEL_34:
  v82 = v105;
  v63 = sub_B9230();
  v64 = *v41;
  (*v41)(v82, v20);
LABEL_12:
  v64(v32, v20);
  v64(v90, v20);
  sub_28020(v108);
  return v63;
}

unint64_t sub_80C5C()
{
  result = qword_FAF00;
  if (!qword_FAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FAF00);
  }

  return result;
}

uint64_t sub_80CCC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for LiveSpeechFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LiveSpeechFeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_80DFC()
{
  result = qword_FAF10;
  if (!qword_FAF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FAF10);
  }

  return result;
}

__n128 sub_80EB0(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_80EDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_80F24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_80FB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v51 = a2;
  v42 = sub_BA480();
  __chkstk_darwin(v42);
  v44 = sub_B9C60();
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2E50(&qword_F9BB8);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v43 = &v41 - v5;
  v49 = sub_2E50(&qword_F9BC0);
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v45 = &v41 - v6;
  v7 = sub_2E50(&qword_FAF18);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = (&v41 - v9);
  v41 = sub_2E50(&qword_FAF20);
  __chkstk_darwin(v41);
  v12 = (&v41 - v11);
  *v12 = sub_BADE0();
  v12[1] = v13;
  sub_BAAF0();
  v14 = v12 + *(sub_2E50(&qword_FAF28) + 44);
  v15 = sub_BAB10();

  v16 = *(a1 + 8);
  v17 = v10 + *(v8 + 44);
  v18 = *(sub_B9F50() + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = sub_BA270();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  *v17 = v16;
  *(v17 + 1) = v16;
  *&v17[*(sub_2E50(&qword_FAF30) + 36)] = 256;
  *v10 = v15;
  sub_BADE0();
  sub_B9CF0();
  sub_81D2C(v10, v14);
  v21 = (v14 + *(sub_2E50(&qword_FAF38) + 36));
  v22 = v54;
  *v21 = v53;
  v21[1] = v22;
  v21[2] = v55;
  sub_BADE0();
  sub_B9CF0();
  v23 = (v12 + *(sub_2E50(&qword_FAF40) + 36));
  v24 = v57;
  *v23 = v56;
  v23[1] = v24;
  v23[2] = v58;
  *(v12 + *(v41 + 36)) = 0;
  sub_BA570();
  sub_B9C20();
  v25 = swift_allocObject();
  v26 = *(a1 + 112);
  v25[7] = *(a1 + 96);
  v25[8] = v26;
  v25[9] = *(a1 + 128);
  v27 = *(a1 + 48);
  v25[3] = *(a1 + 32);
  v25[4] = v27;
  v28 = *(a1 + 80);
  v25[5] = *(a1 + 64);
  v25[6] = v28;
  v29 = *(a1 + 16);
  v25[1] = *a1;
  v25[2] = v29;
  sub_81CF4(a1, v52);
  sub_81DA4(&qword_F9BF8, &type metadata accessor for DragGesture);
  sub_81DA4(&qword_F9C00, &type metadata accessor for DragGesture.Value);
  v30 = v43;
  v31 = v44;
  sub_BAD00();

  (*(v46 + 8))(v4, v31);
  v32 = swift_allocObject();
  v33 = *(a1 + 112);
  v32[7] = *(a1 + 96);
  v32[8] = v33;
  v32[9] = *(a1 + 128);
  v34 = *(a1 + 48);
  v32[3] = *(a1 + 32);
  v32[4] = v34;
  v35 = *(a1 + 80);
  v32[5] = *(a1 + 64);
  v32[6] = v35;
  v36 = *(a1 + 16);
  v32[1] = *a1;
  v32[2] = v36;
  sub_81CF4(a1, v52);
  sub_D150(&qword_F9C08, &qword_F9BB8);
  v37 = v45;
  v38 = v47;
  sub_BACF0();

  (*(v48 + 8))(v30, v38);
  sub_B9C80();
  sub_81E44();
  sub_D150(&qword_F9C40, &qword_F9BC0);
  v39 = v49;
  sub_BA9F0();
  (*(v50 + 8))(v37, v39);
  return sub_C5E8(v12, &qword_FAF20);
}

uint64_t sub_81724(uint64_t a1, uint64_t a2)
{
  v12 = *(a2 + 104);
  v13 = *(a2 + 120);
  v14 = v13;
  sub_81FB4(&v14, &v11);
  sub_2E50(&qword_F8AE0);
  sub_BABD0();
  v15.width = 0.0;
  v15.height = 0.0;
  v3 = CGSizeEqualToSize(v11, v15);
  if (v3)
  {
    (*(a2 + 128))(v3, v4, v5);
    sub_2E50(&qword_F9110);
    sub_BAC80();
    v16.width = 0.0;
    v16.height = 0.0;
    if (CGSizeEqualToSize(v11, v16))
    {
      v6 = *(a2 + 56);
    }

    else
    {
      sub_BAC80();
      v6 = v11;
    }

    v11 = v6;
    sub_BABE0();
    return sub_C5E8(&v12, &qword_F8AE0);
  }

  else
  {
    sub_C5E8(&v12, &qword_F8AE0);
    sub_B9C30();
    return sub_818A4(v7, v8, v9, *(a2 + 96));
  }
}

uint64_t sub_818A4(double a1, double a2, double a3, double a4)
{
  v17 = *(v4 + 104);
  *&v18 = *(v4 + 120);
  sub_2E50(&qword_F8AE0);
  sub_BABD0();
  v7 = *(v4 + 24);
  v6 = *(v4 + 32);
  v19 = *(v4 + 40);
  v20 = v7;
  *&v17 = v7;
  *(&v17 + 1) = v6;
  v18 = *(v4 + 40);
  sub_82024(&v20, &v14);

  sub_2E50(&qword_F9110);
  sub_BAC80();
  v14 = v7;
  v15 = v6;
  v16 = *(v4 + 40);
  sub_BAC90();
  v8 = *(v4 + 80);
  *&v17 = v7;
  *(&v17 + 1) = v6;
  v18 = *(v4 + 40);
  sub_BAC80();
  v9 = v15;
  if (v8 + v15 > a4)
  {
    v9 = a4 - v8;
  }

  *&v17 = v7;
  *(&v17 + 1) = v6;
  v18 = *(v4 + 40);
  v15 = v9;
  sub_BAC90();
  sub_82080(&v20);

  v10 = sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  v11 = qword_100C30;
  result = os_log_type_enabled(qword_100C30, v10);
  if (result)
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *&v17 = v7;
    *(&v17 + 1) = v6;
    v18 = v19;
    sub_BAC80();
    *(v13 + 4) = v15;
    _os_log_impl(&dword_0, v11, v10, "windowSize height: %f", v13, 0xCu);
  }

  return result;
}

void sub_81ACC()
{
  sub_2E50(&qword_F8AE0);
  sub_BABE0();
  sub_81B34();
}

void sub_81B34()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_2E50(&qword_F9110);
  sub_BAC80();
  v1 = NSStringFromCGSize(v3);
  if (!v1)
  {
    sub_BAFD0();
    v1 = sub_BAFA0();
  }

  v2 = sub_BAFA0();
  [v0 setObject:v1 forKey:v2];

  [v0 synchronize];
}

uint64_t sub_81C3C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = v1[7];
  v14[6] = v1[6];
  v14[7] = v3;
  v14[8] = v1[8];
  v4 = v1[3];
  v14[2] = v1[2];
  v14[3] = v4;
  v5 = v1[5];
  v14[4] = v1[4];
  v14[5] = v5;
  v6 = v1[1];
  v14[0] = *v1;
  v14[1] = v6;
  v7 = swift_allocObject();
  v8 = v1[7];
  *(v7 + 7) = v1[6];
  *(v7 + 8) = v8;
  *(v7 + 9) = v1[8];
  v9 = v1[3];
  *(v7 + 3) = v1[2];
  *(v7 + 4) = v9;
  v10 = v1[5];
  *(v7 + 5) = v1[4];
  *(v7 + 6) = v10;
  v11 = v1[1];
  *(v7 + 1) = *v1;
  *(v7 + 2) = v11;
  *a1 = sub_81CEC;
  a1[1] = v7;
  return sub_81CF4(v14, &v13);
}

uint64_t sub_81D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E50(&qword_FAF18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_81DA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_81DEC()
{

  return _swift_deallocObject(v0, 160, 7);
}

unint64_t sub_81E44()
{
  result = qword_FAF48;
  if (!qword_FAF48)
  {
    sub_5520(&qword_FAF20);
    sub_81EFC();
    sub_D150(&qword_F9C30, &qword_F9C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FAF48);
  }

  return result;
}

unint64_t sub_81EFC()
{
  result = qword_FAF50;
  if (!qword_FAF50)
  {
    sub_5520(&qword_FAF40);
    sub_D150(&qword_FAF58, &qword_FAF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FAF50);
  }

  return result;
}

uint64_t sub_81FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E50(&qword_FAF68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t isAccessibilityLayout(_:)(uint64_t a1)
{
  v2 = sub_2E50(&qword_FA200);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_B9E30();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_822FC(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_8236C(v4);
    v9 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (qword_F8330 != -1)
    {
      swift_once();
    }

    sub_3CB8(v5, accessibilityLayoutTextSize);
    sub_82AF4();
    v10 = sub_BAF80();
    (*(v6 + 8))(v8, v5);
    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_822FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E50(&qword_FA200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8236C(uint64_t a1)
{
  v2 = sub_2E50(&qword_FA200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id iconForBundleId(_:iconSize:)(double a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = objc_allocWithZone(ISIcon);
    v5 = sub_BAFA0();
    v6 = [v4 initWithBundleIdentifier:v5];

    v7 = [objc_allocWithZone(ISImageDescriptor) initWithSize:a1 + a1 scale:{a1 + a1, 1.0}];
    v8 = [v6 prepareImageForDescriptor:v7];
    if (v8)
    {
      v9 = v8;
      result = [v9 CGImage];
      if (result)
      {
        v11 = result;
        [v9 scale];
        v13 = [objc_allocWithZone(UIImage) initWithCGImage:v11 scale:0 orientation:v12];

        return v13;
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v14 = objc_allocWithZone(UIImage);

  return [v14 init];
}

Swift::String_optional __swiftcall appIconSystemName(_:_:)(Swift::String a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v4 = a1._object;
  v5 = a1._countAndFlagsBits;
  v6 = 0x6C6C69662E63696DLL;
  if (sub_BAFD0() == a1._countAndFlagsBits && v7 == v4)
  {
    goto LABEL_8;
  }

  v9 = sub_BB700();

  if (v9)
  {
LABEL_9:
    v11 = 0xE800000000000000;
    goto LABEL_10;
  }

  if (sub_B9800() == countAndFlagsBits && v10 == object)
  {
LABEL_8:

    goto LABEL_9;
  }

  v13 = sub_BB700();

  if (v13)
  {
    goto LABEL_9;
  }

  if (sub_B97B0() == v5 && v14 == v4)
  {

LABEL_16:
    IsPad = AXDeviceIsPad();
    if (IsPad)
    {
      v6 = 1684107369;
    }

    else
    {
      v6 = 0x656E6F687069;
    }

    if (IsPad)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    goto LABEL_10;
  }

  v15 = sub_BB700();

  if (v15)
  {
    goto LABEL_16;
  }

  if (sub_BAFD0() == v5 && v17 == v4)
  {

LABEL_26:
    v11 = 0x80000000000C6510;
    v6 = 0xD00000000000001ALL;
    goto LABEL_10;
  }

  v18 = sub_BB700();

  if (v18)
  {
    goto LABEL_26;
  }

  if (sub_BAFD0() == v5 && v19 == v4)
  {
  }

  else
  {
    v20 = sub_BB700();

    if ((v20 & 1) == 0)
    {
      v6 = 0;
      v11 = 0;
      goto LABEL_10;
    }
  }

  v11 = 0xEE0072657475706DLL;
  v6 = 0x6F63706F7470616CLL;
LABEL_10:
  v12 = v6;
  result.value._object = v11;
  result.value._countAndFlagsBits = v12;
  return result;
}

uint64_t isCaptionFromApplication(_:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = sub_B9700();
  v4 = v3;
  v5 = sub_B9710();
  v7 = v6;
  if (v2 == sub_BAFD0() && v4 == v8)
  {

    goto LABEL_18;
  }

  v10 = sub_BB700();

  if ((v10 & 1) == 0)
  {
    if (v5 == sub_B9800() && v7 == v12)
    {
    }

    else
    {
      v13 = sub_BB700();

      if (v13)
      {
        goto LABEL_8;
      }

      if (v2 != sub_B97B0() || v4 != v14)
      {
        v16 = sub_BB700();

        if (v16)
        {
          goto LABEL_8;
        }

        if (v2 != sub_BAFD0() || v4 != v17)
        {
          v18 = sub_BB700();

          if (v18)
          {
            goto LABEL_8;
          }

          if (v2 != sub_BAFD0() || v4 != v19)
          {
            v20 = sub_BB700();

            v15 = v20 ^ 1;
            return v15 & 1;
          }

          goto LABEL_7;
        }
      }
    }

LABEL_18:

    goto LABEL_19;
  }

LABEL_7:

LABEL_8:

LABEL_19:
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_82A08()
{
  v0 = sub_B9E30();
  sub_82B4C(v0, accessibilityLayoutTextSize);
  v1 = sub_3CB8(v0, accessibilityLayoutTextSize);
  v2 = enum case for DynamicTypeSize.accessibility1(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t accessibilityLayoutTextSize.unsafeMutableAddressor()
{
  if (qword_F8330 != -1)
  {
    swift_once();
  }

  v0 = sub_B9E30();

  return sub_3CB8(v0, accessibilityLayoutTextSize);
}

unint64_t sub_82AF4()
{
  result = qword_F9250;
  if (!qword_F9250)
  {
    sub_B9E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9250);
  }

  return result;
}

uint64_t *sub_82B4C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_82BBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_82C04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_82C70@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_2E50(&qword_FAF88);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v15 - v10;
  v15[2] = a2;
  v15[3] = a3;
  sub_2E50(&qword_FA0F8);
  sub_BABD0();
  sub_BAAE0();
  v12 = sub_BAA90();

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    sub_82E00(a1, a2, a3, v11);
    sub_66B8(v11, a4, &qword_FAF88);
    v13 = 0;
  }

  return (*(v9 + 56))(a4, v13, 1, v8);
}

uint64_t sub_82E00@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a4;
  v75 = a1;
  v6 = sub_B9F50();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = (&v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2E50(&qword_FAF18);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = (&v72 - v12);
  v14 = sub_2E50(&qword_FAF90);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v72 - v16;
  v18 = sub_2E50(&qword_FAF98);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v73 = &v72 - v20;
  v21 = sub_2E50(&qword_FAFA0);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v74 = &v72 - v23;
  v77 = a2;
  v78 = a3;
  sub_2E50(&qword_FA0F8);
  sub_BABD0();
  v24 = sub_BAB10();

  v25 = *(v7 + 28);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = sub_BA270();
  (*(*(v27 - 8) + 104))(v9 + v25, v26, v27);
  v28 = 24.0;
  if (v75 == 3)
  {
    v28 = 0.0;
  }

  *v9 = v28;
  v9[1] = v28;
  v29 = v13 + *(v11 + 44);
  sub_8355C(v9, v29);
  *(v29 + *(sub_2E50(&qword_FAF30) + 36)) = 256;
  *v13 = v24;
  LOBYTE(v29) = sub_BA650();
  sub_B9B90();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_66B8(v13, v17, &qword_FAF18);
  v38 = &v17[*(v15 + 44)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  LOBYTE(v29) = sub_BA670();
  sub_B9B90();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v73;
  sub_66B8(v17, v73, &qword_FAF90);
  v48 = v47 + *(v19 + 44);
  *v48 = v29;
  *(v48 + 8) = v40;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = v46;
  *(v48 + 40) = 0;
  LOBYTE(v29) = sub_BA690();
  sub_B9B90();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v47;
  v58 = v74;
  sub_66B8(v57, v74, &qword_FAF98);
  v59 = v58 + *(v22 + 44);
  *v59 = v29;
  *(v59 + 8) = v50;
  *(v59 + 16) = v52;
  *(v59 + 24) = v54;
  *(v59 + 32) = v56;
  *(v59 + 40) = 0;
  LOBYTE(v29) = sub_BA660();
  sub_B9B90();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v58;
  v69 = v76;
  sub_66B8(v68, v76, &qword_FAFA0);
  result = sub_2E50(&qword_FAF88);
  v71 = v69 + *(result + 36);
  *v71 = v29;
  *(v71 + 8) = v61;
  *(v71 + 16) = v63;
  *(v71 + 24) = v65;
  *(v71 + 32) = v67;
  *(v71 + 40) = 0;
  return result;
}

uint64_t sub_83268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_B8FE0();
  if (result)
  {
    v7 = result;
    v10 = sub_B9840();
    sub_BB550();
    if (*(v7 + 16) && (v8 = sub_7D058(v11), (v9 & 1) != 0))
    {
      sub_3ADF4(*(v7 + 56) + 32 * v8, v12);
      sub_3ADA0(v11);

      result = swift_dynamicCast();
      if (result)
      {
        v11[0] = a3;
        v11[1] = a4;
        v12[0] = v10;
        sub_2E50(&qword_FA0F8);
        return sub_BABE0();
      }
    }

    else
    {

      return sub_3ADA0(v11);
    }
  }

  return result;
}