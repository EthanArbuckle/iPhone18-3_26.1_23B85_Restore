uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A1A44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_A1A9C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_A1AF8()
{
  sub_A202C(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v0 <= 0x3F)
  {
    sub_A1FC8();
    if (v1 <= 0x3F)
    {
      sub_A202C(319, &qword_4EF4D0, &type metadata accessor for EpisodeListenNowReason);
      if (v2 <= 0x3F)
      {
        sub_A202C(319, &qword_4EF4D8, &type metadata accessor for EyebrowBuilder.ListContext);
        if (v3 <= 0x3F)
        {
          sub_A202C(319, &unk_4EF4E0, &type metadata accessor for InMemoryEpisodeStateModel);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of LegacyEpisodeLockup.__allocating_init(adamId:episodeNumber:seasonNumber:episodeType:mediaType:icon:showUberArtwork:episodeArtwork:title:subtitles:ordinal:rating:buttonAction:clickAction:titleAction:playAction:contextAction:previewAction:subtitleAction:caption:summary:transcript:isExplicit:duration:episodeEntitlementState:hasFreeVersion:subscriptionName:channelName:showTitle:showDisplayType:shelfUniqueId:releaseDate:showTypeIsSerial:listenNowReason:listContext:referenceTime:playerTime:thinClientEpisodeState:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = a3 & 1;
  v7 = a5 & 1;
  v8 = *(v5 + 656);

  return v8(a1, a2, v6, a4, v7);
}

void sub_A1FC8()
{
  if (!qword_4EF4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4EF4C8);
    v0 = sub_3EC504();
    if (!v1)
    {
      atomic_store(v0, &qword_4EF4C0);
    }
  }
}

void sub_A202C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_A2080(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LegacyLockup.init(id:adamId:referencedContent:isExplicit:isFollowed:icon:title:subtitles:eyebrow:titleAccessibilityLabel:genreNames:ordinal:releaseDate:releaseFrequency:rating:ratingCount:buttonAction:clickAction:contextAction:playAction:previewAction:subtitleAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, int a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = v33;
  v106 = a8;
  v135 = a7;
  v134 = a6;
  v131 = a4;
  v132 = a5;
  v100 = a3;
  v99 = a2;
  v98 = a1;
  v126 = a33;
  v125 = a32;
  v124 = a31;
  v123 = a30;
  v122 = a29;
  v133 = a28;
  v129 = a27;
  v116 = a26;
  v115 = a25;
  v114 = a24;
  v113 = a23;
  v112 = a22;
  v128 = a21;
  v111 = a20;
  v110 = a19;
  v109 = a18;
  v108 = a17;
  v107 = a16;
  v105 = a15;
  v104 = a14;
  v103 = a13;
  v102 = a12;
  v127 = a11;
  v130 = a10;
  v101 = a9;
  v97 = sub_3E5FC4();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v117);
  v37 = &v94 - v36;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v119);
  v39 = &v94 - v38;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v120);
  v41 = &v94 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v42 - 8);
  v44 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v94 - v46;
  *(v34 + 64) = 0;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 0u;
  v48 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  v49 = sub_3EC634();
  (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
  sub_FBD0(v47, v44, &unk_4E9170);
  v118 = v44;
  sub_3ECAE4();
  v121 = v47;
  sub_FCF8(v47, &unk_4E9170);
  sub_FACC(v41, v34 + v48, &qword_4EED90);
  v50 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  *&v137[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  sub_FACC(v39, v34 + v50, &qword_4EED80);
  v51 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__clickAction;
  v138 = 0;
  memset(v137, 0, sizeof(v137));
  sub_FBD0(v137, &v136, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v137, &qword_4EDE00);
  sub_FACC(v37, v34 + v51, &qword_4EED88);
  v52 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  *&v137[0] = 0;
  sub_3ECAE4();
  sub_FACC(v39, v34 + v52, &qword_4EED80);
  v53 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  *&v137[0] = 0;
  sub_3ECAE4();
  sub_FACC(v39, v34 + v53, &qword_4EED80);
  v54 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__previewAction;
  *&v137[0] = 0;
  sub_3ECAE4();
  sub_FACC(v39, v34 + v54, &qword_4EED80);
  v55 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  *&v137[0] = 0;
  sub_3ECAE4();
  v56 = v34 + v55;
  v57 = v99;
  sub_FACC(v39, v56, &qword_4EED80);
  if (v57)
  {
    v58 = v111;
    v59 = v110;
    v60 = v103;
    v61 = v102;
    v62 = v100;
    v63 = v98;
  }

  else
  {
    v64 = v95;
    v65 = v96;
    v66 = v97;
    v62 = v100;
    v67 = sub_3E94A4();
    v60 = v103;
    if (v67)
    {
      sub_3E5FB4();
      v63 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v57 = v68;
      (*(v65 + 8))(v64, v66);
      v58 = v111;
      v59 = v110;
      v61 = v102;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_3F5630;
      *&v137[0] = v62;
      sub_17A28();
      *(v69 + 32) = sub_3EE1F4();
      *(v69 + 40) = v70;
      *&v137[0] = v69;
      v59 = v110;
      v61 = v102;
      if (v102)
      {

        v69 = sub_DFAE8(&dword_0 + 1, 2, 1, v69);
        *(v69 + 16) = 2;
        *(v69 + 48) = v127;
        *(v69 + 56) = v61;
        *&v137[0] = v69;
      }

      v58 = v111;
      if (v60)
      {

        sub_40D60(v71);
        v69 = *&v137[0];
      }

      if (v58)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_DFAE8(0, *(v69 + 16) + 1, 1, v69);
        }

        v73 = *(v69 + 16);
        v72 = *(v69 + 24);
        if (v73 >= v72 >> 1)
        {
          v69 = sub_DFAE8((v72 > 1), v73 + 1, 1, v69);
        }

        *(v69 + 16) = v73 + 1;
        v74 = v69 + 16 * v73;
        *(v74 + 32) = v59;
        *(v74 + 40) = v58;
        *&v137[0] = v69;
      }

      v136 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
      sub_9809C();
      v63 = sub_3ED134();
      v57 = v75;
    }
  }

  *(v34 + 16) = v63;
  *(v34 + 24) = v57;
  *(v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v62;
  v76 = v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v78 = v131;
  v77 = v132;
  *v76 = v131;
  *(v76 + 8) = v77;
  v79 = v134;
  *(v76 + 16) = v134;
  v80 = v135;
  *(v76 + 24) = v135;
  *(v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v106 & 1;
  *(v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = v101;
  sub_FBD0(v130, v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v81 = (v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  *v81 = v127;
  v81[1] = v61;
  *(v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v60;
  v82 = (v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  v83 = v105;
  *v82 = v104;
  v82[1] = v83;
  v84 = (v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  v85 = v108;
  *v84 = v107;
  v84[1] = v85;
  *(v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = v109;
  v86 = (v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v86 = v59;
  v86[1] = v58;
  *(v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = v128;
  v87 = (v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  v88 = v113;
  *v87 = v112;
  v87[1] = v88;
  v89 = v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  BYTE4(v88) = BYTE4(v114);
  *v89 = v114;
  *(v89 + 4) = BYTE4(v88) & 1;
  v90 = v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v90 = v115;
  *(v90 + 8) = v116 & 1;
  v136 = v129;
  swift_beginAccess();
  sub_A67D0(v78, v77, v79, v80);

  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v133, v137, &qword_4EDE00);
  sub_FBD0(v137, &v136, &qword_4EDE00);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v137, &qword_4EDE00);
  v136 = v122;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v136 = v123;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v136 = v124;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v136 = v125;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v91 = v126;
  v92 = v121;
  sub_FBD0(v126, v121, &unk_4E9170);
  sub_FBD0(v92, v118, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();

  sub_A67F0(v131, v132, v134, v135);
  sub_FCF8(v91, &unk_4E9170);
  sub_FCF8(v133, &qword_4EDE00);
  sub_FCF8(v130, &qword_4F1D50);
  sub_FCF8(v92, &unk_4E9170);
  return v34;
}

uint64_t LegacyLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v246 = a1;
  v247 = a2;
  v206 = sub_3E5FC4();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v204 = &v203 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDC98);
  v5 = __chkstk_darwin(v4 - 8);
  v233 = &v203 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v231 = &v203 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v8 - 8);
  v230 = (&v203 - v9);
  v241 = sub_3EBF94();
  v225 = *(v241 - 8);
  __chkstk_darwin(v241);
  v239 = v10;
  v240 = &v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_3EBDF4();
  v245 = *(v237 - 8);
  v11 = __chkstk_darwin(v237);
  v218 = &v203 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v238 = &v203 - v14;
  v15 = __chkstk_darwin(v13);
  v232 = &v203 - v16;
  v17 = __chkstk_darwin(v15);
  v229 = &v203 - v18;
  v19 = __chkstk_darwin(v17);
  v228 = (&v203 - v20);
  v21 = __chkstk_darwin(v19);
  v227 = &v203 - v22;
  v234 = v23;
  __chkstk_darwin(v21);
  v252 = (&v203 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v25 - 8);
  v223 = &v203 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v27 - 8);
  v29 = &v203 - v28;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v222);
  v31 = &v203 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v33 = __chkstk_darwin(v32 - 8);
  v35 = &v203 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v203 - v36;
  *(v2 + 64) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v38 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  v39 = sub_3EC634();
  (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  sub_FBD0(v37, v35, &unk_4E9170);
  v220 = v35;
  v219 = v39;
  sub_3ECAE4();
  v221 = v37;
  v40 = v37;
  v41 = v2;
  sub_FCF8(v40, &unk_4E9170);
  sub_FACC(v31, v2 + v38, &qword_4EED90);
  v42 = v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  *&v249 = 0;
  v43 = type metadata accessor for Action();
  sub_3ECAE4();
  v211 = v42;
  sub_FACC(v29, v42, &qword_4EED80);
  v44 = v41 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__clickAction;
  v251 = 0;
  v249 = 0u;
  v250 = 0u;
  sub_FBD0(&v249, &v248, &qword_4EDE00);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  v46 = v223;
  v212 = v45;
  sub_3ECAE4();
  sub_FCF8(&v249, &qword_4EDE00);
  v47 = v46;
  v48 = v41;
  v213 = v44;
  sub_FACC(v47, v44, &qword_4EED88);
  v49 = v41 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  *&v249 = 0;
  sub_3ECAE4();
  v214 = v49;
  sub_FACC(v29, v49, &qword_4EED80);
  v50 = v41 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  *&v249 = 0;
  sub_3ECAE4();
  v215 = v50;
  sub_FACC(v29, v50, &qword_4EED80);
  v51 = v41 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__previewAction;
  *&v249 = 0;
  sub_3ECAE4();
  v216 = v51;
  sub_FACC(v29, v51, &qword_4EED80);
  v52 = v41 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  *&v249 = 0;
  v235 = v43;
  sub_3ECAE4();
  v236 = v29;
  v53 = v29;
  v54 = v252;
  v217 = v52;
  sub_FACC(v53, v52, &qword_4EED80);
  sub_3EBE04();
  sub_3EBDC4();
  if (v55)
  {
    v56 = v226;
    v57 = sub_3E9494();
    if (v56)
    {

      v58 = sub_3E9484();

      v59 = (v245 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v60 = v54;
      v61 = v237;
      v252 = *(v245 + 8);
      v252(v60);
      v226 = 0;
    }

    else
    {
      v58 = v57;
      v226 = 0;
      v59 = (v245 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v63 = v54;
      v61 = v237;
      v252 = *(v245 + 8);
      v252(v63);
    }
  }

  else
  {
    v59 = (v245 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v62 = v54;
    v61 = v237;
    v252 = *(v245 + 8);
    (v252)(v62, v237);
    v58 = sub_3E9484();
  }

  v210 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId;
  *(v41 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v58;
  v64 = v227;
  sub_3EBE04();
  v65 = v225 + 16;
  v242 = *(v225 + 16);
  v66 = v240;
  v242(v240, v247, v241);
  sub_A7254();
  sub_3EC574();
  v67 = v250;
  v68 = BYTE8(v250);
  v69 = v48 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  *v69 = v249;
  *(v69 + 16) = v67;
  *(v69 + 24) = v68;
  v70 = v228;
  sub_3EBE04();
  v71 = sub_3EBD24();
  v72 = v70;
  v73 = v252;
  (v252)(v72, v61);
  *(v48 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v71 & 1;
  sub_3EBE04();
  v74 = sub_3EBD24();
  v73(v64, v61);
  *(v48 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = v74;
  sub_3E7784();
  sub_3EBE04();
  v243 = v65;
  v242(v66, v247, v241);
  sub_A761C(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  v75 = v230;
  sub_3EC574();
  sub_FACC(v75, v48 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  sub_3EBE04();
  v76 = sub_3EBDC4();
  v78 = v77;
  v79 = v237;
  v80 = v252;
  (v252)(v64, v237);
  v224 = v48;
  v81 = (v48 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  *v81 = v76;
  v81[1] = v78;
  v209 = v81;
  v82 = v229;
  sub_3EBE04();
  v83 = v231;
  sub_3EBD54();
  v244 = v59;
  v80(v82, v79);
  v84 = sub_3ECED4();
  v85 = *(v84 - 8);
  v230 = *(v85 + 6);
  v86 = v230(v83, 1, v84);
  v228 = v85;
  v229 = v84;
  if (v86 == 1)
  {
    sub_FCF8(v83, &qword_4EDC98);
    v87 = 0;
  }

  else
  {
    v87 = sub_3ECEA4();
    (*(v85 + 1))(v83, v84);
  }

  v208 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles;
  v88 = v224;
  *(v224 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v87;
  sub_3EBE04();
  v89 = sub_3EBDC4();
  v91 = v90;
  v92 = v237;
  v93 = v252;
  (v252)(v64, v237);
  v94 = (v88 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v94 = v89;
  v94[1] = v91;
  sub_3EBE04();
  v95 = sub_3EBDC4();
  v97 = v96;
  v93(v64, v92);
  v98 = (v88 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v98 = v95;
  v98[1] = v97;
  v99 = v232;
  sub_3EBE04();
  v100 = v233;
  sub_3EBD54();
  v93(v99, v92);
  v101 = v229;
  if (v230(v100, 1, v229) == 1)
  {
    sub_FCF8(v100, &qword_4EDC98);
    v102 = 0;
  }

  else
  {
    v102 = sub_3ECEA4();
    v228[1](v100, v101);
  }

  v103 = v224;
  *(v224 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = v102;
  sub_3EBE04();
  v104 = sub_3EBDC4();
  v106 = v105;
  v107 = v237;
  v108 = v252;
  (v252)(v64, v237);
  v109 = (v103 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v109 = v104;
  v109[1] = v106;
  v207 = v109;
  sub_3EBE04();
  v242(v240, v247, v241);
  sub_A72A8();
  sub_3EC574();
  *(v103 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = v249;
  sub_3EBE04();
  v110 = sub_3EBDC4();
  v112 = v111;
  v108(v64, v107);
  v113 = (v103 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v113 = v110;
  v113[1] = v112;
  sub_3EBE04();
  v114 = sub_3EBD64();
  v108(v64, v107);
  v115 = v103 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v115 = v114;
  *(v115 + 4) = BYTE4(v114) & 1;
  sub_3EBE04();
  v116 = sub_3EBD44();
  LOBYTE(v112) = v117;
  v118 = v107;
  v108(v64, v107);
  v119 = v103 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  v120 = v64;
  *v119 = v116;
  *(v119 + 8) = v112 & 1;
  sub_3EBE04();
  v121 = v245;
  v228 = *(v245 + 16);
  v233 = (v245 + 16);
  v122 = v238;
  (v228)(v238, v120, v107);
  v123 = v240;
  v242(v240, v247, v241);
  v124 = *(v121 + 80);
  v125 = (v124 + 16) & ~v124;
  v126 = v225;
  v127 = *(v225 + 80);
  v232 = v125;
  v128 = ((v234 + v127 + v125) & ~v127);
  v231 = (v124 | v127);
  v129 = swift_allocObject();
  v230 = *(v121 + 32);
  v245 = v121 + 32;
  v230(v129 + v125, v122, v118);
  v130 = v120;
  v229 = *(v126 + 32);
  v234 = v126 + 32;
  v131 = v241;
  (v229)(&v128[v129], v123, v241);
  v132 = v236;
  sub_3ECB34();
  (v252)(v120, v118);
  v133 = v211;
  swift_beginAccess();
  sub_51F9C(v132, v133, &qword_4EED80);
  swift_endAccess();
  sub_3EBE04();
  v134 = v238;
  v135 = v118;
  v136 = v228;
  (v228)(v238, v120, v118);
  v137 = v240;
  v242(v240, v247, v131);
  v227 = v128;
  v138 = swift_allocObject();
  v230(&v232[v138], v134, v135);
  (v229)(&v128[v138], v137, v131);
  v139 = v223;
  sub_3ECB34();
  (v252)(v120, v135);
  v140 = v213;
  swift_beginAccess();
  sub_51F9C(v139, v140, &qword_4EED88);
  swift_endAccess();
  sub_3EBE04();
  v141 = v238;
  (v136)(v238, v120, v135);
  v142 = v240;
  v143 = v247;
  v144 = v131;
  v242(v240, v247, v131);
  v145 = v227;
  v146 = swift_allocObject();
  v147 = v141;
  v148 = v135;
  v230(&v232[v146], v147, v135);
  v149 = v142;
  (v229)(&v145[v146], v142, v144);
  v150 = v236;
  sub_3ECB34();
  v151 = v148;
  (v252)(v130, v148);
  v152 = v214;
  swift_beginAccess();
  sub_51F9C(v150, v152, &qword_4EED80);
  swift_endAccess();
  sub_3EBE04();
  v153 = v238;
  (v228)(v238, v130, v148);
  v154 = v149;
  v155 = v143;
  v156 = v242;
  v242(v149, v155, v144);
  v157 = v227;
  v158 = swift_allocObject();
  v230(&v232[v158], v153, v151);
  v159 = &v157[v158];
  v160 = v144;
  v161 = v229;
  (v229)(v159, v149, v144);
  v162 = v236;
  sub_3ECB34();
  (v252)(v130, v151);
  v163 = v215;
  swift_beginAccess();
  sub_51F9C(v162, v163, &qword_4EED80);
  swift_endAccess();
  sub_3EBE04();
  v164 = v238;
  (v228)(v238, v130, v151);
  v165 = v154;
  v156(v154, v247, v160);
  v166 = v227;
  v167 = swift_allocObject();
  v168 = v164;
  v169 = v151;
  v230(&v232[v167], v168, v151);
  v161(&v166[v167], v165, v160);
  v170 = v236;
  sub_3ECB34();
  v171 = v252;
  (v252)(v130, v151);
  v172 = v216;
  swift_beginAccess();
  sub_51F9C(v170, v172, &qword_4EED80);
  swift_endAccess();
  sub_3EBE04();
  v173 = v238;
  (v228)(v238, v130, v151);
  v174 = v241;
  v242(v165, v247, v241);
  v175 = v227;
  v176 = swift_allocObject();
  v230(&v232[v176], v173, v169);
  (v229)(&v175[v176], v165, v174);
  v177 = v236;
  sub_3ECB34();
  v171(v130, v169);
  v178 = v217;
  swift_beginAccess();
  sub_51F9C(v177, v178, &qword_4EED80);
  swift_endAccess();
  v179 = v218;
  sub_3EBE04();
  v180 = sub_3EBDC4();
  v182 = v181;
  v171(v179, v169);
  if (v182)
  {
    v183 = v224;
  }

  else
  {
    v184 = v224;
    v185 = *(v224 + v210);
    v186 = *v209;
    v187 = v209[1];
    v188 = *(v224 + v208);
    v189 = v207[1];
    v245 = *v207;

    v183 = v184;
    if (sub_3E94A4())
    {

      v190 = v204;
      sub_3E5FB4();
      v180 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v182 = v191;
      (*(v205 + 8))(v190, v206);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
      v192 = swift_allocObject();
      *(v192 + 16) = xmmword_3F5630;
      *&v249 = v185;
      sub_17A28();
      *(v192 + 32) = sub_3EE1F4();
      *(v192 + 40) = v193;
      *&v249 = v192;
      if (v187)
      {
        v192 = sub_DFAE8(&dword_0 + 1, 2, 1, v192);
        *(v192 + 16) = 2;
        *(v192 + 48) = v186;
        *(v192 + 56) = v187;
        *&v249 = v192;
      }

      if (v188)
      {
        sub_40D60(v188);
        v192 = v249;
      }

      if (v189)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v192 = sub_DFAE8(0, *(v192 + 16) + 1, 1, v192);
        }

        v195 = *(v192 + 16);
        v194 = *(v192 + 24);
        if (v195 >= v194 >> 1)
        {
          v192 = sub_DFAE8((v194 > 1), v195 + 1, 1, v192);
        }

        *(v192 + 16) = v195 + 1;
        v196 = v192 + 16 * v195;
        *(v196 + 32) = v245;
        *(v196 + 40) = v189;
        *&v249 = v192;
      }

      v248 = v192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
      sub_9809C();
      v180 = sub_3ED134();
      v182 = v197;
    }
  }

  *(v183 + 16) = v180;
  *(v183 + 24) = v182;
  v198 = v246;
  sub_3EBE04();
  v199 = v241;
  v200 = v247;
  v242(v240, v247, v241);
  v201 = v221;
  sub_3EC574();
  sub_FBD0(v201, v220, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  (*(v225 + 8))(v200, v199);
  (v252)(v198, v237);
  sub_FCF8(v201, &unk_4E9170);
  return v183;
}

uint64_t LegacyLockup.deinit()
{

  sub_FCF8(v0 + 32, &qword_4EDE00);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics, &qword_4EED90);
  sub_A67F0(*(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent), *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent + 8), *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent + 16), *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent + 24));
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction, &qword_4EED80);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__clickAction, &qword_4EED88);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction, &qword_4EED80);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction, &qword_4EED80);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__previewAction, &qword_4EED80);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction, &qword_4EED80);
  return v0;
}

uint64_t sub_A4CD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  v4 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  swift_beginAccess();
  sub_FBD0(v0 + v4, v3, &qword_4EED90);
  sub_3ECAF4();
  return sub_FCF8(v3, &qword_4EED90);
}

uint64_t sub_A4DC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  v4 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__clickAction;
  swift_beginAccess();
  sub_FBD0(v0 + v4, v3, &qword_4EED88);
  sub_3ECAF4();
  return sub_FCF8(v3, &qword_4EED88);
}

uint64_t sub_A4EC0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  v6 = *a1;
  swift_beginAccess();
  sub_FBD0(v1 + v6, v5, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v5, &qword_4EED80);
  return v8;
}

uint64_t sub_A4FC8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  if (sub_3E94A4())
  {
    goto LABEL_11;
  }

  v7 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  swift_beginAccess();
  sub_FBD0(v1 + v7, v5, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v5, &qword_4EED80);
  if (!v16)
  {
    goto LABEL_11;
  }

  type metadata accessor for PodcastContextAction();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for LibraryPodcastContextAction();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for EpisodeContextAction();
      if (swift_dynamicCastClass() || (type metadata accessor for LibraryEpisodeContextAction(), swift_dynamicCastClass()))
      {
        sub_3E6EC4();
        v16 = v6;
        sub_17A28();
        v16 = sub_3EE1F4();
        v17 = v12;
        v9 = &qword_4EF478;
        v10 = &type metadata accessor for EpisodeEntity;
        goto LABEL_6;
      }

LABEL_11:
      v11 = 1;
      goto LABEL_12;
    }
  }

  sub_3E6D44();
  v16 = v6;
  sub_17A28();
  v16 = sub_3EE1F4();
  v17 = v8;
  v9 = &qword_4E9B80;
  v10 = &type metadata accessor for ShowEntity;
LABEL_6:
  sub_A761C(v9, v10);
  sub_3E5754();

  v11 = 0;
LABEL_12:
  v13 = sub_3E5764();
  return (*(*(v13 - 8) + 56))(a1, v11, 1, v13);
}

uint64_t sub_A52A0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v2);
  v4 = &v8 - v3;
  v5 = *a1;
  v6 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  swift_beginAccess();
  sub_FBD0(v5 + v6, v4, &qword_4EED90);
  sub_3ECAF4();
  return sub_FCF8(v4, &qword_4EED90);
}

uint64_t sub_A5394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_FBD0(a1, &v9 - v6, &unk_4E9170);
  sub_FBD0(v7, v4, &unk_4E9170);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  swift_endAccess();
  return sub_FCF8(v7, &unk_4E9170);
}

uint64_t LegacyLockup.referencedContent.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent);
  sub_A67D0(v1, *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent + 8), *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent + 16), *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent + 24));
  return v1;
}

