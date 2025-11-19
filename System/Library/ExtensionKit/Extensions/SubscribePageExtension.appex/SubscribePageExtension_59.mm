void sub_1006A68EC(void *a1)
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

    v4 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView);
    v5 = a1;
    if (v4)
    {
      v6 = v4;
      v17.value.super.isa = a1;
      v17.is_nil = 0;
      sub_100743384(v17, v7);
    }

    v8 = sub_10062F024();
    if (v8 >> 62)
    {
      v15 = v8;
      v16 = sub_100754664();
      v8 = v15;
      if (v16)
      {
        goto LABEL_7;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = sub_100754574();
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
        v12 = qword_10093CB50;
        v13 = v11;
        v14 = [*(v11 + qword_10093CB50) layer];
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

void sub_1006A6AA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
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

      sub_100632A30(v17, a7);

      v11 = v17;
    }
  }
}

unint64_t sub_1006A6BAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v33 = a6;
  v31 = a5;
  v28 = a4;
  *&v34 = a1;
  *(&v34 + 1) = a2;
  v10 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v10 - 8);
  v30 = &v27 - v11;
  v12 = sub_1007504F4();
  __chkstk_darwin(v12 - 8);
  v13 = sub_100746A94();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  v29 = sub_100746B04();
  v20 = *(v29 - 8);
  __chkstk_darwin(v29);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  v36[0] = 0x4021000000000000;
  if (a3)
  {
    v23 = sub_100743844();
  }

  else
  {
    v23 = 0;
  }

  sub_10062E728(v23, a8, v19);

  sub_10000C824(v36, v35);
  (*(v14 + 16))(v16, v19, v13);
  if (v34 != 0)
  {
    goto LABEL_14;
  }

  result = sub_100631A30(a3, v28, 0, 1);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v25 = result;
  v26 = sub_100754664();
  result = v25;
  if (!v26)
  {
LABEL_13:

LABEL_14:
    sub_100750504();
    goto LABEL_15;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100754574();
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_10:

    sub_10074F2A4();
    sub_100750504();

LABEL_15:
    sub_100016B4C(v31, v30, &unk_1009281D0);
    sub_100746AD4();
    (*(v14 + 8))(v19, v13);
    sub_10000C620(v36);
    sub_100746B34();
    sub_1006A6FF0(&qword_100923468, &type metadata accessor for LockupMediaLayout);
    sub_100750D34();
    return (*(v20 + 8))(v22, v29);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006A6FF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006A7038()
{
  result = qword_10092B4B0;
  if (!qword_10092B4B0)
  {
    sub_100016C60(255, &qword_100922300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092B4B0);
  }

  return result;
}

uint64_t sub_1006A70A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006A70D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1006A7120()
{
  result = qword_100944F60;
  if (!qword_100944F60)
  {
    sub_10000C724(&qword_100941700);
    sub_1006A7038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944F60);
  }

  return result;
}

unint64_t sub_1006A71AC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v215 = a8;
  v222 = a7;
  v225 = a5;
  v226 = a6;
  v218 = a4;
  v223 = a3;
  v229 = a2;
  v12 = sub_10000C518(&qword_100923450);
  __chkstk_darwin(v12 - 8);
  v194 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v205 = &v182 - v15;
  v188 = sub_100743584();
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v185 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v186 = &v182 - v18;
  v19 = sub_10074F314();
  __chkstk_darwin(v19 - 8);
  v184 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v21 - 8);
  v213 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v214 = &v182 - v24;
  v25 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v25 - 8);
  v212 = &v182 - v26;
  v27 = sub_100744864();
  __chkstk_darwin(v27 - 8);
  v193 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v200 = &v182 - v30;
  __chkstk_darwin(v31);
  v209 = &v182 - v32;
  __chkstk_darwin(v33);
  v208 = &v182 - v34;
  v211 = sub_100744894();
  v210 = *(v211 - 8);
  __chkstk_darwin(v211);
  v199 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v207 = &v182 - v37;
  v217 = sub_100747D94();
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v201 = &v182 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v227 = &v182 - v40;
  v221 = sub_10074A7F4();
  v41 = *(v221 - 8);
  __chkstk_darwin(v221);
  v43 = &v182 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for ScreenshotDisplayConfiguration();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v183 = &v182 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v182 - v46;
  v48 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v48 - 8);
  v198 = &v182 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v182 - v51;
  v220 = sub_1007504F4();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v197 = &v182 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v55 = sub_100746A94();
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v189 = &v182 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v195 = &v182 - v59;
  __chkstk_darwin(v60);
  v62 = &v182 - v61;
  v224 = sub_100746B04();
  v228 = *(v224 - 8);
  __chkstk_darwin(v224);
  v196 = &v182 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v66 = &v182 - v65;
  v233 = &type metadata for CGFloat;
  v234 = &protocol witness table for CGFloat;
  v232 = 0x4021000000000000;
  sub_10000C824(&v232, v231);
  v190 = v56;
  name = v56[1].name;
  v67 = v56 + 1;
  v204 = v55;
  v203 = v67;
  v202 = name;
  (name)(v62, v226, v55);
  v206 = a1;
  if (v229 | a1)
  {
    v69 = v223;
LABEL_11:
    sub_100750504();
    goto LABEL_12;
  }

  v69 = v223;
  result = sub_100631A30(v223, v218, 0, 1);
  if (result >> 62)
  {
    v71 = result;
    v72 = sub_100754664();
    result = v71;
    if (v72)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }
  }

  sub_10074F2A4();
  sub_100750504();

LABEL_12:
  sub_100016B4C(v225, v52, &unk_1009281D0);
  sub_100746AD4();
  sub_10000C620(&v232);
  v73 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
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
    v79 = sub_100743844();
  }

  else
  {
    v79 = 0;
  }

  sub_100743864();
  sub_1002898DC(v79, v47);

  v80 = &v230[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayConfiguration];
  swift_beginAccess();
  sub_1000243DC(v47, v80);
  swift_endAccess();
  sub_10062F1F4();
  sub_100024440(v47);
  if (v69)
  {
    v81 = sub_100743844();
  }

  else
  {
    v81 = 0;
  }

  v82 = v221;
  v47 = v230;
  *&v230[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_platform] = v81;

  sub_10062F3F8();

  (*(v41 + 16))(v43, v222, v82);
  v83 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v41 + 24))(&v47[v83], v43, v82);
  swift_endAccess();
  [v47 setNeedsLayout];
  (*(v41 + 8))(v43, v82);
  if (v229)
  {
    (*(v210 + 104))(v207, enum case for VideoFillMode.scaleAspectFill(_:), v211);

    sub_10074EC14();
    sub_10074F2A4();
    sub_100750504();

    (*(v219 + 56))(v52, 0, 1, v220);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v84 = v212;
    sub_10074EC24();
    v85 = sub_100741264();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
    v86 = v214;
    sub_10074EBE4();
    v87 = v213;
    sub_10074EBD4();
    type metadata accessor for VideoView();
    sub_1006A6FF0(&qword_1009230E0, type metadata accessor for VideoView);
    v88 = sub_1007464A4();
    sub_10000C8CC(v87, &unk_1009281C0);
    sub_10000C8CC(v86, &unk_1009281C0);
    sub_10000C8CC(v84, &unk_100923970);
    sub_10000C8CC(&v232, &unk_1009276E0);
    Strong = swift_unknownObjectWeakLoadStrong();
    v67 = &stru_1008F2000;
    if (Strong)
    {
      v90 = Strong;
      v91 = [Strong superview];
      if (v91)
      {
        v92 = v91;
        sub_100016C60(0, &qword_100922300);
        v93 = v47;
        v94 = sub_100753FC4();

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

    sub_10062FDFC();
    [v47 setNeedsLayout];

    v98 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v99 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
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
    return [v47 v67[51].attr];
  }

  if (v206 && (a11 & 1) == 0)
  {
    swift_retain_n();
    v110 = [v47 traitCollection];
    v234 = &protocol witness table for CGFloat;
    v233 = &type metadata for CGFloat;
    v232 = 0x4021000000000000;
    sub_10000C824(&v232, v231);
    (v202)(v195, v226, v204);
    v111 = v197;
    sub_100750504();
    sub_100016B4C(v225, v52, &unk_1009281D0);
    v112 = v196;
    sub_100746AD4();
    sub_10000C620(&v232);
    sub_100746AE4();
    sub_1007504C4();
    (*(v219 + 8))(v111, v220);

    v113 = sub_10074F374();
    v114 = sub_100254D74(0, 1, 1, _swiftEmptyArrayStorage);
    v116 = *(v114 + 2);
    v115 = *(v114 + 3);
    if (v116 >= v115 >> 1)
    {
      v114 = sub_100254D74((v115 > 1), v116 + 1, 1, v114);
    }

    v78(v112, v224);
    *(v114 + 2) = v116 + 1;
    v117 = &v114[16 * v116 + 32];
    *v117 = v113;
    *(v117 + 8) = 0;
    v118 = *(v114 + 4);

    v119 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v67 = &stru_1008F2000;
    if (v118)
    {

      sub_10074F324();
      sub_100743364();
      [v119 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();
      [v119 setContentMode:2];
      v120 = v119;
      sub_100746E74();
      v121 = *(v80 + 48);
      sub_100746E64();

      v122 = v183;
      sub_100289598(v80, v183);
      v123 = *(v122 + 16);
      sub_100024440(v122);
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
      sub_1007433B4();

      (*(v124 + 8))(v128, v127);
    }

    v129 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v130 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
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
    sub_1006A6FF0(&qword_1009230E0, type metadata accessor for VideoView);
    v159 = [v158 superview];
    if (v159)
    {
      v160 = v159;
      sub_100016C60(0, &qword_100922300);
      v161 = v47;
      v162 = sub_100753FC4();

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

    sub_10062FDFC();
    [v47 setNeedsLayout];

    return [v47 v67[51].attr];
  }

  v67 = &stru_1008F2000;
  if (!v218)
  {
    goto LABEL_80;
  }

  result = sub_10074F794();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    goto LABEL_79;
  }

LABEL_78:
  v168 = result;
  v169 = sub_100754664();
  result = v168;
  if (!v169)
  {
LABEL_79:

LABEL_80:
    v170 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v171 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
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

    [v47 v67[51].attr];
    v173 = swift_unknownObjectWeakLoadStrong();
    if (!v173)
    {
      goto LABEL_89;
    }

    v174 = v173;
    sub_1006A6FF0(&qword_1009230E0, type metadata accessor for VideoView);
    v175 = [v174 superview];
    if (v175)
    {
      v176 = v175;
      sub_100016C60(0, &qword_100922300);
      v177 = v47;
      v178 = sub_100753FC4();

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

    sub_10062FDFC();
    [v47 v67[51].attr];
    return [v47 v67[51].attr];
  }

LABEL_34:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100754574();
LABEL_37:

    v103 = v189;
    v104 = v204;
    (v202)(v189, v226, v204);
    v105 = v190;
    v106 = (v190[5].attr)(v103, v104);
    v107 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (v105->attr)(v103, v104);
    if (v106 == v107)
    {
      v108 = 1;
      v109 = v205;
    }

    else
    {
      v132 = sub_10074F784();
      v109 = v205;
      sub_1002898DC(v132, v205);

      v108 = 0;
    }

    v133 = v191;
    v134 = v192;
    (*(v191 + 56))(v109, v108, 1, v192);
    (*(v210 + 104))(v199, enum case for VideoFillMode.scaleAspectFill(_:), v211);
    sub_10074EC14();
    sub_10074F2A4();
    v135 = v198;
    sub_100750504();

    (*(v219 + 56))(v135, 0, 1, v220);
    sub_10074EBB4();
    sub_10074EBF4();
    LODWORD(v229) = sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    v136 = v194;
    sub_100016B4C(v109, v194, &qword_100923450);
    if ((*(v133 + 48))(v136, 1, v134) == 1)
    {
      sub_10000C8CC(v136, &qword_100923450);
    }

    else
    {
      sub_100024440(v136);
    }

    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    v137 = v232;
    sub_10074EB94();
    v138 = v212;
    sub_10074EC24();
    v139 = sub_100741264();
    (*(*(v139 - 8) + 56))(v138, 0, 1, v139);
    v140 = v214;
    sub_10074EBE4();
    v141 = v213;
    sub_10074EBD4();
    type metadata accessor for VideoView();
    sub_1006A6FF0(&qword_1009230E0, type metadata accessor for VideoView);
    v229 = v137;
    v142 = sub_1007464A4();
    sub_10000C8CC(v141, &unk_1009281C0);
    sub_10000C8CC(v140, &unk_1009281C0);
    sub_10000C8CC(v138, &unk_100923970);
    sub_10000C8CC(&v232, &unk_1009276E0);
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
      sub_100016C60(0, &qword_100922300);
      v148 = v47;
      v149 = sub_100753FC4();

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

    sub_10062FDFC();
    [v47 v67[51].attr];

    v153 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v154 = *&v47[OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView];
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

    [v47 v67[51].attr];

    (*(v167 + 8))(v201, v166);
    sub_10000C8CC(v144, &qword_100923450);
    return [v47 v67[51].attr];
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006A8E74(uint64_t *a1, int a2)
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

uint64_t sub_1006A8EBC(uint64_t result, int a2, int a3)
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

uint64_t sub_1006A8F0C()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v4 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v4, v0);
  qword_100982DA8 = sub_100752E44();
  unk_100982DB0 = &protocol witness table for OSLogger;
  sub_10000D134(qword_100982D90);
  return sub_100752E34();
}

char *sub_1006A9050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000C518(&qword_100929630);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_dynamicDelegate] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_gridPresenter] = 0;
  v14 = &v5[OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_gridView];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_objectGraph] = a4;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_requestInfo] = a1;
  v15 = &v5[OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_referrer];
  *v15 = a2;
  *(v15 + 1) = a3;
  sub_1007442C4();

  sub_1007526E4();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_artworkLoader] = v41;
  sub_10074AD04();
  v16 = sub_100753064();

  sub_10074AD94();
  v17 = sub_100753064();

  sub_100744AC4();
  sub_1007526E4();
  v18 = sub_100744AB4();

  v40.receiver = v5;
  v40.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v40, "initWithServiceType:placement:bag:", v16, v17, v18);
  swift_unknownObjectRelease();

  v20 = v19;
  sub_10074AD84();
  v21 = sub_10074ED34();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    sub_10000C8CC(v13, &qword_100929630);
    v23 = 0;
  }

  else
  {
    sub_10074ECF4();
    (*(v22 + 8))(v13, v21);
    v23 = sub_100753064();
  }

  [v20 setSeed:v23];

  sub_10074ACF4();
  if (v24)
  {
    v25 = sub_100753064();
  }

  else
  {
    v25 = 0;
  }

  [v20 setOfferHints:v25];

  v26 = v20;
  v27 = sub_10074AD14();
  if (v27)
  {
    sub_1001FC260(v27);

    v28.super.isa = sub_100752F34().super.isa;
  }

  else
  {
    v28.super.isa = 0;
  }

  [v26 setClientOptions:v28.super.isa];

  if (sub_10074AD24())
  {
    v29.super.isa = sub_100752F34().super.isa;
  }

  else
  {
    v29.super.isa = 0;
  }

  [v26 setMetricsOverlay:v29.super.isa];

  [v26 setAnonymousMetrics:1];
  sub_100744AD4();
  v30 = sub_100753064();

  [v26 setMediaClientIdentifier:v30];

  sub_1001FEAF4();
  v31 = v26;
  sub_1007526E4();
  v32 = v41;
  v33 = [v41 ams_activeiTunesAccount];

  [v31 setAccount:v33];
  sub_10074B294();
  sub_1007526E4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = objc_allocWithZone(sub_10074CC04());
  v35 = sub_10074CBF4();

  v36 = OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_dynamicDelegate;
  *&v31[OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_dynamicDelegate] = v35;
  swift_unknownObjectRelease();
  [v31 setDelegate:*&v31[v36]];
  sub_10074C5F4();
  v37 = sub_10074C5E4();
  [v31 setMediaContentDelegate:v37];

  return v31;
}

void sub_1006A9724(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void *sub_1006A9780(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = sub_1001FE580(a1, a2, a3, a4);
  v11 = v10;

  return v10;
}

uint64_t sub_1006A9B78()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_referrer);

  return v1;
}

id sub_1006A9CA0()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1006A9CF4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

void (*sub_1006A9DB4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1001FD2FC(v2);
  return sub_100018728;
}

void *sub_1006A9E24(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v4 = sub_1001FE580(a1, a2, a3, a4);
  v5 = v4;
  return v4;
}

uint64_t sub_1006A9E50(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1006AA154(&qword_100944FE8);

  return DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(a1, a2, ObjectType, v5);
}

uint64_t sub_1006A9EF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_1006AA154(&qword_100944FE8);

  return a3(ObjectType, v4);
}

uint64_t sub_1006AA024()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006AA154(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarketingItemViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006AA194()
{
  if (qword_100921CD0 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_100982D90, qword_100982DA8);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v3[3] = v2;
  v0 = sub_10000D134(v3);
  (*(*(v2 - 8) + 16))(v0);
  sub_100752424();
  sub_10000C8CC(v3, &unk_100923520);
  sub_100752D04();
}

void sub_1006AA3C0(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for SearchResultsContainerViewController();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_100744254();
}

void sub_1006AA440(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for SearchResultsContainerViewController();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_100744254();
}

uint64_t sub_1006AA4B8(uint64_t a1)
{
  v3 = sub_100741454();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v60 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10074D4C4();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v6 - 8);
  v65 = &v40 - v7;
  v8 = sub_1007440E4();
  __chkstk_darwin(v8 - 8);
  v64 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_10092E4C0);
  __chkstk_darwin(v10 - 8);
  v63 = &v40 - v11;
  v12 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
  v13 = swift_allocObject();
  sub_10074FFF4();
  *(v13 + 16) = sub_10074FFE4();
  v69 = v12;
  v70 = sub_1006AB508(&unk_100945078, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter);
  v67 = v13;
  sub_10074D4D4();
  swift_allocObject();
  v14 = sub_10074D4B4();
  v15 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_objectGraph);
  v56 = v1;
  sub_100747474();
  swift_allocObject();
  swift_retain_n();
  v16 = sub_100747454();
  sub_10000C518(&qword_100938E30);
  sub_100752314();
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1007A6580;
  v67 = v14;
  v59 = v14;

  sub_1007522F4();
  v67 = v16;
  v58 = v16;

  sub_1007522F4();
  sub_100749444();
  sub_100752764();
  sub_100752D34();
  v55 = v66;
  v54 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_facetsPresenter);
  sub_10000C518(&unk_100945088);

  sub_100752754();
  v53 = v67;
  v52 = v68;
  v51 = sub_100744074();
  v50 = v17;
  sub_100744094();
  sub_1007440A4();
  v49 = sub_1007440B4();
  v48 = v18;
  sub_100744034();
  v47 = sub_100744064();
  v46 = sub_100744044();
  v45 = sub_100744054();
  v44 = v19;
  sub_100744014();
  sub_100744004();
  sub_10000C518(&unk_100925780);
  sub_100752D34();
  sub_10074D724();
  sub_100752754();
  sub_10074D994();
  swift_allocObject();
  v20 = sub_10074D944();
  v21 = sub_1006AB508(&qword_100945098, &type metadata accessor for SearchResultsDiffablePagePresenter);
  swift_retain_n();
  v22 = sub_1006B94B0(v15, v20, v21, v57, 0x6552686372616573, 0xED000073746C7573);

  v23 = objc_allocWithZone(type metadata accessor for SearchResultsDiffablePageViewController());

  v24 = a1;
  v25 = v56;
  v26 = sub_1000DDDDC(v20, v24, v22);
  v27 = v25 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchResultsViewController;
  v28 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchResultsViewController);
  if (v28)
  {
    v29 = v42;
    v30 = v41;
    v31 = v43;
    (*(v42 + 104))(v41, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v43);
    v32 = v28;
    sub_10074D484();
    (*(v29 + 8))(v30, v31);
  }

  sub_100749F54();
  v33 = v60;
  sub_100741444();
  sub_100741424();
  (*(v61 + 8))(v33, v62);
  sub_100749F44();
  sub_1007527B4();
  v34 = &off_1008678C0;
  if (!v26)
  {
    v34 = 0;
  }

  v35 = *v27;
  *v27 = v26;
  *(v27 + 8) = v34;
  v36 = v26;

  if (v26)
  {
    v37 = v25 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchResultsDelegate;
    swift_unknownObjectWeakLoadStrong();
    v38 = *(v37 + 8);

    *&v36[qword_10097D998 + 8] = v38;
    swift_unknownObjectWeakAssign();

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

BOOL sub_1006AAD2C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return *(v2 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSection) == 2;
  }

  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSection) != 2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchResultsViewController);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  v7 = sub_10074D984();
  if (v8)
  {
    if (v7 == a1 && v8 == a2)
    {

      return 1;
    }

    else
    {
      v10 = sub_100754754();

      return v10 & 1;
    }
  }

  else
  {

    return 0;
  }
}

