id sub_625238(uint64_t a1, char a2, double a3)
{
  v5 = a1 + *(*a1 + 120);
  swift_beginAccess();
  *(v5 + 8) = a3;
  if (a2)
  {
    v6 = swift_beginAccess();
    __chkstk_darwin(v6);
    type metadata accessor for Gliss.Transition();
    swift_getFunctionTypeMetadata1();
    sub_AB9870();

    swift_getWitnessTable();
    sub_AB9680();
  }

  return sub_6222DC();
}

uint64_t sub_625414(uint64_t a1, void *a2)
{
  v60 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v62 = a2;
  v59 = v4;
  v5 = sub_AB3470();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11450);
  __chkstk_darwin(v8);
  v61 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11458);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v54 - v15;
  __chkstk_darwin(v14);
  v18 = (&v54 - v17);
  sub_62B720(5);
  if (qword_E0CDD8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v19 = sub_AB4BC0();
    __swift_project_value_buffer(v19, qword_E71EB0);

    v20 = sub_AB4BA0();
    v21 = sub_AB9F50();

    v22 = os_log_type_enabled(v20, v21);
    v55 = v13;
    v56 = v8;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v64[0] = v24;
      *v23 = 136446210;
      v63 = a1;
      type metadata accessor for Gliss.Transition();
      swift_getWitnessTable();
      v25 = sub_ABB330();
      v27 = sub_500C84(v25, v26, v64);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_0, v20, v21, "✅ End of transition=%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);

      v3 = &swift_isaMask;
    }

    v28 = *(v62 + *&stru_68.segname[(*v3 & *v62) + 16]);
    v30 = v57;
    v29 = v58;
    if (v28)
    {
      v31 = *(v58 + 2);
      v31(v18, v28 + direct field offset for Gliss.Transition.id, v57);
      v32 = *(v29 + 56);
      v32(v18, 0, 1, v30);
    }

    else
    {
      v32 = *(v58 + 7);
      v32(v18, 1, 1, v57);
      v31 = *(v29 + 16);
    }

    v31(v16, a1 + direct field offset for Gliss.Transition.id, v30);
    v32(v16, 0, 1, v30);
    v33 = v56[12];
    v34 = v61;
    sub_62A594(v18, v61);
    sub_62A594(v16, v34 + v33);
    v35 = *(v29 + 48);
    if (v35(v34, 1, v30) == 1)
    {
      sub_12E1C(v16, &qword_E11458);
      v36 = v61;
      sub_12E1C(v18, &qword_E11458);
      v8 = &swift_isaMask;
      if (v35(v36 + v33, 1, v30) != 1)
      {
        goto LABEL_12;
      }

      sub_12E1C(v36, &qword_E11458);
      v37 = v59;
LABEL_14:
      sub_629E20(0);
      goto LABEL_15;
    }

    v58 = v16;
    v38 = v55;
    sub_62A594(v34, v55);
    if (v35(v34 + v33, 1, v30) == 1)
    {
      v39 = v29;
      sub_12E1C(v58, &qword_E11458);
      v36 = v61;
      sub_12E1C(v18, &qword_E11458);
      (*(v39 + 8))(v38, v30);
      v8 = &swift_isaMask;
LABEL_12:
      sub_12E1C(v36, &qword_E11450);
      v37 = v59;
      goto LABEL_15;
    }

    v40 = v34 + v33;
    v41 = v34;
    v42 = v54;
    (*(v29 + 32))(v54, v40, v30);
    sub_62A604();
    v43 = v29;
    v44 = sub_AB91C0();
    v45 = *(v43 + 8);
    v45(v42, v30);
    sub_12E1C(v58, &qword_E11458);
    sub_12E1C(v18, &qword_E11458);
    v45(v38, v30);
    sub_12E1C(v41, &qword_E11458);
    v8 = &swift_isaMask;
    v37 = v59;
    if (v44)
    {
      goto LABEL_14;
    }

LABEL_15:
    v46 = *(*a1 + 152);
    v47 = swift_beginAccess();
    v64[0] = *(a1 + v46);
    __chkstk_darwin(v47);
    *(&v54 - 2) = *(v37 + 80);
    *(&v54 - 2) = a1;
    type metadata accessor for Gliss.Transition();
    swift_getFunctionTypeMetadata2();
    v3 = sub_AB9870();

    swift_getWitnessTable();
    sub_AB9680();

    v48 = v62;
    v49 = *&stru_68.segname[(swift_isaMask & *v62) - 8];
    swift_beginAccess();
    v50 = *(v48 + v49);
    v13 = *(v50 + 16);

    if (!v13)
    {
    }

    v16 = 0;
    v18 = (v50 + 40);
    while (v16 < *(v50 + 16))
    {
      ++v16;
      v51 = *v18;
      v3 = *(v18 - 1);
      ObjectType = swift_getObjectType();
      sub_61F740(a1, ObjectType, v51);

      v18 += 2;
      if (v13 == v16)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_625C6C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_AB3470();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  (*(v8 + 16))(v11, a5 + direct field offset for Gliss.Transition.id, v7);
  swift_beginAccess();
  sub_6A956C(0, v11);
  return swift_endAccess();
}

