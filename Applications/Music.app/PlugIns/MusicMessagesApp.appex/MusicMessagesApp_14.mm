uint64_t sub_10015DAF8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1004D82AC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  (*(v8 + 16))(v11, a5 + direct field offset for Gliss.Transition.id, v7);
  swift_beginAccess();
  sub_1001E2288(0, v11);
  return swift_endAccess();
}

void sub_10015DC3C(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0xB0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_10015DC6C()
{
  v1 = *((swift_isaMask & *v0) + 0xB0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v16[0] = v0;
    v4 = objc_allocWithZone(UIPanGestureRecognizer);
    type metadata accessor for Gliss.Coordinator();
    v3 = [v4 initWithTarget:sub_1004DF06C() action:"handlePanGestureRecognizer:"];
    swift_unknownObjectRelease();
    v2 = 0;
  }

  v5 = v3;
  v6 = v2;
  [v5 setDelegate:v0];
  v7 = *((swift_isaMask & *v0) + 0xB0);
  v8 = *(v0 + v7);
  *(v0 + v7) = v5;
  v9 = v5;

  [v9 setAllowedScrollTypesMask:3];
  Gliss.Coordinator.gestureConfiguration.getter(v16);
  v10 = v16[0];
  sub_10000DE74(v16[1]);
  sub_10000DE74(v16[3]);
  sub_10000DE74(v16[5]);
  v11 = [v9 view];
  if (v11)
  {
    v12 = v11;
    sub_100006F10(0, &qword_100638360);
    if ((sub_1004DE5FC() & 1) == 0)
    {
      [v12 removeGestureRecognizer:v9];
    }
  }

  v13 = [v9 view];

  if (!v13 || (sub_100006F10(0, &qword_100638360), v14 = v10, v15 = sub_1004DE5FC(), v13, v14, (v15 & 1) == 0))
  {
    [v10 addGestureRecognizer:v9];
  }
}

void sub_10015DEC4(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v6 - 8);
  v293 = v286 - v7;
  v8 = *((v5 & v4) + 0x50);
  v312 = *((v5 & v4) + 0x58);
  v309 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1004DE7CC();
  v310 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v294 = v286 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v297 = v286 - v14;
  v15 = __chkstk_darwin(v13);
  v296 = v286 - v16;
  v17 = __chkstk_darwin(v15);
  v298 = v286 - v18;
  v19 = __chkstk_darwin(v17);
  v301 = v286 - v20;
  v21 = __chkstk_darwin(v19);
  v300 = v286 - v22;
  v313 = AssociatedTypeWitness;
  isa = AssociatedTypeWitness[-1].isa;
  v24 = __chkstk_darwin(v21);
  v302 = v286 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v292 = v286 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = v286 - v29;
  v31 = __chkstk_darwin(v28);
  v311 = v286 - v32;
  v291 = v33;
  __chkstk_darwin(v31);
  v307 = v34;
  v308 = v286 - v35;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v39 = v286 - v38;
  v40 = Gliss.Coordinator.dataSource.getter();
  if (!v40)
  {
    if (qword_100633CD8 != -1)
    {
      swift_once();
    }

    v57 = sub_1004D966C();
    sub_100035430(v57, qword_100671CE8);
    v313 = sub_1004D964C();
    v58 = sub_1004DDF9C();
    if (os_log_type_enabled(v313, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v313, v58, "No Data Source Set", v59, 2u);
    }

    v60 = v313;

    return;
  }

  v41 = v40;
  Gliss.Coordinator.gestureConfiguration.getter(v317);
  v42 = v317[0];
  sub_10000DE74(v317[1]);
  sub_10000DE74(v317[3]);
  sub_10000DE74(v317[5]);
  v295 = a1;
  [a1 translationInView:v42];
  v44 = v43;
  v46 = v45;

  if (v44 == 0.0)
  {
    if (qword_100633CD8 != -1)
    {
      swift_once();
    }

    v61 = sub_1004D966C();
    sub_100035430(v61, qword_100671CE8);
    v62 = sub_1004D964C();
    v63 = sub_1004DDF9C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *&v65 = COERCE_DOUBLE(swift_slowAlloc());
      v314 = *&v65;
      *v64 = 136446210;
      v318 = v44;
      v319 = v46;
      _s3__C7CGPointVMa_0(0);
      v66 = sub_1004DD4DC();
      v68 = sub_1000343A8(v66, v67, &v314);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "Unable to compute direction from gesture's translation %{public}s", v64, 0xCu);
      sub_100008D24(v65);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return;
  }

  v305 = isa;
  v47 = *(v2 + *((swift_isaMask & *v2) + 0x88));
  v299 = TupleTypeMetadata2;
  v303 = v2;
  v304 = v41;
  v306 = v39;
  if (v47)
  {
    v48 = *(*v47 + 120);
    swift_beginAccess();
    v49 = *(v47 + v48);
    v50 = v308;
    if (v49 == 2 || (((v44 >= 0.0) ^ v49) & 1) != 0)
    {

      v2 = v303;
      sub_100161D0C(0);
      Gliss.Coordinator.item.getter(v50);
      v56 = v309;
      (v312[3].isa)(v306, &v306[*(TupleTypeMetadata2 + 48)], v50, v309);
    }

    else
    {
      v51 = *(*v47 + 104);
      swift_beginAccess();
      (v305[2])(v50, v47 + v51, v313);
      v52 = v37;
      v53 = v306;
      v54 = v312[3].isa;
      v55 = *(v299 + 48);

      v56 = v309;
      (v54)(v53, &v53[v55], v50);
      v37 = v52;
      TupleTypeMetadata2 = v299;

      v2 = v303;
    }
  }

  else
  {
    v50 = v308;
    Gliss.Coordinator.item.getter(v308);
    v69 = &v39[*(TupleTypeMetadata2 + 48)];
    v70 = v39;
    v56 = v309;
    (v312[3].isa)(v70, v69, v50, v309);
  }

  v71 = v305;
  v72 = v305[1];
  v288 = (v305 + 1);
  v289 = v37;
  v72(v50, v313);
  Gliss.Coordinator.gestureConfiguration.getter(&v318);
  v73 = v318;
  sub_10000DE74(v319);
  sub_10000DE74(v320);
  sub_10000DE74(v321);
  v74 = [*&v73 effectiveUserInterfaceLayoutDirection];
  v290 = v72;
  v287 = v73;
  if (v44 < 0.0)
  {
    v75 = v311;
    if (!v74)
    {
      goto LABEL_30;
    }

    if (v74 != 1)
    {
LABEL_33:
      Gliss.Coordinator.item.getter(v30);
      goto LABEL_39;
    }

LABEL_26:
    v76 = v301;
    (*(v310 + 2))(v301, v306, v307);
    v77 = v71[6];
    if (v77(v76, 1, v313) != 1)
    {
      (v71[4])(v30, v76, v313);
      v2 = v303;
      v56 = v309;
      goto LABEL_39;
    }

    v78 = v303;
    Gliss.Coordinator.item.getter(v30);
    v79 = v77(v76, 1, v313);
    v2 = v78;
    v80 = v79 == 1;
    v81 = v76;
    v56 = v309;
    if (v80)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v75 = v311;
  if (!v74)
  {
    goto LABEL_26;
  }

  if (v74 != 1)
  {
    goto LABEL_33;
  }

LABEL_30:
  v82 = &v306[*(TupleTypeMetadata2 + 48)];
  v83 = v300;
  (*(v310 + 2))(v300, v82, v307);
  v84 = v71[6];
  if (v84(v83, 1, v313) != 1)
  {
    (v71[4])(v30, v83, v313);
    TupleTypeMetadata2 = v299;
    v2 = v303;
    goto LABEL_39;
  }

  v85 = v303;
  Gliss.Coordinator.item.getter(v30);
  v86 = v84(v83, 1, v313);
  v2 = v85;
  v80 = v86 == 1;
  v81 = v83;
  TupleTypeMetadata2 = v299;
  if (!v80)
  {
LABEL_32:
    (*(v310 + 1))(v81, v307);
  }

LABEL_39:
  v87 = v71[4];
  v87(v75, v30, v313);
  if ((v312[4].isa)(v75, v56))
  {
    v286[1] = v71 + 4;
    v88 = TupleTypeMetadata2;
    v89 = *&v287;
    [v295 velocityInView:v89];
    v91 = v90;
    v93 = v92;
    v94 = sub_10015A9FC(v75, v44 >= 0.0);
    v302 = v89;
    [v89 bounds];
    Width = CGRectGetWidth(v323);
    v96 = v94 + *(*v94 + 168);
    swift_beginAccess();
    v97 = *(v96 + 32);
    v98 = v97 != 2;
    v99 = v98 & v97;
    if ((v98 & *(v96 + 33)) != 0)
    {
      v100 = 256;
    }

    else
    {
      v100 = 0;
    }

    *v96 = v44;
    *(v96 + 8) = v46;
    *(v96 + 16) = v91;
    *(v96 + 24) = v93;
    *(v96 + 32) = v100 | v99;
    v101 = *(*v94 + 128);
    swift_beginAccess();
    v102 = *(v94 + v101);
    v301 = v94;
    if (v102 <= 1)
    {
      v103 = v87;
      if (qword_100633CD8 != -1)
      {
        swift_once();
      }

      v104 = sub_1004D966C();
      v300 = sub_100035430(v104, qword_100671CE8);
      v105 = sub_1004D964C();
      v106 = sub_1004DDF9C();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, v105, v106, "🤏 Swipe Gesture Began", v107, 2u);
      }

      v108 = sub_1004D964C();
      v109 = sub_1004DDF9C();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *&v111 = COERCE_DOUBLE(swift_slowAlloc());
        v314 = *&v111;
        *v110 = 136446210;
        LOBYTE(v316[0]) = v44 >= 0.0;
        v112 = sub_1004DD4DC();
        v114 = sub_1000343A8(v112, v113, &v314);

        *(v110 + 4) = v114;
        v94 = v301;
        _os_log_impl(&_mh_execute_header, v108, v109, "   Direction=%{public}s", v110, 0xCu);
        sub_100008D24(v111);
      }

      v115 = sub_1004D964C();
      v116 = sub_1004DDF9C();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *&v118 = COERCE_DOUBLE(swift_slowAlloc());
        v314 = *&v118;
        *v117 = 136446210;
        v316[0] = v94;
        swift_getAssociatedConformanceWitness();
        type metadata accessor for Gliss.Transition();
        swift_getWitnessTable();
        v119 = sub_1004DEFFC();
        v121 = sub_1000343A8(v119, v120, &v314);

        *(v117 + 4) = v121;
        v94 = v301;
        _os_log_impl(&_mh_execute_header, v115, v116, "   Transition=%{public}s", v117, 0xCu);
        sub_100008D24(v118);
      }

      v88 = v299;
      v87 = v103;
      v2 = v303;
      sub_10015B718(v94);
      v75 = v311;
    }

    v122 = [v295 state];
    if (v122 <= 2)
    {
      if (v122 < 2)
      {
        v123 = sub_10015A76C();
        [v123 prepare];

        goto LABEL_69;
      }

      v148 = v290;
      if (v122 == 2)
      {
LABEL_69:
        if (qword_100633CD8 != -1)
        {
          swift_once();
        }

        v157 = sub_1004D966C();
        v158 = sub_100035430(v157, qword_100671CE8);
        v159 = sub_1004D964C();
        v160 = sub_1004DDF6C();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          *v161 = 0;
          _os_log_impl(&_mh_execute_header, v159, v160, "🤏 Swipe Gesture Updated", v161, 2u);
        }

        v162 = sub_1004D964C();
        v163 = sub_1004DDF6C();
        v164 = os_log_type_enabled(v162, v163);
        v312 = v158;
        if (v164)
        {
          v165 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          v316[0] = v166;
          *v165 = 136446210;
          v314 = v44;
          v315 = v46;
          _s3__C7CGPointVMa_0(0);
          v167 = sub_1004DD4DC();
          v169 = sub_1000343A8(v167, v168, v316);

          *(v165 + 4) = v169;
          _os_log_impl(&_mh_execute_header, v162, v163, "   Translation=%{public}s", v165, 0xCu);
          sub_100008D24(v166);
        }

        v170 = sub_1004D964C();
        v171 = sub_1004DDF6C();
        v172 = os_log_type_enabled(v170, v171);
        v173 = v302;
        v174 = v310;
        if (v172)
        {
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v316[0] = v176;
          *v175 = 136446210;
          v314 = v91;
          v315 = v93;
          _s3__C7CGPointVMa_0(0);
          v177 = sub_1004DD4DC();
          v179 = sub_1000343A8(v177, v178, v316);

          *(v175 + 4) = v179;
          _os_log_impl(&_mh_execute_header, v170, v171, "   Velocity=%{public}s", v175, 0xCu);
          sub_100008D24(v176);
        }

        v180 = v298;
        [v173 bounds];
        v181 = fabs(v44);
        v182 = v181 * (1.0 / CGRectGetWidth(v324));
        v183 = *(*v94 + 112);
        swift_beginAccess();
        v184 = *(v174 + 2);
        v309 = v183;
        v185 = v94 + v183;
        v186 = v307;
        v187 = v184;
        v184(v180, v185, v307);
        v188 = v305[6];
        v305 += 6;
        v189 = v188;
        if (v188(v180, 1, v313) == 1)
        {

          v190 = *(v174 + 1);
          v190(v180, v186);
          v191 = v186;
          v192 = v187;
          v193 = v189;
        }

        else
        {
          v190 = *(v174 + 1);
          v190(v180, v186);
          v194 = v94 + *(*v94 + 120);
          swift_beginAccess();
          v195 = *(v194 + 8);
          *(v194 + 8) = v182;
          v196 = sub_1004D964C();
          v197 = sub_1004DDF6C();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            *v198 = 134349056;
            *(v198 + 4) = v182;
            _os_log_impl(&_mh_execute_header, v196, v197, "   Progression Value=%{public}f", v198, 0xCu);
          }

          v192 = v187;
          if (v195 >= 0.45)
          {
            v193 = v189;
            if (v195 <= 0.55)
            {
              v231 = v309;
              if (v182 < 0.45 || v182 > 0.55)
              {
                v279 = sub_10015A76C();
                [v295 locationInView:v173];
                v281 = v280;
                v283 = v282;

                [v279 impactOccurredAtLocation:{v281, v283}];
                v285 = sub_100163D14();
                if (*(v284 + 32) != 2)
                {
                  *(v284 + 32) = v182 >= 0.55;
                }

                (v285)(&v314, 0);
                v191 = v307;
              }

              else
              {

                v191 = v307;
              }

LABEL_110:
              if (v182 <= 1.0)
              {
                v233 = 0;
              }

              else
              {
                v232 = v296;
                v192(v296, &v301[v231], v191);
                v233 = v193(v232, 1, v313) != 1;
                v190(v232, v191);
              }

              v235 = sub_100163D14();
              if (*(v234 + 32) != 2)
              {
                *(v234 + 33) = v233;
              }

              (v235)(&v314, 0);
              v236 = v301;
              v237 = v297;
              v192(v297, &v301[v231], v191);
              v238 = v236;
              LODWORD(v236) = v193(v237, 1, v313) == 1;
              v190(v237, v191);
              v239 = v289;
              v240 = v290;
              v241 = v299;
              v242 = v306;
              if (((v236 | v233) & 1) == 0)
              {
                goto LABEL_125;
              }

              v243 = v302;
              [v302 bounds];
              v244 = CGRectGetWidth(v325) * 0.2;
              v245 = 0.0;
              if (v233)
              {
                [v243 bounds];
                v245 = CGRectGetWidth(v326);
              }

              v246 = v244 * ((v181 - v245) / (v244 + v244 + v181 - v245));
              [v243 bounds];
              v247 = 1.0 / CGRectGetWidth(v327) * v246;
              if (v233)
              {
                v248 = &v238[*(*v238 + 120)];
                swift_beginAccess();
                *(v248 + 1) = v247 + 1.0;

                v249 = sub_1004D964C();
                v250 = sub_1004DDF6C();

                if (os_log_type_enabled(v249, v250))
                {
                  v251 = swift_slowAlloc();
                  *v251 = 134349056;
                  *(v251 + 4) = *(v248 + 1);
                  v252 = "   Over-swiping Progression Value=%{public}f";
LABEL_123:
                  _os_log_impl(&_mh_execute_header, v249, v250, v252, v251, 0xCu);

                  v241 = v299;
                }
              }

              else
              {
                v253 = &v238[*(*v238 + 120)];
                swift_beginAccess();
                *(v253 + 1) = v247;

                v249 = sub_1004D964C();
                v250 = sub_1004DDF6C();

                if (os_log_type_enabled(v249, v250))
                {
                  v251 = swift_slowAlloc();
                  *v251 = 134349056;
                  *(v251 + 4) = *(v253 + 1);
                  v252 = "   Eased Progression Value=%{public}f";
                  goto LABEL_123;
                }
              }

LABEL_125:
              sub_10015A15C();

              swift_unknownObjectRelease();

              v240(v311, v313);
              (*(v239 + 8))(v242, v241);
              return;
            }

            v191 = v307;
          }

          else
          {

            v191 = v307;
            v193 = v189;
          }
        }

        v231 = v309;
        goto LABEL_110;
      }

      goto LABEL_92;
    }

    v147 = v305;
    if (v122 != 3)
    {
      if (v122 == 4)
      {

        v148 = v290;
        if (qword_100633CD8 != -1)
        {
          swift_once();
        }

        v208 = sub_1004D966C();
        sub_100035430(v208, qword_100671CE8);
        v150 = sub_1004D964C();
        v151 = sub_1004DDF9C();
        if (!os_log_type_enabled(v150, v151))
        {
          goto LABEL_98;
        }

        v152 = swift_slowAlloc();
        *v152 = 0;
        v153 = "🤏❎ Swipe Gesture Cancelled";
      }

      else
      {
        v148 = v290;
        if (v122 != 5)
        {
LABEL_92:
          swift_unknownObjectRelease();

          v207 = v302;

LABEL_99:
          v148(v75, v313);
LABEL_100:
          (*(v289 + 8))(v306, v88);
          return;
        }

        if (qword_100633CD8 != -1)
        {
          swift_once();
        }

        v149 = sub_1004D966C();
        sub_100035430(v149, qword_100671CE8);
        v150 = sub_1004D964C();
        v151 = sub_1004DDF9C();
        if (!os_log_type_enabled(v150, v151))
        {
LABEL_98:

          sub_10015BA20(v94, 1);
          swift_unknownObjectRelease();

          goto LABEL_99;
        }

        v152 = swift_slowAlloc();
        *v152 = 0;
        v153 = "🤏❌ Swipe Gesture Failed";
      }

      _os_log_impl(&_mh_execute_header, v150, v151, v153, v152, 2u);
      v88 = v299;

      goto LABEL_98;
    }

    if (qword_100633CD8 != -1)
    {
      swift_once();
    }

    v199 = sub_1004D966C();
    sub_100035430(v199, qword_100671CE8);
    v200 = sub_1004D964C();
    v201 = sub_1004DDF9C();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 0;
      _os_log_impl(&_mh_execute_header, v200, v201, "🤏✅ Swipe Gesture Ended", v202, 2u);
      v147 = v305;
      v2 = v303;
    }

    if (Width * 0.5 >= fabs(v91))
    {
      v203 = v94 + *(*v94 + 120);
      swift_beginAccess();
      if (*(v203 + 8) < 0.5)
      {

        v204 = sub_1004D964C();
        v205 = sub_1004DDF9C();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          *v206 = 0;
          _os_log_impl(&_mh_execute_header, v204, v205, "   Hasn't reached translation thresholds. Cancelling ❎", v206, 2u);
        }

        sub_10015BA20(v94, 1);
        swift_unknownObjectRelease();

        v290(v75, v313);
        goto LABEL_139;
      }
    }

    if (v44 < 0.0)
    {
      v209 = v310;
      v210 = v294;
      if (v91 <= 0.0)
      {
LABEL_103:
        v211 = *(*v94 + 112);
        swift_beginAccess();
        v212 = v94 + v211;
        v213 = v307;
        (*(v209 + 2))(v210, v212, v307);
        if ((v147[6])(v210, 1, v313) == 1)
        {
          (*(v209 + 1))(v210, v213);
          v214 = sub_10015A848();
          [v214 prepare];

          v215 = *(v2 + *((swift_isaMask & *v2) + 0xA0));
          v216 = v302;
          [v295 locationInView:v302];
          v218 = v217;
          v220 = v219;

          [v215 impactOccurredWithIntensity:0.5 atLocation:{v218, v220}];
          sub_10015BA20(v94, 1);
          v221 = sub_100161CAC();
          if (*(v221 + 16))
          {
            v222 = direct field offset for Gliss.Transition.id;

            v223 = sub_100056C8C(v94 + v222);
            v224 = v290;
            if (v225)
            {
              v226 = *(*(v221 + 56) + 8 * v223);

              sub_100006F10(0, &qword_1006372C0);
              v227 = sub_1004DE14C();
              [v226 duration];
              v228 = v224;
              v229 = swift_allocObject();
              *(v229 + 16) = v2;
              v230 = v2;
              OS_dispatch_queue.asyncAfter(_:block:)(sub_1001621D8, v229);

              swift_unknownObjectRelease();

              v228(v75, v313);
LABEL_139:
              (*(v289 + 8))(v306, v299);
              return;
            }
          }

          else
          {

            v224 = v290;
          }

          swift_unknownObjectRelease();

          v224(v75, v313);
          goto LABEL_139;
        }

        v258 = v210;
        v259 = v302;

        v260 = v292;
        v261 = v258;
        v262 = v313;
        v87(v292, v261, v313);
        v263 = sub_1004DDA8C();
        (*(*(v263 - 8) + 56))(v293, 1, 1, v263);
        (v147[2])(v308, v260, v262);
        sub_1004DDA4C();
        v310 = v259;

        v264 = v304;
        swift_unknownObjectRetain();
        v305 = v2;
        v307 = v295;
        v303 = sub_1004DDA3C();
        v265 = (*(v147 + 80) + 56) & ~*(v147 + 80);
        v266 = (v291 + v265 + 7) & 0xFFFFFFFFFFFFFFF8;
        v267 = (v266 + 15) & 0xFFFFFFFFFFFFFFF8;
        v268 = (v267 + 15) & 0xFFFFFFFFFFFFFFF8;
        v269 = v87;
        v270 = (v268 + 15) & 0xFFFFFFFFFFFFFFF8;
        v271 = swift_allocObject();
        v271[2] = v303;
        v271[3] = &protocol witness table for MainActor;
        v272 = v308;
        v273 = v312;
        v271[4] = v309;
        v271[5] = v273;
        v271[6] = v264;
        v274 = v271 + v265;
        v275 = v313;
        v269(v274, v272, v313);
        *(v271 + v266) = v305;
        *(v271 + v267) = v301;
        v276 = v310;
        *(v271 + v268) = v310;
        v277 = v271 + v270;
        *v277 = v91;
        *(v277 + 1) = v93;
        *(v271 + ((v270 + 23) & 0xFFFFFFFFFFFFFFF8)) = v307;
        sub_10011F560(0, 0, v293, &unk_10051CFE0, v271);

        swift_unknownObjectRelease();

        v278 = v290;
        v290(v292, v275);
        v278(v311, v275);
        goto LABEL_139;
      }
    }

    else
    {
      v209 = v310;
      v210 = v294;
      if (v91 >= 0.0)
      {
        goto LABEL_103;
      }
    }

    v254 = sub_1004D964C();
    v255 = sub_1004DDF9C();
    v256 = os_log_type_enabled(v254, v255);
    v88 = v299;
    if (v256)
    {
      v257 = swift_slowAlloc();
      *v257 = 0;
      _os_log_impl(&_mh_execute_header, v254, v255, "   Going opposite direction. Cancelling ❎", v257, 2u);
      v88 = v299;
    }

    sub_10015BA20(v94, 1);
    swift_unknownObjectRelease();

    v290(v75, v313);
    goto LABEL_100;
  }

  v124 = v306;
  if (qword_100633CD8 != -1)
  {
    swift_once();
  }

  v125 = sub_1004D966C();
  sub_100035430(v125, qword_100671CE8);
  v126 = v71[2];
  v127 = v302;
  v128 = v75;
  v126(v302, v75, v313);
  v129 = sub_1004D964C();
  v130 = sub_1004DDF9C();
  v131 = os_log_type_enabled(v129, v130);
  v132 = v289;
  if (v131)
  {
    v133 = swift_slowAlloc();
    v312 = v129;
    v134 = v133;
    *&v135 = COERCE_DOUBLE(swift_slowAlloc());
    v314 = *&v135;
    *v134 = 136446210;
    v136 = v313;
    v126(v308, v127, v313);
    v137 = sub_1004DD4DC();
    v138 = v136;
    v139 = v132;
    v141 = v140;
    v142 = v127;
    v143 = v290;
    v290(v142, v138);
    v144 = sub_1000343A8(v137, v141, &v314);

    *(v134 + 4) = v144;
    v145 = v130;
    v146 = v312;
    _os_log_impl(&_mh_execute_header, v312, v145, "DataSource doesn't allow swipe for item=%{public}s", v134, 0xCu);
    sub_100008D24(v135);

    swift_unknownObjectRelease();
    v143(v311, v138);
    (*(v139 + 8))(v306, v299);
  }

  else
  {

    swift_unknownObjectRelease();
    v154 = v127;
    v155 = v313;
    v156 = v290;
    v290(v154, v313);
    v156(v128, v155);
    (*(v132 + 8))(v124, TupleTypeMetadata2);
  }
}

