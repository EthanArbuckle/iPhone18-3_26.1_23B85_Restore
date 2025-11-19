id sub_55FBBC()
{
  v1 = v0;
  sub_12F484();
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots];
  result = sub_55AFC4();
  v4 = v1[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia];
  v1[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia] = 1;
  if ((v4 & 1) == 0)
  {
    [v2 setHidden:0];

    return [v1 setNeedsLayout];
  }

  return result;
}

unint64_t sub_55FC60(uint64_t a1, char *a2)
{
  v3 = v2;
  v247 = a2;
  swift_getObjectType();
  v5 = sub_BD88(&qword_946D98);
  __chkstk_darwin(v5 - 8);
  v208 = &v196 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v214 = &v196 - v8;
  v9 = sub_BD88(&unk_948710);
  __chkstk_darwin(v9 - 8);
  v225 = &v196 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v226 = &v196 - v12;
  v13 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v13 - 8);
  v224 = &v196 - v14;
  v15 = sub_75A6B0();
  __chkstk_darwin(v15 - 8);
  v212 = &v196 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v211 = &v196 - v18;
  __chkstk_darwin(v19);
  v218 = &v196 - v20;
  __chkstk_darwin(v21);
  v217 = &v196 - v22;
  v223 = sub_75A6E0();
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v210 = &v196 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v216 = &v196 - v25;
  v219 = sub_75DC30();
  v227 = *(v219 - 8);
  __chkstk_darwin(v219);
  v213 = &v196 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v234 = &v196 - v28;
  v207 = type metadata accessor for ScreenshotDisplayConfiguration();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v232 = &v196 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_BD88(&unk_94DF00);
  __chkstk_darwin(v30 - 8);
  v32 = &v196 - v31;
  v221 = sub_766690();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v233 = &v196 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_75C9A0();
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v229 = &v196 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_75C930();
  v241 = *(v239 - 8);
  __chkstk_darwin(v239);
  v205 = &v196 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v196 - v37;
  __chkstk_darwin(v39);
  v235 = &v196 - v40;
  __chkstk_darwin(v41);
  v215 = &v196 - v42;
  __chkstk_darwin(v43);
  v238 = &v196 - v44;
  v45 = sub_BD88(&unk_948720);
  __chkstk_darwin(v45 - 8);
  v209 = &v196 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v237 = &v196 - v48;
  __chkstk_darwin(v49);
  v245 = &v196 - v50;
  v51 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v51 - 8);
  v53 = &v196 - v52;
  v54 = sub_7656C0();
  v246 = *(v54 - 8);
  __chkstk_darwin(v54);
  v250 = &v196 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_760770();
  v56 = *(v249 - 8);
  __chkstk_darwin(v249);
  v228 = &v196 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v196 - v59;
  sub_7581C0();
  sub_568754(&qword_95ADF0, 255, &type metadata accessor for AppSearchResult);
  result = sub_75C750();
  if (!v252[0])
  {
    return result;
  }

  v240 = v56;
  v244 = v54;
  v62 = v252[0];
  v63 = sub_7581B0();
  v248 = v60;
  v243 = v63;
  sub_75BCC0();
  v236 = v62;
  v64 = sub_7581A0();
  v65 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia;
  v66 = v2[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia];
  v2[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia] = v64 & 1;
  v67 = &unk_90D000;
  if ((v64 & 1) != v66)
  {
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots] setHidden:(v64 & 1) == 0];
    [v2 setNeedsLayout];
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_7655F0();
  v68 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView];
  *&v68[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing] = v69;
  [v68 setNeedsLayout];
  v70 = sub_75C840();
  (*(*(v70 - 8) + 56))(v53, 1, 1, v70);
  v71 = v3;
  v72 = v243;
  sub_223E1C(v243, v53, v247);
  sub_10A2C(v53, &unk_93F620);
  v242 = v71;
  v73 = v71[v65];
  v74 = v244;
  v75 = v240;
  v76 = v248;
  if (v73 != 1 || (sub_760760() & 1) == 0)
  {
LABEL_150:
    [v242 setNeedsLayout];

    (*(v246 + 8))(v250, v74);
    return (*(v75 + 8))(v76, v249);
  }

  v77 = sub_75BC70();
  if (v77 >> 62)
  {
    v78 = v77;
    v79 = sub_76A860();
    v77 = v78;
    if (v79)
    {
      goto LABEL_8;
    }

LABEL_13:

    v201 = 0;
    goto LABEL_14;
  }

  if (!*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v77 & 0xC000000000000001) != 0)
  {
    v201 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_79;
    }

    v201 = *(v77 + 32);
  }

LABEL_14:
  v67 = *&v242[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots];
  v202 = sub_75BCA0();
  v204 = sub_75BC80();
  v80 = sub_75BCF0();
  if (v80 >> 62)
  {
    v81 = v80;
    v82 = sub_76A860();
    v80 = v81;
    if (v82)
    {
      goto LABEL_16;
    }

LABEL_21:

    v203 = 0;
    goto LABEL_22;
  }

  if (!*(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v80 & 0xC000000000000001) != 0)
  {
    v203 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_81;
    }

    v203 = *(v80 + 32);
  }

LABEL_22:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v83 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_75C7B0();

  v84 = v252[0];
  sub_42B534(v245);

  a1 = sub_75BCA0();
  v53 = sub_75BC80();
  v85 = sub_75BC70();
  if (v85 >> 62)
  {
    v86 = v85;
    v87 = sub_76A860();
    v85 = v86;
    if (v87)
    {
LABEL_24:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_83;
        }

        v84 = *(v85 + 32);

        goto LABEL_27;
      }

LABEL_79:
      v84 = sub_76A770();
LABEL_27:

      goto LABEL_30;
    }
  }

  else if (*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_24;
  }

  v84 = 0;
LABEL_30:
  v85 = sub_75BCF0();
  if (v85 >> 62)
  {
    v89 = v85;
    v90 = sub_76A860();
    v85 = v89;
    v72 = v84;
    if (v90)
    {
LABEL_32:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
        {
          v88 = *(v85 + 32);

LABEL_35:

          goto LABEL_38;
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_81:
      v88 = sub_76A770();
      goto LABEL_35;
    }
  }

  else
  {
    v72 = v84;
    if (*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_32;
    }
  }

  v88 = 0;
LABEL_38:
  if ((sub_760760() & 1) == 0)
  {

    v53 = v241;
    v95 = v238;
    v84 = v239;
    (*(v241 + 104))(v238, enum case for LockupMediaLayout.DisplayType.none(_:), v239);
    v91 = v204;
LABEL_46:
    v38 = v201;
    goto LABEL_68;
  }

  v91 = v204;
  if (v53 | a1)
  {
    v96 = v215;
    sub_7666A0();

    v53 = v241;
    v84 = v239;
    (*(v241 + 104))(v96, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v239);
    v95 = v238;
    (*(v53 + 32))(v238, v96, v84);
    goto LABEL_46;
  }

  v92 = sub_55BABC(v72, v88, 0, 1);
  v53 = v92;
  v84 = (v92 >> 62);
  if (v92 >> 62)
  {
    goto LABEL_132;
  }

  for (i = *(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    v200 = i;
    v94 = v72 ? sub_759690() : 0;
    v97 = sub_55BE04(v94);

    v197 = v97;
    v98 = v72 ? sub_759690() : 0;
    v99 = v249;
    (*(v75 + 16))(v32, v248, v249);
    (*(v75 + 56))(v32, 0, 1, v99);
    a1 = sub_55C32C(v98, v32);

    sub_10A2C(v32, &unk_94DF00);
    if (v84 ? sub_76A860() : *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_154;
        }
      }

      v101 = sub_765150();

      if (v101)
      {

        v53 = v241;
        v102 = v215;
        v84 = v239;
        (*(v241 + 104))(v215, enum case for LockupMediaLayout.DisplayType.landscape(_:), v239);
LABEL_66:
        v95 = v238;
        v91 = v204;
        v38 = v201;
        goto LABEL_67;
      }
    }

    else
    {
    }

    v103 = a1;
    v104 = v241;
    v105 = v239;
    v199 = *(v241 + 104);
    v198 = v241 + 104;
    (v199)(v38, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v239);
    v106 = sub_75C920();
    v196 = *(v104 + 8);
    v196(v38, v105);
    if (((v200 >= v106) & v103) != 0 || ((v199)(v38, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v105), v107 = sub_75C920(), v196(v38, v105), ((v200 >= v107) & v197) != 0) || ((v199)(v38, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v105), v108 = sub_75C920(), v196(v38, v105), v200 >= v108))
    {

      v102 = v215;
      v199();
      v84 = v105;
      v53 = v241;
      goto LABEL_66;
    }

    (v199)(v38, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v105);
    sub_75C920();

    v196(v38, v105);
    v109 = v105;
    v102 = v215;
    v199();
    v53 = v241;
    v95 = v238;
    v91 = v204;
    v38 = v201;
    v84 = v109;
LABEL_67:
    (*(v53 + 32))(v95, v102, v84);
LABEL_68:
    v32 = v235;

    v252[3] = &type metadata for CGFloat;
    v252[4] = &protocol witness table for CGFloat;
    v252[0] = 0x4021000000000000;
    sub_134D8(v252, v251);
    v72 = v53 + 16;
    v110 = v95;
    a1 = *(v53 + 16);
    (a1)(v32, v110, v84);
    if (v91 | v202)
    {
      goto LABEL_86;
    }

    v85 = sub_55BABC(v38, v203, 0, 1);
    if (v85 >> 62)
    {
      break;
    }

    if (!*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_85;
    }

LABEL_71:
    if ((v85 & 0xC000000000000001) != 0)
    {
      sub_76A770();
      goto LABEL_74;
    }

    if (*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
    {

LABEL_74:

      sub_765260();
      sub_7666A0();

      goto LABEL_87;
    }

    __break(1u);
LABEL_132:
    ;
  }

LABEL_84:
  v111 = v85;
  v112 = sub_76A860();
  v85 = v111;
  if (v112)
  {
    goto LABEL_71;
  }

LABEL_85:

LABEL_86:
  sub_7666A0();
LABEL_87:
  sub_1ED18(v245, v237, &unk_948720);
  v113 = v229;
  sub_75C970();
  sub_BEB8(v252);
  v114 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  swift_beginAccess();
  v115 = v230;
  v116 = &v67[v114];
  v117 = v231;
  (*(v230 + 24))(v116, v113, v231);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v115 + 8))(v113, v117);
  if (v38)
  {
    v118 = sub_759690();
  }

  else
  {
    v118 = 0;
  }

  sub_7596B0();
  v119 = v232;
  sub_6C14C(v118, v232);

  v120 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_163BAC(v119, &v67[v120]);
  swift_endAccess();
  sub_559BA0();
  sub_161D14(v119);
  if (v38)
  {
    v121 = sub_759690();
  }

  else
  {
    v121 = 0;
  }

  v122 = v228;
  *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform] = v121;

  sub_559DA4();

  v123 = v249;
  (*(v75 + 16))(v122, v248, v249);
  v124 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v75 + 24))(&v67[v124], v122, v123);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v75 + 8))(v122, v123);
  if (v204)
  {
    (*(v222 + 104))(v216, enum case for VideoFillMode.scaleAspectFill(_:), v223);

    sub_764BC0();
    sub_765260();
    v125 = v237;
    sub_7666A0();

    (*(v220 + 56))(v125, 0, 1, v221);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v126 = v67;
    v127 = v224;
    sub_764BD0();
    v128 = sub_7570A0();
    (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
    v129 = v226;
    sub_764B90();
    v130 = v225;
    sub_764B80();
    type metadata accessor for VideoView();
    sub_568754(&qword_93F500, 255, type metadata accessor for VideoView);
    v131 = sub_75C340();
    sub_10A2C(v130, &unk_948710);
    sub_10A2C(v129, &unk_948710);
    v132 = v127;
    v67 = v126;
    sub_10A2C(v132, &unk_93FD30);
    sub_10A2C(v252, &unk_9443A0);
    Strong = swift_unknownObjectWeakLoadStrong();
    v53 = v241;
    if (Strong)
    {
      v134 = Strong;
      v135 = [Strong superview];
      if (!v135)
      {
        goto LABEL_99;
      }

      v136 = v135;
      sub_BE70(0, &qword_93E550);
      v137 = v126;
      v138 = sub_76A1C0();

      if (v138)
      {
        v139 = swift_unknownObjectWeakLoadStrong();
        if (v139)
        {
          v134 = v139;
          [v139 removeFromSuperview];
LABEL_99:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v140 = swift_unknownObjectWeakLoadStrong();
    if (v140)
    {
      v141 = v140;
      [v67 addSubview:v140];
    }

    sub_55A7A8();
    [v67 setNeedsLayout];

    v142 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v143 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    v75 = v240;
    v144 = v219;
    if (v143)
    {
      [v143 removeFromSuperview];
      v145 = *&v67[v142];
    }

    else
    {
      v145 = 0;
    }

    v74 = v244;
    *&v67[v142] = 0;

    [v67 setNeedsLayout];

    (*(v227 + 8))(v234, v144);
LABEL_148:
    v181 = v238;
LABEL_149:
    [v67 setNeedsLayout];

    (*(v53 + 8))(v181, v239);
    sub_10A2C(v245, &unk_948720);
    v76 = v248;
    goto LABEL_150;
  }

  v53 = v241;
  if (!v203)
  {
    goto LABEL_135;
  }

  result = sub_765750();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_107;
    }

LABEL_134:

LABEL_135:
    v184 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v185 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    if (v185)
    {
      [v185 removeFromSuperview];
      v186 = *&v67[v184];
    }

    else
    {
      v186 = 0;
    }

    v74 = v244;
    *&v67[v184] = 0;

    [v67 setNeedsLayout];
    v187 = swift_unknownObjectWeakLoadStrong();
    if (v187)
    {
      v188 = v187;
      sub_568754(&qword_93F500, 255, type metadata accessor for VideoView);
      v189 = [v188 superview];
      if (v189)
      {
        v190 = v189;
        sub_BE70(0, &qword_93E550);
        v191 = v67;
        v192 = sub_76A1C0();

        v74 = v244;
        if (v192)
        {
          v193 = swift_unknownObjectWeakLoadStrong();
          if (v193)
          {
            v188 = v193;
            [v193 removeFromSuperview];
            goto LABEL_144;
          }
        }
      }

      else
      {
        v74 = v244;
LABEL_144:
      }
    }

    swift_unknownObjectWeakAssign();
    v194 = swift_unknownObjectWeakLoadStrong();
    if (v194)
    {
      v195 = v194;
      [v67 addSubview:v194];
    }

    sub_55A7A8();
    [v67 setNeedsLayout];
    goto LABEL_148;
  }

  v182 = result;
  v183 = sub_76A860();
  result = v182;
  if (!v183)
  {
    goto LABEL_134;
  }

LABEL_107:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_154:
    sub_76A770();
LABEL_110:
    v146 = v67;
    v201 = v38;

    v147 = v205;
    v148 = v239;
    (a1)(v205, v238, v239);
    v149 = (*(v53 + 88))(v147, v148);
    v150 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v53 + 8))(v147, v148);
    if (v149 == v150)
    {
      v151 = 1;
      v152 = v214;
    }

    else
    {
      v153 = sub_765740();
      v152 = v214;
      sub_6C14C(v153, v214);

      v151 = 0;
    }

    v154 = v226;
    v155 = v207;
    v156 = v223;
    v157 = v222;
    v158 = v206;
    v159 = v221;
    (*(v206 + 56))(v152, v151, 1, v207);
    (*(v157 + 104))(v210, enum case for VideoFillMode.scaleAspectFill(_:), v156);
    sub_764BC0();
    sub_765260();
    v160 = v209;
    sub_7666A0();

    (*(v220 + 56))(v160, 0, 1, v159);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    v161 = v152;
    v162 = v208;
    sub_1ED18(v161, v208, &qword_946D98);
    if ((*(v158 + 48))(v162, 1, v155) == 1)
    {
      sub_10A2C(v162, &qword_946D98);
    }

    else
    {
      sub_161D14(v162);
    }

    v67 = v146;
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v163 = v224;
    sub_764BD0();
    v164 = sub_7570A0();
    (*(*(v164 - 8) + 56))(v163, 0, 1, v164);
    sub_764B90();
    v165 = v225;
    sub_764B80();
    type metadata accessor for VideoView();
    sub_568754(&qword_93F500, 255, type metadata accessor for VideoView);
    v166 = sub_75C340();
    sub_10A2C(v165, &unk_948710);
    sub_10A2C(v154, &unk_948710);
    sub_10A2C(v163, &unk_93FD30);
    sub_10A2C(v252, &unk_9443A0);
    v167 = swift_unknownObjectWeakLoadStrong();
    if (v167)
    {
      v168 = v167;
      v169 = [v167 superview];
      if (v169)
      {
        v170 = v169;
        sub_BE70(0, &qword_93E550);
        v171 = v67;
        v172 = sub_76A1C0();

        v75 = v240;
        if ((v172 & 1) == 0)
        {
          goto LABEL_124;
        }

        v173 = swift_unknownObjectWeakLoadStrong();
        if (!v173)
        {
          goto LABEL_124;
        }

        v168 = v173;
        [v173 removeFromSuperview];
      }
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v174 = swift_unknownObjectWeakLoadStrong();
    if (v174)
    {
      v175 = v174;
      [v67 addSubview:v174];
    }

    sub_55A7A8();
    [v67 setNeedsLayout];

    v176 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v177 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    v53 = v241;
    v178 = v238;
    if (v177)
    {
      [v177 removeFromSuperview];
      v179 = *&v67[v176];
    }

    else
    {
      v179 = 0;
    }

    v180 = v219;
    *&v67[v176] = 0;

    [v67 setNeedsLayout];

    (*(v227 + 8))(v213, v180);
    sub_10A2C(v214, &qword_946D98);
    v74 = v244;
    v181 = v178;
    goto LABEL_149;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_110;
  }

  __break(1u);
  return result;
}

uint64_t sub_562068()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_75F4E0();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3);
  return sub_12F734();
}

id sub_562128()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_562210()
{
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    return 0;
  }
}

void sub_562264(void *a1)
{
  sub_5685E0();
}

