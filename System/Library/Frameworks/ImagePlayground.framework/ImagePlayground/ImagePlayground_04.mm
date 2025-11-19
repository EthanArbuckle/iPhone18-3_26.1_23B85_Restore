Swift::Void __swiftcall UIViewController.gp_addChildViewController(_:)(UIViewController *a1)
{
  [(UIViewController *)a1 willMoveToParentViewController:v1];
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3;
  v5 = [(UIViewController *)a1 view];
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  [v4 addSubview_];

  v7 = [(UIViewController *)a1 view];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(UIViewController *)a1 view];
  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9;
  v11 = [(UIView *)v9 topAnchor];

  v12 = [v1 view];
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [(NSLayoutYAxisAnchor *)v11 constraintEqualToAnchor:v14];
  [v15 setActive_];

  v16 = [(UIViewController *)a1 view];
  if (!v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v16;
  v18 = [(UIView *)v16 bottomAnchor];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  v21 = [v19 bottomAnchor];

  v22 = [(NSLayoutYAxisAnchor *)v18 constraintEqualToAnchor:v21];
  [v22 setActive_];

  v23 = [(UIViewController *)a1 view];
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v23;
  v25 = [(UIView *)v23 leadingAnchor];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [(NSLayoutXAxisAnchor *)v25 constraintEqualToAnchor:v28];
  [v29 setActive_];

  v30 = [(UIViewController *)a1 view];
  if (!v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = v30;
  v32 = [(UIView *)v30 trailingAnchor];

  v33 = [v1 view];
  if (!v33)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = [v33 trailingAnchor];

  v36 = [(NSLayoutXAxisAnchor *)v32 constraintEqualToAnchor:v35];
  [v36 setActive_];

  [(UIViewController *)a1 didMoveToParentViewController:v1];
}

void sub_1D2A7C358(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UIViewController.gp_addChildViewController(_:)(v4);
}

uint64_t GPGenerationRecipeData.underlyingData.getter()
{
  v1 = *(v0 + OBJC_IVAR___GPGenerationRecipeData_underlyingData);
  sub_1D2A479B4(v1, *(v0 + OBJC_IVAR___GPGenerationRecipeData_underlyingData + 8));
  return v1;
}

id GPGenerationRecipeData.init(underlyingData:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1D2AC5F14();
  v6 = [v4 initWithUnderlyingData_];

  sub_1D2A47944(a1, a2);
  return v6;
}

id GPGenerationRecipeData.init(underlyingData:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___GPGenerationRecipeData_underlyingData);
  *v3 = a1;
  v3[1] = a2;
  v5.super_class = GPGenerationRecipeData;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::OpaquePointer_optional __swiftcall GPGenerationRecipeData.getRecipeInfo()()
{
  v1 = [v0 underlyingData];
  v2 = sub_1D2AC5F24();
  v4 = v3;

  LOBYTE(v42[0]) = 7;
  static GenerationRecipeMigrator.decodeAndUpgradeIfNeeded(data:version:)(v42, &v44);
  sub_1D2A47944(v2, v4);
  v5 = v44;
  v6 = *(v44 + 16);
  if (v6)
  {
    v39 = 0uLL;
    v38 = 0;
    v40 = 0;
    v41 = 0;
    v7 = 0;
    v8 = v6 - 1;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = 32;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v12 = *(v5 + v10 + 16);
      v44 = *(v5 + v10);
      v13 = *(v5 + v10 + 32);
      v14 = *(v5 + v10 + 48);
      v15 = *(v5 + v10 + 64);
      v49 = *(v5 + v10 + 80);
      v47 = v14;
      v48 = v15;
      v45 = v12;
      v46 = v13;
      v16 = v44;
      v17 = v15 >> 61;
      if ((v15 >> 61) > 3)
      {
        if (v17 == 4)
        {
          v23 = *(&v45 + 1);
          v38 = v45;
          v25 = *(&v46 + 1);
          v24 = v46;

          sub_1D2A479A0(v24, v25);

          v40 = *(&v16 + 1);
          v41 = v23;
          v7 = v16;
        }

        else
        {
          if (v17 != 5)
          {
            goto LABEL_22;
          }

          swift_bridgeObjectRetain_n();

          v39 = v16;
        }
      }

      else
      {
        if (v17)
        {
          if (v17 != 1)
          {
            goto LABEL_22;
          }

          sub_1D2A72BAC(&v44, v42);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D2A44BA0(0, *(v9 + 2) + 1, 1, v9);
          }

          v19 = *(v9 + 2);
          v18 = *(v9 + 3);
          if (v19 >= v18 >> 1)
          {
            v9 = sub_1D2A44BA0((v18 > 1), v19 + 1, 1, v9);
          }

          *(v9 + 2) = v19 + 1;
          v20 = &v9[16 * v19];
        }

        else
        {
          sub_1D2A72BAC(&v44, v42);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1D2A44BA0(0, *(v11 + 2) + 1, 1, v11);
          }

          v22 = *(v11 + 2);
          v21 = *(v11 + 3);
          if (v22 >= v21 >> 1)
          {
            v11 = sub_1D2A44BA0((v21 > 1), v22 + 1, 1, v11);
          }

          *(v11 + 2) = v22 + 1;
          v20 = &v11[16 * v22];
        }

        *(v20 + 2) = v16;
      }

      sub_1D2A72BE4(&v44);
LABEL_22:
      if (!v8)
      {

        v26 = v38;
        v27 = *(&v39 + 1);
        goto LABEL_26;
      }

      --v8;
      v10 += 88;
    }
  }

  *&v39 = 0;
  v27 = 0;
  v26 = 0;
  v40 = 0;
  v41 = 0;
  v7 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
LABEL_26:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E50, &qword_1D2ACA6C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2ACAB40;
  *(inited + 32) = 0x74706D6F7270;
  *(inited + 40) = 0xE600000000000000;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703F30, &qword_1D2ACABA0);
  *(inited + 48) = v9;
  *(inited + 72) = v29;
  *(inited + 80) = 0x73746365666665;
  *(inited + 120) = v29;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v11;
  v30 = sub_1D2A48A1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E58, &qword_1D2ACA6D0);
  swift_arrayDestroy();
  v31 = MEMORY[0x1E69E6158];
  if (v27)
  {
    *(&v45 + 1) = MEMORY[0x1E69E6158];
    *&v44 = v39;
    *(&v44 + 1) = v27;
    sub_1D2A206F8(&v44, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v30;
    sub_1D2A7D62C(v42, 0x656C797473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v30 = v43;
  }

  if (v40)
  {
    *(&v45 + 1) = v31;
    *&v44 = v7;
    *(&v44 + 1) = v40;
    sub_1D2A206F8(&v44, v42);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v43 = v30;
    sub_1D2A7D62C(v42, 0x44496E6F73726570, 0xE800000000000000, v33);
    v30 = v43;
  }

  if (v41)
  {
    *(&v45 + 1) = v31;
    *&v44 = v26;
    *(&v44 + 1) = v41;
    sub_1D2A206F8(&v44, v42);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v43 = v30;
    sub_1D2A7D62C(v42, 0x61466E6F73726570, 0xEC00000044496563, v34);
    v30 = v43;
  }

  v35 = sub_1D2A7CBC8(v30);

  v37 = v35;
  result.value._rawValue = v37;
  result.is_nil = v36;
  return result;
}

ImagePlayground::GenerationRecipe_V7 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GPGenerationRecipeData.toRecipe()()
{
  v2 = v1;
  v3 = v0;
  v4 = [v2 underlyingData];
  v5 = sub_1D2AC5F24();
  v7 = v6;

  v9 = 7;
  static GenerationRecipeMigrator.decodeAndUpgradeIfNeeded(data:version:)(&v9, v3);
  return sub_1D2A47944(v5, v7);
}

uint64_t sub_1D2A7CBC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E88, &qword_1D2ACA750);
    v2 = sub_1D2AC71B4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1D2A20708(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1D2A206F8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1D2A206F8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1D2A206F8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1D2AC7044();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1D2A206F8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
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

void __swiftcall GPGenerationRecipeData.getDrawOnImageRecipe()(GPDrawOnImageRecipe_optional *__return_ptr retstr)
{
  v2 = [v1 underlyingData];
  v3 = sub_1D2AC5F24();
  v5 = v4;

  LOBYTE(v24[0]) = 7;
  static GenerationRecipeMigrator.decodeAndUpgradeIfNeeded(data:version:)(v24, &v28);
  sub_1D2A47944(v3, v5);
  v6 = v28;
  v7 = *(v28 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v7 - 1;
    for (i = 32; ; i += 88)
    {
      v11 = *(v6 + i + 32);
      v12 = *(v6 + i + 48);
      v13 = *(v6 + i + 80);
      v32 = *(v6 + i + 64);
      v14 = *(v6 + i + 16);
      v28 = *(v6 + i);
      v29 = v14;
      v33 = v13;
      v30 = v11;
      v31 = v12;
      if (v32 >> 61 == 2)
      {
        v16 = *(&v32 + 1);
        v15 = v33;
        v17 = v32 & 0x1FFFFFFFFFFFFFFFLL;
        type metadata accessor for GPDrawOnImageRecipe();
        v20[1] = v29;
        v20[0] = v28;
        v20[3] = v31;
        v20[2] = v30;
        v24[2] = v30;
        v24[3] = v31;
        v26 = *(&v32 + 1);
        v21 = v17;
        v22 = v16;
        v23 = v15;
        v24[0] = v28;
        v24[1] = v29;
        v27 = v33;
        v25 = v32 & 0x1FFFFFFFFFFFFFFFLL;
        sub_1D2A72BAC(&v28, v19);
        sub_1D2A724B4(v24, v19);
        v18 = GPDrawOnImageRecipe.init(codableDrawingRecipe:)(v20);

        sub_1D2A72BE4(&v28);
        v8 = v18;
      }

      if (!v9)
      {
        break;
      }

      --v9;
    }
  }

  else
  {
  }
}

id GPGenerationRecipeData.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id GPGenerationRecipeData.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = sub_1D2AC5E44();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1D2AC5E34();
  sub_1D2A7D98C();
  v8 = sub_1D2AC5E24();
  v10 = v9;

  if (!v2)
  {
    v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v12 = sub_1D2AC5F14();
    v3 = [v11 initWithUnderlyingData_];
    sub_1D2A47944(v8, v10);
  }

  return v3;
}

