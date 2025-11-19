void sub_100693430()
{
  if (!qword_10119DED8)
  {
    type metadata accessor for SharePlayProxCard.CardState(255);
    sub_100693494();
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10119DED8);
    }
  }
}

unint64_t sub_100693494()
{
  result = qword_10119DEE0;
  if (!qword_10119DEE0)
  {
    type metadata accessor for SharePlayProxCard.CardState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119DEE0);
  }

  return result;
}

uint64_t sub_100693508()
{
  v17 = sub_10010FC20(&unk_101189E60);
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = &v16 - v2;
  v4 = sub_10010FC20(&unk_101184260);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_10010FC20(&qword_101184258);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState__name;
  v18 = 0;
  v19 = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState__image;
  v18 = 0;
  sub_10010FC20(&qword_101184460);
  Published.init(initialValue:)();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState__isLoading;
  LOBYTE(v18) = 0;
  Published.init(initialValue:)();
  (*(v1 + 32))(v0 + v14, v3, v17);
  *(v0 + OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState_removedImage) = 0;
  return v0;
}

uint64_t sub_1006937A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharePlayProxCard.CardState(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1006937E4()
{
  type metadata accessor for SharePlayProxCard(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = String.trim()();
  countAndFlagsBits = v1._countAndFlagsBits;

  v3 = (v1._object >> 56) & 0xF;
  if ((v1._object & 0x2000000000000000) == 0)
  {
    v3 = v1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    countAndFlagsBits = *(v0 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 48));
  }

  return countAndFlagsBits;
}

uint64_t sub_1006938C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10010FC20(&qword_10119DF30);
  __chkstk_darwin(v27);
  v8 = &v26 - v7;
  v30 = sub_10010FC20(&qword_10119DF38);
  __chkstk_darwin(v30);
  v35 = &v26 - v9;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v10 = sub_10010FC20(&qword_10119DF40);
  sub_100693D9C(v1, &v8[*(v10 + 44)]);
  v31 = type metadata accessor for SharePlayProxCard(0);
  v11 = v1 + *(v31 + 28);
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v40) = v12;
  v41 = v13;
  v29 = sub_10010FC20(&unk_101197960);
  State.projectedValue.getter();
  v37 = v1;
  sub_10010FC20(&qword_10119DF48);
  sub_100020674(&qword_10119DF50, &qword_10119DF30);
  v28 = &protocol conformance descriptor for TupleView<A>;
  sub_100020674(&qword_10119DF58, &qword_10119DF48);
  v14 = v35;
  View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();

  sub_1000095E8(v8, &qword_10119DF30);
  v15 = static Alignment.center.getter();
  v17 = v16;
  v18 = &v14[*(v30 + 36)];
  sub_100699848(v18);
  v19 = (v18 + *(sub_10010FC20(&qword_101196590) + 36));
  *v19 = v15;
  v19[1] = v17;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = String.init(localized:table:bundle:locale:comment:)();
  v41 = v20;
  v21 = v2 + *(v31 + 36);
  v22 = *v21;
  v23 = *(v21 + 1);
  v38 = v22;
  v39 = v23;
  State.projectedValue.getter();
  v36 = v2;
  sub_10010FC20(&qword_10119DF60);
  sub_10069A2BC();
  sub_100009838();
  sub_100020674(&qword_10119DF78, &qword_10119DF60);
  v24 = v35;
  View.alert<A, B>(_:isPresented:actions:)();

  return sub_1000095E8(v24, &qword_10119DF38);
}

uint64_t sub_100693D9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v399 = a2;
  v3 = type metadata accessor for SharePlayProxCard(0);
  v4 = *(v3 - 8);
  v390 = v3;
  v391 = v4;
  __chkstk_darwin(v3);
  v392 = v5;
  v393 = &v334 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = sub_10010FC20(&qword_10119DF98);
  __chkstk_darwin(v394);
  v397 = &v334 - v6;
  v396 = sub_10010FC20(&qword_10119DFA0);
  __chkstk_darwin(v396);
  v398 = &v334 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v395 = &v334 - v9;
  __chkstk_darwin(v10);
  v434 = &v334 - v11;
  v12 = sub_10010FC20(&qword_10119DFA8);
  v388 = *(v12 - 8);
  v389 = v12;
  __chkstk_darwin(v12);
  v377 = &v334 - v13;
  v14 = sub_10010FC20(&qword_10119DFB0);
  v375 = *(v14 - 8);
  v376 = v14;
  __chkstk_darwin(v14);
  v349 = &v334 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v350 = &v334 - v17;
  v18 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v344 = *(v18 - 8);
  v345 = v18;
  __chkstk_darwin(v18);
  v343 = &v334 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v339 = *(v341 - 8);
  __chkstk_darwin(v341);
  v340 = &v334 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  __chkstk_darwin(v21 - 8);
  v338 = &v334 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v23 - 8);
  v337 = &v334 - v24;
  v25 = type metadata accessor for AttributedString();
  v346 = *(v25 - 8);
  v347 = v25;
  __chkstk_darwin(v25);
  v348 = &v334 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v336 = &v334 - v28;
  v29 = sub_10010FC20(&qword_101180C90);
  __chkstk_darwin(v29 - 8);
  v342 = &v334 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v378 = &v334 - v32;
  v33 = sub_10010FC20(&qword_10119DFB8);
  __chkstk_darwin(v33 - 8);
  v374 = &v334 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v373 = &v334 - v36;
  v361 = sub_10010FC20(&qword_10119DFC0);
  __chkstk_darwin(v361);
  v363 = (&v334 - v37);
  v362 = sub_10010FC20(&qword_10119DFC8);
  __chkstk_darwin(v362);
  v366 = &v334 - v38;
  v365 = sub_10010FC20(&qword_10119DFD0);
  __chkstk_darwin(v365);
  v370 = &v334 - v39;
  v364 = sub_10010FC20(&qword_10119DFD8);
  __chkstk_darwin(v364);
  v369 = &v334 - v40;
  v368 = sub_10010FC20(&qword_10119DFE0);
  __chkstk_darwin(v368);
  v372 = &v334 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v367 = &v334 - v43;
  __chkstk_darwin(v44);
  v379 = &v334 - v45;
  v351 = sub_10010FC20(&qword_10119DFE8);
  __chkstk_darwin(v351);
  v353 = &v334 - v46;
  v352 = sub_10010FC20(&qword_10119DFF0);
  __chkstk_darwin(v352);
  v355 = &v334 - v47;
  v354 = sub_10010FC20(&qword_10119DFF8);
  __chkstk_darwin(v354);
  v358 = &v334 - v48;
  v356 = sub_10010FC20(&qword_10119E000);
  __chkstk_darwin(v356);
  v360 = &v334 - v49;
  v359 = sub_10010FC20(&qword_10119E008);
  __chkstk_darwin(v359);
  v371 = &v334 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v357 = &v334 - v52;
  __chkstk_darwin(v53);
  v404 = &v334 - v54;
  v55 = sub_10010FC20(&qword_10119E010);
  __chkstk_darwin(v55 - 8);
  v431 = &v334 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v438 = &v334 - v58;
  v436 = type metadata accessor for Font.Leading();
  v437 = *(v436 - 8);
  __chkstk_darwin(v436);
  v435 = &v334 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10010FC20(&qword_101188610);
  __chkstk_darwin(v60 - 8);
  v62 = &v334 - v61;
  v63 = sub_10010FC20(&qword_10119E018);
  v64 = v63 - 8;
  __chkstk_darwin(v63);
  v432 = &v334 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v68 = &v334 - v67;
  v69 = *a1;
  v70 = type metadata accessor for Font.Design();
  (*(*(v70 - 8) + 56))(v62, 1, 1, v70);

  v71 = static Font.system(size:weight:design:)();
  sub_1000095E8(v62, &qword_101188610);
  KeyPath = swift_getKeyPath();
  v481 = v69;
  v482 = KeyPath;
  v483 = v71;
  sub_10010FC20(&unk_1011A1100);
  sub_100238768();
  View.bold(_:)();

  v73 = static Color.accentColor.getter();
  v74 = swift_getKeyPath();
  v75 = *(v64 + 44);
  v430 = v68;
  v76 = &v68[v75];
  *v76 = v74;
  v76[1] = v73;
  v433 = a1;
  v77 = a1[2];
  v481 = a1[1];
  v482 = v77;
  v405 = sub_100009838();

  v78 = Text.init<A>(_:)();
  v80 = v79;
  LOBYTE(v71) = v81;
  static Font.title.getter();
  v402 = enum case for Font.Leading.tight(_:);
  v82 = v437;
  v83 = *(v437 + 104);
  v403 = v437 + 104;
  v401 = v83;
  v84 = v435;
  v85 = v436;
  v83(v435);
  Font.leading(_:)();

  v86 = *(v82 + 8);
  v437 = v82 + 8;
  v400 = v86;
  v86(v84, v85);
  v87 = Text.font(_:)();
  v89 = v88;
  LOBYTE(v84) = v90;

  sub_10011895C(v78, v80, v71 & 1);

  v428 = Text.bold()();
  v427 = v91;
  LOBYTE(v80) = v92;
  v429 = v93;
  v94 = v87;
  v95 = v433;
  sub_10011895C(v94, v89, v84 & 1);

  v425 = swift_getKeyPath();
  v426 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v424 = v96;
  v423 = v97;
  v422 = v98;
  v421 = v99;
  v414 = v80 & 1;
  LOBYTE(v446) = v80 & 1;
  LOBYTE(v536) = 0;
  v420 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v386 = v101;
  v387 = v100;
  v384 = v103;
  v385 = v102;
  LOBYTE(v481) = 0;
  v419 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v418 = v104;
  v417 = v105;
  v416 = v106;
  v415 = v107;
  v108 = *(v95 + 32);
  v481 = *(v95 + 24);
  v482 = v108;

  v109 = Text.init<A>(_:)();
  v111 = v110;
  LOBYTE(v89) = v112;
  static Font.body.getter();
  v113 = v435;
  v114 = v436;
  v401(v435, v402, v436);
  Font.leading(_:)();

  v400(v113, v114);
  v412 = Text.font(_:)();
  v411 = v115;
  LOBYTE(v84) = v116;
  v413 = v117;

  sub_10011895C(v109, v111, v89 & 1);

  v409 = swift_getKeyPath();
  v410 = static Color.secondary.getter();
  v408 = swift_getKeyPath();
  v406 = v84 & 1;
  LOBYTE(v481) = v84 & 1;
  v407 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v382 = v119;
  v383 = v118;
  v380 = v121;
  v381 = v120;
  if (*(v95 + 72) != 1)
  {
    (*(v388 + 56))(v438, 1, 1, v389);
    sub_1006937E4();
    if (!v229)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v335 = 1;
  v122 = *(v95 + 48);
  v481 = *(v95 + 40);
  v482 = v122;

  v123 = Text.init<A>(_:)();
  v125 = v124;
  v127 = v126;
  v334 = v128;
  v129 = sub_10010FC20(&qword_101184C58);
  v130 = v353;
  v131 = &v353[*(v129 + 36)];
  v132 = *(sub_10010FC20(&qword_101184CD8) + 28);
  v133 = enum case for Text.Case.uppercase(_:);
  v134 = type metadata accessor for Text.Case();
  v135 = *(v134 - 8);
  (*(v135 + 104))(v131 + v132, v133, v134);
  (*(v135 + 56))(v131 + v132, 0, 1, v134);
  *v131 = swift_getKeyPath();
  *v130 = v123;
  *(v130 + 8) = v125;
  v136 = v433;
  *(v130 + 16) = v127 & 1;
  *(v130 + 24) = v334;
  v137 = static Font.footnote.getter();
  v138 = swift_getKeyPath();
  v139 = (v130 + *(sub_10010FC20(&qword_101184C60) + 36));
  *v139 = v138;
  v139[1] = v137;
  v140 = static Color.secondary.getter();
  v141 = swift_getKeyPath();
  v142 = (v130 + *(v351 + 36));
  *v142 = v141;
  v142[1] = v140;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v143 = v355;
  sub_10003D17C(v130, v355, &qword_10119DFE8);
  v144 = (v143 + *(v352 + 36));
  v145 = v527;
  v144[4] = v526;
  v144[5] = v145;
  v144[6] = v528;
  v146 = v523;
  *v144 = v522;
  v144[1] = v146;
  v147 = v525;
  v144[2] = v524;
  v144[3] = v147;
  LOBYTE(v140) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v149 = v148;
  v151 = v150;
  v153 = v152;
  v155 = v154;
  v156 = v143;
  v157 = v358;
  sub_10003D17C(v156, v358, &qword_10119DFF0);
  v158 = v157 + *(v354 + 36);
  *v158 = v140;
  *(v158 + 8) = v149;
  *(v158 + 16) = v151;
  *(v158 + 24) = v153;
  *(v158 + 32) = v155;
  *(v158 + 40) = 0;
  LOBYTE(v140) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v160 = v159;
  v162 = v161;
  v164 = v163;
  v166 = v165;
  v167 = v157;
  v168 = v360;
  sub_10003D17C(v167, v360, &qword_10119DFF8);
  v169 = v168 + *(v356 + 36);
  *v169 = v140;
  *(v169 + 8) = v160;
  *(v169 + 16) = v162;
  *(v169 + 24) = v164;
  *(v169 + 32) = v166;
  *(v169 + 40) = 0;
  LOBYTE(v140) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v171 = v170;
  v173 = v172;
  v175 = v174;
  v177 = v176;
  v178 = v168;
  v179 = v357;
  sub_10003D17C(v178, v357, &qword_10119E000);
  v180 = v179 + *(v359 + 36);
  *v180 = v140;
  *(v180 + 8) = v171;
  *(v180 + 16) = v173;
  *(v180 + 24) = v175;
  *(v180 + 32) = v177;
  *(v180 + 40) = 0;
  sub_10003D17C(v179, v404, &qword_10119E008);
  v181 = static VerticalAlignment.center.getter();
  v182 = v363;
  *v363 = v181;
  *(v182 + 8) = 0;
  *(v182 + 16) = 1;
  v183 = sub_10010FC20(&qword_10119E098);
  sub_1006964C4(v136, v182 + *(v183 + 44));
  v184 = [objc_opt_self() quaternarySystemFillColor];
  v185 = Color.init(_:)();
  v186 = static Edge.Set.all.getter();
  v187 = v182 + *(v361 + 36);
  *v187 = v185;
  *(v187 + 8) = v186;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v188 = v366;
  sub_10003D17C(v182, v366, &qword_10119DFC0);
  v189 = (v188 + *(v362 + 36));
  v190 = v534;
  v189[4] = v533;
  v189[5] = v190;
  v189[6] = v535;
  v191 = v530;
  *v189 = v529;
  v189[1] = v191;
  v192 = v532;
  v189[2] = v531;
  v189[3] = v192;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v193 = v370;
  sub_10003D17C(v188, v370, &qword_10119DFC8);
  v194 = (v193 + *(v365 + 36));
  v195 = v541;
  v194[4] = v540;
  v194[5] = v195;
  v194[6] = v542;
  v196 = v537;
  *v194 = v536;
  v194[1] = v196;
  v197 = v539;
  v194[2] = v538;
  v194[3] = v197;
  v198 = v369;
  v199 = &v369[*(v364 + 36)];
  v200 = *(type metadata accessor for RoundedRectangle() + 20);
  v201 = enum case for RoundedCornerStyle.continuous(_:);
  v202 = type metadata accessor for RoundedCornerStyle();
  (*(*(v202 - 8) + 104))(&v199[v200], v201, v202);
  __asm { FMOV            V0.2D, #16.0 }

  *v199 = _Q0;
  *&v199[*(sub_10010FC20(&qword_101185680) + 36)] = 256;
  sub_10003D17C(v193, v198, &qword_10119DFD0);
  LOBYTE(v201) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v209 = v208;
  v211 = v210;
  v213 = v212;
  v215 = v214;
  v216 = v367;
  sub_10003D17C(v198, v367, &qword_10119DFD8);
  v217 = v216 + *(v368 + 36);
  *v217 = v201;
  *(v217 + 8) = v209;
  *(v217 + 16) = v211;
  *(v217 + 24) = v213;
  *(v217 + 32) = v215;
  *(v217 + 40) = 0;
  sub_10003D17C(v216, v379, &qword_10119DFE0);
  v219 = *(v136 + 56);
  v218 = *(v136 + 64);
  v481 = v219;
  v482 = v218;
  strcpy(&v446, "{{userName}}");
  BYTE13(v446) = 0;
  HIWORD(v446) = -5120;
  v220 = StringProtocol.contains<A>(_:)();
  v221 = v404;
  if (v220)
  {
    sub_1006937E4();
    if (!v222)
    {
      v267 = v373;
      (*(v375 + 56))(v373, 1, 1, v376);
      goto LABEL_19;
    }
  }

  v481 = v219;
  v482 = v218;
  strcpy(&v446, "{{userName}}");
  BYTE13(v446) = 0;
  HIWORD(v446) = -5120;

  v223 = sub_1006937E4();
  if (v224)
  {
    v225 = v223;
  }

  else
  {
    v225 = 0;
  }

  if (v224)
  {
    v226 = v224;
  }

  else
  {
    v226 = 0xE000000000000000;
  }

  v463 = v225;
  v464 = v226;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v227 = type metadata accessor for URL();
  (*(*(v227 - 8) + 56))(v337, 1, 1, v227);
  (*(v339 + 104))(v340, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v341);
  (*(v344 + 104))(v343, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v345);
  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  v228 = v336;
  AttributedString.init(markdown:options:baseURL:)();
  v231 = v346;
  v230 = v347;
  v232 = v378;
  (*(v346 + 32))(v378, v228, v347);
  v233 = v348;
  v234 = v342;
  (*(v231 + 56))(v232, 0, 1, v230);
  sub_1000089F8(v232, v234, &qword_101180C90);
  v235 = *(v231 + 48);
  v236 = v235(v234, 1, v230);
  if (v236 == 1)
  {
    AttributedString.init(stringLiteral:)();
    if (v235(v234, 1, v230) != 1)
    {
      sub_1000095E8(v234, &qword_101180C90);
    }
  }

  else
  {
    (*(v231 + 32))(v233, v234, v230);
  }

  v405 = Text.init(_:)();
  v369 = v238;
  v370 = v237;
  v240 = v239;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v241 = v240 & 1;
  LOBYTE(v446) = v240 & 1;
  static Font.footnote.getter();
  v242 = v435;
  v243 = v436;
  v401(v435, v402, v436);
  v403 = Font.leading(_:)();

  v400(v242, v243);
  v244 = swift_getKeyPath();
  v245 = static Color.secondary.getter();
  v246 = swift_getKeyPath();
  v247 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v249 = v248;
  v251 = v250;
  v253 = v252;
  v255 = v254;
  LOBYTE(v481) = 0;
  v256 = swift_getKeyPath();
  v257 = v376;
  v258 = v349;
  v259 = &v349[*(v376 + 36)];
  sub_10010FC20(&qword_10119E0A0);
  OpenURLAction.init(handler:)();
  sub_1000095E8(v378, &qword_101180C90);
  *v259 = v256;
  v260 = v369;
  v261 = v370;
  *v258 = v405;
  *(v258 + 8) = v261;
  *(v258 + 16) = v241;
  *(v258 + 24) = v260;
  v262 = v444;
  *(v258 + 96) = v443;
  *(v258 + 112) = v262;
  *(v258 + 128) = v445;
  v263 = v440;
  *(v258 + 32) = v439;
  *(v258 + 48) = v263;
  v264 = v442;
  *(v258 + 64) = v441;
  *(v258 + 80) = v264;
  v265 = v403;
  *(v258 + 144) = v244;
  *(v258 + 152) = v265;
  *(v258 + 160) = v246;
  *(v258 + 168) = v245;
  *(v258 + 176) = v247;
  *(v258 + 184) = v249;
  *(v258 + 192) = v251;
  *(v258 + 200) = v253;
  *(v258 + 208) = v255;
  *(v258 + 216) = 0;
  v266 = v350;
  sub_10003D17C(v258, v350, &qword_10119DFB0);
  v267 = v373;
  sub_10003D17C(v266, v373, &qword_10119DFB0);
  (*(v375 + 56))(v267, 0, 1, v257);
  v221 = v404;
LABEL_19:
  v268 = v371;
  sub_1000089F8(v221, v371, &qword_10119E008);
  v269 = v379;
  v270 = v372;
  sub_1000089F8(v379, v372, &qword_10119DFE0);
  v271 = v267;
  v272 = v267;
  v273 = v374;
  sub_1000089F8(v271, v374, &qword_10119DFB8);
  v274 = v377;
  sub_1000089F8(v268, v377, &qword_10119E008);
  v275 = sub_10010FC20(&qword_10119E0A8);
  sub_1000089F8(v270, v274 + *(v275 + 48), &qword_10119DFE0);
  sub_1000089F8(v273, v274 + *(v275 + 64), &qword_10119DFB8);
  sub_1000095E8(v272, &qword_10119DFB8);
  sub_1000095E8(v269, &qword_10119DFE0);
  sub_1000095E8(v404, &qword_10119E008);
  sub_1000095E8(v273, &qword_10119DFB8);
  sub_1000095E8(v270, &qword_10119DFE0);
  sub_1000095E8(v268, &qword_10119E008);
  v276 = v438;
  sub_10003D17C(v274, v438, &qword_10119DFA8);
  (*(v388 + 56))(v276, 0, 1, v389);
  v95 = v433;
  sub_1006937E4();
  if (!v277)
  {
    v278 = 1;
    goto LABEL_22;
  }

LABEL_20:

LABEL_21:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v278 = v481;
LABEL_22:
  LODWORD(v436) = v278;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v279 = sub_1006985C0(v95);
  v280 = v393;
  sub_10069B540(v95, v393, type metadata accessor for SharePlayProxCard);
  v281 = (*(v391 + 80) + 16) & ~*(v391 + 80);
  v282 = swift_allocObject();
  v283 = sub_10069A548(v280, v282 + v281);
  __chkstk_darwin(v283);
  sub_10010FC20(&qword_10119E020);
  sub_10069AAB4(&qword_10119E028, &qword_10119E020, &unk_100EDCBA0, sub_10069AA84);
  v284 = v397;
  Button.init(action:label:)();
  v285 = swift_getKeyPath();
  v286 = swift_allocObject();
  *(v286 + 16) = v436;
  v287 = &v284[*(sub_10010FC20(&qword_10119E070) + 36)];
  *v287 = v285;
  v287[1] = sub_10069AD7C;
  v287[2] = v286;
  LOBYTE(v285) = static Edge.Set.all.getter();
  v288 = &v284[*(sub_10010FC20(&qword_10119E078) + 36)];
  v437 = v279;
  *v288 = v279;
  v288[8] = v285;
  v289 = &v284[*(v394 + 36)];
  v290 = enum case for RoundedCornerStyle.continuous(_:);
  v291 = type metadata accessor for RoundedCornerStyle();
  (*(*(v291 - 8) + 104))(v289, v290, v291);
  *&v289[*(sub_10010FC20(&qword_101187980) + 36)] = 256;

  LOBYTE(v289) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v293 = v292;
  v295 = v294;
  v297 = v296;
  v299 = v298;
  v300 = v284;
  v301 = v395;
  sub_10003D17C(v300, v395, &qword_10119DF98);
  v302 = v301 + *(v396 + 36);
  *v302 = v289;
  *(v302 + 8) = v293;
  *(v302 + 16) = v295;
  *(v302 + 24) = v297;
  *(v302 + 32) = v299;
  *(v302 + 40) = 0;
  v303 = v434;
  sub_10003D17C(v301, v434, &qword_10119DFA0);
  v304 = v432;
  sub_1000089F8(v430, v432, &qword_10119E018);
  sub_1000089F8(v438, v431, &qword_10119E010);
  v305 = v398;
  sub_1000089F8(v303, v398, &qword_10119DFA0);
  v306 = v304;
  v307 = v399;
  sub_1000089F8(v306, v399, &qword_10119E018);
  v308 = sub_10010FC20(&qword_10119E080);
  v309 = (v307 + v308[12]);
  *&v446 = v428;
  *(&v446 + 1) = v427;
  LOBYTE(v447) = v414;
  *(&v447 + 1) = *v517;
  DWORD1(v447) = *&v517[3];
  *(&v447 + 1) = v429;
  *&v448 = v425;
  BYTE8(v448) = 1;
  *(&v448 + 9) = *v516;
  HIDWORD(v448) = *&v516[3];
  LOBYTE(v449) = v426;
  *(&v449 + 1) = *v515;
  DWORD1(v449) = *&v515[3];
  *(&v449 + 1) = v424;
  *&v450 = v423;
  *(&v450 + 1) = v422;
  *&v451 = v421;
  BYTE8(v451) = 0;
  HIDWORD(v451) = *(v519 + 3);
  *(&v451 + 9) = v519[0];
  LOBYTE(v452) = v420;
  DWORD1(v452) = *&v518[3];
  *(&v452 + 1) = *v518;
  v311 = v386;
  v310 = v387;
  *(&v452 + 1) = v387;
  *&v453 = v386;
  v313 = v384;
  v312 = v385;
  *(&v453 + 1) = v385;
  *&v454 = v384;
  BYTE8(v454) = 0;
  *(&v454 + 9) = *v521;
  HIDWORD(v454) = *&v521[3];
  LOBYTE(v455) = v419;
  DWORD1(v455) = *&v520[3];
  *(&v455 + 1) = *v520;
  *(&v455 + 1) = v418;
  *&v456[0] = v417;
  *(&v456[0] + 1) = v416;
  *&v456[1] = v415;
  WORD4(v456[1]) = 0;
  BYTE10(v456[1]) = 1;
  v314 = v446;
  v315 = v447;
  v316 = v449;
  v317 = v450;
  v309[2] = v448;
  v309[3] = v316;
  *v309 = v314;
  v309[1] = v315;
  v318 = v451;
  v319 = v453;
  v320 = v454;
  v309[6] = v452;
  v309[7] = v319;
  v309[4] = v317;
  v309[5] = v318;
  v321 = v455;
  v322 = v456[0];
  *(v309 + 171) = *(v456 + 11);
  v309[9] = v321;
  v309[10] = v322;
  v309[8] = v320;
  v323 = (v307 + v308[16]);
  *&v457 = v412;
  *(&v457 + 1) = v411;
  LOBYTE(v458) = v406;
  *(&v458 + 1) = v513[0];
  DWORD1(v458) = *(v513 + 3);
  *(&v458 + 1) = v413;
  *&v459 = v409;
  BYTE8(v459) = 1;
  HIDWORD(v459) = *&v512[3];
  *(&v459 + 9) = *v512;
  *&v460 = v408;
  *(&v460 + 1) = v410;
  LOBYTE(v461) = v407;
  DWORD1(v461) = *(v514 + 3);
  *(&v461 + 1) = v514[0];
  v325 = v382;
  v324 = v383;
  *(&v461 + 1) = v383;
  *&v462[0] = v382;
  v327 = v380;
  v326 = v381;
  *(&v462[0] + 1) = v381;
  *&v462[1] = v380;
  WORD4(v462[1]) = 0;
  BYTE10(v462[1]) = 1;
  v328 = v458;
  *v323 = v457;
  v323[1] = v328;
  v329 = v459;
  v330 = v460;
  *(v323 + 91) = *(v462 + 11);
  v331 = v462[0];
  v323[4] = v461;
  v323[5] = v331;
  v323[2] = v329;
  v323[3] = v330;
  v332 = v431;
  sub_1000089F8(v431, v307 + v308[20], &qword_10119E010);
  sub_1000089F8(v305, v307 + v308[24], &qword_10119DFA0);
  sub_1000089F8(&v446, &v481, &qword_10119E088);
  sub_1000089F8(&v457, &v481, &qword_10119E090);

  sub_1000095E8(v434, &qword_10119DFA0);
  sub_1000095E8(v438, &qword_10119E010);
  sub_1000095E8(v430, &qword_10119E018);
  sub_1000095E8(v305, &qword_10119DFA0);
  sub_1000095E8(v332, &qword_10119E010);
  v463 = v412;
  v464 = v411;
  v465 = v406;
  *v466 = v513[0];
  *&v466[3] = *(v513 + 3);
  v467 = v413;
  v468 = v409;
  v469 = 1;
  *v470 = *v512;
  *&v470[3] = *&v512[3];
  v471 = v408;
  v472 = v410;
  v473 = v407;
  *&v474[3] = *(v514 + 3);
  *v474 = v514[0];
  v475 = v324;
  v476 = v325;
  v477 = v326;
  v478 = v327;
  v479 = 0;
  v480 = 1;
  sub_1000095E8(&v463, &qword_10119E090);
  v481 = v428;
  v482 = v427;
  LOBYTE(v483) = v414;
  *(&v483 + 1) = *v517;
  HIDWORD(v483) = *&v517[3];
  v484 = v429;
  v485 = v425;
  v486 = 1;
  *v487 = *v516;
  *&v487[3] = *&v516[3];
  v488 = v426;
  *v489 = *v515;
  *&v489[3] = *&v515[3];
  v490 = v424;
  v491 = v423;
  v492 = v422;
  v493 = v421;
  v494 = 0;
  *&v495[3] = *(v519 + 3);
  *v495 = v519[0];
  v496 = v420;
  *&v497[3] = *&v518[3];
  *v497 = *v518;
  v498 = v310;
  v499 = v311;
  v500 = v312;
  v501 = v313;
  v502 = 0;
  *&v503[3] = *&v521[3];
  *v503 = *v521;
  v504 = v419;
  *&v505[3] = *&v520[3];
  *v505 = *v520;
  v506 = v418;
  v507 = v417;
  v508 = v416;
  v509 = v415;
  v510 = 0;
  v511 = 1;
  sub_1000095E8(&v481, &qword_10119E088);
  return sub_1000095E8(v432, &qword_10119E018);
}

uint64_t sub_1006964C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v160 = sub_10010FC20(&qword_10119E0B0);
  __chkstk_darwin(v160);
  v162 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v161 = &v135 - v5;
  v153 = type metadata accessor for ArtworkImage.ReusePolicy();
  v151 = *(v153 - 8);
  __chkstk_darwin(v153);
  v152 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v7 - 8);
  v140 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101184060);
  __chkstk_darwin(v9 - 8);
  v142 = &v135 - v10;
  v11 = type metadata accessor for Artwork();
  v138 = *(v11 - 8);
  v139 = v11;
  __chkstk_darwin(v11);
  v143 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v13 - 8);
  v155 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v154 = &v135 - v16;
  v17 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v17 - 8);
  v141 = &v135 - v18;
  v19 = sub_10010FC20(&unk_1011A1400);
  v149 = *(v19 - 8);
  v150 = v19;
  __chkstk_darwin(v19);
  v148 = &v135 - v20;
  v145 = sub_10010FC20(&qword_10118D620);
  __chkstk_darwin(v145);
  v146 = &v135 - v21;
  v144 = sub_10010FC20(&qword_10119E0B8);
  __chkstk_darwin(v144);
  v147 = &v135 - v22;
  v158 = sub_10010FC20(&qword_10119E0C0);
  __chkstk_darwin(v158);
  v24 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v135 - v26;
  v156 = sub_10010FC20(&qword_10119E0C8);
  __chkstk_darwin(v156);
  v29 = (&v135 - v28);
  v30 = type metadata accessor for Image.ResizingMode();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v135 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10010FC20(&qword_10119E0D0);
  __chkstk_darwin(v34 - 8);
  v159 = &v135 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v157 = &v135 - v37;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v38 = *(type metadata accessor for SharePlayProxCard(0) + 20);
  v164 = a1;
  v39 = *(a1 + v38 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v172)
  {
    v155 = v172;
    Image.init(uiImage:)();
    (*(v31 + 104))(v33, enum case for Image.ResizingMode.stretch(_:), v30);
    v40 = Image.resizable(capInsets:resizingMode:)();

    (*(v31 + 8))(v33, v30);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v41 = v185;
    v42 = v186;
    v43 = v187;
    v44 = v188;
    v46 = v189;
    v45 = v190;
    LOBYTE(v172) = v186;
    LOBYTE(v165) = v188;
    v47 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    *&v178 = v40;
    *(&v178 + 1) = v41;
    LOBYTE(v179) = v42;
    *(&v179 + 1) = v43;
    LOBYTE(v180) = v44;
    *(&v180 + 1) = v46;
    *&v181 = v45;
    WORD4(v181) = 256;
    *(&v181 + 10) = v165;
    HIWORD(v181) = WORD2(v165);
    LOBYTE(v182) = v47;
    DWORD1(v182) = *(&v172 + 3);
    *(&v182 + 1) = v172;
    *(&v182 + 1) = v48;
    *&v183[0] = v49;
    *(&v183[0] + 1) = v50;
    *&v183[1] = v51;
    BYTE8(v183[1]) = 0;
    v169 = v182;
    *v170 = v183[0];
    *&v170[9] = *(v183 + 9);
    v165 = v178;
    v166 = v179;
    v167 = v180;
    v168 = v181;
    v184 = 0;
    v171 = 0;
    sub_1000089F8(&v178, &v172, &qword_10119E0F0);
    sub_10010FC20(&qword_10119E0F0);
    sub_10069AE18();
    _ConditionalContent<>.init(storage:)();
    v52 = v175;
    v53 = v177[0];
    v29[4] = v176;
    v29[5] = v53;
    *(v29 + 90) = *(v177 + 10);
    v54 = v173;
    v55 = v174;
    *v29 = v172;
    v29[1] = v54;
    v29[2] = v55;
    v29[3] = v52;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_10119E0D8);
    sub_10069AD94();
    sub_10069B004();
    v56 = v157;
    _ConditionalContent<>.init(storage:)();

    sub_1000095E8(&v178, &qword_10119E0F0);
  }

  else
  {
    v57 = v154;
    v58 = v155;
    v136 = v24;
    v137 = v27;
    if (*(v39 + OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState_removedImage))
    {
      v59 = v138;
      v60 = v139;
      (*(v138 + 56))(v154, 1, 1, v139);
    }

    else
    {
      v61 = type metadata accessor for SharePlayProxCard.ViewModel(0);
      v62 = *(v164 + *(v61 + 44));
      if (v62)
      {
        v155 = v62;
        Image.init(uiImage:)();
        (*(v31 + 104))(v33, enum case for Image.ResizingMode.stretch(_:), v30);
        v63 = Image.resizable(capInsets:resizingMode:)();

        (*(v31 + 8))(v33, v30);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v64 = v185;
        v65 = v186;
        v66 = v187;
        v67 = v188;
        v69 = v189;
        v68 = v190;
        LOBYTE(v172) = v186;
        LOBYTE(v165) = v188;
        v70 = static Edge.Set.all.getter();
        EdgeInsets.init(_all:)();
        *&v178 = v63;
        *(&v178 + 1) = v64;
        LOBYTE(v179) = v65;
        *(&v179 + 1) = v66;
        LOBYTE(v180) = v67;
        *(&v180 + 1) = v69;
        *&v181 = v68;
        WORD4(v181) = 256;
        *(&v181 + 10) = v165;
        HIWORD(v181) = WORD2(v165);
        LOBYTE(v182) = v70;
        DWORD1(v182) = *(&v172 + 3);
        *(&v182 + 1) = v172;
        *(&v182 + 1) = v71;
        *&v183[0] = v72;
        *(&v183[0] + 1) = v73;
        *&v183[1] = v74;
        BYTE8(v183[1]) = 0;
        v169 = v182;
        *v170 = v183[0];
        *&v170[9] = *(v183 + 9);
        v165 = v178;
        v166 = v179;
        v167 = v180;
        v168 = v181;
        v184 = 1;
        v171 = 1;
        sub_1000089F8(&v178, &v172, &qword_10119E0F0);
        sub_10010FC20(&qword_10119E0F0);
        sub_10069AE18();
        _ConditionalContent<>.init(storage:)();
        v75 = v175;
        v76 = v177[0];
        v29[4] = v176;
        v29[5] = v76;
        *(v29 + 90) = *(v177 + 10);
        v77 = v173;
        v78 = v174;
        *v29 = v172;
        v29[1] = v77;
        v29[2] = v78;
        v29[3] = v75;
        swift_storeEnumTagMultiPayload();
        sub_10010FC20(&qword_10119E0D8);
        sub_10069AD94();
        sub_10069B004();
        v56 = v157;
        _ConditionalContent<>.init(storage:)();

        sub_1000095E8(&v178, &qword_10119E0F0);
        goto LABEL_11;
      }

      sub_1000089F8(v164 + *(v61 + 40), v57, &unk_101188920);
      v59 = v138;
      v60 = v139;
    }

    sub_10003D17C(v57, v58, &unk_101188920);
    v79 = v58;
    v80 = 1;
    v81 = (*(v59 + 48))(v58, 1, v60);
    v56 = v157;
    v164 = v29;
    v82 = v59;
    v84 = v141;
    v83 = v142;
    v85 = v143;
    if (v81 != 1)
    {
      (*(v82 + 32))(v143, v79, v60);
      v86 = type metadata accessor for Artwork.CropStyle();
      (*(*(v86 - 8) + 56))(v83, 1, 1, v86);
      ArtworkImage.ViewModel.init(artwork:cropStyle:)(v85, v83, v84);
      v80 = 0;
    }

    v87 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v87 - 8) + 56))(v84, v80, 1, v87);
    v88 = sub_10010FC20(&unk_101182950);
    v89 = v140;
    (*(*(v88 - 8) + 56))(v140, 8, 11, v88);
    ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, &v165);
    v91 = v151;
    v90 = v152;
    v92 = v153;
    (*(v151 + 104))(v152, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v153);
    v93 = v148;
    static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v84, v89, &v165, v90, v148);
    (*(v91 + 8))(v90, v92);
    sub_10069B35C(v89, type metadata accessor for ArtworkImage.Placeholder);
    sub_1000095E8(v84, &unk_10118A5E0);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v94 = v146;
    (*(v149 + 32))(v146, v93, v150);
    v95 = (v94 + *(v145 + 36));
    v96 = v173;
    v97 = v174;
    *v95 = v172;
    v95[1] = v96;
    v95[2] = v97;
    v98 = v147;
    sub_10003D17C(v94, v147, &qword_10118D620);
    *(v98 + *(v144 + 36)) = 256;
    LOBYTE(v94) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v107 = v136;
    sub_10003D17C(v98, v136, &qword_10119E0B8);
    v108 = v107 + *(v158 + 36);
    *v108 = v94;
    *(v108 + 8) = v100;
    *(v108 + 16) = v102;
    *(v108 + 24) = v104;
    *(v108 + 32) = v106;
    *(v108 + 40) = 0;
    v109 = v137;
    sub_10003D17C(v107, v137, &qword_10119E0C0);
    sub_1000089F8(v109, v164, &qword_10119E0C0);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_10119E0D8);
    sub_10069AD94();
    sub_10069B004();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v109, &qword_10119E0C0);
  }

