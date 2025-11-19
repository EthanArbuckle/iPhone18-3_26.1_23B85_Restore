void sub_98CBEC()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*(&dword_10 + (*v0 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_ABB060())
  {
    if (sub_ABB060())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
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
      sub_ABAE20();
      if (!v2)
      {
LABEL_6:
        v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_ABB060();
LABEL_13:
      if (v3)
      {
        sub_994A24(0, 1, sub_994924);
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

void sub_98CCD8(void *a1, char a2, double a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (v8[657] == 1 && (v9 = [v4 traitCollection], v10 = objc_msgSend(v9, "accessibilityContrast"), v9, v10 != &dword_0 + 1) || a3 <= 0.0)
  {
    v11 = 4.0;
    if (a3 <= 4.0)
    {
      v11 = a3;
    }

    sub_96C6CC(a2 & 1, v11);
    swift_beginAccess();
    if (a3 == 0.0)
    {
      v12 = sub_938B4C(a1);
    }

    else
    {
      sub_9366DC(&v13, a1);
      v12 = v13;
    }

    swift_endAccess();
  }
}

uint64_t sub_98CE1C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_ABAC10();
    type metadata accessor for SyncedLyricsLineView();
    sub_999718(&unk_E23D80, type metadata accessor for SyncedLyricsLineView);
    sub_AB9BC0();
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
    v18 = sub_ABAC90();
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

    sub_96C6CC(1, 0.0);
    swift_beginAccess();
    v12 = sub_938B4C(v17);
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
  sub_2BB88();
  v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  result = swift_beginAccess();
  v1 = *(v1 + v21);
  if (!(v1 >> 62))
  {
    v23 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v23)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_33:
  result = sub_ABB060();
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
        v25 = sub_ABAE20();
      }

      else
      {
        v25 = *(v1 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
      v25[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 1;
      v29 = sub_96B4C4(v41);
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

void sub_98D228(void *a1, char a2, void *a3, int a4, char a5, double a6, double a7, double a8)
{
  v9 = v8;
  LODWORD(v10) = a4;
  if (*(v8 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator))
  {
    sub_991288();
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
  v34 = sub_98ADA8(a1, v254.origin.x, v254.origin.y, v254.size.width, v254.size.height);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  v37 = (*(v36 + 16))(v35, v36);
  v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v39 = *(v38 + v9);
  if ((v39 & 0xC000000000000001) != 0)
  {

    v226 = sub_ABAE20();

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

    if (v37 >= *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)))
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
  v45 = sub_98B858(v43, v44);
LABEL_19:
  v238 = v45;
  v47 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  v48 = (*(*(v46 + 8) + 16))(v47);
  v237 = (v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
  swift_beginAccess();
  v38 = &unk_E23000;
  v239 = v9;
  v240 = v34;
  if ((v40 & 1) == 0)
  {
    a7 = v48 - v237[23];
    [v238 settlingDuration];
    if (a7 < v49 + a8)
    {
      if (qword_E21D48 == -1)
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

  sub_E8BA0(a1, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
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

    v71 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
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
      v75 = sub_ABB060();
    }

    else
    {
      v75 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
    }

    v10 = _swiftEmptyArrayStorage;
    if (v75)
    {
      aBlock = _swiftEmptyArrayStorage;
      v70 = sub_9276E0(0, v75 & ~(v75 >> 63), 0);
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
          v78 = sub_ABAE20();
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
          sub_9276E0((v85 > 1), v86 + 1, 1);
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
      v88 = sub_ABB060();
    }

    else
    {
      v88 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
    }

    v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
    a3 = (&dword_0 + 1);
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
      sub_AB9730();
      if (*(&dword_10 + (*(v38 + v9) & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (*(v38 + v9) & 0xFFFFFFFFFFFFFF8)) >> 1)
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
        v122 = sub_ABAE20();
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
      sub_13C80(0, &qword_E23A40);
      v125 = sub_ABA790();
      sub_985B5C(v34, v125 & 1, &v249);
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
          v71 = sub_ABB060();
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
            v72 = sub_ABB060();
          }

          else
          {
            v72 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
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
              v90 = sub_ABAE20();
            }

            else
            {
              v90 = *(v34 + 8 * v89 + 32);
            }

            v91 = v90;
            v10 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v238 timingParameters:a7];
            a3 = a1;
            sub_E8BA0(a1, v248);
            v92 = swift_allocObject();
            *(v92 + 16) = v91;
            sub_70DF8(v248, v92 + 24);
            *(v92 + 64) = v9;
            *(v92 + 72) = v29;
            v246 = sub_999034;
            v247 = v92;
            aBlock = _NSConcreteStackBlock;
            v243 = 1107296256;
            v244 = sub_1B5EB4;
            v245 = &block_descriptor_184_0;
            v93 = _Block_copy(&aBlock);
            v94 = v91;
            v95 = v9;

            [v10 addAnimations:v93];
            _Block_release(v93);
            v96 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            sub_E8BA0(&v94[v96], &aBlock);
            v97 = v245;
            v98 = v246;
            __swift_project_boxed_opaque_existential_1(&aBlock, v245);
            v99 = (*(v98 + 2))(v97, v98);
            v101 = a1[3];
            v100 = a1[4];
            __swift_project_boxed_opaque_existential_1(a3, a3[3]);
            v102 = (*(v100 + 16))(v101, v100);
            __swift_destroy_boxed_opaque_existential_0(&aBlock);
            if (v99 == v102)
            {
              v103 = v10;
              sub_98B390(a1, v10, 1, 0);

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
                  v246 = sub_9990F0;
                  v247 = v107;
                  aBlock = _NSConcreteStackBlock;
                  v243 = 1107296256;
                  v244 = sub_1B5EB4;
                  v245 = &block_descriptor_196_1;
                  v108 = _Block_copy(&aBlock);
                  v109 = v94;
                  v110 = v95;
                  v111 = v104;

                  [v103 addAnimations:v108];
                  _Block_release(v108);
                  v112 = swift_allocObject();
                  *(v112 + 16) = v106;
                  *(v112 + 24) = a8;
                  v246 = sub_999134;
                  v247 = v112;
                  aBlock = _NSConcreteStackBlock;
                  v243 = 1107296256;
                  v244 = sub_624AE8;
                  v245 = &block_descriptor_202_2;
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
              sub_E8BA0(a1, v248);
              v114 = swift_allocObject();
              *(v114 + 16) = v240;
              *(v114 + 24) = v29;
              *(v114 + 32) = v94;
              *(v114 + 40) = v95;
              *(v114 + 48) = v33;
              *(v114 + 56) = v21;
              sub_70DF8(v248, v114 + 64);
              v246 = sub_999098;
              v247 = v114;
              aBlock = _NSConcreteStackBlock;
              v243 = 1107296256;
              v244 = sub_624AE8;
              v245 = &block_descriptor_190_0;
              v115 = _Block_copy(&aBlock);
              v116 = v94;
              v117 = v95;

              [v10 addCompletion:v115];
              _Block_release(v115);
            }

            v9 = v239;
            swift_beginAccess();
            v118 = v10;
            sub_AB9730();
            if (*(&dword_10 + (*(v38 + v9) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v38 + v9) & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_AB97A0();
            }

            sub_AB97F0();
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
        v50 = sub_AB4BC0();
        __swift_project_value_buffer(v50, qword_E23890);
        v51 = sub_AB4BA0();
        v47 = sub_AB9F50();
        if (os_log_type_enabled(v51, v47))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          aBlock = v53;
          *v52 = 136315138;
          v34 = v240;
          *(v52 + 4) = sub_927078(0x100000000000003ELL, 0x8000000000B7B440, &aBlock);
          _os_log_impl(&dword_0, v51, v47, "%s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v53);
        }

        a7 = a7 - a8;
        [v238 setImplicitDuration:0];
        *(v9 + v38[323]) = 1;
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
        sub_E8BA0(&v56[v59], &aBlock);
        v60 = v245;
        v9 = v246;
        __swift_project_boxed_opaque_existential_1(&aBlock, v245);
        v61 = *(v9 + 2);
        v62 = v56;
        v34 = v57;
        v63 = v61(v60, v9);
        v64 = v63 + 1;
        if (!__OFADD__(v63, 1))
        {
          __swift_destroy_boxed_opaque_existential_0(&aBlock);
          v65 = a1[3];
          v66 = a1[4];
          __swift_project_boxed_opaque_existential_1(a1, v65);
          v67 = (*(v66 + 16))(v65, v66);
          v68 = v64 == v67;
          v9 = v239;
          if (v64 == v67)
          {
            v69 = *(v239 + v55);
            *(v239 + v55) = 0;

            [v62 frame];
            *(v224 + 24) = *(v224 + 24) - (CGRectGetHeight(v255) + v237[14]);
            sub_9620CC();
          }

          v34 = v240;
          a3 = v213;
          LODWORD(v10) = v211;
          goto LABEL_35;
        }

        __break(1u);
LABEL_175:
        sub_AB97A0();
        v38 = v225;
LABEL_125:
        sub_AB97F0();
        swift_endAccess();
        v174 = swift_allocObject();
        *(v174 + 16) = v9;
        v246 = sub_999EEC;
        v247 = v174;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = sub_1B5EB4;
        v245 = &block_descriptor_166;
        v175 = _Block_copy(&aBlock);
        v176 = v9;

        [v47 addAnimations:v175];
        _Block_release(v175);
        [v47 startAnimation];
        v70 = sub_98FE2C(v226, v34);
        if (v177)
        {
          goto LABEL_180;
        }

        v178 = *(v38 + v9);
        if (!(v178 >> 62))
        {
          if (v70 < *(&dword_10 + (v178 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_128;
          }

LABEL_180:
          sub_98B390(a1, 0, 1, 1);

LABEL_181:

          goto LABEL_182;
        }

LABEL_179:
        if (v70 >= sub_ABB060())
        {
          goto LABEL_180;
        }

LABEL_128:
        v179 = v47;
        sub_98B390(a1, v47, 1, 1);

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
        __swift_project_boxed_opaque_existential_1(a1, v131);
        v133 = (*(v132 + 16))(v131, v132);
        v134 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        sub_E8BA0(v34 + v134, &aBlock);
        v135 = v123;
        v136 = v245;
        v137 = v246;
        __swift_project_boxed_opaque_existential_1(&aBlock, v245);
        v138 = *(v137 + 2);
        v139 = v137;
        v123 = v135;
        LOBYTE(v135) = v138(v136, v139) < v133;
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
        v231 |= v135;
        v130 = *&v10[v236];
      }

      swift_beginAccess();
      if (v130 == *(v124 + 40) || (v140 = a1[3], v141 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v140), v142 = (*(v141 + 16))(v140, v141), v143 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line, swift_beginAccess(), sub_E8BA0(v34 + v143, &aBlock), v144 = v123, v145 = v245, v146 = v246, __swift_project_boxed_opaque_existential_1(&aBlock, v245), v147 = *(v146 + 2), v148 = v146, v123 = v144, v149 = v147(v145, v148), __swift_destroy_boxed_opaque_existential_0(&aBlock), v149 >= v142))
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
      sub_E8BA0(v34 + v151, &aBlock);
      v152 = v245;
      v153 = v246;
      __swift_project_boxed_opaque_existential_1(&aBlock, v245);
      v154 = (*(v153 + 2))(v152, v153);
      v155 = a1[3];
      v156 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v155);
      v157 = (*(v156 + 16))(v155, v156);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v231 = (v154 != v157) & v150;
      if (v154 == v157)
      {
        v123 = v144;
        if (v150)
        {
          sub_991288();
          swift_beginAccess();
          v199 = *(v124 + 16);
          v200 = v29 + *(v124 + 24);
          *(v124 + 24) = v200;
          sub_98B204(v199, v200, *(v124 + 32), *(v124 + 40));
          v202 = v201;
          if (!v234)
          {
LABEL_156:

            sub_98D228(a1, v216 & 1, v214, v212 & 1, 1, 0.0, v202, a8);

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
                  v205 = sub_ABAE20();
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

        UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(2, sub_998E2C, v161);
      }

      v38 = v225;
      sub_E8BA0(a1, v248);
      v164 = swift_allocObject();
      *(v164 + 16) = v9;
      *(v164 + 24) = v34;
      sub_70DF8(v248, v164 + 32);
      v246 = sub_998E84;
      v247 = v164;
      aBlock = _NSConcreteStackBlock;
      v243 = 1107296256;
      v244 = sub_1B5EB4;
      v245 = &block_descriptor_154_0;
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
        sub_E8BA0(a1, v248);
        v167 = swift_allocObject();
        *(v167 + 16) = v240;
        *(v167 + 24) = v29;
        *(v167 + 32) = v165;
        *(v167 + 40) = v217;
        *(v167 + 48) = v228;
        *(v167 + 56) = v224;
        sub_70DF8(v248, v167 + 64);
        v246 = sub_998EE8;
        v247 = v167;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = sub_624AE8;
        v245 = &block_descriptor_160_1;
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
      sub_AB9730();
      if (*(&dword_10 + (*(v38 + v9) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v38 + v9) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
        v38 = v225;
      }

      sub_AB97F0();
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
    v70 = sub_ABB060();
    v73 = v70;
    if (!v70)
    {
      goto LABEL_182;
    }
  }

  else
  {
    v73 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
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
    v70 = sub_ABB060();
  }

  else
  {
    v70 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
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
      v181 = sub_ABAE20();
    }

    else
    {
      v181 = *(v34 + 8 * v180 + 32);
    }

    v182 = v181;
    v183 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v238 timingParameters:a7];
    sub_E8BA0(a1, v248);
    v184 = swift_allocObject();
    *(v184 + 16) = v182;
    sub_70DF8(v248, v184 + 24);
    *(v184 + 64) = v29;
    *(v184 + 72) = v9;
    v246 = sub_998F80;
    v247 = v184;
    aBlock = _NSConcreteStackBlock;
    v243 = 1107296256;
    v244 = sub_1B5EB4;
    v245 = &block_descriptor_172_0;
    v185 = _Block_copy(&aBlock);
    v186 = v9;
    v9 = v182;

    [v183 addAnimations:v185];
    _Block_release(v185);
    v187 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_E8BA0(v9 + v187, &aBlock);
    v188 = v245;
    v189 = v246;
    __swift_project_boxed_opaque_existential_1(&aBlock, v245);
    v190 = (*(v189 + 2))(v188, v189);
    v191 = a1[3];
    v192 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v191);
    v193 = (*(v192 + 16))(v191, v192);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    if (v190 == v193)
    {
      v194 = v183;
      sub_98B390(a1, v183, 1, 1);
    }

    v34 = v240;
    if (v235 == v180)
    {
      sub_E8BA0(a1, v248);
      v195 = swift_allocObject();
      *(v195 + 16) = v240;
      *(v195 + 24) = v186;
      *(v195 + 32) = a8;
      *(v195 + 40) = v33;
      sub_70DF8(v248, v195 + 48);
      v246 = sub_998FDC;
      v247 = v195;
      aBlock = _NSConcreteStackBlock;
      v243 = 1107296256;
      v244 = sub_624AE8;
      v245 = &block_descriptor_178;
      v196 = _Block_copy(&aBlock);
      v197 = v186;

      [v183 addCompletion:v196];
      _Block_release(v196);
    }

    swift_beginAccess();
    v10 = v183;
    sub_AB9730();
    if (*(&dword_10 + (*(v38 + v239) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v38 + v239) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    a3 = (v180 + 0x8000000000000000);
    sub_AB97F0();
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

  sub_98BAA0(v34);
}

void sub_98F008(uint64_t a1, CGFloat *a2, uint64_t a3)
{
  swift_beginAccess();
  UIView.untransformedFrame.setter(a2[2], a2[3], a2[4], a2[5]);
  v6 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_15F84(v6 + v7, v37, &qword_E21F50);
    v8 = v38;
    if (v38)
    {
      v9 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      v10 = *(v8 - 8);
      v11 = __chkstk_darwin();
      v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v10 + 16))(v13, v11);
      v14 = v6;
      sub_12E1C(v37, &qword_E21F50);
      v15 = (*(v9 + 16))(v8, v9);
      (*(v10 + 8))(v13, v8);
    }

    else
    {
      v16 = v6;
      sub_12E1C(v37, &qword_E21F50);
      v15 = 0;
    }

    v17 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_E8BA0(a1 + v17, v37);
    v18 = v38;
    v19 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v20 = (*(v19 + 16))(v18, v19);
    if (v8)
    {
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0(v37);
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

      __swift_destroy_boxed_opaque_existential_0(v37);
    }
  }

  v23 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel);
  if (v23)
  {
    v24 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_E8BA0(a1 + v24, v37);
    v25 = v38;
    v26 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v27 = *(v26 + 16);
    v28 = v23;
    v29 = v27(v25, v26);
    v30 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v31 = *(a3 + v30);
    if (v31 >> 62)
    {
      v35 = sub_ABB060();
      v33 = v35 - 1;
      if (!__OFSUB__(v35, 1))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v32 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
      v33 = v32 - 1;
      if (!__OFSUB__(v32, 1))
      {
LABEL_13:
        __swift_destroy_boxed_opaque_existential_0(v37);
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

void sub_98F3B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if (*(v5 + 658) == 1)
  {
    v6 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_E8BA0(a2 + v6, v15);
    v7 = v16;
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = (*(v8 + 16))(v7, v8);
    v10 = a3[3];
    v11 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v10);
    v12 = (*(v11 + 16))(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(v15);
    if (v9 < v12)
    {
      [a2 setAlpha:0.0];
      swift_beginAccess();
      sub_9366DC(&v14, a2);
      v13 = v14;
      swift_endAccess();
    }
  }
}

void sub_98F524(double a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (!(a3 >> 62))
  {
    v14 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (v14)
    {
      goto LABEL_3;
    }

    goto LABEL_19;
  }

LABEL_18:
  v14 = sub_ABB060();
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

    v36 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
    if (v36 < v34)
    {
      goto LABEL_64;
    }

LABEL_23:
    v8 = *(v68 + v32);
    v32 = v8 >> 62;
    if (v8 >> 62)
    {
      while (sub_ABB060() < v34)
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
        v43 = sub_AB4BC0();
        __swift_project_value_buffer(v43, qword_E23890);

        v44 = sub_AB4BA0();
        v45 = sub_AB9F50();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = v14;
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v73 = v48;
          *v47 = 136315138;
          v10 = sub_927078(v10, v9, &v73);

          *(v47 + 4) = v10;
          _os_log_impl(&dword_0, v44, v45, "%s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
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
            sub_9879A4(v54);

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
        sub_9947A8(sub_999178);
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
        __swift_project_boxed_opaque_existential_1(v33, v59);
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

        else if (v8 < *(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)))
        {
          v61 = *(v60 + 8 * v8 + 32);
          goto LABEL_56;
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v36 = sub_ABB060();
        if (v36 >= v34)
        {
          goto LABEL_23;
        }

LABEL_64:
        __break(1u);
      }
    }

    else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) < v34)
    {
      goto LABEL_66;
    }

    if (v34 < 0)
    {
      goto LABEL_67;
    }

    if (v32)
    {
      v37 = sub_ABB060();
    }

    else
    {
      v37 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
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
        v14 = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
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
        sub_ABAE00(v38);
        v38 = v39;
      }

      while (v36 != v39);
      if (!v32)
      {
        goto LABEL_36;
      }
    }

    sub_ABB070();
    v14 = v40;
    v34 = v41;
    v36 = v42 >> 1;
LABEL_39:
    swift_unknownObjectRetain();

    v73 = 0;
    v74 = 0xE000000000000000;
    sub_ABAD90(52);
    v75._object = 0x8000000000B7B500;
    v75._countAndFlagsBits = 0xD00000000000002CLL;
    sub_AB94A0(v75);
    if (!__OFSUB__(v36, v34))
    {
      v72 = v36 - v34;
      v76._countAndFlagsBits = sub_ABB330();
      sub_AB94A0(v76);

      v77._countAndFlagsBits = 0x73656E696C20;
      v77._object = 0xE600000000000000;
      sub_AB94A0(v77);
      v10 = v73;
      v9 = v74;
      if (qword_E21D48 != -1)
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
        v15 = sub_ABAE20();
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
        sub_E8BA0(v10 + v21, v69);
        v22 = v70;
        v23 = a4;
        v24 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v25 = *(v24 + 16);
        v26 = v20;
        v27 = v24;
        a4 = v23;
        v8 = v25(v22, v27);
        v28 = *(v23 + v67);
        if (v28 >> 62)
        {
          v31 = sub_ABB060();
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
          v29 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
          v30 = v29 - 1;
          if (__OFSUB__(v29, 1))
          {
            goto LABEL_17;
          }
        }

        __swift_destroy_boxed_opaque_existential_0(v69);
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

  v61 = sub_ABAE20();

LABEL_56:
  sub_990A2C(v14, v61);
}

uint64_t sub_98FD28()
{
  sub_ABAD90(56);
  v1._object = 0x8000000000B7B530;
  v1._countAndFlagsBits = 0xD00000000000002FLL;
  sub_AB94A0(v1);
  swift_beginAccess();
  _s3__C7CGPointVMa_4(0);
  sub_ABAF70();
  v2._countAndFlagsBits = 0x20726F6620;
  v2._object = 0xE500000000000000;
  sub_AB94A0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
  sub_ABAF70();
  return 0;
}

unint64_t sub_98FE2C(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_ABB060();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
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
      v6 = sub_ABAE20();
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
    v8 = sub_ABA790();

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

id sub_98FF1C(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_E8BA0(a1 + v4, v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (v10 < v7)
  {
    swift_beginAccess();
  }

  [a1 frame];
  return [a1 setFrame:?];
}

id sub_990080(uint64_t a1, char *a2)
{
  sub_9879A4(a2);
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_E8BA0(&a2[v3], v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 16))(v4, v5);
  result = __swift_destroy_boxed_opaque_existential_0(v8);
  if (!v6)
  {
    [a2 frame];
    return [a2 setFrame:?];
  }

  return result;
}

void sub_990158(double a1, double a2, double a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 >> 62)
  {
    v12 = sub_ABB060();
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8));
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
      v14 = sub_ABAE20();
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
  sub_E8BA0(a6 + v16, v27);
  v17 = v28;
  v18 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v19 = (*(v18 + 16))(v17, v18);
  v20 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v21 = *(a7 + v20);
  if (v21 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)); i >= v19; i = sub_ABB060())
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
    if (v19 == i)
    {
LABEL_13:
      v23 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      [*(a7 + v23) setContentOffset:{a2, a3}];
      __chkstk_darwin();
      sub_9947A8(sub_999160);
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

        v26 = sub_ABAE20();

        goto LABEL_19;
      }

      if (v19 < 0)
      {
        break;
      }

      if (v19 >= *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_23;
      }

      v26 = *(v25 + 8 * v19 + 32);
LABEL_19:
      ++v19;
      sub_9879A4(v26);

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

uint64_t sub_990464()
{
  sub_ABAD90(68);
  v1._object = 0x8000000000B7B480;
  v1._countAndFlagsBits = 0xD00000000000003BLL;
  sub_AB94A0(v1);
  _s3__C7CGPointVMa_4(0);
  sub_ABAF70();
  v2._countAndFlagsBits = 0x20726F6620;
  v2._object = 0xE500000000000000;
  sub_AB94A0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
  sub_ABAF70();
  return 0;
}

id sub_99055C(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_E8BA0(a1 + v4, v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (v7 < v10)
  {
    swift_beginAccess();
  }

  [a1 frame];
  return [a1 setFrame:?];
}

void sub_9906A8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (*(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8)))
  {
    for (i = *(a4 + 32); ; i = sub_ABAE20())
    {
      v9 = i;
      v10 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      sub_E8BA0(v9 + v10, v21);

      v11 = v22;
      v12 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v13 = (*(v12 + 16))(v11, v12);
      v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
      swift_beginAccess();
      v15 = *(a5 + v14);
      if (v15 >> 62)
      {
        v16 = sub_ABB060();
        if (v16 < v13)
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
        if (v16 < v13)
        {
          goto LABEL_20;
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v21);
      if (v13 == v16)
      {
LABEL_7:
        v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
        swift_beginAccess();
        [*(a5 + v17) setContentOffset:{a1, a2}];
        __chkstk_darwin();
        sub_9947A8(sub_99916C);
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

          v20 = sub_ABAE20();

          goto LABEL_13;
        }

        if (v13 < 0)
        {
          break;
        }

        if (v13 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v20 = *(v19 + 8 * v13 + 32);
LABEL_13:
        ++v13;
        sub_9879A4(v20);

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

uint64_t sub_990934()
{
  sub_ABAD90(66);
  v1._object = 0x8000000000B7B4C0;
  v1._countAndFlagsBits = 0xD000000000000039;
  sub_AB94A0(v1);
  _s3__C7CGPointVMa_4(0);
  sub_ABAF70();
  v2._countAndFlagsBits = 0x20726F6620;
  v2._object = 0xE500000000000000;
  sub_AB94A0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
  sub_ABAF70();
  return 0;
}

void sub_990A2C(objc_class *a1, uint64_t a2)
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
  sub_E8BA0(a2 + v20, &v66);
  v65 = sub_98ADA8(&v66, v8, v10, v14, v16);
  __swift_destroy_boxed_opaque_existential_0(&v66);
  v21 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_E8BA0(a1 + v21, &v66);
  v22 = v69;
  v23 = v70;
  __swift_project_boxed_opaque_existential_1(&v66, v69);
  v64 = (*(v23 + 2))(v22, v23);
  sub_E8BA0(a2 + v20, v74);
  v24 = v75;
  v25 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v63 = (*(v25 + 16))(v24, v25);
  __swift_destroy_boxed_opaque_existential_0(v74);
  __swift_destroy_boxed_opaque_existential_0(&v66);
  v57 = v21;
  sub_E8BA0(a1 + v21, &v66);
  v26 = v69;
  v27 = v70;
  __swift_project_boxed_opaque_existential_1(&v66, v69);
  v28 = (*(v27 + 16))(v26, v27);
  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v30 = *&v3[v29];
  v58 = v6;
  if (v30 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)); i >= v28; i = sub_ABB060())
  {
    v56 = a1;
    __swift_destroy_boxed_opaque_existential_0(&v66);
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
        sub_ABAD90(67);
        v72 = v66;
        v73 = v67;
        v77._object = 0x8000000000B7B400;
        v77._countAndFlagsBits = 0xD00000000000003ALL;
        sub_AB94A0(v77);
        [*&v3[v32] contentOffset];
        v66 = v35;
        v67 = v36;
        _s3__C7CGPointVMa_4(0);
        sub_ABAF70();
        v78._countAndFlagsBits = 0x20726F6620;
        v78._object = 0xE500000000000000;
        sub_AB94A0(v78);
        sub_E8BA0(v56 + v57, &v66);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
        sub_ABAF70();
        __swift_destroy_boxed_opaque_existential_0(&v66);
        v27 = v72;
        v26 = v73;
        if (qword_E21D48 == -1)
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

        v45 = sub_ABAE20();

        goto LABEL_20;
      }

      if (v28 < 0)
      {
        break;
      }

      if (v28 >= *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_31;
      }

      v45 = *(v44 + 8 * v28 + 32);
LABEL_20:
      v66 = v45;
      __chkstk_darwin();
      v55[2] = &v66;
      if ((sub_911008(sub_998D30, v55, v65) & 1) != 0 && v63 < v64)
      {
        v46 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:*(v27 + 664) stiffness:*(v27 + 672) damping:*(v27 + 680) initialVelocity:{0.0, 0.0}];
        sub_13C80(0, &qword_E23940);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v46).super.isa;
        v48 = swift_allocObject();
        *(v48 + 16) = v3;
        *(v48 + 24) = v45;
        v70 = sub_998D8C;
        v71 = v48;
        v66 = _NSConcreteStackBlock;
        v67 = 1107296256;
        v68 = sub_1B5EB4;
        v69 = &block_descriptor_136_1;
        v49 = _Block_copy(&v66);
        v50 = v3;
        v51 = v45;

        [(objc_class *)isa addAnimations:v49];
        _Block_release(v49);
        v52 = v62;
        swift_beginAccess();
        a1 = isa;
        sub_AB9730();
        v53 = *&v3[v52] & 0xFFFFFFFFFFFFFF8;
        v29 = *(&dword_10 + v53);
        if (v29 >= *(v53 + 24) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
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
        sub_9879A4(v45);
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
  v37 = sub_AB4BC0();
  __swift_project_value_buffer(v37, qword_E23890);

  v38 = sub_AB4BA0();
  v39 = sub_AB9F50();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v66 = v41;
    *v40 = 136315138;
    v42 = sub_927078(v27, v26, &v66);

    *(v40 + 4) = v42;
    _os_log_impl(&dword_0, v38, v39, "%s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
  }
}

void sub_991288()
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
    sub_AB9730();
    if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v10 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();

    v2 = v10;
    if (!(v10 >> 62))
    {
LABEL_5:
      v6 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
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

  v6 = sub_ABB060();
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
        v8 = sub_ABAE20();
      }

      else
      {
        v8 = *(v2 + 8 * i + 32);
      }

      v9 = v8;
      if ([v8 state] == &dword_0 + 1)
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
  v6 = sub_AB7C10();
  v58 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB7C50();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin();
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB7C80();
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

  if (v19 == &dword_0 + 2)
  {
    v54 = v8;
    v55 = v6;
    v20 = [(objc_class *)in.super.isa nextFocusedItem];
    v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v22 = &selRef_format;
    if (!v20 || (v23 = *&v3[v21], swift_unknownObjectRelease(), v24 = v20 == v23, v22 = &selRef_format, !v24))
    {
      v25 = [(objc_class *)in.super.isa previouslyFocusedItem];
      if (v25)
      {
        v26 = *&v3[v21];
        v27 = v25;
        swift_unknownObjectRelease();
        v24 = v27 == v26;
        v22 = &selRef_format;
        if (v24)
        {
          if ([*&v3[v21] isTracking])
          {
            v28 = [*&v3[v21] panGestureRecognizer];
            [v28 setEnabled:0];

            sub_13C80(0, &qword_E239C0);
            v52 = sub_ABA150();
            sub_AB7C70();
            sub_AB7CE0();
            v29 = *(v59 + 8);
            v59 += 8;
            v53 = v29;
            v29(v14, v12);
            v30 = swift_allocObject();
            *(v30 + 16) = v3;
            aBlock[4] = sub_99463C;
            aBlock[5] = v30;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1B5EB4;
            aBlock[3] = &block_descriptor_254;
            v51 = _Block_copy(aBlock);
            v31 = v3;

            sub_AB7C30();
            aBlock[0] = _swiftEmptyArrayStorage;
            v50 = sub_999718(&qword_E239C8, &type metadata accessor for DispatchWorkItemFlags);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E239D0);
            sub_809E0(&qword_E239D8, &qword_E239D0);
            v33 = v54;
            v32 = v55;
            sub_ABABB0();
            v35 = v51;
            v34 = v52;
            sub_ABA110();
            _Block_release(v35);

            v36 = v32;
            v22 = &selRef_format;
            (*(v58 + 8))(v33, v36);
            (*(v56 + 8))(v11, v57);
            v53(v16, v12);
          }
        }
      }
    }

    v37 = [(objc_class *)in.super.isa nextFocusedItem];
    v38 = [in.super.isa v22[313]];
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

              sub_9772D4();
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

void sub_991A80(uint64_t a1)
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
  sub_97A614(0, __src);
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
  v20 = sub_AB3430();
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
    v24 = sub_AB9260();
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
  sub_97A614(0, __src);
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
  v17 = sub_AB3430();
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

id sub_992374(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_9925D4()
{
  sub_ABAD90(35);
  v1._object = 0x8000000000B7B770;
  v1._countAndFlagsBits = 0xD000000000000021;
  sub_AB94A0(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
  sub_ABAF70();
  return 0;
}

uint64_t sub_99267C()
{
  sub_ABAD90(33);
  v1._object = 0x8000000000B7B750;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  sub_AB94A0(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
  sub_ABAF70();
  return 0;
}

void sub_992718(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(a1 + v8) setContentOffset:{a3, a4}];
  sub_ABAD90(65);
  v19 = 0;
  v20 = 0xE000000000000000;
  v21._object = 0x8000000000B7B710;
  v21._countAndFlagsBits = 0xD000000000000038;
  sub_AB94A0(v21);
  *v18 = a3;
  *&v18[1] = a4;
  _s3__C7CGPointVMa_4(0);
  sub_ABAF70();
  v22._countAndFlagsBits = 0x20726F6620;
  v22._object = 0xE500000000000000;
  sub_AB94A0(v22);
  v9 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_E8BA0(a2 + v9, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
  sub_ABAF70();
  __swift_destroy_boxed_opaque_existential_0(v18);
  v11 = v19;
  v10 = v20;
  if (qword_E21D48 != -1)
  {
    swift_once();
  }

  v12 = sub_AB4BC0();
  __swift_project_value_buffer(v12, qword_E23890);

  v13 = sub_AB4BA0();
  v14 = sub_AB9F50();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315138;
    v17 = sub_927078(v11, v10, v18);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_0, v13, v14, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
  }
}

void SyncedLyricsViewController.syncedLyrics(_:select:)(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_9947A8(sub_9967FC);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
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

    else if (v8 < *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
      v8 = *(v10 + 8 * v8 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_24;
  }

  v8 = sub_ABAE20();

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
        sub_13C80(0, &qword_E23940);
        v29 = sub_98B858(0, 1);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v29).super.isa;
        sub_98B390(a2, isa, 0, 1);
        v31 = swift_allocObject();
        *(v31 + 16) = v3;
        v52 = sub_996804;
        v53 = v31;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_1B5EB4;
        v51 = &block_descriptor_25_4;
        v32 = _Block_copy(&aBlock);
        v33 = v3;

        [(objc_class *)isa addAnimations:v32];
        _Block_release(v32);
        v34 = [(objc_class *)isa state]== &dword_0 + 3;
        v33[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = v34;
        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        v52 = sub_996820;
        v53 = v35;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_624AE8;
        v51 = &block_descriptor_31_4;
        v36 = _Block_copy(&aBlock);
        v37 = v33;

        [(objc_class *)isa addCompletion:v36];
        _Block_release(v36);
        [(objc_class *)isa startAnimation];

        v8 = isa;
LABEL_20:

        return;
      }

      if (qword_E21D48 == -1)
      {
LABEL_12:
        v38 = sub_AB4BC0();
        __swift_project_value_buffer(v38, qword_E23890);
        v39 = sub_AB4BA0();
        v40 = sub_AB9F50();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_927078(0xD000000000000056, 0x8000000000B7B020, &aBlock);
          _os_log_impl(&dword_0, v39, v40, "%s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
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

          sub_17654(v43);
          v47 = v45 - v46;
        }

        else
        {
          v47 = 0.0;
        }

        sub_994B10(a2, 0, 1, v47);
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

uint64_t sub_992F4C()
{
  sub_ABAD90(32);
  v1._object = 0x8000000000B7B690;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  sub_AB94A0(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
  sub_ABAF70();
  return 0;
}

unint64_t sub_992FE8()
{
  result = sub_98AB58();
  v1 = result;
  if (result >> 62)
  {
    result = sub_ABB060();
    v2 = result;
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
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
    v3 = sub_ABAE20();
  }

  else
  {
    v3 = *(v1 + 32);
  }

  v4 = v3;
  sub_985B5C(v3, 2, &v23);
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
        v16 = sub_ABAE20();
      }

      else
      {
        v16 = *(v1 + 8 * v15);
      }

      v17 = v16;
      sub_985B5C(v16, 2, &v23);
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

uint64_t sub_993198(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
  swift_beginAccess();
  v4 = *(a2 + v3);
  if (v4 >> 62)
  {
    result = sub_ABB060();
  }

  else
  {
    result = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  }

  *(a2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = result > 0;
  return result;
}

Swift::Bool __swiftcall SyncedLyricsViewController.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer _, UIGestureRecognizer shouldRecognizeSimultaneouslyWith)
{
  v3 = v2;
  v5 = [v3 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == &dword_0 + 2)
  {
    v7 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer];
    if (v7 && (sub_13C80(0, &qword_E23A48), v8 = _.super.isa, v9 = v7, v10 = sub_ABA790(), v9, v8, (v10 & 1) != 0))
    {
      v11 = 0;
    }

    else
    {
      sub_13C80(0, &qword_E23A40);
      v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      v13 = [*&v3[v12] panGestureRecognizer];
      v14 = sub_ABA790();

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

  if (v5 != &dword_0 + 2)
  {
    return 1;
  }

  v6 = *&v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer];
  if (!v6)
  {
    return 1;
  }

  sub_13C80(0, &qword_E23A48);
  v7 = a1.super.isa;
  v8 = v6;
  v9 = sub_ABA790();

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
    sub_987C98();
  }
}

void sub_9936CC()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23A50);
  __chkstk_darwin();
  v4 = &v46 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E98);
  __chkstk_darwin();
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v46 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23930);
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
  sub_15F84(v1 + v16, v10, &qword_E23930);
  v17 = type metadata accessor for Lyrics.Translation(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v10, 1, v17) == 1)
  {
    v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
    swift_beginAccess();
    sub_15F84(v15 + v20, v12, &qword_E23930);
    LODWORD(v20) = v19(v10, 1, v17);

    if (v20 != 1)
    {
      sub_12E1C(v10, &qword_E23930);
    }
  }

  else
  {
    sub_9992A4(v10, v12, type metadata accessor for Lyrics.Translation);
    (*(v18 + 56))(v12, 0, 1, v17);
  }

  if (v19(v12, 1, v17) == 1)
  {
    sub_12E1C(v12, &qword_E23930);
    v21 = 0;
    v26 = 0;
  }

  else
  {
    v27 = &v12[*(v17 + 20)];
    v21 = *v27;
    v26 = *(v27 + 1);

    sub_998674(v12, type metadata accessor for Lyrics.Translation);
  }

  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  swift_beginAccess();
  sub_15F84(v1 + v28, v6, &qword_E21E98);
  v29 = type metadata accessor for Lyrics.Transliteration(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (v31(v6, 1, v29) == 1)
  {
    v32 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
    swift_beginAccess();
    sub_15F84(v15 + v32, v8, &qword_E21E98);
    if (v31(v6, 1, v29) != 1)
    {
      sub_12E1C(v6, &qword_E21E98);
    }
  }

  else
  {
    sub_9992A4(v6, v8, type metadata accessor for Lyrics.Transliteration);
    (*(v30 + 56))(v8, 0, 1, v29);
  }

  v33 = v31(v8, 1, v29);
  v34 = v47;
  if (v33 == 1)
  {
    sub_12E1C(v8, &qword_E21E98);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v35 = &v8[*(v29 + 20)];
    v22 = *v35;
    v23 = *(v35 + 1);

    sub_998674(v8, type metadata accessor for Lyrics.Transliteration);
  }

  a1 = v48;
  v36 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v37 = *(v1 + v36);
  if (!(v37 >> 62))
  {
    result = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_19;
    }

LABEL_27:

    v45 = type metadata accessor for Lyrics.TextLine(0);
    (*(*(v45 - 8) + 56))(v34, 1, 1, v45);
    goto LABEL_28;
  }

  result = sub_ABB060();
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

    v39 = sub_ABAE20();

LABEL_24:

    v40 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_E8BA0(v39 + v40, v49);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
    v41 = type metadata accessor for Lyrics.TextLine(0);
    v42 = swift_dynamicCast();
    v43 = *(v41 - 8);
    (*(v43 + 56))(v34, v42 ^ 1u, 1, v41);
    if ((*(v43 + 48))(v34, 1, v41) != 1)
    {
      v44 = (v34 + *(v41 + 52));
      v24 = *v44;
      v25 = v44[1];

      result = sub_998674(v34, type metadata accessor for Lyrics.TextLine);
      goto LABEL_29;
    }

LABEL_28:
    result = sub_12E1C(v34, &qword_E23A50);
    v24 = 0;
    v25 = 0;
    goto LABEL_29;
  }

  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v38 < *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
  {
    v39 = *(v37 + 8 * v38 + 32);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_993FB4(void *a1, void *a2)
{
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v27 = *(v8 - 8);
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  v14 = [a2 preferredContentSizeCategory];
  v15 = sub_AB92A0();
  v17 = v16;
  if (v15 == sub_AB92A0() && v17 == v18)
  {
  }

  else
  {
    v26 = v5;
    v20 = sub_ABB3C0();

    if ((v20 & 1) == 0)
    {
      sub_13C80(0, &qword_E239C0);
      v22 = sub_ABA150();
      v23 = swift_allocObject();
      *(v23 + 16) = a1;
      aBlock[4] = sub_9998D8;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_344;
      v24 = _Block_copy(aBlock);
      v25 = a1;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_999718(&qword_E239C8, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E239D0);
      sub_809E0(&qword_E239D8, &qword_E239D0);
      sub_ABABB0();
      sub_ABA160();
      _Block_release(v24);

      (*(v26 + 8))(v7, v4);
      return (*(v27 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t sub_9943BC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_9943F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_97F7EC(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_5Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_994500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_980CA8(a1, v4, v5, v7, v6);
}

unint64_t sub_9945C0()
{
  result = qword_E23990;
  if (!qword_E23990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E23990);
  }

  return result;
}

uint64_t block_copy_helper_254(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_99465C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_13C80(0, &qword_E23940);
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
  result = sub_ABB060();
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
    result = sub_ABB060();
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

void sub_9947A8(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  if (qword_E21D48 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, qword_E23890);

  oslog = sub_AB4BA0();
  v5 = sub_AB9F50();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    v8 = sub_927078(v1, v3, &v10);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_0, oslog, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
  }
}

uint64_t sub_994924(uint64_t a1, uint64_t a2, uint64_t a3)
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
  result = sub_ABB060();
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
    result = sub_ABB060();
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

uint64_t sub_994A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
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
      result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_ABB060();
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
    v10 = sub_ABB060();
  }

  else
  {
    v10 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_2A1E4(result);

  return v12(v5, v3, 0);
}

void sub_994B10(_BOOL8 a1, void *a2, char a3, CGFloat a4)
{
  v5 = v4;
  LOBYTE(v6) = a3;
  sub_9947A8(sub_999608);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v10);
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

  if (v12 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
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
    a2 = (v14 & 0xFFFFFFFFFFFFFF8);
    if (v14 >> 62)
    {
LABEL_45:
      v38 = sub_ABB060();
    }

    else
    {
      v38 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
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
        v40 = sub_ABAE20();
      }

      else
      {
        if (v39 >= a2[2])
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

    v15 = sub_ABAE20();
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
    sub_13C80(0, &qword_E23940);
    v80 = sub_98B858(a2, v6 & 1);
    isa = UIViewPropertyAnimator.init(springTimingParameters:)(v80).super.isa;
    sub_98B390(a1, isa, 1, 1);
    v82 = swift_allocObject();
    *(v82 + 16) = v5;
    v102 = sub_999F50;
    v103 = v82;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_1B5EB4;
    v101 = &block_descriptor_269_0;
    v83 = _Block_copy(&aBlock);
    v84 = v5;

    [(objc_class *)isa addAnimations:v83];
    _Block_release(v83);
    v85 = [(objc_class *)isa state]== &dword_0 + 3;
    v84[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = v85;
    v86 = swift_allocObject();
    *(v86 + 16) = v84;
    v102 = sub_999FA4;
    v103 = v86;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_624AE8;
    v101 = &block_descriptor_275_1;
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
      sub_991288();
    }

    v64 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_E8BA0(v15 + v64, &aBlock);
    v65 = v101;
    v66 = v102;
    __swift_project_boxed_opaque_existential_1(&aBlock, v101);
    v67 = (*(v66 + 2))(v65, v66);
    v68 = *&v5[v95];
    if ((v68 & 0xC000000000000001) != 0)
    {

      v89 = sub_ABAE20();

      v69 = v89;
      goto LABEL_38;
    }

    if ((v67 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v67 < *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)))
    {
      v69 = *(v68 + 8 * v67 + 32);
LABEL_38:
      v70 = v69;
      v71 = UIView.untransformedFrame.getter();
      v73 = v72;
      v75 = v74;
      v77 = v76;

      sub_98B204(v71, v73, v75, v77);
      v79 = v78;

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      sub_E8BA0(v15 + v64, &aBlock);
      sub_98D228(&aBlock, v5[v60], a2, v6 & 1, 0, 0.0, v79, v94);

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
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

void sub_9952FC(void *a1, uint64_t a2, double a3)
{
  v5 = v3;
  v143 = a1;
  sub_9947A8(sub_999558);
  v9 = a1[3];
  v10 = a1[4];
  v141 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
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

  if (v11 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
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
    sub_E8BA0(v4 + v14, &v144);
    v13 = v147;
    v15 = v148;
    __swift_project_boxed_opaque_existential_1(&v144, v147);
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

    else if (v16 < *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      v18 = *(v17 + 8 * v16 + 32);
      goto LABEL_9;
    }

    __break(1u);
LABEL_99:
    swift_once();
LABEL_43:
    v80 = sub_AB4BC0();
    __swift_project_value_buffer(v80, qword_E23890);

    v81 = sub_AB4BA0();
    v82 = sub_AB9F50();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v144 = v84;
      *v83 = 136315138;
      v85 = sub_927078(a2, v13, &v144);

      *(v83 + 4) = v85;
      _os_log_impl(&dword_0, v81, v82, "%s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
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

      sub_ABAC10();
      type metadata accessor for SyncedLyricsLineView();
      sub_999718(&unk_E23D80, type metadata accessor for SyncedLyricsLineView);
      sub_AB9BC0();
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
        v98 = sub_ABAC90();
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
        v99 = sub_938B4C(v97);
        swift_endAccess();

        v12 = v95;
        v5 = v96;
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }
      }

LABEL_63:
      sub_2BB88();
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
        sub_E8BA0(v109 + v139, v151);
        v64 = sub_98ADA8(v151, v102, v104, v108, v110);
        __swift_destroy_boxed_opaque_existential_0(v151);

        sub_98BAA0(v114);

        v115 = &v100[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
        swift_beginAccess();
        if (v115[658] != 1)
        {
          goto LABEL_107;
        }

        if (!(v64 >> 62))
        {
          v116 = *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
          if (v116)
          {
            goto LABEL_72;
          }

LABEL_107:

          return;
        }

LABEL_106:
        v116 = sub_ABB060();
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
              v120 = sub_ABAE20();
            }

            else
            {
              v120 = *(v64 + 8 * v117 + 32);
            }

            v121 = v120;
            v122 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            sub_E8BA0(v121 + v122, v151);
            v123 = v152;
            v124 = v153;
            __swift_project_boxed_opaque_existential_1(v151, v152);
            v125 = (*(v124 + 16))(v123, v124);
            v127 = v141[3];
            v126 = v141[4];
            __swift_project_boxed_opaque_existential_1(v141, v127);
            v128 = (*(v126 + 16))(v127, v126);
            __swift_destroy_boxed_opaque_existential_0(v151);
            if (v125 < v128)
            {
              [v121 setAlpha:0.0];
              swift_beginAccess();
              v118 = v121;
              sub_9366DC(v150, v118);
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

    v4 = sub_ABAE20();
  }

LABEL_95:

  v131 = sub_ABAE20();

  v18 = v131;
LABEL_9:
  v19 = v18;
  v20 = UIView.untransformedFrame.getter();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_98B204(v20, v22, v24, v26);
  v28 = v27;

  v142 = v5;
  __swift_destroy_boxed_opaque_existential_0(&v144);
  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v30 = *&v142[v29];
  v144 = v4;
  __chkstk_darwin();
  v132[2] = &v144;
  v5 = v142;

  v31 = sub_911008(sub_999F88, v132, v30);

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
      sub_E8BA0(v141, &v144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
      if (swift_dynamicCast() & 1) == 0 && (a2)
      {

        if (qword_E21D48 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_105;
      }
    }

    sub_E8BA0(v141, &v144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
    if (!swift_dynamicCast())
    {
      goto LABEL_36;
    }

    v63 = v141[3];
    v64 = v141[4];
    __swift_project_boxed_opaque_existential_1(v141, v63);
    v65 = (*(v64 + 16))(v63, v64);
    v66 = *&v12[v5];
    if ((v66 & 0xC000000000000001) == 0)
    {
      if ((v65 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v65 < *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8)))
      {
        v67 = *(v66 + 8 * v65 + 32);
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_103;
    }

    v67 = sub_ABAE20();

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
          sub_962D00(a3);

          v5 = v142;
          goto LABEL_38;
        }

        sub_962438(a3);
        v5 = v142;
      }
    }

LABEL_36:
    if (!(v31 & 1 | ((a2 & 1) == 0)))
    {
      sub_E8BA0(v4 + v139, &v144);
      sub_98B390(&v144, 0, 1, 0);
      __swift_destroy_boxed_opaque_existential_0(&v144);
    }

LABEL_38:
    v74 = v138;
    UIView.untransformedFrame.getter();
    a3 = v75;

    memset(v154, 0, sizeof(v154));
    v155 = 1;
    sub_985B5C(v74, 2, v154);
    if (v76 == a3)
    {
      goto LABEL_42;
    }

    sub_E8BA0(v4 + v139, &v144);
    v77 = v147;
    v64 = v148;
    __swift_project_boxed_opaque_existential_1(&v144, v147);
    v78 = (*(v64 + 16))(v77, v64);
    v63 = v78;
    v79 = *&v12[v5];
    if (!(v79 >> 62))
    {
      a2 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
      if (a2 < v78)
      {
        goto LABEL_104;
      }

      goto LABEL_41;
    }

LABEL_103:
    a2 = sub_ABB060();
    if (a2 < v63)
    {
LABEL_104:
      __break(1u);
LABEL_105:
      swift_once();
LABEL_22:
      v58 = sub_AB4BC0();
      __swift_project_value_buffer(v58, qword_E23890);
      v59 = sub_AB4BA0();
      v60 = sub_AB9F50();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v144 = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_927078(0xD00000000000002BLL, 0x8000000000B7B6E0, &v144);
        _os_log_impl(&dword_0, v59, v60, "%s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
      }

      sub_991288();
      sub_994B10(v141, 0, 1, a3);
      goto LABEL_64;
    }

LABEL_41:
    __swift_destroy_boxed_opaque_existential_0(&v144);
    if (v63 != a2)
    {
      if (v63 < a2)
      {
        while (1)
        {
          v129 = *&v12[v5];
          if ((v129 & 0xC000000000000001) != 0)
          {

            v130 = sub_ABAE20();
          }

          else
          {
            if (v63 < 0)
            {
              goto LABEL_91;
            }

            if (v63 >= *(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_92;
            }

            v130 = *(v129 + 8 * v63 + 32);
          }

          ++v63;
          sub_9879A4(v130);

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
    sub_991288();
    [*(v5 + v137) setContentOffset:{0.0, v28}];
    v144 = 0;
    v145 = 0xE000000000000000;
    sub_ABAD90(41);
    v156._object = 0x8000000000B7B6B0;
    v156._countAndFlagsBits = 0xD000000000000027;
    sub_AB94A0(v156);
    v151[0] = 0;
    *&v151[1] = v28;
    _s3__C7CGPointVMa_4(0);
    sub_ABAF70();
    a2 = v144;
    v13 = v145;
    if (qword_E21D48 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_99;
  }

  sub_991288();
  v33 = swift_allocObject();
  *(v33 + 2) = v5;
  v33[3] = 0.0;
  v33[4] = v28;
  *(v33 + 5) = v4;
  v34 = objc_allocWithZone(UIViewPropertyAnimator);
  v148 = sub_9995F8;
  v149 = v33;
  v144 = _NSConcreteStackBlock;
  v145 = 1107296256;
  v146 = sub_1B5EB4;
  v147 = &block_descriptor_263_1;
  v35 = _Block_copy(&v144);
  v36 = v5;
  v37 = v4;

  v38 = [v34 initWithDuration:3 curve:v35 animations:0.25];
  _Block_release(v35);
  if (a2)
  {
    sub_E8BA0(v4 + v139, &v144);
    v39 = v38;
    sub_98B390(&v144, v38, 1, 1);

    __swift_destroy_boxed_opaque_existential_0(&v144);
  }

  [v38 startAnimation];
}

uint64_t _s7LyricsX06SyncedA14ViewControllerC06syncedA14DesectAllLinesyyAA0bA7ManagerCF_0()
{
  v1 = v0;
  if (qword_E21D48 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, qword_E23890);
  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_927078(0xD000000000000023, 0x8000000000B7B630, v25);
    _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
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
      sub_13C80(0, &qword_E23940);
      v10 = sub_98B858(0, 1);
      v11.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)(v10).super.isa;
      v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
      result = swift_beginAccess();
      v13 = *&v1[v12];
      if (v13 >> 62)
      {
        result = sub_ABB060();
        v14 = result;
        if (result)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
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
              v17 = sub_ABAE20();
            }

            else
            {
              v17 = *(v13 + 8 * i + 32);
            }

            v18 = v17;
            v19 = v11.super.isa;
            sub_96C220(0, v11.super.isa);

            if (v15[657] != 1 || (v20 = [v1 traitCollection], v21 = objc_msgSend(v20, "accessibilityContrast"), v20, v21 == &dword_0 + 1))
            {
            }

            else
            {
              sub_96C6CC(1, 3.0);
              swift_beginAccess();
              sub_9366DC(&v24, v18);
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

void sub_9966C4(void *a1, double a2)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
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

    else if (v7 < *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
    {
      v10 = *(v9 + 8 * v7 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v10 = sub_ABAE20();

LABEL_5:
  v11 = *&v10[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  v12 = v11;

  if (v11)
  {
    _s23InstrumentalContentViewCMa();
    if (swift_dynamicCastClass())
    {
      v13 = v12;
      sub_962D00(a2);
    }
  }
}

void sub_99683C(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23A50);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E8BA0(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if ((v10 & 1) == 0)
  {
    v11(v5, 1, 1, v6);
    sub_12E1C(v5, &qword_E23A50);
    return;
  }

  v11(v5, 0, 1, v6);
  sub_9992A4(v5, v9, type metadata accessor for Lyrics.TextLine);
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

          sub_95313C(v26, &v25);
          sub_957278(v26);
          sub_953198(v26);

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
    sub_998674(v9, type metadata accessor for Lyrics.TextLine);

    return;
  }

LABEL_14:

LABEL_15:
  sub_998674(v9, type metadata accessor for Lyrics.TextLine);
}

void sub_996BD4()
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
      if (!sub_ABB060())
      {
        return;
      }
    }

    else if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {

      v4 = sub_ABAE20();
    }

    else
    {
      if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return;
      }

      v4 = *(v3 + 32);
    }

    v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
    swift_beginAccess();
    sub_15F84(&v0[v5], &aBlock, &qword_E238F8);
    v6 = v38;
    if (v38)
    {
      v7 = v39;
      __swift_project_boxed_opaque_existential_1(&aBlock, v38);
      v8 = *(v6 - 1);
      v9 = __chkstk_darwin();
      v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      sub_12E1C(&aBlock, &qword_E238F8);
      v12 = v0;
      v13 = v7[1](v6, v7);
      v14 = (*(v8 + 8))(v11, v6);
      v15 = v13(v14);

      sub_991288();
      v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
      v16 = v4;
      v17 = UIView.untransformedFrame.getter();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      sub_98B204(v17, v19, v21, v23);
      v25 = v24;
      v26 = objc_opt_self();
      v27 = swift_allocObject();
      *(v27 + 2) = v12;
      v27[3] = 0.0;
      *(v27 + 4) = v25;
      v39 = sub_999464;
      v40 = v27;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_1B5EB4;
      v38 = &block_descriptor_234;
      v28 = _Block_copy(&aBlock);
      v29 = v12;

      v30 = swift_allocObject();
      *(v30 + 2) = v29;
      *(v30 + 3) = v16;
      v30[4] = 0.0;
      *(v30 + 5) = v25;
      v30[6] = v15;
      v39 = sub_99950C;
      v40 = v30;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_1811AC;
      v38 = &block_descriptor_240;
      v31 = _Block_copy(&aBlock);
      v32 = v16;
      v33 = v29;

      [v26 animateWithDuration:v28 animations:v31 completion:0.25];
      _Block_release(v31);
      _Block_release(v28);
    }

    else
    {

      sub_12E1C(&aBlock, &qword_E238F8);
    }
  }
}

void sub_997018()
{
  v3 = v1;
  v4 = sub_98AB58();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_ABB060();
    v7 = &unk_E23000;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v7 = &unk_E23000;
    if (v6)
    {
LABEL_3:
      if (v6 >= 1)
      {
        v8 = 0;
        v9 = v7[278];
        v10 = v5 & 0xC000000000000001;
        v11 = &OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
        v45 = v9;
        v46 = v5;
        while (1)
        {
          if (v10)
          {
            v12 = sub_ABAE20();
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

          v16 = *(v3 + v9);
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
          v8 = v8 + 1;

          if (v6 == v8)
          {
            goto LABEL_36;
          }
        }

        v47 = v14;

        v21 = sub_307CC(v20);
        v22 = v20(v21);
        swift_beginAccess();
        if (*(v16 + 88) == 1)
        {
          v23 = Lyrics.spatialOffset.getter();
          sub_17654(v20);
        }

        else
        {

          sub_17654(v20);
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
            sub_93AB14(1, v24);

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
              sub_93AB14(1, v24);

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
    v35 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v35)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

LABEL_52:
  v35 = sub_ABB060();
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

    v39 = sub_ABAE20();

    goto LABEL_45;
  }

  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v36 < *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {
    v37 = *(v1 + 8 * v36 + 32);
    v38 = v6;
    v39 = v37;
LABEL_45:
    v40 = *(v3 + v2);
    v49 = v6;
    __chkstk_darwin();
    v44[2] = &v49;

    v41 = sub_911008(sub_999F88, v44, v40);

    if ((v41 & 1) == 0)
    {
      v42 = *(v3 + v0);
      *(v3 + v0) = 0;

      sub_990A2C(v6, v39);
      sub_96C0F4();
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

id sub_9974B8(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_0 + 2)
  {
    return &dword_0 + 1;
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
    return (CGRectGetHeight(v21) - *&v1[v8] < v11);
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

    if (v5 == &dword_0 + 2)
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

  sub_98CE1C();
  sub_991288();
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

    sub_ABAC10();
    type metadata accessor for SyncedLyricsLineView();
    sub_999718(&unk_E23D80, type metadata accessor for SyncedLyricsLineView);
    sub_AB9BC0();
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

      v35 = sub_ABAE20();

LABEL_29:
      sub_96CAF4(0, 1);

      __swift_destroy_boxed_opaque_existential_0(aBlock);
LABEL_32:
      v36 = objc_opt_self();
      v37 = swift_allocObject();
      *(v37 + 16) = v1;
      v43 = sub_999524;
      v44 = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      v42 = &block_descriptor_256_0;
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
      v27 = sub_938B4C(v25);
      swift_endAccess();

      v15 = v23;
      v16 = v24;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      v26 = sub_ABAC90();
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
  sub_2BB88();
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
  sub_15F84(v28 + v29, &v45, &qword_E21F50);
  if (!*(&v46 + 1))
  {
LABEL_31:
    sub_12E1C(&v45, &qword_E21F50);
    goto LABEL_32;
  }

  sub_70DF8(&v45, aBlock);
  v30 = v42;
  v31 = v43;
  __swift_project_boxed_opaque_existential_1(aBlock, v42);
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

  else if (v32 < *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
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
    aBlock[4] = sub_99951C;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1546C;
    aBlock[3] = &block_descriptor_250;
    v4 = _Block_copy(aBlock);

    v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:3.0];
    _Block_release(v4);
    v6 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer);
    *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer) = v5;
  }
}

void sub_997D28(unint64_t a1, double a2, double a3)
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

  if (v9 != &dword_0 + 2)
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

  for (i = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)); ; i = sub_ABB060())
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
        v30 = sub_ABAE20();
      }

      else
      {
        if (a1 >= *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
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
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
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
    v33 = sub_ABB060();
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
      v37 = sub_ABAE20();
    }

    else
    {
      v37 = *(v32 + 8 * v34 + 32);
    }

    v38 = v37;
    v39 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_E8BA0(v38 + v39, aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
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
    sub_15F84(v53 + v54, &v93, &qword_E21F50);
    if (*(&v94 + 1))
    {
      sub_70DF8(&v93, aBlock);
      v55 = v90;
      v56 = v91;
      __swift_project_boxed_opaque_existential_1(aBlock, v90);
      v57 = (*(v56 + 2))(v55, v56);
      v58 = *(v83 + v4);
      if ((v58 & 0xC000000000000001) == 0)
      {
        if ((v57 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v57 < *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8)))
        {
          v59 = *(v58 + 8 * v57 + 32);
LABEL_53:
          __swift_destroy_boxed_opaque_existential_0(aBlock);
          goto LABEL_56;
        }

        __break(1u);
LABEL_73:
        __break(1u);
        return;
      }

LABEL_70:

      v59 = sub_ABAE20();

      goto LABEL_53;
    }
  }

  else
  {
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
  }

  sub_12E1C(&v93, &qword_E21F50);
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
  sub_E8BA0(v88 + v65, aBlock);
  v66 = *v27;
  swift_beginAccess();
  sub_1FBB9C(aBlock, v61 + v66, &qword_E21F50);
  swift_endAccess();
  sub_97640C();
  sub_12E1C(aBlock, &qword_E21F50);
  [v61 setAlpha:0.0];
  sub_987C98();
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
    sub_96CAF4(0, 1);
  }

  sub_96CAF4(1, 1);
  v70 = objc_opt_self();
  v71 = swift_allocObject();
  *(v71 + 16) = v61;
  v91 = sub_9553D0;
  v92 = v71;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  v90 = &block_descriptor_246_1;
  v72 = _Block_copy(aBlock);
  v73 = v61;

  [v70 animateWithDuration:v72 animations:0.2];
  _Block_release(v72);
  v74 = v88;
  v75 = UIView.untransformedFrame.getter();
  v77 = v76;
  v79 = v78;
  v81 = v80;

  sub_98B204(v75, v77, v79, v81);
  *v84 = 0;
  v84[1] = v82;
}

uint64_t sub_998674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_9986D8()
{
  result = qword_E23A58;
  if (!qword_E23A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E23A58);
  }

  return result;
}

uint64_t sub_99872C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_998784(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_9987D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_99884C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_99891C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_9989D4()
{
  type metadata accessor for Lyrics.TextLine(319);
  if (v0 <= 0x3F)
  {
    sub_13C80(319, &qword_E229B0);
    if (v1 <= 0x3F)
    {
      _s3__C15NSTextAlignmentOMa_0(319);
      if (v2 <= 0x3F)
      {
        _s3__C6CGRectVMa_3(319);
        if (v3 <= 0x3F)
        {
          _s3__C17CGAffineTransformVMa_1(319);
          if (v4 <= 0x3F)
          {
            sub_932B1C();
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

void sub_998AD8()
{
  sub_999DD8(319, &unk_E23B50, type metadata accessor for Lyrics.Translation);
  if (v0 <= 0x3F)
  {
    sub_999DD8(319, &unk_E22008, type metadata accessor for Lyrics.Transliteration);
    if (v1 <= 0x3F)
    {
      sub_999DD8(319, &qword_E23B60, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_998D4C()
{

  return swift_deallocObject();
}

uint64_t sub_998DE4()
{

  return swift_deallocObject();
}

uint64_t sub_998E3C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_998E90()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_998F00()
{

  return swift_deallocObject();
}

uint64_t sub_998F38()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_998F94()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_998FEC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_999048()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_9990B0()
{

  return swift_deallocObject();
}

uint64_t sub_9990FC()
{

  return swift_deallocObject();
}

uint64_t sub_999180@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  return sub_E8BA0(v3 + v4, a2);
}

uint64_t sub_9991E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_99925C()
{

  return swift_deallocObject();
}

uint64_t sub_9992A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_99930C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_999374()
{

  return swift_deallocObject();
}

id sub_9993D8()
{
  v1 = *(v0 + 16);
  [v1 setHidden:0];

  return [v1 setHighlighted:0];
}

uint64_t sub_99942C()
{

  return swift_deallocObject();
}

id sub_999464()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  return [*(v1 + v4) setContentOffset:{v2, v3}];
}

uint64_t sub_9994CC()
{

  return swift_deallocObject();
}

id sub_999528()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_9995B8()
{

  return swift_deallocObject();
}

uint64_t sub_999610()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_99966C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_9996BC()
{

  return swift_deallocObject();
}

uint64_t sub_999718(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_999760(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E046C(a1, v4);
}

uint64_t sub_999818(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_E046C(a1, v4);
}

uint64_t sub_9998FC()
{

  return swift_deallocObject();
}

uint64_t sub_99997C()
{

  return swift_deallocObject();
}

uint64_t sub_999A14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23A50);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23D40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_999B64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23A50);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23D40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_999CA0()
{
  sub_999D74();
  if (v0 <= 0x3F)
  {
    sub_999DD8(319, &qword_E23240, type metadata accessor for Lyrics.TextLine);
    if (v1 <= 0x3F)
    {
      sub_999DD8(319, &unk_E23E50, type metadata accessor for Lyrics.Translation.Line);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_999D74()
{
  result = qword_E23E40;
  if (!qword_E23E40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_E23E40);
  }

  return result;
}

void sub_999DD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
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
  sub_99A4E4();
  sub_99A818();

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
  sub_99A4E4();
  sub_99A818();

  return v19;
}

uint64_t sub_99A2FC(uint64_t result, uint64_t a2, char a3)
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
  sub_99A5F0();
}

void sub_99A4E4()
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

  sub_99A5F0();
}

void sub_99A5F0()
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

id sub_99A818()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView) layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225A8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_AF85F0;
  v4 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color;
  v5 = [*(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color) CGColor];
  _s3__C7CGColorCMa_2(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = [*(v0 + v4) colorWithAlphaComponent:0.0];
  v9 = [v8 CGColor];

  *(v3 + 88) = v7;
  *(v3 + 64) = v9;
  isa = sub_AB9740().super.isa;

  [v2 setColors:isa];

  v11 = *(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView);
  v12 = *(v0 + v4);

  return [v11 setBackgroundColor:v12];
}

id sub_99AB84(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_99ABC0()
{
  result = qword_E23EC8;
  if (!qword_E23EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E23EC8);
  }

  return result;
}

unint64_t sub_99AC90()
{
  result = qword_E23F20;
  if (!qword_E23F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E23F20);
  }

  return result;
}

void sub_99ACDC()
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
  sub_ABAFD0();
  __break(1u);
}

void *JSApplicationMessageTarget.reporter.unsafeMutableAddressor()
{
  if (qword_E23F30 != -1)
  {
    swift_once();
  }

  return &static JSApplicationMessageTarget.reporter;
}

uint64_t static JSApplicationMessageTarget.reporter.getter()
{
  if (qword_E23F30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t static JSApplicationMessageTarget.reporter.setter(uint64_t a1, uint64_t a2)
{
  if (qword_E23F30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_E75630 = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*static JSApplicationMessageTarget.reporter.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (qword_E23F30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = qword_E75630;
  *(v3 + 24) = Strong;
  *(v3 + 32) = v5;
  return sub_99AFEC;
}

void sub_99AFEC(uint64_t a1, char a2)
{
  v3 = *a1;
  qword_E75630 = *(*a1 + 32);
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

uint64_t JSApplicationMessageTarget.targetIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_targetIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSApplicationMessageTarget.targetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_targetIdentifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_99B24C(v6, v7);
}

void sub_99B24C(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_targetIdentifier];
  swift_beginAccess();
  v6 = a1;
  v7 = a2;
  v8 = *v5;
  v9 = *(v5 + 1);
  v10 = *v5 == v6 && v9 == v7;
  if (!v10 && (sub_ABB3C0() & 1) == 0)
  {
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      if (qword_E23F30 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = qword_E75630;
        ObjectType = swift_getObjectType();
        (*(v12 + 8))(v2, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      if (qword_E23F38 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_99CD80(&v14, v2);
      swift_endAccess();
    }
  }
}

void (*JSApplicationMessageTarget.targetIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_targetIdentifier;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_99B48C;
}

void sub_99B48C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_99B24C(v9, v8);
  }

  else
  {
    sub_99B24C(v9, v8);
  }

  free(v2);
}

id sub_99B520@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_priorityMessage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_99B588(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_priorityMessage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *JSApplicationMessageTarget.priorityMessage.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_priorityMessage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

Swift::Void __swiftcall JSApplicationMessageTarget.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  v3 = v2;
  countAndFlagsBits = _._countAndFlagsBits;
  if (_._countAndFlagsBits != 0x7473696765726E75 || _._object != 0xEA00000000007265)
  {
    object = _._object;
    if ((sub_ABB3C0() & 1) == 0)
    {
      if (countAndFlagsBits == 0xD000000000000024 && 0x8000000000B7D4C0 == object || (sub_ABB3C0() & 1) != 0)
      {
        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_808B0(arguments._rawValue + 32, v19);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        if (qword_E23F30 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = qword_E75630;
          ObjectType = swift_getObjectType();
          (*(v11 + 24))(v17, v18, v3, ObjectType, v11);
LABEL_23:
          swift_unknownObjectRelease();
        }
      }

      else if (countAndFlagsBits == 0xD000000000000027 && 0x8000000000B7D4F0 == object || (sub_ABB3C0() & 1) != 0)
      {
        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_808B0(arguments._rawValue + 32, v19);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        if (qword_E23F30 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = qword_E75630;
          v14 = swift_getObjectType();
          (*(v13 + 32))(v17, v18, v3, v14, v13);
          goto LABEL_23;
        }
      }

      else
      {
        if ((countAndFlagsBits != 0xD00000000000002ALL || 0x8000000000B7D520 != object) && (sub_ABB3C0() & 1) == 0)
        {
          return;
        }

        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_808B0(arguments._rawValue + 32, v19);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        Array.subscript.getter(&type metadata for Any + 8, v19);
        if (!v20)
        {

          sub_12E1C(v19, &unk_DE8E40);
          return;
        }

        if (swift_dynamicCast())
        {
          if (qword_E23F30 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v15 = qword_E75630;
            v16 = swift_getObjectType();
            (*(v15 + 40))(v17, v18, v17, v18, v3, v16, v15);
            swift_unknownObjectRelease();
          }
        }
      }

      return;
    }
  }

  if (qword_E23F30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = qword_E75630;
    v9 = swift_getObjectType();
    (*(v8 + 16))(v3, v9, v8);
    swift_unknownObjectRelease();
  }

  if (qword_E23F38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = sub_99D854(v3);
  swift_endAccess();
}

uint64_t JSApplicationMessageTarget.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_15F84(a3, v14, &unk_DE8E40);
  if (v14[3])
  {
    sub_15F84(v14, v12, &unk_DE8E40);

    if (swift_dynamicCast())
    {
      if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = (v3 + OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_targetIdentifier);
        swift_beginAccess();
        v7 = *v6;
        v8 = v6[1];
        *v6 = v10;
        v6[1] = v11;
        sub_99B24C(v7, v8);

        __swift_destroy_boxed_opaque_existential_0(v12);
        sub_12E1C(v14, &unk_DE8E40);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
  }

  return sub_12E1C(v13, &unk_E27200);
}

void sub_99BD9C()
{
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (sub_ABB060())
    {
      sub_99DB2C(_swiftEmptyArrayStorage);
    }

    else
    {
      v0 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v0 = &_swiftEmptySetSingleton;
  }

  qword_E23F40 = v0;
}

id JSApplicationMessageTarget.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_targetIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_priorityMessage] = 0;
  return JSObject.init(type:)(a1);
}

id JSApplicationMessageTarget.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_targetIdentifier);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_priorityMessage) = 0;
  return JSObject.init(type:)(a1);
}

void sub_99BE78()
{

  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_priorityMessage);
}

id JSApplicationMessageTarget.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSApplicationMessageTarget();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *variable initialization expression of JSBridge.thread()
{
  type metadata accessor for JSThread();
  swift_allocObject();
  return JSThread.init(name:)(0xD000000000000018, 0x8000000000B7D550);
}

double variable initialization expression of JSBridge.singletons@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void variable initialization expression of JSBridge.state(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0x8000000000000000;
}

void *variable initialization expression of JSBridge.indexedScriptingObjects()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24140);
  swift_allocObject();
  return WeakValuesDictionary.init()();
}

id variable initialization expression of JSLocalStorage.scriptingUserDefaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_AB9260();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    return v2;
  }

  v4 = [objc_opt_self() standardUserDefaults];

  return v4;
}

uint64_t variable initialization expression of JSPushNotificationObserver.pushNotificationObserver()
{
  PushNotificationObserver.shared.unsafeMutableAddressor();
}

double variable initialization expression of JSValueTransformerOptions.rawValue@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t variable initialization expression of JSWhatsNewViewModel._title()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

uint64_t _s11MusicJSCore13JSApplicationC16asyncInitializer33_769F05BF4A519CC8390DD34E33EBECC2LLAA8JSBridgeC012AsynchronousE0Cvpfi_0()
{
  type metadata accessor for JSBridge.AsynchronousInitializer();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t variable initialization expression of JSThread.accessQueue()
{
  v0 = sub_ABA140();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ABA100();
  __chkstk_darwin();
  sub_AB7C50();
  __chkstk_darwin();
  sub_13C80(0, &qword_DE8ED0);
  sub_AB7C30();
  v5[1] = _swiftEmptyArrayStorage;
  sub_99EF14(&qword_DED790, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01270);
  sub_3057D8();
  sub_ABABB0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_ABA180();
}

uint64_t variable initialization expression of JSThread.scriptingThreadIdentifier()
{
  v0 = [objc_allocWithZone(NSUUID) init];
  v1 = [v0 UUIDString];

  v2 = sub_AB92A0();
  return v2;
}

uint64_t sub_99C6F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_99C758@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

Swift::Int sub_99C954()
{
  sub_ABB5C0();
  swift_getWitnessTable();
  sub_AB3B30();
  return sub_ABB610();
}

uint64_t sub_99C9B8()
{
  sub_99EF14(&qword_E242D8, type metadata accessor for ActivityType);
  sub_99EF14(&unk_E242E0, type metadata accessor for ActivityType);

  return sub_ABB110();
}

uint64_t sub_99CA74()
{
  sub_99EF14(&qword_E242F8, type metadata accessor for HTTPCookiePropertyKey);
  sub_99EF14(&unk_E24300, type metadata accessor for HTTPCookiePropertyKey);

  return sub_ABB110();
}

uint64_t sub_99CB30()
{
  sub_99EF14(&qword_E24460, type metadata accessor for FileAttributeKey);
  sub_99EF14(&qword_E24468, type metadata accessor for FileAttributeKey);

  return sub_ABB110();
}

uint64_t sub_99CBEC()
{
  swift_getWitnessTable();

  return sub_AB3B20();
}

uint64_t sub_99CC58()
{
  swift_getWitnessTable();

  return sub_AB3B20();
}

uint64_t sub_99CCC4()
{
  sub_99EF14(&qword_E242C8, type metadata accessor for ICStorePlatformKeyProfile);
  sub_99EF14(&qword_E242D0, type metadata accessor for ICStorePlatformKeyProfile);

  return sub_ABB110();
}

uint64_t sub_99CD80(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_ABAC60();

    if (v9)
    {

      type metadata accessor for JSApplicationMessageTarget();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_ABAC50();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_99CF90(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_99D16C();
    }

    v18 = v8;
    sub_21834(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for JSApplicationMessageTarget();
  v11 = sub_ABA780(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_99D394(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_ABA790();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

Swift::Int sub_99CF90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E243E8);
    v2 = sub_ABAD40();
    v14 = v2;
    sub_ABAC10();
    if (sub_ABAC90())
    {
      type metadata accessor for JSApplicationMessageTarget();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_99D16C();
        }

        v2 = v14;
        result = sub_ABA780(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_ABAC90());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_99D16C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E243E8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_ABA780(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_99D394(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_99D16C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_99D4F0();
      goto LABEL_12;
    }

    sub_99D640();
  }

  v8 = *v3;
  v9 = sub_ABA780(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for JSApplicationMessageTarget();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_ABA790();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_ABB4B0();
  __break(1u);
}

id sub_99D4F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E243E8);
  v2 = *v0;
  v3 = sub_ABAD20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_99D640()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E243E8);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_ABA780(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_99D854(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_ABACA0();

    if (v5)
    {
      v6 = sub_99D9D8();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for JSApplicationMessageTarget();
  v9 = sub_ABA780(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_ABA790();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_99D4F0();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_2F1490(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_99D9D8()
{
  v1 = v0;

  v2 = sub_ABAC50();
  v3 = swift_unknownObjectRetain();
  v4 = sub_99CF90(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_ABA780(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    type metadata accessor for JSApplicationMessageTarget();
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = sub_ABA790();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_2F1490(v8);
  result = sub_ABA790();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_99DB2C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_ABB060())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E243E8);
      v3 = sub_ABAD50();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_ABB060();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_9BA964(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_ABA780(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for JSApplicationMessageTarget();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_ABA790();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v37 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v1 + 32 + 8 * v22);
      v25 = sub_ABA780(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for JSApplicationMessageTarget();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_ABA790();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_99DDF0(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = objc_allocWithZone(type metadata accessor for JSApplicationMessage());
    v5 = a1;
    v6 = sub_A514E0(v5);

    v7 = OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_priorityMessage;
    swift_beginAccess();
    v8 = *&v2[v7];
    *&v2[v7] = v6;
  }

  else
  {
    v9 = OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_priorityMessage;
    swift_beginAccess();
    v8 = *&v2[v9];
    *&v2[v9] = 0;
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v10 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF85F0;
  *(v11 + 56) = type metadata accessor for JSApplicationMessageTarget();
  *(v11 + 32) = v2;
  v12 = OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_priorityMessage;
  swift_beginAccess();
  v13 = *&v2[v12];
  *(v11 + 88) = sub_13C80(0, &qword_DFA720);
  if (v13)
  {
    v14 = v2;
    v15 = v13;
  }

  else
  {
    v16 = objc_allocWithZone(NSNull);
    v17 = v2;
    v15 = [v16 init];
  }

  *(v11 + 64) = v15;
  sub_13C80(0, &qword_DE8ED0);
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = _swiftEmptyArrayStorage;
  *(v18 + 32) = 0xD000000000000019;
  *(v18 + 40) = 0x8000000000B7D670;
  *(v18 + 48) = v2;
  *(v18 + 56) = v10;
  *(v18 + 64) = 0;
  v19 = v2;
  v20 = v13;
  v21 = v10;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v18);
}

unint64_t sub_99E050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24360);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v17, &qword_E24368);
      v5 = v17;
      v6 = v18;
      result = sub_9A1C28(v17, v18);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 16 * result;
      *v9 = v5;
      *(v9 + 8) = v6;
      v10 = v3[7] + 56 * result;
      v11 = v19;
      v12 = v20;
      v13 = v21;
      *(v10 + 48) = v22;
      *(v10 + 16) = v12;
      *(v10 + 32) = v13;
      *v10 = v11;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99E198(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24350);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, v11, &qword_E24358);
      result = sub_9A1BBC(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_99F510(v11, v3[6] + 32 * result);
      *(v3[7] + v7) = v11[32];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99E2B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24320);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, v13, &qword_E24328);
      result = sub_2EC004(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99E3E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E243E0);
    v3 = sub_ABB0C0();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v8 = *(i - 4);
      v7 = *(i - 3);
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;
      v12 = *i;

      result = sub_2EBF88(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 40 * result);
      *v16 = v8;
      v16[1] = v7;
      v16[2] = v10;
      v16[3] = v9;
      v16[4] = v11;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99E520(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2BC0);
    v3 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_2EBF88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99E624(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24378);
    v3 = sub_ABB0C0();
    v4 = (a1 + 32);

    while (1)
    {
      v5 = *v4;

      result = sub_9A4E18();
      if (v7)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 56) + 8 * result) = v5;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v10;
      ++v4;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99E700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24310);
    v3 = sub_ABB0C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_85C958(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99E800(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24330);
  v3 = sub_ABB0C0();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_2F5A90(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_2F5A90(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_99E910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24390);
    v3 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2EBF88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99EA28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24340);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24348);
    v7 = sub_ABB0C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_15F84(v9, v5, &qword_E24340);
      v11 = *v5;
      v12 = v5[1];
      result = sub_2EBF88(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
      result = sub_52B328(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99EBFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E243D8);
    v3 = sub_ABB0C0();

    for (i = (a1 + 56); ; i = (i + 40))
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v16 = *i;
      v7 = *(i - 3);
      v8 = v6;
      v9 = v16;

      result = sub_9A1CF4(v7, v5, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 24 * result;
      *v12 = v7;
      *(v12 + 8) = v5;
      *(v12 + 16) = v8;
      *(v3[7] + 16 * result) = v16;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99ED48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E243D0);
    v3 = sub_ABB0C0();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 4);
      v10 = v6;
      v11 = v7;
      swift_errorRetain();
      result = sub_9A1CF4(v9, v5, v10);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 24 * result;
      *v14 = v9;
      *(v14 + 8) = v5;
      *(v14 + 16) = v10;
      v15 = (v3[7] + 16 * result);
      *v15 = v7;
      v15[1] = v8;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_99EF14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_99F1B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E243A8);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v11, &qword_E243B0);
      v5 = v11;
      result = sub_85C958(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_9ACFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99F2EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24380);
    v3 = sub_ABB0C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2EBF88(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_99F414(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24338);
    v3 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2EBF88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_99F56C()
{

  return swift_deallocObject();
}

void *JSModelMetricsReporter.__allocating_init(jsModel:pageDetailsProvider:snapshotImpressionProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[6] = 0;
  v10[5] = 0;
  v10[2] = a1;
  v10[3] = a2;
  swift_beginAccess();
  v10[5] = a4;
  v10[6] = a5;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v10;
}

void *JSModelMetricsReporter.init(jsModel:pageDetailsProvider:snapshotImpressionProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  v5[6] = 0;
  v5[5] = 0;
  v5[2] = a1;
  v5[3] = a2;
  swift_beginAccess();
  v5[5] = a4;
  v5[6] = a5;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v5;
}

void *JSModelMetricsReporter.jsModel.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void JSModelMetricsReporter.jsModel.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t JSModelMetricsReporter.snapshotImpressionProvider.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_3FC34(v1);
  return v1;
}

uint64_t JSModelMetricsReporter.snapshotImpressionProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_3FC30(v5);
}

uint64_t JSModelMetricsReporter.report(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);
  if (v4)
  {

    v6 = v4(v5);
    sub_3FC30(v4);
  }

  else
  {
    v6 = 0;
  }

  swift_beginAccess();
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = *(v8 + 8);
  v12 = v7;
  v11(a1, v6, Strong, ObjectType, v8);
}

uint64_t JSModelMetricsReporter.deinit()
{
  swift_unknownObjectWeakDestroy();
  sub_3FC30(*(v0 + 40));
  return v0;
}

uint64_t JSModelMetricsReporter.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();
  sub_3FC30(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_99FD48@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_99FE04(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_backgroundAccessoryArtwork;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *JSSocialMediaItem.backgroundAccessoryArtwork.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_backgroundAccessoryArtwork;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}