uint64_t (*sub_56229C(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_55E6B8(v2);
  return sub_21028;
}

uint64_t sub_562354(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_56240C()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_562468(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

uint64_t sub_562528()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_568754(&qword_94AE40, 255, type metadata accessor for SearchTagsRibbonView);
  return sub_7633E0();
}

uint64_t sub_5625D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_562628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_562694(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_562730(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_BE70(0, &qword_93E550);
  v5 = v2;
  v6 = sub_76A1C0();

  return v6 & 1;
}

uint64_t sub_5628EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_568754(&qword_95ADD8, a2, type metadata accessor for AppSearchResultContentView);
  result = sub_568754(&unk_95ADE0, v3, type metadata accessor for AppSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_562970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_93F5A0);
  v145 = *(v6 - 8);
  v146 = v6;
  __chkstk_darwin(v6);
  v144 = &v112 - v7;
  v8 = sub_760840();
  v142 = *(v8 - 8);
  v143 = v8;
  __chkstk_darwin(v8);
  v141 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_760D90();
  *&v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v134 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_762D10();
  v138 = *(v11 - 8);
  v139 = v11;
  __chkstk_darwin(v11);
  v137 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75D850();
  v152 = *(v13 - 8);
  v153 = v13;
  __chkstk_darwin(v13);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v151 = &v112 - v17;
  v155 = sub_760820();
  v150 = *(v155 - 8);
  __chkstk_darwin(v155);
  v140 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v156 = &v112 - v20;
  v21 = sub_BD88(&unk_94AE30);
  __chkstk_darwin(v21 - 8);
  v133 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v154 = &v112 - v24;
  v25 = sub_760770();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_7652D0();
  __chkstk_darwin(v29 - 8);
  sub_134D8(a1, v193);
  sub_BD88(&unk_93F520);
  sub_7581C0();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v135 = v192[0];
  v136 = v28;
  sub_7581B0();

  if (sub_764EE0())
  {
    v130 = a2;
    v131 = v26;
    v129 = v25;
    v132 = v2;
    v31 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView];
    v32 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v33 = qword_93C668;
    v34 = *(v31 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = sub_75CF00();
    sub_BE38(v35, qword_99B898);
    sub_75CDD0();
    [v34 contentMode];
    sub_765330();
    sub_7652E0();
    sub_7591B0();
    [v34 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();
    v36 = *(v31 + v32);
    sub_759210();
    sub_568754(&qword_945810, 255, &type metadata accessor for ArtworkView);
    v37 = v36;
    a2 = v130;
    sub_75A050();

    v26 = v131;
    v3 = v132;
    v25 = v129;
  }

  v38 = *(*&v3[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
  sub_1BA288(a1, a2);

  v39 = v136;
  sub_75BCC0();
  if ((sub_7581A0() & 1) == 0 || (sub_760760() & 1) == 0)
  {

    goto LABEL_50;
  }

  v129 = v25;
  sub_764EF0();
  v117 = v40;
  v41 = sub_764F70();
  v118 = v42;
  v119 = v41;
  v43 = sub_764E90();

  if (v43 && (v44 = sub_75E5C0(), , v44))
  {
    v45 = sub_765720();
    v120 = v46;
    v121 = v45;
  }

  else
  {
    v120 = 0;
    v121 = 0;
  }

  v128 = sub_75BC90();
  v47 = v154;
  _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
  (*(v147 + 56))(v47, 0, 1, v148);
  v127 = sub_75BCB0();
  v112 = sub_75BCD0();
  v48 = [v3 traitCollection];
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v49 = v155;
  v50 = sub_BE38(v155, qword_99B150);
  v123 = *(v150 + 16);
  v124 = v150 + 16;
  v123(v156, v50, v49);
  v51 = sub_769A00();
  v130 = a2;
  v131 = v26;
  v132 = v3;
  if ((v51 & 1) == 0)
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v52 = qword_946938;
    goto LABEL_23;
  }

  if (qword_93C440 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v52 = qword_946920;
LABEL_23:
    v53 = v153;
    v54 = sub_BE38(v153, v52);
    v55 = v152;
    (*(v152 + 16))(v15, v54, v53);
    (*(v55 + 32))(v151, v15, v53);
    v56 = [v48 preferredContentSizeCategory];
    sub_769B20();

    sub_75D800();
    sub_75D830();
    sub_760810();
    sub_760800();
    v122 = sub_7670D0();
    swift_allocObject();
    v125 = sub_7670B0();
    v57 = objc_opt_self();
    v126 = v48;
    v58 = v57;
    v115 = v57;
    v59 = [v57 preferredFontForTextStyle:UIFontTextStyleBody];
    v60 = sub_7653B0();
    v193[3] = v60;
    v61 = sub_568754(&qword_93F9B0, 255, &type metadata accessor for Feature);
    v193[4] = v61;
    v114 = v61;
    v62 = sub_B1B4(v193);
    v63 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v64 = *(v60 - 8);
    v65 = *(v64 + 104);
    v116 = v64 + 104;
    v113 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v65(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v60);
    sub_765C30();
    sub_BEB8(v193);
    v66 = v137;
    sub_762D00();
    sub_762CE0();
    v67 = v139;
    v138 = *(v138 + 8);
    (v138)(v66, v139);
    v68 = [v58 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v192[3] = v60;
    v192[4] = v61;
    v69 = sub_B1B4(v192);
    v65(v69, v63, v60);
    sub_765C30();
    sub_BEB8(v192);
    sub_762D00();
    sub_762CE0();
    v70 = v138;
    (v138)(v66, v67);
    v71 = [v115 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v191[3] = v60;
    v191[4] = v114;
    v72 = sub_B1B4(v191);
    v65(v72, v113, v60);
    sub_765C30();
    sub_BEB8(v191);
    sub_762D00();
    sub_762CE0();
    v70(v66, v67);
    v73 = v128;
    LODWORD(v139) = sub_246DC(0, v128) & (v73 != 0);
    if (v139 == 1)
    {
      v74 = objc_allocWithZone(sub_7671D0());
      v75 = v126;
      v76 = sub_7671C0();
      v77 = v133;
      sub_1ED18(v154, v133, &unk_94AE30);
      v78 = v147;
      v79 = *(v147 + 48);
      v80 = v148;
      if (v79(v77, 1, v148) == 1)
      {
        v81 = v134;
        _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
        if (v79(v77, 1, v80) != 1)
        {
          sub_10A2C(v77, &unk_94AE30);
        }
      }

      else
      {
        v81 = v134;
        (*(v78 + 32))(v134, v77, v80);
      }

      v84 = v76;
      sub_2185C(v128, v81, v84);

      (*(v78 + 8))(v81, v80);
      v82 = v122;
      swift_allocObject();
      v83 = sub_7670A0();
    }

    else
    {
      v82 = v122;
      swift_allocObject();
      v83 = sub_7670B0();
    }

    v85 = v83;

    v86 = v127;
    if ((sub_246DC(v127, 0) & (v86 != 0)) == 1)
    {
      sub_F7FC(v86, v112 & 1);
      swift_allocObject();
      v87 = sub_7670A0();
    }

    else
    {
      swift_allocObject();
      v87 = sub_7670B0();
    }

    v88 = v87;
    v123(v140, v156, v155);
    v190 = &protocol witness table for LayoutViewPlaceholder;
    v189 = v82;
    v188 = v125;
    v187 = 0;
    *&v185[40] = 0u;
    v186 = 0u;
    sub_134D8(v193, v185);
    sub_134D8(v192, &v184);
    v183 = 0;
    v181 = 0u;
    v182 = 0u;
    v180 = 0;
    v178 = 0u;
    v179 = 0u;

    v148 = v88;
    v89 = sub_7670C0();
    v177 = &protocol witness table for LayoutViewPlaceholder;
    v176 = v82;
    v175 = v89;
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v171 = 0;
    v169 = 0u;
    v170 = 0u;
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    v165 = 0;
    v164 = 0u;
    *&v163[40] = 0u;
    sub_134D8(v191, v163);
    v161 = v82;
    v162 = &protocol witness table for LayoutViewPlaceholder;
    v159 = &protocol witness table for LayoutViewPlaceholder;
    v160 = v85;
    v158 = v82;
    v157 = v88;
    v90 = v141;
    sub_760830();
    sub_7671D0();
    sub_BD88(&unk_93F5C0);
    v91 = swift_allocObject();
    v147 = xmmword_77D9F0;
    *(v91 + 16) = xmmword_77D9F0;
    v92 = v126;
    *(v91 + 32) = v126;
    v48 = v92;
    v93 = sub_7671E0();
    sub_568754(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout);
    v94 = v143;
    sub_7665A0();

    (*(v142 + 8))(v90, v94);
    sub_BEB8(v191);
    sub_BEB8(v192);
    sub_BEB8(v193);
    (*(v152 + 8))(v151, v153);
    (*(v150 + 8))(v156, v155);
    v95 = v144;
    sub_763F60();
    v96 = swift_allocObject();
    *(v96 + 16) = v147;
    *(v96 + 32) = v48;
    v97 = v48;
    v98 = sub_7671E0();
    sub_24128();
    v99 = v146;
    sub_7666E0();

    (*(v145 + 8))(v95, v99);
    sub_10A2C(v154, &unk_94AE30);
    v100 = v132;
    v15 = sub_75BCA0();
    v101 = sub_75BC80();
    v102 = sub_75BC70();
    if (v102 >> 62)
    {
      v104 = v102;
      v105 = sub_76A860();
      v102 = v104;
      v26 = v131;
      if (!v105)
      {
LABEL_40:

        v103 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v26 = v131;
      if (!*(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_40;
      }
    }

    if ((v102 & 0xC000000000000001) != 0)
    {
      v48 = v102;
      v103 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_55;
      }

      v48 = v102;
      v103 = *(v102 + 32);
    }

LABEL_41:
    v106 = sub_75BCF0();
    if (!(v106 >> 62))
    {
      if (!*(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8)))
      {
        break;
      }

      goto LABEL_43;
    }

    v108 = v106;
    v109 = sub_76A860();
    v106 = v108;
    if (!v109)
    {
      break;
    }

LABEL_43:
    if ((v106 & 0xC000000000000001) != 0)
    {
      v107 = sub_76A770();
      goto LABEL_46;
    }

    if (*(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8)))
    {
      v107 = *(v106 + 32);

LABEL_46:

      goto LABEL_49;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v107 = 0;
LABEL_49:
  v110 = [v100 traitCollection];
  v111 = v136;
  sub_1600F8(v15, v101, v103, v107, v110, v130, v136);

  v39 = v111;

  v25 = v129;
LABEL_50:

  return (*(v26 + 8))(v39, v25);
}

uint64_t sub_563DA0(uint64_t a1)
{
  v2 = sub_BD88(&unk_94DF00);
  __chkstk_darwin(v2 - 8);
  v164 = &v161 - v3;
  v4 = sub_75C930();
  v191 = *(v4 - 8);
  v192 = v4;
  __chkstk_darwin(v4);
  v6 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v165 = &v161 - v8;
  __chkstk_darwin(v9);
  v185 = &v161 - v10;
  v11 = sub_BD88(&unk_948720);
  __chkstk_darwin(v11 - 8);
  v13 = &v161 - v12;
  v14 = sub_BD88(&unk_93F5A0);
  v189 = *(v14 - 8);
  v190 = v14;
  __chkstk_darwin(v14);
  v188 = &v161 - v15;
  v16 = sub_760840();
  v199 = *(v16 - 8);
  v200 = v16;
  __chkstk_darwin(v16);
  v198 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_760D90();
  *&v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v187 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_762D10();
  v195 = *(v19 - 8);
  v196 = v19;
  __chkstk_darwin(v19);
  v194 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_75D850();
  v213 = *(v21 - 8);
  v214 = v21;
  __chkstk_darwin(v21);
  v23 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v212 = &v161 - v25;
  v216 = sub_760820();
  v211 = *(v216 - 8);
  __chkstk_darwin(v216);
  v197 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v217 = &v161 - v28;
  v29 = sub_BD88(&unk_94AE30);
  __chkstk_darwin(v29 - 8);
  v186 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v215 = &v161 - v32;
  v33 = sub_75DAB0();
  __chkstk_darwin(v33 - 8);
  v34 = sub_7656C0();
  v193 = *(v34 - 8);
  __chkstk_darwin(v34);
  v210 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_760770();
  v201 = *(v36 - 8);
  v202 = v36;
  __chkstk_darwin(v36);
  v38 = &v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7581C0();
  sub_568754(&qword_95ADF0, 255, &type metadata accessor for AppSearchResult);
  result = sub_75C750();
  v40 = v254[0];
  if (!v254[0])
  {
    return result;
  }

  v162 = v6;
  v41 = sub_7581B0();
  v207 = v38;
  v208 = v41;
  sub_75BCC0();
  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  sub_765660();
  sub_765630();
  v168 = v40;
  v42 = sub_7581A0();
  v169 = v34;
  if (v42)
  {
    v184 = sub_760760();
  }

  else
  {
    v184 = 0;
  }

  v43 = v205;

  v174 = sub_764EF0();
  v175 = v44;
  v45 = sub_764F70();
  v176 = v46;
  v177 = v45;
  v47 = sub_764E90();

  if (v47 && (v48 = sub_75E5C0(), , v48))
  {
    v49 = sub_765720();
    v178 = v50;
    v179 = v49;
  }

  else
  {
    v178 = 0;
    v179 = 0;
  }

  v51 = v206;
  v209 = sub_75BC90();
  v52 = v215;
  _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
  (*(v43 + 56))(v52, 0, 1, v51);
  v204 = sub_75BCB0();
  v163 = sub_75BCD0();
  swift_getKeyPath();
  sub_75C7B0();

  v53 = v254[5];
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v54 = v216;
  v55 = sub_BE38(v216, qword_99B150);
  v181 = *(v211 + 16);
  v182 = v211 + 16;
  v181(v217, v55, v54);
  v56 = sub_769A00();
  v166 = v13;
  v167 = a1;
  if (v56)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v57 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v57 = qword_946938;
  }

  v58 = v214;
  v59 = sub_BE38(v214, v57);
  v60 = v213;
  (*(v213 + 16))(v23, v59, v58);
  (*(v60 + 32))(v212, v23, v58);
  v61 = [v53 preferredContentSizeCategory];
  sub_769B20();

  sub_75D800();
  sub_75D830();
  sub_760810();
  sub_760800();
  v180 = sub_7670D0();
  swift_allocObject();
  v183 = sub_7670B0();
  v62 = objc_opt_self();
  v172 = v62;
  v63 = [v62 preferredFontForTextStyle:UIFontTextStyleBody];
  v64 = sub_7653B0();
  v254[3] = v64;
  v65 = sub_568754(&qword_93F9B0, 255, &type metadata accessor for Feature);
  v254[4] = v65;
  v171 = v65;
  v66 = sub_B1B4(v254);
  v67 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v68 = *(v64 - 8);
  v69 = *(v68 + 104);
  v173 = v68 + 104;
  v170 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v69(v66, enum case for Feature.measurement_with_labelplaceholder(_:), v64);
  sub_765C30();
  sub_BEB8(v254);
  v70 = v194;
  sub_762D00();
  sub_762CE0();
  v203 = v53;
  v71 = v196;
  v195 = *(v195 + 8);
  (v195)(v70, v196);
  v72 = [v62 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v253[3] = v64;
  v253[4] = v65;
  v73 = sub_B1B4(v253);
  v69(v73, v67, v64);
  sub_765C30();
  sub_BEB8(v253);
  sub_762D00();
  sub_762CE0();
  v74 = v195;
  (v195)(v70, v71);
  v75 = [v172 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v252[3] = v64;
  v252[4] = v171;
  v76 = sub_B1B4(v252);
  v69(v76, v170, v64);
  sub_765C30();
  sub_BEB8(v252);
  sub_762D00();
  sub_762CE0();
  v74(v70, v71);
  v77 = v209;
  if ((sub_246DC(0, v209) & (v77 != 0)) == 1)
  {
    v78 = objc_allocWithZone(sub_7671D0());
    v79 = v203;
    v80 = sub_7671C0();
    v81 = v186;
    sub_1ED18(v215, v186, &unk_94AE30);
    v82 = v205;
    v83 = *(v205 + 48);
    v84 = v206;
    if (v83(v81, 1, v206) == 1)
    {
      v85 = v187;
      _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
      if (v83(v81, 1, v84) != 1)
      {
        sub_10A2C(v81, &unk_94AE30);
      }
    }

    else
    {
      v85 = v187;
      (*(v82 + 32))(v187, v81, v84);
    }

    v88 = v80;
    sub_2185C(v209, v85, v88);

    (*(v82 + 8))(v85, v84);
    v86 = v180;
    swift_allocObject();
    v87 = sub_7670A0();
  }

  else
  {
    v86 = v180;
    swift_allocObject();
    v87 = sub_7670B0();
  }

  v89 = v87;

  v90 = v204;
  if ((sub_246DC(v204, 0) & (v90 != 0)) == 1)
  {
    sub_F7FC(v90, v163 & 1);
    swift_allocObject();
    v91 = sub_7670A0();
  }

  else
  {
    swift_allocObject();
    v91 = sub_7670B0();
  }

  v92 = v91;
  v181(v197, v217, v216);
  v251 = &protocol witness table for LayoutViewPlaceholder;
  v250 = v86;
  v93 = v86;
  v94 = v183;
  v249 = v183;
  v248 = 0;
  *&v246[40] = 0u;
  v247 = 0u;
  sub_134D8(v254, v246);
  sub_134D8(v253, &v245);
  v244 = 0;
  v242 = 0u;
  v243 = 0u;
  v241 = 0;
  v239 = 0u;
  v240 = 0u;

  v95 = sub_7670C0();
  v238 = &protocol witness table for LayoutViewPlaceholder;
  v237 = v93;
  v236 = v95;
  v235 = 0;
  v233 = 0u;
  v234 = 0u;
  v232 = 0;
  v230 = 0u;
  v231 = 0u;
  v229 = 0;
  v227 = 0u;
  v228 = 0u;
  v226 = 0;
  v225 = 0u;
  *&v224[40] = 0u;
  sub_134D8(v252, v224);
  v223 = &protocol witness table for LayoutViewPlaceholder;
  v222 = v93;
  v220 = &protocol witness table for LayoutViewPlaceholder;
  v221 = v89;
  v219 = v93;
  v218 = v92;
  v96 = v198;
  sub_760830();
  v97 = sub_7671D0();
  v98 = sub_BD88(&unk_93F5C0);
  v99 = swift_allocObject();
  v205 = xmmword_77D9F0;
  *(v99 + 16) = xmmword_77D9F0;
  v100 = v203;
  *(v99 + 32) = v203;
  v101 = v100;
  v206 = v97;
  v102 = sub_7671E0();
  sub_568754(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout);
  v103 = v200;
  sub_7665A0();

  (*(v199 + 8))(v96, v103);
  sub_BEB8(v252);
  sub_BEB8(v253);
  sub_BEB8(v254);
  (*(v213 + 8))(v212, v214);
  (*(v211 + 8))(v217, v216);
  sub_10A2C(v215, &unk_94AE30);
  if ((v184 & 1) == 0)
  {

    (*(v193 + 8))(v210, v169);
    return (*(v201 + 8))(v207, v202);
  }

  v104 = v188;
  sub_763F60();
  swift_getKeyPath();
  v105 = v167;
  sub_75C7B0();

  v106 = v254[0];
  v107 = swift_allocObject();
  *(v107 + 16) = v205;
  *(v107 + 32) = v106;
  v108 = v106;
  v109 = sub_7671E0();
  sub_24128();
  v110 = v190;
  sub_7666E0();

  (*(v189 + 8))(v104, v110);
  v217 = sub_75BCA0();
  v111 = sub_75BC80();
  v112 = sub_75BC70();
  if (v112 >> 62)
  {
    v113 = v112;
    v114 = sub_76A860();
    v112 = v113;
    if (v114)
    {
      goto LABEL_34;
    }

LABEL_40:

    v98 = 0;
    goto LABEL_41;
  }

  if (!*(&dword_10 + (v112 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_40;
  }

LABEL_34:
  if ((v112 & 0xC000000000000001) != 0)
  {
    v98 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v112 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_76;
    }

    v98 = *(v112 + 32);
  }

LABEL_41:
  v115 = sub_75BCF0();
  if (v115 >> 62)
  {
    v116 = v115;
    v117 = sub_76A860();
    v115 = v116;
    if (v117)
    {
      goto LABEL_43;
    }

LABEL_48:

    v216 = 0;
    goto LABEL_49;
  }

  if (!*(&dword_10 + (v115 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_48;
  }

LABEL_43:
  if ((v115 & 0xC000000000000001) != 0)
  {
    v216 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v115 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_78;
    }

    v216 = *(v115 + 32);
  }

LABEL_49:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v118 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_75C7B0();

  v94 = v254[0];
  sub_42B534(v166);

  v105 = sub_75BCA0();
  v108 = sub_75BC80();
  v119 = sub_75BC70();
  if (v119 >> 62)
  {
    v120 = v119;
    v121 = sub_76A860();
    v119 = v120;
    v109 = v207;
    if (v121)
    {
LABEL_51:
      if ((v119 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v119 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_80;
        }

        v94 = *(v119 + 32);

        goto LABEL_54;
      }

LABEL_76:
      v94 = sub_76A770();
LABEL_54:

      goto LABEL_57;
    }
  }

  else
  {
    v109 = v207;
    if (*(&dword_10 + (v119 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_51;
    }
  }

  v94 = 0;
LABEL_57:
  v122 = sub_75BCF0();
  if (v122 >> 62)
  {
    v125 = v122;
    v126 = sub_76A860();
    v122 = v125;
    v215 = v98;
    if (v126)
    {
LABEL_59:
      if ((v122 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8)))
        {
          v124 = *(v122 + 32);

LABEL_62:

          goto LABEL_65;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        v213 = sub_76A860();
        if (v94)
        {
          goto LABEL_69;
        }

        goto LABEL_82;
      }

LABEL_78:
      v124 = sub_76A770();
      goto LABEL_62;
    }
  }

  else
  {
    v123 = *(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8));
    v215 = v98;
    if (v123)
    {
      goto LABEL_59;
    }
  }

  v124 = 0;
LABEL_65:
  v127 = sub_760760();
  v214 = v111;
  if ((v127 & 1) == 0)
  {

    v130 = v191;
    v131 = v185;
    (*(v191 + 104))(v185, enum case for LockupMediaLayout.DisplayType.none(_:), v192);
LABEL_72:
    v134 = v166;
    v135 = v193;
LABEL_104:
    type metadata accessor for LockupMediaView();
    v159 = sub_527DE4();
    swift_getObjectType();
    v160 = v207;
    sub_161888(v217, v214, v215, v216, v134, v131, v159, v207);

    swift_unknownObjectRelease();

    (*(v130 + 8))(v131, v192);
    sub_10A2C(v134, &unk_948720);
    (*(v135 + 8))(v210, v169);
    return (*(v201 + 8))(v160, v202);
  }

  if (v108 | v105)
  {
    v132 = v165;
    sub_7666A0();

    v130 = v191;
    v133 = v192;
    (*(v191 + 104))(v132, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v192);
    v131 = v185;
    (*(v130 + 32))(v185, v132, v133);
    goto LABEL_72;
  }

  v128 = sub_55BABC(v94, v124, 0, 1);
  v108 = v128;
  v109 = (v128 >> 62);
  if (v128 >> 62)
  {
    goto LABEL_81;
  }

  v213 = *(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8));
  if (v94)
  {
LABEL_69:
    v129 = sub_759690();
    goto LABEL_83;
  }

LABEL_82:
  v129 = 0;
LABEL_83:
  v136 = sub_55BE04(v129);

  LODWORD(v211) = v136;
  if (v94)
  {
    v137 = sub_759690();
  }

  else
  {
    v137 = 0;
  }

  v139 = v201;
  v138 = v202;
  v140 = v164;
  (*(v201 + 16))(v164, v207, v202);
  (*(v139 + 56))(v140, 0, 1, v138);
  v141 = sub_55C32C(v137, v140);

  sub_10A2C(v140, &unk_94DF00);
  if (v109)
  {
    result = sub_76A860();
    v142 = v162;
    if (result)
    {
      goto LABEL_88;
    }

LABEL_94:

    goto LABEL_95;
  }

  result = *(&dword_10 + (v108 & 0xFFFFFFFFFFFFFF8));
  v142 = v162;
  if (!result)
  {
    goto LABEL_94;
  }

LABEL_88:
  if ((v108 & 0xC000000000000001) != 0)
  {
    sub_76A770();
LABEL_91:

    v143 = sub_765150();

    if (v143)
    {

      v130 = v191;
      v144 = v192;
      v145 = v165;
      (*(v191 + 104))(v165, enum case for LockupMediaLayout.DisplayType.landscape(_:), v192);
LABEL_103:
      v131 = v185;
      v158 = v166;
      v135 = v193;
      (*(v130 + 32))(v185, v145, v144);
      v134 = v158;
      goto LABEL_104;
    }

LABEL_95:
    v146 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v147 = v141;
    v148 = v191;
    v149 = v142;
    v150 = v142;
    v144 = v192;
    v212 = *(v191 + 104);
    (v212)(v149, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v192);
    v151 = sub_75C920();
    v209 = *(v148 + 8);
    v209(v150, v144);
    if (((v213 >= v151) & v147) != 0 || (v146 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v212)(v150, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v144), v152 = sub_75C920(), v153 = v209, v209(v150, v144), ((v213 >= v152) & v211) != 0) || (v146 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v212)(v150, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v144), v154 = sub_75C920(), v153(v150, v144), v213 >= v154))
    {
    }

    else
    {
      v146 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v212)(v150, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v144);
      v155 = sub_75C920();

      v153(v150, v144);
      if (v213 != v155)
      {
        v156 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v145 = v165;
        v157 = v165;
LABEL_102:
        (v212)(v157, v156, v144);
        v130 = v191;
        goto LABEL_103;
      }
    }

    v145 = v165;
    v157 = v165;
    v156 = v146;
    goto LABEL_102;
  }

  if (*(&dword_10 + (v108 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_91;
  }

  __break(1u);
  return result;
}

uint64_t sub_565968(uint64_t a1, uint64_t a2)
{
  v268 = a2;
  v3 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v3 - 8);
  v261 = &v208[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_BD88(&unk_94DF00);
  __chkstk_darwin(v5 - 8);
  v232 = &v208[-v6];
  v7 = sub_766690();
  v250 = *(v7 - 8);
  __chkstk_darwin(v7);
  v240 = &v208[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v249 = &v208[-v10];
  v11 = sub_75C9A0();
  v236 = *(v11 - 8);
  __chkstk_darwin(v11);
  v260 = &v208[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_BD88(&unk_948720);
  __chkstk_darwin(v13 - 8);
  v239 = &v208[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v264 = &v208[-v16];
  v17 = sub_75C930();
  v251 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v208[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v230 = &v208[-v21];
  __chkstk_darwin(v22);
  v254 = &v208[-v23];
  __chkstk_darwin(v24);
  v233 = &v208[-v25];
  __chkstk_darwin(v26);
  v263 = &v208[-v27];
  v28 = sub_BD88(&unk_93F5A0);
  v247 = *(v28 - 8);
  v248 = v28;
  __chkstk_darwin(v28);
  v246 = &v208[-v29];
  v30 = sub_760840();
  v244 = *(v30 - 8);
  v245 = v30;
  __chkstk_darwin(v30);
  v243 = &v208[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_760D90();
  v252 = *(v32 - 1);
  v253 = v32;
  __chkstk_darwin(v32);
  v235 = &v208[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v265 = sub_762D10();
  v241 = *(v265 - 8);
  __chkstk_darwin(v265);
  v35 = &v208[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_75D850();
  v258 = *(v36 - 1);
  v259 = v36;
  __chkstk_darwin(v36);
  v38 = &v208[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v257 = &v208[-v40];
  v266 = sub_760820();
  v256 = *(v266 - 8);
  __chkstk_darwin(v266);
  v242 = &v208[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v267 = &v208[-v43];
  v44 = sub_BD88(&unk_94AE30);
  __chkstk_darwin(v44 - 8);
  v234 = &v208[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46);
  v262 = &v208[-v47];
  v48 = sub_75DAB0();
  __chkstk_darwin(v48 - 8);
  v49 = sub_7656C0();
  v237 = *(v49 - 8);
  v238 = v49;
  __chkstk_darwin(v49);
  v255 = &v208[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_760770();
  v270 = *(v51 - 8);
  v271 = v51;
  __chkstk_darwin(v51);
  v273 = &v208[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_7581C0();
  sub_568754(&qword_95ADF0, 255, &type metadata accessor for AppSearchResult);
  v272 = a1;
  result = sub_75C750();
  if (!v311[0])
  {
    return result;
  }

  v231 = v19;
  v228 = v11;
  v269 = v311[0];
  sub_7581B0();
  v315 = _swiftEmptyArrayStorage;

  if (sub_764EE0())
  {
    if (qword_93C668 != -1)
    {
      swift_once();
    }

    v54 = sub_75CF00();
    sub_BE38(v54, qword_99B898);
    sub_75CDD0();
    sub_765330();
    sub_769440();
    if (*(&dword_10 + (v315 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v315 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
  }

  v229 = v7;
  v55 = sub_75BC90();
  swift_getKeyPath();
  sub_75C7B0();

  v56 = v311[0];
  v57 = sub_1BA624(v55, v311[0]);

  sub_10A0E4(v57);
  v58 = v273;
  sub_75BCC0();
  v59 = sub_75BC70();
  if (v59 >> 62)
  {
    v131 = sub_76A860();
    v58 = v273;

    if (v131)
    {
      goto LABEL_10;
    }

LABEL_52:

    goto LABEL_53;
  }

  v60 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));

  if (!v60)
  {
    goto LABEL_52;
  }

LABEL_10:
  if ((sub_7581A0() & 1) == 0 || (sub_760760() & 1) == 0)
  {
    goto LABEL_52;
  }

  v61 = v272;
  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  sub_765660();
  sub_765560();
  sub_563DA0(v61);
  v62 = sub_764EF0();
  v213 = v63;
  v214 = v62;
  v64 = sub_764F70();
  v215 = v65;
  v216 = v64;
  v66 = sub_764E90();

  if (v66)
  {
    v67 = sub_75E5C0();

    v69 = v252;
    v68 = v253;
    if (v67)
    {
      v70 = sub_765720();
      v217 = v71;
      v218 = v70;
    }

    else
    {
      v217 = 0;
      v218 = 0;
    }
  }

  else
  {
    v217 = 0;
    v218 = 0;
    v69 = v252;
    v68 = v253;
  }

  v226 = sub_75BC90();
  v72 = v262;
  _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
  (v69[7])(v72, 0, 1, v68);
  v225 = sub_75BCB0();
  v73 = sub_75BCD0();
  swift_getKeyPath();
  sub_75C7B0();

  v74 = v314;
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v75 = v266;
  v76 = sub_BE38(v266, qword_99B150);
  v77 = v256 + 16;
  v78 = *(v256 + 16);
  v78(v267, v76, v75);
  v79 = sub_769A00();
  v227 = v17;
  v220 = v78;
  v221 = v77;
  v209 = v73;
  if ((v79 & 1) == 0)
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v80 = qword_946938;
    goto LABEL_27;
  }

  if (qword_93C440 != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v80 = qword_946920;
LABEL_27:
    v81 = v259;
    v82 = sub_BE38(v259, v80);
    v83 = v258;
    (*(v258 + 16))(v38, v82, v81);
    (*(v83 + 32))(v257, v38, v81);
    v84 = [v74 preferredContentSizeCategory];
    sub_769B20();

    sub_75D800();
    sub_75D830();
    sub_760810();
    sub_760800();
    v219 = sub_7670D0();
    swift_allocObject();
    v222 = sub_7670B0();
    v223 = objc_opt_self();
    v85 = [v223 preferredFontForTextStyle:UIFontTextStyleBody];
    v86 = sub_7653B0();
    v312 = v86;
    v87 = sub_568754(&qword_93F9B0, 255, &type metadata accessor for Feature);
    v313 = v87;
    v211 = v87;
    v88 = sub_B1B4(v311);
    v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v90 = *(v86 - 8);
    v91 = *(v90 + 104);
    v212 = v90 + 104;
    v91(v88, enum case for Feature.measurement_with_labelplaceholder(_:), v86);
    v210 = v91;
    sub_765C30();
    v224 = v74;
    sub_BEB8(v311);
    sub_762D00();
    sub_762CE0();
    v92 = *(v241 + 8);
    v92(v35, v265);
    v93 = [v223 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v310[3] = v86;
    v310[4] = v87;
    v94 = sub_B1B4(v310);
    v91(v94, v89, v86);
    sub_765C30();
    sub_BEB8(v310);
    sub_762D00();
    sub_762CE0();
    v92(v35, v265);
    v95 = [v223 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v309[3] = v86;
    v309[4] = v211;
    v96 = sub_B1B4(v309);
    v210(v96, v89, v86);
    sub_765C30();
    sub_BEB8(v309);
    sub_762D00();
    sub_762CE0();
    v92(v35, v265);
    v97 = v226;
    LODWORD(v265) = sub_246DC(0, v226) & (v97 != 0);
    if (v265 == 1)
    {
      v98 = objc_allocWithZone(sub_7671D0());
      v99 = v224;
      v100 = sub_7671C0();
      v101 = v234;
      sub_1ED18(v262, v234, &unk_94AE30);
      v103 = v252;
      v102 = v253;
      v104 = v252[6];
      if (v104(v101, 1, v253) == 1)
      {
        v105 = v235;
        _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
        if (v104(v101, 1, v102) != 1)
        {
          sub_10A2C(v101, &unk_94AE30);
        }
      }

      else
      {
        v105 = v235;
        (v103[4])(v235, v101, v102);
      }

      v108 = v100;
      sub_2185C(v226, v105, v108);

      (v103[1])(v105, v102);
      v106 = v219;
      swift_allocObject();
      v107 = sub_7670A0();
    }

    else
    {
      v106 = v219;
      swift_allocObject();
      v107 = sub_7670B0();
    }

    v109 = v107;

    v110 = v225;
    if ((sub_246DC(v225, 0) & (v110 != 0)) == 1)
    {
      sub_F7FC(v110, v209 & 1);
      swift_allocObject();
      v111 = sub_7670A0();
    }

    else
    {
      swift_allocObject();
      v111 = sub_7670B0();
    }

    v112 = v111;
    v220(v242, v267, v266);
    v308 = &protocol witness table for LayoutViewPlaceholder;
    v307 = v106;
    v306 = v222;
    v305 = 0;
    *&v303[40] = 0u;
    v304 = 0u;
    sub_134D8(v311, v303);
    sub_134D8(v310, &v302);
    v301 = 0;
    v299 = 0u;
    v300 = 0u;
    v298 = 0;
    v296 = 0u;
    v297 = 0u;

    v253 = v112;
    v113 = sub_7670C0();
    v295 = &protocol witness table for LayoutViewPlaceholder;
    v294 = v106;
    v293 = v113;
    v292 = 0;
    v290 = 0u;
    v291 = 0u;
    v289 = 0;
    v287 = 0u;
    v288 = 0u;
    v286 = 0;
    v284 = 0u;
    v285 = 0u;
    v283 = 0;
    v282 = 0u;
    *&v281[40] = 0u;
    sub_134D8(v309, v281);
    v280 = &protocol witness table for LayoutViewPlaceholder;
    v279 = v106;
    v278 = v109;
    v277 = &protocol witness table for LayoutViewPlaceholder;
    v276 = v106;
    v275 = v112;
    v114 = v243;
    sub_760830();
    sub_7671D0();
    v115 = sub_BD88(&unk_93F5C0);
    v116 = swift_allocObject();
    v265 = xmmword_77D9F0;
    *(v116 + 16) = xmmword_77D9F0;
    v117 = v224;
    *(v116 + 32) = v224;
    v118 = v117;
    v119 = sub_7671E0();
    sub_568754(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout);
    v120 = v245;
    sub_7665A0();

    (*(v244 + 8))(v114, v120);
    sub_BEB8(v309);
    sub_BEB8(v310);
    sub_BEB8(v311);
    (*(v258 + 8))(v257, v259);
    (*(v256 + 8))(v267, v266);
    v74 = v246;
    sub_763F60();
    v121 = swift_allocObject();
    *(v121 + 16) = v265;
    *(v121 + 32) = v118;
    v122 = v118;
    v38 = sub_7671E0();
    sub_24128();
    v123 = v248;
    sub_7666E0();

    (*(v247 + 8))(v74, v123);
    sub_10A2C(v262, &unk_94AE30);
    v124 = sub_75BCA0();
    v35 = sub_75BC80();
    v125 = sub_75BC70();
    if (v125 >> 62)
    {
      v38 = v125;
      v126 = sub_76A860();
      v125 = v38;
    }

    else
    {
      v126 = *(&dword_10 + (v125 & 0xFFFFFFFFFFFFFF8));
    }

    v127 = v263;
    v128 = v231;
    if (v126)
    {
      if ((v125 & 0xC000000000000001) != 0)
      {
        v38 = v125;
        v123 = sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v125 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_121;
        }

        v38 = v125;
        v123 = *(v125 + 32);
      }
    }

    else
    {

      v123 = 0;
    }

    v129 = sub_75BCF0();
    if (v129 >> 62)
    {
      v38 = v129;
      v133 = sub_76A860();
      v129 = v38;
      v262 = v35;
      if (!v133)
      {
LABEL_57:

        v267 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v130 = *(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8));
      v262 = v35;
      if (!v130)
      {
        goto LABEL_57;
      }
    }

    if ((v129 & 0xC000000000000001) != 0)
    {
      v38 = v129;
      v267 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_123:
        v137 = sub_76A770();
LABEL_71:

        goto LABEL_74;
      }

      v38 = v129;
      v267 = *(v129 + 32);
    }

LABEL_58:
    v115 = sub_75BCA0();
    v74 = sub_75BC80();
    v125 = sub_75BC70();
    if (v125 >> 62)
    {
      v38 = v125;
      v134 = sub_76A860();
      v125 = v38;
      if (!v134)
      {
        goto LABEL_65;
      }

LABEL_60:
      if ((v125 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v125 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_125;
        }

        v35 = v125;
        v38 = *(v125 + 32);

        goto LABEL_63;
      }

LABEL_121:
      v35 = v125;
      v38 = sub_76A770();
LABEL_63:

      goto LABEL_66;
    }

    if (*(&dword_10 + (v125 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_60;
    }

LABEL_65:

    v38 = 0;
LABEL_66:
    v135 = sub_75BCF0();
    if (v135 >> 62)
    {
      break;
    }

    v136 = *(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8));
    v266 = v123;
    if (!v136)
    {
      goto LABEL_73;
    }

LABEL_68:
    if ((v135 & 0xC000000000000001) != 0)
    {
      goto LABEL_123;
    }

    if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)))
    {
      v137 = *(v135 + 32);

      goto LABEL_71;
    }

LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
  }

  v138 = v135;
  v139 = sub_76A860();
  v135 = v138;
  v266 = v123;
  if (v139)
  {
    goto LABEL_68;
  }

LABEL_73:

  v137 = 0;
LABEL_74:
  if ((sub_760760() & 1) == 0)
  {

    v137 = v251;
    v38 = v227;
    (*(v251 + 104))(v127, enum case for LockupMediaLayout.DisplayType.none(_:), v227);
LABEL_82:
    v143 = v229;
    v141 = v250;
    goto LABEL_110;
  }

  if (v74 | v115)
  {
    v145 = v233;
    sub_7666A0();

    v137 = v251;
    v38 = v227;
    (*(v251 + 104))(v145, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v227);
    (*(v137 + 32))(v127, v145, v38);
    goto LABEL_82;
  }

  v140 = sub_55BABC(v38, v137, 0, 1);
  v127 = v140;
  v141 = v140 >> 62;
  if (v140 >> 62)
  {
    goto LABEL_175;
  }

  v142 = *(&dword_10 + (v140 & 0xFFFFFFFFFFFFFF8));
  while (2)
  {
    v143 = v229;
    *&v265 = v142;
    if (v38)
    {
      v144 = sub_759690();
    }

    else
    {
      v144 = 0;
    }

    LODWORD(v258) = sub_55BE04(v144);

    v248 = v124;
    if (v38)
    {
      v146 = sub_759690();
    }

    else
    {
      v146 = 0;
    }

    v147 = v270;
    v148 = v271;
    v149 = v232;
    (*(v270 + 16))(v232, v273, v271);
    (*(v147 + 56))(v149, 0, 1, v148);
    v128 = sub_55C32C(v146, v149);

    sub_10A2C(v149, &unk_94DF00);
    if (v141)
    {
      v151 = sub_76A860();
    }

    else
    {
      v151 = *(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8));
    }

    v141 = v250;
    v124 = v248;
    if (!v151)
    {

      goto LABEL_97;
    }

    if ((v127 & 0xC000000000000001) != 0)
    {
      sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_178;
      }
    }

    v152 = sub_765150();

    if ((v152 & 1) == 0)
    {
LABEL_97:
      v154 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v155 = v251;
      v156 = v227;
      v157 = v230;
      v259 = *(v251 + 104);
      v259(v230, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v227);
      v158 = v128;
      v159 = sub_75C920();
      v257 = *(v155 + 8);
      (v257)(v157, v156);
      if (((v265 >= v159) & v158) != 0)
      {

        v153 = v233;
        v160 = v233;
        v161 = v154;
      }

      else
      {
        v162 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
        v259(v157, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v156);
        v163 = sub_75C920();
        v164 = v257;
        (v257)(v157, v156);
        if (((v265 >= v163) & v258) == 0)
        {
          v165 = v157;
          v166 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
          v259(v157, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v156);
          v167 = sub_75C920();
          v164(v165, v156);
          v168 = v265 < v167;
          v169 = v165;
          v127 = v263;
          if (v168)
          {
            LODWORD(v258) = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
            (v259)(v169);
            v170 = sub_75C920();

            v164(v169, v156);
            if (v265 == v170)
            {
              v153 = v233;
              v171 = v233;
              v172 = v258;
            }

            else
            {
              v172 = enum case for LockupMediaLayout.DisplayType.none(_:);
              v153 = v233;
              v171 = v233;
            }
          }

          else
          {

            v153 = v233;
            v171 = v233;
            v172 = v166;
          }

          v259(v171, v172, v156);
          v38 = v156;
          v137 = v251;
          goto LABEL_108;
        }

        v153 = v233;
        v160 = v233;
        v161 = v162;
      }

      v259(v160, v161, v156);
      v38 = v156;
      v137 = v251;
      v127 = v263;
LABEL_108:
      v143 = v229;
      v141 = v250;
      v124 = v248;
      goto LABEL_109;
    }

    v137 = v251;
    v153 = v233;
    v38 = v227;
    (*(v251 + 104))(v233, enum case for LockupMediaLayout.DisplayType.landscape(_:), v227);
    v127 = v263;
LABEL_109:
    (*(v137 + 32))(v127, v153, v38);
    v128 = v231;
LABEL_110:
    v173 = sub_527DE4();
    (*(v141 + 56))(v264, 1, 1, v143);
    v252 = v173;
    v253 = [v173 traitCollection];
    v312 = &type metadata for CGFloat;
    v313 = &protocol witness table for CGFloat;
    v311[0] = 0x4021000000000000;
    sub_134D8(v311, v310);
    v174 = *(v137 + 16);
    v272 = v137 + 16;
    *&v265 = v174;
    v174(v254, v127, v38);
    if (v262 | v124)
    {
      goto LABEL_129;
    }

    v175 = sub_55BABC(v266, v267, 0, 1);
    if (!(v175 >> 62))
    {
      if (!*(&dword_10 + (v175 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_128;
      }

LABEL_113:
      if ((v175 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v175 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_175:
          v142 = sub_76A860();
          continue;
        }
      }

      sub_765260();
      sub_7666A0();

      goto LABEL_130;
    }

    break;
  }

  v176 = v175;
  v177 = sub_76A860();
  v175 = v176;
  if (v177)
  {
    goto LABEL_113;
  }

LABEL_128:

LABEL_129:
  sub_7666A0();
LABEL_130:
  sub_1ED18(v264, v239, &unk_948720);
  sub_75C970();
  sub_BEB8(v311);
  v178 = v240;
  sub_75C980();
  sub_766660();
  v179 = *(v141 + 8);
  v141 += 8;
  v179(v178, v143);
  if (v262)
  {
    v128 = v137;

    sub_764BC0();
    v180 = sub_765330();
    v181 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
    v141 = *(v181 + 2);
    v182 = *(v181 + 3);
    v183 = v141 + 1;
    if (v141 >= v182 >> 1)
    {
      goto LABEL_172;
    }

    goto LABEL_132;
  }

  if (v124)
  {

    v185 = sub_765330();
    v181 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
    v187 = *(v181 + 2);
    v186 = *(v181 + 3);
    if (v187 >= v186 >> 1)
    {
      v181 = sub_7B220((v186 > 1), v187 + 1, 1, v181);
    }

    (*(v236 + 8))(v260, v228);
    sub_10A2C(v264, &unk_948720);
    *(v181 + 2) = v187 + 1;
    v188 = &v181[16 * v187];
    *(v188 + 4) = v185;
    v188[40] = 0;
    goto LABEL_180;
  }

  v189 = sub_75C920();
  v190 = sub_55BABC(v266, v267, v189, 0);
  sub_75C9C0();
  v150 = v190;
  if (!(v190 >> 62))
  {
    result = *(&dword_10 + (v190 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_139;
    }

LABEL_179:

    (*(v236 + 8))(v260, v228);
    sub_10A2C(v264, &unk_948720);
    v181 = _swiftEmptyArrayStorage;
    goto LABEL_180;
  }

LABEL_178:
  v204 = v150;
  result = sub_76A860();
  v150 = v204;
  if (!result)
  {
    goto LABEL_179;
  }

LABEL_139:
  v248 = v124;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v191 = 0;
  v259 = (v150 & 0xC000000000000001);
  v192 = (v137 + 88);
  LODWORD(v258) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  LODWORD(v250) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
  v254 = (v137 + 8);
  v181 = _swiftEmptyArrayStorage;
  v256 = result;
  v257 = v150;
  while (2)
  {
    if (v259)
    {
      v183 = sub_76A770();
    }

    else
    {
      v183 = *(v150 + 8 * v191 + 32);
    }

    v193 = v227;
    (v265)(v128, v127, v227);
    v194 = (*v192)(v128, v193);
    if (v194 == v258)
    {
      (*v254)(v128, v193);
      goto LABEL_147;
    }

    if (v194 != v250)
    {
      v195 = sub_765150();
      (*v254)(v128, v227);
      if (v267)
      {
        goto LABEL_151;
      }

LABEL_148:
      if (!v266)
      {
        goto LABEL_162;
      }

      goto LABEL_149;
    }

LABEL_147:
    v195 = 0;
    if (!v267)
    {
      goto LABEL_148;
    }

LABEL_151:
    v180 = v267;
    v197 = sub_765750();
    if (!(v197 >> 62))
    {
      if (*(&dword_10 + (v197 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_153;
      }

LABEL_161:

      if (!v266)
      {
LABEL_162:
        v196 = 0;
LABEL_163:
        sub_7596B0();
        v201 = v261;
        sub_6C14C(v196, v261);

        sub_769DA0();
        v199 = sub_765330();
        sub_161D14(v201);
LABEL_164:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_7B220(0, *(v181 + 2) + 1, 1, v181);
        }

        v141 = *(v181 + 2);
        v202 = *(v181 + 3);
        if (v141 >= v202 >> 1)
        {
          v181 = sub_7B220((v202 > 1), v141 + 1, 1, v181);
        }

        ++v191;

        *(v181 + 2) = v141 + 1;
        v203 = &v181[16 * v141];
        *(v203 + 4) = v199;
        v203[40] = v195 & 1;
        v150 = v257;
        v128 = v231;
        if (v256 == v191)
        {

          (*(v236 + 8))(v260, v228);
          sub_10A2C(v264, &unk_948720);
          v137 = v251;
          goto LABEL_180;
        }

        continue;
      }

      goto LABEL_149;
    }

    break;
  }

  v180 = v197;
  v200 = sub_76A860();
  v197 = v180;
  if (!v200)
  {
    goto LABEL_161;
  }

LABEL_153:
  if ((v197 & 0xC000000000000001) != 0)
  {
    sub_76A770();
    goto LABEL_156;
  }

  v182 = *(&dword_10 + (v197 & 0xFFFFFFFFFFFFFF8));
  if (v182)
  {

LABEL_156:

    sub_765390();
    sub_764BC0();
    v198 = sub_7651E0();

    if (v198)
    {
      v199 = sub_765330();

      v127 = v263;
      goto LABEL_164;
    }

    v127 = v263;
    if (!v266)
    {
      goto LABEL_162;
    }

LABEL_149:
    v196 = sub_759690();
    goto LABEL_163;
  }

  __break(1u);
LABEL_172:
  v181 = sub_7B220((v182 > 1), v183, 1, v181);
LABEL_132:

  (*(v236 + 8))(v260, v228);
  sub_10A2C(v264, &unk_948720);
  *(v181 + 2) = v183;
  v184 = &v181[16 * v141];
  *(v184 + 4) = v180;
  v184[40] = 0;
  v137 = v128;
LABEL_180:
  v205 = *(v181 + 2);
  if (v205)
  {
    v311[0] = _swiftEmptyArrayStorage;
    sub_76A7C0();
    v206 = 32;
    do
    {

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      v206 += 16;
      --v205;
    }

    while (v205);
    swift_unknownObjectRelease();

    (*(v137 + 8))(v263, v227);
    v207 = v311[0];
  }

  else
  {
    swift_unknownObjectRelease();

    (*(v137 + 8))(v127, v227);
    v207 = _swiftEmptyArrayStorage;
  }

  sub_10A0E4(v207);
  (*(v237 + 8))(v255, v238);
  v58 = v273;
LABEL_53:
  v132._rawValue = v315;
  sub_75A070(v132);

  return (*(v270 + 8))(v58, v271);
}

void sub_5680B8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = sub_76A860();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_76A770();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    type metadata accessor for BorderedScreenshotView();
    sub_568754(&qword_946D80, 255, type metadata accessor for BorderedScreenshotView);
    v9 = v8;
    sub_76A6E0();
    sub_75A0B0();
    sub_1EB60(v29);
    v10 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    sub_7591D0(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_940590) setImage:0];
    type metadata accessor for VideoView();
    sub_568754(&qword_952550, 255, type metadata accessor for VideoView);
    v14 = v13;
    sub_76A6E0();
    sub_75A0B0();

    sub_1EB60(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v17 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  sub_7591D0(v31, v18);

  v19 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
  v20 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews];
  v21 = *(v20 + 16);
  if (v21)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v19;

    v22 = 32;
    do
    {
      v23 = *(v20 + v22);
      if (swift_dynamicCastClass())
      {
        v24 = v23;
        v32.value.super.isa = 0;
        v32.is_nil = 0;
        sub_7591D0(v32, v25);
        sub_759210();
        sub_568754(&qword_945810, 255, &type metadata accessor for ArtworkView);
        sub_75A0C0();
      }

      v22 += 16;
      --v21;
    }

    while (v21);
  }

  v26 = *(v15 + v16);
  sub_759210();
  sub_568754(&qword_945810, 255, &type metadata accessor for ArtworkView);
  v27 = v26;
  sub_75A0C0();
}

void sub_5684E8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsCalculator) = 0;
  v3 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsUpdateBlock);
  *v3 = 0;
  v3[1] = 0;
  sub_76A840();
  __break(1u);
}

id sub_5685E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_568754(&qword_93F500, 255, type metadata accessor for VideoView);
    v4 = [v3 superview];
    if (!v4)
    {
LABEL_6:

      goto LABEL_7;
    }

    v5 = v4;
    sub_BE70(0, &qword_93E550);
    v6 = v1;
    v7 = sub_76A1C0();

    if (v7)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v3 = v8;
        [v8 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v1 addSubview:v9];
  }

  sub_55A7A8();

  return [v1 setNeedsLayout];
}

uint64_t sub_568754(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5688A8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99E5A8);
  v1 = sub_BE38(v0, qword_99E5A8);
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x80000000007E8010;
  *(v1 + 16) = sub_568970;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_568D38()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_95AEC8);
  v1 = sub_BE38(v0, qword_95AEC8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4045000000000000;
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x80000000007E7FC0;
  *(v1 + 16) = sub_56E2E4;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightBold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_568EA0()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99E9C8);
  v1 = sub_BE38(v0, qword_99E9C8);
  *v1 = 0xD000000000000015;
  *(v1 + 8) = 0x80000000007E7F40;
  *(v1 + 16) = sub_568F5C;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

UIFontTextStyle sub_568F5C()
{
  v0 = sub_7573C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757390();
  v4 = sub_757320();
  (*(v1 + 8))(v3, v0);
  v5 = &UIFontTextStyleTitle2;
  if (v4)
  {
    v5 = &UIFontTextStyleTitle3;
  }

  v6 = *v5;

  return v6;
}

uint64_t sub_569080()
{
  v0 = sub_765900();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = sub_7666D0();
  sub_161DC(v7, qword_99EA10);
  v8 = sub_BE38(v7, qword_99EA10);
  (*(v1 + 104))(v6, enum case for Paragraph.Style.standard(_:), v0);
  v9 = *(v1 + 32);
  v9(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v3, v0);
  *v8 = 0x7061726761726170;
  *(v8 + 8) = 0xE900000000000068;
  *(v8 + 16) = sub_56DF64;
  *(v8 + 24) = v11;
  *(v8 + 32) = 0;
  return (*(*(v7 - 8) + 104))(v8, enum case for FontUseCase.dynamicPreferredFont(_:), v7);
}

uint64_t sub_56929C()
{
  v0 = sub_765900();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = sub_7666D0();
  sub_161DC(v7, qword_99EA58);
  v8 = sub_BE38(v7, qword_99EA58);
  (*(v1 + 104))(v6, enum case for Paragraph.Style.article(_:), v0);
  v9 = *(v1 + 32);
  v9(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v3, v0);
  *v8 = 0xD000000000000010;
  *(v8 + 8) = 0x80000000007E7F60;
  *(v8 + 16) = sub_56E2DC;
  *(v8 + 24) = v11;
  *(v8 + 32) = 0;
  return (*(*(v7 - 8) + 104))(v8, enum case for FontUseCase.dynamicPreferredFont(_:), v7);
}

uint64_t sub_569514()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EAE8);
  v1 = sub_BE38(v0, qword_99EAE8);
  *v1 = 0xD00000000000001BLL;
  *(v1 + 8) = 0x80000000007E7DD0;
  *(v1 + 16) = sub_5695DC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightSemibold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_5695E4()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EB00);
  v1 = sub_BE38(v0, qword_99EB00);
  *v1 = 0xD000000000000018;
  *(v1 + 8) = 0x80000000007E7DF0;
  *(v1 + 16) = sub_5696AC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_5698BC()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99ECF8);
  v1 = sub_BE38(v0, qword_99ECF8);
  *v1 = 0xD000000000000022;
  *(v1 + 8) = 0x80000000007E7F10;
  *(v1 + 16) = sub_569984;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_569990()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99ED10);
  v1 = sub_BE38(v0, qword_99ED10);
  *v1 = 0xD000000000000022;
  *(v1 + 8) = 0x80000000007E7EE0;
  *(v1 + 16) = sub_569A58;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

UIFontTextStyle sub_569C60()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EF20);
  v1 = sub_BE38(v0, qword_99EF20);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4020000000000000;
  *v1 = 0xD000000000000018;
  *(v1 + 8) = 0x80000000007E7C00;
  *(v1 + 16) = sub_56DF68;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_569D78()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EF38);
  v1 = sub_BE38(v0, qword_99EF38);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4024000000000000;
  *v1 = 0xD000000000000017;
  *(v1 + 8) = 0x80000000007E7C60;
  *(v1 + 16) = sub_56E2EC;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_569E90()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EF50);
  v1 = sub_BE38(v0, qword_99EF50);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4022000000000000;
  *v1 = 0xD00000000000002CLL;
  *(v1 + 8) = 0x80000000007E7C80;
  *(v1 + 16) = sub_56E2EC;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_569FA8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EF68);
  v1 = sub_BE38(v0, qword_99EF68);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4020000000000000;
  *v1 = 0xD00000000000002DLL;
  *(v1 + 8) = 0x80000000007E7CB0;
  *(v1 + 16) = sub_56E2EC;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_56A0C0()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EF80);
  v1 = sub_BE38(v0, qword_99EF80);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4022000000000000;
  *v1 = 0xD00000000000002BLL;
  *(v1 + 8) = 0x80000000007E7CE0;
  *(v1 + 16) = sub_56E2EC;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

uint64_t sub_56A1D8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EF98);
  v1 = sub_BE38(v0, qword_99EF98);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4024000000000000;
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x80000000007E7C40;
  *(v1 + 16) = sub_56DFC8;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

