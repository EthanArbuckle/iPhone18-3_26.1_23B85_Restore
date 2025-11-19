uint64_t sub_237136FB8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_23719631C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

void sub_237137104()
{
  v1 = [v0 text];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = sub_23719657C();
  v5 = v4;

  LOBYTE(v2) = sub_23717481C(v3, v5);

  if ((v2 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = *&v0[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase];
  v7 = *&v0[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min];
  if (v6 > 0.0)
  {
    v8 = logf(0.0);
    v9 = logf(v6);
    v10 = logf(v7) / v9;
    v11 = logf(*&v0[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max]);
    powf(v6, (v8 / v9) + (((v11 / v9) - v10) * 0.05));
  }

  v12 = sub_23719653C();
  v13 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  v15 = MEMORY[0x277D837D0];
  sub_23719690C();
  v16 = [v0 tag];
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v16;
  sub_23719690C();
  sub_2371966AC();
  *(inited + 168) = v15;
  *(inited + 144) = 0;
  *(inited + 152) = 0xE000000000000000;
  sub_237119F04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
  swift_arrayDestroy();
  v17 = sub_23719651C();

  [v13 postNotificationName:v12 object:v0 userInfo:v17];
}

void sub_23713745C()
{
  v1 = [v0 text];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = sub_23719657C();
  v5 = v4;

  LOBYTE(v2) = sub_23717481C(v3, v5);

  if ((v2 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = *&v0[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase];
  v7 = *&v0[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min];
  if (v6 > 0.0)
  {
    v8 = logf(0.0);
    v9 = logf(v6);
    v10 = logf(v7) / v9;
    v11 = logf(*&v0[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max]);
    powf(v6, (v8 / v9) + (((v11 / v9) - v10) * -0.05));
  }

  v12 = sub_23719653C();
  v13 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  v15 = MEMORY[0x277D837D0];
  sub_23719690C();
  v16 = [v0 tag];
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v16;
  sub_23719690C();
  sub_2371966AC();
  *(inited + 168) = v15;
  *(inited + 144) = 0;
  *(inited + 152) = 0xE000000000000000;
  sub_237119F04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
  swift_arrayDestroy();
  v17 = sub_23719651C();

  [v13 postNotificationName:v12 object:v0 userInfo:v17];
}

void sub_2371377FC()
{
  v32 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23719B8E0;
  v2 = *(v0 + 8);
  v3 = [v2 firstBaselineAnchor];
  v4 = *(v0 + 24);
  v5 = [v4 firstBaselineAnchor];
  v6 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v6;
  v7 = *(v0 + 16);
  v8 = [v7 firstBaselineAnchor];
  v9 = [v4 firstBaselineAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v1 + 40) = v10;
  v11 = [v4 topAnchor];
  v12 = *v0;
  v13 = [*v0 topAnchor];
  v14 = [v11 constraintEqualToAnchor_];

  *(v1 + 48) = v14;
  v15 = [v4 bottomAnchor];
  v16 = [v12 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v1 + 56) = v17;
  v18 = [v4 heightAnchor];
  v19 = [v18 constraintEqualToConstant_];

  *(v1 + 64) = v19;
  v20 = [v2 leadingAnchor];
  v21 = [v12 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v1 + 72) = v22;
  v23 = [v2 trailingAnchor];
  v24 = [v4 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-6.0];

  *(v1 + 80) = v25;
  v26 = [v4 trailingAnchor];
  v27 = [v7 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:2.0];

  *(v1 + 88) = v28;
  v29 = [v7 trailingAnchor];
  v30 = [v12 trailingAnchor];
  v31 = [v29 constraintLessThanOrEqualToAnchor_];

  *(v1 + 96) = v31;
  sub_237115094(0, &qword_27DE94CC0);
  v33 = sub_23719661C();

  [v32 activateConstraints_];
}

void sub_237137C10()
{
  v1 = v0;
  v2 = *(v0 + 44);
  sub_2371386E0(v0, v2);
  v3 = sub_237119E24(MEMORY[0x277D84F90]);
  v4 = sub_23719653C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94E08);
  inited = swift_initStackObject();
  v6 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_23719B020;
  v7 = *v6;
  *(inited + 32) = v7;
  v90 = v1;
  v8 = *(v1 + 24);
  v9 = v7;
  v91 = v8;
  v10 = [v8 font];
  if (!v10)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v11 = v10;
  v92 = sub_237115094(0, &unk_27DE94E10);
  *(inited + 64) = v92;
  *(inited + 40) = v11;
  sub_237119BCC(inited);
  swift_setDeallocating();
  sub_237120D04(inited + 32, &qword_27DE94888);
  type metadata accessor for Key(0);
  v13 = v12;
  sub_23713D200();
  v14 = sub_23719651C();

  [v4 sizeWithAttributes_];
  v16 = v15;

  v17 = 0;
  for (i = 1; i != 10; ++i)
  {
    v93 = i;
    sub_237196A5C();
    v19 = sub_23719653C();
    v95[0] = v9;
    v20 = v9;
    v21 = [v91 font];
    if (!v21)
    {
      goto LABEL_89;
    }

    v22 = v21;

    v95[4] = v92;
    v95[1] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94880);
    v23 = sub_237196A2C();
    sub_23713D258(v95, &v93);
    v24 = v93;
    v25 = sub_23719064C(v93);
    if (v26)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v23[(v25 >> 6) + 8] |= 1 << v25;
    *(v23[6] + 8 * v25) = v24;
    sub_23711BDA4(&v94, (v23[7] + 32 * v25));
    v27 = v23[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_66;
    }

    v23[2] = v29;
    sub_237120D04(v95, &qword_27DE94888);
    v30 = v13;
    v31 = sub_23719651C();

    [v19 sizeWithAttributes_];
    v33 = v32;

    if (v16 < v33)
    {
      v17 = i;
      v16 = v33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = v3;
    v36 = sub_23719336C(i);
    v37 = v3[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_67;
    }

    v40 = v35;
    if (v3[3] >= v39)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237192770();
      }
    }

    else
    {
      sub_2371911C4(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_23719336C(i);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_95;
      }

      v36 = v41;
    }

    v13 = v30;
    v3 = v93;
    if (v40)
    {
      *(v93[7] + 8 * v36) = v33;
    }

    else
    {
      v93[(v36 >> 6) + 8] |= 1 << v36;
      *(v3[6] + 8 * v36) = i;
      *(v3[7] + 8 * v36) = v33;
      v43 = v3[2];
      v28 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v28)
      {
        goto LABEL_68;
      }

      v3[2] = v44;
    }
  }

  v45 = v17;
  v46 = v90;
  if (v2 == 0.0)
  {
    goto LABEL_36;
  }

  v47 = floorf(log10f(fabsf(v2)));
  if ((LODWORD(v47) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_83;
  }

  if (v47 <= -9.2234e18)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v47 >= 9.2234e18)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v48 = v47;
  v49 = v47 + 1;
  if (__OFADD__(v47, 1))
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v45 = v17;
  if (v49 >= 2)
  {
    v50 = v49 == 2;
    v51 = 10.0;
    v52 = 2;
    v45 = v17;
    while (v51 > -9.22337204e18)
    {
      if (v51 >= 9.22337204e18)
      {
        goto LABEL_75;
      }

      v53 = v51 * v17;
      if ((v51 * v17) >> 64 != v53 >> 63)
      {
        goto LABEL_76;
      }

      v28 = __OFADD__(v45, v53);
      v45 += v53;
      if (v28)
      {
        goto LABEL_77;
      }

      if (v50)
      {
        v46 = v90;
        goto LABEL_33;
      }

      v50 = v48 == v52;
      v51 = __exp10(v52++);
      if (v51 == INFINITY)
      {
        goto LABEL_78;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_33:
  if (v2 < 0.0)
  {
    if (v45 != 0x8000000000000000)
    {
      v45 = -v45;
      goto LABEL_36;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_36:
  sub_2371386E0(v46, v45);
  v54 = *(v46 + 40);
  if (v54 < 0.0 || v2 < v54)
  {
    sub_2371386E0(v46, *(v46 + 40));
    v55 = floorf(log10f(fabsf(v54)));
    if ((LODWORD(v55) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      goto LABEL_79;
    }

    if (v55 <= -9.2234e18)
    {
LABEL_80:
      __break(1u);
    }

    else if (v55 < 9.2234e18)
    {
      v56 = v55;
      v57 = v55 + 1;
      if (!__OFADD__(v55, 1))
      {
        if (v57 >= 2)
        {
          v58 = v57 == 2;
          v59 = 10.0;
          v60 = 2;
          v61 = v17;
          while (v59 > -9.22337204e18)
          {
            if (v59 >= 9.22337204e18)
            {
              goto LABEL_70;
            }

            v62 = v59 * v17;
            if ((v59 * v17) >> 64 != v62 >> 63)
            {
              goto LABEL_71;
            }

            v28 = __OFADD__(v61, v62);
            v61 += v62;
            if (v28)
            {
              goto LABEL_72;
            }

            if (v58)
            {
              v17 = v61;
              v46 = v90;
              goto LABEL_51;
            }

            v58 = v56 == v60;
            v59 = __exp10(v60++);
            if (v59 == INFINITY)
            {
              goto LABEL_73;
            }
          }

LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

LABEL_51:
        if (v54 >= 0.0)
        {
          goto LABEL_54;
        }

        if (v17 != 0x8000000000000000)
        {
          v17 = -v17;
LABEL_54:
          sub_2371386E0(v46, v17);
          goto LABEL_55;
        }

LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      goto LABEL_82;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

LABEL_55:
  v63 = [*(v46 + 16) text];
  if (v63)
  {
    v64 = v63;
    sub_23719657C();
  }

  v65 = sub_23719653C();
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_23719B020;
  *(v66 + 32) = v20;
  v67 = v20;
  v68 = [v91 font];
  if (!v68)
  {
    goto LABEL_91;
  }

  v69 = v68;

  *(v66 + 64) = v92;
  *(v66 + 40) = v69;
  sub_237119BCC(v66);
  swift_setDeallocating();
  sub_237120D04(v66 + 32, &qword_27DE94888);
  v70 = sub_23719651C();

  [v65 sizeWithAttributes_];

  v71 = *(v90 + 80);

  v88 = v67;
  if (v71)
  {
    [v71 size];
    v72 = &selRef_effectiveContentSize;
    v73 = v92;
    v74 = v91;
  }

  else
  {
    v75 = sub_23719653C();
    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_23719B020;
    *(v76 + 32) = v67;
    v77 = v67;
    v72 = &selRef_effectiveContentSize;
    v74 = v91;
    v78 = [v91 font];
    if (!v78)
    {
      goto LABEL_94;
    }

    *(v76 + 64) = v92;
    *(v76 + 40) = v78;
    sub_237119BCC(v76);
    swift_setDeallocating();
    sub_237120D04(v76 + 32, &qword_27DE94888);
    v79 = sub_23719651C();
    v73 = v92;

    [v75 sizeWithAttributes_];
  }

  v80 = sub_23719653C();
  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_23719B020;
  *(v81 + 32) = v88;
  v89 = v88;
  v82 = [v74 v72[251]];
  if (!v82)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    sub_237196AAC();
    __break(1u);
    return;
  }

  *(v81 + 64) = v73;
  *(v81 + 40) = v82;
  sub_237119BCC(v81);
  swift_setDeallocating();
  sub_237120D04(v81 + 32, &qword_27DE94888);
  v83 = sub_23719651C();

  [v80 sizeWithAttributes_];

  v84 = sub_23719653C();
  v85 = swift_initStackObject();
  *(v85 + 16) = xmmword_23719B020;
  *(v85 + 32) = v89;
  v86 = [v74 v72[251]];
  if (!v86)
  {
    goto LABEL_93;
  }

  *(v85 + 64) = v92;
  *(v85 + 40) = v86;
  sub_237119BCC(v85);
  swift_setDeallocating();
  sub_237120D04(v85 + 32, &qword_27DE94888);
  v87 = sub_23719651C();

  [v84 sizeWithAttributes_];
}

void sub_2371386E0(uint64_t a1, float a2)
{
  v4 = *(a1 + 88);
  v5 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v6 = a2;
  v7 = [v5 initWithFloat_];
  v8 = [v4 stringFromNumber_];

  if (v8)
  {
    sub_23719657C();
  }

  v9 = sub_23719653C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94E08);
  inited = swift_initStackObject();
  v11 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_23719B020;
  v12 = *v11;
  *(inited + 32) = v12;
  v13 = *(a1 + 24);
  v14 = v12;
  v15 = [v13 font];
  if (v15)
  {
    v16 = v15;

    *(inited + 64) = sub_237115094(0, &unk_27DE94E10);
    *(inited + 40) = v16;
    sub_237119BCC(inited);
    swift_setDeallocating();
    sub_237120D04(inited + 32, &qword_27DE94888);
    type metadata accessor for Key(0);
    sub_23713D200();
    v17 = sub_23719651C();

    [v9 sizeWithAttributes_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2371388BC()
{
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_border];
  v2 = objc_opt_self();
  v3 = [v2 tertiaryLabelColor];
  [v1 setBackgroundColor_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v4 = [v0 layer];
  v5 = [v2 systemBackgroundColor];
  v6 = [v5 CGColor];

  [v4 setBackgroundColor_];
  v7 = *&v0[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_appleLogo];
  [v7 setContentMode_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v2 secondaryLabelColor];
  [v7 setTintColor_];

  [v0 addSubview_];
  v9 = *&v0[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [objc_opt_self() systemFontOfSize:22.0 weight:*MEMORY[0x277D74420]];
  [v9 setFont_];

  [v9 setTextAlignment_];
  [v9 setNumberOfLines_];
  v11 = [v2 labelColor];
  [v9 setTextColor_];

  [v9 setAdjustsFontSizeToFitWidth_];
  [v9 setAllowsDefaultTighteningForTruncation_];
  [v0 addSubview_];
  v12 = *&v0[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack];
  v13 = [v2 clearColor];
  [v12 setBackgroundColor_];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setSpacing_];
  [v12 setAlignment_];
  [v0 addSubview_];

  sub_237138BD4();
}

void sub_237138BD4()
{
  v1 = v0;
  v265 = MEMORY[0x277D84F90];
  v244 = [v0 layoutMarginsGuide];
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_border];
  v3 = [v2 leadingAnchor];
  v4 = [v1 leadingAnchor];
  v5 = &selRef_effectiveContentSize;
  v6 = [v3 constraintEqualToAnchor_];

  v7 = sub_23719653C();
  v8 = &selRef_effectiveContentSize;
  [v6 setIdentifier_];

  LODWORD(v9) = 1144750080;
  [v6 setPriority_];
  v10 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_viewConstraints;
  swift_beginAccess();
  v11 = v6;
  MEMORY[0x2383C5F60]();
  if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_116;
  }

  while (1)
  {
    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v12 = v11;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();

    v13 = [v2 trailingAnchor];
    v14 = [v1 trailingAnchor];
    v15 = [v13 v5[5]];

    v16 = sub_23719653C();
    [v15 v8[51]];

    LODWORD(v17) = 1144750080;
    [v15 setPriority_];
    swift_beginAccess();
    v18 = v15;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v19 = v18;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();

    v20 = [v2 bottomAnchor];
    v21 = [v1 bottomAnchor];
    v22 = [v20 v5[5]];

    v23 = sub_23719653C();
    [v22 v8[51]];

    LODWORD(v24) = 1144750080;
    [v22 setPriority_];
    swift_beginAccess();
    v25 = v22;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    v243 = v2;
    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v26 = v25;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();

    v246 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_appleLogo);
    v27 = [v246 heightAnchor];
    v28 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel);
    v29 = [v28 heightAnchor];
    v30 = [v27 constraintEqualToAnchor:v29 multiplier:0.8];

    v31 = sub_23719653C();
    [v30 setIdentifier_];

    LODWORD(v32) = 1132068864;
    [v30 setPriority_];
    swift_beginAccess();
    v33 = v30;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v34 = v33;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();

    v35 = [v246 leadingAnchor];
    v36 = [v244 leadingAnchor];
    v37 = [v35 v5[5]];

    v38 = sub_23719653C();
    [v37 setIdentifier_];

    LODWORD(v39) = 1144750080;
    [v37 setPriority_];
    swift_beginAccess();
    v40 = v37;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v41 = v40;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();

    v42 = [v246 centerYAnchor];
    v43 = [v28 centerYAnchor];
    v44 = [v42 v5[5]];

    v45 = sub_23719653C();
    [v44 setIdentifier_];

    LODWORD(v46) = 1144750080;
    [v44 setPriority_];
    swift_beginAccess();
    v47 = v44;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v48 = v47;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();

    v49 = [v246 trailingAnchor];
    v50 = [v28 leadingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:-8.0];

    v52 = sub_23719653C();
    [v51 setIdentifier_];

    LODWORD(v53) = 1144750080;
    [v51 setPriority_];
    swift_beginAccess();
    v54 = v51;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v55 = v54;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();

    v56 = [v28 topAnchor];
    v57 = [v1 topAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:8.0];

    v59 = sub_23719653C();
    [v58 setIdentifier_];

    LODWORD(v60) = 1144750080;
    [v58 setPriority_];
    swift_beginAccess();
    v61 = v58;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v62 = v61;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();

    v248 = v28;
    v63 = [v28 bottomAnchor];
    v64 = [v1 bottomAnchor];
    v65 = [v63 constraintEqualToAnchor:v64 constant:-8.0];

    v66 = sub_23719653C();
    [v65 setIdentifier_];

    LODWORD(v67) = 1144750080;
    [v65 setPriority_];
    swift_beginAccess();
    v68 = v65;
    MEMORY[0x2383C5F60]();
    v69 = v10;
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v70 = v68;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
      v5 = &selRef_effectiveContentSize;
    }

    sub_23719665C();
    swift_endAccess();

    v71 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack);
    v72 = [v71 centerYAnchor];
    v73 = [v248 centerYAnchor];
    v74 = [v72 v5[5]];

    v75 = sub_23719653C();
    [v74 setIdentifier_];

    LODWORD(v76) = 1144750080;
    [v74 setPriority_];
    swift_beginAccess();
    v77 = v74;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v78 = v77;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v79 = [v71 trailingAnchor];
    v80 = [v1 trailingAnchor];
    v81 = [v79 constraintEqualToAnchor:v80 constant:-8.0];

    v82 = sub_23719653C();
    [v81 setIdentifier_];

    LODWORD(v83) = 1144750080;
    [v81 setPriority_];
    swift_beginAccess();
    v84 = v81;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v85 = v84;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v86 = [v71 leadingAnchor];
    v87 = [v248 trailingAnchor];
    v88 = [v86 constraintEqualToAnchor:v87 constant:8.0];

    v89 = sub_23719653C();
    [v88 setIdentifier_];

    LODWORD(v90) = 1144750080;
    [v88 setPriority_];
    swift_beginAccess();
    v91 = v88;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    v245 = v71;
    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v92 = v91;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v93 = [v243 centerXAnchor];
    v94 = [v1 centerXAnchor];
    v95 = [v93 constraintEqualToAnchor_];

    v96 = sub_23719653C();
    [v95 setIdentifier_];

    LODWORD(v97) = 1144750080;
    [v95 setPriority_];
    swift_beginAccess();
    v98 = v95;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v99 = [v243 leftAnchor];
    v100 = [v71 leftAnchor];
    v101 = [v99 constraintEqualToAnchor_];

    v102 = sub_23719653C();
    [v101 setIdentifier_];

    LODWORD(v103) = 1144750080;
    [v101 setPriority_];
    swift_beginAccess();
    v104 = v101;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v105 = [v243 rightAnchor];
    v106 = [v71 rightAnchor];
    v107 = [v105 constraintEqualToAnchor_];

    v108 = sub_23719653C();
    [v107 setIdentifier_];

    LODWORD(v109) = 1144750080;
    [v107 &selRef_disconnectLocalPeripheral];
    swift_beginAccess();
    v110 = v107;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v111 = [v243 topAnchor];
    v112 = [v248 bottomAnchor];
    v113 = [v111 constraintEqualToAnchor:v112 constant:6.0];

    v114 = sub_23719653C();
    [v113 setIdentifier_];

    LODWORD(v115) = 1144750080;
    [v113 &selRef_disconnectLocalPeripheral];
    swift_beginAccess();
    v116 = v113;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v117 = [v246 centerXAnchor];
    v118 = [v1 centerXAnchor];
    v119 = [v117 constraintEqualToAnchor_];

    v120 = sub_23719653C();
    [v119 setIdentifier_];

    LODWORD(v121) = 1144750080;
    [v119 &selRef_disconnectLocalPeripheral];
    swift_beginAccess();
    v122 = v119;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v123 = [v246 topAnchor];
    v124 = [v1 topAnchor];
    v125 = [v123 constraintGreaterThanOrEqualToAnchor:v124 constant:20.0];

    v126 = sub_23719653C();
    [v125 setIdentifier_];

    LODWORD(v127) = 1144750080;
    [v125 &selRef_disconnectLocalPeripheral];
    swift_beginAccess();
    v128 = v125;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v129 = [v246 bottomAnchor];
    v130 = [v248 topAnchor];
    v131 = [v129 constraintEqualToAnchor:v130 constant:-6.0];

    v132 = sub_23719653C();
    [v131 setIdentifier_];

    LODWORD(v133) = 1144750080;
    [v131 setPriority_];
    swift_beginAccess();
    v134 = v131;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v135 = [v248 leadingAnchor];
    v136 = [v244 leadingAnchor];
    v137 = [v135 constraintEqualToAnchor_];

    v138 = sub_23719653C();
    [v137 setIdentifier_];

    LODWORD(v139) = 1144750080;
    [v137 setPriority_];
    swift_beginAccess();
    v140 = v137;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v141 = [v248 trailingAnchor];
    v142 = [v1 trailingAnchor];
    v143 = [v141 constraintEqualToAnchor:v142 constant:-8.0];

    v144 = sub_23719653C();
    [v143 setIdentifier_];

    LODWORD(v145) = 1144750080;
    [v143 setPriority_];
    swift_beginAccess();
    v146 = v143;
    MEMORY[0x2383C5F60]();
    v147 = v69;
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v148 = [v248 bottomAnchor];
    v149 = [v1 centerYAnchor];
    v150 = [v148 constraintEqualToAnchor:v149 constant:-10.0];

    v151 = sub_23719653C();
    [v150 setIdentifier_];

    LODWORD(v152) = 1144750080;
    [v150 setPriority_];
    swift_beginAccess();
    v153 = v150;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v154 = [v245 topAnchor];
    v155 = [v248 bottomAnchor];
    v156 = [v154 constraintEqualToAnchor:v155 constant:16.0];

    v157 = sub_23719653C();
    [v156 setIdentifier_];

    LODWORD(v158) = 1144750080;
    [v156 setPriority_];
    swift_beginAccess();
    v159 = v156;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v160 = [v245 leadingAnchor];
    v161 = [v1 leadingAnchor];
    v162 = [v160 constraintGreaterThanOrEqualToAnchor:v161 constant:8.0];

    v163 = sub_23719653C();
    [v162 &selRef:v163 initWithArrangedSubviews:?];

    LODWORD(v164) = 1144750080;
    [v162 setPriority_];
    swift_beginAccess();
    v165 = v162;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v166 = [v245 trailingAnchor];
    v167 = [v1 trailingAnchor];
    v168 = [v166 constraintLessThanOrEqualToAnchor:v167 constant:-8.0];

    v169 = sub_23719653C();
    [v168 &selRef:v169 initWithArrangedSubviews:?];

    LODWORD(v170) = 1144750080;
    [v168 setPriority_];
    swift_beginAccess();
    v171 = v168;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v172 = [v245 bottomAnchor];
    v173 = [v1 bottomAnchor];
    v174 = [v172 constraintLessThanOrEqualToAnchor:v173 constant:-8.0];

    v175 = sub_23719653C();
    [v174 &selRef:v175 initWithArrangedSubviews:?];

    LODWORD(v176) = 1144750080;
    [v174 setPriority_];
    swift_beginAccess();
    v177 = v174;
    MEMORY[0x2383C5F60]();
    v8 = v246;
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v178 = [v243 heightAnchor];
    v179 = [v178 constraintEqualToConstant_];

    v180 = sub_23719653C();
    [v179 &selRef:v180 initWithArrangedSubviews:?];

    LODWORD(v181) = 1144750080;
    [v179 setPriority_];
    swift_beginAccess();
    v182 = v179;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v183 = v182;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v184 = [v246 heightAnchor];
    v185 = [v248 heightAnchor];
    v186 = [v184 constraintEqualToAnchor:v185 multiplier:1.2];

    v187 = sub_23719653C();
    [v186 &selRef:v187 initWithArrangedSubviews:?];

    LODWORD(v188) = 1144750080;
    [v186 setPriority_];
    swift_beginAccess();
    v189 = v186;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v190 = v189;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v191 = [v246 heightAnchor];
    v192 = [v191 constraintLessThanOrEqualToConstant_];

    v193 = sub_23719653C();
    [v192 &selRef:v193 initWithArrangedSubviews:?];

    LODWORD(v194) = 1144750080;
    [v192 setPriority_];
    swift_beginAccess();
    v195 = v192;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v196 = v195;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v197 = [v246 widthAnchor];
    v198 = [v246 heightAnchor];
    v199 = [v197 constraintEqualToAnchor_];

    v200 = sub_23719653C();
    [v199 &selRef:v200 initWithArrangedSubviews:?];

    LODWORD(v201) = 1144750080;
    [v199 setPriority_];
    swift_beginAccess();
    v202 = v199;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v69) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v203 = v202;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v204 = [v245 heightAnchor];
    v205 = [v248 heightAnchor];
    v206 = [v204 constraintEqualToAnchor_];

    v207 = sub_23719653C();
    [v206 &selRef:v207 initWithArrangedSubviews:?];

    LODWORD(v208) = 1144750080;
    [v206 setPriority_];
    swift_beginAccess();
    v209 = v206;
    MEMORY[0x2383C5F60]();
    if (*((*(v1 + v147) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v147) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();
    swift_beginAccess();
    v210 = v209;
    MEMORY[0x2383C5F60]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    swift_endAccess();

    v211 = *(v1 + v147);
    if (v211 >> 62)
    {
      break;
    }

    if (*((v211 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_114;
    }

LABEL_98:
    v2 = &v251;
    v212 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
    swift_beginAccess();

    sub_23718129C(v213, &v251);

    v261[6] = v257;
    v261[7] = v258;
    v261[8] = v259;
    v261[2] = v253;
    v261[3] = v254;
    v261[4] = v255;
    v261[5] = v256;
    v261[0] = v251;
    v261[1] = v252;
    v263[6] = v257;
    v263[7] = v258;
    v263[8] = v259;
    v263[2] = v253;
    v263[3] = v254;
    v263[4] = v255;
    v263[5] = v256;
    v262 = v260;
    v264 = v260;
    v263[0] = v251;
    v263[1] = v252;
    if (sub_23713D31C(v263) == 1)
    {
      goto LABEL_114;
    }

    v214 = *(&v263[0] + 1);
    sub_237120D04(v261, &qword_27DE94E48);
    v215 = *(v1 + v212);
    v218 = *(v215 + 64);
    v217 = v215 + 64;
    v216 = v218;
    v219 = 1 << *(*(v1 + v212) + 32);
    v220 = -1;
    if (v219 < 64)
    {
      v220 = ~(-1 << v219);
    }

    v11 = v220 & v216;
    v221 = (v219 + 63) >> 6;
    v249 = *(v1 + v212);

    v10 = 0;
    for (i = v214; v11; v214 = i)
    {
LABEL_108:
      while (1)
      {
        v223 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v224 = v249[7] + 152 * (v223 | (v10 << 6));
        v225 = *(v224 + 16);
        v251 = *v224;
        v252 = v225;
        v226 = *(v224 + 80);
        v228 = *(v224 + 32);
        v227 = *(v224 + 48);
        v255 = *(v224 + 64);
        v256 = v226;
        v253 = v228;
        v254 = v227;
        v229 = *(v224 + 96);
        v230 = *(v224 + 112);
        v231 = *(v224 + 128);
        v260 = *(v224 + 144);
        v258 = v230;
        v259 = v231;
        v257 = v229;
        v232 = *(&v251 + 1);
        sub_237115094(0, &qword_27DE94E50);
        sub_2371339F0(&v251, v250);
        v8 = v232;
        v233 = sub_2371967DC();

        if ((v233 & 1) == 0)
        {
          break;
        }

        sub_237133A4C(&v251);
        if (!v11)
        {
          goto LABEL_104;
        }
      }

      v234 = [(SEL *)v8 rightAnchor];
      v235 = [v214 rightAnchor];
      v236 = v147;
      v237 = [v234 constraintEqualToAnchor_];

      v238 = sub_23719653C();
      [v237 setIdentifier_];

      LODWORD(v239) = 1144750080;
      [v237 setPriority_];
      swift_beginAccess();
      v240 = v237;
      v147 = v236;
      v8 = v240;
      MEMORY[0x2383C5F60]();
      if (*((*(v1 + v236) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v236) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23719664C();
        v147 = v236;
      }

      sub_23719665C();
      swift_endAccess();
      sub_237133A4C(&v251);
    }

LABEL_104:
    while (1)
    {
      v222 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v222 >= v221)
      {

        goto LABEL_114;
      }

      v11 = *(v217 + 8 * v222);
      ++v10;
      if (v11)
      {
        v10 = v222;
        goto LABEL_108;
      }
    }

    __break(1u);
LABEL_116:
    sub_23719664C();
    v5 = &selRef_effectiveContentSize;
  }

  if (sub_2371969FC() >= 2)
  {
    goto LABEL_98;
  }

LABEL_114:
  v241 = objc_opt_self();
  sub_237115094(0, &qword_27DE94CC0);
  v242 = sub_23719661C();
  [v241 activateConstraints_];
}

void sub_23713BB84()
{
  v16 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_viewConstraints;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_23:
    v14 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_2371969FC();
  }

  else
  {
    v14 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2383C62A0](v5, v2);
        }

        else
        {
          if (v5 >= *(v14 + 16))
          {
            goto LABEL_22;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v7 = v6;
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v8 = [v6 identifier];
        if (!v8)
        {
          __break(1u);
          return;
        }

        v9 = v8;
        sub_23719657C();

        sub_23713D2C8();
        LOBYTE(v9) = sub_23719681C();

        v10 = v7;
        if (v9)
        {
          break;
        }

        MEMORY[0x2383C5F60]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23719664C();
        }

        sub_23719665C();

        ++v5;
        if (v4 == v3)
        {
          goto LABEL_20;
        }
      }

      MEMORY[0x2383C5F60]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23719664C();
      }

      sub_23719665C();
    }

    while (v4 != v3);
  }

LABEL_20:

  v11 = objc_opt_self();
  sub_237115094(0, &qword_27DE94CC0);
  v12 = sub_23719661C();

  [v11 deactivateConstraints_];

  v13 = sub_23719661C();

  [v11 activateConstraints_];
}

void sub_23713BE8C()
{
  sub_23713BB84();
  [*&v0[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel] setTextAlignment_];
  v1 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    [*(*(v2 + 56) + 152 * (v9 | (v8 << 6)) + 8) setTextAlignment_];
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v10 = *&v0[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack];
      [v10 setAxis_];
      [v10 setAlignment_];
      v11 = [v0 layer];
      v12 = [objc_opt_self() systemBackgroundColor];
      v13 = [v12 CGColor];

      [v11 setBackgroundColor_];
      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_23713C06C()
{
  sub_23713BB84();
  [*&v0[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel] setTextAlignment_];
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack];
  [v1 setAxis_];
  [v1 setAlignment_];
  v2 = sub_23719653C();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 currentTraitCollection];
  v7 = sub_23719653C();
  v8 = [objc_opt_self() colorNamed:v7 inBundle:v5 compatibleWithTraitCollection:v6];

  [v0 setBackgroundColor_];
}

void sub_23713C208(double a1, double a2)
{
  v5 = *&v2[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_appleLogo];
  [v5 frame];
  Width = CGRectGetWidth(v181);
  v7 = &v2[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName + 8];
  if (!*v7)
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v8 = Width;
  v161 = v5;
  v9 = *&v2[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel];

  v154 = v9;
  v10 = [v9 font];
  if (!v10)
  {
    goto LABEL_103;
  }

  v11 = v10;
  v12 = v8 + 16.0;
  v13 = sub_23719653C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B020;
  v15 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v164 = sub_237115094(0, &unk_27DE94E10);
  *(inited + 64) = v164;
  *(inited + 40) = v11;
  v159 = v15;
  v16 = v11;
  sub_237119BCC(inited);
  swift_setDeallocating();
  sub_237120D04(inited + 32, &qword_27DE94888);
  type metadata accessor for Key(0);
  sub_23713D200();
  v17 = sub_23719651C();

  [v13 sizeWithAttributes_];
  v19 = v18;

  v20 = v12 + v19;
  v21 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  v22 = 0;
  v158 = v21;
  v23 = *&v2[v21];
  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v23 + 64);
  v27 = (v24 + 63) >> 6;
  if (v26)
  {
    while (1)
    {
      v28 = v22;
LABEL_11:
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v20 = v20 + *(*(v23 + 56) + 152 * (v29 | (v28 << 6)) + 136);
      if (!v26)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if (v28 >= v27)
    {
      break;
    }

    v26 = *(v23 + 64 + 8 * v28);
    ++v22;
    if (v26)
    {
      v22 = v28;
      goto LABEL_11;
    }
  }

  v153 = v2;
  if (v20 <= a1)
  {
    v151 = 0;
    v47 = 0;
    goto LABEL_36;
  }

  v30 = &v2[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName];
  if (!*&v2[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName + 8])
  {
    v47 = 0;
    v151 = 1;
    goto LABEL_36;
  }

  if (!*v7)
  {
    goto LABEL_104;
  }

  v31 = sub_23719653C();
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_23719B020;
  *(v32 + 32) = v159;
  v33 = v159;
  v34 = [v154 font];
  if (!v34)
  {
    goto LABEL_105;
  }

  v35 = v34;

  *(v32 + 64) = v164;
  *(v32 + 40) = v35;
  sub_237119BCC(v32);
  swift_setDeallocating();
  sub_237120D04(v32 + 32, &qword_27DE94888);
  v36 = sub_23719651C();

  [v31 sizeWithAttributes_];
  v38 = v37;

  if (!*(v30 + 1))
  {
    goto LABEL_106;
  }

  v39 = sub_23719653C();
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_23719B020;
  *(v40 + 32) = v33;
  v41 = [v154 font];
  if (!v41)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v42 = v41;

  v43 = v20 - v38;
  *(v40 + 64) = v164;
  *(v40 + 40) = v42;
  sub_237119BCC(v40);
  swift_setDeallocating();
  sub_237120D04(v40 + 32, &qword_27DE94888);
  v44 = sub_23719651C();

  [v39 sizeWithAttributes_];
  v46 = v45;

  v2 = v153;
  if (v43 + v46 < a1)
  {
    v151 = 0;
    v47 = 1;
LABEL_36:
    v67 = *&v2[v158];
    v68 = *(v67 + 64);
    v157 = v67 + 64;
    v69 = 1 << *(v67 + 32);
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    else
    {
      v70 = -1;
    }

    v71 = v70 & v68;
    v72 = &v2[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName];
    v155 = *&v2[v158];
    v156 = (v69 + 63) >> 6;

    v73 = 0;
    if (v47)
    {
      v74 = v72 + 8;
    }

    else
    {
      v74 = v7;
    }

    v152 = v74;
    v75 = a1 / 3.0;
    v76 = v151;
LABEL_44:
    while (v71)
    {
      v77 = v73;
LABEL_49:
      v78 = *(v155 + 56) + 152 * (__clz(__rbit64(v71)) | (v77 << 6));
      v79 = *(v78 + 16);
      v176[0] = *v78;
      v176[1] = v79;
      v80 = *(v78 + 80);
      v82 = *(v78 + 32);
      v81 = *(v78 + 48);
      v176[4] = *(v78 + 64);
      v176[5] = v80;
      v176[2] = v82;
      v176[3] = v81;
      v83 = *(v78 + 96);
      v84 = *(v78 + 112);
      v85 = *(v78 + 128);
      v180 = *(v78 + 144);
      v178 = v84;
      v179 = v85;
      *v177 = v83;
      if (*v152)
      {

        sub_2371339F0(v176, &v166);
        v86 = sub_23719653C();
      }

      else
      {
        sub_2371339F0(v176, &v166);
        v86 = 0;
      }

      v71 &= v71 - 1;
      [v154 setText_];

      v87 = *(&v176[0] + 1);
      v88 = sub_23719653C();
      [v87 setText_];

      v89 = v177[0];
      if (v177[0])
      {
        v90 = 136;
        if (v76)
        {
          v90 = 128;
        }

        [v177[0] setConstant_];
        if (v75 > a2)
        {
LABEL_60:
          v94 = *&v2[v158];
          v97 = *(v94 + 64);
          v96 = (v94 + 64);
          v95 = v97;
          v98 = 1 << *(*&v2[v158] + 32);
          if (v98 < 64)
          {
            v99 = ~(-1 << v98);
          }

          else
          {
            v99 = -1;
          }

          v100 = v99 & v95;
          v101 = (v98 + 63) >> 6;
          v163 = *&v2[v158];

          v102 = 0;
          v103 = 0.0;
          v104 = 0.0;
          v105 = 0.0;
          v160 = v101;
          v162 = v96;
          while (v100)
          {
LABEL_69:
            v107 = *(v163 + 56) + 152 * (__clz(__rbit64(v100)) | (v102 << 6));
            v108 = *(v107 + 16);
            v166 = *v107;
            *v167 = v108;
            v109 = *(v107 + 80);
            v111 = *(v107 + 32);
            v110 = *(v107 + 48);
            v170 = *(v107 + 64);
            v171 = v109;
            v168 = v111;
            v169 = v110;
            v112 = *(v107 + 96);
            v113 = *(v107 + 112);
            v114 = *(v107 + 128);
            v175 = *(v107 + 144);
            v173 = v113;
            v174 = v114;
            *v172 = v112;
            v115 = *(&v166 + 1);
            sub_2371339F0(&v166, v165);
            v116 = [v115 text];
            if (!v116)
            {
              goto LABEL_101;
            }

            v2 = v116;
            v117 = [v115 font];
            if (!v117)
            {
              goto LABEL_100;
            }

            v118 = v117;
            v119 = swift_initStackObject();
            *(v119 + 16) = xmmword_23719B020;
            *(v119 + 32) = v159;
            *(v119 + 64) = v164;
            *(v119 + 40) = v118;
            v120 = v159;
            v121 = v118;
            sub_237119BCC(v119);
            swift_setDeallocating();
            sub_237120D04(v119 + 32, &qword_27DE94888);
            v122 = sub_23719651C();

            [v2 sizeWithAttributes_];
            v124 = v123;

            if (v105 <= v124)
            {
              v105 = v124;
            }

            [v167[1] frame];
            if (v104 <= v125)
            {
              v104 = v125;
            }

            v126 = v167[0];
            v127 = [v167[0] text];
            if (!v127)
            {
              goto LABEL_99;
            }

            v2 = v127;
            v128 = [v126 font];
            if (!v128)
            {
              goto LABEL_98;
            }

            v129 = v128;
            v100 &= v100 - 1;
            v130 = swift_initStackObject();
            *(v130 + 16) = xmmword_23719B020;
            *(v130 + 32) = v120;
            *(v130 + 64) = v164;
            *(v130 + 40) = v129;
            v131 = v129;
            sub_237119BCC(v130);
            swift_setDeallocating();
            sub_237120D04(v130 + 32, &qword_27DE94888);
            v132 = sub_23719651C();

            [v2 sizeWithAttributes_];
            v134 = v133;

            sub_237133A4C(&v166);
            v101 = v160;
            v96 = v162;
            if (v103 <= v134)
            {
              v103 = v134;
            }
          }

          while (1)
          {
            v106 = v102 + 1;
            if (__OFADD__(v102, 1))
            {
              __break(1u);
              goto LABEL_94;
            }

            if (v106 >= v101)
            {
              break;
            }

            v100 = *(v96 + v106);
            ++v102;
            if (v100)
            {
              v102 = v106;
              goto LABEL_69;
            }
          }

          v135 = *&v153[v158];
          v136 = 1 << *(v135 + 32);
          if (v136 < 64)
          {
            v137 = ~(-1 << v136);
          }

          else
          {
            v137 = -1;
          }

          v138 = v137 & *(v135 + 64);
          v139 = (v136 + 63) >> 6;

          v140 = 0;
          while (v138)
          {
            v141 = v140;
LABEL_89:
            v142 = __clz(__rbit64(v138));
            v138 &= v138 - 1;
            v143 = *(v135 + 56) + 152 * (v142 | (v141 << 6));
            v144 = *(v143 + 16);
            v166 = *v143;
            *v167 = v144;
            v145 = *(v143 + 80);
            v147 = *(v143 + 32);
            v146 = *(v143 + 48);
            v170 = *(v143 + 64);
            v171 = v145;
            v168 = v147;
            v169 = v146;
            v148 = *(v143 + 96);
            v149 = *(v143 + 112);
            v150 = *(v143 + 128);
            v175 = *(v143 + 144);
            v173 = v149;
            v174 = v150;
            *v172 = v148;
            v2 = *(&v166 + 1);
            sub_2371339F0(&v166, v165);
            [v2 setTextAlignment_];
            if (v172[0])
            {
              [v172[0] setConstant_];
            }

            sub_237133A4C(&v166);
            v140 = v141;
          }

          while (1)
          {
            v141 = v140 + 1;
            if (__OFADD__(v140, 1))
            {
              break;
            }

            if (v141 >= v139)
            {
              sub_237133A4C(v176);

              v73 = v77;
              v2 = v153;
              v76 = v151;
              goto LABEL_44;
            }

            v138 = *(v135 + 64 + 8 * v141);
            ++v140;
            if (v138)
            {
              goto LABEL_89;
            }
          }

LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v91 = 136;
        if (v76)
        {
          v91 = 128;
        }

        v92 = *(v176 + v91);
        v93 = v89;
        [v93 setConstant_];
        sub_237133A4C(v176);

        v73 = v77;
      }

      else
      {
        if (v75 > a2)
        {
          goto LABEL_60;
        }

        sub_237133A4C(v176);
        v73 = v77;
      }
    }

    while (1)
    {
      v77 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v77 >= v156)
      {

        return;
      }

      v71 = *(v157 + 8 * v77);
      ++v73;
      if (v71)
      {
        goto LABEL_49;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:

    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:

    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  [v161 frame];
  v48 = CGRectGetWidth(v182);
  if (!*v7)
  {
    goto LABEL_108;
  }

  v49 = v48;

  v50 = sub_23719653C();
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_23719B020;
  *(v51 + 32) = v33;
  v52 = v33;
  v53 = [v154 font];
  if (v53)
  {
    v54 = v53;

    *(v51 + 64) = v164;
    *(v51 + 40) = v54;
    sub_237119BCC(v51);
    swift_setDeallocating();
    sub_237120D04(v51 + 32, &qword_27DE94888);
    v55 = sub_23719651C();

    [v50 sizeWithAttributes_];
    v57 = v56;

    v58 = 0;
    v59 = *&v153[v158];
    v60 = 1 << *(v59 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v59 + 64);
    v63 = v49 + 16.0 + v57;
    for (i = (v60 + 63) >> 6; v62; v63 = v63 + *(*(v59 + 56) + 152 * (v66 | (v65 << 6)) + 128))
    {
      v65 = v58;
LABEL_33:
      v66 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
    }

    while (1)
    {
      v65 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_97;
      }

      if (v65 >= i)
      {
        v47 = v63 >= a1;
        v151 = 1;
        goto LABEL_36;
      }

      v62 = *(v59 + 64 + 8 * v65);
      ++v58;
      if (v62)
      {
        v58 = v65;
        goto LABEL_33;
      }
    }
  }

LABEL_109:
  __break(1u);
}

id sub_23713CFDC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_23713D144(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_23713D18C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23713D200()
{
  result = qword_27DE94E20;
  if (!qword_27DE94E20)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE94E20);
  }

  return result;
}

uint64_t sub_23713D258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23713D2C8()
{
  result = qword_27DE94E40;
  if (!qword_27DE94E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE94E40);
  }

  return result;
}

uint64_t sub_23713D31C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_23713D390()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_appleLogo;
  v2 = sub_23719653C();
  v3 = [objc_opt_self() systemImageNamed_];

  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v6 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  v7 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_border;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_viewSetup) = 0;
  v8 = (v0 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_compressedHorizontalLayout) = 0;
  v10 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_viewConstraints) = MEMORY[0x277D84F90];
  v11 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  *(v0 + v11) = sub_23711A24C(v10);
  sub_2371969DC();
  __break(1u);
}

