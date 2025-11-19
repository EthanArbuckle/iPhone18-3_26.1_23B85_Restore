uint64_t sub_23718E25C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2371905D4(a2, a3);
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
      sub_237190CA4(v16, a4 & 1);
      v11 = sub_2371905D4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_237196AAC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_237192488();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_23718E3D4(_OWORD *a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2371906E0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2371925F4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_237190F48(v14, a3 & 1);
    v9 = sub_2371906E0(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_237196AAC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_23711BDA4(a1, v20);
  }

  else
  {

    return sub_23718EAA4(v9, a2, a1, v19);
  }
}

unint64_t sub_23718E500(uint64_t a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2371906E0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_237191428(v14, a3 & 1);
      result = sub_2371906E0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_237196AAC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2371928BC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    v21 = v19[7] + 152 * result;
    v22 = *(a1 + 16);
    *v21 = *a1;
    *(v21 + 16) = v22;
    v23 = *(a1 + 32);
    v24 = *(a1 + 48);
    v25 = *(a1 + 80);
    *(v21 + 64) = *(a1 + 64);
    *(v21 + 80) = v25;
    *(v21 + 32) = v23;
    *(v21 + 48) = v24;
    v26 = *(a1 + 96);
    v27 = *(a1 + 112);
    v28 = *(a1 + 128);
    *(v21 + 144) = *(a1 + 144);
    *(v21 + 112) = v27;
    *(v21 + 128) = v28;
    *(v21 + 96) = v26;
    v29 = v19[2];
    v13 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v13)
    {
      v19[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 152 * result;

  return sub_23718EB78(a1, v20);
}

unint64_t sub_23718E680(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23719336C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_237192AA0();
    result = v17;
    goto LABEL_8;
  }

  sub_23719181C(v14, a3 & 1);
  result = sub_23719336C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_237196AAC();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

_OWORD *sub_23718E7C8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2371905D4(a2, a3);
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
      sub_237192EA4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_237191F4C(v16, a4 & 1);
    v11 = sub_2371905D4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_237196AAC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_23711BDA4(a1, v22);
  }

  else
  {
    sub_23718EB0C(v11, a2, a3, a1, v21);
  }
}

void sub_23718E918(uint64_t a1, char a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_23719082C(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_237192204(v15, a4 & 1);
      v10 = sub_23719082C(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_237115094(0, &qword_27DE94790);
        sub_237196AAC();
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = v10;
      sub_237193048();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 16 * v10;
    v22 = *v21;
    *v21 = a1;
    *(v21 + 8) = a2;

    return;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = v20[7] + 16 * v10;
  *v23 = a1;
  *(v23 + 8) = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  v26 = a3;
}

_OWORD *sub_23718EAA4(unint64_t a1, int a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = sub_23711BDA4(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_23718EB0C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23711BDA4(a4, (a5[7] + 32 * a1));
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

void sub_23718EBD4(unint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC12CoreAudioKit21CAAUNBandEQHeaderView_typeControl;
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
    sub_23712D680(v6);
    v10 = v6;
    [v10 setTag_];
    if (v9)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_11;
      }

      if (*(v8 + 16) > a1)
      {
LABEL_8:

        v11 = sub_23719653C();
        [v10 setTitle:v11 forState:0];

        v12 = sub_23719653C();

        [v10 setTitle:v12 forState:2];

        [v10 setTintColor_];

        return;
      }

      __break(1u);
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(v7 + 16) > a1)
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
      return;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

void sub_23718ED5C()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_audioUnit;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_audioUnit);
  if (v2)
  {
    v3 = v2;
    v4 = v0;
    v5 = sub_23718F2A8(v3);

    v6 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_controlsView);
    *(v6 + OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_params) = v5;

    sub_2371270F4();
    sub_2371272F4();
    v7 = *(v4 + v1);
    v8 = *(v6 + OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_audioUnit);
    *(v6 + OBJC_IVAR____TtC12CoreAudioKit24AUDistortionControlsView_audioUnit) = v7;
    v9 = v7;

    sub_2371275DC();
    v27 = sub_23719653C();
    v10 = [objc_opt_self() defaultCenter];
    v31 = v4;
    [v10 addObserver:v4 selector:sel_parameterChangedWithNotification_ name:v27 object:0];

    if (v5 >> 62)
    {
LABEL_21:
      v11 = sub_2371969FC();
      v12 = v31;
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v4;
      if (v11)
      {
LABEL_4:
        v13 = v5 & 0xC000000000000001;
        v29 = OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_paramMap;
        v30 = OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_visualizationView;
        swift_beginAccess();
        v14 = 0;
        v28 = v5 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v13)
          {
            v15 = MEMORY[0x2383C62A0](v14, v5);
          }

          else
          {
            if (v14 >= *(v28 + 16))
            {
              goto LABEL_20;
            }

            v15 = *(v5 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (v18)
          {
            v19 = *(v12 + v30);
            if (!v19)
            {
              __break(1u);
              goto LABEL_26;
            }

            v20 = v18;
            v21 = v5;
            v5 = v19;
            v22 = [v20 address];
            v23 = *(v12 + v29);
            if (!*(v23 + 16))
            {
              goto LABEL_18;
            }

            v24 = sub_23710134C(v22);
            if ((v25 & 1) == 0)
            {
              goto LABEL_19;
            }

            v26 = *(*(v23 + 56) + 4 * v24);
            [v20 value];
            (*((*MEMORY[0x277D85000] & *v5) + 0xC8))(v26);

            v16 = v5;
            v5 = v21;
            v12 = v31;
          }

          ++v14;
          if (v17 == v11)
          {

            return;
          }
        }
      }
    }
  }

  else
  {
LABEL_26:
    __break(1u);
  }
}