void sub_1006AAE10(void *a1)
{
  v2 = v1;
  v4 = sub_10074D4C4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchResultsViewController];
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchResultsViewController];
  if (!a1)
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v10)
  {
    v11 = v10 == a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (!v10)
    {
      v12 = 0;
LABEL_10:
      *v9 = 0;
      v9[1] = 0;

      goto LABEL_11;
    }

LABEL_9:
    (*(v5 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v4, v6);
    v13 = v10;
    sub_10074D484();
    (*(v5 + 8))(v8, v4);

    v12 = *v9;
    goto LABEL_10;
  }

LABEL_11:
  v14 = OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController];
  if (v15)
  {
    v16 = v15;
    [v16 willMoveToParentViewController:0];
    v17 = [v16 view];
    if (!v17)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v18 = v17;
    [v17 removeFromSuperview];

    [v16 removeFromParentViewController];
  }

  if (!a1)
  {
LABEL_20:
    v35 = *&v2[v14];
    *&v2[v14] = a1;
    v36 = a1;

    return;
  }

  v19 = a1;
  [v2 addChildViewController:v19];
  v20 = [v19 view];
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v2 view];
  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = v22;
  [v22 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [v21 setFrame:{v25, v27, v29, v31}];
  v32 = [v2 view];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = v32;
  v34 = [v19 view];

  if (v34)
  {
    [v33 addSubview:v34];

    [v19 didMoveToParentViewController:v2];
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
}

id sub_1006AB144()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1006AB26C()
{
  result = qword_100945068;
  if (!qword_100945068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945068);
  }

  return result;
}

id sub_1006AB2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchFocusViewController] = 0;
  v7 = &v4[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchResultsViewController];
  *v7 = 0;
  v7[1] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchResultsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSection] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_objectGraph] = a3;
  sub_1007442C4();
  sub_100752764();

  sub_100752D34();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_artworkLoader] = v15;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_facetsPresenter] = a1;
  sub_10074CE34();

  sub_100752754();
  sub_100748E04();
  swift_allocObject();
  v8 = sub_100748DB4();
  v9 = sub_1006AB508(&qword_100945070, &type metadata accessor for SearchHintsPresenter);

  v10 = sub_1006B94B0(a3, v8, v9, _swiftEmptyArrayStorage, 0x6948686372616573, 0xEB0000000073746ELL);
  v11 = objc_allocWithZone(type metadata accessor for SearchHintsViewController());
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchHintsViewController] = sub_10054BBF4(v8, v10);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SearchResultsContainerViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);

  return v12;
}

uint64_t sub_1006AB508(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006AB550(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSection;
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSection);
  if (v5 != a1)
  {
    v6 = v1 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(a1, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    *(v1 + v4) = a1;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      v19 = a1;
      goto LABEL_15;
    }

    v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchHintsViewController);
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchResultsViewController);
    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_13:
    v19 = v9;
    v10 = v9;
    goto LABEL_15;
  }

  v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchFocusViewController);
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_14:
  v19 = 0;
LABEL_15:
  v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v11)
  {
    v12 = v19;
    if (v19)
    {
      sub_1006AB7F4();
      v13 = v11;
      v14 = v19;
      v15 = sub_100753FC4();

      v12 = v19;
      if (v15)
      {
LABEL_18:
        if (v5 == a1)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    v12 = v19;
    if (!v19)
    {
      goto LABEL_18;
    }
  }

  sub_1006AAE10(v12);
LABEL_22:
  v16 = v2 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    v18 = swift_getObjectType();
    (*(v17 + 16))(*(v2 + v4), v5, v18, v17);
    swift_unknownObjectRelease();
  }

LABEL_24:
}

void sub_1006AB734()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchFocusViewController) = 0;
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchResultsViewController);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchResultsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSection) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController) = 0;
  sub_100754644();
  __break(1u);
}

unint64_t sub_1006AB7F4()
{
  result = qword_1009450A0;
  if (!qword_1009450A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009450A0);
  }

  return result;
}

uint64_t sub_1006AB840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100754074();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (!a1)
  {
    v13 = sub_1007541F4();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    goto LABEL_5;
  }

  sub_100754214();
  v11 = sub_1007541F4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_5:
    sub_10003BB8C(v10);
    sub_100754164();
    goto LABEL_6;
  }

  (*(v12 + 32))(a2, v10, v11);
LABEL_6:
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  sub_100754084();
  v14 = objc_opt_self();
  v15 = [v14 systemBlueColor];
  sub_100754124();
  sub_10000D198();
  v16 = [v14 whiteColor];
  v17.super.isa = [v14 tertiarySystemGroupedBackgroundColor];
  v18.super.isa = v16;
  sub_100753EC4(v18, v17);
  sub_100754114();
  return sub_1007540C4();
}

uint64_t sub_1006ABADC()
{
  v1._object = 0x800000010078A9C0;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_1007458B4(v1, v2);
}

uint64_t sub_1006ABB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50[1] = a1;
  v7 = sub_10000C518(&qword_100923030);
  __chkstk_darwin(v7 - 8);
  v50[0] = v50 - v8;
  v56 = sub_100750304();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100750534();
  v60 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v51 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = v50 - v14;
  v15 = sub_1007410D4();
  __chkstk_darwin(v15 - 8);
  v16 = sub_100741084();
  v57 = *(v16 - 8);
  v58 = v16;
  __chkstk_darwin(v16);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&qword_100932470);
  v20 = __chkstk_darwin(v19 - 8);
  v53 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v50 - v22;
  v24 = *(a4 + 16);
  v61 = a3;
  v62 = a4;
  v25 = a4;
  v26 = v4;
  v52 = v24;
  v27 = v24(a3, v25);
  sub_100754214();

  sub_1007410C4();
  sub_100741094();
  v63 = v26;
  v28 = [v26 traitCollection];
  v29 = sub_100753194();
  v55 = v18;
  if (v28 && (sub_100753804() & 1) != 0)
  {
    if (v29 < 9)
    {
LABEL_4:
      v30 = v60;
      if (qword_1009212C0 != -1)
      {
        swift_once();
      }

      v31 = qword_100981578;
      goto LABEL_11;
    }
  }

  else if (v29 <= 6)
  {
    goto LABEL_4;
  }

  v30 = v60;
  if (qword_1009212C8 != -1)
  {
    swift_once();
  }

  v31 = qword_100981590;
LABEL_11:
  v32 = sub_10000D0FC(v11, v31);
  v33 = *(v30 + 16);
  v34 = v51;
  v33(v51, v32, v11);

  v35 = v59;
  (*(v30 + 32))(v59, v34, v11);
  v33(v10, v35, v11);
  v36 = v54;
  v37 = v56;
  (*(v54 + 104))(v10, enum case for FontSource.useCase(_:), v56);
  v38.super.isa = [v63 traitCollection];
  isa = v38.super.isa;
  v40 = sub_1007502F4(v38).super.isa;

  (*(v36 + 8))(v10, v37);
  v64 = v40;
  sub_1000168F0();
  v41 = v40;
  v42 = v55;
  sub_1007410A4();
  v43 = sub_1007541F4();
  v44 = (*(*(v43 - 8) + 48))(v23, 1, v43);
  v46 = v57;
  v45 = v58;
  if (!v44)
  {
    v47 = v50[0];
    (*(v57 + 16))(v50[0], v42, v58);
    (*(v46 + 56))(v47, 0, 1, v45);
    sub_1007540F4();
  }

  v48 = v52(v61, v62);
  sub_10003BB1C(v23, v53);
  sub_100754224();

  (*(v30 + 8))(v35, v11);
  (*(v46 + 8))(v42, v45);
  return sub_10003BB8C(v23);
}

uint64_t sub_1006AC1B8()
{
  v0 = sub_100754724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741D94();
  sub_1006AC478(&qword_100924378, &type metadata accessor for InAppPurchaseShowcase);
  result = sub_1007468B4();
  v9 = v13;
  if (v13)
  {
    v10 = sub_10007DC04();
    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    (*(v5 + 8))(v7, v4);
    type metadata accessor for InAppPurchaseShowcaseLockupView();
    sub_100244520(v9, v10);
    if (qword_100921B18 != -1)
    {
      swift_once();
    }

    v11 = sub_100750B04();
    sub_10000D0FC(v11, qword_1009428B0);
    sub_1007502D4();
    sub_100750564();
    swift_unknownObjectRelease();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_1006AC478(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1006AC510(uint64_t a1)
{
  v2 = sub_100754724();
  v132 = *(v2 - 8);
  v133 = v2;
  __chkstk_darwin(v2);
  v128 = v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1007504F4();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v131 = v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v5 - 8);
  v7 = v119 - v6;
  v137 = sub_10074F6E4();
  v8 = *(v137 - 8);
  __chkstk_darwin(v137);
  *&v135 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v136 = v119 - v11;
  v12 = sub_10074F704();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v119 - v17;
  __chkstk_darwin(v19);
  v138 = v119 - v20;
  sub_10074E934();
  sub_1006AD970(&qword_1009450C0, &type metadata accessor for Quote);
  sub_1007468B4();
  v140 = v147;
  if (!v147)
  {
    return 0.0;
  }

  v125 = v7;
  (*(v8 + 104))(v136, enum case for PageGrid.Direction.vertical(_:), v137);
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5C4();
  v21 = *(v13 + 8);
  v21(v18, v12);
  swift_getKeyPath();
  v139 = a1;
  sub_100746914();

  sub_10074F5E4();
  v21(v15, v12);
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5D4();
  v21(v18, v12);
  v23 = v136;
  v22 = v137;
  (*(v8 + 16))(v135, v136, v137);
  sub_1004E97E0(0.0);
  sub_10074F6B4();
  (*(v8 + 8))(v23, v22);
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v136 = v21;
  v137 = v12;
  v21(v18, v12);
  sub_10074F664();
  sub_100753BA4();
  v151._object = 0x800000010076DF60;
  v151._countAndFlagsBits = 0xD000000000000010;
  v152._countAndFlagsBits = 0;
  v152._object = 0xE000000000000000;
  v24 = sub_1007458B4(v151, v152);
  v26 = sub_10017093C(v24, v25);
  v27 = v13 + 8;
  if (v26 <= 2)
  {
    v28 = v18;
    if (v26)
    {
      if (v26 == 1)
      {
        if (qword_100920380 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_10097DDD8;
      }

      else
      {
        if (qword_100920388 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_10097DE30;
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (v26 - 3 >= 2)
  {
    v28 = v18;
    if (v26 == 5)
    {
      if (qword_100920398 != -1)
      {
        swift_once();
      }

      v29 = &xmmword_10097DEE0;
      goto LABEL_23;
    }

LABEL_17:
    if (qword_100920378 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_10097DD80;
    goto LABEL_23;
  }

  v28 = v18;
  if (qword_100920390 != -1)
  {
    swift_once();
  }

  v29 = &xmmword_10097DE88;
LABEL_23:
  v31 = v29[3];
  *&v149[32] = v29[4];
  v150 = *(v29 + 10);
  v32 = v29[2];
  *&v149[16] = v31;
  *v149 = v32;
  v33 = *v29;
  v148 = v29[1];
  v147 = v33;
  v35 = *&v149[40];
  v34 = v150;
  v134 = *&v149[8];
  v135 = *&v149[24];
  v37 = *(&v148 + 1);
  v36 = *v149;
  v39 = *(&v33 + 1);
  v38 = v148;
  v40 = v33;
  sub_100170CF0(&v147, v144);
  v144[0] = __PAIR128__(v39, v40);
  v144[1] = __PAIR128__(v37, v38);
  *&v145[0] = v36;
  *(v145 + 8) = v134;
  *(&v145[1] + 8) = v135;
  *(&v145[2] + 1) = v35;
  v146 = v34;
  *v149 = v145[0];
  v147 = __PAIR128__(v39, v40);
  v148 = __PAIR128__(v37, v38);
  v150 = v34;
  *&v149[16] = v145[1];
  *&v149[32] = v145[2];
  swift_getKeyPath();
  sub_100746914();

  sub_10074F664();
  (v136)(v28, v137);
  v41 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v135 = sub_100170988(&v147);

  sub_10074E904();
  v43 = v42;
  v44 = sub_100016C60(0, &qword_100923AB0);
  if (qword_1009203B8 != -1)
  {
    swift_once();
  }

  v126 = v27;
  *&v134 = sub_100750534();
  v45 = sub_10000D0FC(v134, qword_10097DF38);
  swift_getKeyPath();
  sub_100746914();

  v46 = v141[0];
  v124 = v45;
  v47 = sub_100753C14();

  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v49 = qword_100920138;
  v50 = NSParagraphStyleAttributeName;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = [qword_10097D250 paragraphStyleWithBaseWritingDirection:-1];
  v52 = sub_100016C60(0, &qword_10092A248);
  *(inited + 40) = v51;
  *(inited + 64) = v52;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v44;
  *(inited + 80) = v47;
  v53 = NSFontAttributeName;
  *&v130 = v47;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510);
  swift_arrayDestroy();
  v54 = objc_allocWithZone(NSMutableAttributedString);
  v55 = sub_100753064();
  type metadata accessor for Key(0);
  sub_1006AD970(&qword_1009276F0, type metadata accessor for Key);
  isa = sub_100752F34().super.isa;

  v57 = [v54 initWithString:v55 attributes:isa];

  if (v135)
  {
    v123 = v43;
    v58 = v135;
    sub_100413A18(_swiftEmptyArrayStorage);
    v59 = v57;
    v60 = objc_allocWithZone(NSAttributedString);
    v61 = sub_100753064();
    v62 = sub_100752F34().super.isa;

    v63 = [v60 initWithString:v61 attributes:v62];

    [v59 appendAttributedString:v63];
    v64 = [objc_allocWithZone(NSTextAttachment) init];
    [v64 setImage:v58];
    [v58 size];
    [v64 setBounds:{0.0, -v35, v65, v66}];
    v67 = [objc_opt_self() attributedStringWithAttachment:v64];
    [v59 appendAttributedString:v67];

    sub_100170D28(v144);
  }

  else
  {

    sub_100170D28(v144);
    v59 = v57;
  }

  v68 = v134;
  v69 = *(v134 - 8);
  v70 = v125;
  (*(v69 + 16))(v125, v124, v134);
  (*(v69 + 56))(v70, 0, 1, v68);
  swift_getKeyPath();
  sub_100746914();

  v71 = sub_10074F3F4();
  v142 = v71;
  v122 = sub_1006AD970(&qword_10092AC70, &type metadata accessor for Feature);
  v143 = v122;
  v72 = sub_10000D134(v141);
  v73 = *(v71 - 8);
  v74 = *(v73 + 104);
  v121 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v119[1] = v73 + 104;
  v120 = v74;
  v74(v72);
  sub_10074FC74();
  sub_10000C620(v141);
  sub_10074CCA4();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  swift_unknownObjectRelease();
  sub_10006A144(v70);
  if (qword_1009203C8 != -1)
  {
    swift_once();
  }

  v125 = v59;
  v81 = sub_100750B04();
  sub_10000D0FC(v81, qword_10097DF68);
  swift_getKeyPath();
  sub_100746914();

  sub_100750584();
  v83 = v82;
  swift_unknownObjectRelease();
  v84 = v76 + v83;
  if (qword_1009203D0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v81, qword_10097DF80);
  swift_getKeyPath();
  sub_100746914();

  v85 = v141[0];
  v86 = sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v87 = swift_allocObject();
  v130 = xmmword_1007A5CF0;
  *(v87 + 16) = xmmword_1007A5CF0;
  *(v87 + 32) = v85;
  v88 = v85;
  v123 = v86;
  v89 = sub_100751044();
  sub_100750544();
  v91 = v90;

  v30 = v84 + v91 - v80;
  v124 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v124 setMaximumNumberOfLines:0];
  sub_10074E914();
  if (v92)
  {
    if (qword_1009203C0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v134, qword_10097DF50);
    swift_getKeyPath();
    sub_100746914();

    v142 = v71;
    v143 = v122;
    v93 = sub_10000D134(v141);
    v120(v93, v121, v71);
    sub_10074FC74();
    sub_10000C620(v141);
    sub_10074CCB4();
    v95 = v94;
    swift_unknownObjectRelease();

    if (qword_1009203D8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v81, qword_10097DF98);
    swift_getKeyPath();
    sub_100746914();

    v96 = v141[0];
    v97 = swift_allocObject();
    *(v97 + 16) = v130;
    *(v97 + 32) = v96;
    v98 = v96;
    v99 = sub_100751044();
    sub_100750544();
    v101 = v100;

    v102 = v95 + v101 - v78;
    v103 = v132;
    if (qword_1009203E0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v81, qword_10097DFB0);
    swift_getKeyPath();
    sub_100746914();

    v104 = v141[0];
    v105 = swift_allocObject();
    *(v105 + 16) = v130;
    *(v105 + 32) = v104;
    v106 = v104;
    v107 = sub_100751044();
    sub_100750544();
    v109 = v108;

    v30 = v30 + v102 + v109 - v80;
    v110 = v133;
  }

  else
  {
    v103 = v132;
    v110 = v133;
  }

  v111 = v131;
  if (sub_10074E924())
  {
    sub_10074F2A4();
    sub_100750504();
    sub_1007504C4();
    v113 = v112;
    if (qword_1009203E8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v81, qword_10097DFC8);
    swift_getKeyPath();
    sub_100746914();

    v114 = v141[0];
    v115 = v128;
    sub_1007502D4();
    sub_100750AD4();
    v117 = v116;

    (*(v103 + 8))(v115, v110);
    (*(v127 + 8))(v111, v129);
    (v136)(v138, v137);
    return v30 + v113 + v117;
  }

  else
  {
    (v136)(v138, v137);
  }

  return v30;
}

uint64_t sub_1006AD970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for TodayCardGrid.SizeCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TodayCardGrid.SizeCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1006ADB20(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1006ADB34(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_1006ADB54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10001E48C(0, v1, 0);
  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(v5 + 16);

    if (v6 >= 2)
    {
      break;
    }

    v7 = v5;
LABEL_16:
    v17 = _swiftEmptyArrayStorage[2];
    v16 = _swiftEmptyArrayStorage[3];
    if (v17 >= v16 >> 1)
    {
      sub_10001E48C((v16 > 1), v17 + 1, 1);
    }

    ++v3;
    _swiftEmptyArrayStorage[2] = v17 + 1;
    _swiftEmptyArrayStorage[v17 + 4] = v7;
    if (v3 == v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v7 = v5;
  if ((result & 1) == 0)
  {
    result = sub_10025DA80(v5);
    v7 = result;
  }

  v9 = 0;
  v10 = v7 + 32;
  while (1)
  {
    v11 = v9 + 1;
    v12 = v6 - (v9 + 1);
    if (__OFSUB__(v6, v9 + 1))
    {
      break;
    }

    if (v9 != v12)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      v13 = *(v7 + 16);
      if (v9 >= v13)
      {
        goto LABEL_22;
      }

      if (v12 >= v13)
      {
        goto LABEL_23;
      }

      v14 = v7 + v9;
      v15 = *(v14 + 32);
      *(v14 + 32) = *(v10 + v12);
      *(v10 + v12) = v15;
    }

    v9 = v11;
    if (v6 >> 1 == v11)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

Swift::Int sub_1006ADCD8()
{
  v1 = *v0;
  sub_100754834();
  if ((v1 - 4) >= 3u)
  {
    sub_100754844(2uLL);
  }

  else
  {
    v1 = qword_1007D51C0[(v1 - 4)];
  }

  sub_100754844(v1);
  return sub_100754884();
}

void sub_1006ADD50()
{
  v1 = *v0;
  if ((v1 - 4) >= 3u)
  {
    sub_100754844(2uLL);
  }

  else
  {
    v1 = qword_1007D51C0[(v1 - 4)];
  }

  sub_100754844(v1);
}

Swift::Int sub_1006ADDAC()
{
  v1 = *v0;
  sub_100754834();
  if ((v1 - 4) >= 3u)
  {
    sub_100754844(2uLL);
  }

  else
  {
    v1 = qword_1007D51C0[(v1 - 4)];
  }

  sub_100754844(v1);
  return sub_100754884();
}

BOOL sub_1006ADE20(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 6:
      return v3 == 6;
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 4) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_1006ADE8C()
{
  result = qword_1009450C8;
  if (!qword_1009450C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009450C8);
  }

  return result;
}

uint64_t sub_1006ADEE0()
{
  v0 = sub_10000C518(&qword_10093A470);
  sub_100039C50(v0, qword_100982DB8);
  sub_10000D0FC(v0, qword_100982DB8);
  type metadata accessor for DeviceType(0);
  return sub_100752664();
}

uint64_t sub_1006ADF60()
{
  v0 = sub_10000C518(&unk_10092E450);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v23 - v2;
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F594();
  v9 = v8;
  result = (*(v5 + 8))(v7, v4);
  v11 = floor(v9);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = v11;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v1 + 8))(v3, v0);
  v13 = *(v23[1] + 16);

  if (!v12)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v14 = v13 / v12;
  v15 = v13 % v12;
  if (v15)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = v14;
  }

  if (v16 < 0)
  {
    goto LABEL_26;
  }

  for (i = _swiftEmptyArrayStorage; v16; --v16)
  {
    if (v15 && v16 == 1)
    {
      v18 = sub_100753324();
      *(v18 + 16) = v15;
      v19 = (v18 + 32);
      v20 = v15;
    }

    else
    {
      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_22;
      }

      v18 = sub_100753324();
      *(v18 + 16) = v12;
      v19 = (v18 + 32);
      v20 = v12;
    }

    memset(v19, 4, v20);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10025577C(0, i[2] + 1, 1, i);
      i = result;
    }

    v22 = i[2];
    v21 = i[3];
    if (v22 >= v21 >> 1)
    {
      result = sub_10025577C((v21 > 1), v22 + 1, 1, i);
      i = result;
    }

    i[2] = v22 + 1;
    i[v22 + 4] = v18;
  }

  return i;
}

void *sub_1006AE27C()
{
  v0 = sub_10000C518(&unk_10092E450);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - v2;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v1 + 8))(v3, v0);
  v4 = *(v12[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C518(&qword_100923350);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007A5A00;
  *(v5 + 32) = &off_100861CD8;
  if (v4 != 1)
  {
    v6 = v4 >> 1;
    do
    {
      v7 = (v4 & 1) == 0 && v6 == 1;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v7)
      {
        v10 = &off_100861D28;
      }

      else
      {
        v10 = &off_100861D00;
      }

      if (v9 >= v8 >> 1)
      {
        v5 = sub_10025577C((v8 > 1), v9 + 1, 1, v5);
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v10;
      --v6;
    }

    while (v6);
  }

  return v5;
}

void *sub_1006AE448()
{
  v0 = sub_10000C518(&unk_10092E450);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - v2;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v1 + 8))(v3, v0);
  v4 = *(v15[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = _swiftEmptyArrayStorage;
  v6 = (v4 + 1) >> 1;
  v7 = v4 & 1;
  do
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v6 == 1 && v7)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_10025577C(0, v5[2] + 1, 1, v5);
      }

      v11 = v5[2];
      v10 = v5[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        v5 = sub_10025577C((v10 > 1), v11 + 1, 1, v5);
      }

      v8 = &off_100861D78;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_10025577C(0, v5[2] + 1, 1, v5);
      }

      v11 = v5[2];
      v13 = v5[3];
      v12 = v11 + 1;
      if (v11 >= v13 >> 1)
      {
        v5 = sub_10025577C((v13 > 1), v11 + 1, 1, v5);
      }

      v8 = &off_100861D50;
    }

    v5[2] = v12;
    v5[v11 + 4] = v8;
    --v6;
  }

  while (v6);
  return v5;
}

