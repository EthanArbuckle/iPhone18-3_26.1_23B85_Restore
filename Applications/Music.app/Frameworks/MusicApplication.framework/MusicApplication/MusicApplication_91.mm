BOOL InlineProfileEditingView.Context.canValidate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v0 = String.trim()();

  v1 = (v0._object >> 56) & 0xF;
  if ((v0._object & 0x2000000000000000) == 0)
  {
    v1 = v0._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

uint64_t InlineProfileEditingView.Context.userName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  countAndFlagsBits = String.trim()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.getter()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.setter(char a1)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_8478F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();
}

uint64_t InlineProfileEditingView.Context.userImage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  if (*(v0 + v4))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v5 = sub_AB8A60();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_12E1C(v3, &unk_E1BA30);
  if (v6 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v8;
}

uint64_t InlineProfileEditingView.Context.deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA48);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t InlineProfileEditingView.Context.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA48);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_847D3C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InlineProfileEditingView.Context();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.context()
{
  type metadata accessor for InlineProfileEditingView.Context();
  sub_84C3A8();

  return sub_AB5B50();
}

uint64_t InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v83 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB9250();
  v81 = *(v5 - 8);
  v82 = v5;
  __chkstk_darwin(v5);
  v80 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA88);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = v72 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA90);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v72 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA98);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BAA0);
  v72[2] = v21;
  __chkstk_darwin(v21);
  v85 = v72 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BAA8);
  v77 = *(v23 - 8);
  v78 = v23;
  __chkstk_darwin(v23);
  v76 = v72 - v24;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BAB0);
  __chkstk_darwin(v86);
  v87 = v72 - v25;
  *v12 = sub_AB62E0();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BAB8);
  sub_848760(v2, &v12[*(v26 + 44)]);
  v27 = [objc_opt_self() quaternarySystemFillColor];
  v28 = sub_AB7510();
  v29 = sub_AB6AA0();
  v30 = &v12[*(v10 + 44)];
  *v30 = v28;
  v30[8] = v29;
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v12, v16, &qword_E1BA88);
  v31 = &v16[*(v14 + 44)];
  v32 = v97;
  *(v31 + 4) = v96;
  *(v31 + 5) = v32;
  *(v31 + 6) = v98;
  v33 = v93;
  *v31 = v92;
  *(v31 + 1) = v33;
  v34 = v95;
  *(v31 + 2) = v94;
  *(v31 + 3) = v34;
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v16, v20, &qword_E1BA90);
  v35 = &v20[*(v18 + 44)];
  v36 = v104;
  *(v35 + 4) = v103;
  *(v35 + 5) = v36;
  *(v35 + 6) = v105;
  v37 = v100;
  *v35 = v99;
  *(v35 + 1) = v37;
  v38 = v102;
  *(v35 + 2) = v101;
  *(v35 + 3) = v38;
  v39 = *(v21 + 36);
  v40 = v85;
  v41 = &v85[v39];
  v42 = *(sub_AB5E60() + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = sub_AB63A0();
  (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
  __asm { FMOV            V0.2D, #16.0 }

  *v41 = _Q0;
  *&v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BAC0) + 36)] = 256;
  sub_36B0C(v20, v40, &qword_E1BA98);
  v90 = 0;
  v91 = 0xE000000000000000;
  v50 = v73;
  v89 = *(v73 + 16);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7660();
  v72[1] = v72;
  v88 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BAD0);
  sub_84C408();
  v51 = sub_7ABE60();
  sub_36A00(&qword_E1BB08, &qword_E1BAD0);
  v75 = v51;
  v52 = v76;
  v53 = v85;
  sub_AB7190();
  v54 = v79;
  v55 = v50;

  v56 = v80;

  v57 = v81;
  sub_12E1C(v53, &qword_E1BAA0);
  v58 = sub_AB7A30();
  v60 = v59;
  v61 = v87;
  v62 = &v87[*(v86 + 36)];
  sub_84B044(v55, v62);
  v63 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BB10) + 36));
  *v63 = v58;
  v63[1] = v60;
  v64 = v82;
  (*(v77 + 32))(v61, v52, v78);
  sub_AB91E0();
  (*(v57 + 16))(v56, v54, v64);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v65 = qword_E73660;
  sub_AB3550();
  v66 = sub_AB9320();
  v68 = v67;
  (*(v57 + 8))(v54, v64);
  v90 = v66;
  v91 = v68;
  v89 = *(v55 + 48);
  v69 = sub_AB7660();
  v85 = v72;
  __chkstk_darwin(v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BB18);
  sub_84C68C();
  sub_36A00(&qword_E1BB30, &qword_E1BB18);
  v70 = v87;
  sub_AB7280();

  return sub_12E1C(v70, &qword_E1BAB0);
}

uint64_t sub_848760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v255 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD38);
  v251 = *(v3 - 8);
  v252 = v3;
  __chkstk_darwin(v3);
  v232 = v208 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BD40);
  __chkstk_darwin(v5 - 8);
  v254 = v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v253 = v208 - v8;
  v9 = sub_AB35C0();
  __chkstk_darwin(v9 - 8);
  v247 = v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_AB9250();
  v246 = *(v248 - 8);
  __chkstk_darwin(v248);
  v259 = v208 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v260 = v208 - v13;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB00);
  __chkstk_darwin(v245);
  v228 = v208 - v14;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD50);
  __chkstk_darwin(v242);
  v244 = (v208 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD58);
  __chkstk_darwin(v16 - 8);
  v250 = v208 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v261 = v208 - v19;
  v20 = sub_AB7540();
  v230 = *(v20 - 8);
  v231 = v20;
  __chkstk_darwin(v20);
  v229 = v208 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BD60);
  __chkstk_darwin(v239);
  v240 = (v208 - v22);
  v256 = sub_AB89C0();
  v237 = *(v256 - 8);
  __chkstk_darwin(v256);
  v224 = v208 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_AB4820();
  v226 = *(v24 - 8);
  v227 = v24;
  __chkstk_darwin(v24);
  v233 = v208 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v223 = v208 - v27;
  __chkstk_darwin(v28);
  v225 = v208 - v29;
  __chkstk_darwin(v30);
  v235 = v208 - v31;
  v236 = sub_AB4780();
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v258 = v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60);
  __chkstk_darwin(v33 - 8);
  v219 = v208 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v214 = v208 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v37 - 8);
  v217 = v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v216 = v208 - v40;
  __chkstk_darwin(v41);
  v213 = v208 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70);
  __chkstk_darwin(v43 - 8);
  v218 = v208 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v215 = v208 - v46;
  __chkstk_darwin(v47);
  v257 = v208 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD78);
  v221 = *(v49 - 8);
  v222 = v49;
  __chkstk_darwin(v49);
  v220 = v208 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BD80);
  __chkstk_darwin(v51);
  v53 = v208 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8A8);
  __chkstk_darwin(v54);
  v56 = v208 - v55;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD90);
  __chkstk_darwin(v238);
  v58 = v208 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = v208 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD98);
  __chkstk_darwin(v62 - 8);
  v243 = v208 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v241 = v208 - v65;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v249 = a1;
  v66 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v262 = v66;
  if (v265._countAndFlagsBits)
  {
    v258 = v265._countAndFlagsBits;
    sub_AB7520();
    v68 = v229;
    v67 = v230;
    v69 = v231;
    (*(v230 + 13))(v229, enum case for Image.ResizingMode.stretch(_:), v231);
    v257 = sub_AB7590();

    (*(v67 + 8))(v68, v69);
    sub_AB7A30();
    sub_AB5970();
    v70 = v273;
    v71 = v274;
    v72 = v275;
    v73 = v276;
    v75 = v277;
    v74 = v278;
    LOBYTE(v265._countAndFlagsBits) = v274;
    LOBYTE(v263[0]) = v276;
    LOBYTE(v67) = sub_AB6AA0();
    sub_AB5690();
    v264 = 0;
    v265._countAndFlagsBits = v257;
    v265._object = v70;
    LOBYTE(v266._countAndFlagsBits) = v71;
    v266._object = v72;
    LOBYTE(v267._countAndFlagsBits) = v73;
    v267._object = v75;
    v268._countAndFlagsBits = v74;
    LOWORD(v268._object) = 256;
    *(&v268._object + 2) = v271;
    HIWORD(v268._object) = WORD2(v271);
    LOBYTE(v269._countAndFlagsBits) = v67;
    HIDWORD(v269._countAndFlagsBits) = *(v263 + 3);
    *(&v269._countAndFlagsBits + 1) = v263[0];
    v269._object = v76;
    *&v270[0] = v77;
    *(&v270[0] + 1) = v78;
    *&v270[1] = v79;
    BYTE8(v270[1]) = 0;
    v80 = v268;
    v81 = v270[0];
    v82 = v240;
    v240[4] = v269;
    v82[5] = v81;
    *(v82 + 89) = *(v270 + 9);
    v83 = v266;
    v84 = v267;
    *v82 = v265;
    v82[1] = v83;
    v82[2] = v84;
    v82[3] = v80;
    swift_storeEnumTagMultiPayload();
    sub_15F84(&v265, v263, &qword_E1BDA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BDA8);
    sub_84CC04();
    sub_84CDF0();
    v85 = v241;
    sub_AB6610();

    sub_12E1C(&v265, &qword_E1BDA8);
    v86 = v259;
    goto LABEL_18;
  }

  v210 = v54;
  v211 = v58;
  v212 = v51;
  v229 = v53;
  v230 = v56;
  v231 = v61;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v213;
  sub_AB5510();

  v88 = v214;
  v208[0] = *(v237 + 56);
  v208[1] = v237 + 56;
  (v208[0])(v214, 1, 1, v256);
  v89 = sub_AB8A60();
  v90 = *(v89 - 8);
  v91 = (*(v90 + 48))(v87, 1, v89);
  v209 = v89;
  if (v91 == 1)
  {
    sub_12E1C(v88, &qword_E1AB60);
    sub_12E1C(v87, &unk_E1BA30);
    v92 = type metadata accessor for ArtworkImage.ViewModel(0);
    v93 = v257;
    (*(*(v92 - 8) + 56))(v257, 1, 1, v92);
  }

  else
  {
    v93 = v257;
    (*(v90 + 32))(v257, v87, v89);
    v92 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_36B0C(v88, v93 + *(v92 + 20), &qword_E1AB60);
    (*(*(v92 - 8) + 56))(v93, 0, 1, v92);
  }

  v94 = v258;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v95 = String.trim()();

  (*(v234 + 104))(v94, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v236);
  *(swift_allocObject() + 16) = v95;
  v96 = v215;
  sub_15F84(v93, v215, &qword_E1BD70);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v97 = *(*(v92 - 8) + 48);
  if (v97(v96, 1, v92) == 1)
  {
    sub_12E1C(v96, &qword_E1BD70);
    v98 = 1;
    v99 = v216;
    v100 = v217;
    v101 = v209;
  }

  else
  {
    v99 = v216;
    v101 = v209;
    (*(v90 + 16))(v216, v96, v209);
    sub_84D07C(v96, type metadata accessor for ArtworkImage.ViewModel);
    v98 = 0;
    v100 = v217;
  }

  (*(v90 + 56))(v99, v98, 1, v101);
  sub_15F84(v99, v100, &unk_E1BA30);
  sub_AB4810();
  sub_12E1C(v99, &unk_E1BA30);
  sub_AB47B0();
  v102 = v218;
  sub_15F84(v257, v218, &qword_E1BD70);
  v103 = v97(v102, 1, v92);
  v104 = v227;
  if (v103 == 1)
  {
    sub_12E1C(v102, &qword_E1BD70);
    v105 = v219;
    (v208[0])(v219, 1, 1, v256);
    v86 = v259;
    v106 = v226;
    v107 = v237;
LABEL_12:
    v110 = v224;
    if (qword_E16A58 != -1)
    {
      swift_once();
    }

    v108 = v256;
    v111 = __swift_project_value_buffer(v256, static Artwork.CropStyle.fallback);
    (*(v107 + 16))(v110, v111, v108);
    v112 = (*(v107 + 48))(v105, 1, v108) == 1;
    v113 = v105;
    v114 = v110;
    v115 = v107;
    if (!v112)
    {
      sub_12E1C(v113, &qword_E1AB60);
    }

    goto LABEL_17;
  }

  v105 = v219;
  sub_15F84(v102 + *(v92 + 20), v219, &qword_E1AB60);
  sub_84D07C(v102, type metadata accessor for ArtworkImage.ViewModel);
  v107 = v237;
  v108 = v256;
  v109 = (*(v237 + 48))(v105, 1, v256);
  v86 = v259;
  v106 = v226;
  if (v109 == 1)
  {
    goto LABEL_12;
  }

  v116 = v105;
  v114 = v224;
  (*(v107 + 32))(v224, v116, v108);
  v115 = v107;
LABEL_17:
  v117 = v223;
  v118 = v233;
  sub_AB4790();
  (*(v115 + 8))(v114, v108);
  v119 = *(v106 + 8);
  v119(v118, v104);
  v120 = v225;
  sub_AB47C0();
  v119(v117, v104);
  sub_7FDAA4();
  v121 = v220;
  sub_AB47A0();

  v119(v120, v104);
  v119(v235, v104);
  (*(v234 + 8))(v258, v236);
  sub_12E1C(v257, &qword_E1BD70);
  sub_AB7A30();
  sub_AB5970();
  v122 = v229;
  (*(v221 + 32))(v229, v121, v222);
  v123 = (v122 + *(v212 + 36));
  v124 = v263[1];
  *v123 = v263[0];
  v123[1] = v124;
  v123[2] = v263[2];
  v125 = v230;
  sub_36B0C(v122, v230, &unk_E1BD80);
  *(v125 + *(v210 + 36)) = 256;
  LOBYTE(v122) = sub_AB6AA0();
  sub_AB5690();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v134 = v211;
  sub_36B0C(v125, v211, &qword_E1B8A8);
  v135 = v134 + *(v238 + 36);
  *v135 = v122;
  *(v135 + 8) = v127;
  *(v135 + 16) = v129;
  *(v135 + 24) = v131;
  *(v135 + 32) = v133;
  *(v135 + 40) = 0;
  v136 = v231;
  sub_36B0C(v134, v231, &qword_E1BD90);
  sub_15F84(v136, v240, &qword_E1BD90);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BDA8);
  sub_84CC04();
  sub_84CDF0();
  v85 = v241;
  sub_AB6610();
  sub_12E1C(v136, &qword_E1BD90);
LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v137 = String.trim()();

  v138 = (v137._object >> 56) & 0xF;
  if ((v137._object & 0x2000000000000000) == 0)
  {
    v138 = v137._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v139 = &unk_E73000;
  if (v138)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v140 = String.trim()();

    v265 = v140;
    sub_7ABE60();
    v141 = sub_AB6F20();
    v143 = v142;
    v145 = v144;
    v146 = sub_AB6E70();
    v148 = v147;
    v149 = v85;
    v151 = v150;
    v153 = v152;
    sub_36B74(v141, v143, v145 & 1);

    v154 = v244;
    *v244 = v146;
    v154[1] = v148;
    v86 = v259;
    v155 = v151 & 1;
    v85 = v149;
    *(v154 + 16) = v155;
    v154[3] = v153;
    v139 = &unk_E73000;
    swift_storeEnumTagMultiPayload();
    sub_832820();
    sub_AB6610();
    v156 = v248;
  }

  else
  {
    v157 = v260;
    sub_AB91E0();
    v158 = v246;
    v156 = v248;
    (*(v246 + 16))(v86, v157, v248);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v159 = qword_E73660;
    sub_AB3550();
    v160 = sub_AB9320();
    v162 = v161;
    (*(v158 + 8))(v260, v156);
    v271 = v160;
    v272 = v162;
    v163 = swift_allocObject();
    v164 = v249;
    v165 = v249[3];
    v163[3] = v249[2];
    v163[4] = v165;
    v163[5] = v164[4];
    v166 = v164[1];
    v163[1] = *v164;
    v163[2] = v166;
    sub_844244(v164, &v265);
    sub_7ABE60();
    v167 = v228;
    sub_AB76E0();
    v168 = sub_AB74E0();
    KeyPath = swift_getKeyPath();
    v170 = v244;
    v171 = (v167 + *(v245 + 36));
    *v171 = KeyPath;
    v171[1] = v168;
    sub_15F84(v167, v170, &qword_E1AB00);
    swift_storeEnumTagMultiPayload();
    sub_832820();
    sub_AB6610();
    sub_12E1C(v167, &qword_E1AB00);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v172 = String.trim()();

  v173 = (v172._object >> 56) & 0xF;
  if ((v172._object & 0x2000000000000000) == 0)
  {
    v173 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v173)
  {
    v174 = v260;
    sub_AB91E0();
    v175 = v246;
    (*(v246 + 16))(v86, v174, v156);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v176 = v139[204];
    sub_AB3550();
    v177 = sub_AB9320();
    v179 = v178;
    (*(v175 + 8))(v260, v156);
    v271 = v177;
    v272 = v179;
    v180 = swift_allocObject();
    v181 = v249;
    v182 = v249[3];
    v180[3] = v249[2];
    v180[4] = v182;
    v180[5] = v181[4];
    v183 = v181[1];
    v180[1] = *v181;
    v180[2] = v183;
    sub_844244(v181, &v265);
    sub_7ABE60();
    v184 = v232;
    sub_AB76E0();
    LOBYTE(v180) = sub_AB6AF0();
    sub_AB5690();
    v186 = v185;
    v188 = v187;
    v190 = v189;
    v192 = v191;
    v193 = v184 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BE20) + 36);
    *v193 = v180;
    *(v193 + 8) = v186;
    *(v193 + 16) = v188;
    *(v193 + 24) = v190;
    *(v193 + 32) = v192;
    *(v193 + 40) = 0;
    v194 = swift_getKeyPath();
    v195 = v184 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BE28) + 36);
    *v195 = v194;
    *(v195 + 8) = 1;
    *(v195 + 16) = 0;
    v197 = v252;
    v196 = v253;
    *(v184 + *(v252 + 36)) = 0x3FF0000000000000;
    sub_36B0C(v184, v196, &qword_E1BD38);
    v198 = 0;
  }

  else
  {
    v198 = 1;
    v197 = v252;
    v196 = v253;
  }

  (*(v251 + 56))(v196, v198, 1, v197);
  v199 = v243;
  v200 = v85;
  sub_15F84(v85, v243, &qword_E1BD98);
  v201 = v261;
  v202 = v250;
  sub_15F84(v261, v250, &qword_E1BD58);
  v203 = v254;
  sub_15F84(v196, v254, &unk_E1BD40);
  v204 = v255;
  sub_15F84(v199, v255, &qword_E1BD98);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BE30);
  sub_15F84(v202, v204 + v205[12], &qword_E1BD58);
  v206 = v204 + v205[16];
  *v206 = 0;
  *(v206 + 8) = 1;
  sub_15F84(v203, v204 + v205[20], &unk_E1BD40);
  sub_12E1C(v196, &unk_E1BD40);
  sub_12E1C(v201, &qword_E1BD58);
  sub_12E1C(v200, &qword_E1BD98);
  sub_12E1C(v203, &unk_E1BD40);
  sub_12E1C(v202, &qword_E1BD58);
  return sub_12E1C(v199, &qword_E1BD98);
}

uint64_t sub_84A3B4@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD28);
  __chkstk_darwin(v3 - 8);
  v85 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v101 = &v81 - v6;
  v7 = sub_AB35C0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_AB9250();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v81 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB10);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v83 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v95 = &v81 - v17;
  __chkstk_darwin(v18);
  v94 = &v81 - v19;
  __chkstk_darwin(v20);
  v89 = &v81 - v21;
  __chkstk_darwin(v22);
  v97 = &v81 - v23;
  __chkstk_darwin(v24);
  v100 = &v81 - v25;
  sub_AB91E0();
  v98 = *(v9 + 16);
  v99 = v8;
  v96 = v9 + 16;
  v98(v11, v14, v8);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v26 = qword_E73660;
  v27 = qword_E73660;
  sub_AB3550();
  v92 = v27;
  v28 = sub_AB9320();
  v93 = v11;
  v30 = v29;
  v31 = *(v9 + 8);
  v32 = v99;
  v31(v14, v99);
  v103 = v28;
  v104 = v30;
  v33 = swift_allocObject();
  v34 = v9 + 8;
  v35 = a1[3];
  v33[3] = a1[2];
  v33[4] = v35;
  v33[5] = a1[4];
  v36 = a1[1];
  v33[1] = *a1;
  v33[2] = v36;
  sub_844244(a1, v102);
  v37 = sub_7ABE60();
  sub_AB76E0();
  sub_AB91E0();
  v98(v93, v14, v32);
  sub_AB3550();
  v88 = v26;
  v38 = v31;
  v39 = sub_AB9320();
  v41 = v40;
  v87 = v34;
  v31(v14, v32);
  v103 = v39;
  v104 = v41;
  v42 = swift_allocObject();
  v43 = a1[3];
  v42[3] = a1[2];
  v42[4] = v43;
  v42[5] = a1[4];
  v44 = a1[1];
  v42[1] = *a1;
  v42[2] = v44;
  sub_844244(a1, v102);
  v45 = v97;
  v86 = v37;
  v46 = v93;
  sub_AB76E0();
  v47 = 1;
  if ([objc_opt_self() isSourceTypeAvailable:1])
  {
    v48 = v92;
    v82 = v38;
    v49 = v98;
    v50 = v99;
    v51 = [objc_opt_self() currentTraitCollection];
    v52 = [v51 userInterfaceIdiom];

    if (v52 == &dword_4 + 2)
    {
      v47 = 1;
      v45 = v97;
      v38 = v82;
    }

    else
    {
      sub_AB91E0();
      v49(v46, v14, v50);
      v53 = v48;
      sub_AB3550();
      v54 = sub_AB9320();
      v56 = v55;
      v38 = v82;
      v82(v14, v50);
      v103 = v54;
      v104 = v56;
      v57 = swift_allocObject();
      v58 = a1[3];
      v57[3] = a1[2];
      v57[4] = v58;
      v57[5] = a1[4];
      v59 = a1[1];
      v57[1] = *a1;
      v57[2] = v59;
      sub_844244(a1, v102);
      v60 = v89;
      sub_AB76E0();
      (*(v90 + 32))(v101, v60, v91);
      v47 = 0;
      v45 = v97;
    }
  }

  v61 = v90;
  v62 = v91;
  (*(v90 + 56))(v101, v47, 1, v91);
  sub_AB91E0();
  v63 = v99;
  v98(v46, v14, v99);
  v64 = v92;
  sub_AB3550();
  v65 = sub_AB9320();
  v67 = v66;
  v38(v14, v63);
  v103 = v65;
  v104 = v67;
  v68 = swift_allocObject();
  v69 = a1[3];
  v68[3] = a1[2];
  v68[4] = v69;
  v68[5] = a1[4];
  v70 = a1[1];
  v68[1] = *a1;
  v68[2] = v70;
  sub_844244(a1, v102);
  v71 = v89;
  sub_AB76E0();
  v72 = *(v61 + 16);
  v73 = v94;
  v72(v94, v100, v62);
  v74 = v95;
  v72(v95, v45, v62);
  v75 = v85;
  sub_15F84(v101, v85, &qword_E1BD28);
  v76 = v83;
  v72(v83, v71, v62);
  v77 = v84;
  v72(v84, v73, v62);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD30);
  v72(&v77[v78[12]], v74, v62);
  sub_15F84(v75, &v77[v78[16]], &qword_E1BD28);
  v72(&v77[v78[20]], v76, v62);
  v79 = *(v61 + 8);
  v79(v71, v62);
  sub_12E1C(v101, &qword_E1BD28);
  v79(v97, v62);
  v79(v100, v62);
  v79(v76, v62);
  sub_12E1C(v75, &qword_E1BD28);
  v79(v95, v62);
  return (v79)(v94, v62);
}

uint64_t sub_84AE30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BD10);
  sub_AB7650();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  return sub_AB7650();
}

uint64_t sub_84AEBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = *(a1 + 8);
  sub_8469DC(0);
  v9 = sub_AB8A60();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_15F84(v7, v4, &unk_E1BA30);

  sub_AB5520();
  sub_12E1C(v7, &unk_E1BA30);
  v10 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v8 + v10) = 1;
  return result;
}

uint64_t sub_84B044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InlineProfileEditingView.Context();
  sub_84C3A8();
  sub_AB5B60();
  swift_getKeyPath();
  sub_AB5B70();

  v23 = *(&v30 + 1);
  v24 = v30;
  v6 = v31;
  v29 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BD10);
  sub_AB7660();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v29 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7660();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  if (qword_E16B40 != -1)
  {
    swift_once();
  }

  v13 = static UIImagePickerController.profileImagePickerProperties;
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CD0);
  swift_storeEnumTagMultiPayload();
  v14 = (v5 + v3[7]);
  v15 = v3[9];
  v16 = (v5 + v3[5]);
  *v16 = v24;
  v16[1] = v23;
  v16[2] = v6;
  v17 = v5 + v3[6];
  *v17 = v7;
  *(v17 + 1) = v8;
  v17[16] = v9;
  v18 = v5 + v3[8];
  *v18 = v10;
  *(v18 + 1) = v11;
  v18[16] = v12;
  *v14 = 0;
  v14[1] = 0;
  *(v5 + v15) = v13;

  sub_AB7A30();
  sub_AB5970();
  v19 = v25;
  sub_84CB1C(v5, v25);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD20) + 36));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v20[2] = v32;
  return sub_84D07C(v5, type metadata accessor for ImagePicker);
}

uint64_t sub_84B2E4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_84B364@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BCE0);
  __chkstk_darwin(v3 - 8);
  v88 = &v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB10);
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v90 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v99 = &v76 - v8;
  __chkstk_darwin(v9);
  v85 = &v76 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BCF0);
  __chkstk_darwin(v84);
  v98 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = &v76 - v13;
  __chkstk_darwin(v14);
  v97 = &v76 - v15;
  v16 = sub_AB35C0();
  __chkstk_darwin(v16 - 8);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_AB9250();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BCF8);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v96 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v102 = &v76 - v28;
  v89 = a1;
  v29 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v92 = v29;
  sub_AB5510();

  v82 = v103;
  v81 = v104;
  sub_AB91E0();
  v30 = *(v20 + 16);
  v95 = v20 + 16;
  v94 = v30;
  v30(v22, v25, v19);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v31 = qword_E73660;
  v32 = qword_E73660;
  v76 = v18;
  sub_AB3550();
  v33 = v32;
  v77 = v22;
  v79 = v31;
  v34 = sub_AB9320();
  v36 = v35;
  v93 = *(v20 + 8);
  v93(v25, v19);
  type metadata accessor for InlineProfileEditingView.Context();
  sub_84C3A8();
  sub_AB5B60();
  swift_getKeyPath();
  sub_AB5B70();

  v105 = v34;
  v106 = v36;
  v80 = sub_7ABE60();
  sub_AB7B10();
  sub_AB91E0();
  v37 = v77;
  v78 = v19;
  v94(v77, v25, v19);
  sub_AB3550();
  v38 = sub_AB9320();
  v40 = v39;
  v93(v25, v19);
  v103 = v38;
  v104 = v40;
  v41 = v85;
  sub_AB76E0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v42 = String.trim()();

  v43 = (v42._object >> 56) & 0xF;
  if ((v42._object & 0x2000000000000000) == 0)
  {
    v43 = v42._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v44 = v43 == 0;
  KeyPath = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v47 = v100;
  v48 = v83;
  (*(v100 + 32))(v83, v41, v101);
  v49 = (v48 + *(v84 + 36));
  *v49 = KeyPath;
  v49[1] = sub_C8EC8;
  v49[2] = v46;
  v50 = v97;
  sub_36B0C(v48, v97, &qword_E1BCF0);
  sub_AB91E0();
  v51 = v78;
  v94(v37, v25, v78);
  sub_AB3550();
  v52 = sub_AB9320();
  v54 = v53;
  v93(v25, v51);
  v105 = v52;
  v106 = v54;
  v55 = v88;
  sub_AB5670();
  v56 = sub_AB5680();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = swift_allocObject();
  v58 = v89;
  v59 = v89[3];
  *(v57 + 48) = v89[2];
  *(v57 + 64) = v59;
  *(v57 + 80) = v58[4];
  v60 = v58[1];
  *(v57 + 16) = *v58;
  *(v57 + 32) = v60;
  v61 = v81;
  *(v57 + 96) = v82;
  *(v57 + 104) = v61;
  sub_844244(v58, &v103);
  v62 = v99;
  sub_AB76C0();
  v63 = v86;
  v64 = *(v86 + 16);
  v65 = v96;
  v66 = v87;
  v64(v96, v102, v87);
  sub_15F84(v50, v98, &qword_E1BCF0);
  v67 = *(v47 + 16);
  v68 = v90;
  v69 = v101;
  v67(v90, v62, v101);
  v70 = v91;
  v64(v91, v65, v66);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD00);
  v72 = v98;
  sub_15F84(v98, &v70[*(v71 + 48)], &qword_E1BCF0);
  v67(&v70[*(v71 + 64)], v68, v69);
  v73 = *(v100 + 8);
  v73(v99, v69);
  sub_12E1C(v97, &qword_E1BCF0);
  v74 = *(v63 + 8);
  v74(v102, v66);
  v73(v68, v69);
  sub_12E1C(v72, &qword_E1BCF0);
  return (v74)(v96, v66);
}

uint64_t sub_84BE70@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_84BEF0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_84BF74(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6[2] = a2;
  v6[3] = a3;
  sub_15F84(&v7, v6, &qword_E1BD08);

  return sub_AB5520();
}

uint64_t sub_84C05C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();
}

uint64_t sub_84C0D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_15F84(a1, &v9 - v6, &unk_E1BA30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_15F84(v7, v4, &unk_E1BA30);

  sub_AB5520();
  return sub_12E1C(v7, &unk_E1BA30);
}

uint64_t sub_84C208@<X0>(uint64_t a1@<X8>)
{
  sub_AB7630();
  sub_AB7630();
  sub_AB7630();
  sub_AB7630();
  type metadata accessor for InlineProfileEditingView.Context();
  sub_84C3A8();
  result = sub_AB5B50();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

void sub_84C32C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_8469DC(v1);
}

uint64_t type metadata accessor for InlineProfileEditingView.Context()
{
  result = qword_E1BB60;
  if (!qword_E1BB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_84C3A8()
{
  result = qword_E1BA80;
  if (!qword_E1BA80)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BA80);
  }

  return result;
}

unint64_t sub_84C408()
{
  result = qword_E1BAD8;
  if (!qword_E1BAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BAA0);
    sub_84C51C(&qword_E1BAE0, &qword_E1BA98, &unk_B30BD8, sub_84C4EC);
    sub_36A00(&qword_E186A8, &unk_E1BAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BAD8);
  }

  return result;
}

uint64_t sub_84C51C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_84C5A0()
{
  result = qword_E1BAF0;
  if (!qword_E1BAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BA88);
    sub_36A00(&qword_E1BAF8, &qword_E1BB00);
    sub_36A00(&qword_E1B2E8, &qword_E1B2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BAF0);
  }

  return result;
}

unint64_t sub_84C68C()
{
  result = qword_E1BB20;
  if (!qword_E1BB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BAB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BAA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BAD0);
    sub_84C408();
    sub_7ABE60();
    sub_36A00(&qword_E1BB08, &qword_E1BAD0);
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_E1BB28, &qword_E1BB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BB20);
  }

  return result;
}

void sub_84C830()
{
  sub_3641C(319, &qword_E1BB70, &unk_E1BA30);
  if (v0 <= 0x3F)
  {
    sub_84C96C();
    if (v1 <= 0x3F)
    {
      sub_3641C(319, &unk_E1BB80, &qword_E175C0);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_84C96C()
{
  if (!qword_E1BB78)
  {
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E1BB78);
    }
  }
}

uint64_t sub_84C9BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BAB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BB18);
  sub_84C68C();
  sub_7ABE60();
  sub_36A00(&qword_E1BB30, &qword_E1BB18);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_84CAAC()
{

  return swift_deallocObject();
}

uint64_t sub_84CB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_84CBCC()
{

  return swift_deallocObject();
}

unint64_t sub_84CC04()
{
  result = qword_E1BDB0;
  if (!qword_E1BDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BDA8);
    sub_84CCBC(&qword_E1BDB8, &qword_E1BDC0, &unk_B30E38, sub_84CD6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BDB0);
  }

  return result;
}

uint64_t sub_84CCBC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_36A00(&unk_E1B440, &qword_E1BDE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_84CD6C()
{
  result = qword_E1BDC8;
  if (!qword_E1BDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E1BDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BDC8);
  }

  return result;
}

unint64_t sub_84CDF0()
{
  result = qword_E1BDE8;
  if (!qword_E1BDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BD90);
    sub_84CCBC(&qword_E1BDF0, &qword_E1B8A8, &unk_B30878, sub_84CEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BDE8);
  }

  return result;
}

unint64_t sub_84CEA8()
{
  result = qword_E1BDF8;
  if (!qword_E1BDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E1BD80);
    sub_7FDAA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BDF8);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{

  return swift_deallocObject();
}

uint64_t sub_84D07C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HeightLimitedButtonTextView.init(action:body:trailingView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  a3();
  v9 = type metadata accessor for HeightLimitedButtonTextView();
  result = a4(v9, v10, v11, v12);
  v14 = (a5 + *(v9 + 56));
  *v14 = a1;
  v14[1] = a2;
  return result;
}