void sub_625DB0(uint64_t a1)
{
  v2 = *(&stru_68.reserved2 + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_625DE0()
{
  v1 = *(&stru_68.reserved2 + (swift_isaMask & *v0));
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
    v3 = [v4 initWithTarget:sub_ABB3A0() action:"handlePanGestureRecognizer:"];
    swift_unknownObjectRelease();
    v2 = 0;
  }

  v5 = v3;
  v6 = v2;
  [v5 setDelegate:v0];
  v7 = *(&stru_68.reserved2 + (swift_isaMask & *v0));
  v8 = *(v0 + v7);
  *(v0 + v7) = v5;
  v9 = v5;

  [v9 setAllowedScrollTypesMask:3];
  Gliss.Coordinator.gestureConfiguration.getter(v16);
  v10 = v16[0];
  sub_17654(v16[1]);
  sub_17654(v16[3]);
  sub_17654(v16[5]);
  v11 = [v9 view];
  if (v11)
  {
    v12 = v11;
    sub_13C80(0, &qword_E11460);
    if ((sub_ABA790() & 1) == 0)
    {
      [v12 removeGestureRecognizer:v9];
    }
  }

  v13 = [v9 view];

  if (!v13 || (sub_13C80(0, &qword_E11460), v14 = v10, v15 = sub_ABA790(), v13, v14, (v15 & 1) == 0))
  {
    [v10 addGestureRecognizer:v9];
  }
}

void sub_626038(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v6 - 8);
  v293 = v286 - v7;
  v8 = *(&stru_20.filesize + (v5 & v4));
  v312 = *(&stru_20.maxprot + (v5 & v4));
  v309 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_ABA9C0();
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
    if (qword_E0CDD8 != -1)
    {
      swift_once();
    }

    v57 = sub_AB4BC0();
    __swift_project_value_buffer(v57, qword_E71EB0);
    v313 = sub_AB4BA0();
    v58 = sub_AB9F50();
    if (os_log_type_enabled(v313, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v313, v58, "No Data Source Set", v59, 2u);
    }

    v60 = v313;

    return;
  }

  v41 = v40;
  Gliss.Coordinator.gestureConfiguration.getter(v317);
  v42 = v317[0];
  sub_17654(v317[1]);
  sub_17654(v317[3]);
  sub_17654(v317[5]);
  v295 = a1;
  [a1 translationInView:v42];
  v44 = v43;
  v46 = v45;

  if (v44 == 0.0)
  {
    if (qword_E0CDD8 != -1)
    {
      swift_once();
    }

    v61 = sub_AB4BC0();
    __swift_project_value_buffer(v61, qword_E71EB0);
    v62 = sub_AB4BA0();
    v63 = sub_AB9F50();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *&v65 = COERCE_DOUBLE(swift_slowAlloc());
      v314 = *&v65;
      *v64 = 136446210;
      v318 = v44;
      v319 = v46;
      _s3__C7CGPointVMa_2(0);
      v66 = sub_AB9350();
      v68 = sub_500C84(v66, v67, &v314);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_0, v62, v63, "Unable to compute direction from gesture's translation %{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return;
  }

  v305 = isa;
  v47 = *(v2 + *&stru_68.segname[(swift_isaMask & *v2) + 16]);
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
      sub_629E20(0);
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
  sub_17654(v319);
  sub_17654(v320);
  sub_17654(v321);
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

    if (v74 != &dword_0 + 1)
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

  if (v74 != &dword_0 + 1)
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
    v94 = sub_622B70(v75, v44 >= 0.0);
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
      if (qword_E0CDD8 != -1)
      {
        swift_once();
      }

      v104 = sub_AB4BC0();
      v300 = __swift_project_value_buffer(v104, qword_E71EB0);
      v105 = sub_AB4BA0();
      v106 = sub_AB9F50();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_0, v105, v106, "🤏 Swipe Gesture Began", v107, 2u);
      }

      v108 = sub_AB4BA0();
      v109 = sub_AB9F50();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *&v111 = COERCE_DOUBLE(swift_slowAlloc());
        v314 = *&v111;
        *v110 = 136446210;
        LOBYTE(v316[0]) = v44 >= 0.0;
        v112 = sub_AB9350();
        v114 = sub_500C84(v112, v113, &v314);

        *(v110 + 4) = v114;
        v94 = v301;
        _os_log_impl(&dword_0, v108, v109, "   Direction=%{public}s", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v111);
      }

      v115 = sub_AB4BA0();
      v116 = sub_AB9F50();

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
        v119 = sub_ABB330();
        v121 = sub_500C84(v119, v120, &v314);

        *(v117 + 4) = v121;
        v94 = v301;
        _os_log_impl(&dword_0, v115, v116, "   Transition=%{public}s", v117, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v118);
      }

      v88 = v299;
      v87 = v103;
      v2 = v303;
      sub_62388C(v94);
      v75 = v311;
    }

    v122 = [v295 state];
    if (v122 <= 2)
    {
      if (v122 < 2)
      {
        v123 = sub_6228E0();
        [v123 prepare];

        goto LABEL_69;
      }

      v148 = v290;
      if (v122 == (&dword_0 + 2))
      {
LABEL_69:
        if (qword_E0CDD8 != -1)
        {
          swift_once();
        }

        v157 = sub_AB4BC0();
        v158 = __swift_project_value_buffer(v157, qword_E71EB0);
        v159 = sub_AB4BA0();
        v160 = sub_AB9F20();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          *v161 = 0;
          _os_log_impl(&dword_0, v159, v160, "🤏 Swipe Gesture Updated", v161, 2u);
        }

        v162 = sub_AB4BA0();
        v163 = sub_AB9F20();
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
          _s3__C7CGPointVMa_2(0);
          v167 = sub_AB9350();
          v169 = sub_500C84(v167, v168, v316);

          *(v165 + 4) = v169;
          _os_log_impl(&dword_0, v162, v163, "   Translation=%{public}s", v165, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v166);
        }

        v170 = sub_AB4BA0();
        v171 = sub_AB9F20();
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
          _s3__C7CGPointVMa_2(0);
          v177 = sub_AB9350();
          v179 = sub_500C84(v177, v178, v316);

          *(v175 + 4) = v179;
          _os_log_impl(&dword_0, v170, v171, "   Velocity=%{public}s", v175, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v176);
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
          v196 = sub_AB4BA0();
          v197 = sub_AB9F20();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            *v198 = 134349056;
            *(v198 + 4) = v182;
            _os_log_impl(&dword_0, v196, v197, "   Progression Value=%{public}f", v198, 0xCu);
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
                v279 = sub_6228E0();
                [v295 locationInView:v173];
                v281 = v280;
                v283 = v282;

                [v279 impactOccurredAtLocation:{v281, v283}];
                v285 = sub_62BD94();
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

              v235 = sub_62BD94();
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

                v249 = sub_AB4BA0();
                v250 = sub_AB9F20();

                if (os_log_type_enabled(v249, v250))
                {
                  v251 = swift_slowAlloc();
                  *v251 = 134349056;
                  *(v251 + 4) = *(v248 + 1);
                  v252 = "   Over-swiping Progression Value=%{public}f";
LABEL_123:
                  _os_log_impl(&dword_0, v249, v250, v252, v251, 0xCu);

                  v241 = v299;
                }
              }

              else
              {
                v253 = &v238[*(*v238 + 120)];
                swift_beginAccess();
                *(v253 + 1) = v247;

                v249 = sub_AB4BA0();
                v250 = sub_AB9F20();

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
              sub_6222D0();

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
    if (v122 != (&dword_0 + 3))
    {
      if (v122 == &dword_4)
      {

        v148 = v290;
        if (qword_E0CDD8 != -1)
        {
          swift_once();
        }

        v208 = sub_AB4BC0();
        __swift_project_value_buffer(v208, qword_E71EB0);
        v150 = sub_AB4BA0();
        v151 = sub_AB9F50();
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
        if (v122 != (&dword_4 + 1))
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

        if (qword_E0CDD8 != -1)
        {
          swift_once();
        }

        v149 = sub_AB4BC0();
        __swift_project_value_buffer(v149, qword_E71EB0);
        v150 = sub_AB4BA0();
        v151 = sub_AB9F50();
        if (!os_log_type_enabled(v150, v151))
        {
LABEL_98:

          sub_623B94(v94, 1);
          swift_unknownObjectRelease();

          goto LABEL_99;
        }

        v152 = swift_slowAlloc();
        *v152 = 0;
        v153 = "🤏❌ Swipe Gesture Failed";
      }

      _os_log_impl(&dword_0, v150, v151, v153, v152, 2u);
      v88 = v299;

      goto LABEL_98;
    }

    if (qword_E0CDD8 != -1)
    {
      swift_once();
    }

    v199 = sub_AB4BC0();
    __swift_project_value_buffer(v199, qword_E71EB0);
    v200 = sub_AB4BA0();
    v201 = sub_AB9F50();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 0;
      _os_log_impl(&dword_0, v200, v201, "🤏✅ Swipe Gesture Ended", v202, 2u);
      v147 = v305;
      v2 = v303;
    }

    if (Width * 0.5 >= fabs(v91))
    {
      v203 = v94 + *(*v94 + 120);
      swift_beginAccess();
      if (*(v203 + 8) < 0.5)
      {

        v204 = sub_AB4BA0();
        v205 = sub_AB9F50();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          *v206 = 0;
          _os_log_impl(&dword_0, v204, v205, "   Hasn't reached translation thresholds. Cancelling ❎", v206, 2u);
        }

        sub_623B94(v94, 1);
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
          v214 = sub_6229BC();
          [v214 prepare];

          v215 = *(v2 + *(&stru_68.reloff + (swift_isaMask & *v2)));
          v216 = v302;
          [v295 locationInView:v302];
          v218 = v217;
          v220 = v219;

          [v215 impactOccurredWithIntensity:0.5 atLocation:{v218, v220}];
          sub_623B94(v94, 1);
          v221 = sub_629DC0();
          if (*(v221 + 16))
          {
            v222 = direct field offset for Gliss.Transition.id;

            v223 = sub_522264(v94 + v222);
            v224 = v290;
            if (v225)
            {
              v226 = *(*(v221 + 56) + 8 * v223);

              sub_13C80(0, &qword_E103C0);
              v227 = sub_ABA150();
              [v226 duration];
              v228 = v224;
              v229 = swift_allocObject();
              *(v229 + 16) = v2;
              v230 = v2;
              OS_dispatch_queue.asyncAfter(_:block:)(sub_62A258, v229);

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
        v263 = sub_AB9990();
        (*(*(v263 - 8) + 56))(v293, 1, 1, v263);
        (v147[2])(v308, v260, v262);
        sub_AB9940();
        v310 = v259;

        v264 = v304;
        swift_unknownObjectRetain();
        v305 = v2;
        v307 = v295;
        v303 = sub_AB9930();
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
        sub_5E89D8(0, 0, v293, &unk_B1E2E0, v271);

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

    v254 = sub_AB4BA0();
    v255 = sub_AB9F50();
    v256 = os_log_type_enabled(v254, v255);
    v88 = v299;
    if (v256)
    {
      v257 = swift_slowAlloc();
      *v257 = 0;
      _os_log_impl(&dword_0, v254, v255, "   Going opposite direction. Cancelling ❎", v257, 2u);
      v88 = v299;
    }

    sub_623B94(v94, 1);
    swift_unknownObjectRelease();

    v290(v75, v313);
    goto LABEL_100;
  }

  v124 = v306;
  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v125 = sub_AB4BC0();
  __swift_project_value_buffer(v125, qword_E71EB0);
  v126 = v71[2];
  v127 = v302;
  v128 = v75;
  v126(v302, v75, v313);
  v129 = sub_AB4BA0();
  v130 = sub_AB9F50();
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
    v137 = sub_AB9350();
    v138 = v136;
    v139 = v132;
    v141 = v140;
    v142 = v127;
    v143 = v290;
    v290(v142, v138);
    v144 = sub_500C84(v137, v141, &v314);

    *(v134 + 4) = v144;
    v145 = v130;
    v146 = v312;
    _os_log_impl(&dword_0, v312, v145, "DataSource doesn't allow swipe for item=%{public}s", v134, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v135);

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

uint64_t sub_628338(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
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
  *(v9 + 144) = sub_AB9940();
  *(v9 + 152) = sub_AB9930();
  v14 = *(&stru_20.maxprot + (v12 & v11));
  *(v9 + 160) = v14;
  v15 = *(v14 + 40);
  v16 = *(&stru_20.filesize + (v12 & v11));
  *(v9 + 168) = v16;
  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v9 + 176) = v17;
  *v17 = v9;
  v17[1] = sub_628544;

  return v19(a6, v16, v14);
}

uint64_t sub_628544()
{
  *(*v1 + 184) = v0;

  v3 = sub_AB98B0();
  if (v0)
  {
    v4 = sub_6289D4;
  }

  else
  {
    v4 = sub_62869C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_62869C()
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
  sub_620C18(v1);
  v7 = *&stru_68.segname[(swift_isaMask & *v5) - 8];
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = swift_task_alloc();
  v9[1] = vextq_s8(v29, v29, 8uLL);
  v9[2].i64[0] = v6;
  v9[2].i64[1] = v4;

  sub_61FB48(sub_62A65C, v9, v8);

  sub_624B3C(v4, 1);
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
    v16 = sub_6228E0();
    [v12 locationInView:v14];
    [v16 impactOccurredWithIntensity:v15 atLocation:{v17, v18}];

    if (qword_E0CDD8 != -1)
    {
      swift_once();
    }

    v19 = sub_AB4BC0();
    __swift_project_value_buffer(v19, qword_E71EB0);
    v20 = sub_AB4BA0();
    v21 = sub_AB9F50();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446210;
      v24 = sub_AB9AA0();
      v26 = sub_500C84(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_0, v20, v21, "   Feedback Intensity=%{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_6289D4()
{
  v19 = v0;

  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E71EB0);
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    v0[8] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v7 = sub_AB9350();
    v9 = sub_500C84(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "   ❌ Failed to commit with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v14 = sub_622A98();
  [v14 prepare];

  v15 = *(v13 + *(&stru_68.flags + (swift_isaMask & *v13)));
  [v10 locationInView:v11];
  [v15 notificationOccurred:2 atLocation:?];

  sub_623B94(v12, 1);

  v16 = v0[1];

  return v16();
}

void sub_628C34(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_626038(v4);
}

Swift::Bool __swiftcall Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = *(v1 + *(&stru_68.reserved2 + (swift_isaMask & *v1)));
  if (!v2)
  {
    return 1;
  }

  sub_13C80(0, &qword_E112E0);
  v4 = v2;
  if ((sub_ABA790() & 1) == 0)
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

    sub_17654(v56[3]);
    sub_17654(v56[5]);
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
          sub_17654(v13);

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
          sub_17654(v13);

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
    sub_307CC(v58);

    sub_17654(v57[1]);
    sub_17654(v30);
    sub_17654(v59);
    if (v30)
    {
      v32 = v30(v6, v8, v10);
      sub_17654(v30);
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
        if (qword_E0CDD8 != -1)
        {
          swift_once();
        }

        v47 = sub_AB4BC0();
        __swift_project_value_buffer(v47, qword_E71EB0);
        v48 = sub_AB4BA0();
        v49 = sub_AB9F50();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v55 = v51;
          *v50 = 136446210;
          _s3__C7CGPointVMa_2(0);
          v52 = sub_AB9350();
          v54 = sub_500C84(v52, v53, &v55);

          *(v50 + 4) = v54;
          _os_log_impl(&dword_0, v48, v49, "🤏🙂‍↔️ Swipe Gesture ignored: hit test not allowed at location %{public}s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v51);
        }

        goto LABEL_37;
      }
    }

    if (qword_E0CDD8 != -1)
    {
      swift_once();
    }

    v33 = sub_AB4BC0();
    __swift_project_value_buffer(v33, qword_E71EB0);
    v34 = v1;
    v35 = sub_AB4BA0();
    v36 = sub_AB9F50();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v37 = 136446466;
      v60 = v8;
      v61 = v10;
      _s3__C7CGPointVMa_2(0);
      v38 = sub_AB9350();
      v40 = sub_500C84(v38, v39, &v55);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2082;
      Gliss.Coordinator.gestureConfiguration.getter(&v60);
      v42 = v61;
      v41 = v62;

      sub_17654(v63);
      sub_17654(v64);
      if (v42 != 0.0)
      {
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        *(v43 + 24) = v41;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E112E8);
      v44 = sub_AB9350();
      v46 = sub_500C84(v44, v45, &v55);

      *(v37 + 14) = v46;
      _os_log_impl(&dword_0, v35, v36, "🤏🙂‍↔️ Swipe Gesture ignored: outside allowed areas %{public}s, %{public}s", v37, 0x16u);
      swift_arrayDestroy();
    }

    if (v32)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (qword_E0CDD8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v22 = sub_AB4BC0();
  __swift_project_value_buffer(v22, qword_E71EB0);
  v23 = sub_AB4BA0();
  v24 = sub_AB9F50();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v57[0] = v26;
    *v25 = 136446210;
    v60 = v8;
    v61 = v10;
    _s3__C7CGPointVMa_2(0);
    v27 = sub_AB9350();
    v29 = sub_500C84(v27, v28, v57);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_0, v23, v24, "🤏🙂‍↔️ Swipe Gesture ignored: horizontal velocity too low %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  return 0;
}

uint64_t sub_62937C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

uint64_t sub_6293D4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_629E88(v7);

  return v9 & 1;
}

id Gliss.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Gliss.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_629520(char *a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = &a1[*&stru_68.sectname[swift_isaMask & *a1]];
  v3 = *(v2 + 1);
  v4 = *(v2 + 3);
  v5 = *(v2 + 5);

  sub_17654(v3);
  sub_17654(v4);
  sub_17654(v5);

  v6 = *&stru_68.segname[swift_isaMask & *a1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v6], AssociatedTypeWitness);
  v8 = *&stru_68.segname[(swift_isaMask & *a1) + 8];
  v9 = sub_ABA9C0();
  (*(*(v9 - 8) + 8))(&a1[v8], v9);

  v10 = *&a1[*(&stru_68.reserved2 + (swift_isaMask & *a1))];
}

