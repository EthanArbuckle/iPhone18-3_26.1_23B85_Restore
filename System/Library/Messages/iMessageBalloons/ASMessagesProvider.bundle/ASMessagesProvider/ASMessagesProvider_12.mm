void sub_1615C8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (!a1)
    {
LABEL_16:

      return;
    }

    v4 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView);
    v5 = a1;
    if (v4)
    {
      v6 = v4;
      v17.value.super.isa = a1;
      v17.is_nil = 0;
      sub_7591D0(v17, v7);
    }

    v8 = sub_5599F0();
    if (v8 >> 62)
    {
      v15 = v8;
      v16 = sub_76A860();
      v8 = v15;
      if (v16)
      {
        goto LABEL_7;
      }
    }

    else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_7:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      type metadata accessor for VideoView();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = qword_940590;
        v13 = v11;
        v14 = [*(v11 + qword_940590) layer];
        [v14 removeAllAnimations];

        [*(v13 + v12) setImage:a1];
      }

      goto LABEL_15;
    }

LABEL_15:
    [v3 setNeedsLayout];

    v3 = a1;
    goto LABEL_16;
  }
}

void sub_16177C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a1)
    {
      v12 = a1;
      v13 = v12;
      if (a6)
      {
        v14 = [v12 CGImage];
        if (!v14)
        {
          __break(1u);
          return;
        }

        v15 = v14;
        [v13 scale];
        v17 = [objc_allocWithZone(UIImage) initWithCGImage:v15 scale:2 orientation:v16];
      }

      else
      {
        v17 = v12;
      }

      sub_55C724(v17, a7);

      v11 = v17;
    }
  }
}

unint64_t sub_161888(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v33 = a6;
  v31 = a5;
  v28 = a4;
  *&v34 = a1;
  *(&v34 + 1) = a2;
  v10 = sub_BD88(&unk_948720);
  __chkstk_darwin(v10 - 8);
  v30 = &v27 - v11;
  v12 = sub_766690();
  __chkstk_darwin(v12 - 8);
  v13 = sub_75C930();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  v29 = sub_75C9A0();
  v20 = *(v29 - 8);
  __chkstk_darwin(v29);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  v36[0] = 0x4021000000000000;
  if (a3)
  {
    v23 = sub_759690();
  }

  else
  {
    v23 = 0;
  }

  sub_558B9C(v23, a8, v19);

  sub_134D8(v36, v35);
  (*(v14 + 16))(v16, v19, v13);
  if (v34 != 0)
  {
    goto LABEL_14;
  }

  result = sub_55BABC(a3, v28, 0, 1);
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v25 = result;
  v26 = sub_76A860();
  result = v25;
  if (!v26)
  {
LABEL_13:

LABEL_14:
    sub_7666A0();
    goto LABEL_15;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_76A770();
    goto LABEL_10;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_10:

    sub_765260();
    sub_7666A0();

LABEL_15:
    sub_1ED18(v31, v30, &unk_948720);
    sub_75C970();
    (*(v14 + 8))(v19, v13);
    sub_BEB8(v36);
    sub_75C9D0();
    sub_161CCC(&qword_946D78, &type metadata accessor for LockupMediaLayout);
    sub_766ED0();
    return (*(v20 + 8))(v22, v29);
  }

  __break(1u);
  return result;
}

uint64_t sub_161CCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_161D14(uint64_t a1)
{
  v2 = type metadata accessor for ScreenshotDisplayConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_161D70()
{
  result = qword_946D88;
  if (!qword_946D88)
  {
    sub_BE70(255, &qword_93E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946D88);
  }

  return result;
}

uint64_t sub_161DD8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_161E10()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_161E58()
{
  result = qword_946D90;
  if (!qword_946D90)
  {
    sub_133D8(&qword_943F70);
    sub_161D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946D90);
  }

  return result;
}

unint64_t sub_161EE4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v215 = a8;
  v222 = a7;
  v225 = a5;
  v226 = a6;
  v218 = a4;
  v223 = a3;
  v229 = a2;
  v12 = sub_BD88(&qword_946D98);
  __chkstk_darwin(v12 - 8);
  v194 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v205 = &v182 - v15;
  v188 = sub_7593D0();
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v185 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v186 = &v182 - v18;
  v19 = sub_7652D0();
  __chkstk_darwin(v19 - 8);
  v184 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&unk_948710);
  __chkstk_darwin(v21 - 8);
  v213 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v214 = &v182 - v24;
  v25 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v25 - 8);
  v212 = &v182 - v26;
  v27 = sub_75A6B0();
  __chkstk_darwin(v27 - 8);
  v193 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v200 = &v182 - v30;
  __chkstk_darwin(v31);
  v209 = &v182 - v32;
  __chkstk_darwin(v33);
  v208 = &v182 - v34;
  v211 = sub_75A6E0();
  v210 = *(v211 - 8);
  __chkstk_darwin(v211);
  v199 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v207 = &v182 - v37;
  v217 = sub_75DC30();
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v201 = &v182 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v227 = &v182 - v40;
  v221 = sub_760770();
  v41 = *(v221 - 8);
  __chkstk_darwin(v221);
  v43 = &v182 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for ScreenshotDisplayConfiguration();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v183 = &v182 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v182 - v46;
  v48 = sub_BD88(&unk_948720);
  __chkstk_darwin(v48 - 8);
  v198 = &v182 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v182 - v51;
  v220 = sub_766690();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v197 = &v182 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v55 = sub_75C930();
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v189 = &v182 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v195 = &v182 - v59;
  __chkstk_darwin(v60);
  v62 = &v182 - v61;
  v224 = sub_75C9A0();
  v228 = *(v224 - 8);
  __chkstk_darwin(v224);
  v196 = &v182 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v66 = &v182 - v65;
  v233 = &type metadata for CGFloat;
  v234 = &protocol witness table for CGFloat;
  v232 = 0x4021000000000000;
  sub_134D8(&v232, v231);
  v190 = v56;
  v68 = *(v56 + 16);
  v67 = (v56 + 16);
  v204 = v55;
  v203 = v67;
  v202 = v68;
  v68(v62, v226, v55);
  v206 = a1;
  if (v229 | a1)
  {
    v69 = v223;
LABEL_11:
    sub_7666A0();
    goto LABEL_12;
  }

  v69 = v223;
  result = sub_55BABC(v223, v218, 0, 1);
  if (result >> 62)
  {
    v71 = result;
    v72 = sub_76A860();
    result = v71;
    if (v72)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_78;
    }
  }

  sub_765260();
  sub_7666A0();

LABEL_12:
  sub_1ED18(v225, v52, &unk_948720);
  sub_75C970();
  sub_BEB8(&v232);
  v73 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  v74 = v230;
  swift_beginAccess();
  v75 = v228;
  v76 = &v74[v73];
  v77 = v224;
  (*(v228 + 24))(v76, v66, v224);
  swift_endAccess();
  [v74 setNeedsLayout];
  v78 = *(v75 + 8);
  v78(v66, v77);
  v228 = v75 + 8;
  if (v69)
  {
    v79 = sub_759690();
  }

  else
  {
    v79 = 0;
  }

  sub_7596B0();
  sub_6C14C(v79, v47);

  v80 = &v230[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration];
  swift_beginAccess();
  sub_163BAC(v47, v80);
  swift_endAccess();
  sub_559BA0();
  sub_161D14(v47);
  if (v69)
  {
    v81 = sub_759690();
  }

  else
  {
    v81 = 0;
  }

  v82 = v221;
  v47 = v230;
  *&v230[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform] = v81;

  sub_559DA4();

  (*(v41 + 16))(v43, v222, v82);
  v83 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v41 + 24))(&v47[v83], v43, v82);
  swift_endAccess();
  [v47 setNeedsLayout];
  (*(v41 + 8))(v43, v82);
  if (v229)
  {
    (*(v210 + 104))(v207, enum case for VideoFillMode.scaleAspectFill(_:), v211);

    sub_764BC0();
    sub_765260();
    sub_7666A0();

    (*(v219 + 56))(v52, 0, 1, v220);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v84 = v212;
    sub_764BD0();
    v85 = sub_7570A0();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
    v86 = v214;
    sub_764B90();
    v87 = v213;
    sub_764B80();
    type metadata accessor for VideoView();
    sub_161CCC(&qword_93F500, type metadata accessor for VideoView);
    v88 = sub_75C340();
    sub_10A2C(v87, &unk_948710);
    sub_10A2C(v86, &unk_948710);
    sub_10A2C(v84, &unk_93FD30);
    sub_10A2C(&v232, &unk_9443A0);
    Strong = swift_unknownObjectWeakLoadStrong();
    v67 = &unk_90D000;
    if (Strong)
    {
      v90 = Strong;
      v91 = [Strong superview];
      if (v91)
      {
        v92 = v91;
        sub_BE70(0, &qword_93E550);
        v93 = v47;
        v94 = sub_76A1C0();

        if ((v94 & 1) == 0)
        {
          goto LABEL_25;
        }

        v95 = swift_unknownObjectWeakLoadStrong();
        if (!v95)
        {
          goto LABEL_25;
        }

        v90 = v95;
        [v95 removeFromSuperview];
      }
    }

LABEL_25:
    swift_unknownObjectWeakAssign();
    v96 = swift_unknownObjectWeakLoadStrong();
    if (v96)
    {
      v97 = v96;
      [v47 addSubview:v96];
    }

    sub_55A7A8();
    [v47 setNeedsLayout];

    v98 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v99 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    v100 = v217;
    v101 = v216;
    if (v99)
    {
      [v99 removeFromSuperview];
      v102 = *&v47[v98];
    }

    else
    {
      v102 = 0;
    }

    *&v47[v98] = 0;

    [v47 setNeedsLayout];

    (*(v101 + 8))(v227, v100);
    return [v47 v67[463]];
  }

  if (v206 && (a11 & 1) == 0)
  {
    swift_retain_n();
    v110 = [v47 traitCollection];
    v234 = &protocol witness table for CGFloat;
    v233 = &type metadata for CGFloat;
    v232 = 0x4021000000000000;
    sub_134D8(&v232, v231);
    v202(v195, v226, v204);
    v111 = v197;
    sub_7666A0();
    sub_1ED18(v225, v52, &unk_948720);
    v112 = v196;
    sub_75C970();
    sub_BEB8(&v232);
    sub_75C980();
    sub_766660();
    (*(v219 + 8))(v111, v220);

    v113 = sub_765330();
    v114 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
    v116 = *(v114 + 2);
    v115 = *(v114 + 3);
    if (v116 >= v115 >> 1)
    {
      v114 = sub_7B220((v115 > 1), v116 + 1, 1, v114);
    }

    v78(v112, v224);
    *(v114 + 2) = v116 + 1;
    v117 = &v114[16 * v116 + 32];
    *v117 = v113;
    *(v117 + 8) = 0;
    v118 = *(v114 + 4);

    v119 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v67 = &unk_90D000;
    if (v118)
    {

      sub_7652E0();
      sub_7591B0();
      [v119 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();
      [v119 setContentMode:2];
      v120 = v119;
      sub_75CD10();
      v121 = *(v80 + 48);
      sub_75CD00();

      v122 = v183;
      sub_163C10(v80, v183);
      v123 = *(v122 + 16);
      sub_161D14(v122);
      v124 = v187;
      v125 = &enum case for CornerStyle.arc(_:);
      if (!v123)
      {
        v125 = &enum case for CornerStyle.continuous(_:);
      }

      v126 = v185;
      v127 = v188;
      (*(v187 + 104))(v185, *v125, v188);
      v128 = v186;
      (*(v124 + 32))(v186, v126, v127);
      sub_759200();

      (*(v124 + 8))(v128, v127);
    }

    v129 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v130 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    v131 = v119;
    if (v130)
    {
      [v130 removeFromSuperview];
      v130 = *&v47[v129];
    }

    *&v47[v129] = v119;
    v156 = v119;

    [v47 addSubview:v156];
    [v47 setNeedsLayout];

    v157 = swift_unknownObjectWeakLoadStrong();
    if (!v157)
    {
      goto LABEL_71;
    }

    v158 = v157;
    sub_161CCC(&qword_93F500, type metadata accessor for VideoView);
    v159 = [v158 superview];
    if (v159)
    {
      v160 = v159;
      sub_BE70(0, &qword_93E550);
      v161 = v47;
      v162 = sub_76A1C0();

      if ((v162 & 1) == 0)
      {
        goto LABEL_71;
      }

      v163 = swift_unknownObjectWeakLoadStrong();
      if (!v163)
      {
        goto LABEL_71;
      }

      v158 = v163;
      [v163 removeFromSuperview];
    }

LABEL_71:
    swift_unknownObjectWeakAssign();
    v164 = swift_unknownObjectWeakLoadStrong();
    if (v164)
    {
      v165 = v164;
      [v47 addSubview:v164];
    }

    sub_55A7A8();
    [v47 setNeedsLayout];

    return [v47 v67[463]];
  }

  v67 = &unk_90D000;
  if (!v218)
  {
    goto LABEL_80;
  }

  result = sub_765750();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_34;
    }

    goto LABEL_79;
  }

LABEL_78:
  v168 = result;
  v169 = sub_76A860();
  result = v168;
  if (!v169)
  {
LABEL_79:

LABEL_80:
    v170 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v171 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    if (v171)
    {
      [v171 removeFromSuperview];
      v172 = *&v47[v170];
    }

    else
    {
      v172 = 0;
    }

    *&v47[v170] = 0;

    [v47 v67[463]];
    v173 = swift_unknownObjectWeakLoadStrong();
    if (!v173)
    {
      goto LABEL_89;
    }

    v174 = v173;
    sub_161CCC(&qword_93F500, type metadata accessor for VideoView);
    v175 = [v174 superview];
    if (v175)
    {
      v176 = v175;
      sub_BE70(0, &qword_93E550);
      v177 = v47;
      v178 = sub_76A1C0();

      if ((v178 & 1) == 0)
      {
        goto LABEL_89;
      }

      v179 = swift_unknownObjectWeakLoadStrong();
      if (!v179)
      {
        goto LABEL_89;
      }

      v174 = v179;
      [v179 removeFromSuperview];
    }

LABEL_89:
    swift_unknownObjectWeakAssign();
    v180 = swift_unknownObjectWeakLoadStrong();
    if (v180)
    {
      v181 = v180;
      [v47 addSubview:v180];
    }

    sub_55A7A8();
    [v47 v67[463]];
    return [v47 v67[463]];
  }

LABEL_34:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_76A770();
LABEL_37:

    v103 = v189;
    v104 = v204;
    v202(v189, v226, v204);
    v105 = v190;
    v106 = (*(v190 + 88))(v103, v104);
    v107 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v105 + 8))(v103, v104);
    if (v106 == v107)
    {
      v108 = 1;
      v109 = v205;
    }

    else
    {
      v132 = sub_765740();
      v109 = v205;
      sub_6C14C(v132, v205);

      v108 = 0;
    }

    v133 = v191;
    v134 = v192;
    (*(v191 + 56))(v109, v108, 1, v192);
    (*(v210 + 104))(v199, enum case for VideoFillMode.scaleAspectFill(_:), v211);
    sub_764BC0();
    sub_765260();
    v135 = v198;
    sub_7666A0();

    (*(v219 + 56))(v135, 0, 1, v220);
    sub_764B60();
    sub_764BA0();
    LODWORD(v229) = sub_764B70();
    sub_764B50();
    sub_764BB0();
    v136 = v194;
    sub_1ED18(v109, v194, &qword_946D98);
    if ((*(v133 + 48))(v136, 1, v134) == 1)
    {
      sub_10A2C(v136, &qword_946D98);
    }

    else
    {
      sub_161D14(v136);
    }

    sub_75DC10();
    sub_75C360();
    sub_768880();
    v137 = v232;
    sub_764B40();
    v138 = v212;
    sub_764BD0();
    v139 = sub_7570A0();
    (*(*(v139 - 8) + 56))(v138, 0, 1, v139);
    v140 = v214;
    sub_764B90();
    v141 = v213;
    sub_764B80();
    type metadata accessor for VideoView();
    sub_161CCC(&qword_93F500, type metadata accessor for VideoView);
    v229 = v137;
    v142 = sub_75C340();
    sub_10A2C(v141, &unk_948710);
    sub_10A2C(v140, &unk_948710);
    sub_10A2C(v138, &unk_93FD30);
    sub_10A2C(&v232, &unk_9443A0);
    v143 = swift_unknownObjectWeakLoadStrong();
    v144 = v205;
    if (!v143)
    {
      goto LABEL_61;
    }

    v145 = v143;
    v146 = [v143 superview];
    if (v146)
    {
      v147 = v146;
      sub_BE70(0, &qword_93E550);
      v148 = v47;
      v149 = sub_76A1C0();

      v144 = v205;
      if ((v149 & 1) == 0)
      {
        goto LABEL_61;
      }

      v150 = swift_unknownObjectWeakLoadStrong();
      if (!v150)
      {
        goto LABEL_61;
      }

      v145 = v150;
      [v150 removeFromSuperview];
    }

LABEL_61:
    swift_unknownObjectWeakAssign();
    v151 = swift_unknownObjectWeakLoadStrong();
    if (v151)
    {
      v152 = v151;
      [v47 addSubview:v151];
    }

    sub_55A7A8();
    [v47 v67[463]];

    v153 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v154 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    if (v154)
    {
      [v154 removeFromSuperview];
      v155 = *&v47[v153];
    }

    else
    {
      v155 = 0;
    }

    v166 = v217;
    v167 = v216;
    *&v47[v153] = 0;

    [v47 v67[463]];

    (*(v167 + 8))(v201, v166);
    sub_10A2C(v144, &qword_946D98);
    return [v47 v67[463]];
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_163BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotDisplayConfiguration();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_163C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotDisplayConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_163C74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_163CBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_163D20()
{
  result = qword_946DA0;
  if (!qword_946DA0)
  {
    sub_761C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946DA0);
  }

  return result;
}

uint64_t sub_163D78()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_761C60();
  sub_BD88(&qword_94DDC0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_768F30();
}

void *sub_163E70()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_163EA8(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_163F00;
}

void sub_163F00(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_278EE8(v2);
  }

  else
  {
    sub_278EE8(*a1);
  }
}

uint64_t sub_163FB8()
{
  swift_getObjectType();

  return sub_75D650();
}

uint64_t sub_163FEC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1641C0(&qword_946DB8, type metadata accessor for MediumLockupCollectionViewCell);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_1640A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_1641C0(&qword_946DB8, type metadata accessor for MediumLockupCollectionViewCell);

  return a3(ObjectType, v4);
}

uint64_t sub_1641C0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_164208()
{
  v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] = 0;
  v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_isSupplementaryViewAnimationEnabled] = 1;
  v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame];
  *v2 = 0u;
  v2[1] = 0u;
  v3 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_pendingPrepareObserver];
  v4 = type metadata accessor for CollectionViewTableFlowLayout();
  *v3 = 0;
  v3[1] = 0;
  v11.receiver = v0;
  v11.super_class = v4;
  v5 = objc_msgSendSuper2(&v11, "init");
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v9 = v5;
  [v9 setSectionInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v9 setMinimumInteritemSpacing:0.0];
  [v9 setMinimumLineSpacing:0.0];
  [v9 setScrollDirection:0];

  return v9;
}

double sub_1643E4()
{
  v1 = [v0 collectionView];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v1 delegate];

    if (v4)
    {
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5 && (v6 = v5, (v7 = [v0 collectionView]) != 0))
      {
        v8 = v7;
        [v6 collectionView:v7 heightForGlobalHeaderViewInTableFlowLayout:v0];
        v2 = v9;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return v2;
}

uint64_t sub_1644DC()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  objc_msgSendSuper2(&v24, "prepareLayout");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    Width = CGRectGetWidth(v25);
    v4 = sub_1643E4();

    v5 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize];
    *v5 = Width;
    v5[1] = v4;
  }

  else
  {
    v6 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize];
    *v6 = 0;
    *(v6 + 1) = 0;
  }

  v7 = 0.0;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
  {
    v8 = [v0 collectionView];
    if (v8)
    {
      v9 = v8;
      [v8 contentInset];
      v7 = v10;
      v12 = v11;
      [v9 bounds];
      v26.origin.x = sub_705B8(v13, v14, v15, v16, v7, v12);
      MinY = CGRectGetMinY(v26);

      if (MinY < v7)
      {
        v7 = MinY;
      }
    }
  }

  v18 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame];
  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize];
  *v18 = 0.0;
  v18[1] = v7;
  *(v18 + 1) = v19;
  v20 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_pendingPrepareObserver];
  v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_pendingPrepareObserver];
  if (v21)
  {

    v21(v0);
    sub_F704(v21);
    v22 = *v20;
  }

  else
  {
    v22 = 0;
  }

  *v20 = 0;
  v20[1] = 0;
  return sub_F704(v22);
}