uint64_t HeightLimitedButtonTextView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BE40);
  v33 = a1 + 5;
  v3 = a1[2];
  sub_AB5D50();
  sub_AB5D50();
  v31 = a1[3];
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  sub_AB77D0();
  sub_AB5D50();
  WitnessTable = swift_getWitnessTable();
  v47 = &protocol witness table for _CompositingGroupEffect;
  v30 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v42 = sub_AB76F0();
  v43 = sub_AB5E20();
  v44 = swift_getWitnessTable();
  v45 = sub_84D750();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  v26[3] = swift_getWitnessTable();
  v26[0] = sub_AB5960();
  v29 = *(v26[0] - 8);
  __chkstk_darwin(v26[0]);
  v5 = v26 - v4;
  v6 = sub_AB5D50();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v26[1] = swift_getWitnessTable();
  v26[2] = sub_AB5EA0();
  v9 = sub_AB5D50();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v26 - v13;
  v15 = a1[4];
  v16 = v32;
  sub_AB72B0();
  sub_AB6A70();
  *&v17 = v15;
  *(&v17 + 1) = *v33;
  *&v18 = v3;
  *(&v18 + 1) = v31;
  v35 = v18;
  v36 = v17;
  v37 = v16;
  sub_AB5950();
  sub_AB7A30();
  v19 = sub_84E524();
  v40 = v15;
  v41 = v19;
  v20 = swift_getWitnessTable();
  v21 = v26[0];
  sub_AB72F0();
  (*(v29 + 8))(v5, v21);
  (*(v28 + 8))(v8, v6);
  v22 = swift_getWitnessTable();
  v38 = v20;
  v39 = v22;
  v23 = swift_getWitnessTable();
  sub_7FF188(v11, v9, v23);
  v24 = *(v27 + 8);
  v24(v11, v9);
  sub_7FF188(v14, v9, v23);
  return (v24)(v14, v9);
}

unint64_t sub_84D750()
{
  result = qword_E1BE48;
  if (!qword_E1BE48)
  {
    sub_AB5E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BE48);
  }

  return result;
}

uint64_t sub_84D7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a5;
  v70 = a3;
  v52 = a1;
  v74 = a6;
  v8 = sub_AB5E20();
  v62 = v8;
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v72 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  sub_AB77D0();
  v10 = sub_AB5D50();
  WitnessTable = swift_getWitnessTable();
  v89 = &protocol witness table for _CompositingGroupEffect;
  v56 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v68 = v10;
  v67 = swift_getWitnessTable();
  v11 = sub_AB76F0();
  v63 = v11;
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v58 = &v50 - v12;
  v13 = swift_getWitnessTable();
  v61 = v13;
  v60 = sub_84D750();
  v84 = v11;
  v85 = v8;
  v86 = v13;
  v87 = v60;
  v64 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v57 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v59 = &v50 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BE40);
  v51 = a2;
  v17 = sub_AB5D50();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v50 - v19;
  v21 = sub_AB5D50();
  v75 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v50 - v25;
  sub_AB7380();
  v27 = sub_84ED40();
  v83[4] = a4;
  v83[5] = v27;
  v28 = a4;
  v29 = swift_getWitnessTable();
  sub_AB7370();
  (*(v18 + 8))(v20, v17);
  v83[2] = v29;
  v83[3] = &protocol witness table for _FixedSizeLayout;
  v54 = swift_getWitnessTable();
  v30 = v26;
  v53 = v23;
  sub_7FF188(v23, v21, v54);
  v55 = *(v75 + 8);
  v56 = (v75 + 8);
  v55(v23, v21);
  v31 = v51;
  v32 = v70;
  v84 = v51;
  v85 = v70;
  v33 = v71;
  v86 = v28;
  v87 = v71;
  type metadata accessor for HeightLimitedButtonTextView();
  v76 = v31;
  v77 = v32;
  v78 = v28;
  v79 = v33;
  v80 = v52;

  v34 = v58;
  sub_AB7690();
  v35 = v72;
  sub_AB5E10();
  v36 = v57;
  v37 = v63;
  v38 = v62;
  v39 = v61;
  v40 = v60;
  sub_AB6FB0();
  (*(v73 + 8))(v35, v38);
  (*(v69 + 8))(v34, v37);
  v84 = v37;
  v85 = v38;
  v86 = v39;
  v87 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v59;
  v43 = OpaqueTypeMetadata2;
  sub_7FF188(v36, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v44 = v65;
  v45 = *(v65 + 8);
  v46 = v36;
  v45(v36, v43);
  v47 = v53;
  (*(v75 + 16))(v53, v30, v21);
  v84 = v47;
  (*(v44 + 16))(v46, v42, v43);
  v85 = v46;
  v83[0] = v21;
  v83[1] = v43;
  v81 = v54;
  v82 = OpaqueTypeConformance2;
  sub_860684(&v84, 2uLL, v83);
  v45(v42, v43);
  v48 = v55;
  v55(v30, v21);
  v45(v46, v43);
  return v48(v47, v21);
}

uint64_t sub_84DFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a4;
  v25 = a5;
  v21 = a2;
  v22 = a3;
  v23 = a1;
  v26 = a6;
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  v6 = sub_AB77D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = sub_AB5D50();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_AB6460();
  sub_AB62B0();
  v27 = v21;
  v28 = v22;
  v29 = v24;
  v30 = v25;
  v31 = v23;
  sub_AB77C0();
  WitnessTable = swift_getWitnessTable();
  sub_AB70E0();
  (*(v7 + 8))(v9, v6);
  v32 = WitnessTable;
  v33 = &protocol witness table for _CompositingGroupEffect;
  v18 = swift_getWitnessTable();
  sub_7FF188(v13, v10, v18);
  v19 = *(v11 + 8);
  v19(v13, v10);
  sub_7FF188(v16, v10, v18);
  return (v19)(v16, v10);
}

uint64_t sub_84E2AC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v35 = a6;
  v10 = *(a3 - 1);
  __chkstk_darwin(a1);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v17 = *(v16 - 8);
  __chkstk_darwin(v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v32 - v22;
  v33 = v24;
  sub_7FF188(v25, v26, v24);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v27 = v34;
  v42 = v34;
  v28 = type metadata accessor for HeightLimitedButtonTextView();
  sub_7FF188(a1 + *(v28 + 52), a3, v27);
  (*(v17 + 16))(v20, v23, a2);
  v39 = v20;
  (*(v10 + 16))(v12, v15, a3);
  v40 = v12;
  v38[0] = a2;
  v38[1] = a3;
  v36 = v33;
  v37 = v27;
  sub_860684(&v39, 2uLL, v38);
  v29 = *(v10 + 8);
  v29(v15, a3);
  v30 = *(v17 + 8);
  v30(v23, a2);
  v29(v12, a3);
  return (v30)(v20, a2);
}

unint64_t sub_84E524()
{
  result = qword_E1BE50[0];
  if (!qword_E1BE50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E1BE50);
  }

  return result;
}

unint64_t sub_84E5C8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_7FD734();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_84E66C(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_DWORD *sub_84E83C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      v26 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v26 = a2 & 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t sub_84EAA0()
{
  sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BE40);
  sub_AB5D50();
  sub_AB5D50();
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  sub_AB77D0();
  sub_AB5D50();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_AB76F0();
  sub_AB5E20();
  swift_getWitnessTable();
  sub_84D750();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  sub_AB5960();
  swift_getWitnessTable();
  sub_AB5EA0();
  sub_AB5D50();
  sub_84E524();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_84ED40()
{
  result = qword_E1BED8;
  if (!qword_E1BED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BED8);
  }

  return result;
}

uint64_t MoreLabel.init(color:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MoreLabel();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16D50);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  result = swift_getKeyPath();
  *v6 = result;
  v6[8] = 0;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for MoreLabel()
{
  result = qword_E1BF98;
  if (!qword_E1BF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v1 = sub_AB6EF0();
  v79 = *(v1 - 8);
  v80 = v1;
  __chkstk_darwin(v1);
  v78 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB6240();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B858);
  v75 = v5;
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BEE0);
  __chkstk_darwin(v8);
  v76 = &v70 - v9;
  Int.seconds.getter(44);
  sub_AB6360();
  v10 = sub_AB6F00();
  v12 = v11;
  v73 = v13;
  v74 = v14;
  v15 = &v7[*(v5 + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B860) + 28);
  v17 = enum case for Text.Case.uppercase(_:);
  v18 = sub_AB6E60();
  v19 = *(v18 - 8);
  v20 = v17;
  v21 = v8;
  (*(v19 + 104))(v15 + v16, v20, v18);
  (*(v19 + 56))(v15 + v16, 0, 1, v18);
  *v15 = swift_getKeyPath();
  *v7 = v10;
  *(v7 + 1) = v12;
  v23 = v76;
  v22 = v77;
  v7[16] = v73 & 1;
  *(v7 + 3) = v74;
  sub_AB6C10();
  sub_84F9BC();
  sub_AB6F80();
  sub_12E1C(v7, &qword_E1B858);
  v24 = sub_AB6CB0();
  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BEF8) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = *v22;
  v28 = swift_getKeyPath();
  v29 = (v23 + *(v21 + 36));
  *v29 = v28;
  v29[1] = v27;
  v30 = v22 + *(type metadata accessor for MoreLabel() + 24);
  v31 = *v30;
  if (v30[8] == 1)
  {
    v98 = v31 & 1;
  }

  else
  {

    sub_84FB24(v31, 0);
    sub_AB9F40();
    v32 = sub_AB6A40();
    sub_AB4A90();

    v33 = v70;
    sub_AB6230();
    swift_getAtKeyPath();
    sub_83315C(v31, 0);
    (*(v71 + 8))(v33, v72);
  }

  v34 = v78;
  sub_AB6EE0();
  sub_84FB30();
  v35 = v81;
  sub_AB73C0();
  (*(v79 + 8))(v34, v80);
  sub_84FCDC(v23);
  v36 = sub_AB6AD0();
  sub_AB5690();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BF10) + 36);
  *v45 = v36;
  *(v45 + 8) = v38;
  *(v45 + 16) = v40;
  *(v45 + 24) = v42;
  *(v45 + 32) = v44;
  *(v45 + 40) = 0;
  v46 = sub_AB6AB0();
  sub_AB5690();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BF18) + 36);
  *v55 = v46;
  *(v55 + 8) = v48;
  *(v55 + 16) = v50;
  *(v55 + 24) = v52;
  *(v55 + 32) = v54;
  *(v55 + 40) = 0;
  v56 = sub_AB62E0();
  v90 = 0;
  sub_84F5CC(&v83);
  v93 = v85;
  v94 = v86;
  v95 = v87;
  v96 = v88;
  v91 = v83;
  v92 = v84;
  v97[2] = v85;
  v97[3] = v86;
  v97[4] = v87;
  v97[5] = v88;
  v97[0] = v83;
  v97[1] = v84;
  sub_15F84(&v91, &v82, &qword_E1BF20);
  sub_12E1C(v97, &qword_E1BF20);
  *&v89[39] = v93;
  *&v89[55] = v94;
  *&v89[71] = v95;
  *&v89[87] = v96;
  *&v89[7] = v91;
  *&v89[23] = v92;
  v57 = v90;
  v58 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BF28) + 36);
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BF30) + 36);
  v60 = enum case for BlendMode.destinationOut(_:);
  v61 = sub_AB7AC0();
  (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
  v62 = *&v89[32];
  *(v58 + 65) = *&v89[48];
  v63 = *&v89[80];
  *(v58 + 81) = *&v89[64];
  *(v58 + 97) = v63;
  v64 = *&v89[16];
  *(v58 + 17) = *v89;
  *(v58 + 33) = v64;
  *v58 = v56;
  *(v58 + 8) = 0;
  *(v58 + 16) = v57;
  *(v58 + 112) = *&v89[95];
  *(v58 + 49) = v62;
  v65 = sub_AB7A30();
  v67 = v66;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BF38);
  v69 = (v58 + *(result + 36));
  *v69 = v65;
  v69[1] = v67;
  return result;
}

uint64_t sub_84F5CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB5D20();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  type metadata accessor for MoreLabel();
  sub_7EF898(v8);
  (*(v3 + 104))(v5, enum case for LayoutDirection.rightToLeft(_:), v2);
  v9 = sub_AB5D10();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF85F0;
  if (v9)
  {
    *(v11 + 32) = sub_AB7480();
    v12 = sub_AB7490();
  }

  else
  {
    *(v11 + 32) = sub_AB7490();
    v12 = sub_AB7480();
  }

  *(v11 + 40) = v12;
  sub_AB7990();
  sub_AB7BC0();
  sub_AB7BD0();
  sub_AB5B40();
  sub_AB7A30();
  sub_AB5970();
  v13 = sub_AB7480();
  v14 = v27;
  v20[2] = v26;
  v20[3] = v27;
  v15 = v28;
  v20[4] = v28;
  v16 = v29;
  v21 = v29;
  v17 = v24;
  v18 = v25;
  v20[0] = v24;
  v20[1] = v25;
  *(a1 + 32) = v26;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 80) = v16;
  *(a1 + 88) = v13;
  sub_15F84(v20, v22, &qword_E187B0);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  return sub_12E1C(v22, &qword_E187B0);
}

uint64_t sub_84F888@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6150();
  *a1 = result & 1;
  return result;
}

uint64_t sub_84F8B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6150();
  *a1 = result & 1;
  return result;
}

uint64_t sub_84F910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BFF8);
  __chkstk_darwin(v2 - 8);
  sub_15F84(a1, &v5 - v3, &qword_E1BFF8);
  return sub_AB61C0();
}

unint64_t sub_84F9BC()
{
  result = qword_E1BEE8;
  if (!qword_E1BEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B858);
    sub_36A00(&qword_E1BEF0, &qword_E1B860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BEE8);
  }

  return result;
}

uint64_t sub_84FA74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6160();
  *a1 = result;
  return result;
}

uint64_t sub_84FACC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6020();
  *a1 = result;
  return result;
}

uint64_t sub_84FB24(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_84FB30()
{
  result = qword_E1BF00;
  if (!qword_E1BF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BEE0);
    sub_84FBE8();
    sub_36A00(&unk_E1BE10, &unk_E1AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BF00);
  }

  return result;
}

unint64_t sub_84FBE8()
{
  result = qword_E1BF08;
  if (!qword_E1BF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B858);
    sub_84F9BC();
    swift_getOpaqueTypeConformance2();
    sub_36A00(&unk_E1ACF0, &qword_E19188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BF08);
  }

  return result;
}

uint64_t sub_84FCDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_84FD74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19030);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_84FE44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19030);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_84FEF4()
{
  sub_84FF88();
  if (v0 <= 0x3F)
  {
    sub_84FFE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_84FF88()
{
  if (!qword_E190B0)
  {
    sub_AB5D20();
    v0 = sub_AB57D0();
    if (!v1)
    {
      atomic_store(v0, &qword_E190B0);
    }
  }
}

void sub_84FFE0()
{
  if (!qword_E1AA40)
  {
    v0 = sub_AB57D0();
    if (!v1)
    {
      atomic_store(v0, &qword_E1AA40);
    }
  }
}

unint64_t sub_850034()
{
  result = qword_E1BFD8;
  if (!qword_E1BFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BF28);
    sub_8500EC();
    sub_36A00(&qword_E1BFF0, &qword_E1BF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BFD8);
  }

  return result;
}

unint64_t sub_8500EC()
{
  result = qword_E1BFE0;
  if (!qword_E1BFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BF18);
    sub_850178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BFE0);
  }

  return result;
}

unint64_t sub_850178()
{
  result = qword_E1BFE8;
  if (!qword_E1BFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BF10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BEE0);
    sub_84FB30();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BFE8);
  }

  return result;
}

double Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a6;
  *(&v16 + 1) = a7;
  *&v17 = a8;
  *(&v17 + 1) = a9;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  *&v18[4] = a6;
  *&v18[5] = a7;
  *&v18[6] = a8;
  *&v18[7] = a9;
  sub_8502C4(&v14, &v13);
  sub_8502FC(v18);
  v10 = v15;
  *a5 = v14;
  a5[1] = v10;
  result = *&v16;
  v12 = v17;
  a5[2] = v16;
  a5[3] = v12;
  return result;
}

