void sub_1D47A5164(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void *))
{
  v7 = *&a1[*a4];
  *&a1[*a4] = a3;
  v8 = a3;
  v9 = a1;
  a5(v7);
}

void sub_1D47A51E8()
{
  v1 = v0;
  sub_1D47A42A4(0, &qword_1EC7DF0A8);
  v2 = OBJC_IVAR___SFBarButtonGroupContainer_theme;
  v3 = *&v0[OBJC_IVAR___SFBarButtonGroupContainer_theme];
  v4 = sub_1D47BF3E0();

  if ((v4 & 1) == 0)
  {
    [v1 setOverrideUserInterfaceStyle_];
    v5 = [v1 buttonIdentifiers];
    sub_1D47A42A4(0, &qword_1EC7DF018);
    sub_1D47A42A4(0, &qword_1EC7DF020);
    sub_1D47A95F4();
    v6 = sub_1D47BF260();

    v24 = v2;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = sub_1D47BF4E0() | 0x8000000000000000;
    }

    else
    {
      v11 = -1 << *(v6 + 32);
      v8 = ~v11;
      v7 = v6 + 64;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v9 = v13 & *(v6 + 64);
      v10 = v6;
    }

    v14 = 0;
    v15 = (v8 + 64) >> 6;
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v16 = v14;
      v17 = v9;
      v18 = v14;
      if (!v9)
      {
        break;
      }

LABEL_13:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v10 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v20)
      {
LABEL_19:
        sub_1D47A9BF8();

        if ([*&v1[v24] backdropIsDark])
        {
          v23 = 2;
        }

        else
        {
          v23 = 1;
        }

        [v1 _accessibilitySetInterfaceStyleIntent_];
        return;
      }

      while (1)
      {
        v21 = [v1 theme];
        v22 = [v21 controlsTintColor];

        [v20 setTintColor_];
        v14 = v18;
        v9 = v19;
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_1D47BF510())
        {
          swift_unknownObjectRelease();
          swift_dynamicCast();
          v20 = v25;
          v18 = v14;
          v19 = v9;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_19;
      }

      v17 = *(v7 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

id SFBarButtonGroupContainer.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void SFBarButtonGroupContainer.init(coder:)()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR___SFBarButtonGroupContainer_barButtonItems) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR___SFBarButtonGroupContainer_buttonIdentifiers;
  *(v0 + v2) = sub_1D47A94D4(v1);
  swift_unknownObjectWeakInit();
  sub_1D47BF520();
  __break(1u);
}

uint64_t sub_1D47A58B0()
{
  v1 = OBJC_IVAR___SFBarButtonGroupContainer_barButtonItems;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v12 = MEMORY[0x1E69E7CC0];

    sub_1D47A8E6C(0, v3, 0);
    v4 = v12;
    v5 = *(v12 + 16);
    v6 = 32;
    do
    {
      v7 = *(v2 + v6);
      v8 = *(v12 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1D47A8E6C((v8 > 1), v5 + 1, 1);
      }

      *(v12 + 16) = v5 + 1;
      *(v12 + 8 * v5 + 32) = v7;
      v6 += 16;
      ++v5;
      --v3;
    }

    while (v3);
  }

  v9 = sub_1D47A8F90(v4);

  v10 = *(v9 + 16);

  return v10;
}

