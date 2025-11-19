void sub_100CD5274(void *a1, char a2, uint64_t a3, int a4, char a5, double a6, double a7, double a8)
{
  v9 = v8;
  LODWORD(v10) = a4;
  if (*(v8 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator))
  {
    sub_100CD92D4();
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
  v34 = sub_100CD2DF4(a1, v254.origin.x, v254.origin.y, v254.size.width, v254.size.height);
  v35 = a1[3];
  v36 = a1[4];
  sub_10000954C(a1, v35);
  v37 = (*(v36 + 16))(v35, v36);
  v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v39 = *(v38 + v9);
  if ((v39 & 0xC000000000000001) != 0)
  {

    v226 = specialized _ArrayBuffer._getElementSlowPath(_:)();

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
  v45 = sub_100CD38A4(v43, v44);
LABEL_19:
  v238 = v45;
  v47 = a1[3];
  v46 = a1[4];
  sub_10000954C(a1, v47);
  v48 = (*(*(v46 + 8) + 16))(v47);
  v237 = (v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
  swift_beginAccess();
  v38 = off_1011BD000;
  v239 = v9;
  v240 = v34;
  if ((v40 & 1) == 0)
  {
    a7 = v48 - v237[23];
    [v238 settlingDuration];
    if (a7 < v49 + a8)
    {
      if (qword_1011BB908 == -1)
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

  sub_100008FE4(a1, &aBlock);
  sub_10010FC20(&qword_1011BBB08);
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
      v75 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v75 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = _swiftEmptyArrayStorage;
    if (v75)
    {
      aBlock = _swiftEmptyArrayStorage;
      v70 = sub_100C71440(0, v75 & ~(v75 >> 63), 0);
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
          v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
          sub_100C71440((v85 > 1), v86 + 1, 1);
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
      v88 = _CocoaArrayWrapper.endIndex.getter();
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
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
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
        v122 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
      sub_100009F78(0, &qword_1011BD600);
      v125 = static NSObject.== infix(_:_:)();
      sub_100CCDBA8(v34, v125 & 1, &v249);
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
          v71 = _CocoaArrayWrapper.endIndex.getter();
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
            v72 = _CocoaArrayWrapper.endIndex.getter();
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
              v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v90 = *(v34 + 8 * v89 + 32);
            }

            v91 = v90;
            v10 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v238 timingParameters:a7];
            a3 = a1;
            sub_100008FE4(a1, v248);
            v92 = swift_allocObject();
            *(v92 + 16) = v91;
            sub_100059A8C(v248, v92 + 24);
            *(v92 + 64) = v9;
            *(v92 + 72) = v29;
            v246 = sub_100CE0B44;
            v247 = v92;
            aBlock = _NSConcreteStackBlock;
            v243 = 1107296256;
            v244 = sub_10002BC98;
            v245 = &unk_1010F82C0;
            v93 = _Block_copy(&aBlock);
            v94 = v91;
            v95 = v9;

            [v10 addAnimations:v93];
            _Block_release(v93);
            v96 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            sub_100008FE4(&v94[v96], &aBlock);
            v97 = v245;
            v98 = v246;
            sub_10000954C(&aBlock, v245);
            v99 = (*(v98 + 2))(v97, v98);
            v101 = a1[3];
            v100 = a1[4];
            sub_10000954C(a3, *(a3 + 24));
            v102 = (*(v100 + 16))(v101, v100);
            sub_10000959C(&aBlock);
            if (v99 == v102)
            {
              v103 = v10;
              sub_100CD33DC(a1, v10, 1, 0);

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
                  v246 = sub_100CE0B70;
                  v247 = v107;
                  aBlock = _NSConcreteStackBlock;
                  v243 = 1107296256;
                  v244 = sub_10002BC98;
                  v245 = &unk_1010F8360;
                  v108 = _Block_copy(&aBlock);
                  v109 = v94;
                  v110 = v95;
                  v111 = v104;

                  [v103 addAnimations:v108];
                  _Block_release(v108);
                  v112 = swift_allocObject();
                  *(v112 + 16) = v106;
                  *(v112 + 24) = a8;
                  v246 = sub_100CE0B7C;
                  v247 = v112;
                  aBlock = _NSConcreteStackBlock;
                  v243 = 1107296256;
                  v244 = sub_100338AB8;
                  v245 = &unk_1010F83B0;
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
              sub_100008FE4(a1, v248);
              v114 = swift_allocObject();
              *(v114 + 16) = v240;
              *(v114 + 24) = v29;
              *(v114 + 32) = v94;
              *(v114 + 40) = v95;
              *(v114 + 48) = v33;
              *(v114 + 56) = v21;
              sub_100059A8C(v248, v114 + 64);
              v246 = sub_100CE0B58;
              v247 = v114;
              aBlock = _NSConcreteStackBlock;
              v243 = 1107296256;
              v244 = sub_100338AB8;
              v245 = &unk_1010F8310;
              v115 = _Block_copy(&aBlock);
              v116 = v94;
              v117 = v95;

              [v10 addCompletion:v115];
              _Block_release(v115);
            }

            v9 = v239;
            swift_beginAccess();
            v118 = v10;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
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
        v50 = type metadata accessor for Logger();
        sub_1000060E4(v50, qword_1011BD450);
        v51 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v47))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          aBlock = v53;
          *v52 = 136315138;
          v34 = v240;
          *(v52 + 4) = sub_1000109A8(0x100000000000003ELL, 0x8000000100E6B850, &aBlock);
          _os_log_impl(&_mh_execute_header, v51, v47, "%s", v52, 0xCu);
          sub_10000959C(v53);
        }

        a7 = a7 - a8;
        [v238 setImplicitDuration:0];
        *(v38[187] + v9) = 1;
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
        sub_100008FE4(&v56[v59], &aBlock);
        v60 = v245;
        v9 = v246;
        sub_10000954C(&aBlock, v245);
        v61 = *(v9 + 2);
        v62 = v56;
        v34 = v57;
        v63 = v61(v60, v9);
        v64 = v63 + 1;
        if (!__OFADD__(v63, 1))
        {
          sub_10000959C(&aBlock);
          v65 = a1[3];
          v66 = a1[4];
          sub_10000954C(a1, v65);
          v67 = (*(v66 + 16))(v65, v66);
          v68 = v64 == v67;
          v9 = v239;
          if (v64 == v67)
          {
            v69 = *(v239 + v55);
            *(v239 + v55) = 0;

            [v62 frame];
            *(v224 + 24) = *(v224 + 24) - (CGRectGetHeight(v255) + v237[14]);
            sub_100CAA500();
          }

          v34 = v240;
          a3 = v213;
          LODWORD(v10) = v211;
          goto LABEL_35;
        }

        __break(1u);
LABEL_175:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v38 = v225;
LABEL_125:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v174 = swift_allocObject();
        *(v174 + 16) = v9;
        v246 = sub_100CE1224;
        v247 = v174;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = sub_10002BC98;
        v245 = &unk_1010F81D0;
        v175 = _Block_copy(&aBlock);
        v176 = v9;

        [v47 addAnimations:v175];
        _Block_release(v175);
        [v47 startAnimation];
        v70 = sub_100CD7E78(v226, v34);
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
          sub_100CD33DC(a1, 0, 1, 1);

LABEL_181:

          goto LABEL_182;
        }

LABEL_179:
        if (v70 >= _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_180;
        }

LABEL_128:
        v179 = v47;
        sub_100CD33DC(a1, v47, 1, 1);

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
        sub_10000954C(a1, v131);
        v133 = (*(v132 + 16))(v131, v132);
        v134 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        sub_100008FE4(v34 + v134, &aBlock);
        v135 = v123;
        v136 = v245;
        v137 = v246;
        sub_10000954C(&aBlock, v245);
        v138 = *(v137 + 2);
        v139 = v137;
        v123 = v135;
        LOBYTE(v135) = v138(v136, v139) < v133;
        sub_10000959C(&aBlock);
        v231 |= v135;
        v130 = *&v10[v236];
      }

      swift_beginAccess();
      if (v130 == *(v124 + 40) || (v140 = a1[3], v141 = a1[4], sub_10000954C(a1, v140), v142 = (*(v141 + 16))(v140, v141), v143 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line, swift_beginAccess(), sub_100008FE4(v34 + v143, &aBlock), v144 = v123, v145 = v245, v146 = v246, sub_10000954C(&aBlock, v245), v147 = *(v146 + 2), v148 = v146, v123 = v144, v149 = v147(v145, v148), sub_10000959C(&aBlock), v149 >= v142))
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
      sub_100008FE4(v34 + v151, &aBlock);
      v152 = v245;
      v153 = v246;
      sub_10000954C(&aBlock, v245);
      v154 = (*(v153 + 2))(v152, v153);
      v155 = a1[3];
      v156 = a1[4];
      sub_10000954C(a1, v155);
      v157 = (*(v156 + 16))(v155, v156);
      sub_10000959C(&aBlock);
      v231 = (v154 != v157) & v150;
      if (v154 == v157)
      {
        v123 = v144;
        if (v150)
        {
          sub_100CD92D4();
          swift_beginAccess();
          v199 = *(v124 + 16);
          v200 = v29 + *(v124 + 24);
          *(v124 + 24) = v200;
          sub_100CD3250(v199, v200, *(v124 + 32), *(v124 + 40));
          v202 = v201;
          if (!v234)
          {
LABEL_156:

            sub_100CD5274(a1, v216 & 1, v214, v212 & 1, 1, 0.0, v202, a8);

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
                  v205 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

        UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(2, sub_100CE0AEC, v161);
      }

      v38 = v225;
      sub_100008FE4(a1, v248);
      v164 = swift_allocObject();
      *(v164 + 16) = v9;
      *(v164 + 24) = v34;
      sub_100059A8C(v248, v164 + 32);
      v246 = sub_100CE0AFC;
      v247 = v164;
      aBlock = _NSConcreteStackBlock;
      v243 = 1107296256;
      v244 = sub_10002BC98;
      v245 = &unk_1010F8130;
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
        sub_100008FE4(a1, v248);
        v167 = swift_allocObject();
        *(v167 + 16) = v240;
        *(v167 + 24) = v29;
        *(v167 + 32) = v165;
        *(v167 + 40) = v217;
        *(v167 + 48) = v228;
        *(v167 + 56) = v224;
        sub_100059A8C(v248, v167 + 64);
        v246 = sub_100CE0B08;
        v247 = v167;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = sub_100338AB8;
        v245 = &unk_1010F8180;
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
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v38 = v225;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
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
    v70 = _CocoaArrayWrapper.endIndex.getter();
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
    v70 = _CocoaArrayWrapper.endIndex.getter();
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
      v181 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v181 = *(v34 + 8 * v180 + 32);
    }

    v182 = v181;
    v183 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v238 timingParameters:a7];
    sub_100008FE4(a1, v248);
    v184 = swift_allocObject();
    *(v184 + 16) = v182;
    sub_100059A8C(v248, v184 + 24);
    *(v184 + 64) = v29;
    *(v184 + 72) = v9;
    v246 = sub_100CE0B20;
    v247 = v184;
    aBlock = _NSConcreteStackBlock;
    v243 = 1107296256;
    v244 = sub_10002BC98;
    v245 = &unk_1010F8220;
    v185 = _Block_copy(&aBlock);
    v186 = v9;
    v9 = v182;

    [v183 addAnimations:v185];
    _Block_release(v185);
    v187 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_100008FE4(v9 + v187, &aBlock);
    v188 = v245;
    v189 = v246;
    sub_10000954C(&aBlock, v245);
    v190 = (*(v189 + 2))(v188, v189);
    v191 = a1[3];
    v192 = a1[4];
    sub_10000954C(a1, v191);
    v193 = (*(v192 + 16))(v191, v192);
    sub_10000959C(&aBlock);
    if (v190 == v193)
    {
      v194 = v183;
      sub_100CD33DC(a1, v183, 1, 1);
    }

    v34 = v240;
    if (v235 == v180)
    {
      sub_100008FE4(a1, v248);
      v195 = swift_allocObject();
      *(v195 + 16) = v240;
      *(v195 + 24) = v186;
      *(v195 + 32) = a8;
      *(v195 + 40) = v33;
      sub_100059A8C(v248, v195 + 48);
      v246 = sub_100CE0B34;
      v247 = v195;
      aBlock = _NSConcreteStackBlock;
      v243 = 1107296256;
      v244 = sub_100338AB8;
      v245 = &unk_1010F8270;
      v196 = _Block_copy(&aBlock);
      v197 = v186;

      [v183 addCompletion:v196];
      _Block_release(v196);
    }

    swift_beginAccess();
    v10 = v183;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v38 + v239) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v38 + v239) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    a3 = v180 + 0x8000000000000000;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
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

  sub_100CD3AEC(v34);
}

