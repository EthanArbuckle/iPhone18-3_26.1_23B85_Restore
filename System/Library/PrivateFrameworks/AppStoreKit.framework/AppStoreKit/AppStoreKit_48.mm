uint64_t get_enum_tag_for_layout_string_11AppStoreKit17LayerVisualEffectVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E17ABC28(uint64_t *a1, int a2)
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

uint64_t sub_1E17ABC70(uint64_t result, int a2, int a3)
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

uint64_t AchievementGroupView.Size.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

char *AchievementGroupView.init(visibleModel:showSecondCard:cardSize:)(uint64_t a1, int a2, char *a3)
{
  LODWORD(v163) = a2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9408);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v162 - v11;
  *&v3[OBJC_IVAR____TtC11AppStoreKit20AchievementGroupView_achievement] = 0;
  v13 = *a3;
  *&v3[OBJC_IVAR____TtC11AppStoreKit20AchievementGroupView_secondAchievement] = 0;
  *&v3[OBJC_IVAR____TtC11AppStoreKit20AchievementGroupView_angle] = 0x3FB1DF46A2529D39;
  v3[OBJC_IVAR____TtC11AppStoreKit20AchievementGroupView_cardSize] = v13;
  v170.receiver = v3;
  v170.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v170, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = sub_1E1AF05FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v165 = a1;
  v17(v12, a1, v15);
  v164 = v16;
  v18 = *(v16 + 56);
  v166 = v15;
  v18(v12, 0, 1, v15);
  sub_1E1AF067C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_allocWithZone(ObjCClassFromMetadata);
  v21 = v14;
  v22 = [v20 init];
  sub_1E17ACAE0(v12, v9);
  sub_1E1AF066C();
  sub_1E1AF064C();
  sub_1E1AF065C();
  sub_1E17ACB50(v12);
  v23 = v21;
  v24 = v22;
  v25 = v23;
  v26 = v24;
  v27 = v25;
  v28 = v26;
  [v27 addSubview_];
  [v28 measurementsWithFitting:v27 in:{0.0, 0.0}];
  [v28 setFrame_];
  v31 = [v27 traitCollection];
  v32 = sub_1E1AF698C();

  v33 = 1.0;
  if ((v32 & 1) == 0)
  {
    v33 = dbl_1E1B32978[v13];
  }

  if (v163)
  {

    v18(v12, 1, 1, v166);
    v34 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    sub_1E17ACAE0(v12, v9);
    sub_1E1AF066C();
    sub_1E1AF064C();
    sub_1E1AF065C();
    sub_1E17ACB50(v12);
    v35 = v34;
    [v35 measurementsWithFitting:v27 in:{0.0, 0.0}];
    [v35 setFrame_];
    [v27 insertSubview:v35 belowSubview:v28];
    v38 = [v27 traitCollection];

    v39 = sub_1E1AF697C();
    if (v39)
    {
      v40 = 1.0;
    }

    else
    {
      v40 = -1.0;
    }

    CGAffineTransformMakeRotation(&t1, v40 * 0.0698131701);
    tx = t1.tx;
    ty = t1.ty;
    v163 = *&t1.a;
    v162 = *&t1.c;
    CGAffineTransformMakeScale(&t1, v33, v33);
    v43 = *&t1.a;
    v44 = *&t1.c;
    v45 = *&t1.tx;
    *&t1.a = v163;
    *&t1.c = v162;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v43;
    *&t2.c = v44;
    *&t2.tx = v45;
    CGAffineTransformConcat(&v167, &t1, &t2);
    t1 = v167;
    [v28 setTransform_];

    CGAffineTransformMakeRotation(&t1, v40 * -0.0698131701);
    v46 = *&t1.tx;
    v163 = *&t1.a;
    v162 = *&t1.c;
    CGAffineTransformMakeScale(&t1, v33, v33);
    v47 = *&t1.a;
    v48 = *&t1.c;
    v49 = *&t1.tx;
    *&t1.a = v163;
    *&t1.c = v162;
    *&t1.tx = v46;
    *&t2.a = v47;
    *&t2.c = v48;
    *&t2.tx = v49;
    CGAffineTransformConcat(&v167, &t1, &t2);
    t1 = v167;
    [v35 setTransform_];
    [v28 transform];
    v50 = *&t1.tx;
    v163 = *&t1.a;
    v162 = *&t1.c;

    [v28 frame];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v171.origin.x = v52;
    v171.origin.y = v54;
    v171.size.width = v56;
    v171.size.height = v58;
    v59 = -CGRectGetMinX(v171);
    [v28 frame];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;

    v172.origin.x = v61;
    v172.origin.y = v63;
    v172.size.width = v65;
    v172.size.height = v67;
    MinY = CGRectGetMinY(v172);
    CGAffineTransformMakeTranslation(&t1, v59, -MinY);
    v69 = *&t1.a;
    v70 = *&t1.c;
    v71 = *&t1.tx;
    *&t1.a = v163;
    *&t1.c = v162;
    *&t1.tx = v50;
    *&t2.a = v69;
    *&t2.c = v70;
    *&t2.tx = v71;
    CGAffineTransformConcat(&v167, &t1, &t2);
    t1 = v167;
    [v28 setTransform_];

    [v35 transform];
    v72 = *&t1.tx;
    v163 = *&t1.a;
    v162 = *&t1.c;
    [v35 frame];
    v73 = -CGRectGetMinX(v173);
    [v35 frame];
    v74 = CGRectGetMinY(v174);
    CGAffineTransformMakeTranslation(&t1, v73, -v74);
    v75 = *&t1.a;
    v76 = *&t1.c;
    v77 = *&t1.tx;
    *&t1.a = v163;
    *&t1.c = v162;
    *&t1.tx = v72;
    *&t2.a = v75;
    *&t2.c = v76;
    *&t2.tx = v77;
    CGAffineTransformConcat(&v167, &t1, &t2);
    t1 = v167;
    [v35 setTransform_];
    v78 = [v28 layer];

    [v78 setAllowsEdgeAntialiasing_];
    v79 = [v28 layer];

    [v79 setShouldRasterize_];
    v80 = [v28 layer];

    v81 = [v27 traitCollection];
    [v81 displayScale];
    v83 = v82;

    [v80 setContentsScale_];
    v84 = [v28 layer];

    v85 = [v27 traitCollection];
    [v85 displayScale];
    v87 = v86;

    [v84 setRasterizationScale_];
    v88 = [v35 layer];
    [v88 setAllowsEdgeAntialiasing_];

    v89 = [v35 layer];
    v90 = v166;
    [v89 setShouldRasterize_];

    v91 = [v35 layer];
    v92 = [v27 traitCollection];

    [v92 displayScale];
    v94 = v93;

    [v91 setContentsScale_];
    v95 = [v35 layer];
    v96 = [v27 traitCollection];

    [v96 displayScale];
    v98 = v97;

    [v95 setRasterizationScale_];
    v99 = *&v27[OBJC_IVAR____TtC11AppStoreKit20AchievementGroupView_achievement];
    *&v27[OBJC_IVAR____TtC11AppStoreKit20AchievementGroupView_achievement] = v28;
    v100 = v28;

    v101 = *&v27[OBJC_IVAR____TtC11AppStoreKit20AchievementGroupView_secondAchievement];
    *&v27[OBJC_IVAR____TtC11AppStoreKit20AchievementGroupView_secondAchievement] = v35;
    v102 = v35;

    [v100 frame];
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;

    [v102 frame];
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v118 = v117;

    v175.origin.x = v104;
    v175.origin.y = v106;
    v175.size.width = v108;
    v175.size.height = v110;
    v181.origin.x = v112;
    v181.origin.y = v114;
    v181.size.width = v116;
    v181.size.height = v118;
    v176 = CGRectUnion(v175, v181);
    [v27 setFrame_];

    v119 = v27;
  }

  else
  {

    [v28 frame];
    v121 = v120;
    v123 = v122;
    v125 = v124;
    v127 = v126;

    v177.origin.x = v121;
    v177.origin.y = v123;
    v177.size.width = v125;
    v177.size.height = v127;
    v128 = round(v33 * CGRectGetWidth(v177));
    [v28 frame];
    v130 = v129;
    v132 = v131;
    v134 = v133;
    v136 = v135;

    v178.origin.x = v130;
    v178.origin.y = v132;
    v178.size.width = v134;
    v178.size.height = v136;
    [v27 setFrame_];

    v137 = *&v27[OBJC_IVAR____TtC11AppStoreKit20AchievementGroupView_achievement];
    *&v27[OBJC_IVAR____TtC11AppStoreKit20AchievementGroupView_achievement] = v28;
    v102 = v28;

    CGAffineTransformMakeScale(&t1, v33, v33);
    [v102 setTransform_];

    [v102 transform];
    v138 = t1.tx;
    v139 = t1.ty;
    v163 = *&t1.a;
    v162 = *&t1.c;

    [v102 frame];
    v141 = v140;
    v143 = v142;
    v145 = v144;
    v147 = v146;

    v179.origin.x = v141;
    v179.origin.y = v143;
    v179.size.width = v145;
    v179.size.height = v147;
    v148 = -CGRectGetMinX(v179);
    [v102 frame];
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v156 = v155;

    v180.origin.x = v150;
    v180.origin.y = v152;
    v180.size.width = v154;
    v180.size.height = v156;
    v157 = CGRectGetMinY(v180);
    CGAffineTransformMakeTranslation(&t1, v148, -v157);
    v158 = *&t1.a;
    v159 = *&t1.c;
    v160 = *&t1.tx;
    *&t1.a = v163;
    *&t1.c = v162;
    t1.tx = v138;
    t1.ty = v139;
    *&t2.a = v158;
    *&t2.c = v159;
    *&t2.tx = v160;
    CGAffineTransformConcat(&v167, &t1, &t2);
    t1 = v167;
    [v102 setTransform_];
    v119 = v102;
    v90 = v166;
  }

  (*(v164 + 8))(v165, v90);
  return v27;
}

uint64_t sub_1E17ACAE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9408);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E17ACB50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AchievementGroupView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AchievementGroupView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E17ACD48()
{
  result = qword_1ECEB9430;
  if (!qword_1ECEB9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9430);
  }

  return result;
}

uint64_t PrivacyCategoryLayout.Metrics.textLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t PrivacyCategoryLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t PrivacyCategoryLayout.Metrics.iconHorizontalCenterMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t PrivacyCategoryLayout.Metrics.dataTypesTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 136);

  return sub_1E1308EC0(a1, v1 + 136);
}

uint64_t PrivacyCategoryLayout.Metrics.dataTypesBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 176);

  return sub_1E1308EC0(a1, v1 + 176);
}

uint64_t PrivacyCategoryLayout.Metrics.bottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 216);

  return sub_1E1308EC0(a1, v1 + 216);
}

uint64_t PrivacyCategoryLayout.Metrics.init(textLeadingMargin:titleTopSpace:iconHorizontalCenterMargin:iconSize:dataTypesTopSpace:dataTypesBottomSpace:bottomMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  sub_1E1308EC0(a2, a7 + 40);
  sub_1E1308EC0(a1, a7);
  sub_1E1308EC0(a3, a7 + 80);
  *(a7 + 120) = a8;
  *(a7 + 128) = a9;
  sub_1E1308EC0(a4, a7 + 136);
  sub_1E1308EC0(a5, a7 + 176);

  return sub_1E1308EC0(a6, a7 + 216);
}

__n128 PrivacyCategoryLayout.init(metrics:iconView:titleLabel:dataTypesLabel:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[13];
  *(a5 + 192) = a1[12];
  *(a5 + 208) = v8;
  v9 = a1[15];
  *(a5 + 224) = a1[14];
  *(a5 + 240) = v9;
  v10 = a1[9];
  *(a5 + 128) = a1[8];
  *(a5 + 144) = v10;
  v11 = a1[11];
  *(a5 + 160) = a1[10];
  *(a5 + 176) = v11;
  v12 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v12;
  v13 = a1[7];
  *(a5 + 96) = a1[6];
  *(a5 + 112) = v13;
  v14 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v14;
  v15 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v15;
  sub_1E1308EC0(a2, a5 + 256);
  sub_1E1308EC0(a3, a5 + 296);
  result = *a4;
  v17 = *(a4 + 16);
  *(a5 + 336) = *a4;
  *(a5 + 352) = v17;
  *(a5 + 368) = *(a4 + 32);
  return result;
}

double static PrivacyCategoryLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1)
{
  v2 = sub_1E1AF162C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_1E1AF165C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 104))(v5, *MEMORY[0x1E69AB970], v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E1B03760;
  sub_1E1300B24(a1 + 40, v18);
  v12 = sub_1E1AF1A1C();
  v13 = MEMORY[0x1E69ABA90];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  __swift_allocate_boxed_opaque_existential_0((v11 + 32));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 136, v18);
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  __swift_allocate_boxed_opaque_existential_0((v11 + 72));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 216, v18);
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  __swift_allocate_boxed_opaque_existential_0((v11 + 112));
  sub_1E1AF1A2C();
  sub_1E1AF163C();
  sub_1E1AF161C();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  return v15;
}

double PrivacyCategoryLayout.measurements(fitting:in:)()
{
  v1 = v0;
  v2 = sub_1E1AF745C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_1E1AF6B5C();
  __swift_project_boxed_opaque_existential_1Tm(v1 + 37, v1[40]);
  sub_1E1AF11CC();
  v10 = v9;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v1[8]);
  sub_1E1AF12FC();
  v20[0] = v12;
  sub_1E1AF12CC();
  sub_1E15501AC((v0 + 42), &v18);
  if (v19)
  {
    sub_1E1308EC0(&v18, v20);
    __swift_project_boxed_opaque_existential_1Tm(v20, v21);
    if ((sub_1E1AF117C() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(v20, v21);
      if (sub_1E1AF112C())
      {
        __swift_project_boxed_opaque_existential_1Tm(v20, v21);
        sub_1E1AF11CC();
        v14 = v13;
        v16 = v15;
        __swift_project_boxed_opaque_existential_1Tm(v0 + 17, v0[20]);
        sub_1E1AF12FC();
        *&v18 = v16;
        sub_1E1AF12CC();
        __swift_project_boxed_opaque_existential_1Tm(v0 + 22, v0[25]);
        sub_1E13BC274();
        sub_1E1AF12DC();
        v8(v5, v2);
        if (v10 <= v14)
        {
          v10 = v14;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_1E1382094(&v18);
  }

  __swift_project_boxed_opaque_existential_1Tm(v0 + 27, v0[30]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v8(v5, v2);
  return v7 + v10 + 0.0;
}

uint64_t PrivacyCategoryLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_1E1AF745C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v15 = v14;
  v45 = v14;
  v16 = *(v11 + 8);
  v16(v13, v10);
  v52.origin.x = a1;
  v52.origin.y = a2;
  v52.size.width = a3;
  v46 = a4;
  v52.size.height = a4;
  v17 = CGRectGetWidth(v52) - v15;
  v53.origin.x = a1;
  v53.origin.y = a2;
  v53.size.width = a3;
  v53.size.height = a4;
  Height = CGRectGetHeight(v53);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 37, v5[40]);
  v38 = v17;
  v37 = Height;
  sub_1E1AF11CC();
  v20 = v19;
  v47 = v21;
  v23 = v22;
  __swift_project_boxed_opaque_existential_1Tm(v5 + 5, v5[8]);
  v44 = v20;
  v39 = v23;
  sub_1E1AF12FC();
  v25 = v24;
  v26 = a1;
  v54.origin.x = a1;
  v54.origin.y = a2;
  v27 = a3;
  v54.size.width = a3;
  v28 = v46;
  v54.size.height = v46;
  v29 = v45 + CGRectGetMinX(v54);
  v55.origin.x = v26;
  v55.origin.y = a2;
  v55.size.width = a3;
  v55.size.height = v28;
  v30 = v25 + CGRectGetMinY(v55);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 37, v5[40]);
  v40 = v26;
  v31 = a2;
  v32 = v27;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v41 = v4[16];
  v56.origin.x = v26;
  v56.origin.y = v31;
  v56.size.width = v27;
  v56.size.height = v28;
  CGRectGetMinX(v56);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 10, v5[13]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v16(v13, v10);
  v36 = v29;
  v57.origin.x = v29;
  v35 = v30;
  v57.origin.y = v30;
  v57.size.width = v44;
  v33 = v40;
  v57.size.height = v47;
  CGRectGetMidY(v57);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 32, v5[35]);
  v42 = v31;
  v43 = v32;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  sub_1E15501AC((v4 + 42), &v48);
  if (v49)
  {
    sub_1E1308EC0(&v48, v50);
    __swift_project_boxed_opaque_existential_1Tm(v50, v51);
    if ((sub_1E1AF117C() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(v50, v51);
      if (sub_1E1AF112C())
      {
        __swift_project_boxed_opaque_existential_1Tm(v50, v51);
        sub_1E1AF11CC();
        __swift_project_boxed_opaque_existential_1Tm(v4 + 17, v4[20]);
        sub_1E1AF12FC();
        v58.origin.x = v36;
        v58.origin.y = v35;
        v58.size.width = v44;
        v58.size.height = v47;
        CGRectGetMaxY(v58);
        v59.origin.x = v33;
        v59.origin.y = v42;
        v59.size.width = v43;
        v59.size.height = v46;
        CGRectGetMinX(v59);
        __swift_project_boxed_opaque_existential_1Tm(v50, v51);
        sub_1E1AF6B1C();
        sub_1E1AF116C();
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    sub_1E1382094(&v48);
  }

  return sub_1E1AF106C();
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1E17AE038(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E17AE080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 ASKBootstrapV2.init(bagProfile:bagOfflinePolicy:appStateControllerFactory:targetType:tokenServiceClient:processTreatmentNamespace:prerequisites:jetpackURL:languageSource:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, _BYTE *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 16);
  v17 = *a4;
  v18 = type metadata accessor for ASKBootstrapV2(0);
  v19 = &a8[v18[8]];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &a8[v18[9]];
  *v20 = 0;
  v20[1] = 0;
  v21 = v18[5];
  v22 = sub_1E1AF537C();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&a8[v21], a1, v22);
  v24 = &a8[v18[6]];
  *v24 = v14;
  *(v24 + 1) = v15;
  v24[16] = v16;
  *a8 = v17;
  sub_1E1300B24(a3, &a8[v18[7]]);
  v25 = [objc_opt_self() currentProcess];
  if (a7)
  {
    v26 = sub_1E1AF5DBC();
    [v25 setTreatmentNamespace_];
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  (*(v23 + 8))(a1, v22);
  *&a8[v18[10]] = v25;
  v27 = &a8[v18[11]];
  *v27 = a9;
  v27[1] = a10;
  v28 = &a8[v18[12]];
  *v28 = a5;
  v28[1] = a6;
  sub_1E13E23F8(a11, &a8[v18[13]]);
  v29 = &a8[v18[14]];
  result = *a12;
  v31 = *(a12 + 16);
  *v29 = *a12;
  *(v29 + 1) = v31;
  *(v29 + 4) = *(a12 + 32);
  return result;
}

uint64_t ASKBootstrapV2.TargetType.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t ASKBootstrapV2.bagProfile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ASKBootstrapV2(0) + 20);
  v4 = sub_1E1AF537C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 ASKBootstrapV2.bagOfflinePolicy.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ASKBootstrapV2(0) + 24));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1E17AE4B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ASKBootstrapV2(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E17B87A8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1E1300E34(v4);
}

uint64_t sub_1E17AE54C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E17B8770;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for ASKBootstrapV2(0) + 36));
  v8 = *v7;
  sub_1E1300E34(v3);
  result = sub_1E1300EA8(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ASKBootstrapV2.metricsRecorderProducer.getter()
{
  v1 = *(v0 + *(type metadata accessor for ASKBootstrapV2(0) + 36));
  sub_1E1300E34(v1);
  return v1;
}

id ASKBootstrapV2.process.getter()
{
  v1 = *(v0 + *(type metadata accessor for ASKBootstrapV2(0) + 40));

  return v1;
}

uint64_t sub_1E17AE670@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ASKBootstrapV2(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = &unk_1E1B32C50;
  a2[1] = v6;
}

uint64_t sub_1E17AE6F0(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1E17AE7E8;

  return v7(v4);
}

uint64_t sub_1E17AE7E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1E17AE8F8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for ASKBootstrapV2(0) + 44));

  *v6 = &unk_1E1B32C40;
  v6[1] = v5;
  return result;
}

uint64_t sub_1E17AE978(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1E17AEA78;

  return v5(v2 + 24, v2 + 16);
}

uint64_t sub_1E17AEA78()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = *(v3 + 8);

    return v7(v6);
  }
}

uint64_t ASKBootstrapV2.prerequisites.getter()
{
  v1 = *(v0 + *(type metadata accessor for ASKBootstrapV2(0) + 44));

  return v1;
}