uint64_t sub_1001601C4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 112) = v21;
  *(v9 + 104) = a1;
  *(v9 + 88) = a8;
  *(v9 + 96) = a9;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  v11 = *a7;
  v12 = swift_isaMask;
  v13 = *(*a8 + 80);
  *(v9 + 120) = v13;
  *(v9 + 128) = *(v13 - 8);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = sub_1004DDA4C();
  *(v9 + 152) = sub_1004DDA3C();
  v14 = *((v12 & v11) + 0x58);
  *(v9 + 160) = v14;
  v15 = *(v14 + 40);
  v16 = *((v12 & v11) + 0x50);
  *(v9 + 168) = v16;
  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v9 + 176) = v17;
  *v17 = v9;
  v17[1] = sub_1001603D0;

  return v19(a6, v16, v14);
}

uint64_t sub_1001603D0()
{
  *(*v1 + 184) = v0;

  v3 = sub_1004DD9BC();
  if (v0)
  {
    v4 = sub_100160860;
  }

  else
  {
    v4 = sub_100160528;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100160528()
{
  v31 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v29 = *(v0 + 160);

  (*(v2 + 16))(v1, v6, v3);
  sub_100158AA4(v1);
  v7 = *((swift_isaMask & *v5) + 0x70);
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = swift_task_alloc();
  v9[1] = vextq_s8(v29, v29, 8uLL);
  v9[2].i64[0] = v6;
  v9[2].i64[1] = v4;

  sub_1001579D4(sub_1001625DC, v9, v8);

  sub_10015C9C8(v4, 1);
  v10 = v4 + *(*v4 + 168);
  swift_beginAccess();
  v11 = *(v10 + 32);
  if (v11 != 2 && (v11 & 1) == 0)
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 104);
    v14 = *(v0 + 96);
    [v14 bounds];
    v15 = fmax(fmin(fabs(v13) * (1.0 / (CGRectGetWidth(v33) * 4.0)), 1.0), 0.25);
    v16 = sub_10015A76C();
    [v12 locationInView:v14];
    [v16 impactOccurredWithIntensity:v15 atLocation:{v17, v18}];

    if (qword_100633CD8 != -1)
    {
      swift_once();
    }

    v19 = sub_1004D966C();
    sub_100035430(v19, qword_100671CE8);
    v20 = sub_1004D964C();
    v21 = sub_1004DDF9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446210;
      v24 = sub_1004DDB9C();
      v26 = sub_1000343A8(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "   Feedback Intensity=%{public}s", v22, 0xCu);
      sub_100008D24(v23);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100160860()
{
  v19 = v0;

  if (qword_100633CD8 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100671CE8);
  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    v0[8] = v4;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v7 = sub_1004DD4DC();
    v9 = sub_1000343A8(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "   ❌ Failed to commit with error=%{public}s", v5, 0xCu);
    sub_100008D24(v6);
  }

  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v14 = sub_10015A924();
  [v14 prepare];

  v15 = *(v13 + *((swift_isaMask & *v13) + 0xA8));
  [v10 locationInView:v11];
  [v15 notificationOccurred:2 atLocation:?];

  sub_10015BA20(v12, 1);

  v16 = v0[1];

  return v16();
}

void sub_100160AC0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10015DEC4(v4);
}

Swift::Bool __swiftcall Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = *(v1 + *((swift_isaMask & *v1) + 0xB0));
  if (!v2)
  {
    return 1;
  }

  sub_100006F10(0, &qword_1006381E0);
  v4 = v2;
  if ((sub_1004DE5FC() & 1) == 0)
  {

    return 1;
  }

  v5 = [(objc_class *)a1.super.isa view];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  [v4 velocityInView:v6];
  v8 = v7;
  v10 = v9;
  if (fabs(v9) < fabs(v7))
  {
    [(objc_class *)a1.super.isa locationInView:v6];
    v8 = v11;
    v10 = v12;

    Gliss.Coordinator.gestureConfiguration.getter(v56);
    v13 = v56[1];

    sub_10000DE74(v56[3]);
    sub_10000DE74(v56[5]);
    if (v13)
    {
      v14 = v13(v6);
      v15 = v14 + 56;
      v16 = -*(v14 + 16);
      v17 = -1;
      while (1)
      {
        if (v16 + v17 == -1)
        {
          sub_10000DE74(v13);

          v20 = 0;
          goto LABEL_20;
        }

        if (++v17 >= *(v14 + 16))
        {
          break;
        }

        v18 = v15 + 32;
        v65.x = v8;
        v65.y = v10;
        v19 = CGRectContainsPoint(*(v15 - 24), v65);
        v15 = v18;
        if (v19)
        {
          sub_10000DE74(v13);

          v20 = 1;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    [v6 bounds];
    v66.x = v8;
    v66.y = v10;
    v20 = CGRectContainsPoint(v67, v66);
LABEL_20:
    Gliss.Coordinator.gestureConfiguration.getter(v57);
    v30 = v58;
    v31 = v57[0];
    sub_10000DE64(v58);

    sub_10000DE74(v57[1]);
    sub_10000DE74(v30);
    sub_10000DE74(v59);
    if (v30)
    {
      v32 = v30(v6, v8, v10);
      sub_10000DE74(v30);
      if (v20)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v32 = 1;
      if (v20)
      {
LABEL_22:
        if (v32)
        {
LABEL_23:

LABEL_37:
          return v20 & v32;
        }

LABEL_32:
        if (qword_100633CD8 != -1)
        {
          swift_once();
        }

        v47 = sub_1004D966C();
        sub_100035430(v47, qword_100671CE8);
        v48 = sub_1004D964C();
        v49 = sub_1004DDF9C();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v55 = v51;
          *v50 = 136446210;
          _s3__C7CGPointVMa_0(0);
          v52 = sub_1004DD4DC();
          v54 = sub_1000343A8(v52, v53, &v55);

          *(v50 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v48, v49, "🤏🙂‍↔️ Swipe Gesture ignored: hit test not allowed at location %{public}s", v50, 0xCu);
          sub_100008D24(v51);
        }

        goto LABEL_37;
      }
    }

    if (qword_100633CD8 != -1)
    {
      swift_once();
    }

    v33 = sub_1004D966C();
    sub_100035430(v33, qword_100671CE8);
    v34 = v1;
    v35 = sub_1004D964C();
    v36 = sub_1004DDF9C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v37 = 136446466;
      v60 = v8;
      v61 = v10;
      _s3__C7CGPointVMa_0(0);
      v38 = sub_1004DD4DC();
      v40 = sub_1000343A8(v38, v39, &v55);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2082;
      Gliss.Coordinator.gestureConfiguration.getter(&v60);
      v42 = v61;
      v41 = v62;

      sub_10000DE74(v63);
      sub_10000DE74(v64);
      if (v42 != 0.0)
      {
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        *(v43 + 24) = v41;
      }

      sub_100004CB8(&qword_1006381E8);
      v44 = sub_1004DD4DC();
      v46 = sub_1000343A8(v44, v45, &v55);

      *(v37 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v35, v36, "🤏🙂‍↔️ Swipe Gesture ignored: outside allowed areas %{public}s, %{public}s", v37, 0x16u);
      swift_arrayDestroy();
    }

    if (v32)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (qword_100633CD8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v22 = sub_1004D966C();
  sub_100035430(v22, qword_100671CE8);
  v23 = sub_1004D964C();
  v24 = sub_1004DDF9C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v57[0] = v26;
    *v25 = 136446210;
    v60 = v8;
    v61 = v10;
    _s3__C7CGPointVMa_0(0);
    v27 = sub_1004DD4DC();
    v29 = sub_1000343A8(v27, v28, v57);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "🤏🙂‍↔️ Swipe Gesture ignored: horizontal velocity too low %{public}s", v25, 0xCu);
    sub_100008D24(v26);
  }

  return 0;
}

uint64_t sub_100161208(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

uint64_t sub_100161260(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_100161D74(v7);

  return v9 & 1;
}

id Gliss.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Gliss.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001613AC(char *a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = &a1[*((swift_isaMask & *a1) + 0x68)];
  v3 = *(v2 + 1);
  v4 = *(v2 + 3);
  v5 = *(v2 + 5);

  sub_10000DE74(v3);
  sub_10000DE74(v4);
  sub_10000DE74(v5);

  v6 = *((swift_isaMask & *a1) + 0x78);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v6], AssociatedTypeWitness);
  v8 = *((swift_isaMask & *a1) + 0x80);
  v9 = sub_1004DE7CC();
  (*(*(v9 - 8) + 8))(&a1[v8], v9);

  v10 = *&a1[*((swift_isaMask & *a1) + 0xB0)];
}

void sub_100161688(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

id sub_1001616EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = swift_isaMask;
  swift_unknownObjectWeakInit();
  v9 = *((swift_isaMask & *v4) + 0x70);
  *&v4[v9] = _swiftEmptyArrayStorage;
  v10 = *((swift_isaMask & *v4) + 0x80);
  v27 = *((v8 & v7) + 0x58);
  v26 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 56))(&v4[v10], 1, 1, AssociatedTypeWitness);
  *&v4[*((swift_isaMask & *v4) + 0x88)] = 0;
  v13 = *((swift_isaMask & *v4) + 0x90);
  *&v4[v13] = sub_10005F7CC(_swiftEmptyArrayStorage);
  *&v4[*((swift_isaMask & *v4) + 0x98)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA0)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA8)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xB0)] = 0;
  (*(v12 + 16))(&v4[*((swift_isaMask & *v4) + 0x78)], a1, AssociatedTypeWitness);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 24);
  v25 = *(a3 + 40);
  v17 = *(a3 + 48);
  v18 = &v4[*((swift_isaMask & *v4) + 0x68)];
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 1) = v19;
  *(v18 + 2) = *(a3 + 32);
  *(v18 + 6) = v17;
  swift_beginAccess();
  *&v4[v9] = a4;
  v20 = v14;
  sub_10000DE64(v15);
  sub_10000DE64(v16);
  sub_10000DE64(v25);

  v30 = v26;
  v31 = v27;
  v32 = a1;
  sub_1001579D4(sub_1001628B8, v29, a4);

  v21 = type metadata accessor for Gliss.Coordinator();
  v33.receiver = v4;
  v33.super_class = v21;
  v22 = objc_msgSendSuper2(&v33, "init");
  sub_10015DC6C();

  return v22;
}