UIFontTextStyle sub_56A2CC()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EFB0);
  v1 = sub_BE38(v0, qword_99EFB0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4024000000000000;
  *(v2 + 24) = UIFontTextStyleCaption2;
  *v1 = 0xD00000000000001DLL;
  *(v1 + 8) = 0x80000000007E7C20;
  *(v1 + 16) = sub_56DFAC;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleCaption2;
}

UIFontTextStyle sub_56A3E4()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EFC8);
  v1 = sub_BE38(v0, qword_99EFC8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4026000000000000;
  *(v2 + 24) = UIFontTextStyleCaption2;
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x80000000007E80B0;
  *(v1 + 16) = sub_56E2F0;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleCaption2;
}

uint64_t sub_56A4FC()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EFE0);
  v1 = sub_BE38(v0, qword_99EFE0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4022000000000000;
  *v1 = 0xD000000000000031;
  *(v1 + 8) = 0x80000000007E7D10;
  *(v1 + 16) = sub_56E2E4;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_56A5F0()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EFF8);
  v1 = sub_BE38(v0, qword_99EFF8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4020000000000000;
  *v1 = 0xD000000000000032;
  *(v1 + 8) = 0x80000000007E7D50;
  *(v1 + 16) = sub_56E2E4;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_56A6E4()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F010);
  v1 = sub_BE38(v0, qword_99F010);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4022000000000000;
  *v1 = 0xD000000000000030;
  *(v1 + 8) = 0x80000000007E7D90;
  *(v1 + 16) = sub_56E2E4;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_56AA54()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F298);
  v1 = sub_BE38(v0, qword_99F298);
  v2 = sub_56AB30(13.0, 16.0, 18.0, 32.0);
  *v1 = 0x747542726566666FLL;
  *(v1 + 8) = 0xEB000000006E6F74;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t (*sub_56AB30(double a1, double a2, double a3, double a4))()
{
  v8 = sub_7599A0();
  v42 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_95D3A0);
  v43 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v40 - v13;
  sub_BD88(&qword_95AEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_7A52B0;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  v40[1] = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v45 = a1;
  v44 = a2;
  v16 = enum case for TimingCurve.linear(_:);
  v40[0] = *(v9 + 104);
  (v40[0])(v11, enum case for TimingCurve.linear(_:), v8);
  v17 = UIContentSizeCategoryExtraSmall;
  v18 = UIContentSizeCategorySmall;
  sub_759CC0();
  v41 = v12;
  sub_759CB0();
  v20 = v43 + 8;
  v19 = *(v43 + 8);
  v19(v14, v12);
  v43 = v20;
  *(inited + 56) = round(v45);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v45 = a1;
  v44 = a2;
  v21 = v16;
  v22 = v16;
  v23 = v42;
  v24 = v40[0];
  (v40[0])(v11, v21, v42);
  v25 = UIContentSizeCategoryMedium;
  sub_759CC0();
  v26 = v41;
  sub_759CB0();
  v19(v14, v26);
  *(inited + 72) = round(v45);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v45 = a2;
  v44 = a3;
  v24(v11, v22, v23);
  v27 = UIContentSizeCategoryLarge;
  v28 = UIContentSizeCategoryExtraLarge;
  sub_759CC0();
  v29 = v41;
  sub_759CB0();
  v19(v14, v29);
  *(inited + 104) = round(v45);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v45 = a2;
  v44 = a3;
  v24(v11, v22, v42);
  v30 = UIContentSizeCategoryExtraExtraLarge;
  sub_759CC0();
  sub_759CB0();
  v19(v14, v29);
  *(inited + 120) = round(v45);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  *(inited + 152) = a4;
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  *(inited + 168) = a4;
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  *(inited + 184) = a4;
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  *(inited + 200) = a4;
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  v31 = UIContentSizeCategoryExtraExtraExtraLarge;
  v32 = UIContentSizeCategoryAccessibilityMedium;
  v33 = UIContentSizeCategoryAccessibilityLarge;
  v34 = UIContentSizeCategoryAccessibilityExtraLarge;
  v35 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v36 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v37 = sub_10CE38(inited);
  swift_setDeallocating();
  sub_BD88(&qword_95AEE8);
  swift_arrayDestroy();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = a2;
  return sub_56E2E8;
}