uint64_t static ASKBootstrapV2.appStoreTokenServiceClient.getter()
{
  if (qword_1EE1F44F8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE1F4500;

  return v0;
}

uint64_t ASKBootstrapV2.withMetricsEventRecorder(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E1300E44(v2, a2);
  v5 = a2 + *(type metadata accessor for ASKBootstrapV2(0) + 32);

  return sub_1E17B8504(a1, v5);
}

uint64_t sub_1E17AECBC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_1E17AEF0C;
  }

  else
  {
    *(v4 + 248) = a1;
    v5 = sub_1E17AEDE4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E17AEDE4()
{
  v1 = v0[23];
  v0[22] = sub_1E17B8B70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9470);
  sub_1E1302CD4(&qword_1EE1E34D0, &unk_1ECEB9470);
  v2 = sub_1E1AF418C();

  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  *v1 = v2;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E17AEF0C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17AEF94()
{
  v1 = v0;
  v2 = type metadata accessor for ASKBootstrapV2(0);
  v3 = *(v2 - 8);
  v95 = v2 - 8;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1E1AF361C();
  v94 = *(v96 - 8);
  v6 = MEMORY[0x1EEE9AC00](v96);
  v107 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v129 = v93 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v128 = v93 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v106 = v93 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v127 = v93 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v126 = v93 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v105 = v93 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v104 = v93 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v103 = v93 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v125 = v93 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v124 = v93 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v123 = v93 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v122 = v93 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v121 = v93 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v120 = v93 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v119 = v93 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v118 = v93 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v117 = v93 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v116 = v93 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v115 = v93 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v114 = v93 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v113 = v93 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v112 = v93 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v111 = v93 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v109 = v93 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v108 = v93 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v110 = v93 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v62 = v93 - v61;
  v63 = MEMORY[0x1EEE9AC00](v60);
  v65 = v93 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v67 = v93 - v66;
  sub_1E13006E4(0, &qword_1EE1E3488);
  sub_1E1300E44(v0, v5);
  v68 = *(v3 + 80);
  v69 = (v68 + 16) & ~v68;
  v70 = swift_allocObject();
  sub_1E1302440(v5, v70 + v69);
  v100 = v67;
  sub_1E1AF35EC();
  type metadata accessor for ArtworkLoaderURLSession();
  sub_1E1300E44(v0, v5);
  v98 = v68;
  v97 = v69 + v4;
  v71 = swift_allocObject();
  v99 = v69;
  v72 = v5;
  sub_1E1302440(v5, v71 + v69);
  v101 = v65;
  sub_1E1AF35EC();
  sub_1E1AF59DC();
  v130 = sub_1E1AF59CC();
  v102 = v62;
  sub_1E1AF35FC();
  sub_1E13006E4(0, &qword_1EE1E3470);
  v130 = *(v0 + *(v95 + 48));
  v73 = v130;
  sub_1E1AF35FC();
  sub_1E13006E4(0, &qword_1EE1E3480);
  v130 = [objc_opt_self() ams_sharedAccountStore];
  sub_1E1AF35FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94A0);
  v74 = _s11AppStoreKit20NWPathNetworkInquiryCACycfC_0();
  v131 = type metadata accessor for NWPathNetworkInquiry();
  v132 = &protocol witness table for NWPathNetworkInquiry;
  v130 = v74;
  sub_1E1AF35FC();
  type metadata accessor for UserEngagementManager();
  if (qword_1EE1ECA60 != -1)
  {
    swift_once();
  }

  v130 = qword_1EE1ECA68;

  sub_1E1AF35FC();
  v130 = [objc_allocWithZone(type metadata accessor for JSTimeoutManager()) init];
  sub_1E1AF35FC();
  sub_1E13006E4(0, &qword_1EE1E3490);
  sub_1E1AF35EC();
  sub_1E1AF4DFC();
  sub_1E1AF35EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D70);
  sub_1E1300E44(v0, v72);
  v75 = swift_allocObject();
  v76 = v99;
  sub_1E1302440(v72, v75 + v99);
  sub_1E1AF35EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D60);
  sub_1E1300E44(v0, v72);
  v77 = swift_allocObject();
  sub_1E1302440(v72, v77 + v76);
  sub_1E1AF35EC();
  type metadata accessor for Restrictions();
  sub_1E1AF35EC();
  sub_1E1300E44(v0, v72);
  v78 = swift_allocObject();
  sub_1E1302440(v72, v78 + v76);
  MEMORY[0x1E68FC300](&type metadata for ASKPrerequisites, &unk_1E1B32C80, v78, &type metadata for ASKPrerequisites);
  v79 = type metadata accessor for JSService();
  sub_1E1300E44(v1, v72);
  v80 = swift_allocObject();
  sub_1E1302440(v72, v80 + v76);
  MEMORY[0x1E68FC300](v79, &unk_1E1B32C90, v80, v79);
  v81 = type metadata accessor for JSIntentDispatcher();
  MEMORY[0x1E68FC300](v81, &unk_1E1B32C98, 0, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
  sub_1E1300E44(v1, v72);
  v82 = swift_allocObject();
  sub_1E1302440(v72, v82 + v76);
  sub_1E1AF35EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9490);
  sub_1E1AF35EC();
  v83 = type metadata accessor for Commerce();
  MEMORY[0x1E68FC300](v83, &unk_1E1B32CA0, 0, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5648);
  sub_1E1AF35EC();
  type metadata accessor for MetricsIdStore();
  sub_1E1AF35EC();
  type metadata accessor for AppleSilicon();
  sub_1E1AF35EC();
  type metadata accessor for GameCenter();
  sub_1E1AF35EC();
  type metadata accessor for GameCenterFriendRequestCoordinator();
  sub_1E1AF35EC();
  type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  sub_1E1AF35EC();
  type metadata accessor for OnDeviceSearchHistoryManager();
  sub_1E1AF35EC();
  type metadata accessor for OnDevicePersonalizationDataManager();
  sub_1E1AF35EC();
  type metadata accessor for AdsService();
  v84 = swift_allocObject();
  type metadata accessor for AdProcessingPipelineProxy();
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  *(v85 + 24) = 0;
  *(v84 + 16) = v85;
  *(v84 + 24) = 0u;
  *(v84 + 40) = 0u;
  *(v84 + 56) = 0;
  v130 = v84;
  sub_1E1AF35FC();
  type metadata accessor for NetworkActivity();
  sub_1E1AF35EC();
  type metadata accessor for SheetEngagementManager();
  sub_1E1AF35EC();
  sub_1E1AF421C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94C0);
  v86 = v94;
  v87 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1E1B02CC0;
  v89 = v96;
  (*(v86 + 16))(v88 + v87, v100, v96);
  v98 = sub_1E1AF41AC();
  v97 = sub_1E1AF41CC();
  v95 = sub_1E1AF41CC();
  v93[19] = sub_1E1AF41CC();
  v93[18] = sub_1E1AF41CC();
  v93[17] = sub_1E1AF41CC();
  v93[16] = sub_1E1AF41CC();
  v93[15] = sub_1E1AF41CC();
  v93[14] = sub_1E1AF41CC();
  v93[13] = sub_1E1AF41CC();
  v93[12] = sub_1E1AF41CC();
  v93[11] = sub_1E1AF41CC();
  v93[10] = sub_1E1AF41CC();
  v93[9] = sub_1E1AF41CC();
  v93[8] = sub_1E1AF41CC();
  v93[7] = sub_1E1AF41CC();
  v93[6] = sub_1E1AF41CC();
  v93[5] = sub_1E1AF41CC();
  v93[4] = sub_1E1AF41CC();
  v93[3] = sub_1E1AF41CC();
  v93[2] = sub_1E1AF41CC();
  v93[1] = sub_1E1AF41CC();
  sub_1E1AF41CC();
  sub_1E1AF41CC();
  sub_1E1AF41CC();
  sub_1E1AF41CC();
  sub_1E1AF41CC();
  sub_1E1AF41CC();
  sub_1E1AF41CC();
  v90 = v107;
  v99 = sub_1E1AF41CC();

  v91 = *(v86 + 8);
  v91(v90, v89);
  v91(v129, v89);
  v91(v128, v89);
  v91(v106, v89);
  v91(v127, v89);
  v91(v126, v89);
  v91(v105, v89);
  v91(v104, v89);
  v91(v103, v89);
  v91(v125, v89);
  v91(v124, v89);
  v91(v123, v89);
  v91(v122, v89);
  v91(v121, v89);
  v91(v120, v89);
  v91(v119, v89);
  v91(v118, v89);
  v91(v117, v89);
  v91(v116, v89);
  v91(v115, v89);
  v91(v114, v89);
  v91(v113, v89);
  v91(v112, v89);
  v91(v111, v89);
  v91(v109, v89);
  v91(v108, v89);
  v91(v110, v89);
  v91(v102, v89);
  v91(v101, v89);
  v91(v100, v89);
  return v99;
}

uint64_t sub_1E17B0434()
{
  v0 = sub_1E1AF361C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  sub_1E1AF4F3C();
  sub_1E1AF35EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B8);
  sub_1E1AF35EC();
  sub_1E1AF430C();
  sub_1E1AF35EC();
  sub_1E1AF436C();
  sub_1E1AF35EC();
  sub_1E1AF421C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94C0);
  v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E1B02CC0;
  (*(v1 + 16))(v14 + v13, v12, v0);
  sub_1E1AF41AC();
  sub_1E1AF41CC();
  sub_1E1AF41CC();
  v15 = sub_1E1AF41CC();

  v16 = *(v1 + 8);
  v16(v4, v0);
  v16(v7, v0);
  v16(v10, v0);
  v16(v12, v0);
  return v15;
}

uint64_t sub_1E17B0738()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1E17B0934;
  }

  else
  {
    v2 = sub_1E17B084C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B084C()
{
  v1 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[7];

  (*(v3 + 32))(v5, v2, v4);
  *(v5 + *(type metadata accessor for InitialBag(0) + 20)) = 0;
  sub_1E130B348(v1, "CreateInitialBag");

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E17B0934()
{
  v1 = *(v0 + 128);

  sub_1E130B348(v1, "CreateInitialBag");

  v2 = *(v0 + 8);

  return v2();
}

id sub_1E17B09D8()
{
  v0 = sub_1E1AEFE6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F9658 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE1F9660;
  [qword_1EE1F9660 lock];
  if (qword_1EE1F9670 != -1)
  {
    swift_once();
  }

  v5 = off_1EE1E1910;
  if (off_1EE1E1910)
  {

    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    swift_beginAccess();
    v5[13] = v7;
    *(v5 + 112) = 0;
  }

  return [v4 unlock];
}

id sub_1E17B0B74()
{
  v0 = sub_1E1AEFE6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F9658 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE1F9660;
  [qword_1EE1F9660 lock];
  if (qword_1EE1F9670 != -1)
  {
    swift_once();
  }

  v5 = off_1EE1E1910;
  if (off_1EE1E1910)
  {

    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    swift_beginAccess();
    v5[11] = v7;
    *(v5 + 96) = 0;
  }

  return [v4 unlock];
}

uint64_t sub_1E17B0D10(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for InitialBag(0);
  v1[4] = swift_task_alloc();
  v2 = sub_1E1AF0F7C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E17B0E0C, 0, 0);
}

uint64_t sub_1E17B0E0C()
{
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v1, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v2 = sub_1E1AF0F8C();
  v3 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v2, v3, v5, "CreateBag", "", v4, 2u);
    MEMORY[0x1E6901640](v4, -1, -1);
  }

  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];

  (*(v9 + 16))(v6, v7, v8);
  sub_1E1AF0FEC();
  swift_allocObject();
  v0[9] = sub_1E1AF0FDC();
  (*(v9 + 8))(v7, v8);
  sub_1E1AF421C();
  v0[10] = sub_1E1AF41FC();
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_1E17B1010;
  v12 = v0[3];
  v11 = v0[4];

  return MEMORY[0x1EEE166D0](v11, v12, v12);
}

uint64_t sub_1E17B1010()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E17B1210;
  }

  else
  {
    v2 = sub_1E17B1124;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B1124()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[2];

  v4 = sub_1E1AF539C();
  (*(*(v4 - 8) + 32))(v3, v2, v4);
  sub_1E130B348(v1, "CreateBag");

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E17B1210()
{
  v1 = *(v0 + 72);

  sub_1E130B348(v1, "CreateBag");

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E17B12B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E1AF539C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for InitialBag(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E17B13B0, 0, 0);
}

uint64_t sub_1E17B13B0()
{
  v0[10] = sub_1E1AF421C();
  v0[11] = sub_1E1AF41FC();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1E17B1468;
  v3 = v0[8];
  v2 = v0[9];

  return MEMORY[0x1EEE166D0](v2, v3, v3);
}

uint64_t sub_1E17B1468()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E17B18B8;
  }

  else
  {

    v2 = sub_1E17B1584;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B1584()
{
  v1 = *(v0 + 72);
  *(v0 + 136) = *(v1 + *(*(v0 + 64) + 20));
  sub_1E17B97E0(v1);
  *(v0 + 112) = sub_1E1AF41FC();
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1E17B1648;
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);

  return MEMORY[0x1EEE166D0](v3, v4, v4);
}

uint64_t sub_1E17B1648()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1E17B1944;
  }

  else
  {

    v2 = sub_1E17B1764;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B1764()
{
  v14 = *(v0 + 136);
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  v13 = *(v0 + 16);
  v4 = *(*(v0 + 40) + 32);
  v4(v1, *(v0 + 56), v2);
  v5 = (v3 + *(type metadata accessor for ASKBootstrapV2(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  type metadata accessor for ASKBagContract();
  v9 = swift_allocObject();
  v4(v9 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag, v1, v2);
  *(v9 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag) = v14;
  v10 = v9 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
  *v10 = v6;
  *(v10 + 8) = v7;
  *(v10 + 16) = v8;
  *v13 = v9;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E17B18B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B1944()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B19D0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E1AF539C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1E1AF0F7C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E17B1AF8, 0, 0);
}

uint64_t sub_1E17B1AF8()
{
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v1, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v2 = sub_1E1AF0F8C();
  v3 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v2, v3, v5, "CreateJSPackageFetcher", "", v4, 2u);
    MEMORY[0x1E6901640](v4, -1, -1);
  }

  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  (*(v9 + 16))(v6, v7, v8);
  sub_1E1AF0FEC();
  swift_allocObject();
  v0[11] = sub_1E1AF0FDC();
  (*(v9 + 8))(v7, v8);
  sub_1E1AF421C();
  v0[12] = sub_1E1AF41FC();
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_1E17B1D00;
  v11 = v0[6];
  v12 = v0[4];

  return MEMORY[0x1EEE166D0](v11, v12, v12);
}

uint64_t sub_1E17B1D00()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1E17B20FC;
  }

  else
  {

    v2 = sub_1E17B1E1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B1E1C()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for ASKBootstrapV2(0);
  v3 = *&v1[*(v2 + 40)];
  *(v0 + 136) = *v1;
  v4 = *(v2 + 52);
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_1E17B1EEC;
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return sub_1E1307604(v7, v6, v3, (v0 + 136), &v1[v4]);
}

uint64_t sub_1E17B1EEC()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1E17B219C;
  }

  else
  {
    v5 = sub_1E17B205C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E17B205C()
{
  sub_1E130B348(*(v0 + 88), "CreateJSPackageFetcher");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B20FC()
{
  v1 = *(v0 + 88);

  sub_1E130B348(v1, "CreateJSPackageFetcher");

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E17B219C()
{
  sub_1E130B348(*(v0 + 88), "CreateJSPackageFetcher");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B2238(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for InitialBag(0);
  v1[4] = swift_task_alloc();
  v2 = sub_1E1AF539C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E17B2334, 0, 0);
}

uint64_t sub_1E17B2334()
{
  sub_1E1AF421C();
  v0[9] = sub_1E1AF41FC();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1E17B23E8;
  v3 = v0[3];
  v2 = v0[4];

  return MEMORY[0x1EEE166D0](v2, v3, v3);
}

uint64_t sub_1E17B23E8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1E17B2780;
  }

  else
  {

    v2 = sub_1E17B2504;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B2504()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v19 = v0[6];
  v20 = v0[2];
  v4 = *(v19 + 32);
  v4(v2);
  v5 = *(v19 + 16);
  v5(v1, v2, v3);
  v6 = v5;
  v18 = v5;
  type metadata accessor for ASKBagContract();
  v7 = swift_allocObject();
  (v4)(v7 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag, v1, v3);
  *(v7 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag) = 0;
  v8 = v7 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  sub_1E1AF4DFC();
  v6(v1, v2, v3);
  v9 = MetricsTopicProvider.currentMetricsTopic.getter();
  v11 = v10;
  v12 = sub_1E1497BA0(&unk_1F5C2DA50);
  sub_1E1455104(&unk_1F5C2DA70);
  MEMORY[0x1E68FDB10](v1, v9, v11, v12);

  sub_1E1AF4DDC();

  v18(v1, v2, v3);
  type metadata accessor for JSInvalidSignatureReporter();
  v13 = swift_allocObject();

  v15 = sub_1E17B8894(v14, v1, v13);

  (*(v19 + 8))(v2, v3);
  *v20 = v15;

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E17B2780()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B280C(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = sub_1E1AF539C();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v2[21] = *(v4 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E17B28E0, 0, 0);
}

uint64_t sub_1E17B28E0()
{
  sub_1E1AF421C();
  *(v0 + 192) = sub_1E1AF41FC();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94F0);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_1E17B29B0;

  return MEMORY[0x1EEE166D0](v0 + 16, v1, v1);
}

uint64_t sub_1E17B29B0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1E17B3078;
  }

  else
  {
    v2 = sub_1E17B2AC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B2AC4()
{
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
  v1 = off_1F5C58790;
  v2 = type metadata accessor for JSJetpackFetcher();
  v0[27] = v1(v2, &off_1F5C58770);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1E17B2BA8;
  v4 = v0[23];
  v5 = v0[19];

  return MEMORY[0x1EEE166D0](v4, v5, v5);
}

uint64_t sub_1E17B2BA8()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1E17B30EC;
  }

  else
  {
    v2 = sub_1E17B2CBC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B2CBC()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  sub_1E134FD1C(*(v0 + 144), v0 + 56, &qword_1ECEB8230);
  (*(v6 + 16))(v3, v2, v5);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v9 = *(v0 + 72);
  *(v8 + 16) = *(v0 + 56);
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 88);
  (*(v6 + 32))(v8 + v7, v3, v5);
  *(v8 + ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v10 = sub_1E1AF470C();
  v11 = MEMORY[0x1E69AB218];
  *(v0 + 120) = v10;
  *(v0 + 128) = v11;
  __swift_allocate_boxed_opaque_existential_0((v0 + 96));

  sub_1E1AF46FC();
  type metadata accessor for AppStoreLocalizerFactory();
  *(v0 + 240) = sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  *v12 = v0;
  v12[1] = sub_1E17B2E90;
  v13 = *(v0 + 136);

  return MEMORY[0x1EEE179B8](v13);
}

uint64_t sub_1E17B2E90()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1E17B3174;
  }

  else
  {
    v2 = sub_1E17B2FC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B2FC0()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E17B3078()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B30EC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B3174()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E17B3220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v34 = a5;
  v7 = sub_1E1AF539C();
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF356C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1E1AF4D3C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  sub_1E1300B24(a1, v33);
  sub_1E1AF357C();
  result = sub_1E1AF4D2C();
  if (!v5)
  {
    v20 = v27;
    v19 = v28;
    v21 = v29;
    v26[1] = 0;
    sub_1E134FD1C(v30, &v31, &qword_1ECEB8230);
    if (v32)
    {
      sub_1E1308EC0(&v31, v33);
    }

    else
    {
      (*(v20 + 16))(v9, v19, v7);
      v33[3] = sub_1E1AF461C();
      v33[4] = MEMORY[0x1E69AB1B0];
      __swift_allocate_boxed_opaque_existential_0(v33);
      sub_1E1AF460C();
      if (v32)
      {
        sub_1E1308058(&v31, &qword_1ECEB8230);
      }
    }

    (*(v12 + 16))(v14, v17, v11);
    sub_1E1300B24(v33, &v31);
    type metadata accessor for AppStoreLocalizerFactory();
    v22 = swift_allocObject();
    v23 = v22 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0;
    v24 = OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_localizerCache;
    v25 = sub_1E15A2418(MEMORY[0x1E69E7CC0]);
    (*(v12 + 8))(v17, v11);
    *(v22 + v24) = v25;
    (*(v12 + 32))(v22 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle, v14, v11);
    sub_1E1308EC0(&v31, v22 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_defaultLanguageSource);
    *(v22 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_objectGraph) = v21;

    result = __swift_destroy_boxed_opaque_existential_1(v33);
    *v34 = v22;
  }

  return result;
}

uint64_t sub_1E17B35A0(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v2[25] = v3;
  v2[26] = *(v3 + 64);
  v2[27] = swift_task_alloc();
  v4 = sub_1E1AF539C();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E17B36C0, 0, 0);
}

uint64_t sub_1E17B36C0()
{
  sub_1E1AF421C();
  v0[31] = sub_1E1AF41FC();
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_1E17B3778;
  v2 = v0[30];
  v3 = v0[28];

  return MEMORY[0x1EEE166D0](v2, v3, v3);
}

uint64_t sub_1E17B3778()
{
  v2 = *v1;
  *(v2 + 264) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E17B3FE4, 0, 0);
  }

  else
  {
    v3 = type metadata accessor for ASKBagContract();
    v4 = swift_task_alloc();
    *(v2 + 272) = v4;
    *v4 = v2;
    v4[1] = sub_1E17B3910;

    return MEMORY[0x1EEE166D0](v2 + 176, v3, v3);
  }
}

uint64_t sub_1E17B3910()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1E17B405C;
  }

  else
  {
    v2 = sub_1E17B3A24;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B3A24()
{
  v0[36] = v0[22];
  sub_1E1AF493C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94F0);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_1E17B3AF4;

  return MEMORY[0x1EEE166D0](v0 + 7, v1, v1);
}

uint64_t sub_1E17B3AF4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1E17B40F8;
  }

  else
  {
    v2 = sub_1E17B3C08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B3C08()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
  v6 = off_1F5C58780[0];
  v7 = type metadata accessor for JSJetpackFetcher();
  v6(v7, &off_1F5C58770);
  sub_1E1300E44(v4, v2);
  sub_1E1300B24(v0 + 16, v0 + 96);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_1E1302440(v2, v10 + v8);
  sub_1E1308EC0((v0 + 96), v10 + v9);
  *(v10 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v11 = sub_1E1AF470C();
  v12 = MEMORY[0x1E69AB218];
  *(v0 + 160) = v11;
  *(v0 + 168) = v12;
  __swift_allocate_boxed_opaque_existential_0((v0 + 136));

  sub_1E1AF46FC();
  sub_1E1AF496C();
  *(v0 + 312) = sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  v13 = swift_task_alloc();
  *(v0 + 320) = v13;
  *v13 = v0;
  v13[1] = sub_1E17B3DF4;
  v14 = *(v0 + 184);

  return MEMORY[0x1EEE179B8](v14);
}

uint64_t sub_1E17B3DF4()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1E17B41A8;
  }

  else
  {
    v2 = sub_1E17B3F24;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B3F24()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E17B3FE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B405C()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E17B40F8()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E17B41A8()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));

  v4 = v0[1];

  return v4();
}