void *sub_1006AE674(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_10000C518(&qword_100923358);
    v4 = sub_100753324();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

void *sub_1006AE710(uint64_t a1)
{
  v49 = a1;
  v43 = sub_10074BFA4();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10074EA34();
  v2 = *(v48 - 8);
  __chkstk_darwin(v48);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_10092E450);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v47 = sub_10074BFD4();
  v42 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100752854();
  sub_100752824();
  if (qword_100921CD8 != -1)
  {
    swift_once();
  }

  v13 = sub_10000C518(&qword_10093A470);
  sub_10000D0FC(v13, qword_100982DB8);
  type metadata accessor for DeviceType(0);
  sub_100752534();

  v14 = v50;
  if (!v50)
  {
    v14 = ASKDeviceTypeGetCurrent();
  }

  v15 = sub_100753094();
  v17 = v16;
  if (v15 == sub_100753094() && v17 == v18)
  {

    v19 = 0;
  }

  else
  {
    v20 = sub_100754754();

    v19 = v20 ^ 1;
  }

  v21 = sub_100747B94();
  v22 = sub_100753804();

  if (v19 & 1) != 0 || (v22)
  {
    goto LABEL_15;
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v23 = *(v6 + 8);
  v23(v11, v5);
  v24 = v48;
  if ((*(v2 + 88))(v4, v48) != enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v2 + 8))(v4, v24);
LABEL_15:
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    (*(v6 + 8))(v8, v5);
    v32 = v50[2];

    v33 = sub_1006AE674(&off_100861DF0, v32);

    return v33;
  }

  (*(v2 + 96))(v4, v24);
  v25 = v42;
  v26 = v46;
  v27 = v47;
  (*(v42 + 32))(v46, v4, v47);
  v28 = v44;
  sub_10074BFC4();
  v29 = v43;
  v30 = (*(v45 + 88))(v28, v43);
  if (v30 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.hero(_:))
  {
    v31 = sub_1006AE27C();
LABEL_19:
    v33 = v31;

    (*(v25 + 8))(v26, v27);
    return v33;
  }

  if (v30 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.grid(_:))
  {
    v31 = sub_1006AE448();
    goto LABEL_19;
  }

  v35 = enum case for TodaySectionDisplayOptions.GroupDisplayStyle.standard(_:);
  v36 = v25;
  v37 = v30;
  sub_100747C04();
  swift_getKeyPath();
  v38 = (v36 + 8);
  sub_1007525B4();

  v23(v8, v5);
  if (v37 == v35)
  {
    v39 = v50[2];

    v33 = sub_1006AE674(&off_100861DA0, v39);

    (*v38)(v46, v47);
  }

  else
  {
    v40 = v50[2];

    v33 = sub_1006AE674(&off_100861DC8, v40);

    (*v38)(v46, v47);
    (*(v45 + 8))(v44, v29);
  }

  return v33;
}

uint64_t sub_1006AEDC0()
{
  v0 = sub_10000C518(&unk_10092E450);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - v2;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v1 + 8))(v3, v0);
  v4 = *(v15[1] + 16);

  if (v4 < 0xA)
  {
    return *(&off_1008809A0 + v4);
  }

  v6 = ((v4 - 7) * 0xAAAAAAAAAAAAAAABLL) >> 64;
  v5 = &off_100862310;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_19:
    v5 = sub_10025577C(0, 4, 1, &off_100862310);
  }

  v7 = 0;
  v8 = v6 >> 1;
  do
  {
    if (v7 % 3 < 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    v6 = *(&off_100862310 + v7 % 3 + 4);
    v9 = v5[2];
    v10 = v5[3];

    if (v9 >= v10 >> 1)
    {
      v5 = sub_10025577C((v10 > 1), v9 + 1, 1, v5);
    }

    ++v7;
    v5[2] = v9 + 1;
    v5[v9 + 4] = v6;
  }

  while (v8 != v7);
  v11 = v4 % 3;
  if (!(v4 % 3))
  {
    return v5;
  }

  v12 = *(v6 + 16);
  if (v12 < v11)
  {
    __break(1u);
LABEL_21:
    result = sub_10025DA6C(v5);
    v5 = result;
    goto LABEL_15;
  }

  if (v12 == v11)
  {
  }

  else
  {
    sub_1006315E8(v6, v6 + 32, 0, (2 * v11) | 1);
    v6 = v13;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v9 < v5[2])
  {
    v5[v9 + 4] = v6;

    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1006AF058()
{
  v0 = sub_10000C518(&unk_10092E450);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - v2;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v1 + 8))(v3, v0);
  v4 = *(v13[1] + 16);

  if (v4)
  {
    v5 = 0;
    v6 = (v4 + 1) >> 1;
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v6 - 1 == v5 && (v4 & 1) != 0)
      {
        if (v5)
        {
          v9 = &off_1008623C0;
        }

        else
        {
          v9 = &off_100862398;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v5)
        {
          v9 = &off_100862348;
        }

        else
        {
          v9 = &off_100862370;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_9:
          v7 = sub_10025577C(0, v7[2] + 1, 1, v7);
        }
      }

      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        v7 = sub_10025577C((v10 > 1), v11 + 1, 1, v7);
      }

      ++v5;
      v7[2] = v11 + 1;
      v7[v11 + 4] = v9;
      if (v6 == v5)
      {
        return v7;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1006AF258()
{
  v0 = sub_10000C518(&unk_10092E450);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - v2;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v1 + 8))(v3, v0);
  v4 = *(v12[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C518(&qword_100923350);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007A5A00;
  *(v5 + 32) = &off_1008623E8;
  if (v4 != 1)
  {
    v6 = v4 >> 1;
    do
    {
      v7 = (v4 & 1) == 0 && v6 == 1;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v7)
      {
        v10 = &off_100862410;
      }

      else
      {
        v10 = &off_100862438;
      }

      if (v9 >= v8 >> 1)
      {
        v5 = sub_10025577C((v8 > 1), v9 + 1, 1, v5);
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v10;
      --v6;
    }

    while (v6);
  }

  return v5;
}

void *sub_1006AF424()
{
  v0 = sub_10000C518(&unk_10092E450);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - v2;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v1 + 8))(v3, v0);
  v4 = *(v11[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000C518(&qword_100923350);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007A5A00;
  *(v5 + 32) = &off_100862460;
  if (v4 != 1)
  {
    v6 = 0;
    do
    {
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v4 >> 1) - 1 != v6 || (v4)
      {
        if (v6)
        {
          v9 = &off_100862488;
        }

        else
        {
          v9 = &off_1008624B0;
        }
      }

      else if (v6)
      {
        v9 = &off_100862500;
      }

      else
      {
        v9 = &off_1008624D8;
      }

      if (v7 >> 1 <= v8)
      {
        v5 = sub_10025577C((v7 > 1), v8 + 1, 1, v5);
      }

      ++v6;
      *(v5 + 16) = v8 + 1;
      *(v5 + 8 * v8 + 32) = v9;
    }

    while (v4 >> 1 != v6);
  }

  return v5;
}

void *sub_1006AF634()
{
  v0 = sub_10074BFA4();
  v43 = *(v0 - 8);
  v44 = v0;
  __chkstk_darwin(v0);
  v40 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10074EA34();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_10092E450);
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v38 - v8;
  v9 = sub_10074BFD4();
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F584();
  v45 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074F704();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F594();
  v19 = v18;
  v20 = *(v15 + 8);
  v20(v17, v14);
  if (v19 <= 1.0)
  {
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    (*(v50 + 8))(v6, v4);
    v35 = *(v51 + 16);

    return sub_1006AE674(&off_100862528, v35);
  }

  sub_100747B84();
  sub_10074F624();
  v20(v17, v14);
  if (qword_100920058 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v11, qword_10097D1A8);
  v21 = sub_10074F534();
  (*(v45 + 8))(v13, v11);
  v22 = v46;
  sub_100747C04();
  swift_getKeyPath();
  v23 = v47;
  sub_1007525B4();

  (*(v50 + 8))(v22, v4);
  v25 = v48;
  v24 = v49;
  if ((*(v48 + 88))(v23, v49) != enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v25 + 8))(v23, v24);
    return sub_1006AF058();
  }

  (*(v25 + 96))(v23, v24);
  v26 = v41;
  v27 = v39;
  v28 = v23;
  v29 = v42;
  (*(v41 + 32))(v39, v28, v42);
  v30 = v40;
  sub_10074BFC4();
  v32 = v43;
  v31 = v44;
  v33 = (*(v43 + 88))(v30, v44);
  if (v33 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.hero(_:))
  {
    if (v21)
    {
      v34 = sub_1006AF258();
    }

    else
    {
      v34 = sub_1006AF424();
    }
  }

  else
  {
    if (v33 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.grid(_:))
    {
      goto LABEL_11;
    }

    if (v33 != enum case for TodaySectionDisplayOptions.GroupDisplayStyle.standard(_:))
    {
      v37 = sub_1006AF058();
      (*(v32 + 8))(v30, v31);
      goto LABEL_14;
    }

    if ((v21 & 1) == 0)
    {
LABEL_11:
      v34 = sub_1006AF058();
    }

    else
    {
      v34 = sub_1006AEDC0();
    }
  }

  v37 = v34;
LABEL_14:
  (*(v26 + 8))(v27, v29);
  return v37;
}

uint64_t sub_1006AFCA4(uint64_t a1)
{
  v2 = sub_10074E984();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_10092E450);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    return sub_1006ADF60();
  }

  v11 = sub_100747B94();
  v12 = sub_1007537D4();

  if (v12)
  {
    v13 = sub_1006AE710(a1);
  }

  else
  {
    v13 = sub_1006AF634();
  }

  v14 = v13;
  (*(v3 + 8))(v5, v2);
  return v14;
}

uint64_t sub_1006AFEB4(uint64_t a1)
{
  v2 = sub_10074E984();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_10092E450);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  v25 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v16 = *(v7 + 8);
  v16(v15, v6);
  v23 = v3;
  v24 = v2;
  LODWORD(a1) = (*(v3 + 88))(v5, v2);
  LODWORD(v2) = enum case for Shelf.ContentType.miniTodayCard(_:);
  sub_10000C518(&qword_100923350);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007A5A00;
  if (a1 == v2)
  {
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v16(v12, v6);
    v18 = *(v26 + 16);

    if (v18)
    {
      v19 = sub_100753324();
      *(v19 + 16) = v18;
      memset((v19 + 32), 4, v18);
      *(v17 + 32) = v19;
    }

    else
    {
      *(v17 + 32) = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v16(v9, v6);
    v20 = *(v26 + 16);

    if (v20)
    {
      v21 = sub_100753324();
      v21[2] = v20;
      memset(v21 + 4, 5, v20);
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    *(v17 + 32) = v21;
    (*(v23 + 8))(v5, v24);
  }

  return v17;
}

unint64_t sub_1006B024C()
{
  result = qword_1009450D0;
  if (!qword_1009450D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009450D0);
  }

  return result;
}

unint64_t sub_1006B02A4()
{
  result = qword_100935370;
  if (!qword_100935370)
  {
    type metadata accessor for UberHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935370);
  }

  return result;
}

id sub_1006B02FC()
{
  if (!*(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
  {
    return 0;
  }

  type metadata accessor for VideoView();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    result = *(v1 + qword_10093CB50);
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }
  }

  return [result image];
}

void sub_1006B03A8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  v4 = *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v4)
  {
    v5 = [v4 layer];
    [v5 removeAllAnimations];

    v6 = *(*(v2 + v3) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v6)
    {
      [v6 setAlpha:1.0];
      v7 = *(*(v2 + v3) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      if (v7)
      {
        type metadata accessor for VideoView();
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          v9 = *(v8 + qword_10093CB50);
        }

        else
        {
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (!v10)
          {
            goto LABEL_9;
          }

          v9 = v10;
        }

        v11 = v7;
        [v9 setImage:a1];
      }
    }
  }

LABEL_9:
}

void sub_1006B04E0(void *a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  if (!*(*(v4 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
  {
    goto LABEL_7;
  }

  type metadata accessor for VideoView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *(v7 + qword_10093CB50);
  }

  else
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = [v8 image];
  if (!v9 || (v9, (a2 & 1) != 0))
  {
LABEL_7:
    v10 = *(*(v4 + v5) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v10)
    {
      type metadata accessor for VideoView();
      if (swift_dynamicCastClass())
      {
        v19 = v10;
        sub_100357614(a1, a1 == 0);
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v12 = v11;
          v13 = v10;
          [v12 setAlpha:0.0];
          [v12 setImage:a1];
          sub_100357938();
          v14 = sub_100753974();
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          aBlock[4] = sub_1002CD324;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000CF7B0;
          aBlock[3] = &unk_100880A18;
          v16 = _Block_copy(aBlock);
          v17 = v13;

          [v14 addAnimations:v16];
          _Block_release(v16);
          [v14 startAnimation];
        }
      }
    }

    return;
  }

  v18 = a1;

  sub_1006B03A8(a1);
}

void (*sub_1006B0798(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1006B02FC();
  return sub_1006B07E0;
}

void sub_1006B07E0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1006B03A8(v2);
  }

  else
  {
    sub_1006B03A8(*a1);
  }
}

uint64_t sub_1006B084C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006B0884(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1006B089C(double a1)
{
  v2 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v2 - 8);
  v45 = &v37 - v3;
  v48 = sub_10074F654();
  v54 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v37 - v10;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_10000C518(&qword_100923E90);
  v17 = *(sub_10074F584() - 8);
  v53 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v43 = v19;
  *(v19 + 16) = xmmword_1007A7250;
  v20 = v19 + v18;
  v56 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v55 = 16.0;
  v56 = 0x4020000000000000;
  sub_10074F5F4();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v52 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v54 + 104);
  v54 += 104;
  v27 = v48;
  v26(v5);
  v47 = v26;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v56) = 0;
  sub_10074F614();
  v56 = 0;
  v44 = v8;
  sub_10074F614();
  v46 = v20;
  v50 = v16;
  v51 = v13;
  sub_10074F544();
  v56 = 0x3FF0000000000000;
  sub_10074F614();
  v55 = 20.0;
  v56 = 0x4024000000000000;
  sub_10074F5F4();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  (v26)(v5, v52, v27);
  LOBYTE(v56) = 0;
  sub_10074F614();
  v56 = 0;
  sub_10074F614();
  v31 = v53;
  top = UIEdgeInsetsZero.top;
  v40 = left;
  v42 = bottom;
  sub_10074F544();
  v56 = 0x4000000000000000;
  sub_10074F614();
  v56 = 0x4034000000000000;
  sub_10074F614();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10074F5F4();
  v39 = vdupq_n_s64(0x4041000000000000uLL);
  *v5 = v39;
  v33 = v47;
  v32 = v48;
  (v47)(v5, v52, v48);
  LOBYTE(v56) = 0;
  sub_10074F614();
  v56 = 0;
  sub_10074F614();
  sub_10074F544();
  v38 = 2 * v31 + v53;
  v56 = 0x4000000000000000;
  sub_10074F614();
  v56 = 0x4034000000000000;
  sub_10074F614();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10074F5F4();
  *v5 = v39;
  (v33)(v5, v52, v32);
  sub_1007535A4();
  LOBYTE(v56) = 0;
  sub_10074F614();
  v56 = 0;
  sub_10074F614();
  sub_10074F544();
  v38 = 4 * v53;
  v56 = 0x4008000000000000;
  sub_10074F614();
  v56 = 0x4038000000000000;
  sub_10074F614();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10074F5F4();
  v39 = vdupq_n_s64(0x404A000000000000uLL);
  *v5 = v39;
  v34 = v52;
  v35 = v48;
  (v47)(v5, v52, v48);
  LOBYTE(v56) = 0;
  sub_10074F614();
  v56 = 0;
  sub_10074F614();
  sub_10074F544();
  v56 = 0x4008000000000000;
  sub_10074F614();
  v56 = 0x4038000000000000;
  sub_10074F614();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10074F5F4();
  *v5 = v39;
  (v47)(v5, v34, v35);
  LOBYTE(v56) = 0;
  sub_10074F614();
  v56 = 0;
  sub_10074F614();
  sub_10074F544();
  return v43;
}