char *sub_85032C(void *a1)
{
  v2 = v1;
  [a1 setType:*v1];
  v4 = *(v1 + 2);
  if (v4)
  {
    sub_7D8924(v4);
    sub_13C80(0, &qword_E19E40);
    v5.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  [a1 setLocations:v5.super.isa];

  isa = *(v2 + 3);
  if (isa)
  {
    sub_13C80(0, &qword_E1AD88);
    isa = sub_AB9740().super.isa;
  }

  [a1 setInterpolations:isa];

  v7 = *(v2 + 1);
  if (!v7)
  {
    goto LABEL_19;
  }

  if (v7 >> 62)
  {
    v8 = sub_ABB060();
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v8)
  {
LABEL_18:
    v7 = sub_AB9740().super.isa;

LABEL_19:
    [a1 setColors:v7];

    [a1 setStartPoint:{v2[4], v2[5]}];
    return [a1 setEndPoint:{v2[6], v2[7]}];
  }

  v20 = _swiftEmptyArrayStorage;
  result = sub_8A5768(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v20;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = sub_ABAE20();
      }

      else
      {
        v12 = *(v7 + v10 + 4);
      }

      v13 = v12;
      v14 = [v12 CGColor];
      _s3__C7CGColorCMa_1(0);
      v19 = v15;

      *&v18 = v14;
      v20 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_8A5768((v16 > 1), v17 + 1, 1);
        v11 = v20;
      }

      ++v10;
      v11[2] = v17 + 1;
      sub_9ACFC(&v18, &v11[4 * v17 + 4]);
    }

    while (v8 != v10);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id Gradient.View.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_8502C4(a1, v14);
  v13.receiver = v4;
  v13.super_class = v2;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_85032C(v11);

  sub_8502FC(a1);
  return v9;
}

id Gradient.View.init(configuration:)(_OWORD *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v6;
  v7 = a1[3];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v7;
  sub_8502C4(a1, v13);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  sub_85032C(v10);

  sub_8502FC(a1);
  return v8;
}

double Gradient.View.typedConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v10 = *v3;
  v11 = v4;
  v5 = v3[3];
  v12 = v3[2];
  v13 = v5;
  sub_8502C4(&v10, v9);
  v6 = v11;
  *a1 = v10;
  a1[1] = v6;
  result = *&v12;
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  return result;
}

uint64_t Gradient.View.typedConfiguration.setter(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v19[0] = *v3;
  v19[1] = v4;
  v5 = *(v3 + 3);
  v20 = *(v3 + 2);
  v21 = v5;
  v22[0] = v19[0];
  v22[1] = v4;
  v22[2] = v20;
  v22[3] = v5;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v6;
  v7 = a1[3];
  *(v3 + 2) = a1[2];
  *(v3 + 3) = v7;
  sub_8502C4(v19, v18);
  sub_8502C4(a1, v18);
  sub_8502FC(v22);
  v8 = *(v3 + 1);
  v18[0] = *v3;
  v18[1] = v8;
  v9 = *(v3 + 3);
  v18[2] = *(v3 + 2);
  v18[3] = v9;
  sub_8502C4(v18, v17);
  v10 = _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19);
  sub_8502FC(v18);
  if (v10)
  {
    sub_8502FC(v19);
  }

  else
  {
    v11 = *(v3 + 1);
    v17[0] = *v3;
    v17[1] = v11;
    v12 = *(v3 + 3);
    v17[2] = *(v3 + 2);
    v17[3] = v12;
    sub_8502C4(v17, v16);
    v13 = [v1 layer];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    sub_85032C(v14);
    sub_8502FC(v19);
    sub_8502FC(a1);

    a1 = v17;
  }

  return sub_8502FC(a1);
}

void (*Gradient.View.typedConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_8502C4(v4, (v4 + 16));
  return sub_850B48;
}

void sub_850B48(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 208);
  if (a2)
  {
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    sub_8502C4((v2 + 4), (v2 + 20));
    Gradient.View.typedConfiguration.setter(v2 + 4);
    v5 = v2[13];
    v2[16] = v2[12];
    v2[17] = v5;
    v6 = v2[15];
    v2[18] = v2[14];
    v2[19] = v6;
    sub_8502FC((v2 + 16));
  }

  else
  {
    v2[8] = v2[12];
    v2[9] = v3;
    v7 = v2[15];
    v2[10] = v2[14];
    v2[11] = v7;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  free(v2);
}

id sub_850C70(_OWORD *a1)
{
  v3 = a1[1];
  v15[0] = *a1;
  v15[1] = v3;
  v4 = a1[3];
  v15[2] = a1[2];
  v15[3] = v4;
  v5 = objc_allocWithZone(v1);
  v6 = &v5[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v8;
  sub_8502C4(v15, v14);
  v13.receiver = v5;
  v13.super_class = v1;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_85032C(v11);

  sub_8502FC(v15);
  return v9;
}

uint64_t sub_850D6C@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_8502C4(v9, v8);
}

uint64_t sub_850DD8(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return Gradient.View.typedConfiguration.setter(v4);
}

void (*sub_850E0C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_8502C4(v4, (v4 + 16));
  return sub_850B48;
}

uint64_t sub_850EC8@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for Gradient;
  a1[4] = sub_8518C0();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v5 = v4[1];
  v10[0] = *v4;
  v10[1] = v5;
  v7 = v4[3];
  v11 = v4[2];
  v6 = v11;
  v12 = v7;
  v3[1] = v10[0];
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  return sub_8502C4(v10, v9);
}

uint64_t sub_850F6C(uint64_t a1)
{
  sub_E8BA0(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17580);
  swift_dynamicCast();
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  Gradient.View.typedConfiguration.setter(v8);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void (*sub_851000(void *a1))(_OWORD **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[50] = v1;
  v3[35] = &type metadata for Gradient;
  v3[36] = sub_8518C0();
  v5 = swift_allocObject();
  *(v4 + 256) = v5;
  v6 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  *(v4 + 32) = v6[2];
  *(v4 + 48) = v9;
  *v4 = v7;
  *(v4 + 16) = v8;
  v10 = v6[1];
  v5[1] = *v6;
  v5[2] = v10;
  v11 = v6[3];
  v5[3] = v6[2];
  v5[4] = v11;
  sub_8502C4(v4, v4 + 192);
  return sub_8510EC;
}

void sub_8510EC(_OWORD **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_E8BA0((v2 + 16), v2 + 296);
    sub_E8BA0(v2 + 296, (v2 + 21));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17580);
    swift_dynamicCast();
    v3 = v2[13];
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    Gradient.View.typedConfiguration.setter(v2 + 4);
    __swift_destroy_boxed_opaque_existential_0(v2 + 296);
  }

  else
  {
    sub_E8BA0((v2 + 16), v2 + 296);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17580);
    swift_dynamicCast();
    v5 = v2[13];
    v2[8] = v2[12];
    v2[9] = v5;
    v6 = v2[15];
    v2[10] = v2[14];
    v2[11] = v6;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));

  free(v2);
}

id sub_8511F8()
{
  v1 = v0[1];
  v15 = *v0;
  v16 = v1;
  v2 = v0[3];
  v17 = v0[2];
  v18 = v2;
  v3 = type metadata accessor for Gradient.View();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = v18;
  v8 = v15;
  v7 = v16;
  *(v5 + 2) = v17;
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_8502C4(&v15, v14);
  sub_8502C4(&v15, v14);
  v13.receiver = v4;
  v13.super_class = v3;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_85032C(v11);

  sub_8502FC(&v15);
  sub_8517FC(&qword_E1C058);
  return v9;
}

uint64_t sub_851324@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_8502C4(v7, &v6);
}

BOOL sub_851364(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

double static Gradient.vertical(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_B28390;
  v13 = xmmword_B28290;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = 0x3FE0000000000000;
  v15 = xmmword_B283A0;
  v16 = 0x3FF0000000000000;

  v5 = kCAGradientLayerAxial;

  sub_8502C4(&v10, &v9);
  sub_8502FC(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

double static Gradient.horizontal(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_B283A0;
  v13 = xmmword_B283B0;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v15 = xmmword_B283A0;
  v16 = xmmword_B283B0;

  v5 = kCAGradientLayerAxial;

  sub_8502C4(&v10, &v9);
  sub_8502FC(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

Swift::Void __swiftcall Gradient.flip()()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = *(v0 + 48);
  *(v0 + 48) = v1;
}

double Gradient.flipped()@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v4 = v1[2];
  v11 = v1[3];
  v12 = v4;
  sub_8502C4(v1, &v8);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

BOOL _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB92A0();
  v6 = v5;
  if (v4 == sub_AB92A0() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_ABB3C0();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = sub_810C50(v10, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  if (v13)
  {
    if (!v14 || (sub_810C64(v13, v14) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 24);
  v16 = *(a2 + 24);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = sub_810CC0(v15, v16);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  return *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
}

unint64_t sub_85170C()
{
  result = qword_E1C010;
  if (!qword_E1C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C010);
  }

  return result;
}

uint64_t sub_851760(uint64_t a1)
{
  result = sub_8517FC(&qword_E1C058);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_8517FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Gradient.View();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_85183C(uint64_t a1)
{
  *(a1 + 8) = sub_85186C();
  result = sub_8518C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_85186C()
{
  result = qword_E1C090;
  if (!qword_E1C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C090);
  }

  return result;
}

unint64_t sub_8518C0()
{
  result = qword_E1C098;
  if (!qword_E1C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C098);
  }

  return result;
}

uint64_t sub_851924()
{

  return swift_deallocObject();
}

uint64_t static ArtworkImage.GridPreview.ViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_810350(a1, a4) & (a2 == a5);
  if (a3 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_8519DC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_810350(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

uint64_t ArtworkImage.GridPreview.Item.init(id:viewModel:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  sub_36B0C(a3, a5 + *(v8 + 20), &qword_E1BD70);
  return sub_854C58(a4, a5 + *(v8 + 24), type metadata accessor for ArtworkImage.Placeholder);
}

uint64_t static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v80 = a3;
  v81 = a4;
  v75 = a2;
  v73 = a1;
  v79 = a8;
  v67 = *a7;
  v10 = *(a7 + 8);
  v11 = *(a7 + 16);
  v65 = a5;
  v66 = v11;
  v62 = *(a7 + 24);
  v63 = v10;
  v82 = *(a7 + 32);
  v61 = *(a7 + 40);
  v64 = *(a7 + 41);
  v12 = type metadata accessor for ArtworkImage.Placeholder(0);
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_AB4780();
  v68 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AE80);
  v71 = *(v18 - 8);
  v72 = v18;
  __chkstk_darwin(v18);
  v69 = &v60 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C0C8);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v60 - v22;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C0D0);
  __chkstk_darwin(v74);
  v78 = &v60 - v24;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C0D8);
  v25 = __chkstk_darwin(v77);
  v76 = &v60 - v26;
  (*(v15 + 104))(v17, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v14, v25);
  v27 = a6;
  v28 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_854BF0(v27, v28, type metadata accessor for ArtworkImage.Placeholder);
  v29 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_854C58(v28, v31 + v29, type metadata accessor for ArtworkImage.Placeholder);
  v32 = (v31 + v30);
  v33 = *(a7 + 16);
  *v32 = *a7;
  v32[1] = v33;
  *(v32 + 26) = *(a7 + 26);
  v34 = v69;
  sub_7F0CE0(v73, sub_832CBC, v31, a7, v17, v69);

  (*(v15 + 8))(v17, v68);
  v35 = v75;
  if (v75)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = 1.0;
  }

  (*(v71 + 32))(v23, v34, v72);
  *&v23[*(v21 + 44)] = v36;
  v37 = sub_AB7A30();
  v39 = v35;
  if (v35)
  {
    LOBYTE(v90[0]) = v63 & 1;
    LOBYTE(v84) = v62 & 1;
    v83[0] = v61 & 1;
    v40 = v63 & 1;
    v41 = v62 & 1;
    v42 = v61 & 1 | (v64 << 8);
    v43 = v66;
    v35 = v65 & 1;
    v44 = v80;
    v45 = v81;
    v46 = v67;
    v47 = v82;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v47 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
  }

  v82 = v47;
  LODWORD(v71) = v42;
  *&v84 = v39;
  *(&v84 + 1) = v44;
  *&v85 = v45;
  *(&v85 + 1) = v35;
  *&v86 = v46;
  *(&v86 + 1) = v40;
  *&v87 = v43;
  *(&v87 + 1) = v41;
  *&v88 = v47;
  WORD4(v88) = v42;
  *&v89 = v37;
  *(&v89 + 1) = v38;
  v72 = v38;
  v73 = v37;
  v48 = v23;
  v49 = v78;
  v50 = v46;
  sub_36B0C(v48, v78, &qword_E1C0C8);
  v51 = (v49 + *(v74 + 36));
  v52 = v87;
  v51[2] = v86;
  v51[3] = v52;
  v53 = v89;
  v51[4] = v88;
  v51[5] = v53;
  v54 = v85;
  *v51 = v84;
  v51[1] = v54;
  v90[0] = v39;
  v90[1] = v44;
  v90[2] = v45;
  v90[3] = v35;
  v90[4] = v50;
  v90[5] = v40;
  v90[6] = v43;
  v90[7] = v41;
  v90[8] = v82;
  v91 = v71;
  v92 = v73;
  v93 = v72;

  sub_15F84(&v84, v83, &qword_E1C0E0);
  sub_12E1C(v90, &qword_E1C0E0);
  v55 = sub_AB7A80();
  v56 = v76;
  sub_36B0C(v49, v76, &qword_E1C0D0);
  v57 = (v56 + *(v77 + 36));
  *v57 = v55;
  v57[1] = v39;
  v58 = v81;
  v57[2] = v80;
  v57[3] = v58;
  sub_36B0C(v56, v79, &qword_E1C0D8);
}

void sub_852100(uint64_t a1@<X8>)
{
  v2 = 0.0;
  if ((*(v1 + 40) & 1) != 0 || (*(v1 + 56) & 1) != 0 || (v3 = *(v1 + 32), v3 <= 0.0) || (v4 = *(v1 + 48), v4 <= 0.0))
  {
LABEL_16:
    *a1 = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = v2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 513;
    return;
  }

  v5 = a1;
  v6 = *(v1 + 24);
  if (*(v1 + 24))
  {
    v7 = 18;
  }

  else
  {
    v7 = 7;
  }

  v8 = Int.seconds.getter(v7);
  v9 = *(v1 + 16);
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = v8;
    v11 = *(v1 + 8);
    v12 = Int.seconds.getter(v9 - 1);
    if (v6)
    {
      v13 = 14;
    }

    else
    {
      v13 = 4;
    }

    v14 = Int.seconds.getter(v13);
    v15 = Int.seconds.getter(v9);
    if (!__OFSUB__(v11, 1))
    {
      v16 = v4 - (v10 + v10);
      v17 = (v3 - (v10 + v10) - v12 * v14) / v15;
      v18 = Int.seconds.getter(v11 - 1);
      v19 = v16 - v18 * Int.seconds.getter(v13);
      v2 = v19 / Int.seconds.getter(v11);
      if (v2 >= v17)
      {
        v2 = v17;
      }

      a1 = v5;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_852240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_AB66E0();
  __chkstk_darwin(v5);
  v6 = sub_AB79A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_AB79B0();
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C1D8);
  v13 = *(v31 - 8);
  __chkstk_darwin(v31);
  v15 = &v31 - v14;
  v16 = *a1;
  if (*(a1 + 8))
  {
    v16 = 0.0;
  }

  *v9 = v16;
  (*(v7 + 104))(v9, enum case for GridItem.Size.fixed(_:), v6);
  v36 = *(a2 + 24);
  if (v36)
  {
    v17 = 14;
  }

  else
  {
    v17 = 4;
  }

  Int.seconds.getter(v17);
  sub_AB79C0();
  sub_852604(v12, *(a2 + 16));
  Int.seconds.getter(v17);
  v33 = a2;
  v34 = a1;
  sub_AB6440();
  v35 = 0;
  sub_854A58(&unk_E19E10, &type metadata accessor for PinnedScrollableViews);
  sub_ABB6C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C1E0);
  sub_854AA0();
  sub_AB7AD0();
  sub_AB6AA0();
  if (v36)
  {
    v18 = 18;
  }

  else
  {
    v18 = 7;
  }

  v19 = Int.seconds.getter(v18);
  v20 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_AB6AA0();
  v28 = v32;
  (*(v13 + 32))(v32, v15, v31);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C1F8);
  v30 = v28 + *(result + 36);
  *v30 = v27;
  *(v30 + 8) = v20;
  *(v30 + 16) = v22;
  *(v30 + 24) = v24;
  *(v30 + 32) = v26;
  *(v30 + 40) = 0;
  return result;
}