void *sub_23718F138(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_visualizationView] = 0;
  v9 = OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_controlsView;
  type metadata accessor for AUDistortionControlsView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = &v4[OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_dataSource];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_audioUnit] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_paramMap] = MEMORY[0x277D84F98];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for AUDistortionSectionView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *((*MEMORY[0x277D85000] & *v11) + 0xF8);
  v13 = v11;
  v12();

  return v13;
}

uint64_t sub_23718F2A8(void *a1)
{
  v2 = v1;
  v32 = MEMORY[0x277D84F90];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();
  v5 = [a1 parameterTree];
  v6 = v5;
  v7 = *(v4 + 16);
  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  v8 = 0;
  v30 = v4;
  v31 = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_paramMap;
  v29 = *(v4 + 16);
  while (v8 < *(v4 + 16))
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    v10 = *(v4 + 4 * v8 + 32);
    v11 = [v6 parameterWithID:v10 scope:0 element:0];
    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = v11;
    MEMORY[0x2383C5F60]();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();
    v31 = v32;
    v13 = [v12 address];

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + v9);
    *(v2 + v9) = 0x8000000000000000;
    v16 = sub_23710134C(v13);
    v18 = v15[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_24;
    }

    v22 = v17;
    if (v15[3] < v21)
    {
      sub_237191A84(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_23710134C(v13);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_26;
      }

LABEL_16:
      v24 = v15;
      if ((v22 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v27 = v16;
    sub_237192BFC();
    v16 = v27;
    v24 = v15;
    if ((v22 & 1) == 0)
    {
LABEL_17:
      v24[(v16 >> 6) + 8] |= 1 << v16;
      *(v24[6] + 8 * v16) = v13;
      *(v24[7] + 4 * v16) = v10;
      v25 = v24[2];
      v20 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v20)
      {
        goto LABEL_25;
      }

      v24[2] = v26;
      goto LABEL_4;
    }

LABEL_3:
    *(v24[7] + 4 * v16) = v10;
LABEL_4:
    *(v2 + v9) = v24;
    swift_endAccess();

    v7 = v29;
    v4 = v30;
LABEL_5:
    if (v7 == ++v8)
    {

      return v31;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_237196AAC();
  __break(1u);
  return result;
}

void sub_23718F5A4()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_visualizationView;
  if (!*&v0[OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_visualizationView])
  {
    type metadata accessor for AUVisualizationView();
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3 = *&v0[v1];
    *&v0[v1] = v2;
  }

  v4 = sub_23719653C();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  v6 = [objc_opt_self() currentTraitCollection];
  v7 = sub_23719653C();
  v8 = objc_opt_self();
  v9 = [v8 colorNamed:v7 inBundle:v5 compatibleWithTraitCollection:v6];

  v10 = [v0 contentView];
  v11 = [v10 layer];

  v12 = [v8 tertiaryLabelColor];
  v13 = [v12 CGColor];

  [v11 setBackgroundColor_];
  v14 = *&v0[v1];
  if (!v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v8 systemBackgroundColor];
  [v15 setBackgroundColor_];

  v17 = *&v0[v1];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [v0 contentView];
  if (!*&v0[v1])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v18;
  [v18 addSubview_];

  v20 = *&v0[OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_controlsView];
  [v20 setBackgroundColor_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = [v0 contentView];
  [v21 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23719BBE0;
  v23 = *&v0[v1];
  if (!v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = [v23 leadingAnchor];
  v25 = [v0 contentView];
  v26 = [v25 leadingAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v22 + 32) = v27;
  v28 = *&v0[v1];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = [v28 topAnchor];
  v30 = [v0 contentView];
  v31 = [v30 topAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v22 + 40) = v32;
  v33 = *&v0[v1];
  if (!v33)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v59 = v9;
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v0 contentView];
  v37 = v35;
  v38 = [v34 constraintWithItem:v37 attribute:7 relatedBy:0 toItem:v36 attribute:7 multiplier:0.45 constant:0.0];

  *(v22 + 48) = v38;
  v39 = *&v0[v1];
  if (!v39)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v40 = [v39 bottomAnchor];
  v41 = [v0 contentView];
  v42 = [v41 bottomAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:-1.0];
  *(v22 + 56) = v43;
  v44 = [v20 leadingAnchor];
  v45 = *&v0[v1];
  if (!v45)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v46 = [v45 trailingAnchor];
  v47 = [v44 constraintEqualToAnchor_];

  *(v22 + 64) = v47;
  v48 = [v20 topAnchor];
  v49 = [v0 contentView];
  v50 = [v49 topAnchor];

  v51 = [v48 constraintEqualToAnchor_];
  *(v22 + 72) = v51;
  v52 = [v0 contentView];
  v53 = v20;
  v54 = [v34 constraintWithItem:v53 attribute:7 relatedBy:0 toItem:v52 attribute:7 multiplier:0.55 constant:1.0];

  *(v22 + 80) = v54;
  v55 = [v53 bottomAnchor];
  v56 = [v0 contentView];
  v57 = [v56 bottomAnchor];

  v58 = [v55 constraintEqualToAnchor:v57 constant:-1.0];
  *(v22 + 88) = v58;
  sub_237115094(0, &qword_27DE94CC0);
  v60 = sub_23719661C();

  [v34 activateConstraints_];
}

uint64_t sub_23718FCD4()
{
  v1 = v0;
  v2 = sub_23719630C();
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = v2;
  sub_23719690C();
  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v4 = sub_237190728(v23);
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_237114D0C(*(v3 + 56) + 32 * v4, &v26);
  sub_237114F1C(v23);

  if (!*(&v27 + 1))
  {
    return sub_237120D04(&v26, &qword_27DE94D20);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v7 = *v23;
  v8 = OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_paramMap;
  result = swift_beginAccess();
  v9 = *(v1 + v8);
  if (!*(v9 + 16))
  {
    return result;
  }

  result = sub_23710134C(v7);
  if ((v10 & 1) == 0)
  {
    return result;
  }

  v11 = *(*(v9 + 56) + 4 * result);
  v12 = sub_23719630C();
  if (!v12)
  {
LABEL_17:
    v26 = 0u;
    v27 = 0u;
    return sub_237120D04(&v26, &qword_27DE94D20);
  }

  v13 = v12;
  sub_23719690C();
  if (!*(v13 + 16) || (v14 = sub_237190728(v23), (v15 & 1) == 0))
  {
LABEL_16:

    sub_237114F1C(v23);
    goto LABEL_17;
  }

  sub_237114D0C(*(v13 + 56) + 32 * v14, &v26);
  sub_237114F1C(v23);

  if (!*(&v27 + 1))
  {
    return sub_237120D04(&v26, &qword_27DE94D20);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v16 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_visualizationView);
    if (v16)
    {
      v17 = v23[0];
      v18 = *((*MEMORY[0x277D85000] & *v16) + 0xC8);
      v19 = v16;
      v18(v11, v17);

      v20 = OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_dataSource;
      swift_beginAccess();
      result = sub_23719076C(v1 + v20, v23);
      v21 = v24;
      if (v24)
      {
        v22 = v25;
        __swift_project_boxed_opaque_existential_0(v23, v24);
        (*(v22 + 40))(v11, v21, v22, v17);
        return __swift_destroy_boxed_opaque_existential_0(v23);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_2371903D4(void (*a1)(void))
{
  a1(0);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_visualizationView);
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_visualizationView) = v2;

  sub_23718F5A4();
}

id sub_237190454(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_2371904E0(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_237190574(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2371905D4(uint64_t a1, uint64_t a2)
{
  sub_237196AEC();
  sub_2371965BC();
  v4 = sub_237196B2C();

  return sub_23719087C(a1, a2, v4);
}

unint64_t sub_23719064C(uint64_t a1)
{
  sub_23719657C();
  sub_237196AEC();
  sub_2371965BC();
  v2 = sub_237196B2C();

  return sub_237190934(a1, v2);
}

unint64_t sub_2371906E0(unsigned int a1)
{
  v3 = MEMORY[0x2383C6420](*(v1 + 40), a1, 4);

  return sub_237190A38(a1, v3);
}

unint64_t sub_237190728(uint64_t a1)
{
  v2 = sub_2371968EC();

  return sub_237190AA4(a1, v2);
}

uint64_t sub_23719076C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23719087C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_237196A7C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_237190934(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23719657C();
      v8 = v7;
      if (v6 == sub_23719657C() && v8 == v9)
      {
        break;
      }

      v11 = sub_237196A7C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_237190A38(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_237190AA4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23713D334(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2383C6250](v9, a1);
      sub_237114F1C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_237190B6C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_237190BD8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_237115094(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_2371967DC();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_237190CA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE95860);
  v35 = a2;
  result = sub_237196A1C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_237196AEC();
      sub_2371965BC();
      result = sub_237196B2C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_237190F48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948C0);
  result = sub_237196A1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_23711BDA4(v21, v31);
      }

      else
      {
        sub_237114D0C(v21, v31);
      }

      result = MEMORY[0x2383C6420](*(v7 + 40), v20, 4);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      result = sub_23711BDA4(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
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

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2371911C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94890);
  result = sub_237196A1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      result = sub_237196ADC();
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

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_237191428(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948D0);
  v45 = a2;
  result = sub_237196A1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 152 * v20;
      if (v45)
      {
        v46 = *v22;
        v47 = *(v22 + 16);
        v23 = *(v22 + 32);
        v24 = *(v22 + 36);
        v25 = *(v22 + 44);
        v26 = *(v22 + 56);
        v48 = *(v22 + 72);
        v49 = *(v22 + 48);
        v50 = *(v22 + 80);
        v51 = *(v22 + 64);
        v52 = *(v22 + 88);
        v27 = *(v22 + 104);
        v53 = *(v22 + 96);
        v54 = *(v22 + 112);
        v55 = *(v22 + 120);
        v57 = *(v22 + 121);
        v56 = *(v22 + 128);
        v28 = *(v22 + 144);
      }

      else
      {
        v29 = *(v22 + 16);
        v59 = *v22;
        v60 = v29;
        v30 = *(v22 + 80);
        v32 = *(v22 + 32);
        v31 = *(v22 + 48);
        v63 = *(v22 + 64);
        v64 = v30;
        v61 = v32;
        v62 = v31;
        v34 = *(v22 + 112);
        v33 = *(v22 + 128);
        v35 = *(v22 + 96);
        v68 = *(v22 + 144);
        v66 = v34;
        v67 = v33;
        v65 = v35;
        v28 = v68;
        v56 = v33;
        v57 = BYTE9(v34);
        v55 = BYTE8(v34);
        v27 = *(&v35 + 1);
        v53 = v35;
        v54 = v34;
        v52 = *(&v64 + 1);
        v50 = v64;
        v48 = *(&v63 + 1);
        v51 = v63;
        v26 = *(&v62 + 1);
        v49 = v62;
        v25 = HIDWORD(v32);
        v24 = v32 >> 32;
        v23 = v32;
        v46 = v59;
        v47 = v60;
        sub_2371339F0(&v59, v58);
      }

      result = MEMORY[0x2383C6420](*(v7 + 40), v21, 4);
      v36 = -1 << *(v7 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 152 * v15;
      *v16 = v46;
      *(v16 + 16) = v47;
      *(v16 + 32) = v23;
      *(v16 + 36) = v24;
      *(v16 + 44) = v25;
      *(v16 + 48) = v49;
      *(v16 + 56) = v26;
      *(v16 + 64) = v51;
      *(v16 + 72) = v48;
      *(v16 + 80) = v50;
      *(v16 + 88) = v52;
      *(v16 + 96) = v53;
      *(v16 + 104) = v27;
      *(v16 + 112) = v54;
      *(v16 + 120) = v55;
      *(v16 + 121) = v57;
      *(v16 + 128) = v56;
      *(v16 + 144) = v28;
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

    if ((v45 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_23719181C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94988);
  result = sub_237196A1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
        v22 = v21;
      }

      result = sub_237196ADC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_237191A84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE95858);
  result = sub_237196A1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
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
      v21 = *(*(v5 + 56) + 4 * v19);
      result = sub_237196ADC();
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
      *(*(v7 + 56) + 4 * v15) = v21;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_237191CE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE948E0);
  result = sub_237196A1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      }

      result = sub_2371967CC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_237191F4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94898);
  v33 = a2;
  result = sub_237196A1C();
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
        sub_23711BDA4(v24, v34);
      }

      else
      {
        sub_237114D0C(v24, v34);
      }

      sub_237196AEC();
      sub_2371965BC();
      result = sub_237196B2C();
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
      result = sub_23711BDA4(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_237192204(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B8);
  v36 = a2;
  result = sub_237196A1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v36 & 1) == 0)
      {
        v25 = v21;
        v26 = v23;
      }

      result = sub_2371967CC();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      ++*(v7 + 16);
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

    if (v36)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_237192488()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE95860);
  v2 = *v0;
  v3 = sub_237196A0C();
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

        result = v20;
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

void *sub_2371925F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948C0);
  v2 = *v0;
  v3 = sub_237196A0C();
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
        v18 = *(*(v2 + 48) + 4 * v17);
        sub_237114D0C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 4 * v17) = v18;
        result = sub_23711BDA4(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_237192770()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94890);
  v2 = *v0;
  v3 = sub_237196A0C();
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