LABEL_11:
  v110 = static Axis.Set.horizontal.getter();
  v111 = v161;
  *v161 = v110;
  v112 = sub_10010FC20(&qword_10119E138);
  sub_1006975B4(v111 + *(v112 + 44));
  v113 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v122 = v111 + *(sub_10010FC20(&qword_10119E140) + 36);
  *v122 = v113;
  *(v122 + 8) = v115;
  *(v122 + 16) = v117;
  *(v122 + 24) = v119;
  *(v122 + 32) = v121;
  *(v122 + 40) = 0;
  v123 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v124 = v159;
  v125 = v111 + *(v160 + 36);
  *v125 = v123;
  *(v125 + 8) = v126;
  *(v125 + 16) = v127;
  *(v125 + 24) = v128;
  *(v125 + 32) = v129;
  *(v125 + 40) = 0;
  sub_1000089F8(v56, v124, &qword_10119E0D0);
  v130 = v56;
  v131 = v162;
  sub_1000089F8(v111, v162, &qword_10119E0B0);
  v132 = v163;
  sub_1000089F8(v124, v163, &qword_10119E0D0);
  v133 = sub_10010FC20(&qword_10119E148);
  sub_1000089F8(v131, v132 + *(v133 + 48), &qword_10119E0B0);
  sub_1000095E8(v111, &qword_10119E0B0);
  sub_1000095E8(v130, &qword_10119E0D0);
  sub_1000095E8(v131, &qword_10119E0B0);
  return sub_1000095E8(v124, &qword_10119E0D0);
}

uint64_t sub_1006975B4@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_10010FC20(&qword_10119E150);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_10010FC20(&qword_10119E158);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_10010FC20(&qword_10119E160);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  *v18 = static VerticalAlignment.center.getter();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = sub_10010FC20(&qword_10119E168);
  sub_100697920(&v18[*(v19 + 44)]);
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v20 = &v12[*(sub_10010FC20(&qword_10119E170) + 44)];
  *v6 = static HorizontalAlignment.leading.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v21 = sub_10010FC20(&qword_10119E178);
  sub_1006982A0(&v6[*(v21 + 44)]);
  sub_1000089F8(v6, v3, &qword_10119E150);
  sub_1000089F8(v3, v20, &qword_10119E150);
  v22 = v20 + *(sub_10010FC20(&qword_10119E180) + 48);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_1000095E8(v6, &qword_10119E150);
  sub_1000095E8(v3, &qword_10119E150);
  sub_1000089F8(v18, v15, &qword_10119E160);
  sub_1000089F8(v12, v9, &qword_10119E158);
  v23 = v27;
  sub_1000089F8(v15, v27, &qword_10119E160);
  v24 = sub_10010FC20(&qword_10119E188);
  sub_1000089F8(v9, v23 + *(v24 + 48), &qword_10119E158);
  sub_1000095E8(v12, &qword_10119E158);
  sub_1000095E8(v18, &qword_10119E160);
  sub_1000095E8(v9, &qword_10119E158);
  return sub_1000095E8(v15, &qword_10119E160);
}

uint64_t sub_100697920@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&qword_10119E190);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_10010FC20(&qword_10119E198);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_100697B24();
  sub_100697F34(v7);
  sub_1000089F8(v13, v10, &qword_10119E198);
  sub_1000089F8(v7, v4, &qword_10119E190);
  sub_1000089F8(v10, a1, &qword_10119E198);
  v14 = sub_10010FC20(&qword_10119E1D0);
  v15 = a1 + *(v14 + 48);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_1000089F8(v4, a1 + *(v14 + 64), &qword_10119E190);
  sub_1000095E8(v7, &qword_10119E190);
  sub_1000095E8(v13, &qword_10119E198);
  sub_1000095E8(v4, &qword_10119E190);
  return sub_1000095E8(v10, &qword_10119E198);
}

uint64_t sub_100697B24()
{
  v1 = type metadata accessor for SharePlayProxCard(0);
  v31 = *(v1 - 8);
  v2 = *(v31 + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10010FC20(&qword_10119E1B8);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v32 = sub_10010FC20(&qword_10119E1C0);
  __chkstk_darwin(v32);
  v9 = &v31 - v8;
  v10 = sub_1006937E4();
  if (v11)
  {
    v33 = v10;
    v34 = v11;
    sub_100009838();
    v12 = Text.init<A>(_:)();
    v14 = v13;
    v16 = v15;
    v17 = Text.bold()();
    v19 = v18;
    v21 = v20;
    v31 = v5;
    v23 = v22;
    sub_10011895C(v12, v14, v16 & 1);

    *v9 = v17;
    *(v9 + 1) = v19;
    v9[16] = v21 & 1;
    *(v9 + 3) = v23;
    swift_storeEnumTagMultiPayload();
    sub_10069B200();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    v34 = v25;
    sub_10069B540(v0, &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharePlayProxCard);
    v26 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v27 = swift_allocObject();
    sub_10069A548(&v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    sub_100009838();
    Button<>.init<A>(_:action:)();
    v28 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v30 = &v7[*(v5 + 36)];
    *v30 = KeyPath;
    v30[1] = v28;
    sub_1000089F8(v7, v9, &qword_10119E1B8);
    swift_storeEnumTagMultiPayload();
    sub_10069B200();
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v7, &qword_10119E1B8);
  }
}

uint64_t sub_100697F34@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SharePlayProxCard(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10010FC20(&qword_10119E1A8);
  v19[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  sub_1006937E4();
  if (v11)
  {

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v19[1] = String.init(localized:table:bundle:locale:comment:)();
    v19[2] = v12;
    sub_10069B540(v1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharePlayProxCard);
    v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v14 = swift_allocObject();
    sub_10069A548(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    sub_100009838();
    Button<>.init<A>(_:action:)();
    KeyPath = swift_getKeyPath();
    v16 = &v10[*(sub_10010FC20(&qword_10119E1B0) + 36)];
    *v16 = KeyPath;
    *(v16 + 1) = 1;
    v16[16] = 0;
    *&v10[*(v8 + 36)] = 0x3FF0000000000000;
    sub_10003D17C(v10, a1, &qword_10119E1A8);
    return (*(v19[0] + 56))(a1, 0, 1, v8);
  }

  else
  {
    v18 = *(v19[0] + 56);

    return v18(a1, 1, 1, v8);
  }
}

uint64_t sub_1006982A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&qword_10119E190);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = sub_10010FC20(&qword_10119E198);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  sub_100697B24();
  sub_100697F34(v7);
  sub_1000089F8(v13, v10, &qword_10119E198);
  sub_1000089F8(v7, v4, &qword_10119E190);
  sub_1000089F8(v10, a1, &qword_10119E198);
  v14 = sub_10010FC20(&qword_10119E1A0);
  sub_1000089F8(v4, a1 + *(v14 + 48), &qword_10119E190);
  sub_1000095E8(v7, &qword_10119E190);
  sub_1000095E8(v13, &qword_10119E198);
  sub_1000095E8(v4, &qword_10119E190);
  return sub_1000095E8(v10, &qword_10119E198);
}

uint64_t sub_100698490(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.openURL.setter();
}

id sub_100698558()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    LSApplicationWorkspace.openMusicSettings()();

    return static OpenURLAction.Result.handled.getter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006985C0(uint64_t a1)
{
  type metadata accessor for SharePlayProxCard(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6 == 1)
  {
    if (*(a1 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 52) + 16) != 1)
    {
      return static Color.clear.getter();
    }

    goto LABEL_7;
  }

  sub_1006937E4();
  if (!v2)
  {
LABEL_7:
    v5 = [objc_opt_self() systemFillColor];
    return Color.init(_:)();
  }

  v3 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  return Color.init(_:)();
}

