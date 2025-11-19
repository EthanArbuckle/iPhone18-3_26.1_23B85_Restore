id sub_237122024(void *a1)
{
  v1[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_horizontal] = 0;
  v3 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_accessibleElements] = v3;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex] = -1;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_numActiveTabs] = 1;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_maxTabDimension] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabDimension] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AUVerticalTabView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

char *sub_237122118(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v6[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_horizontal] = 0;
  v13 = MEMORY[0x277D84F90];
  *&v6[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs] = MEMORY[0x277D84F90];
  *&v6[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_accessibleElements] = v13;
  *&v6[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex] = -1;
  *&v6[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_numActiveTabs] = 1;
  *&v6[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_maxTabDimension] = 0;
  *&v6[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabDimension] = 0;
  v95.receiver = v6;
  v95.super_class = type metadata accessor for AUVerticalTabView();
  v14 = objc_msgSendSuper2(&v95, sel_initWithFrame_, a3, a4, a5, a6);
  v77 = a2;
  v14[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_horizontal] = a2;
  v15 = v14;
  [v15 setIsAccessibilityElement_];
  v78 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v79 = v15;
    v80 = objc_opt_self();
    v17 = (v78 + 32);
    v84 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs;
    v18 = 0x277CD9000uLL;
    v19 = 0x278A25000uLL;
    do
    {
      v20 = *v17;

      v21 = [v80 lightGrayColor];
      v88 = v21;
      v89 = 0;
      v90 = 0xE000000000000000;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      if (*(v20 + 16))
      {
        v22 = v21;
        v23 = sub_2371905D4(0x726F6C6F43, 0xE500000000000000);
        if (v24)
        {
          sub_237114D0C(*(v20 + 56) + 32 * v23, v87);
          sub_237115094(0, &qword_27DE94788);
          if (swift_dynamicCast())
          {

            v88 = v85;
          }
        }
      }

      if (*(v20 + 16))
      {
        v25 = sub_2371905D4(1701667150, 0xE400000000000000);
        if (v26)
        {
          sub_237114D0C(*(v20 + 56) + 32 * v25, v87);
          if (swift_dynamicCast())
          {

            v89 = v85;
            v90 = v86;
          }
        }
      }

      v82 = v17;
      v83 = v16;
      if (*(v20 + 16) && (v27 = sub_2371905D4(0x6567616D49, 0xE500000000000000), (v28 & 1) != 0))
      {
        sub_237114D0C(*(v20 + 56) + 32 * v27, v87);

        sub_237115094(0, &qword_27DE94B38);
        if (swift_dynamicCast())
        {
          v91 = v85;
          v29 = *(v18 + 3792);
          v30 = v85;
          v31 = objc_allocWithZone(v29);
          v32 = v30;
          result = [v31 *(v19 + 2936)];
          v94 = result;
          if (!result)
          {
            __break(1u);
            return result;
          }

          v34 = result;
          v35 = [v80 secondaryLabelColor];
          v36 = [v35 CGColor];

          [v34 setBackgroundColor_];
          v37 = sub_2371214A8();
          [v37 bounds];
          v39 = v38;
          v41 = v40;
          v43 = v42;
          v45 = v44;

          [v34 setFrame_];
          v46 = [objc_allocWithZone(*(v18 + 3792)) *(v19 + 2936)];
          [v46 setFrame_];
          v47 = [v32 CGImage];
          [v46 setContents_];

          [v46 setAnchorPoint_];
          [v34 bounds];
          MidX = CGRectGetMidX(v96);
          [v34 bounds];
          [v46 setPosition_];
          [v34 setMask_];
          v49 = sub_2371214A8();
          [v49 addSublayer_];

          v15 = v79;
        }
      }

      else
      {
      }

      v50 = v88;
      v51 = v89;
      v52 = v90;
      v53 = v91;
      v81 = v92;
      v55 = v93;
      v54 = v94;
      swift_beginAccess();
      v56 = *&v15[v84];
      v57 = v54;
      v58 = v50;

      v59 = v53;
      v60 = v55;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v15[v84] = v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v56 = sub_237189EB0(0, *(v56 + 2) + 1, 1, v56);
        *&v15[v84] = v56;
      }

      v63 = *(v56 + 2);
      v62 = *(v56 + 3);
      if (v63 >= v62 >> 1)
      {
        v56 = sub_237189EB0((v62 > 1), v63 + 1, 1, v56);
      }

      *(v56 + 2) = v63 + 1;
      v64 = &v56[56 * v63];
      *(v64 + 4) = v58;
      *(v64 + 5) = v51;
      *(v64 + 6) = v52;
      *(v64 + 7) = v53;
      v64[64] = v81;
      *(v64 + 9) = v55;
      *(v64 + 10) = v54;
      v15 = v79;
      *&v79[v84] = v56;
      swift_endAccess();
      v65 = v88;
      v66 = v91;
      v67 = v93;
      v68 = v94;

      v17 = v82 + 1;
      v16 = v83 - 1;
      v18 = 0x277CD9000;
      v19 = 0x278A25000;
    }

    while (v83 != 1);
  }

  v69 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs;
  swift_beginAccess();
  if (*(*&v15[v69] + 16))
  {
    v70 = a3;
    v71 = a4;
    v72 = a5;
    v73 = a6;
    if (v77)
    {
      Width = CGRectGetWidth(*&v70);
    }

    else
    {
      Width = CGRectGetHeight(*&v70);
    }

    v76 = *(*&v15[v69] + 16);
    v75 = (Width - v76) / v76;
  }

  else
  {
    v75 = 0.0;
  }

  *&v15[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabDimension] = v75;
  sub_23712303C();

  return v15;
}

char *sub_237122830()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_accessibleElements;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    v4 = sub_2371969FC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs;
  swift_beginAccess();
  v6 = *&v1[v5];
  v7 = *(v6 + 16);
  if (v4 != v7 && v7 != 0)
  {
    v9 = type metadata accessor for AUVerticalTabView.TabAccessibilityElement();

    v10 = 32;
    do
    {
      v11 = *(v6 + v10);
      v12 = *(v6 + v10 + 16);
      v13 = *(v6 + v10 + 32);
      v23 = *(v6 + v10 + 48);
      v22[1] = v12;
      v22[2] = v13;
      v22[0] = v11;
      v14 = objc_allocWithZone(v9);
      sub_237123B4C(v22, v21);
      sub_237123B4C(v22, v21);
      sub_237121794(v1, v22);
      v16 = v15;
      swift_beginAccess();
      v17 = v16;
      MEMORY[0x2383C5F60]();
      if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23719664C();
      }

      sub_23719665C();
      swift_endAccess();
      sub_237123B84(v22);

      v10 += 56;
      --v7;
    }

    while (v7);
  }

  v19 = sub_237167BA0(v18);

  return v19;
}

void sub_237122A10()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs;
  swift_beginAccess();
  v4 = *(*(v0 + v3) + 16);
  v5 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex;
  if (!v4)
  {
LABEL_12:
    v0 = *&v5[v2];
    swift_beginAccess();
    v1 = *(v2 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v3) = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_48;
    }

    if ((v0 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v6 = 0;
  v7 = 80;
  while (1)
  {
    if (v6 == *&v5[v2])
    {
      goto LABEL_3;
    }

    swift_beginAccess();
    v8 = *(v2 + v3);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v3) = v8;
    if ((v9 & 1) == 0)
    {
      v8 = sub_237186FF0(v8);
      *(v2 + v3) = v8;
    }

    if (v6 >= *(v8 + 2))
    {
      break;
    }

    v1 = sub_2371214A8();
    *(v2 + v3) = v8;
    swift_endAccess();
    v0 = objc_opt_self();
    v10 = [v0 systemBackgroundColor];
    v11 = [v10 colorWithAlphaComponent_];

    v12 = [v11 CGColor];
    [v1 setBackgroundColor_];

    v13 = *(v2 + v3);
    if (v6 >= *(v13 + 16))
    {
      goto LABEL_45;
    }

    v14 = *(v13 + v7);
    if (v14)
    {
      v1 = v14;
      v0 = [v0 secondaryLabelColor];
      v15 = [v0 CGColor];

      [v1 setBackgroundColor_];
    }

LABEL_3:
    ++v6;
    v7 += 56;
    if (v4 == v6)
    {
      v5 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex;
      goto LABEL_12;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  v1 = sub_237186FF0(v1);
  *(v2 + v3) = v1;
  if ((v0 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

LABEL_14:
  if (v0 >= v1[2])
  {
    goto LABEL_50;
  }

  v17 = sub_2371214A8();
  *(v2 + v3) = v1;
  swift_endAccess();
  v44 = objc_opt_self();
  v18 = [v44 systemBackgroundColor];
  v46 = v5;
  v19 = [v18 CGColor];

  [v17 setBackgroundColor_];
  v20 = *&v5[v2];
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v21 = *(v2 + v3);
  if (v20 >= *(v21 + 16))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v22 = v21 + 56 * v20;
  v23 = *(v22 + 80);
  if (v23)
  {
    v24 = *(v22 + 32);
    v25 = v23;
    v26 = [v24 CGColor];
    [v25 setBackgroundColor_];
  }

  v0 = sub_23719653C();
  v45 = [objc_opt_self() bundleWithIdentifier_];

  v27 = *&v5[v2];
  v28 = v27 & 1;
  if (v27 < 0)
  {
    v28 = -v28;
  }

  if (v27 == *(*(v2 + v3) + 16) - 1)
  {
    v28 += *(v2 + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_numActiveTabs) / 2;
  }

  v29 = v27 - v28;
  if (__OFSUB__(v27, v28))
  {
    goto LABEL_53;
  }

  v1 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_numActiveTabs);
  v30 = v1 + v29;
  if (__OFADD__(v29, v1))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v30 < v29)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v29 == v30)
  {
LABEL_27:

    return;
  }

  if (v29 < v30)
  {
    v31 = 56 * v27 - 56 * v28;
    while (1)
    {
      v32 = *(v2 + v3);
      if (v29 < *(v32 + 2) && v29 != *&v46[v2])
      {
        swift_beginAccess();
        v33 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + v3) = v32;
        if (v33)
        {
          if (v29 < 0)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v32 = sub_237186FF0(v32);
          *(v2 + v3) = v32;
          if (v29 < 0)
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        if (v29 >= *(v32 + 2))
        {
          goto LABEL_46;
        }

        v0 = sub_2371214A8();
        *(v2 + v3) = v32;
        swift_endAccess();
        v34 = objc_opt_self();
        v35 = v45;
        v36 = [v34 currentTraitCollection];
        v37 = sub_23719653C();
        v38 = [v44 colorNamed:v37 inBundle:v35 compatibleWithTraitCollection:v36];

        if (v38)
        {
          v5 = [v38 CGColor];
        }

        else
        {
          v5 = 0;
        }

        [v0 setBackgroundColor_];

        v39 = *(v2 + v3);
        if (v29 >= *(v39 + 16))
        {
          goto LABEL_47;
        }

        v40 = v39 + v31;
        v41 = *(v39 + v31 + 80);
        if (v41)
        {
          v42 = *(v40 + 32);
          v43 = v41;
          v0 = [v42 CGColor];
          [v43 setBackgroundColor_];
        }
      }

      v31 += 56;
      ++v29;
      v1 = (v1 - 1);
      if (!v1)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_56:
  __break(1u);
}

void sub_23712303C()
{
  v1 = v0;
  v2 = [objc_opt_self() tertiaryLabelColor];
  [v1 setBackgroundColor_];

  v3 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs;
  swift_beginAccess();
  v4 = *(*&v1[v3] + 16);
  if (v4)
  {
    v5 = 0;
    v6 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_horizontal;
    v7 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabDimension;
    v8 = 32;
    v9 = 0.0;
    while (1)
    {
      swift_beginAccess();
      v20 = *&v1[v3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v3] = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_237186FF0(v20);
        *&v1[v3] = v20;
      }

      if (v5 >= *(v20 + 2))
      {
        break;
      }

      v22 = sub_2371214A8();
      *&v1[v3] = v20;
      swift_endAccess();
      if (v1[v6] == 1)
      {
        v23 = *&v1[v7];
        v24 = [v1 layer];
        [v24 frame];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;

        v34.origin.x = v26;
        v34.origin.y = v28;
        v34.size.width = v30;
        v34.size.height = v32;
        [v22 setFrame_];
      }

      else
      {
        v10 = [v1 layer];
        [v10 frame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v33.origin.x = v12;
        v33.origin.y = v14;
        v33.size.width = v16;
        v33.size.height = v18;
        [v22 setFrame_];
      }

      ++v5;
      v19 = [v1 layer];
      [v19 addSublayer_];

      v9 = v9 + *&v1[v7];
      v8 += 56;
      if (v4 == v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_2371232B8(double a1, double a2)
{
  if (!*(v2 + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_horizontal))
  {
    a1 = a2;
  }

  v3 = a1 / *(v2 + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabDimension);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs;
  swift_beginAccess();
  v6 = *(*(v2 + v5) + 16);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6 - 1;
  }

  v8 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex;
  v9 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex);
  *(v2 + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex) = v7;
  if (v7 >= v6)
  {
    *(v2 + v8) = v9;
  }

  else
  {
    sub_237122A10();
  }

  v10 = sub_23719653C();
  v11 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B020;
  sub_23719690C();
  v13 = *(v2 + v8);
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v13;
  sub_237119F04(inited);
  swift_setDeallocating();
  sub_237123AE4(inited + 32);
  v14 = sub_23719651C();

  [v11 postNotificationName:v10 object:v2 userInfo:{v14, 0x6F697463656C6573, 0xE90000000000006ELL}];
}

void sub_2371234F4(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_237115094(0, &qword_27DE94790);
  sub_237114F70();
  v8 = sub_2371966DC();
  v9 = a1;
  v10 = a4;
  v11 = sub_237181180(v8);
  if (v11)
  {
    v12 = v11;
    [v11 locationInView_];
    sub_2371232B8(v13, v14);
  }

  v15 = sub_2371966CC();

  v16.receiver = v9;
  v16.super_class = type metadata accessor for AUVerticalTabView();
  objc_msgSendSuper2(&v16, *a5, v15, v10);
}

void sub_2371235F4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs;
  swift_beginAccess();
  v54 = v2;
  v3 = *&v1[v2];
  v4 = &selRef_effectiveContentSize;
  if (*(v3 + 16))
  {
    v5 = v1[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_horizontal];
    [v1 frame];
    if (v5 == 1)
    {
      Width = CGRectGetWidth(*&v6);
    }

    else
    {
      Width = CGRectGetHeight(*&v6);
    }

    v3 = *&v1[v2];
    v11 = Width / *(v3 + 16) + 1.0;
  }

  else
  {
    v11 = 1.0;
  }

  v55 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabDimension;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabDimension] = v11;
  v53 = *(v3 + 16);
  if (v53)
  {
    v12 = 0;
    v13 = 0;
    v52 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_horizontal;
    v14 = 0.0;
    v15 = 0x1FAA53000uLL;
    while (1)
    {
      v17 = *&v1[v54];
      if (v13 >= *(v17 + 16))
      {
        break;
      }

      v18 = v15;
      v19 = v4;
      v20 = (v17 + v12);
      v21 = v20[4];
      v22 = v20[7];
      v24 = v20[9];
      v23 = v20[10];
      v58 = v21;
      *&v59 = v24;
      *(&v59 + 1) = v23;
      v57 = v23;
      v25 = v21;

      v26 = v22;
      v27 = v24;
      v28 = sub_2371214A8();
      if (v1[v52] == 1)
      {
        v29 = *&v1[v55];
        v30 = [v1 layer];
        v4 = v19;
        [v30 v19 + 3192];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v60.origin.x = v32;
        v60.origin.y = v34;
        v60.size.width = v36;
        v60.size.height = v38;
        [v28 setFrame_];
      }

      else
      {
        v39 = [v1 layer];
        v4 = v19;
        [v39 v19 + 3192];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;

        v61.origin.x = v41;
        v61.origin.y = v43;
        v61.size.width = v45;
        v61.size.height = v47;
        [v28 setFrame_];
      }

      v15 = v18;
      if (v23)
      {
        v48 = v57;
        [v28 (v15 + 3832)];
        [v48 setFrame_];
        v49 = [v48 mask];
        if (v49)
        {
          v50 = v49;
          [v48 (v15 + 3832)];
          MidX = CGRectGetMidX(v62);
          [v48 (v15 + 3832)];
          [v50 setPosition_];

          v16 = v58;
          *v56 = v59;
        }

        else
        {
          v16 = v58;
          *v56 = v59;
        }
      }

      else
      {
        v16 = v58;
        *v56 = v59;
      }

      ++v13;

      v14 = v14 + *&v1[v55] + -1.0;
      v12 += 56;
      if (v53 == v13)
      {
        return;
      }
    }

    __break(1u);
  }
}

id sub_237123A08(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_237123AE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_237123BB4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  if (a1)
  {
  }
}

void sub_237123C20()
{
  v1 = v0;
  v2 = sub_23712F040();
  v3 = sub_23719342C();

  v4 = *&v3[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
  v5 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView;
  v6 = *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView];
  v7 = sub_23719342C();

  v8 = *&v7[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = -1038090240;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed] = -1038090240;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1109393408;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1109393408;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 3;
  type metadata accessor for AUAppleViewControllerBase();
  v9 = sub_237175EDC();
  v10 = &v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v10 = v9;
  v10[1] = v11;

  v46 = v8;
  v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_extendHorizontally] = 1;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = 0;
  v12 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1187205120;
  v13 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1187205120;
  *&v4[v12] = 1176256512;
  *&v4[v13] = sub_237130920(0);
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase] = 0;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 8;
  v14 = sub_237175EDC();
  v15 = &v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v15 = v14;
  v15[1] = v16;

  sub_23712EA30();
  v17 = *&v1[v5];
  v18 = sub_23719342C();

  v47[3] = type metadata accessor for AUHighshelfViewController();
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

  v45 = sub_23716832C(0, 1);
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
  v34 = v45;
  v35 = sub_23719653C();
  [v33 setAccessibilityLabel_];

  v36 = &v23[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName];
  *v36 = v24;
  v36[1] = v26;

  v37 = &v23[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName];
  *v37 = v27;
  v37[1] = v29;

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

      v34 = v43;
    }
  }
}

id sub_237124150()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUHighshelfViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2371241A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94C08);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94C10);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94C18);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94C20);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94C28);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v37 - v19;
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for AUDistortionDelaySectionView();
  v21 = v0;
  sub_23719676C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BA8);
  (*(*(v22 - 8) + 56))(v20, 0, 1, v22);
  v23 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_delaySectionCellRegistration;
  swift_beginAccess();
  sub_23711BF50(v20, v21 + v23, &qword_27DE94C28);
  swift_endAccess();
  *(swift_allocObject() + 16) = v21;
  type metadata accessor for AUDistortionRingModSectionView();
  v24 = v21;
  sub_23719676C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BB8);
  (*(*(v25 - 8) + 56))(v16, 0, 1, v25);
  v26 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_ringModSectionCellRegistration;
  swift_beginAccess();
  sub_23711BF50(v16, v24 + v26, &qword_27DE94C20);
  swift_endAccess();
  *(swift_allocObject() + 16) = v24;
  type metadata accessor for AUDistortionDecimationSectionView();
  v27 = v24;
  sub_23719676C();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BC8);
  (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
  v29 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_decimationSectionCellRegistration;
  swift_beginAccess();
  sub_23711BF50(v12, v27 + v29, &qword_27DE94C18);
  swift_endAccess();
  *(swift_allocObject() + 16) = v27;
  type metadata accessor for AUDistortionOverdriveSectionView();
  v30 = v27;
  sub_23719676C();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BD8);
  (*(*(v31 - 8) + 56))(v8, 0, 1, v31);
  v32 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_overdriveSectionCellRegistration;
  swift_beginAccess();
  sub_23711BF50(v8, v30 + v32, &qword_27DE94C10);
  swift_endAccess();
  *(swift_allocObject() + 16) = v30;
  type metadata accessor for AUDistortionGlobalModSectionView();
  v33 = v30;
  sub_23719676C();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BE8);
  (*(*(v34 - 8) + 56))(v4, 0, 1, v34);
  v35 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_globalSectionCellRegistration;
  swift_beginAccess();
  sub_23711BF50(v4, v33 + v35, &qword_27DE94C08);
  return swift_endAccess();
}

id sub_2371247E8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_distortionSectionViewCount] = 5;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_dataSource] = 0;
  v9 = &v4[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_parameterDataSource];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_collectionView] = 0;
  v10 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_delaySectionCellRegistration;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BA8);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_ringModSectionCellRegistration;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BB8);
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_decimationSectionCellRegistration;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BC8);
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_overdriveSectionCellRegistration;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BD8);
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_globalSectionCellRegistration;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BE8);
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  *&v4[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_auAudioUnit] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for AUDistortionView();
  v20 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2371241A8();
  sub_237124D1C();
  sub_237124F44();

  return v20;
}

id sub_237124A8C(void *a1)
{
  *&v1[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_distortionSectionViewCount] = 5;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_dataSource] = 0;
  v3 = &v1[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_parameterDataSource];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_collectionView] = 0;
  v4 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_delaySectionCellRegistration;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BA8);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_ringModSectionCellRegistration;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BB8);
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_decimationSectionCellRegistration;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BC8);
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_overdriveSectionCellRegistration;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BD8);
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_globalSectionCellRegistration;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BE8);
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  *&v1[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_auAudioUnit] = 0;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for AUDistortionView();
  v14 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    sub_2371241A8();
    sub_237124D1C();
    sub_237124F44();
  }

  return v15;
}