uint64_t sub_56B0D8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F2B0);
  v1 = sub_BE38(v0, qword_99F2B0);
  v2 = sub_56AB30(12.0, 13.0, 16.0, 26.0);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000000007E7EC0;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_56B1B4()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F2C8);
  v1 = sub_BE38(v0, qword_99F2C8);
  v2 = sub_56AB30(14.0, 17.0, 19.0, 33.0);
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x80000000007E7EA0;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_56B298()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F2E0);
  v1 = sub_BE38(v0, qword_99F2E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A52C0;
  strcpy(v1, "inAppPurchase");
  *(v1 + 14) = -4864;
  *(v1 + 16) = sub_56DF24;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightRegular;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_56B3A8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F310);
  v1 = sub_BE38(v0, qword_99F310);
  v2 = sub_56B484(14.0, 17.0, 23.0, 23.0);
  *v1 = 0xD000000000000011;
  *(v1 + 8) = 0x80000000007E7E10;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t (*sub_56B484(double a1, double a2, double a3, double a4))()
{
  v8 = sub_7599A0();
  v48 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_95D3A0);
  v49 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  sub_BD88(&qword_95AEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_7A52B0;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  v46 = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v54 = a1;
  v53 = a2;
  v16 = enum case for TimingCurve.linear(_:);
  v17 = *(v9 + 104);
  v51 = enum case for TimingCurve.linear(_:);
  v17(v11, enum case for TimingCurve.linear(_:), v8);
  v18 = UIContentSizeCategoryExtraSmall;
  v19 = UIContentSizeCategorySmall;
  sub_759CC0();
  v47 = v12;
  sub_759CB0();
  v21 = v49 + 8;
  v20 = *(v49 + 8);
  v20(v14, v12);
  *(inited + 56) = round(v54);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v54 = a1;
  v53 = a2;
  v22 = v16;
  v23 = v48;
  v50 = v9 + 104;
  v17(v11, v22, v48);
  v52 = v17;
  v24 = UIContentSizeCategoryMedium;
  sub_759CC0();
  v25 = v47;
  sub_759CB0();
  v20(v14, v25);
  *(inited + 72) = round(v54);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v54 = a2;
  v53 = a3;
  v17(v11, v51, v23);
  v26 = UIContentSizeCategoryLarge;
  v27 = UIContentSizeCategoryExtraLarge;
  sub_759CC0();
  v28 = v47;
  sub_759CB0();
  v49 = v21;
  v45 = v20;
  v20(v14, v28);
  *(inited + 104) = round(v54);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v54 = a2;
  v53 = a3;
  v29 = v51;
  v52(v11, v51, v23);
  v30 = UIContentSizeCategoryExtraExtraLarge;
  sub_759CC0();
  sub_759CB0();
  v20(v14, v28);
  *(inited + 120) = round(v54);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  v54 = a3;
  v53 = a4;
  v52(v11, v29, v23);
  v31 = UIContentSizeCategoryExtraExtraExtraLarge;
  v32 = UIContentSizeCategoryAccessibilityMedium;
  sub_759CC0();
  sub_759CB0();
  v33 = v45;
  v45(v14, v28);
  *(inited + 152) = round(v54);
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  v54 = a3;
  v53 = a4;
  v34 = v48;
  v52(v11, v29, v48);
  v35 = UIContentSizeCategoryAccessibilityLarge;
  sub_759CC0();
  sub_759CB0();
  v36 = v33;
  v33(v14, v28);
  *(inited + 168) = round(v54);
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  v54 = a3;
  v53 = a4;
  v37 = v52;
  v52(v11, v29, v34);
  v38 = UIContentSizeCategoryAccessibilityExtraLarge;
  sub_759CC0();
  sub_759CB0();
  v36(v14, v28);
  *(inited + 184) = round(v54);
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v54 = a3;
  v53 = a4;
  v37(v11, v51, v34);
  v39 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  sub_759CC0();
  sub_759CB0();
  v36(v14, v28);
  *(inited + 200) = round(v54);
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  v40 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v41 = sub_10CE38(inited);
  swift_setDeallocating();
  sub_BD88(&qword_95AEE8);
  swift_arrayDestroy();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = a2;
  return sub_56E008;
}

uint64_t sub_56BCB4()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F340);
  v1 = sub_BE38(v0, qword_99F340);
  v2 = sub_56B484(13.0, 15.0, 18.0, 18.0);
  *v1 = 0xD000000000000029;
  *(v1 + 8) = 0x80000000007E7E70;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_56BE38()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F400);
  v1 = sub_BE38(v0, qword_99F400);
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x80000000007E7E50;
  *(v1 + 16) = sub_56BF00;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_56BF00()
{
  v0 = sub_769240();
  v2 = v1;
  if (v0 == sub_769240() && v2 == v3)
  {

    return 13.0;
  }

  else
  {
    v5 = sub_76A950();

    result = 13.0;
    if ((v5 & 1) == 0)
    {
      v7 = sub_769240();
      v9 = v8;
      if (v7 == sub_769240() && v9 == v10)
      {

        return 15.0;
      }

      else
      {
        v12 = sub_76A950();

        result = 15.0;
        if ((v12 & 1) == 0)
        {
          v13 = sub_769240();
          v15 = v14;
          if (v13 == sub_769240() && v15 == v16)
          {

            return 18.0;
          }

          else
          {
            v17 = sub_76A950();

            result = 10.0;
            if (v17)
            {
              return 18.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_56C138()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F4A8);
  v1 = sub_BE38(v0, qword_99F4A8);
  *v1 = 0xD000000000000015;
  *(v1 + 8) = 0x80000000007E7FA0;
  *(v1 + 16) = sub_56C200;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightMedium;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_56C200()
{
  v0 = sub_769240();
  v2 = v1;
  if (v0 == sub_769240() && v2 == v3)
  {

    return 16.0;
  }

  else
  {
    v5 = sub_76A950();

    result = 16.0;
    if ((v5 & 1) == 0)
    {
      v7 = sub_769240();
      v9 = v8;
      if (v7 == sub_769240() && v9 == v10)
      {

        return 18.0;
      }

      else
      {
        v12 = sub_76A950();

        result = 18.0;
        if ((v12 & 1) == 0)
        {
          v13 = sub_769240();
          v15 = v14;
          if (v13 == sub_769240() && v15 == v16)
          {

            return 20.0;
          }

          else
          {
            v17 = sub_76A950();

            result = 14.0;
            if (v17)
            {
              return 20.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_56C3A8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F4C0);
  v1 = sub_BE38(v0, qword_99F4C0);
  *v1 = 0xD00000000000001ALL;
  *(v1 + 8) = 0x80000000007E8050;
  *(v1 + 16) = sub_56C470;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_56C470()
{
  v0 = sub_769240();
  v2 = v1;
  if (v0 == sub_769240() && v2 == v3)
  {

    return 11.0;
  }

  else
  {
    v5 = sub_76A950();

    result = 11.0;
    if ((v5 & 1) == 0)
    {
      v7 = sub_769240();
      v9 = v8;
      if (v7 == sub_769240() && v9 == v10)
      {

        return 13.0;
      }

      else
      {
        v12 = sub_76A950();

        result = 13.0;
        if ((v12 & 1) == 0)
        {
          v13 = sub_769240();
          v15 = v14;
          if (v13 == sub_769240() && v15 == v16)
          {

            return 15.0;
          }

          else
          {
            v17 = sub_76A950();

            result = 9.0;
            if (v17)
            {
              return 15.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_56C618()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F4D8);
  v1 = sub_BE38(v0, qword_99F4D8);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000000007E8070;
  *(v1 + 16) = sub_5695DC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightSemibold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_56C6E0()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F4F0);
  v1 = sub_BE38(v0, qword_99F4F0);
  strcpy(v1, "todayCardTitle");
  *(v1 + 15) = -18;
  *(v1 + 16) = sub_56C7B0;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_56C7B0()
{
  Main = JUScreenClassGetMain();
  result = 28.0;
  if (Main == 1)
  {
    return 26.0;
  }

  return result;
}

uint64_t sub_56C7D8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F508);
  v1 = sub_BE38(v0, qword_99F508);
  *v1 = 0xD000000000000013;
  *(v1 + 8) = 0x80000000007E8030;
  *(v1 + 16) = sub_56C8A0;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_56C8A0()
{
  Main = JUScreenClassGetMain();
  result = 28.0;
  if ((Main - 1) <= 3)
  {
    return dbl_7A52E0[Main - 1];
  }

  return result;
}

uint64_t sub_56C8F0()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F538);
  v1 = sub_BE38(v0, qword_99F538);
  *v1 = 0xD000000000000021;
  *(v1 + 8) = 0x80000000007E7FE0;
  *(v1 + 16) = sub_56C9B8;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_56C9F0(uint64_t a1, uint64_t *a2, unsigned int *a3, int a4)
{
  v7 = sub_765900();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7666D0();
  sub_161DC(v11, a2);
  v12 = sub_BE38(v11, a2);
  (*(v8 + 104))(v10, *a3, v7);
  v13 = sub_7658F0();
  (*(v8 + 8))(v10, v7);
  *v12 = v13;
  *(v12 + 8) = a4;
  return (*(*(v11 - 8) + 104))(v12, enum case for FontUseCase.preferredFont(_:), v11);
}

uint64_t sub_56CC18()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F640);
  v1 = sub_BE38(v0, qword_99F640);
  *v1 = 0xD000000000000012;
  *(v1 + 8) = 0x80000000007E7BE0;
  *(v1 + 16) = sub_56CCE0;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightHeavy;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_56CDFC()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F760);
  v1 = sub_BE38(v0, qword_99F760);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000000007E7F80;
  *(v1 + 16) = sub_17E794;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_56CFDC()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F880);
  v1 = sub_BE38(v0, qword_99F880);
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x80000000007E8090;
  *(v1 + 16) = sub_568970;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_56D258()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99FA18);
  v1 = sub_BE38(v0, qword_99FA18);
  *v1 = 0x756F436C6C616D73;
  *(v1 + 8) = 0xEF6567646142746ELL;
  *(v1 + 16) = sub_56D328;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_56D330()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99FA30);
  v1 = sub_BE38(v0, qword_99FA30);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000000007E7E30;
  *(v1 + 16) = sub_56C9B8;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

id sub_56D6F0(uint64_t a1, uint64_t *a2, id *a3, uint64_t *a4)
{
  v7 = sub_7666D0();
  sub_161DC(v7, a2);
  v8 = sub_BE38(v7, a2);
  v11 = *a3;
  v9 = *a4;
  *v8 = *a3;
  v8[1] = v9;
  (*(*(v7 - 8) + 104))();

  return v11;
}

uint64_t sub_56D7A8()
{
  v0 = sub_7573C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757390();
  v4 = sub_757320();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_7658E0();
  }

  else
  {
    return sub_7658F0();
  }
}

double sub_56D890(uint64_t a1, uint64_t a2, double a3)
{
  v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a2];
  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a1];
  [v5 scaledValueForValue:v6 compatibleWithTraitCollection:a3];
  v8 = v7;

  return v8;
}

double sub_56D930(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_769240();
  v8 = v7;
  if (v6 == sub_769240() && v8 == v9)
  {
    goto LABEL_13;
  }

  v11 = sub_76A950();

  if (v11)
  {
    return a3;
  }

  v12 = sub_769240();
  v14 = v13;
  if (v12 == sub_769240() && v14 == v15)
  {
    goto LABEL_13;
  }

  v17 = sub_76A950();

  if (v17)
  {
    return a3;
  }

  v18 = sub_769240();
  v20 = v19;
  if (v18 == sub_769240() && v20 == v21)
  {
    goto LABEL_13;
  }

  v23 = sub_76A950();

  if (v23)
  {
    return a3;
  }

  v24 = sub_769240();
  v26 = v25;
  if (v24 == sub_769240() && v26 == v27)
  {
    goto LABEL_13;
  }

  v28 = sub_76A950();

  if (v28)
  {
    return a3;
  }

  v29 = sub_769240();
  v31 = v30;
  if (v29 == sub_769240() && v31 == v32)
  {
    goto LABEL_13;
  }

  v33 = sub_76A950();

  if (v33)
  {
    return a3;
  }

  v34 = sub_769240();
  v36 = v35;
  if (v34 == sub_769240() && v36 == v37)
  {
    goto LABEL_13;
  }

  v38 = sub_76A950();

  if (v38)
  {
    return a3;
  }

  v39 = sub_769240();
  v41 = v40;
  if (v39 == sub_769240() && v41 == v42)
  {
LABEL_13:

    return a3;
  }

  v43 = sub_76A950();

  if ((v43 & 1) == 0)
  {
    v44 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a2];
    v45 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a1];
    v48.is_nil = UIContentSizeCategoryAccessibilityExtraLarge;
    v48.value._rawValue = 0;
    isa = sub_7699C0(v48, v49).super.isa;

    [v44 scaledValueForValue:isa compatibleWithTraitCollection:a3];
    a3 = v47;
  }

  return a3;
}

double sub_56DCC4(double a1, double a2)
{
  v4 = sub_769240();
  v6 = v5;
  if (v4 == sub_769240() && v6 == v7)
  {
    goto LABEL_13;
  }

  v9 = sub_76A950();

  if (v9)
  {
    return a1;
  }

  v10 = sub_769240();
  v12 = v11;
  if (v10 == sub_769240() && v12 == v13)
  {
    goto LABEL_13;
  }

  v15 = sub_76A950();

  if (v15)
  {
    return a1;
  }

  v16 = sub_769240();
  v18 = v17;
  if (v16 == sub_769240() && v18 == v19)
  {
    goto LABEL_13;
  }

  v21 = sub_76A950();

  if (v21)
  {
    return a1;
  }

  v22 = sub_769240();
  v24 = v23;
  if (v22 == sub_769240() && v24 == v25)
  {
    goto LABEL_13;
  }

  v26 = sub_76A950();

  if (v26)
  {
    return a1;
  }

  v27 = sub_769240();
  v29 = v28;
  if (v27 == sub_769240() && v29 == v30)
  {
LABEL_13:

    return a1;
  }

  v31 = sub_76A950();

  if ((v31 & 1) == 0)
  {
    return a2;
  }

  return a1;
}

uint64_t sub_56DF2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_56DF74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_56DFD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_56E00C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v4 = sub_66523C();
    if (v5)
    {
      return *(*(v2 + 56) + 8 * v4);
    }
  }

  return v3;
}

uint64_t sub_56E05C()
{
  v1 = sub_765900();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_56E0E4()
{
  sub_765900();

  return sub_56D7A8();
}

UIContentSizeCategory sub_56E144(uint64_t a1)
{
  v2 = sub_769240();
  v4 = v3;
  if (v2 == sub_769240() && v4 == v5)
  {
    goto LABEL_13;
  }

  v7 = sub_76A950();

  if ((v7 & 1) == 0)
  {
    v8 = sub_769240();
    v10 = v9;
    if (v8 == sub_769240() && v10 == v11)
    {
      goto LABEL_13;
    }

    v13 = sub_76A950();

    if ((v13 & 1) == 0)
    {
      v14 = sub_769240();
      v16 = v15;
      if (v14 == sub_769240() && v16 == v17)
      {
LABEL_13:

        return a1;
      }

      v19 = sub_76A950();

      if ((v19 & 1) == 0)
      {
        return UIContentSizeCategoryMedium;
      }
    }
  }

  return a1;
}

void sub_56E2F4(void *a1)
{
  v16 = [*(v1 + 16) view];
  if (v16)
  {
    [a1 _systemContentInset];
    v4 = v3;
    v6 = v5;
    [a1 contentOffset];
    v8 = v7;
    v10 = v9;
    [a1 contentInset];
    v12 = v6 + v8 + v11;
    v14 = v4 + v10 + v13;
    [a1 bounds];
    [v16 setFrame:{sub_56E3E0(v12, v14, v15)}];
  }

  else
  {
    __break(1u);
  }
}

double sub_56E3E0(double a1, double a2, double a3)
{
  v5 = *(v3 + 16);
  v6 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
  if (v6)
  {
    v7 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8);
    v8 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
  }

  else
  {
    v7 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8);
    v8 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell);
    v6 = 0;
  }

  v9 = v6;
  sub_311270(a3, v8, v7);

  type metadata accessor for ListTodayCardCollectionViewCell();
  swift_dynamicCastClass();
  return 0.0;
}

uint64_t sub_56E504()
{

  return swift_deallocClassInstance();
}

uint64_t sub_56E56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Shelf.ContentType.singleColumnList(_:) || v12 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v14 = &qword_95B078;
    v15 = sub_BD88(&qword_95B078);
    sub_16194(&qword_95B080, &qword_95B078);
    sub_16194(&qword_95B088, &qword_95B078);
    v16 = &unk_95B090;
  }

  else
  {
    if (v12 != enum case for Shelf.ContentType.scrollablePill(_:))
    {
      v15 = sub_24DB68(a1, a2);
      (*(v5 + 8))(v7, v4);
      return v15;
    }

    v14 = &qword_95B058;
    v15 = sub_BD88(&qword_95B058);
    sub_16194(&qword_95B060, &qword_95B058);
    sub_16194(&qword_95B068, &qword_95B058);
    v16 = &unk_95B070;
  }

  sub_16194(v16, v14);
  return v15;
}