void sub_23713D60C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
  v5 = *&v1[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = [v5 unitName];
  [v3 setText_];

  v7 = sub_23719653C();
  v8 = [objc_opt_self() bundleWithIdentifier_];

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9;
  [v9 setContinuous_];

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = v11;
  [v11 setMinimumValue_];

  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v13;
  LODWORD(v14) = 1.0;
  [v13 setMaximumValue_];

  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = *&v1[v4];
  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v16;
  v65 = v4;
  v19 = v17;
  [v19 value];
  v21 = sub_23713EE98(v19, v20);

  *&v22 = v21;
  [v18 setValue_];

  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = v8;
  v27 = [v25 currentTraitCollection];
  v28 = sub_23719653C();
  v29 = objc_opt_self();
  v30 = [v29 imageNamed:v28 inBundle:v26 compatibleWithTraitCollection:v27];

  [v24 setMinimumTrackImage:v30 forState:0];
  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v32 = v31;
  v33 = v26;
  v34 = [v25 currentTraitCollection];
  v35 = sub_23719653C();
  v36 = [v29 imageNamed:v35 inBundle:v33 compatibleWithTraitCollection:v34];

  [v32 setMaximumTrackImage:v36 forState:0];
  v37 = swift_unknownObjectWeakLoadStrong();
  if (!v37)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v38 = v37;
  v39 = v33;
  v40 = [v25 currentTraitCollection];
  v41 = sub_23719653C();
  v42 = [v29 imageNamed:v41 inBundle:v39 compatibleWithTraitCollection:v40];

  [v38 setThumbImage:v42 forState:0];
  v43 = swift_unknownObjectWeakLoadStrong();
  if (!v43)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v44 = v43;
  v45 = v39;
  v46 = [v25 currentTraitCollection];
  v47 = sub_23719653C();
  v48 = [v29 imageNamed:v47 inBundle:v45 compatibleWithTraitCollection:v46];

  [v44 setThumbImage:v48 forState:1];
  v49 = swift_unknownObjectWeakLoadStrong();
  if (!v49)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v50 = v49;
  v51 = [v49 text];

  if (v51)
  {
    sub_23719657C();
  }

  v52 = *&v1[v65];
  if (!v52)
  {
    goto LABEL_31;
  }

  [v52 value];
  sub_2371966AC();
  v53 = swift_unknownObjectWeakLoadStrong();
  if (!v53)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v54 = v53;
  v55 = [v53 text];

  if (v55)
  {
    v56 = sub_23719657C();
    v58 = v57;

    sub_2371539D4(v56, v58);
    v60 = v59;
    v62 = v61;

    MEMORY[0x2383C5F20](v60, v62);

    v63 = sub_23719653C();

    [v1 setAccessibilityValue_];

    v64 = sub_23719653C();

    [v1 setAccessibilityLabel_];

    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_23713DC54()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  v2 = v1;
  return v1;
}

void sub_23713DC88(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param) = a1;
  v3 = a1;

  sub_237152DA4();
  sub_23713D60C();
}