void sub_237124D1C()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  v10 = objc_allocWithZone(MEMORY[0x277D752B8]);
  v23[4] = sub_237126F74;
  v23[5] = v9;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_23712927C;
  v23[3] = &block_descriptor_0;
  v11 = _Block_copy(v23);
  v12 = v0;
  v13 = [v10 initWithSectionProvider_];
  _Block_release(v11);

  v14 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v13 collectionViewLayout:{v2, v4, v6, v8}];

  v15 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_collectionView;
  v16 = *&v12[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_collectionView];
  *&v12[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_collectionView] = v14;
  v17 = v14;

  if (!v17)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v17 setAutoresizingMask_];

  v18 = *&v12[v15];
  if (!v18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 tertiaryLabelColor];
  [v20 setBackgroundColor_];

  if (!*&v12[v15])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v12 addSubview_];
  v22 = *&v12[v15];
  if (v22)
  {
    [v22 setDelegate_];
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_237124F44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v6 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for AUDistortionSectionView();
  v10 = v0;
  result = sub_23719676C();
  v12 = *&v10[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_collectionView];
  if (v12)
  {
    (*(v2 + 16))(v6, v9, v1);
    v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    (*(v2 + 32))(v14 + v13, v6, v1);
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94C00));
    v15 = v10;
    v16 = v12;
    v17 = sub_2371964AC();
    v18 = *&v15[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_dataSource];
    *&v15[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_dataSource] = v17;

    sub_237125384();
    return (*(v2 + 8))(v9, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23712517C()
{
  v1 = v0;
  v2 = sub_23719641C();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_collectionView;
  v9 = (v8 + 8);
  while (1)
  {
    v10 = *(v1 + v7);
    if (!v10)
    {
      break;
    }

    v11 = v10;
    MEMORY[0x2383C5D20](v6, 0);
    v12 = sub_2371963AC();
    (*v9)(v5, v2);
    v13 = [v11 cellForItemAtIndexPath_];

    if (v13)
    {
      type metadata accessor for AUDistortionSectionView();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        v16 = [objc_opt_self() defaultCenter];
        [v16 removeObserver_];

        sub_237127CF0();
      }
    }

    if (++v6 == 5)
    {
      return;
    }
  }

  __break(1u);
}

uint64_t sub_237125384()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BF0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9 - v4;
  sub_23719649C();
  sub_23719648C();
  v9 = 0;
  v10 = 0;
  sub_23719646C();
  v9 = 0;
  v10 = 0;
  sub_23719646C();
  v9 = 0;
  v10 = 0;
  sub_23719646C();
  v9 = 0;
  v10 = 0;
  sub_23719646C();
  v9 = 0;
  v10 = 0;
  result = sub_23719646C();
  v7 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_dataSource);
  if (v7)
  {
    v8 = v7;
    sub_2371964CC();

    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237125604(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v19.receiver = v4;
  v19.super_class = type metadata accessor for AUDistortionView();
  objc_msgSendSuper2(&v19, sel_setBounds_, a1, a2, a3, a4);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  Width = CGRectGetWidth(v20);
  if (Width <= 1000.0)
  {
    v11 = 1;
  }

  else
  {
    v10 = floor(Width / 500.0);
    if (*&v10 >> 52 > 0x7FEuLL)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v10 <= -9.22337204e18)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v10 >= 9.22337204e18)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v11 = v10;
  }

  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v12 = CGRectGetHeight(v21) / 400.0;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = sub_23719653C();
  v15 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  sub_23719690C();
  v17 = MEMORY[0x277D83B88];
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v13;
  sub_23719690C();
  *(inited + 168) = v17;
  *(inited + 144) = v11;
  sub_237119F04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
  swift_arrayDestroy();
  v18 = sub_23719651C();

  [v15 postNotificationName:v14 object:v4 userInfo:{v18, 0x736E6D756C6F63, 0xE700000000000000}];
}

void sub_237125904(uint64_t a1, float a2)
{
  v5 = sub_23719641C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_237126BD0(a1);
  v11 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_collectionView);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    MEMORY[0x2383C5D20](v12, 0);
    v14 = sub_2371963AC();
    (*(v6 + 8))(v9, v5);
    v15 = [v13 cellForItemAtIndexPath_];

    if (v15)
    {
      type metadata accessor for AUDistortionSectionView();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = v16;
        v18 = MEMORY[0x277D85000];
        v19 = (*((*MEMORY[0x277D85000] & *v16) + 0xE8))();
        v20 = *(v19 + 16);
        v21 = 32;
        do
        {
          if (!v20)
          {

            return;
          }

          v22 = *(v19 + v21);
          v21 += 4;
          --v20;
        }

        while (v22 != a1);

        v23 = *(v17 + OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_visualizationView);
        if (!v23)
        {
          goto LABEL_13;
        }

        v24 = *((*v18 & *v23) + 0xC8);
        v25 = v23;
        v24(a1, a2);
      }
    }
  }

  else
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }
}

id sub_237125B30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUDistortionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AUDistortionView()
{
  result = qword_27DE94B90;
  if (!qword_27DE94B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237125CD8()
{
  sub_237125EF0(319, &qword_27DE94BA0, &qword_27DE94BA8);
  if (v0 <= 0x3F)
  {
    sub_237125EF0(319, &qword_27DE94BB0, &qword_27DE94BB8);
    if (v1 <= 0x3F)
    {
      sub_237125EF0(319, &qword_27DE94BC0, &qword_27DE94BC8);
      if (v2 <= 0x3F)
      {
        sub_237125EF0(319, &qword_27DE94BD0, &qword_27DE94BD8);
        if (v3 <= 0x3F)
        {
          sub_237125EF0(319, &qword_27DE94BE0, &qword_27DE94BE8);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_237125EF0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_2371967FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_237125F44(int a1, void *a2, id a3)
{
  [a3 frame];
  Width = CGRectGetWidth(v24);
  if (Width <= 1000.0)
  {
    v6 = 1;
    goto LABEL_7;
  }

  v5 = floor(Width / 500.0);
  if (*&v5 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = v5;
LABEL_7:
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension_];
  v9 = [v7 fractionalHeightDimension_];
  v10 = objc_opt_self();
  v11 = [v10 sizeWithWidthDimension:v8 heightDimension:v9];

  v12 = [objc_opt_self() itemWithLayoutSize_];
  [objc_msgSend(a2 container)];
  v14 = v13;
  swift_unknownObjectRelease();
  if (v14 <= 400.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  [v12 setContentInsets_];
  [objc_msgSend(a2 container)];
  v17 = v16;
  swift_unknownObjectRelease();
  if (v17 <= 400.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 400.0;
  }

  v19 = [v7 absoluteDimension_];
  v20 = [v7 fractionalWidthDimension_];
  v21 = [v10 sizeWithWidthDimension:v20 heightDimension:v19];

  v22 = [objc_opt_self() horizontalGroupWithLayoutSize:v21 subitem:v12 count:v6];
  v23 = [objc_opt_self() fixedSpacing_];
  [v22 setInterItemSpacing_];

  [objc_msgSend(objc_opt_self() sectionWithGroup_];
}

uint64_t sub_23712628C(char *a1, uint64_t a2, uint64_t a3)
{
  sub_237126BF4(a2);
  if (!v6)
  {
    v6 = [objc_opt_self() systemTealColor];
  }

  v7 = v6;
  [a1 setTintColor_];

  sub_237126D48(a2);
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *&a1[OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_controlsView];
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = (v11 + OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_name);
  *v13 = v10;
  v13[1] = v12;

  v14 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_titleLabel;
  v15 = *(v11 + OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_titleLabel);

  v16 = sub_23719653C();

  [v15 setText_];

  [*(v11 + v14) setAccessibilityTraits_];
  v17 = *(a3 + OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_auAudioUnit);
  v18 = *&a1[OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_audioUnit];
  *&a1[OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_audioUnit] = v17;
  v19 = v17;

  sub_23718ED5C();
  v20 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_parameterDataSource;
  swift_beginAccess();
  sub_23711BDB4(a3 + v20, v23, &unk_27DE94C30);
  v21 = OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_dataSource;
  swift_beginAccess();
  sub_23711BF50(v23, &a1[v21], &unk_27DE94C30);
  return swift_endAccess();
}

void sub_237126478(void *a1)
{
  v2 = sub_2371963FC();
  sub_237126BF4(v2);
  if (!v3)
  {
    v3 = [objc_opt_self() systemTealColor];
  }

  v4 = v3;
  [a1 setTintColor_];
}

uint64_t sub_2371264FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94C08);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94C10);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94C18);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94C20);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94C28);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v45 - v24;
  v26 = *a3;
  v27 = sub_2371963DC();
  if (v27 > 1)
  {
    switch(v27)
    {
      case 2:
        v36 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_decimationSectionCellRegistration;
        swift_beginAccess();
        sub_23711BDB4(a4 + v36, v17, &qword_27DE94C18);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BC8);
        v38 = *(v37 - 8);
        result = (*(v38 + 48))(v17, 1, v37);
        if (result != 1)
        {
          v46 = v26;
          v47 = 0;
          type metadata accessor for AUDistortionDecimationSectionView();
          v32 = sub_23719677C();
          (*(v38 + 8))(v17, v37);
          return v32;
        }

        __break(1u);
        break;
      case 3:
        v39 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_overdriveSectionCellRegistration;
        swift_beginAccess();
        sub_23711BDB4(a4 + v39, v13, &qword_27DE94C10);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BD8);
        v41 = *(v40 - 8);
        result = (*(v41 + 48))(v13, 1, v40);
        if (result != 1)
        {
          v46 = v26;
          v47 = 0;
          type metadata accessor for AUDistortionOverdriveSectionView();
          v32 = sub_23719677C();
          (*(v41 + 8))(v13, v40);
          return v32;
        }

        break;
      case 4:
        v28 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_globalSectionCellRegistration;
        swift_beginAccess();
        sub_23711BDB4(a4 + v28, v9, &qword_27DE94C08);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BE8);
        v30 = *(v29 - 8);
        result = (*(v30 + 48))(v9, 1, v29);
        if (result != 1)
        {
          v46 = v26;
          v47 = 0;
          type metadata accessor for AUDistortionGlobalModSectionView();
          v32 = sub_23719677C();
          (*(v30 + 8))(v9, v29);
          return v32;
        }

        goto LABEL_22;
      default:
LABEL_18:
        v48 = v26;
        v49 = 0;
        type metadata accessor for AUDistortionSectionView();
        return sub_23719677C();
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v27)
  {
    v42 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_delaySectionCellRegistration;
    swift_beginAccess();
    sub_23711BDB4(a4 + v42, v25, &qword_27DE94C28);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BA8);
    v44 = *(v43 - 8);
    result = (*(v44 + 48))(v25, 1, v43);
    if (result != 1)
    {
      v46 = v26;
      v47 = 0;
      type metadata accessor for AUDistortionDelaySectionView();
      v32 = sub_23719677C();
      (*(v44 + 8))(v25, v43);
      return v32;
    }

    goto LABEL_23;
  }

  if (v27 != 1)
  {
    goto LABEL_18;
  }

  v33 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_ringModSectionCellRegistration;
  swift_beginAccess();
  sub_23711BDB4(a4 + v33, v21, &qword_27DE94C20);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BB8);
  v35 = *(v34 - 8);
  result = (*(v35 + 48))(v21, 1, v34);
  if (result != 1)
  {
    v46 = v26;
    v47 = 0;
    type metadata accessor for AUDistortionRingModSectionView();
    v32 = sub_23719677C();
    (*(v35 + 8))(v21, v34);
    return v32;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_237126BD0(int a1)
{
  if ((a1 - 3) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_23719B600[a1 - 3];
  }
}

void sub_237126BF4(uint64_t a1)
{
  if (a1 <= 4)
  {
    v2 = sub_23719653C();
    v3 = [objc_opt_self() bundleWithIdentifier_];

    if (v3)
    {
      if (a1 < 0)
      {
        __break(1u);
      }

      else
      {

        swift_arrayDestroy();
        v4 = objc_opt_self();
        v5 = v3;
        v6 = [v4 currentTraitCollection];
        v7 = sub_23719653C();

        [objc_opt_self() colorNamed:v7 inBundle:v5 compatibleWithTraitCollection:v6];
      }
    }
  }
}

void sub_237126D48(uint64_t a1)
{
  if (a1 <= 4 && (v2 = sub_23719653C(), v3 = [objc_opt_self() bundleWithIdentifier_], v2, v3))
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {

      v4 = sub_23719653C();

      swift_arrayDestroy();
      v5 = sub_23719653C();

      v6 = sub_23719653C();
      v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

      sub_23719657C();
    }
  }

  else
  {
    swift_arrayDestroy();
  }
}

uint64_t sub_237126EDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BF8);
  v7 = *(v3 + 16);

  return sub_2371264FC(a1, a2, a3, v7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237126F94(char *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_2371963FC();

  return sub_23712628C(a1, v4, v3);
}

uint64_t sub_237126FE8(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_2371270F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94CD0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v13 - v3;
  type metadata accessor for AUGenericViewInternal();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_23719653C();
  v8 = [objc_opt_self() nibWithNibName:v7 bundle:v6];

  *(swift_allocObject() + 16) = v0;
  type metadata accessor for AUGenericViewParameterCellBase();
  v9 = v0;
  sub_23719675C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94CB0);
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  v11 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_genericCellRegistration;
  swift_beginAccess();
  sub_23711BF50(v4, v9 + v11, &unk_27DE94CD0);
  return swift_endAccess();
}

uint64_t sub_2371272F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94990);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - v5;
  sub_23711BFC0();
  sub_23719649C();
  v7 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_params;
  v8 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_params);
  if (v8 >> 62)
  {
    result = sub_2371969FC();
    if (result < 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 1)
    {
      goto LABEL_19;
    }
  }

  v10 = *(v0 + v7);
  if (v10 >> 62)
  {
    result = sub_2371969FC();
    v11 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v25 = v1;
  v26 = v3;
  v27 = v2;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2383C62A0](v12, v10);
    }

    else
    {
      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = v14;
    sub_23711A780(v15, v30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_237189BB8(0, *(v13 + 2) + 1, 1, v13);
    }

    v18 = *(v13 + 2);
    v17 = *(v13 + 3);
    if (v18 >= v17 >> 1)
    {
      v13 = sub_237189BB8((v17 > 1), v18 + 1, 1, v13);
    }

    ++v12;

    *(v13 + 2) = v18 + 1;
    v19 = &v13[48 * v18];
    v20 = v30[0];
    v21 = v30[2];
    *(v19 + 3) = v30[1];
    *(v19 + 4) = v21;
    *(v19 + 2) = v20;
  }

  while (v11 != v12);

  v3 = v26;
  v2 = v27;
  v1 = v25;
LABEL_19:
  sub_23719648C();
  v28 = 0;
  v29 = 0;
  result = sub_23719646C();
  v22 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_dataSource);
  if (v22)
  {
    v23 = v22;

    sub_2371964CC();

    return (*(v3 + 8))(v6, v2);
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_2371275DC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_params];
  if (v2 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2371969FC())
  {
    v4 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_tokenDict;
    v35 = v2 & 0xFFFFFFFFFFFFFF8;
    v37 = v2 & 0xC000000000000001;

    v5 = 0;
    v36 = v1;
    while (1)
    {
      if (v37)
      {
        v7 = MEMORY[0x2383C62A0](v5, v2);
      }

      else
      {
        if (v5 >= *(v35 + 16))
        {
          goto LABEL_31;
        }

        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      aBlock[4] = sub_237129318;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_237126FE8;
      aBlock[3] = &block_descriptor_39;
      v10 = _Block_copy(aBlock);
      v11 = v8;
      v12 = v1;

      v13 = [v11 tokenByAddingParameterObserver_];
      _Block_release(v10);
      swift_beginAccess();
      if (v13)
      {
        v14 = v4;
        v15 = v2;
        v2 = i;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *&v1[v14];
        v18 = v14;
        *&v1[v14] = 0x8000000000000000;
        v19 = sub_2371907DC(v11);
        v21 = v17[2];
        v22 = (v20 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
          goto LABEL_30;
        }

        v25 = v20;
        if (v17[3] >= v24)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v34 = v19;
            sub_237192D48();
            v19 = v34;
          }
        }

        else
        {
          sub_237191CE8(v24, isUniquelyReferenced_nonNull_native);
          v19 = sub_2371907DC(v11);
          if ((v25 & 1) != (v26 & 1))
          {
            sub_237115094(0, &qword_27DE94CE0);
            sub_237196AAC();
            __break(1u);
            return;
          }
        }

        i = v2;
        v2 = v15;
        if (v25)
        {
          *(v17[7] + 8 * v19) = v13;

          v4 = v18;
        }

        else
        {
          v17[(v19 >> 6) + 8] |= 1 << v19;
          *(v17[6] + 8 * v19) = v11;
          *(v17[7] + 8 * v19) = v13;
          v32 = v17[2];
          v23 = __OFADD__(v32, 1);
          v33 = v32 + 1;
          if (v23)
          {
            goto LABEL_32;
          }

          v4 = v18;
          v17[2] = v33;
        }

        v1 = v36;
        *&v36[v18] = v17;
        v6 = v5 + 1;
      }

      else
      {
        v27 = sub_2371907DC(v11);
        if (v28)
        {
          v29 = v27;
          v30 = swift_isUniquelyReferenced_nonNull_native();
          v31 = *&v1[v4];
          *&v1[v4] = 0x8000000000000000;
          if (!v30)
          {
            sub_237192D48();
          }

          sub_23718DF20(v29, v31);
          *&v1[v4] = v31;
        }

        else
        {
        }
      }

      swift_endAccess();

      ++v5;
      if (v6 == i)
      {

        return;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }
}

id sub_237127978(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_name];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = &v4[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_owner];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_tokenDict;
  v13 = MEMORY[0x277D84F90];
  *&v4[v12] = sub_23711A160(MEMORY[0x277D84F90]);
  v14 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_paramDictionary;
  *&v4[v14] = sub_23711A040(v13);
  *&v4[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_params] = v13;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_audioUnit] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_dataSource] = 0;
  v15 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_genericCellRegistration;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94CB0);
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_collectionView] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for AUDistortionControlsView();
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  sub_237127E68();

  return v17;
}

id sub_237127B40(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_name];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_titleLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = &v1[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_owner];
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_tokenDict;
  v7 = MEMORY[0x277D84F90];
  *&v1[v6] = sub_23711A160(MEMORY[0x277D84F90]);
  v8 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_paramDictionary;
  *&v1[v8] = sub_23711A040(v7);
  *&v1[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_params] = v7;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_audioUnit] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_dataSource] = 0;
  v9 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_genericCellRegistration;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94CB0);
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_collectionView] = 0;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for AUDistortionControlsView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    sub_237127E68();
  }

  return v12;
}

void sub_237127CF0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_tokenDict;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = *(v1 + v2);
      if (!*(v10 + 16))
      {
        break;
      }

      v11 = *(*(v3 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));

      v12 = sub_2371907DC(v11);
      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }

      v6 &= v6 - 1;
      v14 = *(*(v10 + 56) + 8 * v12);

      [v11 removeParameterObserver_];

      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        *(v1 + v2) = sub_23711A160(MEMORY[0x277D84F90]);

        return;
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_237127E68()
{
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_titleLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [objc_opt_self() systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
  [v1 setFont_];

  [v1 setTextAlignment_];
  [v1 setAllowsDefaultTighteningForTruncation_];
  [v1 setMinimumScaleFactor_];
  [v1 setBaselineAdjustment_];
  [v0 addSubview_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23719B670;
  v5 = [v1 centerXAnchor];
  v6 = [v0 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 heightAnchor];
  v9 = [v8 constraintEqualToConstant_];

  *(v4 + 40) = v9;
  v10 = [v1 topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:10.0];

  *(v4 + 48) = v12;
  sub_237115094(0, &qword_27DE94CC0);
  v13 = sub_23719661C();

  [v3 activateConstraints_];

  sub_237128198();
  v14 = *&v0[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_collectionView];
  if (v14)
  {
    *(swift_allocObject() + 16) = v0;
    v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94930));
    v16 = v14;
    v17 = v0;
    v18 = sub_2371964AC();
    v19 = *&v17[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_dataSource];
    *&v17[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_dataSource] = v18;

    sub_2371272F4();
  }

  else
  {
    __break(1u);
  }
}

void sub_237128198()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  v10 = objc_allocWithZone(MEMORY[0x277D752B8]);
  v42[4] = sub_2371292F8;
  v42[5] = v9;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 1107296256;
  v42[2] = sub_23712927C;
  v42[3] = &block_descriptor_1;
  v11 = _Block_copy(v42);
  v12 = v0;
  v13 = [v10 initWithSectionProvider_];
  _Block_release(v11);

  v14 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v13 collectionViewLayout:{v2, v4, v6, v8}];

  v15 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_collectionView;
  v16 = *&v12[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_collectionView];
  *&v12[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_collectionView] = v14;
  v17 = v14;

  if (!v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  v18 = *&v12[v15];
  if (!v18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v18 setDelegate_];
  v19 = *&v12[v15];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 clearColor];
  [v21 setBackgroundColor_];

  if (!*&v12[v15])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v12 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23719AB20;
  v24 = *&v12[v15];
  if (!v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = [v24 topAnchor];
  v26 = [*&v12[OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_titleLabel] bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:10.0];

  *(v23 + 32) = v27;
  v28 = *&v12[v15];
  if (!v28)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29 = [v28 leadingAnchor];
  v30 = [v12 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v23 + 40) = v31;
  v32 = *&v12[v15];
  if (!v32)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = [v32 trailingAnchor];
  v34 = [v12 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v23 + 48) = v35;
  v36 = *&v12[v15];
  if (v36)
  {
    v37 = objc_opt_self();
    v38 = [v36 bottomAnchor];
    v39 = [v12 bottomAnchor];
    v40 = [v38 constraintEqualToAnchor_];

    *(v23 + 56) = v40;
    sub_237115094(0, &qword_27DE94CC0);
    v41 = sub_23719661C();

    [v37 activateConstraints_];

    return;
  }

LABEL_17:
  __break(1u);
}