void sub_1E17B4260(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  sub_1E17B4660(*a1, *(a1 + 8), v32);
  v28 = v32[2];
  v26 = v32[0];
  v27 = v32[3];
  v25 = v32[4];
  v29 = v32[5];
  sub_1E1300B24(a2, v32);
  if (qword_1EE1E2F88 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF532C();
  v9 = *(v6 + 8);
  v9(v8, v5);
  if (qword_1EE1E30A0 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF532C();
  v9(v8, v5);

  sub_1E1AF492C();
  sub_1E1AF491C();

  v10 = v29;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    *(inited + 32) = 0x746E6169726176;
    v12 = inited + 32;
    v13 = v25;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v13;
    *(inited + 56) = v10;
    sub_1E13017E4(inited);
    swift_setDeallocating();
    sub_1E1308058(v12, &unk_1ECEB9500);
    sub_1E1AF495C();
    v14 = [objc_opt_self() ams_sharedAccountStore];
    v15 = [v14 ams_localiTunesAccount];

    if (v15)
    {
      v16 = [v15 ams_storefront];

      if (v16)
      {
        v17 = sub_1E1AF5DFC();
        v19 = v18;

        v21 = sub_1E1AF494C();
        if (*v20)
        {
          v22 = v20;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = *v22;
          *v22 = 0x8000000000000000;
          sub_1E1598D2C(v17, v19, 0x6F726665726F7473, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
          *v22 = v31;
        }

        else
        {
        }

        v21(v32, 0);
      }
    }
  }
}

uint64_t sub_1E17B4660@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result;
  if (!a2)
  {
    v20 = 0;
    v21 = 0;
    v4 = 0xE900000000000029;
    v22 = 0x6E776F6E6B6E7528;
    v23 = result;
LABEL_18:
    *a3 = v22;
    a3[1] = v4;
    a3[2] = v3;
    a3[3] = v20;
    a3[4] = v23;
    a3[5] = v21;
    return result;
  }

  v4 = a2;
  v32 = a3;
  sub_1E13B8AA4();

  v5 = sub_1E1AF6EAC();
  v6 = *(v5 + 16);
  if (v6)
  {
    v30 = v3;
    v31 = v4;
    v33 = MEMORY[0x1E69E7CC0];
    result = sub_1E135C088(0, v6, 0);
    v7 = 0;
    v8 = v33;
    v9 = (v5 + 56);
    while (v7 < *(v5 + 16))
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;

      v14 = MEMORY[0x1E68FEBF0](v10, v11, v12, v13);
      v16 = v15;

      v18 = *(v33 + 16);
      v17 = *(v33 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1E135C088((v17 > 1), v18 + 1, 1);
      }

      ++v7;
      *(v33 + 16) = v18 + 1;
      v19 = v33 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v9 += 4;
      if (v6 == v7)
      {

        v3 = v30;
        v4 = v31;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v24 = *(v8 + 16);
  if (v24 < 3)
  {

    v20 = 0;
    v23 = 0;
    v21 = 0;
    v22 = v3;
    v3 = 0;
LABEL_17:
    a3 = v32;
    goto LABEL_18;
  }

  if (*(v8 + 16) < v24 - 2)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9510);
  sub_1E1302CD4(&qword_1EE1E2DA8, &qword_1ECEB9510);
  v22 = sub_1E1AF5D6C();
  v4 = v25;

  v26 = *(v8 + 16);
  if (v24 - 2 >= v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v24 <= v26)
  {
    v27 = 16 * v24;
    v28 = (v8 + 16 * v24);
    v3 = *v28;
    v20 = v28[1];
    v29 = v8 + 32 + v27;
    v23 = *(v29 - 16);
    v21 = *(v29 - 8);

    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1E17B4934@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for InitialBag(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF539C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF421C();
  sub_1E1AF41FC();
  sub_1E1AF416C();

  (*(v8 + 32))(v10, v6, v7);
  v11 = objc_opt_self();
  v12 = *(a1 + *(type metadata accessor for ASKBootstrapV2(0) + 40));
  v13 = [v11 ams:v12 configurationWithProcessInfo:sub_1E1AF527C() bag:?];
  swift_unknownObjectRelease();
  v14 = [objc_opt_self() minimalSessionUsing_];
  sub_1E1AF41FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D60);
  sub_1E1AF416C();

  v15 = [objc_allocWithZone(type metadata accessor for MediaAuthenticationProtocolHandler()) initWithTokenService_];
  swift_unknownObjectRelease();
  [v14 setProtocolHandler_];

  [v14 setResponseDecoder_];
  result = (*(v8 + 8))(v10, v7);
  *a2 = v14;
  return result;
}

uint64_t sub_1E17B4BC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for InitialBag(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF539C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF421C();
  sub_1E1AF41FC();
  sub_1E1AF416C();

  (*(v8 + 32))(v10, v6, v7);
  v11 = objc_opt_self();
  v12 = *(a1 + *(type metadata accessor for ASKBootstrapV2(0) + 40));
  v13 = [v11 ams:v12 configurationWithProcessInfo:sub_1E1AF527C() bag:?];
  swift_unknownObjectRelease();
  type metadata accessor for ArtworkLoaderURLSession();
  v14 = [swift_getObjCClassFromMetadata() minimalSessionUsing_];
  sub_1E173E1AC();

  result = (*(v8 + 8))(v10, v7);
  *a2 = v14;
  return result;
}

uint64_t sub_1E17B4DB8@<X0>(void *a1@<X8>)
{
  v2 = sub_1E1AF539C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF421C();
  sub_1E1AF41FC();
  sub_1E1AF416C();

  v6 = sub_1E1AF527C();
  (*(v3 + 8))(v5, v2);
  v7 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) initWithBag_];
  result = swift_unknownObjectRelease();
  *a1 = v7;
  return result;
}

uint64_t sub_1E17B4EE0@<X0>(uint64_t *a1@<X8>)
{
  v18 = a1;
  v1 = sub_1E1AF539C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  sub_1E1AF421C();
  v17[1] = sub_1E1AF41FC();
  sub_1E1AF416C();
  v8 = *(v2 + 16);
  v8(v5, v7, v1);
  type metadata accessor for ASKBagContract();
  v9 = swift_allocObject();
  (*(v2 + 32))(v9 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag, v5, v1);
  *(v9 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag) = 0;
  v10 = v9 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  sub_1E1AF4DFC();
  v8(v5, v7, v1);
  v19 = v9;
  v11 = MetricsTopicProvider.currentMetricsTopic.getter();
  v13 = v12;
  v14 = sub_1E1497BA0(&unk_1F5C2DA80);
  sub_1E1455104(&unk_1F5C2DAA0);
  MEMORY[0x1E68FDB10](v5, v11, v13, v14);

  v15 = sub_1E1AF4DDC();

  result = (*(v2 + 8))(v7, v1);
  *v18 = v15;
  return result;
}

uint64_t sub_1E17B5148@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1E1AF421C();
  sub_1E1AF41FC();
  v4 = sub_1E1AF4DFC();
  sub_1E1AF416C();
  v25[3] = v4;
  v25[4] = MEMORY[0x1E69AB370];
  v25[0] = v22;
  v5 = type metadata accessor for ASKBootstrapV2(0);
  sub_1E134FD1C(a1 + *(v5 + 32), v26, &qword_1ECEB9440);
  v6 = *(a1 + *(v5 + 36));
  if (v6)
  {

    sub_1E1AF41FC();
    v6(v27);
  }

  else
  {
    memset(v27, 0, sizeof(v27));
  }

  sub_1E134FD1C(v25, &v22, &qword_1ECEB9440);
  v18 = v22;
  v19 = v23;
  v20 = v24;
  if (*(&v23 + 1))
  {
    sub_1E1308EC0(&v18, v21);
    v7 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1E172E9B0(0, v7[2] + 1, 1, v7);
    }

    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1E172E9B0((v8 > 1), v9 + 1, 1, v7);
    }

    v7[2] = v9 + 1;
    sub_1E1308EC0(v21, &v7[5 * v9 + 4]);
  }

  else
  {
    sub_1E1308058(&v18, &qword_1ECEB9440);
    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1E134FD1C(v26, &v22, &qword_1ECEB9440);
  v18 = v22;
  v19 = v23;
  v20 = v24;
  if (*(&v23 + 1))
  {
    sub_1E1308EC0(&v18, v21);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1E172E9B0(0, v7[2] + 1, 1, v7);
    }

    v11 = v7[2];
    v10 = v7[3];
    if (v11 >= v10 >> 1)
    {
      v7 = sub_1E172E9B0((v10 > 1), v11 + 1, 1, v7);
    }

    v7[2] = v11 + 1;
    sub_1E1308EC0(v21, &v7[5 * v11 + 4]);
  }

  else
  {
    sub_1E1308058(&v18, &qword_1ECEB9440);
  }

  sub_1E134FD1C(v27, &v22, &qword_1ECEB9440);
  v18 = v22;
  v19 = v23;
  v20 = v24;
  if (*(&v23 + 1))
  {
    sub_1E1308EC0(&v18, v21);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1E172E9B0(0, v7[2] + 1, 1, v7);
    }

    v13 = v7[2];
    v12 = v7[3];
    if (v13 >= v12 >> 1)
    {
      v7 = sub_1E172E9B0((v12 > 1), v13 + 1, 1, v7);
    }

    v7[2] = v13 + 1;
    sub_1E1308EC0(v21, &v7[5 * v13 + 4]);
  }

  else
  {
    sub_1E1308058(&v18, &qword_1ECEB9440);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9440);
  swift_arrayDestroy();
  if (v7[2] == 1)
  {
    sub_1E1300B24((v7 + 4), v21);

    sub_1E1308EC0(v21, &v22);
    return sub_1E1308EC0(&v22, a2);
  }

  else
  {
    v15 = sub_1E1AF51BC();
    swift_allocObject();
    v16 = sub_1E1AF51AC();
    v17 = MEMORY[0x1E69AB488];
    a2[3] = v15;
    a2[4] = v17;

    *a2 = v16;
  }

  return result;
}

uint64_t sub_1E17B55A0@<X0>(void *a1@<X8>)
{
  v2 = sub_1E1AF539C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF421C();
  sub_1E1AF41FC();
  type metadata accessor for ASKBootstrapV2(0);
  sub_1E1AF416C();
  v6 = sub_1E1AF527C();
  (*(v3 + 8))(v5, v2);
  v7 = objc_allocWithZone(MEMORY[0x1E698C9E8]);
  v8 = sub_1E1AF5DBC();
  v9 = [v7 initWithClientIdentifier:v8 bag:v6];

  swift_unknownObjectRelease();
  sub_1E1AF59DC();
  sub_1E1AF416C();
  v10 = v14[1];
  v11 = objc_allocWithZone(type metadata accessor for PersonalizedMediaTokenService());
  v12 = sub_1E1982950(v9, v10);

  *a1 = v12;
  return result;
}

uint64_t sub_1E17B5750@<X0>(void *a1@<X8>)
{
  sub_1E1AF421C();
  sub_1E1AF41FC();
  sub_1E13006E4(0, &qword_1EE1E3480);
  sub_1E1AF416C();

  type metadata accessor for RestrictionsFetcher();
  v2 = swift_allocObject();
  *(v2 + 16) = v5;
  type metadata accessor for Restrictions();
  swift_allocObject();
  v3 = sub_1E15EBE90(v2);

  *a1 = v3;
  return result;
}

uint64_t sub_1E17B5810(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E17B5830, 0, 0);
}

uint64_t sub_1E17B5830()
{
  sub_1E1AF421C();
  *(v0 + 192) = sub_1E1AF41FC();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94F0);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_1E17B5900;

  return MEMORY[0x1EEE166D0](v0 + 16, v1, v1);
}

uint64_t sub_1E17B5900()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1E17B6044;
  }

  else
  {
    v2 = sub_1E17B5A14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B5A14()
{
  v1 = *(v0 + 184);
  sub_1E1300B24(v0 + 16, v0 + 56);
  v2 = *(v0 + 80);
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v6 = *v5;
  v7 = type metadata accessor for JSJetpackFetcher();
  *(v0 + 120) = v7;
  *(v0 + 128) = &off_1F5C58770;
  *(v0 + 96) = v6;
  type metadata accessor for JSPackageProvisioner();
  v8 = swift_allocObject();
  *(v0 + 216) = v8;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v7);
  v10 = *(v7 - 8);
  v11 = swift_task_alloc();
  (*(v10 + 16))(v11, v9, v7);
  v12 = *v11;
  *(v0 + 160) = v7;
  *(v0 + 168) = &off_1F5C58770;
  *(v0 + 136) = v12;
  sub_1E1308EC0((v0 + 136), v8 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  v13 = (v1 + *(type metadata accessor for ASKBootstrapV2(0) + 44));
  v17 = (*v13 + **v13);
  v14 = swift_task_alloc();
  *(v0 + 224) = v14;
  *v14 = v0;
  v14[1] = sub_1E17B5CB8;
  v15 = *(v0 + 192);

  return v17(v15);
}

uint64_t sub_1E17B5CB8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_1E17B60A8;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_1E17B5DE0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E17B5DE0()
{
  v0[31] = sub_1E1435FBC(v0[24], v0[30]);

  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_1E17B5E9C;
  v2 = v0[22];

  return MEMORY[0x1EEE179B8](v2);
}

uint64_t sub_1E17B5E9C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1E17B6120;
  }

  else
  {
    v2 = sub_1E17B5FCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B5FCC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B6044()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B60A8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B6120()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B6198(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = sub_1E1AF0F7C();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E17B6264, 0, 0);
}

uint64_t sub_1E17B6264()
{
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v1, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v2 = sub_1E1AF0F8C();
  v3 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v2, v3, v5, "JSService", "", v4, 2u);
    MEMORY[0x1E6901640](v4, -1, -1);
  }

  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[25];

  (*(v9 + 16))(v6, v7, v8);
  sub_1E1AF0FEC();
  swift_allocObject();
  v0[28] = sub_1E1AF0FDC();
  (*(v9 + 8))(v7, v8);
  v0[29] = sub_1E1AF421C();
  v0[30] = sub_1E1AF41FC();
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_1E17B6474;

  return MEMORY[0x1EEE166D0](v0 + 2, &type metadata for ASKPrerequisites, &type metadata for ASKPrerequisites);
}

uint64_t sub_1E17B6474()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1E17B66E0;
  }

  else
  {

    v2 = sub_1E17B6590;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B6590()
{
  v11 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 184);
  sub_1E17B92EC(v0 + 16, v0 + 96);
  v3 = sub_1E1AF41FC();
  v10[0] = *v2;
  type metadata accessor for JSService();
  swift_allocObject();
  v4 = sub_1E170E630((v0 + 96), v3, v10);
  if (v1)
  {
    sub_1E1712344(v0 + 16);
    sub_1E130B348(*(v0 + 224), "JSService");
  }

  else
  {
    v6 = v4;
    v7 = *(v0 + 224);
    v8 = *(v0 + 176);
    sub_1E1712344(v0 + 16);
    *v8 = v6;
    sub_1E130B348(v7, "JSService");
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E17B66E0()
{

  sub_1E130B348(*(v0 + 224), "JSService");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B679C()
{
  sub_1E1AF421C();
  v0[9] = sub_1E1AF41FC();
  v1 = type metadata accessor for JSService();
  v0[10] = v1;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1E17B6864;

  return MEMORY[0x1EEE166D0](v0 + 7, v1, v1);
}

uint64_t sub_1E17B6864()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E17B6AC4;
  }

  else
  {

    v2 = sub_1E17B6980;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B6980()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v0[5] = v1;
  v0[6] = &off_1F5C48208;
  v0[2] = v2;
  type metadata accessor for JSIntentDispatcher();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v1);
  v6 = *(v1 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v1);
  v8 = *v7;
  v4[5] = v1;
  v4[6] = &off_1F5C48208;
  v4[2] = v8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  *v3 = v4;
  v9 = v0[1];

  return v9();
}

uint64_t sub_1E17B6AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17B6B28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ASKBootstrapV2(0) + 28));
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_1E1AF421C();
  sub_1E1AF41FC();
  v5 = (*(v4 + 8))();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  return result;
}

void *sub_1E17B6BC4@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LegacyAppStoreInstallStateMonitor();
  swift_allocObject();
  result = sub_1E194F100();
  a1[3] = v2;
  a1[4] = &off_1F5C583A0;
  *a1 = result;
  return result;
}

uint64_t sub_1E17B6C3C()
{
  sub_1E1AF421C();
  *(v0 + 32) = sub_1E1AF41FC();
  v1 = type metadata accessor for JSIntentDispatcher();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1E17B6D00;

  return MEMORY[0x1EEE166D0](v0 + 16, v1, v1);
}

uint64_t sub_1E17B6D00()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1E17B6EB8;
  }

  else
  {
    v2 = sub_1E17B6E14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17B6E14()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  type metadata accessor for Commerce();
  swift_allocObject();
  v4 = sub_1E1618FF0(v1, v3);

  *v2 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E17B6EB8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E17B6F1C(uint64_t a1@<X8>)
{
  sub_1E1AF421C();
  sub_1E1AF41FC();
  type metadata accessor for AppleSilicon();
  sub_1E1AF416C();

  v2 = OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_isSupportEnabled;
  swift_beginAccess();
  v3 = v4[v2];
  *(a1 + 24) = &type metadata for PurchaseHistory;
  *(a1 + 32) = &protocol witness table for PurchaseHistory;
  PurchaseHistory.init(isAppleSiliconSupportEnabled:)(v3, a1);
}

uint64_t sub_1E17B6FC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  sub_1E1AF421C();
  sub_1E1AF41FC();
  sub_1E13006E4(0, &qword_1EE1E3480);
  sub_1E1AF416C();
  v5 = v13;
  sub_1E1AF41FC();
  type metadata accessor for ASKBagContract();
  sub_1E1AF416C();

  v6 = v13;
  type metadata accessor for MetricsIdStore();
  swift_allocObject();
  v7 = v5;

  v8 = sub_1E1608528(v7, v6);

  sub_1E1AF647C();
  v9 = sub_1E1AF649C();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  sub_1E14BE720(0, 0, v4, &unk_1E1B32CA8, v10);

  *a1 = v8;
  return result;
}

uint64_t sub_1E17B71B8@<X0>(void *a1@<X8>)
{
  sub_1E1AF421C();
  sub_1E1AF41FC();
  type metadata accessor for ASKBagContract();
  sub_1E1AF416C();

  v2 = type metadata accessor for AppleSilicon();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_isSupportEnabled] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB38]) initWithCondition_];
  *&v3[OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_rosettaAvailabilityConditionLock] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB71D8);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_isRosettaAvailableBox] = sub_1E14C51E8(0);
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_1E18884E8();

  *a1 = v5;
  return result;
}

uint64_t sub_1E17B72DC@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4920);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - v4;
  sub_1E1AF421C();
  sub_1E1AF41FC();
  type metadata accessor for ASKBagContract();
  sub_1E1AF416C();

  if (qword_1EE1E2E78 != -1)
  {
    swift_once();
  }

  sub_1E1AF52DC();
  sub_1E1AF532C();
  (*(v3 + 8))(v5, v2);
  v6 = v14;
  v7 = type metadata accessor for GameCenter();
  v8 = objc_allocWithZone(v7);
  type metadata accessor for GameCenterCache();
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94E0);
  *(v9 + 16) = sub_1E1AF588C();
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *&v8[OBJC_IVAR____TtC11AppStoreKit10GameCenter_cache] = v9;
  v13.receiver = v8;
  v13.super_class = v7;
  v10 = objc_msgSendSuper2(&v13, sel_init);

  *a1 = v10;
  return result;
}

id sub_1E17B74E4@<X0>(void *a1@<X8>)
{
  sub_1E1AF421C();
  sub_1E1AF41FC();
  type metadata accessor for ASKBagContract();
  sub_1E1AF416C();

  v2 = v8;
  v3 = type metadata accessor for GameCenterFriendRequestCoordinator();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_onFriendRequestCountDidUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *&v4[v5] = sub_1E1AF5BEC();
  *&v4[OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount] = 0;
  *&v4[OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_bag] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  result = objc_msgSendSuper2(&v7, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1E17B75D0@<X0>(void *a1@<X8>)
{
  sub_1E1AF421C();
  sub_1E1AF41FC();
  sub_1E13006E4(0, &qword_1EE1E3480);
  sub_1E1AF416C();
  v2 = v11;
  type metadata accessor for ASKBagContract();
  sub_1E1AF416C();
  v3 = v11;
  v4 = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_amsEngagement;
  *&v5[v6] = [objc_allocWithZone(MEMORY[0x1E698C8D8]) init];
  *&v5[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_activeStoreAccount] = 0;
  *&v5[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_accountStore] = v2;
  *&v5[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_bag] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = v2;

  v8 = objc_msgSendSuper2(&v10, sel_init);

  *a1 = v8;
  return result;
}

id sub_1E17B7704@<X0>(void *a1@<X8>)
{
  sub_1E1AF421C();
  sub_1E1AF41FC();
  type metadata accessor for ASKBagContract();
  sub_1E1AF416C();

  v2 = v10;
  v3 = type metadata accessor for OnDeviceSearchHistoryManager();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC11AppStoreKit28OnDeviceSearchHistoryManager_defaults;
  *&v4[v5] = [objc_opt_self() standardUserDefaults];
  v6 = &v4[OBJC_IVAR____TtC11AppStoreKit28OnDeviceSearchHistoryManager_searchHistoryDefaultsKey];
  strcpy(&v4[OBJC_IVAR____TtC11AppStoreKit28OnDeviceSearchHistoryManager_searchHistoryDefaultsKey], "searchHistory");
  *(v6 + 7) = -4864;
  *&v4[OBJC_IVAR____TtC11AppStoreKit28OnDeviceSearchHistoryManager_maxAllowed] = 30;
  v7 = OBJC_IVAR____TtC11AppStoreKit28OnDeviceSearchHistoryManager_onChange;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94C8);
  swift_allocObject();
  *&v4[v7] = sub_1E1AF5BEC();
  *&v4[OBJC_IVAR____TtC11AppStoreKit28OnDeviceSearchHistoryManager_bag] = v2;
  v9.receiver = v4;
  v9.super_class = v3;
  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1E17B784C@<X0>(void *a1@<X8>)
{
  sub_1E1AF421C();
  sub_1E1AF41FC();
  sub_1E13006E4(0, &qword_1EE1E3480);
  sub_1E1AF416C();
  type metadata accessor for ASKBagContract();
  sub_1E1AF416C();
  v2 = objc_allocWithZone(type metadata accessor for OnDevicePersonalizationDataManager());
  v3 = OnDevicePersonalizationDataManager.init(accountStore:bag:)(v5, v5);

  *a1 = v3;
  return result;
}

uint64_t sub_1E17B7904@<X0>(void *a1@<X8>)
{
  type metadata accessor for NetworkActivity();
  v2 = swift_allocObject();
  v2[2] = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
  v2[4] = 0;
  swift_unknownObjectWeakInit();
  v3 = sub_1E13006E4(0, &qword_1EE1E3430);
  result = sub_1E1AF68EC();
  v5 = MEMORY[0x1E69AB720];
  v2[8] = v3;
  v2[9] = v5;
  v2[5] = result;
  v2[10] = 0;
  *a1 = v2;
  return result;
}

uint64_t sub_1E17B79A8@<X0>(void *a1@<X8>)
{
  sub_1E1AF421C();
  sub_1E1AF41FC();
  v2 = objc_allocWithZone(type metadata accessor for SheetEngagementManager());
  v3 = sub_1E15A3220();

  *a1 = v3;
  return result;
}

uint64_t sub_1E17B7A0C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29 - v2;
  v4 = sub_1E1AF4F3C();
  v30 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = sub_1E1AF539C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  sub_1E1AF421C();
  v17 = sub_1E1AF41FC();
  sub_1E1AF416C();
  type metadata accessor for ASKBagContract();
  sub_1E1AF416C();
  v33 = v16;
  v34 = v11;
  (*(v11 + 16))(v14, v16, v10);
  v18 = [objc_opt_self() ams_sharedAccountStore];
  v39 = sub_1E13006E4(0, &qword_1EE1E3480);
  v40 = MEMORY[0x1E69AB718];
  v38[0] = v18;
  v19 = [objc_opt_self() mainBundle];
  sub_1E1AF4F2C();
  v20 = v30;
  (*(v30 + 16))(v9, v7, v4);
  v35 = v9;
  sub_1E1A38EAC(v17);
  v21 = *(v20 + 8);
  v36 = v4;
  v21(v7, v4);
  if (qword_1EE1E2F68 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  v22 = v32;
  sub_1E1AF532C();
  (*(v31 + 8))(v3, v22);
  if (v38[0])
  {
    (*(v34 + 8))(v33, v10);

    return (*(v20 + 32))(v37, v35, v36);
  }

  else
  {
    v39 = type metadata accessor for UniversalFieldsProvider();
    v40 = sub_1E1302B24(qword_1EE1EBC20, type metadata accessor for UniversalFieldsProvider);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
    v25 = *MEMORY[0x1E69AB4E0];
    v26 = sub_1E1AF524C();
    (*(*(v26 - 8) + 104))(boxed_opaque_existential_0, v25, v26);
    if (qword_1ECEB10C0 != -1)
    {
      swift_once();
    }

    v27 = sub_1E1AF51EC();
    __swift_project_value_buffer(v27, qword_1EE1E3868);
    v28 = v35;
    sub_1E1AF4F1C();

    v21(v28, v36);
    (*(v34 + 8))(v33, v10);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }
}

unint64_t sub_1E17B7F4C@<X0>(uint64_t *a1@<X8>)
{
  sub_1E1AF421C();
  v2 = sub_1E1AF41FC();
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF416C();
  a1[3] = &type metadata for JSMetricsEventLinter;
  result = sub_1E17B8E28();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E17B7FC0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = sub_1E1AF4F3C();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E1AF430C();
  v35 = *(v30 - 8);
  v2 = MEMORY[0x1EEE9AC00](v30);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v26 - v4;
  v5 = sub_1E1AF539C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  sub_1E1AF421C();
  sub_1E1AF41FC();
  sub_1E1AF416C();
  v15 = *(v6 + 16);
  v27 = v14;
  v15(v12, v14, v5);
  type metadata accessor for ASKBagContract();
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag, v12, v5);
  v17 = v16 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B8);
  sub_1E1AF416C();
  v15(v9, v14, v5);
  sub_1E1300B24(v37, v36);
  sub_1E1497BA0(&unk_1F5C2DAE0);
  sub_1E1455104(&unk_1F5C2DB00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D70);
  sub_1E1AF416C();
  v18 = v28;
  sub_1E1AF42FC();
  sub_1E165FFC4();
  v19 = v29;
  sub_1E1AF42EC();
  v20 = *(v35 + 8);
  v35 += 8;
  v21 = v30;
  v20(v18, v30);
  v23 = v31;
  v22 = v32;
  sub_1E1AF416C();
  sub_1E1AF42DC();
  swift_setDeallocating();
  v24 = *(v6 + 8);
  v24(v16 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag, v5);
  swift_deallocClassInstance();

  (*(v34 + 8))(v23, v22);
  v20(v19, v21);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return (v24)(v27, v5);
}

uint64_t sub_1E17B8454()
{
  v0 = sub_1E1AF430C();
  MEMORY[0x1EEE9AC00](v0);
  sub_1E1AF421C();
  sub_1E1AF41FC();
  sub_1E1AF416C();

  return sub_1E1AF432C();
}

uint64_t sub_1E17B8504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9440);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E17B8578()
{
  result = qword_1ECEB9448;
  if (!qword_1ECEB9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9448);
  }

  return result;
}

