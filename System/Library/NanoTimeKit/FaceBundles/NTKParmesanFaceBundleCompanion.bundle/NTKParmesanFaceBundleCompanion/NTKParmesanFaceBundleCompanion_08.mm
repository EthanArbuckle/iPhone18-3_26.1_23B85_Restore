unint64_t sub_23BFE4960(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BF4A264(&qword_27E1E2CD8);
    v3 = sub_23BFFAB50();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_23BFE2EFC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23BFE4A74(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_23BF4A264(a2);
    v4 = sub_23BFFAB50();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 8);
      v7 = *i;

      result = sub_23BFE2E54(v6);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + result) = v6;
      *(v4[7] + 8 * result) = v7;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23BFE4B60(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_23BF4A264(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BFE4BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BFF8D90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BF4A264(&qword_27E1E2CF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = sub_23BF4A264(&qword_27E1E0B80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  v17 = *(a1 + OBJC_IVAR___NTKParmesanAsset_localIdentifier) == *(a2 + OBJC_IVAR___NTKParmesanAsset_localIdentifier) && *(a1 + OBJC_IVAR___NTKParmesanAsset_localIdentifier + 8) == *(a2 + OBJC_IVAR___NTKParmesanAsset_localIdentifier + 8);
  if (!v17 && (sub_23BFFACC0() & 1) == 0)
  {
    goto LABEL_12;
  }

  v47 = v7;
  v49 = a2;
  v18 = OBJC_IVAR___NTKParmesanAsset_modificationDate;
  swift_beginAccess();
  v48 = a1;
  v19 = a1 + v18;
  v20 = v49;
  sub_23BF4B33C(v19, v16, &qword_27E1E0B80);
  v21 = OBJC_IVAR___NTKParmesanAsset_modificationDate;
  swift_beginAccess();
  v22 = *(v8 + 48);
  sub_23BF4B33C(v16, v10, &qword_27E1E0B80);
  sub_23BF4B33C(v20 + v21, &v10[v22], &qword_27E1E0B80);
  v23 = *(v5 + 48);
  if (v23(v10, 1, v4) == 1)
  {
    sub_23BF4B2D4(v16, &qword_27E1E0B80);
    if (v23(&v10[v22], 1, v4) == 1)
    {
      sub_23BF4B2D4(v10, &qword_27E1E0B80);
      goto LABEL_15;
    }

LABEL_11:
    sub_23BF4B2D4(v10, &qword_27E1E2CF0);
    goto LABEL_12;
  }

  sub_23BF4B33C(v10, v14, &qword_27E1E0B80);
  if (v23(&v10[v22], 1, v4) == 1)
  {
    sub_23BF4B2D4(v16, &qword_27E1E0B80);
    (*(v5 + 8))(v14, v4);
    goto LABEL_11;
  }

  v26 = v47;
  (*(v5 + 32))(v47, &v10[v22], v4);
  sub_23BFE5284(&qword_27E1E2CF8, MEMORY[0x277CC9578]);
  v27 = sub_23BFFA2B0();
  v28 = *(v5 + 8);
  v28(v26, v4);
  sub_23BF4B2D4(v16, &qword_27E1E0B80);
  v28(v14, v4);
  v20 = v49;
  sub_23BF4B2D4(v10, &qword_27E1E0B80);
  if ((v27 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v24 = 0;
  v29 = v48;
  if (*(v48 + OBJC_IVAR___NTKParmesanAsset_presentationSize) != *(v20 + OBJC_IVAR___NTKParmesanAsset_presentationSize) || *(v48 + OBJC_IVAR___NTKParmesanAsset_presentationSize + 8) != *(v20 + OBJC_IVAR___NTKParmesanAsset_presentationSize + 8))
  {
    return v24 & 1;
  }

  v30 = *(v48 + OBJC_IVAR___NTKParmesanAsset_videoInfo);
  v31 = *(v20 + OBJC_IVAR___NTKParmesanAsset_videoInfo);
  if (!v30)
  {
    if (!v31)
    {
      goto LABEL_22;
    }

LABEL_12:
    v24 = 0;
    return v24 & 1;
  }

  if (!v31)
  {
    goto LABEL_12;
  }

  type metadata accessor for ParmesanAssetVideoInfo();
  v32 = v31;
  v33 = v30;
  v34 = sub_23BFFA880();

  v20 = v49;
  if ((v34 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_22:
  v35 = *(v29 + OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout);
  v36 = *(v20 + OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout);
  if (*(v35 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) != *(v36 + OBJC_IVAR___NTKParmesanTimeLayout_alignment))
  {
    goto LABEL_12;
  }

  if (*(v35 + OBJC_IVAR___NTKParmesanTimeLayout_scale) != *(v36 + OBJC_IVAR___NTKParmesanTimeLayout_scale))
  {
    goto LABEL_12;
  }

  v37 = OBJC_IVAR___NTKParmesanAsset_layouts;
  swift_beginAccess();
  v38 = *(v29 + v37);
  v39 = OBJC_IVAR___NTKParmesanAsset_layouts;
  swift_beginAccess();
  v40 = *(v20 + v39);

  sub_23BFE0654(v38, v40);
  v41 = v20;
  v43 = v42;

  if ((v43 & 1) == 0)
  {
    goto LABEL_12;
  }

  v44 = *(v29 + OBJC_IVAR___NTKParmesanAsset_accessibilityDescription + 8);
  v45 = *(v41 + OBJC_IVAR___NTKParmesanAsset_accessibilityDescription + 8);
  v24 = (v44 | v45) == 0;
  if (v44 && v45)
  {
    if (*(v29 + OBJC_IVAR___NTKParmesanAsset_accessibilityDescription) == *(v41 + OBJC_IVAR___NTKParmesanAsset_accessibilityDescription) && v44 == v45)
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_23BFFACC0();
    }
  }

  return v24 & 1;
}

unint64_t sub_23BFE5198()
{
  result = qword_27E1E2D20;
  if (!qword_27E1E2D20)
  {
    sub_23BF4A2D0(&qword_27E1E2C90);
    sub_23BFE5284(&qword_27E1E2340, type metadata accessor for ParmesanTimeLayout);
    sub_23BFE5284(&qword_27E1E2D28, type metadata accessor for ParmesanAssetLayout);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2D20);
  }

  return result;
}

uint64_t sub_23BFE5284(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_23BFE52CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  v18 = OBJC_IVAR___NTKParmesanAsset_modificationDate;
  v19 = sub_23BFF8D90();
  (*(*(v19 - 8) + 56))(&v11[v18], 1, 1, v19);
  v20 = OBJC_IVAR___NTKParmesanAsset_layouts;
  *&v11[v20] = sub_23BFE4298(MEMORY[0x277D84F90]);
  v21 = &v11[OBJC_IVAR___NTKParmesanAsset_accessibilityDescription];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR___NTKParmesanAsset_videoInfo;
  *&v11[OBJC_IVAR___NTKParmesanAsset_videoInfo] = 0;
  v23 = OBJC_IVAR___NTKParmesanAsset_resourceDirectory;
  v24 = sub_23BFF8D10();
  (*(*(v24 - 8) + 56))(&v11[v23], 1, 1, v24);
  *&v11[OBJC_IVAR___NTKParmesanAsset_photoVersion] = 10;
  v25 = &v11[OBJC_IVAR___NTKParmesanAsset_localIdentifier];
  *v25 = a1;
  *(v25 + 1) = a2;
  swift_beginAccess();
  sub_23BF663D8(a3, &v11[v18], &qword_27E1E0B80);
  swift_endAccess();
  v26 = &v11[OBJC_IVAR___NTKParmesanAsset_presentationSize];
  *v26 = a9;
  v26[1] = a10;
  v27 = *&v11[v22];
  *&v11[v22] = a4;
  v28 = a4;

  swift_beginAccess();
  sub_23BF663D8(a5, &v11[v23], &qword_27E1E0B78);
  swift_endAccess();
  *&v11[OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout] = a6;
  swift_beginAccess();
  *&v11[v20] = a7;
  v29 = a6;

  *v21 = a8;
  *(v21 + 1) = a11;

  v36.receiver = v11;
  v36.super_class = type metadata accessor for ParmesanAsset();
  v30 = objc_msgSendSuper2(&v36, sel_init);
  sub_23BF4B2D4(a5, &qword_27E1E0B78);
  sub_23BF4B2D4(a3, &qword_27E1E0B80);
  return v30;
}

unint64_t sub_23BFE55CC()
{
  result = qword_27E1E2D90;
  if (!qword_27E1E2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2D90);
  }

  return result;
}

unint64_t sub_23BFE5624()
{
  result = qword_27E1E2D98;
  if (!qword_27E1E2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2D98);
  }

  return result;
}

unint64_t sub_23BFE567C()
{
  result = qword_27E1E2DA0;
  if (!qword_27E1E2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2DA0);
  }

  return result;
}

uint64_t sub_23BFE56D0()
{
  v0 = sub_23BFFAB70();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

void sub_23BFE57F4()
{
  sub_23BFE5910(*(v0 + OBJC_IVAR___NTKParmesanTimeLayout_alignment), *(v0 + OBJC_IVAR___NTKParmesanTimeLayout_scale));
  v1 = [objc_opt_self() currentDevice];
  if (v1)
  {
    v2 = v1;
    [v1 screenBounds];
  }

  else
  {
    __break(1u);
  }
}

void sub_23BFE5910(unint64_t a1, int64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  if (!v5)
  {
    __break(1u);
    goto LABEL_25;
  }

  v6 = v5;
  [v5 screenScale];

  v7 = [v4 currentDevice];
  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = v7;
  [v7 screenBounds];

  sub_23BF6D1A4(a1, a2);
  PFCRectForTimePosition();
  v9 = [v4 currentDevice];
  if (!v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = v9;
  NTKParmesanFaceViewEdgeGapNormal(v9);

  sub_23BF4A264(&unk_27E1E1BD0);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a1 >= 2)
      {
        goto LABEL_28;
      }
    }

    else if (a2 != 3 || a1 != 1 && a1)
    {
      goto LABEL_28;
    }
  }

  else if (a2)
  {
    if (a2 != 1 || a1 && a1 != 1)
    {
      goto LABEL_28;
    }
  }

  else if (a1 != 1 && a1)
  {
    goto LABEL_28;
  }

  v11 = [v4 currentDevice];
  if (v11)
  {
    v12 = v11;
    [v11 sizeClass];

    return;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  sub_23BFFACB0();
  __break(1u);
}

void sub_23BFE5C7C(unint64_t a1, int64_t a2)
{
  sub_23BFE5910(a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 currentDevice];
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  [v11 screenScale];
  v14 = v13;

  v15 = [v10 currentDevice];
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 screenBounds];
  v18 = v17;

  v19 = round(v14 * v18 / 324.0 * -3.0) / v14;
  v20 = v3;
  v21 = v5;
  v22 = v7;
  v23 = v9;

  CGRectInset(*&v20, v19, v19);
}

void sub_23BFE5D8C(uint64_t a1, uint64_t a2)
{
  if ([objc_opt_self() isPartiallySupported_])
  {
    v5 = CLKLocaleNumberSystemFromNumeralOption();
    sub_23BFEA8E0(v5, *(v2 + OBJC_IVAR___NTKParmesanTypefaceMetrics_device));
    return;
  }

  v6 = *(v2 + OBJC_IVAR___NTKParmesanTypefaceMetrics_fontSizes);
  if (*(v6 + 16))
  {
    v7 = sub_23BFE571C(*(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface));
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      v10 = CLKLocaleNumberSystemFromNumeralOption();
      if (!*(v9 + 16) || (v11 = sub_23BFE571C(v10), (v12 & 1) == 0) || (v13 = *(*(v9 + 56) + 8 * v11), , , !*(v13 + 16)) || (v14 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout, sub_23BFE571C(*(*(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout) + OBJC_IVAR___NTKParmesanTimeLayout_scale)), (v15 & 1) == 0))
      {

        return;
      }

      v16 = *(a1 + v14);
      v17 = *(v16 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
      v18 = *(v16 + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
      sub_23BF4A264(&qword_27E1E2DD8);
      if (a2 > 1)
      {
        if (a2 == 2)
        {
          if (v17 == 3 || v18 < 2)
          {
            return;
          }
        }

        else if (a2 == 3)
        {
          if (v17 != 3)
          {
            goto LABEL_31;
          }

          return;
        }
      }

      else if (a2)
      {
        if (a2 == 1 && (v17 == 3 || v18 < 2))
        {
          return;
        }
      }

      else if (v17 == 3 || v18 < 2)
      {
        return;
      }

      do
      {
        sub_23BFFACB0();
        __break(1u);
LABEL_31:
        ;
      }

      while (v18 >= 2);
    }
  }
}

id sub_23BFE6000(uint64_t a1, uint64_t a2)
{
  sub_23BFE6368(a1, a2);
  v4 = v3;
  v5 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface);
  if (v5)
  {
    if (v5 == 2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0x409F400000000000;
      v9 = 1;
      v10 = 0x4082700000000000;
      v11 = 0x4080980000000000;
      v12 = 1;
    }

    else
    {
      if (v5 != 1)
      {
        v25 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface);
        goto LABEL_18;
      }

      v13 = v3 + -2.0;
      v14 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style);
      v15 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8);
      sub_23BF674B4(v14, *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8));
      sub_23BF674B4(v14, v15);
      if (qword_27E1DFE18 != -1)
      {
        swift_once();
      }

      v4 = fmin(v13, 30.0);
      v16 = byte_27E1E1D60;
      sub_23BF674C8(v14, v15);
      if (v16 == 1 && !v15)
      {
        v23 = *(*(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout) + OBJC_IVAR___NTKParmesanTimeLayout_scale);
        if (v23 >= 2)
        {
          if (v23 - 2 > 1)
          {
            while (1)
            {
              v25 = v23;
LABEL_18:
              sub_23BFFACF0();
              __break(1u);
            }
          }

          v9 = 0;
          v6 = 0;
          v7 = 0;
          v8 = 0x4051800000000000;
          v12 = 1;
          v5 = 0x405DC00000000000;
        }

        else
        {
          v9 = 0;
          v6 = 0;
          v7 = 0;
          v5 = 0x4055E00000000000;
          v8 = 0x4051800000000000;
          v12 = 1;
        }

        v10 = 0x4084A00000000000;
        v11 = 0x4082900000000000;
      }

      else
      {
        v5 = 0x4062C00000000000;
        sub_23BF674C8(v14, v15);
        v9 = 0;
        v6 = 0;
        v8 = 0;
        v12 = 1;
        v10 = 0x4084A00000000000;
        v11 = 0x4082900000000000;
        v7 = 1;
      }
    }
  }

  else
  {
    v12 = 0;
    v7 = 0;
    v8 = 0x4034000000000000;
    v6 = 0x4079000000000000;
    v10 = 0x4082C00000000000;
    v11 = 0x4080E00000000000;
    v9 = 1;
  }

  v17 = type metadata accessor for ParmesanFontAttributes();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR___NTKParmesanFontAttributes_soft];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v18[OBJC_IVAR___NTKParmesanFontAttributes_grad];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v18[OBJC_IVAR___NTKParmesanFontAttributes_opticalSize];
  v21[8] = 1;
  *v21 = 0;
  *&v18[OBJC_IVAR___NTKParmesanFontAttributes_activeWeight] = v10;
  *&v18[OBJC_IVAR___NTKParmesanFontAttributes_tritiumWeight] = v11;
  *&v18[OBJC_IVAR___NTKParmesanFontAttributes_width] = v4;
  *v19 = v8;
  v19[8] = v7;
  *v20 = v6;
  v20[8] = v12;
  *v21 = v5;
  v21[8] = v9;
  v24.receiver = v18;
  v24.super_class = v17;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_23BFE6368(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___NTKParmesanTypefaceMetrics_fontWidths);
  if (!*(v3 + 16))
  {
    return result;
  }

  v4 = result;
  result = sub_23BFE571C(*(result + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface));
  if ((v6 & 1) == 0)
  {
    return result;
  }

  v7 = *(*(v3 + 56) + 8 * result);

  v8 = CLKLocaleNumberSystemFromNumeralOption();
  if (!*(v7 + 16))
  {
  }

  v9 = sub_23BFE571C(v8);
  if ((v10 & 1) == 0)
  {
  }

  v11 = *(*(v7 + 56) + 8 * v9);

  if (!*(v11 + 16))
  {
  }

  v12 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout;
  sub_23BFE571C(*(*(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout) + OBJC_IVAR___NTKParmesanTimeLayout_scale));
  if ((v13 & 1) == 0)
  {
  }

  v14 = *(v4 + v12);
  v15 = *(v14 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
  v16 = *(v14 + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
  result = sub_23BF4A264(&qword_27E1E2DD8);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (v15 == 3 || v16 < 2)
      {
        return result;
      }
    }

    else if (a2 == 3 && (v15 == 3 || v16 < 2))
    {
      return result;
    }

LABEL_30:
    result = sub_23BFFACB0();
    __break(1u);
    return result;
  }

  if (a2)
  {
    if (a2 == 1 && (v15 == 3 || v16 < 2))
    {
      return result;
    }

    goto LABEL_30;
  }

  if (v15 != 3 && v16 >= 2)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_23BFE661C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_23BF4A264(&qword_27E1E2CA8);
  result = sub_23BFFAB30();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v23 = *(v22 + 24);
      v24 = *(v22 + 16);
      v26 = *v22;
      v25 = *(v22 + 8);
      sub_23BFFAD90();
      MEMORY[0x23EEC3A60](v21);
      result = sub_23BFFADF0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v26;
      *(v16 + 8) = v25;
      *(v16 + 16) = v24;
      *(v16 + 24) = v23;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_23BFE68C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_23BF4A264(&qword_27E1E2CC0);
  v35 = a2;
  result = sub_23BFFAB30();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_23BF66650(v22, v36);
      }

      else
      {
        sub_23BF4A6AC(v22, v36);
        v23 = v21;
      }

      sub_23BFFA300();
      sub_23BFFAD90();
      sub_23BFFA3A0();
      v24 = sub_23BFFADF0();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_23BF66650(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_23BFE6B90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_23BF4A264(&qword_27E1E2638);
  result = sub_23BFFAB30();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_23BFFA870();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_23BFE6DF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_23BF4A264(&qword_27E1E2D30);
  v33 = a2;
  result = sub_23BFFAB30();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_23BF66650(v24, v34);
      }

      else
      {
        sub_23BF4A6AC(v24, v34);
      }

      sub_23BFFAD90();
      sub_23BFFA3A0();
      result = sub_23BFFADF0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_23BF66650(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_23BFE70B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_23BF4A264(&qword_27E1E2E08);
  v34 = a2;
  result = sub_23BFFAB30();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_23BFFAD90();
      sub_23BFFA3A0();
      result = sub_23BFFADF0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23BFE7358(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_23BF4A264(&qword_27E1E0BE0);
  result = sub_23BFFAB30();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_23BF66650((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_23BFE555C(v23, &v36);
        sub_23BF4A6AC(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_23BFFA990();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_23BF66650(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_23BFE7610(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_23BF4A264(&qword_27E1E2D58);
  result = sub_23BFFAB30();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_23BFFAD90();
      MEMORY[0x23EEC3A60](v20);
      result = sub_23BFFADF0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_23BFE7894(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_23BF4A264(a3);
  v36 = a2;
  result = sub_23BFFAB30();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_23BFFAD90();
      sub_23BFFA3A0();
      result = sub_23BFFADF0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

unint64_t sub_23BFE7B30(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_23BFE571C(a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 >= v20 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    v23 = result;
    sub_23BFE85C4();
    result = v23;
    goto LABEL_8;
  }

  sub_23BFE661C(v20, a4 & 1);
  result = sub_23BFE571C(a3);
  if ((v21 & 1) == (v24 & 1))
  {
LABEL_8:
    v25 = *v7;
    if (v21)
    {
      v26 = v25[7] + 32 * result;
      *v26 = a5;
      *(v26 + 8) = a6;
      *(v26 + 16) = a1;
      *(v26 + 24) = a2 & 1;
      return result;
    }

    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 8 * result) = a3;
    v27 = v25[7] + 32 * result;
    *v27 = a5;
    *(v27 + 8) = a6;
    *(v27 + 16) = a1;
    *(v27 + 24) = a2 & 1;
    v28 = v25[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      v25[2] = v29;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_23BFFAD10();
  __break(1u);
  return result;
}

_OWORD *sub_23BFE7CA4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_23BFE5720(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_23BFE872C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_23BFE68C0(v13, a3 & 1);
    v8 = sub_23BFE5720(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_23BFFAD10();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_23BF4A9A4(v19);

    return sub_23BF66650(a1, v19);
  }

  else
  {
    sub_23BFE84F0(v8, a2, a1, v18);

    return a2;
  }
}

void sub_23BFE7DE4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_23BFE2D80(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_23BFE6B90(v13, a3 & 1);
      v8 = sub_23BFE2D80(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for ParmesanTimeLayout();
        sub_23BFFAD10();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_23BFE88AC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

_OWORD *sub_23BFE7F4C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23BFE2D08(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23BFE8A0C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23BFE6DF8(v16, a4 & 1);
    v11 = sub_23BFE2D08(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_23BFFAD10();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_23BF4A9A4(v22);

    return sub_23BF66650(a1, v22);
  }

  else
  {
    sub_23BFE8558(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_23BFE809C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23BFE2D08(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23BFE70B0(v16, a4 & 1);
      v11 = sub_23BFE2D08(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_23BFFAD10();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23BFE8BB0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_23BFE8218(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23BFE571C(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_23BFE8EC4();
    result = v17;
    goto LABEL_8;
  }

  sub_23BFE7610(v14, a2 & 1);
  result = sub_23BFE571C(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for CLKDeviceSizeClass(0);
  result = sub_23BFFAD10();
  __break(1u);
  return result;
}

void sub_23BFE8354(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_23BFE2D08(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_23BFE7894(v18, a4 & 1, a5);
      v13 = sub_23BFE2D08(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_23BFFAD10();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_23BFE9010(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v13);
    *(v24 + 8 * v13) = a1;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a2;
  v26[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

_OWORD *sub_23BFE84F0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_23BF66650(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_23BFE8558(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23BF66650(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_23BFE85C4()
{
  v1 = v0;
  sub_23BF4A264(&qword_27E1E2CA8);
  v2 = *v0;
  v3 = sub_23BFFAB20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 24) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 32 * v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *v17;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 32 * v14;
      *v21 = v20;
      *(v21 + 16) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_23BFE872C()
{
  v1 = v0;
  sub_23BF4A264(&qword_27E1E2CC0);
  v2 = *v0;
  v3 = sub_23BFFAB20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        sub_23BF4A6AC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_23BF66650(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_23BFE88AC()
{
  v1 = v0;
  sub_23BF4A264(&qword_27E1E2638);
  v2 = *v0;
  v3 = sub_23BFFAB20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_23BFE8A0C()
{
  v1 = v0;
  sub_23BF4A264(&qword_27E1E2D30);
  v2 = *v0;
  v3 = sub_23BFFAB20();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_23BF4A6AC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23BF66650(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_23BFE8BB0()
{
  v1 = v0;
  sub_23BF4A264(&qword_27E1E2E08);
  v2 = *v0;
  v3 = sub_23BFFAB20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_23BFE8D20()
{
  v1 = v0;
  sub_23BF4A264(&qword_27E1E0BE0);
  v2 = *v0;
  v3 = sub_23BFFAB20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_23BFE555C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_23BF4A6AC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_23BF66650(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_23BFE8EC4()
{
  v1 = v0;
  sub_23BF4A264(&qword_27E1E2D58);
  v2 = *v0;
  v3 = sub_23BFFAB20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_23BFE9010(uint64_t *a1)
{
  v2 = v1;
  sub_23BF4A264(a1);
  v3 = *v1;
  v4 = sub_23BFFAB20();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_23BFE916C(void *a1)
{
  v1 = [a1 sizeClass];
  if ((v1 - 3) > 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_23C0096E8[(v1 - 3)];
  }

  v3 = 8 * v2;
  v4 = *(&unk_284EBA970 + v3 + 32);
  v5 = *(&unk_284EBA9D0 + v3 + 32);
  v6 = *(&unk_284EBAA30 + v3 + 32);
  v7 = *(&unk_284EBAA90 + v3 + 32);
  v8 = *(&unk_284EBAAF0 + v3 + 32);
  sub_23BF4A264(&qword_27E1E2E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C007980;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  *(inited + 72) = 1;
  *(inited + 80) = v5;
  *(inited + 88) = v4;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  *(inited + 112) = 2;
  *(inited + 120) = v8;
  *(inited + 128) = v6;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 3;
  *(inited + 160) = v8;
  *(inited + 168) = v7;
  *(inited + 176) = v6;
  *(inited + 184) = 0;
  v10 = sub_23BFE3F10(inited);
  swift_setDeallocating();
  return v10;
}

unint64_t sub_23BFE92D0(void *a1)
{
  v2 = [a1 sizeClass];
  if ((v2 - 3) > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_23C0096E8[(v2 - 3)];
  }

  v4 = 8 * v3;
  v5 = *(&unk_284EBAB50 + v4 + 32);
  v6 = *(&unk_284EBABB0 + v4 + 32);
  v7 = sub_23BFE916C(a1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23BFE7B30(0, 1, 0, isUniquelyReferenced_nonNull_native, v6, v5);
  return v7;
}

unint64_t sub_23BFE9390(void *a1)
{
  v2 = [a1 sizeClass];
  if ((v2 - 3) > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_23C0096E8[(v2 - 3)];
  }

  v4 = 8 * v3;
  v5 = *(&unk_284EBAC10 + v4 + 32);
  v6 = *(&unk_284EBAC70 + v4 + 32);
  v7 = sub_23BFE916C(a1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23BFE7B30(0, 1, 0, isUniquelyReferenced_nonNull_native, v6, v5);
  return v7;
}

unint64_t sub_23BFE9450(void *a1)
{
  v2 = [a1 sizeClass];
  if ((v2 - 3) > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_23C0096E8[(v2 - 3)];
  }

  v4 = 8 * v3;
  v5 = *(&unk_284EBACD0 + v4 + 32);
  v6 = *(&unk_284EBAD30 + v4 + 32);
  v7 = *(&unk_284EBAD90 + v4 + 32);
  v8 = *(&unk_284EBADF0 + v4 + 32);
  v9 = sub_23BFE916C(a1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23BFE7B30(0, 1, 0, isUniquelyReferenced_nonNull_native, v6, v5);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_23BFE7B30(0, 1, 2, v11, v8, v7);
  return v9;
}

unint64_t sub_23BFE9570(void *a1)
{
  v2 = [a1 sizeClass];
  if ((v2 - 3) > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_23C0096E8[(v2 - 3)];
  }

  v4 = 8 * v3;
  v5 = *(&unk_284EBAE50 + v4 + 32);
  v6 = *(&unk_284EBAEB0 + v4 + 32);
  v7 = *(&unk_284EBAF10 + v4 + 32);
  v8 = *(&unk_284EBAF70 + v4 + 32);
  v9 = sub_23BFE916C(a1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23BFE7B30(0, 1, 0, isUniquelyReferenced_nonNull_native, v6, v5);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_23BFE7B30(0, 1, 2, v11, v8, v7);
  return v9;
}

unint64_t sub_23BFE9690(void *a1)
{
  v1 = [a1 sizeClass];
  if ((v1 - 3) > 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_23C0096E8[(v1 - 3)];
  }

  v3 = 8 * v2;
  v4 = *(&unk_284EBAFD0 + v3 + 32);
  v5 = *(&unk_284EBB030 + v3 + 32);
  v6 = *(&unk_284EBB090 + v3 + 32);
  v7 = *(&unk_284EBB0F0 + v3 + 32);
  v8 = *(&unk_284EBB150 + v3 + 32);
  v9 = *(&unk_284EBB1B0 + v3 + 32);
  v10 = *(&unk_284EBB210 + v3 + 32);
  sub_23BF4A264(&qword_27E1E2E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C007980;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v9;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  *(inited + 72) = 1;
  *(inited + 80) = v7;
  *(inited + 88) = v10;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  *(inited + 112) = 2;
  *(inited + 120) = v5;
  *(inited + 128) = v8;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 3;
  *(inited + 160) = v5;
  *(inited + 168) = v6;
  *(inited + 176) = v8;
  *(inited + 184) = 0;
  v12 = sub_23BFE3F10(inited);
  swift_setDeallocating();
  return v12;
}

unint64_t sub_23BFE9824(void *a1)
{
  v1 = [a1 sizeClass];
  if ((v1 - 3) > 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_23C0096E8[(v1 - 3)];
  }

  v3 = 8 * v2;
  v4 = *(&unk_284EBB270 + v3 + 32);
  v15 = *(&unk_284EBB2D0 + v3 + 32);
  v5 = *(&unk_284EBB330 + v3 + 32);
  v6 = *(&unk_284EBB390 + v3 + 32);
  v7 = *(&unk_284EBB3F0 + v3 + 32);
  v8 = *(&unk_284EBB450 + v3 + 32);
  v9 = *(&unk_284EBB4B0 + v3 + 32);
  v10 = *(&unk_284EBB510 + v3 + 32);
  v11 = *(&unk_284EBB570 + v3 + 32);
  sub_23BF4A264(&qword_27E1E2E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C007980;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v10;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  *(inited + 72) = 1;
  *(inited + 80) = v7;
  *(inited + 88) = v11;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  *(inited + 112) = 2;
  *(inited + 120) = v5;
  *(inited + 128) = v9;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 3;
  *(inited + 160) = v15;
  *(inited + 168) = v6;
  *(inited + 176) = v8;
  *(inited + 184) = 0;
  v13 = sub_23BFE3F10(inited);
  swift_setDeallocating();
  return v13;
}

unint64_t sub_23BFE99E8(void *a1)
{
  v1 = [a1 sizeClass];
  if ((v1 - 3) > 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_23C0096E8[(v1 - 3)];
  }

  v3 = 8 * v2;
  v4 = *(&unk_284EBB5D0 + v3 + 32);
  v5 = *(&unk_284EBB630 + v3 + 32);
  v6 = *(&unk_284EBB690 + v3 + 32);
  v7 = *(&unk_284EBB6F0 + v3 + 32);
  v8 = *(&unk_284EBB750 + v3 + 32);
  v9 = *(&unk_284EBB7B0 + v3 + 32);
  v10 = *(&unk_284EBB810 + v3 + 32);
  v11 = *(&unk_284EBB870 + v3 + 32);
  sub_23BF4A264(&qword_27E1E2E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C007980;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v9;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  *(inited + 72) = 1;
  *(inited + 80) = v6;
  *(inited + 88) = v10;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  *(inited + 112) = 2;
  *(inited + 120) = v5;
  *(inited + 128) = v8;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 3;
  *(inited + 160) = v11;
  *(inited + 168) = v11;
  *(inited + 176) = v7;
  *(inited + 184) = 0;
  v13 = sub_23BFE3F10(inited);
  swift_setDeallocating();
  return v13;
}

unint64_t sub_23BFE9B90(void *a1)
{
  v1 = [a1 sizeClass];
  if ((v1 - 3) > 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_23C0096E8[(v1 - 3)];
  }

  v3 = 8 * v2;
  v4 = *(&unk_284EBB8D0 + v3 + 32);
  v15 = *(&unk_284EBB930 + v3 + 32);
  v5 = *(&unk_284EBB990 + v3 + 32);
  v6 = *(&unk_284EBB9F0 + v3 + 32);
  v7 = *(&unk_284EBBA50 + v3 + 32);
  v8 = *(&unk_284EBBAB0 + v3 + 32);
  v9 = *(&unk_284EBBB10 + v3 + 32);
  v10 = *(&unk_284EBBB70 + v3 + 32);
  v11 = *(&unk_284EBBBD0 + v3 + 32);
  sub_23BF4A264(&qword_27E1E2E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C007980;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v10;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  *(inited + 72) = 1;
  *(inited + 80) = v7;
  *(inited + 88) = v11;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  *(inited + 112) = 2;
  *(inited + 120) = v5;
  *(inited + 128) = v9;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 3;
  *(inited + 160) = v15;
  *(inited + 168) = v6;
  *(inited + 176) = v8;
  *(inited + 184) = 0;
  v13 = sub_23BFE3F10(inited);
  swift_setDeallocating();
  return v13;
}

unint64_t sub_23BFE9D54(void *a1)
{
  v1 = [a1 sizeClass];
  if ((v1 - 3) > 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_23C0096E8[(v1 - 3)];
  }

  v3 = 8 * v2;
  v4 = *(&unk_284EBBC30 + v3 + 32);
  v5 = *(&unk_284EBBC90 + v3 + 32);
  v6 = *(&unk_284EBBCF0 + v3 + 32);
  v7 = *(&unk_284EBBD50 + v3 + 32);
  v8 = *(&unk_284EBBDB0 + v3 + 32);
  v9 = *(&unk_284EBBE10 + v3 + 32);
  v10 = *(&unk_284EBBE70 + v3 + 32);
  v11 = *(&unk_284EBBED0 + v3 + 32);
  sub_23BF4A264(&qword_27E1E2E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C007980;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v10;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  *(inited + 72) = 1;
  *(inited + 80) = v8;
  *(inited + 88) = v11;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  *(inited + 112) = 2;
  *(inited + 120) = v5;
  *(inited + 128) = v9;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 3;
  *(inited + 160) = v4;
  *(inited + 168) = v6;
  *(inited + 176) = v7;
  *(inited + 184) = 0;
  v13 = sub_23BFE3F10(inited);
  swift_setDeallocating();
  return v13;
}

unint64_t sub_23BFE9EFC(void *a1)
{
  v1 = [a1 sizeClass];
  if ((v1 - 3) > 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_23C0096E8[(v1 - 3)];
  }

  v3 = 8 * v2;
  v4 = *(&unk_284EBBF30 + v3 + 32);
  v15 = *(&unk_284EBBF90 + v3 + 32);
  v5 = *(&unk_284EBBFF0 + v3 + 32);
  v6 = *(&unk_284EBC050 + v3 + 32);
  v7 = *(&unk_284EBC0B0 + v3 + 32);
  v8 = *(&unk_284EBC110 + v3 + 32);
  v9 = *(&unk_284EBC170 + v3 + 32);
  v10 = *(&unk_284EBC1D0 + v3 + 32);
  v11 = *(&unk_284EBC230 + v3 + 32);
  sub_23BF4A264(&qword_27E1E2E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C007980;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v10;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  *(inited + 72) = 1;
  *(inited + 80) = v6;
  *(inited + 88) = v11;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  *(inited + 112) = 2;
  *(inited + 120) = v5;
  *(inited + 128) = v9;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 3;
  *(inited + 160) = v15;
  *(inited + 168) = v7;
  *(inited + 176) = v8;
  *(inited + 184) = 0;
  v13 = sub_23BFE3F10(inited);
  swift_setDeallocating();
  return v13;
}

unint64_t sub_23BFEA0C0(void *a1)
{
  v1 = [a1 sizeClass];
  if ((v1 - 3) > 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_23C0096E8[(v1 - 3)];
  }

  v3 = 8 * v2;
  v4 = *(&unk_284EBC290 + v3 + 32);
  v15 = *(&unk_284EBC2F0 + v3 + 32);
  v5 = *(&unk_284EBC350 + v3 + 32);
  v6 = *(&unk_284EBC3B0 + v3 + 32);
  v7 = *(&unk_284EBC410 + v3 + 32);
  v8 = *(&unk_284EBC470 + v3 + 32);
  v9 = *(&unk_284EBC4D0 + v3 + 32);
  v10 = *(&unk_284EBC530 + v3 + 32);
  v11 = *(&unk_284EBC590 + v3 + 32);
  sub_23BF4A264(&qword_27E1E2E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C007980;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v10;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  *(inited + 72) = 1;
  *(inited + 80) = v6;
  *(inited + 88) = v11;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  *(inited + 112) = 2;
  *(inited + 120) = v5;
  *(inited + 128) = v9;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 3;
  *(inited + 160) = v15;
  *(inited + 168) = v7;
  *(inited + 176) = v8;
  *(inited + 184) = 0;
  v13 = sub_23BFE3F10(inited);
  swift_setDeallocating();
  return v13;
}

unint64_t sub_23BFEA284(void *a1)
{
  v1 = [a1 sizeClass];
  if ((v1 - 3) > 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_23C0096E8[(v1 - 3)];
  }

  v3 = 8 * v2;
  v4 = *(&unk_284EBC5F0 + v3 + 32);
  v5 = *(&unk_284EBC650 + v3 + 32);
  v6 = *(&unk_284EBC6B0 + v3 + 32);
  v7 = *(&unk_284EBC710 + v3 + 32);
  v8 = *(&unk_284EBC770 + v3 + 32);
  v9 = *(&unk_284EBC7D0 + v3 + 32);
  v10 = *(&unk_284EBC830 + v3 + 32);
  sub_23BF4A264(&qword_27E1E2E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C007980;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v9;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  *(inited + 72) = 1;
  *(inited + 80) = v6;
  *(inited + 88) = v10;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  *(inited + 112) = 2;
  *(inited + 120) = v4;
  *(inited + 128) = v8;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 3;
  *(inited + 160) = v4;
  *(inited + 168) = v5;
  *(inited + 176) = v7;
  *(inited + 184) = 0;
  v12 = sub_23BFE3F10(inited);
  swift_setDeallocating();
  return v12;
}

id sub_23BFEA418(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___NTKParmesanTypefaceMetrics_fallbackFontWidth] = 0x4042000000000000;
  *&v1[OBJC_IVAR___NTKParmesanTypefaceMetrics_fallbackFontSize] = 0x4060C00000000000;
  v3 = OBJC_IVAR___NTKParmesanTypefaceMetrics_scale;
  *&v1[OBJC_IVAR___NTKParmesanTypefaceMetrics_scale] = 0x4000000000000000;
  *&v1[OBJC_IVAR___NTKParmesanTypefaceMetrics_device] = a1;
  v4 = a1;
  [v4 screenScale];
  *&v1[v3] = v5;
  sub_23BF4A264(&qword_27E1E2DE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C005210;
  *(inited + 32) = 0;
  v7 = sub_23BFE916C(v4);
  v8 = sub_23BFE916C(v4);
  v9 = sub_23BFE916C(v4);
  sub_23BF4A264(&qword_27E1E2DE8);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_23C005210;
  *(v10 + 32) = 0;
  *(v10 + 40) = v7;
  *(v10 + 48) = 1;
  *(v10 + 56) = v8;
  *(v10 + 64) = 2;
  *(v10 + 72) = v9;
  v11 = sub_23BFE400C(v10);
  swift_setDeallocating();
  sub_23BF4A264(&qword_27E1E2DF0);
  swift_arrayDestroy();
  *(inited + 40) = v11;
  *(inited + 48) = 1;
  v12 = sub_23BFE916C(v4);
  v13 = sub_23BFE92D0(v4);
  v14 = sub_23BFE9390(v4);
  v15 = swift_initStackObject();
  *(v15 + 32) = 0;
  *(v15 + 16) = xmmword_23C005210;
  *(v15 + 40) = v12;
  *(v15 + 48) = 1;
  *(v15 + 56) = v13;
  *(v15 + 64) = 2;
  *(v15 + 72) = v14;
  v16 = sub_23BFE400C(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 56) = v16;
  *(inited + 64) = 2;
  v17 = sub_23BFE916C(v4);
  v18 = sub_23BFE9450(v4);
  v19 = sub_23BFE9570(v4);
  v20 = swift_initStackObject();
  *(v20 + 32) = 0;
  *(v20 + 16) = xmmword_23C005210;
  *(v20 + 40) = v17;
  *(v20 + 48) = 1;
  *(v20 + 56) = v18;
  *(v20 + 64) = 2;
  *(v20 + 72) = v19;
  v21 = sub_23BFE400C(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 72) = v21;
  v22 = sub_23BFE4020(inited);
  swift_setDeallocating();
  sub_23BF4A264(&qword_27E1E2DF8);
  swift_arrayDestroy();
  *&v1[OBJC_IVAR___NTKParmesanTypefaceMetrics_fontSizes] = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23C005210;
  *(v23 + 32) = 0;
  v24 = sub_23BFE9690(v4);
  v25 = sub_23BFE9824(v4);
  v26 = sub_23BFE99E8(v4);
  v27 = swift_initStackObject();
  *(v27 + 32) = 0;
  *(v27 + 16) = xmmword_23C005210;
  *(v27 + 40) = v24;
  *(v27 + 48) = 1;
  *(v27 + 56) = v25;
  *(v27 + 64) = 2;
  *(v27 + 72) = v26;
  v28 = sub_23BFE400C(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v23 + 40) = v28;
  *(v23 + 48) = 1;
  v29 = sub_23BFE9B90(v4);
  v30 = sub_23BFE9D54(v4);
  v31 = sub_23BFE9EFC(v4);
  v32 = swift_initStackObject();
  *(v32 + 32) = 0;
  *(v32 + 16) = xmmword_23C005210;
  *(v32 + 40) = v29;
  *(v32 + 48) = 1;
  *(v32 + 56) = v30;
  *(v32 + 64) = 2;
  *(v32 + 72) = v31;
  v33 = sub_23BFE400C(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v23 + 56) = v33;
  *(v23 + 64) = 2;
  v34 = sub_23BFEA0C0(v4);
  v35 = sub_23BFE9824(v4);
  v36 = sub_23BFEA284(v4);
  v37 = swift_initStackObject();
  *(v37 + 32) = 0;
  *(v37 + 16) = xmmword_23C005210;
  *(v37 + 40) = v34;
  *(v37 + 48) = 1;
  *(v37 + 56) = v35;
  *(v37 + 64) = 2;
  *(v37 + 72) = v36;
  v38 = sub_23BFE400C(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v23 + 72) = v38;
  v39 = sub_23BFE4020(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  *&v1[OBJC_IVAR___NTKParmesanTypefaceMetrics_fontWidths] = v39;
  v42.receiver = v1;
  v42.super_class = ObjectType;
  return objc_msgSendSuper2(&v42, sel_init);
}

double sub_23BFEA8E0(uint64_t a1, id a2)
{
  v3 = [a2 sizeClass];
  if ((v3 - 3) > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_23C0096E8[(v3 - 3)];
  }

  if ((a1 - 3) <= 0xB)
  {
    return *(*(&off_278BA77D8 + a1 - 3) + v5);
  }

  return result;
}

uint64_t sub_23BFEA968(uint64_t a1)
{
  result = [objc_opt_self() isPartiallySupported_];
  if (result)
  {
    v3 = sub_23BFF395C([*(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device) sizeClass]);
    v4 = CLKLocaleNumberSystemFromNumeralOption();
    if (*(v3 + 16))
    {
      sub_23BFE571C(v4);
    }
  }

  else if (*(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface) >= 3uLL)
  {
    result = sub_23BFFACF0();
    __break(1u);
  }

  return result;
}

id sub_23BFEAC68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmseanPassthroughView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23BFEACC0()
{
  result = qword_27E1E1998;
  if (!qword_27E1E1998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E1998);
  }

  return result;
}

void sub_23BFEAD0C(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_backdropGroupName];
  *v3 = a1;
  *(v3 + 1) = a2;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ParmesanBackdropView();
  v4 = objc_msgSendSuper2(&v8, sel_layer);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  if (*(v3 + 1))
  {
    v6 = v5;

    v7 = sub_23BFFA2C0();

    v5 = v6;
  }

  else
  {
    v7 = 0;
  }

  [v5 setGroupName_];
}

char *sub_23BFEAE1C(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_23BFFAAB0();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_23BFCE280(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x23EEC36D0](i, a1);
        sub_23BF4BDF0(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_23BFCE280((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_23BF66650(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_23BF4BDF0(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_23BFCE280((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_23BF66650(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

char *sub_23BFEB008(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_maskingView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for ParmseanPassthroughView()) initWithFrame_];
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_backdropMarginWidth] = 0;
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_backdropFilters] = MEMORY[0x277D84F90];
  v10 = &v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_backdropGroupName];
  v11 = type metadata accessor for ParmesanMaskedBackdropView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v32.receiver = v4;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = type metadata accessor for ParmesanBackdropView();
  v31.receiver = v12;
  v31.super_class = v13;
  v14 = v12;
  v15 = objc_msgSendSuper2(&v31, sel_layer);
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setMarginWidth_];

  v30.receiver = v14;
  v30.super_class = v13;
  v16 = objc_msgSendSuper2(&v30, sel_layer);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClassUnconditional();

  sub_23BFEAE1C(v18, &qword_27E1E11F0);

  v19 = sub_23BFFA450();

  [v17 setFilters_];

  v29.receiver = v14;
  v29.super_class = v13;
  v20 = objc_msgSendSuper2(&v29, sel_layer);

  objc_opt_self();
  v21 = swift_dynamicCastObjCClassUnconditional();
  if (*&v14[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_backdropGroupName + 8])
  {
    v22 = v21;

    v23 = sub_23BFFA2C0();

    v21 = v22;
  }

  else
  {
    v23 = 0;
  }

  [v21 setGroupName_];

  v24 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_maskingView;
  v25 = *&v14[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_maskingView];
  [v14 bounds];
  [v25 setFrame_];

  v26 = [*&v14[v24] layer];
  v27 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v26 setCompositingFilter_];

  [v14 addSubview_];
  return v14;
}

uint64_t sub_23BFEB568()
{
}

id sub_23BFEB5BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanMaskedBackdropView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_23BFEB674(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, double a7, double a8, double a9, double a10)
{
  if (a5)
  {
    v58 = a5;
  }

  else
  {
    v58 = sub_23BFA3D38(a4);
  }

  v63 = a5;
  v61 = a6;
  if ([a6 isVibrantOption])
  {
    v56 = 0;
    v17 = 2;
LABEL_9:
    v62 = v17;
    goto LABEL_10;
  }

  if (([a6 isGlassOption] & 1) == 0)
  {
    v56 = [a6 primaryColor];
    v17 = 1;
    goto LABEL_9;
  }

  [a6 frostAmount];
  v62 = 0;
  *&v18 = v18;
  v56 = LODWORD(v18);
LABEL_10:
  v19 = type metadata accessor for ParmesanGalleryView();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR___NTKParmesanGalleryView_currentItem] = 0;
  *&v20[OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility] = 0;
  v21 = OBJC_IVAR___NTKParmesanGalleryView_complicationVibrantEffectView;
  *&v20[v21] = [objc_allocWithZone(type metadata accessor for ParmesanVibrantEffectView()) initWithFrame_];
  *&v20[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView] = 0;
  v22 = OBJC_IVAR___NTKParmesanGalleryView_backgroundContainerView;
  v23 = type metadata accessor for ParmesanGalleryTransitionContainerView();
  *&v20[v22] = [objc_allocWithZone(v23) initWithFrame_];
  v24 = OBJC_IVAR___NTKParmesanGalleryView_foregroundContainerView;
  *&v20[v24] = [objc_allocWithZone(v23) initWithFrame_];
  v25 = OBJC_IVAR___NTKParmesanGalleryView_contentEffect;
  *&v20[OBJC_IVAR___NTKParmesanGalleryView_contentEffect] = 0;
  v20[OBJC_IVAR___NTKParmesanGalleryView_isGeneratingSwatch] = 0;
  v20[OBJC_IVAR___NTKParmesanGalleryView_pausedState] = 1;
  *&v20[OBJC_IVAR___NTKParmesanGalleryView_tritiumProgress] = 0;
  swift_unknownObjectWeakInit();
  v26 = OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator;
  *&v20[v26] = [objc_allocWithZone(type metadata accessor for ParmesanGalleryTransitionCoordinator()) init];
  v27 = &v20[OBJC_IVAR___NTKParmesanGalleryView_transitioningContentEffects];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v20[OBJC_IVAR___NTKParmesanGalleryView_tritiumTransition];
  type metadata accessor for ParmesanGalleryTransitionTritiumOn();
  *v28 = swift_allocObject();
  v28[1] = &off_284EBFF38;
  v29 = *&v20[v25];
  *&v20[v25] = 0;

  v30 = objc_allocWithZone(type metadata accessor for ParmesanGalleryNoPhotosView());
  v31 = a1;
  *&v20[OBJC_IVAR___NTKParmesanGalleryView_noPhotosView] = sub_23BF7F7AC(v31, 0.0, 0.0, a9, a10);
  *&v20[OBJC_IVAR___NTKParmesanGalleryView_device] = v31;
  v68.receiver = v20;
  v68.super_class = v19;
  v32 = v31;
  v33 = objc_msgSendSuper2(&v68, sel_initWithFrame_, a7, a8, a9, a10);
  [v33 setClipsToBounds_];
  v34 = [objc_opt_self() blackColor];
  [v33 setBackgroundColor_];

  v35 = [v33 layer];
  [v35 setAllowsGroupOpacity_];

  v36 = sub_23BFFA360();
  v66 = 0x6E6173656D726170;
  v67 = 0xEF2D73656269762DLL;
  MEMORY[0x23EEC3090](v36);

  v37 = OBJC_IVAR___NTKParmesanGalleryView_backgroundContainerView;
  [*&v33[OBJC_IVAR___NTKParmesanGalleryView_backgroundContainerView] setFrame_];
  [v33 addSubview_];
  v38 = type metadata accessor for ParmesanTimeAppearance();
  v39 = objc_allocWithZone(v38);
  *&v39[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v32;
  *&v39[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v58;
  *&v39[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = a2;
  *&v39[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = a3;
  v40 = &v39[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
  *v40 = v56;
  v40[8] = v62;
  v60 = v32;
  v41 = v58;
  sub_23BF674B4(v56, v62);
  v65.receiver = v39;
  v65.super_class = v38;
  v42 = objc_msgSendSuper2(&v65, sel_init);
  v43 = *&v33[OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility];
  v44 = type metadata accessor for ParmesanTimeContainerView();
  v45 = objc_allocWithZone(v44);
  *&v45[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_tritiumProgress] = 0;
  v45[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_timeTransition] = 1;
  v45[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_isFrozen] = 0;
  v46 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_overrideDate;
  v47 = sub_23BFF8D90();
  (*(*(v47 - 8) + 56))(&v45[v46], 1, 1, v47);
  *&v45[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView] = 0;
  *&v45[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView] = 0;
  *&v45[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView] = 0;
  *&v45[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance] = v42;
  *&v45[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_complicationVisibility] = v43;
  v48 = &v45[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_backdropGroupName];
  *v48 = 0x6E6173656D726170;
  v48[1] = 0xEF2D73656269762DLL;
  v64.receiver = v45;
  v64.super_class = v44;
  v49 = v42;

  v50 = objc_msgSendSuper2(&v64, sel_initWithFrame_, 0.0, 0.0, a9, a10);
  [v50 setUserInteractionEnabled_];
  sub_23BFBC958();
  sub_23BFBCAFC();

  v51 = *&v33[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView];
  *&v33[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView] = v50;

  [v33 addSubview_];
  v52 = OBJC_IVAR___NTKParmesanGalleryView_complicationVibrantEffectView;
  [*&v33[OBJC_IVAR___NTKParmesanGalleryView_complicationVibrantEffectView] setFrame_];
  v53 = *&v33[v52];
  sub_23BFEAD0C(0x6E6173656D726170, 0xEF2D73656269762DLL);

  sub_23BF98920();
  v54 = OBJC_IVAR___NTKParmesanGalleryView_foregroundContainerView;
  [*&v33[OBJC_IVAR___NTKParmesanGalleryView_foregroundContainerView] setFrame_];
  [v33 addSubview_];

  sub_23BF674C8(v56, v62);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v33;
}

void sub_23BFEBE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_23BFA3D38(a1);
  v8 = *&v4[OBJC_IVAR___NTKParmesanGalleryView_currentItem];
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition);
    if (v9)
    {
      type metadata accessor for ParmesanAssetComposition();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR___NTKParmesanAssetComposition_asset);
        v12 = v9;
        sub_23BF8C84C(v11, a1);
        v14 = v13;

        v7 = v14;
      }
    }
  }

  v15 = [v4 timeAppearance];
  v16 = *&v15[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device];
  v17 = *&v15[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
  v18 = v15[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
  v19 = type metadata accessor for ParmesanTimeAppearance();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v16;
  *&v20[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v7;
  *&v20[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = a2;
  *&v20[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = a3;
  v21 = &v20[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
  *v21 = v17;
  v21[8] = v18;
  v22 = v7;
  v23 = v16;
  sub_23BF674B4(v17, v18);
  v45.receiver = v20;
  v45.super_class = v19;
  v24 = objc_msgSendSuper2(&v45, sel_init);

  v25 = *&v5[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView];
  if (v25)
  {
    v26 = v25;
    sub_23BFBC5B8(v24);

    v27 = OBJC_IVAR___NTKParmesanGalleryView_contentEffect;
    v28 = *&v5[OBJC_IVAR___NTKParmesanGalleryView_contentEffect];
    if (v28)
    {
      v29 = *(v28 + OBJC_IVAR___NTKParmesanGalleryContentEffect_palette);
      v30 = type metadata accessor for ParmesanGalleryContentEffect();
      v31 = objc_allocWithZone(v30);
      *&v31[OBJC_IVAR___NTKParmesanGalleryContentEffect_styleOption] = a4;
      *&v31[OBJC_IVAR___NTKParmesanGalleryContentEffect_palette] = v29;
      v32 = v29;
      v33 = sub_23BFBE158(a4, v32);
      v34 = &v31[OBJC_IVAR___NTKParmesanGalleryContentEffect_style];
      *v34 = v33;
      v34[1] = v35;
      v34[2] = v36;
      v34[3] = v37;
      v44.receiver = v31;
      v44.super_class = v30;
      v38 = objc_msgSendSuper2(&v44, sel_init);

      v39 = *&v5[v27];
    }

    else
    {
      v39 = 0;
      v38 = 0;
    }

    *&v5[v27] = v38;
    v40 = v38;

    sub_23BF98D38(v38);
  }

  else
  {
    __break(1u);
  }
}

void sub_23BFEC1A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_23BFEC208(void *a1)
{
  v2 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_contentView;
  v6 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_contentView];
  *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_contentView] = a1;
  v3 = a1;
  [v6 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSubview_];
  }
}

void sub_23BFEC49C()
{
  v1 = &v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_targetSize];
  if ((v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_targetSize + 16] & 1) != 0 || (v3 = v1[1], v3 <= 0.0) || (v4 = *v1, *v1 <= 0.0))
  {
    v2 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_contentView];
    if (v2)
    {
      v15.a = 1.0;
      v15.b = 0.0;
      v15.c = 0.0;
      v15.d = 1.0;
      v15.tx = 0.0;
      v15.ty = 0.0;
      [v2 setTransform_];
    }

    v14.receiver = v0;
    v14.super_class = type metadata accessor for PreviewScalingView();
    objc_msgSendSuper2(&v14, sel_layoutSubviews);
  }

  else
  {
    [v0 bounds];
    v6 = v5 / v4;
    [v0 bounds];
    if (v7 / v3 < v6)
    {
      v6 = v7 / v3;
    }

    v8 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_targetCornerRadius];
    if (v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_targetCornerRadius + 8])
    {
      v8 = 0.0;
    }

    v9 = v8 * v6;
    v10 = [v0 layer];
    [v10 setCornerRadius_];

    v11 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_contentView;
    v12 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_contentView];
    if (v12)
    {
      CGAffineTransformMakeScale(&v15, v6, v6);
      [v12 setTransform_];
      v13 = *&v0[v11];
      if (v13)
      {
        [v13 setFrame_];
      }
    }
  }
}

id sub_23BFEC6D4(void *a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_hasLoadedPreview] = 0;
  v7 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_indicatorView;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_frameContentView] = 0;
  *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_sourceFace] = a1;
  *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_device] = a2;
  *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_upgradeManager] = a3;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for ParmesanUpgradeOptInViewController();
  v8 = a1;
  v9 = a2;
  v10 = a3;
  result = objc_msgSendSuper2(&v13, sel_init);
  if (result)
  {
    v12 = result;
    [v12 setStyle_];

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23BFECAD0()
{
  v1 = type metadata accessor for ParmesanUpgradeOptInViewController();
  v24.receiver = v0;
  v24.super_class = v1;
  objc_msgSendSuper2(&v24, sel_loadView);
  sub_23BF4BDF0(0, &qword_27E1E0930);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_23BFFA2C0();
  v4 = sub_23BFFA2C0();
  v5 = [ObjCClassFromMetadata localizedStringForKey:v3 comment:v4];

  sub_23BFFA300();
  v23 = v1;
  v22[0] = v0;
  v6 = v0;
  v7 = sub_23BFFA2C0();

  v8 = v23;
  if (v23)
  {
    v9 = sub_23BF4C484(v22, v23);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x28223BE20](v9);
    v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_23BFFACA0();
    (*(v10 + 8))(v13, v8);
    sub_23BF4A9A4(v22);
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v16 = [v15 initWithTitle:v7 style:0 target:v14 action:{sel_cancelTapped_, v22[0]}];

  swift_unknownObjectRelease();
  v17 = [v6 navigationItem];
  [v17 setLeftBarButtonItem_];

  v18 = [v6 navigationController];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 navigationBar];

    v21 = [objc_opt_self() tintColor];
    [v20 setTintColor_];
  }
}

id sub_23BFECE0C(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ParmesanUpgradeOptInViewController();
  result = objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1 & 1);
  v4 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_hasLoadedPreview;
  if ((v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_hasLoadedPreview] & 1) == 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_indicatorView];
    sub_23BFECF34(v5);
    result = [v5 startAnimating];
    if ((v1[v4] & 1) == 0)
    {
      v1[v4] = 1;
      v6 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_upgradeManager];
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_23BF62AEC(v6, v7);
    }
  }

  return result;
}

void sub_23BFECF34(void *a1)
{
  v3 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_frameContentView;
  [*&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_frameContentView] removeFromSuperview];
  v4 = [v1 illustratedWatchView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 addSubview_];

  v6 = [v1 illustratedWatchView];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  [v6 watchScreenInsetGuide];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_23BF4A264(&qword_27E1E05E0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23C008D50;
  v17 = [a1 leadingAnchor];
  v18 = [v1 illustratedWatchView];
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor:v20 constant:v9];
  *(v16 + 32) = v21;
  v22 = [a1 topAnchor];
  v23 = [v1 illustratedWatchView];
  if (!v23)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v24 topAnchor];

  v27 = [v22 constraintEqualToAnchor:v26 constant:v11];
  *(v16 + 40) = v27;
  v28 = [a1 widthAnchor];
  v29 = [v28 constraintEqualToConstant_];

  *(v16 + 48) = v29;
  v30 = [a1 heightAnchor];
  v31 = [v30 constraintEqualToConstant_];

  *(v16 + 56) = v31;
  sub_23BF4BDF0(0, &qword_27E1E0610);
  v32 = sub_23BFFA450();

  [v25 activateConstraints_];

  v34 = *&v1[v3];
  *&v1[v3] = a1;
  v33 = a1;
}

void sub_23BFED260()
{
  v1 = v0;
  if (qword_27E1DFDD8 != -1)
  {
    swift_once();
  }

  v2 = sub_23BFF92B0();
  sub_23BF4A22C(v2, qword_27E1EB558);
  v3 = sub_23BFF9290();
  v4 = sub_23BFFA640();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BF0C000, v3, v4, "User tapped Cancel", v5, 2u);
    MEMORY[0x23EEC4DF0](v5, -1, -1);
  }

  sub_23BF5F950();
  v6 = [v1 presentingViewController];
  if (v6)
  {
    v7 = v6;
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_23BFED3C8()
{
  v1 = [v0 navigationItem];
  v2 = [v1 leftBarButtonItem];

  if (v2)
  {
    [v2 setEnabled_];
  }

  v3 = [v0 buttonTray];
  v4 = [v3 allButtons];

  sub_23BF4BDF0(0, &qword_27E1E2E90);
  v5 = sub_23BFFA460();

  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23BFFAAB0())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EEC36D0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 showsBusyIndicator];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return sub_23BFEDD9C();
}

uint64_t sub_23BFED588(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_23BFFA960();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return sub_23BF4A9A4(&v9);
}

void sub_23BFED5FC(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [*(Strong + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_indicatorView) stopAnimating];
    if (a2)
    {
      v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_hasLoadedPreview] = 0;
      v6 = a2;
      if (qword_27E1DFDD8 != -1)
      {
        swift_once();
      }

      v7 = sub_23BFF92B0();
      sub_23BF4A22C(v7, qword_27E1EB558);
      v8 = a2;
      v9 = sub_23BFF9290();
      v10 = sub_23BFFA650();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        v13 = a2;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v14;
        *v12 = v14;
        _os_log_impl(&dword_23BF0C000, v9, v10, "Upgrade preview generation failed: %@", v11, 0xCu);
        sub_23BF713D8(v12);
        MEMORY[0x23EEC4DF0](v12, -1, -1);
        MEMORY[0x23EEC4DF0](v11, -1, -1);

LABEL_7:
        return;
      }
    }

    else
    {
      if (!a1)
      {
        v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_hasLoadedPreview] = 0;
        if (qword_27E1DFDD8 != -1)
        {
          swift_once();
        }

        v35 = sub_23BFF92B0();
        sub_23BF4A22C(v35, qword_27E1EB558);
        v9 = sub_23BFF9290();
        v36 = sub_23BFFA650();
        if (os_log_type_enabled(v9, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_23BF0C000, v9, v36, "Logic error, error or face should be non-nil", v37, 2u);
          MEMORY[0x23EEC4DF0](v37, -1, -1);
        }

        goto LABEL_7;
      }

      v15 = qword_27E1DFDD8;
      v16 = a1;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = sub_23BFF92B0();
      sub_23BF4A22C(v17, qword_27E1EB558);
      v18 = v16;
      v19 = sub_23BFF9290();
      v20 = sub_23BFFA630();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v38 = v22;
        *v21 = 136315138;
        v23 = *&v18[OBJC_IVAR___NTKParmesanAsset_localIdentifier];
        v24 = *&v18[OBJC_IVAR___NTKParmesanAsset_localIdentifier + 8];

        v25 = sub_23BF62294(v23, v24, &v38);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_23BF0C000, v19, v20, "Preview loaded for asset: %s", v21, 0xCu);
        sub_23BF4A9A4(v22);
        MEMORY[0x23EEC4DF0](v22, -1, -1);
        MEMORY[0x23EEC4DF0](v21, -1, -1);
      }

      v26 = sub_23BFEDA94(v18);
      v27 = [objc_allocWithZone(type metadata accessor for PreviewScalingView()) initWithFrame_];
      v28 = v26;
      sub_23BFEC208(v26);
      v29 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_device;
      [*&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_device] screenBounds];
      v30 = &v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_targetSize];
      *v30 = v31;
      *(v30 + 1) = v32;
      v30[16] = 0;
      [v27 setNeedsLayout];
      [*&v5[v29] screenCornerRadius];
      v33 = &v27[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_DC3BA41EEB072E14570EF1C5DEF2692418PreviewScalingView_targetCornerRadius];
      *v33 = v34;
      v33[8] = 0;
      sub_23BFECF34(v27);
    }
  }
}

char *sub_23BFEDA94(void *a1)
{
  v2 = v1;
  v4 = sub_23BFF8D90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(type metadata accessor for ParmesanAssetComposition());
  v9 = sub_23BF8B178(a1, 0, 0);
  v10 = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_device);
  [v10 screenBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = qword_27E1DFD78;
  v20 = v10;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_27E1EB458;
  v22 = objc_allocWithZone(type metadata accessor for ParmesanGalleryView());
  v23 = sub_23BF98198(v20, 0, 0, v21, v12, v14, v16, v18);
  v24 = [v23 face_timeView];
  v25 = NTKIdealizedDate();
  if (v25)
  {
    v26 = v25;
    sub_23BFF8D80();

    v27 = sub_23BFF8D60();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v27 = 0;
  }

  [v24 setOverrideDate:v27 duration:0.0];

  v28 = *&v23[OBJC_IVAR___NTKParmesanGalleryView_noPhotosView];
  v29 = v9;
  [v28 removeFromSuperview];
  type metadata accessor for ParmesanGalleryTransitionNone();
  v30 = swift_allocObject();
  v31 = *&v23[OBJC_IVAR___NTKParmesanGalleryView_currentItem];
  if (v31)
  {
    v32 = *(v31 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition);
    v33 = v32;
  }

  else
  {
    v32 = 0;
  }

  sub_23BFEEF28(v32, v29, v30, v23, &off_284EBF7D0);

  v34 = v23;
  v35 = [v34 layer];
  [v35 setMasksToBounds_];

  return v34;
}

uint64_t sub_23BFEDD9C()
{
  v1 = v0;
  if (qword_27E1DFDD8 != -1)
  {
    swift_once();
  }

  v2 = sub_23BFF92B0();
  sub_23BF4A22C(v2, qword_27E1EB558);
  v3 = sub_23BFF9290();
  v4 = sub_23BFFA670();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BF0C000, v3, v4, "User confirmed Parmesan Face Creation, beginning process…", v5, 2u);
    MEMORY[0x23EEC4DF0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_upgradeManager);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23BF65A78(v6, v7);
}

void sub_23BFEDEC8(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27E1DFDD8 != -1)
    {
      swift_once();
    }

    v4 = sub_23BFF92B0();
    sub_23BF4A22C(v4, qword_27E1EB558);
    v5 = a2;
    v6 = sub_23BFF9290();
    v7 = sub_23BFFA650();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_23BF0C000, v6, v7, "Face upgrade failed: %@", v8, 0xCu);
      sub_23BF713D8(v9);
      MEMORY[0x23EEC4DF0](v9, -1, -1);
      MEMORY[0x23EEC4DF0](v8, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = a2;
      sub_23BFEF334();
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        v20 = *&v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController_upgradeManager];
        [v19 upgradeManager:v20 didCompleteWithFace:a1 error:0];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (!v21)
      {
        return;
      }
    }

    else
    {
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (!v21)
      {
        return;
      }
    }

    v22 = v21;
    v23 = [v21 presentingViewController];

    if (v23)
    {
      [v23 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_23BFEE194()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_23BFEE2C4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23BFEE3B8(void *a1, void *a2, uint64_t a3, char *a4, uint64_t a5)
{
  sub_23BF9B4B0();
  v7 = a1;
  v160 = a4;
  if (!a1)
  {
    v8 = *&a4[OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context;
    v10 = *v8;
    v9 = *(v8 + 8);
    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
    v14 = *(v8 + 32);
    v13 = *(v8 + 40);
    if (*v8)
    {
      v15 = *v8;
      v16 = *(v8 + 8);
      v17 = *(v8 + 16);
      if (v12)
      {
        sub_23BF9C89C(v15, v16, v17, *(v8 + 24), *(v8 + 32), *(v8 + 40));
        v18 = v12;
        sub_23BF9C940(v10, v9, v11, v12, v14, v13);
        v7 = *&v18[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition];
        v19 = v7;

        a4 = v160;
        goto LABEL_8;
      }

      sub_23BF9C89C(v15, v16, v17, 0, *(v8 + 32), *(v8 + 40));
      v20 = v10;
      v21 = v9;
      v22 = v11;
      v23 = 0;
    }

    else
    {
      sub_23BF9C89C(0, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40));
      v20 = 0;
      v21 = v9;
      v22 = v11;
      v23 = v12;
    }

    sub_23BF9C940(v20, v21, v22, v23, v14, v13);
    v7 = 0;
  }

LABEL_8:
  v161 = v7;
  v24 = a1;
  v25 = [a4 timeAppearance];
  v149 = OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator;
  v26 = *&a4[OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context;
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = *(v26 + 24);
  v32 = *(v26 + 32);
  v31 = *(v26 + 40);
  if (*v26)
  {
    v33 = *v26;
    v34 = *(v26 + 8);
    v35 = *(v26 + 16);
    v36 = *(v26 + 24);
    if (v32)
    {
      sub_23BF9C89C(v33, v34, v35, v36, *(v26 + 32), *(v26 + 40));

      v25 = v31;
      goto LABEL_14;
    }

    v37 = 0;
  }

  else
  {
    v33 = 0;
    v34 = *(v26 + 8);
    v35 = *(v26 + 16);
    v36 = *(v26 + 24);
    v37 = *(v26 + 32);
  }

  sub_23BF9C89C(v33, v34, v35, v36, v37, *(v26 + 40));
LABEL_14:
  sub_23BF9C940(v27, v28, v29, v30, v32, v31);
  if (v161)
  {
    v157 = *(v161 + OBJC_IVAR___NTKParmesanGalleryComposition_numerals);
    v38 = *&v25[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device];
    v147 = *(v161 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout);
    v39 = v147;
  }

  else
  {
    v147 = 0;
    v38 = *&v25[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device];
    v39 = *&v25[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout];
    v157 = *&v25[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals];
  }

  v40 = *&v25[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface];
  v41 = *&v25[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
  v42 = v25[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
  v43 = type metadata accessor for ParmesanTimeAppearance();
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v38;
  *&v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v39;
  *&v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = v40;
  *&v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = v157;
  v45 = &v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
  *v45 = v41;
  v45[8] = v42;
  v46 = v39;
  v47 = v38;
  sub_23BF674B4(v41, v42);
  v171.receiver = v44;
  v171.super_class = v43;
  v158 = v43;
  v48 = objc_msgSendSuper2(&v171, sel_init);

  v154 = OBJC_IVAR___NTKParmesanGalleryView_timeContainerView;
  v49 = *&v160[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView];
  if (v49)
  {
    v148 = v48;
    v50 = v49;
    sub_23BFBC5B8(v148);

    v51 = *&v160[v149];
    v52 = &v51[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context];
    v53 = *&v51[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context];
    v54 = *&v51[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 8];
    v55 = *&v51[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 16];
    v56 = *&v51[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 24];
    v58 = *&v51[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 32];
    v57 = *&v51[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 40];
    *v52 = 0u;
    *(v52 + 1) = 0u;
    *(v52 + 2) = 0u;
    v59 = v51;
    sub_23BF9C940(v53, v54, v55, v56, v58, v57);

    sub_23BF9C9A4(0, 0);
    sub_23BF9CAA4(0, 0);
    v60 = *(a2 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout);
    v61 = [v160 timeAppearance];
    v62 = *(a2 + OBJC_IVAR___NTKParmesanGalleryComposition_numerals);
    v63 = *&v61[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device];
    v64 = *&v61[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface];
    v65 = *&v61[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
    LOBYTE(v57) = v61[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
    v66 = objc_allocWithZone(v158);
    *&v66[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v63;
    *&v66[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v60;
    *&v66[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = v64;
    *&v66[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = v62;
    v67 = &v66[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
    *v67 = v65;
    v67[8] = v57;
    v68 = v60;
    sub_23BF674B4(v65, v57);
    v170.receiver = v66;
    v170.super_class = v158;
    v69 = v63;
    v70 = objc_msgSendSuper2(&v170, sel_init);

    LOBYTE(v63) = sub_23BFFA880();
    v144 = v70;
    v145 = v68;
    if (v63)
    {

      v142 = 0;
      v143 = 0;
      v72 = v160;
      v71 = v161;
      goto LABEL_33;
    }

    v73 = v148;
    v74 = v70;
    v75 = v73;
    v76 = v74;
    sub_23BF9CAA4(0, 0);
    v72 = v160;
    v77 = *&v160[v154];
    if (v77)
    {
      v78 = v77;
      v79 = v75;
      v80 = v76;
      v81 = sub_23BFFA880();

      if (v81)
      {
        sub_23BFBC5B8(v80);
      }

      else
      {
        sub_23BFBC5B8(v79);
        v82 = *&v78[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView];
        if (v82)
        {
          v168 = v79;
          v169 = v80;
          v83 = v82;
          sub_23BF7CCE8(&v168);

          goto LABEL_26;
        }
      }

LABEL_26:
      v71 = v161;
      if (v147)
      {
        type metadata accessor for ParmesanTimeLayout();
        v84 = v147;
        v85 = sub_23BFFA880();

        if (v85)
        {
LABEL_32:
          v142 = v70;
          v143 = v148;
LABEL_33:
          v87 = *&v72[OBJC_IVAR___NTKParmesanGalleryView_currentItem];
          v88 = &selRef__setupTapControl;
          v89 = MEMORY[0x277D85000];
          if (!v71)
          {
            v155 = v87;
            v159 = v87;
            v161 = 0;
            goto LABEL_44;
          }

          if (v87)
          {
            v90 = *&v87[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition];
            if (v90)
            {
              type metadata accessor for ParmesanGalleryComposition();
              v155 = v87;
              v91 = v71;
              v92 = v90;
              v93 = sub_23BFFA880();

              if (v93)
              {

                v161 = v91;
                v72 = v160;
                v159 = v87;
                v89 = MEMORY[0x277D85000];
                v88 = &selRef__setupTapControl;
LABEL_44:
                v114 = [v72 v88[85]];
                v116 = v115;
                v118 = v117;
                v120 = v119;
                v122 = v121;
                v123 = (*((*v89 & *a2) + 0x150))(v114);
                v124 = type metadata accessor for ParmesanGalleryContentViews();
                v125 = objc_allocWithZone(v124);
                *&v125[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView] = 0;
                *&v125[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView] = 0;
                *&v125[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_config] = v123;
                v167.receiver = v125;
                v167.super_class = v124;

                v126 = objc_msgSendSuper2(&v167, sel_init);
                sub_23BF76CC8(v116, v118, v120, v122);
                sub_23BF774FC(v116, v118, v120, v122);

                v127 = type metadata accessor for ParmesanGalleryItem();
                v128 = objc_allocWithZone(v127);
                v129 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition;
                *&v128[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition] = 0;
                v130 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views;
                *&v128[v129] = a2;
                *&v128[v130] = v126;
                v166.receiver = v128;
                v166.super_class = v127;
                v141 = v126;
                v131 = a2;
                v132 = objc_msgSendSuper2(&v166, sel_init);
                v168 = v159;
                v169 = v132;
                v164 = v143;
                v165 = v142;
                v156 = v155;
                v133 = v132;
                sub_23BF9CA88(v143, v142);
                sub_23BF9B094(&v168, &v164);
                sub_23BF9CAA4(v164, v165);
                sub_23BF9C9A4(0, 0);
                v134 = *&v72[v149];
                v135 = &v134[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context];
                v136 = *&v134[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 8];
                v137 = *&v134[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 16];
                v150 = *&v134[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 24];
                v152 = *&v134[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context];
                v139 = *&v134[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 32];
                v138 = *&v134[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 40];
                *v135 = a3;
                *(v135 + 1) = a5;
                *(v135 + 2) = v159;
                *(v135 + 3) = v133;
                *(v135 + 4) = v143;
                *(v135 + 5) = v142;
                v140 = v134;
                swift_unknownObjectRetain();
                sub_23BF9C900(v159, v133);
                sub_23BF9CA88(v143, v142);
                sub_23BF9C940(v152, v136, v137, v150, v139, v138);

                sub_23BF9BB2C();
                swift_unknownObjectRelease();

                sub_23BF9C9A4(v159, v133);
                sub_23BF9CAA4(v143, v142);
                return;
              }

              v72 = v160;
              v71 = v161;
              v89 = MEMORY[0x277D85000];
LABEL_43:
              v88 = &selRef__setupTapControl;
              v95 = [v72 bounds];
              v97 = v96;
              v99 = v98;
              v101 = v100;
              v103 = v102;
              v104 = (*((*v89 & *v71) + 0x150))(v95);
              v105 = type metadata accessor for ParmesanGalleryContentViews();
              v106 = objc_allocWithZone(v105);
              *&v106[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView] = 0;
              *&v106[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView] = 0;
              *&v106[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_config] = v104;
              v163.receiver = v106;
              v163.super_class = v105;

              v107 = objc_msgSendSuper2(&v163, sel_init);
              sub_23BF76CC8(v97, v99, v101, v103);
              sub_23BF774FC(v97, v99, v101, v103);

              v108 = type metadata accessor for ParmesanGalleryItem();
              v109 = objc_allocWithZone(v108);
              v110 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition;
              *&v109[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition] = 0;
              v111 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views;
              *&v109[v110] = v71;
              *&v109[v111] = v107;
              v162.receiver = v109;
              v162.super_class = v108;
              v112 = v107;
              v113 = objc_msgSendSuper2(&v162, sel_init);

              v89 = MEMORY[0x277D85000];
              v155 = v113;
              v159 = v113;
              goto LABEL_44;
            }

            v155 = v87;
            v72 = v160;
          }

          else
          {
            v155 = 0;
          }

          v94 = v71;
          goto LABEL_43;
        }
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong willStartTransitionToParmesanTimeLayout_];
        swift_unknownObjectRelease();
      }

      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23BFEEF28(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (qword_27E1DFD98 != -1)
  {
    swift_once();
  }

  v40 = sub_23BFF92B0();
  sub_23BF4A22C(v40, qword_27E1EB498);
  v10 = a4;
  v11 = a2;
  v12 = sub_23BFF9290();
  v13 = sub_23BFFA640();

  if (os_log_type_enabled(v12, v13))
  {
    v37 = a1;
    v39 = a5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_23BF62294(0xD00000000000001ELL, 0x800000023C013690, v41);
    *(v14 + 12) = 2080;
    v16 = *&v10[OBJC_IVAR___NTKParmesanGalleryView_currentItem];
    v38 = a3;
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition);
    }

    sub_23BF4A264(&qword_27E1E2E88);
    v18 = sub_23BFFA360();
    v20 = sub_23BF62294(v18, v19, v41);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v21 = v11;
    v22 = [v21 description];
    v23 = sub_23BFFA300();
    v25 = v24;

    v26 = sub_23BF62294(v23, v25, v41);

    *(v14 + 24) = v26;
    _os_log_impl(&dword_23BF0C000, v12, v13, "%s: Transitioning from: (%s to (%s)", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEC4DF0](v15, -1, -1);
    MEMORY[0x23EEC4DF0](v14, -1, -1);

    a3 = v38;
    a5 = v39;
    a1 = v37;
    if (!v37)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (!a1)
    {
      goto LABEL_15;
    }
  }

  type metadata accessor for ParmesanGalleryComposition();
  v27 = v11;
  v28 = a1;
  v29 = sub_23BFFA880();

  if (v29)
  {
    if (qword_27E1DFD90 != -1)
    {
      swift_once();
    }

    sub_23BF4A22C(v40, qword_27E1EB480);
    v30 = sub_23BFF9290();
    v31 = sub_23BFFA670();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_23BF0C000, v30, v31, "attempted transition between the same compositions; do nothing", v32, 2u);
      MEMORY[0x23EEC4DF0](v32, -1, -1);
    }

    return;
  }

LABEL_15:
  sub_23BFEE3B8(a1, v11, a3, v10, a5);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    sub_23BF9A088(1.0);
  }

  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    sub_23BF9A740();
  }

  MEMORY[0x23EEC4EA0](v42);
  MEMORY[0x23EEC4EA0](v43);
}

void sub_23BFEF334()
{
  v1 = sub_23BFFA2C0();
  v2 = sub_23BFFA2C0();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_23BFFA2C0();
  v8[4] = sub_23BFEF50C;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_23BFEC1A0;
  v8[3] = &unk_284EC2678;
  v6 = _Block_copy(v8);

  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];
  _Block_release(v6);

  [v3 addAction_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_23BFEF514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23BFEF52C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v2 = sub_23BFF91F0();
  v3 = *MEMORY[0x277CDA360];
  [v1 setValue:v2 forKey:*MEMORY[0x277CDA360]];

  v4 = sub_23BFFA2C0();
  [v1 setName_];

  v5 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v6 = sub_23BFF91F0();
  [v5 setValue:v6 forKey:v3];

  v7 = sub_23BFFA2C0();
  [v5 setName_];

  v8 = [v0 layer];
  sub_23BF4A264(&qword_27E1E11E8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23C002D30;
  v10 = sub_23BFC5488();
  *(v9 + 32) = v1;
  *(v9 + 88) = v10;
  *(v9 + 56) = v10;
  *(v9 + 64) = v5;
  v11 = v1;
  v12 = v5;
  v13 = sub_23BFFA450();

  [v8 setFilters_];
}

uint64_t sub_23BFEF86C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000023 && 0x800000023C013A10 == a2 || (sub_23BFFACC0() & 1) != 0 || a1 == 0xD000000000000021 && 0x800000023C0139E0 == a2 || (sub_23BFFACC0() & 1) != 0)
    {
      return 1;
    }

    v6 = sub_23BFFA2C0();
  }

  else
  {
    v6 = 0;
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ParmesanColorAdjustView();
  v7 = objc_msgSendSuper2(&v8, sel__shouldAnimatePropertyWithKey_, v6);

  return v7;
}

id sub_23BFEF9D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanColorAdjustView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BFEFAC0()
{
  swift_unknownObjectWeakAssign();
  if (*(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_shuffleSelectionViewController))
  {
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_noContentViewController);
  if (v1)
  {
    swift_unknownObjectWeakLoadStrong();
    v2 = v1;
    swift_unknownObjectRelease();
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

id sub_23BFEFB98(uint64_t a1, uint64_t a2, char a3)
{
  v7 = OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_suggestionsDataSource;
  v8 = [objc_opt_self() sharedPhotoLibrary];
  v9 = [objc_allocWithZone(MEMORY[0x277D3B3A0]) initWithPhotoLibrary_];

  *&v3[v7] = v9;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_shuffleSelectionViewController] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_noContentViewController] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_editor] = a1;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_face] = a2;
  v3[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_inGallery] = a3;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for ParmesanShuffleSelectionFlowController();
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

void sub_23BFEFD1C(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ParmesanShuffleSelectionFlowController();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1 & 1);
  v3 = [*&v1[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_suggestionsDataSource] hasSuggestions];
  if (*&v1[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_shuffleSelectionViewController])
  {
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_3;
  }

  if (!*&v1[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_noContentViewController])
  {
    if (!v3)
    {
LABEL_3:
      sub_23BFEFE3C();
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3)
  {
LABEL_8:
    sub_23BFF010C();
  }

LABEL_9:
  v4 = [v1 sheetPresentationController];
  if (v4)
  {
    v5 = v4;
    [v4 setPrefersGrabberVisible_];
  }
}

void sub_23BFEFE3C()
{
  v1 = OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_shuffleSelectionViewController;
  v2 = *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_shuffleSelectionViewController];
  if (!v2)
  {
LABEL_4:
    v7 = *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_editor];
    v8 = *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_face];
    v9 = v0[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_inGallery];
    v10 = objc_allocWithZone(type metadata accessor for ParmesanNoShufflesViewController());
    swift_unknownObjectWeakInit();
    *&v10[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor] = v7;
    *&v10[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_face] = v8;
    v10[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_inGallery] = v9;
    v23.receiver = v10;
    v23.super_class = type metadata accessor for ParmesanShuffleSelectionBaseViewController();
    v11 = v7;
    v12 = v8;
    v13 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v14 = v13;
    [v0 addChildViewController_];
    v15 = [v0 view];
    if (v15)
    {
      v16 = v15;
      v17 = [v14 view];
      if (v17)
      {
        v18 = v17;
        [v16 addSubview_];

        v19 = [v14 view];
        if (v19)
        {
          [v19 constrainToSuperviewWithEdges:15 insets:0 useLayoutMargins:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];

          [v14 didMoveToParentViewController_];
          v20 = *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_noContentViewController];
          *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_noContentViewController] = v14;
          v21 = v14;

          v22 = [v0 navigationItem];
          [v22 setLeftBarButtonItem_];

          return;
        }

        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  [v3 willMoveToParentViewController_];
  v4 = [v3 view];
  if (v4)
  {
    v5 = v4;
    [v4 removeFromSuperview];

    [v3 removeFromParentViewController];
    [v3 didMoveToParentViewController_];

    v6 = *&v0[v1];
    *&v0[v1] = 0;

    goto LABEL_4;
  }

LABEL_11:
  __break(1u);
}

void sub_23BFF010C()
{
  v1 = v0;
  v2 = OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_noContentViewController;
  v3 = *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_noContentViewController];
  if (v3)
  {
    v4 = v3;
    [v4 willMoveToParentViewController_];
    v5 = [v4 view];
    if (!v5)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v6 = v5;
    [v5 removeFromSuperview];

    [v4 removeFromParentViewController];
    [v4 didMoveToParentViewController_];

    v7 = *&v1[v2];
    *&v1[v2] = 0;
  }

  v8 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_editor];
  v9 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_face];
  v10 = v1[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_inGallery];
  objc_allocWithZone(type metadata accessor for ParmesanShuffleSelectionViewController());
  v11 = sub_23BF3CB24(v8, v9, v10);
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v12 = v11;
  [v1 addChildViewController_];
  v13 = [v1 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v12 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  [v14 addSubview_];

  v17 = [v12 view];
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v17 constrainToSuperviewWithEdges:15 insets:0 useLayoutMargins:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];

  [v12 didMoveToParentViewController_];
  v18 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_shuffleSelectionViewController];
  *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_shuffleSelectionViewController] = v12;
  v19 = v12;

  sub_23BF700D8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = sub_23BFFA2C0();
  v22 = sub_23BFFA2C0();
  v23 = [ObjCClassFromMetadata localizedStringForKey:v21 comment:v22];

  sub_23BFFA300();
  v24 = type metadata accessor for ParmesanShuffleSelectionFlowController();
  v36[3] = v24;
  v36[0] = v1;
  v25 = v1;
  v26 = sub_23BFFA2C0();

  if (v24)
  {
    v27 = sub_23BF4C484(v36, v24);
    v28 = *(v24 - 8);
    v29 = MEMORY[0x28223BE20](v27);
    v31 = v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v31, v29);
    v32 = sub_23BFFACA0();
    (*(v28 + 8))(v31, v24);
    sub_23BF4A9A4(v36);
  }

  else
  {
    v32 = 0;
  }

  v33 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v34 = [v33 initWithTitle:v26 style:0 target:v32 action:{sel_userDidSelectCancel_, v36[0]}];

  swift_unknownObjectRelease();
  v35 = [v25 navigationItem];
  [v35 setLeftBarButtonItem_];
}

id sub_23BFF061C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanShuffleSelectionFlowController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23BFF0700()
{
  v1 = OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_suggestionsDataSource;
  v2 = [objc_opt_self() sharedPhotoLibrary];
  v3 = [objc_allocWithZone(MEMORY[0x277D3B3A0]) initWithPhotoLibrary_];

  *(v0 + v1) = v3;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_shuffleSelectionViewController) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionFlowController_noContentViewController) = 0;
  sub_23BFFAB00();
  __break(1u);
}

void sub_23BFF07E4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_state) = a1;
  if (a1)
  {
    if (a1 != 1)
    {
      return;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(*(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_digitalTimeView) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter);
  v4 = sub_23BFFA2C0();
  [v3 setPaused:v2 forReason:v4];
}

uint64_t sub_23BFF08BC(uint64_t a1)
{
  v3 = sub_23BF4A264(&qword_27E1E0B80);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_overrideDate;
  swift_beginAccess();
  sub_23BFF1538(a1, v1 + v9);
  swift_endAccess();
  v10 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_digitalTimeView);
  sub_23BF7D960(v1 + v9, v8);
  v11 = *(v10 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter);
  sub_23BF7D960(v8, v6);
  v12 = sub_23BFF8D90();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v6, 1, v12) != 1)
  {
    v14 = sub_23BFF8D60();
    (*(v13 + 8))(v6, v12);
  }

  [v11 setOverrideDate_];

  sub_23BF88F64(a1);
  return sub_23BF88F64(v8);
}

id sub_23BFF0A7C(_BYTE *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = _s15BackgroundStyleOMa();
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_overrideDate;
  v11 = sub_23BFF8D90();
  (*(*(v11 - 8) + 56))(&v3[v10], 1, 1, v11);
  *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_state] = 1;
  *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_tritiumProgress] = 0;
  *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_configuration] = a1;
  v12 = *MEMORY[0x277D768C8];
  v13 = *(MEMORY[0x277D768C8] + 8);
  v14 = *(MEMORY[0x277D768C8] + 16);
  v15 = *(MEMORY[0x277D768C8] + 24);
  v16 = &v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_paddingInsets];
  *v16 = *MEMORY[0x277D768C8];
  v16[1] = v13;
  *(v16 + 2) = v14;
  *(v16 + 3) = v15;
  v17 = sub_23BFF151C(0.0, 0.0, 0.0, 0.0, v12, v13);
  v21 = sub_23BFF151C(v17 / 0.0, v18 / 0.0, v19 / 0.0, v20 / 0.0, 0.07, 0.1);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *&a1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_forcedNumberSystem];
  v29 = a1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_arrangement];
  LODWORD(v70) = a1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_alignment];
  v30 = a1;
  v31 = *&v30[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_font];
  v32 = *&v30[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_style];
  v33 = v30[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_style + 8];
  v67 = v30;
  v68 = ObjectType;
  v71 = v28;
  v72 = a2;
  if (v33)
  {
    if (v33 == 1)
    {
      v34 = v31;
      sub_23BF674B4(v32, 1);
      v35 = sub_23BFF9DD0();
      v74 = 0;
      v75 = v35;
      v32 = 0;
      v73 = 0;
      goto LABEL_7;
    }

    v38 = v31;
    v74 = 0;
    v75 = 0;
    v32 = 0;
    v37 = 2;
  }

  else
  {
    v74 = 0x800000023C013D20;
    v36 = v31;
    v75 = 0xD000000000000013;
    v37 = 1;
  }

  v73 = v37;
LABEL_7:
  v69 = 0x800000023C013D40;
  swift_storeEnumTagMultiPayload();
  v39 = type metadata accessor for DigitalTimeView();
  v40 = objc_allocWithZone(v39);
  v41 = &v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_fontTracking];
  *v41 = 0;
  v41[8] = 1;
  *&v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_tritiumProgress] = 0;
  v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_isFrozen] = 0;
  v42 = &v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeLabelHostingController];
  *v42 = 0;
  v42[1] = 0;
  v43 = &v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView____lazy_storage___timeLabelView];
  *v43 = 0u;
  *(v43 + 1) = 0u;
  *(v43 + 2) = 0u;
  *(v43 + 6) = 0;
  v44 = &v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout];
  *v44 = v21;
  *(v44 + 1) = v23;
  *(v44 + 2) = v25;
  *(v44 + 3) = v27;
  v44[32] = v29;
  v44[33] = v70;
  *(v44 + 19) = v79;
  *(v44 + 34) = v78;
  *(v44 + 40) = xmmword_23C0038F0;
  v44[56] = 2;
  v45 = v9;
  v46 = &v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_font];
  v46[3] = sub_23BF6DCA0();
  v46[4] = &off_284EC26C0;
  *v46 = v31;
  v47 = v45;
  *v41 = 0;
  v41[8] = 1;
  v48 = &v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_foregroundStyle];
  v50 = v74;
  v49 = v75;
  *v48 = v75;
  *(v48 + 1) = v50;
  *(v48 + 4) = v32;
  v51 = v31;
  v52 = v73;
  v48[20] = v73;
  sub_23BFA9F38(v45, &v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_backgroundStyle]);
  *&v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_maskStyle] = 0;
  v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeTransition] = 2;
  __asm { FMOV            V0.2D, #1.0 }

  *&v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_scaleEffectSize] = _Q0;
  v58 = &v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_backdropGroupName];
  *v58 = 0xD000000000000012;
  v58[1] = v69;
  *&v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_opacity] = 0x3FF0000000000000;
  v59 = objc_allocWithZone(MEMORY[0x277CBBBA8]);
  v70 = v51;
  v60 = v72;
  sub_23BFA85A8(v49, v50, v32, v52);
  v61 = v59;
  v62 = v71;
  result = [v61 initWithForcedNumberSystem:v71 clockTimer:v60];
  if (result)
  {
    *&v40[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter] = result;
    v77.receiver = v40;
    v77.super_class = v39;
    v64 = objc_msgSendSuper2(&v77, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v64 setClipsToBounds_];
    sub_23BFA8CCC(0, v62, 0);
    [*&v64[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter] addObserver_];
    sub_23BFA94EC();

    sub_23BFA85DC(v75, v74, v32, v73);
    sub_23BFA9FAC(v47);
    [v64 setUserInteractionEnabled_];
    *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_digitalTimeView] = v64;
    v76.receiver = v3;
    v76.super_class = v68;
    v65 = v64;
    v66 = objc_msgSendSuper2(&v76, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v66 addSubview_];

    return v66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BFF1110()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v7 = sub_23BFF151C(v5, v6, v1, v3, *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_paddingInsets], *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_paddingInsets + 8]);
  v11 = sub_23BFF151C(v7 / v2, v8 / v4, v9 / v2, v10 / v4, 0.07, 0.1);
  v12 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_configuration];
  v13 = *(v12 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_arrangement);
  LOBYTE(v12) = *(v12 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_alignment);
  v14 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_digitalTimeView] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_layout;
  *v14 = v11;
  *(v14 + 8) = v15;
  *(v14 + 16) = v16;
  *(v14 + 24) = v17;
  *(v14 + 32) = v13;
  *(v14 + 33) = v12;
  *(v14 + 40) = xmmword_23C0038F0;
  *(v14 + 56) = 2;
  return sub_23BFA8700();
}