uint64_t sub_1D2A7D374(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EB8, &qword_1D2ACA780);
  v36 = a2;
  result = sub_1D2AC71A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1D2A206F8(v25, v37);
      }

      else
      {
        sub_1D2A20708(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1D2AC7444();
      sub_1D2AC6C74();
      result = sub_1D2AC7484();
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
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1D2A206F8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_1D2A7D62C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D2AAF858(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D2A7D7E8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D2A7D374(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D2AAF858(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1D2AC7394();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_1D2A206F8(a1, v23);
  }

  else
  {
    sub_1D2A7D77C(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1D2A7D77C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D2A206F8(a4, (a5[7] + 32 * a1));
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

void *sub_1D2A7D7E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EB8, &qword_1D2ACA780);
  v2 = *v0;
  v3 = sub_1D2AC7194();
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
        sub_1D2A20708(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D2A206F8(v25, (*(v4 + 56) + v22));
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

unint64_t sub_1D2A7D98C()
{
  result = qword_1EC704CA8;
  if (!qword_1EC704CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704CA8);
  }

  return result;
}

unint64_t type metadata accessor for GPGenerationRecipeData()
{
  result = qword_1EC704CB0;
  if (!qword_1EC704CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC704CB0);
  }

  return result;
}

CVBufferRef_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGImageRef.toPixelBuffer(ciContext:)(CIContext ciContext)
{
  v2 = v1;
  isa = ciContext.super.isa;
  v16[7] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E98, &qword_1D2ACA760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2AC95B0;
  v5 = *MEMORY[0x1E69660D8];
  *(inited + 32) = *MEMORY[0x1E69660D8];
  v6 = v5;
  *(inited + 40) = sub_1D2A484B0(MEMORY[0x1E69E7CC0]);
  sub_1D2A48C2C(inited);
  swift_setDeallocating();
  sub_1D2A7DCBC(inited + 32);
  v7 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  v16[0] = 0;
  Width = CGImageGetWidth(v2);
  Height = CGImageGetHeight(v2);
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EA8, &qword_1D2ACA770);
  sub_1D2A7DD24();
  v10 = sub_1D2AC6B94();

  v11 = CVPixelBufferCreate(0, Width, Height, 0x42475241u, v10, v16);

  v12 = v16[0];
  if (!v16[0] || v11)
  {
    sub_1D2A490FC();
    swift_allocError();
    *v13 = v11;
    *(v13 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    [(objc_class *)isa render:v7 toCVPixelBuffer:v16[0]];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

id static CGImageRef.create(with:ciContext:)(__CVBuffer *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
  Width = CVPixelBufferGetWidth(a1);
  v6 = [a2 createCGImage:v4 fromRect:{0.0, 0.0, Width, CVPixelBufferGetHeight(a1)}];

  return v6;
}

uint64_t sub_1D2A7DCBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EA0, &qword_1D2ACA768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2A7DD24()
{
  result = qword_1EC7037D0;
  if (!qword_1EC7037D0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7037D0);
  }

  return result;
}

uint64_t sub_1D2A7DD7C()
{
  sub_1D2AC7444();
  sub_1D2AC6C74();

  return sub_1D2AC7484();
}

uint64_t GenerationRecipe_V7.FormatVersion.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D2AC71D4();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D2A7DE68()
{
  v1 = *v0 + 3153920;
  sub_1D2AC6C74();
}

uint64_t sub_1D2A7DEAC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return GenerationRecipe_V7.FormatVersion.init(rawValue:)(a1);
}

uint64_t static GenerationRecipe_V7.stringIndexRangeToIntRange(range:in:)()
{
  v0 = sub_1D2AC6CE4();
  sub_1D2AC6CE4();
  return v0;
}

uint64_t static GenerationRecipe_V7.intRangeToStringIndexRange(range:in:)()
{
  result = sub_1D2AC6C84();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v1 = sub_1D2AC6CA4();
    result = sub_1D2AC6C84();
    if (!__OFSUB__(result, 1))
    {
      sub_1D2AC6CA4();
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t GenerationRecipe_V7.debugDescription.getter()
{
  v109 = sub_1D2AC5F94();
  v1 = *(v109 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v104 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
  v92 = *(v8 - 8);
  v9 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = *v0;
  v101 = *(*v0 + 16);
  if (v101)
  {
    v12 = 0;
    v100 = v11 + 32;
    v97 = 0x80000001D2ADF800;
    v96 = 0x80000001D2ADF820;
    v95 = 0x80000001D2ADF840;
    v94 = 0x80000001D2ADF860;
    v107 = (v1 + 48);
    v103 = (v1 + 32);
    v102 = (v1 + 8);
    v93 = 0x80000001D2ADF880;
    v13 = MEMORY[0x1E69E7CC0];
    v99 = v11;
    v105 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v14 = (v100 + 88 * v12);
      v15 = v14[1];
      v112 = *v14;
      v113 = v15;
      v16 = *(v14 + 10);
      v17 = v14[4];
      v18 = v14[2];
      v115 = v14[3];
      v116 = v17;
      v117 = v16;
      v114 = v18;
      v20 = *(&v112 + 1);
      v19 = v112;
      v21 = v113;
      v22 = *(&v113 + 1) | ((*(&v113 + 5) | (BYTE7(v113) << 16)) << 32);
      v23 = *(&v113 + 1);
      v24 = *(&v18 + 1);
      v25 = v17 >> 61;
      v106 = v12;
      if ((v17 >> 61) > 2)
      {
        if (v25 == 3)
        {
          v108 = v114;
          v110[0] = 0;
          v110[1] = 0xE000000000000000;
          v39 = v113;

          sub_1D2A479A0(v39, v23);
          sub_1D2AC7084();

          v110[0] = 0xD000000000000013;
          v110[1] = v96;
          MEMORY[0x1D38A7100](v19, v20);
          v40 = v110[0];
          v41 = v110[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1D2A44BA0(0, *(v13 + 2) + 1, 1, v13);
          }

          v43 = *(v13 + 2);
          v42 = *(v13 + 3);
          if (v43 >= v42 >> 1)
          {
            v13 = sub_1D2A44BA0((v42 > 1), v43 + 1, 1, v13);
          }

          *(v13 + 2) = v43 + 1;
          v44 = &v13[16 * v43];
          *(v44 + 4) = v40;
          *(v44 + 5) = v41;
          v110[0] = 0;
          v110[1] = 0xE000000000000000;
          sub_1D2AC7084();

          v110[0] = 0xD000000000000010;
          v110[1] = v95;
          if (v108)
          {
            v36 = 7562585;
          }

          else
          {
            v36 = 28494;
          }

          if (v108)
          {
            v37 = 0xE300000000000000;
          }

          else
          {
            v37 = 0xE200000000000000;
          }

          goto LABEL_40;
        }

        if (v25 == 4)
        {
          strcpy(v111, "Person ID: ");
          HIDWORD(v111[1]) = -352321536;
          sub_1D2A72BAC(&v112, v110);
          MEMORY[0x1D38A7100](v19, v20);
          v27 = v111[1];
          v108 = v111[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1D2A44BA0(0, *(v13 + 2) + 1, 1, v13);
          }

          v29 = *(v13 + 2);
          v28 = *(v13 + 3);
          if (v29 >= v28 >> 1)
          {
            v13 = sub_1D2A44BA0((v28 > 1), v29 + 1, 1, v13);
          }

          *(v13 + 2) = v29 + 1;
          v30 = &v13[16 * v29];
          *(v30 + 4) = v108;
          *(v30 + 5) = v27;
          if (v23)
          {
            strcpy(v110, "  - Face ID: ");
            HIWORD(v110[1]) = -4864;
            MEMORY[0x1D38A7100](v21 | (v22 << 8), v23);
            v31 = v110[0];
            v32 = v110[1];
            v34 = *(v13 + 2);
            v33 = *(v13 + 3);
            if (v34 >= v33 >> 1)
            {
              v13 = sub_1D2A44BA0((v33 > 1), v34 + 1, 1, v13);
            }

            *(v13 + 2) = v34 + 1;
            v35 = &v13[16 * v34];
            *(v35 + 4) = v31;
            *(v35 + 5) = v32;
          }

          v110[0] = 0;
          v110[1] = 0xE000000000000000;
          sub_1D2AC7084();

          v110[0] = 0xD000000000000014;
          v110[1] = v97;
          if (v24 >> 60 == 15)
          {
            v36 = 28494;
          }

          else
          {
            v36 = 7562585;
          }

          if (v24 >> 60 == 15)
          {
            v37 = 0xE200000000000000;
          }

          else
          {
            v37 = 0xE300000000000000;
          }

LABEL_40:
          MEMORY[0x1D38A7100](v36, v37);
          goto LABEL_58;
        }

        v108 = v114;
        v50 = BYTE7(v114);
        v51 = *(&v114 + 5);
        v98 = *(&v114 + 1);
        strcpy(v111, "Style: ");
        v111[1] = 0xE700000000000000;
        sub_1D2A72BAC(&v112, v110);
        sub_1D2A72BAC(&v112, v110);

        MEMORY[0x1D38A7100](v19, v20);

        MEMORY[0x1D38A7100](10272, 0xE200000000000000);
        if (v21)
        {
          v52 = 0x6C616E7265747845;
        }

        else
        {
          v52 = 5063745;
        }

        if (v21)
        {
          v53 = 0xE800000000000000;
        }

        else
        {
          v53 = 0xE300000000000000;
        }

        MEMORY[0x1D38A7100](v52, v53);

        MEMORY[0x1D38A7100](41, 0xE100000000000000);
        v54 = v111[0];
        v55 = v111[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1D2A44BA0(0, *(v13 + 2) + 1, 1, v13);
        }

        v57 = *(v13 + 2);
        v56 = *(v13 + 3);
        if (v57 >= v56 >> 1)
        {
          v13 = sub_1D2A44BA0((v56 > 1), v57 + 1, 1, v13);
        }

        v58 = (v98 << 8) | ((v51 | (v50 << 16)) << 40);
        *(v13 + 2) = v57 + 1;
        v59 = &v13[16 * v57];
        *(v59 + 4) = v54;
        *(v59 + 5) = v55;
        v60 = v58 | v108;
        if (v58 | v108)
        {

          sub_1D2A72BE4(&v112);
          strcpy(v110, "Model: ");
          v110[1] = 0xE700000000000000;
          MEMORY[0x1D38A7100](v23, v60);
LABEL_58:

          v61 = v110[0];
          v62 = v110[1];
LABEL_62:
          v64 = *(v13 + 2);
          v63 = *(v13 + 3);
          if (v64 >= v63 >> 1)
          {
            v13 = sub_1D2A44BA0((v63 > 1), v64 + 1, 1, v13);
          }

          *(v13 + 2) = v64 + 1;
          v65 = &v13[16 * v64];
          *(v65 + 4) = v61;
          *(v65 + 5) = v62;
          goto LABEL_65;
        }

        sub_1D2A72BE4(&v112);
      }

      else
      {
        if (!v25)
        {
          v38 = HIBYTE(*(&v112 + 1)) & 0xFLL;
          if ((*(&v112 + 1) & 0x2000000000000000) == 0)
          {
            v38 = v112 & 0xFFFFFFFFFFFFLL;
          }

          if (v38)
          {
            sub_1D2A72BAC(&v112, v110);
          }

          else
          {
            v19 = 0x70207974706D4528;
            v20 = 0xEE002974706D6F72;
          }

          v111[0] = 0;
          v111[1] = 0xE000000000000000;
          sub_1D2A72BAC(&v112, v110);
          sub_1D2AC7084();

          v110[0] = 0xD000000000000010;
          v110[1] = v93;
          MEMORY[0x1D38A7100](v19, v20);

          v61 = v110[0];
          v62 = v110[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1D2A44BA0(0, *(v13 + 2) + 1, 1, v13);
          }

          goto LABEL_62;
        }

        if (v25 == 1)
        {
          v26 = HIBYTE(*(&v112 + 1)) & 0xFLL;
          if ((*(&v112 + 1) & 0x2000000000000000) == 0)
          {
            v26 = v112 & 0xFFFFFFFFFFFFLL;
          }

          if (v26)
          {
          }

          else
          {
            v19 = 0x70207974706D4528;
            v20 = 0xEE002974706D6F72;
          }

          strcpy(v111, "Text Prompt: ");
          HIWORD(v111[1]) = -4864;
          sub_1D2A72BAC(&v112, v110);
          MEMORY[0x1D38A7100](v19, v20);

          v67 = v111[0];
          v68 = v111[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1D2A44BA0(0, *(v13 + 2) + 1, 1, v13);
          }

          v70 = *(v13 + 2);
          v69 = *(v13 + 3);
          if (v70 >= v69 >> 1)
          {
            v13 = sub_1D2A44BA0((v69 > 1), v70 + 1, 1, v13);
          }

          v71 = v21 | (v22 << 8);
          *(v13 + 2) = v70 + 1;
          v72 = &v13[16 * v70];
          *(v72 + 4) = v67;
          *(v72 + 5) = v68;
          v73 = *(v71 + 0x10);
          if (v73)
          {
            v74 = v71 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
            v108 = *(v92 + 72);
            v75 = v105;
            do
            {
              sub_1D2A7EE30(v74, v75, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
              sub_1D2A7EE30(v75 + *(v8 + 20), v7, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
              v76 = (*v107)(v7, 2, v109);
              if (v76)
              {
                if (v76 == 1)
                {
                  v77 = 0x636972656E6547;
                }

                else
                {
                  v77 = 0x6E776F6E6B6E55;
                }

                v78 = 0xE700000000000000;
              }

              else
              {
                v79 = v8;
                v80 = v7;
                v81 = v104;
                v82 = v109;
                (*v103)(v104, v80, v109);
                strcpy(v110, "Named (");
                v110[1] = 0xE700000000000000;
                v83 = sub_1D2AC5F64();
                MEMORY[0x1D38A7100](v83);

                MEMORY[0x1D38A7100](41, 0xE100000000000000);
                v77 = v110[0];
                v78 = v110[1];
                v84 = v81;
                v7 = v80;
                v8 = v79;
                v75 = v105;
                (*v102)(v84, v82);
              }

              v110[0] = 0;
              v110[1] = 0xE000000000000000;
              sub_1D2AC7084();

              strcpy(v110, "  - Entity: ");
              BYTE5(v110[1]) = 0;
              HIWORD(v110[1]) = -5120;
              MEMORY[0x1D38A7100](*v75, v75[1]);
              MEMORY[0x1D38A7100](10272, 0xE200000000000000);
              MEMORY[0x1D38A7100](v77, v78);

              MEMORY[0x1D38A7100](41, 0xE100000000000000);
              v85 = v110[0];
              v86 = v110[1];
              v88 = *(v13 + 2);
              v87 = *(v13 + 3);
              if (v88 >= v87 >> 1)
              {
                v13 = sub_1D2A44BA0((v87 > 1), v88 + 1, 1, v13);
              }

              sub_1D2A7EE98(v75);
              *(v13 + 2) = v88 + 1;
              v89 = &v13[16 * v88];
              *(v89 + 4) = v85;
              *(v89 + 5) = v86;
              v74 += v108;
              --v73;
            }

            while (v73);
          }
        }

        else
        {
          v45 = v113;
          v46 = v114;
          sub_1D2A479A0(v112, *(&v112 + 1));
          sub_1D2A479A0(v45, v23);
          sub_1D2A479A0(v46, v24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1D2A44BA0(0, *(v13 + 2) + 1, 1, v13);
          }

          v48 = *(v13 + 2);
          v47 = *(v13 + 3);
          if (v48 >= v47 >> 1)
          {
            v13 = sub_1D2A44BA0((v47 > 1), v48 + 1, 1, v13);
          }

          *(v13 + 2) = v48 + 1;
          v49 = &v13[16 * v48];
          *(v49 + 4) = 0xD000000000000010;
          *(v49 + 5) = v94;
        }
      }

LABEL_65:
      v12 = v106 + 1;
      result = sub_1D2A72BE4(&v112);
      if (v12 == v101)
      {
        goto LABEL_87;
      }

      if (v12 >= *(v99 + 16))
      {
        __break(1u);
        return result;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_87:
  if (*(v13 + 2))
  {
    *&v112 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703F30, &qword_1D2ACABA0);
    sub_1D2A4B6E8();
    v90 = sub_1D2AC6BB4();
  }

  else
  {

    return 0xD000000000000014;
  }

  return v90;
}

uint64_t sub_1D2A7EE30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A7EE98(uint64_t a1)
{
  v2 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2A7EEF8()
{
  result = qword_1EC704CB8;
  if (!qword_1EC704CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704CB8);
  }

  return result;
}

uint64_t _s14descr1F4DF9889O13FormatVersionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1F4DF9889O13FormatVersionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

CGImageRef static CGImageRef.gp_CGImageFromPNGRepresentationData(_:)()
{
  v0 = sub_1D2AC5F14();
  v1 = CGDataProviderCreateWithCFData(v0);

  if (v1)
  {
    v2 = CGImageSourceCreateWithDataProvider(v1, 0);
    if (v2)
    {
      v3 = v2;
      PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v2);
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, PrimaryImageIndex, 0);

      return ImageAtIndex;
    }
  }

  return 0;
}

CFMutableDataRef CGImageRef.gp_PNGRepresentationData.getter()
{
  v1 = v0;
  v2 = sub_1D2AC6314();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CFDataCreateMutable(0, 0);
  if (result)
  {
    v8 = result;
    sub_1D2AC6304();
    sub_1D2AC62F4();
    (*(v3 + 8))(v6, v2);
    v9 = sub_1D2AC6BF4();

    v10 = CGImageDestinationCreateWithData(v8, v9, 1uLL, 0);

    if (v10)
    {
      CGImageDestinationAddImage(v10, v1, 0);
      if (CGImageDestinationFinalize(v10))
      {
        v11 = v8;
        v12 = sub_1D2AC5F24();

        return v12;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t GenerationRecipe_V6.Prompt.Entity.init(text:kind:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity(0);
  result = sub_1D2A7F334(a3, a6 + *(v10 + 20));
  v12 = (a6 + *(v10 + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

uint64_t sub_1D2A7F334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

ImagePlayground::GenerationRecipe_V6::Prompt __swiftcall GenerationRecipe_V6.Prompt.init(value:entities:)(Swift::String value, Swift::OpaquePointer entities)
{
  *v2 = value;
  *(v2 + 16) = entities;
  result.value = value;
  result.entities = entities;
  return result;
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.init(baseImageData:sketchImageData:sketchMaskData:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:sanitizationCategory:drawOnImageAssignmentOptions:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char *a12, uint64_t a13, uint64_t a14)
{
  v37 = a7;
  v32 = a4;
  v35 = a14;
  v36 = a6;
  v33 = a13;
  v34 = a5;
  v21 = sub_1D2AC5F94();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a8;
  v27 = *a12;
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  (*(v22 + 8))(v25, v21);

  *a9 = a1;
  *(a9 + 8) = a2;
  v29 = v32;
  *(a9 + 16) = a3;
  *(a9 + 24) = v29;
  v30 = v36;
  *(a9 + 32) = v34;
  *(a9 + 40) = v30;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = v37;
  *(a9 + 65) = v26;
  *(a9 + 66) = v27;
  v31 = v35;
  *(a9 + 72) = v33;
  *(a9 + 80) = v31;
  return result;
}

uint64_t GenerationRecipe_V6.ImportedImage.init(id:imageData:hasPerson:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  result = sub_1D2A47930(0, 0xF000000000000000);
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t GenerationRecipe_V6.PersonData.init(personID:faceID:faceImageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  result = sub_1D2A47930(0, 0xF000000000000000);
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

ImagePlayground::GenerationRecipe_V6 __swiftcall GenerationRecipe_V6.init(ingredients:seed:)(Swift::OpaquePointer ingredients, Swift::Int_optional seed)
{
  *v2 = ingredients;
  *(v2 + 8) = seed.value;
  *(v2 + 16) = seed.is_nil;
  result.seed = seed;
  result.ingredients = ingredients;
  return result;
}

uint64_t GenerationRecipe_V6.Prompt.Entity.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenerationRecipe_V6.Prompt.Entity.range.getter()
{
  v1 = (v0 + *(type metadata accessor for GenerationRecipe_V6.Prompt.Entity(0) + 24));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_1D2A7F680(uint64_t a1)
{
  v2 = sub_1D2A86F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A7F6BC(uint64_t a1)
{
  v2 = sub_1D2A86F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A7F6F8(uint64_t a1)
{
  v2 = sub_1D2A8701C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A7F734(uint64_t a1)
{
  v2 = sub_1D2A8701C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A7F770(uint64_t a1)
{
  v2 = sub_1D2A86F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A7F7AC(uint64_t a1)
{
  v2 = sub_1D2A86F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A7F7E8(uint64_t a1)
{
  v2 = sub_1D2A86FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A7F824(uint64_t a1)
{
  v2 = sub_1D2A86FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.Prompt.Entity.Kind.encode(to:)(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704CC0, &qword_1D2ACE820);
  v36 = *(v38 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - v3;
  v4 = sub_1D2AC5F94();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704CC8, &qword_1D2ACE828);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704CD0, &qword_1D2ACE830);
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704CD8, &qword_1D2ACE838);
  v19 = *(v42 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v22 = &v32 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A86F20();
  v24 = v40;
  sub_1D2AC74A4();
  sub_1D2A8710C(v41, v18, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
  v25 = (*(v24 + 48))(v18, 2, v4);
  if (v25)
  {
    if (v25 == 1)
    {
      v43 = 0;
      sub_1D2A8701C();
      v26 = v42;
      sub_1D2AC7294();
      (*(v32 + 8))(v14, v33);
    }

    else
    {
      v44 = 1;
      sub_1D2A86FC8();
      v26 = v42;
      sub_1D2AC7294();
      (*(v34 + 8))(v10, v35);
    }

    return (*(v19 + 8))(v22, v26);
  }

  else
  {
    v27 = v36;
    (*(v24 + 32))(v39, v18, v4);
    v45 = 2;
    sub_1D2A86F74();
    v28 = v37;
    v29 = v42;
    sub_1D2AC7294();
    sub_1D2A87070(&qword_1EC704648, MEMORY[0x1E69695A8]);
    v30 = v38;
    sub_1D2AC7304();
    (*(v27 + 8))(v28, v30);
    (*(v24 + 8))(v39, v4);
    return (*(v19 + 8))(v22, v29);
  }
}

uint64_t GenerationRecipe_V6.Prompt.Entity.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D00, &qword_1D2ACE840);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v53 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D08, &qword_1D2ACE848);
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v62 = &v53 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D10, &qword_1D2ACE850);
  v61 = *(v56 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D18, &qword_1D2ACE858);
  v64 = *(v12 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D2A86F20();
  v25 = v65;
  sub_1D2AC7494();
  if (!v25)
  {
    v26 = v16;
    v27 = v61;
    v28 = v62;
    v53 = v20;
    v54 = v22;
    v29 = v63;
    v65 = 0;
    v30 = sub_1D2AC7284();
    v31 = (2 * *(v30 + 16)) | 1;
    v67 = v30;
    v68 = v30 + 32;
    v69 = 0;
    v70 = v31;
    v32 = sub_1D2A7615C();
    v33 = v15;
    if (v32 == 3 || v69 != v70 >> 1)
    {
      v38 = sub_1D2AC70B4();
      swift_allocError();
      v40 = v39;
      v41 = v12;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
      *v40 = v26;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
      (*(v64 + 8))(v33, v41);
    }

    else
    {
      if (v32)
      {
        if (v32 == 1)
        {
          v71 = 1;
          sub_1D2A86FC8();
          v34 = v65;
          sub_1D2AC71E4();
          v35 = v64;
          if (!v34)
          {
            (*(v55 + 8))(v28, v57);
            (*(v35 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v36 = sub_1D2AC5F94();
            v37 = v54;
            (*(*(v36 - 8) + 56))(v54, 2, 2, v36);
LABEL_17:
            v52 = v60;
            goto LABEL_18;
          }
        }

        else
        {
          v71 = 2;
          sub_1D2A86F74();
          v45 = v29;
          v46 = v65;
          sub_1D2AC71E4();
          v47 = v60;
          v35 = v64;
          if (!v46)
          {
            v48 = sub_1D2AC5F94();
            sub_1D2A87070(&qword_1EC704688, MEMORY[0x1E69695A8]);
            v49 = v53;
            v50 = v58;
            sub_1D2AC7264();
            (*(v59 + 8))(v45, v50);
            (*(v35 + 8))(v33, v12);
            swift_unknownObjectRelease();
            (*(*(v48 - 8) + 56))(v49, 0, 2, v48);
            v37 = v54;
            sub_1D2A7F334(v49, v54);
            v52 = v47;
LABEL_18:
            sub_1D2A7F334(v37, v52);
            return __swift_destroy_boxed_opaque_existential_0(v66);
          }
        }
      }

      else
      {
        v71 = 0;
        sub_1D2A8701C();
        v44 = v65;
        sub_1D2AC71E4();
        if (!v44)
        {
          (*(v27 + 8))(v11, v56);
          (*(v64 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v51 = sub_1D2AC5F94();
          v37 = v54;
          (*(*(v51 - 8) + 56))(v54, 1, 2, v51);
          goto LABEL_17;
        }

        v35 = v64;
      }

      (*(v35 + 8))(v33, v12);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v66);
}

BOOL static GenerationRecipe_V6.Prompt.Entity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704C08, &qword_1D2ACE610);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  if (*a1 == *a2 && a1[1] == a2[1] || (v17 = sub_1D2AC7354(), result = 0, (v17 & 1) != 0))
  {
    v33 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity(0);
    v19 = *(v33 + 20);
    v20 = *(v13 + 48);
    sub_1D2A8710C(a1 + v19, v16, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
    sub_1D2A8710C(a2 + v19, &v16[v20], type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
    v21 = *(v5 + 48);
    v22 = v21(v16, 2, v4);
    if (v22)
    {
      if (v22 == 1)
      {
        if (v21(&v16[v20], 2, v4) == 1)
        {
          goto LABEL_13;
        }
      }

      else if (v21(&v16[v20], 2, v4) == 2)
      {
LABEL_13:
        sub_1D2A87174(v16, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
        v25 = *(v33 + 24);
        v27 = *(a1 + v25);
        v26 = *(a1 + v25 + 8);
        v28 = (a2 + v25);
        v30 = *v28;
        v29 = v28[1];
        return v27 == v30 && v26 == v29;
      }
    }

    else
    {
      sub_1D2A8710C(v16, v12, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
      if (!v21(&v16[v20], 2, v4))
      {
        (*(v5 + 32))(v8, &v16[v20], v4);
        v23 = sub_1D2AC5F74();
        v24 = *(v5 + 8);
        v24(v8, v4);
        v24(v12, v4);
        if ((v23 & 1) == 0)
        {
          sub_1D2A87174(v16, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
          return 0;
        }

        goto LABEL_13;
      }

      (*(v5 + 8))(v12, v4);
    }

    sub_1D2A2E61C(v16, &qword_1EC704C08, &qword_1D2ACE610);
    return 0;
  }

  return result;
}

uint64_t sub_1D2A808A8(uint64_t a1)
{
  v2 = sub_1D2A870B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A808E4(uint64_t a1)
{
  v2 = sub_1D2A870B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.Prompt.Entity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D20, &unk_1D2ACE860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A870B8();
  sub_1D2AC74A4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v13 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity(0);
    v14 = *(v13 + 20);
    LOBYTE(v17) = 1;
    type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
    sub_1D2A87070(&qword_1EC704D30, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
    sub_1D2AC7304();
    v17 = *(v3 + *(v13 + 24));
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    sub_1D2A71DA4(&qword_1EC7046B8);
    sub_1D2AC7304();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t GenerationRecipe_V6.Prompt.Entity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D38, &qword_1D2ACE870);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A870B8();
  v28 = v10;
  v16 = v29;
  sub_1D2AC7494();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = v6;
  v18 = v26;
  v19 = v27;
  LOBYTE(v30) = 0;
  *v14 = sub_1D2AC7234();
  v14[1] = v20;
  v24 = v20;
  v29 = v14;
  LOBYTE(v30) = 1;
  sub_1D2A87070(&qword_1EC704D40, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
  sub_1D2AC7264();
  sub_1D2A7F334(v17, v29 + *(v11 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
  v31 = 2;
  sub_1D2A71DA4(&qword_1EC7046D0);
  sub_1D2AC7264();
  (*(v18 + 8))(v28, v19);
  v21 = *(v11 + 24);
  v22 = v29;
  *(v29 + v21) = v30;
  sub_1D2A8710C(v22, v25, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1D2A87174(v22, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
}

BOOL sub_1D2A80F4C(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D2AC7354() & 1) == 0 || (_s15ImagePlayground19GenerationRecipe_V6V6PromptV6EntityV4KindO2eeoiySbAI_AItFZ_0(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v12 = *v10;
  v11 = v10[1];
  return v9 == v12 && v8 == v11;
}

uint64_t GenerationRecipe_V6.Prompt.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

BOOL static GenerationRecipe_V6.Prompt.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A67270(v2, v3);
}

uint64_t sub_1D2A81080(uint64_t a1)
{
  v2 = sub_1D2A871D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A810BC(uint64_t a1)
{
  v2 = sub_1D2A871D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.Prompt.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D48, &qword_1D2ACE878);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A871D4();
  sub_1D2AC74A4();
  v17 = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D58, &qword_1D2ACE880);
    sub_1D2A87228(&qword_1EC704D60, &qword_1EC704D68);
    sub_1D2AC7304();
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t GenerationRecipe_V6.Prompt.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D70, &qword_1D2ACE888);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A871D4();
  sub_1D2AC7494();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v11 = sub_1D2AC7234();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D58, &qword_1D2ACE880);
  v18 = 1;
  sub_1D2A87228(&qword_1EC704D78, &qword_1EC704D80);
  sub_1D2AC7264();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL sub_1D2A81564(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A67270(v2, v3);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.AssignmentOptions.id.getter()
{
  if (*v0)
  {
    result = 0x69646E656C426F6ELL;
  }

  else
  {
    result = 0x646E656C62;
  }

  *v0;
  return result;
}

uint64_t sub_1D2A8162C(uint64_t a1)
{
  v2 = sub_1D2A8736C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A81668(uint64_t a1)
{
  v2 = sub_1D2A8736C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A816A4(uint64_t a1)
{
  v2 = sub_1D2A872C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A816E0(uint64_t a1)
{
  v2 = sub_1D2A872C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8171C(uint64_t a1)
{
  v2 = sub_1D2A87318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A81758(uint64_t a1)
{
  v2 = sub_1D2A87318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.AssignmentOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D88, &qword_1D2ACE890);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D90, &qword_1D2ACE898);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D98, &qword_1D2ACE8A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A872C4();
  sub_1D2AC74A4();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D2A87318();
    v18 = v22;
    sub_1D2AC7294();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D2A8736C();
    sub_1D2AC7294();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.AssignmentOptions.hashValue.getter()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.AssignmentOptions.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DB8, &qword_1D2ACE8A8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DC0, &qword_1D2ACE8B0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DC8, &qword_1D2ACE8B8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A872C4();
  v16 = v36;
  sub_1D2AC7494();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D2AC7284();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D2A76160();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D2AC70B4();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
      *v26 = &type metadata for GenerationRecipe_V6.DrawOnImageRecipe.AssignmentOptions;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D2A87318();
        sub_1D2AC71E4();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D2A8736C();
        sub_1D2AC71E4();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

unint64_t GenerationRecipe_V6.DrawOnImageRecipe.SanitizationCategory.id.getter()
{
  v1 = 0x6E6153746F4E6F64;
  v2 = 0xD000000000000019;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D2A82048(uint64_t a1)
{
  v2 = sub_1D2A873C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A82084(uint64_t a1)
{
  v2 = sub_1D2A873C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A820C0(uint64_t a1)
{
  v2 = sub_1D2A87510();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A820FC(uint64_t a1)
{
  v2 = sub_1D2A87510();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A82138(uint64_t a1)
{
  v2 = sub_1D2A87468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A82174(uint64_t a1)
{
  v2 = sub_1D2A87468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A821B0(uint64_t a1)
{
  v2 = sub_1D2A87414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A821EC(uint64_t a1)
{
  v2 = sub_1D2A87414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A82228(uint64_t a1)
{
  v2 = sub_1D2A874BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A82264(uint64_t a1)
{
  v2 = sub_1D2A874BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.SanitizationCategory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DD0, &qword_1D2ACE8C0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DD8, &qword_1D2ACE8C8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DE0, &qword_1D2ACE8D0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DE8, &qword_1D2ACE8D8);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DF0, &qword_1D2ACE8E0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A873C0();
  sub_1D2AC74A4();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1D2A87468();
      v24 = v33;
      sub_1D2AC7294();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1D2A87414();
      v24 = v36;
      sub_1D2AC7294();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1D2A874BC();
    v24 = v30;
    sub_1D2AC7294();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1D2A87510();
  sub_1D2AC7294();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.SanitizationCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.SanitizationCategory.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E20, &qword_1D2ACE8E8);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E28, &qword_1D2ACE8F0);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E30, &qword_1D2ACE8F8);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E38, &qword_1D2ACE900);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E40, &qword_1D2ACE908);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D2A873C0();
  v21 = v53;
  sub_1D2AC7494();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1D2AC7284();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1D2A76164();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1D2AC70B4();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
      *v34 = &type metadata for GenerationRecipe_V6.DrawOnImageRecipe.SanitizationCategory;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1D2A874BC();
        v39 = v42;
        sub_1D2AC71E4();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1D2A87510();
        v31 = v42;
        sub_1D2AC71E4();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_0(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1D2A87468();
      v38 = v42;
      sub_1D2AC71E4();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1D2A87414();
      v40 = v42;
      sub_1D2AC71E4();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.baseImageData.getter()
{
  v1 = *v0;
  sub_1D2A479A0(*v0, *(v0 + 8));
  return v1;
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.sketchImageData.getter()
{
  v1 = *(v0 + 16);
  sub_1D2A479A0(v1, *(v0 + 24));
  return v1;
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.sketchMaskData.getter()
{
  v1 = *(v0 + 32);
  sub_1D2A479A0(v1, *(v0 + 40));
  return v1;
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.id.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_1D2A82F30(uint64_t a1)
{
  v2 = sub_1D2A87564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A82F6C(uint64_t a1)
{
  v2 = sub_1D2A87564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E48, &qword_1D2ACE910);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v10;
  v11 = *(v1 + 32);
  v23 = *(v1 + 40);
  v24 = v11;
  v13 = *(v1 + 48);
  v12 = *(v1 + 56);
  v30 = *(v1 + 64);
  LODWORD(v11) = *(v1 + 65);
  v21 = *(v1 + 66);
  v22 = v11;
  v14 = *(v1 + 80);
  v20[0] = *(v1 + 72);
  v20[1] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A479A0(v8, v9);
  sub_1D2A87564();
  sub_1D2AC74A4();
  v28 = v8;
  v29 = v9;
  v31 = 0;
  sub_1D2A722BC();
  v16 = v27;
  sub_1D2AC72C4();
  if (v16)
  {
    sub_1D2A47930(v28, v29);
  }

  else
  {
    v18 = v23;
    v17 = v24;
    sub_1D2A47930(v28, v29);
    v28 = v26;
    v29 = v25;
    v31 = 1;
    sub_1D2A479A0(v26, v25);
    sub_1D2AC72C4();
    sub_1D2A47930(v28, v29);
    v28 = v17;
    v29 = v18;
    v31 = 2;
    sub_1D2A479A0(v17, v18);
    sub_1D2AC72C4();
    sub_1D2A47930(v28, v29);
    LOBYTE(v28) = 3;
    sub_1D2AC72F4();
    LOBYTE(v28) = 4;
    sub_1D2AC72F4();
    LOBYTE(v28) = 5;
    sub_1D2AC72E4();
    LOBYTE(v28) = v22;
    v31 = 6;
    sub_1D2A875B8();
    sub_1D2AC7304();
    LOBYTE(v28) = v21;
    v31 = 7;
    sub_1D2A8760C();
    sub_1D2AC7304();
    LOBYTE(v28) = 8;
    sub_1D2AC72D4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E68, &qword_1D2ACE918);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v10 = sub_1D2AC5F94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  v58 = v15;
  (*(v11 + 8))(v14, v10);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A87564();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    sub_1D2A723B8();
    sub_1D2AC7224();
    v39 = v45[0];
    LOBYTE(v40[0]) = 1;
    sub_1D2AC7224();
    v38 = v45[0];
    LOBYTE(v40[0]) = 2;
    sub_1D2AC7224();
    v37 = v45[0];
    LOBYTE(v45[0]) = 3;
    sub_1D2AC7254();
    v18 = v17;
    LOBYTE(v45[0]) = 4;
    sub_1D2AC7254();
    v20 = v19;
    LOBYTE(v45[0]) = 5;
    v21 = sub_1D2AC7244();
    LOBYTE(v40[0]) = 6;
    sub_1D2A87660();
    sub_1D2AC7264();
    v22 = v45[0];
    LOBYTE(v40[0]) = 7;
    sub_1D2A876B4();
    sub_1D2AC7264();
    v36 = LOBYTE(v45[0]);
    v55 = 8;
    v23 = sub_1D2AC7234();
    v35 = v24;
    v25 = v23;
    LOBYTE(v21) = v21 & 1;
    (*(v6 + 8))(v9, v5);

    v28 = v39;
    v26 = v28 >> 64;
    v27 = v28;
    v40[0] = v39;
    v40[1] = v38;
    v41 = v37;
    *&v42 = v18;
    *(&v42 + 1) = v20;
    LOBYTE(v43) = v21;
    BYTE1(v43) = v22;
    BYTE2(v43) = v36;
    *(&v43 + 3) = v56;
    BYTE7(v43) = v57;
    v29 = v35;
    *(&v43 + 1) = v25;
    v44 = v35;
    v30 = v38;
    *a2 = v39;
    *(a2 + 16) = v30;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    *(a2 + 80) = v29;
    *(a2 + 48) = v32;
    *(a2 + 64) = v33;
    *(a2 + 32) = v31;
    sub_1D2A87708(v40, v45);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v45[0] = __PAIR128__(v26, v27);
    v45[1] = v38;
    v45[2] = v37;
    v46 = v18;
    v47 = v20;
    v48 = v21;
    v49 = v22;
    v50 = v36;
    v51 = v56;
    v52 = v57;
    v53 = v25;
    v54 = v29;
    return sub_1D2A87740(v45);
  }
}

uint64_t GenerationRecipe_V6.ImportedImage.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenerationRecipe_V6.ImportedImage.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GenerationRecipe_V6.ImportedImage.imageData.getter()
{
  v1 = *(v0 + 16);
  sub_1D2A479A0(v1, *(v0 + 24));
  return v1;
}

uint64_t GenerationRecipe_V6.ImportedImage.imageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D2A47930(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static GenerationRecipe_V6.ImportedImage.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2AC7354();
  }
}

uint64_t sub_1D2A83B5C(uint64_t a1)
{
  v2 = sub_1D2A87770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A83B98(uint64_t a1)
{
  v2 = sub_1D2A87770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.ImportedImage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E80, &qword_1D2ACE920);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v20 = *(v1 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A87770();
  sub_1D2AC74A4();
  LOBYTE(v18) = 0;
  v12 = v17;
  sub_1D2AC72D4();
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v21 = 1;
    sub_1D2A479A0(v16, v15);
    sub_1D2A722BC();
    sub_1D2AC72C4();
    sub_1D2A47930(v18, v19);
    LOBYTE(v18) = 2;
    sub_1D2AC72E4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t GenerationRecipe_V6.ImportedImage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E90, &qword_1D2ACE928);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A87770();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v20 = 0;
    v16 = 0xF000000000000000;
  }

  else
  {
    LOBYTE(v23) = 0;
    v11 = sub_1D2AC7234();
    v14 = v13;
    v21 = v11;
    v25 = 1;
    sub_1D2A723B8();
    sub_1D2AC7224();
    v15 = v24;
    v22 = v23;
    sub_1D2A47930(0, 0xF000000000000000);
    LOBYTE(v23) = 2;
    v17 = sub_1D2AC7244();
    (*(v6 + 8))(v9, v5);
    v18 = v17 & 1;
    v19 = v22;
    *a2 = v21;
    *(a2 + 8) = v14;
    *(a2 + 16) = v19;
    *(a2 + 24) = v15;
    *(a2 + 32) = v18;

    sub_1D2A479A0(v19, v15);
    __swift_destroy_boxed_opaque_existential_0(a1);

    v20 = v19;
    v16 = v15;
  }

  return sub_1D2A47930(v20, v16);
}

uint64_t GenerationRecipe_V6.PersonData.id.getter()
{
  v1 = *v0;
  if (v0[3])
  {
    v2 = v0[2];
    v3 = v0[3];
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v5 = *v0;
  v6 = v0[1];

  MEMORY[0x1D38A7100](v2, v3);

  return v5;
}

uint64_t GenerationRecipe_V6.PersonData.personID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenerationRecipe_V6.PersonData.personID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GenerationRecipe_V6.PersonData.faceID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GenerationRecipe_V6.PersonData.faceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t GenerationRecipe_V6.PersonData.faceImageData.getter()
{
  v1 = *(v0 + 32);
  sub_1D2A479A0(v1, *(v0 + 40));
  return v1;
}

uint64_t GenerationRecipe_V6.PersonData.faceImageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D2A47930(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1D2A84280(uint64_t a1)
{
  v2 = sub_1D2A877C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A842BC(uint64_t a1)
{
  v2 = sub_1D2A877C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.PersonData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E98, &qword_1D2ACE930);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v11 = v1[4];
  v18 = v1[5];
  v19 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A877C4();
  sub_1D2AC74A4();
  LOBYTE(v23) = 0;
  v13 = v22;
  sub_1D2AC72D4();
  if (!v13)
  {
    v16 = v18;
    v15 = v19;
    LOBYTE(v23) = 1;
    sub_1D2AC72A4();
    v23 = v15;
    v24 = v16;
    v25 = 2;
    sub_1D2A479A0(v15, v16);
    sub_1D2A722BC();
    sub_1D2AC72C4();
    sub_1D2A47930(v23, v24);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t GenerationRecipe_V6.PersonData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704EA8, &qword_1D2ACE938);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A877C4();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v21 = 0;
    v22 = 0xF000000000000000;
  }

  else
  {
    LOBYTE(v25) = 0;
    v11 = sub_1D2AC7234();
    v14 = v13;
    v24 = v11;
    LOBYTE(v25) = 1;
    v15 = sub_1D2AC7204();
    v17 = v16;
    v23 = v15;
    v27 = 2;
    sub_1D2A723B8();
    sub_1D2AC7224();
    (*(v6 + 8))(v9, v5);
    v18 = v25;
    v19 = v26;
    sub_1D2A47930(0, 0xF000000000000000);
    v20 = v23;
    *a2 = v24;
    a2[1] = v14;
    a2[2] = v20;
    a2[3] = v17;
    a2[4] = v18;
    a2[5] = v19;

    sub_1D2A479A0(v18, v19);
    __swift_destroy_boxed_opaque_existential_0(a1);

    v21 = v18;
    v22 = v19;
  }

  return sub_1D2A47930(v21, v22);
}

uint64_t GenerationRecipe_V6.Ingredient.id.getter()
{
  v1 = *v0;
  v2 = v0[8] >> 61;
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      v1 = v0[9];
      v3 = v0[10];
    }

    goto LABEL_12;
  }

  if (v2 != 4)
  {
LABEL_12:

    return v1;
  }

  v4 = v0[3];
  if (v4)
  {
    v5 = v0[2];
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v0[3];
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v8 = *v0;
  v9 = v0[1];

  MEMORY[0x1D38A7100](v5, v6);

  return v8;
}

uint64_t sub_1D2A8489C(uint64_t a1)
{
  v2 = sub_1D2A87818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A848D8(uint64_t a1)
{
  v2 = sub_1D2A87818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A84914(uint64_t a1)
{
  v2 = sub_1D2A87B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A84950(uint64_t a1)
{
  v2 = sub_1D2A87B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8498C(uint64_t a1)
{
  v2 = sub_1D2A87A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A849C8(uint64_t a1)
{
  v2 = sub_1D2A87A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A84A04(uint64_t a1)
{
  v2 = sub_1D2A87968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A84A40(uint64_t a1)
{
  v2 = sub_1D2A87968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A84A7C(uint64_t a1)
{
  v2 = sub_1D2A878C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A84AB8(uint64_t a1)
{
  v2 = sub_1D2A878C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A84AF4(uint64_t a1)
{
  v2 = sub_1D2A87AB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A84B30(uint64_t a1)
{
  v2 = sub_1D2A87AB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A84B6C(uint64_t a1)
{
  v2 = sub_1D2A8786C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A84BA8(uint64_t a1)
{
  v2 = sub_1D2A8786C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.Ingredient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704EB0, &qword_1D2ACE940);
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v35 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704EB8, &qword_1D2ACE948);
  v51 = *(v52 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v35 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704EC0, &qword_1D2ACE950);
  v47 = *(v48 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v35 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704EC8, &qword_1D2ACE958);
  v45 = *(v46 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v35 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704ED0, &qword_1D2ACE960);
  v41 = *(v42 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704ED8, &qword_1D2ACE968);
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704EE0, &qword_1D2ACE970);
  v62 = *(v18 - 8);
  v19 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - v20;
  v22 = v1[1];
  v60 = *v1;
  v61 = v22;
  v23 = v1[3];
  v59 = v1[2];
  v58 = *(v1 + 32);
  v56 = *(v1 + 33) | ((*(v1 + 37) | (*(v1 + 39) << 16)) << 32);
  v57 = v23;
  v24 = v1[6];
  v55 = v1[5];
  v38 = v24;
  v25 = v1[8];
  v37 = v1[7];
  v26 = v1[10];
  v36 = v1[9];
  v35 = v26;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A87818();
  sub_1D2AC74A4();
  v28 = v25 >> 61;
  if ((v25 >> 61) > 2)
  {
    if (v28 == 3)
    {
      LOBYTE(v63) = 3;
      sub_1D2A87968();
      v30 = v44;
      v29 = v21;
      sub_1D2AC7294();
      v63 = v60;
      v64 = v61;
      v65 = v59;
      v66 = v57;
      v67 = v58 & 1;
      sub_1D2A879BC();
      v31 = v48;
      sub_1D2AC7304();
      v32 = &v78;
    }

    else
    {
      v29 = v21;
      if (v28 != 4)
      {
        LOBYTE(v63) = 5;
        sub_1D2A8786C();
        v30 = v50;
        sub_1D2AC7294();
        v31 = v54;
        sub_1D2AC72D4();
        v34 = v53;
        goto LABEL_12;
      }

      LOBYTE(v63) = 4;
      sub_1D2A878C0();
      v30 = v49;
      sub_1D2AC7294();
      v63 = v60;
      v64 = v61;
      v65 = v59;
      v66 = v57;
      v67 = v58;
      v70 = BYTE6(v56);
      v69 = WORD2(v56);
      v68 = v56;
      v71 = v55;
      sub_1D2A87914();
      v31 = v52;
      sub_1D2AC7304();
      v32 = &v79;
    }
  }

  else
  {
    if (!v28)
    {
      LOBYTE(v63) = 0;
      sub_1D2A87B60();
      sub_1D2AC7294();
      sub_1D2AC72D4();
      (*(v39 + 8))(v17, v14);
      return (*(v62 + 8))(v21, v18);
    }

    v29 = v21;
    if (v28 == 1)
    {
      LOBYTE(v63) = 1;
      sub_1D2A87AB8();
      v30 = v40;
      sub_1D2AC7294();
      v63 = v60;
      v64 = v61;
      v65 = v59;
      sub_1D2A87B0C();
      v31 = v42;
      sub_1D2AC7304();
      v32 = &v76;
    }

    else
    {
      LOBYTE(v63) = 2;
      sub_1D2A87A10();
      v30 = v43;
      sub_1D2AC7294();
      v63 = v60;
      v64 = v61;
      v65 = v59;
      v66 = v57;
      v67 = v58;
      v70 = BYTE6(v56);
      v69 = WORD2(v56);
      v68 = v56;
      v71 = v55;
      v72 = v38;
      v73 = v37;
      v74 = v25 & 0x1FFFFFFFFFFFFFFFLL;
      v75 = v36;
      v76 = v35;
      sub_1D2A87A64();
      v31 = v46;
      sub_1D2AC7304();
      v32 = &v77;
    }
  }

  v34 = *(v32 - 32);
LABEL_12:
  (*(v34 + 8))(v30, v31);
  return (*(v62 + 8))(v29, v18);
}

uint64_t GenerationRecipe_V6.Ingredient.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F40, &qword_1D2ACE978);
  v78 = *(v69 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v83 = &v65 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F48, &qword_1D2ACE980);
  v77 = *(v76 - 8);
  v5 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v82 = &v65 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F50, &qword_1D2ACE988);
  v75 = *(v74 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v81 = &v65 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F58, &qword_1D2ACE990);
  v72 = *(v73 - 8);
  v9 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v80 = &v65 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F60, &qword_1D2ACE998);
  v70 = *(v71 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F68, &qword_1D2ACE9A0);
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F70, &qword_1D2ACE9A8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v65 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D2A87818();
  v25 = v84;
  sub_1D2AC7494();
  if (!v25)
  {
    v26 = v17;
    v66 = v14;
    v67 = v13;
    v84 = 0;
    v28 = v80;
    v27 = v81;
    v29 = v82;
    v30 = v83;
    v31 = sub_1D2AC7284();
    v32 = (2 * *(v31 + 16)) | 1;
    v92 = v31;
    v93 = v31 + 32;
    v94 = 0;
    v95 = v32;
    v33 = sub_1D2A76168();
    if (v33 == 6 || v94 != v95 >> 1)
    {
      v44 = sub_1D2AC70B4();
      swift_allocError();
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
      *v46 = &type metadata for GenerationRecipe_V6.Ingredient;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
    }

    else if (v33 > 2u)
    {
      if (v33 == 3)
      {
        v54 = v79;
        LOBYTE(v85) = 3;
        sub_1D2A87968();
        v55 = v84;
        sub_1D2AC71E4();
        if (!v55)
        {
          sub_1D2A87C08();
          v56 = v74;
          sub_1D2AC7264();
          (*(v75 + 8))(v27, v56);
          (*(v19 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v41 = v85;
          v40 = v86;
          v43 = v87;
          *&v37 = v88;
          v42 = 0x6000000000000000;
LABEL_25:
          *v54 = v41;
          *(v54 + 8) = v40;
          *(v54 + 16) = v43;
          *(v54 + 32) = v37;
          *(v54 + 48) = v38;
          *(v54 + 64) = v42;
          *(v54 + 72) = v39;
          return __swift_destroy_boxed_opaque_existential_0(v96);
        }
      }

      else
      {
        v49 = v84;
        if (v33 == 4)
        {
          LOBYTE(v85) = 4;
          sub_1D2A878C0();
          sub_1D2AC71E4();
          if (!v49)
          {
            sub_1D2A87BB4();
            v50 = v76;
            sub_1D2AC7264();
            (*(v77 + 8))(v29, v50);
            (*(v19 + 8))(v22, v18);
            swift_unknownObjectRelease();
            v41 = v85;
            v40 = v86;
            v42 = 0x8000000000000000;
            v43 = v87;
            v37 = v88;
            goto LABEL_24;
          }
        }

        else
        {
          LOBYTE(v85) = 5;
          sub_1D2A8786C();
          v59 = v30;
          sub_1D2AC71E4();
          if (!v49)
          {
            v60 = v69;
            v61 = sub_1D2AC7234();
            v40 = v63;
            v64 = v61;
            (*(v78 + 8))(v59, v60);
            v41 = v64;
            (*(v19 + 8))(v22, v18);
            swift_unknownObjectRelease();
            v42 = 0xA000000000000000;
            goto LABEL_24;
          }
        }
      }
    }

    else if (v33)
    {
      if (v33 == 1)
      {
        LOBYTE(v85) = 1;
        sub_1D2A87AB8();
        v34 = v67;
        v35 = v84;
        sub_1D2AC71E4();
        if (!v35)
        {
          sub_1D2A87CB0();
          v36 = v71;
          sub_1D2AC7264();
          (*(v70 + 8))(v34, v36);
          (*(v19 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v41 = v85;
          v40 = v86;
          v42 = 0x2000000000000000;
          *&v43 = v87;
LABEL_24:
          v54 = v79;
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v85) = 2;
        sub_1D2A87A10();
        v57 = v84;
        sub_1D2AC71E4();
        if (!v57)
        {
          sub_1D2A87C5C();
          v58 = v73;
          sub_1D2AC7264();
          (*(v72 + 8))(v28, v58);
          (*(v19 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v41 = v85;
          v40 = v86;
          v43 = v87;
          v37 = v88;
          v38 = v89;
          v39 = v91;
          v42 = v90 & 0x10301 | 0x4000000000000000;
          goto LABEL_24;
        }
      }
    }

    else
    {
      LOBYTE(v85) = 0;
      sub_1D2A87B60();
      v51 = v26;
      v52 = v84;
      sub_1D2AC71E4();
      if (!v52)
      {
        v53 = v66;
        v41 = sub_1D2AC7234();
        v40 = v62;
        (*(v68 + 8))(v51, v53);
        (*(v19 + 8))(v22, v18);
        swift_unknownObjectRelease();
        v42 = 0;
        goto LABEL_24;
      }
    }

    (*(v19 + 8))(v22, v18);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v96);
}

uint64_t sub_1D2A85F94@<X0>(uint64_t *a1@<X8>)
{
  result = GenerationRecipe_V6.Ingredient.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t GenerationRecipe_V6.seed.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t GenerationRecipe_V6.id.getter()
{
  v1 = *v0;
  v16 = v0[1];
  v2 = *(v0 + 16);
  v25 = 0;
  v26 = 0xE000000000000000;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = v4[1];
      v19 = *v4;
      v6 = v4[2];
      v7 = *(v4 + 10);
      v8 = v4[4];
      v22 = v4[3];
      v23 = v8;
      v20 = v5;
      v24 = v7;
      v21 = v6;
      v9 = *(&v19 + 1);
      v10 = v19;
      v11 = v8 >> 61;
      if ((v8 >> 61) > 2)
      {
        if (v11 == 4)
        {
          if (*(&v20 + 1))
          {
            v12 = v20;
          }

          else
          {
            v12 = 0;
          }

          if (*(&v20 + 1))
          {
            v13 = *(&v20 + 1);
          }

          else
          {
            v13 = 0xE000000000000000;
          }

          v17 = v19;
          sub_1D2A76090(&v19, v18);

          MEMORY[0x1D38A7100](v12, v13);

          v9 = *(&v17 + 1);
          v10 = v17;
          goto LABEL_4;
        }
      }

      else if (v11 >= 2)
      {
        v10 = *(&v23 + 1);
        v9 = v24;
      }

      sub_1D2A76090(&v19, v18);

LABEL_4:
      MEMORY[0x1D38A7100](v10, v9);
      sub_1D2A760EC(&v19);

      v4 = (v4 + 88);
      --v3;
    }

    while (v3);
  }

  if ((v2 & 1) == 0)
  {
    *&v19 = v16;
    sub_1D2A87D04();
    v14 = sub_1D2AC6FE4();
    MEMORY[0x1D38A7100](v14);
  }

  return v25;
}

uint64_t static GenerationRecipe_V6.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1D2A67230(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D2A861C8()
{
  if (*v0)
  {
    result = 1684366707;
  }

  else
  {
    result = 0x6569646572676E69;
  }

  *v0;
  return result;
}

uint64_t sub_1D2A86204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6569646572676E69 && a2 == 0xEB0000000073746ELL;
  if (v6 || (sub_1D2AC7354() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684366707 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2AC7354();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D2A862E4(uint64_t a1)
{
  v2 = sub_1D2A87D58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A86320(uint64_t a1)
{
  v2 = sub_1D2A87D58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704FA0, &qword_1D2ACE9B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v12[3] = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A87D58();

  sub_1D2AC74A4();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704FB0, &qword_1D2ACE9B8);
  sub_1D2A87E00(&qword_1EC704FB8, sub_1D2A87DAC);
  sub_1D2AC7304();

  if (!v2)
  {
    v14 = 1;
    sub_1D2AC72B4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t GenerationRecipe_V6.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704FC8, &qword_1D2ACE9C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A87D58();
  sub_1D2AC7494();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704FB0, &qword_1D2ACE9B8);
  v16[15] = 0;
  sub_1D2A87E00(&qword_1EC704FD0, sub_1D2A87E78);
  sub_1D2AC7264();
  v11 = v17;
  v16[14] = 1;
  v12 = sub_1D2AC7214();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D2A867B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1D2A67230(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D2A86818@<X0>(uint64_t *a1@<X8>)
{
  result = GenerationRecipe_V6.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s15ImagePlayground19GenerationRecipe_V6V10IngredientO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  *v34 = a1[2];
  *&v34[16] = v3;
  v4 = a1[3];
  *v35 = a1[4];
  v5 = a1[1];
  v32 = *a1;
  v33 = v5;
  v6 = a2[3];
  v7 = a2[1];
  v38 = a2[2];
  v39 = v6;
  v8 = a2[3];
  *v40 = a2[4];
  v9 = a2[1];
  v36 = *a2;
  v37 = v9;
  v41[0] = v32;
  v41[1] = v2;
  v10 = a1[4];
  v41[3] = v4;
  v41[4] = v10;
  v41[2] = *v34;
  v45 = v38;
  v46 = v8;
  v47 = a2[4];
  v44 = v7;
  *&v35[16] = *(a1 + 10);
  *&v40[16] = *(a2 + 10);
  v11 = *(a2 + 10);
  v42 = *(a1 + 10);
  v48 = v11;
  v43 = v36;
  v12 = v5;
  v13 = *v35 >> 61;
  if ((*v35 >> 61) > 2)
  {
    if (v13 == 3)
    {
      if (*v40 >> 61 != 3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v13 == 4)
      {
        if (*v40 >> 61 != 4)
        {
          goto LABEL_23;
        }

        v20 = v32;
        v21 = v33;
        v22 = *v34;
        v19[0] = v36;
        v19[1] = v37;
        v19[2] = v38;
        sub_1D2A76090(&v36, v26);
        sub_1D2A76090(&v32, v26);
        sub_1D2A76090(&v36, v26);
        sub_1D2A76090(&v32, v26);
        v17 = _s15ImagePlayground19GenerationRecipe_V7V10PersonDataV2eeoiySbAE_AEtFZ_0(&v20, v19);
        goto LABEL_19;
      }

      if (*v40 >> 61 != 5)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    if (v13)
    {
      if (v13 == 1)
      {
        if (*v40 >> 61 == 1)
        {
          v14 = v37;
          if (v32 == v36 || (sub_1D2AC7354() & 1) != 0)
          {
            sub_1D2A76090(&v36, v26);
            sub_1D2A76090(&v32, v26);
            sub_1D2A76090(&v36, v26);
            sub_1D2A76090(&v32, v26);
            v15 = sub_1D2A67270(v12, v14);
            sub_1D2A2E61C(v41, &qword_1EC705208, &qword_1D2AD1190);
            sub_1D2A760EC(&v36);
            sub_1D2A760EC(&v32);
            if (v15)
            {
              v16 = 1;
              return v16 & 1;
            }

LABEL_24:
            v16 = 0;
            return v16 & 1;
          }
        }

LABEL_23:
        sub_1D2A76090(&v36, v26);
        sub_1D2A76090(&v32, v26);
        sub_1D2A2E61C(v41, &qword_1EC705208, &qword_1D2AD1190);
        goto LABEL_24;
      }

      if (*v40 >> 61 != 2)
      {
        goto LABEL_23;
      }

      v26[0] = v32;
      v26[1] = v33;
      v28 = *&v34[8];
      v27 = *v34;
      v29 = *&v34[24];
      v30 = *v35 & 0x1FFFFFFFFFFFFFFFLL;
      v31 = *&v35[8];
      v20 = v36;
      v21 = v37;
      v22 = v38;
      v23 = v39;
      v24 = *v40 & 0x1FFFFFFFFFFFFFFFLL;
      v25 = *&v40[8];
      sub_1D2A76090(&v36, v19);
      sub_1D2A76090(&v32, v19);
      sub_1D2A76090(&v36, v19);
      sub_1D2A76090(&v32, v19);
      v17 = _s15ImagePlayground19GenerationRecipe_V7V06DrawOnaD0V2eeoiySbAE_AEtFZ_0(v26, &v20);
LABEL_19:
      v16 = v17;
      sub_1D2A2E61C(v41, &qword_1EC705208, &qword_1D2AD1190);
      sub_1D2A760EC(&v36);
      sub_1D2A760EC(&v32);
      return v16 & 1;
    }

    if (*v40 >> 61)
    {
      goto LABEL_23;
    }
  }

  if (v32 == v36)
  {
    sub_1D2A76090(&v36, v26);
    sub_1D2A76090(&v32, v26);
    sub_1D2A2E61C(v41, &qword_1EC705208, &qword_1D2AD1190);
    v16 = 1;
  }

  else
  {
    v16 = sub_1D2AC7354();
    sub_1D2A76090(&v36, v26);
    sub_1D2A76090(&v32, v26);
    sub_1D2A2E61C(v41, &qword_1EC705208, &qword_1D2AD1190);
  }

  return v16 & 1;
}

uint64_t _s15ImagePlayground19GenerationRecipe_V6V6PromptV6EntityV4KindO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704C08, &qword_1D2ACE610);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1D2A8710C(a1, &v24 - v16, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
  sub_1D2A8710C(a2, &v17[v18], type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_1D2A8710C(v17, v12, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_1D2AC5F74();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_1D2A87174(v17, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_1D2A2E61C(v17, &qword_1EC704C08, &qword_1D2ACE610);
    v21 = 0;
    return v21 & 1;
  }

  sub_1D2A87174(v17, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
  v21 = 1;
  return v21 & 1;
}

unint64_t sub_1D2A86F20()
{
  result = qword_1EC704CE0;
  if (!qword_1EC704CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704CE0);
  }

  return result;
}

unint64_t sub_1D2A86F74()
{
  result = qword_1EC704CE8;
  if (!qword_1EC704CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704CE8);
  }

  return result;
}

unint64_t sub_1D2A86FC8()
{
  result = qword_1EC704CF0;
  if (!qword_1EC704CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704CF0);
  }

  return result;
}

unint64_t sub_1D2A8701C()
{
  result = qword_1EC704CF8;
  if (!qword_1EC704CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704CF8);
  }

  return result;
}

uint64_t sub_1D2A87070(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2A870B8()
{
  result = qword_1EC704D28;
  if (!qword_1EC704D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704D28);
  }

  return result;
}

uint64_t sub_1D2A8710C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A87174(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2A871D4()
{
  result = qword_1EC704D50;
  if (!qword_1EC704D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704D50);
  }

  return result;
}

uint64_t sub_1D2A87228(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704D58, &qword_1D2ACE880);
    sub_1D2A87070(a2, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2A872C4()
{
  result = qword_1EC704DA0;
  if (!qword_1EC704DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704DA0);
  }

  return result;
}

unint64_t sub_1D2A87318()
{
  result = qword_1EC704DA8;
  if (!qword_1EC704DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704DA8);
  }

  return result;
}

unint64_t sub_1D2A8736C()
{
  result = qword_1EC704DB0;
  if (!qword_1EC704DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704DB0);
  }

  return result;
}

unint64_t sub_1D2A873C0()
{
  result = qword_1EC704DF8;
  if (!qword_1EC704DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704DF8);
  }

  return result;
}

unint64_t sub_1D2A87414()
{
  result = qword_1EC704E00;
  if (!qword_1EC704E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E00);
  }

  return result;
}

unint64_t sub_1D2A87468()
{
  result = qword_1EC704E08;
  if (!qword_1EC704E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E08);
  }

  return result;
}

unint64_t sub_1D2A874BC()
{
  result = qword_1EC704E10;
  if (!qword_1EC704E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E10);
  }

  return result;
}

unint64_t sub_1D2A87510()
{
  result = qword_1EC704E18;
  if (!qword_1EC704E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E18);
  }

  return result;
}

unint64_t sub_1D2A87564()
{
  result = qword_1EC704E50;
  if (!qword_1EC704E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E50);
  }

  return result;
}

unint64_t sub_1D2A875B8()
{
  result = qword_1EC704E58;
  if (!qword_1EC704E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E58);
  }

  return result;
}

unint64_t sub_1D2A8760C()
{
  result = qword_1EC704E60;
  if (!qword_1EC704E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E60);
  }

  return result;
}

unint64_t sub_1D2A87660()
{
  result = qword_1EC704E70;
  if (!qword_1EC704E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E70);
  }

  return result;
}

unint64_t sub_1D2A876B4()
{
  result = qword_1EC704E78;
  if (!qword_1EC704E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E78);
  }

  return result;
}

unint64_t sub_1D2A87770()
{
  result = qword_1EC704E88;
  if (!qword_1EC704E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E88);
  }

  return result;
}

unint64_t sub_1D2A877C4()
{
  result = qword_1EC704EA0;
  if (!qword_1EC704EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704EA0);
  }

  return result;
}

unint64_t sub_1D2A87818()
{
  result = qword_1EC704EE8;
  if (!qword_1EC704EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704EE8);
  }

  return result;
}

unint64_t sub_1D2A8786C()
{
  result = qword_1EC704EF0;
  if (!qword_1EC704EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704EF0);
  }

  return result;
}

unint64_t sub_1D2A878C0()
{
  result = qword_1EC704EF8;
  if (!qword_1EC704EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704EF8);
  }

  return result;
}

unint64_t sub_1D2A87914()
{
  result = qword_1EC704F00;
  if (!qword_1EC704F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F00);
  }

  return result;
}

unint64_t sub_1D2A87968()
{
  result = qword_1EC704F08;
  if (!qword_1EC704F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F08);
  }

  return result;
}

unint64_t sub_1D2A879BC()
{
  result = qword_1EC704F10;
  if (!qword_1EC704F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F10);
  }

  return result;
}

unint64_t sub_1D2A87A10()
{
  result = qword_1EC704F18;
  if (!qword_1EC704F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F18);
  }

  return result;
}

unint64_t sub_1D2A87A64()
{
  result = qword_1EC704F20;
  if (!qword_1EC704F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F20);
  }

  return result;
}

unint64_t sub_1D2A87AB8()
{
  result = qword_1EC704F28;
  if (!qword_1EC704F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F28);
  }

  return result;
}

unint64_t sub_1D2A87B0C()
{
  result = qword_1EC704F30;
  if (!qword_1EC704F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F30);
  }

  return result;
}

unint64_t sub_1D2A87B60()
{
  result = qword_1EC704F38;
  if (!qword_1EC704F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F38);
  }

  return result;
}

unint64_t sub_1D2A87BB4()
{
  result = qword_1EC704F78;
  if (!qword_1EC704F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F78);
  }

  return result;
}

unint64_t sub_1D2A87C08()
{
  result = qword_1EC704F80;
  if (!qword_1EC704F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F80);
  }

  return result;
}

unint64_t sub_1D2A87C5C()
{
  result = qword_1EC704F88;
  if (!qword_1EC704F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F88);
  }

  return result;
}

unint64_t sub_1D2A87CB0()
{
  result = qword_1EC704F90;
  if (!qword_1EC704F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F90);
  }

  return result;
}

unint64_t sub_1D2A87D04()
{
  result = qword_1EC704F98;
  if (!qword_1EC704F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F98);
  }

  return result;
}

unint64_t sub_1D2A87D58()
{
  result = qword_1EC704FA8;
  if (!qword_1EC704FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FA8);
  }

  return result;
}

unint64_t sub_1D2A87DAC()
{
  result = qword_1EC704FC0;
  if (!qword_1EC704FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FC0);
  }

  return result;
}

uint64_t sub_1D2A87E00(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704FB0, &qword_1D2ACE9B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2A87E78()
{
  result = qword_1EC704FD8;
  if (!qword_1EC704FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FD8);
  }

  return result;
}

unint64_t sub_1D2A87ED0()
{
  result = qword_1EC704FE0;
  if (!qword_1EC704FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FE0);
  }

  return result;
}

unint64_t sub_1D2A87F28()
{
  result = qword_1EC704FE8;
  if (!qword_1EC704FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FE8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D2A87F90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D2A87FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D2A88060()
{
  type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(319);
  if (v0 <= 0x3F)
  {
    sub_1D2A72FB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D2A8831C()
{
  result = qword_1EC704FF0;
  if (!qword_1EC704FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FF0);
  }

  return result;
}

unint64_t sub_1D2A88374()
{
  result = qword_1EC704FF8;
  if (!qword_1EC704FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FF8);
  }

  return result;
}

unint64_t sub_1D2A883CC()
{
  result = qword_1EC705000;
  if (!qword_1EC705000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705000);
  }

  return result;
}

unint64_t sub_1D2A88424()
{
  result = qword_1EC705008;
  if (!qword_1EC705008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705008);
  }

  return result;
}

unint64_t sub_1D2A8847C()
{
  result = qword_1EC705010;
  if (!qword_1EC705010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705010);
  }

  return result;
}

unint64_t sub_1D2A884D4()
{
  result = qword_1EC705018;
  if (!qword_1EC705018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705018);
  }

  return result;
}

unint64_t sub_1D2A8852C()
{
  result = qword_1EC705020;
  if (!qword_1EC705020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705020);
  }

  return result;
}

unint64_t sub_1D2A88584()
{
  result = qword_1EC705028;
  if (!qword_1EC705028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705028);
  }

  return result;
}

unint64_t sub_1D2A885DC()
{
  result = qword_1EC705030;
  if (!qword_1EC705030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705030);
  }

  return result;
}

unint64_t sub_1D2A88634()
{
  result = qword_1EC705038;
  if (!qword_1EC705038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705038);
  }

  return result;
}

unint64_t sub_1D2A8868C()
{
  result = qword_1EC705040;
  if (!qword_1EC705040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705040);
  }

  return result;
}

unint64_t sub_1D2A886E4()
{
  result = qword_1EC705048;
  if (!qword_1EC705048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705048);
  }

  return result;
}

unint64_t sub_1D2A8873C()
{
  result = qword_1EC705050;
  if (!qword_1EC705050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705050);
  }

  return result;
}

unint64_t sub_1D2A88794()
{
  result = qword_1EC705058;
  if (!qword_1EC705058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705058);
  }

  return result;
}

unint64_t sub_1D2A887EC()
{
  result = qword_1EC705060;
  if (!qword_1EC705060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705060);
  }

  return result;
}

unint64_t sub_1D2A88844()
{
  result = qword_1EC705068;
  if (!qword_1EC705068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705068);
  }

  return result;
}

unint64_t sub_1D2A8889C()
{
  result = qword_1EC705070;
  if (!qword_1EC705070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705070);
  }

  return result;
}

unint64_t sub_1D2A888F4()
{
  result = qword_1EC705078;
  if (!qword_1EC705078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705078);
  }

  return result;
}

unint64_t sub_1D2A8894C()
{
  result = qword_1EC705080;
  if (!qword_1EC705080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705080);
  }

  return result;
}

unint64_t sub_1D2A889A4()
{
  result = qword_1EC705088;
  if (!qword_1EC705088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705088);
  }

  return result;
}

unint64_t sub_1D2A889FC()
{
  result = qword_1EC705090;
  if (!qword_1EC705090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705090);
  }

  return result;
}

unint64_t sub_1D2A88A54()
{
  result = qword_1EC705098;
  if (!qword_1EC705098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705098);
  }

  return result;
}

unint64_t sub_1D2A88AAC()
{
  result = qword_1EC7050A0;
  if (!qword_1EC7050A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050A0);
  }

  return result;
}

unint64_t sub_1D2A88B04()
{
  result = qword_1EC7050A8;
  if (!qword_1EC7050A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050A8);
  }

  return result;
}

unint64_t sub_1D2A88B5C()
{
  result = qword_1EC7050B0;
  if (!qword_1EC7050B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050B0);
  }

  return result;
}

unint64_t sub_1D2A88BB4()
{
  result = qword_1EC7050B8;
  if (!qword_1EC7050B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050B8);
  }

  return result;
}

unint64_t sub_1D2A88C0C()
{
  result = qword_1EC7050C0;
  if (!qword_1EC7050C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050C0);
  }

  return result;
}

unint64_t sub_1D2A88C64()
{
  result = qword_1EC7050C8;
  if (!qword_1EC7050C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050C8);
  }

  return result;
}

unint64_t sub_1D2A88CBC()
{
  result = qword_1EC7050D0;
  if (!qword_1EC7050D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050D0);
  }

  return result;
}

unint64_t sub_1D2A88D14()
{
  result = qword_1EC7050D8;
  if (!qword_1EC7050D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050D8);
  }

  return result;
}

unint64_t sub_1D2A88D6C()
{
  result = qword_1EC7050E0;
  if (!qword_1EC7050E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050E0);
  }

  return result;
}

unint64_t sub_1D2A88DC4()
{
  result = qword_1EC7050E8;
  if (!qword_1EC7050E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050E8);
  }

  return result;
}