__n128 sub_1006986DC@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v4 = sub_10010FC20(&qword_10119E050);
  __chkstk_darwin(v4);
  v6 = &v34[-v5];
  v7 = sub_10010FC20(&qword_10119E1E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34[-v9];
  v11 = sub_10010FC20(&qword_10119E048);
  __chkstk_darwin(v11);
  v13 = &v34[-v12];
  v14 = sub_10010FC20(&qword_10119E038);
  __chkstk_darwin(v14);
  v16 = &v34[-v15];
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v17 = sub_10010FC20(&qword_10119E1E8);
  sub_100698AE8(a1, &v6[*(v17 + 44)]);
  v18 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v20 = &v6[*(v4 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_10069AC2C();
  View.bold(_:)();
  sub_1000095E8(v6, &qword_10119E050);
  if (v35)
  {
    v21 = static Color.primary.getter();
  }

  else
  {
    v21 = static Color.white.getter();
  }

  v22 = v21;
  v23 = swift_getKeyPath();
  (*(v8 + 32))(v13, v10, v7);
  v24 = &v13[*(v11 + 36)];
  *v24 = v23;
  v24[1] = v22;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v13, v16, &qword_10119E048);
  v25 = &v16[*(v14 + 36)];
  v26 = v42;
  v25[4] = v41;
  v25[5] = v26;
  v25[6] = v43;
  v27 = v38;
  *v25 = v37;
  v25[1] = v27;
  v28 = v40;
  v25[2] = v39;
  v25[3] = v28;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v36;
  sub_10003D17C(v16, v36, &qword_10119E038);
  v30 = v29 + *(sub_10010FC20(&qword_10119E020) + 36);
  v31 = v49;
  *(v30 + 64) = v48;
  *(v30 + 80) = v31;
  *(v30 + 96) = v50;
  v32 = v45;
  *v30 = v44;
  *(v30 + 16) = v32;
  result = v47;
  *(v30 + 32) = v46;
  *(v30 + 48) = result;
  return result;
}

uint64_t sub_100698AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_101199ED0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - v6;
  v8 = sub_10010FC20(&qword_10119E1F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = *(a1 + *(type metadata accessor for SharePlayProxCard(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v43 == 1 && (*(a1 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 52) + 16) & 1) == 0)
  {
    ProgressView<>.init<>()();
    (*(v5 + 32))(v13, v7, v4);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v5 + 56))(v13, v15, 1, v4);
  v16 = a1 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 52);
  v18 = *v16;
  v17 = *(v16 + 8);
  if (*(v16 + 16))
  {
    *&v43 = *v16;
    *(&v43 + 1) = v17;
    sub_100009838();

    v38 = Text.init<A>(_:)();
    v39 = v19;
    v40 = v20 & 1;
    v41 = v21;
    v42 = 1;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {

    *&v43 = v18(v14);
    *(&v43 + 1) = v22;
    sub_100009838();
    v23 = Text.init<A>(_:)();
    v25 = v24;
    v38 = v23;
    v39 = v24;
    v27 = v26 & 1;
    v40 = v26 & 1;
    v41 = v28;
    v42 = 0;
    sub_10021D0C0(v23, v24, v26 & 1);

    _ConditionalContent<>.init(storage:)();
    sub_10069A538(v18, v17, 0);
    sub_10011895C(v23, v25, v27);
  }

  v36 = v43;
  v37 = v44;
  v29 = v45;
  sub_1000089F8(v13, v10, &qword_10119E1F0);
  sub_1000089F8(v10, a2, &qword_10119E1F0);
  v30 = a2 + *(sub_10010FC20(&qword_10119E1F8) + 48);
  v32 = v36;
  v31 = v37;
  *v30 = v36;
  *(v30 + 16) = v31;
  *(v30 + 32) = v29;
  v33 = v32;
  v34 = v31;
  sub_10069B2E4(v32, *(&v32 + 1), v31);
  sub_1000095E8(v13, &qword_10119E1F0);
  sub_10069B320(v33, *(&v33 + 1), v34);
  return sub_1000095E8(v10, &qword_10119E1F0);
}

uint64_t sub_100698EE8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for SharePlayProxCard(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10010FC20(&qword_101180F78);
  v64 = *(v10 - 8);
  __chkstk_darwin(v10);
  v59 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v58 = &v49 - v13;
  __chkstk_darwin(v14);
  v57 = &v49 - v15;
  __chkstk_darwin(v16);
  v56 = &v49 - v17;
  __chkstk_darwin(v18);
  v55 = &v49 - v19;
  __chkstk_darwin(v20);
  v62 = &v49 - v21;
  __chkstk_darwin(v22);
  v65 = &v49 - v23;
  __chkstk_darwin(v24);
  v63 = &v49 - v25;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v66 = String.init(localized:table:bundle:locale:comment:)();
  v67 = v26;
  v61 = type metadata accessor for SharePlayProxCard;
  sub_10069B540(a1, &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharePlayProxCard);
  v54 = *(v4 + 80);
  v27 = (v54 + 16) & ~v54;
  v28 = swift_allocObject();
  sub_10069A548(&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  v53 = sub_100009838();
  Button<>.init<A>(_:action:)();
  String.LocalizationValue.init(stringLiteral:)();
  v51 = v8;
  static Locale.current.getter();
  v66 = String.init(localized:table:bundle:locale:comment:)();
  v67 = v29;
  v52 = a1;
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v61;
  sub_10069B540(a1, v50, v61);
  v31 = swift_allocObject();
  sub_10069A548(&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v27);
  Button<>.init<A>(_:action:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v66 = String.init(localized:table:bundle:locale:comment:)();
  v67 = v32;
  v33 = v50;
  sub_10069B540(a1, v50, v30);
  v34 = swift_allocObject();
  sub_10069A548(v33, v34 + v27);
  v35 = v62;
  Button<>.init<A>(_:action:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v66 = String.init(localized:table:bundle:locale:comment:)();
  v67 = v36;
  sub_10069B540(v52, v33, v61);
  v37 = swift_allocObject();
  sub_10069A548(v33, v37 + v27);
  v38 = v55;
  Button<>.init<A>(_:action:)();
  v39 = *(v64 + 16);
  v40 = v56;
  v39(v56, v63, v10);
  v41 = v57;
  v39(v57, v65, v10);
  v42 = v58;
  v39(v58, v35, v10);
  v43 = v59;
  v44 = v38;
  v39(v59, v38, v10);
  v45 = v60;
  v39(v60, v40, v10);
  v46 = sub_10010FC20(&qword_10119DF90);
  v39(&v45[v46[12]], v41, v10);
  v39(&v45[v46[16]], v42, v10);
  v39(&v45[v46[20]], v43, v10);
  v47 = *(v64 + 8);
  v47(v44, v10);
  v47(v62, v10);
  v47(v65, v10);
  v47(v63, v10);
  v47(v43, v10);
  v47(v42, v10);
  v47(v41, v10);
  return (v47)(v40, v10);
}

uint64_t sub_100699690()
{
  type metadata accessor for SharePlayProxCard(0);
  sub_10010FC20(&qword_101196580);
  State.wrappedValue.setter();
  sub_10010FC20(&unk_101197960);
  return State.wrappedValue.setter();
}

void sub_100699754(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for SharePlayProxCard(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v1 + OBJC_IVAR____TtCV5Music17SharePlayProxCard9CardState_removedImage) = 1;
}

double sub_100699848@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharePlayProxCard(0);
  type metadata accessor for SharePlayProxCard.CardState(0);
  sub_100693494();
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_10010FC20(&qword_101196580);
  State.projectedValue.getter();
  sub_10010FC20(&unk_101197960);
  State.projectedValue.getter();
  UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor();

  ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)(v8, *(&v8 + 1), v9, v5, v6, v7, v5, v6, a1, v7, 0, 0, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v3 = (a1 + *(sub_10010FC20(&qword_101196588) + 36));
  *v3 = v8;
  v3[1] = v9;
  result = *&v10;
  v3[2] = v10;
  return result;
}

uint64_t sub_100699A20@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100699AA0@<X0>(char *a1@<X8>)
{
  v44 = a1;
  v1 = sub_10010FC20(&qword_10119DF80);
  __chkstk_darwin(v1 - 8);
  v3 = &v37 - v2;
  v43 = sub_10010FC20(&qword_101180F78);
  v47 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v37 - v6;
  __chkstk_darwin(v7);
  v46 = &v37 - v8;
  __chkstk_darwin(v9);
  v45 = &v37 - v10;
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10010FC20(&qword_101194578);
  v39 = *(v13 - 8);
  v14 = v39;
  v40 = v13;
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v21;
  type metadata accessor for SharePlayProxCard(0);
  type metadata accessor for SharePlayProxCard.CardState(0);
  sub_100693494();
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v48 = v20;
  v49 = v22;
  sub_100009838();
  v38 = v19;
  TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
  LocalizedStringKey.init(stringLiteral:)();
  v23 = v45;
  Button<>.init(_:action:)();
  LocalizedStringKey.init(stringLiteral:)();
  static ButtonRole.cancel.getter();
  v24 = type metadata accessor for ButtonRole();
  (*(*(v24 - 8) + 56))(v3, 0, 1, v24);
  v25 = v46;
  Button<>.init(_:role:action:)();
  v26 = *(v14 + 16);
  v37 = v16;
  v27 = v40;
  v26(v16, v19, v40);
  v28 = *(v47 + 16);
  v29 = v41;
  v30 = v43;
  v28(v41, v23, v43);
  v31 = v42;
  v28(v42, v25, v30);
  v32 = v44;
  v26(v44, v16, v27);
  v33 = sub_10010FC20(&qword_10119DF88);
  v28(&v32[*(v33 + 48)], v29, v30);
  v28(&v32[*(v33 + 64)], v31, v30);
  v34 = *(v47 + 8);
  v34(v46, v30);
  v34(v45, v30);
  v35 = *(v39 + 8);
  v35(v38, v27);
  v34(v31, v30);
  v34(v29, v30);
  return (v35)(v37, v27);
}

uint64_t sub_10069A0BC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10069A13C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10069A1C0()
{
  type metadata accessor for SharePlayProxCard(0);
  sub_10010FC20(&unk_101197960);
  return State.wrappedValue.setter();
}

uint64_t sub_10069A234()
{
  type metadata accessor for SharePlayProxCard(0);
  sub_10010FC20(&unk_101197960);
  return State.wrappedValue.setter();
}

unint64_t sub_10069A2BC()
{
  result = qword_10119DF68;
  if (!qword_10119DF68)
  {
    sub_1001109D0(&qword_10119DF38);
    sub_1001109D0(&qword_10119DF30);
    sub_1001109D0(&qword_10119DF48);
    sub_100020674(&qword_10119DF50, &qword_10119DF30);
    sub_100020674(&qword_10119DF58, &qword_10119DF48);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_10119DF70, &qword_101196590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119DF68);
  }

  return result;
}

uint64_t sub_10069A444@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10069A4C4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10069A538(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10069A548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayProxCard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10069A5B0()
{
  v1 = type metadata accessor for SharePlayProxCard(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for SharePlayProxCard.ViewModel(0);
  v4 = v3[10];
  v5 = type metadata accessor for Artwork();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  sub_10069A538(*(v2 + v3[13]), *(v2 + v3[13] + 8), *(v2 + v3[13] + 16));

  if (*(v2 + *(v1 + 24)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10069A834@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10069A888@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10069A904(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10119E1D8);
  __chkstk_darwin(v2 - 8);
  sub_1000089F8(a1, &v5 - v3, &qword_10119E1D8);
  return EnvironmentValues.textCase.setter();
}

uint64_t sub_10069A9AC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10069AA04()
{
  v1 = type metadata accessor for SharePlayProxCard(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 32) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_10069AAB4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10069AB38()
{
  result = qword_10119E040;
  if (!qword_10119E040)
  {
    sub_1001109D0(&qword_10119E048);
    sub_1001109D0(&qword_10119E050);
    sub_10069AC2C();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E040);
  }

  return result;
}

unint64_t sub_10069AC2C()
{
  result = qword_10119E058;
  if (!qword_10119E058)
  {
    sub_1001109D0(&qword_10119E050);
    sub_100020674(&qword_10119E060, &qword_10119E068);
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E058);
  }

  return result;
}

uint64_t sub_10069AD10@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10069AD94()
{
  result = qword_10119E0E0;
  if (!qword_10119E0E0)
  {
    sub_1001109D0(&qword_10119E0D8);
    sub_10069AE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E0E0);
  }

  return result;
}

unint64_t sub_10069AE18()
{
  result = qword_10119E0E8;
  if (!qword_10119E0E8)
  {
    sub_1001109D0(&qword_10119E0F0);
    sub_10069AED0(&qword_10119E0F8, &qword_10119E100, &unk_100EDCD08, sub_10069AF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E0E8);
  }

  return result;
}

uint64_t sub_10069AED0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    sub_100020674(&qword_10119E118, &qword_10119E120);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10069AF80()
{
  result = qword_10119E108;
  if (!qword_10119E108)
  {
    sub_1001109D0(&qword_10119E110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E108);
  }

  return result;
}

unint64_t sub_10069B004()
{
  result = qword_10119E128;
  if (!qword_10119E128)
  {
    sub_1001109D0(&qword_10119E0C0);
    sub_10069AED0(&qword_10119E130, &qword_10119E0B8, &unk_100EDCCD0, sub_1003C3A74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E128);
  }

  return result;
}

uint64_t sub_10069B0D4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SharePlayProxCard(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10069B148@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10069B200()
{
  result = qword_10119E1C8;
  if (!qword_10119E1C8)
  {
    sub_1001109D0(&qword_10119E1B8);
    sub_100020674(&qword_101180F70, &qword_101180F78);
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E1C8);
  }

  return result;
}

uint64_t sub_10069B2E4(uint64_t a1, uint64_t a2, char a3)
{
  sub_10021D0C0(a1, a2, a3 & 1);
}

uint64_t sub_10069B320(uint64_t a1, uint64_t a2, char a3)
{
  sub_10011895C(a1, a2, a3 & 1);
}

uint64_t sub_10069B35C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10069B3BC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10069B3CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100692080(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_10069B48C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1006927D8(a1, v4, v5, v6);
}

uint64_t sub_10069B540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10069B5AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  if ((a1 >> 62) > 1)
  {
    result = 0;
    if (a1 >> 62 == 2)
    {
      return result;
    }

    if (a1 == 0xC000000000000000 && !(a3 | a2))
    {
      static DeviceCapabilities.hasWAPICapability.getter();
    }
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

void (*sub_10069B85C(unint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  result = 0;
  if ((a1 >> 62) - 1 >= 2)
  {
    if (a1 >> 62)
    {
      result = 0;
      if (a1 == 0xC000000000000000 && !(a3 | a2))
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        return sub_10069D768;
      }
    }

    else
    {

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      return a2;
    }
  }

  return result;
}

uint64_t sub_10069BA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 88))(v7, v4);
  if (v11 == enum case for MusicPropertySource.catalog(_:))
  {
    *v10 = 0;
    swift_storeEnumTagMultiPayload();
  }

  else if (v11 == enum case for MusicPropertySource.library(_:))
  {
    v12 = sub_10010FC20(&qword_10118A430);
    v13 = *(v12 + 48);
    v14 = *(v12 + 64);
    v15 = _s6AlbumsV5ScopeOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
    v10[v13] = 0;
    v10[v14] = 0;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v10 = 0;
    swift_storeEnumTagMultiPayload();
    (*(v5 + 8))(v7, v4);
  }

  sub_1006AA2C8(v10, a2, type metadata accessor for ContainerDetail.Source);
  return (*(v5 + 8))(a1, v4);
}

id sub_10069BCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

uint64_t sub_10069BD04()
{
  v1 = v0;
  v2 = type metadata accessor for Genre();
  v26 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Curator();
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artist();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContainerDetail.AttributionItem(0);
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006AA200(v1, v14, type metadata accessor for ContainerDetail.AttributionItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_9;
    }

    v19 = v26;
    (*(v26 + 32))(v4, v14, v2);
    Genre.catalogID.getter();
    v21 = v20;
    (*(v19 + 8))(v4, v2);
    if (v21)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v16 = v25;
        (*(v25 + 32))(v7, v14, v5);
        Curator.catalogID.getter();
        v18 = v17;
        (*(v16 + 8))(v7, v5);
        if (!v18)
        {
          return 0;
        }

        goto LABEL_11;
      }

LABEL_9:
      sub_1006AA268(v14, type metadata accessor for ContainerDetail.AttributionItem);
      return 1;
    }

    (*(v9 + 32))(v11, v14, v8);
    Artist.catalogID.getter();
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    if (v23)
    {
LABEL_11:

      return 1;
    }
  }

  return 0;
}

uint64_t sub_10069C06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Playlist();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for Genre();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = type metadata accessor for RadioShow();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = type metadata accessor for Curator();
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v10 = sub_10010FC20(&unk_10119DA70);
  v5[16] = v10;
  v5[17] = *(v10 - 8);
  v5[18] = swift_task_alloc();
  v11 = type metadata accessor for SocialProfile();
  v5[19] = v11;
  v5[20] = *(v11 - 8);
  v5[21] = swift_task_alloc();
  v12 = type metadata accessor for Artist();
  v5[22] = v12;
  v5[23] = *(v12 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for ContainerDetail.AttributionItem(0);
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_10069C390, 0, 0);
}

uint64_t sub_10069C390()
{
  sub_1006AA200(v0[2], v0[26], type metadata accessor for ContainerDetail.AttributionItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[26];
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v19 = v0[17];
      v18 = v0[18];
      v20 = v0[16];
      v22 = v0[11];
      v21 = v0[12];
      v23 = v0[10];
      (*(v22 + 32))(v21, v2, v23);
      (*(v22 + 16))(v18, v21, v23);
      (*(v19 + 104))(v18, enum case for MusicPageProvider.Destination.radioShowDetail<A, B>(_:), v20);
      v7 = swift_task_alloc();
      v0[30] = v7;
      *v7 = v0;
      v8 = sub_10069CE74;
    }

    else
    {
      v10 = v0[17];
      v9 = v0[18];
      v11 = v0[16];
      if (EnumCaseMultiPayload == 4)
      {
        v13 = v0[8];
        v12 = v0[9];
        v14 = v0[7];
        (*(v13 + 32))(v12, v2, v14);
        (*(v13 + 16))(v9, v12, v14);
        (*(v10 + 104))(v9, enum case for MusicPageProvider.Destination.genreDetail<A, B>(_:), v11);
        v7 = swift_task_alloc();
        v0[31] = v7;
        *v7 = v0;
        v8 = sub_10069D0B0;
      }

      else
      {
        v31 = v0[5];
        v30 = v0[6];
        v32 = v0[4];
        (*(v31 + 32))(v30, v2, v32);
        (*(v31 + 16))(v9, v30, v32);
        (*(v10 + 104))(v9, enum case for MusicPageProvider.Destination.playlistCollaboratorsDetail<A, B>(_:), v11);
        v7 = swift_task_alloc();
        v0[32] = v7;
        *v7 = v0;
        v8 = sub_10069D2EC;
      }
    }

LABEL_14:
    v7[1] = v8;
    v33 = v0[3];

    return sub_100704654(v33, 0);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = v0[18];
      v4 = v0[16];
      v5 = v0[17];
      (*(v0[20] + 32))(v0[21], v2, v0[19]);
      *v3 = SocialProfile.id.getter();
      v3[1] = v6;
      (*(v5 + 104))(v3, enum case for MusicPageProvider.Destination.socialProfileDetail<A, B>(_:), v4);
      v7 = swift_task_alloc();
      v0[28] = v7;
      *v7 = v0;
      v8 = sub_10069C9FC;
    }

    else
    {
      v25 = v0[17];
      v24 = v0[18];
      v27 = v0[15];
      v26 = v0[16];
      v28 = v0[13];
      v29 = v0[14];
      (*(v29 + 32))(v27, v2, v28);
      (*(v29 + 16))(v24, v27, v28);
      (*(v25 + 104))(v24, enum case for MusicPageProvider.Destination.curatorDetail<A, B>(_:), v26);
      v7 = swift_task_alloc();
      v0[29] = v7;
      *v7 = v0;
      v8 = sub_10069CC38;
    }

    goto LABEL_14;
  }

  (*(v0[23] + 32))(v0[24], v2, v0[22]);
  v15 = swift_task_alloc();
  v0[27] = v15;
  *v15 = v0;
  v15[1] = sub_10069C81C;
  v16 = v0[3];

  return sub_100136860(v16);
}

uint64_t sub_10069C81C()
{

  return _swift_task_switch(sub_10069C918, 0, 0);
}

uint64_t sub_10069C918()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10069C9FC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10069CB54, 0, 0);
}

uint64_t sub_10069CB54()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10069CC38()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10069CD90, 0, 0);
}

uint64_t sub_10069CD90()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10069CE74()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10069CFCC, 0, 0);
}

uint64_t sub_10069CFCC()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10069D0B0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10069D208, 0, 0);
}

uint64_t sub_10069D208()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10069D2EC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10069D444, 0, 0);
}

uint64_t sub_10069D444()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10069D52C(unint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  if ((a1 >> 62) <= 1 || (result = 0, a1 >> 62 != 2))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return result;
}

void sub_10069D768()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    LSApplicationWorkspace.openSettings()();
  }

  else
  {
    __break(1u);
  }
}

void sub_10069D888()
{
  v1 = v0;
  swift_getObjectType();
  v74.receiver = v0;
  v74.super_class = type metadata accessor for ContainerDetail.ViewController(0);
  objc_msgSendSuper2(&v74, "viewDidLoad");
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012193F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Called viewDidLoad", v5, 2u);
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = sub_1006AB9BC;
  v73 = v7;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_10027D328;
  v71 = &unk_1010BA8F8;
  v8 = _Block_copy(&aBlock);

  v9 = [v6 scheduledTimerWithTimeInterval:0 repeats:v8 block:3.0];
  _Block_release(v8);
  v10 = *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer];
  *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] = v9;

  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  v13 = [objc_opt_self() systemBackgroundColor];
  [v12 setBackgroundColor:v13];

  v14 = &v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  type metadata accessor for PlaylistDetailDataSource(0);
  if (swift_dynamicCastClass())
  {
    _s14SheetPresenterV10DataSourceCMa();
    swift_allocObject();
    *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_sheetPresenterDataSource] = sub_10055D1A8();
    swift_retain_n();

    sub_1006AA330(&unk_10119E450, _s14SheetPresenterV10DataSourceCMa);
    v15 = ObservedObject.init(wrappedValue:)();
    v17 = v16;
    sub_10010FC20(&qword_10119ED90);
    State.init(wrappedValue:)();
    v18 = aBlock;
    v19 = v69;
    aBlock = v15;
    v69 = v17;
    v70 = v18;
    v71 = v19;
    v20 = objc_allocWithZone(sub_10010FC20(&unk_10119E460));
    v21 = _UIHostingView.init(rootView:)();
    v22 = [v1 view];
    if (!v22)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v23 = v22;
    [v22 addSubview:v21];
  }

  v24 = sub_1006A6078();
  v25 = [v1 view];
  if (!v25)
  {
    goto LABEL_17;
  }

  v26 = v25;
  [v25 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = type metadata accessor for HIMetricsCollectionView();
  v67.receiver = v24;
  v67.super_class = v35;
  objc_msgSendSuper2(&v67, "frame");
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v66.receiver = v24;
  v66.super_class = v35;
  objc_msgSendSuper2(&v66, "setFrame:", v28, v30, v32, v34);
  sub_1001891B4(v37, v39, v41, v43);

  v44 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView;
  [*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView] setAutoresizingMask:18];
  v45 = [v1 view];
  if (!v45)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v46 = v45;
  [v45 addSubview:*&v1[v44]];

  v47 = *&v1[v44];
  v48 = v47;
  v75.value.super.super.super.isa = v47;
  UIViewController.setContentScrollView(_:)(v75);

  v49 = *v14;
  v50 = v14[1];
  ObjectType = swift_getObjectType();
  aBlock = v49;
  if ((v50[27])(ObjectType, v50))
  {
    [*&v1[v44] setAlpha:0.0];
  }

  if (!*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_storeItemMetadataDidChangeObserver])
  {
    v52 = *v14;
    v53 = v14[1];
    v54 = swift_getObjectType();
    aBlock = v52;
    (v53[42])(v54, v53);
  }

  v55 = [v1 traitCollection];
  v56 = sub_100217F14();
  UITraitCollection.subscript.getter();

  v57 = sub_10049CB78();

  swift_beginAccess();
  v58 = *v14;
  v59 = v14[1];
  v60 = swift_getObjectType();
  (v59[14])(v57 & 1, v60, v59);
  *v14 = v58;
  v14[1] = v59;
  swift_endAccess();
  sub_10010FC20(&unk_101182D80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100EBC6B0;
  *(v61 + 32) = &type metadata for LibraryFilterTrait;
  *(v61 + 40) = v56;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_10069F67C();
  v62 = [v1 navigationItem];
  [v62 setLargeTitleDisplayMode:2];

  v63 = *v14;
  v64 = v14[1];
  v65 = swift_getObjectType();
  aBlock = v63;
  *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dragDropController] = (v64[12])(v65, v64);

  sub_10069FFC8(0);
}

void sub_10069DFC0()
{
  v0 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = v4;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;
    sub_1001F4CB8(0, 0, v2, &unk_100EDD340, v8);
  }
}

uint64_t sub_10069E114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  type metadata accessor for MainActor();
  *(v4 + 64) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10069E1AC, v6, v5);
}

uint64_t sub_10069E1AC()
{
  v1 = v0[7];

  v2 = (v1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  ObjectType = swift_getObjectType();
  v0[5] = v3;
  v0[6] = v3;
  v6 = *(v4 + 216);
  swift_unknownObjectRetain();
  v7 = v6(ObjectType, v4);
  (*(v4 + 440))(v7 & 1 | 0x8000000000000000, 0, 0, ObjectType, v4);
  swift_unknownObjectRelease();
  v8 = v0[1];

  return v8();
}

uint64_t sub_10069E30C(char a1)
{
  v2 = v1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for ContainerDetail.ViewController(0);
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_1012193F8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Called viewDidAppear", v7, 2u);
  }

  sub_1006A3EE4();
  v8 = v2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion];
  v2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion] = 1;
  if (v8 != 1)
  {
    v9 = &v2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
    swift_beginAccess();
    v10 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v10 + 432))(ObjectType, v10);
  }

  sub_100503D5C();
  v12 = &v2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v13 = *(v12 + 1);
  v14 = swift_getObjectType();
  if ((*(v13 + 200))(v14, v13))
  {
    dispatch thunk of RelatedContentProvider.onAppear()();
  }

  return sub_1006A4A18();
}

void sub_10069E54C(char a1)
{
  v27.receiver = v1;
  v27.super_class = type metadata accessor for ContainerDetail.ViewController(0);
  objc_msgSendSuper2(&v27, "viewWillAppear:", a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 viewControllers];
    sub_100009F78(0, &qword_101183D40);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_1003FC8BC(v1, v6);
    v9 = v8;

    if ((v9 & 1) == 0 && v7 >= 1)
    {
      v10 = [v4 viewControllers];
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = sub_10004056C(v7 - 1, v11);
      }

      else
      {
        if (v7 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v12 = *(v11 + 8 * (v7 - 1) + 32);
      }

      v13 = v12;

      v14 = [v13 navigationItem];

      [v14 setBackButtonDisplayMode:2];
    }
  }

  v15 = sub_1006A44A0();
  *(v15 + 145) = 1;
  v16 = v15[4];
  v17 = *(v16 + 16);

  if (v17)
  {
    v18 = 0;
    v19 = (v16 + 40);
    do
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
LABEL_23:
        swift_once();
        if ((byte_101218F00 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_21:

        v24 = v1;
        goto LABEL_27;
      }

      v22 = *v19;
      v23 = qword_10117F808;
      swift_unknownObjectRetain();
      if (v23 == -1)
      {
        if (byte_101218F00)
        {
          goto LABEL_16;
        }
      }

      else
      {
        swift_once();
        if (byte_101218F00)
        {
LABEL_16:
          v20 = 0;
          goto LABEL_12;
        }
      }

      v20 = *(v15 + 145);
LABEL_12:
      ++v18;
      ObjectType = swift_getObjectType();
      (*(v22 + 16))(v20, ObjectType, v22);
      swift_unknownObjectRelease();
      v19 += 2;
    }

    while (v17 != v18);
  }

  if (qword_10117F808 != -1)
  {
    goto LABEL_23;
  }

  if (byte_101218F00)
  {
    goto LABEL_21;
  }