char *sub_852604(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_AB79B0();
      v5 = sub_AB97D0();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v12 = sub_AB79B0();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

void *sub_852760(void *result, _OWORD *a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = v3 * v2;
  if ((v3 * v2) >> 64 == (v3 * v2) >> 63)
  {
    v6 = result;
    v7 = *result;
    v8 = *(*result + 16);
    if (v4 >= v8)
    {
      sub_854B74(result, v14);
      goto LABEL_6;
    }

    v9 = v8 - v4;
    if (!__OFSUB__(v8, v4))
    {
      sub_854B74(result, v14);
      sub_852A98(v9, v7);
LABEL_6:
      v10 = swift_allocObject();
      v11 = a2[1];
      v10[1] = *a2;
      v10[2] = v11;
      *(v10 + 42) = *(a2 + 26);
      v12 = v6[3];
      v10[6] = v6[2];
      v10[7] = v12;
      *(v10 + 122) = *(v6 + 58);
      v13 = v6[1];
      v10[4] = *v6;
      v10[5] = v13;
      sub_854B74(v6, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C200);
      _s11GridPreviewO8GridViewV8ItemViewVMa(0);
      sub_36A00(&qword_E1C208, &qword_E1C200);
      sub_854A58(&qword_E1C1F0, _s11GridPreviewO8GridViewV8ItemViewVMa);
      sub_854A58(&qword_E1C210, type metadata accessor for ArtworkImage.GridPreview.Item);
      return sub_AB78C0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_852954@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_854BF0(a1, v10, type metadata accessor for ArtworkImage.GridPreview.Item);
  if (*(a3 + 24))
  {
    v11 = 0x4014000000000000;
  }

  else
  {
    v11 = 0x4000000000000000;
  }

  sub_854C58(v10, a4, type metadata accessor for ArtworkImage.GridPreview.Item);
  v12 = _s11GridPreviewO8GridViewV8ItemViewVMa(0);
  v13 = (a4 + v12[5]);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  *(v13 + 26) = *(a2 + 26);
  v15 = a4 + v12[6];
  *v15 = v11;
  *(v15 + 8) = -1;
  *(v15 + 16) = 0;
  v16 = v12[7];
  *(a4 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CC0);
  return swift_storeEnumTagMultiPayload();
}

void sub_852A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v27 - v9;
  if (a1 < 0)
  {
    goto LABEL_28;
  }

  if (a1)
  {
    v11 = *(a2 + 16);
    if (!v11)
    {
LABEL_24:

      return;
    }

    v12 = 0;
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v27[1] = a2;
    v14 = a2 + v13;
    v15 = *(v8 + 72);
    v16 = v11 - 1;
    v17 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage;
    v29 = v6;
    v30 = v13;
    v31 = v27 - v9;
    v28 = a1;
    while (1)
    {
      sub_854BF0(v14, v10, type metadata accessor for ArtworkImage.GridPreview.Item);
      v22 = v18[2];
      if (v22 < a1)
      {
        break;
      }

      if (v12 >= v22)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      sub_854BF0(v18 + v13 + v15 * v12, v6, type metadata accessor for ArtworkImage.GridPreview.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_8A57E8(0, v17[2] + 1, 1);
        v6 = v29;
        v17 = v33;
      }

      v26 = v17[2];
      v25 = v17[3];
      if (v26 >= v25 >> 1)
      {
        sub_8A57E8(v25 > 1, v26 + 1, 1);
        v6 = v29;
        v17 = v33;
      }

      v17[2] = v26 + 1;
      v13 = v30;
      sub_854C58(v6, v17 + v30 + v26 * v15, type metadata accessor for ArtworkImage.GridPreview.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_853FBC(v18);
      }

      v10 = v31;
      if (v12 >= v18[2])
      {
        goto LABEL_27;
      }

      sub_854CC0(v31, v18 + v13 + v15 * v12++);
      a1 = v28;
      if (v12 < v28)
      {
        goto LABEL_8;
      }

      if (!v16)
      {
        goto LABEL_24;
      }

      v12 = 0;
LABEL_9:
      --v16;
      v14 += v15;
    }

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v18;
    if ((v23 & 1) == 0)
    {
      sub_8A57E8(0, v22 + 1, 1);
      v6 = v29;
      v18 = v32;
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      sub_8A57E8(v19 > 1, v20 + 1, 1);
      v6 = v29;
      v18 = v32;
    }

    v18[2] = v20 + 1;
    v13 = v30;
    v21 = v18 + v30 + v20 * v15;
    v10 = v31;
    sub_854C58(v31, v21, type metadata accessor for ArtworkImage.GridPreview.Item);
LABEL_8:
    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }
}

uint64_t sub_852DD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_AB63D0();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250);
  v56 = *(v6 - 8);
  v55 = *(v56 + 64);
  __chkstk_darwin(v6 - 8);
  v51 = &v49 - v7;
  v8 = type metadata accessor for ArtworkImage.Placeholder(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB4780();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v17 = *(v16 + 20);
  v18 = *(v16 + 24);
  v50 = _s11GridPreviewO8GridViewV8ItemViewVMa(0);
  v19 = (v2 + *(v50 + 20));
  v20 = *(v19 + 26);
  v21 = v19[1];
  v57 = *v19;
  v58[0] = v21;
  *(v58 + 10) = v20;
  (*(v13 + 104))(v15, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v12);
  sub_854BF0(v2 + v18, v11, type metadata accessor for ArtworkImage.Placeholder);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_854C58(v11, v24 + v22, type metadata accessor for ArtworkImage.Placeholder);
  v25 = (v24 + v23);
  v26 = v58[0];
  *v25 = v57;
  v25[1] = v26;
  *(v25 + 26) = *(v58 + 10);
  v27 = v2 + v17;
  v28 = v52;
  sub_7F0CE0(v27, sub_837350, v24, &v57, v15, v52);

  (*(v13 + 8))(v15, v12);
  v29 = v50;
  v30 = v2;
  sub_7EFCA0(v5);
  v31 = v51;
  sub_7F4A90(v51);
  (*(v53 + 8))(v5, v54);
  v32 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE48) + 36));
  v34 = v28;
  v35 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v33 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16CB8);
  swift_storeEnumTagMultiPayload();
  v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v37 = swift_allocObject();
  sub_36B0C(v31, v37 + v36, &qword_E19250);
  *v33 = sub_7FC3C8;
  v33[1] = v37;
  v38 = (v30 + *(v29 + 24));
  v39 = *v38;
  v40 = v38[1];
  v41 = *(v38 + 16);
  v42 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C2E8) + 36);
  *v42 = v39;
  *(v42 + 8) = v40;
  *(v42 + 16) = v41;
  if (qword_E16A10 != -1)
  {
    swift_once();
  }

  v43 = static Border.artwork;
  v44 = qword_E73A58;
  v45 = byte_E73A60;
  v46 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C2F0) + 36);
  *v46 = v43;
  *(v46 + 8) = v44;
  *(v46 + 16) = v45;
  *(v46 + 24) = v39;
  *(v46 + 32) = v40;
  *(v46 + 40) = v41;

  sub_AB59B0();
  sub_AB7A50();
  sub_AB59D0();

  sub_AB7BB0();
  sub_AB59A0();
  sub_AB7A50();
  sub_AB59D0();

  sub_AB7BB0();
  sub_AB59A0();
  sub_AB7A50();
  sub_AB59D0();

  sub_AB5990();

  v47 = sub_AB59C0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C2F8);
  *(v34 + *(result + 36)) = v47;
  return result;
}

double sub_853490@<D0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v17[2] = v1[2];
  v18[0] = v3;
  *(v18 + 10) = *(v1 + 58);
  v4 = v1[1];
  v17[0] = *v1;
  v17[1] = v4;
  sub_852100(v15);
  v5 = [objc_opt_self() tertiarySystemFillColor];
  v6 = sub_AB7510();
  v7 = sub_AB7A10();
  v9 = v8;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C1C0) + 36);
  sub_852240(v15, v17, v10);
  v11 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C1C8) + 36));
  *v11 = v7;
  v11[1] = v9;
  *a1 = v6;
  sub_AB7A30();
  sub_AB5970();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C1D0) + 36));
  v13 = v15[4];
  *v12 = v15[3];
  v12[1] = v13;
  result = *&v16;
  v12[2] = v16;
  return result;
}

size_t sub_8535D0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17068);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060) - 8);
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

char *sub_8537C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_8538D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_8539D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_853AD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

size_t sub_853BE4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C218);
  v10 = *(type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8);
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

char *sub_853DBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_853EB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11GridPreviewO4ItemV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AD70);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_ABB3C0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = v7;
  v22 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_15F84(a1 + v14, v13, &qword_E1BD70);
  sub_15F84(a2 + v14, &v13[v15], &qword_E1BD70);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_12E1C(v13, &qword_E1BD70);
LABEL_12:
      v17 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(a1 + *(v22 + 24), a2 + *(v22 + 24));
      return v17 & 1;
    }

    goto LABEL_9;
  }

  sub_15F84(v13, v10, &qword_E1BD70);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_854D28(v10);
LABEL_9:
    sub_12E1C(v13, &unk_E1AD70);
    goto LABEL_10;
  }

  v18 = v21;
  sub_854C58(&v13[v15], v21, type metadata accessor for ArtworkImage.ViewModel);
  v19 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(v10, v18);
  sub_854D28(v18);
  sub_854D28(v10);
  sub_12E1C(v13, &qword_E1BD70);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_854300()
{
  result = qword_E1C0E8;
  if (!qword_E1C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C0E8);
  }

  return result;
}

unint64_t sub_854358()
{
  result = qword_E1C0F0;
  if (!qword_E1C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C0F0);
  }

  return result;
}

uint64_t sub_8543E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70);
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
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_854524(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70);
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
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_854654()
{
  sub_8550E0(319, &qword_E194F0, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_85472C()
{
  result = qword_E1C190;
  if (!qword_E1C190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C0D8);
    sub_8547E4();
    sub_36A00(&qword_E1C1B0, &qword_E1C1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C190);
  }

  return result;
}

unint64_t sub_8547E4()
{
  result = qword_E1C198;
  if (!qword_E1C198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C0D0);
    sub_85489C();
    sub_36A00(&qword_E1C1A8, &qword_E1C0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C198);
  }

  return result;
}

unint64_t sub_85489C()
{
  result = qword_E1C1A0;
  if (!qword_E1C1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C0C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E197E8);
    sub_7FD7E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C1A0);
  }

  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_854988(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8549D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_854A58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_854AA0()
{
  result = qword_E1C1E8;
  if (!qword_E1C1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C1E0);
    sub_854A58(&qword_E1C1F0, _s11GridPreviewO8GridViewV8ItemViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C1E8);
  }

  return result;
}

uint64_t sub_854BAC()
{

  return swift_deallocObject();
}

uint64_t sub_854BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_854C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_854CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_854D28(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_854D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20) + 41);
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20) + 41);
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195F0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_854EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20) + 41) = a2 + 2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_855014()
{
  type metadata accessor for ArtworkImage.GridPreview.Item(319);
  if (v0 <= 0x3F)
  {
    sub_8550E0(319, &unk_E19668, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_8550E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_855188(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_85520C()
{
  result = qword_E1C2D8;
  if (!qword_E1C2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C1C0);
    sub_36A00(&qword_E1C2E0, &qword_E1C1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C2D8);
  }

  return result;
}

uint64_t sub_8552E8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0(v0 + v2);
    }

    if (*(v3 + 64))
    {
      __swift_destroy_boxed_opaque_existential_0(v3 + 40);
    }

    v5 = *(v4 + 24);
    v6 = sub_AB7AC0();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

unint64_t sub_855490()
{
  result = qword_E1C300;
  if (!qword_E1C300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C2F8);
    sub_855548();
    sub_36A00(&qword_E1C318, &qword_E1C320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C300);
  }

  return result;
}

unint64_t sub_855548()
{
  result = qword_E1C308;
  if (!qword_E1C308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C2F0);
    sub_8555D4();
    sub_7D7A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C308);
  }

  return result;
}

unint64_t sub_8555D4()
{
  result = qword_E1C310;
  if (!qword_E1C310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C2E8);
    sub_834404();
    sub_7D7A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C310);
  }

  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

double HitMyRectButton.hitRect()()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HitMyRectButton();
  objc_msgSendSuper2(&v17, "hitRect");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  swift_beginAccess();
  v10 = *(v9 + 32);
  if (v10 != 255)
  {
    v12 = *v9;
    v11 = v9[1];
    if ((v10 & 1) == 0)
    {
      v18.origin.x = v2;
      v18.origin.y = v4;
      v18.size.width = v6;
      v18.size.height = v8;
      Width = CGRectGetWidth(v18);
      if (Width > v12)
      {
        v12 = Width;
      }

      v19.origin.x = v2;
      v19.origin.y = v4;
      v19.size.width = v6;
      v19.size.height = v8;
      v14 = v12 - CGRectGetWidth(v19);
      v20.origin.x = v2;
      v20.origin.y = v4;
      v20.size.width = v6;
      v20.size.height = v8;
      Height = CGRectGetHeight(v20);
      if (Height > v11)
      {
        v11 = Height;
      }

      v21.origin.x = v2;
      v21.origin.y = v4;
      v21.size.width = v6;
      v21.size.height = v8;
      v12 = (v11 - CGRectGetHeight(v21)) * -0.5;
      v11 = v14 * -0.5;
    }

    return UIEdgeInsetsInsetRect(v2, v4, v6, v8, v12, v11);
  }

  return v2;
}

void *HitMyRectButton.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  if ((UIViewIgnoresTouchEvents() & 1) != 0 || ![v3 pointInside:a1 withEvent:{a2, a3}])
  {
    return 0;
  }

  v7 = v3;
  return v3;
}

BOOL HitMyRectButton.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 hitRect];
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v7, v6);
}

UIAccessibilityTraits HitMyRectButton.accessibilityTraits.getter()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HitMyRectButton();
  v1 = objc_msgSendSuper2(&v4, "accessibilityTraits");
  v2 = UIAccessibilityTraitButton;
  if ((UIAccessibilityTraitButton & ~v1) == 0)
  {
    v2 = 0;
  }

  return v2 | v1;
}

id HitMyRectButton.accessibilityTraits.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v4, "setAccessibilityTraits:", a1);
}

id HitMyRectButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = -1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id HitMyRectButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = -1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HitMyRectButton();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id HitMyRectButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t HitMyRectStackView.useBoundsAsPointInside.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HitMyRectStackView.useBoundsAsPointInside.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL HitMyRectStackView.point(inside:with:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  if (*(v3 + v8) == 1)
  {
    [v3 bounds];
    v18.x = a2;
    v18.y = a3;
    return CGRectContainsPoint(v19, v18);
  }

  else
  {
    v17.receiver = v3;
    v17.super_class = ObjectType;
    if (objc_msgSendSuper2(&v17, "pointInside:withEvent:", a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v10 = [v3 arrangedSubviews];
      sub_856380();
      v11 = sub_AB9760();

      if (v11 >> 62)
      {
LABEL_19:
        v12 = sub_ABB060();
      }

      else
      {
        v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
      }

      for (i = 0; v12 != i; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = sub_ABAE20();
        }

        else
        {
          if (i >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_18;
          }

          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        [v14 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
        v16 = [v15 pointInside:a1 withEvent:?];

        if (v16)
        {

          return 1;
        }
      }

      return 0;
    }
  }
}

id HitMyRectStackView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id HitMyRectStackView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  return v4;
}

unint64_t sub_856380()
{
  result = qword_E1E050;
  if (!qword_E1E050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E1E050);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for HitMyRectButton.HitRectAdjustment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t *UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor()
{
  if (qword_E16B40 != -1)
  {
    swift_once();
  }

  return &static UIImagePickerController.profileImagePickerProperties;
}

int *ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CD0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ImagePicker(0);
  v21 = (a9 + result[7]);
  v22 = result[9];
  v23 = (a9 + result[5]);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v24 = a9 + result[6];
  *v24 = a4;
  *(v24 + 1) = a5;
  v24[16] = a6;
  v25 = a9 + result[8];
  *v25 = a7;
  *(v25 + 1) = a8;
  v25[16] = a10;
  *v21 = a11;
  v21[1] = a12;
  *(a9 + v22) = a13;
  return result;
}

uint64_t sub_8566A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController____lazy_storage___presentationSource;
  swift_beginAccess();
  sub_85C870(v1 + v3, v5);
  if (v6 != 1)
  {
    return sub_17704(v5, a1);
  }

  sub_12E1C(v5, &qword_E1C6F8);
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9 = xmmword_AF7710;
  PresentationSource.init(viewController:position:)(v1, v7, a1);
  sub_15F28(a1, v5);
  swift_beginAccess();
  sub_85C8E0(v5, v1 + v3);
  return swift_endAccess();
}

id ImagePicker.makeUIViewController(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for ImagePicker.DummyImagePickerViewController());

  return [v0 init];
}

void ImagePicker.updateUIViewController(_:context:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = PresentationSource.PresentingViewControllerOptions.allowsPresentation.unsafeMutableAddressor();
  v7 = static PresentationSource.topmostPresentedViewController(from:options:)(a1, *v6);
  v8 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild;
  v9 = [*&a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild] presentedViewController];
  if (!v9)
  {
    v10 = *&a1[v8];
    if (!v10)
    {
      v13 = 0;
      v12 = 0;
      goto LABEL_5;
    }

    v9 = v10;
  }

  sub_13C80(0, &qword_E1C3A0);
  v11 = v7;
  v12 = v9;
  v13 = sub_ABA790();