uint64_t sub_23BFF128C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_digitalTimeView);
  v3 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_configuration;
  v4 = *(*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_configuration) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_font);
  sub_23BFBD8A0(v4, v2);

  v5 = *(*(v1 + v3) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_forcedNumberSystem);
  v6 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter;
  [*(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion15DigitalTimeView_timeFormatter) setForcedNumberSystem_];
  sub_23BFA8DB4(v8);
  sub_23BF4A264(&qword_27E1E1F50);
  sub_23BFF9EE0();
  sub_23BF9C60C(v8);
  sub_23BFB43B4(*(v2 + v6));

  return sub_23BFF1110();
}

uint64_t type metadata accessor for ParmesanMiniClockDigitalTimeView()
{
  result = qword_27E1E2EF0;
  if (!qword_27E1E2EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BFF1464()
{
  sub_23BFBD34C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23BFF1538(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0B80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_23BFF1600()
{
  result = [v0 view];
  if (result)
  {
    objc_opt_self();

    return swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23BFF1670(uint64_t a1)
{
  v2 = *(v1 + qword_27E1E2F00);
  *(v1 + qword_27E1E2F00) = a1;
}

uint64_t sub_23BFF1684()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x60);
  v11[0] = *(v1 + 0x50);
  v11[1] = v2;
  v3 = sub_23BFF9510();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  result = (*(v1 + 176))(v5);
  v9 = *(v0 + qword_27E1E2F00);
  if (v9)
  {
    v10 = v9;
    sub_23BFF9560();

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23BFF17CC(void *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v4 = sub_23BFFA920();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  v12 = sub_23BFF8DF0();
  [a1 deselectItemAtIndexPath:v12 animated:1];

  v13 = *(v1 + qword_27E1E2F00);
  if (v13)
  {
    v14 = v13;
    sub_23BFF9570();

    if ((*(v8 + 48))(v7, 1, v3) == 1)
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v8 + 32))(v11, v7, v3);
      (*((*MEMORY[0x277D85000] & *v1) + 0xC0))(v11);
      (*(v8 + 8))(v11, v3);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_23BFF1A28()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = sub_23BFF9640();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BFF9660();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D74D50], v4, v10);
  sub_23BFF9650();
  sub_23BFF231C();
  v13 = sub_23BFFA7E0();
  (*(v9 + 8))(v12, v8);
  v14 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v13 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  [v1 setView_];
  v15 = *((v3 & v2) + 0x50);
  v16 = *((v3 & v2) + 0x58);
  v17 = *((v3 & v2) + 0x60);
  v18 = *((v3 & v2) + 0x68);
  v24[0] = v15;
  v24[1] = v16;
  v24[2] = v17;
  v24[3] = v18;
  sub_23BFF9600();
  sub_23BFF1600();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v18;
  v20[6] = v19;
  v21 = sub_23BFF9530();
  v22 = *&v1[qword_27E1E2F00];
  *&v1[qword_27E1E2F00] = v21;

  v23 = sub_23BFF1600();
  [v23 setDelegate_];
}

uint64_t sub_23BFF1D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = (*((*MEMORY[0x277D85000] & *Strong) + 0xA0))(a3, a2);

  return v7;
}

void sub_23BFF1DD8(void *a1)
{
  v1 = a1;
  sub_23BFF1A28();
}

uint64_t sub_23BFF1E20(char a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ParmesanDebugBaseListViewController();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1 & 1, v4, v5);
  return sub_23BFF1684();
}

void sub_23BFF1EAC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_23BFF1E20(a3);
}