uint64_t sub_1E17B85F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E13B27F4;

  return sub_1E17AE978(a1, v4);
}

uint64_t sub_1E17B86A8(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E130B5D8;

  return sub_1E17AE6F0(a1, a2, v6);
}

uint64_t sub_1E17B8770(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1E17B8894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[3] = sub_1E1AF4DFC();
  v22[4] = MEMORY[0x1E69AB370];
  v22[0] = a1;
  *(a3 + 32) = 0u;
  *(a3 + 16) = 0u;
  sub_1E1AEFE9C();
  v10 = sub_1E1AEFE7C();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  *(a3 + 88) = v10;
  *(a3 + 96) = v12;
  sub_1E1300B24(v22, a3 + 48);
  v13 = [objc_opt_self() defaultCenter];

  v14 = sub_1E1AF69FC();
  [v13 addObserver:a3 selector:sel_signatureVerificationFailed_ name:v14 object:0];

  v15 = [objc_opt_self() sharedCoordinator];
  aBlock[4] = sub_1E17B96FC;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_122_0;
  v16 = _Block_copy(aBlock);

  v17 = [v15 registerCleanupHandler_];
  _Block_release(v16);

  sub_1E1AF6EBC();
  swift_unknownObjectRelease();
  v18 = sub_1E1AF539C();
  (*(*(v18 - 8) + 8))(a2, v18);
  __swift_destroy_boxed_opaque_existential_1(v22);
  swift_beginAccess();
  sub_1E137F818(aBlock, a3 + 16);
  swift_endAccess();
  return a3;
}

char *sub_1E17B8B70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B32B50;
  *(inited + 32) = sub_1E13006E4(0, &qword_1EE1E3488);
  *(inited + 40) = type metadata accessor for ArtworkLoaderURLSession();
  *(inited + 48) = sub_1E13006E4(0, &qword_1EE1E3470);
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D60);
  *(inited + 64) = sub_1E13006E4(0, &qword_1EE1E3480);
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9490);
  *(inited + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5648);
  *(inited + 88) = type metadata accessor for AppleSilicon();
  *(inited + 96) = sub_1E1AF539C();
  *(inited + 104) = type metadata accessor for NetworkActivity();
  *(inited + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94A0);
  *(inited + 120) = sub_1E1AF436C();
  *(inited + 128) = sub_1E13006E4(0, &qword_1EE1E3490);
  *(inited + 136) = sub_1E1AF4DFC();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D70);
  *(inited + 152) = sub_1E1AF4F3C();
  *(inited + 160) = sub_1E1AF430C();
  *(inited + 168) = type metadata accessor for ASKBagContract();
  *(inited + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
  *(inited + 184) = sub_1E1AF4F6C();
  *(inited + 192) = type metadata accessor for Commerce();
  *(inited + 200) = type metadata accessor for Restrictions();
  *(inited + 208) = type metadata accessor for GameCenter();
  *(inited + 216) = type metadata accessor for GameCenterFriendRequestCoordinator();
  *(inited + 224) = type metadata accessor for UserEngagementManager();
  *(inited + 232) = type metadata accessor for JSInvalidSignatureReporter();
  *(inited + 240) = type metadata accessor for AdsService();
  *(inited + 248) = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  *(inited + 256) = type metadata accessor for OnDeviceSearchHistoryManager();
  *(inited + 264) = type metadata accessor for OnDevicePersonalizationDataManager();
  *(inited + 272) = type metadata accessor for JSIntentDispatcher();
  *(inited + 280) = type metadata accessor for MetricsIdStore();
  v1 = type metadata accessor for SheetEngagementManager();
  result = sub_1E172F00C(1, 33, 1, inited);
  *(result + 2) = 33;
  *(result + 36) = v1;
  return result;
}

unint64_t sub_1E17B8E28()
{
  result = qword_1EE1ED920;
  if (!qword_1EE1ED920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1ED920);
  }

  return result;
}

uint64_t sub_1E17B8EAC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1E17B8F30@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E17B5148(v4, a1);
}

uint64_t sub_1E17B8FA0@<X0>(void *a1@<X8>)
{
  type metadata accessor for ASKBootstrapV2(0);

  return sub_1E17B55A0(a1);
}

uint64_t sub_1E17B9010(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E130B5D8;

  return sub_1E17B5810(a1, v1 + v5);
}

uint64_t sub_1E17B90EC(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E130B5D8;

  return sub_1E17B6198(a1, v1 + v5);
}

uint64_t sub_1E17B91C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E17B6B28(v4, a1);
}

uint64_t sub_1E17B9238(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E130B5DC;

  return sub_1E1604D38(a1, v4, v5, v6);
}

uint64_t sub_1E17B9348(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E130B5D8;

  return sub_1E17B19D0(a1, v1 + v5);
}

uint64_t sub_1E17B9424(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E130B5D8;

  return sub_1E17B280C(a1, v1 + 16);
}

uint64_t sub_1E17B94C0(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E130B5D8;

  return sub_1E17B35A0(a1, v1 + v5);
}

uint64_t sub_1E17B9650@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1E1AF539C() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  return sub_1E17B3220(a1, v2 + 16, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_1E17B9704(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E130B5D8;

  return sub_1E17B12B4(a1, v1 + v5);
}

uint64_t sub_1E17B97E0(uint64_t a1)
{
  v2 = type metadata accessor for InitialBag(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArcadeFooterLayout.ButtonLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t ArcadeFooterLayout.__allocating_init(metrics:riverView:wordmarkView:buttonView:footnoteView:)(const void *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  memcpy((v10 + 16), a1, 0x250uLL);
  sub_1E1308EC0(a2, v10 + 608);
  sub_1E1308EC0(a3, v10 + 648);
  sub_1E1308EC0(a4, v10 + 688);
  v11 = *(a5 + 16);
  *(v10 + 728) = *a5;
  *(v10 + 744) = v11;
  *(v10 + 760) = *(a5 + 32);
  return v10;
}

uint64_t ArcadeFooterLayout.init(metrics:riverView:wordmarkView:buttonView:footnoteView:)(void *__src, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  memcpy((v5 + 16), __src, 0x250uLL);
  sub_1E1308EC0(a2, v5 + 608);
  sub_1E1308EC0(a3, v5 + 648);
  sub_1E1308EC0(a4, v5 + 688);
  v10 = *(a5 + 16);
  *(v5 + 728) = *a5;
  *(v5 + 744) = v10;
  *(v5 + 760) = *(a5 + 32);
  return v5;
}

uint64_t sub_1E17B9A24(uint64_t a1, uint64_t *a2)
{
  sub_1E17B9AC8(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  sub_1E17B9B50(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_1E17B9B00(uint64_t a1)
{
  swift_beginAccess();
  sub_1E17B9B50(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t ArcadeFooterLayout.Metrics.init(iconSize:iconSpacing:iconRowCount:firstIconHorizontalOffset:wordmarkTopMargin:wordmarkHeight:buttonLocation:buttonTopMargin:buttonBottomMargin:buttonViewTopSpace:buttonViewBottomSpace:buttonMinWidth:buttonPreferredEdgeInsets:footnoteTopSpace:footnoteBottomSpace:footnoteSpaceMultiplier:layoutMargins:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, __int128 *a17, __int128 *a18, uint64_t a19, uint64_t a20, __int128 *a21, __int128 *a22, __int128 *a23)
{
  v32 = *a7;
  *(a9 + 392) = 0;
  *(a9 + 360) = 0u;
  *(a9 + 376) = 0u;
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_1E1308EC0(a1, a9 + 16);
  *(a9 + 56) = a2;
  *(a9 + 64) = a3 & 1;
  sub_1E1308EC0(a4, a9 + 72);
  sub_1E1308EC0(a5, a9 + 112);
  sub_1E1308EC0(a6, a9 + 152);
  *(a9 + 192) = v32;
  sub_1E1308EC0(a8, a9 + 200);
  sub_1E1308EC0(a16, a9 + 240);
  sub_1E1308EC0(a17, a9 + 280);
  sub_1E1308EC0(a18, a9 + 320);
  sub_1E13BC4E4(a19, a9 + 360);
  v33 = *(a20 + 16);
  *(a9 + 400) = *a20;
  *(a9 + 416) = v33;
  *(a9 + 432) = *(a20 + 32);
  sub_1E1308EC0(a21, a9 + 440);
  sub_1E1308EC0(a22, a9 + 480);
  result = sub_1E1308EC0(a23, a9 + 520);
  *(a9 + 560) = a12;
  *(a9 + 568) = a13;
  *(a9 + 576) = a14;
  *(a9 + 584) = a15;
  return result;
}

uint64_t ArcadeFooterLayout.Metrics.iconSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_1E1308EC0(a1, v1 + 16);
}

uint64_t ArcadeFooterLayout.Metrics.iconRowCount.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t ArcadeFooterLayout.Metrics.firstIconHorizontalOffset.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 72);

  return sub_1E1308EC0(a1, v1 + 72);
}

uint64_t ArcadeFooterLayout.Metrics.wordmarkTopMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 112);

  return sub_1E1308EC0(a1, v1 + 112);
}

uint64_t ArcadeFooterLayout.Metrics.wordmarkHeight.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 152);

  return sub_1E1308EC0(a1, v1 + 152);
}

uint64_t ArcadeFooterLayout.Metrics.buttonTopMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 200);

  return sub_1E1308EC0(a1, v1 + 200);
}

uint64_t ArcadeFooterLayout.Metrics.buttonBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 240);

  return sub_1E1308EC0(a1, v1 + 240);
}

uint64_t ArcadeFooterLayout.Metrics.buttonViewTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 280);

  return sub_1E1308EC0(a1, v1 + 280);
}

uint64_t ArcadeFooterLayout.Metrics.buttonViewBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 320);

  return sub_1E1308EC0(a1, v1 + 320);
}

__n128 ArcadeFooterLayout.Metrics.buttonPreferredEdgeInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 432);
  result = *(v1 + 400);
  v4 = *(v1 + 416);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ArcadeFooterLayout.Metrics.buttonPreferredEdgeInsets.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 400) = *a1;
  *(v1 + 416) = v3;
  *(v1 + 432) = *(a1 + 32);
  return result;
}

uint64_t ArcadeFooterLayout.Metrics.footnoteTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 440);

  return sub_1E1308EC0(a1, v1 + 440);
}

uint64_t ArcadeFooterLayout.Metrics.footnoteBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 480);

  return sub_1E1308EC0(a1, v1 + 480);
}

uint64_t ArcadeFooterLayout.Metrics.footnoteSpaceMultiplier.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 520);

  return sub_1E1308EC0(a1, v1 + 520);
}

void ArcadeFooterLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[70] = a1;
  v4[71] = a2;
  v4[72] = a3;
  v4[73] = a4;
}

uint64_t sub_1E17BA35C@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v6 = v5;
  v64 = a1;
  v11 = sub_1E1AF1D6C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF745C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1E1AF6B0C();
  x = v76.origin.x;
  y = v76.origin.y;
  width = v76.size.width;
  height = v76.size.height;
  MaxY = CGRectGetMaxY(v76);
  v77.origin.x = a2;
  v77.origin.y = a3;
  v77.size.width = a4;
  v77.size.height = a5;
  MinX = CGRectGetMinX(v77);
  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = width;
  v78.size.height = height;
  MinY = CGRectGetMinY(v78);
  v65 = a2;
  v66 = a3;
  v79.origin.x = a2;
  v79.origin.y = a3;
  v67 = a4;
  v68 = a5;
  v79.size.width = a4;
  v79.size.height = a5;
  v61 = CGRectGetWidth(v79);
  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  v21 = CGRectGetHeight(v80);
  sub_1E134FD1C(v5 + 728, &v74, &qword_1ECEB4E00);
  if (v75)
  {
    sub_1E1308EC0(&v74, v71);
    __swift_project_boxed_opaque_existential_1Tm(v71, v72);
    sub_1E1AF11DC();
    v23 = v22;
    __swift_project_boxed_opaque_existential_1Tm(v71, v72);
    v81.origin.x = x;
    v81.origin.y = y;
    v81.size.width = width;
    v81.size.height = height;
    CGRectGetMinX(v81);
    v82.origin.x = x;
    v82.origin.y = y;
    v82.size.width = width;
    v82.size.height = height;
    CGRectGetMaxY(v82);
    v83.origin.x = x;
    v83.origin.y = y;
    v83.size.width = width;
    v83.size.height = height;
    CGRectGetWidth(v83);
    sub_1E1AF116C();
    __swift_project_boxed_opaque_existential_1Tm(v71, v72);
    sub_1E1AF115C();
    v24 = CGRectGetMinY(v84);
    v21 = v21 - v23;
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_1E14F60F8(&v74);
    v24 = MaxY;
  }

  MaxY = v24;
  sub_1E1300B24(v5 + 296, v71);
  __swift_project_boxed_opaque_existential_1Tm(v71, v72);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v26 = v25;
  v27 = *(v14 + 8);
  v27(v16, v13);
  sub_1E1300B24(v5 + 336, &v74);
  __swift_project_boxed_opaque_existential_1Tm(&v74, v75);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v29 = v28;
  v27(v16, v13);
  __swift_destroy_boxed_opaque_existential_1(&v74);
  __swift_destroy_boxed_opaque_existential_1(v71);
  sub_1E17B9AC8(v5 + 16, v71);
  if (v73[3])
  {
    sub_1E1300B24(v73, &v74);
    sub_1E17BB498(v71);
    __swift_project_boxed_opaque_existential_1Tm(&v74, v75);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v31 = v30;
    v27(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(&v74);
  }

  else
  {
    sub_1E17BB498(v71);
    v31 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1Tm((v5 + 688), *(v5 + 712));
  sub_1E1AF11DC();
  if (v31 <= v32)
  {
    v31 = v32;
  }

  if ((*(v5 + 448) & 1) == 0)
  {
    v33 = *(v5 + 424);
    v34 = (v31 - v32) * 0.5;
    if (v34 < v33)
    {
      v31 = v31 + v33 - v34 + v33 - v34;
    }
  }

  v59 = v26 + v29;
  v60 = v21;
  v85.origin.x = x;
  v85.origin.y = y;
  v85.size.width = width;
  v85.size.height = height;
  v35 = CGRectGetWidth(v85);
  if (v31 >= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = v31;
  }

  __swift_project_boxed_opaque_existential_1Tm((v5 + 648), *(v5 + 672));
  sub_1E1AF11DC();
  v38 = v37;
  v70 = v39;
  v40 = *(v5 + 208);
  v86.origin.x = x;
  v86.origin.y = y;
  v86.size.width = width;
  v86.size.height = height;
  MidX = CGRectGetMidX(v86);
  if (v40 == 1)
  {
    v56 = MidX - v36 * 0.5;
    v57 = v36;
    v42 = y;
    v43 = v59;
    v44 = MaxY - v59;
    sub_1E1300B24((v6 + 32), v71);
    __swift_project_boxed_opaque_existential_1Tm(v71, v72);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v46 = v45;
    v27(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v87.origin.x = x;
    v87.origin.y = v42;
    v87.size.width = width;
    v87.size.height = height;
    CGRectGetMidX(v87);
    v88.size.width = v57;
    v88.origin.x = v56;
    v88.origin.y = v44 - v46;
    v88.size.height = v43;
    CGRectGetMinY(v88);
    sub_1E1300B24((v6 + 27), v71);
  }

  else
  {
    v47 = MidX - v38 * 0.5;
    MaxY = v47;
    v89.origin.x = x;
    v89.origin.y = y;
    v89.size.width = width;
    v89.size.height = height;
    MinY = CGRectGetMinY(v89);
    sub_1E1300B24((v6 + 16), v71);
    __swift_project_boxed_opaque_existential_1Tm(v71, v72);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v49 = v48;
    v27(v16, v13);
    v50 = MinY + v49;
    __swift_destroy_boxed_opaque_existential_1(v71);
    v90.origin.x = x;
    v90.origin.y = y;
    v90.size.width = width;
    v90.size.height = height;
    v51 = CGRectGetMidX(v90) - v36 * 0.5;
    v91.origin.x = v47;
    v91.origin.y = v50;
    v91.size.width = v38;
    v91.size.height = v70;
    v52 = CGRectGetMaxY(v91);
    sub_1E1300B24((v6 + 27), v71);
    __swift_project_boxed_opaque_existential_1Tm(v71, v72);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v54 = v53;
    v27(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v92.origin.x = v51;
    v92.origin.y = v52 + v54;
    v92.size.width = v36;
    v92.size.height = v59;
    CGRectGetMaxY(v92);
    sub_1E1300B24((v6 + 32), v71);
  }

  __swift_project_boxed_opaque_existential_1Tm(v71, v72);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v27(v16, v13);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 86, v6[89]);
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v6 + 81, v6[84]);
  sub_1E1AF116C();
  sub_1E1300B24((v6 + 16), v71);
  __swift_project_boxed_opaque_existential_1Tm(v71, v72);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v27(v16, v13);
  __swift_destroy_boxed_opaque_existential_1(v71);
  sub_1E1300B24((v6 + 32), v71);
  __swift_project_boxed_opaque_existential_1Tm(v71, v72);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v27(v16, v13);
  __swift_destroy_boxed_opaque_existential_1(v71);
  sub_1E1300B24((v6 + 27), v71);
  __swift_project_boxed_opaque_existential_1Tm(v71, v72);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v27(v16, v13);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 76, v6[79]);
  sub_1E1AF116C();
  sub_1E1AF1D5C();
  return sub_1E1AF10CC();
}

uint64_t ArcadeFooterLayout.deinit()
{
  sub_1E17BB498(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 608);
  __swift_destroy_boxed_opaque_existential_1(v0 + 648);
  __swift_destroy_boxed_opaque_existential_1(v0 + 688);
  sub_1E14F60F8(v0 + 728);
  return v0;
}

uint64_t ArcadeFooterLayout.__deallocating_deinit()
{
  sub_1E17BB498(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 608);
  __swift_destroy_boxed_opaque_existential_1(v0 + 648);
  __swift_destroy_boxed_opaque_existential_1(v0 + 688);
  sub_1E14F60F8(v0 + 728);

  return swift_deallocClassInstance();
}

uint64_t sub_1E17BAE9C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  WitnessTable = swift_getWitnessTable();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEE18170](a1, a2, WitnessTable, a3, v11, v12);
}

uint64_t sub_1E17BAF20@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1E17B9AC8(v3 + 16, a1);
}

void _s11AppStoreKit18ArcadeFooterLayoutC21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1)
{
  v2 = sub_1E1AF745C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF162C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF165C();
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 64) & 1) == 0)
  {
    v27 = v3;
    v28 = v2;
    v30 = v12;
    v31 = v11;
    v16 = *(a1 + 56);
    v17 = *MEMORY[0x1E69AB970];
    v18 = *(v7 + 104);
    v29 = v9;
    v18(v9, v17, v6, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1E1B32D30;
    v20 = MEMORY[0x1E69E7DE0];
    v21 = *(a1 + 560);
    v22 = MEMORY[0x1E69AB858];
    v33 = MEMORY[0x1E69E7DE0];
    v34 = MEMORY[0x1E69AB858];
    v32[0] = v21;
    v23 = sub_1E1AF1A1C();
    v24 = MEMORY[0x1E69ABA90];
    *(v19 + 56) = v23;
    *(v19 + 64) = v24;
    __swift_allocate_boxed_opaque_existential_0((v19 + 32));
    sub_1E1AF1A2C();
    v25 = *(a1 + 8);
    v33 = v20;
    v34 = v22;
    v32[0] = v25;
    *(v19 + 96) = v23;
    *(v19 + 104) = v24;
    __swift_allocate_boxed_opaque_existential_0((v19 + 72));
    sub_1E1AF1A2C();
    sub_1E1300B24(a1 + 16, v32);
    if (__OFSUB__(v16, 1))
    {
      __break(1u);
    }

    else
    {
      *(v19 + 136) = v23;
      *(v19 + 144) = v24;
      __swift_allocate_boxed_opaque_existential_0((v19 + 112));
      sub_1E1AF1A2C();
      sub_1E1300B24(a1 + 112, v32);
      *(v19 + 176) = v23;
      *(v19 + 184) = v24;
      __swift_allocate_boxed_opaque_existential_0((v19 + 152));
      sub_1E1AF1A2C();
      sub_1E1300B24(a1 + 152, v32);
      *(v19 + 216) = v23;
      *(v19 + 224) = v24;
      __swift_allocate_boxed_opaque_existential_0((v19 + 192));
      sub_1E1AF1A2C();
      sub_1E1300B24(a1 + 200, v32);
      *(v19 + 256) = v23;
      *(v19 + 264) = v24;
      __swift_allocate_boxed_opaque_existential_0((v19 + 232));
      sub_1E1AF1A2C();
      sub_1E1300B24(a1 + 280, v32);
      *(v19 + 296) = v23;
      *(v19 + 304) = v24;
      __swift_allocate_boxed_opaque_existential_0((v19 + 272));
      sub_1E1AF1A2C();
      sub_1E1300B24(a1 + 320, v32);
      *(v19 + 336) = v23;
      *(v19 + 344) = v24;
      __swift_allocate_boxed_opaque_existential_0((v19 + 312));
      sub_1E1AF1A2C();
      sub_1E1300B24(a1 + 240, v32);
      *(v19 + 376) = v23;
      *(v19 + 384) = v24;
      __swift_allocate_boxed_opaque_existential_0((v19 + 352));
      sub_1E1AF1A2C();
      sub_1E1300B24(a1 + 440, v32);
      __swift_project_boxed_opaque_existential_1Tm((a1 + 520), *(a1 + 544));
      sub_1E13BC274();
      sub_1E1AF12DC();
      (*(v27 + 8))(v5, v28);
      *(v19 + 416) = v23;
      *(v19 + 424) = v24;
      __swift_allocate_boxed_opaque_existential_0((v19 + 392));
      sub_1E1AF1A2C();
      sub_1E1300B24(a1 + 480, v32);
      *(v19 + 456) = v23;
      *(v19 + 464) = v24;
      __swift_allocate_boxed_opaque_existential_0((v19 + 432));
      sub_1E1AF1A2C();
      v26 = *(a1 + 576);
      v33 = MEMORY[0x1E69E7DE0];
      v34 = MEMORY[0x1E69AB858];
      v32[0] = v26;
      *(v19 + 496) = v23;
      *(v19 + 504) = v24;
      __swift_allocate_boxed_opaque_existential_0((v19 + 472));
      sub_1E1AF1A2C();
      sub_1E1AF163C();
      sub_1E1AF161C();
      (*(v30 + 8))(v15, v31);
    }
  }
}

unint64_t sub_1E17BB4CC()
{
  result = qword_1ECEB9518;
  if (!qword_1ECEB9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9518);
  }

  return result;
}

unint64_t sub_1E17BB524()
{
  result = qword_1EE1DE390;
  if (!qword_1EE1DE390)
  {
    type metadata accessor for ArcadeFooterLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DE390);
  }

  return result;
}

uint64_t sub_1E17BB670(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 592))
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

uint64_t sub_1E17BB6B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 584) = 0;
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
      *(result + 592) = 1;
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

    *(result + 592) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Conditional.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for ClosureExpression();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_1E14FC3EC();
  result = sub_1E130C97C(v7, &v9);
  *a3 = v9;
  return result;
}

uint64_t sub_1E17BB82C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_1E14FC3EC();
}

uint64_t sub_1E17BB8FC()
{
  sub_1E14FC3EC();

  return swift_deallocClassInstance();
}

uint64_t InlineUnifiedMessageCollectionElementsObserver.__allocating_init(presenter:parentViewController:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return v6;
}

uint64_t InlineUnifiedMessageCollectionElementsObserver.init(presenter:parentViewController:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return v3;
}

uint64_t InlineUnifiedMessageCollectionElementsObserver.deinit()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E6901750](v0 + 32);
  return v0;
}