id sub_2371285F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUDistortionControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AUDistortionControlsView()
{
  result = qword_27DE94C98;
  if (!qword_27DE94C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237128774()
{
  sub_237128844();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_237128844()
{
  if (!qword_27DE94CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DE94CB0);
    v0 = sub_2371967FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE94CA8);
    }
  }
}

void sub_2371288A8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v7 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  (*((*MEMORY[0x277D85000] & *a1) + 0x100))(v7);
  sub_23711BDB4(a4 + OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_owner, v12, &qword_27DE94968);
  v10 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_owner;
  swift_beginAccess();
  sub_23711BF50(v12, a1 + v10, &qword_27DE94968);
  swift_endAccess();
  if (sub_23719640C() >= 1)
  {
    v11 = [a4 tintColor];
    [a1 setTintColor_];
  }
}

id sub_237128A0C(int a1, int a2, id a3)
{
  [a3 frame];
  CGRectGetWidth(v16);
  v3 = objc_opt_self();
  v4 = [v3 fractionalWidthDimension_];
  v5 = [v3 fractionalHeightDimension_];
  v6 = objc_opt_self();
  v7 = [v6 sizeWithWidthDimension:v4 heightDimension:v5];

  v8 = [objc_opt_self() itemWithLayoutSize_];
  [v8 setContentInsets_];
  v9 = [v3 fractionalWidthDimension_];
  v10 = [v3 absoluteDimension_];
  v11 = [v6 sizeWithWidthDimension:v9 heightDimension:v10];

  v12 = [objc_opt_self() horizontalGroupWithLayoutSize:v11 subitem:v8 count:1];
  v13 = [objc_opt_self() fixedSpacing_];
  [v12 setInterItemSpacing_];

  v14 = [objc_opt_self() sectionWithGroup_];
  [v14 setInterGroupSpacing_];
  [v14 setContentInsets_];
  [v14 setInterGroupSpacing_];

  return v14;
}

uint64_t sub_237128C6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v32 = a2;
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94CD0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v30 - v8;
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = *(a3 + 24);
  v14 = a3[4];
  v15 = a3[5];
  v16 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_genericCellRegistration;
  swift_beginAccess();
  v31 = a4;
  sub_23711BDB4(a4 + v16, v9, &unk_27DE94CD0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94CB0);
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v9, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = v10;
    v36 = v11;
    v37 = v12;
    v38 = v13;
    v39 = v14;
    v40 = v15;
    type metadata accessor for AUGenericViewParameterCellBase();

    v20 = v12;

    v21 = sub_23719677C();

    (*(v18 + 8))(v9, v17);
    if (v12)
    {
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v22;
        v24 = v20;
        v25 = [v23 address];
        v26 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_paramDictionary;
        v27 = v31;
        swift_beginAccess();
        v28 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = *(v27 + v26);
        *(v27 + v26) = 0x8000000000000000;
        sub_23718E680(v28, v25, isUniquelyReferenced_nonNull_native);
        *(v27 + v26) = v34;
        swift_endAccess();
      }
    }

    return v21;
  }

  return result;
}

uint64_t sub_237128EF0(uint64_t a1, void *a2, float a3)
{
  v6 = sub_2371964EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23719650C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237115094(0, &qword_27DE94908);
  v16 = sub_23719678C();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a1;
  *(v17 + 32) = a3;
  aBlock[4] = sub_237129320;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23714D540;
  aBlock[3] = &block_descriptor_45;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  sub_2371964FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23712932C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94918);
  sub_23711BE3C();
  sub_23719683C();
  MEMORY[0x2383C60F0](0, v15, v10, v18);
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

void sub_237129198(uint64_t a1, uint64_t a2, float a3)
{
  v6 = OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_paramDictionary;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16))
  {
    v8 = sub_23719336C(a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      type metadata accessor for AUGenericViewParameterCellBase();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = *((*MEMORY[0x277D85000] & *v11) + 0x120);
        v13 = v10;
        v12(a3);
      }
    }
  }
}

id sub_23712927C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23712932C()
{
  result = qword_27DE94910;
  if (!qword_27DE94910)
  {
    sub_2371964EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE94910);
  }

  return result;
}

uint64_t sub_23712939C()
{
  v1 = v0;
  v95[5] = *MEMORY[0x277D85DE8];
  sub_23714A81C();
  [v0 setIsAccessibilityElement_];
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_graphView];
  v3 = *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
  *&v3[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = -1044381696;
  *&v3[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed] = -1044381696;
  *&v3[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1094713344;
  *&v3[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1094713344;
  *&v3[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 8;
  type metadata accessor for AUAppleViewControllerBase();
  v4 = v3;
  v5 = sub_237175EDC();
  v6 = &v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v6 = v5;
  v6[1] = v7;

  v8 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v9 = *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
  *&v9[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = 1092616192;
  v10 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed;
  *&v9[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed] = 1092616192;
  *&v9[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1185669120;
  v11 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed;
  *&v9[v10] = 1101004800;
  *&v9[v11] = 1177116672;
  *&v9[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase] = 1092616192;
  *&v9[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 3;
  v12 = v9;
  v13 = sub_237175EDC();
  v14 = &v12[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v14 = v13;
  v14[1] = v15;

  v16 = *&v2[v8];
  *(v16 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_extendToZero) = 1;
  *(v16 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_abbreviateValues) = 0;
  *(v16 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_clipDisplayToMax) = 0;
  v95[3] = type metadata accessor for AUNBandViewController();
  v95[4] = &off_284A3A900;
  v95[0] = v1;
  v17 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  v18 = v1;
  sub_23710FAE0(v95, &v2[v17]);
  swift_endAccess();
  v90 = v2;
  sub_23716A678();
  sub_237120D04(v95, &qword_27DE94720);
  ioDataSize = 4;
  v19 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU;
  v20 = *&v18[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
  if (v20)
  {
    v21 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
    swift_beginAccess();
    Property = AudioUnitGetProperty(v20, 0x898u, 0, 0, &v18[v21], &ioDataSize);
    swift_endAccess();
    if (Property != sub_2371964DC())
    {
      *&v18[v21] = 8;
    }
  }

  v23 = sub_23719653C();
  v88 = [objc_opt_self() bundleWithIdentifier_];

  v24 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  swift_beginAccess();
  Parameter = *&v18[v24];
  if (Parameter < 0)
  {
    goto LABEL_70;
  }

  if (Parameter)
  {
    v87 = objc_opt_self();
    v89 = objc_opt_self();
    v86 = OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandControl;
    v85 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_controls;
    v84 = -Parameter;
    v26 = 56;
    v27 = 1;
    v83 = v19;
    while (1)
    {
      if (v27 == 4294965297)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        v68 = sub_2371969FC();
        if (!v68)
        {
          goto LABEL_61;
        }

LABEL_52:
        if (v68 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v68; ++i)
        {
          if ((Parameter & 0xC000000000000001) != 0)
          {
            v70 = MEMORY[0x2383C62A0](i, Parameter);
          }

          else
          {
            v70 = *(Parameter + 8 * i + 32);
          }

          v71 = v70;
          v72 = *&v70[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer];
          if (v72)
          {
            v73 = v72;
            v74 = [v90 layer];
            [v74 addSublayer_];
          }
        }

        goto LABEL_61;
      }

      outValue = 0.0;
      v28 = *&v18[v19];
      if (v28)
      {
        Parameter = AudioUnitGetParameter(v28, v27 + 1999, 0, 0, &outValue);
        if (Parameter != sub_2371964DC())
        {
          v93 = 0;
          v94 = 0xE000000000000000;
          sub_23719693C();

          v93 = 0xD000000000000022;
          v94 = 0x800000023719EC20;
          v29 = sub_237196A5C();
          MEMORY[0x2383C5F20](v29);

          v19 = v83;
          sub_237176A9C(v93, v94, Parameter);
        }

        v30 = outValue;
        if ((LODWORD(outValue) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          goto LABEL_65;
        }

        if (outValue <= -9.2234e18)
        {
          goto LABEL_63;
        }

        if (outValue >= 9.2234e18)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v30 = 0.0;
      }

      v31 = v27 - 1;
      v32 = v30;
      if (v30 > 8)
      {
        goto LABEL_48;
      }

      if (((1 << v32) & 0x78) != 0)
      {
        break;
      }

      if (((1 << v32) & 6) == 0)
      {
        if (((1 << v32) & 0x180) != 0)
        {
          if (v31 >= 0xFFFFF060)
          {
            goto LABEL_68;
          }

          v33 = sub_23716832C((v27 + 2999), (v27 + 3999));
        }

        else
        {
LABEL_48:
          if (v31 >= 0xFFFFEC78)
          {
            goto LABEL_69;
          }

          v33 = sub_237168E74((v27 + 2999), (v27 + 3999), v27 + 4999, 1);
        }

LABEL_26:
        Parameter = v33;
        goto LABEL_28;
      }

      Parameter = 0;
LABEL_28:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_23719B020;
      *(v34 + 56) = MEMORY[0x277D83B88];
      *(v34 + 64) = MEMORY[0x277D83C10];
      *(v34 + 32) = v27;
      sub_23719659C();
      v35 = v88;
      v36 = [v87 currentTraitCollection];
      v37 = sub_23719653C();

      v38 = [v89 colorNamed:v37 inBundle:v35 compatibleWithTraitCollection:v36];

      if (v38)
      {
        if (!Parameter)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v38 = [v89 tintColor];
        if (!Parameter)
        {
          goto LABEL_36;
        }
      }

      v39 = *(Parameter + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color);
      *(Parameter + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color) = v38;
      v40 = v38;

      outValue = 0.0;
      v41 = *&v18[v19];
      if (v41)
      {
        v42 = AudioUnitGetParameter(v41, v27 + 999, 0, 0, &outValue);
        if (v42 != sub_2371964DC())
        {
          v93 = 0;
          v94 = 0xE000000000000000;
          sub_23719693C();

          v93 = 0xD000000000000022;
          v94 = 0x800000023719EC20;
          v43 = sub_237196A5C();
          MEMORY[0x2383C5F20](v43);

          sub_237176A9C(v93, v94, v42);
        }
      }

      *(Parameter + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed) = outValue != 0.0;
      sub_237176EC0();
LABEL_36:
      v44 = *&v18[v86];
      if (v44)
      {
        outValue = 0.0;
        v45 = *&v18[v19];
        if (v45)
        {
          v46 = v44;
          v47 = AudioUnitGetParameter(v45, v27 + 999, 0, 0, &outValue);
          if (v47 != sub_2371964DC())
          {
            v93 = 0;
            v94 = 0xE000000000000000;
            sub_23719693C();

            v93 = 0xD000000000000022;
            v94 = 0x800000023719EC20;
            v48 = sub_237196A5C();
            MEMORY[0x2383C5F20](v48);

            v19 = v83;
            sub_237176A9C(v93, v94, v47);
          }
        }

        else
        {
          v46 = v44;
        }

        v49 = outValue;
        v50 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
        swift_beginAccess();
        v51 = *&v46[v50];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v46[v50] = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = sub_237186F78(v51);
          *&v46[v50] = v51;
        }

        if ((v27 - 1) >= *(v51 + 2))
        {
          goto LABEL_66;
        }

        v51[v26] = v49 == 0.0;
        sub_237110A84();
        *&v46[v50] = v51;
        swift_endAccess();
      }

      if (Parameter)
      {
        swift_beginAccess();
        Parameter = Parameter;
        MEMORY[0x2383C5F60]();
        if (*((*&v18[v85] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v18[v85] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23719664C();
        }

        sub_23719665C();
        swift_endAccess();
      }

      ++v27;
      v26 += 56;
      if (v84 + v27 == 1)
      {
        goto LABEL_50;
      }
    }

    if (v31 >= 0xFFFFEC78)
    {
      goto LABEL_67;
    }

    v33 = sub_2371688D8((v27 + 2999), (v27 + 4999), 1);
    goto LABEL_26;
  }

LABEL_50:
  *&v18[OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_activeControl] = 0;
  v53 = *&v18[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_headerView];
  v54 = sub_237175EDC();
  v56 = v55;
  v57 = sub_237175EDC();
  v59 = v58;
  v60 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel;
  v61 = *(v53 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel);
  v62 = sub_23719653C();
  [v61 setText_];

  [*(v53 + v60) setAccessibilityTraits_];
  v63 = *(v53 + v60);
  v64 = sub_23719653C();
  [v63 setAccessibilityLabel_];

  v65 = (v53 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName);
  *v65 = v54;
  v65[1] = v56;

  v66 = (v53 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName);
  *v66 = v57;
  v66[1] = v59;

  sub_23712A1DC();
  v67 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_controls;
  swift_beginAccess();
  Parameter = *&v18[v67];
  if (Parameter >> 62)
  {
    goto LABEL_71;
  }

  v68 = *((Parameter & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v68)
  {
    goto LABEL_52;
  }

LABEL_61:
  v75 = MEMORY[0x277D84CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94D18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B700;
  *(inited + 32) = 0x6D61726150;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0;
  *(inited + 72) = v75;
  *(inited + 80) = 7235917;
  *(inited + 88) = 0xE300000000000000;
  v77 = sub_2371307E8(0);
  v78 = MEMORY[0x277D83A90];
  *(inited + 96) = v77;
  *(inited + 120) = v78;
  *(inited + 128) = 7889229;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = sub_237130920(0);
  *(inited + 168) = v78;
  *(inited + 176) = 0x65756C6156;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = sub_2371305C0(0);
  *(inited + 216) = v78;
  *(inited + 224) = 0x656C746954;
  *(inited + 232) = 0xE500000000000000;
  v79 = sub_237175EDC();
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 240) = v79;
  *(inited + 248) = v80;
  v81 = sub_237119CF4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0);
  swift_arrayDestroy();
  sub_237140780(v81);
}

uint64_t sub_23712A1DC()
{
  v77 = *MEMORY[0x277D85DE8];
  v65 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_activeControl;
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_activeControl);
  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (HIDWORD(v1))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v2 = (v1 + 2000);
  if (v1 >= 0xFFFFF830)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  v3 = *&v66[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_headerView];
  v4 = sub_23712D308();
  v5 = sub_23712D4D0();
  v6 = sub_23712C600(*&v66[v65]);
  v7 = objc_opt_self();

  v8 = [v7 buttonWithType_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = sub_23719653C();
  v10 = [objc_opt_self() systemImageNamed_];

  [v8 setImage:v10 forState:0];
  if (!*(v4 + 16))
  {
    goto LABEL_51;
  }

  v11 = sub_23719653C();

  [v8 setTitle:v11 forState:0];

  v12 = sub_23719653C();

  [v8 setTitle:v12 forState:2];

  [v8 setTag_];
  v13 = &v3[OBJC_IVAR____TtC12CoreAudioKit21CAAUNBandEQHeaderView_typeControl];
  swift_beginAccess();
  v14 = *v13;
  *v13 = v8;
  *(v13 + 1) = v2;
  *(v13 + 2) = 0;
  *(v13 + 3) = v4;
  *(v13 + 4) = v5;
  v13[40] = 0;
  sub_23712D610(v14);

  v15 = v8;
  sub_23712D610(v8);
  [v15 setTintColor_];

  v16 = *v13;
  if (!*v13)
  {
    goto LABEL_53;
  }

  v17 = *&v3[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack];

  [v17 addArrangedSubview_];
  sub_237115094(0, &qword_27DE94D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23719B030;
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = v3;
  v19[4] = v66;
  v19[5] = sel_typeControlChangedWithSender_;
  v75 = sub_23712D65C;
  v76 = v19;
  *&aBlock.mEventType = MEMORY[0x277D85DD0];
  aBlock.mArgument.mParameter.mAudioUnit = 1107296256;
  *&aBlock.mArgument.mProperty.mPropertyID = sub_23714E63C;
  *&aBlock.mArgument.mProperty.mElement = &block_descriptor_2;
  v20 = _Block_copy(&aBlock);
  v21 = objc_opt_self();
  v3;
  v22 = v66;
  v23 = [v21 elementWithProvider_];
  _Block_release(v20);

  *(v18 + 32) = v23;
  v24 = sub_2371967BC();
  v25 = v24;
  v26 = *v13;
  if (*v13)
  {
    v70 = v24;
    sub_23712D680(v26);
    v27 = v26;
    v25 = v70;
    sub_23712D610(v26);
    [v27 setMenu_];

    v28 = *v13;
    if (*v13)
    {
      sub_23712D680(v28);
      v29 = v28;
      sub_23712D610(v28);
      [v29 setShowsMenuAsPrimaryAction_];
    }
  }

  v64 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  swift_beginAccess();
  v30 = 0;
  inRunLoopMode = *MEMORY[0x277CBE738];
  do
  {
    v44 = *&v66[v65];
    if ((v44 & 0x8000000000000000) != 0)
    {
      goto LABEL_44;
    }

    if (HIDWORD(v44))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v45 = *(&unk_284A39880 + v30 + 8);
    v67 = v45 + v44;
    if (__CFADD__(v45, v44))
    {
      goto LABEL_46;
    }

    v46 = *&v22[v64];
    if (v46 < 0)
    {
      goto LABEL_47;
    }

    v68 = v30;
    if (v46)
    {
      v47 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
      v48 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU;
      swift_beginAccess();
      for (i = 0; v46 != i; ++i)
      {
        if (i == 0x100000000)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v53 = v45 + i;
        if (__CFADD__(v45, i))
        {
          goto LABEL_43;
        }

        v54 = *&v22[v48];
        if (v54)
        {
          v55 = *&v22[v47];
          if (!v55)
          {
            v56 = CFRunLoopGetCurrent();
            swift_beginAccess();
            v57 = AUEventListenerCreate(sub_237176350, v22, v56, inRunLoopMode, 0.05, 0.05, &v22[v47]);
            swift_endAccess();

            if (v57 != sub_2371964DC())
            {
              *&aBlock.mEventType = 0;
              aBlock.mArgument.mParameter.mAudioUnit = 0xE000000000000000;
              sub_23719693C();

              *&aBlock.mEventType = 0xD00000000000002BLL;
              aBlock.mArgument.mParameter.mAudioUnit = 0x800000023719EAE0;
              LODWORD(v72) = v45 + i;
              v50 = sub_237196A5C();
              MEMORY[0x2383C5F20](v50);

              v51 = *&aBlock.mEventType;
              mAudioUnit = aBlock.mArgument.mParameter.mAudioUnit;
LABEL_20:
              sub_237176A9C(v51, mAudioUnit, v57);

              continue;
            }

            v55 = *&v22[v47];
          }

          aBlock.mEventType = kAudioUnitEvent_ParameterValueChange;
          aBlock.mArgument.mParameter.mAudioUnit = v54;
          *&aBlock.mArgument.mProperty.mPropertyID = v53;
          if (!v55)
          {
            goto LABEL_52;
          }

          sub_2371964DC();
          aBlock.mEventType = kAudioUnitEvent_BeginParameterChangeGesture;
          v57 = AUEventListenerAddEventType(v55, v22, &aBlock);
          if (v57 == sub_2371964DC())
          {
            aBlock.mEventType = kAudioUnitEvent_EndParameterChangeGesture;
            v57 = AUEventListenerAddEventType(v55, v22, &aBlock);
          }

          if (v57 == sub_2371964DC())
          {
            aBlock.mEventType = kAudioUnitEvent_ParameterValueChange;
            v57 = AUEventListenerAddEventType(v55, v22, &aBlock);
          }

          if (v57 != sub_2371964DC())
          {
            *&v72 = 0;
            *(&v72 + 1) = 0xE000000000000000;
            sub_23719693C();
            v71 = v72;
            MEMORY[0x2383C5F20](0xD00000000000002DLL, 0x800000023719EB10);
            *&v72 = v54;
            v73 = 0;
            *(&v72 + 1) = v53;
            type metadata accessor for AudioUnitParameter(0);
            sub_2371969CC();
            mAudioUnit = *(&v71 + 1);
            v51 = v71;
            goto LABEL_20;
          }
        }
      }
    }

    if (v68 <= 2)
    {
      v58 = sub_2371833F8();
      if (v68)
      {
        v59 = sub_23714AADC();
      }

      else
      {
        v59 = sub_23714AB3C();
      }

      v62 = v59;
      *&aBlock.mEventType = 0x65736142676F4C78;
      aBlock.mArgument.mParameter.mAudioUnit = 0xE800000000000000;
      v60 = [v58 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      v63 = v58;
      if (v60)
      {
        sub_23719682C();
        swift_unknownObjectRelease();
        sub_23711BDA4(&v72, &aBlock);
      }

      else
      {
        *&aBlock.mArgument.mProperty.mElement = MEMORY[0x277D839F8];
        *&aBlock.mEventType = 0;
      }

      v31 = sub_23712AC84(v67);
      v33 = v32;
      v34 = sub_23712B1A0(v67);
      v36 = v35;
      v37 = sub_23712AE54(v67);
      v38 = sub_2371305C0(v67);
      v39 = sub_2371307E8(v67);
      v40 = sub_237130920(v67);
      sub_237114D0C(&aBlock, &v72);
      swift_dynamicCast();
      v41 = sub_23712B32C(v67);
      sub_23718AD74(v67, v31, v33, v34, v36, v37, v62, v41, v38, v39, v40, *&v71, 0.0, v42);

      v43 = sub_23712C600(v68);
      sub_237135BD4(v67, v43);

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    v30 = v68 + 1;
  }

  while (v68 != 4);
  return sub_237175BF0(0, 0, 0);
}

uint64_t sub_23712AC84(unsigned int a1)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  if (a1 < 0xBB8)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  result = swift_beginAccess();
  v5 = *(v1 + v4);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v5))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = __CFADD__(v5, 3000);
  v7 = v5 + 3000;
  if (v6)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 > a1)
  {
LABEL_9:
    type metadata accessor for AUAppleViewControllerBase();
    return sub_237175EDC();
  }

  if (a1 < 0xFA0)
  {
    return 0;
  }

  v8 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  result = swift_beginAccess();
  v9 = *(v1 + v8);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  if (HIDWORD(v9))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = __CFADD__(v9, 4000);
  v10 = v9 + 4000;
  if (v6)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v10 > a1)
  {
    goto LABEL_9;
  }

  if (a1 >> 3 < 0x271)
  {
    return 0;
  }

  v11 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  result = swift_beginAccess();
  v12 = *(v1 + v11);
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (HIDWORD(v12))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = __CFADD__(v12, 5000);
  v13 = v12 + 5000;
  if (!v6)
  {
    if (v13 <= a1)
    {
      return 0;
    }

    goto LABEL_9;
  }

LABEL_29:
  __break(1u);
  return result;
}

id sub_23712AE54(unsigned int a1)
{
  v3 = sub_23719633C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  if (!a1)
  {
    goto LABEL_9;
  }

  if (a1 < 0xBB8)
  {
    return [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  }

  v6 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  result = swift_beginAccess();
  v7 = *(v1 + v6);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = __CFADD__(v7, 3000);
  v9 = v7 + 3000;
  if (v8)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v9 > a1)
  {
LABEL_9:
    sub_237115094(0, &qword_27DE94D28);
    sub_23719632C();
    return sub_2371967AC();
  }

  if (a1 < 0xFA0)
  {
    return [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  }

  v10 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  result = swift_beginAccess();
  v11 = *(v1 + v10);
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

  if (HIDWORD(v11))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = __CFADD__(v11, 4000);
  v12 = v11 + 4000;
  if (v8)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v12 > a1)
  {
LABEL_15:
    v13 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
    v14 = sub_23719653C();
    v15 = [objc_opt_self() systemImageNamed_];

    [v13 setImage_];
    v16 = [objc_opt_self() attributedStringWithAttachment_];

    return v16;
  }

  if (a1 >> 3 < 0x271)
  {
    return [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  }

  v17 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  result = swift_beginAccess();
  v18 = *(v1 + v17);
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

  if (HIDWORD(v18))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = __CFADD__(v18, 5000);
  v19 = v18 + 5000;
  if (!v8)
  {
    if (v19 <= a1)
    {
      return [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    goto LABEL_15;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_23712B1A0(unsigned int a1)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  if (a1 < 0xFA0)
  {
    if (a1 < 0xBB8)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v5))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = __CFADD__(v5, 4000);
  v7 = v5 + 4000;
  if (v6)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 > a1)
  {
    goto LABEL_14;
  }

LABEL_10:
  v8 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  result = swift_beginAccess();
  v9 = *(v1 + v8);
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v9))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = __CFADD__(v9, 4000);
  v10 = v9 + 4000;
  if (v6)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v10 > a1)
  {
LABEL_14:
    type metadata accessor for AUAppleViewControllerBase();
    return sub_237175EDC();
  }

  if (a1 >> 3 < 0x271)
  {
    return 0;
  }

  v11 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  result = swift_beginAccess();
  v12 = *(v1 + v11);
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (HIDWORD(v12))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = __CFADD__(v12, 5000);
  v13 = v12 + 5000;
  if (!v6)
  {
    if (v13 > a1)
    {
      goto LABEL_14;
    }

    return 0;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23712B32C(unsigned int a1)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  if (a1 < 0xFA0)
  {
    if (a1 < 0xBB8)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v5))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = __CFADD__(v5, 4000);
  v7 = v5 + 4000;
  if (v6)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 > a1)
  {
    goto LABEL_14;
  }

LABEL_10:
  v8 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  result = swift_beginAccess();
  v9 = *(v1 + v8);
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v9))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = __CFADD__(v9, 4000);
  v10 = v9 + 4000;
  if (v6)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v10 > a1)
  {
LABEL_14:
    type metadata accessor for AUAppleViewControllerBase();
    return sub_237175EDC();
  }

  if (a1 >> 3 < 0x271)
  {
    return 0;
  }

  v11 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  result = swift_beginAccess();
  v12 = *(v1 + v11);
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (HIDWORD(v12))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = __CFADD__(v12, 5000);
  v13 = v12 + 5000;
  if (!v6)
  {
    if (v13 > a1)
    {
      goto LABEL_14;
    }

    return 0;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23712B4AC(AudioUnitParameterID a1)
{
  if (a1 == 3000)
  {
    v1 = sub_23714AB3C();
    sub_2371305C0(0xBB8u);
  }

  else
  {
    v1 = sub_23714AADC();
    sub_2371305C0(a1);
  }

  v2 = sub_23719666C();
  v4 = [v1 stringFromNumber_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_23719657C();

  return v5;
}

unint64_t sub_23712B57C()
{
  result = sub_23719630C();
  if (result)
  {
    v1 = result;
    sub_23719690C();
    if (*(v1 + 16) && (v2 = sub_237190728(v4), (v3 & 1) != 0))
    {
      sub_237114D0C(*(v1 + 56) + 32 * v2, v5);
      sub_237114F1C(v4);

      result = swift_dynamicCast();
      if (result)
      {
        sub_23714B068(0, 2.9965e32);
        return sub_237135E04(0, 2.9965e32);
      }
    }

    else
    {

      return sub_237114F1C(v4);
    }
  }

  return result;
}

uint64_t sub_23712B6A4()
{
  sub_23718C784();
  type metadata accessor for AUAppleViewControllerBase();
  v0 = sub_237175EDC();
  v2 = v1;
  v3 = sub_237175EDC();
  v5 = v4;
  v6 = sub_2371305C0(0);
  v7 = sub_2371307E8(0);
  v8 = sub_237130920(0);
  v9 = sub_23714AADC();
  v10 = sub_237175EDC();
  sub_23718AD74(0, v0, v2, v3, v5, 0, v9, v10, v6, v7, v8, 0.0, 0.0, v11);
}

void sub_23712B820()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_headerView);
  sub_23718C784();
  v3 = (v2 + OBJC_IVAR____TtC12CoreAudioKit21CAAUNBandEQHeaderView_typeControl);
  swift_beginAccess();
  if (*v3)
  {
    v4 = *v3;

    [v4 setHidden_];
  }

  v5 = 0;
  v26 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_activeControl;
  while (1)
  {
    v21 = *(v1 + v26);
    if ((v21 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (HIDWORD(v21))
    {
      goto LABEL_18;
    }

    v22 = *(&unk_284A398B8 + v5 + 8);
    v23 = v22 + v21;
    if (__CFADD__(v22, v21))
    {
      goto LABEL_19;
    }

    v24 = sub_2371833F8();
    *&v33[0] = 0x65736142676F4C78;
    *(&v33[0] + 1) = 0xE800000000000000;
    v25 = [v24 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v25)
    {
      sub_23719682C();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v33[0] = v31;
    v33[1] = v32;
    v29 = v24;
    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v6 = v30;
        goto LABEL_6;
      }
    }

    else
    {
      sub_237120D04(v33, &qword_27DE94D20);
    }

    v6 = 0.0;
LABEL_6:
    v28 = v5 + 1;
    v27 = v5;
    v7 = sub_23712AC84(v23);
    v9 = v8;
    v10 = sub_23712B1A0(v23);
    v12 = v11;
    v13 = sub_23712AE54(v23);
    v14 = sub_2371305C0(v23);
    v15 = sub_2371307E8(v23);
    v16 = sub_237130920(v23);
    v17 = sub_23714AB3C();
    v18 = sub_23712B32C(v23);
    sub_23718AD74(v23, v7, v9, v10, v12, v13, v17, v18, v14, v15, v16, v6, 0.0, v19);

    v20 = sub_23712C600(v27);
    sub_237135BD4(v23, v20);

    v5 = v28;
    if (v28 == 3)
    {
      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_23712BB78(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_23719631C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  v11 = a1;
  a4();

  return (*(v7 + 8))(v10, v6);
}

void sub_23712BC64()
{
  v0 = sub_23719630C();
  if (v0)
  {
    v1 = v0;
    sub_23719690C();
    if (*(v1 + 16) && (v2 = sub_237190728(v4), (v3 & 1) != 0))
    {
      sub_237114D0C(*(v1 + 56) + 32 * v2, v5);
      sub_237114F1C(v4);

      if (swift_dynamicCast())
      {
        sub_23712C43C(0x6F697463656C6573uLL);
      }
    }

    else
    {

      sub_237114F1C(v4);
    }
  }
}

void sub_23712BD68()
{
  v1 = v0;
  v47 = *MEMORY[0x277D85DE8];
  v2 = sub_23719630C();
  if (v2)
  {
    v3 = v2;
    inParameter.mAudioUnit = 0x746E656D676573;
    *&inParameter.mParameterID = 0xE700000000000000;
    sub_23719690C();
    if (!*(v3 + 16))
    {
      goto LABEL_17;
    }

    v4 = sub_237190728(v44);
    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    sub_237114D0C(*(v3 + 56) + 32 * v4, &v45);
    sub_237114F1C(v44);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    mAudioUnit = inParameter.mAudioUnit;
    inParameter.mAudioUnit = 0x64656C62616E65;
    *&inParameter.mParameterID = 0xE700000000000000;
    sub_23719690C();
    if (*(v3 + 16) && (v7 = sub_237190728(v44), (v8 & 1) != 0))
    {
      sub_237114D0C(*(v3 + 56) + 32 * v7, &v45);
      sub_237114F1C(v44);

      if ((swift_dynamicCast() & 1) != 0 && *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU])
      {
        if (HIDWORD(mAudioUnit))
        {
          goto LABEL_36;
        }

        v9 = inParameter.mAudioUnit;
        inParameter.mAudioUnit = *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
        inParameter.mScope = 0;
        inParameter.mElement = 0;
        inParameter.mParameterID = mAudioUnit + 1000;
        v10 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
        swift_beginAccess();
        LODWORD(v10) = AUParameterSet(*&v1[v10], v1, &inParameter, 0.0, 0);
        if (v10 == sub_2371964DC())
        {
          v11 = *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_graphView];
          v12 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
          swift_beginAccess();
          if (mAudioUnit < *(*(v11 + v12) + 16))
          {
            v13 = sub_237169FB8(mAudioUnit);
            v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed] = v9 ^ 1;
            sub_237176EC0();
          }
        }

        if (v1[OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_noParamDisplayed] & v9)
        {
          v37 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_noParamDisplayed;
          v14 = (*&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_headerView] + OBJC_IVAR____TtC12CoreAudioKit21CAAUNBandEQHeaderView_typeControl);
          swift_beginAccess();
          if (*v14)
          {
            v15 = *v14;

            [v15 setHidden_];
          }

          v16 = 0;
          v38 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_activeControl;
          while (1)
          {
            v32 = *&v1[v38];
            if ((v32 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              __break(1u);
LABEL_36:
              __break(1u);
              __break(1u);
            }

            if (HIDWORD(v32))
            {
              goto LABEL_34;
            }

            v33 = *(&unk_284A398E8 + v16 + 8);
            v34 = v33 + v32;
            if (__CFADD__(v33, v32))
            {
              goto LABEL_35;
            }

            v35 = sub_2371833F8();
            *&v44[0] = 0x65736142676F4C78;
            *(&v44[0] + 1) = 0xE800000000000000;
            v36 = [v35 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v36)
            {
              sub_23719682C();
              swift_unknownObjectRelease();
            }

            else
            {
              v45 = 0u;
              v46 = 0u;
            }

            v44[0] = v45;
            v44[1] = v46;
            v41 = v35;
            if (*(&v46 + 1))
            {
              if (swift_dynamicCast())
              {
                v17 = v42;
                goto LABEL_22;
              }
            }

            else
            {
              sub_237120D04(v44, &qword_27DE94D20);
            }

            v17 = 0.0;
LABEL_22:
            v40 = v16 + 1;
            v18 = sub_23712AC84(v34);
            v39 = v16;
            v20 = v19;
            v21 = sub_23712B1A0(v34);
            v23 = v22;
            v24 = sub_23712AE54(v34);
            v25 = sub_2371305C0(v34);
            v26 = sub_2371307E8(v34);
            v27 = sub_237130920(v34);
            v28 = sub_23714AB3C();
            v29 = sub_23712B32C(v34);
            sub_23718AD74(v34, v18, v20, v21, v23, v24, v28, v29, v25, v26, v27, v17, 0.0, v30);

            v31 = sub_23712C600(v39);
            sub_237135BD4(v34, v31);

            v16 = v40;
            if (v40 == 3)
            {
              v1[v37] = 0;
              return;
            }
          }
        }
      }
    }

    else
    {
LABEL_17:

      sub_237114F1C(v44);
    }
  }
}

uint64_t sub_23712C34C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
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

void sub_23712C43C(unint64_t a1)
{
  v3 = sub_23712C600(a1);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(a1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a1 >= 0xFFFFF830)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v3;
  sub_23718EBD4(0, v3);
  if (a1 >= 0xFFFFF448)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_activeControl;
  v5 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_activeControl);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v5))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = v5 + 3000;
  if (v5 >= 0xFFFFF448)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = sub_2371305C0(a1 + 3000);
  sub_23718C140(v6, a1 + 3000, v13, v7);
  v8 = sub_2371305C0(a1 + 2000);
  if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v8 <= -9.2234e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v8 >= 9.2234e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a1 >= 0xFFFFF060)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = *(v1 + v4);
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v9))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = v9 + 4000;
  if (v9 >= 0xFFFFF060)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = sub_2371305C0(a1 + 4000);
  sub_23718C140(v10, a1 + 4000, v13, v12);
  sub_23712CB54(v11, a1);
  *(v1 + v4) = a1;
  sub_23716A350(a1);
}