void sub_23713DD54(float a1)
{
  v2 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
  v3 = *&v1[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
  if (!v3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v1;
  v6 = v3;
  v7 = sub_23713F0E4(v6, a1);

  v8 = sub_23719653C();
  v9 = [objc_opt_self() defaultCenter];
  v10 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_owner;
  swift_beginAccess();
  sub_23713F2EC(&v4[v10], v42);
  v11 = v43;
  if (v43)
  {
    v12 = __swift_project_boxed_opaque_existential_0(v42, v43);
    v13 = *(v11 - 8);
    MEMORY[0x28223BE20](v12, v12);
    v15 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v13 + 16))(v15);
    v16 = sub_237196A6C();
    (*(v13 + 8))(v15, v11);
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  else
  {
    v16 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  strcpy(v42, "param.address");
  HIWORD(v42[1]) = -4864;
  sub_23719690C();
  v18 = *&v4[v2];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = [v18 address];
  *(inited + 96) = MEMORY[0x277D84D38];
  *(inited + 72) = v19;
  strcpy(v42, "param.value");
  HIDWORD(v42[1]) = -352321536;
  sub_23719690C();
  *(inited + 168) = MEMORY[0x277D83A90];
  *(inited + 144) = v7;
  sub_237119F04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
  swift_arrayDestroy();
  v20 = sub_23719651C();

  [v9 postNotificationName:v8 object:v16 userInfo:v20];

  swift_unknownObjectRelease();
  v21 = *&v4[v2];
  v22 = v21;
  v23 = sub_237153528(v21, 3, 1, v7);
  v25 = v24;

  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v23 = 0;
    v26 = 0xE000000000000000;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_15;
  }

  v28 = Strong;
  v29 = sub_23719653C();
  [v28 setText_];

  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v31 = v30;
  v32 = [v30 text];

  if (v32)
  {
    v33 = sub_23719657C();
    v35 = v34;

    sub_2371539D4(v33, v35);
    v37 = v36;
    v39 = v38;

    v42[0] = v23;
    v42[1] = v26;

    MEMORY[0x2383C5F20](v37, v39);

    v40 = sub_23719653C();

    [v4 setAccessibilityValue_];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_23713E1F4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_13;
  }

  v1 = Strong;
  [Strong maximumValue];
  v3 = v2;

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  [v4 minimumValue];
  v7 = v6;

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v8 value];
  v11 = v10;

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  v14 = ((v3 - v7) * 0.05) + v11;
  [v12 maximumValue];
  v16 = v15;

  if (v16 < v14)
  {
    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v18 = v17;
    [v17 maximumValue];
    v14 = v19;
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v20;
  *&v21 = v14;
  [v20 setValue_];

  sub_23713DD54(v14);
}

void sub_23713E394()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_13;
  }

  v1 = Strong;
  [Strong maximumValue];
  v3 = v2;

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  [v4 minimumValue];
  v7 = v6;

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v8 value];
  v11 = v10;

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  v14 = v11 + ((v3 - v7) * -0.05);
  [v12 minimumValue];
  v16 = v15;

  if (v14 < v16)
  {
    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v18 = v17;
    [v17 minimumValue];
    v14 = v19;
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v20;
  *&v21 = v14;
  [v20 setValue_];

  sub_23713DD54(v14);
}

void sub_23713E5E4(void *a1, void *a2, uint64_t *a3)
{
  v4 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
  v5 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  if (v5)
  {
    v9 = v5;
    [a1 value];
    v11 = sub_23713F0E4(v9, v10);

    v12 = [objc_opt_self() defaultCenter];
    if (*a2 != -1)
    {
      swift_once();
    }

    v13 = *a3;
    v14 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_owner;
    swift_beginAccess();
    sub_23713F2EC(v3 + v14, v26);
    v15 = v27;
    if (v27)
    {
      v16 = __swift_project_boxed_opaque_existential_0(v26, v27);
      v17 = *(v15 - 8);
      MEMORY[0x28223BE20](v16, v16);
      v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v17 + 16))(v19);
      v20 = sub_237196A6C();
      (*(v17 + 8))(v19, v15);
      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    else
    {
      v20 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23719B040;
    strcpy(v26, "param.address");
    HIWORD(v26[1]) = -4864;
    sub_23719690C();
    v22 = *(v3 + v4);
    if (v22)
    {
      v23 = [v22 address];
      *(inited + 96) = MEMORY[0x277D84D38];
      *(inited + 72) = v23;
      strcpy(v26, "param.value");
      HIDWORD(v26[1]) = -352321536;
      sub_23719690C();
      *(inited + 168) = MEMORY[0x277D83A90];
      *(inited + 144) = v11;
      sub_237119F04(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
      swift_arrayDestroy();
      v24 = sub_23719651C();

      [v12 postNotificationName:v13 object:v20 userInfo:v24];

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23713EA60(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AUGenericViewFloatParameterCell();
  objc_msgSendSuper2(&v10, sel_setTintColor_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 != 2)
  {
    goto LABEL_5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [v1 tintColor];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 colorWithAlphaComponent_];

      [v6 setTextColor_];
LABEL_5:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23713EB6C(float a1)
{
  v2 = v1;
  sub_237153858();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *&v1[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = Strong;
  v7 = v5;
  v8 = sub_23713EE98(v7, a1);

  *&v9 = v8;
  [v6 setValue_];

  sub_2371966AC();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [v10 text];

  if (v12)
  {
    v13 = sub_23719657C();
    v15 = v14;

    sub_2371539D4(v13, v15);
    v17 = v16;
    v19 = v18;

    MEMORY[0x2383C5F20](v17, v19);

    v20 = sub_23719653C();
    [v2 setAccessibilityValue_];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_23713EDB4()
{
  MEMORY[0x2383C7040](v0 + OBJC_IVAR____TtC12CoreAudioKit31AUGenericViewFloatParameterCell_valueSlider);

  JUMPOUT(0x2383C7040);
}

id sub_23713EDF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUGenericViewFloatParameterCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

float sub_23713EE98(void *a1, float a2)
{
  if (([a1 flags] & 0x10000) != 0)
  {
    [a1 minValue];
    v9 = v8;
    [a1 maxValue];
    return sqrtf((a2 - v9) / (v10 - v9));
  }

  else if (([a1 flags] & 0x20000) != 0)
  {
    [a1 minValue];
    v12 = v11;
    [a1 maxValue];
    return ((a2 - v12) / (v13 - v12)) * ((a2 - v12) / (v13 - v12));
  }

  else if ((~[a1 flags] & 0x30000) != 0)
  {
    if (([a1 flags] & 0x40000) != 0)
    {
      [a1 minValue];
      v19 = v18;
      [a1 maxValue];
      v21 = (a2 - v19) / (v20 - v19);

      return powf(v21, 0.33333);
    }

    else
    {
      if ((~[a1 flags] & 0x50000) != 0)
      {
        if (([a1 flags] & 0x400000) != 0)
        {
          a2 = logf(a2);
          [a1 minValue];
          v15 = logf(v23);
          [a1 maxValue];
          v17 = logf(v24);
        }

        else
        {
          [a1 minValue];
          v15 = v22;
          [a1 maxValue];
        }
      }

      else
      {
        a2 = expf(a2);
        [a1 minValue];
        v15 = expf(v14);
        [a1 maxValue];
        v17 = expf(v16);
      }

      return (a2 - v15) / (v17 - v15);
    }
  }

  else
  {
    [a1 minValue];
    v5 = v4;
    [a1 maxValue];
    return ((a2 - v5) / (v6 - v5)) * (((a2 - v5) / (v6 - v5)) * ((a2 - v5) / (v6 - v5)));
  }
}

float sub_23713F0E4(void *a1, float a2)
{
  if (([a1 flags] & 0x10000) != 0)
  {
    v10 = a2 * a2;
LABEL_7:
    [a1 minValue];
LABEL_9:
    v12 = v11;
    [a1 maxValue];
    return v12 + (v10 * (v13 - v12));
  }

  if (([a1 flags] & 0x20000) != 0)
  {
    v10 = sqrtf(a2);
    [a1 minValue];
    goto LABEL_9;
  }

  if ((~[a1 flags] & 0x30000) == 0)
  {
    v4 = powf(a2, 0.33333);
    [a1 minValue];
    v6 = v5;
    [a1 maxValue];
    v8 = v4 * (v7 - v6);
    return v6 + v8;
  }

  if (([a1 flags] & 0x40000) != 0)
  {
    v10 = (a2 * a2) * a2;
    goto LABEL_7;
  }

  if ((~[a1 flags] & 0x50000) != 0)
  {
    if (([a1 flags] & 0x400000) == 0)
    {
      [a1 minValue];
      v6 = v18;
      [a1 maxValue];
      v8 = (v19 - v6) * a2;
      return v6 + v8;
    }

    [a1 maxValue];
    v21 = v20;
    [a1 minValue];
    v23 = powf(v21 / v22, a2);
    [a1 minValue];
    return v23 * v24;
  }

  else
  {
    [a1 minValue];
    v15 = expf(v14);
    [a1 maxValue];
    v17 = v15 + ((expf(v16) - v15) * a2);

    return logf(v17);
  }
}

uint64_t sub_23713F2EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23713F35C()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = Strong;
  v6 = v2;
  [v5 value];
  v8 = v7;

  v9 = sub_23713F0E4(v6, v8);
  v10 = sub_23719653C();
  v11 = [objc_opt_self() defaultCenter];
  v12 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_owner;
  swift_beginAccess();
  sub_23713F2EC(&v3[v12], v45);
  v13 = v46;
  if (v46)
  {
    v14 = __swift_project_boxed_opaque_existential_0(v45, v46);
    v15 = *(v13 - 8);
    MEMORY[0x28223BE20](v14, v14);
    v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0) + 192;
    (*(v15 + 16))(v17);
    v18 = sub_237196A6C();
    (*(v15 + 8))(v17, v13);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
    v18 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  strcpy(v45, "param.address");
  HIWORD(v45[1]) = -4864;
  sub_23719690C();
  v20 = *&v3[v1];
  if (!v20)
  {
    goto LABEL_17;
  }

  v21 = [v20 address];
  *(inited + 96) = MEMORY[0x277D84D38];
  *(inited + 72) = v21;
  strcpy(v45, "param.value");
  HIDWORD(v45[1]) = -352321536;
  sub_23719690C();
  *(inited + 168) = MEMORY[0x277D83A90];
  *(inited + 144) = v9;
  sub_237119F04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
  swift_arrayDestroy();
  v22 = sub_23719651C();

  [v11 postNotificationName:v10 object:v18 userInfo:v22];

  swift_unknownObjectRelease();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = *&v3[v1];
  v26 = v25;
  sub_237153528(v25, 3, 1, v9);
  v28 = v27;

  if (v28)
  {
    v29 = sub_23719653C();
  }

  else
  {
    v29 = 0;
  }

  [v24 setText_];

  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  v30 = *&v3[v1];
  if (!v30)
  {
    goto LABEL_19;
  }

  [v30 value];
  sub_2371966AC();
  v32 = v45[0];
  v31 = v45[1];
  v33 = swift_unknownObjectWeakLoadStrong();
  if (!v33)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34 = v33;
  v35 = [v33 text];

  if (v35)
  {
    v36 = sub_23719657C();
    v38 = v37;

    sub_2371539D4(v36, v38);
    v40 = v39;
    v42 = v41;

    v45[0] = v32;
    v45[1] = v31;

    MEMORY[0x2383C5F20](v40, v42);

    v43 = sub_23719653C();
    [v3 setAccessibilityValue_];

    return;
  }

LABEL_21:
  __break(1u);
}

id sub_23713F86C()
{
  v0 = sub_23719639C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v5 setGeneratesDecimalNumbers_];
  [v5 setMaximumFractionDigits_];
  [v5 setMinimumFractionDigits_];
  v6 = [objc_opt_self() currentLocale];
  sub_23719637C();

  v7 = sub_23719635C();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  return v5;
}

void sub_23713F9D4()
{
  v1 = sub_23719653C();
  v17 = [objc_opt_self() bundleWithIdentifier_];

  v2 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value;
  v3 = *&v0[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value];
  v4 = *&v0[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_max];
  if (v4 > v3)
  {
    v5 = *&v0[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_min];
    if (v3 > v5)
    {
      v6 = sub_23719653C();
      goto LABEL_14;
    }

    if (v3 < v5)
    {
      *&v0[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value] = v5;
    }

    if (v17)
    {
      goto LABEL_11;
    }

LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  if (v4 < v3)
  {
    *&v0[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value] = v4;
  }

  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_11:
  v7 = v17;
  v8 = sub_23719653C();
  v9 = sub_23719653C();
  v10 = sub_23719653C();
  v6 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  if (!v6)
  {
    sub_23719657C();
    v6 = sub_23719653C();
  }

LABEL_14:
  [v0 setAccessibilityHint_];

  v11 = *&v0[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_formatter];
  v12 = *&v0[v2];
  v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v14) = v12;
  v15 = [v13 initWithFloat_];
  v16 = [v11 stringFromNumber_];

  [v0 setAccessibilityValue_];
  sub_2371414FC();
}

id sub_23713FCA8(SEL *a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v4 setGeometryFlipped_];
  v5 = objc_opt_self();
  v6 = [v5 *a1];
  v7 = [v6 CGColor];

  [v4 setStrokeColor_];
  [v4 setLineWidth_];
  v8 = [v5 clearColor];
  v9 = [v8 CGColor];

  [v4 setFillColor_];
  return v4;
}

id sub_23713FDCC(SEL *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD9FC8]) init];
  v3 = [objc_opt_self() systemFontOfSize_];
  [v2 setFont_];

  [v2 setFontSize_];
  v4 = [objc_opt_self() *a1];
  v5 = [v4 CGColor];

  [v2 setForegroundColor_];
  v6 = sub_23719653C();
  [v2 setString_];

  [v2 setWrapped_];
  [v2 setAlignmentMode_];
  v7 = objc_opt_self();
  v8 = v2;
  v9 = [v7 mainScreen];
  [v9 scale];
  v11 = v10;

  [v8 setContentsScale_];
  return v8;
}

id sub_23713FF7C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9FC8]) init];
  v1 = [objc_opt_self() systemFontOfSize_];
  [v0 setFont_];

  [v0 setFontSize_];
  v2 = [objc_opt_self() secondaryLabelColor];
  v3 = [v2 CGColor];

  [v0 setForegroundColor_];
  v4 = sub_23719653C();
  [v0 setString_];

  [v0 setWrapped_];
  v5 = v0;
  [v5 setHidden_];
  [v5 setAlignmentMode_];
  v6 = [objc_opt_self() mainScreen];
  [v6 scale];
  v8 = v7;

  [v5 setContentsScale_];
  return v5;
}

id sub_237140134()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9FC8]) init];
  v1 = [objc_opt_self() systemFontOfSize_];
  [v0 setFont_];

  [v0 setFontSize_];
  v2 = [objc_opt_self() secondaryLabelColor];
  v3 = [v2 CGColor];

  [v0 setForegroundColor_];
  v4 = sub_23719653C();
  [v0 setString_];

  [v0 setWrapped_];
  [v0 setAlignmentMode_];
  v5 = v0;
  [v5 setHidden_];
  v6 = [objc_opt_self() mainScreen];
  [v6 scale];
  v8 = v7;

  [v5 setContentsScale_];
  return v5;
}

id sub_2371402EC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_param];
  *v9 = 0;
  v9[4] = 1;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_min] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_max] = 1120403456;
  v10 = &v4[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_previousTouchPosition];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_numDigits] = 1;
  v11 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_formatter;
  *&v4[v11] = sub_23713F86C();
  *&v4[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value] = 0;
  v12 = &v4[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_title];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_valueLayer;
  *&v4[v13] = sub_23713FCA8(&selRef_tintColor, 8.0);
  v14 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_lineLayer;
  *&v4[v14] = sub_23713FCA8(&selRef_labelColor, 1.5);
  v15 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_titleLayer;
  *&v4[v15] = sub_23713FDCC(&selRef_secondaryLabelColor);
  v16 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_valueLabel;
  *&v4[v16] = sub_23713FDCC(&selRef_labelColor);
  v17 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_minValueLayer;
  *&v4[v17] = sub_23713FF7C();
  v18 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_maxValueLayer;
  *&v4[v18] = sub_237140134();
  v21.receiver = v4;
  v21.super_class = type metadata accessor for AUKnobControl();
  v19 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  [v19 setIsAccessibilityElement_];
  sub_237140BD8();

  return v19;
}