LABEL_5:
  v14 = v3 + *(type metadata accessor for ImagePicker(0) + 32);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v14) = *(v14 + 16);
  v22[0] = v15;
  v22[1] = v16;
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390);
  sub_AB77F0();
  if (v24 != 1 || (v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress, (a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress] & 1) != 0) || (v13 & 1) != 0)
  {
  }

  else
  {
    v18 = sub_856A80(v3, a2, a1);
    a1[v17] = 1;
    sub_8566A4(v22);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v18;
    v20 = a1;
    v21 = v18;
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v21, 1, 1, sub_85A7DC, v19);

    sub_1611C(v22);
  }
}

id sub_856A80(uint64_t a1, uint64_t a2, void *a3)
{
  v59 = a2;
  v5 = sub_AB3F10();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB8EC0();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C738);
  __chkstk_darwin(v9 - 8);
  v11 = &v52 - v10;
  v12 = sub_AB8EF0();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v58 = sub_AB4A70();
  v18 = *(v58 - 8);
  __chkstk_darwin(v58);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ImagePicker(0);
  v22 = *(v21 + 24);
  v57 = a1;
  v23 = a1 + v22;
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v23) = *(v23 + 16);
  v61 = v24;
  v62 = v25;
  v63 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3B8);
  sub_AB77F0();
  if (v60 <= 1u)
  {
    if (!v60)
    {
      v26 = [objc_allocWithZone(UIImagePickerController) init];
      [v26 setSourceType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C740);
      sub_AB6A30();
      v27 = v61;
      [v26 setDelegate:v61];

      [v26 setAllowsEditing:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3D0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_AF4EC0;
      sub_AB4A60();
      v29 = sub_AB4A40();
      v31 = v30;
      (*(v18 + 8))(v20, v58);
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      isa = sub_AB9740().super.isa;

      [v26 setMediaTypes:isa];

      v33._rawValue = *(v57 + *(v21 + 36));
      if (v33._rawValue)
      {
        UIImagePickerController.setProperties(_:)(v33);
      }

      return v26;
    }

    result = [a3 view];
    if (result)
    {
      v40 = result;
      v41 = [objc_opt_self() clearColor];
      [v40 setBackgroundColor:v41];

      v42 = [objc_opt_self() sharedPhotoLibrary];
      sub_AB8EB0();
      sub_AB8E60();
      v43 = sub_AB8E70();
      (*(*(v43 - 8) + 56))(v11, 0, 1, v43);
      sub_AB8EE0();
      (*(v53 + 104))(v8, enum case for PHPickerConfiguration.AssetRepresentationMode.current(_:), v54);
      sub_AB8ED0();
      sub_13C80(0, &qword_E1C750);
      v45 = v55;
      v44 = v56;
      (*(v55 + 16))(v14, v17, v56);
      v46 = sub_ABA380();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C740);
      sub_AB6A30();
      sub_85BACC(&qword_E1C758, type metadata accessor for ImagePicker.Coordinator);
      sub_ABA390();
      v26 = v46;
      v47 = [v26 presentationController];
      if (v47)
      {
        v48 = v47;
        sub_AB6A30();
        v49 = v61;
        [v48 setDelegate:v61];
      }

      (*(v45 + 8))(v17, v44);
      return v26;
    }

    goto LABEL_16;
  }

  if (v60 == 2)
  {
    result = [a3 view];
    if (!result)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v35 = result;
    v36 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor:v36];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C748);
    *(swift_allocObject() + 16) = xmmword_AF4EC0;
    sub_AB4A60();
    v37 = objc_allocWithZone(UIDocumentPickerViewController);
    v38 = sub_AB9740().super.isa;

    v26 = [v37 initForOpeningContentTypes:v38 asCopy:1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C740);
    sub_AB6A30();
    v39 = v61;
    [v26 setDelegate:v61];

    [v26 _setAutomaticallyDismissesAfterCompletion:0];
    return v26;
  }

  result = [a3 view];
  if (result)
  {
    v50 = result;
    v51 = [objc_opt_self() clearColor];
    [v50 setBackgroundColor:v51];

    sub_AB3EF0();
    v26 = sub_AB3EE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C740);
    sub_AB6A30();
    sub_AB3ED0();
    sub_AB3F00();
    sub_AB3EC0();
    return v26;
  }

LABEL_17:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UIImagePickerController.setProperties(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = [v1 _properties];
  if (v4)
  {
    v5 = v4;
    v6 = sub_AB8FF0();
  }

  else
  {
    v6 = 0;
  }

  v7 = 1 << *(a1._rawValue + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1._rawValue + 8);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    v13 = v6;
    if (!v9)
    {
      break;
    }

    v14 = v9;
LABEL_14:
    v6 = 0;
    v9 = (v14 - 1) & v14;
    if (v13)
    {
      v16 = __clz(__rbit64(v14)) | (v11 << 6);
      v17 = *(*(a1._rawValue + 7) + v16);
      v18 = *(*(a1._rawValue + 6) + 16 * v16 + 8);
      *&v35 = *(*(a1._rawValue + 6) + 16 * v16);
      *(&v35 + 1) = v18;

      sub_ABAD10();
      v36 = &type metadata for Bool;
      LOBYTE(v35) = v17;
      sub_9ACFC(&v35, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v13;
      v20 = sub_2EC004(v37);
      v22 = v13[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        sub_ABB4C0();
        __break(1u);
        return;
      }

      v26 = v21;
      if (v13[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v31 = v20;
        sub_85B6FC();
        v20 = v31;
        v6 = v13;
        if (v26)
        {
          goto LABEL_7;
        }

LABEL_21:
        v6[(v20 >> 6) + 8] |= 1 << v20;
        v28 = v20;
        sub_9ACA0(v37, v6[6] + 40 * v20);
        sub_9ACFC(v34, (v6[7] + 32 * v28));
        sub_8085C(v37);
        v29 = v6[2];
        v24 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v24)
        {
          goto LABEL_31;
        }

        v6[2] = v30;
      }

      else
      {
        sub_85AEC4(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_2EC004(v37);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_32;
        }

LABEL_20:
        v6 = v13;
        if ((v26 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_7:
        v12 = (v6[7] + 32 * v20);
        __swift_destroy_boxed_opaque_existential_0(v12);
        sub_9ACFC(v34, v12);
        sub_8085C(v37);
      }
    }
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v15 >= v10)
    {
      break;
    }

    v14 = *(a1._rawValue + v15 + 8);
    ++v11;
    if (v14)
    {
      v11 = v15;
      goto LABEL_14;
    }
  }

  if (v6)
  {
    v32.super.isa = sub_AB8FD0().super.isa;
  }

  else
  {
    v32.super.isa = 0;
  }

  [v2 _setProperties:{v32.super.isa, v33}];
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerController(_:didFinishPickingMediaWithInfo:)(UIImagePickerController _, Swift::OpaquePointer didFinishPickingMediaWithInfo)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    goto LABEL_8;
  }

  v12 = sub_2EC28C(UIImagePickerControllerEditedImage);
  if (v13)
  {
    sub_808B0(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v12, &v56);
    sub_9ACFC(&v56, &v58);
    goto LABEL_9;
  }

  v14 = *(didFinishPickingMediaWithInfo._rawValue + 2);
  v56 = 0u;
  v57 = 0u;
  if (v14 && (v15 = sub_2EC28C(UIImagePickerControllerOriginalImage), (v16 & 1) != 0))
  {
    sub_808B0(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v15, &v58);
    if (*(&v57 + 1))
    {
      sub_12E1C(&v56, &qword_E1E0B0);
    }
  }

  else
  {
LABEL_8:
    v58 = 0u;
    v59 = 0u;
  }

LABEL_9:
  if (!*(&v59 + 1))
  {
    sub_12E1C(&v58, &qword_E1E0B0);
LABEL_16:
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    sub_ABAD90(61);
    v61._countAndFlagsBits = 0xD00000000000002ALL;
    v61._object = 0x8000000000B764A0;
    sub_AB94A0(v61);
    _s3__C7InfoKeyVMa_0(0);
    sub_85BACC(&qword_E16FF0, _s3__C7InfoKeyVMa_0);
    v62._countAndFlagsBits = sub_AB9000();
    sub_AB94A0(v62);

    v63._object = 0x8000000000B764D0;
    v63._countAndFlagsBits = 0xD000000000000011;
    sub_AB94A0(v63);
    v29 = *(&v58 + 1);
    v30 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
    if (v30)
    {
      v31 = v58;
      sub_85B8A0();
      v32 = swift_allocError();
      *v33 = v31;
      v33[1] = v29;

      v30(v32, 1);
      sub_17654(v30);
    }

    else
    {
    }

    return;
  }

  sub_13C80(0, &qword_E1C3B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = v56;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    v34 = v56;
LABEL_20:
    v27 = 0uLL;
    v26 = 1;
    v28 = 0uLL;
    goto LABEL_21;
  }

  v18 = v56;
  v19 = sub_2EC28C(UIImagePickerControllerCropRect);
  if ((v20 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_808B0(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v19, &v58);
  sub_13C80(0, &qword_E1C3C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v21 = v56;
  [v56 CGRectValue];
  v52 = v22;
  v53 = v23;
  v51 = v24;
  v54 = v25;

  *&v28 = v51;
  *&v27 = v52;
  v26 = 0;
  *(&v27 + 1) = v53;
  *(&v28 + 1) = v54;
LABEL_21:
  v58 = v27;
  v59 = v28;
  v60 = v26;
  v35 = UIImage.centerCropIfNeeded(imageRect:)(&v58);

  v36 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v36)
  {

    v36(v35, 0);
    sub_17654(v36);
  }

  v37 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  sub_84CB1C(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v11);
  v38 = &v11[*(v6 + 24)];
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v38) = v38[16];
  *&v56 = v39;
  *(&v56 + 1) = v40;
  LOBYTE(v57) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3B8);
  sub_AB77F0();
  v41 = v55;
  sub_85B8F4(v11);
  if ((v41 - 1) > 2)
  {
    sub_84CB1C(v3 + v37, v8);
    v48 = &v8[*(v6 + 32)];
    v49 = *v48;
    v50 = *(v48 + 1);
    LOBYTE(v48) = v48[16];
    *&v56 = v49;
    *(&v56 + 1) = v50;
    LOBYTE(v57) = v48;
    v55 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390);
    sub_AB7800();
    [(objc_class *)_.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];

    goto LABEL_28;
  }

  v42 = [(objc_class *)_.super.super.super.super.isa presentingViewController];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 presentingViewController];

    if (v44)
    {
      sub_84CB1C(v3 + v37, v8);
      v45 = &v8[*(v6 + 32)];
      v46 = *v45;
      v47 = *(v45 + 1);
      LOBYTE(v45) = v45[16];
      *&v56 = v46;
      *(&v56 + 1) = v47;
      LOBYTE(v57) = v45;
      v55 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390);
      sub_AB7800();
      [v44 dismissViewControllerAnimated:1 completion:0];

LABEL_28:
      sub_85B8F4(v8);
      return;
    }
  }
}

id UIImage.centerCropIfNeeded(imageRect:)(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [v1 size];
    v3 = v2;
    v5 = v4;
  }

  else
  {
    v3 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  if ((sub_AB38D0() & 1) == 0 || vabdd_f64(1.0, v3 / v5) <= 0.05 || (result = UIImage.byCroppingToUniformCenter()()) == 0)
  {

    return v7;
  }

  return result;
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerControllerDidCancel(_:)(UIImagePickerController a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImagePicker(0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [(objc_class *)a1.super.super.super.super.isa presentingViewController];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      v12 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier + 8);
      if (v12)
      {
        v13 = *v11;
        v14 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3D0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_AF4EC0;
        *(v15 + 32) = v13;
        *(v15 + 40) = v12;

        isa = sub_AB9740().super.isa;

        [v14 deselectAssetsWithIdentifiers:isa];

        *v11 = 0;
        v11[1] = 0;

        [v14 setModalInPresentation:0];
      }
    }
  }

  v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  sub_84CB1C(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
  v18 = &v7[*(v4 + 24)];
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v18) = v18[16];
  v26 = v19;
  v27 = v20;
  v28 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3B8);
  sub_AB77F0();
  v21 = HIBYTE(v25);
  sub_85B8F4(v7);
  if (v21)
  {
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    sub_84CB1C(v2 + v17, v7);
    v22 = &v7[*(v4 + 32)];
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v22) = v22[16];
    v26 = v23;
    v27 = v24;
    v28 = v22;
    HIBYTE(v25) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390);
    sub_AB7800();
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    sub_85B8F4(v7);
  }
}

Swift::Void __swiftcall ImagePicker.Coordinator.picker(_:didFinishPicking:)(PHPickerViewController _, Swift::OpaquePointer didFinishPicking)
{
  v5 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB8EA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_AB4A70();
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didFinishPicking._rawValue + 2))
  {
    v16 = *(v9 + 80);
    v17 = v2;
    isa = _.super.super.super.isa;
    v30 = v13;
    v18 = (v16 + 32) & ~v16;
    v31 = v12;
    v19 = sub_AB8E80();
    sub_AB4A60();
    (*(v9 + 16))(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), didFinishPicking._rawValue + v18, v8);
    v20 = swift_allocObject();
    v21 = isa;
    *(v20 + 16) = v17;
    *(v20 + 24) = v21;
    (*(v9 + 32))(v20 + v18, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v22 = v17;
    v23 = v21;
    v24 = sub_AB9F70();

    (*(v30 + 8))(v15, v31);
  }

  else
  {
    sub_84CB1C(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
    v25 = &v7[*(v5 + 32)];
    v26 = *v25;
    v27 = *(v25 + 1);
    LOBYTE(v25) = v25[16];
    v33 = v26;
    v34 = v27;
    v35 = v25;
    v32 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390);
    sub_AB7800();
    [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    sub_85B8F4(v7);
  }
}

uint64_t sub_8582A4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v30 = a5;
  v11 = sub_AB8EA0();
  v28 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_AB9990();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v12 + 16))(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11);
  sub_AB9940();
  v18 = a1;
  v19 = a2;
  sub_9007C(a1, a2);
  v20 = a3;
  swift_errorRetain();
  v21 = a4;
  v22 = v30;
  v23 = sub_AB9930();
  v24 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v23;
  *(v25 + 3) = &protocol witness table for MainActor;
  *(v25 + 4) = v18;
  *(v25 + 5) = v19;
  *(v25 + 6) = v20;
  *(v25 + 7) = v21;
  *(v25 + 8) = v22;
  (*(v12 + 32))(&v25[v24], v29, v28);
  sub_7C7F60(0, 0, v16, &unk_B318C8, v25);
}

uint64_t sub_8584F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  sub_AB9940();
  v8[9] = sub_AB9930();
  v10 = sub_AB98B0();

  return _swift_task_switch(sub_8585A0, v10, v9);
}

uint64_t sub_8585A0()
{
  v1 = *(v0 + 32);

  if (v1 >> 60 != 15)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = objc_allocWithZone(UIImage);
    sub_90090(v3, v2);
    sub_90090(v3, v2);
    isa = sub_AB3250().super.isa;
    v6 = [v4 initWithData:isa];

    sub_466A4(v3, v2);
    if (v6)
    {
      v7 = *(v0 + 48);
      v8 = sub_AB8E90();
      v9 = (v7 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      *v9 = v8;
      v9[1] = v10;

      v11 = UIImagePNGRepresentation(v6);
      if (v11)
      {
        v12 = v11;
        v13 = sub_AB3260();
        v15 = v14;

        v16 = UIImage.centeredSquareCropRect.getter();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        type metadata accessor for ImageEditingViewController();
        v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v24 = sub_AB3250().super.isa;
        v25 = [v23 _initWithSourceImageData:v24 cropRect:{v16, v18, v20, v22}];

        if (v25)
        {
          v26 = *(v0 + 48);
          [v25 setDelegate:v26];
          [v25 setModalInPresentation:1];
          v27 = v26 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
          if (*(v27 + *(type metadata accessor for ImagePicker(0) + 36)))
          {

            UIImagePickerController.setProperties(_:)(v28);
          }

          v30 = *(v0 + 24);
          v29 = *(v0 + 32);
          [*(v0 + 56) presentViewController:v25 animated:1 completion:0];
          [v25 becomeFirstResponder];
          sub_466A4(v30, v29);
        }

        else
        {
          sub_466A4(*(v0 + 24), *(v0 + 32));
        }

        sub_466B8(v13, v15);
      }

      else
      {
        sub_466A4(*(v0 + 24), *(v0 + 32));
      }

      goto LABEL_17;
    }

    sub_466A4(*(v0 + 24), *(v0 + 32));
  }

  v31 = *(v0 + 40);
  v32 = *(v0 + 48);
  sub_ABAD90(49);

  *(v0 + 16) = v31;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C728);
  v48._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v48);

  v33 = *(v32 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v33)
  {
    sub_85B8A0();
    v34 = swift_allocError();
    *v35 = 0xD00000000000002FLL;
    v35[1] = 0x8000000000B76790;

    v33(v34, 1);
    sub_17654(v33);
  }

  else
  {
  }

  v36 = *(v0 + 56);
  v37 = sub_859834();
  [v36 presentViewController:v37 animated:1 completion:0];

  v38 = sub_AB8E90();
  if (v39)
  {
    v40 = v38;
    v41 = v39;
    v42 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3D0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_AF4EC0;
    *(v43 + 32) = v40;
    *(v43 + 40) = v41;
    v44 = sub_AB9740().super.isa;

    [v42 deselectAssetsWithIdentifiers:v44];
  }