id sub_629800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = swift_isaMask;
  swift_unknownObjectWeakInit();
  v9 = *&stru_68.segname[(swift_isaMask & *v4) - 8];
  *&v4[v9] = _swiftEmptyArrayStorage;
  v10 = *&stru_68.segname[(swift_isaMask & *v4) + 8];
  v27 = *(&stru_20.maxprot + (v8 & v7));
  v26 = *(&stru_20.filesize + (v8 & v7));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 56))(&v4[v10], 1, 1, AssociatedTypeWitness);
  *&v4[*&stru_68.segname[(swift_isaMask & *v4) + 16]] = 0;
  v13 = *(&stru_68.size + (swift_isaMask & *v4));
  *&v4[v13] = sub_52A9C0(_swiftEmptyArrayStorage);
  *&v4[*(&stru_68.offset + (swift_isaMask & *v4))] = 0;
  *&v4[*(&stru_68.reloff + (swift_isaMask & *v4))] = 0;
  *&v4[*(&stru_68.flags + (swift_isaMask & *v4))] = 0;
  *&v4[*(&stru_68.reserved2 + (swift_isaMask & *v4))] = 0;
  (*(v12 + 16))(&v4[*&stru_68.segname[swift_isaMask & *v4]], a1, AssociatedTypeWitness);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 24);
  v25 = *(a3 + 40);
  v17 = *(a3 + 48);
  v18 = &v4[*&stru_68.sectname[swift_isaMask & *v4]];
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 1) = v19;
  *(v18 + 2) = *(a3 + 32);
  *(v18 + 6) = v17;
  swift_beginAccess();
  *&v4[v9] = a4;
  v20 = v14;
  sub_307CC(v15);
  sub_307CC(v16);
  sub_307CC(v25);

  v30 = v26;
  v31 = v27;
  v32 = a1;
  sub_61FB48(sub_62A938, v29, a4);

  v21 = type metadata accessor for Gliss.Coordinator();
  v33.receiver = v4;
  v33.super_class = v21;
  v22 = objc_msgSendSuper2(&v33, "init");
  sub_625DE0();

  return v22;
}

uint64_t sub_629B98()
{

  return swift_deallocObject();
}

void sub_629BD8(id a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    sub_629BEC(a1, a2, a3);
  }
}

void sub_629BEC(id a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
  }
}

id sub_629C00(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_629C14(result, a2, a3);
  }

  return result;
}

id sub_629C14(id result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

uint64_t sub_629C28()
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
    sub_629BEC(*(v0 + v6), *(v0 + v6 + 8), v7);
  }

  return swift_deallocObject();
}

void sub_629CF8(uint64_t *a1, uint64_t a2)
{
  v3 = *(*(*a1 + 80) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_621AE8(a1, a2, v2 + v4, *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_629D8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_629DC0()
{
  v1 = *(&stru_68.size + (swift_isaMask & *v0));
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_629E20(uint64_t a1)
{
  v2 = *&stru_68.segname[(swift_isaMask & *v1) + 16];
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_6223A4(v3);
}

uint64_t sub_629E88(void *a1)
{
  Gliss.Coordinator.gestureConfiguration.getter(v18);

  sub_17654(v18[1]);
  sub_17654(v18[3]);
  v2 = v19;
  if (!v19)
  {
    return 1;
  }

  v3 = v19(a1);
  sub_17654(v2);
  if (v3)
  {
    return 1;
  }

  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v5 = sub_AB4BC0();
  __swift_project_value_buffer(v5, qword_E71EB0);
  v6 = a1;
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = v6;
    v12 = [v11 description];
    v13 = sub_AB92A0();
    v15 = v14;

    v16 = sub_500C84(v13, v15, &v17);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_0, v7, v8, "🤏🙂‍↔️ Swipe Gesture ignored: conflicts with other gesture: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  return 0;
}

uint64_t sub_62A0B0()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_ABA9C0();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_62A1CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_62A220()
{

  return swift_deallocObject();
}

void sub_62A258()
{
  v0 = sub_6229BC();
  [v0 impactOccurredWithIntensity:1.0 atLocation:{0.0, 0.0}];
}

uint64_t sub_62A2B4()
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

uint64_t sub_62A3F0(uint64_t a1)
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
  v15[1] = sub_17BD0;

  return sub_628338(v14, a1, v8, v9, v11, v1 + v4, v10, v12, v13);
}

uint64_t sub_62A594(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_62A604()
{
  result = qword_E0E990;
  if (!qword_E0E990)
  {
    sub_AB3470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E990);
  }

  return result;
}

uint64_t sub_62A674(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *v2;
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return sub_61F83C(v3, v2, ObjectType, *(v4 + 80), v5);
}

uint64_t block_copy_helper_185(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_17Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_26Tm_1()
{

  return swift_deallocObject();
}

uint64_t sub_62A868(uint64_t (**a1)(uint64_t *, char *))
{
  v2 = *a1;
  v5 = *(v1 + 32);
  v4 = 1;
  return v2(&v5, &v4);
}

uint64_t sub_62A8D0(uint64_t (**a1)(uint64_t *))
{
  v2 = *a1;
  v4 = *(v1 + 32);
  return v2(&v4);
}

uint64_t sub_62AA08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  sub_62AE70(a1, a2, a3, a4, a5);
  return v10;
}

id sub_62AA80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v39 = *&a3;
  v9 = *(*a1 + 80);
  v10 = sub_ABA9C0();
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

uint64_t *sub_62AE70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
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
  *(v5 + v14) = sub_AB97C0();
  v15 = *(*v5 + 152);
  swift_getFunctionTypeMetadata2();
  *(v5 + v15) = sub_AB97C0();
  v16 = v5 + *(*v5 + 168);
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 2;
  (*(v12 + 32))(v5 + *(*v5 + 104), a1, v11);
  swift_beginAccess();
  v17 = sub_ABA9C0();
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
  v4 = sub_AB3470();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_62B1B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *(**a1 + 104);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t sub_62B248(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_62B400@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 112);
  swift_beginAccess();
  v5 = sub_ABA9C0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_62B4A4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_ABA9C0();
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
  v4 = sub_ABA9C0();
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

uint64_t sub_62B720(char a1)
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
  sub_AB9870();

  sub_AB9820();
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
  sub_AB9870();

  sub_AB9820();
  return swift_endAccess();
}

uint64_t Gliss.Transition.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(*v2 + 160));
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_5222E8(a1);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  sub_808B0(*(v4 + 56) + 32 * v6, v11);

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v9 ^ 1u, 1, AssociatedTypeWitness);
}

__n128 sub_62BC58@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

__n128 sub_62BCC0(uint64_t a1, uint64_t a2)
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
  v3 = sub_ABA9C0();
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
  v24._countAndFlagsBits = sub_AB3440();
  sub_AB94A0(v24);

  v25._countAndFlagsBits = 10;
  v25._object = 0xE100000000000000;
  sub_AB94A0(v25);
  sub_AB94A0(v22);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0x6D6F726620202020;
  v26._object = 0xEA0000000000203ALL;
  sub_AB94A0(v26);
  v13 = *(*v0 + 104);
  swift_beginAccess();
  (*(v8 + 16))(v12, v1 + v13, v2);
  sub_ABB360();
  v14 = *(v8 + 8);
  v14(v12, v2);
  v27._countAndFlagsBits = 10;
  v27._object = 0xE100000000000000;
  sub_AB94A0(v27);
  sub_AB94A0(v21);

  v15 = *(*v1 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v15, v3);
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    (*(v4 + 8))(v7, v3);
    v28._object = 0xED00000A656E6F6ELL;
    v28._countAndFlagsBits = 0x203A6F7420202020;
    sub_AB94A0(v28);
  }

  else
  {
    v16 = v18;
    (*(v8 + 32))(v18, v7, v2);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0x203A6F7420202020;
    v29._object = 0xE800000000000000;
    sub_AB94A0(v29);
    sub_ABB360();
    v30._countAndFlagsBits = 10;
    v30._object = 0xE100000000000000;
    sub_AB94A0(v30);
    sub_AB94A0(v19);

    v14(v16, v2);
  }

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_ABAD90(19);

  v20._countAndFlagsBits = 0xD000000000000010;
  v20._object = 0x8000000000B6EBB0;
  swift_beginAccess();
  v31._countAndFlagsBits = Gliss.Progression.description.getter();
  sub_AB94A0(v31);

  v32._countAndFlagsBits = 10;
  v32._object = 0xE100000000000000;
  sub_AB94A0(v32);
  sub_AB94A0(v20);

  v33._countAndFlagsBits = 10528;
  v33._object = 0xE200000000000000;
  sub_AB94A0(v33);
  return v23[0];
}

uint64_t *Gliss.Transition.deinit()
{
  v1 = *v0;
  v2 = direct field offset for Gliss.Transition.id;
  v3 = sub_AB3470();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(v1 + 80));
  v4 = *(*v0 + 112);
  v5 = sub_ABA9C0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_629BEC(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8), *(v0 + *(*v0 + 136) + 16));

  return v0;
}

uint64_t Gliss.Transition.__deallocating_deinit()
{
  Gliss.Transition.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_62C46C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for Gliss.Transition.id;
  v5 = sub_AB3470();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_62C50C()
{

  return swift_deallocObject();
}

unint64_t Gliss.Progression.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E112D8);
  v1._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v1);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  sub_AB94A0(v2);
  v3._countAndFlagsBits = 0x6F69746365726964;
  v3._object = 0xEA00000000003D6ELL;
  sub_AB94A0(v3);

  v4._countAndFlagsBits = sub_AB9AA0();
  sub_AB94A0(v4);

  v5._countAndFlagsBits = 0x3D65756C6176;
  v5._object = 0xE600000000000000;
  sub_AB94A0(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_AB94A0(v6);
  return 0xD000000000000014;
}

unint64_t sub_62C744()
{
  result = qword_E0E988;
  if (!qword_E0E988)
  {
    sub_AB3470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E988);
  }

  return result;
}

unint64_t sub_62C7A0()
{
  result = qword_E11470;
  if (!qword_E11470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11470);
  }

  return result;
}

unint64_t sub_62C7F8()
{
  result = qword_E11478;
  if (!qword_E11478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11478);
  }

  return result;
}

__n128 sub_62C860(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_62C880@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 120);
  swift_beginAccess();
  result = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_62C8E8(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2 + *(**a2 + 120);
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_62C960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 128);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore5GlissO9AnimationO(uint64_t a1)
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

uint64_t sub_62CA28(uint64_t a1, unsigned int a2)
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

uint64_t sub_62CA7C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_62CAD0(uint64_t result, unsigned int a2)
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

uint64_t sub_62CB0C()
{
  result = sub_AB3470();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_ABA9C0();
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

uint64_t storeEnumTagSinglePayload for PlayIntentLayoutHelper.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_62CD28(uint64_t a1, unsigned int a2)
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

uint64_t sub_62CD7C(uint64_t result, unsigned int a2, unsigned int a3)
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

  v7 = sub_AB8FF0();
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
    v9 = sub_52215C(v4, v8 | 0x8000000000000000);
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
    sub_4FD6CC();
    v6 = sub_ABAB20();

    return v6 & 1;
  }

  if (v4 == 49 && v5 == 0xE100000000000000 || (v8 = v4, v9 = v5, (sub_ABB3C0() & 1) != 0) || v8 == 1702195828 && v9 == 0xE400000000000000 || (sub_ABB3C0() & 1) != 0 || v8 == 5457241 && v9 == 0xE300000000000000)
  {

    v6 = 1;
    return v6 & 1;
  }

  v10 = sub_ABB3C0();

  return v10 & 1;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore19EnvironmentVariableO(uint64_t a1)
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

uint64_t sub_62D0D4()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E11500);
  __swift_project_value_buffer(v0, qword_E11500);
  return sub_AB4BB0();
}