void *sub_2371928BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948D0);
  v2 = *v0;
  v3 = sub_237196A0C();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_2371339F0(&v35, v34))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 4 * v16);
      v18 = *(v2 + 56) + 152 * v16;
      v19 = *(v18 + 32);
      v20 = *(v18 + 48);
      v21 = *(v18 + 80);
      v39 = *(v18 + 64);
      v40 = v21;
      v38 = v20;
      v23 = *(v18 + 112);
      v22 = *(v18 + 128);
      v24 = *(v18 + 96);
      v44 = *(v18 + 144);
      v42 = v23;
      v43 = v22;
      v41 = v24;
      v25 = *(v18 + 16);
      v35 = *v18;
      v36 = v25;
      v37 = v19;
      *(*(v4 + 48) + 4 * v16) = v17;
      v26 = *(v4 + 56) + 152 * v16;
      v27 = v36;
      *v26 = v35;
      *(v26 + 16) = v27;
      v28 = v37;
      v29 = v38;
      v30 = v40;
      *(v26 + 64) = v39;
      *(v26 + 80) = v30;
      *(v26 + 32) = v28;
      *(v26 + 48) = v29;
      v31 = v41;
      v32 = v42;
      v33 = v43;
      *(v26 + 144) = v44;
      *(v26 + 112) = v32;
      *(v26 + 128) = v33;
      *(v26 + 96) = v31;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