id sub_2371404B0(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_param];
  *v3 = 0;
  v3[4] = 1;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_min] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_max] = 1120403456;
  v4 = &v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_previousTouchPosition];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_numDigits] = 1;
  v5 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_formatter;
  *&v1[v5] = sub_23713F86C();
  *&v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value] = 0;
  v6 = &v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_title];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_valueLayer;
  *&v1[v7] = sub_23713FCA8(&selRef_tintColor, 8.0);
  v8 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_lineLayer;
  *&v1[v8] = sub_23713FCA8(&selRef_labelColor, 1.5);
  v9 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_titleLayer;
  *&v1[v9] = sub_23713FDCC(&selRef_secondaryLabelColor);
  v10 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_valueLabel;
  *&v1[v10] = sub_23713FDCC(&selRef_labelColor);
  v11 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_minValueLayer;
  *&v1[v11] = sub_23713FF7C();
  v12 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_maxValueLayer;
  *&v1[v12] = sub_237140134();
  v15.receiver = v1;
  v15.super_class = type metadata accessor for AUKnobControl();
  v13 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);

  if (v13)
  {
  }

  return v13;
}

void sub_237140658()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_max);
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value);
  if (v1 >= (v2 + ((v1 - *(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_min)) * 0.05)))
  {
    v1 = v2 + ((v1 - *(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_min)) * 0.05);
  }

  *(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value) = v1;
  sub_23713F9D4();
}

void sub_2371406EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_min);
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value) + ((*(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_max) - v1) * -0.05);
  if (v2 < v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_min);
  }

  *(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value) = v2;
  sub_23713F9D4();
}

void sub_237140780(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_2371905D4(0x6D61726150, 0xE500000000000000);
    if (v5)
    {
      sub_237114D0C(*(a1 + 56) + 32 * v4, v35);
      if (swift_dynamicCast())
      {
        v6 = &v2[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_param];
        *v6 = v33;
        v6[4] = 0;
      }
    }
  }

  if (*(a1 + 16))
  {
    v7 = sub_2371905D4(0x737469676944, 0xE600000000000000);
    if (v8)
    {
      sub_237114D0C(*(a1 + 56) + 32 * v7, v35);
      if (swift_dynamicCast())
      {
        *&v2[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_numDigits] = v33;
        [*&v2[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_formatter] setMaximumFractionDigits_];
      }
    }
  }

  if (*(a1 + 16))
  {
    v9 = sub_2371905D4(7235917, 0xE300000000000000);
    if (v10)
    {
      sub_237114D0C(*(a1 + 56) + 32 * v9, v35);
      if (swift_dynamicCast())
      {
        *&v2[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_min] = v33;
        v11 = *&v2[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_minValueLayer];
        v12 = *&v2[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_formatter];
        v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v14) = v33;
        v15 = [v13 initWithFloat_];
        v16 = [v12 stringFromNumber_];

        [v11 setString_];
      }
    }
  }

  if (*(a1 + 16))
  {
    v17 = sub_2371905D4(7889229, 0xE300000000000000);
    if (v18)
    {
      sub_237114D0C(*(a1 + 56) + 32 * v17, v35);
      if (swift_dynamicCast())
      {
        *&v2[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_max] = v33;
        v19 = *&v2[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_maxValueLayer];
        v20 = *&v2[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_formatter];
        v21 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v22) = v33;
        v23 = [v21 initWithFloat_];
        v24 = [v20 stringFromNumber_];

        [v19 setString_];
      }
    }
  }

  if (*(a1 + 16))
  {
    v25 = sub_2371905D4(0x656C746954, 0xE500000000000000);
    if (v26)
    {
      sub_237114D0C(*(a1 + 56) + 32 * v25, v35);
      if (swift_dynamicCast())
      {
        v27 = &v2[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_title];
        *v27 = v33;
        *(v27 + 1) = v34;

        v28 = *&v2[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_titleLayer];

        v29 = sub_23719653C();

        [v28 setString_];

        if (*(v27 + 1))
        {

          v30 = sub_23719653C();
        }

        else
        {
          v30 = 0;
        }

        [v2 setAccessibilityLabel_];
      }
    }
  }

  if (*(a1 + 16))
  {
    v31 = sub_2371905D4(0x65756C6156, 0xE500000000000000);
    if (v32)
    {
      sub_237114D0C(*(a1 + 56) + 32 * v31, v35);
      if (swift_dynamicCast())
      {
        *&v2[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value] = v33;
        sub_23713F9D4();
      }
    }
  }
}

void sub_237140BD8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v0 frame];
  [v2 setFrame_];
  [v2 setGeometryFlipped_];
  Mutable = CGPathCreateMutable();
  [v1 frame];
  CGRectGetWidth(v40);
  [v1 frame];
  CGRectGetHeight(v41);
  [v1 frame];
  CGRectGetWidth(v42);
  [v1 frame];
  CGRectGetWidth(v43);
  sub_23719672C();
  [v1 frame];
  CGRectGetWidth(v44);
  sub_23719674C();
  [v1 frame];
  CGRectGetWidth(v45);
  v38 = Mutable;
  sub_23719673C();
  [v1 frame];
  CGRectGetWidth(v46);
  sub_23719673C();
  [v2 setPath_];
  v4 = objc_opt_self();
  v5 = [v4 secondaryLabelColor];
  v6 = [v5 CGColor];

  [v2 setStrokeColor_];
  [v2 setLineWidth_];
  v7 = [v4 systemBackgroundColor];
  v8 = [v7 &selRef_setEditing_animated_];

  [v2 setFillColor_];
  v9 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v1 frame];
  [v9 setFrame_];
  [v9 setGeometryFlipped_];
  v37 = CGPathCreateMutable();
  [v1 frame];
  CGRectGetWidth(v47);
  [v1 frame];
  CGRectGetWidth(v48);
  sub_23719671C();
  [v9 &selRef:v37 setReturnKeyType:?];
  v10 = [v4 tertiaryLabelColor];
  v11 = [v10 colorWithAlphaComponent_];

  v12 = [v11 CGColor];
  [v9 setFillColor_];

  v13 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v1 frame];
  [v13 setFrame_];
  [v13 setGeometryFlipped_];
  v36 = CGPathCreateMutable();
  [v1 frame];
  CGRectGetWidth(v49);
  sub_23719673C();
  [v13 setPath_];
  v14 = [v4 secondaryLabelColor];
  v15 = [v14 colorWithAlphaComponent_];

  v16 = [v15 CGColor];
  [v13 setStrokeColor_];

  [v13 setLineWidth_];
  v17 = [v4 clearColor];
  v18 = [v17 CGColor];

  [v13 setFillColor_];
  v19 = [v1 layer];
  [v19 addSublayer_];

  v20 = [v1 layer];
  [v20 addSublayer_];

  v21 = [v1 layer];
  [v21 addSublayer_];

  v22 = *&v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_valueLabel];
  [v1 frame];
  v23 = CGRectGetHeight(v50) * 0.5 + -3.0;
  [v1 frame];
  [v22 setFrame_];
  sub_2371414FC();
  v24 = [v1 layer];
  [v24 addSublayer_];

  v25 = *&v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_minValueLayer];
  [v1 frame];
  v26 = CGRectGetMinX(v52) + -50.0;
  [v1 frame];
  [v25 setFrame_];
  v27 = *&v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_maxValueLayer];
  [v1 frame];
  MinX = CGRectGetMinX(v54);
  [v1 frame];
  v29 = MinX + CGRectGetWidth(v55);
  [v1 frame];
  [v27 setFrame_];
  v30 = [v1 layer];
  [v30 addSublayer_];

  v31 = [v1 layer];
  [v31 addSublayer_];

  v32 = [v1 layer];
  [v32 addSublayer_];

  v33 = [v1 layer];
  [v33 addSublayer_];

  v34 = *&v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_titleLayer];
  [v1 frame];
  [v34 setFrame_];
  v35 = [v1 layer];
  [v35 addSublayer_];
}

void sub_2371414FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value;
  v3 = (1.0 - ((*&v0[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value] - *&v0[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_min]) / (*&v0[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_max] - *&v0[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_min]))) * 4.71238898 + -0.785398163;
  Mutable = CGPathCreateMutable();
  [v0 frame];
  CGRectGetWidth(v14);
  [v0 frame];
  CGRectGetWidth(v15);
  [v0 frame];
  CGRectGetHeight(v16);
  [v0 frame];
  CGRectGetWidth(v17);
  sub_23719673C();
  [*&v0[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_valueLayer] setPath_];
  v5 = CGPathCreateMutable();
  [v1 frame];
  CGRectGetWidth(v18);
  __sincos_stret(v3);
  [v1 frame];
  CGRectGetWidth(v19);
  sub_23719672C();
  sub_23719674C();
  [*&v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_lineLayer] setPath_];
  v6 = *&v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_valueLabel];
  v7 = *&v1[OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_formatter];
  v8 = *&v1[v2];
  v9 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v10) = v8;
  v11 = [v9 initWithFloat_];
  v12 = [v7 stringFromNumber_];

  [v6 setString_];
}

id sub_237141908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUKnobControl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_237141A10(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_minValueLayer) setHidden_];
  [*(v1 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_maxValueLayer) setHidden_];
  [a1 locationInView_];
  v3 = (v1 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_previousTouchPosition);
  *v3 = v4;
  v3[1] = v5;
  v6 = sub_23719653C();
  v7 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B020;
  sub_23719690C();
  v9 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_param);
  v10 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_param + 4);
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94F10);
  *(inited + 72) = v9;
  *(inited + 76) = v10;
  sub_237119F04(inited);
  swift_setDeallocating();
  sub_237123AE4(inited + 32);
  v11 = sub_23719651C();

  [v7 postNotificationName:v6 object:v1 userInfo:v11];

  return 1;
}

uint64_t sub_237141BEC(void *a1)
{
  v2 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_max;
  v3 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_min;
  v4 = (*(v1 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_max) - *(v1 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_min)) * -0.5;
  [a1 locationInView_];
  v6 = v5;
  v8 = v7;
  v9 = (v1 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_previousTouchPosition);
  v10 = OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value;
  *&v5 = (v7 - *(v1 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_previousTouchPosition + 8)) * 0.005;
  v11 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value) + (v4 * *&v5);
  v12 = *(v1 + v2);
  if (v12 >= v11)
  {
    v12 = *(v1 + v3);
    if (v11 >= v12)
    {
      v12 = v11;
    }
  }

  *(v1 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value) = v12;
  sub_23713F9D4();
  v20 = sub_23719653C();
  v13 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  sub_23719690C();
  v15 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_param);
  v16 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_param + 4);
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94F10);
  *(inited + 72) = v15;
  *(inited + 76) = v16;
  sub_23719690C();
  v17 = *(v1 + v10);
  *(inited + 168) = MEMORY[0x277D83A90];
  *(inited + 144) = v17;
  sub_237119F04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
  swift_arrayDestroy();
  v18 = sub_23719651C();

  [v13 postNotificationName:v20 object:v1 userInfo:v18];

  *v9 = v6;
  v9[1] = v8;
  return 1;
}

void sub_237141E84()
{
  [*(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_minValueLayer) setHidden_];
  [*(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_maxValueLayer) setHidden_];
  v1 = sub_23719653C();
  v2 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B020;
  sub_23719690C();
  v4 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_param);
  v5 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_param + 4);
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94F10);
  *(inited + 72) = v4;
  *(inited + 76) = v5;
  sub_237119F04(inited);
  swift_setDeallocating();
  sub_237123AE4(inited + 32);
  v6 = sub_23719651C();

  [v2 postNotificationName:v1 object:v0 userInfo:v6];
}

void sub_237142034(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v4 = *&v1[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
  v5 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name) == *(v4 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name) && *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name + 8) == *(v4 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name + 8);
  if (v5 || (sub_237196A7C() & 1) != 0)
  {
    v6 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount;
    v7 = *(v4 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
    if (v7 < 0)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v8 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_clipDisplayToMax;
    sub_237185B04(a1, 0.0);
    sub_2371424D4(a1, v1, v9);
    v10 = *(a1 + v6);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v12 || (*(a1 + v8) & 1) == 0)
    {
      sub_237185B04(a1, 1.0);
    }

    sub_237142308(1, a1, v1);
    sub_237142308(1, a1, v1);
    sub_237142308(1, a1, v1);
    sub_237142308(1, a1, v1);
    if (v7)
    {
      v13 = 1;
      while (1)
      {
        sub_237185B04(a1, v13);
        sub_2371424D4(a1, v1, v14);
        sub_237142308(0, a1, v1);
        v15 = *(a1 + v6);
        v11 = __OFADD__(v15, 1);
        v16 = v15 + 1;
        if (v11)
        {
          goto LABEL_29;
        }

        if (v13 != v16 || *(a1 + v8) != 1)
        {
          if (__OFADD__(v13, 1))
          {
            goto LABEL_30;
          }

          sub_237185B04(a1, (v13 + 1));
        }

        sub_237142308(1, a1, v1);
        sub_237142308(1, a1, v1);
        sub_237142308(1, a1, v1);
        sub_237142308(1, a1, v1);
        if (v7 == v13)
        {
          break;
        }

        v11 = __OFADD__(v13++, 1);
        if (v11)
        {
          __break(1u);
          break;
        }
      }
    }

    v17 = *(a1 + v6);
    v11 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v11)
    {
LABEL_32:
      __break(1u);
      return;
    }

    sub_237185B04(a1, v18);
    sub_2371424D4(a1, v1, v19);
    v20 = *&v1[v3];
    sub_237183574(v20);
  }

  else
  {

    sub_237181FF0(a1);
  }
}

void sub_237142308(char a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  sub_2371966AC();
  v7 = sub_23719653C();

  [v6 setName_];

  if (a1)
  {
    v8 = *(a2 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minorLine);
    if (v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = *(a2 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_majorLine);
LABEL_5:
  v9 = [v8 CGColor];
  [v6 setBackgroundColor_];

  v10 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xGrids;
  swift_beginAccess();
  v11 = v6;
  MEMORY[0x2383C5F60]();
  if (*((*(a3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v12 = [a3 layer];
  [v12 addSublayer_];
}

void sub_2371424D4(uint64_t a1, char *a2, float a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D76938];
  v44 = v5;
  v8 = [v6 preferredFontForTextStyle_];
  v9 = sub_237115094(0, &unk_27DE94E10);
  *(inited + 40) = v8;
  v10 = *MEMORY[0x277D740C0];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 labelColor];
  v14 = sub_237115094(0, &qword_27DE94788);
  *(inited + 104) = v14;
  *(inited + 80) = v13;
  sub_237119BCC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94888);
  swift_arrayDestroy();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_23719B040;
  *(v15 + 32) = v44;
  *(v15 + 40) = [v6 preferredFontForTextStyle_];
  *(v15 + 64) = v9;
  *(v15 + 72) = v12;
  v16 = [v11 secondaryLabelColor];
  *(v15 + 104) = v14;
  *(v15 + 80) = v16;
  sub_237119BCC(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  v17 = [objc_allocWithZone(MEMORY[0x277CD9FC8]) init];
  v18 = [v6 preferredFontForTextStyle_];
  [v17 setFont_];

  v19 = [v11 labelColor];
  v20 = [v19 CGColor];

  [v17 setForegroundColor_];
  [v17 setFontSize_];
  v21 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v22 = (*&a2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis] + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
  v23 = MEMORY[0x277CDA020];
  if ((*(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name) != *v22 || *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name + 8) != v22[1]) && (sub_237196A7C() & 1) == 0)
  {
    v23 = MEMORY[0x277CDA040];
  }

  v24 = *v23;
  [v17 setAlignmentMode_];

  v25 = objc_opt_self();
  v26 = v17;
  v27 = [v25 mainScreen];
  [v27 scale];
  v29 = v28;

  [v26 setContentsScale_];
  [v26 setAnchorPoint_];

  v30 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xLabels;
  swift_beginAccess();
  v31 = v26;
  MEMORY[0x2383C5F60]();
  if (*((*&a2[v30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a2[v30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  sub_237185BE4(*(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_abbreviateValues), a3);
  v32 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v33 = sub_23719653C();

  type metadata accessor for Key(0);
  sub_23713D200();
  v34 = sub_23719651C();
  v35 = [v32 initWithString:v33 attributes:v34];

  v36 = (*&a2[v21] + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel);
  v37 = v36[1];
  if (v37)
  {
    v38 = *v36;

    MEMORY[0x2383C5F20](v38, v37);

    v39 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v40 = sub_23719653C();

    v41 = sub_23719651C();

    v42 = [v39 initWithString:v40 attributes:v41];

    [v35 appendAttributedString_];
    [v31 setString_];
    v43 = [a2 layer];
    [v43 addSublayer_];
  }

  else
  {
    __break(1u);
  }
}

void sub_237142B10()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v2 = *(*(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    goto LABEL_60;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v40 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_offsetXLabels;
    v4 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer;
    v5 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xGrids;
    v41 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xLabels;
    swift_beginAccess();
    v6 = 0;
    v7 = 0;
    v39 = v3;
    while (1)
    {
      v8 = v7;
      v9 = *(v0 + v1);
      v10 = *(v9 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase);
      if (v10 == 0.0)
      {
        if (v8 <= -9.2234e18)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          break;
        }

        if (v8 >= 9.2234e18)
        {
          goto LABEL_57;
        }

        v11 = *(v9 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
        v12 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          goto LABEL_58;
        }

        v14 = *(v9 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max);
        if (v13 >= v8)
        {
          v14 = *(v9 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min) + (((v14 - *(v9 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min)) / v13) * v8);
        }
      }

      else
      {
        v15 = *(v9 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min);
        v14 = v15 * powf(v10, v8);
      }

      if (*(v0 + v40))
      {
        v16 = ((v7 << 63 >> 63) & 0xC);
      }

      else
      {
        v16 = 0.0;
      }

      v17 = *(v0 + v41);
      if (v17 >> 62)
      {
        if (v7 < sub_2371969FC())
        {
LABEL_16:
          v18 = *(v0 + v1);
          sub_237183E14(v18, v14);
          v20 = v19;

          v21 = *(v0 + v41);
          if ((v21 & 0xC000000000000001) != 0)
          {

            v22 = MEMORY[0x2383C62A0](v7, v21);
          }

          else
          {
            if (v7 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_59;
            }

            v22 = *(v21 + 8 * v7 + 32);
          }

          v23 = *(v0 + v4);
          [v23 frame];
          Height = CGRectGetHeight(v42);
          [v23 frame];
          [v22 setFrame_];
        }
      }

      else if (v7 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      swift_beginAccess();
      v26 = 0;
      while (!v7)
      {
        if (v26)
        {
          goto LABEL_26;
        }

LABEL_21:
        v12 = __OFADD__(v26++, 1);
        if (v12)
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }
      }

      v27 = v14;
      if (v26)
      {
LABEL_26:
        v27 = (v14 * v26) + (v14 * v26);
      }

      v28 = *(v0 + v1);
      sub_237183E14(v28, v27);
      v30 = v29;

      v31 = *(v0 + v5);
      if (v31 >> 62)
      {
        if (v6 >= sub_2371969FC())
        {
          goto LABEL_37;
        }
      }

      else if (v6 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v32 = *(v0 + v5);
      if ((v32 & 0xC000000000000001) != 0)
      {

        v33 = MEMORY[0x2383C62A0](v6, v32);
      }

      else
      {
        if (v6 < 0)
        {
          goto LABEL_53;
        }

        if (v6 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v33 = *(v32 + 8 * v6 + 32);
      }

      v34 = floor(v30);
      v35 = *(v0 + v4);
      [v35 frame];
      v37 = v36;
      if (v14 == *(*(v0 + v1) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_center))
      {
        v38 = 1.0;
      }

      else
      {
        v38 = 0.5;
      }

      [v35 frame];
      [v33 setFrame_];

LABEL_37:
      v12 = __OFADD__(v6++, 1);
      if (v12)
      {
        goto LABEL_52;
      }

      if (v26 != 4)
      {
        goto LABEL_21;
      }

      if (v7 == v39)
      {
        return;
      }

      v12 = __OFADD__(v7++, 1);
      if (v12)
      {
        goto LABEL_55;
      }
    }
  }

  __break(1u);
}

void sub_237142FA4()
{
  sub_237167DBC();
  v1 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 labelColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minorLine];
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minorLine] = v6;

  v8 = *(v0 + v1);
  v9 = [v3 labelColor];
  v10 = [v9 colorWithAlphaComponent_];

  v11 = *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_majorLine];
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_majorLine] = v10;
}

void sub_2371430E0()
{
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_curve];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 tintColor];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 colorWithAlphaComponent_];

      v6 = [v5 CGColor];
    }

    else
    {
      v6 = 0;
    }

    [v2 setFillColor_];
  }
}