id sub_23712C600(unint64_t a1)
{
  if (*&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandControl])
  {
    v2 = sub_237114DD8(a1);
  }

  else
  {
    v2 = [objc_opt_self() tintColor];
  }

  v3 = v2;
  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 != 1)
  {
    return v3;
  }

  v6 = [objc_opt_self() blackColor];
  v7 = sub_23715B6D0(v6, 0.25);

  v8 = sub_23715B6D0(v3, 0.75);
  v9 = sub_23715B790(v7, v8);

  return v9;
}

void sub_23712C784(int64_t a1, char a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_activeControl;
  v4 = *&v2[OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_activeControl];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  if (HIDWORD(v4))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v4 >= 0xFFFFF830)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v6 = v2;
  v8 = sub_2371305C0(v4 + 2000);
  if (*&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU] && (a2 & 1) != 0)
  {
    v9 = *&v2[v3];
    if ((v9 & 0x8000000000000000) != 0)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (HIDWORD(v9))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v10 = __CFADD__(v9, 2000);
    v11 = v9 + 2000;
    if (v10)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    inParameter.mAudioUnit = *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
    inParameter.mScope = 0;
    inParameter.mElement = 0;
    inParameter.mParameterID = v11;
    v12 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
    swift_beginAccess();
    LODWORD(v12) = AUParameterSet(*&v6[v12], v6, &inParameter, a1, 0);
    if (v12 != sub_2371964DC())
    {
      return;
    }
  }

  v13 = 1;
  if (a1 > 6)
  {
    if (a1 == 8 || a1 == 7)
    {
      v13 = 0;
    }
  }

  else
  {
    if ((a1 - 3) < 4)
    {
LABEL_14:
      v14 = 0;
      goto LABEL_22;
    }

    if ((a1 - 1) < 2)
    {
      v13 = 0;
      goto LABEL_14;
    }
  }

  v15 = *&v6[v3];
  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (HIDWORD(v15))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v16 = v15 + 4000;
  if (v15 >= 0xFFFFF060)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v17 = sub_2371305C0(v16);
  sub_237135E04(v16, v17);
  v14 = 1;
LABEL_22:
  if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v8 <= -9.2234e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v8 >= 9.2234e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v18 = v8;
  if (v8 > 2)
  {
    if ((v18 - 3) < 4)
    {
      if (v14)
      {
        goto LABEL_39;
      }

LABEL_28:
      if (v13)
      {
        return;
      }

      goto LABEL_38;
    }

    if (v18 == 7 || v18 == 8)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_37;
    }

LABEL_48:
    if ((v14 & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_28;
  }

  if (v18 != 1 && v18 != 2)
  {
    goto LABEL_48;
  }

  if ((v14 & 1) == 0)
  {
LABEL_37:
    if (!v13)
    {
      return;
    }

LABEL_38:
    if (v14)
    {
      goto LABEL_39;
    }

LABEL_49:
    v20 = *&v6[v3];
    if (!v13)
    {
      sub_2371694E0(v20);
      goto LABEL_55;
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v20))
      {
        if (v20 < 0xFFFFEC78)
        {
          sub_237169D08(v20, (v20 + 5000));
          goto LABEL_55;
        }

LABEL_81:
        __break(1u);
      }

LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_39:
  v19 = *&v6[v3];
  if (!v13)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v19))
      {
        if (v19 < 0xFFFFF060)
        {
          sub_237169A48(v19, (v19 + 4000));
          goto LABEL_55;
        }

        goto LABEL_78;
      }

      goto LABEL_76;
    }

    goto LABEL_74;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (HIDWORD(v19))
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v19 >= 0xFFFFEC78)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  sub_23716970C(v19, v19 + 4000, (v19 + 5000));
LABEL_55:
  v21 = *&v6[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_frequencyData];
  if (v21)
  {
    LODWORD(inParameter.mAudioUnit) = 0x4000;
    v22 = *(v21 + 24);

    v23 = sub_237130F84();
    Property = AudioUnitGetProperty(v22, 0x34u, 0, 0, v23, &inParameter);
    if (Property != sub_2371964DC())
    {
      sub_237176A9C(0xD000000000000029, 0x800000023719EA70, Property);
    }
  }

  sub_23716A494();
  sub_23712CB54(a1, *&v6[v3]);
}

void sub_23712CB54(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (HIDWORD(a2))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 >= 0xFFFFF060)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = a1 - 7 < 0xFFFFFFFFFFFFFFFALL;
  v5 = sub_23712C600(a2);
  sub_23718C4EC(a2 + 4000, v4, v5);

  if (a2 >= 0xFFFFEC78)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v6 = sub_23712C600(a2);
  sub_23718C4EC(a2 + 5000, (a1 > 8) | (0x79u >> a1) & 1, v6);
}

void sub_23712CC58(int a1, int a2, int a3, uint64_t inID)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    return;
  }

  v5 = v4;
  v7 = sub_2371305C0(inID);
  sub_237135E04(inID, v7);
  if (!inID)
  {
    *(*(v4 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_gainKnob) + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value) = v7;
    sub_23713F9D4();
    return;
  }

  v8 = (inID - 1000);
  if (v8 <= 0x3E7)
  {
    v9 = *(v4 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandControl);
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
    swift_beginAccess();
    v11 = *&v9[v10];
    v12 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v10] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_237186F78(v11);
      *&v9[v10] = v11;
    }

    if (*(v11 + 2) > v8)
    {
      v11[56 * v8 + 56] = v7 == 0.0;
      sub_237110A84();
      *&v9[v10] = v11;
      swift_endAccess();

LABEL_10:
      v14 = *(v4 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_graphView);
      v15 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
      swift_beginAccess();
      if (*(*(v14 + v15) + 16) > v8)
      {
        v16 = sub_237169FB8(v8);
        v16[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed] = v7 == 0.0;
        sub_237176EC0();
      }

      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  if ((inID - 2000) > 0x3E7)
  {
    v18 = *(v4 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_graphView);
    v19 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_paramCache;
    swift_beginAccess();
    v20 = *(v18 + v19);
    if (!*(v20 + 16))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v21 = sub_2371906E0(inID);
    if ((v22 & 1) == 0)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_237114D0C(*(v20 + 56) + 32 * v21, v29);
    sub_23711BDA4(v29, ioDataSize);
    type metadata accessor for CAAUFilterControl();
    swift_dynamicCast();
    sub_237178FFC(inID, v7);

    v23 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_frequencyData);
    if (v23)
    {
      ioDataSize[0] = 0x4000;
      v24 = *(v23 + 24);

      v25 = sub_237130F84();
      Property = AudioUnitGetProperty(v24, 0x34u, 0, 0, v25, ioDataSize);
      if (Property != sub_2371964DC())
      {
        sub_237176A9C(0xD000000000000029, 0x800000023719EA70, Property);
      }
    }

    sub_23716A494();
  }

  else
  {
    v17 = *(v4 + OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_activeControl);
    if (inID - 2000 != v17)
    {
      return;
    }

    if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      goto LABEL_31;
    }

    if (v7 <= -9.2234e18)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    if (v7 >= 9.2234e18)
    {
      goto LABEL_33;
    }

    sub_23712C784(v7, 0);
    v27 = sub_23712C600(v17);
    sub_23718EBD4(0, v27);
  }
}

id sub_23712D118(void *a1)
{
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_controls] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_activeControl] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands] = 8;
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_hintView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v1[OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_noParamDisplayed] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AUNBandViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_23712D224()
{

  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_hintView);
}

id sub_23712D264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUNBandViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23712D308()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23719B710;
  type metadata accessor for AUAppleViewControllerBase();
  *(v0 + 32) = sub_237175EDC();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_237175EDC();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_237175EDC();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_237175EDC();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_237175EDC();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_237175EDC();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_237175EDC();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_237175EDC();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_237175EDC();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_237175EDC();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_237175EDC();
  *(v0 + 200) = v11;
  return v0;
}

uint64_t sub_23712D4D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23719B710;
  type metadata accessor for AUAppleViewControllerBase();
  *(v0 + 32) = sub_237175EDC();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_237175EDC();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_237175EDC();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_237175EDC();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_237175EDC();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_237175EDC();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_237175EDC();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_237175EDC();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_237175EDC();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_237175EDC();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_237175EDC();
  *(v0 + 200) = v11;
  return v0;
}

