uint64_t sub_1AE977FA8(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_1AE9781E4(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 3;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (*v16 < v19)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 3, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_1AE978434(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1AE9889A4();
  }

  return sub_1AE988A64();
}

uint64_t sub_1AE9784D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AE978518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1AE97856C()
{
  v10.super_class = LPAnimationMaskView;
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  result = [v0 image];
  if (result)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1AE97871C;
    *(v5 + 24) = v4;
    v9[4] = sub_1AE978A6C;
    v9[5] = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1AE978A94;
    v9[3] = &block_descriptor_1;
    v6 = _Block_copy(v9);
    v7 = v0;
    v8 = v2;

    [v3 performWithoutAnimation_];

    _Block_release(v6);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AE97871C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [v1 imageView];
  [v1 anchorPoint];
  [v3 setAnchorPoint_];

  v4 = [v1 imageView];
  [v1 bounds];
  [v4 setFrame_];

  v5 = [v1 imageView];
  v6 = [v5 layer];

  v7 = [v2 CGImage];
  [v6 setContents_];

  v8 = [v1 imageView];
  v9 = [v8 layer];

  [v2 scale];
  [v9 setContentsScale_];

  [v2 size];
  v11 = v10;
  v13 = v12;
  [v2 capInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v1 imageView];
  v23 = [v22 layer];

  [v23 setContentsCenter_];
  if ([v1 animationOrigin])
  {
  }

  else
  {
    [v1 bounds];
    v26 = v25;
    v27 = [v1 layer];
    m.a = -1.0;
    m.b = 0.0;
    m.c = 0.0;
    m.d = 1.0;
    m.tx = v26;
    m.ty = 0.0;
    CATransform3DMakeAffineTransform(&v28, &m);
    [v27 setSublayerTransform_];
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1AE978B8C()
{
  v1 = OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView____lazy_storage___checkmark;
  v2 = *(v0 + OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView____lazy_storage___checkmark);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView____lazy_storage___checkmark);
  }

  else
  {
    v4 = [objc_opt_self() configurationWithPointSize_];
    v5 = [objc_opt_self() strokedCheckmarkImage];
    v6 = [v5 imageByApplyingSymbolConfiguration_];

    v7 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1AE978C98(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView____lazy_storage___checkmark);
  *(v1 + OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView____lazy_storage___checkmark) = a1;
}

void (*sub_1AE978CAC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1AE978B8C();
  return sub_1AE978CF4;
}

void sub_1AE978CF4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView____lazy_storage___checkmark);
  *(v1 + OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView____lazy_storage___checkmark) = v2;
}

uint64_t sub_1AE978D0C()
{
  v1 = OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView_isSelectedVariant;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1AE978D50(char a1)
{
  v3 = OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView_isSelectedVariant;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v4);
  [v5 setHidden_];
}

void (*sub_1AE978DF4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView_isSelectedVariant;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1AE978E7C;
}

void sub_1AE978E7C(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x68))(v4);
    [v7 setHidden_];
  }

  free(v3);
}

char *sub_1AE978FC4(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  *&v9[OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView____lazy_storage___checkmark] = 0;
  v9[OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView_isSelectedVariant] = 0;
  v19 = [objc_allocWithZone(LPLinkRendererSizeClassParameters) init];
  [v19 setNeedsSpaceAffordanceForDeleteButton_];
  v20 = [objc_allocWithZone(LPLinkView) initWithMetadata_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 _setDisableTapGesture_];
  [v20 _setAllowsSkinnyWidth_];
  [v20 _setInComposeContext_];
  [v20 setContentInset_];
  [v20 _setSizeClassParameters_];
  *&v9[OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView_linkView] = v20;
  v30.receiver = v9;
  v30.super_class = _s15VariantLinkViewCMa();
  v21 = v20;
  v22 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a2, a3, a4, a5);
  v23 = *&v22[OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView_linkView];
  v24 = v22;
  v25 = [v24 addSubview_];
  v26 = (*((*MEMORY[0x1E69E7D40] & *v24) + 0x68))(v25);
  [v24 addSubview_];

  sub_1AE9793EC();
  v27 = objc_opt_self();
  sub_1AE979698();
  v28 = sub_1AE988784();

  [v27 activateConstraints_];

  return v24;
}

id sub_1AE97925C(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1AE9792A0()
{
  *(v0 + OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView____lazy_storage___checkmark) = 0;
  *(v0 + OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView_isSelectedVariant) = 0;
  sub_1AE988AE4();
  __break(1u);
}

uint64_t sub_1AE9793EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AE9C6F50;
  v2 = *(v0 + OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView_linkView);
  v3 = [v2 widthAnchor];
  v4 = [v0 widthAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v2 heightAnchor];
  v7 = [v0 heightAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v1 + 40) = v8;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE9C6F50;
  v10 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v11 = v10();
  v12 = [v11 topAnchor];

  v13 = [v0 topAnchor];
  [v2 contentInset];
  v15 = [v12 constraintEqualToAnchor:v13 constant:v14 + 10.0];

  *(inited + 32) = v15;
  v16 = v10();
  v17 = [v16 trailingAnchor];

  v18 = [v0 trailingAnchor];
  [v2 contentInset];
  v20 = [v17 constraintEqualToAnchor:v18 constant:-(v19 + 10.0)];

  *(inited + 40) = v20;
  sub_1AE979884(inited);
  return v1;
}

unint64_t sub_1AE979698()
{
  result = qword_1EB5E6970;
  if (!qword_1EB5E6970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5E6970);
  }

  return result;
}