uint64_t static StagedInstall.current()()
{
  v0 = sub_AB31C0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v47 - v6;
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  if (qword_E0D528 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 2;
  }

  if (qword_E0CDE0 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, qword_E11500);
  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Checking for a staged install of Music", v13, 2u);
  }

  sub_AB30C0();
  v14 = [objc_opt_self() defaultManager];
  sub_AB3160();
  v15 = sub_AB9260();

  v16 = [v14 fileExistsAtPath:v15];

  v17 = sub_AB4BA0();
  if (v16)
  {
    v18 = sub_AB9F30();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Found Music.app in staged_system_apps", v19, 2u);
    }

    v20 = sub_AB31F0();
    v25 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v25 != 2 || *(v20 + 16) == *(v20 + 24))
      {
LABEL_23:
        sub_466B8(v20, v21);
        v17 = sub_AB4BA0();
        v22 = sub_AB9F30();
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
      v38 = sub_AB4BA0();
      v39 = sub_AB9F30();
      if (os_log_type_enabled(v38, v39))
      {
        v31 = 2;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "Unable to read data of running executable", v40, 2u);

        sub_466B8(v26, v49);
        (*(v1 + 8))(v9, v0);
        return v31;
      }

      sub_466B8(v26, v49);

      goto LABEL_27;
    }

    sub_AB3150();

    (*(v1 + 32))(v7, v4, v0);
    v29 = sub_AB31F0();
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
        v41 = sub_62DCFC(v29, v30, v26, v49);
        v42 = sub_AB4BA0();
        if (v41)
        {
          v43 = sub_AB9F50();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Identical staged copy found";
LABEL_47:
            _os_log_impl(&dword_0, v42, v43, v45, v44, 2u);
          }
        }

        else
        {
          v43 = sub_AB9F30();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Found different binary in staged applications";
            goto LABEL_47;
          }
        }

        sub_466B8(v47, v48);
        sub_466B8(v26, v49);
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
    sub_466B8(v36, v37);
    goto LABEL_39;
  }

  v22 = sub_AB9F50();
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
  _os_log_impl(&dword_0, v17, v22, v24, v23, 2u);

  (*(v1 + 8))(v9, v0);
  return 2;
}

uint64_t sub_62D884@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_AB2D10();
    if (v10)
    {
      v11 = sub_AB2D40();
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
      result = sub_AB2D30();
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
  v10 = sub_AB2D10();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_AB2D40();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_AB2D30();
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

uint64_t sub_62DAB4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_62DC44(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_466B8(a3, a4);
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
  sub_62D884(v13, a3, a4, &v12);
  v10 = v4;
  sub_466B8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_62DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_AB2D10();
  v11 = result;
  if (result)
  {
    result = sub_AB2D40();
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

  sub_AB2D30();
  sub_62D884(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_62DCFC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_90090(a3, a4);
          return sub_62DAB4(v13, a2, a3, a4) & 1;
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

uint64_t sub_62DE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>, unsigned __int8 a10)
{
  v126 = a8;
  v121 = a7;
  v139 = a6;
  v125 = a4;
  v124 = a3;
  v123 = a2;
  v122 = a1;
  LODWORD(v12) = a10;
  v136 = sub_AB30A0();
  v13 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v15 - 8);
  v137 = &v111 - v16;
  v17 = sub_AB31C0();
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
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A78);
  __chkstk_darwin(v25 - 8);
  v27 = &v111 - v26;
  v28 = sub_AB2CE0();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0D528 != -1)
  {
LABEL_71:
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_AB2CC0();
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
        v27 = sub_ABB060();
      }

      else
      {
        v27 = *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8));
      }

      v115 = a9;
      v114 = v12;
      v113 = v28;
      v112 = v29;
      v111 = v31;
      if (v27 || *(v139 + 16))
      {
        v33 = [objc_opt_self() defaultManager];
        if (qword_E0CDE8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v145, static URL.tapToRadarDirectory);
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
          v34 = sub_ABAE20();
        }

        else
        {
          if (a9 >= *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8)))
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

        v31 = sub_62F4DC(a9, v34);
        v37 = v36;

        ++a9;
        if (v37)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = sub_506314(0, *(v134 + 2) + 1, 1, v134);
          }

          v29 = *(v134 + 2);
          v38 = *(v134 + 3);
          if (v29 >= v38 >> 1)
          {
            v134 = sub_506314((v38 > 1), v29 + 1, 1, v134);
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
      v48 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
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

        sub_90090(v28, v54);
        if (v48[89].isa != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v47, static URL.tapToRadarDirectory);
        v147[0] = 47;
        v147[1] = 0xE100000000000000;
        v149._countAndFlagsBits = v52;
        v138 = v51;
        v149._object = v51;
        sub_AB94A0(v149);
        v56 = v135;
        v55 = v136;
        (*v131)(v135, v132, v136);
        sub_4FD6CC();
        v57 = v140;
        sub_AB31B0();
        (*v130)(v56, v55);

        v12 = v141;
        sub_AB3270();
        v29 = v54;
        if (v12)
        {
          v58 = v145;
          if (qword_E0CDF0 != -1)
          {
            swift_once();
          }

          v59 = sub_AB4BC0();
          __swift_project_value_buffer(v59, qword_E11518);
          swift_errorRetain();
          v60 = sub_AB4BA0();
          v61 = sub_AB9F30();

          v48 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
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
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
            v66 = sub_AB9350();
            v68 = sub_500C84(v66, v67, v147);

            *(v64 + 4) = v68;
            _os_log_impl(&dword_0, v60, v61, "Tap-to-Radar Attachment file write failed with error: %{public}s", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v65);
            v47 = v145;

            v29 = v63;
            v28 = v141;

            v48 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;

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
          v48 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
        }

        v31 = v138;
        v27 &= v27 - 1;
        (*v129)(v69, v70, 1, v47);

        sub_466B8(v28, v29);
        v71 = (*v128)(v69, 1, v47);
        a5 = v127;
        if (v71 == 1)
        {
          sub_4FE5BC(v69);
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
            v119 = sub_506B6C(0, *(v119 + 2) + 1, 1, v119);
          }

          v28 = *(v119 + 2);
          v73 = *(v119 + 3);
          if (v28 >= v73 >> 1)
          {
            v119 = sub_506B6C(v73 > 1, v28 + 1, 1, v119);
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

      sub_511148(v75);
      v76 = v147[0];
      v77 = *(v147[0] + 16);
      if (v77)
      {
        v147[0] = _swiftEmptyArrayStorage;
        sub_503918(0, v77, 0);
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
          v85 = sub_AB3160();
          v87 = v86;
          (*v143)(v83, v84);
          v147[0] = v79;
          v89 = v79[2];
          v88 = v79[3];
          if (v89 >= v88 >> 1)
          {
            sub_503918((v88 > 1), v89 + 1, 1);
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E178);
      v91 = *(sub_AB2C10() - 8);
      v92 = *(v91 + 72);
      v93 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_B122D0;
      sub_AB2BE0();
      sub_AB2BE0();
      sub_AB2BE0();
      sub_AB2BE0();
      sub_AB2BE0();
      v95 = [objc_opt_self() mainBundle];
      v96 = [v95 bundleIdentifier];

      v97 = v126;
      if (v96)
      {
        sub_AB92A0();
      }

      sub_AB2BE0();

      v147[0] = v134;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0);
      v99 = sub_51EB04();
      sub_AB9140();
      sub_AB2BE0();

      v147[0] = v79;
      v144 = v99;
      v145 = v98;
      sub_AB9140();
      sub_AB2BE0();

      v100 = *(v97 + 16);
      v101 = _swiftEmptyArrayStorage;
      if (v100)
      {
        v141 = v94 + v93;
        v142 = v92;
        v143 = v94;
        v147[0] = _swiftEmptyArrayStorage;
        sub_503918(0, v100, 0);
        v101 = v147[0];
        v102 = (v97 + 32);
        do
        {
          v103 = *v102++;
          v146 = qword_B1E790[v103];
          v104 = sub_ABB330();
          v106 = v105;
          v147[0] = v101;
          v108 = v101[2];
          v107 = v101[3];
          if (v108 >= v107 >> 1)
          {
            sub_503918((v107 > 1), v108 + 1, 1);
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
      sub_AB9140();

      sub_AB2BE0();

      v147[0] = v134;
      sub_511054(v79);

      sub_AB2BE0();

      sub_AB2BE0();

      v110 = v111;
      sub_AB2C30();
      sub_AB2C50();
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

uint64_t sub_62F050()
{
  v0 = sub_AB30A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_AB31C0();
  __swift_allocate_value_buffer(v7, static URL.tapToRadarDirectory);
  __swift_project_value_buffer(v7, static URL.tapToRadarDirectory);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return sub_AB3190();
}

uint64_t URL.tapToRadarDirectory.unsafeMutableAddressor()
{
  if (qword_E0CDE8 != -1)
  {
    swift_once();
  }

  v0 = sub_AB31C0();

  return __swift_project_value_buffer(v0, static URL.tapToRadarDirectory);
}

uint64_t static URL.tapToRadarDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CDE8 != -1)
  {
    swift_once();
  }

  v2 = sub_AB31C0();
  v3 = __swift_project_value_buffer(v2, static URL.tapToRadarDirectory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_62F31C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E11518);
  __swift_project_value_buffer(v0, qword_E11518);
  return sub_AB4BB0();
}

Swift::Int sub_62F3C4()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(qword_B1E790[v1]);
  return sub_ABB610();
}

Swift::Int sub_62F44C()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(qword_B1E790[v1]);
  return sub_ABB610();
}

uint64_t sub_62F498@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_62F4DC(uint64_t a1, UIImage *a2)
{
  v4 = sub_AB30A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB31C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CDE8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, static URL.tapToRadarDirectory);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_ABAD90(24);

  v20 = 0xD000000000000012;
  v21 = 0x8000000000B6ED50;
  v19[1] = a1;
  v22._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v22);

  v23._countAndFlagsBits = 1735420462;
  v23._object = 0xE400000000000000;
  sub_AB94A0(v23);
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_4FD6CC();
  sub_AB31B0();
  (*(v5 + 8))(v7, v4);

  v12 = UIImageJPEGRepresentation(a2, 85.0);
  if (v12)
  {
    v13 = v12;
    v14 = sub_AB3260();
    v16 = v15;

    sub_AB3270();
    sub_466B8(v14, v16);
  }

  v17 = sub_AB3160();
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

unint64_t sub_62F9CC()
{
  result = qword_E11530;
  if (!qword_E11530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11530);
  }

  return result;
}

uint64_t static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = sub_AB9940();
  *(v3 + 40) = sub_AB9930();
  v5 = sub_AB98B0();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_62FAE0, v5, v4);
}

uint64_t sub_62FAE0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 89);
  v4 = sub_AB9930();
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_62FBFC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 88, v4, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000000B6A730, sub_53F124, v5, &type metadata for Bool);
}

uint64_t sub_62FBFC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_639ACC, v3, v2);
}

uint64_t sub_62FD5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA68);
    v2 = sub_ABB0C0();
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
    sub_808B0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_9ACFC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_9ACFC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_9ACFC(v31, v32);
    result = sub_ABACF0(v2[5]);
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
    result = sub_9ACFC(v32, (v2[7] + 32 * v10));
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