uint64_t sub_100161A84()
{

  return swift_deallocObject();
}

void sub_100161AC4(id a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    sub_100161AD8(a1, a2, a3);
  }
}

void sub_100161AD8(id a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
  }
}

id sub_100161AEC(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_100161B00(result, a2, a3);
  }

  return result;
}

id sub_100161B00(id result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

uint64_t sub_100161B14()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  v7 = *(v0 + v6 + 16);
  if (v7 <= 0xFD)
  {
    sub_100161AD8(*(v0 + v6), *(v0 + v6 + 8), v7);
  }

  return swift_deallocObject();
}

void sub_100161BE4(uint64_t *a1, uint64_t a2)
{
  v3 = *(*(*a1 + 80) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_100159974(a1, a2, v2 + v4, *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_100161C78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100161CAC()
{
  v1 = *((swift_isaMask & *v0) + 0x90);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100161D0C(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x88);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_10015A230(v3);
}

uint64_t sub_100161D74(void *a1)
{
  Gliss.Coordinator.gestureConfiguration.getter(v18);

  sub_10000DE74(v18[1]);
  sub_10000DE74(v18[3]);
  v2 = v19;
  if (!v19)
  {
    return 1;
  }

  v3 = v19(a1);
  sub_10000DE74(v2);
  if (v3)
  {
    return 1;
  }

  if (qword_100633CD8 != -1)
  {
    swift_once();
  }

  v5 = sub_1004D966C();
  sub_100035430(v5, qword_100671CE8);
  v6 = a1;
  v7 = sub_1004D964C();
  v8 = sub_1004DDF9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = v6;
    v12 = [v11 description];
    v13 = sub_1004DD43C();
    v15 = v14;

    v16 = sub_1000343A8(v13, v15, &v17);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "🤏🙂‍↔️ Swipe Gesture ignored: conflicts with other gesture: %{public}s", v9, 0xCu);
    sub_100008D24(v10);
  }

  return 0;
}

uint64_t sub_100161F9C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_1004DE7CC();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001620B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001620F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10016213C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1001621A0()
{

  return swift_deallocObject();
}

void sub_1001621D8()
{
  v0 = sub_10015A848();
  [v0 impactOccurredWithIntensity:1.0 atLocation:{0.0, 0.0}];
}

uint64_t sub_100162234()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_100162370(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v5);
  v11 = v1[6];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_100035B28;

  return sub_1001601C4(v14, a1, v8, v9, v11, v1 + v4, v10, v12, v13);
}

uint64_t sub_100162514(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100638358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100162584()
{
  result = qword_100635890;
  if (!qword_100635890)
  {
    sub_1004D82AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635890);
  }

  return result;
}

uint64_t sub_1001625F4(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *v2;
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return sub_1001576C8(v3, v2, ObjectType, *(v4 + 80), v5);
}

uint64_t sub_1001626C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001626E4()
{

  return swift_deallocObject();
}

uint64_t sub_100162768()
{

  return swift_deallocObject();
}

uint64_t sub_1001627E8(uint64_t (**a1)(uint64_t *, char *))
{
  v2 = *a1;
  v5 = *(v1 + 32);
  v4 = 1;
  return v2(&v5, &v4);
}

uint64_t sub_100162850(uint64_t (**a1)(uint64_t *))
{
  v2 = *a1;
  v4 = *(v1 + 32);
  return v2(&v4);
}

uint64_t sub_100162988(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  sub_100162DF0(a1, a2, a3, a4, a5);
  return v10;
}

id sub_100162A00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v39 = *&a3;
  v9 = *(*a1 + 80);
  v10 = sub_1004DE7CC();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v39 - v13;
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 == 2)
    {
      v19 = v39;

      return *&v19;
    }

    else
    {
      v24 = v12;
      if (UIAccessibilityIsReduceMotionEnabled() || (v25 = *(*a1 + 120), swift_beginAccess(), *(a1 + v25) == 2))
      {
        v26 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
        v27 = objc_allocWithZone(UIViewPropertyAnimator);
        v28 = [v27 initWithDuration:v26 timingParameters:{0.25, *&v39}];
      }

      else
      {
        v29 = a1 + *(*a1 + 168);
        swift_beginAccess();
        if (*(v29 + 32) == 2)
        {
          [a2 bounds];
          v30 = CGRectGetWidth(v41) * 0.5;
        }

        else
        {
          v30 = *(v29 + 16);
        }

        v31 = fabs(v30);
        [a2 bounds];
        Width = CGRectGetWidth(v42);
        v33 = fabs(*v29);
        if (*(v29 + 32) == 2)
        {
          v33 = 0.0;
        }

        v34 = v31 / (Width - v33);
        v35 = *(*a1 + 112);
        swift_beginAccess();
        (*(v11 + 16))(v14, a1 + v35, v24);
        if ((*(*(v9 - 8) + 48))(v14, 1, v9) == 1)
        {
          v36 = 0.5;
        }

        else
        {
          v36 = 0.8;
        }

        (*(v11 + 8))(v14, v24);
        v26 = [objc_allocWithZone(UISpringTimingParameters) initWithDampingRatio:v36 initialVelocity:{v34, 0.0}];
        v37 = objc_allocWithZone(UIViewPropertyAnimator);
        v28 = [v37 initWithDuration:v26 timingParameters:{0.0, *&v39}];
      }

      v38 = v28;

      return v38;
    }
  }

  else
  {
    if (a5 >> 6)
    {
      if (a5)
      {
        v21 = 0.25;
      }

      else
      {
        v21 = *&a4;
      }

      v16 = [objc_allocWithZone(UISpringTimingParameters) initWithDuration:v21 bounce:v39];
      v22 = objc_allocWithZone(UIViewPropertyAnimator);
      v18 = [v22 initWithDuration:v16 timingParameters:{0.0, *&v39}];
    }

    else
    {
      v15 = v39;
      v16 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
      v17 = objc_allocWithZone(UIViewPropertyAnimator);
      v18 = [v17 initWithDuration:v16 timingParameters:{v15, *&v39}];
    }

    v23 = v18;

    return v23;
  }
}

uint64_t Gliss.Direction.init(_:)(double a1)
{
  if (a1 > 0.0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 >= 0.0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100162DF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v9 = *v5;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v10 = *(*v5 + 112);
  v11 = *(v9 + 80);
  v12 = *(v11 - 8);
  (*(v12 + 56))(v5 + v10, 1, 1, v11);
  *(v5 + *(*v5 + 128)) = 0;
  v13 = v5 + *(*v5 + 136);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = -64;
  v14 = *(*v5 + 144);
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata1();
  *(v5 + v14) = sub_1004DD8DC();
  v15 = *(*v5 + 152);
  swift_getFunctionTypeMetadata2();
  *(v5 + v15) = sub_1004DD8DC();
  v16 = v5 + *(*v5 + 168);
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 2;
  (*(v12 + 32))(v5 + *(*v5 + 104), a1, v11);
  swift_beginAccess();
  v17 = sub_1004DE7CC();
  (*(*(v17 - 8) + 40))(v5 + v10, a2, v17);
  swift_endAccess();
  v18 = v5 + *(*v5 + 120);
  *v18 = a3;
  *(v18 + 8) = a5;
  *(v5 + *(*v5 + 160)) = a4;
  return v5;
}

uint64_t Gliss.Transition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for Gliss.Transition.id;
  v4 = sub_1004D82AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100163130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *(**a1 + 104);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t sub_1001631C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7);
  v9 = *a2;
  v10 = *(*v9 + 104);
  swift_beginAccess();
  (*(v6 + 40))(v9 + v10, v8, v5);
  return swift_endAccess();
}

uint64_t Gliss.Transition.from.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100163380@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 112);
  swift_beginAccess();
  v5 = sub_1004DE7CC();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100163424(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1004DE7CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = *a2;
  v9 = *(*v8 + 112);
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t Gliss.Transition.to.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = sub_1004DE7CC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t Gliss.Transition.progression.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  return *v1;
}

uint64_t Gliss.Transition.state.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001636A0(char a1)
{
  v3 = *(*v1 + 128);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL Gliss.Transition.isEnding.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 3;
}

BOOL Gliss.Transition.isCancelling.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 4;
}

BOOL Gliss.Transition.hasEnded.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) > 4u;
}

BOOL Gliss.Transition.isGestureBased.getter()
{
  v1 = v0 + *(*v0 + 168);
  swift_beginAccess();
  return *(v1 + 32) != 2;
}

uint64_t Gliss.Transition.addAlongsideAnimation(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = *(v5 + 88);
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata1();
  sub_1004DD98C();

  sub_1004DD93C();
  return swift_endAccess();
}

uint64_t Gliss.Transition.addCompletion(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = *(v5 + 88);
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata2();
  sub_1004DD98C();

  sub_1004DD93C();
  return swift_endAccess();
}

uint64_t Gliss.Transition.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(*v2 + 160));
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_100056D10(a1);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  sub_10000904C(*(v4 + 56) + 32 * v6, v11);

LABEL_6:
  sub_100004CB8(&qword_100638E60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v9 ^ 1u, 1, AssociatedTypeWitness);
}

__n128 sub_100163BD8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_100163C40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + *(**a2 + 168);
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

__n128 Gliss.Transition.gestureState.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t Gliss.Transition.description.getter()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = sub_1004DE7CC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = *(v2 - 8);
  v9 = __chkstk_darwin(v5);
  v18 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  strcpy(v23, "Transition(\n");
  BYTE5(v23[1]) = 0;
  HIWORD(v23[1]) = -5120;
  v22._countAndFlagsBits = 0x3A646920202020;
  v22._object = 0xE700000000000000;
  v24._countAndFlagsBits = sub_1004D827C();
  sub_1004DD5FC(v24);

  v25._countAndFlagsBits = 10;
  v25._object = 0xE100000000000000;
  sub_1004DD5FC(v25);
  sub_1004DD5FC(v22);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0x6D6F726620202020;
  v26._object = 0xEA0000000000203ALL;
  sub_1004DD5FC(v26);
  v13 = *(*v0 + 104);
  swift_beginAccess();
  (*(v8 + 16))(v12, v1 + v13, v2);
  sub_1004DF02C();
  v14 = *(v8 + 8);
  v14(v12, v2);
  v27._countAndFlagsBits = 10;
  v27._object = 0xE100000000000000;
  sub_1004DD5FC(v27);
  sub_1004DD5FC(v21);

  v15 = *(*v1 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v15, v3);
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    (*(v4 + 8))(v7, v3);
    v28._object = 0xED00000A656E6F6ELL;
    v28._countAndFlagsBits = 0x203A6F7420202020;
    sub_1004DD5FC(v28);
  }

  else
  {
    v16 = v18;
    (*(v8 + 32))(v18, v7, v2);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0x203A6F7420202020;
    v29._object = 0xE800000000000000;
    sub_1004DD5FC(v29);
    sub_1004DF02C();
    v30._countAndFlagsBits = 10;
    v30._object = 0xE100000000000000;
    sub_1004DD5FC(v30);
    sub_1004DD5FC(v19);

    v14(v16, v2);
  }

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_1004DEAAC(19);

  v20._countAndFlagsBits = 0xD000000000000010;
  v20._object = 0x80000001004EF460;
  swift_beginAccess();
  v31._countAndFlagsBits = Gliss.Progression.description.getter();
  sub_1004DD5FC(v31);

  v32._countAndFlagsBits = 10;
  v32._object = 0xE100000000000000;
  sub_1004DD5FC(v32);
  sub_1004DD5FC(v20);

  v33._countAndFlagsBits = 10528;
  v33._object = 0xE200000000000000;
  sub_1004DD5FC(v33);
  return v23[0];
}

uint64_t *Gliss.Transition.deinit()
{
  v1 = *v0;
  v2 = direct field offset for Gliss.Transition.id;
  v3 = sub_1004D82AC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(v1 + 80));
  v4 = *(*v0 + 112);
  v5 = sub_1004DE7CC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_100161AD8(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8), *(v0 + *(*v0 + 136) + 16));

  return v0;
}

uint64_t Gliss.Transition.__deallocating_deinit()
{
  Gliss.Transition.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001643EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for Gliss.Transition.id;
  v5 = sub_1004D82AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1001644A0()
{

  return swift_deallocObject();
}

unint64_t Gliss.Progression.description.getter()
{
  sub_100004CB8(&qword_1006381D8);
  v1._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v1);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  sub_1004DD5FC(v2);
  v3._countAndFlagsBits = 0x6F69746365726964;
  v3._object = 0xEA00000000003D6ELL;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = sub_1004DDB9C();
  sub_1004DD5FC(v4);

  v5._countAndFlagsBits = 0x3D65756C6176;
  v5._object = 0xE600000000000000;
  sub_1004DD5FC(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_1004DD5FC(v6);
  return 0xD000000000000014;
}

unint64_t sub_10016471C()
{
  result = qword_100635888;
  if (!qword_100635888)
  {
    sub_1004D82AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635888);
  }

  return result;
}

unint64_t sub_100164778()
{
  result = qword_100638370;
  if (!qword_100638370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638370);
  }

  return result;
}

unint64_t sub_1001647D0()
{
  result = qword_100638378;
  if (!qword_100638378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638378);
  }

  return result;
}

__n128 sub_100164838(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_100164858@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 120);
  swift_beginAccess();
  result = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001648C0(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2 + *(**a2 + 120);
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_100164938@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 128);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1001649E4(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100164A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100164A54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100164AB8(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t sub_100164AF4()
{
  result = sub_1004D82AC();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1004DE7CC();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t _s11ProgressionVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t _s11ProgressionVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 sub_100164CFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100164D10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100164D64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t EnvironmentVariable.value.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0xD000000000000013;
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 environment];

  v7 = sub_1004DD21C();
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (a3 == 1)
    {
      v8 = "";
    }

    else
    {
      v8 = "FEATUREFLAGS_ENABLED";
    }
  }

  else
  {
    v8 = "MUSIC_TOOLTIP_DEBUG_ALL";
  }

  if (*(v7 + 16))
  {
    v9 = sub_100056B84(v4, v8 | 0x8000000000000000);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v7 + 56) + 16 * v9);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

uint64_t EnvironmentVariable.isEnabled.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = EnvironmentVariable.value.getter(a1, a2, a3);
  if (!v5)
  {
    return 0;
  }

  if (a3 <= 1u)
  {
    sub_100030C58();
    v6 = sub_1004DE8BC();

    return v6 & 1;
  }

  if (v4 == 49 && v5 == 0xE100000000000000 || (v8 = v4, v9 = v5, (sub_1004DF08C() & 1) != 0) || v8 == 1702195828 && v9 == 0xE400000000000000 || (sub_1004DF08C() & 1) != 0 || v8 == 5457241 && v9 == 0xE300000000000000)
  {

    v6 = 1;
    return v6 & 1;
  }

  v10 = sub_1004DF08C();

  return v10 & 1;
}

uint64_t sub_100165090(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1001650AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001650F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100165138(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100165168()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100638400);
  sub_100035430(v0, qword_100638400);
  return sub_1004D965C();
}