id sub_237192AA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94988);
  v2 = *v0;
  v3 = sub_237196A0C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_237192BFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE95858);
  v2 = *v0;
  v3 = sub_237196A0C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
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

id sub_237192D48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE948E0);
  v2 = *v0;
  v3 = sub_237196A0C();
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

void *sub_237192EA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94898);
  v2 = *v0;
  v3 = sub_237196A0C();
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
        sub_237114D0C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23711BDA4(v25, (*(v4 + 56) + v22));
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

id sub_237193048()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B8);
  v2 = *v0;
  v3 = sub_237196A0C();
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
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        v22 = v18;
        result = v20;
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

void sub_2371931BC(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AUDistortionSectionView();
  objc_msgSendSuper2(&v8, sel_setTintColor_, a1);
  v3 = *&v1[OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_visualizationView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 tintColor];
    [v4 setTintColor_];

    v6 = *&v1[OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_controlsView];
    v7 = [v1 tintColor];
    [v6 setTintColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_237193298()
{
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_visualizationView) = 0;
  v1 = OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_controlsView;
  type metadata accessor for AUDistortionControlsView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = v0 + OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_dataSource;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_audioUnit) = 0;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit23AUDistortionSectionView_paramMap) = MEMORY[0x277D84F98];
  sub_2371969DC();
  __break(1u);
}