uint64_t sub_630024(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA68);
    v2 = sub_ABB0C0();
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
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_9ACFC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_9ACFC(v29, v30);
    result = sub_ABACF0(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
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
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_9ACFC(v30, (v2[7] + 32 * v10));
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
  if (qword_E0CDF8 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.EnablementContext.action;
}

uint64_t *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor()
{
  if (qword_E0CE00 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.StatusObserver.shared;
}

uint64_t CloudLibrary.EnablementContext.title.getter(unsigned __int8 a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 > 6u)
  {
    sub_AB91E0();
    (*(v4 + 16))(v7, v9, v3);
    if (qword_E0CB80 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_AB91E0();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_E0CB80 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v10 = qword_E71B20;
  sub_AB3550();
  v11 = sub_AB9320();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t CloudLibrary.EnablementContext.message.getter(unsigned __int8 a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = (v4 + 16);
  if (a1 > 6u)
  {
    sub_AB91E0();
    (*v10)(v7, v9, v3);
    if (qword_E0CB80 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_AB91E0();
  (*v10)(v7, v9, v3);
  if (qword_E0CB80 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v11 = qword_E71B20;
  sub_AB3550();
  v12 = sub_AB9320();
  (*(v4 + 8))(v9, v3);
  return v12;
}

Swift::Int sub_630A84()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(~v1);
  return sub_ABB610();
}

Swift::Int sub_630AFC()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(~v1);
  return sub_ABB610();
}

uint64_t sub_630B40@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t CloudLibrary.Status.shouldDisplayBanner.getter(uint64_t a1)
{
  if (qword_E0CE00 != -1)
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11558);
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
  v1 = sub_630D1C;
  if (a1 >> 30)
  {
    if (a1 >> 30 != 2)
    {
      return 0;
    }

    v1 = sub_630D1C;
    if (a1 >> 1 != 1073741825)
    {
      return 0;
    }
  }

  return v1;
}

void sub_630D1C()
{
  if (qword_E0CE00 != -1)
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

uint64_t sub_630DF0()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v13[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  v11 = v10;
  result = (*(v2 + 8))(v7, v1);
  static CloudLibrary.EnablementContext.action = v9;
  unk_E71EF0 = v11;
  return result;
}

uint64_t static CloudLibrary.EnablementContext.action.getter()
{
  if (qword_E0CDF8 != -1)
  {
    swift_once();
  }

  v0 = static CloudLibrary.EnablementContext.action;

  return v0;
}

uint64_t sub_63103C()
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  swift_allocObject();
  result = sub_6310D8();
  static CloudLibrary.StatusObserver.shared = result;
  return result;
}

uint64_t static CloudLibrary.StatusObserver.shared.getter()
{
  if (qword_E0CE00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_6310D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11578);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34[-v4];
  v36 = 2;
  v35[0] = 0xD000000000000014;
  v35[1] = 0x8000000000B6A140;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_4FD6CC();
  UserDefault.init(wrappedValue:defaults:key:)(&v36, v6, v35, &type metadata for String, &v37);
  v7 = v38;
  v8 = v39;
  *(v1 + 16) = v37;
  *(v1 + 32) = v7;
  *(v1 + 40) = v8;
  *(v1 + 48) = &_swiftEmptyArrayStorage;
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = static ApplicationCapabilities.Controller.shared;
  *(v1 + 64) = &_swiftEmptyArrayStorage;
  *(v1 + 72) = &_swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v9 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  *&v37 = 0x80000000;

  sub_AB54D0();
  (*(v3 + 32))(v1 + v9, v5, v2);
  *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103F0);
  inited = swift_initStackObject();
  *&v11 = 3;
  *(inited + 16) = xmmword_AF8820;
  if (qword_E0CCC0 != -1)
  {
    swift_once();
  }

  v12 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  UIScreen.Dimensions.size.getter(v11);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v13;
  *(inited + 40) = v14;
  v15 = qword_E0CCE0;
  v16 = v12;

  if (v15 != -1)
  {
    swift_once();
  }

  v18 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v19 = UIScreen.Dimensions.size.getter(v17);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v20;
  *(inited + 80) = v21;
  v22 = MPCloudControllerCloudLibraryFailureDidChangeNotification;
  UIScreen.Dimensions.size.getter(v19);
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v23;
  *(inited + 120) = v24;
  v25 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v26 = v18;

  v27 = v22;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_639844, v25);

  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*(v1 + 72) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v1 + 72) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  v28 = MPCloudControllerIsUpdateInProgressDidChangeNotification;
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 sharedCloudController];
  v32 = swift_allocObject();
  swift_weakInit();

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + 80) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v30, v31, 1, 1, sub_63984C, v32);

  return v1;
}

void sub_6315DC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v23[4] = v19;
    v23[5] = v20;
    v24 = v21;
    v25 = v22;
    v23[0] = v15;
    v23[1] = v16;
    v23[2] = v17;
    v23[3] = v18;
    sub_70C54(v23);
    if (v24 == 2)
    {
    }

    else
    {
      v2 = sub_ABB3C0();

      if ((v2 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_AB5510();

        v6 = v15;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v15 = 2147483649;

        sub_AB5520();
        sub_632FC4(v6);
        goto LABEL_9;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    sub_70C54(&v15);
    if ((BYTE2(v15) & 1) == 0)
    {
      v3 = [objc_opt_self() sharedCloudController];
      if (v3)
      {
        v4 = v3;
        *&v9 = sub_639854;
        *(&v9 + 1) = v1;
        *&v7 = _NSConcreteStackBlock;
        *(&v7 + 1) = 1107296256;
        *&v8 = sub_151E0;
        *(&v8 + 1) = &block_descriptor_161_3;
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

uint64_t sub_631940(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB7C10();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_AB7C50();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_E103C0);
  v12 = sub_ABA150();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_6398A4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_167_3;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();
  v15 = a1;

  sub_AB7C30();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_63970C(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50);
  sub_36A00(&qword_E13DA0, &unk_E11A50);
  sub_ABABB0();
  sub_ABA160();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_631C50(uint64_t a1, void *a2)
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
    sub_AB5510();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5520();
    sub_632FC4(v3);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5520();
  sub_632FC4(v3);
}

uint64_t sub_631DF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_6336B8();
  }

  return result;
}

uint64_t sub_631E48()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11558);
  result = UserDefault.wrappedValue.getter(v3, &v6);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v5 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v7 = 2147483650;

    sub_AB5520();
    return sub_632FC4(v5);
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
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11558);
  UserDefault.wrappedValue.getter(v3, &v5);
  return v5;
}

uint64_t CloudLibrary.StatusObserver.hasDisregardedBanner.setter(char a1)
{
  v3 = a1;
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11558);
  UserDefault.wrappedValue.setter(&v3, v1);
  swift_endAccess();
  return sub_631E48();
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
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11558);
  *(v4 + 64) = v7;
  UserDefault.wrappedValue.getter(v7, v4 + 25);
  return sub_632120;
}

void sub_632120(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *a1;
  *(*a1 + 26) = *(*a1 + 25);
  swift_beginAccess();
  UserDefault.wrappedValue.setter(v3 + 26, v2);
  swift_endAccess();
  sub_631E48();

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
      v6 = sub_506CEC(0, v6[2] + 1, 1, v6);
      *(v2 + 48) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_506CEC((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = sub_6383A4;
    v10[5] = v5;
    *(v2 + 48) = v6;
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v11 = v21[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v21[0] = 2147483652;

  sub_AB5520();
  sub_632FC4(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11568);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v14;
  *(inited + 72) = 1;
  v15 = sub_52A8B0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11570);
  swift_arrayDestroy();
  v16 = [objc_opt_self() sharedCloudController];
  if (v16)
  {
    v17 = v16;
    sub_630024(v15);

    isa = sub_AB8FD0().super.isa;

    v19 = swift_allocObject();
    swift_weakInit();
    v21[4] = sub_638384;
    v21[5] = v19;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_3A5920;
    v21[3] = &block_descriptor_186;
    v20 = _Block_copy(v21);

    [v17 enableCloudLibraryWithOptions:isa completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_63253C(uint64_t a1)
{
  v2 = sub_AB7C10();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_E0CE08 != -1)
    {
      swift_once();
    }

    v17 = sub_AB4BC0();
    __swift_project_value_buffer(v17, qword_E11540);
    v9 = sub_AB4BA0();
    v18 = sub_AB9F50();
    if (os_log_type_enabled(v9, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v9, v18, "Successfully enabled Cloud Library", v19, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_E0CE08 != -1)
  {
    swift_once();
  }

  v8 = sub_AB4BC0();
  __swift_project_value_buffer(v8, qword_E11540);
  swift_errorRetain();
  v9 = sub_AB4BA0();
  v10 = sub_AB9F30();

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v14 = sub_AB9350();
    v16 = sub_500C84(v14, v15, aBlock);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "Failed to enable Cloud Library with error=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
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
    sub_13C80(0, &qword_E103C0);
    v22 = sub_ABA150();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = a1;
    aBlock[4] = sub_63983C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_156;
    v24 = _Block_copy(aBlock);
    swift_errorRetain();

    sub_AB7C30();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_63970C(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50);
    sub_36A00(&qword_E13DA0, &unk_E11A50);
    sub_ABABB0();
    sub_ABA160();
    _Block_release(v24);

    (*(v29 + 8))(v4, v2);
    return (*(v27 + 8))(v7, v28);
  }

  return result;
}

uint64_t sub_632A88(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 48);
  *(a1 + 48) = &_swiftEmptyArrayStorage;
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
      sub_6383D0(v8, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_638408(v16);
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
  sub_AB5510();

  (*(a2 + 8))(v16[0], ObjectType, a2);
  sub_6383D0(v18, v17);
  swift_beginAccess();
  a1 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = sub_506D5C(0, a1[2] + 1, 1, a1);
    *(v3 + 64) = a1;
  }

  v15 = a1[2];
  v14 = a1[3];
  if (v15 >= v14 >> 1)
  {
    a1 = sub_506D5C((v14 > 1), v15 + 1, 1, a1);
  }

  a1[2] = v15 + 1;
  sub_52B454(v17, &a1[2 * v15 + 4]);
  *(v3 + 64) = a1;
  swift_endAccess();
  return sub_638408(v18);
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
      sub_6383D0(v6, v9);
      Strong = swift_unknownObjectWeakLoadStrong();
      result = sub_638408(v9);
      if (Strong)
      {
        result = swift_unknownObjectRelease();
        if (Strong == a1)
        {

          swift_beginAccess();
          sub_520850(v7, v10);
          sub_638408(v10);
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

uint64_t sub_632E78@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_632EF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5520();
  return sub_632FC4(v1);
}

uint64_t sub_632FC4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = _s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v11, a1);
  if ((result & 1) == 0)
  {
    if (qword_E0CE08 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_E11540);

    v4 = sub_AB4BA0();
    v5 = sub_AB9F50();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510();

      v8 = sub_AB9350();
      v10 = sub_500C84(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_0, v4, v5, "Status did change: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    return sub_634384();
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.status.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_633248()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11578);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_6332C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A60);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11578);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t CloudLibrary.StatusObserver.$status.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11578);
  sub_AB54E0();
  return swift_endAccess();
}

float sub_6334B8(uint64_t a1)
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
    sub_AB5510();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5520();
    sub_632FC4(v4);
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

float (*sub_633654(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext;
  *a1 = v1;
  a1[1] = v2;
  a1[2] = *(v1 + v2);
  return sub_633688;
}

float sub_633688(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  return sub_6334B8(v4);
}

void sub_6336B8()
{
  v1 = sub_AB7C10();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v53 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_AB7C50();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB7BE0();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = __chkstk_darwin(v4);
  v48 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v46 = (&v42 - v7);
  v47 = sub_AB7C80();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_ABA1D0();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB7C20();
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
      sub_6334B8(v25);
      sub_13C80(0, &unk_E11A20);
      sub_13C80(0, &qword_E103C0);
      (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.userInteractive(_:), v12);
      v26 = sub_ABA190();
      (*(v13 + 8))(v15, v12);
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_63970C(&unk_E11A30, &type metadata accessor for OS_dispatch_source.TimerFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13D80);
      sub_36A00(&unk_E11A40, &qword_E13D80);
      sub_ABABB0();
      v27 = sub_ABA1E0();

      (*(v43 + 8))(v11, v9);
      swift_getObjectType();
      v28 = v44;
      sub_AB7C70();
      v29 = v46;
      *v46 = 1;
      v31 = v49;
      v30 = v50;
      v32 = *(v49 + 104);
      v32(v29, enum case for DispatchTimeInterval.seconds(_:), v50);
      v33 = v48;
      *v48 = 1;
      v32(v33, enum case for DispatchTimeInterval.nanoseconds(_:), v30);
      sub_ABA3E0();
      v34 = *(v31 + 8);
      v34(v33, v30);
      v34(v29, v30);
      (*(v45 + 8))(v28, v47);
      v35 = v42;
      aBlock[4] = sub_639754;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_111;
      v36 = _Block_copy(aBlock);
      v37 = v35;

      v38 = v51;
      sub_6E3C8C();
      v39 = v53;
      sub_6E3C90();
      sub_ABA1F0();
      _Block_release(v36);
      (*(v55 + 8))(v39, v56);
      (*(v52 + 8))(v38, v54);

      v40 = *(v35 + 88);
      *(v37 + 88) = v27;
      if (v40)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_ABA200();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_ABA210();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    *(v0 + 88) = 0;
    if (v24)
    {
      swift_getObjectType();
      sub_ABA200();
      swift_unknownObjectRelease();
    }

    v41 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
    *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;

    sub_6334B8(v41);
  }
}

void sub_633E88(uint64_t a1)
{
  v2 = [objc_opt_self() sharedCloudController];
  if (v2)
  {
    v3 = v2;
    v5[4] = sub_63975C;
    v5[5] = a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_634330;
    v5[3] = &block_descriptor_114_1;
    v4 = _Block_copy(v5);

    [v3 loadCloudMusicLibraryUpdateProgressWithCompletionHandler:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_633F7C(float a1)
{
  v2 = sub_AB7C10();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB7C50();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_E103C0);
  v8 = sub_ABA150();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_63979C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_121_1;
  v11 = _Block_copy(aBlock);

  sub_AB7C30();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_63970C(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50);
  sub_36A00(&qword_E13DA0, &unk_E11A50);
  sub_ABABB0();
  sub_ABA160();
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

uint64_t sub_63429C(float a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_633654(v5);
    if (*v3 != 2)
    {
      *(v3 + 4) = a1;
    }

    (v4)(v5, 0);
  }

  return result;
}

uint64_t sub_634330(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t sub_634384()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v1 = v10;
  result = swift_beginAccess();
  v3 = *(v0 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    do
    {
      sub_6383D0(v5, v8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = v9;
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v1, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      sub_638408(v8);
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
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11578);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CloudLibrary.StatusObserver.__deallocating_deinit()
{
  CloudLibrary.StatusObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_6345A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t CloudLibrary.Status.message.getter(uint64_t a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 >> 30 > 1 && (a1 - 0x80000000) < 3)
  {
    return 0;
  }

  sub_AB91E0();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v10 = qword_E71B20;
  sub_AB3550();
  v11 = sub_AB9320();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t CloudLibrary.Status.actionTitle.getter(uint64_t a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 >> 30 && (a1 >> 30 == 1 || a1 != 2147483651))
  {
    return 0;
  }

  sub_AB91E0();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v11 = qword_E71B20;
  sub_AB3550();
  v12 = sub_AB9320();
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

  sub_13C80(0, &qword_E112E0);
  return sub_ABA790() & 1;
}

uint64_t sub_634AF0(void *a1, unint64_t *a2)
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

  sub_13C80(0, &qword_E112E0);
  return sub_ABA790() & 1;
}

void sub_634B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (qword_E0CE00 != -1)
  {
    swift_once();
    v4 = a2;
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(v4, a3);
}

uint64_t sub_634BEC(uint64_t a1, unsigned __int8 a2, uint64_t a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(a2, a3, a4, sub_639AFC, v13);
}

void static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:cloudLibraryEnabledCompletion:)(unsigned __int8 a1, uint64_t a2, char *a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v27[4] = v23;
  v27[5] = v24;
  v27[6] = v25;
  v27[7] = v26;
  v27[0] = v19;
  v27[1] = v20;
  v27[2] = v21;
  v27[3] = v22;
  sub_70C54(v27);
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
  sub_AB5510();

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  sub_70C54(&v19);
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
  *(v3 + 32) = sub_AB9940();
  *(v3 + 40) = sub_AB9930();
  v5 = sub_AB98B0();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_634FA4, v5, v4);
}

uint64_t sub_634FA4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 89);
  v4 = sub_AB9930();
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_6350C0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 88, v4, &protocol witness table for MainActor, 0xD000000000000045, 0x8000000000B6F340, sub_638F08, v5, &type metadata for Bool);
}