uint64_t static StagedInstall.current()()
{
  v0 = sub_1004D809C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v47 - v6;
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  if (qword_100634428 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 2;
  }

  if (qword_100633CE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1004D966C();
  sub_100035430(v10, qword_100638400);
  v11 = sub_1004D964C();
  v12 = sub_1004DDF9C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Checking for a staged install of Music", v13, 2u);
  }

  sub_1004D7FAC();
  v14 = [objc_opt_self() defaultManager];
  sub_1004D803C();
  v15 = sub_1004DD3FC();

  v16 = [v14 fileExistsAtPath:v15];

  v17 = sub_1004D964C();
  if (v16)
  {
    v18 = sub_1004DDF7C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Found Music.app in staged_system_apps", v19, 2u);
    }

    v20 = sub_1004D80BC();
    v25 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v25 != 2 || *(v20 + 16) == *(v20 + 24))
      {
LABEL_23:
        sub_100010598(v20, v21);
        v17 = sub_1004D964C();
        v22 = sub_1004DDF7C();
        if (os_log_type_enabled(v17, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          v24 = "Unable to read data of staged executable";
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (v25)
    {
      if (v20 == v20 >> 32)
      {
        goto LABEL_23;
      }
    }

    else if ((v21 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    v26 = v20;
    v49 = v21;
    v27 = [objc_opt_self() mainBundle];
    v28 = [v27 executableURL];

    if (!v28)
    {
LABEL_39:
      v38 = sub_1004D964C();
      v39 = sub_1004DDF7C();
      if (os_log_type_enabled(v38, v39))
      {
        v31 = 2;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Unable to read data of running executable", v40, 2u);

        sub_100010598(v26, v49);
        (*(v1 + 8))(v9, v0);
        return v31;
      }

      sub_100010598(v26, v49);

      goto LABEL_27;
    }

    sub_1004D802C();

    (*(v1 + 32))(v7, v4, v0);
    v29 = sub_1004D80BC();
    v33 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v33 != 2)
      {
        goto LABEL_38;
      }

      v34 = *(v29 + 16);
      v35 = *(v29 + 24);
    }

    else
    {
      if (!v33)
      {
        if ((v30 & 0xFF000000000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_42:
        v47 = v29;
        v48 = v30;
        v41 = sub_100165D90(v29, v30, v26, v49);
        v42 = sub_1004D964C();
        if (v41)
        {
          v43 = sub_1004DDF9C();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Identical staged copy found";
LABEL_47:
            _os_log_impl(&_mh_execute_header, v42, v43, v45, v44, 2u);
          }
        }

        else
        {
          v43 = sub_1004DDF7C();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Found different binary in staged applications";
            goto LABEL_47;
          }
        }

        sub_100010598(v47, v48);
        sub_100010598(v26, v49);
        v46 = *(v1 + 8);
        v46(v7, v0);
        v46(v9, v0);
        return v41 & 1;
      }

      v34 = v29;
      v35 = v29 >> 32;
    }

    if (v34 != v35)
    {
      goto LABEL_42;
    }

LABEL_38:
    v36 = v29;
    v37 = v30;
    (*(v1 + 8))(v7, v0);
    sub_100010598(v36, v37);
    goto LABEL_39;
  }

  v22 = sub_1004DDF9C();
  if (!os_log_type_enabled(v17, v22))
  {
LABEL_26:

LABEL_27:
    (*(v1 + 8))(v9, v0);
    return 2;
  }

  v23 = swift_slowAlloc();
  *v23 = 0;
  v24 = "✅ No staged copy found";
LABEL_25:
  _os_log_impl(&_mh_execute_header, v17, v22, v24, v23, 2u);

  (*(v1 + 8))(v9, v0);
  return 2;
}

uint64_t sub_100165918@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1004D7CAC();
    if (v10)
    {
      v11 = sub_1004D7CDC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1004D7CCC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1004D7CAC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1004D7CDC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1004D7CCC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100165B48(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100165CD8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100010598(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100165918(v13, a3, a4, &v12);
  v10 = v4;
  sub_100010598(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100165CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1004D7CAC();
  v11 = result;
  if (result)
  {
    result = sub_1004D7CDC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1004D7CCC();
  sub_100165918(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100165D90(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100010530(a3, a4);
          return sub_100165B48(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for StagedInstall(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100165FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>, unsigned __int8 a10)
{
  v126 = a8;
  v121 = a7;
  v139 = a6;
  v125 = a4;
  v124 = a3;
  v123 = a2;
  v122 = a1;
  LODWORD(v12) = a10;
  v136 = sub_1004D7F8C();
  v13 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004CB8(&qword_100634B30);
  __chkstk_darwin(v15 - 8);
  v137 = &v111 - v16;
  v17 = sub_1004D809C();
  v144 = *(v17 - 8);
  v145 = v17;
  v18 = __chkstk_darwin(v17);
  v142 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v118 = &v111 - v21;
  v22 = __chkstk_darwin(v20);
  v140 = &v111 - v23;
  __chkstk_darwin(v22);
  v116 = &v111 - v24;
  v25 = sub_100004CB8(&qword_100637978);
  __chkstk_darwin(v25 - 8);
  v27 = &v111 - v26;
  v28 = sub_1004D7C7C();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100634428 != -1)
  {
LABEL_71:
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_1004D7C5C();
    result = (*(v29 + 48))(v27, 1, v28);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v29 + 32))(v31, v27, v28);
      if (a5 >> 62)
      {
        v27 = sub_1004DED5C();
      }

      else
      {
        v27 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v115 = a9;
      v114 = v12;
      v113 = v28;
      v112 = v29;
      v111 = v31;
      if (v27 || *(v139 + 16))
      {
        v33 = [objc_opt_self() defaultManager];
        if (qword_100633CE8 != -1)
        {
          swift_once();
        }

        sub_100035430(v145, static URL.tapToRadarDirectory);
        NSFileManager.createDirectoryIfNeeded(at:)();
        v141 = 0;
      }

      else
      {
        v141 = 0;
      }

      a9 = 0;
      v12 = a5 & 0xC000000000000001;
      v28 = a5 & 0xFFFFFFFFFFFFFF8;
      v134 = _swiftEmptyArrayStorage;
      while (v27 != a9)
      {
        if (v12)
        {
          v34 = sub_1004DEB2C();
        }

        else
        {
          if (a9 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v34 = *(a5 + 8 * a9 + 32);
        }

        v29 = v34;
        v35 = a9 + 1;
        if (__OFADD__(a9, 1))
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v31 = sub_100167610(a9, v34);
        v37 = v36;

        ++a9;
        if (v37)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = sub_10003A134(0, *(v134 + 2) + 1, 1, v134);
          }

          v29 = *(v134 + 2);
          v38 = *(v134 + 3);
          if (v29 >= v38 >> 1)
          {
            v134 = sub_10003A134((v38 > 1), v29 + 1, 1, v134);
          }

          v39 = v134;
          *(v134 + 2) = v29 + 1;
          v40 = &v39[16 * v29];
          *(v40 + 4) = v31;
          *(v40 + 5) = v37;
          a9 = v35;
        }
      }

      a5 = v139 + 64;
      v43 = 1 << *(v139 + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v27 = v44 & *(v139 + 64);
      a9 = (v43 + 63) >> 6;
      v132 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v130 = (v13 + 8);
      v131 = (v13 + 104);
      v143 = (v144 + 8);
      v129 = (v144 + 56);
      v120 = (v144 + 32);
      v128 = (v144 + 48);

      v45 = 0;
      *&v46 = 136446210;
      v117 = v46;
      v119 = _swiftEmptyArrayStorage;
      v47 = v145;
      v48 = &qword_100633000;
      v12 = v141;
      v133 = a9;
      v127 = a5;
      while (v27)
      {
        v13 = v45;
LABEL_35:
        v141 = v12;
        v49 = (v13 << 10) | (16 * __clz(__rbit64(v27)));
        v50 = (*(v139 + 48) + v49);
        v52 = *v50;
        v51 = v50[1];
        v53 = (*(v139 + 56) + v49);
        v28 = *v53;
        v54 = v53[1];

        sub_100010530(v28, v54);
        if (v48[413] != -1)
        {
          swift_once();
        }

        sub_100035430(v47, static URL.tapToRadarDirectory);
        v147[0] = 47;
        v147[1] = 0xE100000000000000;
        v149._countAndFlagsBits = v52;
        v138 = v51;
        v149._object = v51;
        sub_1004DD5FC(v149);
        v56 = v135;
        v55 = v136;
        (*v131)(v135, v132, v136);
        sub_100030C58();
        v57 = v140;
        sub_1004D808C();
        (*v130)(v56, v55);

        v12 = v141;
        sub_1004D811C();
        v29 = v54;
        if (v12)
        {
          v58 = v145;
          if (qword_100633CF0 != -1)
          {
            swift_once();
          }

          v59 = sub_1004D966C();
          sub_100035430(v59, qword_100638418);
          swift_errorRetain();
          v60 = sub_1004D964C();
          v61 = sub_1004DDF7C();

          v48 = &qword_100633000;
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v141 = v28;
            v63 = v29;
            v64 = v62;
            v65 = swift_slowAlloc();
            v146 = v12;
            v147[0] = v65;
            *v64 = v117;
            swift_errorRetain();
            sub_100004CB8(&qword_100638980);
            v66 = sub_1004DD4DC();
            v68 = sub_1000343A8(v66, v67, v147);

            *(v64 + 4) = v68;
            _os_log_impl(&_mh_execute_header, v60, v61, "Tap-to-Radar Attachment file write failed with error: %{public}s", v64, 0xCu);
            sub_100008D24(v65);
            v47 = v145;

            v29 = v63;
            v28 = v141;

            v48 = &qword_100633000;

            (*v143)(v140, v47);
          }

          else
          {

            v47 = v58;
            (*v143)(v140, v58);
          }

          v12 = 0;
          v70 = 1;
          v69 = v137;
        }

        else
        {
          v69 = v137;
          v47 = v145;
          (*v120)(v137, v57, v145);
          v70 = 0;
          v48 = &qword_100633000;
        }

        v31 = v138;
        v27 &= v27 - 1;
        (*v129)(v69, v70, 1, v47);

        sub_100010598(v28, v29);
        v71 = (*v128)(v69, 1, v47);
        a5 = v127;
        if (v71 == 1)
        {
          sub_100031B48(v69);
          v45 = v13;
          a9 = v133;
        }

        else
        {
          v31 = 0;
          v72 = *v120;
          v29 = v116;
          (*v120)(v116, v69, v47);
          v72(v118, v29, v47);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v119 = sub_10003A98C(0, *(v119 + 2) + 1, 1, v119);
          }

          v28 = *(v119 + 2);
          v73 = *(v119 + 3);
          if (v28 >= v73 >> 1)
          {
            v119 = sub_10003A98C(v73 > 1, v28 + 1, 1, v119);
          }

          v74 = v119;
          *(v119 + 2) = v28 + 1;
          v47 = v145;
          v72(&v74[((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v28], v118, v145);
          v45 = v13;
          v12 = 0;
          a9 = v133;
        }
      }

      while (1)
      {
        v13 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
          goto LABEL_69;
        }

        if (v13 >= a9)
        {
          break;
        }

        v27 = *(a5 + 8 * v13);
        ++v45;
        if (v27)
        {
          goto LABEL_35;
        }
      }

      v147[0] = v119;

      sub_1000453DC(v75);
      v76 = v147[0];
      v77 = *(v147[0] + 16);
      if (v77)
      {
        v147[0] = _swiftEmptyArrayStorage;
        sub_1000374EC(0, v77, 0);
        v78 = *(v144 + 16);
        v79 = v147[0];
        v80 = (*(v144 + 80) + 32) & ~*(v144 + 80);
        v141 = v76;
        v81 = v76 + v80;
        v144 += 16;
        v82 = *(v144 + 56);
        do
        {
          v83 = v142;
          v84 = v145;
          v78(v142, v81, v145);
          v85 = sub_1004D803C();
          v87 = v86;
          (*v143)(v83, v84);
          v147[0] = v79;
          v89 = v79[2];
          v88 = v79[3];
          if (v89 >= v88 >> 1)
          {
            sub_1000374EC((v88 > 1), v89 + 1, 1);
            v79 = v147[0];
          }

          v79[2] = v89 + 1;
          v90 = &v79[2 * v89];
          v90[4] = v85;
          v90[5] = v87;
          v81 += v82;
          --v77;
        }

        while (v77);
      }

      else
      {

        v79 = _swiftEmptyArrayStorage;
      }

      sub_100004CB8(&qword_100635078);
      v91 = *(sub_1004D7BBC() - 8);
      v92 = *(v91 + 72);
      v93 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_100512840;
      sub_1004D7B8C();
      sub_1004D7B8C();
      sub_1004D7B8C();
      sub_1004D7B8C();
      sub_1004D7B8C();
      v95 = [objc_opt_self() mainBundle];
      v96 = [v95 bundleIdentifier];

      v97 = v126;
      if (v96)
      {
        sub_1004DD43C();
      }

      sub_1004D7B8C();

      v147[0] = v134;
      v98 = sub_100004CB8(&unk_1006372E0);
      v99 = sub_1000533D4();
      sub_1004DD30C();
      sub_1004D7B8C();

      v147[0] = v79;
      v144 = v99;
      v145 = v98;
      sub_1004DD30C();
      sub_1004D7B8C();

      v100 = *(v97 + 16);
      v101 = _swiftEmptyArrayStorage;
      if (v100)
      {
        v141 = v94 + v93;
        v142 = v92;
        v143 = v94;
        v147[0] = _swiftEmptyArrayStorage;
        sub_1000374EC(0, v100, 0);
        v101 = v147[0];
        v102 = (v97 + 32);
        do
        {
          v103 = *v102++;
          v146 = qword_10051D4A0[v103];
          v104 = sub_1004DEFFC();
          v106 = v105;
          v147[0] = v101;
          v108 = v101[2];
          v107 = v101[3];
          if (v108 >= v107 >> 1)
          {
            sub_1000374EC((v107 > 1), v108 + 1, 1);
            v101 = v147[0];
          }

          v101[2] = v108 + 1;
          v109 = &v101[2 * v108];
          v109[4] = v104;
          v109[5] = v106;
          --v100;
        }

        while (v100);
      }

      v147[0] = v101;
      sub_1004DD30C();

      sub_1004D7B8C();

      v147[0] = v134;
      sub_1000452E8(v79);

      sub_1004D7B8C();

      sub_1004D7B8C();

      v110 = v111;
      sub_1004D7BDC();
      sub_1004D7BFC();
      return (*(v112 + 8))(v110, v113);
    }
  }

  else
  {
    v41 = v145;
    v42 = *(v144 + 56);

    return v42(a9, 1, 1, v41);
  }

  return result;
}

uint64_t sub_100167184()
{
  v0 = sub_1004D7F8C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004CB8(&qword_100634B30);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1004D809C();
  sub_100035718(v7, static URL.tapToRadarDirectory);
  sub_100035430(v7, static URL.tapToRadarDirectory);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return sub_1004D806C();
}

uint64_t URL.tapToRadarDirectory.unsafeMutableAddressor()
{
  if (qword_100633CE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D809C();

  return sub_100035430(v0, static URL.tapToRadarDirectory);
}

uint64_t static URL.tapToRadarDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633CE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D809C();
  v3 = sub_100035430(v2, static URL.tapToRadarDirectory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100167450()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100638418);
  sub_100035430(v0, qword_100638418);
  return sub_1004D965C();
}

Swift::Int sub_1001674F8()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(qword_10051D4A0[v1]);
  return sub_1004DF2BC();
}

Swift::Int sub_100167580()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(qword_10051D4A0[v1]);
  return sub_1004DF2BC();
}

uint64_t sub_1001675CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100167610(uint64_t a1, UIImage *a2)
{
  v4 = sub_1004D7F8C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004D809C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633CE8 != -1)
  {
    swift_once();
  }

  sub_100035430(v8, static URL.tapToRadarDirectory);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1004DEAAC(24);

  v20 = 0xD000000000000012;
  v21 = 0x80000001004EF600;
  v19[1] = a1;
  v22._countAndFlagsBits = sub_1004DEFFC();
  sub_1004DD5FC(v22);

  v23._countAndFlagsBits = 1735420462;
  v23._object = 0xE400000000000000;
  sub_1004DD5FC(v23);
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_100030C58();
  sub_1004D808C();
  (*(v5 + 8))(v7, v4);

  v12 = UIImageJPEGRepresentation(a2, 85.0);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1004D810C();
    v16 = v15;

    sub_1004D811C();
    sub_100010598(v14, v16);
  }

  v17 = sub_1004D803C();
  (*(v9 + 8))(v11, v8);
  return v17;
}

uint64_t _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if (a1 > 1723675)
  {
    if (a1 != 1947834)
    {
      if (a1 == 1723676)
      {
        return 2;
      }

      return 4;
    }

    return 3;
  }

  else
  {
    if (a1 != 1723672)
    {
      if (a1 == 1723674)
      {
        return 1;
      }

      return 4;
    }

    return 0;
  }
}

unint64_t sub_100167B00()
{
  result = qword_100638430;
  if (!qword_100638430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638430);
  }

  return result;
}

uint64_t static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = sub_1004DDA4C();
  *(v3 + 40) = sub_1004DDA3C();
  v5 = sub_1004DD9BC();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_100167C14, v5, v4);
}

uint64_t sub_100167C14()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 89);
  v4 = sub_1004DDA3C();
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_100167D30;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 88, v4, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004EA4A0, sub_1000744E4, v5, &type metadata for Bool);
}

uint64_t sub_100167D30()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1001720B4, v3, v2);
}