id sub_164754()
{
  v1 = v0;
  isa = sub_757550().super.isa;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v3 = objc_msgSendSuper2(&v7, "layoutAttributesForItemAtIndexPath:", isa);

  if (v3)
  {
    if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v1[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
    {
      sub_E59C4();
      v5 = sub_76A440();
      [v5 frame];
      [v5 setFrame:?];

      return v5;
    }
  }

  return v3;
}

id sub_164930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 0xD000000000000035 && 0x80000000007D1B30 == a2 || (sub_76A950() & 1) != 0)
  {
    v4 = sub_769210();
    isa = sub_757550().super.isa;
    v6 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v4 withIndexPath:isa];

    [v6 setFrame:{*&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame], *&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame + 8], *&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame + 16], *&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame + 24]}];
  }

  else
  {
    v8 = sub_769210();
    v9 = sub_757550().super.isa;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for CollectionViewTableFlowLayout();
    v6 = objc_msgSendSuper2(&v12, "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", v8, v9);

    if (v6)
    {
      if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v3[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
      {
        sub_E59C4();
        v11 = sub_76A440();
        [v11 frame];
        [v11 setFrame:?];

        return v11;
      }
    }
  }

  return v6;
}

id sub_164AF0()
{
  v1 = v0;
  v2 = sub_769210();
  isa = sub_757550().super.isa;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v4 = objc_msgSendSuper2(&v8, "layoutAttributesForDecorationViewOfKind:atIndexPath:", v2, isa);

  if (v4)
  {
    if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v1[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
    {
      sub_E59C4();
      v6 = sub_76A440();
      [v6 frame];
      [v6 setFrame:?];

      return v6;
    }
  }

  return v4;
}

id sub_164BF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_769240();
  v13 = v12;
  sub_757590();
  v14 = a1;
  v15 = a5(v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v15;
}

unint64_t sub_164D28(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_757640();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize];
  v14 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize + 8];
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = a3;
  v46.size.height = a4;
  v16 = CGRectGetMinY(v46) - v14;
  if (v16 < 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v16;
  }

  v18 = type metadata accessor for CollectionViewTableFlowLayout();
  v45.receiver = v4;
  v45.super_class = v18;
  v19 = objc_msgSendSuper2(&v45, "layoutAttributesForElementsInRect:", a1, v17, a3, a4);
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  sub_E59C4();
  v21 = sub_769460();

  if (v15 < COERCE_DOUBLE(1) || v14 < COERCE_DOUBLE(1))
  {
    return v21;
  }

  if (v21 >> 62)
  {
    v23 = sub_76A860();
    if (v23)
    {
      goto LABEL_11;
    }

LABEL_29:

    v21 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v23 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  if (!v23)
  {
    goto LABEL_29;
  }

LABEL_11:
  v40 = v13;
  v41 = v11;
  v42 = v10;
  v43 = v5;
  v44 = _swiftEmptyArrayStorage;

  sub_76A7C0();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = sub_76A770();
      }

      else
      {
        v26 = *(v21 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = [v26 representedElementKind];
      if (v28)
      {
        v29 = v28;
        v30 = sub_769240();
        v32 = v31;

        if (v30 == 0xD000000000000035 && 0x80000000007D1B30 == v32)
        {

          goto LABEL_14;
        }

        v34 = sub_76A950();

        if (v34)
        {
          goto LABEL_14;
        }
      }

      v25 = sub_76A440();
      [v25 frame];
      [v25 setFrame:?];

LABEL_14:
      ++v24;
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      if (v23 == v24)
      {
        swift_bridgeObjectRelease_n();
        v5 = v43;
        v21 = v44;
        v11 = v41;
        v10 = v42;
        v13 = v40;
LABEL_30:
        v44 = v21;
        v47.origin.x = a1;
        v47.origin.y = a2;
        v47.size.width = a3;
        v47.size.height = a4;
        if (CGRectIntersectsRect(v47, *&v5[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame]))
        {
          v35 = sub_769210();
          sub_7575F0();
          isa = sub_757550().super.isa;
          (*(v11 + 8))(v13, v10);
          v37 = [v5 layoutAttributesForSupplementaryViewOfKind:v35 atIndexPath:isa];

          if (v37)
          {
            v5 = v37;
            sub_769440();
            if (*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (v44 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              goto LABEL_33;
            }

            goto LABEL_36;
          }
        }

        return v21;
      }
    }
  }

  __break(1u);
LABEL_36:
  sub_7694C0();
LABEL_33:
  sub_769500();

  return v44;
}

id sub_165228(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v12 = 0;
  if (*(a1 + OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_isSupplementaryViewAnimationEnabled) == 1)
  {
    v13 = a3;
    v14 = a1;
    isa = sub_757550().super.isa;
    v16 = type metadata accessor for CollectionViewTableFlowLayout();
    v18.receiver = v14;
    v18.super_class = v16;
    v12 = objc_msgSendSuper2(&v18, *a5, v13, isa);
  }

  (*(v9 + 8))(v11, v8);

  return v12;
}

id sub_165388(double a1, double a2, double a3, double a4)
{
  v9 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize] < COERCE_DOUBLE(1) || *&v4[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize + 8] < COERCE_DOUBLE(1);
  if (!v9 && v4[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
  {
    if (CGRectGetMinY(*&a1) <= 0.0)
    {
      return &dword_0 + 1;
    }

    MinY = CGRectGetMinY(*&v4[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame]);
    v11 = [v4 collectionView];
    if (v11)
    {
      v12 = v11;
      [v11 contentInset];
      v14 = v13;

      if (MinY < v14)
      {
        return &dword_0 + 1;
      }
    }

    else if (MinY < 0.0)
    {
      return &dword_0 + 1;
    }
  }

  v16.receiver = v4;
  v16.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  return objc_msgSendSuper2(&v16, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);
}

void *sub_165520(double a1, double a2, double a3, double a4)
{
  v21.receiver = v4;
  v21.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v9 = objc_msgSendSuper2(&v21, "invalidationContextForBoundsChange:", a1, a2, a3, a4);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = [v4 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;

    if (v14 != a3)
    {
      return v10;
    }
  }

  else
  {
    v16 = 0.0;
    if (a3 != 0.0)
    {
      return v10;
    }
  }

  if (v16 == a4 && *&v4[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v4[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
  {
    v18 = sub_769210();
    sub_BD88(&unk_941A18);
    sub_757640();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_7575F0();
    isa = sub_769450().super.isa;

    [v10 invalidateSupplementaryElementsOfKind:v18 atIndexPaths:isa];
  }

  return v10;
}

void sub_1657C4(void *a1)
{
  v2 = v1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  objc_msgSendSuper2(&v22, "invalidateLayoutWithContext:", a1);
  v4 = [a1 invalidatedSupplementaryIndexPaths];
  if (v4)
  {
    v5 = v4;
    sub_BD88(&unk_946E10);
    v6 = sub_7690F0();

    if (*(v6 + 16))
    {
      sub_3DF2F8(0xD000000000000035, 0x80000000007D1B30);
      v8 = v7;

      if (v8)
      {
        v9 = 0.0;
        if (v2[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
        {
          v10 = [v2 collectionView];
          if (v10)
          {
            v11 = v10;
            [v10 contentInset];
            v9 = v12;
            v14 = v13;
            [v11 bounds];
            v23.origin.x = sub_705B8(v15, v16, v17, v18, v9, v14);
            MinY = CGRectGetMinY(v23);

            if (MinY < v9)
            {
              v9 = MinY;
            }
          }
        }

        v20 = &v2[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderFrame];
        v21 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29CollectionViewTableFlowLayout_globalHeaderSize];
        *v20 = 0.0;
        v20[1] = v9;
        *(v20 + 1) = v21;
      }
    }

    else
    {
    }
  }
}

id sub_1659EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_165A58()
{
  sub_BD88(&qword_941C10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77B6D0;
  sub_76A730(55);
  v8._object = 0x80000000007D1BB0;
  v8._countAndFlagsBits = 0xD000000000000035;
  sub_769370(v8);
  v2 = [v0 description];
  v3 = sub_769240();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_769370(v9);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_76A690();
}

uint64_t sub_165B78()
{
  sub_BD88(&qword_941C10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77B6D0;
  sub_76A730(55);
  v8._object = 0x80000000007D1B70;
  v8._countAndFlagsBits = 0xD000000000000035;
  sub_769370(v8);
  v2 = [v0 description];
  v3 = sub_769240();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_769370(v9);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_76A690();
}

unint64_t sub_165C98()
{
  result = qword_941548;
  if (!qword_941548)
  {
    type metadata accessor for InformationRibbonCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941548);
  }

  return result;
}

double sub_165CF0()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75DAB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  sub_75DA20();
  sub_765630();
  (*(v1 + 8))(v3, v0);
  if (qword_93D210 != -1)
  {
    swift_once();
  }

  v8 = sub_75F070();
  sub_BE38(v8, qword_99DED8);
  v9 = sub_75DA30();
  sub_75EFB0();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  return v11;
}

double sub_165EF0()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  (*(v1 + 8))(v3, v0);
  if (qword_93D210 != -1)
  {
    swift_once();
  }

  v4 = sub_75F070();
  sub_BE38(v4, qword_99DED8);
  v5 = sub_75DA30();
  sub_75EFB0();
  v7 = v6;

  return v7;
}

char *sub_166060(uint64_t a1, uint64_t a2)
{
  v5 = sub_75EF50();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v34 = &v33 - v9;
  v10 = sub_759950();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_946E38) = 0;
  *(v2 + qword_946E40) = 0;
  *(v2 + qword_946E48) = 0;
  *(v2 + qword_946E50) = 0;
  *(v2 + qword_946E58) = 0;

  v14 = sub_4695E4(a1, a2);
  v14[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 0;
  v15 = v14;
  v16 = [v15 navigationItem];
  [v16 setLargeTitleDisplayMode:2];

  v17 = sub_7653A0();
  v38[3] = v17;
  v38[4] = sub_168F28(&qword_947D00, &type metadata accessor for Feature.iOS);
  v18 = sub_B1B4(v38);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = sub_765C30();
  sub_BEB8(v38);
  if (v17)
  {
    v19 = [v15 navigationItem];
    sub_763EF0();
    if (v20)
    {
      v21 = sub_769210();
    }

    else
    {
      v21 = 0;
    }

    [v19 setTitle:v21];

LABEL_12:
    goto LABEL_13;
  }

  (*(v11 + 104))(v13, enum case for SystemImage.listBullet(_:), v10);
  v22 = sub_759930();
  (*(v11 + 8))(v13, v10);
  v23 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v22 style:0 target:v15 action:"toggleDisplayStyleWithAction:"];

  v24 = qword_946E38;
  v25 = *&v15[qword_946E38];
  *&v15[qword_946E38] = v23;

  v26 = [v15 navigationItem];
  v27 = *&v15[v24];
  [v26 setRightBarButtonItem:v27];

  v28 = *&v15[v24];
  if (v28)
  {
    v33 = a2;
    v21 = v28;
    sub_763E70();
    (*(v35 + 104))(v7, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v5);
    sub_168F28(&qword_947420, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle);
    sub_769430();
    sub_769430();
    if (v38[0] == v36 && v38[1] == v37)
    {
      v29 = v7;
      v30 = 1;
    }

    else
    {
      v29 = v7;
      v30 = sub_76A950();
    }

    v31 = *(v35 + 8);
    v31(v29, v5);
    v31(v34, v5);

    [v21 setSelected:v30 & 1];
    goto LABEL_12;
  }

LABEL_13:

  return v15;
}

id sub_166590()
{
  v1 = qword_946E40;
  v2 = *(v0 + qword_946E40);
  if (v2)
  {
    v3 = *(v0 + qword_946E40);
  }

  else
  {
    v4 = sub_168C7C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1665F0()
{
  v0 = sub_76A3F0();
  sub_161DC(v0, qword_946E20);
  sub_BE38(v0, qword_946E20);
  sub_76A3A0();
  v1 = sub_769210();
  v2 = [objc_opt_self() systemImageNamed:v1];

  sub_76A390();
  v3 = [objc_opt_self() configurationWithScale:1];
  sub_76A220();
  sub_76A290();
  return sub_76A2D0();
}

void sub_1666D8(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_761930();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v11 = v5;

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_761920();
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 setHidden:*&v1[v3] != 0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_166818(void *a1)
{
  v2 = *&v1[qword_946E48];
  *&v1[qword_946E48] = a1;
  if (a1)
  {
    v5 = v2;
    v3 = a1;
    [v1 presentViewController:v3 animated:1 completion:0];
LABEL_3:

    goto LABEL_4;
  }

  if (!v2)
  {
    return;
  }

  v5 = v2;
  v4 = [v2 presentingViewController];
  if (v4)
  {
    v3 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_3;
  }

LABEL_4:
}

void sub_1668E0(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *&v1[qword_946E50];
    if (!v3 || (v4 = a1, type metadata accessor for PageFacetsViewController(0), v5 = v4, v6 = v3, LOBYTE(v4) = sub_76A1C0(), v5, v6, (v4 & 1) == 0))
    {
      v7 = *&v2[qword_946E48];
      *&v2[qword_946E48] = 0;
      if (v7)
      {
        v8 = [v7 presentingViewController];
        if (v8)
        {
          v9 = v8;
          [v8 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }

  v10 = *&v2[qword_946E50];
  if (v10)
  {
    *&v10[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_delegate + 8] = &off_885E08;
    swift_unknownObjectWeakAssign();
    v11 = objc_allocWithZone(UINavigationController);
    v12 = v10;
    v13 = [v11 initWithRootViewController:v12];
    v14 = [v13 view];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = [objc_opt_self() systemBackgroundColor];
    [v15 setBackgroundColor:v16];

    [v13 setModalPresentationStyle:7];
    v17 = [v13 presentationController];
    if (v17)
    {
      v18 = v17;
      [v17 setDelegate:v2];
    }

    [v13 setPreferredContentSize:{450.0, 450.0}];
    v19 = [v13 popoverPresentationController];
    if (v19)
    {
      v20 = v19;
      v21 = sub_166590();
      [v20 setSourceView:v21];
    }

    v22 = [v13 popoverPresentationController];
    if (v22)
    {
      v23 = v22;
      [v22 setPermittedArrowDirections:1];
    }

    v24 = [v13 popoverPresentationController];

    if (v24)
    {
      v25 = sub_166590();
      v26 = [v25 titleLabel];

      if (v26)
      {
        [v26 frame];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = v34;
        v36 = v32;
        v37 = v30;
        v38 = v28;
      }

      else
      {
        [*&v2[qword_946E40] bounds];
      }

      MidX = CGRectGetMidX(*&v38);
      [*&v2[qword_946E40] bounds];
      [v24 setSourceRect:{MidX, CGRectGetMaxY(v46), 10.0, 10.0}];
    }

    v44 = *&v2[qword_946E48];
    *&v2[qword_946E48] = v13;
    v43 = v13;
    [v2 presentViewController:v43 animated:1 completion:0];
  }

  else
  {
    v39 = *&v2[qword_946E48];
    *&v2[qword_946E48] = 0;
    if (!v39)
    {
      return;
    }

    v44 = v39;
    v40 = [v39 presentingViewController];
    if (v40)
    {
      v41 = v40;
      [v40 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_166D20()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 titleView];

  v4 = sub_166590();
  v5 = v4;
  if (v3)
  {
    sub_BE70(0, &qword_93E550);
    v6 = sub_76A1C0();

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = qword_946E40;
  [*&v1[qword_946E40] setAlpha:0.0];
  v8 = [v1 navigationItem];
  [v8 setTitleView:*&v1[v7]];

  v9 = [v1 navigationItem];
  v10 = [v9 navigationBar];

  if (v10)
  {
    [v10 layoutIfNeeded];
  }

LABEL_7:
  v11 = qword_946E40;
  v12 = qword_946E58;
  v13 = 0.0;
  if (v1[qword_946E58])
  {
    v13 = 1.0;
  }

  [*&v1[qword_946E40] setAlpha:v13];
  v14 = *&v1[v11];
  v15 = v1[v12];

  return [v14 setUserInteractionEnabled:v15];
}

void sub_166EC0()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = sub_166590();
  sub_BE70(0, &qword_955FA0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = sub_76A1F0();
  [v1 addAction:v3 forControlEvents:{64, 0, 0, 0, sub_16945C, v2}];
}

void sub_166FB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_16700C();
  }
}

void sub_16700C()
{
  v1 = v0;
  sub_763ED0();
  v2 = sub_763E50();
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  v4 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v5 = sub_6F3850(v2, 1, v3);

  v7 = *(v1 + qword_946E50);
  *(v1 + qword_946E50) = v5;
  v6 = v5;
  sub_1668E0(v7);
}

void sub_1670E4(void *a1)
{
  v1 = a1;
  sub_166EC0();
}

id sub_16712C(id a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = sub_769240();
  v7 = v6;
  if (v5 == sub_769240() && v7 == v8)
  {
  }

  v10 = sub_76A950();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    v12 = sub_166590();
    [v12 sizeToFit];

    return [*&v1[qword_946E40] setNeedsLayout];
  }

  return result;
}

void sub_167290(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_16712C(a3);
}

uint64_t sub_1672FC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_BD88(&unk_947440);
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v22 = &v22 - v2;
  v3 = sub_BD88(&unk_94DCB0);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v22 - v4;
  v25 = sub_BD88(&unk_947450);
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v22 - v6;
  sub_1BC07C();
  v8 = *(v0 + qword_99E1A8);
  sub_763EB0();
  v9 = sub_BE70(0, &qword_940340);
  v10 = sub_769970();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v10;
  sub_BD88(&qword_947460);
  sub_16194(&qword_947468, &qword_947460);
  v30 = v0;
  sub_768720();
  v11 = v8;

  (*(v5 + 8))(v7, v25);
  sub_BEB8(v31);
  sub_763E50();
  sub_75E2F0();

  v12 = sub_769970();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v12;
  v25 = sub_BD88(&unk_947470);
  sub_16194(&unk_94DCC0, &unk_947470);
  v13 = v27;
  sub_768720();

  v14 = v29;
  v15 = *(v28 + 8);
  v15(v13, v29);
  sub_BEB8(v31);
  v28 = v11;
  sub_763E50();
  sub_75E300();

  v16 = sub_769970();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v16;
  sub_768720();

  v15(v13, v14);
  sub_BEB8(v31);
  v17 = sub_7653A0();
  v32 = v17;
  v33 = sub_168F28(&qword_947D00, &type metadata accessor for Feature.iOS);
  v18 = sub_B1B4(v31);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = sub_765C30();
  result = sub_BEB8(v31);
  if (v17)
  {
    sub_763E50();
    sub_75E2A0();

    v20 = sub_769970();
    v32 = v9;
    v33 = &protocol witness table for OS_dispatch_queue;
    v31[0] = v20;
    sub_BD88(&qword_947480);
    sub_16194(&qword_94DCD0, &qword_947480);
    v21 = v22;
    sub_768720();

    (*(v23 + 8))(v21, v24);
    return sub_BEB8(v31);
  }

  return result;
}

void sub_1678E0(uint64_t a1)
{
  v2 = sub_763EA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_9474A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  sub_1ED18(a1, &v20 - v7, &unk_9474A0);
  v9 = (*(v3 + 48))(v8, 1, v2);
  v10 = 0;
  if (v9 != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = sub_763E80();
    v13 = v12;
    v14 = sub_763E90();
    v16 = v15;
    v17 = objc_allocWithZone(type metadata accessor for EmptyStateView());
    sub_6A4468(v11, v13, v14, v16);
    v18 = objc_allocWithZone(sub_75F540());
    v19 = sub_75F530();
    (*(v3 + 8))(v5, v2);
    v10 = v19;
  }

  sub_1666D8(v10);
}

void (*sub_167ADC(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_16941C;
}

void (*sub_167B40(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_169400;
}

void (*sub_167BA4(void *a1))(uint64_t)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_169474;
}

void sub_167C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_947400);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-1] - v5;
  v7 = sub_BD88(&qword_947488);
  __chkstk_darwin(v7 - 8);
  v9 = &v23[-1] - v8;
  v10 = sub_7653A0();
  v23[3] = v10;
  v23[4] = sub_168F28(&qword_947D00, &type metadata accessor for Feature.iOS);
  v11 = sub_B1B4(v23);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v10);
  LOBYTE(v10) = sub_765C30();
  sub_BEB8(v23);
  if (v10)
  {
    sub_16831C();
  }

  else
  {
    sub_75E2C0();
    v12 = sub_758DD0();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_10A2C(v9, &qword_947488);
      v14 = 0;
    }

    else
    {
      v15 = sub_758CB0();
      (*(v13 + 8))(v9, v12);
      v16 = *(v15 + 16);

      v14 = v16 != 0;
    }

    *(a2 + qword_946E58) = v14;
    sub_166D20();
    v17 = sub_166590();
    sub_75E340();
    v18 = sub_75E2D0();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v6, a1, v18);
    (*(v19 + 56))(v6, 0, 1, v18);
    sub_75E290();
    sub_10A2C(v6, &unk_947400);
    v20 = sub_769210();

    [v17 setTitle:v20 forState:0];

    v21 = qword_946E40;
    [*(a2 + qword_946E40) sizeToFit];
    [*(a2 + v21) setNeedsLayout];
  }
}

uint64_t sub_167F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F630);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  sub_768900();
  sub_768ED0();
  sub_32A6C0(a1, 1, v8, v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t (*sub_16808C(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_169050;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_169090;
}

unint64_t sub_16811C@<X0>(uint64_t *a1@<X8>)
{
  sub_75A3C0();
  swift_allocObject();
  v2 = sub_75A3B0();
  a1[3] = &type metadata for ArcadeSeeAllGamesPageGridProvider;
  result = sub_168FC4();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_168174@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArcadeSeeAllGamesPageShelfLayoutSectionProvider;
  result = sub_168F70();
  *(a1 + 32) = result;
  return result;
}

void sub_1681A8(uint64_t a1)
{
  v2 = sub_BD88(&qword_947428);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  sub_5FFAA0(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_761120();
    sub_768900();
    sub_768ED0();
    v6 = v7[1];
    sub_761090();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_16831C()
{
  v1 = v0;
  v2 = sub_75EF50();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_763E50();
  sub_763E70();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = v1;
  v9 = sub_4C7CF4(v6, v5, sub_169098, v7);

  (*(v3 + 8))(v5, v2);
  sub_BE70(0, &qword_947490);
  v10 = [(objc_class *)v9 image];
  v11 = v9;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v15.value.super.isa = v10;
  v15.is_nil = 0;
  v16.value.super.super.isa = v9;
  isa = sub_769840(v18, v15, v16, v17).super.super.isa;
  v13 = [v8 navigationItem];
  [v13 setRightBarButtonItem:isa];
}

void sub_1684F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1690BC();
}

void sub_168558(void *a1)
{
  v1 = a1;
  sub_763EE0();
  sub_166818(0);
}

uint64_t sub_1685B8(uint64_t a1)
{
  v2 = sub_7570A0();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_940A40);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_61B4C(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_61BB0(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_BD88(&qword_940A50);
  sub_50774(&v9[*(v19 + 48)], v18);
  sub_75F250();
  v20 = *(v4 + 48);
  sub_1ED18(v15, v6, &unk_93FD30);
  sub_1ED18(v18, &v6[v20], &unk_93FD30);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_1ED18(v6, v12, &unk_93FD30);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_168F28(&qword_947410, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_7691C0();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10A2C(v15, &unk_93FD30);
      sub_10A2C(v18, &unk_93FD30);
      v27(v12, v2);
      sub_10A2C(v6, &unk_93FD30);
      return v23 & 1;
    }

    sub_10A2C(v15, &unk_93FD30);
    sub_10A2C(v18, &unk_93FD30);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10A2C(v15, &unk_93FD30);
  sub_10A2C(v18, &unk_93FD30);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10A2C(v6, &qword_940A40);
    goto LABEL_9;
  }

  sub_10A2C(v6, &unk_93FD30);
  v23 = 1;
  return v23 & 1;
}

void sub_168A74()
{
  v1 = *(v0 + qword_946E50);
}

void sub_168AD4(uint64_t a1)
{
  v2 = *(a1 + qword_946E50);
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController()
{
  result = qword_946E88;
  if (!qword_946E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_168BE8()
{
  sub_763EE0();
  v1 = *(v0 + qword_946E50);
  *(v0 + qword_946E50) = 0;
  sub_1668E0(v1);
}

id sub_168C7C()
{
  v0 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_BD88(&unk_947400);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = [objc_opt_self() buttonWithType:1];
  sub_75E340();
  v7 = sub_75E2D0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_75E290();
  sub_10A2C(v5, &unk_947400);
  v8 = sub_769210();

  [v6 setTitle:v8 forState:0];

  if (qword_93C4A8 != -1)
  {
    swift_once();
  }

  v9 = sub_76A3F0();
  v10 = sub_BE38(v9, qword_946E20);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v2, v10, v9);
  (*(v11 + 56))(v2, 0, 1, v9);
  sub_76A420();
  v12 = v6;
  [v12 setAlpha:0.0];
  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  [v12 setPointerInteractionEnabled:1];
  return v12;
}

uint64_t sub_168F28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_168F70()
{
  result = qword_947430;
  if (!qword_947430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947430);
  }

  return result;
}

unint64_t sub_168FC4()
{
  result = qword_947438;
  if (!qword_947438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947438);
  }

  return result;
}

uint64_t sub_169018()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_169058()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1690BC()
{
  v1 = v0;
  v2 = sub_75EF50();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18[-1] - v7;
  sub_763EC0();
  sub_763E70();
  (*(v3 + 104))(v5, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v2);
  sub_168F28(&qword_947420, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle);
  sub_769430();
  sub_769430();
  if (v18[0] == v18[5] && v18[1] == v18[6])
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_76A950();
  }

  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);

  v11 = sub_7653A0();
  v18[3] = v11;
  v18[4] = sub_168F28(&qword_947D00, &type metadata accessor for Feature.iOS);
  v12 = sub_B1B4(v18);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v11);
  LOBYTE(v11) = sub_765C30();
  v13 = sub_BEB8(v18);
  if (v11)
  {
    sub_16831C(v13);
  }

  else
  {
    v14 = [v1 navigationItem];
    v15 = [v14 rightBarButtonItem];

    [v15 setSelected:v9 & 1];
  }

  sub_761120();
  sub_768900();
  sub_768ED0();
  v16 = v18[0];
  if (v9)
  {
    sub_761070();
  }

  else
  {
    sub_7610A0();
  }
}

uint64_t sub_169424()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_169478(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupDataSource] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView] = 0;
  swift_weakInit();
  v13 = &v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsScrollObserver] = 0;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v15 = objc_allocWithZone(sub_75FA60());
  *&v4[v14] = sub_75FA50();
  v16 = &v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration];
  *v16 = 0;
  *(v16 + 1) = 1;
  v17 = [objc_allocWithZone(type metadata accessor for ImageHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_iconHeadingView;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_iconHeadingView] = v17;
  v19 = qword_93C4B0;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView];
  v22 = qword_9474B0;
  v23 = [v21 image];
  if (!v23 || (v24 = v23, sub_BE70(0, &qword_947630), v25 = v22, v26 = sub_76A1C0(), v24, v25, (v26 & 1) == 0))
  {
    [v21 setImage:v22];
    [v20 setNeedsLayout];
  }

  v27 = qword_93C4B8;
  v28 = *&v5[v18];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_7666D0();
  v30 = sub_BE38(v29, qword_9474B8);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v12, v30, v29);
  v33 = *(v31 + 56);
  v33(v12, 0, 1, v29);
  sub_2FA970(v12);

  v34 = qword_93C4C0;
  v35 = *&v5[v18];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_16D2A4(&qword_9474D0, v68);
  v36 = OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_16D300(v68, v35 + v36);
  swift_endAccess();
  [v35 setNeedsLayout];

  sub_16D35C(v68);
  [*(*&v5[v18] + OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel) setNumberOfLines:1];
  v37 = [objc_allocWithZone(type metadata accessor for SearchHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_titleHeadingView;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_titleHeadingView] = v37;
  v39 = qword_93C4C8;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_BE38(v29, qword_9474F8);
  v32(v12, v41, v29);
  v33(v12, 0, 1, v29);
  sub_707B9C(v12);

  [*(*&v5[v38] + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_headingLabel) setNumberOfLines:2];
  v42 = type metadata accessor for SearchLockupListCollectionViewCell();
  v67.receiver = v5;
  v67.super_class = v42;
  v43 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  v44 = sub_16ACE8();
  v45 = [objc_allocWithZone(UICollectionView) initWithFrame:v44 collectionViewLayout:{a1, a2, a3, a4}];

  v46 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView;
  v47 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView];
  *&v43[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView] = v45;
  v48 = v45;

  if (!v48)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_764280();
  swift_allocObject();
  *&v43[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsCoordinator] = sub_764220();

  v49 = v43;
  v50 = [v49 contentView];
  [v50 addSubview:*&v49[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_iconHeadingView]];

  v51 = [v49 contentView];
  [v51 addSubview:*&v49[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_titleHeadingView]];

  v52 = *&v43[v46];
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v52 setDelegate:v49];
  v53 = *&v43[v46];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v54 = objc_opt_self();
  v55 = v53;
  v56 = [v54 clearColor];
  [v55 setBackgroundColor:v56];

  v57 = *&v43[v46];
  if (!v57)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for SmallSearchLockupCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = v57;
  sub_769BD0();
  v60 = sub_769210();

  [v59 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v60];

  v61 = *&v43[v46];
  if (!v61)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  type metadata accessor for SeparatorSpacerReusableView();
  v62 = swift_getObjCClassFromMetadata();
  v63 = v61;
  sub_769BD0();
  v64 = sub_769210();

  sub_769BD0();
  v65 = sub_769210();

  [v63 registerClass:v62 forSupplementaryViewOfKind:v64 withReuseIdentifier:v65];

  v66 = [v49 contentView];
  if (*&v43[v46])
  {
    [v66 addSubview:?];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_169C64()
{
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    swift_beginAccess();
    swift_weakLoadStrong();

    sub_764240();

    if (swift_weakLoadStrong())
    {
      sub_7614F0();
      swift_allocObject();
      *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsScrollObserver) = sub_761500();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_169D34()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = sub_759930();
  result = (*(v1 + 8))(v4, v0);
  qword_9474B0 = v5;
  return result;
}

void sub_169E40()
{
  qword_9474E8 = &type metadata for CGFloat;
  unk_9474F0 = &protocol witness table for CGFloat;
  qword_9474D0 = 0x4008000000000000;
}

id sub_169E7C(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_7666D0();
  sub_161DC(v5, a2);
  v6 = sub_BE38(v5, a2);
  v8 = *a3;
  *v6 = *a3;
  *(v6 + 8) = UIFontWeightSemibold;
  (*(*(v5 - 8) + 104))();

  return v8;
}

uint64_t sub_169F38()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_947510);
  v1 = sub_BE38(v0, qword_947510);
  if (qword_93D4C0 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99E650);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_16A000()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_93C4D0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_947510);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11 = sub_766CA0();
  v12 = &protocol witness table for StaticDimension;
  sub_B1B4(&v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v6 = sub_B1B4(v9);
  (*(v1 + 16))(v6, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  sub_34698(&v13, &unk_947528);
  return sub_34698(&v10, &unk_947550);
}

id sub_16A228(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration];
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [result collectionViewLayout];
  [v7 invalidateLayout];

  result = *&v2[v6];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  [result setScrollEnabled:(v5 & 1) == 0];

  return [v2 setNeedsLayout];
}