uint64_t LegacyLockup.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);

  return v1;
}

uint64_t LegacyLockup.eyebrow.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);

  return v1;
}

uint64_t LegacyLockup.titleAccessibilityLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);

  return v1;
}

uint64_t LegacyLockup.ordinal.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);

  return v1;
}

uint64_t LegacyLockup.releaseFrequency.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);

  return v1;
}

uint64_t sub_A5724(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v2);
  v4 = &v8 - v3;
  v5 = *a1;
  v6 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__clickAction;
  swift_beginAccess();
  sub_FBD0(v5 + v6, v4, &qword_4EED88);
  sub_3ECAF4();
  return sub_FCF8(v4, &qword_4EED88);
}

uint64_t sub_A5818(uint64_t a1)
{
  sub_FBD0(a1, v3, &qword_4EDE00);
  sub_FBD0(v3, v2, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  return sub_FCF8(v3, &qword_4EDE00);
}

uint64_t sub_A58D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  v9 = *a1;
  v10 = *a2;
  swift_beginAccess();
  sub_FBD0(v9 + v10, v8, &qword_4EED80);
  sub_3ECAF4();
  result = sub_FCF8(v8, &qword_4EED80);
  *a3 = v12;
  return result;
}

uint64_t sub_A59D4()
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  return swift_endAccess();
}

uint64_t LegacyLockup.__allocating_init(id:adamId:referencedContent:isExplicit:isFollowed:icon:title:subtitles:eyebrow:titleAccessibilityLabel:genreNames:ordinal:releaseDate:releaseFrequency:rating:ratingCount:buttonAction:clickAction:contextAction:playAction:previewAction:subtitleAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, int a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v87 = a8;
  v115 = a7;
  v114 = a6;
  v112 = a5;
  v108 = a4;
  v106 = a3;
  v82 = a1;
  v104 = a33;
  v103 = a32;
  v102 = a31;
  v101 = a30;
  v100 = a29;
  v113 = a28;
  v110 = a27;
  v97 = a26;
  v96 = a25;
  v95 = a24;
  v94 = a23;
  v93 = a22;
  v109 = a21;
  v92 = a20;
  v91 = a19;
  v90 = a18;
  v89 = a17;
  v88 = a16;
  v86 = a15;
  v85 = a14;
  v84 = a13;
  v107 = a12;
  v105 = a11;
  v111 = a10;
  v83 = a9;
  v34 = sub_3E5FC4();
  v81 = *(v34 - 8);
  __chkstk_darwin(v34);
  v36 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v37 - 8);
  v39 = &v80 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v80 - v41;
  v43 = swift_allocObject();
  *(v43 + 32) = 0u;
  *(v43 + 48) = 0u;
  *(v43 + 64) = 0;
  v44 = sub_3EC634();
  (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
  sub_FBD0(v42, v39, &unk_4E9170);
  v98 = v39;
  sub_3ECAE4();
  v99 = v42;
  sub_FCF8(v42, &unk_4E9170);
  *&v117[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  v118 = 0;
  memset(v117, 0, sizeof(v117));
  sub_FBD0(v117, &v116, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v117, &qword_4EDE00);
  *&v117[0] = 0;
  sub_3ECAE4();
  *&v117[0] = 0;
  sub_3ECAE4();
  *&v117[0] = 0;
  sub_3ECAE4();
  *&v117[0] = 0;
  sub_3ECAE4();
  if (a2)
  {
    v45 = v92;
    v46 = v91;
    v47 = v84;
    v48 = v106;
    v49 = v82;
  }

  else
  {
    v50 = v81;
    v48 = v106;
    v51 = sub_3E94A4();
    v47 = v84;
    if (v51)
    {
      sub_3E5FB4();
      v49 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      a2 = v52;
      (*(v50 + 8))(v36, v34);
      v45 = v92;
      v46 = v91;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_3F5630;
      *&v117[0] = v48;
      sub_17A28();
      *(v53 + 32) = sub_3EE1F4();
      *(v53 + 40) = v54;
      *&v117[0] = v53;
      v46 = v91;
      v55 = v107;
      if (v107)
      {

        v53 = sub_DFAE8(&dword_0 + 1, 2, 1, v53);
        *(v53 + 16) = 2;
        *(v53 + 48) = v105;
        *(v53 + 56) = v55;
        *&v117[0] = v53;
      }

      v45 = v92;
      if (v47)
      {

        sub_40D60(v56);
        v53 = *&v117[0];
      }

      if (v45)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_DFAE8(0, *(v53 + 16) + 1, 1, v53);
        }

        v58 = *(v53 + 16);
        v57 = *(v53 + 24);
        if (v58 >= v57 >> 1)
        {
          v53 = sub_DFAE8((v57 > 1), v58 + 1, 1, v53);
        }

        *(v53 + 16) = v58 + 1;
        v59 = v53 + 16 * v58;
        *(v59 + 32) = v46;
        *(v59 + 40) = v45;
        *&v117[0] = v53;
      }

      v116 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
      sub_9809C();
      v49 = sub_3ED134();
      a2 = v60;

      v48 = v106;
    }
  }

  *(v43 + 16) = v49;
  *(v43 + 24) = a2;
  *(v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v48;
  v61 = v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v62 = v108;
  v63 = v112;
  *v61 = v108;
  *(v61 + 8) = v63;
  v64 = v114;
  *(v61 + 16) = v114;
  v65 = v115;
  *(v61 + 24) = v115;
  *(v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v87 & 1;
  *(v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = v83;
  sub_FBD0(v111, v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v66 = (v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v67 = v107;
  *v66 = v105;
  v66[1] = v67;
  *(v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v47;
  v68 = (v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  v69 = v86;
  *v68 = v85;
  v68[1] = v69;
  v70 = (v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  v71 = v89;
  *v70 = v88;
  v70[1] = v71;
  *(v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = v90;
  v72 = (v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v72 = v46;
  v72[1] = v45;
  *(v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = v109;
  v73 = (v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  v74 = v94;
  *v73 = v93;
  v73[1] = v74;
  v75 = v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  BYTE4(v74) = BYTE4(v95);
  *v75 = v95;
  *(v75 + 4) = BYTE4(v74) & 1;
  v76 = v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v76 = v96;
  *(v76 + 8) = v97 & 1;
  v116 = v110;
  swift_beginAccess();
  sub_A67D0(v62, v63, v64, v65);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v113, v117, &qword_4EDE00);
  sub_FBD0(v117, &v116, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v117, &qword_4EDE00);
  v116 = v100;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v116 = v101;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v116 = v102;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v116 = v103;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v77 = v104;
  v78 = v99;
  sub_FBD0(v104, v99, &unk_4E9170);
  sub_FBD0(v78, v98, &unk_4E9170);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  swift_endAccess();

  sub_A67F0(v108, v112, v114, v115);
  sub_FCF8(v77, &unk_4E9170);
  sub_FCF8(v113, &qword_4EDE00);
  sub_FCF8(v111, &qword_4F1D50);
  sub_FCF8(v78, &unk_4E9170);
  return v43;
}

uint64_t LegacyLockup.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LegacyLockup.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t LegacyLockup.__deallocating_deinit()
{
  LegacyLockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_A66A4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 448))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_A66E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v1);
  v3 = &v7 - v2;
  v4 = *v0;
  v5 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  swift_beginAccess();
  sub_FBD0(v4 + v5, v3, &qword_4EED90);
  sub_3ECAF4();
  return sub_FCF8(v3, &qword_4EED90);
}

id sub_A67D0(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_3DE90(a2, a3, a4);
  }

  return result;
}

void sub_A67F0(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_3DEF8(a2, a3, a4);
  }
}

uint64_t LegacyLockup.subtitle.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_9809C();
  v1 = sub_3ED134();

  return v1;
}

uint64_t LegacyLockup.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for LegacyLockup();
  *a1 = v1;
}

uint64_t sub_A6930()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v1);
  v3 = &v7 - v2;
  v4 = *v0;
  v5 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__clickAction;
  swift_beginAccess();
  sub_FBD0(v4 + v5, v3, &qword_4EED88);
  sub_3ECAF4();
  return sub_FCF8(v3, &qword_4EED88);
}

uint64_t sub_A6A20@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for LegacyLockup();
  *a1 = v3;
}

uint64_t sub_A6A68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v1);
  v3 = &v7 - v2;
  v4 = *v0;
  v5 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__previewAction;
  swift_beginAccess();
  sub_FBD0(v4 + v5, v3, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v3, &qword_4EED80);
  return v7;
}