id sub_56E900()
{
  type metadata accessor for BundleImage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_95B098 = result;
  return result;
}

id sub_56E958(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_93DC58 != -1)
  {
    swift_once();
  }

  v6 = qword_95B098;
  v7 = a3;
  v8 = sub_769210();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v6 withConfiguration:v7];

  result = v9;
  if (!v9)
  {
    if (qword_93DEF0 != -1)
    {
      swift_once();
    }

    v11 = sub_768FF0();
    sub_BE38(v11, qword_9A0400);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    v15 = &type metadata for String;
    v13 = a1;
    v14 = a2;

    sub_7685E0();
    sub_10A2C(&v13, &unk_93FBD0);
    sub_768EA0();

    v12 = objc_allocWithZone(UIImage);
    return [v12 init];
  }

  return result;
}

id sub_56EBA8(uint64_t a1, objc_class *a2)
{
  v22 = a2;
  v2 = sub_765120();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_7570A0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765380();
  sub_765110();
  (*(v3 + 8))(v5, v2);
  sub_757090();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10A2C(v8, &unk_93FD30);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = sub_757070();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      if (sub_765180())
      {
        v17.value.super.super.isa = v22;
        v18 = sub_765170(v17);
        v19 = sub_56E958(v16, v15, v18);

        (*(v10 + 8))(v12, v9);
        return v19;
      }

      (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  return 0;
}

UIImage *_sSo7UIImageC18ASMessagesProviderE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(void *a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v11.width = 1.0;
  v11.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v4);
  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [a1 CGColor];
    CGContextSetFillColorWithColor(v7, v8);

    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 1.0;
    v12.size.height = 1.0;
    CGContextFillRect(v7, v12);
  }

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

double sub_56EFFC(uint64_t a1)
{
  v57 = sub_75EAC0();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v3 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75EAE0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_762D10();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7656C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AB70();
  sub_56F8AC(&qword_953EE8, &type metadata accessor for EditorialQuote);
  sub_75C750();
  v14 = v64[0];
  if (!v64[0])
  {
    return 0.0;
  }

  v50 = v3;
  v51 = v7;
  v52 = v5;
  v53 = v4;
  swift_getKeyPath();
  v15 = v14;
  sub_75C7B0();

  sub_765630();
  (*(v11 + 8))(v13, v10);
  swift_getKeyPath();
  sub_75C7B0();

  v16 = v64[0];
  v17 = sub_7699D0();

  if (v17)
  {
    v18 = 4;
  }

  else
  {
    v18 = 1;
  }

  v47 = sub_75AB60();
  v46 = v19;
  v20 = sub_26F08();
  if (qword_93CE38 != -1)
  {
    swift_once();
  }

  v21 = sub_7666D0();
  sub_BE38(v21, qword_99D4F8);
  swift_getKeyPath();
  sub_75C7B0();

  sub_769E00();
  swift_unknownObjectRelease();
  v22 = sub_7653B0();
  v65 = v22;
  v49 = sub_56F8AC(&qword_93F9B0, &type metadata accessor for Feature);
  v66 = v49;
  v23 = sub_B1B4(v64);
  v24 = *(v22 - 8);
  v45[1] = v20;
  v25 = *(v24 + 104);
  v48 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v25(v23);
  sub_765C30();
  v58 = a1;
  sub_BEB8(v64);
  sub_762D00();
  sub_762CE0();
  v47 = v18;
  v26 = *(v54 + 8);
  v27 = v55;
  v26(v9, v55);
  v54 = v15;
  v46 = sub_75AB50();
  v45[0] = v28;
  if (qword_93CE40 != -1)
  {
    swift_once();
  }

  sub_BE38(v21, qword_99D510);
  swift_getKeyPath();
  sub_75C7B0();

  sub_769E00();
  swift_unknownObjectRelease();
  v62 = v22;
  v63 = v49;
  v29 = sub_B1B4(v61);
  (v25)(v29, v48, v22);
  sub_765C30();
  sub_BEB8(v61);
  sub_762D00();
  sub_762CE0();
  v26(v9, v27);
  if (qword_93CE30 != -1)
  {
    swift_once();
  }

  v30 = v57;
  v31 = sub_BE38(v57, qword_99D4E0);
  (*(v56 + 16))(v50, v31, v30);
  v32 = v65;
  v33 = v66;
  v34 = sub_B170(v64, v65);
  v60[3] = v32;
  v60[4] = *(v33 + 8);
  v35 = sub_B1B4(v60);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = v62;
  v37 = v63;
  v38 = sub_B170(v61, v62);
  v59[3] = v36;
  v59[4] = *(v37 + 8);
  v39 = sub_B1B4(v59);
  (*(*(v36 - 8) + 16))(v39, v38, v36);
  v40 = v51;
  sub_75EAD0();
  swift_getKeyPath();
  sub_75C7B0();

  sub_56F8AC(&unk_9513F0, &type metadata accessor for EditorialQuoteLayout);
  v41 = v53;
  sub_7665A0();
  v43 = v42;
  swift_unknownObjectRelease();

  (*(v52 + 8))(v40, v41);
  sub_BEB8(v61);
  sub_BEB8(v64);
  return v43;
}

uint64_t sub_56F8AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_56F8F4(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media) = result;
  if (result)
  {
    v6 = result;
    if (v3)
    {
      v5 = v3;
      sub_759DF0();
      sub_5752F8(&qword_95B248, &type metadata accessor for ProductMedia);
      swift_retain_n();
      v4 = sub_7691C0();

      if (v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    [*(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView) reloadData];
LABEL_9:
  }

  if (v3)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_56FA00(uint64_t a1)
{
  if (a1)
  {
    sub_761120();
    sub_768900();

    sub_768ED0();
    sub_7624B0();
    swift_allocObject();
    v2 = v6;
    sub_7624C0();
    sub_75FA30();
  }

  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph])
  {
    sub_761120();
    sub_768900();

    sub_768ED0();
    v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_compoundScrollObserver];
    sub_7624B0();
    swift_allocObject();
    v4 = v6;
    sub_7624C0();
    sub_75FA40();

    v5 = [v1 window];
    if (v5)
    {

      [v3 scrollViewDidScroll:*&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView]];
    }
  }
}

uint64_t sub_56FBC8()
{
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v0 = sub_766CA0();
  v1 = sub_BE38(v0, qword_99FE00);
  qword_95B168 = v0;
  unk_95B170 = &protocol witness table for StaticDimension;
  v2 = sub_B1B4(qword_95B150);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_56FCC0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_flowLayout;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_compoundScrollObserver;
  v13 = objc_allocWithZone(sub_75FA60());
  *&v4[v12] = sub_75FA50();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits] = 0;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_itemLayoutContext;
  v15 = sub_75C840();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysTopAccessoryDivider] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryDividerView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryDividerView] = 0;
  v16 = &v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotSelectionHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v5[v11] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView] = v17;
  v36.receiver = v5;
  v36.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v20 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView;
  [*&v18[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v21 = *&v18[v20];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor:v24];

  [*&v18[v20] setAllowsSelection:1];
  [*&v18[v20] setAlwaysBounceHorizontal:1];
  [*&v18[v20] setShowsHorizontalScrollIndicator:0];
  [*&v18[v20] setDataSource:v18];
  v25 = *&v18[v20];
  [v25 setDelegate:v18];

  v26 = *&v18[v20];
  type metadata accessor for VideoCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = v26;
  sub_769BD0();
  v29 = sub_769210();

  [v28 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v29];

  v30 = *&v18[v20];
  type metadata accessor for ScreenshotCollectionViewCell();
  v31 = swift_getObjCClassFromMetadata();
  v32 = v30;
  sub_769BD0();
  v33 = sub_769210();

  [v32 registerClass:v31 forCellWithReuseIdentifier:v33];

  v34 = [v18 contentView];
  [v34 addSubview:*&v18[v20]];

  return v18;
}

id sub_570138()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v92 = COERCE_DOUBLE(type metadata accessor for DividerView.Style(0));
  __chkstk_darwin(v92);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104.receiver = v1;
  v104.super_class = ObjectType;
  objc_msgSendSuper2(&v104, "layoutSubviews", v7);
  v10 = [v1 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v100 = v17;

  v91 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView];
  v101 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  if (v18)
  {
    v22 = v18;
    [v22 frame];
    v19 = v23;
    v20 = v24;
    if (qword_93DC78 != -1)
    {
      swift_once();
    }

    sub_B170(qword_99FD00, qword_99FD18);
    sub_33964();
    sub_766700();
    v21 = v25;

    (*(v6 + 8))(v9, v5);
  }

  v94 = v20;
  v90 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
  v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView];
  v103 = 0.0;
  v27 = 0.0;
  if (v26)
  {
    v28 = v26;
    [v28 frame];
    v101 = v29;
    v103 = v30;
    if (qword_93DC70 != -1)
    {
      swift_once();
    }

    sub_B170(qword_95B1A0, qword_95B1B8);
    sub_33964();
    sub_766700();
    v27 = v31;

    (*(v6 + 8))(v9, v5);
  }

  v86 = v19;
  v95 = v27;
  v89 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryDividerView;
  v32 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryDividerView];
  v33 = 0.0;
  v99 = 0.0;
  v34 = 0.0;
  MinY = 0.0;
  v36 = 0.0;
  if (v32)
  {
    v37 = OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style;
    swift_beginAccess();
    sub_395C4(v32 + v37, v4);
    v38 = qword_93D2C8;
    v39 = v32;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = floor(*&qword_99E200);
    sub_766470();
    sub_766CA0();
    sub_766700();
    v42 = v41;
    (*(v6 + 8))(v9, v5);
    v36 = v40 + v42;
    sub_572EE0(v4, type metadata accessor for DividerView.Style);
    v105.origin.x = v12;
    v105.origin.y = v14;
    v105.size.width = v16;
    v43 = v100;
    v105.size.height = v100;
    v34 = CGRectGetMaxX(v105) - v16;
    v106.origin.x = v12;
    v106.origin.y = v14;
    v106.size.width = v16;
    v106.size.height = v43;
    MinY = CGRectGetMinY(v106);

    v33 = v16;
  }

  v93 = v33;
  v102 = MinY;
  v44 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryDividerView;
  v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryDividerView];
  v97 = 0.0;
  v96 = 0.0;
  v98 = 0.0;
  if (v45)
  {
    v46 = OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style;
    swift_beginAccess();
    sub_395C4(v45 + v46, v4);
    v47 = qword_93D2C8;
    v48 = v45;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = floor(*&qword_99E200);
    sub_766470();
    sub_766CA0();
    sub_766700();
    v51 = v50;
    (*(v6 + 8))(v9, v5);
    v52 = v49 + v51;
    sub_572EE0(v4, type metadata accessor for DividerView.Style);
    v107.origin.x = v12;
    v107.origin.y = v14;
    v107.size.width = v16;
    v53 = v100;
    v107.size.height = v100;
    v99 = CGRectGetMaxX(v107) - v16;
    v108.origin.x = v12;
    v108.origin.y = v14;
    v108.size.width = v16;
    v108.size.height = v53;
    MaxY = CGRectGetMaxY(v108);

    v98 = v52;
    v97 = MaxY - ceil(v52);
    v96 = v16;
  }

  *&v92 = v16;
  v55 = v14;
  v56 = v90;
  if (*&v1[v90])
  {
    v57 = v12;
    if (qword_93DC60 != -1)
    {
      swift_once();
    }

    sub_B170(qword_95B150, qword_95B168);
    sub_33964();
    sub_766700();
    v59 = v58;
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v57 = v12;
    v59 = 0.0;
  }

  if (qword_93DC68 != -1)
  {
    swift_once();
  }

  sub_B170(qword_95B178, qword_95B190);
  sub_33964();
  sub_766700();
  v61 = v60;
  (*(v6 + 8))(v9, v5);
  v87 = v59;
  v85 = v21;
  v62 = v94 + v103 + v21 + v95 + v59 + v61;
  v63 = v34;
  v109.origin.x = v34;
  v109.origin.y = v102;
  v64 = v93;
  v109.size.width = v93;
  v65 = v36;
  v109.size.height = v36;
  v66 = CGRectGetHeight(v109) + v62;
  v110.origin.x = v99;
  v110.origin.y = v97;
  v110.size.width = v96;
  v110.size.height = v98;
  v88 = CGRectGetHeight(v110) + v66;
  v111.origin.x = v57;
  v111.origin.y = v55;
  v67 = *&v92;
  *&v111.size.width = v92;
  v68 = v100;
  v111.size.height = v100;
  MinX = CGRectGetMinX(v111);
  v83 = v63;
  v112.origin.x = v63;
  v112.origin.y = v102;
  v112.size.width = v64;
  v84 = v65;
  v112.size.height = v65;
  v70 = v87 + CGRectGetMaxY(v112);
  v113.origin.x = v57;
  v113.origin.y = v55;
  v113.size.width = v67;
  v113.size.height = v68;
  v71 = CGRectGetMinX(v113);
  v87 = MinX;
  v114.origin.x = MinX;
  v82 = v70;
  v114.origin.y = v70;
  v114.size.width = v101;
  v114.size.height = v103;
  v72 = v95 + CGRectGetMaxY(v114);
  v115.origin.x = v57;
  v115.origin.y = v55;
  v115.size.width = v67;
  v115.size.height = v68;
  Width = CGRectGetWidth(v115);
  v116.origin.x = v57;
  v116.origin.y = v55;
  v116.size.width = v67;
  v116.size.height = v68;
  v74 = CGRectGetHeight(v116) - v88;
  v117.origin.x = v57;
  v117.origin.y = v55;
  v117.size.width = v67;
  v117.size.height = v68;
  v75 = CGRectGetMinX(v117);
  v118.origin.x = v71;
  v118.origin.y = v72;
  v118.size.width = Width;
  v118.size.height = v74;
  v76 = CGRectGetMaxY(v118);
  v77 = *&v1[v89];
  if (v77)
  {
    [v77 setFrame:{v83, v102, v93, v84}];
  }

  v78 = *&v1[v56];
  if (v78)
  {
    [v78 setFrame:{v87, v82, v101, v103}];
  }

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView] setFrame:{v71, v72, Width, v74}];
  v79 = *&v1[v91];
  if (v79)
  {
    [v79 setFrame:{v75, v85 + v76, v86, v94}];
  }

  result = *&v1[v44];
  if (result)
  {
    return [result setFrame:{v99, v97, v96, v98}];
  }

  return result;
}

void sub_570B94(void *a1, uint64_t *a2)
{
  if (*(v2 + *a1) == 1)
  {
    v4 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *a2;
    v6 = *(v2 + *a2);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v2 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v2 + v5) = v4;
    v11 = v4;

    sub_570CA4(a2);
  }

  else
  {
    v8 = *a2;
    v9 = *(v2 + *a2);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v2 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v2 + v8) = 0;

    sub_570CA4(a2);
  }
}

id sub_570CA4(void *a1)
{
  v3 = type metadata accessor for DividerView.Style(0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[*a1];
  if (!v7)
  {
    return [v1 setNeedsLayout];
  }

  v8 = qword_93D2D8;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v3, qword_99E220);
  sub_395C4(v10, v6);
  v11 = &v9[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style];
  swift_beginAccess();
  sub_39628(v6, v11);
  swift_endAccess();
  v12 = &v9[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v13 = *(v11 + 1);
  *v12 = *v11;
  *(v12 + 1) = v13;
  [v9 setNeedsLayout];
  [v9 setNeedsLayout];
  sub_572EE0(v6, type metadata accessor for DividerView.Style);
  result = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits];
  if (result)
  {
    [result pageMarginInsets];
    *v12 = v15;
    *(v12 + 1) = v16;
    *(v12 + 2) = v17;
    *(v12 + 3) = v18;
    [v9 setNeedsLayout];
    v19 = [v1 contentView];
    [v19 addSubview:v9];

    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

unint64_t sub_570ECC(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media))
  {
LABEL_9:
    type metadata accessor for VideoCollectionViewCell();
    sub_769BD0();
    v10 = sub_769210();

    isa = sub_757550().super.isa;
    v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

    return v12;
  }

  v3 = sub_759DD0();
  result = sub_7575C0();
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_76A770();
    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_6:

    v5 = sub_75BEA0();

    if (v5)
    {

      type metadata accessor for ScreenshotCollectionViewCell();
      sub_769BD0();
      v6 = sub_769210();

      v7 = sub_757550().super.isa;
      v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v7];

      v9 = swift_dynamicCastClassUnconditional();
      *(*(v9 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform) = sub_759DE0();

      sub_4FD578();

      return v9;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_571340(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_757640();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_57145C(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  v3 = sub_759DD0();

  v4 = sub_7575C0();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  sub_76A770();
LABEL_6:

  v5 = sub_75BEA0();
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotSelectionHandler);
    if (v7)
    {

      v8 = sub_7575C0();
      v7(v6, v8);
      sub_F704(v7);
    }

    isa = sub_757550().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:1];
  }

  else
  {
  }
}

uint64_t type metadata accessor for ProductMediaCollectionViewCell()
{
  result = qword_95B230;
  if (!qword_95B230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_57194C()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_571A34(uint64_t a1, int a2, int a3, void *a4, double a5, double a6, double a7, double a8, double a9)
{
  v159 = a9;
  v149 = a8;
  v145 = a3;
  v144 = a2;
  v143 = sub_76A920();
  v146 = *(v143 - 8);
  __chkstk_darwin(v143);
  v15 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = COERCE_DOUBLE(sub_758720());
  v141 = *(*&v142 - 8);
  __chkstk_darwin(*&v142);
  v150 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_766690();
  v154 = *(v17 - 8);
  __chkstk_darwin(v17);
  ObjectType = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v151 = &v141 - v20;
  __chkstk_darwin(v21);
  v23 = &v141 - v22;
  __chkstk_darwin(v24);
  v26 = &v141 - v25;
  v27 = sub_BD88(&unk_948720);
  __chkstk_darwin(v27 - 8);
  v156 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v161 = &v141 - v30;
  __chkstk_darwin(v31);
  v162 = &v141 - v32;
  v33 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v33 - 8);
  v147 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_759DE0();
  v153 = a1;
  v35 = sub_759DD0();
  v36 = v35;
  if (v35 >> 62)
  {
LABEL_106:
    v37 = sub_76A860();
  }

  else
  {
    v37 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
  }

  *&v164 = v26;
  v148 = v15;
  v163 = v23;
  v157 = a4;
  if (v37)
  {
    v26 = 0;
    v158 = (v36 & 0xC000000000000001);
    a4 = (v36 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v158)
      {
        sub_76A770();
        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v26 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_106;
        }

        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_16;
        }
      }

      if (sub_75BEA0())
      {
        v38 = sub_7650D0();

        if (v38)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!sub_75BEB0())
        {

          v155 = 1;
          a4 = v157;
          v15 = v148;
          goto LABEL_21;
        }

        sub_764BC0();
        v40 = sub_7650D0();

        v15 = v148;
        if (v40)
        {
LABEL_18:
          v155 = 1;
          a4 = v157;
LABEL_21:
          v23 = v163;
          goto LABEL_22;
        }
      }

      ++v26;
      v23 = v163;
      if (v39 == v37)
      {
        v155 = 0;
        a4 = v157;
        goto LABEL_22;
      }
    }
  }

  v155 = 0;