uint64_t sub_6350C0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_635220, v3, v2);
}

uint64_t sub_635220()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_635284(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF0);
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
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v42[4] = v38;
  v42[5] = v39;
  v42[6] = v40;
  v42[7] = v41;
  v42[0] = v34;
  v42[1] = v35;
  v42[2] = v36;
  v42[3] = v37;
  sub_70C54(v42);
  if (BYTE2(v42[0]))
  {
    v18 = *(v6 + 8);
    v18(v12, v5);
    LOBYTE(v34) = 1;
    sub_AB98D0();

    return (v18)(v9, v5);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v38 = v30;
    v39 = v31;
    v40 = v32;
    v41 = v33;
    v34 = v26;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    sub_70C54(&v34);
    if (BYTE9(v34))
    {
      v21 = *(v6 + 8);
      v21(v12, v5);
      _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v23, v24, v25, sub_6397AC, v17);

      return (v21)(v9, v5);
    }

    else
    {
      LOBYTE(v26) = 0;
      sub_AB98D0();

      v20 = *(v6 + 8);
      v20(v9, v5);
      return (v20)(v12, v5);
    }
  }
}

char *sub_635638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + qword_E11798) = 0;
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
  sub_307CC(a5);
  type metadata accessor for UIUserInterfaceSizeClass(0);
  sub_AB54D0();
  swift_endAccess();
  v15 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v16 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v15 = 0;
  v15[1] = 0;
  sub_17654(v16);
  *(v6 + qword_E11790) = v13;
  sub_63970C(&qword_E11A70, type metadata accessor for EnableCloudLibraryView.Model);
  swift_retain_n();
  v30 = sub_AB5B50();
  v31 = v17;
  v18 = sub_AB64F0();
  v19 = *&v18[qword_E11790];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = (v19 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v22 = *(v19 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v21 = sub_6397F4;
  v21[1] = v20;
  v23 = v18;

  sub_17654(v22);

  sub_635C28();
  v24 = [v23 presentingViewController];
  if (v24)
  {
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A78);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_AF4EC0;
    *(v26 + 32) = sub_AB5080();
    *(v26 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_ABA070();
    swift_unknownObjectRelease();
  }

  v27 = [v23 presentationController];

  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A78);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_AF4EC0;
    *(v28 + 32) = sub_AB5080();
    *(v28 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_ABA3F0();

    sub_17654(a5);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_17654(a5);
  }

  return v23;
}

void sub_635970()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_6359D4(uint64_t a1)
{
  *(a1 + qword_E11798) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_635A3C(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CloudLibraryViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 navigationItem];
  v3 = sub_635B04();
  [v2 setLeftBarButtonItem:v3];

  v4 = [v1 navigationItem];
  [v4 setLargeTitleDisplayMode:2];
}

objc_class *sub_635B04()
{
  v1 = qword_E11798;
  v2 = *(v0 + qword_E11798);
  if (v2)
  {
    v3 = *(v0 + qword_E11798);
  }

  else
  {
    sub_13C80(0, &unk_E11A10);
    sub_13C80(0, &qword_E0E1D0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v9.value.super.super.isa = sub_ABA7D0();
    v9.is_nil = 0;
    v5.super.super.isa = sub_AB9F90(UIBarButtonSystemItemClose, v9, v10).super.super.isa;
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5.super.super.isa;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_635C28()
{
  v1 = [v0 presentingViewController];
  if (v1 && (v2 = v1, v3 = [v1 traitCollection], v2, v3) || (v4 = objc_msgSend(v0, "presentationController")) != 0 && (v5 = v4, v3 = objc_msgSend(v4, "traitCollection"), v5, v3))
  {

    [v3 horizontalSizeClass];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5520();
  }
}

void sub_635D30(void *a1)
{
  v1 = a1;
  sub_635C28();
}

void sub_635D78()
{

  v1 = *(v0 + qword_E11798);
}

id sub_635DB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudLibraryViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_635DF0(uint64_t a1)
{

  v2 = *(a1 + qword_E11798);
}

uint64_t sub_635E3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_635F10()
{

  sub_17654(*(v0 + 48));
  v1 = OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model__horizontalSizeClass;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A08);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_17654(*(v0 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss));

  return swift_deallocClassInstance();
}

uint64_t sub_635FE4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EnableCloudLibraryView.Model(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t sub_636024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11928);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11930);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  *v8 = sub_AB6A70();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11938);
  sub_6362BC(a1, a2, &v8[*(v13 + 44)]);
  v14 = sub_AB6A90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB5690();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_36B0C(v8, v12, &qword_E11928);
  v23 = &v12[*(v10 + 44)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = sub_AB6AC0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB5690();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_36B0C(v12, a3, &qword_E11930);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11940);
  v34 = a3 + *(result + 36);
  *v34 = v24;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_6362BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11948);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11950);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11958);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v31 - v21;
  *v22 = sub_AB6440();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11960);
  sub_636658(a1, a2, &v22[*(v23 + 44)]);
  *v16 = sub_AB6440();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11968);
  sub_636C18(a1, a2, &v16[*(v24 + 44)]);
  *v10 = sub_AB6440();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11970);
  sub_637308(a1, a2, &v10[*(v25 + 44)]);
  v26 = v20;
  v31 = v20;
  sub_15F84(v22, v20, &qword_E11958);
  sub_15F84(v16, v14, &qword_E11950);
  v27 = v8;
  sub_15F84(v10, v8, &qword_E11948);
  v28 = v32;
  sub_15F84(v26, v32, &qword_E11958);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11978);
  sub_15F84(v14, v28 + *(v29 + 48), &qword_E11950);
  sub_15F84(v27, v28 + *(v29 + 64), &qword_E11948);
  sub_12E1C(v10, &qword_E11948);
  sub_12E1C(v16, &qword_E11950);
  sub_12E1C(v22, &qword_E11958);
  sub_12E1C(v27, &qword_E11948);
  sub_12E1C(v14, &qword_E11950);
  return sub_12E1C(v31, &qword_E11958);
}

uint64_t sub_636658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_AB6900();
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11980);
  v35 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11988);
  v39 = *(v34 - 8);
  v13 = __chkstk_darwin(v34);
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v38 = &v31 - v15;
  v41 = sub_AB6440();
  v43 = 0;
  sub_637B30(&v53);
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
  sub_15F84(&v44, &v51, &qword_E119F0);
  sub_12E1C(v49, &qword_E119F0);
  *(&v42[2] + 7) = v46;
  *(&v42[3] + 7) = v47;
  *(&v42[4] + 7) = v48[0];
  v42[5] = *(v48 + 9);
  *(v42 + 7) = v44;
  *(&v42[1] + 7) = v45;
  v40 = v43;
  v32 = sub_AB75A0();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E119B0);
  sub_639538();
  sub_AB7690();
  sub_AB68F0();
  sub_36A00(&qword_E119D0, &qword_E11980);
  sub_63970C(&qword_E119D8, &type metadata accessor for BorderedProminentButtonStyle);
  v17 = v38;
  v18 = v36;
  sub_AB6FB0();
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
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A00);
  v19((a3 + *(v28 + 96)), v20, v21);
  sub_15F84(&v51, &v53, &qword_E119A0);
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
  return sub_12E1C(&v53, &qword_E119A0);
}

uint64_t sub_636C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = sub_AB6900();
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v45 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11980);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v8 = v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11988);
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v44 = v42 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11990) - 8;
  v11 = __chkstk_darwin(v50);
  v52 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v42 - v14;
  __chkstk_darwin(v13);
  v47 = v42 - v16;
  v49 = sub_AB6440();
  v61 = 0;
  sub_637B30(&v58);
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
  sub_15F84(&v62, &v56, &qword_E119F0);
  sub_12E1C(v67, &qword_E119F0);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E119B0);
  sub_639538();
  sub_AB7690();
  v18 = v45;
  sub_AB68F0();
  sub_36A00(&qword_E119D0, &qword_E11980);
  sub_63970C(&qword_E119D8, &type metadata accessor for BorderedProminentButtonStyle);
  v19 = v44;
  v20 = v46;
  v21 = v51;
  sub_AB6FB0();
  (*(v53 + 8))(v18, v21);
  (*(v48 + 8))(v8, v20);
  LOBYTE(v8) = sub_AB6AB0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB5690();
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
  sub_36B0C(v15, v47, &qword_E11990);
  v32 = v52;
  sub_15F84(v31, v52, &qword_E11990);
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
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E119F8);
  sub_15F84(v32, a3 + *(v40 + 64), &qword_E11990);
  sub_15F84(&v56, &v58, &qword_E119A0);
  sub_12E1C(v31, &qword_E11990);
  sub_12E1C(v32, &qword_E11990);
  *(&v59[4] + 1) = v60[2];
  *(&v59[6] + 1) = v60[3];
  *(&v59[8] + 1) = v60[4];
  *(&v59[10] + 1) = v60[5];
  *(v59 + 1) = v60[0];
  *&v58 = v33;
  *(&v58 + 1) = 0x4020000000000000;
  LOBYTE(v59[0]) = a2;
  *(&v59[2] + 1) = v60[1];
  return sub_12E1C(&v58, &qword_E119A0);
}