uint64_t InlineUnifiedMessageCollectionElementsObserver.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E6901750](v0 + 32);

  return swift_deallocClassInstance();
}

void sub_1E17BBA70(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v22 = Strong;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (!v4 || !a1)
  {
    v19 = v22;
    goto LABEL_10;
  }

  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  v21 = a1;
  v8 = v7(ObjectType, v5);
  if (!v9)
  {

    v19 = v21;
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  v12 = *(v1 + 24);
  v13 = swift_getObjectType();
  v14 = (*(v12 + 8))(v13, v12);
  v15 = InlineUnifiedMessagePresenter.inlineViewController(for:)(v10, v11);

  if (v15)
  {
    (*(v5 + 16))(v10, v11, ObjectType, v5);
    v16 = v15;
    [v22 addChildViewController_];
    v17 = [v16 view];

    (*(v5 + 64))(v17, ObjectType, v5);
    [v16 didMoveToParentViewController_];
    v18 = *(v5 + 40);
    v20 = v16;
    v18(v15, ObjectType, v5);

    v19 = v20;
LABEL_10:

    return;
  }
}

void sub_1E17BBCD0(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 32);
    v13 = a1;
    v6 = v5(ObjectType, v3);
    if (v6)
    {
      v7 = v6;
      [v6 willMoveToParentViewController_];
    }

    (*(v3 + 64))(0, ObjectType, v3);
    v8 = v5(ObjectType, v3);
    if (v8)
    {
      v9 = v8;
      v10 = [v8 viewIfLoaded];

      [v10 removeFromSuperview];
    }

    v11 = v5(ObjectType, v3);
    if (v11)
    {
      v12 = v11;
      [v11 removeFromParentViewController];
    }

    (*(v3 + 40))(0, ObjectType, v3);
  }
}

uint64_t static StreamlinedInAppPurchaseOfferButtonPresenter.activeStateDataSource.setter(uint64_t a1)
{
  swift_beginAccess();
  qword_1EE1FAD88 = a1;
}

uint64_t sub_1E17BBFFC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  qword_1EE1FAD88 = v1;
}

uint64_t static StreamlinedInAppPurchaseOfferButtonPresenter.use(stateDataSource:)(uint64_t a1)
{
  swift_beginAccess();
  qword_1EE1FAD88 = a1;
}

uint64_t sub_1E17BC0F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  sub_1E17BF304(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  sub_1E17BF304(a1, a2);

  return swift_unknownObjectRelease();
}

void (*StreamlinedInAppPurchaseOfferButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E17BC214;
}

void sub_1E17BC214(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_1E17BF304(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E17BF304(v4, v3);
  }

  swift_unknownObjectRelease();

  free(v2);
}

id StreamlinedInAppPurchaseOfferButtonPresenter.theme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1E139D580(v2, v3);
}

void StreamlinedInAppPurchaseOfferButtonPresenter.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 148);
  *a1 = *(v1 + 144);
  *(a1 + 4) = v2;
}

void StreamlinedInAppPurchaseOfferButtonPresenter.subtitlePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 154);
  *a1 = *(v1 + 150);
  *(a1 + 4) = v2;
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.__allocating_init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unsigned int *a7)
{
  v14 = swift_allocObject();
  StreamlinedInAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unsigned int *a7)
{
  v85 = *a6;
  v11 = a6[1];
  v12 = a6[2];
  v13 = a6[3];
  v14 = a6[4];
  v83 = a6[5];
  v80 = *a7 | (*(a7 + 2) << 32);
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 160) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0;
  *(v7 + 200) = -258;
  *(v7 + 208) = 0u;
  *(v7 + 224) = 0u;
  *(v7 + 240) = 0;
  *(v7 + 248) = -258;
  *(v7 + 272) = 1;
  *(v7 + 280) = 0u;
  *(v7 + 296) = 0u;
  v69 = v7 + 280;
  *(v7 + 312) = 0x2000;
  *(v7 + 314) = 0;
  swift_beginAccess();
  v87 = qword_1EE1FAD88;
  v76 = v13;
  v73 = v14;
  if (!qword_1EE1FAD88)
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v15 = sub_1E1AF591C();
    __swift_project_value_buffer(v15, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }

  *(v7 + 32) = a2;
  *(v7 + 40) = a1;
  *(v7 + 72) = type metadata accessor for Restrictions();
  *(v7 + 80) = &protocol witness table for Restrictions;
  *(v7 + 48) = a5;
  *(v7 + 150) = v85;
  v71 = v11;
  *(v7 + 151) = v11;
  *(v7 + 152) = v12;
  *(v7 + 153) = v13;
  *(v7 + 154) = v14;
  *(v7 + 155) = v83;
  *(v7 + 256) = a3;
  *(v7 + 264) = a4;
  ObjectType = swift_getObjectType();
  v88 = v7;
  v17 = *(a1 + 32);
  *&v92 = *(a1 + 24);
  *(&v92 + 1) = v17;
  v18 = *(a4 + 56);

  v19 = a1;

  swift_unknownObjectRetain();

  v70 = v18;
  v20 = v18(&v92, ObjectType, a4);
  v22 = v21;

  *(v7 + 104) = v20;
  *(v7 + 112) = v22;
  v24 = v80;
  if (v80 == 3)
  {
    LOBYTE(v90[0]) = v85;
    BYTE1(v90[0]) = v71;
    BYTE2(v90[0]) = v12;
    BYTE3(v90[0]) = v76;
    BYTE4(v90[0]) = v73;
    BYTE5(v90[0]) = v83;
    sub_1E148BBAC(v90, &v92, v23);
    v24 = v92;
    v25.i32[0] = *(&v92 + 1);
    v26 = vmovl_u8(v25).u64[0];
    v27 = BYTE5(v92);
  }

  else
  {
    v28.i64[0] = 0xFFFFFFFFFFFFLL;
    v28.i64[1] = 0xFFFFFFFFFFFFLL;
    v29 = vandq_s8(vdupq_n_s64(v80), v28);
    v26 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1E1B04480), vshlq_u64(v29, xmmword_1E1B04470)));
    v27 = BYTE5(v80);
  }

  *(v7 + 144) = v24;
  *(v7 + 145) = vuzp1_s8(v26, v26).u32[0];
  *(v7 + 149) = v27;
  v30 = v19;
  v32 = *(v19 + 104);
  v31 = *(v19 + 112);
  *(v88 + 120) = *(v19 + 96);
  *(v88 + 128) = v32;
  *(v88 + 136) = v31;
  if (v87)
  {
    v33 = *(v19 + 64);
    if (v33)
    {
      v84 = *(v19 + 56);
      v34 = *(v19 + 176);
      v35 = *(v19 + 184);
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_allocObject();
      v37[2] = v36;
      v37[3] = v87;
      v37[4] = v19;
      v37[5] = v34;
      v77 = v34;
      v86 = v37;
      v37[6] = v35;
      *&v92 = v84;
      *(&v92 + 1) = v33;

      sub_1E139D580(v32, v31);

      v74 = v36;

      v38 = v70(&v92, ObjectType, a4);
      v40 = v39;

      *(v88 + 88) = v38;
      *(v88 + 96) = v40;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (*(v88 + 88))
      {
        v41 = *(v88 + 96);
        v42 = swift_getObjectType();
        v43 = *(v41 + 16);
        swift_unknownObjectRetain();
        v43(v90, v42, v41);
        swift_unknownObjectRelease();
        v92 = v90[0];
        v93 = v90[1];
        v94 = v90[2];
        v95 = v91;
        if (v91 >> 60)
        {
          if (v91 >> 60 != 8)
          {
            goto LABEL_22;
          }

          v44 = *(&v94 + 1) | *(&v95 + 1);
          v45 = *(&v93 + 1) | v93 | *(&v92 + 1);
          if (v91 == 0x8000000000000000 && !(v44 | *&v90[0] | v94 | v45))
          {
            goto LABEL_15;
          }

          if (v91 != 0x8000000000000000 || *&v90[0] != 4 || (v46 = v44 | v94 | v45) != 0)
          {
LABEL_22:
            sub_1E139CEA8(&v92);
            LOBYTE(v46) = 1;
          }
        }

        else
        {
          LOBYTE(v46) = LOBYTE(v90[0]) != 1;
        }

LABEL_23:
        *(v88 + 314) = v46;
        v47 = swift_getObjectType();
        v48 = swift_allocObject();
        swift_weakInit();
        v49 = swift_allocObject();
        v49[2] = v48;
        v49[3] = sub_1E17BF3F8;
        v49[4] = v86;
        v50 = *(v40 + 72);

        v50(v88, sub_1E17BF408, v49, v47, v40);

        v51 = swift_allocObject();
        *(v51 + 16) = sub_1E17BF3F8;
        *(v51 + 24) = v86;

        InAppPurchaseStateDataSource.addObserver(_:action:)(v88, sub_1E1402014, v51);

        v52 = *(v88 + 112);
        v53 = swift_getObjectType();
        v54 = swift_allocObject();
        *(v54 + 16) = sub_1E17BF3F8;
        *(v54 + 24) = v86;
        v55 = *(v52 + 72);

        swift_unknownObjectRetain();
        v55(v88, sub_1E1402014, v54, v53, v52);
        swift_unknownObjectRelease();

        sub_1E17BCDD8(v74, v87, v30, v77, v35);

        if (sub_1E17BD30C())
        {
          v56 = *(v88 + 96);
          v57 = swift_unknownObjectRetain();
          sub_1E17BD50C(v57, v56, &v92);
          v82 = v92;
          v78 = v93;
          v79 = *(&v92 + 1);
          v75 = *(&v93 + 1);
          v72 = v94;
          v58 = WORD4(v94);
          swift_unknownObjectRelease();
          v60 = *(v88 + 272);
          v59 = *(v88 + 280);
          v61 = *(v88 + 288);
          v62 = *(v88 + 296);
          v63 = *(v88 + 304);
          v64 = *(v88 + 312);
          if ((~v58 & 0xFEFE) != 0)
          {
            v65 = v93;
            *(v88 + 272) = v92;
            *(v88 + 288) = v65;
            *(v88 + 304) = v94;
            *(v88 + 312) = v58;
            sub_1E17BF4AC(v82, v79, v78, v75, v72, v58);
            sub_1E17BF414(v60, v59, v61, v62, v63, v64);
            sub_1E1308058(&v92, &qword_1ECEB9520);
            if (*(v30 + 136))
            {
              goto LABEL_27;
            }

            goto LABEL_29;
          }

          *(v88 + 272) = 1;
          *v69 = 0u;
          *(v69 + 16) = 0u;
          *(v69 + 32) = 0;
          sub_1E17BF414(v60, v59, v61, v62, v63, v64);
        }

        if (*(v30 + 136))
        {
LABEL_27:
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          goto LABEL_30;
        }

LABEL_29:
        v66 = [objc_opt_self() defaultCenter];

        v67 = sub_1E1AF5DBC();

        [v66 addObserver:v88 selector:sel_restrictionsDidChange_ name:v67 object:a5];

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        goto LABEL_30;
      }

LABEL_15:
      LOBYTE(v46) = 0;
      goto LABEL_23;
    }

    sub_1E139D580(v32, v31);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E139D580(v32, v31);
    swift_unknownObjectRelease();
  }

LABEL_30:

  return v88;
}

uint64_t sub_1E17BCDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(a3 + 24);
    v12 = *(a3 + 32);
    swift_beginAccess();
    sub_1E1300B24(a2 + 16, &v29);
    v13 = *&v30[8];
    __swift_project_boxed_opaque_existential_1Tm(&v29, *&v30[8]);
    v27[0] = v11;
    v27[1] = v12;
    (*(*(&v13 + 1) + 32))(v28, v27, a4, a5, v13, *(&v13 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v29);
    sub_1E17BCFA8(v28, &v29);
    v14 = *(v10 + 272);
    v15 = *(v10 + 280);
    v16 = *(v10 + 288);
    v17 = *(v10 + 296);
    v18 = *(v10 + 304);
    v19 = *v30;
    *(v10 + 272) = v29;
    *(v10 + 288) = v19;
    v20 = *(v10 + 312);
    *(v10 + 298) = *&v30[10];
    sub_1E17BF4AC(v14, v15, v16, v17, v18, v20);
    sub_1E17BF7F8(&v29, v27);
    sub_1E17BF414(v14, v15, v16, v17, v18, v20);
    v21 = *(v10 + 160);
    v22 = *(v10 + 168);
    v23 = *(v10 + 176);
    v24 = *(v10 + 184);
    v25 = *(v10 + 192);
    *(v10 + 160) = v14;
    *(v10 + 168) = v15;
    *(v10 + 176) = v16;
    *(v10 + 184) = v17;
    *(v10 + 192) = v18;
    v26 = *(v10 + 200);
    *(v10 + 200) = v20;
    sub_1E17BF544(v21, v22, v23, v24, v25, v26);
    sub_1E17BF4AC(v14, v15, v16, v17, v18, v20);
    _s11AppStoreKit013StreamlinedInA28PurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
    sub_1E17BF414(v14, v15, v16, v17, v18, v20);
    sub_1E17BF830(&v29);
  }

  return result;
}

uint64_t sub_1E17BCFA8@<X0>(unsigned __int8 *a1@<X0>, int8x16_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 96);
  v6 = swift_unknownObjectRetain();
  sub_1E17BD50C(v6, v5, v22);
  v19 = v22[1];
  v20 = v22[0];
  v7 = v23;
  v8 = v24;
  swift_unknownObjectRelease();
  v9 = *(v2 + 112);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  swift_unknownObjectRetain();
  v11(v25, ObjectType, v9);
  result = swift_unknownObjectRelease();
  if (v4 > 0x3F)
  {
    v14 = v4 >> 6;
    if (v26 >> 60)
    {
      if (v26 >> 60 == 1)
      {
        v15 = vdup_n_s32((v8 & 0xFEFEFEFE) == 65278);
        v16.i64[0] = v15.u32[0];
        v16.i64[1] = v15.u32[1];
        v17 = vcgezq_s64(vshlq_n_s64(v16, 0x3FuLL));
        v18 = vandq_s8(v19, v17);
        v13 = vandq_s8(v20, v17);
        if ((v8 & 0xFEFEFEFE) == 0xFEFE)
        {
          v7 = 0;
          LOWORD(v8) = 0x4000;
        }

        goto LABEL_17;
      }

      sub_1E141CF5C(v25, v21);
      sub_1E1308058(v22, &qword_1ECEB9520);
      if (v14 == 1)
      {
        sub_1E139CEA8(v25);
        result = sub_1E139CEA8(v25);
        v7 = 0;
        v18 = 0uLL;
        v13 = (v4 & 1);
        LOWORD(v8) = 0x2000;
        goto LABEL_17;
      }
    }

    else
    {
      result = sub_1E1308058(v22, &qword_1ECEB9520);
      if (v14 == 1)
      {
        goto LABEL_3;
      }
    }

    if (v14 != 2)
    {
      sub_1E139CEA8(v25);
      result = sub_1E139CEA8(v25);
      v7 = 0;
      v13 = 0uLL;
      LOWORD(v8) = -16384;
      goto LABEL_16;
    }

    sub_1E139CEA8(v25);
    result = sub_1E139CEA8(v25);
    v7 = 0;
    v18 = 0uLL;
    v13 = (v4 & 1);
    LOWORD(v8) = 0x4000;
  }

  else
  {
    result = sub_1E139CEA8(v25);
    if ((~v8 & 0xFEFE) == 0)
    {
LABEL_3:
      v7 = 0;
      v13 = 0uLL;
      LOWORD(v8) = 0x4000;
LABEL_16:
      v18 = 0uLL;
      goto LABEL_17;
    }

    v18 = v19;
    v13 = v20;
  }

LABEL_17:
  *a2 = v13;
  a2[1] = v18;
  a2[2].i64[0] = v7;
  a2[2].i16[4] = v8;
  return result;
}

uint64_t sub_1E17BD1CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v12, ObjectType, a2);
    if (v15 >> 60)
    {
      if (v15 >> 60 != 8)
      {
LABEL_9:
        sub_1E139CEA8(v12);
LABEL_12:
        LOBYTE(v11) = 1;
        goto LABEL_13;
      }

      v9 = v14 | v16;
      v10 = v12[3] | v12[2] | v12[1];
      if (v15 != 0x8000000000000000 || v9 | v12[0] | v13 | v10)
      {
        if (v15 == 0x8000000000000000 && v12[0] == 4)
        {
          v11 = v9 | v13 | v10;
          if (!v11)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_9;
      }
    }

    else if (LOBYTE(v12[0]) != 1)
    {
      goto LABEL_12;
    }

    LOBYTE(v11) = 0;
LABEL_13:
    *(v7 + 314) = v11;
    _s11AppStoreKit013StreamlinedInA28PurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
    a4();
  }

  return result;
}

BOOL sub_1E17BD30C()
{
  v1 = *(v0 + 112);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  v3(v21, ObjectType, v1);
  swift_unknownObjectRelease();
  if (v24 >> 60)
  {
    if (v24 >> 60 != 8 || ((v4 = v23 | v25, v5 = v21[3] | v21[2] | v21[1], v24 != 0x8000000000000000) || v4 | v21[0] | v22 | v5) && (v24 != 0x8000000000000000 || v21[0] != 4 || v4 | v22 | v5))
    {
      sub_1E139CEA8(v21);
      return 1;
    }
  }

  else if (LOBYTE(v21[0]) != 1)
  {
    return 1;
  }

  swift_beginAccess();
  v6 = *(v0 + 40);
  if (!v6)
  {
    return 0;
  }

  v7 = qword_1EE1FAD88;
  if (!qword_1EE1FAD88)
  {
    return 0;
  }

  v8 = v6[22];
  v9 = v6[23];
  v11 = v6[3];
  v10 = v6[4];
  swift_beginAccess();
  sub_1E1300B24(v7 + 16, v17);
  v12 = v18;
  v13 = v19;
  __swift_project_boxed_opaque_existential_1Tm(v17, v18);
  v16[0] = v11;
  v16[1] = v10;
  v14 = *(v13 + 32);

  v14(&v20, v16, v8, v9, v12, v13);

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v20 < 0x40u;
}