LABEL_22:

  sub_7596B0();

  sub_6C14C(v41, v147);

  v42 = sub_759DD0();
  if (v42 >> 62)
  {
    v37 = v42;
    v43 = sub_76A860();
  }

  else
  {
    v43 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
  }

  v44 = v154;

  if (v43 >= 1)
  {
    v45 = sub_759DD0();
    v46 = v45;
    if (v45 >> 62)
    {
      v43 = v45;
      v110 = sub_76A860();
      v46 = v43;
      v47 = v110;
      if (v110)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v47 = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8));
      if (v47)
      {
LABEL_27:
        if (v47 >= 1)
        {
          v141 = a5;
          v142 = a6;
          v48 = v46;
          ObjectType = swift_getObjectType();
          v49 = 0;
          v151 = (v48 & 0xC000000000000001);
          v50 = (v44 + 56);
          v51 = 0.0;
          v158 = (v44 + 32);
          v52 = (v44 + 48);
          v150 = (v44 + 16);
          v53 = (v44 + 8);
          v154 = v48;
          v153 = v47;
          do
          {
            if (v151)
            {
              sub_76A770();
            }

            else
            {
            }

            if (sub_75BEA0())
            {
              sub_765260();
              v57 = v161;
              sub_7666A0();

              v58 = *v50;
              (*v50)(v57, 0, 1, v17);
              v59 = v162;
              (*v158)();
              v58(v59, 0, 1, v17);
            }

            else
            {
              v60 = *v50;
              v61 = 1;
              (*v50)(v161, 1, 1, v17);
              if (sub_75BEB0())
              {
                sub_764BC0();

                sub_765260();
                v59 = v162;
                sub_7666A0();

                v61 = 0;
              }

              else
              {
                v59 = v162;
              }

              v60(v59, v61, 1, v17);
              v62 = (*v52)(v161, 1, v17);
              v23 = v163;
              if (v62 != 1)
              {
                sub_10A2C(v161, &unk_948720);
              }
            }

            v63 = sub_75A310();
            v64 = v59;
            v65 = v156;
            sub_29A8E8(v64, v156);
            v66 = *v52;
            if ((*v52)(v65, 1, v17) == 1)
            {
              sub_7666A0();
              if (v66(v65, 1, v17) != 1)
              {
                sub_10A2C(v65, &unk_948720);
              }
            }

            else
            {
              (*v158)(v164, v65, v17);
            }

            v67 = v157;
            if ((v155 & v63) != 0)
            {
              v68 = v164;
              if (sub_7665E0())
              {
                (*v150)(v23, v68, v17);
              }

              else
              {
                sub_766620();
              }

              v69 = 1;
            }

            else
            {
              (*v150)(v23, v164, v17);
              v69 = sub_7665E0();
            }

            v70 = [v67 traitCollection];
            v71 = sub_7699B0();

            if (v71)
            {
              if (v149 >= a7)
              {
                JUScreenClassGetPortraitWidth();
                v72 = 4.0;
                v73 = 2.0;
                v23 = v163;
                if (v85 < a7)
                {
                  JUScreenClassGetPortraitWidth();
                  if (v86 < a7)
                  {
                    v72 = 5.0;
                  }

                  else
                  {
                    v72 = 4.0;
                  }
                }
              }

              else
              {
                JUScreenClassGetLandscapeWidth();
                v72 = 5.0;
                v73 = 2.0;
                v23 = v163;
                if (v74 < a7)
                {
                  JUScreenClassGetLandscapeWidth();
                  if (v75 < a7)
                  {
                    v72 = 6.0;
                  }

                  else
                  {
                    v72 = 5.0;
                  }
                }
              }
            }

            else
            {
              if (v69)
              {
                v73 = 2.0;
              }

              else
              {
                v73 = 1.0;
              }

              if (v69)
              {
                v72 = 3.0;
              }

              else
              {
                v72 = 1.0;
              }

              v23 = v163;
            }

            [v67 pageMarginInsets];
            v77 = v76;
            [v67 pageMarginInsets];
            v79 = v77 + v78;
            PageTraitEnvironment.pageColumnMargin.getter();
            v81 = (v73 + -1.0) * v80 + v73 / v72 * (v159 - (v79 + (v72 + -1.0) * v80));
            v82 = [v67 traitCollection];
            v83 = sub_7699B0();

            if ((v83 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_766650(), v81 < v84))
            {
              sub_766660();
            }

            ++v49;
            sub_766660();
            v55 = v54;

            v56 = *v53;
            (*v53)(v23, v17);
            v56(v164, v17);
            sub_10A2C(v162, &unk_948720);
            if (v55 > v51)
            {
              v51 = v55;
            }
          }

          while (v153 != v49);

          v15 = v148;
          a6 = v142;
          a5 = v141;
          goto LABEL_110;
        }

        __break(1u);
        goto LABEL_141;
      }
    }

    v51 = 0.0;
    goto LABEL_110;
  }

  v87 = v150;
  sub_75A300();
  v88 = v141;
  v89 = v142;
  v90 = (*(*&v141 + 88))(v87, COERCE_DOUBLE(*&v142));
  v43 = ObjectType;
  v37 = v151;
  if (v90 == enum case for AppPlatform.phone(_:) || v90 == enum case for AppPlatform.pad(_:) || v90 == enum case for AppPlatform.messages(_:))
  {
    goto LABEL_77;
  }

  if (v90 == enum case for AppPlatform.watch(_:))
  {
    if (qword_93C250 == -1)
    {
LABEL_86:
      v92 = sub_BE38(v17, qword_99A2D8);
      (*(v44 + 16))(v37, v92, v17);
      goto LABEL_78;
    }

LABEL_141:
    swift_once();
    goto LABEL_86;
  }

  if (v90 == enum case for AppPlatform.tv(_:) || v90 == enum case for AppPlatform.mac(_:))
  {
LABEL_77:
    sub_7666A0();
    goto LABEL_78;
  }

  sub_7666A0();
  (*(*&v88 + 8))(v150, COERCE_DOUBLE(*&v89));
LABEL_78:
  if (sub_75A310() & 1) != 0 && (sub_7665E0())
  {
    if (sub_7665E0())
    {
      (*(v44 + 16))(v43, v37, v17);
    }

    else
    {
      sub_766620();
    }

    v91 = 1;
  }

  else
  {
    (*(v44 + 16))(v43, v37, v17);
    v91 = sub_7665E0();
  }

  swift_getObjectType();
  v93 = [a4 traitCollection];
  v94 = sub_7699B0();

  if (v94)
  {
    v95 = sub_319980(a7, v149);
    v97 = v96;
  }

  else
  {
    if (v91)
    {
      v95 = 2.0;
    }

    else
    {
      v95 = 1.0;
    }

    if (v91)
    {
      v97 = 3.0;
    }

    else
    {
      v97 = 1.0;
    }
  }

  [a4 pageMarginInsets];
  v99 = v98;
  [a4 pageMarginInsets];
  v101 = v99 + v100;
  PageTraitEnvironment.pageColumnMargin.getter();
  v103 = (v95 + -1.0) * v102 + v95 / v97 * (v159 - (v101 + (v97 + -1.0) * v102));
  v104 = [a4 traitCollection];
  v105 = sub_7699B0();

  v106 = ObjectType;
  if ((v105 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_766650(), v103 < v107))
  {
    sub_766660();
  }

  sub_766660();
  v51 = v108;
  v109 = *(v44 + 8);
  v109(v106, v17);
  v109(v151, v17);
LABEL_110:
  sub_BD88(&qword_9419F0);
  inited = swift_initStackObject();
  v164 = xmmword_77B6D0;
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 32) = v51;
  v165 = inited;
  v112 = v143;
  if (a5 >= COERCE_DOUBLE(1))
  {
    v113 = swift_initStackObject();
    *(v113 + 16) = xmmword_77DC20;
    if (qword_93DC60 != -1)
    {
      swift_once();
    }

    sub_B170(qword_95B150, qword_95B168);
    sub_33964();
    sub_766700();
    v115 = v114;
    v116 = *(v146 + 8);
    v116(v15, v112);
    *(v113 + 32) = v115;
    *(v113 + 40) = a5;
    if (qword_93DC70 != -1)
    {
      swift_once();
    }

    sub_B170(qword_95B1A0, qword_95B1B8);
    sub_33964();
    sub_766700();
    v118 = v117;
    v116(v15, v112);
    *(v113 + 48) = v118;
    sub_10A0FC(v113);
  }

  if (a6 >= COERCE_DOUBLE(1))
  {
    v119 = swift_initStackObject();
    *(v119 + 16) = xmmword_77E280;
    *(v119 + 32) = a6;
    if (qword_93DC78 != -1)
    {
      swift_once();
    }

    sub_B170(qword_99FD00, qword_99FD18);
    sub_33964();
    sub_766700();
    v121 = v120;
    (*(v146 + 8))(v15, v112);
    *(v119 + 40) = v121;
    sub_10A0FC(v119);
  }

  v122 = swift_initStackObject();
  *(v122 + 16) = v164;
  if (qword_93DC68 != -1)
  {
    swift_once();
  }

  sub_B170(qword_95B178, qword_95B190);
  swift_getObjectType();
  v123 = v148;
  sub_33964();
  sub_766700();
  v125 = v124;
  (*(v146 + 8))(v123, v112);
  *(v122 + 32) = v125;
  sub_10A0FC(v122);
  v126 = swift_initStackObject();
  *(v126 + 16) = xmmword_77E280;
  v127 = 0.0;
  v128 = 0.0;
  if (v144)
  {
    type metadata accessor for DividerView(0);
    if (qword_93D2D8 != -1)
    {
      swift_once();
    }

    v129 = type metadata accessor for DividerView.Style(0);
    sub_BE38(v129, qword_99E220);
    v128 = sub_50F450();
  }

  *(v126 + 32) = v128;
  if (v145)
  {
    type metadata accessor for DividerView(0);
    if (qword_93D2D8 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for DividerView.Style(0);
    sub_BE38(v130, qword_99E220);
    v127 = sub_50F450();
  }

  *(v126 + 40) = v127;
  sub_10A0FC(v126);
  v131 = *(v165 + 16);
  if (!v131)
  {
    v132 = v147;
    goto LABEL_139;
  }

  v132 = v147;
  if (v131 <= 3)
  {
    v133 = 0;
    v134 = 0.0;
LABEL_137:
    v137 = v131 - v133;
    v138 = (v165 + 8 * v133 + 32);
    do
    {
      v139 = *v138++;
      v134 = v134 + v139;
      --v137;
    }

    while (v137);
    goto LABEL_139;
  }

  v133 = v131 & 0x7FFFFFFFFFFFFFFCLL;
  v135 = (v165 + 48);
  v134 = 0.0;
  v136 = v131 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v134 = v134 + *(v135 - 2) + *(v135 - 1) + *v135 + v135[1];
    v135 += 4;
    v136 -= 4;
  }

  while (v136);
  if (v131 != v133)
  {
    goto LABEL_137;
  }

LABEL_139:
  sub_572EE0(v132, type metadata accessor for ScreenshotDisplayConfiguration);

  return v159;
}

uint64_t sub_572EE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_572F40(uint64_t a1, void *a2, double a3)
{
  v6 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v6 - 8);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_766690();
  v8 = *(v68 - 8);
  __chkstk_darwin(v68);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v66 = a1;
  result = sub_759DD0();
  v15 = result;
  if (result >> 62)
  {
    result = sub_76A860();
    v16 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_46:

    return _swiftEmptyArrayStorage;
  }

  v16 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (!v16)
  {
    goto LABEL_46;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v67 = v15 & 0xC000000000000001;
    v59 = (v8 + 16);
    v60 = (v8 + 8);
    v18 = _swiftEmptyArrayStorage;
    v63 = v13;
    v64 = v10;
    v61 = v16;
    v62 = v15;
    while (1)
    {
      if (v67)
      {
        v19 = sub_76A770();
        v20 = sub_75BEA0();
        if (v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);

        v20 = sub_75BEA0();
        if (v20)
        {
LABEL_9:
          v21 = v20;
          v69 = v19;
LABEL_13:
          sub_765260();
          sub_7666A0();
          v22 = sub_759D70();
          sub_7596B0();
          v23 = sub_759DE0();
          v24 = v65;
          sub_6C14C(v23, v65);

          v25 = *(v24 + 64);
          v26 = *(v24 + 80);
          sub_572EE0(v24, type metadata accessor for ScreenshotDisplayConfiguration);
          swift_getObjectType();
          [a2 pageContainerSize];
          v28 = v27;
          v30 = v29;
          if (v22)
          {
            v31 = sub_7665E0();
            v32 = v64;
            if (v31)
            {
              (*v59)(v64, v13, v68);
            }

            else
            {
              sub_766620();
            }

            v33 = 1;
          }

          else
          {
            v32 = v64;
            (*v59)(v64, v13, v68);
            v33 = sub_7665E0();
          }

          v34 = [a2 traitCollection];
          v35 = sub_7699B0();

          if (v35)
          {
            if (v30 >= v28)
            {
              JUScreenClassGetPortraitWidth();
              v36 = 4.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v57)
              {
                JUScreenClassGetPortraitWidth();
                if (v28 > v58)
                {
                  v36 = 5.0;
                }

                else
                {
                  v36 = 4.0;
                }
              }
            }

            else
            {
              JUScreenClassGetLandscapeWidth();
              v36 = 5.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v38)
              {
                JUScreenClassGetLandscapeWidth();
                if (v28 > v39)
                {
                  v36 = 6.0;
                }

                else
                {
                  v36 = 5.0;
                }
              }
            }
          }

          else
          {
            if (v33)
            {
              v37 = 2.0;
            }

            else
            {
              v37 = 1.0;
            }

            if (v33)
            {
              v36 = 3.0;
            }

            else
            {
              v36 = 1.0;
            }

            v13 = v63;
          }

          [a2 pageMarginInsets];
          v41 = v40;
          [a2 pageMarginInsets];
          v43 = v41 + v42;
          PageTraitEnvironment.pageColumnMargin.getter();
          v45 = (v37 + -1.0) * v44 + v37 / v36 * (a3 - (v43 + (v36 + -1.0) * v44));
          v46 = [a2 traitCollection];
          v47 = sub_7699B0();

          if ((v47 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_766650(), v45 < v48))
          {
            sub_766660();
            v48 = v45;
          }

          v49 = v48 - (v25 + v26);
          sub_766660();
          v51 = v50;
          v52 = *v60;
          v53 = v68;
          (*v60)(v32, v68);
          v52(v13, v53);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_7B0D8(0, *(v18 + 2) + 1, 1, v18);
          }

          v16 = v61;
          v15 = v62;
          v55 = *(v18 + 2);
          v54 = *(v18 + 3);
          if (v55 >= v54 >> 1)
          {
            v18 = sub_7B0D8((v54 > 1), v55 + 1, 1, v18);
          }

          *(v18 + 2) = v55 + 1;
          v56 = &v18[3 * v55];
          *(v56 + 4) = v21;
          v56[5] = v49;
          *(v56 + 6) = v51;
          goto LABEL_6;
        }
      }

      if (sub_75BEB0())
      {
        v69 = v19;
        v21 = sub_764BC0();

        goto LABEL_13;
      }

LABEL_6:
      if (v16 == ++v17)
      {

        return v18;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_5734EC(uint64_t a1)
{
  v2 = v1;
  sub_134D8(a1, v25);
  sub_BD88(&unk_93F520);
  sub_759DF0();
  if (swift_dynamicCast())
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v4 = swift_allocObject();
      *(v4 + 16) = sub_10DC0C(_swiftEmptyArrayStorage);
      *(v4 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v4 + 32) = &off_897320;
      swift_unknownObjectWeakAssign();
      *&v1[v3] = v4;
      swift_retain_n();

      v5 = *&v1[v3];
      if (v5)
      {
        *(v5 + 32) = &off_897320;
        swift_unknownObjectWeakAssign();
      }
    }

    swift_retain_n();
    v6 = [v1 traitCollection];
    sub_7699B0();

    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits];
      if (!v8)
      {
LABEL_26:
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
      [v2 bounds];
      v10 = sub_572F40(v7, v8, v9);

      swift_unknownObjectRelease();
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    v24 = sub_759D70() & 1;
    v11 = sub_60406C(v10, v24);
    v12 = v11;
    v23 = *(v10 + 2);
    if (v23)
    {
      v13 = 0;
      v14 = (v10 + 6);
      v21 = v11 & 0xC000000000000001;
      v22 = v11 >> 62;
      while (v13 < *(v10 + 2))
      {
        v15 = *(v14 - 2);
        v16 = *(v14 - 1);
        v17 = *v14;
        if (v22)
        {
          v18 = sub_76A860();
        }

        else
        {
          v18 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
        }

        if (v13 == v18)
        {
          goto LABEL_22;
        }

        if (v21)
        {

          sub_76A770();
        }

        else
        {
          if (v13 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_25;
          }
        }

        v26 = 0;
        memset(v25, 0, sizeof(v25));
        v19 = swift_allocObject();
        swift_weakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = v24;
        *(v20 + 24) = v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v16;
        *(v20 + 48) = v17;
        *(v20 + 56) = v13;

        sub_75A040();

        sub_10A2C(v25, &unk_9443A0);

        v14 += 3;
        if (v23 == ++v13)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_22:
  }
}

void sub_5738B0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_flowLayout;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_compoundScrollObserver;
  v4 = objc_allocWithZone(sub_75FA60());
  *(v1 + v3) = sub_75FA50();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotFetcher) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin) = 0x4020000000000000;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits) = 0;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_itemLayoutContext;
  v6 = sub_75C840();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryDividerView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryDividerView) = 0;
  v7 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  *v7 = 0;
  v7[1] = 0;
  sub_76A840();
  __break(1u);
}

void sub_573A44(objc_class *a1, uint64_t a2)
{
  v5 = sub_757640();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 window];
  if (v10)
  {

    if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media])
    {
      v11 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView];

      if ([v11 numberOfSections] >= 1 && objc_msgSend(v11, "numberOfItemsInSection:", 0) > a2)
      {
        v12 = sub_759DD0();
        v13 = v12 >> 62 ? sub_76A860() : *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));

        if (v13 > a2)
        {
          v14 = sub_759DD0();
          if ((v14 & 0xC000000000000001) == 0)
          {
            if (a2 < 0)
            {
              __break(1u);
            }

            else if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)) > a2)
            {

              goto LABEL_12;
            }

            __break(1u);
            return;
          }

          sub_76A770();
LABEL_12:

          sub_BD88(&qword_95B250);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_77E280;
          *(v15 + 32) = 0;
          *(v15 + 40) = a2;
          sub_757540();
          isa = sub_757550().super.isa;
          (*(v6 + 8))(v9, v5);
          v17 = [v11 cellForItemAtIndexPath:isa];

          if (v17)
          {
            type metadata accessor for ScreenshotCollectionViewCell();
            v18 = swift_dynamicCastClass();
            if (v18)
            {
              v19 = v18;
              v20 = v17;
              if (sub_75BEA0())
              {

                v21 = *(*(v19 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
                v27.value.super.isa = a1;
                v27.is_nil = 1;
                sub_759140(v27, v22);

                goto LABEL_26;
              }
            }

            type metadata accessor for VideoCollectionViewCell();
            if (swift_dynamicCastClass())
            {
              v17 = v17;
              if (sub_75BEB0())
              {

                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v24 = Strong;
                  [*(Strong + qword_940590) setImage:a1];
                }
              }
            }
          }

LABEL_26:

          return;
        }
      }
    }
  }
}