uint64_t sub_16A304()
{
  v1 = v0;
  v2 = sub_7664F0();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7664A0();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75FF90();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v48 - v9;
  v10 = sub_75D850();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v48 - v15;
  v16 = sub_75CF00();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SearchLockupListCollectionViewCell();
  v69.receiver = v0;
  v69.super_class = v20;
  objc_msgSendSuper2(&v69, "layoutSubviews");
  v21 = [v0 contentView];
  [v21 bounds];
  v50 = v22;

  v23 = [v1 contentView];
  [v23 layoutMargins];

  v60 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration + 8];
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v16, qword_99B898);
  v25 = [v1 traitCollection];
  (*(v17 + 16))(v19, v24, v16);
  v26 = sub_75CE70();
  if ((v28 & 1) == 0 && ((v26 | v27) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v29 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v29 = qword_946938;
    }

    v30 = sub_BE38(v10, v29);
    v31 = v13;
    (*(v11 + 16))(v13, v30, v10);
    v32 = v48;
    (*(v11 + 32))(v48, v31, v10);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v11 + 8))(v32, v10);
  }

  sub_75CDB0();

  (*(v17 + 8))(v19, v16);
  if (__OFSUB__(v60, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_iconHeadingView];
  v68[3] = type metadata accessor for ImageHeadingView();
  v68[4] = &protocol witness table for UIView;
  v68[0] = v33;
  v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_titleHeadingView];
  result = type metadata accessor for SearchHeadingView();
  v67[3] = result;
  v67[4] = &protocol witness table for UIView;
  v67[0] = v34;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView])
  {
    v65[0] = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView];
    sub_BE70(0, &unk_94A790);
    v36 = v33;
    v37 = v34;
    sub_766580();
    v65[3] = sub_766970();
    v65[4] = &protocol witness table for ZeroDimension;
    sub_B1B4(v65);
    sub_766960();
    if (qword_93C4C8 == -1)
    {
LABEL_16:
      v38 = sub_7666D0();
      v39 = sub_BE38(v38, qword_9474F8);
      v40 = v49;
      (*(*(v38 - 8) + 16))(v49, v39, v38);
      v42 = v51;
      v41 = v52;
      (*(v51 + 104))(v40, enum case for FontSource.useCase(_:), v52);
      v64[3] = sub_766CA0();
      v64[4] = &protocol witness table for StaticDimension;
      sub_B1B4(v64);
      v62 = v41;
      v63 = &protocol witness table for FontSource;
      v43 = sub_B1B4(v61);
      (*(v42 + 16))(v43, v40, v41);
      sub_766CB0();
      (*(v42 + 8))(v40, v41);
      v62 = &type metadata for CGFloat;
      v63 = &protocol witness table for CGFloat;
      v61[0] = 0x4030000000000000;
      v44 = v54;
      sub_75FF80();
      v46 = v55;
      v45 = v56;
      (*(v55 + 16))(v53, v44, v56);
      sub_134D8(v68, v65);
      sub_134D8(v67, v64);
      sub_134D8(v66, v61);
      sub_75FFB0();
      swift_allocObject();
      v65[0] = sub_75FFA0();
      (*(v46 + 8))(v44, v45);
      sub_BEB8(v66);
      sub_BEB8(v67);
      sub_BEB8(v68);
      sub_16D25C(&unk_947620, &type metadata accessor for SearchLockupListLayout);
      v47 = v57;
      sub_7672C0();
      (*(v58 + 8))(v47, v59);
    }

LABEL_18:
    swift_once();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_16ACE8()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v7[4] = sub_16C790;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_507AD4;
  v7[3] = &unk_8860A0;
  v4 = _Block_copy(v7);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  return v5;
}

_BYTE *sub_16AE14(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration];
    v5 = *&result[OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_listConfiguration + 8];

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = result;
      v7 = [result contentView];

      if (v7)
      {
        [v7 layoutMargins];
        v10 = sub_16C7B0(v4, v5, a2, v8, v9);
        if (v10)
        {
          v11 = v10;
          v12 = swift_allocObject();
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();
          v14 = v11;
          v15 = v11;

          aBlock[4] = sub_16CC64;
          aBlock[5] = v12;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_4E4820;
          aBlock[3] = &unk_8860C8;
          v16 = _Block_copy(aBlock);

          [v15 setVisibleItemsInvalidationHandler:v16];

          _Block_release(v16);
          v7 = v15;
        }

        else
        {
          v14 = 0;
        }

        return v14;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_16AFFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsScrollObserver);
    v2 = Strong;

    if (v1)
    {
      sub_7614F0();
      sub_75ADE0();
    }
  }
}

id sub_16B2C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchLockupListCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for SearchLockupListCollectionViewCell.ListConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchLockupListCollectionViewCell.ListConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_16B4C8()
{
  swift_beginAccess();
  swift_weakAssign();
  sub_169C64();
}

void (*sub_16B52C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_16B5C4;
}

void sub_16B5C4(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_169C64();
  }

  free(v3);
}

uint64_t sub_16B64C()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_16B6A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

double sub_16B770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, uint64_t a10)
{
  v79 = a8;
  v78 = a7;
  v75 = a5;
  v76 = a6;
  v73 = a3;
  v74 = a4;
  v72 = a1;
  v10 = sub_7664A0();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v80 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75FF90();
  v85 = *(v12 - 8);
  v86 = v12;
  __chkstk_darwin(v12);
  v83 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v66 - v15;
  v88 = sub_762D10();
  v90 = *(v88 - 8);
  __chkstk_darwin(v88);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ImageHeadingView();
  if (qword_93C4B0 != -1)
  {
    swift_once();
  }

  v18 = qword_9474B0;
  if (qword_93C4B8 != -1)
  {
    swift_once();
  }

  v77 = sub_7666D0();
  sub_BE38(v77, qword_9474B8);
  if (qword_93C4C0 != -1)
  {
    swift_once();
  }

  v19 = sub_BE70(0, &qword_93F900);
  v20 = [a9 traitCollection];
  v87 = v19;
  v21 = sub_769E10();

  v22 = objc_opt_self();
  v70 = v21;
  v23 = [v22 configurationWithFont:v21];
  v24 = [v18 imageByApplyingSymbolConfiguration:v23];
  v25 = v24;
  if (v24)
  {
    [v24 size];
  }

  v26 = sub_7670D0();
  swift_allocObject();
  v27 = sub_7670B0();

  v89 = a9;
  v28 = [a9 traitCollection];
  sub_769E10();

  v29 = sub_7653B0();
  *(&v98 + 1) = v29;
  v69 = sub_16D25C(&qword_93F9B0, &type metadata accessor for Feature);
  *&v99 = v69;
  v30 = sub_B1B4(&v97);
  v31 = *(v29 - 8);
  v32 = *(v31 + 104);
  v68 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v66 = v31 + 104;
  v67 = v32;
  v32(v30);
  sub_765C30();
  sub_BEB8(&v97);
  sub_762D00();
  v33 = sub_762CF0();
  v35 = v34;
  v36 = *(v90 + 8);
  v90 += 8;
  v36(v17, v88);
  v37 = *(v35 + 8);

  swift_unknownObjectRetain();
  sub_2FB4BC(v27, &protocol witness table for LayoutViewPlaceholder, v33, v37, qword_9474D0, &v97);

  swift_unknownObjectRelease();
  sub_16C320(&v97, &v102);
  v38 = swift_allocObject();
  sub_16C3BC(&v102, (v38 + 16));
  swift_allocObject();
  v72 = sub_767090();

  swift_unknownObjectRelease();

  sub_BEB8(&v97);
  if (qword_93C4C8 != -1)
  {
    swift_once();
  }

  v39 = v77;
  v40 = sub_BE38(v77, qword_9474F8);
  if (qword_93C4D0 != -1)
  {
    swift_once();
  }

  sub_BE38(v39, qword_947510);
  if (qword_93C4D8 != -1)
  {
    swift_once();
  }

  v41 = [v89 traitCollection];
  v71 = v40;
  sub_769E10();

  *(&v98 + 1) = v29;
  *&v99 = v69;
  v42 = sub_B1B4(&v97);
  v67(v42, v68, v29);
  sub_765C30();
  sub_BEB8(&v97);
  sub_762D00();
  v43 = sub_762CF0();
  v45 = v44;
  v36(v17, v88);
  v46 = swift_allocObject();
  v47 = v76;
  *(v46 + 16) = v75;
  *(v46 + 24) = v47;
  swift_allocObject();

  v48 = sub_767090();
  sub_16C41C(&unk_947528, &v97);
  v49 = swift_allocObject();
  v50 = v100;
  *(v49 + 48) = v99;
  *(v49 + 64) = v50;
  *(v49 + 80) = v101;
  v51 = v98;
  *(v49 + 16) = v97;
  *(v49 + 32) = v51;
  *(v49 + 96) = v43;
  *(v49 + 104) = v45;
  *(v49 + 112) = v48;
  swift_allocObject();
  v52 = sub_767090();
  v53 = swift_allocObject();
  *(v53 + 16) = a10;
  *(v53 + 24) = v78 & 1;
  *(v53 + 32) = v79;
  swift_allocObject();
  v54 = sub_767090();
  *(&v98 + 1) = v26;
  *&v99 = &protocol witness table for LayoutViewPlaceholder;
  v96[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v97 = v72;
  v103 = v26;
  v104 = &protocol witness table for LayoutViewPlaceholder;
  *&v102 = v52;
  v96[3] = v26;
  v96[0] = v54;
  v95[3] = sub_766970();
  v95[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v95);

  sub_766960();
  v55 = v80;
  (*(*(v39 - 8) + 16))(v80, v71, v39);
  v57 = v81;
  v56 = v82;
  (*(v81 + 104))(v55, enum case for FontSource.useCase(_:), v82);
  v94[3] = sub_766CA0();
  v94[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v94);
  v92 = v56;
  v93 = &protocol witness table for FontSource;
  v58 = sub_B1B4(v91);
  (*(v57 + 16))(v58, v55, v56);
  sub_766CB0();
  (*(v57 + 8))(v55, v56);
  v92 = &type metadata for CGFloat;
  v93 = &protocol witness table for CGFloat;
  v91[0] = 0x4030000000000000;
  v59 = v84;
  sub_75FF80();
  v61 = v85;
  v60 = v86;
  (*(v85 + 16))(v83, v59, v86);
  sub_134D8(&v97, v95);
  sub_134D8(&v102, v94);
  sub_134D8(v96, v91);
  sub_75FFB0();
  swift_allocObject();
  v62 = sub_75FFA0();
  (*(v61 + 8))(v59, v60);
  sub_BEB8(v96);
  sub_BEB8(&v102);
  sub_BEB8(&v97);
  *&v97 = v62;
  sub_16D25C(&unk_94A750, &type metadata accessor for SearchLockupListLayout);
  sub_7665A0();
  v64 = v63;

  return v64;
}

uint64_t sub_16C320(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_16C384()
{
  sub_BEB8(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

_OWORD *sub_16C3BC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_16C3DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_16C478()
{
  sub_BEB8(v0 + 16);
  sub_BEB8(v0 + 56);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

void sub_16C4E8(void *a1)
{
  v3 = *(v1 + 32);
  swift_getObjectType();
  sub_16C640(v3, a1);
}

void sub_16C550()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v3 = objc_allocWithZone(sub_75FA60());
  *(v0 + v2) = sub_75FA50();
  sub_76A840();
  __break(1u);
}

void sub_16C640(uint64_t a1, void *a2)
{
  type metadata accessor for SmallLockupView();
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v4 = sub_75CF00();
  v5 = sub_BE38(v4, qword_99B898);
  sub_1FE304(v5, a2);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }
}

uint64_t sub_16C720()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_16C758()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_16C798(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_16C7B0(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, 16.0}];
  v9 = objc_opt_self();
  v10 = 1.0;
  v11 = [v9 fractionalWidthDimension:1.0];
  v12 = [v9 absoluteDimension:16.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  type metadata accessor for SeparatorSpacerReusableView();
  sub_769BD0();
  v15 = v8;
  v16 = sub_769210();

  v17 = [objc_opt_self() supplementaryItemWithLayoutSize:v14 elementKind:v16 containerAnchor:v15];

  v18 = [v9 fractionalWidthDimension:1.0];
  v42 = a2;
  v19 = [v9 fractionalHeightDimension:1.0 / a2];
  v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_BD88(&unk_93F5C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_77D9F0;
  *(v21 + 32) = v17;
  sub_BE70(0, &unk_956250);
  v22 = v17;
  isa = sub_769450().super.isa;

  v24 = [objc_opt_self() itemWithLayoutSize:v20 supplementaryItems:isa];

  [objc_msgSend(a3 "container")];
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26 <= 0.0)
  {
    v29 = &selRef_estimatedDimension_;
    v28 = a1;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v10 = v27;
    swift_unknownObjectRelease();
    v28 = a1;
    if ((a1 & 1) == 0)
    {
      v10 = v10 - a4 - a5;
    }

    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v42];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (v28)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  [v37 setOrthogonalScrollingBehavior:v38];

  return v37;
}

void sub_16CC6C()
{
  v1 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_BD88(&unk_947600);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_BD88(&qword_944CE8);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_objectGraph);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupDataSource);
    if (v13)
    {

      v14 = v13;
      sub_767A40();

      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v11, v6, v7);
        sub_768700();
        v17 = sub_764D80();

        if (!v17)
        {
          (*(v8 + 8))(v11, v7);

          return;
        }

        v18 = sub_BD88(&unk_93F630);
        sub_768860();
        v19 = *(v18 - 8);
        if ((*(v19 + 48))(v3, 1, v18) != 1)
        {
          sub_32A6C0(v17, 1, v12, v3);

          (*(v8 + 8))(v11, v7);
          (*(v19 + 8))(v3, v18);
          return;
        }

        (*(v8 + 8))(v11, v7);

        v15 = &unk_93F980;
        v16 = v3;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7, v9);
    }

    v15 = &unk_947600;
    v16 = v6;