id sub_237143220()
{
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_activePointIndex];
  if ((v1 & 0x8000000000000000) == 0)
  {
    v2 = sub_237169FB8(v1);
    v3 = *&v2[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color];
    v4 = v3;

    if (v3)
    {
      return v4;
    }
  }

  result = [v0 tintColor];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_2371432A8(void *a1)
{
  v2 = v1;
  v3 = a1;
  if ([a1 state] == 3)
  {
    [v3 locationInView_];
    v5 = v4;
    v7 = v6;
    v8 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
    swift_beginAccess();
    v9 = *(*(v2 + v8) + 16);
    if (v9)
    {
      v10 = 0;
      v11 = 0x6C6F72746E6F63;
      while (1)
      {
        v12 = *(v2 + v8);
        if (v10 >= *(v12 + 16))
        {
          __break(1u);
LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        v3 = *(v12 + 8 * v10 + 32);
        if (!v3[2])
        {
          goto LABEL_14;
        }

        v13 = sub_2371905D4(0x6C6F72746E6F63, 0xE700000000000000);
        v15 = v14;

        if ((v15 & 1) == 0)
        {
          goto LABEL_15;
        }

        sub_237114D0C(v3[7] + 32 * v13, v21);

        sub_23711BDA4(v21, &v22);
        type metadata accessor for CAAUFilterControl();
        swift_dynamicCast();
        v3 = v20;
        if (sub_237179BB0(v5, v7))
        {
          break;
        }

        ++v10;

        if (v9 == v10)
        {
          return;
        }
      }

      v11 = [objc_opt_self() defaultCenter];
      if (qword_27DE94678 == -1)
      {
        goto LABEL_11;
      }

LABEL_16:
      swift_once();
LABEL_11:
      v16 = qword_27DE96928;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23719B040;
      *&v22 = 0x746E656D676573;
      *(&v22 + 1) = 0xE700000000000000;
      sub_23719690C();
      *(inited + 96) = MEMORY[0x277D83B88];
      *(inited + 72) = v10;
      *&v22 = 0x64656C62616E65;
      *(&v22 + 1) = 0xE700000000000000;
      sub_23719690C();
      v18 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed);
      *(inited + 168) = MEMORY[0x277D839B0];
      *(inited + 144) = v18;
      sub_237119F04(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
      swift_arrayDestroy();
      v19 = sub_23719651C();

      [v11 postNotificationName:v16 object:v2 userInfo:v19];
    }
  }
}

id sub_237143730()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CANBandEQGraphView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_237143788()
{
  v1 = v0;
  v2 = sub_23712F040();
  v3 = sub_23719342C();

  v4 = *&v3[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
  v5 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView;
  v6 = *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView];
  v7 = sub_23719342C();

  v8 = *&v7[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = -1046478848;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed] = -1046478848;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1084227584;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1084227584;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 4;
  type metadata accessor for AUAppleViewControllerBase();
  v9 = sub_237175EDC();
  v46 = v4;
  v10 = &v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v10 = v9;
  v10[1] = v11;

  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = 1086324736;
  v12 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1186988032;
  v13 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1186988032;
  *&v8[v12] = 1101004800;
  *&v8[v13] = sub_237130920(0);
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase] = 0x40000000;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 11;
  v14 = sub_237175EDC();
  v15 = &v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v15 = v14;
  v15[1] = v16;

  v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_extendToZero] = 1;
  sub_23712EA30();
  v17 = *&v1[v5];
  v18 = sub_23719342C();

  v47[3] = type metadata accessor for AUBandpassViewController();
  v47[4] = &off_284A3A7C0;
  v47[0] = v1;
  v19 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  v1;
  sub_23710FAE0(v47, v18 + v19);
  swift_endAccess();
  sub_23716A678();

  sub_23710FB50(v47);
  v20 = *&v1[v5];
  v21 = sub_23719342C();

  v45 = sub_2371688D8(0, 1, 0);
  v44 = v5;
  v22 = *&v1[v5];
  v23 = sub_237193370();

  v24 = sub_237175EDC();
  v26 = v25;
  v27 = sub_237175EDC();
  v29 = v28;
  v30 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel;
  v31 = *&v23[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel];
  v32 = sub_23719653C();
  [v31 setText_];

  [*&v23[v30] setAccessibilityTraits_];
  v33 = *&v23[v30];
  v34 = sub_23719653C();
  [v33 setAccessibilityLabel_];

  v35 = &v23[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName];
  *v35 = v24;
  v35[1] = v26;

  v36 = &v23[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName];
  *v36 = v27;
  v36[1] = v29;
  v37 = v45;

  sub_23712F904(0);
  sub_23712FD40(1);
  if (v45)
  {
    v38 = *&v45[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer];
    if (v38)
    {
      v39 = *&v1[v44];
      v40 = v38;
      v41 = v39;
      v42 = sub_23719342C();

      v43 = [v42 layer];
      [v43 addSublayer_];

      v37 = v43;
    }
  }
}

uint64_t sub_237143C00(unsigned int a1)
{
  if (a1 > 1)
  {
    return 0;
  }

  type metadata accessor for AUAppleViewControllerBase();
  return sub_237175EDC();
}

uint64_t sub_237143CB8(unsigned int a1)
{
  if (a1 > 1)
  {
    return 0;
  }

  type metadata accessor for AUAppleViewControllerBase();
  return sub_237175EDC();
}

id sub_237143DEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUBandpassViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_237143E44()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLevel;
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLevel];
  v3 = 0.0;
  if (v2 < 0.0 || (v3 = 1.0, v2 > 1.0))
  {
    *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLevel] = v3;
  }

  v4 = objc_opt_self();
  [v4 begin];
  [v4 setDisableActions_];
  v5 = *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLayer];
  v6 = [v0 layer];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  Width = CGRectGetWidth(v27);
  v16 = [v0 layer];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v28.origin.x = v18;
  v28.origin.y = v20;
  v28.size.width = v22;
  v28.size.height = v24;
  [v5 setFrame_];

  return [v4 commit];
}

void *sub_2371441F4(void *a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLayer;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v1[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_handlingTouches] = 0;
  v4 = &v1[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v4[1] = _Q0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLevel] = 0;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for AUVisualizationView();
  v10 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  v11 = v10;
  if (v10)
  {
    v12 = *((*MEMORY[0x277D85000] & *v10) + 0xC0);
    v13 = v10;
    v12();
  }

  return v11;
}

void sub_237144310()
{
  v1 = [v0 layer];
  [v1 setGeometryFlipped_];

  v2 = objc_opt_self();
  v3 = [v2 systemBackgroundColor];
  [v0 setBackgroundColor_];

  v4 = *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLayer];
  v5 = [v2 tintColor];
  v6 = [v5 CGColor];

  [v4 setBackgroundColor_];
  v7 = [v0 layer];
  [v7 addSublayer_];
}

id sub_237144448()
{
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLayer];
  v2 = [v0 layer];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  Width = CGRectGetWidth(v24);
  v12 = [v0 layer];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v25.origin.x = v14;
  v25.origin.y = v16;
  v25.size.width = v18;
  v25.size.height = v20;
  v21 = CGRectGetHeight(v25) * *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLevel];

  return [v1 setFrame_];
}

void sub_237144604()
{
  sub_237144310();
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_xMax) = 1148846080;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_yMax) = 1112014848;
  v1 = OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_delayLayers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x2383C62A0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_11;
    }

    v3 = *(v2 + 32);

    v4 = v3;
  }

  v5 = v4;
  v6 = [v0 tintColor];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;

  v8 = [v7 CGColor];

  [v5 setBackgroundColor_];
  v2 = [v0 layer];
  v0 = *(v0 + v1);
  if ((v0 & 0xC000000000000001) != 0)
  {
LABEL_11:

    v9 = MEMORY[0x2383C62A0](0, v0);

    goto LABEL_8;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v0 + 32);
LABEL_8:
    [v2 addSublayer_];

    return;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_2371447AC()
{
  v3 = v0;
  v4 = OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_yValue;
  v5 = *&v0[OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_yValue];
  v6 = OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_xValue;
  LODWORD(v89) = *&v0[OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_xValue];
  v7 = &v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  v93 = v7[3];
  v91 = OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_xMax;
  v87 = v5;
  LODWORD(v88) = *&v3[OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_xMax];
  [v3 bounds];
  Width = CGRectGetWidth(v94);
  v9 = v7[2];
  MinY = v7[3];
  v11 = v7[1];
  v90 = OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_yMax;
  LODWORD(v2) = *&v3[OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_yMax];
  [v3 bounds];
  Height = CGRectGetHeight(v95);
  v13 = *v7;
  v92 = v7;
  v14 = v7[2];
  v15 = *&OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_delayLayers;
  swift_beginAccess();
  v16 = *&v3[*&v15];
  if (v16 >> 62)
  {
    goto LABEL_33;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return;
  }

  do
  {
    v17 = objc_opt_self();
    [v17 begin];
    [v17 setDisableActions_];
    v18 = *&v3[*&v15];
    if ((v18 & 0xC000000000000001) != 0)
    {

      v1 = MEMORY[0x2383C62A0](0, v18);
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v1 = *(v18 + 32);
    }

    v19 = MinY + v11;
    *&MinY = v87;
    v20 = v93 + (Width - v19) * (*&v89 / *&v88);
    v18 = v92;
    [v1 setFrame_];
    [v3 frame];
    Width = floor((CGRectGetWidth(v96) - *(v18 + 8) - *(v18 + 24) - v20) / (v20 - *(v18 + 8)));
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v40 = sub_2371969FC();
      v24 = v40 - 1;
      if (!__OFSUB__(v40, 1))
      {
        goto LABEL_11;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      v41 = sub_2371969FC();
      v25 = *&v3[*&v15];
      if (v41 >= 2)
      {
        goto LABEL_14;
      }

LABEL_44:
      if (v25 >> 62)
      {
        v84 = sub_2371969FC();
        v43 = v84 - 1;
        if (!__OFSUB__(v84, 1))
        {
LABEL_46:
          if (v43 >= v88)
          {
            goto LABEL_58;
          }

          v44 = *&v3[*&v15];
          if (!(v44 >> 62))
          {
            v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v46 = v45 - 1;
            if (!__OFSUB__(v45, 1))
            {
              goto LABEL_49;
            }

            goto LABEL_96;
          }

LABEL_94:
          v85 = sub_2371969FC();
          v46 = v85 - 1;
          if (!__OFSUB__(v85, 1))
          {
LABEL_49:
            *&v15 = v88 - v46;
            if (!__OFSUB__(v88, v46))
            {
              if ((*&v15 & 0x8000000000000000) == 0)
              {
                if (v15 != 0.0)
                {
                  v47 = 0;
                  do
                  {
                    v48 = (v47 + 1);
                    if (__OFADD__(v47, 1))
                    {
                      goto LABEL_80;
                    }

                    v49 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];

                    v1 = v49;
                    v50 = [v3 tintColor];
                    if (!v50)
                    {
                      goto LABEL_103;
                    }

                    v51 = v50;
                    v52 = [v50 colorWithAlphaComponent_];

                    v53 = [v52 CGColor];
                    [v1 setBackgroundColor_];

                    v54 = [v3 layer];
                    [v54 addSublayer_];

                    v55 = swift_beginAccess();
                    MEMORY[0x2383C5F60](v55);
                    if (*((*&v3[*&v93] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[*&v93] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v89 = *((*&v3[*&v93] & 0xFFFFFFFFFFFFFF8) + 0x10);
                      sub_23719664C();
                    }

                    sub_23719665C();
                    swift_endAccess();
                    ++v47;
                  }

                  while (v48 != *&v15);
                }

LABEL_58:
                v56 = *&v3[*&v93];
                if (v56 >> 62)
                {
                  goto LABEL_81;
                }

                v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v18 = v57 - 1;
                if (__OFSUB__(v57, 1))
                {
                  goto LABEL_83;
                }

LABEL_60:
                LODWORD(Height) = *&v3[v91];
                Width = v92[3];
                [v3 bounds];
                v21 = CGRectGetWidth(v97);
                v2 = v92[3];
                v13 = v92[1];
                v15 = v93;
                v58 = *&v3[*&v93];
                if (v58 >> 62)
                {
                  goto LABEL_84;
                }

                if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
                {
                  goto LABEL_62;
                }

LABEL_85:
                [v86 commit];

                return;
              }

              goto LABEL_98;
            }

LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            v26 = sub_2371969FC();
            v27 = v26 - 1;
            if (__OFSUB__(v26, 1))
            {
LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
              return;
            }

            goto LABEL_16;
          }

LABEL_96:
          __break(1u);
          goto LABEL_97;
        }
      }

      else
      {
        v42 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v43 = v42 - 1;
        if (!__OFSUB__(v42, 1))
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_90:
      v14 = v21;
      v60 = sub_2371969FC();
      v21 = v14;
      v61 = v60 - 1;
      if (__OFSUB__(v60, 1))
      {
LABEL_92:
        __break(1u);
      }

      else
      {
        while (v61 >= 1)
        {
          v9 = 0.3 / v18;
          v11 = Width + (v21 - (v2 + v13)) * (*&Height / *&Height);
          v62 = 1 - v60;
          Width = 0.8;
          v63 = 5;
          v15 = COERCE_DOUBLE(&selRef_effectiveContentSize);
          *&v88 = v9;
          while (!__OFADD__(v63 - 4, 1))
          {
            *&MinY = (*&MinY / 50.0) * *&v3[v4];
            v64 = v92[3];
            v65 = ((*&v3[v6] * (v63 - 3)) / *&v3[v91]);
            [v3 bounds];
            v66 = CGRectGetWidth(v98);
            v67 = v92[2];
            v68 = v64 + (v66 - (v92[3] + v92[1])) * v65;
            v69 = (*&MinY / *&v3[v90]);
            [v3 bounds];
            v70 = CGRectGetHeight(v99);
            Height = v92[2];
            v71 = v67 + (v70 - (*v92 + Height)) * v69;
            v13 = v68 + -2.0;
            v2 = v71 - *v92;
            v14 = 4.0;
            v100.size.width = 4.0;
            v100.origin.x = v13;
            v100.origin.y = Height;
            v100.size.height = v2;
            if (v11 < CGRectGetMinX(v100) + 4.0)
            {
              v101.size.width = 4.0;
              v101.origin.x = v13;
              v101.origin.y = Height;
              v101.size.height = v2;
              v72 = v11 - CGRectGetMinX(v101);
              if (v72 < 0.0)
              {
                v72 = 0.0;
              }

              v89 = v72;
              v102.size.width = 4.0;
              v102.origin.x = v13;
              v102.origin.y = Height;
              v102.size.height = v2;
              MinX = CGRectGetMinX(v102);
              v103.size.width = 4.0;
              v103.origin.x = v13;
              v103.origin.y = Height;
              v103.size.height = v2;
              v74 = v11;
              v75 = LODWORD(MinY);
              MinY = CGRectGetMinY(v103);
              v104.size.width = 4.0;
              v104.origin.x = v13;
              v104.origin.y = Height;
              v104.size.height = v2;
              v2 = CGRectGetHeight(v104);
              v13 = MinX;
              Height = MinY;
              LODWORD(MinY) = v75;
              v11 = v74;
              v9 = *&v88;
              v14 = v89;
            }

            v76 = *&v3[*&v93];
            if ((v76 & 0xC000000000000001) != 0)
            {

              v77 = MEMORY[0x2383C62A0](v63 - 4, v76);
            }

            else
            {
              if ((v63 - 4) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_79;
              }

              v77 = *(v76 + 8 * v63);
            }

            v1 = v77;
            v78 = [v3 tintColor];
            if (!v78)
            {
              goto LABEL_102;
            }

            v79 = v78;
            Width = Width - v9;
            v80 = [v78 colorWithAlphaComponent_];

            v81 = [v80 CGColor];
            [v1 setBackgroundColor_];

            [v1 setFrame_];
            ++v63;
            if (v62 + v63 == 5)
            {
              goto LABEL_85;
            }
          }

          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          v82 = sub_2371969FC();
          v18 = v82 - 1;
          if (!__OFSUB__(v82, 1))
          {
            goto LABEL_60;
          }

LABEL_83:
          __break(1u);
LABEL_84:
          v14 = v21;
          v83 = sub_2371969FC();
          v21 = v14;
          if (v83 < 2)
          {
            goto LABEL_85;
          }

LABEL_62:
          v59 = *&v3[*&v15];
          if (v59 >> 62)
          {
            goto LABEL_90;
          }

          v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v61 = v60 - 1;
          if (__OFSUB__(v60, 1))
          {
            goto LABEL_92;
          }
        }
      }

      __break(1u);
      goto LABEL_94;
    }

    if (Width <= -9.22337204e18)
    {
      goto LABEL_38;
    }

    v21 = 9.22337204e18;
    if (Width >= 9.22337204e18)
    {
      goto LABEL_39;
    }

    v22 = *&v3[*&v15];
    if (v22 >> 62)
    {
      goto LABEL_40;
    }

    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v23 - 1;
    if (__OFSUB__(v23, 1))
    {
      goto LABEL_42;
    }

LABEL_11:
    v25 = *&v3[*&v15];
    v88 = Width;
    v93 = v15;
    v86 = v17;
    if (v24 <= Width)
    {
      goto LABEL_44;
    }

    if (v25 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_44;
    }

LABEL_14:
    if (v25 >> 62)
    {
      goto LABEL_99;
    }

    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_101;
    }

LABEL_16:
    if (v27 <= v88)
    {
      goto LABEL_58;
    }

    v28 = -v26;
    while (1)
    {
      v29 = v26 - 1;
      v30 = *&v3[*&v15];
      if ((v30 & 0xC000000000000001) != 0)
      {

        v31 = MEMORY[0x2383C62A0](v26 - 1, v30);

        goto LABEL_22;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v29 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v31 = *(v30 + 8 * v26 + 24);
LABEL_22:
      [v31 removeFromSuperlayer];

      swift_beginAccess();
      v32 = *&v3[*&v15];
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *&v3[*&v15] = v32;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v32 & 0x8000000000000000) != 0 || (v32 & 0x4000000000000000) != 0)
      {
        v32 = sub_237186F8C(v32);
        *&v3[*&v15] = v32;
      }

      v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29 >= v34)
      {
        goto LABEL_31;
      }

      v35 = v34 - 1;
      LODWORD(v89) = v26 - 1;
      v36 = v6;
      v37 = v4;
      v38 = *((v32 & 0xFFFFFFFFFFFFFF8) + 8 * v26 + 0x18);
      memmove(((v32 & 0xFFFFFFFFFFFFFF8) + 8 * v26 + 24), ((v32 & 0xFFFFFFFFFFFFFF8) + 8 * v26 + 32), 8 * (v28 + v34));
      *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) = v35;
      v15 = v93;
      *&v3[*&v93] = v32;
      swift_endAccess();

      v4 = v37;
      v6 = v36;
      v39 = v26 - 2;
      ++v28;
      --v26;
      if (v39 <= v88)
      {
        goto LABEL_58;
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

  while (sub_2371969FC() >= 1);
}

void sub_237145288(void *a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for AUDelayVisualizationView();
  objc_msgSendSuper2(&v11, sel_setTintColor_, a1);
  v3 = OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_delayLayers;
  swift_beginAccess();
  v4 = *&v1[v3];
  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x2383C62A0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = *(v4 + 32);

    v6 = v5;
  }

  v7 = v6;
  v8 = [v1 tintColor];
  if (v8)
  {
    v9 = v8;

    v10 = [v9 CGColor];

    [v7 setBackgroundColor_];
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_2371453A4(int a1, float a2)
{
  if (a1 == 2)
  {
    *(v2 + OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLevel) = a2 / 100.0;
    sub_237143E44();
  }

  else
  {
    if (a1 == 1)
    {
      *(v2 + OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_yValue) = a2;
    }

    else
    {
      if (a1)
      {
        return;
      }

      *(v2 + OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_xValue) = a2;
    }

    sub_2371447AC();
  }
}

id sub_2371453F8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_delayLayers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23719B030;
  v11 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v4[v9] = v10;
  *(v10 + 32) = v11;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_xMax] = 1065353216;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_yMax] = 1065353216;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_xValue] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_yValue] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for AUDelayVisualizationView();
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_23714551C(void *a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_delayLayers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23719B030;
  v5 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v1[v3] = v4;
  *(v4 + 32) = v5;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_xMax] = 1065353216;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_yMax] = 1065353216;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_xValue] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit24AUDelayVisualizationView_yValue] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AUDelayVisualizationView();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_2371456D4()
{
  sub_237144310();
  v1 = &v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  *v1 = xmmword_23719BAC0;
  *(v1 + 1) = xmmword_23719BAC0;
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit26AURingModVisualizationView_modShape];
  v3 = [v0 tintColor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 CGColor];

    [v2 setStrokeColor_];
    [v2 setLineWidth_];
    v6 = [objc_opt_self() clearColor];
    v7 = [v6 CGColor];

    [v2 setFillColor_];
    v8 = [v0 layer];
    [v8 addSublayer_];
  }

  else
  {
    __break(1u);
  }
}

void sub_237145830(int a1, float a2)
{
  if (a1 == 13)
  {
    *(v2 + OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLevel) = a2 / 100.0;
    sub_237143E44();
  }

  else
  {
    if (a1 == 11)
    {
      *(v2 + OBJC_IVAR____TtC12CoreAudioKit26AURingModVisualizationView_freq2) = a2;
    }

    else
    {
      if (a1 != 10)
      {
        return;
      }

      *(v2 + OBJC_IVAR____TtC12CoreAudioKit26AURingModVisualizationView_freq1) = a2;
    }

    sub_2371459AC();
  }
}