void *sub_23712D610(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_23712D680(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void sub_23712D6CC()
{
  v1 = v0;
  v104 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  v4 = sub_23719653C();
  v5 = *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_gainKnob];
  [v3 addObserver:v1 selector:sel_globalGainChangedWithNotification_ name:v4 object:v5];

  v6 = [v2 defaultCenter];
  v7 = sub_23719653C();
  [v6 addObserver:v1 selector:sel_globalGainKnobTouchedWithNotification_ name:v7 object:v5];

  v8 = [v2 defaultCenter];
  v9 = sub_23719653C();
  [v8 addObserver:v1 selector:sel_globalGainKnobReleasedWithNotification_ name:v9 object:v5];

  v10 = [v2 defaultCenter];
  v11 = sub_23719653C();
  v12 = OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandControl;
  [v10 addObserver:v1 selector:sel_bandSelectionChangedWithNotification_ name:v11 object:*&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_bandControl]];

  v13 = [v2 defaultCenter];
  v14 = sub_23719653C();
  v15 = *&v1[OBJC_IVAR____TtC12CoreAudioKit37AURightEdgeControlsBaseViewController_graphView];
  [v13 addObserver:v1 selector:sel_bandSelectionChangedWithNotification_ name:v14 object:v15];

  v16 = [v2 defaultCenter];
  v17 = sub_23719653C();
  [v16 addObserver:v1 selector:sel_bandEnabledChangedWithNotification_ name:v17 object:*&v1[v12]];

  v18 = [v2 defaultCenter];
  v19 = sub_23719653C();
  v102 = v15;
  [v18 addObserver:v1 selector:sel_bandEnabledChangedWithNotification_ name:v19 object:v15];

  v20 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_hintView;
  v21 = [*&v1[OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_hintView] layer];
  v22 = objc_opt_self();
  v23 = [v22 secondaryLabelColor];
  v24 = [v23 colorWithAlphaComponent_];

  v25 = [v24 CGColor];
  [v21 setBorderColor_];

  v26 = [*&v1[v20] layer];
  [v26 setBorderWidth_];

  LOBYTE(v25) = UIAccessibilityIsReduceTransparencyEnabled();
  v27 = *&v1[v20];
  if (v25)
  {
    v28 = [v22 whiteColor];
    [v27 setBackgroundColor_];
  }

  else
  {
    v29 = [v22 yellowColor];
    v30 = [v29 colorWithAlphaComponent_];

    [v27 setBackgroundColor_];
    v27 = [objc_opt_self() effectWithStyle_];
    v28 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
    [*&v1[v20] bounds];
    [v28 setFrame_];
    [v28 setAutoresizingMask_];
    [*&v1[v20] addSubview_];
  }

  [*&v1[v20] frame];
  v32 = UIEdgeInsetsInsetRect(v31);
  v36 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v36 setTextAlignment_];
  type metadata accessor for AUAppleViewControllerBase();
  sub_237175EDC();
  v37 = sub_23719653C();

  [v36 setText_];

  v38 = v36;
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  v39 = [v22 secondaryLabelColor];
  [v38 setTextColor_];

  [v38 setLineBreakMode_];
  [v38 setNumberOfLines_];
  [*&v1[v20] addSubview_];
  v40 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_23719B720;
  v42 = [v38 centerXAnchor];
  v43 = [*&v1[v20] centerXAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v41 + 32) = v44;
  v45 = [v38 centerYAnchor];
  v46 = [*&v1[v20] centerYAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v41 + 40) = v47;
  v48 = [v38 leadingAnchor];
  v49 = [*&v1[v20] leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:10.0];

  *(v41 + 48) = v50;
  v51 = [v38 trailingAnchor];
  v52 = [*&v1[v20] trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:-10.0];

  *(v41 + 56) = v53;
  v54 = [v38 topAnchor];
  v55 = [*&v1[v20] topAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:10.0];

  *(v41 + 64) = v56;
  v57 = [v38 bottomAnchor];
  v101 = v38;

  v58 = [*&v1[v20] bottomAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:-10.0];

  *(v41 + 72) = v59;
  sub_237115094(0, &qword_27DE94CC0);
  v60 = sub_23719661C();

  [v40 activateConstraints_];

  [*&v1[v20] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_23716A0C4();
  v61 = OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_numBands;
  swift_beginAccess();
  v62 = *&v1[v61];
  if (v62 < 0)
  {
    goto LABEL_22;
  }

  if (v62)
  {
    v63 = 0;
    v64 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU;
    while (v63 != 4294966296)
    {
      outValue = 0.0;
      v65 = *&v1[v64];
      if (!v65)
      {
        goto LABEL_18;
      }

      Parameter = AudioUnitGetParameter(v65, v63 + 1000, 0, 0, &outValue);
      if (Parameter != sub_2371964DC())
      {
        sub_23719693C();

        v67 = sub_237196A5C();
        MEMORY[0x2383C5F20](v67);

        sub_237176A9C(0xD000000000000022, 0x800000023719EC20, Parameter);
      }

      if (outValue == 0.0)
      {
LABEL_18:
        sub_23712C43C(v63);
        v83 = v102;
LABEL_19:
        v97 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_hintDismissedWithRecognizer_];
        [v97 setNumberOfTapsRequired_];
        v98 = [v1 view];
        if (v98)
        {
          v99 = v98;
          [v98 addGestureRecognizer_];

          v100 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v83 action:sel_doubleTapped_];
          [v100 setNumberOfTapsRequired_];
          [v100 setCancelsTouchesInView_];
          [v83 addGestureRecognizer_];

          return;
        }

LABEL_23:
        __break(1u);
      }

      if (v62 == ++v63)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_13:
  sub_23718C784();
  v1[OBJC_IVAR____TtC12CoreAudioKit21AUNBandViewController_noParamDisplayed] = 1;
  v68 = [v1 view];
  if (!v68)
  {
    __break(1u);
    goto LABEL_25;
  }

  v69 = v68;
  [v68 addSubview_];

  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_23719AB20;
  v71 = [*&v1[v20] centerXAnchor];
  v72 = [v1 view];
  if (!v72)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v73 = v72;
  v74 = [v72 centerXAnchor];

  v75 = [v71 constraintEqualToAnchor_];
  *(v70 + 32) = v75;
  v76 = [*&v1[v20] centerYAnchor];
  v77 = [v1 view];
  if (v77)
  {
    v78 = v77;
    v79 = [v77 centerYAnchor];

    v80 = [v76 constraintEqualToAnchor:v79 constant:-50.0];
    *(v70 + 40) = v80;
    v81 = [*&v1[v20] widthAnchor];
    v82 = [v1 view];
    v83 = v102;
    if (v82)
    {
      v84 = v82;
      [v82 frame];
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v92 = v91;

      v105.origin.x = v86;
      v105.origin.y = v88;
      v105.size.width = v90;
      v105.size.height = v92;
      v93 = [v81 constraintEqualToConstant_];

      *(v70 + 48) = v93;
      v94 = [*&v1[v20] heightAnchor];
      v95 = [v94 constraintEqualToConstant_];

      *(v70 + 56) = v95;
      v96 = sub_23719661C();

      [v40 activateConstraints_];

      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_23712E5F8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC12CoreAudioKit23AUGenericViewHeaderCell_audioUnit;
  v5 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit23AUGenericViewHeaderCell_audioUnit);
  if (v5)
  {
    v6 = [v5 audioUnitName];
    if (v6)
    {
      v7 = v6;
      sub_23719657C();
    }
  }

  v8 = sub_23719653C();

  [v3 setText_];

  v9 = *(v1 + v4);
  if (v9)
  {
    [v9 componentVersion];
    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v10;
    sub_237196A5C();
    MEMORY[0x2383C5F20](46, 0xE100000000000000);
    v12 = sub_237196A5C();
    MEMORY[0x2383C5F20](v12);

    MEMORY[0x2383C5F20](46, 0xE100000000000000);
    v13 = sub_237196A5C();
    MEMORY[0x2383C5F20](v13);

    v14 = sub_23719653C();

    [v11 setText_];
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  v17 = *(v1 + v4);
  if (v17)
  {
    v18 = [v17 manufacturerName];
    if (v18)
    {
      v19 = v18;
      sub_23719657C();
    }
  }

  v20 = sub_23719653C();

  [v16 setText_];
}

id sub_23712E864(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC12CoreAudioKit23AUGenericViewHeaderCell_audioUnit] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AUGenericViewHeaderCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_23712E96C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUGenericViewHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23712EA30()
{
  v1 = v0;
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU);
  if (v2)
  {
    v3 = sub_23712F040();
    v4 = sub_23719342C();

    type metadata accessor for AUFrequencyData();
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = v2;
    v5[4] = v4;
    *(v1 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_frequencyData) = v5;
  }

  v6 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_frequencyData);
  if (v6)
  {

    sub_237131024();
    ioDataSize = 0x4000;
    v7 = *(v6 + 24);
    v8 = sub_237130F84();
    Property = AudioUnitGetProperty(v7, 0x34u, 0, 0, v8, &ioDataSize);
    if (Property != sub_2371964DC())
    {
      sub_237176A9C(0xD000000000000029, 0x800000023719EA70, Property);
    }
  }
}

void sub_23712EB6C()
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
  v7 = sub_23712F040();
  v8 = sub_23719342C();

  [v6 removeObserver_];
}

void sub_23712EC80(unsigned int a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_23719653C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B020;
  sub_23719690C();
  *(inited + 96) = MEMORY[0x277D84CC0];
  *(inited + 72) = a1;
  sub_237119F04(inited);
  swift_setDeallocating();
  sub_237120D04(inited + 32, &qword_27DE948B0);
  v6 = sub_23719651C();

  [v3 postNotificationName:v4 object:v1 userInfo:v6];

  v7 = sub_23712F040();
  v8 = sub_237193370();

  sub_23713621C(a1);
}

void sub_23712EE14(unsigned int a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_23719653C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B020;
  *&v22[0] = 0x44496D61726170;
  *(&v22[0] + 1) = 0xE700000000000000;
  sub_23719690C();
  *(inited + 96) = MEMORY[0x277D84CC0];
  *(inited + 72) = a1;
  sub_237119F04(inited);
  swift_setDeallocating();
  sub_237120D04(inited + 32, &qword_27DE948B0);
  v6 = sub_23719651C();

  [v3 postNotificationName:v4 object:v1 userInfo:v6];

  v7 = sub_23712F040();
  v8 = sub_237193370();

  v9 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  v10 = *&v8[v9];
  if (*(v10 + 16) && (v11 = sub_2371906E0(a1), (v12 & 1) != 0))
  {
    v13 = *(v10 + 56) + 152 * v11;
    v14 = *(v13 + 16);
    v22[0] = *v13;
    v22[1] = v14;
    v15 = *(v13 + 80);
    v17 = *(v13 + 32);
    v16 = *(v13 + 48);
    v22[4] = *(v13 + 64);
    v22[5] = v15;
    v22[2] = v17;
    v22[3] = v16;
    v18 = *(v13 + 96);
    v19 = *(v13 + 112);
    v20 = *(v13 + 128);
    v23 = *(v13 + 144);
    v22[7] = v19;
    v22[8] = v20;
    v22[6] = v18;
    sub_2371339F0(v22, v21);
    sub_23713445C();

    sub_237133A4C(v22);
  }

  else
  {
  }
}

id sub_23712F040()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView);
  }

  else
  {
    type metadata accessor for CAAUEQViewBase();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_23712F0B8()
{
  v1 = v0;
  v2 = sub_23719639C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___wholeNumberFormatter;
  v7 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___wholeNumberFormatter);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___wholeNumberFormatter);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v9 setGeneratesDecimalNumbers_];
    v10 = [objc_opt_self() currentLocale];
    sub_23719637C();

    v11 = sub_23719635C();
    (*(v3 + 8))(v5, v2);
    [v9 setLocale_];

    v12 = *(v1 + v6);
    *(v1 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v13 = v7;
  return v8;
}

id sub_23712F238()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___decimalFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___decimalFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___decimalFormatter);
  }

  else
  {
    v4 = sub_2371320D8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_23712F298()
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
  if (v1)
  {
    v2 = v0;
    v3 = sub_23719630C();
    if (v3)
    {
      v4 = v3;
      inParameter.mAudioUnit = 0x44496D61726170;
      *&inParameter.mParameterID = 0xE700000000000000;
      sub_23719690C();
      if (!*(v4 + 16))
      {
        goto LABEL_21;
      }

      v5 = sub_237190728(ioDataSize);
      if ((v6 & 1) == 0)
      {
        goto LABEL_21;
      }

      sub_237114D0C(*(v4 + 56) + 32 * v5, v31);
      sub_237114F1C(ioDataSize);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      mAudioUnit_low = LODWORD(inParameter.mAudioUnit);
      inParameter.mAudioUnit = 0x65756C6176;
      *&inParameter.mParameterID = 0xE500000000000000;
      sub_23719690C();
      if (*(v4 + 16) && (v8 = sub_237190728(ioDataSize), (v9 & 1) != 0))
      {
        sub_237114D0C(*(v4 + 56) + 32 * v8, v31);
        sub_237114F1C(ioDataSize);

        if (swift_dynamicCast())
        {
          ioDataSize[0] = 0;
          v10 = sub_23717481C(inParameter.mAudioUnit, *&inParameter.mParameterID);

          if (!v10 || (v11 = *ioDataSize, v11 > sub_237130920(mAudioUnit_low)) || sub_2371307E8(mAudioUnit_low) > v11 || (inParameter.mAudioUnit = v1, inParameter.mScope = 0, inParameter.mElement = 0, inParameter.mParameterID = mAudioUnit_low, v12 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener, swift_beginAccess(), LODWORD(v12) = AUParameterSet(*&v2[v12], v2, &inParameter, v11, 0), v12 != sub_2371964DC()))
          {
LABEL_20:
            v25 = sub_23712F040();
            v26 = sub_237193370();

            v27 = sub_2371305C0(mAudioUnit_low);
            sub_237135E04(mAudioUnit_low, v27);

            return;
          }

          v13 = sub_23712F040();
          v14 = sub_23719342C();

          v15 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_paramCache;
          swift_beginAccess();
          v16 = *&v14[v15];
          if (*(v16 + 16))
          {
            v17 = sub_2371906E0(mAudioUnit_low);
            if (v18)
            {
              sub_237114D0C(*(v16 + 56) + 32 * v17, v31);
              sub_23711BDA4(v31, ioDataSize);
              type metadata accessor for CAAUFilterControl();
              swift_dynamicCast();
              sub_237178FFC(mAudioUnit_low, v11);

              v19 = *&v2[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_frequencyData];
              if (v19)
              {
                ioDataSize[0] = 0x4000;
                v20 = *(v19 + 24);

                v21 = sub_237130F84();
                Property = AudioUnitGetProperty(v20, 0x34u, 0, 0, v21, ioDataSize);
                if (Property != sub_2371964DC())
                {
                  sub_237176A9C(0xD000000000000029, 0x800000023719EA70, Property);
                }
              }

              v23 = *&v2[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView];
              v24 = sub_23719342C();

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

      else
      {
LABEL_21:

        sub_237114F1C(ioDataSize);
      }
    }
  }
}

uint64_t sub_23712F690(uint64_t a1)
{

  return sub_23712F748(a1, kAudioUnitEvent_BeginParameterChangeGesture);
}

uint64_t sub_23712F6EC(uint64_t a1)
{

  return sub_23712F748(a1, kAudioUnitEvent_EndParameterChangeGesture);
}

uint64_t sub_23712F748(uint64_t a1, AudioUnitEventType a2)
{
  v4 = v2;
  v16 = *MEMORY[0x277D85DE8];
  result = sub_23719630C();
  if (result)
  {
    v6 = sub_237133AA0(result);

    if (v6)
    {
      if (*(v6 + 16) && (v7 = sub_2371905D4(0x7344496D61726170, 0xE800000000000000), (v8 & 1) != 0) && (v9 = *(*(v6 + 56) + 8 * v7), , , (v10 = *(v9 + 16)) != 0))
      {
        v11 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU;
        v12 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
        swift_beginAccess();
        v13 = 32;
        do
        {
          if (*&v4[v11])
          {
            v14 = *(v9 + v13);
            v15.mArgument.mParameter.mAudioUnit = *&v4[v11];
            *&v15.mArgument.mProperty.mPropertyID = v14;
            v15.mEventType = a2;
            AUEventListenerNotify(*&v4[v12], v4, &v15);
          }

          v13 += 4;
          --v10;
        }

        while (v10);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_23712F904(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_params) = a1;
  if (a1 != -1)
  {
    v2 = v1;
    v4 = sub_23712F040();
    v5 = sub_237193370();

    v6 = MEMORY[0x277D85000];
    v31 = (*((*MEMORY[0x277D85000] & *v2) + 0x338))(a1);
    v8 = v7;
    v9 = (*((*v6 & *v2) + 0x340))(a1);
    v11 = v10;
    v12 = sub_2371305C0(a1);
    v13 = sub_2371307E8(a1);
    v14 = sub_237130920(a1);
    v30 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView;
    v15 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView);
    v16 = sub_23719342C();

    v17 = *&v16[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
    v18 = *&v17[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase];

    v19 = sub_23712F0B8();
    v20 = (*((*v6 & *v2) + 0x348))(a1);
    (*((*v6 & *v5) + 0x160))(a1, v31, v8, v9, v11, 0, v19, v20, v12, v13, v14, v18, 0.0, v21);

    v22 = sub_23719653C();
    v23 = [objc_opt_self() bundleWithIdentifier_];

    v24 = objc_opt_self();
    v32 = v23;
    v25 = [v24 currentTraitCollection];
    v26 = sub_23719653C();
    v27 = [objc_opt_self() colorNamed:v26 inBundle:v32 compatibleWithTraitCollection:v25];

    if (v27)
    {
      v28 = *(v2 + v30);
      v29 = sub_237193370();

      (*((*MEMORY[0x277D85000] & *v29) + 0x170))(a1, v27);
    }

    sub_237175BF0(a1, 0, 0);
  }
}

void sub_23712FD40(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_params + 4) = a1;
  if (a1 != -1)
  {
    v2 = v1;
    v4 = sub_23712F040();
    v5 = sub_237193370();

    v6 = MEMORY[0x277D85000];
    v31 = (*((*MEMORY[0x277D85000] & *v2) + 0x338))(a1);
    v8 = v7;
    v9 = (*((*v6 & *v2) + 0x340))(a1);
    v11 = v10;
    v12 = sub_2371305C0(a1);
    v13 = sub_2371307E8(a1);
    v14 = sub_237130920(a1);
    v30 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView;
    v15 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView);
    v16 = sub_23719342C();

    v17 = *&v16[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
    v18 = *&v17[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase];

    v19 = sub_23712F238();
    v20 = (*((*v6 & *v2) + 0x348))(a1);
    (*((*v6 & *v5) + 0x160))(a1, v31, v8, v9, v11, 0, v19, v20, v12, v13, v14, v18, 2.0, v21);

    v22 = sub_23719653C();
    v23 = [objc_opt_self() bundleWithIdentifier_];

    v24 = objc_opt_self();
    v32 = v23;
    v25 = [v24 currentTraitCollection];
    v26 = sub_23719653C();
    v27 = [objc_opt_self() colorNamed:v26 inBundle:v32 compatibleWithTraitCollection:v25];

    if (v27)
    {
      v28 = *(v2 + v30);
      v29 = sub_237193370();

      (*((*MEMORY[0x277D85000] & *v29) + 0x170))(a1, v27);
    }

    sub_237175BF0(a1, 0, 0);
  }
}

void sub_237130180(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_params + 8) = a1;
  if (a1 != -1)
  {
    v2 = v1;
    v4 = sub_23712F040();
    v5 = sub_237193370();

    v6 = MEMORY[0x277D85000];
    v31 = (*((*MEMORY[0x277D85000] & *v2) + 0x338))(a1);
    v8 = v7;
    v9 = (*((*v6 & *v2) + 0x340))(a1);
    v11 = v10;
    v12 = sub_2371305C0(a1);
    v13 = sub_2371307E8(a1);
    v14 = sub_237130920(a1);
    v30 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView;
    v15 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView);
    v16 = sub_23719342C();

    v17 = *&v16[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
    v18 = *&v17[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase];

    v19 = sub_23712F238();
    v20 = (*((*v6 & *v2) + 0x348))(a1);
    (*((*v6 & *v5) + 0x160))(a1, v31, v8, v9, v11, 0, v19, v20, v12, v13, v14, v18, 6.0, v21);

    v22 = sub_23719653C();
    v23 = [objc_opt_self() bundleWithIdentifier_];

    v24 = objc_opt_self();
    v32 = v23;
    v25 = [v24 currentTraitCollection];
    v26 = sub_23719653C();
    v27 = [objc_opt_self() colorNamed:v26 inBundle:v32 compatibleWithTraitCollection:v25];

    if (v27)
    {
      v28 = *(v2 + v30);
      v29 = sub_237193370();

      (*((*MEMORY[0x277D85000] & *v29) + 0x170))(a1, v27);
    }

    sub_237175BF0(a1, 0, 0);
  }
}

AudioUnitParameterValue sub_2371305C0(AudioUnitParameterID inID)
{
  v8 = *MEMORY[0x277D85DE8];
  outValue = 0.0;
  v3 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU);
  if (v3)
  {
    Parameter = AudioUnitGetParameter(v3, inID, 0, 0, &outValue);
    if (Parameter != sub_2371964DC())
    {
      sub_23719693C();

      v5 = sub_237196A5C();
      MEMORY[0x2383C5F20](v5);

      sub_237176A9C(0xD000000000000022, 0x800000023719EC20, Parameter);
    }
  }

  return outValue;
}

uint64_t sub_2371306DC(AudioUnitParameterID a1)
{
  v3 = sub_2371305C0(a1);
  if (*(v1 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_params) == a1)
  {
    v4 = sub_23712F0B8();
  }

  else
  {
    v4 = sub_23712F238();
  }

  v5 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v6 = v3;
  v7 = [v5 initWithFloat_];
  v8 = [v4 stringFromNumber_];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_23719657C();

  return v9;
}

float sub_2371307E8(AudioUnitElement inElement)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v9 = 0u;
  memset(outData, 0, sizeof(outData));
  ioDataSize = 104;
  v3 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU);
  if (v3)
  {
    Property = AudioUnitGetProperty(v3, 4u, 0, inElement, outData, &ioDataSize);
    if (Property != sub_2371964DC())
    {
      sub_23719693C();

      v5 = sub_237196A5C();
      MEMORY[0x2383C5F20](v5);

      sub_237176A9C(0xD00000000000002ALL, 0x800000023719EF60, Property);
    }
  }

  return *(&v9 + 1);
}

float sub_237130920(AudioUnitElement inElement)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v9 = 0u;
  memset(outData, 0, sizeof(outData));
  ioDataSize = 104;
  v3 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU);
  if (v3)
  {
    Property = AudioUnitGetProperty(v3, 4u, 0, inElement, outData, &ioDataSize);
    if (Property != sub_2371964DC())
    {
      sub_23719693C();

      v5 = sub_237196A5C();
      MEMORY[0x2383C5F20](v5);

      sub_237176A9C(0xD00000000000002ALL, 0x800000023719EF60, Property);
    }
  }

  return *(&v9 + 2);
}