unint64_t sub_1D2A88E1C()
{
  result = qword_1EC7050F0;
  if (!qword_1EC7050F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050F0);
  }

  return result;
}

unint64_t sub_1D2A88E74()
{
  result = qword_1EC7050F8;
  if (!qword_1EC7050F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050F8);
  }

  return result;
}

unint64_t sub_1D2A88ECC()
{
  result = qword_1EC705100;
  if (!qword_1EC705100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705100);
  }

  return result;
}

unint64_t sub_1D2A88F24()
{
  result = qword_1EC705108;
  if (!qword_1EC705108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705108);
  }

  return result;
}

unint64_t sub_1D2A88F7C()
{
  result = qword_1EC705110;
  if (!qword_1EC705110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705110);
  }

  return result;
}

unint64_t sub_1D2A88FD4()
{
  result = qword_1EC705118;
  if (!qword_1EC705118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705118);
  }

  return result;
}

unint64_t sub_1D2A8902C()
{
  result = qword_1EC705120;
  if (!qword_1EC705120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705120);
  }

  return result;
}

unint64_t sub_1D2A89084()
{
  result = qword_1EC705128;
  if (!qword_1EC705128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705128);
  }

  return result;
}

unint64_t sub_1D2A890DC()
{
  result = qword_1EC705130;
  if (!qword_1EC705130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705130);
  }

  return result;
}