LABEL_24:
  v24 = v1;
  if (*(v15 + 145))
  {
    sub_10039C918();
  }

LABEL_27:
  type metadata accessor for ApplicationMainMenu();
  v25 = sub_100314AEC();
  if (v25)
  {
    v26 = v25;
    sub_1007CA9D0(v24, v25);
  }
}

void sub_10069E8B4(char a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_10119E440);
  __chkstk_darwin(v4 - 8);
  v6 = (&v29 - v5);
  v7 = type metadata accessor for PreviewPlaybackController.Context(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlacementID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContainerDetail.ViewController(0);
  v31.receiver = v2;
  v31.super_class = v15;
  objc_msgSendSuper2(&v31, "viewWillDisappear:", a1 & 1);
  if (sub_1006A4900())
  {
    static PlacementID.BubbleTip.downloadButton.getter();
    dispatch thunk of PopoverProvider.removeRegistration(for:)();

    (*(v12 + 8))(v14, v11);
  }

  v16 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___popoverProvider;
  v17 = *&v2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___popoverProvider];
  if (v17)
  {

    static PlacementID.BubbleTip.addToLibraryButton.getter();
    dispatch thunk of PopoverProvider.removeRegistration(for:)();
    sub_1000D9148(v17);
    (*(v12 + 8))(v14, v11);
    v18 = *&v2[v16];
    if (v18)
    {

      dispatch thunk of PopoverProvider.dismissPopover(animated:)();
      sub_1000D9148(v18);
    }
  }

  if (qword_10117F1F8 != -1)
  {
LABEL_37:
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8[6](v6, 1, v7) == 1)
  {
    sub_1000095E8(v6, &unk_10119E440);
  }

  else
  {
    sub_1006AA2C8(v6, v10, type metadata accessor for PreviewPlaybackController.Context);
    v19 = v10[16];
    if (v19 != 2 && (v19 & 1) == 0)
    {
      sub_10012F360();
    }

    sub_1006AA268(v10, type metadata accessor for PreviewPlaybackController.Context);
  }

  if (qword_10117F718 != -1)
  {
    swift_once();
  }

  GroupActivitiesManager.SuggestionProvider.removeSuggestedItem(from:)(v2);
  sub_10069EDC0();
  v30 = v2;
  v6 = sub_1006A44A0();
  *(v6 + 145) = 0;
  v10 = v6[4];
  v2 = *(v10 + 2);

  v8 = &unk_101218000;
  if (v2)
  {
    v7 = 0;
    v21 = (v10 + 40);
    do
    {
      if (v7 >= *(v10 + 2))
      {
        __break(1u);
        goto LABEL_37;
      }

      v24 = *v21;
      v25 = qword_10117F808;
      swift_unknownObjectRetain();
      if (v25 == -1)
      {
        if (byte_101218F00)
        {
          goto LABEL_25;
        }
      }

      else
      {
        swift_once();
        if (byte_101218F00)
        {
LABEL_25:
          v22 = 0;
          goto LABEL_21;
        }
      }

      v22 = *(v6 + 145);
LABEL_21:
      ++v7;
      ObjectType = swift_getObjectType();
      (*(v24 + 16))(v22, ObjectType, v24);
      swift_unknownObjectRelease();
      v21 += 2;
    }

    while (v2 != v7);
  }

  if (qword_10117F808 != -1)
  {
    swift_once();
  }

  v26 = v30;
  if (byte_101218F00 & 1) == 0 && (*(v6 + 145))
  {
    sub_10039C918();
  }

  type metadata accessor for ApplicationMainMenu();
  v27 = sub_100314AEC();
  if (v27)
  {
    v28 = v27;
    sub_1006F49A4(v26, v27);
  }
}

uint64_t sub_10069EDC0()
{
  v0 = sub_10010FC20(&unk_1011839D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v28 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  sub_1006A44A0();
  v10 = type metadata accessor for IndexPath();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  Date.init()();
  v11 = sub_10039F3F0(2u, v6, v9);

  (*(v4 + 8))(v6, v3);
  sub_1000095E8(v9, &unk_10118BCE0);
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v29 = _swiftEmptyArrayStorage;
      sub_10066CB8C(0, v12, 0);
      v13 = 32;
      v14 = v29;
      do
      {
        v15 = *(v11 + v13);
        v29 = v14;
        v17 = v14[2];
        v16 = v14[3];

        if (v17 >= v16 >> 1)
        {
          sub_10066CB8C((v16 > 1), v17 + 1, 1);
          v14 = v29;
        }

        v14[2] = v17 + 1;
        v14[v17 + 4] = v15;
        v13 += 8;
        --v12;
      }

      while (v12);
    }

    else
    {

      v14 = _swiftEmptyArrayStorage;
    }

    v18 = *MetricsReportingController.shared.unsafeMutableAddressor();
    sub_1006A4544(v2);
    v19 = sub_10053771C();
    v21 = v20;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v22 = qword_101218AD0;
    v23 = GroupActivitiesManager.hasJoined.getter();
    v24 = GroupActivitiesManager.participantsCount.getter();
    v25 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v18) + 0xA8))(v14, v2, v19, v21, v23 & 1, v24, *(v22 + v25));

    sub_1000095E8(v2, &unk_1011839D0);
  }

  sub_10039C114(v26);
}

id sub_10069F2A8()
{
  v1 = sub_10010FC20(&qword_101197020);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = (v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  ObjectType = swift_getObjectType();
  v12 = v5;
  (*(v6 + 144))(ObjectType, v6);
  v8 = type metadata accessor for UIContentUnavailableConfiguration();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_1000095E8(v3, &qword_101197020);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  else
  {
    *(&v14 + 1) = v8;
    v15 = &protocol witness table for UIContentUnavailableConfiguration;
    v10 = sub_10001C8B8(&v13);
    (*(v9 + 32))(v10, v3, v8);
  }

  UIViewController.contentUnavailableConfiguration.setter();
  return sub_1006A26DC();
}

id sub_10069F520()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___trailingBarButtonItemGroup;
  v2 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___trailingBarButtonItemGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___trailingBarButtonItemGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6C0;
    v5 = v0;
    *(v4 + 32) = sub_1006A6D30();
    sub_100009F78(0, &qword_101181580);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100EBC6C0;
    v7 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___contextualActionsBarButtonItem);
    *(v6 + 32) = v7;
    v8 = v7;
    v9 = static UIBarButtonItem.contextBarButtonItem(representativeOf:)(v6);

    v10 = objc_allocWithZone(UIBarButtonItemGroup);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = [v10 initWithBarButtonItems:isa representativeItem:v9];

    v13 = *(v5 + v1);
    *(v5 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void sub_10069F67C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v3 = *(v2 + 1);
  ObjectType = swift_getObjectType();
  if (((*(v3 + 216))(ObjectType, v3) & 1) == 0)
  {
    v5 = *(v2 + 1);
    v6 = swift_getObjectType();
    if (((*(v5 + 296))(v6, v5) & 1) == 0)
    {
      v7 = *(v2 + 1);
      v8 = swift_getObjectType();
      v23 = (*(v7 + 400))(v8, v7);
      sub_1006A6D30();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = sub_10069F520();
      v10 = [v9 barButtonItems];

      sub_100009F78(0, &qword_101181580);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v10) = sub_10047C934(v23, v11);

      if (v10)
      {
      }

      else
      {
        v12 = *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___trailingBarButtonItemGroup];
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v12 setBarButtonItems:isa];
      }

      v14 = [v1 navigationItem];
      v15 = [v14 trailingItemGroups];

      sub_100009F78(0, &unk_1011842F0);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v16 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v17)
      {
        v18 = [v1 navigationItem];
        sub_10010FC20(&qword_101183990);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_100EBC6C0;
        v20 = *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___trailingBarButtonItemGroup];
        *(v19 + 32) = v20;
        v21 = v20;
        v22 = Array._bridgeToObjectiveC()().super.isa;

        [v18 setTrailingItemGroups:v22];
      }
    }
  }
}

uint64_t sub_10069F9B8()
{
  v1 = type metadata accessor for MusicPropertySource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator;
  if (*&v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator])
  {
    v6 = *&v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator];
  }

  else
  {
    v7 = &v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
    swift_beginAccess();
    v8 = *v7;
    v9 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v26[5] = v8;
    v11 = v0;
    (*(v9 + 224))(v26, ObjectType, v9);
    v12 = *v7;
    v13 = *(v7 + 1);
    v14 = swift_getObjectType();
    v25[2] = v12;
    (*(v13 + 232))(v14, v13);
    v15 = *v7;
    v16 = *(v7 + 1);
    v17 = swift_getObjectType();
    v25[1] = v15;
    (*(v16 + 216))(v17, v16);
    type metadata accessor for HeaderCoordinator();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v6 + 72) = 512;
    swift_unknownObjectWeakAssign();
    v18 = v11;
    v19 = sub_10055C90C(v26);
    v21 = v20;
    v23 = v22;
    (*(v2 + 8))(v4, v1);
    sub_1000095E8(v26, &unk_101192850);
    *(v6 + 40) = v19;
    *(v6 + 48) = v21;
    *(v6 + 56) = v23;

    *&v11[v5] = v6;
  }

  return v6;
}

void sub_10069FC04(uint64_t a1)
{
  v3 = type metadata accessor for Artwork();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_10010FC20(&unk_101191420);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1000089F8(a1, v12, &unk_101188920);
  sub_1000089F8(v1 + v13, &v12[v14], &unk_101188920);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_1000095E8(v12, &unk_101188920);
      return;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v12, v8, &unk_101188920);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000095E8(v12, &unk_101191420);
LABEL_7:
    sub_10069FFC8(1);
    return;
  }

  v16 = v19;
  (*(v4 + 32))(v19, &v12[v14], v3);
  sub_1006AA330(&unk_10118D3D0, &type metadata accessor for Artwork);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v16, v3);
  v18(v8, v3);
  sub_1000095E8(v12, &unk_101188920);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

id sub_10069FF54()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___backdropContainer;
  v2 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___backdropContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___backdropContainer);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10069FFC8(int a1)
{
  LODWORD(v93) = a1;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v88 = &v82 - v3;
  v4 = sub_10010FC20(&unk_101191420);
  __chkstk_darwin(v4);
  v90 = &v82 - v5;
  v6 = sub_10010FC20(&qword_10118D808);
  v7 = __chkstk_darwin(v6 - 8);
  v92 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v82 - v9;
  v11 = sub_10010FC20(&unk_101188920);
  v12 = __chkstk_darwin(v11 - 8);
  v87 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v82 - v15;
  v17 = __chkstk_darwin(v14);
  v91 = &v82 - v18;
  __chkstk_darwin(v17);
  v20 = &v82 - v19;
  v21 = type metadata accessor for Artwork();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = __chkstk_darwin(v21);
  v89 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v94 = &v82 - v25;
  v26 = [v1 traitCollection];
  v27 = [v26 userInterfaceIdiom];

  if (v27 != 6)
  {
    return;
  }

  v28 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
  swift_beginAccess();
  sub_1000089F8(&v1[v28], v20, &unk_101188920);
  v29 = v22[6];
  if (v29(v20, 1, v21) == 1)
  {
    sub_1000095E8(v20, &unk_101188920);
    return;
  }

  v86 = v22;
  v30 = v22 + 4;
  v31 = v22[4];
  v32 = v94;
  v85 = v30;
  v84 = v31;
  v33 = (v31)(v94, v20, v21);
  v34 = v21;
  if ((v93 & 1) == 0)
  {
    if (*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView])
    {
      goto LABEL_11;
    }

    v67 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropTask;
    swift_beginAccess();
    sub_1000089F8(&v1[v67], v10, &qword_10118D808);
    v68 = sub_10010FC20(&qword_101181A00);
    if ((*(*(v68 - 8) + 48))(v10, 1, v68))
    {
      sub_1000095E8(v10, &qword_10118D808);
      v69 = v86;
      v93 = v86[7];
      (v93)(v91, 1, 1, v34);
      v70 = v34;
      v71 = v69[2];
    }

    else
    {
      v82 = v86[2];
      v70 = v34;
      v72 = v91;
      v82(v91, v10, v34);
      sub_1000095E8(v10, &qword_10118D808);
      v93 = v86[7];
      (v93)(v72, 0, 1, v34);
      v71 = v82;
    }

    v32 = v94;
    v71(v16, v94, v70);
    (v93)(v16, 0, 1, v70);
    v73 = *(v4 + 48);
    v74 = v90;
    sub_1000089F8(v91, v90, &unk_101188920);
    v93 = v73;
    sub_1000089F8(v16, &v73[v74], &unk_101188920);
    v34 = v70;
    if (v29(v74, 1, v70) == 1)
    {
      sub_1000095E8(v16, &unk_101188920);
      v75 = v90;
      sub_1000095E8(v91, &unk_101188920);
      if (v29(&v93[v75], 1, v70) == 1)
      {
        sub_1000095E8(v75, &unk_101188920);
        goto LABEL_11;
      }
    }

    else
    {
      v76 = v87;
      sub_1000089F8(v74, v87, &unk_101188920);
      v77 = v29(&v93[v74], 1, v70);
      v78 = v86;
      if (v77 != 1)
      {
        v79 = v89;
        v84(v89, &v93[v74], v34);
        sub_1006AA330(&unk_10118D3D0, &type metadata accessor for Artwork);
        LODWORD(v93) = dispatch thunk of static Equatable.== infix(_:_:)();
        v80 = v34;
        v81 = v78[1];
        v81(v79, v80);
        sub_1000095E8(v16, &unk_101188920);
        sub_1000095E8(v91, &unk_101188920);
        v81(v76, v80);
        v34 = v80;
        v33 = sub_1000095E8(v90, &unk_101188920);
        if ((v93 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        (v86[1])(v32, v34);
        return;
      }

      sub_1000095E8(v16, &unk_101188920);
      v75 = v90;
      sub_1000095E8(v91, &unk_101188920);
      (v78[1])(v76, v34);
    }

    v33 = sub_1000095E8(v75, &unk_101191420);
  }

LABEL_5:
  v35 = v1;
  v36 = sub_1006A6078(v33);
  v37 = type metadata accessor for HIMetricsCollectionView();
  v96.receiver = v36;
  v96.super_class = v37;
  objc_msgSendSuper2(&v96, "frame");
  v39 = v38;
  v41 = v40;

  if (v39 == 0.0 && v41 == 0.0)
  {
    goto LABEL_11;
  }

  v95.receiver = *&v35[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView];
  v95.super_class = v37;
  objc_msgSendSuper2(&v95, "frame");
  v43 = v42;
  v45 = v44;
  v83 = v35;
  v46 = [v35 traitCollection];
  [v46 displayScale];
  v48 = v47;

  v49 = sub_10010FC20(&qword_101181A00);
  v93 = *(v49 + 48);
  v51 = v86 + 2;
  v50 = v86[2];
  v50(v92, v32, v34);
  v52 = type metadata accessor for TaskPriority();
  v53 = v88;
  (*(*(v52 - 8) + 56))(v88, 1, 1, v52);
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = v89;
  v50(v89, v32, v34);
  type metadata accessor for MainActor();

  v56 = static MainActor.shared.getter();
  v57 = v34;
  v58 = (*(v51 + 64) + 40) & ~*(v51 + 64);
  v59 = (v23 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 2) = v56;
  *(v60 + 3) = &protocol witness table for MainActor;
  *(v60 + 4) = v54;
  v84(&v60[v58], v55, v57);
  v61 = &v60[v59];
  *v61 = v43;
  *(v61 + 1) = v45;
  *&v60[(v59 + 23) & 0xFFFFFFFFFFFFFFF8] = v48;

  v62 = v60;
  v63 = v92;
  v64 = sub_1001F4CB8(0, 0, v53, &unk_100EDD2A8, v62);
  *&v93[v63] = v64;
  v65 = *(v49 - 8);
  (*(v65 + 56))(v63, 0, 1, v49);
  v66 = &v83[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropTask];
  swift_beginAccess();
  if (!(*(v65 + 48))(v66, 1, v49))
  {

    Task.cancel()();
  }

  (v86[1])(v94, v57);
  swift_beginAccess();
  sub_10006B010(v63, v66, &qword_10118D808);
  swift_endAccess();
}

uint64_t sub_1006A0C0C(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a2;
  *(v8 + 120) = a3;
  *(v8 + 104) = a1;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  sub_10010FC20(&unk_101181520);
  *(v8 + 128) = swift_task_alloc();
  v9 = type metadata accessor for Artwork();
  *(v8 + 136) = v9;
  v10 = *(v9 - 8);
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 + 64);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = sub_10010FC20(&unk_101191420);
  *(v8 + 176) = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = type metadata accessor for MainActor();
  *(v8 + 208) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 216) = v12;
  *(v8 + 224) = v11;

  return _swift_task_switch(sub_1006A0DCC, v12, v11);
}

uint64_t sub_1006A0DCC()
{
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 29) = Strong;
    if (Strong)
    {
      v2 = swift_task_alloc();
      *(v0 + 30) = v2;
      *v2 = v0;
      v2[1] = sub_1006A1098;
      v3 = v0[14];
      v4 = v0[15];
      v5 = v0[13];
      v6 = *(v0 + 12);

      return sub_1006AABE0(v6, v5, v3, v4);
    }

    v9 = *(v0 + 19);
    v8 = *(v0 + 20);
    v10 = *(v0 + 17);
    v11 = *(v0 + 18);
    v12 = *(v0 + 16);
    v13 = *(v0 + 12);
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = swift_allocObject();
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v11 + 16))(v8, v13, v10);

    v17 = static MainActor.shared.getter();
    v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = &protocol witness table for MainActor;
    (*(v11 + 32))(v19 + v18, v8, v10);
    *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;

    sub_1001F4CB8(0, 0, v12, &unk_100EDD2B8, v19);
  }

  v20 = *(v0 + 1);

  return v20();
}

uint64_t sub_1006A1098(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(sub_1006A11C0, v4, v3);
}

uint64_t sub_1006A11C0()
{
  v1 = v0[31];

  if (!v1)
  {
    v12 = v0[29];
LABEL_10:

    v20 = v0[19];
    v19 = v0[20];
    v21 = v0[17];
    v22 = v0[18];
    v23 = v0[16];
    v24 = v0[12];
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v22 + 16))(v19, v24, v21);

    v28 = static MainActor.shared.getter();
    v29 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = &protocol witness table for MainActor;
    (*(v22 + 32))(v30 + v29, v19, v21);
    *(v30 + ((v20 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;

    sub_1001F4CB8(0, 0, v23, &unk_100EDD2B8, v30);

    goto LABEL_13;
  }

  v2 = v0[29];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[17];
  v7 = v0[18];
  v55 = v0[31];
  v54 = *(v7 + 16);
  v54(v3, v0[12], v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  v8 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
  swift_beginAccess();
  v9 = *(v5 + 48);
  sub_1000089F8(v3, v4, &unk_101188920);
  sub_1000089F8(v2 + v8, v4 + v9, &unk_101188920);
  v10 = *(v7 + 48);
  if (v10(v4, 1, v6) != 1)
  {
    v13 = v0[17];
    sub_1000089F8(v0[22], v0[23], &unk_101188920);
    v14 = v10(v4 + v9, 1, v13);
    v15 = v0[23];
    v16 = v0[24];
    if (v14 != 1)
    {
      v31 = v0[22];
      v32 = v0[20];
      v33 = v0[17];
      v34 = v0[18];
      (*(v34 + 32))(v32, v4 + v9, v33);
      sub_1006AA330(&unk_10118D3D0, &type metadata accessor for Artwork);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v34 + 8);
      v36(v32, v33);
      sub_1000095E8(v16, &unk_101188920);
      v36(v15, v33);
      sub_1000095E8(v31, &unk_101188920);
      if (v35)
      {
        goto LABEL_12;
      }

      v12 = v0[29];
      goto LABEL_9;
    }

    v17 = v0[17];
    v18 = v0[18];
    sub_1000095E8(v0[24], &unk_101188920);
    (*(v18 + 8))(v15, v17);
LABEL_8:
    v12 = v0[29];
    sub_1000095E8(v0[22], &unk_101191420);
LABEL_9:

    goto LABEL_10;
  }

  v11 = v0[17];
  sub_1000095E8(v0[24], &unk_101188920);
  if (v10(v4 + v9, 1, v11) != 1)
  {
    goto LABEL_8;
  }

  sub_1000095E8(v0[22], &unk_101188920);
LABEL_12:
  v38 = v0[19];
  v37 = v0[20];
  v40 = v0[17];
  v39 = v0[18];
  v41 = v0[16];
  v52 = v0[29];
  v53 = v41;
  v42 = v0[12];
  v43 = type metadata accessor for TaskPriority();
  (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54(v37, v42, v40);

  v45 = v55;
  v46 = static MainActor.shared.getter();
  v47 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v48 = (v38 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 2) = v46;
  *(v49 + 3) = &protocol witness table for MainActor;
  *(v49 + 4) = v44;
  (*(v39 + 32))(&v49[v47], v37, v40);
  *&v49[v48] = v45;

  sub_1001F4CB8(0, 0, v53, &unk_100EDD2D0, v49);

LABEL_13:

  v50 = v0[1];

  return v50();
}

uint64_t sub_1006A17F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = type metadata accessor for Artwork();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = sub_10010FC20(&unk_101191420);
  v5[20] = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006A1978, v8, v7);
}

uint64_t sub_1006A1978()
{

  if (static Task<>.isCancelled.getter())
  {
    goto LABEL_16;
  }

  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[17];
  (*(v3 + 16))(v1, v0[14], v2);
  v4 = *(v3 + 56);
  v4(v1, 0, 1, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = v0[22];
  if (Strong)
  {
    v7 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
    v8 = Strong;
    swift_beginAccess();
    sub_1000089F8(v8 + v7, v6, &unk_101188920);
  }

  else
  {
    v4(v0[22], 1, 1, v0[16]);
  }

  v9 = v0[22];
  v10 = v0[20];
  v11 = v0[16];
  v12 = v0[17];
  v13 = *(v0[19] + 48);
  sub_1000089F8(v0[23], v10, &unk_101188920);
  sub_1000089F8(v9, v10 + v13, &unk_101188920);
  v14 = *(v12 + 48);
  if (v14(v10, 1, v11) != 1)
  {
    v17 = v0[16];
    sub_1000089F8(v0[20], v0[21], &unk_101188920);
    v18 = v14(v10 + v13, 1, v17);
    v20 = v0[22];
    v19 = v0[23];
    v21 = v0[21];
    if (v18 != 1)
    {
      v37 = v0[20];
      v25 = v0[17];
      v24 = v0[18];
      v26 = v0[16];
      (*(v25 + 32))(v24, v10 + v13, v26);
      sub_1006AA330(&unk_10118D3D0, &type metadata accessor for Artwork);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v25 + 8);
      v28(v24, v26);
      sub_1000095E8(v20, &unk_101188920);
      sub_1000095E8(v19, &unk_101188920);
      v28(v21, v26);
      sub_1000095E8(v37, &unk_101188920);
      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v22 = v0[16];
    v23 = v0[17];
    sub_1000095E8(v0[22], &unk_101188920);
    sub_1000095E8(v19, &unk_101188920);
    (*(v23 + 8))(v21, v22);
LABEL_10:
    sub_1000095E8(v0[20], &unk_101191420);
    goto LABEL_16;
  }

  v15 = v0[23];
  v16 = v0[16];
  sub_1000095E8(v0[22], &unk_101188920);
  sub_1000095E8(v15, &unk_101188920);
  if (v14(v10 + v13, 1, v16) != 1)
  {
    goto LABEL_10;
  }

  sub_1000095E8(v0[20], &unk_101188920);
LABEL_12:
  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView);
    v31 = v29;
    v32 = v30;

    if (v30)
    {
      [v32 removeFromSuperview];
      swift_beginAccess();
      v33 = swift_unknownObjectWeakLoadStrong();

      if (v33)
      {
        v34 = *&v33[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView];
        *&v33[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView] = 0;
      }
    }
  }

LABEL_16:

  v35 = v0[1];

  return v35();
}