uint64_t sub_637308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v62 = a3;
  v5 = sub_AB6900();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11980);
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v10 = &v47 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11988);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v49 = &v47 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11990) - 8;
  v12 = __chkstk_darwin(v56);
  v60 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v47 - v15;
  __chkstk_darwin(v14);
  v54 = &v47 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11998);
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = __chkstk_darwin(v18);
  v50 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v48 = &v47 - v21;
  sub_AB6A70();
  v63 = a1;
  v64 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E119A0);
  sub_36A00(&qword_E119A8, &qword_E119A0);
  sub_AB5710();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E119B0);
  sub_639538();
  sub_AB7690();
  sub_AB68F0();
  sub_36A00(&qword_E119D0, &qword_E11980);
  sub_63970C(&qword_E119D8, &type metadata accessor for BorderedProminentButtonStyle);
  v23 = v49;
  v24 = v53;
  v25 = v57;
  sub_AB6FB0();
  (*(v58 + 8))(v8, v25);
  (*(v55 + 8))(v10, v24);
  LOBYTE(v8) = sub_AB6AB0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  sub_AB5690();
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
  sub_36B0C(v16, v54, &qword_E11990);
  v37 = v51;
  v36 = v52;
  v38 = *(v51 + 16);
  v39 = v50;
  v40 = v48;
  v38(v50, v48, v52);
  v41 = v60;
  sub_15F84(v35, v60, &qword_E11990);
  v42 = v62;
  v38(v62, v39, v36);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E119E0);
  v44 = &v42[*(v43 + 48)];
  *v44 = 0;
  v44[8] = 1;
  sub_15F84(v41, &v42[*(v43 + 64)], &qword_E11990);
  sub_12E1C(v35, &qword_E11990);
  v45 = *(v37 + 8);
  v45(v40, v36);
  sub_12E1C(v41, &qword_E11990);
  return (v45)(v39, v36);
}

double sub_6379E0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_AB6440();
  v15 = 0;
  sub_637B30(&v9);
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
  sub_15F84(&v16, &v8, &qword_E119F0);
  sub_12E1C(v21, &qword_E119F0);
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

uint64_t sub_637B30@<X0>(uint64_t a1@<X8>)
{
  sub_4FD6CC();

  v2 = sub_AB6F20();
  v4 = v3;
  v6 = v5;
  sub_AB6B60();
  v7 = sub_AB6E80();
  v9 = v8;
  v11 = v10;

  sub_36B74(v2, v4, v6 & 1);

  sub_AB6BD0();
  v12 = sub_AB6E00();
  v36 = v13;
  v37 = v12;
  v35 = v14;
  v38 = v15;
  sub_36B74(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();

  v16 = sub_AB6F20();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_AB6C50();
  v20 = sub_AB6E80();
  v22 = v21;
  v24 = v23;

  sub_36B74(v16, v18, v9 & 1);

  sub_AB6730();
  v25 = sub_AB6E20();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_36B74(v20, v22, v24 & 1);

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
  sub_AFF30(v37, v36, v35 & 1);

  sub_AFF30(v25, v27, v29 & 1);

  sub_36B74(v25, v27, v29 & 1);

  sub_36B74(v37, v36, v35 & 1);
}

void sub_637E0C(uint64_t a1, uint64_t a2)
{
  if (qword_E0CE00 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(*(a2 + 48), *(a2 + 56));
  v3 = *(a2 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  if (v3)
  {

    v3(v4);

    sub_17654(v3);
  }
}

__n128 sub_637EB8@<Q0>(uint64_t a1@<X8>)
{
  if (qword_E0CDF8 != -1)
  {
    swift_once();
  }

  v24 = static CloudLibrary.EnablementContext.action;
  sub_4FD6CC();

  v2 = sub_AB6F20();
  v4 = v3;
  v6 = v5;
  v7 = sub_AB6E70();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_36B74(v2, v4, v6 & 1);

  LOBYTE(v2) = sub_AB6B00();
  sub_AB5690();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_AB7A30();
  sub_AB5E90();
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

uint64_t sub_6380B4()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E11540);
  __swift_project_value_buffer(v0, qword_E11540);
  return sub_AB4BB0();
}

uint64_t sub_638134@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_6381B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
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

uint64_t sub_63834C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_186(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(unsigned __int8 a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v79 = a2;
  v9 = sub_AB35C0();
  __chkstk_darwin(v9 - 8);
  v77[1] = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB9250();
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
    v23 = sub_AB9260();

    v24 = sub_AB9260();

    v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

    sub_AB91E0();
    v26 = v77[0];
    (*(v77[0] + 16))(v14, v16, v11);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v27 = qword_E71B20;
    sub_AB3550();
    sub_AB9320();
    (*(v26 + 8))(v16, v11);
    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a5;
    v29 = a5;
    sub_307CC(a4);
    v30 = sub_AB9260();

    v84 = sub_6397B4;
    v85 = v28;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_1546C;
    v83 = &block_descriptor_130_1;
    v31 = _Block_copy(&aBlock);

    v32 = objc_opt_self();
    v33 = [v32 actionWithTitle:v30 style:1 handler:v31];
    _Block_release(v31);

    [v25 addAction:v33];
    if (qword_E0CDF8 != -1)
    {
      swift_once();
    }

    v34 = swift_allocObject();
    *(v34 + 16) = a4;
    *(v34 + 24) = v29;
    sub_307CC(a4);
    v35 = sub_AB9260();
    v84 = sub_6397E8;
    v85 = v34;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_1546C;
    v83 = &block_descriptor_136;
    v36 = _Block_copy(&aBlock);

    v37 = [v32 actionWithTitle:v35 style:0 handler:v36];
    _Block_release(v36);

    [v25 addAction:v37];
    v38 = v78;
    v39 = v79;
    if (v78 != &dword_0 + 1)
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
        sub_31838(v38);
        [v50 setPermittedArrowDirections:15];
      }

      sub_31838(v38);
    }

    v51 = *(v39 + 80);
    if (v51)
    {
      v52 = qword_E0CF08;

      if (v52 != -1)
      {
        swift_once();
      }

      v53 = sub_AB4BC0();
      __swift_project_value_buffer(v53, qword_E14920);
      v54 = sub_AB4BA0();
      v55 = sub_AB9F50();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_0, v54, v55, "Deferring presentation…", v56, 2u);
      }

      v57 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_71E354;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_71F2F4;
      v83 = &block_descriptor_139;
      v58 = _Block_copy(&aBlock);
      v59 = [v57 initWithTimeout:v58 interruptionHandler:10.0];
      _Block_release(v58);

      sub_15F28(v39, &aBlock);
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      sub_17704(&aBlock, v60 + 24);
      *(v60 + 120) = v25;
      *(v60 + 128) = 1;
      *(v60 + 129) = v38 != &dword_0 + 1;
      *(v60 + 136) = 0;
      *(v60 + 144) = 0;
      v61 = v59;
      v62 = v25;
      v51(v39, v62, sub_5487D4, v60);
      sub_17654(v51);

LABEL_22:

      return;
    }

    sub_71C834(v25, &dword_0 + 1, (v38 != &dword_0 + 1), 0, 0);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for CloudLibraryViewController(0));
    sub_307CC(a4);
    v63 = sub_635638(v17, v19, v20, v22, a4, a5);
    v78 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v63];
    [v78 setModalPresentationStyle:2];
    [v78 setModalPresentationCapturesStatusBarAppearance:1];
    v64 = v79;
    v65 = *(v79 + 80);
    if (v65)
    {
      v66 = qword_E0CF08;

      if (v66 != -1)
      {
        swift_once();
      }

      v67 = sub_AB4BC0();
      __swift_project_value_buffer(v67, qword_E14920);
      v68 = sub_AB4BA0();
      v69 = sub_AB9F50();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_0, v68, v69, "Deferring presentation…", v70, 2u);
      }

      v71 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_71E354;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_71F2F4;
      v83 = &block_descriptor_145_3;
      v72 = _Block_copy(&aBlock);
      v73 = [v71 initWithTimeout:v72 interruptionHandler:10.0];
      _Block_release(v72);

      sub_15F28(v64, &aBlock);
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      sub_17704(&aBlock, v74 + 24);
      *(v74 + 120) = v78;
      *(v74 + 128) = 256;
      *(v74 + 136) = 0;
      *(v74 + 144) = 0;
      v61 = v73;
      v75 = v78;
      v65(v64, v75, sub_5488D0, v74);
      sub_17654(v65);

      goto LABEL_22;
    }

    sub_71C834(v78, 0, &dword_0 + 1, 0, 0);

    v76 = v78;
  }
}

unint64_t sub_638F18()
{
  result = qword_E11588;
  if (!qword_E11588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11588);
  }

  return result;
}

unint64_t sub_638F70()
{
  result = qword_E11590;
  if (!qword_E11590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11590);
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

uint64_t sub_6390BC(void *a1)
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

unint64_t *sub_6390EC(unint64_t *result, unsigned int a2)
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

void sub_639168()
{
  sub_639238();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_639238()
{
  if (!qword_E115D0)
  {
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E115D0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9MusicCore12CloudLibraryO17PresentationStyleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_639358()
{
  sub_639400();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_639400()
{
  if (!qword_E11840)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E11840);
    }
  }
}

uint64_t sub_639468(uint64_t a1, int a2)
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

uint64_t sub_6394B4(uint64_t result, int a2, int a3)
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

unint64_t sub_639538()
{
  result = qword_E119B8;
  if (!qword_E119B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E119B0);
    sub_6395C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E119B8);
  }

  return result;
}

unint64_t sub_6395C4()
{
  result = qword_E119C0;
  if (!qword_E119C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E119C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E119C0);
  }

  return result;
}

uint64_t sub_639648@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6100();
  *a1 = result;
  return result;
}

uint64_t sub_63969C()
{

  return swift_deallocObject();
}

uint64_t sub_6396D4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_63970C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_639764()
{

  return swift_deallocObject();
}

uint64_t sub_6397B4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t sub_6397FC()
{

  return swift_deallocObject();
}

uint64_t sub_63985C()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_123Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_639948()
{
  result = qword_E11A88;
  if (!qword_E11A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11940);
    sub_6399D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11A88);
  }

  return result;
}

unint64_t sub_6399D4()
{
  result = qword_E11A90;
  if (!qword_E11A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11930);
    sub_36A00(&qword_E11A98, &qword_E11928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11A90);
  }

  return result;
}

uint64_t sub_639B00(uint64_t a1, char a2)
{
  *(v3 + 2217) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 2096) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 2104) = swift_task_alloc();
  v4 = sub_AB4BC0();
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

  return _swift_task_switch(sub_639C94, 0, 0);
}