LABEL_7:
    sub_10A2C(v16, v15);
  }
}

uint64_t sub_16CFF0()
{
  v1 = sub_BD88(&unk_947600);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-v2 - 8];
  v4 = sub_BD88(&qword_944CE8);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13[-v7 - 8];
  v9 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_lockupDataSource);
  if (!v9)
  {
    (*(v5 + 56))(v3, 1, 1, v4, v6);
    return sub_10A2C(v3, &unk_947600);
  }

  v10 = v9;
  sub_767A40();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10A2C(v3, &unk_947600);
  }

  result = (*(v5 + 32))(v8, v3, v4);
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    v14 = sub_764F90();
    v15 = sub_16D25C(&qword_947610, &type metadata accessor for Lockup);

    sub_768700();
    sub_764270();

    (*(v5 + 8))(v8, v4);
    return sub_BEB8(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_16D25C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_16D3C4()
{
  result = qword_947638;
  if (!qword_947638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947638);
  }

  return result;
}

id sub_16D420()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [v0 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 delegate];

      if (v5)
      {
        v33 = &OBJC_PROTOCOL____TtP18ASMessagesProvider49UICollectionViewDelegateShelfDisplayingFlowLayout_;
        v6 = swift_dynamicCastObjCProtocolConditional();
        if (!v6)
        {
          goto LABEL_14;
        }

        v7 = [v6 collectionView:v2 layout:v0 shouldProvideBackgroundAtSection:sub_7575D0()];
        swift_unknownObjectRelease();
        if (v7)
        {
          v8 = [v0 collectionView];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 delegate];

            if (v10)
            {
              v32 = &OBJC_PROTOCOL____TtP18ASMessagesProvider49UICollectionViewDelegateShelfDisplayingFlowLayout_;
              v11 = swift_dynamicCastObjCProtocolConditional();
              if (v11)
              {
                [v11 collectionView:v2 layout:v0 insetForBackgroundAtSection:sub_7575D0()];
                v13 = v12;
                v15 = v14;
                swift_unknownObjectRelease();
                isa = sub_757550().super.isa;
                v31.receiver = v0;
                v31.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
                v17 = objc_msgSendSuper2(&v31, "layoutAttributesForItemAtIndexPath:", isa);

                if (v17)
                {
                  [v17 frame];
                  v19 = v18;
                  v21 = v20;
                  v23 = v22;
                  v25 = v24;
                  v26 = sub_769210();
                  v27 = sub_757550().super.isa;
                  v28 = [objc_opt_self() layoutAttributesForDecorationViewOfKind:v26 withIndexPath:v27];

                  v34.origin.x = v19;
                  v34.origin.y = v21;
                  v34.size.width = v23;
                  v34.size.height = v25;
                  v29 = CGRectGetMinY(v34) - v13;
                  [v2 bounds];
                  Width = CGRectGetWidth(v35);
                  v36.origin.x = v19;
                  v36.origin.y = v21;
                  v36.size.width = v23;
                  v36.size.height = v25;
                  [v28 setFrame:{0.0, v29, Width, v15 + v13 + CGRectGetHeight(v36)}];
                  [v28 setZIndex:-1];

                  return v28;
                }

                goto LABEL_11;
              }

LABEL_14:

              swift_unknownObjectRelease();
              return 0;
            }
          }
        }
      }
    }

LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_16D714(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_664498(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 16 * v6);

      v9 = sub_7575D0();
      v10 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
      swift_beginAccess();
      if (*(*(v2 + v10) + 16))
      {
        sub_663D5C(v9);
        if (v11)
        {
          return v8;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_16D814()
{
  v1 = v0;
  v2 = sub_757640();
  v91 = *(v2 - 8);
  __chkstk_darwin(v2);
  v104 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v87 - v5;
  v7 = sub_10E41C(_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  swift_beginAccess();
  v90 = v8;
  *&v0[v8] = v7;

  v9 = sub_10E4FC(_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v102 = v10;
  *&v1[v10] = v9;

  v11 = [v1 collectionView];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v1 collectionView];
  if (!v13 || (v14 = v13, v15 = [v13 delegate], v14, !v15))
  {
LABEL_55:

    return;
  }

  v107 = &OBJC_PROTOCOL____TtP18ASMessagesProvider49UICollectionViewDelegateShelfDisplayingFlowLayout_;
  v16 = swift_dynamicCastObjCProtocolConditional();
  if (!v16)
  {

    swift_unknownObjectRelease();
    return;
  }

  v17 = v16;
  v18 = [v12 numberOfSections];
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

  v19 = v18;
  if (!v18)
  {
LABEL_54:
    swift_unknownObjectRelease();
    goto LABEL_55;
  }

  v20 = 0;
  left = UIEdgeInsetsZero.left;
  v101 = (v91 + 8);
  v97 = (v91 + 16);
  v21 = &selRef_setInterGroupSpacing_;
  v99 = xmmword_77E280;
  v22 = &selRef_setInterGroupSpacing_;
  v94 = v12;
  v92 = v17;
  v93 = v15;
  v88 = v18;
  while (1)
  {
    if ([v17 v21[6]])
    {
      v103 = [v17 collectionView:v12 layout:v1 multiColumnCountAtSection:v20];
      if (v103 >= 2)
      {
        break;
      }
    }

LABEL_10:
    if (++v20 == v19)
    {
      goto LABEL_54;
    }
  }

  v23 = [v17 respondsToSelector:"collectionView:layout:insetForSectionAtIndex:"];
  v24 = left;
  if (v23)
  {
    [v17 collectionView:v12 layout:v1 insetForSectionAtIndex:v20];
    v24 = v25;
  }

  [v17 collectionView:v12 layout:v1 multiColumnMarginAt:v20];
  v27 = v26;
  v28 = [v12 numberOfItemsInSection:v20];
  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (!v28)
  {
    v31 = 1.79769313e308;
LABEL_45:
    v73 = v90;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = *&v1[v73];
    v75 = v106;
    *&v1[v73] = 0x8000000000000000;
    v76 = sub_663D5C(v20);
    v78 = v75[2];
    v79 = (v77 & 1) == 0;
    v70 = __OFADD__(v78, v79);
    v80 = v78 + v79;
    if (v70)
    {
      goto LABEL_61;
    }

    v81 = v77;
    if (v75[3] >= v80)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = v76;
        sub_45B924();
        v76 = v86;
      }
    }

    else
    {
      sub_455684(v80, isUniquelyReferenced_nonNull_native);
      v76 = sub_663D5C(v20);
      if ((v81 & 1) != (v82 & 1))
      {
        goto LABEL_65;
      }
    }

    v19 = v88;
    v21 = &selRef_setInterGroupSpacing_;
    v83 = v106;
    if (v81)
    {
      *(v106[7] + 8 * v76) = v31;
    }

    else
    {
      v106[(v76 >> 6) + 8] |= 1 << v76;
      *(v83[6] + 8 * v76) = v20;
      *(v83[7] + 8 * v76) = v31;
      v84 = v83[2];
      v70 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v70)
      {
        goto LABEL_62;
      }

      v83[2] = v85;
    }

    *&v1[v90] = v83;
    swift_endAccess();
    v22 = &selRef_setInterGroupSpacing_;
    goto LABEL_10;
  }

  v29 = 0;
  v95 = v103 - 1;
  v30 = 0.0;
  v31 = 1.79769313e308;
  v32 = 0.0;
  v96 = v20;
  v33 = v101;
  v100 = v28;
  while (1)
  {
    sub_BD88(&qword_95B250);
    v34 = swift_allocObject();
    *(v34 + 16) = v99;
    *(v34 + 32) = v20;
    *(v34 + 40) = v29;
    sub_757540();
    if (([v17 respondsToSelector:v22[11]] & 1) == 0)
    {
      (*v33)(v6, v2);
      goto LABEL_19;
    }

    swift_unknownObjectRetain();
    isa = sub_757550().super.isa;
    [v17 v22[11]];
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();

    v40 = sub_7575C0();
    v41 = sub_7575C0();
    if (!(v40 / v103))
    {
      v42 = sub_757550().super.isa;
      v43 = type metadata accessor for ShelfDisplayingFlowLayout();
      v105.receiver = v1;
      v105.super_class = v43;
      v44 = objc_msgSendSuper2(&v105, "layoutAttributesForItemAtIndexPath:", v42);

      if (v44)
      {
        [v44 frame];
        MinY = CGRectGetMinY(v108);

        if (v31 >= MinY)
        {
          v31 = MinY;
        }
      }
    }

    v46 = *v97;
    v47 = v104;
    v48 = v2;
    (*v97)(v104, v6, v2);
    v49 = v102;
    swift_beginAccess();
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v106 = *&v1[v49];
    v51 = v106;
    *&v1[v49] = 0x8000000000000000;
    v53 = sub_664498(v47);
    v54 = v51[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      break;
    }

    v57 = v52;
    if (v51[3] >= v56)
    {
      v33 = v101;
      if (v50)
      {
        goto LABEL_31;
      }

      sub_45BA70();
    }

    else
    {
      sub_4558E8(v56, v50);
      v58 = sub_664498(v104);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_64;
      }

      v53 = v58;
    }

    v33 = v101;
LABEL_31:
    v98 = v41 % v103;
    v60 = v24 + (v27 + v37) * (v41 % v103);
    v61 = v106;
    if (v57)
    {
      v62 = (v106[7] + 16 * v53);
      *v62 = v60;
      v62[1] = v32;
      v63 = *v33;
      v2 = v48;
      (*v33)(v104, v48);
    }

    else
    {
      v64 = v1;
      v65 = v6;
      v106[(v53 >> 6) + 8] |= 1 << v53;
      v66 = v91;
      v67 = v104;
      v46(v61[6] + *(v91 + 72) * v53, v104, v48);
      v68 = (v61[7] + 16 * v53);
      v2 = v48;
      *v68 = v60;
      v68[1] = v32;
      v63 = *(v66 + 8);
      v63(v67, v48);
      v69 = v61[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_59;
      }

      v61[2] = v71;
      v6 = v65;
      v1 = v64;
      v33 = v101;
    }

    *&v1[v102] = v61;

    swift_endAccess();
    v63(v6, v2);
    v72 = v32 + v39;
    if (v30 > v32 + v39)
    {
      v72 = v30;
    }

    if (v98 == v95)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v72;
    }

    if (v98 == v95)
    {
      v32 = v72;
    }

    v12 = v94;
    v17 = v92;
    v20 = v96;
    v22 = &selRef_setInterGroupSpacing_;
LABEL_19:
    if (v100 == ++v29)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_76A9B0();
  __break(1u);
LABEL_65:
  sub_76A9B0();
  __break(1u);
}

id sub_16E100()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  *&v0[v1] = sub_10E41C(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnOrigins;
  *&v0[v2] = sub_10E4FC(_swiftEmptyArrayStorage);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v3 = objc_msgSendSuper2(&v8, "init");
  sub_BE70(0, &qword_947680);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_769210();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  return v5;
}

void sub_16E2F8(double a1, double a2, double a3, double a4)
{
  v52 = sub_757640();
  v9 = *(v52 - 8);
  __chkstk_darwin(v52);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v44 - v13;
  v14 = type metadata accessor for ShelfDisplayingFlowLayout();
  v46 = v4;
  v55.receiver = v4;
  v55.super_class = v14;
  v15 = objc_msgSendSuper2(&v55, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v15)
  {
    return;
  }

  v16 = v15;
  sub_BE70(0, &qword_944B40);
  v17 = sub_769460();

  v54 = _swiftEmptyArrayStorage;
  if (v17 >> 62)
  {
    v18 = sub_76A860();
    v19 = v46;
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_25:
    v45 = _swiftEmptyArrayStorage;
LABEL_26:
    v53 = v17;
    sub_10A6C0(v45);
    return;
  }

  v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  v19 = v46;
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_4:
  if (v18 >= 1)
  {
    v20 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
    v21 = v17 & 0xC000000000000001;
    v49 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnOrigins;
    v50 = v11;
    swift_beginAccess();
    v44 = v20;
    swift_beginAccess();
    v22 = 0;
    v48 = "multiColumnOrigins";
    v23 = (v9 + 8);
    v45 = _swiftEmptyArrayStorage;
    v47 = v17 & 0xC000000000000001;
    while (1)
    {
      v24 = v21 ? sub_76A770() : *(v17 + 8 * v22 + 32);
      v25 = v24;
      if (![v24 representedElementCategory])
      {
        break;
      }

LABEL_7:
      if (v18 == ++v22)
      {
        goto LABEL_26;
      }
    }

    v26 = [v25 indexPath];
    v27 = v51;
    sub_757590();

    v28 = sub_16D420();
    v29 = *v23;
    (*v23)(v27, v52);
    if (v28)
    {
      v30 = v28;
      sub_769440();
      if (*(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v54 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();

      v45 = v54;
      v19 = v46;
    }

    v31 = [v25 indexPath];
    v32 = v50;
    sub_757590();

    v33 = *&v19[v49];
    if (*(v33 + 16))
    {

      v34 = sub_664498(v32);
      if (v35)
      {
        v36 = *(v33 + 56) + 16 * v34;
        v37 = *v36;
        v38 = *(v36 + 8);

        v39 = sub_7575D0();
        v40 = *&v19[v44];
        if (*(v40 + 16))
        {
          v41 = sub_663D5C(v39);
          if (v42)
          {
            v43 = *(*(v40 + 56) + 8 * v41);

            v29(v32, v52);

            [v25 frame];
            [v25 setFrame:{v37, v38 + v43}];

LABEL_23:
            v21 = v47;
            goto LABEL_7;
          }
        }
      }

      else
      {
      }
    }

    v29(v32, v52);
    goto LABEL_23;
  }

  __break(1u);
}

id sub_16E814()
{
  v1 = sub_757640();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_757550().super.isa;
  v6 = type metadata accessor for ShelfDisplayingFlowLayout();
  v15.receiver = v0;
  v15.super_class = v6;
  v7 = objc_msgSendSuper2(&v15, "layoutAttributesForItemAtIndexPath:", isa);

  if (v7)
  {
    v8 = [v7 indexPath];
    sub_757590();

    v9 = sub_16D714(v4);
    v11 = v10;
    v13 = v12;
    (*(v2 + 8))(v4, v1);
    if ((v13 & 1) == 0)
    {
      [v7 frame];
      [v7 setFrame:{*&v9, v11}];
    }
  }

  return v7;
}

void *sub_16ED6C(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v9 = objc_msgSendSuper2(&v18, "invalidationContextForBoundsChange:", a1, a2, a3, a4);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = [v4 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;

    if (v14 != a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0.0;
    if (a3 != 0.0)
    {
LABEL_6:
      [v10 setInvalidateFlowLayoutAttributes:1];
      [v10 setInvalidateFlowLayoutDelegateMetrics:1];
      return v10;
    }
  }

  if (v16 != a4)
  {
    goto LABEL_6;
  }

  return v10;
}

id sub_16EF08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_16EFE0(uint64_t a1, int a2, char a3, char a4)
{
  v5 = v4;
  v48 = a2;
  v9 = sub_BD88(&qword_947688);
  __chkstk_darwin(v9 - 8);
  v50 = &v47 - v10;
  v11 = sub_756EB0();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel];
  v49 = a1;
  if (a3)
  {
    sub_75A470();
    if (a4)
    {
      v19 = [v5 traitCollection];
      v20 = sub_7699E0();

      goto LABEL_7;
    }
  }

  else
  {
    sub_75A4A0();
    v21 = [v5 traitCollection];
    v22 = sub_657738(v14, 0, v21);

    (*(v12 + 8))(v14, v11);
    v23 = [v5 traitCollection];
    v24 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v22];
    v47 = [v22 length];
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = v23;
    *(v17 + 4) = v24;
    v17[40] = 1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_119AC;
    *(v25 + 24) = v17;
    v55 = sub_2636C;
    v56 = v25;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_10C1C;
    v54 = &unk_886250;
    v26 = _Block_copy(&aBlock);
    v12 = v56;
    v27 = v23;
    v11 = v24;

    [v22 enumerateAttributesInRange:0 options:v47 usingBlock:{0x100000, v26}];

    _Block_release(v26);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v20 = 0;
LABEL_7:
  v28 = [v5 traitCollection];
  v29 = sub_657738(v17, v20 & 1, v28);

  (*(v12 + 8))(v17, v11);
  v30 = [v5 traitCollection];
  v31 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v29];
  v47 = [v29 length];
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = v30;
  *(v32 + 32) = v31;
  *(v32 + 40) = 1;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_266A8;
  *(v33 + 24) = v32;
  v55 = sub_26694;
  v56 = v33;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_10C1C;
  v54 = &unk_8862C8;
  v34 = _Block_copy(&aBlock);
  v35 = v30;
  v11 = v31;

  [v29 enumerateAttributesInRange:0 options:v47 usingBlock:{0x100000, v34}];

  _Block_release(v34);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
    return result;
  }

LABEL_8:
  sub_1A532C(v11);
  v37 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  v38 = *(v18 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed);
  v39 = v48;
  *(v18 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed) = v48 & 1;
  if (v39)
  {
    v40 = *(v18 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines);
  }

  else
  {
    v40 = 0;
  }

  [*(v18 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setNumberOfLines:v40];
  if (v38 != *(v18 + v37))
  {
    sub_1A5974();
  }

  v41 = sub_75A4B0();
  v42 = &v5[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitle];
  *v42 = v41;
  v42[1] = v43;

  sub_656D08();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtwork] = sub_75A460();

  sub_656D08();

  v44 = v50;
  sub_75A490();
  v45 = sub_75A480();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_16F6F8(v44, &v5[v46]);
  swift_endAccess();
  sub_656D08();
  sub_16F768(v44);
  return [v5 setNeedsLayout];
}