id sub_1AE9796E4(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1AE979804()
{
  v2.receiver = v0;
  v2.super_class = _s15VariantLinkViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AE979884(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1AE9889A4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1AE9889A4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1AE96A274(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1AE979974(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1AE979974(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AE9889A4();
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
      result = sub_1AE9889A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AE979AF4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E67B0);
            v9 = sub_1AE96A494(v13, i, a3);
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
        sub_1AE979698();
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

unint64_t sub_1AE979AF4()
{
  result = qword_1EB5E69E0;
  if (!qword_1EB5E69E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E67B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E69E0);
  }

  return result;
}

uint64_t sub_1AE979BF4()
{
  sub_1AE979E9C();

  return sub_1AE988514();
}

uint64_t sub_1AE979C40()
{
  sub_1AE979E9C();

  return sub_1AE988514();
}

unint64_t sub_1AE979C94()
{
  result = qword_1EB5E67B8;
  if (!qword_1EB5E67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E67B8);
  }

  return result;
}

unint64_t sub_1AE979CF8()
{
  result = qword_1EB5E67C0;
  if (!qword_1EB5E67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E67C0);
  }

  return result;
}

unint64_t sub_1AE979D50()
{
  result = qword_1EB5E67C8;
  if (!qword_1EB5E67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E67C8);
  }

  return result;
}

uint64_t sub_1AE979DBC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_1AE979E10(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1AE979E9C()
{
  result = qword_1EB5E67D0;
  if (!qword_1EB5E67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E67D0);
  }

  return result;
}

uint64_t sub_1AE979EFC(uint64_t result, uint64_t a2)
{
  v2 = *(result + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_path);
  if (!(v2 >> 62))
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = result;
  v15 = a2;
  v16 = sub_1AE9889A4();
  a2 = v15;
  v17 = v16;
  result = v14;
  if (v17)
  {
    goto LABEL_17;
  }

LABEL_3:
  v3 = *(a2 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_path);
  if (!(v3 >> 62))
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_18:
  v18 = result;
  v19 = a2;
  v20 = sub_1AE9889A4();
  a2 = v19;
  v21 = v20;
  result = v18;
  if (v21)
  {
    goto LABEL_19;
  }

LABEL_5:
  v4 = *(result + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range);
  v5 = *(a2 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range);
  if (v4 != v5)
  {
    if (v4 < v5)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  v6 = *(result + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range + 8);
  v7 = __OFADD__(v4, v6);
  v8 = v4 + v6;
  if (v7)
  {
    goto LABEL_20;
  }

  v9 = *(a2 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range + 8);
  v7 = __OFADD__(v4, v9);
  v10 = v4 + v9;
  if (v7)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v11 = v8 == v10;
  v12 = v8 < v10;
  v13 = -1;
  if (!v12)
  {
    v13 = 1;
  }

  if (v11)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_1AE97A020(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E67D8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - v12;
  v15 = (*(a6 + 16))(a5, a6);
  result = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    return result;
  }

  v17 = v14;
  v36 = MEMORY[0x1E69E7CC0];
  v46 = v14;
  v47 = MEMORY[0x1E69E7CC0];
  v18 = v14 >> 60;
  v44 = a2;
  v45 = v15;
  v38 = a1;
  v43 = a1;
  [a3 stringCompareOptions];
  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v15 & 0xFFFFFFFFFFFFLL;
  }

  v37 = 4 * v19;
  v20 = 7;
  if ((v18 & ((v15 & 0x800000000000000) == 0)) != 0)
  {
    v20 = 11;
  }

  v42 = v20 | (v19 << 16);
  v41 = sub_1AE988614();
  v21 = *(v41 - 8);
  v22 = *(v21 + 56);
  v39 = v21 + 56;
  v40 = v22;
  v22(v13, 1, 1, v41);
  while (1)
  {
    sub_1AE971EC0();
    v23 = sub_1AE988944();
    v25 = v24;
    v27 = v26;
    sub_1AE97A3B4(v13);
    if (v27)
    {

      return v36;
    }

    v28 = sub_1AE97AB20(v23, v25, v15, v17);

    v29 = [a3 wordMatchMethod];
    if (v29 == 1)
    {
      if ((v28 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (v29 == 2)
    {
      if (v28 != 3)
      {
        goto LABEL_8;
      }
    }

    else if (v29)
    {
      goto LABEL_22;
    }

    v36 = type metadata accessor for LPTextRange();
    v45 = v23;
    v46 = v25;
    v43 = v15;
    v44 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E67E0);
    sub_1AE97B198();
    v30 = sub_1AE988924();
    v32 = v31;
    v33 = v35;

    sub_1AE96B48C(v30, v32, v33);
    MEMORY[0x1B2709B80]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AE9887A4();
    }

    sub_1AE9887C4();
    v36 = v47;
LABEL_8:
    v45 = v15;
    v46 = v17;
    v43 = v38;
    v44 = a2;
    [a3 stringCompareOptions];
    if (v37 < v25 >> 14)
    {
      break;
    }

    v40(v13, 1, 1, v41);
  }

  __break(1u);
LABEL_22:
  result = sub_1AE988AE4();
  __break(1u);
  return result;
}

uint64_t sub_1AE97A3B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E67D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1AE97A41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = (*(*(a3 + 8) + 24))();
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v10 = *(v5 + 16);
  if (v10)
  {
    sub_1AE988824();
    v11 = (v5 + 56);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      sub_1AE988814();
      sub_1AE9887E4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v32.origin.x = v12;
      v32.origin.y = v13;
      v32.size.width = v14;
      v32.size.height = v15;
      v31 = CGRectUnion(v30, v32);
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;

      v11 += 4;
      --v10;
    }

    while (v10);
  }

  v16 = [v3 resizableSnapshotViewFromRect:0 afterScreenUpdates:x withCapInsets:{y, width, height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  if (v16)
  {
    v17 = v16;
    [v16 setFrame_];
    v18 = *(v5 + 16);
    if (v18)
    {
      sub_1AE988AA4();
      v19 = objc_opt_self();
      v20 = (v5 + 56);
      do
      {
        v21 = [v19 valueWithCGRect_];
        sub_1AE988A84();
        sub_1AE988AB4();
        sub_1AE988AC4();
        sub_1AE988A94();
        v20 += 4;
        --v18;
      }

      while (v18);
    }

    v23 = objc_opt_self();
    sub_1AE97B1FC();
    v24 = sub_1AE988784();

    v25 = [v23 preferredPreviewParametersForTextLineRects_];

    [v4 center];
    v28 = [objc_allocWithZone(MEMORY[0x1E69DCE38]) initWithContainer:v4 center:{v26, v27}];
    v22 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v17 parameters:v25 target:v28];
  }

  else
  {

    return 0;
  }

  return v22;
}

unint64_t sub_1AE97A768(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1AE97AAAC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1AE97A90C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1AE97A800(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1AE97A898(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1AE97A90C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1AE97A898(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1AE97AA30(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AE97A90C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1AE988A74();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1AE97AA30(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1AE988744();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B2709B40](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1AE97AAAC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1AE97AA30(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE97AB20(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = sub_1AE988504();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  sub_1AE9884E4();
  sub_1AE9884D4();
  if (a1 < 0x4000)
  {
    goto LABEL_28;
  }

  v17 = sub_1AE97A768(a1, a3, a4);
  if (v17 < 0x4000)
  {
    __break(1u);
LABEL_50:
    sub_1AE988A34();
    goto LABEL_38;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    v25 = sub_1AE9886F4();
    sub_1AE97A800(v25, a3, a4);
    sub_1AE988A34();
    goto LABEL_20;
  }

  v18 = v17 >> 16;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v31 = a3;
    v32 = a4 & 0xFFFFFFFFFFFFFFLL;
    if ((*(&v31 + v18 - 1) & 0xC0) == 0x80)
    {
      v21 = -2;
      do
      {
        v23 = *(&v31 + v18 + v21--) & 0xC0;
      }

      while (v23 == 128);
      goto LABEL_14;
    }
  }

  else
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      v19 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v30 = v17;
      v19 = sub_1AE988A74();
      v17 = v30;
    }

    v20 = v19 + v18;
    if ((*(v20 - 1) & 0xC0) == 0x80)
    {
      v21 = -2;
      do
      {
        v22 = *(v20 + v21--) & 0xC0;
      }

      while (v22 == 128);
LABEL_14:
      v24 = v21 + 1;
      goto LABEL_16;
    }
  }

  v24 = -1;
LABEL_16:
  v25 = (v17 + (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
  sub_1AE97A800(v25, a3, a4);
  if ((a4 & 0x2000000000000000) != 0)
  {
    v31 = a3;
    v32 = a4 & 0xFFFFFFFFFFFFFFLL;
  }

  else if ((a3 & 0x1000000000000000) == 0)
  {
    sub_1AE988A74();
  }

LABEL_20:
  if ((sub_1AE9884F4() & 1) == 0)
  {
    sub_1AE97A800(v25, a3, a4);
    if ((a4 & 0x1000000000000000) != 0)
    {
      sub_1AE988A34();
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v31 = a3;
      v32 = a4 & 0xFFFFFFFFFFFFFFLL;
    }

    else if ((a3 & 0x1000000000000000) == 0)
    {
      sub_1AE988A74();
    }

    if ((sub_1AE9884F4() & 1) == 0)
    {
      v4 = 0;
      if ((a4 & 0x2000000000000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

LABEL_28:
  v4 = 1;
  if ((a4 & 0x2000000000000000) == 0)
  {
LABEL_29:
    v26 = a3 & 0xFFFFFFFFFFFFLL;
    v5 = 1;
    goto LABEL_32;
  }

LABEL_31:
  v5 = 0;
  v26 = HIBYTE(a4) & 0xF;
LABEL_32:
  if (a2 >> 14 >= 4 * v26)
  {
    goto LABEL_46;
  }

  sub_1AE97A800(a2, a3, a4);
  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_50;
  }

  if (v5)
  {
    if ((a3 & 0x1000000000000000) == 0)
    {
      sub_1AE988A74();
    }
  }

  else
  {
    v31 = a3;
    v32 = a4 & 0xFFFFFFFFFFFFFFLL;
  }

LABEL_38:
  if ((sub_1AE9884F4() & 1) == 0)
  {
    sub_1AE97A800(a2, a3, a4);
    if ((a4 & 0x1000000000000000) != 0)
    {
      sub_1AE988A34();
    }

    else if (v5)
    {
      if ((a3 & 0x1000000000000000) == 0)
      {
        sub_1AE988A74();
      }
    }

    else
    {
      v31 = a3;
      v32 = a4 & 0xFFFFFFFFFFFFFFLL;
    }

    if ((sub_1AE9884F4() & 1) == 0)
    {
      v29 = *(v11 + 8);
      v29(v14, v10);
      v29(v16, v10);
      return v4;
    }
  }

LABEL_46:
  v27 = *(v11 + 8);
  v27(v14, v10);
  v27(v16, v10);
  return v4 | 2;
}

unint64_t sub_1AE97B198()
{
  result = qword_1EB5E67E8;
  if (!qword_1EB5E67E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E67E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E67E8);
  }

  return result;
}

unint64_t sub_1AE97B1FC()
{
  result = qword_1EB5E67F0;
  if (!qword_1EB5E67F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5E67F0);
  }

  return result;
}

uint64_t sub_1AE97B25C()
{
  v1 = [v0 highlightedTextRange];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LPTextRange();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    sub_1AE969B54(0, &qword_1EB5E6800);
    v5 = sub_1AE9843C0(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

double sub_1AE97B444()
{
  v1 = v0;
  v2 = [v0 highlightedTextRange];
  v3 = 0.0;
  if (v2)
  {
    v4 = v2;
    type metadata accessor for LPTextRange();
    v5 = swift_dynamicCastClass();
    if (v5 && (v6 = v5, (v51 = [v1 contentView]) != 0))
    {
      v50 = v4;
      v7 = sub_1AE969B54(0, &qword_1EB5E6800);
      v8 = sub_1AE983E30(v6, v7);
      v9 = *(v8 + 16);
      if (v9)
      {
        v52 = MEMORY[0x1E69E7CC0];
        sub_1AE96AF7C(0, v9, 0);
        sub_1AE988824();
        v10 = v52;
        v49 = v8;
        v11 = (v8 + 56);
        do
        {
          v12 = *(v11 - 3);
          v13 = *(v11 - 2);
          v14 = *(v11 - 1);
          v15 = *v11;
          sub_1AE988814();
          sub_1AE9887E4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          [v1 convertRect:v51 toCoordinateSpace:{v12, v13, v14, v15, v49, v50}];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;

          v25 = *(v52 + 16);
          v24 = *(v52 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1AE96AF7C((v24 > 1), v25 + 1, 1);
          }

          *(v52 + 16) = v25 + 1;
          v26 = (v52 + 32 * v25);
          v26[4] = v17;
          v26[5] = v19;
          v26[6] = v21;
          v26[7] = v23;
          v11 += 4;
          --v9;
        }

        while (v9);
      }

      else
      {

        v10 = MEMORY[0x1E69E7CC0];
      }

      v27 = *(v10 + 16);
      if (v27)
      {
        sub_1AE988AA4();
        v28 = objc_opt_self();
        v29 = (v10 + 56);
        do
        {
          v30 = [v28 valueWithCGRect_];
          sub_1AE988A84();
          sub_1AE988AB4();
          sub_1AE988AC4();
          sub_1AE988A94();
          v29 += 4;
          --v27;
        }

        while (v27);
      }

      v31 = objc_opt_self();
      sub_1AE969B54(0, &qword_1EB5E67F0);
      v32 = sub_1AE988784();

      v33 = [v31 preferredPreviewParametersForTextLineRects_];

      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      v38 = *(v10 + 16);
      if (v38)
      {
        sub_1AE988824();
        v39 = (v10 + 56);
        do
        {
          v40 = *(v39 - 3);
          v41 = *(v39 - 2);
          v42 = *(v39 - 1);
          v43 = *v39;
          sub_1AE988814();
          sub_1AE9887E4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v53.origin.x = x;
          v53.origin.y = y;
          v53.size.width = width;
          v53.size.height = height;
          v55.origin.x = v40;
          v55.origin.y = v41;
          v55.size.width = v42;
          v55.size.height = v43;
          v54 = CGRectUnion(v53, v55);
          x = v54.origin.x;
          y = v54.origin.y;
          width = v54.size.width;
          height = v54.size.height;

          v39 += 4;
          --v38;
        }

        while (v38);
      }

      [v33 _textPathInsets];
      v45 = v44;
      v47 = v46;

      return UIEdgeInsetsInsetRect(x, y, width, height, v45, v47);
    }

    else
    {
    }
  }

  return v3;
}

uint64_t sub_1AE97B9A4()
{
  v0 = sub_1AE988664();
  __swift_allocate_value_buffer(v0, qword_1EB5E7C48);
  __swift_project_value_buffer(v0, qword_1EB5E7C48);
  return sub_1AE988654();
}

uint64_t sub_1AE97BAC0()
{
  type metadata accessor for LPTextRange();
  v0 = swift_dynamicCastClassUnconditional();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = sub_1AE969B54(0, &qword_1EB5E6800);

  return sub_1AE982EAC(v0, v1, v2, &off_1F2447470);
}

void sub_1AE97BCB8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (qword_1EB5E7C40 != -1)
  {
    swift_once();
  }

  v8 = sub_1AE988664();
  __swift_project_value_buffer(v8, qword_1EB5E7C48);

  v9 = sub_1AE988644();
  v10 = sub_1AE9888C4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136380675;
    *(v11 + 4) = sub_1AE97C778(a1, a2, &v26);
    _os_log_impl(&dword_1AE886000, v9, v10, "Performing text search on link view (query: %{private}s)", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B270B2F0](v12, -1, -1);
    MEMORY[0x1B270B2F0](v11, -1, -1);
  }

  v13 = sub_1AE969B54(0, &qword_1EB5E6800);
  v14 = sub_1AE9839F4(a1, a2, a3, MEMORY[0x1E69E7CC0], v13, &off_1F2447470);
  v15 = v14;
  if (v14 >> 62)
  {
    v16 = sub_1AE9889A4();
    if (!v16)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_14;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    return;
  }

  v17 = 0;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1B2709E60](v17, v15);
    }

    else
    {
      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    ++v17;
    v20 = sub_1AE9886A4();
    [a4 foundRange:v19 forSearchString:v20 inDocument:0];
  }

  while (v16 != v17);
LABEL_14:

  [a4 finishedSearching];
  swift_unknownObjectRetain();
  oslog = sub_1AE988644();
  v21 = sub_1AE9888C4();
  if (os_log_type_enabled(oslog, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    v23 = [a4 allFoundRanges];
    v24 = [v23 count];

    *(v22 + 4) = v24;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1AE886000, oslog, v21, "Found %ld matches for link view", v22, 0xCu);
    MEMORY[0x1B270B2F0](v22, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1AE97C144(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1AE9889A4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1AE9889A4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1AE96A274(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1AE97CD74(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1AE97C330()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = sub_1AE97D46C;
  v15[5] = v2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1AE96DF64;
  v15[3] = &block_descriptor_2;
  v3 = _Block_copy(v15);

  [v1 animateWithDuration:4 delay:v3 options:0 animations:0.2 completion:0.0];
  _Block_release(v3);
  v4 = [v0 components];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 textSearchingDimmingView];

    if (v6)
    {
      v7 = [v6 textRects];
      if (v7)
      {
        v8 = v7;
        sub_1AE969B54(0, &qword_1EB5E67F0);
        sub_1AE988794();

        v9 = sub_1AE988784();

        [v6 setTextRects_];

        v6 = v9;
      }

      else
      {
        [v6 setTextRects_];
      }
    }
  }

  [v0 setHighlightedTextRange_];
  v10 = [v0 components];
  v11 = [v10 textHighlightView];

  [v11 invalidateContentView];
  v12 = [v0 components];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 textHighlightView];

    if (v14)
    {
      [v14 fadeAwayWithCompletion_];
    }
  }
}

id sub_1AE97C680()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69DD140]);

  return [v1 initWithSearchableObject_];
}

unint64_t sub_1AE97C778(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1AE97C844(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1AE971610(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1AE97C844(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1AE97C950(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1AE988A74();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1AE97C950(uint64_t a1, unint64_t a2)
{
  v3 = sub_1AE97C99C(a1, a2);
  sub_1AE97CACC(&unk_1F24478D8);
  return v3;
}

uint64_t sub_1AE97C99C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1AE97CBB8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1AE988A74();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1AE988724();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1AE97CBB8(v10, 0);
        result = sub_1AE988A14();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1AE97CACC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1AE97CC2C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1AE97CBB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E68E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1AE97CC2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E68E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1AE97CD74(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AE9889A4();
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
      result = sub_1AE9889A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AE97D5C4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E68D0);
            v9 = sub_1AE96A494(v13, i, a3);
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
        sub_1AE969B54(0, &qword_1EB5E67F0);
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

void sub_1AE97CF04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = [v3 contentView];
  if (!v39)
  {
    return;
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1AE97D490;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AE96DF64;
  aBlock[3] = &block_descriptor_4;
  v8 = _Block_copy(aBlock);

  [v6 animateWithDuration:4 delay:v8 options:0 animations:0.2 completion:0.0];
  _Block_release(v8);
  v9 = &selRef_animateWithDuration_animations_;
  v10 = [v3 components];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 textHighlightView];

    if (v12)
    {
      [v12 setHidden_];
    }
  }

  if (a2 == 2)
  {
    [v3 setHighlightedTextRange_];
    v24 = [v3 components];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 textHighlightView];

      if (v26)
      {
        [v26 animateWithCompletion_];
      }
    }

    [v3 setNeedsLayout];
    goto LABEL_28;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
LABEL_28:

      return;
    }

    LODWORD(v38) = 0;
    v37 = 109;
    sub_1AE988AE4();
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for LPTextRange();
  v13 = swift_dynamicCastClassUnconditional();
  v14 = sub_1AE969B54(0, &qword_1EB5E6800);
  v15 = sub_1AE983E30(v13, v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1AE988AA4();
    sub_1AE988824();
    v17 = objc_opt_self();
    v18 = (v15 + 56);
    do
    {
      v20 = *(v18 - 3);
      v21 = *(v18 - 2);
      v22 = *(v18 - 1);
      v23 = *v18;
      sub_1AE988814();
      sub_1AE9887E4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v3 convertRect:v39 toCoordinateSpace:{v20, v21, v22, v23}];
      v19 = [v17 valueWithCGRect_];

      sub_1AE988A84();
      sub_1AE988AB4();
      sub_1AE988AC4();
      sub_1AE988A94();
      v18 += 4;
      --v16;
    }

    while (v16);
LABEL_18:

    v27 = aBlock[0];
    v9 = &selRef_animateWithDuration_animations_;
    goto LABEL_20;
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v28 = [v3 v9[227]];
  if (v28 && (v29 = v28, v30 = [v28 textSearchingDimmingView], v29, v30) && (v31 = objc_msgSend(v30, sel_textRects), v30, v31))
  {
    sub_1AE969B54(0, &qword_1EB5E67F0);
    v32 = sub_1AE988794();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  aBlock[0] = v32;
  sub_1AE97C144(v27);
  v33 = [v3 v9[227]];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 textSearchingDimmingView];

    if (v35)
    {
      sub_1AE969B54(0, &qword_1EB5E67F0);
      v36 = sub_1AE988784();

      [v35 setTextRects_];

      goto LABEL_28;
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AE97D49C(double a1)
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong components];

    if (v4)
    {
      v5 = [v4 textSearchingDimmingView];

      if (v5)
      {
        [v5 setAlpha_];
      }
    }
  }
}

unint64_t sub_1AE97D5C4()
{
  result = qword_1EB5E68D8;
  if (!qword_1EB5E68D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E68D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E68D8);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t (*sub_1AE97D694(void **a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v26 = a1;
  if (a2 == 1)
  {
    TupleTypeMetadata = sub_1AE988AD4();
    v8 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v6)
    {
      v11 = a4 & 0xFFFFFFFFFFFFFFFELL;
      v12 = (&v25 - v10);
      v13 = v6;
      do
      {
        v11 += 8;
        *v12++ = sub_1AE988AD4();
        --v13;
      }

      while (v13);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v14 = *(v8 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v17 = (v8 + 32);
    v18 = v26;
    v19 = v6;
    do
    {
      if (v6 == 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = *v17;
      }

      v21 = *v18++;
      *&v16[v20] = *v21;

      v17 += 4;
      --v19;
    }

    while (v19);
  }

  v22 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v6;
  *(v23 + 3) = a3;
  *(v23 + 4) = swift_allocateMetadataPack();
  (*(v14 + 32))(&v23[v22], v16, v8);
  for (; v6; --v6)
  {
  }

  return sub_1AE97DB74;
}

uint64_t sub_1AE97D8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v30 = a1;
  v31 = a5;
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata = MEMORY[0x1EEE9AC00](v9);
  v32 = v15;
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17)
  {
    v28 = v13;
    v29 = v8;
    v18 = 0;
    v19 = v14 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (a3 == 1)
      {
        TupleTypeMetadata = sub_1AE988AD4();
        v20 = 0;
      }

      else
      {
        v21 = v11;
        MEMORY[0x1EEE9AC00](TupleTypeMetadata);
        v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = 0;
        do
        {
          *&v23[8 * v24++] = sub_1AE988AD4();
        }

        while (a3 != v24);
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v20 = *(TupleTypeMetadata + 16 * v18 + 32);
        v11 = v21;
      }

      *&v16[8 * v18++] = a2 + v20;
    }

    while (v18 != a3);
    v8 = v29;
    v25 = (*(v29 + 16))(v11, v28, a4);
    do
    {
      v19 += 8;
      v16 += 8;
      MEMORY[0x1EEE9AC00](v25);
      swift_retain_n();
      swift_getAtKeyPath();

      swift_setAtWritableKeyPath();

      --a3;
    }

    while (a3);
  }

  else
  {
    (*(v8 + 16))(v11);
  }

  return (*(v8 + 32))(v31, v11, a4);
}

uint64_t sub_1AE97DB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  if (v6 == 1)
  {
    TupleTypeMetadata = sub_1AE988AD4();
  }

  else
  {
    v17[0] = v17;
    v17[1] = a2;
    MEMORY[0x1EEE9AC00](a1);
    v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v6)
    {
      v12 = v8 & 0xFFFFFFFFFFFFFFFELL;
      v13 = (v17 - v11);
      v14 = v6;
      do
      {
        v12 += 8;
        *v13++ = sub_1AE988AD4();
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v15 = v3 + ((*(*(TupleTypeMetadata - 8) + 80) + 40) & ~*(*(TupleTypeMetadata - 8) + 80));

  return sub_1AE97D8C8(a1, v15, v6, v7, a3);
}

uint64_t sub_1AE97DCC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *), uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  a4(a1, v12);
  return (*(v9 + 8))(v12, a6);
}

uint64_t sub_1AE97DE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE97E434(a1, a2);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v5;
}

uint64_t (*sub_1AE97DEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, uint64_t a2)
{
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v10[6] = a2;

  return sub_1AE97E500;
}

uint64_t sub_1AE97DF40(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AE97E510(a1, a2);

  return v2;
}

uint64_t sub_1AE97DF84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, void (*a5)(uint64_t, char *), uint64_t a6, uint64_t a7)
{
  v19 = a5;
  v10 = *(a7 - 8);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  (*(v10 + 16))(&v18 - v14);
  a3(a1, v15);
  v16 = *(v10 + 8);
  v16(v15, a7);
  (*(v10 + 32))(v15, v13, a7);
  v19(a1, v15);
  return (v16)(v15, a7);
}

uint64_t sub_1AE97E108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_1AE97E510(a1, *(a2 + 16));
  v6 = v5;

  *a3 = v4;
  a3[1] = v6;
  return result;
}