uint64_t sub_1006A1DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = type metadata accessor for Artwork();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = sub_10010FC20(&unk_101191420);
  v6[18] = swift_task_alloc();
  sub_10010FC20(&qword_10118D808);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[24] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006A1FB4, v9, v8);
}

uint64_t sub_1006A1FB4()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = v0[20];
      v50 = Strong;
      v3 = Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropTask;
      swift_beginAccess();
      v49 = v3;
      sub_1000089F8(v3, v2, &qword_10118D808);
      v48 = sub_10010FC20(&qword_101181A00);
      v46 = *(v48 - 8);
      v47 = *(v46 + 48);
      v4 = v47(v2, 1);
      v5 = v0[23];
      v6 = v0[20];
      v7 = v0[14];
      v8 = v0[15];
      if (v4)
      {
        sub_1000095E8(v0[20], &qword_10118D808);
        v9 = *(v8 + 56);
        v9(v5, 1, 1, v7);
        v10 = *(v8 + 16);
      }

      else
      {
        v11 = *(v8 + 16);
        v11(v0[23], v0[20], v0[14]);
        sub_1000095E8(v6, &qword_10118D808);
        v9 = *(v8 + 56);
        v9(v5, 0, 1, v7);
        v10 = v11;
      }

      v13 = v0[22];
      v12 = v0[23];
      v15 = v0[17];
      v14 = v0[18];
      v17 = v0[14];
      v16 = v0[15];
      v10(v13, v0[12], v17);
      v9(v13, 0, 1, v17);
      v18 = *(v15 + 48);
      sub_1000089F8(v12, v14, &unk_101188920);
      sub_1000089F8(v13, v14 + v18, &unk_101188920);
      v19 = *(v16 + 48);
      if (v19(v14, 1, v17) == 1)
      {
        v20 = v0[23];
        v21 = v0[14];
        sub_1000095E8(v0[22], &unk_101188920);
        sub_1000095E8(v20, &unk_101188920);
        if (v19(v14 + v18, 1, v21) == 1)
        {
          sub_1000095E8(v0[18], &unk_101188920);
          v22 = v50;
LABEL_13:
          (*(v46 + 56))(v0[19], 1, 1, v48);
          if (!(v47)(v49, 1, v48))
          {

            Task.cancel()();
          }

          v35 = v0[19];
          v36 = v0[13];
          swift_beginAccess();
          sub_10006B010(v35, v49, &qword_10118D808);
          swift_endAccess();
          v37 = [objc_allocWithZone(UIImageView) initWithImage:v36];
          [v37 setContentMode:0];
          [v37 setAlpha:0.0];
          [v37 setInsetsLayoutMarginsFromSafeArea:0];
          v38 = *&v22[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView];
          *&v22[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView] = v37;

          v39 = sub_10069FF54();
          UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v37, 0);

          sub_100009F78(0, &qword_101181620);
          v40 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
          v41 = swift_allocObject();
          *(v41 + 16) = v37;
          v42 = v37;
          static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v40, 0, sub_1006AB9A0, v41, 0, 0, 0.25, 0.0);

          goto LABEL_16;
        }
      }

      else
      {
        v23 = v0[14];
        sub_1000089F8(v0[18], v0[21], &unk_101188920);
        v24 = v19(v14 + v18, 1, v23);
        v26 = v0[22];
        v25 = v0[23];
        v27 = v0[21];
        if (v24 != 1)
        {
          v30 = v0[18];
          v31 = v0[15];
          v32 = v0[16];
          v33 = v0[14];
          (*(v31 + 32))(v32, v14 + v18, v33);
          sub_1006AA330(&unk_10118D3D0, &type metadata accessor for Artwork);
          v45 = dispatch thunk of static Equatable.== infix(_:_:)();
          v34 = *(v31 + 8);
          v34(v32, v33);
          sub_1000095E8(v26, &unk_101188920);
          sub_1000095E8(v25, &unk_101188920);
          v34(v27, v33);
          sub_1000095E8(v30, &unk_101188920);
          v22 = v50;
          if (v45)
          {
            goto LABEL_13;
          }

LABEL_16:

          goto LABEL_17;
        }

        v29 = v0[14];
        v28 = v0[15];
        sub_1000095E8(v0[22], &unk_101188920);
        sub_1000095E8(v25, &unk_101188920);
        (*(v28 + 8))(v27, v29);
      }

      sub_1000095E8(v0[18], &unk_101191420);
      v22 = v50;
      goto LABEL_16;
    }
  }

LABEL_17:

  v43 = v0[1];

  return v43();
}

id sub_1006A26DC()
{
  v1 = v0;
  v128 = _s15FloatingArtworkVMa(0);
  __chkstk_darwin(v128);
  v129 = (&v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_10010FC20(&unk_101192950);
  v4 = __chkstk_darwin(v3 - 8);
  v126 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v130 = &v123 - v6;
  v7 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v123 - v11;
  v13 = type metadata accessor for ArtworkImage.Info(0);
  v14 = __chkstk_darwin(v13 - 8);
  v127 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v123 - v17;
  __chkstk_darwin(v16);
  v20 = &v123 - v19;
  v21 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v21 - 8);
  v23 = &v123 - v22;
  v24 = &v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v25 = *v24;
  v26 = *(v24 + 1);
  ObjectType = swift_getObjectType();
  v132 = v25;
  v28 = (*(v26 + 304))(ObjectType, v26);
  swift_getKeyPath();
  v133[0] = v28;
  sub_1006AA330(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *(v28 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork);

  v30 = [v1 traitCollection];
  v31 = [v30 userInterfaceIdiom];

  if (v31 != 6)
  {
    goto LABEL_7;
  }

  v33 = sub_1006A6078(v32);
  v34 = *&v33[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];

  if (qword_10117FC38 != -1)
  {
    swift_once();
  }

  if (*&qword_1012193E8 < v34)
  {
    UIViewController.contentUnavailableConfiguration.getter();
    v35 = v134;
    sub_1000095E8(v133, &unk_10119E410);
    if ((v29 ^ (v35 != 0)))
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_7:
    if (!v29)
    {
      goto LABEL_16;
    }
  }

  v124 = v12;
  v125 = v9;
  v36 = v18;
  v37 = v20;
  v38 = *v24;
  v39 = *(v24 + 1);
  v40 = swift_getObjectType();
  v132 = v38;
  swift_unknownObjectRetain();
  v41 = [v1 traitCollection];
  v42 = [v41 userInterfaceIdiom];

  if (v42 != 6)
  {
    goto LABEL_13;
  }

  v44 = sub_1006A6078(v43);
  v45 = *&v44[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];

  if (qword_10117FC38 != -1)
  {
    swift_once();
  }

  if (*&qword_1012193E8 < v45)
  {
    UIViewController.contentUnavailableConfiguration.getter();
    v46 = v134 == 0;
    sub_1000095E8(v133, &unk_10119E410);
  }

  else
  {
LABEL_13:
    v46 = 0;
  }

  (*(v39 + 408))(v46, v40, v39);
  swift_unknownObjectRelease();
  v47 = *v24;
  v48 = *(v24 + 1);
  v49 = swift_getObjectType();
  v133[0] = v47;
  v50 = (*(v48 + 376))(0, v49, v48);
  v20 = v37;
  v18 = v36;
  v12 = v124;
  v9 = v125;
  if ((v51 & 1) == 0)
  {
    v52 = v50;
    v53 = type metadata accessor for TaskPriority();
    (*(*(v53 - 8) + 56))(v23, 1, 1, v53);
    type metadata accessor for MainActor();
    v54 = v1;
    v55 = static MainActor.shared.getter();
    v56 = swift_allocObject();
    v56[2] = v55;
    v56[3] = &protocol witness table for MainActor;
    v56[4] = v54;
    v56[5] = v52;
    sub_1001F4CB8(0, 0, v23, &unk_100EDD298, v56);
  }

LABEL_16:
  v57 = [v1 traitCollection];
  v58 = [v57 userInterfaceIdiom];

  if (v58 != 6)
  {
    return [*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer] removeFromSuperview];
  }

  v61 = sub_1006A6078(v59);
  v62 = *&v61[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];

  if (qword_10117FC38 != -1)
  {
    swift_once();
  }

  v60 = *&qword_1012193E8;
  if (*&qword_1012193E8 >= v62)
  {
    return [*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer] removeFromSuperview];
  }

  UIViewController.contentUnavailableConfiguration.getter();
  v63 = v134;
  sub_1000095E8(v133, &unk_10119E410);
  if (v63)
  {
    return [*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer] removeFromSuperview];
  }

  v65 = *v24;
  v66 = *(v24 + 1);
  v67 = swift_getObjectType();
  v132 = v65;
  (*(v66 + 152))(v67, v66);
  v68 = sub_10010FC20(&unk_101182950);
  (*(*(v68 - 8) + 56))(v9, 1, 11, v68);
  if (qword_10117FC40 != -1)
  {
    swift_once();
  }

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(qword_1012193F0, 0, qword_1012193F0, 0, 0, 1, 2, v133);
  *&v69 = ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v12, v9, 0x3FF0000000000000, 0, v133, 0x4034000000000000, -1, 0, v20).n128_u64[0];
  v70 = *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer];
  v71 = [v70 superview];
  v72 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView;
  if (v71 && (v73 = v71, v74 = *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView], sub_100009F78(0, &qword_101181620), v75 = v74, v76 = static NSObject.== infix(_:_:)(), v73, v75, (v76 & 1) != 0))
  {
    v77 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource;
    if (*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource] && (sub_1006AA200(v20, v18, type metadata accessor for ArtworkImage.Info), swift_getKeyPath(), swift_getKeyPath(), sub_1006AA200(v18, v127, type metadata accessor for ArtworkImage.Info), , static Published.subscript.setter(), sub_1006AA268(v18, type metadata accessor for ArtworkImage.Info), *&v1[v77]) && (v78 = *v24, v79 = *(v24 + 1), v129 = swift_getObjectType(), v132 = v78, v80 = *(v79 + 160), , v81 = v130, v80(v129, v79), swift_getKeyPath(), swift_getKeyPath(), sub_1000089F8(v81, v126, &unk_101192950), static Published.subscript.setter(), sub_1000095E8(v81, &unk_101192950), (v82 = *&v1[v77]) != 0))
    {
      v83 = *v24;
      v84 = *(v24 + 1);
      v85 = swift_getObjectType();
      v132 = v83;
      v86 = *(v84 + 184);

      swift_unknownObjectRetain();
      v87 = v86(v85, v84);
      v89 = v88;
      sub_1006AA268(v20, type metadata accessor for ArtworkImage.Info);
      swift_unknownObjectRelease();
      v90 = (v82 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction);
      v91 = *(v82 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction);
      *v90 = v87;
      v90[1] = v89;
      sub_100030444(v87);
      sub_100020438(v91);

      return sub_100020438(v87);
    }

    else
    {
      return sub_1006AA268(v20, type metadata accessor for ArtworkImage.Info);
    }
  }

  else
  {
    v92 = v20;
    v93 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource;
    if (*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource])
    {
      v94 = *&v1[v72];
      sub_1006A3684(v94);

      [*&v1[v72] _addContentSubview:v70 atBack:1];
      return sub_1006AA268(v92, type metadata accessor for ArtworkImage.Info);
    }

    else
    {
      v123 = v92;
      sub_1006AA200(v92, v18, type metadata accessor for ArtworkImage.Info);
      v95 = *v24;
      v96 = *(v24 + 1);
      v97 = swift_getObjectType();
      v132 = v95;
      v98 = *(v96 + 160);
      v126 = v18;
      v99 = v130;
      v98(v97, v96);
      v100 = *v24;
      v101 = *(v24 + 1);
      v102 = swift_getObjectType();
      v131 = v100;
      v103 = (*(v101 + 184))(v102, v101);
      v127 = v72;
      v104 = v103;
      v106 = v105;
      _s15FloatingArtworkV10DataSourceCMa(0);
      swift_allocObject();
      v107 = sub_10056F838(v126, v99, v104, v106);
      sub_100020438(v104);
      v108 = *v24;
      v109 = *(v24 + 1);
      v110 = swift_getObjectType();
      v132 = v108;
      v111 = (*(v109 + 248))(v110, v109);
      v113 = v112;
      *&v1[v93] = v107;

      v114 = v127;
      v115 = *&v1[v127];
      sub_1006A3684(v115);

      [v70 frame];
      [v70 setFrame:?];
      sub_1006AA330(&unk_10119E420, _s15FloatingArtworkV10DataSourceCMa);

      v116 = ObservedObject.init(wrappedValue:)();
      v117 = v128;
      v118 = v129;
      *v129 = v116;
      v118[1] = v119;
      v118[2] = v111;
      v118[3] = v113;
      v120 = *(v117 + 24);
      *(v118 + v120) = swift_getKeyPath();
      sub_10010FC20(&qword_101194F38);
      swift_storeEnumTagMultiPayload();
      v121 = objc_allocWithZone(sub_10010FC20(&unk_10119E430));
      v122 = _UIHostingView.init(rootView:)();
      UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v122, 0);

      [*&v1[v114] _addContentSubview:v70 atBack:1];

      return sub_1006AA268(v123, type metadata accessor for ArtworkImage.Info);
    }
  }
}

uint64_t sub_1006A3468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006A3500, v7, v6);
}

uint64_t sub_1006A3500()
{
  v1 = *(v0 + 16);

  v2 = sub_1006A6078();
  sub_10010FC20(&qword_10118AC80);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  IndexPath.init(index:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 reconfigureItemsAtIndexPaths:isa];

  v4 = [*(v1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView) collectionViewLayout];
  [v4 invalidateLayout];

  v5 = *(v0 + 8);

  return v5();
}

id sub_1006A3684(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
  swift_beginAccess();
  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 376))(10, ObjectType, v5);
  v9 = v8;
  v10 = 0.0;
  if ((v8 & 1) == 0)
  {
    v11 = v7;
    v12 = sub_1006A4D04();
    [v12 _contentFrameForSection:v11];
    v14 = v13;

    if (qword_10117FC40 != -1)
    {
      swift_once();
    }

    if (v14 >= *&qword_1012193F0)
    {
      v10 = v14;
    }

    else
    {
      v10 = *&qword_1012193F0;
    }
  }

  [a1 contentOffset];
  v16 = v15;
  v17 = [a1 safeAreaInsets];
  v19 = v16 + v18;
  if ((v9 & 1) == 0)
  {
    if (qword_10117FC40 != -1)
    {
      v17 = swift_once();
    }

    if (v10 < v19 + *&qword_1012193F0)
    {
      v19 = v10 - *&qword_1012193F0;
    }
  }

  if (v19 <= 0.0)
  {
    v19 = 0.0;
  }

  v20 = *(v2 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer);
  v21 = sub_1006A6078(v17);
  v22 = *&v21[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];

  [v20 frame];
  return [v20 setFrame:{v22, v19}];
}

uint64_t sub_1006A3864()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___relatedContentSpacingData;
  if (*(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___relatedContentSpacingData))
  {
    v2 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___relatedContentSpacingData);
  }

  else
  {
    type metadata accessor for RelatedContentSpacing.Data(0);
    v2 = swift_allocObject();
    Published.init(initialValue:)();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1006A3900(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentState;
  swift_beginAccess();
  v4 = type metadata accessor for RelatedContentProvider.State();
  v5 = *(v4 - 8);
  (*(v5 + 24))(&v1[v3], a1, v4);
  swift_endAccess();
  v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload] = 1;
  if (![v1 isViewLoaded])
  {
    return (*(v5 + 8))(a1, v4);
  }

  v6 = &v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v7 = *(v6 + 1);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 360);
  swift_unknownObjectRetain();
  v9(ObjectType, v7);
  (*(v5 + 8))(a1, v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1006A3A7C()
{
  v1 = type metadata accessor for RelatedContentProvider.State();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v31[-v6];
  v8 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentState;
  swift_beginAccess();
  v9 = *(v2 + 16);
  v9(v7, &v0[v8], v1);
  v10 = (*(v2 + 88))(v7, v1);
  if (v10 == enum case for RelatedContentProvider.State.loaded(_:))
  {
    (*(v2 + 96))(v7, v1);
    return *v7;
  }

  else
  {
    if (v10 == enum case for RelatedContentProvider.State.error(_:))
    {
      (*(v2 + 96))(v7, v1);
      v12 = *v7;
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000060E4(v13, qword_1012193F8);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v34 = v12;
        v35 = v17;
        *v16 = 136446210;
        swift_errorRetain();
        sub_10010FC20(&qword_1011824A0);
        v18 = String.init<A>(describing:)();
        v20 = sub_1000105AC(v18, v19, &v35);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "Related content token failed to load with error=%{public}s", v16, 0xCu);
        sub_10000959C(v17);
      }

      else
      {
      }
    }

    else if (v10 != enum case for RelatedContentProvider.State.loading(_:))
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000060E4(v21, qword_1012193F8);
      v33 = v0;
      v22 = v0;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v32 = v24;
        v27 = v26;
        v35 = v26;
        *v25 = 136446210;
        v9(v5, &v33[v8], v1);
        v28 = String.init<A>(describing:)();
        v30 = sub_1000105AC(v28, v29, &v35);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v23, v32, "Unhandled state=%{public}s", v25, 0xCu);
        sub_10000959C(v27);
      }

      (*(v2 + 8))(v7, v1);
    }

    return 0;
  }
}

uint64_t sub_1006A3EE4()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_10010FC20(&qword_10119E3E8);
  v31 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = sub_10010FC20(&qword_10119E3F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = (v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  ObjectType = swift_getObjectType();
  v33[0] = v13;
  result = (*(v14 + 200))(ObjectType, v14);
  if (result)
  {
    v29 = v9;
    v30 = v8;

    v17 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentStateSubscription;
    swift_beginAccess();
    sub_1000089F8(v1 + v17, v33, &qword_10118D380);
    v18 = v34;
    result = sub_1000095E8(v33, &qword_10118D380);
    if (!v18)
    {
      v19 = *v12;
      v20 = v12[1];
      v21 = swift_getObjectType();
      v33[0] = v19;
      v22 = (*(v20 + 200))(v21, v20);
      if (v22)
      {
        dispatch thunk of RelatedContentProvider.$state.getter();

        sub_100009F78(0, &qword_101182960);
        v23 = static OS_dispatch_queue.main.getter();
        v32 = v23;
        v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
        sub_100020674(&unk_10119E3F8, &qword_10119E3E8);
        sub_10001C070(&qword_101184920, &qword_101182960);
        Publisher.receive<A>(on:options:)();
        sub_1000095E8(v4, &qword_101182140);

        (*(v31 + 8))(v7, v5);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100020674(&qword_10119E408, &qword_10119E3F0);
        v25 = v30;
        v26 = Publisher<>.sink(receiveValue:)();

        (*(v29 + 8))(v11, v25);
        v22 = type metadata accessor for AnyCancellable();
        v33[0] = v26;
        v27 = &protocol witness table for AnyCancellable;
      }

      else
      {
        v27 = 0;
        memset(v33, 0, sizeof(v33));
      }

      v34 = v22;
      v35 = v27;
      swift_beginAccess();
      sub_10006B010(v33, v1 + v17, &qword_10118D380);
      return swift_endAccess();
    }
  }

  return result;
}

void sub_1006A439C(uint64_t a1)
{
  v2 = type metadata accessor for RelatedContentProvider.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, a1, v2);
    sub_1006A3900(v5);
  }
}

void *sub_1006A44A0()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___impressionsTracker;
  if (*&v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___impressionsTracker])
  {
    v2 = *&v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___impressionsTracker];
  }

  else
  {
    v3 = sub_1006A6078();
    sub_10010FC20(&qword_10119E340);
    swift_allocObject();
    v2 = sub_10039B1E8(v0, v3, 1, 0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1006A4544@<X0>(char *a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10118CEE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___pageProperties;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_10118CEE0);
  v10 = sub_10010FC20(&unk_1011839D0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_1006AA3E0(v8, a1);
  }

  sub_1000095E8(v8, &qword_10118CEE0);
  sub_1006A4784(v1, a1);
  v12 = type metadata accessor for MetricsPageProperties();
  (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  sub_1000089F8(a1, v5, &unk_1011839D0);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_10118CEE0);
  return swift_endAccess();
}

uint64_t sub_1006A4784@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = (a1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  ObjectType = swift_getObjectType();
  v17 = v8;
  v11 = (*(v9 + 48))(ObjectType, v9);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x497972617262696CLL;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xEB000000006D6574;
  }

  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  return MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v13, v14, 0x656E6961746E6F43, 0xEF6C696174654472, v6, 0, 0, 0, a2);
}

uint64_t sub_1006A4900()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___popoverProvider;
  v3 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___popoverProvider);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = [objc_opt_self() sharedApplication];
    v6 = sub_100729BFC();

    if (*(v6 + 16))
    {

      sub_10010BC60(_swiftEmptyArrayStorage);
      v4 = MusicPageProvider.popoverProvider(context:)();
    }

    else
    {

      v4 = 0;
    }

    v7 = *(v1 + v2);
    *(v1 + v2) = v4;

    sub_1000D9148(v7);
  }

  sub_10000CD8C(v3);
  return v4;
}

uint64_t sub_1006A4A18()
{
  v1 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for MetricsEvent.Page(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v0;
  v8 = (v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  ObjectType = swift_getObjectType();
  v24 = v9;
  v12 = *(v10 + 256);
  swift_unknownObjectRetain();
  v12(ObjectType, v10);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &unk_1011838F0);
    result = swift_unknownObjectRelease();
    *(v23 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needsMetricsPageEvent) = 1;
  }

  else
  {
    sub_1006AA2C8(v3, v7, type metadata accessor for MetricsEvent.Page);
    swift_unknownObjectRelease();
    v14 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v15 = sub_10053771C();
    v17 = v16;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v18 = qword_101218AD0;
    v19 = GroupActivitiesManager.hasJoined.getter();
    v20 = GroupActivitiesManager.participantsCount.getter();
    v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v14) + 0xA0))(v7, v15, v17, v19 & 1, v20, *(v18 + v21));

    return sub_1006AA268(v7, type metadata accessor for MetricsEvent.Page);
  }

  return result;
}

char *sub_1006A4D24(void *a1)
{
  v2 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = objc_allocWithZone(type metadata accessor for ContainerDetailCompositionalLayout());
  v13[4] = sub_1006AA3C0;
  v13[5] = v3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1005A63A8;
  v13[3] = &unk_1010BA808;
  v5 = _Block_copy(v13);

  v6 = [v4 initWithSectionProvider:v5 configuration:v2];
  _Block_release(v5);

  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 6)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = &v6[OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes];
    v11 = *&v6[OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes];
    *v10 = sub_1006AA3C8;
    v10[1] = v9;

    sub_100020438(v11);
  }

  return v6;
}