LABEL_17:
  v45 = *(v0 + 8);

  return v45();
}

double UIImage.centeredSquareCropRect.getter()
{
  [v0 size];
  v2 = v1;
  [v0 size];
  v4 = v3;
  [v0 size];
  v6 = v5;
  [v0 size];
  v8 = v7;
  [v0 size];
  v10 = v9;
  v12 = v11;
  [v0 size];
  v14 = (v10 - v13) * 0.5 + 0.0;
  v16 = (v12 - v15) * 0.5 + 0.0;
  if (v6 < v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  if (v6 < v8)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v14;
  }

  if (v4 >= v2)
  {
    v19 = v2;
  }

  else
  {
    v19 = v4;
  }

  v20 = v19;
  v26 = CGRectIntegral(*(&v17 - 1));
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  CGRectGetWidth(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  CGRectGetHeight(v27);
  return x;
}

Swift::Void __swiftcall ImagePicker.Coordinator.documentPicker(_:didPickDocumentsAt:)(UIDocumentPickerViewController _, Swift::OpaquePointer didPickDocumentsAt)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB31C0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didPickDocumentsAt._rawValue + 2))
  {
    isa = _.super.super.super.isa;
    (*(v10 + 16))(v13, didPickDocumentsAt._rawValue + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9, v11);
    sub_AB3160();
    v14 = objc_allocWithZone(UIImage);
    v15 = sub_AB9260();

    v16 = [v14 initWithContentsOfFile:v15];

    if (v16)
    {
      v17 = [(objc_class *)isa view];
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = v17;
      [v17 endEditing:1];

      v19 = UIImagePNGRepresentation(v16);
      if (v19)
      {
        v20 = v19;
        v21 = sub_AB3260();
        v23 = v22;

        v24 = UIImage.centeredSquareCropRect.getter();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        type metadata accessor for ImageEditingViewController();
        v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v32 = sub_AB3250().super.isa;
        v33 = [v31 _initWithSourceImageData:v32 cropRect:{v24, v26, v28, v30}];

        if (v33)
        {
          [v33 setDelegate:v3];
          [v33 setModalInPresentation:1];
          if (*(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker + *(v6 + 36)))
          {

            UIImagePickerController.setProperties(_:)(v34);
          }

          [(objc_class *)isa presentViewController:v33 animated:1 completion:0];

          sub_466B8(v21, v23);
          (*(v10 + 8))(v13, v9);
          return;
        }

        (*(v10 + 8))(v13, v9);
        sub_466B8(v21, v23);
      }

      else
      {
        (*(v10 + 8))(v13, v9);
      }

      return;
    }

    (*(v10 + 8))(v13, v9);
    _.super.super.super.isa = isa;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_ABAD90(59);
  v49._countAndFlagsBits = 0xD000000000000025;
  v49._object = 0x8000000000B764F0;
  sub_AB94A0(v49);
  v50._countAndFlagsBits = sub_AB9770();
  sub_AB94A0(v50);

  v51._object = 0x8000000000B76520;
  v51._countAndFlagsBits = 0xD000000000000014;
  sub_AB94A0(v51);
  v35 = v47;
  v36 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v36)
  {
    v37 = v46;
    sub_85B8A0();
    v38 = swift_allocError();
    *v39 = v37;
    v39[1] = v35;

    v36(v38, 1);
    sub_17654(v36);
  }

  else
  {
  }

  sub_84CB1C(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v8);
  v40 = &v8[*(v6 + 32)];
  v41 = *v40;
  v42 = *(v40 + 1);
  LOBYTE(v40) = v40[16];
  v46 = v41;
  v47 = v42;
  v48 = v40;
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390);
  sub_AB7800();
  [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  sub_85B8F4(v8);
}

void ImagePicker.Coordinator.imagePlaygroundViewController(_:didCreateImageAt:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSData);
  sub_AB30F0(v8);
  v10 = v9;
  v11 = [v7 initWithContentsOfURL:v9];

  if (v11)
  {
    v32 = v11;
    v12 = sub_AB3260();
    v14 = v13;

    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    type metadata accessor for ImageEditingViewController();
    v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    isa = sub_AB3250().super.isa;
    v20 = [v18 _initWithSourceImageData:isa cropRect:{CGRectNull.origin.x, y, width, height}];

    if (v20)
    {
      [v20 setDelegate:v2];
      [v20 setModalInPresentation:1];
      if (*(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker + *(v4 + 36)))
      {

        UIImagePickerController.setProperties(_:)(v21);
      }

      sub_466B8(v12, v14);
      [a1 presentViewController:v20 animated:1 completion:0];
    }

    else
    {
      sub_466B8(v12, v14);
    }

    v27 = v32;
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_ABAD90(52);
    v38._object = 0x8000000000B76540;
    v38._countAndFlagsBits = 0xD000000000000031;
    sub_AB94A0(v38);
    sub_AB31C0();
    sub_85BACC(&qword_E1C3D8, &type metadata accessor for URL);
    v39._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v39);

    v40._countAndFlagsBits = 46;
    v40._object = 0xE100000000000000;
    sub_AB94A0(v40);
    v22 = v35;
    v23 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
    if (v23)
    {
      v24 = v34;
      sub_85B8A0();
      v25 = swift_allocError();
      *v26 = v24;
      v26[1] = v22;

      v23(v25, 1);
      sub_17654(v23);
    }

    else
    {
    }

    sub_84CB1C(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v6);
    v28 = &v6[*(v4 + 32)];
    v29 = *v28;
    v30 = *(v28 + 1);
    LOBYTE(v28) = v28[16];
    v34 = v29;
    v35 = v30;
    v36 = v28;
    v33 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390);
    sub_AB7800();
    [a1 dismissViewControllerAnimated:1 completion:0];
    sub_85B8F4(v6);
  }
}

uint64_t _s11MusicCoreUI11ImagePickerV11CoordinatorC08documentE12WasCancelledyySo010UIDocumentE14ViewControllerCF_0(void *a1)
{
  v3 = type metadata accessor for ImagePicker(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_84CB1C(v1 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v6);
  v7 = &v6[*(v4 + 40)];
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v7) = v7[16];
  v12 = v8;
  v13 = v9;
  v14 = v7;
  v11[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390);
  sub_AB7800();
  [a1 dismissViewControllerAnimated:1 completion:0];
  return sub_85B8F4(v6);
}

void sub_85963C(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ImagePicker(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_84CB1C(a1 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v8);
  v9 = &v8[*(v6 + 40)];
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v9) = v9[16];
  v15 = v10;
  v16 = v11;
  v17 = v9;
  v14[7] = 0;
  v12 = a3;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390);
  sub_AB7800();
  [v12 dismissViewControllerAnimated:1 completion:0];
  sub_85B8F4(v8);
}

Swift::Void __swiftcall ImagePicker.Coordinator.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  type metadata accessor for ImagePicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390);
  sub_AB7800();
}

id sub_859834()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController;
  v2 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController);
  }

  else
  {
    v4 = sub_859894();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_859894()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  sub_AB91E0();
  v8 = *(v2 + 16);
  v8(v4, v7, v1);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v9 = qword_E73660;
  v10 = qword_E73660;
  sub_AB3550();
  v11 = v10;
  v20[2] = v9;
  v20[0] = sub_AB9320();
  v12 = *(v2 + 8);
  v12(v7, v1);
  sub_AB91E0();
  v8(v4, v7, v1);
  sub_AB3550();
  sub_AB9320();
  v20[1] = v2 + 16;
  v12(v7, v1);
  v13 = sub_AB9260();
  v20[0] = v8;
  v14 = v13;

  v15 = sub_AB9260();

  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  sub_AB91E0();
  (v20[0])(v4, v7, v1);
  sub_AB3550();
  sub_AB9320();
  v12(v7, v1);
  v17 = sub_AB9260();

  v18 = [objc_opt_self() actionWithTitle:v17 style:1 handler:0];

  [v16 addAction:v18];
  return v16;
}

id sub_859CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *ImagePicker.makeCoordinator()()
{
  v1 = type metadata accessor for ImagePicker(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_84CB1C(v0, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ImagePicker.Coordinator(0);
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v5[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v5[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController] = 0;
  sub_84CB1C(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &v5[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker]);
  v14.receiver = v5;
  v14.super_class = v4;
  v8 = objc_msgSendSuper2(&v14, "init");
  sub_85B8F4(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_84CB1C(v0, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_85BCC4(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = &v8[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  v12 = *&v8[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  *v11 = sub_85BD28;
  v11[1] = v10;
  sub_17654(v12);
  return v8;
}

uint64_t sub_859F18(void *a1, char a2, uint64_t a3)
{
  v6 = sub_AB4BC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = Logger.playlistCovers.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v10, v6);
    swift_errorRetain();
    v11 = sub_AB4BA0();
    v12 = sub_AB9F30();
    sub_21A5E8(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v28 = v14;
      *v13 = 136446210;
      v30 = a1;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710);
      v15 = sub_AB9350();
      v17 = sub_7AB3E0(v15, v16, &v28);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v11, v12, "ImagePicker failed with error: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v19 = type metadata accessor for ImagePicker(0);
    v20 = (a3 + v19[5]);
    v21 = *v20;
    v22 = *(v20 + 2);
    v28 = v21;
    v29 = v22;
    v30 = a1;
    v23 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C718);
    result = sub_AB7800();
    v24 = *(a3 + v19[7]);
    if (v24)
    {
      v25 = (a3 + v19[6]);
      v26 = *v25;
      v27 = v25[1];
      LOBYTE(v25) = *(v25 + 16);
      *&v28 = v26;
      *(&v28 + 1) = v27;
      LOBYTE(v29) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3B8);
      sub_AB77F0();
      return v24(v30);
    }
  }

  return result;
}

char *sub_85A1C8@<X0>(char **a1@<X8>)
{
  result = ImagePicker.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t sub_85A1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_85BACC(&qword_E1C700, type metadata accessor for ImagePicker);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_85A284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_85BACC(&qword_E1C700, type metadata accessor for ImagePicker);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_85A318()
{
  sub_85BACC(&qword_E1C700, type metadata accessor for ImagePicker);
  sub_AB6970();
  __break(1u);
}

id ImageEditingViewController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ImageEditingViewController();
  return objc_msgSendSuper2(&v6, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, v3);
}

id ImageEditingViewController.init(rootViewController:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithRootViewController:", a1);

  return v3;
}

id ImageEditingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ImageEditingViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id ImageEditingViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_85A6F8()
{
  v0 = sub_7B6EB8(&off_D34DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C760);
  result = swift_arrayDestroy();
  static UIImagePickerController.profileImagePickerProperties = v0;
  return result;
}

uint64_t sub_85A79C()
{

  return swift_deallocObject();
}

void sub_85A7DC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild);
  *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild) = v1;
  v4 = v1;

  *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress) = 0;
}

uint64_t static UIImagePickerController.profileImagePickerProperties.getter()
{
  if (qword_E16B40 != -1)
  {
    swift_once();
  }
}

unint64_t sub_85A87C(unsigned __int8 *a1)
{
  sub_ABB5C0();
  PlaylistCovers.Cover.Representation.hash(into:)();
  v2 = sub_ABB610();

  return sub_85A9A8(a1, v2);
}

unint64_t sub_85A8E8(char a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  v2 = sub_ABB610();

  return sub_85AA8C(a1, v2);
}