uint64_t sub_1006B12A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v63 = a2;
  v61 = sub_10074A514();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v62 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100750304();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v52 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100749154();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v47 - v6;
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = sub_10074D544();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v53 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  v20 = sub_100747B94();
  v21 = sub_1007537D4();

  v55 = v15;
  v22 = *(v15 + 16);
  v54 = v19;
  v23 = v56;
  v56 = v14;
  v49 = v22;
  v22(v19, v23, v14);
  sub_100747B84();
  sub_10074F664();
  v25 = v24;
  v26 = *(v8 + 8);
  v26(v13, v7);
  sub_100747B84();
  sub_10074F664();
  v28 = v27;
  v26(v10, v7);
  if ((v21 & 1) == 0)
  {
    v67 = &type metadata for Double;
    v68 = &protocol witness table for Double;
    v66 = 0x4083100000000000;
    sub_100747B84();
    sub_10074F5A4();
    v35 = v34;
    v26(v13, v7);
    v33 = v35 - v25 - v28;
    v31 = v48;
    *(v48 + 3) = &type metadata for CGFloat;
    *(v31 + 4) = &protocol witness table for CGFloat;
    v32 = &enum case for BreakoutDetailsLayout.DetailDimension.static(_:);
    v30 = v59;
    goto LABEL_5;
  }

  Main = JUScreenClassGetMain();
  v30 = v59;
  v31 = v48;
  if (Main == 1)
  {
    v67 = &type metadata for Double;
    v68 = &protocol witness table for Double;
    v66 = 0x407E000000000000;
    v32 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
    v33 = 1.0;
LABEL_5:
    v36 = v58;
    goto LABEL_10;
  }

  HasRoundedCorners = JUScreenClassHasRoundedCorners();
  v67 = &type metadata for Double;
  v68 = &protocol witness table for Double;
  v36 = v58;
  if (HasRoundedCorners)
  {
    v38 = 0x4083100000000000;
  }

  else
  {
    v38 = 0x4081800000000000;
  }

  v66 = v38;
  v32 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
  v33 = 1.0;
LABEL_10:
  *v31 = v33;
  (*(v36 + 104))(v31, *v32, v30);
  if (qword_1009214B0 != -1)
  {
    swift_once();
  }

  v39 = sub_100750534();
  v40 = sub_10000D0FC(v39, qword_100981B48);
  v41 = v52;
  (*(*(v39 - 8) + 16))(v52, v40, v39);
  (*(v50 + 104))(v41, enum case for FontSource.useCase(_:), v51);
  v65[3] = sub_10074B2B4();
  v65[4] = sub_1006B48AC(&unk_10093F5D0, &type metadata accessor for CappedSizeStaticDimension);
  sub_10000D134(v65);
  v42 = UIContentSizeCategoryExtraExtraExtraLarge;
  sub_10074B2A4();
  if (qword_100921CE8 != -1)
  {
    swift_once();
  }

  v43 = sub_10000C518(&unk_100945150);
  sub_10000D0FC(v43, qword_100982DD0);
  v64[0] = sub_100747BA4();
  sub_100743464();
  swift_unknownObjectRelease();
  v44 = v54;
  v45 = v56;
  v49(v53, v54, v56);
  (*(v36 + 16))(v57, v31, v30);
  (*(v60 + 104))(v62, enum case for LargeHeroBreakoutLayout.DetailsVerticalPostion.bottom(_:), v61);
  sub_10000C824(&v66, v64);
  sub_10074A524();
  (*(v55 + 8))(v44, v45);
  (*(v36 + 8))(v31, v30);
  return sub_10000C620(&v66);
}

uint64_t sub_1006B1AD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v48 = a3;
  v46 = sub_10074A514();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100750304();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100749154();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = sub_10074D544();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v40 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  swift_getObjectType();
  v18 = [a2 traitCollection];
  v19 = sub_1007537D4();

  v41 = v13;
  v20 = *(v13 + 16);
  v21 = v42;
  v42 = v12;
  v22 = v12;
  v23 = v20;
  v20(v17, v21, v22);
  [a2 pageMarginInsets];
  [a2 pageMarginInsets];
  if ((v19 & 1) == 0)
  {
    v52 = &type metadata for Double;
    v53 = &protocol witness table for Double;
    v51[0] = 0x4083100000000000;
    PageTraitEnvironment.pageColumnWidth.getter();
    v27 = v26;
    PageTraitEnvironment.pageColumnMargin.getter();
    v25 = v27 - v28;
    *(v11 + 3) = &type metadata for CGFloat;
    *(v11 + 4) = &protocol witness table for CGFloat;
    v24 = &enum case for BreakoutDetailsLayout.DetailDimension.static(_:);
    goto LABEL_5;
  }

  if (JUScreenClassGetMain() == 1)
  {
    v52 = &type metadata for Double;
    v53 = &protocol witness table for Double;
    v51[0] = 0x407E000000000000;
    v24 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
    v25 = 1.0;
LABEL_5:
    v29 = v44;
    goto LABEL_10;
  }

  HasRoundedCorners = JUScreenClassHasRoundedCorners();
  v52 = &type metadata for Double;
  v53 = &protocol witness table for Double;
  v29 = v44;
  if (HasRoundedCorners)
  {
    v31 = 0x4083100000000000;
  }

  else
  {
    v31 = 0x4081800000000000;
  }

  v51[0] = v31;
  v24 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
  v25 = 1.0;
LABEL_10:
  *v11 = v25;
  (*(v7 + 104))(v11, *v24, v29);
  if (qword_1009214B0 != -1)
  {
    swift_once();
  }

  v32 = sub_100750534();
  v33 = sub_10000D0FC(v32, qword_100981B48);
  (*(*(v32 - 8) + 16))(v6, v33, v32);
  (*(v38 + 104))(v6, enum case for FontSource.useCase(_:), v39);
  v50[3] = sub_10074B2B4();
  v50[4] = sub_1006B48AC(&unk_10093F5D0, &type metadata accessor for CappedSizeStaticDimension);
  sub_10000D134(v50);
  v34 = UIContentSizeCategoryExtraExtraExtraLarge;
  sub_10074B2A4();
  if (qword_100921CE8 != -1)
  {
    swift_once();
  }

  v35 = sub_10000C518(&unk_100945150);
  sub_10000D0FC(v35, qword_100982DD0);
  v49 = a2;
  swift_unknownObjectRetain();
  sub_100743464();
  swift_unknownObjectRelease();
  v36 = v42;
  v23(v40, v17, v42);
  (*(v7 + 16))(v43, v11, v29);
  (*(v45 + 104))(v47, enum case for LargeHeroBreakoutLayout.DetailsVerticalPostion.bottom(_:), v46);
  sub_10000C824(v51, &v49);
  sub_10074A524();
  (*(v41 + 8))(v17, v36);
  (*(v7 + 8))(v11, v29);
  return sub_10000C620(v51);
}

void sub_1006B21C4()
{
  v1 = sub_10000C518(&qword_10093F598);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = v21 - v3;
  v5 = [v0 traitCollection];
  v6 = [v5 accessibilityContrast];

  v7 = v6 == 1;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
  if (qword_100921CE0 != -1)
  {
    v20 = IsReduceTransparencyEnabled;
    swift_once();
    IsReduceTransparencyEnabled = v20;
  }

  v10 = v7 || IsReduceTransparencyEnabled;
  v11 = sub_10000C518(&qword_10092AC90);
  sub_10000D0FC(v11, qword_1009450E0);
  v21[3] = v0;
  v12 = v0;
  sub_100743464();

  [v9 setTextAlignment:v21[0]];
  v13 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailsView];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_1006B483C(v13 + v14, v4);
  v15 = sub_100745394();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_10000C8CC(v4, &qword_10093F598);
    v17 = 0;
  }

  else
  {
    v17 = sub_10016D1F0(v10);
    (*(v16 + 8))(v4, v15);
  }

  [v9 setTextColor:v17];

  v18 = [v9 layer];
  sub_100753094();
  v19 = sub_100753064();

  [v18 setCompositingFilter:v19];
}

void sub_1006B2494(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  if (a1)
  {
    sub_1006B48AC(&qword_1009230E0, type metadata accessor for VideoView);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016C60(0, &qword_100922300);
      v9 = v5;
      v10 = sub_100753FC4();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = a1;
  v16 = a1;
  sub_10057A514(v11);

  v12 = *(*(v3 + v4) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v12)
  {
    type metadata accessor for VideoView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      [v14 setUserInteractionEnabled:0];
    }
  }
}

void sub_1006B2638()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10074D544();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "prepareForReuse", v5);
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailsView];
  sub_10058CDC4();
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
  v10 = type metadata accessor for MediaView();
  v26.receiver = v9;
  v26.super_class = v10;
  objc_msgSendSuper2(&v26, "setBackgroundColor:", 0);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  [*(*&v9[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) setBackgroundColor:0];
  v12 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView];
  if (v12)
  {
    [v12 setBackgroundColor:0];
  }

  (*(v4 + 104))(v7, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v3);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailPosition;
  swift_beginAccess();
  (*(v4 + 24))(&v1[v13], v7, v3);
  swift_endAccess();
  [v1 setNeedsLayout];
  (*(v4 + 8))(v7, v3);
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
  [v14 setText:0];
  v15 = (v8 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler);
  v16 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler);
  *v15 = 0;
  v15[1] = 0;
  sub_1000164A8(v16);
  v17 = *&v9[v11];
  v18 = *(v17 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  *(v17 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = 0;
  sub_10057A514(v18);

  if (*(*&v9[v11] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      [v19 setUserInteractionEnabled:0];
    }
  }

  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_artworkView];
  sub_100743344();

  v21 = *&v9[v11];
  v22 = *(v21 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  *(v21 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = 0;
  sub_10057A514(v22);

  sub_1005791C8();
  v23 = v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
  v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
  if (v23 != 1)
  {
    [v14 removeFromSuperview];
  }

  v24 = v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden];
  v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = 1;
  if ((v24 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] removeFromSuperview];
  }
}

uint64_t sub_1006B2950()
{
  v0 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v0, qword_1009450E0);
  sub_10000D0FC(v0, qword_1009450E0);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

uint64_t sub_1006B29EC()
{
  v0 = sub_10000C518(&unk_100945150);
  sub_100039C50(v0, qword_100982DD0);
  sub_10000D0FC(v0, qword_100982DD0);
  sub_10000C518(&unk_100923AE0);
  sub_10000C518(&qword_100931390);
  return sub_100743484();
}

char *sub_1006B2AB0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v96 = sub_100752AC4();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v10 - 8);
  v91 = &v86 - v11;
  v100 = sub_10074AB44();
  v98 = *(v100 - 1);
  __chkstk_darwin(v100);
  v92 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v99 = &v86 - v14;
  v15 = sub_100750534();
  v103 = *(v15 - 8);
  __chkstk_darwin(v15);
  v97 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v102 = &v86 - v18;
  v19 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v19);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000C518(&qword_100929360);
  __chkstk_darwin(v22 - 8);
  v24 = &v86 - v23;
  v25 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_itemLayoutContext;
  v26 = sub_1007469A4();
  v27 = *(*(v26 - 8) + 56);
  v101 = v4;
  v27(&v4[v25], 1, 1, v26);
  v28 = type metadata accessor for MediaView();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView] = 0;
  *&v29[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount] = 0;
  v29[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding] = 0;
  *&v29[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v29[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionOffset] = 0;
  v30 = type metadata accessor for UberContentContainer();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = 0;
  *&v31[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = 0;
  v32 = &v31[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v31[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_systemBackgroundExtensionOutsets];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v33[32] = 1;
  *&v31[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView] = 0;
  v110.receiver = v31;
  v110.super_class = v30;
  v34 = objc_msgSendSuper2(&v110, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v35 = v34;
  if (*&v34[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView])
  {
    [v34 addSubview:?];
  }

  v36 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer;
  *&v29[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] = v35;
  v109.receiver = v29;
  v109.super_class = v28;
  v37 = objc_msgSendSuper2(&v109, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v37 setClipsToBounds:1];
  [v37 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer]];

  v38 = v101;
  *&v101[v36] = v37;
  v39 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *&v38[v39] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v38[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_backgroundArtwork] = 0;
  v40 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailsView;
  if (qword_100921BA0 != -1)
  {
    swift_once();
  }

  v41 = sub_10000D0FC(v19, qword_100982BC0);
  sub_100121090(v41, v21);
  sub_10000C518(&unk_100923AE0);
  sub_1007434A4();
  v42 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v38[v40] = sub_10058E048(v24);
  v43 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailPosition;
  v44 = enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:);
  v45 = sub_10074D544();
  (*(*(v45 - 8) + 104))(&v38[v43], v44, v45);
  *&v38[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_pageTraits] = 0;
  v38[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = 1;
  v38[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
  *&v38[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_artworkView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{a1, a2, a3, a4}];
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_1009214B8 != -1)
    {
      swift_once();
    }

    v46 = qword_100981B60;
  }

  else
  {
    if (qword_1009214B0 != -1)
    {
      swift_once();
    }

    v46 = qword_100981B48;
  }

  v47 = v15;
  v48 = sub_10000D0FC(v15, v46);
  v49 = v102;
  v50 = v103;
  v51 = *(v103 + 16);
  v51(v102, v48, v15);
  v52 = v97;
  v51(v97, v49, v47);
  v87 = UIContentSizeCategoryExtraExtraExtraLarge;
  v53 = enum case for DirectionalTextAlignment.none(_:);
  v54 = *(v98 + 104);
  v54(v99, enum case for DirectionalTextAlignment.none(_:), v100);
  v89 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v89[qword_100941490] = UIContentSizeCategoryExtraExtraExtraLarge;
  v55 = v91;
  v51(v91, v52, v47);
  v56 = v47;
  v88 = *(v50 + 56);
  v88(v55, 0, 1, v47);
  v57 = v92;
  v58 = v100;
  v54(v92, v53, v100);
  v59 = v87;
  v60 = sub_100745C74();
  v61 = v97;
  v51(v55, v97, v56);
  v90 = v56;
  v88(v55, 0, 1, v56);
  v62 = v60;
  sub_100745BA4();
  sub_100745B84();
  [v62 setNumberOfLines:2];
  v63 = v98;
  v64 = v99;
  (*(v98 + 16))(v57, v99, v58);
  sub_100745BF4();

  (*(v63 + 8))(v64, v58);
  v65 = *(v103 + 8);
  v103 += 8;
  v100 = v65;
  (v65)(v61, v56);
  v66 = v101;
  *&v101[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel] = v62;
  v108.receiver = v66;
  v108.super_class = ObjectType;
  v67 = objc_msgSendSuper2(&v108, "initWithFrame:", a1, a2, a3, a4);
  v68 = [v67 contentView];
  [v68 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v69 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel;
  [*&v67[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel] setNumberOfLines:2];
  v70 = *&v67[v69];
  sub_100745C34();

  v71 = *&v67[v69];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v72 = v71;
  v73 = v94;
  sub_100752A74();
  sub_10000C8CC(&v104, &unk_100923520);
  sub_10000C8CC(&v106, &unk_100923520);
  sub_100753C74();

  v74 = *(v95 + 8);
  v75 = v96;
  v74(v73, v96);
  v76 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_artworkView;
  v77 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_artworkView];
  sub_100743284();

  v78 = *&v67[v76];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v79 = v78;
  sub_100752A74();
  sub_10000C8CC(&v104, &unk_100923520);
  sub_10000C8CC(&v106, &unk_100923520);
  sub_100753C74();

  v74(v73, v75);
  sub_100016C60(0, &qword_100923500);
  v80 = sub_100753E34();
  [v67 setBackgroundColor:v80];

  v81 = [v67 contentView];
  v82 = [v81 layer];

  [v82 setAllowsGroupBlending:0];
  v83 = [v67 contentView];
  [v83 addSubview:*&v67[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer]];

  v84 = [v67 contentView];
  [v84 addSubview:*&v67[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailsView]];

  sub_1006B21C4();
  (v100)(v102, v90);
  return v67;
}

void (*sub_1006B3794(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1006B3830;
}

void sub_1006B3830(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v3)
    {
      sub_1006B48AC(&qword_1009230E0, type metadata accessor for VideoView);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016C60(0, &qword_100922300);
        v8 = v4;
        v9 = sub_100753FC4();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    v17 = *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v3;
    v18 = v3;
    sub_10057A514(v17);

    v19 = *(*(v16 + v15) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v19)
    {
      type metadata accessor for VideoView();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        v22 = v19;
        [v21 setUserInteractionEnabled:0];
      }
    }

    v23 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_1006B48AC(&qword_1009230E0, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100016C60(0, &qword_100922300);
        v13 = v4;
        v14 = sub_100753FC4();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v25 = *(a1 + 8);
    v24 = *(a1 + 16);
    v26 = *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v3;
    v31 = v3;
    sub_10057A514(v26);

    v27 = *(*(v25 + v24) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v27)
    {
      type metadata accessor for VideoView();
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        v30 = v27;
        [v29 setUserInteractionEnabled:0];
      }
    }

    v23 = v31;
  }
}

id sub_1006B3B2C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v30 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074D544();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A534();
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10074A554();
  v13 = *(v29 - 8);
  *&v14 = __chkstk_darwin(v29).n128_u64[0];
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40.receiver = v1;
  v40.super_class = ObjectType;
  result = objc_msgSendSuper2(&v40, "layoutSubviews", v14);
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_pageTraits];
  if (v18)
  {
    v28 = v3;
    v19 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailPosition;
    swift_beginAccess();
    (*(v7 + 16))(v9, &v1[v19], v6);
    swift_unknownObjectRetain();
    sub_1006B1AD0(v9, v18, v12);
    (*(v7 + 8))(v9, v6);
    v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
    v38 = type metadata accessor for MediaView();
    v39 = &protocol witness table for UIView;
    v37 = v20;
    v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
    v35 = sub_100745C84();
    v36 = &protocol witness table for UILabel;
    v34 = v21;
    v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailsView];
    v32 = type metadata accessor for BreakoutDetailsView(0);
    v33 = &protocol witness table for UIView;
    v31 = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    sub_10074A544();
    v26 = [v1 contentView];
    [v26 bounds];

    sub_10074A504();
    (*(v30 + 8))(v5, v28);
    v27 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView];
    [v1 bounds];
    [v27 setFrame:?];
    swift_unknownObjectRelease();
    return (*(v13 + 8))(v16, v29);
  }

  return result;
}