void sub_100167E90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100167EFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_100635968);
    v2 = sub_1004DEDBC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000904C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100006F5C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100006F5C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100006F5C(v31, v32);
    result = sub_1004DEA2C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100006F5C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001681C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_100635968);
    v2 = sub_1004DEDBC();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100006F5C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100006F5C(v29, v30);
    result = sub_1004DEA2C(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100006F5C(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t *CloudLibrary.EnablementContext.action.unsafeMutableAddressor()
{
  if (qword_100633CF8 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.EnablementContext.action;
}

uint64_t *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor()
{
  if (qword_100633D00 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.StatusObserver.shared;
}

uint64_t CloudLibrary.EnablementContext.title.getter(unsigned __int8 a1)
{
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 > 6u)
  {
    sub_1004DD37C();
    (*(v4 + 16))(v7, v9, v3);
    if (qword_100633A80 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_1004DD37C();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_100633A80 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v10 = qword_100671958;
  sub_1004D838C();
  v11 = sub_1004DD4AC();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t CloudLibrary.EnablementContext.message.getter(unsigned __int8 a1)
{
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = (v4 + 16);
  if (a1 > 6u)
  {
    sub_1004DD37C();
    (*v10)(v7, v9, v3);
    if (qword_100633A80 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_1004DD37C();
  (*v10)(v7, v9, v3);
  if (qword_100633A80 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v11 = qword_100671958;
  sub_1004D838C();
  v12 = sub_1004DD4AC();
  (*(v4 + 8))(v9, v3);
  return v12;
}

Swift::Int sub_100168C24()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(~v1);
  return sub_1004DF2BC();
}

Swift::Int sub_100168C9C()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(~v1);
  return sub_1004DF2BC();
}

uint64_t sub_100168CE0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t CloudLibrary.Status.shouldDisplayBanner.getter(uint64_t a1)
{
  if (qword_100633D00 != -1)
  {
    swift_once();
  }

  v2 = static CloudLibrary.StatusObserver.shared;
  swift_beginAccess();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v8 = *(v2 + 16);
  v9 = v3;
  v10 = v4;
  v5 = sub_100004CB8(&qword_100638458);
  UserDefault.wrappedValue.getter(v5, &v7);
  if (v7 != 2 && (v7 & 1) != 0)
  {
LABEL_8:
    LOBYTE(a1) = 0;
    return a1 & 1;
  }

  if (a1 >> 30 != 1)
  {
    if (a1 >> 30 != 2 || (a1 - 0x80000000) >= 3)
    {
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    goto LABEL_8;
  }

  return a1 & 1;
}

uint64_t CloudLibrary.Status.shouldShowActionButton.getter(unint64_t a1)
{
  v1 = a1 >> 1 == 1073741825;
  if (a1 >> 30 != 2)
  {
    v1 = 0;
  }

  return !(a1 >> 30) || v1;
}

void (*CloudLibrary.Status.action.getter(unint64_t a1))()
{
  v1 = sub_100168EBC;
  if (a1 >> 30)
  {
    if (a1 >> 30 != 2)
    {
      return 0;
    }

    v1 = sub_100168EBC;
    if (a1 >> 1 != 1073741825)
    {
      return 0;
    }
  }

  return v1;
}

void sub_100168EBC()
{
  if (qword_100633D00 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
}

unint64_t CloudLibrary.Status.progress.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if ((a1 & 0xC0000000) != 0x40000000)
  {
    v1 = 0;
  }

  return v1 | (((a1 & 0xC0000000) != 0x40000000) << 32);
}

uint64_t sub_100168F90()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v13[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  v11 = v10;
  result = (*(v2 + 8))(v7, v1);
  static CloudLibrary.EnablementContext.action = v9;
  *algn_100671D28 = v11;
  return result;
}

uint64_t static CloudLibrary.EnablementContext.action.getter()
{
  if (qword_100633CF8 != -1)
  {
    swift_once();
  }

  v0 = static CloudLibrary.EnablementContext.action;

  return v0;
}

uint64_t sub_1001691DC()
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  swift_allocObject();
  result = sub_100169278();
  static CloudLibrary.StatusObserver.shared = result;
  return result;
}

uint64_t static CloudLibrary.StatusObserver.shared.getter()
{
  if (qword_100633D00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100169278()
{
  v1 = v0;
  v2 = sub_100004CB8(&unk_100638478);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30[-v4];
  v32 = 2;
  v31[0] = 0xD000000000000014;
  v31[1] = 0x80000001004E9E20;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_100030C58();
  UserDefault.init(wrappedValue:defaults:key:)(&v32, v6, v31, &type metadata for String, &v33);
  v7 = v34;
  v8 = v35;
  *(v1 + 16) = v33;
  *(v1 + 32) = v7;
  *(v1 + 40) = v8;
  *(v1 + 48) = _swiftEmptyArrayStorage;
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = static ApplicationCapabilities.Controller.shared;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v9 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  *&v33 = 0x80000000;

  sub_1004D9B2C();
  (*(v3 + 32))(v1 + v9, v5, v2);
  *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;
  sub_100004CB8(&unk_1006372F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511A40;
  if (qword_100633BC0 != -1)
  {
    swift_once();
  }

  v11 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v12.location = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v12.length = *(v1 + 56);
  v13 = CFRange.init(_:)(v12);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v13;
  v14 = qword_100633BE0;
  v15 = v11;

  if (v14 != -1)
  {
    swift_once();
  }

  v16 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v17.location = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v17.length = *(v1 + 56);
  v18 = CFRange.init(_:)(v17);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v18;
  v19 = MPCloudControllerCloudLibraryFailureDidChangeNotification;
  v20 = CFRange.init(_:)(MPCloudControllerCloudLibraryFailureDidChangeNotification);
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v20;
  v21 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v22 = v16;

  v23 = v19;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_100171E2C, v21);

  swift_beginAccess();
  sub_1004DD84C();
  if (*((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
  swift_endAccess();
  v24 = MPCloudControllerIsUpdateInProgressDidChangeNotification;
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 sharedCloudController];
  v28 = swift_allocObject();
  swift_weakInit();

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + 80) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v26, v27, 1, 1, sub_100171E34, v28);

  return v1;
}

void sub_10016977C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v23[4] = v19;
    v23[5] = v20;
    v24 = v21;
    v25 = v22;
    v23[0] = v15;
    v23[1] = v16;
    v23[2] = v17;
    v23[3] = v18;
    sub_100073E60(v23);
    if (v24 == 2)
    {
    }

    else
    {
      v2 = sub_1004DF08C();

      if ((v2 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1004D9B6C();

        v6 = v15;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v15 = 2147483649;

        sub_1004D9B7C();
        sub_10016B164(v6);
        goto LABEL_9;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    sub_100073E60(&v15);
    if ((BYTE2(v15) & 1) == 0)
    {
      v3 = [objc_opt_self() sharedCloudController];
      if (v3)
      {
        v4 = v3;
        *&v9 = sub_100171E3C;
        *(&v9 + 1) = v1;
        *&v7 = _NSConcreteStackBlock;
        *(&v7 + 1) = 1107296256;
        *&v8 = sub_100022450;
        *(&v8 + 1) = &unk_1005E0B50;
        v5 = _Block_copy(&v7);

        [v4 loadLastKnownEnableICMLErrorStatusWithCompletionHander:v5];

        _Block_release(v5);
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_9:
  }
}

uint64_t sub_100169AE0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004DBEBC();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004DBEFC();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006F10(0, &qword_1006372C0);
  v12 = sub_1004DE14C();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_100171E8C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005E0BA0;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();
  v15 = a1;

  sub_1004DBEDC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100171CE4(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_100638950);
  sub_100042B08(&qword_10063ACA0, &unk_100638950);
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_100169DF0(uint64_t a1, void *a2)
{
  if (a1 || !a2)
  {
    goto LABEL_5;
  }

  v2 = a2;
  if (_s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0([v2 integerValue]) == 6)
  {

LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1004D9B7C();
    sub_10016B164(v3);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B7C();
  sub_10016B164(v3);
}

uint64_t sub_100169F90()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10016B858();
  }

  return result;
}

uint64_t sub_100169FE8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v3 = sub_100004CB8(&qword_100638458);
  result = UserDefault.wrappedValue.getter(v3, &v6);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v5 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v7 = 2147483650;

    sub_1004D9B7C();
    return sub_10016B164(v5);
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.hasDisregardedBanner.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = v1;
  v8 = v2;
  v3 = sub_100004CB8(&qword_100638458);
  UserDefault.wrappedValue.getter(v3, &v5);
  return v5;
}

uint64_t CloudLibrary.StatusObserver.hasDisregardedBanner.setter(char a1)
{
  v3 = a1;
  swift_beginAccess();
  v1 = sub_100004CB8(&qword_100638458);
  UserDefault.wrappedValue.setter(&v3, v1);
  swift_endAccess();
  return sub_100169FE8();
}

void (*CloudLibrary.StatusObserver.hasDisregardedBanner.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_beginAccess();
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  v7 = sub_100004CB8(&qword_100638458);
  *(v4 + 64) = v7;
  UserDefault.wrappedValue.getter(v7, v4 + 25);
  return sub_10016A2C0;
}

void sub_10016A2C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *a1;
  *(*a1 + 26) = *(*a1 + 25);
  swift_beginAccess();
  UserDefault.wrappedValue.setter(v3 + 26, v2);
  swift_endAccess();
  sub_100169FE8();

  free(v1);
}

void CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_beginAccess();
    v6 = *(v2 + 48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 48) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_10003AB0C(0, v6[2] + 1, 1, v6);
      *(v2 + 48) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_10003AB0C((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = sub_1001705B0;
    v10[5] = v5;
    *(v2 + 48) = v6;
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v11 = v21[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v21[0] = 2147483652;

  sub_1004D9B7C();
  sub_10016B164(v11);
  sub_100004CB8(&qword_100638468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005126C0;
  *(inited + 32) = sub_1004DD43C();
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1004DD43C();
  *(inited + 64) = v14;
  *(inited + 72) = 1;
  v15 = sub_10005F6BC(inited);
  swift_setDeallocating();
  sub_100004CB8(&qword_100638470);
  swift_arrayDestroy();
  v16 = [objc_opt_self() sharedCloudController];
  if (v16)
  {
    v17 = v16;
    sub_1001681C4(v15);

    isa = sub_1004DD1FC().super.isa;

    v19 = swift_allocObject();
    swift_weakInit();
    v21[4] = sub_100170590;
    v21[5] = v19;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_100167E90;
    v21[3] = &unk_1005E0408;
    v20 = _Block_copy(v21);

    [v17 enableCloudLibraryWithOptions:isa completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10016A6DC(uint64_t a1)
{
  v2 = sub_1004DBEBC();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DBEFC();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_100633D08 != -1)
    {
      swift_once();
    }

    v17 = sub_1004D966C();
    sub_100035430(v17, qword_100638440);
    v9 = sub_1004D964C();
    v18 = sub_1004DDF9C();
    if (os_log_type_enabled(v9, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v9, v18, "Successfully enabled Cloud Library", v19, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100633D08 != -1)
  {
    swift_once();
  }

  v8 = sub_1004D966C();
  sub_100035430(v8, qword_100638440);
  swift_errorRetain();
  v9 = sub_1004D964C();
  v10 = sub_1004DDF7C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v2;
    v13 = v12;
    aBlock[0] = v12;
    *v11 = 136315138;
    aBlock[6] = a1;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v14 = sub_1004DD4DC();
    v16 = sub_1000343A8(v14, v15, aBlock);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to enable Cloud Library with error=%s", v11, 0xCu);
    sub_100008D24(v13);
    v2 = v26;

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_100006F10(0, &qword_1006372C0);
    v22 = sub_1004DE14C();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = a1;
    aBlock[4] = sub_100171E24;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005E0B28;
    v24 = _Block_copy(aBlock);
    swift_errorRetain();

    sub_1004DBEDC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100171CE4(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_100638950);
    sub_100042B08(&qword_10063ACA0, &unk_100638950);
    sub_1004DE92C();
    sub_1004DE15C();
    _Block_release(v24);

    (*(v29 + 8))(v4, v2);
    return (*(v27 + 8))(v7, v28);
  }

  return result;
}

uint64_t sub_10016AC28(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 48);
  *(a1 + 48) = _swiftEmptyArrayStorage;
  v6 = *(v5 + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = v5 + 40;
  while (v7 < *(v5 + 16))
  {
    ++v7;
    v9 = *(v8 - 8);
    v10 = a2 == 0;

    v9(&v10);

    v8 += 16;
    if (v6 == v7)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t CloudLibrary.StatusObserver.add(updateObserver:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 64);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      sub_1001705DC(v8, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100170614(v16);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
        }
      }

      ++v9;
      v8 += 16;
      if (v7 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v19 = a2;
  swift_unknownObjectWeakInit();
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  (*(a2 + 8))(v16[0], ObjectType, a2);
  sub_1001705DC(v18, v17);
  swift_beginAccess();
  a1 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = sub_10003AB7C(0, a1[2] + 1, 1, a1);
    *(v3 + 64) = a1;
  }

  v15 = a1[2];
  v14 = a1[3];
  if (v15 >= v14 >> 1)
  {
    a1 = sub_10003AB7C((v14 > 1), v15 + 1, 1, a1);
  }

  a1[2] = v15 + 1;
  sub_100060260(v17, &a1[2 * v15 + 4]);
  *(v3 + 64) = a1;
  swift_endAccess();
  return sub_100170614(v18);
}

uint64_t CloudLibrary.StatusObserver.remove(updateObserver:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 64);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    v7 = 0;
    while (v7 < *(v4 + 16))
    {
      sub_1001705DC(v6, v9);
      Strong = swift_unknownObjectWeakLoadStrong();
      result = sub_100170614(v9);
      if (Strong)
      {
        result = swift_unknownObjectRelease();
        if (Strong == a1)
        {

          swift_beginAccess();
          sub_100055120(v7, v10);
          sub_100170614(v10);
          return swift_endAccess();
        }
      }

      ++v7;
      v6 += 16;
      if (v5 == v7)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10016B018@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a1 = v3;
  return result;
}

uint64_t sub_10016B098()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B7C();
  return sub_10016B164(v1);
}

uint64_t sub_10016B164(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  result = _s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v11, a1);
  if ((result & 1) == 0)
  {
    if (qword_100633D08 != -1)
    {
      swift_once();
    }

    v3 = sub_1004D966C();
    sub_100035430(v3, qword_100638440);

    v4 = sub_1004D964C();
    v5 = sub_1004DDF9C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

      v8 = sub_1004DD4DC();
      v10 = sub_1000343A8(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Status did change: %s", v6, 0xCu);
      sub_100008D24(v7);
    }

    return sub_10016C524();
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.status.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

uint64_t sub_10016B3E8()
{
  swift_beginAccess();
  sub_100004CB8(&unk_100638478);
  sub_1004D9B3C();
  return swift_endAccess();
}

uint64_t sub_10016B460(uint64_t a1)
{
  v2 = sub_100004CB8(&unk_100638960);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100004CB8(&unk_100638478);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t CloudLibrary.StatusObserver.$status.getter()
{
  swift_beginAccess();
  sub_100004CB8(&unk_100638478);
  sub_1004D9B3C();
  return swift_endAccess();
}

float sub_10016B658(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
  if (a1 == 2)
  {
    if (v2 == 2)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v2 == 2)
  {
LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1004D9B7C();
    sub_10016B164(v4);
    return result;
  }

  if (((v2 ^ a1) & 1) != 0 || (result = *(&v2 + 1), *(&a1 + 1) != *(&v2 + 1)))
  {
LABEL_3:
    if ((v2 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

float (*sub_10016B7F4(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext;
  *a1 = v1;
  a1[1] = v2;
  a1[2] = *(v1 + v2);
  return sub_10016B828;
}

float sub_10016B828(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  return sub_10016B658(v4);
}

void sub_10016B858()
{
  v1 = sub_1004DBEBC();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v53 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1004DBEFC();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DBEAC();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = __chkstk_darwin(v4);
  v48 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v46 = (&v42 - v7);
  v47 = sub_1004DBF2C();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004DE1CC();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004DBECC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_opt_self();
  v17 = [v16 sharedCloudController];
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v17 isUpdateInProgress];

  v20 = [v16 sharedCloudController];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = [v20 isInitialImport];

  v23 = v19 & v22;
  v24 = *(v0 + 88);
  if (v23 == 1)
  {
    if (!v24)
    {
      v25 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
      *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 1;
      v42 = v0;
      sub_10016B658(v25);
      sub_100006F10(0, &unk_100638920);
      sub_100006F10(0, &qword_1006372C0);
      (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.userInteractive(_:), v12);
      v26 = sub_1004DE18C();
      (*(v13 + 8))(v15, v12);
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100171CE4(&unk_100638930, &type metadata accessor for OS_dispatch_source.TimerFlags);
      sub_100004CB8(&qword_10063AC80);
      sub_100042B08(&unk_100638940, &qword_10063AC80);
      sub_1004DE92C();
      v27 = sub_1004DE1DC();

      (*(v43 + 8))(v11, v9);
      swift_getObjectType();
      v28 = v44;
      sub_1004DBF1C();
      v29 = v46;
      *v46 = 1;
      v31 = v49;
      v30 = v50;
      v32 = *(v49 + 104);
      v32(v29, enum case for DispatchTimeInterval.seconds(_:), v50);
      v33 = v48;
      *v48 = 1;
      v32(v33, enum case for DispatchTimeInterval.nanoseconds(_:), v30);
      sub_1004DE36C();
      v34 = *(v31 + 8);
      v34(v33, v30);
      v34(v29, v30);
      (*(v45 + 8))(v28, v47);
      v35 = v42;
      aBlock[4] = sub_100171D2C;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100012680;
      aBlock[3] = &unk_1005E08F8;
      v36 = _Block_copy(aBlock);
      v37 = v35;

      v38 = v51;
      sub_10021CD50();
      v39 = v53;
      sub_10021CD54();
      sub_1004DE1EC();
      _Block_release(v36);
      (*(v55 + 8))(v39, v56);
      (*(v52 + 8))(v38, v54);

      v40 = *(v35 + 88);
      *(v37 + 88) = v27;
      if (v40)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1004DE1FC();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_1004DE20C();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    *(v0 + 88) = 0;
    if (v24)
    {
      swift_getObjectType();
      sub_1004DE1FC();
      swift_unknownObjectRelease();
    }

    v41 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
    *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;

    sub_10016B658(v41);
  }
}

void sub_10016C028(uint64_t a1)
{
  v2 = [objc_opt_self() sharedCloudController];
  if (v2)
  {
    v3 = v2;
    v5[4] = sub_100171D34;
    v5[5] = a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10016C4D0;
    v5[3] = &unk_1005E0920;
    v4 = _Block_copy(v5);

    [v3 loadCloudMusicLibraryUpdateProgressWithCompletionHandler:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10016C11C(float a1)
{
  v2 = sub_1004DBEBC();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DBEFC();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006F10(0, &qword_1006372C0);
  v8 = sub_1004DE14C();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_100171D74;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005E0970;
  v11 = _Block_copy(aBlock);

  sub_1004DBEDC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100171CE4(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_100638950);
  sub_100042B08(&qword_10063ACA0, &unk_100638950);
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

uint64_t sub_10016C43C(float a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_10016B7F4(v5);
    if (*v3 != 2)
    {
      *(v3 + 4) = a1;
    }

    (v4)(v5, 0);
  }

  return result;
}

uint64_t sub_10016C4D0(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t sub_10016C524()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v1 = v10;
  result = swift_beginAccess();
  v3 = *(v0 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    do
    {
      sub_1001705DC(v5, v8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = v9;
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v1, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      sub_100170614(v8);
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.deinit()
{
  v1 = *(v0 + 16);

  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  v3 = sub_100004CB8(&unk_100638478);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CloudLibrary.StatusObserver.__deallocating_deinit()
{
  CloudLibrary.StatusObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10016C740@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  result = sub_1004D9AFC();
  *a1 = result;
  return result;
}

uint64_t CloudLibrary.Status.message.getter(uint64_t a1)
{
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 >> 30 > 1 && (a1 - 0x80000000) < 3)
  {
    return 0;
  }

  sub_1004DD37C();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v10 = qword_100671958;
  sub_1004D838C();
  v11 = sub_1004DD4AC();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t CloudLibrary.Status.actionTitle.getter(uint64_t a1)
{
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 >> 30 && (a1 >> 30 == 1 || a1 != 2147483651))
  {
    return 0;
  }

  sub_1004DD37C();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v11 = qword_100671958;
  sub_1004D838C();
  v12 = sub_1004DD4AC();
  (*(v4 + 8))(v9, v3);
  return v12;
}

uint64_t static CloudLibrary.PresentationStyle.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  sub_100006F10(0, &qword_1006381E0);
  return sub_1004DE5FC() & 1;
}

uint64_t sub_10016CC90(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_100006F10(0, &qword_1006381E0);
  return sub_1004DE5FC() & 1;
}

void sub_10016CD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (qword_100633D00 != -1)
  {
    swift_once();
    v4 = a2;
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(v4, a3);
}

uint64_t sub_10016CD8C(uint64_t a1, unsigned __int8 a2, uint64_t a3, void *a4)
{
  v8 = sub_100004CB8(&qword_100635DF0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(a2, a3, a4, sub_1001720E8, v13);
}

void static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:cloudLibraryEnabledCompletion:)(unsigned __int8 a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v27[4] = v23;
  v27[5] = v24;
  v27[6] = v25;
  v27[7] = v26;
  v27[0] = v19;
  v27[1] = v20;
  v27[2] = v21;
  v27[3] = v22;
  sub_100073E60(v27);
  if (BYTE2(v27[0]))
  {
    if (!a4)
    {
      return;
    }

    v10 = 1;
LABEL_9:
    a4(v10);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  sub_100073E60(&v19);
  if ((BYTE9(v19) & 1) == 0)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    goto LABEL_9;
  }

  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(a1, a2, a3, a4, a5);
}

uint64_t static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = sub_1004DDA4C();
  *(v3 + 40) = sub_1004DDA3C();
  v5 = sub_1004DD9BC();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_10016D144, v5, v4);
}

uint64_t sub_10016D144()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 89);
  v4 = sub_1004DDA3C();
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_10016D260;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 88, v4, &protocol witness table for MainActor, 0xD000000000000045, 0x80000001004EFBF0, sub_100171114, v5, &type metadata for Bool);
}

uint64_t sub_10016D260()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10016D3C0, v3, v2);
}

uint64_t sub_10016D3C0()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10016D424(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v5 = sub_100004CB8(&qword_100635DF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v12 = &v22[-v11];
  __chkstk_darwin(v10);
  v14 = &v22[-v13];
  v15 = *(v6 + 16);
  v15(&v22[-v13], a1, v5);
  v15(v12, v14, v5);
  v15(v9, v14, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v14, v5);
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v42[4] = v38;
  v42[5] = v39;
  v42[6] = v40;
  v42[7] = v41;
  v42[0] = v34;
  v42[1] = v35;
  v42[2] = v36;
  v42[3] = v37;
  sub_100073E60(v42);
  if (BYTE2(v42[0]))
  {
    v18 = *(v6 + 8);
    v18(v12, v5);
    LOBYTE(v34) = 1;
    sub_1004DD9DC();

    return (v18)(v9, v5);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v38 = v30;
    v39 = v31;
    v40 = v32;
    v41 = v33;
    v34 = v26;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    sub_100073E60(&v34);
    if (BYTE9(v34))
    {
      v21 = *(v6 + 8);
      v21(v12, v5);
      _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v23, v24, v25, sub_100171D84, v17);

      return (v21)(v9, v5);
    }

    else
    {
      LOBYTE(v26) = 0;
      sub_1004DD9DC();

      v20 = *(v6 + 8);
      v20(v9, v5);
      return (v20)(v12, v5);
    }
  }
}

char *sub_10016D7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + qword_100638698) = 0;
  type metadata accessor for EnableCloudLibraryView.Model(0);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v14 = 0;
  v14[1] = 0;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;
  swift_beginAccess();
  sub_10000DE64(a5);
  type metadata accessor for UIUserInterfaceSizeClass(0);
  sub_1004D9B2C();
  swift_endAccess();
  v15 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v16 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v15 = 0;
  v15[1] = 0;
  sub_10000DE74(v16);
  *(v6 + qword_100638690) = v13;
  sub_100171CE4(&qword_100638970, type metadata accessor for EnableCloudLibraryView.Model);
  swift_retain_n();
  v30 = sub_1004DA13C();
  v31 = v17;
  v18 = sub_1004DA9BC();
  v19 = *&v18[qword_100638690];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = (v19 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v22 = *(v19 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v21 = sub_100171DDC;
  v21[1] = v20;
  v23 = v18;

  sub_10000DE74(v22);

  sub_10016DE2C();
  v24 = [v23 presentingViewController];
  if (v24)
  {
    v25 = v24;
    sub_100004CB8(&qword_100638978);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100511DA0;
    *(v26 + 32) = sub_1004D993C();
    *(v26 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_1004DE05C();
    swift_unknownObjectRelease();
  }

  v27 = [v23 presentationController];

  if (v27)
  {
    sub_100004CB8(&qword_100638978);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100511DA0;
    *(v28 + 32) = sub_1004D993C();
    *(v28 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_1004DE37C();

    sub_10000DE74(a5);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_10000DE74(a5);
  }

  return v23;
}

void sub_10016DB10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10016DB74(uint64_t a1)
{
  *(a1 + qword_100638698) = 0;
  sub_1004DECCC();
  __break(1u);
}

void sub_10016DBDC(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CloudLibraryViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 navigationItem];
  v3 = sub_10016DCA4();
  [v2 setLeftBarButtonItem:v3];

  v4 = [v1 navigationItem];
  [v4 setLargeTitleDisplayMode:2];
}

objc_class *sub_10016DCA4()
{
  v1 = qword_100638698;
  v2 = *(v0 + qword_100638698);
  if (v2)
  {
    v3 = *(v0 + qword_100638698);
  }

  else
  {
    sub_100006F10(0, &unk_100638910);
    sub_100006F10(0, &qword_1006350D0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v9.value.super.super.isa = sub_1004DE62C();
    v9.is_nil = 0;
    v5.super.super.isa = sub_1004DDFDC(UIBarButtonSystemItemClose, v9, v10).super.super.isa;
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5.super.super.isa;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_10016DDC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10016DE2C()
{
  v1 = [v0 presentingViewController];
  if (v1 && (v2 = v1, v3 = [v1 traitCollection], v2, v3) || (v4 = objc_msgSend(v0, "presentationController")) != 0 && (v5 = v4, v3 = objc_msgSend(v4, "traitCollection"), v5, v3))
  {

    [v3 horizontalSizeClass];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B7C();
  }
}

void sub_10016DF34(void *a1)
{
  v1 = a1;
  sub_10016DE2C();
}

void sub_10016DF7C()
{

  v1 = *(v0 + qword_100638698);
}

id sub_10016DFBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudLibraryViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10016DFF4(uint64_t a1)
{

  v2 = *(a1 + qword_100638698);
}

uint64_t sub_10016E040()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

uint64_t sub_10016E114()
{

  sub_10000DE74(*(v0 + 48));
  v1 = OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model__horizontalSizeClass;
  v2 = sub_100004CB8(&qword_100638908);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000DE74(*(v0 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss));

  return swift_deallocClassInstance();
}

uint64_t sub_10016E1E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EnableCloudLibraryView.Model(0);
  result = sub_1004D9AFC();
  *a1 = result;
  return result;
}

uint64_t sub_10016E228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004CB8(&qword_100638828);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_100004CB8(&qword_100638830);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  *v8 = sub_1004DAEFC();
  v13 = sub_100004CB8(&qword_100638838);
  sub_10016E4C0(a1, a2, &v8[*(v13 + 44)]);
  v14 = sub_1004DAF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004D9C8C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_100047F38(v8, v12, &qword_100638828);
  v23 = &v12[*(v10 + 44)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = sub_1004DAF4C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004D9C8C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_100047F38(v12, a3, &qword_100638830);
  result = sub_100004CB8(&qword_100638840);
  v34 = a3 + *(result + 36);
  *v34 = v24;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_10016E4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_100004CB8(&qword_100638848);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = sub_100004CB8(&qword_100638850);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = sub_100004CB8(&qword_100638858);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v31 - v21;
  *v22 = sub_1004DA90C();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = sub_100004CB8(&qword_100638860);
  sub_10016E85C(a1, a2, &v22[*(v23 + 44)]);
  *v16 = sub_1004DA90C();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v24 = sub_100004CB8(&qword_100638868);
  sub_10016EE1C(a1, a2, &v16[*(v24 + 44)]);
  *v10 = sub_1004DA90C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v25 = sub_100004CB8(&qword_100638870);
  sub_10016F50C(a1, a2, &v10[*(v25 + 44)]);
  v26 = v20;
  v31 = v20;
  sub_1000108DC(v22, v20, &qword_100638858);
  sub_1000108DC(v16, v14, &qword_100638850);
  v27 = v8;
  sub_1000108DC(v10, v8, &qword_100638848);
  v28 = v32;
  sub_1000108DC(v26, v32, &qword_100638858);
  v29 = sub_100004CB8(&qword_100638878);
  sub_1000108DC(v14, v28 + *(v29 + 48), &qword_100638850);
  sub_1000108DC(v27, v28 + *(v29 + 64), &qword_100638848);
  sub_10001074C(v10, &qword_100638848);
  sub_10001074C(v16, &qword_100638850);
  sub_10001074C(v22, &qword_100638858);
  sub_10001074C(v27, &qword_100638848);
  sub_10001074C(v14, &qword_100638850);
  return sub_10001074C(v31, &qword_100638858);
}

uint64_t sub_10016E85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004DAD8C();
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004CB8(&qword_100638880);
  v35 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v34 = sub_100004CB8(&qword_100638888);
  v39 = *(v34 - 8);
  v13 = __chkstk_darwin(v34);
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v38 = &v31 - v15;
  v41 = sub_1004DA90C();
  v43 = 0;
  sub_10016FD34(&v53);
  v46 = *&v54[16];
  v47 = *&v54[32];
  v48[0] = *&v54[48];
  *(v48 + 9) = *&v54[57];
  v44 = v53;
  v45 = *v54;
  *(v50 + 9) = *&v54[57];
  v49[2] = *&v54[16];
  v49[3] = *&v54[32];
  v50[0] = *&v54[48];
  v49[0] = v53;
  v49[1] = *v54;
  sub_1000108DC(&v44, &v51, &qword_1006388F0);
  sub_10001074C(v49, &qword_1006388F0);
  *(&v42[2] + 7) = v46;
  *(&v42[3] + 7) = v47;
  *(&v42[4] + 7) = v48[0];
  v42[5] = *(v48 + 9);
  *(v42 + 7) = v44;
  *(&v42[1] + 7) = v45;
  v40 = v43;
  v32 = sub_1004DB95C();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  sub_100004CB8(&qword_1006388B0);
  sub_100171B08();
  sub_1004DBA3C();
  sub_1004DAD7C();
  sub_100042B08(&qword_1006388D0, &qword_100638880);
  sub_100171CE4(&qword_1006388D8, &type metadata accessor for BorderedProminentButtonStyle);
  v17 = v38;
  v18 = v36;
  sub_1004DB3DC();
  (*(v37 + 8))(v9, v18);
  (*(v35 + 8))(v12, v10);
  v19 = *(v39 + 16);
  v20 = v33;
  v21 = v34;
  v19(v33, v17, v34);
  *&v51 = v41;
  *(&v51 + 1) = 0x4020000000000000;
  v52[0] = v40;
  *&v52[1] = v42[0];
  *&v52[17] = v42[1];
  *&v52[33] = v42[2];
  *&v52[81] = v42[5];
  *&v52[65] = v42[4];
  *&v52[49] = v42[3];
  v22 = v51;
  v23 = *v52;
  v24 = *&v52[32];
  *(a3 + 32) = *&v52[16];
  *(a3 + 48) = v24;
  *a3 = v22;
  *(a3 + 16) = v23;
  v25 = *&v52[48];
  v26 = *&v52[64];
  v27 = *&v52[80];
  *(a3 + 112) = v52[96];
  *(a3 + 80) = v26;
  *(a3 + 96) = v27;
  *(a3 + 64) = v25;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  *(a3 + 136) = v32;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  v28 = sub_100004CB8(&qword_100638900);
  v19((a3 + *(v28 + 96)), v20, v21);
  sub_1000108DC(&v51, &v53, &qword_1006388A0);
  v29 = *(v39 + 8);

  v29(v38, v21);
  v29(v20, v21);

  *&v54[33] = v42[2];
  *&v54[49] = v42[3];
  *&v54[65] = v42[4];
  v55 = v42[5];
  *&v54[1] = v42[0];
  *&v53 = v41;
  *(&v53 + 1) = 0x4020000000000000;
  v54[0] = v40;
  *&v54[17] = v42[1];
  return sub_10001074C(&v53, &qword_1006388A0);
}

uint64_t sub_10016EE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = sub_1004DAD8C();
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v45 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100004CB8(&qword_100638880);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v8 = v42 - v7;
  v9 = sub_100004CB8(&qword_100638888);
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v44 = v42 - v10;
  v50 = sub_100004CB8(&qword_100638890) - 8;
  v11 = __chkstk_darwin(v50);
  v52 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v42 - v14;
  __chkstk_darwin(v13);
  v47 = v42 - v16;
  v49 = sub_1004DA90C();
  v61 = 0;
  sub_10016FD34(&v58);
  v64 = *&v59[2];
  v65 = *&v59[4];
  v66[0] = *&v59[6];
  *(v66 + 9) = *(&v59[7] + 1);
  v62 = v58;
  v63 = *v59;
  *(v68 + 9) = *(&v59[7] + 1);
  v67[2] = *&v59[2];
  v67[3] = *&v59[4];
  v68[0] = *&v59[6];
  v67[0] = v58;
  v67[1] = *v59;
  sub_1000108DC(&v62, &v56, &qword_1006388F0);
  sub_10001074C(v67, &qword_1006388F0);
  *(&v60[2] + 7) = v64;
  *(&v60[3] + 7) = v65;
  *(&v60[4] + 7) = v66[0];
  v60[5] = *(v66 + 9);
  *(v60 + 7) = v62;
  *(&v60[1] + 7) = v63;
  v43 = v61;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v42[1] = a2;

  sub_100004CB8(&qword_1006388B0);
  sub_100171B08();
  sub_1004DBA3C();
  v18 = v45;
  sub_1004DAD7C();
  sub_100042B08(&qword_1006388D0, &qword_100638880);
  sub_100171CE4(&qword_1006388D8, &type metadata accessor for BorderedProminentButtonStyle);
  v19 = v44;
  v20 = v46;
  v21 = v51;
  sub_1004DB3DC();
  (*(v53 + 8))(v18, v21);
  (*(v48 + 8))(v8, v20);
  LOBYTE(v8) = sub_1004DAF3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004D9C8C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  (*(v54 + 32))(v15, v19, v55);
  v30 = &v15[*(v50 + 44)];
  *v30 = v8;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = v47;
  sub_100047F38(v15, v47, &qword_100638890);
  v32 = v52;
  sub_1000108DC(v31, v52, &qword_100638890);
  v33 = v49;
  *&v56 = v49;
  *(&v56 + 1) = 0x4020000000000000;
  LOBYTE(a2) = v43;
  v57[0] = v43;
  *&v57[1] = v60[0];
  *&v57[17] = v60[1];
  *&v57[33] = v60[2];
  *&v57[81] = v60[5];
  *&v57[65] = v60[4];
  *&v57[49] = v60[3];
  v34 = v56;
  v35 = *v57;
  v36 = *&v57[32];
  *(a3 + 32) = *&v57[16];
  *(a3 + 48) = v36;
  *a3 = v34;
  *(a3 + 16) = v35;
  v37 = *&v57[48];
  v38 = *&v57[64];
  v39 = *&v57[80];
  *(a3 + 112) = v57[96];
  *(a3 + 80) = v38;
  *(a3 + 96) = v39;
  *(a3 + 64) = v37;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  v40 = sub_100004CB8(&qword_1006388F8);
  sub_1000108DC(v32, a3 + *(v40 + 64), &qword_100638890);
  sub_1000108DC(&v56, &v58, &qword_1006388A0);
  sub_10001074C(v31, &qword_100638890);
  sub_10001074C(v32, &qword_100638890);
  *(&v59[4] + 1) = v60[2];
  *(&v59[6] + 1) = v60[3];
  *(&v59[8] + 1) = v60[4];
  *(&v59[10] + 1) = v60[5];
  *(v59 + 1) = v60[0];
  *&v58 = v33;
  *(&v58 + 1) = 0x4020000000000000;
  LOBYTE(v59[0]) = a2;
  *(&v59[2] + 1) = v60[1];
  return sub_10001074C(&v58, &qword_1006388A0);
}

uint64_t sub_10016F50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v62 = a3;
  v5 = sub_1004DAD8C();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100004CB8(&qword_100638880);
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v10 = &v47 - v9;
  v61 = sub_100004CB8(&qword_100638888);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v49 = &v47 - v11;
  v56 = sub_100004CB8(&qword_100638890) - 8;
  v12 = __chkstk_darwin(v56);
  v60 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v47 - v15;
  __chkstk_darwin(v14);
  v54 = &v47 - v17;
  v18 = sub_100004CB8(&qword_100638898);
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = __chkstk_darwin(v18);
  v50 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v48 = &v47 - v21;
  sub_1004DAEFC();
  v63 = a1;
  v64 = a2;
  sub_100004CB8(&qword_1006388A0);
  sub_100042B08(&qword_1006388A8, &qword_1006388A0);
  sub_1004D9D0C();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;

  sub_100004CB8(&qword_1006388B0);
  sub_100171B08();
  sub_1004DBA3C();
  sub_1004DAD7C();
  sub_100042B08(&qword_1006388D0, &qword_100638880);
  sub_100171CE4(&qword_1006388D8, &type metadata accessor for BorderedProminentButtonStyle);
  v23 = v49;
  v24 = v53;
  v25 = v57;
  sub_1004DB3DC();
  (*(v58 + 8))(v8, v25);
  (*(v55 + 8))(v10, v24);
  LOBYTE(v8) = sub_1004DAF3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004D9C8C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v59 + 32))(v16, v23, v61);
  v34 = &v16[*(v56 + 44)];
  *v34 = v8;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v54;
  sub_100047F38(v16, v54, &qword_100638890);
  v37 = v51;
  v36 = v52;
  v38 = *(v51 + 16);
  v39 = v50;
  v40 = v48;
  v38(v50, v48, v52);
  v41 = v60;
  sub_1000108DC(v35, v60, &qword_100638890);
  v42 = v62;
  v38(v62, v39, v36);
  v43 = sub_100004CB8(&unk_1006388E0);
  v44 = &v42[*(v43 + 48)];
  *v44 = 0;
  v44[8] = 1;
  sub_1000108DC(v41, &v42[*(v43 + 64)], &qword_100638890);
  sub_10001074C(v35, &qword_100638890);
  v45 = *(v37 + 8);
  v45(v40, v36);
  sub_10001074C(v41, &qword_100638890);
  return (v45)(v39, v36);
}

double sub_10016FBE4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1004DA90C();
  v15 = 0;
  sub_10016FD34(&v9);
  v18 = v11;
  v19 = v12;
  v20[0] = v13[0];
  *(v20 + 9) = *(v13 + 9);
  v16 = v9;
  v17 = v10;
  *(v22 + 9) = *(v13 + 9);
  v21[2] = v11;
  v21[3] = v12;
  v22[0] = v13[0];
  v21[0] = v9;
  v21[1] = v10;
  sub_1000108DC(&v16, &v8, &qword_1006388F0);
  sub_10001074C(v21, &qword_1006388F0);
  *&v14[39] = v18;
  *&v14[55] = v19;
  *&v14[71] = v20[0];
  *&v14[80] = *(v20 + 9);
  *&v14[7] = v16;
  *&v14[23] = v17;
  v3 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  *(a1 + 65) = v3;
  v4 = *&v14[80];
  *(a1 + 81) = *&v14[64];
  *(a1 + 97) = v4;
  result = *&v14[16];
  v6 = *v14;
  *(a1 + 33) = *&v14[16];
  v7 = v15;
  *a1 = v2;
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = v7;
  *(a1 + 17) = v6;
  return result;
}

uint64_t sub_10016FD34@<X0>(uint64_t a1@<X8>)
{
  sub_100030C58();

  v2 = sub_1004DB34C();
  v4 = v3;
  v6 = v5;
  sub_1004DAFEC();
  v7 = sub_1004DB2AC();
  v9 = v8;
  v11 = v10;

  sub_100051E10(v2, v4, v6 & 1);

  sub_1004DB03C();
  v12 = sub_1004DB23C();
  v36 = v13;
  v37 = v12;
  v35 = v14;
  v38 = v15;
  sub_100051E10(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();

  v16 = sub_1004DB34C();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_1004DB0AC();
  v20 = sub_1004DB2AC();
  v22 = v21;
  v24 = v23;

  sub_100051E10(v16, v18, v9 & 1);

  sub_1004DABEC();
  v25 = sub_1004DB24C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_100051E10(v20, v22, v24 & 1);

  v32 = swift_getKeyPath();
  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v35 & 1;
  *(a1 + 24) = v38;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = v25;
  *(a1 + 56) = v27;
  *(a1 + 64) = v29 & 1;
  *(a1 + 72) = v31;
  *(a1 + 80) = v32;
  *(a1 + 88) = 1;
  sub_100051E00(v37, v36, v35 & 1);

  sub_100051E00(v25, v27, v29 & 1);

  sub_100051E10(v25, v27, v29 & 1);

  sub_100051E10(v37, v36, v35 & 1);
}

void sub_100170010(uint64_t a1, uint64_t a2)
{
  if (qword_100633D00 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(*(a2 + 48), *(a2 + 56));
  v3 = *(a2 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  if (v3)
  {

    v3(v4);

    sub_10000DE74(v3);
  }
}

__n128 sub_1001700BC@<Q0>(uint64_t a1@<X8>)
{
  if (qword_100633CF8 != -1)
  {
    swift_once();
  }

  v24 = static CloudLibrary.EnablementContext.action;
  sub_100030C58();

  v2 = sub_1004DB34C();
  v4 = v3;
  v6 = v5;
  v7 = sub_1004DB29C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_100051E10(v2, v4, v6 & 1);

  LOBYTE(v2) = sub_1004DAF8C();
  sub_1004D9C8C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1004DBD1C();
  sub_1004DA45C();
  *&v23[55] = v27;
  *&v23[71] = v28;
  *&v23[87] = v29;
  *&v23[103] = v30;
  *&v23[7] = v24;
  *&v23[23] = v25;
  *&v23[39] = v26;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v23[64];
  *(a1 + 153) = *&v23[80];
  *(a1 + 169) = *&v23[96];
  *(a1 + 184) = *(&v30 + 1);
  *(a1 + 73) = *v23;
  *(a1 + 89) = *&v23[16];
  result = *&v23[32];
  *(a1 + 105) = *&v23[32];
  *(a1 + 121) = *&v23[48];
  return result;
}

uint64_t sub_1001702C0()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100638440);
  sub_100035430(v0, qword_100638440);
  return sub_1004D965C();
}

uint64_t sub_100170340@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a1 = v3;
  return result;
}

uint64_t sub_1001703C0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

BOOL _s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 >> 30)
  {
    if (a1 >> 30 == 1)
    {
      if ((a2 & 0xC0000000) == 0x40000000)
      {
        return (*(&a1 + 1) == *(&a2 + 1)) & (a2 ^ a1 ^ 1);
      }

      return 0;
    }

    if (a1 <= 2147483649)
    {
      if (a1 == 0x80000000)
      {
        return a2 == 0x80000000;
      }

      else
      {
        return a2 == 2147483649;
      }
    }

    else if (a1 == 2147483650)
    {
      return a2 == 2147483650;
    }

    else
    {
      if (a1 == 2147483651)
      {
        return a2 == 2147483651;
      }

      return a2 == 2147483652;
    }
  }

  else
  {
    if ((a2 & 0xC0000000) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

uint64_t _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(unint64_t a1)
{
  if (a1 > 0xFFFFFFFFFFFFFFF9)
  {
    return ~a1;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_100170558()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100170598(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(unsigned __int8 a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v79 = a2;
  v9 = sub_1004D83FC();
  __chkstk_darwin(v9 - 8);
  v77[1] = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004DD3EC();
  v77[0] = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v77 - v15;
  v17 = CloudLibrary.EnablementContext.title.getter(a1);
  v19 = v18;
  v20 = CloudLibrary.EnablementContext.message.getter(a1);
  v22 = v21;
  v78 = a3;
  if (a3)
  {
    v23 = sub_1004DD3FC();

    v24 = sub_1004DD3FC();

    v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

    sub_1004DD37C();
    v26 = v77[0];
    (*(v77[0] + 16))(v14, v16, v11);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v27 = qword_100671958;
    sub_1004D838C();
    sub_1004DD4AC();
    (*(v26 + 8))(v16, v11);
    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a5;
    v29 = a5;
    sub_10000DE64(a4);
    v30 = sub_1004DD3FC();

    v84 = sub_100171D8C;
    v85 = v28;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_100018634;
    v83 = &unk_1005E09E8;
    v31 = _Block_copy(&aBlock);

    v32 = objc_opt_self();
    v33 = [v32 actionWithTitle:v30 style:1 handler:v31];
    _Block_release(v31);

    [v25 addAction:v33];
    if (qword_100633CF8 != -1)
    {
      swift_once();
    }

    v34 = swift_allocObject();
    *(v34 + 16) = a4;
    *(v34 + 24) = v29;
    sub_10000DE64(a4);
    v35 = sub_1004DD3FC();
    v84 = sub_100171DC0;
    v85 = v34;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_100018634;
    v83 = &unk_1005E0A38;
    v36 = _Block_copy(&aBlock);

    v37 = [v32 actionWithTitle:v35 style:0 handler:v36];
    _Block_release(v36);

    [v25 addAction:v37];
    v38 = v78;
    v39 = v79;
    if (v78 != 1)
    {
      v40 = v78;
      [v25 setPreferredStyle:0];
      [v40 bounds];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v49 = [v25 popoverPresentationController];
      if (v49)
      {
        v50 = v49;
        [v49 setSourceView:v40];
        [v50 setSourceRect:{v42, v44, v46, v48}];
        sub_100171DCC(v38);
        [v50 setPermittedArrowDirections:15];
      }

      sub_100171DCC(v38);
    }

    v51 = *(v39 + 80);
    if (v51)
    {
      v52 = qword_100633E08;

      if (v52 != -1)
      {
        swift_once();
      }

      v53 = sub_1004D966C();
      sub_100035430(v53, qword_10063B820);
      v54 = sub_1004D964C();
      v55 = sub_1004DDF9C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Deferring presentation…", v56, 2u);
      }

      v57 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_100257E18;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_100258DB8;
      v83 = &unk_1005E0A60;
      v58 = _Block_copy(&aBlock);
      v59 = [v57 initWithTimeout:v58 interruptionHandler:10.0];
      _Block_release(v58);

      sub_1000699E8(v39, &aBlock);
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      sub_10006A8BC(&aBlock, v60 + 24);
      *(v60 + 120) = v25;
      *(v60 + 128) = 1;
      *(v60 + 129) = v38 != 1;
      *(v60 + 136) = 0;
      *(v60 + 144) = 0;
      v61 = v59;
      v62 = v25;
      v51(v39, v62, sub_10007DB94, v60);
      sub_10000DE74(v51);

LABEL_22:

      return;
    }

    sub_1002562F8(v25, 1, (v38 != 1), 0, 0);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for CloudLibraryViewController(0));
    sub_10000DE64(a4);
    v63 = sub_10016D7D8(v17, v19, v20, v22, a4, a5);
    v78 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v63];
    [v78 setModalPresentationStyle:2];
    [v78 setModalPresentationCapturesStatusBarAppearance:1];
    v64 = v79;
    v65 = *(v79 + 80);
    if (v65)
    {
      v66 = qword_100633E08;

      if (v66 != -1)
      {
        swift_once();
      }

      v67 = sub_1004D966C();
      sub_100035430(v67, qword_10063B820);
      v68 = sub_1004D964C();
      v69 = sub_1004DDF9C();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Deferring presentation…", v70, 2u);
      }

      v71 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_100257E18;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_100258DB8;
      v83 = &unk_1005E0AB0;
      v72 = _Block_copy(&aBlock);
      v73 = [v71 initWithTimeout:v72 interruptionHandler:10.0];
      _Block_release(v72);

      sub_1000699E8(v64, &aBlock);
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      sub_10006A8BC(&aBlock, v74 + 24);
      *(v74 + 120) = v78;
      *(v74 + 128) = 256;
      *(v74 + 136) = 0;
      *(v74 + 144) = 0;
      v61 = v73;
      v75 = v78;
      v65(v64, v75, sub_10007DCE4, v74);
      sub_10000DE74(v65);

      goto LABEL_22;
    }

    sub_1002562F8(v78, 0, 1, 0, 0);

    v76 = v78;
  }
}

unint64_t sub_100171124()
{
  result = qword_100638488;
  if (!qword_100638488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638488);
  }

  return result;
}

unint64_t sub_10017117C()
{
  result = qword_100638490;
  if (!qword_100638490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.UpdateContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.UpdateContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.FailureType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.FailureType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.Status(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 536870910);
  }

  if ((((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFFu) >= 0x1FFFFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFF;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFFFD)
  {
    *result = a2 - 536870910;
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 8 * ((-a2 >> 2) & 0x7FFFFFF) - (a2 << 30);
    }
  }

  return result;
}

uint64_t sub_10017149C(void *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 30;
  }

  else
  {
    return ((*a1 >> 29) & 0xFFFFFFF8 | *a1 & 7) + 2;
  }
}

unint64_t *sub_1001714CC(unint64_t *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFF00000007 | (a2 << 30);
  }

  else
  {
    *result = ((a2 - 2) | ((a2 - 2) << 29)) & 0xFFFFFFFF00000007 | 0x80000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.EnablementContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.EnablementContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100171688()
{
  sub_100171758();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100171758()
{
  if (!qword_1006384D0)
  {
    v0 = sub_1004D9B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1006384D0);
    }
  }
}

uint64_t sub_1001717A8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001717C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100171814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_100171928()
{
  sub_1001719D0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001719D0()
{
  if (!qword_100638740)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    v0 = sub_1004D9B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_100638740);
    }
  }
}

uint64_t sub_100171A38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100171A84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100171B08()
{
  result = qword_1006388B8;
  if (!qword_1006388B8)
  {
    sub_100008DE4(&qword_1006388B0);
    sub_100171B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006388B8);
  }

  return result;
}

unint64_t sub_100171B94()
{
  result = qword_1006388C0;
  if (!qword_1006388C0)
  {
    sub_100008DE4(&qword_1006388C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006388C0);
  }

  return result;
}

uint64_t sub_100171C18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA61C();
  *a1 = result;
  return result;
}

uint64_t sub_100171C6C()
{

  return swift_deallocObject();
}

uint64_t sub_100171CA4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100171CE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100171D3C()
{

  return swift_deallocObject();
}

uint64_t sub_100171D8C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

void sub_100171DCC(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_100171DE4()
{

  return swift_deallocObject();
}

uint64_t sub_100171E44()
{

  return swift_deallocObject();
}

uint64_t sub_100171E98()
{
  v1 = sub_100004CB8(&qword_100635DF0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_100171F30()
{
  result = qword_100638988;
  if (!qword_100638988)
  {
    sub_100008DE4(&qword_100638840);
    sub_100171FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638988);
  }

  return result;
}

unint64_t sub_100171FBC()
{
  result = qword_100638990;
  if (!qword_100638990)
  {
    sub_100008DE4(&qword_100638830);
    sub_100042B08(&qword_100638998, &qword_100638828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638990);
  }

  return result;
}

uint64_t sub_100172118(uint64_t a1, char a2)
{
  *(v3 + 2217) = a2;
  sub_100004CB8(&qword_100635240);
  *(v3 + 2096) = swift_task_alloc();
  sub_100004CB8(&qword_100635110);
  *(v3 + 2104) = swift_task_alloc();
  v4 = sub_1004D966C();
  *(v3 + 2112) = v4;
  *(v3 + 2120) = *(v4 - 8);
  *(v3 + 2128) = swift_task_alloc();
  *(v3 + 2136) = swift_task_alloc();
  *(v3 + 2144) = swift_task_alloc();
  *(v3 + 2152) = swift_task_alloc();
  *(v3 + 2160) = swift_task_alloc();
  *(v3 + 2218) = *(v2 + 72);
  v5 = *(v2 + 80);
  v6 = *(v2 + 112);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v6;
  *(v3 + 144) = *(v2 + 128);
  v7 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v7;
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v5;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;

  return _swift_task_switch(sub_1001722AC, 0, 0);
}

uint64_t sub_1001722AC()
{
  v107 = v0;
  v1 = *(v0 + 2218);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v71 = sub_100035920();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v71) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 2216) = 2;
    v73 = sub_1000358CC();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v73) & 1) == 0)
    {
LABEL_22:
      if (qword_100634428 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_100633A90 != -1)
        {
          swift_once();
        }

        v74 = *(v0 + 2160);
        v75 = *(v0 + 2120);
        v76 = *(v0 + 2112);
        v77 = sub_100035430(v76, qword_1006350F8);
        (*(v75 + 16))(v74, v77, v76);
        v78 = *(v0 + 128);
        *(v0 + 1880) = *(v0 + 112);
        *(v0 + 1896) = v78;
        *(v0 + 1912) = *(v0 + 144);
        v79 = *(v0 + 64);
        *(v0 + 1816) = *(v0 + 48);
        *(v0 + 1832) = v79;
        v80 = *(v0 + 96);
        *(v0 + 1848) = *(v0 + 80);
        *(v0 + 1864) = v80;
        v81 = *(v0 + 32);
        *(v0 + 1784) = *(v0 + 16);
        *(v0 + 1800) = v81;
        sub_1000108DC(v0 + 1784, v0 + 1920, &qword_1006359A8);
        v82 = sub_1004D964C();
        v83 = sub_1004DDF7C();
        v84 = os_log_type_enabled(v82, v83);
        v85 = *(v0 + 2160);
        v86 = *(v0 + 2120);
        v87 = *(v0 + 2112);
        if (v84)
        {
          v100 = *(v0 + 2160);
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *&v101[0] = v89;
          *v88 = 136446210;
          v90 = ActionType.rawValue.getter(*(v0 + 1856));
          v92 = v91;
          sub_10001074C(v0 + 1784, &qword_1006359A8);
          v93 = sub_1000343A8(v90, v92, v101);

          *(v88 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v82, v83, "%{public}s: attempted to execute but identifier is hidden", v88, 0xCu);
          sub_100008D24(v89);

          (*(v86 + 8))(v100, v87);
        }

        else
        {
          sub_10001074C(v0 + 1784, &qword_1006359A8);

          (*(v86 + 8))(v85, v87);
        }
      }

      sub_100042AA4();
      swift_allocError();
      *v94 = 0xD000000000000014;
      v94[1] = 0x80000001004EA0B0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 2217) != 1 || (v2 = *(v0 + 64), v101[2] = *(v0 + 48), v101[3] = v2, v101[4] = *(v0 + 80), v3 = *(v0 + 32), v101[0] = *(v0 + 16), v101[1] = v3, v4 = *(v0 + 96), v5 = *(v0 + 104), v6 = *(v0 + 128), v104 = *(v0 + 112), v105 = v6, v106 = *(v0 + 144), v102 = v4, v103 = v5, v7 = v4(v101), v8 == 1))
  {
    if (qword_100633A90 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 2144);
    v10 = *(v0 + 2120);
    v11 = *(v0 + 2112);
    v12 = sub_100035430(v11, qword_1006350F8);
    *(v0 + 2168) = v12;
    v13 = *(v10 + 16);
    *(v0 + 2176) = v13;
    *(v0 + 2184) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v9, v12, v11);
    v14 = *(v0 + 128);
    *(v0 + 248) = *(v0 + 112);
    *(v0 + 264) = v14;
    *(v0 + 280) = *(v0 + 144);
    v15 = *(v0 + 64);
    *(v0 + 184) = *(v0 + 48);
    *(v0 + 200) = v15;
    v16 = *(v0 + 96);
    *(v0 + 216) = *(v0 + 80);
    *(v0 + 232) = v16;
    v17 = *(v0 + 32);
    *(v0 + 152) = *(v0 + 16);
    *(v0 + 168) = v17;
    sub_1000108DC(v0 + 152, v0 + 288, &qword_1006359A8);
    v18 = sub_1004D964C();
    v19 = sub_1004DDF9C();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 2144);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    if (v20)
    {
      v97 = *(v0 + 2144);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v101[0] = v25;
      *v24 = 136446210;
      v26 = ActionType.rawValue.getter(*(v0 + 224));
      v28 = v27;
      sub_10001074C(v0 + 152, &qword_1006359A8);
      v29 = sub_1000343A8(v26, v28, v101);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: performing…", v24, 0xCu);
      sub_100008D24(v25);

      (*(v22 + 8))(v97, v23);
    }

    else
    {
      sub_10001074C(v0 + 152, &qword_1006359A8);

      (*(v22 + 8))(v21, v23);
    }

    v30 = *(v0 + 2104);
    sub_100006F10(0, &qword_100635118);
    v31 = [objc_opt_self() mainRunLoop];
    v32 = sub_1004DE74C();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = sub_1004DE59C();

    sub_10001074C(v30, &qword_100635110);
    *(v0 + 2072) = v33;
    sub_1004DE58C();
    sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher);
    v34 = sub_1004D9B0C();

    *(v0 + 2080) = v34;
    v35 = *(v0 + 128);
    *(v0 + 520) = *(v0 + 112);
    *(v0 + 536) = v35;
    *(v0 + 552) = *(v0 + 144);
    v36 = *(v0 + 64);
    *(v0 + 456) = *(v0 + 48);
    *(v0 + 472) = v36;
    v37 = *(v0 + 96);
    *(v0 + 488) = *(v0 + 80);
    *(v0 + 504) = v37;
    v38 = *(v0 + 32);
    *(v0 + 424) = *(v0 + 16);
    *(v0 + 440) = v38;
    v39 = *(v0 + 528);
    v40 = swift_allocObject();
    v41 = *(v0 + 128);
    *(v40 + 112) = *(v0 + 112);
    *(v40 + 128) = v41;
    *(v40 + 144) = *(v0 + 144);
    v42 = *(v0 + 64);
    *(v40 + 48) = *(v0 + 48);
    *(v40 + 64) = v42;
    v43 = *(v0 + 96);
    *(v40 + 80) = *(v0 + 80);
    *(v40 + 96) = v43;
    v44 = *(v0 + 32);
    *(v40 + 16) = *(v0 + 16);
    *(v40 + 32) = v44;
    sub_1000108DC(v0 + 424, v0 + 560, &qword_1006359A8);
    sub_100004CB8(&qword_100635128);
    sub_100042B08(&qword_100635130, &qword_100635128);
    *(v0 + 2192) = sub_1004D9C0C();

    v98 = (v39 + *v39);
    v45 = swift_task_alloc();
    *(v0 + 2200) = v45;
    *v45 = v0;
    v45[1] = sub_100172E70;

    return v98();
  }

  v47 = v7;
  v48 = v8;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 2152);
  v50 = *(v0 + 2120);
  v51 = *(v0 + 2112);
  v52 = sub_100035430(v51, qword_1006350F8);
  (*(v50 + 16))(v49, v52, v51);
  v53 = *(v0 + 128);
  *(v0 + 1608) = *(v0 + 112);
  *(v0 + 1624) = v53;
  *(v0 + 1640) = *(v0 + 144);
  v54 = *(v0 + 64);
  *(v0 + 1544) = *(v0 + 48);
  *(v0 + 1560) = v54;
  v55 = *(v0 + 96);
  *(v0 + 1576) = *(v0 + 80);
  *(v0 + 1592) = v55;
  v56 = *(v0 + 32);
  *(v0 + 1512) = *(v0 + 16);
  *(v0 + 1528) = v56;
  sub_1000108DC(v0 + 1512, v0 + 1648, &qword_1006359A8);
  sub_100035CC8(v47, v48);
  v57 = sub_1004D964C();
  v58 = sub_1004DDF7C();
  sub_1000354D0(v47, v48);
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 2152);
  v61 = *(v0 + 2120);
  v62 = *(v0 + 2112);
  if (v59)
  {
    v63 = swift_slowAlloc();
    *&v101[0] = swift_slowAlloc();
    *v63 = 136446466;
    v96 = v62;
    v99 = v60;
    v64 = ActionType.rawValue.getter(*(v0 + 1584));
    v66 = v65;
    sub_10001074C(v0 + 1512, &qword_1006359A8);
    v67 = sub_1000343A8(v64, v66, v101);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2082;
    *(v0 + 2056) = v47;
    *(v0 + 2064) = v48;

    sub_100004CB8(&unk_100639EB0);
    v68 = sub_1004DD4DC();
    v70 = sub_1000343A8(v68, v69, v101);

    *(v63 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v63, 0x16u);
    swift_arrayDestroy();

    (*(v61 + 8))(v99, v96);
  }

  else
  {
    sub_10001074C(v0 + 1512, &qword_1006359A8);

    (*(v61 + 8))(v60, v62);
  }

  sub_100042AA4();
  swift_allocError();
  *v72 = v47;
  v72[1] = v48;
LABEL_31:
  swift_willThrow();

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_100172E70()
{
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v2 = sub_100173358;
  }

  else
  {
    v2 = sub_100172F84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100172F84()
{
  v35 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2136);
  v4 = *(v0 + 2112);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 1064) = *(v0 + 112);
  *(v0 + 1080) = v5;
  *(v0 + 1096) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 1000) = *(v0 + 48);
  *(v0 + 1016) = v6;
  v7 = *(v0 + 96);
  *(v0 + 1032) = *(v0 + 80);
  *(v0 + 1048) = v7;
  v8 = *(v0 + 32);
  *(v0 + 968) = *(v0 + 16);
  *(v0 + 984) = v8;
  sub_1000108DC(v0 + 968, v0 + 1104, &qword_1006359A8);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 2136);
  v13 = *(v0 + 2120);
  v14 = *(v0 + 2112);
  if (v11)
  {
    v33 = *(v0 + 2136);
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = ActionType.rawValue.getter(*(v0 + 1040));
    v18 = v17;
    sub_10001074C(v0 + 968, &qword_1006359A8);
    v19 = sub_1000343A8(v16, v18, &v34);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1000343A8(0, 0xE000000000000000, &v34);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v13 + 8))(v33, v14);
  }

  else
  {
    sub_10001074C(v0 + 968, &qword_1006359A8);

    (*(v13 + 8))(v12, v14);
  }

  v20 = *(v0 + 2096);
  v21 = sub_1004DDA8C();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = *(v0 + 128);
  *(v0 + 1336) = *(v0 + 112);
  *(v0 + 1352) = v22;
  *(v0 + 1368) = *(v0 + 144);
  v23 = *(v0 + 64);
  *(v0 + 1272) = *(v0 + 48);
  *(v0 + 1288) = v23;
  v24 = *(v0 + 96);
  *(v0 + 1304) = *(v0 + 80);
  *(v0 + 1320) = v24;
  v25 = *(v0 + 32);
  *(v0 + 1240) = *(v0 + 16);
  *(v0 + 1256) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = *(v0 + 128);
  *(v26 + 128) = *(v0 + 112);
  *(v26 + 144) = v27;
  *(v26 + 160) = *(v0 + 144);
  v28 = *(v0 + 64);
  *(v26 + 64) = *(v0 + 48);
  *(v26 + 80) = v28;
  v29 = *(v0 + 96);
  *(v26 + 96) = *(v0 + 80);
  *(v26 + 112) = v29;
  v30 = *(v0 + 32);
  *(v26 + 32) = *(v0 + 16);
  *(v26 + 48) = v30;
  sub_1000108DC(v0 + 1240, v0 + 1376, &qword_1006359A8);
  sub_100041790(0, 0, v20, &unk_10051E170, v26);

  sub_10001074C(v20, &qword_100635240);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100173358()
{
  v29 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2128);
  v4 = *(v0 + 2112);

  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 792) = *(v0 + 112);
  *(v0 + 808) = v5;
  *(v0 + 824) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 728) = *(v0 + 48);
  *(v0 + 744) = v6;
  v7 = *(v0 + 96);
  *(v0 + 760) = *(v0 + 80);
  *(v0 + 776) = v7;
  v8 = *(v0 + 32);
  *(v0 + 696) = *(v0 + 16);
  *(v0 + 712) = v8;
  sub_1000108DC(v0 + 696, v0 + 832, &qword_1006359A8);
  swift_errorRetain();
  v9 = sub_1004D964C();
  v10 = sub_1004DDF7C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 2208);
    v12 = *(v0 + 2120);
    v26 = *(v0 + 2112);
    v27 = *(v0 + 2128);
    v13 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 768));
    v16 = v15;
    sub_10001074C(v0 + 696, &qword_1006359A8);
    v17 = sub_1000343A8(v14, v16, v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 2088) = v11;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, v28);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 2128);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    sub_10001074C(v0 + 696, &qword_1006359A8);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100173670(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  sub_100004CB8(&qword_100635240);
  *(v3 + 64) = swift_task_alloc();
  sub_100004CB8(&qword_100635110);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_100004CB8(&qword_1006359B0);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100173880, 0, 0);
}