id sub_237193370()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___headerView;
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___headerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___headerView];
  }

  else
  {
    [v0 frame];
    Width = CGRectGetWidth(v9);
    v5 = [objc_allocWithZone(type metadata accessor for CAAUEQHeaderView()) initWithFrame_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_23719342C()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___graphView;
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___graphView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___graphView];
  }

  else
  {
    [v0 frame];
    Width = CGRectGetWidth(v10);
    [v0 frame];
    v5 = CGRectGetHeight(v11) + -40.0;
    v6 = [objc_allocWithZone(type metadata accessor for CAAUEQGraphView()) initWithFrame_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_2371935F8()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_viewSetup;
  if ((*(v0 + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_viewSetup) & 1) == 0)
  {
    v2 = [objc_opt_self() systemBackgroundColor];
    [v0 setBackgroundColor_];

    v3 = sub_237193370();
    [v0 addSubview_];

    v4 = sub_23719342C();
    [v0 addSubview_];

    sub_237193BC8();
    *(v0 + v1) = 1;
  }
}

void sub_2371937D0(uint64_t a1, uint64_t a2)
{
  v24 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_temporaryConstraints;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
LABEL_30:
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_2371969FC();
  }

  else
  {
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    do
    {
      v20 = v7;
      v8 = v6;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2383C62A0](v8, v4);
        }

        else
        {
          if (v8 >= *(v21 + 16))
          {
            goto LABEL_29;
          }

          v9 = *(v4 + 8 * v8 + 32);
        }

        v10 = v9;
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v11 = [v9 identifier];
        if (!v11)
        {
          __break(1u);
          return;
        }

        v12 = v11;
        sub_23719657C();

        sub_23713D2C8();
        v13 = sub_23719681C();

        v14 = v10;
        if (v13)
        {
          break;
        }

        MEMORY[0x2383C5F60]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23719664C();
        }

        sub_23719665C();

        ++v8;
        if (v6 == v5)
        {
          v7 = v20;
          goto LABEL_22;
        }
      }

      MEMORY[0x2383C5F60]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23719664C();
      }

      sub_23719665C();

      v7 = v25;
    }

    while (v6 != v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_22:

  v15 = objc_opt_self();
  sub_237115094(0, &qword_27DE94CC0);
  v16 = sub_23719661C();

  [v15 deactivateConstraints_];

  swift_beginAccess();
  swift_beginAccess();

  sub_23719503C(v17, sub_237195374);
  sub_23719503C(v7, sub_237195374);
  v18 = sub_23719661C();

  [v15 activateConstraints_];

  if (a1 == 0x656D6572747865 && a2 == 0xE700000000000000 || (sub_237196A7C() & 1) != 0)
  {
    v19 = sub_237193370();
    sub_23713C06C();
  }

  else
  {
    v19 = sub_237193370();
    sub_23713BE8C();
  }
}