uint64_t sub_1006A4EF0(uint64_t a1, void *a2)
{
  v108 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v109 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration();
  v112 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v104 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v105 = v9;
    v16 = Strong;
    [objc_msgSend(a2 "container")];
    v18 = v17;
    swift_unknownObjectRelease();
    v19 = HI.SizeClass.init(_:)(v18);
    v20 = HI.SizeClass.margin.getter(v19);
    v106 = [a2 traitCollection];
    v111 = v16;
    v21 = &v16[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
    swift_beginAccess();
    v104 = v21;
    v22 = *v21;
    v23 = *(v21 + 1);
    ObjectType = swift_getObjectType();
    v114[0] = v22;
    v110 = (*(v23 + 368))(a1, ObjectType, v23);
    v25 = v110;
    (*(v6 + 104))(v8, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v5);
    UICollectionLayoutListConfiguration.init(appearance:)();
    v26 = objc_opt_self();
    v27 = [v26 clearColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
    if (v25 == 2)
    {
      swift_allocObject();
      v28 = v111;
      swift_unknownObjectWeakInit();
      v29 = v28;
      UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
    }

    v30 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
    UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
    v30(v114, 0);
    v31 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
    UIListSeparatorConfiguration.topSeparatorInsets.setter();
    v31(v114, 0);
    v32 = v25 == 11;
    v33 = a2;
    v34 = v106;
    if (!v32)
    {
      if (v110 <= 5u)
      {
        if (v110 > 1u)
        {
          if (v110 - 2 < 2)
          {
            goto LABEL_28;
          }

          if (v110 != 4)
          {
            v43 = *v104;
            v44 = *(v104 + 1);
            v45 = swift_getObjectType();
            v114[0] = v43;
            if (((*(v44 + 136))(v45, v44) & 1) == 0)
            {
LABEL_28:
              v62 = [v34 userInterfaceIdiom];
              sub_100009F78(0, &qword_101191398);
              v42 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
              v63 = [v33 traitCollection];
              v64 = [v63 userInterfaceIdiom];

              v65 = 0.0;
              if (v64 == 6)
              {
                [objc_msgSend(v33 "container")];
                v67 = v66;
                swift_unknownObjectRelease();
                if (qword_10117FC38 != -1)
                {
                  swift_once();
                }

                if (*&qword_1012193E8 < v67)
                {
                  if (qword_10117FC40 != -1)
                  {
                    swift_once();
                  }

                  v65 = v20 + *&qword_1012193F0;
                }
              }

              if (v110 != 11)
              {
                if (v110 <= 4u)
                {
                  if (v110 <= 1u)
                  {
                    if (!v110)
                    {
LABEL_60:
                      [objc_msgSend(v33 "container")];
                      v84 = v83;
                      swift_unknownObjectRelease();
                      v68 = v65 + v84;
                      v81 = 0.0;
                      goto LABEL_67;
                    }
                  }

                  else if (v110 == 2 || v110 == 3)
                  {
LABEL_43:
                    if (v62 == 6)
                    {
                      v68 = v20 + v65;
LABEL_62:
                      v81 = 0.0;
                      v82 = 0.0;
                      v80 = v42;
LABEL_63:
                      v87 = v20;
LABEL_64:
                      [v80 setContentInsets:{v81, v68, v82, v87}];

                      v9 = v105;
                      goto LABEL_65;
                    }

                    goto LABEL_60;
                  }
                }

                else
                {
                  if (v110 > 8u)
                  {
                    if (v110 == 9)
                    {
                      v69 = [v34 horizontalSizeClass];
                      v70 = *v104;
                      v71 = *(v104 + 1);
                      v72 = swift_getObjectType();
                      v114[0] = v70;
                      v73 = (*(v71 + 136))(v72, v71);
                      v74 = 8.0;
                      if (v73)
                      {
                        v74 = 20.0;
                      }

                      v75 = 0.0;
                      if (v73)
                      {
                        v75 = 44.0;
                      }

                      if (v69 != 1)
                      {
                        v74 = 24.0;
                      }

                      if (v62 == 6)
                      {
                        v76 = 44.0;
                      }

                      else
                      {
                        v76 = 28.0;
                      }

                      if (v62 == 6)
                      {
                        v77 = v75;
                      }

                      else
                      {
                        v77 = v74;
                      }

                      [objc_msgSend(v33 container];
                      v79 = v78;
                      swift_unknownObjectRelease();
                      v68 = v20 + v65 + v79;
                      v80 = v42;
                      v81 = v77;
                      v82 = v76;
                      goto LABEL_63;
                    }

                    v81 = 0.0;
                    v68 = 0.0;
LABEL_67:
                    v82 = 0.0;
                    v87 = 0.0;
                    v80 = v42;
                    goto LABEL_64;
                  }

                  if (v110 - 6 >= 3)
                  {
                    goto LABEL_43;
                  }
                }
              }

              [objc_msgSend(v33 "container")];
              v86 = v85;
              swift_unknownObjectRelease();
              v68 = v20 + v65 + v86;
              goto LABEL_62;
            }

LABEL_27:
            (*(v107 + 104))(v109, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v108);
            v61 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
            UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
            v61(v114, 0);
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        if (v110)
        {
          goto LABEL_27;
        }

        v47 = sub_10069F9B8();
        v49 = v47[5];
        v48 = v47[6];
        v50 = v47[7];
        sub_1004E5DB4(v49, v48, v50);

        if ((v48 - 1) >= 2)
        {

          v34 = v106;
        }

        else
        {
          sub_1004E5DFC(v49, v48, v50);
          v51 = *v104;
          v52 = *(v104 + 1);
          v53 = swift_getObjectType();
          v114[0] = v51;
          v54 = (*(v52 + 288))(v53, v52);
          if (v54 == 2)
          {
            v34 = v106;
LABEL_73:
            (*(v107 + 104))(v109, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v108);
            v103 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
            UIListSeparatorConfiguration.topSeparatorVisibility.setter();
            v103(v114, 0);
            goto LABEL_28;
          }

          v34 = v106;
          if ((v54 & 1) == 0)
          {
            goto LABEL_73;
          }
        }

        v98 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
        v99 = *(v107 + 104);
        v100 = v109;
        v101 = v108;
        v99(v109, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v108);
        v102 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
        UIListSeparatorConfiguration.topSeparatorVisibility.setter();
        v102(v114, 0);
        v99(v100, v98, v101);
LABEL_7:
        v41 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
        UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
        v41(v114, 0);
        goto LABEL_28;
      }

      if (v110 <= 7u)
      {
        if (v110 == 6)
        {
          v55 = *v104;
          v56 = *(v104 + 1);
          v57 = swift_getObjectType();
          v114[0] = v55;
          if (((*(v56 + 272))(v57, v56) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v89 = *v104;
          v90 = *(v104 + 1);
          v91 = swift_getObjectType();
          v114[0] = v89;
          if (((*(v90 + 280))(v91, v90) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v92 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
        v93 = UIListSeparatorConfiguration.topSeparatorInsets.modify();
        *(v94 + 8) = 0;
        v93(v113, 0);
        v92(v114, 0);
        v95 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
        v96 = UIListSeparatorConfiguration.bottomSeparatorInsets.modify();
        *(v97 + 8) = 0;
        v96(v113, 0);
        v95(v114, 0);
        goto LABEL_28;
      }

      if (v110 == 8)
      {
LABEL_26:
        v58 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
        v59 = UIListSeparatorConfiguration.topSeparatorInsets.modify();
        *(v60 + 8) = 0;
        v59(v113, 0);
        v58(v114, 0);
        goto LABEL_27;
      }

      if (v110 != 9 && *(v111 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_isShowingRelatedContent) == 1)
      {
        v46 = [v26 secondarySystemBackgroundColor];
        UICollectionLayoutListConfiguration.backgroundColor.setter();
      }
    }

    v35 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    v36 = a2;
    v37 = *(v107 + 104);
    v38 = v109;
    v39 = v108;
    v37(v109, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v108);
    v40 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
    UIListSeparatorConfiguration.topSeparatorVisibility.setter();
    v40(v114, 0);
    v37(v38, v35, v39);
    v33 = v36;
    goto LABEL_7;
  }

  sub_100009F78(0, &qword_101191398);
  (*(v6 + 104))(v8, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v5);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v42 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  v12 = v14;
LABEL_65:
  (*(v112 + 8))(v12, v9);
  return v42;
}

uint64_t sub_1006A5C78(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
  v4 = Strong;
  swift_beginAccess();
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 384))(a1, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1006A5D50(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
  v4 = Strong;
  swift_beginAccess();
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 392))(a1, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

void sub_1006A5E28(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
    swift_beginAccess();
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 376))(10, ObjectType, v5);
    if ((v8 & 1) == 0 && v7 == IndexPath.section.getter() && !IndexPath.item.getter() && a1)
    {
      v9 = a1;
      v10 = sub_1006A6078(v9);
      sub_1006A3684(v10);

      v11 = *(*&v3[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView] + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics);
      if (qword_10117FC38 != -1)
      {
        v18 = *(*&v3[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView] + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics);
        swift_once();
        v11 = v18;
      }

      if (*&qword_1012193E8 >= v11)
      {
        goto LABEL_16;
      }

      if (qword_10117FC40 != -1)
      {
        swift_once();
      }

      v12 = *&qword_1012193F0;
      [v9 frame];
      if (v13 >= v12)
      {
LABEL_16:
        v17 = *&v3[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentLeadingPadding];
        *&v3[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentLeadingPadding] = 0;
        if (v17 != 0.0)
        {
LABEL_17:
          sub_1006A3864();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.setter();
        }
      }

      else
      {
        [v9 frame];
        v15 = v12 - v14;
        v16 = *&v3[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentLeadingPadding];
        *&v3[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentLeadingPadding] = v15;
        if (v16 != v15)
        {
          goto LABEL_17;
        }
      }

      return;
    }
  }
}

id sub_1006A6098(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_1006A60FC(uint64_t a1)
{
  v2 = sub_1006A4D04();
  v3 = objc_allocWithZone(type metadata accessor for HIMetricsCollectionView());
  v4 = sub_100188F30(v2, 0, 0);
  v5 = (a1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  swift_beginAccess();
  v6 = v5[1];
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 240))(ObjectType, v6);
  v10 = UIView.withAccessibilityIdentifier(_:)(v8, v9);

  v11 = *v5;
  v12 = v10;
  [v12 setDataSource:v11];
  [v12 setDelegate:*v5];
  [v12 setPrefetchDataSource:*v5];
  v13 = v12;
  [v13 setAlwaysBounceVertical:1];
  [v13 setKeyboardDismissMode:1];

  [v13 setAllowsFocus:1];
  [v13 setRemembersLastFocusedIndexPath:1];

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = &v13[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v16 = *&v13[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  *v15 = sub_1006AA3B8;
  v15[1] = v14;

  sub_100020438(v16);

  return v13;
}

void sub_1006A62E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 6)
    {
      sub_1006A26DC();
      sub_10069FFC8(0);
    }

    v7 = &v4[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
    swift_beginAccess();
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 352);
    swift_unknownObjectRetain();
    v10(a2, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

void sub_1006A6400(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  ObjectType = swift_getObjectType();
  v70 = v9;
  v12 = (*(v10 + 376))(0, ObjectType, v10);
  if (v13)
  {
    goto LABEL_2;
  }

  v17 = v12;
  v18 = [v2 view];
  if (!v18)
  {
    goto LABEL_46;
  }

  v19 = v18;
  v20 = [v18 window];

  v21 = v20;
  if (v20)
  {
    goto LABEL_17;
  }

  *&v68 = v17;
  *&v69 = 0;
  v22 = [objc_opt_self() sharedApplication];
  v23 = [v22 connectedScenes];
  sub_100009F78(0, &qword_1011839F0);
  sub_10001C070(&qword_101183DE0, &qword_1011839F0);
  v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v24);
  v26 = v25;

  if (v26 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v69;
  if (!v27)
  {

    goto LABEL_15;
  }

  if ((v26 & 0xC000000000000001) == 0)
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v26 + 32);
      goto LABEL_11;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v28 = sub_1007E90D4(0, v26);
LABEL_11:
  v29 = v28;

  v30 = [v29 keyWindow];

  v20 = v69;
  if (v30)
  {
    v31 = [v2 view];
    if (!v31)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v32 = v31;
    [v30 addSubview:v31];
  }

LABEL_15:
  v33 = [v2 view];
  if (!v33)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v21 = v33;
  [v33 layoutIfNeeded];
LABEL_17:

  v34 = sub_1006A6078();
  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v37 = *(v5 + 8);
  v36 = v5 + 8;
  v37(v7, v4);
  v38 = [v34 cellForItemAtIndexPath:isa];

  if (!v38)
  {
    if (v20)
    {
      goto LABEL_2;
    }

    v42 = [v2 view];
    if (v42)
    {
      goto LABEL_23;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v39 = *(sub_10069F9B8() + 16);

  if (v39)
  {

    v40 = *&v2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator];
    v41 = v40[6];
    if ((v41 - 1) < 2)
    {

      goto LABEL_35;
    }

    v36 = v40[5];
    v39 = v40[7];
    if (v41)
    {

      sub_1004E5DB4(v36, v41, v39);
      v60 = v41;
      [v60 frame];
      v68 = v62;
      v69 = v61;
      v66 = v64;
      v67 = v63;

      *&v16 = v68;
      *&v14 = v69;
      v15 = 0;
      *(&v16 + 1) = v66;
      *(&v14 + 1) = v67;
      if (v20)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

LABEL_34:
    sub_1004E5DB4(v36, 0, v39);

LABEL_35:
    v14 = 0uLL;
    v15 = 1;
    v16 = 0uLL;
    if (v20)
    {
      goto LABEL_42;
    }

LABEL_36:
    v68 = v16;
    v69 = v14;
    v65 = [v2 view];
    if (v65)
    {
LABEL_40:
      v43 = v65;
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_38;
  }

  v70 = 0x6B726F77747241;
  v71 = 0xE700000000000000;
  v39 = v38;
  v44 = UIView.findPresentationSourceView<A>(id:)();
  if (!v44)
  {

    if (!v20)
    {
      v42 = [v2 view];
      if (!v42)
      {
        __break(1u);
        goto LABEL_34;
      }

LABEL_23:
      v43 = v42;
      v68 = 0u;
      v69 = 0u;
      v15 = 1;
LABEL_41:
      [v43 removeFromSuperview];

      v16 = v68;
      v14 = v69;
      goto LABEL_42;
    }

LABEL_2:
    v14 = 0uLL;
    v15 = 1;
    v16 = 0uLL;
LABEL_42:
    *a1 = v14;
    *(a1 + 16) = v16;
    *(a1 + 32) = v15;
    return;
  }

  v39 = v44;
  v45 = [v44 superview];
  v15 = v45 == 0;
  if (!v45)
  {
LABEL_38:

    v14 = 0uLL;
    v16 = 0uLL;
    if (v20)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v46 = v45;
  [v39 frame];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = [v2 view];
  [v46 convertRect:v55 toView:{v48, v50, v52, v54}];
  v68 = v57;
  v69 = v56;
  v66 = v59;
  v67 = v58;

  *&v16 = v68;
  *&v14 = v69;
  *(&v16 + 1) = v66;
  *(&v14 + 1) = v67;
  if (v20)
  {
    goto LABEL_42;
  }

LABEL_39:
  v68 = v16;
  v69 = v14;
  v65 = [v2 view];
  if (v65)
  {
    goto LABEL_40;
  }

LABEL_50:
  __break(1u);
}

double sub_1006A6A74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v6 - 8);
  v8 = v23 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v8, &unk_10118BCE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &unk_10118BCE0);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = sub_1006A6078();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15 = [v13 cellForItemAtIndexPath:isa];

    if (v15)
    {
      v16 = *&v3[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView];
      v17 = v16;
      [v15 bounds];
      [v17 convertRect:v15 fromCoordinateSpace:?];
      v27[0] = v16;
      v27[1] = v18;
      v27[2] = v19;
      v27[3] = v20;
      v27[4] = v21;
      v28 = 0;
      PresentationSource.Position.init(source:permittedArrowDirections:)(v27, 15, v23);
      v29 = v23[0];
      v30 = v23[1];
      v31 = v24;
      *&v32 = v25;
      *(&v32 + 1) = v26;
      PresentationSource.init(viewController:position:)(v3, &v29, a2);

      (*(v10 + 8))(v12, v9);
      return result;
    }

    (*(v10 + 8))(v12, v9);
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v32 = xmmword_100EBCEF0;
  *&result = PresentationSource.init(viewController:position:)(v3, &v29, a2).n128_u64[0];
  return result;
}

id sub_1006A6D30()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___contextualActionsBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___contextualActionsBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___contextualActionsBarButtonItem);
  }

  else
  {
    v4 = v0;
    sub_100009F78(0, &qword_101181580);
    v5 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, variable initialization expression of Library.Context.playlistVariants, 0);
    v6 = AccessibilityIdentifier.containerDetailContextualActionsButton.unsafeMutableAddressor();
    v7 = *v6;
    v8 = v6[1];

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v7, v8);
    v9 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1006A70A8()
{
  sub_10053DD40();
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &qword_10119E2E0, &qword_101181A00);
    if (v1 <= 0x3F)
    {
      type metadata accessor for RelatedContentProvider.State();
      if (v2 <= 0x3F)
      {
        sub_10003920C(319, &unk_10119E2F0, &unk_1011839D0);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1006A72AC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
  swift_beginAccess();
  v4 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  return (*(v4 + 456))(a1, ObjectType, v4);
}

uint64_t sub_1006A7330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v9 = type metadata accessor for AppInterfaceContext.Activity(0);
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v8[10] = *(v10 + 64);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[14] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006A744C, v12, v11);
}

uint64_t sub_1006A744C()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);
    v4 = *(v0 + 88);
    v15 = *(v0 + 72);
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = sub_10010FC20(&unk_1011841D0);
    (*(*(v9 - 8) + 16))(v2, v8, v9);
    type metadata accessor for PlaylistPicker.Mode(0);
    swift_storeEnumTagMultiPayload();
    v10 = (v2 + *(type metadata accessor for PlaylistPicker.Context(0) + 20));
    *v10 = v7;
    v10[1] = v6;
    v10[2] = v5;
    swift_storeEnumTagMultiPayload();
    sub_1006AA200(v2, v3, type metadata accessor for AppInterfaceContext.Activity);
    sub_1006AA200(v3, v4, type metadata accessor for AppInterfaceContext.Activity);
    v11 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    sub_1006AA2C8(v4, v12 + v11, type metadata accessor for AppInterfaceContext.Activity);
    sub_10047ABA0(v7, v6, v5);
    sub_100706900(v3, sub_100115C18, v12);

    sub_1006AA268(v3, type metadata accessor for AppInterfaceContext.Activity);
    sub_1006AA268(v2, type metadata accessor for AppInterfaceContext.Activity);
  }

  **(v0 + 16) = v1 == 0;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1006A7694()
{
  v1 = v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
  swift_beginAccess();
  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 328))(ObjectType, v2);
}

void sub_1006A7704(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 zoomedViewController];
  type metadata accessor for ContainerDetail.ViewController(0);
  if (swift_dynamicCastClass())
  {
    sub_1006A6400(v10);
    if (v11)
    {
      x = CGRectNull.origin.x;
      y = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
    }

    else
    {
      v8 = *&v10[3];
      width = *&v10[2];
      v9 = *&v10[1];
      x = *v10;

      if (v9 >= 0.0)
      {
        height = v8;
      }

      else
      {
        height = v8 - v9;
      }

      if (v9 >= 0.0)
      {
        y = v9;
      }

      else
      {
        y = 0.0;
      }
    }
  }

  else
  {

    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  *a2 = x;
  *(a2 + 8) = y;
  *(a2 + 16) = width;
  *(a2 + 24) = height;
  *(a2 + 32) = 0;
}

uint64_t sub_1006A7804()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1012193F8);
  sub_1000060E4(v0, qword_1012193F8);
  return static Logger.music(_:)();
}

unint64_t sub_1006A79E8(double a1, double a2, double a3, double a4)
{
  v29 = type metadata accessor for IndexPath();
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContainerDetailCompositionalLayout();
  v32.receiver = v4;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  sub_100009F78(0, &qword_10119E3E0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes;

    if (!i)
    {
      break;
    }

    v17 = 0;
    v18 = &v4[v16];
    v30 = v14 & 0xFFFFFFFFFFFFFF8;
    v31 = v14 & 0xC000000000000001;
    v27 = v9 + 1;
    while (1)
    {
      if (v31)
      {
        v19 = sub_1007E9C00(v17, v14);
      }

      else
      {
        if (v17 >= *(v30 + 16))
        {
          goto LABEL_19;
        }

        v19 = *(v14 + 8 * v17 + 32);
      }

      v9 = v19;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = *v18;
      if (*v18)
      {
        v4 = *(v18 + 1);

        v22 = v14;
        v23 = [v9 indexPath];
        v24 = v28;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = v22;
        v21(v9, v24);
        sub_100020438(v21);

        (*v27)(v24, v29);
      }

      else
      {
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_15:

  return v14;
}

id sub_1006A80C0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = &v4[OBJC_IVAR____TtC5Music34ContainerDetailCompositionalLayout_willLayoutAttributes];
  *v8 = 0;
  *(v8 + 1) = 0;
  if (a2)
  {
    v13[4] = a2;
    v13[5] = a3;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1005A63A8;
    v13[3] = &unk_1010BA718;
    v9 = _Block_copy(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for ContainerDetailCompositionalLayout();
  v14.receiver = v4;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, "initWithSection:sectionProvider:configuration:", a1, v9, a4);

  sub_100020438(a2);
  _Block_release(v9);
  return v11;
}

id sub_1006A828C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities.Service(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities.Service(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1006A844C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 2) & 0xFFFFFF80 | (*a1 >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1006A84A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1006A84F0(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x101 | (a2 << 62);
  }

  else
  {
    result[1] = (a2 - 3) >> 2;
    result[2] = 0;
    *result = ((a2 - 3) << 7) & 0x100 | (a2 - 3) & 1 | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_1006A8554()
{
  result = qword_10119E330;
  if (!qword_10119E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E330);
  }

  return result;
}

uint64_t sub_1006A85AC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
  swift_beginAccess();
  v4 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  return (*(v4 + 448))(a1, ObjectType, v4);
}

uint64_t sub_1006A8678(uint64_t a1)
{
  result = sub_1006AA330(&unk_10119E370, type metadata accessor for ContainerDetail.ViewController);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1006A86F0()
{
  if (sub_10069BD04())
  {
    return 0;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t sub_1006A8738(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(type metadata accessor for ContainerDetail.AttributionItem(0) - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1006A8834, 0, 0);
}

uint64_t sub_1006A8834()
{
  v1 = v0[3];
  if ((sub_10069BD04() & 1) != 0 && v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v5 = v0[4];
    v4 = v0[5];
    v7 = v0[2];
    v6 = v0[3];
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    sub_1006AA200(v7, v3, type metadata accessor for ContainerDetail.AttributionItem);
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    sub_1006AA2C8(v3, v10 + v9, type metadata accessor for ContainerDetail.AttributionItem);
    *(v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;

    sub_1001F4CB8(0, 0, v2, &unk_100EE4D10, v10);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1006A89B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1006A8A34(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10119E440);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000089F8(a1, &v9 - v6, &unk_10119E440);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v7, v4, &unk_10119E440);

  static Published.subscript.setter();
  return sub_1000095E8(v7, &unk_10119E440);
}

uint64_t sub_1006A8B68(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v6 == 2)
    {
      if (a4 >> 62 == 2)
      {
        return (a4 ^ a1 ^ 1) & 1;
      }

      return 0;
    }

    if (a1 != 0xC000000000000000 || a3 | a2)
    {
      if (a4 >> 62 != 3 || a4 != 0xC000000000000001 || a6 | a5)
      {
        return 0;
      }
    }

    else if (a4 >> 62 != 3 || a4 != 0xC000000000000000 || a6 | a5)
    {
      return 0;
    }

    return 1;
  }

  if (!v6)
  {
    if (!(a4 >> 62))
    {
      return 0;
    }

    return 0;
  }

  if (a4 >> 62 != 1)
  {
    return 0;
  }

  return ((a4 ^ a1) & 1) == 0 && ((a4 ^ a1) & 0x100) == 0;
}

char *sub_1006A8C44(char *a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v67 = a2;
  v56 = type metadata accessor for Track();
  v59 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v5 - 8);
  v64 = &v52 - v6;
  v7 = sub_10010FC20(&qword_101183A20);
  v8 = __chkstk_darwin(v7 - 8);
  v63 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v52 - v10;
  v12 = sub_10010FC20(&qword_10118A530);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  v18 = type metadata accessor for ContainerDetail.Source(0);
  v19 = __chkstk_darwin(v18 - 8);
  v54 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v23 = type metadata accessor for Album();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v52 - v28;
  v57 = v24;
  v30 = *(v24 + 16);
  v65 = a1;
  v30(&v52 - v28, a1, v23);
  sub_1006AA200(v67, v22, type metadata accessor for ContainerDetail.Source);
  sub_1000089F8(v66, v17, &qword_10118A530);
  v31 = type metadata accessor for URL();
  v32 = *(*(v31 - 8) + 56);
  v62 = v11;
  v33 = v11;
  v34 = v56;
  v32(v33, 1, 1, v31);
  v55 = v27;
  v58 = v23;
  v30(v27, v29, v23);
  v60 = v22;
  v35 = v22;
  v36 = v54;
  v37 = v59;
  sub_1006AA200(v35, v54, type metadata accessor for ContainerDetail.Source);
  v61 = v17;
  sub_1000089F8(v17, v15, &qword_10118A530);
  if ((*(v37 + 48))(v15, 1, v34) == 1)
  {
    sub_1000095E8(v15, &qword_10118A530);
    v38 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    v39 = v64;
    (*(*(v38 - 8) + 56))(v64, 1, 1, v38);
  }

  else
  {
    v40 = *(v37 + 32);
    v41 = v53;
    v40(v53, v15, v34);
    v39 = v64;
    v40(v64, v41, v34);
    v42 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v42 - 8) + 56))(v39, 0, 1, v42);
  }

  v44 = v62;
  v43 = v63;
  sub_1000089F8(v62, v63, &qword_101183A20);
  v45 = sub_1004E34D0(v55, v36, v39, v43);
  sub_1000095E8(v44, &qword_101183A20);
  sub_1000095E8(v61, &qword_10118A530);
  sub_1006AA268(v60, type metadata accessor for ContainerDetail.Source);
  v46 = *(v57 + 8);
  v47 = v29;
  v48 = v58;
  v46(v47, v58);
  v49 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
  v50 = sub_100137F64(v45, v49);
  sub_1000095E8(v66, &qword_10118A530);
  sub_1006AA268(v67, type metadata accessor for ContainerDetail.Source);
  v46(v65, v48);
  return v50;
}

char *sub_1006A9254(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v6 - 8);
  v73 = (&v66 - v7);
  v8 = sub_10010FC20(&qword_101183A20);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v72 = &v66 - v13;
  __chkstk_darwin(v12);
  v79 = &v66 - v14;
  v15 = type metadata accessor for ContainerDetail.Source(0);
  v16 = __chkstk_darwin(v15 - 8);
  v76 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v77 = &v66 - v19;
  __chkstk_darwin(v18);
  v78 = &v66 - v20;
  v21 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v21 - 8);
  v23 = &v66 - v22;
  v24 = type metadata accessor for Album();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v70 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v66 - v29;
  v31 = __chkstk_darwin(v28);
  v75 = &v66 - v32;
  __chkstk_darwin(v31);
  v34 = &v66 - v33;
  v35 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1000095E8(v23, &unk_101184730);
    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_1012193F8);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Unable to convert album to MusicKit Item", v39, 2u);
    }

    else
    {
    }

    sub_1006AA268(a2, type metadata accessor for ContainerDetail.Source);
    return 0;
  }

  else
  {
    (*(v25 + 32))(v34, v23, v24);
    v74 = a2;
    v68 = v35;
    v69 = a3;
    v67 = v11;
    v71 = v34;
    if (a3 && (v40 = a3, v41 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor(), MPModelObject.bestIdentifier(for:)(*v41, 0), v43 = v42, v40, v43))
    {
      v66 = MusicItemID.init(_:)();
      v45 = v44;
    }

    else
    {
      v66 = 0;
      v45 = 0;
    }

    v46 = *(v25 + 16);
    v47 = v75;
    v46(v75, v71, v24);
    v48 = v78;
    sub_1006AA200(v74, v78, type metadata accessor for ContainerDetail.Source);
    v49 = type metadata accessor for URL();
    v50 = v79;
    (*(*(v49 - 8) + 56))(v79, 1, 1, v49);
    v46(v30, v47, v24);
    v51 = v48;
    v52 = v77;
    sub_1006AA200(v51, v77, type metadata accessor for ContainerDetail.Source);
    v53 = v50;
    v54 = v72;
    sub_1000089F8(v53, v72, &qword_101183A20);
    v55 = v70;
    v46(v70, v30, v24);
    sub_1006AA200(v52, v76, type metadata accessor for ContainerDetail.Source);
    if (v45)
    {
      v56 = v73;
      *v73 = v66;
      *(v56 + 8) = v45;
      v57 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
    }

    else
    {
      v59 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
      v56 = v73;
      (*(*(v59 - 8) + 56))(v73, 1, 1, v59);
    }

    v60 = v69;
    v61 = v67;
    sub_1000089F8(v54, v67, &qword_101183A20);
    v62 = sub_1004E34D0(v55, v76, v56, v61);
    sub_1000095E8(v54, &qword_101183A20);
    sub_1006AA268(v77, type metadata accessor for ContainerDetail.Source);
    v63 = *(v25 + 8);
    v63(v30, v24);
    v64 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v65 = sub_100137F64(v62, v64);

    sub_1006AA268(v74, type metadata accessor for ContainerDetail.Source);
    sub_1000095E8(v79, &qword_101183A20);
    sub_1006AA268(v78, type metadata accessor for ContainerDetail.Source);
    v63(v75, v24);
    v63(v71, v24);
    return v65;
  }
}