unint64_t sub_1D2A89134()
{
  result = qword_1EC705138;
  if (!qword_1EC705138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705138);
  }

  return result;
}

unint64_t sub_1D2A8918C()
{
  result = qword_1EC705140;
  if (!qword_1EC705140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705140);
  }

  return result;
}

unint64_t sub_1D2A891E4()
{
  result = qword_1EC705148;
  if (!qword_1EC705148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705148);
  }

  return result;
}

unint64_t sub_1D2A8923C()
{
  result = qword_1EC705150;
  if (!qword_1EC705150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705150);
  }

  return result;
}

unint64_t sub_1D2A89294()
{
  result = qword_1EC705158;
  if (!qword_1EC705158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705158);
  }

  return result;
}

unint64_t sub_1D2A892EC()
{
  result = qword_1EC705160;
  if (!qword_1EC705160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705160);
  }

  return result;
}

unint64_t sub_1D2A89344()
{
  result = qword_1EC705168;
  if (!qword_1EC705168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705168);
  }

  return result;
}

unint64_t sub_1D2A8939C()
{
  result = qword_1EC705170;
  if (!qword_1EC705170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705170);
  }

  return result;
}

unint64_t sub_1D2A893F4()
{
  result = qword_1EC705178;
  if (!qword_1EC705178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705178);
  }

  return result;
}