uint64_t sub_23BFF1F64(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_23BFF8E50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF8E00();
  v9 = a3;
  v10 = a1;
  sub_23BFF17CC(v9);

  return (*(v6 + 8))(v8, v5);
}

id sub_23BFF2060(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x277D85000] & *v3;
  *(v3 + qword_27E1E2F00) = 0;
  if (a2)
  {
    v6 = sub_23BFFA2C0();
  }

  else
  {
    v6 = 0;
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 96);
  v11.receiver = v3;
  v11.super_class = type metadata accessor for ParmesanDebugBaseListViewController();
  v7 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v6, a3, v9, v10);

  return v7;
}

id sub_23BFF213C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_23BFFA300();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_23BFF2060(v5, v7, a4);
}

id sub_23BFF219C(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  *(v1 + qword_27E1E2F00) = 0;
  v6 = *(v3 + 80);
  v7 = *(v3 + 96);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ParmesanDebugBaseListViewController();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1, v6, v7);

  if (v4)
  {
  }

  return v4;
}

id sub_23BFF227C()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ParmesanDebugBaseListViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

unint64_t sub_23BFF231C()
{
  result = qword_27E1E2F88;
  if (!qword_27E1E2F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E2F88);
  }

  return result;
}

char *sub_23BFF2378(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_timeRect];
  *v9 = 0;
  *(v9 + 1) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v9 + 1) = _Q0;
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_currentFontAttributes] = MEMORY[0x277D84F98];
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v16 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_hourLabel;
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_hourLabel] = v15;
  [v15 setTextAlignment_];
  v17 = *&v4[v16];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setTextColor_];

  [*&v4[v16] setLineBreakMode_];
  [*&v4[v16] setNumberOfLines_];
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v22 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_minuteLabel;
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_minuteLabel] = v21;
  [v21 setTextAlignment_];
  v23 = *&v4[v22];
  v24 = [v18 whiteColor];
  [v23 setTextColor_];

  [*&v4[v22] setLineBreakMode_];
  [*&v4[v22] setNumberOfLines_];
  v29.receiver = v4;
  v29.super_class = type metadata accessor for ParmesanStackedTimeLabel();
  v25 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  v26 = *&v25[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_hourLabel];
  v27 = v25;
  [v27 addSubview_];
  [v27 addSubview_];

  return v27;
}