uint64_t sub_16F6E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_16F6F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_947688);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_16F768(uint64_t a1)
{
  v2 = sub_BD88(&qword_947688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_16F7E0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_76A920();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D0F8 != -1)
  {
    swift_once();
  }

  v13 = sub_766CA0();
  sub_BE38(v13, qword_99DAE8);
  swift_getObjectType();
  sub_766470();
  sub_766700();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for SmallLockupView();
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v14 = sub_75CF00();
  v15 = sub_BE38(v14, qword_99B898);
  sub_1FE304(v15, a7);
  return a1;
}

uint64_t sub_16F9C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v2 = sub_75CF00();
  sub_BE38(v2, qword_99B898);
  sub_75CDD0();
  sub_7601D0();
  v3 = sub_7601F0();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_16FB18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_16FB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v15 - 8);
  v17 = &v30 - v16;
  v18 = sub_BD88(&unk_948730);
  *&v19 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v21 = &v30 - v20;
  v22 = [v3 contentView];
  [v22 layoutMargins];
  [v22 setLayoutMargins:?];

  v23 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34SmallLockupCollectionViewTableCell_lockupView];
  v24 = sub_BD88(&unk_948740);
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_758C70();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = sub_75BD30();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = sub_BD88(&unk_9457F0);
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = sub_765870();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  sub_4A18A4(a1, v23, v21, a3, 0, 0, v17, v14, v8, v11);
  sub_10A2C(v8, &unk_9457D0);
  v23[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1FD89C();
  [v23 setNeedsLayout];
  sub_10A2C(v11, &unk_94AC40);
  sub_10A2C(v14, &unk_9457E0);
  sub_10A2C(v17, &unk_94A780);
  return sub_10A2C(v21, &unk_948730);
}

id sub_170004()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchCollectionLayoutAttributes();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1700CC()
{
  result = qword_947720;
  if (!qword_947720)
  {
    sub_7613D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947720);
  }

  return result;
}

uint64_t sub_170124(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7687C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7687B0();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v11 = objc_opt_self();
    v12 = a1;
    v13 = [v11 proxyForPlayer:v12];
    v14 = [v13 utilityService];

    v15 = [objc_opt_self() currentGame];
    v16 = [v15 internal];

    v17 = getpid();
    sub_10E1F8(_swiftEmptyArrayStorage);
    isa = sub_7690E0().super.isa;

    [v14 openDashboardAsRemoteAlertForGame:v16 hostPID:v17 deeplink:isa];
    swift_unknownObjectRelease();

    (*(v7 + 104))(v9, enum case for ActionOutcome.performed(_:), v6);
    sub_768F60();

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v25 = a3;
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v20 = sub_768FF0();
    sub_BE38(v20, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    v21 = swift_allocObject();
    v24 = xmmword_77B6D0;
    *(v21 + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    sub_768790();
    sub_75C5D0();
    swift_allocObject();
    v22 = sub_75C5C0();
    if (v22)
    {
      sub_72D7F0(v22, 1, a2);
      sub_768F00();
    }

    else
    {
      *(swift_allocObject() + 16) = v24;
      sub_768540();
      sub_768EA0();

      sub_17070C();
      swift_allocError();
      *v23 = 1;
      sub_768F50();
    }
  }
}

uint64_t sub_1705DC(uint64_t a1, uint64_t a2)
{
  sub_BD88(&qword_94DDC0);
  v3 = sub_768F90();
  sub_758BB0();
  v6[3] = sub_12EA98();
  v6[4] = &protocol witness table for OS_dispatch_queue;
  v6[0] = sub_769970();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;

  sub_758B60();

  sub_BEB8(v6);
  return v3;
}

uint64_t sub_1706C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_17070C()
{
  result = qword_947728;
  if (!qword_947728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947728);
  }

  return result;
}

unint64_t sub_170774()
{
  result = qword_947730;
  if (!qword_947730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947730);
  }

  return result;
}

id sub_1707C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_75A500();
  if (v5)
  {
    v6 = sub_769210();
  }

  else
  {
    v6 = 0;
  }

  [v3 setAccessibilityLabel:v6];

  v7 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_titleLabel];
  sub_75A510();
  v8 = sub_769210();

  [v7 setText:v8];

  v9 = sub_75A520();
  if (v9)
  {
    sub_765260();
    v25 = v10;
    v26 = v11;

    *&v12 = v25;
    *(&v12 + 1) = v26;
  }

  else
  {
    v12 = 0uLL;
  }

  v13 = &v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize];
  *v13 = v12;
  v13[16] = v9 == 0;
  v14 = sub_75A520();
  if (v14)
  {
  }

  v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_hasArtwork] = v14 != 0;
  v15 = sub_75A520();
  if (v15)
  {
    sub_170A5C(v15, a2);
  }

  else
  {
    v16 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView];
    sub_759190();
    [v16 setHidden:1];
  }

  v17 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView];
  v18 = sub_75A4E0();
  [v17 setTintColor:v18];

  v19 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_tapAction];
  if (v19)
  {
    v20 = objc_allocWithZone(UITapGestureRecognizer);

    v21 = [v20 initWithTarget:v3 action:"handleTap"];
    v22 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_gestureRecognizer];
    *&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_gestureRecognizer] = v21;
    v23 = v21;

    if (v23)
    {
      [v3 addGestureRecognizer:v23];
      sub_F704(v19);
    }

    else
    {
      sub_F704(v19);
    }
  }

  else if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_gestureRecognizer])
  {
    [v3 removeGestureRecognizer:?];
  }

  return [v3 setNeedsLayout];
}

uint64_t sub_170A5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_760730();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v15 = sub_765240();
  v16 = *(v15 - 8);
  result = __chkstk_darwin(v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v26 = a2;

    sub_765250();
    v24 = sub_765210();
    (*(v16 + 8))(v19, v15);
    v20 = [v3 traitCollection];
    v25 = v3;
    v21 = v3[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize + 16];
    if (sub_769A00())
    {
      sub_173BE4(v20, v12);
    }

    else if (v21)
    {
      sub_173F1C();
    }

    else
    {
      sub_173FBC();
    }

    v22 = v24;

    (*(v9 + 32))(v14, v12, v8);
    sub_760710();
    (*(v9 + 8))(v14, v8);
    sub_765330();
    v23 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView];
    sub_7652E0();
    sub_7591B0();
    [v23 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();
    [v23 setContentMode:v22];
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A050();
  }

  return result;
}

void sub_170E2C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_765240();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_765250();
    v9 = sub_765210();
    (*(v6 + 8))(v8, v5);
    v10 = sub_175F58(&unk_9477D0, type metadata accessor for BrickCollectionViewCell);
    (*(v10 + 24))(ObjectType, v10);
    sub_765330();
    v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v11 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();
    [v11 setContentMode:v9];
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A050();
  }
}

void sub_1710E0(uint64_t a1)
{
  v3 = sub_7652D0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_765240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_765250();
    v8 = sub_765210();
    (*(v5 + 8))(v7, v4);
    sub_765330();
    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_quoteView);
    v10 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView;
    v11 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v11 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();

    [*(v9 + v10) setContentMode:v8];
    v12 = *(v9 + v10);
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView);
    v13 = v12;
    sub_75A050();
  }
}

void sub_171378(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_765240();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  if (a1)
  {

    sub_765250();
    sub_765200();
    sub_175F58(&qword_950970, &type metadata accessor for Artwork.Crop);
    v12 = sub_7691C0();
    v13 = *(v6 + 8);
    v13(v8, v5);
    if (v12)
    {
      v14 = 6;
    }

    else
    {
      v14 = sub_765210();
    }

    v13(v11, v5);
    sub_765330();
    v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v15 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();
    [v15 setContentMode:v14];
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A050();
  }
}

void sub_171678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_75CF00();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_765240();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = a2;

    sub_765250();
    v15 = sub_765210();
    (*(v12 + 8))(v14, v11);
    v16 = v15;
    v17 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView);
    v18 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v8 + 16))(v10, v17 + v18, v7);
    sub_75CDD0();
    (*(v8 + 8))(v10, v7);
    sub_765330();
    v19 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v20 = *(v17 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v20 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();

    [*(v17 + v19) setContentMode:v16];
    v21 = *(v17 + v19);
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView);
    v22 = v21;
    sub_75A050();
  }
}

void sub_1719F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = v3;
  ObjectType = swift_getObjectType();
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v28 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_944E50);
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = sub_75D6B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_765240();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v25 = a2;

    sub_765250();
    v24 = sub_765210();
    (*(v16 + 8))(v18, v15);
    v19 = v29;
    v20 = [v29 traitCollection];
    sub_278FB0(v14);

    sub_75D680();
    (*(v12 + 8))(v14, v11);
    v21 = v24;
    v30 = v19;
    sub_7592B0();
    (*(v26 + 8))(v10, v8);
    sub_765330();
    v22 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_artworkView];
    sub_7652E0();
    sub_7591B0();
    [v22 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();
    [v22 setContentMode:v21];
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A050();
  }
}

void sub_171DF4(uint64_t a1)
{
  v3 = sub_7652D0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_765240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_765250();
    v8 = sub_765210();
    (*(v5 + 8))(v7, v4);
    sub_765330();
    v9 = *(v1 + qword_99D530);
    sub_7652E0();
    sub_7591B0();
    [v9 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();
    [v9 setContentMode:v8];
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A050();
  }
}

void sub_17205C(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_7652D0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_765240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_765250();
    v8 = sub_765210();
    (*(v5 + 8))(v7, v4);
    if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_6456A8();
      swift_unknownObjectRelease();
    }

    sub_765330();
    v9 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView;
    v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView);
    sub_7652E0();
    sub_7591B0();
    [v10 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();

    [*(v1 + v9) setContentMode:v8];
    v11 = *(v1 + v9);
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView);
    v12 = v11;
    sub_75A050();
  }
}

void sub_17233C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_75CF00();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_765240();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = a2;

    sub_765250();
    v15 = v3;
    v16 = sub_765210();
    (*(v12 + 8))(v14, v11);
    v17 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView;
    v18 = v15;
    v19 = *(*(v15 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView);
    v20 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v8 + 16))(v10, v19 + v20, v7);
    sub_75CDD0();
    (*(v8 + 8))(v10, v7);
    sub_765330();
    v21 = *(*(v18 + v17) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v21 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();

    [*(*(v18 + v17) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView) setContentMode:v16];
    v22 = *(*(v18 + v17) + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView);
    v23 = v22;
    sub_75A050();
  }
}

void sub_1726E4(uint64_t a1)
{
  v3 = sub_7652D0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_765240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_765250();
    v8 = sub_765210();
    (*(v5 + 8))(v7, v4);
    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView);
    swift_beginAccess();
    sub_765330();
    v10 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v11 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v11 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();

    [*(v9 + v10) setContentMode:v8];
    v12 = *(v9 + v10);
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView);
    v13 = v12;
    sub_75A050();
  }
}

void sub_172994(uint64_t a1)
{
  v3 = sub_7652D0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_765240();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_765250();
    v8 = sub_765210();
    (*(v5 + 8))(v7, v4);
    if (qword_93C620 != -1)
    {
      swift_once();
    }

    v9 = sub_757CA0();
    sub_BE38(v9, qword_99B7F8);
    sub_757C10();
    sub_765330();
    v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView);
    v11 = OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_iconView;
    v12 = *(*(v10 + OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_iconView) + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v12 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();

    [*(*(v10 + v11) + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView) setContentMode:v8];
    v13 = *(*(v10 + v11) + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
    sub_759210();
    sub_175F58(&qword_945810, &type metadata accessor for ArtworkView);
    v14 = v13;
    sub_75A050();
  }
}

char *sub_172C88(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - v11;
  v13 = sub_760AD0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v17 - 8);
  v19 = &v59 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v21 = sub_75C840();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_93DAA8 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  v24 = sub_BE38(v23, qword_99F7F0);
  v25 = *(v23 - 8);
  v63 = *(v25 + 16);
  v64 = v24;
  v63(v19);
  v62 = *(v25 + 56);
  v62(v19, 0, 1, v23);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v26 = objc_allocWithZone(sub_75BB20());
  *&v5[v22] = sub_75BB10();
  v27 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_shadowView;
  sub_758E80();
  *&v5[v27] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_roundedCornerView;
  sub_75CD70();
  *&v5[v28] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_hasArtwork] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_clickAction] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_objectGraph] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_gestureRecognizer] = 0;
  v30 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_tapAction];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView;
  sub_759210();
  *&v5[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v65.receiver = v5;
  v65.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  ObjectType = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_roundedCornerView;
  v33 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_roundedCornerView];
  sub_BE70(0, &qword_93E540);
  v34 = v32;
  v35 = v33;
  v36 = sub_76A090();
  [v35 setBackgroundColor:v36];

  v60 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_shadowView;
  v37 = qword_93C530;
  v38 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_shadowView];
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = sub_765080();
  v40 = sub_BE38(v39, qword_99B4F0);
  v41 = *(v39 - 8);
  (*(v41 + 16))(v12, v40, v39);
  (*(v41 + 56))(v12, 0, 1, v39);
  sub_758E60();

  v42 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_titleLabel;
  [*&v34[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_titleLabel] setNumberOfLines:1];
  v43 = *&v34[v42];
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 labelColor];
  [v45 setTextColor:v46];

  v47 = *&v34[v42];
  (v63)(v19, v64, v23);
  v62(v19, 0, 1, v23);
  v48 = v47;
  sub_75BA40();

  v49 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView;
  v50 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView];
  v51 = [v44 clearColor];
  sub_7590B0();

  v52 = [v34 contentView];
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v53 = [v34 contentView];
  [v53 addSubview:*&v34[v60]];

  v54 = [v34 contentView];
  [v54 addSubview:*(ObjectType + v32)];

  v55 = [v34 contentView];
  [v55 addSubview:*&v34[v49]];

  v56 = [v34 contentView];
  [v56 addSubview:*&v34[v42]];

  sub_BD88(&qword_9477F0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_77DC20;
  *(v57 + 32) = sub_7676E0();
  *(v57 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v57 + 48) = sub_767B80();
  *(v57 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v57 + 64) = sub_7677C0();
  *(v57 + 72) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_769F20();

  swift_unknownObjectRelease();

  return v34;
}

double sub_173464()
{
  v1 = v0;
  v2 = sub_760730();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v15 - v8;
  v10 = [v0 traitCollection];
  v11 = v1[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize + 16];
  if (sub_769A00())
  {
    sub_173BE4(v10, v5);
  }

  else if (v11)
  {
    sub_173F1C();
  }

  else
  {
    sub_173FBC();
  }

  (*(v3 + 32))(v9, v5, v2);
  sub_760710();
  v13 = v12;
  (*(v3 + 8))(v9, v2);
  return v13;
}

uint64_t sub_173604()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7593D0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews", v5);
  sub_173868(v16);
  sub_B170(v16, v16[3]);
  [v1 bounds];
  v8 = [v1 traitCollection];
  sub_7673E0();

  sub_BEB8(v16);
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_shadowView];
  [v1 bounds];
  [v9 setFrame:?];
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_roundedCornerView];
  [v1 bounds];
  [v10 setFrame:?];
  [v1 bounds];
  CGRectGetHeight(v18);
  v11 = enum case for CornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v7, enum case for CornerStyle.continuous(_:), v3);
  sub_75CCD0();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v12(v7, v11, v3);
  sub_758E70();
  return (v13)(v7, v3);
}

uint64_t sub_173868@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_760730();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = v23 - v10;
  v12 = [v1 traitCollection];
  v13 = v2[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize + 16];
  if (sub_769A00())
  {
    sub_173BE4(v12, v7);
  }

  else if (v13)
  {
    sub_173F1C();
  }

  else
  {
    sub_173FBC();
  }

  (*(v5 + 32))(v11, v7, v4);
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_hasArtwork])
  {
    v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView];
    v15 = sub_759210();
    v16 = sub_175F58(&unk_93E520, &type metadata accessor for ArtworkView);
    v17 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v23[6] = 0;
    v23[7] = 0;
  }

  v23[8] = v15;
  v23[9] = v16;
  v23[5] = v14;
  v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_titleLabel];
  v23[3] = sub_75BB20();
  v23[4] = &protocol witness table for UILabel;
  v23[0] = v18;
  v19 = sub_760750();
  swift_allocObject();
  v20 = v18;
  v21 = sub_760740();
  a1[3] = v19;
  result = sub_175F58(&unk_9477E0, &type metadata accessor for RibbonBarItemCellLayout);
  a1[4] = result;
  *a1 = v21;
  return result;
}

void sub_173BE4(objc_class *a1@<X3>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v14[0] = sub_766690();
  v3 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7664A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DAA8 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, qword_99F7F0);
  (*(*(v10 - 8) + 16))(v9, v11, v10);
  (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
  v12.super.isa = a1;
  isa = sub_766490(v12).super.isa;
  (*(v7 + 8))(v9, v6);
  [(objc_class *)isa lineHeight];
  sub_7666A0();
  sub_766650();
  (*(v3 + 8))(v5, v14[0]);
  v14[35] = &type metadata for Double;
  v14[36] = &protocol witness table for Double;
  v14[31] = &protocol witness table for Double;
  v14[32] = 0x4020000000000000;
  v14[30] = &type metadata for Double;
  v14[27] = 0x4024000000000000;
  v14[25] = &type metadata for Double;
  v14[26] = &protocol witness table for Double;
  v14[21] = &protocol witness table for Double;
  v14[22] = 0x402C000000000000;
  v14[20] = &type metadata for Double;
  v14[16] = &protocol witness table for Double;
  v14[17] = 0;
  v14[15] = &type metadata for Double;
  v14[11] = &protocol witness table for Double;
  v14[12] = 0;
  v14[10] = &type metadata for Double;
  v14[6] = &protocol witness table for Double;
  v14[7] = 0x4010000000000000;
  v14[5] = &type metadata for Double;
  v14[2] = 0x4010000000000000;
  sub_760700();
}

uint64_t sub_1741FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_BD88(&unk_93F630);
    sub_768860();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {

      return sub_10A2C(v5, &unk_93F980);
    }

    else
    {
      sub_32A6C0(a2, 1, v7, v5);

      return (*(v9 + 8))(v5, v8);
    }
  }

  return result;
}