uint64_t sub_1AE97E150(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v13 - v9;
  result = sub_1AE988884();
  v12 = v14;
  if (v14)
  {
    if (sub_1AE988874() >= 2)
    {
      (*(v4 + 16))(v6, a1, a2);
      sub_1AE988894();
      v13[2] = v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6900);
      swift_getAssociatedConformanceWitness();
      sub_1AE988764();

      (*(v8 + 8))(v10, AssociatedTypeWitness);
      return v14;
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE97E3A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    sub_1AE988964();
    result = sub_1AE988B44();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

double sub_1AE97E404(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = (1.0 - a1) * 0.5;
  v7 = v6 * a4;
  v8 = v6 * a5;
  v10.origin.x = a2;
  v10.origin.y = a3;
  v10.size.width = a4;
  v10.size.height = a5;
  *&result = CGRectInset(v10, v7, v8);
  return result;
}

uint64_t sub_1AE97E434(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  type metadata accessor for KeyPathFilter();
  sub_1AE988764();

  return v3;
}

uint64_t sub_1AE97E510(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  type metadata accessor for KeyPathFilter();
  sub_1AE9887D4();
  swift_getWitnessTable();
  return sub_1AE97E434(&v4, a2);
}

uint64_t sub_1AE97E584()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t (*sub_1AE97E5E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (**a3)(uint64_t a1, uint64_t a2)@<X8>))(uint64_t a1, uint64_t a2)
{
  result = sub_1AE97DEB0(*a2, a2[1], *a1, a1[1], *(v3 + 16));
  *a3 = result;
  a3[1] = v6;
  return result;
}

id sub_1AE97E684(void *a1)
{
  type metadata accessor for LPDominantColorImageAnalyzer();
  v2 = a1;
  sub_1AE96A02C(v2);

  sub_1AE96A53C();
  v3 = sub_1AE988784();

  return v3;
}

uint64_t sub_1AE97E6F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6908);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6910);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6918);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v35 - v13;
  result = [v1 CGImage];
  if (result)
  {
    v16 = result;
    if (!CGImageHasAlpha())
    {
      goto LABEL_12;
    }

    [v1 _lp_pixelSize];
    if (!sizeFitsWithinSize(v17, v18, 1024.0, 1024.0))
    {
      goto LABEL_12;
    }

    result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (result)
    {
      result = sub_1AE9888E4();
      if (v39 != 1)
      {
        v36 = v40;
        v37 = v41;
        v35[2] = v38;
        v35[3] = v39;
        sub_1AE9884A4();
        v16 = v16;
        sub_1AE988484();
        (*(v9 + 56))(v7, 0, 1, v8);
        (*(v9 + 32))(v14, v7, v8);
        if (sub_1AE97EB8C())
        {
          v19 = sub_1AE988424();
          v20 = sub_1AE988434();
          v21 = sub_1AE97E404(0.75, 0.0, 0.0, v19, v20);
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v28 = sub_1AE988424();
          v29 = sub_1AE988434();
          v42.origin.x = v21;
          v42.origin.y = v23;
          v42.size.width = v25;
          v42.size.height = v27;
          v45 = CGRectIntegral(v42);
          v43.origin.x = 0.0;
          v43.origin.y = 0.0;
          v43.size.width = v28;
          v43.size.height = v29;
          v44 = CGRectIntersection(v43, v45);
          x = v44.origin.x;
          y = v44.origin.y;
          sub_1AE9884B4();
          v32 = sub_1AE9884C4();
          result = (*(*(v32 - 8) + 48))(v4, 1, v32);
          if (result != 1)
          {
            sub_1AE988474();
            sub_1AE97F094(v12, x, y);
            v33 = sub_1AE97EB8C();

            v34 = *(v9 + 8);
            v34(v12, v8);
            v34(v14, v8);
            if (v33)
            {
              return 3;
            }

            else
            {
              return 1;
            }
          }

LABEL_16:
          __break(1u);
          return result;
        }

        (*(v9 + 8))(v14, v8);
LABEL_12:

        return 0;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

BOOL sub_1AE97EB8C()
{
  sub_1AE988494();
  v1 = v0;

  v2 = *(v1 + 16);
  if (v2 >= 0xFF)
  {
    v2 = 255;
  }

  v3 = 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *(v1 + v3);
    v3 += 8;
  }

  while (!v6);
  v7 = v4 != 0;

  return v7;
}

uint64_t sub_1AE97EC18(void *a1)
{
  v1 = a1;
  v2 = sub_1AE97E6F8();

  return v2;
}

char *sub_1AE97EC4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6910);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6918);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v33 - v7;
  result = [v1 CGImage];
  if (result)
  {
    v10 = result;
    [v1 _lp_pixelSize];
    if (sizeFitsWithinSize(v11, v12, 1024.0, 1024.0))
    {
      result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      if (!result)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      result = sub_1AE9888E4();
      if (v37 == 1)
      {
LABEL_33:
        __break(1u);
        return result;
      }

      v34 = v38;
      v35 = v39;
      v33[2] = v36;
      v33[3] = v37;
      sub_1AE9884A4();
      v13 = v10;
      sub_1AE988484();
      (*(v6 + 56))(v4, 0, 1, v5);
      (*(v6 + 32))(v8, v4, v5);
      v14 = sub_1AE988494();
      v16 = v15;
      v18 = v17;

      result = v14;
      v19 = *(v14 + 16);
      if (v19)
      {
        v20 = 0;
        v21 = 32;
        do
        {
          v22 = *&result[v21] != 0;
          v23 = __OFADD__(v20, v22);
          v20 += v22;
          if (v23)
          {
            __break(1u);
            goto LABEL_30;
          }

          v21 += 8;
          --v19;
        }

        while (v19);

        if (v20 != 1)
        {
          goto LABEL_24;
        }

        v24 = *(v16 + 16);
        if (!v24)
        {

LABEL_26:

          goto LABEL_27;
        }

        v25 = 0;
        v26 = 32;
        while (1)
        {
          v27 = *(v16 + v26) != 0;
          v23 = __OFADD__(v25, v27);
          v25 += v27;
          if (v23)
          {
            break;
          }

          v26 += 8;
          if (!--v24)
          {

            if (v25 != 1)
            {
              goto LABEL_26;
            }

            v28 = *(v18 + 16);
            if (!v28)
            {
              goto LABEL_26;
            }

            v29 = 0;
            v30 = 32;
            while (1)
            {
              v31 = *(v18 + v30) != 0;
              v23 = __OFADD__(v29, v31);
              v29 += v31;
              if (v23)
              {
                goto LABEL_31;
              }

              v30 += 8;
              if (!--v28)
              {

                v32 = v29 == 1;
                goto LABEL_28;
              }
            }
          }
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_24:

LABEL_27:

      v32 = 0;
LABEL_28:
      (*(v6 + 8))(v8, v5);
      return v32;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE97EFF8(void *a1)
{
  v1 = a1;
  v2 = sub_1AE97EC4C();

  return v2 & 1;
}

uint64_t sub_1AE97F02C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE97F094(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6918);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v33 - v9;
  v11 = sub_1AE988424();
  v12 = sub_1AE988434();
  v13 = sub_1AE988424();
  v14 = sub_1AE988434();
  v37.size.width = v13;
  v37.size.height = v14;
  v37.origin.x = a2;
  v37.origin.y = a3;
  v42 = CGRectIntegral(v37);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v11;
  v38.size.height = v12;
  v39 = CGRectIntersection(v38, v42);
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  if (CGRectIsEmpty(v39))
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((*&y & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (y <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (y >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1AE988444();
  v20 = y * v19;
  if ((y * v19) >> 64 != v20 >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (x <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (x >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_1AE9884A4();
  v21 = sub_1AE988414();
  v22 = x * (v21 / 8);
  if ((x * (v21 / 8)) >> 64 != v22 >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (__OFADD__(v20, v22))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!sub_1AE988444())
  {
    goto LABEL_35;
  }

  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v23 = CGRectGetWidth(v40);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_29;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v24 = CGRectGetHeight(v41);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  v33[1] = a1;
  v33[2] = v3;
  sub_1AE988444();
  sub_1AE988454();
  src.data = sub_1AE988444();
  src.height = v25;
  src.width = v26;
  src.rowBytes = v27;
  dest.data = sub_1AE988444();
  dest.height = v28;
  dest.width = v29;
  dest.rowBytes = v30;
  v31 = sub_1AE988464();
  vImageCopyBuffer(&src, &dest, v31, 0);
  return (*(v8 + 8))(v10, v7);
}

id sub_1AE97F500()
{
  v1 = OBJC_IVAR___LPCustomizationPickerViewController_source;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1AE97F554(uint64_t a1)
{
  v3 = OBJC_IVAR___LPCustomizationPickerViewController_source;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1AE97F6D8()
{
  v1 = OBJC_IVAR___LPCustomizationPickerViewController_mask;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1AE97F7EC(uint64_t a1)
{
  v3 = OBJC_IVAR___LPCustomizationPickerViewController_mask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1AE97FA1C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_1AE97FA7C()
{
  v1 = OBJC_IVAR___LPCustomizationPickerViewController_source;
  swift_beginAccess();
  v2 = [*(v0 + v1) _selectedVariantIndex];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 integerValue];

  return v4;
}

unint64_t sub_1AE97FAFC()
{
  v1 = OBJC_IVAR___LPCustomizationPickerViewController_source;
  swift_beginAccess();
  v2 = [*(v0 + v1) _selectedVariantIndex];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  result = sub_1AE97FBD8();
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1B2709E60](v4, result);
    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 8 * v4 + 32);
LABEL_8:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

id sub_1AE97FBD8()
{
  v1 = v0;
  v2 = OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___allVariantViews;
  v3 = *&v0[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___allVariantViews];
  if (v3)
  {

    return v3;
  }

  v4 = OBJC_IVAR___LPCustomizationPickerViewController_source;
  swift_beginAccess();
  result = [*&v1[v4] _metadataVariants];
  if (result)
  {
    v6 = result;
    sub_1AE969B54(0, &qword_1ED5F3F20);
    v7 = sub_1AE988794();

    v8 = v7 >> 62;
    if (v7 >> 62)
    {
      goto LABEL_26;
    }

    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
LABEL_27:

      v3 = MEMORY[0x1E69E7CC0];
LABEL_28:
      *&v1[v2] = v3;

      return v3;
    }

    while (1)
    {
      v38 = MEMORY[0x1E69E7CC0];
      result = sub_1AE988AA4();
      if (v9 < 0)
      {
        break;
      }

      v10 = v7;
      v34 = v2;
      v35 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v8)
      {
        v11 = sub_1AE9889A4();
        v10 = v7;
      }

      else
      {
        v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v2 = 0;
      v36 = v10 & 0xC000000000000001;
      v37 = v11 & ~(v11 >> 63);
      v7 = v9;
      v8 = v10;
      while (v37 != v2)
      {
        if (v36)
        {
          v18 = MEMORY[0x1B2709E60](v2);
        }

        else
        {
          if (v2 >= *(v35 + 16))
          {
            goto LABEL_25;
          }

          v18 = *(v10 + 8 * v2 + 32);
        }

        v19 = v18;
        v20 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel_handleTapGestureForLinkView_];
        _s15VariantLinkViewCMa();
        v21 = OBJC_IVAR___LPCustomizationPickerViewController_source;
        swift_beginAccess();
        v22 = *&v1[v21];
        v23 = v19;
        [v22 contentInset];
        v28 = sub_1AE978F30(v23, 0.0, 0.0, 0.0, 0.0, v24, v25, v26, v27);
        v29 = [*&v1[v21] _selectedVariantIndex];
        if (v29)
        {
          v30 = v29;
          v31 = [v29 integerValue];
        }

        else
        {
          v31 = 0;
        }

        (*((*MEMORY[0x1E69E7D40] & *v28) + 0x88))(v2 == v31);
        [v28 setTranslatesAutoresizingMaskIntoConstraints_];
        v13 = [v1 mask];
        v32 = OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView_linkView;
        v33 = *&v28[OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView_linkView];
        if (v13)
        {
          [v33 _setAnimationOrigin_];
          [*&v28[v32] _setMaskImage_];
          [*&v28[v32] _setMaskEnabled_];
          [*&v28[v32] _setEffectiveCornerRadius_];
        }

        else
        {
          v12 = *&v1[v21];
          v13 = v33;
          [v12 _effectiveCornerRadius];
          [v13 _setEffectiveCornerRadius_];
        }

        ++v2;

        v14 = OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView_linkView;
        [*&v28[OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView_linkView] _setForceFlexibleWidth_];
        v15 = *&v28[v14];
        v16 = *&v1[v21];
        v17 = v15;
        [v16 _textSafeAreaInset];
        [v17 _setTextSafeAreaInset_];

        [v28 addGestureRecognizer_];
        sub_1AE988A84();
        sub_1AE988AB4();
        sub_1AE988AC4();
        sub_1AE988A94();
        v10 = v8;
        if (v7 == v2)
        {

          v3 = v38;
          v2 = v34;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v9 = sub_1AE9889A4();
      if (!v9)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1AE980054()
{
  v1 = OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___innerRootViewController;
  v2 = *&v0[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___innerRootViewController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___innerRootViewController];
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
    v5 = [v4 navigationItem];
    sub_1AE96A6B0();
    v6 = sub_1AE9886A4();

    [v5 setTitle_];

    if ([v0 modalPresentationStyle] != 7)
    {
      v7 = [v4 navigationItem];
      sub_1AE969B54(0, &qword_1EB5E69F0);
      sub_1AE969B54(0, &qword_1EB5E69F8);
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1AE988914();
      v9 = sub_1AE9888D4();
      [v7 setRightBarButtonItem_];
    }

    v10 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1AE980274()
{
  v1 = OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___stackView);
  }

  else
  {
    v4 = v0;
    if (sub_1AE97FBD8() >> 62)
    {
      sub_1AE969B54(0, &qword_1EB5E69E8);
      sub_1AE988AF4();
    }

    else
    {

      sub_1AE988B84();
      sub_1AE969B54(0, &qword_1EB5E69E8);
    }

    v5 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
    sub_1AE969B54(0, &qword_1EB5E69E8);
    v6 = sub_1AE988784();

    v7 = [v5 initWithArrangedSubviews_];

    [v7 setAxis_];
    [v7 setAlignment_];
    [v7 setDistribution_];
    [v7 setSpacing_];
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1AE980424()
{
  v1 = OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___scrollView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
    v5 = sub_1AE980574();
    [v4 addSubview_];

    v6 = sub_1AE980274();
    [v4 addSubview_];

    if (*(v0 + OBJC_IVAR___LPCustomizationPickerViewController_titleLabel))
    {
      [v4 addSubview_];
    }

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    [v4 setAlwaysBounceVertical_];
    v7 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_handleTapGestureForScrollView_];
    [v4 addGestureRecognizer_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1AE980574()
{
  v1 = OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___blurBackground;
  v2 = *&v0[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___blurBackground];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___blurBackground];
  }

  else
  {
    if ([v0 modalPresentationStyle] == 7)
    {
      v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    }

    else
    {
      v5 = [objc_opt_self() effectWithStyle_];
      v4 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
      [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    }

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1AE980670()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];

  return v1;
}

id sub_1AE980704(uint64_t a1)
{
  *&v1[OBJC_IVAR___LPCustomizationPickerViewController_mask] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___LPCustomizationPickerViewController_titleLabel] = 0;
  *&v1[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___allVariantViews] = 0;
  *&v1[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___stackView] = 0;
  *&v1[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___scrollView] = 0;
  *&v1[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___innerRootViewController] = 0;
  *&v1[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___blurBackground] = 0;
  *&v1[OBJC_IVAR___LPCustomizationPickerViewController_source] = a1;
  v4.receiver = v1;
  v4.super_class = LPCustomizationPickerViewController;
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

id LPCustomizationPickerViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

uint64_t sub_1AE980940(uint64_t a1)
{
  v3 = v1;

  return a1;
}

Swift::Void __swiftcall LPCustomizationPickerViewController.viewDidLoad()()
{
  v1 = v0;
  v122.super_class = LPCustomizationPickerViewController;
  objc_msgSendSuper2(&v122, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_26;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = v5;
  v7 = [v5 traitCollection];

  v8 = [v7 userInterfaceIdiom];
  if (v8 == 5)
  {
    [v1 setNavigationBarHidden_];
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = sub_1AE980054();
    v11 = [v10 navigationItem];

    v12 = [v11 title];
    [v9 setText_];

    [v9 setTextAlignment_];
    v13 = [objc_opt_self() preferredFontForTextStyle_];
    [v9 setFont_];

    v14 = *&v1[OBJC_IVAR___LPCustomizationPickerViewController_titleLabel];
    *&v1[OBJC_IVAR___LPCustomizationPickerViewController_titleLabel] = v9;
  }

  v15 = sub_1AE980054();
  [v1 pushViewController:v15 animated:0];

  v16 = [*&v1[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___innerRootViewController] view];
  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = v16;
  v18 = sub_1AE980424();
  [v17 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AE9C6D70;
  v20 = sub_1AE980574();
  v21 = [v20 leadingAnchor];

  v22 = sub_1AE980424();
  v23 = [v22 frameLayoutGuide];

  v24 = [v23 leadingAnchor];
  v25 = [v21 constraintEqualToAnchor_];

  *(v19 + 32) = v25;
  v26 = OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___blurBackground;
  v27 = [*&v1[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___blurBackground] trailingAnchor];
  v28 = OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___scrollView;
  v29 = [*&v1[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___scrollView] frameLayoutGuide];
  v30 = [v29 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v19 + 40) = v31;
  v32 = [*&v1[v26] topAnchor];
  v33 = [*&v1[v28] frameLayoutGuide];
  v34 = [v33 topAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  *(v19 + 48) = v35;
  v36 = [*&v1[v26] bottomAnchor];
  v121 = v28;
  v37 = [*&v1[v28] frameLayoutGuide];
  v38 = [v37 bottomAnchor];

  v39 = [v36 constraintEqualToAnchor_];
  *(v19 + 56) = v39;
  v40 = *&v1[OBJC_IVAR___LPCustomizationPickerViewController_titleLabel];
  v119 = v19;
  v120 = OBJC_IVAR___LPCustomizationPickerViewController_titleLabel;
  if (v40)
  {
    sub_1AE988824();
    v41 = v40;
    sub_1AE988814();
    sub_1AE9887E4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1AE9C7E60;
    v43 = [v41 leadingAnchor];
    v44 = [*&v1[v121] contentLayoutGuide];
    v45 = [v44 leadingAnchor];

    v46 = [v43 constraintEqualToAnchor_];
    *(v42 + 32) = v46;
    v47 = [v41 trailingAnchor];
    v48 = [*&v1[v121] &off_1E7A38330 + 5];
    v49 = [v48 trailingAnchor];

    v50 = [v47 constraintEqualToAnchor_];
    *(v42 + 40) = v50;
    v51 = [v41 topAnchor];
    v52 = [*&v1[v121] &off_1E7A38330 + 5];
    v53 = [v52 topAnchor];

    v54 = [v51 constraintEqualToAnchor:v53 constant:20.0];
    v118 = v42;
    *(v42 + 48) = v54;
  }

  else
  {
    v118 = MEMORY[0x1E69E7CC0];
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE9C7E70;
  v56 = sub_1AE980274();
  v57 = [v56 leadingAnchor];

  v58 = [*&v1[v121] contentLayoutGuide];
  v59 = [v58 leadingAnchor];

  v60 = [v1 modalPresentationStyle];
  v61 = 0.0;
  if (v60 == 7)
  {
    v61 = 25.0;
  }

  v62 = [v57 constraintEqualToAnchor:v59 constant:v61];

  *(inited + 32) = v62;
  v63 = OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___stackView;
  v64 = [*&v1[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___stackView] trailingAnchor];
  v65 = [*&v1[v121] contentLayoutGuide];
  v66 = [v65 trailingAnchor];

  v67 = [v1 modalPresentationStyle];
  v68 = -0.0;
  if (v67 == 7)
  {
    v68 = -25.0;
  }

  v69 = [v64 constraintEqualToAnchor:v66 constant:v68];

  *(inited + 40) = v69;
  v70 = [*&v1[v63] topAnchor];
  v71 = *&v1[v120];
  if (!v71 || (v72 = [v71 bottomAnchor]) == 0)
  {
    v73 = [*&v1[v121] contentLayoutGuide];
    v72 = [v73 topAnchor];
  }

  v74 = [v70 constraintEqualToAnchor:v72 constant:25.0];

  *(inited + 48) = v74;
  v75 = [*&v1[v63] bottomAnchor];
  v76 = [*&v1[v121] contentLayoutGuide];
  v77 = [v76 bottomAnchor];

  v78 = [v75 &selRef:v77 :-25.0createTemporaryFileAndWriteData + 6];
  *(inited + 56) = v78;
  v79 = [*&v1[v63] widthAnchor];
  v80 = [*&v1[v121] frameLayoutGuide];
  v81 = [v80 widthAnchor];

  v82 = [v1 modalPresentationStyle];
  v83 = -0.0;
  if (v82 == 7)
  {
    v83 = -50.0;
  }

  v84 = [v79 &selRef:v81 :v83createTemporaryFileAndWriteData + 6];

  *(inited + 64) = v84;
  v85 = swift_initStackObject();
  *(v85 + 16) = xmmword_1AE9C6D70;
  v86 = [*&v1[v121] frameLayoutGuide];
  v87 = [v86 leadingAnchor];

  v88 = sub_1AE980054();
  v89 = [v88 view];

  if (!v89)
  {
    goto LABEL_28;
  }

  v90 = [v89 safeAreaLayoutGuide];

  v91 = [v90 leadingAnchor];
  v92 = [v87 constraintEqualToAnchor_];

  *(v85 + 32) = v92;
  v93 = [*&v1[v121] frameLayoutGuide];
  v94 = [v93 trailingAnchor];

  v95 = OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___innerRootViewController;
  v96 = [*&v1[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___innerRootViewController] view];
  if (!v96)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v97 = v96;
  v98 = [v96 safeAreaLayoutGuide];

  v99 = [v98 trailingAnchor];
  v100 = [v94 constraintEqualToAnchor_];

  *(v85 + 40) = v100;
  v101 = [*&v1[v121] frameLayoutGuide];
  v102 = [v101 topAnchor];

  v103 = [*&v1[v95] view];
  if (!v103)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v104 = v103;
  v105 = [v103 topAnchor];

  v106 = [v102 constraintEqualToAnchor_];
  *(v85 + 48) = v106;
  v107 = [*&v1[v121] frameLayoutGuide];
  v108 = [v107 bottomAnchor];

  v109 = [*&v1[v95] view];
  if (v109)
  {
    v110 = v109;
    v111 = [v109 bottomAnchor];

    v112 = [v108 constraintEqualToAnchor_];
    *(v85 + 56) = v112;
    v113 = sub_1AE97FBD8();
    v114 = v1;
    v115 = sub_1AE9827D0(v113, v114);

    v123 = v119;
    sub_1AE979884(inited);
    sub_1AE979884(v85);
    sub_1AE979884(v118);
    sub_1AE979884(v115);
    v116 = objc_opt_self();
    sub_1AE969B54(0, &qword_1EB5E6970);
    v117 = sub_1AE988784();

    [v116 activateConstraints_];

    return;
  }

LABEL_31:
  __break(1u);
}

Swift::Void __swiftcall LPCustomizationPickerViewController.viewDidLayoutSubviews()()
{
  v16.super_class = LPCustomizationPickerViewController;
  objc_msgSendSuper2(&v16, sel_viewDidLayoutSubviews);
  if ([v0 modalPresentationStyle] == 7)
  {
    v1 = sub_1AE980424();
    [v1 contentSize];
    v3 = v2;

    v4 = sub_1AE980054();
    v5 = [v4 view];

    if (v5)
    {
      [v5 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v17.origin.x = v7;
      v17.origin.y = v9;
      v17.size.width = v11;
      v17.size.height = v13;
      if (v3 < CGRectGetHeight(v17))
      {
        v14 = *&v0[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___scrollView];
        v15 = *&v0[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___innerRootViewController];
        [v14 contentSize];
        [v15 setPreferredContentSize_];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AE9818CC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

Swift::Void __swiftcall LPCustomizationPickerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  v2 = OBJC_IVAR___LPCustomizationPickerViewController_source;
  swift_beginAccess();
  [*(v1 + v2) setAlpha_];
}

id sub_1AE981B18(unint64_t a1)
{
  v3 = sub_1AE97FBD8();
  v4 = v3;
  if (v3 >> 62)
  {
LABEL_40:
    v5 = sub_1AE9889A4();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_17:
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_3:
  v16 = v1;
  sub_1AE988824();
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B2709E60](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v1 = sub_1AE988814();
    sub_1AE9887E4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v9 = [a1 view];

    if (v9)
    {
      break;
    }

    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_16:
    ++v6;
    if (v10 == v5)
    {
      goto LABEL_17;
    }
  }

  if (v8 != v9)
  {
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_36;
    }

    goto LABEL_16;
  }

  a1 = *&v16[OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___allVariantViews];
  if (a1 >> 62)
  {
    v4 = sub_1AE9889A4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7D40];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1B2709E60](v12, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v14 = *(a1 + 8 * v12 + 32);
      }

      v1 = v14;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_37;
      }

      (*((*v13 & *v14) + 0x88))(v6 == v12);

      ++v12;
    }

    while (v15 != v4);
  }

  result = [v16 customizationDelegate];
  if (result)
  {
    [result customizationPicker:v16 didSelectVariantAtIndex:v6];

    return swift_unknownObjectRelease();
  }

  return result;
}

id LPCustomizationPickerViewController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v2 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v2];
}

id sub_1AE9820A0(void *a1, SEL *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a2];

  return v3;
}

id LPCustomizationPickerViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1AE9886A4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t sub_1AE982274()
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_1AE9823C4(uint64_t a1)
{
  v2 = [v1 createAnimatorFor:a1 reversed:0];

  return v2;
}

id sub_1AE9824D0(uint64_t a1)
{
  v2 = [v1 createAnimatorFor:a1 reversed:1];

  return v2;
}

void _sSo35LPCustomizationPickerViewControllerC16LinkPresentationE5coderABSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___LPCustomizationPickerViewController_mask) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___LPCustomizationPickerViewController_titleLabel) = 0;
  *(v0 + OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___allVariantViews) = 0;
  *(v0 + OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___scrollView) = 0;
  *(v0 + OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___innerRootViewController) = 0;
  *(v0 + OBJC_IVAR___LPCustomizationPickerViewController____lazy_storage___blurBackground) = 0;
  sub_1AE988AE4();
  __break(1u);
}

unint64_t sub_1AE9827D0(unint64_t isUniquelyReferenced_nonNull_bridgeObject, void *a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v42)
  {
    v4 = 0;
    v48 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v49 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v47 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v45 = isUniquelyReferenced_nonNull_bridgeObject;
    v46 = i;
    v44 = a2;
    while (1)
    {
      if (v49)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1B2709E60](v4, isUniquelyReferenced_nonNull_bridgeObject);
      }

      else
      {
        if (v4 >= *(v48 + 16))
        {
          goto LABEL_49;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v47 + 8 * v4);
      }

      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v4, 1);
      v9 = v4 + 1;
      if (v8)
      {
        break;
      }

      sub_1AE988824();
      sub_1AE988814();
      sub_1AE9887E4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v10 = *(v7 + OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController15VariantLinkView_linkView);
      v11 = [a2 customizationDelegate];
      if (v11)
      {
        [v11 maximumWidthForLinkViewInCustomizationPicker_];
        v13 = v12;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 1.79769313e308;
      }

      v14 = [objc_opt_self() mainScreen];
      [v14 bounds];
      v16 = v15;

      [v10 sizeThatFits_];
      v18 = v17;
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AE9C6F50;
      v22 = [v7 widthAnchor];
      v23 = [v22 constraintEqualToConstant_];

      *(v21 + 32) = v23;
      v24 = [v7 heightAnchor];
      v25 = [v24 constraintEqualToConstant_];

      *(v21 + 40) = v25;

      if (v50)
      {
        goto LABEL_47;
      }

      v26 = v21 >> 62;
      v51 = v9;
      if (v21 >> 62)
      {
        v7 = sub_1AE9889A4();
      }

      else
      {
        v7 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v27 = v5 >> 62;
      if (v5 >> 62)
      {
        v41 = sub_1AE9889A4();
        v29 = v41 + v7;
        if (__OFADD__(v41, v7))
        {
LABEL_46:
          __break(1u);
LABEL_47:

          return v5;
        }
      }

      else
      {
        v28 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v29 = v28 + v7;
        if (__OFADD__(v28, v7))
        {
          goto LABEL_46;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v27)
        {
          v53 = v5;
          v30 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v29 <= *(v30 + 24) >> 1)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

LABEL_26:
        sub_1AE9889A4();
        goto LABEL_27;
      }

      if (v27)
      {
        goto LABEL_26;
      }

      v53 = v5;
LABEL_27:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1AE988A64();
      v53 = isUniquelyReferenced_nonNull_bridgeObject;
      v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_28:
      v31 = *(v30 + 16);
      v32 = *(v30 + 24);
      if (v26)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1AE9889A4();
        v33 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          v6 = v46;
          v4 = v51;
          if (v7 > 0)
          {
            goto LABEL_50;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v33 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v33)
        {
          goto LABEL_4;
        }
      }

      if (((v32 >> 1) - v31) < v7)
      {
        goto LABEL_51;
      }

      v34 = v30 + 8 * v31 + 32;
      if (v26)
      {
        if (v33 < 1)
        {
          goto LABEL_53;
        }

        sub_1AE979AF4();
        for (j = 0; j != v33; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E67B0);
          v36 = sub_1AE96A494(v52, j, v21);
          v38 = *v37;
          (v36)(v52, 0);
          *(v34 + 8 * j) = v38;
        }

        a2 = v44;
      }

      else
      {
        sub_1AE969B54(0, &qword_1EB5E6970);
        swift_arrayInitWithCopy();
      }

      v6 = v46;
      v4 = v51;
      if (v7 >= 1)
      {
        v39 = *(v30 + 16);
        v8 = __OFADD__(v39, v7);
        v40 = v39 + v7;
        if (v8)
        {
          goto LABEL_52;
        }

        *(v30 + 16) = v40;
      }

LABEL_5:
      isUniquelyReferenced_nonNull_bridgeObject = v45;
      v5 = v53;
      if (v4 == v6)
      {
        return v5;
      }
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
LABEL_53:
    __break(1u);
LABEL_54:
    v42 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_1AE9889A4();
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1AE982D00()
{
  result = [v0 customizationDelegate];
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR___LPCustomizationPickerViewController_source;
    swift_beginAccess();
    v4 = [*&v0[v3] _selectedVariantIndex];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 integerValue];
    }

    else
    {
      v6 = 0;
    }

    [v2 customizationPicker:v0 didSelectVariantAtIndex:v6];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AE982DC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong customizationDelegate];
    if (v2)
    {
      v3 = v2;
      v4 = OBJC_IVAR___LPCustomizationPickerViewController_source;
      swift_beginAccess();
      v5 = [*&v1[v4] _selectedVariantIndex];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 integerValue];
      }

      else
      {
        v7 = 0;
      }

      [v3 customizationPicker:v1 didSelectVariantAtIndex:v7];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AE982EAC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = &OBJC_IVAR____TtC16LinkPresentation11LPTextRange_path;
  v8 = *(a1 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_path);
  v76 = v8 >> 62;
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

LABEL_119:
  v57 = a4;
  v58 = sub_1AE9889A4();
  a4 = v57;
  if (!v58)
  {
    goto LABEL_120;
  }

LABEL_3:
  v7 = *(a2 + *v7);
  v72 = v7 >> 62;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

LABEL_121:
  v59 = a4;
  v9 = sub_1AE9889A4();
  a4 = v59;
  if (!v9)
  {
    goto LABEL_122;
  }

LABEL_5:
  v71 = a4;
  v69 = v8;
  v66 = *(a4 + 16);
  v67 = v7;
  v9 = v66(a3, a4);
  v65 = a3;
  v62 = a2;
  v63 = v6;
  if (v9 >> 62)
  {
LABEL_123:
    v73 = v9 & 0xFFFFFFFFFFFFFF8;
    v60 = v9;
    v7 = sub_1AE9889A4();
    v9 = v60;
    goto LABEL_7;
  }

  v73 = v9 & 0xFFFFFFFFFFFFFF8;
  v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  a3 = 0;
  a2 = v9 & 0xC000000000000001;
  v10 = v69 & 0xFFFFFFFFFFFFFF8;
  v68 = v69 & 0xC000000000000001;
  v75 = v69 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 == a3)
    {
      goto LABEL_139;
    }

    if (a2)
    {
      v12 = v9;
      v13 = MEMORY[0x1B2709E60](a3);
    }

    else
    {
      if (a3 >= *(v73 + 16))
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v12 = v9;
      v13 = *(v9 + 8 * a3 + 32);
    }

    sub_1AE988824();
    v8 = sub_1AE988814();
    sub_1AE9887E4();
    v6 = v14;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v76)
    {
      if (!sub_1AE9889A4())
      {
LABEL_8:

        *&v82[0] = v13;
        goto LABEL_9;
      }
    }

    else if (!*(v10 + 16))
    {
      goto LABEL_8;
    }

    if (!v68)
    {
      break;
    }

    v6 = MEMORY[0x1B2709E60](0, v69);
    *&v82[0] = v13;
    if (v6)
    {
      goto LABEL_24;
    }

LABEL_9:

LABEL_10:
    v11 = __OFADD__(a3++, 1);
    v10 = v69 & 0xFFFFFFFFFFFFFF8;
    v9 = v12;
    if (v11)
    {
      goto LABEL_114;
    }
  }

  if (!*(v10 + 16))
  {
    goto LABEL_117;
  }

  v6 = *(v69 + 32);

  *&v82[0] = v13;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_24:
  *&v79 = v6;
  sub_1AE988964();
  v15 = sub_1AE988694();

  v6 = *&v82[0];

  if ((v15 & 1) == 0)
  {
    goto LABEL_10;
  }

  v16 = v66(v65, v71);
  if (v16 >> 62)
  {
    v61 = v16;
    v70 = v16 & 0xFFFFFFFFFFFFFF8;
    v71 = sub_1AE9889A4();
    v16 = v61;
  }

  else
  {
    v70 = v16 & 0xFFFFFFFFFFFFFF8;
    v71 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v7 = v16 & 0xC000000000000001;
  v74 = v67 & 0xFFFFFFFFFFFFFF8;
  v66 = (v67 & 0xC000000000000001);
  while (2)
  {
    if (v71 == v8)
    {

      goto LABEL_141;
    }

    if (v7)
    {
      a2 = v16;
      v17 = MEMORY[0x1B2709E60](v8);
    }

    else
    {
      if (v8 >= *(v70 + 16))
      {
        goto LABEL_115;
      }

      a2 = v16;
      v17 = *(v16 + 8 * v8 + 32);
    }

    v6 = sub_1AE988814();
    sub_1AE9887E4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v72)
    {
      v19 = sub_1AE9889A4();
      v18 = v67 & 0xFFFFFFFFFFFFFF8;
      if (!v19)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v18 = v67 & 0xFFFFFFFFFFFFFF8;
      if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_32:

        *&v82[0] = v17;
        goto LABEL_33;
      }
    }

    if (v66)
    {

      v20 = MEMORY[0x1B2709E60](0, v67);
      *&v82[0] = v17;
      if (v20)
      {
        goto LABEL_48;
      }

      goto LABEL_33;
    }

    if (!*(v18 + 16))
    {
      goto LABEL_118;
    }

    v20 = *(v67 + 32);

    *&v82[0] = v17;
    if (!v20)
    {
LABEL_33:

      goto LABEL_34;
    }

LABEL_48:
    *&v79 = v20;
    v21 = sub_1AE988694();

    if ((v21 & 1) == 0)
    {
LABEL_34:
      v11 = __OFADD__(v8++, 1);
      v16 = a2;
      if (v11)
      {
        goto LABEL_116;
      }

      continue;
    }

    break;
  }

  v22 = v69;
  if (a3 == v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AE9C6D00;
    if (v76)
    {
      v24 = sub_1AE9889A4();
    }

    else
    {
      v24 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v24)
    {
      if (!v68)
      {
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

          goto LABEL_64;
        }

        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        do
        {
LABEL_130:
          __break(1u);
          while (1)
          {
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            swift_unknownObjectRelease();
            v32 = v22;
LABEL_80:
            v22 = v75;
            sub_1AE9848C4(v75, v32, v21, a2);
            v36 = v35;
LABEL_87:
            swift_unknownObjectRelease();
LABEL_88:
            v21 = type metadata accessor for LPTextRange();
            a3 = sub_1AE96B48C(v23, a3, v36);
            v39 = (v62 + *v6);
            v23 = *v39;
            v40 = v39[1];
            if (!v72)
            {
              break;
            }

            v41 = sub_1AE9889A4();
            if (v41 < 0)
            {
              goto LABEL_138;
            }

            v6 = v41;
            a2 = v41 != 0;
            if (sub_1AE9889A4() < a2)
            {
              goto LABEL_130;
            }

            if (sub_1AE9889A4() >= v6)
            {
              goto LABEL_94;
            }
          }

          v6 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
          a2 = v6 != 0;
        }

        while (v6 < a2);
LABEL_94:
        if (v66)
        {

          if (v6 >= 2)
          {
            v42 = a2;
            do
            {
              v43 = v42 + 1;
              sub_1AE988A44();
              v42 = v43;
            }

            while (v6 != v43);
          }

          if (!v72)
          {
LABEL_99:
            v44 = v74 + 32;
            v45 = (2 * v6) | 1;
            if (v45)
            {
LABEL_104:
              v50 = v44;
              sub_1AE988B94();
              swift_unknownObjectRetain_n();
              v51 = swift_dynamicCastClass();
              if (!v51)
              {
                swift_unknownObjectRelease();
                v51 = MEMORY[0x1E69E7CC0];
              }

              v52 = *(v51 + 16);

              if (__OFSUB__(v45 >> 1, a2))
              {
                __break(1u);
              }

              else if (v52 == (v45 >> 1) - a2)
              {
                v49 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (!v49)
                {
                  v49 = MEMORY[0x1E69E7CC0];
LABEL_110:
                  swift_unknownObjectRelease();
                }

                v53 = sub_1AE96B48C(v23, v40, v49);
                v81 = v64;
                v54 = v64;
                swift_getAtAnyKeyPath();
                if (v80)
                {

                  sub_1AE9744F0(&v79, v82);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6A10);
                  swift_dynamicCast();
                  ObjectType = swift_getObjectType();
                  v56 = (*(v78 + 8))(a3, v53, ObjectType);

                  return v56;
                }

                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:

                while (1)
                {
LABEL_141:
                  sub_1AE988AE4();
                  __break(1u);
                }
              }

              swift_unknownObjectRelease();
              v44 = v50;
            }

LABEL_103:
            sub_1AE9848C4(v74, v44, a2, v45);
            v49 = v48;
            goto LABEL_110;
          }
        }

        else
        {

          if (!v72)
          {
            goto LABEL_99;
          }
        }

        v74 = sub_1AE988B14();
        a2 = v46;
        v45 = v47;
        if (v47)
        {
          goto LABEL_104;
        }

        goto LABEL_103;
      }
    }

    else
    {
      __break(1u);
    }

    v26 = MEMORY[0x1B2709E60](0, v69);
LABEL_64:
    *(v23 + 32) = v26;
    *&v82[0] = v23;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6A00);
    sub_1AE984C30(&qword_1EB5E6A08, &qword_1EB5E6A00);
    v28 = sub_1AE97E150(v82, v27);

    if (!v28)
    {
      goto LABEL_141;
    }

    v6 = &OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range;
    v23 = *(v63 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range);
    a3 = *(v63 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range + 8);
    if (v76)
    {
      v29 = sub_1AE9889A4();
      if (v29 < 0)
      {
        goto LABEL_137;
      }

      a2 = v29;
      v21 = v29 != 0;
      if (sub_1AE9889A4() < v21)
      {
        goto LABEL_128;
      }

      if (sub_1AE9889A4() < a2)
      {
        goto LABEL_129;
      }
    }

    else
    {
      a2 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = a2 != 0;
      if (a2 < v21)
      {
        goto LABEL_128;
      }
    }

    if (v68)
    {

      if (a2 >= 2)
      {
        v30 = v21;
        do
        {
          v31 = v30 + 1;
          sub_1AE988A44();
          v30 = v31;
        }

        while (a2 != v31);
      }

      if (!v76)
      {
        goto LABEL_76;
      }

LABEL_79:

      v75 = sub_1AE988B14();
      v21 = v33;
      a2 = v34;
      if ((v34 & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    else
    {

      if (v76)
      {
        goto LABEL_79;
      }

LABEL_76:
      v32 = v75 + 32;
      a2 = (2 * a2) | 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    v22 = v32;
    sub_1AE988B94();
    swift_unknownObjectRetain_n();
    v37 = swift_dynamicCastClass();
    if (!v37)
    {
      swift_unknownObjectRelease();
      v37 = MEMORY[0x1E69E7CC0];
    }

    v38 = *(v37 + 16);

    if (__OFSUB__(a2 >> 1, v21))
    {
      goto LABEL_132;
    }

    if (v38 != (a2 >> 1) - v21)
    {
      goto LABEL_133;
    }

    v22 = v75;
    v36 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v36)
    {
      goto LABEL_88;
    }

    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_87;
  }

  if (a3 < v8)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1AE9839F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 16))(a5, a6);
  v16[2] = a5;
  v16[3] = a6;
  v17 = v6;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v14 = sub_1AE983AAC(sub_1AE984A30, v16, v13);

  return v14;
}

unint64_t sub_1AE983AAC(void (*a1)(unint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v5)
  {
    v6 = 0;
    v34 = a3 & 0xFFFFFFFFFFFFFF8;
    v35 = a3 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v31 = a3;
    v32 = v5;
    v33 = a3 + 32;
    while (v35)
    {
      v8 = MEMORY[0x1B2709E60](v6, v31);
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }

LABEL_9:
      v40 = v8;
      v10 = v4;
      a1(&v39, &v40);
      if (v4)
      {
        goto LABEL_41;
      }

      v11 = v39;
      v12 = v39 >> 62;
      if (v39 >> 62)
      {
        v13 = sub_1AE9889A4();
      }

      else
      {
        v13 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v7 >> 62;
      if (v7 >> 62)
      {
        v28 = sub_1AE9889A4();
        v16 = v28 + v13;
        if (__OFADD__(v28, v13))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v7;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_40;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v14)
        {
          v17 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_1AE9889A4();
        goto LABEL_20;
      }

      if (v14)
      {
        goto LABEL_19;
      }

LABEL_20:
      v7 = sub_1AE988A64();
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v37 = v13;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v12)
      {
        v20 = sub_1AE9889A4();
        if (!v20)
        {
LABEL_4:

          if (v37 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_4;
        }
      }

      if (((v19 >> 1) - v18) < v37)
      {
        goto LABEL_45;
      }

      v21 = v17 + 8 * v18 + 32;
      if (v12)
      {
        if (v20 < 1)
        {
          goto LABEL_47;
        }

        sub_1AE984C30(&unk_1EB5E6A20, &qword_1EB5E6A18);
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6A18);
          v23 = sub_1AE96A494(v38, i, v11);
          v25 = *v24;
          (v23)(v38, 0);
          *(v21 + 8 * i) = v25;
        }
      }

      else
      {
        type metadata accessor for LPTextRange();
        swift_arrayInitWithCopy();
      }

      v4 = v10;
      if (v37 > 0)
      {
        v26 = *(v17 + 16);
        v9 = __OFADD__(v26, v37);
        v27 = v26 + v37;
        if (v9)
        {
          goto LABEL_46;
        }

        *(v17 + 16) = v27;
      }

LABEL_5:
      if (v6 == v32)
      {
        return v7;
      }
    }

    if (v6 >= *(v34 + 16))
    {
      goto LABEL_43;
    }

    v8 = *(v33 + 8 * v6);

    v9 = __OFADD__(v6++, 1);
    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v29 = a3;
    v5 = sub_1AE9889A4();
    a3 = v29;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AE983E30(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  v8 = a1;
  v9 = *(a1 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_path);
  v10 = v9 >> 62;
  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_50;
  }

  while (1)
  {
    if (!sub_1AE9889A4())
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      v12 = MEMORY[0x1B2709E60](0, v9);
      goto LABEL_10;
    }

LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AE9C6D00;
    if (v10)
    {
      v11 = sub_1AE9889A4();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v11)
    {
      goto LABEL_51;
    }

    v3 = v9 & 0xC000000000000001;
    if ((v9 & 0xC000000000000001) != 0)
    {
      goto LABEL_52;
    }

    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      swift_unknownObjectRelease();
      v18 = a2;
LABEL_28:
      sub_1AE9848C4(v9, v18, v4, v5);
      v22 = v21;
      goto LABEL_35;
    }

    v12 = *(v9 + 32);