uint64_t sub_573DE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_573E1C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_573E5C()
{
  if (!*(v0 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits) || !*(v0 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media))
  {
    return 0;
  }

  v1 = sub_759DD0();

  if (v1 >> 62)
  {
    v2 = sub_76A860();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  return v2;
}

void sub_573EF8(void *a1)
{
  v3 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v3 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_948720);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v55 - v10;
  v12 = sub_766690();
  v58 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  if (!*(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  [a1 frame];
  if (v18 <= 0.0 || v19 <= 0.0)
  {

    return;
  }

  v56 = v1;
  v20 = v18;
  v21 = sub_759DD0();
  v22 = sub_7575C0();
  if ((v21 & 0xC000000000000001) == 0)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
    {
      v23 = *(v21 + 8 * v22 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  v23 = sub_76A770();
LABEL_8:

  v24 = sub_75BEA0();
  v57 = v23;
  if (v24)
  {
    sub_765260();
    sub_7666A0();

    v25 = v58;
    v26 = *(v58 + 56);
    v26(v8, 0, 1, v12);
    (*(v25 + 32))(v11, v8, v12);
    v26(v11, 0, 1, v12);
    v27 = (*(v25 + 48))(v11, 1, v12);
  }

  else
  {
    v55 = *(v58 + 56);
    v55(v8, 1, 1, v12);
    if (sub_75BEB0())
    {
      sub_764BC0();

      sub_765260();
      sub_7666A0();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v55(v11, v28, 1, v12);
    v25 = v58;
    v29 = *(v58 + 48);
    if (v29(v8, 1, v12) != 1)
    {
      sub_10A2C(v8, &unk_948720);
    }

    v27 = v29(v11, 1, v12);
  }

  if (v27 == 1)
  {

    sub_10A2C(v11, &unk_948720);
    return;
  }

  (*(v25 + 32))(v17, v11, v12);
  sub_7596B0();
  v30 = sub_759DE0();
  sub_6C14C(v30, v5);

  v31 = sub_759D70();
  v32 = *(v56 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits);
  if (!v32)
  {
    goto LABEL_42;
  }

  v33 = v31;
  [swift_unknownObjectRetain() pageContainerSize];
  v35 = v34;
  v37 = v36;
  if (v33)
  {
    if (sub_7665E0())
    {
      (*(v25 + 16))(v14, v17, v12);
    }

    else
    {
      sub_766620();
    }

    v38 = 1;
  }

  else
  {
    (*(v25 + 16))(v14, v17, v12);
    v38 = sub_7665E0();
  }

  swift_getObjectType();
  v39 = [v32 traitCollection];
  v40 = sub_7699B0();

  if (v40)
  {
    v41 = sub_319980(v35, v37);
    v43 = v42;
  }

  else
  {
    if (v38)
    {
      v41 = 2.0;
    }

    else
    {
      v41 = 1.0;
    }

    if (v38)
    {
      v43 = 3.0;
    }

    else
    {
      v43 = 1.0;
    }
  }

  v44 = v58;
  [v32 pageMarginInsets];
  v46 = v45;
  [v32 pageMarginInsets];
  v48 = v46 + v47;
  PageTraitEnvironment.pageColumnMargin.getter();
  v50 = (v41 + -1.0) * v49 + v41 / v43 * (v20 - (v48 + (v43 + -1.0) * v49));
  v51 = [v32 traitCollection];
  v52 = sub_7699B0();

  if ((v52 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_766650(), v50 < v53))
  {
    sub_766660();
  }

  sub_766660();
  swift_unknownObjectRelease();

  v54 = *(v44 + 8);
  v54(v14, v12);
  sub_572EE0(v5, type metadata accessor for ScreenshotDisplayConfiguration);
  v54(v17, v12);
}

void sub_5745C0(void *a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_948710);
  __chkstk_darwin(v4 - 8);
  v6 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = v68 - v8;
  v9 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v9 - 8);
  v77 = v68 - v10;
  v11 = sub_75A6B0();
  __chkstk_darwin(v11 - 8);
  __chkstk_darwin(v12);
  v13 = sub_BD88(&unk_948720);
  __chkstk_darwin(v13 - 8);
  v15 = v68 - v14;
  v16 = sub_75A6E0();
  v76 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_75DC30();
  __chkstk_darwin(v19);
  v23 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media);
  if (!v23)
  {
    return;
  }

  v72 = v6;
  v73 = v22;
  v74 = v20;
  v75 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v79 = v23;
  v24 = sub_759DD0();
  v25 = sub_7575C0();
  if ((v24 & 0xC000000000000001) == 0)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
    {
      v26 = *(v24 + 8 * v25 + 32);

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v26 = sub_76A770();
LABEL_6:

  type metadata accessor for ScreenshotCollectionViewCell();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = a1;
    v30 = sub_75BEA0();
    if (v30)
    {
      v31 = v30;
      v32 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotFetcher);
      if (v32)
      {
        swift_beginAccess();
        v33 = *(v32 + 16);

        v34 = sub_60D5C0(v31, v33);

        if (v34)
        {
          v35 = *(*(v28 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
          v36 = v34;
          v37 = v35;
          v38 = sub_759180();

          if (v38)
          {
            sub_BE70(0, &qword_947630);
            v40 = v36;
            v41 = sub_76A1C0();

            v42 = v41 ^ 1;
          }

          else
          {
            v42 = 1;
          }

          v82.is_nil = v42 & 1;
          v82.value.super.isa = v34;
          sub_7591D0(v82, v39);
        }

        else
        {
        }

        return;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  type metadata accessor for VideoCollectionViewCell();
  v43 = swift_dynamicCastClass();
  if (!v43)
  {
LABEL_24:

LABEL_25:

    return;
  }

  v71 = v43;
  v44 = a1;
  v45 = sub_75BEB0();
  if (!v45)
  {

    goto LABEL_24;
  }

  v46 = v45;
  v70 = v26;
  if (!*(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph))
  {

    goto LABEL_25;
  }

  v68[1] = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph);
  v69 = v44;
  v47 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotFetcher);
  if (v47)
  {

    v48 = sub_764BC0();
    swift_beginAccess();
    v49 = *(v47 + 16);

    v50 = sub_60D5C0(v48, v49);

    if (v50)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v52 = Strong;
        [*(Strong + qword_940590) setImage:v50];
      }
    }
  }

  else
  {
  }

  (*(v76 + 104))(v18, enum case for VideoFillMode.scaleAspectFit(_:), v16);
  sub_764BC0();
  sub_765260();
  sub_7666A0();

  v53 = sub_766690();
  (*(*(v53 - 8) + 56))(v15, 0, 1, v53);
  sub_764B60();
  sub_764BA0();
  LODWORD(v76) = sub_764B70();
  sub_764B50();
  sub_764BB0();
  sub_759DE0();
  sub_75A350();
  v54 = v46;

  sub_75DC10();
  sub_75C360();
  sub_768880();
  sub_764B40();
  v55 = v77;
  sub_764BD0();
  v56 = sub_7570A0();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = v78;
  sub_764B90();
  v58 = v72;
  v76 = v54;
  sub_764B80();
  type metadata accessor for VideoView();
  sub_5752F8(&qword_93F500, type metadata accessor for VideoView);
  v59 = sub_75C340();
  sub_10A2C(v58, &unk_948710);
  sub_10A2C(v57, &unk_948710);
  sub_10A2C(v55, &unk_93FD30);
  sub_10A2C(&v80, &unk_9443A0);
  v60 = v59;
  v61 = v71;
  sub_5B8AC0();
  swift_unknownObjectWeakAssign();
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v63 = v62;
    v64 = [v61 contentView];
    [v64 addSubview:v63];

    [v61 setNeedsLayout];
  }

  sub_761120();
  sub_768900();
  sub_768ED0();
  v65 = v80;
  v66 = swift_unknownObjectWeakLoadStrong();
  sub_5752F8(&qword_95B258, type metadata accessor for VideoCollectionViewCell);
  v67 = v69;
  sub_761100();

  (*(v73 + 8))(v75, v74);
}

void sub_574FE8(void *a1)
{
  type metadata accessor for ScreenshotCollectionViewCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
    v5 = a1;
    v9 = v4;
    sub_759190();
  }

  else
  {
    type metadata accessor for VideoCollectionViewCell();
    if (swift_dynamicCastClass() && *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph))
    {
      sub_761120();
      sub_768900();
      v6 = a1;

      sub_768ED0();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_5752F8(&qword_93F500, type metadata accessor for VideoView);
      }

      sub_5752F8(&qword_95B258, type metadata accessor for VideoCollectionViewCell);
      v8 = v6;
      sub_7610C0();
    }
  }
}

void sub_5751F4(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_5752F8(unint64_t *a1, void (*a2)(uint64_t))
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

NSString sub_575340()
{
  result = sub_769210();
  static UIActivityType.gift = result;
  return result;
}

uint64_t *UIActivityType.gift.unsafeMutableAddressor()
{
  if (qword_93DC80 != -1)
  {
    swift_once();
  }

  return &static UIActivityType.gift;
}

id static UIActivityType.gift.getter()
{
  if (qword_93DC80 != -1)
  {
    swift_once();
  }

  v1 = static UIActivityType.gift;

  return v1;
}

uint64_t sub_575424(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((sub_76A6C0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for StringPreferencesDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 56) == v1[7] && *(v2 + 64) == v1[8];
  if (!v3 && (sub_76A950() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_7687E0();

  return v4 & 1;
}

uint64_t sub_57552C()
{
  sub_76A6D0();

  return sub_769330();
}

uint64_t sub_575578()
{

  v1 = OBJC_IVAR____TtC18ASMessagesProvider29StringPreferencesDebugSetting_key;
  v2 = sub_BD88(&qword_9526A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_575604()
{
  sub_1EB60(v0 + 16);

  v1 = OBJC_IVAR____TtC18ASMessagesProvider29StringPreferencesDebugSetting_key;
  v2 = sub_BD88(&qword_9526A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StringPreferencesDebugSetting()
{
  result = qword_95B288;
  if (!qword_95B288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_575738()
{
  sub_5757D4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_5757D4()
{
  if (!qword_95B298)
  {
    v0 = sub_7687F0();
    if (!v1)
    {
      atomic_store(v0, &qword_95B298);
    }
  }
}

CGFloat AppPromotionDetailPageContentLayout.measure(toFit:with:)(void *a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v7 = a1;
  if (sub_7699D0())
  {
    v8 = sub_769A00();

    if (v8)
    {
      sub_577F7C(v7, *(v4 + 960), v11);
      sub_B170(v11, v12);
      sub_7673F0();
      sub_BEB8(v11);
      return a2;
    }
  }

  else
  {
  }

  if (sub_7699D0())
  {
    sub_576290(v7, v11, 0.0, 0.0, a2, a3);
  }

  else
  {
    sub_576C98(v7, v11, 0.0, 0.0, a2, a3);
  }

  sub_B170(v11, v12);
  sub_7673F0();
  a2 = v9;
  sub_BEB8(v11);
  return a2;
}

uint64_t AppPromotionDetailPageContentLayout.place(at:with:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = a1;
  if (sub_7699D0())
  {
    v12 = sub_769A00();

    if (v12)
    {

      return sub_577C38(v11, a2, a3, a4, a5);
    }
  }

  else
  {
  }

  v14 = sub_7699D0();
  sub_B170((v6 + 520), *(v6 + 544));
  sub_7673E0();
  if (v14)
  {
    sub_576290(v11, v15, a2, a3, a4, a5);
  }

  else
  {
    sub_576C98(v11, v15, a2, a3, a4, a5);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    CGRectGetMinX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGRectGetMinY(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGRectGetWidth(v19);
  }

  sub_B170(v15, v15[3]);
  sub_7673E0();
  return sub_BEB8(v15);
}

__n128 AppPromotionDetailPageContentLayout.init(metrics:primaryContentContainer:secondaryContentContainer:availabilityLabelView:kindLabel:titleLabel:subtitleView:learnMoreButton:detailLabel:inlineLearnMoreLabel:separatorView:lockupView:showInlineLearnMore:includeSubtitle:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  *(a9 + 848) = 0u;
  *(a9 + 864) = 0u;
  *(a9 + 816) = 0u;
  *(a9 + 832) = 0u;
  *(a9 + 800) = 0u;
  memcpy(a9, __src, 0x208uLL);
  sub_10914(a2, a9 + 520);
  sub_10914(a3, a9 + 560);
  sub_10914(a4, a9 + 600);
  sub_10914(a5, a9 + 640);
  sub_10914(a6, a9 + 680);
  sub_10914(a7, a9 + 720);
  sub_3D66E8(a8, a9 + 840);
  sub_10914(a10, a9 + 760);
  sub_3D66E8(a11, a9 + 800);
  v22 = *(a12 + 16);
  *(a9 + 880) = *a12;
  *(a9 + 896) = v22;
  *(a9 + 912) = *(a12 + 32);
  result = *a13;
  v24 = *(a13 + 16);
  *(a9 + 920) = *a13;
  *(a9 + 936) = v24;
  *(a9 + 952) = *(a13 + 32);
  *(a9 + 960) = a14;
  *(a9 + 961) = a15;
  return result;
}

void AppPromotionDetailPageContentLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.kindLabelBottomSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 160);

  return sub_10914(a1, v1 + 160);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.titleLabelTopSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 200);

  return sub_10914(a1, v1 + 200);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 240);

  return sub_10914(a1, v1 + 240);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.detailLabelTopSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 280);

  return sub_10914(a1, v1 + 280);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.learnMoreButtonTopSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 320);

  return sub_10914(a1, v1 + 320);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.learnMoreButtonBottomSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 360);

  return sub_10914(a1, v1 + 360);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelTopSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 400);

  return sub_10914(a1, v1 + 400);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelBottomSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 440);

  return sub_10914(a1, v1 + 440);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.separatorViewBottomSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 480);

  return sub_10914(a1, v1 + 480);
}

uint64_t sub_576290@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v90 = a2;
  v91 = sub_766880();
  v87 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v76 - v15;
  __chkstk_darwin(v16);
  v89 = &v76 - v17;
  v94 = sub_767340();
  v88 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_766950();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  __chkstk_darwin(v26);
  v28 = &v76 - v27;
  __chkstk_darwin(v29);
  v80 = &v76 - v30;
  __chkstk_darwin(v31);
  v81 = &v76 - v32;
  __chkstk_darwin(v33);
  v83 = &v76 - v34;
  __chkstk_darwin(v35);
  v84 = &v76 - v36;
  __chkstk_darwin(v37);
  v95 = &v76 - v38;
  sub_766930();
  sub_579914(v7, v101);
  v39 = swift_allocObject();
  memcpy((v39 + 16), v101, 0x3C2uLL);
  *(v39 + 984) = a1;
  v40 = a1;
  sub_766940();
  v41 = v19;

  v43 = v20 + 8;
  v42 = *(v20 + 8);
  v42(v22, v41);
  sub_134D8(v7 + 680, v101);
  sub_867FC(v101, &v96);
  v82 = v20;
  if (v97)
  {
    sub_10914(&v96, &v98);
    sub_766940();
    sub_BEB8(&v98);
    sub_8699C(v101);
    v42(v25, v41);
  }

  else
  {
    sub_8699C(v101);
    sub_8699C(&v96);
    (*(v20 + 32))(v28, v25, v41);
  }

  sub_579914(v7, v101);
  v44 = swift_allocObject();
  memcpy((v44 + 16), v101, 0x3C2uLL);
  *(v44 + 984) = v40;
  v45 = v40;
  v46 = v80;
  sub_766940();

  v42(v28, v41);
  sub_579914(v7, v101);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v101, 0x3C2uLL);
  *(v47 + 984) = v45;
  v48 = v45;
  v49 = v81;
  sub_766940();

  v42(v46, v41);
  sub_579914(v7, v101);
  v50 = swift_allocObject();
  memcpy((v50 + 16), v101, 0x3C2uLL);
  *(v50 + 984) = v48;
  sub_867FC(v7 + 840, &v96);
  v51 = v42;
  v79 = v48;
  if (v97)
  {
    sub_10914(&v96, &v98);
    v52 = v48;
    v53 = v83;
    sub_766940();

    sub_BEB8(&v98);
    v42(v49, v41);
    v54 = v82;
  }

  else
  {
    v55 = v48;

    sub_8699C(&v96);
    v54 = v82;
    v53 = v83;
    (*(v82 + 32))(v83, v49, v41);
  }

  sub_867FC(v7 + 880, &v98);
  v56 = v84;
  if (v99)
  {
    sub_10914(&v98, v101);
    sub_766940();
    sub_BEB8(v101);
    v51(v53, v41);
  }

  else
  {
    sub_8699C(&v98);
    (*(v54 + 32))(v56, v53, v41);
  }

  v57 = v95;
  sub_867FC(v7 + 920, &v98);
  v77 = v51;
  v78 = v43;
  v92 = v41;
  if (v99)
  {
    sub_10914(&v98, v101);
    sub_766940();
    sub_BEB8(v101);
    v51(v56, v41);
  }

  else
  {
    sub_8699C(&v98);
    (*(v54 + 32))(v57, v56, v41);
  }

  v58 = v54;
  sub_B170((v7 + 80), *(v7 + 104));
  sub_766710();
  sub_134D8(v7 + 600, v101);
  v59 = v93;
  sub_767330();
  v60 = v85;
  sub_766850();
  v61 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  v62 = sub_B1B4(v101);
  v63 = v88;
  (*(v88 + 16))(v62, v59, v61);
  v64 = v86;
  sub_766870();
  v65 = v87;
  v66 = *(v87 + 8);
  v67 = v91;
  v66(v60, v91);
  sub_BEB8(v101);
  v68 = v92;
  v101[3] = v92;
  v101[4] = &protocol witness table for VerticalStack;
  v69 = sub_B1B4(v101);
  (*(v58 + 16))(v69, v95, v68);
  v70 = v89;
  sub_766870();
  v66(v64, v67);
  sub_BEB8(v101);
  v99 = v67;
  v100 = &protocol witness table for DisjointStack;
  v71 = sub_B1B4(&v98);
  (*(v65 + 16))(v71, v70, v67);
  v72 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  sub_B1B4(v101);
  sub_767330();
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetWidth(v102);
  v73 = sub_7672F0();
  v74 = v90;
  v90[3] = v73;
  v74[4] = &protocol witness table for Resize;
  sub_B1B4(v74);
  sub_7672D0();
  v66(v70, v67);
  (*(v63 + 8))(v93, v72);
  return v77(v95, v92);
}

uint64_t sub_576C98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v134 = a2;
  v13 = sub_7672E0();
  v113 = *(v13 - 8);
  v114 = v13;
  __chkstk_darwin(v13);
  v116 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v110 - v16;
  __chkstk_darwin(v17);
  v112 = &v110 - v18;
  __chkstk_darwin(v19);
  v111 = (&v110 - v20);
  v21 = sub_767310();
  v130 = *(v21 - 8);
  v131 = v21;
  __chkstk_darwin(v21);
  v129 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_767340();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v127 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_767240();
  v122 = *(v24 - 8);
  v123 = v24;
  __chkstk_darwin(v24);
  v124 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_767250();
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v138 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_766950();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v120 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v121 = &v110 - v31;
  __chkstk_darwin(v32);
  v139 = &v110 - v33;
  __chkstk_darwin(v34);
  v141 = &v110 - v35;
  __chkstk_darwin(v36);
  v38 = &v110 - v37;
  __chkstk_darwin(v39);
  v136 = (&v110 - v40);
  __chkstk_darwin(v41);
  v117 = &v110 - v42;
  __chkstk_darwin(v43);
  v137 = &v110 - v44;
  __chkstk_darwin(v45);
  v118 = &v110 - v46;
  __chkstk_darwin(v47);
  v119 = &v110 - v48;
  __chkstk_darwin(v49);
  v140 = &v110 - v50;
  sub_766930();
  sub_579914(v6, v147);
  v51 = swift_allocObject();
  memcpy((v51 + 16), v147, 0x3C2uLL);
  *(v51 + 984) = a1;
  v52 = a1;
  sub_766940();

  v53 = v28;
  v56 = v28[1];
  v54 = (v28 + 1);
  v55 = v56;
  (v56)(v38, v27);
  sub_579914(v6, v147);
  v57 = swift_allocObject();
  memcpy((v57 + 16), v147, 0x3C2uLL);
  *(v57 + 984) = v52;
  v58 = v52;
  v59 = v117;
  v60 = v58;
  v61 = v136;
  sub_766940();
  v62 = v27;

  (v56)(v61, v27);
  sub_134D8((v7 + 85), v147);
  sub_867FC(v147, &v142);
  v136 = v53;
  if (v143)
  {
    sub_10914(&v142, &v144);
    sub_766940();
    sub_BEB8(&v144);
    sub_8699C(v147);
    (v55)(v59, v27);
  }

  else
  {
    sub_8699C(v147);
    sub_8699C(&v142);
    v53[4](v137, v59, v27);
  }

  sub_579914(v7, v147);
  v63 = swift_allocObject();
  memcpy((v63 + 16), v147, 0x3C2uLL);
  *(v63 + 984) = v60;
  v64 = v60;
  v65 = v118;
  v66 = v137;
  sub_766940();

  (v55)(v66, v27);
  sub_579914(v7, v147);
  v67 = swift_allocObject();
  memcpy((v67 + 16), v147, 0x3C2uLL);
  *(v67 + 984) = v64;
  v68 = v64;
  v69 = v119;
  sub_766940();

  (v55)(v65, v62);
  sub_579914(v7, v147);
  v70 = swift_allocObject();
  memcpy((v70 + 16), v147, 0x3C2uLL);
  *(v70 + 984) = v68;
  sub_867FC((v7 + 105), &v142);
  v137 = v68;
  if (v143)
  {
    sub_10914(&v142, &v144);
    v71 = v68;
    v72 = v140;
    sub_766940();
    v73 = v72;

    sub_BEB8(&v144);
    (v55)(v69, v62);
    v74 = v141;
    v75 = v136;
  }

  else
  {
    v76 = v68;

    sub_8699C(&v142);
    v75 = v136;
    v73 = v140;
    v136[4](v140, v69, v62);
    v74 = v141;
  }

  v77 = v75[2];
  v77(v74, v73, v62);
  sub_579914(v7, v147);
  v78 = swift_allocObject();
  memcpy((v78 + 16), v147, 0x3C2uLL);
  sub_867FC((v7 + 110), &v142);
  if (v143)
  {
    sub_10914(&v142, &v144);
    sub_7668F0();

    sub_BEB8(&v144);
  }

  else
  {

    sub_8699C(&v142);
  }

  sub_867FC((v7 + 115), &v144);
  v79 = v121;
  v80 = v77;
  if (v145)
  {
    sub_10914(&v144, v147);
    sub_7668F0();
    sub_BEB8(v147);
  }

  else
  {
    sub_8699C(&v144);
  }

  v81 = v120;
  sub_766930();
  sub_867FC((v7 + 110), &v144);
  if (v145)
  {
    sub_10914(&v144, v147);
    sub_766940();
    sub_BEB8(v147);
    (v55)(v81, v62);
  }

  else
  {
    sub_8699C(&v144);
    v136[4](v79, v81, v62);
  }

  v82 = v139;
  sub_867FC((v7 + 115), &v144);
  v125 = v55;
  v126 = v54;
  if (v145)
  {
    sub_10914(&v144, v147);
    sub_766940();
    v82 = v139;
    sub_BEB8(v147);
    (v55)(v79, v62);
  }

  else
  {
    sub_8699C(&v144);
    v136[4](v82, v79, v62);
  }

  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v83 = sub_B1B4(v147);
  v77(v83, v82, v62);
  (*(v122 + 104))(v124, enum case for Pin.Edge.bottomEdge(_:), v123);
  v145 = v62;
  v146 = &protocol witness table for VerticalStack;
  v84 = sub_B1B4(&v144);
  v77(v84, v140, v62);
  sub_767260();
  v148.origin.x = a3;
  v148.origin.y = a4;
  v148.size.width = a5;
  v148.size.height = a6;
  CGRectGetWidth(v148);
  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v85 = sub_B1B4(v147);
  v86 = v141;
  v80(v85, v141, v62);
  v87 = v127;
  sub_767330();
  sub_7670E0();
  sub_579D88(&qword_95B358, &type metadata accessor for Margins);
  v88 = v129;
  v137 = v80;
  v89 = v132;
  sub_766C10();
  sub_579D88(&qword_95B360, &type metadata accessor for Margins.Placements);
  v90 = v131;
  sub_766DF0();
  v92 = v91;
  (*(v130 + 8))(v88, v90);
  (*(v128 + 8))(v87, v89);
  v93 = floor(v92);
  v94 = *v7;
  if (*v7 >= v93)
  {
    v99 = v135;
    v145 = v135;
    v146 = &protocol witness table for Pin;
    v100 = sub_B1B4(&v144);
    v101 = v133;
    (*(v133 + 16))(v100, v138, v99);
    v147[3] = v89;
    v147[4] = &protocol witness table for Margins;
    sub_B1B4(v147);
    sub_767330();
    v137 = v62;
    v102 = v111;
    *(v111 + 3) = &type metadata for CGFloat;
    *(v102 + 4) = &protocol witness table for CGFloat;
    *v102 = v94;
    v103 = v114;
    v104 = *(v113 + 104);
    v104(v102, enum case for Resize.Rule.replaced(_:), v114);
    v105 = enum case for Resize.Rule.unchanged(_:);
    v104(v112, enum case for Resize.Rule.unchanged(_:), v103);
    v104(v115, v105, v103);
    v104(v116, v105, v103);
    v106 = sub_7672F0();
    v107 = v134;
    v134[3] = v106;
    v107[4] = &protocol witness table for Resize;
    sub_B1B4(v107);
    sub_767300();
    (*(v101 + 8))(v138, v135);
    v108 = v137;
    v109 = v125;
    (v125)(v139, v137);
    (v109)(v141, v108);
    return (v109)(v140, v108);
  }

  else
  {
    v147[3] = v62;
    v147[4] = &protocol witness table for VerticalStack;
    v95 = sub_B1B4(v147);
    (v137)(v95, v86, v62);
    v96 = v134;
    v134[3] = v89;
    v96[4] = &protocol witness table for Margins;
    sub_B1B4(v96);
    sub_767330();
    (*(v133 + 8))(v138, v135);
    v97 = v125;
    (v125)(v139, v62);
    (v97)(v86, v62);
    return (v97)(v140, v62);
  }
}