uint64_t type metadata accessor for RibbonBarItemCollectionViewCell()
{
  result = qword_9477B0;
  if (!qword_9477B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1744A4()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_17458C()
{
  sub_759050();
  sub_759210();
  sub_175F58(&qword_945810, &type metadata accessor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_174624(uint64_t a1)
{
  result = sub_175F58(&qword_9477C8, type metadata accessor for RibbonBarItemCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

void *sub_17467C(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = sub_7664A0();
  v115 = *(v10 - 8);
  v116 = v10;
  __chkstk_darwin(v10);
  v114 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766CA0();
  v118 = *(v12 - 8);
  v119 = v12;
  __chkstk_darwin(v12);
  v117 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_BD88(&qword_943D30);
  v14 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v113 - v15;
  v140 = sub_766AF0();
  v16 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v138 = &v113 - v19;
  __chkstk_darwin(v20);
  v137 = &v113 - v21;
  __chkstk_darwin(v22);
  v136 = &v113 - v23;
  __chkstk_darwin(v24);
  v135 = &v113 - v25;
  __chkstk_darwin(v26);
  v134 = &v113 - v27;
  v133 = sub_766D70();
  v28 = *(v133 - 8);
  __chkstk_darwin(v133);
  *&v153 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_760730();
  v30 = *(v144 - 8);
  __chkstk_darwin(v144);
  v32 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v113 - v34;
  __chkstk_darwin(v36);
  v121 = &v113 - v37;
  __chkstk_darwin(v38);
  v122 = &v113 - v39;
  if (a1 >> 62)
  {
LABEL_55:
    v40 = sub_76A860();
  }

  else
  {
    v40 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v145 = a2;
  if (v40)
  {
    v152 = v14;
    v175 = _swiftEmptyArrayStorage;
    v143 = v40;
    sub_143C5C(0, v40 & ~(v40 >> 63), 0);
    if (v143 < 0)
    {
      __break(1u);
LABEL_57:
      swift_once();
      goto LABEL_43;
    }

    v130 = v35;
    v131 = v32;
    v35 = v175;
    v4 = JUMeasuringSizeExpanded[0];
    v5 = JUMeasuringSizeExpanded[1];
    v41 = sub_BE70(0, &qword_93F900);
    v42 = v30;
    v43 = 0;
    v44 = a1;
    v128 = a1 & 0xC000000000000001;
    v129 = v41;
    v120 = v42;
    v126 = (v42 + 32);
    v127 = v16 + 8;
    v124 = (v152 + 8);
    v125 = (v28 + 16);
    v123 = (v28 + 8);
    v132 = a1;
    v16 += 8;
    do
    {
      if (v128)
      {
        v45 = sub_76A770();
      }

      else
      {
        v45 = *(v44 + 8 * v43 + 32);
      }

      v152 = v35;
      v46 = sub_75A510();
      v148 = v47;
      v149 = v46;
      v48 = sub_75A520();
      if (v48)
      {
        sub_765260();
        v50 = v49;
        v52 = v51;

        v146 = v52;
        v147 = v50;
      }

      else
      {
        v146 = 0;
        v147 = 0;
      }

      v151 = v45;
      v53 = sub_75A520();
      if (v53)
      {
      }

      if (qword_93DAA8 != -1)
      {
        swift_once();
      }

      v54 = sub_7666D0();
      sub_BE38(v54, qword_99F7F0);
      v55 = sub_769E10();
      v56 = v139;
      sub_766AE0();
      v57 = v138;
      v150 = v55;
      sub_766AD0();
      v58 = *v16;
      v59 = v140;
      (*v16)(v56, v140);
      v60 = v137;
      sub_766A30();
      v58(v57, v59);
      v61 = v136;
      sub_766A90();
      v58(v60, v59);
      v62 = v135;
      sub_766A80();
      v58(v61, v59);
      sub_766AA0();
      v58(v62, v59);
      v63 = v145;
      sub_766D50();
      sub_766D80();
      if (sub_769A00())
      {
        v64 = v131;
        sub_173BE4(v63, v131);
        v65 = v130;
      }

      else
      {
        v65 = v130;
        v64 = v131;
        if (v48)
        {
          sub_769D70();
          v174 = &protocol witness table for Double;
          *(&v173 + 1) = &type metadata for Double;
          v171 = &protocol witness table for Double;
          *&v172 = 0x4020000000000000;
          v170 = &type metadata for Double;
          v169[0] = 0x4024000000000000;
          v168 = &protocol witness table for Double;
          v167 = &type metadata for Double;
          v165 = &protocol witness table for Double;
          v166 = 0x4028000000000000;
          v164 = &type metadata for Double;
          v162 = &protocol witness table for Double;
          v163 = 0x401C000000000000;
          v161 = &type metadata for Double;
          v159 = &protocol witness table for Double;
          v160 = 0x401C000000000000;
          v158 = &type metadata for Double;
          v156 = &protocol witness table for Double;
          v157 = 0;
          v155 = &type metadata for Double;
          v154 = 0;
        }

        else
        {
          v174 = &protocol witness table for Double;
          *(&v173 + 1) = &type metadata for Double;
          v171 = &protocol witness table for Double;
          *&v172 = 0x4020000000000000;
          v170 = &type metadata for Double;
          v169[0] = 0x4024000000000000;
          v168 = &protocol witness table for Double;
          v167 = &type metadata for Double;
          v165 = &protocol witness table for Double;
          v166 = 0x4024000000000000;
          v164 = &type metadata for Double;
          v162 = &protocol witness table for Double;
          v163 = 0x401C000000000000;
          v161 = &type metadata for Double;
          v159 = &protocol witness table for Double;
          v160 = 0x401C000000000000;
          v158 = &type metadata for Double;
          v156 = &protocol witness table for Double;
          v157 = 0x4024000000000000;
          v155 = &type metadata for Double;
          v154 = 0x4024000000000000;
        }

        sub_760700();
      }

      (*v126)(v65, v64, v144);
      if (v53)
      {
        v66 = sub_75AB90();
        swift_allocObject();
        v67 = sub_75AB80();
        *(&v173 + 1) = v66;
        v174 = sub_175F58(&qword_93F440, &type metadata accessor for EmptyPlaceable);
        *&v172 = v67;
      }

      else
      {
        v174 = 0;
        v172 = 0u;
        v173 = 0u;
      }

      v68 = v133;
      v170 = v133;
      v171 = &protocol witness table for LabelPlaceholder;
      v69 = sub_B1B4(v169);
      v70 = v153;
      (*v125)(v69, v153, v68);
      sub_760750();
      swift_allocObject();
      *&v172 = sub_760740();
      sub_175F58(&qword_943D38, &type metadata accessor for RibbonBarItemCellLayout);
      v71 = v141;
      sub_766730();
      swift_getOpaqueTypeConformance2();
      v72 = v142;
      sub_7673F0();
      v74 = v73;

      (*v124)(v71, v72);
      (*v123)(v70, v68);
      v35 = v152;
      v175 = v152;
      v76 = *(v152 + 2);
      v75 = *(v152 + 3);
      if (v76 >= v75 >> 1)
      {
        sub_143C5C((v75 > 1), v76 + 1, 1);
        v35 = v175;
      }

      ++v43;
      *(v35 + 2) = v76 + 1;
      *&v35[8 * v76 + 32] = v74;
      a2 = v63;
      v44 = v132;
    }

    while (v143 != v43);
    v30 = v120;
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v77 = v121;
  if (sub_769A00())
  {
    sub_173BE4(a2, v77);
  }

  else
  {
    sub_173F1C();
  }

  a1 = v122;
  v78 = v77;
  v79 = v144;
  (*(v30 + 32))(v122, v78, v144);
  sub_760720();
  (*(v30 + 8))(a1, v79);
  v30 = *(v35 + 2);
  if (!v30)
  {
    goto LABEL_51;
  }

  v32 = 0;
  v80 = 0.0;
  v14 = &unk_93F5C0;
  v28 = &unk_77C600;
  v153 = xmmword_77D9F0;
  while (1)
  {
    if (v32 >= *(v35 + 2))
    {
      __break(1u);
      goto LABEL_55;
    }

    v81 = *&v35[8 * v32 + 32];
    v5 = v80 + v81;
    if (v80 + v81 == a3)
    {
      goto LABEL_51;
    }

    if (v80 + v81 >= a3)
    {
      break;
    }

    ++v32;
    sub_760750();
    sub_7606D0();
    sub_7671D0();
    sub_BD88(&unk_93F5C0);
    a2 = swift_allocObject();
    *(a2 + 16) = v153;
    v82 = v145;
    *(a2 + 32) = v145;
    v83 = v82;
    a1 = sub_7671E0();
    sub_769610();
    v4 = v84;

    v80 = v5 + v4;
    if (v30 == v32)
    {
      goto LABEL_51;
    }
  }

  sub_B170(&v172, *(&v173 + 1));
  a2 = v145;
  sub_766710();
  v86 = a3 + a4 + v85;
  if (v86 <= v5)
  {
LABEL_51:
    v107 = v35;
    goto LABEL_52;
  }

  v16 = v35;
  a3 = v86 - v5;
  v4 = (v32 + 1);
  v5 = (v86 - v5) / v4 * 0.5;
  if (qword_93DAA8 != -1)
  {
    goto LABEL_57;
  }

LABEL_43:
  v87 = sub_7666D0();
  v88 = sub_BE38(v87, qword_99F7F0);
  v89 = v114;
  (*(*(v87 - 8) + 16))(v114, v88, v87);
  v91 = v115;
  v90 = v116;
  (*(v115 + 104))(v89, enum case for FontSource.useCase(_:), v116);
  v170 = v90;
  v171 = &protocol witness table for FontSource;
  v92 = sub_B1B4(v169);
  (*(v91 + 16))(v92, v89, v90);
  v93 = v117;
  sub_766CB0();
  (*(v91 + 8))(v89, v90);
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v94 = swift_allocObject();
  *(v94 + 16) = v153;
  *(v94 + 32) = a2;
  v95 = a2;
  v96 = sub_7671E0();
  v97 = v119;
  sub_7666E0();
  v99 = v98;

  (*(v118 + 8))(v93, v97);
  v100 = (a3 + v5 + v99) / v4;
  v101 = swift_allocObject();
  *(v101 + 16) = v153;
  *(v101 + 32) = v95;
  v102 = v95;
  v103 = sub_7671E0();
  sub_769610();
  v105 = v104;

  if (v100 < v105)
  {
    v105 = v100;
  }

  v106 = *(v16 + 2);
  if (v106)
  {
    v169[0] = _swiftEmptyArrayStorage;
    sub_143C5C(0, v106, 0);
    v107 = v169[0];
    v108 = *(v169[0] + 16);
    v109 = 32;
    do
    {
      v110 = *&v16[v109];
      v169[0] = v107;
      v111 = v107[3];
      if (v108 >= v111 >> 1)
      {
        sub_143C5C((v111 > 1), v108 + 1, 1);
        v107 = v169[0];
      }

      v107[2] = v108 + 1;
      *&v107[v108 + 4] = v105 + v110;
      v109 += 8;
      ++v108;
      --v106;
    }

    while (v106);
  }

  else
  {

    v107 = _swiftEmptyArrayStorage;
  }

LABEL_52:
  sub_BEB8(&v172);
  return v107;
}

void sub_175584()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_93DAA8 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_99F7F0);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(sub_75BB20());
  *(v1 + v11) = sub_75BB10();
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_shadowView;
  sub_758E80();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_roundedCornerView;
  sub_75CD70();
  *(v1 + v17) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = v1 + OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkSize;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_hasArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_clickAction) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_gestureRecognizer) = 0;
  v19 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_tapAction);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_artworkView;
  sub_759210();
  *(v1 + v20) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_76A840();
  __break(1u);
}

double sub_1758E4(uint64_t a1, void *a2)
{
  v3 = sub_BD88(&qword_943D30);
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v54 = v44 - v4;
  v5 = sub_760730();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = v44 - v8;
  v9 = sub_766AF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v44 - v14;
  __chkstk_darwin(v16);
  v18 = v44 - v17;
  __chkstk_darwin(v19);
  v21 = v44 - v20;
  __chkstk_darwin(v22);
  v24 = v44 - v23;
  __chkstk_darwin(v25);
  v46 = v44 - v26;
  v53 = sub_766D70();
  v51 = *(v53 - 8);
  *&v27 = __chkstk_darwin(v53).n128_u64[0];
  v45 = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a2 traitCollection];
  v44[2] = sub_75A510();
  v44[1] = v30;
  sub_BE70(0, &qword_93F900);
  if (qword_93DAA8 != -1)
  {
    swift_once();
  }

  v31 = sub_7666D0();
  sub_BE38(v31, qword_99F7F0);
  v32 = sub_769E10();
  sub_766AE0();
  v47 = v32;
  sub_766AD0();
  v33 = *(v10 + 8);
  v33(v12, v9);
  sub_766A30();
  v33(v15, v9);
  sub_766A90();
  v33(v18, v9);
  sub_766A80();
  v33(v21, v9);
  sub_766AA0();
  v33(v24, v9);
  sub_766D50();
  v34 = v45;
  sub_766D80();
  if (sub_769A00())
  {
    v35 = v48;
    sub_173BE4(v29, v48);
  }

  else
  {
    v35 = v48;
    sub_173F1C();
  }

  (*(v49 + 32))(v52, v35, v50);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v36 = v53;
  v57[3] = v53;
  v57[4] = &protocol witness table for LabelPlaceholder;
  v37 = sub_B1B4(v57);
  v38 = v51;
  (*(v51 + 16))(v37, v34, v36);
  sub_760750();
  swift_allocObject();
  *&v58 = sub_760740();
  sub_175F58(&qword_943D38, &type metadata accessor for RibbonBarItemCellLayout);
  v39 = v54;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v40 = v56;
  sub_7673F0();
  v42 = v41;

  (*(v55 + 8))(v39, v40);
  (*(v38 + 8))(v34, v36);
  return v42;
}

uint64_t sub_175F58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_175FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D6>, double a9@<D7>)
{
  v73 = a6;
  v71 = a5;
  v85 = a4;
  v88 = a3;
  v89 = a2;
  v91 = a8;
  v92 = a9;
  v93 = a1;
  v90 = a7;
  v78 = sub_BD88(&qword_940A68);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v75 = &v67 - v11;
  v74 = sub_763F50();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_7649E0();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_767D60();
  v87 = *(v83 - 8);
  __chkstk_darwin(v83);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7656A0();
  v86 = *(v16 - 8);
  __chkstk_darwin(v16);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v82 = &v67 - v19;
  __chkstk_darwin(v20);
  v84 = &v67 - v21;
  __chkstk_darwin(v22);
  v24 = &v67 - v23;
  v25 = sub_764930();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_BD88(&qword_9438F8);
  __chkstk_darwin(v29);
  v68 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v67 - v32;
  sub_1ED18(v89, &v67 - v32, &qword_963790);
  v34 = *(v29 + 48);
  v89 = v33;
  sub_1ED18(v88, &v33[v34], &qword_963790);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0);
  sub_768750();

  v88 = v26;
  v35 = v26;
  v36 = v25;
  v37 = (*(v35 + 88))(v28, v25);
  if (v37 == enum case for Shelf.ContentType.singleColumnList(_:))
  {
    v38 = v86;
    (*(v86 + 104))(v24, enum case for PageGrid.Direction.vertical(_:), v16);
    sub_75B4A0();
    v39 = sub_767D40();
    (*(v87 + 8))(v15, v83);
    if (v39)
    {
      sub_75B4C0();
    }

    (*(v38 + 16))(v84, v24, v16);
    sub_65ABA0(1);
    sub_765670();
    (*(v38 + 8))(v24, v16);
    return sub_10A2C(v89, &qword_9438F8);
  }

  v67 = v15;
  v40 = v86;
  v41 = v87;
  if (v37 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v42 = v82;
    v43 = v16;
    (*(v86 + 104))(v82, enum case for PageGrid.Direction.vertical(_:), v16);
    swift_getKeyPath();
    v44 = v79;
    sub_768750();

    v45 = v80;
    v46 = v81;
    if ((*(v80 + 88))(v44, v81) == enum case for Shelf.ContentsMetadata.searchFocusTwoColumnList(_:))
    {
      (*(v45 + 96))(v44, v46);
      v47 = v72;
      v48 = v70;
      v49 = v44;
      v50 = v74;
      (*(v72 + 32))(v70, v49, v74);
      v51 = sub_763F40();
      (*(v47 + 8))(v48, v50);
    }

    else
    {
      (*(v45 + 8))(v44, v46);
      v51 = 1;
    }

    v59 = v83;
    v60 = v41;
    v61 = v67;
    sub_75B4A0();
    v62 = sub_767D40();
    (*(v60 + 8))(v61, v59);
    if (v62 & 1) != 0 && (sub_75B4C0())
    {
      v51 = 1;
    }

    (*(v40 + 16))(v84, v42, v43);
    sub_65ABA0(v51);
    sub_765670();
    (*(v40 + 8))(v42, v43);
    return sub_10A2C(v89, &qword_9438F8);
  }

  if (v37 == enum case for Shelf.ContentType.scrollablePill(_:))
  {
    v52 = v86;
    v53 = v84;
    v54 = v16;
    (*(v86 + 104))(v84, enum case for PageGrid.Direction.horizontal(_:), v16);
    v94 = 0x4020000000000000;
    sub_62634();
    v55 = v75;
    sub_7655D0();
    v94 = 0x4020000000000000;
    v56 = v76;
    sub_7655D0();
    (*(v52 + 16))(v69, v53, v54);
    sub_620A70(v55, v56);
    sub_765670();
    v57 = *(v77 + 8);
    v58 = v78;
    v57(v56, v78);
    v57(v55, v58);
    (*(v52 + 8))(v53, v54);
    return sub_10A2C(v89, &qword_9438F8);
  }

  v94 = v71;
  v95 = v73;
  v64 = v89;
  v65 = v68;
  sub_1ED18(v89, v68, &qword_9438F8);
  v66 = *(v29 + 48);
  sub_176F34();
  sub_75B530();
  sub_10A2C(v64, &qword_9438F8);
  sub_10A2C(v65 + v66, &qword_963790);
  sub_10A2C(v65, &qword_963790);
  return (*(v88 + 8))(v28, v36);
}

uint64_t sub_176B00()
{
  sub_176EDC();

  return sub_75B530();
}

uint64_t sub_176BE4()
{
  sub_176EDC();

  return sub_75B520();
}

uint64_t sub_176CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v27[4] = a5;
  v27[5] = a6;
  v27[3] = a4;
  *&v27[1] = a13;
  *&v27[2] = a14;
  v27[0] = a1;
  v17 = sub_BD88(&qword_9438F8);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v27 - v22;
  v24 = *(v14 + 2);
  sub_1ED18(a2, v27 - v22, &qword_963790);
  sub_1ED18(a3, &v23[*(v18 + 56)], &qword_963790);
  v28 = *v14;
  v29 = v24;
  sub_1ED18(v23, v20, &qword_9438F8);
  v25 = *(v18 + 56);
  sub_75B530();
  sub_10A2C(v23, &qword_9438F8);
  sub_10A2C(&v20[v25], &qword_963790);
  return sub_10A2C(v20, &qword_963790);
}

unint64_t sub_176EDC()
{
  result = qword_9477F8;
  if (!qword_9477F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9477F8);
  }

  return result;
}

unint64_t sub_176F34()
{
  result = qword_947800;
  if (!qword_947800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947800);
  }

  return result;
}

uint64_t sub_176F9C(uint64_t a1, void *a2, uint64_t a3)
{
  v124 = a3;
  v126 = a2;
  v119 = sub_75F340();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_760280();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v6 - 8);
  v112 = &v106 - v7;
  v122 = sub_7687C0();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v9 - 8);
  v107 = &v106 - v10;
  v11 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v11);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_9442D0);
  __chkstk_darwin(v14 - 8);
  v110 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v106 - v17;
  v19 = type metadata accessor for FlowDestination();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v111 = (&v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = (&v106 - v23);
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  v108 = sub_BD88(&qword_94DDC0);
  v123 = sub_768F90();

  sub_764BF0();
  sub_146CF0(a1, &aBlock, v18);
  v28 = *(v20 + 48);
  v29 = v28(v18, 1, v19);
  v109 = v28;
  if (v29 == 1)
  {
    v30 = v27;
    swift_storeEnumTagMultiPayload();
    if (v28(v18, 1, v19) != 1)
    {
      sub_10A2C(v18, &unk_9442D0);
    }
  }

  else
  {
    v30 = v27;
    sub_61AE8(v18, v27);
  }

  sub_758AA0();
  v31 = *(v11 + 20);
  v125 = v13;
  v116 = v31;
  sub_758A90();
  v32 = v126;
  v33 = [v126 presentedViewController];
  if (!v33)
  {
    goto LABEL_8;
  }

  v34 = v33;
  if ([v33 isBeingDismissed])
  {

LABEL_8:
    v35 = v32;
    goto LABEL_9;
  }

  v127 = v34;
  sub_BE70(0, &qword_9434E0);
  v48 = v34;
  sub_BD88(&qword_93FD18);
  if (swift_dynamicCast())
  {
    v106 = v48;
    sub_34698(v128, &aBlock);
    v49 = v30;
    v50 = *(&v131 + 1);
    v51 = v132;
    sub_B170(&aBlock, *(&v131 + 1));
    if ((*(v51 + 8))(v49, v50, v51))
    {
      sub_61B4C(v49, v24);
      v52 = v49;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v53 = v125;
        v54 = v123;
        v55 = v106;
        if (*v24)
        {
          v56 = sub_BD88(&unk_93F630);

          v57 = v107;
          v58 = v124;
          sub_768860();
          v59 = *(v56 - 8);
          if ((*(v59 + 48))(v57, 1, v56) == 1)
          {

            sub_68DF8(v53, type metadata accessor for FlowPresentationHints);
            sub_68DF8(v52, type metadata accessor for FlowDestination);
            sub_10A2C(v57, &unk_93F980);
LABEL_61:
            sub_BEB8(&aBlock);
            return v54;
          }

          sub_32AC7C(v105, 1, v58, v57);

          (*(v59 + 8))(v57, v56);
          sub_768F00();

LABEL_60:
          sub_68DF8(v53, type metadata accessor for FlowPresentationHints);
          sub_68DF8(v52, type metadata accessor for FlowDestination);
          goto LABEL_61;
        }
      }

      else
      {
        sub_68DF8(v24, type metadata accessor for FlowDestination);
        v53 = v125;
        v54 = v123;
        v55 = v106;
      }

      v102 = v121;
      v103 = v120;
      v104 = v122;
      (*(v121 + 104))(v120, enum case for ActionOutcome.performed(_:), v122);
      sub_768F60();

      (*(v102 + 8))(v103, v104);
      goto LABEL_60;
    }

    sub_BEB8(&aBlock);
    v30 = v49;
    v80 = v124;
    v48 = v106;
  }

  else
  {
    v129 = 0;
    memset(v128, 0, sizeof(v128));
    sub_10A2C(v128, &unk_93FD20);
    v80 = v124;
  }

  sub_75A920();
  sub_768900();
  sub_768ED0();
  if (sub_178254(v48, v30))
  {
    v95 = swift_allocObject();
    v95[2] = a1;
    v95[3] = v32;
    v96 = v123;
    v95[4] = v80;
    v95[5] = v96;
    *&v132 = sub_1784D0;
    *(&v132 + 1) = v95;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v131 = sub_23F0CC;
    *(&v131 + 1) = &unk_886538;
    v97 = _Block_copy(&aBlock);
    v54 = v96;

    v98 = v32;

    [v48 dismissViewControllerAnimated:1 completion:v97];
    _Block_release(v97);

    v93 = v125;
    goto LABEL_48;
  }

  v99 = v48;
  v100 = v32;
  v101 = [v100 presentedViewController];
  if (v101)
  {
    do
    {
      v35 = v101;

      v101 = [v35 presentedViewController];
      v100 = v35;
    }

    while (v101);
  }

  else
  {
    v35 = v100;
  }