void sub_100CD7054(uint64_t a1, CGFloat *a2, uint64_t a3)
{
  swift_beginAccess();
  UIView.untransformedFrame.setter(a2[2], a2[3], a2[4], a2[5]);
  v6 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_1000089F8(v6 + v7, v37, &qword_1011BBB10);
    v8 = v38;
    if (v38)
    {
      v9 = v39;
      sub_10000954C(v37, v38);
      v10 = *(v8 - 8);
      v11 = __chkstk_darwin();
      v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v10 + 16))(v13, v11);
      v14 = v6;
      sub_1000095E8(v37, &qword_1011BBB10);
      v15 = (*(v9 + 16))(v8, v9);
      (*(v10 + 8))(v13, v8);
    }

    else
    {
      v16 = v6;
      sub_1000095E8(v37, &qword_1011BBB10);
      v15 = 0;
    }

    v17 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_100008FE4(a1 + v17, v37);
    v18 = v38;
    v19 = v39;
    sub_10000954C(v37, v38);
    v20 = (*(v19 + 16))(v18, v19);
    if (v8)
    {
      v21 = v20;
      sub_10000959C(v37);
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

      sub_10000959C(v37);
    }
  }

  v23 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel);
  if (v23)
  {
    v24 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_100008FE4(a1 + v24, v37);
    v25 = v38;
    v26 = v39;
    sub_10000954C(v37, v38);
    v27 = *(v26 + 16);
    v28 = v23;
    v29 = v27(v25, v26);
    v30 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v31 = *(a3 + v30);
    if (v31 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
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
        sub_10000959C(v37);
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

void sub_100CD7404(uint64_t a1, void *a2, void *a3)
{
  v5 = a1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if (*(v5 + 658) == 1)
  {
    v6 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_100008FE4(a2 + v6, v15);
    v7 = v16;
    v8 = v17;
    sub_10000954C(v15, v16);
    v9 = (*(v8 + 16))(v7, v8);
    v10 = a3[3];
    v11 = a3[4];
    sub_10000954C(a3, v10);
    v12 = (*(v11 + 16))(v10, v11);
    sub_10000959C(v15);
    if (v9 < v12)
    {
      [a2 setAlpha:0.0];
      swift_beginAccess();
      sub_100C7F89C(&v14, a2);
      v13 = v14;
      swift_endAccess();
    }
  }
}

void sub_100CD7570(double a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
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
  v14 = _CocoaArrayWrapper.endIndex.getter();
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
    v71 = a4;
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
    v8 = *(v71 + v32);
    v32 = v8 >> 62;
    if (v8 >> 62)
    {
      while (_CocoaArrayWrapper.endIndex.getter() < v34)
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
        v46 = type metadata accessor for Logger();
        sub_1000060E4(v46, qword_1011BD450);

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = v14;
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v76 = v51;
          *v50 = 136315138;
          v10 = sub_1000109A8(v10, v9, &v76);

          *(v50 + 4) = v10;
          _os_log_impl(&_mh_execute_header, v47, v48, "%s", v50, 0xCu);
          sub_10000959C(v51);
          v33 = a8;

          v14 = v49;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v54 = v36 - v34;
        v52 = v36 == v34;
        v53 = v36 <= v34;
        a4 = v71;
        if (!v52)
        {
          if (v53)
          {
            goto LABEL_72;
          }

          v55 = (v14 + 8 * v34);
          do
          {
            v56 = *v55++;
            v57 = v56;
            sub_100CCF9F0(v57);

            --v54;
          }

          while (v54);
        }

        swift_unknownObjectRelease();
LABEL_49:
        v58 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
        swift_beginAccess();
        v59 = *(a4 + v58);
        swift_beginAccess();
        [v59 setContentOffset:{*(a7 + 16), *(a7 + 24)}];
        __chkstk_darwin();
        sub_100CDC7A0(sub_100CE0BC0);
        *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = 0;
        v60 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
        swift_beginAccess();
        *(a4 + v60) = _swiftEmptyArrayStorage;

        v61 = *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
        *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel) = 0;
        if (v61)
        {
          [v61 removeFromSuperview];
        }

        v14 = *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        if (!v14)
        {
          return;
        }

        *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView) = 0;
        v62 = v33[3];
        v34 = v33[4];
        sub_10000954C(v33, v62);
        v8 = (*(v34 + 16))(v62, v34);
        v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
        swift_beginAccess();
        v63 = *(a4 + v32);
        if ((v63 & 0xC000000000000001) != 0)
        {
          goto LABEL_59;
        }

        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v64 = *(v63 + 8 * v8 + 32);
          goto LABEL_56;
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v36 = _CocoaArrayWrapper.endIndex.getter();
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
      v37 = _CocoaArrayWrapper.endIndex.getter();
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
        _ArrayBuffer._typeCheckSlowPath(_:)(v38);
        v38 = v39;
      }

      while (v36 != v39);
      if (!v32)
      {
        goto LABEL_36;
      }
    }

    _CocoaArrayWrapper.subscript.getter();
    v14 = v40;
    v34 = v41;
    v36 = v42 >> 1;