uint64_t sub_1E17BD50C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!result)
  {
    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  v6 = *(a2 + 40);
  swift_unknownObjectRetain();
  v6(&v24, 0, ObjectType, a2);
  if (!sub_1E17BD30C())
  {
    goto LABEL_12;
  }

  v7 = v32 | (v33 << 16);
  v8 = v7 >> 20;
  if (v7 >> 20 <= 3)
  {
    if (v7 >> 20 <= 1)
    {
LABEL_13:
      result = swift_unknownObjectRelease();
LABEL_14:
      v9 = 0;
      v10 = 0;
      v14 = 0;
      v11 = 0;
      v12 = 0;
      v16 = -258;
      goto LABEL_15;
    }

    if (v8 == 2)
    {
      sub_1E139CEA8(&v24);
      result = swift_unknownObjectRelease();
      v10 = 0;
      v14 = 0;
      v11 = 0;
      v12 = 0;
      v16 = -16384;
      v9 = 2;
      goto LABEL_15;
    }

LABEL_12:
    sub_1E139CEA8(&v24);
    goto LABEL_13;
  }

  v9 = v24;
  v10 = v26;
  v11 = v28;
  v12 = v29;
  v13 = v30;
  if (v7 >> 20 <= 5)
  {
    if (v8 != 4)
    {
      swift_unknownObjectRelease();
      v22 = v11;
      v23 = v10;
      result = sub_1E139CEA8(&v24);
      v14 = 0;
      v16 = v13 & 1 | 0x6000;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v14 = v27;
  if (v8 == 6)
  {
    swift_unknownObjectRelease();
    v17 = v11;
    v18 = v10;
    v19 = v14;
    result = sub_1E139CEA8(&v24);
    v16 = v13 & 1 | 0x8000;
    goto LABEL_15;
  }

  if (v8 != 7)
  {
    v20 = v30 | ((v31 | ((*&v7 & 0xFFFFFFLL) << 32)) << 8);
    v21 = v20 == 0x8000000000000000 && (v26 | v25 | v24 | v27 | v28 | v29 | v34) == 0;
    if (v21 || v24 != 1 || v26 | v25 | v27 | v28 | v29 || v20 != 0x8000000000000000 || v34)
    {
      goto LABEL_13;
    }
  }

  v9 = sub_1E17BDD18();
  v10 = v15;
  sub_1E139CEA8(&v24);
  result = swift_unknownObjectRelease();
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v16 = -24576;
LABEL_15:
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v14;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  *(a3 + 40) = v16;
  return result;
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.deinit()
{
  v1 = v0;
  swift_beginAccess();
  if (qword_1EE1FAD88)
  {

    InAppPurchaseStateDataSource.removeObserver(_:)(v0);
  }

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  sub_1E1337DEC(v1 + 16);

  __swift_destroy_boxed_opaque_existential_1(v1 + 48);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1E139D53C(*(v1 + 128), *(v1 + 136));
  sub_1E17BF544(*(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200));
  sub_1E17BF544(*(v1 + 208), *(v1 + 216), *(v1 + 224), *(v1 + 232), *(v1 + 240), *(v1 + 248));
  swift_unknownObjectRelease();
  sub_1E17BF414(*(v1 + 272), *(v1 + 280), *(v1 + 288), *(v1 + 296), *(v1 + 304), *(v1 + 312));
  return v1;
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.__deallocating_deinit()
{
  StreamlinedInAppPurchaseOfferButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E17BD8D0()
{
  result = 0;
  v2 = *(v0 + 168);
  v3 = *(v0 + 200);
  if ((~v3 & 0xFEFE) == 0 || (v3 & 0xE000) != 0x8000)
  {
    return result;
  }

  v4 = *(v0 + 160);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 192);
  if (*&v4 >= 0.97 || (*(v0 + 312) & 0xE000) != 0xA000)
  {
    sub_1E17BF4AC(v4, *(v0 + 168), *(v0 + 176), *(v0 + 184), v7, v3);
    goto LABEL_10;
  }

  v8 = v3 & 0x100;
  *(v0 + 160) = 0x3FF0000000000000;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = v3 & 0x100 | 0x8000;
  v9 = v4;
  v10 = v7;
  v11 = v3;
  sub_1E17BF4AC(v4, v2, v6, v5, v7, v3);
  sub_1E17BF544(v9, v2, v6, v5, v10, v11);
  v12 = objc_opt_self();
  if ([v12 disableActions])
  {
LABEL_10:

    return 0;
  }

  [v12 begin];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v14 = *(v0 + 148);
    v28 = *(v0 + 144);
    v29 = v14;
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    LOWORD(aBlock) = *(v0 + 120);
    v23 = v15;
    v24 = v16;
    v17 = *(v13 + 64);
    sub_1E139D580(v15, v16);
    v17(0, 0, &v28, &aBlock, v8 != 0, ObjectType, v13, 1.0);
    swift_unknownObjectRelease();
    sub_1E139D53C(v23, v24);
  }

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = 0x3FD6666666666666;
  *(v19 + 24) = v18;
  v26 = sub_1E17BF860;
  v27 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1E1302D64;
  v25 = &block_descriptor_70;
  v20 = _Block_copy(&aBlock);

  [v12 setCompletionBlock_];
  _Block_release(v20);
  [v12 commit];

  return 1;
}

uint64_t sub_1E17BDBAC(char a1)
{
  v2 = v1;
  if ((a1 & 1) != 0 || (result = sub_1E17BDE74(), !v4))
  {
    v5 = *(v1 + 40);
    if (v5)
    {
      v6 = *(v5 + 72);
      if (*(v6 + 16))
      {

        v7 = sub_1E1595560(0);
        if (v8)
        {
          v9 = *(*(v6 + 56) + 16 * v7);

          return v9;
        }
      }
    }

    v10 = *(v2 + 32);
    if (v10 && *(v10 + 24))
    {
      v11 = *(v10 + 16);

      return v11;
    }

    else
    {
      v12._object = 0x80000001E1B5B320;
      v12._countAndFlagsBits = 0xD000000000000015;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      return localizedString(_:comment:)(v12, v13)._countAndFlagsBits;
    }
  }

  return result;
}

uint64_t sub_1E17BDC88(char a1)
{
  if ((a1 & 1) != 0 || (result = sub_1E17BDF2C(), !v3))
  {
    v4 = *(v1 + 40);
    if (v4)
    {
      v5 = *(v4 + 88);
      if (*(v5 + 16))
      {

        v6 = sub_1E1595560(0);
        if (v7)
        {
          v8 = *(*(v5 + 56) + 16 * v6);

          return v8;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1E17BDD18()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = *(v1 + 72);
  if (*(v2 + 16))
  {

    v3 = sub_1E1595560(4);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 16 * v3);

      return v5;
    }
  }

  if (*(v1 + 16) > 2u)
  {

    goto LABEL_10;
  }

  v7 = sub_1E1AF74AC();

  if (v7)
  {
LABEL_10:
    v9 = 0xD00000000000001DLL;
    v8 = 0x80000001E1B5B280;
    goto LABEL_11;
  }

LABEL_8:
  v8 = 0x80000001E1B5B260;
  v9 = 0xD000000000000016;
LABEL_11:
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  return localizedString(_:comment:)(*&v9, v10)._countAndFlagsBits;
}

uint64_t sub_1E17BDE74()
{
  v1 = *(v0 + 40);
  if (!v1 || *(v1 + 125) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 314);
  v3 = *(v1 + 72);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_1E1595560(3);
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4)
  {

    v5 = sub_1E1595560(2);
    if ((v6 & 1) == 0)
    {
LABEL_6:

      return 0;
    }

LABEL_9:
    v8 = *(*(v3 + 56) + 16 * v5);

    return v8;
  }

  return 0;
}

uint64_t sub_1E17BDF2C()
{
  v1 = *(v0 + 40);
  if (!v1 || *(v1 + 125) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 314);
  v3 = *(v1 + 88);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_1E1595560(3);
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4)
  {

    v5 = sub_1E1595560(2);
    if ((v6 & 1) == 0)
    {
LABEL_6:

      return 0;
    }

LABEL_9:
    v8 = *(*(v3 + 56) + 16 * v5);

    return v8;
  }

  return 0;
}

void sub_1E17BDFE4()
{
  v1 = v0[4];
  if (v1 && *(v0 + 120) != 5 && ((*(v0 + 156) >> 13) | 4) == 5)
  {
    v2 = *v0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = v0[3];
      ObjectType = swift_getObjectType();
      v7[3] = v2;
      v7[0] = v0;
      v5 = *(v3 + 8);
      v6 = *(v5 + 8);

      v6(v1, v7, ObjectType, v5);

      swift_unknownObjectRelease();
      sub_1E1308058(v7, &qword_1ECEB2DF0);
    }
  }
}

uint64_t sub_1E17BE19C(uint64_t a1)
{
  v20 = a1;
  v1 = sub_1E1AF320C();
  v23 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF324C();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF326C();
  v19 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1E13006E4(0, &qword_1EE1E3430);
  v14 = sub_1E1AF68EC();
  sub_1E1AF325C();
  sub_1E1AF32DC();
  v15 = *(v8 + 8);
  v15(v10, v7);
  aBlock[4] = sub_1E17BF86C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_25_2;
  v16 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF5E0](v13, v6, v3, v16);
  _Block_release(v16);

  (*(v23 + 8))(v3, v1);
  (*(v21 + 8))(v6, v22);
  return (v15)(v13, v19);
}

uint64_t sub_1E17BE50C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s11AppStoreKit013StreamlinedInA28PurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_1E17BE564(uint64_t a1, uint64_t a2)
{
  sub_1E17BF304(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_1E17BE5A0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_1E17BC214;
}

void _s11AppStoreKit013StreamlinedInA28PurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0()
{
  if (sub_1E17BD8D0())
  {
    return;
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 312);
  v3 = v2 >> 13;
  if (v2 >> 13 <= 2)
  {
    if (!v3)
    {
      v34 = 0xD00000000000001CLL;
      if (v1)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v35 = *(v0 + 24);
          ObjectType = swift_getObjectType();
          v37._object = 0x80000001E1B69190;
          v37._countAndFlagsBits = 0xD00000000000001CLL;
          v38._countAndFlagsBits = 0;
          v38._object = 0xE000000000000000;
          v39 = localizedString(_:comment:)(v37, v38);
          if (qword_1ECEB0DE8 != -1)
          {
            swift_once();
          }

          LOWORD(v124) = word_1ECEB4680;
          v125 = qword_1ECEB4688;
          v126 = qword_1ECEB4690;
          v40 = *(v35 + 32);
          sub_1E139D580(qword_1ECEB4688, qword_1ECEB4690);
          v40(v39._countAndFlagsBits, v39._object, 0, 0, &v124, ObjectType, v35);
          swift_unknownObjectRelease();

          sub_1E139D53C(v125, v126);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_73;
        }

        v41 = "ACCESSIBILITY_LOADING_BUTTON";
      }

      else
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v55 = *(v0 + 24);
          v56 = swift_getObjectType();
          v57._countAndFlagsBits = 0xD00000000000001BLL;
          v57._object = 0x80000001E1B5B2E0;
          v58._countAndFlagsBits = 0;
          v58._object = 0xE000000000000000;
          v59 = localizedString(_:comment:)(v57, v58);
          if (qword_1ECEB0DE8 != -1)
          {
            swift_once();
          }

          LOWORD(v124) = word_1ECEB4680;
          v125 = qword_1ECEB4688;
          v126 = qword_1ECEB4690;
          v60 = *(v55 + 32);
          sub_1E139D580(qword_1ECEB4688, qword_1ECEB4690);
          v60(v59._countAndFlagsBits, v59._object, 0, 0, &v124, v56, v55);
          swift_unknownObjectRelease();

          sub_1E139D53C(v125, v126);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_73;
        }

        v41 = "OfferButton.Title.Update";
        v34 = 0xD00000000000001BLL;
      }

      v61 = *(v0 + 24);
      v62 = swift_getObjectType();
      v63._object = (v41 | 0x8000000000000000);
      v63._countAndFlagsBits = v34;
      v64._countAndFlagsBits = 0;
      v64._object = 0xE000000000000000;
      v65 = localizedString(_:comment:)(v63, v64);
      (*(v61 + 128))(v65._countAndFlagsBits, v65._object, v62, v61);
      goto LABEL_50;
    }

    if (v3 != 1)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v42 = *(v0 + 24);
      v43 = swift_getObjectType();
      v44 = *(v0 + 148);
      v122 = *(v0 + 144);
      v123 = v44;
      v45 = *(v0 + 128);
      v46 = *(v0 + 136);
      LOWORD(v124) = *(v0 + 120);
      v125 = v45;
      v126 = v46;
      v47 = *(v42 + 56);
      sub_1E139D580(v45, v46);
      v48 = v1 & 1;
      goto LABEL_26;
    }

    v15 = sub_1E17BDBAC(v1 & 1);
    v17 = v16;
    v18 = sub_1E17BDC88(v1 & 1);
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v0 + 24);
        v23 = swift_getObjectType();
        v24 = *(v0 + 154);
        v122 = *(v0 + 150);
        v123 = v24;
        v25 = *(v0 + 128);
        v26 = *(v0 + 136);
        LOWORD(v124) = *(v0 + 120);
        v125 = v25;
        v126 = v26;
        v27 = *(v22 + 24);
        sub_1E139D580(v25, v26);
        v27(v15, v17, v20, v21, &v122, 0, 0, &v124, v23, v22);
        swift_unknownObjectRelease();
        sub_1E139D53C(v125, v126);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v0 + 24);
        v29 = swift_getObjectType();
        v124 = v15;
        v125 = v17;
        MEMORY[0x1E68FECA0](8236, 0xE200000000000000);
        MEMORY[0x1E68FECA0](v20, v21);

        (*(v28 + 128))(v124, v125, v29, v28);
LABEL_50:
        swift_unknownObjectRelease();
LABEL_73:
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return;
        }

        v108 = *(v0 + 24);
        if ((*(v0 + 312) & 0xE000) == 0x2000)
        {
          __swift_project_boxed_opaque_existential_1Tm((v0 + 48), *(v0 + 72));
          LOBYTE(v122) = 0;
          v109 = RestrictionsProtocol.doesAllow(_:properties:)(&v122, *(v0 + 40));
        }

        else
        {
          v109 = 1;
        }

        v110 = swift_getObjectType();
        (*(v108 + 16))(v109, v110, v108);
        goto LABEL_78;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v69 = *(v0 + 24);
        v70 = swift_getObjectType();
        v71 = *(v0 + 128);
        v72 = *(v0 + 136);
        LOWORD(v124) = *(v0 + 120);
        v125 = v71;
        v126 = v72;
        v73 = *(v69 + 32);
        sub_1E139D580(v71, v72);
        v73(v15, v17, 0, 0, &v124, v70, v69);
        swift_unknownObjectRelease();
        sub_1E139D53C(v125, v126);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v74 = *(v0 + 24);
        v75 = swift_getObjectType();
        (*(v74 + 128))(v15, v17, v75, v74);
        goto LABEL_50;
      }
    }

    goto LABEL_73;
  }

  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 296);
  v7 = *(v0 + 304);
  if (v2 >> 13 > 4)
  {
    if (v3 == 5)
    {
      v118 = *(v0 + 288);
      v121 = *(v0 + 296);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v0 + 24);
        v31 = swift_getObjectType();
        v33 = *(v0 + 128);
        v32 = *(v0 + 136);
        LOWORD(v124) = *(v0 + 120);
        v125 = v33;
        v126 = v32;
        v115 = *(v30 + 32);
        v117 = v31;
        sub_1E17BF4AC(v1, v5, v118, v121, v7, v2);
        sub_1E139D580(v33, v32);
        v115(v1, v5, 0, 0, &v124, v117, v30);
        swift_unknownObjectRelease();
        sub_1E139D53C(v125, v126);
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v86 = *(v0 + 24);
        v87 = swift_getObjectType();
        (*(v86 + 128))(v1, v5, v87, v86);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1E17BF414(v1, v5, v118, v121, v7, v2);
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v98 = *(v0 + 24);
      v99 = swift_getObjectType();
      (*(v98 + 144))(1852141679, 0xE400000000000000, v99, v98);
LABEL_78:
      swift_unknownObjectRelease();
      return;
    }

    if (!(v4 | v5 | v1 | v6 | v7) && v2 == 49152)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v53 = *(v0 + 24);
      v54 = swift_getObjectType();
      (*(v53 + 16))(0, v54, v53);
      goto LABEL_78;
    }

    if (v2 != 49152 || v1 != 1 || v4 | v5 | v6 | v7)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v100 = *(v0 + 24);
      v101 = swift_getObjectType();
      v102._countAndFlagsBits = 0xD000000000000018;
      v102._object = 0x80000001E1B5B2C0;
      v103._countAndFlagsBits = 0;
      v103._object = 0xE000000000000000;
      v104 = localizedString(_:comment:)(v102, v103);
      v105 = *(v0 + 128);
      v106 = *(v0 + 136);
      LOWORD(v124) = *(v0 + 120);
      v125 = v105;
      v126 = v106;
      v107 = *(v100 + 32);
      sub_1E139D580(v105, v106);
      v107(v104._countAndFlagsBits, v104._object, 0, 0, &v124, v101, v100);
      swift_unknownObjectRelease();

LABEL_27:
      sub_1E139D53C(v125, v126);
      return;
    }

    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v42 = *(v0 + 24);
    v43 = swift_getObjectType();
    v66 = *(v0 + 148);
    v122 = *(v0 + 144);
    v123 = v66;
    v67 = *(v0 + 128);
    v68 = *(v0 + 136);
    LOWORD(v124) = *(v0 + 120);
    v125 = v67;
    v126 = v68;
    v47 = *(v42 + 56);
    sub_1E139D580(v67, v68);
    v48 = 0;
LABEL_26:
    v47(0, 0, &v122, &v124, v48, v43, v42);
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v120 = *(v0 + 280);
  if (v3 == 3)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v0 + 24);
      v114 = swift_getObjectType();
      v9 = *(v0 + 148);
      v122 = *(v0 + 144);
      v123 = v9;
      v10 = v4;
      v12 = *(v0 + 128);
      v11 = *(v0 + 136);
      LOWORD(v124) = *(v0 + 120);
      v125 = v12;
      v126 = v11;
      v112 = *(v8 + 64);
      v13 = v5;
      v14 = v10;
      sub_1E17BF4AC(v1, v13, v10, v6, v7, v2);
      sub_1E139D580(v12, v11);
      v112(0, 0, &v122, &v124, (v2 >> 8) & 1, v114, v8, *&v1);
      swift_unknownObjectRelease();
      sub_1E139D53C(v125, v126);
    }

    else
    {
      v76 = v6;
      v77 = v5;
      v14 = v4;
      v78 = v4;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v79 = *(v0 + 24);
      v80 = swift_getObjectType();
      v81._object = 0x80000001E1B5B3C0;
      v81._countAndFlagsBits = 0xD00000000000001CLL;
      v82._countAndFlagsBits = 0;
      v82._object = 0xE000000000000000;
      v83 = localizedString(_:comment:)(v81, v82);
      (*(v79 + 128))(v83._countAndFlagsBits, v83._object, v80, v79);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v84 = *(v0 + 24);
      v85 = swift_getObjectType();
      (*(v84 + 144))(0x64616F6C6E776F64, 0xEB00000000676E69, v85, v84);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    v119 = v4;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v111 = v7;
      v49 = *(v0 + 24);
      v116 = swift_getObjectType();
      v50 = *(v0 + 148);
      v122 = *(v0 + 144);
      v123 = v50;
      v51 = *(v0 + 128);
      v52 = *(v0 + 136);
      LOWORD(v124) = *(v0 + 120);
      v125 = v51;
      v126 = v52;
      v113 = *(v49 + 64);
      sub_1E17BF4AC(v1, v5, v4, v6, v111, v2);
      sub_1E139D580(v51, v52);
      v113(0, 0, &v122, &v124, (v2 >> 8) & 1, v116, v49, *&v1);
      swift_unknownObjectRelease();
      sub_1E139D53C(v125, v126);
    }

    else
    {
      v88 = v6;
      v89 = v5;
      v90 = v4;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v91 = *(v0 + 24);
      v92 = swift_getObjectType();
      v93._object = 0x80000001E1B5B3C0;
      v93._countAndFlagsBits = 0xD00000000000001CLL;
      v94._countAndFlagsBits = 0;
      v94._object = 0xE000000000000000;
      v95 = localizedString(_:comment:)(v93, v94);
      (*(v91 + 128))(v95._countAndFlagsBits, v95._object, v92, v91);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v96 = *(v0 + 24);
      v97 = swift_getObjectType();
      (*(v96 + 144))(0x696C6C6174736E69, 0xEA0000000000676ELL, v97, v96);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E17BF304(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 112))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 24);
    v7 = swift_getObjectType();
    (*(v6 + 104))(v2, sel_offerButtonTapped, v7, v6);
    swift_unknownObjectRelease();
  }

  _s11AppStoreKit013StreamlinedInA28PurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

void sub_1E17BF414(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned __int16 a6)
{
  v6 = a6 >> 13;
  if (v6 == 5)
  {
  }

  else if (v6 == 4 || v6 == 3)
  {
  }
}

void sub_1E17BF4AC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned __int16 a6)
{
  v7 = a6 >> 13;
  if (v7 == 5)
  {
  }

  else if (v7 == 4 || v7 == 3)
  {
    v8 = a4;
    v9 = a2;

    v10 = a3;
  }
}

void sub_1E17BF544(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, int a6)
{
  if ((~a6 & 0xFEFE) != 0)
  {
    sub_1E17BF414(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit24StreamlinedPurchaseStateO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >> 14 <= 2)
  {
    return v1 >> 13;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E17BF5DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFA && *(a1 + 42))
  {
    return (*a1 + 16378);
  }

  v3 = ((*(a1 + 40) >> 13) | (8 * ((*(a1 + 40) >> 2) & 0x780 | (*(a1 + 40) >> 1)))) ^ 0x3FFF;
  if (v3 >= 0x3FF9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E17BF644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 16378;
    if (a3 >= 0x3FFA)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFA)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x7FF) - (a2 << 11);
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_1E17BF6D4(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 40) = *(result + 40) & 0x101 | (a2 << 13);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = -16384;
  }

  return result;
}

uint64_t sub_1E17BF71C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    if ((*(v0 + 312) & 0xE000) == 0x2000)
    {
      __swift_project_boxed_opaque_existential_1Tm((v0 + 48), *(v0 + 72));
      v5 = 0;
      v3 = RestrictionsProtocol.doesAllow(_:properties:)(&v5, *(v0 + 40));
    }

    else
    {
      v3 = 1;
    }

    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v3, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t OfferLabelPresenter.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t OfferLabelPresenter.offerLabelText.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1E17BF8EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[5] = a1;
  v2[6] = a2;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = v2[8];
    ObjectType = swift_getObjectType();
    v8 = v2[5];
    v9 = v2[6];
    v10 = *(v6 + 8);

    v10(v8, v9, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall OfferLabelPresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1[8];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v4 = v1[5];
    v5 = v1[6];
    v6 = *(v2 + 8);

    v6(v4, v5, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t OfferLabelPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[8] = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = v2[8];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v6 = v2[5];
    v7 = v2[6];
    v8 = *(v4 + 8);

    v8(v6, v7, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*OfferLabelPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E17BFC44;
}

void sub_1E17BFC44(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
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
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = v4[8];
      ObjectType = swift_getObjectType();
      swift_beginAccess();
      v7 = v4[5];
      v8 = v4[6];
      v9 = *(v5 + 8);

      v9(v7, v8, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t OfferLabelPresenter.__allocating_init(offerDisplayProperties:adamId:appStateController:arePreordersCancellable:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = swift_allocObject();
  v10 = *a2;
  v11 = a2[1];
  *(v9 + 64) = 0;
  *(v9 + 48) = 0;
  *(v9 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = a1;
  *(v9 + 88) = a5;
  ObjectType = swift_getObjectType();
  *&v25[0] = v10;
  *(&v25[0] + 1) = v11;
  v13 = *(a4 + 56);

  v14 = v13(v25, ObjectType, a4);
  v16 = v15;

  *(v9 + 72) = v14;
  *(v9 + 80) = v16;
  v17 = swift_getObjectType();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *(v16 + 72);
  swift_unknownObjectRetain();

  v19(v9, sub_1E17C0230, v18, v17, v16);

  (*(v16 + 16))(v24, v17, v16);
  v20 = sub_1E17C0238(v24);
  v22 = v21;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v25[0] = v24[0];
  v25[1] = v24[1];
  v25[2] = v24[2];
  v25[3] = v24[3];
  sub_1E139CEA8(v25);
  swift_beginAccess();
  *(v9 + 40) = v20;
  *(v9 + 48) = v22;

  return v9;
}

uint64_t OfferLabelPresenter.init(offerDisplayProperties:adamId:appStateController:arePreordersCancellable:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *a2;
  v10 = a2[1];
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  *(v6 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 16) = v11;
  *(v6 + 24) = v10;
  *(v6 + 32) = a1;
  *(v6 + 88) = a5;
  ObjectType = swift_getObjectType();
  *&v25[0] = v11;
  *(&v25[0] + 1) = v10;
  v13 = *(a4 + 56);

  v14 = v13(v25, ObjectType, a4);
  v16 = v15;

  *(v6 + 72) = v14;
  *(v6 + 80) = v16;
  v17 = swift_getObjectType();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *(v16 + 72);
  swift_unknownObjectRetain();

  v19(v6, sub_1E17C05A4, v18, v17, v16);

  (*(v16 + 16))(v24, v17, v16);
  v20 = sub_1E17C0238(v24);
  v22 = v21;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v25[0] = v24[0];
  v25[1] = v24[1];
  v25[2] = v24[2];
  v25[3] = v24[3];
  sub_1E139CEA8(v25);
  swift_beginAccess();
  *(v6 + 40) = v20;
  *(v6 + 48) = v22;

  return v6;
}

uint64_t sub_1E17C016C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v8, ObjectType, a2);
    v5 = sub_1E17C0238(v8);
    v7 = v6;
    v9[0] = v8[0];
    v9[1] = v8[1];
    v9[2] = v8[2];
    v9[3] = v8[3];
    sub_1E139CEA8(v9);
    sub_1E17BF8EC(v5, v7);
  }

  return result;
}

uint64_t sub_1E17C0238(uint64_t *a1)
{
  v3 = *(v1 + 32);
  result = *(v3 + 126);
  if (!*(v3 + 126))
  {
    return result;
  }

  if (result != 1)
  {
    v7 = *(v3 + 88);
    if (*(v7 + 16))
    {

      v8 = sub_1E1595560(17);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 16 * v8);

        return v10;
      }
    }

    v17 = "Offer.Label.ComingSoon";
    goto LABEL_21;
  }

  if (*(v1 + 88) == 1)
  {
    v5 = 0x80000001E1B76220;
    v6 = 0xD000000000000016;
    if (*(v3 + 208) == 1)
    {
      return localizedStringForAdsLanguage(_:)(*&v6)._countAndFlagsBits;
    }

    goto LABEL_22;
  }

  v11 = a1[6];
  v12 = v11 >> 60;
  if (!(v11 >> 60))
  {
    goto LABEL_17;
  }

  v13 = *a1;
  if (v12 == 1)
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    v17 = "Offer.Label.Preordered";
LABEL_21:
    v5 = (v17 - 32) | 0x8000000000000000;
    v6 = 0xD000000000000016;
    goto LABEL_22;
  }

  if (v12 != 8)
  {
    return 0;
  }

  v14 = a1[3];
  v15 = a1[2] | a1[1];
  v16 = a1[4] | a1[5] | a1[7];
  if (v11 == 0x8000000000000000 && !(v15 | v13 | v14 | v16) || (result = 0, v11 == 0x8000000000000000) && v13 == 4 && !(v15 | v14 | v16))
  {
LABEL_17:
    v6 = 0xD000000000000014;
    v5 = 0x80000001E1B76200;
LABEL_22:
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    return localizedString(_:comment:)(*&v6, v18)._countAndFlagsBits;
  }

  return result;
}

uint64_t OfferLabelPresenter.deinit()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 80);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_1E1337DEC(v0 + 56);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t OfferLabelPresenter.__deallocating_deinit()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 80);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_1E1337DEC(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

char *SearchSegmentChangeAction.__allocating_init(title:targetSegmentId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = &v14[OBJC_IVAR____TtC11AppStoreKit25SearchSegmentChangeAction_targetSegmentId];
  *v15 = a3;
  *(v15 + 1) = a4;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v16 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v17 = sub_1E1AF3E1C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a5, v17);
  v19 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v20 = sub_1E1AF46DC();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  v21 = &v14[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &v14[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v38, &v35);
  if (*(&v36 + 1))
  {
    v23 = v36;
    *v22 = v35;
    *(v22 + 1) = v23;
    *(v22 + 4) = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v25 = v10;
    v26 = a5;
    v27 = a1;
    v28 = a2;
    v29 = v24;
    v30 = v11;
    v32 = v31;
    (*(v30 + 8))(v13, v25);
    v34[1] = v29;
    v34[2] = v32;
    a2 = v28;
    a1 = v27;
    a5 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  (*(v18 + 8))(a5, v17);
  sub_1E1308058(v38, &unk_1ECEB5670);
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  return v14;
}

void *SearchSegmentChangeAction.init(title:targetSegmentId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a1;
  v32 = a2;
  v10 = sub_1E1AEFEAC();
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v6 + OBJC_IVAR____TtC11AppStoreKit25SearchSegmentChangeAction_targetSegmentId);
  *v20 = a3;
  v20[1] = a4;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_1E1AF46DC();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_1E138853C(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v25 = v24;
    (*(v30 + 8))(v12, v10);
    v33 = v23;
    v34 = v25;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  (*(v17 + 8))(a5, v16);
  sub_1E1308058(v41, &unk_1ECEB5670);
  v26 = v6 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v26 + 4) = v40;
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  sub_1E134B7C8(v15, v6 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v28 = v32;
  v6[2] = v31;
  v6[3] = v28;
  v6[4] = 0;
  v6[5] = 0;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t SearchSegmentChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v27 = *v3;
  v31 = sub_1E1AF39DC();
  v35 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v33 = a1;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v15 = v14;
  v16 = *(v7 + 8);
  v34 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v30 + OBJC_IVAR____TtC11AppStoreKit25SearchSegmentChangeAction_targetSegmentId);
    *v17 = v13;
    v17[1] = v15;
    v18 = v33;
    (*(v7 + 16))(v10, v33, v34);
    v6 = v28;
    v20 = v31;
    v19 = v32;
    (*(v35 + 16))(v28, v32, v31);
    v21 = v29;
    v22 = Action.init(deserializing:using:)(v10, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v35 + 8))(v19, v20);
    v16(v18, v34);
  }

  else
  {
    v23 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v24 = 0x6553746567726174;
    v25 = v27;
    v24[1] = 0xEF6449746E656D67;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E69AB690], v23);
    swift_willThrow();
    (*(v35 + 8))(v32, v31);
    v16(v33, v34);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t SearchSegmentChangeAction.targetSegmentId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25SearchSegmentChangeAction_targetSegmentId);

  return v1;
}