unint64_t sub_1D2A8944C()
{
  result = qword_1EC705180;
  if (!qword_1EC705180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705180);
  }

  return result;
}

unint64_t sub_1D2A894A4()
{
  result = qword_1EC705188;
  if (!qword_1EC705188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705188);
  }

  return result;
}

unint64_t sub_1D2A894FC()
{
  result = qword_1EC705190;
  if (!qword_1EC705190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705190);
  }

  return result;
}

unint64_t sub_1D2A89554()
{
  result = qword_1EC705198;
  if (!qword_1EC705198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705198);
  }

  return result;
}

unint64_t sub_1D2A895AC()
{
  result = qword_1EC7051A0;
  if (!qword_1EC7051A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051A0);
  }

  return result;
}

unint64_t sub_1D2A89604()
{
  result = qword_1EC7051A8;
  if (!qword_1EC7051A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051A8);
  }

  return result;
}

unint64_t sub_1D2A8965C()
{
  result = qword_1EC7051B0;
  if (!qword_1EC7051B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051B0);
  }

  return result;
}

unint64_t sub_1D2A896B4()
{
  result = qword_1EC7051B8;
  if (!qword_1EC7051B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051B8);
  }

  return result;
}

unint64_t sub_1D2A8970C()
{
  result = qword_1EC7051C0;
  if (!qword_1EC7051C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051C0);
  }

  return result;
}

unint64_t sub_1D2A89764()
{
  result = qword_1EC7051C8;
  if (!qword_1EC7051C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051C8);
  }

  return result;
}