id sub_23BFF2670()
{
  v1 = v0;
  v49 = *MEMORY[0x277D85DE8];
  v47.receiver = v0;
  v47.super_class = type metadata accessor for ParmesanStackedTimeLabel();
  objc_msgSendSuper2(&v47, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_timeRect];
  v3 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_timeRect + 8];
  v4 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_timeRect + 16];
  v5 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_timeRect + 24];
  [v0 bounds];
  v8 = v7 + v2 * v6;
  v11 = v10 + v3 * v9;
  v12 = v4 * v6;
  v13 = v5 * v9;
  v14 = [objc_opt_self() mainScreen];
  [v14 scale];
  v16 = v15;

  v50.origin.x = v8;
  v50.origin.y = v11;
  v50.size.width = v12;
  v50.size.height = v13;
  Height = CGRectGetHeight(v50);
  memset(&slice, 0, sizeof(slice));
  v18 = round((v16 * Height + -16.0) * 0.5) / v16;
  memset(&remainder, 0, sizeof(remainder));
  v51.origin.x = v8;
  v51.origin.y = v11;
  v51.size.width = v12;
  v51.size.height = v13;
  CGRectDivide(v51, &slice, &remainder, v18, CGRectMinYEdge);
  x = slice.origin.x;
  y = slice.origin.y;
  width = slice.size.width;
  v20 = slice.size.height;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v52.origin.x = v8;
  v52.origin.y = v11;
  v52.size.width = v12;
  v52.size.height = v13;
  CGRectDivide(v52, &slice, &remainder, v18, CGRectMaxYEdge);
  v21 = slice.origin.y;
  v42 = slice.origin.x;
  v22 = slice.size.width;
  v45 = slice.size.height;
  v23 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_currentFontAttributes];
  if (*(v23 + 16))
  {
    v24 = *MEMORY[0x277D740A8];

    v25 = sub_23BFE5720(v24);
    if (v26)
    {
      sub_23BF4A6AC(*(v23 + 56) + 32 * v25, &slice);

      sub_23BF4BDF0(0, &qword_27E1E0EB8);
      if (swift_dynamicCast())
      {
        v27 = remainder.origin.x;
        [*&remainder.origin.x descender];
        UIRoundToViewScale();
        v29 = v28;
        [*&v27 ascender];
        UIRoundToViewScale();
        v31 = v30;
        [*&v27 capHeight];
        UIRoundToViewScale();
        v33 = v32;

        v34 = y - (v31 - v33) + -4.0;
        v20 = v31 - v29 + 8.0;
        v21 = v21 + v45 - v31 + -4.0;
        y = v34;
        v45 = v20;
      }
    }

    else
    {
    }
  }

  v35 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_hourLabel];
  if ([v35 textAlignment] == 2)
  {
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = v20;
    CGRectGetMinY(v53);
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = v20;
    CGRectGetMaxX(v54);
    v36 = 0.0;
  }

  else
  {
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = v20;
    MinX = CGRectGetMinX(v55);
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = v20;
    CGRectGetMinY(v56);
    [v1 bounds];
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = v20;
    CGRectGetMinX(v57);
    v36 = MinX;
  }

  [v35 setFrame_];
  v37 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_minuteLabel];
  if ([v37 textAlignment] == 2)
  {
    v58.origin.x = v42;
    v58.origin.y = v21;
    v58.size.width = v22;
    v58.size.height = v45;
    CGRectGetMinY(v58);
    v59.origin.x = v42;
    v59.origin.y = v21;
    v59.size.width = v22;
    v59.size.height = v45;
    CGRectGetMaxX(v59);
    v38 = 0.0;
  }

  else
  {
    v60.origin.x = v42;
    v60.origin.y = v21;
    v60.size.width = v22;
    v60.size.height = v45;
    v39 = CGRectGetMinX(v60);
    v61.origin.x = v42;
    v61.origin.y = v21;
    v61.size.width = v22;
    v61.size.height = v45;
    CGRectGetMinY(v61);
    [v1 bounds];
    v62.origin.x = v42;
    v62.origin.y = v21;
    v62.size.width = v22;
    v62.size.height = v45;
    CGRectGetMinX(v62);
    v38 = v39;
  }

  return [v37 setFrame_];
}