LABEL_39:
    swift_unknownObjectRetain();

    v76 = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v43._object = 0x8000000100E6B910;
    v43._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v43);
    if (!__OFSUB__(v36, v34))
    {
      v75 = v36 - v34;
      v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v44);

      v45._countAndFlagsBits = 0x73656E696C20;
      v45._object = 0xE600000000000000;
      String.append(_:)(v45);
      v10 = v76;
      v9 = v77;
      if (qword_1011BB908 != -1)
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
    v71 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel;
    v70 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v9 = 0;
    v69 = v14;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(a3 + 8 * v9 + 32);
      }

      v10 = v15;
      v8 = v15;
      v16 = UIView.untransformedFrame.getter();
      UIView.untransformedFrame.setter(v16, v17 + a1, v18, v19);
      v20 = *(a4 + v71);
      if (v20)
      {
        v21 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        sub_100008FE4(v10 + v21, v72);
        v22 = v73;
        v23 = a4;
        v24 = v74;
        sub_10000954C(v72, v73);
        v25 = *(v24 + 16);
        v26 = v20;
        v27 = v24;
        a4 = v23;
        v8 = v25(v22, v27);
        v28 = *(v23 + v70);
        if (v28 >> 62)
        {
          v31 = _CocoaArrayWrapper.endIndex.getter();
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

        sub_10000959C(v72);
        if (v8 == v30)
        {
          v8 = v26;
          [v8 frame];
          [v8 setFrame:?];
        }

        v14 = v69;
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

  v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_56:
  sub_100CD8A78(v14, v64);
}

uint64_t sub_100CD7D74()
{
  _StringGuts.grow(_:)(56);
  v0._object = 0x8000000100E6B940;
  v0._countAndFlagsBits = 0xD00000000000002FLL;
  String.append(_:)(v0);
  swift_beginAccess();
  _s3__C7CGPointVMa_2(0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0x20726F6620;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  sub_10010FC20(&qword_1011BBB08);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t sub_100CD7E78(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
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
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    v8 = static NSObject.== infix(_:_:)();

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

id sub_100CD7F68(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_100008FE4(a1 + v4, v12);
  v5 = v13;
  v6 = v14;
  sub_10000954C(v12, v13);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = a2[3];
  v9 = a2[4];
  sub_10000954C(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  sub_10000959C(v12);
  if (v10 < v7)
  {
    swift_beginAccess();
  }

  [a1 frame];
  return [a1 setFrame:?];
}

id sub_100CD80CC(uint64_t a1, char *a2)
{
  sub_100CCF9F0(a2);
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_100008FE4(&a2[v3], v8);
  v4 = v9;
  v5 = v10;
  sub_10000954C(v8, v9);
  v6 = (*(v5 + 16))(v4, v5);
  result = sub_10000959C(v8);
  if (!v6)
  {
    [a2 frame];
    return [a2 setFrame:?];
  }

  return result;
}

void sub_100CD81A4(double a1, double a2, double a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
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
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
  sub_100008FE4(a6 + v16, v27);
  v17 = v28;
  v18 = v29;
  sub_10000954C(v27, v28);
  v19 = (*(v18 + 16))(v17, v18);
  v20 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v21 = *(a7 + v20);
  if (v21 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i >= v19; i = _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10000959C(v27);
    if (v19 == i)
    {
LABEL_13:
      v23 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      [*(a7 + v23) setContentOffset:{a2, a3}];
      __chkstk_darwin();
      sub_100CDC7A0(sub_100CE0BA8);
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

        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();

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
      sub_100CCF9F0(v26);

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

uint64_t sub_100CD84B0()
{
  _StringGuts.grow(_:)(68);
  v0._object = 0x8000000100E6B890;
  v0._countAndFlagsBits = 0xD00000000000003BLL;
  String.append(_:)(v0);
  _s3__C7CGPointVMa_2(0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0x20726F6620;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  sub_10010FC20(&qword_1011BBB08);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

id sub_100CD85A8(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_100008FE4(a1 + v4, v12);
  v5 = v13;
  v6 = v14;
  sub_10000954C(v12, v13);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = a2[3];
  v9 = a2[4];
  sub_10000954C(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  sub_10000959C(v12);
  if (v7 < v10)
  {
    swift_beginAccess();
  }

  [a1 frame];
  return [a1 setFrame:?];
}

void sub_100CD86F4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(a4 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v9 = i;
      v10 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      sub_100008FE4(v9 + v10, v21);

      v11 = v22;
      v12 = v23;
      sub_10000954C(v21, v22);
      v13 = (*(v12 + 16))(v11, v12);
      v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
      swift_beginAccess();
      v15 = *(a5 + v14);
      if (v15 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
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

      sub_10000959C(v21);
      if (v13 == v16)
      {
LABEL_7:
        v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
        swift_beginAccess();
        [*(a5 + v17) setContentOffset:{a1, a2}];
        __chkstk_darwin();
        sub_100CDC7A0(sub_100CE0BB4);
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

          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();

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
        sub_100CCF9F0(v20);

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

uint64_t sub_100CD8980()
{
  _StringGuts.grow(_:)(66);
  v0._object = 0x8000000100E6B8D0;
  v0._countAndFlagsBits = 0xD000000000000039;
  String.append(_:)(v0);
  _s3__C7CGPointVMa_2(0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0x20726F6620;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  sub_10010FC20(&qword_1011BBB08);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

void sub_100CD8A78(objc_class *a1, uint64_t a2)
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
  sub_100008FE4(a2 + v20, &v68);
  v67 = sub_100CD2DF4(&v68, v8, v10, v14, v16);
  sub_10000959C(&v68);
  v21 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_100008FE4(a1 + v21, &v68);
  v22 = v71;
  v23 = v72;
  sub_10000954C(&v68, v71);
  v66 = (*(v23 + 2))(v22, v23);
  sub_100008FE4(a2 + v20, v76);
  v24 = v77;
  v25 = v78;
  sub_10000954C(v76, v77);
  v65 = (*(v25 + 16))(v24, v25);
  sub_10000959C(v76);
  sub_10000959C(&v68);
  v59 = v21;
  sub_100008FE4(a1 + v21, &v68);
  v26 = v71;
  v27 = v72;
  sub_10000954C(&v68, v71);
  v28 = (*(v27 + 16))(v26, v27);
  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v30 = *&v3[v29];
  v60 = v6;
  if (v30 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i >= v28; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v58 = a1;
    sub_10000959C(&v68);
    if (v28 == i)
    {
LABEL_8:

      if (v65 >= v66)
      {
        v32 = v60;
        v33 = *&v3[v60];
        swift_beginAccess();
        v34 = v33;
        [v34 contentOffset];
        [v34 setContentOffset:?];

        v68 = 0;
        v69 = 0xE000000000000000;
        _StringGuts.grow(_:)(67);
        v74 = v68;
        v75 = v69;
        v35._object = 0x8000000100E6B810;
        v35._countAndFlagsBits = 0xD00000000000003ALL;
        String.append(_:)(v35);
        [*&v3[v32] contentOffset];
        v68 = v36;
        v69 = v37;
        _s3__C7CGPointVMa_2(0);
        _print_unlocked<A, B>(_:_:)();
        v38._countAndFlagsBits = 0x20726F6620;
        v38._object = 0xE500000000000000;
        String.append(_:)(v38);
        sub_100008FE4(v58 + v59, &v68);
        sub_10010FC20(&qword_1011BBB08);
        _print_unlocked<A, B>(_:_:)();
        sub_10000959C(&v68);
        v27 = v74;
        v26 = v75;
        if (qword_1011BB908 == -1)
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
    v64 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
    swift_beginAccess();
    swift_beginAccess();
    v45 = 0;
    v26 = 0;
    v63 = &v70;
    v61 = i;
    v62 = v29;
    while (1)
    {
      v46 = *&v3[v29];
      if ((v46 & 0xC000000000000001) != 0)
      {

        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        goto LABEL_20;
      }

      if (v28 < 0)
      {
        break;
      }

      if (v28 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v47 = *(v46 + 8 * v28 + 32);
LABEL_20:
      v68 = v47;
      __chkstk_darwin();
      v57[2] = &v68;
      if ((sub_100C5CD64(sub_100CE0AA8, v57, v67) & 1) != 0 && v65 < v66)
      {
        v48 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:*(v27 + 664) stiffness:*(v27 + 672) damping:*(v27 + 680) initialVelocity:{0.0, 0.0}];
        sub_100009F78(0, &qword_1011BD500);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v48).super.isa;
        v50 = swift_allocObject();
        *(v50 + 16) = v3;
        *(v50 + 24) = v47;
        v72 = sub_100CE0AC4;
        v73 = v50;
        v68 = _NSConcreteStackBlock;
        v69 = 1107296256;
        v70 = sub_10002BC98;
        v71 = &unk_1010F8040;
        v51 = _Block_copy(&v68);
        v52 = v3;
        v53 = v47;

        [(objc_class *)isa addAnimations:v51];
        _Block_release(v51);
        v54 = v64;
        swift_beginAccess();
        a1 = isa;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v55 = *&v3[v54] & 0xFFFFFFFFFFFFFF8;
        v29 = *(v55 + 0x10);
        if (v29 >= *(v55 + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        [(objc_class *)a1 startAnimationAfterDelay:*(v27 + 176) * v45];

        if (__OFADD__(v45++, 1))
        {
          goto LABEL_32;
        }

        a1 = v61;
        v29 = v62;
      }

      else
      {
        sub_100CCF9F0(v47);
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
  v39 = type metadata accessor for Logger();
  sub_1000060E4(v39, qword_1011BD450);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v68 = v43;
    *v42 = 136315138;
    v44 = sub_1000109A8(v27, v26, &v68);

    *(v42 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s", v42, 0xCu);
    sub_10000959C(v43);
  }

  else
  {
  }
}

void sub_100CD92D4()
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
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

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

  v6 = _CocoaArrayWrapper.endIndex.getter();
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
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin();
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
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
    v22 = &selRef_removeAction_forControlEvents_;
    if (!v20 || (v23 = *&v3[v21], swift_unknownObjectRelease(), v24 = v20 == v23, v22 = &selRef_removeAction_forControlEvents_, !v24))
    {
      v25 = [(objc_class *)in.super.isa previouslyFocusedItem];
      if (v25)
      {
        v26 = *&v3[v21];
        v27 = v25;
        swift_unknownObjectRelease();
        v24 = v27 == v26;
        v22 = &selRef_removeAction_forControlEvents_;
        if (v24)
        {
          if ([*&v3[v21] isTracking])
          {
            v28 = [*&v3[v21] panGestureRecognizer];
            [v28 setEnabled:0];

            sub_100009F78(0, &qword_1011BD580);
            v52 = static OS_dispatch_queue.main.getter();
            static DispatchTime.now()();
            + infix(_:_:)();
            v29 = *(v59 + 8);
            v59 += 8;
            v53 = v29;
            v29(v14, v12);
            v30 = swift_allocObject();
            *(v30 + 16) = v3;
            aBlock[4] = sub_100CDC64C;
            aBlock[5] = v30;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10002BC98;
            aBlock[3] = &unk_1010F7DD0;
            v51 = _Block_copy(aBlock);
            v31 = v3;

            static DispatchQoS.unspecified.getter();
            aBlock[0] = _swiftEmptyArrayStorage;
            v50 = sub_1000298C0(&qword_1011BD588, &type metadata accessor for DispatchWorkItemFlags);
            sub_10010FC20(&qword_1011BD590);
            sub_100029908(&qword_1011BD598, &qword_1011BD590);
            v33 = v54;
            v32 = v55;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v35 = v51;
            v34 = v52;
            OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
            _Block_release(v35);

            v36 = v32;
            v22 = &selRef_removeAction_forControlEvents_;
            (*(v58 + 8))(v33, v36);
            (*(v56 + 8))(v11, v57);
            v53(v16, v12);
          }
        }
      }
    }

    v37 = [(objc_class *)in.super.isa nextFocusedItem];
    v38 = [in.super.isa v22[255]];
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

              sub_100CBF310();
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

void sub_100CD9ACC(uint64_t a1)
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
  sub_100CC2658(0, __src);
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
  v20 = type metadata accessor for Date();
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
    v24 = String._bridgeToObjectiveC()();
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
  sub_100CC2658(0, __src);
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
  v17 = type metadata accessor for Date();
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

id sub_100CDA3C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100CDA620()
{
  _StringGuts.grow(_:)(35);
  v0._object = 0x8000000100E6BB80;
  v0._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v0);
  sub_10010FC20(&qword_1011BBB08);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100CDA6C8()
{
  _StringGuts.grow(_:)(33);
  v0._object = 0x8000000100E6BB60;
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v0);
  sub_10010FC20(&qword_1011BBB08);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

void sub_100CDA764(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(a1 + v8) setContentOffset:{a3, a4}];
  _StringGuts.grow(_:)(65);
  v21 = 0;
  v22 = 0xE000000000000000;
  v9._object = 0x8000000100E6BB20;
  v9._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v9);
  *v20 = a3;
  *&v20[1] = a4;
  _s3__C7CGPointVMa_2(0);
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 0x20726F6620;
  v10._object = 0xE500000000000000;
  String.append(_:)(v10);
  v11 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_100008FE4(a2 + v11, v20);
  sub_10010FC20(&qword_1011BBB08);
  _print_unlocked<A, B>(_:_:)();
  sub_10000959C(v20);
  v13 = v21;
  v12 = v22;
  if (qword_1011BB908 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000060E4(v14, qword_1011BD450);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20[0] = v18;
    *v17 = 136315138;
    v19 = sub_1000109A8(v13, v12, v20);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
    sub_10000959C(v18);
  }

  else
  {
  }
}

void SyncedLyricsViewController.syncedLyrics(_:select:)(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_100CDC7A0(sub_100CDE7F4);
  v6 = a2[3];
  v7 = a2[4];
  sub_10000954C(a2, v6);
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

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

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
        sub_100009F78(0, &qword_1011BD500);
        v29 = sub_100CD38A4(0, 1);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v29).super.isa;
        sub_100CD33DC(a2, isa, 0, 1);
        v31 = swift_allocObject();
        *(v31 + 16) = v3;
        v52 = sub_100CDE7FC;
        v53 = v31;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_10002BC98;
        v51 = &unk_1010F7E20;
        v32 = _Block_copy(&aBlock);
        v33 = v3;

        [(objc_class *)isa addAnimations:v32];
        _Block_release(v32);
        v34 = [(objc_class *)isa state]== 3;
        v33[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = v34;
        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        v52 = sub_100CDE818;
        v53 = v35;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_100338AB8;
        v51 = &unk_1010F7E70;
        v36 = _Block_copy(&aBlock);
        v37 = v33;

        [(objc_class *)isa addCompletion:v36];
        _Block_release(v36);
        [(objc_class *)isa startAnimation];

        v8 = isa;
LABEL_20:

        return;
      }

      if (qword_1011BB908 == -1)
      {
LABEL_12:
        v38 = type metadata accessor for Logger();
        sub_1000060E4(v38, qword_1011BD450);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_1000109A8(0xD000000000000056, 0x8000000100E6B430, &aBlock);
          _os_log_impl(&_mh_execute_header, v39, v40, "%s", v41, 0xCu);
          sub_10000959C(v42);
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

          sub_100020438(v43);
          v47 = v45 - v46;
        }

        else
        {
          v47 = 0.0;
        }

        sub_100CDCB08(a2, 0, 1, v47);
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

uint64_t sub_100CDAF98()
{
  _StringGuts.grow(_:)(32);
  v0._object = 0x8000000100E6BAA0;
  v0._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v0);
  sub_10010FC20(&qword_1011BBB08);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t sub_100CDB034()
{
  result = sub_100CD2BA4();
  v1 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
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
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(v1 + 32);
  }

  v4 = v3;
  sub_100CCDBA8(v3, 2, &v23);
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
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v1 + 8 * v15);
      }

      v17 = v16;
      sub_100CCDBA8(v16, 2, &v23);
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

uint64_t sub_100CDB1E4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
  swift_beginAccess();
  v4 = *(a2 + v3);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
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
    if (v7 && (sub_100009F78(0, &qword_1011BD608), v8 = _.super.isa, v9 = v7, v10 = static NSObject.== infix(_:_:)(), v9, v8, (v10 & 1) != 0))
    {
      v11 = 0;
    }

    else
    {
      sub_100009F78(0, &qword_1011BD600);
      v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      v13 = [*&v3[v12] panGestureRecognizer];
      v14 = static NSObject.== infix(_:_:)();

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

  sub_100009F78(0, &qword_1011BD608);
  v7 = a1.super.isa;
  v8 = v6;
  v9 = static NSObject.== infix(_:_:)();

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
    sub_100CCFCE4();
  }
}

void sub_100CDB718()
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
  v3 = sub_10010FC20(&qword_1011BD610);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_10010FC20(&qword_1011BBA58);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v51 - v10;
  v12 = sub_10010FC20(&qword_1011BD4F0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  v18 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  result = swift_beginAccess();
  v20 = *(v1 + v18);
  if (!v20)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 1;
LABEL_29:
    *a1 = v26;
    a1[1] = v31;
    a1[2] = v27;
    a1[3] = v28;
    a1[4] = v29;
    a1[5] = v30;
    return result;
  }

  v52 = v5;
  v53 = a1;
  v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  swift_beginAccess();
  sub_1000089F8(v1 + v21, v15, &qword_1011BD4F0);
  v22 = type metadata accessor for Lyrics.Translation(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v15, 1, v22) == 1)
  {
    v25 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
    swift_beginAccess();
    sub_1000089F8(v20 + v25, v17, &qword_1011BD4F0);
    LODWORD(v25) = v24(v15, 1, v22);

    if (v25 != 1)
    {
      sub_1000095E8(v15, &qword_1011BD4F0);
    }
  }

  else
  {
    sub_100CE0BF0(v15, v17, type metadata accessor for Lyrics.Translation);
    (*(v23 + 56))(v17, 0, 1, v22);
  }

  if (v24(v17, 1, v22) == 1)
  {
    sub_1000095E8(v17, &qword_1011BD4F0);
    v26 = 0;
    v31 = 0;
  }

  else
  {
    v32 = &v17[*(v22 + 20)];
    v26 = *v32;
    v31 = *(v32 + 1);

    sub_100CE066C(v17, type metadata accessor for Lyrics.Translation);
  }

  v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  swift_beginAccess();
  sub_1000089F8(v1 + v33, v9, &qword_1011BBA58);
  v34 = type metadata accessor for Lyrics.Transliteration(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v9, 1, v34) == 1)
  {
    v37 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
    swift_beginAccess();
    sub_1000089F8(v20 + v37, v11, &qword_1011BBA58);
    if (v36(v9, 1, v34) != 1)
    {
      sub_1000095E8(v9, &qword_1011BBA58);
    }
  }

  else
  {
    sub_100CE0BF0(v9, v11, type metadata accessor for Lyrics.Transliteration);
    (*(v35 + 56))(v11, 0, 1, v34);
  }

  v38 = v36(v11, 1, v34);
  v39 = v52;
  if (v38 == 1)
  {
    sub_1000095E8(v11, &qword_1011BBA58);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v40 = &v11[*(v34 + 20)];
    v27 = *v40;
    v28 = *(v40 + 1);

    sub_100CE066C(v11, type metadata accessor for Lyrics.Transliteration);
  }

  a1 = v53;
  v41 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v42 = *(v1 + v41);
  if (!(v42 >> 62))
  {
    result = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_19;
    }

LABEL_27:

    v50 = type metadata accessor for Lyrics.TextLine(0);
    (*(*(v50 - 8) + 56))(v39, 1, 1, v50);
    goto LABEL_28;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_19:
  v43 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  if ((v42 & 0xC000000000000001) != 0)
  {
LABEL_31:

    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_24:

    v45 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_100008FE4(v44 + v45, v54);

    sub_10010FC20(&qword_1011BBB08);
    v46 = type metadata accessor for Lyrics.TextLine(0);
    v47 = swift_dynamicCast();
    v48 = *(v46 - 8);
    (*(v48 + 56))(v39, v47 ^ 1u, 1, v46);
    if ((*(v48 + 48))(v39, 1, v46) != 1)
    {
      v49 = (v39 + *(v46 + 52));
      v29 = *v49;
      v30 = v49[1];

      result = sub_100CE066C(v39, type metadata accessor for Lyrics.TextLine);
      goto LABEL_29;
    }

LABEL_28:
    result = sub_1000095E8(v39, &qword_1011BD610);
    v29 = 0;
    v30 = 0;
    goto LABEL_29;
  }

  if ((v43 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v43 < *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(v42 + 8 * v43 + 32);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100CDC000(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v27 = *(v8 - 8);
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  v14 = [a2 preferredContentSizeCategory];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v26 = v5;
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      sub_100009F78(0, &qword_1011BD580);
      v22 = static OS_dispatch_queue.main.getter();
      v23 = swift_allocObject();
      *(v23 + 16) = a1;
      aBlock[4] = sub_100CE0F60;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010F89F0;
      v24 = _Block_copy(aBlock);
      v25 = a1;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000298C0(&qword_1011BD588, &type metadata accessor for DispatchWorkItemFlags);
      sub_10010FC20(&qword_1011BD590);
      sub_100029908(&qword_1011BD598, &qword_1011BD590);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v24);

      (*(v26 + 8))(v7, v4);
      return (*(v27 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t sub_100CDC408(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100CC7838(a1, v4, v5, v7, v6);
}

uint64_t sub_100CDC4C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100CDC510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100CC8CF4(a1, v4, v5, v7, v6);
}

unint64_t sub_100CDC5D0()
{
  result = qword_1011BD550;
  if (!qword_1011BD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BD550);
  }

  return result;
}

uint64_t sub_100CDC654(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_100009F78(0, &qword_1011BD500);
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
  result = _CocoaArrayWrapper.endIndex.getter();
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
    result = _CocoaArrayWrapper.endIndex.getter();
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

void sub_100CDC7A0(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  if (qword_1011BB908 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_1011BD450);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    v8 = sub_1000109A8(v1, v3, &v10);

    *(v6 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v5, "%s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }
}

uint64_t sub_100CDC91C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  result = _CocoaArrayWrapper.endIndex.getter();
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
    result = _CocoaArrayWrapper.endIndex.getter();
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

uint64_t sub_100CDCA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
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

  result = _CocoaArrayWrapper.endIndex.getter();
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
    v10 = _CocoaArrayWrapper.endIndex.getter();
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

  sub_1001270A4(result);

  return v12(v5, v3, 0);
}

void sub_100CDCB08(_BOOL8 a1, uint64_t a2, char a3, CGFloat a4)
{
  v5 = v4;
  LOBYTE(v6) = a3;
  sub_100CDC7A0(sub_100CE0E50);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  sub_10000954C(a1, v10);
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
      v38 = _CocoaArrayWrapper.endIndex.getter();
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
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    sub_100009F78(0, &qword_1011BD500);
    v80 = sub_100CD38A4(a2, v6 & 1);
    isa = UIViewPropertyAnimator.init(springTimingParameters:)(v80).super.isa;
    sub_100CD33DC(a1, isa, 1, 1);
    v82 = swift_allocObject();
    *(v82 + 16) = v5;
    v102 = sub_100CE127C;
    v103 = v82;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_10002BC98;
    v101 = &unk_1010F86D0;
    v83 = _Block_copy(&aBlock);
    v84 = v5;

    [(objc_class *)isa addAnimations:v83];
    _Block_release(v83);
    v85 = [(objc_class *)isa state]== 3;
    v84[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = v85;
    v86 = swift_allocObject();
    *(v86 + 16) = v84;
    v102 = sub_100CE12CC;
    v103 = v86;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_100338AB8;
    v101 = &unk_1010F8720;
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
      sub_100CD92D4();
    }

    v64 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_100008FE4(v15 + v64, &aBlock);
    v65 = v101;
    v66 = v102;
    sub_10000954C(&aBlock, v101);
    v67 = (*(v66 + 2))(v65, v66);
    v68 = *&v5[v95];
    if ((v68 & 0xC000000000000001) != 0)
    {

      v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();

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

      sub_100CD3250(v71, v73, v75, v77);
      v79 = v78;

      sub_10000959C(&aBlock);
      sub_100008FE4(v15 + v64, &aBlock);
      sub_100CD5274(&aBlock, v5[v60], a2, v6 & 1, 0, 0.0, v79, v94);

      sub_10000959C(&aBlock);
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

void sub_100CDD2F4(void *a1, uint64_t a2, double a3)
{
  v5 = v3;
  v144 = a1;
  sub_100CDC7A0(sub_100CE0DE0);
  v9 = a1[3];
  v10 = a1[4];
  v142 = a1;
  sub_10000954C(a1, v9);
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
    v140 = v14;
    sub_100008FE4(v4 + v14, &v145);
    v13 = v148;
    v15 = v149;
    sub_10000954C(&v145, v148);
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
    v81 = type metadata accessor for Logger();
    sub_1000060E4(v81, qword_1011BD450);

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v145 = v85;
      *v84 = 136315138;
      v86 = sub_1000109A8(a2, v13, &v145);

      *(v84 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v82, v83, "%s", v84, 0xCu);
      sub_10000959C(v85);
    }

    else
    {
    }

    v87 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_hiddenLineViews;
    swift_beginAccess();
    v141 = v87;
    a2 = *(v5 + v87);
    v134 = v4;
    if ((a2 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for SyncedLyricsLineView();
      sub_1000298C0(&unk_1011BD940, type metadata accessor for SyncedLyricsLineView);
      Set.Iterator.init(_cocoa:)();
      a2 = v145;
      v88 = v146;
      v89 = v147;
      v12 = v148;
      v5 = v149;
    }

    else
    {
      v90 = -1 << *(a2 + 32);
      v88 = a2 + 56;
      v89 = ~v90;
      v91 = -v90;
      if (v91 < 64)
      {
        v92 = ~(-1 << v91);
      }

      else
      {
        v92 = -1;
      }

      v5 = v92 & *(a2 + 56);

      v12 = 0;
    }

    v136 = v89;
    v93 = (v89 + 64) >> 6;
    if (a2 < 0)
    {
      while (1)
      {
        v99 = __CocoaSet.Iterator.next()();
        if (!v99)
        {
          break;
        }

        v151[4] = v99;
        type metadata accessor for SyncedLyricsLineView();
        swift_dynamicCast();
        v98 = v152[0];
        v96 = v12;
        v97 = v5;
        if (!v152[0])
        {
          break;
        }

LABEL_61:
        [v98 setAlpha:{1.0, v134}];
        swift_beginAccess();
        v100 = sub_100C81D0C(v98);
        swift_endAccess();

        v12 = v96;
        v5 = v97;
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }
      }

LABEL_63:
      sub_10005C9F8();
      v101 = v143;
      if (v143[v137])
      {
LABEL_64:

        return;
      }

      [*&v143[v138] contentOffset];
      v103 = v102;
      v105 = v104;
      v106 = [v101 view];
      if (!v106)
      {
        goto LABEL_111;
      }

      v107 = v106;
      [v106 frame];
      v109 = v108;

      v110 = v134;
      v111 = *&v101[v135];
      if (v111 > 0.0)
      {
        goto LABEL_69;
      }

      v112 = [v101 view];
      if (v112)
      {
        v113 = v112;
        [v112 frame];
        v111 = v114;

LABEL_69:
        sub_100008FE4(v110 + v140, v152);
        v64 = sub_100CD2DF4(v152, v103, v105, v109, v111);
        sub_10000959C(v152);

        sub_100CD3AEC(v115);

        v116 = &v101[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
        swift_beginAccess();
        if (v116[658] != 1)
        {
          goto LABEL_107;
        }

        if (!(v64 >> 62))
        {
          v117 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v117)
          {
            goto LABEL_72;
          }

LABEL_107:

          return;
        }

LABEL_106:
        v117 = _CocoaArrayWrapper.endIndex.getter();
        if (!v117)
        {
          goto LABEL_107;
        }

LABEL_72:
        if (v117 >= 1)
        {
          v118 = 0;
          v140 = v64 & 0xC000000000000001;
          do
          {
            if (v140)
            {
              v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v121 = *(v64 + 8 * v118 + 32);
            }

            v122 = v121;
            v123 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            sub_100008FE4(v122 + v123, v152);
            v124 = v153;
            v125 = v154;
            sub_10000954C(v152, v153);
            v126 = (*(v125 + 16))(v124, v125);
            v128 = v142[3];
            v127 = v142[4];
            sub_10000954C(v142, v128);
            v129 = (*(v127 + 16))(v128, v127);
            sub_10000959C(v152);
            if (v126 < v129)
            {
              [v122 setAlpha:0.0];
              swift_beginAccess();
              v119 = v122;
              sub_100C7F89C(v151, v119);
              v120 = v151[0];
              swift_endAccess();
            }

            else
            {
            }

            ++v118;
          }

          while (v117 != v118);
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
    v94 = v12;
    v95 = v5;
    v96 = v12;
    if (v5)
    {
LABEL_57:
      v97 = (v95 - 1) & v95;
      v98 = *(*(a2 + 48) + ((v96 << 9) | (8 * __clz(__rbit64(v95)))));
      if (v98)
      {
        goto LABEL_61;
      }

      goto LABEL_63;
    }

    while (1)
    {
      v96 = (v94 + 1);
      if (__OFADD__(v94, 1))
      {
        break;
      }

      if (v96 >= v93)
      {
        goto LABEL_63;
      }

      v95 = *(v88 + 8 * v96);
      ++v94;
      if (v95)
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

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

LABEL_95:

  v132 = specialized _ArrayBuffer._getElementSlowPath(_:)();

  v18 = v132;
LABEL_9:
  v19 = v18;
  v20 = UIView.untransformedFrame.getter();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_100CD3250(v20, v22, v24, v26);
  v28 = v27;

  v143 = v5;
  sub_10000959C(&v145);
  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v30 = *&v143[v29];
  v145 = v4;
  __chkstk_darwin();
  v133[2] = &v145;
  v5 = v143;

  v31 = sub_100C5CD64(sub_100CE12B0, v133, v30);

  v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v5 + v32) != 2 || (v31 & 1) != 0)
  {
    v137 = v32;
    v40 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v138 = v40;
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
    v135 = v49;
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

    v139 = v4;
    [v139 frame];
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
      sub_100008FE4(v142, &v145);
      sub_10010FC20(&qword_1011BBB08);
      if (swift_dynamicCast() & 1) == 0 && (a2)
      {

        if (qword_1011BB908 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_105;
      }
    }

    sub_100008FE4(v142, &v145);
    sub_10010FC20(&qword_1011BBB08);
    if (!swift_dynamicCast())
    {
      goto LABEL_36;
    }

    v63 = v142[3];
    v64 = v142[4];
    sub_10000954C(v142, v63);
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

    v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();

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
        v72 = v139;
        *&v70[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = v139;
        v73 = v72;

        if (v31)
        {
          sub_100CAB134(a3);

          v5 = v143;
          goto LABEL_38;
        }

        sub_100CAA86C(a3);
        v5 = v143;
      }
    }

LABEL_36:
    if (!(v31 & 1 | ((a2 & 1) == 0)))
    {
      sub_100008FE4(v4 + v140, &v145);
      sub_100CD33DC(&v145, 0, 1, 0);
      sub_10000959C(&v145);
    }

LABEL_38:
    v74 = v139;
    UIView.untransformedFrame.getter();
    a3 = v75;

    memset(v155, 0, sizeof(v155));
    v156 = 1;
    sub_100CCDBA8(v74, 2, v155);
    if (v76 == a3)
    {
      goto LABEL_42;
    }

    sub_100008FE4(v4 + v140, &v145);
    v77 = v148;
    v64 = v149;
    sub_10000954C(&v145, v148);
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
    a2 = _CocoaArrayWrapper.endIndex.getter();
    if (a2 < v63)
    {
LABEL_104:
      __break(1u);
LABEL_105:
      swift_once();
LABEL_22:
      v58 = type metadata accessor for Logger();
      sub_1000060E4(v58, qword_1011BD450);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v145 = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_1000109A8(0xD00000000000002BLL, 0x8000000100E6BAF0, &v145);
        _os_log_impl(&_mh_execute_header, v59, v60, "%s", v61, 0xCu);
        sub_10000959C(v62);
      }

      sub_100CD92D4();
      sub_100CDCB08(v142, 0, 1, a3);
      goto LABEL_64;
    }

LABEL_41:
    sub_10000959C(&v145);
    if (v63 != a2)
    {
      if (v63 < a2)
      {
        while (1)
        {
          v130 = *&v12[v5];
          if ((v130 & 0xC000000000000001) != 0)
          {

            v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v63 < 0)
            {
              goto LABEL_91;
            }

            if (v63 >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_92;
            }

            v131 = *(v130 + 8 * v63 + 32);
          }

          ++v63;
          sub_100CCF9F0(v131);

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
    sub_100CD92D4();
    [*(v5 + v138) setContentOffset:{0.0, v28}];
    v145 = 0;
    v146 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    v80._object = 0x8000000100E6BAC0;
    v80._countAndFlagsBits = 0xD000000000000027;
    String.append(_:)(v80);
    v152[0] = 0;
    *&v152[1] = v28;
    _s3__C7CGPointVMa_2(0);
    _print_unlocked<A, B>(_:_:)();
    a2 = v145;
    v13 = v146;
    if (qword_1011BB908 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_99;
  }

  sub_100CD92D4();
  v33 = swift_allocObject();
  *(v33 + 2) = v5;
  v33[3] = 0.0;
  v33[4] = v28;
  *(v33 + 5) = v4;
  v34 = objc_allocWithZone(UIViewPropertyAnimator);
  v149 = sub_100CE0E40;
  v150 = v33;
  v145 = _NSConcreteStackBlock;
  v146 = 1107296256;
  v147 = sub_10002BC98;
  v148 = &unk_1010F8680;
  v35 = _Block_copy(&v145);
  v36 = v5;
  v37 = v4;

  v38 = [v34 initWithDuration:3 curve:v35 animations:0.25];
  _Block_release(v35);
  if (a2)
  {
    sub_100008FE4(v4 + v140, &v145);
    v39 = v38;
    sub_100CD33DC(&v145, v38, 1, 1);

    sub_10000959C(&v145);
  }

  [v38 startAnimation];
}

uint64_t _s7LyricsX06SyncedA14ViewControllerC06syncedA14DesectAllLinesyyAA0bA7ManagerCF_0()
{
  v1 = v0;
  if (qword_1011BB908 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1011BD450);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000109A8(0xD000000000000023, 0x8000000100E6BA40, v25);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000959C(v6);
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
      sub_100009F78(0, &qword_1011BD500);
      v10 = sub_100CD38A4(0, 1);
      v11.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)(v10).super.isa;
      v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
      result = swift_beginAccess();
      v13 = *&v1[v12];
      if (v13 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
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
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v17 = *(v13 + 8 * i + 32);
            }

            v18 = v17;
            v19 = v11.super.isa;
            sub_100CB43DC(0, v11.super.isa);

            if (v15[657] != 1 || (v20 = [v1 traitCollection], v21 = objc_msgSend(v20, "accessibilityContrast"), v20, v21 == 1))
            {
            }

            else
            {
              sub_100CB4888(1, 3.0);
              swift_beginAccess();
              sub_100C7F89C(&v24, v18);
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

void sub_100CDE6BC(void *a1, double a2)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
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

  v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_5:
  v11 = *&v10[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  v12 = v11;

  if (v11)
  {
    _s23InstrumentalContentViewCMa();
    if (swift_dynamicCastClass())
    {
      v13 = v12;
      sub_100CAB134(a2);
    }
  }
}

void sub_100CDE834(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011BD610);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008FE4(a1, v26);
  sub_10010FC20(&qword_1011BBB08);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if ((v10 & 1) == 0)
  {
    v11(v5, 1, 1, v6);
    sub_1000095E8(v5, &qword_1011BD610);
    return;
  }

  v11(v5, 0, 1, v6);
  sub_100CE0BF0(v5, v9, type metadata accessor for Lyrics.TextLine);
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

          sub_1002AD8C8(v26, &v25);
          sub_100C9FECC(v26);
          sub_100C9C2C4(v26);

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
    sub_100CE066C(v9, type metadata accessor for Lyrics.TextLine);

    return;
  }

LABEL_14:

LABEL_15:
  sub_100CE066C(v9, type metadata accessor for Lyrics.TextLine);
}

void sub_100CDEBCC()
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
      if (!_CocoaArrayWrapper.endIndex.getter())
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

      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    sub_1000089F8(&v0[v5], &aBlock, &qword_1011BD4B8);
    v6 = v38;
    if (v38)
    {
      v7 = v39;
      sub_10000954C(&aBlock, v38);
      v8 = *(v6 - 1);
      v9 = __chkstk_darwin();
      v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      sub_1000095E8(&aBlock, &qword_1011BD4B8);
      v12 = v0;
      v13 = v7[1](v6, v7);
      v14 = (*(v8 + 8))(v11, v6);
      v15 = v13(v14);

      sub_100CD92D4();
      v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
      v16 = v4;
      v17 = UIView.untransformedFrame.getter();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      sub_100CD3250(v17, v19, v21, v23);
      v25 = v24;
      v26 = objc_opt_self();
      v27 = swift_allocObject();
      *(v27 + 2) = v12;
      v27[3] = 0.0;
      *(v27 + 4) = v25;
      v39 = sub_100CE0D2C;
      v40 = v27;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_10002BC98;
      v38 = &unk_1010F8518;
      v28 = _Block_copy(&aBlock);
      v29 = v12;

      v30 = swift_allocObject();
      *(v30 + 2) = v29;
      *(v30 + 3) = v16;
      v30[4] = 0.0;
      *(v30 + 5) = v25;
      v30[6] = v15;
      v39 = sub_100CE0D94;
      v40 = v30;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_1005C3688;
      v38 = &unk_1010F8568;
      v31 = _Block_copy(&aBlock);
      v32 = v16;
      v33 = v29;

      [v26 animateWithDuration:v28 animations:v31 completion:0.25];
      _Block_release(v31);
      _Block_release(v28);
    }

    else
    {

      sub_1000095E8(&aBlock, &qword_1011BD4B8);
    }
  }
}

void sub_100CDF010()
{
  v3 = v1;
  v4 = sub_100CD2BA4();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v7 = off_1011BD000;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = off_1011BD000;
    if (v6)
    {
LABEL_3:
      if (v6 >= 1)
      {
        v8 = 0;
        v9 = v7[142];
        v10 = v5 & 0xC000000000000001;
        v11 = &OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
        v45 = v9;
        v46 = v5;
        while (1)
        {
          if (v10)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

          v16 = *(v9 + v3);
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

        v21 = sub_100030444(v20);
        v22 = v20(v21);
        swift_beginAccess();
        if (*(v16 + 88) == 1)
        {
          v23 = Lyrics.spatialOffset.getter();
          sub_100020438(v20);
        }

        else
        {

          sub_100020438(v20);
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
            sub_100C83C9C(1, v24);

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
              sub_100C83C9C(1, v24);

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
  v35 = _CocoaArrayWrapper.endIndex.getter();
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

    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();

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

    v41 = sub_100C5CD64(sub_100CE12B0, v44, v40);

    if ((v41 & 1) == 0)
    {
      v42 = *(v3 + v0);
      *(v3 + v0) = 0;

      sub_100CD8A78(v6, v39);
      sub_100CB42B0();
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_100CDF4B0(void *a1)
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

  sub_100CD4E68();
  sub_100CD92D4();
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

    __CocoaSet.makeIterator()();
    type metadata accessor for SyncedLyricsLineView();
    sub_1000298C0(&unk_1011BD940, type metadata accessor for SyncedLyricsLineView);
    Set.Iterator.init(_cocoa:)();
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

      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_29:
      sub_100CB4CB0(0, 1);

      sub_10000959C(aBlock);
LABEL_32:
      v36 = objc_opt_self();
      v37 = swift_allocObject();
      *(v37 + 16) = v1;
      v43 = sub_100CE0DAC;
      v44 = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      v42 = &unk_1010F8630;
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
      v27 = sub_100C81D0C(v25);
      swift_endAccess();

      v15 = v23;
      v16 = v24;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      v26 = __CocoaSet.Iterator.next()();
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
  sub_10005C9F8();
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
  sub_1000089F8(v28 + v29, &v45, &qword_1011BBB10);
  if (!*(&v46 + 1))
  {
LABEL_31:
    sub_1000095E8(&v45, &qword_1011BBB10);
    goto LABEL_32;
  }

  sub_100059A8C(&v45, aBlock);
  v30 = v42;
  v31 = v43;
  sub_10000954C(aBlock, v42);
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
    aBlock[4] = sub_100CE0DA4;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10027D328;
    aBlock[3] = &unk_1010F85E0;
    v4 = _Block_copy(aBlock);

    v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:3.0];
    _Block_release(v4);
    v6 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer);
    *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer) = v5;
  }
}

void sub_100CDFD20(unint64_t a1, double a2, double a3)
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

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
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
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
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
    v33 = _CocoaArrayWrapper.endIndex.getter();
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
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v37 = *(v32 + 8 * v34 + 32);
    }

    v38 = v37;
    v39 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_100008FE4(v38 + v39, aBlock);
    sub_10010FC20(&qword_1011BBB08);
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
    sub_1000089F8(v53 + v54, &v93, &qword_1011BBB10);
    if (*(&v94 + 1))
    {
      sub_100059A8C(&v93, aBlock);
      v55 = v90;
      v56 = v91;
      sub_10000954C(aBlock, v90);
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
          sub_10000959C(aBlock);
          goto LABEL_56;
        }

        __break(1u);
LABEL_73:
        __break(1u);
        return;
      }

LABEL_70:

      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_53;
    }
  }

  else
  {
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
  }

  sub_1000095E8(&v93, &qword_1011BBB10);
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
  sub_100008FE4(v88 + v65, aBlock);
  v66 = *v27;
  swift_beginAccess();
  sub_1002190E0(aBlock, v61 + v66, &qword_1011BBB10);
  swift_endAccess();
  sub_100CBE448();
  sub_1000095E8(aBlock, &qword_1011BBB10);
  [v61 setAlpha:0.0];
  sub_100CCFCE4();
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
    sub_100CB4CB0(0, 1);
  }

  sub_100CB4CB0(1, 1);
  v70 = objc_opt_self();
  v71 = swift_allocObject();
  *(v71 + 16) = v61;
  v91 = sub_1001D2178;
  v92 = v71;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  v90 = &unk_1010F85B8;
  v72 = _Block_copy(aBlock);
  v73 = v61;

  [v70 animateWithDuration:v72 animations:0.2];
  _Block_release(v72);
  v74 = v88;
  v75 = UIView.untransformedFrame.getter();
  v77 = v76;
  v79 = v78;
  v81 = v80;

  sub_100CD3250(v75, v77, v79, v81);
  *v84 = 0;
  v84[1] = v82;
}

uint64_t sub_100CE066C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100CE06D0()
{
  result = qword_1011BD618;
  if (!qword_1011BD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BD618);
  }

  return result;
}

void sub_100CE074C()
{
  type metadata accessor for Lyrics.TextLine(319);
  if (v0 <= 0x3F)
  {
    sub_100009F78(319, &qword_1011BC570);
    if (v1 <= 0x3F)
    {
      _s3__C15NSTextAlignmentOMa_0(319);
      if (v2 <= 0x3F)
      {
        _s3__C6CGRectVMa_2(319);
        if (v3 <= 0x3F)
        {
          _s3__C17CGAffineTransformVMa_1(319);
          if (v4 <= 0x3F)
          {
            sub_10001F928();
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

void sub_100CE0850()
{
  sub_100CE1158(319, &unk_1011BD710, type metadata accessor for Lyrics.Translation);
  if (v0 <= 0x3F)
  {
    sub_100CE1158(319, &unk_1011BBBC8, type metadata accessor for Lyrics.Transliteration);
    if (v1 <= 0x3F)
    {
      sub_100CE1158(319, &qword_1011BD720, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100CE0BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100CE0C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_100CE0CD8()
{
  v1 = *(v0 + 16);
  [v1 setHidden:0];

  return [v1 setHighlighted:0];
}

id sub_100CE0D2C()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  return [*(v1 + v4) setContentOffset:{v2, v3}];
}

id sub_100CE0DB0()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_100CE0EA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100009648(a1, v4);
}

void sub_100CE1020()
{
  sub_100CE10F4();
  if (v0 <= 0x3F)
  {
    sub_100CE1158(319, &qword_1011BCE00, type metadata accessor for Lyrics.TextLine);
    if (v1 <= 0x3F)
    {
      sub_100CE1158(319, &unk_1011BDA10, type metadata accessor for Lyrics.Translation.Line);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100CE10F4()
{
  result = qword_1011BDA00;
  if (!qword_1011BDA00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1011BDA00);
  }

  return result;
}

void sub_100CE1158(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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
  sub_100CE180C();
  sub_100CE1B40();

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
  sub_100CE180C();
  sub_100CE1B40();

  return v19;
}

uint64_t sub_100CE1624(uint64_t result, uint64_t a2, char a3)
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
  sub_100CE1918();
}

void sub_100CE180C()
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

  sub_100CE1918();
}

void sub_100CE1918()
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

id sub_100CE1B40()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView) layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  sub_10010FC20(&qword_1011BC168);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100EBDC20;
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
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors:isa];

  v11 = *(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView);
  v12 = *(v0 + v4);

  return [v11 setBackgroundColor:v12];
}

id sub_100CE1EAC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100CE1EE8()
{
  result = qword_1011BDA88;
  if (!qword_1011BDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BDA88);
  }

  return result;
}

unint64_t sub_100CE1FB8()
{
  result = qword_1011BDAE0;
  if (!qword_1011BDAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011BDAE0);
  }

  return result;
}

void sub_100CE2004()
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
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *JSApplicationMessageTarget.reporter.unsafeMutableAddressor()
{
  if (qword_1011BDAF0 != -1)
  {
    swift_once();
  }

  return &static JSApplicationMessageTarget.reporter;
}

uint64_t static JSApplicationMessageTarget.reporter.getter()
{
  if (qword_1011BDAF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t static JSApplicationMessageTarget.reporter.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1011BDAF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_10121D310 = a2;
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
  if (qword_1011BDAF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = qword_10121D310;
  *(v3 + 24) = Strong;
  *(v3 + 32) = v5;
  return sub_100CE2314;
}

void sub_100CE2314(uint64_t a1, char a2)
{
  v3 = *a1;
  qword_10121D310 = *(*a1 + 32);
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
  sub_100CE2574(v6, v7);
}

void sub_100CE2574(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_targetIdentifier];
  swift_beginAccess();
  v6 = a1;
  v7 = a2;
  v8 = *v5;
  v9 = *(v5 + 1);
  v10 = *v5 == v6 && v9 == v7;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      if (qword_1011BDAF0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = qword_10121D310;
        ObjectType = swift_getObjectType();
        (*(v12 + 8))(v2, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      if (qword_1011BDAF8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_100CE40A8(&v14, v2);
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

  return sub_100CE27B4;
}

void sub_100CE27B4(uint64_t a1, char a2)
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

    sub_100CE2574(v9, v8);
  }

  else
  {
    sub_100CE2574(v9, v8);
  }

  free(v2);
}

id sub_100CE2848@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_priorityMessage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_100CE28B0(void **a1, uint64_t *a2)
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
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (countAndFlagsBits == 0xD000000000000024 && 0x8000000100E6DA10 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_10000DD18(arguments._rawValue + 32, v19);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        if (qword_1011BDAF0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = qword_10121D310;
          ObjectType = swift_getObjectType();
          (*(v11 + 24))(v17, v18, v3, ObjectType, v11);
LABEL_23:
          swift_unknownObjectRelease();
        }
      }

      else if (countAndFlagsBits == 0xD000000000000027 && 0x8000000100E6DA40 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_10000DD18(arguments._rawValue + 32, v19);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        if (qword_1011BDAF0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = qword_10121D310;
          v14 = swift_getObjectType();
          (*(v13 + 32))(v17, v18, v3, v14, v13);
          goto LABEL_23;
        }
      }

      else
      {
        if ((countAndFlagsBits != 0xD00000000000002ALL || 0x8000000100E6DA70 != object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return;
        }

        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_10000DD18(arguments._rawValue + 32, v19);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        Array.subscript.getter(&type metadata for Any + 8, v19);
        if (!v20)
        {

          sub_1000095E8(v19, &unk_101183F30);
          return;
        }

        if (swift_dynamicCast())
        {
          if (qword_1011BDAF0 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v15 = qword_10121D310;
            v16 = swift_getObjectType();
            (*(v15 + 40))(v17, v18, v17, v18, v3, v16, v15);
            swift_unknownObjectRelease();
          }
        }
      }

      return;
    }
  }

  if (qword_1011BDAF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = qword_10121D310;
    v9 = swift_getObjectType();
    (*(v8 + 16))(v3, v9, v8);
    swift_unknownObjectRelease();
  }

  if (qword_1011BDAF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = sub_100CE4B7C(v3);
  swift_endAccess();
}

uint64_t JSApplicationMessageTarget.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_1000089F8(a3, v14, &unk_101183F30);
  if (v14[3])
  {
    sub_1000089F8(v14, v12, &unk_101183F30);

    if (swift_dynamicCast())
    {
      if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = (v3 + OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_targetIdentifier);
        swift_beginAccess();
        v7 = *v6;
        v8 = v6[1];
        *v6 = v10;
        v6[1] = v11;
        sub_100CE2574(v7, v8);

        sub_10000959C(v12);
        sub_1000095E8(v14, &unk_101183F30);
      }
    }

    sub_10000959C(v12);
  }

  else
  {
  }

  return sub_1000095E8(v13, &unk_1011C0D90);
}

void sub_100CE30C4()
{
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100CE4E54(_swiftEmptyArrayStorage);
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

  qword_1011BDB00 = v0;
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

void sub_100CE31A0()
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
  return JSThread.init(name:)(0xD000000000000018, 0x8000000100E6DAA0);
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
  sub_10010FC20(&qword_1011BDD00);
  swift_allocObject();
  return WeakValuesDictionary.init()();
}

id variable initialization expression of JSLocalStorage.scriptingUserDefaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
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
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
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
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  sub_100009F78(0, &qword_101182960);
  static DispatchQoS.unspecified.getter();
  v5[1] = _swiftEmptyArrayStorage;
  sub_100CE6250(&qword_101187210, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10010FC20(&qword_101187218);
  sub_100503818();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of JSThread.scriptingThreadIdentifier()
{
  v0 = [objc_allocWithZone(NSUUID) init];
  v1 = [v0 UUIDString];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

uint64_t sub_100CE3A18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_10010FC20(a1);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_100CE3A80@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

Swift::Int sub_100CE3C7C()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100CE3CE0()
{
  sub_100CE6250(&qword_1011BDEA8, type metadata accessor for HTTPCookiePropertyKey);
  sub_100CE6250(&qword_1011BDEB0, type metadata accessor for HTTPCookiePropertyKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100CE3D9C()
{
  sub_100CE6250(&qword_1011BDE98, type metadata accessor for ICStoreArtworkInfoCropStyle);
  sub_100CE6250(&qword_1011BDEA0, type metadata accessor for ICStoreArtworkInfoCropStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100CE3E58()
{
  sub_100CE6250(&qword_1011BE000, type metadata accessor for FileAttributeKey);
  sub_100CE6250(&qword_1011BE008, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100CE3F14()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100CE3F80()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100CE3FEC()
{
  sub_100CE6250(&qword_1011BDE88, type metadata accessor for ICStorePlatformKeyProfile);
  sub_100CE6250(&qword_1011BDE90, type metadata accessor for ICStorePlatformKeyProfile);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100CE40A8(void *a1, void *a2)
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

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for JSApplicationMessageTarget();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100CE42B8(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_100CE4494();
    }

    v18 = v8;
    sub_10066FD84(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for JSApplicationMessageTarget();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_100CE46BC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

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

Swift::Int sub_100CE42B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_1011BDF88);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for JSApplicationMessageTarget();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_100CE4494();
        }

        v2 = v14;
        result = NSObject._rawHashValue(seed:)(*(v14 + 40));
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

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100CE4494()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011BDF88);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      result = NSObject._rawHashValue(seed:)(*(v4 + 40));
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

void sub_100CE46BC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100CE4494();
  }

  else
  {
    if (v7 > v6)
    {
      sub_100CE4818();
      goto LABEL_12;
    }

    sub_100CE4968();
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for JSApplicationMessageTarget();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

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
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_100CE4818()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BDF88);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

uint64_t sub_100CE4968()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011BDF88);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      result = NSObject._rawHashValue(seed:)(v15);
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

uint64_t sub_100CE4B7C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100CE4D00();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for JSApplicationMessageTarget();
  v9 = NSObject._rawHashValue(seed:)(*(v3 + 40));
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
    v14 = static NSObject.== infix(_:_:)();

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
    sub_100CE4818();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_10019745C(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_100CE4D00()
{
  v1 = v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_100CE42B8(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    type metadata accessor for JSApplicationMessageTarget();
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = static NSObject.== infix(_:_:)();

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
  sub_10019745C(v8);
  result = static NSObject.== infix(_:_:)();
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

void sub_100CE4E54(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10010FC20(&qword_1011BDF88);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
      v8 = sub_100D00F2C(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
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
          v19 = static NSObject.== infix(_:_:)();

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
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
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
          v33 = static NSObject.== infix(_:_:)();

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

uint64_t sub_100CE5118(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = objc_allocWithZone(type metadata accessor for JSApplicationMessage());
    v5 = a1;
    v6 = sub_100D9205C(v5);

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

  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v10 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBDC20;
  *(v11 + 56) = type metadata accessor for JSApplicationMessageTarget();
  *(v11 + 32) = v2;
  v12 = OBJC_IVAR____TtC11MusicJSCore26JSApplicationMessageTarget_priorityMessage;
  swift_beginAccess();
  v13 = *&v2[v12];
  *(v11 + 88) = sub_100009F78(0, &qword_101197A30);
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
  sub_100009F78(0, &qword_101182960);
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = _swiftEmptyArrayStorage;
  *(v18 + 32) = 0xD000000000000019;
  *(v18 + 40) = 0x8000000100E6DBC0;
  *(v18 + 48) = v2;
  *(v18 + 56) = v10;
  *(v18 + 64) = 0;
  v19 = v2;
  v20 = v13;
  v21 = v10;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v18);
}

unint64_t sub_100CE5378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BDF10);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v17, &qword_1011BDF18);
      v5 = v17;
      v6 = v18;
      result = sub_100CE8F84(v17, v18);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100CE54C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BDF00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, v11, &qword_1011BDF08);
      result = sub_100CE8F18(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_100CE6834(v11, v3[6] + 32 * result);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100CE55E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BDED0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, v13, &qword_1011BDED8);
      result = sub_1000160B4(v13);
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

unint64_t sub_100CE5708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BDF80);
    v3 = static _DictionaryStorage.allocate(capacity:)();

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

      result = sub_100019C10(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100CE5848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BDEB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100019C10(v5, v6);
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

unint64_t sub_100CE594C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BDF28);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    while (1)
    {
      v5 = *v4;

      result = sub_100CEC488();
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

unint64_t sub_100CE5A28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BDEC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100CEC7D8(v6);
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

unint64_t sub_100CE5B28(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10010FC20(&qword_1011BDEE0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_100C309F0(v4);
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
    result = sub_100C309F0(v4);
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

unint64_t sub_100CE5C38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BDF30);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100019C10(v5, v6);
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

unint64_t sub_100CE5D50(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BDEF0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011BDEF8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011BDEF0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100019C10(*v5, v12);
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
      result = sub_1008BDD2C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
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

unint64_t sub_100CE5F24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BDF78);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i = (i + 40))
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v16 = *i;
      v7 = *(i - 3);
      v8 = v6;
      v9 = v16;

      result = sub_100CE9050(v7, v5, v8);
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

unint64_t sub_100CE6070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BDF70);
    v3 = static _DictionaryStorage.allocate(capacity:)();

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
      result = sub_100CE9050(v9, v5, v10);
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

uint64_t sub_100CE6250(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100CE64EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BDF48);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v11, &qword_1011BDF50);
      v5 = v11;
      result = sub_100CEC7D8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100016270(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100CE663C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10010FC20(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_100019C10(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_100CE6738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BDEE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100019C10(v5, v6);
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
  sub_100030444(v1);
  return v1;
}

uint64_t JSModelMetricsReporter.snapshotImpressionProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_100020438(v5);
}

uint64_t JSModelMetricsReporter.report(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);
  if (v4)
  {

    v6 = v4(v5);
    sub_100020438(v4);
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
  sub_100020438(*(v0 + 40));
  return v0;
}

uint64_t JSModelMetricsReporter.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();
  sub_100020438(*(v0 + 40));

  return swift_deallocClassInstance();
}

void sub_100CE7038(void **a1, uint64_t *a2)
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

uint64_t sub_100CE7134@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t JSSocialMediaItem.accessorySocialProfiles.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100CE7254(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = sub_100DED1D4(v6, a1);

  if ((v4 & 1) == 0)
  {
    return (*((swift_isaMask & *v3) + 0x2F0))(result);
  }

  return result;
}

uint64_t sub_100CE73BC()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011BE120);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100CE7434(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BE170);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BE120);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t JSSocialMediaItem.$accessorySocialProfiles.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011BE120);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t JSSocialMediaItem.didSelectFollowButton(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(NSUUID) init];
  v5 = [v4 UUIDString];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000189C0(a1, v22);
  v10 = swift_allocObject();
  v11 = v22[1];
  *(v10 + 24) = v22[0];
  *(v10 + 16) = v9;
  *(v10 + 40) = v11;
  v23[0] = sub_100CE79CC;
  v23[1] = v10;
  v23[2] = 0;
  v23[3] = 0xE000000000000000;
  v23[4] = 0;
  v12 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_pendingFollowButtonSelectionPerformedContexts;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *&v2[v12];
  *&v2[v12] = 0x8000000000000000;
  sub_100CEA678(v23, v6, v8, isUniquelyReferenced_nonNull_native);

  *&v2[v12] = v21;
  swift_endAccess();
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v14 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100EBDC20;
  v16 = type metadata accessor for JSSocialMediaItem();
  *(v15 + 32) = v2;
  *(v15 + 88) = &type metadata for String;
  *(v15 + 56) = v16;
  *(v15 + 64) = v6;
  *(v15 + 72) = v8;
  sub_100009F78(0, &qword_101182960);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = _swiftEmptyArrayStorage;
  *(v17 + 32) = 0xD000000000000026;
  *(v17 + 40) = 0x8000000100E6DCD0;
  *(v17 + 48) = v2;
  *(v17 + 56) = v14;
  *(v17 + 64) = 0;
  v18 = v2;
  v19 = v14;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v17);
}

void sub_100CE78D8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      sub_1000189C0(a3, v8);
      memset(v10, 0, sizeof(v10));
      v9[1] = 0;
      v9[2] = 0;
      v9[0] = v6;
      v7 = a1;
      sub_100CEC714(v8, v10);
      if (qword_1011BDB80 != -1)
      {
        swift_once();
      }

      JSSegueCoordinator.perform(segue:with:)(v7, v9);

      sub_100CEC784(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_100CE79D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a1)
  {
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9 = *(a1 + 8);
    v19 = *a1;
    v20 = v9;
    v21 = v8;
    v22 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100CEA678(&v19, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v12 = sub_100019C10(a2, a3);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_100DD87D0();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 40 * v12 + 32);

      result = sub_100CE9834(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_100CE7AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100016270(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1006C5E68(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1000095E8(a1, &unk_101183F30);
    sub_10040824C(a2, a3, v9);

    return sub_1000095E8(v9, &unk_101183F30);
  }

  return result;
}

unint64_t sub_100CE7BCC(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v1;
    result = sub_100CEAAA0(a1, isUniquelyReferenced_nonNull_native);
    *v1 = v10;
  }

  else
  {
    result = sub_100CEC488();
    if (v6)
    {
      v7 = result;
      v8 = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v1;
      v11 = *v2;
      if (!v8)
      {
        sub_100DD8E28();
        v9 = v11;
      }

      result = sub_100CE9EBC(v7, v9);
      *v2 = v9;
    }
  }

  return result;
}

void sub_100CE7C80(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    sub_100CEACF8(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v21;
  }

  else
  {
    v12 = sub_100CE9050(a3, a4, a5);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v22 = *v6;
      if (!v15)
      {
        sub_100DD90E8();
        v16 = v22;
      }

      v17 = *(v16 + 48) + 24 * v14;
      v18 = *v17;

      v19 = *(*(v16 + 56) + 16 * v14);

      sub_100CEA060(v14, v16);
      *v6 = v16;
    }

    else
    {
    }
  }
}

void sub_100CE7DD4(uint64_t a1, void *a2, char a3)
{
  if (*a1 == 1)
  {
    sub_1000095E8(a1, &qword_1011BE1E0);
    sub_100D85884(a2, a3 & 1, v9);

    sub_1000095E8(v9, &qword_1011BE1E0);
  }

  else
  {
    v6 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v6;
    v9[2] = *(a1 + 32);
    v10 = *(a1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_100CEB040(v9, a2, a3 & 1, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }
}

uint64_t sub_100CE7EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_1011BE1D8);
  __chkstk_darwin();
  v8 = &v15 - v7;
  type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1000095E8(a1, &qword_1011BE1D8);
    sub_100D85950(a2, a3, v8);

    return sub_1000095E8(v8, &qword_1011BE1D8);
  }

  else
  {
    sub_1008BDD2C(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_100CEB18C(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }

  return result;
}

uint64_t sub_100CE8070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1006C56AC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_100019C10(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1006C7FA4();
        v16 = v18;
      }

      result = sub_100CEA4C8(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

Swift::Void __swiftcall JSSocialMediaItem.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (_._countAndFlagsBits == 0xD00000000000001DLL && 0x8000000100E6DD00 == _._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_10000DD18(arguments._rawValue + 32, v18);
      sub_10010FC20(&qword_1011BE110);
      if (swift_dynamicCast())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        sub_100CE88D0(v16, sub_100CEB4BC);
        sub_100CE7254(*&v18[0]);
      }
    }
  }

  else if (countAndFlagsBits == 0xD00000000000002ELL && 0x8000000100E6DD20 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(arguments._rawValue + 2) == 2)
    {
      sub_10000DD18(arguments._rawValue + 64, v18);
      type metadata accessor for JSSegue();
      if (swift_dynamicCast())
      {
        sub_10000DD18(arguments._rawValue + 32, v18);
        if (swift_dynamicCast())
        {
          v6 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_pendingFollowButtonSelectionPerformedContexts;
          swift_beginAccess();
          v7 = *(v2 + v6);
          if (*(v7 + 16))
          {

            v8 = sub_100019C10(v16, v17);
            if (v9)
            {
              v10 = *(v7 + 56) + 40 * v8;
              v15 = *v10;
              v11 = *(v10 + 32);

              v19 = 0;
              memset(v18, 0, sizeof(v18));
              swift_beginAccess();
              sub_100CE79D8(v18, v16, v17);
              swift_endAccess();
              v12 = v16;
              v15();

              return;
            }
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v13 = countAndFlagsBits;
    v14 = object;

    JSMediaItem.invokeMethod(_:arguments:)(*&v13, arguments);
  }
}

uint64_t JSSocialMediaItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_1000189C0(a3, v14);
  if (v14[3])
  {
    sub_1000189C0(v14, v12);

    sub_10010FC20(&qword_1011BE110);
    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000017 && 0x8000000100E6DD70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100CE7254(v10);
LABEL_14:
        sub_10000959C(v12);
        sub_1000095E8(v14, &unk_101183F30);
      }
    }

    type metadata accessor for JSArtwork();
    if (swift_dynamicCast())
    {
      if (a1 == 0xD00000000000001ALL && 0x8000000100E6DD50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_backgroundAccessoryArtwork;
        swift_beginAccess();
        v8 = *(v3 + v7);
        *(v3 + v7) = v11;

        goto LABEL_14;
      }
    }

    sub_10000959C(v12);
  }

  else
  {
  }

  JSMediaItem.updateProperty(_:value:)(a1, a2, a3);
  return sub_1000095E8(v13, &unk_1011C0D90);
}

uint64_t sub_100CE8704(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100DD607C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100CE88D0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001270A4(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}