void sub_1D47A5A9C(uint64_t a1, int a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF038);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  if (a1)
  {
    v39 = a2;
    v41 = v2;
    v36 = v9;
    v37 = v7;
    v38 = v6;
    v50 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF040);
    sub_1D47A9B40(&qword_1EC7DF048, &qword_1EC7DF040);
    sub_1D47BF380();
    v35 = 0;
    v10 = 0;
    v40 = aBlock;
    v42 = v44;
    v11 = v45;
    v12 = v46 >> 1;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = v45;
    while (2)
    {
      if (v14 == v12)
      {
LABEL_15:
        swift_unknownObjectRelease();
        v22 = OBJC_IVAR___SFBarButtonGroupContainer_barButtonItems;
        v23 = v41;
        swift_beginAccess();
        v24 = *&v23[v22];
        if (*(v24 + 16) && (v39 & 1) != 0)
        {
          aBlock = v13;
          v49 = v24;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF050);
          sub_1D47A9B40(&qword_1EC7DF058, &qword_1EC7DF050);
          v25 = v36;
          sub_1D47BF270();

          v26 = swift_allocObject();
          v27 = MEMORY[0x1E69E7CC0];
          *(v26 + 16) = MEMORY[0x1E69E7CC0];
          v28 = swift_allocObject();
          *(v28 + 16) = v27;
          v29 = v23;
          sub_1D47A91D0(v25, v29, (v26 + 16), (v28 + 16));

          v30 = objc_opt_self();
          v31 = swift_allocObject();
          v31[2] = v26;
          v31[3] = v28;
          v31[4] = v29;
          v47 = sub_1D47A9B2C;
          v48 = v31;
          aBlock = MEMORY[0x1E69E9820];
          v44 = 1107296256;
          v45 = sub_1D47A6F04;
          v46 = &block_descriptor_14;
          v32 = _Block_copy(&aBlock);
          v33 = v29;

          v47 = sub_1D47A9B38;
          v48 = v28;
          aBlock = MEMORY[0x1E69E9820];
          v44 = 1107296256;
          v45 = sub_1D47A704C;
          v46 = &block_descriptor_17;
          v34 = _Block_copy(&aBlock);

          [v30 sf:1 animate:98 usingDefaultMotionWithDelay:v32 options:v34 animations:0.0 completion:?];
          _Block_release(v34);
          _Block_release(v32);
          (*(v37 + 8))(v25, v38);
        }

        else
        {
          *&v23[v22] = v13;

          sub_1D47A4C50();
        }
      }

      else
      {
        v16 = v14;
        while (1)
        {
          if (v14 < v11 || v16 >= v12)
          {
            __break(1u);
            goto LABEL_21;
          }

          v17 = *(v42 + 8 * v16++);
          v18 = v17;
          if ([v18 systemItem] == 6 || objc_msgSend(v18, sel_systemItem) == 5)
          {
            break;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1D47A7924(0, v13[2] + 1, 1, v13);
          }

          v20 = v13[2];
          v19 = v13[3];
          if (v20 >= v19 >> 1)
          {
            v13 = sub_1D47A7924((v19 > 1), v20 + 1, 1, v13);
          }

          v13[2] = v20 + 1;
          v21 = &v13[2 * v20];
          v21[4] = v10;
          v21[5] = v18;
          if (v12 == v16)
          {
            goto LABEL_15;
          }
        }

        v14 = v16;
        if (!__OFADD__(v10++, 1))
        {
          continue;
        }

LABEL_21:
        __break(1u);
      }

      break;
    }
  }
}

uint64_t sub_1D47A601C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1D47A42A4(0, &qword_1EC7DF0A8);
  return sub_1D47BF3E0() & 1;
}