char *sub_1006B40C8(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY];
    result = *(*&v1[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    v5 = *&result[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY];
    *&result[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = v4;
    if (v4 != v5)
    {
      return [result setNeedsLayout];
    }
  }

  return result;
}

uint64_t type metadata accessor for LargeHeroBreakoutCollectionViewCell()
{
  result = qword_100945128;
  if (!qword_100945128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006B432C()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    sub_10074D544();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1006B4420()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

uint64_t (*sub_1006B4494(uint64_t **a1))()
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
  v2[4] = sub_1006B3794(v2);
  return sub_1000181A8;
}

uint64_t sub_1006B4504()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1006B48AC(&qword_100945160, type metadata accessor for LargeHeroBreakoutCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1006B4578(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1006B48AC(&qword_100945160, type metadata accessor for LargeHeroBreakoutCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1006B4604(uint64_t *a1))()
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

  v3 = v2;
  *a1 = v2;
  sub_1006B48AC(&qword_100945160, type metadata accessor for LargeHeroBreakoutCollectionViewCell);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1006B46C0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  sub_100016C60(0, &qword_100922300);
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

uint64_t sub_1006B483C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093F598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006B48AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006B48F4()
{
  v1 = v0;
  v27 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100929360);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_itemLayoutContext;
  v8 = sub_1007469A4();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = type metadata accessor for MediaView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView] = 0;
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount] = 0;
  v10[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding] = 0;
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionOffset] = 0;
  v11 = type metadata accessor for UberContentContainer();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = 0;
  *&v12[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = 0;
  v13 = &v12[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_systemBackgroundExtensionOutsets];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v12[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView] = 0;
  v29.receiver = v12;
  v29.super_class = v11;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = v15;
  if (*&v15[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView])
  {
    [v15 addSubview:?];
  }

  v17 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer;
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] = v16;
  v28.receiver = v10;
  v28.super_class = v9;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v18 setClipsToBounds:1];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer]];

  *(v0 + v17) = v18;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v1 + v19) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailsView;
  if (qword_100921BA0 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v27, qword_100982BC0);
  sub_100121090(v21, v3);
  sub_10000C518(&unk_100923AE0);
  sub_1007434A4();
  v22 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v1 + v20) = sub_10058E048(v6);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailPosition;
  v24 = enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:);
  v25 = sub_10074D544();
  (*(*(v25 - 8) + 104))(v1 + v23, v24, v25);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_pageTraits) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden) = 1;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden) = 1;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1006B4D00@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1006B4D5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1006B4E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1006B50B4(&qword_1009410B0, type metadata accessor for ProductRatingsCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006B4EC0()
{
  v0 = sub_10074EAB4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  sub_10074F474();
  sub_1006B50B4(&qword_1009384E8, &type metadata accessor for Ratings);
  result = sub_1007468B4();
  v8 = v12;
  if (v12)
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074EA54();
    sub_1006B50B4(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
    v9 = sub_100754324();
    v10 = *(v1 + 8);
    v10(v3, v0);
    v10(v6, v0);
    sub_10017C808(v8, v9 & 1);
  }

  return result;
}

uint64_t sub_1006B50B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006B50FC()
{
  v1 = v0;
  sub_10000C518(&qword_100922CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B73B0;
  sub_1006B8558(&qword_100945858, &type metadata accessor for SearchLandingDiffablePagePresenter);
  sub_10074E534();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10074E524();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006B8558(&qword_100930880, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006B8558(&qword_100922CC8, &type metadata accessor for SearchLandingDiffablePagePresenter);
  v5 = *&v1[qword_10097EE38];

  v6 = v1;
  v7 = v5;
  sub_10074B884();
  sub_10074E3E4();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10074E3D4();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000C518(&qword_100945860);
  sub_1006B8504(&qword_100945868, &qword_100945860);
  sub_10074DA64();
  sub_10074B884();
  sub_10074DCF4();
  swift_allocObject();
  *(v2 + 80) = sub_10074DCE4();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10074E364();
  swift_allocObject();
  *(v2 + 96) = sub_10074E354();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10074E6D4();
  swift_allocObject();
  *(v2 + 112) = sub_10074E6C4();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10074DA64();
  sub_10074E074();
  swift_allocObject();
  *(v2 + 128) = sub_10074E064();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_100930678];
  v10 = sub_1006B8558(&qword_100930888, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_100930670];
  v12 = sub_1006B8558(&unk_100930890, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006B8558(&qword_100945870, &type metadata accessor for SearchLandingDiffablePagePresenter);
  sub_10074E284();
  swift_allocObject();

  *(v2 + 176) = sub_10074E274();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_100930668];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10074DC04();
  swift_allocObject();

  *(v2 + 208) = sub_10074DBF4();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006B8558(&qword_100945878, &type metadata accessor for SearchLandingDiffablePagePresenter);
  sub_10074E4A4();
  swift_allocObject();
  *(v2 + 224) = sub_10074E494();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10074D7C4();
  swift_allocObject();
  return sub_10074D7B4();
}

uint64_t sub_1006B5600()
{
  v1 = v0;
  sub_10000C518(&qword_100922CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B73B0;
  sub_1006B8558(&qword_100945838, &type metadata accessor for ArcadeDiffablePagePresenter);
  sub_10074E534();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10074E524();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006B8558(&qword_100930880, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006B8558(&qword_100945840, &type metadata accessor for ArcadeDiffablePagePresenter);
  v5 = *&v1[qword_10097EE38];

  v6 = v1;
  v7 = v5;
  sub_10074B884();
  sub_10074E3E4();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10074E3D4();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000C518(&qword_100933FF8);
  sub_1006B8504(&qword_100934010, &qword_100933FF8);
  sub_10074DA64();
  sub_10074B884();
  sub_10074DCF4();
  swift_allocObject();
  *(v2 + 80) = sub_10074DCE4();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10074E364();
  swift_allocObject();
  *(v2 + 96) = sub_10074E354();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10074E6D4();
  swift_allocObject();
  *(v2 + 112) = sub_10074E6C4();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10074DA64();
  sub_10074E074();
  swift_allocObject();
  *(v2 + 128) = sub_10074E064();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_100930678];
  v10 = sub_1006B8558(&qword_100930888, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_100930670];
  v12 = sub_1006B8558(&unk_100930890, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006B8558(&qword_100945848, &type metadata accessor for ArcadeDiffablePagePresenter);
  sub_10074E284();
  swift_allocObject();

  *(v2 + 176) = sub_10074E274();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_100930668];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10074DC04();
  swift_allocObject();

  *(v2 + 208) = sub_10074DBF4();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006B8558(&qword_100945850, &type metadata accessor for ArcadeDiffablePagePresenter);
  sub_10074E4A4();
  swift_allocObject();
  *(v2 + 224) = sub_10074E494();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10074D7C4();
  swift_allocObject();
  return sub_10074D7B4();
}

uint64_t sub_1006B5B04()
{
  v1 = v0;
  sub_10000C518(&qword_100922CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B73B0;
  sub_1006B8558(&qword_100945818, &type metadata accessor for SearchResultsDiffablePagePresenter);
  sub_10074E534();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10074E524();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006B8558(&qword_100930880, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006B8558(&qword_100945820, &type metadata accessor for SearchResultsDiffablePagePresenter);
  v5 = *&v1[qword_10097EE38];

  v6 = v1;
  v7 = v5;
  sub_10074B884();
  sub_10074E3E4();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10074E3D4();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000C518(&qword_100927D90);
  sub_1006B8504(&qword_100927D98, &qword_100927D90);
  sub_10074DA64();
  sub_10074B884();
  sub_10074DCF4();
  swift_allocObject();
  *(v2 + 80) = sub_10074DCE4();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10074E364();
  swift_allocObject();
  *(v2 + 96) = sub_10074E354();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10074E6D4();
  swift_allocObject();
  *(v2 + 112) = sub_10074E6C4();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10074DA64();
  sub_10074E074();
  swift_allocObject();
  *(v2 + 128) = sub_10074E064();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_100930678];
  v10 = sub_1006B8558(&qword_100930888, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_100930670];
  v12 = sub_1006B8558(&unk_100930890, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006B8558(&qword_100945828, &type metadata accessor for SearchResultsDiffablePagePresenter);
  sub_10074E284();
  swift_allocObject();

  *(v2 + 176) = sub_10074E274();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_100930668];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10074DC04();
  swift_allocObject();

  *(v2 + 208) = sub_10074DBF4();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006B8558(&qword_100945830, &type metadata accessor for SearchResultsDiffablePagePresenter);
  sub_10074E4A4();
  swift_allocObject();
  *(v2 + 224) = sub_10074E494();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10074D7C4();
  swift_allocObject();
  return sub_10074D7B4();
}

uint64_t sub_1006B6008()
{
  v1 = v0;
  sub_10000C518(&qword_100922CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B73B0;
  sub_1006B8558(&qword_1009457F8, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_10074E534();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10074E524();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006B8558(&qword_100930880, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006B8558(&qword_10092BAD0, &type metadata accessor for ReviewsDiffablePagePresenter);
  v5 = *&v1[qword_10097EE38];

  v6 = v1;
  v7 = v5;
  sub_10074B884();
  sub_10074E3E4();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10074E3D4();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000C518(&qword_100945800);
  sub_1006B8504(&qword_100945808, &qword_100945800);
  sub_10074DA64();
  sub_10074B884();
  sub_10074DCF4();
  swift_allocObject();
  *(v2 + 80) = sub_10074DCE4();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10074E364();
  swift_allocObject();
  *(v2 + 96) = sub_10074E354();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10074E6D4();
  swift_allocObject();
  *(v2 + 112) = sub_10074E6C4();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10074DA64();
  sub_10074E074();
  swift_allocObject();
  *(v2 + 128) = sub_10074E064();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_100930678];
  v10 = sub_1006B8558(&qword_100930888, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_100930670];
  v12 = sub_1006B8558(&unk_100930890, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006B8558(&qword_10092BAC8, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_10074E284();
  swift_allocObject();

  *(v2 + 176) = sub_10074E274();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_100930668];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10074DC04();
  swift_allocObject();

  *(v2 + 208) = sub_10074DBF4();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006B8558(&qword_100945810, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_10074E4A4();
  swift_allocObject();
  *(v2 + 224) = sub_10074E494();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10074D7C4();
  swift_allocObject();
  return sub_10074D7B4();
}

uint64_t sub_1006B650C()
{
  v1 = v0;
  sub_10000C518(&qword_100922CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B73B0;
  sub_1006B8558(&qword_1009457D0, &type metadata accessor for TodayDiffablePagePresenter);
  sub_10074E534();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10074E524();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006B8558(&qword_100930880, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006B8558(&qword_1009360D8, &type metadata accessor for TodayDiffablePagePresenter);
  v5 = *&v1[qword_10097EE38];

  v6 = v1;
  v7 = v5;
  sub_10074B884();
  sub_10074E3E4();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10074E3D4();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000C518(&qword_1009360A8);
  sub_1006B8504(&qword_1009360B0, &qword_1009360A8);
  sub_10074DA64();
  sub_10074B884();
  sub_10074DCF4();
  swift_allocObject();
  *(v2 + 80) = sub_10074DCE4();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10074E364();
  swift_allocObject();
  *(v2 + 96) = sub_10074E354();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10074E6D4();
  swift_allocObject();
  *(v2 + 112) = sub_10074E6C4();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10074DA64();
  sub_10074E074();
  swift_allocObject();
  *(v2 + 128) = sub_10074E064();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_100930678];
  v10 = sub_1006B8558(&qword_100930888, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_100930670];
  v12 = sub_1006B8558(&unk_100930890, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006B8558(&qword_1009457D8, &type metadata accessor for TodayDiffablePagePresenter);
  sub_10074E284();
  swift_allocObject();

  *(v2 + 176) = sub_10074E274();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_100930668];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10074DC04();
  swift_allocObject();

  *(v2 + 208) = sub_10074DBF4();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006B8558(&qword_1009457E0, &type metadata accessor for TodayDiffablePagePresenter);
  sub_10074E4A4();
  swift_allocObject();
  *(v2 + 224) = sub_10074E494();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10074D7C4();
  swift_allocObject();
  return sub_10074D7B4();
}

uint64_t sub_1006B6A10()
{
  v1 = v0;
  sub_10000C518(&qword_100922CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B73B0;
  sub_1006B8558(&qword_100945778, &type metadata accessor for GenericDiffablePagePresenter);
  sub_10074E534();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10074E524();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006B8558(&qword_100930880, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006B8558(&qword_100932E70, &type metadata accessor for GenericDiffablePagePresenter);
  v5 = *&v1[qword_10097EE38];

  v6 = v1;
  v7 = v5;
  sub_10074B884();
  sub_10074E3E4();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10074E3D4();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000C518(&qword_100945780);
  sub_1006B8504(&qword_100945788, &qword_100945780);
  sub_10074DA64();
  sub_10074B884();
  sub_10074DCF4();
  swift_allocObject();
  *(v2 + 80) = sub_10074DCE4();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10074E364();
  swift_allocObject();
  *(v2 + 96) = sub_10074E354();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10074E6D4();
  swift_allocObject();
  *(v2 + 112) = sub_10074E6C4();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10074DA64();
  sub_10074E074();
  swift_allocObject();
  *(v2 + 128) = sub_10074E064();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_100930678];
  v10 = sub_1006B8558(&qword_100930888, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_100930670];
  v12 = sub_1006B8558(&unk_100930890, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006B8558(&qword_100945790, &type metadata accessor for GenericDiffablePagePresenter);
  sub_10074E284();
  swift_allocObject();

  *(v2 + 176) = sub_10074E274();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_100930668];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10074DC04();
  swift_allocObject();

  *(v2 + 208) = sub_10074DBF4();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006B8558(&qword_100945798, &type metadata accessor for GenericDiffablePagePresenter);
  sub_10074E4A4();
  swift_allocObject();
  *(v2 + 224) = sub_10074E494();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10074D7C4();
  swift_allocObject();
  return sub_10074D7B4();
}

uint64_t sub_1006B6F14()
{
  v1 = v0;
  sub_10000C518(&qword_100922CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B73B0;
  sub_1006B8558(&qword_1009457E8, &type metadata accessor for ProductDiffablePagePresenter);
  sub_10074E534();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10074E524();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006B8558(&qword_100930880, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006B8558(&qword_100933EE0, &type metadata accessor for ProductDiffablePagePresenter);
  v5 = *&v1[qword_10097EE38];

  v6 = v1;
  v7 = v5;
  sub_10074B884();
  sub_10074E3E4();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10074E3D4();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000C518(&qword_100933F60);
  sub_1006B8504(&qword_100933F78, &qword_100933F60);
  sub_10074DA64();
  sub_10074B884();
  sub_10074DCF4();
  swift_allocObject();
  *(v2 + 80) = sub_10074DCE4();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10074E364();
  swift_allocObject();
  *(v2 + 96) = sub_10074E354();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10074E6D4();
  swift_allocObject();
  *(v2 + 112) = sub_10074E6C4();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10074DA64();
  sub_10074E074();
  swift_allocObject();
  *(v2 + 128) = sub_10074E064();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_100930678];
  v10 = sub_1006B8558(&qword_100930888, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_100930670];
  v12 = sub_1006B8558(&unk_100930890, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006B8558(&qword_100933ED8, &type metadata accessor for ProductDiffablePagePresenter);
  sub_10074E284();
  swift_allocObject();

  *(v2 + 176) = sub_10074E274();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_100930668];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10074DC04();
  swift_allocObject();

  *(v2 + 208) = sub_10074DBF4();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006B8558(&qword_1009457F0, &type metadata accessor for ProductDiffablePagePresenter);
  sub_10074E4A4();
  swift_allocObject();
  *(v2 + 224) = sub_10074E494();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10074D7C4();
  swift_allocObject();
  return sub_10074D7B4();
}

uint64_t sub_1006B7418()
{
  v1 = v0;
  sub_10000C518(&qword_100922CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B73B0;
  sub_1006B8558(&qword_1009457A0, &type metadata accessor for SearchFocusDiffablePagePresenter);
  sub_10074E534();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10074E524();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1006B8558(&qword_100930880, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_1006B8558(&qword_1009457A8, &type metadata accessor for SearchFocusDiffablePagePresenter);
  v5 = *&v1[qword_10097EE38];

  v6 = v1;
  v7 = v5;
  sub_10074B884();
  sub_10074E3E4();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10074E3D4();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10000C518(&qword_1009457B0);
  sub_1006B8504(&qword_1009457B8, &qword_1009457B0);
  sub_10074DA64();
  sub_10074B884();
  sub_10074DCF4();
  swift_allocObject();
  *(v2 + 80) = sub_10074DCE4();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10074E364();
  swift_allocObject();
  *(v2 + 96) = sub_10074E354();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10074E6D4();
  swift_allocObject();
  *(v2 + 112) = sub_10074E6C4();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10074DA64();
  sub_10074E074();
  swift_allocObject();
  *(v2 + 128) = sub_10074E064();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_100930678];
  v10 = sub_1006B8558(&qword_100930888, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_100930670];
  v12 = sub_1006B8558(&unk_100930890, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_1006B8558(&qword_1009457C0, &type metadata accessor for SearchFocusDiffablePagePresenter);
  sub_10074E284();
  swift_allocObject();

  *(v2 + 176) = sub_10074E274();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_100930668];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10074DC04();
  swift_allocObject();

  *(v2 + 208) = sub_10074DBF4();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_1006B8558(&qword_1009457C8, &type metadata accessor for SearchFocusDiffablePagePresenter);
  sub_10074E4A4();
  swift_allocObject();
  *(v2 + 224) = sub_10074E494();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10074D7C4();
  swift_allocObject();
  return sub_10074D7B4();
}

uint64_t sub_1006B791C()
{
  v1 = qword_100947468;
  if (*(v0 + qword_100947468))
  {
    v2 = *(v0 + qword_100947468);
  }

  else
  {
    type metadata accessor for UberedPageScrollObserver();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 88) = 1;
    *(v2 + 24) = &off_100882258;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = *(v2 + 72);
    *(v2 + 72) = sub_1006B84FC;
    *(v2 + 80) = v3;

    sub_1000164A8(v4);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1006B7A30()
{
  v1 = qword_100947478;
  if (*(v0 + qword_100947478))
  {
    v2 = *(v0 + qword_100947478);
  }

  else
  {
    sub_1006B791C();
    type metadata accessor for UberedCollectionElementsObserver();
    v2 = swift_allocObject();
    swift_weakInit();
    *(v2 + 24) = 0;
    swift_weakAssign();

    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_1006B7AD4(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_100982E38) = 0;
  *(v2 + qword_100983020) = 0x3FF0000000000000;
  *(v2 + qword_100947468) = 0;
  *(v2 + qword_100947470) = 0x4034000000000000;
  *(v2 + qword_100983028) = 0;
  *(v2 + qword_100947478) = 0;

  v5 = sub_1004690E0(a1, a2);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NavigationBarVisibilityScrollObserver();
  v7 = swift_allocObject();
  *(v7 + 32) = xmmword_1007A97B0;
  *(v7 + 16) = sub_1006B7F94;
  *(v7 + 24) = v6;
  v8 = qword_100982E38;
  *&v5[qword_100982E38] = v7;
  v9 = v5;

  v10 = *&v9[qword_10097EE38];

  if (*&v5[v8])
  {
    sub_1006B8558(&qword_100926280, type metadata accessor for NavigationBarVisibilityScrollObserver);
  }

  sub_100749AD4();

  return v9;
}

void sub_1006B7C90(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_100983020);
    *(Strong + qword_100983020) = a1;
    sub_1006B7F9C(v4);
  }
}

uint64_t sub_1006B7D04()
{
  sub_10000C518(&qword_100922CE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007A6580;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 24) = &off_100880A60;
  swift_unknownObjectWeakAssign();
  v2 = sub_1006B8558(&qword_100926288, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007A6580;
  *(v3 + 32) = sub_1006B6A10();
  *(v3 + 40) = v4;
  v5 = sub_1006B7A30();
  v6 = sub_1006B8558(&qword_100933EB0, type metadata accessor for UberedCollectionElementsObserver);
  *(v3 + 48) = v5;
  *(v3 + 56) = v6;
  sub_10074D7C4();
  swift_allocObject();
  *(v0 + 48) = sub_10074D7B4();
  *(v0 + 56) = &protocol witness table for CompoundCollectionElementsObserver;
  swift_allocObject();
  return sub_10074D7B4();
}

uint64_t type metadata accessor for GenericDiffablePageViewController()
{
  result = qword_100945190;
  if (!qword_100945190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006B7F5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1006B7F9C(double a1)
{
  v3 = sub_1007410D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_10000C518(&qword_100923030);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_100741084();
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = qword_100983020;
  if (*&v1[qword_100983020] != a1)
  {
    v44 = v4;
    v45 = v3;
    v21 = v1;
    v22 = v17;
    v23 = [v1 navigationItem];
    sub_1007536B4();

    if ((*(v22 + 48))(v15, 1, v16) == 1)
    {
      sub_10000C8CC(v15, &qword_100923030);
    }

    else
    {
      v43 = v22;
      (*(v22 + 32))(v19, v15, v16);
      v41 = v21;
      v42 = [v21 navigationItem];
      v40 = sub_10000C518(&unk_100929CA0);
      inited = swift_initStackObject();
      v39 = xmmword_1007A5A00;
      *(inited + 16) = xmmword_1007A5A00;
      *(inited + 32) = NSForegroundColorAttributeName;
      v25 = objc_opt_self();
      v37 = v25;
      v38 = NSForegroundColorAttributeName;
      v26 = [v25 labelColor];
      v27 = [v26 colorWithAlphaComponent:a1];

      v36 = sub_10000D198();
      *(inited + 64) = v36;
      *(inited + 40) = v27;
      sub_100413A18(inited);
      swift_setDeallocating();
      sub_10000C8CC(inited + 32, &unk_100923510);
      sub_1007410F4();
      v28 = swift_initStackObject();
      *(v28 + 16) = v39;
      *(v28 + 32) = v38;
      v29 = [v37 labelColor];
      v30 = [v29 colorWithAlphaComponent:*&v41[v20]];

      *(v28 + 64) = v36;
      *(v28 + 40) = v30;
      sub_100413A18(v28);
      swift_setDeallocating();
      sub_10000C8CC(v28 + 32, &unk_100923510);
      sub_1007410F4();
      sub_1006B8558(&unk_10092E4F0, &type metadata accessor for AttributedString);
      sub_100741174();
      v31 = *(v44 + 8);
      v32 = v45;
      v31(v6, v45);
      v31(v9, v32);
      v33 = v43;
      (*(v43 + 56))(v12, 0, 1, v16);
      v34 = v42;
      sub_1007536C4();

      (*(v33 + 8))(v19, v16);
    }
  }
}

uint64_t sub_1006B8504(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000C724(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006B8558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006B85A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineCompositingFilter;
  swift_beginAccess();
  sub_1006B92BC(a1, v1 + v3);
  swift_endAccess();
  v4 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineView) layer];
  sub_100032C04(v1 + v3, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_10000C888(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_100754734();
    (*(v7 + 8))(v10, v5);
    sub_10000C620(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 setCompositingFilter:v11];

  swift_unknownObjectRelease();
  return sub_1000277BC(a1);
}

uint64_t sub_1006B874C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100751344();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100751374();
  sub_100039C50(v8, qword_100982E40);
  sub_10000D0FC(v8, qword_100982E40);
  (*(v5 + 104))(v7, enum case for Separator.Position.bottom(_:), v4);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v13[3] = sub_100750B04();
  v13[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v13);
  v12[3] = v0;
  v12[4] = &protocol witness table for FontSource;
  v9 = sub_10000D134(v12);
  (*(v1 + 16))(v9, v3, v0);
  v10 = UIFontTextStyleBody;
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  return sub_100751354();
}

char *sub_1006B8994(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100751344();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineColor;
  sub_10000D198();
  *&v4[v14] = sub_100753DB4();
  v15 = &v4[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineCompositingFilter];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  (*(v11 + 104))(v13, enum case for Separator.Position.bottom(_:), v10);
  v22[3] = sub_1007507D4();
  v22[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v22);
  sub_1007507C4();
  sub_100751354();
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineView] = v16;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  [v17 setUserInteractionEnabled:0];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v17 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineView;
  [*&v17[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineView] setBackgroundColor:*&v17[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineColor]];
  [v17 addSubview:*&v17[v18]];

  return v17;
}

id sub_1006B8E9C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v1;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "layoutSubviews", v5);
  sub_1007477B4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v1 traitCollection];
  sub_100751364();
  v18 = v17;

  swift_beginAccess();
  sub_100751304();
  swift_endAccess();
  sub_10000C888(v25, v25[3]);
  sub_100536120();
  sub_100750564();
  v20 = v19;
  (*(v4 + 8))(v7, v3);
  sub_10000C620(v25);
  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineView];
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  v23 = v20 + CGRectGetMinY(v28);
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  return [v21 setFrame:{MinX, v23, CGRectGetWidth(v29), v18}];
}

uint64_t type metadata accessor for SeparatorView()
{
  result = qword_1009458C0;
  if (!qword_1009458C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006B9210()
{
  result = sub_100751374();
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

uint64_t sub_1006B92BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923520);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1006B932C()
{
  v1 = sub_100751344();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineColor;
  sub_10000D198();
  *(v0 + v5) = sub_100753DB4();
  v6 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineCompositingFilter);
  *v6 = 0u;
  v6[1] = 0u;
  (*(v2 + 104))(v4, enum case for Separator.Position.bottom(_:), v1);
  v8[3] = sub_1007507D4();
  v8[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v8);
  sub_1007507C4();
  sub_100751354();
  sub_100754644();
  __break(1u);
}

uint64_t sub_1006B94B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v60 = a6;
  v9 = sub_10000C518(&qword_1009458D0);
  __chkstk_darwin(v9 - 8);
  v54 = &v50 - v10;
  v64 = sub_100752314();
  v11 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v50 = &v50 - v14;
  v15 = sub_1007527A4();
  v68 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = &v50 - v18;
  sub_1007442C4();
  sub_100752754();
  v19 = v70;
  if (!v70)
  {
    result = sub_1007526F4();
    __break(1u);
    return result;
  }

  swift_allocObject();

  v58 = v19;
  v20 = sub_1007442A4();
  v21 = sub_10000C518(&qword_100938E30);
  v22 = *(v11 + 72);
  v63 = v11;
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v53 = 2 * v22;
  v52 = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1007A6580;
  v67 = v23;
  *&v70 = v20;
  v56 = v20;

  sub_1007522F4();
  sub_10000C518(&qword_100924B88);
  type metadata accessor for LinkPresentationProvider();
  *&v70 = swift_allocObject();
  swift_allocObject();
  *&v70 = sub_100742DF4();
  sub_1007522F4();
  v73 = v24;
  v61 = a4;
  v62 = a1;
  if (a2)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      swift_unknownObjectRetain();
      sub_100748C14();
      v25 = sub_100748C24();
      v51 = v26;
      v66 = v25;
      swift_unknownObjectRetain();
      v27 = sub_100748C34();
      swift_unknownObjectRelease();
      goto LABEL_7;
    }
  }

  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  sub_1007449F4();
  sub_100752D34();
  sub_100752B64();
  sub_100744994();
  v28 = sub_100752B54();
  sub_1007495B4();
  swift_allocObject();
  swift_retain_n();
  v66 = v28;
  v27 = sub_100749584();

  if (a2)
  {
    v51 = &protocol witness table for BasicImpressionsTracker;
LABEL_7:
    swift_getObjectType();
    v29 = swift_conformsToProtocol2();
    v65 = v27;
    if (v29)
    {
      sub_10074CC94();
      swift_getObjectType();
      swift_unknownObjectRetain();

      *&v70 = sub_10074DF14();
      v30 = v50;
      sub_1007522F4();
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        v24 = sub_10025527C(v31 > 1, v32 + 1, 1, v24);
      }

      v33 = v67;
      swift_unknownObjectRelease();
      *(v24 + 16) = v32 + 1;
      (*(v63 + 32))(v24 + v33 + v32 * v22, v30, v64);
      v73 = v24;
    }

    else
    {
    }

    goto LABEL_13;
  }

  v51 = &protocol witness table for BasicImpressionsTracker;
  v65 = v27;
LABEL_13:
  v50 = (8 * v22);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1007B3A60;
  sub_1007464C4();
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v34 = v68;
  v35 = v69;
  v36 = *(v68 + 16);
  v37 = v54;
  v36(v54, v69, v15);
  (*(v34 + 56))(v37, 0, 1, v15);
  swift_allocObject();
  *&v70 = sub_1007464B4();
  sub_1007522F4();
  v38 = sub_10074B184();
  sub_10074C5F4();
  v39 = sub_10074C5E4();
  sub_10074C5C4();

  v40 = v55;
  v36(v55, v35, v15);
  v41 = objc_allocWithZone(v38);
  *&v70 = sub_10074B144();
  sub_1007522F4();
  *&v70 = [objc_allocWithZone(sub_100748464()) init];
  sub_1007522F4();
  v36(v40, v35, v15);
  sub_1007522F4();
  sub_10000C518(&qword_1009366A8);
  *&v70 = v66;
  *(&v70 + 1) = v51;
  sub_1007522F4();
  sub_1007495B4();
  *&v70 = v65;
  sub_1007522F4();
  type metadata accessor for TodayCardOverlayReusePool();
  swift_allocObject();
  *&v70 = sub_1006CE400(25);
  sub_1007522F4();
  type metadata accessor for TodayCardGridTracker();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_100413D18(_swiftEmptyArrayStorage);
  *&v70 = v42;
  sub_1007522F4();
  sub_10049FE0C(v52);
  sub_100741A14();
  swift_allocObject();

  *&v70 = sub_100741A24();
  v43 = v57;
  sub_1007522F4();
  v44 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_10025527C(0, *(v44 + 2) + 1, 1, v44);
  }

  v45 = v61;
  v47 = *(v44 + 2);
  v46 = *(v44 + 3);
  if (v47 >= v46 >> 1)
  {
    v44 = sub_10025527C(v46 > 1, v47 + 1, 1, v44);
  }

  *(v44 + 2) = v47 + 1;
  (*(v63 + 32))(&v44[v67 + v47 * v22], v43, v64);
  sub_100752764();

  sub_100752714();
  *&v70 = v44;
  sub_10000C518(&qword_100944738);
  sub_1006B9F0C();
  sub_100752734();

  *&v70 = v45;
  sub_100752734();

  v48 = sub_100752744();

  swift_unknownObjectRelease();

  (*(v68 + 8))(v69, v15);
  return v48;
}

unint64_t sub_1006B9F0C()
{
  result = qword_100944740;
  if (!qword_100944740)
  {
    sub_10000C724(&qword_100944738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944740);
  }

  return result;
}

id sub_1006BA108()
{
  v2.receiver = v0;
  v2.super_class = _s18PaletteContentViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006BA220(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1006BA280()
{
  result = [objc_opt_self() configurationWithPointSize:12.0];
  qword_100945960 = result;
  return result;
}

void sub_1006BA2CC(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = UIFontTextStyleTitle3;
  v5 = [v3 configurationWithTextStyle:v4];

  *a2 = v5;
}

id sub_1006BA340(unsigned __int8 a1)
{
  v2 = sub_100743B04();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
      if (qword_100921D00 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
      if (qword_100921CF8 == -1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
    if (qword_100921D08 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a1 != 3)
  {
    v7 = sub_10056003C(0x654C6C657275614CLL, 0xEF656772614C7466, 0);
    v8 = [v7 imageWithRenderingMode:2];

    return v8;
  }

  (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
  if (qword_100921D10 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_13:
  v10 = sub_100743AE4();
  (*(v3 + 8))(v6, v2);
  return v10;
}

id sub_1006BA60C(unsigned __int8 a1)
{
  v2 = sub_100743B04();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
      if (qword_100921D00 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
      if (qword_100921CF8 == -1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
    if (qword_100921D08 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a1 != 3)
  {
    v7 = sub_10056003C(0xD000000000000010, 0x800000010078ACD0, 0);
    v8 = [v7 imageWithRenderingMode:2];

    return v8;
  }

  (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
  if (qword_100921D10 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_13:
  v10 = sub_100743AE4();
  (*(v3 + 8))(v6, v2);
  return v10;
}

unint64_t sub_1006BA8D8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006BE354(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1006BA904()
{
  v1 = *v0;
  sub_100754834();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_100754844(v2);
  return sub_100754884();
}

void sub_1006BA954()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  sub_100754844(v1);
}

Swift::Int sub_1006BA98C()
{
  v1 = *v0;
  sub_100754834();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_100754844(v2);
  return sub_100754884();
}

void *sub_1006BA9D8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1006BA9F8(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_1006BAA10@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    if (sub_100741514())
    {
      if (qword_1009211D8 != -1)
      {
        swift_once();
      }

      v3 = sub_100750534();
      v4 = v3;
      v5 = qword_1009812C0;
      goto LABEL_27;
    }

    if (sub_1007414C4())
    {
      if (qword_1009211E0 != -1)
      {
        swift_once();
      }

      v3 = sub_100750534();
      v4 = v3;
      v5 = qword_1009812D8;
      goto LABEL_27;
    }

    if (sub_100741504())
    {
      if (qword_1009211E8 != -1)
      {
        swift_once();
      }

      v3 = sub_100750534();
      v4 = v3;
      v5 = qword_1009812F0;
      goto LABEL_27;
    }
  }

  else if (a1 == 1)
  {
    if (sub_100741514())
    {
      if (qword_1009211A8 != -1)
      {
        swift_once();
      }

      v3 = sub_100750534();
      v4 = v3;
      v5 = qword_100981230;
LABEL_27:
      v6 = sub_10000D0FC(v3, v5);
      v13 = *(v4 - 8);
      (*(v13 + 16))(a2, v6, v4);
      v7 = *(v13 + 56);
      v8 = a2;
      v9 = 0;
      v10 = v4;
      goto LABEL_29;
    }

    if (sub_1007414C4())
    {
      if (qword_1009211B0 != -1)
      {
        swift_once();
      }

      v3 = sub_100750534();
      v4 = v3;
      v5 = qword_100981248;
      goto LABEL_27;
    }

    if (sub_100741504())
    {
      if (qword_1009211B8 != -1)
      {
        swift_once();
      }

      v3 = sub_100750534();
      v4 = v3;
      v5 = qword_100981260;
      goto LABEL_27;
    }
  }

  v11 = sub_100750534();
  v7 = *(*(v11 - 8) + 56);
  v10 = v11;
  v8 = a2;
  v9 = 1;
LABEL_29:

  return v7(v8, v9, 1, v10);
}

char *sub_1006BACE0(unsigned __int8 a1, char a2, char a3, char a4, unsigned __int8 a5)
{
  v6 = v5;
  LODWORD(v87) = a5;
  ObjectType = swift_getObjectType();
  v12 = sub_100741574();
  v82 = *(v12 - 8);
  v83 = v12;
  __chkstk_darwin(v12);
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100750534();
  v86 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = &v77 - v16;
  v17 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v17 - 8);
  v80 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v85 = &v77 - v20;
  v21 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_useAdsLocale;
  v6[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_useAdsLocale] = 0;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_titleLabel;
  sub_100745C84();
  *&v6[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_leftLaurelView;
  *&v6[v23] = [objc_allocWithZone(UIImageView) init];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_rightLaurelView;
  *&v6[v24] = [objc_allocWithZone(UIImageView) init];
  v6[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_size] = a1;
  v6[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_preferredLineCount] = a2 & 1;
  v6[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_shouldCapWidthByAvailableWidth] = a3;
  v6[v21] = a4;
  v6[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_useCase] = a5;
  v25 = type metadata accessor for EditorsChoiceView();
  v90.receiver = v6;
  v90.super_class = v25;
  v26 = objc_msgSendSuper2(&v90, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [objc_opt_self() clearColor];
  [v30 setBackgroundColor:v31];

  v32 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_titleLabel;
  v33 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_titleLabel];
  v34 = [v30 tintColor];

  [v33 setTextColor:v34];
  [*&v30[v32] setLineBreakMode:4];
  v35 = *&v30[v32];
  if (v87)
  {
    v36 = v35;
    v37 = [v30 traitCollection];
    v38 = a1;
    v39 = a1;
    *&v87 = v36;
    v77 = v37;
    if (a1 <= 1u)
    {
      v40 = v86;
      v41 = v84;
      v42 = v79;
      if (v38)
      {
        if (qword_1009211A0 != -1)
        {
          swift_once();
        }

        v43 = qword_100981218;
      }

      else
      {
        if (qword_100921198 != -1)
        {
          swift_once();
        }

        v43 = qword_100981200;
      }
    }

    else
    {
      v40 = v86;
      v41 = v84;
      v42 = v79;
      if (v38 == 2)
      {
        if (qword_1009211C0 != -1)
        {
          swift_once();
        }

        v43 = qword_100981278;
      }

      else if (v38 == 3)
      {
        if (qword_1009211F0 != -1)
        {
          swift_once();
        }

        v43 = qword_100981308;
      }

      else
      {
        if (qword_1009211F8 != -1)
        {
          swift_once();
        }

        v43 = qword_100981320;
      }
    }

    v48 = sub_10000D0FC(v42, v43);
    (*(v40 + 16))(v41, v48, v42);
    v49 = v81;
    sub_100741544();
    v50 = v80;
    sub_1006BAA10(v39, v80);
    (*(v82 + 8))(v49, v83);
    if ((*(v40 + 48))(v50, 1, v42) == 1)
    {

      sub_10006A144(v50);
      v51 = v85;
      (*(v40 + 32))(v85, v41, v42);
    }

    else
    {
      v52 = v78;
      v84 = *(v40 + 32);
      (v84)(v78, v50, v42);
      v53 = v77;
      v54.super.isa = v77;
      isa = sub_100750514(v54).super.isa;
      [(objc_class *)isa pointSize];
      v57 = v56;
      v58.super.isa = v53;
      v59 = sub_100750514(v58).super.isa;
      [(objc_class *)v59 pointSize];
      v61 = v60;

      v40 = v86;
      v62 = *(v40 + 8);
      if (v61 >= v57)
      {
        v62(v52, v42);
        v51 = v85;
        v63 = v85;
        v64 = v41;
      }

      else
      {
        v62(v41, v42);
        v51 = v85;
        v63 = v85;
        v64 = v52;
      }

      (v84)(v63, v64, v42);
    }

    v65 = v87;
    (*(v40 + 56))(v51, 0, 1, v42);
    sub_100745BA4();
  }

  else
  {
    v44 = v35;
    sub_1007509A4();
    if (qword_100920220 != -1)
    {
      swift_once();
    }

    v45 = sub_10074A584();
    v46 = sub_10000D0FC(v45, qword_10097DA20);
    v89[3] = v45;
    v89[4] = sub_1006BE290(&qword_100934700, &type metadata accessor for MetadataRibbonTextStyle);
    v47 = sub_10000D134(v89);
    (*(*(v45 - 8) + 16))(v47, v46, v45);
    sub_100745BC4();
  }

  [*&v30[v32] setAdjustsFontSizeToFitWidth:{1, v77}];
  v66 = *&v30[v32];
  v67 = v30;
  [v67 addSubview:v66];
  if (v67[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_size] == 4)
  {

    [v67 setContentMode:3];
  }

  else
  {
    v68 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_rightLaurelView;
    v69 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_rightLaurelView];
    v70 = [v67 tintColor];
    [v69 setTintColor:v70];

    v71 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_leftLaurelView;
    v72 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_leftLaurelView];
    v73 = [v67 tintColor];

    [v72 setTintColor:v73];
    [*&v67[v68] setSemanticContentAttribute:3];
    [*&v67[v71] setSemanticContentAttribute:3];
    [v67 addSubview:*&v67[v71]];
    [v67 addSubview:*&v67[v68]];
  }

  sub_1006BC218();
  sub_1006BC384();
  sub_10000C518(&unk_1009249D0);
  v74 = swift_allocObject();
  v87 = xmmword_1007A5A00;
  *(v74 + 16) = xmmword_1007A5A00;
  *(v74 + 32) = sub_100751624();
  *(v74 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100753D44();
  swift_unknownObjectRelease();

  v75 = swift_allocObject();
  *(v75 + 16) = v87;
  *(v75 + 32) = sub_1007519E4();
  *(v75 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v67;
}

void sub_1006BB8B4()
{
  ObjectType = swift_getObjectType();
  v53.receiver = v0;
  v53.super_class = type metadata accessor for EditorsChoiceView();
  objc_msgSendSuper2(&v53, "layoutSubviews");
  v2 = v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_preferredLineCount];
  v3 = v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_size];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_useAdsLocale;
  v5 = v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_useAdsLocale];
  v6 = v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_useCase];
  sub_1007477B4();
  CGRectGetWidth(v55);
  v7 = sub_1006BC684(v2, v3, v5, v6, v0, ObjectType);
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_titleLabel];
  v10 = v9 & 1;
  [v8 setNumberOfLines:{(v10 + 1), v7}];
  v54._object = v0[v4];
  v54._countAndFlagsBits = v10;
  sub_1006BE2D8(v54);
  v11 = sub_100753064();

  [v8 setText:v11];

  v12 = [v0 traitCollection];
  if (v6 == 1)
  {
    v13 = v12;
    v14 = [v12 preferredContentSizeCategory];
    v15 = sub_100753924();

    if (v15)
    {
      [*&v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_leftLaurelView] setHidden:1];
      [*&v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_rightLaurelView] setHidden:1];
      sub_1007477B4();
      Width = CGRectGetWidth(v56);
      sub_1007477B4();
      [v8 sizeThatFits:{Width, CGRectGetHeight(v57)}];
      v18 = v17;
      v20 = v19;
      sub_1007477B4();
      v21 = CGRectGetMidX(v58) - v18 * 0.5;
      sub_1007477B4();
      [v8 setFrame:{v21, CGRectGetMidY(v59) - v20 * 0.5, Width, v20}];
      return;
    }
  }

  else
  {
  }

  v22 = v3;
  v23 = sub_1006BA340(v3);
  v24 = sub_1006BA60C(v22);
  v25 = 12.0;
  if (v22 != 4)
  {
    [v0 bounds];
    Height = CGRectGetHeight(v60);
    [v23 size];
    if (v27 < Height)
    {
      Height = v27;
    }

    [v23 size];
    v29 = Height * v28;
    [v23 size];
    v31 = v29 / v30;
    [v0 bounds];
    MinX = CGRectGetMinX(v61);
    [v0 bounds];
    v33 = CGRectGetMidY(v62) - Height * 0.5;
    v34 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_leftLaurelView];
    [v34 setHidden:0];
    [v34 setImage:v23];
    [v34 setFrame:{MinX, v33, v31, Height}];
    [v0 bounds];
    v35 = CGRectGetHeight(v63);
    [v24 size];
    if (v36 < v35)
    {
      v35 = v36;
    }

    [v24 size];
    v38 = v35 * v37;
    [v24 size];
    v40 = v38 / v39;
    [v0 bounds];
    v41 = CGRectGetMaxX(v64) - v40;
    [v0 bounds];
    v42 = CGRectGetMidY(v65) - v35 * 0.5;
    v43 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_rightLaurelView];
    [v43 setHidden:0];
    [v43 setImage:v24];
    [v43 setFrame:{v41, v42, v40, v35}];
    v25 = dbl_1007D57E8[v22];
  }

  sub_1007477B4();
  v44 = CGRectGetWidth(v66);
  [v23 size];
  v46 = v25 + v25 + v45;
  [v24 size];
  v48 = v44 - (v46 + v47);
  sub_1007477B4();
  [v8 sizeThatFits:{v48, CGRectGetHeight(v67)}];
  v50 = v49;
  [v23 size];
  v52 = v25 + v51;
  sub_1007477B4();
  [v8 setFrame:{v52, CGRectGetMidY(v68) + v50 * -0.5, v48, v50}];
}

void sub_1006BBDB8(double a1, double a2, double a3, double a4)
{
  if (*(v4 + OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_size) != 4)
  {
    v31.receiver = v4;
    v31.super_class = type metadata accessor for EditorsChoiceView();
    objc_msgSendSuper2(&v31, "drawRect:", a1, a2, a3, a4);
    return;
  }

  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [v4 tintColor];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v8 CGColor];

    CGContextSetFillColorWithColor(v7, v10);
  }

  v11 = sub_1006BA340(4u);
  [v4 bounds];
  Height = CGRectGetHeight(v33);
  [v11 size];
  if (v13 < Height)
  {
    Height = v13;
  }

  [v11 size];
  v15 = Height * v14;
  [v11 size];
  v17 = v15 / v16;
  [v4 bounds];
  MinX = CGRectGetMinX(v34);
  [v4 bounds];
  [v11 drawInRect:{MinX, CGRectGetMidY(v35) - Height * 0.5, v17, Height}];
  v30 = sub_1006BA60C(4u);
  [v4 bounds];
  v19 = CGRectGetHeight(v36);
  [v30 size];
  if (v20 < v19)
  {
    v19 = v20;
  }

  [v30 size];
  v22 = v19 * v21;
  [v30 size];
  v24 = v22 / v23;
  [v4 bounds];
  v25 = CGRectGetMaxX(v37) - v24;
  [v4 bounds];
  [v30 drawInRect:{v25, CGRectGetMidY(v38) - v19 * 0.5, v24, v19}];
}

void sub_1006BC0AC()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_titleLabel];
  v2 = [v0 tintColor];
  [v1 setTextColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_leftLaurelView];
  v4 = [v0 tintColor];
  [v3 setTintColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_rightLaurelView];
  v6 = [v0 tintColor];
  [v5 setTintColor:v6];

  if (v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_size] == 4)
  {

    [v0 setNeedsDisplay];
  }
}

void sub_1006BC218()
{
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_useCase] == 1)
  {
    v1 = [v0 layer];
    [v1 setAllowsGroupBlending:0];

    v2 = [v0 traitCollection];
    [v2 userInterfaceStyle];

    sub_100753094();
    v3 = sub_100753064();

    v4 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_leftLaurelView] layer];
    [v4 setCompositingFilter:v3];

    v5 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_rightLaurelView] layer];
    [v5 setCompositingFilter:v3];
  }
}