long double sub_237145888(double a1)
{
  v3 = (*&v1[OBJC_IVAR____TtC12CoreAudioKit26AURingModVisualizationView_freq1] / 10.0);
  v4 = (*&v1[OBJC_IVAR____TtC12CoreAudioKit26AURingModVisualizationView_freq2] / 10.0);
  [v1 frame];
  v5 = &v1[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  v7 = 6.28318531 / ((v6 - (*&v1[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins + 8] + *&v1[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins + 24])) / v3);
  [v1 frame];
  v9 = 6.28318531 / ((v8 - (v5[1] + v5[3])) / v4);
  [v1 frame];
  v10 = CGRectGetHeight(v15) * 0.5 - (*v5 + v5[2]) * 0.5;
  v11 = v7 * a1;
  v12 = v9 * a1;
  v13 = cos(v11 - v12);
  return v10 + v10 * ((v13 - cos(v11 + v12)) * 0.5);
}

void sub_2371459AC()
{
  Mutable = CGPathCreateMutable();
  [v0 frame];
  v1 = CGRectGetWidth(v7) - (*&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins + 8] + *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins + 24]);
  if (v1 > 0.0)
  {
    if (*&v1 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v1 > -9.22337204e18)
    {
      if (v1 < 9.22337204e18)
      {
        v2 = v1;
        if ((v1 & 0x8000000000000000) == 0)
        {
          sub_237145888(0.0);
          sub_23719672C();
          if (v2)
          {
            v3 = 1;
            while (1)
            {
              sub_237145888(v3);
              sub_23719674C();
              if (v2 == v3)
              {
                break;
              }

              if (__OFADD__(v3++, 1))
              {
                __break(1u);
                break;
              }
            }
          }

          [*&v0[OBJC_IVAR____TtC12CoreAudioKit26AURingModVisualizationView_modShape] setPath_];
          goto LABEL_13;
        }

LABEL_19:
        __break(1u);
        return;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
}

void sub_237145B30()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AURingModVisualizationView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit26AURingModVisualizationView_modShape];
  v2 = &v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  v4 = *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  v3 = *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins + 8];
  [v0 frame];
  v5 = CGRectGetWidth(v7) - (v2[1] + v2[3]);
  [v0 frame];
  [v1 setFrame_];
  sub_2371459AC();
}

id sub_237145CFC(void *a1)
{
  *&v1[OBJC_IVAR____TtC12CoreAudioKit26AURingModVisualizationView_freq1] = 1056964608;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit26AURingModVisualizationView_freq2] = 1056964608;
  v3 = OBJC_IVAR____TtC12CoreAudioKit26AURingModVisualizationView_modShape;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AURingModVisualizationView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_237145E68()
{
  sub_237144310();
  v1 = &v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  *v1 = xmmword_23719BAC0;
  *(v1 + 1) = xmmword_23719BAC0;
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_decimationShape];
  v3 = [v0 tintColor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 CGColor];

    [v2 setFillColor_];
    [v2 setMasksToBounds_];
    v6 = *&v0[OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_sineShape];
    v7 = objc_opt_self();
    v8 = [v7 labelColor];
    v9 = [v8 colorWithAlphaComponent_];

    v10 = [v9 CGColor];
    [v6 setStrokeColor_];

    v11 = [v7 clearColor];
    v12 = [v11 CGColor];

    [v6 setFillColor_];
    v13 = *&v0[OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_midLine];
    v14 = [v7 labelColor];
    v15 = [v14 CGColor];

    [v13 setBackgroundColor_];
    v16 = [v0 layer];
    [v16 addSublayer_];

    v17 = [v0 layer];
    [v17 addSublayer_];

    v18 = [v0 layer];
    [v18 addSublayer_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2371460F4(int a1, float a2)
{
  if (a1 == 5)
  {
    *(v2 + OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLevel) = a2 / 100.0;
    sub_237143E44();
  }

  else
  {
    if (a1 == 4)
    {
      *(v2 + OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_rounding) = a2;
    }

    else
    {
      if (a1 != 3)
      {
        return;
      }

      *(v2 + OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_decimation) = a2;
    }

    sub_23714614C();
  }
}

void sub_23714614C()
{
  v1 = v0;
  [v0 frame];
  if (CGRectGetWidth(v21) <= 0.0)
  {
    return;
  }

  Mutable = CGPathCreateMutable();
  [v0 bounds];
  Height = CGRectGetHeight(v22);
  v3 = &v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  v4 = Height * 0.5 - *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  sub_23719672C();
  v5 = OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_decimation;
  v17 = 1.0;
  v6 = 1.0;
  if (*&v1[OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_decimation] != 0.0)
  {
    [v1 bounds];
    v6 = CGRectGetWidth(v23) / 3.0 * (*&v1[v5] / 100.0);
  }

  [v1 bounds];
  v7 = CGRectGetHeight(v24);
  v8 = *&v1[OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_rounding];
  v18 = v7 * ((101.0 - v8) / 100.0);
  if (v8 != 0.0)
  {
    [v1 bounds];
    v17 = CGRectGetHeight(v25) / v18;
  }

  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v12 = v10;
    [v1 frame];
    v14 = 6.28318531 / ((v13 - (v3[1] + v3[3])) / 1.5);
    [v1 frame];
    v15 = CGRectGetHeight(v27) * 0.5 - (*v3 + v3[2]) * 0.5;
    v10 = v15 + sin((v6 * 0.5 + v11) * v14) * v15;
    if (v18 == 0.0)
    {
      if (v12 >= v4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v16 = v17 * floor(v10 / v17);
      if (vabdd_f64(v17 + v16, v10) >= vabdd_f64(v16, v10))
      {
        v10 = v16;
      }

      else
      {
        v10 = v17 + v16;
      }

      if (v12 >= v4)
      {
        goto LABEL_17;
      }
    }

    if (v4 < v10)
    {
      goto LABEL_7;
    }

LABEL_17:
    if (v4 < v12 && v10 < v4)
    {
LABEL_7:
      sub_23719674C();
    }

    sub_23719674C();
    v11 = v6 + v11;
    v9 = v6 + v9;
    sub_23719674C();
    [v1 bounds];
  }

  while (CGRectGetWidth(v26) >= v11);
  [v1 bounds];
  CGRectGetWidth(v28);
  sub_23719674C();
  [*&v1[OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_decimationShape] setPath_];
}

void sub_2371464A0()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for AUDecimationVisualizationView();
  objc_msgSendSuper2(&v23, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_decimationShape];
  v3 = &v1[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  v5 = *&v1[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  v4 = *&v1[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins + 8];
  [v1 frame];
  v6 = CGRectGetWidth(v36) - (v3[1] + v3[3]);
  [v1 frame];
  [v2 setFrame_];
  v7 = *&v1[OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_sineShape];
  [v2 frame];
  [v7 setFrame_];
  v8 = *&v1[OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_midLine];
  [v1 frame];
  v9 = round(CGRectGetHeight(v38) * 0.5);
  [v1 frame];
  [v8 setFrame_];
  Mutable = CGPathCreateMutable();
  [v1 frame];
  v11 = CGRectGetWidth(v40) - (v3[1] + v3[3]);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  if (v11 < 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v1 frame];
  v14 = v13;
  v15 = v3[1];
  v16 = v3[3];
  [v1 frame];
  CGRectGetHeight(v41);
  sin(6.28318531 / ((v14 - (v15 + v16)) / 1.5) * 0.0);
  v24 = 0x3FF0000000000000;
  v25 = 0;
  v26 = 0;
  v27 = 0x3FF0000000000000;
  v28 = 0;
  v29 = 0;
  sub_23719672C();
  if (v12)
  {
    v17 = 1;
    while (1)
    {
      [v1 frame];
      v19 = v18;
      v20 = v3[1];
      v21 = v3[3];
      [v1 frame];
      CGRectGetHeight(v42);
      sin(6.28318531 / ((v19 - (v20 + v21)) / 1.5) * v17);
      v31 = 0;
      v32 = 0;
      v30 = 0x3FF0000000000000;
      v33 = 0x3FF0000000000000;
      v34 = 0;
      v35 = 0;
      sub_23719674C();
      if (v12 == v17)
      {
        break;
      }

      if (__OFADD__(v17++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

  [v7 setPath_];

  sub_23714614C();
}

id sub_237146828(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_decimationShape;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v10 = OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_sineShape;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v11 = OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_midLine;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v4[OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_decimation] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_rounding] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for AUDecimationVisualizationView();
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_237146938(void *a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_decimationShape;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v4 = OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_sineShape;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v5 = OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_midLine;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_decimation] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_rounding] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AUDecimationVisualizationView();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_237146A48()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit29AUDecimationVisualizationView_midLine);
}

void sub_237146B70()
{
  sub_237144310();
  v1 = &v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  *v1 = xmmword_23719BAC0;
  *(v1 + 1) = xmmword_23719BAC0;
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_overdriveShape];
  v3 = [v0 tintColor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 CGColor];

    [v2 setStrokeColor_];
    [v2 setLineWidth_];
    v6 = [objc_opt_self() clearColor];
    v7 = [v6 CGColor];

    [v2 setFillColor_];
    [v2 setAnchorPoint_];
    [v0 frame];
    v9 = v8 * 0.5;
    [v0 frame];
    [v2 setPosition_];
    v11 = [v0 layer];
    [v11 addSublayer_];
  }

  else
  {
    __break(1u);
  }
}

void sub_237146D28()
{
  v1 = v0;
  v2 = &selRef_effectiveContentSize;
  [v1 frame];
  if (CGRectGetWidth(v39) <= 0.0)
  {
    return;
  }

  Mutable = CGPathCreateMutable();
  [v1 frame];
  Width = CGRectGetWidth(v40);
  v4 = &v1[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  v5 = Width - (*&v1[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins + 8] + *&v1[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins + 24]);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v6 = v5;
  if (v5 < 0)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v7 = 0;
  v8 = OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_linear;
  v9 = OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_square;
  v10 = OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_cubic;
  v11 = MEMORY[0x277D84F90];
  v12 = 0.0;
  v37 = 0.0;
  while (1)
  {
    [v1 v2[252]];
    v14 = 6.28318531 / ((v13 - (v4[1] + v4[3])) / 1.5);
    [v1 v2[252]];
    Height = CGRectGetHeight(v41);
    v16 = *v4;
    v17 = v4[2];
    v18 = sin(v14 * v7);
    v19 = *&v1[v8];
    v20 = *&v1[v9];
    v21 = *&v1[v10];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_237189FD8(0, *(v11 + 2) + 1, 1, v11);
    }

    v23 = *(v11 + 2);
    v22 = *(v11 + 3);
    if (v23 >= v22 >> 1)
    {
      v11 = sub_237189FD8((v22 > 1), v23 + 1, 1, v11);
    }

    v24 = v18;
    v25 = v20 + (v21 * v24);
    v26 = (Height * 0.5 - (v16 + v17) * 0.5) * 0.5 + (Height * 0.5 - (v16 + v17) * 0.5) * (((v19 * v24) * v25) * v24) / 10.0;
    *(v11 + 2) = v23 + 1;
    *&v11[8 * v23 + 32] = v26;
    if ((*&v26 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v27 = v12;
    }

    else
    {
      v27 = (Height * 0.5 - (v16 + v17) * 0.5) * 0.5 + (Height * 0.5 - (v16 + v17) * 0.5) * (((v19 * v24) * v25) * v24) / 10.0;
    }

    if ((~*&v26 & 0x7FF0000000000000) != 0)
    {
      v27 = v26;
    }

    if (v12 > v26)
    {
      v12 = v27;
    }

    if (v26 < v37)
    {
      v2 = &selRef_effectiveContentSize;
      if (v6 == v7)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }

    v2 = &selRef_effectiveContentSize;
    if ((~*&v26 & 0x7FF0000000000000) == 0)
    {
      break;
    }

    v37 = v26;
    if (v6 == v7)
    {
      goto LABEL_31;
    }

LABEL_27:
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_41;
    }
  }

  v28 = v37;
  if ((*&v26 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v28 = v26;
  }

  v37 = v28;
  if (v6 != v7)
  {
    goto LABEL_27;
  }

LABEL_31:
  sub_23719672C();
  if (v6)
  {
    if (*(v11 + 2) < 2uLL)
    {
LABEL_37:
      __break(1u);
    }

    else
    {
      v30 = v6 - 1;
      v31 = v11 + 40;
      v32 = 2;
      while (1)
      {
        sub_23719674C();
        if (!v30)
        {
          break;
        }

        --v30;
        v31 += 8;
        if (v32++ >= *(v11 + 2))
        {
          goto LABEL_37;
        }
      }
    }
  }

  v34 = objc_opt_self();
  [v34 begin];
  [v34 setDisableActions_];
  v35 = *&v1[OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_overdriveShape];
  [v1 frame];
  [v35 setBounds_];
  [v35 setPath_];
  [v34 commit];
}

void sub_237147184(int a1, float a2)
{
  if (a1 > 7)
  {
    if (a1 == 8)
    {
      *(v2 + OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_cubic) = a2;
      goto LABEL_5;
    }

    if (a1 == 9)
    {
      *(v2 + OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLevel) = a2 / 100.0;
      sub_237143E44();
    }
  }

  else
  {
    if (a1 == 6)
    {
      *(v2 + OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_linear) = a2;
      goto LABEL_5;
    }

    if (a1 == 7)
    {
      *(v2 + OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_square) = a2;
LABEL_5:
      sub_237146D28();
    }
  }
}

id sub_237147368(void *a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_overdriveShape;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_linear] = 1065353216;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_square] = 1065353216;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit28AUOverdriveVisualizationView_cubic] = 1065353216;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AUOverdriveVisualizationView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_2371474B8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5.receiver = a1;
  v5.super_class = a3();
  v3 = objc_msgSendSuper2(&v5, sel_tintColor);

  return v3;
}

void sub_23714753C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), void *a5, SEL *a6)
{
  v15.receiver = a1;
  v15.super_class = a4();
  v9 = v15.receiver;
  v10 = a3;
  objc_msgSendSuper2(&v15, sel_setTintColor_, v10);
  v11 = *&v9[*a5];
  v12 = [v9 tintColor];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 CGColor];

    [v11 *a6];
  }

  else
  {
    __break(1u);
  }
}

void sub_237147618()
{
  sub_237144310();
  v1 = &v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  *v1 = xmmword_23719BAC0;
  *(v1 + 1) = xmmword_23719BAC0;
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipShape];
  v3 = [v0 tintColor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 CGColor];

    [v2 setFillColor_];
    [v2 setMasksToBounds_];
    v6 = &v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipLines];
    v7 = *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipLines];
    v38 = v7;
    v39 = v2;
    v8 = objc_opt_self();
    v9 = [v8 redColor];
    v10 = [v9 CGColor];

    [v7 setBackgroundColor_];
    v37 = *(v6 + 1);
    v11 = [v8 redColor];
    v12 = [v11 CGColor];

    [v37 &selRef:v12 setImage:?];
    v13 = &v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipAreas];
    v14 = *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipAreas];
    v15 = [v8 redColor];
    v16 = [v15 colorWithAlphaComponent_];

    v17 = [v16 CGColor];
    [v14 &selRef:v17 setImage:?];

    v18 = *(v13 + 1);
    v19 = [v8 redColor];
    v20 = [v19 colorWithAlphaComponent_];

    v21 = [v20 CGColor];
    [v18 &selRef:v21 setImage:?];

    v22 = *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_sineWave];
    v23 = [v8 labelColor];
    v24 = [v23 colorWithAlphaComponent_];

    v25 = [v24 CGColor];
    [v22 setStrokeColor_];

    v26 = [v8 clearColor];
    v27 = [v26 CGColor];

    [v22 setFillColor_];
    v28 = *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_midLine];
    v29 = [v8 labelColor];
    v30 = [v29 CGColor];

    [v28 setBackgroundColor_];
    v31 = [v0 layer];
    [v31 addSublayer_];

    v32 = [v0 layer];
    [v32 addSublayer_];

    v33 = [v0 layer];
    [v33 addSublayer_];

    v34 = [v0 layer];
    [v34 addSublayer_];

    v35 = [v0 layer];
    [v35 addSublayer_];

    v36 = [v0 layer];
    [v36 addSublayer_];

    v40 = [v0 layer];
    [v40 addSublayer_];
  }

  else
  {
    __break(1u);
  }
}

void sub_237147AEC(int a1, float a2)
{
  if (a1 == 14)
  {
    *(v2 + OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clip) = a2;
    sub_237147B68();

    sub_237147E18();
  }

  else if (a1 == 15)
  {
    *(v2 + OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_mixLevel) = a2 / 100.0;

    sub_237143E44();
  }
}

void sub_237147B68()
{
  [v0 frame];
  if (CGRectGetWidth(v11) <= 0.0)
  {
    return;
  }

  Mutable = CGPathCreateMutable();
  [v0 frame];
  Width = CGRectGetWidth(v12);
  v2 = &v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  v3 = Width - (*&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins + 8] + *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins + 24]);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = v3;
  if (v3 < 0)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v5 = 0;
  while (1)
  {
    [v0 frame];
    v7 = 6.28318531 / ((v6 - (v2[1] + v2[3])) / 1.5);
    [v0 frame];
    CGRectGetHeight(v13);
    sin(v7 * v5);
    [v0 frame];
    CGRectGetHeight(v14);
    if (!v5)
    {
      break;
    }

    sub_23719674C();
    if (v4 == v5)
    {
      goto LABEL_15;
    }

LABEL_11:
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
      return;
    }
  }

  sub_23719672C();
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_15:
  [*&v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_sineWave] setPath_];
}

void sub_237147E18()
{
  v1 = v0;
  [v0 frame];
  if (CGRectGetWidth(v38) <= 0.0)
  {
    return;
  }

  Mutable = CGPathCreateMutable();
  [v0 frame];
  Width = CGRectGetWidth(v39);
  v3 = &v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  v4 = Width - (*&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins + 8] + *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins + 24]);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v5 = v4;
  if (v4 < 0)
  {
LABEL_59:
    __break(1u);
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clip;
  v36 = 0.0;
  v12 = 0.5;
  v34 = 0.0;
  v35 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  while (1)
  {
    v16 = v14;
    [v1 frame];
    v18 = 6.28318531 / ((v17 - (v3[1] + v3[3])) / 1.5);
    [v1 frame];
    v19 = CGRectGetHeight(v40) * v12 - (*v3 + v3[2]) * v12;
    v20 = sin(v18 * v6);
    v21 = ((*&v1[v11] + 80.0) / 100.0);
    v22 = (v19 + v20 * v19) * v21;
    [v1 frame];
    v14 = v22 + (1.0 - v21) * ((CGRectGetHeight(v41) - *v3 - v3[2]) * 0.5);
    [v1 frame];
    Height = CGRectGetHeight(v42);
    if (v21 < 0.78)
    {
      if ((v7 & 1) == 0)
      {
        v12 = 0.5;
        if (v6)
        {
          goto LABEL_25;
        }

LABEL_44:
        sub_23719672C();
        if (v5 == v6)
        {
          goto LABEL_52;
        }

        goto LABEL_45;
      }

      v12 = 0.5;
      if (v5 == v6)
      {
        goto LABEL_52;
      }

      v7 = 1;
      goto LABEL_7;
    }

    v24 = round(Height * 0.5);
    v12 = 0.5;
    if (v14 < v24 - v24 * 0.8 + 8.0)
    {
      if (v10)
      {
        v25 = v36;
      }

      else
      {
        v25 = v6;
      }

      v26 = v35;
      if ((v10 & 1) == 0)
      {
        v26 = v24 - v24 * 0.8 + 8.0;
      }

      v35 = v26;
      v36 = v25;
      v27 = v34;
      if ((v10 & 1) == 0)
      {
        v27 = v6;
      }

      v34 = v27;
      if ((v10 & 1) == 0)
      {
        v13 = v24 - v24 * 0.8 + 8.0;
      }

      if (v5 == v6)
      {
        goto LABEL_52;
      }

      v7 = 1;
      v8 = 1;
      v9 = 1;
      v10 = 1;
      goto LABEL_7;
    }

    if (v24 + v24 * 0.8 - (v3[2] + *v3) + -8.0 < v14)
    {
      break;
    }

    if (v8)
    {
      if (v16 == v13)
      {
        v31 = v16;
      }

      else
      {
        v31 = v13;
      }

      v32 = v31;
      sub_23719674C();
      sub_23719674C();
      sub_23719674C();
      v12 = 0.5;
      sub_23719674C();
      sub_23719674C();
      sub_23719674C();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v35 = 0.0;
      v36 = 0.0;
      v34 = 0.0;
      v13 = 0.0;
      if (!v6)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      if (!v6)
      {
        goto LABEL_44;
      }

LABEL_25:
      sub_23719674C();
      if (v5 == v6)
      {
        goto LABEL_52;
      }

LABEL_45:
      v7 = 0;
      goto LABEL_7;
    }

    if (v5 == v6)
    {
      goto LABEL_52;
    }

    v8 = 0;
    v7 = 1;
LABEL_7:
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
      goto LABEL_56;
    }
  }

  if (v9)
  {
    v28 = v36;
  }

  else
  {
    v28 = v6;
  }

  v29 = v35;
  if ((v9 & 1) == 0)
  {
    v29 = v24 + v24 * 0.8 - (v3[2] + *v3) + -8.0;
  }

  v35 = v29;
  v36 = v28;
  v30 = v34;
  if ((v9 & 1) == 0)
  {
    v30 = v6;
  }

  v34 = v30;
  if ((v9 & 1) == 0)
  {
    v13 = v24 + v24 * 0.8 - (v3[2] + *v3) + -8.0;
  }

  if (v5 != v6)
  {
    v10 |= v9 ^ 1;
    v7 = 1;
    v8 = 1;
    v9 = 1;
    goto LABEL_7;
  }