LABEL_9:
  v36 = [v32 traitCollection];
  v37 = sub_D0BF0();

  v38 = v125;
  if (v37)
  {
    v39 = [v32 traitCollection];
    v40 = sub_478964(a1, v39, v124);

    if (v40)
    {
      v41 = v40;
      goto LABEL_26;
    }
  }

  else
  {
    v42 = sub_32CB94(v32);
    if (!v42 || (*&v128[0] = v42, sub_BE70(0, &unk_94DCA0), sub_BD88(&qword_940BF8), (swift_dynamicCast() & 1) == 0))
    {
      *&v132 = 0;
      aBlock = 0u;
      v131 = 0u;
    }

    v43 = v30;
    v44 = [v32 traitCollection];

    sub_764BF0();
    v45 = v110;
    sub_146CF0(a1, v128, v110);
    v46 = v109;
    if (v109(v45, 1, v19) == 1)
    {
      v47 = v111;
      swift_storeEnumTagMultiPayload();
      if (v46(v45, 1, v19) != 1)
      {
        sub_10A2C(v45, &unk_9442D0);
      }
    }

    else
    {
      v47 = v111;
      sub_61AE8(v45, v111);
    }

    v60 = sub_758A60();
    v62 = v61;
    v63 = v112;
    sub_758A80();
    v40 = sub_471418(v47, v44, v60, v62, v63, &aBlock, v124, 1);

    sub_10A2C(v63, &unk_944FF0);
    sub_68DF8(v47, type metadata accessor for FlowDestination);
    v41 = v40;
    sub_10A2C(&aBlock, &unk_9442E0);
    v30 = v43;
    v38 = v125;
    if (v40)
    {
LABEL_26:
      v54 = v123;
      v64 = [v126 traitCollection];
      v65 = v113;
      sub_D2028(v113);

      v66 = sub_760270();
      v68 = v67;
      (*(v114 + 8))(v65, v115);
      if ((v68 & 1) == 0)
      {
        [v41 setModalPresentationStyle:v66];
      }

      aBlock = xmmword_94DCF8;
      v131 = xmmword_94DD08;
      v132 = xmmword_94DD18;
      v133 = xmmword_94DD28;
      v134 = xmmword_94DD38;
      v69 = qword_94DD48;
      v135 = qword_94DD48;
      v70 = BYTE8(xmmword_94DD18);
      if (BYTE8(xmmword_94DD18) != 255)
      {
        v71 = aBlock;
        v73 = v131;
        v72 = *&v132;
        v74 = v133;
        v75 = v134;
        v76 = aBlock;
        v77 = [v41 popoverPresentationController];
        if (v77)
        {
          v78 = v77;
          if (v70)
          {
            sub_1781E4(&aBlock, v128);
            v79 = v78;
            [v79 setSourceView:v71];
            [v79 setSourceRect:{*(&v71 + 1), v73, v72}];
            sub_10A2C(&aBlock, &unk_93FEF0);
          }

          else
          {
            [v77 setBarButtonItem:v71];
          }

          [v78 setPopoverLayoutMargins:{v74, v75}];
          [v78 setPermittedArrowDirections:v69];
        }

        else
        {
          if (qword_93DF00 != -1)
          {
            swift_once();
          }

          v81 = sub_768FF0();
          sub_BE38(v81, qword_9A0430);
          sub_BD88(&qword_93FD00);
          sub_7685F0();
          *(swift_allocObject() + 16) = xmmword_77B6D0;
          sub_768540();
          sub_768EB0();
        }

        sub_10A2C(&aBlock, &unk_93FEF0);
      }

      v82 = v118;
      v83 = v117;
      v84 = v119;
      (*(v118 + 16))(v117, v38 + v116, v119);
      v85 = (*(v82 + 88))(v83, v84);
      if (v85 == enum case for FlowAnimationBehavior.infer(_:))
      {
        goto LABEL_41;
      }

      if (v85 != enum case for FlowAnimationBehavior.never(_:))
      {
        if (v85 == enum case for FlowAnimationBehavior.always(_:))
        {
LABEL_41:
          v86 = 1;
LABEL_46:
          v87 = objc_allocWithZone(type metadata accessor for PresentationContextViewController());
          v88 = v41;
          v89 = sub_B4544(v88, v86);

          [v35 presentViewController:v89 animated:0 completion:0];
          v90 = v121;
          v91 = v120;
          v92 = v122;
          (*(v121 + 104))(v120, enum case for ActionOutcome.performed(_:), v122);
          sub_768F60();

          (*(v90 + 8))(v91, v92);
          goto LABEL_47;
        }

        (*(v82 + 8))(v83, v84);
      }

      v86 = 0;
      goto LABEL_46;
    }
  }

  (*(v121 + 104))(v120, enum case for ActionOutcome.unsupported(_:), v122);
  v54 = sub_768F30();

LABEL_47:
  v93 = v38;
LABEL_48:
  sub_68DF8(v93, type metadata accessor for FlowPresentationHints);
  sub_68DF8(v30, type metadata accessor for FlowDestination);
  return v54;
}

uint64_t sub_1781E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_178254(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_61B4C(a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 39)
  {
    if (EnumCaseMultiPayload != 40 && EnumCaseMultiPayload != 41 && EnumCaseMultiPayload != 42)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 10)
  {

    v14 = *(sub_BD88(&qword_955C60) + 64);
    v15 = sub_75C190();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 19)
  {
LABEL_9:
    sub_68DF8(v8, type metadata accessor for FlowDestination);
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  if (EnumCaseMultiPayload != 28)
  {
LABEL_13:
    sub_68DF8(v8, type metadata accessor for FlowDestination);
    v12 = 1;
    return v12 & 1;
  }

  sub_50774(v8, v5);
  type metadata accessor for ArticleContainerViewController();
  v10 = swift_dynamicCastClass() == 0;
  v11 = sub_7624A0();
  sub_10A2C(v5, &unk_93FD30);
  v12 = v10 | v11 ^ 1;
  return v12 & 1;
}

uint64_t sub_178480()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1784D0()
{
  sub_176F9C(v0[2], v0[3], v0[4]);
  sub_768F00();
}

uint64_t sub_178518(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_178544(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_757640();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_178604(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_757640();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ComponentOverflowData()
{
  result = qword_947860;
  if (!qword_947860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1786F4()
{
  result = sub_3C80C();
  if (v1 <= 0x3F)
  {
    result = sub_757640();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_178778()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_99B3B8);
  sub_BE38(v0, qword_99B3B8);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1788DC(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  v46 = a1;
  sub_75CE20();
  if (qword_93D588 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E8A8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = sub_766CA0();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_B1B4(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  sub_766CB0();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  sub_75CE00();
  if (qword_93D590 != -1)
  {
    swift_once();
  }

  v42 = sub_BE38(v6, qword_99E8C0);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_B1B4(v54);
  v44(v17, v5, v2);
  sub_766CB0();
  v49(v5, v2);
  sub_75CED0();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v54);
  v21 = v44;
  v44(v20, v5, v2);
  sub_766CB0();
  v22 = v49;
  v49(v5, v2);
  sub_75CEA0();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_B1B4(v54);
  v21(v26, v5, v2);
  sub_766CB0();
  v22(v5, v2);
  sub_75CE90();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_B1B4(v54);
  v21(v28, v5, v2);
  sub_766CB0();
  v22(v5, v2);
  sub_75CEF0();
  if (qword_93D5A0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_BE38(v45, qword_99E8F0);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_B1B4(v54);
  v21(v32, v5, v2);
  sub_766CB0();
  v49(v5, v2);
  sub_75CEE0();
  if (qword_93D598 != -1)
  {
    swift_once();
  }

  v33 = sub_BE38(v29, qword_99E8D8);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_B1B4(v54);
  v37 = v44;
  v44(v36, v5, v2);
  sub_766CB0();
  v38 = v49;
  v49(v5, v2);
  sub_75CE60();
  sub_75CE40();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_B1B4(v54);
  v37(v39, v5, v2);
  sub_766CB0();
  v38(v5, v2);
  return sub_75CE50();
}

uint64_t sub_179130()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_99B3D0);
  sub_BE38(v0, qword_99B3D0);
  if (qword_93C4E0 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B3B8);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1792C4()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_766690();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_161DC(v6, qword_99B3E8);
  v28 = v6;
  v31 = sub_BE38(v6, qword_99B3E8);
  v56 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  *&v55 = 0x4030000000000000;
  v29 = v5;
  sub_7666A0();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  *&v52 = 0x4024000000000000;
  if (qword_93DB90 != -1)
  {
    swift_once();
  }

  v7 = sub_7666D0();
  v8 = sub_BE38(v7, qword_99FAA8);
  v38 = *(*(v7 - 8) + 16);
  v38(v3, v8, v7);
  v9 = enum case for FontSource.useCase(_:);
  v35 = v1[13];
  v35(v3, enum case for FontSource.useCase(_:), v0);
  v34 = sub_766CA0();
  v50 = v34;
  v51 = &protocol witness table for StaticDimension;
  sub_B1B4(&v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v10 = sub_B1B4(&v46);
  v11 = v1[2];
  v37 = v1 + 2;
  v33 = v11;
  v11(v10, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v36 = v13;
  v13(v3, v0);
  if (qword_93DB98 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v7, qword_99FAC0);
  v38(v3, v14, v7);
  v35(v3, v9, v0);
  v47 = v34;
  v48 = &protocol witness table for StaticDimension;
  sub_B1B4(&v46);
  v44 = v0;
  v45 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v43);
  v33(v15, v3, v0);
  sub_766CB0();
  v36(v3, v0);
  v27 = v12;
  if (qword_93DBA0 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v7, qword_99FAD8);
  v38(v3, v26, v7);
  v25 = v9;
  v16 = v35;
  v35(v3, v9, v0);
  v17 = v34;
  v44 = v34;
  v45 = &protocol witness table for StaticDimension;
  sub_B1B4(&v43);
  v41 = v0;
  v42 = &protocol witness table for FontSource;
  v18 = sub_B1B4(&v40);
  v19 = v33;
  v33(v18, v3, v0);
  sub_766CB0();
  v36(v3, v0);
  v38(v3, v26, v7);
  v16(v3, v25, v0);
  v41 = v17;
  v42 = &protocol witness table for StaticDimension;
  sub_B1B4(&v40);
  v39[3] = v0;
  v39[4] = &protocol witness table for FontSource;
  v20 = sub_B1B4(v39);
  v19(v20, v3, v0);
  sub_766CB0();
  v36(v3, v0);
  v21 = v31;
  sub_10914(&v55, v31);
  v22 = v28;
  (*(v30 + 32))(v21 + v28[5], v29, v32);
  sub_10914(&v52, v21 + v22[6]);
  sub_10914(&v49, v21 + v22[7]);
  sub_10914(&v46, v21 + v22[8]);
  sub_10914(&v43, v21 + v22[9]);
  return sub_10914(&v40, v21 + v22[10]);
}

UIColor sub_1798BC()
{
  sub_BE70(0, &qword_93E540);
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_76A0C0(v3, v2).super.isa;
  qword_99B400 = result.super.isa;
  return result;
}

id sub_179950()
{
  v1 = v0;
  v2 = sub_75CF00();
  v78 = *(v2 - 8);
  v79 = v2;
  __chkstk_darwin(v2);
  v77 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7674E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_767510();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 traitCollection];
  v14 = [v13 preferredContentSizeCategory];
  v15 = sub_769B50();

  v16 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_gradientBlurView;
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_gradientBlurView];
  if (v15)
  {
    v73 = v5;
    v74 = v12;
    v75 = v9;
    v76 = v8;
    if (v17)
    {
      [v17 setHidden:1];
    }

    v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel];
    [v18 setNumberOfLines:{0, v73}];
    v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView];
    [v19 addSubview:v18];
    v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel];
    [v20 setNumberOfLines:0];
    v21 = [v20 layer];
    [v21 setCompositingFilter:0];

    [v19 addSubview:v20];
    v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel];
    if (v22)
    {
      v23 = v22;
      [v23 setNumberOfLines:0];
      v24 = [v23 layer];
      [v24 setCompositingFilter:0];

      [v19 addSubview:v23];
    }

    v25 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView;
    v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView];
    if (v26 || (((*(v73 + 104))(v7, enum case for Separator.Position.top(_:), v4), v80[3] = sub_766970(), v80[4] = &protocol witness table for ZeroDimension, sub_B1B4(v80), sub_766960(), v27 = v74, sub_7674F0(), v28 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v29 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator, swift_beginAccess(), v30 = *(v75 + 40), v31 = v28, v30(&v28[v29], v27, v76), swift_endAccess(), v31, (v32 = *&v1[v25]) == 0) ? (v33 = 0) : (objc_msgSend(v32, "removeFromSuperview"), v33 = *&v1[v25]), *&v1[v25] = v31, v54 = v31, v33, objc_msgSend(v19, "addSubview:", v54), v54, objc_msgSend(v1, "setNeedsLayout"), v54, (v26 = *&v1[v25]) != 0))
    {
      [v26 setHidden:0];
    }

    v55 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView;
    v56 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView];
    if (v56)
    {
      v57 = qword_93C4E8;
      v58 = v56;
      if (v57 != -1)
      {
        swift_once();
      }

      v59 = v79;
      v60 = sub_BE38(v79, qword_99B3D0);
      v62 = v77;
      v61 = v78;
      (*(v78 + 16))(v77, v60, v59);
      v63 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v61 + 24))(&v58[v63], v62, v59);
      swift_endAccess();
      [v58 setNeedsLayout];

      (*(v61 + 8))(v62, v59);
      v64 = *&v1[v55];
      if (v64)
      {
        [v64 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
      }
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_10;
    }

    v50 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
    v51 = sub_4AA654(0);
    v52 = *&v1[v16];
    if (v52)
    {
      [v52 removeFromSuperview];
      v53 = *&v1[v16];
    }

    else
    {
      v53 = 0;
    }

    *&v1[v16] = v51;
    v66 = v51;

    v67 = *&v1[v16];
    if (v67)
    {
      v68 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
      v69 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton];
      if (v69)
      {
        v70 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton];
      }

      else
      {
        v70 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel];
        v69 = 0;
      }

      v71 = v69;
      [v68 insertSubview:v67 belowSubview:v70];
    }

    [v1 setNeedsLayout];

    v72 = *&v1[v16];
    if (v72)
    {
      [v72 setUserInteractionEnabled:0];
      v17 = *&v1[v16];
      if (v17)
      {
LABEL_10:
        [v17 setHidden:0];
      }
    }

    v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel];
    [v34 setNumberOfLines:1];
    v35 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
    [v35 addSubview:v34];
    v36 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel];
    [v36 setNumberOfLines:1];
    [v35 addSubview:v36];
    v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel];
    if (v37)
    {
      v38 = v37;
      [v38 setNumberOfLines:2];
      [v35 addSubview:v38];
    }

    v39 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView];
    if (v39)
    {
      [v39 setHidden:1];
    }

    v40 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView;
    v41 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView];
    if (v41)
    {
      v42 = qword_93C4E0;
      v43 = v41;
      if (v42 != -1)
      {
        swift_once();
      }

      v44 = v79;
      v45 = sub_BE38(v79, qword_99B3B8);
      v47 = v77;
      v46 = v78;
      (*(v78 + 16))(v77, v45, v44);
      v48 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v46 + 24))(&v43[v48], v47, v44);
      swift_endAccess();
      [v43 setNeedsLayout];

      (*(v46 + 8))(v47, v44);
      v49 = *&v1[v40];
      if (v49)
      {
        [v49 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
      }
    }

    sub_17A1DC();
  }

  return [v1 setNeedsLayout];
}

id sub_17A1DC()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_shadowView];
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  [v1 setHidden:v3 == &dword_0 + 2];
  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  LOBYTE(v3) = sub_769B50();

  if ((v3 & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] overrideUserInterfaceStyle];
    sub_769240();
    v6 = sub_769210();

    v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel];
    if (v7)
    {
      v8 = [v7 layer];
      [v8 setCompositingFilter:v6];
    }

    v9 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel] layer];
    [v9 setCompositingFilter:v6];
  }

  if (v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_includeBorderInDarkMode] == 1)
  {
    v10 = [v0 traitCollection];
    v11 = [v10 userInterfaceStyle];

    v12 = v11 != &dword_0 + 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_borderView];

  return [v13 setHidden:v12];
}

id sub_17A3DC(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_769240();
  v8 = v7;
  if (v6 == sub_769240() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_76A950();

    if ((v11 & 1) == 0)
    {
      return sub_179950();
    }
  }

  return result;
}

id sub_17A4F8(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  result = [a2 userInterfaceStyle];
  if (v5 != result)
  {
    sub_17A1DC();

    return [a1 setNeedsLayout];
  }

  return result;
}