void sub_237130A58(AudioUnitParameterID a1, AudioUnitParameterValue a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU])
  {
    inParameter.mAudioUnit = *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
    inParameter.mScope = 0;
    inParameter.mElement = 0;
    inParameter.mParameterID = a1;
    v5 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
    swift_beginAccess();
    LODWORD(v5) = AUParameterSet(*&v2[v5], v2, &inParameter, a2, 0);
    if (v5 == sub_2371964DC())
    {
      v6 = sub_23712F040();
      v7 = sub_237193370();

      sub_237135E04(a1, a2);
    }
  }
}

uint64_t sub_237130B58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x70616373646E616CLL;
    }

    else
    {
      v5 = 0x656D6572747865;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7469617274726F70;
    }

    else
    {
      v5 = 0x656E696665646E75;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x70616373646E616CLL;
  v8 = 0xE700000000000000;
  if (a2 == 2)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0x656D6572747865;
  }

  if (a2)
  {
    v3 = 0x7469617274726F70;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_237196A7C();
  }

  return v11 & 1;
}

uint64_t sub_237130CA0()
{
  sub_237196AEC();
  sub_2371965BC();

  return sub_237196B2C();
}

uint64_t sub_237130D64()
{
  sub_2371965BC();
}

uint64_t sub_237130E14()
{
  sub_237196AEC();
  sub_2371965BC();

  return sub_237196B2C();
}

uint64_t sub_237130ED4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237133604();
  *a1 = result;
  return result;
}

void sub_237130F04(uint64_t *a1@<X8>)
{
  v2 = 0x656E696665646E75;
  v3 = 0x70616373646E616CLL;
  v4 = 0xE700000000000000;
  if (*v1 == 2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v3 = 0x656D6572747865;
  }

  v5 = 0xE800000000000000;
  if (*v1)
  {
    v2 = 0x7469617274726F70;
  }

  else
  {
    v5 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t sub_237130F84()
{
  result = *(v0 + 16);
  if (!result)
  {
    result = swift_slowAlloc();
    *(v0 + 16) = result;
  }

  return result;
}

uint64_t sub_237130FB8()
{
  v1 = sub_237130F84();
  MEMORY[0x2383C7000](v1, -1, -1);

  return swift_deallocClassInstance();
}

void sub_237131024()
{
  v1 = *(v0 + 32);
  [*(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer) frame];
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  v6 = ceil(CGRectGetWidth(v26) / 3.0 + 2.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = v6;
  if (v6 >= 1025)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v8 = ceil(CGRectGetWidth(v27) / 1022.0);
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v8 > -9.22337204e18)
      {
        if (v8 < 9.22337204e18)
        {
          v9 = v8;
          v7 = 1024;
          goto LABEL_10;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = 3.0;
LABEL_10:
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MinX = CGRectGetMinX(v28);
  v11 = sub_2371833F8();
  *&v23 = 2019642744;
  *(&v23 + 1) = 0xE400000000000000;
  v12 = [v11 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v12)
  {
    sub_23719682C();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (!*(&v24 + 1))
  {
    sub_237120D04(v25, &qword_27DE94D20);
    return;
  }

  if (swift_dynamicCast())
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (!v7)
      {
        goto LABEL_25;
      }

      v13 = 0;
      v14 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
      v15 = v7;
      do
      {
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        v16 = CGRectGetMinX(v29);
        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = height;
        v17 = v16 + CGRectGetWidth(v30);
        v18 = v22;
        if (v17 >= MinX)
        {
          v19 = *(v1 + v14);
          sub_237183B90(v19, MinX);
          v21 = v20;

          if (v22 >= v21)
          {
            v18 = v21;
          }

          else
          {
            v18 = v22;
          }
        }

        *(sub_237130F84() + v13) = v18;
        MinX = v9 + MinX;
        v13 += 16;
        --v15;
      }

      while (v15);
      if (v7 <= 1023)
      {
LABEL_25:
        *(sub_237130F84() + 16 * v7) = 0xBFF0000000000000;
      }

      return;
    }

LABEL_33:
    __break(1u);
  }
}

uint64_t sub_237131354(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v97 = *MEMORY[0x277D85DE8];
  Width = CGRectGetWidth(*&a1);
  v11 = *(v4 + 32);
  [v11 frame];
  if (Width != CGRectGetWidth(v98) || (v99.origin.x = a1, v99.origin.y = a2, v99.size.width = a3, v99.size.height = a4, Height = CGRectGetHeight(v99), [v11 frame], Height != CGRectGetHeight(v100)))
  {
    sub_237131024();
  }

  ioDataSize[0] = 0x4000;
  v13 = *(v4 + 24);
  v14 = sub_237130F84();
  Property = AudioUnitGetProperty(v13, 0x34u, 0, 0, v14, ioDataSize);
  if (Property != sub_2371964DC())
  {
    sub_237176A9C(0xD000000000000029, 0x800000023719EA70, Property);
  }

  v101.origin.x = a1;
  v101.origin.y = a2;
  v101.size.width = a3;
  v101.size.height = a4;
  v16 = ceil(CGRectGetWidth(v101) / 3.0) + 1.0;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_83;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v17 = v16;
  if (v16 >= 1025)
  {
    v102.origin.x = a1;
    v102.origin.y = a2;
    v102.size.width = a3;
    v102.size.height = a4;
    v18 = ceil(CGRectGetWidth(v102) / 1022.0);
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v18 > -9.22337204e18)
      {
        if (v18 < 9.22337204e18)
        {
          v85 = v18;
          v17 = 1024;
          goto LABEL_15;
        }

LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v85 = 3.0;
LABEL_15:
  v103.origin.x = a1;
  v103.origin.y = a2;
  v103.size.width = a3;
  v103.size.height = a4;
  MinX = CGRectGetMinX(v103);
  Mutable = CGPathCreateMutable();
  v104.origin.x = a1;
  v104.origin.y = a2;
  v104.size.width = a3;
  v104.size.height = a4;
  CGRectGetHeight(v104);
  v105.origin.x = a1;
  v105.origin.y = a2;
  v105.size.width = a3;
  v105.size.height = a4;
  CGRectGetMinY(v105);
  *ioDataSize = 0x3FF0000000000000;
  v88 = 0;
  v89 = 0;
  v90 = 0x3FF0000000000000;
  v91 = 0;
  v92 = 0;
  sub_23719672C();
  v21 = sub_2371833F8();
  *&v93 = 2019642744;
  *(&v93 + 1) = 0xE400000000000000;
  v22 = [v21 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_23719682C();
    swift_unknownObjectRelease();
  }

  else
  {
    v93 = 0u;
    v94 = 0u;
  }

  v95 = v93;
  v96 = v94;
  if (!*(&v94 + 1))
  {
    sub_237120D04(&v95, &qword_27DE94D20);
    goto LABEL_69;
  }

  if (swift_dynamicCast())
  {
    v23 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
    v24 = *&v11[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
    sub_237183E14(v24, v86);
    v83 = v25;

    *&v95 = 0x646E6574784579;
    *(&v95 + 1) = 0xE700000000000000;
    v26 = [v21 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v26)
    {
      sub_23719682C();
      swift_unknownObjectRelease();
    }

    else
    {
      v93 = 0u;
      v94 = 0u;
    }

    v95 = v93;
    v96 = v94;
    if (*(&v94 + 1))
    {
      if (swift_dynamicCast())
      {
        v27 = LOBYTE(v86);
        goto LABEL_29;
      }
    }

    else
    {
      sub_237120D04(&v95, &qword_27DE94D20);
    }

    v27 = 0;
LABEL_29:
    if ((v17 & 0x8000000000000000) == 0)
    {
      if (!v17)
      {
        goto LABEL_65;
      }

      v77 = v27;
      v76 = v23;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v79 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
      v31 = 0.0;
      while (1)
      {
        v32 = *(v5 + 16);
        v33 = *(v32 + v28 + 8);
        if (v30 >= 2 && v33 == -200.0)
        {
          v44 = v32 + v28;
          v45 = *(v44 - 8);
          if (v77)
          {
            v114.origin.x = a1;
            v114.origin.y = a2;
            v114.size.width = a3;
            v114.size.height = a4;
            CGRectGetWidth(v114);
            v47 = *&v11[v79];
            v46 = v45;
            sub_237183E14(v47, v46);

            v115.origin.x = a1;
            v115.origin.y = a2;
            v115.size.width = a3;
            v115.size.height = a4;
            CGRectGetMinY(v115);
            sub_23719674C();
            v116.origin.x = a1;
            v116.origin.y = a2;
            v116.size.width = a3;
            v116.size.height = a4;
            CGRectGetWidth(v116);
            v117.origin.x = a1;
            v117.origin.y = a2;
            v117.size.width = a3;
            v117.size.height = a4;
            CGRectGetHeight(v117);
            goto LABEL_68;
          }

          v51 = *(v44 - 24);
          v78 = *(v44 - 16);
          v81 = *(v44 - 8);
          v52 = *(v44 - 32);
          v53 = *&v11[v76];
          sub_237183E14(v53, v52);
          v55 = v54;

          v126.origin.x = a1;
          v126.origin.y = a2;
          v126.size.width = a3;
          v126.size.height = a4;
          v84 = v55 - CGRectGetMinX(v126);
          v56 = *&v11[v79];
          *&v55 = v51;
          sub_237183E14(v56, *&v55);
          v75 = v57;

          v127.origin.x = a1;
          v127.origin.y = a2;
          v127.size.width = a3;
          v127.size.height = a4;
          MinY = CGRectGetMinY(v127);
          *&v55 = v78;
          v58 = *&v11[v76];
          sub_237183E14(v58, *&v55);
          v60 = v59;

          v128.origin.x = a1;
          v128.origin.y = a2;
          v128.size.width = a3;
          v128.size.height = a4;
          v61 = v60 - CGRectGetMinX(v128);
          *&v60 = v81;
          v62 = *&v11[v79];
          sub_237183E14(v62, *&v60);
          v82 = v63;

          v129.origin.x = a1;
          v129.origin.y = a2;
          v129.size.width = a3;
          v129.size.height = a4;
          v80 = CGRectGetMinY(v129);
          v130.origin.x = a1;
          v130.origin.y = a2;
          v130.size.width = a3;
          v130.size.height = a4;
          v64 = CGRectGetHeight(v130);
          v131.origin.x = a1;
          v131.origin.y = a2;
          v131.size.width = a3;
          v131.size.height = a4;
          v65 = CGRectGetHeight(v131);
          if (v61 == v84)
          {
            v132.origin.x = a1;
            v132.origin.y = a2;
            v132.size.width = a3;
            v132.size.height = a4;
            CGRectGetHeight(v132);
            v133.origin.x = a1;
            v133.origin.y = a2;
            v133.size.width = a3;
            v133.size.height = a4;
            CGRectGetMinY(v133);
            v134.origin.x = a1;
            v134.origin.y = a2;
            v134.size.width = a3;
            v134.size.height = a4;
            CGRectGetMinX(v134);
            goto LABEL_68;
          }

          v66 = v64 - (v75 - MinY);
          v67 = (v65 - (v82 - v80) - v66) / (v61 - v84);
          v135.origin.x = a1;
          v135.origin.y = a2;
          v135.size.width = a3;
          v135.size.height = a4;
          v68 = CGRectGetWidth(v135);
          if (v67 == 0.0)
          {
            v136.origin.x = a1;
            v136.origin.y = a2;
            v136.size.width = a3;
            v136.size.height = a4;
            CGRectGetMinX(v136);
            v137.origin.x = a1;
            v137.origin.y = a2;
            v137.size.width = a3;
            v137.size.height = a4;
            CGRectGetWidth(v137);
            sub_23719674C();
            v138.origin.x = a1;
            v138.origin.y = a2;
            v138.size.width = a3;
            v138.size.height = a4;
            CGRectGetMinX(v138);
            v139.origin.x = a1;
            v139.origin.y = a2;
            v139.size.width = a3;
            v139.size.height = a4;
            CGRectGetWidth(v139);
            v140.origin.x = a1;
            v140.origin.y = a2;
            v140.size.width = a3;
            v140.size.height = a4;
            CGRectGetMinY(v140);
            v141.origin.x = a1;
            v141.origin.y = a2;
            v141.size.width = a3;
            v141.size.height = a4;
            CGRectGetHeight(v141);
LABEL_81:
            sub_23719674C();
            v146.origin.x = a1;
            v146.origin.y = a2;
            v146.size.width = a3;
            v146.size.height = a4;
            CGRectGetWidth(v146);
            v147.origin.x = a1;
            v147.origin.y = a2;
            v147.size.width = a3;
            v147.size.height = a4;
            CGRectGetHeight(v147);
            goto LABEL_68;
          }

          v69 = v66 - v84 * v67 + v67 * v68;
          if (v67 < 0.0)
          {
            if (v69 <= 0.0)
            {
              v142.origin.x = a1;
              v142.origin.y = a2;
              v142.size.width = a3;
              v142.size.height = a4;
              CGRectGetHeight(v142);
              goto LABEL_81;
            }
          }

          else
          {
            v70 = a1;
            v71 = a2;
            v72 = a3;
            v73 = a4;
            if (v69 > CGRectGetHeight(*&v70))
            {
              sub_23719674C();
              v143.origin.x = a1;
              v143.origin.y = a2;
              v143.size.width = a3;
              v143.size.height = a4;
              CGRectGetWidth(v143);
              goto LABEL_81;
            }
          }

          v144.origin.x = a1;
          v144.origin.y = a2;
          v144.size.width = a3;
          v144.size.height = a4;
          CGRectGetWidth(v144);
          v145.origin.x = a1;
          v145.origin.y = a2;
          v145.size.width = a3;
          v145.size.height = a4;
          CGRectGetHeight(v145);
          goto LABEL_81;
        }

        *&v93 = 1852394873;
        *(&v93 + 1) = 0xE400000000000000;
        v34 = [v21 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v34)
        {
          sub_23719682C();
          swift_unknownObjectRelease();
        }

        else
        {
          v93 = 0u;
          v94 = 0u;
        }

        v95 = v93;
        v96 = v94;
        if (!*(&v94 + 1))
        {
          break;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        *&v93 = 2019642745;
        *(&v93 + 1) = 0xE400000000000000;
        v35 = [v21 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v35)
        {
          sub_23719682C();
          swift_unknownObjectRelease();
        }

        else
        {
          v93 = 0u;
          v94 = 0u;
        }

        v95 = v93;
        v96 = v94;
        if (!*(&v94 + 1))
        {
          break;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        v36 = v33;
        if (v86 <= v36)
        {
          if (v86 >= v36)
          {
            v41 = *&v11[v79];
            sub_237183E14(v41, v36);
            v43 = v42;

            v113.origin.x = a1;
            v113.origin.y = a2;
            v113.size.width = a3;
            v113.size.height = a4;
            v38 = v43 - CGRectGetMinY(v113);
          }

          else
          {
            v112.origin.x = a1;
            v112.origin.y = a2;
            v112.size.width = a3;
            v112.size.height = a4;
            v38 = CGRectGetMinY(v112);
          }
        }

        else
        {
          v106.origin.x = a1;
          v106.origin.y = a2;
          v106.size.width = a3;
          v106.size.height = a4;
          v37 = CGRectGetHeight(v106);
          v107.origin.x = a1;
          v107.origin.y = a2;
          v107.size.width = a3;
          v107.size.height = a4;
          v38 = v37 + CGRectGetMinY(v107);
        }

LABEL_48:
        v39 = vabdd_f64(v31, v38);
        if (v39 >= 0.2)
        {
          if (v29)
          {
            v108.origin.x = a1;
            v108.origin.y = a2;
            v108.size.width = a3;
            v108.size.height = a4;
            CGRectGetMinX(v108);
            sub_23719674C();
          }

          v109.origin.x = a1;
          v109.origin.y = a2;
          v109.size.width = a3;
          v109.size.height = a4;
          CGRectGetMinX(v109);
          sub_23719674C();
        }

        MinX = v85 + MinX;
        v110.origin.x = a1;
        v110.origin.y = a2;
        v110.size.width = a3;
        v110.size.height = a4;
        v40 = CGRectGetMinX(v110);
        v111.origin.x = a1;
        v111.origin.y = a2;
        v111.size.width = a3;
        v111.size.height = a4;
        if (v40 + CGRectGetWidth(v111) < MinX || v83 <= MinX)
        {
          v118.origin.x = a1;
          v118.origin.y = a2;
          v118.size.width = a3;
          v118.size.height = a4;
          v48 = CGRectGetMinX(v118);
          v119.origin.x = a1;
          v119.origin.y = a2;
          v119.size.width = a3;
          v119.size.height = a4;
          MinX = v48 + CGRectGetWidth(v119);
LABEL_63:
          if (v39 < 0.2)
          {
            v120.origin.x = a1;
            v120.origin.y = a2;
            v120.size.width = a3;
            v120.size.height = a4;
            CGRectGetMinX(v120);
            sub_23719674C();
          }

LABEL_65:
          if (v83 <= MinX)
          {
            v121.origin.x = a1;
            v121.origin.y = a2;
            v121.size.width = a3;
            v121.size.height = a4;
            CGRectGetMinX(v121);
            v122.origin.x = a1;
            v122.origin.y = a2;
            v122.size.width = a3;
            v122.size.height = a4;
            CGRectGetWidth(v122);
            sub_23719674C();
          }

          v123.origin.x = a1;
          v123.origin.y = a2;
          v123.size.width = a3;
          v123.size.height = a4;
          CGRectGetMinX(v123);
          v124.origin.x = a1;
          v124.origin.y = a2;
          v124.size.width = a3;
          v124.size.height = a4;
          CGRectGetHeight(v124);
          v125.origin.x = a1;
          v125.origin.y = a2;
          v125.size.width = a3;
          v125.size.height = a4;
          CGRectGetMinY(v125);
LABEL_68:
          sub_23719674C();
          CGPathCloseSubpath(Mutable);
          goto LABEL_69;
        }

        ++v30;
        v28 += 16;
        v31 = v38;
        v29 = v39 < 0.2;
        if (v17 == v30)
        {
          goto LABEL_63;
        }
      }

      sub_237120D04(&v95, &qword_27DE94D20);
LABEL_47:
      v38 = 0.0;
      goto LABEL_48;
    }

LABEL_88:
    __break(1u);
  }

LABEL_69:
  v49 = MEMORY[0x2383C6610](Mutable);

  return v49;
}

id sub_2371320D8()
{
  v0 = sub_23719639C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v4 setGeneratesDecimalNumbers_];
  [v4 setMaximumFractionDigits_];
  [v4 setMinimumFractionDigits_];
  v5 = [objc_opt_self() currentLocale];
  sub_23719637C();

  v6 = sub_23719635C();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  return v4;
}

void sub_237132240()
{
  v39.receiver = v0;
  v39.super_class = type metadata accessor for AUEQViewControllerBase();
  objc_msgSendSuper2(&v39, sel_viewDidLoad);
  v1 = sub_23712F040();
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame_];
  v12 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView;
  v13 = [*(v0 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView) setTranslatesAutoresizingMaskIntoConstraints_];
  (*((*MEMORY[0x277D85000] & *v0) + 0x1B8))(v13);
  v14 = [v0 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  [v14 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23719AB20;
  v17 = [*(v0 + v12) leadingAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v16 + 32) = v21;
  v22 = [*(v0 + v12) topAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v16 + 40) = v26;
  v27 = [*(v0 + v12) trailingAnchor];
  v28 = [v0 view];
  if (!v28)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v16 + 48) = v31;
  v32 = [*(v0 + v12) bottomAnchor];
  v33 = [v0 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 bottomAnchor];

    v37 = [v32 constraintEqualToAnchor_];
    *(v16 + 56) = v37;
    sub_23710EEB4();
    v38 = sub_23719661C();

    [v35 activateConstraints_];

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_237132664()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;

  v8 = &v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_previousSize];
  if (v5 == *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_previousSize] && v7 == *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_previousSize + 8])
  {
    return;
  }

  v10 = [v1 view];
  if (!v10)
  {
    goto LABEL_58;
  }

  v11 = v10;
  [v10 frame];
  v13 = v12;
  v15 = v14;

  *v8 = v13;
  *(v8 + 1) = v15;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v17 = v16;
  [v16 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v83.origin.x = v19;
  v83.origin.y = v21;
  v83.size.width = v23;
  v83.size.height = v25;
  Width = CGRectGetWidth(v83);
  v27 = [v1 view];
  if (!v27)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v28 = v27;
  v29 = 0xE900000000000065;
  [v27 frame];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v84.origin.x = v31;
  v84.origin.y = v33;
  v84.size.width = v35;
  v84.size.height = v37;
  if (CGRectGetHeight(v84) < Width)
  {
    v38 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_displayMode;
    v39 = v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_displayMode];
    v40 = 0xE900000000000064;
    if (v39 <= 1 && v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_displayMode])
    {
    }

    else
    {
      v41 = sub_237196A7C();

      if ((v41 & 1) == 0)
      {
        v1[v38] = 1;
        v70 = sub_23712F040();
        if (v1[v38] > 1u)
        {
          if (v1[v38] == 2)
          {
            v71 = 0x70616373646E616CLL;
            v40 = 0xE900000000000065;
          }

          else
          {
            v40 = 0xE700000000000000;
            v71 = 0x656D6572747865;
          }
        }

        else if (v1[v38])
        {
          v40 = 0xE800000000000000;
          v71 = 0x7469617274726F70;
        }

        else
        {
          v71 = 0x656E696665646E75;
        }

        sub_2371937D0(v71, v40);

        v73 = *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView];
        v81 = sub_237193370();

        v74 = [v1 view];
        if (v74)
        {
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_48;
      }
    }
  }

  v42 = [v1 view];
  if (!v42)
  {
    goto LABEL_61;
  }

  v43 = v42;
  [v42 frame];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v85.origin.x = v45;
  v85.origin.y = v47;
  v85.size.width = v49;
  v85.size.height = v51;
  Height = CGRectGetHeight(v85);
  v53 = [v1 view];
  if (!v53)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v54 = v53;
  [v53 frame];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v86.origin.x = v56;
  v86.origin.y = v58;
  v86.size.width = v60;
  v86.size.height = v62;
  v63 = CGRectGetWidth(v86);
  v64 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_displayMode;
  v65 = v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_displayMode];
  v66 = 0x656E696665646E75;
  if (Height < v63 / 3.0)
  {
    v67 = 0xE900000000000064;
    if (v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_displayMode] <= 1u || v65 == 2)
    {
      v68 = sub_237196A7C();

      if (v68)
      {
        return;
      }

      v1[v64] = 3;
      v69 = sub_23712F040();
      if (v1[v64] > 1u)
      {
        if (v1[v64] == 2)
        {
          v66 = 0x70616373646E616CLL;
          v67 = 0xE900000000000065;
        }

        else
        {
          v67 = 0xE700000000000000;
          v66 = 0x656D6572747865;
        }
      }

      else if (v1[v64])
      {
        v67 = 0xE800000000000000;
        v66 = 0x7469617274726F70;
      }

      sub_2371937D0(v66, v67);

      v73 = *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView];
      v81 = sub_237193370();

      v74 = [v1 view];
      if (v74)
      {
        goto LABEL_54;
      }

      __break(1u);
LABEL_52:
      v29 = 0xE700000000000000;
      v66 = 0x656D6572747865;
LABEL_53:
      sub_2371937D0(v66, v29);

      v75 = *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView];
      v81 = sub_237193370();

      v74 = [v1 view];
      if (v74)
      {
LABEL_54:
        v76 = v74;
        [v74 frame];
        v78 = v77;
        v80 = v79;

        (*((*MEMORY[0x277D85000] & *v81) + 0x1E0))(v78, v80);

        return;
      }

LABEL_63:
      __break(1u);
      return;
    }

    goto LABEL_30;
  }

  if (v65 != 2)
  {
    v72 = sub_237196A7C();

    if (v72)
    {
      return;
    }

    v1[v64] = 2;
    v73 = sub_23712F040();
    if (v1[v64] > 1u)
    {
      if (v1[v64] == 2)
      {
        v66 = 0x70616373646E616CLL;
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    if (!v1[v64])
    {
      v29 = 0xE900000000000064;
      goto LABEL_53;
    }

LABEL_48:
    v29 = 0xE800000000000000;
    v66 = 0x7469617274726F70;
    goto LABEL_53;
  }

LABEL_30:
}

uint64_t sub_237132E84(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
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

id sub_237132F98()
{
  *&v0[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView] = 0;
  v1 = &v0[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_previousSize];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_displayMode] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_frequencyData] = 0;
  v2 = &v0[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_params];
  *v2 = -1;
  *(v2 + 2) = -1;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___wholeNumberFormatter] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___decimalFormatter] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AUEQViewControllerBase();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_237133058(void *a1)
{
  *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView] = 0;
  v3 = &v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_previousSize];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_displayMode] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_frequencyData] = 0;
  v4 = &v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_params];
  *v4 = -1;
  *(v4 + 2) = -1;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___wholeNumberFormatter] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___decimalFormatter] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AUEQViewControllerBase();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_237133148()
{

  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___decimalFormatter);
}