LABEL_52:
  [*&v1[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipShape] setPath_];
}

void sub_237148374()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for AUClippingVisualizationView();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipShape];
  v2 = &v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  v4 = *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins];
  v3 = *&v0[OBJC_IVAR____TtC12CoreAudioKit19AUVisualizationView_margins + 8];
  [v0 frame];
  v5 = CGRectGetWidth(v21) - (v2[1] + v2[3]);
  [v0 frame];
  [v1 setFrame_];
  v6 = *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_sineWave];
  [v1 frame];
  [v6 setFrame_];
  [v0 frame];
  v7 = round(CGRectGetHeight(v23) * 0.5);
  v8 = &v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipLines];
  v9 = *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipLines];
  v10 = v7 - v7 * 0.8;
  v11 = *v2 + v10;
  [v0 frame];
  [v9 setFrame_];
  v12 = *(v8 + 1);
  v13 = v7 + v7 * 0.8;
  v14 = v13 - v2[2];
  [v0 frame];
  [v12 setFrame_];
  v15 = &v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipAreas];
  v16 = *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipAreas];
  [v0 frame];
  [v16 setFrame_];
  v17 = *(v15 + 1);
  v18 = v13 - v2[2];
  [v0 frame];
  [v17 setFrame_];
  v19 = *&v0[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_midLine];
  [v0 frame];
  [v19 setFrame_];
  sub_237147B68();
  sub_237147E18();
}

id sub_237148620(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipShape;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v10 = OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_sineWave;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v11 = OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_midLine;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v12 = &v4[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipLines];
  v13 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v14 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *v12 = v13;
  *(v12 + 1) = v14;
  v15 = &v4[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipAreas];
  v16 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v17 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *v15 = v16;
  *(v15 + 1) = v17;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clip] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for AUClippingVisualizationView();
  return objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_237148794(void *a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipShape;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v4 = OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_sineWave;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v5 = OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_midLine;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v6 = &v1[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipLines];
  v7 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v8 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *v6 = v7;
  *(v6 + 1) = v8;
  v9 = &v1[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipAreas];
  v10 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v11 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *v9 = v10;
  *(v9 + 1) = v11;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clip] = 0;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for AUClippingVisualizationView();
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

void sub_237148900()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipLines);

  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit27AUClippingVisualizationView_clipAreas);
}

id sub_2371489B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_237148C10()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
  v5 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  if (!v5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v5 minValue];
  *&v3[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_minValue] = v6;

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v7;
  v9 = *(v1 + v4);
  if (!v9)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v9 maxValue];
  *&v8[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_maxValue] = v10;

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = v11;
  v13 = *(v1 + v4);
  if (!v13)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v13 value];
  v14 = *&v12[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_currentValue];
  *&v12[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_currentValue] = v15;
  sub_23710FFE8(v14);

  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = v16;
  v18 = *(v1 + v4);
  if (!v18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v19 = [v18 unitName];
  [v17 setText_];

  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = v20;
  v22 = *(v1 + v4);
  if (!v22)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v22 minValue];
  v24 = v23;
  v25 = *(v1 + v4);
  v26 = v25;
  sub_237153528(v25, 3, 1, v24);
  v28 = v27;

  if (v28)
  {
    v29 = sub_23719653C();
  }

  else
  {
    v29 = 0;
  }

  [v21 setText_];

  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
    goto LABEL_32;
  }

  v31 = v30;
  v32 = *(v1 + v4);
  if (!v32)
  {
LABEL_33:
    __break(1u);
    return;
  }

  [v32 maxValue];
  v34 = v33;
  v35 = *(v1 + v4);
  v36 = v35;
  sub_237153528(v35, 3, 1, v34);
  v38 = v37;

  if (v38)
  {
    v39 = sub_23719653C();
  }

  else
  {
    v39 = 0;
  }

  [v31 setText_];
}

void sub_237148EDC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param) = a1;
  v3 = a1;

  sub_237152DA4();
  sub_237148C10();
}

void sub_237149010()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v4 = Strong;
    v5 = [v0 tintColor];
    if (!v5)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v6 = v5;
    v7 = [v5 colorWithAlphaComponent_];

    [v4 setTextColor_];
    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = v8;
    v10 = [v0 tintColor];
    if (!v10)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v11 = v10;
    v12 = [v10 colorWithAlphaComponent_];

    [v9 setTextColor_];
    v13 = swift_unknownObjectWeakLoadStrong();
    if (!v13)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v14 = v13;
    v15 = [v0 tintColor];
    if (!v15)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v16 = v15;
    v17 = [v15 colorWithAlphaComponent_];

    [v14 setTextColor_];
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = [v0 tintColor];
  [v19 setTintColor_];
}

id sub_237149258(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AUGenericViewMeterParameterCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_237149344()
{
  MEMORY[0x2383C7040](v0 + OBJC_IVAR____TtC12CoreAudioKit31AUGenericViewMeterParameterCell_meter);
  MEMORY[0x2383C7040](v0 + OBJC_IVAR____TtC12CoreAudioKit31AUGenericViewMeterParameterCell_unitLabel);
  MEMORY[0x2383C7040](v0 + OBJC_IVAR____TtC12CoreAudioKit31AUGenericViewMeterParameterCell_minLabel);
  MEMORY[0x2383C7040](v0 + OBJC_IVAR____TtC12CoreAudioKit31AUGenericViewMeterParameterCell_maxLabel);

  JUMPOUT(0x2383C7040);
}

id sub_2371493B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUGenericViewMeterParameterCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_237149488()
{
  v0 = [objc_allocWithZone(type metadata accessor for AULabeledMeterView()) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94D18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B700;
  *(inited + 32) = 7235949;
  *(inited + 40) = 0xE300000000000000;
  v2 = MEMORY[0x277D83A90];
  *(inited + 48) = 0;
  *(inited + 72) = v2;
  *(inited + 80) = 7889261;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = 1101004800;
  *(inited + 120) = v2;
  *(inited + 128) = 0x7265746E6563;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0;
  *(inited + 168) = v2;
  *(inited + 176) = 6778732;
  *(inited + 184) = 0xE300000000000000;
  *(inited + 192) = 0;
  *(inited + 216) = v2;
  strcpy((inited + 224), "gridLineCount");
  *(inited + 264) = MEMORY[0x277D83B88];
  *(inited + 238) = -4864;
  *(inited + 240) = 3;
  v3 = sub_237119CF4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0);
  swift_arrayDestroy();
  sub_23714F998(v3);

  v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_vertical] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit18AULabeledMeterView_margins + 16] = xmmword_23719BBB0;
  v4 = v0;
  sub_237150764();
  v5 = sub_23719653C();
  v6 = [objc_opt_self() bundleWithIdentifier_];

  if (v6)
  {
    v7 = sub_23719653C();
    v8 = sub_23719653C();
    v9 = sub_23719653C();
    v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

    if (!v10)
    {
      sub_23719657C();
      v10 = sub_23719653C();
    }
  }

  else
  {
    v10 = 0;
  }

  [v4 setAccessibilityLabel_];

  return v4;
}

void sub_237149784(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_knobs;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_knobs] = a1;

  v4 = *&v1[v2];
  if (v4 >> 62)
  {
    v5 = sub_2371969FC();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2383C62A0](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v1 addSubview_];
  }

LABEL_10:

  sub_237149E38(v3);
}

void sub_23714993C(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for AULimiterControlsView();
  objc_msgSendSuper2(&v11, sel_setBounds_, a1, a2, a3, a4);
  v9 = OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_previousWidth;
  v10 = *&v4[OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_previousWidth];
  [v4 bounds];
  if (v10 != CGRectGetWidth(v12))
  {
    sub_23714A528();
    [v4 bounds];
    *&v4[v9] = CGRectGetWidth(v13);
  }
}

char *sub_2371499F0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_meter;
  *&v4[v9] = sub_237149488();
  v10 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_knobs] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_previousWidth] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_spacingConstraints] = v10;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for AULimiterControlsView();
  v11 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemBackgroundColor];
  v15 = [v14 colorWithAlphaComponent_];

  [v13 setBackgroundColor_];
  v16 = [v13 layer];

  [v16 setCornerRadius_];
  [v13 addSubview_];
  sub_237149C34();

  return v13;
}

void sub_237149C34()
{
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_meter];
  v2 = [v1 topAnchor];
  v3 = [v0 topAnchor];
  v4 = [v2 constraintEqualToAnchor:v3 constant:30.0];

  [v4 setActive_];
  v5 = [v1 leadingAnchor];
  v6 = [v0 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:20.0];

  [v7 setActive_];
  v8 = [v1 trailingAnchor];
  v9 = [v0 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-20.0];

  [v10 setActive_];
  v11 = [v1 heightAnchor];
  v12 = [v11 constraintEqualToConstant_];

  [v12 setActive_];
}

void sub_237149E38(CGFloat a1)
{
  v6 = v1;
  v7 = OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_knobs;
  v8 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_knobs);
  if (v8 >> 62)
  {
    v9 = sub_2371969FC();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&a1 = roundf(vcvts_n_f32_s64(v9, 1uLL));
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (*&a1 <= -9.2234e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (*&a1 >= 9.2234e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v2 = *&a1 - 1;
  if (__OFSUB__(*&a1, 1))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v1 = *(v1 + v7);
  if ((v1 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_48:
      v3 = sub_2371969FC();
      v10 = *(v6 + v7);
      if ((v10 & 0xC000000000000001) == 0)
      {
        goto LABEL_14;
      }

LABEL_49:

      v11 = MEMORY[0x2383C62A0](0, v10);

      goto LABEL_16;
    }

    if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_51;
    }

    v4 = v1[v2 + 4];
    if (!(v1 >> 62))
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:

  v4 = MEMORY[0x2383C62A0](v2, v1);

  v1 = *(v6 + v7);
  if (!(v1 >> 62))
  {
LABEL_11:
    v1 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_46:
  LOBYTE(v1) = sub_2371969FC();
LABEL_12:
  v2 = &selRef_effectiveContentSize;
  [v6 frame];
  Width = CGRectGetWidth(v70);
  v10 = *(v6 + v7);
  if (v10 >> 62)
  {
    goto LABEL_48;
  }

  v3 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

LABEL_14:
  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_55;
  }

  v11 = *(v10 + 32);
LABEL_16:
  [v11 *(v2 + 2016)];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v71.origin.x = v13;
  v71.origin.y = v15;
  v71.size.width = v17;
  v71.size.height = v19;
  a1 = CGRectGetWidth(v71);
  v20 = *(v6 + v7);
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_18;
  }

LABEL_51:
  v63 = a1;
  v21 = sub_2371969FC();
  a1 = v63;
LABEL_18:
  v22 = (Width - a1 * v3) / v21 + -1.0;
  v23 = 60.0;
  if (v22 <= 60.0)
  {
    v23 = v22;
  }

  if (v22 >= 0.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 10.0;
  }

  v25 = 0x278A25000uLL;
  if (v1)
  {
    v27 = [v4 centerXAnchor];
    v28 = [v6 centerXAnchor];
    v37 = [v27 constraintEqualToAnchor_];
  }

  else
  {
    v26 = v4;
    v27 = [v26 centerXAnchor];
    v28 = [v6 centerXAnchor];
    [v26 *(v2 + 2016)];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v72.origin.x = v30;
    v72.origin.y = v32;
    v72.size.width = v34;
    v72.size.height = v36;
    v37 = [v27 constraintEqualToAnchor:v28 constant:v24 * 0.5 - CGRectGetWidth(v72) * 0.5];
  }

  v38 = v37;

  [v38 setActive_];
  v39 = *(v6 + v7);
  if (!(v39 >> 62))
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = &OBJC_IVAR____TtC12CoreAudioKit31AUGenericViewMeterParameterCell_minLabel;
    if (v40)
    {
      goto LABEL_28;
    }

LABEL_39:
    v61 = objc_opt_self();
    swift_beginAccess();
    sub_23710EEB4();

    v62 = sub_23719661C();

    [v61 activateConstraints_];

    return;
  }

  v64 = *(v6 + v7);
  v65 = sub_2371969FC();
  v39 = v64;
  v40 = v65;
  v41 = &OBJC_IVAR____TtC12CoreAudioKit31AUGenericViewMeterParameterCell_minLabel;
  if (!v65)
  {
    goto LABEL_39;
  }

LABEL_28:
  if (v40 >= 1)
  {
    v42 = v41[6];
    v66 = v4;
    v67 = v39 & 0xC000000000000001;
    v43 = v39;

    v44 = v43;
    v45 = 0;
    v46 = 0;
    v68 = v40;
    v69 = v43;
    do
    {
      if (v67)
      {
        v48 = MEMORY[0x2383C62A0](v46, v44);
      }

      else
      {
        v48 = *(v44 + 8 * v46 + 32);
      }

      v40 = v48;
      v49 = [v40 centerYAnchor];
      v50 = [v6 centerYAnchor];
      v51 = v25;
      v52 = [v49 *(v25 + 3256)];

      [v52 setActive_];
      v53 = [v40 widthAnchor];
      v54 = [v53 constraintEqualToConstant_];

      [v54 setActive_];
      v55 = [v40 heightAnchor];
      v56 = [v55 constraintEqualToConstant_];

      [v56 setActive_];
      v47 = v40;
      if (v45)
      {
        v57 = [v40 leadingAnchor];

        v58 = [v45 trailingAnchor];
        v59 = [v57 (v51 + 3966)];

        v60 = swift_beginAccess();
        MEMORY[0x2383C5F60](v60);
        if (*((*(v6 + v42) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + v42) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23719664C();
        }

        sub_23719665C();
        swift_endAccess();
        v47 = v45;
      }

      ++v46;

      v45 = v40;
      v44 = v69;
      v25 = v51;
    }

    while (v68 != v46);

    v4 = v66;
    goto LABEL_39;
  }

LABEL_55:
  __break(1u);
}

void sub_23714A528()
{
  [v0 frame];
  Width = CGRectGetWidth(v27);
  v2 = OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_knobs;
  v3 = *&v0[OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_knobs];
  if (v3 >> 62)
  {
    v4 = sub_2371969FC();
    v3 = *&v0[v2];
    if ((v3 & 0xC000000000000001) == 0)
    {
      goto LABEL_3;
    }

LABEL_23:

    v5 = MEMORY[0x2383C62A0](0, v3);

    goto LABEL_5;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = *(v3 + 32);
LABEL_5:
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  v14 = CGRectGetWidth(v28);
  v15 = *&v0[v2];
  if (v15 >> 62)
  {
    v26 = v14;
    v16 = sub_2371969FC();
    v14 = v26;
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = (Width - v14 * v4) / v16 + -1.0;
  v18 = 60.0;
  if (v17 <= 60.0)
  {
    v18 = v17;
  }

  if (v17 >= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 10.0;
  }

  v20 = OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_spacingConstraints;
  swift_beginAccess();
  v21 = *&v0[v20];
  if (v21 >> 62)
  {
    v22 = sub_2371969FC();
    if (!v22)
    {
      return;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      return;
    }
  }

  if (v22 < 1)
  {
LABEL_28:
    __break(1u);
    return;
  }

  for (i = 0; i != v22; ++i)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x2383C62A0](i, v21);
    }

    else
    {
      v24 = *(v21 + 8 * i + 32);
    }

    v25 = v24;
    [v24 setConstant_];
  }
}

id sub_23714A768()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AULimiterControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23714A81C()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_graphView);
    type metadata accessor for AUFrequencyData();
    v3 = swift_allocObject();
    v3[2] = 0;
    v3[3] = v1;
    v3[4] = v2;
    *(v0 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_frequencyData) = v3;
    v4 = v2;
  }

  v5 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_frequencyData);
  if (v5)
  {

    sub_237131024();
    ioDataSize = 0x4000;
    v6 = *(v5 + 24);
    v7 = sub_237130F84();
    Property = AudioUnitGetProperty(v6, 0x34u, 0, 0, v7, &ioDataSize);
    if (Property != sub_2371964DC())
    {
      sub_237176A9C(0xD000000000000029, 0x800000023719EA70, Property);
    }
  }
}

uint64_t sub_23714A948(AudioUnitParameterID a1)
{
  v2 = sub_23714AADC();
  sub_2371305C0(a1);
  v3 = sub_23719666C();
  v4 = [v2 stringFromNumber_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_23719657C();

  return v5;
}

void sub_23714A9DC()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = AUListenerDispose(v2);
    if (v3 != sub_2371964DC())
    {
      sub_237176A9C(0xD00000000000001BLL, 0x800000023719EF90, v3);
    }
  }

  *(v0 + v1) = 0;
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  [v5 removeObserver_];

  v6 = [v4 defaultCenter];
  [v6 removeObserver_];
}

id sub_23714AADC()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController____lazy_storage___decimalFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController____lazy_storage___decimalFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController____lazy_storage___decimalFormatter);
  }

  else
  {
    v4 = sub_23714B274();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_23714AB3C()
{
  v1 = v0;
  v2 = sub_23719639C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController____lazy_storage___wholeNumberFormatter;
  v8 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController____lazy_storage___wholeNumberFormatter);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController____lazy_storage___wholeNumberFormatter);
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v10 setGeneratesDecimalNumbers_];
    v11 = [objc_opt_self() currentLocale];
    sub_23719637C();

    v12 = sub_23719635C();
    (*(v3 + 8))(v6, v2);
    [v10 setLocale_];

    v13 = *(v1 + v7);
    *(v1 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v14 = v8;
  return v9;
}

uint64_t sub_23714ACBC()
{
  v1 = v0;
  v26 = *MEMORY[0x277D85DE8];
  result = sub_23719630C();
  if (result)
  {
    v3 = result;
    inParameter.mAudioUnit = 0x44496D61726170;
    *&inParameter.mParameterID = 0xE700000000000000;
    sub_23719690C();
    if (!*(v3 + 16))
    {
      goto LABEL_21;
    }

    v4 = sub_237190728(ioDataSize);
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_237114D0C(*(v3 + 56) + 32 * v4, v25);
    sub_237114F1C(ioDataSize);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    mAudioUnit_low = LODWORD(inParameter.mAudioUnit);
    inParameter.mAudioUnit = 0x65756C6176;
    *&inParameter.mParameterID = 0xE500000000000000;
    sub_23719690C();
    if (*(v3 + 16) && (v7 = sub_237190728(ioDataSize), (v8 & 1) != 0))
    {
      sub_237114D0C(*(v3 + 56) + 32 * v7, v25);
      sub_237114F1C(ioDataSize);

      result = swift_dynamicCast();
      if (result)
      {
        ioDataSize[0] = 0;
        v9 = sub_23717481C(inParameter.mAudioUnit, *&inParameter.mParameterID);

        if (v9)
        {
          v10 = *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
          if (v10)
          {
            v11 = *ioDataSize;
            if (v11 > sub_237130920(mAudioUnit_low) || sub_2371307E8(mAudioUnit_low) > v11 || (inParameter.mAudioUnit = v10, inParameter.mScope = 0, inParameter.mElement = 0, inParameter.mParameterID = mAudioUnit_low, v12 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener, swift_beginAccess(), LODWORD(v12) = AUParameterSet(*&v1[v12], v1, &inParameter, v11, 0), v12 != sub_2371964DC()))
            {
LABEL_20:
              v21 = sub_2371305C0(mAudioUnit_low);
              return sub_237135E04(mAudioUnit_low, v21);
            }

            v13 = *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_graphView];
            v14 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_paramCache;
            result = swift_beginAccess();
            v15 = *(v13 + v14);
            if (*(v15 + 16))
            {
              result = sub_2371906E0(mAudioUnit_low);
              if (v16)
              {
                sub_237114D0C(*(v15 + 56) + 32 * result, v25);
                sub_23711BDA4(v25, ioDataSize);
                type metadata accessor for CAAUFilterControl();
                swift_dynamicCast();
                sub_237178FFC(mAudioUnit_low, v11);

                v17 = *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_frequencyData];
                if (v17)
                {
                  ioDataSize[0] = 0x4000;
                  v18 = *(v17 + 24);

                  v19 = sub_237130F84();
                  Property = AudioUnitGetProperty(v18, 0x34u, 0, 0, v19, ioDataSize);
                  if (Property != sub_2371964DC())
                  {
                    sub_237176A9C(0xD000000000000029, 0x800000023719EA70, Property);
                  }
                }

                sub_23716A494();
                goto LABEL_20;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
          }
        }
      }
    }

    else
    {
LABEL_21:

      return sub_237114F1C(ioDataSize);
    }
  }

  return result;
}