id sub_17A5F8()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v5)
    {
      [v5 invalidate];
      v5 = *(v3 + v4);
    }

    *(v3 + v4) = 0;
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_17A848(uint64_t a1, uint64_t a2)
{
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v48 - v11;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel;
  v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel];
  if (!v14 || (v15 = [v14 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v49 = v13;
  v16 = v6;
  v17 = a1;
  v18 = v15;
  v19 = sub_769240();
  v21 = v20;

  if (!a2)
  {

    v6 = v16;
    v13 = v49;
    v24 = *&v2[v49];
    if (v24)
    {
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  if (v19 != v17 || v21 != a2)
  {
    v23 = sub_76A950();

    v6 = v16;
    v13 = v49;
    if (v23)
    {
      goto LABEL_24;
    }

LABEL_11:
    v24 = *&v2[v13];
    if (v24)
    {
      goto LABEL_31;
    }

LABEL_12:
    v25 = v2;
    if (qword_93DBA0 != -1)
    {
      swift_once();
    }

    v26 = sub_7666D0();
    v27 = sub_BE38(v26, qword_99FAD8);
    v28 = *(v26 - 8);
    (*(v28 + 16))(v12, v27, v26);
    (*(v28 + 56))(v12, 0, 1, v26);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v29 = objc_allocWithZone(sub_75BB20());
    v30 = sub_75BB10();
    v2 = v25;
    v31 = *&v25[v13];
    *&v25[v13] = v30;

    v32 = *&v25[v13];
    if (v32)
    {
      sub_BE70(0, &qword_93E540);
      v33 = v32;
      v2 = v25;
      v34 = sub_769FF0();
      [v33 setTextColor:v34];
    }

    v35 = [v2 traitCollection];
    v36 = [v35 preferredContentSizeCategory];
    v37 = sub_769B50();

    v38 = *&v2[v13];
    if (v37)
    {
      if (v38)
      {
        [v38 setNumberOfLines:0];
        v39 = *&v2[v13];
        if (v39)
        {
          v40 = [v39 layer];
          [v40 setCompositingFilter:0];

          if (*&v2[v13])
          {
            v41 = &OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView;
            goto LABEL_30;
          }
        }
      }

      __break(1u);
    }

    else if (v38)
    {
      [v38 setNumberOfLines:2];
      v42 = *&v2[v13];
      if (v42)
      {
        v43 = [v42 layer];
        v41 = &OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView;
        v44 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] traitCollection];
        [v44 userInterfaceStyle];

        sub_769240();
        v45 = sub_769210();

        [v43 setCompositingFilter:v45];

        if (*&v2[v13])
        {
LABEL_30:
          [*&v2[*v41] addSubview:?];
          v24 = *&v2[v13];
          if (!v24)
          {

LABEL_35:
            [v2 setNeedsLayout];
            return;
          }

LABEL_31:
          v46 = v24;
          if (a2)
          {
            v47 = sub_769210();
          }

          else
          {
            v47 = 0;
          }

          [v46 setText:v47];

          goto LABEL_35;
        }
      }
    }

    __break(1u);
    return;
  }

LABEL_24:
}

id sub_17ADCC()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView];
  if (v1)
  {
    v2 = qword_93C4F8;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    [v3 setBackgroundColor:qword_99B400];
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView] addSubview:v3];
    v4 = [objc_allocWithZone(UITapGestureRecognizer) init];
    v5 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer;
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer];
    *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer] = v4;

    result = *&v0[v5];
    if (!result || ([result setDelegate:v0], (result = *&v0[v5]) == 0) || (result = objc_msgSend(result, "addTarget:action:", v0, "handleTapWithGestureRecognizer:"), !*&v0[v5]))
    {
      __break(1u);
      return result;
    }

    [v3 addGestureRecognizer:?];
    v8 = [v0 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = sub_769B50();

    if (v10)
    {
      v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView];
      if (v11)
      {
        v12 = v11;
        [v12 setHidden:0];
      }
    }
  }

  return [v0 setNeedsLayout];
}

id sub_17AF94()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_75CF00();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView];
  if (v10)
  {
    v11 = v10;
    v12 = [v1 traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    v14 = sub_769B50();

    if (v14)
    {
      if (qword_93C4E8 != -1)
      {
        swift_once();
      }

      v15 = sub_BE38(v5, qword_99B3D0);
      (*(v6 + 16))(v9, v15, v5);
      v16 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v11[v16], v9, v5);
      swift_endAccess();
      v17 = 16.0;
    }

    else
    {
      if (qword_93C4E0 != -1)
      {
        swift_once();
      }

      v18 = sub_BE38(v5, qword_99B3B8);
      (*(v6 + 16))(v9, v18, v5);
      v19 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v11[v19], v9, v5);
      swift_endAccess();
      v17 = 4.0;
    }

    v20 = v11;
    [v20 setNeedsLayout];
    (*(v6 + 8))(v9, v5);
    [v20 setLayoutMargins:{v17, 0.0, v17, 0.0}];

    v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel];
    v22 = qword_93D590;
    v23 = v20;
    v24 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v25 = sub_7666D0();
    v26 = sub_BE38(v25, qword_99E8C0);
    v27 = *(v25 - 8);
    v28 = *(v27 + 16);
    v28(v4, v26, v25);
    v29 = *(v27 + 56);
    v29(v4, 0, 1, v25);
    sub_75BA40();

    v30 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
    if (qword_93D598 != -1)
    {
      swift_once();
    }

    v31 = sub_BE38(v25, qword_99E8D8);
    v28(v4, v31, v25);
    v29(v4, 0, 1, v25);
    sub_75BA40();

    v32 = qword_93C4F8;
    v33 = v23;
    if (v32 != -1)
    {
      swift_once();
    }

    [v33 setBackgroundColor:qword_99B400];

    v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView];
    if (v34)
    {
      v35 = v34;
      [v35 addSubview:v33];
    }
  }

  return [v1 setNeedsLayout];
}

void sub_17B4D0(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_17D5D4(&qword_93F500, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
    sub_BE70(0, &qword_93E550);
    v8 = v7;
    v9 = sub_76A1C0();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_17B65C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_17B6B0;
}

void sub_17B6B0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_17B7C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventCardLayout(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_17BC9C(v10);
  AppEventCardLayout.placeChildren(relativeTo:in:)(v1, v6, v12, v14, v16, v18);
  (*(v4 + 8))(v6, v3);
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_gradientBlurView];
  if (v19)
  {
    v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
    v21 = v19;
    [v20 frame];
    if (CGRectGetHeight(v49) > 0.0)
    {
      [v20 frame];
      Height = CGRectGetHeight(v50);
      [v20 frame];
      v23 = CGRectGetHeight(v51);
      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel] frame];
      v24 = Height - (v23 - CGRectGetMinY(v52));
      v25 = (v24 + -50.0) / Height;
      v26 = (v24 + 30.0) / Height;
      v27 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY] = v25;
      v28 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView;
      v29 = [*&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v31 = v30;

      v32 = *&v21[v27];
      v33 = [*&v21[v28] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v34 = [*&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v35 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY] = v25;
      v36 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView;
      v37 = [*&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v39 = v38;

      v40 = *&v21[v35];
      v41 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v39, v40}];

      sub_4A9908(v26);
      v42 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY] = v26;
      v43 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v45 = v44;

      v46 = *&v21[v42];
      v47 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v45, v46}];
    }

    sub_2467C(v10);
  }

  else
  {
    sub_2467C(v10);
  }
}

id sub_17BC9C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C4F0 != -1)
  {
    v59 = v4;
    swift_once();
    v4 = v59;
  }

  v7 = sub_BE38(v4, qword_99B3E8);
  v76 = v6;
  sub_17D61C(v7, v6);
  v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_shadowView);
  v103 = sub_758E80();
  v104 = &protocol witness table for UIView;
  v82 = v8;
  *&v102 = v8;
  v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView);
  v100 = sub_75CD70();
  v101 = &protocol witness table for UIView;
  v98 = &protocol witness table for UIView;
  *&v99 = v9;
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_borderView);
  v97 = v100;
  v80 = v10;
  v81 = v9;
  *&v96 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView);
  v12 = sub_BE70(0, &qword_93E550);
  v94 = v12;
  v95 = &protocol witness table for UIView;
  v79 = v11;
  *&v93 = v11;
  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView);
  v91 = sub_759210();
  v92 = &protocol witness table for UIView;
  v78 = v13;
  *&v90 = v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v72 = type metadata accessor for VideoView();
    v71 = &protocol witness table for UIView;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v77 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_gradientBlurView);
  if (v77)
  {
    v70 = type metadata accessor for MediaOverlayGradientBlurView();
    v69 = &protocol witness table for UIView;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v75 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton);
  if (v75)
  {
    v68 = type metadata accessor for NotifyMeButton();
    v67 = &protocol witness table for UIView;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v15 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel);
  v16 = sub_75BB20();
  v17 = &protocol witness table for UILabel;
  v88 = v16;
  v89 = &protocol witness table for UILabel;
  v73 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel);
  v74 = v15;
  v86 = &protocol witness table for UILabel;
  *&v87 = v15;
  v85 = v16;
  *&v84 = v73;
  v18 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel);
  v19 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView);
  if (v19)
  {
    v65 = type metadata accessor for SeparatorView();
    v66 = &protocol witness table for UIView;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  v83 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView);
  v20 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView);
  if (v20)
  {
    v63 = type metadata accessor for SmallLockupView();
    v64 = &protocol witness table for UIView;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  if (v83)
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  if (v83)
  {
    v22 = &protocol witness table for UIView;
  }

  else
  {
    v22 = 0;
  }

  v61 = v22;
  v62 = v21;
  if (!v18)
  {
    v16 = 0;
    v17 = 0;
  }

  sub_17D680(v76, a1);
  v23 = type metadata accessor for AppEventCardLayout(0);
  sub_10914(&v102, a1 + v23[5]);
  sub_10914(&v99, a1 + v23[6]);
  sub_10914(&v96, a1 + v23[7]);
  sub_10914(&v93, a1 + v23[8]);
  sub_10914(&v90, a1 + v23[9]);
  v24 = (a1 + v23[10]);
  *v24 = Strong;
  v24[1] = 0;
  v25 = v71;
  v26 = v72;
  v24[2] = 0;
  v24[3] = v26;
  v24[4] = v25;
  v27 = (a1 + v23[11]);
  v28 = v77;
  *v27 = v77;
  v27[1] = 0;
  v29 = v69;
  v30 = v70;
  v27[2] = 0;
  v27[3] = v30;
  v27[4] = v29;
  v31 = (a1 + v23[12]);
  v32 = v75;
  *v31 = v75;
  v31[1] = 0;
  v33 = v67;
  v34 = v68;
  v31[2] = 0;
  v31[3] = v34;
  v31[4] = v33;
  sub_10914(&v87, a1 + v23[13]);
  sub_10914(&v84, a1 + v23[14]);
  v35 = (a1 + v23[15]);
  *v35 = v18;
  v35[1] = 0;
  v35[2] = 0;
  v35[3] = v16;
  v35[4] = v17;
  v36 = (a1 + v23[16]);
  *v36 = v19;
  v36[1] = 0;
  v38 = v65;
  v37 = v66;
  v36[2] = 0;
  v36[3] = v38;
  v36[4] = v37;
  v39 = (a1 + v23[17]);
  *v39 = v83;
  v39[1] = 0;
  v40 = v61;
  v41 = v62;
  v39[2] = 0;
  v39[3] = v41;
  v39[4] = v40;
  v42 = (a1 + v23[18]);
  *v42 = v20;
  v42[1] = 0;
  v44 = v63;
  v43 = v64;
  v42[2] = 0;
  v42[3] = v44;
  v42[4] = v43;
  v45 = v20;
  v46 = v82;
  v47 = v81;
  v48 = v80;
  v49 = v79;
  v50 = v78;
  v51 = v28;
  v52 = v32;
  v53 = v74;
  v54 = v73;
  v55 = v18;
  v56 = v19;
  v57 = v83;

  return v57;
}

void sub_17C368()
{
  v1 = v0;
  v2 = sub_768C60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton;
  if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton])
  {
    v7 = [objc_allocWithZone(type metadata accessor for NotifyMeButton()) init];
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    sub_768C10();
    sub_BDD0(v12);
    sub_BDD0(v13);
    sub_769E70();
    (*(v3 + 8))(v5, v2);
    [v7 addTarget:v1 action:"notifyMeButtonTapped:" forControlEvents:64];
    v8 = v7[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style];
    v7[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style] = 0;
    if (v8)
    {
      v9 = sub_76A950();

      if ((v9 & 1) == 0)
      {
        sub_6990AC();
      }
    }

    else
    {
    }

    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] addSubview:v7];
    v10 = *&v1[v6];
    *&v1[v6] = v7;
    v11 = v7;

    [v1 setNeedsLayout];
  }
}

void sub_17C5AC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter) = a1;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }
}

void *(*sub_17C640(void *a1))(void *result, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter;
  a1[2] = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_17C698;
}

void *sub_17C698(void *result, char a2)
{
  if (a2)
  {

    sub_17C5AC(v2);
  }

  else
  {
    v4 = result[1];
    v3 = result[2];
    v5 = *(v4 + v3);
    *(v4 + v3) = *result;
    if (!v5)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v7 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v5 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v6) = 0;
  }
}

id sub_17C740(char a1, char a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton];
  if (v4)
  {
    v4[OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_isActive] = a1 & 1;
    v6 = v4;
    sub_698E80();
    sub_698F84(a2 & 1);
  }

  return [v3 setNeedsLayout];
}

void sub_17C7C0(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    sub_17C368();
  }

  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton];
  if (v5)
  {
    v6 = v5;
    v17 = v6;
    if (a2)
    {
      if ((a1 & 1) == 0)
      {
        if ([v6 isHidden])
        {
          [v17 setAlpha:0.0];
          [v17 setHidden:0];
        }
      }

      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v17;
      v9 = a1 & 1;
      *(v8 + 24) = a1 & 1;
      v22 = sub_17D510;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_23F0CC;
      v21 = &unk_8865D0;
      v10 = _Block_copy(&aBlock);
      v11 = v17;

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v9;
      *(v13 + 32) = v12;
      v22 = sub_17D5C4;
      v23 = v13;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_3D6D80;
      v21 = &unk_886648;
      v14 = _Block_copy(&aBlock);
      v15 = v11;

      [v7 animateWithDuration:v10 animations:v14 completion:0.3];

      _Block_release(v14);
      _Block_release(v10);
    }

    else
    {
      if (a1)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      [v6 setHidden:a1 & 1];
      [v17 setAlpha:v16];
      [v2 setNeedsLayout];
    }
  }
}

void sub_17CA78(int a1, id a2, char a3)
{
  [a2 setHidden:a3 & 1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setNeedsLayout];
  }
}

void sub_17CAE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v3)
    {
      [v3 invalidate];
      v4 = *(v1 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v1 + v2) = 0;
  }
}

id sub_17CC38()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v1 setNeedsLayout];
  }

  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel];
  v5 = [v4 text];
  if (v5)
  {

    [v4 setText:0];
    [v1 setNeedsLayout];
  }

  sub_17A848(0, 0);
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView];
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  sub_7591D0(v16, v7);
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView];
  if (v8)
  {
    [v8 setHidden:1];
  }

  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView];
  if (v9)
  {
    [v9 setHidden:1];
  }

  v10 = &v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  sub_F704(v11);
  sub_17D2EC();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:v6];
    [v1 setNeedsLayout];
  }

  sub_17C5AC(0);
  v15[0] = 0x3FF0000000000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = 0x3FF0000000000000;
  v15[4] = 0;
  v15[5] = 0;
  [v1 setTransform:v15];
  [v1 setAlpha:1.0];
  return [v1 setHidden:0];
}

uint64_t (*sub_17CEBC(uint64_t **a1))()
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
  v2[4] = sub_17B65C(v2);
  return sub_21028;
}

uint64_t (*sub_17CF40(void *a1))()
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
  v2[4] = sub_17C640(v2);
  return sub_246E0;
}

uint64_t sub_17CFBC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_17D5D4(&qword_947970, v1, type metadata accessor for AppEventCardView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_17D030(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_17D5D4(&qword_947970, v5, type metadata accessor for AppEventCardView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_17D0BC(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v4 = v2;
  *a1 = v2;
  sub_17D5D4(&qword_947970, v3, type metadata accessor for AppEventCardView);
  *(v4 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_17D178(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView);
  sub_BE70(0, &qword_93E550);
  v5 = v4;
  v6 = sub_76A1C0();

  return v6 & 1;
}

void sub_17D2EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_17D5D4(&qword_93F500, 255, type metadata accessor for VideoView);
    v2 = [v8 superview];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView);
      sub_BE70(0, &qword_93E550);
      v5 = v4;
      v6 = sub_76A1C0();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        return;
      }

      v8 = v7;
      [v7 removeFromSuperview];
    }
  }
}

id sub_17D430()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer;
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer);
  if (v3)
  {
    [v3 removeTarget:v0 action:0];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;

  result = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView);
  if (result)
  {

    return [result setHidden:1];
  }

  return result;
}

uint64_t sub_17D4D8()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_17D510()
{
  v1 = 1.0;
  if (*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

uint64_t sub_17D534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_17D54C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_17D584()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_17D5D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_17D61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17D680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_17D6E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  v91 = v2;
  v92 = v3;
  __chkstk_darwin(v2);
  v90 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v5 - 8);
  *&v94 = &v82 - v6;
  v93 = sub_768C60();
  v89 = *(v93 - 1);
  __chkstk_darwin(v93);
  v85 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_760AD0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v12 - 8);
  v14 = &v82 - v13;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_gradientBlurView] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer] = 0;
  v15 = &v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction];
  *v15 = 0;
  v15[1] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_includeBorderInDarkMode] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_shadowView] = [objc_allocWithZone(sub_758E80()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_75CD70();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView] = v16;
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] = v17;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_93DB98 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99FAC0);
  v20 = *(v18 - 8);
  v87 = *(v20 + 16);
  v87(v14, v19, v18);
  v86 = *(v20 + 56);
  (v86)(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v9 + 104);
  v84 = v9 + 104;
  v22(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v23 = sub_75BB20();
  v24 = objc_allocWithZone(v23);
  v83 = v8;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel] = sub_75BB10();
  if (qword_93DB90 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v18, qword_99FAA8);
  v87(v14, v25, v18);
  (v86)(v14, 0, 1, v18);
  v22(v11, v21, v83);
  v26 = objc_allocWithZone(v23);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel] = sub_75BB10();
  v27 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_borderView] = v27;
  v100.receiver = v1;
  v100.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView;
  v30 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_contentView];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v31 = v28;
  v32 = v30;
  v33 = v85;
  sub_768C10();
  sub_BDD0(&v96);
  sub_BDD0(&v98);
  sub_769E70();

  v34 = *(v89 + 8);
  v35 = v93;
  v34(v33, v93);
  v89 = v29;
  v36 = *&v28[v29];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v37 = v36;
  sub_768C10();
  sub_BDD0(&v96);
  sub_BDD0(&v98);
  sub_769E70();

  v34(v33, v35);
  ObjCClassFromMetadata = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView;
  v38 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v39 = v38;
  sub_768C10();
  sub_BDD0(&v96);
  sub_BDD0(&v98);
  sub_769E70();

  v34(v33, v35);
  v87 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel;
  v40 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_titleLabel];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v41 = v40;
  sub_768C10();
  sub_BDD0(&v96);
  sub_BDD0(&v98);
  sub_769E70();

  v34(v33, v35);
  v86 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel;
  v42 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_kindLabel];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v43 = v42;
  sub_768C10();
  sub_BDD0(&v96);
  sub_BDD0(&v98);
  sub_769E70();

  v34(v33, v35);
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v31 setClipsToBounds:0];
  v44 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_shadowView;
  v45 = qword_93C578;
  v46 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_shadowView];
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = sub_765080();
  v48 = sub_BE38(v47, qword_99B5C8);
  v49 = *(v47 - 8);
  v50 = v94;
  (*(v49 + 16))(v94, v48, v47);
  (*(v49 + 56))(v50, 0, 1, v47);
  sub_758E60();

  v51 = *&v31[v44];
  sub_758E40();

  v52 = *&v31[v44];
  v53 = v91;
  v54 = v92;
  v55 = *(v92 + 104);
  v56 = v90;
  LODWORD(v94) = enum case for CornerStyle.continuous(_:);
  v93 = v55;
  v55(v90);
  v57 = v52;
  sub_758E70();

  v92 = *(v54 + 8);
  (v92)(v56, v53);
  v58 = *&v31[v44];
  v59 = [v31 traitCollection];
  v60 = [v59 userInterfaceStyle];

  [v58 setHidden:v60 == &dword_0 + 2];
  [v31 addSubview:*&v31[v44]];
  v61 = v89;
  v62 = qword_93C4F8;
  v63 = *&v28[v89];
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = qword_99B400;
  [v63 setBackgroundColor:qword_99B400];

  v65 = *&v28[v61];
  (v93)(v56, v94, v53);
  v66 = v65;
  sub_75CCD0();

  (v92)(v56, v53);
  [v31 addSubview:*&v28[v61]];
  v67 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView;
  [*&v28[v61] addSubview:*&v31[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView]];
  [*&v31[v67] addSubview:*(ObjCClassFromMetadata + v31)];
  v68 = *(v87 + v31);
  sub_BE70(0, &qword_93E540);
  v69 = v68;
  v70 = sub_769FD0();
  [v69 setTextColor:v70];

  v71 = *&v86[v31];
  v72 = sub_769FF0();
  [v71 setTextColor:v72];

  v73 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_borderView;
  v74 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_borderView];
  v75 = v64;
  sub_75CD00();

  v76 = *&v31[v73];
  sub_75CD10();

  [*&v31[v73] setUserInteractionEnabled:0];
  [*&v31[v73] setHidden:1];
  v77 = *&v31[v73];
  (v93)(v56, v94, v53);
  v78 = v77;
  sub_75CCD0();

  (v92)(v56, v53);
  [v31 addSubview:*&v31[v73]];
  sub_179950();
  sub_17A1DC();
  sub_BD88(&qword_9477F0);
  v79 = swift_allocObject();
  v94 = xmmword_77B6D0;
  *(v79 + 16) = xmmword_77B6D0;
  *(v79 + 32) = sub_767B80();
  *(v79 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();
  swift_unknownObjectRelease();

  v80 = swift_allocObject();
  *(v80 + 16) = v94;
  *(v80 + 32) = sub_7677C0();
  *(v80 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_769F40();

  swift_unknownObjectRelease();

  return v31;
}