uint64_t SearchSegmentChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t SearchSegmentChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchSegmentChangeAction()
{
  result = qword_1ECEB9528;
  if (!qword_1ECEB9528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LinkableTextCollectionViewCellLayout.init(metrics:textLabel:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  return sub_1E1308EC0(a2, a3 + 40);
}

uint64_t LinkableTextCollectionViewCellLayout.layout.getter()
{
  v1 = sub_1E1AF15FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF15DC();
  sub_1E1300B24(v0 + 40, v14);
  sub_1E17C137C(v0, v13);
  sub_1E1308EC0(v13, &v12);
  v5 = sub_1E1AF140C();
  v6 = MEMORY[0x1E69AB908];
  v11[3] = v5;
  v11[4] = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v11);
  sub_1E1AF13FC();
  v10[3] = v5;
  v10[4] = v6;
  __swift_allocate_boxed_opaque_existential_0(v10);
  sub_1E1AF13FC();
  v9[3] = v5;
  v9[4] = v6;
  __swift_allocate_boxed_opaque_existential_0(v9);
  sub_1E1AF13FC();
  v15[3] = sub_1E1AF1BEC();
  v15[4] = MEMORY[0x1E69ABB40];
  __swift_allocate_boxed_opaque_existential_0(v15);
  sub_1E1AF1BFC();
  sub_1E1AF15EC();
  (*(v2 + 8))(v4, v1);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

unint64_t sub_1E17C15E4()
{
  result = qword_1ECEB9538;
  if (!qword_1ECEB9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9538);
  }

  return result;
}

unint64_t sub_1E17C163C()
{
  result = qword_1ECEB9540;
  if (!qword_1ECEB9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9540);
  }

  return result;
}

double sub_1E17C16BC()
{
  v0 = sub_1E1AF15FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LinkableTextCollectionViewCellLayout.layout.getter();
  sub_1E1AF1DAC();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1E17C17E0()
{
  v0 = sub_1E1AF15FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LinkableTextCollectionViewCellLayout.layout.getter();
  sub_1E1AF1D9C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1E17C18F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E17C1968();

  return MEMORY[0x1EEE17F00](a1, a2, v4);
}

unint64_t sub_1E17C1968()
{
  result = qword_1ECEB9548;
  if (!qword_1ECEB9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9548);
  }

  return result;
}

int64x2_t sub_1E17C19BC()
{
  result = vdupq_n_s64(4uLL);
  v1 = *MEMORY[0x1E69DDCE0];
  v2 = *(MEMORY[0x1E69DDCE0] + 8);
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  v4 = *(MEMORY[0x1E69DDCE0] + 24);
  xmmword_1ECEF4AE0 = result;
  qword_1ECEF4AF0 = v1;
  unk_1ECEF4AF8 = v2;
  *&xmmword_1ECEF4B00 = v3;
  *(&xmmword_1ECEF4B00 + 1) = v4;
  qword_1ECEF4B10 = v1;
  unk_1ECEF4B18 = v2;
  *&xmmword_1ECEF4B20 = v3;
  *(&xmmword_1ECEF4B20 + 1) = v4;
  return result;
}

uint64_t TodayCardArtworkLayout.init(collapsedContentMode:expandedContentMode:collapsedLayoutInsets:expandedLayoutInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, double a11@<D7>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = a8;
  *(a3 + 56) = a9;
  *(a3 + 64) = a10;
  *(a3 + 72) = a11;
  return result;
}

void TodayCardArtworkLayout.collapsedLayoutInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

void TodayCardArtworkLayout.expandedLayoutInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

uint64_t TodayCardArtworkLayout.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v129 = a2;
  v130 = a3;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v128 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v127 = &v112 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v126 = &v112 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v112 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v124 = &v112 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v112 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v112 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v112 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v118 = &v112 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v117 = &v112 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v116 = &v112 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v115 = &v112 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v114 = &v112 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v113 = &v112 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v112 = &v112 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v112 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v112 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v112 - v42;
  sub_1E1AF381C();
  v44 = sub_1E1AF36EC();
  v46 = v45;
  v47 = *(v5 + 8);
  v47(v43, v4);
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = v44;
  }

  v123 = v48;
  sub_1E1AF381C();
  v49 = sub_1E1AF36EC();
  v51 = v50;
  v47(v40, v4);
  if (v51)
  {
    v52 = 4;
  }

  else
  {
    v52 = v49;
  }

  v121 = v52;
  v53 = a1;
  sub_1E1AF381C();
  v54 = v112;
  sub_1E1AF381C();
  v47(v37, v4);
  v55 = COERCE_DOUBLE(sub_1E1AF379C());
  v57 = v56;
  v47(v54, v4);
  if (v57)
  {
    v58 = 0.0;
  }

  else
  {
    v58 = v55;
  }

  v59 = v113;
  sub_1E1AF381C();
  v60 = v114;
  sub_1E1AF381C();
  v47(v59, v4);
  v61 = v60;
  v62 = COERCE_DOUBLE(sub_1E1AF379C());
  v64 = v63;
  v47(v61, v4);
  if (v64)
  {
    v65 = 0.0;
  }

  else
  {
    v65 = v62;
  }

  v66 = v115;
  sub_1E1AF381C();
  v67 = v116;
  sub_1E1AF381C();
  v47(v66, v4);
  v68 = v67;
  v69 = COERCE_DOUBLE(sub_1E1AF379C());
  v71 = v70;
  v47(v68, v4);
  if (v71)
  {
    v72 = 0.0;
  }

  else
  {
    v72 = v69;
  }

  v73 = v117;
  sub_1E1AF381C();
  v74 = v118;
  sub_1E1AF381C();
  v47(v73, v4);
  v75 = v74;
  v76 = COERCE_DOUBLE(sub_1E1AF379C());
  v78 = v77;
  v47(v75, v4);
  if (v78)
  {
    v79 = 0.0;
  }

  else
  {
    v79 = v76;
  }

  v80 = v119;
  sub_1E1AF381C();
  v81 = v120;
  sub_1E1AF381C();
  v47(v80, v4);
  v82 = v81;
  v83 = COERCE_DOUBLE(sub_1E1AF379C());
  v85 = v84;
  v47(v82, v4);
  if (v85)
  {
    v86 = 0.0;
  }

  else
  {
    v86 = v83;
  }

  v87 = v122;
  sub_1E1AF381C();
  v88 = v124;
  sub_1E1AF381C();
  v47(v87, v4);
  v89 = v88;
  v90 = COERCE_DOUBLE(sub_1E1AF379C());
  v92 = v91;
  v47(v89, v4);
  if (v92)
  {
    v93 = 0.0;
  }

  else
  {
    v93 = v90;
  }

  v94 = v125;
  sub_1E1AF381C();
  v95 = v126;
  sub_1E1AF381C();
  v47(v94, v4);
  v96 = v95;
  v97 = COERCE_DOUBLE(sub_1E1AF379C());
  v99 = v98;
  v47(v96, v4);
  if (v99)
  {
    v100 = 0.0;
  }

  else
  {
    v100 = v97;
  }

  v101 = v127;
  sub_1E1AF381C();
  v102 = v128;
  sub_1E1AF381C();
  v47(v101, v4);
  v103 = v102;
  v104 = sub_1E1AF379C();
  v106 = v105;
  v107 = sub_1E1AF39DC();
  (*(*(v107 - 8) + 8))(v129, v107);
  v47(v53, v4);
  result = (v47)(v103, v4);
  v109 = *&v104;
  if (v106)
  {
    v109 = 0.0;
  }

  v110 = v130;
  v111 = v121;
  *v130 = v123;
  *(v110 + 1) = v111;
  v110[2] = v58;
  v110[3] = v65;
  v110[4] = v72;
  v110[5] = v79;
  v110[6] = v86;
  v110[7] = v93;
  v110[8] = v100;
  v110[9] = v109;
  return result;
}

uint64_t _s11AppStoreKit22TodayCardArtworkLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = 0;
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))), xmmword_1E1B264B0)) & 0xF) == 0)
  {
    v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 48), *(a2 + 48)), vceqq_f64(*(a1 + 64), *(a2 + 64)))));
  }

  return v2 & 1;
}

uint64_t sub_1E17C2458(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E17C2478(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 80) = v3;
  return result;
}

AppStoreKit::EditorialDisplayOptions __swiftcall EditorialDisplayOptions.init(useGeneratedBackground:suppressLockup:suppressTagline:showBadgeInSmallCards:showAppIcon:useMaterialBlur:useTextProtectionColor:)(Swift::Bool useGeneratedBackground, Swift::Bool suppressLockup, Swift::Bool suppressTagline, Swift::Bool showBadgeInSmallCards, Swift::Bool showAppIcon, Swift::Bool useMaterialBlur, Swift::Bool useTextProtectionColor)
{
  *v7 = useGeneratedBackground;
  v7[1] = suppressLockup;
  v7[2] = suppressTagline;
  v7[3] = showBadgeInSmallCards;
  v7[4] = showAppIcon;
  v7[5] = useMaterialBlur;
  v7[6] = useTextProtectionColor;
  result.useGeneratedBackground = useGeneratedBackground;
  return result;
}

uint64_t static EditorialDisplayOptions.default.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1ECEB1190 != -1)
  {
    v7 = a1;
    result = swift_once();
    a1 = v7;
  }

  v1 = BYTE1(dword_1ECEB9550);
  v2 = BYTE2(dword_1ECEB9550);
  v3 = HIBYTE(dword_1ECEB9550);
  v4 = byte_1ECEB9554;
  v5 = byte_1ECEB9555;
  v6 = byte_1ECEB9556;
  *a1 = dword_1ECEB9550;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  return result;
}

uint64_t EditorialDisplayOptions.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v43 = a3;
  v42 = a2;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  sub_1E1AF381C();
  v23 = sub_1E1AF370C();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v49 = v23 & 1;
  sub_1E1AF381C();
  v25 = sub_1E1AF370C();
  v24(v19, v4);
  v48 = v25 & 1;
  sub_1E1AF381C();
  v26 = sub_1E1AF370C();
  v24(v16, v4);
  v47 = v26 & 1;
  sub_1E1AF381C();
  v27 = sub_1E1AF370C();
  v24(v13, v4);
  v46 = v27 & 1;
  v28 = v39;
  sub_1E1AF381C();
  LOBYTE(v13) = sub_1E1AF370C();
  v24(v28, v4);
  v45 = v13 & 1;
  v29 = v40;
  sub_1E1AF381C();
  LOBYTE(v13) = sub_1E1AF370C();
  v24(v29, v4);
  v44 = v13 & 1;
  v30 = v41;
  sub_1E1AF381C();
  LOBYTE(v13) = sub_1E1AF370C();
  v31 = sub_1E1AF39DC();
  (*(*(v31 - 8) + 8))(v42, v31);
  v24(a1, v4);
  result = (v24)(v30, v4);
  v33 = v48;
  v34 = v47;
  v35 = v46;
  v36 = v45;
  v37 = v44;
  v38 = v43;
  *v43 = v49;
  v38[1] = v33;
  v38[2] = v34;
  v38[3] = v35;
  v38[4] = v36;
  v38[5] = v37;
  v38[6] = v13 & 1;
  return result;
}

uint64_t EditorialDisplayOptions.hash(into:)()
{
  sub_1E1AF764C();
  sub_1E1AF764C();
  sub_1E1AF764C();
  sub_1E1AF764C();
  sub_1E1AF764C();
  sub_1E1AF764C();
  return sub_1E1AF764C();
}

uint64_t EditorialDisplayOptions.hashValue.getter()
{
  sub_1E1AF762C();
  EditorialDisplayOptions.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E17C2B28()
{
  sub_1E1AF762C();
  EditorialDisplayOptions.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E17C2BA8()
{
  sub_1E1AF762C();
  EditorialDisplayOptions.hash(into:)();
  return sub_1E1AF767C();
}

unint64_t sub_1E17C2CB8()
{
  result = qword_1ECEB9558;
  if (!qword_1ECEB9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9558);
  }

  return result;
}

_DWORD *__swift_memcpy7_1(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EditorialDisplayOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
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

uint64_t storeEnumTagSinglePayload for EditorialDisplayOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void SponsoredSearchOrganic.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1E1AF6C4C();
  v5 = sub_1E1AF6C2C();
  v7 = v6;

  if (v7)
  {
    v8 = sub_1E1AF6C4C();
    v9 = [v8 toDictionary];

    if (v9)
    {
      v10 = sub_1E1AF5C7C();

      *a2 = v5;
      a2[1] = v7;
      a2[2] = v10;
      return;
    }

    sub_1E1AF6C4C();
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
  }

  else
  {
    sub_1E1AF6C4C();
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
  }

  sub_1E1AF56BC();
  swift_willThrow();
}

void *SponsoredSearchOrganic.init(adamId:assetInformation:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = a2;
  return result;
}

uint64_t SponsoredSearchOrganic.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MSODiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:context:personalizationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  v68 = a3;
  v74 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v67 - v13;
  v69 = &v67 - v13;
  v15 = swift_allocObject();
  v16 = (v15 + qword_1ECEB9560);
  v17 = a6[1];
  *v16 = *a6;
  v16[1] = v17;
  *(v15 + qword_1ECEB9568) = a7;
  v73 = a2;
  sub_1E1307FE8(a2, v14);
  *(v15 + qword_1EE1E9D48) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v15 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v19 = qword_1EE2166A0;
  v72 = a5;

  v70 = a7;

  v71 = a4;

  *(v15 + v19) = sub_1E159D6F0(v18);
  v20 = (v15 + qword_1EE1E9E00);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v15 + qword_1EE1E9EA0);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v15 + qword_1EE1E9E08);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v15 + qword_1EE1E9DF0);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v15 + qword_1EE1E9E98);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v15 + qword_1EE216698);
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 25) = 0u;
  *(v15 + qword_1EE2166D0) = 0;
  *(v15 + qword_1EE1E9D50) = 0;
  *(v15 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v15 + qword_1EE2166C8) = 0;
  v26 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33F0);
  swift_allocObject();
  *(v15 + v26) = sub_1E1AF5BEC();
  v27 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v15 + v27) = sub_1E1AF5BEC();
  v28 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3400);
  swift_allocObject();
  *(v15 + v28) = sub_1E1AF5BEC();
  v29 = qword_1EE2166B0;
  swift_allocObject();
  *(v15 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v15 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *(v15 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE1E9DD8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v34 = *(*(v33 - 8) + 56);
  v34(v15 + v32, 1, 1, v33);
  v34(v15 + qword_1EE1E9DE0, 1, 1, v33);
  *(v15 + 16) = v74;
  sub_1E13E23F8(v69, v15 + qword_1EE216678);
  v35 = *v20;
  *v20 = 0;
  v20[1] = 0;
  v36 = v68;
  sub_1E1300EA8(v35);
  v37 = *v22;
  *v22 = 0;
  v22[1] = 0;
  sub_1E1300EA8(v37);
  if (v36)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    v39 = sub_1E1445E6C;
  }

  else
  {
    v39 = 0;
    v38 = 0;
  }

  v40 = *v21;
  *v21 = v39;
  v21[1] = v38;
  sub_1E1300EA8(v40);
  v41 = *v23;
  *v23 = 0;
  v23[1] = 0;
  sub_1E1300EA8(v41);
  v42 = *v24;
  *v24 = 0;
  v24[1] = 0;
  sub_1E1300EA8(v42);
  v43 = v72;
  *(v15 + qword_1EE1E9E90) = v71;
  *(v15 + qword_1EE216690) = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v36;
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1E1632FF4;
  *(v46 + 24) = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1E1543608;
  *(v47 + 24) = v46;
  v48 = (v15 + qword_1EE1E9E00);
  v49 = *(v15 + qword_1EE1E9E00);
  *v48 = sub_1E13E24A0;
  v48[1] = v47;

  sub_1E1300EA8(v49);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1E138157C;
  *(v50 + 24) = v44;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1E154366C;
  *(v51 + 24) = v50;
  v52 = (v15 + qword_1EE1E9EA0);
  v53 = *(v15 + qword_1EE1E9EA0);
  *v52 = sub_1E13E24C0;
  v52[1] = v51;

  sub_1E1300EA8(v53);
  v54 = (v15 + qword_1EE1E9E08);
  v56 = *(v15 + qword_1EE1E9E08);
  v55 = *(v15 + qword_1EE1E9E08 + 8);
  if (v56)
  {
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v55;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1E1543638;
    *(v58 + 24) = v57;
    v59 = sub_1E13E24B0;
  }

  else
  {
    v59 = 0;
    v58 = *(v15 + qword_1EE1E9E08 + 8);
  }

  *v54 = v59;
  v54[1] = v58;
  sub_1E1300E34(v56);
  sub_1E1300EA8(v56);
  v60 = (v15 + qword_1EE1E9E98);
  v62 = *(v15 + qword_1EE1E9E98);
  v61 = *(v15 + qword_1EE1E9E98 + 8);
  if (v62)
  {
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = v61;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_1E1543608;
    *(v64 + 24) = v63;
    v65 = sub_1E13E24A0;
  }

  else
  {
    v65 = 0;
    v64 = *(v15 + qword_1EE1E9E98 + 8);
  }

  *v60 = v65;
  v60[1] = v64;
  sub_1E1300E34(v62);
  sub_1E1300EA8(v62);

  sub_1E1308058(v73, &unk_1ECEB4B60);
  return v15;
}

uint64_t MSODiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:context:personalizationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  v8 = v7;
  v69 = a3;
  v75 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v68 - v15;
  v70 = &v68 - v15;
  v17 = (v8 + qword_1ECEB9560);
  v18 = a6[1];
  *v17 = *a6;
  v17[1] = v18;
  *(v8 + qword_1ECEB9568) = a7;
  v74 = a2;
  sub_1E1307FE8(a2, v16);
  *(v8 + qword_1EE1E9D48) = 0;
  v19 = MEMORY[0x1E69E7CC0];
  *(v8 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v20 = qword_1EE2166A0;
  v73 = a5;

  v71 = a7;

  v72 = a4;

  *(v8 + v20) = sub_1E159D6F0(v19);
  v21 = (v8 + qword_1EE1E9E00);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v8 + qword_1EE1E9EA0);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v8 + qword_1EE1E9E08);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v8 + qword_1EE1E9DF0);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v8 + qword_1EE1E9E98);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v8 + qword_1EE216698);
  *v26 = 0u;
  v26[1] = 0u;
  *(v26 + 25) = 0u;
  *(v8 + qword_1EE2166D0) = 0;
  *(v8 + qword_1EE1E9D50) = 0;
  *(v8 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v8 + qword_1EE2166C8) = 0;
  v27 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33F0);
  swift_allocObject();
  *(v8 + v27) = sub_1E1AF5BEC();
  v28 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v8 + v28) = sub_1E1AF5BEC();
  v29 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3400);
  swift_allocObject();
  *(v8 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE2166B0;
  swift_allocObject();
  *(v8 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v8 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *(v8 + v32) = sub_1E1AF5BEC();
  v33 = qword_1EE1E9DD8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v35 = *(*(v34 - 8) + 56);
  v35(v8 + v33, 1, 1, v34);
  v35(v8 + qword_1EE1E9DE0, 1, 1, v34);
  *(v8 + 16) = v75;
  sub_1E13E23F8(v70, v8 + qword_1EE216678);
  v36 = *v21;
  *v21 = 0;
  v21[1] = 0;
  sub_1E1300EA8(v36);
  v37 = *v23;
  *v23 = 0;
  v23[1] = 0;
  v38 = v69;
  sub_1E1300EA8(v37);
  if (v38)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    v40 = sub_1E155BD80;
  }

  else
  {
    v40 = 0;
    v39 = 0;
  }

  v41 = *v22;
  *v22 = v40;
  v22[1] = v39;
  sub_1E1300EA8(v41);
  v42 = *v24;
  *v24 = 0;
  v24[1] = 0;
  sub_1E1300EA8(v42);
  v43 = *v25;
  *v25 = 0;
  v25[1] = 0;
  sub_1E1300EA8(v43);
  v44 = v73;
  *(v8 + qword_1EE1E9E90) = v72;
  *(v8 + qword_1EE216690) = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = v38;
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1E17C52D4;
  *(v47 + 24) = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1E17C52CC;
  *(v48 + 24) = v47;
  v49 = (v8 + qword_1EE1E9E00);
  v50 = *(v8 + qword_1EE1E9E00);
  *v49 = sub_1E17C5300;
  v49[1] = v48;

  sub_1E1300EA8(v50);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1E17C52D8;
  *(v51 + 24) = v45;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1E16DBD44;
  *(v52 + 24) = v51;
  v53 = (v8 + qword_1EE1E9EA0);
  v54 = *(v8 + qword_1EE1E9EA0);
  *v53 = sub_1E17C52D0;
  v53[1] = v52;

  sub_1E1300EA8(v54);
  v55 = (v8 + qword_1EE1E9E08);
  v57 = *(v8 + qword_1EE1E9E08);
  v56 = *(v8 + qword_1EE1E9E08 + 8);
  if (v57)
  {
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v56;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1E17C52C8;
    *(v59 + 24) = v58;
    v60 = sub_1E17C5304;
  }

  else
  {
    v60 = 0;
    v59 = *(v8 + qword_1EE1E9E08 + 8);
  }

  *v55 = v60;
  v55[1] = v59;
  sub_1E1300E34(v57);
  sub_1E1300EA8(v57);
  v61 = (v8 + qword_1EE1E9E98);
  v63 = *(v8 + qword_1EE1E9E98);
  v62 = *(v8 + qword_1EE1E9E98 + 8);
  if (v63)
  {
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v62;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1E17C52CC;
    *(v65 + 24) = v64;
    v66 = sub_1E17C5300;
  }

  else
  {
    v66 = 0;
    v65 = *(v8 + qword_1EE1E9E98 + 8);
  }

  *v61 = v66;
  v61[1] = v65;
  sub_1E1300E34(v63);
  sub_1E1300EA8(v63);

  sub_1E1308058(v74, &unk_1ECEB4B60);
  return v8;
}