LABEL_10:
    v5 = sub_1AE988964();
    *(v4 + 32) = v12;
    *&v47[0] = v4;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6A00);
    sub_1AE984C30(&qword_1EB5E6A08, &qword_1EB5E6A00);
    a2 = sub_1AE97E150(v47, v13);

    if (!a2)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      return result;
    }

    v2 = *(v8 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range);
    v8 = *(v8 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range + 8);
    if (v10)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        a2 = v9;
      }

      else
      {
        a2 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      result = sub_1AE9889A4();
      if (result < 0)
      {
        goto LABEL_60;
      }

      v15 = result;
      v4 = result != 0;
      if (sub_1AE9889A4() < v4)
      {
        goto LABEL_54;
      }

      if (sub_1AE9889A4() < v15)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v4 = v15 != 0;
      if (v15 < v4)
      {
        goto LABEL_54;
      }
    }

    if (v3)
    {

      if (v15 >= 2)
      {
        v16 = v4;
        do
        {
          v17 = v16 + 1;
          sub_1AE988A44();
          v16 = v17;
        }

        while (v15 != v17);
      }

      if (!v10)
      {
LABEL_25:
        v9 &= 0xFFFFFFFFFFFFFF8uLL;
        v18 = v9 + 32;
        v5 = (2 * v15) | 1;
        goto LABEL_29;
      }
    }

    else
    {

      if (!v10)
      {
        goto LABEL_25;
      }
    }

    v9 = sub_1AE988B14();
    v4 = v19;
    v5 = v20;
    if ((v20 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_29:
    a2 = v18;
    sub_1AE988B94();
    swift_unknownObjectRetain_n();
    v23 = swift_dynamicCastClass();
    if (!v23)
    {
      swift_unknownObjectRelease();
      v23 = MEMORY[0x1E69E7CC0];
    }

    v24 = *(v23 + 16);

    if (__OFSUB__(v5 >> 1, v4))
    {
      goto LABEL_56;
    }

    if (v24 != (v5 >> 1) - v4)
    {
      goto LABEL_57;
    }

    v22 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v22)
    {
      goto LABEL_36;
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_35:
    swift_unknownObjectRelease();
LABEL_36:
    type metadata accessor for LPTextRange();
    v9 = sub_1AE96B48C(v2, v8, v22);
    v46 = v6;
    v6 = v6;
    result = swift_getAtAnyKeyPath();
    if (!v45)
    {
      goto LABEL_59;
    }

    sub_1AE9744F0(&v44, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6A10);
    swift_dynamicCast();
    v3 = v42;
    a2 = v43;
    ObjectType = swift_getObjectType();
    v8 = (*(a2 + 24))(v9, ObjectType, a2);
    v4 = *(v8 + 16);
    if (!v4)
    {
      break;
    }

    v41 = v9;
    *&v47[0] = MEMORY[0x1E69E7CC0];
    v2 = v47;
    sub_1AE96AF7C(0, v4, 0);
    v10 = 0;
    v5 = *&v47[0];
    v26 = (v8 + 56);
    while (v10 < *(v8 + 16))
    {
      v27 = *(v26 - 3);
      v28 = *(v26 - 2);
      v29 = *(v26 - 1);
      v30 = *v26;
      sub_1AE988824();
      v2 = sub_1AE988814();
      sub_1AE9887E4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v6 convertRect:v42 fromCoordinateSpace:{v27, v28, v29, v30}];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      *&v47[0] = v5;
      v9 = *(v5 + 16);
      v39 = *(v5 + 24);
      a2 = v9 + 1;
      if (v9 >= v39 >> 1)
      {
        v2 = v47;
        sub_1AE96AF7C((v39 > 1), v9 + 1, 1);
        v5 = *&v47[0];
      }

      ++v10;
      *(v5 + 16) = a2;
      v40 = (v5 + 32 * v9);
      v40[4] = v32;
      v40[5] = v34;
      v40[6] = v36;
      v40[7] = v38;
      v26 += 4;
      if (v4 == v10)
      {

        return v5;
      }
    }

    __break(1u);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AE9843C0(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_path);
  v7 = v6 >> 62;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!sub_1AE9889A4())
  {
    goto LABEL_36;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AE9C6D00;
  if (v7)
  {
    v8 = sub_1AE9889A4();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
    goto LABEL_37;
  }

  v2 = v6 & 0xC000000000000001;
  v28 = v1;
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_38:
    v9 = MEMORY[0x1B2709E60](0, v6);
    goto LABEL_10;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_40;
  }

  v9 = *(v6 + 32);