uint64_t sub_23714B068(uint64_t result, AudioUnitParameterValue a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
  if (v3)
  {
    v5 = result;
    inParameter.mAudioUnit = *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
    inParameter.mScope = 0;
    inParameter.mElement = 0;
    inParameter.mParameterID = result;
    v6 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
    swift_beginAccess();
    LODWORD(v6) = AUParameterSet(*&v2[v6], v2, &inParameter, a2, 0);
    result = sub_2371964DC();
    if (v6 == result)
    {
      sub_237135E04(v5, a2);
      outValue = 0.0;
      result = AudioUnitGetParameter(v3, v5, 0, 0, &outValue);
      if (outValue != a2)
      {
        v7 = result;
        sub_23719693C();
        MEMORY[0x2383C5F20](0xD000000000000019, 0x800000023719FA10);
        v8 = sub_237196A5C();
        MEMORY[0x2383C5F20](v8);

        MEMORY[0x2383C5F20](8237, 0xE200000000000000);
        sub_2371966AC();
        MEMORY[0x2383C5F20](0xD000000000000023, 0x800000023719FA30);
        sub_2371966AC();
        sub_237176A9C(0, 0xE000000000000000, v7);
      }
    }
  }

  return result;
}

id sub_23714B274()
{
  v0 = sub_23719639C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v5 setGeneratesDecimalNumbers_];
  [v5 setMaximumFractionDigits_];
  [v5 setMinimumFractionDigits_];
  v6 = [objc_opt_self() currentLocale];
  sub_23719637C();

  v7 = sub_23719635C();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  return v5;
}

void sub_23714B3DC()
{
  v1 = v0;
  v225 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE950A0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v210 = &v199 - v4;
  v5 = type metadata accessor for AURightEdgeControlsBaseViewController();
  v216.receiver = v0;
  v216.super_class = v5;
  objc_msgSendSuper2(&v216, sel_viewDidLoad);
  v6 = *&v0[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_headerView];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  v8 = v7;
  [v7 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v226.origin.x = v10;
  v226.origin.y = v12;
  v226.size.width = v14;
  v226.size.height = v16;
  [v6 setFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_graphView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [v1 view];
  if (!v18)
  {
    goto LABEL_43;
  }

  v19 = v18;
  [v18 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v227.origin.x = v21;
  v227.origin.y = v23;
  v227.size.width = v25;
  v227.size.height = v27;
  Height = CGRectGetHeight(v227);
  [v6 frame];
  v29 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v30 = *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_edgeControlSection];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_edgeControlSection] = v29;
  v31 = v29;

  if (!v31)
  {
    return;
  }

  v211 = v1;
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = sub_23719653C();
  v33 = [objc_opt_self() bundleWithIdentifier_];

  v34 = [v31 layer];
  v35 = objc_opt_self();
  v36 = v33;
  v209 = v35;
  v37 = [v35 currentTraitCollection];
  v38 = sub_23719653C();
  v212 = objc_opt_self();
  v39 = [v212 colorNamed:v38 inBundle:v36 compatibleWithTraitCollection:v37];

  v208 = v36;
  if (v39)
  {
    v40 = [v39 CGColor];
  }

  else
  {
    v40 = 0;
  }

  v41 = v211;
  [v34 setBackgroundColor_];

  v42 = [v41 view];
  if (!v42)
  {
    __break(1u);
    goto LABEL_45;
  }

  v43 = v42;
  [v42 addSubview_];

  v44 = [v41 view];
  if (!v44)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v45 = v44;
  [v44 addSubview_];

  v46 = [v41 view];
  if (!v46)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v47 = v46;
  *&v213 = v17;
  [v46 addSubview_];

  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v48 = swift_allocObject();
  v207 = xmmword_23719AB20;
  *(v48 + 16) = xmmword_23719AB20;
  v49 = [v6 leadingAnchor];
  v50 = [v41 view];
  if (!v50)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v51 = v50;
  v52 = v41;
  v53 = [v50 leadingAnchor];

  v54 = [v49 constraintEqualToAnchor_];
  *(v48 + 32) = v54;
  v55 = [v6 topAnchor];
  v56 = [v41 view];
  if (!v56)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v57 = v56;
  v200 = v31;
  v58 = [v56 topAnchor];

  v59 = [v55 constraintEqualToAnchor_];
  *(v48 + 40) = v59;
  v60 = [v6 trailingAnchor];
  v61 = [v41 view];
  if (!v61)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v62 = v61;
  v63 = objc_opt_self();
  v64 = [v62 trailingAnchor];

  v65 = [v60 constraintEqualToAnchor_];
  *(v48 + 48) = v65;
  v66 = [v6 heightAnchor];
  v67 = [v66 constraintEqualToConstant_];

  *(v48 + 56) = v67;
  v201 = sub_237115094(0, &qword_27DE94CC0);
  v68 = sub_23719661C();

  v199 = v63;
  [v63 activateConstraints_];

  v69 = swift_allocObject();
  *(v69 + 16) = v207;
  v70 = v213;
  v71 = [v213 leadingAnchor];
  v72 = [v52 view];
  if (!v72)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v73 = v72;
  v74 = [v72 leadingAnchor];

  v75 = [v71 constraintEqualToAnchor_];
  *(v69 + 32) = v75;
  v76 = [v70 topAnchor];
  v77 = [v6 bottomAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(v69 + 40) = v78;
  v79 = [v70 bottomAnchor];
  v80 = [v52 view];
  v81 = v200;
  if (!v80)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v82 = v80;
  v83 = [v80 bottomAnchor];

  v84 = [v79 constraintEqualToAnchor_];
  *(v69 + 48) = v84;
  v85 = [v70 trailingAnchor];
  v86 = [v81 leadingAnchor];
  v87 = [v85 constraintEqualToAnchor:v86 constant:5.0];

  *(v69 + 56) = v87;
  v88 = sub_23719661C();

  v89 = v199;
  [v199 activateConstraints_];

  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_23719B670;
  v91 = [v81 topAnchor];
  v92 = [v6 bottomAnchor];
  v93 = [v91 constraintEqualToAnchor_];

  *(v90 + 32) = v93;
  v94 = [v81 &selRef_setNeedsDisplayInRect_ + 5];
  v95 = [v70 &selRef_setNeedsDisplayInRect_ + 5];
  v96 = [v94 constraintEqualToAnchor_];

  *(v90 + 40) = v96;
  v97 = [v81 trailingAnchor];
  v98 = v211;
  v99 = [v211 view];
  if (!v99)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v100 = v99;
  v101 = [v99 trailingAnchor];

  v102 = [v97 constraintEqualToAnchor_];
  *(v90 + 48) = v102;
  v103 = sub_23719661C();

  [v89 activateConstraints_];

  v104 = [v81 widthAnchor];
  v105 = [v104 constraintEqualToConstant_];

  v106 = *&v98[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_rightWidthConstraint];
  *&v98[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_rightWidthConstraint] = v105;
  v107 = v105;

  if (v107)
  {
    [v107 setActive_];
  }

  *&v207 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94898);
  v204 = 0x800000023719EC20;
  v108 = MEMORY[0x277D84F90];
  v213 = xmmword_23719B020;
  v203 = 0xD000000000000022;
  for (i = 1; i != 9; ++i)
  {
    v110 = v210;
    sub_23719636C();
    v111 = sub_23719639C();
    (*(*(v111 - 8) + 56))(v110, 0, 1, v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
    v112 = swift_allocObject();
    *(v112 + 16) = v213;
    v113 = MEMORY[0x277D83B88];
    *(v112 + 56) = MEMORY[0x277D83B88];
    v114 = MEMORY[0x277D83C10];
    *(v112 + 64) = MEMORY[0x277D83C10];
    *(v112 + 32) = i;
    v115 = sub_23719658C();
    v117 = v116;
    sub_23714D468(v110);
    v118 = swift_allocObject();
    *(v118 + 16) = v213;
    *(v118 + 56) = v113;
    *(v118 + 64) = v114;
    *(v118 + 32) = i;
    sub_23719659C();
    v119 = v208;
    v120 = [v209 currentTraitCollection];
    v121 = sub_23719653C();

    v122 = [v212 colorNamed:v121 inBundle:v119 compatibleWithTraitCollection:v120];

    v205 = v119;
    v215 = 0.0;
    v123 = *&v211[v207];
    if (v123)
    {
      Parameter = AudioUnitGetParameter(v123, 0x3E8u, 0, 0, &v215);
      if (Parameter != sub_2371964DC())
      {
        v217 = 0;
        v218 = 0xE000000000000000;
        sub_23719693C();

        v217 = v203;
        v218 = v204;
        v214 = 1000;
        v125 = sub_237196A5C();
        MEMORY[0x2383C5F20](v125);

        sub_237176A9C(v217, v218, Parameter);
      }
    }

    v126 = v215;
    v220[0] = 1701667150;
    v220[1] = 0xE400000000000000;
    v220[2] = v115;
    v220[3] = v117;
    v220[5] = MEMORY[0x277D837D0];
    v221[0] = 0x726F6C6F43;
    v221[1] = 0xE500000000000000;
    v221[5] = sub_237115094(0, &qword_27DE94788);
    v127 = v122;
    if (!v122)
    {
      v127 = [v212 redColor];
    }

    v221[2] = v127;
    v222[0] = 0x64656C62616E45;
    v222[1] = 0xE700000000000000;
    v224 = MEMORY[0x277D839B0];
    v223 = v126 != 0.0;
    v128 = sub_237196A2C();
    v129 = v122;

    sub_23714D4D0(v220, &v217);
    v130 = v217;
    v131 = v218;
    v132 = sub_2371905D4(v217, v218);
    if (v133)
    {
      goto LABEL_40;
    }

    v134 = v128 + 8;
    *(v128 + ((v132 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v132;
    v135 = (v128[6] + 16 * v132);
    *v135 = v130;
    v135[1] = v131;
    sub_23711BDA4(v219, (v128[7] + 32 * v132));
    v136 = v128[2];
    v137 = __OFADD__(v136, 1);
    v138 = v136 + 1;
    if (v137)
    {
      goto LABEL_41;
    }

    v128[2] = v138;
    sub_23714D4D0(v221, &v217);
    v139 = v217;
    v140 = v218;
    v141 = sub_2371905D4(v217, v218);
    if (v142)
    {
      goto LABEL_40;
    }

    *(v134 + ((v141 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v141;
    v143 = (v128[6] + 16 * v141);
    *v143 = v139;
    v143[1] = v140;
    sub_23711BDA4(v219, (v128[7] + 32 * v141));
    v144 = v128[2];
    v137 = __OFADD__(v144, 1);
    v145 = v144 + 1;
    if (v137)
    {
      goto LABEL_41;
    }

    v128[2] = v145;
    sub_23714D4D0(v222, &v217);
    v146 = v217;
    v147 = v218;
    v148 = sub_2371905D4(v217, v218);
    if (v149)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    *(v134 + ((v148 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v148;
    v150 = (v128[6] + 16 * v148);
    *v150 = v146;
    v150[1] = v147;
    sub_23711BDA4(v219, (v128[7] + 32 * v148));
    v151 = v128[2];
    v137 = __OFADD__(v151, 1);
    v152 = v151 + 1;
    if (v137)
    {
      goto LABEL_41;
    }

    v128[2] = v152;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0);
    swift_arrayDestroy();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = sub_23718995C(0, v108[2] + 1, 1, v108);
    }

    v154 = v108[2];
    v153 = v108[3];
    if (v154 >= v153 >> 1)
    {
      v108 = sub_23718995C((v153 > 1), v154 + 1, 1, v108);
    }

    v108[2] = v154 + 1;
    v108[v154 + 4] = v128;
  }

  v155 = objc_allocWithZone(type metadata accessor for AUVerticalSegmentControl());

  v157 = sub_2371122E0(v156, 0.0, 0.0, 48.0, 240.0);
  v158 = OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandControl;
  v159 = v211;
  v160 = *&v211[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandControl];
  *&v211[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandControl] = v157;
  v161 = v157;

  [v161 setTranslatesAutoresizingMaskIntoConstraints_];
  v162 = *(v159 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_gainKnob);
  v163 = [v162 setTranslatesAutoresizingMaskIntoConstraints_];
  (*((*MEMORY[0x277D85000] & *v159) + 0x1B8))(v163);
  v164 = *(v159 + v158);
  if (v164)
  {
    v165 = v164;
    v166 = v200;
    [v200 addSubview_];
    *&v213 = v162;
    [v166 addSubview_];
    v167 = [v165 widthAnchor];
    v168 = [v167 constraintEqualToConstant_];

    v169 = OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandWidthConstraint;
    v170 = *(v159 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandWidthConstraint);
    *(v159 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandWidthConstraint) = v168;

    v171 = swift_allocObject();
    *(v171 + 16) = xmmword_23719BBE0;
    v172 = [v165 centerXAnchor];

    v173 = v166;
    v174 = [v166 centerXAnchor];
    v175 = v159;
    v176 = v174;
    v177 = [v172 constraintEqualToAnchor_];

    *(v171 + 32) = v177;
    v178 = *(v175 + v169);
    if (v178)
    {
      v179 = v178;

      *(v171 + 40) = v179;
      v180 = [v165 topAnchor];

      v181 = v173;
      v182 = [v173 topAnchor];
      v183 = [v180 constraintEqualToAnchor:v182 constant:10.0];

      *(v171 + 48) = v183;
      v184 = v213;
      v185 = [v213 centerXAnchor];
      v186 = [v181 centerXAnchor];
      v187 = [v185 constraintEqualToAnchor_];

      *(v171 + 56) = v187;
      v188 = [v184 topAnchor];
      v189 = [v165 bottomAnchor];

      v190 = [v188 constraintEqualToAnchor:v189 constant:10.0];
      *(v171 + 64) = v190;
      v191 = [v184 bottomAnchor];
      v192 = [v181 bottomAnchor];
      v193 = [v191 constraintEqualToAnchor:v192 constant:-10.0];

      *(v171 + 72) = v193;
      v194 = [v184 widthAnchor];
      v195 = [v194 constraintEqualToConstant_];

      *(v171 + 80) = v195;
      v196 = [v184 heightAnchor];
      v197 = [v196 constraintEqualToConstant_];

      *(v171 + 88) = v197;
      v198 = sub_23719661C();

      [v199 activateConstraints_];

      return;
    }

LABEL_53:
    __break(1u);
  }

  else
  {
  }
}

void sub_23714CA98()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_25;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;

  sub_23718C9AC(v5);
  v6 = [v0 view];
  if (!v6)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = v6;
  [v6 frame];
  v9 = v8;
  v11 = v10;

  v12 = &v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_previousSize];
  if (v9 == *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_previousSize] && v11 == *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_previousSize + 8])
  {
    return;
  }

  v14 = [v1 view];
  if (!v14)
  {
    goto LABEL_26;
  }

  v15 = v14;
  [v14 frame];
  v17 = v16;
  v19 = v18;

  *v12 = v17;
  *(v12 + 1) = v19;
  v20 = [v1 view];
  if (!v20)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v20;
  [v20 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v45.origin.x = v23;
  v45.origin.y = v25;
  v45.size.width = v27;
  v45.size.height = v29;
  if (CGRectGetHeight(v45) < 350.0)
  {
    goto LABEL_12;
  }

  v30 = [v1 view];
  if (!v30)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v31 = v30;
  [v30 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v46.origin.x = v33;
  v46.origin.y = v35;
  v46.size.width = v37;
  v46.size.height = v39;
  if (CGRectGetWidth(v46) > 700.0)
  {
LABEL_12:
    v40 = *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_rightWidthConstraint];
    if (v40)
    {
      [v40 setConstant_];
    }

    v41 = *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandWidthConstraint];
    if (v41)
    {
      v42 = 96.0;
LABEL_20:

      [v41 setConstant_];
      return;
    }

    return;
  }

  v43 = *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_rightWidthConstraint];
  if (v43)
  {
    [v43 setConstant_];
  }

  v41 = *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandWidthConstraint];
  if (v41)
  {
    v42 = 48.0;
    goto LABEL_20;
  }
}

id sub_23714CD74()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_headerView;
  type metadata accessor for CAAUNBandEQHeaderView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_graphView;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for CANBandEQGraphView()) initWithFrame_];
  *&v0[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_edgeControlSection] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandControl] = 0;
  v3 = OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_gainKnob;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for AUKnobControl()) initWithFrame_];
  *&v0[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController____lazy_storage___decimalFormatter] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController____lazy_storage___wholeNumberFormatter] = 0;
  v4 = &v0[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_curveFrame];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = &v0[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_previousSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_rightWidthConstraint] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandWidthConstraint] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandHeightConstraint] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_frequencyData] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AURightEdgeControlsBaseViewController();
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_23714CEF8(void *a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_headerView;
  type metadata accessor for CAAUNBandEQHeaderView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_graphView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for CANBandEQGraphView()) initWithFrame_];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_edgeControlSection] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandControl] = 0;
  v5 = OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_gainKnob;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for AUKnobControl()) initWithFrame_];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController____lazy_storage___decimalFormatter] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController____lazy_storage___wholeNumberFormatter] = 0;
  v6 = &v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_curveFrame];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = &v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_previousSize];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_rightWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_frequencyData] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AURightEdgeControlsBaseViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_23714D0A8()
{
}

id sub_23714D178()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AURightEdgeControlsBaseViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23714D308(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (!*(*v4 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_frequencyData))
  {
    return 0;
  }

  v9 = sub_237131354(a1, a2, a3, a4);

  return v9;
}

uint64_t sub_23714D468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE950A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23714D4D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23714D540(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_23714D584(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
  v4 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  if (!v4)
  {
    goto LABEL_20;
  }

  [v4 minValue];
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = a1 - v5;
  if (__OFSUB__(a1, v5))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = *(v1 + v3);
    if (!v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v8 = [v7 valueStrings];
    if (v8)
    {
      v9 = v8;
      v10 = sub_23719663C();

      v11 = *(v10 + 16);

      if (v6 < v11)
      {
        v12 = *(v1 + v3);
        if (!v12)
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v13 = [v12 valueStrings];
        if (!v13)
        {
LABEL_23:
          __break(1u);
          return;
        }

        v14 = v13;
        v15 = sub_23719663C();

        if (v6 < *(v15 + 16))
        {

          return;
        }

        goto LABEL_19;
      }
    }
  }
}

void sub_23714D784()
{
  v1 = v0;
  aBlock = 0;
  v27 = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
  v3 = *&v0[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_237115094(0, &qword_27DE94D10);
  v4 = [v3 displayName];
  v5 = sub_23719657C();
  v7 = v6;

  MEMORY[0x2383C5F20](v5, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23719B030;
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v30 = sub_23714F79C;
  v31 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_23714E63C;
  v29 = &block_descriptor_3;
  v10 = _Block_copy(&aBlock);
  v11 = objc_opt_self();
  v12 = v1;
  v13 = [v11 elementWithProvider_];
  _Block_release(v10);

  *(v8 + 32) = v13;
  v14 = sub_2371967BC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = Strong;
  v17 = v14;
  [v16 setMenu_];

  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  [v18 setShowsMenuAsPrimaryAction_];

  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  [v20 setMenu_];

  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  [v22 setShowsMenuAsPrimaryAction_];

  v24 = *&v1[v2];
  if (!v24)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v25 = [v24 displayName];
  if (!v25)
  {
    sub_23719657C();
    v25 = sub_23719653C();
  }

  [v12 setAccessibilityLabel_];
}

void sub_23714DA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
  v5 = *(a3 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  if (!v5)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v6 = a3;
  v7 = [v5 valueStrings];
  if (v7)
  {
    v8 = v7;
    v9 = sub_23719663C();

    v10 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    v11 = *(v9 + 16);
    if (v11)
    {
      v23 = a1;
      v12 = 0;
      v13 = v9 + 40;
      while (1)
      {
        if (v12 >= *(v9 + 16))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v14 = *(v6 + v4);
        if (!v14)
        {
          break;
        }

        [v14 minValue];
        if ((LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          goto LABEL_20;
        }

        if (v15 <= -9.2234e18)
        {
          goto LABEL_21;
        }

        if (v15 >= 9.2234e18)
        {
          goto LABEL_22;
        }

        if (__OFADD__(v12, v15))
        {
          goto LABEL_23;
        }

        v16 = (v12 + v15);
        sub_237115094(0, &qword_27DE950C8);
        a1 = swift_allocObject();
        *(a1 + 16) = v6;
        *(a1 + 24) = v16;
        v17 = v6;
        v18 = sub_2371967EC();
        MEMORY[0x2383C5F60](v18, v19, v20, v21, v22);
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          a1 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23719664C();
        }

        ++v12;
        sub_23719665C();

        v13 += 16;
        if (v11 == v12)
        {
          a1 = v23;
          v10 = v24;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

LABEL_15:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23719B030;
    if (v10 >> 62)
    {
LABEL_24:
      sub_237115094(0, &qword_27DE950C0);

      sub_2371969EC();
    }

    else
    {

      sub_237196A8C();
      sub_237115094(0, &qword_27DE950C0);
    }

    sub_237115094(0, &qword_27DE94D10);
    *(v6 + 32) = sub_2371967BC();
    (a1)(v6);
  }
}

uint64_t sub_23714DDF8(float a1, uint64_t a2, void *a3)
{
  v5 = sub_2371964EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23719650C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23714F23C(a1);
  sub_237115094(0, &qword_27DE94908);
  v15 = sub_23719678C();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a1;
  aBlock[4] = sub_23714F7D0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23714D540;
  aBlock[3] = &block_descriptor_42;
  v17 = _Block_copy(aBlock);
  v18 = a3;

  sub_2371964FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23712932C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94918);
  sub_23711BE3C();
  sub_23719683C();
  MEMORY[0x2383C60F0](0, v14, v9, v17);
  _Block_release(v17);

  (*(v6 + 8))(v9, v5);
  return (*(v11 + 8))(v14, v10);
}