void sub_1D47A6088(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = OBJC_IVAR___SFBarButtonGroupContainer_barButtonItems;
  if ((*(a1 + 33) & 1) == 0)
  {
    v16 = a3;
    swift_beginAccess();
    if (*(*(a2 + v9) + 16) >= v7)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        v21 = v8;
        sub_1D47A90F4(v7, v7, v6, v8);
        swift_endAccess();

        v8 = sub_1D47A6640(v8);
        [v8 setFrame_];
        [v8 setHidden_];
        [v8 setAlpha_];
        v4 = (v7 - v6);
        if (!__OFSUB__(v7, v6))
        {
          v22 = [a2 containerStackView];
          v23 = [v22 arrangedSubviews];

          sub_1D47A42A4(0, &qword_1EC7DF078);
          v15 = sub_1D47BF2F0();

          if ((v15 & 0xC000000000000001) == 0)
          {
            if ((v6 & 0x8000000000000000) != 0)
            {
LABEL_36:
              __break(1u);
LABEL_24:
              sub_1D47BF300();
LABEL_25:
              sub_1D47BF310();

              return;
            }

            if (v6 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            v24 = *(v15 + 8 * v6 + 32);
LABEL_21:
            v25 = v24;

            objc_opt_self();
            v26 = swift_dynamicCastObjCClass();
            if (v26)
            {
              [v26 insertArrangedSubview:v8 atIndex:v4];
            }

            MEMORY[0x1DA6DC780]();
            if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

LABEL_34:
          v24 = MEMORY[0x1DA6DC970](v6, v15);
          goto LABEL_21;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v27 = a4;
  swift_beginAccess();
  sub_1D47A6C68(v7);
  v11 = v10;
  swift_endAccess();

  v12 = [a2 buttonIdentifiers];
  sub_1D47A42A4(0, &qword_1EC7DF018);
  sub_1D47A42A4(0, &qword_1EC7DF020);
  sub_1D47A95F4();
  sub_1D47BF260();

  v13 = sub_1D47BF250();

  [a2 setButtonIdentifiers_];

  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = [a2 containerStackView];
  v7 = &selRef_handleDidUpdatePasswordForPreviouslySavedAccount_;
  v15 = [v14 arrangedSubviews];

  v16 = sub_1D47A42A4(0, &qword_1EC7DF078);
  a2 = sub_1D47BF2F0();

  if ((a2 & 0xC000000000000001) == 0)
  {
    v4 = v27;
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(a2 + 8 * v6 + 32);
        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_34;
    }

    goto LABEL_30;
  }

LABEL_28:
  v6 = MEMORY[0x1DA6DC970](v6, a2);
  v4 = v27;
LABEL_7:

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = [v17 *(v7 + 1256)];

    v6 = sub_1D47BF2F0();
    if ((v6 & 0xC000000000000001) == 0)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v19 = *(v6 + 8 * v8 + 32);
          goto LABEL_12;
        }

        __break(1u);
        goto LABEL_39;
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_32:
    v19 = MEMORY[0x1DA6DC970](v8, v6);
LABEL_12:
    v20 = v19;

    [v20 setHidden_];
    v8 = v20;
    MEMORY[0x1DA6DC780]();
    if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_40:

  sub_1D47BF520();
  __break(1u);
}

uint64_t sub_1D47A6640(void *a1)
{
  v2 = v1;
  v4 = sub_1D47BF440();
  v5 = *(v4 - 8);
  v6 = (MEMORY[0x1EEE9AC00])();
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  sub_1D47BF430();
  v11 = [objc_opt_self() labelColor];
  sub_1D47BF410();
  v12 = [a1 image];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 imageAsset];

    if (v14)
    {
      v15 = [v2 configuration];
      v16 = [v15 preferredTraitCollection];

      if (!v16)
      {
        v16 = [v2 traitCollection];
      }

      [v14 imageWithTraitCollection_];
    }
  }

  sub_1D47BF420();
  v17 = [objc_opt_self() safari_barButtonConfiguration];
  sub_1D47BF400();
  sub_1D47A42A4(0, &qword_1EC7DF020);
  v18 = *(v5 + 16);
  v40[0] = v4;
  v18(v8, v10, v4);
  sub_1D47A42A4(0, &qword_1EC7DF080);
  *(swift_allocObject() + 16) = a1;
  v19 = a1;
  sub_1D47BF3F0();
  v20 = sub_1D47BF450();
  v21 = [v19 accessibilityLabel];
  [v20 setAccessibilityLabel_];

  v22 = v20;
  [v22 setEnabled_];

  v23 = v22;
  [v23 setHidden_];
  v24 = [v19 menu];
  [v23 setMenu_];

  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [v19 accessibilityIdentifier];
  [v23 setAccessibilityIdentifier_];

  v26 = v23;
  v27 = [v2 buttonIdentifiers];
  sub_1D47A42A4(0, &qword_1EC7DF018);
  sub_1D47A95F4();
  v28 = sub_1D47BF260();

  if ((v28 & 0xC000000000000001) == 0)
  {
    goto LABEL_11;
  }

  if (v28 >= 0)
  {
    v28 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  result = sub_1D47BF4F0();
  if (!__OFADD__(result, 1))
  {
    v28 = sub_1D47A8540(v28, result + 1);
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40[1] = v28;
    sub_1D47A8CF4(v26, v19, isUniquelyReferenced_nonNull_native);
    v31 = sub_1D47BF250();

    [v2 setButtonIdentifiers_];

    v32 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF088);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D47DFB30;
    v34 = [v26 widthAnchor];
    v35 = [v26 heightAnchor];

    v36 = [v34 constraintGreaterThanOrEqualToAnchor_];
    LODWORD(v37) = 1144750080;
    v38 = [v36 sf:v37 withPriority:?];

    *(v33 + 32) = v38;
    sub_1D47A42A4(0, &qword_1EC7DF090);
    v39 = sub_1D47BF2E0();

    [v32 activateConstraints_];

    (*(v5 + 8))(v10, v40[0]);
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D47A6C68(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D47A8CE0(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

id sub_1D47A6CF4(uint64_t a1, unint64_t a2, void *a3)
{
  swift_beginAccess();
  v5 = *(a1 + 16);
  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D47BF4F0())
  {

    if (i)
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1DA6DC970](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setHidden_];
        [v9 setAlpha_];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_12:

    swift_beginAccess();
    a2 = *(a2 + 16);
    v5 = a2 >> 62 ? sub_1D47BF4F0() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v5)
    {
      break;
    }

    v11 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA6DC970](v11, a2);
      }

      else
      {
        if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v12 = *(a2 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v12 setHidden_];
      [v13 setAlpha_];

      ++v11;
      if (v14 == v5)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_23:

  return [a3 layoutIfNeeded];
}

uint64_t sub_1D47A6F04(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1D47A6F48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D47BF4F0())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6DC970](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_1D47A704C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1D47A7190(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v20 = [v10 barRegistration];
  if (v20)
  {
    v21 = v20;
    if ([v20 respondsToSelector_])
    {
      v22 = [v21 viewForBarItem_];
      v20 = swift_unknownObjectRelease();
      if (v22)
      {
        [v22 bounds];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        if (a4)
        {
          v34[4] = a4;
          v34[5] = a5;
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 1107296256;
          v34[2] = sub_1D47A6F04;
          v34[3] = &block_descriptor_0;
          v31 = _Block_copy(v34);
          v32 = v22;
          sub_1D47A9694(a4);
        }

        else
        {
          v33 = v22;
          v31 = 0;
        }

        [objc_opt_self() _sf_animateLinkImage_withAnimation_fromRect_inView_toRect_inView_afterImageDisappearsBlock_afterDestinationLayerBouncesBlock_];
        _Block_release(v31);

        return;
      }
    }

    else
    {
      v20 = swift_unknownObjectRelease();
    }
  }

  if (a4)
  {
    a4(v20);
  }
}

uint64_t sub_1D47A74B4(uint64_t a1)
{
  v3 = [v1 barRegistration];
  if (v3)
  {
    v4 = v3;
    if ([v3 respondsToSelector_])
    {
      v5 = [v4 UIBarButtonItemForItem_];
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = [v1 buttonIdentifiers];
        sub_1D47A42A4(0, &qword_1EC7DF018);
        sub_1D47A42A4(0, &qword_1EC7DF020);
        sub_1D47A95F4();
        v7 = sub_1D47BF260();

        v8 = sub_1D47A433C(v5, v7);

        if (v8)
        {
          v9 = [objc_allocWithZone(MEMORY[0x1E69B1C78]) initWithView_];

          return v9;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  result = sub_1D47BF520();
  __break(1u);
  return result;
}

id SFBarButtonGroupContainer.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

id sub_1D47A785C(int a1, id a2)
{
  result = [a2 action];
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() sharedApplication];
    [v5 sendAction:v4 to:objc_msgSend(a2 from:sel_target) forEvent:{a2, 0}];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1D47A7924(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7DF0C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF0A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1D47A7A58(uint64_t a1, uint64_t a2)
{
  sub_1D47BF5C0();
  sub_1D47BF2A0();
  v4 = sub_1D47BF5D0();

  return sub_1D47A7B14(a1, a2, v4);
}

unint64_t sub_1D47A7AD0(uint64_t a1)
{
  v2 = sub_1D47BF3D0();

  return sub_1D47A7BCC(a1, v2);
}

unint64_t sub_1D47A7B14(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D47BF580())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D47A7BCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1D47A42A4(0, &qword_1EC7DF018);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D47BF3E0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1D47A7CA0(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D47BF5B0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D47A7FA4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D47A7D80()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF0B0);
  result = sub_1D47BF4A0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
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
      result = sub_1D47BF5B0();
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

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D47A7FA4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D47A7D80();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D47A80C4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D47A8204();
  }

  v8 = *v3;
  result = sub_1D47BF5B0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D47BF590();
  __break(1u);
  return result;
}

void *sub_1D47A80C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF0B0);
  v2 = *v0;
  v3 = sub_1D47BF490();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1D47A8204()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF0B0);
  result = sub_1D47BF4A0();
  v4 = result;
  if (*(v2 + 16))
  {
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
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1D47BF5B0();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D47A83F4(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1D47A7AD0(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1D47A89F4(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1D47A8B80();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1D47BF500();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1D47BF4F0();
  v8 = sub_1D47A8540(v4, v7);

  v9 = sub_1D47A7AD0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1D47A89F4(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1D47A8540(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF098);
    v2 = sub_1D47BF560();
    v19 = v2;
    sub_1D47BF4E0();
    v3 = sub_1D47BF510();
    if (v3)
    {
      v4 = v3;
      sub_1D47A42A4(0, &qword_1EC7DF018);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1D47A42A4(0, &qword_1EC7DF020);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1D47A878C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1D47BF3D0();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1D47BF510();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1D47A878C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF098);
  result = sub_1D47BF550();
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

      result = sub_1D47BF3D0();
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

void sub_1D47A89F4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D47BF480() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1D47BF3D0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

id sub_1D47A8B80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF098);
  v2 = *v0;
  v3 = sub_1D47BF540();
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

void sub_1D47A8CF4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D47A7AD0(a2);
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
      sub_1D47A878C(v13, a3 & 1);
      v8 = sub_1D47A7AD0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1D47A42A4(0, &qword_1EC7DF018);
        sub_1D47BF5A0();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1D47A8B80();
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

char *sub_1D47A8E6C(char *a1, int64_t a2, char a3)
{
  result = sub_1D47A8E8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D47A8E8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF0B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1D47A8F90(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA6DC820](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D47A7CA0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1D47A9004(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF0A0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1D47A90F4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_1D47A7924(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_1D47A9004(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

uint64_t sub_1D47A91D0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF038);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF060);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  (*(v6 + 16))(v8, a1, v5);
  sub_1D47A9B40(&qword_1EC7DF068, &qword_1EC7DF038);
  sub_1D47BF2C0();
  v13 = *(v10 + 44);
  sub_1D47A9B40(&qword_1EC7DF070, &qword_1EC7DF038);
  sub_1D47BF390();
  if (*&v12[v13] != v31[0])
  {
    v24 = v5;
    do
    {
      v14 = sub_1D47BF3B0();
      v16 = *v15;
      v28 = v15[1];
      v17 = v28;
      v29 = v16;
      v19 = v15[2];
      v18 = v15[3];
      v20 = *(v15 + 33);
      v30 = *(v15 + 32);
      v21 = v19;
      v14(v31, 0);
      sub_1D47BF3A0();
      v31[0] = v29;
      v31[1] = v17;
      v31[2] = v19;
      v31[3] = v18;
      v32 = v30;
      v33 = v20;
      v22 = v34;
      sub_1D47A6088(v31, v25, v26, v27);

      if (v22)
      {
        break;
      }

      v34 = 0;
      sub_1D47BF390();
    }

    while (*&v12[v13] != v31[0]);
  }

  return sub_1D47A9B90(v12, &qword_1EC7DF060);
}

unint64_t sub_1D47A94D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF098);
    v3 = sub_1D47BF570();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D47A7AD0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D47A95F4()
{
  result = qword_1EC7DF028;
  if (!qword_1EC7DF028)
  {
    sub_1D47A42A4(255, &qword_1EC7DF018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7DF028);
  }

  return result;
}

uint64_t sub_1D47A965C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D47A9694(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *sub_1D47A96A4(void *a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___SFBarButtonGroupContainer_barButtonItems] = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR___SFBarButtonGroupContainer_buttonIdentifiers;
  *&v1[v4] = sub_1D47A94D4(v3);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___SFBarButtonGroupContainer_configuration] = a1;
  v5 = [a1 theme];
  *&v1[OBJC_IVAR___SFBarButtonGroupContainer_theme] = v5;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v7 = OBJC_IVAR___SFBarButtonGroupContainer_containerStackView;
  *&v1[OBJC_IVAR___SFBarButtonGroupContainer_containerStackView] = v6;
  [v6 setAxis_];
  [*&v1[v7] setSpacing_];
  v14.receiver = v1;
  v14.super_class = SFBarButtonGroupContainer;
  v8 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR___SFBarButtonGroupContainer_containerStackView;
  v10 = *&v8[OBJC_IVAR___SFBarButtonGroupContainer_containerStackView];
  v11 = v8;
  [v11 addSubview_];
  v12 = *&v8[v9];
  [v12 setAutoresizingMask_];

  return v11;
}

void sub_1D47A97FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF030);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = [v1 buttonIdentifiers];
  sub_1D47A42A4(0, &qword_1EC7DF018);
  sub_1D47A42A4(0, &qword_1EC7DF020);
  sub_1D47A95F4();
  v10 = sub_1D47BF260();

  v11 = sub_1D47A433C(a1, v10);

  if (v11)
  {
    v12 = v11;
    [v12 setEnabled_];

    v13 = v12;
    [v13 setHidden_];

    sub_1D47BF460();
    v14 = sub_1D47BF440();
    if ((*(*(v14 - 8) + 48))(v8, 1, v14))
    {
      sub_1D47A9A74(v8, v6);
      sub_1D47BF470();
      sub_1D47A9B90(v8, &qword_1EC7DF030);
    }

    else
    {
      v15 = [a1 image];
      sub_1D47BF420();
      sub_1D47BF470();
    }

    v16 = [a1 menu];
    [v13 setMenu_];
  }
}

uint64_t sub_1D47A9A74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DF030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D47A9B40(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1D47A9B90(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D47B07C8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x398], 8);
  _Block_object_dispose(&STACK[0x400], 8);
  _Unwind_Resume(a1);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}