id sub_1006BC384()
{
  v1 = v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_useCase];
  v2 = [v0 traitCollection];
  if (v1 == 1)
  {
    v3 = v2;
    v4 = [v2 preferredContentSizeCategory];
    v5 = sub_100753924();

    if (v5)
    {
      v6 = 4;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = 1;
LABEL_6:
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_titleLabel];

  return [v7 setTextAlignment:v6];
}

id sub_1006BC498()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorsChoiceView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1006BC580()
{
  result = qword_1009459D8;
  if (!qword_1009459D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009459D8);
  }

  return result;
}

unint64_t sub_1006BC5D8()
{
  result = qword_1009459E0;
  if (!qword_1009459E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009459E0);
  }

  return result;
}

unint64_t sub_1006BC630()
{
  result = qword_1009459E8;
  if (!qword_1009459E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009459E8);
  }

  return result;
}

double sub_1006BC684(char a1, uint64_t a2, int a3, int a4, void *a5, uint64_t a6)
{
  LODWORD(v108) = a3;
  v112 = a2;
  v113 = a6;
  v116 = a4;
  v8 = a4;
  v9 = sub_100741574();
  v110 = *(v9 - 8);
  v111 = v9;
  __chkstk_darwin(v9);
  v109 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v11 - 8);
  v106 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v104 - v14;
  v16 = sub_100750534();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v114 = v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v107 = v104 - v20;
  __chkstk_darwin(v21);
  v115 = v104 - v22;
  __chkstk_darwin(v23);
  v25 = v104 - v24;
  __chkstk_darwin(v26);
  v28 = v104 - v27;
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v105 = v104 - v31;
  v117 = a5;
  v32 = [a5 traitCollection];
  if (v8 != 1)
  {

    goto LABEL_5;
  }

  v33 = v32;
  v34 = [v32 preferredContentSizeCategory];
  v35 = sub_100753924();

  if ((v35 & 1) == 0)
  {
LABEL_5:
    v37 = v112;
    v38 = sub_1006BA340(v112);
    v39 = sub_1006BA60C(v37);
    [v38 size];
    [v39 size];

    v36 = v114;
    goto LABEL_6;
  }

  v36 = v114;
  v37 = v112;