uint64_t sub_100173880()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_100035920();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_1000358CC();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_100634428 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_100633A90 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = sub_100035430(v67, qword_1006350F8);
        (*(v68 + 16))(v66, v71, v67);
        sub_1000108DC(v70, v69, &qword_1006359B0);
        v72 = sub_1004D964C();
        v73 = sub_1004DDF7C();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_10001074C(v78, &qword_1006359B0);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_1000343A8(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          sub_100008D24(v80);
        }

        else
        {
          sub_10001074C(*(v0 + 144), &qword_1006359B0);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x80000001004EA0B0;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_100633A90 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = sub_100035430(v6, qword_1006350F8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_1000108DC(v9, v8, &qword_1006359B0);
    v12 = sub_1004D964C();
    v13 = sub_1004DDF9C();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_10001074C(v18, &qword_1006359B0);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_1000343A8(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      sub_100008D24(v20);
    }

    else
    {
      sub_10001074C(*(v0 + 128), &qword_1006359B0);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_100006F10(0, &qword_100635118);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = sub_1004DE74C();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = sub_1004DE59C();

    sub_10001074C(v27, &qword_100635110);
    *(v0 + 32) = v32;
    sub_1004DE58C();
    sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher);
    v33 = sub_1004D9B0C();

    *(v0 + 40) = v33;
    sub_1000108DC(v29, v25, &qword_1006359B0);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_100047F38(v25, v36 + v35, &qword_1006359B0);
    sub_100004CB8(&qword_100635128);
    sub_100042B08(&qword_100635130, &qword_100635128);
    *(v0 + 232) = sub_1004D9C0C();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_100174398;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = sub_100035430(v42, qword_1006350F8);
  (*(v43 + 16))(v41, v46, v42);
  sub_1000108DC(v45, v44, &qword_1006359B0);

  v47 = sub_1004D964C();
  v48 = sub_1004DDF7C();
  sub_1000354D0(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_10001074C(v53, &qword_1006359B0);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_1000343A8(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    sub_100004CB8(&unk_100639EB0);
    v61 = sub_1004DD4DC();
    v63 = sub_1000343A8(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_10001074C(*(v0 + 136), &qword_1006359B0);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_100042AA4();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_100174398()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100174864;
  }

  else
  {
    v2 = sub_1001744AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001744AC()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_1004D9AAC();
  v2(v3, v1, v4);
  sub_1000108DC(v6, v5, &qword_1006359B0);
  v7 = sub_1004D964C();
  v8 = sub_1004DDF9C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_10001074C(v13, &qword_1006359B0);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_1000343A8(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1000343A8(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10001074C(*(v0 + 112), &qword_1006359B0);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = sub_1004DDA8C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_1000108DC(v22, v20, &qword_1006359B0);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_100047F38(v20, v24 + ((v19 + 32) & ~v19), &qword_1006359B0);
  sub_100041790(0, 0, v21, &unk_10051E120, v24);

  sub_10001074C(v21, &qword_100635240);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100174864()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_1000108DC(v6, v5, &qword_1006359B0);
  swift_errorRetain();
  v7 = sub_1004D964C();
  v8 = sub_1004DDF7C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_10001074C(v12, &qword_1006359B0);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_1000343A8(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_10001074C(v0[13], &qword_1006359B0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_100174B90(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  sub_100004CB8(&qword_100635240);
  *(v3 + 64) = swift_task_alloc();
  sub_100004CB8(&qword_100635110);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_100004CB8(&qword_1006359B8);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100174DA0, 0, 0);
}

uint64_t sub_100174DA0()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_100035920();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_1000358CC();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_100634428 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_100633A90 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = sub_100035430(v67, qword_1006350F8);
        (*(v68 + 16))(v66, v71, v67);
        sub_1000108DC(v70, v69, &qword_1006359B8);
        v72 = sub_1004D964C();
        v73 = sub_1004DDF7C();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_10001074C(v78, &qword_1006359B8);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_1000343A8(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          sub_100008D24(v80);
        }

        else
        {
          sub_10001074C(*(v0 + 144), &qword_1006359B8);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x80000001004EA0B0;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_100633A90 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = sub_100035430(v6, qword_1006350F8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_1000108DC(v9, v8, &qword_1006359B8);
    v12 = sub_1004D964C();
    v13 = sub_1004DDF9C();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_10001074C(v18, &qword_1006359B8);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_1000343A8(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      sub_100008D24(v20);
    }

    else
    {
      sub_10001074C(*(v0 + 128), &qword_1006359B8);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_100006F10(0, &qword_100635118);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = sub_1004DE74C();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = sub_1004DE59C();

    sub_10001074C(v27, &qword_100635110);
    *(v0 + 32) = v32;
    sub_1004DE58C();
    sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher);
    v33 = sub_1004D9B0C();

    *(v0 + 40) = v33;
    sub_1000108DC(v29, v25, &qword_1006359B8);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_100047F38(v25, v36 + v35, &qword_1006359B8);
    sub_100004CB8(&qword_100635128);
    sub_100042B08(&qword_100635130, &qword_100635128);
    *(v0 + 232) = sub_1004D9C0C();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_1001758B8;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = sub_100035430(v42, qword_1006350F8);
  (*(v43 + 16))(v41, v46, v42);
  sub_1000108DC(v45, v44, &qword_1006359B8);

  v47 = sub_1004D964C();
  v48 = sub_1004DDF7C();
  sub_1000354D0(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_10001074C(v53, &qword_1006359B8);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_1000343A8(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    sub_100004CB8(&unk_100639EB0);
    v61 = sub_1004DD4DC();
    v63 = sub_1000343A8(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_10001074C(*(v0 + 136), &qword_1006359B8);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_100042AA4();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_1001758B8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100175D84;
  }

  else
  {
    v2 = sub_1001759CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001759CC()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_1004D9AAC();
  v2(v3, v1, v4);
  sub_1000108DC(v6, v5, &qword_1006359B8);
  v7 = sub_1004D964C();
  v8 = sub_1004DDF9C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_10001074C(v13, &qword_1006359B8);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_1000343A8(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1000343A8(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10001074C(*(v0 + 112), &qword_1006359B8);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = sub_1004DDA8C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_1000108DC(v22, v20, &qword_1006359B8);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_100047F38(v20, v24 + ((v19 + 32) & ~v19), &qword_1006359B8);
  sub_100041790(0, 0, v21, &unk_10051E148, v24);

  sub_10001074C(v21, &qword_100635240);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100175D84()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_1000108DC(v6, v5, &qword_1006359B8);
  swift_errorRetain();
  v7 = sub_1004D964C();
  v8 = sub_1004DDF7C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_10001074C(v12, &qword_1006359B8);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_1000343A8(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_10001074C(v0[13], &qword_1006359B8);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_1001760B0(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100004CB8(&qword_100635240);
  *(v3 + 1736) = swift_task_alloc();
  sub_100004CB8(&qword_100635110);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004D966C();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_100176238, 0, 0);
}

uint64_t sub_100176238()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_100035920();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_1000358CC();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_100634428 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_100633A90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100035430(v71, qword_1006350F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_1000108DC(v0 + 1472, v0 + 1584, &qword_1006359E8);
        v76 = sub_1004D964C();
        v77 = sub_1004DDF7C();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_10001074C(v0 + 1472, &qword_1006359E8);
          v87 = sub_1000343A8(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100008D24(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_10001074C(v0 + 1472, &qword_1006359E8);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100042AA4();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004EA0B0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_100633A90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100035430(v10, qword_1006350F8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_1000108DC(v0 + 128, v0 + 240, &qword_1006359E8);
    v16 = sub_1004D964C();
    v17 = sub_1004DDF9C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_10001074C(v0 + 128, &qword_1006359E8);
      v27 = sub_1000343A8(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100008D24(v23);
    }

    else
    {
      sub_10001074C(v0 + 128, &qword_1006359E8);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100006F10(0, &qword_100635118);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004DE74C();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004DE59C();

    sub_10001074C(v28, &qword_100635110);
    *(v0 + 1712) = v31;
    sub_1004DE58C();
    sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004D9B0C();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_1000108DC(v0 + 352, v0 + 464, &qword_1006359E8);
    sub_100004CB8(&qword_100635128);
    sub_100042B08(&qword_100635130, &qword_100635128);
    *(v0 + 1832) = sub_1004D9C0C();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_100176DC0;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100035430(v47, qword_1006350F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_1000108DC(v0 + 1248, v0 + 1360, &qword_1006359E8);
  sub_100035CC8(v43, v44);
  v52 = sub_1004D964C();
  v53 = sub_1004DDF7C();
  sub_1000354D0(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_10001074C(v0 + 1248, &qword_1006359E8);
    v62 = sub_1000343A8(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100004CB8(&unk_100639EB0);
    v63 = sub_1004DD4DC();
    v65 = sub_1000343A8(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_10001074C(v0 + 1248, &qword_1006359E8);

    (*(v56 + 8))(v55, v57);
  }

  sub_100042AA4();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}