LABEL_10:
  v4 = sub_1AE988964();
  *(v3 + 32) = v9;
  *&v34[0] = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6A00);
  sub_1AE984C30(&qword_1EB5E6A08, &qword_1EB5E6A00);
  v11 = sub_1AE97E150(v34, v10);

  if (!v11)
  {
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v1 = *(v5 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range);
  v5 = *(v5 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range + 8);
  if (!v7)
  {
    v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v13 != 0;
    if (v13 < v3)
    {
      goto LABEL_40;
    }

LABEL_17:
    if (v2)
    {

      if (v13 >= 2)
      {
        v14 = v3;
        do
        {
          v15 = v14 + 1;
          sub_1AE988A44();
          v14 = v15;
        }

        while (v13 != v15);
      }

      if (!v7)
      {
        goto LABEL_22;
      }
    }

    else
    {

      if (!v7)
      {
LABEL_22:
        v6 &= 0xFFFFFFFFFFFFFF8uLL;
        v16 = v6 + 32;
        v4 = (2 * v13) | 1;
        goto LABEL_26;
      }
    }

    v6 = sub_1AE988B14();
    v3 = v17;
    v4 = v18;
    if ((v18 & 1) == 0)
    {
LABEL_25:
      sub_1AE9848C4(v6, v16, v3, v4);
      v20 = v19;
      v21 = v28;
      goto LABEL_32;
    }

LABEL_26:
    v7 = v16;
    sub_1AE988B94();
    swift_unknownObjectRetain_n();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
      swift_unknownObjectRelease();
      v22 = MEMORY[0x1E69E7CC0];
    }

    v23 = *(v22 + 16);

    if (!__OFSUB__(v4 >> 1, v3))
    {
      if (v23 == (v4 >> 1) - v3)
      {
        v20 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v21 = v28;
        if (v20)
        {
          goto LABEL_33;
        }

        v20 = MEMORY[0x1E69E7CC0];
LABEL_32:
        swift_unknownObjectRelease();
LABEL_33:
        type metadata accessor for LPTextRange();
        v24 = sub_1AE96B48C(v1, v5, v20);
        v33 = v21;
        v25 = v21;
        result = swift_getAtAnyKeyPath();
        if (v32)
        {

          sub_1AE9744F0(&v31, v34);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6A10);
          swift_dynamicCast();
          ObjectType = swift_getObjectType();
          v27 = (*(v30 + 32))(v24, ObjectType);

          return v27;
        }

        goto LABEL_45;
      }

      goto LABEL_43;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    swift_unknownObjectRelease();
    v16 = v7;
    goto LABEL_25;
  }

  result = sub_1AE9889A4();
  if ((result & 0x8000000000000000) == 0)
  {
    v13 = result;
    v3 = result != 0;
    if (sub_1AE9889A4() >= v3)
    {
      if (sub_1AE9889A4() < v13)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      goto LABEL_17;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1AE9847D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1AE9889A4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1AE9889A4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1AE96A274(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1AE984C84(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1AE9848C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1AE988964();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t (*sub_1AE9849A8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2709E60](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1AE984A28;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE984A30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[4];
  v15 = v2[6];
  v16 = v2[5];
  v14 = v2[7];
  v5 = v2[8];
  v6 = *a1;
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = v4;
  v7 = v4;
  swift_getAtAnyKeyPath();

  if (!v18)
  {
    sub_1AE975468(v17);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6A10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v8 = v19;
  v9 = v20;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE9C6D00;
  *(inited + 32) = v6;
  v19 = v5;

  sub_1AE9847D4(inited);
  v12 = (*(v9 + 16))(v16, v15, v14, v5, ObjectType, v9);

LABEL_8:

  *a2 = v12;
  return result;
}

uint64_t sub_1AE984C30(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1AE984C84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AE9889A4();
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
      result = sub_1AE9889A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AE984C30(&qword_1EB5E6A08, &qword_1EB5E6A00);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6A00);
            v9 = sub_1AE9849A8(v13, i, a3);
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
        sub_1AE988964();
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

id sub_1AE984E24()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EB5E7D70 = result;
  return result;
}

uint64_t sub_1AE9855E8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1AE988634();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_1EB5E7D68 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB5E7D70;
  return sub_1AE988624();
}

uint64_t sub_1AE9856B0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1AE988634();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1AE985728@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1AE988634();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void stringForKey_cold_1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_fault_impl(&dword_1AE886000, a4, OS_LOG_TYPE_FAULT, "LPLinkMetadata: stringForKey got a %{public}@ for key %{public}@ where it was expecting a NSString.", a3, 0x16u);
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

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
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

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}