LABEL_6:
  if (a1)
  {
    goto LABEL_44;
  }

  v40._countAndFlagsBits = 0xD00000000000001ALL;
  v40._object = 0x8000000100772020;
  if (v108)
  {
    v41 = sub_10074CF34(v40);
  }

  else
  {
    v121._countAndFlagsBits = 0;
    v121._object = 0xE000000000000000;
    v41 = sub_1007458B4(v40, v121);
  }

  v43 = v41;
  v44 = v42;
  v45 = [v117 traitCollection];
  v104[2] = v44;
  v104[1] = v43;
  if (v37 <= 1u)
  {
    if (v37)
    {
      if (qword_1009211A0 != -1)
      {
        swift_once();
      }

      v46 = qword_100981218;
    }

    else
    {
      if (qword_100921198 != -1)
      {
        swift_once();
      }

      v46 = qword_100981200;
    }
  }

  else if (v37 == 2)
  {
    if (v116)
    {
      if (qword_1009211C0 != -1)
      {
        swift_once();
      }

      v46 = qword_100981278;
    }

    else
    {
      if (qword_1009211C8 != -1)
      {
        swift_once();
      }

      v46 = qword_100981290;
    }
  }

  else if (v37 == 3)
  {
    if (qword_1009211F0 != -1)
    {
      swift_once();
    }

    v46 = qword_100981308;
  }

  else
  {
    if (qword_1009211F8 != -1)
    {
      swift_once();
    }

    v46 = qword_100981320;
  }

  v47 = sub_10000D0FC(v16, v46);
  (*(v17 + 16))(v28, v47, v16);
  v48 = v109;
  sub_100741544();
  sub_1006BAA10(v37, v15);
  (*(v110 + 8))(v48, v111);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_10006A144(v15);
    v49 = v105;
    (*(v17 + 32))(v105, v28, v16);
    v36 = v114;
  }

  else
  {
    v50 = *(v17 + 32);
    v50(v25, v15, v16);
    v51.super.isa = v45;
    isa = sub_100750514(v51).super.isa;
    [(objc_class *)isa pointSize];
    v54 = v53;
    v55.super.isa = v45;
    v56 = sub_100750514(v55).super.isa;
    [(objc_class *)v56 pointSize];
    v58 = v57;

    v59 = *(v17 + 8);
    if (v58 >= v54)
    {
      v59(v25, v16);
      v49 = v105;
      v60 = v105;
      v61 = v28;
    }

    else
    {
      v59(v28, v16);
      v49 = v105;
      v60 = v105;
      v61 = v25;
    }

    v50(v60, v61, v16);
    v36 = v114;
    v37 = v112;
  }

  v62 = v116;
  v63 = [v117 traitCollection];
  if (v62 == 1)
  {
    v64 = v63;
    v65 = [v63 preferredContentSizeCategory];
    sub_100753924();
  }

  else
  {
  }

  v66 = sub_10074F3F4();
  v119 = v66;
  v120 = sub_1006BE290(&qword_10092AC70, &type metadata accessor for Feature);
  v67 = sub_10000D134(v118);
  (*(*(v66 - 8) + 104))(v67, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
  sub_10074FC74();
  sub_10000C620(v118);
  sub_10074CCB4();
  v69 = v68;

  (*(v17 + 8))(v49, v16);
  v70 = sub_10074FC34();
  if (v116)
  {
    if ((v70 & 1) == 0)
    {
LABEL_44:
      v71._object = 0x80000001007681D0;
      if (v108)
      {
        v71._countAndFlagsBits = 0xD000000000000017;
        v72 = sub_10074CF34(v71);
      }

      else
      {
        v122._countAndFlagsBits = 0xD000000000000050;
        v122._object = 0x80000001007681F0;
        v71._countAndFlagsBits = 0xD000000000000017;
        v72 = sub_1007458B4(v71, v122);
      }

      v74 = v72;
      v75 = v73;
      v77 = v106;
      v76 = v107;
      v78 = [v117 traitCollection];
      v112 = v75;
      v108 = v74;
      if (v37 <= 1u)
      {
        if (v37)
        {
          if (qword_1009211A0 != -1)
          {
            swift_once();
          }

          v79 = qword_100981218;
        }

        else
        {
          if (qword_100921198 != -1)
          {
            swift_once();
          }

          v79 = qword_100981200;
        }
      }

      else if (v37 == 2)
      {
        if (v116)
        {
          if (qword_1009211C0 != -1)
          {
            swift_once();
          }

          v79 = qword_100981278;
        }

        else
        {
          if (qword_1009211C8 != -1)
          {
            swift_once();
          }

          v79 = qword_100981290;
        }
      }

      else if (v37 == 3)
      {
        if (qword_1009211F0 != -1)
        {
          swift_once();
        }

        v79 = qword_100981308;
      }

      else
      {
        if (qword_1009211F8 != -1)
        {
          swift_once();
        }

        v79 = qword_100981320;
      }

      v80 = sub_10000D0FC(v16, v79);
      (*(v17 + 16))(v76, v80, v16);
      v81 = v109;
      sub_100741544();
      sub_1006BAA10(v37, v77);
      (*(v110 + 8))(v81, v111);
      if ((*(v17 + 48))(v77, 1, v16) == 1)
      {

        sub_10006A144(v77);
        (*(v17 + 32))(v115, v76, v16);
      }

      else
      {
        v82 = v76;
        v83 = *(v17 + 32);
        v83(v36, v77, v16);
        v84.super.isa = v78;
        v85 = sub_100750514(v84).super.isa;
        [(objc_class *)v85 pointSize];
        v87 = v86;
        v88.super.isa = v78;
        v89 = sub_100750514(v88).super.isa;
        [(objc_class *)v89 pointSize];
        v91 = v90;

        v92 = *(v17 + 8);
        if (v91 >= v87)
        {
          v92(v36, v16);
          v93 = v115;
          v94 = v82;
        }

        else
        {
          v92(v82, v16);
          v93 = v115;
          v94 = v36;
        }

        v83(v93, v94, v16);
      }

      v95 = v116;
      v96 = [v117 traitCollection];
      if (v95 == 1)
      {
        v97 = v96;
        v98 = [v96 preferredContentSizeCategory];
        sub_100753924();
      }

      else
      {
      }

      v99 = sub_10074F3F4();
      v119 = v99;
      v120 = sub_1006BE290(&qword_10092AC70, &type metadata accessor for Feature);
      v100 = sub_10000D134(v118);
      (*(*(v99 - 8) + 104))(v100, enum case for Feature.measurement_with_labelplaceholder(_:), v99);
      sub_10074FC74();
      sub_10000C620(v118);
      v101 = v115;
      sub_10074CCB4();
      v69 = v102;

      (*(v17 + 8))(v101, v16);
    }
  }

  return v69;
}

double sub_1006BD454(char a1, uint64_t a2, int a3, int a4, id a5)
{
  LODWORD(v111) = a3;
  v119 = a2;
  v118 = a4;
  v7 = a4;
  v8 = sub_100741574();
  v114 = *(v8 - 8);
  v115 = v8;
  __chkstk_darwin(v8);
  v113 = v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v10 - 8);
  v109 = v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v106 - v13;
  v15 = sub_100750534();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v110 = v106 - v20;
  __chkstk_darwin(v21);
  v117 = v106 - v22;
  __chkstk_darwin(v23);
  v25 = v106 - v24;
  __chkstk_darwin(v26);
  v28 = v106 - v27;
  __chkstk_darwin(v29);
  v108 = v106 - v30;
  v112 = type metadata accessor for EditorsChoiceView();
  v31 = [a5 traitCollection];
  v107 = v25;
  if (v7 == 1)
  {
    v32 = a5;
    v33 = v31;
    v34 = [v31 preferredContentSizeCategory];
    v35 = sub_100753924();

    a5 = v32;
    if (v35)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v36 = v119;
  v37 = sub_1006BA340(v119);
  v38 = sub_1006BA60C(v36);
  [v37 size];
  [v38 size];

LABEL_6:
  v39 = v18;
  v116 = a5;
  if (a1)
  {
    goto LABEL_44;
  }

  v40._countAndFlagsBits = 0xD00000000000001ALL;
  v40._object = 0x8000000100772020;
  if (v111)
  {
    v41 = sub_10074CF34(v40);
  }

  else
  {
    v123._countAndFlagsBits = 0;
    v123._object = 0xE000000000000000;
    v41 = sub_1007458B4(v40, v123);
  }

  v43 = v41;
  v44 = v42;
  v45 = [a5 traitCollection];
  v106[2] = v44;
  v106[1] = v43;
  if (v119 <= 1u)
  {
    if (v119)
    {
      if (qword_1009211A0 != -1)
      {
        swift_once();
      }

      v46 = qword_100981218;
    }

    else
    {
      if (qword_100921198 != -1)
      {
        swift_once();
      }

      v46 = qword_100981200;
    }
  }

  else if (v119 == 2)
  {
    if (v118)
    {
      if (qword_1009211C0 != -1)
      {
        swift_once();
      }

      v46 = qword_100981278;
    }

    else
    {
      if (qword_1009211C8 != -1)
      {
        swift_once();
      }

      v46 = qword_100981290;
    }
  }

  else if (v119 == 3)
  {
    if (qword_1009211F0 != -1)
    {
      swift_once();
    }

    v46 = qword_100981308;
  }

  else
  {
    if (qword_1009211F8 != -1)
    {
      swift_once();
    }

    v46 = qword_100981320;
  }

  v47 = sub_10000D0FC(v15, v46);
  (*(v16 + 16))(v28, v47, v15);
  v48 = v113;
  sub_100741544();
  sub_1006BAA10(v119, v14);
  (*(v114 + 8))(v48, v115);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_10006A144(v14);
    v49 = v108;
    (*(v16 + 32))(v108, v28, v15);
    a5 = v116;
  }

  else
  {
    v106[0] = v18;
    v50 = *(v16 + 32);
    v51 = v107;
    v50(v107, v14, v15);
    v52.super.isa = v45;
    isa = sub_100750514(v52).super.isa;
    [(objc_class *)isa pointSize];
    v55 = v54;
    v56.super.isa = v45;
    v57 = sub_100750514(v56).super.isa;
    [(objc_class *)v57 pointSize];
    v59 = v58;

    v60 = *(v16 + 8);
    if (v59 >= v55)
    {
      v60(v51, v15);
      v49 = v108;
      v61 = v108;
      v62 = v28;
    }

    else
    {
      v60(v28, v15);
      v49 = v108;
      v61 = v108;
      v62 = v51;
    }

    v50(v61, v62, v15);
    a5 = v116;
    v39 = v106[0];
  }

  v63 = v118;
  v64 = [a5 traitCollection];
  if (v63 == 1)
  {
    v65 = v64;
    v66 = [v64 preferredContentSizeCategory];
    sub_100753924();
  }

  else
  {
  }

  v67 = sub_10074F3F4();
  v121 = v67;
  v122 = sub_1006BE290(&qword_10092AC70, &type metadata accessor for Feature);
  v68 = sub_10000D134(v120);
  (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_10074FC74();
  sub_10000C620(v120);
  sub_10074CCB4();
  v70 = v69;

  (*(v16 + 8))(v49, v15);
  v71 = sub_10074FC34();
  if (v118)
  {
    if ((v71 & 1) == 0)
    {
LABEL_44:
      v72._object = 0x80000001007681D0;
      if (v111)
      {
        v72._countAndFlagsBits = 0xD000000000000017;
        v73 = sub_10074CF34(v72);
      }

      else
      {
        v124._countAndFlagsBits = 0xD000000000000050;
        v124._object = 0x80000001007681F0;
        v72._countAndFlagsBits = 0xD000000000000017;
        v73 = sub_1007458B4(v72, v124);
      }

      v75 = v73;
      v76 = v74;
      v78 = v109;
      v77 = v110;
      v79 = [a5 traitCollection];
      v111 = v75;
      if (v119 <= 1u)
      {
        if (v119)
        {
          v80 = v79;
          if (qword_1009211A0 != -1)
          {
            swift_once();
          }

          v81 = qword_100981218;
        }

        else
        {
          v80 = v79;
          if (qword_100921198 != -1)
          {
            swift_once();
          }

          v81 = qword_100981200;
        }
      }

      else if (v119 == 2)
      {
        if (v118)
        {
          v80 = v79;
          if (qword_1009211C0 != -1)
          {
            swift_once();
          }

          v81 = qword_100981278;
        }

        else
        {
          v80 = v79;
          if (qword_1009211C8 != -1)
          {
            swift_once();
          }

          v81 = qword_100981290;
        }
      }

      else if (v119 == 3)
      {
        v80 = v79;
        if (qword_1009211F0 != -1)
        {
          swift_once();
        }

        v81 = qword_100981308;
      }

      else
      {
        v80 = v79;
        if (qword_1009211F8 != -1)
        {
          swift_once();
        }

        v81 = qword_100981320;
      }

      v82 = sub_10000D0FC(v15, v81);
      (*(v16 + 16))(v77, v82, v15);
      v83 = v113;
      sub_100741544();
      sub_1006BAA10(v119, v78);
      (*(v114 + 8))(v83, v115);
      if ((*(v16 + 48))(v78, 1, v15) == 1)
      {

        sub_10006A144(v78);
        (*(v16 + 32))(v117, v77, v15);
      }

      else
      {
        v119 = v76;
        v84 = v77;
        v85 = *(v16 + 32);
        v85(v39, v78, v15);
        v86.super.isa = v80;
        v87 = sub_100750514(v86).super.isa;
        [(objc_class *)v87 pointSize];
        v89 = v88;
        v90.super.isa = v80;
        v91 = sub_100750514(v90).super.isa;
        [(objc_class *)v91 pointSize];
        v93 = v92;

        v94 = *(v16 + 8);
        if (v93 >= v89)
        {
          v94(v39, v15);
          v95 = v117;
          v96 = v84;
        }

        else
        {
          v94(v84, v15);
          v95 = v117;
          v96 = v39;
        }

        v85(v95, v96, v15);
      }

      v97 = v118;
      v98 = [v116 traitCollection];
      if (v97 == 1)
      {
        v99 = v98;
        v100 = [v98 preferredContentSizeCategory];
        sub_100753924();
      }

      else
      {
      }

      v101 = sub_10074F3F4();
      v121 = v101;
      v122 = sub_1006BE290(&qword_10092AC70, &type metadata accessor for Feature);
      v102 = sub_10000D134(v120);
      (*(*(v101 - 8) + 104))(v102, enum case for Feature.measurement_with_labelplaceholder(_:), v101);
      sub_10074FC74();
      sub_10000C620(v120);
      v103 = v117;
      sub_10074CCB4();
      v70 = v104;

      (*(v16 + 8))(v103, v15);
    }
  }

  return v70;
}