uint64_t sub_577C38(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinX = CGRectGetMinX(*&a2);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Width = CGRectGetWidth(v21);
  v14 = *v5;
  sub_B170((v5 + 520), *(v5 + 544));
  sub_7673E0();
  sub_5787D4(a1, v19);
  sub_B170(v19, v19[3]);
  sub_7673E0();
  v22.origin.x = MinX;
  v22.origin.y = MinY;
  v22.size.width = Width;
  v22.size.height = v14;
  CGRectGetMaxY(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetWidth(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  v25.origin.x = MinX;
  v25.origin.y = MinY;
  v25.size.width = Width;
  v25.size.height = v14;
  CGRectGetMaxY(v25);
  v15 = *(v5 + 960);
  if ((v15 & 1) == 0)
  {
    sub_577F7C(a1, 1, v17);
    sub_B170(v17, v18);
    sub_7673E0();
    sub_BEB8(v17);
  }

  sub_577F7C(a1, v15, v17);
  sub_B170((v5 + 560), *(v5 + 584));
  sub_7673E0();
  sub_B170(v17, v18);
  sub_7673E0();
  sub_BEB8(v17);
  return sub_BEB8(v19);
}

uint64_t sub_577EB0(uint64_t a1, uint64_t a2)
{
  sub_B170((a2 + 240), *(a2 + 264));
  sub_766710();
  sub_7668B0();
  return sub_7668A0();
}

uint64_t sub_577F7C@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v58 = a2;
  v62 = a3;
  v6 = sub_766950();
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v57[-v10];
  __chkstk_darwin(v12);
  v14 = &v57[-v13];
  __chkstk_darwin(v15);
  v63 = &v57[-v16];
  __chkstk_darwin(v17);
  v64 = &v57[-v18];
  __chkstk_darwin(v19);
  v59 = &v57[-v20];
  __chkstk_darwin(v21);
  v60 = &v57[-v22];
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = &v57[-v25];
  v27 = [a1 preferredContentSizeCategory];
  if (qword_93DC88 != -1)
  {
    swift_once();
  }

  v28 = sub_769B50();

  sub_766930();
  if (v28)
  {
    sub_134D8(v4 + 680, v69);
  }

  else
  {
    memset(v69, 0, 40);
  }

  v61 = v26;
  sub_867FC(v69, &v70);
  if (v71)
  {
    sub_10914(&v70, &v72);
    sub_766940();
    sub_BEB8(&v72);
    sub_8699C(v69);
    v29 = v65;
    (*(v65 + 8))(v8, v6);
  }

  else
  {
    sub_8699C(v69);
    sub_8699C(&v70);
    v29 = v65;
    (*(v65 + 32))(v11, v8, v6);
  }

  sub_579914(v4, v69);
  v30 = swift_allocObject();
  memcpy((v30 + 16), v69, 0x3C2uLL);
  *(v30 + 978) = v28 & 1;
  *(v30 + 984) = a1;
  v31 = a1;
  sub_766940();

  v32 = *(v29 + 8);
  v32(v11, v6);
  sub_579914(v4, v69);
  v33 = swift_allocObject();
  memcpy((v33 + 16), v69, 0x3C2uLL);
  *(v33 + 984) = v31;
  v34 = v31;
  sub_766940();

  v66 = v32;
  v32(v14, v6);
  v35 = v58;
  if (v58)
  {
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
  }

  else
  {
    sub_867FC(v4 + 840, &v72);
  }

  v37 = v59;
  v36 = v60;
  sub_579914(v4, v69);
  v38 = swift_allocObject();
  memcpy((v38 + 16), v69, 0x3C2uLL);
  *(v38 + 984) = v34;
  sub_867FC(&v72, &v67);
  if (v68)
  {
    sub_10914(&v67, &v70);
    v39 = v34;
    v40 = v63;
    sub_766940();

    sub_BEB8(&v70);
    sub_8699C(&v72);
    v66(v40, v6);
    v41 = v65;
    if (v35)
    {
LABEL_14:
      sub_867FC(v4 + 800, &v72);
      goto LABEL_17;
    }
  }

  else
  {
    v42 = v34;

    sub_8699C(&v72);
    sub_8699C(&v67);
    v41 = v65;
    (*(v65 + 32))(v64, v63, v6);
    if (v35)
    {
      goto LABEL_14;
    }
  }

  v74 = 0;
  v72 = 0u;
  v73 = 0u;
LABEL_17:
  sub_579914(v4, v69);
  v43 = swift_allocObject();
  memcpy((v43 + 16), v69, 0x3C2uLL);
  *(v43 + 984) = v34;
  sub_867FC(&v72, &v67);
  if (v68)
  {
    sub_10914(&v67, &v70);
    v44 = v34;
    v45 = v64;
    sub_766940();

    sub_BEB8(&v70);
    sub_8699C(&v72);
    v66(v45, v6);
  }

  else
  {
    v46 = v34;

    sub_8699C(&v72);
    sub_8699C(&v67);
    (*(v41 + 32))(v37, v64, v6);
  }

  sub_579914(v4, v69);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v69, 0x3C2uLL);
  *(v47 + 984) = v34;
  sub_867FC(v4 + 880, &v70);
  if (v71)
  {
    sub_10914(&v70, &v72);
    v48 = v34;
    sub_766940();

    sub_BEB8(&v72);
    v49 = v37;
    v50 = v66;
    v66(v49, v6);
  }

  else
  {
    v51 = v34;

    sub_8699C(&v70);
    (*(v41 + 32))(v36, v37, v6);
    v50 = v66;
  }

  sub_867FC(v4 + 920, &v72);
  v52 = v61;
  if (*(&v73 + 1))
  {
    sub_10914(&v72, v69);
    sub_766940();
    sub_BEB8(v69);
    v50(v36, v6);
  }

  else
  {
    sub_8699C(&v72);
    (*(v41 + 32))(v52, v36, v6);
  }

  v69[3] = v6;
  v69[4] = &protocol witness table for VerticalStack;
  v53 = sub_B1B4(v69);
  (*(v41 + 16))(v53, v52, v6);
  v54 = sub_767340();
  v55 = v62;
  v62[3] = v54;
  v55[4] = &protocol witness table for Margins;
  sub_B1B4(v55);
  sub_767330();
  return (v50)(v52, v6);
}

uint64_t sub_5787D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v70 = sub_7672E0();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v66 = (&v54 - v7);
  __chkstk_darwin(v8);
  v65 = (&v54 - v9);
  __chkstk_darwin(v10);
  v63 = (&v54 - v11);
  v12 = sub_766880();
  v61 = *(v12 - 8);
  v62 = v12;
  __chkstk_darwin(v12);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7672F0();
  v71 = *(v14 - 8);
  v72 = v14;
  __chkstk_darwin(v14);
  v69 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_766950();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  __chkstk_darwin(v23);
  v55 = &v54 - v24;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v59 = &v54 - v27;
  v28 = [a1 preferredContentSizeCategory];
  if (qword_93DC88 != -1)
  {
    swift_once();
  }

  v29 = sub_769B50();

  sub_766930();
  sub_579914(v3, v79);
  v30 = swift_allocObject();
  memcpy((v30 + 16), v79, 0x3C2uLL);
  *(v30 + 984) = a1;
  v31 = a1;
  sub_766940();

  v58 = v17;
  v34 = *(v17 + 8);
  v32 = v17 + 8;
  v33 = v34;
  v34(v19, v16);
  sub_579914(v3, v79);
  v35 = swift_allocObject();
  *(v35 + 16) = (v29 & 1) == 0;
  memcpy((v35 + 24), v79, 0x3C2uLL);
  *(v35 + 992) = v31;
  v36 = v31;
  v37 = v55;
  sub_766940();

  v34(v22, v16);
  v64 = v3;
  v38 = v37;
  if (v29)
  {
    memset(v79, 0, 40);
  }

  else
  {
    sub_134D8(v3 + 680, v79);
  }

  sub_867FC(v79, &v74);
  v39 = v58;
  v40 = v59;
  v56 = v33;
  v57 = v32;
  if (v75)
  {
    sub_10914(&v74, v76);
    sub_766940();
    sub_BEB8(v76);
    sub_8699C(v79);
    v33(v38, v16);
  }

  else
  {
    sub_8699C(v79);
    sub_8699C(&v74);
    (*(v39 + 32))(v40, v38, v16);
  }

  v41 = v60;
  sub_766850();
  v77 = v16;
  v78 = &protocol witness table for VerticalStack;
  v42 = sub_B1B4(v76);
  (*(v39 + 16))(v42, v40, v16);
  v43 = v62;
  v79[3] = v62;
  v79[4] = &protocol witness table for DisjointStack;
  sub_B1B4(v79);
  sub_766870();
  (*(v61 + 8))(v41, v43);
  sub_BEB8(v76);
  v44 = v63;
  *v63 = sub_579154;
  v44[1] = 0;
  v62 = v16;
  v45 = *(v68 + 104);
  v46 = v70;
  v45(v44, enum case for Resize.Rule.recalculated(_:), v70);
  v47 = enum case for Resize.Rule.unchanged(_:);
  v45(v65, enum case for Resize.Rule.unchanged(_:), v46);
  v45(v66, v47, v46);
  v45(v67, v47, v46);
  v48 = v69;
  sub_767300();
  v49 = v72;
  v77 = v72;
  v78 = &protocol witness table for Resize;
  v50 = sub_B1B4(v76);
  v51 = v71;
  (*(v71 + 16))(v50, v48, v49);
  v79[3] = sub_767340();
  v79[4] = &protocol witness table for Margins;
  sub_B1B4(v79);
  sub_767330();
  v52 = v73;
  v73[3] = v49;
  v52[4] = &protocol witness table for Resize;
  sub_B1B4(v52);
  sub_7672D0();
  (*(v51 + 8))(v48, v49);
  return v56(v40, v62);
}

uint64_t sub_578F98(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    sub_B170((a3 + 160), *(a3 + 184));
    sub_766710();
  }

  return sub_7668C0();
}

uint64_t sub_579020(uint64_t a1, void (*a2)(void *))
{
  v3 = sub_766840();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v8 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for DisjointStack.EdgePosition.anchored(_:), v3, v5);
  a2(v7);
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v9(v7, v8, v3);
  return sub_766800();
}

uint64_t sub_57915C(uint64_t a1, uint64_t a2, char a3)
{
  sub_7668A0();
  if (a3)
  {
    sub_B170((a2 + 240), *(a2 + 264));
    sub_766710();
  }

  return sub_7668B0();
}

uint64_t sub_579208(uint64_t a1, void *a2)
{
  sub_B170(a2 + 50, a2[53]);
  sub_766710();
  sub_7668B0();
  sub_B170(a2 + 55, a2[58]);
  sub_766710();
  return sub_7668C0();
}

uint64_t sub_5792D8(uint64_t a1, uint64_t a2)
{
  sub_B170((a2 + 480), *(a2 + 504));
  sub_766710();
  return sub_7668C0();
}

uint64_t sub_579358(uint64_t a1, uint64_t a2)
{
  sub_B170((a2 + 40), *(a2 + 64));
  sub_766710();
  return sub_7668C0();
}

uint64_t sub_5793D8(uint64_t a1, uint64_t a2)
{
  sub_B170((a2 + 160), *(a2 + 184));
  sub_766710();
  return sub_7668C0();
}

uint64_t sub_579458(uint64_t a1, uint64_t a2)
{
  sub_7668A0();
  sub_B170((a2 + 240), *(a2 + 264));
  sub_766710();
  return sub_7668B0();
}

uint64_t sub_5794F8(uint64_t a1, uint64_t a2)
{
  sub_B170((a2 + 280), *(a2 + 304));
  sub_766710();
  return sub_7668B0();
}

uint64_t sub_579578(uint64_t a1, void *a2)
{
  sub_B170(a2 + 40, a2[43]);
  sub_766710();
  sub_7668B0();
  sub_B170(a2 + 45, a2[48]);
  sub_766710();
  return sub_7668C0();
}

uint64_t sub_579658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 962))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5796A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 952) = 0;
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
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 960) = 0;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
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
      *(result + 962) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 962) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5797F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 520))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_579840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_579970()
{
  sub_BEB8(v0 + 64);
  sub_BEB8(v0 + 104);
  sub_BEB8(v0 + 144);
  sub_BEB8(v0 + 184);
  sub_BEB8(v0 + 224);
  sub_BEB8(v0 + 264);
  sub_BEB8(v0 + 304);
  sub_BEB8(v0 + 344);
  sub_BEB8(v0 + 384);
  sub_BEB8(v0 + 424);
  sub_BEB8(v0 + 464);
  sub_BEB8(v0 + 504);
  sub_BEB8(v0 + 544);
  sub_BEB8(v0 + 584);
  sub_BEB8(v0 + 624);
  sub_BEB8(v0 + 664);
  sub_BEB8(v0 + 704);
  sub_BEB8(v0 + 744);
  sub_BEB8(v0 + 784);
  if (*(v0 + 848))
  {
    sub_BEB8(v0 + 824);
  }

  if (*(v0 + 888))
  {
    sub_BEB8(v0 + 864);
  }

  if (*(v0 + 928))
  {
    sub_BEB8(v0 + 904);
  }

  if (*(v0 + 968))
  {
    sub_BEB8(v0 + 944);
  }

  return _swift_deallocObject(v0, 1000, 7);
}

uint64_t sub_579B30()
{
  sub_BEB8(v0 + 56);
  sub_BEB8(v0 + 96);
  sub_BEB8(v0 + 136);
  sub_BEB8(v0 + 176);
  sub_BEB8(v0 + 216);
  sub_BEB8(v0 + 256);
  sub_BEB8(v0 + 296);
  sub_BEB8(v0 + 336);
  sub_BEB8(v0 + 376);
  sub_BEB8(v0 + 416);
  sub_BEB8(v0 + 456);
  sub_BEB8(v0 + 496);
  sub_BEB8(v0 + 536);
  sub_BEB8(v0 + 576);
  sub_BEB8(v0 + 616);
  sub_BEB8(v0 + 656);
  sub_BEB8(v0 + 696);
  sub_BEB8(v0 + 736);
  sub_BEB8(v0 + 776);
  if (*(v0 + 840))
  {
    sub_BEB8(v0 + 816);
  }

  if (*(v0 + 880))
  {
    sub_BEB8(v0 + 856);
  }

  if (*(v0 + 920))
  {
    sub_BEB8(v0 + 896);
  }

  if (*(v0 + 960))
  {
    sub_BEB8(v0 + 936);
  }

  return _swift_deallocObject(v0, 992, 7);
}

uint64_t sub_579C40()
{
  sub_BEB8((v0 + 7));
  sub_BEB8((v0 + 12));
  sub_BEB8((v0 + 17));
  sub_BEB8((v0 + 22));
  sub_BEB8((v0 + 27));
  sub_BEB8((v0 + 32));
  sub_BEB8((v0 + 37));
  sub_BEB8((v0 + 42));
  sub_BEB8((v0 + 47));
  sub_BEB8((v0 + 52));
  sub_BEB8((v0 + 57));
  sub_BEB8((v0 + 62));
  sub_BEB8((v0 + 67));
  sub_BEB8((v0 + 72));
  sub_BEB8((v0 + 77));
  sub_BEB8((v0 + 82));
  sub_BEB8((v0 + 87));
  sub_BEB8((v0 + 92));
  sub_BEB8((v0 + 97));
  if (v0[105])
  {
    sub_BEB8((v0 + 102));
  }

  if (v0[110])
  {
    sub_BEB8((v0 + 107));
  }

  if (v0[115])
  {
    sub_BEB8((v0 + 112));
  }

  if (v0[120])
  {
    sub_BEB8((v0 + 117));
  }

  return _swift_deallocObject(v0, 978, 7);
}

uint64_t sub_579D88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_579E1C(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v4 - 8);
  v35 = &v29 - v5;
  v34 = sub_7623A0();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_BD88(&unk_9457F0);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v29 - v8;
  v10 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_763750();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_948730);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v31 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButton);
  v32 = a1;
  v30 = sub_759BF0();
  v20 = sub_759C10();
  v21 = sub_759C00();
  (*(v14 + 104))(v16, enum case for OfferButtonPresenterViewAlignment.center(_:), v13);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_57A580(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
  sub_760940();
  v22 = sub_BD88(&unk_948740);
  (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
  v23 = v34;
  (*(v6 + 104))(v33, enum case for OfferButtonSubtitlePosition.left(_:), v34);
  (*(v6 + 56))(v35, 1, 1, v23);
  sub_57A580(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
  sub_760940();
  sub_1DFEBC(v30, v20, v21, v19, v9, v38, 0, 0);

  (*(v36 + 8))(v9, v37);
  sub_35280C(v19);
  sub_759BD0();
  sub_759BE0();
  sub_761230();
  sub_768900();
  sub_768ED0();
  v24 = sub_761190();
  swift_allocObject();
  v25 = sub_761170();
  sub_57A580(&qword_95B368, type metadata accessor for ArcadeLockupView);
  v26 = swift_unknownObjectRetain();
  sub_761180();
  v39[3] = v24;
  v39[0] = v25;
  v27 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerLabelPresenter;
  swift_beginAccess();

  sub_12C2F8(v39, v26 + v27);
  swift_endAccess();
  [v26 setNeedsLayout];
}

id sub_57A40C(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_subtitleLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = sub_769240();
  v10 = v9;

  if (!a2)
  {

    v13 = 0;
    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_76A950();

    if (v12)
    {
      return result;
    }

LABEL_10:
    v13 = sub_769210();
LABEL_12:
    [v5 setText:v13];

    [v5 setHidden:sub_7692D0() & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_57A580(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_57A640(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = sub_7664A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_766CA0();
  sub_161DC(v9, a2);
  sub_BE38(v9, a2);
  v10 = *a3;
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v15[3] = v5;
  v15[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v15);
  (*(v6 + 16))(v11, v8, v5);
  v12 = v10;
  sub_766CB0();
  return (*(v6 + 8))(v8, v5);
}

void sub_57A7B0(double a1, double a2, double a3, double a4)
{
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = &v91[-v10];
  v12 = sub_760370();
  __chkstk_darwin(v12 - 8);
  v13 = sub_7603D0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v91[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_7602F0();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v91[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_760360();
  sub_760300();
  v21 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_materialBackground;
  *&v4[v21] = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel;
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = sub_769210();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView;
    v30 = [objc_allocWithZone(UIImageView) initWithImage:v28];

    *&v4[v29] = v30;
    v31 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    *&v4[v31] = [objc_allocWithZone(UITapGestureRecognizer) init];
    v32 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_selectionHandler];
    v33 = type metadata accessor for CarouselItemMaterialTextOverlay();
    *v32 = 0;
    *(v32 + 1) = 0;
    v101.receiver = v4;
    v101.super_class = v33;
    v34 = objc_msgSendSuper2(&v101, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v38 = v34;
    [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v38 setOverrideUserInterfaceStyle:2];
    [v38 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v99 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_materialBackground;
    v39 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_materialBackground];
    sub_6EC1FC(26.0);

    v40 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel;
    v41 = qword_93DBC0;
    v42 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel];
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_7666D0();
    v44 = sub_BE38(v43, qword_99FB38);
    v45 = *(v43 - 8);
    v46 = *(v45 + 16);
    v46(v11, v44, v43);
    v94 = v45;
    v95 = *(v45 + 56);
    v95(v11, 0, 1, v43);
    sub_75BA40();

    [*&v38[v40] setNumberOfLines:1];
    v47 = *&v38[v40];
    v48 = objc_opt_self();
    v49 = v47;
    v100 = v48;
    v50 = [v48 secondaryLabelColor];
    v51 = v40;
    v52 = v50;
    [v49 setTextColor:v50];

    v98 = v51;
    v53 = [*&v38[v51] layer];
    v97 = kCAFilterPlusL;
    [v53 setCompositingFilter:?];

    v54 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel;
    v55 = qword_93DBD0;
    v56 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel];
    if (v55 != -1)
    {
      swift_once();
    }

    v57 = sub_BE38(v43, qword_99FB68);
    v46(v11, v57, v43);
    v58 = v95;
    v95(v11, 0, 1, v43);
    sub_75BA40();

    [*&v38[v54] setNumberOfLines:2];
    v59 = *&v38[v54];
    v60 = [v100 labelColor];
    v96 = v54;
    v61 = v60;
    [v59 setTextColor:v60];

    v62 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel;
    v63 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel];
    *v11 = UIFontTextStyleFootnote;
    v11[1] = UIFontWeightRegular;
    v92 = enum case for FontUseCase.preferredFontDerivative(_:);
    v64 = v11;
    v65 = v94[13];
    v65(v64);
    v58(v64, 0, 1, v43);
    v94 = UIFontTextStyleFootnote;
    v66 = v63;
    sub_75BA40();

    v67 = v62;
    [*&v38[v62] setNumberOfLines:2];
    v68 = *&v38[v62];
    v93 = v62;
    v69 = v68;
    v70 = [v100 secondaryLabelColor];
    [v69 setTextColor:v70];

    v71 = [*&v38[v67] layer];
    v72 = v97;
    [v71 setCompositingFilter:v97];

    v73 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel;
    v74 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel];
    *v64 = v94;
    v64[1] = UIFontWeightBold;
    (v65)(v64, v92, v43);
    v58(v64, 0, 1, v43);
    v75 = v74;
    sub_75BA40();

    [*&v38[v73] setNumberOfLines:1];
    v76 = *&v38[v73];
    v77 = v100;
    v78 = [v100 labelColor];
    [v76 setTextColor:v78];

    v79 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView;
    v80 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView];
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 configurationWithTextStyle:UIFontTextStyleBody];
    [v82 setPreferredSymbolConfiguration:v83];

    v84 = *&v38[v79];
    v85 = [v77 secondaryLabelColor];
    [v84 setTintColor:v85];

    v86 = [*&v38[v79] layer];
    [v86 setCompositingFilter:v72];

    v87 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    [*&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_tapGestureRecognizer] setEnabled:0];
    v88 = *&v38[v87];
    v89 = v38;
    [v88 addTarget:v89 action:"handleSelection:"];
    v90 = *&v38[v87];
    [v90 setDelegate:v89];

    [v89 addGestureRecognizer:*&v38[v87]];
    [v89 addSubview:*&v38[v99]];
    [v89 addSubview:*&v38[v98]];
    [v89 addSubview:*&v38[v96]];
    [v89 addSubview:*&v38[v93]];
    [v89 addSubview:*&v38[v73]];
    [v89 addSubview:*&v38[v79]];
    sub_57C74C();
  }

  else
  {
    __break(1u);
  }
}