void sub_237193BC8()
{
  v1 = v0;
  v2 = [v0 safeAreaLayoutGuide];
  v3 = sub_237193370();
  v4 = [v3 topAnchor];

  v131 = v2;
  v5 = [v2 topAnchor];
  v6 = &selRef_effectiveContentSize;
  v7 = [v4 constraintEqualToAnchor_];

  v8 = v7;
  v9 = sub_23719653C();
  v10 = &selRef_effectiveContentSize;
  [v8 setIdentifier_];

  v11 = &selRef_effectiveContentSize;
  LODWORD(v12) = 1148846080;
  [v8 setPriority_];
  v13 = OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_permanentHeaderConstraints;
  v14 = swift_beginAccess();
  MEMORY[0x2383C5F60](v14);
  v128 = v13;
  if (*((*(v1 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_53:
    sub_23719664C();
    v13 = v128;
  }

  sub_23719665C();
  swift_endAccess();
  v15 = OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___headerView;
  v16 = [*(v1 + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___headerView) leadingAnchor];
  v17 = [v1 leadingAnchor];
  v18 = [v16 v6[5]];

  v19 = v18;
  v20 = sub_23719653C();
  [v19 v10[51]];

  LODWORD(v21) = 1148846080;
  [v19 v11[52]];
  v22 = swift_beginAccess();
  MEMORY[0x2383C5F60](v22);
  v23 = v11;
  if (*((*(v1 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v24 = [*(v1 + v15) bottomAnchor];
  v25 = [v1 bottomAnchor];
  v132 = v1;
  v26 = [v24 constraintEqualToAnchor_];

  v27 = v26;
  v28 = sub_23719653C();
  [v27 v10[51]];

  LODWORD(v29) = 1148846080;
  [v27 v11 + 1912];
  v11 = OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_temporaryConstraints;
  v30 = swift_beginAccess();
  MEMORY[0x2383C5F60](v30);
  if (*((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v31 = [*&v132[v15] trailingAnchor];
  v32 = sub_23719342C();
  v33 = [v32 leadingAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  v35 = v34;
  v36 = sub_23719653C();
  [v35 v10[51]];

  LODWORD(v37) = 1148846080;
  [v35 v23 + 1912];
  v38 = swift_beginAccess();
  MEMORY[0x2383C5F60](v38);
  if (*((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v39 = [*&v132[v15] widthAnchor];
  v40 = [v132 superview];
  if (!v40)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    return;
  }

  v41 = v40;
  v42 = [v40 widthAnchor];

  v43 = [v39 constraintEqualToAnchor:v42 multiplier:0.33];
  v44 = v43;
  v45 = sub_23719653C();
  [v44 v10[51]];

  LODWORD(v46) = 1144750080;
  [v44 setPriority_];
  v47 = swift_beginAccess();
  MEMORY[0x2383C5F60](v47);
  if (*((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v48 = [*&v132[v15] trailingAnchor];
  v49 = [v132 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  v51 = v50;
  v52 = sub_23719653C();
  [v51 v10[51]];

  LODWORD(v53) = 1148846080;
  [v51 setPriority_];
  v54 = swift_beginAccess();
  MEMORY[0x2383C5F60](v54);
  if (*((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v55 = [*&v132[v15] bottomAnchor];
  v133 = OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___graphView;
  v56 = [*&v132[OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___graphView] topAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  v58 = v57;
  v59 = sub_23719653C();
  [v58 v10[51]];

  LODWORD(v60) = 1148846080;
  [v58 setPriority_];
  v61 = swift_beginAccess();
  MEMORY[0x2383C5F60](v61);
  if (*((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v62 = [*&v132[v15] heightAnchor];
  v63 = [v62 constraintEqualToConstant_];

  v64 = v63;
  v65 = sub_23719653C();
  [v64 v10[51]];

  LODWORD(v66) = 1132068864;
  [v64 setPriority_];
  v67 = swift_beginAccess();
  MEMORY[0x2383C5F60](v67);
  if (*((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v68 = [*&v132[v133] trailingAnchor];
  v69 = [v132 trailingAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  v71 = v70;
  v72 = sub_23719653C();
  [v71 v10[51]];

  LODWORD(v73) = 1148846080;
  [v71 &selRef_disconnectLocalPeripheral];
  v74 = OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_permanentGraphConstraints;
  v75 = swift_beginAccess();
  MEMORY[0x2383C5F60](v75);
  if (*((*&v132[v74] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132[v74] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v76 = [*&v132[v133] bottomAnchor];
  v77 = [v132 bottomAnchor];
  v130 = v74;
  v78 = [v76 constraintEqualToAnchor_];

  v79 = v78;
  v80 = sub_23719653C();
  [v79 v10[51]];

  LODWORD(v81) = 1148846080;
  [v79 &selRef_disconnectLocalPeripheral];
  v82 = swift_beginAccess();
  MEMORY[0x2383C5F60](v82);
  if (*((*&v132[v130] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132[v130] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v83 = [*&v132[v133] topAnchor];
  v84 = [v131 topAnchor];
  v85 = [v83 constraintEqualToAnchor_];

  v86 = v85;
  v87 = sub_23719653C();
  [v86 v10[51]];

  LODWORD(v88) = 1148846080;
  [v86 &selRef_disconnectLocalPeripheral];
  v89 = swift_beginAccess();
  MEMORY[0x2383C5F60](v89);
  if (*((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v90 = [*&v132[v133] widthAnchor];
  v91 = [v132 superview];
  if (!v91)
  {
    goto LABEL_57;
  }

  v92 = v91;
  v93 = [v91 widthAnchor];

  v94 = [v90 constraintEqualToAnchor:v93 multiplier:0.67];
  v95 = v94;
  v96 = sub_23719653C();
  [v95 setIdentifier_];

  LODWORD(v97) = 1144750080;
  [v95 &selRef_disconnectLocalPeripheral];
  v98 = swift_beginAccess();
  MEMORY[0x2383C5F60](v98);
  if (*((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v99 = [*&v132[v133] leadingAnchor];
  v100 = [v132 leadingAnchor];
  v101 = [v99 constraintEqualToAnchor_];

  v102 = v101;
  v103 = sub_23719653C();
  [v102 setIdentifier_];

  LODWORD(v104) = 1148846080;
  [v102 &selRef_disconnectLocalPeripheral];
  v105 = swift_beginAccess();
  MEMORY[0x2383C5F60](v105);
  if (*((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
  v106 = [*&v132[v133] heightAnchor];
  v107 = [v132 superview];
  if (!v107)
  {
    goto LABEL_58;
  }

  v108 = v107;
  v109 = [v107 heightAnchor];

  v110 = [v106 constraintEqualToAnchor:v109 multiplier:0.67];
  v8 = v110;
  v111 = sub_23719653C();
  [v8 setIdentifier_];

  LODWORD(v112) = 1144750080;
  [v8 &selRef_disconnectLocalPeripheral];
  v113 = swift_beginAccess();
  MEMORY[0x2383C5F60](v113);
  if (*((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + v132) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  v129 = v8;
  sub_23719665C();
  v114 = *(v11 + v132);
  swift_endAccess();
  v134 = MEMORY[0x277D84F90];
  if (v114 >> 62)
  {
    v115 = sub_2371969FC();
  }

  else
  {
    v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v115)
  {
    v6 = 0;
    v10 = (v114 & 0xC000000000000001);
    v116 = MEMORY[0x277D84F90];
    v1 = MEMORY[0x277D837D0];
    do
    {
      v127 = v116;
      v117 = v6;
      while (1)
      {
        if (v10)
        {
          v118 = MEMORY[0x2383C62A0](v117, v114);
        }

        else
        {
          if (v117 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v118 = *(v114 + 8 * v117 + 32);
        }

        v11 = v118;
        v6 = (v117 + 1);
        if (__OFADD__(v117, 1))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v119 = [v118 identifier];
        if (!v119)
        {
          __break(1u);
          goto LABEL_56;
        }

        v120 = v119;
        sub_23719657C();
        v8 = v121;

        sub_23713D2C8();
        v122 = sub_23719681C();

        if (v122)
        {
          break;
        }

        v117 = (v117 + 1);
        if (v6 == v115)
        {
          v116 = v127;
          goto LABEL_50;
        }
      }

      v123 = v11;
      MEMORY[0x2383C5F60]();
      if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23719664C();
      }

      sub_23719665C();

      v116 = v134;
    }

    while (v6 != v115);
  }

  else
  {
    v116 = MEMORY[0x277D84F90];
  }

LABEL_50:

  v124 = objc_opt_self();

  sub_23719503C(v125, sub_237195374);
  sub_23719503C(v116, sub_237195374);
  sub_237115094(0, &qword_27DE94CC0);
  v126 = sub_23719661C();

  [v124 activateConstraints_];
}

id sub_237194F50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAAUEQViewBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23719503C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2371969FC();
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

  v15 = sub_2371969FC();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_237195134(result);
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

uint64_t sub_237195134(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2371969FC();
LABEL_9:
  result = sub_23719695C();
  *v1 = result;
  return result;
}

uint64_t sub_2371951D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2371969FC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2371969FC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2371956C8(&qword_27DE958B0, &qword_27DE958A8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE958A8);
            v9 = sub_237195514(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_237115094(0, &qword_27DE95590);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237195374(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2371969FC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2371969FC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2371956C8(&qword_27DE958A0, &qword_27DE95898);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE95898);
            v9 = sub_237195594(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_237115094(0, &qword_27DE94CC0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_237195514(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2383C62A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23719571C;
  }

  __break(1u);
  return result;
}

void (*sub_237195594(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2383C62A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_237195614;
  }

  __break(1u);
  return result;
}

void sub_23719561C()
{
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_viewSetup) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_permanentHeaderConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_permanentGraphConstraints) = v1;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase_temporaryConstraints) = v1;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___headerView) = 0;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit14CAAUEQViewBase____lazy_storage___graphView) = 0;
  sub_2371969DC();
  __break(1u);
}

uint64_t sub_2371956C8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_237195720()
{
  sub_2371959A4();
  result = *(v0 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_meterTimer);
  if (result && *(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_needsRealtimeDrawing) == 1)
  {

    return [result invalidate];
  }

  return result;
}

void sub_237195780(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2 == 3 && a4 == 8)
  {
    v11 = 0;
    outData = 0u;
    v10 = 0u;
    ioDataSize = 40;
    v5 = *(v4 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU);
    if (v5 && (Property = AudioUnitGetProperty(v5, 8u, 2u, 0, &outData, &ioDataSize), Property == sub_2371964DC()))
    {
      v7 = HIDWORD(v10);
    }

    else
    {
      v7 = 0;
    }

    *(v4 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_numChannels) = v7;
  }
}

void sub_237195860(OpaqueAudioComponentInstance *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU] = a1;
  v11 = 0;
  memset(&outData, 0, sizeof(outData));
  ioDataSize[0] = 40;
  if (a1 && (Property = AudioUnitGetProperty(a1, 8u, 2u, 0, &outData, ioDataSize), Property == sub_2371964DC()))
  {
    v4 = *(&outData.mArgument.mProperty.mElement + 1);
  }

  else
  {
    v4 = 0;
  }

  *&v1[OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_numChannels] = v4;
  v5 = *&v1[v2];
  if (v5)
  {
    *&outData.mArgument.mProperty.mPropertyID = 0x200000008uLL;
    outData.mEventType = kAudioUnitEvent_PropertyChange;
    outData.mArgument.mParameter.mAudioUnit = v5;
    v6 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
    swift_beginAccess();
    v7 = *&v1[v6];
    if (v7)
    {
      v8 = AUEventListenerAddEventType(v7, v1, &outData);
      if (v8 != sub_2371964DC())
      {
        sub_237176A9C(0xD00000000000003FLL, 0x80000002371A1430, v8);
      }
    }
  }
}

void sub_2371959A4()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
  if (v1)
  {
    *&inEvent.mArgument.mProperty.mPropertyID = 0x200000008uLL;
    inEvent.mEventType = kAudioUnitEvent_PropertyChange;
    inEvent.mArgument.mParameter.mAudioUnit = v1;
    v2 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
    swift_beginAccess();
    v3 = *&v0[v2];
    if (v3)
    {
      v4 = AUEventListenerRemoveEventType(v3, v0, &inEvent);
      if (v4 != sub_2371964DC())
      {
        sub_237176A9C(0xD000000000000041, 0x80000002371A13E0, v4);
      }
    }
  }

  v5 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (v6)
  {
    v7 = AUListenerDispose(v6);
    if (v7 != sub_2371964DC())
    {
      sub_237176A9C(0xD00000000000001BLL, 0x800000023719EF90, v7);
    }
  }

  *&v0[v5] = 0;
}

id sub_237195AE8()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController____lazy_storage___decimalFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController____lazy_storage___decimalFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController____lazy_storage___decimalFormatter);
  }

  else
  {
    v4 = sub_237195C90();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_237195B48()
{
  v5 = *MEMORY[0x277D85DE8];
  ioDataSize = 8;
  outData = 0.0;
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU);
  if (v1)
  {
    Property = AudioUnitGetProperty(v1, 0x3Du, 0, 0, &outData, &ioDataSize);
    if (Property == sub_2371964DC())
    {
      if (*(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_lastRenderedSampleTime) == outData)
      {
        if (*(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_auRendering) != 1)
        {
          return;
        }

        *(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_auRendering) = 0;
      }

      else
      {
        *(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_lastRenderedSampleTime) = outData;
        (*((*MEMORY[0x277D85000] & *v0) + 0x178))();
        if (*(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_auRendering))
        {
          return;
        }

        *(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_auRendering) = 1;
      }

      *(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_needsRealtimeDrawing) = 1;
      sub_237195E64();
    }
  }
}

id sub_237195C90()
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

void sub_237195E64()
{
  if (*(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_needsRealtimeDrawing) == 1)
  {
    v1 = OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_meterTimer;
    [*(v0 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_meterTimer) invalidate];
    v2 = 1.0;
    if (*(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_auRendering) == 1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_realtimeDrawingInterval);
    }

    v3 = [objc_opt_self() timerWithTimeInterval:v0 target:sel_checkLastRenderedTime selector:0 userInfo:1 repeats:v2];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    v5 = [objc_opt_self() currentRunLoop];
    v6 = *(v0 + v1);
    if (v6)
    {
      v7 = v5;
      [v5 addTimer:v6 forMode:*MEMORY[0x277CBE738]];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_23719606C(void *a1)
{
  *&v1[OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_renderingPollingInterval] = 1;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_numChannels] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController_meterTimer] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController____lazy_storage___decimalFormatter] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AURealtimeDrawingBaseViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_237196130()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit35AURealtimeDrawingBaseViewController____lazy_storage___decimalFormatter);
}

id sub_237196170()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AURealtimeDrawingBaseViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}