uint64_t sub_1006BE290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006BE2D8(Swift::String a1)
{
  if (a1._countAndFlagsBits)
  {
    if (a1._object)
    {
      a1._object = 0x80000001007681D0;
      a1._countAndFlagsBits = 0xD000000000000017;
      return sub_10074CF34(a1);
    }

    a1._object = 0x80000001007681D0;
    v2._countAndFlagsBits = 0xD000000000000050;
    v2._object = 0x80000001007681F0;
    a1._countAndFlagsBits = 0xD000000000000017;
  }

  else
  {
    a1._countAndFlagsBits = 0xD00000000000001ALL;
    if (a1._object)
    {
      a1._object = 0x8000000100772020;
      return sub_10074CF34(a1);
    }

    a1._object = 0x8000000100772020;
    v2._countAndFlagsBits = 0;
    v2._object = 0xE000000000000000;
  }

  return sub_1007458B4(a1, v2);
}

unint64_t sub_1006BE354(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

void sub_1006BE364()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_useAdsLocale) = 0;
  v1 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_titleLabel;
  sub_100745C84();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_leftLaurelView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_rightLaurelView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  sub_100754644();
  __break(1u);
}

void sub_1006BE438(uint64_t a1, char a2, int a3, id a4, char a5, int a6, uint64_t a7)
{
  v13 = a6;
  v14 = [a4 traitCollection];
  if (v13 == 1)
  {
    v15 = v14;
    v16 = [v14 preferredContentSizeCategory];
    v17 = sub_100753924();

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = sub_1006BA340(a1);
  v19 = sub_1006BA60C(a1);
  [v18 size];
  [v19 size];

LABEL_6:
  sub_1006BC684(a2 & 1, a1, a5 & 1, a6, a4, a7);
}

void sub_1006BE5B8(uint64_t a1, char a2, int a3, id a4, char a5, int a6, uint64_t a7)
{
  v13 = a6;
  v14 = [a4 traitCollection];
  if (v13 == 1)
  {
    v15 = v14;
    v16 = [v14 preferredContentSizeCategory];
    v17 = sub_100753924();

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = sub_1006BA340(a1);
  v19 = sub_1006BA60C(a1);
  [v18 size];
  [v19 size];

LABEL_6:
  sub_1006BC684(a2 & 1, a1, a5 & 1, a6, a4, a7);
}

id sub_1006BE75C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category) = 0;

  sub_1002E8FB4();
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_100743384(v6, v3);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;

  *(v1 + v2) = 0;

  sub_1002E8FB4();
  return [v0 setNeedsLayout];
}

uint64_t type metadata accessor for PrivacyCategoryCollectionViewCell()
{
  result = qword_100945A20;
  if (!qword_100945A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006BEB0C()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_1006BEBB4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_itemLayoutContext;
  v4 = sub_1007469A4();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 contentView];
  [v6 setClipsToBounds:0];

  v7 = [v5 contentView];
  [v7 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v8 = [v5 contentView];
  sub_10000D198();
  v9 = sub_100753E04();
  [v8 setBackgroundColor:v9];

  v10 = [v5 contentView];
  [v10 addSubview:*&v5[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView]];

  return v5;
}

id sub_1006BEDA0()
{
  swift_getWitnessTable();
  v0 = LinkPresentationProvider.deinit();

  return v0;
}

uint64_t sub_1006BEDFC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1006BEE58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1006BEF20()
{
  sub_100744704();
  sub_1006BF09C(&qword_1009366A0, &type metadata accessor for RibbonBarItem);
  result = sub_1007468B4();
  if (v1)
  {
    sub_1007442C4();
    sub_100752764();
    sub_100752D34();
    sub_1001C11D4(v1, v1);
  }

  return result;
}

uint64_t sub_1006BF004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1006BF09C(&qword_100941338, type metadata accessor for RibbonBarItemCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006BF09C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006BF0E4()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_100945A30);
  sub_10000D0FC(v0, qword_100945A30);
  return sub_100750504();
}

uint64_t sub_1006BF138()
{
  v0 = sub_10000C518(&qword_1009381D8);
  sub_100039C50(v0, qword_100945A48);
  sub_10000D0FC(v0, qword_100945A48);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for UIRectEdge(0);
  return sub_100743474();
}

void sub_1006BF1DC(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissTapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView] = 0;
  v6 = &v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissCompleted] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY] = 0;
  v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_isScrollDismissActive] = 0;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView] = v7;
  type metadata accessor for TransitioningPresentedContainerView();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29.receiver = v2;
  v29.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v29, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v9 = objc_allocWithZone(UITapGestureRecognizer);
  v10 = v8;
  v11 = [v9 initWithTarget:v10 action:"didTapOverlayView:"];
  v12 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissTapGestureRecognizer];
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissTapGestureRecognizer] = v11;
  v13 = v11;

  if (!v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView;
  v15 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView];
  [v15 addGestureRecognizer:v13];

  v16 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v10 action:"edgePanDidChange:"];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer;
  v18 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer];
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer] = v16;
  v19 = v16;

  if (!v19)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (qword_100921D20 != -1)
  {
    swift_once();
  }

  v20 = sub_10000C518(&qword_1009381D8);
  sub_10000D0FC(v20, qword_100945A48);
  v21 = v10;
  sub_100743464();

  [v19 setEdges:{v28, v10}];
  v22 = *&v10[v17];
  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = v21;
  v24 = v22;
  v25 = [v23 traitCollection];
  v26 = [v25 horizontalSizeClass];

  [v24 setEnabled:v26 != 2];
  if (*&v10[v17])
  {
    [*&v10[v14] addGestureRecognizer:?];
    v27 = [v23 traitCollection];

    sub_1006BF554();
    [*&v23[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] setClipsToBounds:0];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1006BF554()
{
  v1 = v0;
  if (sub_1007537E4())
  {
    v2 = OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView;
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView);
    if (v3 || (v4 = [objc_opt_self() effectWithStyle:4], v5 = objc_msgSend(objc_allocWithZone(UIVisualEffectView), "initWithEffect:", v4), v4, sub_1006BF7B4(v5), (v3 = *(v1 + v2)) != 0))
    {
      v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView);
      v7 = v3;
      [v6 bounds];
      [v7 setFrame:{0.0, 0.0}];

      v8 = *(v1 + v2);
      if (v8)
      {
        [v8 setHidden:0];
      }
    }

    v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView);
    v14 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor:v14];
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView);
    v11 = [objc_opt_self() blackColor];
    v12 = [v11 colorWithAlphaComponent:0.4];

    [v10 setBackgroundColor:v12];
    v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView);
    if (v13)
    {

      [v13 setHidden:1];
    }
  }
}

void sub_1006BF7B4(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView;
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  if (a1)
  {
    [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView) addSubview:v6];
  }
}

void sub_1006BF8F0()
{
  v1 = v0;
  v2 = [v0 containerView];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v0 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2)
  {
    v6 = [v1 traitCollection];
    sub_100753804();

    [v3 bounds];
    CGRectGetWidth(v19);
    if (qword_100921D18 != -1)
    {
      swift_once();
    }

    v7 = sub_1007504F4();
    sub_10000D0FC(v7, qword_100945A30);
    sub_1007504C4();
    [v3 bounds];
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    CGRectGetMidX(v20);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    CGRectGetMidY(v21);

    return;
  }

  v12 = [v1 presentingViewController];
  sub_1004C4774(v12);

  v13 = [v1 presentingViewController];
  v14 = [v13 view];

  if (!v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v14 safeAreaInsets];

  v15 = [v1 presentingViewController];
  v16 = [v15 view];

  if (!v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v16 safeAreaInsets];

  [v3 bounds];
  if (qword_100921648 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_10000D0FC(v17, qword_100982010);
  sub_1007504C4();
  v18 = [v1 traitCollection];
  if (sub_100753804())
  {
    sub_1007537D4();
  }

  [v3 bounds];
  CGRectGetMinY(v22);
  [v3 bounds];
  CGRectGetMinX(v23);
}

void sub_1006BFCA8()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "containerViewWillLayoutSubviews");
  v1 = [v0 containerView];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView];
    [v1 bounds];
    [v3 setFrame:?];
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView];
    if (v4)
    {
      v5 = v4;
      [v2 bounds];
      [v5 setFrame:{0.0, 0.0}];
    }

    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView];
    sub_1006BF8F0();
    [v6 setFrame:?];
  }
}

void sub_1006BFDE4(uint64_t a1, void *a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = [v2 containerView];
  if (v5)
  {
    v6 = v5;
    sub_1006BF554();
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v11[4] = sub_1006C1C10;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1003ED3AC;
    v11[3] = &unk_100880E28;
    v8 = _Block_copy(v11);
    v9 = v2;
    v10 = v6;

    [a2 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
  }
}

void sub_1006BFFA4(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] + OBJC_IVAR____TtC22SubscribePageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_1006C1BAC;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1003ED3AC;
  v10[3] = &unk_100880DD8;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_1006C0158()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v18 = v1;
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView];
    [v6 setFrame:?];
    v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView];
    if (v7)
    {
      [v7 setFrame:{0.0, 0.0, v3, v5}];
    }

    [v18 addSubview:v6];
    v8 = [v0 presentedViewController];
    v9 = [v8 view];

    if (v9)
    {
      [v9 setAutoresizingMask:18];
      v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView];
      [v10 bounds];
      [v9 setFrame:?];
      [v10 addSubview:v9];
      v11 = [v0 presentedViewController];
      v12 = [v11 contentScrollView];

      sub_1006C1AA0(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
      swift_unknownObjectWeakAssign();
      sub_1006C1AA0(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
    }

    v13 = [v0 presentedViewController];
    v14 = [v13 transitionCoordinator];

    [v6 setAlpha:0.0];
    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v0;
      aBlock[4] = sub_1006C1A98;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003ED3AC;
      aBlock[3] = &unk_100880D88;
      v16 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v17 = v0;

      [v14 animateAlongsideTransition:v16 completion:0];

      swift_unknownObjectRelease();
      _Block_release(v16);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1006C0470(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView] setAlpha:1.0];
  v3 = [a2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {
    v5 = [a2 presentedViewController];
    v6 = [v5 view];

    if (v6)
    {
      [v6 _setCornerRadius:0.0];
    }
  }
}

void sub_1006C05B8(char a1)
{
  if ((a1 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView] removeFromSuperview];
    v2 = [v1 presentedViewController];
    v4 = [v2 view];

    if (v4)
    {
      [v4 setClipsToBounds:0];
      v3 = [v4 layer];
      [v3 setMaskedCorners:15];

      [v4 _setCornerRadius:0.0];
    }
  }
}

void sub_1006C0708()
{
  v1 = [v0 presentedViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_1006C1A78;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1003ED3AC;
    v6[3] = &unk_100880D38;
    v4 = _Block_copy(v6);
    swift_unknownObjectRetain();
    v5 = v0;

    [v2 animateAlongsideTransition:v4 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v4);
    swift_unknownObjectRelease();
  }
}

void sub_1006C0834(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView] setAlpha:0.0];
  v3 = [a2 presentedViewController];
  v4 = [v3 view];

  if (v4)
  {
    v5 = [v4 layer];

    [v5 setMaskedCorners:15];
  }

  v6 = [a2 presentedViewController];
  [v6 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_1006C0A30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal;
  swift_beginAccess();
  sub_1006C18E8(a1, v1 + v3);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1006C1958(v1 + v3, v8);
    v6 = v9 == 0;
    sub_1006C19C8(v8);
    [v5 setShowsVerticalScrollIndicator:v6];
  }

  return sub_1006C19C8(a1);
}

void sub_1006C0AE8(void *a1)
{
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] frame];
  v3 = CGRectGetWidth(v31) * 0.28;
  [a1 translationInView:0];
  v5 = fabs(v4);
  if (v5 >= v3)
  {
    v5 = v3;
  }

  v6 = v5 / v3;
  v7 = [a1 state];
  if (v7 > 2)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 != 3)
      {
        return;
      }

      if (v6 >= 1.0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_11;
  }

  if (!v7)
  {
LABEL_11:
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissCompleted])
    {
      return;
    }

    v11 = &v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
    swift_beginAccess();
    if (*(v11 + 24))
    {
      sub_10000C824(v11, &v28);
      v12 = *(&v29 + 1);
      v13 = v30;
      sub_10000C888(&v28, *(&v29 + 1));
      (v13[4])(v12, v13);
      sub_10000C620(&v28);
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
LABEL_25:
    sub_1006C0A30(&v28);
    return;
  }

  if (v7 == 1)
  {
    sub_10000C518(&unk_1009231A0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1007A5CF0;
    v15 = [v1 presentedViewController];
    v16 = [v15 view];

    if (!v16)
    {
      __break(1u);
      return;
    }

    *(v14 + 32) = v16;
    v17 = [v1 presentedViewController];
    swift_getObjectType();
    v18 = swift_conformsToProtocol2();
    v19 = _swiftEmptyArrayStorage;
    if (v18 && v17)
    {
      v20 = v18;
      v21 = v1;
      ObjectType = swift_getObjectType();
      v23 = (*(v20 + 16))(ObjectType, v20);
      if (v23)
      {
        v24 = v23;
        v19 = swift_allocObject();
        *(v19 + 1) = xmmword_1007A5CF0;
        v19[4] = v24;
      }

      v1 = v21;
    }

    v25 = [v1 traitCollection];
    *(&v29 + 1) = &type metadata for ScaleDownInteractiveDismissal;
    v30 = &off_1008674B0;
    v26 = swift_allocObject();
    *&v28 = v26;
    *(v26 + 16) = v14;
    *(v26 + 24) = v19;
    *(v26 + 32) = v25;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_25;
  }

  if (v7 != 2)
  {
    return;
  }

  if (v6 >= 1.0)
  {
LABEL_26:
    v27 = [v1 presentedViewController];
    [v27 dismissViewControllerAnimated:1 completion:0];

    v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissCompleted] = 1;
    return;
  }

  v8 = &v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
  swift_beginAccess();
  if (*(v8 + 24))
  {
    sub_10000C824(v8, &v28);
    v9 = *(&v29 + 1);
    v10 = v30;
    sub_10000C888(&v28, *(&v29 + 1));
    (v10[2])(v9, v10, v6);
    sub_10000C620(&v28);
  }
}

void sub_1006C0F40(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v4 = OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_isScrollDismissActive;
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_isScrollDismissActive] == 1)
    {
      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] frame];
      v5 = CGRectGetHeight(v42) * 0.18;
      [a1 translationInView:0];
      v7 = v6 - *&v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY];
      if (v7 >= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6 - *&v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY];
      }

      v9 = 0.0;
      if (v5 <= 0.0)
      {
        v9 = v5;
      }

      if (v7 < 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10 / v5;
      v12 = [a1 state];
      if (v12 > 2)
      {
        if ((v12 - 4) >= 2)
        {
          if (v12 != 3)
          {
            goto LABEL_36;
          }

          if (v11 >= 1.0)
          {
LABEL_39:
            v36 = [v1 presentedViewController];
            [v36 dismissViewControllerAnimated:1 completion:0];

            v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissCompleted] = 1;
            return;
          }
        }
      }

      else if (v12)
      {
        if (v12 == 2)
        {
          if (v11 < 1.0)
          {
            v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
            swift_beginAccess();
            if (*(v13 + 24))
            {
              sub_10000C824(v13, &v38);
              v14 = *(&v39 + 1);
              v15 = v40;
              sub_10000C888(&v38, *(&v39 + 1));
              (v15[2])(v14, v15, v11);

              sub_10000C620(&v38);
              return;
            }

            goto LABEL_38;
          }

          goto LABEL_39;
        }

LABEL_36:

LABEL_38:

        return;
      }

      if (v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissCompleted])
      {
        goto LABEL_36;
      }

      v33 = &v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v33 + 24))
      {
        sub_10000C824(v33, &v38);
        v34 = *(&v39 + 1);
        v35 = v40;
        sub_10000C888(&v38, *(&v39 + 1));
        (v35[4])(v34, v35);
        sub_10000C620(&v38);
      }

      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      sub_1006C0A30(&v38);

      v1[v4] = 0;
    }

    else
    {
      if ([a1 state] != 1 && objc_msgSend(a1, "state") != 2)
      {
        goto LABEL_36;
      }

      [v37 contentOffset];
      v17 = v16;
      [v37 adjustedContentInset];
      if (v17 + v18 > 0.0)
      {
        goto LABEL_36;
      }

      [a1 velocityInView:v37];
      if (v19 <= 0.0)
      {
        goto LABEL_36;
      }

      [v37 adjustedContentInset];
      [v37 contentOffset];
      [v37 setContentOffset:?];
      sub_10000C518(&unk_1009231A0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1007A5CF0;
      v21 = [v1 presentedViewController];
      v22 = [v21 view];

      if (v22)
      {
        *(v20 + 32) = v22;
        v23 = [v1 presentedViewController];
        swift_getObjectType();
        v24 = swift_conformsToProtocol2();
        v25 = _swiftEmptyArrayStorage;
        if (v24 && v23)
        {
          v26 = v24;
          v27 = v1;
          ObjectType = swift_getObjectType();
          v29 = (*(v26 + 16))(ObjectType, v26);
          if (v29)
          {
            v30 = v29;
            v25 = swift_allocObject();
            *(v25 + 1) = xmmword_1007A5CF0;
            v25[4] = v30;
          }

          v1 = v27;
        }

        *(&v39 + 1) = &type metadata for PullDownInteractiveDismissal;
        v40 = &off_1008674D8;
        *&v38 = v20;
        *(&v38 + 1) = v25;
        *&v39 = 0x3FB1EB851EB851ECLL;
        sub_1006C0A30(&v38);
        [a1 translationInView:0];
        v32 = v31;

        *&v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY] = v32;
        v1[v4] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1006C1594(void *a1)
{
  v2 = v1;
  v19.receiver = v1;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || v5 != [a1 layoutDirection])
  {
    v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer];
    if (!v6)
    {
      __break(1u);
      goto LABEL_13;
    }

    v7 = qword_100921D20;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_10000C518(&qword_1009381D8);
    sub_10000D0FC(v9, qword_100945A48);
    v10 = v2;
    sub_100743464();

    [v8 setEdges:{v18, v2}];
  }

  v11 = [v2 traitCollection];
  v12 = [v11 horizontalSizeClass];

  if (a1 && v12 == [a1 horizontalSizeClass])
  {
    goto LABEL_11;
  }

  v13 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer];
  if (v13)
  {
    v14 = v13;
    v15 = [v2 traitCollection];
    v16 = [v15 horizontalSizeClass];

    [v14 setEnabled:v16 != 2];
LABEL_11:
    v17 = [v2 containerView];
    [v17 setNeedsLayout];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1006C18E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009381D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C1958(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009381D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C19C8(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009381D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006C1A30()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1006C1A80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1006C1AA0(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

uint64_t sub_1006C1B74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006C1BD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1006C1C10()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView);
  [*(v0 + 24) bounds];

  return [v1 setFrame:?];
}

uint64_t sub_1006C1C84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10074A304();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for FlowPresentationContext.infer(_:), v3, v5);
  sub_1006C2330(&qword_100925248, &type metadata accessor for FlowPresentationContext);
  sub_100753274();
  sub_100753274();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    (*(v4 + 8))(v7, v3);

    return sub_100618398(a1);
  }

  v8 = sub_100754754();
  (*(v4 + 8))(v7, v3);

  if (v8)
  {
    return sub_100618398(a1);
  }

  return (*(v4 + 16))(a1, v1, v3);
}

uint64_t sub_1006C1EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10074A304();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1007493D4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1006C1FA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10074A304();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1007493D4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for FlowPresentationHints()
{
  result = qword_100945B30;
  if (!qword_100945B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006C20EC()
{
  result = sub_10074A304();
  if (v1 <= 0x3F)
  {
    result = sub_1007493D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006C2174()
{
  sub_10074A304();
  sub_1006C2330(&qword_100925248, &type metadata accessor for FlowPresentationContext);
  sub_100753274();
  sub_100753274();
  if (v6 == v4 && v7 == v5)
  {
  }

  else
  {
    v1 = sub_100754754();

    v2 = 0;
    if ((v1 & 1) == 0)
    {
      return v2 & 1;
    }
  }

  type metadata accessor for FlowPresentationHints();
  sub_1007493D4();
  sub_1006C2330(&qword_100945B68, &type metadata accessor for FlowAnimationBehavior);
  sub_100753274();
  sub_100753274();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_100754754();
  }

  return v2 & 1;
}

uint64_t sub_1006C2330(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1006C2378(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for ReviewSummaryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ReviewSummaryCollectionViewCell();
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v14 = [v12 contentView];
  [v14 addSubview:*&v12[OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView]];

  return v12;
}

id sub_1006C2740()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewSummaryCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ReviewSummaryCollectionViewCell()
{
  result = qword_100945B98;
  if (!qword_100945B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}