uint64_t sub_1E17C3ED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - v3;
  v5 = sub_1E1AEFCCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v13 = Strong;
  sub_1E1307FE8(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_1E1308058(v4, &unk_1ECEB4B60);
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2878);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9580);
    sub_1E1302CD4(&qword_1ECEB9588, &qword_1ECEB9580);
    swift_allocError();
    *v14 = 0;
    return sub_1E1AF581C();
  }

  v16 = *(v6 + 32);
  v16(v11, v4, v5);
  sub_1E17C426C();
  (*(v6 + 16))(v8, v11, v5);
  v17 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v16((v18 + v17), v8, v5);
  v20[3] = sub_1E1AF470C();
  v20[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v20);

  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2878);
  sub_1E1302CD4(&qword_1ECEB2FE8, &qword_1ECEB2878);
  v19 = sub_1E1AF585C();

  (*(v6 + 8))(v11, v5);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v19;
}

uint64_t sub_1E17C426C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  v5 = (v0 + qword_1ECEB9560);
  v6 = *(v0 + qword_1ECEB9560 + 8);
  if (v6)
  {
    v8 = v5[2];
    v7 = v5[3];
    v9 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FF0);
    *&v15 = v9;
    *(&v15 + 1) = v6;
    *&v16 = v8;
    *(&v16 + 1) = v7;

    return sub_1E1AF582C();
  }

  if (!*(v0 + qword_1ECEB9568))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FF0);
    v15 = 0u;
    v16 = 0u;
    return sub_1E1AF582C();
  }

  v11 = sub_1E13C4918(&unk_1F5C2DB10);
  sub_1E15E75E8(v11);

  sub_1E1307FE8(v0 + qword_1EE216678, v4);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = swift_allocObject();
  sub_1E13E23F8(v4, v13 + v12);
  *(&v16 + 1) = sub_1E1AF470C();
  v17 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v15);
  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3018);
  v14 = sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(&v15);
  return v14;
}

uint64_t sub_1E17C44BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v5 = sub_1E1AEFCCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MSOPageIntent();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v26 = *a1;
  v13 = a1[2];
  v23 = a1[3];
  type metadata accessor for JSIntentDispatcher();
  v25 = a2;
  v14 = *(a2 + 16);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v24 = v27[0];
  (*(v6 + 16))(v8, v22, v5);
  if (v12)
  {

    v15 = v13;
    v16 = v26;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  strcpy(v11, "MSOPageIntent");
  *(v11 + 7) = -4864;
  (*(v6 + 32))(&v11[v9[5]], v8, v5);
  v17 = &v11[v9[6]];
  *v17 = v16;
  *(v17 + 1) = v12;
  *&v11[v9[7]] = v15;
  sub_1E13690EC(v11, v14, "AppStoreKit/MSODiffablePageContentPresenter.swift", 49, 2);
  v18 = swift_allocObject();
  v19 = v26;
  v18[2] = v25;
  v18[3] = v19;
  v18[4] = v12;
  v18[5] = v13;
  v18[6] = v23;
  v27[3] = sub_1E1AF470C();
  v27[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v27);

  sub_1E13BBA90(v19, v12);
  sub_1E1AF46FC();
  type metadata accessor for GenericPage();
  v20 = sub_1E1AF57DC();

  sub_1E13BBFB0(v11);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v20;
}

uint64_t sub_1E17C47B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v30 = a6;
  v31 = a3;
  v32 = a5;
  v33 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_1E1AEFCCC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if (a4)
  {
    sub_1E1307FE8(a2 + qword_1EE216678, v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_1E1308058(v15, &unk_1ECEB4B60);
    }

    else
    {
      (*(v17 + 32))(v19, v15, v16);

      v21 = v30;

      v36 = sub_1E1AEFBDC();
      v37 = v22;
      v34 = v31;
      v35 = a4;
      v23 = sub_1E1AEFF8C();
      (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
      sub_1E13B8AA4();

      sub_1E1AF6E6C();
      v25 = v24;
      sub_1E1308058(v12, &qword_1ECEB2FC8);
      (*(v17 + 8))(v19, v16);

      if ((v25 & 1) == 0)
      {
        v27 = *(v21 + OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_roomUber);

        sub_1E13BBAE0(v31, a4);
        goto LABEL_7;
      }

      sub_1E13BBAE0(v31, a4);
    }
  }

  v26 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  swift_beginAccess();
  v27 = *(v20 + v26);

LABEL_7:
  v28 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  swift_beginAccess();
  *(v20 + v28) = v27;

  *v33 = v20;
}

void sub_1E17C4B50(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  if (v16)
  {
    v17 = *a1;
    v18 = a1[2];
    v19 = a1[3];
    v25 = v17;
    v26 = v18;
    sub_1E1307FE8(a2, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1E1308058(v11, &unk_1ECEB4B60);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);

      v29 = sub_1E1AEFBDC();
      v30 = v20;
      v27 = v25;
      v28 = v16;
      v21 = sub_1E1AEFF8C();
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
      sub_1E13B8AA4();

      sub_1E1AF6E6C();
      v23 = v22;
      sub_1E1308058(v8, &qword_1ECEB2FC8);
      (*(v13 + 8))(v15, v12);

      if ((v23 & 1) == 0)
      {
        v24 = v26;
        *a3 = v25;
        a3[1] = v16;
        a3[2] = v24;
        a3[3] = v19;
        return;
      }

      sub_1E13BBAE0(v25, v16);
    }
  }

  *a3 = 0u;
  *(a3 + 1) = 0u;
}

uint64_t sub_1E17C4E94()
{
  sub_1E13BBAE0(*(v0 + qword_1ECEB9560), *(v0 + qword_1ECEB9560 + 8));
}

uint64_t MSODiffablePageContentPresenter.deinit()
{
  v0 = _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();
  sub_1E13BBAE0(*(v0 + qword_1ECEB9560), *(v0 + qword_1ECEB9560 + 8));

  return v0;
}

uint64_t MSODiffablePageContentPresenter.__deallocating_deinit()
{
  v0 = _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();
  v1 = *(v0 + qword_1ECEB9560);
  v2 = *(v0 + qword_1ECEB9560 + 8);

  sub_1E13BBAE0(v1, v2);

  return swift_deallocClassInstance();
}

void sub_1E17C4FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1E1300EA8(a10);
  sub_1E1300EA8(a6);
  sub_1E1300EA8(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1E17C5050@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1E17C5080@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1E17C50B0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t type metadata accessor for MSODiffablePageContentPresenter()
{
  result = qword_1ECEB9570;
  if (!qword_1ECEB9570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E17C51A8(uint64_t *a1)
{
  v3 = *(sub_1E1AEFCCC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1E17C44BC(a1, v4, v5);
}

const char *sub_1E17C5308(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v47 = a5;
  v59 = a3;
  v60 = a4;
  v9 = sub_1E1AF5AAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1E1AF320C();
  v13 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v16 = MEMORY[0x1E68FD610]();
  if (v16)
  {
    v45 = v10;
    v46 = v9;
    v56 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB95B0);
    v17 = sub_1E1AF588C();
    v53 = v15;
    v18 = OBJC_IVAR____TtC11AppStoreKit16JSTimeoutManager_activePromisesBox;
    v19 = *(a2 + OBJC_IVAR____TtC11AppStoreKit16JSTimeoutManager_activePromisesBox);
    MEMORY[0x1EEE9AC00](v17);
    v57 = v12;
    v44[-4] = sub_1E131B138;
    v44[-3] = 0;
    v42 = v19;
    v55 = a1;
    v20 = v60;

    v48 = v13;
    v49 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB95A0);
    sub_1E1AF690C();
    v54 = v6;

    v21 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v21;
    sub_1E159BDA4(v17, v59, v20, isUniquelyReferenced_nonNull_native);

    v51 = v61;
    v52 = v44;
    v44[1] = a2;
    v24 = *(a2 + v18);
    MEMORY[0x1EEE9AC00](v23);
    v42 = v25;
    v50 = *(v24 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v26 = v48;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v61 = v27;
    sub_1E1302B6C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    v28 = v57;
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v29 = v53;
    v30 = v49;
    v31 = v58;
    v32 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v32);
    v44[-4] = sub_1E15D169C;
    v44[-3] = &v44[-4];
    v42 = v24;
    v33 = v54;
    sub_1E1AF68FC();
    v34 = v33;

    (*(v26 + 8))(v29, v31);

    v35 = swift_allocObject();
    v36 = v56;
    *(v35 + 16) = v30;
    *(v35 + 24) = v36;

    v37 = v55;

    sub_1E1AF5A8C();
    if (v33)
    {
    }

    else
    {
      v39 = v59;
      v38 = v60;
      if (v47)
      {
        v40 = v47;
        sub_1E17C6284(v30, v39, v38, v40);
      }

      v34 = sub_1E1AF5A9C();

      (*(v45 + 8))(v28, v46);
    }
  }

  else
  {
    v34 = "JSTimeoutManager.promiseQueue";
    sub_1E1AF56FC();
    sub_1E1302B6C(&qword_1EE1D2810, MEMORY[0x1E69AB618]);
    swift_allocError();
    v42 = 0;
    v43 = 0;
    sub_1E1AF569C();
    swift_willThrow();
  }

  return v34;
}

uint64_t sub_1E17C58EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a4;
  v19 = a3;
  v20 = a1;
  v6 = sub_1E1AF364C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v11(v10, a2, v6, v9);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v13 = *(v7 + 32);
  v13(v18 + v12, v10, v6);
  (v11)(v10, v19, v6);
  v14 = swift_allocObject();
  v13(v14 + v12, v10, v6);
  v15 = v20;
  *(v14 + ((v12 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v23[3] = sub_1E1AF490C();
  v23[4] = MEMORY[0x1E69AB298];
  v23[0] = v21;
  v16 = v15;

  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

void sub_1E17C5AF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E1B02CC0;
  v1 = [objc_allocWithZone(MEMORY[0x1E696EB58]) init];
  *(v0 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
  *(v0 + 32) = v1;
  v2 = sub_1E1AF363C();
}

void sub_1E17C5D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E1B02CC0;
  v6 = sub_1E13006E4(0, &qword_1EE1E32A8);
  v7 = MEMORY[0x1E68FF960](a1, a3);
  *(v5 + 56) = v6;
  *(v5 + 32) = v7;
  v8 = sub_1E1AF363C();
}

uint64_t sub_1E17C60E0(void *a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB95A0);
  sub_1E1AF690C();

  if (!*(v10 + 16))
  {
  }

  v6 = sub_1E13018F8(a2, a3);
  if ((v7 & 1) == 0)
  {
  }

  v8 = *(*(v10 + 56) + 8 * v6);

  if ((sub_1E1AF57BC() & 1) == 0)
  {
    sub_1E17C6284(v8, a2, a3, a1);
  }
}

uint64_t sub_1E17C6284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a2;
  v30 = sub_1E1AF320C();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E1AF324C();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF326C();
  v27 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  v28 = *(v4 + OBJC_IVAR____TtC11AppStoreKit16JSTimeoutManager_promiseQueue);
  sub_1E1AF325C();
  [a4 doubleValue];
  sub_1E1AF32DC();
  v26 = *(v13 + 8);
  v26(v15, v12);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = v25;
  v20[5] = a3;
  aBlock[4] = sub_1E17C6DE8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_71;
  v21 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1E1302B6C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  v22 = v30;
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF5E0](v18, v11, v9, v21);
  _Block_release(v21);
  (*(v32 + 8))(v9, v22);
  (*(v29 + 8))(v11, v31);
  v26(v18, v27);
}

void sub_1E17C6698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E1AF320C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_1E1AF57BC();
    if ((v13 & 1) == 0)
    {
      v23 = v22;
      v14 = OBJC_IVAR____TtC11AppStoreKit16JSTimeoutManager_activePromisesBox;
      v15 = *&v12[OBJC_IVAR____TtC11AppStoreKit16JSTimeoutManager_activePromisesBox];
      MEMORY[0x1EEE9AC00](v13);
      v25 = a2;
      v22[-4] = sub_1E131B138;
      v22[-3] = 0;
      v22[-2] = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB95A0);
      sub_1E1AF690C();
      v24 = 0;

      sub_1E1496E9C(a3, a4);

      v22[2] = v27;
      v23 = v22;
      v17 = *&v12[v14];
      MEMORY[0x1EEE9AC00](v16);
      v22[-2] = v18;
      v22[1] = *(v17 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1E1B02CC0;

      sub_1E1AF31FC();
      v26 = v19;
      sub_1E1302B6C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
      v20 = sub_1E1AF6EEC();
      MEMORY[0x1EEE9AC00](v20);
      v22[-4] = sub_1E15D11E8;
      v22[-3] = &v22[-4];
      v22[-2] = v17;
      sub_1E1AF68FC();

      (*(v8 + 8))(v10, v7);

      v21 = [objc_allocWithZone(MEMORY[0x1E696EB58]) init];
      v27 = v21;
      sub_1E1AF586C();
    }
  }
}

id sub_1E17C6A4C()
{
  v13 = sub_1E1AF68DC();
  v0 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v2 = v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v12 = OBJC_IVAR____TtC11AppStoreKit16JSTimeoutManager_promiseQueue;
  v11[1] = sub_1E13006E4(0, &qword_1EE1E3430);
  sub_1E1AF322C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1E1302B6C(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v13);
  v5 = sub_1E1AF692C();
  v6 = v14;
  *&v14[v12] = v5;
  v7 = OBJC_IVAR____TtC11AppStoreKit16JSTimeoutManager_activePromisesBox;
  v8 = sub_1E15A254C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB95A8);
  swift_allocObject();
  *&v6[v7] = sub_1E14C5D90(v8);
  v9 = type metadata accessor for JSTimeoutManager();
  v15.receiver = v6;
  v15.super_class = v9;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_1E17C6D44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSTimeoutManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E17C6E30()
{
  sub_1E1AF364C();

  sub_1E17C5AF8();
}

void sub_1E17C6EA0(uint64_t a1)
{
  v3 = *(sub_1E1AF364C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E17C5D7C(a1, v1 + v4, v5);
}

uint64_t sub_1E17C6FE4()
{
  sub_1E1355E88();
  result = sub_1E1AF6CAC();
  qword_1ECEB95B8 = result;
  return result;
}

uint64_t sub_1E17C7054()
{
  sub_1E1355E88();
  result = sub_1E1AF6CAC();
  qword_1ECEB95C0 = result;
  return result;
}

uint64_t sub_1E17C70C4()
{
  sub_1E1355E88();
  result = sub_1E1AF6CAC();
  qword_1ECEB95C8 = result;
  return result;
}

uint64_t sub_1E17C7134()
{
  sub_1E1355E88();
  result = sub_1E1AF6CAC();
  qword_1ECEB95D0 = result;
  return result;
}

id sub_1E17C7348()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.2];
  qword_1ECEB95E8 = result;
  return result;
}

id sub_1E17C74A0(uint64_t a1, void *a2, void **a3, void **a4)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  v5 = *a3;
  *a4 = *a3;

  return v5;
}

void sub_1E17C7700(double a1, uint64_t a2, SEL *a3, void *a4)
{
  v6 = [objc_opt_self() *a3];
  v7 = [v6 colorWithAlphaComponent_];

  *a4 = v7;
}

__n128 MarketingItemRequestInfo.__allocating_init(serviceType:placement:seed:offerHints:clientOptions:metricsOverlay:purchaseSuccessAction:purchaseFailureAction:carrierLinkSuccessAction:carrierLinkFailureAction:onDismissalAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __n128 a11, uint64_t a12)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = *a5;
  *(v19 + 64) = a6;
  *(v19 + 72) = a7;
  *(v19 + 80) = a8;
  result = a11;
  *(v19 + 88) = a10;
  *(v19 + 104) = a11;
  *(v19 + 120) = a12;
  *(v19 + 128) = a9;
  return result;
}

uint64_t MarketingItemRequestInfo.init(serviceType:placement:seed:offerHints:clientOptions:metricsOverlay:purchaseSuccessAction:purchaseFailureAction:carrierLinkSuccessAction:carrierLinkFailureAction:onDismissalAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, uint64_t a12)
{
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = *a5;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  *(v12 + 80) = a8;
  *(v12 + 88) = a10;
  *(v12 + 104) = a11;
  *(v12 + 120) = a12;
  *(v12 + 128) = a9;
  return v12;
}

uint64_t MarketingItemRequestInfo.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MarketingItemRequestInfo.init(deserializing:using:)(a1, a2);
  return v4;
}

void *MarketingItemRequestInfo.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v88 = a2;
  v91 = v4;
  v6 = *v4;
  v85 = v3;
  v86 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v79 - v10;
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v83 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v81 = &v79 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v87 = &v79 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v79 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v79 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v79 - v25;
  v27 = a1;
  sub_1E1AF381C();
  v28 = sub_1E1AF37CC();
  v30 = v29;
  v33 = *(v12 + 8);
  v32 = v12 + 8;
  v31 = v33;
  v33(v26, v11);
  v90 = v33;
  if (!v30)
  {
    v55 = 0xE900000000000074;
    v56 = 0x6E656D6563616C70;
    v37 = v11;
LABEL_10:
    v57 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v58 = v56;
    v58[1] = v55;
    v58[2] = v86;
    (*(*(v57 - 8) + 104))(v58, *MEMORY[0x1E69AB690], v57);
    swift_willThrow();
    v59 = sub_1E1AF39DC();
    (*(*(v59 - 8) + 8))(v88, v59);
    v90(v27, v37);
    type metadata accessor for MarketingItemRequestInfo();
    v60 = v91;
    swift_deallocPartialClassInstance();
    return v60;
  }

  v80 = v28;
  sub_1E1AF381C();
  v34 = sub_1E1AF37CC();
  v36 = v35;
  v31(v24, v11);
  v37 = v11;
  if (!v36)
  {
    v55 = 0xEB00000000657079;
    v56 = 0x5465636976726573;

    goto LABEL_10;
  }

  v38 = v91;
  v91[2] = v34;
  v38[3] = v36;
  v39 = v38;
  v38[4] = v80;
  v38[5] = v30;
  v40 = v27;
  sub_1E1AF381C();
  v41 = sub_1E1AF37CC();
  v43 = v42;
  v31(v21, v37);
  if (v43)
  {
    v44 = v41;
  }

  else
  {
    v44 = 0;
  }

  v39[6] = v44;
  v39[7] = v43;
  v45 = v87;
  sub_1E1AF381C();
  v46 = sub_1E1AF37CC();
  v48 = v47;
  v31(v45, v37);
  v39[8] = v46;
  v39[9] = v48;
  v49 = v81;
  sub_1E1AF381C();
  v50 = v82;
  sub_1E1AF368C();
  v86 = v37;
  v89 = v32;
  v31(v49, v37);
  v51 = sub_1E1AF40DC();
  v52 = *(v51 - 8);
  v81 = *(v52 + 48);
  v53 = v31;
  if ((v81)(v50, 1, v51) == 1)
  {
    sub_1E146F8C4(v50);
    v54 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6938);
    v54 = sub_1E1AF40BC();
    (*(v52 + 8))(v50, v51);
  }

  v39[10] = v54;
  v61 = v83;
  v62 = v84;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v53(v61, v86);
  v63 = v53;
  if ((v81)(v62, 1, v51) == 1)
  {
    sub_1E146F8C4(v62);
    v64 = 0;
  }

  else
  {
    v64 = sub_1E1AF40BC();
    (*(v52 + 8))(v62, v51);
  }

  v39[16] = v64;
  v84 = type metadata accessor for Action();
  v65 = v87;
  sub_1E1AF381C();
  v66 = v88;
  v67 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v88);
  v68 = v86;
  v63(v65, v86);
  v39[11] = v67;
  v79 = v40;
  sub_1E1AF381C();
  v69 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v66);
  v63(v65, v68);
  v39[12] = v69;
  sub_1E1AF381C();
  v70 = v66;
  v71 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v66);
  v72 = v90;
  v90(v65, v68);
  v91[13] = v71;
  v73 = v79;
  sub_1E1AF381C();
  v74 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v70);
  v72(v65, v68);
  v91[14] = v74;
  sub_1E1AF381C();
  v60 = v91;
  v75 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v70);
  v76 = sub_1E1AF39DC();
  (*(*(v76 - 8) + 8))(v70, v76);
  v77 = v90;
  v90(v73, v68);
  v77(v65, v68);
  v60[15] = v75;
  return v60;
}

uint64_t MarketingItemRequestInfo.serviceType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MarketingItemRequestInfo.placement.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MarketingItemRequestInfo.seed.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t MarketingItemRequestInfo.offerHints.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t MarketingItemRequestInfo.deinit()
{

  return v0;
}

uint64_t MarketingItemRequestInfo.__deallocating_deinit()
{
  MarketingItemRequestInfo.deinit();

  return swift_deallocClassInstance();
}

void *sub_1E17C83A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MarketingItemRequestInfo();
  v7 = swift_allocObject();
  result = MarketingItemRequestInfo.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_1E17C84F0(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_1E1AF6ABC();
  v5 = 4.0;
  if (v3)
  {
    v5 = 6.0;
  }

  *a2 = v5;
}

unint64_t sub_1E17C8618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1E1AF105C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3680);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = 0;
  v12 = *MEMORY[0x1E69DDD08];
  *v9 = *MEMORY[0x1E69DDD08];
  (*(v7 + 104))(v9, *MEMORY[0x1E69AB868], v6);
  v13 = sub_1E1AF166C();
  v14 = MEMORY[0x1E69AB980];
  a3[4] = v13;
  a3[5] = v14;
  __swift_allocate_boxed_opaque_existential_0(a3 + 1);
  v20[3] = v6;
  v20[4] = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(v7 + 16))(boxed_opaque_existential_0, v9, v6);
  v16 = v12;
  sub_1E1AF167C();
  (*(v7 + 8))(v9, v6);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7150);
  a3[9] = v17;
  result = sub_1E140CE44();
  a3[6] = v11;
  a3[14] = v17;
  a3[15] = result;
  a3[10] = result;
  a3[11] = v10;
  *a3 = 1;
  return result;
}

void sub_1E17C8804(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_1E1AF5DFC();
  v7 = v6;
  if (v5 != sub_1E1AF5DFC() || v7 != v8)
  {
    v10 = sub_1E1AF74AC();
    v11 = v4;

    if (v10)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v12 = v4;

LABEL_8:
  v13 = sub_1E1AF6AFC();

  if (v13)
  {

    v14 = 18.0;
LABEL_22:
    *a2 = v14;
    return;
  }

  v15 = sub_1E1AF5DFC();
  v17 = v16;
  if (v15 == sub_1E1AF5DFC() && v17 == v18)
  {
    v19 = v4;
  }

  else
  {
    v20 = sub_1E1AF74AC();
    v21 = v4;

    if ((v20 & 1) == 0)
    {
      __break(1u);
      goto LABEL_24;
    }
  }

  v22 = sub_1E1AF6AFC();

  if (v22)
  {

    v14 = 16.0;
    goto LABEL_22;
  }

  v23 = sub_1E1AF5DFC();
  v25 = v24;
  if (v23 == sub_1E1AF5DFC() && v25 == v26)
  {

    goto LABEL_20;
  }

  v27 = sub_1E1AF74AC();

  if (v27)
  {
LABEL_20:
    v28 = sub_1E1AF6AFC();

    v14 = 10.0;
    if (v28)
    {
      v14 = 12.0;
    }

    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
}

void sub_1E17C8A64(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_1E1AF6ABC();
  v5 = 2.0;
  if (v3)
  {
    v5 = 4.0;
  }

  *a2 = v5;
}

uint64_t sub_1E17C8B0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_1E17C8598(a2, v4);
}

__n128 MetadataRibbonIconWithLabelViewLayout.init(descriptionLabelView:artworkView:metrics:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E1308EC0(a1, a4);
  sub_1E1308EC0(a2, a4 + 40);
  v7 = *(a3 + 80);
  *(a4 + 144) = *(a3 + 64);
  *(a4 + 160) = v7;
  v8 = *(a3 + 112);
  *(a4 + 176) = *(a3 + 96);
  *(a4 + 192) = v8;
  v9 = *(a3 + 16);
  *(a4 + 80) = *a3;
  *(a4 + 96) = v9;
  result = *(a3 + 32);
  v11 = *(a3 + 48);
  *(a4 + 112) = result;
  *(a4 + 128) = v11;
  return result;
}