id sub_2371331A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUEQViewControllerBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for parameterWidthType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for parameterWidthType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2371333C0()
{
  result = qword_27DE94D88;
  if (!qword_27DE94D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE94D88);
  }

  return result;
}

uint64_t sub_237133470(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (!*(*v4 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_frequencyData))
  {
    return 0;
  }

  v9 = sub_237131354(a1, a2, a3, a4);

  return v9;
}

uint64_t sub_237133604()
{
  v0 = sub_237196A4C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_237133650()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  v4 = sub_23719653C();
  [v3 addObserver:v1 selector:sel_auParameterValueChangedWithNotification_ name:v4 object:0];

  v5 = [v2 defaultCenter];
  v6 = sub_23719653C();
  v7 = sub_23712F040();
  v8 = sub_23719342C();

  [v5 &selRef_getHostCallbackInfo];
  v9 = [v2 defaultCenter];
  v10 = sub_23719653C();
  v11 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView;
  v12 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView);
  v13 = sub_23719342C();

  [v9 &selRef_getHostCallbackInfo];
  v14 = [v2 defaultCenter];
  v15 = *(v1 + v11);
  v16 = sub_237193370();

  v17 = sub_23719653C();
  v18 = *(v1 + v11);
  v19 = sub_23719342C();

  [v14 addObserver:v16 selector:sel_beginTouchWithNotification_ name:v17 object:v19];
  v20 = [v2 defaultCenter];
  v21 = *(v1 + v11);
  v22 = sub_237193370();

  v23 = sub_23719653C();
  v24 = *(v1 + v11);
  v25 = sub_23719342C();

  [v20 addObserver:v22 selector:sel_endTouchWithNotification_ name:v23 object:v25];
  v26 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
  result = swift_beginAccess();
  if (*(v1 + v26))
  {
    v28 = v1 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_params;
    v29 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase_params);
    if (v29 != -1)
    {
      sub_237175BF0(v29, 0, 0);
    }

    v30 = *(v28 + 4);
    if (v30 != -1)
    {
      sub_237175BF0(v30, 0, 0);
    }

    result = *(v28 + 8);
    if (result != -1)
    {
      return sub_237175BF0(result, 0, 0);
    }
  }

  return result;
}

unint64_t sub_237133AA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94E58);
    v2 = sub_237196A2C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_23713D334(*(a1 + 48) + 40 * v11, v24);
        sub_237114D0C(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_23713D334(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_237120D04(v21, &qword_27DE94E60);

          goto LABEL_23;
        }

        sub_237114D0C(v22 + 8, v20);
        sub_237120D04(v21, &qword_27DE94E60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94E68);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_2371905D4(v18, v19);
        v12 = result;
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;

          *(v2[7] + 8 * v12) = v18;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_237133D80(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_appleLogo;
  v10 = sub_23719653C();
  v11 = [objc_opt_self() systemImageNamed_];

  v12 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v4[v9] = v12;
  v13 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v14 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  v15 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_border;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v4[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_viewSetup] = 0;
  v16 = &v4[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName];
  *v17 = 0;
  v17[1] = 0;
  v4[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_compressedHorizontalLayout] = 0;
  v18 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_viewConstraints] = MEMORY[0x277D84F90];
  v19 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  *&v4[v19] = sub_23711A24C(v18);
  v25.receiver = v4;
  v25.super_class = type metadata accessor for CAAUEQHeaderView();
  v20 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 systemBackgroundColor];
  [v22 setBackgroundColor_];

  return v22;
}