void sub_23BFF2B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device);
  v7 = type metadata accessor for ParmesanTypefaceMetrics();
  v8 = objc_allocWithZone(v7);
  v9 = v6;
  v10 = sub_23BFEA418(v9);

  sub_23BFE5D8C(a3, a1);
  sub_23BFE5D8C(a3, a2);
  sub_23BFF9200();
  v12 = v11;
  if ([objc_opt_self() isPartiallySupported_])
  {
    v26 = [objc_opt_self() numericSoftFontOfSize:v12 weight:*MEMORY[0x277D74410]];
  }

  else
  {
    v13 = objc_allocWithZone(v7);
    v14 = v9;
    v15 = sub_23BFEA418(v14);
    v16 = sub_23BFE6000(a3, a1);

    v17 = objc_allocWithZone(v7);
    v18 = sub_23BFEA418(v14);

    v19 = sub_23BFE6000(a3, a2);
    v20 = sub_23BF6B988(v16, v19);
    v21 = *(a3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface);
    v22 = *(a3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style);
    v23 = *(a3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8);
    sub_23BF674B4(v22, v23);
    v24 = sub_23BF6B70C();
    v25 = sub_23BF67110(v22, v23, v24, v21);

    sub_23BF674C8(v22, v23);
    v26 = [objc_opt_self() fontWithDescriptor:v25 size:v12];

    v10 = v25;
  }

  sub_23BFF2DF0(a3, v26);
}