unint64_t sub_1D2A897BC()
{
  result = qword_1EC7051D0;
  if (!qword_1EC7051D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051D0);
  }

  return result;
}

unint64_t sub_1D2A89814()
{
  result = qword_1EC7051D8;
  if (!qword_1EC7051D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051D8);
  }

  return result;
}

unint64_t sub_1D2A8986C()
{
  result = qword_1EC7051E0;
  if (!qword_1EC7051E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051E0);
  }

  return result;
}

unint64_t sub_1D2A898C4()
{
  result = qword_1EC7051E8;
  if (!qword_1EC7051E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051E8);
  }

  return result;
}

unint64_t sub_1D2A8991C()
{
  result = qword_1EC7051F0;
  if (!qword_1EC7051F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051F0);
  }

  return result;
}

unint64_t sub_1D2A89974()
{
  result = qword_1EC7051F8;
  if (!qword_1EC7051F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051F8);
  }

  return result;
}

unint64_t sub_1D2A899CC()
{
  result = qword_1EC705200;
  if (!qword_1EC705200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705200);
  }

  return result;
}

uint64_t sub_1D2A89A24()
{
  v0 = sub_1D2AC6384();
  __swift_allocate_value_buffer(v0, qword_1EE089310);
  __swift_project_value_buffer(v0, qword_1EE089310);
  return sub_1D2AC6374();
}