char *sub_1006A99C4(void *a1, uint64_t a2, void *a3, int a4)
{
  v60 = a4;
  v7 = sub_10010FC20(&qword_101183A20);
  v8 = __chkstk_darwin(v7 - 8);
  v58 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v59 = &v52 - v10;
  v11 = type metadata accessor for ContainerDetail.Source(0);
  v12 = __chkstk_darwin(v11 - 8);
  v57 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v52 - v14;
  v16 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v52 - v17;
  v19 = type metadata accessor for Playlist();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v52 - v25;
  __chkstk_darwin(v24);
  v28 = &v52 - v27;
  v61 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1000095E8(v18, &unk_1011814D0);
    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000060E4(v29, qword_1012193F8);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to convert playlist to MusicKit Item", v32, 2u);
    }

    else
    {
    }

    sub_1006AA268(a2, type metadata accessor for ContainerDetail.Source);
    return 0;
  }

  else
  {
    (*(v20 + 32))(v28, v18, v19);
    v56 = a3;
    if (a3 && (v33 = a3, v34 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor(), MPModelObject.bestIdentifier(for:)(*v34, 0), v36 = v35, v33, v36))
    {
      v37 = a2;
      v38 = MusicItemID.init(_:)();
      v53 = v39;
      v54 = v38;
    }

    else
    {
      v37 = a2;
      v53 = 0;
      v54 = 0;
    }

    v40 = *(v20 + 16);
    v40(v26, v28, v19);
    v41 = v37;
    v55 = v37;
    v42 = v15;
    sub_1006AA200(v41, v15, type metadata accessor for ContainerDetail.Source);
    v43 = type metadata accessor for URL();
    v44 = v59;
    (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
    v40(v23, v26, v19);
    v45 = v57;
    sub_1006AA200(v42, v57, type metadata accessor for ContainerDetail.Source);
    v46 = v58;
    sub_1000089F8(v44, v58, &qword_101183A20);
    v47 = sub_100866288(v23, v45, v54, v53, v46, v60 & 1);
    v48 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v49 = sub_100137F48(v47, v48);

    sub_1006AA268(v55, type metadata accessor for ContainerDetail.Source);
    sub_1000095E8(v44, &qword_101183A20);
    sub_1006AA268(v42, type metadata accessor for ContainerDetail.Source);
    v50 = *(v20 + 8);
    v50(v26, v19);
    v50(v28, v19);
    return v49;
  }
}

char *sub_1006A9F64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v27 = a3;
  v9 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v27 - v19;
  *(&v27 - v19) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1000089F8(a5, v14, &qword_101183A20);
  sub_1006AA200(v20, v17, type metadata accessor for ContainerDetail.Source);
  sub_1000089F8(v14, v11, &qword_101183A20);

  v21 = sub_1004E5248(a1, a2, v17, v11);
  v22 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
  v23 = sub_100137F64(v21, v22);
  sub_1000095E8(a5, &qword_101183A20);
  sub_1000095E8(v14, &qword_101183A20);
  sub_1006AA268(v20, type metadata accessor for ContainerDetail.Source);
  swift_beginAccess();
  type metadata accessor for AlbumDetailDataSource(0);
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = v24 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData;
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = v27;
    *(v25 + 24) = a4 & 1;
  }

  return v23;
}

uint64_t sub_1006AA200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006AA268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006AA2C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006AA330(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1006AA378()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_1006AA3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011839D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006AA458(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1006A3468(a1, v4, v5, v7, v6);
}

uint64_t sub_1006AA518(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Artwork() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100008F30;

  return sub_1006A0C0C(v13, v14, v15, a1, v9, v10, v11, v1 + v6);
}

uint64_t sub_1006AA66C(uint64_t a1)
{
  v4 = *(type metadata accessor for Artwork() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1006A17F8(a1, v6, v7, v1 + v5, v8);
}

void sub_1006AA78C()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_durationCalculator;
  type metadata accessor for DurationCalculator();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___trailingBarButtonItemGroup) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator) = 0;
  v3 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
  v4 = type metadata accessor for Artwork();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___backdropContainer) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView) = 0;
  v5 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropTask;
  v6 = sub_10010FC20(&qword_101181A00);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork) = 0;
  v7 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer;
  *(v0 + v7) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_isShowingRelatedContent) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___relatedContentSpacingData) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentLeadingPadding) = 0;
  v8 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentState;
  v9 = enum case for RelatedContentProvider.State.loading(_:);
  v10 = type metadata accessor for RelatedContentProvider.State();
  (*(*(v10 - 8) + 104))(v0 + v8, v9, v10);
  v11 = v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentStateSubscription;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___impressionsTracker) = 0;
  v12 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___pageProperties;
  v13 = sub_10010FC20(&unk_1011839D0);
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___popoverProvider) = 1;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_storeItemMetadataDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needsMetricsPageEvent) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_sheetPresenterDataSource) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionViewLayout) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView) = 0;
  v14 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference;
  type metadata accessor for ArtworkPrefetchingController.CacheReference();
  v15 = swift_allocObject();
  *(v15 + 16) = 0xD00000000000001FLL;
  *(v15 + 24) = 0x8000000100E3D5F0;
  *(v15 + 32) = 0;
  *(v0 + v14) = v15;
  *(v15 + 40) = 1;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___contextualActionsBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dragDropController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1006AAAEC(char *a1)
{
  v2 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v3 = sub_10049CB78();

  v4 = &a1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 1);
  ObjectType = swift_getObjectType();
  (*(v6 + 112))(v3 & 1, ObjectType, v6);
  *v4 = v5;
  *(v4 + 1) = v6;
  swift_endAccess();
  sub_10069F67C();
}

uint64_t sub_1006AABE0(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 40) = a2;
  *(v4 + 32) = a1;
  v5 = type metadata accessor for Backdrop.SnapshotConfiguration();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  v6 = type metadata accessor for Artwork.ImageFormat();
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  v7 = type metadata accessor for Artwork.CropStyle();
  *(v4 + 112) = v7;
  *(v4 + 120) = *(v7 - 8);
  *(v4 + 128) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 136) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 144) = v9;
  *(v4 + 152) = v8;

  return _swift_task_switch(sub_1006AAD94, v9, v8);
}

uint64_t sub_1006AAD94()
{
  v2 = *(v0 + 15);
  v1 = *(v0 + 16);
  v4 = *(v0 + 13);
  v3 = *(v0 + 14);
  v5 = *(v0 + 11);
  v6 = *(v0 + 12);
  v7 = Artwork.CropStyle.fallback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v7, v3);
  v8 = Artwork.ImageFormat.fallback.unsafeMutableAddressor();
  (*(v6 + 16))(v4, v8, v5);
  v9 = swift_task_alloc();
  *(v0 + 20) = v9;
  *v9 = v0;
  v9[1] = sub_1006AAE94;
  v10 = *(v0 + 16);
  v11 = *(v0 + 13);
  v12 = v0[5];
  v13 = v0[6];

  return Artwork.image(for:cropStyle:format:)(v10, v11, v12, v13);
}

uint64_t sub_1006AAE94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 120);
  v7 = *(*v2 + 112);
  v8 = *(*v2 + 104);
  v9 = *(*v2 + 96);
  v10 = *(*v2 + 88);
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  v11 = *(v3 + 152);
  v12 = *(v3 + 144);
  if (v1)
  {
    v13 = sub_1006AB434;
  }

  else
  {
    v13 = sub_1006AB098;
  }

  return _swift_task_switch(v13, v12, v11);
}

uint64_t sub_1006AB098()
{
  [*(v0 + 168) size];
  v1 = *(v0 + 168);
  if (v2 <= 0.0 || ([v1 size], v1 = *(v0 + 168), v3 <= 0.0))
  {

    v10 = *(v0 + 8);

    return v10(0);
  }

  else
  {
    v4 = *(v0 + 168);
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 traitCollectionWithUserInterfaceStyle:2];
    Backdrop.SnapshotConfiguration.init(image:size:scale:offset:traitCollection:)();
    type metadata accessor for Backdrop.CompositeRenderer();
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_1006AB24C;
    v9 = *(v0 + 80);

    return static Backdrop.CompositeRenderer.snapshot(configuration:)(v9);
  }
}

uint64_t sub_1006AB24C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = v4[18];
    v6 = v4[19];
    v7 = sub_1006AB630;
  }

  else
  {
    v4[25] = a1;
    v5 = v4[18];
    v6 = v4[19];
    v7 = sub_1006AB374;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1006AB374()
{
  v1 = v0[25];
  v2 = v0[21];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_1006AB434()
{
  v14 = v0;

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012193F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[22];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve artwork image for backdrop with error=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1006AB630()
{
  v20 = v0;

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012193F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];
  if (v4)
  {
    v18 = v0[10];
    v10 = swift_slowAlloc();
    v17 = v9;
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    v0[3] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create backdrop with error=%{public}s", v10, 0xCu);
    sub_10000959C(v11);

    (*(v7 + 8))(v18, v17);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_1006AB870(uint64_t a1)
{
  v4 = *(type metadata accessor for Artwork() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_1006A1DEC(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1006AB9C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10069E114(a1, v4, v5, v6);
}

uint64_t sub_1006ABA78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011846D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006ABAE8()
{
  result = type metadata accessor for Artist();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SocialProfile();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Curator();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for RadioShow();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Genre();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Playlist();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1006ABBAC()
{
  sub_1006ABC20();
  if (v0 <= 0x3F)
  {
    sub_1006ABC9C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1006ABC20()
{
  if (!qword_10119E598)
  {
    sub_1001109D0(&unk_1011926F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10119E598);
    }
  }
}

void *sub_1006ABC9C()
{
  result = qword_10119E5A8;
  if (!qword_10119E5A8)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_10119E5A8);
  }

  return result;
}

unint64_t sub_1006ABCE0()
{
  result = qword_10119E5D8;
  if (!qword_10119E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119E5D8);
  }

  return result;
}

id sub_1006ABD58(uint64_t a1)
{
  v1 = *(a1 + 16);

  if (v1)
  {
    v3 = v2 + 32;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100008FE4(v3, &v13);
      sub_10010FC20(&qword_10119E600);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          v15 = v20;
          v16 = v21;
          v17 = v22;
          v13 = v18;
          v14 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10049B330(0, *(v4 + 2) + 1, 1, v4);
          }

          v6 = *(v4 + 2);
          v5 = *(v4 + 3);
          if (v6 >= v5 >> 1)
          {
            v4 = sub_10049B330((v5 > 1), v6 + 1, 1, v4);
          }

          *(v4 + 2) = v6 + 1;
          v7 = &v4[72 * v6];
          *(v7 + 2) = v13;
          v8 = v14;
          v9 = v15;
          v10 = v16;
          v7[96] = v17;
          *(v7 + 4) = v9;
          *(v7 + 5) = v10;
          *(v7 + 3) = v8;
          goto LABEL_5;
        }
      }

      else
      {
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
      }

      sub_1000095E8(&v18, &qword_10119E608);
LABEL_5:
      v3 += 40;
      if (!--v1)
      {
        goto LABEL_14;
      }
    }
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_14:

  if (*(v4 + 2))
  {
    v11 = sub_1007799D8();

    return v11;
  }

  else
  {

    return [objc_allocWithZone(UIDropProposal) initWithDropOperation:0];
  }
}

uint64_t sub_1006ABF4C(uint64_t a1)
{
  v1 = *(a1 + 16);

  if (v1)
  {
    v3 = v2 + 32;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100008FE4(v3, &v13);
      sub_10010FC20(&qword_10119E600);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          v15 = v20;
          v16 = v21;
          v17 = v22;
          v13 = v18;
          v14 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10049B330(0, *(v4 + 2) + 1, 1, v4);
          }

          v6 = *(v4 + 2);
          v5 = *(v4 + 3);
          if (v6 >= v5 >> 1)
          {
            v4 = sub_10049B330((v5 > 1), v6 + 1, 1, v4);
          }

          *(v4 + 2) = v6 + 1;
          v7 = &v4[72 * v6];
          *(v7 + 2) = v13;
          v8 = v14;
          v9 = v15;
          v10 = v16;
          v7[96] = v17;
          *(v7 + 4) = v9;
          *(v7 + 5) = v10;
          *(v7 + 3) = v8;
          goto LABEL_5;
        }
      }

      else
      {
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
      }

      sub_1000095E8(&v18, &qword_10119E608);
LABEL_5:
      v3 += 40;
      if (!--v1)
      {
        goto LABEL_14;
      }
    }
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_14:

  if (*(v4 + 2))
  {
    v11 = sub_10077572C(v4);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

id sub_1006AC124()
{
  v82 = type metadata accessor for MusicPin.Action();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v79 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v79 = &v79 - v2;
  v84 = type metadata accessor for MusicPin.Item();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v88 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for MusicPin();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist.Folder();
  v85 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v79 - v9;
  v11 = type metadata accessor for Playlist.Folder.Item();
  v12 = *(v11 - 8);
  v94 = v11;
  v95 = v12;
  __chkstk_darwin(v11);
  v92 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s19PlaylistTabsRequestVMa();
  __chkstk_darwin(v14 - 8);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v17 - 8);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v19 - 8);
  v21 = (&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v96 = &v79 - v23;
  v24 = type metadata accessor for Playlist();
  v90 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v79 - v28;
  _s11PlaylistTabCMa();
  if (swift_dynamicCastClass())
  {

    v89 = v29;
    UnfairLock.locked<A>(_:)(sub_1006B0F40);

    UnfairLock.locked<A>(_:)(sub_1006B0F40);

    sub_1003DDCB8();
    v30 = RequestResponse.Controller.revision.getter();

    sub_1006B0E60(v30 + *(*v30 + 96), v16, _s19PlaylistTabsRequestVMa);

    v31 = v91;
    sub_1006B0E60(v16, v91, _s9PlaylistsVMa);
    sub_1006B0EC8(v16, _s19PlaylistTabsRequestVMa);
    v32 = v90;
    v33 = v92;
    v93 = *(v90 + 16);
    v93(v92, v26, v24);
    v35 = v94;
    v34 = v95;
    (*(v95 + 104))(v33, enum case for Playlist.Folder.Item.playlist(_:), v94);
    v36 = v96;
    sub_1001917EC(v33, v96);
    (*(v34 + 8))(v33, v35);
    sub_1006B0EC8(v31, _s9PlaylistsVMa);
    v37 = *(v32 + 8);
    v37(v26, v24);
    v38 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v36, 1, v38) == 1)
    {
      sub_1000095E8(v96, &unk_10118CDB0);
      v40 = 0;
    }

    else
    {
      v56 = v96;
      v40 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v39 + 8))(v56, v38);
    }

    v57 = v89;
    v58 = sub_10079AA48(v40);
    v59 = sub_100797240(&off_10109C140, v58);

    v93(v26, v57, v24);
    v55 = sub_10079C9B4(v59, v26);

    v37(v57, v24);
  }

  else
  {
    v93 = v21;
    v41 = v10;
    v96 = v7;
    v42 = v85;
    v43 = v5;
    v44 = v88;
    v45 = v95;
    v46 = v86;
    v47 = v89;
    v48 = v87;
    _s17PlaylistFolderTabCMa();
    if (swift_dynamicCastClass())
    {

      UnfairLock.locked<A>(_:)(sub_1006B0F28);

      sub_10010FC20(&qword_101185210);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      v50 = type metadata accessor for DragDropToFolder(0);
      *(inited + 56) = v50;
      *(inited + 64) = sub_1006B0E18(&qword_10118D3B0, type metadata accessor for DragDropToFolder);
      v51 = sub_10001C8B8((inited + 32));
      v52 = *(v42 + 16);
      v52(v51, v41, v43);
      (*(v45 + 104))(v51, enum case for Playlist.Folder.Item.folder(_:), v94);
      *(v51 + *(v50 + 20)) = 0;
      v53 = sub_100797240(_swiftEmptyArrayStorage, inited);
      swift_setDeallocating();
      sub_10000959C(inited + 32);
      v54 = v96;
      v52(v96, v41, v43);
      v55 = sub_10079D160(v53, v54);
      (*(v42 + 8))(v41, v43);
    }

    else
    {
      _s6PinTabCMa(0);
      v61 = swift_dynamicCastClass();
      if (v61)
      {
        v62 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
        v63 = v61;
        swift_beginAccess();
        v64 = v48;
        v65 = v46;
        v66 = v46;
        v67 = v47;
        (*(v48 + 16))(v66, &v63[v62], v47);
        v68 = 0;
        if ([v63 isEnabled])
        {
          if (qword_10117F6D8 != -1)
          {
            swift_once();
          }

          v69 = v44;
          MusicPin.item.getter();
          v70 = v79;
          MusicPin.action.getter();
          v71 = v80;
          v72 = v81;
          v73 = v82;
          (*(v80 + 104))(v81, enum case for MusicPin.Action.shuffle(_:), v82);
          v74 = static MusicPin.Action.== infix(_:_:)();
          v75 = *(v71 + 8);
          v75(v72, v73);
          v75(v70, v73);
          v76 = v93;
          sub_10042BAAC(v69, v74 & 1, v93);
          (*(v83 + 8))(v69, v84);
          v77 = type metadata accessor for MusicPlaybackIntentDescriptor();
          v78 = *(v77 - 8);
          if ((*(v78 + 48))(v76, 1, v77) == 1)
          {
            sub_1000095E8(v76, &unk_10118CDB0);
            v68 = 0;
          }

          else
          {
            v68 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
            (*(v78 + 8))(v76, v77);
          }

          v67 = v89;
        }

        v55 = sub_100798374(v68, &off_10109C168);

        (*(v64 + 8))(v65, v67);
      }

      else
      {
        return 0;
      }
    }
  }

  return v55;
}

double sub_1006ACE10@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v79 = a3;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for MusicPin.Item();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v7 = &v66[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MusicPin();
  v75 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Playlist();
  v73 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = a1;
  v102 = 0u;
  v103 = 0u;
  v104 = 2;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v101, 15, v81);
  v97[0] = v81[0];
  v97[1] = v81[1];
  v98 = v82;
  v99 = v83;
  v100 = v84;
  v14 = a1;
  v15 = a2;
  PresentationSource.init(viewController:position:)(v15, v97, v80);
  _s11PlaylistTabCMa();
  if (swift_dynamicCastClass())
  {
    v16 = *(v78 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
    v17 = type metadata accessor for DragDropToPlaylist.Destination(0);
    v18 = v79;
    v79[3] = v17;
    v18[4] = sub_1006B0E18(&unk_10118D3A0, type metadata accessor for DragDropToPlaylist.Destination);
    v19 = sub_10001C8B8(v18);
    v20 = v19 + *(v17 + 20);

    UnfairLock.locked<A>(_:)(sub_1003E14F4);

    v21 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
    v22 = *(v21 + 20);
    v23 = type metadata accessor for IndexPath();
    (*(*(v23 - 8) + 56))(&v20[v22], 1, 1, v23);
    v24 = &v20[*(v21 + 24)];
    *v24 = 0;
    *(v24 + 1) = 0;
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
LABEL_5:
    sub_10012B828(v80, v19 + *(v17 + 24));
    *v19 = v16;
    return result;
  }

  v70 = v10;
  v71 = v7;
  v72 = v8;
  v26 = v77;
  v25 = v78;
  v27 = v79;
  _s17PlaylistFolderTabCMa();
  if (swift_dynamicCastClass())
  {
    v16 = *(v25 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
    v17 = type metadata accessor for DragDropToFolder.Destination(0);
    v27[3] = v17;
    v27[4] = sub_1006B0E18(&qword_10119E620, type metadata accessor for DragDropToFolder.Destination);
    v19 = sub_10001C8B8(v27);
    v28 = *(v17 + 20);
    v29 = type metadata accessor for Playlist.Folder();

    UnfairLock.locked<A>(_:)(sub_1006B0DB0);

    (*(*(v29 - 8) + 56))(v19 + v28, 0, 1, v29);
    goto LABEL_5;
  }

  _s8FacetTabCMa();
  v69 = v14;
  v31 = swift_dynamicCastClass();
  v68 = v13;
  v32 = a1;
  v33 = v27;
  v34 = v25;
  v35 = v72;
  if (v31)
  {
    if (Library.Menu.Identifier.rawValue.getter(*(v31 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier)) == 0xD000000000000025 && 0x8000000100E3C0B0 == v36)
    {

LABEL_12:
      v37 = *(v25 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
      v38 = type metadata accessor for DragDropToFolder.Destination(0);
      v33[3] = v38;
      v33[4] = sub_1006B0E18(&qword_10119E620, type metadata accessor for DragDropToFolder.Destination);
      v39 = sub_10001C8B8(v33);
      v40 = *(v38 + 20);
      v41 = type metadata accessor for Playlist.Folder();
      (*(*(v41 - 8) + 56))(v39 + v40, 1, 1, v41);
      sub_10012B828(v80, v39 + *(v38 + 24));
      *v39 = v37;
      goto LABEL_19;
    }

    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v67)
    {
      goto LABEL_12;
    }
  }

  _s6PinTabCMa(0);
  v42 = swift_dynamicCastClass();
  if (!v42)
  {
    if (!swift_dynamicCastClass() && !swift_dynamicCastClass())
    {
      sub_10012BA6C(v80);
      result = 0.0;
      *v33 = 0u;
      *(v33 + 1) = 0u;
      v33[4] = 0;
      return result;
    }

    v64 = *(v25 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
    v33[3] = &type metadata for DragDropToLibrary.Destination;
    v33[4] = sub_1005C31E4();
    v65 = swift_allocObject();
    *v33 = v65;
    sub_10012B828(v80, v65 + 24);
    *(v65 + 16) = v64;
LABEL_19:

    return result;
  }

  ObjectType = v32;
  v43 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  v44 = v42;
  swift_beginAccess();
  v45 = v75;
  v46 = v44 + v43;
  v47 = v70;
  (*(v75 + 16))(v70, v46, v35);
  v48 = v71;
  MusicPin.item.getter();
  (*(v45 + 8))(v47, v35);
  v49 = v76;
  if ((*(v76 + 88))(v48, v26) == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v49 + 96))(v48, v26);
    v50 = v73;
    v51 = v68;
    (*(v73 + 32))(v68, v48, v11);
    v78 = *(v34 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
    v52 = type metadata accessor for DragDropToPlaylist.Destination(0);
    v33[3] = v52;
    v33[4] = sub_1006B0E18(&unk_10118D3A0, type metadata accessor for DragDropToPlaylist.Destination);
    v53 = sub_10001C8B8(v33);
    v54 = v53 + *(v52 + 20);
    (*(v50 + 16))(v54, v51, v11);
    v55 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
    v56 = *(v55 + 20);
    v57 = type metadata accessor for IndexPath();
    (*(*(v57 - 8) + 56))(&v54[v56], 1, 1, v57);
    v58 = &v54[*(v55 + 24)];
    *v58 = 0;
    *(v58 + 1) = 0;
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v93 = ObjectType;
    v94 = 0u;
    v95 = 0u;
    v96 = 2;
    PresentationSource.Position.init(source:permittedArrowDirections:)(&v93, 15, v85);
    v89[0] = v85[0];
    v89[1] = v85[1];
    v90 = v86;
    v91 = v87;
    v92 = v88;
    v59 = *(v52 + 24);
    v60 = v69;
    v61 = v15;
    v62 = v78;

    v63 = PresentationSource.init(viewController:position:)(v61, v89, v53 + v59);
    (*(v50 + 8))(v68, v11, v63);
    sub_10012BA6C(v80);
    *v53 = v62;
  }

  else
  {
    sub_10012BA6C(v80);
    (*(v49 + 8))(v48, v26);
    v33[4] = 0;
    result = 0.0;
    *v33 = 0u;
    *(v33 + 1) = 0u;
  }

  return result;
}

void sub_1006AD904(void *a1, void *a2, uint64_t a3)
{
  sub_1006ACE10(a2, a1, &v21);
  if (v22)
  {
    sub_100059A8C(&v21, v23);
    v6 = v24;
    v7 = v25;
    v8 = sub_10000954C(v23, v24);
    sub_1006AF250(v8, a2, a3, v3, v6, v7);
    sub_10000959C(v23);
  }

  else
  {
    sub_1000095E8(&v21, &unk_10119E610);
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_1012186C8);
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 136446210;
      v15 = v10;
      v16 = [v15 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_1000105AC(v17, v19, v23);

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unsupported Drop Session for tab=%{public}s", v13, 0xCu);
      sub_10000959C(v14);
    }
  }
}