void sub_23BFF2DF0(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_23BF4A264(&qword_27E1E0EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C001BB0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_23BF4BDF0(0, &qword_27E1E2FB0);
  *(inited + 40) = a2;
  v8 = v7;
  v9 = a2;
  v10 = sub_23BFE4148(inited);
  swift_setDeallocating();
  sub_23BF9E3A8(inited + 32);
  CLKLocaleNumberSystemFromNumeralOption();
  v11 = CLKLocaleRenderingHintLanguageIdentifierForNumberingSystem();
  if (v11)
  {
    v12 = v11;
    v13 = sub_23BFFA300();
    v15 = v14;

    v16 = *MEMORY[0x277CCA318];
    v38 = MEMORY[0x277D837D0];
    *&v37 = v13;
    *(&v37 + 1) = v15;
    sub_23BF66650(&v37, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23BFE7CA4(v36, v16, isUniquelyReferenced_nonNull_native);
  }

  v18 = *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_hourLabel];
  v19 = [v18 text];
  if (v19)
  {
    v20 = v19;
    sub_23BFFA300();
  }

  v21 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v22 = sub_23BFFA2C0();

  type metadata accessor for Key(0);
  sub_23BF6DCEC();
  v23 = sub_23BFFA260();
  v24 = [v21 initWithString:v22 attributes:v23];

  [v18 setAttributedText_];
  v25 = *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_minuteLabel];
  v26 = [v25 text];
  if (v26)
  {
    v27 = v26;
    sub_23BFFA300();
  }

  v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v29 = sub_23BFFA2C0();

  v30 = sub_23BFFA260();
  v31 = [v28 initWithString:v29 attributes:v30];

  [v25 setAttributedText_];
  v32 = *(v35 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
  v33 = *(v32 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
  sub_23BF4A264(&unk_27E1E1BD0);
  if ((v33 - 1) < 2)
  {
    v34 = 1;
LABEL_14:
    [v18 setTextAlignment_];
    [v25 setTextAlignment_];
    *&v3[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_currentFontAttributes] = v10;

    [v3 setNeedsLayout];

    return;
  }

  if (!v33)
  {
    goto LABEL_13;
  }

  if (v33 == 3)
  {
    v34 = *(v32 + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
    if (!v34)
    {
      goto LABEL_14;
    }

    if (v34 == 1)
    {
LABEL_13:
      v34 = 2;
      goto LABEL_14;
    }
  }

  sub_23BFFACB0();
  __break(1u);
}

id sub_23BFF31C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanStackedTimeLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BFF3274(double a1, double a2, double a3, double a4)
{
  v5 = &v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_timeRect];
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  return [v4 setNeedsLayout];
}

void sub_23BFF3298(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BF672DC(a1, a2);
  sub_23BFF2DF0(a1, v3);
}

void sub_23BFF331C()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCA898]);

  v2 = sub_23BFFA2C0();

  type metadata accessor for Key(0);
  sub_23BF6DCEC();
  v3 = sub_23BFFA260();

  v4 = [v1 initWithString:v2 attributes:v3];

  [*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_hourLabel) setAttributedText_];
  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);

  v6 = sub_23BFFA2C0();

  v7 = sub_23BFFA260();

  v8 = [v5 initWithString:v6 attributes:v7];

  [*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion24ParmesanStackedTimeLabel_minuteLabel) setAttributedText_];
}

id sub_23BFF3530()
{

  v0 = sub_23BFFA2C0();

  return v0;
}

uint64_t sub_23BFF3598(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_23BFFA300();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

uint64_t sub_23BFF36D4()
{
  sub_23BFFA9F0();

  strcpy(v6, "NTKAlbumID(id=");
  HIBYTE(v6[1]) = -18;
  v1 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion10NTKAlbumID_uuidString);
  v2 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion10NTKAlbumID_uuidString + 8);

  MEMORY[0x23EEC3090](v1, v2);

  MEMORY[0x23EEC3090](0xD000000000000017, 0x800000023C013EB0);
  v3 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion10NTKAlbumID_album);
  v4 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion10NTKAlbumID_album + 8);

  MEMORY[0x23EEC3090](v3, v4);

  MEMORY[0x23EEC3090](41, 0xE100000000000000);
  return v6[0];
}

id sub_23BFF3808()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NTKAlbumID();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BFF3904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a3 + 40);
  v7[0] = *a1;
  v7[1] = v3;
  v5 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = v5;
  return v4(v7);
}

unint64_t sub_23BFF395C(unint64_t a1)
{
  if (a1 > 9)
  {
    return sub_23BFE416C(&unk_284EBD7B0);
  }

  else
  {
    return sub_23BFE416C(*(&off_278BA7838 + a1));
  }
}

char *sub_23BFF3980(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___NTKParmesanSingleTimeLabel_alignment] = 0;
  v9 = &v4[OBJC_IVAR___NTKParmesanSingleTimeLabel_timeRect];
  *v9 = 0;
  *(v9 + 1) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v9 + 1) = _Q0;
  *&v4[OBJC_IVAR___NTKParmesanSingleTimeLabel_currentFontAttributes] = MEMORY[0x277D84F98];
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v16 = OBJC_IVAR___NTKParmesanSingleTimeLabel_timeLabel;
  *&v4[OBJC_IVAR___NTKParmesanSingleTimeLabel_timeLabel] = v15;
  [v15 setTextAlignment_];
  v17 = *&v4[v16];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setTextColor_];

  [*&v4[v16] setLineBreakMode_];
  v23.receiver = v4;
  v23.super_class = type metadata accessor for ParmesanSingleTimeLabel();
  v21 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  [v21 addSubview_];
  return v21;
}