uint64_t static GPSignposter.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE089308 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2AC6384();
  v3 = __swift_project_value_buffer(v2, qword_1EE089310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D2A89B68(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705420, &qword_1D2AD1AC8);
  v36 = *(v38 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - v3;
  v4 = sub_1D2AC5F94();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705428, &qword_1D2AD1AD0);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705430, &qword_1D2AD1AD8);
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705438, &unk_1D2AD1AE0);
  v19 = *(v42 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v22 = &v32 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A919D8();
  v24 = v40;
  sub_1D2AC74A4();
  sub_1D2A91910(v41, v18, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
  v25 = (*(v24 + 48))(v18, 2, v4);
  if (v25)
  {
    if (v25 == 1)
    {
      v43 = 0;
      sub_1D2A91AD4();
      v26 = v42;
      sub_1D2AC7294();
      (*(v32 + 8))(v14, v33);
    }

    else
    {
      v44 = 1;
      sub_1D2A91A80();
      v26 = v42;
      sub_1D2AC7294();
      (*(v34 + 8))(v10, v35);
    }

    return (*(v19 + 8))(v22, v26);
  }

  else
  {
    v27 = v36;
    (*(v24 + 32))(v39, v18, v4);
    v45 = 2;
    sub_1D2A91A2C();
    v28 = v37;
    v29 = v42;
    sub_1D2AC7294();
    sub_1D2A91810(&qword_1EC704648, MEMORY[0x1E69695A8]);
    v30 = v38;
    sub_1D2AC7304();
    (*(v27 + 8))(v28, v30);
    (*(v24 + 8))(v39, v4);
    return (*(v19 + 8))(v22, v29);
  }
}

uint64_t sub_1D2A8A0AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053E0, &qword_1D2AD1AA8);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v53 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053E8, &qword_1D2AD1AB0);
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v62 = &v53 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053F0, &qword_1D2AD1AB8);
  v61 = *(v56 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053F8, &qword_1D2AD1AC0);
  v64 = *(v12 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D2A919D8();
  v25 = v65;
  sub_1D2AC7494();
  if (!v25)
  {
    v26 = v16;
    v27 = v61;
    v28 = v62;
    v53 = v20;
    v54 = v22;
    v29 = v63;
    v65 = 0;
    v30 = sub_1D2AC7284();
    v31 = (2 * *(v30 + 16)) | 1;
    v67 = v30;
    v68 = v30 + 32;
    v69 = 0;
    v70 = v31;
    v32 = sub_1D2A7615C();
    v33 = v15;
    if (v32 == 3 || v69 != v70 >> 1)
    {
      v38 = sub_1D2AC70B4();
      swift_allocError();
      v40 = v39;
      v41 = v12;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
      *v40 = v26;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
      (*(v64 + 8))(v33, v41);
    }

    else
    {
      if (v32)
      {
        if (v32 == 1)
        {
          v71 = 1;
          sub_1D2A91A80();
          v34 = v65;
          sub_1D2AC71E4();
          v35 = v64;
          if (!v34)
          {
            (*(v55 + 8))(v28, v57);
            (*(v35 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v36 = sub_1D2AC5F94();
            v37 = v54;
            (*(*(v36 - 8) + 56))(v54, 2, 2, v36);
LABEL_17:
            v52 = v60;
            goto LABEL_18;
          }
        }

        else
        {
          v71 = 2;
          sub_1D2A91A2C();
          v45 = v29;
          v46 = v65;
          sub_1D2AC71E4();
          v47 = v60;
          v35 = v64;
          if (!v46)
          {
            v48 = sub_1D2AC5F94();
            sub_1D2A91810(&qword_1EC704688, MEMORY[0x1E69695A8]);
            v49 = v53;
            v50 = v58;
            sub_1D2AC7264();
            (*(v59 + 8))(v45, v50);
            (*(v35 + 8))(v33, v12);
            swift_unknownObjectRelease();
            (*(*(v48 - 8) + 56))(v49, 0, 2, v48);
            v37 = v54;
            sub_1D2A918AC(v49, v54);
            v52 = v47;
LABEL_18:
            sub_1D2A918AC(v37, v52);
            return __swift_destroy_boxed_opaque_existential_0(v66);
          }
        }
      }

      else
      {
        v71 = 0;
        sub_1D2A91AD4();
        v44 = v65;
        sub_1D2AC71E4();
        if (!v44)
        {
          (*(v27 + 8))(v11, v56);
          (*(v64 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v51 = sub_1D2AC5F94();
          v37 = v54;
          (*(*(v51 - 8) + 56))(v54, 1, 2, v51);
          goto LABEL_17;
        }

        v35 = v64;
      }

      (*(v35 + 8))(v33, v12);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v66);
}

uint64_t sub_1D2A8A800(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053D0, &qword_1D2AD1AA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A91858();
  sub_1D2AC74A4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v13 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity(0);
    v14 = *(v13 + 20);
    LOBYTE(v17) = 1;
    type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
    sub_1D2A91810(&qword_1EC7053D8, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
    sub_1D2AC7304();
    v17 = *(v3 + *(v13 + 24));
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    sub_1D2A71DA4(&qword_1EC7046B8);
    sub_1D2AC7304();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D2A8AA38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053B8, &unk_1D2AD1A90);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A91858();
  v28 = v10;
  v16 = v29;
  sub_1D2AC7494();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = v6;
  v18 = v26;
  v19 = v27;
  LOBYTE(v30) = 0;
  *v14 = sub_1D2AC7234();
  v14[1] = v20;
  v24 = v20;
  v29 = v14;
  LOBYTE(v30) = 1;
  sub_1D2A91810(&qword_1EC7053C8, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
  sub_1D2AC7264();
  sub_1D2A918AC(v17, v29 + *(v11 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
  v31 = 2;
  sub_1D2A71DA4(&qword_1EC7046D0);
  sub_1D2AC7264();
  (*(v18 + 8))(v28, v19);
  v21 = *(v11 + 24);
  v22 = v29;
  *(v29 + v21) = v30;
  sub_1D2A91910(v22, v25, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1D2A91978(v22, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
}

uint64_t sub_1D2A8ADFC(uint64_t a1)
{
  v2 = sub_1D2A919D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8AE38(uint64_t a1)
{
  v2 = sub_1D2A919D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8AE74(uint64_t a1)
{
  v2 = sub_1D2A91AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8AEB0(uint64_t a1)
{
  v2 = sub_1D2A91AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8AEEC(uint64_t a1)
{
  v2 = sub_1D2A91A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8AF28(uint64_t a1)
{
  v2 = sub_1D2A91A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8AF64(uint64_t a1)
{
  v2 = sub_1D2A91A80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8AFA0(uint64_t a1)
{
  v2 = sub_1D2A91A80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8B010(uint64_t a1)
{
  v2 = sub_1D2A91858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8B04C(uint64_t a1)
{
  v2 = sub_1D2A91858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1D2A8B0B8(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D2AC7354() & 1) == 0 || (sub_1D2A8E340(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v12 = *v10;
  v11 = v10[1];
  return v9 == v12 && v8 == v11;
}

uint64_t sub_1D2A8B148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053A0, &qword_1D2AD1A88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A91720();
  sub_1D2AC74A4();
  v15 = 0;
  sub_1D2AC72D4();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705388, &qword_1D2AD1A80);
    sub_1D2A91774(&qword_1EC7053A8, &qword_1EC7053B0);
    sub_1D2AC7304();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D2A8B324(uint64_t a1)
{
  v2 = sub_1D2A91720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8B360(uint64_t a1)
{
  v2 = sub_1D2A91720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8B39C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D2A8E640(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

BOOL sub_1D2A8B3EC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A682B4(v2, v3);
}

uint64_t sub_1D2A8B460(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056D0, &qword_1D2AD33A8);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056D8, &qword_1D2AD33B0);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056E0, &qword_1D2AD33B8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A93150();
  sub_1D2AC74A4();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1D2A931A4();
    sub_1D2AC7294();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1D2A931F8();
    sub_1D2AC7294();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_1D2A8B71C(uint64_t a1)
{
  v2 = sub_1D2A931F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8B758(uint64_t a1)
{
  v2 = sub_1D2A931F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8B794(uint64_t a1)
{
  v2 = sub_1D2A93150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8B7D0(uint64_t a1)
{
  v2 = sub_1D2A93150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8B80C(uint64_t a1)
{
  v2 = sub_1D2A931A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8B848(uint64_t a1)
{
  v2 = sub_1D2A931A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8B884@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D2A8E87C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1D2A8B8D0(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056A8, &qword_1D2AD3380);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056B0, &qword_1D2AD3388);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056B8, &qword_1D2AD3390);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056C0, &qword_1D2AD3398);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056C8, &qword_1D2AD33A0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A92FAC();
  sub_1D2AC74A4();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_1D2A93054();
      v12 = v29;
      sub_1D2AC7294();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_1D2A93000();
      v12 = v32;
      sub_1D2AC7294();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_1D2A930A8();
    sub_1D2AC7294();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_1D2A930FC();
  sub_1D2AC7294();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1D2A8BD0C(uint64_t a1)
{
  v2 = sub_1D2A92FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8BD48(uint64_t a1)
{
  v2 = sub_1D2A92FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8BD84(uint64_t a1)
{
  v2 = sub_1D2A930FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8BDC0(uint64_t a1)
{
  v2 = sub_1D2A930FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8BDFC(uint64_t a1)
{
  v2 = sub_1D2A93054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8BE38(uint64_t a1)
{
  v2 = sub_1D2A93054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8BE74(uint64_t a1)
{
  v2 = sub_1D2A93000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8BEB0(uint64_t a1)
{
  v2 = sub_1D2A93000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8BEEC(uint64_t a1)
{
  v2 = sub_1D2A930A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8BF28(uint64_t a1)
{
  v2 = sub_1D2A930A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D2A8BF64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D2A8ED38(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D2A8BFAC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7055B8, &qword_1D2AD2E08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A92988();
  sub_1D2AC74A4();
  v23 = *v3;
  v20 = *v3;
  v19 = 0;
  sub_1D2A90F20(&v23, v18);
  sub_1D2A722BC();
  sub_1D2AC72C4();
  if (v2)
  {
    sub_1D2A47930(v20, *(&v20 + 1));
  }

  else
  {
    sub_1D2A47930(v20, *(&v20 + 1));
    v22 = v3[1];
    v20 = v3[1];
    v19 = 1;
    sub_1D2A90F20(&v22, v18);
    sub_1D2AC72C4();
    sub_1D2A47930(v20, *(&v20 + 1));
    v20 = v3[2];
    v21 = v20;
    v19 = 2;
    sub_1D2A90F20(&v21, v18);
    sub_1D2AC72C4();
    sub_1D2A47930(v20, *(&v20 + 1));
    v12 = *(v3 + 6);
    LOBYTE(v20) = 3;
    sub_1D2AC72F4();
    v13 = *(v3 + 7);
    LOBYTE(v20) = 4;
    sub_1D2AC72F4();
    v14 = *(v3 + 64);
    LOBYTE(v20) = 5;
    sub_1D2AC72E4();
    LOBYTE(v20) = *(v3 + 65);
    v18[0] = 6;
    sub_1D2A92AEC();
    sub_1D2AC7304();
    LOBYTE(v20) = *(v3 + 66);
    v18[0] = 7;
    sub_1D2A92B40();
    sub_1D2AC7304();
    v15 = *(v3 + 9);
    v16 = *(v3 + 10);
    LOBYTE(v20) = 8;
    sub_1D2AC72D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D2A8C2F8(uint64_t a1)
{
  v2 = sub_1D2A92988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8C334(uint64_t a1)
{
  v2 = sub_1D2A92988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2A8C370@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D2A8F378(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1D2A8C3E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D2A8DD08(v7, v9) & 1;
}

uint64_t sub_1D2A8C450(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7055B0, &qword_1D2AD2E00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A92934();
  sub_1D2AC74A4();
  LOBYTE(v16) = 0;
  sub_1D2AC72D4();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_1D2A479B4(v14, v15);
    sub_1D2A722BC();
    sub_1D2AC7304();
    sub_1D2A47944(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D2A8C5EC()
{
  if (*v0)
  {
    result = 0x7461446567616D69;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1D2A8C620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D2AC7354() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2AC7354();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D2A8C6FC(uint64_t a1)
{
  v2 = sub_1D2A92934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8C738(uint64_t a1)
{
  v2 = sub_1D2A92934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8C774@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D2A8FA08(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D2A8C7C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7055A8, &qword_1D2AD2DF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A928E0();
  sub_1D2AC74A4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v18) = 1;
    sub_1D2AC72A4();
    v18 = *(v3 + 2);
    v19 = v18;
    v17[23] = 2;
    sub_1D2A90F20(&v19, v17);
    sub_1D2A722BC();
    sub_1D2AC72C4();
    sub_1D2A47930(v18, *(&v18 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D2A8C9BC(uint64_t a1)
{
  v2 = sub_1D2A928E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8C9F8(uint64_t a1)
{
  v2 = sub_1D2A928E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2A8CA34@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D2A8FC24(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D2A8CA90(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1D2A8E038(v7, v8) & 1;
}

uint64_t sub_1D2A8CAD8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[8] >> 61;
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      v2 = v0[9];
      v4 = v0[10];
    }

    goto LABEL_12;
  }

  if (v3 != 4)
  {
LABEL_12:

    return v2;
  }

  v5 = v0[3];
  if (v5)
  {
    v6 = v0[2];
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v0[3];
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  *&v11 = *v0;
  *(&v11 + 1) = v1;
  v10 = v11;

  sub_1D2A90F90(&v11, &v9);
  MEMORY[0x1D38A7100](v6, v7);

  return v10;
}

uint64_t sub_1D2A8CBA4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705320, &qword_1D2AD1A40);
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705328, &qword_1D2AD1A48);
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v58 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705330, &qword_1D2AD1A50);
  v65 = *(v66 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v58 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705338, &qword_1D2AD1A58);
  v63 = *(v64 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v58 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705340, &qword_1D2AD1A60);
  v59 = *(v60 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705348, &qword_1D2AD1A68);
  v58 = *(v17 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705350, &qword_1D2AD1A70);
  v74 = *(v86 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v23 = &v58 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A91234();
  v25 = v23;
  sub_1D2AC74A4();
  v26 = v2[1];
  v73 = *v2;
  v27 = v2[2];
  v28 = v2[3];
  v30 = v2[4];
  v29 = v2[5];
  v31 = v2[8];
  v32 = v31 >> 61;
  if ((v31 >> 61) > 2)
  {
    if (v32 != 3)
    {
      v37 = v86;
      v38 = v25;
      if (v32 == 4)
      {
        LOBYTE(v75) = 4;
        v39 = v27;
        v40 = v28;
        sub_1D2A912DC();
        v41 = v26;
        v42 = v67;
        sub_1D2AC7294();
        v75 = v73;
        v76 = v41;
        v77 = v39;
        v78 = v40;
        v79 = v30;
        v80 = v29;
        sub_1D2A915D0();
        v43 = v70;
        sub_1D2AC7304();
        (*(v69 + 8))(v42, v43);
      }

      else
      {
        LOBYTE(v75) = 5;
        sub_1D2A91288();
        v56 = v68;
        sub_1D2AC7294();
        v57 = v72;
        sub_1D2AC72D4();
        (*(v71 + 8))(v56, v57);
      }

      v54 = *(v74 + 8);
      v55 = v38;
      return v54(v55, v37);
    }

    LOBYTE(v75) = 3;
    v45 = v27;
    v46 = v28;
    sub_1D2A91384();
    v47 = v62;
    v37 = v86;
    sub_1D2AC7294();
    v75 = v73;
    v76 = v26;
    v77 = v45;
    v78 = v46;
    sub_1D2A91624();
    v48 = v66;
    sub_1D2AC7304();
    (*(v65 + 8))(v47, v48);
  }

  else
  {
    if (!v32)
    {
      LOBYTE(v75) = 0;
      sub_1D2A9157C();
      v44 = v86;
      sub_1D2AC7294();
      sub_1D2AC72D4();
      (*(v58 + 8))(v20, v17);
      return (*(v74 + 8))(v25, v44);
    }

    v33 = v2[2];
    if (v32 == 1)
    {
      LOBYTE(v75) = 1;
      sub_1D2A914D4();
      v34 = v86;
      sub_1D2AC7294();
      v75 = v73;
      v76 = v26;
      v77 = v33;
      sub_1D2A916CC();
      v35 = v60;
      sub_1D2AC7304();
      (*(v59 + 8))(v16, v35);
      return (*(v74 + 8))(v25, v34);
    }

    v49 = v2[10];
    v71 = v2[9];
    v72 = v49;
    v50 = v2[7];
    v68 = v2[6];
    v69 = v31 & 0x1FFFFFFFFFFFFFFFLL;
    v70 = v50;
    LOBYTE(v75) = 2;
    v51 = v28;
    sub_1D2A9142C();
    v52 = v61;
    v37 = v86;
    sub_1D2AC7294();
    v75 = v73;
    v76 = v26;
    v77 = v33;
    v78 = v51;
    v79 = v30;
    v80 = v29;
    v81 = v68;
    v82 = v70;
    v83 = v69;
    v84 = v71;
    v85 = v72;
    sub_1D2A91678();
    v53 = v64;
    sub_1D2AC7304();
    (*(v63 + 8))(v52, v53);
  }

  v54 = *(v74 + 8);
  v55 = v25;
  return v54(v55, v37);
}

uint64_t sub_1D2A8D3E0(uint64_t a1)
{
  v2 = sub_1D2A91234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D41C(uint64_t a1)
{
  v2 = sub_1D2A91234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8D458(uint64_t a1)
{
  v2 = sub_1D2A9157C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D494(uint64_t a1)
{
  v2 = sub_1D2A9157C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8D4D0(uint64_t a1)
{
  v2 = sub_1D2A9142C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D50C(uint64_t a1)
{
  v2 = sub_1D2A9142C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8D548(uint64_t a1)
{
  v2 = sub_1D2A91384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D584(uint64_t a1)
{
  v2 = sub_1D2A91384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8D5C0(uint64_t a1)
{
  v2 = sub_1D2A912DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D5FC(uint64_t a1)
{
  v2 = sub_1D2A912DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8D638(uint64_t a1)
{
  v2 = sub_1D2A914D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D674(uint64_t a1)
{
  v2 = sub_1D2A914D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8D6B0(uint64_t a1)
{
  v2 = sub_1D2A91288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D6EC(uint64_t a1)
{
  v2 = sub_1D2A91288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2A8D728@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *&result = sub_1D2A8FEC8(a1, v7).n128_u64[0];
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1D2A8D79C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D2A8E160(v7, v9) & 1;
}

uint64_t sub_1D2A8D808@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2A8CAD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2A8D830(uint64_t a1, uint64_t a2, char a3)
{
  v24 = 0;
  v25 = 0xE000000000000000;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[4];
      v21 = v5[3];
      v22 = v6;
      v7 = v5[1];
      v20 = v5[2];
      v23 = *(v5 + 10);
      v18 = *v5;
      v19 = v7;
      v8 = *(&v18 + 1);
      v9 = v18;
      v10 = v6 >> 61;
      if ((v6 >> 61) > 2)
      {
        if (v10 == 4)
        {
          if (*(&v19 + 1))
          {
            v11 = v19;
          }

          else
          {
            v11 = 0;
          }

          if (*(&v19 + 1))
          {
            v12 = *(&v19 + 1);
          }

          else
          {
            v12 = 0xE000000000000000;
          }

          v16 = v18;
          sub_1D2A75F30(&v18, v17);

          MEMORY[0x1D38A7100](v11, v12);

          v8 = *(&v16 + 1);
          v9 = v16;
          goto LABEL_4;
        }
      }

      else if (v10 >= 2)
      {
        v9 = *(&v22 + 1);
        v8 = v23;
      }

      sub_1D2A75F30(&v18, v17);

LABEL_4:
      MEMORY[0x1D38A7100](v9, v8);

      sub_1D2A75F8C(&v18);
      v5 = (v5 + 88);
      --v4;
    }

    while (v4);
  }

  if ((a3 & 1) == 0)
  {
    *&v18 = a2;
    sub_1D2A87D04();
    v13 = sub_1D2AC6FE4();
    MEMORY[0x1D38A7100](v13);
  }

  return v24;
}

uint64_t sub_1D2A8D9BC(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705238, &unk_1D2AD12A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A90D24();
  sub_1D2AC74A4();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705220, &qword_1D2AD12A0);
  sub_1D2A90DCC(&qword_1EC705240, sub_1D2A90E44);
  sub_1D2AC7304();
  if (!v3)
  {
    v14 = 1;
    sub_1D2AC72B4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D2A8DBA8(uint64_t a1)
{
  v2 = sub_1D2A90D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8DBE4(uint64_t a1)
{
  v2 = sub_1D2A90D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8DC20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D2A90AF0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1D2A8DC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1D2A67F00(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D2A8DCD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2A8D830(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D2A8DD08(double *a1, double *a2)
{
  v23 = *a1;
  v22 = *a2;
  v4 = *(&v23 + 1);
  v5 = v23;
  v7 = *(&v22 + 1);
  v6 = v22;
  if (*(&v23 + 1) >> 60 == 15)
  {
    if (*(&v22 + 1) >> 60 == 15)
    {
      sub_1D2A90F20(&v23, &v21);
      sub_1D2A90F20(&v22, &v21);
      sub_1D2A47930(v5, v4);
      goto LABEL_7;
    }

LABEL_5:
    sub_1D2A90F20(&v23, &v21);
    v8 = &v22;
    v9 = &v21;
LABEL_18:
    sub_1D2A90F20(v8, v9);
    sub_1D2A47930(v5, v4);
    sub_1D2A47930(v6, v7);
    goto LABEL_19;
  }

  if (*(&v22 + 1) >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_1D2A90F20(&v23, &v21);
  sub_1D2A90F20(&v22, &v21);
  v10 = sub_1D2A973A0(v5, v4, v6, v7);
  sub_1D2A47930(v6, v7);
  sub_1D2A47930(v5, v4);
  if ((v10 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_7:
  v11 = *(a1 + 1);
  v20 = *(a2 + 1);
  v21 = v11;
  v4 = *(&v11 + 1);
  v5 = v11;
  v7 = *(&v20 + 1);
  v6 = v20;
  if (*(&v11 + 1) >> 60 == 15)
  {
    if (*(&v20 + 1) >> 60 == 15)
    {
      sub_1D2A90F20(&v21, &v19);
      sub_1D2A90F20(&v20, &v19);
      sub_1D2A47930(v5, v4);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (*(&v20 + 1) >> 60 == 15)
  {
LABEL_11:
    sub_1D2A90F20(&v21, &v19);
    v8 = &v20;
    v9 = &v19;
    goto LABEL_18;
  }

  sub_1D2A90F20(&v21, &v19);
  sub_1D2A90F20(&v20, &v19);
  v12 = sub_1D2A973A0(v5, v4, v6, v7);
  sub_1D2A47930(v6, v7);
  sub_1D2A47930(v5, v4);
  if ((v12 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v13 = *(a1 + 2);
  v18 = *(a2 + 2);
  v19 = v13;
  v4 = *(&v13 + 1);
  v5 = v13;
  v7 = *(&v18 + 1);
  v6 = v18;
  if (*(&v13 + 1) >> 60 != 15)
  {
    if (*(&v18 + 1) >> 60 == 15)
    {
      goto LABEL_17;
    }

    sub_1D2A90F20(&v19, v17);
    sub_1D2A90F20(&v18, v17);
    v16 = sub_1D2A973A0(v5, v4, v6, v7);
    sub_1D2A47930(v6, v7);
    sub_1D2A47930(v5, v4);
    if (v16)
    {
      goto LABEL_22;
    }

LABEL_19:
    v14 = 0;
    return v14 & 1;
  }

  if (*(&v18 + 1) >> 60 != 15)
  {
LABEL_17:
    sub_1D2A90F20(&v19, v17);
    v8 = &v18;
    v9 = v17;
    goto LABEL_18;
  }

  sub_1D2A90F20(&v19, v17);
  sub_1D2A90F20(&v18, v17);
  sub_1D2A47930(v5, v4);
LABEL_22:
  if (a1[6] != a2[6] || a1[7] != a2[7] || ((*(a1 + 64) ^ *(a2 + 64)) & 1) != 0 || *(a1 + 65) != *(a2 + 65) || *(a1 + 66) != *(a2 + 66))
  {
    goto LABEL_19;
  }

  if (*(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1D2AC7354();
  }

  return v14 & 1;
}

uint64_t sub_1D2A8E038(__int128 *a1, __int128 *a2)
{
  if (*(a1 + 3))
  {
    v3 = *(a1 + 2);
    v4 = *(a1 + 3);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v12 = *a1;
  v13 = v12;
  sub_1D2A90F90(&v13, &v11);

  MEMORY[0x1D38A7100](v3, v4);

  v5 = v12;
  if (*(a2 + 3))
  {
    v6 = *(a2 + 2);
    v7 = *(a2 + 3);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v11 = *a2;
  v12 = v11;

  sub_1D2A90F90(&v12, &v10);
  MEMORY[0x1D38A7100](v6, v7);

  if (v5 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2AC7354();
  }

  return v8 & 1;
}

uint64_t sub_1D2A8E160(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v9 = a1[8];
  v10 = v9 >> 61;
  if ((v9 >> 61) <= 2)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        if (*(a2 + 64) >> 61 == 1)
        {
          if (v11 = *(a2 + 16), v3 == *a2) && v4 == *(a2 + 8) || (sub_1D2AC7354())
          {
            if (sub_1D2A682B4(v5, v11))
            {
              goto LABEL_29;
            }
          }
        }

LABEL_30:
        v13 = 0;
        return v13 & 1;
      }

      *&v25 = v3;
      *(&v25 + 1) = v4;
      v26 = v5;
      v27 = v7;
      v28 = v6;
      v29 = v8;
      v30 = *(a1 + 3);
      v31 = v9 & 0x1FFFFFFFFFFFFFFFLL;
      v32 = *(a1 + 9);
      v16 = *(a2 + 64);
      if (v16 >> 61 != 2)
      {
        goto LABEL_30;
      }

      v17 = *(a2 + 16);
      v19 = *a2;
      v20 = v17;
      v18 = *(a2 + 48);
      v21 = *(a2 + 32);
      v22 = v18;
      v23 = v16 & 0x1FFFFFFFFFFFFFFFLL;
      v24 = *(a2 + 72);
      v13 = sub_1D2A8DD08(&v25, &v19);
      return v13 & 1;
    }

    if (*(a2 + 64) >> 61)
    {
      goto LABEL_30;
    }

LABEL_17:
    if (v3 != *a2 || v4 != *(a2 + 8))
    {
      goto LABEL_21;
    }

LABEL_29:
    v13 = 1;
    return v13 & 1;
  }

  if (v10 == 3)
  {
    if (*(a2 + 64) >> 61 != 3)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  if (v10 == 4)
  {
    *&v25 = v3;
    *(&v25 + 1) = v4;
    v26 = v5;
    v27 = v7;
    v28 = v6;
    v29 = v8;
    if (*(a2 + 64) >> 61 != 4)
    {
      goto LABEL_30;
    }

    v12 = *(a2 + 16);
    v19 = *a2;
    v20 = v12;
    v21 = *(a2 + 32);
    v13 = sub_1D2A8E038(&v25, &v19);
    return v13 & 1;
  }

  if (*(a2 + 64) >> 61 != 5)
  {
    goto LABEL_30;
  }

  if (v3 == *a2 && v4 == *(a2 + 8))
  {
    goto LABEL_29;
  }

LABEL_21:

  return sub_1D2AC7354();
}

uint64_t sub_1D2A8E340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BF8, &qword_1D2ACE600);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1D2A91910(a1, &v24 - v16, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
  sub_1D2A91910(a2, &v17[v18], type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_1D2A91910(v17, v12, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_1D2AC5F74();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_1D2A91978(v17, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_1D2A90EB8(v17);
    v21 = 0;
    return v21 & 1;
  }

  sub_1D2A91978(v17, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1D2A8E640(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705378, &qword_1D2AD1A78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A91720();
  sub_1D2AC7494();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1D2AC7234();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705388, &qword_1D2AD1A80);
    v10[15] = 1;
    sub_1D2A91774(&qword_1EC705390, &qword_1EC705398);
    sub_1D2AC7264();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_1D2A8E87C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705678, &qword_1D2AD3368);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705680, &qword_1D2AD3370);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705688, &qword_1D2AD3378);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A93150();
  v15 = v32;
  sub_1D2AC7494();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_1D2AC7284();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_1D2A76160();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_1D2AC70B4();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
    *v24 = &type metadata for GenerationRecipe_V4.DrawOnImageRecipe.AssignmentOptions;
    sub_1D2AC71F4();
    sub_1D2AC70A4();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_1D2A931A4();
    sub_1D2AC71E4();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1D2A931F8();
    sub_1D2AC71E4();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v37 & 1;
}

void *sub_1D2A8ED38(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705628, &qword_1D2AD3340);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705630, &qword_1D2AD3348);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705638, &qword_1D2AD3350);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705640, &qword_1D2AD3358);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705648, &qword_1D2AD3360);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D2A92FAC();
  v21 = v50;
  sub_1D2AC7494();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_1D2AC7284();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_1D2A76164();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_1D2A930A8();
        v36 = v40;
        sub_1D2AC71E4();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_1D2A930FC();
        v29 = v40;
        sub_1D2AC71E4();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_1D2A93054();
      v35 = v40;
      sub_1D2AC71E4();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_1D2A93000();
      v37 = v40;
      sub_1D2AC71E4();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_1D2AC70B4();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
  *v15 = &type metadata for GenerationRecipe_V4.DrawOnImageRecipe.SanitizationCategory;
  sub_1D2AC71F4();
  sub_1D2AC70A4();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v51);
  return v15;
}

uint64_t sub_1D2A8F378@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705588, &qword_1D2AD2DF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = sub_1D2AC5F94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  v59 = v15;
  (*(v11 + 8))(v14, v10);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A92988();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_1D2A723B8();
    sub_1D2AC7224();
    v37 = v44[0];
    LOBYTE(v38) = 1;
    sub_1D2AC7224();
    v36 = v44[0];
    LOBYTE(v38) = 2;
    sub_1D2AC7224();
    v17 = *(&v44[0] + 1);
    v35 = *&v44[0];
    LOBYTE(v44[0]) = 3;
    sub_1D2AC7254();
    v19 = v18;
    LOBYTE(v44[0]) = 4;
    sub_1D2AC7254();
    v21 = v20;
    LOBYTE(v44[0]) = 5;
    v22 = sub_1D2AC7244();
    LOBYTE(v38) = 6;
    sub_1D2A929DC();
    sub_1D2AC7264();
    v34 = LOBYTE(v44[0]);
    LOBYTE(v38) = 7;
    sub_1D2A92A30();
    sub_1D2AC7264();
    v33 = LOBYTE(v44[0]);
    v56 = 8;
    v32 = sub_1D2AC7234();
    v24 = v23;
    LOBYTE(v22) = v22 & 1;
    (*(v6 + 8))(v9, v5);

    v25 = v37;
    v38 = v37;
    v26 = *(&v37 + 1);
    v39 = v36;
    *&v40 = v35;
    *(&v40 + 1) = v17;
    *&v41 = v19;
    *(&v41 + 1) = v21;
    LOBYTE(v42) = v22;
    BYTE1(v42) = v34;
    BYTE2(v42) = v33;
    *(&v42 + 3) = v57;
    BYTE7(v42) = v58;
    v27 = v32;
    *(&v42 + 1) = v32;
    v43 = v24;
    sub_1D2A92A84(&v38, v44);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *&v44[0] = v25;
    *(&v44[0] + 1) = v26;
    v44[1] = v36;
    v45 = v35;
    v46 = v17;
    v47 = v19;
    v48 = v21;
    v49 = v22;
    v50 = v34;
    v51 = v33;
    v52 = v57;
    v53 = v58;
    v54 = v27;
    v55 = v24;
    result = sub_1D2A92ABC(v44);
    v29 = v41;
    *(a2 + 32) = v40;
    *(a2 + 48) = v29;
    *(a2 + 64) = v42;
    *(a2 + 80) = v43;
    v30 = v39;
    *a2 = v38;
    *(a2 + 16) = v30;
  }

  return result;
}

uint64_t sub_1D2A8FA08(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705578, &qword_1D2AD2DE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A92934();
  sub_1D2AC7494();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v13) = 0;
    v8 = sub_1D2AC7234();
    v12[15] = 1;
    sub_1D2A723B8();
    sub_1D2AC7264();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;

    sub_1D2A479B4(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_1D2A47944(v10, v11);
  }

  return v8;
}

uint64_t sub_1D2A8FC24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705568, &qword_1D2AD2DE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A928E0();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_1D2A47930(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v23) = 0;
    v11 = sub_1D2AC7234();
    v13 = v12;
    v22 = v11;
    LOBYTE(v23) = 1;
    v14 = sub_1D2AC7204();
    v16 = v15;
    v21 = v14;
    v25 = 2;
    sub_1D2A723B8();
    sub_1D2AC7224();
    (*(v6 + 8))(v9, v5);
    v17 = v23;
    v18 = v24;
    sub_1D2A47930(0, 0xF000000000000000);

    sub_1D2A479A0(v17, v18);
    __swift_destroy_boxed_opaque_existential_0(a1);

    result = sub_1D2A47930(v17, v18);
    v20 = v21;
    *a2 = v22;
    a2[1] = v13;
    a2[2] = v20;
    a2[3] = v16;
    a2[4] = v17;
    a2[5] = v18;
  }

  return result;
}

__n128 sub_1D2A8FEC8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705290, &qword_1D2AD1A00);
  v80 = *(v72 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v85.n128_u64[0] = &v67 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705298, &qword_1D2AD1A08);
  v81 = *(v78 - 8);
  v5 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v84 = &v67 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7052A0, &qword_1D2AD1A10);
  v79 = *(v75 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v83 = &v67 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7052A8, &qword_1D2AD1A18);
  v76 = *(v77 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v82 = &v67 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7052B0, &qword_1D2AD1A20);
  v73 = *(v74 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7052B8, &qword_1D2AD1A28);
  v71 = *(v14 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7052C0, &unk_1D2AD1A30);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v67 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D2A91234();
  v25 = v87;
  sub_1D2AC7494();
  if (v25)
  {
    goto LABEL_13;
  }

  v26 = v17;
  v68 = v14;
  v69 = v13;
  v27 = v82;
  v28 = v83;
  v29 = v84;
  v30 = v85.n128_u64[0];
  v70 = 0;
  *&v87 = v19;
  v31 = v86;
  v32 = sub_1D2AC7284();
  v33 = (2 * *(v32 + 16)) | 1;
  v97 = v32;
  v98 = v32 + 32;
  v99 = 0;
  v100 = v33;
  v34 = sub_1D2A76168();
  if (v34 == 6 || v99 != v100 >> 1)
  {
    v39 = sub_1D2AC70B4();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
    *v41 = &type metadata for GenerationRecipe_V4.Ingredient;
    sub_1D2AC71F4();
    sub_1D2AC70A4();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
LABEL_10:
    v37 = v87;
    goto LABEL_11;
  }

  if (v34 > 2u)
  {
    if (v34 == 3)
    {
      LOBYTE(v88) = 3;
      sub_1D2A91384();
      v50 = v70;
      sub_1D2AC71E4();
      v37 = v87;
      if (!v50)
      {
        sub_1D2A913D8();
        v51 = v75;
        sub_1D2AC7264();
        v70 = 0;
        (*(v79 + 8))(v28, v51);
        v59 = *(v37 + 8);
        v26 = (v37 + 8);
        v59(v22, v18);
        swift_unknownObjectRelease();
        v61 = v88;
        v62 = v89;
        v63 = 0x6000000000000000;
        v87 = v90;
        goto LABEL_28;
      }

      goto LABEL_11;
    }

    v44 = v87;
    if (v34 == 4)
    {
      LOBYTE(v88) = 4;
      sub_1D2A912DC();
      v45 = v70;
      sub_1D2AC71E4();
      if (!v45)
      {
        sub_1D2A91330();
        v46 = v78;
        sub_1D2AC7264();
        v70 = 0;
        (*(v81 + 8))(v29, v46);
        (*(v44 + 8))(v22, v18);
        swift_unknownObjectRelease();
        v61 = v88;
        v62 = v89;
        v63 = 0x8000000000000000;
        v87 = v90;
        v85 = v91;
LABEL_27:
        v31 = v86;
        goto LABEL_28;
      }
    }

    else
    {
      LOBYTE(v88) = 5;
      sub_1D2A91288();
      v28 = v30;
      v55 = v70;
      sub_1D2AC71E4();
      if (!v55)
      {
        v56 = v72;
        v57 = sub_1D2AC7234();
        v70 = 0;
        v62 = v65;
        v66 = v57;
        (*(v80 + 8))(v28, v56);
        v61 = v66;
        (*(v44 + 8))(v22, v18);
        swift_unknownObjectRelease();
        v63 = 0xA000000000000000;
        goto LABEL_27;
      }
    }

    (*(v44 + 8))(v22, v18);
    goto LABEL_12;
  }

  if (!v34)
  {
    LOBYTE(v88) = 0;
    sub_1D2A9157C();
    v47 = v70;
    sub_1D2AC71E4();
    if (!v47)
    {
      v48 = v68;
      v49 = sub_1D2AC7234();
      v70 = 0;
      v61 = v49;
      v62 = v58;
      (*(v71 + 8))(v26, v48);
      v26 = (v87 + 8);
      (*(v87 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v63 = 0;
      goto LABEL_28;
    }

    goto LABEL_10;
  }

  if (v34 != 1)
  {
    LOBYTE(v88) = 2;
    sub_1D2A9142C();
    v52 = v27;
    v53 = v70;
    sub_1D2AC71E4();
    v37 = v87;
    if (!v53)
    {
      sub_1D2A91480();
      v54 = v77;
      sub_1D2AC7264();
      v70 = 0;
      (*(v76 + 8))(v52, v54);
      (*(v37 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v61 = v88;
      v62 = v89;
      v87 = v90;
      v85 = v91;
      v28 = v92;
      v26 = v93;
      v22 = v95;
      v18 = v96;
      v63 = v94 & 0x10301 | 0x4000000000000000;
      goto LABEL_28;
    }

    goto LABEL_11;
  }

  LOBYTE(v88) = 1;
  sub_1D2A914D4();
  v35 = v69;
  v36 = v70;
  sub_1D2AC71E4();
  v37 = v87;
  if (v36)
  {
LABEL_11:
    (*(v37 + 8))(v22, v18);
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(v101);
    return result;
  }

  sub_1D2A91528();
  v38 = v74;
  sub_1D2AC7264();
  v70 = 0;
  (*(v73 + 8))(v35, v38);
  v60 = *(v37 + 8);
  v26 = (v37 + 8);
  v60(v22, v18);
  swift_unknownObjectRelease();
  v61 = v88;
  v62 = v89;
  v63 = 0x2000000000000000;
  *&v64 = v90;
  v87 = v64;
LABEL_28:
  __swift_destroy_boxed_opaque_existential_0(v101);
  *v31 = v61;
  *(v31 + 8) = v62;
  result = v85;
  *(v31 + 16) = v87;
  *(v31 + 32) = result;
  *(v31 + 48) = v28;
  *(v31 + 56) = v26;
  *(v31 + 64) = v63;
  *(v31 + 72) = v22;
  *(v31 + 80) = v18;
  return result;
}

uint64_t sub_1D2A90AF0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705210, &qword_1D2AD1298);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1D2A90D24();
  sub_1D2AC7494();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705220, &qword_1D2AD12A0);
    v10[7] = 0;
    sub_1D2A90DCC(&qword_1EC705228, sub_1D2A90D78);
    sub_1D2AC7264();
    v8 = v11;
    v10[6] = 1;
    sub_1D2AC7214();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_1D2A90D24()
{
  result = qword_1EC705218;
  if (!qword_1EC705218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705218);
  }

  return result;
}

unint64_t sub_1D2A90D78()
{
  result = qword_1EC705230;
  if (!qword_1EC705230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705230);
  }

  return result;
}

uint64_t sub_1D2A90DCC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC705220, &qword_1D2AD12A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2A90E44()
{
  result = qword_1EC705248;
  if (!qword_1EC705248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705248);
  }

  return result;
}

uint64_t sub_1D2A90EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BF8, &qword_1D2ACE600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2A90F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705250, &qword_1D2AD12B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D2A91044()
{
  type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(319);
  if (v0 <= 0x3F)
  {
    sub_1D2A72FB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D2A91130()
{
  result = qword_1EC705278;
  if (!qword_1EC705278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705278);
  }

  return result;
}

unint64_t sub_1D2A91188()
{
  result = qword_1EC705280;
  if (!qword_1EC705280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705280);
  }

  return result;
}

unint64_t sub_1D2A911E0()
{
  result = qword_1EC705288;
  if (!qword_1EC705288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705288);
  }

  return result;
}

unint64_t sub_1D2A91234()
{
  result = qword_1EC7052C8;
  if (!qword_1EC7052C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052C8);
  }

  return result;
}

unint64_t sub_1D2A91288()
{
  result = qword_1EC7052D0;
  if (!qword_1EC7052D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052D0);
  }

  return result;
}

unint64_t sub_1D2A912DC()
{
  result = qword_1EC7052D8;
  if (!qword_1EC7052D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052D8);
  }

  return result;
}

unint64_t sub_1D2A91330()
{
  result = qword_1EC7052E0;
  if (!qword_1EC7052E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052E0);
  }

  return result;
}

unint64_t sub_1D2A91384()
{
  result = qword_1EC7052E8;
  if (!qword_1EC7052E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052E8);
  }

  return result;
}

unint64_t sub_1D2A913D8()
{
  result = qword_1EC7052F0;
  if (!qword_1EC7052F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052F0);
  }

  return result;
}

unint64_t sub_1D2A9142C()
{
  result = qword_1EC7052F8;
  if (!qword_1EC7052F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052F8);
  }

  return result;
}

unint64_t sub_1D2A91480()
{
  result = qword_1EC705300;
  if (!qword_1EC705300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705300);
  }

  return result;
}

unint64_t sub_1D2A914D4()
{
  result = qword_1EC705308;
  if (!qword_1EC705308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705308);
  }

  return result;
}

unint64_t sub_1D2A91528()
{
  result = qword_1EC705310;
  if (!qword_1EC705310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705310);
  }

  return result;
}

unint64_t sub_1D2A9157C()
{
  result = qword_1EC705318;
  if (!qword_1EC705318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705318);
  }

  return result;
}

unint64_t sub_1D2A915D0()
{
  result = qword_1EC705358;
  if (!qword_1EC705358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705358);
  }

  return result;
}

unint64_t sub_1D2A91624()
{
  result = qword_1EC705360;
  if (!qword_1EC705360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705360);
  }

  return result;
}

unint64_t sub_1D2A91678()
{
  result = qword_1EC705368;
  if (!qword_1EC705368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705368);
  }

  return result;
}

unint64_t sub_1D2A916CC()
{
  result = qword_1EC705370;
  if (!qword_1EC705370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705370);
  }

  return result;
}

unint64_t sub_1D2A91720()
{
  result = qword_1EC705380;
  if (!qword_1EC705380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705380);
  }

  return result;
}

uint64_t sub_1D2A91774(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC705388, &qword_1D2AD1A80);
    sub_1D2A91810(a2, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2A91810(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2A91858()
{
  result = qword_1EC7053C0;
  if (!qword_1EC7053C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7053C0);
  }

  return result;
}

uint64_t sub_1D2A918AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A91910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A91978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2A919D8()
{
  result = qword_1EC705400;
  if (!qword_1EC705400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705400);
  }

  return result;
}

unint64_t sub_1D2A91A2C()
{
  result = qword_1EC705408;
  if (!qword_1EC705408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705408);
  }

  return result;
}

unint64_t sub_1D2A91A80()
{
  result = qword_1EC705410;
  if (!qword_1EC705410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705410);
  }

  return result;
}

unint64_t sub_1D2A91AD4()
{
  result = qword_1EC705418;
  if (!qword_1EC705418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705418);
  }

  return result;
}

unint64_t sub_1D2A91C2C()
{
  result = qword_1EC705440;
  if (!qword_1EC705440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705440);
  }

  return result;
}

unint64_t sub_1D2A91C84()
{
  result = qword_1EC705448;
  if (!qword_1EC705448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705448);
  }

  return result;
}

unint64_t sub_1D2A91CDC()
{
  result = qword_1EC705450;
  if (!qword_1EC705450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705450);
  }

  return result;
}

unint64_t sub_1D2A91D34()
{
  result = qword_1EC705458;
  if (!qword_1EC705458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705458);
  }

  return result;
}

unint64_t sub_1D2A91D8C()
{
  result = qword_1EC705460;
  if (!qword_1EC705460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705460);
  }

  return result;
}

unint64_t sub_1D2A91DE4()
{
  result = qword_1EC705468;
  if (!qword_1EC705468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705468);
  }

  return result;
}

unint64_t sub_1D2A91E3C()
{
  result = qword_1EC705470;
  if (!qword_1EC705470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705470);
  }

  return result;
}

unint64_t sub_1D2A91E94()
{
  result = qword_1EC705478;
  if (!qword_1EC705478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705478);
  }

  return result;
}

unint64_t sub_1D2A91EEC()
{
  result = qword_1EC705480;
  if (!qword_1EC705480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705480);
  }

  return result;
}

unint64_t sub_1D2A91F44()
{
  result = qword_1EC705488;
  if (!qword_1EC705488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705488);
  }

  return result;
}

unint64_t sub_1D2A91F9C()
{
  result = qword_1EC705490;
  if (!qword_1EC705490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705490);
  }

  return result;
}

unint64_t sub_1D2A91FF4()
{
  result = qword_1EC705498;
  if (!qword_1EC705498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705498);
  }

  return result;
}

unint64_t sub_1D2A9204C()
{
  result = qword_1EC7054A0;
  if (!qword_1EC7054A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054A0);
  }

  return result;
}

unint64_t sub_1D2A920A4()
{
  result = qword_1EC7054A8;
  if (!qword_1EC7054A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054A8);
  }

  return result;
}

unint64_t sub_1D2A920FC()
{
  result = qword_1EC7054B0;
  if (!qword_1EC7054B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054B0);
  }

  return result;
}

unint64_t sub_1D2A92154()
{
  result = qword_1EC7054B8;
  if (!qword_1EC7054B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054B8);
  }

  return result;
}

unint64_t sub_1D2A921AC()
{
  result = qword_1EC7054C0;
  if (!qword_1EC7054C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054C0);
  }

  return result;
}

unint64_t sub_1D2A92204()
{
  result = qword_1EC7054C8;
  if (!qword_1EC7054C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054C8);
  }

  return result;
}

unint64_t sub_1D2A9225C()
{
  result = qword_1EC7054D0;
  if (!qword_1EC7054D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054D0);
  }

  return result;
}

unint64_t sub_1D2A922B4()
{
  result = qword_1EC7054D8;
  if (!qword_1EC7054D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054D8);
  }

  return result;
}

unint64_t sub_1D2A9230C()
{
  result = qword_1EC7054E0;
  if (!qword_1EC7054E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054E0);
  }

  return result;
}

unint64_t sub_1D2A92364()
{
  result = qword_1EC7054E8;
  if (!qword_1EC7054E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054E8);
  }

  return result;
}

unint64_t sub_1D2A923BC()
{
  result = qword_1EC7054F0;
  if (!qword_1EC7054F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054F0);
  }

  return result;
}

unint64_t sub_1D2A92414()
{
  result = qword_1EC7054F8;
  if (!qword_1EC7054F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054F8);
  }

  return result;
}

unint64_t sub_1D2A9246C()
{
  result = qword_1EC705500;
  if (!qword_1EC705500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705500);
  }

  return result;
}

unint64_t sub_1D2A924C4()
{
  result = qword_1EC705508;
  if (!qword_1EC705508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705508);
  }

  return result;
}

unint64_t sub_1D2A9251C()
{
  result = qword_1EC705510;
  if (!qword_1EC705510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705510);
  }

  return result;
}

unint64_t sub_1D2A92574()
{
  result = qword_1EC705518;
  if (!qword_1EC705518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705518);
  }

  return result;
}

unint64_t sub_1D2A925CC()
{
  result = qword_1EC705520;
  if (!qword_1EC705520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705520);
  }

  return result;
}

unint64_t sub_1D2A92624()
{
  result = qword_1EC705528;
  if (!qword_1EC705528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705528);
  }

  return result;
}

unint64_t sub_1D2A9267C()
{
  result = qword_1EC705530;
  if (!qword_1EC705530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705530);
  }

  return result;
}

unint64_t sub_1D2A926D4()
{
  result = qword_1EC705538;
  if (!qword_1EC705538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705538);
  }

  return result;
}