uint64_t sub_1006ADCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_1006ADD04, 0, 0);
}

uint64_t sub_1006ADD04()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1006ADDF4;
  v4 = *(v0 + 16);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100EDD408, v1, &type metadata for () + 8);
}

uint64_t sub_1006ADDF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1006ADF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[7] = a2;
  sub_10010FC20(&unk_101181520);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1006ADFA8, 0, 0);
}

uint64_t sub_1006ADFA8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_100008FE4(v5, v0 + 16);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  sub_100059A8C((v0 + 16), (v7 + 4));
  v7[9] = v3;
  v7[10] = v4;
  v7[11] = v2;

  v8 = v4;
  swift_unknownObjectRetain();
  sub_1006AEC90(v1, &unk_100EDD418, v7);
  sub_1000095E8(v1, &unk_101181520);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1006AE0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v8 = type metadata accessor for Notice(0);
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  sub_10010FC20(&unk_10118B980);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_1006AE1F4, 0, 0);
}

uint64_t sub_1006AE1F4()
{
  v1 = v0[14];
  v3 = v1[3];
  v2 = v1[4];
  sub_10000954C(v1, v3);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_1006AE2B4;
  v5 = v0[22];
  v6 = v0[15];

  return sub_10017BE34(v5, v6, v3, v2);
}

uint64_t sub_1006AE2B4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1006AE9B4;
  }

  else
  {
    v2 = sub_1006AE3C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006AE3C8()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  sub_1000089F8(v0[22], v1, &unk_10118B980);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[21];
    sub_1000095E8(v0[22], &unk_10118B980);
    sub_1000095E8(v4, &unk_10118B980);

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_10035AEF0(v0[21], v0[20]);
    v0[25] = type metadata accessor for MainActor();
    v0[26] = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1006AE534, v8, v7);
  }
}

uint64_t sub_1006AE534()
{
  v1 = *(v0 + 128);

  *(v0 + 216) = [v1 tabBarController];

  return _swift_task_switch(sub_1006AE5BC, 0, 0);
}

uint64_t sub_1006AE5BC()
{
  if (v0[27])
  {
    v0[28] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1006AE6D4, v2, v1);
  }

  else
  {
    v3 = v0[22];
    sub_1006B0EC8(v0[20], type metadata accessor for Notice);
    sub_1000095E8(v3, &unk_10118B980);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1006AE6D4()
{
  v1 = *(v0 + 216);

  *(v0 + 232) = UIViewController.noticePresenter.getter();

  return _swift_task_switch(sub_1006AE748, 0, 0);
}

uint64_t sub_1006AE748()
{
  v1 = v0[29];
  if (v1)
  {
    v2 = *v1 + 200;
    v0[30] = *v2;
    v0[31] = v2 & 0xFFFFFFFFFFFFLL | 0x72F0000000000000;
    v0[32] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1006AE87C, v4, v3);
  }

  else
  {
    v5 = v0[22];
    sub_1006B0EC8(v0[20], type metadata accessor for Notice);
    sub_1000095E8(v5, &unk_10118B980);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1006AE87C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 160);

  v1(v2, 0);

  return _swift_task_switch(sub_1006AE908, 0, 0);
}

uint64_t sub_1006AE908()
{
  v1 = v0[22];
  sub_1006B0EC8(v0[20], type metadata accessor for Notice);
  sub_1000095E8(v1, &unk_10118B980);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1006AE9B4()
{
  v22 = v0;
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012186C8);
  sub_100008FE4(v1, (v0 + 2));
  swift_unknownObjectRetain();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  if (v5)
  {
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136446722;
    sub_100008FE4((v0 + 2), (v0 + 7));
    sub_10010FC20(&unk_10119E5F0);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    sub_10000959C((v0 + 2));
    v12 = sub_1000105AC(v9, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v0[12] = v7;
    swift_unknownObjectRetain();
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v21);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2082;
    v0[13] = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v16 = String.init<A>(describing:)();
    v18 = sub_1000105AC(v16, v17, &v21);

    *(v8 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to perform drop on destination=%{public}s for model=%{public}s. Error=%{public}s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C((v0 + 2));
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1006AEC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_1000089F8(a1, v20 - v9, &unk_101181520);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000095E8(v10, &unk_101181520);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_1006AEEA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v32[3] = type metadata accessor for DragDropToPlaylist.Destination(0);
  v32[4] = sub_1006B0E18(&unk_10118D3A0, type metadata accessor for DragDropToPlaylist.Destination);
  v11 = sub_10001C8B8(v32);
  sub_1006B0E60(a1, v11, type metadata accessor for DragDropToPlaylist.Destination);
  ObjectType = swift_getObjectType();
  v13 = sub_1003207B8(ObjectType);
  if (*(v13 + 16))
  {
    static TaskPriority.userInitiated.getter();
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
    sub_100008FE4(v32, v31);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    sub_100059A8C(v31, (v15 + 4));
    v15[9] = v13;
    v15[10] = a4;
    v15[11] = a2;
    swift_unknownObjectRetain();
    v16 = a4;
    sub_10035EB10(0, 0, v10, &unk_100EDD3F0, v15);

    sub_1000095E8(v10, &unk_101181520);
  }

  else
  {

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000060E4(v17, qword_1012186C8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = a3;
      *&v31[0] = v21;
      *v20 = 136446466;
      swift_unknownObjectRetain();
      sub_10010FC20(&unk_10119E5E0);
      v22 = String.init<A>(describing:)();
      v24 = sub_1000105AC(v22, v23, v31);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v30 = a2;
      swift_unknownObjectRetain();
      v25 = String.init<A>(describing:)();
      v27 = sub_1000105AC(v25, v26, v31);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "No intents found for drop session=%{public}s for model=%{public}s", v20, 0x16u);
      swift_arrayDestroy();
    }
  }

  return sub_10000959C(v32);
}

uint64_t sub_1006AF250(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v36[3] = a5;
  v36[4] = a6;
  v15 = sub_10001C8B8(v36);
  (*(*(a5 - 8) + 16))(v15, a1, a5);
  ObjectType = swift_getObjectType();
  v17 = sub_1003207B8(ObjectType);
  if (*(v17 + 16))
  {
    static TaskPriority.userInitiated.getter();
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
    sub_100008FE4(v36, v35);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    sub_100059A8C(v35, (v19 + 4));
    v19[9] = v17;
    v19[10] = a4;
    v19[11] = a2;
    swift_unknownObjectRetain();
    v20 = a4;
    sub_10035EB10(0, 0, v14, &unk_100EDD438, v19);

    sub_1000095E8(v14, &unk_101181520);
  }

  else
  {

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000060E4(v21, qword_1012186C8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = a3;
      *&v35[0] = v25;
      *v24 = 136446466;
      swift_unknownObjectRetain();
      sub_10010FC20(&unk_10119E5E0);
      v26 = String.init<A>(describing:)();
      v28 = sub_1000105AC(v26, v27, v35);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      v34 = a2;
      swift_unknownObjectRetain();
      v29 = String.init<A>(describing:)();
      v31 = sub_1000105AC(v29, v30, v35);

      *(v24 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "No intents found for drop session=%{public}s for model=%{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }
  }

  return sub_10000959C(v36);
}

double sub_1006AF5D0(uint64_t a1, void *a2)
{
  v3 = sub_1006AC124();
  if (v3)
  {
    v5 = v3;
    sub_10032626C(v10);
    if (*&v10[0])
    {
      sub_1000089F8(v10 + 8, &v11, &qword_10118B990);
      sub_1000095E8(v10, &unk_10118B930);
    }

    else
    {
      sub_1000095E8(v10, &unk_10118B930);
      v11 = 0u;
      v12 = 0u;
      v13 = 0;
    }

    v6 = sub_1007A411C(&v11);
    if ([a2 localContext])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v10[0] = v11;
    v10[1] = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v6 == 4 || v9 != v6)
        {

          return result;
        }

LABEL_19:
        sub_10010FC20(&qword_101183990);
        v8 = swift_allocObject();
        *&result = 1;
        *(v8 + 16) = xmmword_100EBC6C0;
        *(v8 + 32) = v5;
        return result;
      }
    }

    else
    {
      sub_1000095E8(v10, &unk_101183F30);
    }

    if (v6 == 4)
    {
      v7 = 0;
    }

    else
    {
      LOBYTE(v10[0]) = v6;
      v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    [a2 setLocalContext:v7];
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1006AF7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v9 = *(a4 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  ObjectType = swift_getObjectType();
  v14 = sub_1003207B8(ObjectType);
  v15 = v14;
  if (*(v14 + 16))
  {
    if (sub_10017BC1C(v14, v6, a5))
    {
      if (qword_10117F268 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000060E4(v16, qword_1012186C8);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = a3;
        v54 = v52;
        *v19 = 136446466;
        swift_unknownObjectRetain();
        sub_10010FC20(&unk_10119E5E0);
        v20 = String.init<A>(describing:)();
        v22 = sub_1000105AC(v20, v21, &v54);
        HIDWORD(v51) = v18;
        v23 = v6;
        v24 = v22;

        *(v19 + 4) = v24;
        v6 = v23;
        *(v19 + 12) = 2082;
        v53 = a2;
        swift_unknownObjectRetain();
        v25 = String.init<A>(describing:)();
        v27 = sub_1000105AC(v25, v26, &v54);

        *(v19 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v17, BYTE4(v51), "Received drop session=%{public}s on=%{public}s", v19, 0x16u);
        swift_arrayDestroy();
      }

      v28 = sub_10017BAC0(v15, v6, a5);

      v29 = [v28 operation];
    }

    else
    {
      if (qword_10117F268 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_1000060E4(v41, qword_1012186C8);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v54 = v45;
        *v44 = 136446210;
        sub_10010FC20(&qword_10119E600);
        v46 = Array.description.getter();
        v48 = v47;

        v49 = sub_1000105AC(v46, v48, &v54);

        *(v44 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v42, v43, "Destination doesn't accept intents=%{public}s", v44, 0xCu);
        sub_10000959C(v45);
      }

      else
      {
      }

      v29 = 1;
    }
  }

  else
  {

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000060E4(v30, qword_1012186C8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53 = a3;
      v54 = v34;
      *v33 = 136446466;
      swift_unknownObjectRetain();
      sub_10010FC20(&unk_10119E5E0);
      v35 = String.init<A>(describing:)();
      v37 = sub_1000105AC(v35, v36, &v54);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      v53 = a2;
      swift_unknownObjectRetain();
      v38 = String.init<A>(describing:)();
      v40 = sub_1000105AC(v38, v39, &v54);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "No intents found for drop session=%{public}s on=%{public}s", v33, 0x16u);
      swift_arrayDestroy();
    }

    v29 = 0;
  }

  (*(v9 + 8))(v12, v6);
  return v29;
}

uint64_t sub_1006AFDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DragDropToPlaylist.Destination(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006B0E60(a1, v8, type metadata accessor for DragDropToPlaylist.Destination);
  ObjectType = swift_getObjectType();
  v10 = sub_1003207B8(ObjectType);
  v11 = v10;
  if (*(v10 + 16))
  {
    if (sub_1006ABF4C(v10))
    {
      if (qword_10117F268 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000060E4(v12, qword_1012186C8);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v46 = a3;
        v47 = v16;
        *v15 = 136446466;
        swift_unknownObjectRetain();
        sub_10010FC20(&unk_10119E5E0);
        v17 = String.init<A>(describing:)();
        v19 = sub_1000105AC(v17, v18, &v47);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2082;
        v46 = a2;
        swift_unknownObjectRetain();
        v20 = String.init<A>(describing:)();
        v22 = sub_1000105AC(v20, v21, &v47);

        *(v15 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v13, v14, "Received drop session=%{public}s on=%{public}s", v15, 0x16u);
        swift_arrayDestroy();
      }

      v23 = sub_1006ABD58(v11);

      v24 = [v23 operation];
    }

    else
    {
      if (qword_10117F268 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000060E4(v36, qword_1012186C8);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v47 = v40;
        *v39 = 136446210;
        sub_10010FC20(&qword_10119E600);
        v41 = Array.description.getter();
        v43 = v42;

        v44 = sub_1000105AC(v41, v43, &v47);

        *(v39 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v37, v38, "Destination doesn't accept intents=%{public}s", v39, 0xCu);
        sub_10000959C(v40);
      }

      else
      {
      }

      v24 = 1;
    }
  }

  else
  {

    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000060E4(v25, qword_1012186C8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46 = a3;
      v47 = v29;
      *v28 = 136446466;
      swift_unknownObjectRetain();
      sub_10010FC20(&unk_10119E5E0);
      v30 = String.init<A>(describing:)();
      v32 = sub_1000105AC(v30, v31, &v47);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      v46 = a2;
      swift_unknownObjectRetain();
      v33 = String.init<A>(describing:)();
      v35 = sub_1000105AC(v33, v34, &v47);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "No intents found for drop session=%{public}s on=%{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    v24 = 0;
  }

  sub_1006B0EC8(v8, type metadata accessor for DragDropToPlaylist.Destination);
  return v24;
}

uint64_t sub_1006B03A0(void *a1, id a2, uint64_t a3)
{
  v7 = [a2 identifier];
  if (qword_10117FC90 != -1)
  {
    swift_once();
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    goto LABEL_10;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_10:
    v15 = *(v3 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
    v16 = type metadata accessor for DragDropToPlaylist.Destination(0);
    v24 = v16;
    v25 = sub_1006B0E18(&unk_10118D3A0, type metadata accessor for DragDropToPlaylist.Destination);
    v17 = sub_10001C8B8(&v23);
    v18 = *(v16 + 20);
    v19 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
    (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    v29 = xmmword_100EBCEF0;
    v20 = *(v16 + 24);

    PresentationSource.init(viewController:position:)(a1, v27, v17 + v20);
    *v17 = v15;
    sub_100059A8C(&v23, v26);
    v21 = sub_10000954C(v26, v26[3]);
    v14 = sub_1006AFDD0(v21, a2, a3);
    sub_10000959C(v26);
    return v14;
  }

  return 0;
}

void sub_1006B05C4(void *a1, id a2, uint64_t a3)
{
  v7 = [a2 identifier];
  if (qword_10117FC90 != -1)
  {
    swift_once();
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    goto LABEL_13;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_13:
    v25 = *&v3[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary];
    v26 = type metadata accessor for DragDropToPlaylist.Destination(0);
    v34 = v26;
    v35 = sub_1006B0E18(&unk_10118D3A0, type metadata accessor for DragDropToPlaylist.Destination);
    v27 = sub_10001C8B8(&v33);
    v28 = *(v26 + 20);
    v29 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
    (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    v39 = xmmword_100EBCEF0;
    v30 = *(v26 + 24);

    PresentationSource.init(viewController:position:)(a1, v37, v27 + v30);
    *v27 = v25;
    sub_100059A8C(&v33, v36);
    v31 = sub_10000954C(v36, v36[3]);
    sub_1006AEEA8(v31, a2, a3, v3);
    sub_10000959C(v36);
    return;
  }

  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000060E4(v14, qword_1012186C8);
  v15 = a2;
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v37[0] = v18;
    *v17 = 136446210;
    v19 = v15;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_1000105AC(v21, v23, v37);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, oslog, v16, "Unsupported Drop Session for sidebarAction=%{public}s", v17, 0xCu);
    sub_10000959C(v18);
  }

  else
  {
  }
}

uint64_t sub_1006B095C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1006ADCDC(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_1006B0A30(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100008F30;

  return sub_1006ADF04(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1006B0AF8()
{
  swift_unknownObjectRelease();
  sub_10000959C(v0 + 32);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1006B0B50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1006AE0EC(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_1006B0C24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100009648(a1, v4);
}

uint64_t sub_1006B0CDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1006ADCDC(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

unint64_t sub_1006B0DCC()
{
  result = qword_10118B920;
  if (!qword_10118B920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10118B920);
  }

  return result;
}

uint64_t sub_1006B0E18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006B0E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006B0EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1006B0F58()
{
  v1 = [v0 window];
  if (!v1)
  {
    return 0;
  }

  v2 = Corner.large.unsafeMutableAddressor();
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

  [v0 bounds];
  [v0 effectiveUserInterfaceLayoutDirection];

  NSDirectionalEdgeInsets.init(edge:length:)(v7, 10.0);
  v8 = [objc_allocWithZone(UIPreviewParameters) init];
  CGRect.outset(by:for:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = Corner.radius(in:)(v3, v9, v11, v13, v15, v4, v5);
  v18 = [objc_opt_self() bezierPathWithRoundedRect:v10 cornerRadius:{v12, v14, v16, v17}];
  [v8 setVisiblePath:v18];

  v19 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor:v19];

  v20 = [objc_allocWithZone(UIBezierPath) init];
  [v8 setShadowPath:v20];

  v21 = [v0 contentView];
  v22 = [objc_allocWithZone(UITargetedPreview) initWithView:v21 parameters:v8];

  return v22;
}

uint64_t sub_1006B11B8@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v2 = type metadata accessor for MusicPin.Action();
  v83 = *(v2 - 8);
  v84 = v2;
  __chkstk_darwin(v2);
  v82 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v81 = &v75 - v5;
  v6 = type metadata accessor for AccessibilityTraits();
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v91 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for AccessibilityChildBehavior();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_10119E6F8);
  __chkstk_darwin(v9 - 8);
  v11 = &v75 - v10;
  v12 = sub_10010FC20(&qword_10119E700);
  __chkstk_darwin(v12);
  v76 = &v75 - v13;
  v97 = sub_10010FC20(&qword_10119E708);
  __chkstk_darwin(v97);
  v77 = &v75 - v14;
  v15 = sub_10010FC20(&qword_10119E710);
  v85 = *(v15 - 8);
  v86 = v15;
  __chkstk_darwin(v15);
  v96 = &v75 - v16;
  v87 = sub_10010FC20(&qword_10119E718);
  __chkstk_darwin(v87);
  v88 = &v75 - v17;
  v89 = sub_10010FC20(&qword_10119E720);
  __chkstk_darwin(v89);
  v90 = &v75 - v18;
  v19 = type metadata accessor for MusicPin.Item();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v75 - v24;
  v94 = v1;
  MusicPin.item.getter();
  v26 = Corner.medium.unsafeMutableAddressor();
  v28 = *v26;
  v27 = v26[1];
  v29 = *(v26 + 16);
  (*(v20 + 32))(v22, v25, v19);
  v30 = (*(v20 + 88))(v22, v19);
  if (v30 == enum case for MusicPin.Item.album(_:))
  {
    v31 = v29;
    v32 = 0;
  }

  else if (v30 == enum case for MusicPin.Item.artist(_:))
  {
    v28 = 0;
    v27 = 0;
    v32 = 0;
    v31 = 2;
  }

  else
  {
    v31 = v29;
    v32 = v30 == enum case for MusicPin.Item.musicVideo(_:);
  }

  (*(v20 + 8))(v22, v19);
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0x4010000000000000;
  v11[16] = 0;
  v33 = sub_10010FC20(&qword_10119E728);
  v34 = v94;
  sub_1006B1C48(v94, v28, v27, v31, &v11[*(v33 + 44)]);
  if (sub_1006B369C())
  {
    v35 = 0.35;
  }

  else
  {
    v35 = 1.0;
  }

  v36 = v11;
  v37 = v76;
  sub_10003D17C(v36, v76, &qword_10119E6F8);
  *(v37 + *(v12 + 36)) = v35;
  v75 = static Alignment.topLeading.getter();
  v39 = v38;
  v40 = v77;
  v41 = &v77[*(v97 + 36)];
  sub_1006B42BC(v34, v32, v28, v27, v31, v41);
  v42 = (v41 + *(sub_10010FC20(&qword_10119E730) + 36));
  *v42 = v75;
  v42[1] = v39;
  v43 = v34;
  sub_10003D17C(v37, v40, &qword_10119E700);
  v44 = v78;
  static AccessibilityChildBehavior.combine.getter();
  v45 = sub_1006B5B28();
  View.accessibilityElement(children:)();
  (*(v79 + 8))(v44, v80);
  sub_1000095E8(v40, &qword_10119E708);
  v46 = v81;
  MusicPin.action.getter();
  v48 = v82;
  v47 = v83;
  v49 = v84;
  (*(v83 + 104))(v82, enum case for MusicPin.Action.navigate(_:), v84);
  sub_1006B650C(qword_10118C018, &type metadata accessor for MusicPin.Action);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v47 + 8);
  v51(v48, v49);
  v51(v46, v49);
  sub_10010FC20(&qword_10119E758);
  v52 = v92;
  if (v50)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100EBC6B0;
    static AccessibilityTraits.isButton.getter();
  }

  else
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100EBDC20;
    static AccessibilityTraits.isButton.getter();
    static AccessibilityTraits.startsMediaSession.getter();
  }

  v98 = v53;
  sub_1006B650C(&qword_10119E760, &type metadata accessor for AccessibilityTraits);
  sub_10010FC20(&qword_10119E768);
  sub_100020674(&qword_10119E770, &qword_10119E768);
  v54 = v91;
  v55 = v93;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v98 = v97;
  v99 = v45;
  swift_getOpaqueTypeConformance2();
  v56 = v88;
  v57 = v86;
  v58 = v96;
  View.accessibilityAddTraits(_:)();
  (*(v52 + 8))(v54, v55);
  (*(v85 + 8))(v58, v57);
  v59 = *(v43 + *(_s7PinCellVMa() + 28)) != 0;
  v60 = sub_1003124C4(v59);
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = sub_1006B5C98();
  v68 = v90;
  View.accessibilityIdentifier(_:)(v60, v62, v64, v66, v87, v67);

  sub_1000095E8(v56, &qword_10119E718);
  sub_10010FC20(&qword_10119CA40);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_100EBC6B0;
  v98 = MusicPin.title.getter();
  v99 = v70;
  sub_100009838();
  *(v69 + 32) = Text.init<A>(_:)();
  *(v69 + 40) = v71;
  *(v69 + 48) = v72 & 1;
  *(v69 + 56) = v73;
  sub_1006B5D90();
  View.accessibilityInputLabels(_:)();

  return sub_1000095E8(v68, &qword_10119E720);
}