void sub_237134124()
{
  v49.receiver = v0;
  v49.super_class = type metadata accessor for CAAUEQHeaderView();
  objc_msgSendSuper2(&v49, sel_tintColorDidChange);
  v1 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = &selRef_effectiveContentSize;
  v10 = 0x278A25000uLL;
  v37 = v2;
  if (v6)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v12 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v13 = *(v2 + 56) + 152 * (v12 | (v8 << 6));
        v14 = *(v13 + 16);
        v39 = *v13;
        v40 = v14;
        v15 = *(v13 + 80);
        v17 = *(v13 + 32);
        v16 = *(v13 + 48);
        v43 = *(v13 + 64);
        v44 = v15;
        v41 = v17;
        v42 = v16;
        v18 = *(v13 + 96);
        v19 = *(v13 + 112);
        v20 = *(v13 + 128);
        v48 = *(v13 + 144);
        v46 = v19;
        v47 = v20;
        v45 = v18;
        if ((BYTE9(v19) & 1) == 0 && BYTE8(v46) != 1)
        {
          break;
        }

        v21 = *(&v40 + 1);
        v22 = v46;
        sub_2371339F0(&v39, v38);
        [v21 v9[483]];
        if (v22)
        {
          v23 = [v22 colorWithAlphaComponent_];
          [*(&v39 + 1) v9[483]];

          v10 = 0x278A25000;
          v22 = [v22 colorWithAlphaComponent_];
        }

        else
        {
          [*(&v39 + 1) v9[483]];
        }

        [v40 v9[483]];
        sub_237133A4C(&v39);

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v24 = *(&v40 + 1);
      v25 = v39;
      sub_2371339F0(&v39, v38);
      v26 = v10;
      v27 = [v25 *(v10 + 3368)];
      [v24 v9[483]];

      v28 = [v25 *(v26 + 3368)];
      if (!v28)
      {
        break;
      }

      v29 = v28;
      v30 = v9;
      v31 = *(&v39 + 1);
      v32 = [v28 colorWithAlphaComponent_];

      [v31 v30 + 3192];
      v33 = [v25 *(v26 + 3368)];
      if (!v33)
      {
        goto LABEL_21;
      }

      v34 = v33;
      v35 = v40;
      v36 = [v33 colorWithAlphaComponent_];

      [v35 v30 + 3192];
      sub_237133A4C(&v39);

      v9 = v30;
      v2 = v37;
      v10 = 0x278A25000;
      if (!v6)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v11);
      ++v8;
      if (v6)
      {
        v8 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_23713445C()
{
  if (*(v0 + 121) & 1) != 0 || (*(v0 + 120))
  {
    v1 = *(v0 + 112);
    [*(v0 + 24) setTextColor_];
    if (v1)
    {
      v2 = [v1 colorWithAlphaComponent_];
      [*(v0 + 8) setTextColor_];

      v3 = [v1 colorWithAlphaComponent_];
    }

    else
    {
      [*(v0 + 8) setTextColor_];
      v3 = 0;
    }

    v14 = v3;
    [*(v0 + 16) setTextColor_];
    goto LABEL_10;
  }

  v4 = *(v0 + 24);
  v5 = *v0;
  v6 = [*v0 tintColor];
  [v4 setTextColor_];

  v7 = [v5 tintColor];
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = *(v0 + 8);
  v10 = [v7 colorWithAlphaComponent_];

  [v9 setTextColor_];
  v11 = [v5 tintColor];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = *(v0 + 16);
  v14 = [v11 colorWithAlphaComponent_];

  [v13 setTextColor_];
LABEL_10:
}

void sub_237134694(void *a1)
{
  v3 = sub_23719653C();
  v4 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  sub_23719690C();
  v6 = [a1 tag];
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v6;
  sub_23719690C();
  v7 = [a1 text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_23719657C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94E88);
  *(inited + 144) = v9;
  *(inited + 152) = v11;
  sub_237119F04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
  swift_arrayDestroy();
  v12 = sub_23719651C();

  [v4 postNotificationName:v3 object:v1 userInfo:v12];
}

id sub_237134BF0(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, float a9, float a10, float a11, float a12, double a13, uint64_t a14)
{
  objc_opt_self();
  v22 = swift_dynamicCastObjCClassUnconditional();
  v23 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v24 = a7;
  v135 = [v23 initWithFrame_];
  [v135 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v26 = objc_opt_self();
  v27 = v25;
  v143 = v26;
  v28 = [v26 systemFontOfSize_];
  [v27 setFont_];

  [v27 setTextAlignment_];
  [v27 setAdjustsFontSizeToFitWidth_];
  [v27 setAllowsDefaultTighteningForTruncation_];
  [v27 setMinimumScaleFactor_];
  v29 = v27;
  [v29 setBaselineAdjustment_];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  v146 = a2;
  v140 = a3;
  v30 = sub_23719653C();
  [v29 setText_];

  LODWORD(v31) = 1112014848;
  [v29 setContentHuggingPriority:0 forAxis:v31];
  LODWORD(v32) = 1144750080;
  [v29 setContentCompressionResistancePriority:0 forAxis:v32];
  v33 = type metadata accessor for CAAUEQHeaderView.AUAccessibleTextField();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = a10;
  *&v34[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = a11;
  *&v34[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = a12;
  v181.receiver = v34;
  v181.super_class = v33;
  v35 = objc_msgSendSuper2(&v181, sel_initWithFrame_, 0.0, 0.0, 50.0, 22.0);
  v36 = *MEMORY[0x277D765B0];
  v37 = *MEMORY[0x277D76538];
  if (!*MEMORY[0x277D765B0])
  {
    if (!v37)
    {
      v36 = 0;
      goto LABEL_7;
    }

LABEL_5:
    v36 |= v37;
    goto LABEL_7;
  }

  if ((v37 & ~v36) != 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  v38 = v35;
  [v38 setAccessibilityTraits_];
  [v38 setSecureTextEntry_];
  v39 = v38;
  v40 = [v143 systemFontOfSize_];
  [v39 setFont_];

  v41 = v39;
  [v41 setTextAlignment_];
  v42 = [objc_opt_self() systemBackgroundColor];
  [v41 setBackgroundColor_];

  [v41 setClearButtonMode_];
  [v41 setEnablesReturnKeyAutomatically_];
  [v41 setAdjustsFontSizeToFitWidth_];
  [v41 setMinimumFontSize_];
  *&v41[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = a10;
  *&v41[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = a11;
  *&v41[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = a12;
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  [v41 setReturnKeyType_];
  [v41 setContentVerticalAlignment_];
  [v41 setEnabled_];

  v43 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v44 = a9;
  v45 = [v43 initWithFloat_];
  v137 = v22;
  v46 = [v22 stringFromNumber_];

  [v41 setText_];
  [v41 setTag_];

  v47 = sub_23719653C();
  v48 = [objc_opt_self() bundleWithIdentifier_];

  if (v48)
  {
    v50 = v48;
    sub_23719634C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_23719B040;
    result = [v41 text];
    if (!result)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v53 = result;
    v54 = sub_23719657C();
    v56 = v55;

    v57 = MEMORY[0x277D837D0];
    *(v51 + 56) = MEMORY[0x277D837D0];
    v58 = sub_237115040();
    *(v51 + 32) = v54;
    *(v51 + 40) = v56;
    *(v51 + 96) = v57;
    *(v51 + 104) = v58;
    *(v51 + 64) = v58;
    *(v51 + 72) = a8;
    *(v51 + 80) = a14;

    sub_23719659C();

    v59 = sub_23719653C();

    [v41 setAccessibilityValue_];
  }

  LODWORD(v49) = 1144750080;
  [v41 setContentCompressionResistancePriority:0 forAxis:v49];
  LODWORD(v60) = 1144750080;
  [v41 setContentHuggingPriority:0 forAxis:v60];
  v61 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v62 = [v143 systemFontOfSize_];
  [v61 setFont_];

  [v61 setTextAlignment_];
  [v61 setAdjustsFontSizeToFitWidth_];
  [v61 setAllowsDefaultTighteningForTruncation_];
  [v61 setAdjustsFontSizeToFitWidth_];
  [v61 setMinimumScaleFactor_];
  v63 = v61;
  [v63 setBaselineAdjustment_];
  v64 = v63;
  [v63 setTranslatesAutoresizingMaskIntoConstraints_];
  v65 = sub_23719653C();
  [v64 setText_];

  LODWORD(v66) = 1148846080;
  [v64 setContentHuggingPriority:0 forAxis:v66];
  LODWORD(v67) = 1132068864;
  [v64 setContentCompressionResistancePriority:0 forAxis:v67];
  [v64 setAccessibilityElementsHidden_];

  v144 = v64;
  [v135 addSubview_];

  [v135 addSubview_];
  [v135 addSubview_];

  v217 = v135;
  v218 = v29;
  v219 = v64;
  v220 = v41;
  v221 = a1;
  v222 = a9;
  v223 = a10;
  v224 = a11;
  v225 = v146;
  v226 = v140;
  v227 = a4;
  v228 = a5;
  v229 = a6;
  v230 = v137;
  v231 = 0;
  v232 = a13;
  v233 = 0;
  v234 = 0;
  v236 = v183;
  v235 = v182;
  v239 = 0;
  v237 = 0;
  v238 = 0;
  v68 = a6;

  sub_2371377FC();
  v194 = v135;
  v195 = v29;
  v196 = v64;
  v197 = v41;
  v198 = a1;
  v199 = a9;
  v200 = a10;
  v201 = a11;
  v202 = v146;
  v203 = v140;
  v204 = a4;
  v205 = a5;
  v206 = a6;
  v207 = v137;
  v208 = 0;
  v209 = a13;
  v210 = 0;
  v211 = 0;
  v213 = v183;
  v212 = v182;
  v216 = 0;
  v214 = 0;
  v215 = 0;
  v240[0] = 0;
  v69 = v135;
  sub_237137C10();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = [v69 widthAnchor];

  v77 = [v76 constraintEqualToConstant_];
  sub_237120D04(v240, &qword_27DE94E80);
  [v77 setActive_];
  v170 = MEMORY[0x277D84F90];
  *&v171 = v69;
  v136 = v69;
  *(&v171 + 1) = v29;
  *&v172 = v144;
  *(&v172 + 1) = v41;
  *&v173 = __PAIR64__(LODWORD(a9), a1);
  *(&v173 + 1) = __PAIR64__(LODWORD(a11), LODWORD(a10));
  *&v174 = v146;
  *(&v174 + 1) = v140;
  *&v175 = a4;
  *(&v175 + 1) = a5;
  *&v176 = a6;
  *(&v176 + 1) = v137;
  v132 = v77;
  *&v177 = v77;
  *(&v177 + 1) = a13;
  *&v178 = 0;
  WORD4(v178) = 0;
  HIWORD(v178) = v183;
  *(&v178 + 10) = v182;
  *&v179 = v73;
  *(&v179 + 1) = v71;
  v180 = v75;
  v78 = objc_allocWithZone(MEMORY[0x277D750A0]);
  v190 = v177;
  v191 = v178;
  v192 = v179;
  v193 = v75;
  v186 = v173;
  v187 = v174;
  v188 = v175;
  v189 = v176;
  v184 = v171;
  v185 = v172;
  sub_2371339F0(&v171, v150);
  sub_2371339F0(&v171, v150);
  v79 = v29;
  v80 = v41;
  v81 = v144;
  v82 = [v78 initWithAccessibilityContainer_];
  swift_unknownObjectRelease();
  sub_237133A4C(&v171);
  *&v184 = 0;
  *(&v184 + 1) = 0xE000000000000000;
  result = [v79 text];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v83 = result;
  v84 = sub_23719657C();
  v86 = v85;

  MEMORY[0x2383C5F20](v84, v86);

  MEMORY[0x2383C5F20](8236, 0xE200000000000000);
  result = [v80 text];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v87 = result;
  v128 = v73;
  v129 = v75;
  v130 = v71;
  v131 = a9;
  v134 = a10;
  v139 = a11;
  v145 = a13;
  v88 = sub_23719657C();
  v90 = v89;

  MEMORY[0x2383C5F20](v88, v90);

  MEMORY[0x2383C5F20](8236, 0xE200000000000000);
  result = [v81 text];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v91 = result;
  v92 = sub_23719657C();
  v94 = v93;

  MEMORY[0x2383C5F20](v92, v94);

  v95 = sub_23719653C();

  [v82 setAccessibilityLabel_];

  [v79 frame];
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;

  [v80 frame];
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v111 = v110;

  v241.origin.x = v97;
  v241.origin.y = v99;
  v241.size.width = v101;
  v241.size.height = v103;
  v245.origin.x = v105;
  v245.origin.y = v107;
  v245.size.width = v109;
  v245.size.height = v111;
  v242 = CGRectUnion(v241, v245);
  x = v242.origin.x;
  y = v242.origin.y;
  width = v242.size.width;
  height = v242.size.height;
  [v81 frame];
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v123 = v122;

  v243.origin.x = x;
  v243.origin.y = y;
  v243.size.width = width;
  v243.size.height = height;
  v246.origin.x = v117;
  v246.origin.y = v119;
  v246.size.width = v121;
  v246.size.height = v123;
  v244 = CGRectUnion(v243, v246);
  [v82 setAccessibilityFrameInContainerSpace_];
  v124 = v82;
  MEMORY[0x2383C5F60]();
  if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();

  *&v184 = v136;
  *(&v184 + 1) = v79;
  *&v185 = v81;
  *(&v185 + 1) = v80;
  *&v186 = __PAIR64__(LODWORD(v131), a1);
  *(&v186 + 1) = __PAIR64__(LODWORD(v139), LODWORD(v134));
  *&v187 = v146;
  *(&v187 + 1) = v140;
  *&v188 = a4;
  *(&v188 + 1) = a5;
  *&v189 = a6;
  *(&v189 + 1) = v137;
  *&v190 = v132;
  *(&v190 + 1) = v145;
  *&v191 = 0;
  WORD4(v191) = 0;
  HIWORD(v191) = v183;
  *(&v191 + 10) = v182;
  *&v192 = v128;
  *(&v192 + 1) = v130;
  v193 = v129;
  v150[0] = v136;
  v150[1] = v79;
  v150[2] = v81;
  v150[3] = v80;
  v151 = a1;
  v152 = v131;
  v153 = v134;
  v154 = v139;
  v155 = v146;
  v156 = v140;
  v157 = a4;
  v158 = a5;
  v159 = a6;
  v160 = v137;
  v161 = v132;
  v162 = v145;
  v163 = 0;
  v164 = 0;
  v166 = v183;
  v165 = v182;
  v167 = v128;
  v168 = v130;
  v169 = v129;
  sub_2371339F0(&v184, v149);
  sub_237133A4C(v150);
  v125 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  sub_2371339F0(&v184, v149);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = *(v133 + v125);
  *(v133 + v125) = 0x8000000000000000;
  sub_23718E500(&v184, a1, isUniquelyReferenced_nonNull_native);
  *(v133 + v125) = v149[0];
  swift_endAccess();
  [*(v133 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack) addArrangedSubview_];
  v127 = *(&v185 + 1);
  [*(&v185 + 1) addTarget:v133 action:sel_textFieldEditingDidChange_ forControlEvents:0x40000];
  [v127 setKeyboardType_];
  [v127 setDelegate_];
  return sub_237133A4C(&v184);
}

uint64_t sub_237135BD4(unsigned int a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  result = swift_beginAccess();
  v8 = *(v2 + v6);
  if (*(v8 + 16))
  {
    result = sub_2371906E0(a1);
    if (v9)
    {
      v10 = *(v8 + 56) + 152 * result;
      v11 = *(v10 + 16);
      v24[0] = *v10;
      v24[1] = v11;
      v12 = *(v10 + 80);
      v14 = *(v10 + 32);
      v13 = *(v10 + 48);
      v24[4] = *(v10 + 64);
      v24[5] = v12;
      v24[2] = v14;
      v24[3] = v13;
      v15 = *(v10 + 96);
      v16 = *(v10 + 112);
      v17 = *(v10 + 128);
      v25 = *(v10 + 144);
      v24[7] = v16;
      v24[8] = v17;
      v24[6] = v15;
      v18 = v16;
      v19 = *(v10 + 80);
      v35 = *(v10 + 64);
      v36 = v19;
      v37 = *(v10 + 96);
      v20 = *(v10 + 16);
      v31 = *v10;
      v32 = v20;
      v21 = *(v10 + 48);
      v33 = *(v10 + 32);
      v34 = v21;
      v30[0] = *(v10 + 121);
      *(v30 + 15) = *(v10 + 136);
      sub_2371339F0(v24, v42);
      v22 = a2;

      v42[4] = v35;
      v42[5] = v36;
      v42[6] = v37;
      v42[0] = v31;
      v42[1] = v32;
      v42[2] = v33;
      v42[3] = v34;
      v43 = a2;
      v44 = 1;
      *(v45 + 15) = *(v30 + 15);
      v45[0] = v30[0];
      sub_23713445C();
      v38[4] = v35;
      v38[5] = v36;
      v38[6] = v37;
      v38[0] = v31;
      v38[1] = v32;
      v38[2] = v33;
      v38[3] = v34;
      v39 = a2;
      v40 = 1;
      *(v41 + 15) = *(v30 + 15);
      v41[0] = v30[0];
      swift_beginAccess();
      sub_2371339F0(v38, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v26[0] = *(v3 + v6);
      *(v3 + v6) = 0x8000000000000000;
      sub_23718E500(v38, a1, isUniquelyReferenced_nonNull_native);
      *(v3 + v6) = *&v26[0];
      swift_endAccess();
      v26[4] = v35;
      v26[5] = v36;
      v26[6] = v37;
      v26[0] = v31;
      v26[1] = v32;
      v26[2] = v33;
      v26[3] = v34;
      v27 = a2;
      v28 = 1;
      *&v29[15] = *(v30 + 15);
      *v29 = v30[0];
      return sub_237133A4C(v26);
    }
  }

  return result;
}

unint64_t sub_237135E04(unsigned int a1, float a2)
{
  v5 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (*(v7 + 16))
  {
    result = sub_2371906E0(a1);
    if (v8)
    {
      v9 = *(v7 + 56) + 152 * result;
      v10 = *(v9 + 16);
      v58 = *v9;
      v59 = v10;
      v11 = *(v9 + 80);
      v13 = *(v9 + 32);
      v12 = *(v9 + 48);
      v62 = *(v9 + 64);
      v63 = v11;
      v60 = v13;
      v61 = v12;
      v14 = *(v9 + 96);
      v15 = *(v9 + 112);
      v16 = *(v9 + 128);
      v67 = *(v9 + 144);
      v65 = v15;
      v66 = v16;
      v64 = v14;
      v17 = *(v9 + 16);
      v75 = *v9;
      v76 = v17;
      v77 = *(v9 + 32);
      v18 = *(v9 + 88);
      v19 = *(v9 + 120);
      v72 = *(v9 + 104);
      v73 = v19;
      v74 = *(v9 + 136);
      v20 = *(v9 + 56);
      v68 = *(v9 + 40);
      v69 = v20;
      v70 = *(v9 + 72);
      v71 = v18;
      if (*(&v60 + 2) > a2 || *(&v60 + 3) < a2)
      {
        v47 = v75;
        v48 = v76;
        v50 = *(&v60 + 1);
        v54 = v71;
        v55 = v72;
        v56 = v73;
        v57 = v74;
        v51 = v68;
        v49 = v77;
        v52 = v69;
        v53 = v70;
        sub_2371339F0(&v58, v46);
        return sub_237133A4C(&v47);
      }

      v21 = *(&v63 + 1);
      v22 = *(&v59 + 1);
      v23 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      sub_2371339F0(&v58, &v47);
      *&v24 = a2;
      v25 = [v23 initWithFloat_];
      v26 = [v21 stringFromNumber_];

      [v22 setText_];
      v27 = sub_23719653C();
      v28 = [objc_opt_self() bundleWithIdentifier_];

      if (!v28)
      {
LABEL_14:
        v47 = v75;
        v48 = v76;
        v50 = a2;
        v54 = v71;
        v55 = v72;
        v56 = v73;
        v57 = v74;
        v51 = v68;
        v49 = v77;
        v52 = v69;
        v53 = v70;
        return sub_237133A4C(&v47);
      }

      sub_23719634C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_23719B040;
      v45 = v22;
      result = [v22 text];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v30 = result;
      v31 = v59;
      v32 = sub_23719657C();
      v34 = v33;

      v35 = MEMORY[0x277D837D0];
      *(v29 + 56) = MEMORY[0x277D837D0];
      v36 = sub_237115040();
      *(v29 + 64) = v36;
      *(v29 + 32) = v32;
      *(v29 + 40) = v34;
      v37 = [v31 text];
      if (v37)
      {
        v38 = v37;
        v39 = sub_23719657C();
        v41 = v40;

        v42 = (v29 + 72);
        *(v29 + 96) = v35;
        *(v29 + 104) = v36;
        if (v41)
        {
          *v42 = v39;
          v43 = v45;
LABEL_13:
          *(v29 + 80) = v41;
          sub_23719659C();

          v44 = sub_23719653C();

          [v43 setAccessibilityValue_];

          goto LABEL_14;
        }
      }

      else
      {
        v42 = (v29 + 72);
        *(v29 + 96) = v35;
        *(v29 + 104) = v36;
      }

      v43 = v45;
      *v42 = 0;
      v41 = 0xE000000000000000;
      goto LABEL_13;
    }
  }

  return result;
}

void sub_23713621C(unsigned int a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {
    v5 = sub_2371906E0(a1);
    if (v6)
    {
      v7 = *(v4 + 56) + 152 * v5;
      v8 = *(v7 + 16);
      v27 = *v7;
      v28 = v8;
      v9 = *(v7 + 80);
      v11 = *(v7 + 32);
      v10 = *(v7 + 48);
      v31 = *(v7 + 64);
      v32 = v9;
      v29 = v11;
      v30 = v10;
      v12 = *(v7 + 96);
      v13 = *(v7 + 112);
      v14 = *(v7 + 128);
      v36 = *(v7 + 144);
      v34 = v13;
      v35 = v14;
      v33 = v12;
      sub_2371339F0(&v27, v26);
      v15 = sub_23719653C();
      v16 = [objc_opt_self() bundleWithIdentifier_];

      if (!v16)
      {
LABEL_6:
        sub_237133A4C(&v27);
        return;
      }

      v17 = objc_opt_self();
      v18 = v16;
      v19 = [v17 currentTraitCollection];
      v20 = sub_23719653C();
      v21 = [objc_opt_self() colorNamed:v20 inBundle:v18 compatibleWithTraitCollection:v19];

      if (v21)
      {
        [*(&v28 + 1) setTextColor_];
        v22 = *(&v27 + 1);
        v23 = [v21 colorWithAlphaComponent_];
        [v22 setTextColor_];

        v24 = v28;
        v25 = [v21 colorWithAlphaComponent_];
        [v24 setTextColor_];

        goto LABEL_6;
      }

      sub_237133A4C(&v27);
    }
  }
}

uint64_t sub_23713646C()
{
  v1 = v0;
  v2 = sub_23719630C();
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = sub_237133AA0(v2);

  if (v3)
  {
    if (!*(v3 + 16) || (v5 = sub_2371905D4(0x7344496D61726170, 0xE800000000000000), (v6 & 1) == 0) || (v7 = *(*(v3 + 56) + 8 * v5), , , (v8 = *(v7 + 16)) == 0))
    {
    }

    v9 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
    swift_beginAccess();
    v10 = 0;
    v69 = v7;
    v70 = v8;
    v68 = v1;
    while (1)
    {
      if (v10 >= *(v7 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        result = sub_237196AAC();
        __break(1u);
        return result;
      }

      v26 = *(v1 + v9);
      if (*(v26 + 16))
      {
        v27 = *(v7 + 4 * v10 + 32);
        v28 = sub_2371906E0(v27);
        if (v29)
        {
          break;
        }
      }

LABEL_9:
      if (v8 == ++v10)
      {
      }
    }

    v30 = *(v26 + 56) + 152 * v28;
    v31 = *(v30 + 16);
    v86 = *v30;
    v87 = v31;
    v32 = *(v30 + 80);
    v34 = *(v30 + 32);
    v33 = *(v30 + 48);
    v90 = *(v30 + 64);
    v91 = v32;
    v88 = v34;
    v89 = v33;
    v35 = *(v30 + 96);
    v36 = *(v30 + 112);
    v37 = *(v30 + 128);
    v95 = *(v30 + 144);
    v93 = v36;
    v94 = v37;
    v92 = v35;
    v38 = v36;
    v39 = *(v30 + 80);
    v101 = *(v30 + 64);
    v102 = v39;
    v103[0] = *(v30 + 96);
    *(v103 + 9) = *(v30 + 105);
    v40 = *(v30 + 16);
    v97 = *v30;
    v98 = v40;
    v41 = *(v30 + 48);
    v99 = *(v30 + 32);
    v100 = v41;
    v42 = *(v30 + 122);
    *(v96 + 14) = *(v30 + 136);
    v96[0] = v42;
    if (v38)
    {
      v43 = *(&v87 + 1);
      v71 = v87;
      v44 = *(&v86 + 1);
      sub_2371339F0(&v86, &v79);
      [v43 setTextColor_];
      v45 = [v38 colorWithAlphaComponent_];
      [v44 &selRef:v45 setAlpha:?];

      v46 = [v38 colorWithAlphaComponent_];
      v1 = v68;
      [v71 &selRef:v46 setAlpha:?];
    }

    else
    {
      sub_2371339F0(&v86, &v79);
    }

    v83 = v101;
    v84 = v102;
    *v85 = v103[0];
    *&v85[9] = *(v103 + 9);
    v79 = v97;
    v80 = v98;
    v81 = v99;
    v82 = v100;
    v85[25] = 1;
    *&v85[26] = v96[0];
    *&v85[40] = *(v96 + 14);
    swift_beginAccess();
    sub_2371339F0(&v79, &v72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v1 + v9);
    *(v1 + v9) = 0x8000000000000000;
    v49 = sub_2371906E0(v27);
    v51 = v48[2];
    v52 = (v50 & 1) == 0;
    v53 = __OFADD__(v51, v52);
    v54 = v51 + v52;
    if (v53)
    {
      goto LABEL_33;
    }

    v55 = v50;
    if (v48[3] >= v54)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = v49;
        sub_2371928BC();
        v49 = v67;
        v8 = v70;
        if ((v55 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }
    }

    else
    {
      sub_237191428(v54, isUniquelyReferenced_nonNull_native);
      v49 = sub_2371906E0(v27);
      if ((v55 & 1) != (v56 & 1))
      {
        goto LABEL_36;
      }
    }

    v8 = v70;
    if ((v55 & 1) == 0)
    {
LABEL_22:
      v48[(v49 >> 6) + 8] |= 1 << v49;
      *(v48[6] + 4 * v49) = v27;
      v57 = v48[7] + 152 * v49;
      v58 = v80;
      *v57 = v79;
      *(v57 + 16) = v58;
      v59 = v84;
      v61 = v81;
      v60 = v82;
      *(v57 + 64) = v83;
      *(v57 + 80) = v59;
      *(v57 + 32) = v61;
      *(v57 + 48) = v60;
      v62 = *v85;
      v63 = *&v85[16];
      v64 = *&v85[32];
      *(v57 + 144) = *&v85[48];
      *(v57 + 112) = v63;
      *(v57 + 128) = v64;
      *(v57 + 96) = v62;
      v65 = v48[2];
      v53 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v53)
      {
        goto LABEL_34;
      }

      v48[2] = v66;
      goto LABEL_8;
    }

LABEL_7:
    v11 = v48[7] + 152 * v49;
    v12 = *(v11 + 16);
    v72 = *v11;
    v73 = v12;
    v13 = *(v11 + 80);
    v15 = *(v11 + 32);
    v14 = *(v11 + 48);
    v76 = *(v11 + 64);
    v77 = v13;
    v74 = v15;
    v75 = v14;
    v17 = *(v11 + 112);
    v16 = *(v11 + 128);
    v18 = *(v11 + 96);
    *&v78[48] = *(v11 + 144);
    *&v78[32] = v16;
    *v78 = v18;
    *&v78[16] = v17;
    v19 = v80;
    *v11 = v79;
    *(v11 + 16) = v19;
    v20 = v81;
    v21 = v82;
    v22 = v84;
    *(v11 + 64) = v83;
    *(v11 + 80) = v22;
    *(v11 + 32) = v20;
    *(v11 + 48) = v21;
    v23 = *v85;
    v24 = *&v85[16];
    v25 = *&v85[32];
    *(v11 + 144) = *&v85[48];
    *(v11 + 112) = v24;
    *(v11 + 128) = v25;
    *(v11 + 96) = v23;
    sub_237133A4C(&v72);
LABEL_8:
    *(v1 + v9) = v48;
    swift_endAccess();
    v76 = v101;
    v77 = v102;
    *v78 = v103[0];
    *&v78[9] = *(v103 + 9);
    v72 = v97;
    v73 = v98;
    v74 = v99;
    v75 = v100;
    v78[25] = 1;
    *&v78[26] = v96[0];
    *&v78[40] = *(v96 + 14);
    sub_237133A4C(&v72);
    v7 = v69;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_237136994()
{
  v1 = v0;
  v2 = sub_23719630C();
  if (!v2)
  {
    goto LABEL_39;
  }

  v3 = sub_237133AA0(v2);

  if (v3)
  {
    if (!*(v3 + 16) || (v5 = sub_2371905D4(0x7344496D61726170, 0xE800000000000000), (v6 & 1) == 0) || (v7 = *(*(v3 + 56) + 8 * v5), , , (v8 = *(v7 + 16)) == 0))
    {
    }

    v9 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
    swift_beginAccess();
    v10 = 0;
    v79 = v9;
    v80 = v7;
    v81 = v8;
    v76 = v1;
    while (1)
    {
      if (v10 >= *(v7 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        result = sub_237196AAC();
        __break(1u);
        return result;
      }

      v26 = *(v1 + v9);
      if (*(v26 + 16))
      {
        v27 = *(v7 + 4 * v10 + 32);
        v28 = sub_2371906E0(v27);
        if (v29)
        {
          break;
        }
      }

LABEL_9:
      if (v8 == ++v10)
      {
      }
    }

    v30 = *(v26 + 56) + 152 * v28;
    v31 = *(v30 + 16);
    v96 = *v30;
    v97 = v31;
    v32 = *(v30 + 80);
    v34 = *(v30 + 32);
    v33 = *(v30 + 48);
    v100 = *(v30 + 64);
    v101 = v32;
    v98 = v34;
    v99 = v33;
    v35 = *(v30 + 96);
    v36 = *(v30 + 112);
    v37 = *(v30 + 128);
    v105 = *(v30 + 144);
    v103 = v36;
    v104 = v37;
    v102 = v35;
    v38 = v36;
    v39 = *(v30 + 80);
    v111 = *(v30 + 64);
    v112 = v39;
    v113[0] = *(v30 + 96);
    *(v113 + 9) = *(v30 + 105);
    v40 = *(v30 + 16);
    v107 = *v30;
    v108 = v40;
    v41 = *(v30 + 48);
    v109 = *(v30 + 32);
    v110 = v41;
    v42 = *(v30 + 122);
    *(v106 + 14) = *(v30 + 136);
    v106[0] = v42;
    if (v38)
    {
      v43 = v97;
      v44 = *(&v96 + 1);
      if (BYTE8(v103) == 1)
      {
        sub_2371339F0(&v96, &v89);
        [*(&v43 + 1) setTextColor_];
        v45 = [v38 colorWithAlphaComponent_];
        [v44 setTextColor_];

        v9 = v79;
        v46 = [v38 colorWithAlphaComponent_];
        [v43 setTextColor_];

        v7 = v80;
      }

      else
      {
        v77 = v97;
        v78 = *(&v96 + 1);
        v47 = v96;
        sub_2371339F0(&v96, &v89);
        v48 = [v47 tintColor];
        [*(&v43 + 1) setTextColor_];

        v49 = [v47 tintColor];
        if (!v49)
        {
          goto LABEL_41;
        }

        v50 = v49;
        v51 = [v49 colorWithAlphaComponent_];

        [v78 setTextColor_];
        v52 = [v47 tintColor];
        if (!v52)
        {
          goto LABEL_40;
        }

        v53 = v52;
        v54 = [v52 colorWithAlphaComponent_];

        [v77 setTextColor_];
        v1 = v76;
        v9 = v79;
        v7 = v80;
      }
    }

    else
    {
      sub_2371339F0(&v96, &v89);
    }

    v93 = v111;
    v94 = v112;
    *v95 = v113[0];
    *&v95[9] = *(v113 + 9);
    v89 = v107;
    v90 = v108;
    v91 = v109;
    v92 = v110;
    v95[25] = 0;
    *&v95[26] = v106[0];
    *&v95[40] = *(v106 + 14);
    swift_beginAccess();
    sub_2371339F0(&v89, &v82);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v1 + v9);
    *(v1 + v9) = 0x8000000000000000;
    v57 = sub_2371906E0(v27);
    v59 = v56[2];
    v60 = (v58 & 1) == 0;
    v61 = __OFADD__(v59, v60);
    v62 = v59 + v60;
    if (v61)
    {
      goto LABEL_37;
    }

    v63 = v58;
    if (v56[3] >= v62)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = v57;
        sub_2371928BC();
        v57 = v75;
        if ((v63 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_7;
      }
    }

    else
    {
      sub_237191428(v62, isUniquelyReferenced_nonNull_native);
      v57 = sub_2371906E0(v27);
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_42;
      }
    }

    if ((v63 & 1) == 0)
    {
LABEL_26:
      v56[(v57 >> 6) + 8] |= 1 << v57;
      *(v56[6] + 4 * v57) = v27;
      v65 = v56[7] + 152 * v57;
      v66 = v90;
      *v65 = v89;
      *(v65 + 16) = v66;
      v67 = v94;
      v69 = v91;
      v68 = v92;
      *(v65 + 64) = v93;
      *(v65 + 80) = v67;
      *(v65 + 32) = v69;
      *(v65 + 48) = v68;
      v70 = *v95;
      v71 = *&v95[16];
      v72 = *&v95[32];
      *(v65 + 144) = *&v95[48];
      *(v65 + 112) = v71;
      *(v65 + 128) = v72;
      *(v65 + 96) = v70;
      v73 = v56[2];
      v61 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v61)
      {
        goto LABEL_38;
      }

      v56[2] = v74;
      goto LABEL_8;
    }

LABEL_7:
    v11 = v56[7] + 152 * v57;
    v12 = *(v11 + 16);
    v82 = *v11;
    v83 = v12;
    v13 = *(v11 + 80);
    v15 = *(v11 + 32);
    v14 = *(v11 + 48);
    v86 = *(v11 + 64);
    v87 = v13;
    v84 = v15;
    v85 = v14;
    v17 = *(v11 + 112);
    v16 = *(v11 + 128);
    v18 = *(v11 + 96);
    *&v88[48] = *(v11 + 144);
    *&v88[32] = v16;
    *v88 = v18;
    *&v88[16] = v17;
    v19 = v90;
    *v11 = v89;
    *(v11 + 16) = v19;
    v20 = v91;
    v21 = v92;
    v22 = v94;
    *(v11 + 64) = v93;
    *(v11 + 80) = v22;
    *(v11 + 32) = v20;
    *(v11 + 48) = v21;
    v23 = *v95;
    v24 = *&v95[16];
    v25 = *&v95[32];
    *(v11 + 144) = *&v95[48];
    *(v11 + 112) = v24;
    *(v11 + 128) = v25;
    *(v11 + 96) = v23;
    sub_237133A4C(&v82);
LABEL_8:
    *(v1 + v9) = v56;
    swift_endAccess();
    v86 = v111;
    v87 = v112;
    *v88 = v113[0];
    *&v88[9] = *(v113 + 9);
    v82 = v107;
    v83 = v108;
    v84 = v109;
    v85 = v110;
    v88[25] = 0;
    *&v88[26] = v106[0];
    *&v88[40] = *(v106 + 14);
    sub_237133A4C(&v82);
    v8 = v81;
    goto LABEL_9;
  }

  return result;
}