unint64_t sub_1D2A9272C()
{
  result = qword_1EC705540;
  if (!qword_1EC705540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705540);
  }

  return result;
}

unint64_t sub_1D2A92784()
{
  result = qword_1EC705548;
  if (!qword_1EC705548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705548);
  }

  return result;
}

unint64_t sub_1D2A927DC()
{
  result = qword_1EC705550;
  if (!qword_1EC705550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705550);
  }

  return result;
}

unint64_t sub_1D2A92834()
{
  result = qword_1EC705558;
  if (!qword_1EC705558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705558);
  }

  return result;
}

unint64_t sub_1D2A9288C()
{
  result = qword_1EC705560;
  if (!qword_1EC705560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705560);
  }

  return result;
}

unint64_t sub_1D2A928E0()
{
  result = qword_1EC705570;
  if (!qword_1EC705570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705570);
  }

  return result;
}

unint64_t sub_1D2A92934()
{
  result = qword_1EC705580;
  if (!qword_1EC705580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705580);
  }

  return result;
}

unint64_t sub_1D2A92988()
{
  result = qword_1EC705590;
  if (!qword_1EC705590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705590);
  }

  return result;
}

unint64_t sub_1D2A929DC()
{
  result = qword_1EC705598;
  if (!qword_1EC705598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705598);
  }

  return result;
}

unint64_t sub_1D2A92A30()
{
  result = qword_1EC7055A0;
  if (!qword_1EC7055A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055A0);
  }

  return result;
}

unint64_t sub_1D2A92AEC()
{
  result = qword_1EC7055C0;
  if (!qword_1EC7055C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055C0);
  }

  return result;
}

unint64_t sub_1D2A92B40()
{
  result = qword_1EC7055C8;
  if (!qword_1EC7055C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055C8);
  }

  return result;
}

unint64_t sub_1D2A92BE8()
{
  result = qword_1EC7055D0;
  if (!qword_1EC7055D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055D0);
  }

  return result;
}

unint64_t sub_1D2A92C40()
{
  result = qword_1EC7055D8;
  if (!qword_1EC7055D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055D8);
  }

  return result;
}

unint64_t sub_1D2A92C98()
{
  result = qword_1EC7055E0;
  if (!qword_1EC7055E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055E0);
  }

  return result;
}

unint64_t sub_1D2A92CF0()
{
  result = qword_1EC7055E8;
  if (!qword_1EC7055E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055E8);
  }

  return result;
}