uint64_t LegacyLockup.metricsName(sender:)()
{
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_A6BEC()
{
  v1 = (*v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t LegacyLockup.generateItemLevelImpressionFields(interactionView:)@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_3EC544();
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EC5F4();
  __chkstk_darwin(v9 - 8);
  v60 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v14 - 8);
  v16 = &v56 - v15;
  v17 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  swift_beginAccess();
  sub_FBD0(v2 + v17, v13, &qword_4EED90);
  sub_3ECAF4();
  sub_FCF8(v13, &qword_4EED90);
  v18 = sub_3EC634();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) != 1)
  {
    sub_3ED9D4();
    sub_3B590();
    v20 = sub_3EE0C4();
    sub_3E9754();
  }

  sub_FCF8(v16, &unk_4E9170);
  v61 = v8;
  v62 = a2;
  v58 = v19;
  v59 = v18;
  v21 = v3;
  if (a1 <= 4u)
  {
    if (a1 - 2 >= 3)
    {
      goto LABEL_11;
    }

LABEL_10:
    v22 = sub_3E85B4();
    goto LABEL_12;
  }

  if (a1 != 5)
  {
    if (a1 != 7)
    {
      if (a1 == 6)
      {
        v22 = sub_3E8594();
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v22 = sub_3E8554();
LABEL_12:
  v24 = v22;
  v25 = v23;
  v57 = v22;
  v26 = sub_3E7844();
  v28 = v27;
  v66 = &type metadata for String;
  *&v65 = v24;
  *(&v65 + 1) = v25;
  sub_1FB90(&v65, v64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = _swiftEmptyDictionarySingleton;
  sub_39B88(v64, v26, v28, isUniquelyReferenced_nonNull_native);

  v30 = v63;
  v31 = sub_3E7924();
  v33 = v32;
  v34 = v21;
  v35 = *(v21 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8);
  if (v35)
  {
    v36 = *(v21 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  }

  else
  {
    v36 = 0;
  }

  v66 = &type metadata for String;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  *&v65 = v36;
  *(&v65 + 1) = v37;
  sub_1FB90(&v65, v64);
  swift_bridgeObjectRetain_n();
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v63 = v30;
  sub_39B88(v64, v31, v33, v38);

  v56 = v63;
  v39 = sub_3E7874();
  v41 = v40;
  v42 = sub_3E7A14();
  v66 = &type metadata for String;
  *&v65 = v42;
  *(&v65 + 1) = v43;
  sub_1FB90(&v65, v64);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v63 = _swiftEmptyDictionarySingleton;
  sub_39B88(v64, v39, v41, v44);

  v45 = v63;
  v46 = sub_3E7924();
  v48 = v47;
  v66 = &type metadata for String;
  *&v65 = v36;
  *(&v65 + 1) = v37;
  sub_1FB90(&v65, v64);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v63 = v45;
  sub_39B88(v64, v46, v48, v49);

  v50 = sub_3E7854();
  v52 = v51;
  v66 = &type metadata for String;
  *&v65 = v57;
  *(&v65 + 1) = v25;
  sub_1FB90(&v65, v64);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v63 = _swiftEmptyDictionarySingleton;
  sub_39B88(v64, v50, v52, v53);

  *&v65 = *(v34 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  sub_17A28();
  sub_3EE1F4();
  sub_3EC5D4();
  sub_3EC534();
  v54 = v62;
  sub_3EC604();
  return (*(v58 + 56))(v54, 0, 1, v59);
}

unint64_t sub_A7254()
{
  result = qword_4EF828;
  if (!qword_4EF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF828);
  }

  return result;
}

unint64_t sub_A72A8()
{
  result = qword_4EF830;
  if (!qword_4EF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF830);
  }

  return result;
}

uint64_t sub_A7318()
{
  sub_3EBDF4();
  sub_3EBF94();
  return sub_E2680();
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_3EBDF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_3EBF94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t type metadata accessor for LegacyLockup()
{
  result = qword_4EF870;
  if (!qword_4EF870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A75C4(uint64_t a1)
{
  result = sub_A761C(&qword_4EF840, type metadata accessor for LegacyLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_A761C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A7664(uint64_t a1)
{
  result = sub_A761C(&qword_4EF838, type metadata accessor for LegacyLockup);
  *(a1 + 8) = result;
  return result;
}

void sub_A7814()
{
  sub_A7C90(319, &qword_4EF880, &unk_4E9170);
  if (v0 <= 0x3F)
  {
    sub_4EC44();
    if (v1 <= 0x3F)
    {
      sub_A7C90(319, &qword_4EF4C0, &qword_4EF4C8);
      if (v2 <= 0x3F)
      {
        sub_A7C90(319, &unk_4EF888, &qword_4EDE00);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of LegacyLockup.__allocating_init(id:adamId:referencedContent:isExplicit:isFollowed:icon:title:subtitles:eyebrow:titleAccessibilityLabel:genreNames:ordinal:releaseDate:releaseFrequency:rating:ratingCount:buttonAction:clickAction:contextAction:playAction:previewAction:subtitleAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 + 440);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

void sub_A7C90(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_3EC504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t LibraryEpisodeLockup.uuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);

  return v1;
}

uint64_t LibraryEpisodeLockup.podcastUuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);

  return v1;
}

uint64_t LibraryEpisodeLockup.metricsChannelAdamId.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) == 2)
  {
    return *(v0 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId);
  }

  else
  {
    return 0;
  }
}

uint64_t LibraryEpisodeLockup.__allocating_init(uuid:podcastUuid:podcastAdamId:channelAdamId:adamId:episodeType:duration:seasonNumber:episodeNumber:mediaType:icon:showUberArtwork:episodeArtwork:title:subtitles:ordinal:rating:buttonAction:clickAction:titleAction:playAction:contextAction:previewAction:presentDetailsAction:subtitleAction:caption:summary:isExplicit:showTypeIsSerial:assetFileUrl:releaseDate:episodeEntitlementState:hasFreeVersion:subscriptionName:channelName:showTitle:showDisplayType:listenNowReason:listContext:referenceTime:playerTime:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, unsigned __int8 a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, unsigned __int8 a38, unsigned __int8 a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned __int8 a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, unsigned __int8 a50, uint64_t a51, uint64_t a52, uint64_t a53, unsigned __int8 a54, uint64_t a55, unsigned __int8 a56, uint64_t a57)
{
  v216 = a8;
  LODWORD(v202) = a7;
  v199 = a6;
  v198 = a5;
  v197 = a4;
  v196 = a3;
  v209 = a57;
  v210 = a52;
  v225 = a51;
  v211 = a41;
  v212 = a28;
  v203 = a21;
  v213 = a20;
  v214 = a19;
  v215 = a18;
  LODWORD(v194) = a9;
  v169 = sub_3E6B04();
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v167 = v165 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v60 - 8);
  v204 = v165 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v223 = v165 - v63;
  __chkstk_darwin(v64);
  v222 = v165 - v65;
  __chkstk_darwin(v66);
  v224 = v165 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF420);
  __chkstk_darwin(v68 - 8);
  v221 = v165 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v70 - 8);
  v200 = v165 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v201 = v165 - v73;
  __chkstk_darwin(v74);
  v208 = v165 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v76 - 8);
  v217 = v165 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v220 = v165 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v80 - 8);
  v218 = v165 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v82);
  v207 = v165 - v83;
  __chkstk_darwin(v84);
  v206 = v165 - v85;
  __chkstk_darwin(v86);
  v219 = v165 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470);
  __chkstk_darwin(v88 - 8);
  v205 = v165 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v90);
  v92 = v165 - v91;
  v93 = swift_allocObject();
  v94 = (v93 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);
  *v94 = a1;
  v94[1] = a2;
  v95 = (v93 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
  v96 = v197;
  *v95 = v196;
  v95[1] = v96;
  *(v93 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastAdamId) = v198;
  v97 = v93 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId;
  *v97 = v199;
  *(v97 + 8) = v202 & 1;
  *(v93 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_presentDetailsAction) = a33;
  v198 = a40;
  sub_FBD0(a40, v93 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, &unk_4E9EE0);
  v230 = a1;
  v231 = a2;
  v197 = a33;

  v232._countAndFlagsBits = 45;
  v232._object = 0xE100000000000000;
  sub_3ED3D4(v232);
  v191 = a35;
  if (a36)
  {
    v98 = a35;
  }

  else
  {
    v98 = 7104878;
  }

  if (a36)
  {
    v99 = a36;
  }

  else
  {
    v99 = 0xE300000000000000;
  }

  v195 = a36;

  v233._countAndFlagsBits = v98;
  v233._object = v99;
  sub_3ED3D4(v233);

  v234._countAndFlagsBits = 45;
  v234._object = 0xE100000000000000;
  sub_3ED3D4(v234);
  v199 = a42;
  v229 = a42;
  v235._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v235);

  v236._countAndFlagsBits = 45;
  v236._object = 0xE100000000000000;
  sub_3ED3D4(v236);
  if (a22)
  {
    v100 = v203;
  }

  else
  {
    v100 = 7104878;
  }

  if (a22)
  {
    v101 = a22;
  }

  else
  {
    v101 = 0xE300000000000000;
  }

  v196 = a22;

  v237._countAndFlagsBits = v100;
  v237._object = v101;
  sub_3ED3D4(v237);

  v238._countAndFlagsBits = 45;
  v238._object = 0xE100000000000000;
  sub_3ED3D4(v238);
  sub_FBD0(v225, v92, &qword_4EF470);
  v102 = sub_3E8D24();
  v103 = *(v102 - 8);
  v104 = *(v103 + 48);
  v165[1] = v103 + 48;
  v165[0] = v104;
  if (v104(v92, 1, v102) == 1)
  {
    sub_FCF8(v92, &qword_4EF470);
    v105 = 0xE400000000000000;
    v106._countAndFlagsBits = 1701736302;
  }

  else
  {
    v107 = sub_3E8D14();
    v105 = v108;
    (*(v103 + 8))(v92, v102);
    v106._countAndFlagsBits = v107;
  }

  v166 = v102;
  LODWORD(v190) = a50;
  v189 = a49;
  v188 = a48;
  v182 = a47;
  v181 = a46;
  v180 = a45;
  v179 = a44;
  v178 = a43;
  LODWORD(v187) = a39;
  v202 = a29;
  v175 = a17;
  v171 = a16;
  v170 = a15;
  v174 = a14;
  v172 = a13;
  v177 = a12;
  v176 = a11;
  v173 = a10;
  v106._object = v105;
  sub_3ED3D4(v106);

  v193 = v230;
  v192 = v231;
  if (v194)
  {
    v216 = sub_3E9484();
  }

  v194 = a26;
  v186 = a56;
  v185 = a55;
  v184 = a54;
  v183 = a53;
  sub_FBD0(v215, v219, &qword_4F1D50);
  v109 = v206;
  sub_FBD0(v214, v206, &qword_4F1D50);
  v110 = v207;
  sub_FBD0(v213, v207, &qword_4F1D50);
  sub_FBD0(v212, &v230, &qword_4EDE00);
  sub_FBD0(v211, v220, &qword_4EF460);
  v111 = v205;
  sub_FBD0(v225, v205, &qword_4EF470);
  v112 = v208;
  sub_FBD0(v210, v208, &qword_4EF468);
  v113 = sub_3E9104();
  (*(*(v113 - 8) + 56))(v221, 1, 1, v113);
  sub_FBD0(v209, v224, &unk_4E9170);
  v114 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  v229 = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled) = 0;
  v115 = v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber;
  *v115 = v170;
  *(v115 + 8) = v171 & 1;
  v116 = v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber;
  *v116 = v172;
  *(v116 + 8) = v174 & 1;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType) = v173;
  sub_FBD0(v109, v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, &qword_4F1D50);
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType) = v175;
  v117 = (v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v118 = v195;
  *v117 = v191;
  v117[1] = v118;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary) = a37;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_transcript) = 0;
  swift_beginAccess();
  v119 = v202;

  v195 = a37;
  sub_FCF8(v93 + v114, &qword_4EED80);
  *&v227[0] = v119;
  sub_3ECAE4();
  swift_endAccess();
  v120 = v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration;
  *v120 = v176;
  *(v120 + 8) = v177 & 1;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) = v199;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion) = v178 & 1;
  v121 = (v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v122 = v180;
  *v121 = v179;
  v121[1] = v122;
  v123 = (v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v124 = v182;
  *v123 = v181;
  v123[1] = v124;
  v125 = (v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v126 = v189;
  *v125 = v188;
  v125[1] = v126;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showDisplayType) = v190;
  *(v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial) = v187 & 1;
  sub_FBD0(v111, v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, &qword_4EF470);
  sub_FBD0(v110, v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, &qword_4F1D50);
  v127 = v200;
  sub_FBD0(v112, v200, &qword_4EF468);
  v128 = sub_3E7CB4();
  v129 = *(v128 - 8);
  v130 = *(v129 + 48);
  if (v130(v127, 1, v128) == 1)
  {
    v131 = 1;
    v132 = (v165[0])(v111, 1, v166);
    v133 = v201;
    if (v132 != 1)
    {
      *v201 = 0;
      (*(v129 + 104))(v133, enum case for EyebrowBuilder.ListContext.listenNow(_:), v128);
      v131 = 0;
    }

    (*(v129 + 56))(v133, v131, 1, v128);
    v134 = v130(v127, 1, v128);
    v135 = v217;
    if (v134 != 1)
    {
      sub_FCF8(v127, &qword_4EF468);
    }
  }

  else
  {
    v133 = v201;
    (*(v129 + 32))(v201, v127, v128);
    (*(v129 + 56))(v133, 0, 1, v128);
    v135 = v217;
  }

  LODWORD(v179) = a38;
  v191 = a34;
  v190 = a32;
  v188 = a31;
  v189 = a30;
  v187 = a27;
  v182 = a25;
  v181 = a24;
  v180 = a23;
  sub_FACC(v133, v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, &qword_4EF468);
  v136 = v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime;
  *v136 = v183;
  *(v136 + 8) = v184 & 1;
  v137 = v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime;
  *v137 = v185;
  *(v137 + 8) = v186 & 1;
  sub_FBD0(v221, v93 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, &qword_4EF420);
  v138 = sub_3E82A4();
  v201 = v139;
  v200 = v140;
  LODWORD(v199) = v141;
  sub_FBD0(v219, v218, &qword_4F1D50);
  sub_FBD0(v220, v135, &qword_4EF460);
  v142 = sub_3E5F84();
  v143 = *(v142 - 8);
  if ((*(v143 + 48))(v135, 1, v142) == 1)
  {
    sub_FCF8(v135, &qword_4EF460);
    v217 = 0;
  }

  else
  {
    v144 = v167;
    (*(v143 + 16))(v167, v135, v142);
    (*(v168 + 104))(v144, enum case for LazyDate.State.valid(_:), v169);
    v217 = sub_3E6AF4();
    (*(v143 + 8))(v135, v142);
  }

  sub_FBD0(&v230, &v229, &qword_4EDE00);
  sub_FBD0(v224, v222, &unk_4E9170);
  v145 = v138;
  *(v93 + 32) = 0u;
  *(v93 + 48) = 0u;
  *(v93 + 64) = 0;
  v146 = sub_3EC634();
  v147 = v223;
  (*(*(v146 - 8) + 56))(v223, 1, 1, v146);
  sub_FBD0(v147, v204, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v147, &unk_4E9170);
  *&v227[0] = 0;
  sub_3ECAE4();
  v228 = 0;
  memset(v227, 0, sizeof(v227));
  sub_FBD0(v227, &v226, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v227, &qword_4EDE00);
  *&v227[0] = 0;
  sub_3ECAE4();
  *&v227[0] = 0;
  sub_3ECAE4();
  *&v227[0] = 0;
  sub_3ECAE4();
  *&v227[0] = 0;
  sub_3ECAE4();
  v148 = v192;
  *(v93 + 16) = v193;
  *(v93 + 24) = v148;
  *(v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v216;
  v149 = v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v150 = v201;
  *v149 = v145;
  *(v149 + 8) = v150;
  v151 = v200;
  *(v149 + 16) = v200;
  v152 = v199;
  *(v149 + 24) = v199;
  *(v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v179 & 1;
  *(v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v218, v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v153 = (v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v154 = v196;
  *v153 = v203;
  v153[1] = v154;
  *(v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v180;
  v155 = (v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v155 = 0;
  v155[1] = 0;
  v156 = (v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v156 = 0;
  v156[1] = 0;
  *(v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v157 = (v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v158 = v182;
  *v157 = v181;
  v157[1] = v158;
  v159 = v217;
  *(v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = v217;
  v217 = v159;
  v160 = (v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v160 = 0;
  v160[1] = 0;
  v161 = v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  BYTE4(v158) = BYTE4(v194);
  *v161 = v194;
  *(v161 + 4) = BYTE4(v158) & 1;
  v162 = v93 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v162 = 0;
  *(v162 + 8) = 1;
  v226 = v187;
  swift_beginAccess();
  sub_3DE90(v150, v151, v152);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(&v229, v227, &qword_4EDE00);
  sub_FBD0(v227, &v226, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v227, &qword_4EDE00);
  v226 = v188;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v226 = v189;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v226 = v190;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v226 = v191;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v163 = v223;
  sub_FBD0(v222, v223, &unk_4E9170);
  sub_FBD0(v163, v204, &unk_4E9170);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  swift_endAccess();

  sub_3DEF8(v201, v200, v199);

  sub_FCF8(v209, &unk_4E9170);
  sub_FCF8(v210, &qword_4EF468);
  sub_FCF8(v225, &qword_4EF470);
  sub_FCF8(v211, &qword_4EF460);
  sub_FCF8(v198, &unk_4E9EE0);
  sub_FCF8(v212, &qword_4EDE00);
  sub_FCF8(v213, &qword_4F1D50);
  sub_FCF8(v214, &qword_4F1D50);
  sub_FCF8(v215, &qword_4F1D50);
  sub_FCF8(v223, &unk_4E9170);
  sub_FCF8(v222, &unk_4E9170);
  sub_FCF8(&v229, &qword_4EDE00);
  sub_FCF8(v218, &qword_4F1D50);
  sub_FCF8(v224, &unk_4E9170);
  sub_FCF8(v221, &qword_4EF420);
  sub_FCF8(v208, &qword_4EF468);
  sub_FCF8(v220, &qword_4EF460);
  sub_FCF8(&v230, &qword_4EDE00);
  sub_FCF8(v207, &qword_4F1D50);
  sub_FCF8(v206, &qword_4F1D50);
  sub_FCF8(v219, &qword_4F1D50);
  sub_FCF8(v205, &qword_4EF470);
  return v93;
}

uint64_t LibraryEpisodeLockup.init(uuid:podcastUuid:podcastAdamId:channelAdamId:adamId:episodeType:duration:seasonNumber:episodeNumber:mediaType:icon:showUberArtwork:episodeArtwork:title:subtitles:ordinal:rating:buttonAction:clickAction:titleAction:playAction:contextAction:previewAction:presentDetailsAction:subtitleAction:caption:summary:isExplicit:showTypeIsSerial:assetFileUrl:releaseDate:episodeEntitlementState:hasFreeVersion:subscriptionName:channelName:showTitle:showDisplayType:listenNowReason:listContext:referenceTime:playerTime:impressionMetrics:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, unsigned __int8 a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, unsigned __int8 a38, unsigned __int8 a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned __int8 a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, unsigned __int8 a50, uint64_t a51, uint64_t a52, uint64_t a53, unsigned __int8 a54, uint64_t a55, unsigned __int8 a56, uint64_t a57)
{
  v58 = v57;
  v250 = a8;
  LODWORD(v226) = a7;
  v222 = a6;
  v221 = a5;
  v217 = a4;
  v214 = a3;
  v234 = a57;
  v235 = a52;
  v249 = a51;
  v241 = a42;
  v236 = a41;
  v237 = a28;
  v228 = a21;
  v238 = a20;
  v239 = a19;
  v240 = a18;
  LODWORD(v213) = a9;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v218);
  v216 = &v181 - v61;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v220);
  v215 = &v181 - v62;
  v187 = sub_3E6B04();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v185 = &v181 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v219);
  v227 = &v181 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v65 - 8);
  v229 = &v181 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v247 = &v181 - v68;
  __chkstk_darwin(v69);
  v246 = &v181 - v70;
  __chkstk_darwin(v71);
  v248 = &v181 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF420);
  __chkstk_darwin(v73 - 8);
  v245 = &v181 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v75 - 8);
  v225 = &v181 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v223 = &v181 - v78;
  __chkstk_darwin(v79);
  v233 = &v181 - v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v81 - 8);
  v224 = &v181 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v244 = &v181 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v85 - 8);
  v242 = &v181 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v87);
  v232 = &v181 - v88;
  __chkstk_darwin(v89);
  v231 = &v181 - v90;
  __chkstk_darwin(v91);
  v243 = &v181 - v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470);
  __chkstk_darwin(v93 - 8);
  v230 = &v181 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v95);
  v97 = &v181 - v96;
  v98 = (v58 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);
  *v98 = a1;
  v98[1] = a2;
  v99 = (v58 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
  v100 = v217;
  *v99 = v214;
  v99[1] = v100;
  *(v58 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastAdamId) = v221;
  v101 = v58 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId;
  *v101 = v222;
  *(v101 + 8) = v226 & 1;
  *(v58 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_presentDetailsAction) = a33;
  v222 = a40;
  sub_FBD0(a40, v58 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, &unk_4E9EE0);
  v255 = a1;
  v256 = a2;
  v221 = a33;

  v257._countAndFlagsBits = 45;
  v257._object = 0xE100000000000000;
  sub_3ED3D4(v257);
  v210 = a35;
  if (a36)
  {
    v102 = a35;
  }

  else
  {
    v102 = 7104878;
  }

  if (a36)
  {
    v103 = a36;
  }

  else
  {
    v103 = 0xE300000000000000;
  }

  v214 = a36;

  v258._countAndFlagsBits = v102;
  v258._object = v103;
  sub_3ED3D4(v258);

  v259._countAndFlagsBits = 45;
  v259._object = 0xE100000000000000;
  sub_3ED3D4(v259);
  v254 = v241;
  v260._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v260);

  v261._countAndFlagsBits = 45;
  v261._object = 0xE100000000000000;
  sub_3ED3D4(v261);
  if (a22)
  {
    v104 = v228;
  }

  else
  {
    v104 = 7104878;
  }

  if (a22)
  {
    v105 = a22;
  }

  else
  {
    v105 = 0xE300000000000000;
  }

  v217 = a22;

  v262._countAndFlagsBits = v104;
  v262._object = v105;
  sub_3ED3D4(v262);

  v263._countAndFlagsBits = 45;
  v263._object = 0xE100000000000000;
  sub_3ED3D4(v263);
  sub_FBD0(v249, v97, &qword_4EF470);
  v106 = sub_3E8D24();
  v107 = *(v106 - 8);
  v108 = *(v107 + 48);
  v183 = v107 + 48;
  v182 = v108;
  if (v108(v97, 1, v106) == 1)
  {
    sub_FCF8(v97, &qword_4EF470);
    v109 = 0xE400000000000000;
    v110._countAndFlagsBits = 1701736302;
  }

  else
  {
    v111 = sub_3E8D14();
    v109 = v112;
    (*(v107 + 8))(v97, v106);
    v110._countAndFlagsBits = v111;
  }

  v184 = v106;
  LODWORD(v209) = a50;
  v208 = a49;
  v207 = a48;
  v205 = a47;
  v204 = a46;
  v201 = a45;
  v198 = a44;
  v197 = a43;
  LODWORD(v206) = a39;
  v194 = a37;
  v226 = a29;
  v193 = a17;
  v189 = a16;
  v188 = a15;
  v192 = a14;
  v190 = a13;
  v196 = a12;
  v195 = a11;
  v191 = a10;
  v110._object = v109;
  sub_3ED3D4(v110);

  v212 = v255;
  v211 = v256;
  if (v213)
  {
    v250 = sub_3E9484();
  }

  v213 = a26;
  v203 = a56;
  v202 = a55;
  v200 = a54;
  v199 = a53;
  sub_FBD0(v240, v243, &qword_4F1D50);
  v113 = v231;
  sub_FBD0(v239, v231, &qword_4F1D50);
  v114 = v232;
  sub_FBD0(v238, v232, &qword_4F1D50);
  sub_FBD0(v237, &v255, &qword_4EDE00);
  sub_FBD0(v236, v244, &qword_4EF460);
  v115 = v230;
  sub_FBD0(v249, v230, &qword_4EF470);
  v116 = v233;
  sub_FBD0(v235, v233, &qword_4EF468);
  v117 = sub_3E9104();
  (*(*(v117 - 8) + 56))(v245, 1, 1, v117);
  sub_FBD0(v234, v248, &unk_4E9170);
  v118 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  v254 = 0;
  type metadata accessor for Action();
  v119 = v227;
  sub_3ECAE4();
  sub_FACC(v119, v58 + v118, &qword_4EED80);
  *(v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled) = 0;
  v120 = v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber;
  *v120 = v188;
  *(v120 + 8) = v189 & 1;
  v121 = v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber;
  *v121 = v190;
  *(v121 + 8) = v192 & 1;
  *(v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType) = v191;
  sub_FBD0(v113, v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, &qword_4F1D50);
  *(v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType) = v193;
  v122 = (v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v123 = v214;
  *v122 = v210;
  v122[1] = v123;
  v124 = v194;
  *(v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary) = v194;
  *(v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_transcript) = 0;
  swift_beginAccess();
  v125 = v226;

  v214 = v124;
  sub_FCF8(v58 + v118, &qword_4EED80);
  *&v252[0] = v125;
  sub_3ECAE4();
  swift_endAccess();
  v126 = v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration;
  *v126 = v195;
  *(v126 + 8) = v196 & 1;
  *(v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) = v241;
  *(v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion) = v197 & 1;
  v127 = (v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v128 = v201;
  *v127 = v198;
  v127[1] = v128;
  v129 = (v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v130 = v205;
  *v129 = v204;
  v129[1] = v130;
  v131 = (v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v132 = v208;
  *v131 = v207;
  v131[1] = v132;
  *(v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showDisplayType) = v209;
  *(v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial) = v206 & 1;
  sub_FBD0(v115, v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, &qword_4EF470);
  sub_FBD0(v114, v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, &qword_4F1D50);
  v133 = v225;
  sub_FBD0(v116, v225, &qword_4EF468);
  v134 = sub_3E7CB4();
  v135 = *(v134 - 8);
  v136 = *(v135 + 48);
  if (v136(v133, 1, v134) == 1)
  {
    v137 = 1;
    v138 = v182(v115, 1, v184);
    v139 = v224;
    v140 = v223;
    if (v138 != 1)
    {
      *v223 = 0;
      (*(v135 + 104))(v140, enum case for EyebrowBuilder.ListContext.listenNow(_:), v134);
      v137 = 0;
    }

    (*(v135 + 56))(v140, v137, 1, v134);
    v141 = v225;
    v142 = v136(v225, 1, v134);
    v143 = v250;
    if (v142 != 1)
    {
      sub_FCF8(v141, &qword_4EF468);
    }
  }

  else
  {
    v140 = v223;
    (*(v135 + 32))(v223, v133, v134);
    (*(v135 + 56))(v140, 0, 1, v134);
    v143 = v250;
    v139 = v224;
  }

  LODWORD(v198) = a38;
  v210 = a34;
  v209 = a32;
  v207 = a31;
  v208 = a30;
  v206 = a27;
  v205 = a25;
  v204 = a24;
  v201 = a23;
  sub_FACC(v140, v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, &qword_4EF468);
  v144 = v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime;
  *v144 = v199;
  *(v144 + 8) = v200 & 1;
  v145 = v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime;
  *v145 = v202;
  *(v145 + 8) = v203 & 1;
  sub_FBD0(v245, v58 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, &qword_4EF420);
  v250 = v143;
  v146 = sub_3E82A4();
  v225 = v147;
  v224 = v148;
  LODWORD(v223) = v149;
  sub_FBD0(v243, v242, &qword_4F1D50);
  sub_FBD0(v244, v139, &qword_4EF460);
  v150 = sub_3E5F84();
  v151 = *(v150 - 8);
  if ((*(v151 + 48))(v139, 1, v150) == 1)
  {
    sub_FCF8(v139, &qword_4EF460);
    v241 = 0;
  }

  else
  {
    v152 = v185;
    (*(v151 + 16))(v185, v139, v150);
    (*(v186 + 104))(v152, enum case for LazyDate.State.valid(_:), v187);
    v241 = sub_3E6AF4();
    (*(v151 + 8))(v139, v150);
  }

  sub_FBD0(&v255, &v254, &qword_4EDE00);
  sub_FBD0(v248, v246, &unk_4E9170);
  *(v58 + 32) = 0u;
  *(v58 + 48) = 0u;
  *(v58 + 64) = 0;
  v153 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  v154 = sub_3EC634();
  v155 = v247;
  (*(*(v154 - 8) + 56))(v247, 1, 1, v154);
  sub_FBD0(v155, v229, &unk_4E9170);
  v156 = v215;
  sub_3ECAE4();
  sub_FCF8(v155, &unk_4E9170);
  sub_FACC(v156, v58 + v153, &qword_4EED90);
  v157 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  *&v252[0] = 0;
  v158 = v227;
  sub_3ECAE4();
  sub_FACC(v158, v58 + v157, &qword_4EED80);
  v159 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__clickAction;
  v253 = 0;
  memset(v252, 0, sizeof(v252));
  sub_FBD0(v252, &v251, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  v160 = v216;
  sub_3ECAE4();
  sub_FCF8(v252, &qword_4EDE00);
  sub_FACC(v160, v58 + v159, &qword_4EED88);
  v161 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  *&v252[0] = 0;
  sub_3ECAE4();
  sub_FACC(v158, v58 + v161, &qword_4EED80);
  v162 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  *&v252[0] = 0;
  sub_3ECAE4();
  sub_FACC(v158, v58 + v162, &qword_4EED80);
  v163 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__previewAction;
  *&v252[0] = 0;
  sub_3ECAE4();
  sub_FACC(v158, v58 + v163, &qword_4EED80);
  v164 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  *&v252[0] = 0;
  sub_3ECAE4();
  sub_FACC(v158, v58 + v164, &qword_4EED80);
  v165 = v211;
  *(v58 + 16) = v212;
  *(v58 + 24) = v165;
  *(v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v250;
  v166 = v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v167 = v225;
  *v166 = v146;
  *(v166 + 8) = v167;
  v168 = v224;
  *(v166 + 16) = v224;
  LOBYTE(v164) = v223;
  *(v166 + 24) = v223;
  *(v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v198 & 1;
  *(v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v242, v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v169 = (v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v170 = v217;
  *v169 = v228;
  v169[1] = v170;
  *(v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v201;
  v171 = (v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v171 = 0;
  v171[1] = 0;
  v172 = (v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v172 = 0;
  v172[1] = 0;
  *(v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v173 = (v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v174 = v205;
  *v173 = v204;
  v173[1] = v174;
  v175 = v241;
  *(v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = v241;
  v241 = v175;
  v176 = (v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v176 = 0;
  v176[1] = 0;
  v177 = v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  BYTE4(v174) = BYTE4(v213);
  *v177 = v213;
  *(v177 + 4) = BYTE4(v174) & 1;
  v178 = v58 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v178 = 0;
  *(v178 + 8) = 1;
  v251 = v206;
  swift_beginAccess();
  sub_3DE90(v167, v168, v164);

  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(&v254, v252, &qword_4EDE00);
  sub_FBD0(v252, &v251, &qword_4EDE00);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v252, &qword_4EDE00);
  v251 = v207;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v251 = v208;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v251 = v209;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v251 = v210;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v179 = v247;
  sub_FBD0(v246, v247, &unk_4E9170);
  sub_FBD0(v179, v229, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();

  sub_3DEF8(v225, v224, v223);

  sub_FCF8(v234, &unk_4E9170);
  sub_FCF8(v235, &qword_4EF468);
  sub_FCF8(v249, &qword_4EF470);
  sub_FCF8(v236, &qword_4EF460);
  sub_FCF8(v222, &unk_4E9EE0);
  sub_FCF8(v237, &qword_4EDE00);
  sub_FCF8(v238, &qword_4F1D50);
  sub_FCF8(v239, &qword_4F1D50);
  sub_FCF8(v240, &qword_4F1D50);
  sub_FCF8(v247, &unk_4E9170);
  sub_FCF8(v246, &unk_4E9170);
  sub_FCF8(&v254, &qword_4EDE00);
  sub_FCF8(v242, &qword_4F1D50);
  sub_FCF8(v248, &unk_4E9170);
  sub_FCF8(v245, &qword_4EF420);
  sub_FCF8(v233, &qword_4EF468);
  sub_FCF8(v244, &qword_4EF460);
  sub_FCF8(&v255, &qword_4EDE00);
  sub_FCF8(v232, &qword_4F1D50);
  sub_FCF8(v231, &qword_4F1D50);
  sub_FCF8(v243, &qword_4F1D50);
  sub_FCF8(v230, &qword_4EF470);
  return v58;
}

uint64_t LibraryEpisodeLockup.variant(clickActionType:)(unsigned __int8 *a1)
{
  sub_AB5C0(*a1, v1, v4);
  v2 = sub_ABBB4(v4);
  sub_FCF8(v4, &qword_4EDE00);
  return v2;
}

void sub_AB5C0(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = a3;
  v43 = sub_3E5FC4();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v42 = &v39 - v8;
  v9 = sub_3EC1F4();
  v40 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v15);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v21 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
LABEL_6:
      swift_beginAccess();
      sub_FBD0(a2 + v21, v20, &qword_4EED80);
      sub_3ECAF4();
      sub_FCF8(v20, &qword_4EED80);
      v22 = v45;
      if (v45)
      {
        v23 = type metadata accessor for Action();
        v24 = v44;
        v44[3] = v23;
        v24[4] = sub_ADFFC(&qword_4EDDF8, type metadata accessor for Action);
        *v24 = v22;
        return;
      }

      goto LABEL_12;
    }

    v29 = *(a2 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid + 8);
    *v17 = *(a2 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
    v17[1] = v29;
    swift_storeEnumTagMultiPayload();

    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v39 = type metadata accessor for FlowAction(0);
    v30 = swift_allocObject();
    sub_FC38(v17, v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
    type metadata accessor for FlowAction.DestinationType(0);
    swift_storeEnumTagMultiPayload();
    v31 = (v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
    *v31 = 0;
    v31[1] = 0;
    *(v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
    *(v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
    *(v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
    v32 = v40;
    (*(v40 + 16))(v11, v14, v9);
    v33 = sub_3EC634();
    v34 = v42;
    (*(*(v33 - 8) + 56))(v42, 1, 1, v33);
    sub_3E5FB4();
    v35 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v37 = v36;
    (*(v41 + 8))(v6, v43);
    (*(v32 + 8))(v14, v9);
    sub_FC9C(v17);
    *(v30 + 16) = v35;
    *(v30 + 24) = v37;
    *(v30 + 32) = 0;
    *(v30 + 40) = 0;
    *(v30 + 48) = 48;
    (*(v32 + 32))(v30 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v11, v9);
    sub_FACC(v34, v30 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
    v38 = v44;
    v44[3] = v39;
    v38[4] = sub_ADFFC(&qword_4F8A40, type metadata accessor for FlowAction);
    *v38 = v30;
  }

  else
  {
    if (!a1)
    {
      v21 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
      goto LABEL_6;
    }

    v25 = *(a2 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_presentDetailsAction);
    if (!v25)
    {
LABEL_12:
      v28 = v44;
      v44[4] = 0;
      *v28 = 0u;
      v28[1] = 0u;
      return;
    }

    v26 = type metadata accessor for Action();
    v27 = v44;
    v44[3] = v26;
    v27[4] = sub_ADFFC(&qword_4EDDF8, type metadata accessor for Action);
    *v27 = v25;
  }
}

uint64_t sub_ABBB4(uint64_t a1)
{
  v2 = v1;
  v212 = a1;
  v191 = *v1;
  v3 = sub_3E6B04();
  v159 = *(v3 - 8);
  v160 = v3;
  __chkstk_darwin(v3);
  v158 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF420);
  __chkstk_darwin(v5 - 8);
  v233 = &v157 - v6;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v223);
  v183 = &v157 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v220 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v205 = &v157 - v11;
  __chkstk_darwin(v12);
  v222 = &v157 - v13;
  __chkstk_darwin(v14);
  v230 = &v157 - v15;
  __chkstk_darwin(v16);
  v232 = &v157 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v18 - 8);
  v206 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v195 = &v157 - v21;
  __chkstk_darwin(v22);
  v221 = &v157 - v23;
  __chkstk_darwin(v24);
  v231 = &v157 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470);
  __chkstk_darwin(v26 - 8);
  v224 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v190 = &v157 - v29;
  __chkstk_darwin(v30);
  v234 = &v157 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v32 - 8);
  v199 = &v157 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v227 = &v157 - v35;
  __chkstk_darwin(v36);
  v229 = &v157 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v38 - 8);
  v228 = &v157 - v39;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v214);
  v41 = &v157 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v42 - 8);
  v225 = &v157 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v216 = &v157 - v45;
  __chkstk_darwin(v46);
  v215 = &v157 - v47;
  __chkstk_darwin(v48);
  v226 = &v157 - v49;
  __chkstk_darwin(v50);
  v52 = &v157 - v51;
  __chkstk_darwin(v53);
  v55 = &v157 - v54;
  __chkstk_darwin(v56);
  v57 = *(v2 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid + 8);
  v176 = *(v2 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);
  v174 = *(v2 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastAdamId);
  v58 = *(v2 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid + 8);
  v172 = *(v2 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
  v171 = *(v2 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId);
  v210 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  v170 = *(v2 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId + 8);
  v189 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType);
  v193 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration);
  v192 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration + 8);
  v187 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber);
  v186 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber + 8);
  v185 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber);
  v184 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber + 8);
  v188 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType);
  v217 = &v157 - v59;
  sub_FBD0(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &v157 - v59, &qword_4F1D50);
  v218 = v55;
  sub_FBD0(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, v55, &qword_4F1D50);
  v219 = v52;
  sub_FBD0(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, v52, &qword_4F1D50);
  v60 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8);
  v208 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v61 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles);
  v62 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal + 8);
  v198 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v201 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating);
  v200 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating + 4);
  v63 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  swift_beginAccess();
  sub_FBD0(v2 + v63, v41, &qword_4EED80);
  v197 = v62;

  v177 = v57;

  v173 = v58;

  v209 = v60;

  v196 = v61;

  sub_3ECAF4();
  sub_FCF8(v41, &qword_4EED80);
  v213 = v240[0];
  sub_FBD0(v212, v240, &qword_4EDE00);
  v64 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  swift_beginAccess();
  sub_FBD0(v2 + v64, v41, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v41, &qword_4EED80);
  v212 = v238;
  v65 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  swift_beginAccess();
  sub_FBD0(v2 + v65, v41, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v41, &qword_4EED80);
  v204 = v238;
  v66 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  swift_beginAccess();
  sub_FBD0(v2 + v66, v41, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v41, &qword_4EED80);
  v211 = v238;
  v67 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__previewAction;
  swift_beginAccess();
  sub_FBD0(v2 + v67, v41, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v41, &qword_4EED80);
  v203 = v238;
  v68 = *(v2 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_presentDetailsAction);
  v69 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  swift_beginAccess();
  sub_FBD0(v2 + v69, v41, &qword_4EED80);
  v161 = v68;

  sub_3ECAF4();
  sub_FCF8(v41, &qword_4EED80);
  v202 = v238;
  v70 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary);
  v194 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit);
  v71 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v72 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption + 8);
  v178 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial);
  sub_FBD0(v2 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, v228, &unk_4E9EE0);
  v73 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate);
  v175 = v70;
  v207 = v71;
  if (v73)
  {
    v74 = v70;

    sub_3E6B14();
  }

  else
  {
    v75 = sub_3E5F84();
    (*(*(v75 - 8) + 56))(v229, 1, 1, v75);
    v76 = v70;
  }

  v77 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState);
  v169 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion);
  v78 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName + 8);
  v167 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v79 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName + 8);
  v165 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v80 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle + 8);
  v163 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v162 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showDisplayType);
  sub_FBD0(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, v234, &qword_4EF470);
  sub_FBD0(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, v231, &qword_4EF468);
  v182 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime);
  v181 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime + 8);
  v180 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime);
  v179 = *(v2 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime + 8);
  v81 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  swift_beginAccess();
  v82 = v2 + v81;
  v83 = v183;
  sub_FBD0(v82, v183, &qword_4EED90);
  v164 = v80;

  v168 = v78;

  v166 = v79;

  sub_3ECAF4();
  sub_FCF8(v83, &qword_4EED90);
  v84 = swift_allocObject();
  v85 = (v84 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);
  v87 = v176;
  v86 = v177;
  *v85 = v176;
  v85[1] = v86;
  v88 = (v84 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
  v89 = v173;
  *v88 = v172;
  v88[1] = v89;
  *(v84 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastAdamId) = v174;
  v90 = v84 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId;
  *v90 = v171;
  *(v90 + 8) = v170;
  *(v84 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_presentDetailsAction) = v161;
  sub_FBD0(v228, v84 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, &unk_4E9EE0);
  v238 = v87;
  v239 = v86;

  v241._countAndFlagsBits = 45;
  v241._object = 0xE100000000000000;
  sub_3ED3D4(v241);
  if (v72)
  {
    v91 = v207;
  }

  else
  {
    v91 = 7104878;
  }

  if (v72)
  {
    v92 = v72;
  }

  else
  {
    v92 = 0xE300000000000000;
  }

  v183 = v72;

  v242._countAndFlagsBits = v91;
  v242._object = v92;
  sub_3ED3D4(v242);

  v243._countAndFlagsBits = 45;
  v243._object = 0xE100000000000000;
  sub_3ED3D4(v243);
  v177 = v77;
  v237[0] = v77;
  v244._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v244);

  v245._countAndFlagsBits = 45;
  v245._object = 0xE100000000000000;
  sub_3ED3D4(v245);
  if (v209)
  {
    v93 = v208;
  }

  else
  {
    v93 = 7104878;
  }

  if (v209)
  {
    v94 = v209;
  }

  else
  {
    v94 = 0xE300000000000000;
  }

  v246._countAndFlagsBits = v93;
  v246._object = v94;
  sub_3ED3D4(v246);

  v247._countAndFlagsBits = 45;
  v247._object = 0xE100000000000000;
  sub_3ED3D4(v247);
  v95 = v190;
  sub_FBD0(v234, v190, &qword_4EF470);
  v96 = sub_3E8D24();
  v97 = *(v96 - 8);
  v174 = *(v97 + 48);
  v98 = v174(v95, 1, v96);
  v176 = v96;
  if (v98 == 1)
  {
    sub_FCF8(v95, &qword_4EF470);
    v99 = 0xE400000000000000;
    v100._countAndFlagsBits = 1701736302;
  }

  else
  {
    v101 = sub_3E8D14();
    v99 = v102;
    (*(v97 + 8))(v95, v96);
    v100._countAndFlagsBits = v101;
  }

  v103 = v224;
  v100._object = v99;
  sub_3ED3D4(v100);

  v190 = v239;
  v191 = v238;
  sub_FBD0(v217, v226, &qword_4F1D50);
  v104 = v215;
  sub_FBD0(v218, v215, &qword_4F1D50);
  v105 = v216;
  sub_FBD0(v219, v216, &qword_4F1D50);
  sub_FBD0(v240, &v238, &qword_4EDE00);
  sub_FBD0(v229, v227, &qword_4EF460);
  sub_FBD0(v234, v103, &qword_4EF470);
  v106 = v221;
  sub_FBD0(v231, v221, &qword_4EF468);
  v107 = sub_3E9104();
  (*(*(v107 - 8) + 56))(v233, 1, 1, v107);
  sub_FBD0(v232, v230, &unk_4E9170);
  v108 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  v237[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  *(v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled) = 0;
  v109 = v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber;
  *v109 = v185;
  *(v109 + 8) = v184;
  v110 = v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber;
  *v110 = v187;
  *(v110 + 8) = v186;
  *(v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType) = v189;
  sub_FBD0(v104, v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, &qword_4F1D50);
  *(v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType) = v188;
  v111 = (v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v112 = v183;
  *v111 = v207;
  v111[1] = v112;
  *(v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary) = v175;
  *(v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_transcript) = 0;
  swift_beginAccess();
  v113 = v212;

  sub_FCF8(v84 + v108, &qword_4EED80);
  v236[0] = v113;
  sub_3ECAE4();
  swift_endAccess();
  v114 = v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration;
  *v114 = v193;
  *(v114 + 8) = v192;
  *(v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) = v177;
  *(v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion) = v169;
  v115 = (v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v116 = v168;
  *v115 = v167;
  v115[1] = v116;
  v117 = (v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v118 = v166;
  *v117 = v165;
  v117[1] = v118;
  v119 = (v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v120 = v164;
  *v119 = v163;
  v119[1] = v120;
  *(v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showDisplayType) = v162;
  *(v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial) = v178;
  sub_FBD0(v103, v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, &qword_4EF470);
  sub_FBD0(v105, v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, &qword_4F1D50);
  v121 = v206;
  sub_FBD0(v106, v206, &qword_4EF468);
  v122 = sub_3E7CB4();
  v123 = *(v122 - 8);
  v124 = *(v123 + 48);
  if (v124(v121, 1, v122) == 1)
  {
    v125 = 1;
    v126 = v174(v103, 1, v176);
    v127 = v195;
    if (v126 != 1)
    {
      *v195 = 0;
      (*(v123 + 104))(v127, enum case for EyebrowBuilder.ListContext.listenNow(_:), v122);
      v125 = 0;
    }

    (*(v123 + 56))(v127, v125, 1, v122);
    v128 = v206;
    v129 = v124(v206, 1, v122);
    v130 = v199;
    if (v129 != 1)
    {
      sub_FCF8(v128, &qword_4EF468);
    }
  }

  else
  {
    v127 = v195;
    (*(v123 + 32))(v195, v121, v122);
    (*(v123 + 56))(v127, 0, 1, v122);
    v130 = v199;
  }

  sub_FACC(v127, v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, &qword_4EF468);
  v131 = v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime;
  *v131 = v182;
  *(v131 + 8) = v181;
  v132 = v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime;
  *v132 = v180;
  *(v132 + 8) = v179;
  sub_FBD0(v233, v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, &qword_4EF420);
  v133 = sub_3E82A4();
  v206 = v135;
  v207 = v134;
  LODWORD(v199) = v136;
  sub_FBD0(v226, v225, &qword_4F1D50);
  sub_FBD0(v227, v130, &qword_4EF460);
  v137 = sub_3E5F84();
  v138 = *(v137 - 8);
  if ((*(v138 + 48))(v130, 1, v137) == 1)
  {
    sub_FCF8(v130, &qword_4EF460);
    v195 = 0;
  }

  else
  {
    v139 = v158;
    (*(v138 + 16))(v158, v130, v137);
    (*(v159 + 104))(v139, enum case for LazyDate.State.valid(_:), v160);
    v195 = sub_3E6AF4();
    (*(v138 + 8))(v130, v137);
  }

  sub_FBD0(&v238, v237, &qword_4EDE00);
  sub_FBD0(v230, v222, &unk_4E9170);
  *(v84 + 32) = 0u;
  *(v84 + 48) = 0u;
  *(v84 + 64) = 0;
  v140 = sub_3EC634();
  v141 = v205;
  (*(*(v140 - 8) + 56))(v205, 1, 1, v140);
  sub_FBD0(v141, v220, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v141, &unk_4E9170);
  v236[0] = 0;
  sub_3ECAE4();
  memset(v236, 0, sizeof(v236));
  sub_FBD0(v236, v235, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v236, &qword_4EDE00);
  v236[0] = 0;
  sub_3ECAE4();
  v236[0] = 0;
  sub_3ECAE4();
  v236[0] = 0;
  sub_3ECAE4();
  v236[0] = 0;
  sub_3ECAE4();
  v142 = v190;
  *(v84 + 16) = v191;
  *(v84 + 24) = v142;
  *(v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v210;
  v143 = v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v144 = v206;
  v145 = v207;
  *v143 = v133;
  *(v143 + 8) = v145;
  *(v143 + 16) = v144;
  *(v143 + 24) = v199;
  *(v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v194;
  *(v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v225, v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v146 = (v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v147 = v209;
  *v146 = v208;
  v146[1] = v147;
  *(v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v196;
  v148 = (v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v148 = 0;
  v148[1] = 0;
  v149 = (v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v149 = 0;
  v149[1] = 0;
  *(v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v150 = (v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v151 = v197;
  *v150 = v198;
  v150[1] = v151;
  *(v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = v195;
  v152 = (v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v152 = 0;
  v152[1] = 0;
  v153 = v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v153 = v201;
  *(v153 + 4) = v200;
  v154 = v84 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v154 = 0;
  *(v154 + 8) = 1;
  v235[0] = v213;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v237, v236, &qword_4EDE00);
  sub_FBD0(v236, v235, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v236, &qword_4EDE00);
  v235[0] = v211;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v235[0] = v204;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v235[0] = v203;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v235[0] = v202;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v155 = v222;
  sub_FBD0(v222, v141, &unk_4E9170);
  sub_FBD0(v141, v220, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();

  sub_FCF8(v141, &unk_4E9170);
  sub_FCF8(v155, &unk_4E9170);
  sub_FCF8(v237, &qword_4EDE00);
  sub_FCF8(v225, &qword_4F1D50);
  sub_FCF8(v230, &unk_4E9170);
  sub_FCF8(v233, &qword_4EF420);
  sub_FCF8(v221, &qword_4EF468);
  sub_FCF8(v227, &qword_4EF460);
  sub_FCF8(&v238, &qword_4EDE00);
  sub_FCF8(v216, &qword_4F1D50);
  sub_FCF8(v215, &qword_4F1D50);
  sub_FCF8(v226, &qword_4F1D50);
  sub_FCF8(v232, &unk_4E9170);
  sub_FCF8(v231, &qword_4EF468);
  sub_FCF8(v234, &qword_4EF470);
  sub_FCF8(v229, &qword_4EF460);
  sub_FCF8(v228, &unk_4E9EE0);
  sub_FCF8(v240, &qword_4EDE00);
  sub_FCF8(v219, &qword_4F1D50);
  sub_FCF8(v218, &qword_4F1D50);
  sub_FCF8(v217, &qword_4F1D50);
  sub_FCF8(v224, &qword_4EF470);
  return v84;
}

uint64_t LibraryEpisodeLockup.appEntityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  sub_3E6EC4();
  sub_ADFFC(&qword_4EF478, &type metadata accessor for EpisodeEntity);

  sub_3E5754();
  v2 = sub_3E5764();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_ADAB8()
{

  return sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, &unk_4E9EE0);
}

uint64_t LibraryEpisodeLockup.deinit()
{
  v0 = LegacyEpisodeLockup.deinit();

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, &unk_4E9EE0);
  return v0;
}

uint64_t LibraryEpisodeLockup.__deallocating_deinit()
{
  v0 = LegacyEpisodeLockup.deinit();

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, &unk_4E9EE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LibraryEpisodeLockup()
{
  result = qword_4EFAA0;
  if (!qword_4EFAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_ADCC4()
{
  sub_1F630();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of LibraryEpisodeLockup.__allocating_init(uuid:podcastUuid:podcastAdamId:channelAdamId:adamId:episodeType:duration:seasonNumber:episodeNumber:mediaType:icon:showUberArtwork:episodeArtwork:title:subtitles:ordinal:rating:buttonAction:clickAction:titleAction:playAction:contextAction:previewAction:presentDetailsAction:subtitleAction:caption:summary:isExplicit:showTypeIsSerial:assetFileUrl:releaseDate:episodeEntitlementState:hasFreeVersion:subscriptionName:channelName:showTitle:showDisplayType:listenNowReason:listContext:referenceTime:playerTime:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = a7 & 1;
  v9 = *(v7 + 760);

  return v9(a1, a2, a3, a4, a5, a6, v8);
}

uint64_t sub_ADFFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LibraryShowLockup.uuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);

  return v1;
}

uint64_t LibraryShowLockup.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);

  return v1;
}

uint64_t LibraryShowLockup.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_3EBF94();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBDF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = a1;
  sub_3EBE04();
  v17 = sub_3EBDC4();
  v19 = v18;
  v39 = *(v8 + 8);
  v39(v15, v7);
  if (v19)
  {
    v20 = (v3 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
    *v20 = v17;
    v20[1] = v19;
    v21 = v16;
    sub_3EBE04();
    v22 = sub_3EBDC4();
    v24 = v23;
    v39(v12, v7);
    v25 = (v3 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
    *v25 = v22;
    v25[1] = v24;
    v26 = v3 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate;
    *v26 = 0;
    *(v26 + 8) = 1;
    *(v3 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_providerAction) = 0;
    *(v3 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed) = 2;
    v27 = v34;
    (*(v8 + 16))(v34, v16, v7);
    v29 = v36;
    v28 = v37;
    v30 = v35;
    v31 = v38;
    (*(v36 + 16))(v35, v38, v37);
    v32 = LegacyLockup.init(deserializing:using:)(v27, v30);
    (*(v29 + 8))(v31, v28);
    v39(v21, v7);
    return v32;
  }

  else
  {
    result = sub_3EE574();
    __break(1u);
  }

  return result;
}

uint64_t LibraryShowLockup.__allocating_init(uuid:adamId:icon:name:title:addedDate:subtitles:ordinal:rating:buttonAction:clickAction:providerAction:playAction:contextAction:isSubscribed:isExplicit:shelfUniqueId:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v88 = a8;
  v87 = a7;
  v93 = a6;
  v75 = a3;
  v99 = a24;
  v76 = a21;
  v83 = a19;
  v84 = a18;
  v98 = a16;
  v96 = a15;
  v82 = a14;
  v79 = a13;
  v78 = a12;
  LODWORD(v92) = a20;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v28 - 8);
  v94 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v81 = &v74 - v31;
  __chkstk_darwin(v32);
  v97 = &v74 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v34 - 8);
  v95 = &v74 - v35;
  v36 = swift_allocObject();
  v37 = (v36 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  *v37 = a1;
  v37[1] = a2;
  v38 = (v36 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
  v80 = a5;
  *v38 = a5;
  v38[1] = v93;
  *(v36 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_providerAction) = a17;
  v39 = v36 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate;
  *v39 = a9;
  *(v39 + 8) = a10 & 1;
  *(v36 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed) = v92;
  v86 = a23;
  v89 = a4;
  v85 = a17;
  v77 = a11;
  if (a23)
  {
  }

  else
  {
    v41 = a1;
    if (v88)
    {
      v42 = v87;
    }

    else
    {
      v42 = 0;
    }

    if (v88)
    {
      v43 = v88;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    if (a11)
    {
      v44 = a11;
    }

    else
    {
      v44 = _swiftEmptyArrayStorage;
    }

    *&v101[0] = v41;
    *(&v101[0] + 1) = a2;

    swift_bridgeObjectRetain_n();

    v104._countAndFlagsBits = v42;
    v104._object = v43;
    sub_3ED3D4(v104);

    a22 = *&v101[0];
    v103 = v101[0];
    v45 = v44[2];
    if (v45)
    {
      v46 = (v44 + 5);
      do
      {
        v47 = *(v46 - 1);
        v48 = *v46;

        v105._countAndFlagsBits = v47;
        v105._object = v48;
        sub_3ED3D4(v105);

        v46 += 2;
        --v45;
      }

      while (v45);

      v86 = *(&v103 + 1);
      a22 = v103;
    }

    else
    {
      v86 = *(&v101[0] + 1);
    }

    a4 = v89;
  }

  v49 = v75;
  v50 = sub_3E8284();
  v92 = v51;
  v91 = v52;
  v90 = v53;
  v74 = v50;
  v54 = v95;
  sub_FBD0(a4, v95, &qword_4F1D50);
  sub_FBD0(v98, &v103, &qword_4EDE00);
  sub_FBD0(v99, v97, &unk_4E9170);
  *(v36 + 32) = 0u;
  *(v36 + 48) = 0u;
  *(v36 + 64) = 0;
  v55 = sub_3EC634();
  v56 = v81;
  (*(*(v55 - 8) + 56))(v81, 1, 1, v55);
  sub_FBD0(v56, v94, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v56, &unk_4E9170);
  *&v101[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  v102 = 0;
  memset(v101, 0, sizeof(v101));
  sub_FBD0(v101, v100, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v101, &qword_4EDE00);
  *&v101[0] = 0;
  sub_3ECAE4();
  *&v101[0] = 0;
  sub_3ECAE4();
  *&v101[0] = 0;
  sub_3ECAE4();
  *&v101[0] = 0;
  sub_3ECAE4();
  v57 = v86;
  *(v36 + 16) = a22;
  *(v36 + 24) = v57;
  *(v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v49;
  v58 = v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v59 = v92;
  *v58 = v74;
  *(v58 + 8) = v59;
  v60 = v91;
  *(v58 + 16) = v91;
  v61 = v90;
  *(v58 + 24) = v90;
  *(v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v76 & 1;
  *(v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v54, v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v62 = (v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v63 = v88;
  *v62 = v87;
  v62[1] = v63;
  *(v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v77;
  v64 = (v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v64 = 0;
  v64[1] = 0;
  v65 = (v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  v66 = v93;
  *v65 = v80;
  v65[1] = v66;
  *(v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v67 = (v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v68 = v79;
  *v67 = v78;
  v67[1] = v68;
  *(v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v69 = (v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v69 = 0;
  v69[1] = 0;
  v70 = v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  BYTE4(v68) = BYTE4(v82);
  *v70 = v82;
  *(v70 + 4) = BYTE4(v68) & 1;
  v71 = v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v71 = 0;
  *(v71 + 8) = 1;
  v100[0] = v96;
  swift_beginAccess();
  sub_3DE90(v59, v60, v61);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(&v103, v101, &qword_4EDE00);
  sub_FBD0(v101, v100, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v101, &qword_4EDE00);
  v100[0] = v83;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v100[0] = v84;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v100[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v100[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v72 = v97;
  sub_FBD0(v97, v56, &unk_4E9170);
  sub_FBD0(v56, v94, &unk_4E9170);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  swift_endAccess();

  sub_3DEF8(v92, v91, v90);

  sub_FCF8(v99, &unk_4E9170);
  sub_FCF8(v98, &qword_4EDE00);
  sub_FCF8(v89, &qword_4F1D50);
  sub_FCF8(v56, &unk_4E9170);
  sub_FCF8(v72, &unk_4E9170);
  sub_FCF8(&v103, &qword_4EDE00);
  sub_FCF8(v95, &qword_4F1D50);
  return v36;
}

uint64_t LibraryShowLockup.init(uuid:adamId:icon:name:title:addedDate:subtitles:ordinal:rating:buttonAction:clickAction:providerAction:playAction:contextAction:isSubscribed:isExplicit:shelfUniqueId:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, unsigned __int8 a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = v24;
  v106 = a7;
  v111 = a6;
  v116 = a4;
  v110 = a3;
  v115 = a24;
  v90 = a21;
  v102 = a19;
  v103 = a18;
  v114 = a16;
  v101 = a15;
  v97 = a14;
  v94 = a13;
  v93 = a12;
  LODWORD(v109) = a20;
  LODWORD(v108) = a10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v98);
  v89 = &v86 - v30;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v99);
  v32 = &v86 - v31;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v100);
  v88 = &v86 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v34 - 8);
  v112 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v95 = &v86 - v37;
  __chkstk_darwin(v38);
  v113 = &v86 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v40 - 8);
  v117 = &v86 - v41;
  v42 = (v25 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  v43 = a1;
  *v42 = a1;
  v42[1] = a2;
  v44 = v111;
  v45 = (v25 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
  v96 = a5;
  *v45 = a5;
  v45[1] = v44;
  *(v25 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_providerAction) = a17;
  v46 = v25 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate;
  *v46 = a9;
  *(v46 + 8) = v108 & 1;
  *(v25 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed) = v109;
  v105 = a23;
  v104 = a17;
  v92 = a8;
  v91 = a11;
  if (a23)
  {
    v87 = a22;
  }

  else
  {
    if (a8)
    {
      v47 = v106;
    }

    else
    {
      v47 = 0;
    }

    if (a8)
    {
      v48 = a8;
    }

    else
    {
      v48 = 0xE000000000000000;
    }

    if (a11)
    {
      v49 = a11;
    }

    else
    {
      v49 = _swiftEmptyArrayStorage;
    }

    *&v119[0] = v43;
    *(&v119[0] + 1) = a2;

    swift_bridgeObjectRetain_n();

    v122._countAndFlagsBits = v47;
    v122._object = v48;
    sub_3ED3D4(v122);

    v121 = v119[0];
    v50 = v49[2];
    if (v50)
    {
      v51 = (v49 + 5);
      do
      {
        v52 = *(v51 - 1);
        v53 = *v51;

        v123._countAndFlagsBits = v52;
        v123._object = v53;
        sub_3ED3D4(v123);

        v51 += 2;
        --v50;
      }

      while (v50);

      v105 = *(&v121 + 1);
      v87 = v121;
    }

    else
    {
      v105 = *(&v119[0] + 1);
      v87 = *&v119[0];
    }
  }

  v54 = v116;
  v55 = sub_3E8284();
  v109 = v56;
  v108 = v57;
  v107 = v58;
  v86 = v55;
  sub_FBD0(v54, v117, &qword_4F1D50);
  sub_FBD0(v114, &v121, &qword_4EDE00);
  sub_FBD0(v115, v113, &unk_4E9170);
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0;
  v59 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  v60 = sub_3EC634();
  v61 = v95;
  (*(*(v60 - 8) + 56))(v95, 1, 1, v60);
  sub_FBD0(v61, v112, &unk_4E9170);
  v62 = v88;
  sub_3ECAE4();
  sub_FCF8(v61, &unk_4E9170);
  sub_FACC(v62, v25 + v59, &qword_4EED90);
  v63 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  *&v119[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  sub_FACC(v32, v25 + v63, &qword_4EED80);
  v64 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__clickAction;
  v120 = 0;
  memset(v119, 0, sizeof(v119));
  sub_FBD0(v119, &v118, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  v65 = v89;
  sub_3ECAE4();
  sub_FCF8(v119, &qword_4EDE00);
  sub_FACC(v65, v25 + v64, &qword_4EED88);
  v66 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  *&v119[0] = 0;
  sub_3ECAE4();
  sub_FACC(v32, v25 + v66, &qword_4EED80);
  v67 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  *&v119[0] = 0;
  sub_3ECAE4();
  sub_FACC(v32, v25 + v67, &qword_4EED80);
  v68 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__previewAction;
  *&v119[0] = 0;
  sub_3ECAE4();
  sub_FACC(v32, v25 + v68, &qword_4EED80);
  v69 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__subtitleAction;
  *&v119[0] = 0;
  sub_3ECAE4();
  sub_FACC(v32, v25 + v69, &qword_4EED80);
  v70 = v105;
  *(v25 + 16) = v87;
  *(v25 + 24) = v70;
  *(v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v110;
  v71 = v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v72 = v109;
  *v71 = v86;
  *(v71 + 8) = v72;
  v73 = v108;
  *(v71 + 16) = v108;
  LOBYTE(v65) = v107;
  *(v71 + 24) = v107;
  *(v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v90 & 1;
  *(v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v117, v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v74 = (v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v75 = v92;
  *v74 = v106;
  v74[1] = v75;
  *(v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v91;
  v76 = (v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v76 = 0;
  v76[1] = 0;
  v77 = (v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  v78 = v111;
  *v77 = v96;
  v77[1] = v78;
  *(v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v79 = (v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v80 = v94;
  *v79 = v93;
  v79[1] = v80;
  *(v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v81 = (v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v81 = 0;
  v81[1] = 0;
  v82 = v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  BYTE4(v80) = BYTE4(v97);
  *v82 = v97;
  *(v82 + 4) = BYTE4(v80) & 1;
  v83 = v25 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v83 = 0;
  *(v83 + 8) = 1;
  v118 = v101;
  swift_beginAccess();
  sub_3DE90(v72, v73, v65);

  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(&v121, v119, &qword_4EDE00);
  sub_FBD0(v119, &v118, &qword_4EDE00);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v119, &qword_4EDE00);
  v118 = v102;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v118 = v103;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v118 = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v118 = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v84 = v113;
  sub_FBD0(v113, v61, &unk_4E9170);
  sub_FBD0(v61, v112, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();

  sub_3DEF8(v109, v108, v107);

  sub_FCF8(v115, &unk_4E9170);
  sub_FCF8(v114, &qword_4EDE00);
  sub_FCF8(v116, &qword_4F1D50);
  sub_FCF8(v61, &unk_4E9170);
  sub_FCF8(v84, &unk_4E9170);
  sub_FCF8(&v121, &qword_4EDE00);
  sub_FCF8(v117, &qword_4F1D50);
  return v25;
}

uint64_t LibraryShowLockup.appEntityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  if (sub_3E94A4())
  {
  }

  else
  {
    sub_17A28();
    sub_3EE1F4();
  }

  sub_3E6D44();
  sub_B28E4(&qword_4E9B80, &type metadata accessor for ShowEntity);
  sub_3E5754();
  v2 = sub_3E5764();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t LibraryShowLockup.copy(withSubtitles:)(void *a1)
{
  v2 = v1;
  v90 = a1;
  v75 = *v1;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v95);
  v73 = &v68[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v93 = &v68[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v83 = &v68[-v7];
  __chkstk_darwin(v8);
  v94 = &v68[-v9];
  __chkstk_darwin(v10);
  v97 = &v68[-v11];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  __chkstk_darwin(v89);
  v13 = &v68[-v12];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v91);
  v15 = &v68[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v16 - 8);
  v96 = &v68[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v19 = *(v1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  v71 = *(v1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid + 8);
  v72 = v19;
  v84 = *(v1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  v92 = &v68[-v20];
  sub_FBD0(v1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &v68[-v20], &qword_4F1D50);
  v21 = *(v1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
  v87 = *(v1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name + 8);
  v88 = v21;
  v22 = *(v1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v85 = *(v1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8);
  v86 = v22;
  v70 = *(v1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate);
  v69 = *(v1 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate + 8);
  v23 = *(v1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal + 8);
  v76 = *(v1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  LODWORD(v22) = *(v1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating);
  v78 = *(v1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating + 4);
  v79 = v22;
  v24 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  swift_beginAccess();
  sub_FBD0(v2 + v24, v15, &qword_4EED80);
  v77 = v23;

  sub_3ECAF4();
  sub_FCF8(v15, &qword_4EED80);
  v82 = v102[0];
  v25 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__clickAction;
  swift_beginAccess();
  sub_FBD0(v2 + v25, v13, &qword_4EED88);
  sub_3ECAF4();
  sub_FCF8(v13, &qword_4EED88);
  v26 = *(v2 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_providerAction);
  v27 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  swift_beginAccess();
  sub_FBD0(v2 + v27, v15, &qword_4EED80);

  sub_3ECAF4();
  sub_FCF8(v15, &qword_4EED80);
  v81 = v100;
  v28 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  swift_beginAccess();
  sub_FBD0(v2 + v28, v15, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v15, &qword_4EED80);
  v29 = *(v2 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed);
  v80 = v100;
  v74 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit);
  v30 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  swift_beginAccess();
  v31 = v73;
  sub_FBD0(v2 + v30, v73, &qword_4EED90);
  sub_3ECAF4();
  sub_FCF8(v31, &qword_4EED90);
  v32 = swift_allocObject();
  v33 = (v32 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  v34 = v71;
  v35 = v72;
  *v33 = v72;
  v33[1] = v34;
  v36 = (v32 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
  v37 = v87;
  *v36 = v88;
  v36[1] = v37;
  *(v32 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_providerAction) = v26;
  v38 = v32 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate;
  *v38 = v70;
  *(v38 + 8) = v69;
  *(v32 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed) = v29;
  if (v85)
  {
    v39 = v86;
  }

  else
  {
    v39 = 0;
  }

  if (v85)
  {
    v40 = v85;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  if (v90)
  {
    v41 = v90;
  }

  else
  {
    v41 = _swiftEmptyArrayStorage;
  }

  v100 = v35;
  v101 = v34;
  swift_bridgeObjectRetain_n();

  v103._countAndFlagsBits = v39;
  v103._object = v40;
  sub_3ED3D4(v103);

  v43 = v100;
  v42 = v101;
  v44 = v41[2];
  if (v44)
  {
    v45 = (v41 + 5);
    do
    {
      v46 = *(v45 - 1);
      v47 = *v45;

      v104._countAndFlagsBits = v46;
      v104._object = v47;
      sub_3ED3D4(v104);

      v45 += 2;
      --v44;
    }

    while (v44);

    v43 = v100;
    v42 = v101;
  }

  else
  {
  }

  v48 = sub_3E8284();
  v75 = v49;
  v73 = v50;
  LODWORD(v72) = v51;
  v71 = v48;
  sub_FBD0(v92, v96, &qword_4F1D50);
  sub_FBD0(v102, &v100, &qword_4EDE00);
  sub_FBD0(v97, v94, &unk_4E9170);
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0u;
  *(v32 + 64) = 0;
  v52 = sub_3EC634();
  v53 = v83;
  (*(*(v52 - 8) + 56))(v83, 1, 1, v52);
  sub_FBD0(v53, v93, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v53, &unk_4E9170);
  v99[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  memset(v99, 0, 40);
  sub_FBD0(v99, v98, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v99, &qword_4EDE00);
  v99[0] = 0;
  sub_3ECAE4();
  v99[0] = 0;
  sub_3ECAE4();
  v99[0] = 0;
  sub_3ECAE4();
  v99[0] = 0;
  sub_3ECAE4();
  *(v32 + 16) = v43;
  *(v32 + 24) = v42;
  *(v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v84;
  v54 = v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v55 = v75;
  *v54 = v71;
  *(v54 + 8) = v55;
  *(v54 + 16) = v73;
  *(v54 + 24) = v72;
  *(v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v74;
  *(v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v96, v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v56 = (v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v57 = v85;
  *v56 = v86;
  v56[1] = v57;
  *(v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v90;
  v58 = (v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v58 = 0;
  v58[1] = 0;
  v59 = (v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  v60 = v87;
  *v59 = v88;
  v59[1] = v60;
  *(v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v61 = (v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v62 = v77;
  *v61 = v76;
  v61[1] = v62;
  *(v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v63 = (v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v63 = 0;
  v63[1] = 0;
  v64 = v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  LOBYTE(v62) = v78;
  *v64 = v79;
  *(v64 + 4) = v62;
  v65 = v32 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v65 = 0;
  *(v65 + 8) = 1;
  v98[0] = v82;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(&v100, v99, &qword_4EDE00);
  sub_FBD0(v99, v98, &qword_4EDE00);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v99, &qword_4EDE00);
  v98[0] = v80;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v98[0] = v81;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v98[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v98[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v66 = v94;
  sub_FBD0(v94, v53, &unk_4E9170);
  sub_FBD0(v53, v93, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();

  sub_FCF8(v53, &unk_4E9170);
  sub_FCF8(v66, &unk_4E9170);
  sub_FCF8(&v100, &qword_4EDE00);
  sub_FCF8(v96, &qword_4F1D50);
  sub_FCF8(v97, &unk_4E9170);
  sub_FCF8(v102, &qword_4EDE00);
  sub_FCF8(v92, &qword_4F1D50);
  return v32;
}

uint64_t LibraryShowLockup.copy(withClickAction:)(uint64_t a1)
{
  v2 = v1;
  v88 = a1;
  v80 = *v1;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v99);
  v74 = &v73 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v97 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v89 = &v73 - v7;
  __chkstk_darwin(v8);
  v98 = &v73 - v9;
  __chkstk_darwin(v10);
  v101 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v15 - 8);
  v100 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v18 = *(v2 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid + 8);
  v77 = *(v2 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  v78 = v18;
  v91 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  v96 = &v73 - v19;
  sub_FBD0(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &v73 - v19, &qword_4F1D50);
  v20 = *(v2 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name + 8);
  v94 = *(v2 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
  v21 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8);
  v93 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v76 = *(v2 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate);
  v75 = *(v2 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate + 8);
  v22 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles);
  v23 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal + 8);
  v81 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v24 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating);
  v83 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating + 4);
  v84 = v24;
  v25 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  swift_beginAccess();
  sub_FBD0(v2 + v25, v14, &qword_4EED80);
  v82 = v23;

  v95 = v20;

  v92 = v21;

  v90 = v22;
  v26 = v88;

  sub_3ECAF4();
  sub_FCF8(v14, &qword_4EED80);
  v87 = v106[0];
  if (v26)
  {
    v27 = type metadata accessor for FlowAction(0);
    v28 = sub_B28E4(&qword_4F8A40, type metadata accessor for FlowAction);
    v29 = v26;
  }

  else
  {
    v29 = 0;
    v27 = 0;
    v28 = 0;
    v106[1] = 0;
    v106[2] = 0;
  }

  v106[0] = v29;
  v106[3] = v27;
  v106[4] = v28;
  v30 = *(v2 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_providerAction);
  v31 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  swift_beginAccess();
  sub_FBD0(v2 + v31, v14, &qword_4EED80);

  sub_3ECAF4();
  sub_FCF8(v14, &qword_4EED80);
  v86 = v104;
  v32 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  swift_beginAccess();
  sub_FBD0(v2 + v32, v14, &qword_4EED80);
  v88 = v12;
  sub_3ECAF4();
  sub_FCF8(v14, &qword_4EED80);
  v33 = *(v2 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed);
  v85 = v104;
  v79 = *(v2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit);
  v34 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  swift_beginAccess();
  v35 = v2 + v34;
  v36 = v74;
  sub_FBD0(v35, v74, &qword_4EED90);
  sub_3ECAF4();
  sub_FCF8(v36, &qword_4EED90);
  v37 = swift_allocObject();
  v38 = (v37 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  v40 = v77;
  v39 = v78;
  *v38 = v77;
  v38[1] = v39;
  v41 = (v37 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
  v42 = v95;
  *v41 = v94;
  v41[1] = v42;
  *(v37 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_providerAction) = v30;
  v43 = v37 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate;
  *v43 = v76;
  *(v43 + 8) = v75;
  *(v37 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed) = v33;
  if (v92)
  {
    v44 = v93;
  }

  else
  {
    v44 = 0;
  }

  if (v92)
  {
    v45 = v92;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  if (v90)
  {
    v46 = v90;
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
  }

  v104 = v40;
  v105 = v39;
  swift_bridgeObjectRetain_n();

  v107._countAndFlagsBits = v44;
  v107._object = v45;
  sub_3ED3D4(v107);

  v48 = v104;
  v47 = v105;
  v49 = v46[2];
  if (v49)
  {
    v50 = (v46 + 5);
    do
    {
      v51 = *(v50 - 1);
      v52 = *v50;

      v108._countAndFlagsBits = v51;
      v108._object = v52;
      sub_3ED3D4(v108);

      v50 += 2;
      --v49;
    }

    while (v49);

    v48 = v104;
    v47 = v105;
  }

  else
  {
  }

  v53 = sub_3E8284();
  v80 = v54;
  v78 = v55;
  LODWORD(v77) = v56;
  v76 = v53;
  sub_FBD0(v96, v100, &qword_4F1D50);
  sub_FBD0(v106, &v104, &qword_4EDE00);
  sub_FBD0(v101, v98, &unk_4E9170);
  *(v37 + 32) = 0u;
  *(v37 + 48) = 0u;
  *(v37 + 64) = 0;
  v57 = sub_3EC634();
  v58 = v89;
  (*(*(v57 - 8) + 56))(v89, 1, 1, v57);
  sub_FBD0(v58, v97, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v58, &unk_4E9170);
  v103[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  memset(v103, 0, sizeof(v103));
  sub_FBD0(v103, v102, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v103, &qword_4EDE00);
  v103[0] = 0;
  sub_3ECAE4();
  v103[0] = 0;
  sub_3ECAE4();
  v103[0] = 0;
  sub_3ECAE4();
  v103[0] = 0;
  sub_3ECAE4();
  *(v37 + 16) = v48;
  *(v37 + 24) = v47;
  *(v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v91;
  v59 = v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v60 = v80;
  *v59 = v76;
  *(v59 + 8) = v60;
  *(v59 + 16) = v78;
  *(v59 + 24) = v77;
  *(v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v79;
  *(v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v100, v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v61 = (v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v62 = v92;
  *v61 = v93;
  v61[1] = v62;
  *(v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v90;
  v63 = (v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v63 = 0;
  v63[1] = 0;
  v64 = (v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  v65 = v95;
  *v64 = v94;
  v64[1] = v65;
  *(v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v66 = (v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v67 = v82;
  *v66 = v81;
  v66[1] = v67;
  *(v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v68 = (v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v68 = 0;
  v68[1] = 0;
  v69 = v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  LOBYTE(v67) = v83;
  *v69 = v84;
  *(v69 + 4) = v67;
  v70 = v37 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v70 = 0;
  *(v70 + 8) = 1;
  v102[0] = v87;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(&v104, v103, &qword_4EDE00);
  sub_FBD0(v103, v102, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v103, &qword_4EDE00);
  v102[0] = v85;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v102[0] = v86;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v102[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v102[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v71 = v98;
  sub_FBD0(v98, v58, &unk_4E9170);
  sub_FBD0(v58, v97, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();

  sub_FCF8(v58, &unk_4E9170);
  sub_FCF8(v71, &unk_4E9170);
  sub_FCF8(&v104, &qword_4EDE00);
  sub_FCF8(v100, &qword_4F1D50);
  sub_FCF8(v101, &unk_4E9170);
  sub_FCF8(v96, &qword_4F1D50);
  sub_FCF8(v106, &qword_4EDE00);
  return v37;
}

uint64_t LibraryShowLockup.groupedEpisodesVariant(episodeCount:clickAction:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v20._object = 0x8000000000426F40;
  v20._countAndFlagsBits = 0xD000000000000015;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v7.super.isa = v6;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_3E5A74(v20, v22, v7, v23, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_3F5630;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = a1;
  v9 = sub_3ED214();
  v11 = v10;

  v13 = *(v3 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  v12 = *(v3 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid + 8);
  v14 = sub_3EE7A4();
  v16 = v15;

  v21._countAndFlagsBits = v14;
  v21._object = v16;
  sub_3ED3D4(v21);

  v17 = sub_B1AA8(v13, v12, v9, v11, a2);

  return v17;
}

uint64_t sub_B1AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v91 = a5;
  v93 = a2;
  v88 = a1;
  v77 = *v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  __chkstk_darwin(v98);
  v71 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v95 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v90 = &v71 - v13;
  __chkstk_darwin(v14);
  v96 = &v71 - v15;
  __chkstk_darwin(v16);
  v97 = &v71 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v18);
  v20 = &v71 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v21 - 8);
  v99 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v24 = *(v6 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid + 8);
  v75 = *(v6 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  v76 = v24;
  v84 = *(v6 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
  v94 = &v71 - v25;
  sub_FBD0(v6 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &v71 - v25, &qword_4F1D50);
  v26 = *(v6 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name + 8);
  v92 = *(v6 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
  v27 = *(v6 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8);
  v85 = *(v6 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v74 = *(v6 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate);
  LODWORD(v73) = *(v6 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_3F5630;
  *(v28 + 32) = a3;
  *(v28 + 40) = a4;
  v79 = v28;
  v29 = *(v6 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal + 8);
  v80 = *(v6 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v30 = *(v6 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating);
  v82 = *(v6 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating + 4);
  v83 = v30;
  v31 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__buttonAction;
  swift_beginAccess();
  sub_FBD0(v6 + v31, v20, &qword_4EED80);
  v81 = v29;

  v87 = v26;
  v32 = v91;

  v86 = v27;

  sub_3ECAF4();
  sub_FCF8(v20, &qword_4EED80);
  v89 = v103[0];
  if (v32)
  {
    v33 = type metadata accessor for FlowAction(0);
    v34 = sub_B28E4(&qword_4F8A40, type metadata accessor for FlowAction);
    v35 = v32;
  }

  else
  {
    v35 = 0;
    v33 = 0;
    v34 = 0;
    v103[1] = 0;
    v103[2] = 0;
  }

  v103[0] = v35;
  v103[3] = v33;
  v103[4] = v34;
  v36 = *(v6 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_providerAction);
  v37 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  swift_beginAccess();
  sub_FBD0(v6 + v37, v20, &qword_4EED80);

  sub_3ECAF4();
  sub_FCF8(v20, &qword_4EED80);
  v78 = v102[0];
  v38 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__contextAction;
  swift_beginAccess();
  sub_FBD0(v6 + v38, v20, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v20, &qword_4EED80);
  LOBYTE(v38) = *(v6 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed);
  v91 = v102[0];
  v72 = *(v6 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit);
  v39 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__impressionMetrics;
  swift_beginAccess();
  v40 = v6 + v39;
  v41 = v71;
  sub_FBD0(v40, v71, &qword_4EED90);
  v42 = v97;
  sub_3ECAF4();
  sub_FCF8(v41, &qword_4EED90);
  v43 = swift_allocObject();
  v44 = (v43 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
  v45 = v76;
  *v44 = v75;
  v44[1] = v45;
  v46 = (v43 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_name);
  v47 = v87;
  *v46 = v92;
  v46[1] = v47;
  *(v43 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_providerAction) = v36;
  v48 = v43 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_addedDate;
  *v48 = v74;
  *(v48 + 8) = v73;
  *(v43 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_isSubscribed) = v38;

  v49 = v84;
  v50 = sub_3E8284();
  v75 = v52;
  v76 = v51;
  LODWORD(v74) = v53;
  v73 = v50;
  sub_FBD0(v94, v99, &qword_4F1D50);
  sub_FBD0(v103, v102, &qword_4EDE00);
  v77 = v18;
  sub_FBD0(v42, v96, &unk_4E9170);
  *(v43 + 32) = 0u;
  *(v43 + 48) = 0u;
  *(v43 + 64) = 0;
  v54 = sub_3EC634();
  v55 = v90;
  (*(*(v54 - 8) + 56))(v90, 1, 1, v54);
  sub_FBD0(v55, v95, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v55, &unk_4E9170);
  v101[0] = 0;
  type metadata accessor for Action();
  sub_3ECAE4();
  memset(v101, 0, sizeof(v101));
  sub_FBD0(v101, v100, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v101, &qword_4EDE00);
  v101[0] = 0;
  sub_3ECAE4();
  v101[0] = 0;
  sub_3ECAE4();
  v101[0] = 0;
  sub_3ECAE4();
  v101[0] = 0;
  sub_3ECAE4();
  v56 = v93;
  *(v43 + 16) = v88;
  *(v43 + 24) = v56;
  *(v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v49;
  v57 = v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v58 = v75;
  v59 = v76;
  *v57 = v73;
  *(v57 + 8) = v59;
  *(v57 + 16) = v58;
  *(v57 + 24) = v74;
  *(v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v72;
  *(v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v99, v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v60 = (v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v61 = v86;
  *v60 = v85;
  v60[1] = v61;
  *(v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v79;
  v62 = (v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v62 = 0;
  v62[1] = 0;
  v63 = (v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v63 = v92;
  v63[1] = v47;
  *(v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v64 = (v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  v65 = v81;
  *v64 = v80;
  v64[1] = v65;
  *(v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = 0;
  v66 = (v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v66 = 0;
  v66[1] = 0;
  v67 = v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  LOBYTE(v65) = v82;
  *v67 = v83;
  *(v67 + 4) = v65;
  v68 = v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v68 = 0;
  *(v68 + 8) = 1;
  v100[0] = v89;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v102, v101, &qword_4EDE00);
  sub_FBD0(v101, v100, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v101, &qword_4EDE00);
  v100[0] = v91;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v100[0] = v78;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v100[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v100[0] = 0;
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();
  v69 = v96;
  sub_FBD0(v96, v55, &unk_4E9170);
  sub_FBD0(v55, v95, &unk_4E9170);
  swift_beginAccess();
  sub_3ECB04();
  swift_endAccess();

  sub_FCF8(v55, &unk_4E9170);
  sub_FCF8(v69, &unk_4E9170);
  sub_FCF8(v102, &qword_4EDE00);
  sub_FCF8(v99, &qword_4F1D50);
  sub_FCF8(v97, &unk_4E9170);
  sub_FCF8(v94, &qword_4F1D50);
  sub_FCF8(v103, &qword_4EDE00);
  return v43;
}

uint64_t sub_B277C()
{
}

uint64_t LibraryShowLockup.deinit()
{
  v0 = LegacyLockup.deinit();

  return v0;
}

uint64_t LibraryShowLockup.__deallocating_deinit()
{
  LegacyLockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_B28E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LibraryShowLockup()
{
  result = qword_4EFDF0;
  if (!qword_4EFDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnyReferenceLink.source.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t AnyReferenceLink.timeframe.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t AnyReferenceLink.url.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_B2D78()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_B2DCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0058);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5300;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000000427030;
  v1 = type metadata accessor for PodcastsReferenceLink();
  v2 = sub_B40D0(&qword_4F0060, type metadata accessor for PodcastsReferenceLink);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x8000000000427050;
  v3 = type metadata accessor for AppReferenceLink();
  v4 = sub_B40D0(&qword_4F0068, type metadata accessor for AppReferenceLink);
  *(inited + 80) = v3;
  *(inited + 88) = v4;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x8000000000427070;
  v5 = type metadata accessor for URLReferenceLink();
  v6 = sub_B40D0(&qword_4F0070, type metadata accessor for URLReferenceLink);
  *(inited + 112) = v5;
  *(inited + 120) = v6;
  v7 = sub_61D6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0078);
  result = swift_arrayDestroy();
  qword_4F0018 = v7;
  return result;
}

uint64_t sub_B2F84()
{
  if (qword_4E8958 != -1)
  {
    swift_once();
  }
}

unint64_t sub_B2FE0()
{
  if (qword_4E8958 != -1)
  {
    swift_once();
  }

  v1 = qword_4F0018;

  return sub_B4190(v1);
}

uint64_t sub_B3054@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_3EBF94();
  __chkstk_darwin(v7 - 8);
  v8 = sub_3EBDF4();
  __chkstk_darwin(v8 - 8);
  v9 = dynamic_cast_existential_2_conditional(a1);
  if (v9)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    sub_1F958(a2, v29);
    *&v31 = v12;
    *(&v31 + 1) = v13;
    v32 = v14;
    __swift_allocate_boxed_opaque_existential_0Tm(v30);
    sub_3ED7D4();
    if (v3)
    {
      return __swift_deallocate_boxed_opaque_existential_0Tm(v30);
    }

LABEL_7:
    v28 = v31;
    v22 = v31;
    v23 = __swift_project_boxed_opaque_existential_1(v30, v31);
    *(a3 + 24) = v28;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a3);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0Tm, v23, v22);
    return __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  v16 = dynamic_cast_existential_2_conditional(a1);
  if (v16)
  {
    v19 = v16;
    v20 = v17;
    v21 = v18;
    sub_1F958(a2, v29);
    result = sub_3EBD34();
    if (v3)
    {
      return result;
    }

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_3EE9D4();
    sub_3EBF74();
    *&v31 = v19;
    *(&v31 + 1) = v20;
    v32 = v21;
    __swift_allocate_boxed_opaque_existential_0Tm(v30);
    sub_3EC554();
    goto LABEL_7;
  }

  v25 = sub_3EE444();
  swift_allocError();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0080);
  *v27 = a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_3EE9C4();
  sub_3EE3C4(21);

  v30[0] = 60;
  v30[1] = 0xE100000000000000;
  v33._countAndFlagsBits = sub_3EEB34();
  sub_3ED3D4(v33);

  v34._object = 0x8000000000427090;
  v34._countAndFlagsBits = 0xD000000000000012;
  sub_3ED3D4(v34);
  sub_3EE424();
  (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
  return swift_willThrow();
}

uint64_t AnyReferenceLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3EE434();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F958(a1, v16);
  sub_B3680(v16, v17);
  if (!v2)
  {
    sub_1F958(v17, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0028);
    if (swift_dynamicCast())
    {
      sub_FCF8(v17, &qword_4F0038);
      sub_1D4F0(v13, v16);
      sub_1D4F0(v16, a2);
    }

    else
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      sub_FCF8(v13, &qword_4F0030);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_3EE9C4();
      sub_3EE424();
      v9 = sub_3EE444();
      swift_allocError();
      v11 = v10;
      (*(v6 + 16))(v10, v8, v5);
      (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.dataCorrupted(_:), v9);
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
      sub_FCF8(v17, &qword_4F0038);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_B3680@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v46 = a2;
  v4 = sub_3EE434();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0090);
  v52 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0098);
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  __chkstk_darwin(v13);
  v15 = (&v45 - v14);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v19 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_B4440();
  sub_3EE9F4();
  if (v2)
  {
    *v15 = v2;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_B4494(v12, v15);
  }

  v20 = v18;
  sub_B4494(v15, v18);
  sub_B4504(v18, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_FCF8(v9, &qword_4F0098);
    v21 = v59;
LABEL_9:
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_3EE9C4();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_3EE3C4(91);
    v60._object = 0x80000000004270B0;
    v60._countAndFlagsBits = 0xD000000000000020;
    sub_3ED3D4(v60);
    v61._countAndFlagsBits = 0x6E656E6F706D6F43;
    v61._object = 0xEE006C65646F4D74;
    sub_3ED3D4(v61);
    v62._countAndFlagsBits = 0xD000000000000039;
    v62._object = 0x80000000004270E0;
    sub_3ED3D4(v62);
    v27 = v49;
    sub_3EE424();
    v28 = sub_3EE444();
    swift_allocError();
    v30 = v29;
    v32 = v50;
    v31 = v51;
    (*(v50 + 16))(v29, v27, v51);
    (*(*(v28 - 8) + 104))(v30, enum case for DecodingError.dataCorrupted(_:), v28);
    swift_willThrow();
    (*(v32 + 8))(v27, v31);
LABEL_16:
    sub_FCF8(v20, &qword_4F0098);
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  v22 = v52;
  v23 = v48;
  v24 = v9;
  v25 = v47;
  (*(v52 + 32))(v48, v24, v47);
  v45 = xmmword_3FAF00;
  v53 = xmmword_3FAF00;
  v54 = 1;
  v26 = sub_3EE6D4();
  v21 = v59;
  if ((v26 & 1) == 0)
  {
    (*(v22 + 8))(v23, v25);
    goto LABEL_9;
  }

  v53 = v45;
  v54 = 1;
  v33 = sub_3EE694();
  v35 = v34;
  if (qword_4E8958 != -1)
  {
    swift_once();
  }

  v36 = sub_B4190(qword_4F0018);
  if (!*(v36 + 16) || (v37 = sub_B4118(v33, v35), (v38 & 1) == 0))
  {

    v53 = v45;
    v54 = 1;
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_3EE3C4(26);

    v55 = 0xD000000000000023;
    v56 = 0x8000000000427120;
    v63._countAndFlagsBits = v33;
    v63._object = v35;
    sub_3ED3D4(v63);

    v64._countAndFlagsBits = 96;
    v64._object = 0xE100000000000000;
    sub_3ED3D4(v64);
    sub_3EE444();
    swift_allocError();
    sub_B4574();
    v43 = v48;
    sub_3EE414();

    swift_willThrow();
    (*(v52 + 8))(v43, v25);
    goto LABEL_16;
  }

  v39 = v37;

  v40 = *(*(v36 + 56) + 8 * v39);

  sub_B3054(v40, v21, &v53);
  (*(v52 + 8))(v48, v25);
  sub_FCF8(v20, &qword_4F0098);
  sub_1D4F0(&v53, v57);
  v41 = v57[1];
  v42 = v46;
  *v46 = v57[0];
  v42[1] = v41;
  *(v42 + 4) = v58;
  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

uint64_t AnyReferenceLink.encode(to:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = __swift_project_boxed_opaque_existential_1(v0, v1);
  v6[3] = v1;
  v6[4] = *(v2 + 8);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v6);
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_0Tm, v3, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0038);
  sub_3EBC64();
  return sub_FCF8(v6, &qword_4F0038);
}

uint64_t static TimedReferenceLink.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_3EE804();
  }

  return v12 & 1;
}

unint64_t sub_B3F60()
{
  result = qword_4F0040;
  if (!qword_4F0040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0040);
  }

  return result;
}

unint64_t sub_B3FB4(uint64_t a1)
{
  result = sub_B3FDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_B3FDC()
{
  result = qword_4F0048;
  if (!qword_4F0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0048);
  }

  return result;
}

unint64_t sub_B4030(uint64_t a1)
{
  result = sub_B3F60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_B407C()
{
  result = qword_4F0050;
  if (!qword_4F0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0050);
  }

  return result;
}

uint64_t sub_B40D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_B4118(uint64_t a1, uint64_t a2)
{
  sub_3EE954();
  sub_3ED394();
  v4 = sub_3EE9A4();

  return sub_5854C(a1, a2, v4);
}

unint64_t sub_B4190(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE3F0);
    v2 = sub_3EE5F4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0088);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE400);
        swift_dynamicCast();
        result = sub_B4118(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          *(v2[7] + 8 * v10) = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_B4440()
{
  result = qword_4F00A0;
  if (!qword_4F00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F00A0);
  }

  return result;
}

uint64_t sub_B4494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B4504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_B4574()
{
  result = qword_4F00A8;
  if (!qword_4F00A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F0090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F00A8);
  }

  return result;
}

ShelfKit::AppReferenceLink::ArtworkShape_optional __swiftcall AppReferenceLink.ArtworkShape.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B0528;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t AppReferenceLink.ArtworkShape.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C676E6174636572;
  }

  else
  {
    return 0x656C63726963;
  }
}

uint64_t sub_B467C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C676E6174636572;
  }

  else
  {
    v3 = 0x656C63726963;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x6C676E6174636572;
  }

  else
  {
    v5 = 0x656C63726963;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_B4724()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_B47A8()
{
  sub_3ED394();
}

Swift::Int sub_B4818()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_B4898@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B0528;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_B48F8(uint64_t *a1@<X8>)
{
  v2 = 0x656C63726963;
  if (*v1)
  {
    v2 = 0x6C676E6174636572;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t type metadata accessor for AppReferenceLink()
{
  result = qword_4F0208;
  if (!qword_4F0208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppReferenceLink.artwork.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AppReferenceLink() + 24);

  return sub_B4AE0(a1, v3);
}

uint64_t sub_B4AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E7784();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AppReferenceLink.artworkShape.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppReferenceLink();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AppReferenceLink.artworkShape.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AppReferenceLink();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t AppReferenceLink.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppReferenceLink() + 32));

  return v1;
}

uint64_t AppReferenceLink.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppReferenceLink() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AppReferenceLink.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppReferenceLink() + 36));

  return v1;
}

uint64_t AppReferenceLink.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppReferenceLink() + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AppReferenceLink.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppReferenceLink() + 40));

  return v1;
}

uint64_t AppReferenceLink.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppReferenceLink() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double AppReferenceLink.subtitleAction.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppReferenceLink();
  sub_FBD0(v1 + *(v3 + 44), v6, &qword_4F00B0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t AppReferenceLink.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppReferenceLink() + 48);
  v4 = sub_3E7D54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppReferenceLink.source.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppReferenceLink() + 48);
  v4 = sub_3E7D54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppReferenceLink.shareURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppReferenceLink() + 56);
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double AppReferenceLink.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppReferenceLink();
  sub_FBD0(v1 + *(v3 + 60), v6, &qword_4F00B0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t AppReferenceLink.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for AppReferenceLink();
  sub_FBD0(v1 + *(v6 + 64), v5, &qword_4F00C0);
  return sub_B5420(v5, a1);
}

uint64_t sub_B5420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B5490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for AppReferenceLink();
  sub_FBD0(a1 + *(v7 + 64), v6, &qword_4F00C0);
  return sub_B5420(v6, a2);
}

uint64_t sub_B56B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppReferenceLink() + 56);
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_B5780(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x6B726F77747261;
      break;
    case 3:
      result = 0x536B726F77747261;
      break;
    case 4:
      result = 0x656C746974;
      break;
    case 5:
      result = 0x6C6562616CLL;
      break;
    case 6:
    case 7:
      result = 0x656C746974627573;
      break;
    case 8:
      result = 0x656372756F73;
      break;
    case 9:
      result = 0x6D617266656D6974;
      break;
    case 10:
      result = 0x6C72556572616873;
      break;
    case 11:
      result = 0x6575676573;
      break;
    case 12:
      result = 0x4D747865746E6F63;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_B5924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_3E7D54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_B59CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_3E5DC4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double sub_B5A40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_FBD0(v2 + *(a1 + 60), v6, &qword_4F00B0);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_B5A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_FBD0(v2 + *(a1 + 64), &v9 - v6, &qword_4F00C0);
  return sub_B5420(v7, a2);
}

uint64_t sub_B5B80(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_B5780(*a1);
  v5 = v4;
  if (v3 == sub_B5780(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_B5C08()
{
  v1 = *v0;
  sub_3EE954();
  sub_B5780(v1);
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_B5C6C()
{
  sub_B5780(*v0);
  sub_3ED394();
}

Swift::Int sub_B5CC0()
{
  v1 = *v0;
  sub_3EE954();
  sub_B5780(v1);
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_B5D20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_B8418(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_B5D50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B5780(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_B5D98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B8418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B5DCC(uint64_t a1)
{
  v2 = sub_B63F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B5E08(uint64_t a1)
{
  v2 = sub_B63F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppReferenceLink.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_B63F0();
  sub_3EEA14();
  v27 = 0;
  sub_3EE734();
  if (!v2)
  {
    v26 = 1;
    sub_3EE734();
    v9 = type metadata accessor for AppReferenceLink();
    v25 = 2;
    sub_3E7784();
    sub_B7844(&qword_4F00E0, &type metadata accessor for ArtworkModel);
    sub_3EE764();
    v24 = *(v3 + *(v9 + 28));
    v23 = 3;
    sub_B6444();
    sub_3EE764();
    v22 = 4;
    sub_3EE734();
    v21 = 5;
    sub_3EE734();
    v20 = 6;
    sub_3EE6F4();
    v19 = 7;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B0);
    sub_B74F0(&qword_4F00F0, &qword_4F00F8);
    sub_3EE764();
    v12 = v10;
    v18 = 8;
    sub_3E7D54();
    sub_B7844(&qword_4F0108, &type metadata accessor for MetadataSource);
    sub_3EE764();
    v17 = 9;
    type metadata accessor for ReferenceLinkTimeframe();
    sub_B7844(&qword_4F0110, type metadata accessor for ReferenceLinkTimeframe);
    sub_3EE724();
    v16 = 10;
    sub_3E5DC4();
    sub_B7844(&qword_4F0118, &type metadata accessor for URL);
    sub_3EE764();
    v15 = 11;
    sub_3EE764();
    v14 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
    sub_B6498();
    sub_3EE764();
    v13 = 13;
    sub_3EC634();
    sub_B7844(&qword_4F0138, &type metadata accessor for ImpressionMetrics);
    sub_3EE724();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_B63F0()
{
  result = qword_4F00D8;
  if (!qword_4F00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F00D8);
  }

  return result;
}

unint64_t sub_B6444()
{
  result = qword_4F00E8;
  if (!qword_4F00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F00E8);
  }

  return result;
}

unint64_t sub_B6498()
{
  result = qword_4F0120;
  if (!qword_4F0120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F00C0);
    sub_B6554(&qword_4F0128, &qword_4F0130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0120);
  }

  return result;
}

uint64_t sub_B6554(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F00C8);
    sub_B7844(a2, &type metadata accessor for Models.Menu);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AppReferenceLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v3 - 8);
  v74 = &v69 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
  __chkstk_darwin(v75);
  v76 = &v69 - v5;
  v81 = sub_3E5DC4();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  __chkstk_darwin(v7 - 8);
  v78 = &v69 - v8;
  v9 = sub_3E7D54();
  v82 = *(v9 - 8);
  v83 = v9;
  __chkstk_darwin(v9);
  v79 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_3E7784();
  __chkstk_darwin(v86);
  v85 = (&v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0140);
  v84 = *(v87 - 8);
  __chkstk_darwin(v87);
  v13 = &v69 - v12;
  v14 = type metadata accessor for AppReferenceLink();
  __chkstk_darwin(v14);
  v16 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v16 + *(v17 + 44);
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v94 = v18;
  sub_51F9C(&v97, v18, &qword_4EDE00);
  v19 = v14[13];
  v20 = type metadata accessor for ReferenceLinkTimeframe();
  v21 = *(*(v20 - 8) + 56);
  v93 = v19;
  v21(v16 + v19, 1, 1, v20);
  v22 = v16 + v14[15];
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v92 = v22;
  sub_51F9C(&v97, v22, &qword_4EDE00);
  v23 = v14[16];
  v24 = sub_3ECC84();
  v25 = *(*(v24 - 8) + 56);
  v91 = v23;
  v25(v16 + v23, 1, 1, v24);
  v26 = v14[17];
  v27 = sub_3EC634();
  v28 = *(*(v27 - 8) + 56);
  v89 = v26;
  v96 = v16;
  v28(v16 + v26, 1, 1, v27);
  v29 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_B63F0();
  v88 = v13;
  v30 = v95;
  sub_3EE9F4();
  if (v30)
  {
    v95 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    v35 = v96;
LABEL_4:

    sub_FCF8(v94, &qword_4F00B0);
    sub_FCF8(v35 + v93, &qword_4F00B8);
LABEL_5:
    sub_FCF8(v92, &qword_4F00B0);
    sub_FCF8(v35 + v91, &qword_4F00C0);
    return sub_FCF8(v35 + v89, &unk_4E9170);
  }

  v31 = v85;
  v72 = v20;
  v71 = v27;
  v32 = v84;
  LOBYTE(v97) = 0;
  v33 = v87;
  v34 = sub_3EE694();
  v37 = v96;
  *v96 = v34;
  v37[1] = v38;
  LOBYTE(v97) = 1;
  v37[2] = sub_3EE694();
  v37[3] = v39;
  LOBYTE(v97) = 2;
  sub_B7844(&qword_4F0148, &type metadata accessor for ArtworkModel);
  v70 = 0;
  sub_3EE6C4();
  v95 = 0;
  sub_83F9C(v31, v37 + v14[6]);
  v100 = 3;
  sub_B749C();
  v40 = v95;
  sub_3EE6C4();
  if (v40)
  {
    v95 = v40;
    (*(v32 + 8))(v88, v33);
    v42 = 0;
    v43 = 0;
    v44 = 0;
LABEL_9:
    v45 = v70;
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    v35 = v96;

    if (!v45)
    {
    }

    sub_B76EC(v35 + v14[6], &type metadata accessor for ArtworkModel);
    if (v42)
    {

      if ((v43 & 1) == 0)
      {
        goto LABEL_4;
      }

      v86 = v44;
    }

    else
    {
      if (!v43)
      {
        goto LABEL_4;
      }

      v86 = v44;
    }

    v46 = 0;
    v47 = 0;
    v49 = v81;
    v48 = v82;
    v50 = v80;
    v51 = v83;
LABEL_17:

    sub_FCF8(v94, &qword_4F00B0);
    if (v46)
    {
      (*(v48 + 8))(v35 + v14[12], v51);
      sub_FCF8(v35 + v93, &qword_4F00B8);
      if ((v47 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_FCF8(v35 + v93, &qword_4F00B8);
      if (!v47)
      {
        goto LABEL_5;
      }
    }

    (*(v50 + 8))(v35 + v14[14], v49);
    goto LABEL_5;
  }

  *(v37 + v14[7]) = v97;
  LOBYTE(v97) = 4;
  v41 = sub_3EE694();
  v52 = (v37 + v14[8]);
  *v52 = v41;
  v52[1] = v53;
  LOBYTE(v97) = 5;
  v54 = sub_3EE694();
  v55 = (v37 + v14[9]);
  *v55 = v54;
  v55[1] = v56;
  LOBYTE(v97) = 6;
  v57 = sub_3EE644();
  v95 = 0;
  v85 = v14;
  v86 = v58;
  v59 = (v37 + v14[10]);
  *v59 = v57;
  v59[1] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B0);
  v100 = 7;
  sub_B74F0(&qword_4F0158, &qword_4F0160);
  v60 = v95;
  sub_3EE6C4();
  v95 = v60;
  if (v60)
  {
    (*(v32 + 8))(v88, v87);
    v42 = 1;
    v43 = 1;
    v14 = v85;
    v44 = v86;
    goto LABEL_9;
  }

  sub_51F9C(&v97, v94, &qword_4F00B0);
  LOBYTE(v97) = 8;
  sub_B7844(&qword_4F0168, &type metadata accessor for MetadataSource);
  v61 = v79;
  v62 = v95;
  sub_3EE6C4();
  v46 = v62 == 0;
  v95 = v62;
  if (v62)
  {
    (*(v32 + 8))(v88, v87);
    v47 = 0;
    v49 = v81;
    v48 = v82;
    v50 = v80;
    v51 = v83;
    v14 = v85;
LABEL_31:
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    v35 = v96;

    sub_B76EC(v35 + v14[6], &type metadata accessor for ArtworkModel);

    goto LABEL_17;
  }

  (*(v82 + 32))(v96 + v85[12], v61, v83);
  LOBYTE(v97) = 9;
  sub_B7844(&qword_4F0170, type metadata accessor for ReferenceLinkTimeframe);
  v63 = v95;
  sub_3EE684();
  v95 = v63;
  if (v63 || (sub_51F9C(v78, v96 + v93, &qword_4F00B8), LOBYTE(v97) = 10, sub_B7844(&qword_4F0178, &type metadata accessor for URL), v64 = v95, sub_3EE6C4(), (v95 = v64) != 0))
  {
    (*(v32 + 8))(v88, v87);
    v47 = 0;
LABEL_30:
    v49 = v81;
    v48 = v82;
    v50 = v80;
    v51 = v83;
    goto LABEL_31;
  }

  (*(v80 + 32))(v96 + v14[14], v77, v81);
  v100 = 11;
  v65 = v95;
  sub_3EE6C4();
  v95 = v65;
  if (v65 || (sub_51F9C(&v97, v92, &qword_4F00B0), LOBYTE(v97) = 12, sub_B75C8(), v66 = v95, sub_3EE6C4(), (v95 = v66) != 0) || (sub_51F9C(v76, v96 + v91, &qword_4F00C0), LOBYTE(v97) = 13, sub_B7844(&qword_4F0198, &type metadata accessor for ImpressionMetrics), v67 = v95, sub_3EE684(), (v95 = v67) != 0))
  {
    (*(v32 + 8))(v88, v87);
    v47 = 1;
    goto LABEL_30;
  }

  (*(v32 + 8))(v88, v87);
  v68 = v96;
  sub_51F9C(v74, v96 + v89, &unk_4E9170);
  sub_B7684(v68, v73, type metadata accessor for AppReferenceLink);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  return sub_B76EC(v68, type metadata accessor for AppReferenceLink);
}

unint64_t sub_B749C()
{
  result = qword_4F0150;
  if (!qword_4F0150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0150);
  }

  return result;
}

uint64_t sub_B74F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F00B0);
    sub_B7578(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B7578(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F0100);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_B75C8()
{
  result = qword_4F0180;
  if (!qword_4F0180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F00C0);
    sub_B6554(&qword_4F0188, &qword_4F0190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0180);
  }

  return result;
}

uint64_t sub_B7684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_B76EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_B7750()
{
  result = qword_4F01A0;
  if (!qword_4F01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F01A0);
  }

  return result;
}

uint64_t sub_B77A4(uint64_t a1)
{
  result = sub_B7844(&qword_4F0068, type metadata accessor for AppReferenceLink);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_B7844(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_B78BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppReferenceLink();
  sub_FBD0(a1 + *(v4 + 44), v7, &qword_4F00B0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

double sub_B7970@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppReferenceLink();
  sub_FBD0(a1 + *(v4 + 60), v7, &qword_4F00B0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_B7A88(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_3E7784();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_3E7D54();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_15;
  }

  v14 = sub_3E5DC4();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[14];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[16];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[17];

  return v18(v19, a2, v17);
}

uint64_t sub_B7D04(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_3E7784();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_3E7D54();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_13;
  }

  v14 = sub_3E5DC4();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[14];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[16];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[17];

  return v18(v19, a2, a2, v17);
}

void sub_B7F6C()
{
  sub_3E7784();
  if (v0 <= 0x3F)
  {
    sub_1972C();
    if (v1 <= 0x3F)
    {
      sub_B8108(319, &qword_4F0218, &qword_4F0100);
      if (v2 <= 0x3F)
      {
        sub_3E7D54();
        if (v3 <= 0x3F)
        {
          sub_B815C(319, &qword_4F0220, type metadata accessor for ReferenceLinkTimeframe);
          if (v4 <= 0x3F)
          {
            sub_3E5DC4();
            if (v5 <= 0x3F)
            {
              sub_B8108(319, &unk_4F0228, &qword_4F00C8);
              if (v6 <= 0x3F)
              {
                sub_B815C(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_B8108(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_3EC324();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_B815C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppReferenceLink.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppReferenceLink.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_B8314()
{
  result = qword_4F0288;
  if (!qword_4F0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0288);
  }

  return result;
}

unint64_t sub_B836C()
{
  result = qword_4F0290;
  if (!qword_4F0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0290);
  }

  return result;
}

unint64_t sub_B83C4()
{
  result = qword_4F0298;
  if (!qword_4F0298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0298);
  }

  return result;
}

uint64_t sub_B8418(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B0578;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_B8464(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

unint64_t sub_B84CC()
{
  result = qword_4F02A0;
  if (!qword_4F02A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F02A0);
  }

  return result;
}

uint64_t PodcastsReferenceLink.content.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  sub_3DE90(v1, v2, v3);
  return v4;
}

void PodcastsReferenceLink.content.setter(char a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_3DEF8(*(v4 + 24), *(v4 + 32), *(v4 + 40));
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
}

uint64_t type metadata accessor for PodcastsReferenceLink()
{
  result = qword_4F0340;
  if (!qword_4F0340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PodcastsReferenceLink.artwork.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PodcastsReferenceLink() + 24);

  return sub_B4AE0(a1, v3);
}

uint64_t PodcastsReferenceLink.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsReferenceLink() + 28));

  return v1;
}

uint64_t PodcastsReferenceLink.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PodcastsReferenceLink() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PodcastsReferenceLink.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsReferenceLink() + 32));

  return v1;
}

uint64_t PodcastsReferenceLink.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PodcastsReferenceLink() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PodcastsReferenceLink.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsReferenceLink() + 36));

  return v1;
}

uint64_t PodcastsReferenceLink.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PodcastsReferenceLink() + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double PodcastsReferenceLink.subtitleAction.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PodcastsReferenceLink();
  sub_FBD0(v1 + *(v3 + 40), v6, &qword_4F00B0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t PodcastsReferenceLink.contentRating.setter(char a1)
{
  result = type metadata accessor for PodcastsReferenceLink();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t PodcastsReferenceLink.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PodcastsReferenceLink() + 48);
  v4 = sub_3E7D54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PodcastsReferenceLink.source.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PodcastsReferenceLink() + 48);
  v4 = sub_3E7D54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PodcastsReferenceLink.shareURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PodcastsReferenceLink() + 56);
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double PodcastsReferenceLink.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PodcastsReferenceLink();
  sub_FBD0(v1 + *(v3 + 60), v6, &qword_4F00B0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_B8FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PodcastsReferenceLink() + 56);
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BubbleTip.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3ECC84();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_B909C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x746E65746E6F63;
      break;
    case 2:
      result = 0x6B726F77747261;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x6C6562616CLL;
      break;
    case 5:
    case 6:
      result = 0x656C746974627573;
      break;
    case 7:
      result = 0x52746E65746E6F63;
      break;
    case 8:
      result = 0x656372756F73;
      break;
    case 9:
      result = 0x6D617266656D6974;
      break;
    case 10:
      result = 0x6C72556572616873;
      break;
    case 11:
      result = 0x6575676573;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_B9254(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_B909C(*a1);
  v5 = v4;
  if (v3 == sub_B909C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_B92DC()
{
  v1 = *v0;
  sub_3EE954();
  sub_B909C(v1);
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_B9340()
{
  sub_B909C(*v0);
  sub_3ED394();
}

Swift::Int sub_B9394()
{
  v1 = *v0;
  sub_3EE954();
  sub_B909C(v1);
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_B93F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BB5A4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_B9424@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B909C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_B946C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BB5A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B94A0(uint64_t a1)
{
  v2 = sub_B9AA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B94DC(uint64_t a1)
{
  v2 = sub_B9AA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PodcastsReferenceLink.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F02A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_B9AA8();
  sub_3EEA14();
  v14 = 0;
  sub_3EE734();
  if (!v2)
  {
    v9 = *(v3 + 40);
    v14 = *(v3 + 16);
    v15 = *(v3 + 24);
    v16 = v9;
    v17 = 1;
    sub_B9AFC();
    sub_3EE764();
    v10 = type metadata accessor for PodcastsReferenceLink();
    v14 = 2;
    sub_3E7784();
    sub_BAB1C(&qword_4F00E0, &type metadata accessor for ArtworkModel);
    sub_3EE764();
    v14 = 3;
    sub_3EE734();
    v14 = 4;
    sub_3EE734();
    v14 = 5;
    sub_3EE734();
    v14 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B0);
    sub_B74F0(&qword_4F00F0, &qword_4F00F8);
    sub_3EE764();
    v14 = *(v3 + v10[11]);
    v17 = 7;
    sub_B9B50();
    sub_3EE724();
    v13 = v10[12];
    v14 = 8;
    sub_3E7D54();
    sub_BAB1C(&qword_4F0108, &type metadata accessor for MetadataSource);
    sub_3EE764();
    v13 = v10[13];
    v14 = 9;
    type metadata accessor for ReferenceLinkTimeframe();
    sub_BAB1C(&qword_4F0110, type metadata accessor for ReferenceLinkTimeframe);
    sub_3EE724();
    v13 = v10[14];
    v14 = 10;
    sub_3E5DC4();
    sub_BAB1C(&qword_4F0118, &type metadata accessor for URL);
    sub_3EE764();
    v14 = 11;
    sub_3EE764();
    v14 = 12;
    sub_3EC634();
    sub_BAB1C(&qword_4F0138, &type metadata accessor for ImpressionMetrics);
    sub_3EE724();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_B9AA8()
{
  result = qword_4F02B0;
  if (!qword_4F02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F02B0);
  }

  return result;
}

unint64_t sub_B9AFC()
{
  result = qword_4F02B8;
  if (!qword_4F02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F02B8);
  }

  return result;
}

unint64_t sub_B9B50()
{
  result = qword_4F02C0;
  if (!qword_4F02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F02C0);
  }

  return result;
}

uint64_t PodcastsReferenceLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v3 - 8);
  v53 = &v50 - v4;
  v5 = sub_3E5DC4();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  __chkstk_darwin(v7 - 8);
  v55 = &v50 - v8;
  v9 = sub_3E7D54();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v62 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_3E7784();
  __chkstk_darwin(v61);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F02C8);
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v14 = &v50 - v13;
  v15 = type metadata accessor for PodcastsReferenceLink();
  __chkstk_darwin(v15);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v17 + *(v18 + 40);
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v71 = v19;
  sub_51F9C(v72, v19, &qword_4EDE00);
  v20 = v15[13];
  v21 = type metadata accessor for ReferenceLinkTimeframe();
  v22 = *(*(v21 - 8) + 56);
  v69 = v20;
  v22(v17 + v20, 1, 1, v21);
  v23 = v17 + v15[15];
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  v68 = v23;
  sub_51F9C(v72, v23, &qword_4EDE00);
  v24 = v15[16];
  v25 = sub_3EC634();
  v26 = *(*(v25 - 8) + 56);
  v67 = v24;
  v70 = v17;
  v27 = v17 + v24;
  v28 = v25;
  v26(v27, 1, 1, v25);
  v29 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_B9AA8();
  v64 = v14;
  v30 = v65;
  sub_3EE9F4();
  if (v30)
  {
    v34 = v70;
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    sub_FCF8(v71, &qword_4F00B0);
    sub_FCF8(v34 + v69, &qword_4F00B8);
    sub_FCF8(v68, &qword_4F00B0);
    return sub_FCF8(v34 + v67, &unk_4E9170);
  }

  else
  {
    v65 = v21;
    v31 = v62;
    v32 = v60;
    v51 = v15;
    LOBYTE(v72[0]) = 0;
    v33 = sub_3EE694();
    v50 = v28;
    v35 = v70;
    *v70 = v33;
    v35[1] = v36;
    v74 = 1;
    sub_BA90C();
    sub_3EE6C4();
    v37 = BYTE8(v72[1]);
    *(v35 + 16) = v72[0];
    *(v35 + 3) = *(v72 + 8);
    *(v35 + 40) = v37;
    LOBYTE(v72[0]) = 2;
    sub_BAB1C(&qword_4F0148, &type metadata accessor for ArtworkModel);
    v61 = 0;
    sub_3EE6C4();
    v38 = v51;
    sub_83F9C(v12, v35 + v51[6]);
    LOBYTE(v72[0]) = 3;
    v39 = sub_3EE694();
    v40 = (v35 + v38[7]);
    *v40 = v39;
    v40[1] = v41;
    LOBYTE(v72[0]) = 4;
    v42 = sub_3EE694();
    v43 = (v35 + v38[8]);
    *v43 = v42;
    v43[1] = v44;
    LOBYTE(v72[0]) = 5;
    v45 = sub_3EE694();
    v46 = (v35 + v38[9]);
    *v46 = v45;
    v46[1] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B0);
    v74 = 6;
    sub_B74F0(&qword_4F0158, &qword_4F0160);
    sub_3EE6C4();
    sub_51F9C(v72, v71, &qword_4F00B0);
    v74 = 7;
    sub_BA960();
    sub_3EE684();
    *(v35 + v38[11]) = v72[0];
    LOBYTE(v72[0]) = 8;
    sub_BAB1C(&qword_4F0168, &type metadata accessor for MetadataSource);
    sub_3EE6C4();
    (*(v58 + 32))(v35 + v51[12], v31, v59);
    LOBYTE(v72[0]) = 9;
    sub_BAB1C(&qword_4F0170, type metadata accessor for ReferenceLinkTimeframe);
    sub_3EE684();
    sub_51F9C(v55, v70 + v69, &qword_4F00B8);
    LOBYTE(v72[0]) = 10;
    sub_BAB1C(&qword_4F0178, &type metadata accessor for URL);
    sub_3EE6C4();
    (*(v56 + 32))(v70 + v51[14], v54, v57);
    v74 = 11;
    sub_3EE6C4();
    sub_51F9C(v72, v68, &qword_4F00B0);
    LOBYTE(v72[0]) = 12;
    sub_BAB1C(&qword_4F0198, &type metadata accessor for ImpressionMetrics);
    sub_3EE684();
    (*(v32 + 8))(v64, v63);
    v48 = v70;
    sub_51F9C(v53, v70 + v67, &unk_4E9170);
    sub_BA9B4(v48, v52, type metadata accessor for PodcastsReferenceLink);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    return sub_BAA1C(v48, type metadata accessor for PodcastsReferenceLink);
  }
}

unint64_t sub_BA90C()
{
  result = qword_4F02D0;
  if (!qword_4F02D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F02D0);
  }

  return result;
}

unint64_t sub_BA960()
{
  result = qword_4F02D8;
  if (!qword_4F02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F02D8);
  }

  return result;
}

uint64_t sub_BA9B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_BAA1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_BAA7C(uint64_t a1)
{
  result = sub_BAB1C(&qword_4F0060, type metadata accessor for PodcastsReferenceLink);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_BAB1C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_BAB94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PodcastsReferenceLink();
  sub_FBD0(a1 + *(v4 + 40), v7, &qword_4F00B0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_BABFC(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for PodcastsReferenceLink() + 40);

  return sub_BB5F0(a1, v3);
}

double sub_BAC44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PodcastsReferenceLink();
  sub_FBD0(a1 + *(v4 + 60), v7, &qword_4F00B0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_BACAC(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for PodcastsReferenceLink() + 60);

  return sub_BB5F0(a1, v3);
}

uint64_t sub_BAD08(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_3E7784();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_3E7D54();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v14 = sub_3E5DC4();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[14];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[16];

  return v17(v18, a2, v16);
}

uint64_t sub_BAF30(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_3E7784();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_3E7D54();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v14 = sub_3E5DC4();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[14];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[16];

  return v17(v18, a2, a2, v16);
}

void sub_BB144()
{
  sub_3E7784();
  if (v0 <= 0x3F)
  {
    sub_BB298();
    if (v1 <= 0x3F)
    {
      sub_BB2FC();
      if (v2 <= 0x3F)
      {
        sub_3E7D54();
        if (v3 <= 0x3F)
        {
          sub_B815C(319, &qword_4F0220, type metadata accessor for ReferenceLinkTimeframe);
          if (v4 <= 0x3F)
          {
            sub_3E5DC4();
            if (v5 <= 0x3F)
            {
              sub_B815C(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_BB298()
{
  if (!qword_4F0218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F0100);
    v0 = sub_3EC324();
    if (!v1)
    {
      atomic_store(v0, &qword_4F0218);
    }
  }
}

void sub_BB2FC()
{
  if (!qword_4F0350)
  {
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F0350);
    }
  }
}

uint64_t getEnumTagSinglePayload for PodcastsReferenceLink.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PodcastsReferenceLink.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_BB4A0()
{
  result = qword_4F03B0;
  if (!qword_4F03B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F03B0);
  }

  return result;
}

unint64_t sub_BB4F8()
{
  result = qword_4F03B8;
  if (!qword_4F03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F03B8);
  }

  return result;
}

unint64_t sub_BB550()
{
  result = qword_4F03C0;
  if (!qword_4F03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F03C0);
  }

  return result;
}

uint64_t sub_BB5A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B06E8;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_BB5F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDE00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t ReferenceLinkMetadata.init(url:title:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_3E5DC4();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ReferenceLinkMetadata();
  v12 = (a5 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

uint64_t type metadata accessor for ReferenceLinkMetadata()
{
  result = qword_4F0420;
  if (!qword_4F0420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReferenceLinkMetadata.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReferenceLinkMetadata() + 20));

  return v1;
}

void *ReferenceLinkMetadata.image.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReferenceLinkMetadata() + 24));
  v2 = v1;
  return v1;
}

uint64_t ReferenceLinkMetadata.subtitle.getter()
{
  v0 = sub_3E5D54(1);
  if (v1)
  {
    v3._countAndFlagsBits = 779581303;
    v3._object = 0xE400000000000000;
    v0 = sub_3ED2F4(v3);
  }

  return v0;
}

uint64_t ReferenceLinkMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ReferenceLinkMetadata();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 URL];
  if (!v16)
  {

LABEL_6:
    v26 = 1;
    return (*(v12 + 56))(a2, v26, 1, v11);
  }

  v17 = v16;
  sub_3E5D44();

  (*(v5 + 32))(v10, v7, v4);
  v18 = [a1 title];
  if (!v18)
  {

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  v19 = v18;
  v20 = sub_3ED244();
  v29 = a2;
  v22 = v21;

  (*(v5 + 16))(v15, v10, v4);
  v23 = &v15[*(v11 + 20)];
  *v23 = v20;
  v23[1] = v22;
  a2 = v29;
  v24 = [a1 image];
  v25 = [v24 platformImage];

  (*(v5 + 8))(v10, v4);
  *&v15[*(v11 + 24)] = v25;
  sub_BBBB4(v15, a2);
  v26 = 0;
  return (*(v12 + 56))(a2, v26, 1, v11);
}

uint64_t _s8ShelfKit21ReferenceLinkMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s8ShelfKit15FetchPageIntentV2eeoiySbAC_ACtFZ_0())
  {
    v4 = type metadata accessor for ReferenceLinkMetadata();
    v5 = *(v4 + 20);
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (v9 || (sub_3EE804() & 1) != 0)
    {
      v10 = *(v4 + 24);
      v11 = *(a1 + v10);
      v12 = *(a2 + v10);
      if (v11)
      {
        if (v12)
        {
          sub_132A0();
          v13 = v12;
          v14 = v11;
          v15 = sub_3EDEC4();

          if (v15)
          {
            return 1;
          }
        }
      }

      else if (!v12)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_BBBB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceLinkMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_BBC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3E5DC4();
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

uint64_t sub_BBD00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3E5DC4();
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

void sub_BBDBC()
{
  sub_3E5DC4();
  if (v0 <= 0x3F)
  {
    sub_BBE48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_BBE48()
{
  if (!qword_4F0430)
  {
    sub_132A0();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F0430);
    }
  }
}

uint64_t ReferenceLinkTimeframe.init(offerType:start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ReferenceLinkTimeframe();
  v13 = a6 + *(v12 + 20);
  v14 = a6 + *(v12 + 24);
  v15 = sub_3E9604();
  result = (*(*(v15 - 8) + 32))(a6, a1, v15);
  *v13 = a2;
  *(v13 + 8) = a3 & 1;
  *v14 = a4;
  *(v14 + 8) = a5 & 1;
  return result;
}

uint64_t type metadata accessor for ReferenceLinkTimeframe()
{
  result = qword_4F04E8;
  if (!qword_4F04E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReferenceLinkTimeframe.offerType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3E9604();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReferenceLinkTimeframe.offerType.setter(uint64_t a1)
{
  v3 = sub_3E9604();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReferenceLinkTimeframe.start.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ReferenceLinkTimeframe();
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ReferenceLinkTimeframe.end.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ReferenceLinkTimeframe();
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_BC23C()
{
  v1 = 0x7472617473;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707954726566666FLL;
  }
}

uint64_t sub_BC290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BCDD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_BC2C4(uint64_t a1)
{
  v2 = sub_BCA1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BC300(uint64_t a1)
{
  v2 = sub_BCA1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReferenceLinkTimeframe.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0468);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_BCA1C();
  sub_3EEA14();
  v8[15] = 0;
  sub_3E9604();
  sub_BCEEC(&qword_4F0478);
  sub_3EE764();
  if (!v1)
  {
    type metadata accessor for ReferenceLinkTimeframe();
    v8[14] = 1;
    sub_3EE714();
    v8[13] = 2;
    sub_3EE714();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReferenceLinkTimeframe.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_3E9604();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0480);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ReferenceLinkTimeframe();
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_BCA1C();
  sub_3EE9F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = v10;
  v12 = v26;
  v11 = v27;
  v32 = 0;
  sub_BCEEC(&qword_4F0488);
  v13 = v28;
  sub_3EE6C4();
  (*(v11 + 32))(v24, v29, v4);
  v31 = 1;
  v14 = sub_3EE664();
  v15 = &v24[*(v8 + 20)];
  *v15 = v14;
  v15[8] = v16 & 1;
  v30 = 2;
  v17 = sub_3EE664();
  LODWORD(v29) = v18;
  v19 = v17;
  v20 = *(v8 + 24);
  v21 = v24;
  v22 = &v24[v20];
  (*(v12 + 8))(v7, v13);
  *v22 = v19;
  v22[8] = v29 & 1;
  sub_BCA70(v21, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_BCAD4(v21);
}

BOOL _s8ShelfKit22ReferenceLinkTimeframeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_3E9604();
  sub_BCEEC(&qword_4F0540);
  sub_3ED514();
  sub_3ED514();
  if (v20 == v18 && v21 == v19)
  {
  }

  else
  {
    v5 = sub_3EE804();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for ReferenceLinkTimeframe();
  v7 = *(v6 + 20);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 8);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = *(v6 + 24);
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 8);
  if ((v14 & 1) == 0)
  {
    if (*v13 != *v15)
    {
      v16 = 1;
    }

    return (v16 & 1) == 0;
  }

  return (v16 & 1) != 0;
}

unint64_t sub_BCA1C()
{
  result = qword_4F0470;
  if (!qword_4F0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0470);
  }

  return result;
}

uint64_t sub_BCA70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceLinkTimeframe();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BCAD4(uint64_t a1)
{
  v2 = type metadata accessor for ReferenceLinkTimeframe();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BCB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E9604();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_BCBC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E9604();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_BCC34()
{
  sub_3E9604();
  if (v0 <= 0x3F)
  {
    sub_757D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_BCCCC()
{
  result = qword_4F0528;
  if (!qword_4F0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0528);
  }

  return result;
}

unint64_t sub_BCD24()
{
  result = qword_4F0530;
  if (!qword_4F0530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0530);
  }

  return result;
}

unint64_t sub_BCD7C()
{
  result = qword_4F0538;
  if (!qword_4F0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0538);
  }

  return result;
}

uint64_t sub_BCDD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954726566666FLL && a2 == 0xE900000000000065;
  if (v4 || (sub_3EE804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_3EE804();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_BCEEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_3E9604();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TimedReferenceLink.init(model:priceType:startTime:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = type metadata accessor for TimedReferenceLink();
  v13 = a5 + v12[7];
  v14 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v14;
  *(a5 + 32) = *(a1 + 32);
  v15 = v12[5];
  v16 = sub_3E9604();
  result = (*(*(v16 - 8) + 32))(a5 + v15, a2, v16);
  *(a5 + v12[6]) = a6;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
  return result;
}

uint64_t type metadata accessor for TimedReferenceLink()
{
  result = qword_4F05A8;
  if (!qword_4F05A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TimedReferenceLink.priceType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimedReferenceLink() + 20);
  v4 = sub_3E9604();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TimedReferenceLink.startTime.setter(double a1)
{
  result = type metadata accessor for TimedReferenceLink();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TimedReferenceLink.endTime.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TimedReferenceLink();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TimedReferenceLink.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3E9604();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ReferenceLinkTimeframe();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 32))(v14, v15);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_BD5AC(a1);
    sub_BD600(v9);
LABEL_5:
    v17 = type metadata accessor for TimedReferenceLink();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  sub_BD668(v9, v13);
  v16 = &v13[*(v10 + 20)];
  if (v16[8])
  {
    sub_BD5AC(a1);
    sub_BCAD4(v13);
    goto LABEL_5;
  }

  v19 = *v16;
  v21 = v28;
  v20 = v29;
  (*(v28 + 16))(v6, v13, v29);
  v22 = &v13[*(v10 + 24)];
  v23 = *v22;
  v24 = v22[8];
  sub_BCAD4(v13);
  v25 = type metadata accessor for TimedReferenceLink();
  v26 = a2 + v25[7];
  v27 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v27;
  *(a2 + 32) = *(a1 + 32);
  (*(v21 + 32))(a2 + v25[5], v6, v20);
  *(a2 + v25[6]) = v19;
  *v26 = v23;
  *(v26 + 8) = v24;
  return (*(*(v25 - 1) + 56))(a2, 0, 1, v25);
}

uint64_t sub_BD600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BD668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceLinkTimeframe();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_BD710()
{
  result = qword_4F0548;
  if (!qword_4F0548)
  {
    type metadata accessor for TimedReferenceLink();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0548);
  }

  return result;
}

uint64_t sub_BD7DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_3E9604();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_BD89C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_3E9604();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_BD940()
{
  sub_3E9604();
  if (v0 <= 0x3F)
  {
    sub_757D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_BD9DC()
{
  sub_3ED394();
}

uint64_t sub_BDB28()
{
  sub_3ED394();
}

uint64_t sub_BDC30()
{
  sub_3ED394();
}

uint64_t URLReferenceLink.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for URLReferenceLink() + 24);
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for URLReferenceLink()
{
  result = qword_4F0678;
  if (!qword_4F0678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t URLReferenceLink.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for URLReferenceLink() + 24);
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t URLReferenceLink.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for URLReferenceLink() + 28);
  v4 = sub_3E7D54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t URLReferenceLink.source.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for URLReferenceLink() + 28);
  v4 = sub_3E7D54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t URLReferenceLink.hydration.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for URLReferenceLink();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t URLReferenceLink.hydration.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for URLReferenceLink();
  *(v1 + *(result + 32)) = v2;
  return result;
}

double URLReferenceLink.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URLReferenceLink();
  sub_FBD0(v1 + *(v3 + 40), v6, &qword_4F00B0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t URLReferenceLink.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for URLReferenceLink();
  sub_FBD0(v1 + *(v6 + 44), v5, &qword_4F00C0);
  return sub_B5420(v5, a1);
}

uint64_t sub_BE398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for URLReferenceLink();
  sub_FBD0(a1 + *(v7 + 44), v6, &qword_4F00C0);
  return sub_B5420(v6, a2);
}

uint64_t sub_BE5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_3E7D54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_BE660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_3E5DC4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double sub_BE6D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_FBD0(v2 + *(a1 + 40), v6, &qword_4F00B0);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_BE730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_FBD0(v2 + *(a1 + 44), &v9 - v6, &qword_4F00C0);
  return sub_B5420(v7, a2);
}

ShelfKit::URLReferenceLink::Hydration_optional __swiftcall URLReferenceLink.Hydration.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B0840;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t URLReferenceLink.Hydration.rawValue.getter()
{
  if (*v0)
  {
    return 0x726576656ELL;
  }

  else
  {
    return 0x737961776C61;
  }
}

uint64_t sub_BE8B0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 7107189;
    if (a1 != 2)
    {
      v6 = 0x656372756F73;
    }

    if (a1)
    {
      v5 = 0x6449656C646E7562;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6575676573;
    v2 = 0x4D747865746E6F63;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6F69746172647968;
    if (a1 != 4)
    {
      v3 = 0x6D617266656D6974;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_BE9C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726576656ELL;
  }

  else
  {
    v3 = 0x737961776C61;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726576656ELL;
  }

  else
  {
    v5 = 0x737961776C61;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

uint64_t sub_BEA68@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B0840;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_BEAC8(uint64_t *a1@<X8>)
{
  v2 = 0x737961776C61;
  if (*v1)
  {
    v2 = 0x726576656ELL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_BEBB0()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_BEC2C()
{
  sub_3ED394();
}

Swift::Int sub_BEC94()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

Swift::Int sub_BED18()
{
  sub_3EE954();
  sub_BD9DC();
  return sub_3EE9A4();
}

Swift::Int sub_BED68()
{
  sub_3EE954();
  sub_BD9DC();
  return sub_3EE9A4();
}

uint64_t sub_BEDAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_C0ADC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_BEDDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BE8B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_BEE24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_C0ADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_BEE58(uint64_t a1)
{
  v2 = sub_BF32C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BEE94(uint64_t a1)
{
  v2 = sub_BF32C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t URLReferenceLink.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F05E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_BF32C();
  sub_3EEA14();
  v11[15] = 0;
  sub_3EE734();
  if (!v2)
  {
    v11[14] = 1;
    sub_3EE734();
    v9 = type metadata accessor for URLReferenceLink();
    v11[13] = 2;
    sub_3E5DC4();
    sub_C00D4(&qword_4F0118, &type metadata accessor for URL);
    sub_3EE764();
    v11[12] = 3;
    sub_3E7D54();
    sub_C00D4(&qword_4F0108, &type metadata accessor for MetadataSource);
    sub_3EE764();
    v11[11] = *(v3 + *(v9 + 32));
    v11[10] = 4;
    sub_BF380();
    sub_3EE764();
    v11[9] = 5;
    type metadata accessor for ReferenceLinkTimeframe();
    sub_C00D4(&qword_4F0110, type metadata accessor for ReferenceLinkTimeframe);
    sub_3EE724();
    v11[8] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B0);
    sub_B74F0(&qword_4F00F0, &qword_4F00F8);
    sub_3EE764();
    v11[7] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
    sub_B6498();
    sub_3EE764();
    v11[6] = 8;
    sub_3EC634();
    sub_C00D4(&qword_4F0138, &type metadata accessor for ImpressionMetrics);
    sub_3EE724();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_BF32C()
{
  result = qword_4F05F0;
  if (!qword_4F05F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F05F0);
  }

  return result;
}

unint64_t sub_BF380()
{
  result = qword_4F05F8;
  if (!qword_4F05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F05F8);
  }

  return result;
}

uint64_t sub_BF3D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F00C8);
    sub_C00D4(a2, &type metadata accessor for Models.Menu);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t URLReferenceLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v3 - 8);
  v45 = v43 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
  __chkstk_darwin(v46);
  v47 = v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  __chkstk_darwin(v6 - 8);
  v48 = v43 - v7;
  v8 = sub_3E7D54();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v52 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3E5DC4();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0600);
  v51 = *(v56 - 8);
  __chkstk_darwin(v56);
  v14 = v43 - v13;
  v15 = type metadata accessor for URLReferenceLink();
  __chkstk_darwin(v15);
  v17 = (v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v18 + 36);
  v20 = type metadata accessor for ReferenceLinkTimeframe();
  v21 = *(*(v20 - 8) + 56);
  v59 = v19;
  v21(v17 + v19, 1, 1, v20);
  v22 = v17 + v15[10];
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v62 = v22;
  sub_51F9C(v63, v22, &qword_4EDE00);
  v23 = v15[11];
  v24 = sub_3ECC84();
  v25 = *(*(v24 - 8) + 56);
  v61 = v23;
  v25(v17 + v23, 1, 1, v24);
  v26 = v15[12];
  v27 = sub_3EC634();
  v28 = *(*(v27 - 8) + 56);
  v58 = v26;
  v28(v17 + v26, 1, 1, v27);
  v29 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_BF32C();
  v55 = v14;
  v30 = v57;
  sub_3EE9F4();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    sub_FCF8(v17 + v59, &qword_4F00B8);
    sub_FCF8(v62, &qword_4F00B0);
    sub_FCF8(v17 + v61, &qword_4F00C0);
    return sub_FCF8(v17 + v58, &unk_4E9170);
  }

  else
  {
    v43[2] = v20;
    v31 = v52;
    v57 = v15;
    v43[1] = v27;
    v33 = v53;
    v32 = v54;
    LOBYTE(v63[0]) = 0;
    *v17 = sub_3EE694();
    v17[1] = v34;
    LOBYTE(v63[0]) = 1;
    v17[2] = sub_3EE694();
    v17[3] = v35;
    LOBYTE(v63[0]) = 2;
    sub_C00D4(&qword_4F0178, &type metadata accessor for URL);
    v36 = v50;
    sub_3EE6C4();
    (*(v49 + 32))(v17 + v57[6], v12, v36);
    LOBYTE(v63[0]) = 3;
    sub_C00D4(&qword_4F0168, &type metadata accessor for MetadataSource);
    v37 = v31;
    sub_3EE6C4();
    v38 = v57;
    (*(v33 + 32))(v17 + v57[7], v37, v32);
    v65 = 4;
    sub_BFF20();
    v52 = 0;
    sub_3EE6C4();
    *(v17 + v38[8]) = v63[0];
    LOBYTE(v63[0]) = 5;
    sub_C00D4(&qword_4F0170, type metadata accessor for ReferenceLinkTimeframe);
    v39 = v48;
    sub_3EE684();
    sub_51F9C(v39, v17 + v59, &qword_4F00B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B0);
    v65 = 6;
    sub_B74F0(&qword_4F0158, &qword_4F0160);
    sub_3EE6C4();
    sub_51F9C(v63, v62, &qword_4F00B0);
    LOBYTE(v63[0]) = 7;
    sub_B75C8();
    v40 = v47;
    sub_3EE6C4();
    sub_51F9C(v40, v17 + v61, &qword_4F00C0);
    LOBYTE(v63[0]) = 8;
    sub_C00D4(&qword_4F0198, &type metadata accessor for ImpressionMetrics);
    v41 = v45;
    sub_3EE684();
    (*(v51 + 8))(v55, v56);
    sub_51F9C(v41, v17 + v58, &unk_4E9170);
    sub_BFF74(v17, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    return sub_BFFD8(v17);
  }
}

unint64_t sub_BFF20()
{
  result = qword_4F0608;
  if (!qword_4F0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0608);
  }

  return result;
}

uint64_t sub_BFF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLReferenceLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BFFD8(uint64_t a1)
{
  v2 = type metadata accessor for URLReferenceLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C0034(uint64_t a1)
{
  result = sub_C00D4(&qword_4F0070, type metadata accessor for URLReferenceLink);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C00D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_C0120()
{
  result = qword_4F0618;
  if (!qword_4F0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0618);
  }

  return result;
}

double sub_C01A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLReferenceLink();
  sub_FBD0(a1 + *(v4 + 40), v7, &qword_4F00B0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_C02BC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_3E5DC4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_3E7D54();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[11];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[12];

  return v17(v18, a2, v16);
}

uint64_t sub_C04F0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_3E5DC4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_3E7D54();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00B8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F00C0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[12];

  return v17(v18, a2, a2, v16);
}

void sub_C0710()
{
  sub_3E5DC4();
  if (v0 <= 0x3F)
  {
    sub_3E7D54();
    if (v1 <= 0x3F)
    {
      sub_B815C(319, &qword_4F0220, type metadata accessor for ReferenceLinkTimeframe);
      if (v2 <= 0x3F)
      {
        sub_B8108(319, &qword_4F0218, &qword_4F0100);
        if (v3 <= 0x3F)
        {
          sub_B8108(319, &unk_4F0228, &qword_4F00C8);
          if (v4 <= 0x3F)
          {
            sub_B815C(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
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