id sub_23BFF3BB0()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = type metadata accessor for ParmesanSingleTimeLabel();
  objc_msgSendSuper2(&v33, sel_layoutSubviews);
  v3 = *&v0[OBJC_IVAR___NTKParmesanSingleTimeLabel_timeRect];
  v2 = *&v0[OBJC_IVAR___NTKParmesanSingleTimeLabel_timeRect + 8];
  v5 = *&v0[OBJC_IVAR___NTKParmesanSingleTimeLabel_timeRect + 16];
  v4 = *&v0[OBJC_IVAR___NTKParmesanSingleTimeLabel_timeRect + 24];
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  v12 = v11 + v2 * v10;
  v13 = v4 * v10;
  v14 = *&v0[OBJC_IVAR___NTKParmesanSingleTimeLabel_currentFontAttributes];
  if (*(v14 + 16))
  {
    v15 = *MEMORY[0x277D740A8];

    v16 = sub_23BFE5720(v15);
    if (v17)
    {
      sub_23BF4A6AC(*(v14 + 56) + 32 * v16, v32);

      sub_23BF4BDF0(0, &qword_27E1E0EB8);
      if (swift_dynamicCast())
      {
        [v31 descender];
        UIRoundToViewScale();
        v30 = v18;
        [v31 ascender];
        UIRoundToViewScale();
        v20 = v19;
        [v31 capHeight];
        UIRoundToViewScale();
        v22 = v21;

        if (*&v1[OBJC_IVAR___NTKParmesanSingleTimeLabel_alignment])
        {
          v23 = v13 + v12 - v20;
        }

        else
        {
          v23 = v12 - (v20 - v22);
        }

        v12 = v23 + -4.0;
        v13 = v20 - v30 + 8.0;
      }
    }

    else
    {
    }
  }

  v24 = v7 + v3 * v9;
  v25 = v5 * v9;
  v26 = *&v1[OBJC_IVAR___NTKParmesanSingleTimeLabel_timeLabel];
  v27 = [v26 textAlignment];
  v34.origin.x = v24;
  v34.origin.y = v12;
  v34.size.width = v25;
  v34.size.height = v13;
  MinY = CGRectGetMinY(v34);
  if (v27 == 2)
  {
    v35.origin.x = v24;
    v35.origin.y = v12;
    v35.size.width = v25;
    v35.size.height = v13;
    CGRectGetMaxX(v35);
  }

  else
  {
    [v1 bounds];
  }

  return [v26 setFrame_];
}

void sub_23BFF3E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device);
  v7 = type metadata accessor for ParmesanTypefaceMetrics();
  v8 = objc_allocWithZone(v7);
  v9 = v6;
  v10 = sub_23BFEA418(v9);

  sub_23BFE5D8C(a3, a1);
  sub_23BFE5D8C(a3, a2);
  sub_23BFF9200();
  v12 = v11;
  if ([objc_opt_self() isPartiallySupported_])
  {
    v26 = [objc_opt_self() numericSoftFontOfSize:v12 weight:*MEMORY[0x277D74410]];
  }

  else
  {
    v13 = objc_allocWithZone(v7);
    v14 = v9;
    v15 = sub_23BFEA418(v14);
    v16 = sub_23BFE6000(a3, a1);

    v17 = objc_allocWithZone(v7);
    v18 = sub_23BFEA418(v14);

    v19 = sub_23BFE6000(a3, a2);
    v20 = sub_23BF6B988(v16, v19);
    v21 = *(a3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface);
    v22 = *(a3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style);
    v23 = *(a3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8);
    sub_23BF674B4(v22, v23);
    v24 = sub_23BF6B70C();
    v25 = sub_23BF67110(v22, v23, v24, v21);

    sub_23BF674C8(v22, v23);
    v26 = [objc_opt_self() fontWithDescriptor:v25 size:v12];

    v10 = v25;
  }

  sub_23BFF40E4(a3, v26);
}

id sub_23BFF40E4(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_23BF4A264(&qword_27E1E0EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C001BB0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_23BF4BDF0(0, &qword_27E1E2FB0);
  *(inited + 40) = a2;
  v8 = v7;
  v9 = a2;
  v10 = sub_23BFE4148(inited);
  swift_setDeallocating();
  sub_23BF9E3A8(inited + 32);
  CLKLocaleNumberSystemFromNumeralOption();
  v11 = CLKLocaleRenderingHintLanguageIdentifierForNumberingSystem();
  if (v11)
  {
    v12 = v11;
    v13 = sub_23BFFA300();
    v15 = v14;

    v16 = *MEMORY[0x277CCA318];
    v33 = MEMORY[0x277D837D0];
    *&v32 = v13;
    *(&v32 + 1) = v15;
    sub_23BF66650(&v32, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v10;
    sub_23BFE7CA4(v31, v16, isUniquelyReferenced_nonNull_native);
  }

  v18 = *&v3[OBJC_IVAR___NTKParmesanSingleTimeLabel_timeLabel];
  v19 = [v18 text];
  if (v19)
  {
    v20 = v19;
    sub_23BFFA300();
  }

  v21 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v22 = sub_23BFFA2C0();

  type metadata accessor for Key(0);
  sub_23BF6DCEC();
  v23 = sub_23BFFA260();
  v24 = [v21 initWithString:v22 attributes:v23];

  [v18 setAttributedText_];
  v25 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout;
  v26 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
  v27 = *(v26 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
  sub_23BF4A264(&unk_27E1E1BD0);
  if ((v27 - 1) < 2)
  {
    v28 = 1;
LABEL_12:
    [v18 setTextAlignment_];
    *&v3[OBJC_IVAR___NTKParmesanSingleTimeLabel_alignment] = *(*(a1 + v25) + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
    *&v3[OBJC_IVAR___NTKParmesanSingleTimeLabel_currentFontAttributes] = v10;

    return [v3 setNeedsLayout];
  }

  if (!v27)
  {
    goto LABEL_11;
  }

  if (v27 == 3)
  {
    v28 = *(v26 + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
    if (!v28)
    {
      goto LABEL_12;
    }

    if (v28 == 1)
    {
LABEL_11:
      v28 = 2;
      goto LABEL_12;
    }
  }

  result = sub_23BFFACB0();
  __break(1u);
  return result;
}

id sub_23BFF43DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanSingleTimeLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BFF4480(double a1, double a2, double a3, double a4)
{
  v5 = &v4[OBJC_IVAR___NTKParmesanSingleTimeLabel_timeRect];
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  return [v4 setNeedsLayout];
}

void sub_23BFF44A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BF672DC(a1, a2);
  sub_23BFF40E4(a1, v3);
}

void sub_23BFF4524()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCA898]);

  v2 = sub_23BFFA2C0();
  type metadata accessor for Key(0);
  sub_23BF6DCEC();
  v3 = sub_23BFFA260();

  v4 = [v1 initWithString:v2 attributes:v3];

  [*(v0 + OBJC_IVAR___NTKParmesanSingleTimeLabel_timeLabel) setAttributedText_];
}

char *sub_23BFF4620(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195717TimeContainerView_deviceSize];
  *v9 = 0;
  *(v9 + 1) = 0;
  if (qword_27E1DFD78 != -1)
  {
    swift_once();
  }

  v10 = qword_27E1EB458;
  v11 = objc_allocWithZone(type metadata accessor for ParmesanTimeView());
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195717TimeContainerView_timeView] = sub_23BF7BE14(v10, 0.0, 0.0, 0.0, 0.0);
  v16.receiver = v4;
  v16.super_class = type metadata accessor for TimeContainerView();
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195717TimeContainerView_timeView];
  v14 = v12;
  [v13 setAnchorPoint_];
  [v14 setClipsToBounds_];

  return v14;
}

id sub_23BFF47EC()
{
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195717TimeContainerView_timeView;
  v2 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195717TimeContainerView_timeView];
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  [v2 setTransform_];
  v3 = &v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195717TimeContainerView_deviceSize];
  if (*&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195717TimeContainerView_deviceSize] == 0.0 && *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195717TimeContainerView_deviceSize + 8] == 0.0)
  {
    v7.receiver = v0;
    v7.super_class = type metadata accessor for TimeContainerView();
    return objc_msgSendSuper2(&v7, sel_layoutSubviews);
  }

  else
  {
    [*&v0[v1] setFrame_];
    [v0 bounds];
    v5 = *&v0[v1];
    CGAffineTransformMakeScale(&v8, v6 / v3[1], v6 / v3[1]);
    return [v5 setTransform_];
  }
}

char *sub_23BFF497C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_titleLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_subtitleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_showBackground] = 0;
  v11 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_activeBackgroundColor;
  *&v4[v11] = [objc_opt_self() tintColor];
  v49.receiver = v4;
  v49.super_class = type metadata accessor for CapsuleLabelView();
  v12 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_titleLabel;
  v14 = *&v12[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_titleLabel];
  v15 = v12;
  [v14 setTextAlignment_];
  v16 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_subtitleLabel;
  [*&v15[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_subtitleLabel] setTextAlignment_];
  v17 = v15;
  v18 = *&v12[v13];
  v19 = v17;
  [v19 addSubview_];
  [v19 addSubview_];
  [*&v12[v13] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v15[v16] setTranslatesAutoresizingMaskIntoConstraints_];
  v48 = objc_opt_self();
  sub_23BF4A264(&qword_27E1E05E0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C009B60;
  v21 = [*&v12[v13] topAnchor];
  v22 = [v19 &selRef_string];
  v23 = [v21 constraintEqualToAnchor:v22 constant:6.0];

  *(v20 + 32) = v23;
  v24 = [*&v12[v13] centerXAnchor];
  v25 = [v19 centerXAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  *(v20 + 40) = v26;
  v27 = [*&v15[v16] bottomAnchor];
  v28 = [v19 &selRef_photosCount + 5];

  v29 = [v27 constraintEqualToAnchor:v28 constant:-6.0];
  *(v20 + 48) = v29;
  v30 = [*&v15[v16] centerXAnchor];
  v31 = [v19 centerXAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  *(v20 + 56) = v32;
  v33 = [*&v15[v16] topAnchor];
  v34 = [*&v12[v13] bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:1.0];

  *(v20 + 64) = v35;
  v36 = [v19 widthAnchor];

  v37 = [v36 constraintGreaterThanOrEqualToConstant_];
  *(v20 + 72) = v37;
  v38 = [v19 heightAnchor];

  v39 = [v38 constraintGreaterThanOrEqualToConstant_];
  *(v20 + 80) = v39;
  v40 = [v19 widthAnchor];

  v41 = [*&v15[v16] widthAnchor];
  v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41 constant:8.0];

  *(v20 + 88) = v42;
  v43 = [v19 widthAnchor];

  v44 = [*&v12[v13] widthAnchor];
  v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44 constant:8.0];

  *(v20 + 96) = v45;
  sub_23BF4BDF0(0, &qword_27E1E0610);
  v46 = sub_23BFFA450();

  [v48 activateConstraints_];

  return v19;
}

void sub_23BFF4F64()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CapsuleLabelView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_showBackground;
  v2 = 0.0;
  if (v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_showBackground] == 1 && ([v0 bounds], v2 = CGRectGetHeight(v9) / 2.1, v0[v1] == 1))
  {
    v3 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_activeBackgroundColor];
  }

  else
  {
    v3 = [objc_opt_self() clearColor];
  }

  v4 = v3;
  [v0 setBackgroundColor_];

  v5 = [v0 layer];
  [v5 setCornerRadius_];

  v6 = [v0 layer];
  [v6 setCornerCurve_];

  v7 = [v0 layer];
  [v7 setMasksToBounds_];
}

void sub_23BFF51BC()
{
  v0 = objc_opt_self();
  v1 = [v0 systemFontOfSize:11.0 weight:*MEMORY[0x277D743F8]];
  v2 = [v1 fontDescriptor];

  v3 = [v2 fontDescriptorWithSymbolicTraits_];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 fontDescriptorWithSymbolicTraits_];

    if (v5)
    {
      v6 = [v0 fontWithDescriptor:v5 size:11.0];

      qword_27E1EB690 = v6;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void (*sub_23BFF52B4(uint64_t *a1))(_OWORD **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1C0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 440) = v1;
  v5 = (v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_appliedConfiguration);
  *v3 = *v5;
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[4];
  *(v3 + 48) = v5[3];
  *(v3 + 64) = v8;
  *(v3 + 16) = v6;
  *(v3 + 32) = v7;
  *(v3 + 344) = &type metadata for TimeLayoutOptionCellConfiguration;
  *(v3 + 352) = sub_23BFD9928();
  v9 = swift_allocObject();
  *(v4 + 320) = v9;
  v10 = v5[1];
  v9[1] = *v5;
  v9[2] = v10;
  v11 = v5[3];
  v9[3] = v5[2];
  v9[4] = v11;
  v9[5] = v5[4];
  sub_23BFD9878(v4, v4 + 240);
  return sub_23BFF5398;
}

void sub_23BFF5398(_OWORD **a1, char a2)
{
  v3 = *a1;
  sub_23BFA8544((*a1 + 20), *a1 + 360);
  if (a2)
  {
    sub_23BFA8544(v3 + 360, (v3 + 25));
    sub_23BF4A264(&qword_27E1E3050);
    if (swift_dynamicCast())
    {
      v4 = v3[18];
      v3[7] = v3[17];
      v3[8] = v4;
      v3[9] = v3[19];
      v5 = v3[16];
      v3[5] = v3[15];
      v3[6] = v5;
      sub_23BFF5E64((v3 + 5));
      sub_23BFD98D4((v3 + 5));
    }

    sub_23BF4A9A4(v3 + 360);
  }

  else
  {
    sub_23BF4A264(&qword_27E1E3050);
    if (swift_dynamicCast())
    {
      v6 = v3[18];
      v3[12] = v3[17];
      v3[13] = v6;
      v3[14] = v3[19];
      v7 = v3[16];
      v3[10] = v3[15];
      v3[11] = v7;
      sub_23BFF5E64((v3 + 10));
      sub_23BFD98D4((v3 + 10));
    }
  }

  sub_23BF4A9A4((v3 + 20));

  free(v3);
}

id sub_23BFF54E8(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_previewContainer) *a2];
    v7 = [v6 constraintEqualToConstant_];

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_23BFF5588()
{
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView____lazy_storage___alignmentView;
  v2 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView____lazy_storage___alignmentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView____lazy_storage___alignmentView);
  }

  else
  {
    sub_23BF4A264(&qword_27E1E05E0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_23C002030;
    v5 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_previewContainer);
    v6 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_previewLabel);
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    v7 = objc_allocWithZone(MEMORY[0x277D75A68]);
    sub_23BF4BDF0(0, &qword_27E1E1998);
    v8 = v5;
    v9 = v6;
    v10 = sub_23BFFA450();

    v11 = [v7 initWithArrangedSubviews_];

    [v11 setAxis_];
    [v11 setSpacing_];
    v12 = *(v0 + v1);
    *(v0 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_23BFF56D0(_OWORD *a1)
{
  v3 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_previewContainer;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_timeContainer;
  type metadata accessor for TimeContainerView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_previewLabel;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for CapsuleLabelView()) initWithFrame_];
  *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView____lazy_storage___previewHeightAnchor] = 0;
  *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView____lazy_storage___previewWidthAnchor] = 0;
  *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView____lazy_storage___alignmentView] = 0;
  v6 = &v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_appliedConfiguration];
  v7 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v7;
  *(v6 + 4) = a1[4];
  v8 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v8;
  sub_23BFD9878(a1, v12);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for TimeLayoutOptionContentView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_23BFF5858();
  sub_23BFF5E64(a1);
  [v9 setIsAccessibilityElement_];
  sub_23BFD98D4(a1);

  return v9;
}