uint64_t sub_639C94()
{
  v107 = v0;
  v1 = *(v0 + 2218);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v71 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v71) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 2216) = 2;
    v73 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v73) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v74 = *(v0 + 2160);
        v75 = *(v0 + 2120);
        v76 = *(v0 + 2112);
        v77 = __swift_project_value_buffer(v76, qword_E0E1F8);
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
        sub_15F84(v0 + 1784, v0 + 1920, &qword_E0EAA8);
        v82 = sub_AB4BA0();
        v83 = sub_AB9F30();
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
          sub_12E1C(v0 + 1784, &qword_E0EAA8);
          v93 = sub_500C84(v90, v92, v101);

          *(v88 + 4) = v93;
          _os_log_impl(&dword_0, v82, v83, "%{public}s: attempted to execute but identifier is hidden", v88, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v89);

          (*(v86 + 8))(v100, v87);
        }

        else
        {
          sub_12E1C(v0 + 1784, &qword_E0EAA8);

          (*(v86 + 8))(v85, v87);
        }
      }

      sub_50E914();
      swift_allocError();
      *v94 = 0xD000000000000014;
      v94[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 2217) != 1 || (v2 = *(v0 + 64), v101[2] = *(v0 + 48), v101[3] = v2, v101[4] = *(v0 + 80), v3 = *(v0 + 32), v101[0] = *(v0 + 16), v101[1] = v3, v4 = *(v0 + 96), v5 = *(v0 + 104), v6 = *(v0 + 128), v104 = *(v0 + 112), v105 = v6, v106 = *(v0 + 144), v102 = v4, v103 = v5, v7 = v4(v101), v8 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 2144);
    v10 = *(v0 + 2120);
    v11 = *(v0 + 2112);
    v12 = __swift_project_value_buffer(v11, qword_E0E1F8);
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
    sub_15F84(v0 + 152, v0 + 288, &qword_E0EAA8);
    v18 = sub_AB4BA0();
    v19 = sub_AB9F50();
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
      sub_12E1C(v0 + 152, &qword_E0EAA8);
      v29 = sub_500C84(v26, v28, v101);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_0, v18, v19, "%{public}s: performing…", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);

      (*(v22 + 8))(v97, v23);
    }

    else
    {
      sub_12E1C(v0 + 152, &qword_E0EAA8);

      (*(v22 + 8))(v21, v23);
    }

    v30 = *(v0 + 2104);
    sub_13C80(0, &qword_E0E218);
    v31 = [objc_opt_self() mainRunLoop];
    v32 = sub_ABA930();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = sub_ABA730();

    sub_12E1C(v30, &qword_E0E210);
    *(v0 + 2072) = v33;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v34 = sub_AB54B0();

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
    sub_15F84(v0 + 424, v0 + 560, &qword_E0EAA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 2192) = sub_AB55C0();

    v98 = (v39 + *v39);
    v45 = swift_task_alloc();
    *(v0 + 2200) = v45;
    *v45 = v0;
    v45[1] = sub_63A858;

    return v98();
  }

  v47 = v7;
  v48 = v8;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 2152);
  v50 = *(v0 + 2120);
  v51 = *(v0 + 2112);
  v52 = __swift_project_value_buffer(v51, qword_E0E1F8);
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
  sub_15F84(v0 + 1512, v0 + 1648, &qword_E0EAA8);
  sub_502308(v47, v48);
  v57 = sub_AB4BA0();
  v58 = sub_AB9F30();
  sub_501D64(v47, v48);
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
    sub_12E1C(v0 + 1512, &qword_E0EAA8);
    v67 = sub_500C84(v64, v66, v101);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2082;
    *(v0 + 2056) = v47;
    *(v0 + 2064) = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v68 = sub_AB9350();
    v70 = sub_500C84(v68, v69, v101);

    *(v63 + 14) = v70;
    _os_log_impl(&dword_0, v57, v58, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v63, 0x16u);
    swift_arrayDestroy();

    (*(v61 + 8))(v99, v96);
  }

  else
  {
    sub_12E1C(v0 + 1512, &qword_E0EAA8);

    (*(v61 + 8))(v60, v62);
  }

  sub_50E914();
  swift_allocError();
  *v72 = v47;
  v72[1] = v48;
LABEL_31:
  swift_willThrow();

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_63A858()
{
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v2 = sub_63AD40;
  }

  else
  {
    v2 = sub_63A96C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_63A96C()
{
  v35 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2136);
  v4 = *(v0 + 2112);
  sub_AB5450();
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
  sub_15F84(v0 + 968, v0 + 1104, &qword_E0EAA8);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
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
    sub_12E1C(v0 + 968, &qword_E0EAA8);
    v19 = sub_500C84(v16, v18, &v34);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_500C84(0, 0xE000000000000000, &v34);
    _os_log_impl(&dword_0, v9, v10, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v13 + 8))(v33, v14);
  }

  else
  {
    sub_12E1C(v0 + 968, &qword_E0EAA8);

    (*(v13 + 8))(v12, v14);
  }

  v20 = *(v0 + 2096);
  v21 = sub_AB9990();
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
  sub_15F84(v0 + 1240, v0 + 1376, &qword_E0EAA8);
  sub_50D600(0, 0, v20, &unk_B1F450, v26);

  sub_12E1C(v20, &qword_E0E340);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_63AD40()
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
  sub_15F84(v0 + 696, v0 + 832, &qword_E0EAA8);
  swift_errorRetain();
  v9 = sub_AB4BA0();
  v10 = sub_AB9F30();

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
    sub_12E1C(v0 + 696, &qword_E0EAA8);
    v17 = sub_500C84(v14, v16, v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 2088) = v11;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v28);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 2128);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    sub_12E1C(v0 + 696, &qword_E0EAA8);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_63B058(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 72) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB0);
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
  v6 = sub_AB4BC0();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_63B268, 0, 0);
}

uint64_t sub_63B268()
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
    v64 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = __swift_project_value_buffer(v67, qword_E0E1F8);
        (*(v68 + 16))(v66, v71, v67);
        sub_15F84(v70, v69, &qword_E0EAB0);
        v72 = sub_AB4BA0();
        v73 = sub_AB9F30();
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
          sub_12E1C(v78, &qword_E0EAB0);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_500C84(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&dword_0, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v80);
        }

        else
        {
          sub_12E1C(*(v0 + 144), &qword_E0EAB0);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x8000000000B6A3F0;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = __swift_project_value_buffer(v6, qword_E0E1F8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_15F84(v9, v8, &qword_E0EAB0);
    v12 = sub_AB4BA0();
    v13 = sub_AB9F50();
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
      sub_12E1C(v18, &qword_E0EAB0);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_500C84(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v12, v13, "%{public}s: performing…", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    else
    {
      sub_12E1C(*(v0 + 128), &qword_E0EAB0);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_13C80(0, &qword_E0E218);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = sub_ABA930();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = sub_ABA730();

    sub_12E1C(v27, &qword_E0E210);
    *(v0 + 32) = v32;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v33 = sub_AB54B0();

    *(v0 + 40) = v33;
    sub_15F84(v29, v25, &qword_E0EAB0);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_36B0C(v25, v36 + v35, &qword_E0EAB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 232) = sub_AB55C0();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_63BD80;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = __swift_project_value_buffer(v42, qword_E0E1F8);
  (*(v43 + 16))(v41, v46, v42);
  sub_15F84(v45, v44, &qword_E0EAB0);

  v47 = sub_AB4BA0();
  v48 = sub_AB9F30();
  sub_501D64(v39, v40);
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
    sub_12E1C(v53, &qword_E0EAB0);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_500C84(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v61 = sub_AB9350();
    v63 = sub_500C84(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&dword_0, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_12E1C(*(v0 + 136), &qword_E0EAB0);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_50E914();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_63BD80()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_63C24C;
  }

  else
  {
    v2 = sub_63BE94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_63BE94()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_AB5450();
  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EAB0);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
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
    sub_12E1C(v13, &qword_E0EAB0);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_500C84(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_500C84(0, 0xE000000000000000, &v27);
    _os_log_impl(&dword_0, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(*(v0 + 112), &qword_E0EAB0);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = sub_AB9990();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_15F84(v22, v20, &qword_E0EAB0);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_36B0C(v20, v24 + ((v19 + 32) & ~v19), &qword_E0EAB0);
  sub_50D600(0, 0, v21, &unk_B1F400, v24);

  sub_12E1C(v21, &qword_E0E340);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_63C24C()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EAB0);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

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
    sub_12E1C(v12, &qword_E0EAB0);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_500C84(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_12E1C(v0[13], &qword_E0EAB0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_63C578(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 72) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB8);
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
  v6 = sub_AB4BC0();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_63C788, 0, 0);
}

uint64_t sub_63C788()
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
    v64 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = __swift_project_value_buffer(v67, qword_E0E1F8);
        (*(v68 + 16))(v66, v71, v67);
        sub_15F84(v70, v69, &qword_E0EAB8);
        v72 = sub_AB4BA0();
        v73 = sub_AB9F30();
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
          sub_12E1C(v78, &qword_E0EAB8);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_500C84(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&dword_0, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v80);
        }

        else
        {
          sub_12E1C(*(v0 + 144), &qword_E0EAB8);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x8000000000B6A3F0;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = __swift_project_value_buffer(v6, qword_E0E1F8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_15F84(v9, v8, &qword_E0EAB8);
    v12 = sub_AB4BA0();
    v13 = sub_AB9F50();
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
      sub_12E1C(v18, &qword_E0EAB8);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_500C84(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v12, v13, "%{public}s: performing…", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    else
    {
      sub_12E1C(*(v0 + 128), &qword_E0EAB8);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_13C80(0, &qword_E0E218);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = sub_ABA930();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = sub_ABA730();

    sub_12E1C(v27, &qword_E0E210);
    *(v0 + 32) = v32;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v33 = sub_AB54B0();

    *(v0 + 40) = v33;
    sub_15F84(v29, v25, &qword_E0EAB8);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_36B0C(v25, v36 + v35, &qword_E0EAB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 232) = sub_AB55C0();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_63D2A0;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = __swift_project_value_buffer(v42, qword_E0E1F8);
  (*(v43 + 16))(v41, v46, v42);
  sub_15F84(v45, v44, &qword_E0EAB8);

  v47 = sub_AB4BA0();
  v48 = sub_AB9F30();
  sub_501D64(v39, v40);
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
    sub_12E1C(v53, &qword_E0EAB8);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_500C84(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v61 = sub_AB9350();
    v63 = sub_500C84(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&dword_0, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_12E1C(*(v0 + 136), &qword_E0EAB8);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_50E914();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_63D2A0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_63D76C;
  }

  else
  {
    v2 = sub_63D3B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_63D3B4()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_AB5450();
  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EAB8);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
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
    sub_12E1C(v13, &qword_E0EAB8);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_500C84(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_500C84(0, 0xE000000000000000, &v27);
    _os_log_impl(&dword_0, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(*(v0 + 112), &qword_E0EAB8);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = sub_AB9990();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_15F84(v22, v20, &qword_E0EAB8);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_36B0C(v20, v24 + ((v19 + 32) & ~v19), &qword_E0EAB8);
  sub_50D600(0, 0, v21, &unk_B1F428, v24);

  sub_12E1C(v21, &qword_E0E340);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_63D76C()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EAB8);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

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
    sub_12E1C(v12, &qword_E0EAB8);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_500C84(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_12E1C(v0[13], &qword_E0EAB8);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_63DA98(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
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

  return _swift_task_switch(sub_63DC20, 0, 0);
}

uint64_t sub_63DC20()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
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
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EAE8);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
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
          sub_12E1C(v0 + 1472, &qword_E0EAE8);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EAE8);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
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
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EAE8);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
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
      sub_12E1C(v0 + 128, &qword_E0EAE8);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EAE8);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

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
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EAE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_63E7A8;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
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
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EAE8);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
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
    sub_12E1C(v0 + 1248, &qword_E0EAE8);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EAE8);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_63E7A8()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_63EC68;
  }

  else
  {
    v2 = sub_63E8BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_63E8BC()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EAE8);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EAE8);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EAE8);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EAE8);
  sub_50D600(0, 0, v19, &unk_B1F3B0, v24);

  sub_12E1C(v19, &qword_E0E340);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_63EC68()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EAE8);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EAE8);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EAE8);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_63EF78(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
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

  return _swift_task_switch(sub_63F100, 0, 0);
}

uint64_t sub_63F100()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
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
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EAF0);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
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
          sub_12E1C(v0 + 1472, &qword_E0EAF0);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EAF0);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
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
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EAF0);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
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
      sub_12E1C(v0 + 128, &qword_E0EAF0);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EAF0);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

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
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EAF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228);
    sub_36A00(&qword_E0E230, &qword_E0E228);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_63FC88;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
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
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EAF0);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
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
    sub_12E1C(v0 + 1248, &qword_E0EAF0);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EAF0);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}