unint64_t sub_85A9A8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(v2 + 48) + 56 * v4;
      v9 = *(v7 + 16);
      v8 = *(v7 + 32);
      v10 = *v7;
      v15 = *(v7 + 48);
      v14[1] = v9;
      v14[2] = v8;
      v14[0] = v10;
      sub_70B8A0(v14, v13);
      v11 = static PlaylistCovers.Cover.Representation.== infix(_:_:)(v14, a1);
      sub_85C600(v14);
      if (v11)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_85AA8C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = *(*(v2 + 48) + v4);
      v6 = v5 == 1 ? 0xD000000000000014 : 0xD000000000000015;
      v7 = v5 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000015;
      v9 = *(*(v2 + 48) + v4) ? v7 : "ntroller1XCroppedImage";
      if (a1)
      {
        v10 = a1 == 1 ? 0xD000000000000014 : 0xD000000000000015;
        v11 = a1 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      }

      else
      {
        v10 = 0xD000000000000015;
        v11 = "ntroller1XCroppedImage";
      }

      if (v8 == v10 && (v9 | 0x8000000000000000) == (v11 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_ABB3C0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
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

uint64_t sub_85AC08(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A88);
  v33 = a2;
  result = sub_ABB0A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_90090(v34, *(&v34 + 1));
      }

      sub_ABB5C0();
      sub_AB93F0();
      result = sub_ABB610();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_85AEC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C730);
  result = sub_ABB0A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_9ACFC((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_9ACA0(v23, &v36);
        sub_808B0(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_ABACF0(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_9ACFC(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_85B17C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C708);
  v61 = a2;
  result = sub_ABB0A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v59 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = *(v5 + 48) + 56 * v26;
      if (v61)
      {
        v28 = *(v27 + 8);
        v29 = *(v27 + 24);
        v30 = *(v27 + 40);
        v31 = *v27;
        v32 = *(v5 + 56) + 136 * v26;
        v33 = *(v32 + 80);
        v78 = *(v32 + 64);
        v79 = v33;
        v34 = *(v32 + 112);
        v80 = *(v32 + 96);
        v81 = v34;
        v35 = *(v32 + 16);
        v74 = *v32;
        v75 = v35;
        v36 = *(v32 + 48);
        v76 = *(v32 + 32);
        v77 = v36;
        v37 = *(v32 + 128);
      }

      else
      {
        v60 = *(v27 + 8);
        v62 = *(v27 + 40);
        v63 = *(v27 + 24);
        v31 = *v27;
        v38 = *(v5 + 56) + 136 * v26;
        v65 = *v38;
        v39 = *(v38 + 64);
        v41 = *(v38 + 16);
        v40 = *(v38 + 32);
        v68 = *(v38 + 48);
        v69 = v39;
        v66 = v41;
        v67 = v40;
        v43 = *(v38 + 96);
        v42 = *(v38 + 112);
        v44 = *(v38 + 80);
        v73 = *(v38 + 128);
        v71 = v43;
        v72 = v42;
        v70 = v44;
        v37 = v73;
        v45 = v60;
        v46 = *(&v60 + 1);
        v47 = v63;
        v48 = *(&v63 + 1);
        v49 = v62;
        v50 = *(&v62 + 1);
        sub_85C360(&v65, v64);
        v30 = v62;
        v29 = v63;
        v28 = v60;
        v78 = v69;
        v79 = v70;
        v80 = v71;
        v81 = v72;
        v74 = v65;
        v75 = v66;
        v76 = v67;
        v77 = v68;
      }

      v82[0] = v31;
      *&v82[8] = v28;
      *&v82[24] = v29;
      *&v82[40] = v30;
      sub_ABB5C0();
      PlaylistCovers.Cover.Representation.hash(into:)();
      result = sub_ABB610();
      v51 = -1 << *(v7 + 32);
      v52 = result & ~v51;
      v53 = v52 >> 6;
      if (((-1 << v52) & ~*(v14 + 8 * (v52 >> 6))) == 0)
      {
        v54 = 0;
        v55 = (63 - v51) >> 6;
        while (++v53 != v55 || (v54 & 1) == 0)
        {
          v56 = v53 == v55;
          if (v53 == v55)
          {
            v53 = 0;
          }

          v54 |= v56;
          v57 = *(v14 + 8 * v53);
          if (v57 != -1)
          {
            v15 = __clz(__rbit64(~v57)) + (v53 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v52) & ~*(v14 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      v17 = *&v82[16];
      *v16 = *v82;
      *(v16 + 16) = v17;
      *(v16 + 32) = *&v82[32];
      *(v16 + 48) = *&v82[48];
      v18 = *(v7 + 56) + 136 * v15;
      v19 = v79;
      *(v18 + 64) = v78;
      *(v18 + 80) = v19;
      v20 = v81;
      *(v18 + 96) = v80;
      *(v18 + 112) = v20;
      v21 = v75;
      *v18 = v74;
      *(v18 + 16) = v21;
      v22 = v77;
      *(v18 + 32) = v76;
      *(v18 + 48) = v22;
      *(v18 + 128) = v37;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v61 & 1) == 0)
    {

      v3 = v59;
      goto LABEL_34;
    }

    v58 = 1 << *(v5 + 32);
    v3 = v59;
    if (v58 >= 64)
    {
      bzero((v5 + 64), ((v58 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v58;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_85B578()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A88);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_90090(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_85B6FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C730);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_9ACA0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_808B0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_9ACFC(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_85B8A0()
{
  result = qword_E1C3A8;
  if (!qword_E1C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C3A8);
  }

  return result;
}

uint64_t sub_85B8F4(uint64_t a1)
{
  v2 = type metadata accessor for ImagePicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_85B950()
{
  v1 = sub_AB8EA0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_85BA1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_AB8EA0() - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_8582A4(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_85BACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_85BB34()
{
  v1 = type metadata accessor for ImagePicker(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB5A00();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 20);

  if (*(v3 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_85BCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_85BD28(void *a1, char a2)
{
  v5 = *(type metadata accessor for ImagePicker(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_859F18(a1, a2 & 1, v6);
}

unint64_t sub_85BDAC()
{
  result = qword_E1C3E8;
  if (!qword_E1C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C3E8);
  }

  return result;
}

uint64_t sub_85BE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A610);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_85BF3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A610);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_85C004()
{
  sub_85C18C();
  if (v0 <= 0x3F)
  {
    sub_85C230(319, &unk_E1C470, &qword_E175C0, &unk_B2A1E8, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_85C1E4(319, &unk_E1C480);
      if (v2 <= 0x3F)
      {
        sub_85C230(319, &qword_E19CD8, &qword_E1C490, &unk_B31780, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_85C1E4(319, &qword_E1C498);
          if (v4 <= 0x3F)
          {
            sub_85C230(319, &qword_E1C4A0, &unk_E1C4A8, &unk_B31788, &type metadata accessor for Optional);
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

void sub_85C18C()
{
  if (!qword_E1A698)
  {
    sub_AB5A00();
    v0 = sub_AB57D0();
    if (!v1)
    {
      atomic_store(v0, &qword_E1A698);
    }
  }
}

void sub_85C1E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_AB7860();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_85C230(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_85C29C()
{
  result = type metadata accessor for ImagePicker(319);
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

void *sub_85C3BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C708);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v49 = v1;
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v50 = v2;
    v51 = v4;
    *(v4 + 16) = *(v2 + 16);
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 64);
    for (i = (v10 + 63) >> 6; v12; result = sub_85C360(&v53, v52))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v17 = v14 | (v9 << 6);
      v18 = 56 * v17;
      v19 = *(v2 + 56);
      v20 = *(v2 + 48) + 56 * v17;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v25 = *(v20 + 24);
      v24 = *(v20 + 32);
      v27 = *(v20 + 40);
      v26 = *(v20 + 48);
      v17 *= 136;
      v28 = (v19 + v17);
      v30 = v28[1];
      v29 = v28[2];
      v31 = v28[4];
      v56 = v28[3];
      v57 = v31;
      v33 = v28[6];
      v32 = v28[7];
      v34 = v28[5];
      v61 = *(v28 + 16);
      v59 = v33;
      v60 = v32;
      v58 = v34;
      v53 = *v28;
      v54 = v30;
      v55 = v29;
      v35 = *(v51 + 48) + v18;
      *v35 = v21;
      *(v35 + 8) = v22;
      *(v35 + 16) = v23;
      *(v35 + 24) = v25;
      *(v35 + 32) = v24;
      *(v35 + 40) = v27;
      *(v35 + 48) = v26;
      v36 = *(v51 + 56) + v17;
      *v36 = v53;
      v37 = v54;
      v38 = v55;
      v39 = v57;
      *(v36 + 48) = v56;
      *(v36 + 64) = v39;
      *(v36 + 16) = v37;
      *(v36 + 32) = v38;
      v40 = v58;
      v41 = v59;
      v42 = v60;
      *(v36 + 128) = v61;
      *(v36 + 96) = v41;
      *(v36 + 112) = v42;
      *(v36 + 80) = v40;
      v43 = v22;
      v44 = v23;
      v2 = v50;
      v45 = v25;
      v46 = v24;
      v47 = v27;
      v48 = v26;
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= i)
      {

        v1 = v49;
        v4 = v51;
        goto LABEL_21;
      }

      v16 = *(v6 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_85C654()
{
  v1 = sub_AB8EA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = *(v0 + 40);
  if (v4 >> 60 != 15)
  {
    sub_466B8(*(v0 + 32), v4);
  }

  (*(v2 + 8))(v0 + ((v3 + 72) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_85C748(uint64_t a1)
{
  sub_AB8EA0();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_17BD0;

  return sub_8584F8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_85C870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_85C8E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C6F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t InteractionFeedbackLoadingView.body.getter@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = sub_AB62E0();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C768);
  sub_85CA94(a1, a2, (a3 + *(v8 + 44)));
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C770) + 36));
  *v10 = sub_85D198;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
}

uint64_t sub_85CA94@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v4 = sub_AB62A0();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v40 = &v37 - v7;
  v8 = sub_AB6850();
  v38 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC18);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C790);
  v15 = *(v45 - 8);
  __chkstk_darwin(v45);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C798);
  __chkstk_darwin(v18 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v37 - v22;
  v47 = a1;
  v48 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7640();
  v24 = 1;
  if (v46 == 1)
  {
    sub_AB58D0();
    sub_AB6840();
    sub_36A00(&qword_E1AC10, &qword_E1AC18);
    sub_85D71C(&qword_E1C7A8, &type metadata accessor for CircularProgressViewStyle);
    sub_AB6F70();
    (*(v38 + 8))(v10, v8);
    (*(v12 + 8))(v14, v11);
    v25 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C7B0) + 36)];
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C7B8) + 28);
    v27 = enum case for ControlSize.large(_:);
    v28 = sub_AB57B0();
    (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
    *v25 = swift_getKeyPath();
    v29 = v40;
    sub_AB6290();
    v31 = v41;
    v30 = v42;
    (*(v41 + 16))(v39, v29, v42);
    sub_85D71C(&qword_E1C7C0, &type metadata accessor for OpacityTransition);
    v32 = sub_AB59E0();
    (*(v31 + 8))(v29, v30);
    *&v17[*(v45 + 36)] = v32;
    sub_85D764(v17, v23);
    v24 = 0;
  }

  (*(v15 + 56))(v23, v24, 1, v45);
  sub_85D554(v23, v20);
  v33 = v44;
  *v44 = 0;
  *(v33 + 8) = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C7A0);
  sub_85D554(v20, v33 + *(v34 + 48));
  v35 = v33 + *(v34 + 64);
  *v35 = 0;
  v35[8] = 1;
  sub_85D5C4(v23);
  return sub_85D5C4(v20);
}

uint64_t sub_85D028(char a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_AB9990();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;

  static Task<>.delayed(by:priority:task:)(v8, &unk_B319C8, v10, &type metadata for () + 8, a3);

  return sub_85D4EC(v8);
}

uint64_t sub_85D160()
{

  return swift_deallocObject();
}

uint64_t sub_85D1C4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  *(v3 + 41) = a2;
  return _swift_task_switch(sub_85D1E8, 0, 0);
}

uint64_t sub_85D1E8()
{
  *(v0 + 16) = *(v0 + 41);
  *(v0 + 24) = *(v0 + 32);
  *(v0 + 40) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218);
  sub_AB7650();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_85D284@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  *a1 = sub_AB62E0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C768);
  sub_85CA94(v4, v5, (a1 + *(v6 + 44)));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C770) + 36));
  *v8 = sub_85D7DC;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
}

unint64_t sub_85D37C()
{
  result = qword_E1C778;
  if (!qword_E1C778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C770);
    sub_36A00(&qword_E1C780, &qword_E1C788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C778);
  }

  return result;
}

uint64_t sub_85D434(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17BD0;

  return sub_85D1C4(a1, v4, v5);
}

uint64_t sub_85D4EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_85D554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_85D5C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_85D650(uint64_t a1)
{
  v2 = sub_AB57B0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_AB5FD0();
}

uint64_t sub_85D71C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_85D764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_85D7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin(a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB5860();
  v17 = __chkstk_darwin(v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_AB5870();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_AB5AF0();
}

int *LayoutProviderStack.init(layoutProvider:alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  result = type metadata accessor for LayoutProviderStack();
  v17 = (a9 + result[13]);
  *v17 = a2;
  v17[1] = a3;
  v18 = a9 + result[14];
  *v18 = a4;
  *(v18 + 8) = a5 & 1;
  v19 = (a9 + result[15]);
  *v19 = a6;
  v19[1] = a7;
  return result;
}

uint64_t LayoutProviderStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C7C8);
  v4 = *(a1 + 24);
  sub_85DDDC(&qword_E1C7D0);
  v5 = sub_AB5AE0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = v25 - v11;
  (*(*(a1 + 32) + 8))(v26, *(v2 + *(a1 + 52)), *(v2 + *(a1 + 52) + 8), *(v2 + *(a1 + 56)), *(v2 + *(a1 + 56) + 8), *(a1 + 16), v10);
  v13 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v14 = __chkstk_darwin(v13);
  (*(v16 + 16))(v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v25[4] = sub_AB7AB0();
  v17 = (v2 + *(a1 + 60));
  v18 = *v17;
  v19 = v17[1];
  v20 = sub_85DD88();
  v21 = *(a1 + 40);
  sub_85D7E0(v18, v19, &type metadata for AnyLayout, v4, v20, v21, v8);

  __swift_destroy_boxed_opaque_existential_0(v26);
  v25[2] = sub_85DDDC(&qword_E1C7E0);
  v25[3] = v21;
  WitnessTable = swift_getWitnessTable();
  sub_7FF188(v8, v5, WitnessTable);
  v23 = *(v6 + 8);
  v23(v8, v5);
  sub_7FF188(v12, v5, WitnessTable);
  return (v23)(v12, v5);
}

unint64_t sub_85DD88()
{
  result = qword_E1C7D8;
  if (!qword_E1C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C7D8);
  }

  return result;
}

uint64_t sub_85DDDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C7C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AxisStack.init(axis:alignment:spacing:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result & 1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t AxisStack.body.getter(uint64_t a1)
{
  v17[0] = *v1;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  (*(*(&type metadata for Axis - 1) + 32))(v23, v17, &type metadata for Axis);
  v29 = &type metadata for Axis;
  *&v30 = v8;
  *(&v30 + 1) = &protocol witness table for Axis;
  v31 = v9;
  v10 = type metadata accessor for LayoutProviderStack();
  v11 = &v23[v10[13]];
  *v11 = v2;
  v11[1] = v3;
  v12 = &v23[v10[14]];
  *v12 = v4;
  v12[8] = v5;
  v13 = &v23[v10[15]];
  *v13 = v7;
  v13[1] = v6;
  v17[0] = v23[0];
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v29 = &type metadata for Axis;
  *&v30 = v8;
  *(&v30 + 1) = &protocol witness table for Axis;
  v31 = v9;
  v14 = type metadata accessor for LayoutProviderStack();
  WitnessTable = swift_getWitnessTable();
  sub_7FF188(v17, v14, WitnessTable);

  v23[0] = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  sub_7FF188(v23, v14, WitnessTable);
}

unint64_t Axis.layout(alignment:spacing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v10 = &type metadata for VStackLayout;
    result = sub_85E080();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = sub_85E0D4();
  }

  *(a6 + 24) = v10;
  *(a6 + 32) = result;
  *a6 = v12;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4 & 1;
  return result;
}

unint64_t sub_85E080()
{
  result = qword_E1C7E8;
  if (!qword_E1C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C7E8);
  }

  return result;
}

unint64_t sub_85E0D4()
{
  result = qword_E1C7F0[0];
  if (!qword_E1C7F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E1C7F0);
  }

  return result;
}

unint64_t sub_85E1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (*v5)
  {
    v10 = &type metadata for VStackLayout;
    result = sub_85E080();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = sub_85E0D4();
  }

  *(a5 + 24) = v10;
  *(a5 + 32) = result;
  *a5 = v12;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  return result;
}

void sub_85E228()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_7FCB50();
    if (v1 <= 0x3F)
    {
      sub_7FD734();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_85E2D0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_85E41C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_85E5F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_85E62C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_85E674(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_85E6D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C7C8);
  sub_85DDDC(&qword_E1C7D0);
  sub_AB5AE0();
  sub_85DDDC(&qword_E1C7E0);
  return swift_getWitnessTable();
}

uint64_t sub_85E800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v17 - v13;
  v12();
  sub_7FF188(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_7FF188(v14, a4, a6);
  return (v15)(v14, a4);
}

char *LoadingView.init(title:style:usesSubtitleTextColor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style];
  *v9 = 0;
  *(v9 + 2) = 256;
  v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition] = 1;
  v10 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  *&v4[v11] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  *&v4[v12] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar] = 0;
  swift_beginAccess();
  *v10 = a1;
  v10[1] = a2;

  swift_beginAccess();
  v9[4] = BYTE4(a3);
  *v9 = a3;
  v9[5] = BYTE5(a3) & 1;
  v29.receiver = v4;
  v29.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  v15 = *&v13[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator];
  v16 = v13;
  [v15 setHidesWhenStopped:1];
  v17 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  v18 = *&v16[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];
  if (a2)
  {
    v19 = sub_AB9260();
  }

  else
  {
    v19 = 0;
  }

  [v18 setText:v19];

  [*&v16[v17] setAdjustsFontForContentSizeCategory:1];
  v20 = qword_E16B48;
  v21 = *&v16[v17];
  if (v20 != -1)
  {
    swift_once();
  }

  [v21 setFont:qword_E1C8F8];

  [*&v16[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [*&v16[v17] setNumberOfLines:0];
  [*&v16[v17] setTextAlignment:1];
  if (a4)
  {
    v22 = *&v16[v17];
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 secondaryLabelColor];
    [v24 setTextColor:v25];
  }

  sub_85ECF8();
  [v16 addSubview:*&v16[v17]];
  [v16 addSubview:*&v13[v14]];
  v26 = sub_85EE6C();
  [v16 addSubview:v26];

  return v16;
}

id sub_85ECF8()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  if (*(v1 + 5))
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v2 = sub_85EE6C();
    [v2 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:1];
  }

  else if (((*v1 | (*(v1 + 4) << 32)) & 0x100000000) != 0)
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) startAnimating];
    v7 = sub_85EE6C();
    [v7 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
  }

  else
  {
    v4 = *v1;
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v5 = sub_85EE6C();
    [v5 setHidden:0];

    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
    LODWORD(v6) = v4;
    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar) setProgress:v6];
  }
}

id sub_85EE6C()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  }

  else
  {
    v4 = [objc_allocWithZone(UIProgressView) initWithProgressViewStyle:1];
    v5 = [objc_opt_self() systemFillColor];
    [v4 setTrackTintColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

unint64_t LoadingView.style.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40);
}

float LoadingView.style.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  v5 = *(v3 + 4);
  v6 = *v3;
  v7 = *(v3 + 5);
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1);
  *(v3 + 5) = BYTE5(a1) & 1;
  if ((a1 & 0x10000000000) != 0)
  {
    if (v7)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v7)
  {
    goto LABEL_5;
  }

  v8 = v6 | (v5 << 32);
  if ((a1 & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) != 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  if ((v8 & 0x100000000) != 0 || (result = *&a1, *&a1 != *&v8))
  {
LABEL_5:
    sub_85ECF8();
  }

  return result;
}

void (*LoadingView.style.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 4);
  v8 = *(v6 + 5);
  *(v4 + 40) = *v6;
  v4 += 40;
  *(v4 + 4) = v7;
  *(v4 + 5) = v8;
  return sub_85F104;
}

void sub_85F104(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = (*(*a1 + 24) + *(*a1 + 32));
  v4 = *(*a1 + 44);
  v5 = *(*a1 + 45);
  v6 = *v3 | (*(v3 + 4) << 32);
  v7 = *(v3 + 5);
  *v3 = v2;
  *(v3 + 4) = v4;
  *(v3 + 5) = v5;
  if (v5)
  {
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    sub_85ECF8();
    goto LABEL_6;
  }

  if (((v2 | (v4 << 32)) & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v6 & 0x100000000) != 0 || *&v2 != *&v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  free(v1);
}

uint64_t LoadingView.titlePosition.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  return *(v0 + v1);
}

id LoadingView.titlePosition.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  result = swift_beginAccess();
  v5 = v1[v3];
  v1[v3] = a1;
  if (v5 != a1)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void (*LoadingView.titlePosition.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_85F2F0;
}

void sub_85F2F0(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsLayout];
  }

  free(v1);
}