void sub_23BFF5858()
{
  v1 = v0;
  v2 = sub_23BF4A264(&qword_27E1E0B80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v39 - v7;
  v9 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_timeContainer;
  [*&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_previewContainer] addSubview_];
  [*&v1[v9] addSubview_];
  v10 = *(*&v1[v9] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195717TimeContainerView_timeView);
  v11 = NTKIdealizedDate();
  if (v11)
  {
    v12 = v11;
    sub_23BFF8D80();

    v13 = sub_23BFF8D90();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  }

  else
  {
    v13 = sub_23BFF8D90();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  v14 = *&v10[OBJC_IVAR___NTKParmesanTimeView_timeFormatter];
  sub_23BF4B33C(v8, v4, &qword_27E1E0B80);
  sub_23BFF8D90();
  v15 = *(v13 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v4, 1, v13) != 1)
  {
    v16 = sub_23BFF8D60();
    (*(v15 + 8))(v4, v13);
  }

  [v14 setOverrideDate_];

  sub_23BF4B2D4(v8, &qword_27E1E0B80);
  v17 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_previewLabel;
  v18 = qword_27E1DFE38;
  v19 = *(*&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_previewLabel] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_titleLabel);
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setFont_];

  [*(*&v1[v17] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_subtitleLabel) setFont_];
  [*(*&v1[v17] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_titleLabel) setTextAlignment_];
  [*(*&v1[v17] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_subtitleLabel) setTextAlignment_];
  v20 = sub_23BFF5588();
  [v1 addSubview_];

  v21 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView____lazy_storage___alignmentView;
  [*&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView____lazy_storage___alignmentView] setAlignment_];
  [*&v1[v21] setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = objc_opt_self();
  sub_23BF4A264(&qword_27E1E05E0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23C008D50;
  v24 = [*&v1[v21] topAnchor];
  v25 = [v1 topAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v23 + 32) = v26;
  v27 = [*&v1[v21] bottomAnchor];
  v28 = [v1 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v23 + 40) = v29;
  v30 = [*&v1[v21] leadingAnchor];
  v31 = [v1 leadingAnchor];
  v32 = [v30 constraintGreaterThanOrEqualToAnchor_];

  *(v23 + 48) = v32;
  v33 = [*&v1[v21] trailingAnchor];
  v34 = [v1 trailingAnchor];
  v35 = [v33 constraintGreaterThanOrEqualToAnchor_];

  *(v23 + 56) = v35;
  sub_23BF4BDF0(0, &qword_27E1E0610);
  v36 = sub_23BFFA450();

  [v22 activateConstraints_];

  [*&v1[v9] constrainToSuperviewWithEdges:15 insets:0 useLayoutMargins:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  v37 = [*&v1[v9] layer];
  [v37 setMasksToBounds_];

  v38 = [*&v1[v9] layer];
  [v38 setCornerCurve_];
}

id sub_23BFF5E64(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_appliedConfiguration];
  v5 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_appliedConfiguration + 32];
  v6 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_appliedConfiguration + 64];
  v69[3] = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_appliedConfiguration + 48];
  v69[4] = v6;
  v7 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_appliedConfiguration];
  v69[1] = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_appliedConfiguration + 16];
  v69[2] = v5;
  v69[0] = v7;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v8;
  v9 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v9;
  *(v4 + 4) = *(a1 + 64);
  sub_23BFD9878(a1, v67);
  sub_23BFD98D4(v69);
  v10 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_previewLabel;
  v11 = *a1;
  v12 = *(*&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_previewLabel] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_titleLabel);
  v13 = [v11 localizedScaleDisplayString];
  sub_23BFFA300();

  sub_23BFFA370();

  v14 = sub_23BFFA2C0();

  [v12 setText_];

  v15 = *(*&v2[v10] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_subtitleLabel);
  v66 = v11;
  v16 = [v11 localizedAlignmentDisplayString];
  sub_23BFFA300();

  sub_23BFFA370();

  v17 = sub_23BFFA2C0();

  [v15 setText_];

  [*(*&v2[v10] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_titleLabel) setTextColor_];
  [*(*&v2[v10] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_subtitleLabel) setTextColor_];
  v18 = sub_23BFF54C0();
  v19 = *(a1 + 8);
  [v18 setConstant_];

  v20 = sub_23BFF54D4();
  [v20 setConstant_];

  [*&v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView____lazy_storage___previewHeightAnchor] setActive_];
  [*&v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView____lazy_storage___previewWidthAnchor] setActive_];
  v21 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_timeContainer;
  v22 = [*&v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_timeContainer] layer];
  v23 = *(a1 + 72);
  if (v23)
  {
    v24 = [v23 CGColor];
    v25 = 3.0;
  }

  else
  {
    v24 = 0;
    v25 = 0.0;
  }

  [v22 setBorderColor_];

  v26 = [*&v2[v21] layer];
  [v26 setBorderWidth_];

  v27 = *&v2[v21];
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 darkGrayColor];
  [v29 setBackgroundColor_];

  v31 = *(a1 + 64);
  v68 = v31;
  v32 = &selRef_setClipsToBounds_;
  if (v31)
  {
    v33 = *&v2[v10];
    v34 = *(v33 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_activeBackgroundColor);
    *(v33 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_activeBackgroundColor) = v31;
    sub_23BF4B33C(&v68, v67, &qword_27E1E2AC0);
    sub_23BF4B33C(&v68, v67, &qword_27E1E2AC0);

    v35 = *&v2[v10];
    v36 = v35[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_showBackground];
    v35[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_showBackground] = 1;
    if (v36 == 1)
    {
      sub_23BF4B2D4(&v68, &qword_27E1E2AC0);
      v37 = &selRef__setupTapControl;
      v32 = &selRef_setClipsToBounds_;
    }

    else
    {
      v45 = v35;
      v46 = [v28 clearColor];
      [v45 setBackgroundColor_];

      v32 = &selRef_setClipsToBounds_;
      [v45 setNeedsLayout];

      sub_23BF4B2D4(&v68, &qword_27E1E2AC0);
      v37 = &selRef__setupTapControl;
    }
  }

  else
  {
    v38 = *&v2[v10];
    v39 = [v28 clearColor];
    v40 = *&v38[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_activeBackgroundColor];
    *&v38[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_activeBackgroundColor] = v39;

    v41 = *&v2[v10];
    v42 = v41[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_showBackground];
    v41[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_showBackground] = 0;
    v37 = &selRef__setupTapControl;
    if (v42 == 1)
    {
      v43 = *&v41[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_activeBackgroundColor];
      v44 = v41;
      [v44 setBackgroundColor_];
      [v44 setNeedsLayout];
    }
  }

  v47 = *&v2[v21];
  *&v47[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195717TimeContainerView_deviceSize] = *(a1 + 24);
  v48 = [v47 v37[334]];
  [v48 setCornerRadius_];

  v49 = *(*&v2[v21] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195717TimeContainerView_timeView);
  v50 = *&v49[OBJC_IVAR___NTKParmesanTimeView_appearance];
  v51 = *(v50 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
  *(v50 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout) = v66;
  v52 = v49;
  v53 = v66;

  sub_23BF7D190();
  sub_23BF7C4C8();

  [*(*&v2[v21] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195717TimeContainerView_timeView) v32[62]];
  v54 = [v53 localizedScaleDisplayString];
  v55 = sub_23BFFA300();
  v57 = v56;

  v67[0] = v55;
  v67[1] = v57;
  MEMORY[0x23EEC3090](8236, 0xE200000000000000);
  v58 = [v53 localizedAlignmentDisplayString];
  v59 = sub_23BFFA300();
  v61 = v60;

  MEMORY[0x23EEC3090](v59, v61);

  v62 = sub_23BFFA2C0();

  [v2 setAccessibilityLabel_];

  v63 = *MEMORY[0x277D76548];
  if (v68)
  {
    v64 = *MEMORY[0x277D76598];
    if (v63)
    {
      if ((v64 & ~v63) == 0)
      {
        return [v2 setAccessibilityTraits_];
      }
    }

    else if (!v64)
    {
      v63 = 0;
      return [v2 setAccessibilityTraits_];
    }

    v63 |= v64;
  }

  return [v2 setAccessibilityTraits_];
}

id sub_23BFF6564(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23BFF6690@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_appliedConfiguration);
  v4 = v3[3];
  v11[2] = v3[2];
  v11[3] = v4;
  v11[4] = v3[4];
  v5 = v3[1];
  v11[0] = *v3;
  v11[1] = v5;
  a1[3] = &type metadata for TimeLayoutOptionCellConfiguration;
  a1[4] = sub_23BFD9928();
  v6 = swift_allocObject();
  *a1 = v6;
  v7 = v3[3];
  v6[3] = v3[2];
  v6[4] = v7;
  v6[5] = v3[4];
  v8 = v3[1];
  v6[1] = *v3;
  v6[2] = v8;
  return sub_23BFD9878(v11, &v10);
}

uint64_t sub_23BFF672C(uint64_t a1)
{
  sub_23BFA8544(a1, v8);
  sub_23BF4A264(&qword_27E1E3050);
  if (swift_dynamicCast())
  {
    v9[1] = v4;
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v7;
    v9[0] = v3;
    sub_23BFF5E64(v9);
    sub_23BFD98D4(v9);
  }

  return sub_23BF4A9A4(a1);
}

void (*sub_23BFF67CC(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23BFF52B4(v2);
  return sub_23BFAE00C;
}

void sub_23BFF6840()
{
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_subtitleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_showBackground) = 0;
  v3 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_EBF95A84E200E7A60B1CF147358B195716CapsuleLabelView_activeBackgroundColor;
  *(v0 + v3) = [objc_opt_self() tintColor];
  sub_23BFFAB00();
  __break(1u);
}

void sub_23BFF691C()
{
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_previewContainer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_timeContainer;
  type metadata accessor for TimeContainerView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView_previewLabel;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for CapsuleLabelView()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView____lazy_storage___previewHeightAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView____lazy_storage___previewWidthAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27TimeLayoutOptionContentView____lazy_storage___alignmentView) = 0;
  sub_23BFFAB00();
  __break(1u);
}

void sub_23BFF6A44(char a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_debug_impl(&dword_23BF0C000, log, OS_LOG_TYPE_DEBUG, "isInitialSetSelectOptions: %{BOOL}d, option: %@", v3, 0x12u);
}

void sub_23BFF6AD0(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a2 + 176);
  v5 = *(a2 + 192);
  v6 = 134218496;
  v7 = v3;
  v8 = 2048;
  v9 = v4;
  v10 = 2048;
  v11 = v5;
  _os_log_error_impl(&dword_23BF0C000, log, OS_LOG_TYPE_ERROR, "Editor type was switched, but we have external assets, that shouldn't be possible… photoEditor = %p, albumEditor = %p, imageEditor = %p", &v6, 0x20u);
}

void sub_23BFF6BC0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23BF0C000, a2, OS_LOG_TYPE_ERROR, "Parmesan couldn't get preview %@", &v2, 0xCu);
}

void sub_23BFF6C38(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23BF0C000, a2, OS_LOG_TYPE_ERROR, "Parmesan couldn't get reset preview %@", &v2, 0xCu);
}

void sub_23BFF6CB0(uint64_t a1, const char *a2, NSObject *a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_localIdentifier(*(a1 + 32), a2, a3, a4);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_23BF0C000, a3, OS_LOG_TYPE_ERROR, "Failed to create new preview for changed asset with id = %@, error = %@", &v7, 0x16u);
}

void sub_23BFF6D64(void *a1, const char *a2, NSObject *a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_count(a1, a2, a3, a4);
  v10 = objc_msgSend_count(*a2, v7, v8, v9);
  v11 = 134218240;
  v12 = v6;
  v13 = 2048;
  v14 = v10;
  _os_log_error_impl(&dword_23BF0C000, a3, OS_LOG_TYPE_ERROR, "Image reorder contains different number of items which is invalid, new = %ld, old = %ld", &v11, 0x16u);
}

void sub_23BFF6E88(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NTKParmesanImageEditor savePreview:forPhotoAtIndex:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_23BF0C000, a2, OS_LOG_TYPE_DEBUG, "%s: saving preview %@", &v2, 0x16u);
}

void sub_23BFF6F94(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_localizedDescription(a1, a2, a3, a4);
  v6 = 138543362;
  v7 = v5;
  _os_log_error_impl(&dword_23BF0C000, a2, OS_LOG_TYPE_ERROR, "Failed to write image data to disk: %{public}@", &v6, 0xCu);
}

void sub_23BFF70E4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_23BF0C000, a2, OS_LOG_TYPE_ERROR, "Invalid asset types given to face for editor initialization, type = %{public}@", &v2, 0xCu);
}

void sub_23BFF71E4()
{
  sub_23BF26834();
  sub_23BF26804();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_23BFF7270(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_localIdentifier(*(a1 + 32), a2, a3, a4);
  objc_msgSend_length(a2, v7, v8, v9);
  v17 = objc_msgSend_originalUniformTypeIdentifierForAsset_(MEMORY[0x277CD97A8], v10, *(a1 + 32), v11);
  sub_23BF26844();
  _os_log_debug_impl(v12, v13, v14, v15, v16, 0x2Au);
}

void sub_23BFF7364(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_pixelWidth(*(a1 + 32), a2, a3, a4);
  objc_msgSend_pixelHeight(*(a1 + 32), v5, v6, v7);
  sub_23BF26844();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x2Au);
}

void sub_23BFF7430(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_phAsset(a1, a2, a3, a4);
  sub_23BF267F0();
  sub_23BF26814(&dword_23BF0C000, v5, v6, "%s: Cannot get mask && original ParmesanAsset for %@", v7, v8, v9, v10, 2u);
}

void sub_23BFF74C0(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[_NTKEditedParmesanAsset addOriginalAssetAndMaskData]";
  *&v3[12] = 2112;
  *&v3[14] = *a1;
  *&v3[22] = 2112;
  sub_23BF26870(&dword_23BF0C000, a2, a3, "%s: original asset == %@, maskdata == %@", *v3, *&v3[8], *&v3[16], *(a2 + 48));
}

void sub_23BFF7550()
{
  sub_23BF267F0();
  sub_23BF26804();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_23BFF7650(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_asset(a1, a2, a3, a4);
  sub_23BF26834();
  sub_23BF26844();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_23BFF771C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_asset(a1, a2, a3, a4);
  sub_23BF267F0();
  sub_23BF26814(&dword_23BF0C000, v5, v6, "%s: No layout data for asset %@", v7, v8, v9, v10, 2u);
}

void sub_23BFF77AC(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NTKCParmesanPhotosEditor replaceAssetAtIndex:withAsset:]";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_23BF0C000, a2, OS_LOG_TYPE_ERROR, "%s: invalid index for asset to replace: %ld", &v2, 0x16u);
}

void sub_23BFF7838(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[NTKCParmesanPhotosEditor previewOfLibraryPhotoAtIndex:completion:]_block_invoke_3";
  *&v3[12] = 2048;
  *&v3[14] = *a1;
  *&v3[22] = 2112;
  sub_23BF26870(&dword_23BF0C000, a2, a3, "%s: preview model for index %ld == %@", *v3, *&v3[8], *&v3[16], a2);
}

void sub_23BFF793C(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_count(a1, a2, a3, a4);
  objc_msgSend_count(a2, v5, v6, v7);
  sub_23BF26814(&dword_23BF0C000, v8, v9, "_fetchAssetsForNewPhotos: could only retrieve %ld assets for %ld local identifiers", v10, v11, v12, v13, 0);
}

void sub_23BFF7A50(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_phAsset(a1, a2, a3, a4);
  v9 = objc_msgSend_localIdentifier(v5, v6, v7, v8);
  v10 = 138412290;
  v11 = v9;
  _os_log_error_impl(&dword_23BF0C000, a2, OS_LOG_TYPE_ERROR, "_copyOrTranscodeAssetWithIds: cannot compute the original layout for %@; skipping", &v10, 0xCu);
}

void sub_23BFF7B04(void *a1, const char *a2, NSObject *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_phAsset(a1, a2, a3, a4);
  v10 = objc_msgSend_localIdentifier(v6, v7, v8, v9);
  v11 = 136315650;
  v12 = "[NTKCParmesanPhotosEditor _copyOrTranscodeAssetWithIds:to:shouldPurgeOriginalData:progress:completion:]_block_invoke";
  v13 = 2048;
  v14 = a2;
  v15 = 2112;
  v16 = v10;
  _os_log_error_impl(&dword_23BF0C000, a3, OS_LOG_TYPE_ERROR, "%s: Cannot finalize layer for time size %ld for asset %@; skipping", &v11, 0x20u);
}

void sub_23BFF7BDC()
{
  sub_23BF267F0();
  sub_23BF26804();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_23BFF7CE0(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NTKParmesanAssetReader contentType]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_23BF0C000, a2, OS_LOG_TYPE_ERROR, "%s: bad content type for reader %@", &v2, 0x16u);
}

void sub_23BFF7D6C()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_23BF2859C();
  _os_log_error_impl(&dword_23BF0C000, v0, OS_LOG_TYPE_ERROR, "%@: bad resource directory wrapper; inconsistent shuffle/album/daily combination", v1, 0xCu);
}

void sub_23BFF7DE0()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_23BF2859C();
  _os_log_error_impl(&dword_23BF0C000, v0, OS_LOG_TYPE_ERROR, "%@: bad resource directory wrapper; inconsistent people description", v1, 0xCu);
}

void sub_23BFF7E54(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  sub_23BF2859C();
  v4 = v3;
  _os_log_error_impl(&dword_23BF0C000, a2, OS_LOG_TYPE_ERROR, "%@: No version specified in plist", v5, 0xCu);
}

void sub_23BFF7EE8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  sub_23BF2859C();
  v8 = 2112;
  v9 = a2;
  v6 = v5;
  _os_log_error_impl(&dword_23BF0C000, a3, OS_LOG_TYPE_ERROR, "%@: cannot read image list from %@", v7, 0x16u);
}

void sub_23BFF7FF8()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_23BF2A6C4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_23BF0C000, v1, OS_LOG_TYPE_ERROR, "Cannot create resource directory for shuffle %@: %@", v2, 0x16u);
}

void sub_23BFF8080()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_23BF2A6C4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_23BF0C000, v1, OS_LOG_TYPE_ERROR, "_queue_createResourceDirectoryForShuffle: cannot delete resource directory at path %@, error == %@", v2, 0x16u);
}

void sub_23BFF8260(unsigned int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "CGImagePropertyOrientation orientationFromData(NSData *__strong _Nonnull)";
  v4 = 2048;
  v5 = a1;
  _os_log_debug_impl(&dword_23BF0C000, a2, OS_LOG_TYPE_DEBUG, "%s: orientation == %ld", &v2, 0x16u);
}

void sub_23BFF8340()
{
  sub_23BF2859C();
  sub_23BF198E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BFF83F0()
{
  sub_23BF2859C();
  sub_23BF198E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BFF8460()
{
  sub_23BF2859C();
  sub_23BF198E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BFF855C(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[NTKCParmesanAlbumEditor finalizeWithProgress:completion:]";
  _os_log_debug_impl(&dword_23BF0C000, log, OS_LOG_TYPE_DEBUG, "%s: Editor is finalizing", &v1, 0xCu);
}

void sub_23BFF86A0()
{
  sub_23BF2859C();
  sub_23BF198E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BFF8710(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_resourceDirectoryURL(a1, a2, a3, a4);
  v13 = objc_msgSend_lastPathComponent(v4, v5, v6, v7);
  sub_23BF35610();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
}

void sub_23BFF87B8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_resourceDirectoryURL(a1, a2, a3, a4);
  v13 = objc_msgSend_lastPathComponent(v4, v5, v6, v7);
  sub_23BF35610();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
}

void sub_23BFF8860(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_resourceDirectoryURL(a1, a2, a3, a4);
  v9 = objc_msgSend_lastPathComponent(v5, v6, v7, v8);
  v17 = objc_msgSend_objectForKeyedSubscript_(a2, v10, @"localIdentifier", v11);
  sub_23BF35610();
  _os_log_error_impl(v12, v13, v14, v15, v16, 0x16u);
}

void sub_23BFF8938(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_23BF0C000, a2, OS_LOG_TYPE_ERROR, "Parmesan_getPreviewWithCompletion: no editor; index == %ld", &v3, 0xCu);
}

void sub_23BFF89B4(void *a1, const char *a2, NSObject *a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = 136315650;
  v7 = "[NTKParmesanFace trackedPhotosContent]";
  v8 = 2048;
  v9 = objc_msgSend_contentType(a1, a2, a3, a4);
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_23BF0C000, a3, OS_LOG_TYPE_ERROR, "%s: bad photo content type %ld for face %@", &v6, 0x20u);
}

void sub_23BFF8A64(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_23BF0C000, a2, OS_LOG_TYPE_ERROR, "%s: cannot write the image list to %@", &v2, 0x16u);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x282114928](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect UIAccessibilityConvertFrameToScreenCoordinates(CGRect rect, UIView *view)
{
  MEMORY[0x2821DE370](view, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}